; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
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
@clo.const.45 = internal constant { ptr, ptr } { ptr @"time::local_from_sec", ptr null }
@"var.time::local_from_sec" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"time::local_now_dt", ptr null }
@"var.time::local_now_dt" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"time::utc_now_dt", ptr null }
@"var.time::utc_now_dt" = global ptr null
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
@clo.const.50 = internal constant { ptr, ptr } { ptr @"time::parse_tm", ptr null }
@"var.time::parse_tm" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_time, ptr null }]

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

define internal void @__dva_global_init_time() #3 {
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

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

declare i32 @clock_gettime(i32, ptr)

declare i32 @nanosleep(ptr, ptr)

declare ptr @localtime_r(ptr, ptr)

declare ptr @strptime(ptr, ptr, ptr)

define i32 @"time::clock_realtime"() #3 {
entry:
  ret i32 0
}

define i32 @"time::clock_monotonic"() #3 {
entry:
  %var.load = load i64, ptr @"var.time::CLOCK_MONOTONIC", align 8
  %coerce.trunc = trunc i64 %var.load to i32
  ret i32 %coerce.trunc
}

define internal i64 @"time::#floor_div"(i64 %0, i64 %1) #3 {
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
  br i1 %div.is.zero, label %div.zero_abort, label %div.notzero

div.notzero:                                      ; preds = %abort.dead, %entry
  %div.is.min = icmp eq i64 %var.load, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load1, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.notzero

div.ok:                                           ; preds = %abort.dead2, %div.notzero
  %divtmp = sdiv i64 %var.load, %var.load1
  store i64 %divtmp, ptr %var.q, align 8
  %var.load3 = load i64, ptr %var.a, align 8
  %var.load4 = load i64, ptr %var.b, align 8
  %div.is.zero5 = icmp eq i64 %var.load4, 0
  br i1 %div.is.zero5, label %div.zero_abort7, label %div.notzero6

div.ovf_abort:                                    ; preds = %div.notzero
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead2:                                      ; No predecessors!
  br label %div.ok

div.notzero6:                                     ; preds = %abort.dead8, %div.ok
  %div.is.min9 = icmp eq i64 %var.load3, -9223372036854775808
  %div.is.negone10 = icmp eq i64 %var.load4, -1
  %div.is.ovf11 = and i1 %div.is.min9, %div.is.negone10
  br i1 %div.is.ovf11, label %div.ovf_abort13, label %div.ok12

div.zero_abort7:                                  ; preds = %div.ok
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %div.notzero6

div.ok12:                                         ; preds = %abort.dead14, %div.notzero6
  %modtmp = srem i64 %var.load3, %var.load4
  store i64 %modtmp, ptr %var.r, align 8
  %var.load15 = load i64, ptr %var.r, align 8
  %cmptmp = icmp slt i64 %var.load15, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

div.ovf_abort13:                                  ; preds = %div.notzero6
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

define internal i64 @"time::#floor_mod"(i64 %0, i64 %1) #3 {
entry:
  %var.r = alloca i64, align 8
  %var.b = alloca i64, align 8
  %var.a = alloca i64, align 8
  store i64 %0, ptr %var.a, align 8
  store i64 %1, ptr %var.b, align 8
  %var.load = load i64, ptr %var.a, align 8
  %var.load1 = load i64, ptr %var.b, align 8
  %div.is.zero = icmp eq i64 %var.load1, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.notzero

div.notzero:                                      ; preds = %abort.dead, %entry
  %div.is.min = icmp eq i64 %var.load, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load1, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %entry
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.notzero

div.ok:                                           ; preds = %abort.dead2, %div.notzero
  %modtmp = srem i64 %var.load, %var.load1
  store i64 %modtmp, ptr %var.r, align 8
  %var.load3 = load i64, ptr %var.r, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

div.ovf_abort:                                    ; preds = %div.notzero
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

define internal void @"time::#pad2"(ptr %0, i64 %1) #3 {
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

define internal void @"time::#pad3"(ptr %0, i64 %1) #3 {
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

define internal void @"time::#pad4"(ptr %0, i64 %1) #3 {
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

define internal ptr @"time::#tm_to_datetime"(ptr %0, i64 %1) #3 {
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

define internal ptr @"time::#datetime_to_tm"(ptr %0) #3 {
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

define internal i64 @"time::#days_from_civil"(i64 %0, i64 %1, i64 %2) #3 {
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

define internal ptr @"time::#civil_from_days"(i64 %0) #3 {
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

define internal { i64, ptr } @"time::#short_weekday_name"(i64 %0) #3 {
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

define internal { i64, ptr } @"time::#full_weekday_name"(i64 %0) #3 {
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

define internal { i64, ptr } @"time::#short_month_name"(i64 %0) #3 {
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

define internal { i64, ptr } @"time::#full_month_name"(i64 %0) #3 {
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

define internal void @"time::#write_date_into"(ptr %0, ptr %1) #3 {
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

define internal void @"time::#write_clock_into"(ptr %0, ptr %1) #3 {
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

define internal void @"time::#write_tz_iso_into"(ptr %0, i64 %1) #3 {
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

define internal void @"time::#write_tz_compact_into"(ptr %0, i64 %1) #3 {
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

define internal void @"time::#write_date_basic_into"(ptr %0, ptr %1) #3 {
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

define internal void @"time::#write_clock_basic_into"(ptr %0, ptr %1) #3 {
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

define internal void @"time::#write_tz_basic_into"(ptr %0, i64 %1) #3 {
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

define { i64, ptr } @"time::format_dt_iso"(ptr %0) #3 {
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

define { i64, ptr } @"time::format_dt_iso_basic"(ptr %0) #3 {
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

define { i64, ptr } @"time::format_dt_date"(ptr %0) #3 {
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

define { i64, ptr } @"time::format_dt_clock"(ptr %0) #3 {
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

define i64 @"time::now"() #3 {
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

define i64 @"time::now_ms"() #3 {
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

define i64 @"time::now_ns"() #3 {
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

define double @"time::now_f64"() #3 {
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

define i64 @"time::mono_ns"() #3 {
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

define i64 @"time::mono_ms"() #3 {
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

define double @"time::mono_f64"() #3 {
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

define i64 @"time::elapsed_ms"(i64 %0) #3 {
entry:
  %var.start_ns = alloca i64, align 8
  store i64 %0, ptr %var.start_ns, align 8
  %call.res = call i64 @"time::mono_ns"()
  %var.load = load i64, ptr %var.start_ns, align 8
  %subtmp = sub i64 %call.res, %var.load
  %divtmp = sdiv i64 %subtmp, 1000000
  ret i64 %divtmp
}

define double @"time::elapsed_f64"(i64 %0) #3 {
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

define void @"time::sleep_ns"(i64 %0) #3 {
entry:
  %var.ns = alloca i64, align 8
  store i64 %0, ptr %var.ns, align 8
  %var.load = load i64, ptr %var.ns, align 8
  call void @"time::sleep_ns_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(i64 %var.load)
  ret void
}

define internal void @"time::sleep_ns_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(i64 %0) #3 {
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

define void @"time::sleep_ms"(i64 %0) #3 {
entry:
  %var.ms = alloca i64, align 8
  store i64 %0, ptr %var.ms, align 8
  %var.load = load i64, ptr %var.ms, align 8
  %multmp = mul i64 %var.load, 1000000
  call void @"time::sleep_ns"(i64 %multmp)
  ret void
}

define void @"time::sleep"(double %0) #3 {
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

define i1 @"time::is_leap_year"(i64 %0) #3 {
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

define i64 @"time::days_in_month"(i64 %0, i64 %1) #3 {
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

define ptr @"time::utc_from_epoch"(i64 %0, i64 %1) #3 {
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

define i64 @"time::epoch"(ptr %0) #3 {
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

define ptr @"time::datetime_utc"(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #3 {
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

define ptr @"time::local_from_sec"(i64 %0, i64 %1) #3 {
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

define internal ptr @"time::local_from_sec_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(i64 %0, i64 %1) #3 {
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

define ptr @"time::local_now_dt"() #3 {
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

define ptr @"time::utc_now_dt"() #3 {
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

define { i64, ptr } @"time::format_dt_pattern"(ptr %0, ptr %1) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.h12 = alloca i64, align 8
  %var.spec = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
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

b.buf.len4:                                       ; preds = %abort.dead, %entry
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

str_overflow_abort:                               ; preds = %entry
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
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %var.load1029 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1029, i32 0, i32 0
  %b.freeze.len1030 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1029, i32 0, i32 1
  %b.freeze.data1031 = load ptr, ptr %b.freeze.data, align 8
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
  %idx.oob = icmp uge i64 %var.load12, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead13, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load14 = load i64, ptr %var.ch, align 8
  %cmptmp15 = icmp eq i64 %var.load14, 37
  br i1 %cmptmp15, label %and.85.then, label %and.85.else

idx_oob:                                          ; preds = %choice.exit
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
  %idx.oob30 = icmp uge i64 %addtmp29, %s.read.len25
  br i1 %idx.oob30, label %idx_oob32, label %idx_ok31

choice.else:                                      ; preds = %and.85.exit
  %b.load986 = load ptr, ptr %var.b, align 8
  %var.load987 = load i64, ptr %var.ch, align 8
  %b.b.ge0988 = icmp sge i64 %var.load987, 0
  %b.b.le255989 = icmp sle i64 %var.load987, 255
  %b.byte.range990 = and i1 %b.b.ge0988, %b.b.le255989
  br i1 %b.byte.range990, label %b.byte_ok991, label %b.byte_err992

choice.exit21:                                    ; preds = %b.push_done1004, %choice.exit38
  br label %loop.latch.84

idx_ok31:                                         ; preds = %abort.dead33, %choice.then20
  %s.byte.gep34 = getelementptr i8, ptr %s.read.data27, i64 %addtmp29
  %s.byte35 = load i8, ptr %s.byte.gep34, align 1
  %s.byte.val36 = zext i8 %s.byte35 to i64
  store i64 %s.byte.val36, ptr %var.spec, align 8
  %var.load37 = load i64, ptr %var.spec, align 8
  %val.match = icmp eq i64 %var.load37, 89
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob32:                                        ; preds = %choice.then20
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %idx_ok31

choice.exit38:                                    ; preds = %b.push_done961, %br.done.90, %br.done.89, %br.done.88, %b.grow_done727, %choice.exit662, %choice.case646, %b.push_done623, %b.push_done568, %choice.case537, %b.grow_done511, %b.grow_done457, %b.grow_done402, %b.grow_done348, %br.done.87, %choice.case260, %choice.case255, %b.grow_done229, %b.grow_done176, %choice.case143, %choice.case136, %choice.exit134, %choice.case115, %choice.exit71, %choice.case55, %choice.case48, %choice.case41, %choice.case
  %var.load984 = load i64, ptr %"var.i'", align 8
  %addtmp985 = add i64 %var.load984, 2
  store i64 %addtmp985, ptr %"var.i'", align 8
  br label %choice.exit21

choice.case:                                      ; preds = %idx_ok31
  %var.load39 = load ptr, ptr %var.b, align 8
  %var.load40 = load ptr, ptr %var.dt, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load40, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  call void @"time::#pad4"(ptr %var.load39, i64 %fld.load)
  br label %choice.exit38

choice.next:                                      ; preds = %idx_ok31
  %val.match43 = icmp eq i64 %var.load37, 121
  br i1 %val.match43, label %choice.case41, label %choice.next42

choice.case41:                                    ; preds = %choice.next
  %var.load44 = load ptr, ptr %var.b, align 8
  %var.load45 = load ptr, ptr %var.dt, align 8
  %fld.gep46 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load45, i32 0, i32 0
  %fld.load47 = load i64, ptr %fld.gep46, align 8
  %modtmp = srem i64 %fld.load47, 100
  call void @"time::#pad2"(ptr %var.load44, i64 %modtmp)
  br label %choice.exit38

choice.next42:                                    ; preds = %choice.next
  %val.match50 = icmp eq i64 %var.load37, 109
  br i1 %val.match50, label %choice.case48, label %choice.next49

choice.case48:                                    ; preds = %choice.next42
  %var.load51 = load ptr, ptr %var.b, align 8
  %var.load52 = load ptr, ptr %var.dt, align 8
  %fld.gep53 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load52, i32 0, i32 1
  %fld.load54 = load i64, ptr %fld.gep53, align 8
  call void @"time::#pad2"(ptr %var.load51, i64 %fld.load54)
  br label %choice.exit38

choice.next49:                                    ; preds = %choice.next42
  %val.match57 = icmp eq i64 %var.load37, 100
  br i1 %val.match57, label %choice.case55, label %choice.next56

choice.case55:                                    ; preds = %choice.next49
  %var.load58 = load ptr, ptr %var.b, align 8
  %var.load59 = load ptr, ptr %var.dt, align 8
  %fld.gep60 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load59, i32 0, i32 2
  %fld.load61 = load i64, ptr %fld.gep60, align 8
  call void @"time::#pad2"(ptr %var.load58, i64 %fld.load61)
  br label %choice.exit38

choice.next56:                                    ; preds = %choice.next49
  %val.match64 = icmp eq i64 %var.load37, 101
  br i1 %val.match64, label %choice.case62, label %choice.next63

choice.case62:                                    ; preds = %choice.next56
  %var.load65 = load ptr, ptr %var.dt, align 8
  %fld.gep66 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load65, i32 0, i32 2
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %cmptmp68 = icmp slt i64 %fld.load67, 10
  br i1 %cmptmp68, label %choice.then69, label %choice.else70

choice.next63:                                    ; preds = %choice.next56
  %val.match117 = icmp eq i64 %var.load37, 72
  br i1 %val.match117, label %choice.case115, label %choice.next116

choice.then69:                                    ; preds = %choice.case62
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len72 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len72, i64 1)
  %sum73 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf74 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf74, label %str_overflow_abort76, label %b.rn.new.len75

choice.else70:                                    ; preds = %choice.case62
  %var.load111 = load ptr, ptr %var.b, align 8
  %var.load112 = load ptr, ptr %var.dt, align 8
  %fld.gep113 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load112, i32 0, i32 2
  %fld.load114 = load i64, ptr %fld.gep113, align 8
  call void @"time::#pad2"(ptr %var.load111, i64 %fld.load114)
  br label %choice.exit71

choice.exit71:                                    ; preds = %choice.else70, %b.push_done
  br label %choice.exit38

b.rn.new.len75:                                   ; preds = %abort.dead77, %choice.then69
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap78 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap78, %sum73
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort76:                             ; preds = %choice.then69
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead77:                                     ; No predecessors!
  br label %b.rn.new.len75

b.grow2:                                          ; preds = %b.rn.new.len75
  %b.cap2 = mul i64 %b.cap78, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum73
  %b.new.cap = select i1 %b.cap.need, i64 %sum73, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len279 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data280 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum81 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf82 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf82, label %str_overflow_abort84, label %b.new.buf.len283

b.nogrow2:                                        ; preds = %b.rn.new.len75
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len283
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data87 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data87, i64 %b.rn.cur.len72
  br i1 true, label %br.b1.86, label %br.c2.86

b.new.buf.len283:                                 ; preds = %abort.dead85, %b.grow2
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 %sum81)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data280, i64 %b.cur.len279, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len279
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort84:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead85:                                     ; No predecessors!
  br label %b.new.buf.len283

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
  %br.nul = getelementptr i8, ptr %b.rn.data87, i64 %sum73
  store i8 0, ptr %br.nul, align 1
  %b.len.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum73, ptr %b.len.gep88, align 8
  %b.load89 = load ptr, ptr %var.b, align 8
  %var.load90 = load ptr, ptr %var.dt, align 8
  %fld.gep91 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load90, i32 0, i32 2
  %fld.load92 = load i64, ptr %fld.gep91, align 8
  %addtmp93 = add i64 48, %fld.load92
  %b.b.ge0 = icmp sge i64 %addtmp93, 0
  %b.b.le255 = icmp sle i64 %addtmp93, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %abort.dead94, %br.done.86
  %b.byte.i8 = trunc i64 %addtmp93 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 0
  %b.len95 = load i64, ptr %b.len, align 8
  %b.cap96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 2
  %b.cap97 = load i64, ptr %b.cap96, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 1
  %b.data98 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len95, %b.cap97
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %br.done.86
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead94:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap299 = mul i64 %b.cap97, 2
  %b.cap.small100 = icmp slt i64 %b.cap299, 16
  %b.new.cap101 = select i1 %b.cap.small100, i64 16, i64 %b.cap299
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap101, i64 1)
  %sum102 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf103 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf103, label %str_overflow_abort105, label %b.new.buf.len104

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len104
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 1
  %b.cur.data108 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 0
  %b.cur.len109 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data108, i64 %b.cur.len109
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len109, 1
  %b.nul = getelementptr i8, ptr %b.cur.data108, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep110, align 8
  br label %choice.exit71

b.new.buf.len104:                                 ; preds = %abort.dead106, %b.grow
  %arena.cur107 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 %sum102)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data98, i64 %b.len95, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len95
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 2
  store i64 %b.new.cap101, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort105:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead106:                                    ; No predecessors!
  br label %b.new.buf.len104

choice.case115:                                   ; preds = %choice.next63
  %var.load118 = load ptr, ptr %var.b, align 8
  %var.load119 = load ptr, ptr %var.dt, align 8
  %fld.gep120 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load119, i32 0, i32 3
  %fld.load121 = load i64, ptr %fld.gep120, align 8
  call void @"time::#pad2"(ptr %var.load118, i64 %fld.load121)
  br label %choice.exit38

choice.next116:                                   ; preds = %choice.next63
  %val.match124 = icmp eq i64 %var.load37, 73
  br i1 %val.match124, label %choice.case122, label %choice.next123

choice.case122:                                   ; preds = %choice.next116
  %var.load125 = load ptr, ptr %var.dt, align 8
  %fld.gep126 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load125, i32 0, i32 3
  %fld.load127 = load i64, ptr %fld.gep126, align 8
  %modtmp128 = srem i64 %fld.load127, 12
  store i64 %modtmp128, ptr %var.h12, align 8
  %var.load129 = load ptr, ptr %var.b, align 8
  %var.load130 = load i64, ptr %var.h12, align 8
  %cmptmp131 = icmp eq i64 %var.load130, 0
  br i1 %cmptmp131, label %choice.then132, label %choice.else133

choice.next123:                                   ; preds = %choice.next116
  %val.match138 = icmp eq i64 %var.load37, 77
  br i1 %val.match138, label %choice.case136, label %choice.next137

choice.then132:                                   ; preds = %choice.case122
  br label %choice.exit134

choice.else133:                                   ; preds = %choice.case122
  %var.load135 = load i64, ptr %var.h12, align 8
  br label %choice.exit134

choice.exit134:                                   ; preds = %choice.else133, %choice.then132
  %choice.res = phi i64 [ 12, %choice.then132 ], [ %var.load135, %choice.else133 ]
  call void @"time::#pad2"(ptr %var.load129, i64 %choice.res)
  br label %choice.exit38

choice.case136:                                   ; preds = %choice.next123
  %var.load139 = load ptr, ptr %var.b, align 8
  %var.load140 = load ptr, ptr %var.dt, align 8
  %fld.gep141 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load140, i32 0, i32 4
  %fld.load142 = load i64, ptr %fld.gep141, align 8
  call void @"time::#pad2"(ptr %var.load139, i64 %fld.load142)
  br label %choice.exit38

choice.next137:                                   ; preds = %choice.next123
  %val.match145 = icmp eq i64 %var.load37, 83
  br i1 %val.match145, label %choice.case143, label %choice.next144

choice.case143:                                   ; preds = %choice.next137
  %var.load146 = load ptr, ptr %var.b, align 8
  %var.load147 = load ptr, ptr %var.dt, align 8
  %fld.gep148 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load147, i32 0, i32 5
  %fld.load149 = load i64, ptr %fld.gep148, align 8
  call void @"time::#pad2"(ptr %var.load146, i64 %fld.load149)
  br label %choice.exit38

choice.next144:                                   ; preds = %choice.next137
  %val.match152 = icmp eq i64 %var.load37, 112
  br i1 %val.match152, label %choice.case150, label %choice.next151

choice.case150:                                   ; preds = %choice.next144
  %b.load153 = load ptr, ptr %var.b, align 8
  %var.load154 = load ptr, ptr %var.dt, align 8
  %fld.gep155 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load154, i32 0, i32 3
  %fld.load156 = load i64, ptr %fld.gep155, align 8
  %cmptmp157 = icmp slt i64 %fld.load156, 12
  br i1 %cmptmp157, label %choice.then158, label %choice.else159

choice.next151:                                   ; preds = %choice.next144
  %val.match201 = icmp eq i64 %var.load37, 80
  br i1 %val.match201, label %choice.case199, label %choice.next200

choice.then158:                                   ; preds = %choice.case150
  br label %choice.exit160

choice.else159:                                   ; preds = %choice.case150
  br label %choice.exit160

choice.exit160:                                   ; preds = %choice.else159, %choice.then158
  %choice.res161 = phi ptr [ @str.37.struct, %choice.then158 ], [ @str.38.struct, %choice.else159 ]
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %choice.res161, i32 0, i32 0
  %app.str.len162 = load i64, ptr %app.str.len, align 8
  %app.str.len163 = and i64 %app.str.len162, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %choice.res161, i32 0, i32 1
  %app.str.data164 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load153, i32 0, i32 0
  %b.app.cur.len165 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len165, i64 %app.str.len163)
  %sum166 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf167 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf167, label %str_overflow_abort169, label %b.app.new.len168

b.app.new.len168:                                 ; preds = %abort.dead170, %choice.exit160
  %b.cap171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load153, i32 0, i32 2
  %b.cap172 = load i64, ptr %b.cap171, align 8
  %b.need.grow173 = icmp slt i64 %b.cap172, %sum166
  br i1 %b.need.grow173, label %b.grow2174, label %b.nogrow2175

str_overflow_abort169:                            ; preds = %choice.exit160
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead170:                                    ; No predecessors!
  br label %b.app.new.len168

b.grow2174:                                       ; preds = %b.app.new.len168
  %b.cap2177 = mul i64 %b.cap172, 2
  %b.cap.small178 = icmp slt i64 %b.cap2177, 16
  %b.cap.grow179 = select i1 %b.cap.small178, i64 16, i64 %b.cap2177
  %b.cap.need180 = icmp slt i64 %b.cap.grow179, %sum166
  %b.new.cap181 = select i1 %b.cap.need180, i64 %sum166, i64 %b.cap.grow179
  %b.cur.len2182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load153, i32 0, i32 0
  %b.cur.len2183 = load i64, ptr %b.cur.len2182, align 8
  %b.cur.data2184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load153, i32 0, i32 1
  %b.cur.data2185 = load ptr, ptr %b.cur.data2184, align 8
  %b.new.buf.len2186 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap181, i64 1)
  %sum187 = extractvalue { i64, i1 } %b.new.buf.len2186, 0
  %ovf188 = extractvalue { i64, i1 } %b.new.buf.len2186, 1
  br i1 %ovf188, label %str_overflow_abort190, label %b.new.buf.len2189

b.nogrow2175:                                     ; preds = %b.app.new.len168
  br label %b.grow_done176

b.grow_done176:                                   ; preds = %b.nogrow2175, %b.new.buf.len2189
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load153, i32 0, i32 1
  %b.app.data197 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data197, i64 %b.app.cur.len165
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data164, i64 %app.str.len163, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data197, i64 %sum166
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load153, i32 0, i32 0
  store i64 %sum166, ptr %b.len.gep198, align 8
  br label %choice.exit38

b.new.buf.len2189:                                ; preds = %abort.dead191, %b.grow2174
  %arena.cur192 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 %sum187)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2193, ptr align 1 %b.cur.data2185, i64 %b.cur.len2183, i1 false)
  %b.grow2.nul194 = getelementptr i8, ptr %b.new.buf2193, i64 %b.cur.len2183
  store i8 0, ptr %b.grow2.nul194, align 1
  %b.new.data2.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load153, i32 0, i32 1
  store ptr %b.new.buf2193, ptr %b.new.data2.gep195, align 8
  %b.new.cap2.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load153, i32 0, i32 2
  store i64 %b.new.cap181, ptr %b.new.cap2.gep196, align 8
  br label %b.grow_done176

str_overflow_abort190:                            ; preds = %b.grow2174
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead191:                                    ; No predecessors!
  br label %b.new.buf.len2189

choice.case199:                                   ; preds = %choice.next151
  %b.load202 = load ptr, ptr %var.b, align 8
  %var.load203 = load ptr, ptr %var.dt, align 8
  %fld.gep204 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load203, i32 0, i32 3
  %fld.load205 = load i64, ptr %fld.gep204, align 8
  %cmptmp206 = icmp slt i64 %fld.load205, 12
  br i1 %cmptmp206, label %choice.then207, label %choice.else208

choice.next200:                                   ; preds = %choice.next151
  %val.match257 = icmp eq i64 %var.load37, 70
  br i1 %val.match257, label %choice.case255, label %choice.next256

choice.then207:                                   ; preds = %choice.case199
  br label %choice.exit209

choice.else208:                                   ; preds = %choice.case199
  br label %choice.exit209

choice.exit209:                                   ; preds = %choice.else208, %choice.then207
  %choice.res210 = phi ptr [ @str.39.struct, %choice.then207 ], [ @str.40.struct, %choice.else208 ]
  %app.str.len211 = getelementptr inbounds { i64, ptr }, ptr %choice.res210, i32 0, i32 0
  %app.str.len212 = load i64, ptr %app.str.len211, align 8
  %app.str.len213 = and i64 %app.str.len212, 281474976710655
  %app.str.data214 = getelementptr inbounds { i64, ptr }, ptr %choice.res210, i32 0, i32 1
  %app.str.data215 = load ptr, ptr %app.str.data214, align 8
  %b.app.cur.len216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 0
  %b.app.cur.len217 = load i64, ptr %b.app.cur.len216, align 8
  %b.app.new.len218 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len217, i64 %app.str.len213)
  %sum219 = extractvalue { i64, i1 } %b.app.new.len218, 0
  %ovf220 = extractvalue { i64, i1 } %b.app.new.len218, 1
  br i1 %ovf220, label %str_overflow_abort222, label %b.app.new.len221

b.app.new.len221:                                 ; preds = %abort.dead223, %choice.exit209
  %b.cap224 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 2
  %b.cap225 = load i64, ptr %b.cap224, align 8
  %b.need.grow226 = icmp slt i64 %b.cap225, %sum219
  br i1 %b.need.grow226, label %b.grow2227, label %b.nogrow2228

str_overflow_abort222:                            ; preds = %choice.exit209
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead223:                                    ; No predecessors!
  br label %b.app.new.len221

b.grow2227:                                       ; preds = %b.app.new.len221
  %b.cap2230 = mul i64 %b.cap225, 2
  %b.cap.small231 = icmp slt i64 %b.cap2230, 16
  %b.cap.grow232 = select i1 %b.cap.small231, i64 16, i64 %b.cap2230
  %b.cap.need233 = icmp slt i64 %b.cap.grow232, %sum219
  %b.new.cap234 = select i1 %b.cap.need233, i64 %sum219, i64 %b.cap.grow232
  %b.cur.len2235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 0
  %b.cur.len2236 = load i64, ptr %b.cur.len2235, align 8
  %b.cur.data2237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 1
  %b.cur.data2238 = load ptr, ptr %b.cur.data2237, align 8
  %b.new.buf.len2239 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap234, i64 1)
  %sum240 = extractvalue { i64, i1 } %b.new.buf.len2239, 0
  %ovf241 = extractvalue { i64, i1 } %b.new.buf.len2239, 1
  br i1 %ovf241, label %str_overflow_abort243, label %b.new.buf.len2242

b.nogrow2228:                                     ; preds = %b.app.new.len221
  br label %b.grow_done229

b.grow_done229:                                   ; preds = %b.nogrow2228, %b.new.buf.len2242
  %b.app.data250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 1
  %b.app.data251 = load ptr, ptr %b.app.data250, align 8
  %b.app.dst252 = getelementptr i8, ptr %b.app.data251, i64 %b.app.cur.len217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst252, ptr align 1 %app.str.data215, i64 %app.str.len213, i1 false)
  %b.app.nul253 = getelementptr i8, ptr %b.app.data251, i64 %sum219
  store i8 0, ptr %b.app.nul253, align 1
  %b.len.gep254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 0
  store i64 %sum219, ptr %b.len.gep254, align 8
  br label %choice.exit38

b.new.buf.len2242:                                ; preds = %abort.dead244, %b.grow2227
  %arena.cur245 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 %sum240)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2246, ptr align 1 %b.cur.data2238, i64 %b.cur.len2236, i1 false)
  %b.grow2.nul247 = getelementptr i8, ptr %b.new.buf2246, i64 %b.cur.len2236
  store i8 0, ptr %b.grow2.nul247, align 1
  %b.new.data2.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 1
  store ptr %b.new.buf2246, ptr %b.new.data2.gep248, align 8
  %b.new.cap2.gep249 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 2
  store i64 %b.new.cap234, ptr %b.new.cap2.gep249, align 8
  br label %b.grow_done229

str_overflow_abort243:                            ; preds = %b.grow2227
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead244:                                    ; No predecessors!
  br label %b.new.buf.len2242

choice.case255:                                   ; preds = %choice.next200
  %var.load258 = load ptr, ptr %var.b, align 8
  %var.load259 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_date_into"(ptr %var.load258, ptr %var.load259)
  br label %choice.exit38

choice.next256:                                   ; preds = %choice.next200
  %val.match262 = icmp eq i64 %var.load37, 84
  br i1 %val.match262, label %choice.case260, label %choice.next261

choice.case260:                                   ; preds = %choice.next256
  %var.load263 = load ptr, ptr %var.b, align 8
  %var.load264 = load ptr, ptr %var.dt, align 8
  call void @"time::#write_clock_into"(ptr %var.load263, ptr %var.load264)
  br label %choice.exit38

choice.next261:                                   ; preds = %choice.next256
  %val.match267 = icmp eq i64 %var.load37, 82
  br i1 %val.match267, label %choice.case265, label %choice.next266

choice.case265:                                   ; preds = %choice.next261
  %var.load268 = load ptr, ptr %var.b, align 8
  %var.load269 = load ptr, ptr %var.dt, align 8
  %fld.gep270 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load269, i32 0, i32 3
  %fld.load271 = load i64, ptr %fld.gep270, align 8
  call void @"time::#pad2"(ptr %var.load268, i64 %fld.load271)
  %b.load272 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 0
  %b.rn.cur.len274 = load i64, ptr %b.rn.cur.len273, align 8
  %b.rn.new.len275 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len274, i64 1)
  %sum276 = extractvalue { i64, i1 } %b.rn.new.len275, 0
  %ovf277 = extractvalue { i64, i1 } %b.rn.new.len275, 1
  br i1 %ovf277, label %str_overflow_abort279, label %b.rn.new.len278

choice.next266:                                   ; preds = %choice.next261
  %val.match324 = icmp eq i64 %var.load37, 97
  br i1 %val.match324, label %choice.case322, label %choice.next323

b.rn.new.len278:                                  ; preds = %abort.dead280, %choice.case265
  %b.cap281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 2
  %b.cap282 = load i64, ptr %b.cap281, align 8
  %b.need.grow283 = icmp slt i64 %b.cap282, %sum276
  br i1 %b.need.grow283, label %b.grow2284, label %b.nogrow2285

str_overflow_abort279:                            ; preds = %choice.case265
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead280:                                    ; No predecessors!
  br label %b.rn.new.len278

b.grow2284:                                       ; preds = %b.rn.new.len278
  %b.cap2287 = mul i64 %b.cap282, 2
  %b.cap.small288 = icmp slt i64 %b.cap2287, 16
  %b.cap.grow289 = select i1 %b.cap.small288, i64 16, i64 %b.cap2287
  %b.cap.need290 = icmp slt i64 %b.cap.grow289, %sum276
  %b.new.cap291 = select i1 %b.cap.need290, i64 %sum276, i64 %b.cap.grow289
  %b.cur.len2292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 0
  %b.cur.len2293 = load i64, ptr %b.cur.len2292, align 8
  %b.cur.data2294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 1
  %b.cur.data2295 = load ptr, ptr %b.cur.data2294, align 8
  %b.new.buf.len2296 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap291, i64 1)
  %sum297 = extractvalue { i64, i1 } %b.new.buf.len2296, 0
  %ovf298 = extractvalue { i64, i1 } %b.new.buf.len2296, 1
  br i1 %ovf298, label %str_overflow_abort300, label %b.new.buf.len2299

b.nogrow2285:                                     ; preds = %b.rn.new.len278
  br label %b.grow_done286

b.grow_done286:                                   ; preds = %b.nogrow2285, %b.new.buf.len2299
  %b.rn.data307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 1
  %b.rn.data308 = load ptr, ptr %b.rn.data307, align 8
  %b.rn.dst309 = getelementptr i8, ptr %b.rn.data308, i64 %b.rn.cur.len274
  br i1 true, label %br.b1.87, label %br.c2.87

b.new.buf.len2299:                                ; preds = %abort.dead301, %b.grow2284
  %arena.cur302 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2303 = call ptr @dva_arena_alloc(ptr %arena.cur302, i64 %sum297)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2303, ptr align 1 %b.cur.data2295, i64 %b.cur.len2293, i1 false)
  %b.grow2.nul304 = getelementptr i8, ptr %b.new.buf2303, i64 %b.cur.len2293
  store i8 0, ptr %b.grow2.nul304, align 1
  %b.new.data2.gep305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 1
  store ptr %b.new.buf2303, ptr %b.new.data2.gep305, align 8
  %b.new.cap2.gep306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 2
  store i64 %b.new.cap291, ptr %b.new.cap2.gep306, align 8
  br label %b.grow_done286

str_overflow_abort300:                            ; preds = %b.grow2284
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead301:                                    ; No predecessors!
  br label %b.new.buf.len2299

br.b1.87:                                         ; preds = %b.grow_done286
  store i8 58, ptr %b.rn.dst309, align 1
  br label %br.done.87

br.c2.87:                                         ; preds = %b.grow_done286
  br i1 true, label %br.b2.87, label %br.c3.87

br.b2.87:                                         ; preds = %br.c2.87
  store i8 -64, ptr %b.rn.dst309, align 1
  %br.dst1310 = getelementptr i8, ptr %b.rn.dst309, i64 1
  store i8 -70, ptr %br.dst1310, align 1
  br label %br.done.87

br.c3.87:                                         ; preds = %br.c2.87
  br i1 true, label %br.b3.87, label %br.b4.87

br.b3.87:                                         ; preds = %br.c3.87
  store i8 -32, ptr %b.rn.dst309, align 1
  %br.dst1.3311 = getelementptr i8, ptr %b.rn.dst309, i64 1
  store i8 -128, ptr %br.dst1.3311, align 1
  %br.dst2.3312 = getelementptr i8, ptr %b.rn.dst309, i64 2
  store i8 -70, ptr %br.dst2.3312, align 1
  br label %br.done.87

br.b4.87:                                         ; preds = %br.c3.87
  store i8 -16, ptr %b.rn.dst309, align 1
  %br.dst1.4313 = getelementptr i8, ptr %b.rn.dst309, i64 1
  store i8 -128, ptr %br.dst1.4313, align 1
  %br.dst2.4314 = getelementptr i8, ptr %b.rn.dst309, i64 2
  store i8 -128, ptr %br.dst2.4314, align 1
  %br.dst3.4315 = getelementptr i8, ptr %b.rn.dst309, i64 3
  store i8 -70, ptr %br.dst3.4315, align 1
  br label %br.done.87

br.done.87:                                       ; preds = %br.b4.87, %br.b3.87, %br.b2.87, %br.b1.87
  %br.nul316 = getelementptr i8, ptr %b.rn.data308, i64 %sum276
  store i8 0, ptr %br.nul316, align 1
  %b.len.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 0
  store i64 %sum276, ptr %b.len.gep317, align 8
  %var.load318 = load ptr, ptr %var.b, align 8
  %var.load319 = load ptr, ptr %var.dt, align 8
  %fld.gep320 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load319, i32 0, i32 4
  %fld.load321 = load i64, ptr %fld.gep320, align 8
  call void @"time::#pad2"(ptr %var.load318, i64 %fld.load321)
  br label %choice.exit38

choice.case322:                                   ; preds = %choice.next266
  %b.load325 = load ptr, ptr %var.b, align 8
  %var.load326 = load ptr, ptr %var.dt, align 8
  %fld.gep327 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load326, i32 0, i32 7
  %fld.load328 = load i64, ptr %fld.gep327, align 8
  %call.res = call { i64, ptr } @"time::#short_weekday_name"(i64 %fld.load328)
  %arena.cur329 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur329, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len330 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %app.str.len331 = load i64, ptr %app.str.len330, align 8
  %app.str.len332 = and i64 %app.str.len331, 281474976710655
  %app.str.data333 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data334 = load ptr, ptr %app.str.data333, align 8
  %b.app.cur.len335 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load325, i32 0, i32 0
  %b.app.cur.len336 = load i64, ptr %b.app.cur.len335, align 8
  %b.app.new.len337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len336, i64 %app.str.len332)
  %sum338 = extractvalue { i64, i1 } %b.app.new.len337, 0
  %ovf339 = extractvalue { i64, i1 } %b.app.new.len337, 1
  br i1 %ovf339, label %str_overflow_abort341, label %b.app.new.len340

choice.next323:                                   ; preds = %choice.next266
  %val.match376 = icmp eq i64 %var.load37, 65
  br i1 %val.match376, label %choice.case374, label %choice.next375

b.app.new.len340:                                 ; preds = %abort.dead342, %choice.case322
  %b.cap343 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load325, i32 0, i32 2
  %b.cap344 = load i64, ptr %b.cap343, align 8
  %b.need.grow345 = icmp slt i64 %b.cap344, %sum338
  br i1 %b.need.grow345, label %b.grow2346, label %b.nogrow2347

str_overflow_abort341:                            ; preds = %choice.case322
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead342:                                    ; No predecessors!
  br label %b.app.new.len340

b.grow2346:                                       ; preds = %b.app.new.len340
  %b.cap2349 = mul i64 %b.cap344, 2
  %b.cap.small350 = icmp slt i64 %b.cap2349, 16
  %b.cap.grow351 = select i1 %b.cap.small350, i64 16, i64 %b.cap2349
  %b.cap.need352 = icmp slt i64 %b.cap.grow351, %sum338
  %b.new.cap353 = select i1 %b.cap.need352, i64 %sum338, i64 %b.cap.grow351
  %b.cur.len2354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load325, i32 0, i32 0
  %b.cur.len2355 = load i64, ptr %b.cur.len2354, align 8
  %b.cur.data2356 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load325, i32 0, i32 1
  %b.cur.data2357 = load ptr, ptr %b.cur.data2356, align 8
  %b.new.buf.len2358 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap353, i64 1)
  %sum359 = extractvalue { i64, i1 } %b.new.buf.len2358, 0
  %ovf360 = extractvalue { i64, i1 } %b.new.buf.len2358, 1
  br i1 %ovf360, label %str_overflow_abort362, label %b.new.buf.len2361

b.nogrow2347:                                     ; preds = %b.app.new.len340
  br label %b.grow_done348

b.grow_done348:                                   ; preds = %b.nogrow2347, %b.new.buf.len2361
  %b.app.data369 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load325, i32 0, i32 1
  %b.app.data370 = load ptr, ptr %b.app.data369, align 8
  %b.app.dst371 = getelementptr i8, ptr %b.app.data370, i64 %b.app.cur.len336
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst371, ptr align 1 %app.str.data334, i64 %app.str.len332, i1 false)
  %b.app.nul372 = getelementptr i8, ptr %b.app.data370, i64 %sum338
  store i8 0, ptr %b.app.nul372, align 1
  %b.len.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load325, i32 0, i32 0
  store i64 %sum338, ptr %b.len.gep373, align 8
  br label %choice.exit38

b.new.buf.len2361:                                ; preds = %abort.dead363, %b.grow2346
  %arena.cur364 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 %sum359)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2365, ptr align 1 %b.cur.data2357, i64 %b.cur.len2355, i1 false)
  %b.grow2.nul366 = getelementptr i8, ptr %b.new.buf2365, i64 %b.cur.len2355
  store i8 0, ptr %b.grow2.nul366, align 1
  %b.new.data2.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load325, i32 0, i32 1
  store ptr %b.new.buf2365, ptr %b.new.data2.gep367, align 8
  %b.new.cap2.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load325, i32 0, i32 2
  store i64 %b.new.cap353, ptr %b.new.cap2.gep368, align 8
  br label %b.grow_done348

str_overflow_abort362:                            ; preds = %b.grow2346
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead363:                                    ; No predecessors!
  br label %b.new.buf.len2361

choice.case374:                                   ; preds = %choice.next323
  %b.load377 = load ptr, ptr %var.b, align 8
  %var.load378 = load ptr, ptr %var.dt, align 8
  %fld.gep379 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load378, i32 0, i32 7
  %fld.load380 = load i64, ptr %fld.gep379, align 8
  %call.res381 = call { i64, ptr } @"time::#full_weekday_name"(i64 %fld.load380)
  %arena.cur382 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc383 = call ptr @dva_arena_alloc(ptr %arena.cur382, i64 16)
  store { i64, ptr } %call.res381, ptr %ret.ub.alloc383, align 8
  %app.str.len384 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc383, i32 0, i32 0
  %app.str.len385 = load i64, ptr %app.str.len384, align 8
  %app.str.len386 = and i64 %app.str.len385, 281474976710655
  %app.str.data387 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc383, i32 0, i32 1
  %app.str.data388 = load ptr, ptr %app.str.data387, align 8
  %b.app.cur.len389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 0
  %b.app.cur.len390 = load i64, ptr %b.app.cur.len389, align 8
  %b.app.new.len391 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len390, i64 %app.str.len386)
  %sum392 = extractvalue { i64, i1 } %b.app.new.len391, 0
  %ovf393 = extractvalue { i64, i1 } %b.app.new.len391, 1
  br i1 %ovf393, label %str_overflow_abort395, label %b.app.new.len394

choice.next375:                                   ; preds = %choice.next323
  %val.match430 = icmp eq i64 %var.load37, 98
  %val.match431 = icmp eq i64 %var.load37, 104
  %case.or = or i1 %val.match430, %val.match431
  br i1 %case.or, label %choice.case428, label %choice.next429

b.app.new.len394:                                 ; preds = %abort.dead396, %choice.case374
  %b.cap397 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 2
  %b.cap398 = load i64, ptr %b.cap397, align 8
  %b.need.grow399 = icmp slt i64 %b.cap398, %sum392
  br i1 %b.need.grow399, label %b.grow2400, label %b.nogrow2401

str_overflow_abort395:                            ; preds = %choice.case374
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead396:                                    ; No predecessors!
  br label %b.app.new.len394

b.grow2400:                                       ; preds = %b.app.new.len394
  %b.cap2403 = mul i64 %b.cap398, 2
  %b.cap.small404 = icmp slt i64 %b.cap2403, 16
  %b.cap.grow405 = select i1 %b.cap.small404, i64 16, i64 %b.cap2403
  %b.cap.need406 = icmp slt i64 %b.cap.grow405, %sum392
  %b.new.cap407 = select i1 %b.cap.need406, i64 %sum392, i64 %b.cap.grow405
  %b.cur.len2408 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 0
  %b.cur.len2409 = load i64, ptr %b.cur.len2408, align 8
  %b.cur.data2410 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 1
  %b.cur.data2411 = load ptr, ptr %b.cur.data2410, align 8
  %b.new.buf.len2412 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap407, i64 1)
  %sum413 = extractvalue { i64, i1 } %b.new.buf.len2412, 0
  %ovf414 = extractvalue { i64, i1 } %b.new.buf.len2412, 1
  br i1 %ovf414, label %str_overflow_abort416, label %b.new.buf.len2415

b.nogrow2401:                                     ; preds = %b.app.new.len394
  br label %b.grow_done402

b.grow_done402:                                   ; preds = %b.nogrow2401, %b.new.buf.len2415
  %b.app.data423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 1
  %b.app.data424 = load ptr, ptr %b.app.data423, align 8
  %b.app.dst425 = getelementptr i8, ptr %b.app.data424, i64 %b.app.cur.len390
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst425, ptr align 1 %app.str.data388, i64 %app.str.len386, i1 false)
  %b.app.nul426 = getelementptr i8, ptr %b.app.data424, i64 %sum392
  store i8 0, ptr %b.app.nul426, align 1
  %b.len.gep427 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 0
  store i64 %sum392, ptr %b.len.gep427, align 8
  br label %choice.exit38

b.new.buf.len2415:                                ; preds = %abort.dead417, %b.grow2400
  %arena.cur418 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 %sum413)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2419, ptr align 1 %b.cur.data2411, i64 %b.cur.len2409, i1 false)
  %b.grow2.nul420 = getelementptr i8, ptr %b.new.buf2419, i64 %b.cur.len2409
  store i8 0, ptr %b.grow2.nul420, align 1
  %b.new.data2.gep421 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 1
  store ptr %b.new.buf2419, ptr %b.new.data2.gep421, align 8
  %b.new.cap2.gep422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 2
  store i64 %b.new.cap407, ptr %b.new.cap2.gep422, align 8
  br label %b.grow_done402

str_overflow_abort416:                            ; preds = %b.grow2400
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead417:                                    ; No predecessors!
  br label %b.new.buf.len2415

choice.case428:                                   ; preds = %choice.next375
  %b.load432 = load ptr, ptr %var.b, align 8
  %var.load433 = load ptr, ptr %var.dt, align 8
  %fld.gep434 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load433, i32 0, i32 1
  %fld.load435 = load i64, ptr %fld.gep434, align 8
  %call.res436 = call { i64, ptr } @"time::#short_month_name"(i64 %fld.load435)
  %arena.cur437 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc438 = call ptr @dva_arena_alloc(ptr %arena.cur437, i64 16)
  store { i64, ptr } %call.res436, ptr %ret.ub.alloc438, align 8
  %app.str.len439 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc438, i32 0, i32 0
  %app.str.len440 = load i64, ptr %app.str.len439, align 8
  %app.str.len441 = and i64 %app.str.len440, 281474976710655
  %app.str.data442 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc438, i32 0, i32 1
  %app.str.data443 = load ptr, ptr %app.str.data442, align 8
  %b.app.cur.len444 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 0
  %b.app.cur.len445 = load i64, ptr %b.app.cur.len444, align 8
  %b.app.new.len446 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len445, i64 %app.str.len441)
  %sum447 = extractvalue { i64, i1 } %b.app.new.len446, 0
  %ovf448 = extractvalue { i64, i1 } %b.app.new.len446, 1
  br i1 %ovf448, label %str_overflow_abort450, label %b.app.new.len449

choice.next429:                                   ; preds = %choice.next375
  %val.match485 = icmp eq i64 %var.load37, 66
  br i1 %val.match485, label %choice.case483, label %choice.next484

b.app.new.len449:                                 ; preds = %abort.dead451, %choice.case428
  %b.cap452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 2
  %b.cap453 = load i64, ptr %b.cap452, align 8
  %b.need.grow454 = icmp slt i64 %b.cap453, %sum447
  br i1 %b.need.grow454, label %b.grow2455, label %b.nogrow2456

str_overflow_abort450:                            ; preds = %choice.case428
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead451:                                    ; No predecessors!
  br label %b.app.new.len449

b.grow2455:                                       ; preds = %b.app.new.len449
  %b.cap2458 = mul i64 %b.cap453, 2
  %b.cap.small459 = icmp slt i64 %b.cap2458, 16
  %b.cap.grow460 = select i1 %b.cap.small459, i64 16, i64 %b.cap2458
  %b.cap.need461 = icmp slt i64 %b.cap.grow460, %sum447
  %b.new.cap462 = select i1 %b.cap.need461, i64 %sum447, i64 %b.cap.grow460
  %b.cur.len2463 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 0
  %b.cur.len2464 = load i64, ptr %b.cur.len2463, align 8
  %b.cur.data2465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 1
  %b.cur.data2466 = load ptr, ptr %b.cur.data2465, align 8
  %b.new.buf.len2467 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap462, i64 1)
  %sum468 = extractvalue { i64, i1 } %b.new.buf.len2467, 0
  %ovf469 = extractvalue { i64, i1 } %b.new.buf.len2467, 1
  br i1 %ovf469, label %str_overflow_abort471, label %b.new.buf.len2470

b.nogrow2456:                                     ; preds = %b.app.new.len449
  br label %b.grow_done457

b.grow_done457:                                   ; preds = %b.nogrow2456, %b.new.buf.len2470
  %b.app.data478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 1
  %b.app.data479 = load ptr, ptr %b.app.data478, align 8
  %b.app.dst480 = getelementptr i8, ptr %b.app.data479, i64 %b.app.cur.len445
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst480, ptr align 1 %app.str.data443, i64 %app.str.len441, i1 false)
  %b.app.nul481 = getelementptr i8, ptr %b.app.data479, i64 %sum447
  store i8 0, ptr %b.app.nul481, align 1
  %b.len.gep482 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 0
  store i64 %sum447, ptr %b.len.gep482, align 8
  br label %choice.exit38

b.new.buf.len2470:                                ; preds = %abort.dead472, %b.grow2455
  %arena.cur473 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2474 = call ptr @dva_arena_alloc(ptr %arena.cur473, i64 %sum468)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2474, ptr align 1 %b.cur.data2466, i64 %b.cur.len2464, i1 false)
  %b.grow2.nul475 = getelementptr i8, ptr %b.new.buf2474, i64 %b.cur.len2464
  store i8 0, ptr %b.grow2.nul475, align 1
  %b.new.data2.gep476 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 1
  store ptr %b.new.buf2474, ptr %b.new.data2.gep476, align 8
  %b.new.cap2.gep477 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load432, i32 0, i32 2
  store i64 %b.new.cap462, ptr %b.new.cap2.gep477, align 8
  br label %b.grow_done457

str_overflow_abort471:                            ; preds = %b.grow2455
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead472:                                    ; No predecessors!
  br label %b.new.buf.len2470

choice.case483:                                   ; preds = %choice.next429
  %b.load486 = load ptr, ptr %var.b, align 8
  %var.load487 = load ptr, ptr %var.dt, align 8
  %fld.gep488 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load487, i32 0, i32 1
  %fld.load489 = load i64, ptr %fld.gep488, align 8
  %call.res490 = call { i64, ptr } @"time::#full_month_name"(i64 %fld.load489)
  %arena.cur491 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc492 = call ptr @dva_arena_alloc(ptr %arena.cur491, i64 16)
  store { i64, ptr } %call.res490, ptr %ret.ub.alloc492, align 8
  %app.str.len493 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc492, i32 0, i32 0
  %app.str.len494 = load i64, ptr %app.str.len493, align 8
  %app.str.len495 = and i64 %app.str.len494, 281474976710655
  %app.str.data496 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc492, i32 0, i32 1
  %app.str.data497 = load ptr, ptr %app.str.data496, align 8
  %b.app.cur.len498 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 0
  %b.app.cur.len499 = load i64, ptr %b.app.cur.len498, align 8
  %b.app.new.len500 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len499, i64 %app.str.len495)
  %sum501 = extractvalue { i64, i1 } %b.app.new.len500, 0
  %ovf502 = extractvalue { i64, i1 } %b.app.new.len500, 1
  br i1 %ovf502, label %str_overflow_abort504, label %b.app.new.len503

choice.next484:                                   ; preds = %choice.next429
  %val.match539 = icmp eq i64 %var.load37, 106
  br i1 %val.match539, label %choice.case537, label %choice.next538

b.app.new.len503:                                 ; preds = %abort.dead505, %choice.case483
  %b.cap506 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 2
  %b.cap507 = load i64, ptr %b.cap506, align 8
  %b.need.grow508 = icmp slt i64 %b.cap507, %sum501
  br i1 %b.need.grow508, label %b.grow2509, label %b.nogrow2510

str_overflow_abort504:                            ; preds = %choice.case483
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead505:                                    ; No predecessors!
  br label %b.app.new.len503

b.grow2509:                                       ; preds = %b.app.new.len503
  %b.cap2512 = mul i64 %b.cap507, 2
  %b.cap.small513 = icmp slt i64 %b.cap2512, 16
  %b.cap.grow514 = select i1 %b.cap.small513, i64 16, i64 %b.cap2512
  %b.cap.need515 = icmp slt i64 %b.cap.grow514, %sum501
  %b.new.cap516 = select i1 %b.cap.need515, i64 %sum501, i64 %b.cap.grow514
  %b.cur.len2517 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 0
  %b.cur.len2518 = load i64, ptr %b.cur.len2517, align 8
  %b.cur.data2519 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 1
  %b.cur.data2520 = load ptr, ptr %b.cur.data2519, align 8
  %b.new.buf.len2521 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap516, i64 1)
  %sum522 = extractvalue { i64, i1 } %b.new.buf.len2521, 0
  %ovf523 = extractvalue { i64, i1 } %b.new.buf.len2521, 1
  br i1 %ovf523, label %str_overflow_abort525, label %b.new.buf.len2524

b.nogrow2510:                                     ; preds = %b.app.new.len503
  br label %b.grow_done511

b.grow_done511:                                   ; preds = %b.nogrow2510, %b.new.buf.len2524
  %b.app.data532 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 1
  %b.app.data533 = load ptr, ptr %b.app.data532, align 8
  %b.app.dst534 = getelementptr i8, ptr %b.app.data533, i64 %b.app.cur.len499
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst534, ptr align 1 %app.str.data497, i64 %app.str.len495, i1 false)
  %b.app.nul535 = getelementptr i8, ptr %b.app.data533, i64 %sum501
  store i8 0, ptr %b.app.nul535, align 1
  %b.len.gep536 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 0
  store i64 %sum501, ptr %b.len.gep536, align 8
  br label %choice.exit38

b.new.buf.len2524:                                ; preds = %abort.dead526, %b.grow2509
  %arena.cur527 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2528 = call ptr @dva_arena_alloc(ptr %arena.cur527, i64 %sum522)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2528, ptr align 1 %b.cur.data2520, i64 %b.cur.len2518, i1 false)
  %b.grow2.nul529 = getelementptr i8, ptr %b.new.buf2528, i64 %b.cur.len2518
  store i8 0, ptr %b.grow2.nul529, align 1
  %b.new.data2.gep530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 1
  store ptr %b.new.buf2528, ptr %b.new.data2.gep530, align 8
  %b.new.cap2.gep531 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load486, i32 0, i32 2
  store i64 %b.new.cap516, ptr %b.new.cap2.gep531, align 8
  br label %b.grow_done511

str_overflow_abort525:                            ; preds = %b.grow2509
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead526:                                    ; No predecessors!
  br label %b.new.buf.len2524

choice.case537:                                   ; preds = %choice.next484
  %var.load540 = load ptr, ptr %var.b, align 8
  %var.load541 = load ptr, ptr %var.dt, align 8
  %fld.gep542 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load541, i32 0, i32 8
  %fld.load543 = load i64, ptr %fld.gep542, align 8
  call void @"time::#pad3"(ptr %var.load540, i64 %fld.load543)
  br label %choice.exit38

choice.next538:                                   ; preds = %choice.next484
  %val.match546 = icmp eq i64 %var.load37, 119
  br i1 %val.match546, label %choice.case544, label %choice.next545

choice.case544:                                   ; preds = %choice.next538
  %b.load547 = load ptr, ptr %var.b, align 8
  %var.load548 = load ptr, ptr %var.dt, align 8
  %fld.gep549 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load548, i32 0, i32 7
  %fld.load550 = load i64, ptr %fld.gep549, align 8
  %addtmp551 = add i64 48, %fld.load550
  %b.b.ge0552 = icmp sge i64 %addtmp551, 0
  %b.b.le255553 = icmp sle i64 %addtmp551, 255
  %b.byte.range554 = and i1 %b.b.ge0552, %b.b.le255553
  br i1 %b.byte.range554, label %b.byte_ok555, label %b.byte_err556

choice.next545:                                   ; preds = %choice.next538
  %val.match593 = icmp eq i64 %var.load37, 117
  br i1 %val.match593, label %choice.case591, label %choice.next592

b.byte_ok555:                                     ; preds = %abort.dead557, %choice.case544
  %b.byte.i8558 = trunc i64 %addtmp551 to i8
  %b.len559 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 0
  %b.len560 = load i64, ptr %b.len559, align 8
  %b.cap561 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 2
  %b.cap562 = load i64, ptr %b.cap561, align 8
  %b.data563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 1
  %b.data564 = load ptr, ptr %b.data563, align 8
  %b.needs.grow565 = icmp eq i64 %b.len560, %b.cap562
  br i1 %b.needs.grow565, label %b.grow566, label %b.nogrow567

b.byte_err556:                                    ; preds = %choice.case544
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead557:                                    ; No predecessors!
  br label %b.byte_ok555

b.grow566:                                        ; preds = %b.byte_ok555
  %b.cap2569 = mul i64 %b.cap562, 2
  %b.cap.small570 = icmp slt i64 %b.cap2569, 16
  %b.new.cap571 = select i1 %b.cap.small570, i64 16, i64 %b.cap2569
  %b.new.buf.len572 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap571, i64 1)
  %sum573 = extractvalue { i64, i1 } %b.new.buf.len572, 0
  %ovf574 = extractvalue { i64, i1 } %b.new.buf.len572, 1
  br i1 %ovf574, label %str_overflow_abort576, label %b.new.buf.len575

b.nogrow567:                                      ; preds = %b.byte_ok555
  br label %b.push_done568

b.push_done568:                                   ; preds = %b.nogrow567, %b.new.buf.len575
  %b.cur.data583 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 1
  %b.cur.data584 = load ptr, ptr %b.cur.data583, align 8
  %b.cur.len585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 0
  %b.cur.len586 = load i64, ptr %b.cur.len585, align 8
  %b.byte.gep587 = getelementptr i8, ptr %b.cur.data584, i64 %b.cur.len586
  store i8 %b.byte.i8558, ptr %b.byte.gep587, align 1
  %b.next.len588 = add i64 %b.cur.len586, 1
  %b.nul589 = getelementptr i8, ptr %b.cur.data584, i64 %b.next.len588
  store i8 0, ptr %b.nul589, align 1
  %b.len.gep590 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 0
  store i64 %b.next.len588, ptr %b.len.gep590, align 8
  br label %choice.exit38

b.new.buf.len575:                                 ; preds = %abort.dead577, %b.grow566
  %arena.cur578 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf579 = call ptr @dva_arena_alloc(ptr %arena.cur578, i64 %sum573)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf579, ptr align 1 %b.data564, i64 %b.len560, i1 false)
  %b.grow.nul580 = getelementptr i8, ptr %b.new.buf579, i64 %b.len560
  store i8 0, ptr %b.grow.nul580, align 1
  %b.new.data.gep581 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 1
  store ptr %b.new.buf579, ptr %b.new.data.gep581, align 8
  %b.new.cap.gep582 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 2
  store i64 %b.new.cap571, ptr %b.new.cap.gep582, align 8
  br label %b.push_done568

str_overflow_abort576:                            ; preds = %b.grow566
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead577:                                    ; No predecessors!
  br label %b.new.buf.len575

choice.case591:                                   ; preds = %choice.next545
  %b.load594 = load ptr, ptr %var.b, align 8
  %var.load595 = load ptr, ptr %var.dt, align 8
  %fld.gep596 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load595, i32 0, i32 7
  %fld.load597 = load i64, ptr %fld.gep596, align 8
  %cmptmp598 = icmp eq i64 %fld.load597, 0
  br i1 %cmptmp598, label %choice.then599, label %choice.else600

choice.next592:                                   ; preds = %choice.next545
  %val.match648 = icmp eq i64 %var.load37, 122
  br i1 %val.match648, label %choice.case646, label %choice.next647

choice.then599:                                   ; preds = %choice.case591
  br label %choice.exit601

choice.else600:                                   ; preds = %choice.case591
  %var.load602 = load ptr, ptr %var.dt, align 8
  %fld.gep603 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load602, i32 0, i32 7
  %fld.load604 = load i64, ptr %fld.gep603, align 8
  br label %choice.exit601

choice.exit601:                                   ; preds = %choice.else600, %choice.then599
  %choice.res605 = phi i64 [ 7, %choice.then599 ], [ %fld.load604, %choice.else600 ]
  %addtmp606 = add i64 48, %choice.res605
  %b.b.ge0607 = icmp sge i64 %addtmp606, 0
  %b.b.le255608 = icmp sle i64 %addtmp606, 255
  %b.byte.range609 = and i1 %b.b.ge0607, %b.b.le255608
  br i1 %b.byte.range609, label %b.byte_ok610, label %b.byte_err611

b.byte_ok610:                                     ; preds = %abort.dead612, %choice.exit601
  %b.byte.i8613 = trunc i64 %addtmp606 to i8
  %b.len614 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load594, i32 0, i32 0
  %b.len615 = load i64, ptr %b.len614, align 8
  %b.cap616 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load594, i32 0, i32 2
  %b.cap617 = load i64, ptr %b.cap616, align 8
  %b.data618 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load594, i32 0, i32 1
  %b.data619 = load ptr, ptr %b.data618, align 8
  %b.needs.grow620 = icmp eq i64 %b.len615, %b.cap617
  br i1 %b.needs.grow620, label %b.grow621, label %b.nogrow622

b.byte_err611:                                    ; preds = %choice.exit601
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead612:                                    ; No predecessors!
  br label %b.byte_ok610

b.grow621:                                        ; preds = %b.byte_ok610
  %b.cap2624 = mul i64 %b.cap617, 2
  %b.cap.small625 = icmp slt i64 %b.cap2624, 16
  %b.new.cap626 = select i1 %b.cap.small625, i64 16, i64 %b.cap2624
  %b.new.buf.len627 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap626, i64 1)
  %sum628 = extractvalue { i64, i1 } %b.new.buf.len627, 0
  %ovf629 = extractvalue { i64, i1 } %b.new.buf.len627, 1
  br i1 %ovf629, label %str_overflow_abort631, label %b.new.buf.len630

b.nogrow622:                                      ; preds = %b.byte_ok610
  br label %b.push_done623

b.push_done623:                                   ; preds = %b.nogrow622, %b.new.buf.len630
  %b.cur.data638 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load594, i32 0, i32 1
  %b.cur.data639 = load ptr, ptr %b.cur.data638, align 8
  %b.cur.len640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load594, i32 0, i32 0
  %b.cur.len641 = load i64, ptr %b.cur.len640, align 8
  %b.byte.gep642 = getelementptr i8, ptr %b.cur.data639, i64 %b.cur.len641
  store i8 %b.byte.i8613, ptr %b.byte.gep642, align 1
  %b.next.len643 = add i64 %b.cur.len641, 1
  %b.nul644 = getelementptr i8, ptr %b.cur.data639, i64 %b.next.len643
  store i8 0, ptr %b.nul644, align 1
  %b.len.gep645 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load594, i32 0, i32 0
  store i64 %b.next.len643, ptr %b.len.gep645, align 8
  br label %choice.exit38

b.new.buf.len630:                                 ; preds = %abort.dead632, %b.grow621
  %arena.cur633 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf634 = call ptr @dva_arena_alloc(ptr %arena.cur633, i64 %sum628)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf634, ptr align 1 %b.data619, i64 %b.len615, i1 false)
  %b.grow.nul635 = getelementptr i8, ptr %b.new.buf634, i64 %b.len615
  store i8 0, ptr %b.grow.nul635, align 1
  %b.new.data.gep636 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load594, i32 0, i32 1
  store ptr %b.new.buf634, ptr %b.new.data.gep636, align 8
  %b.new.cap.gep637 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load594, i32 0, i32 2
  store i64 %b.new.cap626, ptr %b.new.cap.gep637, align 8
  br label %b.push_done623

str_overflow_abort631:                            ; preds = %b.grow621
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead632:                                    ; No predecessors!
  br label %b.new.buf.len630

choice.case646:                                   ; preds = %choice.next592
  %var.load649 = load ptr, ptr %var.b, align 8
  %var.load650 = load ptr, ptr %var.dt, align 8
  %fld.gep651 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load650, i32 0, i32 9
  %fld.load652 = load i64, ptr %fld.gep651, align 8
  call void @"time::#write_tz_compact_into"(ptr %var.load649, i64 %fld.load652)
  br label %choice.exit38

choice.next647:                                   ; preds = %choice.next592
  %val.match655 = icmp eq i64 %var.load37, 90
  br i1 %val.match655, label %choice.case653, label %choice.next654

choice.case653:                                   ; preds = %choice.next647
  %var.load656 = load ptr, ptr %var.dt, align 8
  %fld.gep657 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load656, i32 0, i32 9
  %fld.load658 = load i64, ptr %fld.gep657, align 8
  %cmptmp659 = icmp eq i64 %fld.load658, 0
  br i1 %cmptmp659, label %choice.then660, label %choice.else661

choice.next654:                                   ; preds = %choice.next647
  %val.match712 = icmp eq i64 %var.load37, 115
  br i1 %val.match712, label %choice.case710, label %choice.next711

choice.then660:                                   ; preds = %choice.case653
  %b.load663 = load ptr, ptr %var.b, align 8
  %app.str.len664 = load i64, ptr @str.41.struct, align 8
  %app.str.len665 = and i64 %app.str.len664, 281474976710655
  %app.str.data666 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %b.app.cur.len667 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load663, i32 0, i32 0
  %b.app.cur.len668 = load i64, ptr %b.app.cur.len667, align 8
  %b.app.new.len669 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len668, i64 %app.str.len665)
  %sum670 = extractvalue { i64, i1 } %b.app.new.len669, 0
  %ovf671 = extractvalue { i64, i1 } %b.app.new.len669, 1
  br i1 %ovf671, label %str_overflow_abort673, label %b.app.new.len672

choice.else661:                                   ; preds = %choice.case653
  %var.load706 = load ptr, ptr %var.b, align 8
  %var.load707 = load ptr, ptr %var.dt, align 8
  %fld.gep708 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load707, i32 0, i32 9
  %fld.load709 = load i64, ptr %fld.gep708, align 8
  call void @"time::#write_tz_iso_into"(ptr %var.load706, i64 %fld.load709)
  br label %choice.exit662

choice.exit662:                                   ; preds = %choice.else661, %b.grow_done680
  br label %choice.exit38

b.app.new.len672:                                 ; preds = %abort.dead674, %choice.then660
  %b.cap675 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load663, i32 0, i32 2
  %b.cap676 = load i64, ptr %b.cap675, align 8
  %b.need.grow677 = icmp slt i64 %b.cap676, %sum670
  br i1 %b.need.grow677, label %b.grow2678, label %b.nogrow2679

str_overflow_abort673:                            ; preds = %choice.then660
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead674:                                    ; No predecessors!
  br label %b.app.new.len672

b.grow2678:                                       ; preds = %b.app.new.len672
  %b.cap2681 = mul i64 %b.cap676, 2
  %b.cap.small682 = icmp slt i64 %b.cap2681, 16
  %b.cap.grow683 = select i1 %b.cap.small682, i64 16, i64 %b.cap2681
  %b.cap.need684 = icmp slt i64 %b.cap.grow683, %sum670
  %b.new.cap685 = select i1 %b.cap.need684, i64 %sum670, i64 %b.cap.grow683
  %b.cur.len2686 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load663, i32 0, i32 0
  %b.cur.len2687 = load i64, ptr %b.cur.len2686, align 8
  %b.cur.data2688 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load663, i32 0, i32 1
  %b.cur.data2689 = load ptr, ptr %b.cur.data2688, align 8
  %b.new.buf.len2690 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap685, i64 1)
  %sum691 = extractvalue { i64, i1 } %b.new.buf.len2690, 0
  %ovf692 = extractvalue { i64, i1 } %b.new.buf.len2690, 1
  br i1 %ovf692, label %str_overflow_abort694, label %b.new.buf.len2693

b.nogrow2679:                                     ; preds = %b.app.new.len672
  br label %b.grow_done680

b.grow_done680:                                   ; preds = %b.nogrow2679, %b.new.buf.len2693
  %b.app.data701 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load663, i32 0, i32 1
  %b.app.data702 = load ptr, ptr %b.app.data701, align 8
  %b.app.dst703 = getelementptr i8, ptr %b.app.data702, i64 %b.app.cur.len668
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst703, ptr align 1 %app.str.data666, i64 %app.str.len665, i1 false)
  %b.app.nul704 = getelementptr i8, ptr %b.app.data702, i64 %sum670
  store i8 0, ptr %b.app.nul704, align 1
  %b.len.gep705 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load663, i32 0, i32 0
  store i64 %sum670, ptr %b.len.gep705, align 8
  br label %choice.exit662

b.new.buf.len2693:                                ; preds = %abort.dead695, %b.grow2678
  %arena.cur696 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2697 = call ptr @dva_arena_alloc(ptr %arena.cur696, i64 %sum691)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2697, ptr align 1 %b.cur.data2689, i64 %b.cur.len2687, i1 false)
  %b.grow2.nul698 = getelementptr i8, ptr %b.new.buf2697, i64 %b.cur.len2687
  store i8 0, ptr %b.grow2.nul698, align 1
  %b.new.data2.gep699 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load663, i32 0, i32 1
  store ptr %b.new.buf2697, ptr %b.new.data2.gep699, align 8
  %b.new.cap2.gep700 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load663, i32 0, i32 2
  store i64 %b.new.cap685, ptr %b.new.cap2.gep700, align 8
  br label %b.grow_done680

str_overflow_abort694:                            ; preds = %b.grow2678
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead695:                                    ; No predecessors!
  br label %b.new.buf.len2693

choice.case710:                                   ; preds = %choice.next654
  %b.load713 = load ptr, ptr %var.b, align 8
  %var.load714 = load ptr, ptr %var.dt, align 8
  %call.res715 = call i64 @"time::epoch"(ptr %var.load714)
  %b.int.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load713, i32 0, i32 0
  %b.int.cur.len716 = load i64, ptr %b.int.cur.len, align 8
  %b.int.cap = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.int.cur.len716, i64 24)
  %sum717 = extractvalue { i64, i1 } %b.int.cap, 0
  %ovf718 = extractvalue { i64, i1 } %b.int.cap, 1
  br i1 %ovf718, label %str_overflow_abort720, label %b.int.cap719

choice.next711:                                   ; preds = %choice.next654
  %val.match752 = icmp eq i64 %var.load37, 110
  br i1 %val.match752, label %choice.case750, label %choice.next751

b.int.cap719:                                     ; preds = %abort.dead721, %choice.case710
  %b.cap722 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load713, i32 0, i32 2
  %b.cap723 = load i64, ptr %b.cap722, align 8
  %b.need.grow724 = icmp slt i64 %b.cap723, %sum717
  br i1 %b.need.grow724, label %b.grow2725, label %b.nogrow2726

str_overflow_abort720:                            ; preds = %choice.case710
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead721:                                    ; No predecessors!
  br label %b.int.cap719

b.grow2725:                                       ; preds = %b.int.cap719
  %b.cap2728 = mul i64 %b.cap723, 2
  %b.cap.small729 = icmp slt i64 %b.cap2728, 16
  %b.cap.grow730 = select i1 %b.cap.small729, i64 16, i64 %b.cap2728
  %b.cap.need731 = icmp slt i64 %b.cap.grow730, %sum717
  %b.new.cap732 = select i1 %b.cap.need731, i64 %sum717, i64 %b.cap.grow730
  %b.cur.len2733 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load713, i32 0, i32 0
  %b.cur.len2734 = load i64, ptr %b.cur.len2733, align 8
  %b.cur.data2735 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load713, i32 0, i32 1
  %b.cur.data2736 = load ptr, ptr %b.cur.data2735, align 8
  %b.new.buf.len2737 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap732, i64 1)
  %sum738 = extractvalue { i64, i1 } %b.new.buf.len2737, 0
  %ovf739 = extractvalue { i64, i1 } %b.new.buf.len2737, 1
  br i1 %ovf739, label %str_overflow_abort741, label %b.new.buf.len2740

b.nogrow2726:                                     ; preds = %b.int.cap719
  br label %b.grow_done727

b.grow_done727:                                   ; preds = %b.nogrow2726, %b.new.buf.len2740
  %b.int.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load713, i32 0, i32 1
  %b.int.data748 = load ptr, ptr %b.int.data, align 8
  %b.int.dst = getelementptr i8, ptr %b.int.data748, i64 %b.int.cur.len716
  %b.int.len = call i64 @dva_fmt_i64_buf(ptr %b.int.dst, i64 %call.res715, i1 false)
  %b.int.new.len = add i64 %b.int.cur.len716, %b.int.len
  %b.len.gep749 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load713, i32 0, i32 0
  store i64 %b.int.new.len, ptr %b.len.gep749, align 8
  br label %choice.exit38

b.new.buf.len2740:                                ; preds = %abort.dead742, %b.grow2725
  %arena.cur743 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2744 = call ptr @dva_arena_alloc(ptr %arena.cur743, i64 %sum738)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2744, ptr align 1 %b.cur.data2736, i64 %b.cur.len2734, i1 false)
  %b.grow2.nul745 = getelementptr i8, ptr %b.new.buf2744, i64 %b.cur.len2734
  store i8 0, ptr %b.grow2.nul745, align 1
  %b.new.data2.gep746 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load713, i32 0, i32 1
  store ptr %b.new.buf2744, ptr %b.new.data2.gep746, align 8
  %b.new.cap2.gep747 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load713, i32 0, i32 2
  store i64 %b.new.cap732, ptr %b.new.cap2.gep747, align 8
  br label %b.grow_done727

str_overflow_abort741:                            ; preds = %b.grow2725
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead742:                                    ; No predecessors!
  br label %b.new.buf.len2740

choice.case750:                                   ; preds = %choice.next711
  %b.load753 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len754 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load753, i32 0, i32 0
  %b.rn.cur.len755 = load i64, ptr %b.rn.cur.len754, align 8
  %b.rn.new.len756 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len755, i64 1)
  %sum757 = extractvalue { i64, i1 } %b.rn.new.len756, 0
  %ovf758 = extractvalue { i64, i1 } %b.rn.new.len756, 1
  br i1 %ovf758, label %str_overflow_abort760, label %b.rn.new.len759

choice.next751:                                   ; preds = %choice.next711
  %val.match801 = icmp eq i64 %var.load37, 116
  br i1 %val.match801, label %choice.case799, label %choice.next800

b.rn.new.len759:                                  ; preds = %abort.dead761, %choice.case750
  %b.cap762 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load753, i32 0, i32 2
  %b.cap763 = load i64, ptr %b.cap762, align 8
  %b.need.grow764 = icmp slt i64 %b.cap763, %sum757
  br i1 %b.need.grow764, label %b.grow2765, label %b.nogrow2766

str_overflow_abort760:                            ; preds = %choice.case750
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead761:                                    ; No predecessors!
  br label %b.rn.new.len759

b.grow2765:                                       ; preds = %b.rn.new.len759
  %b.cap2768 = mul i64 %b.cap763, 2
  %b.cap.small769 = icmp slt i64 %b.cap2768, 16
  %b.cap.grow770 = select i1 %b.cap.small769, i64 16, i64 %b.cap2768
  %b.cap.need771 = icmp slt i64 %b.cap.grow770, %sum757
  %b.new.cap772 = select i1 %b.cap.need771, i64 %sum757, i64 %b.cap.grow770
  %b.cur.len2773 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load753, i32 0, i32 0
  %b.cur.len2774 = load i64, ptr %b.cur.len2773, align 8
  %b.cur.data2775 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load753, i32 0, i32 1
  %b.cur.data2776 = load ptr, ptr %b.cur.data2775, align 8
  %b.new.buf.len2777 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap772, i64 1)
  %sum778 = extractvalue { i64, i1 } %b.new.buf.len2777, 0
  %ovf779 = extractvalue { i64, i1 } %b.new.buf.len2777, 1
  br i1 %ovf779, label %str_overflow_abort781, label %b.new.buf.len2780

b.nogrow2766:                                     ; preds = %b.rn.new.len759
  br label %b.grow_done767

b.grow_done767:                                   ; preds = %b.nogrow2766, %b.new.buf.len2780
  %b.rn.data788 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load753, i32 0, i32 1
  %b.rn.data789 = load ptr, ptr %b.rn.data788, align 8
  %b.rn.dst790 = getelementptr i8, ptr %b.rn.data789, i64 %b.rn.cur.len755
  br i1 true, label %br.b1.88, label %br.c2.88

b.new.buf.len2780:                                ; preds = %abort.dead782, %b.grow2765
  %arena.cur783 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2784 = call ptr @dva_arena_alloc(ptr %arena.cur783, i64 %sum778)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2784, ptr align 1 %b.cur.data2776, i64 %b.cur.len2774, i1 false)
  %b.grow2.nul785 = getelementptr i8, ptr %b.new.buf2784, i64 %b.cur.len2774
  store i8 0, ptr %b.grow2.nul785, align 1
  %b.new.data2.gep786 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load753, i32 0, i32 1
  store ptr %b.new.buf2784, ptr %b.new.data2.gep786, align 8
  %b.new.cap2.gep787 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load753, i32 0, i32 2
  store i64 %b.new.cap772, ptr %b.new.cap2.gep787, align 8
  br label %b.grow_done767

str_overflow_abort781:                            ; preds = %b.grow2765
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead782:                                    ; No predecessors!
  br label %b.new.buf.len2780

br.b1.88:                                         ; preds = %b.grow_done767
  store i8 10, ptr %b.rn.dst790, align 1
  br label %br.done.88

br.c2.88:                                         ; preds = %b.grow_done767
  br i1 true, label %br.b2.88, label %br.c3.88

br.b2.88:                                         ; preds = %br.c2.88
  store i8 -64, ptr %b.rn.dst790, align 1
  %br.dst1791 = getelementptr i8, ptr %b.rn.dst790, i64 1
  store i8 -118, ptr %br.dst1791, align 1
  br label %br.done.88

br.c3.88:                                         ; preds = %br.c2.88
  br i1 true, label %br.b3.88, label %br.b4.88

br.b3.88:                                         ; preds = %br.c3.88
  store i8 -32, ptr %b.rn.dst790, align 1
  %br.dst1.3792 = getelementptr i8, ptr %b.rn.dst790, i64 1
  store i8 -128, ptr %br.dst1.3792, align 1
  %br.dst2.3793 = getelementptr i8, ptr %b.rn.dst790, i64 2
  store i8 -118, ptr %br.dst2.3793, align 1
  br label %br.done.88

br.b4.88:                                         ; preds = %br.c3.88
  store i8 -16, ptr %b.rn.dst790, align 1
  %br.dst1.4794 = getelementptr i8, ptr %b.rn.dst790, i64 1
  store i8 -128, ptr %br.dst1.4794, align 1
  %br.dst2.4795 = getelementptr i8, ptr %b.rn.dst790, i64 2
  store i8 -128, ptr %br.dst2.4795, align 1
  %br.dst3.4796 = getelementptr i8, ptr %b.rn.dst790, i64 3
  store i8 -118, ptr %br.dst3.4796, align 1
  br label %br.done.88

br.done.88:                                       ; preds = %br.b4.88, %br.b3.88, %br.b2.88, %br.b1.88
  %br.nul797 = getelementptr i8, ptr %b.rn.data789, i64 %sum757
  store i8 0, ptr %br.nul797, align 1
  %b.len.gep798 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load753, i32 0, i32 0
  store i64 %sum757, ptr %b.len.gep798, align 8
  br label %choice.exit38

choice.case799:                                   ; preds = %choice.next751
  %b.load802 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len803 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load802, i32 0, i32 0
  %b.rn.cur.len804 = load i64, ptr %b.rn.cur.len803, align 8
  %b.rn.new.len805 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len804, i64 1)
  %sum806 = extractvalue { i64, i1 } %b.rn.new.len805, 0
  %ovf807 = extractvalue { i64, i1 } %b.rn.new.len805, 1
  br i1 %ovf807, label %str_overflow_abort809, label %b.rn.new.len808

choice.next800:                                   ; preds = %choice.next751
  %val.match850 = icmp eq i64 %var.load37, 37
  br i1 %val.match850, label %choice.case848, label %choice.next849

b.rn.new.len808:                                  ; preds = %abort.dead810, %choice.case799
  %b.cap811 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load802, i32 0, i32 2
  %b.cap812 = load i64, ptr %b.cap811, align 8
  %b.need.grow813 = icmp slt i64 %b.cap812, %sum806
  br i1 %b.need.grow813, label %b.grow2814, label %b.nogrow2815

str_overflow_abort809:                            ; preds = %choice.case799
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead810:                                    ; No predecessors!
  br label %b.rn.new.len808

b.grow2814:                                       ; preds = %b.rn.new.len808
  %b.cap2817 = mul i64 %b.cap812, 2
  %b.cap.small818 = icmp slt i64 %b.cap2817, 16
  %b.cap.grow819 = select i1 %b.cap.small818, i64 16, i64 %b.cap2817
  %b.cap.need820 = icmp slt i64 %b.cap.grow819, %sum806
  %b.new.cap821 = select i1 %b.cap.need820, i64 %sum806, i64 %b.cap.grow819
  %b.cur.len2822 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load802, i32 0, i32 0
  %b.cur.len2823 = load i64, ptr %b.cur.len2822, align 8
  %b.cur.data2824 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load802, i32 0, i32 1
  %b.cur.data2825 = load ptr, ptr %b.cur.data2824, align 8
  %b.new.buf.len2826 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap821, i64 1)
  %sum827 = extractvalue { i64, i1 } %b.new.buf.len2826, 0
  %ovf828 = extractvalue { i64, i1 } %b.new.buf.len2826, 1
  br i1 %ovf828, label %str_overflow_abort830, label %b.new.buf.len2829

b.nogrow2815:                                     ; preds = %b.rn.new.len808
  br label %b.grow_done816

b.grow_done816:                                   ; preds = %b.nogrow2815, %b.new.buf.len2829
  %b.rn.data837 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load802, i32 0, i32 1
  %b.rn.data838 = load ptr, ptr %b.rn.data837, align 8
  %b.rn.dst839 = getelementptr i8, ptr %b.rn.data838, i64 %b.rn.cur.len804
  br i1 true, label %br.b1.89, label %br.c2.89

b.new.buf.len2829:                                ; preds = %abort.dead831, %b.grow2814
  %arena.cur832 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2833 = call ptr @dva_arena_alloc(ptr %arena.cur832, i64 %sum827)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2833, ptr align 1 %b.cur.data2825, i64 %b.cur.len2823, i1 false)
  %b.grow2.nul834 = getelementptr i8, ptr %b.new.buf2833, i64 %b.cur.len2823
  store i8 0, ptr %b.grow2.nul834, align 1
  %b.new.data2.gep835 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load802, i32 0, i32 1
  store ptr %b.new.buf2833, ptr %b.new.data2.gep835, align 8
  %b.new.cap2.gep836 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load802, i32 0, i32 2
  store i64 %b.new.cap821, ptr %b.new.cap2.gep836, align 8
  br label %b.grow_done816

str_overflow_abort830:                            ; preds = %b.grow2814
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead831:                                    ; No predecessors!
  br label %b.new.buf.len2829

br.b1.89:                                         ; preds = %b.grow_done816
  store i8 9, ptr %b.rn.dst839, align 1
  br label %br.done.89

br.c2.89:                                         ; preds = %b.grow_done816
  br i1 true, label %br.b2.89, label %br.c3.89

br.b2.89:                                         ; preds = %br.c2.89
  store i8 -64, ptr %b.rn.dst839, align 1
  %br.dst1840 = getelementptr i8, ptr %b.rn.dst839, i64 1
  store i8 -119, ptr %br.dst1840, align 1
  br label %br.done.89

br.c3.89:                                         ; preds = %br.c2.89
  br i1 true, label %br.b3.89, label %br.b4.89

br.b3.89:                                         ; preds = %br.c3.89
  store i8 -32, ptr %b.rn.dst839, align 1
  %br.dst1.3841 = getelementptr i8, ptr %b.rn.dst839, i64 1
  store i8 -128, ptr %br.dst1.3841, align 1
  %br.dst2.3842 = getelementptr i8, ptr %b.rn.dst839, i64 2
  store i8 -119, ptr %br.dst2.3842, align 1
  br label %br.done.89

br.b4.89:                                         ; preds = %br.c3.89
  store i8 -16, ptr %b.rn.dst839, align 1
  %br.dst1.4843 = getelementptr i8, ptr %b.rn.dst839, i64 1
  store i8 -128, ptr %br.dst1.4843, align 1
  %br.dst2.4844 = getelementptr i8, ptr %b.rn.dst839, i64 2
  store i8 -128, ptr %br.dst2.4844, align 1
  %br.dst3.4845 = getelementptr i8, ptr %b.rn.dst839, i64 3
  store i8 -119, ptr %br.dst3.4845, align 1
  br label %br.done.89

br.done.89:                                       ; preds = %br.b4.89, %br.b3.89, %br.b2.89, %br.b1.89
  %br.nul846 = getelementptr i8, ptr %b.rn.data838, i64 %sum806
  store i8 0, ptr %br.nul846, align 1
  %b.len.gep847 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load802, i32 0, i32 0
  store i64 %sum806, ptr %b.len.gep847, align 8
  br label %choice.exit38

choice.case848:                                   ; preds = %choice.next800
  %b.load851 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len852 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load851, i32 0, i32 0
  %b.rn.cur.len853 = load i64, ptr %b.rn.cur.len852, align 8
  %b.rn.new.len854 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len853, i64 1)
  %sum855 = extractvalue { i64, i1 } %b.rn.new.len854, 0
  %ovf856 = extractvalue { i64, i1 } %b.rn.new.len854, 1
  br i1 %ovf856, label %str_overflow_abort858, label %b.rn.new.len857

choice.next849:                                   ; preds = %choice.next800
  %b.load897 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len898 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 0
  %b.rn.cur.len899 = load i64, ptr %b.rn.cur.len898, align 8
  %b.rn.new.len900 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len899, i64 1)
  %sum901 = extractvalue { i64, i1 } %b.rn.new.len900, 0
  %ovf902 = extractvalue { i64, i1 } %b.rn.new.len900, 1
  br i1 %ovf902, label %str_overflow_abort904, label %b.rn.new.len903

b.rn.new.len857:                                  ; preds = %abort.dead859, %choice.case848
  %b.cap860 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load851, i32 0, i32 2
  %b.cap861 = load i64, ptr %b.cap860, align 8
  %b.need.grow862 = icmp slt i64 %b.cap861, %sum855
  br i1 %b.need.grow862, label %b.grow2863, label %b.nogrow2864

str_overflow_abort858:                            ; preds = %choice.case848
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead859:                                    ; No predecessors!
  br label %b.rn.new.len857

b.grow2863:                                       ; preds = %b.rn.new.len857
  %b.cap2866 = mul i64 %b.cap861, 2
  %b.cap.small867 = icmp slt i64 %b.cap2866, 16
  %b.cap.grow868 = select i1 %b.cap.small867, i64 16, i64 %b.cap2866
  %b.cap.need869 = icmp slt i64 %b.cap.grow868, %sum855
  %b.new.cap870 = select i1 %b.cap.need869, i64 %sum855, i64 %b.cap.grow868
  %b.cur.len2871 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load851, i32 0, i32 0
  %b.cur.len2872 = load i64, ptr %b.cur.len2871, align 8
  %b.cur.data2873 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load851, i32 0, i32 1
  %b.cur.data2874 = load ptr, ptr %b.cur.data2873, align 8
  %b.new.buf.len2875 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap870, i64 1)
  %sum876 = extractvalue { i64, i1 } %b.new.buf.len2875, 0
  %ovf877 = extractvalue { i64, i1 } %b.new.buf.len2875, 1
  br i1 %ovf877, label %str_overflow_abort879, label %b.new.buf.len2878

b.nogrow2864:                                     ; preds = %b.rn.new.len857
  br label %b.grow_done865

b.grow_done865:                                   ; preds = %b.nogrow2864, %b.new.buf.len2878
  %b.rn.data886 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load851, i32 0, i32 1
  %b.rn.data887 = load ptr, ptr %b.rn.data886, align 8
  %b.rn.dst888 = getelementptr i8, ptr %b.rn.data887, i64 %b.rn.cur.len853
  br i1 true, label %br.b1.90, label %br.c2.90

b.new.buf.len2878:                                ; preds = %abort.dead880, %b.grow2863
  %arena.cur881 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2882 = call ptr @dva_arena_alloc(ptr %arena.cur881, i64 %sum876)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2882, ptr align 1 %b.cur.data2874, i64 %b.cur.len2872, i1 false)
  %b.grow2.nul883 = getelementptr i8, ptr %b.new.buf2882, i64 %b.cur.len2872
  store i8 0, ptr %b.grow2.nul883, align 1
  %b.new.data2.gep884 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load851, i32 0, i32 1
  store ptr %b.new.buf2882, ptr %b.new.data2.gep884, align 8
  %b.new.cap2.gep885 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load851, i32 0, i32 2
  store i64 %b.new.cap870, ptr %b.new.cap2.gep885, align 8
  br label %b.grow_done865

str_overflow_abort879:                            ; preds = %b.grow2863
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead880:                                    ; No predecessors!
  br label %b.new.buf.len2878

br.b1.90:                                         ; preds = %b.grow_done865
  store i8 37, ptr %b.rn.dst888, align 1
  br label %br.done.90

br.c2.90:                                         ; preds = %b.grow_done865
  br i1 true, label %br.b2.90, label %br.c3.90

br.b2.90:                                         ; preds = %br.c2.90
  store i8 -64, ptr %b.rn.dst888, align 1
  %br.dst1889 = getelementptr i8, ptr %b.rn.dst888, i64 1
  store i8 -91, ptr %br.dst1889, align 1
  br label %br.done.90

br.c3.90:                                         ; preds = %br.c2.90
  br i1 true, label %br.b3.90, label %br.b4.90

br.b3.90:                                         ; preds = %br.c3.90
  store i8 -32, ptr %b.rn.dst888, align 1
  %br.dst1.3890 = getelementptr i8, ptr %b.rn.dst888, i64 1
  store i8 -128, ptr %br.dst1.3890, align 1
  %br.dst2.3891 = getelementptr i8, ptr %b.rn.dst888, i64 2
  store i8 -91, ptr %br.dst2.3891, align 1
  br label %br.done.90

br.b4.90:                                         ; preds = %br.c3.90
  store i8 -16, ptr %b.rn.dst888, align 1
  %br.dst1.4892 = getelementptr i8, ptr %b.rn.dst888, i64 1
  store i8 -128, ptr %br.dst1.4892, align 1
  %br.dst2.4893 = getelementptr i8, ptr %b.rn.dst888, i64 2
  store i8 -128, ptr %br.dst2.4893, align 1
  %br.dst3.4894 = getelementptr i8, ptr %b.rn.dst888, i64 3
  store i8 -91, ptr %br.dst3.4894, align 1
  br label %br.done.90

br.done.90:                                       ; preds = %br.b4.90, %br.b3.90, %br.b2.90, %br.b1.90
  %br.nul895 = getelementptr i8, ptr %b.rn.data887, i64 %sum855
  store i8 0, ptr %br.nul895, align 1
  %b.len.gep896 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load851, i32 0, i32 0
  store i64 %sum855, ptr %b.len.gep896, align 8
  br label %choice.exit38

b.rn.new.len903:                                  ; preds = %abort.dead905, %choice.next849
  %b.cap906 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 2
  %b.cap907 = load i64, ptr %b.cap906, align 8
  %b.need.grow908 = icmp slt i64 %b.cap907, %sum901
  br i1 %b.need.grow908, label %b.grow2909, label %b.nogrow2910

str_overflow_abort904:                            ; preds = %choice.next849
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead905:                                    ; No predecessors!
  br label %b.rn.new.len903

b.grow2909:                                       ; preds = %b.rn.new.len903
  %b.cap2912 = mul i64 %b.cap907, 2
  %b.cap.small913 = icmp slt i64 %b.cap2912, 16
  %b.cap.grow914 = select i1 %b.cap.small913, i64 16, i64 %b.cap2912
  %b.cap.need915 = icmp slt i64 %b.cap.grow914, %sum901
  %b.new.cap916 = select i1 %b.cap.need915, i64 %sum901, i64 %b.cap.grow914
  %b.cur.len2917 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 0
  %b.cur.len2918 = load i64, ptr %b.cur.len2917, align 8
  %b.cur.data2919 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 1
  %b.cur.data2920 = load ptr, ptr %b.cur.data2919, align 8
  %b.new.buf.len2921 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap916, i64 1)
  %sum922 = extractvalue { i64, i1 } %b.new.buf.len2921, 0
  %ovf923 = extractvalue { i64, i1 } %b.new.buf.len2921, 1
  br i1 %ovf923, label %str_overflow_abort925, label %b.new.buf.len2924

b.nogrow2910:                                     ; preds = %b.rn.new.len903
  br label %b.grow_done911

b.grow_done911:                                   ; preds = %b.nogrow2910, %b.new.buf.len2924
  %b.rn.data932 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 1
  %b.rn.data933 = load ptr, ptr %b.rn.data932, align 8
  %b.rn.dst934 = getelementptr i8, ptr %b.rn.data933, i64 %b.rn.cur.len899
  br i1 true, label %br.b1.91, label %br.c2.91

b.new.buf.len2924:                                ; preds = %abort.dead926, %b.grow2909
  %arena.cur927 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2928 = call ptr @dva_arena_alloc(ptr %arena.cur927, i64 %sum922)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2928, ptr align 1 %b.cur.data2920, i64 %b.cur.len2918, i1 false)
  %b.grow2.nul929 = getelementptr i8, ptr %b.new.buf2928, i64 %b.cur.len2918
  store i8 0, ptr %b.grow2.nul929, align 1
  %b.new.data2.gep930 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 1
  store ptr %b.new.buf2928, ptr %b.new.data2.gep930, align 8
  %b.new.cap2.gep931 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 2
  store i64 %b.new.cap916, ptr %b.new.cap2.gep931, align 8
  br label %b.grow_done911

str_overflow_abort925:                            ; preds = %b.grow2909
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead926:                                    ; No predecessors!
  br label %b.new.buf.len2924

br.b1.91:                                         ; preds = %b.grow_done911
  store i8 37, ptr %b.rn.dst934, align 1
  br label %br.done.91

br.c2.91:                                         ; preds = %b.grow_done911
  br i1 true, label %br.b2.91, label %br.c3.91

br.b2.91:                                         ; preds = %br.c2.91
  store i8 -64, ptr %b.rn.dst934, align 1
  %br.dst1935 = getelementptr i8, ptr %b.rn.dst934, i64 1
  store i8 -91, ptr %br.dst1935, align 1
  br label %br.done.91

br.c3.91:                                         ; preds = %br.c2.91
  br i1 true, label %br.b3.91, label %br.b4.91

br.b3.91:                                         ; preds = %br.c3.91
  store i8 -32, ptr %b.rn.dst934, align 1
  %br.dst1.3936 = getelementptr i8, ptr %b.rn.dst934, i64 1
  store i8 -128, ptr %br.dst1.3936, align 1
  %br.dst2.3937 = getelementptr i8, ptr %b.rn.dst934, i64 2
  store i8 -91, ptr %br.dst2.3937, align 1
  br label %br.done.91

br.b4.91:                                         ; preds = %br.c3.91
  store i8 -16, ptr %b.rn.dst934, align 1
  %br.dst1.4938 = getelementptr i8, ptr %b.rn.dst934, i64 1
  store i8 -128, ptr %br.dst1.4938, align 1
  %br.dst2.4939 = getelementptr i8, ptr %b.rn.dst934, i64 2
  store i8 -128, ptr %br.dst2.4939, align 1
  %br.dst3.4940 = getelementptr i8, ptr %b.rn.dst934, i64 3
  store i8 -91, ptr %br.dst3.4940, align 1
  br label %br.done.91

br.done.91:                                       ; preds = %br.b4.91, %br.b3.91, %br.b2.91, %br.b1.91
  %br.nul941 = getelementptr i8, ptr %b.rn.data933, i64 %sum901
  store i8 0, ptr %br.nul941, align 1
  %b.len.gep942 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load897, i32 0, i32 0
  store i64 %sum901, ptr %b.len.gep942, align 8
  %b.load943 = load ptr, ptr %var.b, align 8
  %var.load944 = load i64, ptr %var.spec, align 8
  %b.b.ge0945 = icmp sge i64 %var.load944, 0
  %b.b.le255946 = icmp sle i64 %var.load944, 255
  %b.byte.range947 = and i1 %b.b.ge0945, %b.b.le255946
  br i1 %b.byte.range947, label %b.byte_ok948, label %b.byte_err949

b.byte_ok948:                                     ; preds = %abort.dead950, %br.done.91
  %b.byte.i8951 = trunc i64 %var.load944 to i8
  %b.len952 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 0
  %b.len953 = load i64, ptr %b.len952, align 8
  %b.cap954 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 2
  %b.cap955 = load i64, ptr %b.cap954, align 8
  %b.data956 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 1
  %b.data957 = load ptr, ptr %b.data956, align 8
  %b.needs.grow958 = icmp eq i64 %b.len953, %b.cap955
  br i1 %b.needs.grow958, label %b.grow959, label %b.nogrow960

b.byte_err949:                                    ; preds = %br.done.91
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead950:                                    ; No predecessors!
  br label %b.byte_ok948

b.grow959:                                        ; preds = %b.byte_ok948
  %b.cap2962 = mul i64 %b.cap955, 2
  %b.cap.small963 = icmp slt i64 %b.cap2962, 16
  %b.new.cap964 = select i1 %b.cap.small963, i64 16, i64 %b.cap2962
  %b.new.buf.len965 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap964, i64 1)
  %sum966 = extractvalue { i64, i1 } %b.new.buf.len965, 0
  %ovf967 = extractvalue { i64, i1 } %b.new.buf.len965, 1
  br i1 %ovf967, label %str_overflow_abort969, label %b.new.buf.len968

b.nogrow960:                                      ; preds = %b.byte_ok948
  br label %b.push_done961

b.push_done961:                                   ; preds = %b.nogrow960, %b.new.buf.len968
  %b.cur.data976 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 1
  %b.cur.data977 = load ptr, ptr %b.cur.data976, align 8
  %b.cur.len978 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 0
  %b.cur.len979 = load i64, ptr %b.cur.len978, align 8
  %b.byte.gep980 = getelementptr i8, ptr %b.cur.data977, i64 %b.cur.len979
  store i8 %b.byte.i8951, ptr %b.byte.gep980, align 1
  %b.next.len981 = add i64 %b.cur.len979, 1
  %b.nul982 = getelementptr i8, ptr %b.cur.data977, i64 %b.next.len981
  store i8 0, ptr %b.nul982, align 1
  %b.len.gep983 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 0
  store i64 %b.next.len981, ptr %b.len.gep983, align 8
  br label %choice.exit38

b.new.buf.len968:                                 ; preds = %abort.dead970, %b.grow959
  %arena.cur971 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf972 = call ptr @dva_arena_alloc(ptr %arena.cur971, i64 %sum966)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf972, ptr align 1 %b.data957, i64 %b.len953, i1 false)
  %b.grow.nul973 = getelementptr i8, ptr %b.new.buf972, i64 %b.len953
  store i8 0, ptr %b.grow.nul973, align 1
  %b.new.data.gep974 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 1
  store ptr %b.new.buf972, ptr %b.new.data.gep974, align 8
  %b.new.cap.gep975 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load943, i32 0, i32 2
  store i64 %b.new.cap964, ptr %b.new.cap.gep975, align 8
  br label %b.push_done961

str_overflow_abort969:                            ; preds = %b.grow959
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead970:                                    ; No predecessors!
  br label %b.new.buf.len968

b.byte_ok991:                                     ; preds = %abort.dead993, %choice.else
  %b.byte.i8994 = trunc i64 %var.load987 to i8
  %b.len995 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load986, i32 0, i32 0
  %b.len996 = load i64, ptr %b.len995, align 8
  %b.cap997 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load986, i32 0, i32 2
  %b.cap998 = load i64, ptr %b.cap997, align 8
  %b.data999 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load986, i32 0, i32 1
  %b.data1000 = load ptr, ptr %b.data999, align 8
  %b.needs.grow1001 = icmp eq i64 %b.len996, %b.cap998
  br i1 %b.needs.grow1001, label %b.grow1002, label %b.nogrow1003

b.byte_err992:                                    ; preds = %choice.else
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead993:                                    ; No predecessors!
  br label %b.byte_ok991

b.grow1002:                                       ; preds = %b.byte_ok991
  %b.cap21005 = mul i64 %b.cap998, 2
  %b.cap.small1006 = icmp slt i64 %b.cap21005, 16
  %b.new.cap1007 = select i1 %b.cap.small1006, i64 16, i64 %b.cap21005
  %b.new.buf.len1008 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1007, i64 1)
  %sum1009 = extractvalue { i64, i1 } %b.new.buf.len1008, 0
  %ovf1010 = extractvalue { i64, i1 } %b.new.buf.len1008, 1
  br i1 %ovf1010, label %str_overflow_abort1012, label %b.new.buf.len1011

b.nogrow1003:                                     ; preds = %b.byte_ok991
  br label %b.push_done1004

b.push_done1004:                                  ; preds = %b.nogrow1003, %b.new.buf.len1011
  %b.cur.data1019 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load986, i32 0, i32 1
  %b.cur.data1020 = load ptr, ptr %b.cur.data1019, align 8
  %b.cur.len1021 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load986, i32 0, i32 0
  %b.cur.len1022 = load i64, ptr %b.cur.len1021, align 8
  %b.byte.gep1023 = getelementptr i8, ptr %b.cur.data1020, i64 %b.cur.len1022
  store i8 %b.byte.i8994, ptr %b.byte.gep1023, align 1
  %b.next.len1024 = add i64 %b.cur.len1022, 1
  %b.nul1025 = getelementptr i8, ptr %b.cur.data1020, i64 %b.next.len1024
  store i8 0, ptr %b.nul1025, align 1
  %b.len.gep1026 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load986, i32 0, i32 0
  store i64 %b.next.len1024, ptr %b.len.gep1026, align 8
  %var.load1027 = load i64, ptr %"var.i'", align 8
  %addtmp1028 = add i64 %var.load1027, 1
  store i64 %addtmp1028, ptr %"var.i'", align 8
  br label %choice.exit21

b.new.buf.len1011:                                ; preds = %abort.dead1013, %b.grow1002
  %arena.cur1014 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf1015 = call ptr @dva_arena_alloc(ptr %arena.cur1014, i64 %sum1009)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf1015, ptr align 1 %b.data1000, i64 %b.len996, i1 false)
  %b.grow.nul1016 = getelementptr i8, ptr %b.new.buf1015, i64 %b.len996
  store i8 0, ptr %b.grow.nul1016, align 1
  %b.new.data.gep1017 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load986, i32 0, i32 1
  store ptr %b.new.buf1015, ptr %b.new.data.gep1017, align 8
  %b.new.cap.gep1018 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load986, i32 0, i32 2
  store i64 %b.new.cap1007, ptr %b.new.cap.gep1018, align 8
  br label %b.push_done1004

str_overflow_abort1012:                           ; preds = %b.grow1002
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead1013:                                   ; No predecessors!
  br label %b.new.buf.len1011

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data1031, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data1031, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data1031, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len1030, 1
  %arena.cur1032 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur1032, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data1031, i64 %b.freeze.len1030, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len1030
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.84
  %b.freeze.data1033 = phi ptr [ %b.freeze.data1031, %loop.exit.84 ], [ %b.freeze.data1031, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len1030, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data1033, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1029, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1029, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load1029, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
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

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #3 {
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

define ptr @"time::parse_tm"(ptr %0, ptr %1) #3 {
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

define internal ptr @"time::parse_tm_os$Rec(time::#TimeOsTarget:posix:Int,tag:Int)"(ptr %0, ptr %1) #3 {
entry:
  %var.end = alloca ptr, align 8
  %"var.tm'" = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.ch_ = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.93 = alloca i64, align 8
  %loop.idx.93 = alloca i64, align 8
  %var.fmt_pat = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  store ptr %0, ptr %var.value, align 8
  store ptr %1, ptr %var.fmt_pat, align 8
  %var.load = load ptr, ptr %var.value, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.header.93:                                   ; preds = %loop.latch.93, %entry
  %counter.load = load i64, ptr %loop.idx.93, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.93, label %loop.exit.nat.93

loop.body.93:                                     ; preds = %loop.header.93
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.93, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.ch_, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load i64, ptr %var.ch_, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.93:                                 ; preds = %loop.header.93
  br label %loop.exit.93

loop.latch.93:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.93, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.exit.93:                                     ; preds = %loop.exit.nat.93
  %var.load5 = load ptr, ptr @"var.sys::addr_null", align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 0
  store i32 0, ptr %rec.fld, align 4
  %rec.fld6 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 1
  store i32 0, ptr %rec.fld6, align 4
  %rec.fld7 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 2
  store i32 0, ptr %rec.fld7, align 4
  %rec.fld8 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 3
  store i32 0, ptr %rec.fld8, align 4
  %rec.fld9 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 4
  store i32 0, ptr %rec.fld9, align 4
  %rec.fld10 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 5
  store i32 0, ptr %rec.fld10, align 4
  %rec.fld11 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 6
  store i32 0, ptr %rec.fld11, align 4
  %rec.fld12 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 7
  store i32 0, ptr %rec.fld12, align 4
  %rec.fld13 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 8
  store i32 0, ptr %rec.fld13, align 4
  %rec.fld14 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 9
  store i32 0, ptr %rec.fld14, align 4
  %rec.fld15 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld15, align 8
  %rec.fld16 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }>, ptr %rec.alloc, i32 0, i32 11
  store ptr %var.load5, ptr %rec.fld16, align 8
  store ptr %rec.alloc, ptr %"var.tm'", align 8
  %var.load17 = load ptr, ptr %var.value, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %arg.str.ptr18 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr19 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %arg.str.ptr20 = load i64, ptr %arg.str.ptr19, align 8
  %arg.str.ptr21 = and i64 %arg.str.ptr20, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr18, i64 %arg.str.ptr21
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr22, label %nulcopy

choice.then:                                      ; preds = %loop.body.93
  ret ptr null

choice.exit:                                      ; preds = %ret.dead, %loop.body.93
  br label %loop.latch.93

ret.dead:                                         ; No predecessors!
  br label %choice.exit

arg.str.ptr22:                                    ; preds = %loop.exit.93
  br label %nulmerge

nulcopy:                                          ; preds = %loop.exit.93
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr21, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len23

nulmerge:                                         ; preds = %nulcopy.len23, %arg.str.ptr22
  %arg.str.ptr25 = phi ptr [ %arg.str.ptr18, %arg.str.ptr22 ], [ %nulcopy.buf, %nulcopy.len23 ]
  %var.load26 = load ptr, ptr %var.fmt_pat, align 8
  %arg.str.ptr27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %arg.str.ptr28 = load ptr, ptr %arg.str.ptr27, align 8
  %arg.str.ptr29 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %arg.str.ptr30 = load i64, ptr %arg.str.ptr29, align 8
  %arg.str.ptr31 = and i64 %arg.str.ptr30, 281474976710655
  %nulcheck.gep32 = getelementptr i8, ptr %arg.str.ptr28, i64 %arg.str.ptr31
  %nulcheck.byte33 = load i8, ptr %nulcheck.gep32, align 1
  %nulcheck34 = icmp eq i8 %nulcheck.byte33, 0
  br i1 %nulcheck34, label %arg.str.ptr35, label %nulcopy36

nulcopy.len23:                                    ; preds = %abort.dead, %nulcopy
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr18, i64 %arg.str.ptr21, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr21
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len23

arg.str.ptr35:                                    ; preds = %nulmerge
  br label %nulmerge37

nulcopy36:                                        ; preds = %nulmerge
  %nulcopy.len38 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr31, i64 1)
  %sum39 = extractvalue { i64, i1 } %nulcopy.len38, 0
  %ovf40 = extractvalue { i64, i1 } %nulcopy.len38, 1
  br i1 %ovf40, label %str_overflow_abort42, label %nulcopy.len41

nulmerge37:                                       ; preds = %nulcopy.len41, %arg.str.ptr35
  %arg.str.ptr47 = phi ptr [ %arg.str.ptr28, %arg.str.ptr35 ], [ %nulcopy.buf45, %nulcopy.len41 ]
  %var.load48 = load ptr, ptr %"var.tm'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load48 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @strptime(ptr %arg.str.ptr25, ptr %arg.str.ptr47, ptr %addr.ffi.clean)
  store ptr %call.res, ptr %var.end, align 8
  %var.load49 = load ptr, ptr %var.end, align 8
  %var.load50 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load49 to i64
  %ptr.int.r = ptrtoint ptr %var.load50 to i64
  %cmptmp51 = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp51, label %choice.then52, label %choice.exit53

nulcopy.len41:                                    ; preds = %abort.dead43, %nulcopy36
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %sum39)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf45, ptr align 1 %arg.str.ptr28, i64 %arg.str.ptr31, i1 false)
  %nulcopy.nul46 = getelementptr i8, ptr %nulcopy.buf45, i64 %arg.str.ptr31
  store i8 0, ptr %nulcopy.nul46, align 1
  br label %nulmerge37

str_overflow_abort42:                             ; preds = %nulcopy36
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %nulcopy.len41

choice.then52:                                    ; preds = %nulmerge37
  ret ptr null

choice.exit53:                                    ; preds = %ret.dead54, %nulmerge37
  %var.load55 = load ptr, ptr %var.end, align 8
  %raw.int = ptrtoint ptr %var.load55 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  %cmptmp56 = icmp ne i64 %coerce.zext, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.exit58

ret.dead54:                                       ; No predecessors!
  br label %choice.exit53

choice.then57:                                    ; preds = %choice.exit53
  ret ptr null

choice.exit58:                                    ; preds = %ret.dead59, %choice.exit53
  %var.load60 = load ptr, ptr %"var.tm'", align 8
  ret ptr %var.load60

ret.dead59:                                       ; No predecessors!
  br label %choice.exit58
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
