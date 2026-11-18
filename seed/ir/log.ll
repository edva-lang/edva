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
@"var.time::CLOCK_REALTIME" = external global i64
@"var.time::CLOCK_MONOTONIC" = external global i64
@"var.time::NS_PER_US" = external global i64
@"var.time::NS_PER_MS" = external global i64
@"var.time::NS_PER_SEC" = external global i64
@"var.time::SEC_PER_MIN" = external global i64
@"var.time::SEC_PER_HOUR" = external global i64
@"var.time::SEC_PER_DAY" = external global i64
@"var.log::#min_level" = global i64 1
@"var.log::#out_fd" = global i64 2
@"var.log::#owned_fd" = global i64 -1
@"var.log::#show_ts" = global i1 true
@"var.log::#ts_utc" = global i1 false
@"var.log::#ts_basic" = global i1 false
@"var.log::#color_mode" = global i64 0
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@"var.log::#prefix_tag" = global ptr null
@"var.log::#O_LOG_APPEND" = global i64 1089
@str.1 = internal unnamed_addr constant [6 x i8] c"DEBUG\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.1 }
@str.2 = internal unnamed_addr constant [6 x i8] c"\1B[36m\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.2 }
@str.3 = internal unnamed_addr constant [5 x i8] c"INFO\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.3 }
@str.4 = internal unnamed_addr constant [6 x i8] c"\1B[32m\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.4 }
@str.5 = internal unnamed_addr constant [5 x i8] c"WARN\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.5 }
@str.6 = internal unnamed_addr constant [6 x i8] c"\1B[33m\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.6 }
@str.7 = internal unnamed_addr constant [6 x i8] c"ERROR\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.7 }
@str.8 = internal unnamed_addr constant [6 x i8] c"\1B[31m\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.8 }
@str.9 = internal unnamed_addr constant [7 x i8] c"SILENT\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.9 }
@"var.log::#LEVELS" = global ptr null
@clo.const = internal constant { ptr, ptr } { ptr @"log::#level_meta", ptr null }
@"var.log::#level_meta" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"log::#rank_to_level", ptr null }
@"var.log::#rank_to_level" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"log::#env_val", ptr null }
@"var.log::#env_val" = global ptr null
@str.10 = internal unnamed_addr constant [9 x i8] c"NO_COLOR\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.10 }
@str.11 = internal unnamed_addr constant [12 x i8] c"FORCE_COLOR\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 11, ptr @str.11 }
@str.12 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.12 }
@str.13 = internal unnamed_addr constant [5 x i8] c"TERM\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.13 }
@str.14 = internal unnamed_addr constant [5 x i8] c"dumb\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.14 }
@clo.const.3 = internal constant { ptr, ptr } { ptr @"log::#auto_color_enabled_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)", ptr null }
@clo.const.4 = internal constant { ptr, ptr } { ptr @"log::#auto_color_enabled", ptr null }
@"var.log::#auto_color_enabled" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"log::#should_color", ptr null }
@"var.log::#should_color" = global ptr null
@str.15 = internal unnamed_addr constant [2 x i8] c"[\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.15 }
@str.16 = internal unnamed_addr constant [2 x i8] c"]\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.16 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"log::#level_plain", ptr null }
@"var.log::#level_plain" = global ptr null
@str.17 = internal unnamed_addr constant [5 x i8] c"\1B[0m\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.17 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"log::#level_ansi", ptr null }
@"var.log::#level_ansi" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"log::#needs_quoting", ptr null }
@"var.log::#needs_quoting" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@str.18 = internal unnamed_addr constant [3 x i8] c"\\\22\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.18 }
@str.19 = internal unnamed_addr constant [3 x i8] c"\\\\\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.19 }
@str.20 = internal unnamed_addr constant [3 x i8] c"\\n\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.20 }
@str.21 = internal unnamed_addr constant [3 x i8] c"\\r\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.21 }
@str.22 = internal unnamed_addr constant [3 x i8] c"\\t\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.22 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.9 = internal constant { ptr, ptr } { ptr @"log::#quote_value", ptr null }
@"var.log::#quote_value" = global ptr null
@str.23 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.23 }
@str.24 = internal unnamed_addr constant [8 x i8] c"log.dva\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.24 }
@str.25 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.25 }
@dva_thread_rec = external thread_local global ptr
@clo.const.10 = internal constant { ptr, ptr } { ptr @"log::#append_fields", ptr null }
@"var.log::#append_fields" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"log::level_rank", ptr null }
@"var.log::level_rank" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"log::level_name", ptr null }
@"var.log::level_name" = global ptr null
@str.26 = internal unnamed_addr constant [6 x i8] c"debug\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.26 }
@str.27 = internal unnamed_addr constant [5 x i8] c"info\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.27 }
@str.28 = internal unnamed_addr constant [5 x i8] c"warn\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.28 }
@str.29 = internal unnamed_addr constant [8 x i8] c"warning\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.29 }
@str.30 = internal unnamed_addr constant [6 x i8] c"error\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.30 }
@str.31 = internal unnamed_addr constant [4 x i8] c"err\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.31 }
@str.32 = internal unnamed_addr constant [7 x i8] c"silent\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.32 }
@str.33 = internal unnamed_addr constant [4 x i8] c"off\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.33 }
@str.34 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.34 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"log::parse_level", ptr null }
@"var.log::parse_level" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"log::set_level", ptr null }
@"var.log::set_level" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"log::get_level", ptr null }
@"var.log::get_level" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"log::enabled", ptr null }
@"var.log::enabled" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"log::set_timestamps", ptr null }
@"var.log::set_timestamps" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"log::set_utc", ptr null }
@"var.log::set_utc" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"log::set_basic_iso", ptr null }
@"var.log::set_basic_iso" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"log::set_color", ptr null }
@"var.log::set_color" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"log::use_auto_color", ptr null }
@"var.log::use_auto_color" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"log::set_prefix", ptr null }
@"var.log::set_prefix" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"log::get_prefix", ptr null }
@"var.log::get_prefix" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"log::set_fd_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)", ptr null }
@clo.const.25 = internal constant { ptr, ptr } { ptr @"log::set_fd", ptr null }
@"var.log::set_fd" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"log::get_fd", ptr null }
@"var.log::get_fd" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"log::set_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)", ptr null }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"log::set_file", ptr null }
@"var.log::set_file" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"log::close_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)", ptr null }
@clo.const.30 = internal constant { ptr, ptr } { ptr @"log::close_file", ptr null }
@"var.log::close_file" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"time::resolve_utc_dt$Unit", ptr null }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"time::utc_iso_basic$Unit", ptr null }
@clo.const.33 = internal constant { ptr, ptr } { ptr @"time::utc_iso$Unit", ptr null }
@clo.const.34 = internal constant { ptr, ptr } { ptr @"time::resolve_local_dt$Unit", ptr null }
@clo.const.35 = internal constant { ptr, ptr } { ptr @"time::iso_basic$Unit", ptr null }
@clo.const.36 = internal constant { ptr, ptr } { ptr @"time::iso$Unit", ptr null }
@str.35 = internal unnamed_addr constant [2 x i8] c" \00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.35 }
@str.36 = internal unnamed_addr constant [3 x i8] c" [\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.36 }
@clo.const.37 = internal constant { ptr, ptr } { ptr @"log::format_entry", ptr null }
@"var.log::format_entry" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"log::format_kv", ptr null }
@"var.log::format_kv" = global ptr null
@str.37 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.37 }
@clo.const.39 = internal constant { ptr, ptr } { ptr @"log::log", ptr null }
@"var.log::log" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"log::log_kv", ptr null }
@"var.log::log_kv" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"log::debug", ptr null }
@"var.log::debug" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"log::info", ptr null }
@"var.log::info" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"log::warn", ptr null }
@"var.log::warn" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"log::error", ptr null }
@"var.log::error" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"log::debug_kv", ptr null }
@"var.log::debug_kv" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"log::info_kv", ptr null }
@"var.log::info_kv" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"log::warn_kv", ptr null }
@"var.log::warn_kv" = global ptr null
@clo.const.48 = internal constant { ptr, ptr } { ptr @"log::error_kv", ptr null }
@"var.log::error_kv" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_log, ptr null }]

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

define internal void @__dva_global_init_log() #0 {
entry:
  store i64 1, ptr @"var.log::#min_level", align 8
  store i64 2, ptr @"var.log::#out_fd", align 8
  store i64 -1, ptr @"var.log::#owned_fd", align 8
  store i1 true, ptr @"var.log::#show_ts", align 1
  store i1 false, ptr @"var.log::#ts_utc", align 1
  store i1 false, ptr @"var.log::#ts_basic", align 1
  store i64 0, ptr @"var.log::#color_mode", align 8
  store ptr @str.0.struct, ptr @"var.log::#prefix_tag", align 8
  store i64 1089, ptr @"var.log::#O_LOG_APPEND", align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc, ptr %rec.fld, align 8
  %rec.fld2 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr @str.2.struct, ptr %rec.fld4, align 8
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc6, i32 0, i32 0
  store i64 1, ptr %tag.gep7, align 8
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc6, i32 0, i32 1
  store ptr null, ptr %pay.gep8, align 8
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld11 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 0
  store ptr %enum.alloc6, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 1
  store i64 1, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 2
  store ptr @str.3.struct, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 3
  store ptr @str.4.struct, ptr %rec.fld14, align 8
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  %tag.gep17 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc16, i32 0, i32 0
  store i64 2, ptr %tag.gep17, align 8
  %pay.gep18 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc16, i32 0, i32 1
  store ptr null, ptr %pay.gep18, align 8
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld21 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 0
  store ptr %enum.alloc16, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 1
  store i64 2, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 2
  store ptr @str.5.struct, ptr %rec.fld23, align 8
  %rec.fld24 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 3
  store ptr @str.6.struct, ptr %rec.fld24, align 8
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %tag.gep27 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 0
  store i64 3, ptr %tag.gep27, align 8
  %pay.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 1
  store ptr null, ptr %pay.gep28, align 8
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld31 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 0
  store ptr %enum.alloc26, ptr %rec.fld31, align 8
  %rec.fld32 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 1
  store i64 3, ptr %rec.fld32, align 8
  %rec.fld33 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 2
  store ptr @str.7.struct, ptr %rec.fld33, align 8
  %rec.fld34 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 3
  store ptr @str.8.struct, ptr %rec.fld34, align 8
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 16)
  %tag.gep37 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc36, i32 0, i32 0
  store i64 4, ptr %tag.gep37, align 8
  %pay.gep38 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc36, i32 0, i32 1
  store ptr null, ptr %pay.gep38, align 8
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld41 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 0
  store ptr %enum.alloc36, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 1
  store i64 4, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 2
  store ptr @str.9.struct, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 3
  store ptr @str.0.struct, ptr %rec.fld44, align 8
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 ptrtoint (ptr getelementptr ({ { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr null, i32 1) to i64))
  %rec.fld47 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld47, ptr align 1 %rec.alloc, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld48 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld48, ptr align 1 %rec.alloc10, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld49 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld49, ptr align 1 %rec.alloc20, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld50 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld50, ptr align 1 %rec.alloc30, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld51 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %rec.alloc46, i32 0, i32 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld51, ptr align 1 %rec.alloc40, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc46, ptr @"var.log::#LEVELS", align 8
  store ptr @clo.const, ptr @"var.log::#level_meta", align 8
  store ptr @clo.const.1, ptr @"var.log::#rank_to_level", align 8
  store ptr @clo.const.2, ptr @"var.log::#env_val", align 8
  store ptr @clo.const.4, ptr @"var.log::#auto_color_enabled", align 8
  store ptr @clo.const.5, ptr @"var.log::#should_color", align 8
  store ptr @clo.const.6, ptr @"var.log::#level_plain", align 8
  store ptr @clo.const.7, ptr @"var.log::#level_ansi", align 8
  store ptr @clo.const.8, ptr @"var.log::#needs_quoting", align 8
  store ptr @clo.const.9, ptr @"var.log::#quote_value", align 8
  store ptr @clo.const.10, ptr @"var.log::#append_fields", align 8
  store ptr @clo.const.11, ptr @"var.log::level_rank", align 8
  store ptr @clo.const.12, ptr @"var.log::level_name", align 8
  store ptr @clo.const.13, ptr @"var.log::parse_level", align 8
  store ptr @clo.const.14, ptr @"var.log::set_level", align 8
  store ptr @clo.const.15, ptr @"var.log::get_level", align 8
  store ptr @clo.const.16, ptr @"var.log::enabled", align 8
  store ptr @clo.const.17, ptr @"var.log::set_timestamps", align 8
  store ptr @clo.const.18, ptr @"var.log::set_utc", align 8
  store ptr @clo.const.19, ptr @"var.log::set_basic_iso", align 8
  store ptr @clo.const.20, ptr @"var.log::set_color", align 8
  store ptr @clo.const.21, ptr @"var.log::use_auto_color", align 8
  store ptr @clo.const.22, ptr @"var.log::set_prefix", align 8
  store ptr @clo.const.23, ptr @"var.log::get_prefix", align 8
  store ptr @clo.const.25, ptr @"var.log::set_fd", align 8
  store ptr @clo.const.26, ptr @"var.log::get_fd", align 8
  store ptr @clo.const.28, ptr @"var.log::set_file", align 8
  store ptr @clo.const.30, ptr @"var.log::close_file", align 8
  store ptr @clo.const.37, ptr @"var.log::format_entry", align 8
  store ptr @clo.const.38, ptr @"var.log::format_kv", align 8
  store ptr @clo.const.39, ptr @"var.log::log", align 8
  store ptr @clo.const.40, ptr @"var.log::log_kv", align 8
  store ptr @clo.const.41, ptr @"var.log::debug", align 8
  store ptr @clo.const.42, ptr @"var.log::info", align 8
  store ptr @clo.const.43, ptr @"var.log::warn", align 8
  store ptr @clo.const.44, ptr @"var.log::error", align 8
  store ptr @clo.const.45, ptr @"var.log::debug_kv", align 8
  store ptr @clo.const.46, ptr @"var.log::info_kv", align 8
  store ptr @clo.const.47, ptr @"var.log::warn_kv", align 8
  store ptr @clo.const.48, ptr @"var.log::error_kv", align 8
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

declare i32 @nanosleep(ptr, ptr)

declare ptr @localtime_r(ptr, ptr)

declare ptr @strptime(ptr, ptr, ptr)

declare ptr @getenv(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

define internal ptr @"log::#level_meta"(ptr %0) #0 {
entry:
  %var._ = alloca ptr, align 8
  store ptr %0, ptr %var._, align 8
  %var.load = load ptr, ptr %var._, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next24, %choice.case23, %choice.case16, %choice.case9, %choice.case2, %choice.case
  %choice.res = phi ptr [ %fld.gep, %choice.case ], [ %fld.gep8, %choice.case2 ], [ %fld.gep15, %choice.case9 ], [ %fld.gep22, %choice.case16 ], [ %fld.gep29, %choice.case23 ], [ null, %choice.next24 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load1 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load1, i32 0, i32 0
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep4 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id5 = load i64, ptr %tag.gep4, align 8
  %tag.match6 = icmp eq i64 %tag.id5, 1
  br i1 %tag.match6, label %choice.case2, label %choice.next3

choice.case2:                                     ; preds = %choice.next
  %var.load7 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep8 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load7, i32 0, i32 1
  br label %choice.exit

choice.next3:                                     ; preds = %choice.next
  %tag.gep11 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id12 = load i64, ptr %tag.gep11, align 8
  %tag.match13 = icmp eq i64 %tag.id12, 2
  br i1 %tag.match13, label %choice.case9, label %choice.next10

choice.case9:                                     ; preds = %choice.next3
  %var.load14 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep15 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load14, i32 0, i32 2
  br label %choice.exit

choice.next10:                                    ; preds = %choice.next3
  %tag.gep18 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id19 = load i64, ptr %tag.gep18, align 8
  %tag.match20 = icmp eq i64 %tag.id19, 3
  br i1 %tag.match20, label %choice.case16, label %choice.next17

choice.case16:                                    ; preds = %choice.next10
  %var.load21 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep22 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load21, i32 0, i32 3
  br label %choice.exit

choice.next17:                                    ; preds = %choice.next10
  %tag.gep25 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id26 = load i64, ptr %tag.gep25, align 8
  %tag.match27 = icmp eq i64 %tag.id26, 4
  br i1 %tag.match27, label %choice.case23, label %choice.next24

choice.case23:                                    ; preds = %choice.next17
  %var.load28 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep29 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load28, i32 0, i32 4
  br label %choice.exit

choice.next24:                                    ; preds = %choice.next17
  br label %choice.exit
}

define internal ptr @"log::#rank_to_level"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next18, %choice.case17, %choice.case10, %choice.case3, %choice.case
  %choice.res = phi ptr [ %fld.load, %choice.case ], [ %fld.load9, %choice.case3 ], [ %fld.load16, %choice.case10 ], [ %fld.load23, %choice.case17 ], [ %fld.load27, %choice.next18 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load1 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load1, i32 0, i32 0
  %fld.gep2 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep2, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match5 = icmp eq i64 %var.load, 1
  br i1 %val.match5, label %choice.case3, label %choice.next4

choice.case3:                                     ; preds = %choice.next
  %var.load6 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep7 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load6, i32 0, i32 1
  %fld.gep8 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep7, i32 0, i32 0
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  br label %choice.exit

choice.next4:                                     ; preds = %choice.next
  %val.match12 = icmp eq i64 %var.load, 2
  br i1 %val.match12, label %choice.case10, label %choice.next11

choice.case10:                                    ; preds = %choice.next4
  %var.load13 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep14 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load13, i32 0, i32 2
  %fld.gep15 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  br label %choice.exit

choice.next11:                                    ; preds = %choice.next4
  %val.match19 = icmp eq i64 %var.load, 3
  br i1 %val.match19, label %choice.case17, label %choice.next18

choice.case17:                                    ; preds = %choice.next11
  %var.load20 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep21 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load20, i32 0, i32 3
  %fld.gep22 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep21, i32 0, i32 0
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  br label %choice.exit

choice.next18:                                    ; preds = %choice.next11
  %var.load24 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep25 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load24, i32 0, i32 4
  %fld.gep26 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %fld.gep25, i32 0, i32 0
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  br label %choice.exit
}

define internal { i64, ptr } @"log::#env_val"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.raw = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call ptr @getenv(ptr %arg.str.ptr7)
  store ptr %call.res, ptr %var.raw, align 8
  %var.load8 = load ptr, ptr %var.raw, align 8
  %var.load9 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load8 to i64
  %ptr.int.r = ptrtoint ptr %var.load9 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load10 = load ptr, ptr %var.raw, align 8
  %call.res11 = call { i64, ptr } @"sys::c_str"(ptr %var.load10)
  store { i64, ptr } %call.res11, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %ret.ub.salloc, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #6 {
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
define internal void @dva_abort_stale_str_msg() #7 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #7 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare { i64, ptr } @"sys::c_str"(ptr) #0

define internal i1 @"log::#auto_color_enabled"() #0 {
entry:
  %call.res = call i1 @"log::#auto_color_enabled_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"()
  ret i1 %call.res
}

define internal i1 @"log::#auto_color_enabled_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"() #0 {
entry:
  %ret.ub.salloc32 = alloca { i64, ptr }, align 8
  %var.fc = alloca ptr, align 8
  %ret.ub.salloc4 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %call.res = call { i64, ptr } @"log::#env_val"(ptr @str.10.struct)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
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
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %call.res3 = call { i64, ptr } @"log::#env_val"(ptr @str.11.struct)
  store { i64, ptr } %call.res3, ptr %ret.ub.salloc4, align 8
  store ptr %ret.ub.salloc4, ptr %var.fc, align 8
  %var.load = load ptr, ptr %var.fc, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
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
  %cmptmp15 = icmp sgt i64 %str.len.query7, 0
  br i1 %cmptmp15, label %and.87.then, label %and.87.else

tag.slow_check14:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

and.87.then:                                      ; preds = %str_ok9
  %var.load16 = load ptr, ptr %var.fc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %str.tag19 = lshr i64 %eq.lhs.len17, 48
  %tag.immortal21 = icmp eq i64 %str.tag19, 0
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current23 = icmp eq i64 %str.tag19, %active.gen22
  %tag.fast.ok24 = or i1 %tag.immortal21, %tag.current23
  br i1 %tag.fast.ok24, label %str_ok20, label %tag.slow_check25

and.87.else:                                      ; preds = %str_ok9
  br label %and.87.exit

and.87.exit:                                      ; preds = %and.87.else, %str.eq.merge
  %and.87.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %cmptmp15, %and.87.else ]
  br i1 %and.87.phi, label %choice.then28, label %choice.exit29

str_ok20:                                         ; preds = %tag.slow_check25, %and.87.then
  %eq.rhs.len = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len26 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len18, %eq.rhs.len26
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check25:                                 ; preds = %and.87.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag19)
  br label %str_ok20

str.eq.then:                                      ; preds = %str_ok20
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %eq.lhs.data27 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data27, ptr %eq.rhs.data, i64 %eq.lhs.len18)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok20
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.87.exit

choice.then28:                                    ; preds = %and.87.exit
  ret i1 true

choice.exit29:                                    ; preds = %ret.dead30, %and.87.exit
  %call.res31 = call { i64, ptr } @"log::#env_val"(ptr @str.13.struct)
  store { i64, ptr } %call.res31, ptr %ret.ub.salloc32, align 8
  %eq.lhs.len33 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc32, i32 0, i32 0
  %eq.lhs.len34 = load i64, ptr %eq.lhs.len33, align 8
  %eq.lhs.len35 = and i64 %eq.lhs.len34, 281474976710655
  %str.tag36 = lshr i64 %eq.lhs.len34, 48
  %tag.immortal38 = icmp eq i64 %str.tag36, 0
  %active.gen39 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current40 = icmp eq i64 %str.tag36, %active.gen39
  %tag.fast.ok41 = or i1 %tag.immortal38, %tag.current40
  br i1 %tag.fast.ok41, label %str_ok37, label %tag.slow_check42

ret.dead30:                                       ; No predecessors!
  br label %choice.exit29

str_ok37:                                         ; preds = %tag.slow_check42, %choice.exit29
  %eq.rhs.len43 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len44 = and i64 %eq.rhs.len43, 281474976710655
  %eq.len45 = icmp eq i64 %eq.lhs.len35, %eq.rhs.len44
  br i1 %eq.len45, label %str.eq.then46, label %str.eq.else47

tag.slow_check42:                                 ; preds = %choice.exit29
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag36)
  br label %str_ok37

str.eq.then46:                                    ; preds = %str_ok37
  %eq.lhs.data49 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc32, i32 0, i32 1
  %eq.lhs.data50 = load ptr, ptr %eq.lhs.data49, align 8
  %eq.rhs.data51 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp52 = call i32 @memcmp(ptr %eq.lhs.data50, ptr %eq.rhs.data51, i64 %eq.lhs.len35)
  %eq.cmp.zero53 = icmp eq i32 %eq.memcmp52, 0
  br label %str.eq.merge48

str.eq.else47:                                    ; preds = %str_ok37
  br label %str.eq.merge48

str.eq.merge48:                                   ; preds = %str.eq.else47, %str.eq.then46
  %str.eq.result54 = phi i1 [ %eq.cmp.zero53, %str.eq.then46 ], [ false, %str.eq.else47 ]
  br i1 %str.eq.result54, label %choice.then55, label %choice.exit56

choice.then55:                                    ; preds = %str.eq.merge48
  ret i1 false

choice.exit56:                                    ; preds = %ret.dead57, %str.eq.merge48
  %var.load58 = load i64, ptr @"var.log::#out_fd", align 8
  %coerce.trunc = trunc i64 %var.load58 to i32
  %call.res59 = call i64 @isatty(i32 %coerce.trunc)
  %cmptmp60 = icmp eq i64 %call.res59, 1
  ret i1 %cmptmp60

ret.dead57:                                       ; No predecessors!
  br label %choice.exit56
}

declare i32 @memcmp(ptr, ptr, i64) #0

define internal i1 @"log::#should_color"() #0 {
entry:
  %var.load = load i64, ptr @"var.log::#color_mode", align 8
  %val.match = icmp eq i64 %var.load, 1
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next2, %choice.case1, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.case1 ], [ %call.res, %choice.next2 ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %val.match3 = icmp eq i64 %var.load, 2
  br i1 %val.match3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %call.res = call i1 @"log::#auto_color_enabled"()
  br label %choice.exit
}

define internal { i64, ptr } @"log::#level_plain"(ptr %0) #0 {
entry:
  %concat.str = alloca { i64, ptr }, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call ptr @"log::#level_meta"(ptr %var.load)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %cat.seg1 = load i64, ptr %cat.seg, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data5 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len6

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

cat.sum.len6:                                     ; preds = %abort.dead, %str_ok
  %cat.sum.len7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %cat.sum.len7, 0
  %ovf9 = extractvalue { i64, i1 } %cat.sum.len7, 1
  br i1 %ovf9, label %str_overflow_abort11, label %cat.sum.len10

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len6

cat.sum.len10:                                    ; preds = %abort.dead12, %cat.sum.len6
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum8, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort11:                             ; preds = %cat.sum.len6
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %cat.sum.len10

concat.tot.len15:                                 ; preds = %abort.dead17, %cat.sum.len10
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum13)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.dst18 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst18, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 1, %cat.seg2
  %cat.dst19 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst19, ptr align 1 %cat.lit.data5, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum8
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum8, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort16:                             ; preds = %cat.sum.len10
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %concat.tot.len15
}

define internal { i64, ptr } @"log::#level_ansi"(ptr %0) #0 {
entry:
  %concat.str89 = alloca { i64, ptr }, align 8
  %var.badge = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call ptr @"log::#level_meta"(ptr %var.load)
  store ptr %call.res, ptr %var.m, align 8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.15.struct, i32 0, i32 1), align 8
  %var.load1 = load ptr, ptr %var.m, align 8
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load1, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %cat.seg2 = load i64, ptr %cat.seg, align 8
  %cat.seg3 = and i64 %cat.seg2, 281474976710655
  %str.tag = lshr i64 %cat.seg2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg4 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg5 = load ptr, ptr %cat.seg4, align 8
  %cat.lit.data6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.seg3)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len7

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

cat.sum.len7:                                     ; preds = %abort.dead, %str_ok
  %cat.sum.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum9 = extractvalue { i64, i1 } %cat.sum.len8, 0
  %ovf10 = extractvalue { i64, i1 } %cat.sum.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %cat.sum.len11

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %cat.sum.len7

cat.sum.len11:                                    ; preds = %abort.dead13, %cat.sum.len7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum9, i64 1)
  %sum14 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf15 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %concat.tot.len16

str_overflow_abort12:                             ; preds = %cat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %cat.sum.len11

concat.tot.len16:                                 ; preds = %abort.dead18, %cat.sum.len11
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum14)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.dst19 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst19, ptr align 1 %cat.seg5, i64 %cat.seg3, i1 false)
  %cat.off = add i64 1, %cat.seg3
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 %cat.lit.data6, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum9
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum9, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.badge, align 8
  %var.load22 = load ptr, ptr %var.m, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load22, i32 0, i32 3
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %str.len.query25 = load i64, ptr %str.len.query, align 8
  %str.len.query26 = and i64 %str.len.query25, 281474976710655
  %str.tag27 = lshr i64 %str.len.query25, 48
  %tag.immortal29 = icmp eq i64 %str.tag27, 0
  %active.gen30 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current31 = icmp eq i64 %str.tag27, %active.gen30
  %tag.fast.ok32 = or i1 %tag.immortal29, %tag.current31
  br i1 %tag.fast.ok32, label %str_ok28, label %tag.slow_check33

str_overflow_abort17:                             ; preds = %cat.sum.len11
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %concat.tot.len16

str_ok28:                                         ; preds = %tag.slow_check33, %concat.tot.len16
  %cmptmp = icmp sgt i64 %str.len.query26, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check33:                                 ; preds = %concat.tot.len16
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag27)
  br label %str_ok28

choice.then:                                      ; preds = %str_ok28
  %var.load34 = load ptr, ptr %var.m, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load34, i32 0, i32 3
  %fld.load36 = load ptr, ptr %fld.gep35, align 8
  %cat.seg37 = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 0
  %cat.seg38 = load i64, ptr %cat.seg37, align 8
  %cat.seg39 = and i64 %cat.seg38, 281474976710655
  %str.tag40 = lshr i64 %cat.seg38, 48
  %tag.immortal42 = icmp eq i64 %str.tag40, 0
  %active.gen43 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current44 = icmp eq i64 %str.tag40, %active.gen43
  %tag.fast.ok45 = or i1 %tag.immortal42, %tag.current44
  br i1 %tag.fast.ok45, label %str_ok41, label %tag.slow_check46

choice.else:                                      ; preds = %str_ok28
  %var.load92 = load ptr, ptr %var.badge, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len78
  %choice.res = phi ptr [ %concat.str89, %concat.tot.len78 ], [ %var.load92, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

str_ok41:                                         ; preds = %tag.slow_check46, %choice.then
  %cat.seg47 = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 1
  %cat.seg48 = load ptr, ptr %cat.seg47, align 8
  %var.load49 = load ptr, ptr %var.badge, align 8
  %cat.seg50 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %cat.seg51 = load i64, ptr %cat.seg50, align 8
  %cat.seg52 = and i64 %cat.seg51, 281474976710655
  %str.tag53 = lshr i64 %cat.seg51, 48
  %tag.immortal55 = icmp eq i64 %str.tag53, 0
  %active.gen56 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current57 = icmp eq i64 %str.tag53, %active.gen56
  %tag.fast.ok58 = or i1 %tag.immortal55, %tag.current57
  br i1 %tag.fast.ok58, label %str_ok54, label %tag.slow_check59

tag.slow_check46:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag40)
  br label %str_ok41

str_ok54:                                         ; preds = %tag.slow_check59, %str_ok41
  %cat.seg60 = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 1
  %cat.seg61 = load ptr, ptr %cat.seg60, align 8
  %cat.lit.data62 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %cat.sum.len63 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg39, i64 %cat.seg52)
  %sum64 = extractvalue { i64, i1 } %cat.sum.len63, 0
  %ovf65 = extractvalue { i64, i1 } %cat.sum.len63, 1
  br i1 %ovf65, label %str_overflow_abort67, label %cat.sum.len66

tag.slow_check59:                                 ; preds = %str_ok41
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag53)
  br label %str_ok54

cat.sum.len66:                                    ; preds = %abort.dead68, %str_ok54
  %cat.sum.len69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum64, i64 4)
  %sum70 = extractvalue { i64, i1 } %cat.sum.len69, 0
  %ovf71 = extractvalue { i64, i1 } %cat.sum.len69, 1
  br i1 %ovf71, label %str_overflow_abort73, label %cat.sum.len72

str_overflow_abort67:                             ; preds = %str_ok54
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead68:                                     ; No predecessors!
  br label %cat.sum.len66

cat.sum.len72:                                    ; preds = %abort.dead74, %cat.sum.len66
  %concat.tot.len75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum70, i64 1)
  %sum76 = extractvalue { i64, i1 } %concat.tot.len75, 0
  %ovf77 = extractvalue { i64, i1 } %concat.tot.len75, 1
  br i1 %ovf77, label %str_overflow_abort79, label %concat.tot.len78

str_overflow_abort73:                             ; preds = %cat.sum.len66
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %cat.sum.len72

concat.tot.len78:                                 ; preds = %abort.dead80, %cat.sum.len72
  %arena.cur81 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 %sum76)
  %cat.dst83 = getelementptr i8, ptr %concat.buf82, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst83, ptr align 1 %cat.seg48, i64 %cat.seg39, i1 false)
  %cat.off84 = add i64 0, %cat.seg39
  %cat.dst85 = getelementptr i8, ptr %concat.buf82, i64 %cat.off84
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst85, ptr align 1 %cat.seg61, i64 %cat.seg52, i1 false)
  %cat.off86 = add i64 %cat.off84, %cat.seg52
  %cat.dst87 = getelementptr i8, ptr %concat.buf82, i64 %cat.off86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst87, ptr align 1 %cat.lit.data62, i64 4, i1 false)
  %concat.nul88 = getelementptr i8, ptr %concat.buf82, i64 %sum70
  store i8 0, ptr %concat.nul88, align 1
  %str.build.len.gep90 = getelementptr inbounds { i64, ptr }, ptr %concat.str89, i32 0, i32 0
  store i64 %sum70, ptr %str.build.len.gep90, align 8
  %str.build.data.gep91 = getelementptr inbounds { i64, ptr }, ptr %concat.str89, i32 0, i32 1
  store ptr %concat.buf82, ptr %str.build.data.gep91, align 8
  br label %choice.exit

str_overflow_abort79:                             ; preds = %cat.sum.len72
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %concat.tot.len78
}

define internal i1 @"log::#needs_quoting"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.c = alloca i64, align 8
  %loop.step.88 = alloca i64, align 8
  %loop.idx.88 = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
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
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len4 = load i64, ptr %str.len, align 8
  %str.len5 = and i64 %str.len4, 281474976710655
  %str.tag6 = lshr i64 %str.len4, 48
  %tag.immortal8 = icmp eq i64 %str.tag6, 0
  %active.gen9 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current10 = icmp eq i64 %str.tag6, %active.gen9
  %tag.fast.ok11 = or i1 %tag.immortal8, %tag.current10
  br i1 %tag.fast.ok11, label %str_ok7, label %tag.slow_check12

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok7:                                          ; preds = %tag.slow_check12, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.88, align 8
  br label %loop.header.88

tag.slow_check12:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag6)
  br label %str_ok7

loop.header.88:                                   ; preds = %loop.latch.88, %str_ok7
  %counter.load = load i64, ptr %loop.idx.88, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len5
  br i1 %loop.cond, label %loop.body.88, label %loop.exit.nat.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.88, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load14 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load14, 32
  %val.match16 = icmp eq i64 %var.load14, 9
  %case.or = or i1 %val.match, %val.match16
  %val.match17 = icmp eq i64 %var.load14, 10
  %case.or18 = or i1 %case.or, %val.match17
  %val.match19 = icmp eq i64 %var.load14, 13
  %case.or20 = or i1 %case.or18, %val.match19
  %val.match21 = icmp eq i64 %var.load14, 34
  %case.or22 = or i1 %case.or20, %val.match21
  %val.match23 = icmp eq i64 %var.load14, 61
  %case.or24 = or i1 %case.or22, %val.match23
  br i1 %case.or24, label %choice.case, label %choice.next

loop.exit.nat.88:                                 ; preds = %loop.header.88
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit26
  %step.val = load i64, ptr %loop.step.88, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %loop.exit.nat.88
  ret i1 false

choice.exit15:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then25, label %choice.exit26

choice.case:                                      ; preds = %loop.body.88
  br label %choice.exit15

choice.next:                                      ; preds = %loop.body.88
  br label %choice.exit15

choice.then25:                                    ; preds = %choice.exit15
  ret i1 true

choice.exit26:                                    ; preds = %ret.dead27, %choice.exit15
  br label %loop.latch.88

ret.dead27:                                       ; No predecessors!
  br label %choice.exit26
}

define internal { i64, ptr } @"log::#quote_value"(ptr %0) #0 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.90 = alloca i64, align 8
  %loop.idx.90 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call i1 @"log::#needs_quoting"(ptr %var.load)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load1, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %choice.exit
  %addtmp = add i64 %str.len.query4, 8
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

tag.slow_check:                                   ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.buf.len5:                                       ; preds = %abort.dead, %str_ok
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len6 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len6, i64 1)
  %sum7 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf8 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf8, label %str_overflow_abort10, label %b.rn.new.len9

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len5

b.rn.new.len9:                                    ; preds = %abort.dead11, %b.buf.len5
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap12 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap12, %sum7
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort10:                             ; preds = %b.buf.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %b.rn.new.len9

b.grow2:                                          ; preds = %b.rn.new.len9
  %b.cap2 = mul i64 %b.cap12, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum7
  %b.new.cap = select i1 %b.cap.need, i64 %sum7, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len213 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data214 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum15 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf16 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf16, label %str_overflow_abort18, label %b.new.buf.len217

b.nogrow2:                                        ; preds = %b.rn.new.len9
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len217
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data21 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data21, i64 %b.rn.cur.len6
  br i1 true, label %br.b1.89, label %br.c2.89

b.new.buf.len217:                                 ; preds = %abort.dead19, %b.grow2
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data214, i64 %b.cur.len213, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len213
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort18:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %b.new.buf.len217

br.b1.89:                                         ; preds = %b.grow_done
  store i8 34, ptr %b.rn.dst, align 1
  br label %br.done.89

br.c2.89:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.89, label %br.c3.89

br.b2.89:                                         ; preds = %br.c2.89
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -94, ptr %br.dst1, align 1
  br label %br.done.89

br.c3.89:                                         ; preds = %br.c2.89
  br i1 true, label %br.b3.89, label %br.b4.89

br.b3.89:                                         ; preds = %br.c3.89
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -94, ptr %br.dst2.3, align 1
  br label %br.done.89

br.b4.89:                                         ; preds = %br.c3.89
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -94, ptr %br.dst3.4, align 1
  br label %br.done.89

br.done.89:                                       ; preds = %br.b4.89, %br.b3.89, %br.b2.89, %br.b1.89
  %br.nul = getelementptr i8, ptr %b.rn.data21, i64 %sum7
  store i8 0, ptr %br.nul, align 1
  %b.len.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum7, ptr %b.len.gep22, align 8
  %var.load23 = load ptr, ptr %var.s, align 8
  %str.len.query24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %str.len.query25 = load i64, ptr %str.len.query24, align 8
  %str.len.query26 = and i64 %str.len.query25, 281474976710655
  %str.tag27 = lshr i64 %str.len.query25, 48
  %tag.immortal29 = icmp eq i64 %str.tag27, 0
  %active.gen30 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current31 = icmp eq i64 %str.tag27, %active.gen30
  %tag.fast.ok32 = or i1 %tag.immortal29, %tag.current31
  br i1 %tag.fast.ok32, label %str_ok28, label %tag.slow_check33

str_ok28:                                         ; preds = %tag.slow_check33, %br.done.89
  store i64 0, ptr %loop.idx.90, align 8
  br label %loop.header.90

tag.slow_check33:                                 ; preds = %br.done.89
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag27)
  br label %str_ok28

loop.header.90:                                   ; preds = %loop.latch.90, %str_ok28
  %counter.load = load i64, ptr %loop.idx.90, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query26
  br i1 %loop.cond, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.90, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load34 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  %var.load38 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load38, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.90:                                 ; preds = %loop.header.90
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %choice.exit41
  %step.val = load i64, ptr %loop.step.90, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %loop.exit.nat.90
  %b.load281 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 0
  %b.rn.cur.len283 = load i64, ptr %b.rn.cur.len282, align 8
  %b.rn.new.len284 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len283, i64 1)
  %sum285 = extractvalue { i64, i1 } %b.rn.new.len284, 0
  %ovf286 = extractvalue { i64, i1 } %b.rn.new.len284, 1
  br i1 %ovf286, label %str_overflow_abort288, label %b.rn.new.len287

idx_big_check:                                    ; preds = %loop.body.90
  %idx.big = icmp sge i64 %var.load38, %s.read.len36
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead39, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data37, i64 %var.load38
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load40 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load40, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %loop.body.90
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %idx_ok

choice.exit41:                                    ; preds = %b.push_done, %b.grow_done236, %b.grow_done190, %b.grow_done144, %b.grow_done98, %b.grow_done55
  br label %loop.latch.90

choice.case:                                      ; preds = %idx_ok
  %b.load42 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.18.struct, align 8
  %app.str.len43 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  %b.app.cur.len44 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len44, i64 %app.str.len43)
  %sum45 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf46 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf46, label %str_overflow_abort48, label %b.app.new.len47

choice.next:                                      ; preds = %idx_ok
  %val.match80 = icmp eq i64 %var.load40, 92
  br i1 %val.match80, label %choice.case78, label %choice.next79

b.app.new.len47:                                  ; preds = %abort.dead49, %choice.case
  %b.cap50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 2
  %b.cap51 = load i64, ptr %b.cap50, align 8
  %b.need.grow52 = icmp slt i64 %b.cap51, %sum45
  br i1 %b.need.grow52, label %b.grow253, label %b.nogrow254

str_overflow_abort48:                             ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %b.app.new.len47

b.grow253:                                        ; preds = %b.app.new.len47
  %b.cap256 = mul i64 %b.cap51, 2
  %b.cap.small57 = icmp slt i64 %b.cap256, 16
  %b.cap.grow58 = select i1 %b.cap.small57, i64 16, i64 %b.cap256
  %b.cap.need59 = icmp slt i64 %b.cap.grow58, %sum45
  %b.new.cap60 = select i1 %b.cap.need59, i64 %sum45, i64 %b.cap.grow58
  %b.cur.len261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  %b.cur.len262 = load i64, ptr %b.cur.len261, align 8
  %b.cur.data263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  %b.cur.data264 = load ptr, ptr %b.cur.data263, align 8
  %b.new.buf.len265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap60, i64 1)
  %sum66 = extractvalue { i64, i1 } %b.new.buf.len265, 0
  %ovf67 = extractvalue { i64, i1 } %b.new.buf.len265, 1
  br i1 %ovf67, label %str_overflow_abort69, label %b.new.buf.len268

b.nogrow254:                                      ; preds = %b.app.new.len47
  br label %b.grow_done55

b.grow_done55:                                    ; preds = %b.nogrow254, %b.new.buf.len268
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  %b.app.data76 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data76, i64 %b.app.cur.len44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len43, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data76, i64 %sum45
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 0
  store i64 %sum45, ptr %b.len.gep77, align 8
  br label %choice.exit41

b.new.buf.len268:                                 ; preds = %abort.dead70, %b.grow253
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf272 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 %sum66)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf272, ptr align 1 %b.cur.data264, i64 %b.cur.len262, i1 false)
  %b.grow2.nul73 = getelementptr i8, ptr %b.new.buf272, i64 %b.cur.len262
  store i8 0, ptr %b.grow2.nul73, align 1
  %b.new.data2.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 1
  store ptr %b.new.buf272, ptr %b.new.data2.gep74, align 8
  %b.new.cap2.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load42, i32 0, i32 2
  store i64 %b.new.cap60, ptr %b.new.cap2.gep75, align 8
  br label %b.grow_done55

str_overflow_abort69:                             ; preds = %b.grow253
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %b.new.buf.len268

choice.case78:                                    ; preds = %choice.next
  %b.load81 = load ptr, ptr %var.b, align 8
  %app.str.len82 = load i64, ptr @str.19.struct, align 8
  %app.str.len83 = and i64 %app.str.len82, 281474976710655
  %app.str.data84 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %b.app.cur.len85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.app.cur.len86 = load i64, ptr %b.app.cur.len85, align 8
  %b.app.new.len87 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len86, i64 %app.str.len83)
  %sum88 = extractvalue { i64, i1 } %b.app.new.len87, 0
  %ovf89 = extractvalue { i64, i1 } %b.app.new.len87, 1
  br i1 %ovf89, label %str_overflow_abort91, label %b.app.new.len90

choice.next79:                                    ; preds = %choice.next
  %val.match126 = icmp eq i64 %var.load40, 10
  br i1 %val.match126, label %choice.case124, label %choice.next125

b.app.new.len90:                                  ; preds = %abort.dead92, %choice.case78
  %b.cap93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  %b.cap94 = load i64, ptr %b.cap93, align 8
  %b.need.grow95 = icmp slt i64 %b.cap94, %sum88
  br i1 %b.need.grow95, label %b.grow296, label %b.nogrow297

str_overflow_abort91:                             ; preds = %choice.case78
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %b.app.new.len90

b.grow296:                                        ; preds = %b.app.new.len90
  %b.cap299 = mul i64 %b.cap94, 2
  %b.cap.small100 = icmp slt i64 %b.cap299, 16
  %b.cap.grow101 = select i1 %b.cap.small100, i64 16, i64 %b.cap299
  %b.cap.need102 = icmp slt i64 %b.cap.grow101, %sum88
  %b.new.cap103 = select i1 %b.cap.need102, i64 %sum88, i64 %b.cap.grow101
  %b.cur.len2104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.cur.len2105 = load i64, ptr %b.cur.len2104, align 8
  %b.cur.data2106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.cur.data2107 = load ptr, ptr %b.cur.data2106, align 8
  %b.new.buf.len2108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap103, i64 1)
  %sum109 = extractvalue { i64, i1 } %b.new.buf.len2108, 0
  %ovf110 = extractvalue { i64, i1 } %b.new.buf.len2108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %b.new.buf.len2111

b.nogrow297:                                      ; preds = %b.app.new.len90
  br label %b.grow_done98

b.grow_done98:                                    ; preds = %b.nogrow297, %b.new.buf.len2111
  %b.app.data119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.app.data120 = load ptr, ptr %b.app.data119, align 8
  %b.app.dst121 = getelementptr i8, ptr %b.app.data120, i64 %b.app.cur.len86
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst121, ptr align 1 %app.str.data84, i64 %app.str.len83, i1 false)
  %b.app.nul122 = getelementptr i8, ptr %b.app.data120, i64 %sum88
  store i8 0, ptr %b.app.nul122, align 1
  %b.len.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  store i64 %sum88, ptr %b.len.gep123, align 8
  br label %choice.exit41

b.new.buf.len2111:                                ; preds = %abort.dead113, %b.grow296
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 %sum109)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2115, ptr align 1 %b.cur.data2107, i64 %b.cur.len2105, i1 false)
  %b.grow2.nul116 = getelementptr i8, ptr %b.new.buf2115, i64 %b.cur.len2105
  store i8 0, ptr %b.grow2.nul116, align 1
  %b.new.data2.gep117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  store ptr %b.new.buf2115, ptr %b.new.data2.gep117, align 8
  %b.new.cap2.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  store i64 %b.new.cap103, ptr %b.new.cap2.gep118, align 8
  br label %b.grow_done98

str_overflow_abort112:                            ; preds = %b.grow296
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %b.new.buf.len2111

choice.case124:                                   ; preds = %choice.next79
  %b.load127 = load ptr, ptr %var.b, align 8
  %app.str.len128 = load i64, ptr @str.20.struct, align 8
  %app.str.len129 = and i64 %app.str.len128, 281474976710655
  %app.str.data130 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %b.app.cur.len131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 0
  %b.app.cur.len132 = load i64, ptr %b.app.cur.len131, align 8
  %b.app.new.len133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len132, i64 %app.str.len129)
  %sum134 = extractvalue { i64, i1 } %b.app.new.len133, 0
  %ovf135 = extractvalue { i64, i1 } %b.app.new.len133, 1
  br i1 %ovf135, label %str_overflow_abort137, label %b.app.new.len136

choice.next125:                                   ; preds = %choice.next79
  %val.match172 = icmp eq i64 %var.load40, 13
  br i1 %val.match172, label %choice.case170, label %choice.next171

b.app.new.len136:                                 ; preds = %abort.dead138, %choice.case124
  %b.cap139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 2
  %b.cap140 = load i64, ptr %b.cap139, align 8
  %b.need.grow141 = icmp slt i64 %b.cap140, %sum134
  br i1 %b.need.grow141, label %b.grow2142, label %b.nogrow2143

str_overflow_abort137:                            ; preds = %choice.case124
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead138:                                    ; No predecessors!
  br label %b.app.new.len136

b.grow2142:                                       ; preds = %b.app.new.len136
  %b.cap2145 = mul i64 %b.cap140, 2
  %b.cap.small146 = icmp slt i64 %b.cap2145, 16
  %b.cap.grow147 = select i1 %b.cap.small146, i64 16, i64 %b.cap2145
  %b.cap.need148 = icmp slt i64 %b.cap.grow147, %sum134
  %b.new.cap149 = select i1 %b.cap.need148, i64 %sum134, i64 %b.cap.grow147
  %b.cur.len2150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 0
  %b.cur.len2151 = load i64, ptr %b.cur.len2150, align 8
  %b.cur.data2152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 1
  %b.cur.data2153 = load ptr, ptr %b.cur.data2152, align 8
  %b.new.buf.len2154 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap149, i64 1)
  %sum155 = extractvalue { i64, i1 } %b.new.buf.len2154, 0
  %ovf156 = extractvalue { i64, i1 } %b.new.buf.len2154, 1
  br i1 %ovf156, label %str_overflow_abort158, label %b.new.buf.len2157

b.nogrow2143:                                     ; preds = %b.app.new.len136
  br label %b.grow_done144

b.grow_done144:                                   ; preds = %b.nogrow2143, %b.new.buf.len2157
  %b.app.data165 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 1
  %b.app.data166 = load ptr, ptr %b.app.data165, align 8
  %b.app.dst167 = getelementptr i8, ptr %b.app.data166, i64 %b.app.cur.len132
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst167, ptr align 1 %app.str.data130, i64 %app.str.len129, i1 false)
  %b.app.nul168 = getelementptr i8, ptr %b.app.data166, i64 %sum134
  store i8 0, ptr %b.app.nul168, align 1
  %b.len.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 0
  store i64 %sum134, ptr %b.len.gep169, align 8
  br label %choice.exit41

b.new.buf.len2157:                                ; preds = %abort.dead159, %b.grow2142
  %arena.cur160 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 %sum155)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2161, ptr align 1 %b.cur.data2153, i64 %b.cur.len2151, i1 false)
  %b.grow2.nul162 = getelementptr i8, ptr %b.new.buf2161, i64 %b.cur.len2151
  store i8 0, ptr %b.grow2.nul162, align 1
  %b.new.data2.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 1
  store ptr %b.new.buf2161, ptr %b.new.data2.gep163, align 8
  %b.new.cap2.gep164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load127, i32 0, i32 2
  store i64 %b.new.cap149, ptr %b.new.cap2.gep164, align 8
  br label %b.grow_done144

str_overflow_abort158:                            ; preds = %b.grow2142
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead159:                                    ; No predecessors!
  br label %b.new.buf.len2157

choice.case170:                                   ; preds = %choice.next125
  %b.load173 = load ptr, ptr %var.b, align 8
  %app.str.len174 = load i64, ptr @str.21.struct, align 8
  %app.str.len175 = and i64 %app.str.len174, 281474976710655
  %app.str.data176 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %b.app.cur.len177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 0
  %b.app.cur.len178 = load i64, ptr %b.app.cur.len177, align 8
  %b.app.new.len179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len178, i64 %app.str.len175)
  %sum180 = extractvalue { i64, i1 } %b.app.new.len179, 0
  %ovf181 = extractvalue { i64, i1 } %b.app.new.len179, 1
  br i1 %ovf181, label %str_overflow_abort183, label %b.app.new.len182

choice.next171:                                   ; preds = %choice.next125
  %val.match218 = icmp eq i64 %var.load40, 9
  br i1 %val.match218, label %choice.case216, label %choice.next217

b.app.new.len182:                                 ; preds = %abort.dead184, %choice.case170
  %b.cap185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 2
  %b.cap186 = load i64, ptr %b.cap185, align 8
  %b.need.grow187 = icmp slt i64 %b.cap186, %sum180
  br i1 %b.need.grow187, label %b.grow2188, label %b.nogrow2189

str_overflow_abort183:                            ; preds = %choice.case170
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead184:                                    ; No predecessors!
  br label %b.app.new.len182

b.grow2188:                                       ; preds = %b.app.new.len182
  %b.cap2191 = mul i64 %b.cap186, 2
  %b.cap.small192 = icmp slt i64 %b.cap2191, 16
  %b.cap.grow193 = select i1 %b.cap.small192, i64 16, i64 %b.cap2191
  %b.cap.need194 = icmp slt i64 %b.cap.grow193, %sum180
  %b.new.cap195 = select i1 %b.cap.need194, i64 %sum180, i64 %b.cap.grow193
  %b.cur.len2196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 0
  %b.cur.len2197 = load i64, ptr %b.cur.len2196, align 8
  %b.cur.data2198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 1
  %b.cur.data2199 = load ptr, ptr %b.cur.data2198, align 8
  %b.new.buf.len2200 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap195, i64 1)
  %sum201 = extractvalue { i64, i1 } %b.new.buf.len2200, 0
  %ovf202 = extractvalue { i64, i1 } %b.new.buf.len2200, 1
  br i1 %ovf202, label %str_overflow_abort204, label %b.new.buf.len2203

b.nogrow2189:                                     ; preds = %b.app.new.len182
  br label %b.grow_done190

b.grow_done190:                                   ; preds = %b.nogrow2189, %b.new.buf.len2203
  %b.app.data211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 1
  %b.app.data212 = load ptr, ptr %b.app.data211, align 8
  %b.app.dst213 = getelementptr i8, ptr %b.app.data212, i64 %b.app.cur.len178
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst213, ptr align 1 %app.str.data176, i64 %app.str.len175, i1 false)
  %b.app.nul214 = getelementptr i8, ptr %b.app.data212, i64 %sum180
  store i8 0, ptr %b.app.nul214, align 1
  %b.len.gep215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 0
  store i64 %sum180, ptr %b.len.gep215, align 8
  br label %choice.exit41

b.new.buf.len2203:                                ; preds = %abort.dead205, %b.grow2188
  %arena.cur206 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 %sum201)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2207, ptr align 1 %b.cur.data2199, i64 %b.cur.len2197, i1 false)
  %b.grow2.nul208 = getelementptr i8, ptr %b.new.buf2207, i64 %b.cur.len2197
  store i8 0, ptr %b.grow2.nul208, align 1
  %b.new.data2.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 1
  store ptr %b.new.buf2207, ptr %b.new.data2.gep209, align 8
  %b.new.cap2.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 2
  store i64 %b.new.cap195, ptr %b.new.cap2.gep210, align 8
  br label %b.grow_done190

str_overflow_abort204:                            ; preds = %b.grow2188
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead205:                                    ; No predecessors!
  br label %b.new.buf.len2203

choice.case216:                                   ; preds = %choice.next171
  %b.load219 = load ptr, ptr %var.b, align 8
  %app.str.len220 = load i64, ptr @str.22.struct, align 8
  %app.str.len221 = and i64 %app.str.len220, 281474976710655
  %app.str.data222 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %b.app.cur.len223 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load219, i32 0, i32 0
  %b.app.cur.len224 = load i64, ptr %b.app.cur.len223, align 8
  %b.app.new.len225 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len224, i64 %app.str.len221)
  %sum226 = extractvalue { i64, i1 } %b.app.new.len225, 0
  %ovf227 = extractvalue { i64, i1 } %b.app.new.len225, 1
  br i1 %ovf227, label %str_overflow_abort229, label %b.app.new.len228

choice.next217:                                   ; preds = %choice.next171
  %b.load262 = load ptr, ptr %var.b, align 8
  %var.load263 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load263, 0
  %b.b.le255 = icmp sle i64 %var.load263, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.app.new.len228:                                 ; preds = %abort.dead230, %choice.case216
  %b.cap231 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load219, i32 0, i32 2
  %b.cap232 = load i64, ptr %b.cap231, align 8
  %b.need.grow233 = icmp slt i64 %b.cap232, %sum226
  br i1 %b.need.grow233, label %b.grow2234, label %b.nogrow2235

str_overflow_abort229:                            ; preds = %choice.case216
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead230:                                    ; No predecessors!
  br label %b.app.new.len228

b.grow2234:                                       ; preds = %b.app.new.len228
  %b.cap2237 = mul i64 %b.cap232, 2
  %b.cap.small238 = icmp slt i64 %b.cap2237, 16
  %b.cap.grow239 = select i1 %b.cap.small238, i64 16, i64 %b.cap2237
  %b.cap.need240 = icmp slt i64 %b.cap.grow239, %sum226
  %b.new.cap241 = select i1 %b.cap.need240, i64 %sum226, i64 %b.cap.grow239
  %b.cur.len2242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load219, i32 0, i32 0
  %b.cur.len2243 = load i64, ptr %b.cur.len2242, align 8
  %b.cur.data2244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load219, i32 0, i32 1
  %b.cur.data2245 = load ptr, ptr %b.cur.data2244, align 8
  %b.new.buf.len2246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap241, i64 1)
  %sum247 = extractvalue { i64, i1 } %b.new.buf.len2246, 0
  %ovf248 = extractvalue { i64, i1 } %b.new.buf.len2246, 1
  br i1 %ovf248, label %str_overflow_abort250, label %b.new.buf.len2249

b.nogrow2235:                                     ; preds = %b.app.new.len228
  br label %b.grow_done236

b.grow_done236:                                   ; preds = %b.nogrow2235, %b.new.buf.len2249
  %b.app.data257 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load219, i32 0, i32 1
  %b.app.data258 = load ptr, ptr %b.app.data257, align 8
  %b.app.dst259 = getelementptr i8, ptr %b.app.data258, i64 %b.app.cur.len224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst259, ptr align 1 %app.str.data222, i64 %app.str.len221, i1 false)
  %b.app.nul260 = getelementptr i8, ptr %b.app.data258, i64 %sum226
  store i8 0, ptr %b.app.nul260, align 1
  %b.len.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load219, i32 0, i32 0
  store i64 %sum226, ptr %b.len.gep261, align 8
  br label %choice.exit41

b.new.buf.len2249:                                ; preds = %abort.dead251, %b.grow2234
  %arena.cur252 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2253 = call ptr @dva_arena_alloc(ptr %arena.cur252, i64 %sum247)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2253, ptr align 1 %b.cur.data2245, i64 %b.cur.len2243, i1 false)
  %b.grow2.nul254 = getelementptr i8, ptr %b.new.buf2253, i64 %b.cur.len2243
  store i8 0, ptr %b.grow2.nul254, align 1
  %b.new.data2.gep255 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load219, i32 0, i32 1
  store ptr %b.new.buf2253, ptr %b.new.data2.gep255, align 8
  %b.new.cap2.gep256 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load219, i32 0, i32 2
  store i64 %b.new.cap241, ptr %b.new.cap2.gep256, align 8
  br label %b.grow_done236

str_overflow_abort250:                            ; preds = %b.grow2234
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead251:                                    ; No predecessors!
  br label %b.new.buf.len2249

b.byte_ok:                                        ; preds = %abort.dead264, %choice.next217
  %b.byte.i8 = trunc i64 %var.load263 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load262, i32 0, i32 0
  %b.len265 = load i64, ptr %b.len, align 8
  %b.cap266 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load262, i32 0, i32 2
  %b.cap267 = load i64, ptr %b.cap266, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load262, i32 0, i32 1
  %b.data268 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len265, %b.cap267
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next217
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead264:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2269 = mul i64 %b.cap267, 2
  %b.cap.small270 = icmp slt i64 %b.cap2269, 16
  %b.new.cap271 = select i1 %b.cap.small270, i64 16, i64 %b.cap2269
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap271, i64 1)
  %sum272 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf273 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf273, label %str_overflow_abort275, label %b.new.buf.len274

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len274
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load262, i32 0, i32 1
  %b.cur.data278 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load262, i32 0, i32 0
  %b.cur.len279 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data278, i64 %b.cur.len279
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len279, 1
  %b.nul = getelementptr i8, ptr %b.cur.data278, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load262, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep280, align 8
  br label %choice.exit41

b.new.buf.len274:                                 ; preds = %abort.dead276, %b.grow
  %arena.cur277 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 %sum272)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data268, i64 %b.len265, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len265
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load262, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load262, i32 0, i32 2
  store i64 %b.new.cap271, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort275:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead276:                                    ; No predecessors!
  br label %b.new.buf.len274

b.rn.new.len287:                                  ; preds = %abort.dead289, %loop.exit.90
  %b.cap290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 2
  %b.cap291 = load i64, ptr %b.cap290, align 8
  %b.need.grow292 = icmp slt i64 %b.cap291, %sum285
  br i1 %b.need.grow292, label %b.grow2293, label %b.nogrow2294

str_overflow_abort288:                            ; preds = %loop.exit.90
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead289:                                    ; No predecessors!
  br label %b.rn.new.len287

b.grow2293:                                       ; preds = %b.rn.new.len287
  %b.cap2296 = mul i64 %b.cap291, 2
  %b.cap.small297 = icmp slt i64 %b.cap2296, 16
  %b.cap.grow298 = select i1 %b.cap.small297, i64 16, i64 %b.cap2296
  %b.cap.need299 = icmp slt i64 %b.cap.grow298, %sum285
  %b.new.cap300 = select i1 %b.cap.need299, i64 %sum285, i64 %b.cap.grow298
  %b.cur.len2301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 0
  %b.cur.len2302 = load i64, ptr %b.cur.len2301, align 8
  %b.cur.data2303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 1
  %b.cur.data2304 = load ptr, ptr %b.cur.data2303, align 8
  %b.new.buf.len2305 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap300, i64 1)
  %sum306 = extractvalue { i64, i1 } %b.new.buf.len2305, 0
  %ovf307 = extractvalue { i64, i1 } %b.new.buf.len2305, 1
  br i1 %ovf307, label %str_overflow_abort309, label %b.new.buf.len2308

b.nogrow2294:                                     ; preds = %b.rn.new.len287
  br label %b.grow_done295

b.grow_done295:                                   ; preds = %b.nogrow2294, %b.new.buf.len2308
  %b.rn.data316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 1
  %b.rn.data317 = load ptr, ptr %b.rn.data316, align 8
  %b.rn.dst318 = getelementptr i8, ptr %b.rn.data317, i64 %b.rn.cur.len283
  br i1 true, label %br.b1.91, label %br.c2.91

b.new.buf.len2308:                                ; preds = %abort.dead310, %b.grow2293
  %arena.cur311 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 %sum306)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2312, ptr align 1 %b.cur.data2304, i64 %b.cur.len2302, i1 false)
  %b.grow2.nul313 = getelementptr i8, ptr %b.new.buf2312, i64 %b.cur.len2302
  store i8 0, ptr %b.grow2.nul313, align 1
  %b.new.data2.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 1
  store ptr %b.new.buf2312, ptr %b.new.data2.gep314, align 8
  %b.new.cap2.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 2
  store i64 %b.new.cap300, ptr %b.new.cap2.gep315, align 8
  br label %b.grow_done295

str_overflow_abort309:                            ; preds = %b.grow2293
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead310:                                    ; No predecessors!
  br label %b.new.buf.len2308

br.b1.91:                                         ; preds = %b.grow_done295
  store i8 34, ptr %b.rn.dst318, align 1
  br label %br.done.91

br.c2.91:                                         ; preds = %b.grow_done295
  br i1 true, label %br.b2.91, label %br.c3.91

br.b2.91:                                         ; preds = %br.c2.91
  store i8 -64, ptr %b.rn.dst318, align 1
  %br.dst1319 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -94, ptr %br.dst1319, align 1
  br label %br.done.91

br.c3.91:                                         ; preds = %br.c2.91
  br i1 true, label %br.b3.91, label %br.b4.91

br.b3.91:                                         ; preds = %br.c3.91
  store i8 -32, ptr %b.rn.dst318, align 1
  %br.dst1.3320 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -128, ptr %br.dst1.3320, align 1
  %br.dst2.3321 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -94, ptr %br.dst2.3321, align 1
  br label %br.done.91

br.b4.91:                                         ; preds = %br.c3.91
  store i8 -16, ptr %b.rn.dst318, align 1
  %br.dst1.4322 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -128, ptr %br.dst1.4322, align 1
  %br.dst2.4323 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -128, ptr %br.dst2.4323, align 1
  %br.dst3.4324 = getelementptr i8, ptr %b.rn.dst318, i64 3
  store i8 -94, ptr %br.dst3.4324, align 1
  br label %br.done.91

br.done.91:                                       ; preds = %br.b4.91, %br.b3.91, %br.b2.91, %br.b1.91
  %br.nul325 = getelementptr i8, ptr %b.rn.data317, i64 %sum285
  store i8 0, ptr %br.nul325, align 1
  %b.len.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 0
  store i64 %sum285, ptr %b.len.gep326, align 8
  %var.load327 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load327, i32 0, i32 0
  %b.freeze.len328 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load327, i32 0, i32 1
  %b.freeze.data329 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.91
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data329, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data329, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data329, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len328, 1
  %arena.cur330 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data329, i64 %b.freeze.len328, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len328
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.91
  %b.freeze.data331 = phi ptr [ %b.freeze.data329, %br.done.91 ], [ %b.freeze.data329, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur332 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len328, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data331, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load327, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load327, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load327, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack333 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack333
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #7 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #7 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

define internal { i64, ptr } @"log::#append_fields"(ptr %0, ptr %1) #0 {
entry:
  %var.f = alloca ptr, align 8
  %var._118 = alloca i64, align 8
  %var._i117 = alloca i64, align 8
  %loop.step.94 = alloca i64, align 8
  %loop.idx.94 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.92 = alloca i64, align 8
  %loop.idx.92 = alloca i64, align 8
  %"var.total'" = alloca i64, align 8
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %var.load = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
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
  store ptr %a.create1, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp eq i64 %a.len.query3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after
  %var.load4 = load ptr, ptr %var.msg, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load4, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %a.after
  %var.load5 = load ptr, ptr %var.msg, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag = lshr i64 %str.len.query6, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %choice.exit
  store i64 %str.len.query7, ptr %"var.total'", align 8
  %var.load8 = load ptr, ptr %var.fields, align 8
  %a.load9 = load ptr, ptr %var.fields, align 8
  %a.null10 = icmp eq ptr %a.load9, null
  br i1 %a.null10, label %a.create11, label %a.after12

tag.slow_check:                                   ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

a.create11:                                       ; preds = %str_ok
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 24)
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 128)
  %a.len.gep17 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 0
  store i64 0, ptr %a.len.gep17, align 8
  %a.data.gep18 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 1
  store ptr %a.buf16, ptr %a.data.gep18, align 8
  %a.cap.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create14, i32 0, i32 2
  store i64 16, ptr %a.cap.gep19, align 8
  store ptr %a.create14, ptr %var.fields, align 8
  br label %a.after12

a.after12:                                        ; preds = %a.create11, %str_ok
  %a.load220 = load ptr, ptr %var.fields, align 8
  %a.len.query21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load220, i32 0, i32 0
  %a.len.query22 = load i64, ptr %a.len.query21, align 8
  store i64 0, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %a.after12
  %counter.load = load i64, ptr %loop.idx.92, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query22
  br i1 %loop.cond, label %loop.body.92, label %loop.exit.nat.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.92, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load23 = load i64, ptr %"var.total'", align 8
  %addtmp = add i64 %var.load23, 1
  %var.load24 = load ptr, ptr %var.fields, align 8
  %a.load25 = load ptr, ptr %var.fields, align 8
  %a.null26 = icmp eq ptr %a.load25, null
  br i1 %a.null26, label %a.create27, label %a.after28

loop.exit.nat.92:                                 ; preds = %loop.header.92
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %unwrap.pos.93
  %step.val = load i64, ptr %loop.step.92, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %loop.exit.nat.92
  %var.load67 = load i64, ptr %"var.total'", align 8
  %addtmp68 = add i64 %var.load67, 8
  %cap.neg = icmp slt i64 %addtmp68, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp68
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len69

a.create27:                                       ; preds = %loop.body.92
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  store ptr %a.create30, ptr %var.fields, align 8
  br label %a.after28

a.after28:                                        ; preds = %a.create27, %loop.body.92
  %a.load236 = load ptr, ptr %var.fields, align 8
  %var.load37 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load236, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after28
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load236, i32 0, i32 0
  %a.rd.len38 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load37, 0
  %a.rd.lt = icmp slt i64 %var.load37, %a.rd.len38
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load236, i32 0, i32 1
  %a.rd.data39 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data39, i64 %var.load37
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after28
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 131, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 43, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 56)
  %err.code.gep43 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 0
  store i64 4011, ptr %err.code.gep43, align 8
  %err.msg.gep44 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 1
  store ptr @str.25.struct, ptr %err.msg.gep44, align 8
  %err.file.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep45, align 8
  %err.line.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 3
  store i64 131, ptr %err.line.gep46, align 8
  %err.col.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 4
  store i64 43, ptr %err.col.gep47, align 8
  %err.ctx.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc42, i32 0, i32 5
  %err.ctx0.gep49 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep48, i32 0, i32 0
  store i64 %var.load37, ptr %err.ctx0.gep49, align 8
  %err.ctx1.gep50 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep48, i32 0, i32 1
  store i64 %a.rd.len38, ptr %err.ctx1.gep50, align 8
  %err.p2i51 = ptrtoint ptr %err.alloc42 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i51, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.93, label %unwrap.abort.93

unwrap.pos.93:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  %str.len.query63 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 0
  %str.len.query64 = load i64, ptr %str.len.query63, align 8
  %str.len.query65 = and i64 %str.len.query64, 281474976710655
  %addtmp66 = add i64 %addtmp, %str.len.query65
  store i64 %addtmp66, ptr %"var.total'", align 8
  br label %loop.latch.92

unwrap.abort.93:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep52 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep52, align 8
  %err.msg.gep53 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep53, align 8
  %err.file.gep54 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep54, align 8
  %err.line.gep55 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep55, align 8
  %err.col.gep56 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep56, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len57 = load i64, ptr %err.msg.len, align 8
  %err.msg.len58 = and i64 %err.msg.len57, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len58 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data59 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len60 = load i64, ptr %err.file.len, align 8
  %err.file.len61 = and i64 %err.file.len60, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len61 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data62 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.93
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.93
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data59, i32 %err.file.len32, ptr %err.file.data62, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

b.buf.len69:                                      ; preds = %abort.dead, %loop.exit.92
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load71 = load ptr, ptr %var.msg, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %app.str.len72 = load i64, ptr %app.str.len, align 8
  %app.str.len73 = and i64 %app.str.len72, 281474976710655
  %str.tag74 = lshr i64 %app.str.len72, 48
  %tag.immortal76 = icmp eq i64 %str.tag74, 0
  %active.gen77 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current78 = icmp eq i64 %str.tag74, %active.gen77
  %tag.fast.ok79 = or i1 %tag.immortal76, %tag.current78
  br i1 %tag.fast.ok79, label %str_ok75, label %tag.slow_check80

str_overflow_abort:                               ; preds = %loop.exit.92
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len69

str_ok75:                                         ; preds = %tag.slow_check80, %b.buf.len69
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 1
  %app.str.data81 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len82 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len82, i64 %app.str.len73)
  %sum83 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf84 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf84, label %str_overflow_abort86, label %b.app.new.len85

tag.slow_check80:                                 ; preds = %b.buf.len69
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag74)
  br label %str_ok75

b.app.new.len85:                                  ; preds = %abort.dead87, %str_ok75
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap88 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap88, %sum83
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort86:                             ; preds = %str_ok75
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead87:                                     ; No predecessors!
  br label %b.app.new.len85

b.grow2:                                          ; preds = %b.app.new.len85
  %b.cap2 = mul i64 %b.cap88, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum83
  %b.new.cap = select i1 %b.cap.need, i64 %sum83, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len289 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data290 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum91 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf92 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf92, label %str_overflow_abort94, label %b.new.buf.len293

b.nogrow2:                                        ; preds = %b.app.new.len85
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len293
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data97 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data97, i64 %b.app.cur.len82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data81, i64 %app.str.len73, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data97, i64 %sum83
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum83, ptr %b.len.gep98, align 8
  %var.load99 = load ptr, ptr %var.fields, align 8
  %a.load100 = load ptr, ptr %var.fields, align 8
  %a.null101 = icmp eq ptr %a.load100, null
  br i1 %a.null101, label %a.create102, label %a.after103

b.new.buf.len293:                                 ; preds = %abort.dead95, %b.grow2
  %arena.cur96 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur96, i64 %sum91)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data290, i64 %b.cur.len289, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len289
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort94:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %b.new.buf.len293

a.create102:                                      ; preds = %b.grow_done
  %arena.cur104 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 24)
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf107 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 128)
  %a.len.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create105, i32 0, i32 0
  store i64 0, ptr %a.len.gep108, align 8
  %a.data.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create105, i32 0, i32 1
  store ptr %a.buf107, ptr %a.data.gep109, align 8
  %a.cap.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create105, i32 0, i32 2
  store i64 16, ptr %a.cap.gep110, align 8
  store ptr %a.create105, ptr %var.fields, align 8
  br label %a.after103

a.after103:                                       ; preds = %a.create102, %b.grow_done
  %a.load2111 = load ptr, ptr %var.fields, align 8
  %a.len.query112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2111, i32 0, i32 0
  %a.len.query113 = load i64, ptr %a.len.query112, align 8
  store i64 0, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.header.94:                                   ; preds = %loop.latch.94, %a.after103
  %counter.load114 = load i64, ptr %loop.idx.94, align 8
  %loop.cond115 = icmp slt i64 %counter.load114, %a.len.query113
  br i1 %loop.cond115, label %loop.body.94, label %loop.exit.nat.94

loop.body.94:                                     ; preds = %loop.header.94
  %loop.rel.i116 = sub i64 %counter.load114, 0
  store i64 1, ptr %loop.step.94, align 8
  store i64 %loop.rel.i116, ptr %var._i117, align 8
  store i64 %counter.load114, ptr %var._118, align 8
  store i64 %counter.load114, ptr %var.i, align 8
  %var.load119 = load ptr, ptr %var.fields, align 8
  %a.load120 = load ptr, ptr %var.fields, align 8
  %a.null121 = icmp eq ptr %a.load120, null
  br i1 %a.null121, label %a.create122, label %a.after123

loop.exit.nat.94:                                 ; preds = %loop.header.94
  br label %loop.exit.94

loop.latch.94:                                    ; preds = %choice.exit214
  %step.val296 = load i64, ptr %loop.step.94, align 8
  %loop.next297 = add i64 %counter.load114, %step.val296
  store i64 %loop.next297, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.exit.94:                                     ; preds = %loop.exit.nat.94
  %var.load298 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load298, i32 0, i32 0
  %b.freeze.len299 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load298, i32 0, i32 1
  %b.freeze.data300 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

a.create122:                                      ; preds = %loop.body.94
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
  store ptr %a.create125, ptr %var.fields, align 8
  br label %a.after123

a.after123:                                       ; preds = %a.create122, %loop.body.94
  %a.load2131 = load ptr, ptr %var.fields, align 8
  %var.load132 = load i64, ptr %var.i, align 8
  %a.rd.nonnull133 = icmp ne ptr %a.load2131, null
  br i1 %a.rd.nonnull133, label %a.rd.check134, label %a.rd.err.null136

a.rd.check134:                                    ; preds = %a.after123
  %a.rd.len139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2131, i32 0, i32 0
  %a.rd.len140 = load i64, ptr %a.rd.len139, align 8
  %a.rd.ge0141 = icmp sge i64 %var.load132, 0
  %a.rd.lt142 = icmp slt i64 %var.load132, %a.rd.len140
  %a.rd.bounds143 = and i1 %a.rd.ge0141, %a.rd.lt142
  br i1 %a.rd.bounds143, label %a.rd.ok135, label %a.rd.err.oob137

a.rd.ok135:                                       ; preds = %a.rd.check134
  %a.rd.data144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2131, i32 0, i32 1
  %a.rd.data145 = load ptr, ptr %a.rd.data144, align 8
  %a.rd.elem.gep146 = getelementptr i64, ptr %a.rd.data145, i64 %var.load132
  %a.rd.elem147 = load i64, ptr %a.rd.elem.gep146, align 8
  br label %a.rd.done138

a.rd.err.null136:                                 ; preds = %a.after123
  %arena.cur148 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 56)
  %err.code.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 0
  store i64 4011, ptr %err.code.gep150, align 8
  %err.msg.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep151, align 8
  %err.file.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep152, align 8
  %err.line.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 3
  store i64 135, ptr %err.line.gep153, align 8
  %err.col.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 4
  store i64 23, ptr %err.col.gep154, align 8
  %err.ctx.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 5
  %err.ctx0.gep156 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep155, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep156, align 8
  %err.ctx1.gep157 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep155, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep157, align 8
  %err.p2i158 = ptrtoint ptr %err.alloc149 to i64
  br label %a.rd.done138

a.rd.err.oob137:                                  ; preds = %a.rd.check134
  %arena.cur159 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 56)
  %err.code.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc160, i32 0, i32 0
  store i64 4011, ptr %err.code.gep161, align 8
  %err.msg.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc160, i32 0, i32 1
  store ptr @str.25.struct, ptr %err.msg.gep162, align 8
  %err.file.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc160, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep163, align 8
  %err.line.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc160, i32 0, i32 3
  store i64 135, ptr %err.line.gep164, align 8
  %err.col.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc160, i32 0, i32 4
  store i64 23, ptr %err.col.gep165, align 8
  %err.ctx.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc160, i32 0, i32 5
  %err.ctx0.gep167 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep166, i32 0, i32 0
  store i64 %var.load132, ptr %err.ctx0.gep167, align 8
  %err.ctx1.gep168 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep166, i32 0, i32 1
  store i64 %a.rd.len140, ptr %err.ctx1.gep168, align 8
  %err.p2i169 = ptrtoint ptr %err.alloc160 to i64
  br label %a.rd.done138

a.rd.done138:                                     ; preds = %a.rd.err.oob137, %a.rd.err.null136, %a.rd.ok135
  %a.rd.tag170 = phi i1 [ true, %a.rd.ok135 ], [ false, %a.rd.err.null136 ], [ false, %a.rd.err.oob137 ]
  %a.rd.pay171 = phi i64 [ %a.rd.elem147, %a.rd.ok135 ], [ %err.p2i158, %a.rd.err.null136 ], [ %err.p2i169, %a.rd.err.oob137 ]
  %ram.tag172 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag170, 0
  %ram.pay173 = insertvalue { i1, i64 } %ram.tag172, i64 %a.rd.pay171, 1
  %unwrap.is_pos174 = extractvalue { i1, i64 } %ram.pay173, 0
  br i1 %unwrap.is_pos174, label %unwrap.pos.95, label %unwrap.abort.95

unwrap.pos.95:                                    ; preds = %a.rd.done138
  %unwrap.pay.pos206 = extractvalue { i1, i64 } %ram.pay173, 1
  %pay.ptr207 = inttoptr i64 %unwrap.pay.pos206 to ptr
  store ptr %pay.ptr207, ptr %var.f, align 8
  %var.load208 = load ptr, ptr %var.f, align 8
  %str.len.query209 = getelementptr inbounds { i64, ptr }, ptr %var.load208, i32 0, i32 0
  %str.len.query210 = load i64, ptr %str.len.query209, align 8
  %str.len.query211 = and i64 %str.len.query210, 281474976710655
  %cmptmp212 = icmp sgt i64 %str.len.query211, 0
  br i1 %cmptmp212, label %choice.then213, label %choice.exit214

unwrap.abort.95:                                  ; preds = %a.rd.done138
  %unwrap.pay.abort175 = extractvalue { i1, i64 } %ram.pay173, 1
  %err.ptr176 = inttoptr i64 %unwrap.pay.abort175 to ptr
  %err.code.gep177 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr176, i32 0, i32 0
  %err.code178 = load i64, ptr %err.code.gep177, align 8
  %err.msg.gep179 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr176, i32 0, i32 1
  %err.msg.struct180 = load ptr, ptr %err.msg.gep179, align 8
  %err.file.gep181 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr176, i32 0, i32 2
  %err.file.struct182 = load ptr, ptr %err.file.gep181, align 8
  %err.line.gep183 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr176, i32 0, i32 3
  %err.line184 = load i64, ptr %err.line.gep183, align 8
  %err.col.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr176, i32 0, i32 4
  %err.col186 = load i64, ptr %err.col.gep185, align 8
  %err.msg.len187 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct180, i32 0, i32 0
  %err.msg.len188 = load i64, ptr %err.msg.len187, align 8
  %err.msg.len189 = and i64 %err.msg.len188, 281474976710655
  %err.msg.len32190 = trunc i64 %err.msg.len189 to i32
  %err.msg.data191 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct180, i32 0, i32 1
  %err.msg.data192 = load ptr, ptr %err.msg.data191, align 8
  %err.file.len193 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct182, i32 0, i32 0
  %err.file.len194 = load i64, ptr %err.file.len193, align 8
  %err.file.len195 = and i64 %err.file.len194, 281474976710655
  %err.file.len32196 = trunc i64 %err.file.len195 to i32
  %err.file.data197 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct182, i32 0, i32 1
  %err.file.data198 = load ptr, ptr %err.file.data197, align 8
  %err.thread.rec199 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread200 = icmp ne ptr %err.thread.rec199, null
  br i1 %err.is.thread200, label %err.thread201, label %err.normal202

err.thread201:                                    ; preds = %unwrap.abort.95
  %err.haserr.gep203 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec199, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep203, align 8
  %err.err.gep204 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec199, i32 0, i32 7
  store ptr %err.ptr176, ptr %err.err.gep204, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal202:                                    ; preds = %unwrap.abort.95
  %err.panic.printf205 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code178, i32 %err.msg.len32190, ptr %err.msg.data192, i32 %err.file.len32196, ptr %err.file.data198, i64 %err.line184, i64 %err.col186)
  call void @exit(i32 1)
  unreachable

choice.then213:                                   ; preds = %unwrap.pos.95
  %b.load215 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load215, i32 0, i32 0
  %b.rn.cur.len216 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len216, i64 1)
  %sum217 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf218 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf218, label %str_overflow_abort220, label %b.rn.new.len219

choice.exit214:                                   ; preds = %b.grow_done270, %unwrap.pos.95
  br label %loop.latch.94

b.rn.new.len219:                                  ; preds = %abort.dead221, %choice.then213
  %b.cap222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load215, i32 0, i32 2
  %b.cap223 = load i64, ptr %b.cap222, align 8
  %b.need.grow224 = icmp slt i64 %b.cap223, %sum217
  br i1 %b.need.grow224, label %b.grow2225, label %b.nogrow2226

str_overflow_abort220:                            ; preds = %choice.then213
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead221:                                    ; No predecessors!
  br label %b.rn.new.len219

b.grow2225:                                       ; preds = %b.rn.new.len219
  %b.cap2228 = mul i64 %b.cap223, 2
  %b.cap.small229 = icmp slt i64 %b.cap2228, 16
  %b.cap.grow230 = select i1 %b.cap.small229, i64 16, i64 %b.cap2228
  %b.cap.need231 = icmp slt i64 %b.cap.grow230, %sum217
  %b.new.cap232 = select i1 %b.cap.need231, i64 %sum217, i64 %b.cap.grow230
  %b.cur.len2233 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load215, i32 0, i32 0
  %b.cur.len2234 = load i64, ptr %b.cur.len2233, align 8
  %b.cur.data2235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load215, i32 0, i32 1
  %b.cur.data2236 = load ptr, ptr %b.cur.data2235, align 8
  %b.new.buf.len2237 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap232, i64 1)
  %sum238 = extractvalue { i64, i1 } %b.new.buf.len2237, 0
  %ovf239 = extractvalue { i64, i1 } %b.new.buf.len2237, 1
  br i1 %ovf239, label %str_overflow_abort241, label %b.new.buf.len2240

b.nogrow2226:                                     ; preds = %b.rn.new.len219
  br label %b.grow_done227

b.grow_done227:                                   ; preds = %b.nogrow2226, %b.new.buf.len2240
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load215, i32 0, i32 1
  %b.rn.data248 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data248, i64 %b.rn.cur.len216
  br i1 true, label %br.b1.96, label %br.c2.96

b.new.buf.len2240:                                ; preds = %abort.dead242, %b.grow2225
  %arena.cur243 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2244 = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 %sum238)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2244, ptr align 1 %b.cur.data2236, i64 %b.cur.len2234, i1 false)
  %b.grow2.nul245 = getelementptr i8, ptr %b.new.buf2244, i64 %b.cur.len2234
  store i8 0, ptr %b.grow2.nul245, align 1
  %b.new.data2.gep246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load215, i32 0, i32 1
  store ptr %b.new.buf2244, ptr %b.new.data2.gep246, align 8
  %b.new.cap2.gep247 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load215, i32 0, i32 2
  store i64 %b.new.cap232, ptr %b.new.cap2.gep247, align 8
  br label %b.grow_done227

str_overflow_abort241:                            ; preds = %b.grow2225
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead242:                                    ; No predecessors!
  br label %b.new.buf.len2240

br.b1.96:                                         ; preds = %b.grow_done227
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.96

br.c2.96:                                         ; preds = %b.grow_done227
  br i1 true, label %br.b2.96, label %br.c3.96

br.b2.96:                                         ; preds = %br.c2.96
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.96

br.c3.96:                                         ; preds = %br.c2.96
  br i1 true, label %br.b3.96, label %br.b4.96

br.b3.96:                                         ; preds = %br.c3.96
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.96

br.b4.96:                                         ; preds = %br.c3.96
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.96

br.done.96:                                       ; preds = %br.b4.96, %br.b3.96, %br.b2.96, %br.b1.96
  %br.nul = getelementptr i8, ptr %b.rn.data248, i64 %sum217
  store i8 0, ptr %br.nul, align 1
  %b.len.gep249 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load215, i32 0, i32 0
  store i64 %sum217, ptr %b.len.gep249, align 8
  %b.load250 = load ptr, ptr %var.b, align 8
  %var.load251 = load ptr, ptr %var.f, align 8
  %app.str.len252 = getelementptr inbounds { i64, ptr }, ptr %var.load251, i32 0, i32 0
  %app.str.len253 = load i64, ptr %app.str.len252, align 8
  %app.str.len254 = and i64 %app.str.len253, 281474976710655
  %app.str.data255 = getelementptr inbounds { i64, ptr }, ptr %var.load251, i32 0, i32 1
  %app.str.data256 = load ptr, ptr %app.str.data255, align 8
  %b.app.cur.len257 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 0
  %b.app.cur.len258 = load i64, ptr %b.app.cur.len257, align 8
  %b.app.new.len259 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len258, i64 %app.str.len254)
  %sum260 = extractvalue { i64, i1 } %b.app.new.len259, 0
  %ovf261 = extractvalue { i64, i1 } %b.app.new.len259, 1
  br i1 %ovf261, label %str_overflow_abort263, label %b.app.new.len262

b.app.new.len262:                                 ; preds = %abort.dead264, %br.done.96
  %b.cap265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 2
  %b.cap266 = load i64, ptr %b.cap265, align 8
  %b.need.grow267 = icmp slt i64 %b.cap266, %sum260
  br i1 %b.need.grow267, label %b.grow2268, label %b.nogrow2269

str_overflow_abort263:                            ; preds = %br.done.96
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead264:                                    ; No predecessors!
  br label %b.app.new.len262

b.grow2268:                                       ; preds = %b.app.new.len262
  %b.cap2271 = mul i64 %b.cap266, 2
  %b.cap.small272 = icmp slt i64 %b.cap2271, 16
  %b.cap.grow273 = select i1 %b.cap.small272, i64 16, i64 %b.cap2271
  %b.cap.need274 = icmp slt i64 %b.cap.grow273, %sum260
  %b.new.cap275 = select i1 %b.cap.need274, i64 %sum260, i64 %b.cap.grow273
  %b.cur.len2276 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 0
  %b.cur.len2277 = load i64, ptr %b.cur.len2276, align 8
  %b.cur.data2278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 1
  %b.cur.data2279 = load ptr, ptr %b.cur.data2278, align 8
  %b.new.buf.len2280 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap275, i64 1)
  %sum281 = extractvalue { i64, i1 } %b.new.buf.len2280, 0
  %ovf282 = extractvalue { i64, i1 } %b.new.buf.len2280, 1
  br i1 %ovf282, label %str_overflow_abort284, label %b.new.buf.len2283

b.nogrow2269:                                     ; preds = %b.app.new.len262
  br label %b.grow_done270

b.grow_done270:                                   ; preds = %b.nogrow2269, %b.new.buf.len2283
  %b.app.data291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 1
  %b.app.data292 = load ptr, ptr %b.app.data291, align 8
  %b.app.dst293 = getelementptr i8, ptr %b.app.data292, i64 %b.app.cur.len258
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst293, ptr align 1 %app.str.data256, i64 %app.str.len254, i1 false)
  %b.app.nul294 = getelementptr i8, ptr %b.app.data292, i64 %sum260
  store i8 0, ptr %b.app.nul294, align 1
  %b.len.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 0
  store i64 %sum260, ptr %b.len.gep295, align 8
  br label %choice.exit214

b.new.buf.len2283:                                ; preds = %abort.dead285, %b.grow2268
  %arena.cur286 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2287 = call ptr @dva_arena_alloc(ptr %arena.cur286, i64 %sum281)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2287, ptr align 1 %b.cur.data2279, i64 %b.cur.len2277, i1 false)
  %b.grow2.nul288 = getelementptr i8, ptr %b.new.buf2287, i64 %b.cur.len2277
  store i8 0, ptr %b.grow2.nul288, align 1
  %b.new.data2.gep289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 1
  store ptr %b.new.buf2287, ptr %b.new.data2.gep289, align 8
  %b.new.cap2.gep290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load250, i32 0, i32 2
  store i64 %b.new.cap275, ptr %b.new.cap2.gep290, align 8
  br label %b.grow_done270

str_overflow_abort284:                            ; preds = %b.grow2268
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead285:                                    ; No predecessors!
  br label %b.new.buf.len2283

b.freeze.check:                                   ; preds = %loop.exit.94
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data300, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data300, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data300, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len299, 1
  %arena.cur301 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur301, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data300, i64 %b.freeze.len299, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len299
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.94
  %b.freeze.data302 = phi ptr [ %b.freeze.data300, %loop.exit.94 ], [ %b.freeze.data300, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur303 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur303, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len299, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data302, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load298, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load298, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load298, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack304 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack304
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define i64 @"log::level_rank"(ptr %0) #0 {
entry:
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call ptr @"log::#level_meta"(ptr %var.load)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define { i64, ptr } @"log::level_name"(ptr %0) #0 {
entry:
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call ptr @"log::#level_meta"(ptr %var.load)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %fld.load, align 8
  ret { i64, ptr } %ret.pack
}

define { i1, i64 } @"log::parse_level"(ptr %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call { i64, ptr } @"str::trim"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %call.res1 = call { i64, ptr } @"str::lower"(ptr %ret.ub.alloc)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 16)
  store { i64, ptr } %call.res1, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len4 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.next145, %choice.case144, %choice.case91, %choice.case39, %choice.case9, %choice.case
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.case ], [ %ram.pay38, %choice.case9 ], [ %ram.pay90, %choice.case39 ], [ %ram.pay143, %choice.case91 ], [ %ram.pay219, %choice.case144 ], [ zeroinitializer, %choice.next145 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %str.eq.merge
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len11 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len12 = load i64, ptr %eq.lhs.len11, align 8
  %eq.lhs.len13 = and i64 %eq.lhs.len12, 281474976710655
  %str.tag14 = lshr i64 %eq.lhs.len12, 48
  %tag.immortal16 = icmp eq i64 %str.tag14, 0
  %active.gen17 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current18 = icmp eq i64 %str.tag14, %active.gen17
  %tag.fast.ok19 = or i1 %tag.immortal16, %tag.current18
  br i1 %tag.fast.ok19, label %str_ok15, label %tag.slow_check20

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.26.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.case9:                                     ; preds = %str.eq.merge26
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %tag.gep35 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc34, i32 0, i32 0
  store i64 1, ptr %tag.gep35, align 8
  %pay.gep36 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc34, i32 0, i32 1
  store ptr null, ptr %pay.gep36, align 8
  %p.to.i6437 = ptrtoint ptr %enum.alloc34 to i64
  %ram.pay38 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6437, 1
  br label %choice.exit

choice.next10:                                    ; preds = %str.eq.merge26
  %eq.lhs.len41 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len42 = load i64, ptr %eq.lhs.len41, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %str.tag44 = lshr i64 %eq.lhs.len42, 48
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  %active.gen47 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current48 = icmp eq i64 %str.tag44, %active.gen47
  %tag.fast.ok49 = or i1 %tag.immortal46, %tag.current48
  br i1 %tag.fast.ok49, label %str_ok45, label %tag.slow_check50

str_ok15:                                         ; preds = %tag.slow_check20, %choice.next
  %eq.rhs.len21 = load i64, ptr @str.27.struct, align 8
  %eq.rhs.len22 = and i64 %eq.rhs.len21, 281474976710655
  %eq.len23 = icmp eq i64 %eq.lhs.len13, %eq.rhs.len22
  br i1 %eq.len23, label %str.eq.then24, label %str.eq.else25

tag.slow_check20:                                 ; preds = %choice.next
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag14)
  br label %str_ok15

str.eq.then24:                                    ; preds = %str_ok15
  %eq.lhs.data27 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data28 = load ptr, ptr %eq.lhs.data27, align 8
  %eq.rhs.data29 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %eq.memcmp30 = call i32 @memcmp(ptr %eq.lhs.data28, ptr %eq.rhs.data29, i64 %eq.lhs.len13)
  %eq.cmp.zero31 = icmp eq i32 %eq.memcmp30, 0
  br label %str.eq.merge26

str.eq.else25:                                    ; preds = %str_ok15
  br label %str.eq.merge26

str.eq.merge26:                                   ; preds = %str.eq.else25, %str.eq.then24
  %str.eq.result32 = phi i1 [ %eq.cmp.zero31, %str.eq.then24 ], [ false, %str.eq.else25 ]
  br i1 %str.eq.result32, label %choice.case9, label %choice.next10

choice.case39:                                    ; preds = %str.eq.merge78
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 16)
  %tag.gep87 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc86, i32 0, i32 0
  store i64 2, ptr %tag.gep87, align 8
  %pay.gep88 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc86, i32 0, i32 1
  store ptr null, ptr %pay.gep88, align 8
  %p.to.i6489 = ptrtoint ptr %enum.alloc86 to i64
  %ram.pay90 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6489, 1
  br label %choice.exit

choice.next40:                                    ; preds = %str.eq.merge78
  %eq.lhs.len93 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len94 = load i64, ptr %eq.lhs.len93, align 8
  %eq.lhs.len95 = and i64 %eq.lhs.len94, 281474976710655
  %str.tag96 = lshr i64 %eq.lhs.len94, 48
  %tag.immortal98 = icmp eq i64 %str.tag96, 0
  %active.gen99 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current100 = icmp eq i64 %str.tag96, %active.gen99
  %tag.fast.ok101 = or i1 %tag.immortal98, %tag.current100
  br i1 %tag.fast.ok101, label %str_ok97, label %tag.slow_check102

str_ok45:                                         ; preds = %tag.slow_check50, %choice.next10
  %eq.rhs.len51 = load i64, ptr @str.28.struct, align 8
  %eq.rhs.len52 = and i64 %eq.rhs.len51, 281474976710655
  %eq.len53 = icmp eq i64 %eq.lhs.len43, %eq.rhs.len52
  br i1 %eq.len53, label %str.eq.then54, label %str.eq.else55

tag.slow_check50:                                 ; preds = %choice.next10
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag44)
  br label %str_ok45

str.eq.then54:                                    ; preds = %str_ok45
  %eq.lhs.data57 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data58 = load ptr, ptr %eq.lhs.data57, align 8
  %eq.rhs.data59 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %eq.memcmp60 = call i32 @memcmp(ptr %eq.lhs.data58, ptr %eq.rhs.data59, i64 %eq.lhs.len43)
  %eq.cmp.zero61 = icmp eq i32 %eq.memcmp60, 0
  br label %str.eq.merge56

str.eq.else55:                                    ; preds = %str_ok45
  br label %str.eq.merge56

str.eq.merge56:                                   ; preds = %str.eq.else55, %str.eq.then54
  %str.eq.result62 = phi i1 [ %eq.cmp.zero61, %str.eq.then54 ], [ false, %str.eq.else55 ]
  %eq.lhs.len63 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len64 = load i64, ptr %eq.lhs.len63, align 8
  %eq.lhs.len65 = and i64 %eq.lhs.len64, 281474976710655
  %str.tag66 = lshr i64 %eq.lhs.len64, 48
  %tag.immortal68 = icmp eq i64 %str.tag66, 0
  %active.gen69 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current70 = icmp eq i64 %str.tag66, %active.gen69
  %tag.fast.ok71 = or i1 %tag.immortal68, %tag.current70
  br i1 %tag.fast.ok71, label %str_ok67, label %tag.slow_check72

str_ok67:                                         ; preds = %tag.slow_check72, %str.eq.merge56
  %eq.rhs.len73 = load i64, ptr @str.29.struct, align 8
  %eq.rhs.len74 = and i64 %eq.rhs.len73, 281474976710655
  %eq.len75 = icmp eq i64 %eq.lhs.len65, %eq.rhs.len74
  br i1 %eq.len75, label %str.eq.then76, label %str.eq.else77

tag.slow_check72:                                 ; preds = %str.eq.merge56
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag66)
  br label %str_ok67

str.eq.then76:                                    ; preds = %str_ok67
  %eq.lhs.data79 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data80 = load ptr, ptr %eq.lhs.data79, align 8
  %eq.rhs.data81 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %eq.memcmp82 = call i32 @memcmp(ptr %eq.lhs.data80, ptr %eq.rhs.data81, i64 %eq.lhs.len65)
  %eq.cmp.zero83 = icmp eq i32 %eq.memcmp82, 0
  br label %str.eq.merge78

str.eq.else77:                                    ; preds = %str_ok67
  br label %str.eq.merge78

str.eq.merge78:                                   ; preds = %str.eq.else77, %str.eq.then76
  %str.eq.result84 = phi i1 [ %eq.cmp.zero83, %str.eq.then76 ], [ false, %str.eq.else77 ]
  %case.or = or i1 %str.eq.result62, %str.eq.result84
  br i1 %case.or, label %choice.case39, label %choice.next40

choice.case91:                                    ; preds = %str.eq.merge130
  %arena.cur138 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 16)
  %tag.gep140 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc139, i32 0, i32 0
  store i64 3, ptr %tag.gep140, align 8
  %pay.gep141 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc139, i32 0, i32 1
  store ptr null, ptr %pay.gep141, align 8
  %p.to.i64142 = ptrtoint ptr %enum.alloc139 to i64
  %ram.pay143 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64142, 1
  br label %choice.exit

choice.next92:                                    ; preds = %str.eq.merge130
  %eq.lhs.len146 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len147 = load i64, ptr %eq.lhs.len146, align 8
  %eq.lhs.len148 = and i64 %eq.lhs.len147, 281474976710655
  %str.tag149 = lshr i64 %eq.lhs.len147, 48
  %tag.immortal151 = icmp eq i64 %str.tag149, 0
  %active.gen152 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current153 = icmp eq i64 %str.tag149, %active.gen152
  %tag.fast.ok154 = or i1 %tag.immortal151, %tag.current153
  br i1 %tag.fast.ok154, label %str_ok150, label %tag.slow_check155

str_ok97:                                         ; preds = %tag.slow_check102, %choice.next40
  %eq.rhs.len103 = load i64, ptr @str.30.struct, align 8
  %eq.rhs.len104 = and i64 %eq.rhs.len103, 281474976710655
  %eq.len105 = icmp eq i64 %eq.lhs.len95, %eq.rhs.len104
  br i1 %eq.len105, label %str.eq.then106, label %str.eq.else107

tag.slow_check102:                                ; preds = %choice.next40
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag96)
  br label %str_ok97

str.eq.then106:                                   ; preds = %str_ok97
  %eq.lhs.data109 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data110 = load ptr, ptr %eq.lhs.data109, align 8
  %eq.rhs.data111 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %eq.memcmp112 = call i32 @memcmp(ptr %eq.lhs.data110, ptr %eq.rhs.data111, i64 %eq.lhs.len95)
  %eq.cmp.zero113 = icmp eq i32 %eq.memcmp112, 0
  br label %str.eq.merge108

str.eq.else107:                                   ; preds = %str_ok97
  br label %str.eq.merge108

str.eq.merge108:                                  ; preds = %str.eq.else107, %str.eq.then106
  %str.eq.result114 = phi i1 [ %eq.cmp.zero113, %str.eq.then106 ], [ false, %str.eq.else107 ]
  %eq.lhs.len115 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len116 = load i64, ptr %eq.lhs.len115, align 8
  %eq.lhs.len117 = and i64 %eq.lhs.len116, 281474976710655
  %str.tag118 = lshr i64 %eq.lhs.len116, 48
  %tag.immortal120 = icmp eq i64 %str.tag118, 0
  %active.gen121 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current122 = icmp eq i64 %str.tag118, %active.gen121
  %tag.fast.ok123 = or i1 %tag.immortal120, %tag.current122
  br i1 %tag.fast.ok123, label %str_ok119, label %tag.slow_check124

str_ok119:                                        ; preds = %tag.slow_check124, %str.eq.merge108
  %eq.rhs.len125 = load i64, ptr @str.31.struct, align 8
  %eq.rhs.len126 = and i64 %eq.rhs.len125, 281474976710655
  %eq.len127 = icmp eq i64 %eq.lhs.len117, %eq.rhs.len126
  br i1 %eq.len127, label %str.eq.then128, label %str.eq.else129

tag.slow_check124:                                ; preds = %str.eq.merge108
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag118)
  br label %str_ok119

str.eq.then128:                                   ; preds = %str_ok119
  %eq.lhs.data131 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data132 = load ptr, ptr %eq.lhs.data131, align 8
  %eq.rhs.data133 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %eq.memcmp134 = call i32 @memcmp(ptr %eq.lhs.data132, ptr %eq.rhs.data133, i64 %eq.lhs.len117)
  %eq.cmp.zero135 = icmp eq i32 %eq.memcmp134, 0
  br label %str.eq.merge130

str.eq.else129:                                   ; preds = %str_ok119
  br label %str.eq.merge130

str.eq.merge130:                                  ; preds = %str.eq.else129, %str.eq.then128
  %str.eq.result136 = phi i1 [ %eq.cmp.zero135, %str.eq.then128 ], [ false, %str.eq.else129 ]
  %case.or137 = or i1 %str.eq.result114, %str.eq.result136
  br i1 %case.or137, label %choice.case91, label %choice.next92

choice.case144:                                   ; preds = %str.eq.merge206
  %arena.cur214 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 16)
  %tag.gep216 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc215, i32 0, i32 0
  store i64 4, ptr %tag.gep216, align 8
  %pay.gep217 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc215, i32 0, i32 1
  store ptr null, ptr %pay.gep217, align 8
  %p.to.i64218 = ptrtoint ptr %enum.alloc215 to i64
  %ram.pay219 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64218, 1
  br label %choice.exit

choice.next145:                                   ; preds = %str.eq.merge206
  br label %choice.exit

str_ok150:                                        ; preds = %tag.slow_check155, %choice.next92
  %eq.rhs.len156 = load i64, ptr @str.32.struct, align 8
  %eq.rhs.len157 = and i64 %eq.rhs.len156, 281474976710655
  %eq.len158 = icmp eq i64 %eq.lhs.len148, %eq.rhs.len157
  br i1 %eq.len158, label %str.eq.then159, label %str.eq.else160

tag.slow_check155:                                ; preds = %choice.next92
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag149)
  br label %str_ok150

str.eq.then159:                                   ; preds = %str_ok150
  %eq.lhs.data162 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data163 = load ptr, ptr %eq.lhs.data162, align 8
  %eq.rhs.data164 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %eq.memcmp165 = call i32 @memcmp(ptr %eq.lhs.data163, ptr %eq.rhs.data164, i64 %eq.lhs.len148)
  %eq.cmp.zero166 = icmp eq i32 %eq.memcmp165, 0
  br label %str.eq.merge161

str.eq.else160:                                   ; preds = %str_ok150
  br label %str.eq.merge161

str.eq.merge161:                                  ; preds = %str.eq.else160, %str.eq.then159
  %str.eq.result167 = phi i1 [ %eq.cmp.zero166, %str.eq.then159 ], [ false, %str.eq.else160 ]
  %eq.lhs.len168 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len169 = load i64, ptr %eq.lhs.len168, align 8
  %eq.lhs.len170 = and i64 %eq.lhs.len169, 281474976710655
  %str.tag171 = lshr i64 %eq.lhs.len169, 48
  %tag.immortal173 = icmp eq i64 %str.tag171, 0
  %active.gen174 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current175 = icmp eq i64 %str.tag171, %active.gen174
  %tag.fast.ok176 = or i1 %tag.immortal173, %tag.current175
  br i1 %tag.fast.ok176, label %str_ok172, label %tag.slow_check177

str_ok172:                                        ; preds = %tag.slow_check177, %str.eq.merge161
  %eq.rhs.len178 = load i64, ptr @str.33.struct, align 8
  %eq.rhs.len179 = and i64 %eq.rhs.len178, 281474976710655
  %eq.len180 = icmp eq i64 %eq.lhs.len170, %eq.rhs.len179
  br i1 %eq.len180, label %str.eq.then181, label %str.eq.else182

tag.slow_check177:                                ; preds = %str.eq.merge161
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag171)
  br label %str_ok172

str.eq.then181:                                   ; preds = %str_ok172
  %eq.lhs.data184 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data185 = load ptr, ptr %eq.lhs.data184, align 8
  %eq.rhs.data186 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %eq.memcmp187 = call i32 @memcmp(ptr %eq.lhs.data185, ptr %eq.rhs.data186, i64 %eq.lhs.len170)
  %eq.cmp.zero188 = icmp eq i32 %eq.memcmp187, 0
  br label %str.eq.merge183

str.eq.else182:                                   ; preds = %str_ok172
  br label %str.eq.merge183

str.eq.merge183:                                  ; preds = %str.eq.else182, %str.eq.then181
  %str.eq.result189 = phi i1 [ %eq.cmp.zero188, %str.eq.then181 ], [ false, %str.eq.else182 ]
  %case.or190 = or i1 %str.eq.result167, %str.eq.result189
  %eq.lhs.len191 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len192 = load i64, ptr %eq.lhs.len191, align 8
  %eq.lhs.len193 = and i64 %eq.lhs.len192, 281474976710655
  %str.tag194 = lshr i64 %eq.lhs.len192, 48
  %tag.immortal196 = icmp eq i64 %str.tag194, 0
  %active.gen197 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current198 = icmp eq i64 %str.tag194, %active.gen197
  %tag.fast.ok199 = or i1 %tag.immortal196, %tag.current198
  br i1 %tag.fast.ok199, label %str_ok195, label %tag.slow_check200

str_ok195:                                        ; preds = %tag.slow_check200, %str.eq.merge183
  %eq.rhs.len201 = load i64, ptr @str.34.struct, align 8
  %eq.rhs.len202 = and i64 %eq.rhs.len201, 281474976710655
  %eq.len203 = icmp eq i64 %eq.lhs.len193, %eq.rhs.len202
  br i1 %eq.len203, label %str.eq.then204, label %str.eq.else205

tag.slow_check200:                                ; preds = %str.eq.merge183
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag194)
  br label %str_ok195

str.eq.then204:                                   ; preds = %str_ok195
  %eq.lhs.data207 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data208 = load ptr, ptr %eq.lhs.data207, align 8
  %eq.rhs.data209 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %eq.memcmp210 = call i32 @memcmp(ptr %eq.lhs.data208, ptr %eq.rhs.data209, i64 %eq.lhs.len193)
  %eq.cmp.zero211 = icmp eq i32 %eq.memcmp210, 0
  br label %str.eq.merge206

str.eq.else205:                                   ; preds = %str_ok195
  br label %str.eq.merge206

str.eq.merge206:                                  ; preds = %str.eq.else205, %str.eq.then204
  %str.eq.result212 = phi i1 [ %eq.cmp.zero211, %str.eq.then204 ], [ false, %str.eq.else205 ]
  %case.or213 = or i1 %case.or190, %str.eq.result212
  br i1 %case.or213, label %choice.case144, label %choice.next145
}

declare { i64, ptr } @"str::trim"(ptr) #0

declare { i64, ptr } @"str::lower"(ptr) #0

define void @"log::set_level"(ptr %0) #0 {
entry:
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call i64 @"log::level_rank"(ptr %var.load)
  store i64 %call.res, ptr @"var.log::#min_level", align 8
  ret void
}

define ptr @"log::get_level"() #0 {
entry:
  %var.load = load i64, ptr @"var.log::#min_level", align 8
  %call.res = call ptr @"log::#rank_to_level"(i64 %var.load)
  ret ptr %call.res
}

define i1 @"log::enabled"(ptr %0) #0 {
entry:
  %var.r = alloca i64, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call i64 @"log::level_rank"(ptr %var.load)
  store i64 %call.res, ptr %var.r, align 8
  %var.load1 = load i64, ptr %var.r, align 8
  %cmptmp = icmp slt i64 %var.load1, 4
  br i1 %cmptmp, label %and.98.then, label %and.98.else

and.98.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.r, align 8
  %var.load3 = load i64, ptr @"var.log::#min_level", align 8
  %cmptmp4 = icmp sge i64 %var.load2, %var.load3
  br label %and.98.exit

and.98.else:                                      ; preds = %entry
  br label %and.98.exit

and.98.exit:                                      ; preds = %and.98.else, %and.98.then
  %and.98.phi = phi i1 [ %cmptmp4, %and.98.then ], [ %cmptmp, %and.98.else ]
  ret i1 %and.98.phi
}

define void @"log::set_timestamps"(i1 %0) #0 {
entry:
  %var.on = alloca i1, align 1
  store i1 %0, ptr %var.on, align 1
  %var.load = load i1, ptr %var.on, align 1
  store i1 %var.load, ptr @"var.log::#show_ts", align 1
  ret void
}

define void @"log::set_utc"(i1 %0) #0 {
entry:
  %var.on = alloca i1, align 1
  store i1 %0, ptr %var.on, align 1
  %var.load = load i1, ptr %var.on, align 1
  store i1 %var.load, ptr @"var.log::#ts_utc", align 1
  ret void
}

define void @"log::set_basic_iso"(i1 %0) #0 {
entry:
  %var.on = alloca i1, align 1
  store i1 %0, ptr %var.on, align 1
  %var.load = load i1, ptr %var.on, align 1
  store i1 %var.load, ptr @"var.log::#ts_basic", align 1
  ret void
}

define void @"log::set_color"(i1 %0) #0 {
entry:
  %var.on = alloca i1, align 1
  store i1 %0, ptr %var.on, align 1
  %var.load = load i1, ptr %var.on, align 1
  br i1 %var.load, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 1, %choice.then ], [ 2, %choice.else ]
  store i64 %choice.res, ptr @"var.log::#color_mode", align 8
  ret void
}

define void @"log::use_auto_color"() #0 {
entry:
  store i64 0, ptr @"var.log::#color_mode", align 8
  ret void
}

define void @"log::set_prefix"(ptr %0) #0 {
entry:
  %var.pfx = alloca ptr, align 8
  store ptr %0, ptr %var.pfx, align 8
  %var.load = load ptr, ptr %var.pfx, align 8
  store ptr %var.load, ptr @"var.log::#prefix_tag", align 8
  ret void
}

define { i64, ptr } @"log::get_prefix"() #0 {
entry:
  %var.load = load ptr, ptr @"var.log::#prefix_tag", align 8
  %ret.pack = load { i64, ptr }, ptr %var.load, align 8
  ret { i64, ptr } %ret.pack
}

define void @"log::set_fd"(i64 %0) #0 {
entry:
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  %var.load = load i64, ptr %var.fd, align 8
  call void @"log::set_fd_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"(i64 %var.load)
  ret void
}

define internal void @"log::set_fd_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"(i64 %0) #0 {
entry:
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  %var.load = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.99.then, label %and.99.else

and.99.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr @"var.log::#owned_fd", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %cmptmp3 = icmp ne i64 %var.load1, %var.load2
  br label %and.99.exit

and.99.else:                                      ; preds = %entry
  br label %and.99.exit

and.99.exit:                                      ; preds = %and.99.else, %and.99.then
  %and.99.phi = phi i1 [ %cmptmp3, %and.99.then ], [ %cmptmp, %and.99.else ]
  br i1 %and.99.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.99.exit
  %var.load4 = load i64, ptr @"var.log::#owned_fd", align 8
  %coerce.trunc = trunc i64 %var.load4 to i32
  %call.res = call i32 @close(i32 %coerce.trunc)
  store i64 -1, ptr @"var.log::#owned_fd", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.99.exit
  %var.load5 = load i64, ptr %var.fd, align 8
  store i64 %var.load5, ptr @"var.log::#out_fd", align 8
  ret void
}

define i64 @"log::get_fd"() #0 {
entry:
  %var.load = load i64, ptr @"var.log::#out_fd", align 8
  ret i64 %var.load
}

define i1 @"log::set_file"(ptr %0) #0 {
entry:
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %call.res = call i1 @"log::set_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"(ptr %var.load)
  ret i1 %call.res
}

define internal i1 @"log::set_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"(ptr %0) #0 {
entry:
  %var.fd = alloca i64, align 8
  %var.path = alloca ptr, align 8
  store ptr %0, ptr %var.path, align 8
  %var.load = load ptr, ptr %var.path, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr2 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %arg.str.ptr3 = load i64, ptr %arg.str.ptr2, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr7 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load8 = load i64, ptr @"var.log::#O_LOG_APPEND", align 8
  %coerce.trunc = trunc i64 %var.load8 to i32
  %call.res = call i32 @open(ptr %arg.str.ptr7, i32 %coerce.trunc, i64 420)
  %coerce.sext = sext i32 %call.res to i64
  store i64 %coerce.sext, ptr %var.fd, align 8
  %var.load9 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load9, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load10 = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp11 = icmp sge i64 %var.load10, 0
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

choice.exit:                                      ; preds = %choice.exit13, %choice.then
  %choice.res = phi i1 [ false, %choice.then ], [ true, %choice.exit13 ]
  ret i1 %choice.res

choice.then12:                                    ; preds = %choice.else
  %var.load14 = load i64, ptr @"var.log::#owned_fd", align 8
  %coerce.trunc15 = trunc i64 %var.load14 to i32
  %call.res16 = call i32 @close(i32 %coerce.trunc15)
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.then12, %choice.else
  %var.load17 = load i64, ptr %var.fd, align 8
  store i64 %var.load17, ptr @"var.log::#owned_fd", align 8
  %var.load18 = load i64, ptr %var.fd, align 8
  store i64 %var.load18, ptr @"var.log::#out_fd", align 8
  br label %choice.exit
}

define void @"log::close_file"() #0 {
entry:
  call void @"log::close_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"()
  ret void
}

define internal void @"log::close_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"() #0 {
entry:
  %var.load = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr @"var.log::#owned_fd", align 8
  %coerce.trunc = trunc i64 %var.load1 to i32
  %call.res = call i32 @close(i32 %coerce.trunc)
  store i64 -1, ptr @"var.log::#owned_fd", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  store i64 2, ptr @"var.log::#out_fd", align 8
  ret void
}

define { i64, ptr } @"log::format_entry"(ptr %0, ptr %1) #0 {
entry:
  %concat.str200 = alloca { i64, ptr }, align 8
  %var.pfx_part = alloca ptr, align 8
  %var.ts_str = alloca ptr, align 8
  %var.badge = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  store ptr %1, ptr %var.msg, align 8
  %call.res = call i1 @"log::#should_color"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res1 = call { i64, ptr } @"log::#level_ansi"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res1, ptr %ret.ub.alloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.lvl, align 8
  %call.res3 = call { i64, ptr } @"log::#level_plain"(ptr %var.load2)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store { i64, ptr } %call.res3, ptr %ret.ub.alloc5, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.alloc, %choice.then ], [ %ret.ub.alloc5, %choice.else ]
  store ptr %choice.res, ptr %var.badge, align 8
  %var.load6 = load i1, ptr @"var.log::#show_ts", align 1
  br i1 %var.load6, label %choice.then7, label %choice.else8

choice.then7:                                     ; preds = %choice.exit
  %var.load10 = load i1, ptr @"var.log::#ts_utc", align 1
  br i1 %var.load10, label %choice.then11, label %choice.else12

choice.else8:                                     ; preds = %choice.exit
  br label %choice.exit9

choice.exit9:                                     ; preds = %choice.else8, %concat.tot.len46
  %choice.res51 = phi ptr [ %concat.str, %concat.tot.len46 ], [ @str.0.struct, %choice.else8 ]
  store ptr %choice.res51, ptr %var.ts_str, align 8
  %var.load52 = load ptr, ptr @"var.log::#prefix_tag", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %str.len.query53 = load i64, ptr %str.len.query, align 8
  %str.len.query54 = and i64 %str.len.query53, 281474976710655
  %str.tag55 = lshr i64 %str.len.query53, 48
  %tag.immortal57 = icmp eq i64 %str.tag55, 0
  %active.gen58 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current59 = icmp eq i64 %str.tag55, %active.gen58
  %tag.fast.ok60 = or i1 %tag.immortal57, %tag.current59
  br i1 %tag.fast.ok60, label %str_ok56, label %tag.slow_check61

choice.then11:                                    ; preds = %choice.then7
  %var.load14 = load i1, ptr @"var.log::#ts_basic", align 1
  br i1 %var.load14, label %choice.then15, label %choice.else16

choice.else12:                                    ; preds = %choice.then7
  %var.load25 = load i1, ptr @"var.log::#ts_basic", align 1
  br i1 %var.load25, label %choice.then26, label %choice.else27

choice.exit13:                                    ; preds = %choice.exit28, %choice.exit17
  %choice.res36 = phi ptr [ %choice.res24, %choice.exit17 ], [ %choice.res35, %choice.exit28 ]
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %choice.res36, i32 0, i32 0
  %concat.lhs37 = load i64, ptr %concat.lhs, align 8
  %concat.lhs38 = and i64 %concat.lhs37, 281474976710655
  %str.tag = lshr i64 %concat.lhs37, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.then15:                                    ; preds = %choice.then11
  %call.res18 = call { i64, ptr } @"time::utc_iso_basic$Unit"(i64 0)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  store { i64, ptr } %call.res18, ptr %ret.ub.alloc20, align 8
  br label %choice.exit17

choice.else16:                                    ; preds = %choice.then11
  %call.res21 = call { i64, ptr } @"time::utc_iso$Unit"(i64 0)
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  store { i64, ptr } %call.res21, ptr %ret.ub.alloc23, align 8
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else16, %choice.then15
  %choice.res24 = phi ptr [ %ret.ub.alloc20, %choice.then15 ], [ %ret.ub.alloc23, %choice.else16 ]
  br label %choice.exit13

choice.then26:                                    ; preds = %choice.else12
  %call.res29 = call { i64, ptr } @"time::iso_basic$Unit"(i64 0)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store { i64, ptr } %call.res29, ptr %ret.ub.alloc31, align 8
  br label %choice.exit28

choice.else27:                                    ; preds = %choice.else12
  %call.res32 = call { i64, ptr } @"time::iso$Unit"(i64 0)
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  store { i64, ptr } %call.res32, ptr %ret.ub.alloc34, align 8
  br label %choice.exit28

choice.exit28:                                    ; preds = %choice.else27, %choice.then26
  %choice.res35 = phi ptr [ %ret.ub.alloc31, %choice.then26 ], [ %ret.ub.alloc34, %choice.else27 ]
  br label %choice.exit13

str_ok:                                           ; preds = %tag.slow_check, %choice.exit13
  %concat.lhs39 = getelementptr inbounds { i64, ptr }, ptr %choice.res36, i32 0, i32 1
  %concat.lhs40 = load ptr, ptr %concat.lhs39, align 8
  %concat.rhs = load i64, ptr @str.35.struct, align 8
  %concat.rhs41 = and i64 %concat.rhs, 281474976710655
  %concat.rhs42 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs38, i64 %concat.rhs41)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len43

tag.slow_check:                                   ; preds = %choice.exit13
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

concat.sum.len43:                                 ; preds = %abort.dead, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum44 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf45 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf45, label %str_overflow_abort47, label %concat.tot.len46

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len43

concat.tot.len46:                                 ; preds = %abort.dead48, %concat.sum.len43
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs40, i64 %concat.lhs38, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs42, i64 %concat.rhs41, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit9

str_overflow_abort47:                             ; preds = %concat.sum.len43
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %concat.tot.len46

str_ok56:                                         ; preds = %tag.slow_check61, %choice.exit9
  %cmptmp = icmp sgt i64 %str.len.query54, 0
  br i1 %cmptmp, label %choice.then62, label %choice.else63

tag.slow_check61:                                 ; preds = %choice.exit9
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag55)
  br label %str_ok56

choice.then62:                                    ; preds = %str_ok56
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %var.load65 = load ptr, ptr @"var.log::#prefix_tag", align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 0
  %cat.seg66 = load i64, ptr %cat.seg, align 8
  %cat.seg67 = and i64 %cat.seg66, 281474976710655
  %str.tag68 = lshr i64 %cat.seg66, 48
  %tag.immortal70 = icmp eq i64 %str.tag68, 0
  %active.gen71 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current72 = icmp eq i64 %str.tag68, %active.gen71
  %tag.fast.ok73 = or i1 %tag.immortal70, %tag.current72
  br i1 %tag.fast.ok73, label %str_ok69, label %tag.slow_check74

choice.else63:                                    ; preds = %str_ok56
  br label %choice.exit64

choice.exit64:                                    ; preds = %choice.else63, %concat.tot.len92
  %choice.res104 = phi ptr [ %concat.str101, %concat.tot.len92 ], [ @str.0.struct, %choice.else63 ]
  store ptr %choice.res104, ptr %var.pfx_part, align 8
  %var.load105 = load ptr, ptr %var.ts_str, align 8
  %cat.seg106 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 0
  %cat.seg107 = load i64, ptr %cat.seg106, align 8
  %cat.seg108 = and i64 %cat.seg107, 281474976710655
  %str.tag109 = lshr i64 %cat.seg107, 48
  %tag.immortal111 = icmp eq i64 %str.tag109, 0
  %active.gen112 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current113 = icmp eq i64 %str.tag109, %active.gen112
  %tag.fast.ok114 = or i1 %tag.immortal111, %tag.current113
  br i1 %tag.fast.ok114, label %str_ok110, label %tag.slow_check115

str_ok69:                                         ; preds = %tag.slow_check74, %choice.then62
  %cat.seg75 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 1
  %cat.seg76 = load ptr, ptr %cat.seg75, align 8
  %cat.lit.data77 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %cat.seg67)
  %sum78 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf79 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf79, label %str_overflow_abort81, label %cat.sum.len80

tag.slow_check74:                                 ; preds = %choice.then62
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag68)
  br label %str_ok69

cat.sum.len80:                                    ; preds = %abort.dead82, %str_ok69
  %cat.sum.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum78, i64 1)
  %sum84 = extractvalue { i64, i1 } %cat.sum.len83, 0
  %ovf85 = extractvalue { i64, i1 } %cat.sum.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %cat.sum.len86

str_overflow_abort81:                             ; preds = %str_ok69
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %cat.sum.len80

cat.sum.len86:                                    ; preds = %abort.dead88, %cat.sum.len80
  %concat.tot.len89 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum84, i64 1)
  %sum90 = extractvalue { i64, i1 } %concat.tot.len89, 0
  %ovf91 = extractvalue { i64, i1 } %concat.tot.len89, 1
  br i1 %ovf91, label %str_overflow_abort93, label %concat.tot.len92

str_overflow_abort87:                             ; preds = %cat.sum.len80
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %cat.sum.len86

concat.tot.len92:                                 ; preds = %abort.dead94, %cat.sum.len86
  %arena.cur95 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 %sum90)
  %cat.dst = getelementptr i8, ptr %concat.buf96, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.dst97 = getelementptr i8, ptr %concat.buf96, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst97, ptr align 1 %cat.seg76, i64 %cat.seg67, i1 false)
  %cat.off = add i64 2, %cat.seg67
  %cat.dst98 = getelementptr i8, ptr %concat.buf96, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst98, ptr align 1 %cat.lit.data77, i64 1, i1 false)
  %concat.nul99 = getelementptr i8, ptr %concat.buf96, i64 %sum84
  store i8 0, ptr %concat.nul99, align 1
  %arena.cur100 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 16)
  %str.build.len.gep102 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 0
  store i64 %sum84, ptr %str.build.len.gep102, align 8
  %str.build.data.gep103 = getelementptr inbounds { i64, ptr }, ptr %concat.str101, i32 0, i32 1
  store ptr %concat.buf96, ptr %str.build.data.gep103, align 8
  br label %choice.exit64

str_overflow_abort93:                             ; preds = %cat.sum.len86
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead94:                                     ; No predecessors!
  br label %concat.tot.len92

str_ok110:                                        ; preds = %tag.slow_check115, %choice.exit64
  %cat.seg116 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 1
  %cat.seg117 = load ptr, ptr %cat.seg116, align 8
  %var.load118 = load ptr, ptr %var.badge, align 8
  %cat.seg119 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %cat.seg120 = load i64, ptr %cat.seg119, align 8
  %cat.seg121 = and i64 %cat.seg120, 281474976710655
  %str.tag122 = lshr i64 %cat.seg120, 48
  %tag.immortal124 = icmp eq i64 %str.tag122, 0
  %active.gen125 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current126 = icmp eq i64 %str.tag122, %active.gen125
  %tag.fast.ok127 = or i1 %tag.immortal124, %tag.current126
  br i1 %tag.fast.ok127, label %str_ok123, label %tag.slow_check128

tag.slow_check115:                                ; preds = %choice.exit64
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag109)
  br label %str_ok110

str_ok123:                                        ; preds = %tag.slow_check128, %str_ok110
  %cat.seg129 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %cat.seg130 = load ptr, ptr %cat.seg129, align 8
  %var.load131 = load ptr, ptr %var.pfx_part, align 8
  %cat.seg132 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 0
  %cat.seg133 = load i64, ptr %cat.seg132, align 8
  %cat.seg134 = and i64 %cat.seg133, 281474976710655
  %str.tag135 = lshr i64 %cat.seg133, 48
  %tag.immortal137 = icmp eq i64 %str.tag135, 0
  %active.gen138 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current139 = icmp eq i64 %str.tag135, %active.gen138
  %tag.fast.ok140 = or i1 %tag.immortal137, %tag.current139
  br i1 %tag.fast.ok140, label %str_ok136, label %tag.slow_check141

tag.slow_check128:                                ; preds = %str_ok110
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag122)
  br label %str_ok123

str_ok136:                                        ; preds = %tag.slow_check141, %str_ok123
  %cat.seg142 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 1
  %cat.seg143 = load ptr, ptr %cat.seg142, align 8
  %cat.lit.data144 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %var.load145 = load ptr, ptr %var.msg, align 8
  %cat.seg146 = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 0
  %cat.seg147 = load i64, ptr %cat.seg146, align 8
  %cat.seg148 = and i64 %cat.seg147, 281474976710655
  %str.tag149 = lshr i64 %cat.seg147, 48
  %tag.immortal151 = icmp eq i64 %str.tag149, 0
  %active.gen152 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current153 = icmp eq i64 %str.tag149, %active.gen152
  %tag.fast.ok154 = or i1 %tag.immortal151, %tag.current153
  br i1 %tag.fast.ok154, label %str_ok150, label %tag.slow_check155

tag.slow_check141:                                ; preds = %str_ok123
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag135)
  br label %str_ok136

str_ok150:                                        ; preds = %tag.slow_check155, %str_ok136
  %cat.seg156 = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 1
  %cat.seg157 = load ptr, ptr %cat.seg156, align 8
  %cat.sum.len158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg108, i64 %cat.seg121)
  %sum159 = extractvalue { i64, i1 } %cat.sum.len158, 0
  %ovf160 = extractvalue { i64, i1 } %cat.sum.len158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %cat.sum.len161

tag.slow_check155:                                ; preds = %str_ok136
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag149)
  br label %str_ok150

cat.sum.len161:                                   ; preds = %abort.dead163, %str_ok150
  %cat.sum.len164 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum159, i64 %cat.seg134)
  %sum165 = extractvalue { i64, i1 } %cat.sum.len164, 0
  %ovf166 = extractvalue { i64, i1 } %cat.sum.len164, 1
  br i1 %ovf166, label %str_overflow_abort168, label %cat.sum.len167

str_overflow_abort162:                            ; preds = %str_ok150
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %cat.sum.len161

cat.sum.len167:                                   ; preds = %abort.dead169, %cat.sum.len161
  %cat.sum.len170 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum165, i64 1)
  %sum171 = extractvalue { i64, i1 } %cat.sum.len170, 0
  %ovf172 = extractvalue { i64, i1 } %cat.sum.len170, 1
  br i1 %ovf172, label %str_overflow_abort174, label %cat.sum.len173

str_overflow_abort168:                            ; preds = %cat.sum.len161
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead169:                                    ; No predecessors!
  br label %cat.sum.len167

cat.sum.len173:                                   ; preds = %abort.dead175, %cat.sum.len167
  %cat.sum.len176 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum171, i64 %cat.seg148)
  %sum177 = extractvalue { i64, i1 } %cat.sum.len176, 0
  %ovf178 = extractvalue { i64, i1 } %cat.sum.len176, 1
  br i1 %ovf178, label %str_overflow_abort180, label %cat.sum.len179

str_overflow_abort174:                            ; preds = %cat.sum.len167
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead175:                                    ; No predecessors!
  br label %cat.sum.len173

cat.sum.len179:                                   ; preds = %abort.dead181, %cat.sum.len173
  %concat.tot.len182 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum177, i64 1)
  %sum183 = extractvalue { i64, i1 } %concat.tot.len182, 0
  %ovf184 = extractvalue { i64, i1 } %concat.tot.len182, 1
  br i1 %ovf184, label %str_overflow_abort186, label %concat.tot.len185

str_overflow_abort180:                            ; preds = %cat.sum.len173
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead181:                                    ; No predecessors!
  br label %cat.sum.len179

concat.tot.len185:                                ; preds = %abort.dead187, %cat.sum.len179
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 %sum183)
  %cat.dst190 = getelementptr i8, ptr %concat.buf189, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst190, ptr align 1 %cat.seg117, i64 %cat.seg108, i1 false)
  %cat.off191 = add i64 0, %cat.seg108
  %cat.dst192 = getelementptr i8, ptr %concat.buf189, i64 %cat.off191
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst192, ptr align 1 %cat.seg130, i64 %cat.seg121, i1 false)
  %cat.off193 = add i64 %cat.off191, %cat.seg121
  %cat.dst194 = getelementptr i8, ptr %concat.buf189, i64 %cat.off193
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst194, ptr align 1 %cat.seg143, i64 %cat.seg134, i1 false)
  %cat.off195 = add i64 %cat.off193, %cat.seg134
  %cat.dst196 = getelementptr i8, ptr %concat.buf189, i64 %cat.off195
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst196, ptr align 1 %cat.lit.data144, i64 1, i1 false)
  %cat.off197 = add i64 %cat.off195, 1
  %cat.dst198 = getelementptr i8, ptr %concat.buf189, i64 %cat.off197
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst198, ptr align 1 %cat.seg157, i64 %cat.seg148, i1 false)
  %concat.nul199 = getelementptr i8, ptr %concat.buf189, i64 %sum177
  store i8 0, ptr %concat.nul199, align 1
  %str.build.len.gep201 = getelementptr inbounds { i64, ptr }, ptr %concat.str200, i32 0, i32 0
  store i64 %sum177, ptr %str.build.len.gep201, align 8
  %str.build.data.gep202 = getelementptr inbounds { i64, ptr }, ptr %concat.str200, i32 0, i32 1
  store ptr %concat.buf189, ptr %str.build.data.gep202, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str200, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort186:                            ; preds = %cat.sum.len179
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead187:                                    ; No predecessors!
  br label %concat.tot.len185
}

define internal { i64, ptr } @"time::utc_iso_basic$Unit"(i64 %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.x = alloca i64, align 8
  store i64 %0, ptr %var.x, align 8
  %var.load = load i64, ptr %var.x, align 8
  %call.res = call ptr @"time::resolve_utc_dt$Unit"(i64 %var.load)
  %call.res1 = call { i64, ptr } @"time::format_dt_iso_basic"(ptr %call.res)
  store { i64, ptr } %call.res1, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define internal ptr @"time::resolve_utc_dt$Unit"(i64 %0) #0 {
entry:
  %var.x = alloca i64, align 8
  store i64 %0, ptr %var.x, align 8
  %call.res = call ptr @"time::utc_now_dt"()
  ret ptr %call.res
}

declare ptr @"time::utc_now_dt"() #0

declare { i64, ptr } @"time::format_dt_iso_basic"(ptr) #0

define internal { i64, ptr } @"time::utc_iso$Unit"(i64 %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.x = alloca i64, align 8
  store i64 %0, ptr %var.x, align 8
  %var.load = load i64, ptr %var.x, align 8
  %call.res = call ptr @"time::resolve_utc_dt$Unit"(i64 %var.load)
  %call.res1 = call { i64, ptr } @"time::format_dt_iso"(ptr %call.res)
  store { i64, ptr } %call.res1, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"time::format_dt_iso"(ptr) #0

define internal { i64, ptr } @"time::iso_basic$Unit"(i64 %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.x = alloca i64, align 8
  store i64 %0, ptr %var.x, align 8
  %var.load = load i64, ptr %var.x, align 8
  %call.res = call ptr @"time::resolve_local_dt$Unit"(i64 %var.load)
  %call.res1 = call { i64, ptr } @"time::format_dt_iso_basic"(ptr %call.res)
  store { i64, ptr } %call.res1, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define internal ptr @"time::resolve_local_dt$Unit"(i64 %0) #0 {
entry:
  %var.x = alloca i64, align 8
  store i64 %0, ptr %var.x, align 8
  %call.res = call ptr @"time::local_now_dt"()
  ret ptr %call.res
}

declare ptr @"time::local_now_dt"() #0

define internal { i64, ptr } @"time::iso$Unit"(i64 %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.x = alloca i64, align 8
  store i64 %0, ptr %var.x, align 8
  %var.load = load i64, ptr %var.x, align 8
  %call.res = call ptr @"time::resolve_local_dt$Unit"(i64 %var.load)
  %call.res1 = call { i64, ptr } @"time::format_dt_iso"(ptr %call.res)
  store { i64, ptr } %call.res1, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"log::format_kv"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  store ptr %1, ptr %var.msg, align 8
  store ptr %2, ptr %var.fields, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %var.load1 = load ptr, ptr %var.msg, align 8
  %var.load2 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  %call.res = call { i64, ptr } @"log::#append_fields"(ptr %var.load1, ptr %a.load2)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %call.res6 = call { i64, ptr } @"log::format_entry"(ptr %var.load, ptr %ret.ub.alloc)
  store { i64, ptr } %call.res6, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define void @"log::log"(ptr %0, ptr %1) #0 {
entry:
  %var.line = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.msg = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  store ptr %1, ptr %var.msg, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call i1 @"log::enabled"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lvl, align 8
  %var.load2 = load ptr, ptr %var.msg, align 8
  %call.res3 = call { i64, ptr } @"log::format_entry"(ptr %var.load1, ptr %var.load2)
  store { i64, ptr } %call.res3, ptr %ret.ub.salloc, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %concat.lhs4 = load i64, ptr %concat.lhs, align 8
  %concat.lhs5 = and i64 %concat.lhs4, 281474976710655
  %str.tag = lshr i64 %concat.lhs4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %str_ok42, %entry
  ret void

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %concat.lhs6 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %concat.lhs7 = load ptr, ptr %concat.lhs6, align 8
  %concat.rhs = load i64, ptr @str.37.struct, align 8
  %concat.rhs8 = and i64 %concat.rhs, 281474976710655
  %concat.rhs9 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs5, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len10

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

concat.sum.len10:                                 ; preds = %abort.dead, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum11 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf12 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf12, label %str_overflow_abort14, label %concat.tot.len13

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len10

concat.tot.len13:                                 ; preds = %abort.dead15, %concat.sum.len10
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum11)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs7, i64 %concat.lhs5, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs9, i64 %concat.rhs8, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.line, align 8
  %var.load17 = load i64, ptr @"var.log::#out_fd", align 8
  %var.load18 = load ptr, ptr %var.line, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %arg.str.ptr19 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr20 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %arg.str.ptr21 = load i64, ptr %arg.str.ptr20, align 8
  %arg.str.ptr22 = and i64 %arg.str.ptr21, 281474976710655
  %str.tag23 = lshr i64 %arg.str.ptr21, 48
  %tag.immortal25 = icmp eq i64 %str.tag23, 0
  %active.gen26 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current27 = icmp eq i64 %str.tag23, %active.gen26
  %tag.fast.ok28 = or i1 %tag.immortal25, %tag.current27
  br i1 %tag.fast.ok28, label %str_ok24, label %tag.slow_check29

str_overflow_abort14:                             ; preds = %concat.sum.len10
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %concat.tot.len13

str_ok24:                                         ; preds = %tag.slow_check29, %concat.tot.len13
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr19, i64 %arg.str.ptr22
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr30, label %nulcopy

tag.slow_check29:                                 ; preds = %concat.tot.len13
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag23)
  br label %str_ok24

arg.str.ptr30:                                    ; preds = %str_ok24
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok24
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr22, i64 1)
  %sum31 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf32 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf32, label %str_overflow_abort34, label %nulcopy.len33

nulmerge:                                         ; preds = %nulcopy.len33, %arg.str.ptr30
  %arg.str.ptr37 = phi ptr [ %arg.str.ptr19, %arg.str.ptr30 ], [ %nulcopy.buf, %nulcopy.len33 ]
  %var.load38 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %str.len.query39 = load i64, ptr %str.len.query, align 8
  %str.len.query40 = and i64 %str.len.query39, 281474976710655
  %str.tag41 = lshr i64 %str.len.query39, 48
  %tag.immortal43 = icmp eq i64 %str.tag41, 0
  %active.gen44 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current45 = icmp eq i64 %str.tag41, %active.gen44
  %tag.fast.ok46 = or i1 %tag.immortal43, %tag.current45
  br i1 %tag.fast.ok46, label %str_ok42, label %tag.slow_check47

nulcopy.len33:                                    ; preds = %abort.dead35, %nulcopy
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 %sum31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr19, i64 %arg.str.ptr22, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr22
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort34:                             ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %nulcopy.len33

str_ok42:                                         ; preds = %tag.slow_check47, %nulmerge
  %coerce.trunc = trunc i64 %var.load17 to i32
  %call.res48 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr37, i64 %str.len.query40)
  br label %choice.exit

tag.slow_check47:                                 ; preds = %nulmerge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag41)
  br label %str_ok42
}

define void @"log::log_kv"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.line = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  store ptr %1, ptr %var.msg, align 8
  store ptr %2, ptr %var.fields, align 8
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res = call i1 @"log::enabled"(ptr %var.load)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.lvl, align 8
  %var.load2 = load ptr, ptr %var.msg, align 8
  %var.load3 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %str_ok46, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create4, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.fields, align 8
  %call.res6 = call { i64, ptr } @"log::format_kv"(ptr %var.load1, ptr %var.load2, ptr %a.load2)
  store { i64, ptr } %call.res6, ptr %ret.ub.salloc, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %concat.lhs7 = load i64, ptr %concat.lhs, align 8
  %concat.lhs8 = and i64 %concat.lhs7, 281474976710655
  %str.tag = lshr i64 %concat.lhs7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %a.after
  %concat.lhs9 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %concat.lhs10 = load ptr, ptr %concat.lhs9, align 8
  %concat.rhs = load i64, ptr @str.37.struct, align 8
  %concat.rhs11 = and i64 %concat.rhs, 281474976710655
  %concat.rhs12 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs8, i64 %concat.rhs11)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len13

tag.slow_check:                                   ; preds = %a.after
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

concat.sum.len13:                                 ; preds = %abort.dead, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum14 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf15 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %concat.tot.len16

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len13

concat.tot.len16:                                 ; preds = %abort.dead18, %concat.sum.len13
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum14)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs10, i64 %concat.lhs8, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs12, i64 %concat.rhs11, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.line, align 8
  %var.load21 = load i64, ptr @"var.log::#out_fd", align 8
  %var.load22 = load ptr, ptr %var.line, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %arg.str.ptr23 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr24 = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %arg.str.ptr25 = load i64, ptr %arg.str.ptr24, align 8
  %arg.str.ptr26 = and i64 %arg.str.ptr25, 281474976710655
  %str.tag27 = lshr i64 %arg.str.ptr25, 48
  %tag.immortal29 = icmp eq i64 %str.tag27, 0
  %active.gen30 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current31 = icmp eq i64 %str.tag27, %active.gen30
  %tag.fast.ok32 = or i1 %tag.immortal29, %tag.current31
  br i1 %tag.fast.ok32, label %str_ok28, label %tag.slow_check33

str_overflow_abort17:                             ; preds = %concat.sum.len13
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %concat.tot.len16

str_ok28:                                         ; preds = %tag.slow_check33, %concat.tot.len16
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr23, i64 %arg.str.ptr26
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr34, label %nulcopy

tag.slow_check33:                                 ; preds = %concat.tot.len16
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag27)
  br label %str_ok28

arg.str.ptr34:                                    ; preds = %str_ok28
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok28
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr26, i64 1)
  %sum35 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf36 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf36, label %str_overflow_abort38, label %nulcopy.len37

nulmerge:                                         ; preds = %nulcopy.len37, %arg.str.ptr34
  %arg.str.ptr41 = phi ptr [ %arg.str.ptr23, %arg.str.ptr34 ], [ %nulcopy.buf, %nulcopy.len37 ]
  %var.load42 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %str.len.query43 = load i64, ptr %str.len.query, align 8
  %str.len.query44 = and i64 %str.len.query43, 281474976710655
  %str.tag45 = lshr i64 %str.len.query43, 48
  %tag.immortal47 = icmp eq i64 %str.tag45, 0
  %active.gen48 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current49 = icmp eq i64 %str.tag45, %active.gen48
  %tag.fast.ok50 = or i1 %tag.immortal47, %tag.current49
  br i1 %tag.fast.ok50, label %str_ok46, label %tag.slow_check51

nulcopy.len37:                                    ; preds = %abort.dead39, %nulcopy
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum35)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr23, i64 %arg.str.ptr26, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr26
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort38:                             ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %nulcopy.len37

str_ok46:                                         ; preds = %tag.slow_check51, %nulmerge
  %coerce.trunc = trunc i64 %var.load21 to i32
  %call.res52 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr41, i64 %str.len.query44)
  br label %choice.exit

tag.slow_check51:                                 ; preds = %nulmerge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag45)
  br label %str_ok46
}

define void @"log::debug"(ptr %0) #0 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %var.load)
  ret void
}

define void @"log::info"(ptr %0) #0 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %var.load)
  ret void
}

define void @"log::warn"(ptr %0) #0 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %var.load)
  ret void
}

define void @"log::error"(ptr %0) #0 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %var.load)
  ret void
}

define void @"log::debug_kv"(ptr %0, ptr %1) #0 {
entry:
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  call void @"log::log_kv"(ptr %enum.alloc, ptr %var.load, ptr %a.load2)
  ret void
}

define void @"log::info_kv"(ptr %0, ptr %1) #0 {
entry:
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  call void @"log::log_kv"(ptr %enum.alloc, ptr %var.load, ptr %a.load2)
  ret void
}

define void @"log::warn_kv"(ptr %0, ptr %1) #0 {
entry:
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  call void @"log::log_kv"(ptr %enum.alloc, ptr %var.load, ptr %a.load2)
  ret void
}

define void @"log::error_kv"(ptr %0, ptr %1) #0 {
entry:
  %var.fields = alloca ptr, align 8
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  store ptr %1, ptr %var.fields, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %var.load = load ptr, ptr %var.msg, align 8
  %var.load1 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fields, align 8
  call void @"log::log_kv"(ptr %enum.alloc, ptr %var.load, ptr %a.load2)
  ret void
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline "nounwind" }
attributes #7 = { cold noinline noreturn "nounwind" }
