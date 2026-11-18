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
@sys_argc_global = external global i64
@sys_argv_global = external global ptr
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
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@"var.time::CLOCK_REALTIME" = global i64 0
@"var.time::CLOCK_MONOTONIC" = global i64 1
@clo.const = internal constant { ptr, ptr } { ptr @"time::clock_realtime", ptr null }
@"var.time::clock_realtime" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"time::clock_monotonic", ptr null }
@"var.time::clock_monotonic" = global ptr null
@"var.time::NS_PER_US" = global i64 1000
@"var.time::NS_PER_MS" = global i64 1000000
@"var.time::NS_PER_SEC" = global i64 1000000000
@"var.time::SEC_PER_MIN" = global i64 60
@"var.time::SEC_PER_HOUR" = global i64 3600
@"var.time::SEC_PER_DAY" = global i64 86400
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"time::#floor_div", ptr null }
@"var.time::#floor_div" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"time::#floor_mod", ptr null }
@"var.time::#floor_mod" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"time::#pad2", ptr null }
@"var.time::#pad2" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"time::#pad3", ptr null }
@"var.time::#pad3" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"time::#pad4", ptr null }
@"var.time::#pad4" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"time::#tm_to_datetime", ptr null }
@"var.time::#tm_to_datetime" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"time::#datetime_to_tm", ptr null }
@"var.time::#datetime_to_tm" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"time::#days_from_civil", ptr null }
@"var.time::#days_from_civil" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"time::#civil_from_days", ptr null }
@"var.time::#civil_from_days" = global ptr null
@str.0 = internal unnamed_addr constant [4 x i8] c"Sun\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.0 }
@str.1 = internal unnamed_addr constant [4 x i8] c"Mon\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.1 }
@str.2 = internal unnamed_addr constant [4 x i8] c"Tue\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.2 }
@str.3 = internal unnamed_addr constant [4 x i8] c"Wed\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.3 }
@str.4 = internal unnamed_addr constant [4 x i8] c"Thu\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.4 }
@str.5 = internal unnamed_addr constant [4 x i8] c"Fri\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.5 }
@str.6 = internal unnamed_addr constant [4 x i8] c"Sat\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.6 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"time::#short_weekday_name", ptr null }
@"var.time::#short_weekday_name" = global ptr null
@str.7 = internal unnamed_addr constant [7 x i8] c"Sunday\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.7 }
@str.8 = internal unnamed_addr constant [7 x i8] c"Monday\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.8 }
@str.9 = internal unnamed_addr constant [8 x i8] c"Tuesday\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.9 }
@str.10 = internal unnamed_addr constant [10 x i8] c"Wednesday\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.10 }
@str.11 = internal unnamed_addr constant [9 x i8] c"Thursday\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.11 }
@str.12 = internal unnamed_addr constant [7 x i8] c"Friday\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.12 }
@str.13 = internal unnamed_addr constant [9 x i8] c"Saturday\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.13 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"time::#full_weekday_name", ptr null }
@"var.time::#full_weekday_name" = global ptr null
@str.14 = internal unnamed_addr constant [4 x i8] c"Jan\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.14 }
@str.15 = internal unnamed_addr constant [4 x i8] c"Feb\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.15 }
@str.16 = internal unnamed_addr constant [4 x i8] c"Mar\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.16 }
@str.17 = internal unnamed_addr constant [4 x i8] c"Apr\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.17 }
@str.18 = internal unnamed_addr constant [4 x i8] c"May\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.18 }
@str.19 = internal unnamed_addr constant [4 x i8] c"Jun\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.19 }
@str.20 = internal unnamed_addr constant [4 x i8] c"Jul\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.20 }
@str.21 = internal unnamed_addr constant [4 x i8] c"Aug\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.21 }
@str.22 = internal unnamed_addr constant [4 x i8] c"Sep\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.22 }
@str.23 = internal unnamed_addr constant [4 x i8] c"Oct\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.23 }
@str.24 = internal unnamed_addr constant [4 x i8] c"Nov\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.24 }
@str.25 = internal unnamed_addr constant [4 x i8] c"Dec\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.25 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"time::#short_month_name", ptr null }
@"var.time::#short_month_name" = global ptr null
@str.26 = internal unnamed_addr constant [8 x i8] c"January\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.26 }
@str.27 = internal unnamed_addr constant [9 x i8] c"February\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.27 }
@str.28 = internal unnamed_addr constant [6 x i8] c"March\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.28 }
@str.29 = internal unnamed_addr constant [6 x i8] c"April\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.29 }
@str.30 = internal unnamed_addr constant [5 x i8] c"June\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.30 }
@str.31 = internal unnamed_addr constant [5 x i8] c"July\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.31 }
@str.32 = internal unnamed_addr constant [7 x i8] c"August\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.32 }
@str.33 = internal unnamed_addr constant [10 x i8] c"September\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.33 }
@str.34 = internal unnamed_addr constant [8 x i8] c"October\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.34 }
@str.35 = internal unnamed_addr constant [9 x i8] c"November\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.35 }
@str.36 = internal unnamed_addr constant [9 x i8] c"December\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.36 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"time::#full_month_name", ptr null }
@"var.time::#full_month_name" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"time::#write_date_into", ptr null }
@"var.time::#write_date_into" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"time::#write_clock_into", ptr null }
@"var.time::#write_clock_into" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"time::#write_tz_iso_into", ptr null }
@"var.time::#write_tz_iso_into" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"time::#write_tz_compact_into", ptr null }
@"var.time::#write_tz_compact_into" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"time::#write_date_basic_into", ptr null }
@"var.time::#write_date_basic_into" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"time::#write_clock_basic_into", ptr null }
@"var.time::#write_clock_basic_into" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"time::#write_tz_basic_into", ptr null }
@"var.time::#write_tz_basic_into" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"time::format_dt_iso", ptr null }
@"var.time::format_dt_iso" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"time::format_dt_iso_basic", ptr null }
@"var.time::format_dt_iso_basic" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"time::format_dt_date", ptr null }
@"var.time::format_dt_date" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"time::format_dt_clock", ptr null }
@"var.time::format_dt_clock" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"time::now", ptr null }
@"var.time::now" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"time::now_ms", ptr null }
@"var.time::now_ms" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"time::now_ns", ptr null }
@"var.time::now_ns" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"time::now_f64", ptr null }
@"var.time::now_f64" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"time::mono_ns", ptr null }
@"var.time::mono_ns" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"time::mono_ms", ptr null }
@"var.time::mono_ms" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"time::mono_f64", ptr null }
@"var.time::mono_f64" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"time::elapsed_ms", ptr null }
@"var.time::elapsed_ms" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"time::elapsed_f64", ptr null }
@"var.time::elapsed_f64" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"time::sleep_ns_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)", ptr null }
@clo.const.36 = internal constant { ptr, ptr } { ptr @"time::sleep_ns", ptr null }
@"var.time::sleep_ns" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"time::sleep_ms", ptr null }
@"var.time::sleep_ms" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"time::sleep", ptr null }
@"var.time::sleep" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"time::is_leap_year", ptr null }
@"var.time::is_leap_year" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"time::days_in_month", ptr null }
@"var.time::days_in_month" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"time::utc_from_epoch", ptr null }
@"var.time::utc_from_epoch" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"time::epoch", ptr null }
@"var.time::epoch" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"time::datetime_utc", ptr null }
@"var.time::datetime_utc" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"time::local_from_sec_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)", ptr null }
@clo.const.45 = internal constant { ptr, ptr } { ptr @"time::local_from_sec", ptr null }
@"var.time::local_from_sec" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"time::local_now_dt", ptr null }
@"var.time::local_now_dt" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"time::utc_now_dt", ptr null }
@"var.time::utc_now_dt" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@str.37 = internal unnamed_addr constant [3 x i8] c"AM\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.37 }
@str.38 = internal unnamed_addr constant [3 x i8] c"PM\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.38 }
@str.39 = internal unnamed_addr constant [3 x i8] c"am\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.39 }
@str.40 = internal unnamed_addr constant [3 x i8] c"pm\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.40 }
@str.41 = internal unnamed_addr constant [4 x i8] c"UTC\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.41 }
@clo.const.48 = internal constant { ptr, ptr } { ptr @"time::format_dt_pattern", ptr null }
@"var.time::format_dt_pattern" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.49 = internal constant { ptr, ptr } { ptr @"time::parse_tm_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)", ptr null }
@clo.const.50 = internal constant { ptr, ptr } { ptr @"time::parse_tm", ptr null }
@"var.time::parse_tm" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_time, ptr null }]

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

define internal void @__dva_global_init_time() #0 {
entry:
  store i64 0, ptr @"var.time::CLOCK_REALTIME", align 8
  store i64 1, ptr @"var.time::CLOCK_MONOTONIC", align 8
  store ptr @clo.const, ptr @"var.time::clock_realtime", align 8
  store ptr @clo.const.1, ptr @"var.time::clock_monotonic", align 8
  store i64 1000, ptr @"var.time::NS_PER_US", align 8
  store i64 1000000, ptr @"var.time::NS_PER_MS", align 8
  store i64 1000000000, ptr @"var.time::NS_PER_SEC", align 8
  store i64 60, ptr @"var.time::SEC_PER_MIN", align 8
  store i64 3600, ptr @"var.time::SEC_PER_HOUR", align 8
  store i64 86400, ptr @"var.time::SEC_PER_DAY", align 8
  store ptr @clo.const.2, ptr @"var.time::#floor_div", align 8
  store ptr @clo.const.3, ptr @"var.time::#floor_mod", align 8
  store ptr @clo.const.4, ptr @"var.time::#pad2", align 8
  store ptr @clo.const.5, ptr @"var.time::#pad3", align 8
  store ptr @clo.const.6, ptr @"var.time::#pad4", align 8
  store ptr @clo.const.7, ptr @"var.time::#tm_to_datetime", align 8
  store ptr @clo.const.8, ptr @"var.time::#datetime_to_tm", align 8
  store ptr @clo.const.9, ptr @"var.time::#days_from_civil", align 8
  store ptr @clo.const.10, ptr @"var.time::#civil_from_days", align 8
  store ptr @clo.const.11, ptr @"var.time::#short_weekday_name", align 8
  store ptr @clo.const.12, ptr @"var.time::#full_weekday_name", align 8
  store ptr @clo.const.13, ptr @"var.time::#short_month_name", align 8
  store ptr @clo.const.14, ptr @"var.time::#full_month_name", align 8
  store ptr @clo.const.15, ptr @"var.time::#write_date_into", align 8
  store ptr @clo.const.16, ptr @"var.time::#write_clock_into", align 8
  store ptr @clo.const.17, ptr @"var.time::#write_tz_iso_into", align 8
  store ptr @clo.const.18, ptr @"var.time::#write_tz_compact_into", align 8
  store ptr @clo.const.19, ptr @"var.time::#write_date_basic_into", align 8
  store ptr @clo.const.20, ptr @"var.time::#write_clock_basic_into", align 8
  store ptr @clo.const.21, ptr @"var.time::#write_tz_basic_into", align 8
  store ptr @clo.const.22, ptr @"var.time::format_dt_iso", align 8
  store ptr @clo.const.23, ptr @"var.time::format_dt_iso_basic", align 8
  store ptr @clo.const.24, ptr @"var.time::format_dt_date", align 8
  store ptr @clo.const.25, ptr @"var.time::format_dt_clock", align 8
  store ptr @clo.const.26, ptr @"var.time::now", align 8
  store ptr @clo.const.27, ptr @"var.time::now_ms", align 8
  store ptr @clo.const.28, ptr @"var.time::now_ns", align 8
  store ptr @clo.const.29, ptr @"var.time::now_f64", align 8
  store ptr @clo.const.30, ptr @"var.time::mono_ns", align 8
  store ptr @clo.const.31, ptr @"var.time::mono_ms", align 8
  store ptr @clo.const.32, ptr @"var.time::mono_f64", align 8
  store ptr @clo.const.33, ptr @"var.time::elapsed_ms", align 8
  store ptr @clo.const.34, ptr @"var.time::elapsed_f64", align 8
  store ptr @clo.const.36, ptr @"var.time::sleep_ns", align 8
  store ptr @clo.const.37, ptr @"var.time::sleep_ms", align 8
  store ptr @clo.const.38, ptr @"var.time::sleep", align 8
  store ptr @clo.const.39, ptr @"var.time::is_leap_year", align 8
  store ptr @clo.const.40, ptr @"var.time::days_in_month", align 8
  store ptr @clo.const.41, ptr @"var.time::utc_from_epoch", align 8
  store ptr @clo.const.42, ptr @"var.time::epoch", align 8
  store ptr @clo.const.43, ptr @"var.time::datetime_utc", align 8
  store ptr @clo.const.45, ptr @"var.time::local_from_sec", align 8
  store ptr @clo.const.46, ptr @"var.time::local_now_dt", align 8
  store ptr @clo.const.47, ptr @"var.time::utc_now_dt", align 8
  store ptr @clo.const.48, ptr @"var.time::format_dt_pattern", align 8
  store ptr @clo.const.50, ptr @"var.time::parse_tm", align 8
  ret void
}

declare i32 @open(ptr, i32)

declare i64 @creat(ptr, i64)

declare i32 @close(i32)

declare i64 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @waitpid(i64, ptr, i64)

declare i64 @read(i32, ptr, i64)

declare i64 @lseek(i32, i64, i64)

declare i64 @write(i32, ptr, i64)

declare i64 @writev(i32, ptr, i64)

declare i32 @ioctl(i32, i64, i64, ...)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

declare i64 @htons(i64)

declare i64 @htonl(i64)

declare i64 @ntohs(i64)

declare i64 @ntohl(i64)

declare i64 @inet_addr(ptr)

declare i64 @socket(i64, i64, i64)

declare i64 @connect(i64, ptr, i64)

declare i64 @bind(i64, ptr, i64)

declare i64 @listen(i64, i64)

declare i64 @accept(i64, ptr, ptr)

declare i64 @send(i64, ptr, i64, i32)

declare i64 @recv(i64, ptr, i64, i32)

declare i64 @sendto(i64, ptr, i64, i32, ptr, i64)

declare i64 @recvfrom(i64, ptr, i64, i32, ptr, ptr)

declare i64 @setsockopt(i64, i64, i64, ptr, i64)

declare i64 @getsockopt(i64, i64, i64, ptr, ptr)

declare i64 @getpeername(i64, ptr, ptr)

declare i64 @getsockname(i64, ptr, ptr)

declare i64 @shutdown(i64, i64)

declare i64 @fcntl(i32, i64, i64)

declare i64 @getaddrinfo(ptr, ptr, ptr, ptr)

declare void @freeaddrinfo(ptr)

declare i64 @getifaddrs(ptr)

declare void @freeifaddrs(ptr)

declare ptr @memset(ptr, i64, i64)

declare i64 @atoi(ptr)

declare ptr @opendir(ptr)

declare ptr @readdir(ptr)

declare i64 @closedir(ptr)

declare i64 @strlen(ptr) #0

declare i64 @strcmp(ptr, ptr)

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @memmove(ptr, ptr, i64)

declare i64 @stat(ptr, ptr)

declare i64 @fstat(i32, ptr)

declare i64 @rename(ptr, ptr)

declare i64 @unlink(ptr)

declare i64 @pipe(ptr)

declare ptr @__errno_location()

declare ptr @mmap(ptr, i64, i64, i64, i32, i64)

declare i64 @munmap(ptr, i64)

declare i64 @syscall(i64, ptr, ptr, ptr, ptr, ptr, ptr)

declare ptr @dlopen(ptr, i32)

declare ptr @dlsym(ptr, ptr)

declare i64 @dlclose(ptr)

declare ptr @dlerror()

declare i64 @system(ptr)

declare ptr @realpath(ptr, ptr)

declare i64 @isatty(i32)

declare i64 @tcgetattr(i32, ptr)

declare i64 @tcsetattr(i32, i64, ptr)

declare void @cfmakeraw(ptr)

declare i64 @poll(ptr, i64, i64)

declare i64 @epoll_create1(i32)

declare i64 @epoll_ctl(i64, i64, i32, ptr)

declare i64 @epoll_wait(i64, ptr, i64, i64)

declare i64 @time(ptr)

declare ptr @signal(i64, ptr)

declare i64 @raise(i64)

declare i64 @getrlimit(i64, ptr)

declare i64 @setrlimit(i64, ptr)

declare i64 @uname(ptr)

declare i32 @clock_gettime(i32, ptr)

declare i32 @nanosleep(ptr, ptr)

declare ptr @localtime_r(ptr, ptr)

declare ptr @gmtime_r(ptr, ptr)

declare i64 @mktime(ptr)

declare i64 @strftime(ptr, i64, ptr, ptr)

declare ptr @strptime(ptr, ptr, ptr)

define i32 @"time::clock_realtime"() #0 {
entry:
  ret i32 0
}

define i32 @"time::clock_monotonic"() #0 {
entry:
  %var.load = load i64, ptr @"var.time::CLOCK_MONOTONIC", align 8
  %coerce.trunc = trunc i64 %var.load to i32
  ret i32 %coerce.trunc
}

define internal i64 @"time::#floor_div"(i64 %0, i64 %1) #0 {
entry:
  %var.r = alloca i64, align 8
  %var.q = alloca i64, align 8
  %var.b = alloca i64, align 8
  %var.a = alloca i64, align 8
  store i64 %0, ptr %var.a, align 8
  store i64 %1, ptr %var.b, align 8
  %var.load = load i64, ptr %var.a, align 8
  %var.load1 = load i64, ptr %var.b, align 8
  %div.is.zero = icmp eq i64 %var.load1, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %abort.dead, %entry
  %div.is.min = icmp eq i64 %var.load, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load1, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.not_zero

div.ok:                                           ; preds = %abort.dead2, %div.not_zero
  %divtmp = sdiv i64 %var.load, %var.load1
  store i64 %divtmp, ptr %var.q, align 8
  %var.load3 = load i64, ptr %var.a, align 8
  %var.load4 = load i64, ptr %var.b, align 8
  %div.is.zero5 = icmp eq i64 %var.load4, 0
  br i1 %div.is.zero5, label %div.zero_abort7, label %div.not_zero6

div.ovf_abort:                                    ; preds = %div.not_zero
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead2:                                      ; No predecessors!
  br label %div.ok

div.not_zero6:                                    ; preds = %abort.dead8, %div.ok
  %div.is.min9 = icmp eq i64 %var.load3, -9223372036854775808
  %div.is.negone10 = icmp eq i64 %var.load4, -1
  %div.is.ovf11 = and i1 %div.is.min9, %div.is.negone10
  br i1 %div.is.ovf11, label %div.ovf_abort13, label %div.ok12

div.zero_abort7:                                  ; preds = %div.ok
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %div.not_zero6

div.ok12:                                         ; preds = %abort.dead14, %div.not_zero6
  %modtmp = srem i64 %var.load3, %var.load4
  store i64 %modtmp, ptr %var.r, align 8
  %var.load15 = load i64, ptr %var.r, align 8
  %cmptmp = icmp slt i64 %var.load15, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

div.ovf_abort13:                                  ; preds = %div.not_zero6
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead14:                                     ; No predecessors!
  br label %div.ok12

choice.then:                                      ; preds = %div.ok12
  %var.load16 = load i64, ptr %var.q, align 8
  %subtmp = sub i64 %var.load16, 1
  br label %choice.exit

choice.else:                                      ; preds = %div.ok12
  %var.load17 = load i64, ptr %var.q, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ %var.load17, %choice.else ]
  ret i64 %choice.res
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_zero_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_ovf_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal i64 @"time::#floor_mod"(i64 %0, i64 %1) #0 {
entry:
  %var.r = alloca i64, align 8
  %var.b = alloca i64, align 8
  %var.a = alloca i64, align 8
  store i64 %0, ptr %var.a, align 8
  store i64 %1, ptr %var.b, align 8
  %var.load = load i64, ptr %var.a, align 8
  %var.load1 = load i64, ptr %var.b, align 8
  %div.is.zero = icmp eq i64 %var.load1, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %abort.dead, %entry
  %div.is.min = icmp eq i64 %var.load, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load1, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.not_zero

div.ok:                                           ; preds = %abort.dead2, %div.not_zero
  %modtmp = srem i64 %var.load, %var.load1
  store i64 %modtmp, ptr %var.r, align 8
  %var.load3 = load i64, ptr %var.r, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

div.ovf_abort:                                    ; preds = %div.not_zero
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead2:                                      ; No predecessors!
  br label %div.ok

choice.then:                                      ; preds = %div.ok
  %var.load4 = load i64, ptr %var.r, align 8
  %var.load5 = load i64, ptr %var.b, align 8
  %addtmp = add i64 %var.load4, %var.load5
  br label %choice.exit

choice.else:                                      ; preds = %div.ok
  %var.load6 = load i64, ptr %var.r, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ %var.load6, %choice.else ]
  ret i64 %choice.res
}

define internal void @"time::#pad2"(ptr %0, i64 %1) #0 {
entry:
  %var.v = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %negtmp = sub i64 0, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %negtmp, %choice.then ], [ %var.load2, %choice.else ]
  store i64 %choice.res, ptr %var.v, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.v, align 8
  %divtmp = sdiv i64 %var.load3, 10
  %modtmp = srem i64 %divtmp, 10
  %addtmp = add i64 48, %modtmp
  %b.b.ge0 = icmp sge i64 %addtmp, 0
  %b.b.le255 = icmp sle i64 %addtmp, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %abort.dead, %choice.exit
  %b.byte.i8 = trunc i64 %addtmp to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len4 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap5 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data6 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len4, %b.cap5
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap5, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len7

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len7
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data9 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len10 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data9, i64 %b.cur.len10
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len10, 1
  %b.nul = getelementptr i8, ptr %b.cur.data9, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %b.load11 = load ptr, ptr %var.b, align 8
  %var.load12 = load i64, ptr %var.v, align 8
  %modtmp13 = srem i64 %var.load12, 10
  %addtmp14 = add i64 48, %modtmp13
  %b.b.ge015 = icmp sge i64 %addtmp14, 0
  %b.b.le25516 = icmp sle i64 %addtmp14, 255
  %b.byte.range17 = and i1 %b.b.ge015, %b.b.le25516
  br i1 %b.byte.range17, label %b.byte_ok18, label %b.byte_err19

b.new.buf.len7:                                   ; preds = %abort.dead8, %b.grow
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data6, i64 %b.len4, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len4
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %b.new.buf.len7

b.byte_ok18:                                      ; preds = %abort.dead20, %b.push_done
  %b.byte.i821 = trunc i64 %addtmp14 to i8
  %b.len22 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  %b.len23 = load i64, ptr %b.len22, align 8
  %b.cap24 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 2
  %b.cap25 = load i64, ptr %b.cap24, align 8
  %b.data26 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  %b.data27 = load ptr, ptr %b.data26, align 8
  %b.needs.grow28 = icmp eq i64 %b.len23, %b.cap25
  br i1 %b.needs.grow28, label %b.grow29, label %b.nogrow30

b.byte_err19:                                     ; preds = %b.push_done
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %b.byte_ok18

b.grow29:                                         ; preds = %b.byte_ok18
  %b.cap232 = mul i64 %b.cap25, 2
  %b.cap.small33 = icmp slt i64 %b.cap232, 16
  %b.new.cap34 = select i1 %b.cap.small33, i64 16, i64 %b.cap232
  %b.new.buf.len35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap34, i64 1)
  %sum36 = extractvalue { i64, i1 } %b.new.buf.len35, 0
  %ovf37 = extractvalue { i64, i1 } %b.new.buf.len35, 1
  br i1 %ovf37, label %str_overflow_abort39, label %b.new.buf.len38

b.nogrow30:                                       ; preds = %b.byte_ok18
  br label %b.push_done31

b.push_done31:                                    ; preds = %b.nogrow30, %b.new.buf.len38
  %b.cur.data46 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  %b.cur.data47 = load ptr, ptr %b.cur.data46, align 8
  %b.cur.len48 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  %b.cur.len49 = load i64, ptr %b.cur.len48, align 8
  %b.byte.gep50 = getelementptr i8, ptr %b.cur.data47, i64 %b.cur.len49
  store i8 %b.byte.i821, ptr %b.byte.gep50, align 1
  %b.next.len51 = add i64 %b.cur.len49, 1
  %b.nul52 = getelementptr i8, ptr %b.cur.data47, i64 %b.next.len51
  store i8 0, ptr %b.nul52, align 1
  %b.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  store i64 %b.next.len51, ptr %b.len.gep53, align 8
  ret void

b.new.buf.len38:                                  ; preds = %abort.dead40, %b.grow29
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 %sum36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf42, ptr align 1 %b.data27, i64 %b.len23, i1 false)
  %b.grow.nul43 = getelementptr i8, ptr %b.new.buf42, i64 %b.len23
  store i8 0, ptr %b.grow.nul43, align 1
  %b.new.data.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  store ptr %b.new.buf42, ptr %b.new.data.gep44, align 8
  %b.new.cap.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 2
  store i64 %b.new.cap34, ptr %b.new.cap.gep45, align 8
  br label %b.push_done31

str_overflow_abort39:                             ; preds = %b.grow29
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %b.new.buf.len38
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define internal void @"time::#pad3"(ptr %0, i64 %1) #0 {
entry:
  %var.v = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %negtmp = sub i64 0, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %negtmp, %choice.then ], [ %var.load2, %choice.else ]
  store i64 %choice.res, ptr %var.v, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.v, align 8
  %divtmp = sdiv i64 %var.load3, 100
  %modtmp = srem i64 %divtmp, 10
  %addtmp = add i64 48, %modtmp
  %b.b.ge0 = icmp sge i64 %addtmp, 0
  %b.b.le255 = icmp sle i64 %addtmp, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %abort.dead, %choice.exit
  %b.byte.i8 = trunc i64 %addtmp to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len4 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap5 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data6 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len4, %b.cap5
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap5, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len7

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len7
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data9 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len10 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data9, i64 %b.cur.len10
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len10, 1
  %b.nul = getelementptr i8, ptr %b.cur.data9, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %b.load11 = load ptr, ptr %var.b, align 8
  %var.load12 = load i64, ptr %var.v, align 8
  %divtmp13 = sdiv i64 %var.load12, 10
  %modtmp14 = srem i64 %divtmp13, 10
  %addtmp15 = add i64 48, %modtmp14
  %b.b.ge016 = icmp sge i64 %addtmp15, 0
  %b.b.le25517 = icmp sle i64 %addtmp15, 255
  %b.byte.range18 = and i1 %b.b.ge016, %b.b.le25517
  br i1 %b.byte.range18, label %b.byte_ok19, label %b.byte_err20

b.new.buf.len7:                                   ; preds = %abort.dead8, %b.grow
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data6, i64 %b.len4, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len4
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %b.new.buf.len7

b.byte_ok19:                                      ; preds = %abort.dead21, %b.push_done
  %b.byte.i822 = trunc i64 %addtmp15 to i8
  %b.len23 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  %b.len24 = load i64, ptr %b.len23, align 8
  %b.cap25 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 2
  %b.cap26 = load i64, ptr %b.cap25, align 8
  %b.data27 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  %b.data28 = load ptr, ptr %b.data27, align 8
  %b.needs.grow29 = icmp eq i64 %b.len24, %b.cap26
  br i1 %b.needs.grow29, label %b.grow30, label %b.nogrow31

b.byte_err20:                                     ; preds = %b.push_done
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %b.byte_ok19

b.grow30:                                         ; preds = %b.byte_ok19
  %b.cap233 = mul i64 %b.cap26, 2
  %b.cap.small34 = icmp slt i64 %b.cap233, 16
  %b.new.cap35 = select i1 %b.cap.small34, i64 16, i64 %b.cap233
  %b.new.buf.len36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap35, i64 1)
  %sum37 = extractvalue { i64, i1 } %b.new.buf.len36, 0
  %ovf38 = extractvalue { i64, i1 } %b.new.buf.len36, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.new.buf.len39

b.nogrow31:                                       ; preds = %b.byte_ok19
  br label %b.push_done32

b.push_done32:                                    ; preds = %b.nogrow31, %b.new.buf.len39
  %b.cur.data47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  %b.cur.data48 = load ptr, ptr %b.cur.data47, align 8
  %b.cur.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  %b.cur.len50 = load i64, ptr %b.cur.len49, align 8
  %b.byte.gep51 = getelementptr i8, ptr %b.cur.data48, i64 %b.cur.len50
  store i8 %b.byte.i822, ptr %b.byte.gep51, align 1
  %b.next.len52 = add i64 %b.cur.len50, 1
  %b.nul53 = getelementptr i8, ptr %b.cur.data48, i64 %b.next.len52
  store i8 0, ptr %b.nul53, align 1
  %b.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  store i64 %b.next.len52, ptr %b.len.gep54, align 8
  %b.load55 = load ptr, ptr %var.b, align 8
  %var.load56 = load i64, ptr %var.v, align 8
  %modtmp57 = srem i64 %var.load56, 10
  %addtmp58 = add i64 48, %modtmp57
  %b.b.ge059 = icmp sge i64 %addtmp58, 0
  %b.b.le25560 = icmp sle i64 %addtmp58, 255
  %b.byte.range61 = and i1 %b.b.ge059, %b.b.le25560
  br i1 %b.byte.range61, label %b.byte_ok62, label %b.byte_err63

b.new.buf.len39:                                  ; preds = %abort.dead41, %b.grow30
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %sum37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf43, ptr align 1 %b.data28, i64 %b.len24, i1 false)
  %b.grow.nul44 = getelementptr i8, ptr %b.new.buf43, i64 %b.len24
  store i8 0, ptr %b.grow.nul44, align 1
  %b.new.data.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  store ptr %b.new.buf43, ptr %b.new.data.gep45, align 8
  %b.new.cap.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 2
  store i64 %b.new.cap35, ptr %b.new.cap.gep46, align 8
  br label %b.push_done32

str_overflow_abort40:                             ; preds = %b.grow30
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %b.new.buf.len39

b.byte_ok62:                                      ; preds = %abort.dead64, %b.push_done32
  %b.byte.i865 = trunc i64 %addtmp58 to i8
  %b.len66 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 0
  %b.len67 = load i64, ptr %b.len66, align 8
  %b.cap68 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 2
  %b.cap69 = load i64, ptr %b.cap68, align 8
  %b.data70 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 1
  %b.data71 = load ptr, ptr %b.data70, align 8
  %b.needs.grow72 = icmp eq i64 %b.len67, %b.cap69
  br i1 %b.needs.grow72, label %b.grow73, label %b.nogrow74

b.byte_err63:                                     ; preds = %b.push_done32
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %b.byte_ok62

b.grow73:                                         ; preds = %b.byte_ok62
  %b.cap276 = mul i64 %b.cap69, 2
  %b.cap.small77 = icmp slt i64 %b.cap276, 16
  %b.new.cap78 = select i1 %b.cap.small77, i64 16, i64 %b.cap276
  %b.new.buf.len79 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap78, i64 1)
  %sum80 = extractvalue { i64, i1 } %b.new.buf.len79, 0
  %ovf81 = extractvalue { i64, i1 } %b.new.buf.len79, 1
  br i1 %ovf81, label %str_overflow_abort83, label %b.new.buf.len82

b.nogrow74:                                       ; preds = %b.byte_ok62
  br label %b.push_done75

b.push_done75:                                    ; preds = %b.nogrow74, %b.new.buf.len82
  %b.cur.data90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 1
  %b.cur.data91 = load ptr, ptr %b.cur.data90, align 8
  %b.cur.len92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 0
  %b.cur.len93 = load i64, ptr %b.cur.len92, align 8
  %b.byte.gep94 = getelementptr i8, ptr %b.cur.data91, i64 %b.cur.len93
  store i8 %b.byte.i865, ptr %b.byte.gep94, align 1
  %b.next.len95 = add i64 %b.cur.len93, 1
  %b.nul96 = getelementptr i8, ptr %b.cur.data91, i64 %b.next.len95
  store i8 0, ptr %b.nul96, align 1
  %b.len.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 0
  store i64 %b.next.len95, ptr %b.len.gep97, align 8
  ret void

b.new.buf.len82:                                  ; preds = %abort.dead84, %b.grow73
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 %sum80)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf86, ptr align 1 %b.data71, i64 %b.len67, i1 false)
  %b.grow.nul87 = getelementptr i8, ptr %b.new.buf86, i64 %b.len67
  store i8 0, ptr %b.grow.nul87, align 1
  %b.new.data.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 1
  store ptr %b.new.buf86, ptr %b.new.data.gep88, align 8
  %b.new.cap.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 2
  store i64 %b.new.cap78, ptr %b.new.cap.gep89, align 8
  br label %b.push_done75

str_overflow_abort83:                             ; preds = %b.grow73
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %b.new.buf.len82
}

define internal void @"time::#pad4"(ptr %0, i64 %1) #0 {
entry:
  %var.v = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %negtmp = sub i64 0, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %negtmp, %choice.then ], [ %var.load2, %choice.else ]
  store i64 %choice.res, ptr %var.v, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.v, align 8
  %divtmp = sdiv i64 %var.load3, 1000
  %modtmp = srem i64 %divtmp, 10
  %addtmp = add i64 48, %modtmp
  %b.b.ge0 = icmp sge i64 %addtmp, 0
  %b.b.le255 = icmp sle i64 %addtmp, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %abort.dead, %choice.exit
  %b.byte.i8 = trunc i64 %addtmp to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len4 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap5 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data6 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len4, %b.cap5
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap5, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len7

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len7
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data9 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len10 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data9, i64 %b.cur.len10
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len10, 1
  %b.nul = getelementptr i8, ptr %b.cur.data9, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %b.load11 = load ptr, ptr %var.b, align 8
  %var.load12 = load i64, ptr %var.v, align 8
  %divtmp13 = sdiv i64 %var.load12, 100
  %modtmp14 = srem i64 %divtmp13, 10
  %addtmp15 = add i64 48, %modtmp14
  %b.b.ge016 = icmp sge i64 %addtmp15, 0
  %b.b.le25517 = icmp sle i64 %addtmp15, 255
  %b.byte.range18 = and i1 %b.b.ge016, %b.b.le25517
  br i1 %b.byte.range18, label %b.byte_ok19, label %b.byte_err20

b.new.buf.len7:                                   ; preds = %abort.dead8, %b.grow
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data6, i64 %b.len4, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len4
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %b.new.buf.len7

b.byte_ok19:                                      ; preds = %abort.dead21, %b.push_done
  %b.byte.i822 = trunc i64 %addtmp15 to i8
  %b.len23 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  %b.len24 = load i64, ptr %b.len23, align 8
  %b.cap25 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 2
  %b.cap26 = load i64, ptr %b.cap25, align 8
  %b.data27 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  %b.data28 = load ptr, ptr %b.data27, align 8
  %b.needs.grow29 = icmp eq i64 %b.len24, %b.cap26
  br i1 %b.needs.grow29, label %b.grow30, label %b.nogrow31

b.byte_err20:                                     ; preds = %b.push_done
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %b.byte_ok19

b.grow30:                                         ; preds = %b.byte_ok19
  %b.cap233 = mul i64 %b.cap26, 2
  %b.cap.small34 = icmp slt i64 %b.cap233, 16
  %b.new.cap35 = select i1 %b.cap.small34, i64 16, i64 %b.cap233
  %b.new.buf.len36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap35, i64 1)
  %sum37 = extractvalue { i64, i1 } %b.new.buf.len36, 0
  %ovf38 = extractvalue { i64, i1 } %b.new.buf.len36, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.new.buf.len39

b.nogrow31:                                       ; preds = %b.byte_ok19
  br label %b.push_done32

b.push_done32:                                    ; preds = %b.nogrow31, %b.new.buf.len39
  %b.cur.data47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  %b.cur.data48 = load ptr, ptr %b.cur.data47, align 8
  %b.cur.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  %b.cur.len50 = load i64, ptr %b.cur.len49, align 8
  %b.byte.gep51 = getelementptr i8, ptr %b.cur.data48, i64 %b.cur.len50
  store i8 %b.byte.i822, ptr %b.byte.gep51, align 1
  %b.next.len52 = add i64 %b.cur.len50, 1
  %b.nul53 = getelementptr i8, ptr %b.cur.data48, i64 %b.next.len52
  store i8 0, ptr %b.nul53, align 1
  %b.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 0
  store i64 %b.next.len52, ptr %b.len.gep54, align 8
  %b.load55 = load ptr, ptr %var.b, align 8
  %var.load56 = load i64, ptr %var.v, align 8
  %divtmp57 = sdiv i64 %var.load56, 10
  %modtmp58 = srem i64 %divtmp57, 10
  %addtmp59 = add i64 48, %modtmp58
  %b.b.ge060 = icmp sge i64 %addtmp59, 0
  %b.b.le25561 = icmp sle i64 %addtmp59, 255
  %b.byte.range62 = and i1 %b.b.ge060, %b.b.le25561
  br i1 %b.byte.range62, label %b.byte_ok63, label %b.byte_err64

b.new.buf.len39:                                  ; preds = %abort.dead41, %b.grow30
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %sum37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf43, ptr align 1 %b.data28, i64 %b.len24, i1 false)
  %b.grow.nul44 = getelementptr i8, ptr %b.new.buf43, i64 %b.len24
  store i8 0, ptr %b.grow.nul44, align 1
  %b.new.data.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 1
  store ptr %b.new.buf43, ptr %b.new.data.gep45, align 8
  %b.new.cap.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load11, i32 0, i32 2
  store i64 %b.new.cap35, ptr %b.new.cap.gep46, align 8
  br label %b.push_done32

str_overflow_abort40:                             ; preds = %b.grow30
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %b.new.buf.len39

b.byte_ok63:                                      ; preds = %abort.dead65, %b.push_done32
  %b.byte.i866 = trunc i64 %addtmp59 to i8
  %b.len67 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 0
  %b.len68 = load i64, ptr %b.len67, align 8
  %b.cap69 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 2
  %b.cap70 = load i64, ptr %b.cap69, align 8
  %b.data71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 1
  %b.data72 = load ptr, ptr %b.data71, align 8
  %b.needs.grow73 = icmp eq i64 %b.len68, %b.cap70
  br i1 %b.needs.grow73, label %b.grow74, label %b.nogrow75

b.byte_err64:                                     ; preds = %b.push_done32
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %b.byte_ok63

b.grow74:                                         ; preds = %b.byte_ok63
  %b.cap277 = mul i64 %b.cap70, 2
  %b.cap.small78 = icmp slt i64 %b.cap277, 16
  %b.new.cap79 = select i1 %b.cap.small78, i64 16, i64 %b.cap277
  %b.new.buf.len80 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap79, i64 1)
  %sum81 = extractvalue { i64, i1 } %b.new.buf.len80, 0
  %ovf82 = extractvalue { i64, i1 } %b.new.buf.len80, 1
  br i1 %ovf82, label %str_overflow_abort84, label %b.new.buf.len83

b.nogrow75:                                       ; preds = %b.byte_ok63
  br label %b.push_done76

b.push_done76:                                    ; preds = %b.nogrow75, %b.new.buf.len83
  %b.cur.data91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 1
  %b.cur.data92 = load ptr, ptr %b.cur.data91, align 8
  %b.cur.len93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 0
  %b.cur.len94 = load i64, ptr %b.cur.len93, align 8
  %b.byte.gep95 = getelementptr i8, ptr %b.cur.data92, i64 %b.cur.len94
  store i8 %b.byte.i866, ptr %b.byte.gep95, align 1
  %b.next.len96 = add i64 %b.cur.len94, 1
  %b.nul97 = getelementptr i8, ptr %b.cur.data92, i64 %b.next.len96
  store i8 0, ptr %b.nul97, align 1
  %b.len.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 0
  store i64 %b.next.len96, ptr %b.len.gep98, align 8
  %b.load99 = load ptr, ptr %var.b, align 8
  %var.load100 = load i64, ptr %var.v, align 8
  %modtmp101 = srem i64 %var.load100, 10
  %addtmp102 = add i64 48, %modtmp101
  %b.b.ge0103 = icmp sge i64 %addtmp102, 0
  %b.b.le255104 = icmp sle i64 %addtmp102, 255
  %b.byte.range105 = and i1 %b.b.ge0103, %b.b.le255104
  br i1 %b.byte.range105, label %b.byte_ok106, label %b.byte_err107

b.new.buf.len83:                                  ; preds = %abort.dead85, %b.grow74
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 %sum81)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf87, ptr align 1 %b.data72, i64 %b.len68, i1 false)
  %b.grow.nul88 = getelementptr i8, ptr %b.new.buf87, i64 %b.len68
  store i8 0, ptr %b.grow.nul88, align 1
  %b.new.data.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 1
  store ptr %b.new.buf87, ptr %b.new.data.gep89, align 8
  %b.new.cap.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 2
  store i64 %b.new.cap79, ptr %b.new.cap.gep90, align 8
  br label %b.push_done76

str_overflow_abort84:                             ; preds = %b.grow74
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead85:                                     ; No predecessors!
  br label %b.new.buf.len83

b.byte_ok106:                                     ; preds = %abort.dead108, %b.push_done76
  %b.byte.i8109 = trunc i64 %addtmp102 to i8
  %b.len110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.len111 = load i64, ptr %b.len110, align 8
  %b.cap112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  %b.cap113 = load i64, ptr %b.cap112, align 8
  %b.data114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.data115 = load ptr, ptr %b.data114, align 8
  %b.needs.grow116 = icmp eq i64 %b.len111, %b.cap113
  br i1 %b.needs.grow116, label %b.grow117, label %b.nogrow118

b.byte_err107:                                    ; preds = %b.push_done76
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead108:                                    ; No predecessors!
  br label %b.byte_ok106

b.grow117:                                        ; preds = %b.byte_ok106
  %b.cap2120 = mul i64 %b.cap113, 2
  %b.cap.small121 = icmp slt i64 %b.cap2120, 16
  %b.new.cap122 = select i1 %b.cap.small121, i64 16, i64 %b.cap2120
  %b.new.buf.len123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap122, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len123, 0
  %ovf125 = extractvalue { i64, i1 } %b.new.buf.len123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.new.buf.len126

b.nogrow118:                                      ; preds = %b.byte_ok106
  br label %b.push_done119

b.push_done119:                                   ; preds = %b.nogrow118, %b.new.buf.len126
  %b.cur.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.cur.data135 = load ptr, ptr %b.cur.data134, align 8
  %b.cur.len136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.cur.len137 = load i64, ptr %b.cur.len136, align 8
  %b.byte.gep138 = getelementptr i8, ptr %b.cur.data135, i64 %b.cur.len137
  store i8 %b.byte.i8109, ptr %b.byte.gep138, align 1
  %b.next.len139 = add i64 %b.cur.len137, 1
  %b.nul140 = getelementptr i8, ptr %b.cur.data135, i64 %b.next.len139
  store i8 0, ptr %b.nul140, align 1
  %b.len.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  store i64 %b.next.len139, ptr %b.len.gep141, align 8
  ret void

b.new.buf.len126:                                 ; preds = %abort.dead128, %b.grow117
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf130, ptr align 1 %b.data115, i64 %b.len111, i1 false)
  %b.grow.nul131 = getelementptr i8, ptr %b.new.buf130, i64 %b.len111
  store i8 0, ptr %b.grow.nul131, align 1
  %b.new.data.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  store ptr %b.new.buf130, ptr %b.new.data.gep132, align 8
  %b.new.cap.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  store i64 %b.new.cap122, ptr %b.new.cap.gep133, align 8
  br label %b.push_done119

str_overflow_abort127:                            ; preds = %b.grow117
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %b.new.buf.len126
}

define internal ptr @"time::#tm_to_datetime"(ptr %0, i64 %1) #0 {
entry:
  %var.nsec = alloca i64, align 8
  %var.tm = alloca ptr, align 8
  store ptr %0, ptr %var.tm, align 8
  store i64 %1, ptr %var.nsec, align 8
  %var.load = load ptr, ptr %var.tm, align 8
  %fld.gep = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load, i32 0, i32 5
  %fld.load = load i32, ptr %fld.gep, align 4
  %coerce.sext = sext i32 %fld.load to i64
  %addtmp = add i64 %coerce.sext, 1900
  %var.load1 = load ptr, ptr %var.tm, align 8
  %fld.gep2 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load1, i32 0, i32 4
  %fld.load3 = load i32, ptr %fld.gep2, align 4
  %coerce.sext4 = sext i32 %fld.load3 to i64
  %addtmp5 = add i64 %coerce.sext4, 1
  %var.load6 = load ptr, ptr %var.tm, align 8
  %fld.gep7 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load6, i32 0, i32 3
  %fld.load8 = load i32, ptr %fld.gep7, align 4
  %coerce.sext9 = sext i32 %fld.load8 to i64
  %var.load10 = load ptr, ptr %var.tm, align 8
  %fld.gep11 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i32, ptr %fld.gep11, align 4
  %coerce.sext13 = sext i32 %fld.load12 to i64
  %var.load14 = load ptr, ptr %var.tm, align 8
  %fld.gep15 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load14, i32 0, i32 1
  %fld.load16 = load i32, ptr %fld.gep15, align 4
  %coerce.sext17 = sext i32 %fld.load16 to i64
  %var.load18 = load ptr, ptr %var.tm, align 8
  %fld.gep19 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load18, i32 0, i32 0
  %fld.load20 = load i32, ptr %fld.gep19, align 4
  %coerce.sext21 = sext i32 %fld.load20 to i64
  %var.load22 = load i64, ptr %var.nsec, align 8
  %var.load23 = load ptr, ptr %var.tm, align 8
  %fld.gep24 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load23, i32 0, i32 6
  %fld.load25 = load i32, ptr %fld.gep24, align 4
  %coerce.sext26 = sext i32 %fld.load25 to i64
  %var.load27 = load ptr, ptr %var.tm, align 8
  %fld.gep28 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load27, i32 0, i32 7
  %fld.load29 = load i32, ptr %fld.gep28, align 4
  %coerce.sext30 = sext i32 %fld.load29 to i64
  %addtmp31 = add i64 %coerce.sext30, 1
  %var.load32 = load ptr, ptr %var.tm, align 8
  %fld.gep33 = getelementptr inbounds { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }, ptr %var.load32, i32 0, i32 10
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %addtmp, ptr %rec.fld, align 8
  %rec.fld35 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %addtmp5, ptr %rec.fld35, align 8
  %rec.fld36 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %coerce.sext9, ptr %rec.fld36, align 8
  %rec.fld37 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %coerce.sext13, ptr %rec.fld37, align 8
  %rec.fld38 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %coerce.sext17, ptr %rec.fld38, align 8
  %rec.fld39 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %coerce.sext21, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %var.load22, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %coerce.sext26, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store i64 %addtmp31, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 %fld.load34, ptr %rec.fld43, align 8
  ret ptr %rec.alloc
}

define internal ptr @"time::#datetime_to_tm"(ptr %0) #0 {
entry:
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i64, ptr %fld.gep, align 8
  %coerce.trunc = trunc i64 %fld.load to i32
  %var.load1 = load ptr, ptr %var.dt, align 8
  %fld.gep2 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 4
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %coerce.trunc4 = trunc i64 %fld.load3 to i32
  %var.load5 = load ptr, ptr %var.dt, align 8
  %fld.gep6 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load5, i32 0, i32 3
  %fld.load7 = load i64, ptr %fld.gep6, align 8
  %coerce.trunc8 = trunc i64 %fld.load7 to i32
  %var.load9 = load ptr, ptr %var.dt, align 8
  %fld.gep10 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load9, i32 0, i32 2
  %fld.load11 = load i64, ptr %fld.gep10, align 8
  %coerce.trunc12 = trunc i64 %fld.load11 to i32
  %var.load13 = load ptr, ptr %var.dt, align 8
  %fld.gep14 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %subtmp = sub i64 %fld.load15, 1
  %coerce.trunc16 = trunc i64 %subtmp to i32
  %var.load17 = load ptr, ptr %var.dt, align 8
  %fld.gep18 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load17, i32 0, i32 0
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %subtmp20 = sub i64 %fld.load19, 1900
  %coerce.trunc21 = trunc i64 %subtmp20 to i32
  %var.load22 = load ptr, ptr %var.dt, align 8
  %fld.gep23 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load22, i32 0, i32 7
  %fld.load24 = load i64, ptr %fld.gep23, align 8
  %coerce.trunc25 = trunc i64 %fld.load24 to i32
  %var.load26 = load ptr, ptr %var.dt, align 8
  %fld.gep27 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load26, i32 0, i32 8
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %subtmp29 = sub i64 %fld.load28, 1
  %coerce.trunc30 = trunc i64 %subtmp29 to i32
  %var.load31 = load ptr, ptr %var.dt, align 8
  %fld.gep32 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load31, i32 0, i32 9
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %var.load34 = load ptr, ptr @"var.sys::addr_null", align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 0
  store i32 %coerce.trunc, ptr %rec.fld, align 4
  %rec.fld35 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 1
  store i32 %coerce.trunc4, ptr %rec.fld35, align 4
  %rec.fld36 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 2
  store i32 %coerce.trunc8, ptr %rec.fld36, align 4
  %rec.fld37 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 3
  store i32 %coerce.trunc12, ptr %rec.fld37, align 4
  %rec.fld38 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 4
  store i32 %coerce.trunc16, ptr %rec.fld38, align 4
  %rec.fld39 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 5
  store i32 %coerce.trunc21, ptr %rec.fld39, align 4
  %rec.fld40 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 6
  store i32 %coerce.trunc25, ptr %rec.fld40, align 4
  %rec.fld41 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 7
  store i32 %coerce.trunc30, ptr %rec.fld41, align 4
  %rec.fld42 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 8
  store i32 -1, ptr %rec.fld42, align 4
  %rec.fld43 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 9
  store i32 0, ptr %rec.fld43, align 4
  %rec.fld44 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 10
  store i64 %fld.load33, ptr %rec.fld44, align 8
  %rec.fld45 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 11
  store ptr %var.load34, ptr %rec.fld45, align 8
  ret ptr %rec.alloc
}

define internal i64 @"time::#days_from_civil"(i64 %0, i64 %1, i64 %2) #0 {
entry:
  %var.doe = alloca i64, align 8
  %var.doy = alloca i64, align 8
  %var.mp = alloca i64, align 8
  %var.yoe = alloca i64, align 8
  %var.era = alloca i64, align 8
  %var.y = alloca i64, align 8
  %var.day = alloca i64, align 8
  %var.month = alloca i64, align 8
  %var.year = alloca i64, align 8
  store i64 %0, ptr %var.year, align 8
  store i64 %1, ptr %var.month, align 8
  store i64 %2, ptr %var.day, align 8
  %var.load = load i64, ptr %var.month, align 8
  %cmptmp = icmp sle i64 %var.load, 2
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.year, align 8
  %subtmp = sub i64 %var.load1, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.year, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ %var.load2, %choice.else ]
  store i64 %choice.res, ptr %var.y, align 8
  %var.load3 = load i64, ptr %var.y, align 8
  %cmptmp4 = icmp sge i64 %var.load3, 0
  br i1 %cmptmp4, label %choice.then5, label %choice.else6

choice.then5:                                     ; preds = %choice.exit
  %var.load8 = load i64, ptr %var.y, align 8
  br label %choice.exit7

choice.else6:                                     ; preds = %choice.exit
  %var.load9 = load i64, ptr %var.y, align 8
  %subtmp10 = sub i64 %var.load9, 399
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else6, %choice.then5
  %choice.res11 = phi i64 [ %var.load8, %choice.then5 ], [ %subtmp10, %choice.else6 ]
  %divtmp = sdiv i64 %choice.res11, 400
  store i64 %divtmp, ptr %var.era, align 8
  %var.load12 = load i64, ptr %var.y, align 8
  %var.load13 = load i64, ptr %var.era, align 8
  %multmp = mul i64 %var.load13, 400
  %subtmp14 = sub i64 %var.load12, %multmp
  store i64 %subtmp14, ptr %var.yoe, align 8
  %var.load15 = load i64, ptr %var.month, align 8
  %cmptmp16 = icmp sgt i64 %var.load15, 2
  br i1 %cmptmp16, label %choice.then17, label %choice.else18

choice.then17:                                    ; preds = %choice.exit7
  %var.load20 = load i64, ptr %var.month, align 8
  %subtmp21 = sub i64 %var.load20, 3
  br label %choice.exit19

choice.else18:                                    ; preds = %choice.exit7
  %var.load22 = load i64, ptr %var.month, align 8
  %addtmp = add i64 %var.load22, 9
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else18, %choice.then17
  %choice.res23 = phi i64 [ %subtmp21, %choice.then17 ], [ %addtmp, %choice.else18 ]
  store i64 %choice.res23, ptr %var.mp, align 8
  %var.load24 = load i64, ptr %var.mp, align 8
  %multmp25 = mul i64 153, %var.load24
  %addtmp26 = add i64 %multmp25, 2
  %divtmp27 = sdiv i64 %addtmp26, 5
  %var.load28 = load i64, ptr %var.day, align 8
  %addtmp29 = add i64 %divtmp27, %var.load28
  %subtmp30 = sub i64 %addtmp29, 1
  store i64 %subtmp30, ptr %var.doy, align 8
  %var.load31 = load i64, ptr %var.yoe, align 8
  %multmp32 = mul i64 %var.load31, 365
  %var.load33 = load i64, ptr %var.yoe, align 8
  %divtmp34 = sdiv i64 %var.load33, 4
  %addtmp35 = add i64 %multmp32, %divtmp34
  %var.load36 = load i64, ptr %var.yoe, align 8
  %divtmp37 = sdiv i64 %var.load36, 100
  %subtmp38 = sub i64 %addtmp35, %divtmp37
  %var.load39 = load i64, ptr %var.doy, align 8
  %addtmp40 = add i64 %subtmp38, %var.load39
  store i64 %addtmp40, ptr %var.doe, align 8
  %var.load41 = load i64, ptr %var.era, align 8
  %multmp42 = mul i64 %var.load41, 146097
  %var.load43 = load i64, ptr %var.doe, align 8
  %addtmp44 = add i64 %multmp42, %var.load43
  %subtmp45 = sub i64 %addtmp44, 719468
  ret i64 %subtmp45
}

define internal ptr @"time::#civil_from_days"(i64 %0) #0 {
entry:
  %var.yday = alloca i64, align 8
  %var.jan1 = alloca i64, align 8
  %var.wday = alloca i64, align 8
  %var.year = alloca i64, align 8
  %var.m = alloca i64, align 8
  %var.d = alloca i64, align 8
  %var.mp = alloca i64, align 8
  %var.doy_mar = alloca i64, align 8
  %var.y = alloca i64, align 8
  %var.yoe = alloca i64, align 8
  %var.doe = alloca i64, align 8
  %var.era = alloca i64, align 8
  %var.z_s = alloca i64, align 8
  %var.z = alloca i64, align 8
  store i64 %0, ptr %var.z, align 8
  %var.load = load i64, ptr %var.z, align 8
  %addtmp = add i64 %var.load, 719468
  store i64 %addtmp, ptr %var.z_s, align 8
  %var.load1 = load i64, ptr %var.z_s, align 8
  %cmptmp = icmp sge i64 %var.load1, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.z_s, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load i64, ptr %var.z_s, align 8
  %subtmp = sub i64 %var.load3, 146096
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load2, %choice.then ], [ %subtmp, %choice.else ]
  %divtmp = sdiv i64 %choice.res, 146097
  store i64 %divtmp, ptr %var.era, align 8
  %var.load4 = load i64, ptr %var.z_s, align 8
  %var.load5 = load i64, ptr %var.era, align 8
  %multmp = mul i64 %var.load5, 146097
  %subtmp6 = sub i64 %var.load4, %multmp
  store i64 %subtmp6, ptr %var.doe, align 8
  %var.load7 = load i64, ptr %var.doe, align 8
  %var.load8 = load i64, ptr %var.doe, align 8
  %divtmp9 = sdiv i64 %var.load8, 1460
  %subtmp10 = sub i64 %var.load7, %divtmp9
  %var.load11 = load i64, ptr %var.doe, align 8
  %divtmp12 = sdiv i64 %var.load11, 36524
  %addtmp13 = add i64 %subtmp10, %divtmp12
  %var.load14 = load i64, ptr %var.doe, align 8
  %divtmp15 = sdiv i64 %var.load14, 146096
  %subtmp16 = sub i64 %addtmp13, %divtmp15
  %divtmp17 = sdiv i64 %subtmp16, 365
  store i64 %divtmp17, ptr %var.yoe, align 8
  %var.load18 = load i64, ptr %var.yoe, align 8
  %var.load19 = load i64, ptr %var.era, align 8
  %multmp20 = mul i64 %var.load19, 400
  %addtmp21 = add i64 %var.load18, %multmp20
  store i64 %addtmp21, ptr %var.y, align 8
  %var.load22 = load i64, ptr %var.doe, align 8
  %var.load23 = load i64, ptr %var.yoe, align 8
  %multmp24 = mul i64 365, %var.load23
  %var.load25 = load i64, ptr %var.yoe, align 8
  %divtmp26 = sdiv i64 %var.load25, 4
  %addtmp27 = add i64 %multmp24, %divtmp26
  %var.load28 = load i64, ptr %var.yoe, align 8
  %divtmp29 = sdiv i64 %var.load28, 100
  %subtmp30 = sub i64 %addtmp27, %divtmp29
  %subtmp31 = sub i64 %var.load22, %subtmp30
  store i64 %subtmp31, ptr %var.doy_mar, align 8
  %var.load32 = load i64, ptr %var.doy_mar, align 8
  %multmp33 = mul i64 5, %var.load32
  %addtmp34 = add i64 %multmp33, 2
  %divtmp35 = sdiv i64 %addtmp34, 153
  store i64 %divtmp35, ptr %var.mp, align 8
  %var.load36 = load i64, ptr %var.doy_mar, align 8
  %var.load37 = load i64, ptr %var.mp, align 8
  %multmp38 = mul i64 153, %var.load37
  %addtmp39 = add i64 %multmp38, 2
  %divtmp40 = sdiv i64 %addtmp39, 5
  %subtmp41 = sub i64 %var.load36, %divtmp40
  %addtmp42 = add i64 %subtmp41, 1
  store i64 %addtmp42, ptr %var.d, align 8
  %var.load43 = load i64, ptr %var.mp, align 8
  %cmptmp44 = icmp slt i64 %var.load43, 10
  br i1 %cmptmp44, label %choice.then45, label %choice.else46

choice.then45:                                    ; preds = %choice.exit
  %var.load48 = load i64, ptr %var.mp, align 8
  %addtmp49 = add i64 %var.load48, 3
  br label %choice.exit47

choice.else46:                                    ; preds = %choice.exit
  %var.load50 = load i64, ptr %var.mp, align 8
  %subtmp51 = sub i64 %var.load50, 9
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.else46, %choice.then45
  %choice.res52 = phi i64 [ %addtmp49, %choice.then45 ], [ %subtmp51, %choice.else46 ]
  store i64 %choice.res52, ptr %var.m, align 8
  %var.load53 = load i64, ptr %var.m, align 8
  %cmptmp54 = icmp sle i64 %var.load53, 2
  br i1 %cmptmp54, label %choice.then55, label %choice.else56

choice.then55:                                    ; preds = %choice.exit47
  %var.load58 = load i64, ptr %var.y, align 8
  %addtmp59 = add i64 %var.load58, 1
  br label %choice.exit57

choice.else56:                                    ; preds = %choice.exit47
  %var.load60 = load i64, ptr %var.y, align 8
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.else56, %choice.then55
  %choice.res61 = phi i64 [ %addtmp59, %choice.then55 ], [ %var.load60, %choice.else56 ]
  store i64 %choice.res61, ptr %var.year, align 8
  %var.load62 = load i64, ptr %var.z, align 8
  %addtmp63 = add i64 %var.load62, 4
  %call.res = call i64 @"time::#floor_mod"(i64 %addtmp63, i64 7)
  store i64 %call.res, ptr %var.wday, align 8
  %var.load64 = load i64, ptr %var.year, align 8
  %call.res65 = call i64 @"time::#days_from_civil"(i64 %var.load64, i64 1, i64 1)
  store i64 %call.res65, ptr %var.jan1, align 8
  %var.load66 = load i64, ptr %var.z, align 8
  %var.load67 = load i64, ptr %var.jan1, align 8
  %subtmp68 = sub i64 %var.load66, %var.load67
  %addtmp69 = add i64 %subtmp68, 1
  store i64 %addtmp69, ptr %var.yday, align 8
  %var.load70 = load i64, ptr %var.year, align 8
  %var.load71 = load i64, ptr %var.m, align 8
  %var.load72 = load i64, ptr %var.d, align 8
  %var.load73 = load i64, ptr %var.wday, align 8
  %var.load74 = load i64, ptr %var.yday, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load70, ptr %rec.fld, align 8
  %rec.fld75 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load71, ptr %rec.fld75, align 8
  %rec.fld76 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load72, ptr %rec.fld76, align 8
  %rec.fld77 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load73, ptr %rec.fld77, align 8
  %rec.fld78 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load74, ptr %rec.fld78, align 8
  ret ptr %rec.alloc
}

define internal { i64, ptr } @"time::#short_weekday_name"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next14, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi ptr [ @str.0.struct, %choice.case ], [ @str.1.struct, %choice.case1 ], [ @str.2.struct, %choice.case4 ], [ @str.3.struct, %choice.case7 ], [ @str.4.struct, %choice.case10 ], [ @str.5.struct, %choice.case13 ], [ @str.6.struct, %choice.next14 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 1
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match6 = icmp eq i64 %var.load, 2
  br i1 %val.match6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  %val.match9 = icmp eq i64 %var.load, 3
  br i1 %val.match9, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next5
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next5
  %val.match12 = icmp eq i64 %var.load, 4
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next8
  %val.match15 = icmp eq i64 %var.load, 5
  br i1 %val.match15, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next11
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next11
  br label %choice.exit
}

define internal { i64, ptr } @"time::#full_weekday_name"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next14, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi ptr [ @str.7.struct, %choice.case ], [ @str.8.struct, %choice.case1 ], [ @str.9.struct, %choice.case4 ], [ @str.10.struct, %choice.case7 ], [ @str.11.struct, %choice.case10 ], [ @str.12.struct, %choice.case13 ], [ @str.13.struct, %choice.next14 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 1
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match6 = icmp eq i64 %var.load, 2
  br i1 %val.match6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  %val.match9 = icmp eq i64 %var.load, 3
  br i1 %val.match9, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next5
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next5
  %val.match12 = icmp eq i64 %var.load, 4
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next8
  %val.match15 = icmp eq i64 %var.load, 5
  br i1 %val.match15, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next11
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next11
  br label %choice.exit
}

define internal { i64, ptr } @"time::#short_month_name"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 1
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next29, %choice.case28, %choice.case25, %choice.case22, %choice.case19, %choice.case16, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi ptr [ @str.14.struct, %choice.case ], [ @str.15.struct, %choice.case1 ], [ @str.16.struct, %choice.case4 ], [ @str.17.struct, %choice.case7 ], [ @str.18.struct, %choice.case10 ], [ @str.19.struct, %choice.case13 ], [ @str.20.struct, %choice.case16 ], [ @str.21.struct, %choice.case19 ], [ @str.22.struct, %choice.case22 ], [ @str.23.struct, %choice.case25 ], [ @str.24.struct, %choice.case28 ], [ @str.25.struct, %choice.next29 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 2
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match6 = icmp eq i64 %var.load, 3
  br i1 %val.match6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  %val.match9 = icmp eq i64 %var.load, 4
  br i1 %val.match9, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next5
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next5
  %val.match12 = icmp eq i64 %var.load, 5
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next8
  %val.match15 = icmp eq i64 %var.load, 6
  br i1 %val.match15, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next11
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next11
  %val.match18 = icmp eq i64 %var.load, 7
  br i1 %val.match18, label %choice.case16, label %choice.next17

choice.case16:                                    ; preds = %choice.next14
  br label %choice.exit

choice.next17:                                    ; preds = %choice.next14
  %val.match21 = icmp eq i64 %var.load, 8
  br i1 %val.match21, label %choice.case19, label %choice.next20

choice.case19:                                    ; preds = %choice.next17
  br label %choice.exit

choice.next20:                                    ; preds = %choice.next17
  %val.match24 = icmp eq i64 %var.load, 9
  br i1 %val.match24, label %choice.case22, label %choice.next23

choice.case22:                                    ; preds = %choice.next20
  br label %choice.exit

choice.next23:                                    ; preds = %choice.next20
  %val.match27 = icmp eq i64 %var.load, 10
  br i1 %val.match27, label %choice.case25, label %choice.next26

choice.case25:                                    ; preds = %choice.next23
  br label %choice.exit

choice.next26:                                    ; preds = %choice.next23
  %val.match30 = icmp eq i64 %var.load, 11
  br i1 %val.match30, label %choice.case28, label %choice.next29

choice.case28:                                    ; preds = %choice.next26
  br label %choice.exit

choice.next29:                                    ; preds = %choice.next26
  br label %choice.exit
}

define internal { i64, ptr } @"time::#full_month_name"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 1
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next29, %choice.case28, %choice.case25, %choice.case22, %choice.case19, %choice.case16, %choice.case13, %choice.case10, %choice.case7, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi ptr [ @str.26.struct, %choice.case ], [ @str.27.struct, %choice.case1 ], [ @str.28.struct, %choice.case4 ], [ @str.29.struct, %choice.case7 ], [ @str.18.struct, %choice.case10 ], [ @str.30.struct, %choice.case13 ], [ @str.31.struct, %choice.case16 ], [ @str.32.struct, %choice.case19 ], [ @str.33.struct, %choice.case22 ], [ @str.34.struct, %choice.case25 ], [ @str.35.struct, %choice.case28 ], [ @str.36.struct, %choice.next29 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 2
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %val.match6 = icmp eq i64 %var.load, 3
  br i1 %val.match6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  %val.match9 = icmp eq i64 %var.load, 4
  br i1 %val.match9, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next5
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next5
  %val.match12 = icmp eq i64 %var.load, 5
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next8
  %val.match15 = icmp eq i64 %var.load, 6
  br i1 %val.match15, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next11
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next11
  %val.match18 = icmp eq i64 %var.load, 7
  br i1 %val.match18, label %choice.case16, label %choice.next17

choice.case16:                                    ; preds = %choice.next14
  br label %choice.exit

choice.next17:                                    ; preds = %choice.next14
  %val.match21 = icmp eq i64 %var.load, 8
  br i1 %val.match21, label %choice.case19, label %choice.next20

choice.case19:                                    ; preds = %choice.next17
  br label %choice.exit

choice.next20:                                    ; preds = %choice.next17
  %val.match24 = icmp eq i64 %var.load, 9
  br i1 %val.match24, label %choice.case22, label %choice.next23

choice.case22:                                    ; preds = %choice.next20
  br label %choice.exit

choice.next23:                                    ; preds = %choice.next20
  %val.match27 = icmp eq i64 %var.load, 10
  br i1 %val.match27, label %choice.case25, label %choice.next26

choice.case25:                                    ; preds = %choice.next23
  br label %choice.exit

choice.next26:                                    ; preds = %choice.next23
  %val.match30 = icmp eq i64 %var.load, 11
  br i1 %val.match30, label %choice.case28, label %choice.next29

choice.case28:                                    ; preds = %choice.next26
  br label %choice.exit

choice.next29:                                    ; preds = %choice.next26
  br label %choice.exit
}

define internal void @"time::#write_date_into"(ptr %0, ptr %1) #0 {
entry:
  %var.dt = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp slt i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

choice.exit:                                      ; preds = %br.done.69, %entry
  %var.load12 = load ptr, ptr %var.b, align 8
  %var.load13 = load ptr, ptr %var.dt, align 8
  %fld.gep14 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load13, i32 0, i32 0
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  call void @"time::#pad4"(ptr %var.load12, i64 %fld.load15)
  %b.load16 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len17 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.rn.cur.len18 = load i64, ptr %b.rn.cur.len17, align 8
  %b.rn.new.len19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len18, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.rn.new.len19, 0
  %ovf21 = extractvalue { i64, i1 } %b.rn.new.len19, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.rn.new.len22

b.rn.new.len2:                                    ; preds = %abort.dead, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.rn.new.len2

b.grow2:                                          ; preds = %b.rn.new.len2
  %b.cap2 = mul i64 %b.cap3, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len24 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len28

b.nogrow2:                                        ; preds = %b.rn.new.len2
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len28
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data11 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data11, i64 %b.rn.cur.len1
  br i1 true, label %br.b1.69, label %br.c2.69

b.new.buf.len28:                                  ; preds = %abort.dead10, %b.grow2
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data25, i64 %b.cur.len24, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len24
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort9:                              ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %b.new.buf.len28

br.b1.69:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.69

br.c2.69:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.69, label %br.c3.69

br.b2.69:                                         ; preds = %br.c2.69
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.69

br.c3.69:                                         ; preds = %br.c2.69
  br i1 true, label %br.b3.69, label %br.b4.69

br.b3.69:                                         ; preds = %br.c3.69
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.69

br.b4.69:                                         ; preds = %br.c3.69
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.69

br.done.69:                                       ; preds = %br.b4.69, %br.b3.69, %br.b2.69, %br.b1.69
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.rn.new.len22:                                   ; preds = %abort.dead24, %choice.exit
  %b.cap25 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  %b.cap26 = load i64, ptr %b.cap25, align 8
  %b.need.grow27 = icmp slt i64 %b.cap26, %sum20
  br i1 %b.need.grow27, label %b.grow228, label %b.nogrow229

str_overflow_abort23:                             ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %b.rn.new.len22

b.grow228:                                        ; preds = %b.rn.new.len22
  %b.cap231 = mul i64 %b.cap26, 2
  %b.cap.small32 = icmp slt i64 %b.cap231, 16
  %b.cap.grow33 = select i1 %b.cap.small32, i64 16, i64 %b.cap231
  %b.cap.need34 = icmp slt i64 %b.cap.grow33, %sum20
  %b.new.cap35 = select i1 %b.cap.need34, i64 %sum20, i64 %b.cap.grow33
  %b.cur.len236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  %b.cur.len237 = load i64, ptr %b.cur.len236, align 8
  %b.cur.data238 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.cur.data239 = load ptr, ptr %b.cur.data238, align 8
  %b.new.buf.len240 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap35, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len240, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len240, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len243

b.nogrow229:                                      ; preds = %b.rn.new.len22
  br label %b.grow_done30

b.grow_done30:                                    ; preds = %b.nogrow229, %b.new.buf.len243
  %b.rn.data51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  %b.rn.data52 = load ptr, ptr %b.rn.data51, align 8
  %b.rn.dst53 = getelementptr i8, ptr %b.rn.data52, i64 %b.rn.cur.len18
  br i1 true, label %br.b1.70, label %br.c2.70

b.new.buf.len243:                                 ; preds = %abort.dead45, %b.grow228
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf247 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf247, ptr align 1 %b.cur.data239, i64 %b.cur.len237, i1 false)
  %b.grow2.nul48 = getelementptr i8, ptr %b.new.buf247, i64 %b.cur.len237
  store i8 0, ptr %b.grow2.nul48, align 1
  %b.new.data2.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 1
  store ptr %b.new.buf247, ptr %b.new.data2.gep49, align 8
  %b.new.cap2.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 2
  store i64 %b.new.cap35, ptr %b.new.cap2.gep50, align 8
  br label %b.grow_done30

str_overflow_abort44:                             ; preds = %b.grow228
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %b.new.buf.len243

br.b1.70:                                         ; preds = %b.grow_done30
  store i8 45, ptr %b.rn.dst53, align 1
  br label %br.done.70

br.c2.70:                                         ; preds = %b.grow_done30
  br i1 true, label %br.b2.70, label %br.c3.70

br.b2.70:                                         ; preds = %br.c2.70
  store i8 -64, ptr %b.rn.dst53, align 1
  %br.dst154 = getelementptr i8, ptr %b.rn.dst53, i64 1
  store i8 -83, ptr %br.dst154, align 1
  br label %br.done.70

br.c3.70:                                         ; preds = %br.c2.70
  br i1 true, label %br.b3.70, label %br.b4.70

br.b3.70:                                         ; preds = %br.c3.70
  store i8 -32, ptr %b.rn.dst53, align 1
  %br.dst1.355 = getelementptr i8, ptr %b.rn.dst53, i64 1
  store i8 -128, ptr %br.dst1.355, align 1
  %br.dst2.356 = getelementptr i8, ptr %b.rn.dst53, i64 2
  store i8 -83, ptr %br.dst2.356, align 1
  br label %br.done.70

br.b4.70:                                         ; preds = %br.c3.70
  store i8 -16, ptr %b.rn.dst53, align 1
  %br.dst1.457 = getelementptr i8, ptr %b.rn.dst53, i64 1
  store i8 -128, ptr %br.dst1.457, align 1
  %br.dst2.458 = getelementptr i8, ptr %b.rn.dst53, i64 2
  store i8 -128, ptr %br.dst2.458, align 1
  %br.dst3.459 = getelementptr i8, ptr %b.rn.dst53, i64 3
  store i8 -83, ptr %br.dst3.459, align 1
  br label %br.done.70

br.done.70:                                       ; preds = %br.b4.70, %br.b3.70, %br.b2.70, %br.b1.70
  %br.nul60 = getelementptr i8, ptr %b.rn.data52, i64 %sum20
  store i8 0, ptr %br.nul60, align 1
  %b.len.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load16, i32 0, i32 0
  store i64 %sum20, ptr %b.len.gep61, align 8
  %var.load62 = load ptr, ptr %var.b, align 8
  %var.load63 = load ptr, ptr %var.dt, align 8
  %fld.gep64 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load63, i32 0, i32 1
  %fld.load65 = load i64, ptr %fld.gep64, align 8
  call void @"time::#pad2"(ptr %var.load62, i64 %fld.load65)
  %b.load66 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len67 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 0
  %b.rn.cur.len68 = load i64, ptr %b.rn.cur.len67, align 8
  %b.rn.new.len69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len68, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.rn.new.len69, 0
  %ovf71 = extractvalue { i64, i1 } %b.rn.new.len69, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.rn.new.len72

b.rn.new.len72:                                   ; preds = %abort.dead74, %br.done.70
  %b.cap75 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 2
  %b.cap76 = load i64, ptr %b.cap75, align 8
  %b.need.grow77 = icmp slt i64 %b.cap76, %sum70
  br i1 %b.need.grow77, label %b.grow278, label %b.nogrow279

str_overflow_abort73:                             ; preds = %br.done.70
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %b.rn.new.len72

b.grow278:                                        ; preds = %b.rn.new.len72
  %b.cap281 = mul i64 %b.cap76, 2
  %b.cap.small82 = icmp slt i64 %b.cap281, 16
  %b.cap.grow83 = select i1 %b.cap.small82, i64 16, i64 %b.cap281
  %b.cap.need84 = icmp slt i64 %b.cap.grow83, %sum70
  %b.new.cap85 = select i1 %b.cap.need84, i64 %sum70, i64 %b.cap.grow83
  %b.cur.len286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 0
  %b.cur.len287 = load i64, ptr %b.cur.len286, align 8
  %b.cur.data288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 1
  %b.cur.data289 = load ptr, ptr %b.cur.data288, align 8
  %b.new.buf.len290 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap85, i64 1)
  %sum91 = extractvalue { i64, i1 } %b.new.buf.len290, 0
  %ovf92 = extractvalue { i64, i1 } %b.new.buf.len290, 1
  br i1 %ovf92, label %str_overflow_abort94, label %b.new.buf.len293

b.nogrow279:                                      ; preds = %b.rn.new.len72
  br label %b.grow_done80

b.grow_done80:                                    ; preds = %b.nogrow279, %b.new.buf.len293
  %b.rn.data101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 1
  %b.rn.data102 = load ptr, ptr %b.rn.data101, align 8
  %b.rn.dst103 = getelementptr i8, ptr %b.rn.data102, i64 %b.rn.cur.len68
  br i1 true, label %br.b1.71, label %br.c2.71

b.new.buf.len293:                                 ; preds = %abort.dead95, %b.grow278
  %arena.cur96 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf297 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum91)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf297, ptr align 1 %b.cur.data289, i64 %b.cur.len287, i1 false)
  %b.grow2.nul98 = getelementptr i8, ptr %b.new.buf297, i64 %b.cur.len287
  store i8 0, ptr %b.grow2.nul98, align 1
  %b.new.data2.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 1
  store ptr %b.new.buf297, ptr %b.new.data2.gep99, align 8
  %b.new.cap2.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 2
  store i64 %b.new.cap85, ptr %b.new.cap2.gep100, align 8
  br label %b.grow_done80

str_overflow_abort94:                             ; preds = %b.grow278
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %b.new.buf.len293

br.b1.71:                                         ; preds = %b.grow_done80
  store i8 45, ptr %b.rn.dst103, align 1
  br label %br.done.71

br.c2.71:                                         ; preds = %b.grow_done80
  br i1 true, label %br.b2.71, label %br.c3.71

br.b2.71:                                         ; preds = %br.c2.71
  store i8 -64, ptr %b.rn.dst103, align 1
  %br.dst1104 = getelementptr i8, ptr %b.rn.dst103, i64 1
  store i8 -83, ptr %br.dst1104, align 1
  br label %br.done.71

br.c3.71:                                         ; preds = %br.c2.71
  br i1 true, label %br.b3.71, label %br.b4.71

br.b3.71:                                         ; preds = %br.c3.71
  store i8 -32, ptr %b.rn.dst103, align 1
  %br.dst1.3105 = getelementptr i8, ptr %b.rn.dst103, i64 1
  store i8 -128, ptr %br.dst1.3105, align 1
  %br.dst2.3106 = getelementptr i8, ptr %b.rn.dst103, i64 2
  store i8 -83, ptr %br.dst2.3106, align 1
  br label %br.done.71

br.b4.71:                                         ; preds = %br.c3.71
  store i8 -16, ptr %b.rn.dst103, align 1
  %br.dst1.4107 = getelementptr i8, ptr %b.rn.dst103, i64 1
  store i8 -128, ptr %br.dst1.4107, align 1
  %br.dst2.4108 = getelementptr i8, ptr %b.rn.dst103, i64 2
  store i8 -128, ptr %br.dst2.4108, align 1
  %br.dst3.4109 = getelementptr i8, ptr %b.rn.dst103, i64 3
  store i8 -83, ptr %br.dst3.4109, align 1
  br label %br.done.71

br.done.71:                                       ; preds = %br.b4.71, %br.b3.71, %br.b2.71, %br.b1.71
  %br.nul110 = getelementptr i8, ptr %b.rn.data102, i64 %sum70
  store i8 0, ptr %br.nul110, align 1
  %b.len.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load66, i32 0, i32 0
  store i64 %sum70, ptr %b.len.gep111, align 8
  %var.load112 = load ptr, ptr %var.b, align 8
  %var.load113 = load ptr, ptr %var.dt, align 8
  %fld.gep114 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load113, i32 0, i32 2
  %fld.load115 = load i64, ptr %fld.gep114, align 8
  call void @"time::#pad2"(ptr %var.load112, i64 %fld.load115)
  ret void
}

define internal void @"time::#write_clock_into"(ptr %0, ptr %1) #0 {
entry:
  %var.dt = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 3
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#pad2"(ptr %var.load, i64 %fld.load)
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len2 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len2, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len3

b.rn.new.len3:                                    ; preds = %abort.dead, %entry
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap4 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap4, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.rn.new.len3

b.grow2:                                          ; preds = %b.rn.new.len3
  %b.cap2 = mul i64 %b.cap4, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len25 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data26 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum7 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf8 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf8, label %str_overflow_abort10, label %b.new.buf.len29

b.nogrow2:                                        ; preds = %b.rn.new.len3
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len29
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data12 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data12, i64 %b.rn.cur.len2
  br i1 true, label %br.b1.72, label %br.c2.72

b.new.buf.len29:                                  ; preds = %abort.dead11, %b.grow2
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum7)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data26, i64 %b.cur.len25, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len25
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort10:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %b.new.buf.len29

br.b1.72:                                         ; preds = %b.grow_done
  store i8 58, ptr %b.rn.dst, align 1
  br label %br.done.72

br.c2.72:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.72, label %br.c3.72

br.b2.72:                                         ; preds = %br.c2.72
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -70, ptr %br.dst1, align 1
  br label %br.done.72

br.c3.72:                                         ; preds = %br.c2.72
  br i1 true, label %br.b3.72, label %br.b4.72

br.b3.72:                                         ; preds = %br.c3.72
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -70, ptr %br.dst2.3, align 1
  br label %br.done.72

br.b4.72:                                         ; preds = %br.c3.72
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -70, ptr %br.dst3.4, align 1
  br label %br.done.72

br.done.72:                                       ; preds = %br.b4.72, %br.b3.72, %br.b2.72, %br.b1.72
  %br.nul = getelementptr i8, ptr %b.rn.data12, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load13 = load ptr, ptr %var.b, align 8
  %var.load14 = load ptr, ptr %var.dt, align 8
  %fld.gep15 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load14, i32 0, i32 4
  %fld.load16 = load i64, ptr %fld.gep15, align 8
  call void @"time::#pad2"(ptr %var.load13, i64 %fld.load16)
  %b.load17 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len18 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 0
  %b.rn.cur.len19 = load i64, ptr %b.rn.cur.len18, align 8
  %b.rn.new.len20 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len19, i64 1)
  %sum21 = extractvalue { i64, i1 } %b.rn.new.len20, 0
  %ovf22 = extractvalue { i64, i1 } %b.rn.new.len20, 1
  br i1 %ovf22, label %str_overflow_abort24, label %b.rn.new.len23

b.rn.new.len23:                                   ; preds = %abort.dead25, %br.done.72
  %b.cap26 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 2
  %b.cap27 = load i64, ptr %b.cap26, align 8
  %b.need.grow28 = icmp slt i64 %b.cap27, %sum21
  br i1 %b.need.grow28, label %b.grow229, label %b.nogrow230

str_overflow_abort24:                             ; preds = %br.done.72
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %b.rn.new.len23

b.grow229:                                        ; preds = %b.rn.new.len23
  %b.cap232 = mul i64 %b.cap27, 2
  %b.cap.small33 = icmp slt i64 %b.cap232, 16
  %b.cap.grow34 = select i1 %b.cap.small33, i64 16, i64 %b.cap232
  %b.cap.need35 = icmp slt i64 %b.cap.grow34, %sum21
  %b.new.cap36 = select i1 %b.cap.need35, i64 %sum21, i64 %b.cap.grow34
  %b.cur.len237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 0
  %b.cur.len238 = load i64, ptr %b.cur.len237, align 8
  %b.cur.data239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 1
  %b.cur.data240 = load ptr, ptr %b.cur.data239, align 8
  %b.new.buf.len241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap36, i64 1)
  %sum42 = extractvalue { i64, i1 } %b.new.buf.len241, 0
  %ovf43 = extractvalue { i64, i1 } %b.new.buf.len241, 1
  br i1 %ovf43, label %str_overflow_abort45, label %b.new.buf.len244

b.nogrow230:                                      ; preds = %b.rn.new.len23
  br label %b.grow_done31

b.grow_done31:                                    ; preds = %b.nogrow230, %b.new.buf.len244
  %b.rn.data52 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 1
  %b.rn.data53 = load ptr, ptr %b.rn.data52, align 8
  %b.rn.dst54 = getelementptr i8, ptr %b.rn.data53, i64 %b.rn.cur.len19
  br i1 true, label %br.b1.73, label %br.c2.73

b.new.buf.len244:                                 ; preds = %abort.dead46, %b.grow229
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf248 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf248, ptr align 1 %b.cur.data240, i64 %b.cur.len238, i1 false)
  %b.grow2.nul49 = getelementptr i8, ptr %b.new.buf248, i64 %b.cur.len238
  store i8 0, ptr %b.grow2.nul49, align 1
  %b.new.data2.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 1
  store ptr %b.new.buf248, ptr %b.new.data2.gep50, align 8
  %b.new.cap2.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 2
  store i64 %b.new.cap36, ptr %b.new.cap2.gep51, align 8
  br label %b.grow_done31

str_overflow_abort45:                             ; preds = %b.grow229
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %b.new.buf.len244

br.b1.73:                                         ; preds = %b.grow_done31
  store i8 58, ptr %b.rn.dst54, align 1
  br label %br.done.73

br.c2.73:                                         ; preds = %b.grow_done31
  br i1 true, label %br.b2.73, label %br.c3.73

br.b2.73:                                         ; preds = %br.c2.73
  store i8 -64, ptr %b.rn.dst54, align 1
  %br.dst155 = getelementptr i8, ptr %b.rn.dst54, i64 1
  store i8 -70, ptr %br.dst155, align 1
  br label %br.done.73

br.c3.73:                                         ; preds = %br.c2.73
  br i1 true, label %br.b3.73, label %br.b4.73

br.b3.73:                                         ; preds = %br.c3.73
  store i8 -32, ptr %b.rn.dst54, align 1
  %br.dst1.356 = getelementptr i8, ptr %b.rn.dst54, i64 1
  store i8 -128, ptr %br.dst1.356, align 1
  %br.dst2.357 = getelementptr i8, ptr %b.rn.dst54, i64 2
  store i8 -70, ptr %br.dst2.357, align 1
  br label %br.done.73

br.b4.73:                                         ; preds = %br.c3.73
  store i8 -16, ptr %b.rn.dst54, align 1
  %br.dst1.458 = getelementptr i8, ptr %b.rn.dst54, i64 1
  store i8 -128, ptr %br.dst1.458, align 1
  %br.dst2.459 = getelementptr i8, ptr %b.rn.dst54, i64 2
  store i8 -128, ptr %br.dst2.459, align 1
  %br.dst3.460 = getelementptr i8, ptr %b.rn.dst54, i64 3
  store i8 -70, ptr %br.dst3.460, align 1
  br label %br.done.73

br.done.73:                                       ; preds = %br.b4.73, %br.b3.73, %br.b2.73, %br.b1.73
  %br.nul61 = getelementptr i8, ptr %b.rn.data53, i64 %sum21
  store i8 0, ptr %br.nul61, align 1
  %b.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 0
  store i64 %sum21, ptr %b.len.gep62, align 8
  %var.load63 = load ptr, ptr %var.b, align 8
  %var.load64 = load ptr, ptr %var.dt, align 8
  %fld.gep65 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load64, i32 0, i32 5
  %fld.load66 = load i64, ptr %fld.gep65, align 8
  call void @"time::#pad2"(ptr %var.load63, i64 %fld.load66)
  ret void
}

define internal void @"time::#write_tz_iso_into"(ptr %0, i64 %1) #0 {
entry:
  %var.abs_off = alloca i64, align 8
  %var.utc_off = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.utc_off, align 8
  %var.load = load i64, ptr %var.utc_off, align 8
  %cmptmp = icmp eq i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

choice.else:                                      ; preds = %entry
  %b.load12 = load ptr, ptr %var.b, align 8
  %var.load13 = load i64, ptr %var.utc_off, align 8
  %cmptmp14 = icmp slt i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.else16

choice.exit:                                      ; preds = %br.done.76, %br.done.74
  ret void

b.rn.new.len2:                                    ; preds = %abort.dead, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.rn.new.len2

b.grow2:                                          ; preds = %b.rn.new.len2
  %b.cap2 = mul i64 %b.cap3, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len24 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len28

b.nogrow2:                                        ; preds = %b.rn.new.len2
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len28
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data11 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data11, i64 %b.rn.cur.len1
  br i1 true, label %br.b1.74, label %br.c2.74

b.new.buf.len28:                                  ; preds = %abort.dead10, %b.grow2
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data25, i64 %b.cur.len24, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len24
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort9:                              ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %b.new.buf.len28

br.b1.74:                                         ; preds = %b.grow_done
  store i8 90, ptr %b.rn.dst, align 1
  br label %br.done.74

br.c2.74:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.74, label %br.c3.74

br.b2.74:                                         ; preds = %br.c2.74
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -102, ptr %br.dst1, align 1
  br label %br.done.74

br.c3.74:                                         ; preds = %br.c2.74
  br i1 true, label %br.b3.74, label %br.b4.74

br.b3.74:                                         ; preds = %br.c3.74
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -102, ptr %br.dst2.3, align 1
  br label %br.done.74

br.b4.74:                                         ; preds = %br.c3.74
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -102, ptr %br.dst3.4, align 1
  br label %br.done.74

br.done.74:                                       ; preds = %br.b4.74, %br.b3.74, %br.b2.74, %br.b1.74
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

choice.then15:                                    ; preds = %choice.else
  br label %choice.exit17

choice.else16:                                    ; preds = %choice.else
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else16, %choice.then15
  %choice.res = phi i32 [ 45, %choice.then15 ], [ 43, %choice.else16 ]
  %coerce.sext = sext i32 %choice.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len18 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 0
  %b.rn.cur.len19 = load i64, ptr %b.rn.cur.len18, align 8
  %b.rn.new.len20 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len19, i64 %br.width)
  %sum21 = extractvalue { i64, i1 } %b.rn.new.len20, 0
  %ovf22 = extractvalue { i64, i1 } %b.rn.new.len20, 1
  br i1 %ovf22, label %str_overflow_abort24, label %b.rn.new.len23

b.rn.new.len23:                                   ; preds = %abort.dead25, %choice.exit17
  %b.cap26 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 2
  %b.cap27 = load i64, ptr %b.cap26, align 8
  %b.need.grow28 = icmp slt i64 %b.cap27, %sum21
  br i1 %b.need.grow28, label %b.grow229, label %b.nogrow230

str_overflow_abort24:                             ; preds = %choice.exit17
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %b.rn.new.len23

b.grow229:                                        ; preds = %b.rn.new.len23
  %b.cap232 = mul i64 %b.cap27, 2
  %b.cap.small33 = icmp slt i64 %b.cap232, 16
  %b.cap.grow34 = select i1 %b.cap.small33, i64 16, i64 %b.cap232
  %b.cap.need35 = icmp slt i64 %b.cap.grow34, %sum21
  %b.new.cap36 = select i1 %b.cap.need35, i64 %sum21, i64 %b.cap.grow34
  %b.cur.len237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 0
  %b.cur.len238 = load i64, ptr %b.cur.len237, align 8
  %b.cur.data239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 1
  %b.cur.data240 = load ptr, ptr %b.cur.data239, align 8
  %b.new.buf.len241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap36, i64 1)
  %sum42 = extractvalue { i64, i1 } %b.new.buf.len241, 0
  %ovf43 = extractvalue { i64, i1 } %b.new.buf.len241, 1
  br i1 %ovf43, label %str_overflow_abort45, label %b.new.buf.len244

b.nogrow230:                                      ; preds = %b.rn.new.len23
  br label %b.grow_done31

b.grow_done31:                                    ; preds = %b.nogrow230, %b.new.buf.len244
  %b.rn.data52 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 1
  %b.rn.data53 = load ptr, ptr %b.rn.data52, align 8
  %b.rn.dst54 = getelementptr i8, ptr %b.rn.data53, i64 %b.rn.cur.len19
  br i1 %br.cmp1, label %br.b1.75, label %br.c2.75

b.new.buf.len244:                                 ; preds = %abort.dead46, %b.grow229
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf248 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf248, ptr align 1 %b.cur.data240, i64 %b.cur.len238, i1 false)
  %b.grow2.nul49 = getelementptr i8, ptr %b.new.buf248, i64 %b.cur.len238
  store i8 0, ptr %b.grow2.nul49, align 1
  %b.new.data2.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 1
  store ptr %b.new.buf248, ptr %b.new.data2.gep50, align 8
  %b.new.cap2.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 2
  store i64 %b.new.cap36, ptr %b.new.cap2.gep51, align 8
  br label %b.grow_done31

str_overflow_abort45:                             ; preds = %b.grow229
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %b.new.buf.len244

br.b1.75:                                         ; preds = %b.grow_done31
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst54, align 1
  br label %br.done.75

br.c2.75:                                         ; preds = %b.grow_done31
  br i1 %br.cmp2, label %br.b2.75, label %br.c3.75

br.b2.75:                                         ; preds = %br.c2.75
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst54, align 1
  %br.dst155 = getelementptr i8, ptr %b.rn.dst54, i64 1
  store i8 %br.b2.1t, ptr %br.dst155, align 1
  br label %br.done.75

br.c3.75:                                         ; preds = %br.c2.75
  br i1 %br.cmp3, label %br.b3.75, label %br.b4.75

br.b3.75:                                         ; preds = %br.c3.75
  %br.sh12 = lshr i64 %coerce.sext, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst54, align 1
  %br.dst1.356 = getelementptr i8, ptr %b.rn.dst54, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.356, align 1
  %br.dst2.357 = getelementptr i8, ptr %b.rn.dst54, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.357, align 1
  br label %br.done.75

br.b4.75:                                         ; preds = %br.c3.75
  %br.sh18 = lshr i64 %coerce.sext, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext, 63
  %br.b4.3 = or i64 %br.mend4, 128
  %br.b4.3t = trunc i64 %br.b4.3 to i8
  store i8 %br.b4.0t, ptr %b.rn.dst54, align 1
  %br.dst1.458 = getelementptr i8, ptr %b.rn.dst54, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.458, align 1
  %br.dst2.459 = getelementptr i8, ptr %b.rn.dst54, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.459, align 1
  %br.dst3.460 = getelementptr i8, ptr %b.rn.dst54, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.460, align 1
  br label %br.done.75

br.done.75:                                       ; preds = %br.b4.75, %br.b3.75, %br.b2.75, %br.b1.75
  %br.nul61 = getelementptr i8, ptr %b.rn.data53, i64 %sum21
  store i8 0, ptr %br.nul61, align 1
  %b.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load12, i32 0, i32 0
  store i64 %sum21, ptr %b.len.gep62, align 8
  %var.load63 = load i64, ptr %var.utc_off, align 8
  %cmptmp64 = icmp slt i64 %var.load63, 0
  br i1 %cmptmp64, label %choice.then65, label %choice.else66

choice.then65:                                    ; preds = %br.done.75
  %var.load68 = load i64, ptr %var.utc_off, align 8
  %negtmp = sub i64 0, %var.load68
  br label %choice.exit67

choice.else66:                                    ; preds = %br.done.75
  %var.load69 = load i64, ptr %var.utc_off, align 8
  br label %choice.exit67

choice.exit67:                                    ; preds = %choice.else66, %choice.then65
  %choice.res70 = phi i64 [ %negtmp, %choice.then65 ], [ %var.load69, %choice.else66 ]
  store i64 %choice.res70, ptr %var.abs_off, align 8
  %var.load71 = load ptr, ptr %var.b, align 8
  %var.load72 = load i64, ptr %var.abs_off, align 8
  %divtmp = sdiv i64 %var.load72, 3600
  call void @"time::#pad2"(ptr %var.load71, i64 %divtmp)
  %b.load73 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len74 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load73, i32 0, i32 0
  %b.rn.cur.len75 = load i64, ptr %b.rn.cur.len74, align 8
  %b.rn.new.len76 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len75, i64 1)
  %sum77 = extractvalue { i64, i1 } %b.rn.new.len76, 0
  %ovf78 = extractvalue { i64, i1 } %b.rn.new.len76, 1
  br i1 %ovf78, label %str_overflow_abort80, label %b.rn.new.len79

b.rn.new.len79:                                   ; preds = %abort.dead81, %choice.exit67
  %b.cap82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load73, i32 0, i32 2
  %b.cap83 = load i64, ptr %b.cap82, align 8
  %b.need.grow84 = icmp slt i64 %b.cap83, %sum77
  br i1 %b.need.grow84, label %b.grow285, label %b.nogrow286

str_overflow_abort80:                             ; preds = %choice.exit67
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead81:                                     ; No predecessors!
  br label %b.rn.new.len79

b.grow285:                                        ; preds = %b.rn.new.len79
  %b.cap288 = mul i64 %b.cap83, 2
  %b.cap.small89 = icmp slt i64 %b.cap288, 16
  %b.cap.grow90 = select i1 %b.cap.small89, i64 16, i64 %b.cap288
  %b.cap.need91 = icmp slt i64 %b.cap.grow90, %sum77
  %b.new.cap92 = select i1 %b.cap.need91, i64 %sum77, i64 %b.cap.grow90
  %b.cur.len293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load73, i32 0, i32 0
  %b.cur.len294 = load i64, ptr %b.cur.len293, align 8
  %b.cur.data295 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load73, i32 0, i32 1
  %b.cur.data296 = load ptr, ptr %b.cur.data295, align 8
  %b.new.buf.len297 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap92, i64 1)
  %sum98 = extractvalue { i64, i1 } %b.new.buf.len297, 0
  %ovf99 = extractvalue { i64, i1 } %b.new.buf.len297, 1
  br i1 %ovf99, label %str_overflow_abort101, label %b.new.buf.len2100

b.nogrow286:                                      ; preds = %b.rn.new.len79
  br label %b.grow_done87

b.grow_done87:                                    ; preds = %b.nogrow286, %b.new.buf.len2100
  %b.rn.data108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load73, i32 0, i32 1
  %b.rn.data109 = load ptr, ptr %b.rn.data108, align 8
  %b.rn.dst110 = getelementptr i8, ptr %b.rn.data109, i64 %b.rn.cur.len75
  br i1 true, label %br.b1.76, label %br.c2.76

b.new.buf.len2100:                                ; preds = %abort.dead102, %b.grow285
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 %sum98)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2104, ptr align 1 %b.cur.data296, i64 %b.cur.len294, i1 false)
  %b.grow2.nul105 = getelementptr i8, ptr %b.new.buf2104, i64 %b.cur.len294
  store i8 0, ptr %b.grow2.nul105, align 1
  %b.new.data2.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load73, i32 0, i32 1
  store ptr %b.new.buf2104, ptr %b.new.data2.gep106, align 8
  %b.new.cap2.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load73, i32 0, i32 2
  store i64 %b.new.cap92, ptr %b.new.cap2.gep107, align 8
  br label %b.grow_done87

str_overflow_abort101:                            ; preds = %b.grow285
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead102:                                    ; No predecessors!
  br label %b.new.buf.len2100

br.b1.76:                                         ; preds = %b.grow_done87
  store i8 58, ptr %b.rn.dst110, align 1
  br label %br.done.76

br.c2.76:                                         ; preds = %b.grow_done87
  br i1 true, label %br.b2.76, label %br.c3.76

br.b2.76:                                         ; preds = %br.c2.76
  store i8 -64, ptr %b.rn.dst110, align 1
  %br.dst1111 = getelementptr i8, ptr %b.rn.dst110, i64 1
  store i8 -70, ptr %br.dst1111, align 1
  br label %br.done.76

br.c3.76:                                         ; preds = %br.c2.76
  br i1 true, label %br.b3.76, label %br.b4.76

br.b3.76:                                         ; preds = %br.c3.76
  store i8 -32, ptr %b.rn.dst110, align 1
  %br.dst1.3112 = getelementptr i8, ptr %b.rn.dst110, i64 1
  store i8 -128, ptr %br.dst1.3112, align 1
  %br.dst2.3113 = getelementptr i8, ptr %b.rn.dst110, i64 2
  store i8 -70, ptr %br.dst2.3113, align 1
  br label %br.done.76

br.b4.76:                                         ; preds = %br.c3.76
  store i8 -16, ptr %b.rn.dst110, align 1
  %br.dst1.4114 = getelementptr i8, ptr %b.rn.dst110, i64 1
  store i8 -128, ptr %br.dst1.4114, align 1
  %br.dst2.4115 = getelementptr i8, ptr %b.rn.dst110, i64 2
  store i8 -128, ptr %br.dst2.4115, align 1
  %br.dst3.4116 = getelementptr i8, ptr %b.rn.dst110, i64 3
  store i8 -70, ptr %br.dst3.4116, align 1
  br label %br.done.76

br.done.76:                                       ; preds = %br.b4.76, %br.b3.76, %br.b2.76, %br.b1.76
  %br.nul117 = getelementptr i8, ptr %b.rn.data109, i64 %sum77
  store i8 0, ptr %br.nul117, align 1
  %b.len.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load73, i32 0, i32 0
  store i64 %sum77, ptr %b.len.gep118, align 8
  %var.load119 = load ptr, ptr %var.b, align 8
  %var.load120 = load i64, ptr %var.abs_off, align 8
  %modtmp = srem i64 %var.load120, 3600
  %divtmp121 = sdiv i64 %modtmp, 60
  call void @"time::#pad2"(ptr %var.load119, i64 %divtmp121)
  br label %choice.exit
}

define internal void @"time::#write_tz_compact_into"(ptr %0, i64 %1) #0 {
entry:
  %var.abs_off = alloca i64, align 8
  %var.utc_off = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.utc_off, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load = load i64, ptr %var.utc_off, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i32 [ 45, %choice.then ], [ 43, %choice.else ]
  %coerce.sext = sext i32 %choice.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 %br.width)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

b.rn.new.len2:                                    ; preds = %abort.dead, %choice.exit
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.rn.new.len2

b.grow2:                                          ; preds = %b.rn.new.len2
  %b.cap2 = mul i64 %b.cap3, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len24 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len28

b.nogrow2:                                        ; preds = %b.rn.new.len2
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len28
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data11 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data11, i64 %b.rn.cur.len1
  br i1 %br.cmp1, label %br.b1.77, label %br.c2.77

b.new.buf.len28:                                  ; preds = %abort.dead10, %b.grow2
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data25, i64 %b.cur.len24, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len24
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort9:                              ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %b.new.buf.len28

br.b1.77:                                         ; preds = %b.grow_done
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst, align 1
  br label %br.done.77

br.c2.77:                                         ; preds = %b.grow_done
  br i1 %br.cmp2, label %br.b2.77, label %br.c3.77

br.b2.77:                                         ; preds = %br.c2.77
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b2.1t, ptr %br.dst1, align 1
  br label %br.done.77

br.c3.77:                                         ; preds = %br.c2.77
  br i1 %br.cmp3, label %br.b3.77, label %br.b4.77

br.b3.77:                                         ; preds = %br.c3.77
  %br.sh12 = lshr i64 %coerce.sext, 12
  %br.b3.0 = or i64 %br.sh12, 224
  %br.b3.0t = trunc i64 %br.b3.0 to i8
  %br.sh6.3 = lshr i64 %coerce.sext, 6
  %br.m6.3 = and i64 %br.sh6.3, 63
  %br.b3.1 = or i64 %br.m6.3, 128
  %br.b3.1t = trunc i64 %br.b3.1 to i8
  %br.mend = and i64 %coerce.sext, 63
  %br.b3.2 = or i64 %br.mend, 128
  %br.b3.2t = trunc i64 %br.b3.2 to i8
  store i8 %br.b3.0t, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3, align 1
  br label %br.done.77

br.b4.77:                                         ; preds = %br.c3.77
  %br.sh18 = lshr i64 %coerce.sext, 18
  %br.b4.0 = or i64 %br.sh18, 240
  %br.b4.0t = trunc i64 %br.b4.0 to i8
  %br.sh12.4 = lshr i64 %coerce.sext, 12
  %br.m12.4 = and i64 %br.sh12.4, 63
  %br.b4.1 = or i64 %br.m12.4, 128
  %br.b4.1t = trunc i64 %br.b4.1 to i8
  %br.sh6.4 = lshr i64 %coerce.sext, 6
  %br.m6.4 = and i64 %br.sh6.4, 63
  %br.b4.2 = or i64 %br.m6.4, 128
  %br.b4.2t = trunc i64 %br.b4.2 to i8
  %br.mend4 = and i64 %coerce.sext, 63
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
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load12 = load i64, ptr %var.utc_off, align 8
  %cmptmp13 = icmp slt i64 %var.load12, 0
  br i1 %cmptmp13, label %choice.then14, label %choice.else15

choice.then14:                                    ; preds = %br.done.77
  %var.load17 = load i64, ptr %var.utc_off, align 8
  %negtmp = sub i64 0, %var.load17
  br label %choice.exit16

choice.else15:                                    ; preds = %br.done.77
  %var.load18 = load i64, ptr %var.utc_off, align 8
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else15, %choice.then14
  %choice.res19 = phi i64 [ %negtmp, %choice.then14 ], [ %var.load18, %choice.else15 ]
  store i64 %choice.res19, ptr %var.abs_off, align 8
  %var.load20 = load ptr, ptr %var.b, align 8
  %var.load21 = load i64, ptr %var.abs_off, align 8
  %divtmp = sdiv i64 %var.load21, 3600
  call void @"time::#pad2"(ptr %var.load20, i64 %divtmp)
  %var.load22 = load ptr, ptr %var.b, align 8
  %var.load23 = load i64, ptr %var.abs_off, align 8
  %modtmp = srem i64 %var.load23, 3600
  %divtmp24 = sdiv i64 %modtmp, 60
  call void @"time::#pad2"(ptr %var.load22, i64 %divtmp24)
  ret void
}

define internal void @"time::#write_date_basic_into"(ptr %0, ptr %1) #0 {
entry:
  %var.dt = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp slt i64 %fld.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

choice.exit:                                      ; preds = %br.done.78, %entry
  %var.load12 = load ptr, ptr %var.b, align 8
  %var.load13 = load ptr, ptr %var.dt, align 8
  %fld.gep14 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load13, i32 0, i32 0
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  call void @"time::#pad4"(ptr %var.load12, i64 %fld.load15)
  %var.load16 = load ptr, ptr %var.b, align 8
  %var.load17 = load ptr, ptr %var.dt, align 8
  %fld.gep18 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  call void @"time::#pad2"(ptr %var.load16, i64 %fld.load19)
  %var.load20 = load ptr, ptr %var.b, align 8
  %var.load21 = load ptr, ptr %var.dt, align 8
  %fld.gep22 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load21, i32 0, i32 2
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  call void @"time::#pad2"(ptr %var.load20, i64 %fld.load23)
  ret void

b.rn.new.len2:                                    ; preds = %abort.dead, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.rn.new.len2

b.grow2:                                          ; preds = %b.rn.new.len2
  %b.cap2 = mul i64 %b.cap3, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len24 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len28

b.nogrow2:                                        ; preds = %b.rn.new.len2
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len28
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data11 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data11, i64 %b.rn.cur.len1
  br i1 true, label %br.b1.78, label %br.c2.78

b.new.buf.len28:                                  ; preds = %abort.dead10, %b.grow2
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data25, i64 %b.cur.len24, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len24
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort9:                              ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %b.new.buf.len28

br.b1.78:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.78

br.c2.78:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.78, label %br.c3.78

br.b2.78:                                         ; preds = %br.c2.78
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.78

br.c3.78:                                         ; preds = %br.c2.78
  br i1 true, label %br.b3.78, label %br.b4.78

br.b3.78:                                         ; preds = %br.c3.78
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.78

br.b4.78:                                         ; preds = %br.c3.78
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.78

br.done.78:                                       ; preds = %br.b4.78, %br.b3.78, %br.b2.78, %br.b1.78
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit
}

define internal void @"time::#write_clock_basic_into"(ptr %0, ptr %1) #0 {
entry:
  %var.dt = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 3
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#pad2"(ptr %var.load, i64 %fld.load)
  %var.load2 = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  %fld.gep4 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load3, i32 0, i32 4
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  call void @"time::#pad2"(ptr %var.load2, i64 %fld.load5)
  %var.load6 = load ptr, ptr %var.b, align 8
  %var.load7 = load ptr, ptr %var.dt, align 8
  %fld.gep8 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 5
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  call void @"time::#pad2"(ptr %var.load6, i64 %fld.load9)
  ret void
}

define internal void @"time::#write_tz_basic_into"(ptr %0, i64 %1) #0 {
entry:
  %var.utc_off = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.utc_off, align 8
  %var.load = load i64, ptr %var.utc_off, align 8
  %cmptmp = icmp eq i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

choice.else:                                      ; preds = %entry
  %var.load12 = load ptr, ptr %var.b, align 8
  %var.load13 = load i64, ptr %var.utc_off, align 8
  call void @"time::#write_tz_compact_into"(ptr %var.load12, i64 %var.load13)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %br.done.79
  ret void

b.rn.new.len2:                                    ; preds = %abort.dead, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.rn.new.len2

b.grow2:                                          ; preds = %b.rn.new.len2
  %b.cap2 = mul i64 %b.cap3, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len24 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len28

b.nogrow2:                                        ; preds = %b.rn.new.len2
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len28
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data11 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data11, i64 %b.rn.cur.len1
  br i1 true, label %br.b1.79, label %br.c2.79

b.new.buf.len28:                                  ; preds = %abort.dead10, %b.grow2
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data25, i64 %b.cur.len24, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len24
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort9:                              ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %b.new.buf.len28

br.b1.79:                                         ; preds = %b.grow_done
  store i8 90, ptr %b.rn.dst, align 1
  br label %br.done.79

br.c2.79:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.79, label %br.c3.79

br.b2.79:                                         ; preds = %br.c2.79
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -102, ptr %br.dst1, align 1
  br label %br.done.79

br.c3.79:                                         ; preds = %br.c2.79
  br i1 true, label %br.b3.79, label %br.b4.79

br.b3.79:                                         ; preds = %br.c3.79
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -102, ptr %br.dst2.3, align 1
  br label %br.done.79

br.b4.79:                                         ; preds = %br.c3.79
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -102, ptr %br.dst3.4, align 1
  br label %br.done.79

br.done.79:                                       ; preds = %br.b4.79, %br.b3.79, %br.b2.79, %br.b1.79
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit
}

define { i64, ptr } @"time::format_dt_iso"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_into"(ptr %var.load, ptr %var.load3)
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len4 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len4, i64 1)
  %sum5 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf6 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf6, label %str_overflow_abort8, label %b.rn.new.len7

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.rn.new.len7:                                    ; preds = %abort.dead9, %b.buf.len1
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap10 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap10, %sum5
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort8:                              ; preds = %b.buf.len1
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %b.rn.new.len7

b.grow2:                                          ; preds = %b.rn.new.len7
  %b.cap2 = mul i64 %b.cap10, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum5
  %b.new.cap = select i1 %b.cap.need, i64 %sum5, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len211 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data212 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum13 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf14 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf14, label %str_overflow_abort16, label %b.new.buf.len215

b.nogrow2:                                        ; preds = %b.rn.new.len7
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len215
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data19 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data19, i64 %b.rn.cur.len4
  br i1 true, label %br.b1.80, label %br.c2.80

b.new.buf.len215:                                 ; preds = %abort.dead17, %b.grow2
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data212, i64 %b.cur.len211, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len211
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort16:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %b.new.buf.len215

br.b1.80:                                         ; preds = %b.grow_done
  store i8 84, ptr %b.rn.dst, align 1
  br label %br.done.80

br.c2.80:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.80, label %br.c3.80

br.b2.80:                                         ; preds = %br.c2.80
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -108, ptr %br.dst1, align 1
  br label %br.done.80

br.c3.80:                                         ; preds = %br.c2.80
  br i1 true, label %br.b3.80, label %br.b4.80

br.b3.80:                                         ; preds = %br.c3.80
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -108, ptr %br.dst2.3, align 1
  br label %br.done.80

br.b4.80:                                         ; preds = %br.c3.80
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -108, ptr %br.dst3.4, align 1
  br label %br.done.80

br.done.80:                                       ; preds = %br.b4.80, %br.b3.80, %br.b2.80, %br.b1.80
  %br.nul = getelementptr i8, ptr %b.rn.data19, i64 %sum5
  store i8 0, ptr %br.nul, align 1
  %b.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum5, ptr %b.len.gep20, align 8
  %var.load21 = load ptr, ptr %var.b, align 8
  %var.load22 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_into"(ptr %var.load21, ptr %var.load22)
  %var.load23 = load ptr, ptr %var.b, align 8
  %var.load24 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load24, i32 0, i32 9
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#write_tz_iso_into"(ptr %var.load23, i64 %fld.load)
  %var.load25 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  %b.freeze.len26 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  %b.freeze.data27 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.80
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data27, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data27, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data27, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len26, 1
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data27, i64 %b.freeze.len26, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len26
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.80
  %b.freeze.data29 = phi ptr [ %b.freeze.data27, %br.done.80 ], [ %b.freeze.data27, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len26, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data29, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"time::format_dt_iso_basic"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 24, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 24, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_basic_into"(ptr %var.load, ptr %var.load3)
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len4 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len4, i64 1)
  %sum5 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf6 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf6, label %str_overflow_abort8, label %b.rn.new.len7

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.rn.new.len7:                                    ; preds = %abort.dead9, %b.buf.len1
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap10 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap10, %sum5
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort8:                              ; preds = %b.buf.len1
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %b.rn.new.len7

b.grow2:                                          ; preds = %b.rn.new.len7
  %b.cap2 = mul i64 %b.cap10, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum5
  %b.new.cap = select i1 %b.cap.need, i64 %sum5, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len211 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data212 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum13 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf14 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf14, label %str_overflow_abort16, label %b.new.buf.len215

b.nogrow2:                                        ; preds = %b.rn.new.len7
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len215
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data19 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data19, i64 %b.rn.cur.len4
  br i1 true, label %br.b1.81, label %br.c2.81

b.new.buf.len215:                                 ; preds = %abort.dead17, %b.grow2
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data212, i64 %b.cur.len211, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len211
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort16:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %b.new.buf.len215

br.b1.81:                                         ; preds = %b.grow_done
  store i8 84, ptr %b.rn.dst, align 1
  br label %br.done.81

br.c2.81:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.81, label %br.c3.81

br.b2.81:                                         ; preds = %br.c2.81
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -108, ptr %br.dst1, align 1
  br label %br.done.81

br.c3.81:                                         ; preds = %br.c2.81
  br i1 true, label %br.b3.81, label %br.b4.81

br.b3.81:                                         ; preds = %br.c3.81
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -108, ptr %br.dst2.3, align 1
  br label %br.done.81

br.b4.81:                                         ; preds = %br.c3.81
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -108, ptr %br.dst3.4, align 1
  br label %br.done.81

br.done.81:                                       ; preds = %br.b4.81, %br.b3.81, %br.b2.81, %br.b1.81
  %br.nul = getelementptr i8, ptr %b.rn.data19, i64 %sum5
  store i8 0, ptr %br.nul, align 1
  %b.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum5, ptr %b.len.gep20, align 8
  %var.load21 = load ptr, ptr %var.b, align 8
  %var.load22 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_basic_into"(ptr %var.load21, ptr %var.load22)
  %var.load23 = load ptr, ptr %var.b, align 8
  %var.load24 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load24, i32 0, i32 9
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#write_tz_basic_into"(ptr %var.load23, i64 %fld.load)
  %var.load25 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  %b.freeze.len26 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  %b.freeze.data27 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.81
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data27, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data27, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data27, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len26, 1
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data27, i64 %b.freeze.len26, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len26
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.81
  %b.freeze.data29 = phi ptr [ %b.freeze.data27, %br.done.81 ], [ %b.freeze.data27, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len26, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data29, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"time::format_dt_date"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_into"(ptr %var.load, ptr %var.load3)
  %var.load4 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %b.freeze.len5 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %b.freeze.data6 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.freeze.check:                                   ; preds = %b.buf.len1
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data6, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data6, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data6, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len5, 1
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data6, i64 %b.freeze.len5, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len5
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len1
  %b.freeze.data8 = phi ptr [ %b.freeze.data6, %b.buf.len1 ], [ %b.freeze.data6, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len5, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data8, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"time::format_dt_clock"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_into"(ptr %var.load, ptr %var.load3)
  %var.load4 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %b.freeze.len5 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %b.freeze.data6 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.freeze.check:                                   ; preds = %b.buf.len1
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data6, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data6, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data6, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len5, 1
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data6, i64 %b.freeze.len5, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len5
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len1
  %b.freeze.data8 = phi ptr [ %b.freeze.data6, %b.buf.len1 ], [ %b.freeze.data6, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len5, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data8, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define i64 @"time::now"() #0 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i64 @"time::now_ms"() #0 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %multmp = mul i64 %fld.load, 1000
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %divtmp = sdiv i64 %fld.load6, 1000000
  %addtmp = add i64 %multmp, %divtmp
  ret i64 %addtmp
}

define i64 @"time::now_ns"() #0 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %multmp = mul i64 %fld.load, 1000000000
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %addtmp = add i64 %multmp, %fld.load6
  ret i64 %addtmp
}

define double @"time::now_f64"() #0 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cast.sitofp = sitofp i64 %fld.load to double
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %cast.sitofp7 = sitofp i64 %fld.load6 to double
  %fmultmp = fmul double %cast.sitofp7, 1.000000e-09
  %faddtmp = fadd double %cast.sitofp, %fmultmp
  ret double %faddtmp
}

define i64 @"time::mono_ns"() #0 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_monotonic"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %multmp = mul i64 %fld.load, 1000000000
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %addtmp = add i64 %multmp, %fld.load6
  ret i64 %addtmp
}

define i64 @"time::mono_ms"() #0 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_monotonic"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %multmp = mul i64 %fld.load, 1000
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %divtmp = sdiv i64 %fld.load6, 1000000
  %addtmp = add i64 %multmp, %divtmp
  ret i64 %addtmp
}

define double @"time::mono_f64"() #0 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_monotonic"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %cast.sitofp = sitofp i64 %fld.load to double
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %cast.sitofp7 = sitofp i64 %fld.load6 to double
  %fmultmp = fmul double %cast.sitofp7, 1.000000e-09
  %faddtmp = fadd double %cast.sitofp, %fmultmp
  ret double %faddtmp
}

define i64 @"time::elapsed_ms"(i64 %0) #0 {
entry:
  %var.start_ns = alloca i64, align 8
  store i64 %0, ptr %var.start_ns, align 8
  %call.res = call i64 @"time::mono_ns"()
  %var.load = load i64, ptr %var.start_ns, align 8
  %subtmp = sub i64 %call.res, %var.load
  %divtmp = sdiv i64 %subtmp, 1000000
  ret i64 %divtmp
}

define double @"time::elapsed_f64"(i64 %0) #0 {
entry:
  %var.start_ns = alloca i64, align 8
  store i64 %0, ptr %var.start_ns, align 8
  %call.res = call i64 @"time::mono_ns"()
  %var.load = load i64, ptr %var.start_ns, align 8
  %subtmp = sub i64 %call.res, %var.load
  %cast.sitofp = sitofp i64 %subtmp to double
  %fmultmp = fmul double %cast.sitofp, 1.000000e-09
  ret double %fmultmp
}

define void @"time::sleep_ns"(i64 %0) #0 {
entry:
  %var.ns = alloca i64, align 8
  store i64 %0, ptr %var.ns, align 8
  %var.load = load i64, ptr %var.ns, align 8
  call void @"time::sleep_ns_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(i64 %var.load)
  ret void
}

define internal void @"time::sleep_ns_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(i64 %0) #0 {
entry:
  %"var.rem'" = alloca ptr, align 8
  %"var.req'" = alloca ptr, align 8
  %var.ns = alloca i64, align 8
  store i64 %0, ptr %var.ns, align 8
  %var.load = load i64, ptr %var.ns, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.ns, align 8
  %divtmp = sdiv i64 %var.load1, 1000000000
  %var.load2 = load i64, ptr %var.ns, align 8
  %modtmp = srem i64 %var.load2, 1000000000
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 %divtmp, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 %modtmp, ptr %rec.fld3, align 8
  store ptr %rec.alloc, ptr %"var.req'", align 8
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld6 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc5, i32 0, i32 0
  store i64 0, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc5, i32 0, i32 1
  store i64 0, ptr %rec.fld7, align 8
  store ptr %rec.alloc5, ptr %"var.rem'", align 8
  %var.load8 = load ptr, ptr %"var.req'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load8 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load9 = load ptr, ptr %"var.rem'", align 8
  %addr.ffi.int10 = ptrtoint ptr %var.load9 to i64
  %addr.ffi.masked11 = and i64 %addr.ffi.int10, 281474976710655
  %addr.ffi.clean12 = inttoptr i64 %addr.ffi.masked11 to ptr
  %call.res = call i32 @nanosleep(ptr %addr.ffi.clean, ptr %addr.ffi.clean12)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  ret void
}

define void @"time::sleep_ms"(i64 %0) #0 {
entry:
  %var.ms = alloca i64, align 8
  store i64 %0, ptr %var.ms, align 8
  %var.load = load i64, ptr %var.ms, align 8
  %multmp = mul i64 %var.load, 1000000
  call void @"time::sleep_ns"(i64 %multmp)
  ret void
}

define void @"time::sleep"(double %0) #0 {
entry:
  %var.sec = alloca double, align 8
  store double %0, ptr %var.sec, align 8
  %var.load = load double, ptr %var.sec, align 8
  %fcmptmp = fcmp ogt double %var.load, 0.000000e+00
  br i1 %fcmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load double, ptr %var.sec, align 8
  %fmultmp = fmul double %var.load1, 1.000000e+09
  %cast.fptosi = fptosi double %fmultmp to i64
  call void @"time::sleep_ns"(i64 %cast.fptosi)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  ret void
}

define i1 @"time::is_leap_year"(i64 %0) #0 {
entry:
  %var.year = alloca i64, align 8
  store i64 %0, ptr %var.year, align 8
  %var.load = load i64, ptr %var.year, align 8
  %modtmp = srem i64 %var.load, 4
  %cmptmp = icmp eq i64 %modtmp, 0
  br i1 %cmptmp, label %and.82.then, label %and.82.else

and.82.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.year, align 8
  %modtmp2 = srem i64 %var.load1, 100
  %cmptmp3 = icmp ne i64 %modtmp2, 0
  br i1 %cmptmp3, label %or.83.then, label %or.83.else

and.82.else:                                      ; preds = %entry
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %or.83.exit
  %and.82.phi = phi i1 [ %or.83.phi, %or.83.exit ], [ %cmptmp, %and.82.else ]
  ret i1 %and.82.phi

or.83.then:                                       ; preds = %and.82.then
  br label %or.83.exit

or.83.else:                                       ; preds = %and.82.then
  %var.load4 = load i64, ptr %var.year, align 8
  %modtmp5 = srem i64 %var.load4, 400
  %cmptmp6 = icmp eq i64 %modtmp5, 0
  br label %or.83.exit

or.83.exit:                                       ; preds = %or.83.else, %or.83.then
  %or.83.phi = phi i1 [ %cmptmp3, %or.83.then ], [ %cmptmp6, %or.83.else ]
  br label %and.82.exit
}

define i64 @"time::days_in_month"(i64 %0, i64 %1) #0 {
entry:
  %var.month = alloca i64, align 8
  %var.year = alloca i64, align 8
  store i64 %0, ptr %var.year, align 8
  store i64 %1, ptr %var.month, align 8
  %var.load = load i64, ptr %var.month, align 8
  %val.match = icmp eq i64 %var.load, 2
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next4, %choice.case3, %choice.exit2
  %choice.res11 = phi i64 [ %choice.res, %choice.exit2 ], [ 30, %choice.case3 ], [ 31, %choice.next4 ]
  ret i64 %choice.res11

choice.case:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.year, align 8
  %call.res = call i1 @"time::is_leap_year"(i64 %var.load1)
  br i1 %call.res, label %choice.then, label %choice.else

choice.next:                                      ; preds = %entry
  %val.match5 = icmp eq i64 %var.load, 4
  %val.match6 = icmp eq i64 %var.load, 6
  %case.or = or i1 %val.match5, %val.match6
  %val.match7 = icmp eq i64 %var.load, 9
  %case.or8 = or i1 %case.or, %val.match7
  %val.match9 = icmp eq i64 %var.load, 11
  %case.or10 = or i1 %case.or8, %val.match9
  br i1 %case.or10, label %choice.case3, label %choice.next4

choice.then:                                      ; preds = %choice.case
  br label %choice.exit2

choice.else:                                      ; preds = %choice.case
  br label %choice.exit2

choice.exit2:                                     ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 29, %choice.then ], [ 28, %choice.else ]
  br label %choice.exit

choice.case3:                                     ; preds = %choice.next
  br label %choice.exit

choice.next4:                                     ; preds = %choice.next
  br label %choice.exit
}

define ptr @"time::utc_from_epoch"(i64 %0, i64 %1) #0 {
entry:
  %var.yday = alloca i64, align 8
  %var.wday = alloca i64, align 8
  %var.mday = alloca i64, align 8
  %var.mon = alloca i64, align 8
  %var.year = alloca i64, align 8
  %var._dp_1 = alloca ptr, align 8
  %var.ss = alloca i64, align 8
  %var.mm = alloca i64, align 8
  %var.hh = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var.days = alloca i64, align 8
  %var.nsec = alloca i64, align 8
  %var.sec = alloca i64, align 8
  store i64 %0, ptr %var.sec, align 8
  store i64 %1, ptr %var.nsec, align 8
  %var.load = load i64, ptr %var.sec, align 8
  %call.res = call i64 @"time::#floor_div"(i64 %var.load, i64 86400)
  store i64 %call.res, ptr %var.days, align 8
  %var.load1 = load i64, ptr %var.sec, align 8
  %call.res2 = call i64 @"time::#floor_mod"(i64 %var.load1, i64 86400)
  store i64 %call.res2, ptr %var.rem, align 8
  %var.load3 = load i64, ptr %var.rem, align 8
  %divtmp = sdiv i64 %var.load3, 3600
  store i64 %divtmp, ptr %var.hh, align 8
  %var.load4 = load i64, ptr %var.rem, align 8
  %modtmp = srem i64 %var.load4, 3600
  %divtmp5 = sdiv i64 %modtmp, 60
  store i64 %divtmp5, ptr %var.mm, align 8
  %var.load6 = load i64, ptr %var.rem, align 8
  %modtmp7 = srem i64 %var.load6, 60
  store i64 %modtmp7, ptr %var.ss, align 8
  %var.load8 = load i64, ptr %var.days, align 8
  %call.res9 = call ptr @"time::#civil_from_days"(i64 %var.load8)
  store ptr %call.res9, ptr %var._dp_1, align 8
  %var.load10 = load ptr, ptr %var._dp_1, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load10, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.year, align 8
  %var.load11 = load ptr, ptr %var._dp_1, align 8
  %fld.gep12 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load11, i32 0, i32 1
  %fld.load13 = load i64, ptr %fld.gep12, align 8
  store i64 %fld.load13, ptr %var.mon, align 8
  %var.load14 = load ptr, ptr %var._dp_1, align 8
  %fld.gep15 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load14, i32 0, i32 2
  %fld.load16 = load i64, ptr %fld.gep15, align 8
  store i64 %fld.load16, ptr %var.mday, align 8
  %var.load17 = load ptr, ptr %var._dp_1, align 8
  %fld.gep18 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load17, i32 0, i32 3
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  store i64 %fld.load19, ptr %var.wday, align 8
  %var.load20 = load ptr, ptr %var._dp_1, align 8
  %fld.gep21 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load20, i32 0, i32 4
  %fld.load22 = load i64, ptr %fld.gep21, align 8
  store i64 %fld.load22, ptr %var.yday, align 8
  %var.load23 = load i64, ptr %var.year, align 8
  %var.load24 = load i64, ptr %var.mon, align 8
  %var.load25 = load i64, ptr %var.mday, align 8
  %var.load26 = load i64, ptr %var.hh, align 8
  %var.load27 = load i64, ptr %var.mm, align 8
  %var.load28 = load i64, ptr %var.ss, align 8
  %var.load29 = load i64, ptr %var.nsec, align 8
  %var.load30 = load i64, ptr %var.wday, align 8
  %var.load31 = load i64, ptr %var.yday, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load23, ptr %rec.fld, align 8
  %rec.fld32 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load24, ptr %rec.fld32, align 8
  %rec.fld33 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load25, ptr %rec.fld33, align 8
  %rec.fld34 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load26, ptr %rec.fld34, align 8
  %rec.fld35 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load27, ptr %rec.fld35, align 8
  %rec.fld36 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load28, ptr %rec.fld36, align 8
  %rec.fld37 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 %var.load29, ptr %rec.fld37, align 8
  %rec.fld38 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %var.load30, ptr %rec.fld38, align 8
  %rec.fld39 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store i64 %var.load31, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld40, align 8
  ret ptr %rec.alloc
}

define i64 @"time::epoch"(ptr %0) #0 {
entry:
  %var.days = alloca i64, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.dt, align 8
  %fld.gep2 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %var.load4 = load ptr, ptr %var.dt, align 8
  %fld.gep5 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 2
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %call.res = call i64 @"time::#days_from_civil"(i64 %fld.load, i64 %fld.load3, i64 %fld.load6)
  store i64 %call.res, ptr %var.days, align 8
  %var.load7 = load i64, ptr %var.days, align 8
  %multmp = mul i64 %var.load7, 86400
  %var.load8 = load ptr, ptr %var.dt, align 8
  %fld.gep9 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load8, i32 0, i32 3
  %fld.load10 = load i64, ptr %fld.gep9, align 8
  %multmp11 = mul i64 %fld.load10, 3600
  %addtmp = add i64 %multmp, %multmp11
  %var.load12 = load ptr, ptr %var.dt, align 8
  %fld.gep13 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load12, i32 0, i32 4
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  %multmp15 = mul i64 %fld.load14, 60
  %addtmp16 = add i64 %addtmp, %multmp15
  %var.load17 = load ptr, ptr %var.dt, align 8
  %fld.gep18 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load17, i32 0, i32 5
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %addtmp20 = add i64 %addtmp16, %fld.load19
  %var.load21 = load ptr, ptr %var.dt, align 8
  %fld.gep22 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load21, i32 0, i32 9
  %fld.load23 = load i64, ptr %fld.gep22, align 8
  %subtmp = sub i64 %addtmp20, %fld.load23
  ret i64 %subtmp
}

define ptr @"time::datetime_utc"(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
entry:
  %var.yday = alloca i64, align 8
  %var.wday = alloca i64, align 8
  %var._dy = alloca i64, align 8
  %var._mo = alloca i64, align 8
  %var._yr = alloca i64, align 8
  %var._dp_2 = alloca ptr, align 8
  %var.z = alloca i64, align 8
  %var.sec = alloca i64, align 8
  %var.min = alloca i64, align 8
  %var.hour = alloca i64, align 8
  %var.day = alloca i64, align 8
  %var.month = alloca i64, align 8
  %var.year = alloca i64, align 8
  store i64 %0, ptr %var.year, align 8
  store i64 %1, ptr %var.month, align 8
  store i64 %2, ptr %var.day, align 8
  store i64 %3, ptr %var.hour, align 8
  store i64 %4, ptr %var.min, align 8
  store i64 %5, ptr %var.sec, align 8
  %var.load = load i64, ptr %var.year, align 8
  %var.load1 = load i64, ptr %var.month, align 8
  %var.load2 = load i64, ptr %var.day, align 8
  %call.res = call i64 @"time::#days_from_civil"(i64 %var.load, i64 %var.load1, i64 %var.load2)
  store i64 %call.res, ptr %var.z, align 8
  %var.load3 = load i64, ptr %var.z, align 8
  %call.res4 = call ptr @"time::#civil_from_days"(i64 %var.load3)
  store ptr %call.res4, ptr %var._dp_2, align 8
  %var.load5 = load ptr, ptr %var._dp_2, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var._yr, align 8
  %var.load6 = load ptr, ptr %var._dp_2, align 8
  %fld.gep7 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load6, i32 0, i32 1
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  store i64 %fld.load8, ptr %var._mo, align 8
  %var.load9 = load ptr, ptr %var._dp_2, align 8
  %fld.gep10 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load9, i32 0, i32 2
  %fld.load11 = load i64, ptr %fld.gep10, align 8
  store i64 %fld.load11, ptr %var._dy, align 8
  %var.load12 = load ptr, ptr %var._dp_2, align 8
  %fld.gep13 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load12, i32 0, i32 3
  %fld.load14 = load i64, ptr %fld.gep13, align 8
  store i64 %fld.load14, ptr %var.wday, align 8
  %var.load15 = load ptr, ptr %var._dp_2, align 8
  %fld.gep16 = getelementptr inbounds { i64, i64, i64, i64, i64 }, ptr %var.load15, i32 0, i32 4
  %fld.load17 = load i64, ptr %fld.gep16, align 8
  store i64 %fld.load17, ptr %var.yday, align 8
  %var.load18 = load i64, ptr %var.year, align 8
  %var.load19 = load i64, ptr %var.month, align 8
  %var.load20 = load i64, ptr %var.day, align 8
  %var.load21 = load i64, ptr %var.hour, align 8
  %var.load22 = load i64, ptr %var.min, align 8
  %var.load23 = load i64, ptr %var.sec, align 8
  %var.load24 = load i64, ptr %var.wday, align 8
  %var.load25 = load i64, ptr %var.yday, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load18, ptr %rec.fld, align 8
  %rec.fld26 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load19, ptr %rec.fld26, align 8
  %rec.fld27 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load20, ptr %rec.fld27, align 8
  %rec.fld28 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load21, ptr %rec.fld28, align 8
  %rec.fld29 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load22, ptr %rec.fld29, align 8
  %rec.fld30 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load23, ptr %rec.fld30, align 8
  %rec.fld31 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 0, ptr %rec.fld31, align 8
  %rec.fld32 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 %var.load24, ptr %rec.fld32, align 8
  %rec.fld33 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store i64 %var.load25, ptr %rec.fld33, align 8
  %rec.fld34 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld34, align 8
  ret ptr %rec.alloc
}

define ptr @"time::local_from_sec"(i64 %0, i64 %1) #0 {
entry:
  %var.nsec = alloca i64, align 8
  %var.sec = alloca i64, align 8
  store i64 %0, ptr %var.sec, align 8
  store i64 %1, ptr %var.nsec, align 8
  %var.load = load i64, ptr %var.sec, align 8
  %var.load1 = load i64, ptr %var.nsec, align 8
  %call.res = call ptr @"time::local_from_sec_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(i64 %var.load, i64 %var.load1)
  ret ptr %call.res
}

define internal ptr @"time::local_from_sec_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(i64 %0, i64 %1) #0 {
entry:
  %var.res = alloca ptr, align 8
  %"var.tm'" = alloca ptr, align 8
  %"var.t_val'" = alloca i64, align 8
  %var.nsec = alloca i64, align 8
  %var.sec = alloca i64, align 8
  store i64 %0, ptr %var.sec, align 8
  store i64 %1, ptr %var.nsec, align 8
  %var.load = load i64, ptr %var.sec, align 8
  store i64 %var.load, ptr %"var.t_val'", align 8
  %var.load1 = load ptr, ptr @"var.sys::addr_null", align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 0
  store i32 0, ptr %rec.fld, align 4
  %rec.fld2 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 1
  store i32 0, ptr %rec.fld2, align 4
  %rec.fld3 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 2
  store i32 0, ptr %rec.fld3, align 4
  %rec.fld4 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 3
  store i32 0, ptr %rec.fld4, align 4
  %rec.fld5 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 4
  store i32 0, ptr %rec.fld5, align 4
  %rec.fld6 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 5
  store i32 0, ptr %rec.fld6, align 4
  %rec.fld7 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 6
  store i32 0, ptr %rec.fld7, align 4
  %rec.fld8 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 7
  store i32 0, ptr %rec.fld8, align 4
  %rec.fld9 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 8
  store i32 0, ptr %rec.fld9, align 4
  %rec.fld10 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 9
  store i32 0, ptr %rec.fld10, align 4
  %rec.fld11 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 11
  store ptr %var.load1, ptr %rec.fld12, align 8
  store ptr %rec.alloc, ptr %"var.tm'", align 8
  %var.load13 = load i64, ptr %"var.t_val'", align 8
  %addr.ffi.int = ptrtoint ptr %"var.t_val'" to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load14 = load ptr, ptr %"var.tm'", align 8
  %addr.ffi.int15 = ptrtoint ptr %var.load14 to i64
  %addr.ffi.masked16 = and i64 %addr.ffi.int15, 281474976710655
  %addr.ffi.clean17 = inttoptr i64 %addr.ffi.masked16 to ptr
  %call.res = call ptr @localtime_r(ptr %addr.ffi.clean, ptr %addr.ffi.clean17)
  store ptr %call.res, ptr %var.res, align 8
  %var.load18 = load ptr, ptr %var.res, align 8
  %var.load19 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load18 to i64
  %ptr.int.r = ptrtoint ptr %var.load19 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load20 = load i64, ptr %var.sec, align 8
  %var.load21 = load i64, ptr %var.nsec, align 8
  %call.res22 = call ptr @"time::utc_from_epoch"(i64 %var.load20, i64 %var.load21)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load23 = load ptr, ptr %"var.tm'", align 8
  %var.load24 = load i64, ptr %var.nsec, align 8
  %call.res25 = call ptr @"time::#tm_to_datetime"(ptr %var.load23, i64 %var.load24)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res22, %choice.then ], [ %call.res25, %choice.else ]
  ret ptr %choice.res
}

define ptr @"time::local_now_dt"() #0 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %call.res7 = call ptr @"time::local_from_sec"(i64 %fld.load, i64 %fld.load6)
  ret ptr %call.res7
}

define ptr @"time::utc_now_dt"() #0 {
entry:
  %"var.ts'" = alloca ptr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.ts'", align 8
  %call.res = call i32 @"time::clock_realtime"()
  %var.load = load ptr, ptr %"var.ts'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res2 = call i32 @clock_gettime(i32 %call.res, ptr %addr.ffi.clean)
  %var.load3 = load ptr, ptr %"var.ts'", align 8
  %fld.gep = getelementptr inbounds <{ i64, i64 }>, ptr %var.load3, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load4 = load ptr, ptr %"var.ts'", align 8
  %fld.gep5 = getelementptr inbounds <{ i64, i64 }>, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %call.res7 = call ptr @"time::utc_from_epoch"(i64 %fld.load, i64 %fld.load6)
  ret ptr %call.res7
}

define { i64, ptr } @"time::format_dt_pattern"(ptr %0, ptr %1) #0 {
entry:
  %var.h12 = alloca i64, align 8
  %var.spec = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.84 = alloca i64, align 8
  %loop.idx.84 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.dt = alloca ptr, align 8
  %var.fmt = alloca ptr, align 8
  store ptr %0, ptr %var.fmt, align 8
  store ptr %1, ptr %var.dt, align 8
  %var.load = load ptr, ptr %var.fmt, align 8
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
  %addtmp = add i64 %var.load3, 32
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.buf.len4:                                       ; preds = %abort.dead, %str_ok
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.84, align 8
  br label %loop.header.84

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len4

loop.header.84:                                   ; preds = %loop.latch.84, %b.buf.len4
  %counter.load = load i64, ptr %loop.idx.84, align 8
  br label %loop.body.84

loop.body.84:                                     ; preds = %loop.header.84
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.84, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load6 = load i64, ptr %"var.i'", align 8
  %var.load7 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sge i64 %var.load6, %var.load7
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.84:                                 ; No predecessors!
  br label %loop.exit.84

loop.latch.84:                                    ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.84, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.exit.84:                                     ; preds = %choice.then, %loop.exit.nat.84
  %var.load1031 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1031, i32 0, i32 0
  %b.freeze.len1032 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1031, i32 0, i32 1
  %b.freeze.data1033 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.84
  br label %loop.exit.84

choice.exit:                                      ; preds = %loop.body.84
  %var.load8 = load ptr, ptr %var.fmt, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %var.load12 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load12, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load12, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead13, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load14 = load i64, ptr %var.ch, align 8
  %cmptmp15 = icmp eq i64 %var.load14, 37
  br i1 %cmptmp15, label %and.85.then, label %and.85.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %idx_ok

and.85.then:                                      ; preds = %idx_ok
  %var.load16 = load i64, ptr %"var.i'", align 8
  %addtmp17 = add i64 %var.load16, 1
  %var.load18 = load i64, ptr %var.len, align 8
  %cmptmp19 = icmp slt i64 %addtmp17, %var.load18
  br label %and.85.exit

and.85.else:                                      ; preds = %idx_ok
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %and.85.then
  %and.85.phi = phi i1 [ %cmptmp19, %and.85.then ], [ %cmptmp15, %and.85.else ]
  br i1 %and.85.phi, label %choice.then20, label %choice.else

choice.then20:                                    ; preds = %and.85.exit
  %var.load22 = load ptr, ptr %var.fmt, align 8
  %s.read.len23 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len23, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %s.read.data26 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data27 = load ptr, ptr %s.read.data26, align 8
  %var.load28 = load i64, ptr %"var.i'", align 8
  %addtmp29 = add i64 %var.load28, 1
  %idx.neg30 = icmp slt i64 %addtmp29, 0
  br i1 %idx.neg30, label %idx_oob33, label %idx_big_check31

choice.else:                                      ; preds = %and.85.exit
  %b.load988 = load ptr, ptr %var.b, align 8
  %var.load989 = load i64, ptr %var.ch, align 8
  %b.b.ge0990 = icmp sge i64 %var.load989, 0
  %b.b.le255991 = icmp sle i64 %var.load989, 255
  %b.byte.range992 = and i1 %b.b.ge0990, %b.b.le255991
  br i1 %b.byte.range992, label %b.byte_ok993, label %b.byte_err994

choice.exit21:                                    ; preds = %b.push_done1006, %choice.exit40
  br label %loop.latch.84

idx_big_check31:                                  ; preds = %choice.then20
  %idx.big34 = icmp sge i64 %addtmp29, %s.read.len25
  br i1 %idx.big34, label %idx_oob33, label %idx_ok32

idx_ok32:                                         ; preds = %abort.dead35, %idx_big_check31
  %s.byte.gep36 = getelementptr i8, ptr %s.read.data27, i64 %addtmp29
  %s.byte37 = load i8, ptr %s.byte.gep36, align 1
  %s.byte.val38 = zext i8 %s.byte37 to i64
  store i64 %s.byte.val38, ptr %var.spec, align 8
  %var.load39 = load i64, ptr %var.spec, align 8
  %val.match = icmp eq i64 %var.load39, 89
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob33:                                        ; preds = %idx_big_check31, %choice.then20
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %idx_ok32

choice.exit40:                                    ; preds = %b.push_done963, %br.done.90, %br.done.89, %br.done.88, %b.grow_done729, %choice.exit664, %choice.case648, %b.push_done625, %b.push_done570, %choice.case539, %b.grow_done513, %b.grow_done459, %b.grow_done404, %b.grow_done350, %br.done.87, %choice.case262, %choice.case257, %b.grow_done231, %b.grow_done178, %choice.case145, %choice.case138, %choice.exit136, %choice.case117, %choice.exit73, %choice.case57, %choice.case50, %choice.case43, %choice.case
  %var.load986 = load i64, ptr %"var.i'", align 8
  %addtmp987 = add i64 %var.load986, 2
  store i64 %addtmp987, ptr %"var.i'", align 8
  br label %choice.exit21

choice.case:                                      ; preds = %idx_ok32
  %var.load41 = load ptr, ptr %var.b, align 8
  %var.load42 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load42, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#pad4"(ptr %var.load41, i64 %fld.load)
  br label %choice.exit40

choice.next:                                      ; preds = %idx_ok32
  %val.match45 = icmp eq i64 %var.load39, 121
  br i1 %val.match45, label %choice.case43, label %choice.next44

choice.case43:                                    ; preds = %choice.next
  %var.load46 = load ptr, ptr %var.b, align 8
  %var.load47 = load ptr, ptr %var.dt, align 8
  %fld.gep48 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load47, i32 0, i32 0
  %fld.load49 = load i64, ptr %fld.gep48, align 8
  %modtmp = srem i64 %fld.load49, 100
  call void @"time::#pad2"(ptr %var.load46, i64 %modtmp)
  br label %choice.exit40

choice.next44:                                    ; preds = %choice.next
  %val.match52 = icmp eq i64 %var.load39, 109
  br i1 %val.match52, label %choice.case50, label %choice.next51

choice.case50:                                    ; preds = %choice.next44
  %var.load53 = load ptr, ptr %var.b, align 8
  %var.load54 = load ptr, ptr %var.dt, align 8
  %fld.gep55 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load54, i32 0, i32 1
  %fld.load56 = load i64, ptr %fld.gep55, align 8
  call void @"time::#pad2"(ptr %var.load53, i64 %fld.load56)
  br label %choice.exit40

choice.next51:                                    ; preds = %choice.next44
  %val.match59 = icmp eq i64 %var.load39, 100
  br i1 %val.match59, label %choice.case57, label %choice.next58

choice.case57:                                    ; preds = %choice.next51
  %var.load60 = load ptr, ptr %var.b, align 8
  %var.load61 = load ptr, ptr %var.dt, align 8
  %fld.gep62 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load61, i32 0, i32 2
  %fld.load63 = load i64, ptr %fld.gep62, align 8
  call void @"time::#pad2"(ptr %var.load60, i64 %fld.load63)
  br label %choice.exit40

choice.next58:                                    ; preds = %choice.next51
  %val.match66 = icmp eq i64 %var.load39, 101
  br i1 %val.match66, label %choice.case64, label %choice.next65

choice.case64:                                    ; preds = %choice.next58
  %var.load67 = load ptr, ptr %var.dt, align 8
  %fld.gep68 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load67, i32 0, i32 2
  %fld.load69 = load i64, ptr %fld.gep68, align 8
  %cmptmp70 = icmp slt i64 %fld.load69, 10
  br i1 %cmptmp70, label %choice.then71, label %choice.else72

choice.next65:                                    ; preds = %choice.next58
  %val.match119 = icmp eq i64 %var.load39, 72
  br i1 %val.match119, label %choice.case117, label %choice.next118

choice.then71:                                    ; preds = %choice.case64
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len74 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len74, i64 1)
  %sum75 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf76 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf76, label %str_overflow_abort78, label %b.rn.new.len77

choice.else72:                                    ; preds = %choice.case64
  %var.load113 = load ptr, ptr %var.b, align 8
  %var.load114 = load ptr, ptr %var.dt, align 8
  %fld.gep115 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load114, i32 0, i32 2
  %fld.load116 = load i64, ptr %fld.gep115, align 8
  call void @"time::#pad2"(ptr %var.load113, i64 %fld.load116)
  br label %choice.exit73

choice.exit73:                                    ; preds = %choice.else72, %b.push_done
  br label %choice.exit40

b.rn.new.len77:                                   ; preds = %abort.dead79, %choice.then71
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap80 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap80, %sum75
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort78:                             ; preds = %choice.then71
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead79:                                     ; No predecessors!
  br label %b.rn.new.len77

b.grow2:                                          ; preds = %b.rn.new.len77
  %b.cap2 = mul i64 %b.cap80, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum75
  %b.new.cap = select i1 %b.cap.need, i64 %sum75, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len281 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data282 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum83 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf84 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf84, label %str_overflow_abort86, label %b.new.buf.len285

b.nogrow2:                                        ; preds = %b.rn.new.len77
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len285
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data89 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data89, i64 %b.rn.cur.len74
  br i1 true, label %br.b1.86, label %br.c2.86

b.new.buf.len285:                                 ; preds = %abort.dead87, %b.grow2
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data282, i64 %b.cur.len281, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len281
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort86:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead87:                                     ; No predecessors!
  br label %b.new.buf.len285

br.b1.86:                                         ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.86

br.c2.86:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.86, label %br.c3.86

br.b2.86:                                         ; preds = %br.c2.86
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.86

br.c3.86:                                         ; preds = %br.c2.86
  br i1 true, label %br.b3.86, label %br.b4.86

br.b3.86:                                         ; preds = %br.c3.86
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.86

br.b4.86:                                         ; preds = %br.c3.86
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.86

br.done.86:                                       ; preds = %br.b4.86, %br.b3.86, %br.b2.86, %br.b1.86
  %br.nul = getelementptr i8, ptr %b.rn.data89, i64 %sum75
  store i8 0, ptr %br.nul, align 1
  %b.len.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum75, ptr %b.len.gep90, align 8
  %b.load91 = load ptr, ptr %var.b, align 8
  %var.load92 = load ptr, ptr %var.dt, align 8
  %fld.gep93 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load92, i32 0, i32 2
  %fld.load94 = load i64, ptr %fld.gep93, align 8
  %addtmp95 = add i64 48, %fld.load94
  %b.b.ge0 = icmp sge i64 %addtmp95, 0
  %b.b.le255 = icmp sle i64 %addtmp95, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %abort.dead96, %br.done.86
  %b.byte.i8 = trunc i64 %addtmp95 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.len97 = load i64, ptr %b.len, align 8
  %b.cap98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  %b.cap99 = load i64, ptr %b.cap98, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.data100 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len97, %b.cap99
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %br.done.86
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2101 = mul i64 %b.cap99, 2
  %b.cap.small102 = icmp slt i64 %b.cap2101, 16
  %b.new.cap103 = select i1 %b.cap.small102, i64 16, i64 %b.cap2101
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap103, i64 1)
  %sum104 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf105 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.new.buf.len106

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len106
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.cur.data110 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.cur.len111 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data110, i64 %b.cur.len111
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len111, 1
  %b.nul = getelementptr i8, ptr %b.cur.data110, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep112, align 8
  br label %choice.exit73

b.new.buf.len106:                                 ; preds = %abort.dead108, %b.grow
  %arena.cur109 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 %sum104)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data100, i64 %b.len97, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len97
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  store i64 %b.new.cap103, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort107:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead108:                                    ; No predecessors!
  br label %b.new.buf.len106

choice.case117:                                   ; preds = %choice.next65
  %var.load120 = load ptr, ptr %var.b, align 8
  %var.load121 = load ptr, ptr %var.dt, align 8
  %fld.gep122 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load121, i32 0, i32 3
  %fld.load123 = load i64, ptr %fld.gep122, align 8
  call void @"time::#pad2"(ptr %var.load120, i64 %fld.load123)
  br label %choice.exit40

choice.next118:                                   ; preds = %choice.next65
  %val.match126 = icmp eq i64 %var.load39, 73
  br i1 %val.match126, label %choice.case124, label %choice.next125

choice.case124:                                   ; preds = %choice.next118
  %var.load127 = load ptr, ptr %var.dt, align 8
  %fld.gep128 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load127, i32 0, i32 3
  %fld.load129 = load i64, ptr %fld.gep128, align 8
  %modtmp130 = srem i64 %fld.load129, 12
  store i64 %modtmp130, ptr %var.h12, align 8
  %var.load131 = load ptr, ptr %var.b, align 8
  %var.load132 = load i64, ptr %var.h12, align 8
  %cmptmp133 = icmp eq i64 %var.load132, 0
  br i1 %cmptmp133, label %choice.then134, label %choice.else135

choice.next125:                                   ; preds = %choice.next118
  %val.match140 = icmp eq i64 %var.load39, 77
  br i1 %val.match140, label %choice.case138, label %choice.next139

choice.then134:                                   ; preds = %choice.case124
  br label %choice.exit136

choice.else135:                                   ; preds = %choice.case124
  %var.load137 = load i64, ptr %var.h12, align 8
  br label %choice.exit136

choice.exit136:                                   ; preds = %choice.else135, %choice.then134
  %choice.res = phi i64 [ 12, %choice.then134 ], [ %var.load137, %choice.else135 ]
  call void @"time::#pad2"(ptr %var.load131, i64 %choice.res)
  br label %choice.exit40

choice.case138:                                   ; preds = %choice.next125
  %var.load141 = load ptr, ptr %var.b, align 8
  %var.load142 = load ptr, ptr %var.dt, align 8
  %fld.gep143 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load142, i32 0, i32 4
  %fld.load144 = load i64, ptr %fld.gep143, align 8
  call void @"time::#pad2"(ptr %var.load141, i64 %fld.load144)
  br label %choice.exit40

choice.next139:                                   ; preds = %choice.next125
  %val.match147 = icmp eq i64 %var.load39, 83
  br i1 %val.match147, label %choice.case145, label %choice.next146

choice.case145:                                   ; preds = %choice.next139
  %var.load148 = load ptr, ptr %var.b, align 8
  %var.load149 = load ptr, ptr %var.dt, align 8
  %fld.gep150 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load149, i32 0, i32 5
  %fld.load151 = load i64, ptr %fld.gep150, align 8
  call void @"time::#pad2"(ptr %var.load148, i64 %fld.load151)
  br label %choice.exit40

choice.next146:                                   ; preds = %choice.next139
  %val.match154 = icmp eq i64 %var.load39, 112
  br i1 %val.match154, label %choice.case152, label %choice.next153

choice.case152:                                   ; preds = %choice.next146
  %b.load155 = load ptr, ptr %var.b, align 8
  %var.load156 = load ptr, ptr %var.dt, align 8
  %fld.gep157 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load156, i32 0, i32 3
  %fld.load158 = load i64, ptr %fld.gep157, align 8
  %cmptmp159 = icmp slt i64 %fld.load158, 12
  br i1 %cmptmp159, label %choice.then160, label %choice.else161

choice.next153:                                   ; preds = %choice.next146
  %val.match203 = icmp eq i64 %var.load39, 80
  br i1 %val.match203, label %choice.case201, label %choice.next202

choice.then160:                                   ; preds = %choice.case152
  br label %choice.exit162

choice.else161:                                   ; preds = %choice.case152
  br label %choice.exit162

choice.exit162:                                   ; preds = %choice.else161, %choice.then160
  %choice.res163 = phi ptr [ @str.37.struct, %choice.then160 ], [ @str.38.struct, %choice.else161 ]
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %choice.res163, i32 0, i32 0
  %app.str.len164 = load i64, ptr %app.str.len, align 8
  %app.str.len165 = and i64 %app.str.len164, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %choice.res163, i32 0, i32 1
  %app.str.data166 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 0
  %b.app.cur.len167 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len167, i64 %app.str.len165)
  %sum168 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf169 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf169, label %str_overflow_abort171, label %b.app.new.len170

b.app.new.len170:                                 ; preds = %abort.dead172, %choice.exit162
  %b.cap173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 2
  %b.cap174 = load i64, ptr %b.cap173, align 8
  %b.need.grow175 = icmp slt i64 %b.cap174, %sum168
  br i1 %b.need.grow175, label %b.grow2176, label %b.nogrow2177

str_overflow_abort171:                            ; preds = %choice.exit162
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead172:                                    ; No predecessors!
  br label %b.app.new.len170

b.grow2176:                                       ; preds = %b.app.new.len170
  %b.cap2179 = mul i64 %b.cap174, 2
  %b.cap.small180 = icmp slt i64 %b.cap2179, 16
  %b.cap.grow181 = select i1 %b.cap.small180, i64 16, i64 %b.cap2179
  %b.cap.need182 = icmp slt i64 %b.cap.grow181, %sum168
  %b.new.cap183 = select i1 %b.cap.need182, i64 %sum168, i64 %b.cap.grow181
  %b.cur.len2184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 0
  %b.cur.len2185 = load i64, ptr %b.cur.len2184, align 8
  %b.cur.data2186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 1
  %b.cur.data2187 = load ptr, ptr %b.cur.data2186, align 8
  %b.new.buf.len2188 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap183, i64 1)
  %sum189 = extractvalue { i64, i1 } %b.new.buf.len2188, 0
  %ovf190 = extractvalue { i64, i1 } %b.new.buf.len2188, 1
  br i1 %ovf190, label %str_overflow_abort192, label %b.new.buf.len2191

b.nogrow2177:                                     ; preds = %b.app.new.len170
  br label %b.grow_done178

b.grow_done178:                                   ; preds = %b.nogrow2177, %b.new.buf.len2191
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 1
  %b.app.data199 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data199, i64 %b.app.cur.len167
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data166, i64 %app.str.len165, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data199, i64 %sum168
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 0
  store i64 %sum168, ptr %b.len.gep200, align 8
  br label %choice.exit40

b.new.buf.len2191:                                ; preds = %abort.dead193, %b.grow2176
  %arena.cur194 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2195 = call ptr @dva_arena_alloc(ptr %arena.cur194, i64 %sum189)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2195, ptr align 1 %b.cur.data2187, i64 %b.cur.len2185, i1 false)
  %b.grow2.nul196 = getelementptr i8, ptr %b.new.buf2195, i64 %b.cur.len2185
  store i8 0, ptr %b.grow2.nul196, align 1
  %b.new.data2.gep197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 1
  store ptr %b.new.buf2195, ptr %b.new.data2.gep197, align 8
  %b.new.cap2.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 2
  store i64 %b.new.cap183, ptr %b.new.cap2.gep198, align 8
  br label %b.grow_done178

str_overflow_abort192:                            ; preds = %b.grow2176
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead193:                                    ; No predecessors!
  br label %b.new.buf.len2191

choice.case201:                                   ; preds = %choice.next153
  %b.load204 = load ptr, ptr %var.b, align 8
  %var.load205 = load ptr, ptr %var.dt, align 8
  %fld.gep206 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load205, i32 0, i32 3
  %fld.load207 = load i64, ptr %fld.gep206, align 8
  %cmptmp208 = icmp slt i64 %fld.load207, 12
  br i1 %cmptmp208, label %choice.then209, label %choice.else210

choice.next202:                                   ; preds = %choice.next153
  %val.match259 = icmp eq i64 %var.load39, 70
  br i1 %val.match259, label %choice.case257, label %choice.next258

choice.then209:                                   ; preds = %choice.case201
  br label %choice.exit211

choice.else210:                                   ; preds = %choice.case201
  br label %choice.exit211

choice.exit211:                                   ; preds = %choice.else210, %choice.then209
  %choice.res212 = phi ptr [ @str.39.struct, %choice.then209 ], [ @str.40.struct, %choice.else210 ]
  %app.str.len213 = getelementptr inbounds { i64, ptr }, ptr %choice.res212, i32 0, i32 0
  %app.str.len214 = load i64, ptr %app.str.len213, align 8
  %app.str.len215 = and i64 %app.str.len214, 281474976710655
  %app.str.data216 = getelementptr inbounds { i64, ptr }, ptr %choice.res212, i32 0, i32 1
  %app.str.data217 = load ptr, ptr %app.str.data216, align 8
  %b.app.cur.len218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 0
  %b.app.cur.len219 = load i64, ptr %b.app.cur.len218, align 8
  %b.app.new.len220 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len219, i64 %app.str.len215)
  %sum221 = extractvalue { i64, i1 } %b.app.new.len220, 0
  %ovf222 = extractvalue { i64, i1 } %b.app.new.len220, 1
  br i1 %ovf222, label %str_overflow_abort224, label %b.app.new.len223

b.app.new.len223:                                 ; preds = %abort.dead225, %choice.exit211
  %b.cap226 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 2
  %b.cap227 = load i64, ptr %b.cap226, align 8
  %b.need.grow228 = icmp slt i64 %b.cap227, %sum221
  br i1 %b.need.grow228, label %b.grow2229, label %b.nogrow2230

str_overflow_abort224:                            ; preds = %choice.exit211
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead225:                                    ; No predecessors!
  br label %b.app.new.len223

b.grow2229:                                       ; preds = %b.app.new.len223
  %b.cap2232 = mul i64 %b.cap227, 2
  %b.cap.small233 = icmp slt i64 %b.cap2232, 16
  %b.cap.grow234 = select i1 %b.cap.small233, i64 16, i64 %b.cap2232
  %b.cap.need235 = icmp slt i64 %b.cap.grow234, %sum221
  %b.new.cap236 = select i1 %b.cap.need235, i64 %sum221, i64 %b.cap.grow234
  %b.cur.len2237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 0
  %b.cur.len2238 = load i64, ptr %b.cur.len2237, align 8
  %b.cur.data2239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 1
  %b.cur.data2240 = load ptr, ptr %b.cur.data2239, align 8
  %b.new.buf.len2241 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap236, i64 1)
  %sum242 = extractvalue { i64, i1 } %b.new.buf.len2241, 0
  %ovf243 = extractvalue { i64, i1 } %b.new.buf.len2241, 1
  br i1 %ovf243, label %str_overflow_abort245, label %b.new.buf.len2244

b.nogrow2230:                                     ; preds = %b.app.new.len223
  br label %b.grow_done231

b.grow_done231:                                   ; preds = %b.nogrow2230, %b.new.buf.len2244
  %b.app.data252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 1
  %b.app.data253 = load ptr, ptr %b.app.data252, align 8
  %b.app.dst254 = getelementptr i8, ptr %b.app.data253, i64 %b.app.cur.len219
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst254, ptr align 1 %app.str.data217, i64 %app.str.len215, i1 false)
  %b.app.nul255 = getelementptr i8, ptr %b.app.data253, i64 %sum221
  store i8 0, ptr %b.app.nul255, align 1
  %b.len.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 0
  store i64 %sum221, ptr %b.len.gep256, align 8
  br label %choice.exit40

b.new.buf.len2244:                                ; preds = %abort.dead246, %b.grow2229
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 %sum242)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2248, ptr align 1 %b.cur.data2240, i64 %b.cur.len2238, i1 false)
  %b.grow2.nul249 = getelementptr i8, ptr %b.new.buf2248, i64 %b.cur.len2238
  store i8 0, ptr %b.grow2.nul249, align 1
  %b.new.data2.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 1
  store ptr %b.new.buf2248, ptr %b.new.data2.gep250, align 8
  %b.new.cap2.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load204, i32 0, i32 2
  store i64 %b.new.cap236, ptr %b.new.cap2.gep251, align 8
  br label %b.grow_done231

str_overflow_abort245:                            ; preds = %b.grow2229
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead246:                                    ; No predecessors!
  br label %b.new.buf.len2244

choice.case257:                                   ; preds = %choice.next202
  %var.load260 = load ptr, ptr %var.b, align 8
  %var.load261 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_into"(ptr %var.load260, ptr %var.load261)
  br label %choice.exit40

choice.next258:                                   ; preds = %choice.next202
  %val.match264 = icmp eq i64 %var.load39, 84
  br i1 %val.match264, label %choice.case262, label %choice.next263

choice.case262:                                   ; preds = %choice.next258
  %var.load265 = load ptr, ptr %var.b, align 8
  %var.load266 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_into"(ptr %var.load265, ptr %var.load266)
  br label %choice.exit40

choice.next263:                                   ; preds = %choice.next258
  %val.match269 = icmp eq i64 %var.load39, 82
  br i1 %val.match269, label %choice.case267, label %choice.next268

choice.case267:                                   ; preds = %choice.next263
  %var.load270 = load ptr, ptr %var.b, align 8
  %var.load271 = load ptr, ptr %var.dt, align 8
  %fld.gep272 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load271, i32 0, i32 3
  %fld.load273 = load i64, ptr %fld.gep272, align 8
  call void @"time::#pad2"(ptr %var.load270, i64 %fld.load273)
  %b.load274 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load274, i32 0, i32 0
  %b.rn.cur.len276 = load i64, ptr %b.rn.cur.len275, align 8
  %b.rn.new.len277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len276, i64 1)
  %sum278 = extractvalue { i64, i1 } %b.rn.new.len277, 0
  %ovf279 = extractvalue { i64, i1 } %b.rn.new.len277, 1
  br i1 %ovf279, label %str_overflow_abort281, label %b.rn.new.len280

choice.next268:                                   ; preds = %choice.next263
  %val.match326 = icmp eq i64 %var.load39, 97
  br i1 %val.match326, label %choice.case324, label %choice.next325

b.rn.new.len280:                                  ; preds = %abort.dead282, %choice.case267
  %b.cap283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load274, i32 0, i32 2
  %b.cap284 = load i64, ptr %b.cap283, align 8
  %b.need.grow285 = icmp slt i64 %b.cap284, %sum278
  br i1 %b.need.grow285, label %b.grow2286, label %b.nogrow2287

str_overflow_abort281:                            ; preds = %choice.case267
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead282:                                    ; No predecessors!
  br label %b.rn.new.len280

b.grow2286:                                       ; preds = %b.rn.new.len280
  %b.cap2289 = mul i64 %b.cap284, 2
  %b.cap.small290 = icmp slt i64 %b.cap2289, 16
  %b.cap.grow291 = select i1 %b.cap.small290, i64 16, i64 %b.cap2289
  %b.cap.need292 = icmp slt i64 %b.cap.grow291, %sum278
  %b.new.cap293 = select i1 %b.cap.need292, i64 %sum278, i64 %b.cap.grow291
  %b.cur.len2294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load274, i32 0, i32 0
  %b.cur.len2295 = load i64, ptr %b.cur.len2294, align 8
  %b.cur.data2296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load274, i32 0, i32 1
  %b.cur.data2297 = load ptr, ptr %b.cur.data2296, align 8
  %b.new.buf.len2298 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap293, i64 1)
  %sum299 = extractvalue { i64, i1 } %b.new.buf.len2298, 0
  %ovf300 = extractvalue { i64, i1 } %b.new.buf.len2298, 1
  br i1 %ovf300, label %str_overflow_abort302, label %b.new.buf.len2301

b.nogrow2287:                                     ; preds = %b.rn.new.len280
  br label %b.grow_done288

b.grow_done288:                                   ; preds = %b.nogrow2287, %b.new.buf.len2301
  %b.rn.data309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load274, i32 0, i32 1
  %b.rn.data310 = load ptr, ptr %b.rn.data309, align 8
  %b.rn.dst311 = getelementptr i8, ptr %b.rn.data310, i64 %b.rn.cur.len276
  br i1 true, label %br.b1.87, label %br.c2.87

b.new.buf.len2301:                                ; preds = %abort.dead303, %b.grow2286
  %arena.cur304 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2305 = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 %sum299)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2305, ptr align 1 %b.cur.data2297, i64 %b.cur.len2295, i1 false)
  %b.grow2.nul306 = getelementptr i8, ptr %b.new.buf2305, i64 %b.cur.len2295
  store i8 0, ptr %b.grow2.nul306, align 1
  %b.new.data2.gep307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load274, i32 0, i32 1
  store ptr %b.new.buf2305, ptr %b.new.data2.gep307, align 8
  %b.new.cap2.gep308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load274, i32 0, i32 2
  store i64 %b.new.cap293, ptr %b.new.cap2.gep308, align 8
  br label %b.grow_done288

str_overflow_abort302:                            ; preds = %b.grow2286
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead303:                                    ; No predecessors!
  br label %b.new.buf.len2301

br.b1.87:                                         ; preds = %b.grow_done288
  store i8 58, ptr %b.rn.dst311, align 1
  br label %br.done.87

br.c2.87:                                         ; preds = %b.grow_done288
  br i1 true, label %br.b2.87, label %br.c3.87

br.b2.87:                                         ; preds = %br.c2.87
  store i8 -64, ptr %b.rn.dst311, align 1
  %br.dst1312 = getelementptr i8, ptr %b.rn.dst311, i64 1
  store i8 -70, ptr %br.dst1312, align 1
  br label %br.done.87

br.c3.87:                                         ; preds = %br.c2.87
  br i1 true, label %br.b3.87, label %br.b4.87

br.b3.87:                                         ; preds = %br.c3.87
  store i8 -32, ptr %b.rn.dst311, align 1
  %br.dst1.3313 = getelementptr i8, ptr %b.rn.dst311, i64 1
  store i8 -128, ptr %br.dst1.3313, align 1
  %br.dst2.3314 = getelementptr i8, ptr %b.rn.dst311, i64 2
  store i8 -70, ptr %br.dst2.3314, align 1
  br label %br.done.87

br.b4.87:                                         ; preds = %br.c3.87
  store i8 -16, ptr %b.rn.dst311, align 1
  %br.dst1.4315 = getelementptr i8, ptr %b.rn.dst311, i64 1
  store i8 -128, ptr %br.dst1.4315, align 1
  %br.dst2.4316 = getelementptr i8, ptr %b.rn.dst311, i64 2
  store i8 -128, ptr %br.dst2.4316, align 1
  %br.dst3.4317 = getelementptr i8, ptr %b.rn.dst311, i64 3
  store i8 -70, ptr %br.dst3.4317, align 1
  br label %br.done.87

br.done.87:                                       ; preds = %br.b4.87, %br.b3.87, %br.b2.87, %br.b1.87
  %br.nul318 = getelementptr i8, ptr %b.rn.data310, i64 %sum278
  store i8 0, ptr %br.nul318, align 1
  %b.len.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load274, i32 0, i32 0
  store i64 %sum278, ptr %b.len.gep319, align 8
  %var.load320 = load ptr, ptr %var.b, align 8
  %var.load321 = load ptr, ptr %var.dt, align 8
  %fld.gep322 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load321, i32 0, i32 4
  %fld.load323 = load i64, ptr %fld.gep322, align 8
  call void @"time::#pad2"(ptr %var.load320, i64 %fld.load323)
  br label %choice.exit40

choice.case324:                                   ; preds = %choice.next268
  %b.load327 = load ptr, ptr %var.b, align 8
  %var.load328 = load ptr, ptr %var.dt, align 8
  %fld.gep329 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load328, i32 0, i32 7
  %fld.load330 = load i64, ptr %fld.gep329, align 8
  %call.res = call { i64, ptr } @"time::#short_weekday_name"(i64 %fld.load330)
  %arena.cur331 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len332 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %app.str.len333 = load i64, ptr %app.str.len332, align 8
  %app.str.len334 = and i64 %app.str.len333, 281474976710655
  %app.str.data335 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data336 = load ptr, ptr %app.str.data335, align 8
  %b.app.cur.len337 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 0
  %b.app.cur.len338 = load i64, ptr %b.app.cur.len337, align 8
  %b.app.new.len339 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len338, i64 %app.str.len334)
  %sum340 = extractvalue { i64, i1 } %b.app.new.len339, 0
  %ovf341 = extractvalue { i64, i1 } %b.app.new.len339, 1
  br i1 %ovf341, label %str_overflow_abort343, label %b.app.new.len342

choice.next325:                                   ; preds = %choice.next268
  %val.match378 = icmp eq i64 %var.load39, 65
  br i1 %val.match378, label %choice.case376, label %choice.next377

b.app.new.len342:                                 ; preds = %abort.dead344, %choice.case324
  %b.cap345 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 2
  %b.cap346 = load i64, ptr %b.cap345, align 8
  %b.need.grow347 = icmp slt i64 %b.cap346, %sum340
  br i1 %b.need.grow347, label %b.grow2348, label %b.nogrow2349

str_overflow_abort343:                            ; preds = %choice.case324
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead344:                                    ; No predecessors!
  br label %b.app.new.len342

b.grow2348:                                       ; preds = %b.app.new.len342
  %b.cap2351 = mul i64 %b.cap346, 2
  %b.cap.small352 = icmp slt i64 %b.cap2351, 16
  %b.cap.grow353 = select i1 %b.cap.small352, i64 16, i64 %b.cap2351
  %b.cap.need354 = icmp slt i64 %b.cap.grow353, %sum340
  %b.new.cap355 = select i1 %b.cap.need354, i64 %sum340, i64 %b.cap.grow353
  %b.cur.len2356 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 0
  %b.cur.len2357 = load i64, ptr %b.cur.len2356, align 8
  %b.cur.data2358 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 1
  %b.cur.data2359 = load ptr, ptr %b.cur.data2358, align 8
  %b.new.buf.len2360 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap355, i64 1)
  %sum361 = extractvalue { i64, i1 } %b.new.buf.len2360, 0
  %ovf362 = extractvalue { i64, i1 } %b.new.buf.len2360, 1
  br i1 %ovf362, label %str_overflow_abort364, label %b.new.buf.len2363

b.nogrow2349:                                     ; preds = %b.app.new.len342
  br label %b.grow_done350

b.grow_done350:                                   ; preds = %b.nogrow2349, %b.new.buf.len2363
  %b.app.data371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 1
  %b.app.data372 = load ptr, ptr %b.app.data371, align 8
  %b.app.dst373 = getelementptr i8, ptr %b.app.data372, i64 %b.app.cur.len338
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst373, ptr align 1 %app.str.data336, i64 %app.str.len334, i1 false)
  %b.app.nul374 = getelementptr i8, ptr %b.app.data372, i64 %sum340
  store i8 0, ptr %b.app.nul374, align 1
  %b.len.gep375 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 0
  store i64 %sum340, ptr %b.len.gep375, align 8
  br label %choice.exit40

b.new.buf.len2363:                                ; preds = %abort.dead365, %b.grow2348
  %arena.cur366 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2367 = call ptr @dva_arena_alloc(ptr %arena.cur366, i64 %sum361)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2367, ptr align 1 %b.cur.data2359, i64 %b.cur.len2357, i1 false)
  %b.grow2.nul368 = getelementptr i8, ptr %b.new.buf2367, i64 %b.cur.len2357
  store i8 0, ptr %b.grow2.nul368, align 1
  %b.new.data2.gep369 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 1
  store ptr %b.new.buf2367, ptr %b.new.data2.gep369, align 8
  %b.new.cap2.gep370 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 2
  store i64 %b.new.cap355, ptr %b.new.cap2.gep370, align 8
  br label %b.grow_done350

str_overflow_abort364:                            ; preds = %b.grow2348
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead365:                                    ; No predecessors!
  br label %b.new.buf.len2363

choice.case376:                                   ; preds = %choice.next325
  %b.load379 = load ptr, ptr %var.b, align 8
  %var.load380 = load ptr, ptr %var.dt, align 8
  %fld.gep381 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load380, i32 0, i32 7
  %fld.load382 = load i64, ptr %fld.gep381, align 8
  %call.res383 = call { i64, ptr } @"time::#full_weekday_name"(i64 %fld.load382)
  %arena.cur384 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc385 = call ptr @dva_arena_alloc(ptr %arena.cur384, i64 16)
  store { i64, ptr } %call.res383, ptr %ret.ub.alloc385, align 8
  %app.str.len386 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc385, i32 0, i32 0
  %app.str.len387 = load i64, ptr %app.str.len386, align 8
  %app.str.len388 = and i64 %app.str.len387, 281474976710655
  %app.str.data389 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc385, i32 0, i32 1
  %app.str.data390 = load ptr, ptr %app.str.data389, align 8
  %b.app.cur.len391 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 0
  %b.app.cur.len392 = load i64, ptr %b.app.cur.len391, align 8
  %b.app.new.len393 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len392, i64 %app.str.len388)
  %sum394 = extractvalue { i64, i1 } %b.app.new.len393, 0
  %ovf395 = extractvalue { i64, i1 } %b.app.new.len393, 1
  br i1 %ovf395, label %str_overflow_abort397, label %b.app.new.len396

choice.next377:                                   ; preds = %choice.next325
  %val.match432 = icmp eq i64 %var.load39, 98
  %val.match433 = icmp eq i64 %var.load39, 104
  %case.or = or i1 %val.match432, %val.match433
  br i1 %case.or, label %choice.case430, label %choice.next431

b.app.new.len396:                                 ; preds = %abort.dead398, %choice.case376
  %b.cap399 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 2
  %b.cap400 = load i64, ptr %b.cap399, align 8
  %b.need.grow401 = icmp slt i64 %b.cap400, %sum394
  br i1 %b.need.grow401, label %b.grow2402, label %b.nogrow2403

str_overflow_abort397:                            ; preds = %choice.case376
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead398:                                    ; No predecessors!
  br label %b.app.new.len396

b.grow2402:                                       ; preds = %b.app.new.len396
  %b.cap2405 = mul i64 %b.cap400, 2
  %b.cap.small406 = icmp slt i64 %b.cap2405, 16
  %b.cap.grow407 = select i1 %b.cap.small406, i64 16, i64 %b.cap2405
  %b.cap.need408 = icmp slt i64 %b.cap.grow407, %sum394
  %b.new.cap409 = select i1 %b.cap.need408, i64 %sum394, i64 %b.cap.grow407
  %b.cur.len2410 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 0
  %b.cur.len2411 = load i64, ptr %b.cur.len2410, align 8
  %b.cur.data2412 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 1
  %b.cur.data2413 = load ptr, ptr %b.cur.data2412, align 8
  %b.new.buf.len2414 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap409, i64 1)
  %sum415 = extractvalue { i64, i1 } %b.new.buf.len2414, 0
  %ovf416 = extractvalue { i64, i1 } %b.new.buf.len2414, 1
  br i1 %ovf416, label %str_overflow_abort418, label %b.new.buf.len2417

b.nogrow2403:                                     ; preds = %b.app.new.len396
  br label %b.grow_done404

b.grow_done404:                                   ; preds = %b.nogrow2403, %b.new.buf.len2417
  %b.app.data425 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 1
  %b.app.data426 = load ptr, ptr %b.app.data425, align 8
  %b.app.dst427 = getelementptr i8, ptr %b.app.data426, i64 %b.app.cur.len392
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst427, ptr align 1 %app.str.data390, i64 %app.str.len388, i1 false)
  %b.app.nul428 = getelementptr i8, ptr %b.app.data426, i64 %sum394
  store i8 0, ptr %b.app.nul428, align 1
  %b.len.gep429 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 0
  store i64 %sum394, ptr %b.len.gep429, align 8
  br label %choice.exit40

b.new.buf.len2417:                                ; preds = %abort.dead419, %b.grow2402
  %arena.cur420 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2421 = call ptr @dva_arena_alloc(ptr %arena.cur420, i64 %sum415)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2421, ptr align 1 %b.cur.data2413, i64 %b.cur.len2411, i1 false)
  %b.grow2.nul422 = getelementptr i8, ptr %b.new.buf2421, i64 %b.cur.len2411
  store i8 0, ptr %b.grow2.nul422, align 1
  %b.new.data2.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 1
  store ptr %b.new.buf2421, ptr %b.new.data2.gep423, align 8
  %b.new.cap2.gep424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load379, i32 0, i32 2
  store i64 %b.new.cap409, ptr %b.new.cap2.gep424, align 8
  br label %b.grow_done404

str_overflow_abort418:                            ; preds = %b.grow2402
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead419:                                    ; No predecessors!
  br label %b.new.buf.len2417

choice.case430:                                   ; preds = %choice.next377
  %b.load434 = load ptr, ptr %var.b, align 8
  %var.load435 = load ptr, ptr %var.dt, align 8
  %fld.gep436 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load435, i32 0, i32 1
  %fld.load437 = load i64, ptr %fld.gep436, align 8
  %call.res438 = call { i64, ptr } @"time::#short_month_name"(i64 %fld.load437)
  %arena.cur439 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc440 = call ptr @dva_arena_alloc(ptr %arena.cur439, i64 16)
  store { i64, ptr } %call.res438, ptr %ret.ub.alloc440, align 8
  %app.str.len441 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc440, i32 0, i32 0
  %app.str.len442 = load i64, ptr %app.str.len441, align 8
  %app.str.len443 = and i64 %app.str.len442, 281474976710655
  %app.str.data444 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc440, i32 0, i32 1
  %app.str.data445 = load ptr, ptr %app.str.data444, align 8
  %b.app.cur.len446 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 0
  %b.app.cur.len447 = load i64, ptr %b.app.cur.len446, align 8
  %b.app.new.len448 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len447, i64 %app.str.len443)
  %sum449 = extractvalue { i64, i1 } %b.app.new.len448, 0
  %ovf450 = extractvalue { i64, i1 } %b.app.new.len448, 1
  br i1 %ovf450, label %str_overflow_abort452, label %b.app.new.len451

choice.next431:                                   ; preds = %choice.next377
  %val.match487 = icmp eq i64 %var.load39, 66
  br i1 %val.match487, label %choice.case485, label %choice.next486

b.app.new.len451:                                 ; preds = %abort.dead453, %choice.case430
  %b.cap454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 2
  %b.cap455 = load i64, ptr %b.cap454, align 8
  %b.need.grow456 = icmp slt i64 %b.cap455, %sum449
  br i1 %b.need.grow456, label %b.grow2457, label %b.nogrow2458

str_overflow_abort452:                            ; preds = %choice.case430
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
  %b.cur.len2465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 0
  %b.cur.len2466 = load i64, ptr %b.cur.len2465, align 8
  %b.cur.data2467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 1
  %b.cur.data2468 = load ptr, ptr %b.cur.data2467, align 8
  %b.new.buf.len2469 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap464, i64 1)
  %sum470 = extractvalue { i64, i1 } %b.new.buf.len2469, 0
  %ovf471 = extractvalue { i64, i1 } %b.new.buf.len2469, 1
  br i1 %ovf471, label %str_overflow_abort473, label %b.new.buf.len2472

b.nogrow2458:                                     ; preds = %b.app.new.len451
  br label %b.grow_done459

b.grow_done459:                                   ; preds = %b.nogrow2458, %b.new.buf.len2472
  %b.app.data480 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 1
  %b.app.data481 = load ptr, ptr %b.app.data480, align 8
  %b.app.dst482 = getelementptr i8, ptr %b.app.data481, i64 %b.app.cur.len447
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst482, ptr align 1 %app.str.data445, i64 %app.str.len443, i1 false)
  %b.app.nul483 = getelementptr i8, ptr %b.app.data481, i64 %sum449
  store i8 0, ptr %b.app.nul483, align 1
  %b.len.gep484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 0
  store i64 %sum449, ptr %b.len.gep484, align 8
  br label %choice.exit40

b.new.buf.len2472:                                ; preds = %abort.dead474, %b.grow2457
  %arena.cur475 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2476 = call ptr @dva_arena_alloc(ptr %arena.cur475, i64 %sum470)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2476, ptr align 1 %b.cur.data2468, i64 %b.cur.len2466, i1 false)
  %b.grow2.nul477 = getelementptr i8, ptr %b.new.buf2476, i64 %b.cur.len2466
  store i8 0, ptr %b.grow2.nul477, align 1
  %b.new.data2.gep478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 1
  store ptr %b.new.buf2476, ptr %b.new.data2.gep478, align 8
  %b.new.cap2.gep479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load434, i32 0, i32 2
  store i64 %b.new.cap464, ptr %b.new.cap2.gep479, align 8
  br label %b.grow_done459

str_overflow_abort473:                            ; preds = %b.grow2457
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead474:                                    ; No predecessors!
  br label %b.new.buf.len2472

choice.case485:                                   ; preds = %choice.next431
  %b.load488 = load ptr, ptr %var.b, align 8
  %var.load489 = load ptr, ptr %var.dt, align 8
  %fld.gep490 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load489, i32 0, i32 1
  %fld.load491 = load i64, ptr %fld.gep490, align 8
  %call.res492 = call { i64, ptr } @"time::#full_month_name"(i64 %fld.load491)
  %arena.cur493 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc494 = call ptr @dva_arena_alloc(ptr %arena.cur493, i64 16)
  store { i64, ptr } %call.res492, ptr %ret.ub.alloc494, align 8
  %app.str.len495 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc494, i32 0, i32 0
  %app.str.len496 = load i64, ptr %app.str.len495, align 8
  %app.str.len497 = and i64 %app.str.len496, 281474976710655
  %app.str.data498 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc494, i32 0, i32 1
  %app.str.data499 = load ptr, ptr %app.str.data498, align 8
  %b.app.cur.len500 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 0
  %b.app.cur.len501 = load i64, ptr %b.app.cur.len500, align 8
  %b.app.new.len502 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len501, i64 %app.str.len497)
  %sum503 = extractvalue { i64, i1 } %b.app.new.len502, 0
  %ovf504 = extractvalue { i64, i1 } %b.app.new.len502, 1
  br i1 %ovf504, label %str_overflow_abort506, label %b.app.new.len505

choice.next486:                                   ; preds = %choice.next431
  %val.match541 = icmp eq i64 %var.load39, 106
  br i1 %val.match541, label %choice.case539, label %choice.next540

b.app.new.len505:                                 ; preds = %abort.dead507, %choice.case485
  %b.cap508 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 2
  %b.cap509 = load i64, ptr %b.cap508, align 8
  %b.need.grow510 = icmp slt i64 %b.cap509, %sum503
  br i1 %b.need.grow510, label %b.grow2511, label %b.nogrow2512

str_overflow_abort506:                            ; preds = %choice.case485
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead507:                                    ; No predecessors!
  br label %b.app.new.len505

b.grow2511:                                       ; preds = %b.app.new.len505
  %b.cap2514 = mul i64 %b.cap509, 2
  %b.cap.small515 = icmp slt i64 %b.cap2514, 16
  %b.cap.grow516 = select i1 %b.cap.small515, i64 16, i64 %b.cap2514
  %b.cap.need517 = icmp slt i64 %b.cap.grow516, %sum503
  %b.new.cap518 = select i1 %b.cap.need517, i64 %sum503, i64 %b.cap.grow516
  %b.cur.len2519 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 0
  %b.cur.len2520 = load i64, ptr %b.cur.len2519, align 8
  %b.cur.data2521 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 1
  %b.cur.data2522 = load ptr, ptr %b.cur.data2521, align 8
  %b.new.buf.len2523 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap518, i64 1)
  %sum524 = extractvalue { i64, i1 } %b.new.buf.len2523, 0
  %ovf525 = extractvalue { i64, i1 } %b.new.buf.len2523, 1
  br i1 %ovf525, label %str_overflow_abort527, label %b.new.buf.len2526

b.nogrow2512:                                     ; preds = %b.app.new.len505
  br label %b.grow_done513

b.grow_done513:                                   ; preds = %b.nogrow2512, %b.new.buf.len2526
  %b.app.data534 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 1
  %b.app.data535 = load ptr, ptr %b.app.data534, align 8
  %b.app.dst536 = getelementptr i8, ptr %b.app.data535, i64 %b.app.cur.len501
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst536, ptr align 1 %app.str.data499, i64 %app.str.len497, i1 false)
  %b.app.nul537 = getelementptr i8, ptr %b.app.data535, i64 %sum503
  store i8 0, ptr %b.app.nul537, align 1
  %b.len.gep538 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 0
  store i64 %sum503, ptr %b.len.gep538, align 8
  br label %choice.exit40

b.new.buf.len2526:                                ; preds = %abort.dead528, %b.grow2511
  %arena.cur529 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2530 = call ptr @dva_arena_alloc(ptr %arena.cur529, i64 %sum524)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2530, ptr align 1 %b.cur.data2522, i64 %b.cur.len2520, i1 false)
  %b.grow2.nul531 = getelementptr i8, ptr %b.new.buf2530, i64 %b.cur.len2520
  store i8 0, ptr %b.grow2.nul531, align 1
  %b.new.data2.gep532 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 1
  store ptr %b.new.buf2530, ptr %b.new.data2.gep532, align 8
  %b.new.cap2.gep533 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load488, i32 0, i32 2
  store i64 %b.new.cap518, ptr %b.new.cap2.gep533, align 8
  br label %b.grow_done513

str_overflow_abort527:                            ; preds = %b.grow2511
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead528:                                    ; No predecessors!
  br label %b.new.buf.len2526

choice.case539:                                   ; preds = %choice.next486
  %var.load542 = load ptr, ptr %var.b, align 8
  %var.load543 = load ptr, ptr %var.dt, align 8
  %fld.gep544 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load543, i32 0, i32 8
  %fld.load545 = load i64, ptr %fld.gep544, align 8
  call void @"time::#pad3"(ptr %var.load542, i64 %fld.load545)
  br label %choice.exit40

choice.next540:                                   ; preds = %choice.next486
  %val.match548 = icmp eq i64 %var.load39, 119
  br i1 %val.match548, label %choice.case546, label %choice.next547

choice.case546:                                   ; preds = %choice.next540
  %b.load549 = load ptr, ptr %var.b, align 8
  %var.load550 = load ptr, ptr %var.dt, align 8
  %fld.gep551 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load550, i32 0, i32 7
  %fld.load552 = load i64, ptr %fld.gep551, align 8
  %addtmp553 = add i64 48, %fld.load552
  %b.b.ge0554 = icmp sge i64 %addtmp553, 0
  %b.b.le255555 = icmp sle i64 %addtmp553, 255
  %b.byte.range556 = and i1 %b.b.ge0554, %b.b.le255555
  br i1 %b.byte.range556, label %b.byte_ok557, label %b.byte_err558

choice.next547:                                   ; preds = %choice.next540
  %val.match595 = icmp eq i64 %var.load39, 117
  br i1 %val.match595, label %choice.case593, label %choice.next594

b.byte_ok557:                                     ; preds = %abort.dead559, %choice.case546
  %b.byte.i8560 = trunc i64 %addtmp553 to i8
  %b.len561 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load549, i32 0, i32 0
  %b.len562 = load i64, ptr %b.len561, align 8
  %b.cap563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load549, i32 0, i32 2
  %b.cap564 = load i64, ptr %b.cap563, align 8
  %b.data565 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load549, i32 0, i32 1
  %b.data566 = load ptr, ptr %b.data565, align 8
  %b.needs.grow567 = icmp eq i64 %b.len562, %b.cap564
  br i1 %b.needs.grow567, label %b.grow568, label %b.nogrow569

b.byte_err558:                                    ; preds = %choice.case546
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead559:                                    ; No predecessors!
  br label %b.byte_ok557

b.grow568:                                        ; preds = %b.byte_ok557
  %b.cap2571 = mul i64 %b.cap564, 2
  %b.cap.small572 = icmp slt i64 %b.cap2571, 16
  %b.new.cap573 = select i1 %b.cap.small572, i64 16, i64 %b.cap2571
  %b.new.buf.len574 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap573, i64 1)
  %sum575 = extractvalue { i64, i1 } %b.new.buf.len574, 0
  %ovf576 = extractvalue { i64, i1 } %b.new.buf.len574, 1
  br i1 %ovf576, label %str_overflow_abort578, label %b.new.buf.len577

b.nogrow569:                                      ; preds = %b.byte_ok557
  br label %b.push_done570

b.push_done570:                                   ; preds = %b.nogrow569, %b.new.buf.len577
  %b.cur.data585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load549, i32 0, i32 1
  %b.cur.data586 = load ptr, ptr %b.cur.data585, align 8
  %b.cur.len587 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load549, i32 0, i32 0
  %b.cur.len588 = load i64, ptr %b.cur.len587, align 8
  %b.byte.gep589 = getelementptr i8, ptr %b.cur.data586, i64 %b.cur.len588
  store i8 %b.byte.i8560, ptr %b.byte.gep589, align 1
  %b.next.len590 = add i64 %b.cur.len588, 1
  %b.nul591 = getelementptr i8, ptr %b.cur.data586, i64 %b.next.len590
  store i8 0, ptr %b.nul591, align 1
  %b.len.gep592 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load549, i32 0, i32 0
  store i64 %b.next.len590, ptr %b.len.gep592, align 8
  br label %choice.exit40

b.new.buf.len577:                                 ; preds = %abort.dead579, %b.grow568
  %arena.cur580 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf581 = call ptr @dva_arena_alloc(ptr %arena.cur580, i64 %sum575)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf581, ptr align 1 %b.data566, i64 %b.len562, i1 false)
  %b.grow.nul582 = getelementptr i8, ptr %b.new.buf581, i64 %b.len562
  store i8 0, ptr %b.grow.nul582, align 1
  %b.new.data.gep583 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load549, i32 0, i32 1
  store ptr %b.new.buf581, ptr %b.new.data.gep583, align 8
  %b.new.cap.gep584 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load549, i32 0, i32 2
  store i64 %b.new.cap573, ptr %b.new.cap.gep584, align 8
  br label %b.push_done570

str_overflow_abort578:                            ; preds = %b.grow568
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead579:                                    ; No predecessors!
  br label %b.new.buf.len577

choice.case593:                                   ; preds = %choice.next547
  %b.load596 = load ptr, ptr %var.b, align 8
  %var.load597 = load ptr, ptr %var.dt, align 8
  %fld.gep598 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load597, i32 0, i32 7
  %fld.load599 = load i64, ptr %fld.gep598, align 8
  %cmptmp600 = icmp eq i64 %fld.load599, 0
  br i1 %cmptmp600, label %choice.then601, label %choice.else602

choice.next594:                                   ; preds = %choice.next547
  %val.match650 = icmp eq i64 %var.load39, 122
  br i1 %val.match650, label %choice.case648, label %choice.next649

choice.then601:                                   ; preds = %choice.case593
  br label %choice.exit603

choice.else602:                                   ; preds = %choice.case593
  %var.load604 = load ptr, ptr %var.dt, align 8
  %fld.gep605 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load604, i32 0, i32 7
  %fld.load606 = load i64, ptr %fld.gep605, align 8
  br label %choice.exit603

choice.exit603:                                   ; preds = %choice.else602, %choice.then601
  %choice.res607 = phi i64 [ 7, %choice.then601 ], [ %fld.load606, %choice.else602 ]
  %addtmp608 = add i64 48, %choice.res607
  %b.b.ge0609 = icmp sge i64 %addtmp608, 0
  %b.b.le255610 = icmp sle i64 %addtmp608, 255
  %b.byte.range611 = and i1 %b.b.ge0609, %b.b.le255610
  br i1 %b.byte.range611, label %b.byte_ok612, label %b.byte_err613

b.byte_ok612:                                     ; preds = %abort.dead614, %choice.exit603
  %b.byte.i8615 = trunc i64 %addtmp608 to i8
  %b.len616 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load596, i32 0, i32 0
  %b.len617 = load i64, ptr %b.len616, align 8
  %b.cap618 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load596, i32 0, i32 2
  %b.cap619 = load i64, ptr %b.cap618, align 8
  %b.data620 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load596, i32 0, i32 1
  %b.data621 = load ptr, ptr %b.data620, align 8
  %b.needs.grow622 = icmp eq i64 %b.len617, %b.cap619
  br i1 %b.needs.grow622, label %b.grow623, label %b.nogrow624

b.byte_err613:                                    ; preds = %choice.exit603
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead614:                                    ; No predecessors!
  br label %b.byte_ok612

b.grow623:                                        ; preds = %b.byte_ok612
  %b.cap2626 = mul i64 %b.cap619, 2
  %b.cap.small627 = icmp slt i64 %b.cap2626, 16
  %b.new.cap628 = select i1 %b.cap.small627, i64 16, i64 %b.cap2626
  %b.new.buf.len629 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap628, i64 1)
  %sum630 = extractvalue { i64, i1 } %b.new.buf.len629, 0
  %ovf631 = extractvalue { i64, i1 } %b.new.buf.len629, 1
  br i1 %ovf631, label %str_overflow_abort633, label %b.new.buf.len632

b.nogrow624:                                      ; preds = %b.byte_ok612
  br label %b.push_done625

b.push_done625:                                   ; preds = %b.nogrow624, %b.new.buf.len632
  %b.cur.data640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load596, i32 0, i32 1
  %b.cur.data641 = load ptr, ptr %b.cur.data640, align 8
  %b.cur.len642 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load596, i32 0, i32 0
  %b.cur.len643 = load i64, ptr %b.cur.len642, align 8
  %b.byte.gep644 = getelementptr i8, ptr %b.cur.data641, i64 %b.cur.len643
  store i8 %b.byte.i8615, ptr %b.byte.gep644, align 1
  %b.next.len645 = add i64 %b.cur.len643, 1
  %b.nul646 = getelementptr i8, ptr %b.cur.data641, i64 %b.next.len645
  store i8 0, ptr %b.nul646, align 1
  %b.len.gep647 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load596, i32 0, i32 0
  store i64 %b.next.len645, ptr %b.len.gep647, align 8
  br label %choice.exit40

b.new.buf.len632:                                 ; preds = %abort.dead634, %b.grow623
  %arena.cur635 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf636 = call ptr @dva_arena_alloc(ptr %arena.cur635, i64 %sum630)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf636, ptr align 1 %b.data621, i64 %b.len617, i1 false)
  %b.grow.nul637 = getelementptr i8, ptr %b.new.buf636, i64 %b.len617
  store i8 0, ptr %b.grow.nul637, align 1
  %b.new.data.gep638 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load596, i32 0, i32 1
  store ptr %b.new.buf636, ptr %b.new.data.gep638, align 8
  %b.new.cap.gep639 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load596, i32 0, i32 2
  store i64 %b.new.cap628, ptr %b.new.cap.gep639, align 8
  br label %b.push_done625

str_overflow_abort633:                            ; preds = %b.grow623
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead634:                                    ; No predecessors!
  br label %b.new.buf.len632

choice.case648:                                   ; preds = %choice.next594
  %var.load651 = load ptr, ptr %var.b, align 8
  %var.load652 = load ptr, ptr %var.dt, align 8
  %fld.gep653 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load652, i32 0, i32 9
  %fld.load654 = load i64, ptr %fld.gep653, align 8
  call void @"time::#write_tz_compact_into"(ptr %var.load651, i64 %fld.load654)
  br label %choice.exit40

choice.next649:                                   ; preds = %choice.next594
  %val.match657 = icmp eq i64 %var.load39, 90
  br i1 %val.match657, label %choice.case655, label %choice.next656

choice.case655:                                   ; preds = %choice.next649
  %var.load658 = load ptr, ptr %var.dt, align 8
  %fld.gep659 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load658, i32 0, i32 9
  %fld.load660 = load i64, ptr %fld.gep659, align 8
  %cmptmp661 = icmp eq i64 %fld.load660, 0
  br i1 %cmptmp661, label %choice.then662, label %choice.else663

choice.next656:                                   ; preds = %choice.next649
  %val.match714 = icmp eq i64 %var.load39, 115
  br i1 %val.match714, label %choice.case712, label %choice.next713

choice.then662:                                   ; preds = %choice.case655
  %b.load665 = load ptr, ptr %var.b, align 8
  %app.str.len666 = load i64, ptr @str.41.struct, align 8
  %app.str.len667 = and i64 %app.str.len666, 281474976710655
  %app.str.data668 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %b.app.cur.len669 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load665, i32 0, i32 0
  %b.app.cur.len670 = load i64, ptr %b.app.cur.len669, align 8
  %b.app.new.len671 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len670, i64 %app.str.len667)
  %sum672 = extractvalue { i64, i1 } %b.app.new.len671, 0
  %ovf673 = extractvalue { i64, i1 } %b.app.new.len671, 1
  br i1 %ovf673, label %str_overflow_abort675, label %b.app.new.len674

choice.else663:                                   ; preds = %choice.case655
  %var.load708 = load ptr, ptr %var.b, align 8
  %var.load709 = load ptr, ptr %var.dt, align 8
  %fld.gep710 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load709, i32 0, i32 9
  %fld.load711 = load i64, ptr %fld.gep710, align 8
  call void @"time::#write_tz_iso_into"(ptr %var.load708, i64 %fld.load711)
  br label %choice.exit664

choice.exit664:                                   ; preds = %choice.else663, %b.grow_done682
  br label %choice.exit40

b.app.new.len674:                                 ; preds = %abort.dead676, %choice.then662
  %b.cap677 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load665, i32 0, i32 2
  %b.cap678 = load i64, ptr %b.cap677, align 8
  %b.need.grow679 = icmp slt i64 %b.cap678, %sum672
  br i1 %b.need.grow679, label %b.grow2680, label %b.nogrow2681

str_overflow_abort675:                            ; preds = %choice.then662
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead676:                                    ; No predecessors!
  br label %b.app.new.len674

b.grow2680:                                       ; preds = %b.app.new.len674
  %b.cap2683 = mul i64 %b.cap678, 2
  %b.cap.small684 = icmp slt i64 %b.cap2683, 16
  %b.cap.grow685 = select i1 %b.cap.small684, i64 16, i64 %b.cap2683
  %b.cap.need686 = icmp slt i64 %b.cap.grow685, %sum672
  %b.new.cap687 = select i1 %b.cap.need686, i64 %sum672, i64 %b.cap.grow685
  %b.cur.len2688 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load665, i32 0, i32 0
  %b.cur.len2689 = load i64, ptr %b.cur.len2688, align 8
  %b.cur.data2690 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load665, i32 0, i32 1
  %b.cur.data2691 = load ptr, ptr %b.cur.data2690, align 8
  %b.new.buf.len2692 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap687, i64 1)
  %sum693 = extractvalue { i64, i1 } %b.new.buf.len2692, 0
  %ovf694 = extractvalue { i64, i1 } %b.new.buf.len2692, 1
  br i1 %ovf694, label %str_overflow_abort696, label %b.new.buf.len2695

b.nogrow2681:                                     ; preds = %b.app.new.len674
  br label %b.grow_done682

b.grow_done682:                                   ; preds = %b.nogrow2681, %b.new.buf.len2695
  %b.app.data703 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load665, i32 0, i32 1
  %b.app.data704 = load ptr, ptr %b.app.data703, align 8
  %b.app.dst705 = getelementptr i8, ptr %b.app.data704, i64 %b.app.cur.len670
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst705, ptr align 1 %app.str.data668, i64 %app.str.len667, i1 false)
  %b.app.nul706 = getelementptr i8, ptr %b.app.data704, i64 %sum672
  store i8 0, ptr %b.app.nul706, align 1
  %b.len.gep707 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load665, i32 0, i32 0
  store i64 %sum672, ptr %b.len.gep707, align 8
  br label %choice.exit664

b.new.buf.len2695:                                ; preds = %abort.dead697, %b.grow2680
  %arena.cur698 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2699 = call ptr @dva_arena_alloc(ptr %arena.cur698, i64 %sum693)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2699, ptr align 1 %b.cur.data2691, i64 %b.cur.len2689, i1 false)
  %b.grow2.nul700 = getelementptr i8, ptr %b.new.buf2699, i64 %b.cur.len2689
  store i8 0, ptr %b.grow2.nul700, align 1
  %b.new.data2.gep701 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load665, i32 0, i32 1
  store ptr %b.new.buf2699, ptr %b.new.data2.gep701, align 8
  %b.new.cap2.gep702 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load665, i32 0, i32 2
  store i64 %b.new.cap687, ptr %b.new.cap2.gep702, align 8
  br label %b.grow_done682

str_overflow_abort696:                            ; preds = %b.grow2680
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead697:                                    ; No predecessors!
  br label %b.new.buf.len2695

choice.case712:                                   ; preds = %choice.next656
  %b.load715 = load ptr, ptr %var.b, align 8
  %var.load716 = load ptr, ptr %var.dt, align 8
  %call.res717 = call i64 @"time::epoch"(ptr %var.load716)
  %b.int.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load715, i32 0, i32 0
  %b.int.cur.len718 = load i64, ptr %b.int.cur.len, align 8
  %b.int.cap = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.int.cur.len718, i64 24)
  %sum719 = extractvalue { i64, i1 } %b.int.cap, 0
  %ovf720 = extractvalue { i64, i1 } %b.int.cap, 1
  br i1 %ovf720, label %str_overflow_abort722, label %b.int.cap721

choice.next713:                                   ; preds = %choice.next656
  %val.match754 = icmp eq i64 %var.load39, 110
  br i1 %val.match754, label %choice.case752, label %choice.next753

b.int.cap721:                                     ; preds = %abort.dead723, %choice.case712
  %b.cap724 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load715, i32 0, i32 2
  %b.cap725 = load i64, ptr %b.cap724, align 8
  %b.need.grow726 = icmp slt i64 %b.cap725, %sum719
  br i1 %b.need.grow726, label %b.grow2727, label %b.nogrow2728

str_overflow_abort722:                            ; preds = %choice.case712
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead723:                                    ; No predecessors!
  br label %b.int.cap721

b.grow2727:                                       ; preds = %b.int.cap721
  %b.cap2730 = mul i64 %b.cap725, 2
  %b.cap.small731 = icmp slt i64 %b.cap2730, 16
  %b.cap.grow732 = select i1 %b.cap.small731, i64 16, i64 %b.cap2730
  %b.cap.need733 = icmp slt i64 %b.cap.grow732, %sum719
  %b.new.cap734 = select i1 %b.cap.need733, i64 %sum719, i64 %b.cap.grow732
  %b.cur.len2735 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load715, i32 0, i32 0
  %b.cur.len2736 = load i64, ptr %b.cur.len2735, align 8
  %b.cur.data2737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load715, i32 0, i32 1
  %b.cur.data2738 = load ptr, ptr %b.cur.data2737, align 8
  %b.new.buf.len2739 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap734, i64 1)
  %sum740 = extractvalue { i64, i1 } %b.new.buf.len2739, 0
  %ovf741 = extractvalue { i64, i1 } %b.new.buf.len2739, 1
  br i1 %ovf741, label %str_overflow_abort743, label %b.new.buf.len2742

b.nogrow2728:                                     ; preds = %b.int.cap721
  br label %b.grow_done729

b.grow_done729:                                   ; preds = %b.nogrow2728, %b.new.buf.len2742
  %b.int.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load715, i32 0, i32 1
  %b.int.data750 = load ptr, ptr %b.int.data, align 8
  %b.int.dst = getelementptr i8, ptr %b.int.data750, i64 %b.int.cur.len718
  %b.int.len = call i64 @dva_fmt_i64_buf(ptr %b.int.dst, i64 %call.res717, i1 false)
  %b.int.new.len = add i64 %b.int.cur.len718, %b.int.len
  %b.len.gep751 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load715, i32 0, i32 0
  store i64 %b.int.new.len, ptr %b.len.gep751, align 8
  br label %choice.exit40

b.new.buf.len2742:                                ; preds = %abort.dead744, %b.grow2727
  %arena.cur745 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2746 = call ptr @dva_arena_alloc(ptr %arena.cur745, i64 %sum740)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2746, ptr align 1 %b.cur.data2738, i64 %b.cur.len2736, i1 false)
  %b.grow2.nul747 = getelementptr i8, ptr %b.new.buf2746, i64 %b.cur.len2736
  store i8 0, ptr %b.grow2.nul747, align 1
  %b.new.data2.gep748 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load715, i32 0, i32 1
  store ptr %b.new.buf2746, ptr %b.new.data2.gep748, align 8
  %b.new.cap2.gep749 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load715, i32 0, i32 2
  store i64 %b.new.cap734, ptr %b.new.cap2.gep749, align 8
  br label %b.grow_done729

str_overflow_abort743:                            ; preds = %b.grow2727
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead744:                                    ; No predecessors!
  br label %b.new.buf.len2742

choice.case752:                                   ; preds = %choice.next713
  %b.load755 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len756 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load755, i32 0, i32 0
  %b.rn.cur.len757 = load i64, ptr %b.rn.cur.len756, align 8
  %b.rn.new.len758 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len757, i64 1)
  %sum759 = extractvalue { i64, i1 } %b.rn.new.len758, 0
  %ovf760 = extractvalue { i64, i1 } %b.rn.new.len758, 1
  br i1 %ovf760, label %str_overflow_abort762, label %b.rn.new.len761

choice.next753:                                   ; preds = %choice.next713
  %val.match803 = icmp eq i64 %var.load39, 116
  br i1 %val.match803, label %choice.case801, label %choice.next802

b.rn.new.len761:                                  ; preds = %abort.dead763, %choice.case752
  %b.cap764 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load755, i32 0, i32 2
  %b.cap765 = load i64, ptr %b.cap764, align 8
  %b.need.grow766 = icmp slt i64 %b.cap765, %sum759
  br i1 %b.need.grow766, label %b.grow2767, label %b.nogrow2768

str_overflow_abort762:                            ; preds = %choice.case752
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead763:                                    ; No predecessors!
  br label %b.rn.new.len761

b.grow2767:                                       ; preds = %b.rn.new.len761
  %b.cap2770 = mul i64 %b.cap765, 2
  %b.cap.small771 = icmp slt i64 %b.cap2770, 16
  %b.cap.grow772 = select i1 %b.cap.small771, i64 16, i64 %b.cap2770
  %b.cap.need773 = icmp slt i64 %b.cap.grow772, %sum759
  %b.new.cap774 = select i1 %b.cap.need773, i64 %sum759, i64 %b.cap.grow772
  %b.cur.len2775 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load755, i32 0, i32 0
  %b.cur.len2776 = load i64, ptr %b.cur.len2775, align 8
  %b.cur.data2777 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load755, i32 0, i32 1
  %b.cur.data2778 = load ptr, ptr %b.cur.data2777, align 8
  %b.new.buf.len2779 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap774, i64 1)
  %sum780 = extractvalue { i64, i1 } %b.new.buf.len2779, 0
  %ovf781 = extractvalue { i64, i1 } %b.new.buf.len2779, 1
  br i1 %ovf781, label %str_overflow_abort783, label %b.new.buf.len2782

b.nogrow2768:                                     ; preds = %b.rn.new.len761
  br label %b.grow_done769

b.grow_done769:                                   ; preds = %b.nogrow2768, %b.new.buf.len2782
  %b.rn.data790 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load755, i32 0, i32 1
  %b.rn.data791 = load ptr, ptr %b.rn.data790, align 8
  %b.rn.dst792 = getelementptr i8, ptr %b.rn.data791, i64 %b.rn.cur.len757
  br i1 true, label %br.b1.88, label %br.c2.88

b.new.buf.len2782:                                ; preds = %abort.dead784, %b.grow2767
  %arena.cur785 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2786 = call ptr @dva_arena_alloc(ptr %arena.cur785, i64 %sum780)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2786, ptr align 1 %b.cur.data2778, i64 %b.cur.len2776, i1 false)
  %b.grow2.nul787 = getelementptr i8, ptr %b.new.buf2786, i64 %b.cur.len2776
  store i8 0, ptr %b.grow2.nul787, align 1
  %b.new.data2.gep788 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load755, i32 0, i32 1
  store ptr %b.new.buf2786, ptr %b.new.data2.gep788, align 8
  %b.new.cap2.gep789 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load755, i32 0, i32 2
  store i64 %b.new.cap774, ptr %b.new.cap2.gep789, align 8
  br label %b.grow_done769

str_overflow_abort783:                            ; preds = %b.grow2767
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead784:                                    ; No predecessors!
  br label %b.new.buf.len2782

br.b1.88:                                         ; preds = %b.grow_done769
  store i8 10, ptr %b.rn.dst792, align 1
  br label %br.done.88

br.c2.88:                                         ; preds = %b.grow_done769
  br i1 true, label %br.b2.88, label %br.c3.88

br.b2.88:                                         ; preds = %br.c2.88
  store i8 -64, ptr %b.rn.dst792, align 1
  %br.dst1793 = getelementptr i8, ptr %b.rn.dst792, i64 1
  store i8 -118, ptr %br.dst1793, align 1
  br label %br.done.88

br.c3.88:                                         ; preds = %br.c2.88
  br i1 true, label %br.b3.88, label %br.b4.88

br.b3.88:                                         ; preds = %br.c3.88
  store i8 -32, ptr %b.rn.dst792, align 1
  %br.dst1.3794 = getelementptr i8, ptr %b.rn.dst792, i64 1
  store i8 -128, ptr %br.dst1.3794, align 1
  %br.dst2.3795 = getelementptr i8, ptr %b.rn.dst792, i64 2
  store i8 -118, ptr %br.dst2.3795, align 1
  br label %br.done.88

br.b4.88:                                         ; preds = %br.c3.88
  store i8 -16, ptr %b.rn.dst792, align 1
  %br.dst1.4796 = getelementptr i8, ptr %b.rn.dst792, i64 1
  store i8 -128, ptr %br.dst1.4796, align 1
  %br.dst2.4797 = getelementptr i8, ptr %b.rn.dst792, i64 2
  store i8 -128, ptr %br.dst2.4797, align 1
  %br.dst3.4798 = getelementptr i8, ptr %b.rn.dst792, i64 3
  store i8 -118, ptr %br.dst3.4798, align 1
  br label %br.done.88

br.done.88:                                       ; preds = %br.b4.88, %br.b3.88, %br.b2.88, %br.b1.88
  %br.nul799 = getelementptr i8, ptr %b.rn.data791, i64 %sum759
  store i8 0, ptr %br.nul799, align 1
  %b.len.gep800 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load755, i32 0, i32 0
  store i64 %sum759, ptr %b.len.gep800, align 8
  br label %choice.exit40

choice.case801:                                   ; preds = %choice.next753
  %b.load804 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len805 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load804, i32 0, i32 0
  %b.rn.cur.len806 = load i64, ptr %b.rn.cur.len805, align 8
  %b.rn.new.len807 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len806, i64 1)
  %sum808 = extractvalue { i64, i1 } %b.rn.new.len807, 0
  %ovf809 = extractvalue { i64, i1 } %b.rn.new.len807, 1
  br i1 %ovf809, label %str_overflow_abort811, label %b.rn.new.len810

choice.next802:                                   ; preds = %choice.next753
  %val.match852 = icmp eq i64 %var.load39, 37
  br i1 %val.match852, label %choice.case850, label %choice.next851

b.rn.new.len810:                                  ; preds = %abort.dead812, %choice.case801
  %b.cap813 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load804, i32 0, i32 2
  %b.cap814 = load i64, ptr %b.cap813, align 8
  %b.need.grow815 = icmp slt i64 %b.cap814, %sum808
  br i1 %b.need.grow815, label %b.grow2816, label %b.nogrow2817

str_overflow_abort811:                            ; preds = %choice.case801
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead812:                                    ; No predecessors!
  br label %b.rn.new.len810

b.grow2816:                                       ; preds = %b.rn.new.len810
  %b.cap2819 = mul i64 %b.cap814, 2
  %b.cap.small820 = icmp slt i64 %b.cap2819, 16
  %b.cap.grow821 = select i1 %b.cap.small820, i64 16, i64 %b.cap2819
  %b.cap.need822 = icmp slt i64 %b.cap.grow821, %sum808
  %b.new.cap823 = select i1 %b.cap.need822, i64 %sum808, i64 %b.cap.grow821
  %b.cur.len2824 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load804, i32 0, i32 0
  %b.cur.len2825 = load i64, ptr %b.cur.len2824, align 8
  %b.cur.data2826 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load804, i32 0, i32 1
  %b.cur.data2827 = load ptr, ptr %b.cur.data2826, align 8
  %b.new.buf.len2828 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap823, i64 1)
  %sum829 = extractvalue { i64, i1 } %b.new.buf.len2828, 0
  %ovf830 = extractvalue { i64, i1 } %b.new.buf.len2828, 1
  br i1 %ovf830, label %str_overflow_abort832, label %b.new.buf.len2831

b.nogrow2817:                                     ; preds = %b.rn.new.len810
  br label %b.grow_done818

b.grow_done818:                                   ; preds = %b.nogrow2817, %b.new.buf.len2831
  %b.rn.data839 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load804, i32 0, i32 1
  %b.rn.data840 = load ptr, ptr %b.rn.data839, align 8
  %b.rn.dst841 = getelementptr i8, ptr %b.rn.data840, i64 %b.rn.cur.len806
  br i1 true, label %br.b1.89, label %br.c2.89

b.new.buf.len2831:                                ; preds = %abort.dead833, %b.grow2816
  %arena.cur834 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2835 = call ptr @dva_arena_alloc(ptr %arena.cur834, i64 %sum829)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2835, ptr align 1 %b.cur.data2827, i64 %b.cur.len2825, i1 false)
  %b.grow2.nul836 = getelementptr i8, ptr %b.new.buf2835, i64 %b.cur.len2825
  store i8 0, ptr %b.grow2.nul836, align 1
  %b.new.data2.gep837 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load804, i32 0, i32 1
  store ptr %b.new.buf2835, ptr %b.new.data2.gep837, align 8
  %b.new.cap2.gep838 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load804, i32 0, i32 2
  store i64 %b.new.cap823, ptr %b.new.cap2.gep838, align 8
  br label %b.grow_done818

str_overflow_abort832:                            ; preds = %b.grow2816
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead833:                                    ; No predecessors!
  br label %b.new.buf.len2831

br.b1.89:                                         ; preds = %b.grow_done818
  store i8 9, ptr %b.rn.dst841, align 1
  br label %br.done.89

br.c2.89:                                         ; preds = %b.grow_done818
  br i1 true, label %br.b2.89, label %br.c3.89

br.b2.89:                                         ; preds = %br.c2.89
  store i8 -64, ptr %b.rn.dst841, align 1
  %br.dst1842 = getelementptr i8, ptr %b.rn.dst841, i64 1
  store i8 -119, ptr %br.dst1842, align 1
  br label %br.done.89

br.c3.89:                                         ; preds = %br.c2.89
  br i1 true, label %br.b3.89, label %br.b4.89

br.b3.89:                                         ; preds = %br.c3.89
  store i8 -32, ptr %b.rn.dst841, align 1
  %br.dst1.3843 = getelementptr i8, ptr %b.rn.dst841, i64 1
  store i8 -128, ptr %br.dst1.3843, align 1
  %br.dst2.3844 = getelementptr i8, ptr %b.rn.dst841, i64 2
  store i8 -119, ptr %br.dst2.3844, align 1
  br label %br.done.89

br.b4.89:                                         ; preds = %br.c3.89
  store i8 -16, ptr %b.rn.dst841, align 1
  %br.dst1.4845 = getelementptr i8, ptr %b.rn.dst841, i64 1
  store i8 -128, ptr %br.dst1.4845, align 1
  %br.dst2.4846 = getelementptr i8, ptr %b.rn.dst841, i64 2
  store i8 -128, ptr %br.dst2.4846, align 1
  %br.dst3.4847 = getelementptr i8, ptr %b.rn.dst841, i64 3
  store i8 -119, ptr %br.dst3.4847, align 1
  br label %br.done.89

br.done.89:                                       ; preds = %br.b4.89, %br.b3.89, %br.b2.89, %br.b1.89
  %br.nul848 = getelementptr i8, ptr %b.rn.data840, i64 %sum808
  store i8 0, ptr %br.nul848, align 1
  %b.len.gep849 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load804, i32 0, i32 0
  store i64 %sum808, ptr %b.len.gep849, align 8
  br label %choice.exit40

choice.case850:                                   ; preds = %choice.next802
  %b.load853 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len854 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load853, i32 0, i32 0
  %b.rn.cur.len855 = load i64, ptr %b.rn.cur.len854, align 8
  %b.rn.new.len856 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len855, i64 1)
  %sum857 = extractvalue { i64, i1 } %b.rn.new.len856, 0
  %ovf858 = extractvalue { i64, i1 } %b.rn.new.len856, 1
  br i1 %ovf858, label %str_overflow_abort860, label %b.rn.new.len859

choice.next851:                                   ; preds = %choice.next802
  %b.load899 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len900 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load899, i32 0, i32 0
  %b.rn.cur.len901 = load i64, ptr %b.rn.cur.len900, align 8
  %b.rn.new.len902 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len901, i64 1)
  %sum903 = extractvalue { i64, i1 } %b.rn.new.len902, 0
  %ovf904 = extractvalue { i64, i1 } %b.rn.new.len902, 1
  br i1 %ovf904, label %str_overflow_abort906, label %b.rn.new.len905

b.rn.new.len859:                                  ; preds = %abort.dead861, %choice.case850
  %b.cap862 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load853, i32 0, i32 2
  %b.cap863 = load i64, ptr %b.cap862, align 8
  %b.need.grow864 = icmp slt i64 %b.cap863, %sum857
  br i1 %b.need.grow864, label %b.grow2865, label %b.nogrow2866

str_overflow_abort860:                            ; preds = %choice.case850
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead861:                                    ; No predecessors!
  br label %b.rn.new.len859

b.grow2865:                                       ; preds = %b.rn.new.len859
  %b.cap2868 = mul i64 %b.cap863, 2
  %b.cap.small869 = icmp slt i64 %b.cap2868, 16
  %b.cap.grow870 = select i1 %b.cap.small869, i64 16, i64 %b.cap2868
  %b.cap.need871 = icmp slt i64 %b.cap.grow870, %sum857
  %b.new.cap872 = select i1 %b.cap.need871, i64 %sum857, i64 %b.cap.grow870
  %b.cur.len2873 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load853, i32 0, i32 0
  %b.cur.len2874 = load i64, ptr %b.cur.len2873, align 8
  %b.cur.data2875 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load853, i32 0, i32 1
  %b.cur.data2876 = load ptr, ptr %b.cur.data2875, align 8
  %b.new.buf.len2877 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap872, i64 1)
  %sum878 = extractvalue { i64, i1 } %b.new.buf.len2877, 0
  %ovf879 = extractvalue { i64, i1 } %b.new.buf.len2877, 1
  br i1 %ovf879, label %str_overflow_abort881, label %b.new.buf.len2880

b.nogrow2866:                                     ; preds = %b.rn.new.len859
  br label %b.grow_done867

b.grow_done867:                                   ; preds = %b.nogrow2866, %b.new.buf.len2880
  %b.rn.data888 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load853, i32 0, i32 1
  %b.rn.data889 = load ptr, ptr %b.rn.data888, align 8
  %b.rn.dst890 = getelementptr i8, ptr %b.rn.data889, i64 %b.rn.cur.len855
  br i1 true, label %br.b1.90, label %br.c2.90

b.new.buf.len2880:                                ; preds = %abort.dead882, %b.grow2865
  %arena.cur883 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2884 = call ptr @dva_arena_alloc(ptr %arena.cur883, i64 %sum878)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2884, ptr align 1 %b.cur.data2876, i64 %b.cur.len2874, i1 false)
  %b.grow2.nul885 = getelementptr i8, ptr %b.new.buf2884, i64 %b.cur.len2874
  store i8 0, ptr %b.grow2.nul885, align 1
  %b.new.data2.gep886 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load853, i32 0, i32 1
  store ptr %b.new.buf2884, ptr %b.new.data2.gep886, align 8
  %b.new.cap2.gep887 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load853, i32 0, i32 2
  store i64 %b.new.cap872, ptr %b.new.cap2.gep887, align 8
  br label %b.grow_done867

str_overflow_abort881:                            ; preds = %b.grow2865
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead882:                                    ; No predecessors!
  br label %b.new.buf.len2880

br.b1.90:                                         ; preds = %b.grow_done867
  store i8 37, ptr %b.rn.dst890, align 1
  br label %br.done.90

br.c2.90:                                         ; preds = %b.grow_done867
  br i1 true, label %br.b2.90, label %br.c3.90

br.b2.90:                                         ; preds = %br.c2.90
  store i8 -64, ptr %b.rn.dst890, align 1
  %br.dst1891 = getelementptr i8, ptr %b.rn.dst890, i64 1
  store i8 -91, ptr %br.dst1891, align 1
  br label %br.done.90

br.c3.90:                                         ; preds = %br.c2.90
  br i1 true, label %br.b3.90, label %br.b4.90

br.b3.90:                                         ; preds = %br.c3.90
  store i8 -32, ptr %b.rn.dst890, align 1
  %br.dst1.3892 = getelementptr i8, ptr %b.rn.dst890, i64 1
  store i8 -128, ptr %br.dst1.3892, align 1
  %br.dst2.3893 = getelementptr i8, ptr %b.rn.dst890, i64 2
  store i8 -91, ptr %br.dst2.3893, align 1
  br label %br.done.90

br.b4.90:                                         ; preds = %br.c3.90
  store i8 -16, ptr %b.rn.dst890, align 1
  %br.dst1.4894 = getelementptr i8, ptr %b.rn.dst890, i64 1
  store i8 -128, ptr %br.dst1.4894, align 1
  %br.dst2.4895 = getelementptr i8, ptr %b.rn.dst890, i64 2
  store i8 -128, ptr %br.dst2.4895, align 1
  %br.dst3.4896 = getelementptr i8, ptr %b.rn.dst890, i64 3
  store i8 -91, ptr %br.dst3.4896, align 1
  br label %br.done.90

br.done.90:                                       ; preds = %br.b4.90, %br.b3.90, %br.b2.90, %br.b1.90
  %br.nul897 = getelementptr i8, ptr %b.rn.data889, i64 %sum857
  store i8 0, ptr %br.nul897, align 1
  %b.len.gep898 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load853, i32 0, i32 0
  store i64 %sum857, ptr %b.len.gep898, align 8
  br label %choice.exit40

b.rn.new.len905:                                  ; preds = %abort.dead907, %choice.next851
  %b.cap908 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load899, i32 0, i32 2
  %b.cap909 = load i64, ptr %b.cap908, align 8
  %b.need.grow910 = icmp slt i64 %b.cap909, %sum903
  br i1 %b.need.grow910, label %b.grow2911, label %b.nogrow2912

str_overflow_abort906:                            ; preds = %choice.next851
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead907:                                    ; No predecessors!
  br label %b.rn.new.len905

b.grow2911:                                       ; preds = %b.rn.new.len905
  %b.cap2914 = mul i64 %b.cap909, 2
  %b.cap.small915 = icmp slt i64 %b.cap2914, 16
  %b.cap.grow916 = select i1 %b.cap.small915, i64 16, i64 %b.cap2914
  %b.cap.need917 = icmp slt i64 %b.cap.grow916, %sum903
  %b.new.cap918 = select i1 %b.cap.need917, i64 %sum903, i64 %b.cap.grow916
  %b.cur.len2919 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load899, i32 0, i32 0
  %b.cur.len2920 = load i64, ptr %b.cur.len2919, align 8
  %b.cur.data2921 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load899, i32 0, i32 1
  %b.cur.data2922 = load ptr, ptr %b.cur.data2921, align 8
  %b.new.buf.len2923 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap918, i64 1)
  %sum924 = extractvalue { i64, i1 } %b.new.buf.len2923, 0
  %ovf925 = extractvalue { i64, i1 } %b.new.buf.len2923, 1
  br i1 %ovf925, label %str_overflow_abort927, label %b.new.buf.len2926

b.nogrow2912:                                     ; preds = %b.rn.new.len905
  br label %b.grow_done913

b.grow_done913:                                   ; preds = %b.nogrow2912, %b.new.buf.len2926
  %b.rn.data934 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load899, i32 0, i32 1
  %b.rn.data935 = load ptr, ptr %b.rn.data934, align 8
  %b.rn.dst936 = getelementptr i8, ptr %b.rn.data935, i64 %b.rn.cur.len901
  br i1 true, label %br.b1.91, label %br.c2.91

b.new.buf.len2926:                                ; preds = %abort.dead928, %b.grow2911
  %arena.cur929 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2930 = call ptr @dva_arena_alloc(ptr %arena.cur929, i64 %sum924)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2930, ptr align 1 %b.cur.data2922, i64 %b.cur.len2920, i1 false)
  %b.grow2.nul931 = getelementptr i8, ptr %b.new.buf2930, i64 %b.cur.len2920
  store i8 0, ptr %b.grow2.nul931, align 1
  %b.new.data2.gep932 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load899, i32 0, i32 1
  store ptr %b.new.buf2930, ptr %b.new.data2.gep932, align 8
  %b.new.cap2.gep933 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load899, i32 0, i32 2
  store i64 %b.new.cap918, ptr %b.new.cap2.gep933, align 8
  br label %b.grow_done913

str_overflow_abort927:                            ; preds = %b.grow2911
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead928:                                    ; No predecessors!
  br label %b.new.buf.len2926

br.b1.91:                                         ; preds = %b.grow_done913
  store i8 37, ptr %b.rn.dst936, align 1
  br label %br.done.91

br.c2.91:                                         ; preds = %b.grow_done913
  br i1 true, label %br.b2.91, label %br.c3.91

br.b2.91:                                         ; preds = %br.c2.91
  store i8 -64, ptr %b.rn.dst936, align 1
  %br.dst1937 = getelementptr i8, ptr %b.rn.dst936, i64 1
  store i8 -91, ptr %br.dst1937, align 1
  br label %br.done.91

br.c3.91:                                         ; preds = %br.c2.91
  br i1 true, label %br.b3.91, label %br.b4.91

br.b3.91:                                         ; preds = %br.c3.91
  store i8 -32, ptr %b.rn.dst936, align 1
  %br.dst1.3938 = getelementptr i8, ptr %b.rn.dst936, i64 1
  store i8 -128, ptr %br.dst1.3938, align 1
  %br.dst2.3939 = getelementptr i8, ptr %b.rn.dst936, i64 2
  store i8 -91, ptr %br.dst2.3939, align 1
  br label %br.done.91

br.b4.91:                                         ; preds = %br.c3.91
  store i8 -16, ptr %b.rn.dst936, align 1
  %br.dst1.4940 = getelementptr i8, ptr %b.rn.dst936, i64 1
  store i8 -128, ptr %br.dst1.4940, align 1
  %br.dst2.4941 = getelementptr i8, ptr %b.rn.dst936, i64 2
  store i8 -128, ptr %br.dst2.4941, align 1
  %br.dst3.4942 = getelementptr i8, ptr %b.rn.dst936, i64 3
  store i8 -91, ptr %br.dst3.4942, align 1
  br label %br.done.91

br.done.91:                                       ; preds = %br.b4.91, %br.b3.91, %br.b2.91, %br.b1.91
  %br.nul943 = getelementptr i8, ptr %b.rn.data935, i64 %sum903
  store i8 0, ptr %br.nul943, align 1
  %b.len.gep944 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load899, i32 0, i32 0
  store i64 %sum903, ptr %b.len.gep944, align 8
  %b.load945 = load ptr, ptr %var.b, align 8
  %var.load946 = load i64, ptr %var.spec, align 8
  %b.b.ge0947 = icmp sge i64 %var.load946, 0
  %b.b.le255948 = icmp sle i64 %var.load946, 255
  %b.byte.range949 = and i1 %b.b.ge0947, %b.b.le255948
  br i1 %b.byte.range949, label %b.byte_ok950, label %b.byte_err951

b.byte_ok950:                                     ; preds = %abort.dead952, %br.done.91
  %b.byte.i8953 = trunc i64 %var.load946 to i8
  %b.len954 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load945, i32 0, i32 0
  %b.len955 = load i64, ptr %b.len954, align 8
  %b.cap956 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load945, i32 0, i32 2
  %b.cap957 = load i64, ptr %b.cap956, align 8
  %b.data958 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load945, i32 0, i32 1
  %b.data959 = load ptr, ptr %b.data958, align 8
  %b.needs.grow960 = icmp eq i64 %b.len955, %b.cap957
  br i1 %b.needs.grow960, label %b.grow961, label %b.nogrow962

b.byte_err951:                                    ; preds = %br.done.91
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead952:                                    ; No predecessors!
  br label %b.byte_ok950

b.grow961:                                        ; preds = %b.byte_ok950
  %b.cap2964 = mul i64 %b.cap957, 2
  %b.cap.small965 = icmp slt i64 %b.cap2964, 16
  %b.new.cap966 = select i1 %b.cap.small965, i64 16, i64 %b.cap2964
  %b.new.buf.len967 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap966, i64 1)
  %sum968 = extractvalue { i64, i1 } %b.new.buf.len967, 0
  %ovf969 = extractvalue { i64, i1 } %b.new.buf.len967, 1
  br i1 %ovf969, label %str_overflow_abort971, label %b.new.buf.len970

b.nogrow962:                                      ; preds = %b.byte_ok950
  br label %b.push_done963

b.push_done963:                                   ; preds = %b.nogrow962, %b.new.buf.len970
  %b.cur.data978 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load945, i32 0, i32 1
  %b.cur.data979 = load ptr, ptr %b.cur.data978, align 8
  %b.cur.len980 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load945, i32 0, i32 0
  %b.cur.len981 = load i64, ptr %b.cur.len980, align 8
  %b.byte.gep982 = getelementptr i8, ptr %b.cur.data979, i64 %b.cur.len981
  store i8 %b.byte.i8953, ptr %b.byte.gep982, align 1
  %b.next.len983 = add i64 %b.cur.len981, 1
  %b.nul984 = getelementptr i8, ptr %b.cur.data979, i64 %b.next.len983
  store i8 0, ptr %b.nul984, align 1
  %b.len.gep985 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load945, i32 0, i32 0
  store i64 %b.next.len983, ptr %b.len.gep985, align 8
  br label %choice.exit40

b.new.buf.len970:                                 ; preds = %abort.dead972, %b.grow961
  %arena.cur973 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf974 = call ptr @dva_arena_alloc(ptr %arena.cur973, i64 %sum968)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf974, ptr align 1 %b.data959, i64 %b.len955, i1 false)
  %b.grow.nul975 = getelementptr i8, ptr %b.new.buf974, i64 %b.len955
  store i8 0, ptr %b.grow.nul975, align 1
  %b.new.data.gep976 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load945, i32 0, i32 1
  store ptr %b.new.buf974, ptr %b.new.data.gep976, align 8
  %b.new.cap.gep977 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load945, i32 0, i32 2
  store i64 %b.new.cap966, ptr %b.new.cap.gep977, align 8
  br label %b.push_done963

str_overflow_abort971:                            ; preds = %b.grow961
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead972:                                    ; No predecessors!
  br label %b.new.buf.len970

b.byte_ok993:                                     ; preds = %abort.dead995, %choice.else
  %b.byte.i8996 = trunc i64 %var.load989 to i8
  %b.len997 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load988, i32 0, i32 0
  %b.len998 = load i64, ptr %b.len997, align 8
  %b.cap999 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load988, i32 0, i32 2
  %b.cap1000 = load i64, ptr %b.cap999, align 8
  %b.data1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load988, i32 0, i32 1
  %b.data1002 = load ptr, ptr %b.data1001, align 8
  %b.needs.grow1003 = icmp eq i64 %b.len998, %b.cap1000
  br i1 %b.needs.grow1003, label %b.grow1004, label %b.nogrow1005

b.byte_err994:                                    ; preds = %choice.else
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead995:                                    ; No predecessors!
  br label %b.byte_ok993

b.grow1004:                                       ; preds = %b.byte_ok993
  %b.cap21007 = mul i64 %b.cap1000, 2
  %b.cap.small1008 = icmp slt i64 %b.cap21007, 16
  %b.new.cap1009 = select i1 %b.cap.small1008, i64 16, i64 %b.cap21007
  %b.new.buf.len1010 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1009, i64 1)
  %sum1011 = extractvalue { i64, i1 } %b.new.buf.len1010, 0
  %ovf1012 = extractvalue { i64, i1 } %b.new.buf.len1010, 1
  br i1 %ovf1012, label %str_overflow_abort1014, label %b.new.buf.len1013

b.nogrow1005:                                     ; preds = %b.byte_ok993
  br label %b.push_done1006

b.push_done1006:                                  ; preds = %b.nogrow1005, %b.new.buf.len1013
  %b.cur.data1021 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load988, i32 0, i32 1
  %b.cur.data1022 = load ptr, ptr %b.cur.data1021, align 8
  %b.cur.len1023 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load988, i32 0, i32 0
  %b.cur.len1024 = load i64, ptr %b.cur.len1023, align 8
  %b.byte.gep1025 = getelementptr i8, ptr %b.cur.data1022, i64 %b.cur.len1024
  store i8 %b.byte.i8996, ptr %b.byte.gep1025, align 1
  %b.next.len1026 = add i64 %b.cur.len1024, 1
  %b.nul1027 = getelementptr i8, ptr %b.cur.data1022, i64 %b.next.len1026
  store i8 0, ptr %b.nul1027, align 1
  %b.len.gep1028 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load988, i32 0, i32 0
  store i64 %b.next.len1026, ptr %b.len.gep1028, align 8
  %var.load1029 = load i64, ptr %"var.i'", align 8
  %addtmp1030 = add i64 %var.load1029, 1
  store i64 %addtmp1030, ptr %"var.i'", align 8
  br label %choice.exit21

b.new.buf.len1013:                                ; preds = %abort.dead1015, %b.grow1004
  %arena.cur1016 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf1017 = call ptr @dva_arena_alloc(ptr %arena.cur1016, i64 %sum1011)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1017, ptr align 1 %b.data1002, i64 %b.len998, i1 false)
  %b.grow.nul1018 = getelementptr i8, ptr %b.new.buf1017, i64 %b.len998
  store i8 0, ptr %b.grow.nul1018, align 1
  %b.new.data.gep1019 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load988, i32 0, i32 1
  store ptr %b.new.buf1017, ptr %b.new.data.gep1019, align 8
  %b.new.cap.gep1020 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load988, i32 0, i32 2
  store i64 %b.new.cap1009, ptr %b.new.cap.gep1020, align 8
  br label %b.push_done1006

str_overflow_abort1014:                           ; preds = %b.grow1004
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1015:                                   ; No predecessors!
  br label %b.new.buf.len1013

b.freeze.check:                                   ; preds = %loop.exit.84
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data1033, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data1033, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data1033, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len1032, 1
  %arena.cur1034 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur1034, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data1033, i64 %b.freeze.len1032, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len1032
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.84
  %b.freeze.data1035 = phi ptr [ %b.freeze.data1033, %loop.exit.84 ], [ %b.freeze.data1033, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur1036 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur1036, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len1032, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data1035, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1031, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1031, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1031, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #7 {
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #0 {
entry:
  %fmt.tmp = alloca [24 x i8], align 1
  %fmt.is.zero = icmp eq i64 %1, 0
  br i1 %fmt.is.zero, label %zero, label %nonzero

zero:                                             ; preds = %entry
  store i8 48, ptr %0, align 1
  %fmt.z.nul = getelementptr i8, ptr %0, i64 1
  store i8 0, ptr %fmt.z.nul, align 1
  ret i64 1

nonzero:                                          ; preds = %entry
  %fmt.slt = icmp slt i64 %1, 0
  %fmt.not.u = xor i1 %2, true
  %fmt.is.neg = and i1 %fmt.not.u, %fmt.slt
  %fmt.neg = sub i64 0, %1
  %fmt.abs = select i1 %fmt.is.neg, i64 %fmt.neg, i64 %1
  br label %divloop

divloop:                                          ; preds = %divloop, %nonzero
  %fmt.n = phi i64 [ %fmt.abs, %nonzero ], [ %fmt.quot, %divloop ]
  %fmt.k = phi i64 [ 0, %nonzero ], [ %fmt.k.next, %divloop ]
  %fmt.rem = urem i64 %fmt.n, 10
  %fmt.quot = udiv i64 %fmt.n, 10
  %fmt.r8 = trunc i64 %fmt.rem to i8
  %fmt.dig = add i8 %fmt.r8, 48
  %fmt.tslot = getelementptr i8, ptr %fmt.tmp, i64 %fmt.k
  store i8 %fmt.dig, ptr %fmt.tslot, align 1
  %fmt.k.next = add i64 %fmt.k, 1
  %fmt.more = icmp ne i64 %fmt.quot, 0
  br i1 %fmt.more, label %divloop, label %sign

sign:                                             ; preds = %divloop
  br i1 %fmt.is.neg, label %negstore, label %copypre

negstore:                                         ; preds = %sign
  store i8 45, ptr %0, align 1
  br label %copypre

copypre:                                          ; preds = %negstore, %sign
  %fmt.off = phi i64 [ 0, %sign ], [ 1, %negstore ]
  br label %copyloop

copyloop:                                         ; preds = %copyloop, %copypre
  %fmt.i = phi i64 [ 0, %copypre ], [ %fmt.i.next, %copyloop ]
  %fmt.km1 = sub i64 %fmt.k.next, 1
  %fmt.sidx = sub i64 %fmt.km1, %fmt.i
  %fmt.sptr = getelementptr i8, ptr %fmt.tmp, i64 %fmt.sidx
  %fmt.ch = load i8, ptr %fmt.sptr, align 1
  %fmt.didx = add i64 %fmt.off, %fmt.i
  %fmt.dptr = getelementptr i8, ptr %0, i64 %fmt.didx
  store i8 %fmt.ch, ptr %fmt.dptr, align 1
  %fmt.i.next = add i64 %fmt.i, 1
  %fmt.cmore = icmp ne i64 %fmt.i.next, %fmt.k.next
  br i1 %fmt.cmore, label %copyloop, label %done

done:                                             ; preds = %copyloop
  %fmt.tot = add i64 %fmt.off, %fmt.k.next
  %fmt.nul = getelementptr i8, ptr %0, i64 %fmt.tot
  store i8 0, ptr %fmt.nul, align 1
  ret i64 %fmt.tot
}

define ptr @"time::parse_tm"(ptr %0, ptr %1) #0 {
entry:
  %var.fmt_pat = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  store ptr %0, ptr %var.value, align 8
  store ptr %1, ptr %var.fmt_pat, align 8
  %var.load = load ptr, ptr %var.value, align 8
  %var.load1 = load ptr, ptr %var.fmt_pat, align 8
  %call.res = call ptr @"time::parse_tm_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(ptr %var.load, ptr %var.load1)
  ret ptr %call.res
}

define internal ptr @"time::parse_tm_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(ptr %0, ptr %1) #0 {
entry:
  %var.end = alloca ptr, align 8
  %"var.tm'" = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.93 = alloca i64, align 8
  %loop.idx.93 = alloca i64, align 8
  %var.fmt_pat = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  store ptr %0, ptr %var.value, align 8
  store ptr %1, ptr %var.fmt_pat, align 8
  %var.load = load ptr, ptr %var.value, align 8
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
  store i64 0, ptr %loop.idx.93, align 8
  br label %loop.header.93

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.93:                                   ; preds = %loop.latch.93, %str_ok
  %counter.load = load i64, ptr %loop.idx.93, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query2
  br i1 %loop.cond, label %loop.body.93, label %loop.exit.nat.93

loop.body.93:                                     ; preds = %loop.header.93
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.93, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load3 = load ptr, ptr %var.value, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %var.load7 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load7, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.93:                                 ; preds = %loop.header.93
  br label %loop.exit.93

loop.latch.93:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.93, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.exit.93:                                     ; preds = %loop.exit.nat.93
  %var.load8 = load ptr, ptr @"var.sys::addr_null", align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 0
  store i32 0, ptr %rec.fld, align 4
  %rec.fld9 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 1
  store i32 0, ptr %rec.fld9, align 4
  %rec.fld10 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 2
  store i32 0, ptr %rec.fld10, align 4
  %rec.fld11 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 3
  store i32 0, ptr %rec.fld11, align 4
  %rec.fld12 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 4
  store i32 0, ptr %rec.fld12, align 4
  %rec.fld13 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 5
  store i32 0, ptr %rec.fld13, align 4
  %rec.fld14 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 6
  store i32 0, ptr %rec.fld14, align 4
  %rec.fld15 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 7
  store i32 0, ptr %rec.fld15, align 4
  %rec.fld16 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 8
  store i32 0, ptr %rec.fld16, align 4
  %rec.fld17 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 9
  store i32 0, ptr %rec.fld17, align 4
  %rec.fld18 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld18, align 8
  %rec.fld19 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 11
  store ptr %var.load8, ptr %rec.fld19, align 8
  store ptr %rec.alloc, ptr %"var.tm'", align 8
  %var.load20 = load ptr, ptr %var.value, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %arg.str.ptr21 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr22 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %arg.str.ptr23 = load i64, ptr %arg.str.ptr22, align 8
  %arg.str.ptr24 = and i64 %arg.str.ptr23, 281474976710655
  %str.tag25 = lshr i64 %arg.str.ptr23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

idx_big_check:                                    ; preds = %loop.body.93
  %idx.big = icmp sge i64 %var.load7, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %var.load7
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %loop.body.93
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %idx_ok
  br label %loop.latch.93

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok26:                                         ; preds = %tag.slow_check31, %loop.exit.93
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr21, i64 %arg.str.ptr24
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr32, label %nulcopy

tag.slow_check31:                                 ; preds = %loop.exit.93
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

arg.str.ptr32:                                    ; preds = %str_ok26
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok26
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr24, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len33

nulmerge:                                         ; preds = %nulcopy.len33, %arg.str.ptr32
  %arg.str.ptr36 = phi ptr [ %arg.str.ptr21, %arg.str.ptr32 ], [ %nulcopy.buf, %nulcopy.len33 ]
  %var.load37 = load ptr, ptr %var.fmt_pat, align 8
  %arg.str.ptr38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %arg.str.ptr39 = load ptr, ptr %arg.str.ptr38, align 8
  %arg.str.ptr40 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %arg.str.ptr41 = load i64, ptr %arg.str.ptr40, align 8
  %arg.str.ptr42 = and i64 %arg.str.ptr41, 281474976710655
  %str.tag43 = lshr i64 %arg.str.ptr41, 48
  %tag.immortal45 = icmp eq i64 %str.tag43, 0
  %active.gen46 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current47 = icmp eq i64 %str.tag43, %active.gen46
  %tag.fast.ok48 = or i1 %tag.immortal45, %tag.current47
  br i1 %tag.fast.ok48, label %str_ok44, label %tag.slow_check49

nulcopy.len33:                                    ; preds = %abort.dead34, %nulcopy
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr21, i64 %arg.str.ptr24, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr24
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %nulcopy.len33

str_ok44:                                         ; preds = %tag.slow_check49, %nulmerge
  %nulcheck.gep50 = getelementptr i8, ptr %arg.str.ptr39, i64 %arg.str.ptr42
  %nulcheck.byte51 = load i8, ptr %nulcheck.gep50, align 1
  %nulcheck52 = icmp eq i8 %nulcheck.byte51, 0
  br i1 %nulcheck52, label %arg.str.ptr53, label %nulcopy54

tag.slow_check49:                                 ; preds = %nulmerge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag43)
  br label %str_ok44

arg.str.ptr53:                                    ; preds = %str_ok44
  br label %nulmerge55

nulcopy54:                                        ; preds = %str_ok44
  %nulcopy.len56 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr42, i64 1)
  %sum57 = extractvalue { i64, i1 } %nulcopy.len56, 0
  %ovf58 = extractvalue { i64, i1 } %nulcopy.len56, 1
  br i1 %ovf58, label %str_overflow_abort60, label %nulcopy.len59

nulmerge55:                                       ; preds = %nulcopy.len59, %arg.str.ptr53
  %arg.str.ptr65 = phi ptr [ %arg.str.ptr39, %arg.str.ptr53 ], [ %nulcopy.buf63, %nulcopy.len59 ]
  %var.load66 = load ptr, ptr %"var.tm'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load66 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @strptime(ptr %arg.str.ptr36, ptr %arg.str.ptr65, ptr %addr.ffi.clean)
  store ptr %call.res, ptr %var.end, align 8
  %var.load67 = load ptr, ptr %var.end, align 8
  %var.load68 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load67 to i64
  %ptr.int.r = ptrtoint ptr %var.load68 to i64
  %cmptmp69 = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp69, label %choice.then70, label %choice.exit71

nulcopy.len59:                                    ; preds = %abort.dead61, %nulcopy54
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %sum57)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf63, ptr align 1 %arg.str.ptr39, i64 %arg.str.ptr42, i1 false)
  %nulcopy.nul64 = getelementptr i8, ptr %nulcopy.buf63, i64 %arg.str.ptr42
  store i8 0, ptr %nulcopy.nul64, align 1
  br label %nulmerge55

str_overflow_abort60:                             ; preds = %nulcopy54
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %nulcopy.len59

choice.then70:                                    ; preds = %nulmerge55
  ret ptr null

choice.exit71:                                    ; preds = %ret.dead72, %nulmerge55
  %var.load73 = load ptr, ptr %var.end, align 8
  %raw.int = ptrtoint ptr %var.load73 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal74 = icmp eq i64 %addr.tag, 0
  %active.gen75 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current76 = icmp eq i64 %addr.tag, %active.gen75
  %tag.fast.ok77 = or i1 %tag.immortal74, %tag.current76
  br i1 %tag.fast.ok77, label %addr_ok, label %tag.slow_check78

ret.dead72:                                       ; No predecessors!
  br label %choice.exit71

addr_ok:                                          ; preds = %tag.slow_check78, %choice.exit71
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  %cmptmp79 = icmp ne i64 %coerce.zext, 0
  br i1 %cmptmp79, label %choice.then80, label %choice.exit81

tag.slow_check78:                                 ; preds = %choice.exit71
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then80:                                    ; preds = %addr_ok
  ret ptr null

choice.exit81:                                    ; preds = %ret.dead82, %addr_ok
  %var.load83 = load ptr, ptr %"var.tm'", align 8
  ret ptr %var.load83

ret.dead82:                                       ; No predecessors!
  br label %choice.exit81
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_addr_msg(i64 %0) #7 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %0)
  br i1 %tag.valid, label %valid, label %stale

valid:                                            ; preds = %entry
  ret void

stale:                                            ; preds = %entry
  call void @dva_abort_stale_addr_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_addr_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline "nounwind" }
