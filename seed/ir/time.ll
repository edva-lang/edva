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
declare void @exit(i32) #3

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
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
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
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead2:                                      ; No predecessors!
  br label %div.ok

div.not_zero6:                                    ; preds = %abort.dead8, %div.ok
  %div.is.min9 = icmp eq i64 %var.load3, -9223372036854775808
  %div.is.negone10 = icmp eq i64 %var.load4, -1
  %div.is.ovf11 = and i1 %div.is.min9, %div.is.negone10
  br i1 %div.is.ovf11, label %div.ovf_abort13, label %div.ok12

div.zero_abort7:                                  ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
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
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
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
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %arena.cur41 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %b.new.buf.len38
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

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
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %arena.cur42 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %arena.cur85 = call ptr @dva_arena_current()
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
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %arena.cur42 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %arena.cur86 = call ptr @dva_arena_current()
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
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %8 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %arena.cur129 = call ptr @dva_arena_current()
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
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur46 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur96 = call ptr @dva_arena_current()
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
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur47 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur47 = call ptr @dva_arena_current()
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
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur103 = call ptr @dva_arena_current()
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
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = call ptr @dva_arena_current()
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
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.rn.new.len7:                                    ; preds = %abort.dead9, %b.buf.len1
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap10 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap10, %sum5
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort8:                              ; preds = %b.buf.len1
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur18 = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %b.freeze.arena = call ptr @dva_arena_current()
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
  %arena.cur28 = call ptr @dva_arena_current()
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

define { i64, ptr } @"time::format_dt_iso_basic"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.dt = alloca ptr, align 8
  store ptr %0, ptr %var.dt, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 24, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = call ptr @dva_arena_current()
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
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.rn.new.len7:                                    ; preds = %abort.dead9, %b.buf.len1
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap10 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap10, %sum5
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort8:                              ; preds = %b.buf.len1
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur18 = call ptr @dva_arena_current()
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %b.freeze.arena = call ptr @dva_arena_current()
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
  %arena.cur28 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = call ptr @dva_arena_current()
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
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur7 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = call ptr @dva_arena_current()
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
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %arena.cur7 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i64, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i64 %divtmp, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds <{ i64, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 %modtmp, ptr %rec.fld3, align 8
  store ptr %rec.alloc, ptr %"var.req'", align 8
  %arena.cur4 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load3, 32
  %arena.cur4 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

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

b.buf.len5:                                       ; preds = %abort.dead6, %str_ok
  %arena.cur7 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
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
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead6:                                      ; No predecessors!
  br label %b.buf.len5

loop.header.84:                                   ; preds = %loop.latch.84, %b.buf.len5
  %counter.load = load i64, ptr %loop.idx.84, align 8
  br label %loop.body.84

loop.body.84:                                     ; preds = %loop.header.84
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.84, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load8 = load i64, ptr %"var.i'", align 8
  %var.load9 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sge i64 %var.load8, %var.load9
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.84:                                 ; No predecessors!
  br label %loop.exit.84

loop.latch.84:                                    ; preds = %choice.exit23
  %step.val = load i64, ptr %loop.step.84, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.84, align 8
  br label %loop.header.84

loop.exit.84:                                     ; preds = %choice.then, %loop.exit.nat.84
  %var.load1033 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1033, i32 0, i32 0
  %b.freeze.len1034 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1033, i32 0, i32 1
  %b.freeze.data1035 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then:                                      ; preds = %loop.body.84
  br label %loop.exit.84

choice.exit:                                      ; preds = %loop.body.84
  %var.load10 = load ptr, ptr %var.fmt, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load14, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load14, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead15, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load16 = load i64, ptr %var.ch, align 8
  %cmptmp17 = icmp eq i64 %var.load16, 37
  br i1 %cmptmp17, label %and.85.then, label %and.85.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %idx_ok

and.85.then:                                      ; preds = %idx_ok
  %var.load18 = load i64, ptr %"var.i'", align 8
  %addtmp19 = add i64 %var.load18, 1
  %var.load20 = load i64, ptr %var.len, align 8
  %cmptmp21 = icmp slt i64 %addtmp19, %var.load20
  br label %and.85.exit

and.85.else:                                      ; preds = %idx_ok
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %and.85.then
  %and.85.phi = phi i1 [ %cmptmp21, %and.85.then ], [ %cmptmp17, %and.85.else ]
  br i1 %and.85.phi, label %choice.then22, label %choice.else

choice.then22:                                    ; preds = %and.85.exit
  %var.load24 = load ptr, ptr %var.fmt, align 8
  %s.read.len25 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len25, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %"var.i'", align 8
  %addtmp31 = add i64 %var.load30, 1
  %idx.neg32 = icmp slt i64 %addtmp31, 0
  br i1 %idx.neg32, label %idx_oob35, label %idx_big_check33

choice.else:                                      ; preds = %and.85.exit
  %b.load990 = load ptr, ptr %var.b, align 8
  %var.load991 = load i64, ptr %var.ch, align 8
  %b.b.ge0992 = icmp sge i64 %var.load991, 0
  %b.b.le255993 = icmp sle i64 %var.load991, 255
  %b.byte.range994 = and i1 %b.b.ge0992, %b.b.le255993
  br i1 %b.byte.range994, label %b.byte_ok995, label %b.byte_err996

choice.exit23:                                    ; preds = %b.push_done1008, %choice.exit42
  br label %loop.latch.84

idx_big_check33:                                  ; preds = %choice.then22
  %idx.big36 = icmp sge i64 %addtmp31, %s.read.len27
  br i1 %idx.big36, label %idx_oob35, label %idx_ok34

idx_ok34:                                         ; preds = %abort.dead37, %idx_big_check33
  %s.byte.gep38 = getelementptr i8, ptr %s.read.data29, i64 %addtmp31
  %s.byte39 = load i8, ptr %s.byte.gep38, align 1
  %s.byte.val40 = zext i8 %s.byte39 to i64
  store i64 %s.byte.val40, ptr %var.spec, align 8
  %var.load41 = load i64, ptr %var.spec, align 8
  %val.match = icmp eq i64 %var.load41, 89
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob35:                                        ; preds = %idx_big_check33, %choice.then22
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %idx_ok34

choice.exit42:                                    ; preds = %b.push_done965, %br.done.90, %br.done.89, %br.done.88, %b.grow_done731, %choice.exit666, %choice.case650, %b.push_done627, %b.push_done572, %choice.case541, %b.grow_done515, %b.grow_done461, %b.grow_done406, %b.grow_done352, %br.done.87, %choice.case264, %choice.case259, %b.grow_done233, %b.grow_done180, %choice.case147, %choice.case140, %choice.exit138, %choice.case119, %choice.exit75, %choice.case59, %choice.case52, %choice.case45, %choice.case
  %var.load988 = load i64, ptr %"var.i'", align 8
  %addtmp989 = add i64 %var.load988, 2
  store i64 %addtmp989, ptr %"var.i'", align 8
  br label %choice.exit23

choice.case:                                      ; preds = %idx_ok34
  %var.load43 = load ptr, ptr %var.b, align 8
  %var.load44 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load44, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#pad4"(ptr %var.load43, i64 %fld.load)
  br label %choice.exit42

choice.next:                                      ; preds = %idx_ok34
  %val.match47 = icmp eq i64 %var.load41, 121
  br i1 %val.match47, label %choice.case45, label %choice.next46

choice.case45:                                    ; preds = %choice.next
  %var.load48 = load ptr, ptr %var.b, align 8
  %var.load49 = load ptr, ptr %var.dt, align 8
  %fld.gep50 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load49, i32 0, i32 0
  %fld.load51 = load i64, ptr %fld.gep50, align 8
  %modtmp = srem i64 %fld.load51, 100
  call void @"time::#pad2"(ptr %var.load48, i64 %modtmp)
  br label %choice.exit42

choice.next46:                                    ; preds = %choice.next
  %val.match54 = icmp eq i64 %var.load41, 109
  br i1 %val.match54, label %choice.case52, label %choice.next53

choice.case52:                                    ; preds = %choice.next46
  %var.load55 = load ptr, ptr %var.b, align 8
  %var.load56 = load ptr, ptr %var.dt, align 8
  %fld.gep57 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load56, i32 0, i32 1
  %fld.load58 = load i64, ptr %fld.gep57, align 8
  call void @"time::#pad2"(ptr %var.load55, i64 %fld.load58)
  br label %choice.exit42

choice.next53:                                    ; preds = %choice.next46
  %val.match61 = icmp eq i64 %var.load41, 100
  br i1 %val.match61, label %choice.case59, label %choice.next60

choice.case59:                                    ; preds = %choice.next53
  %var.load62 = load ptr, ptr %var.b, align 8
  %var.load63 = load ptr, ptr %var.dt, align 8
  %fld.gep64 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load63, i32 0, i32 2
  %fld.load65 = load i64, ptr %fld.gep64, align 8
  call void @"time::#pad2"(ptr %var.load62, i64 %fld.load65)
  br label %choice.exit42

choice.next60:                                    ; preds = %choice.next53
  %val.match68 = icmp eq i64 %var.load41, 101
  br i1 %val.match68, label %choice.case66, label %choice.next67

choice.case66:                                    ; preds = %choice.next60
  %var.load69 = load ptr, ptr %var.dt, align 8
  %fld.gep70 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load69, i32 0, i32 2
  %fld.load71 = load i64, ptr %fld.gep70, align 8
  %cmptmp72 = icmp slt i64 %fld.load71, 10
  br i1 %cmptmp72, label %choice.then73, label %choice.else74

choice.next67:                                    ; preds = %choice.next60
  %val.match121 = icmp eq i64 %var.load41, 72
  br i1 %val.match121, label %choice.case119, label %choice.next120

choice.then73:                                    ; preds = %choice.case66
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len76 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len76, i64 1)
  %sum77 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf78 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf78, label %str_overflow_abort80, label %b.rn.new.len79

choice.else74:                                    ; preds = %choice.case66
  %var.load115 = load ptr, ptr %var.b, align 8
  %var.load116 = load ptr, ptr %var.dt, align 8
  %fld.gep117 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load116, i32 0, i32 2
  %fld.load118 = load i64, ptr %fld.gep117, align 8
  call void @"time::#pad2"(ptr %var.load115, i64 %fld.load118)
  br label %choice.exit75

choice.exit75:                                    ; preds = %choice.else74, %b.push_done
  br label %choice.exit42

b.rn.new.len79:                                   ; preds = %abort.dead81, %choice.then73
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap82 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap82, %sum77
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort80:                             ; preds = %choice.then73
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead81:                                     ; No predecessors!
  br label %b.rn.new.len79

b.grow2:                                          ; preds = %b.rn.new.len79
  %b.cap2 = mul i64 %b.cap82, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum77
  %b.new.cap = select i1 %b.cap.need, i64 %sum77, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len283 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data284 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum85 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf86 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf86, label %str_overflow_abort88, label %b.new.buf.len287

b.nogrow2:                                        ; preds = %b.rn.new.len79
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len287
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data91 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data91, i64 %b.rn.cur.len76
  br i1 true, label %br.b1.86, label %br.c2.86

b.new.buf.len287:                                 ; preds = %abort.dead89, %b.grow2
  %arena.cur90 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 %sum85)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data284, i64 %b.cur.len283, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len283
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort88:                             ; preds = %b.grow2
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead89:                                     ; No predecessors!
  br label %b.new.buf.len287

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
  %br.nul = getelementptr i8, ptr %b.rn.data91, i64 %sum77
  store i8 0, ptr %br.nul, align 1
  %b.len.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum77, ptr %b.len.gep92, align 8
  %b.load93 = load ptr, ptr %var.b, align 8
  %var.load94 = load ptr, ptr %var.dt, align 8
  %fld.gep95 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load94, i32 0, i32 2
  %fld.load96 = load i64, ptr %fld.gep95, align 8
  %addtmp97 = add i64 48, %fld.load96
  %b.b.ge0 = icmp sge i64 %addtmp97, 0
  %b.b.le255 = icmp sle i64 %addtmp97, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %abort.dead98, %br.done.86
  %b.byte.i8 = trunc i64 %addtmp97 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 0
  %b.len99 = load i64, ptr %b.len, align 8
  %b.cap100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 2
  %b.cap101 = load i64, ptr %b.cap100, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 1
  %b.data102 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len99, %b.cap101
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %br.done.86
  %8 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead98:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2103 = mul i64 %b.cap101, 2
  %b.cap.small104 = icmp slt i64 %b.cap2103, 16
  %b.new.cap105 = select i1 %b.cap.small104, i64 16, i64 %b.cap2103
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap105, i64 1)
  %sum106 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf107 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf107, label %str_overflow_abort109, label %b.new.buf.len108

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len108
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 1
  %b.cur.data112 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 0
  %b.cur.len113 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data112, i64 %b.cur.len113
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len113, 1
  %b.nul = getelementptr i8, ptr %b.cur.data112, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep114, align 8
  br label %choice.exit75

b.new.buf.len108:                                 ; preds = %abort.dead110, %b.grow
  %arena.cur111 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 %sum106)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data102, i64 %b.len99, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len99
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load93, i32 0, i32 2
  store i64 %b.new.cap105, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort109:                            ; preds = %b.grow
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %b.new.buf.len108

choice.case119:                                   ; preds = %choice.next67
  %var.load122 = load ptr, ptr %var.b, align 8
  %var.load123 = load ptr, ptr %var.dt, align 8
  %fld.gep124 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load123, i32 0, i32 3
  %fld.load125 = load i64, ptr %fld.gep124, align 8
  call void @"time::#pad2"(ptr %var.load122, i64 %fld.load125)
  br label %choice.exit42

choice.next120:                                   ; preds = %choice.next67
  %val.match128 = icmp eq i64 %var.load41, 73
  br i1 %val.match128, label %choice.case126, label %choice.next127

choice.case126:                                   ; preds = %choice.next120
  %var.load129 = load ptr, ptr %var.dt, align 8
  %fld.gep130 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load129, i32 0, i32 3
  %fld.load131 = load i64, ptr %fld.gep130, align 8
  %modtmp132 = srem i64 %fld.load131, 12
  store i64 %modtmp132, ptr %var.h12, align 8
  %var.load133 = load ptr, ptr %var.b, align 8
  %var.load134 = load i64, ptr %var.h12, align 8
  %cmptmp135 = icmp eq i64 %var.load134, 0
  br i1 %cmptmp135, label %choice.then136, label %choice.else137

choice.next127:                                   ; preds = %choice.next120
  %val.match142 = icmp eq i64 %var.load41, 77
  br i1 %val.match142, label %choice.case140, label %choice.next141

choice.then136:                                   ; preds = %choice.case126
  br label %choice.exit138

choice.else137:                                   ; preds = %choice.case126
  %var.load139 = load i64, ptr %var.h12, align 8
  br label %choice.exit138

choice.exit138:                                   ; preds = %choice.else137, %choice.then136
  %choice.res = phi i64 [ 12, %choice.then136 ], [ %var.load139, %choice.else137 ]
  call void @"time::#pad2"(ptr %var.load133, i64 %choice.res)
  br label %choice.exit42

choice.case140:                                   ; preds = %choice.next127
  %var.load143 = load ptr, ptr %var.b, align 8
  %var.load144 = load ptr, ptr %var.dt, align 8
  %fld.gep145 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load144, i32 0, i32 4
  %fld.load146 = load i64, ptr %fld.gep145, align 8
  call void @"time::#pad2"(ptr %var.load143, i64 %fld.load146)
  br label %choice.exit42

choice.next141:                                   ; preds = %choice.next127
  %val.match149 = icmp eq i64 %var.load41, 83
  br i1 %val.match149, label %choice.case147, label %choice.next148

choice.case147:                                   ; preds = %choice.next141
  %var.load150 = load ptr, ptr %var.b, align 8
  %var.load151 = load ptr, ptr %var.dt, align 8
  %fld.gep152 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load151, i32 0, i32 5
  %fld.load153 = load i64, ptr %fld.gep152, align 8
  call void @"time::#pad2"(ptr %var.load150, i64 %fld.load153)
  br label %choice.exit42

choice.next148:                                   ; preds = %choice.next141
  %val.match156 = icmp eq i64 %var.load41, 112
  br i1 %val.match156, label %choice.case154, label %choice.next155

choice.case154:                                   ; preds = %choice.next148
  %b.load157 = load ptr, ptr %var.b, align 8
  %var.load158 = load ptr, ptr %var.dt, align 8
  %fld.gep159 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load158, i32 0, i32 3
  %fld.load160 = load i64, ptr %fld.gep159, align 8
  %cmptmp161 = icmp slt i64 %fld.load160, 12
  br i1 %cmptmp161, label %choice.then162, label %choice.else163

choice.next155:                                   ; preds = %choice.next148
  %val.match205 = icmp eq i64 %var.load41, 80
  br i1 %val.match205, label %choice.case203, label %choice.next204

choice.then162:                                   ; preds = %choice.case154
  br label %choice.exit164

choice.else163:                                   ; preds = %choice.case154
  br label %choice.exit164

choice.exit164:                                   ; preds = %choice.else163, %choice.then162
  %choice.res165 = phi ptr [ @str.37.struct, %choice.then162 ], [ @str.38.struct, %choice.else163 ]
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %choice.res165, i32 0, i32 0
  %app.str.len166 = load i64, ptr %app.str.len, align 8
  %app.str.len167 = and i64 %app.str.len166, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %choice.res165, i32 0, i32 1
  %app.str.data168 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 0
  %b.app.cur.len169 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len169, i64 %app.str.len167)
  %sum170 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf171 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf171, label %str_overflow_abort173, label %b.app.new.len172

b.app.new.len172:                                 ; preds = %abort.dead174, %choice.exit164
  %b.cap175 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 2
  %b.cap176 = load i64, ptr %b.cap175, align 8
  %b.need.grow177 = icmp slt i64 %b.cap176, %sum170
  br i1 %b.need.grow177, label %b.grow2178, label %b.nogrow2179

str_overflow_abort173:                            ; preds = %choice.exit164
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead174:                                    ; No predecessors!
  br label %b.app.new.len172

b.grow2178:                                       ; preds = %b.app.new.len172
  %b.cap2181 = mul i64 %b.cap176, 2
  %b.cap.small182 = icmp slt i64 %b.cap2181, 16
  %b.cap.grow183 = select i1 %b.cap.small182, i64 16, i64 %b.cap2181
  %b.cap.need184 = icmp slt i64 %b.cap.grow183, %sum170
  %b.new.cap185 = select i1 %b.cap.need184, i64 %sum170, i64 %b.cap.grow183
  %b.cur.len2186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 0
  %b.cur.len2187 = load i64, ptr %b.cur.len2186, align 8
  %b.cur.data2188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 1
  %b.cur.data2189 = load ptr, ptr %b.cur.data2188, align 8
  %b.new.buf.len2190 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap185, i64 1)
  %sum191 = extractvalue { i64, i1 } %b.new.buf.len2190, 0
  %ovf192 = extractvalue { i64, i1 } %b.new.buf.len2190, 1
  br i1 %ovf192, label %str_overflow_abort194, label %b.new.buf.len2193

b.nogrow2179:                                     ; preds = %b.app.new.len172
  br label %b.grow_done180

b.grow_done180:                                   ; preds = %b.nogrow2179, %b.new.buf.len2193
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 1
  %b.app.data201 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data201, i64 %b.app.cur.len169
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data168, i64 %app.str.len167, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data201, i64 %sum170
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 0
  store i64 %sum170, ptr %b.len.gep202, align 8
  br label %choice.exit42

b.new.buf.len2193:                                ; preds = %abort.dead195, %b.grow2178
  %arena.cur196 = call ptr @dva_arena_current()
  %b.new.buf2197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 %sum191)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2197, ptr align 1 %b.cur.data2189, i64 %b.cur.len2187, i1 false)
  %b.grow2.nul198 = getelementptr i8, ptr %b.new.buf2197, i64 %b.cur.len2187
  store i8 0, ptr %b.grow2.nul198, align 1
  %b.new.data2.gep199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 1
  store ptr %b.new.buf2197, ptr %b.new.data2.gep199, align 8
  %b.new.cap2.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load157, i32 0, i32 2
  store i64 %b.new.cap185, ptr %b.new.cap2.gep200, align 8
  br label %b.grow_done180

str_overflow_abort194:                            ; preds = %b.grow2178
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead195:                                    ; No predecessors!
  br label %b.new.buf.len2193

choice.case203:                                   ; preds = %choice.next155
  %b.load206 = load ptr, ptr %var.b, align 8
  %var.load207 = load ptr, ptr %var.dt, align 8
  %fld.gep208 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load207, i32 0, i32 3
  %fld.load209 = load i64, ptr %fld.gep208, align 8
  %cmptmp210 = icmp slt i64 %fld.load209, 12
  br i1 %cmptmp210, label %choice.then211, label %choice.else212

choice.next204:                                   ; preds = %choice.next155
  %val.match261 = icmp eq i64 %var.load41, 70
  br i1 %val.match261, label %choice.case259, label %choice.next260

choice.then211:                                   ; preds = %choice.case203
  br label %choice.exit213

choice.else212:                                   ; preds = %choice.case203
  br label %choice.exit213

choice.exit213:                                   ; preds = %choice.else212, %choice.then211
  %choice.res214 = phi ptr [ @str.39.struct, %choice.then211 ], [ @str.40.struct, %choice.else212 ]
  %app.str.len215 = getelementptr inbounds { i64, ptr }, ptr %choice.res214, i32 0, i32 0
  %app.str.len216 = load i64, ptr %app.str.len215, align 8
  %app.str.len217 = and i64 %app.str.len216, 281474976710655
  %app.str.data218 = getelementptr inbounds { i64, ptr }, ptr %choice.res214, i32 0, i32 1
  %app.str.data219 = load ptr, ptr %app.str.data218, align 8
  %b.app.cur.len220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 0
  %b.app.cur.len221 = load i64, ptr %b.app.cur.len220, align 8
  %b.app.new.len222 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len221, i64 %app.str.len217)
  %sum223 = extractvalue { i64, i1 } %b.app.new.len222, 0
  %ovf224 = extractvalue { i64, i1 } %b.app.new.len222, 1
  br i1 %ovf224, label %str_overflow_abort226, label %b.app.new.len225

b.app.new.len225:                                 ; preds = %abort.dead227, %choice.exit213
  %b.cap228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 2
  %b.cap229 = load i64, ptr %b.cap228, align 8
  %b.need.grow230 = icmp slt i64 %b.cap229, %sum223
  br i1 %b.need.grow230, label %b.grow2231, label %b.nogrow2232

str_overflow_abort226:                            ; preds = %choice.exit213
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead227:                                    ; No predecessors!
  br label %b.app.new.len225

b.grow2231:                                       ; preds = %b.app.new.len225
  %b.cap2234 = mul i64 %b.cap229, 2
  %b.cap.small235 = icmp slt i64 %b.cap2234, 16
  %b.cap.grow236 = select i1 %b.cap.small235, i64 16, i64 %b.cap2234
  %b.cap.need237 = icmp slt i64 %b.cap.grow236, %sum223
  %b.new.cap238 = select i1 %b.cap.need237, i64 %sum223, i64 %b.cap.grow236
  %b.cur.len2239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 0
  %b.cur.len2240 = load i64, ptr %b.cur.len2239, align 8
  %b.cur.data2241 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 1
  %b.cur.data2242 = load ptr, ptr %b.cur.data2241, align 8
  %b.new.buf.len2243 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap238, i64 1)
  %sum244 = extractvalue { i64, i1 } %b.new.buf.len2243, 0
  %ovf245 = extractvalue { i64, i1 } %b.new.buf.len2243, 1
  br i1 %ovf245, label %str_overflow_abort247, label %b.new.buf.len2246

b.nogrow2232:                                     ; preds = %b.app.new.len225
  br label %b.grow_done233

b.grow_done233:                                   ; preds = %b.nogrow2232, %b.new.buf.len2246
  %b.app.data254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 1
  %b.app.data255 = load ptr, ptr %b.app.data254, align 8
  %b.app.dst256 = getelementptr i8, ptr %b.app.data255, i64 %b.app.cur.len221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst256, ptr align 1 %app.str.data219, i64 %app.str.len217, i1 false)
  %b.app.nul257 = getelementptr i8, ptr %b.app.data255, i64 %sum223
  store i8 0, ptr %b.app.nul257, align 1
  %b.len.gep258 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 0
  store i64 %sum223, ptr %b.len.gep258, align 8
  br label %choice.exit42

b.new.buf.len2246:                                ; preds = %abort.dead248, %b.grow2231
  %arena.cur249 = call ptr @dva_arena_current()
  %b.new.buf2250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 %sum244)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2250, ptr align 1 %b.cur.data2242, i64 %b.cur.len2240, i1 false)
  %b.grow2.nul251 = getelementptr i8, ptr %b.new.buf2250, i64 %b.cur.len2240
  store i8 0, ptr %b.grow2.nul251, align 1
  %b.new.data2.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 1
  store ptr %b.new.buf2250, ptr %b.new.data2.gep252, align 8
  %b.new.cap2.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 2
  store i64 %b.new.cap238, ptr %b.new.cap2.gep253, align 8
  br label %b.grow_done233

str_overflow_abort247:                            ; preds = %b.grow2231
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead248:                                    ; No predecessors!
  br label %b.new.buf.len2246

choice.case259:                                   ; preds = %choice.next204
  %var.load262 = load ptr, ptr %var.b, align 8
  %var.load263 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_into"(ptr %var.load262, ptr %var.load263)
  br label %choice.exit42

choice.next260:                                   ; preds = %choice.next204
  %val.match266 = icmp eq i64 %var.load41, 84
  br i1 %val.match266, label %choice.case264, label %choice.next265

choice.case264:                                   ; preds = %choice.next260
  %var.load267 = load ptr, ptr %var.b, align 8
  %var.load268 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_into"(ptr %var.load267, ptr %var.load268)
  br label %choice.exit42

choice.next265:                                   ; preds = %choice.next260
  %val.match271 = icmp eq i64 %var.load41, 82
  br i1 %val.match271, label %choice.case269, label %choice.next270

choice.case269:                                   ; preds = %choice.next265
  %var.load272 = load ptr, ptr %var.b, align 8
  %var.load273 = load ptr, ptr %var.dt, align 8
  %fld.gep274 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load273, i32 0, i32 3
  %fld.load275 = load i64, ptr %fld.gep274, align 8
  call void @"time::#pad2"(ptr %var.load272, i64 %fld.load275)
  %b.load276 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 0
  %b.rn.cur.len278 = load i64, ptr %b.rn.cur.len277, align 8
  %b.rn.new.len279 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len278, i64 1)
  %sum280 = extractvalue { i64, i1 } %b.rn.new.len279, 0
  %ovf281 = extractvalue { i64, i1 } %b.rn.new.len279, 1
  br i1 %ovf281, label %str_overflow_abort283, label %b.rn.new.len282

choice.next270:                                   ; preds = %choice.next265
  %val.match328 = icmp eq i64 %var.load41, 97
  br i1 %val.match328, label %choice.case326, label %choice.next327

b.rn.new.len282:                                  ; preds = %abort.dead284, %choice.case269
  %b.cap285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 2
  %b.cap286 = load i64, ptr %b.cap285, align 8
  %b.need.grow287 = icmp slt i64 %b.cap286, %sum280
  br i1 %b.need.grow287, label %b.grow2288, label %b.nogrow2289

str_overflow_abort283:                            ; preds = %choice.case269
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead284:                                    ; No predecessors!
  br label %b.rn.new.len282

b.grow2288:                                       ; preds = %b.rn.new.len282
  %b.cap2291 = mul i64 %b.cap286, 2
  %b.cap.small292 = icmp slt i64 %b.cap2291, 16
  %b.cap.grow293 = select i1 %b.cap.small292, i64 16, i64 %b.cap2291
  %b.cap.need294 = icmp slt i64 %b.cap.grow293, %sum280
  %b.new.cap295 = select i1 %b.cap.need294, i64 %sum280, i64 %b.cap.grow293
  %b.cur.len2296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 0
  %b.cur.len2297 = load i64, ptr %b.cur.len2296, align 8
  %b.cur.data2298 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 1
  %b.cur.data2299 = load ptr, ptr %b.cur.data2298, align 8
  %b.new.buf.len2300 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap295, i64 1)
  %sum301 = extractvalue { i64, i1 } %b.new.buf.len2300, 0
  %ovf302 = extractvalue { i64, i1 } %b.new.buf.len2300, 1
  br i1 %ovf302, label %str_overflow_abort304, label %b.new.buf.len2303

b.nogrow2289:                                     ; preds = %b.rn.new.len282
  br label %b.grow_done290

b.grow_done290:                                   ; preds = %b.nogrow2289, %b.new.buf.len2303
  %b.rn.data311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 1
  %b.rn.data312 = load ptr, ptr %b.rn.data311, align 8
  %b.rn.dst313 = getelementptr i8, ptr %b.rn.data312, i64 %b.rn.cur.len278
  br i1 true, label %br.b1.87, label %br.c2.87

b.new.buf.len2303:                                ; preds = %abort.dead305, %b.grow2288
  %arena.cur306 = call ptr @dva_arena_current()
  %b.new.buf2307 = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 %sum301)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2307, ptr align 1 %b.cur.data2299, i64 %b.cur.len2297, i1 false)
  %b.grow2.nul308 = getelementptr i8, ptr %b.new.buf2307, i64 %b.cur.len2297
  store i8 0, ptr %b.grow2.nul308, align 1
  %b.new.data2.gep309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 1
  store ptr %b.new.buf2307, ptr %b.new.data2.gep309, align 8
  %b.new.cap2.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 2
  store i64 %b.new.cap295, ptr %b.new.cap2.gep310, align 8
  br label %b.grow_done290

str_overflow_abort304:                            ; preds = %b.grow2288
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead305:                                    ; No predecessors!
  br label %b.new.buf.len2303

br.b1.87:                                         ; preds = %b.grow_done290
  store i8 58, ptr %b.rn.dst313, align 1
  br label %br.done.87

br.c2.87:                                         ; preds = %b.grow_done290
  br i1 true, label %br.b2.87, label %br.c3.87

br.b2.87:                                         ; preds = %br.c2.87
  store i8 -64, ptr %b.rn.dst313, align 1
  %br.dst1314 = getelementptr i8, ptr %b.rn.dst313, i64 1
  store i8 -70, ptr %br.dst1314, align 1
  br label %br.done.87

br.c3.87:                                         ; preds = %br.c2.87
  br i1 true, label %br.b3.87, label %br.b4.87

br.b3.87:                                         ; preds = %br.c3.87
  store i8 -32, ptr %b.rn.dst313, align 1
  %br.dst1.3315 = getelementptr i8, ptr %b.rn.dst313, i64 1
  store i8 -128, ptr %br.dst1.3315, align 1
  %br.dst2.3316 = getelementptr i8, ptr %b.rn.dst313, i64 2
  store i8 -70, ptr %br.dst2.3316, align 1
  br label %br.done.87

br.b4.87:                                         ; preds = %br.c3.87
  store i8 -16, ptr %b.rn.dst313, align 1
  %br.dst1.4317 = getelementptr i8, ptr %b.rn.dst313, i64 1
  store i8 -128, ptr %br.dst1.4317, align 1
  %br.dst2.4318 = getelementptr i8, ptr %b.rn.dst313, i64 2
  store i8 -128, ptr %br.dst2.4318, align 1
  %br.dst3.4319 = getelementptr i8, ptr %b.rn.dst313, i64 3
  store i8 -70, ptr %br.dst3.4319, align 1
  br label %br.done.87

br.done.87:                                       ; preds = %br.b4.87, %br.b3.87, %br.b2.87, %br.b1.87
  %br.nul320 = getelementptr i8, ptr %b.rn.data312, i64 %sum280
  store i8 0, ptr %br.nul320, align 1
  %b.len.gep321 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 0
  store i64 %sum280, ptr %b.len.gep321, align 8
  %var.load322 = load ptr, ptr %var.b, align 8
  %var.load323 = load ptr, ptr %var.dt, align 8
  %fld.gep324 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load323, i32 0, i32 4
  %fld.load325 = load i64, ptr %fld.gep324, align 8
  call void @"time::#pad2"(ptr %var.load322, i64 %fld.load325)
  br label %choice.exit42

choice.case326:                                   ; preds = %choice.next270
  %b.load329 = load ptr, ptr %var.b, align 8
  %var.load330 = load ptr, ptr %var.dt, align 8
  %fld.gep331 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load330, i32 0, i32 7
  %fld.load332 = load i64, ptr %fld.gep331, align 8
  %call.res = call { i64, ptr } @"time::#short_weekday_name"(i64 %fld.load332)
  %arena.cur333 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len334 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %app.str.len335 = load i64, ptr %app.str.len334, align 8
  %app.str.len336 = and i64 %app.str.len335, 281474976710655
  %app.str.data337 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data338 = load ptr, ptr %app.str.data337, align 8
  %b.app.cur.len339 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load329, i32 0, i32 0
  %b.app.cur.len340 = load i64, ptr %b.app.cur.len339, align 8
  %b.app.new.len341 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len340, i64 %app.str.len336)
  %sum342 = extractvalue { i64, i1 } %b.app.new.len341, 0
  %ovf343 = extractvalue { i64, i1 } %b.app.new.len341, 1
  br i1 %ovf343, label %str_overflow_abort345, label %b.app.new.len344

choice.next327:                                   ; preds = %choice.next270
  %val.match380 = icmp eq i64 %var.load41, 65
  br i1 %val.match380, label %choice.case378, label %choice.next379

b.app.new.len344:                                 ; preds = %abort.dead346, %choice.case326
  %b.cap347 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load329, i32 0, i32 2
  %b.cap348 = load i64, ptr %b.cap347, align 8
  %b.need.grow349 = icmp slt i64 %b.cap348, %sum342
  br i1 %b.need.grow349, label %b.grow2350, label %b.nogrow2351

str_overflow_abort345:                            ; preds = %choice.case326
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead346:                                    ; No predecessors!
  br label %b.app.new.len344

b.grow2350:                                       ; preds = %b.app.new.len344
  %b.cap2353 = mul i64 %b.cap348, 2
  %b.cap.small354 = icmp slt i64 %b.cap2353, 16
  %b.cap.grow355 = select i1 %b.cap.small354, i64 16, i64 %b.cap2353
  %b.cap.need356 = icmp slt i64 %b.cap.grow355, %sum342
  %b.new.cap357 = select i1 %b.cap.need356, i64 %sum342, i64 %b.cap.grow355
  %b.cur.len2358 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load329, i32 0, i32 0
  %b.cur.len2359 = load i64, ptr %b.cur.len2358, align 8
  %b.cur.data2360 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load329, i32 0, i32 1
  %b.cur.data2361 = load ptr, ptr %b.cur.data2360, align 8
  %b.new.buf.len2362 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap357, i64 1)
  %sum363 = extractvalue { i64, i1 } %b.new.buf.len2362, 0
  %ovf364 = extractvalue { i64, i1 } %b.new.buf.len2362, 1
  br i1 %ovf364, label %str_overflow_abort366, label %b.new.buf.len2365

b.nogrow2351:                                     ; preds = %b.app.new.len344
  br label %b.grow_done352

b.grow_done352:                                   ; preds = %b.nogrow2351, %b.new.buf.len2365
  %b.app.data373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load329, i32 0, i32 1
  %b.app.data374 = load ptr, ptr %b.app.data373, align 8
  %b.app.dst375 = getelementptr i8, ptr %b.app.data374, i64 %b.app.cur.len340
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst375, ptr align 1 %app.str.data338, i64 %app.str.len336, i1 false)
  %b.app.nul376 = getelementptr i8, ptr %b.app.data374, i64 %sum342
  store i8 0, ptr %b.app.nul376, align 1
  %b.len.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load329, i32 0, i32 0
  store i64 %sum342, ptr %b.len.gep377, align 8
  br label %choice.exit42

b.new.buf.len2365:                                ; preds = %abort.dead367, %b.grow2350
  %arena.cur368 = call ptr @dva_arena_current()
  %b.new.buf2369 = call ptr @dva_arena_alloc(ptr %arena.cur368, i64 %sum363)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2369, ptr align 1 %b.cur.data2361, i64 %b.cur.len2359, i1 false)
  %b.grow2.nul370 = getelementptr i8, ptr %b.new.buf2369, i64 %b.cur.len2359
  store i8 0, ptr %b.grow2.nul370, align 1
  %b.new.data2.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load329, i32 0, i32 1
  store ptr %b.new.buf2369, ptr %b.new.data2.gep371, align 8
  %b.new.cap2.gep372 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load329, i32 0, i32 2
  store i64 %b.new.cap357, ptr %b.new.cap2.gep372, align 8
  br label %b.grow_done352

str_overflow_abort366:                            ; preds = %b.grow2350
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead367:                                    ; No predecessors!
  br label %b.new.buf.len2365

choice.case378:                                   ; preds = %choice.next327
  %b.load381 = load ptr, ptr %var.b, align 8
  %var.load382 = load ptr, ptr %var.dt, align 8
  %fld.gep383 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load382, i32 0, i32 7
  %fld.load384 = load i64, ptr %fld.gep383, align 8
  %call.res385 = call { i64, ptr } @"time::#full_weekday_name"(i64 %fld.load384)
  %arena.cur386 = call ptr @dva_arena_current()
  %ret.ub.alloc387 = call ptr @dva_arena_alloc(ptr %arena.cur386, i64 16)
  store { i64, ptr } %call.res385, ptr %ret.ub.alloc387, align 8
  %app.str.len388 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc387, i32 0, i32 0
  %app.str.len389 = load i64, ptr %app.str.len388, align 8
  %app.str.len390 = and i64 %app.str.len389, 281474976710655
  %app.str.data391 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc387, i32 0, i32 1
  %app.str.data392 = load ptr, ptr %app.str.data391, align 8
  %b.app.cur.len393 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 0
  %b.app.cur.len394 = load i64, ptr %b.app.cur.len393, align 8
  %b.app.new.len395 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len394, i64 %app.str.len390)
  %sum396 = extractvalue { i64, i1 } %b.app.new.len395, 0
  %ovf397 = extractvalue { i64, i1 } %b.app.new.len395, 1
  br i1 %ovf397, label %str_overflow_abort399, label %b.app.new.len398

choice.next379:                                   ; preds = %choice.next327
  %val.match434 = icmp eq i64 %var.load41, 98
  %val.match435 = icmp eq i64 %var.load41, 104
  %case.or = or i1 %val.match434, %val.match435
  br i1 %case.or, label %choice.case432, label %choice.next433

b.app.new.len398:                                 ; preds = %abort.dead400, %choice.case378
  %b.cap401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 2
  %b.cap402 = load i64, ptr %b.cap401, align 8
  %b.need.grow403 = icmp slt i64 %b.cap402, %sum396
  br i1 %b.need.grow403, label %b.grow2404, label %b.nogrow2405

str_overflow_abort399:                            ; preds = %choice.case378
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead400:                                    ; No predecessors!
  br label %b.app.new.len398

b.grow2404:                                       ; preds = %b.app.new.len398
  %b.cap2407 = mul i64 %b.cap402, 2
  %b.cap.small408 = icmp slt i64 %b.cap2407, 16
  %b.cap.grow409 = select i1 %b.cap.small408, i64 16, i64 %b.cap2407
  %b.cap.need410 = icmp slt i64 %b.cap.grow409, %sum396
  %b.new.cap411 = select i1 %b.cap.need410, i64 %sum396, i64 %b.cap.grow409
  %b.cur.len2412 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 0
  %b.cur.len2413 = load i64, ptr %b.cur.len2412, align 8
  %b.cur.data2414 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 1
  %b.cur.data2415 = load ptr, ptr %b.cur.data2414, align 8
  %b.new.buf.len2416 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap411, i64 1)
  %sum417 = extractvalue { i64, i1 } %b.new.buf.len2416, 0
  %ovf418 = extractvalue { i64, i1 } %b.new.buf.len2416, 1
  br i1 %ovf418, label %str_overflow_abort420, label %b.new.buf.len2419

b.nogrow2405:                                     ; preds = %b.app.new.len398
  br label %b.grow_done406

b.grow_done406:                                   ; preds = %b.nogrow2405, %b.new.buf.len2419
  %b.app.data427 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 1
  %b.app.data428 = load ptr, ptr %b.app.data427, align 8
  %b.app.dst429 = getelementptr i8, ptr %b.app.data428, i64 %b.app.cur.len394
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst429, ptr align 1 %app.str.data392, i64 %app.str.len390, i1 false)
  %b.app.nul430 = getelementptr i8, ptr %b.app.data428, i64 %sum396
  store i8 0, ptr %b.app.nul430, align 1
  %b.len.gep431 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 0
  store i64 %sum396, ptr %b.len.gep431, align 8
  br label %choice.exit42

b.new.buf.len2419:                                ; preds = %abort.dead421, %b.grow2404
  %arena.cur422 = call ptr @dva_arena_current()
  %b.new.buf2423 = call ptr @dva_arena_alloc(ptr %arena.cur422, i64 %sum417)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2423, ptr align 1 %b.cur.data2415, i64 %b.cur.len2413, i1 false)
  %b.grow2.nul424 = getelementptr i8, ptr %b.new.buf2423, i64 %b.cur.len2413
  store i8 0, ptr %b.grow2.nul424, align 1
  %b.new.data2.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 1
  store ptr %b.new.buf2423, ptr %b.new.data2.gep425, align 8
  %b.new.cap2.gep426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load381, i32 0, i32 2
  store i64 %b.new.cap411, ptr %b.new.cap2.gep426, align 8
  br label %b.grow_done406

str_overflow_abort420:                            ; preds = %b.grow2404
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead421:                                    ; No predecessors!
  br label %b.new.buf.len2419

choice.case432:                                   ; preds = %choice.next379
  %b.load436 = load ptr, ptr %var.b, align 8
  %var.load437 = load ptr, ptr %var.dt, align 8
  %fld.gep438 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load437, i32 0, i32 1
  %fld.load439 = load i64, ptr %fld.gep438, align 8
  %call.res440 = call { i64, ptr } @"time::#short_month_name"(i64 %fld.load439)
  %arena.cur441 = call ptr @dva_arena_current()
  %ret.ub.alloc442 = call ptr @dva_arena_alloc(ptr %arena.cur441, i64 16)
  store { i64, ptr } %call.res440, ptr %ret.ub.alloc442, align 8
  %app.str.len443 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc442, i32 0, i32 0
  %app.str.len444 = load i64, ptr %app.str.len443, align 8
  %app.str.len445 = and i64 %app.str.len444, 281474976710655
  %app.str.data446 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc442, i32 0, i32 1
  %app.str.data447 = load ptr, ptr %app.str.data446, align 8
  %b.app.cur.len448 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 0
  %b.app.cur.len449 = load i64, ptr %b.app.cur.len448, align 8
  %b.app.new.len450 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len449, i64 %app.str.len445)
  %sum451 = extractvalue { i64, i1 } %b.app.new.len450, 0
  %ovf452 = extractvalue { i64, i1 } %b.app.new.len450, 1
  br i1 %ovf452, label %str_overflow_abort454, label %b.app.new.len453

choice.next433:                                   ; preds = %choice.next379
  %val.match489 = icmp eq i64 %var.load41, 66
  br i1 %val.match489, label %choice.case487, label %choice.next488

b.app.new.len453:                                 ; preds = %abort.dead455, %choice.case432
  %b.cap456 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 2
  %b.cap457 = load i64, ptr %b.cap456, align 8
  %b.need.grow458 = icmp slt i64 %b.cap457, %sum451
  br i1 %b.need.grow458, label %b.grow2459, label %b.nogrow2460

str_overflow_abort454:                            ; preds = %choice.case432
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead455:                                    ; No predecessors!
  br label %b.app.new.len453

b.grow2459:                                       ; preds = %b.app.new.len453
  %b.cap2462 = mul i64 %b.cap457, 2
  %b.cap.small463 = icmp slt i64 %b.cap2462, 16
  %b.cap.grow464 = select i1 %b.cap.small463, i64 16, i64 %b.cap2462
  %b.cap.need465 = icmp slt i64 %b.cap.grow464, %sum451
  %b.new.cap466 = select i1 %b.cap.need465, i64 %sum451, i64 %b.cap.grow464
  %b.cur.len2467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 0
  %b.cur.len2468 = load i64, ptr %b.cur.len2467, align 8
  %b.cur.data2469 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 1
  %b.cur.data2470 = load ptr, ptr %b.cur.data2469, align 8
  %b.new.buf.len2471 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap466, i64 1)
  %sum472 = extractvalue { i64, i1 } %b.new.buf.len2471, 0
  %ovf473 = extractvalue { i64, i1 } %b.new.buf.len2471, 1
  br i1 %ovf473, label %str_overflow_abort475, label %b.new.buf.len2474

b.nogrow2460:                                     ; preds = %b.app.new.len453
  br label %b.grow_done461

b.grow_done461:                                   ; preds = %b.nogrow2460, %b.new.buf.len2474
  %b.app.data482 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 1
  %b.app.data483 = load ptr, ptr %b.app.data482, align 8
  %b.app.dst484 = getelementptr i8, ptr %b.app.data483, i64 %b.app.cur.len449
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst484, ptr align 1 %app.str.data447, i64 %app.str.len445, i1 false)
  %b.app.nul485 = getelementptr i8, ptr %b.app.data483, i64 %sum451
  store i8 0, ptr %b.app.nul485, align 1
  %b.len.gep486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 0
  store i64 %sum451, ptr %b.len.gep486, align 8
  br label %choice.exit42

b.new.buf.len2474:                                ; preds = %abort.dead476, %b.grow2459
  %arena.cur477 = call ptr @dva_arena_current()
  %b.new.buf2478 = call ptr @dva_arena_alloc(ptr %arena.cur477, i64 %sum472)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2478, ptr align 1 %b.cur.data2470, i64 %b.cur.len2468, i1 false)
  %b.grow2.nul479 = getelementptr i8, ptr %b.new.buf2478, i64 %b.cur.len2468
  store i8 0, ptr %b.grow2.nul479, align 1
  %b.new.data2.gep480 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 1
  store ptr %b.new.buf2478, ptr %b.new.data2.gep480, align 8
  %b.new.cap2.gep481 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 2
  store i64 %b.new.cap466, ptr %b.new.cap2.gep481, align 8
  br label %b.grow_done461

str_overflow_abort475:                            ; preds = %b.grow2459
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead476:                                    ; No predecessors!
  br label %b.new.buf.len2474

choice.case487:                                   ; preds = %choice.next433
  %b.load490 = load ptr, ptr %var.b, align 8
  %var.load491 = load ptr, ptr %var.dt, align 8
  %fld.gep492 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load491, i32 0, i32 1
  %fld.load493 = load i64, ptr %fld.gep492, align 8
  %call.res494 = call { i64, ptr } @"time::#full_month_name"(i64 %fld.load493)
  %arena.cur495 = call ptr @dva_arena_current()
  %ret.ub.alloc496 = call ptr @dva_arena_alloc(ptr %arena.cur495, i64 16)
  store { i64, ptr } %call.res494, ptr %ret.ub.alloc496, align 8
  %app.str.len497 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc496, i32 0, i32 0
  %app.str.len498 = load i64, ptr %app.str.len497, align 8
  %app.str.len499 = and i64 %app.str.len498, 281474976710655
  %app.str.data500 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc496, i32 0, i32 1
  %app.str.data501 = load ptr, ptr %app.str.data500, align 8
  %b.app.cur.len502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 0
  %b.app.cur.len503 = load i64, ptr %b.app.cur.len502, align 8
  %b.app.new.len504 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len503, i64 %app.str.len499)
  %sum505 = extractvalue { i64, i1 } %b.app.new.len504, 0
  %ovf506 = extractvalue { i64, i1 } %b.app.new.len504, 1
  br i1 %ovf506, label %str_overflow_abort508, label %b.app.new.len507

choice.next488:                                   ; preds = %choice.next433
  %val.match543 = icmp eq i64 %var.load41, 106
  br i1 %val.match543, label %choice.case541, label %choice.next542

b.app.new.len507:                                 ; preds = %abort.dead509, %choice.case487
  %b.cap510 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 2
  %b.cap511 = load i64, ptr %b.cap510, align 8
  %b.need.grow512 = icmp slt i64 %b.cap511, %sum505
  br i1 %b.need.grow512, label %b.grow2513, label %b.nogrow2514

str_overflow_abort508:                            ; preds = %choice.case487
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead509:                                    ; No predecessors!
  br label %b.app.new.len507

b.grow2513:                                       ; preds = %b.app.new.len507
  %b.cap2516 = mul i64 %b.cap511, 2
  %b.cap.small517 = icmp slt i64 %b.cap2516, 16
  %b.cap.grow518 = select i1 %b.cap.small517, i64 16, i64 %b.cap2516
  %b.cap.need519 = icmp slt i64 %b.cap.grow518, %sum505
  %b.new.cap520 = select i1 %b.cap.need519, i64 %sum505, i64 %b.cap.grow518
  %b.cur.len2521 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 0
  %b.cur.len2522 = load i64, ptr %b.cur.len2521, align 8
  %b.cur.data2523 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 1
  %b.cur.data2524 = load ptr, ptr %b.cur.data2523, align 8
  %b.new.buf.len2525 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap520, i64 1)
  %sum526 = extractvalue { i64, i1 } %b.new.buf.len2525, 0
  %ovf527 = extractvalue { i64, i1 } %b.new.buf.len2525, 1
  br i1 %ovf527, label %str_overflow_abort529, label %b.new.buf.len2528

b.nogrow2514:                                     ; preds = %b.app.new.len507
  br label %b.grow_done515

b.grow_done515:                                   ; preds = %b.nogrow2514, %b.new.buf.len2528
  %b.app.data536 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 1
  %b.app.data537 = load ptr, ptr %b.app.data536, align 8
  %b.app.dst538 = getelementptr i8, ptr %b.app.data537, i64 %b.app.cur.len503
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst538, ptr align 1 %app.str.data501, i64 %app.str.len499, i1 false)
  %b.app.nul539 = getelementptr i8, ptr %b.app.data537, i64 %sum505
  store i8 0, ptr %b.app.nul539, align 1
  %b.len.gep540 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 0
  store i64 %sum505, ptr %b.len.gep540, align 8
  br label %choice.exit42

b.new.buf.len2528:                                ; preds = %abort.dead530, %b.grow2513
  %arena.cur531 = call ptr @dva_arena_current()
  %b.new.buf2532 = call ptr @dva_arena_alloc(ptr %arena.cur531, i64 %sum526)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2532, ptr align 1 %b.cur.data2524, i64 %b.cur.len2522, i1 false)
  %b.grow2.nul533 = getelementptr i8, ptr %b.new.buf2532, i64 %b.cur.len2522
  store i8 0, ptr %b.grow2.nul533, align 1
  %b.new.data2.gep534 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 1
  store ptr %b.new.buf2532, ptr %b.new.data2.gep534, align 8
  %b.new.cap2.gep535 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 2
  store i64 %b.new.cap520, ptr %b.new.cap2.gep535, align 8
  br label %b.grow_done515

str_overflow_abort529:                            ; preds = %b.grow2513
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead530:                                    ; No predecessors!
  br label %b.new.buf.len2528

choice.case541:                                   ; preds = %choice.next488
  %var.load544 = load ptr, ptr %var.b, align 8
  %var.load545 = load ptr, ptr %var.dt, align 8
  %fld.gep546 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load545, i32 0, i32 8
  %fld.load547 = load i64, ptr %fld.gep546, align 8
  call void @"time::#pad3"(ptr %var.load544, i64 %fld.load547)
  br label %choice.exit42

choice.next542:                                   ; preds = %choice.next488
  %val.match550 = icmp eq i64 %var.load41, 119
  br i1 %val.match550, label %choice.case548, label %choice.next549

choice.case548:                                   ; preds = %choice.next542
  %b.load551 = load ptr, ptr %var.b, align 8
  %var.load552 = load ptr, ptr %var.dt, align 8
  %fld.gep553 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load552, i32 0, i32 7
  %fld.load554 = load i64, ptr %fld.gep553, align 8
  %addtmp555 = add i64 48, %fld.load554
  %b.b.ge0556 = icmp sge i64 %addtmp555, 0
  %b.b.le255557 = icmp sle i64 %addtmp555, 255
  %b.byte.range558 = and i1 %b.b.ge0556, %b.b.le255557
  br i1 %b.byte.range558, label %b.byte_ok559, label %b.byte_err560

choice.next549:                                   ; preds = %choice.next542
  %val.match597 = icmp eq i64 %var.load41, 117
  br i1 %val.match597, label %choice.case595, label %choice.next596

b.byte_ok559:                                     ; preds = %abort.dead561, %choice.case548
  %b.byte.i8562 = trunc i64 %addtmp555 to i8
  %b.len563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load551, i32 0, i32 0
  %b.len564 = load i64, ptr %b.len563, align 8
  %b.cap565 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load551, i32 0, i32 2
  %b.cap566 = load i64, ptr %b.cap565, align 8
  %b.data567 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load551, i32 0, i32 1
  %b.data568 = load ptr, ptr %b.data567, align 8
  %b.needs.grow569 = icmp eq i64 %b.len564, %b.cap566
  br i1 %b.needs.grow569, label %b.grow570, label %b.nogrow571

b.byte_err560:                                    ; preds = %choice.case548
  %24 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead561:                                    ; No predecessors!
  br label %b.byte_ok559

b.grow570:                                        ; preds = %b.byte_ok559
  %b.cap2573 = mul i64 %b.cap566, 2
  %b.cap.small574 = icmp slt i64 %b.cap2573, 16
  %b.new.cap575 = select i1 %b.cap.small574, i64 16, i64 %b.cap2573
  %b.new.buf.len576 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap575, i64 1)
  %sum577 = extractvalue { i64, i1 } %b.new.buf.len576, 0
  %ovf578 = extractvalue { i64, i1 } %b.new.buf.len576, 1
  br i1 %ovf578, label %str_overflow_abort580, label %b.new.buf.len579

b.nogrow571:                                      ; preds = %b.byte_ok559
  br label %b.push_done572

b.push_done572:                                   ; preds = %b.nogrow571, %b.new.buf.len579
  %b.cur.data587 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load551, i32 0, i32 1
  %b.cur.data588 = load ptr, ptr %b.cur.data587, align 8
  %b.cur.len589 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load551, i32 0, i32 0
  %b.cur.len590 = load i64, ptr %b.cur.len589, align 8
  %b.byte.gep591 = getelementptr i8, ptr %b.cur.data588, i64 %b.cur.len590
  store i8 %b.byte.i8562, ptr %b.byte.gep591, align 1
  %b.next.len592 = add i64 %b.cur.len590, 1
  %b.nul593 = getelementptr i8, ptr %b.cur.data588, i64 %b.next.len592
  store i8 0, ptr %b.nul593, align 1
  %b.len.gep594 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load551, i32 0, i32 0
  store i64 %b.next.len592, ptr %b.len.gep594, align 8
  br label %choice.exit42

b.new.buf.len579:                                 ; preds = %abort.dead581, %b.grow570
  %arena.cur582 = call ptr @dva_arena_current()
  %b.new.buf583 = call ptr @dva_arena_alloc(ptr %arena.cur582, i64 %sum577)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf583, ptr align 1 %b.data568, i64 %b.len564, i1 false)
  %b.grow.nul584 = getelementptr i8, ptr %b.new.buf583, i64 %b.len564
  store i8 0, ptr %b.grow.nul584, align 1
  %b.new.data.gep585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load551, i32 0, i32 1
  store ptr %b.new.buf583, ptr %b.new.data.gep585, align 8
  %b.new.cap.gep586 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load551, i32 0, i32 2
  store i64 %b.new.cap575, ptr %b.new.cap.gep586, align 8
  br label %b.push_done572

str_overflow_abort580:                            ; preds = %b.grow570
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead581:                                    ; No predecessors!
  br label %b.new.buf.len579

choice.case595:                                   ; preds = %choice.next549
  %b.load598 = load ptr, ptr %var.b, align 8
  %var.load599 = load ptr, ptr %var.dt, align 8
  %fld.gep600 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load599, i32 0, i32 7
  %fld.load601 = load i64, ptr %fld.gep600, align 8
  %cmptmp602 = icmp eq i64 %fld.load601, 0
  br i1 %cmptmp602, label %choice.then603, label %choice.else604

choice.next596:                                   ; preds = %choice.next549
  %val.match652 = icmp eq i64 %var.load41, 122
  br i1 %val.match652, label %choice.case650, label %choice.next651

choice.then603:                                   ; preds = %choice.case595
  br label %choice.exit605

choice.else604:                                   ; preds = %choice.case595
  %var.load606 = load ptr, ptr %var.dt, align 8
  %fld.gep607 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load606, i32 0, i32 7
  %fld.load608 = load i64, ptr %fld.gep607, align 8
  br label %choice.exit605

choice.exit605:                                   ; preds = %choice.else604, %choice.then603
  %choice.res609 = phi i64 [ 7, %choice.then603 ], [ %fld.load608, %choice.else604 ]
  %addtmp610 = add i64 48, %choice.res609
  %b.b.ge0611 = icmp sge i64 %addtmp610, 0
  %b.b.le255612 = icmp sle i64 %addtmp610, 255
  %b.byte.range613 = and i1 %b.b.ge0611, %b.b.le255612
  br i1 %b.byte.range613, label %b.byte_ok614, label %b.byte_err615

b.byte_ok614:                                     ; preds = %abort.dead616, %choice.exit605
  %b.byte.i8617 = trunc i64 %addtmp610 to i8
  %b.len618 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load598, i32 0, i32 0
  %b.len619 = load i64, ptr %b.len618, align 8
  %b.cap620 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load598, i32 0, i32 2
  %b.cap621 = load i64, ptr %b.cap620, align 8
  %b.data622 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load598, i32 0, i32 1
  %b.data623 = load ptr, ptr %b.data622, align 8
  %b.needs.grow624 = icmp eq i64 %b.len619, %b.cap621
  br i1 %b.needs.grow624, label %b.grow625, label %b.nogrow626

b.byte_err615:                                    ; preds = %choice.exit605
  %26 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead616:                                    ; No predecessors!
  br label %b.byte_ok614

b.grow625:                                        ; preds = %b.byte_ok614
  %b.cap2628 = mul i64 %b.cap621, 2
  %b.cap.small629 = icmp slt i64 %b.cap2628, 16
  %b.new.cap630 = select i1 %b.cap.small629, i64 16, i64 %b.cap2628
  %b.new.buf.len631 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap630, i64 1)
  %sum632 = extractvalue { i64, i1 } %b.new.buf.len631, 0
  %ovf633 = extractvalue { i64, i1 } %b.new.buf.len631, 1
  br i1 %ovf633, label %str_overflow_abort635, label %b.new.buf.len634

b.nogrow626:                                      ; preds = %b.byte_ok614
  br label %b.push_done627

b.push_done627:                                   ; preds = %b.nogrow626, %b.new.buf.len634
  %b.cur.data642 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load598, i32 0, i32 1
  %b.cur.data643 = load ptr, ptr %b.cur.data642, align 8
  %b.cur.len644 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load598, i32 0, i32 0
  %b.cur.len645 = load i64, ptr %b.cur.len644, align 8
  %b.byte.gep646 = getelementptr i8, ptr %b.cur.data643, i64 %b.cur.len645
  store i8 %b.byte.i8617, ptr %b.byte.gep646, align 1
  %b.next.len647 = add i64 %b.cur.len645, 1
  %b.nul648 = getelementptr i8, ptr %b.cur.data643, i64 %b.next.len647
  store i8 0, ptr %b.nul648, align 1
  %b.len.gep649 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load598, i32 0, i32 0
  store i64 %b.next.len647, ptr %b.len.gep649, align 8
  br label %choice.exit42

b.new.buf.len634:                                 ; preds = %abort.dead636, %b.grow625
  %arena.cur637 = call ptr @dva_arena_current()
  %b.new.buf638 = call ptr @dva_arena_alloc(ptr %arena.cur637, i64 %sum632)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf638, ptr align 1 %b.data623, i64 %b.len619, i1 false)
  %b.grow.nul639 = getelementptr i8, ptr %b.new.buf638, i64 %b.len619
  store i8 0, ptr %b.grow.nul639, align 1
  %b.new.data.gep640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load598, i32 0, i32 1
  store ptr %b.new.buf638, ptr %b.new.data.gep640, align 8
  %b.new.cap.gep641 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load598, i32 0, i32 2
  store i64 %b.new.cap630, ptr %b.new.cap.gep641, align 8
  br label %b.push_done627

str_overflow_abort635:                            ; preds = %b.grow625
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead636:                                    ; No predecessors!
  br label %b.new.buf.len634

choice.case650:                                   ; preds = %choice.next596
  %var.load653 = load ptr, ptr %var.b, align 8
  %var.load654 = load ptr, ptr %var.dt, align 8
  %fld.gep655 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load654, i32 0, i32 9
  %fld.load656 = load i64, ptr %fld.gep655, align 8
  call void @"time::#write_tz_compact_into"(ptr %var.load653, i64 %fld.load656)
  br label %choice.exit42

choice.next651:                                   ; preds = %choice.next596
  %val.match659 = icmp eq i64 %var.load41, 90
  br i1 %val.match659, label %choice.case657, label %choice.next658

choice.case657:                                   ; preds = %choice.next651
  %var.load660 = load ptr, ptr %var.dt, align 8
  %fld.gep661 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load660, i32 0, i32 9
  %fld.load662 = load i64, ptr %fld.gep661, align 8
  %cmptmp663 = icmp eq i64 %fld.load662, 0
  br i1 %cmptmp663, label %choice.then664, label %choice.else665

choice.next658:                                   ; preds = %choice.next651
  %val.match716 = icmp eq i64 %var.load41, 115
  br i1 %val.match716, label %choice.case714, label %choice.next715

choice.then664:                                   ; preds = %choice.case657
  %b.load667 = load ptr, ptr %var.b, align 8
  %app.str.len668 = load i64, ptr @str.41.struct, align 8
  %app.str.len669 = and i64 %app.str.len668, 281474976710655
  %app.str.data670 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %b.app.cur.len671 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 0
  %b.app.cur.len672 = load i64, ptr %b.app.cur.len671, align 8
  %b.app.new.len673 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len672, i64 %app.str.len669)
  %sum674 = extractvalue { i64, i1 } %b.app.new.len673, 0
  %ovf675 = extractvalue { i64, i1 } %b.app.new.len673, 1
  br i1 %ovf675, label %str_overflow_abort677, label %b.app.new.len676

choice.else665:                                   ; preds = %choice.case657
  %var.load710 = load ptr, ptr %var.b, align 8
  %var.load711 = load ptr, ptr %var.dt, align 8
  %fld.gep712 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load711, i32 0, i32 9
  %fld.load713 = load i64, ptr %fld.gep712, align 8
  call void @"time::#write_tz_iso_into"(ptr %var.load710, i64 %fld.load713)
  br label %choice.exit666

choice.exit666:                                   ; preds = %choice.else665, %b.grow_done684
  br label %choice.exit42

b.app.new.len676:                                 ; preds = %abort.dead678, %choice.then664
  %b.cap679 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 2
  %b.cap680 = load i64, ptr %b.cap679, align 8
  %b.need.grow681 = icmp slt i64 %b.cap680, %sum674
  br i1 %b.need.grow681, label %b.grow2682, label %b.nogrow2683

str_overflow_abort677:                            ; preds = %choice.then664
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead678:                                    ; No predecessors!
  br label %b.app.new.len676

b.grow2682:                                       ; preds = %b.app.new.len676
  %b.cap2685 = mul i64 %b.cap680, 2
  %b.cap.small686 = icmp slt i64 %b.cap2685, 16
  %b.cap.grow687 = select i1 %b.cap.small686, i64 16, i64 %b.cap2685
  %b.cap.need688 = icmp slt i64 %b.cap.grow687, %sum674
  %b.new.cap689 = select i1 %b.cap.need688, i64 %sum674, i64 %b.cap.grow687
  %b.cur.len2690 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 0
  %b.cur.len2691 = load i64, ptr %b.cur.len2690, align 8
  %b.cur.data2692 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 1
  %b.cur.data2693 = load ptr, ptr %b.cur.data2692, align 8
  %b.new.buf.len2694 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap689, i64 1)
  %sum695 = extractvalue { i64, i1 } %b.new.buf.len2694, 0
  %ovf696 = extractvalue { i64, i1 } %b.new.buf.len2694, 1
  br i1 %ovf696, label %str_overflow_abort698, label %b.new.buf.len2697

b.nogrow2683:                                     ; preds = %b.app.new.len676
  br label %b.grow_done684

b.grow_done684:                                   ; preds = %b.nogrow2683, %b.new.buf.len2697
  %b.app.data705 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 1
  %b.app.data706 = load ptr, ptr %b.app.data705, align 8
  %b.app.dst707 = getelementptr i8, ptr %b.app.data706, i64 %b.app.cur.len672
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst707, ptr align 1 %app.str.data670, i64 %app.str.len669, i1 false)
  %b.app.nul708 = getelementptr i8, ptr %b.app.data706, i64 %sum674
  store i8 0, ptr %b.app.nul708, align 1
  %b.len.gep709 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 0
  store i64 %sum674, ptr %b.len.gep709, align 8
  br label %choice.exit666

b.new.buf.len2697:                                ; preds = %abort.dead699, %b.grow2682
  %arena.cur700 = call ptr @dva_arena_current()
  %b.new.buf2701 = call ptr @dva_arena_alloc(ptr %arena.cur700, i64 %sum695)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2701, ptr align 1 %b.cur.data2693, i64 %b.cur.len2691, i1 false)
  %b.grow2.nul702 = getelementptr i8, ptr %b.new.buf2701, i64 %b.cur.len2691
  store i8 0, ptr %b.grow2.nul702, align 1
  %b.new.data2.gep703 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 1
  store ptr %b.new.buf2701, ptr %b.new.data2.gep703, align 8
  %b.new.cap2.gep704 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 2
  store i64 %b.new.cap689, ptr %b.new.cap2.gep704, align 8
  br label %b.grow_done684

str_overflow_abort698:                            ; preds = %b.grow2682
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead699:                                    ; No predecessors!
  br label %b.new.buf.len2697

choice.case714:                                   ; preds = %choice.next658
  %b.load717 = load ptr, ptr %var.b, align 8
  %var.load718 = load ptr, ptr %var.dt, align 8
  %call.res719 = call i64 @"time::epoch"(ptr %var.load718)
  %b.int.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load717, i32 0, i32 0
  %b.int.cur.len720 = load i64, ptr %b.int.cur.len, align 8
  %b.int.cap = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.int.cur.len720, i64 24)
  %sum721 = extractvalue { i64, i1 } %b.int.cap, 0
  %ovf722 = extractvalue { i64, i1 } %b.int.cap, 1
  br i1 %ovf722, label %str_overflow_abort724, label %b.int.cap723

choice.next715:                                   ; preds = %choice.next658
  %val.match756 = icmp eq i64 %var.load41, 110
  br i1 %val.match756, label %choice.case754, label %choice.next755

b.int.cap723:                                     ; preds = %abort.dead725, %choice.case714
  %b.cap726 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load717, i32 0, i32 2
  %b.cap727 = load i64, ptr %b.cap726, align 8
  %b.need.grow728 = icmp slt i64 %b.cap727, %sum721
  br i1 %b.need.grow728, label %b.grow2729, label %b.nogrow2730

str_overflow_abort724:                            ; preds = %choice.case714
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead725:                                    ; No predecessors!
  br label %b.int.cap723

b.grow2729:                                       ; preds = %b.int.cap723
  %b.cap2732 = mul i64 %b.cap727, 2
  %b.cap.small733 = icmp slt i64 %b.cap2732, 16
  %b.cap.grow734 = select i1 %b.cap.small733, i64 16, i64 %b.cap2732
  %b.cap.need735 = icmp slt i64 %b.cap.grow734, %sum721
  %b.new.cap736 = select i1 %b.cap.need735, i64 %sum721, i64 %b.cap.grow734
  %b.cur.len2737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load717, i32 0, i32 0
  %b.cur.len2738 = load i64, ptr %b.cur.len2737, align 8
  %b.cur.data2739 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load717, i32 0, i32 1
  %b.cur.data2740 = load ptr, ptr %b.cur.data2739, align 8
  %b.new.buf.len2741 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap736, i64 1)
  %sum742 = extractvalue { i64, i1 } %b.new.buf.len2741, 0
  %ovf743 = extractvalue { i64, i1 } %b.new.buf.len2741, 1
  br i1 %ovf743, label %str_overflow_abort745, label %b.new.buf.len2744

b.nogrow2730:                                     ; preds = %b.int.cap723
  br label %b.grow_done731

b.grow_done731:                                   ; preds = %b.nogrow2730, %b.new.buf.len2744
  %b.int.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load717, i32 0, i32 1
  %b.int.data752 = load ptr, ptr %b.int.data, align 8
  %b.int.dst = getelementptr i8, ptr %b.int.data752, i64 %b.int.cur.len720
  %b.int.len = call i64 @dva_fmt_i64_buf(ptr %b.int.dst, i64 %call.res719, i1 false)
  %b.int.new.len = add i64 %b.int.cur.len720, %b.int.len
  %b.len.gep753 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load717, i32 0, i32 0
  store i64 %b.int.new.len, ptr %b.len.gep753, align 8
  br label %choice.exit42

b.new.buf.len2744:                                ; preds = %abort.dead746, %b.grow2729
  %arena.cur747 = call ptr @dva_arena_current()
  %b.new.buf2748 = call ptr @dva_arena_alloc(ptr %arena.cur747, i64 %sum742)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2748, ptr align 1 %b.cur.data2740, i64 %b.cur.len2738, i1 false)
  %b.grow2.nul749 = getelementptr i8, ptr %b.new.buf2748, i64 %b.cur.len2738
  store i8 0, ptr %b.grow2.nul749, align 1
  %b.new.data2.gep750 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load717, i32 0, i32 1
  store ptr %b.new.buf2748, ptr %b.new.data2.gep750, align 8
  %b.new.cap2.gep751 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load717, i32 0, i32 2
  store i64 %b.new.cap736, ptr %b.new.cap2.gep751, align 8
  br label %b.grow_done731

str_overflow_abort745:                            ; preds = %b.grow2729
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead746:                                    ; No predecessors!
  br label %b.new.buf.len2744

choice.case754:                                   ; preds = %choice.next715
  %b.load757 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len758 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load757, i32 0, i32 0
  %b.rn.cur.len759 = load i64, ptr %b.rn.cur.len758, align 8
  %b.rn.new.len760 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len759, i64 1)
  %sum761 = extractvalue { i64, i1 } %b.rn.new.len760, 0
  %ovf762 = extractvalue { i64, i1 } %b.rn.new.len760, 1
  br i1 %ovf762, label %str_overflow_abort764, label %b.rn.new.len763

choice.next755:                                   ; preds = %choice.next715
  %val.match805 = icmp eq i64 %var.load41, 116
  br i1 %val.match805, label %choice.case803, label %choice.next804

b.rn.new.len763:                                  ; preds = %abort.dead765, %choice.case754
  %b.cap766 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load757, i32 0, i32 2
  %b.cap767 = load i64, ptr %b.cap766, align 8
  %b.need.grow768 = icmp slt i64 %b.cap767, %sum761
  br i1 %b.need.grow768, label %b.grow2769, label %b.nogrow2770

str_overflow_abort764:                            ; preds = %choice.case754
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead765:                                    ; No predecessors!
  br label %b.rn.new.len763

b.grow2769:                                       ; preds = %b.rn.new.len763
  %b.cap2772 = mul i64 %b.cap767, 2
  %b.cap.small773 = icmp slt i64 %b.cap2772, 16
  %b.cap.grow774 = select i1 %b.cap.small773, i64 16, i64 %b.cap2772
  %b.cap.need775 = icmp slt i64 %b.cap.grow774, %sum761
  %b.new.cap776 = select i1 %b.cap.need775, i64 %sum761, i64 %b.cap.grow774
  %b.cur.len2777 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load757, i32 0, i32 0
  %b.cur.len2778 = load i64, ptr %b.cur.len2777, align 8
  %b.cur.data2779 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load757, i32 0, i32 1
  %b.cur.data2780 = load ptr, ptr %b.cur.data2779, align 8
  %b.new.buf.len2781 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap776, i64 1)
  %sum782 = extractvalue { i64, i1 } %b.new.buf.len2781, 0
  %ovf783 = extractvalue { i64, i1 } %b.new.buf.len2781, 1
  br i1 %ovf783, label %str_overflow_abort785, label %b.new.buf.len2784

b.nogrow2770:                                     ; preds = %b.rn.new.len763
  br label %b.grow_done771

b.grow_done771:                                   ; preds = %b.nogrow2770, %b.new.buf.len2784
  %b.rn.data792 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load757, i32 0, i32 1
  %b.rn.data793 = load ptr, ptr %b.rn.data792, align 8
  %b.rn.dst794 = getelementptr i8, ptr %b.rn.data793, i64 %b.rn.cur.len759
  br i1 true, label %br.b1.88, label %br.c2.88

b.new.buf.len2784:                                ; preds = %abort.dead786, %b.grow2769
  %arena.cur787 = call ptr @dva_arena_current()
  %b.new.buf2788 = call ptr @dva_arena_alloc(ptr %arena.cur787, i64 %sum782)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2788, ptr align 1 %b.cur.data2780, i64 %b.cur.len2778, i1 false)
  %b.grow2.nul789 = getelementptr i8, ptr %b.new.buf2788, i64 %b.cur.len2778
  store i8 0, ptr %b.grow2.nul789, align 1
  %b.new.data2.gep790 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load757, i32 0, i32 1
  store ptr %b.new.buf2788, ptr %b.new.data2.gep790, align 8
  %b.new.cap2.gep791 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load757, i32 0, i32 2
  store i64 %b.new.cap776, ptr %b.new.cap2.gep791, align 8
  br label %b.grow_done771

str_overflow_abort785:                            ; preds = %b.grow2769
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead786:                                    ; No predecessors!
  br label %b.new.buf.len2784

br.b1.88:                                         ; preds = %b.grow_done771
  store i8 10, ptr %b.rn.dst794, align 1
  br label %br.done.88

br.c2.88:                                         ; preds = %b.grow_done771
  br i1 true, label %br.b2.88, label %br.c3.88

br.b2.88:                                         ; preds = %br.c2.88
  store i8 -64, ptr %b.rn.dst794, align 1
  %br.dst1795 = getelementptr i8, ptr %b.rn.dst794, i64 1
  store i8 -118, ptr %br.dst1795, align 1
  br label %br.done.88

br.c3.88:                                         ; preds = %br.c2.88
  br i1 true, label %br.b3.88, label %br.b4.88

br.b3.88:                                         ; preds = %br.c3.88
  store i8 -32, ptr %b.rn.dst794, align 1
  %br.dst1.3796 = getelementptr i8, ptr %b.rn.dst794, i64 1
  store i8 -128, ptr %br.dst1.3796, align 1
  %br.dst2.3797 = getelementptr i8, ptr %b.rn.dst794, i64 2
  store i8 -118, ptr %br.dst2.3797, align 1
  br label %br.done.88

br.b4.88:                                         ; preds = %br.c3.88
  store i8 -16, ptr %b.rn.dst794, align 1
  %br.dst1.4798 = getelementptr i8, ptr %b.rn.dst794, i64 1
  store i8 -128, ptr %br.dst1.4798, align 1
  %br.dst2.4799 = getelementptr i8, ptr %b.rn.dst794, i64 2
  store i8 -128, ptr %br.dst2.4799, align 1
  %br.dst3.4800 = getelementptr i8, ptr %b.rn.dst794, i64 3
  store i8 -118, ptr %br.dst3.4800, align 1
  br label %br.done.88

br.done.88:                                       ; preds = %br.b4.88, %br.b3.88, %br.b2.88, %br.b1.88
  %br.nul801 = getelementptr i8, ptr %b.rn.data793, i64 %sum761
  store i8 0, ptr %br.nul801, align 1
  %b.len.gep802 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load757, i32 0, i32 0
  store i64 %sum761, ptr %b.len.gep802, align 8
  br label %choice.exit42

choice.case803:                                   ; preds = %choice.next755
  %b.load806 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len807 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load806, i32 0, i32 0
  %b.rn.cur.len808 = load i64, ptr %b.rn.cur.len807, align 8
  %b.rn.new.len809 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len808, i64 1)
  %sum810 = extractvalue { i64, i1 } %b.rn.new.len809, 0
  %ovf811 = extractvalue { i64, i1 } %b.rn.new.len809, 1
  br i1 %ovf811, label %str_overflow_abort813, label %b.rn.new.len812

choice.next804:                                   ; preds = %choice.next755
  %val.match854 = icmp eq i64 %var.load41, 37
  br i1 %val.match854, label %choice.case852, label %choice.next853

b.rn.new.len812:                                  ; preds = %abort.dead814, %choice.case803
  %b.cap815 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load806, i32 0, i32 2
  %b.cap816 = load i64, ptr %b.cap815, align 8
  %b.need.grow817 = icmp slt i64 %b.cap816, %sum810
  br i1 %b.need.grow817, label %b.grow2818, label %b.nogrow2819

str_overflow_abort813:                            ; preds = %choice.case803
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead814:                                    ; No predecessors!
  br label %b.rn.new.len812

b.grow2818:                                       ; preds = %b.rn.new.len812
  %b.cap2821 = mul i64 %b.cap816, 2
  %b.cap.small822 = icmp slt i64 %b.cap2821, 16
  %b.cap.grow823 = select i1 %b.cap.small822, i64 16, i64 %b.cap2821
  %b.cap.need824 = icmp slt i64 %b.cap.grow823, %sum810
  %b.new.cap825 = select i1 %b.cap.need824, i64 %sum810, i64 %b.cap.grow823
  %b.cur.len2826 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load806, i32 0, i32 0
  %b.cur.len2827 = load i64, ptr %b.cur.len2826, align 8
  %b.cur.data2828 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load806, i32 0, i32 1
  %b.cur.data2829 = load ptr, ptr %b.cur.data2828, align 8
  %b.new.buf.len2830 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap825, i64 1)
  %sum831 = extractvalue { i64, i1 } %b.new.buf.len2830, 0
  %ovf832 = extractvalue { i64, i1 } %b.new.buf.len2830, 1
  br i1 %ovf832, label %str_overflow_abort834, label %b.new.buf.len2833

b.nogrow2819:                                     ; preds = %b.rn.new.len812
  br label %b.grow_done820

b.grow_done820:                                   ; preds = %b.nogrow2819, %b.new.buf.len2833
  %b.rn.data841 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load806, i32 0, i32 1
  %b.rn.data842 = load ptr, ptr %b.rn.data841, align 8
  %b.rn.dst843 = getelementptr i8, ptr %b.rn.data842, i64 %b.rn.cur.len808
  br i1 true, label %br.b1.89, label %br.c2.89

b.new.buf.len2833:                                ; preds = %abort.dead835, %b.grow2818
  %arena.cur836 = call ptr @dva_arena_current()
  %b.new.buf2837 = call ptr @dva_arena_alloc(ptr %arena.cur836, i64 %sum831)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2837, ptr align 1 %b.cur.data2829, i64 %b.cur.len2827, i1 false)
  %b.grow2.nul838 = getelementptr i8, ptr %b.new.buf2837, i64 %b.cur.len2827
  store i8 0, ptr %b.grow2.nul838, align 1
  %b.new.data2.gep839 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load806, i32 0, i32 1
  store ptr %b.new.buf2837, ptr %b.new.data2.gep839, align 8
  %b.new.cap2.gep840 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load806, i32 0, i32 2
  store i64 %b.new.cap825, ptr %b.new.cap2.gep840, align 8
  br label %b.grow_done820

str_overflow_abort834:                            ; preds = %b.grow2818
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead835:                                    ; No predecessors!
  br label %b.new.buf.len2833

br.b1.89:                                         ; preds = %b.grow_done820
  store i8 9, ptr %b.rn.dst843, align 1
  br label %br.done.89

br.c2.89:                                         ; preds = %b.grow_done820
  br i1 true, label %br.b2.89, label %br.c3.89

br.b2.89:                                         ; preds = %br.c2.89
  store i8 -64, ptr %b.rn.dst843, align 1
  %br.dst1844 = getelementptr i8, ptr %b.rn.dst843, i64 1
  store i8 -119, ptr %br.dst1844, align 1
  br label %br.done.89

br.c3.89:                                         ; preds = %br.c2.89
  br i1 true, label %br.b3.89, label %br.b4.89

br.b3.89:                                         ; preds = %br.c3.89
  store i8 -32, ptr %b.rn.dst843, align 1
  %br.dst1.3845 = getelementptr i8, ptr %b.rn.dst843, i64 1
  store i8 -128, ptr %br.dst1.3845, align 1
  %br.dst2.3846 = getelementptr i8, ptr %b.rn.dst843, i64 2
  store i8 -119, ptr %br.dst2.3846, align 1
  br label %br.done.89

br.b4.89:                                         ; preds = %br.c3.89
  store i8 -16, ptr %b.rn.dst843, align 1
  %br.dst1.4847 = getelementptr i8, ptr %b.rn.dst843, i64 1
  store i8 -128, ptr %br.dst1.4847, align 1
  %br.dst2.4848 = getelementptr i8, ptr %b.rn.dst843, i64 2
  store i8 -128, ptr %br.dst2.4848, align 1
  %br.dst3.4849 = getelementptr i8, ptr %b.rn.dst843, i64 3
  store i8 -119, ptr %br.dst3.4849, align 1
  br label %br.done.89

br.done.89:                                       ; preds = %br.b4.89, %br.b3.89, %br.b2.89, %br.b1.89
  %br.nul850 = getelementptr i8, ptr %b.rn.data842, i64 %sum810
  store i8 0, ptr %br.nul850, align 1
  %b.len.gep851 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load806, i32 0, i32 0
  store i64 %sum810, ptr %b.len.gep851, align 8
  br label %choice.exit42

choice.case852:                                   ; preds = %choice.next804
  %b.load855 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len856 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 0
  %b.rn.cur.len857 = load i64, ptr %b.rn.cur.len856, align 8
  %b.rn.new.len858 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len857, i64 1)
  %sum859 = extractvalue { i64, i1 } %b.rn.new.len858, 0
  %ovf860 = extractvalue { i64, i1 } %b.rn.new.len858, 1
  br i1 %ovf860, label %str_overflow_abort862, label %b.rn.new.len861

choice.next853:                                   ; preds = %choice.next804
  %b.load901 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len902 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load901, i32 0, i32 0
  %b.rn.cur.len903 = load i64, ptr %b.rn.cur.len902, align 8
  %b.rn.new.len904 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len903, i64 1)
  %sum905 = extractvalue { i64, i1 } %b.rn.new.len904, 0
  %ovf906 = extractvalue { i64, i1 } %b.rn.new.len904, 1
  br i1 %ovf906, label %str_overflow_abort908, label %b.rn.new.len907

b.rn.new.len861:                                  ; preds = %abort.dead863, %choice.case852
  %b.cap864 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 2
  %b.cap865 = load i64, ptr %b.cap864, align 8
  %b.need.grow866 = icmp slt i64 %b.cap865, %sum859
  br i1 %b.need.grow866, label %b.grow2867, label %b.nogrow2868

str_overflow_abort862:                            ; preds = %choice.case852
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead863:                                    ; No predecessors!
  br label %b.rn.new.len861

b.grow2867:                                       ; preds = %b.rn.new.len861
  %b.cap2870 = mul i64 %b.cap865, 2
  %b.cap.small871 = icmp slt i64 %b.cap2870, 16
  %b.cap.grow872 = select i1 %b.cap.small871, i64 16, i64 %b.cap2870
  %b.cap.need873 = icmp slt i64 %b.cap.grow872, %sum859
  %b.new.cap874 = select i1 %b.cap.need873, i64 %sum859, i64 %b.cap.grow872
  %b.cur.len2875 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 0
  %b.cur.len2876 = load i64, ptr %b.cur.len2875, align 8
  %b.cur.data2877 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 1
  %b.cur.data2878 = load ptr, ptr %b.cur.data2877, align 8
  %b.new.buf.len2879 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap874, i64 1)
  %sum880 = extractvalue { i64, i1 } %b.new.buf.len2879, 0
  %ovf881 = extractvalue { i64, i1 } %b.new.buf.len2879, 1
  br i1 %ovf881, label %str_overflow_abort883, label %b.new.buf.len2882

b.nogrow2868:                                     ; preds = %b.rn.new.len861
  br label %b.grow_done869

b.grow_done869:                                   ; preds = %b.nogrow2868, %b.new.buf.len2882
  %b.rn.data890 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 1
  %b.rn.data891 = load ptr, ptr %b.rn.data890, align 8
  %b.rn.dst892 = getelementptr i8, ptr %b.rn.data891, i64 %b.rn.cur.len857
  br i1 true, label %br.b1.90, label %br.c2.90

b.new.buf.len2882:                                ; preds = %abort.dead884, %b.grow2867
  %arena.cur885 = call ptr @dva_arena_current()
  %b.new.buf2886 = call ptr @dva_arena_alloc(ptr %arena.cur885, i64 %sum880)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2886, ptr align 1 %b.cur.data2878, i64 %b.cur.len2876, i1 false)
  %b.grow2.nul887 = getelementptr i8, ptr %b.new.buf2886, i64 %b.cur.len2876
  store i8 0, ptr %b.grow2.nul887, align 1
  %b.new.data2.gep888 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 1
  store ptr %b.new.buf2886, ptr %b.new.data2.gep888, align 8
  %b.new.cap2.gep889 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 2
  store i64 %b.new.cap874, ptr %b.new.cap2.gep889, align 8
  br label %b.grow_done869

str_overflow_abort883:                            ; preds = %b.grow2867
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead884:                                    ; No predecessors!
  br label %b.new.buf.len2882

br.b1.90:                                         ; preds = %b.grow_done869
  store i8 37, ptr %b.rn.dst892, align 1
  br label %br.done.90

br.c2.90:                                         ; preds = %b.grow_done869
  br i1 true, label %br.b2.90, label %br.c3.90

br.b2.90:                                         ; preds = %br.c2.90
  store i8 -64, ptr %b.rn.dst892, align 1
  %br.dst1893 = getelementptr i8, ptr %b.rn.dst892, i64 1
  store i8 -91, ptr %br.dst1893, align 1
  br label %br.done.90

br.c3.90:                                         ; preds = %br.c2.90
  br i1 true, label %br.b3.90, label %br.b4.90

br.b3.90:                                         ; preds = %br.c3.90
  store i8 -32, ptr %b.rn.dst892, align 1
  %br.dst1.3894 = getelementptr i8, ptr %b.rn.dst892, i64 1
  store i8 -128, ptr %br.dst1.3894, align 1
  %br.dst2.3895 = getelementptr i8, ptr %b.rn.dst892, i64 2
  store i8 -91, ptr %br.dst2.3895, align 1
  br label %br.done.90

br.b4.90:                                         ; preds = %br.c3.90
  store i8 -16, ptr %b.rn.dst892, align 1
  %br.dst1.4896 = getelementptr i8, ptr %b.rn.dst892, i64 1
  store i8 -128, ptr %br.dst1.4896, align 1
  %br.dst2.4897 = getelementptr i8, ptr %b.rn.dst892, i64 2
  store i8 -128, ptr %br.dst2.4897, align 1
  %br.dst3.4898 = getelementptr i8, ptr %b.rn.dst892, i64 3
  store i8 -91, ptr %br.dst3.4898, align 1
  br label %br.done.90

br.done.90:                                       ; preds = %br.b4.90, %br.b3.90, %br.b2.90, %br.b1.90
  %br.nul899 = getelementptr i8, ptr %b.rn.data891, i64 %sum859
  store i8 0, ptr %br.nul899, align 1
  %b.len.gep900 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load855, i32 0, i32 0
  store i64 %sum859, ptr %b.len.gep900, align 8
  br label %choice.exit42

b.rn.new.len907:                                  ; preds = %abort.dead909, %choice.next853
  %b.cap910 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load901, i32 0, i32 2
  %b.cap911 = load i64, ptr %b.cap910, align 8
  %b.need.grow912 = icmp slt i64 %b.cap911, %sum905
  br i1 %b.need.grow912, label %b.grow2913, label %b.nogrow2914

str_overflow_abort908:                            ; preds = %choice.next853
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead909:                                    ; No predecessors!
  br label %b.rn.new.len907

b.grow2913:                                       ; preds = %b.rn.new.len907
  %b.cap2916 = mul i64 %b.cap911, 2
  %b.cap.small917 = icmp slt i64 %b.cap2916, 16
  %b.cap.grow918 = select i1 %b.cap.small917, i64 16, i64 %b.cap2916
  %b.cap.need919 = icmp slt i64 %b.cap.grow918, %sum905
  %b.new.cap920 = select i1 %b.cap.need919, i64 %sum905, i64 %b.cap.grow918
  %b.cur.len2921 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load901, i32 0, i32 0
  %b.cur.len2922 = load i64, ptr %b.cur.len2921, align 8
  %b.cur.data2923 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load901, i32 0, i32 1
  %b.cur.data2924 = load ptr, ptr %b.cur.data2923, align 8
  %b.new.buf.len2925 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap920, i64 1)
  %sum926 = extractvalue { i64, i1 } %b.new.buf.len2925, 0
  %ovf927 = extractvalue { i64, i1 } %b.new.buf.len2925, 1
  br i1 %ovf927, label %str_overflow_abort929, label %b.new.buf.len2928

b.nogrow2914:                                     ; preds = %b.rn.new.len907
  br label %b.grow_done915

b.grow_done915:                                   ; preds = %b.nogrow2914, %b.new.buf.len2928
  %b.rn.data936 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load901, i32 0, i32 1
  %b.rn.data937 = load ptr, ptr %b.rn.data936, align 8
  %b.rn.dst938 = getelementptr i8, ptr %b.rn.data937, i64 %b.rn.cur.len903
  br i1 true, label %br.b1.91, label %br.c2.91

b.new.buf.len2928:                                ; preds = %abort.dead930, %b.grow2913
  %arena.cur931 = call ptr @dva_arena_current()
  %b.new.buf2932 = call ptr @dva_arena_alloc(ptr %arena.cur931, i64 %sum926)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2932, ptr align 1 %b.cur.data2924, i64 %b.cur.len2922, i1 false)
  %b.grow2.nul933 = getelementptr i8, ptr %b.new.buf2932, i64 %b.cur.len2922
  store i8 0, ptr %b.grow2.nul933, align 1
  %b.new.data2.gep934 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load901, i32 0, i32 1
  store ptr %b.new.buf2932, ptr %b.new.data2.gep934, align 8
  %b.new.cap2.gep935 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load901, i32 0, i32 2
  store i64 %b.new.cap920, ptr %b.new.cap2.gep935, align 8
  br label %b.grow_done915

str_overflow_abort929:                            ; preds = %b.grow2913
  %39 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead930:                                    ; No predecessors!
  br label %b.new.buf.len2928

br.b1.91:                                         ; preds = %b.grow_done915
  store i8 37, ptr %b.rn.dst938, align 1
  br label %br.done.91

br.c2.91:                                         ; preds = %b.grow_done915
  br i1 true, label %br.b2.91, label %br.c3.91

br.b2.91:                                         ; preds = %br.c2.91
  store i8 -64, ptr %b.rn.dst938, align 1
  %br.dst1939 = getelementptr i8, ptr %b.rn.dst938, i64 1
  store i8 -91, ptr %br.dst1939, align 1
  br label %br.done.91

br.c3.91:                                         ; preds = %br.c2.91
  br i1 true, label %br.b3.91, label %br.b4.91

br.b3.91:                                         ; preds = %br.c3.91
  store i8 -32, ptr %b.rn.dst938, align 1
  %br.dst1.3940 = getelementptr i8, ptr %b.rn.dst938, i64 1
  store i8 -128, ptr %br.dst1.3940, align 1
  %br.dst2.3941 = getelementptr i8, ptr %b.rn.dst938, i64 2
  store i8 -91, ptr %br.dst2.3941, align 1
  br label %br.done.91

br.b4.91:                                         ; preds = %br.c3.91
  store i8 -16, ptr %b.rn.dst938, align 1
  %br.dst1.4942 = getelementptr i8, ptr %b.rn.dst938, i64 1
  store i8 -128, ptr %br.dst1.4942, align 1
  %br.dst2.4943 = getelementptr i8, ptr %b.rn.dst938, i64 2
  store i8 -128, ptr %br.dst2.4943, align 1
  %br.dst3.4944 = getelementptr i8, ptr %b.rn.dst938, i64 3
  store i8 -91, ptr %br.dst3.4944, align 1
  br label %br.done.91

br.done.91:                                       ; preds = %br.b4.91, %br.b3.91, %br.b2.91, %br.b1.91
  %br.nul945 = getelementptr i8, ptr %b.rn.data937, i64 %sum905
  store i8 0, ptr %br.nul945, align 1
  %b.len.gep946 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load901, i32 0, i32 0
  store i64 %sum905, ptr %b.len.gep946, align 8
  %b.load947 = load ptr, ptr %var.b, align 8
  %var.load948 = load i64, ptr %var.spec, align 8
  %b.b.ge0949 = icmp sge i64 %var.load948, 0
  %b.b.le255950 = icmp sle i64 %var.load948, 255
  %b.byte.range951 = and i1 %b.b.ge0949, %b.b.le255950
  br i1 %b.byte.range951, label %b.byte_ok952, label %b.byte_err953

b.byte_ok952:                                     ; preds = %abort.dead954, %br.done.91
  %b.byte.i8955 = trunc i64 %var.load948 to i8
  %b.len956 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load947, i32 0, i32 0
  %b.len957 = load i64, ptr %b.len956, align 8
  %b.cap958 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load947, i32 0, i32 2
  %b.cap959 = load i64, ptr %b.cap958, align 8
  %b.data960 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load947, i32 0, i32 1
  %b.data961 = load ptr, ptr %b.data960, align 8
  %b.needs.grow962 = icmp eq i64 %b.len957, %b.cap959
  br i1 %b.needs.grow962, label %b.grow963, label %b.nogrow964

b.byte_err953:                                    ; preds = %br.done.91
  %40 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead954:                                    ; No predecessors!
  br label %b.byte_ok952

b.grow963:                                        ; preds = %b.byte_ok952
  %b.cap2966 = mul i64 %b.cap959, 2
  %b.cap.small967 = icmp slt i64 %b.cap2966, 16
  %b.new.cap968 = select i1 %b.cap.small967, i64 16, i64 %b.cap2966
  %b.new.buf.len969 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap968, i64 1)
  %sum970 = extractvalue { i64, i1 } %b.new.buf.len969, 0
  %ovf971 = extractvalue { i64, i1 } %b.new.buf.len969, 1
  br i1 %ovf971, label %str_overflow_abort973, label %b.new.buf.len972

b.nogrow964:                                      ; preds = %b.byte_ok952
  br label %b.push_done965

b.push_done965:                                   ; preds = %b.nogrow964, %b.new.buf.len972
  %b.cur.data980 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load947, i32 0, i32 1
  %b.cur.data981 = load ptr, ptr %b.cur.data980, align 8
  %b.cur.len982 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load947, i32 0, i32 0
  %b.cur.len983 = load i64, ptr %b.cur.len982, align 8
  %b.byte.gep984 = getelementptr i8, ptr %b.cur.data981, i64 %b.cur.len983
  store i8 %b.byte.i8955, ptr %b.byte.gep984, align 1
  %b.next.len985 = add i64 %b.cur.len983, 1
  %b.nul986 = getelementptr i8, ptr %b.cur.data981, i64 %b.next.len985
  store i8 0, ptr %b.nul986, align 1
  %b.len.gep987 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load947, i32 0, i32 0
  store i64 %b.next.len985, ptr %b.len.gep987, align 8
  br label %choice.exit42

b.new.buf.len972:                                 ; preds = %abort.dead974, %b.grow963
  %arena.cur975 = call ptr @dva_arena_current()
  %b.new.buf976 = call ptr @dva_arena_alloc(ptr %arena.cur975, i64 %sum970)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf976, ptr align 1 %b.data961, i64 %b.len957, i1 false)
  %b.grow.nul977 = getelementptr i8, ptr %b.new.buf976, i64 %b.len957
  store i8 0, ptr %b.grow.nul977, align 1
  %b.new.data.gep978 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load947, i32 0, i32 1
  store ptr %b.new.buf976, ptr %b.new.data.gep978, align 8
  %b.new.cap.gep979 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load947, i32 0, i32 2
  store i64 %b.new.cap968, ptr %b.new.cap.gep979, align 8
  br label %b.push_done965

str_overflow_abort973:                            ; preds = %b.grow963
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead974:                                    ; No predecessors!
  br label %b.new.buf.len972

b.byte_ok995:                                     ; preds = %abort.dead997, %choice.else
  %b.byte.i8998 = trunc i64 %var.load991 to i8
  %b.len999 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 0
  %b.len1000 = load i64, ptr %b.len999, align 8
  %b.cap1001 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 2
  %b.cap1002 = load i64, ptr %b.cap1001, align 8
  %b.data1003 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 1
  %b.data1004 = load ptr, ptr %b.data1003, align 8
  %b.needs.grow1005 = icmp eq i64 %b.len1000, %b.cap1002
  br i1 %b.needs.grow1005, label %b.grow1006, label %b.nogrow1007

b.byte_err996:                                    ; preds = %choice.else
  %42 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead997:                                    ; No predecessors!
  br label %b.byte_ok995

b.grow1006:                                       ; preds = %b.byte_ok995
  %b.cap21009 = mul i64 %b.cap1002, 2
  %b.cap.small1010 = icmp slt i64 %b.cap21009, 16
  %b.new.cap1011 = select i1 %b.cap.small1010, i64 16, i64 %b.cap21009
  %b.new.buf.len1012 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1011, i64 1)
  %sum1013 = extractvalue { i64, i1 } %b.new.buf.len1012, 0
  %ovf1014 = extractvalue { i64, i1 } %b.new.buf.len1012, 1
  br i1 %ovf1014, label %str_overflow_abort1016, label %b.new.buf.len1015

b.nogrow1007:                                     ; preds = %b.byte_ok995
  br label %b.push_done1008

b.push_done1008:                                  ; preds = %b.nogrow1007, %b.new.buf.len1015
  %b.cur.data1023 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 1
  %b.cur.data1024 = load ptr, ptr %b.cur.data1023, align 8
  %b.cur.len1025 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 0
  %b.cur.len1026 = load i64, ptr %b.cur.len1025, align 8
  %b.byte.gep1027 = getelementptr i8, ptr %b.cur.data1024, i64 %b.cur.len1026
  store i8 %b.byte.i8998, ptr %b.byte.gep1027, align 1
  %b.next.len1028 = add i64 %b.cur.len1026, 1
  %b.nul1029 = getelementptr i8, ptr %b.cur.data1024, i64 %b.next.len1028
  store i8 0, ptr %b.nul1029, align 1
  %b.len.gep1030 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 0
  store i64 %b.next.len1028, ptr %b.len.gep1030, align 8
  %var.load1031 = load i64, ptr %"var.i'", align 8
  %addtmp1032 = add i64 %var.load1031, 1
  store i64 %addtmp1032, ptr %"var.i'", align 8
  br label %choice.exit23

b.new.buf.len1015:                                ; preds = %abort.dead1017, %b.grow1006
  %arena.cur1018 = call ptr @dva_arena_current()
  %b.new.buf1019 = call ptr @dva_arena_alloc(ptr %arena.cur1018, i64 %sum1013)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1019, ptr align 1 %b.data1004, i64 %b.len1000, i1 false)
  %b.grow.nul1020 = getelementptr i8, ptr %b.new.buf1019, i64 %b.len1000
  store i8 0, ptr %b.grow.nul1020, align 1
  %b.new.data.gep1021 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 1
  store ptr %b.new.buf1019, ptr %b.new.data.gep1021, align 8
  %b.new.cap.gep1022 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load990, i32 0, i32 2
  store i64 %b.new.cap1011, ptr %b.new.cap.gep1022, align 8
  br label %b.push_done1008

str_overflow_abort1016:                           ; preds = %b.grow1006
  %43 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead1017:                                   ; No predecessors!
  br label %b.new.buf.len1015

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data1035, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data1035, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data1035, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len1034, 1
  %arena.cur1036 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur1036, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data1035, i64 %b.freeze.len1034, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len1034
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.84
  %b.freeze.data1037 = phi ptr [ %b.freeze.data1035, %loop.exit.84 ], [ %b.freeze.data1035, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur1038 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len1034, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data1037, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1033, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1033, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1033, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 0, ptr %loop.idx.93, align 8
  br label %loop.header.93

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
  %var.load9 = load ptr, ptr @"var.sys::addr_null", align 8
  %arena.cur10 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 ptrtoint (ptr getelementptr (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 0
  store i32 0, ptr %rec.fld, align 4
  %rec.fld11 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 1
  store i32 0, ptr %rec.fld11, align 4
  %rec.fld12 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 2
  store i32 0, ptr %rec.fld12, align 4
  %rec.fld13 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 3
  store i32 0, ptr %rec.fld13, align 4
  %rec.fld14 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 4
  store i32 0, ptr %rec.fld14, align 4
  %rec.fld15 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 5
  store i32 0, ptr %rec.fld15, align 4
  %rec.fld16 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 6
  store i32 0, ptr %rec.fld16, align 4
  %rec.fld17 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 7
  store i32 0, ptr %rec.fld17, align 4
  %rec.fld18 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 8
  store i32 0, ptr %rec.fld18, align 4
  %rec.fld19 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 9
  store i32 0, ptr %rec.fld19, align 4
  %rec.fld20 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld20, align 8
  %rec.fld21 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 11
  store ptr %var.load9, ptr %rec.fld21, align 8
  store ptr %rec.alloc, ptr %"var.tm'", align 8
  %var.load22 = load ptr, ptr %var.value, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %arg.str.ptr23 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr24 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %arg.str.ptr25 = load i64, ptr %arg.str.ptr24, align 8
  %arg.str.ptr26 = and i64 %arg.str.ptr25, 281474976710655
  %str.tag27 = lshr i64 %arg.str.ptr25, 48
  %tag.immortal29 = icmp eq i64 %str.tag27, 0
  br i1 %tag.immortal29, label %str_ok28, label %tag.gen_check30

idx_big_check:                                    ; preds = %loop.body.93
  %idx.big = icmp sge i64 %var.load7, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead8, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %var.load7
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp = icmp eq i64 %s.byte.val, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %loop.body.93
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %idx_ok
  br label %loop.latch.93

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok28:                                         ; preds = %abort.dead37, %tag.slow_check31, %tag.gen_check30, %loop.exit.93
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr23, i64 %arg.str.ptr26
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr38, label %nulcopy

tag.gen_check30:                                  ; preds = %loop.exit.93
  %active.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok34 = icmp eq i64 %str.tag27, %active.gen33
  br i1 %tag.fast.ok34, label %str_ok28, label %tag.slow_check31

tag.slow_check31:                                 ; preds = %tag.gen_check30
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag27)
  br i1 %tag.valid36, label %str_ok28, label %tag.stale32

tag.stale32:                                      ; preds = %tag.slow_check31
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %str_ok28

arg.str.ptr38:                                    ; preds = %str_ok28
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok28
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr26, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len39

nulmerge:                                         ; preds = %nulcopy.len39, %arg.str.ptr38
  %arg.str.ptr42 = phi ptr [ %arg.str.ptr23, %arg.str.ptr38 ], [ %nulcopy.buf, %nulcopy.len39 ]
  %var.load43 = load ptr, ptr %var.fmt_pat, align 8
  %arg.str.ptr44 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %arg.str.ptr45 = load ptr, ptr %arg.str.ptr44, align 8
  %arg.str.ptr46 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %arg.str.ptr47 = load i64, ptr %arg.str.ptr46, align 8
  %arg.str.ptr48 = and i64 %arg.str.ptr47, 281474976710655
  %str.tag49 = lshr i64 %arg.str.ptr47, 48
  %tag.immortal51 = icmp eq i64 %str.tag49, 0
  br i1 %tag.immortal51, label %str_ok50, label %tag.gen_check52

nulcopy.len39:                                    ; preds = %abort.dead40, %nulcopy
  %arena.cur41 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr23, i64 %arg.str.ptr26, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr26
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %nulcopy.len39

str_ok50:                                         ; preds = %abort.dead59, %tag.slow_check53, %tag.gen_check52, %nulmerge
  %nulcheck.gep60 = getelementptr i8, ptr %arg.str.ptr45, i64 %arg.str.ptr48
  %nulcheck.byte61 = load i8, ptr %nulcheck.gep60, align 1
  %nulcheck62 = icmp eq i8 %nulcheck.byte61, 0
  br i1 %nulcheck62, label %arg.str.ptr63, label %nulcopy64

tag.gen_check52:                                  ; preds = %nulmerge
  %active.gen55 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok56 = icmp eq i64 %str.tag49, %active.gen55
  br i1 %tag.fast.ok56, label %str_ok50, label %tag.slow_check53

tag.slow_check53:                                 ; preds = %tag.gen_check52
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag49)
  br i1 %tag.valid58, label %str_ok50, label %tag.stale54

tag.stale54:                                      ; preds = %tag.slow_check53
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead59:                                     ; No predecessors!
  br label %str_ok50

arg.str.ptr63:                                    ; preds = %str_ok50
  br label %nulmerge65

nulcopy64:                                        ; preds = %str_ok50
  %nulcopy.len66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr48, i64 1)
  %sum67 = extractvalue { i64, i1 } %nulcopy.len66, 0
  %ovf68 = extractvalue { i64, i1 } %nulcopy.len66, 1
  br i1 %ovf68, label %str_overflow_abort70, label %nulcopy.len69

nulmerge65:                                       ; preds = %nulcopy.len69, %arg.str.ptr63
  %arg.str.ptr75 = phi ptr [ %arg.str.ptr45, %arg.str.ptr63 ], [ %nulcopy.buf73, %nulcopy.len69 ]
  %var.load76 = load ptr, ptr %"var.tm'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load76 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @strptime(ptr %arg.str.ptr42, ptr %arg.str.ptr75, ptr %addr.ffi.clean)
  store ptr %call.res, ptr %var.end, align 8
  %var.load77 = load ptr, ptr %var.end, align 8
  %var.load78 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load77 to i64
  %ptr.int.r = ptrtoint ptr %var.load78 to i64
  %cmptmp79 = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp79, label %choice.then80, label %choice.exit81

nulcopy.len69:                                    ; preds = %abort.dead71, %nulcopy64
  %arena.cur72 = call ptr @dva_arena_current()
  %nulcopy.buf73 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf73, ptr align 1 %arg.str.ptr45, i64 %arg.str.ptr48, i1 false)
  %nulcopy.nul74 = getelementptr i8, ptr %nulcopy.buf73, i64 %arg.str.ptr48
  store i8 0, ptr %nulcopy.nul74, align 1
  br label %nulmerge65

str_overflow_abort70:                             ; preds = %nulcopy64
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %nulcopy.len69

choice.then80:                                    ; preds = %nulmerge65
  ret ptr null

choice.exit81:                                    ; preds = %ret.dead82, %nulmerge65
  %var.load83 = load ptr, ptr %var.end, align 8
  %raw.int = ptrtoint ptr %var.load83 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal84 = icmp eq i64 %addr.tag, 0
  br i1 %tag.immortal84, label %addr_ok, label %tag.gen_check85

ret.dead82:                                       ; No predecessors!
  br label %choice.exit81

addr_ok:                                          ; preds = %abort.dead92, %tag.slow_check86, %tag.gen_check85, %choice.exit81
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  %cmptmp93 = icmp ne i64 %coerce.zext, 0
  br i1 %cmptmp93, label %choice.then94, label %choice.exit95

tag.gen_check85:                                  ; preds = %choice.exit81
  %active.gen88 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok89 = icmp eq i64 %addr.tag, %active.gen88
  br i1 %tag.fast.ok89, label %addr_ok, label %tag.slow_check86

tag.slow_check86:                                 ; preds = %tag.gen_check85
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %addr.tag)
  br i1 %tag.valid91, label %addr_ok, label %tag.stale87

tag.stale87:                                      ; preds = %tag.slow_check86
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %addr_ok

choice.then94:                                    ; preds = %addr_ok
  ret ptr null

choice.exit95:                                    ; preds = %ret.dead96, %addr_ok
  %var.load97 = load ptr, ptr %"var.tm'", align 8
  ret ptr %var.load97

ret.dead96:                                       ; No predecessors!
  br label %choice.exit95
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
