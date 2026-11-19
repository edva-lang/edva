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
@clo.const.10 = internal constant { ptr, ptr } { ptr @"log::#append_fields", ptr null }
@"var.log::#append_fields" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"log::level_rank", ptr null }
@"var.log::level_rank" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"log::level_name", ptr null }
@"var.log::level_name" = global ptr null
@str.23 = internal unnamed_addr constant [6 x i8] c"debug\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.23 }
@str.24 = internal unnamed_addr constant [5 x i8] c"info\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.24 }
@str.25 = internal unnamed_addr constant [5 x i8] c"warn\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.25 }
@str.26 = internal unnamed_addr constant [8 x i8] c"warning\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.26 }
@str.27 = internal unnamed_addr constant [6 x i8] c"error\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.27 }
@str.28 = internal unnamed_addr constant [4 x i8] c"err\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.28 }
@str.29 = internal unnamed_addr constant [7 x i8] c"silent\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.29 }
@str.30 = internal unnamed_addr constant [4 x i8] c"off\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.30 }
@str.31 = internal unnamed_addr constant [5 x i8] c"none\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.31 }
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
@str.32 = internal unnamed_addr constant [2 x i8] c" \00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.32 }
@str.33 = internal unnamed_addr constant [3 x i8] c" [\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.33 }
@clo.const.37 = internal constant { ptr, ptr } { ptr @"log::format_entry", ptr null }
@"var.log::format_entry" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"log::format_kv", ptr null }
@"var.log::format_kv" = global ptr null
@str.34 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.34 }
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #6 {
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
  %ret.ub.salloc18 = alloca { i64, ptr }, align 8
  %var.fc = alloca ptr, align 8
  %ret.ub.salloc4 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %call.res = call { i64, ptr } @"log::#env_val"(ptr @str.10.struct)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
  %call.res3 = call { i64, ptr } @"log::#env_val"(ptr @str.11.struct)
  store { i64, ptr } %call.res3, ptr %ret.ub.salloc4, align 8
  store ptr %ret.ub.salloc4, ptr %var.fc, align 8
  %var.load = load ptr, ptr %var.fc, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %cmptmp8 = icmp sgt i64 %str.len.query7, 0
  br i1 %cmptmp8, label %and.87.then, label %and.87.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.87.then:                                      ; preds = %choice.exit
  %var.load9 = load ptr, ptr %var.fc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %eq.lhs.len10 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len11 = and i64 %eq.lhs.len10, 281474976710655
  %eq.rhs.len = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len12 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len11, %eq.rhs.len12
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.87.else:                                      ; preds = %choice.exit
  br label %and.87.exit

and.87.exit:                                      ; preds = %and.87.else, %str.eq.merge
  %and.87.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %cmptmp8, %and.87.else ]
  br i1 %and.87.phi, label %choice.then14, label %choice.exit15

str.eq.then:                                      ; preds = %and.87.then
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %eq.lhs.data13 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data13, ptr %eq.rhs.data, i64 %eq.lhs.len11)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.87.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.87.exit

choice.then14:                                    ; preds = %and.87.exit
  ret i1 true

choice.exit15:                                    ; preds = %ret.dead16, %and.87.exit
  %call.res17 = call { i64, ptr } @"log::#env_val"(ptr @str.13.struct)
  store { i64, ptr } %call.res17, ptr %ret.ub.salloc18, align 8
  %eq.lhs.len19 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc18, i32 0, i32 0
  %eq.lhs.len20 = load i64, ptr %eq.lhs.len19, align 8
  %eq.lhs.len21 = and i64 %eq.lhs.len20, 281474976710655
  %eq.rhs.len22 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len23 = and i64 %eq.rhs.len22, 281474976710655
  %eq.len24 = icmp eq i64 %eq.lhs.len21, %eq.rhs.len23
  br i1 %eq.len24, label %str.eq.then25, label %str.eq.else26

ret.dead16:                                       ; No predecessors!
  br label %choice.exit15

str.eq.then25:                                    ; preds = %choice.exit15
  %eq.lhs.data28 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc18, i32 0, i32 1
  %eq.lhs.data29 = load ptr, ptr %eq.lhs.data28, align 8
  %eq.rhs.data30 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp31 = call i32 @memcmp(ptr %eq.lhs.data29, ptr %eq.rhs.data30, i64 %eq.lhs.len21)
  %eq.cmp.zero32 = icmp eq i32 %eq.memcmp31, 0
  br label %str.eq.merge27

str.eq.else26:                                    ; preds = %choice.exit15
  br label %str.eq.merge27

str.eq.merge27:                                   ; preds = %str.eq.else26, %str.eq.then25
  %str.eq.result33 = phi i1 [ %eq.cmp.zero32, %str.eq.then25 ], [ false, %str.eq.else26 ]
  br i1 %str.eq.result33, label %choice.then34, label %choice.exit35

choice.then34:                                    ; preds = %str.eq.merge27
  ret i1 false

choice.exit35:                                    ; preds = %ret.dead36, %str.eq.merge27
  %var.load37 = load i64, ptr @"var.log::#out_fd", align 8
  %coerce.trunc = trunc i64 %var.load37 to i32
  %call.res38 = call i64 @isatty(i32 %coerce.trunc)
  %cmptmp39 = icmp eq i64 %call.res38, 1
  ret i1 %cmptmp39

ret.dead36:                                       ; No predecessors!
  br label %choice.exit35
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
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data5 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len6

cat.sum.len6:                                     ; preds = %abort.dead, %entry
  %cat.sum.len7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %cat.sum.len7, 0
  %ovf9 = extractvalue { i64, i1 } %cat.sum.len7, 1
  br i1 %ovf9, label %str_overflow_abort11, label %cat.sum.len10

str_overflow_abort:                               ; preds = %entry
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
  %concat.str67 = alloca { i64, ptr }, align 8
  %var.badge = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
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
  %cat.seg4 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg5 = load ptr, ptr %cat.seg4, align 8
  %cat.lit.data6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.seg3)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len7

cat.sum.len7:                                     ; preds = %abort.dead, %entry
  %cat.sum.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum9 = extractvalue { i64, i1 } %cat.sum.len8, 0
  %ovf10 = extractvalue { i64, i1 } %cat.sum.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %cat.sum.len11

str_overflow_abort:                               ; preds = %entry
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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum9, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.badge, align 8
  %var.load21 = load ptr, ptr %var.m, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load21, i32 0, i32 3
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 0
  %str.len.query24 = load i64, ptr %str.len.query, align 8
  %str.len.query25 = and i64 %str.len.query24, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query25, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

str_overflow_abort17:                             ; preds = %cat.sum.len11
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %concat.tot.len16

choice.then:                                      ; preds = %concat.tot.len16
  %var.load26 = load ptr, ptr %var.m, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load26, i32 0, i32 3
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %cat.seg29 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %cat.seg30 = load i64, ptr %cat.seg29, align 8
  %cat.seg31 = and i64 %cat.seg30, 281474976710655
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %cat.seg33 = load ptr, ptr %cat.seg32, align 8
  %var.load34 = load ptr, ptr %var.badge, align 8
  %cat.seg35 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %cat.seg36 = load i64, ptr %cat.seg35, align 8
  %cat.seg37 = and i64 %cat.seg36, 281474976710655
  %cat.seg38 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %cat.seg39 = load ptr, ptr %cat.seg38, align 8
  %cat.lit.data40 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %cat.sum.len41 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg31, i64 %cat.seg37)
  %sum42 = extractvalue { i64, i1 } %cat.sum.len41, 0
  %ovf43 = extractvalue { i64, i1 } %cat.sum.len41, 1
  br i1 %ovf43, label %str_overflow_abort45, label %cat.sum.len44

choice.else:                                      ; preds = %concat.tot.len16
  %var.load70 = load ptr, ptr %var.badge, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len56
  %choice.res = phi ptr [ %concat.str67, %concat.tot.len56 ], [ %var.load70, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

cat.sum.len44:                                    ; preds = %abort.dead46, %choice.then
  %cat.sum.len47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum42, i64 4)
  %sum48 = extractvalue { i64, i1 } %cat.sum.len47, 0
  %ovf49 = extractvalue { i64, i1 } %cat.sum.len47, 1
  br i1 %ovf49, label %str_overflow_abort51, label %cat.sum.len50

str_overflow_abort45:                             ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %cat.sum.len44

cat.sum.len50:                                    ; preds = %abort.dead52, %cat.sum.len44
  %concat.tot.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum48, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len53, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort51:                             ; preds = %cat.sum.len44
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %cat.sum.len50

concat.tot.len56:                                 ; preds = %abort.dead58, %cat.sum.len50
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum54)
  %cat.dst61 = getelementptr i8, ptr %concat.buf60, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst61, ptr align 1 %cat.seg33, i64 %cat.seg31, i1 false)
  %cat.off62 = add i64 0, %cat.seg31
  %cat.dst63 = getelementptr i8, ptr %concat.buf60, i64 %cat.off62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst63, ptr align 1 %cat.seg39, i64 %cat.seg37, i1 false)
  %cat.off64 = add i64 %cat.off62, %cat.seg37
  %cat.dst65 = getelementptr i8, ptr %concat.buf60, i64 %cat.off64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst65, ptr align 1 %cat.lit.data40, i64 4, i1 false)
  %concat.nul66 = getelementptr i8, ptr %concat.buf60, i64 %sum48
  store i8 0, ptr %concat.nul66, align 1
  %str.build.len.gep68 = getelementptr inbounds { i64, ptr }, ptr %concat.str67, i32 0, i32 0
  store i64 %sum48, ptr %str.build.len.gep68, align 8
  %str.build.data.gep69 = getelementptr inbounds { i64, ptr }, ptr %concat.str67, i32 0, i32 1
  store ptr %concat.buf60, ptr %str.build.data.gep69, align 8
  br label %choice.exit

str_overflow_abort57:                             ; preds = %cat.sum.len50
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %concat.tot.len56
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
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load3 = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len4 = load i64, ptr %str.len, align 8
  %str.len5 = and i64 %str.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.88, align 8
  br label %loop.header.88

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.88:                                   ; preds = %loop.latch.88, %choice.exit
  %counter.load = load i64, ptr %loop.idx.88, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len5
  br i1 %loop.cond, label %loop.body.88, label %loop.exit.nat.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.88, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load7 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load7, 32
  %val.match9 = icmp eq i64 %var.load7, 9
  %case.or = or i1 %val.match, %val.match9
  %val.match10 = icmp eq i64 %var.load7, 10
  %case.or11 = or i1 %case.or, %val.match10
  %val.match12 = icmp eq i64 %var.load7, 13
  %case.or13 = or i1 %case.or11, %val.match12
  %val.match14 = icmp eq i64 %var.load7, 34
  %case.or15 = or i1 %case.or13, %val.match14
  %val.match16 = icmp eq i64 %var.load7, 61
  %case.or17 = or i1 %case.or15, %val.match16
  br i1 %case.or17, label %choice.case, label %choice.next

loop.exit.nat.88:                                 ; preds = %loop.header.88
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit19
  %step.val = load i64, ptr %loop.step.88, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %loop.exit.nat.88
  ret i1 false

choice.exit8:                                     ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then18, label %choice.exit19

choice.case:                                      ; preds = %loop.body.88
  br label %choice.exit8

choice.next:                                      ; preds = %loop.body.88
  br label %choice.exit8

choice.then18:                                    ; preds = %choice.exit8
  ret i1 true

choice.exit19:                                    ; preds = %ret.dead20, %choice.exit8
  br label %loop.latch.88

ret.dead20:                                       ; No predecessors!
  br label %choice.exit19
}

define internal { i64, ptr } @"log::#quote_value"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.c = alloca i64, align 8
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

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len5:                                       ; preds = %abort.dead, %choice.exit
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

str_overflow_abort:                               ; preds = %choice.exit
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
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %str.len24 = load i64, ptr %str.len, align 8
  %str.len25 = and i64 %str.len24, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.header.90:                                   ; preds = %loop.latch.90, %br.done.89
  %counter.load = load i64, ptr %loop.idx.90, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len25
  br i1 %loop.cond, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.90, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data26, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load27 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load27, 34
  br i1 %val.match, label %choice.case, label %choice.next

loop.exit.nat.90:                                 ; preds = %loop.header.90
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %choice.exit28
  %step.val = load i64, ptr %loop.step.90, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %loop.exit.nat.90
  %b.load268 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 0
  %b.rn.cur.len270 = load i64, ptr %b.rn.cur.len269, align 8
  %b.rn.new.len271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len270, i64 1)
  %sum272 = extractvalue { i64, i1 } %b.rn.new.len271, 0
  %ovf273 = extractvalue { i64, i1 } %b.rn.new.len271, 1
  br i1 %ovf273, label %str_overflow_abort275, label %b.rn.new.len274

choice.exit28:                                    ; preds = %b.push_done, %b.grow_done223, %b.grow_done177, %b.grow_done131, %b.grow_done85, %b.grow_done42
  br label %loop.latch.90

choice.case:                                      ; preds = %loop.body.90
  %b.load29 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.18.struct, align 8
  %app.str.len30 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  %b.app.cur.len31 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len31, i64 %app.str.len30)
  %sum32 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf33 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %b.app.new.len34

choice.next:                                      ; preds = %loop.body.90
  %val.match67 = icmp eq i64 %var.load27, 92
  br i1 %val.match67, label %choice.case65, label %choice.next66

b.app.new.len34:                                  ; preds = %abort.dead36, %choice.case
  %b.cap37 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 2
  %b.cap38 = load i64, ptr %b.cap37, align 8
  %b.need.grow39 = icmp slt i64 %b.cap38, %sum32
  br i1 %b.need.grow39, label %b.grow240, label %b.nogrow241

str_overflow_abort35:                             ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %b.app.new.len34

b.grow240:                                        ; preds = %b.app.new.len34
  %b.cap243 = mul i64 %b.cap38, 2
  %b.cap.small44 = icmp slt i64 %b.cap243, 16
  %b.cap.grow45 = select i1 %b.cap.small44, i64 16, i64 %b.cap243
  %b.cap.need46 = icmp slt i64 %b.cap.grow45, %sum32
  %b.new.cap47 = select i1 %b.cap.need46, i64 %sum32, i64 %b.cap.grow45
  %b.cur.len248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  %b.cur.len249 = load i64, ptr %b.cur.len248, align 8
  %b.cur.data250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  %b.cur.data251 = load ptr, ptr %b.cur.data250, align 8
  %b.new.buf.len252 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap47, i64 1)
  %sum53 = extractvalue { i64, i1 } %b.new.buf.len252, 0
  %ovf54 = extractvalue { i64, i1 } %b.new.buf.len252, 1
  br i1 %ovf54, label %str_overflow_abort56, label %b.new.buf.len255

b.nogrow241:                                      ; preds = %b.app.new.len34
  br label %b.grow_done42

b.grow_done42:                                    ; preds = %b.nogrow241, %b.new.buf.len255
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  %b.app.data63 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data63, i64 %b.app.cur.len31
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len30, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data63, i64 %sum32
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  store i64 %sum32, ptr %b.len.gep64, align 8
  br label %choice.exit28

b.new.buf.len255:                                 ; preds = %abort.dead57, %b.grow240
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf259 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum53)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf259, ptr align 1 %b.cur.data251, i64 %b.cur.len249, i1 false)
  %b.grow2.nul60 = getelementptr i8, ptr %b.new.buf259, i64 %b.cur.len249
  store i8 0, ptr %b.grow2.nul60, align 1
  %b.new.data2.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  store ptr %b.new.buf259, ptr %b.new.data2.gep61, align 8
  %b.new.cap2.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 2
  store i64 %b.new.cap47, ptr %b.new.cap2.gep62, align 8
  br label %b.grow_done42

str_overflow_abort56:                             ; preds = %b.grow240
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %b.new.buf.len255

choice.case65:                                    ; preds = %choice.next
  %b.load68 = load ptr, ptr %var.b, align 8
  %app.str.len69 = load i64, ptr @str.19.struct, align 8
  %app.str.len70 = and i64 %app.str.len69, 281474976710655
  %app.str.data71 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %b.app.cur.len72 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load68, i32 0, i32 0
  %b.app.cur.len73 = load i64, ptr %b.app.cur.len72, align 8
  %b.app.new.len74 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len73, i64 %app.str.len70)
  %sum75 = extractvalue { i64, i1 } %b.app.new.len74, 0
  %ovf76 = extractvalue { i64, i1 } %b.app.new.len74, 1
  br i1 %ovf76, label %str_overflow_abort78, label %b.app.new.len77

choice.next66:                                    ; preds = %choice.next
  %val.match113 = icmp eq i64 %var.load27, 10
  br i1 %val.match113, label %choice.case111, label %choice.next112

b.app.new.len77:                                  ; preds = %abort.dead79, %choice.case65
  %b.cap80 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load68, i32 0, i32 2
  %b.cap81 = load i64, ptr %b.cap80, align 8
  %b.need.grow82 = icmp slt i64 %b.cap81, %sum75
  br i1 %b.need.grow82, label %b.grow283, label %b.nogrow284

str_overflow_abort78:                             ; preds = %choice.case65
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead79:                                     ; No predecessors!
  br label %b.app.new.len77

b.grow283:                                        ; preds = %b.app.new.len77
  %b.cap286 = mul i64 %b.cap81, 2
  %b.cap.small87 = icmp slt i64 %b.cap286, 16
  %b.cap.grow88 = select i1 %b.cap.small87, i64 16, i64 %b.cap286
  %b.cap.need89 = icmp slt i64 %b.cap.grow88, %sum75
  %b.new.cap90 = select i1 %b.cap.need89, i64 %sum75, i64 %b.cap.grow88
  %b.cur.len291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load68, i32 0, i32 0
  %b.cur.len292 = load i64, ptr %b.cur.len291, align 8
  %b.cur.data293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load68, i32 0, i32 1
  %b.cur.data294 = load ptr, ptr %b.cur.data293, align 8
  %b.new.buf.len295 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap90, i64 1)
  %sum96 = extractvalue { i64, i1 } %b.new.buf.len295, 0
  %ovf97 = extractvalue { i64, i1 } %b.new.buf.len295, 1
  br i1 %ovf97, label %str_overflow_abort99, label %b.new.buf.len298

b.nogrow284:                                      ; preds = %b.app.new.len77
  br label %b.grow_done85

b.grow_done85:                                    ; preds = %b.nogrow284, %b.new.buf.len298
  %b.app.data106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load68, i32 0, i32 1
  %b.app.data107 = load ptr, ptr %b.app.data106, align 8
  %b.app.dst108 = getelementptr i8, ptr %b.app.data107, i64 %b.app.cur.len73
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst108, ptr align 1 %app.str.data71, i64 %app.str.len70, i1 false)
  %b.app.nul109 = getelementptr i8, ptr %b.app.data107, i64 %sum75
  store i8 0, ptr %b.app.nul109, align 1
  %b.len.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load68, i32 0, i32 0
  store i64 %sum75, ptr %b.len.gep110, align 8
  br label %choice.exit28

b.new.buf.len298:                                 ; preds = %abort.dead100, %b.grow283
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 %sum96)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2102, ptr align 1 %b.cur.data294, i64 %b.cur.len292, i1 false)
  %b.grow2.nul103 = getelementptr i8, ptr %b.new.buf2102, i64 %b.cur.len292
  store i8 0, ptr %b.grow2.nul103, align 1
  %b.new.data2.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load68, i32 0, i32 1
  store ptr %b.new.buf2102, ptr %b.new.data2.gep104, align 8
  %b.new.cap2.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load68, i32 0, i32 2
  store i64 %b.new.cap90, ptr %b.new.cap2.gep105, align 8
  br label %b.grow_done85

str_overflow_abort99:                             ; preds = %b.grow283
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead100:                                    ; No predecessors!
  br label %b.new.buf.len298

choice.case111:                                   ; preds = %choice.next66
  %b.load114 = load ptr, ptr %var.b, align 8
  %app.str.len115 = load i64, ptr @str.20.struct, align 8
  %app.str.len116 = and i64 %app.str.len115, 281474976710655
  %app.str.data117 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %b.app.cur.len118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 0
  %b.app.cur.len119 = load i64, ptr %b.app.cur.len118, align 8
  %b.app.new.len120 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len119, i64 %app.str.len116)
  %sum121 = extractvalue { i64, i1 } %b.app.new.len120, 0
  %ovf122 = extractvalue { i64, i1 } %b.app.new.len120, 1
  br i1 %ovf122, label %str_overflow_abort124, label %b.app.new.len123

choice.next112:                                   ; preds = %choice.next66
  %val.match159 = icmp eq i64 %var.load27, 13
  br i1 %val.match159, label %choice.case157, label %choice.next158

b.app.new.len123:                                 ; preds = %abort.dead125, %choice.case111
  %b.cap126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 2
  %b.cap127 = load i64, ptr %b.cap126, align 8
  %b.need.grow128 = icmp slt i64 %b.cap127, %sum121
  br i1 %b.need.grow128, label %b.grow2129, label %b.nogrow2130

str_overflow_abort124:                            ; preds = %choice.case111
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead125:                                    ; No predecessors!
  br label %b.app.new.len123

b.grow2129:                                       ; preds = %b.app.new.len123
  %b.cap2132 = mul i64 %b.cap127, 2
  %b.cap.small133 = icmp slt i64 %b.cap2132, 16
  %b.cap.grow134 = select i1 %b.cap.small133, i64 16, i64 %b.cap2132
  %b.cap.need135 = icmp slt i64 %b.cap.grow134, %sum121
  %b.new.cap136 = select i1 %b.cap.need135, i64 %sum121, i64 %b.cap.grow134
  %b.cur.len2137 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 0
  %b.cur.len2138 = load i64, ptr %b.cur.len2137, align 8
  %b.cur.data2139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 1
  %b.cur.data2140 = load ptr, ptr %b.cur.data2139, align 8
  %b.new.buf.len2141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap136, i64 1)
  %sum142 = extractvalue { i64, i1 } %b.new.buf.len2141, 0
  %ovf143 = extractvalue { i64, i1 } %b.new.buf.len2141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %b.new.buf.len2144

b.nogrow2130:                                     ; preds = %b.app.new.len123
  br label %b.grow_done131

b.grow_done131:                                   ; preds = %b.nogrow2130, %b.new.buf.len2144
  %b.app.data152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 1
  %b.app.data153 = load ptr, ptr %b.app.data152, align 8
  %b.app.dst154 = getelementptr i8, ptr %b.app.data153, i64 %b.app.cur.len119
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst154, ptr align 1 %app.str.data117, i64 %app.str.len116, i1 false)
  %b.app.nul155 = getelementptr i8, ptr %b.app.data153, i64 %sum121
  store i8 0, ptr %b.app.nul155, align 1
  %b.len.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 0
  store i64 %sum121, ptr %b.len.gep156, align 8
  br label %choice.exit28

b.new.buf.len2144:                                ; preds = %abort.dead146, %b.grow2129
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 %sum142)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2148, ptr align 1 %b.cur.data2140, i64 %b.cur.len2138, i1 false)
  %b.grow2.nul149 = getelementptr i8, ptr %b.new.buf2148, i64 %b.cur.len2138
  store i8 0, ptr %b.grow2.nul149, align 1
  %b.new.data2.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 1
  store ptr %b.new.buf2148, ptr %b.new.data2.gep150, align 8
  %b.new.cap2.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load114, i32 0, i32 2
  store i64 %b.new.cap136, ptr %b.new.cap2.gep151, align 8
  br label %b.grow_done131

str_overflow_abort145:                            ; preds = %b.grow2129
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead146:                                    ; No predecessors!
  br label %b.new.buf.len2144

choice.case157:                                   ; preds = %choice.next112
  %b.load160 = load ptr, ptr %var.b, align 8
  %app.str.len161 = load i64, ptr @str.21.struct, align 8
  %app.str.len162 = and i64 %app.str.len161, 281474976710655
  %app.str.data163 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %b.app.cur.len164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load160, i32 0, i32 0
  %b.app.cur.len165 = load i64, ptr %b.app.cur.len164, align 8
  %b.app.new.len166 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len165, i64 %app.str.len162)
  %sum167 = extractvalue { i64, i1 } %b.app.new.len166, 0
  %ovf168 = extractvalue { i64, i1 } %b.app.new.len166, 1
  br i1 %ovf168, label %str_overflow_abort170, label %b.app.new.len169

choice.next158:                                   ; preds = %choice.next112
  %val.match205 = icmp eq i64 %var.load27, 9
  br i1 %val.match205, label %choice.case203, label %choice.next204

b.app.new.len169:                                 ; preds = %abort.dead171, %choice.case157
  %b.cap172 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load160, i32 0, i32 2
  %b.cap173 = load i64, ptr %b.cap172, align 8
  %b.need.grow174 = icmp slt i64 %b.cap173, %sum167
  br i1 %b.need.grow174, label %b.grow2175, label %b.nogrow2176

str_overflow_abort170:                            ; preds = %choice.case157
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead171:                                    ; No predecessors!
  br label %b.app.new.len169

b.grow2175:                                       ; preds = %b.app.new.len169
  %b.cap2178 = mul i64 %b.cap173, 2
  %b.cap.small179 = icmp slt i64 %b.cap2178, 16
  %b.cap.grow180 = select i1 %b.cap.small179, i64 16, i64 %b.cap2178
  %b.cap.need181 = icmp slt i64 %b.cap.grow180, %sum167
  %b.new.cap182 = select i1 %b.cap.need181, i64 %sum167, i64 %b.cap.grow180
  %b.cur.len2183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load160, i32 0, i32 0
  %b.cur.len2184 = load i64, ptr %b.cur.len2183, align 8
  %b.cur.data2185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load160, i32 0, i32 1
  %b.cur.data2186 = load ptr, ptr %b.cur.data2185, align 8
  %b.new.buf.len2187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap182, i64 1)
  %sum188 = extractvalue { i64, i1 } %b.new.buf.len2187, 0
  %ovf189 = extractvalue { i64, i1 } %b.new.buf.len2187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %b.new.buf.len2190

b.nogrow2176:                                     ; preds = %b.app.new.len169
  br label %b.grow_done177

b.grow_done177:                                   ; preds = %b.nogrow2176, %b.new.buf.len2190
  %b.app.data198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load160, i32 0, i32 1
  %b.app.data199 = load ptr, ptr %b.app.data198, align 8
  %b.app.dst200 = getelementptr i8, ptr %b.app.data199, i64 %b.app.cur.len165
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst200, ptr align 1 %app.str.data163, i64 %app.str.len162, i1 false)
  %b.app.nul201 = getelementptr i8, ptr %b.app.data199, i64 %sum167
  store i8 0, ptr %b.app.nul201, align 1
  %b.len.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load160, i32 0, i32 0
  store i64 %sum167, ptr %b.len.gep202, align 8
  br label %choice.exit28

b.new.buf.len2190:                                ; preds = %abort.dead192, %b.grow2175
  %arena.cur193 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 %sum188)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2194, ptr align 1 %b.cur.data2186, i64 %b.cur.len2184, i1 false)
  %b.grow2.nul195 = getelementptr i8, ptr %b.new.buf2194, i64 %b.cur.len2184
  store i8 0, ptr %b.grow2.nul195, align 1
  %b.new.data2.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load160, i32 0, i32 1
  store ptr %b.new.buf2194, ptr %b.new.data2.gep196, align 8
  %b.new.cap2.gep197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load160, i32 0, i32 2
  store i64 %b.new.cap182, ptr %b.new.cap2.gep197, align 8
  br label %b.grow_done177

str_overflow_abort191:                            ; preds = %b.grow2175
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead192:                                    ; No predecessors!
  br label %b.new.buf.len2190

choice.case203:                                   ; preds = %choice.next158
  %b.load206 = load ptr, ptr %var.b, align 8
  %app.str.len207 = load i64, ptr @str.22.struct, align 8
  %app.str.len208 = and i64 %app.str.len207, 281474976710655
  %app.str.data209 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %b.app.cur.len210 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 0
  %b.app.cur.len211 = load i64, ptr %b.app.cur.len210, align 8
  %b.app.new.len212 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len211, i64 %app.str.len208)
  %sum213 = extractvalue { i64, i1 } %b.app.new.len212, 0
  %ovf214 = extractvalue { i64, i1 } %b.app.new.len212, 1
  br i1 %ovf214, label %str_overflow_abort216, label %b.app.new.len215

choice.next204:                                   ; preds = %choice.next158
  %b.load249 = load ptr, ptr %var.b, align 8
  %var.load250 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load250, 0
  %b.b.le255 = icmp sle i64 %var.load250, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.app.new.len215:                                 ; preds = %abort.dead217, %choice.case203
  %b.cap218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 2
  %b.cap219 = load i64, ptr %b.cap218, align 8
  %b.need.grow220 = icmp slt i64 %b.cap219, %sum213
  br i1 %b.need.grow220, label %b.grow2221, label %b.nogrow2222

str_overflow_abort216:                            ; preds = %choice.case203
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead217:                                    ; No predecessors!
  br label %b.app.new.len215

b.grow2221:                                       ; preds = %b.app.new.len215
  %b.cap2224 = mul i64 %b.cap219, 2
  %b.cap.small225 = icmp slt i64 %b.cap2224, 16
  %b.cap.grow226 = select i1 %b.cap.small225, i64 16, i64 %b.cap2224
  %b.cap.need227 = icmp slt i64 %b.cap.grow226, %sum213
  %b.new.cap228 = select i1 %b.cap.need227, i64 %sum213, i64 %b.cap.grow226
  %b.cur.len2229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 0
  %b.cur.len2230 = load i64, ptr %b.cur.len2229, align 8
  %b.cur.data2231 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 1
  %b.cur.data2232 = load ptr, ptr %b.cur.data2231, align 8
  %b.new.buf.len2233 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap228, i64 1)
  %sum234 = extractvalue { i64, i1 } %b.new.buf.len2233, 0
  %ovf235 = extractvalue { i64, i1 } %b.new.buf.len2233, 1
  br i1 %ovf235, label %str_overflow_abort237, label %b.new.buf.len2236

b.nogrow2222:                                     ; preds = %b.app.new.len215
  br label %b.grow_done223

b.grow_done223:                                   ; preds = %b.nogrow2222, %b.new.buf.len2236
  %b.app.data244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 1
  %b.app.data245 = load ptr, ptr %b.app.data244, align 8
  %b.app.dst246 = getelementptr i8, ptr %b.app.data245, i64 %b.app.cur.len211
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst246, ptr align 1 %app.str.data209, i64 %app.str.len208, i1 false)
  %b.app.nul247 = getelementptr i8, ptr %b.app.data245, i64 %sum213
  store i8 0, ptr %b.app.nul247, align 1
  %b.len.gep248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 0
  store i64 %sum213, ptr %b.len.gep248, align 8
  br label %choice.exit28

b.new.buf.len2236:                                ; preds = %abort.dead238, %b.grow2221
  %arena.cur239 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 %sum234)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2240, ptr align 1 %b.cur.data2232, i64 %b.cur.len2230, i1 false)
  %b.grow2.nul241 = getelementptr i8, ptr %b.new.buf2240, i64 %b.cur.len2230
  store i8 0, ptr %b.grow2.nul241, align 1
  %b.new.data2.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 1
  store ptr %b.new.buf2240, ptr %b.new.data2.gep242, align 8
  %b.new.cap2.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load206, i32 0, i32 2
  store i64 %b.new.cap228, ptr %b.new.cap2.gep243, align 8
  br label %b.grow_done223

str_overflow_abort237:                            ; preds = %b.grow2221
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead238:                                    ; No predecessors!
  br label %b.new.buf.len2236

b.byte_ok:                                        ; preds = %abort.dead251, %choice.next204
  %b.byte.i8 = trunc i64 %var.load250 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 0
  %b.len252 = load i64, ptr %b.len, align 8
  %b.cap253 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 2
  %b.cap254 = load i64, ptr %b.cap253, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 1
  %b.data255 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len252, %b.cap254
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next204
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead251:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2256 = mul i64 %b.cap254, 2
  %b.cap.small257 = icmp slt i64 %b.cap2256, 16
  %b.new.cap258 = select i1 %b.cap.small257, i64 16, i64 %b.cap2256
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap258, i64 1)
  %sum259 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf260 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf260, label %str_overflow_abort262, label %b.new.buf.len261

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len261
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 1
  %b.cur.data265 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 0
  %b.cur.len266 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data265, i64 %b.cur.len266
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len266, 1
  %b.nul = getelementptr i8, ptr %b.cur.data265, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep267, align 8
  br label %choice.exit28

b.new.buf.len261:                                 ; preds = %abort.dead263, %b.grow
  %arena.cur264 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 %sum259)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data255, i64 %b.len252, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len252
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 2
  store i64 %b.new.cap258, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort262:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead263:                                    ; No predecessors!
  br label %b.new.buf.len261

b.rn.new.len274:                                  ; preds = %abort.dead276, %loop.exit.90
  %b.cap277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 2
  %b.cap278 = load i64, ptr %b.cap277, align 8
  %b.need.grow279 = icmp slt i64 %b.cap278, %sum272
  br i1 %b.need.grow279, label %b.grow2280, label %b.nogrow2281

str_overflow_abort275:                            ; preds = %loop.exit.90
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead276:                                    ; No predecessors!
  br label %b.rn.new.len274

b.grow2280:                                       ; preds = %b.rn.new.len274
  %b.cap2283 = mul i64 %b.cap278, 2
  %b.cap.small284 = icmp slt i64 %b.cap2283, 16
  %b.cap.grow285 = select i1 %b.cap.small284, i64 16, i64 %b.cap2283
  %b.cap.need286 = icmp slt i64 %b.cap.grow285, %sum272
  %b.new.cap287 = select i1 %b.cap.need286, i64 %sum272, i64 %b.cap.grow285
  %b.cur.len2288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 0
  %b.cur.len2289 = load i64, ptr %b.cur.len2288, align 8
  %b.cur.data2290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 1
  %b.cur.data2291 = load ptr, ptr %b.cur.data2290, align 8
  %b.new.buf.len2292 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap287, i64 1)
  %sum293 = extractvalue { i64, i1 } %b.new.buf.len2292, 0
  %ovf294 = extractvalue { i64, i1 } %b.new.buf.len2292, 1
  br i1 %ovf294, label %str_overflow_abort296, label %b.new.buf.len2295

b.nogrow2281:                                     ; preds = %b.rn.new.len274
  br label %b.grow_done282

b.grow_done282:                                   ; preds = %b.nogrow2281, %b.new.buf.len2295
  %b.rn.data303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 1
  %b.rn.data304 = load ptr, ptr %b.rn.data303, align 8
  %b.rn.dst305 = getelementptr i8, ptr %b.rn.data304, i64 %b.rn.cur.len270
  br i1 true, label %br.b1.91, label %br.c2.91

b.new.buf.len2295:                                ; preds = %abort.dead297, %b.grow2280
  %arena.cur298 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2299 = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 %sum293)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2299, ptr align 1 %b.cur.data2291, i64 %b.cur.len2289, i1 false)
  %b.grow2.nul300 = getelementptr i8, ptr %b.new.buf2299, i64 %b.cur.len2289
  store i8 0, ptr %b.grow2.nul300, align 1
  %b.new.data2.gep301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 1
  store ptr %b.new.buf2299, ptr %b.new.data2.gep301, align 8
  %b.new.cap2.gep302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 2
  store i64 %b.new.cap287, ptr %b.new.cap2.gep302, align 8
  br label %b.grow_done282

str_overflow_abort296:                            ; preds = %b.grow2280
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead297:                                    ; No predecessors!
  br label %b.new.buf.len2295

br.b1.91:                                         ; preds = %b.grow_done282
  store i8 34, ptr %b.rn.dst305, align 1
  br label %br.done.91

br.c2.91:                                         ; preds = %b.grow_done282
  br i1 true, label %br.b2.91, label %br.c3.91

br.b2.91:                                         ; preds = %br.c2.91
  store i8 -64, ptr %b.rn.dst305, align 1
  %br.dst1306 = getelementptr i8, ptr %b.rn.dst305, i64 1
  store i8 -94, ptr %br.dst1306, align 1
  br label %br.done.91

br.c3.91:                                         ; preds = %br.c2.91
  br i1 true, label %br.b3.91, label %br.b4.91

br.b3.91:                                         ; preds = %br.c3.91
  store i8 -32, ptr %b.rn.dst305, align 1
  %br.dst1.3307 = getelementptr i8, ptr %b.rn.dst305, i64 1
  store i8 -128, ptr %br.dst1.3307, align 1
  %br.dst2.3308 = getelementptr i8, ptr %b.rn.dst305, i64 2
  store i8 -94, ptr %br.dst2.3308, align 1
  br label %br.done.91

br.b4.91:                                         ; preds = %br.c3.91
  store i8 -16, ptr %b.rn.dst305, align 1
  %br.dst1.4309 = getelementptr i8, ptr %b.rn.dst305, i64 1
  store i8 -128, ptr %br.dst1.4309, align 1
  %br.dst2.4310 = getelementptr i8, ptr %b.rn.dst305, i64 2
  store i8 -128, ptr %br.dst2.4310, align 1
  %br.dst3.4311 = getelementptr i8, ptr %b.rn.dst305, i64 3
  store i8 -94, ptr %br.dst3.4311, align 1
  br label %br.done.91

br.done.91:                                       ; preds = %br.b4.91, %br.b3.91, %br.b2.91, %br.b1.91
  %br.nul312 = getelementptr i8, ptr %b.rn.data304, i64 %sum272
  store i8 0, ptr %br.nul312, align 1
  %b.len.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 0
  store i64 %sum272, ptr %b.len.gep313, align 8
  %var.load314 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 0
  %b.freeze.len315 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 1
  %b.freeze.data316 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len315, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data316, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack317 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack317
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal { i64, ptr } @"log::#append_fields"(ptr %0, ptr %1) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._78 = alloca ptr, align 8
  %var._i77 = alloca i64, align 8
  %loop.step.93 = alloca i64, align 8
  %loop.idx.93 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.f = alloca ptr, align 8
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
  store i64 %str.len.query7, ptr %"var.total'", align 8
  %var.load8 = load ptr, ptr %var.fields, align 8
  %a.load9 = load ptr, ptr %var.fields, align 8
  %a.null10 = icmp eq ptr %a.load9, null
  br i1 %a.null10, label %a.create11, label %a.after12

ret.dead:                                         ; No predecessors!
  br label %choice.exit

a.create11:                                       ; preds = %choice.exit
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

a.after12:                                        ; preds = %a.create11, %choice.exit
  %a.load220 = load ptr, ptr %var.fields, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load220, i32 0, i32 0
  %arr.cycle.len21 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load220, i32 0, i32 1
  %arr.cycle.data22 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %a.after12
  %counter.load = load i64, ptr %loop.idx.92, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len21
  br i1 %loop.cond, label %loop.body.92, label %loop.exit.nat.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.92, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data22, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  %var.load23 = load i64, ptr %"var.total'", align 8
  %addtmp = add i64 %var.load23, 1
  %var.load24 = load ptr, ptr %var.f, align 8
  %str.len.query25 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %str.len.query26 = load i64, ptr %str.len.query25, align 8
  %str.len.query27 = and i64 %str.len.query26, 281474976710655
  %addtmp28 = add i64 %addtmp, %str.len.query27
  store i64 %addtmp28, ptr %"var.total'", align 8
  br label %loop.latch.92

loop.exit.nat.92:                                 ; preds = %loop.header.92
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %loop.body.92
  %step.val = load i64, ptr %loop.step.92, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %loop.exit.nat.92
  %var.load29 = load i64, ptr %"var.total'", align 8
  %addtmp30 = add i64 %var.load29, 8
  %cap.neg = icmp slt i64 %addtmp30, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp30
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len31

b.buf.len31:                                      ; preds = %abort.dead, %loop.exit.92
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load33 = load ptr, ptr %var.msg, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %app.str.len34 = load i64, ptr %app.str.len, align 8
  %app.str.len35 = and i64 %app.str.len34, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %app.str.data36 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len37 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len37, i64 %app.str.len35)
  %sum38 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf39 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf39, label %str_overflow_abort41, label %b.app.new.len40

str_overflow_abort:                               ; preds = %loop.exit.92
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len31

b.app.new.len40:                                  ; preds = %abort.dead42, %b.buf.len31
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap43 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap43, %sum38
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort41:                             ; preds = %b.buf.len31
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %b.app.new.len40

b.grow2:                                          ; preds = %b.app.new.len40
  %b.cap2 = mul i64 %b.cap43, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum38
  %b.new.cap = select i1 %b.cap.need, i64 %sum38, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len244 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data245 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum46 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf47 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.new.buf.len248

b.nogrow2:                                        ; preds = %b.app.new.len40
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len248
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data52 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data52, i64 %b.app.cur.len37
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data36, i64 %app.str.len35, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data52, i64 %sum38
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum38, ptr %b.len.gep53, align 8
  %var.load54 = load ptr, ptr %var.fields, align 8
  %a.load55 = load ptr, ptr %var.fields, align 8
  %a.null56 = icmp eq ptr %a.load55, null
  br i1 %a.null56, label %a.create57, label %a.after58

b.new.buf.len248:                                 ; preds = %abort.dead50, %b.grow2
  %arena.cur51 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data245, i64 %b.cur.len244, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len244
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort49:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %b.new.buf.len248

a.create57:                                       ; preds = %b.grow_done
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 24)
  %arena.cur61 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 128)
  %a.len.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create60, i32 0, i32 0
  store i64 0, ptr %a.len.gep63, align 8
  %a.data.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create60, i32 0, i32 1
  store ptr %a.buf62, ptr %a.data.gep64, align 8
  %a.cap.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create60, i32 0, i32 2
  store i64 16, ptr %a.cap.gep65, align 8
  store ptr %a.create60, ptr %var.fields, align 8
  br label %a.after58

a.after58:                                        ; preds = %a.create57, %b.grow_done
  %a.load266 = load ptr, ptr %var.fields, align 8
  %arr.cycle.len67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load266, i32 0, i32 0
  %arr.cycle.len68 = load i64, ptr %arr.cycle.len67, align 8
  %arr.cycle.data69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load266, i32 0, i32 1
  %arr.cycle.data70 = load ptr, ptr %arr.cycle.data69, align 8
  store i64 0, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.header.93:                                   ; preds = %loop.latch.93, %a.after58
  %counter.load71 = load i64, ptr %loop.idx.93, align 8
  %loop.cond72 = icmp slt i64 %counter.load71, %arr.cycle.len68
  br i1 %loop.cond72, label %loop.body.93, label %loop.exit.nat.93

loop.body.93:                                     ; preds = %loop.header.93
  %loop.rel.i73 = sub i64 %counter.load71, 0
  store i64 1, ptr %loop.step.93, align 8
  %arr.elem.gep74 = getelementptr i64, ptr %arr.cycle.data70, i64 %counter.load71
  %arr.elem.raw75 = load i64, ptr %arr.elem.gep74, align 8
  %slot.i2p76 = inttoptr i64 %arr.elem.raw75 to ptr
  store i64 %loop.rel.i73, ptr %var._i77, align 8
  store ptr %slot.i2p76, ptr %var._78, align 8
  store ptr %slot.i2p76, ptr %var.f, align 8
  %var.load79 = load ptr, ptr %var.f, align 8
  %str.len.query80 = getelementptr inbounds { i64, ptr }, ptr %var.load79, i32 0, i32 0
  %str.len.query81 = load i64, ptr %str.len.query80, align 8
  %str.len.query82 = and i64 %str.len.query81, 281474976710655
  %cmptmp83 = icmp sgt i64 %str.len.query82, 0
  br i1 %cmptmp83, label %choice.then84, label %choice.exit85

loop.exit.nat.93:                                 ; preds = %loop.header.93
  br label %loop.exit.93

loop.latch.93:                                    ; preds = %choice.exit85
  %step.val167 = load i64, ptr %loop.step.93, align 8
  %loop.next168 = add i64 %counter.load71, %step.val167
  store i64 %loop.next168, ptr %loop.idx.93, align 8
  br label %loop.header.93

loop.exit.93:                                     ; preds = %loop.exit.nat.93
  %var.load169 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load169, i32 0, i32 0
  %b.freeze.len170 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load169, i32 0, i32 1
  %b.freeze.data171 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len170, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data171, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load169, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load169, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load169, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack172 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack172

choice.then84:                                    ; preds = %loop.body.93
  %b.load86 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 0
  %b.rn.cur.len87 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len87, i64 1)
  %sum88 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf89 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf89, label %str_overflow_abort91, label %b.rn.new.len90

choice.exit85:                                    ; preds = %b.grow_done141, %loop.body.93
  br label %loop.latch.93

b.rn.new.len90:                                   ; preds = %abort.dead92, %choice.then84
  %b.cap93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 2
  %b.cap94 = load i64, ptr %b.cap93, align 8
  %b.need.grow95 = icmp slt i64 %b.cap94, %sum88
  br i1 %b.need.grow95, label %b.grow296, label %b.nogrow297

str_overflow_abort91:                             ; preds = %choice.then84
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %b.rn.new.len90

b.grow296:                                        ; preds = %b.rn.new.len90
  %b.cap299 = mul i64 %b.cap94, 2
  %b.cap.small100 = icmp slt i64 %b.cap299, 16
  %b.cap.grow101 = select i1 %b.cap.small100, i64 16, i64 %b.cap299
  %b.cap.need102 = icmp slt i64 %b.cap.grow101, %sum88
  %b.new.cap103 = select i1 %b.cap.need102, i64 %sum88, i64 %b.cap.grow101
  %b.cur.len2104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 0
  %b.cur.len2105 = load i64, ptr %b.cur.len2104, align 8
  %b.cur.data2106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 1
  %b.cur.data2107 = load ptr, ptr %b.cur.data2106, align 8
  %b.new.buf.len2108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap103, i64 1)
  %sum109 = extractvalue { i64, i1 } %b.new.buf.len2108, 0
  %ovf110 = extractvalue { i64, i1 } %b.new.buf.len2108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %b.new.buf.len2111

b.nogrow297:                                      ; preds = %b.rn.new.len90
  br label %b.grow_done98

b.grow_done98:                                    ; preds = %b.nogrow297, %b.new.buf.len2111
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 1
  %b.rn.data119 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data119, i64 %b.rn.cur.len87
  br i1 true, label %br.b1.94, label %br.c2.94

b.new.buf.len2111:                                ; preds = %abort.dead113, %b.grow296
  %arena.cur114 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 %sum109)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2115, ptr align 1 %b.cur.data2107, i64 %b.cur.len2105, i1 false)
  %b.grow2.nul116 = getelementptr i8, ptr %b.new.buf2115, i64 %b.cur.len2105
  store i8 0, ptr %b.grow2.nul116, align 1
  %b.new.data2.gep117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 1
  store ptr %b.new.buf2115, ptr %b.new.data2.gep117, align 8
  %b.new.cap2.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 2
  store i64 %b.new.cap103, ptr %b.new.cap2.gep118, align 8
  br label %b.grow_done98

str_overflow_abort112:                            ; preds = %b.grow296
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %b.new.buf.len2111

br.b1.94:                                         ; preds = %b.grow_done98
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.94

br.c2.94:                                         ; preds = %b.grow_done98
  br i1 true, label %br.b2.94, label %br.c3.94

br.b2.94:                                         ; preds = %br.c2.94
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.94

br.c3.94:                                         ; preds = %br.c2.94
  br i1 true, label %br.b3.94, label %br.b4.94

br.b3.94:                                         ; preds = %br.c3.94
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.94

br.b4.94:                                         ; preds = %br.c3.94
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.94

br.done.94:                                       ; preds = %br.b4.94, %br.b3.94, %br.b2.94, %br.b1.94
  %br.nul = getelementptr i8, ptr %b.rn.data119, i64 %sum88
  store i8 0, ptr %br.nul, align 1
  %b.len.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 0
  store i64 %sum88, ptr %b.len.gep120, align 8
  %b.load121 = load ptr, ptr %var.b, align 8
  %var.load122 = load ptr, ptr %var.f, align 8
  %app.str.len123 = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 0
  %app.str.len124 = load i64, ptr %app.str.len123, align 8
  %app.str.len125 = and i64 %app.str.len124, 281474976710655
  %app.str.data126 = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 1
  %app.str.data127 = load ptr, ptr %app.str.data126, align 8
  %b.app.cur.len128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 0
  %b.app.cur.len129 = load i64, ptr %b.app.cur.len128, align 8
  %b.app.new.len130 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len129, i64 %app.str.len125)
  %sum131 = extractvalue { i64, i1 } %b.app.new.len130, 0
  %ovf132 = extractvalue { i64, i1 } %b.app.new.len130, 1
  br i1 %ovf132, label %str_overflow_abort134, label %b.app.new.len133

b.app.new.len133:                                 ; preds = %abort.dead135, %br.done.94
  %b.cap136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 2
  %b.cap137 = load i64, ptr %b.cap136, align 8
  %b.need.grow138 = icmp slt i64 %b.cap137, %sum131
  br i1 %b.need.grow138, label %b.grow2139, label %b.nogrow2140

str_overflow_abort134:                            ; preds = %br.done.94
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead135:                                    ; No predecessors!
  br label %b.app.new.len133

b.grow2139:                                       ; preds = %b.app.new.len133
  %b.cap2142 = mul i64 %b.cap137, 2
  %b.cap.small143 = icmp slt i64 %b.cap2142, 16
  %b.cap.grow144 = select i1 %b.cap.small143, i64 16, i64 %b.cap2142
  %b.cap.need145 = icmp slt i64 %b.cap.grow144, %sum131
  %b.new.cap146 = select i1 %b.cap.need145, i64 %sum131, i64 %b.cap.grow144
  %b.cur.len2147 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 0
  %b.cur.len2148 = load i64, ptr %b.cur.len2147, align 8
  %b.cur.data2149 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 1
  %b.cur.data2150 = load ptr, ptr %b.cur.data2149, align 8
  %b.new.buf.len2151 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap146, i64 1)
  %sum152 = extractvalue { i64, i1 } %b.new.buf.len2151, 0
  %ovf153 = extractvalue { i64, i1 } %b.new.buf.len2151, 1
  br i1 %ovf153, label %str_overflow_abort155, label %b.new.buf.len2154

b.nogrow2140:                                     ; preds = %b.app.new.len133
  br label %b.grow_done141

b.grow_done141:                                   ; preds = %b.nogrow2140, %b.new.buf.len2154
  %b.app.data162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 1
  %b.app.data163 = load ptr, ptr %b.app.data162, align 8
  %b.app.dst164 = getelementptr i8, ptr %b.app.data163, i64 %b.app.cur.len129
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst164, ptr align 1 %app.str.data127, i64 %app.str.len125, i1 false)
  %b.app.nul165 = getelementptr i8, ptr %b.app.data163, i64 %sum131
  store i8 0, ptr %b.app.nul165, align 1
  %b.len.gep166 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 0
  store i64 %sum131, ptr %b.len.gep166, align 8
  br label %choice.exit85

b.new.buf.len2154:                                ; preds = %abort.dead156, %b.grow2139
  %arena.cur157 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 %sum152)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2158, ptr align 1 %b.cur.data2150, i64 %b.cur.len2148, i1 false)
  %b.grow2.nul159 = getelementptr i8, ptr %b.new.buf2158, i64 %b.cur.len2148
  store i8 0, ptr %b.grow2.nul159, align 1
  %b.new.data2.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 1
  store ptr %b.new.buf2158, ptr %b.new.data2.gep160, align 8
  %b.new.cap2.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load121, i32 0, i32 2
  store i64 %b.new.cap146, ptr %b.new.cap2.gep161, align 8
  br label %b.grow_done141

str_overflow_abort155:                            ; preds = %b.grow2139
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead156:                                    ; No predecessors!
  br label %b.new.buf.len2154
}

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
  %eq.rhs.len = load i64, ptr @str.23.struct, align 8
  %eq.rhs.len6 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len6
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.exit:                                      ; preds = %choice.next110, %choice.case109, %choice.case70, %choice.case32, %choice.case9, %choice.case
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.case ], [ %ram.pay31, %choice.case9 ], [ %ram.pay69, %choice.case32 ], [ %ram.pay108, %choice.case70 ], [ %ram.pay163, %choice.case109 ], [ zeroinitializer, %choice.next110 ]
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
  %eq.rhs.len14 = load i64, ptr @str.24.struct, align 8
  %eq.rhs.len15 = and i64 %eq.rhs.len14, 281474976710655
  %eq.len16 = icmp eq i64 %eq.lhs.len13, %eq.rhs.len15
  br i1 %eq.len16, label %str.eq.then17, label %str.eq.else18

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.case9:                                     ; preds = %str.eq.merge19
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc27, i32 0, i32 0
  store i64 1, ptr %tag.gep28, align 8
  %pay.gep29 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc27, i32 0, i32 1
  store ptr null, ptr %pay.gep29, align 8
  %p.to.i6430 = ptrtoint ptr %enum.alloc27 to i64
  %ram.pay31 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6430, 1
  br label %choice.exit

choice.next10:                                    ; preds = %str.eq.merge19
  %eq.lhs.len34 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len35 = load i64, ptr %eq.lhs.len34, align 8
  %eq.lhs.len36 = and i64 %eq.lhs.len35, 281474976710655
  %eq.rhs.len37 = load i64, ptr @str.25.struct, align 8
  %eq.rhs.len38 = and i64 %eq.rhs.len37, 281474976710655
  %eq.len39 = icmp eq i64 %eq.lhs.len36, %eq.rhs.len38
  br i1 %eq.len39, label %str.eq.then40, label %str.eq.else41

str.eq.then17:                                    ; preds = %choice.next
  %eq.lhs.data20 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data21 = load ptr, ptr %eq.lhs.data20, align 8
  %eq.rhs.data22 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
  %eq.memcmp23 = call i32 @memcmp(ptr %eq.lhs.data21, ptr %eq.rhs.data22, i64 %eq.lhs.len13)
  %eq.cmp.zero24 = icmp eq i32 %eq.memcmp23, 0
  br label %str.eq.merge19

str.eq.else18:                                    ; preds = %choice.next
  br label %str.eq.merge19

str.eq.merge19:                                   ; preds = %str.eq.else18, %str.eq.then17
  %str.eq.result25 = phi i1 [ %eq.cmp.zero24, %str.eq.then17 ], [ false, %str.eq.else18 ]
  br i1 %str.eq.result25, label %choice.case9, label %choice.next10

choice.case32:                                    ; preds = %str.eq.merge57
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %tag.gep66 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc65, i32 0, i32 0
  store i64 2, ptr %tag.gep66, align 8
  %pay.gep67 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc65, i32 0, i32 1
  store ptr null, ptr %pay.gep67, align 8
  %p.to.i6468 = ptrtoint ptr %enum.alloc65 to i64
  %ram.pay69 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6468, 1
  br label %choice.exit

choice.next33:                                    ; preds = %str.eq.merge57
  %eq.lhs.len72 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len73 = load i64, ptr %eq.lhs.len72, align 8
  %eq.lhs.len74 = and i64 %eq.lhs.len73, 281474976710655
  %eq.rhs.len75 = load i64, ptr @str.27.struct, align 8
  %eq.rhs.len76 = and i64 %eq.rhs.len75, 281474976710655
  %eq.len77 = icmp eq i64 %eq.lhs.len74, %eq.rhs.len76
  br i1 %eq.len77, label %str.eq.then78, label %str.eq.else79

str.eq.then40:                                    ; preds = %choice.next10
  %eq.lhs.data43 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data44 = load ptr, ptr %eq.lhs.data43, align 8
  %eq.rhs.data45 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.25.struct, i32 0, i32 1), align 8
  %eq.memcmp46 = call i32 @memcmp(ptr %eq.lhs.data44, ptr %eq.rhs.data45, i64 %eq.lhs.len36)
  %eq.cmp.zero47 = icmp eq i32 %eq.memcmp46, 0
  br label %str.eq.merge42

str.eq.else41:                                    ; preds = %choice.next10
  br label %str.eq.merge42

str.eq.merge42:                                   ; preds = %str.eq.else41, %str.eq.then40
  %str.eq.result48 = phi i1 [ %eq.cmp.zero47, %str.eq.then40 ], [ false, %str.eq.else41 ]
  %eq.lhs.len49 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len50 = load i64, ptr %eq.lhs.len49, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %eq.rhs.len52 = load i64, ptr @str.26.struct, align 8
  %eq.rhs.len53 = and i64 %eq.rhs.len52, 281474976710655
  %eq.len54 = icmp eq i64 %eq.lhs.len51, %eq.rhs.len53
  br i1 %eq.len54, label %str.eq.then55, label %str.eq.else56

str.eq.then55:                                    ; preds = %str.eq.merge42
  %eq.lhs.data58 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data59 = load ptr, ptr %eq.lhs.data58, align 8
  %eq.rhs.data60 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %eq.memcmp61 = call i32 @memcmp(ptr %eq.lhs.data59, ptr %eq.rhs.data60, i64 %eq.lhs.len51)
  %eq.cmp.zero62 = icmp eq i32 %eq.memcmp61, 0
  br label %str.eq.merge57

str.eq.else56:                                    ; preds = %str.eq.merge42
  br label %str.eq.merge57

str.eq.merge57:                                   ; preds = %str.eq.else56, %str.eq.then55
  %str.eq.result63 = phi i1 [ %eq.cmp.zero62, %str.eq.then55 ], [ false, %str.eq.else56 ]
  %case.or = or i1 %str.eq.result48, %str.eq.result63
  br i1 %case.or, label %choice.case32, label %choice.next33

choice.case70:                                    ; preds = %str.eq.merge95
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 16)
  %tag.gep105 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc104, i32 0, i32 0
  store i64 3, ptr %tag.gep105, align 8
  %pay.gep106 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc104, i32 0, i32 1
  store ptr null, ptr %pay.gep106, align 8
  %p.to.i64107 = ptrtoint ptr %enum.alloc104 to i64
  %ram.pay108 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64107, 1
  br label %choice.exit

choice.next71:                                    ; preds = %str.eq.merge95
  %eq.lhs.len111 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len112 = load i64, ptr %eq.lhs.len111, align 8
  %eq.lhs.len113 = and i64 %eq.lhs.len112, 281474976710655
  %eq.rhs.len114 = load i64, ptr @str.29.struct, align 8
  %eq.rhs.len115 = and i64 %eq.rhs.len114, 281474976710655
  %eq.len116 = icmp eq i64 %eq.lhs.len113, %eq.rhs.len115
  br i1 %eq.len116, label %str.eq.then117, label %str.eq.else118

str.eq.then78:                                    ; preds = %choice.next33
  %eq.lhs.data81 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data82 = load ptr, ptr %eq.lhs.data81, align 8
  %eq.rhs.data83 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %eq.memcmp84 = call i32 @memcmp(ptr %eq.lhs.data82, ptr %eq.rhs.data83, i64 %eq.lhs.len74)
  %eq.cmp.zero85 = icmp eq i32 %eq.memcmp84, 0
  br label %str.eq.merge80

str.eq.else79:                                    ; preds = %choice.next33
  br label %str.eq.merge80

str.eq.merge80:                                   ; preds = %str.eq.else79, %str.eq.then78
  %str.eq.result86 = phi i1 [ %eq.cmp.zero85, %str.eq.then78 ], [ false, %str.eq.else79 ]
  %eq.lhs.len87 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len88 = load i64, ptr %eq.lhs.len87, align 8
  %eq.lhs.len89 = and i64 %eq.lhs.len88, 281474976710655
  %eq.rhs.len90 = load i64, ptr @str.28.struct, align 8
  %eq.rhs.len91 = and i64 %eq.rhs.len90, 281474976710655
  %eq.len92 = icmp eq i64 %eq.lhs.len89, %eq.rhs.len91
  br i1 %eq.len92, label %str.eq.then93, label %str.eq.else94

str.eq.then93:                                    ; preds = %str.eq.merge80
  %eq.lhs.data96 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data97 = load ptr, ptr %eq.lhs.data96, align 8
  %eq.rhs.data98 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %eq.memcmp99 = call i32 @memcmp(ptr %eq.lhs.data97, ptr %eq.rhs.data98, i64 %eq.lhs.len89)
  %eq.cmp.zero100 = icmp eq i32 %eq.memcmp99, 0
  br label %str.eq.merge95

str.eq.else94:                                    ; preds = %str.eq.merge80
  br label %str.eq.merge95

str.eq.merge95:                                   ; preds = %str.eq.else94, %str.eq.then93
  %str.eq.result101 = phi i1 [ %eq.cmp.zero100, %str.eq.then93 ], [ false, %str.eq.else94 ]
  %case.or102 = or i1 %str.eq.result86, %str.eq.result101
  br i1 %case.or102, label %choice.case70, label %choice.next71

choice.case109:                                   ; preds = %str.eq.merge150
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 16)
  %tag.gep160 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc159, i32 0, i32 0
  store i64 4, ptr %tag.gep160, align 8
  %pay.gep161 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc159, i32 0, i32 1
  store ptr null, ptr %pay.gep161, align 8
  %p.to.i64162 = ptrtoint ptr %enum.alloc159 to i64
  %ram.pay163 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64162, 1
  br label %choice.exit

choice.next110:                                   ; preds = %str.eq.merge150
  br label %choice.exit

str.eq.then117:                                   ; preds = %choice.next71
  %eq.lhs.data120 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data121 = load ptr, ptr %eq.lhs.data120, align 8
  %eq.rhs.data122 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %eq.memcmp123 = call i32 @memcmp(ptr %eq.lhs.data121, ptr %eq.rhs.data122, i64 %eq.lhs.len113)
  %eq.cmp.zero124 = icmp eq i32 %eq.memcmp123, 0
  br label %str.eq.merge119

str.eq.else118:                                   ; preds = %choice.next71
  br label %str.eq.merge119

str.eq.merge119:                                  ; preds = %str.eq.else118, %str.eq.then117
  %str.eq.result125 = phi i1 [ %eq.cmp.zero124, %str.eq.then117 ], [ false, %str.eq.else118 ]
  %eq.lhs.len126 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len127 = load i64, ptr %eq.lhs.len126, align 8
  %eq.lhs.len128 = and i64 %eq.lhs.len127, 281474976710655
  %eq.rhs.len129 = load i64, ptr @str.30.struct, align 8
  %eq.rhs.len130 = and i64 %eq.rhs.len129, 281474976710655
  %eq.len131 = icmp eq i64 %eq.lhs.len128, %eq.rhs.len130
  br i1 %eq.len131, label %str.eq.then132, label %str.eq.else133

str.eq.then132:                                   ; preds = %str.eq.merge119
  %eq.lhs.data135 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data136 = load ptr, ptr %eq.lhs.data135, align 8
  %eq.rhs.data137 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %eq.memcmp138 = call i32 @memcmp(ptr %eq.lhs.data136, ptr %eq.rhs.data137, i64 %eq.lhs.len128)
  %eq.cmp.zero139 = icmp eq i32 %eq.memcmp138, 0
  br label %str.eq.merge134

str.eq.else133:                                   ; preds = %str.eq.merge119
  br label %str.eq.merge134

str.eq.merge134:                                  ; preds = %str.eq.else133, %str.eq.then132
  %str.eq.result140 = phi i1 [ %eq.cmp.zero139, %str.eq.then132 ], [ false, %str.eq.else133 ]
  %case.or141 = or i1 %str.eq.result125, %str.eq.result140
  %eq.lhs.len142 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len143 = load i64, ptr %eq.lhs.len142, align 8
  %eq.lhs.len144 = and i64 %eq.lhs.len143, 281474976710655
  %eq.rhs.len145 = load i64, ptr @str.31.struct, align 8
  %eq.rhs.len146 = and i64 %eq.rhs.len145, 281474976710655
  %eq.len147 = icmp eq i64 %eq.lhs.len144, %eq.rhs.len146
  br i1 %eq.len147, label %str.eq.then148, label %str.eq.else149

str.eq.then148:                                   ; preds = %str.eq.merge134
  %eq.lhs.data151 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data152 = load ptr, ptr %eq.lhs.data151, align 8
  %eq.rhs.data153 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %eq.memcmp154 = call i32 @memcmp(ptr %eq.lhs.data152, ptr %eq.rhs.data153, i64 %eq.lhs.len144)
  %eq.cmp.zero155 = icmp eq i32 %eq.memcmp154, 0
  br label %str.eq.merge150

str.eq.else149:                                   ; preds = %str.eq.merge134
  br label %str.eq.merge150

str.eq.merge150:                                  ; preds = %str.eq.else149, %str.eq.then148
  %str.eq.result156 = phi i1 [ %eq.cmp.zero155, %str.eq.then148 ], [ false, %str.eq.else149 ]
  %case.or157 = or i1 %case.or141, %str.eq.result156
  br i1 %case.or157, label %choice.case109, label %choice.next110
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
  br i1 %cmptmp, label %and.96.then, label %and.96.else

and.96.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.r, align 8
  %var.load3 = load i64, ptr @"var.log::#min_level", align 8
  %cmptmp4 = icmp sge i64 %var.load2, %var.load3
  br label %and.96.exit

and.96.else:                                      ; preds = %entry
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %and.96.then
  %and.96.phi = phi i1 [ %cmptmp4, %and.96.then ], [ %cmptmp, %and.96.else ]
  ret i1 %and.96.phi
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
  br i1 %cmptmp, label %and.97.then, label %and.97.else

and.97.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr @"var.log::#owned_fd", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %cmptmp3 = icmp ne i64 %var.load1, %var.load2
  br label %and.97.exit

and.97.else:                                      ; preds = %entry
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %and.97.then
  %and.97.phi = phi i1 [ %cmptmp3, %and.97.then ], [ %cmptmp, %and.97.else ]
  br i1 %and.97.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %and.97.exit
  %var.load4 = load i64, ptr @"var.log::#owned_fd", align 8
  %coerce.trunc = trunc i64 %var.load4 to i32
  %call.res = call i32 @close(i32 %coerce.trunc)
  store i64 -1, ptr @"var.log::#owned_fd", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %and.97.exit
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

arg.str.ptr5:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
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
  %concat.str153 = alloca { i64, ptr }, align 8
  %var.pfx_part = alloca ptr, align 8
  %concat.str82 = alloca { i64, ptr }, align 8
  %var.ts_str = alloca ptr, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %var.badge = alloca ptr, align 8
  %ret.ub.salloc4 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.msg = alloca ptr, align 8
  %var.lvl = alloca ptr, align 8
  store ptr %0, ptr %var.lvl, align 8
  store ptr %1, ptr %var.msg, align 8
  %call.res = call i1 @"log::#should_color"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.lvl, align 8
  %call.res1 = call { i64, ptr } @"log::#level_ansi"(ptr %var.load)
  store { i64, ptr } %call.res1, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.lvl, align 8
  %call.res3 = call { i64, ptr } @"log::#level_plain"(ptr %var.load2)
  store { i64, ptr } %call.res3, ptr %ret.ub.salloc4, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.salloc, %choice.then ], [ %ret.ub.salloc4, %choice.else ]
  store ptr %choice.res, ptr %var.badge, align 8
  %var.load5 = load i1, ptr @"var.log::#show_ts", align 1
  br i1 %var.load5, label %choice.then6, label %choice.else7

choice.then6:                                     ; preds = %choice.exit
  %var.load9 = load i1, ptr @"var.log::#ts_utc", align 1
  br i1 %var.load9, label %choice.then10, label %choice.else11

choice.else7:                                     ; preds = %choice.exit
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.else7, %concat.tot.len43
  %choice.res47 = phi ptr [ %concat.str, %concat.tot.len43 ], [ @str.0.struct, %choice.else7 ]
  store ptr %choice.res47, ptr %var.ts_str, align 8
  %var.load48 = load ptr, ptr @"var.log::#prefix_tag", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %str.len.query49 = load i64, ptr %str.len.query, align 8
  %str.len.query50 = and i64 %str.len.query49, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query50, 0
  br i1 %cmptmp, label %choice.then51, label %choice.else52

choice.then10:                                    ; preds = %choice.then6
  %var.load13 = load i1, ptr @"var.log::#ts_basic", align 1
  br i1 %var.load13, label %choice.then14, label %choice.else15

choice.else11:                                    ; preds = %choice.then6
  %var.load22 = load i1, ptr @"var.log::#ts_basic", align 1
  br i1 %var.load22, label %choice.then23, label %choice.else24

choice.exit12:                                    ; preds = %choice.exit25, %choice.exit16
  %choice.res33 = phi ptr [ %choice.res21, %choice.exit16 ], [ %choice.res32, %choice.exit25 ]
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %choice.res33, i32 0, i32 0
  %concat.lhs34 = load i64, ptr %concat.lhs, align 8
  %concat.lhs35 = and i64 %concat.lhs34, 281474976710655
  %concat.lhs36 = getelementptr inbounds { i64, ptr }, ptr %choice.res33, i32 0, i32 1
  %concat.lhs37 = load ptr, ptr %concat.lhs36, align 8
  %concat.rhs = load i64, ptr @str.32.struct, align 8
  %concat.rhs38 = and i64 %concat.rhs, 281474976710655
  %concat.rhs39 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs35, i64 %concat.rhs38)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len40

choice.then14:                                    ; preds = %choice.then10
  %call.res17 = call { i64, ptr } @"time::utc_iso_basic$Unit"(i64 0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res17, ptr %ret.ub.alloc, align 8
  br label %choice.exit16

choice.else15:                                    ; preds = %choice.then10
  %call.res18 = call { i64, ptr } @"time::utc_iso$Unit"(i64 0)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  store { i64, ptr } %call.res18, ptr %ret.ub.alloc20, align 8
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else15, %choice.then14
  %choice.res21 = phi ptr [ %ret.ub.alloc, %choice.then14 ], [ %ret.ub.alloc20, %choice.else15 ]
  br label %choice.exit12

choice.then23:                                    ; preds = %choice.else11
  %call.res26 = call { i64, ptr } @"time::iso_basic$Unit"(i64 0)
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  store { i64, ptr } %call.res26, ptr %ret.ub.alloc28, align 8
  br label %choice.exit25

choice.else24:                                    ; preds = %choice.else11
  %call.res29 = call { i64, ptr } @"time::iso$Unit"(i64 0)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store { i64, ptr } %call.res29, ptr %ret.ub.alloc31, align 8
  br label %choice.exit25

choice.exit25:                                    ; preds = %choice.else24, %choice.then23
  %choice.res32 = phi ptr [ %ret.ub.alloc28, %choice.then23 ], [ %ret.ub.alloc31, %choice.else24 ]
  br label %choice.exit12

concat.sum.len40:                                 ; preds = %abort.dead, %choice.exit12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort:                               ; preds = %choice.exit12
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len40

concat.tot.len43:                                 ; preds = %abort.dead45, %concat.sum.len40
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs37, i64 %concat.lhs35, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs39, i64 %concat.rhs38, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit8

str_overflow_abort44:                             ; preds = %concat.sum.len40
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %concat.tot.len43

choice.then51:                                    ; preds = %choice.exit8
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %var.load54 = load ptr, ptr @"var.log::#prefix_tag", align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %cat.seg55 = load i64, ptr %cat.seg, align 8
  %cat.seg56 = and i64 %cat.seg55, 281474976710655
  %cat.seg57 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %cat.seg58 = load ptr, ptr %cat.seg57, align 8
  %cat.lit.data59 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %cat.seg56)
  %sum60 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf61 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf61, label %str_overflow_abort63, label %cat.sum.len62

choice.else52:                                    ; preds = %choice.exit8
  br label %choice.exit53

choice.exit53:                                    ; preds = %choice.else52, %concat.tot.len74
  %choice.res85 = phi ptr [ %concat.str82, %concat.tot.len74 ], [ @str.0.struct, %choice.else52 ]
  store ptr %choice.res85, ptr %var.pfx_part, align 8
  %var.load86 = load ptr, ptr %var.ts_str, align 8
  %cat.seg87 = getelementptr inbounds { i64, ptr }, ptr %var.load86, i32 0, i32 0
  %cat.seg88 = load i64, ptr %cat.seg87, align 8
  %cat.seg89 = and i64 %cat.seg88, 281474976710655
  %cat.seg90 = getelementptr inbounds { i64, ptr }, ptr %var.load86, i32 0, i32 1
  %cat.seg91 = load ptr, ptr %cat.seg90, align 8
  %var.load92 = load ptr, ptr %var.badge, align 8
  %cat.seg93 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 0
  %cat.seg94 = load i64, ptr %cat.seg93, align 8
  %cat.seg95 = and i64 %cat.seg94, 281474976710655
  %cat.seg96 = getelementptr inbounds { i64, ptr }, ptr %var.load92, i32 0, i32 1
  %cat.seg97 = load ptr, ptr %cat.seg96, align 8
  %var.load98 = load ptr, ptr %var.pfx_part, align 8
  %cat.seg99 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 0
  %cat.seg100 = load i64, ptr %cat.seg99, align 8
  %cat.seg101 = and i64 %cat.seg100, 281474976710655
  %cat.seg102 = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 1
  %cat.seg103 = load ptr, ptr %cat.seg102, align 8
  %cat.lit.data104 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %var.load105 = load ptr, ptr %var.msg, align 8
  %cat.seg106 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 0
  %cat.seg107 = load i64, ptr %cat.seg106, align 8
  %cat.seg108 = and i64 %cat.seg107, 281474976710655
  %cat.seg109 = getelementptr inbounds { i64, ptr }, ptr %var.load105, i32 0, i32 1
  %cat.seg110 = load ptr, ptr %cat.seg109, align 8
  %cat.sum.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg89, i64 %cat.seg95)
  %sum112 = extractvalue { i64, i1 } %cat.sum.len111, 0
  %ovf113 = extractvalue { i64, i1 } %cat.sum.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %cat.sum.len114

cat.sum.len62:                                    ; preds = %abort.dead64, %choice.then51
  %cat.sum.len65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum60, i64 1)
  %sum66 = extractvalue { i64, i1 } %cat.sum.len65, 0
  %ovf67 = extractvalue { i64, i1 } %cat.sum.len65, 1
  br i1 %ovf67, label %str_overflow_abort69, label %cat.sum.len68

str_overflow_abort63:                             ; preds = %choice.then51
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %cat.sum.len62

cat.sum.len68:                                    ; preds = %abort.dead70, %cat.sum.len62
  %concat.tot.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum66, i64 1)
  %sum72 = extractvalue { i64, i1 } %concat.tot.len71, 0
  %ovf73 = extractvalue { i64, i1 } %concat.tot.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %concat.tot.len74

str_overflow_abort69:                             ; preds = %cat.sum.len62
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %cat.sum.len68

concat.tot.len74:                                 ; preds = %abort.dead76, %cat.sum.len68
  %arena.cur77 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum72)
  %cat.dst = getelementptr i8, ptr %concat.buf78, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.dst79 = getelementptr i8, ptr %concat.buf78, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst79, ptr align 1 %cat.seg58, i64 %cat.seg56, i1 false)
  %cat.off = add i64 2, %cat.seg56
  %cat.dst80 = getelementptr i8, ptr %concat.buf78, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst80, ptr align 1 %cat.lit.data59, i64 1, i1 false)
  %concat.nul81 = getelementptr i8, ptr %concat.buf78, i64 %sum66
  store i8 0, ptr %concat.nul81, align 1
  %str.build.len.gep83 = getelementptr inbounds { i64, ptr }, ptr %concat.str82, i32 0, i32 0
  store i64 %sum66, ptr %str.build.len.gep83, align 8
  %str.build.data.gep84 = getelementptr inbounds { i64, ptr }, ptr %concat.str82, i32 0, i32 1
  store ptr %concat.buf78, ptr %str.build.data.gep84, align 8
  br label %choice.exit53

str_overflow_abort75:                             ; preds = %cat.sum.len68
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead76:                                     ; No predecessors!
  br label %concat.tot.len74

cat.sum.len114:                                   ; preds = %abort.dead116, %choice.exit53
  %cat.sum.len117 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum112, i64 %cat.seg101)
  %sum118 = extractvalue { i64, i1 } %cat.sum.len117, 0
  %ovf119 = extractvalue { i64, i1 } %cat.sum.len117, 1
  br i1 %ovf119, label %str_overflow_abort121, label %cat.sum.len120

str_overflow_abort115:                            ; preds = %choice.exit53
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %cat.sum.len114

cat.sum.len120:                                   ; preds = %abort.dead122, %cat.sum.len114
  %cat.sum.len123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum118, i64 1)
  %sum124 = extractvalue { i64, i1 } %cat.sum.len123, 0
  %ovf125 = extractvalue { i64, i1 } %cat.sum.len123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %cat.sum.len126

str_overflow_abort121:                            ; preds = %cat.sum.len114
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead122:                                    ; No predecessors!
  br label %cat.sum.len120

cat.sum.len126:                                   ; preds = %abort.dead128, %cat.sum.len120
  %cat.sum.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum124, i64 %cat.seg108)
  %sum130 = extractvalue { i64, i1 } %cat.sum.len129, 0
  %ovf131 = extractvalue { i64, i1 } %cat.sum.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %cat.sum.len132

str_overflow_abort127:                            ; preds = %cat.sum.len120
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %cat.sum.len126

cat.sum.len132:                                   ; preds = %abort.dead134, %cat.sum.len126
  %concat.tot.len135 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum130, i64 1)
  %sum136 = extractvalue { i64, i1 } %concat.tot.len135, 0
  %ovf137 = extractvalue { i64, i1 } %concat.tot.len135, 1
  br i1 %ovf137, label %str_overflow_abort139, label %concat.tot.len138

str_overflow_abort133:                            ; preds = %cat.sum.len126
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead134:                                    ; No predecessors!
  br label %cat.sum.len132

concat.tot.len138:                                ; preds = %abort.dead140, %cat.sum.len132
  %arena.cur141 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 %sum136)
  %cat.dst143 = getelementptr i8, ptr %concat.buf142, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst143, ptr align 1 %cat.seg91, i64 %cat.seg89, i1 false)
  %cat.off144 = add i64 0, %cat.seg89
  %cat.dst145 = getelementptr i8, ptr %concat.buf142, i64 %cat.off144
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst145, ptr align 1 %cat.seg97, i64 %cat.seg95, i1 false)
  %cat.off146 = add i64 %cat.off144, %cat.seg95
  %cat.dst147 = getelementptr i8, ptr %concat.buf142, i64 %cat.off146
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst147, ptr align 1 %cat.seg103, i64 %cat.seg101, i1 false)
  %cat.off148 = add i64 %cat.off146, %cat.seg101
  %cat.dst149 = getelementptr i8, ptr %concat.buf142, i64 %cat.off148
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst149, ptr align 1 %cat.lit.data104, i64 1, i1 false)
  %cat.off150 = add i64 %cat.off148, 1
  %cat.dst151 = getelementptr i8, ptr %concat.buf142, i64 %cat.off150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst151, ptr align 1 %cat.seg110, i64 %cat.seg108, i1 false)
  %concat.nul152 = getelementptr i8, ptr %concat.buf142, i64 %sum130
  store i8 0, ptr %concat.nul152, align 1
  %str.build.len.gep154 = getelementptr inbounds { i64, ptr }, ptr %concat.str153, i32 0, i32 0
  store i64 %sum130, ptr %str.build.len.gep154, align 8
  %str.build.data.gep155 = getelementptr inbounds { i64, ptr }, ptr %concat.str153, i32 0, i32 1
  store ptr %concat.buf142, ptr %str.build.data.gep155, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str153, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort139:                            ; preds = %cat.sum.len132
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead140:                                    ; No predecessors!
  br label %concat.tot.len138
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
  %concat.lhs6 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %concat.lhs7 = load ptr, ptr %concat.lhs6, align 8
  %concat.rhs = load i64, ptr @str.34.struct, align 8
  %concat.rhs8 = and i64 %concat.rhs, 281474976710655
  %concat.rhs9 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs5, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len10

choice.exit:                                      ; preds = %nulmerge, %entry
  ret void

concat.sum.len10:                                 ; preds = %abort.dead, %choice.then
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum11 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf12 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf12, label %str_overflow_abort14, label %concat.tot.len13

str_overflow_abort:                               ; preds = %choice.then
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr19, i64 %arg.str.ptr22
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr23, label %nulcopy

str_overflow_abort14:                             ; preds = %concat.sum.len10
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %concat.tot.len13

arg.str.ptr23:                                    ; preds = %concat.tot.len13
  br label %nulmerge

nulcopy:                                          ; preds = %concat.tot.len13
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr22, i64 1)
  %sum24 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf25 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf25, label %str_overflow_abort27, label %nulcopy.len26

nulmerge:                                         ; preds = %nulcopy.len26, %arg.str.ptr23
  %arg.str.ptr30 = phi ptr [ %arg.str.ptr19, %arg.str.ptr23 ], [ %nulcopy.buf, %nulcopy.len26 ]
  %var.load31 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %str.len.query32 = load i64, ptr %str.len.query, align 8
  %str.len.query33 = and i64 %str.len.query32, 281474976710655
  %coerce.trunc = trunc i64 %var.load17 to i32
  %call.res34 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr30, i64 %str.len.query33)
  br label %choice.exit

nulcopy.len26:                                    ; preds = %abort.dead28, %nulcopy
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 %sum24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr19, i64 %arg.str.ptr22, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr22
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort27:                             ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %nulcopy.len26
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

choice.exit:                                      ; preds = %nulmerge, %entry
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
  %concat.lhs9 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %concat.lhs10 = load ptr, ptr %concat.lhs9, align 8
  %concat.rhs = load i64, ptr @str.34.struct, align 8
  %concat.rhs11 = and i64 %concat.rhs, 281474976710655
  %concat.rhs12 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs8, i64 %concat.rhs11)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len13

concat.sum.len13:                                 ; preds = %abort.dead, %a.after
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum14 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf15 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %concat.tot.len16

str_overflow_abort:                               ; preds = %a.after
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
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr23, i64 %arg.str.ptr26
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr27, label %nulcopy

str_overflow_abort17:                             ; preds = %concat.sum.len13
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %concat.tot.len16

arg.str.ptr27:                                    ; preds = %concat.tot.len16
  br label %nulmerge

nulcopy:                                          ; preds = %concat.tot.len16
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr26, i64 1)
  %sum28 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf29 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf29, label %str_overflow_abort31, label %nulcopy.len30

nulmerge:                                         ; preds = %nulcopy.len30, %arg.str.ptr27
  %arg.str.ptr34 = phi ptr [ %arg.str.ptr23, %arg.str.ptr27 ], [ %nulcopy.buf, %nulcopy.len30 ]
  %var.load35 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %str.len.query36 = load i64, ptr %str.len.query, align 8
  %str.len.query37 = and i64 %str.len.query36, 281474976710655
  %coerce.trunc = trunc i64 %var.load21 to i32
  %call.res38 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr34, i64 %str.len.query37)
  br label %choice.exit

nulcopy.len30:                                    ; preds = %abort.dead32, %nulcopy
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr23, i64 %arg.str.ptr26, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr26
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort31:                             ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %nulcopy.len30
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
attributes #6 = { cold noinline noreturn "nounwind" }
