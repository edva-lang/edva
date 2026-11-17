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
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur1 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %enum.alloc, ptr %rec.fld, align 8
  %rec.fld2 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr @str.2.struct, ptr %rec.fld4, align 8
  %arena.cur5 = call ptr @dva_arena_current()
  %enum.alloc6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc6, i32 0, i32 0
  store i64 1, ptr %tag.gep7, align 8
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc6, i32 0, i32 1
  store ptr null, ptr %pay.gep8, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %rec.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld11 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 0
  store ptr %enum.alloc6, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 1
  store i64 1, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 2
  store ptr @str.3.struct, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 3
  store ptr @str.4.struct, ptr %rec.fld14, align 8
  %arena.cur15 = call ptr @dva_arena_current()
  %enum.alloc16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  %tag.gep17 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc16, i32 0, i32 0
  store i64 2, ptr %tag.gep17, align 8
  %pay.gep18 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc16, i32 0, i32 1
  store ptr null, ptr %pay.gep18, align 8
  %arena.cur19 = call ptr @dva_arena_current()
  %rec.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld21 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 0
  store ptr %enum.alloc16, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 1
  store i64 2, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 2
  store ptr @str.5.struct, ptr %rec.fld23, align 8
  %rec.fld24 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 3
  store ptr @str.6.struct, ptr %rec.fld24, align 8
  %arena.cur25 = call ptr @dva_arena_current()
  %enum.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %tag.gep27 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 0
  store i64 3, ptr %tag.gep27, align 8
  %pay.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 1
  store ptr null, ptr %pay.gep28, align 8
  %arena.cur29 = call ptr @dva_arena_current()
  %rec.alloc30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld31 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 0
  store ptr %enum.alloc26, ptr %rec.fld31, align 8
  %rec.fld32 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 1
  store i64 3, ptr %rec.fld32, align 8
  %rec.fld33 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 2
  store ptr @str.7.struct, ptr %rec.fld33, align 8
  %rec.fld34 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 3
  store ptr @str.8.struct, ptr %rec.fld34, align 8
  %arena.cur35 = call ptr @dva_arena_current()
  %enum.alloc36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 16)
  %tag.gep37 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc36, i32 0, i32 0
  store i64 4, ptr %tag.gep37, align 8
  %pay.gep38 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc36, i32 0, i32 1
  store ptr null, ptr %pay.gep38, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %rec.alloc40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld41 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 0
  store ptr %enum.alloc36, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 1
  store i64 4, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 2
  store ptr @str.9.struct, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 3
  store ptr @str.0.struct, ptr %rec.fld44, align 8
  %arena.cur45 = call ptr @dva_arena_current()
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

declare i32 @nanosleep(ptr, ptr)

declare ptr @localtime_r(ptr, ptr)

declare ptr @strptime(ptr, ptr, ptr)

declare ptr @getenv(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %call.res = call ptr @getenv(ptr %arg.str.ptr9)
  store ptr %call.res, ptr %var.raw, align 8
  %var.load10 = load ptr, ptr %var.raw, align 8
  %var.load11 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load10 to i64
  %ptr.int.r = ptrtoint ptr %var.load11 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load12 = load ptr, ptr %var.raw, align 8
  %call.res13 = call { i64, ptr } @"sys::c_str"(ptr %var.load12)
  store { i64, ptr } %call.res13, ptr %ret.ub.salloc, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ %ret.ub.salloc, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"sys::c_str"(ptr) #0

define internal i1 @"log::#auto_color_enabled"() #0 {
entry:
  %call.res = call i1 @"log::#auto_color_enabled_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"()
  ret i1 %call.res
}

define internal i1 @"log::#auto_color_enabled_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"() #0 {
entry:
  %ret.ub.salloc40 = alloca { i64, ptr }, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sgt i64 %str.len.query2, 0
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
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal10, label %str_ok9, label %tag.gen_check11

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok9:                                          ; preds = %abort.dead18, %tag.slow_check12, %tag.gen_check11, %choice.exit
  %cmptmp19 = icmp sgt i64 %str.len.query7, 0
  br i1 %cmptmp19, label %and.87.then, label %and.87.else

tag.gen_check11:                                  ; preds = %choice.exit
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok15 = icmp eq i64 %str.tag8, %active.gen14
  br i1 %tag.fast.ok15, label %str_ok9, label %tag.slow_check12

tag.slow_check12:                                 ; preds = %tag.gen_check11
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag8)
  br i1 %tag.valid17, label %str_ok9, label %tag.stale13

tag.stale13:                                      ; preds = %tag.slow_check12
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %str_ok9

and.87.then:                                      ; preds = %str_ok9
  %var.load20 = load ptr, ptr %var.fc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %eq.lhs.len21 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len22 = and i64 %eq.lhs.len21, 281474976710655
  %str.tag23 = lshr i64 %eq.lhs.len21, 48
  %tag.immortal25 = icmp eq i64 %str.tag23, 0
  br i1 %tag.immortal25, label %str_ok24, label %tag.gen_check26

and.87.else:                                      ; preds = %str_ok9
  br label %and.87.exit

and.87.exit:                                      ; preds = %and.87.else, %str.eq.merge
  %and.87.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %cmptmp19, %and.87.else ]
  br i1 %and.87.phi, label %choice.then36, label %choice.exit37

str_ok24:                                         ; preds = %abort.dead33, %tag.slow_check27, %tag.gen_check26, %and.87.then
  %eq.rhs.len = load i64, ptr @str.12.struct, align 8
  %eq.rhs.len34 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len22, %eq.rhs.len34
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check26:                                  ; preds = %and.87.then
  %active.gen29 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok30 = icmp eq i64 %str.tag23, %active.gen29
  br i1 %tag.fast.ok30, label %str_ok24, label %tag.slow_check27

tag.slow_check27:                                 ; preds = %tag.gen_check26
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag23)
  br i1 %tag.valid32, label %str_ok24, label %tag.stale28

tag.stale28:                                      ; preds = %tag.slow_check27
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %str_ok24

str.eq.then:                                      ; preds = %str_ok24
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %eq.lhs.data35 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.12.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data35, ptr %eq.rhs.data, i64 %eq.lhs.len22)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok24
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.87.exit

choice.then36:                                    ; preds = %and.87.exit
  ret i1 true

choice.exit37:                                    ; preds = %ret.dead38, %and.87.exit
  %call.res39 = call { i64, ptr } @"log::#env_val"(ptr @str.13.struct)
  store { i64, ptr } %call.res39, ptr %ret.ub.salloc40, align 8
  %eq.lhs.len41 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc40, i32 0, i32 0
  %eq.lhs.len42 = load i64, ptr %eq.lhs.len41, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %str.tag44 = lshr i64 %eq.lhs.len42, 48
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  br i1 %tag.immortal46, label %str_ok45, label %tag.gen_check47

ret.dead38:                                       ; No predecessors!
  br label %choice.exit37

str_ok45:                                         ; preds = %abort.dead54, %tag.slow_check48, %tag.gen_check47, %choice.exit37
  %eq.rhs.len55 = load i64, ptr @str.14.struct, align 8
  %eq.rhs.len56 = and i64 %eq.rhs.len55, 281474976710655
  %eq.len57 = icmp eq i64 %eq.lhs.len43, %eq.rhs.len56
  br i1 %eq.len57, label %str.eq.then58, label %str.eq.else59

tag.gen_check47:                                  ; preds = %choice.exit37
  %active.gen50 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok51 = icmp eq i64 %str.tag44, %active.gen50
  br i1 %tag.fast.ok51, label %str_ok45, label %tag.slow_check48

tag.slow_check48:                                 ; preds = %tag.gen_check47
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag44)
  br i1 %tag.valid53, label %str_ok45, label %tag.stale49

tag.stale49:                                      ; preds = %tag.slow_check48
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %str_ok45

str.eq.then58:                                    ; preds = %str_ok45
  %eq.lhs.data61 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc40, i32 0, i32 1
  %eq.lhs.data62 = load ptr, ptr %eq.lhs.data61, align 8
  %eq.rhs.data63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.14.struct, i32 0, i32 1), align 8
  %eq.memcmp64 = call i32 @memcmp(ptr %eq.lhs.data62, ptr %eq.rhs.data63, i64 %eq.lhs.len43)
  %eq.cmp.zero65 = icmp eq i32 %eq.memcmp64, 0
  br label %str.eq.merge60

str.eq.else59:                                    ; preds = %str_ok45
  br label %str.eq.merge60

str.eq.merge60:                                   ; preds = %str.eq.else59, %str.eq.then58
  %str.eq.result66 = phi i1 [ %eq.cmp.zero65, %str.eq.then58 ], [ false, %str.eq.else59 ]
  br i1 %str.eq.result66, label %choice.then67, label %choice.exit68

choice.then67:                                    ; preds = %str.eq.merge60
  ret i1 false

choice.exit68:                                    ; preds = %ret.dead69, %str.eq.merge60
  %var.load70 = load i64, ptr @"var.log::#out_fd", align 8
  %coerce.trunc = trunc i64 %var.load70 to i32
  %call.res71 = call i64 @isatty(i32 %coerce.trunc)
  %cmptmp72 = icmp eq i64 %call.res71, 1
  ret i1 %cmptmp72

ret.dead69:                                       ; No predecessors!
  br label %choice.exit68
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.lit.data5 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len6

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

cat.sum.len6:                                     ; preds = %abort.dead7, %str_ok
  %cat.sum.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum9 = extractvalue { i64, i1 } %cat.sum.len8, 0
  %ovf10 = extractvalue { i64, i1 } %cat.sum.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %cat.sum.len11

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %cat.sum.len6

cat.sum.len11:                                    ; preds = %abort.dead13, %cat.sum.len6
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum9, i64 1)
  %sum14 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf15 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %concat.tot.len16

str_overflow_abort12:                             ; preds = %cat.sum.len6
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %cat.sum.len11

concat.tot.len16:                                 ; preds = %abort.dead18, %cat.sum.len11
  %arena.cur19 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum14)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 1, %cat.seg2
  %cat.dst21 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst21, ptr align 1 %cat.lit.data5, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum9
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum9, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort17:                             ; preds = %cat.sum.len11
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %concat.tot.len16
}

define internal { i64, ptr } @"log::#level_ansi"(ptr %0) #0 {
entry:
  %concat.str103 = alloca { i64, ptr }, align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cat.seg4 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg5 = load ptr, ptr %cat.seg4, align 8
  %cat.lit.data6 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.seg3)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len7

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

cat.sum.len7:                                     ; preds = %abort.dead8, %str_ok
  %cat.sum.len9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum10 = extractvalue { i64, i1 } %cat.sum.len9, 0
  %ovf11 = extractvalue { i64, i1 } %cat.sum.len9, 1
  br i1 %ovf11, label %str_overflow_abort13, label %cat.sum.len12

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead8:                                      ; No predecessors!
  br label %cat.sum.len7

cat.sum.len12:                                    ; preds = %abort.dead14, %cat.sum.len7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum10, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort13:                             ; preds = %cat.sum.len7
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead14:                                     ; No predecessors!
  br label %cat.sum.len12

concat.tot.len17:                                 ; preds = %abort.dead19, %cat.sum.len12
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 %sum15)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.dst21 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst21, ptr align 1 %cat.seg5, i64 %cat.seg3, i1 false)
  %cat.off = add i64 1, %cat.seg3
  %cat.dst22 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst22, ptr align 1 %cat.lit.data6, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum10
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum10, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.badge, align 8
  %var.load24 = load ptr, ptr %var.m, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load24, i32 0, i32 3
  %fld.load26 = load ptr, ptr %fld.gep25, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 0
  %str.len.query27 = load i64, ptr %str.len.query, align 8
  %str.len.query28 = and i64 %str.len.query27, 281474976710655
  %str.tag29 = lshr i64 %str.len.query27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  br i1 %tag.immortal31, label %str_ok30, label %tag.gen_check32

str_overflow_abort18:                             ; preds = %cat.sum.len12
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %concat.tot.len17

str_ok30:                                         ; preds = %abort.dead39, %tag.slow_check33, %tag.gen_check32, %concat.tot.len17
  %cmptmp = icmp sgt i64 %str.len.query28, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check32:                                  ; preds = %concat.tot.len17
  %active.gen35 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok36 = icmp eq i64 %str.tag29, %active.gen35
  br i1 %tag.fast.ok36, label %str_ok30, label %tag.slow_check33

tag.slow_check33:                                 ; preds = %tag.gen_check32
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag29)
  br i1 %tag.valid38, label %str_ok30, label %tag.stale34

tag.stale34:                                      ; preds = %tag.slow_check33
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %str_ok30

choice.then:                                      ; preds = %str_ok30
  %var.load40 = load ptr, ptr %var.m, align 8
  %fld.gep41 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %var.load40, i32 0, i32 3
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  %cat.seg43 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 0
  %cat.seg44 = load i64, ptr %cat.seg43, align 8
  %cat.seg45 = and i64 %cat.seg44, 281474976710655
  %str.tag46 = lshr i64 %cat.seg44, 48
  %tag.immortal48 = icmp eq i64 %str.tag46, 0
  br i1 %tag.immortal48, label %str_ok47, label %tag.gen_check49

choice.else:                                      ; preds = %str_ok30
  %var.load106 = load ptr, ptr %var.badge, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %concat.tot.len92
  %choice.res = phi ptr [ %concat.str103, %concat.tot.len92 ], [ %var.load106, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

str_ok47:                                         ; preds = %abort.dead56, %tag.slow_check50, %tag.gen_check49, %choice.then
  %cat.seg57 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 1
  %cat.seg58 = load ptr, ptr %cat.seg57, align 8
  %var.load59 = load ptr, ptr %var.badge, align 8
  %cat.seg60 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 0
  %cat.seg61 = load i64, ptr %cat.seg60, align 8
  %cat.seg62 = and i64 %cat.seg61, 281474976710655
  %str.tag63 = lshr i64 %cat.seg61, 48
  %tag.immortal65 = icmp eq i64 %str.tag63, 0
  br i1 %tag.immortal65, label %str_ok64, label %tag.gen_check66

tag.gen_check49:                                  ; preds = %choice.then
  %active.gen52 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok53 = icmp eq i64 %str.tag46, %active.gen52
  br i1 %tag.fast.ok53, label %str_ok47, label %tag.slow_check50

tag.slow_check50:                                 ; preds = %tag.gen_check49
  %arena.cur54 = call ptr @dva_arena_current()
  %tag.valid55 = call i1 @dva_arena_validate_tag(ptr %arena.cur54, i64 %str.tag46)
  br i1 %tag.valid55, label %str_ok47, label %tag.stale51

tag.stale51:                                      ; preds = %tag.slow_check50
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %str_ok47

str_ok64:                                         ; preds = %abort.dead73, %tag.slow_check67, %tag.gen_check66, %str_ok47
  %cat.seg74 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 1
  %cat.seg75 = load ptr, ptr %cat.seg74, align 8
  %cat.lit.data76 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %cat.sum.len77 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg45, i64 %cat.seg62)
  %sum78 = extractvalue { i64, i1 } %cat.sum.len77, 0
  %ovf79 = extractvalue { i64, i1 } %cat.sum.len77, 1
  br i1 %ovf79, label %str_overflow_abort81, label %cat.sum.len80

tag.gen_check66:                                  ; preds = %str_ok47
  %active.gen69 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok70 = icmp eq i64 %str.tag63, %active.gen69
  br i1 %tag.fast.ok70, label %str_ok64, label %tag.slow_check67

tag.slow_check67:                                 ; preds = %tag.gen_check66
  %arena.cur71 = call ptr @dva_arena_current()
  %tag.valid72 = call i1 @dva_arena_validate_tag(ptr %arena.cur71, i64 %str.tag63)
  br i1 %tag.valid72, label %str_ok64, label %tag.stale68

tag.stale68:                                      ; preds = %tag.slow_check67
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %str_ok64

cat.sum.len80:                                    ; preds = %abort.dead82, %str_ok64
  %cat.sum.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum78, i64 4)
  %sum84 = extractvalue { i64, i1 } %cat.sum.len83, 0
  %ovf85 = extractvalue { i64, i1 } %cat.sum.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %cat.sum.len86

str_overflow_abort81:                             ; preds = %str_ok64
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %cat.sum.len80

cat.sum.len86:                                    ; preds = %abort.dead88, %cat.sum.len80
  %concat.tot.len89 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum84, i64 1)
  %sum90 = extractvalue { i64, i1 } %concat.tot.len89, 0
  %ovf91 = extractvalue { i64, i1 } %concat.tot.len89, 1
  br i1 %ovf91, label %str_overflow_abort93, label %concat.tot.len92

str_overflow_abort87:                             ; preds = %cat.sum.len80
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %cat.sum.len86

concat.tot.len92:                                 ; preds = %abort.dead94, %cat.sum.len86
  %arena.cur95 = call ptr @dva_arena_current()
  %concat.buf96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 %sum90)
  %cat.dst97 = getelementptr i8, ptr %concat.buf96, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst97, ptr align 1 %cat.seg58, i64 %cat.seg45, i1 false)
  %cat.off98 = add i64 0, %cat.seg45
  %cat.dst99 = getelementptr i8, ptr %concat.buf96, i64 %cat.off98
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst99, ptr align 1 %cat.seg75, i64 %cat.seg62, i1 false)
  %cat.off100 = add i64 %cat.off98, %cat.seg62
  %cat.dst101 = getelementptr i8, ptr %concat.buf96, i64 %cat.off100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst101, ptr align 1 %cat.lit.data76, i64 4, i1 false)
  %concat.nul102 = getelementptr i8, ptr %concat.buf96, i64 %sum84
  store i8 0, ptr %concat.nul102, align 1
  %str.build.len.gep104 = getelementptr inbounds { i64, ptr }, ptr %concat.str103, i32 0, i32 0
  store i64 %sum84, ptr %str.build.len.gep104, align 8
  %str.build.data.gep105 = getelementptr inbounds { i64, ptr }, ptr %concat.str103, i32 0, i32 1
  store ptr %concat.buf96, ptr %str.build.data.gep105, align 8
  br label %choice.exit

str_overflow_abort93:                             ; preds = %cat.sum.len86
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead94:                                     ; No predecessors!
  br label %concat.tot.len92
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
  ret i1 true

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len4 = load i64, ptr %str.len, align 8
  %str.len5 = and i64 %str.len4, 281474976710655
  %str.tag6 = lshr i64 %str.len4, 48
  %tag.immortal8 = icmp eq i64 %str.tag6, 0
  br i1 %tag.immortal8, label %str_ok7, label %tag.gen_check9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok7:                                          ; preds = %abort.dead16, %tag.slow_check10, %tag.gen_check9, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.88, align 8
  br label %loop.header.88

tag.gen_check9:                                   ; preds = %choice.exit
  %active.gen12 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok13 = icmp eq i64 %str.tag6, %active.gen12
  br i1 %tag.fast.ok13, label %str_ok7, label %tag.slow_check10

tag.slow_check10:                                 ; preds = %tag.gen_check9
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag6)
  br i1 %tag.valid15, label %str_ok7, label %tag.stale11

tag.stale11:                                      ; preds = %tag.slow_check10
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %str_ok7

loop.header.88:                                   ; preds = %loop.latch.88, %str_ok7
  %counter.load = load i64, ptr %loop.idx.88, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len5
  br i1 %loop.cond, label %loop.body.88, label %loop.exit.nat.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.88, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load18 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load18, 32
  %val.match20 = icmp eq i64 %var.load18, 9
  %case.or = or i1 %val.match, %val.match20
  %val.match21 = icmp eq i64 %var.load18, 10
  %case.or22 = or i1 %case.or, %val.match21
  %val.match23 = icmp eq i64 %var.load18, 13
  %case.or24 = or i1 %case.or22, %val.match23
  %val.match25 = icmp eq i64 %var.load18, 34
  %case.or26 = or i1 %case.or24, %val.match25
  %val.match27 = icmp eq i64 %var.load18, 61
  %case.or28 = or i1 %case.or26, %val.match27
  br i1 %case.or28, label %choice.case, label %choice.next

loop.exit.nat.88:                                 ; preds = %loop.header.88
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit30
  %step.val = load i64, ptr %loop.step.88, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %loop.exit.nat.88
  ret i1 false

choice.exit19:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %choice.then29, label %choice.exit30

choice.case:                                      ; preds = %loop.body.88
  br label %choice.exit19

choice.next:                                      ; preds = %loop.body.88
  br label %choice.exit19

choice.then29:                                    ; preds = %choice.exit19
  ret i1 true

choice.exit30:                                    ; preds = %ret.dead31, %choice.exit19
  br label %loop.latch.88

ret.dead31:                                       ; No predecessors!
  br label %choice.exit30
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit
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

b.buf.len5:                                       ; preds = %abort.dead6, %str_ok
  %arena.cur7 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len8 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len8, i64 1)
  %sum9 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf10 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf10, label %str_overflow_abort12, label %b.rn.new.len11

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead6:                                      ; No predecessors!
  br label %b.buf.len5

b.rn.new.len11:                                   ; preds = %abort.dead13, %b.buf.len5
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap14 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap14, %sum9
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort12:                             ; preds = %b.buf.len5
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %b.rn.new.len11

b.grow2:                                          ; preds = %b.rn.new.len11
  %b.cap2 = mul i64 %b.cap14, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum9
  %b.new.cap = select i1 %b.cap.need, i64 %sum9, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len215 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data216 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum17 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf18 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf18, label %str_overflow_abort20, label %b.new.buf.len219

b.nogrow2:                                        ; preds = %b.rn.new.len11
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len219
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.rn.data23 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data23, i64 %b.rn.cur.len8
  br i1 true, label %br.b1.89, label %br.c2.89

b.new.buf.len219:                                 ; preds = %abort.dead21, %b.grow2
  %arena.cur22 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data216, i64 %b.cur.len215, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len215
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort20:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %b.new.buf.len219

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
  %br.nul = getelementptr i8, ptr %b.rn.data23, i64 %sum9
  store i8 0, ptr %br.nul, align 1
  %b.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum9, ptr %b.len.gep24, align 8
  %var.load25 = load ptr, ptr %var.s, align 8
  %str.len.query26 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %str.len.query27 = load i64, ptr %str.len.query26, align 8
  %str.len.query28 = and i64 %str.len.query27, 281474976710655
  %str.tag29 = lshr i64 %str.len.query27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  br i1 %tag.immortal31, label %str_ok30, label %tag.gen_check32

str_ok30:                                         ; preds = %abort.dead39, %tag.slow_check33, %tag.gen_check32, %br.done.89
  store i64 0, ptr %loop.idx.90, align 8
  br label %loop.header.90

tag.gen_check32:                                  ; preds = %br.done.89
  %active.gen35 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok36 = icmp eq i64 %str.tag29, %active.gen35
  br i1 %tag.fast.ok36, label %str_ok30, label %tag.slow_check33

tag.slow_check33:                                 ; preds = %tag.gen_check32
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag29)
  br i1 %tag.valid38, label %str_ok30, label %tag.stale34

tag.stale34:                                      ; preds = %tag.slow_check33
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %str_ok30

loop.header.90:                                   ; preds = %loop.latch.90, %str_ok30
  %counter.load = load i64, ptr %loop.idx.90, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query28
  br i1 %loop.cond, label %loop.body.90, label %loop.exit.nat.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.90, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load40 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %s.read.len41 = load i64, ptr %s.read.len, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data, align 8
  %var.load44 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load44, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.90:                                 ; preds = %loop.header.90
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %choice.exit47
  %step.val = load i64, ptr %loop.step.90, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %loop.exit.nat.90
  %b.load287 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  %b.rn.cur.len289 = load i64, ptr %b.rn.cur.len288, align 8
  %b.rn.new.len290 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len289, i64 1)
  %sum291 = extractvalue { i64, i1 } %b.rn.new.len290, 0
  %ovf292 = extractvalue { i64, i1 } %b.rn.new.len290, 1
  br i1 %ovf292, label %str_overflow_abort294, label %b.rn.new.len293

idx_big_check:                                    ; preds = %loop.body.90
  %idx.big = icmp sge i64 %var.load44, %s.read.len42
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead45, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data43, i64 %var.load44
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load46 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load46, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %loop.body.90
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %idx_ok

choice.exit47:                                    ; preds = %b.push_done, %b.grow_done242, %b.grow_done196, %b.grow_done150, %b.grow_done104, %b.grow_done61
  br label %loop.latch.90

choice.case:                                      ; preds = %idx_ok
  %b.load48 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.18.struct, align 8
  %app.str.len49 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  %b.app.cur.len50 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len50, i64 %app.str.len49)
  %sum51 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf52 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf52, label %str_overflow_abort54, label %b.app.new.len53

choice.next:                                      ; preds = %idx_ok
  %val.match86 = icmp eq i64 %var.load46, 92
  br i1 %val.match86, label %choice.case84, label %choice.next85

b.app.new.len53:                                  ; preds = %abort.dead55, %choice.case
  %b.cap56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 2
  %b.cap57 = load i64, ptr %b.cap56, align 8
  %b.need.grow58 = icmp slt i64 %b.cap57, %sum51
  br i1 %b.need.grow58, label %b.grow259, label %b.nogrow260

str_overflow_abort54:                             ; preds = %choice.case
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead55:                                     ; No predecessors!
  br label %b.app.new.len53

b.grow259:                                        ; preds = %b.app.new.len53
  %b.cap262 = mul i64 %b.cap57, 2
  %b.cap.small63 = icmp slt i64 %b.cap262, 16
  %b.cap.grow64 = select i1 %b.cap.small63, i64 16, i64 %b.cap262
  %b.cap.need65 = icmp slt i64 %b.cap.grow64, %sum51
  %b.new.cap66 = select i1 %b.cap.need65, i64 %sum51, i64 %b.cap.grow64
  %b.cur.len267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  %b.cur.len268 = load i64, ptr %b.cur.len267, align 8
  %b.cur.data269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  %b.cur.data270 = load ptr, ptr %b.cur.data269, align 8
  %b.new.buf.len271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap66, i64 1)
  %sum72 = extractvalue { i64, i1 } %b.new.buf.len271, 0
  %ovf73 = extractvalue { i64, i1 } %b.new.buf.len271, 1
  br i1 %ovf73, label %str_overflow_abort75, label %b.new.buf.len274

b.nogrow260:                                      ; preds = %b.app.new.len53
  br label %b.grow_done61

b.grow_done61:                                    ; preds = %b.nogrow260, %b.new.buf.len274
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  %b.app.data82 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data82, i64 %b.app.cur.len50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len49, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data82, i64 %sum51
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  store i64 %sum51, ptr %b.len.gep83, align 8
  br label %choice.exit47

b.new.buf.len274:                                 ; preds = %abort.dead76, %b.grow259
  %arena.cur77 = call ptr @dva_arena_current()
  %b.new.buf278 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum72)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf278, ptr align 1 %b.cur.data270, i64 %b.cur.len268, i1 false)
  %b.grow2.nul79 = getelementptr i8, ptr %b.new.buf278, i64 %b.cur.len268
  store i8 0, ptr %b.grow2.nul79, align 1
  %b.new.data2.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  store ptr %b.new.buf278, ptr %b.new.data2.gep80, align 8
  %b.new.cap2.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 2
  store i64 %b.new.cap66, ptr %b.new.cap2.gep81, align 8
  br label %b.grow_done61

str_overflow_abort75:                             ; preds = %b.grow259
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead76:                                     ; No predecessors!
  br label %b.new.buf.len274

choice.case84:                                    ; preds = %choice.next
  %b.load87 = load ptr, ptr %var.b, align 8
  %app.str.len88 = load i64, ptr @str.19.struct, align 8
  %app.str.len89 = and i64 %app.str.len88, 281474976710655
  %app.str.data90 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %b.app.cur.len91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 0
  %b.app.cur.len92 = load i64, ptr %b.app.cur.len91, align 8
  %b.app.new.len93 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len92, i64 %app.str.len89)
  %sum94 = extractvalue { i64, i1 } %b.app.new.len93, 0
  %ovf95 = extractvalue { i64, i1 } %b.app.new.len93, 1
  br i1 %ovf95, label %str_overflow_abort97, label %b.app.new.len96

choice.next85:                                    ; preds = %choice.next
  %val.match132 = icmp eq i64 %var.load46, 10
  br i1 %val.match132, label %choice.case130, label %choice.next131

b.app.new.len96:                                  ; preds = %abort.dead98, %choice.case84
  %b.cap99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 2
  %b.cap100 = load i64, ptr %b.cap99, align 8
  %b.need.grow101 = icmp slt i64 %b.cap100, %sum94
  br i1 %b.need.grow101, label %b.grow2102, label %b.nogrow2103

str_overflow_abort97:                             ; preds = %choice.case84
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead98:                                     ; No predecessors!
  br label %b.app.new.len96

b.grow2102:                                       ; preds = %b.app.new.len96
  %b.cap2105 = mul i64 %b.cap100, 2
  %b.cap.small106 = icmp slt i64 %b.cap2105, 16
  %b.cap.grow107 = select i1 %b.cap.small106, i64 16, i64 %b.cap2105
  %b.cap.need108 = icmp slt i64 %b.cap.grow107, %sum94
  %b.new.cap109 = select i1 %b.cap.need108, i64 %sum94, i64 %b.cap.grow107
  %b.cur.len2110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 0
  %b.cur.len2111 = load i64, ptr %b.cur.len2110, align 8
  %b.cur.data2112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 1
  %b.cur.data2113 = load ptr, ptr %b.cur.data2112, align 8
  %b.new.buf.len2114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap109, i64 1)
  %sum115 = extractvalue { i64, i1 } %b.new.buf.len2114, 0
  %ovf116 = extractvalue { i64, i1 } %b.new.buf.len2114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %b.new.buf.len2117

b.nogrow2103:                                     ; preds = %b.app.new.len96
  br label %b.grow_done104

b.grow_done104:                                   ; preds = %b.nogrow2103, %b.new.buf.len2117
  %b.app.data125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 1
  %b.app.data126 = load ptr, ptr %b.app.data125, align 8
  %b.app.dst127 = getelementptr i8, ptr %b.app.data126, i64 %b.app.cur.len92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst127, ptr align 1 %app.str.data90, i64 %app.str.len89, i1 false)
  %b.app.nul128 = getelementptr i8, ptr %b.app.data126, i64 %sum94
  store i8 0, ptr %b.app.nul128, align 1
  %b.len.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 0
  store i64 %sum94, ptr %b.len.gep129, align 8
  br label %choice.exit47

b.new.buf.len2117:                                ; preds = %abort.dead119, %b.grow2102
  %arena.cur120 = call ptr @dva_arena_current()
  %b.new.buf2121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2121, ptr align 1 %b.cur.data2113, i64 %b.cur.len2111, i1 false)
  %b.grow2.nul122 = getelementptr i8, ptr %b.new.buf2121, i64 %b.cur.len2111
  store i8 0, ptr %b.grow2.nul122, align 1
  %b.new.data2.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 1
  store ptr %b.new.buf2121, ptr %b.new.data2.gep123, align 8
  %b.new.cap2.gep124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 2
  store i64 %b.new.cap109, ptr %b.new.cap2.gep124, align 8
  br label %b.grow_done104

str_overflow_abort118:                            ; preds = %b.grow2102
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %b.new.buf.len2117

choice.case130:                                   ; preds = %choice.next85
  %b.load133 = load ptr, ptr %var.b, align 8
  %app.str.len134 = load i64, ptr @str.20.struct, align 8
  %app.str.len135 = and i64 %app.str.len134, 281474976710655
  %app.str.data136 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %b.app.cur.len137 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load133, i32 0, i32 0
  %b.app.cur.len138 = load i64, ptr %b.app.cur.len137, align 8
  %b.app.new.len139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len138, i64 %app.str.len135)
  %sum140 = extractvalue { i64, i1 } %b.app.new.len139, 0
  %ovf141 = extractvalue { i64, i1 } %b.app.new.len139, 1
  br i1 %ovf141, label %str_overflow_abort143, label %b.app.new.len142

choice.next131:                                   ; preds = %choice.next85
  %val.match178 = icmp eq i64 %var.load46, 13
  br i1 %val.match178, label %choice.case176, label %choice.next177

b.app.new.len142:                                 ; preds = %abort.dead144, %choice.case130
  %b.cap145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load133, i32 0, i32 2
  %b.cap146 = load i64, ptr %b.cap145, align 8
  %b.need.grow147 = icmp slt i64 %b.cap146, %sum140
  br i1 %b.need.grow147, label %b.grow2148, label %b.nogrow2149

str_overflow_abort143:                            ; preds = %choice.case130
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead144:                                    ; No predecessors!
  br label %b.app.new.len142

b.grow2148:                                       ; preds = %b.app.new.len142
  %b.cap2151 = mul i64 %b.cap146, 2
  %b.cap.small152 = icmp slt i64 %b.cap2151, 16
  %b.cap.grow153 = select i1 %b.cap.small152, i64 16, i64 %b.cap2151
  %b.cap.need154 = icmp slt i64 %b.cap.grow153, %sum140
  %b.new.cap155 = select i1 %b.cap.need154, i64 %sum140, i64 %b.cap.grow153
  %b.cur.len2156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load133, i32 0, i32 0
  %b.cur.len2157 = load i64, ptr %b.cur.len2156, align 8
  %b.cur.data2158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load133, i32 0, i32 1
  %b.cur.data2159 = load ptr, ptr %b.cur.data2158, align 8
  %b.new.buf.len2160 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap155, i64 1)
  %sum161 = extractvalue { i64, i1 } %b.new.buf.len2160, 0
  %ovf162 = extractvalue { i64, i1 } %b.new.buf.len2160, 1
  br i1 %ovf162, label %str_overflow_abort164, label %b.new.buf.len2163

b.nogrow2149:                                     ; preds = %b.app.new.len142
  br label %b.grow_done150

b.grow_done150:                                   ; preds = %b.nogrow2149, %b.new.buf.len2163
  %b.app.data171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load133, i32 0, i32 1
  %b.app.data172 = load ptr, ptr %b.app.data171, align 8
  %b.app.dst173 = getelementptr i8, ptr %b.app.data172, i64 %b.app.cur.len138
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst173, ptr align 1 %app.str.data136, i64 %app.str.len135, i1 false)
  %b.app.nul174 = getelementptr i8, ptr %b.app.data172, i64 %sum140
  store i8 0, ptr %b.app.nul174, align 1
  %b.len.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load133, i32 0, i32 0
  store i64 %sum140, ptr %b.len.gep175, align 8
  br label %choice.exit47

b.new.buf.len2163:                                ; preds = %abort.dead165, %b.grow2148
  %arena.cur166 = call ptr @dva_arena_current()
  %b.new.buf2167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 %sum161)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2167, ptr align 1 %b.cur.data2159, i64 %b.cur.len2157, i1 false)
  %b.grow2.nul168 = getelementptr i8, ptr %b.new.buf2167, i64 %b.cur.len2157
  store i8 0, ptr %b.grow2.nul168, align 1
  %b.new.data2.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load133, i32 0, i32 1
  store ptr %b.new.buf2167, ptr %b.new.data2.gep169, align 8
  %b.new.cap2.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load133, i32 0, i32 2
  store i64 %b.new.cap155, ptr %b.new.cap2.gep170, align 8
  br label %b.grow_done150

str_overflow_abort164:                            ; preds = %b.grow2148
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead165:                                    ; No predecessors!
  br label %b.new.buf.len2163

choice.case176:                                   ; preds = %choice.next131
  %b.load179 = load ptr, ptr %var.b, align 8
  %app.str.len180 = load i64, ptr @str.21.struct, align 8
  %app.str.len181 = and i64 %app.str.len180, 281474976710655
  %app.str.data182 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %b.app.cur.len183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 0
  %b.app.cur.len184 = load i64, ptr %b.app.cur.len183, align 8
  %b.app.new.len185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len184, i64 %app.str.len181)
  %sum186 = extractvalue { i64, i1 } %b.app.new.len185, 0
  %ovf187 = extractvalue { i64, i1 } %b.app.new.len185, 1
  br i1 %ovf187, label %str_overflow_abort189, label %b.app.new.len188

choice.next177:                                   ; preds = %choice.next131
  %val.match224 = icmp eq i64 %var.load46, 9
  br i1 %val.match224, label %choice.case222, label %choice.next223

b.app.new.len188:                                 ; preds = %abort.dead190, %choice.case176
  %b.cap191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 2
  %b.cap192 = load i64, ptr %b.cap191, align 8
  %b.need.grow193 = icmp slt i64 %b.cap192, %sum186
  br i1 %b.need.grow193, label %b.grow2194, label %b.nogrow2195

str_overflow_abort189:                            ; preds = %choice.case176
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead190:                                    ; No predecessors!
  br label %b.app.new.len188

b.grow2194:                                       ; preds = %b.app.new.len188
  %b.cap2197 = mul i64 %b.cap192, 2
  %b.cap.small198 = icmp slt i64 %b.cap2197, 16
  %b.cap.grow199 = select i1 %b.cap.small198, i64 16, i64 %b.cap2197
  %b.cap.need200 = icmp slt i64 %b.cap.grow199, %sum186
  %b.new.cap201 = select i1 %b.cap.need200, i64 %sum186, i64 %b.cap.grow199
  %b.cur.len2202 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 0
  %b.cur.len2203 = load i64, ptr %b.cur.len2202, align 8
  %b.cur.data2204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 1
  %b.cur.data2205 = load ptr, ptr %b.cur.data2204, align 8
  %b.new.buf.len2206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap201, i64 1)
  %sum207 = extractvalue { i64, i1 } %b.new.buf.len2206, 0
  %ovf208 = extractvalue { i64, i1 } %b.new.buf.len2206, 1
  br i1 %ovf208, label %str_overflow_abort210, label %b.new.buf.len2209

b.nogrow2195:                                     ; preds = %b.app.new.len188
  br label %b.grow_done196

b.grow_done196:                                   ; preds = %b.nogrow2195, %b.new.buf.len2209
  %b.app.data217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 1
  %b.app.data218 = load ptr, ptr %b.app.data217, align 8
  %b.app.dst219 = getelementptr i8, ptr %b.app.data218, i64 %b.app.cur.len184
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst219, ptr align 1 %app.str.data182, i64 %app.str.len181, i1 false)
  %b.app.nul220 = getelementptr i8, ptr %b.app.data218, i64 %sum186
  store i8 0, ptr %b.app.nul220, align 1
  %b.len.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 0
  store i64 %sum186, ptr %b.len.gep221, align 8
  br label %choice.exit47

b.new.buf.len2209:                                ; preds = %abort.dead211, %b.grow2194
  %arena.cur212 = call ptr @dva_arena_current()
  %b.new.buf2213 = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 %sum207)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2213, ptr align 1 %b.cur.data2205, i64 %b.cur.len2203, i1 false)
  %b.grow2.nul214 = getelementptr i8, ptr %b.new.buf2213, i64 %b.cur.len2203
  store i8 0, ptr %b.grow2.nul214, align 1
  %b.new.data2.gep215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 1
  store ptr %b.new.buf2213, ptr %b.new.data2.gep215, align 8
  %b.new.cap2.gep216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 2
  store i64 %b.new.cap201, ptr %b.new.cap2.gep216, align 8
  br label %b.grow_done196

str_overflow_abort210:                            ; preds = %b.grow2194
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead211:                                    ; No predecessors!
  br label %b.new.buf.len2209

choice.case222:                                   ; preds = %choice.next177
  %b.load225 = load ptr, ptr %var.b, align 8
  %app.str.len226 = load i64, ptr @str.22.struct, align 8
  %app.str.len227 = and i64 %app.str.len226, 281474976710655
  %app.str.data228 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %b.app.cur.len229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 0
  %b.app.cur.len230 = load i64, ptr %b.app.cur.len229, align 8
  %b.app.new.len231 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len230, i64 %app.str.len227)
  %sum232 = extractvalue { i64, i1 } %b.app.new.len231, 0
  %ovf233 = extractvalue { i64, i1 } %b.app.new.len231, 1
  br i1 %ovf233, label %str_overflow_abort235, label %b.app.new.len234

choice.next223:                                   ; preds = %choice.next177
  %b.load268 = load ptr, ptr %var.b, align 8
  %var.load269 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load269, 0
  %b.b.le255 = icmp sle i64 %var.load269, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.app.new.len234:                                 ; preds = %abort.dead236, %choice.case222
  %b.cap237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 2
  %b.cap238 = load i64, ptr %b.cap237, align 8
  %b.need.grow239 = icmp slt i64 %b.cap238, %sum232
  br i1 %b.need.grow239, label %b.grow2240, label %b.nogrow2241

str_overflow_abort235:                            ; preds = %choice.case222
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead236:                                    ; No predecessors!
  br label %b.app.new.len234

b.grow2240:                                       ; preds = %b.app.new.len234
  %b.cap2243 = mul i64 %b.cap238, 2
  %b.cap.small244 = icmp slt i64 %b.cap2243, 16
  %b.cap.grow245 = select i1 %b.cap.small244, i64 16, i64 %b.cap2243
  %b.cap.need246 = icmp slt i64 %b.cap.grow245, %sum232
  %b.new.cap247 = select i1 %b.cap.need246, i64 %sum232, i64 %b.cap.grow245
  %b.cur.len2248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 0
  %b.cur.len2249 = load i64, ptr %b.cur.len2248, align 8
  %b.cur.data2250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 1
  %b.cur.data2251 = load ptr, ptr %b.cur.data2250, align 8
  %b.new.buf.len2252 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap247, i64 1)
  %sum253 = extractvalue { i64, i1 } %b.new.buf.len2252, 0
  %ovf254 = extractvalue { i64, i1 } %b.new.buf.len2252, 1
  br i1 %ovf254, label %str_overflow_abort256, label %b.new.buf.len2255

b.nogrow2241:                                     ; preds = %b.app.new.len234
  br label %b.grow_done242

b.grow_done242:                                   ; preds = %b.nogrow2241, %b.new.buf.len2255
  %b.app.data263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 1
  %b.app.data264 = load ptr, ptr %b.app.data263, align 8
  %b.app.dst265 = getelementptr i8, ptr %b.app.data264, i64 %b.app.cur.len230
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst265, ptr align 1 %app.str.data228, i64 %app.str.len227, i1 false)
  %b.app.nul266 = getelementptr i8, ptr %b.app.data264, i64 %sum232
  store i8 0, ptr %b.app.nul266, align 1
  %b.len.gep267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 0
  store i64 %sum232, ptr %b.len.gep267, align 8
  br label %choice.exit47

b.new.buf.len2255:                                ; preds = %abort.dead257, %b.grow2240
  %arena.cur258 = call ptr @dva_arena_current()
  %b.new.buf2259 = call ptr @dva_arena_alloc(ptr %arena.cur258, i64 %sum253)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2259, ptr align 1 %b.cur.data2251, i64 %b.cur.len2249, i1 false)
  %b.grow2.nul260 = getelementptr i8, ptr %b.new.buf2259, i64 %b.cur.len2249
  store i8 0, ptr %b.grow2.nul260, align 1
  %b.new.data2.gep261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 1
  store ptr %b.new.buf2259, ptr %b.new.data2.gep261, align 8
  %b.new.cap2.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 2
  store i64 %b.new.cap247, ptr %b.new.cap2.gep262, align 8
  br label %b.grow_done242

str_overflow_abort256:                            ; preds = %b.grow2240
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead257:                                    ; No predecessors!
  br label %b.new.buf.len2255

b.byte_ok:                                        ; preds = %abort.dead270, %choice.next223
  %b.byte.i8 = trunc i64 %var.load269 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 0
  %b.len271 = load i64, ptr %b.len, align 8
  %b.cap272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 2
  %b.cap273 = load i64, ptr %b.cap272, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 1
  %b.data274 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len271, %b.cap273
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next223
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead270:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2275 = mul i64 %b.cap273, 2
  %b.cap.small276 = icmp slt i64 %b.cap2275, 16
  %b.new.cap277 = select i1 %b.cap.small276, i64 16, i64 %b.cap2275
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap277, i64 1)
  %sum278 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf279 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf279, label %str_overflow_abort281, label %b.new.buf.len280

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len280
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 1
  %b.cur.data284 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 0
  %b.cur.len285 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data284, i64 %b.cur.len285
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len285, 1
  %b.nul = getelementptr i8, ptr %b.cur.data284, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep286, align 8
  br label %choice.exit47

b.new.buf.len280:                                 ; preds = %abort.dead282, %b.grow
  %arena.cur283 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur283, i64 %sum278)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data274, i64 %b.len271, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len271
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load268, i32 0, i32 2
  store i64 %b.new.cap277, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort281:                            ; preds = %b.grow
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead282:                                    ; No predecessors!
  br label %b.new.buf.len280

b.rn.new.len293:                                  ; preds = %abort.dead295, %loop.exit.90
  %b.cap296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 2
  %b.cap297 = load i64, ptr %b.cap296, align 8
  %b.need.grow298 = icmp slt i64 %b.cap297, %sum291
  br i1 %b.need.grow298, label %b.grow2299, label %b.nogrow2300

str_overflow_abort294:                            ; preds = %loop.exit.90
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead295:                                    ; No predecessors!
  br label %b.rn.new.len293

b.grow2299:                                       ; preds = %b.rn.new.len293
  %b.cap2302 = mul i64 %b.cap297, 2
  %b.cap.small303 = icmp slt i64 %b.cap2302, 16
  %b.cap.grow304 = select i1 %b.cap.small303, i64 16, i64 %b.cap2302
  %b.cap.need305 = icmp slt i64 %b.cap.grow304, %sum291
  %b.new.cap306 = select i1 %b.cap.need305, i64 %sum291, i64 %b.cap.grow304
  %b.cur.len2307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  %b.cur.len2308 = load i64, ptr %b.cur.len2307, align 8
  %b.cur.data2309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  %b.cur.data2310 = load ptr, ptr %b.cur.data2309, align 8
  %b.new.buf.len2311 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap306, i64 1)
  %sum312 = extractvalue { i64, i1 } %b.new.buf.len2311, 0
  %ovf313 = extractvalue { i64, i1 } %b.new.buf.len2311, 1
  br i1 %ovf313, label %str_overflow_abort315, label %b.new.buf.len2314

b.nogrow2300:                                     ; preds = %b.rn.new.len293
  br label %b.grow_done301

b.grow_done301:                                   ; preds = %b.nogrow2300, %b.new.buf.len2314
  %b.rn.data322 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  %b.rn.data323 = load ptr, ptr %b.rn.data322, align 8
  %b.rn.dst324 = getelementptr i8, ptr %b.rn.data323, i64 %b.rn.cur.len289
  br i1 true, label %br.b1.91, label %br.c2.91

b.new.buf.len2314:                                ; preds = %abort.dead316, %b.grow2299
  %arena.cur317 = call ptr @dva_arena_current()
  %b.new.buf2318 = call ptr @dva_arena_alloc(ptr %arena.cur317, i64 %sum312)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2318, ptr align 1 %b.cur.data2310, i64 %b.cur.len2308, i1 false)
  %b.grow2.nul319 = getelementptr i8, ptr %b.new.buf2318, i64 %b.cur.len2308
  store i8 0, ptr %b.grow2.nul319, align 1
  %b.new.data2.gep320 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  store ptr %b.new.buf2318, ptr %b.new.data2.gep320, align 8
  %b.new.cap2.gep321 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 2
  store i64 %b.new.cap306, ptr %b.new.cap2.gep321, align 8
  br label %b.grow_done301

str_overflow_abort315:                            ; preds = %b.grow2299
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead316:                                    ; No predecessors!
  br label %b.new.buf.len2314

br.b1.91:                                         ; preds = %b.grow_done301
  store i8 34, ptr %b.rn.dst324, align 1
  br label %br.done.91

br.c2.91:                                         ; preds = %b.grow_done301
  br i1 true, label %br.b2.91, label %br.c3.91

br.b2.91:                                         ; preds = %br.c2.91
  store i8 -64, ptr %b.rn.dst324, align 1
  %br.dst1325 = getelementptr i8, ptr %b.rn.dst324, i64 1
  store i8 -94, ptr %br.dst1325, align 1
  br label %br.done.91

br.c3.91:                                         ; preds = %br.c2.91
  br i1 true, label %br.b3.91, label %br.b4.91

br.b3.91:                                         ; preds = %br.c3.91
  store i8 -32, ptr %b.rn.dst324, align 1
  %br.dst1.3326 = getelementptr i8, ptr %b.rn.dst324, i64 1
  store i8 -128, ptr %br.dst1.3326, align 1
  %br.dst2.3327 = getelementptr i8, ptr %b.rn.dst324, i64 2
  store i8 -94, ptr %br.dst2.3327, align 1
  br label %br.done.91

br.b4.91:                                         ; preds = %br.c3.91
  store i8 -16, ptr %b.rn.dst324, align 1
  %br.dst1.4328 = getelementptr i8, ptr %b.rn.dst324, i64 1
  store i8 -128, ptr %br.dst1.4328, align 1
  %br.dst2.4329 = getelementptr i8, ptr %b.rn.dst324, i64 2
  store i8 -128, ptr %br.dst2.4329, align 1
  %br.dst3.4330 = getelementptr i8, ptr %b.rn.dst324, i64 3
  store i8 -94, ptr %br.dst3.4330, align 1
  br label %br.done.91

br.done.91:                                       ; preds = %br.b4.91, %br.b3.91, %br.b2.91, %br.b1.91
  %br.nul331 = getelementptr i8, ptr %b.rn.data323, i64 %sum291
  store i8 0, ptr %br.nul331, align 1
  %b.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  store i64 %sum291, ptr %b.len.gep332, align 8
  %var.load333 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load333, i32 0, i32 0
  %b.freeze.len334 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load333, i32 0, i32 1
  %b.freeze.data335 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data335, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data335, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data335, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len334, 1
  %arena.cur336 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur336, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data335, i64 %b.freeze.len334, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len334
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.91
  %b.freeze.data337 = phi ptr [ %b.freeze.data335, %br.done.91 ], [ %b.freeze.data335, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur338 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur338, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len334, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data337, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load333, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load333, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load333, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack339 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack339
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

define internal { i64, ptr } @"log::#append_fields"(ptr %0, ptr %1) #0 {
entry:
  %var.f = alloca ptr, align 8
  %var._124 = alloca i64, align 8
  %var._i123 = alloca i64, align 8
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit
  store i64 %str.len.query7, ptr %"var.total'", align 8
  %var.load9 = load ptr, ptr %var.fields, align 8
  %a.load10 = load ptr, ptr %var.fields, align 8
  %a.null11 = icmp eq ptr %a.load10, null
  br i1 %a.null11, label %a.create12, label %a.after13

tag.gen_check:                                    ; preds = %choice.exit
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

a.create12:                                       ; preds = %str_ok
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
  store ptr %a.create15, ptr %var.fields, align 8
  br label %a.after13

a.after13:                                        ; preds = %a.create12, %str_ok
  %a.load221 = load ptr, ptr %var.fields, align 8
  %a.len.query22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load221, i32 0, i32 0
  %a.len.query23 = load i64, ptr %a.len.query22, align 8
  store i64 0, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %a.after13
  %counter.load = load i64, ptr %loop.idx.92, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query23
  br i1 %loop.cond, label %loop.body.92, label %loop.exit.nat.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.92, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load24 = load i64, ptr %"var.total'", align 8
  %addtmp = add i64 %var.load24, 1
  %var.load25 = load ptr, ptr %var.fields, align 8
  %a.load26 = load ptr, ptr %var.fields, align 8
  %a.null27 = icmp eq ptr %a.load26, null
  br i1 %a.null27, label %a.create28, label %a.after29

loop.exit.nat.92:                                 ; preds = %loop.header.92
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %unwrap.pos.93
  %step.val = load i64, ptr %loop.step.92, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %loop.exit.nat.92
  %var.load68 = load i64, ptr %"var.total'", align 8
  %addtmp69 = add i64 %var.load68, 8
  %cap.neg = icmp slt i64 %addtmp69, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp69
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len70

a.create28:                                       ; preds = %loop.body.92
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
  store ptr %a.create31, ptr %var.fields, align 8
  br label %a.after29

a.after29:                                        ; preds = %a.create28, %loop.body.92
  %a.load237 = load ptr, ptr %var.fields, align 8
  %var.load38 = load i64, ptr %var.i, align 8
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
  %arena.cur42 = call ptr @dva_arena_current()
  %err.alloc43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 56)
  %err.code.gep44 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 0
  store i64 4011, ptr %err.code.gep44, align 8
  %err.msg.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 1
  store ptr @str.25.struct, ptr %err.msg.gep45, align 8
  %err.file.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep46, align 8
  %err.line.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 3
  store i64 131, ptr %err.line.gep47, align 8
  %err.col.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 4
  store i64 43, ptr %err.col.gep48, align 8
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
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.93, label %unwrap.abort.93

unwrap.pos.93:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  %str.len.query64 = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 0
  %str.len.query65 = load i64, ptr %str.len.query64, align 8
  %str.len.query66 = and i64 %str.len.query65, 281474976710655
  %addtmp67 = add i64 %addtmp, %str.len.query66
  store i64 %addtmp67, ptr %"var.total'", align 8
  br label %loop.latch.92

unwrap.abort.93:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep53 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep53, align 8
  %err.msg.gep54 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep54, align 8
  %err.file.gep55 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep55, align 8
  %err.line.gep56 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep56, align 8
  %err.col.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep57, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len58 = load i64, ptr %err.msg.len, align 8
  %err.msg.len59 = and i64 %err.msg.len58, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len59 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data60 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len61 = load i64, ptr %err.file.len, align 8
  %err.file.len62 = and i64 %err.file.len61, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len62 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data63 = load ptr, ptr %err.file.data, align 8
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
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data60, i32 %err.file.len32, ptr %err.file.data63, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

b.buf.len70:                                      ; preds = %abort.dead71, %loop.exit.92
  %arena.cur72 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load73 = load ptr, ptr %var.msg, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 0
  %app.str.len74 = load i64, ptr %app.str.len, align 8
  %app.str.len75 = and i64 %app.str.len74, 281474976710655
  %str.tag76 = lshr i64 %app.str.len74, 48
  %tag.immortal78 = icmp eq i64 %str.tag76, 0
  br i1 %tag.immortal78, label %str_ok77, label %tag.gen_check79

str_overflow_abort:                               ; preds = %loop.exit.92
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %b.buf.len70

str_ok77:                                         ; preds = %abort.dead86, %tag.slow_check80, %tag.gen_check79, %b.buf.len70
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load73, i32 0, i32 1
  %app.str.data87 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len88 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len88, i64 %app.str.len75)
  %sum89 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf90 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf90, label %str_overflow_abort92, label %b.app.new.len91

tag.gen_check79:                                  ; preds = %b.buf.len70
  %active.gen82 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok83 = icmp eq i64 %str.tag76, %active.gen82
  br i1 %tag.fast.ok83, label %str_ok77, label %tag.slow_check80

tag.slow_check80:                                 ; preds = %tag.gen_check79
  %arena.cur84 = call ptr @dva_arena_current()
  %tag.valid85 = call i1 @dva_arena_validate_tag(ptr %arena.cur84, i64 %str.tag76)
  br i1 %tag.valid85, label %str_ok77, label %tag.stale81

tag.stale81:                                      ; preds = %tag.slow_check80
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead86:                                     ; No predecessors!
  br label %str_ok77

b.app.new.len91:                                  ; preds = %abort.dead93, %str_ok77
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap94 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap94, %sum89
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort92:                             ; preds = %str_ok77
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead93:                                     ; No predecessors!
  br label %b.app.new.len91

b.grow2:                                          ; preds = %b.app.new.len91
  %b.cap2 = mul i64 %b.cap94, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum89
  %b.new.cap = select i1 %b.cap.need, i64 %sum89, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len295 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data296 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum97 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf98 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf98, label %str_overflow_abort100, label %b.new.buf.len299

b.nogrow2:                                        ; preds = %b.app.new.len91
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len299
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data103 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data103, i64 %b.app.cur.len88
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data87, i64 %app.str.len75, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data103, i64 %sum89
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum89, ptr %b.len.gep104, align 8
  %var.load105 = load ptr, ptr %var.fields, align 8
  %a.load106 = load ptr, ptr %var.fields, align 8
  %a.null107 = icmp eq ptr %a.load106, null
  br i1 %a.null107, label %a.create108, label %a.after109

b.new.buf.len299:                                 ; preds = %abort.dead101, %b.grow2
  %arena.cur102 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 %sum97)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data296, i64 %b.cur.len295, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len295
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort100:                            ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %b.new.buf.len299

a.create108:                                      ; preds = %b.grow_done
  %arena.cur110 = call ptr @dva_arena_current()
  %a.create111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 24)
  %arena.cur112 = call ptr @dva_arena_current()
  %a.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 128)
  %a.len.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 0
  store i64 0, ptr %a.len.gep114, align 8
  %a.data.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 1
  store ptr %a.buf113, ptr %a.data.gep115, align 8
  %a.cap.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 2
  store i64 16, ptr %a.cap.gep116, align 8
  store ptr %a.create111, ptr %var.fields, align 8
  br label %a.after109

a.after109:                                       ; preds = %a.create108, %b.grow_done
  %a.load2117 = load ptr, ptr %var.fields, align 8
  %a.len.query118 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 0
  %a.len.query119 = load i64, ptr %a.len.query118, align 8
  store i64 0, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.header.94:                                   ; preds = %loop.latch.94, %a.after109
  %counter.load120 = load i64, ptr %loop.idx.94, align 8
  %loop.cond121 = icmp slt i64 %counter.load120, %a.len.query119
  br i1 %loop.cond121, label %loop.body.94, label %loop.exit.nat.94

loop.body.94:                                     ; preds = %loop.header.94
  %loop.rel.i122 = sub i64 %counter.load120, 0
  store i64 1, ptr %loop.step.94, align 8
  store i64 %loop.rel.i122, ptr %var._i123, align 8
  store i64 %counter.load120, ptr %var._124, align 8
  store i64 %counter.load120, ptr %var.i, align 8
  %var.load125 = load ptr, ptr %var.fields, align 8
  %a.load126 = load ptr, ptr %var.fields, align 8
  %a.null127 = icmp eq ptr %a.load126, null
  br i1 %a.null127, label %a.create128, label %a.after129

loop.exit.nat.94:                                 ; preds = %loop.header.94
  br label %loop.exit.94

loop.latch.94:                                    ; preds = %choice.exit220
  %step.val302 = load i64, ptr %loop.step.94, align 8
  %loop.next303 = add i64 %counter.load120, %step.val302
  store i64 %loop.next303, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.exit.94:                                     ; preds = %loop.exit.nat.94
  %var.load304 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 0
  %b.freeze.len305 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 1
  %b.freeze.data306 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

a.create128:                                      ; preds = %loop.body.94
  %arena.cur130 = call ptr @dva_arena_current()
  %a.create131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 24)
  %arena.cur132 = call ptr @dva_arena_current()
  %a.buf133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 128)
  %a.len.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 0
  store i64 0, ptr %a.len.gep134, align 8
  %a.data.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 1
  store ptr %a.buf133, ptr %a.data.gep135, align 8
  %a.cap.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 2
  store i64 16, ptr %a.cap.gep136, align 8
  store ptr %a.create131, ptr %var.fields, align 8
  br label %a.after129

a.after129:                                       ; preds = %a.create128, %loop.body.94
  %a.load2137 = load ptr, ptr %var.fields, align 8
  %var.load138 = load i64, ptr %var.i, align 8
  %a.rd.nonnull139 = icmp ne ptr %a.load2137, null
  br i1 %a.rd.nonnull139, label %a.rd.check140, label %a.rd.err.null142

a.rd.check140:                                    ; preds = %a.after129
  %a.rd.len145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2137, i32 0, i32 0
  %a.rd.len146 = load i64, ptr %a.rd.len145, align 8
  %a.rd.ge0147 = icmp sge i64 %var.load138, 0
  %a.rd.lt148 = icmp slt i64 %var.load138, %a.rd.len146
  %a.rd.bounds149 = and i1 %a.rd.ge0147, %a.rd.lt148
  br i1 %a.rd.bounds149, label %a.rd.ok141, label %a.rd.err.oob143

a.rd.ok141:                                       ; preds = %a.rd.check140
  %a.rd.data150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2137, i32 0, i32 1
  %a.rd.data151 = load ptr, ptr %a.rd.data150, align 8
  %a.rd.elem.gep152 = getelementptr i64, ptr %a.rd.data151, i64 %var.load138
  %a.rd.elem153 = load i64, ptr %a.rd.elem.gep152, align 8
  br label %a.rd.done144

a.rd.err.null142:                                 ; preds = %a.after129
  %arena.cur154 = call ptr @dva_arena_current()
  %err.alloc155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 56)
  %err.code.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 0
  store i64 4011, ptr %err.code.gep156, align 8
  %err.msg.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep157, align 8
  %err.file.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep158, align 8
  %err.line.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 3
  store i64 135, ptr %err.line.gep159, align 8
  %err.col.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 4
  store i64 23, ptr %err.col.gep160, align 8
  %err.ctx.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 5
  %err.ctx0.gep162 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep161, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep162, align 8
  %err.ctx1.gep163 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep161, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep163, align 8
  %err.p2i164 = ptrtoint ptr %err.alloc155 to i64
  br label %a.rd.done144

a.rd.err.oob143:                                  ; preds = %a.rd.check140
  %arena.cur165 = call ptr @dva_arena_current()
  %err.alloc166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 56)
  %err.code.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 0
  store i64 4011, ptr %err.code.gep167, align 8
  %err.msg.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 1
  store ptr @str.25.struct, ptr %err.msg.gep168, align 8
  %err.file.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 2
  store ptr @str.24.struct, ptr %err.file.gep169, align 8
  %err.line.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 3
  store i64 135, ptr %err.line.gep170, align 8
  %err.col.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 4
  store i64 23, ptr %err.col.gep171, align 8
  %err.ctx.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc166, i32 0, i32 5
  %err.ctx0.gep173 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep172, i32 0, i32 0
  store i64 %var.load138, ptr %err.ctx0.gep173, align 8
  %err.ctx1.gep174 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep172, i32 0, i32 1
  store i64 %a.rd.len146, ptr %err.ctx1.gep174, align 8
  %err.p2i175 = ptrtoint ptr %err.alloc166 to i64
  br label %a.rd.done144

a.rd.done144:                                     ; preds = %a.rd.err.oob143, %a.rd.err.null142, %a.rd.ok141
  %a.rd.tag176 = phi i1 [ true, %a.rd.ok141 ], [ false, %a.rd.err.null142 ], [ false, %a.rd.err.oob143 ]
  %a.rd.pay177 = phi i64 [ %a.rd.elem153, %a.rd.ok141 ], [ %err.p2i164, %a.rd.err.null142 ], [ %err.p2i175, %a.rd.err.oob143 ]
  %ram.tag178 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag176, 0
  %ram.pay179 = insertvalue { i1, i64 } %ram.tag178, i64 %a.rd.pay177, 1
  %unwrap.is_pos180 = extractvalue { i1, i64 } %ram.pay179, 0
  br i1 %unwrap.is_pos180, label %unwrap.pos.95, label %unwrap.abort.95

unwrap.pos.95:                                    ; preds = %a.rd.done144
  %unwrap.pay.pos212 = extractvalue { i1, i64 } %ram.pay179, 1
  %pay.ptr213 = inttoptr i64 %unwrap.pay.pos212 to ptr
  store ptr %pay.ptr213, ptr %var.f, align 8
  %var.load214 = load ptr, ptr %var.f, align 8
  %str.len.query215 = getelementptr inbounds { i64, ptr }, ptr %var.load214, i32 0, i32 0
  %str.len.query216 = load i64, ptr %str.len.query215, align 8
  %str.len.query217 = and i64 %str.len.query216, 281474976710655
  %cmptmp218 = icmp sgt i64 %str.len.query217, 0
  br i1 %cmptmp218, label %choice.then219, label %choice.exit220

unwrap.abort.95:                                  ; preds = %a.rd.done144
  %unwrap.pay.abort181 = extractvalue { i1, i64 } %ram.pay179, 1
  %err.ptr182 = inttoptr i64 %unwrap.pay.abort181 to ptr
  %err.code.gep183 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 0
  %err.code184 = load i64, ptr %err.code.gep183, align 8
  %err.msg.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 1
  %err.msg.struct186 = load ptr, ptr %err.msg.gep185, align 8
  %err.file.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 2
  %err.file.struct188 = load ptr, ptr %err.file.gep187, align 8
  %err.line.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 3
  %err.line190 = load i64, ptr %err.line.gep189, align 8
  %err.col.gep191 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr182, i32 0, i32 4
  %err.col192 = load i64, ptr %err.col.gep191, align 8
  %err.msg.len193 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct186, i32 0, i32 0
  %err.msg.len194 = load i64, ptr %err.msg.len193, align 8
  %err.msg.len195 = and i64 %err.msg.len194, 281474976710655
  %err.msg.len32196 = trunc i64 %err.msg.len195 to i32
  %err.msg.data197 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct186, i32 0, i32 1
  %err.msg.data198 = load ptr, ptr %err.msg.data197, align 8
  %err.file.len199 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct188, i32 0, i32 0
  %err.file.len200 = load i64, ptr %err.file.len199, align 8
  %err.file.len201 = and i64 %err.file.len200, 281474976710655
  %err.file.len32202 = trunc i64 %err.file.len201 to i32
  %err.file.data203 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct188, i32 0, i32 1
  %err.file.data204 = load ptr, ptr %err.file.data203, align 8
  %err.thread.rec205 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread206 = icmp ne ptr %err.thread.rec205, null
  br i1 %err.is.thread206, label %err.thread207, label %err.normal208

err.thread207:                                    ; preds = %unwrap.abort.95
  %err.haserr.gep209 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec205, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep209, align 8
  %err.err.gep210 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec205, i32 0, i32 7
  store ptr %err.ptr182, ptr %err.err.gep210, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal208:                                    ; preds = %unwrap.abort.95
  %err.panic.printf211 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code184, i32 %err.msg.len32196, ptr %err.msg.data198, i32 %err.file.len32202, ptr %err.file.data204, i64 %err.line190, i64 %err.col192)
  call void @exit(i32 1)
  unreachable

choice.then219:                                   ; preds = %unwrap.pos.95
  %b.load221 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load221, i32 0, i32 0
  %b.rn.cur.len222 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len222, i64 1)
  %sum223 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf224 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf224, label %str_overflow_abort226, label %b.rn.new.len225

choice.exit220:                                   ; preds = %b.grow_done276, %unwrap.pos.95
  br label %loop.latch.94

b.rn.new.len225:                                  ; preds = %abort.dead227, %choice.then219
  %b.cap228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load221, i32 0, i32 2
  %b.cap229 = load i64, ptr %b.cap228, align 8
  %b.need.grow230 = icmp slt i64 %b.cap229, %sum223
  br i1 %b.need.grow230, label %b.grow2231, label %b.nogrow2232

str_overflow_abort226:                            ; preds = %choice.then219
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead227:                                    ; No predecessors!
  br label %b.rn.new.len225

b.grow2231:                                       ; preds = %b.rn.new.len225
  %b.cap2234 = mul i64 %b.cap229, 2
  %b.cap.small235 = icmp slt i64 %b.cap2234, 16
  %b.cap.grow236 = select i1 %b.cap.small235, i64 16, i64 %b.cap2234
  %b.cap.need237 = icmp slt i64 %b.cap.grow236, %sum223
  %b.new.cap238 = select i1 %b.cap.need237, i64 %sum223, i64 %b.cap.grow236
  %b.cur.len2239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load221, i32 0, i32 0
  %b.cur.len2240 = load i64, ptr %b.cur.len2239, align 8
  %b.cur.data2241 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load221, i32 0, i32 1
  %b.cur.data2242 = load ptr, ptr %b.cur.data2241, align 8
  %b.new.buf.len2243 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap238, i64 1)
  %sum244 = extractvalue { i64, i1 } %b.new.buf.len2243, 0
  %ovf245 = extractvalue { i64, i1 } %b.new.buf.len2243, 1
  br i1 %ovf245, label %str_overflow_abort247, label %b.new.buf.len2246

b.nogrow2232:                                     ; preds = %b.rn.new.len225
  br label %b.grow_done233

b.grow_done233:                                   ; preds = %b.nogrow2232, %b.new.buf.len2246
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load221, i32 0, i32 1
  %b.rn.data254 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data254, i64 %b.rn.cur.len222
  br i1 true, label %br.b1.96, label %br.c2.96

b.new.buf.len2246:                                ; preds = %abort.dead248, %b.grow2231
  %arena.cur249 = call ptr @dva_arena_current()
  %b.new.buf2250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 %sum244)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2250, ptr align 1 %b.cur.data2242, i64 %b.cur.len2240, i1 false)
  %b.grow2.nul251 = getelementptr i8, ptr %b.new.buf2250, i64 %b.cur.len2240
  store i8 0, ptr %b.grow2.nul251, align 1
  %b.new.data2.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load221, i32 0, i32 1
  store ptr %b.new.buf2250, ptr %b.new.data2.gep252, align 8
  %b.new.cap2.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load221, i32 0, i32 2
  store i64 %b.new.cap238, ptr %b.new.cap2.gep253, align 8
  br label %b.grow_done233

str_overflow_abort247:                            ; preds = %b.grow2231
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead248:                                    ; No predecessors!
  br label %b.new.buf.len2246

br.b1.96:                                         ; preds = %b.grow_done233
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.96

br.c2.96:                                         ; preds = %b.grow_done233
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
  %br.nul = getelementptr i8, ptr %b.rn.data254, i64 %sum223
  store i8 0, ptr %br.nul, align 1
  %b.len.gep255 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load221, i32 0, i32 0
  store i64 %sum223, ptr %b.len.gep255, align 8
  %b.load256 = load ptr, ptr %var.b, align 8
  %var.load257 = load ptr, ptr %var.f, align 8
  %app.str.len258 = getelementptr inbounds { i64, ptr }, ptr %var.load257, i32 0, i32 0
  %app.str.len259 = load i64, ptr %app.str.len258, align 8
  %app.str.len260 = and i64 %app.str.len259, 281474976710655
  %app.str.data261 = getelementptr inbounds { i64, ptr }, ptr %var.load257, i32 0, i32 1
  %app.str.data262 = load ptr, ptr %app.str.data261, align 8
  %b.app.cur.len263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load256, i32 0, i32 0
  %b.app.cur.len264 = load i64, ptr %b.app.cur.len263, align 8
  %b.app.new.len265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len264, i64 %app.str.len260)
  %sum266 = extractvalue { i64, i1 } %b.app.new.len265, 0
  %ovf267 = extractvalue { i64, i1 } %b.app.new.len265, 1
  br i1 %ovf267, label %str_overflow_abort269, label %b.app.new.len268

b.app.new.len268:                                 ; preds = %abort.dead270, %br.done.96
  %b.cap271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load256, i32 0, i32 2
  %b.cap272 = load i64, ptr %b.cap271, align 8
  %b.need.grow273 = icmp slt i64 %b.cap272, %sum266
  br i1 %b.need.grow273, label %b.grow2274, label %b.nogrow2275

str_overflow_abort269:                            ; preds = %br.done.96
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead270:                                    ; No predecessors!
  br label %b.app.new.len268

b.grow2274:                                       ; preds = %b.app.new.len268
  %b.cap2277 = mul i64 %b.cap272, 2
  %b.cap.small278 = icmp slt i64 %b.cap2277, 16
  %b.cap.grow279 = select i1 %b.cap.small278, i64 16, i64 %b.cap2277
  %b.cap.need280 = icmp slt i64 %b.cap.grow279, %sum266
  %b.new.cap281 = select i1 %b.cap.need280, i64 %sum266, i64 %b.cap.grow279
  %b.cur.len2282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load256, i32 0, i32 0
  %b.cur.len2283 = load i64, ptr %b.cur.len2282, align 8
  %b.cur.data2284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load256, i32 0, i32 1
  %b.cur.data2285 = load ptr, ptr %b.cur.data2284, align 8
  %b.new.buf.len2286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap281, i64 1)
  %sum287 = extractvalue { i64, i1 } %b.new.buf.len2286, 0
  %ovf288 = extractvalue { i64, i1 } %b.new.buf.len2286, 1
  br i1 %ovf288, label %str_overflow_abort290, label %b.new.buf.len2289

b.nogrow2275:                                     ; preds = %b.app.new.len268
  br label %b.grow_done276

b.grow_done276:                                   ; preds = %b.nogrow2275, %b.new.buf.len2289
  %b.app.data297 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load256, i32 0, i32 1
  %b.app.data298 = load ptr, ptr %b.app.data297, align 8
  %b.app.dst299 = getelementptr i8, ptr %b.app.data298, i64 %b.app.cur.len264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst299, ptr align 1 %app.str.data262, i64 %app.str.len260, i1 false)
  %b.app.nul300 = getelementptr i8, ptr %b.app.data298, i64 %sum266
  store i8 0, ptr %b.app.nul300, align 1
  %b.len.gep301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load256, i32 0, i32 0
  store i64 %sum266, ptr %b.len.gep301, align 8
  br label %choice.exit220

b.new.buf.len2289:                                ; preds = %abort.dead291, %b.grow2274
  %arena.cur292 = call ptr @dva_arena_current()
  %b.new.buf2293 = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 %sum287)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2293, ptr align 1 %b.cur.data2285, i64 %b.cur.len2283, i1 false)
  %b.grow2.nul294 = getelementptr i8, ptr %b.new.buf2293, i64 %b.cur.len2283
  store i8 0, ptr %b.grow2.nul294, align 1
  %b.new.data2.gep295 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load256, i32 0, i32 1
  store ptr %b.new.buf2293, ptr %b.new.data2.gep295, align 8
  %b.new.cap2.gep296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load256, i32 0, i32 2
  store i64 %b.new.cap281, ptr %b.new.cap2.gep296, align 8
  br label %b.grow_done276

str_overflow_abort290:                            ; preds = %b.grow2274
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead291:                                    ; No predecessors!
  br label %b.new.buf.len2289

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data306, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data306, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data306, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len305, 1
  %arena.cur307 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data306, i64 %b.freeze.len305, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len305
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.94
  %b.freeze.data308 = phi ptr [ %b.freeze.data306, %loop.exit.94 ], [ %b.freeze.data306, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur309 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur309, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len305, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data308, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack310 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack310
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %call.res1 = call { i64, ptr } @"str::lower"(ptr %ret.ub.alloc)
  %arena.cur2 = call ptr @dva_arena_current()
  %ret.ub.alloc3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 16)
  store { i64, ptr } %call.res1, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len4 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.next166, %choice.case165, %choice.case104, %choice.case44, %choice.case10, %choice.case
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.case ], [ %ram.pay43, %choice.case10 ], [ %ram.pay103, %choice.case44 ], [ %ram.pay164, %choice.case104 ], [ %ram.pay252, %choice.case165 ], [ zeroinitializer, %choice.next166 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %str.eq.merge
  %arena.cur9 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge
  %eq.lhs.len12 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len13 = load i64, ptr %eq.lhs.len12, align 8
  %eq.lhs.len14 = and i64 %eq.lhs.len13, 281474976710655
  %str.tag15 = lshr i64 %eq.lhs.len13, 48
  %tag.immortal17 = icmp eq i64 %str.tag15, 0
  br i1 %tag.immortal17, label %str_ok16, label %tag.gen_check18

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.26.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur6 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur6, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data8 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data8, ptr %eq.rhs.data, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.case, label %choice.next

choice.case10:                                    ; preds = %str.eq.merge31
  %arena.cur38 = call ptr @dva_arena_current()
  %enum.alloc39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %tag.gep40 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc39, i32 0, i32 0
  store i64 1, ptr %tag.gep40, align 8
  %pay.gep41 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc39, i32 0, i32 1
  store ptr null, ptr %pay.gep41, align 8
  %p.to.i6442 = ptrtoint ptr %enum.alloc39 to i64
  %ram.pay43 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6442, 1
  br label %choice.exit

choice.next11:                                    ; preds = %str.eq.merge31
  %eq.lhs.len46 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len47 = load i64, ptr %eq.lhs.len46, align 8
  %eq.lhs.len48 = and i64 %eq.lhs.len47, 281474976710655
  %str.tag49 = lshr i64 %eq.lhs.len47, 48
  %tag.immortal51 = icmp eq i64 %str.tag49, 0
  br i1 %tag.immortal51, label %str_ok50, label %tag.gen_check52

str_ok16:                                         ; preds = %abort.dead25, %tag.slow_check19, %tag.gen_check18, %choice.next
  %eq.rhs.len26 = load i64, ptr @str.27.struct, align 8
  %eq.rhs.len27 = and i64 %eq.rhs.len26, 281474976710655
  %eq.len28 = icmp eq i64 %eq.lhs.len14, %eq.rhs.len27
  br i1 %eq.len28, label %str.eq.then29, label %str.eq.else30

tag.gen_check18:                                  ; preds = %choice.next
  %active.gen21 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok22 = icmp eq i64 %str.tag15, %active.gen21
  br i1 %tag.fast.ok22, label %str_ok16, label %tag.slow_check19

tag.slow_check19:                                 ; preds = %tag.gen_check18
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag15)
  br i1 %tag.valid24, label %str_ok16, label %tag.stale20

tag.stale20:                                      ; preds = %tag.slow_check19
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %str_ok16

str.eq.then29:                                    ; preds = %str_ok16
  %eq.lhs.data32 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data33 = load ptr, ptr %eq.lhs.data32, align 8
  %eq.rhs.data34 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %eq.memcmp35 = call i32 @memcmp(ptr %eq.lhs.data33, ptr %eq.rhs.data34, i64 %eq.lhs.len14)
  %eq.cmp.zero36 = icmp eq i32 %eq.memcmp35, 0
  br label %str.eq.merge31

str.eq.else30:                                    ; preds = %str_ok16
  br label %str.eq.merge31

str.eq.merge31:                                   ; preds = %str.eq.else30, %str.eq.then29
  %str.eq.result37 = phi i1 [ %eq.cmp.zero36, %str.eq.then29 ], [ false, %str.eq.else30 ]
  br i1 %str.eq.result37, label %choice.case10, label %choice.next11

choice.case44:                                    ; preds = %str.eq.merge91
  %arena.cur98 = call ptr @dva_arena_current()
  %enum.alloc99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 16)
  %tag.gep100 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc99, i32 0, i32 0
  store i64 2, ptr %tag.gep100, align 8
  %pay.gep101 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc99, i32 0, i32 1
  store ptr null, ptr %pay.gep101, align 8
  %p.to.i64102 = ptrtoint ptr %enum.alloc99 to i64
  %ram.pay103 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64102, 1
  br label %choice.exit

choice.next45:                                    ; preds = %str.eq.merge91
  %eq.lhs.len106 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len107 = load i64, ptr %eq.lhs.len106, align 8
  %eq.lhs.len108 = and i64 %eq.lhs.len107, 281474976710655
  %str.tag109 = lshr i64 %eq.lhs.len107, 48
  %tag.immortal111 = icmp eq i64 %str.tag109, 0
  br i1 %tag.immortal111, label %str_ok110, label %tag.gen_check112

str_ok50:                                         ; preds = %abort.dead59, %tag.slow_check53, %tag.gen_check52, %choice.next11
  %eq.rhs.len60 = load i64, ptr @str.28.struct, align 8
  %eq.rhs.len61 = and i64 %eq.rhs.len60, 281474976710655
  %eq.len62 = icmp eq i64 %eq.lhs.len48, %eq.rhs.len61
  br i1 %eq.len62, label %str.eq.then63, label %str.eq.else64

tag.gen_check52:                                  ; preds = %choice.next11
  %active.gen55 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok56 = icmp eq i64 %str.tag49, %active.gen55
  br i1 %tag.fast.ok56, label %str_ok50, label %tag.slow_check53

tag.slow_check53:                                 ; preds = %tag.gen_check52
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag49)
  br i1 %tag.valid58, label %str_ok50, label %tag.stale54

tag.stale54:                                      ; preds = %tag.slow_check53
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead59:                                     ; No predecessors!
  br label %str_ok50

str.eq.then63:                                    ; preds = %str_ok50
  %eq.lhs.data66 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data67 = load ptr, ptr %eq.lhs.data66, align 8
  %eq.rhs.data68 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %eq.memcmp69 = call i32 @memcmp(ptr %eq.lhs.data67, ptr %eq.rhs.data68, i64 %eq.lhs.len48)
  %eq.cmp.zero70 = icmp eq i32 %eq.memcmp69, 0
  br label %str.eq.merge65

str.eq.else64:                                    ; preds = %str_ok50
  br label %str.eq.merge65

str.eq.merge65:                                   ; preds = %str.eq.else64, %str.eq.then63
  %str.eq.result71 = phi i1 [ %eq.cmp.zero70, %str.eq.then63 ], [ false, %str.eq.else64 ]
  %eq.lhs.len72 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len73 = load i64, ptr %eq.lhs.len72, align 8
  %eq.lhs.len74 = and i64 %eq.lhs.len73, 281474976710655
  %str.tag75 = lshr i64 %eq.lhs.len73, 48
  %tag.immortal77 = icmp eq i64 %str.tag75, 0
  br i1 %tag.immortal77, label %str_ok76, label %tag.gen_check78

str_ok76:                                         ; preds = %abort.dead85, %tag.slow_check79, %tag.gen_check78, %str.eq.merge65
  %eq.rhs.len86 = load i64, ptr @str.29.struct, align 8
  %eq.rhs.len87 = and i64 %eq.rhs.len86, 281474976710655
  %eq.len88 = icmp eq i64 %eq.lhs.len74, %eq.rhs.len87
  br i1 %eq.len88, label %str.eq.then89, label %str.eq.else90

tag.gen_check78:                                  ; preds = %str.eq.merge65
  %active.gen81 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok82 = icmp eq i64 %str.tag75, %active.gen81
  br i1 %tag.fast.ok82, label %str_ok76, label %tag.slow_check79

tag.slow_check79:                                 ; preds = %tag.gen_check78
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid84 = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %str.tag75)
  br i1 %tag.valid84, label %str_ok76, label %tag.stale80

tag.stale80:                                      ; preds = %tag.slow_check79
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead85:                                     ; No predecessors!
  br label %str_ok76

str.eq.then89:                                    ; preds = %str_ok76
  %eq.lhs.data92 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data93 = load ptr, ptr %eq.lhs.data92, align 8
  %eq.rhs.data94 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %eq.memcmp95 = call i32 @memcmp(ptr %eq.lhs.data93, ptr %eq.rhs.data94, i64 %eq.lhs.len74)
  %eq.cmp.zero96 = icmp eq i32 %eq.memcmp95, 0
  br label %str.eq.merge91

str.eq.else90:                                    ; preds = %str_ok76
  br label %str.eq.merge91

str.eq.merge91:                                   ; preds = %str.eq.else90, %str.eq.then89
  %str.eq.result97 = phi i1 [ %eq.cmp.zero96, %str.eq.then89 ], [ false, %str.eq.else90 ]
  %case.or = or i1 %str.eq.result71, %str.eq.result97
  br i1 %case.or, label %choice.case44, label %choice.next45

choice.case104:                                   ; preds = %str.eq.merge151
  %arena.cur159 = call ptr @dva_arena_current()
  %enum.alloc160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 16)
  %tag.gep161 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc160, i32 0, i32 0
  store i64 3, ptr %tag.gep161, align 8
  %pay.gep162 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc160, i32 0, i32 1
  store ptr null, ptr %pay.gep162, align 8
  %p.to.i64163 = ptrtoint ptr %enum.alloc160 to i64
  %ram.pay164 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64163, 1
  br label %choice.exit

choice.next105:                                   ; preds = %str.eq.merge151
  %eq.lhs.len167 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len168 = load i64, ptr %eq.lhs.len167, align 8
  %eq.lhs.len169 = and i64 %eq.lhs.len168, 281474976710655
  %str.tag170 = lshr i64 %eq.lhs.len168, 48
  %tag.immortal172 = icmp eq i64 %str.tag170, 0
  br i1 %tag.immortal172, label %str_ok171, label %tag.gen_check173

str_ok110:                                        ; preds = %abort.dead119, %tag.slow_check113, %tag.gen_check112, %choice.next45
  %eq.rhs.len120 = load i64, ptr @str.30.struct, align 8
  %eq.rhs.len121 = and i64 %eq.rhs.len120, 281474976710655
  %eq.len122 = icmp eq i64 %eq.lhs.len108, %eq.rhs.len121
  br i1 %eq.len122, label %str.eq.then123, label %str.eq.else124

tag.gen_check112:                                 ; preds = %choice.next45
  %active.gen115 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok116 = icmp eq i64 %str.tag109, %active.gen115
  br i1 %tag.fast.ok116, label %str_ok110, label %tag.slow_check113

tag.slow_check113:                                ; preds = %tag.gen_check112
  %arena.cur117 = call ptr @dva_arena_current()
  %tag.valid118 = call i1 @dva_arena_validate_tag(ptr %arena.cur117, i64 %str.tag109)
  br i1 %tag.valid118, label %str_ok110, label %tag.stale114

tag.stale114:                                     ; preds = %tag.slow_check113
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %str_ok110

str.eq.then123:                                   ; preds = %str_ok110
  %eq.lhs.data126 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data127 = load ptr, ptr %eq.lhs.data126, align 8
  %eq.rhs.data128 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %eq.memcmp129 = call i32 @memcmp(ptr %eq.lhs.data127, ptr %eq.rhs.data128, i64 %eq.lhs.len108)
  %eq.cmp.zero130 = icmp eq i32 %eq.memcmp129, 0
  br label %str.eq.merge125

str.eq.else124:                                   ; preds = %str_ok110
  br label %str.eq.merge125

str.eq.merge125:                                  ; preds = %str.eq.else124, %str.eq.then123
  %str.eq.result131 = phi i1 [ %eq.cmp.zero130, %str.eq.then123 ], [ false, %str.eq.else124 ]
  %eq.lhs.len132 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len133 = load i64, ptr %eq.lhs.len132, align 8
  %eq.lhs.len134 = and i64 %eq.lhs.len133, 281474976710655
  %str.tag135 = lshr i64 %eq.lhs.len133, 48
  %tag.immortal137 = icmp eq i64 %str.tag135, 0
  br i1 %tag.immortal137, label %str_ok136, label %tag.gen_check138

str_ok136:                                        ; preds = %abort.dead145, %tag.slow_check139, %tag.gen_check138, %str.eq.merge125
  %eq.rhs.len146 = load i64, ptr @str.31.struct, align 8
  %eq.rhs.len147 = and i64 %eq.rhs.len146, 281474976710655
  %eq.len148 = icmp eq i64 %eq.lhs.len134, %eq.rhs.len147
  br i1 %eq.len148, label %str.eq.then149, label %str.eq.else150

tag.gen_check138:                                 ; preds = %str.eq.merge125
  %active.gen141 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok142 = icmp eq i64 %str.tag135, %active.gen141
  br i1 %tag.fast.ok142, label %str_ok136, label %tag.slow_check139

tag.slow_check139:                                ; preds = %tag.gen_check138
  %arena.cur143 = call ptr @dva_arena_current()
  %tag.valid144 = call i1 @dva_arena_validate_tag(ptr %arena.cur143, i64 %str.tag135)
  br i1 %tag.valid144, label %str_ok136, label %tag.stale140

tag.stale140:                                     ; preds = %tag.slow_check139
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead145:                                    ; No predecessors!
  br label %str_ok136

str.eq.then149:                                   ; preds = %str_ok136
  %eq.lhs.data152 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data153 = load ptr, ptr %eq.lhs.data152, align 8
  %eq.rhs.data154 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %eq.memcmp155 = call i32 @memcmp(ptr %eq.lhs.data153, ptr %eq.rhs.data154, i64 %eq.lhs.len134)
  %eq.cmp.zero156 = icmp eq i32 %eq.memcmp155, 0
  br label %str.eq.merge151

str.eq.else150:                                   ; preds = %str_ok136
  br label %str.eq.merge151

str.eq.merge151:                                  ; preds = %str.eq.else150, %str.eq.then149
  %str.eq.result157 = phi i1 [ %eq.cmp.zero156, %str.eq.then149 ], [ false, %str.eq.else150 ]
  %case.or158 = or i1 %str.eq.result131, %str.eq.result157
  br i1 %case.or158, label %choice.case104, label %choice.next105

choice.case165:                                   ; preds = %str.eq.merge239
  %arena.cur247 = call ptr @dva_arena_current()
  %enum.alloc248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 16)
  %tag.gep249 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc248, i32 0, i32 0
  store i64 4, ptr %tag.gep249, align 8
  %pay.gep250 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc248, i32 0, i32 1
  store ptr null, ptr %pay.gep250, align 8
  %p.to.i64251 = ptrtoint ptr %enum.alloc248 to i64
  %ram.pay252 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64251, 1
  br label %choice.exit

choice.next166:                                   ; preds = %str.eq.merge239
  br label %choice.exit

str_ok171:                                        ; preds = %abort.dead180, %tag.slow_check174, %tag.gen_check173, %choice.next105
  %eq.rhs.len181 = load i64, ptr @str.32.struct, align 8
  %eq.rhs.len182 = and i64 %eq.rhs.len181, 281474976710655
  %eq.len183 = icmp eq i64 %eq.lhs.len169, %eq.rhs.len182
  br i1 %eq.len183, label %str.eq.then184, label %str.eq.else185

tag.gen_check173:                                 ; preds = %choice.next105
  %active.gen176 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok177 = icmp eq i64 %str.tag170, %active.gen176
  br i1 %tag.fast.ok177, label %str_ok171, label %tag.slow_check174

tag.slow_check174:                                ; preds = %tag.gen_check173
  %arena.cur178 = call ptr @dva_arena_current()
  %tag.valid179 = call i1 @dva_arena_validate_tag(ptr %arena.cur178, i64 %str.tag170)
  br i1 %tag.valid179, label %str_ok171, label %tag.stale175

tag.stale175:                                     ; preds = %tag.slow_check174
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead180:                                    ; No predecessors!
  br label %str_ok171

str.eq.then184:                                   ; preds = %str_ok171
  %eq.lhs.data187 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data188 = load ptr, ptr %eq.lhs.data187, align 8
  %eq.rhs.data189 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %eq.memcmp190 = call i32 @memcmp(ptr %eq.lhs.data188, ptr %eq.rhs.data189, i64 %eq.lhs.len169)
  %eq.cmp.zero191 = icmp eq i32 %eq.memcmp190, 0
  br label %str.eq.merge186

str.eq.else185:                                   ; preds = %str_ok171
  br label %str.eq.merge186

str.eq.merge186:                                  ; preds = %str.eq.else185, %str.eq.then184
  %str.eq.result192 = phi i1 [ %eq.cmp.zero191, %str.eq.then184 ], [ false, %str.eq.else185 ]
  %eq.lhs.len193 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len194 = load i64, ptr %eq.lhs.len193, align 8
  %eq.lhs.len195 = and i64 %eq.lhs.len194, 281474976710655
  %str.tag196 = lshr i64 %eq.lhs.len194, 48
  %tag.immortal198 = icmp eq i64 %str.tag196, 0
  br i1 %tag.immortal198, label %str_ok197, label %tag.gen_check199

str_ok197:                                        ; preds = %abort.dead206, %tag.slow_check200, %tag.gen_check199, %str.eq.merge186
  %eq.rhs.len207 = load i64, ptr @str.33.struct, align 8
  %eq.rhs.len208 = and i64 %eq.rhs.len207, 281474976710655
  %eq.len209 = icmp eq i64 %eq.lhs.len195, %eq.rhs.len208
  br i1 %eq.len209, label %str.eq.then210, label %str.eq.else211

tag.gen_check199:                                 ; preds = %str.eq.merge186
  %active.gen202 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok203 = icmp eq i64 %str.tag196, %active.gen202
  br i1 %tag.fast.ok203, label %str_ok197, label %tag.slow_check200

tag.slow_check200:                                ; preds = %tag.gen_check199
  %arena.cur204 = call ptr @dva_arena_current()
  %tag.valid205 = call i1 @dva_arena_validate_tag(ptr %arena.cur204, i64 %str.tag196)
  br i1 %tag.valid205, label %str_ok197, label %tag.stale201

tag.stale201:                                     ; preds = %tag.slow_check200
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead206:                                    ; No predecessors!
  br label %str_ok197

str.eq.then210:                                   ; preds = %str_ok197
  %eq.lhs.data213 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data214 = load ptr, ptr %eq.lhs.data213, align 8
  %eq.rhs.data215 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %eq.memcmp216 = call i32 @memcmp(ptr %eq.lhs.data214, ptr %eq.rhs.data215, i64 %eq.lhs.len195)
  %eq.cmp.zero217 = icmp eq i32 %eq.memcmp216, 0
  br label %str.eq.merge212

str.eq.else211:                                   ; preds = %str_ok197
  br label %str.eq.merge212

str.eq.merge212:                                  ; preds = %str.eq.else211, %str.eq.then210
  %str.eq.result218 = phi i1 [ %eq.cmp.zero217, %str.eq.then210 ], [ false, %str.eq.else211 ]
  %case.or219 = or i1 %str.eq.result192, %str.eq.result218
  %eq.lhs.len220 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 0
  %eq.lhs.len221 = load i64, ptr %eq.lhs.len220, align 8
  %eq.lhs.len222 = and i64 %eq.lhs.len221, 281474976710655
  %str.tag223 = lshr i64 %eq.lhs.len221, 48
  %tag.immortal225 = icmp eq i64 %str.tag223, 0
  br i1 %tag.immortal225, label %str_ok224, label %tag.gen_check226

str_ok224:                                        ; preds = %abort.dead233, %tag.slow_check227, %tag.gen_check226, %str.eq.merge212
  %eq.rhs.len234 = load i64, ptr @str.34.struct, align 8
  %eq.rhs.len235 = and i64 %eq.rhs.len234, 281474976710655
  %eq.len236 = icmp eq i64 %eq.lhs.len222, %eq.rhs.len235
  br i1 %eq.len236, label %str.eq.then237, label %str.eq.else238

tag.gen_check226:                                 ; preds = %str.eq.merge212
  %active.gen229 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok230 = icmp eq i64 %str.tag223, %active.gen229
  br i1 %tag.fast.ok230, label %str_ok224, label %tag.slow_check227

tag.slow_check227:                                ; preds = %tag.gen_check226
  %arena.cur231 = call ptr @dva_arena_current()
  %tag.valid232 = call i1 @dva_arena_validate_tag(ptr %arena.cur231, i64 %str.tag223)
  br i1 %tag.valid232, label %str_ok224, label %tag.stale228

tag.stale228:                                     ; preds = %tag.slow_check227
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead233:                                    ; No predecessors!
  br label %str_ok224

str.eq.then237:                                   ; preds = %str_ok224
  %eq.lhs.data240 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data241 = load ptr, ptr %eq.lhs.data240, align 8
  %eq.rhs.data242 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %eq.memcmp243 = call i32 @memcmp(ptr %eq.lhs.data241, ptr %eq.rhs.data242, i64 %eq.lhs.len222)
  %eq.cmp.zero244 = icmp eq i32 %eq.memcmp243, 0
  br label %str.eq.merge239

str.eq.else238:                                   ; preds = %str_ok224
  br label %str.eq.merge239

str.eq.merge239:                                  ; preds = %str.eq.else238, %str.eq.then237
  %str.eq.result245 = phi i1 [ %eq.cmp.zero244, %str.eq.then237 ], [ false, %str.eq.else238 ]
  %case.or246 = or i1 %case.or219, %str.eq.result245
  br i1 %case.or246, label %choice.case165, label %choice.next166
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr5, label %nulcopy

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

arg.str.ptr5:                                     ; preds = %str_ok
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %nulcopy.len6, %arg.str.ptr5
  %arg.str.ptr9 = phi ptr [ %arg.str.ptr1, %arg.str.ptr5 ], [ %nulcopy.buf, %nulcopy.len6 ]
  %var.load10 = load i64, ptr @"var.log::#O_LOG_APPEND", align 8
  %coerce.trunc = trunc i64 %var.load10 to i32
  %call.res = call i32 @open(ptr %arg.str.ptr9, i32 %coerce.trunc, i64 420)
  %coerce.sext = sext i32 %call.res to i64
  store i64 %coerce.sext, ptr %var.fd, align 8
  %var.load11 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load11, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

nulcopy.len6:                                     ; preds = %abort.dead7, %nulcopy
  %arena.cur8 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %nulcopy.len6

choice.then:                                      ; preds = %nulmerge
  br label %choice.exit

choice.else:                                      ; preds = %nulmerge
  %var.load12 = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp13 = icmp sge i64 %var.load12, 0
  br i1 %cmptmp13, label %choice.then14, label %choice.exit15

choice.exit:                                      ; preds = %choice.exit15, %choice.then
  %choice.res = phi i1 [ false, %choice.then ], [ true, %choice.exit15 ]
  ret i1 %choice.res

choice.then14:                                    ; preds = %choice.else
  %var.load16 = load i64, ptr @"var.log::#owned_fd", align 8
  %coerce.trunc17 = trunc i64 %var.load16 to i32
  %call.res18 = call i32 @close(i32 %coerce.trunc17)
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.then14, %choice.else
  %var.load19 = load i64, ptr %var.fd, align 8
  store i64 %var.load19, ptr @"var.log::#owned_fd", align 8
  %var.load20 = load i64, ptr %var.fd, align 8
  store i64 %var.load20, ptr @"var.log::#out_fd", align 8
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
  %concat.str226 = alloca { i64, ptr }, align 8
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
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res1, ptr %ret.ub.alloc, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.lvl, align 8
  %call.res3 = call { i64, ptr } @"log::#level_plain"(ptr %var.load2)
  %arena.cur4 = call ptr @dva_arena_current()
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

choice.exit9:                                     ; preds = %choice.else8, %concat.tot.len48
  %choice.res53 = phi ptr [ %concat.str, %concat.tot.len48 ], [ @str.0.struct, %choice.else8 ]
  store ptr %choice.res53, ptr %var.ts_str, align 8
  %var.load54 = load ptr, ptr @"var.log::#prefix_tag", align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %str.len.query55 = load i64, ptr %str.len.query, align 8
  %str.len.query56 = and i64 %str.len.query55, 281474976710655
  %str.tag57 = lshr i64 %str.len.query55, 48
  %tag.immortal59 = icmp eq i64 %str.tag57, 0
  br i1 %tag.immortal59, label %str_ok58, label %tag.gen_check60

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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.then15:                                    ; preds = %choice.then11
  %call.res18 = call { i64, ptr } @"time::utc_iso_basic$Unit"(i64 0)
  %arena.cur19 = call ptr @dva_arena_current()
  %ret.ub.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  store { i64, ptr } %call.res18, ptr %ret.ub.alloc20, align 8
  br label %choice.exit17

choice.else16:                                    ; preds = %choice.then11
  %call.res21 = call { i64, ptr } @"time::utc_iso$Unit"(i64 0)
  %arena.cur22 = call ptr @dva_arena_current()
  %ret.ub.alloc23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  store { i64, ptr } %call.res21, ptr %ret.ub.alloc23, align 8
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else16, %choice.then15
  %choice.res24 = phi ptr [ %ret.ub.alloc20, %choice.then15 ], [ %ret.ub.alloc23, %choice.else16 ]
  br label %choice.exit13

choice.then26:                                    ; preds = %choice.else12
  %call.res29 = call { i64, ptr } @"time::iso_basic$Unit"(i64 0)
  %arena.cur30 = call ptr @dva_arena_current()
  %ret.ub.alloc31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store { i64, ptr } %call.res29, ptr %ret.ub.alloc31, align 8
  br label %choice.exit28

choice.else27:                                    ; preds = %choice.else12
  %call.res32 = call { i64, ptr } @"time::iso$Unit"(i64 0)
  %arena.cur33 = call ptr @dva_arena_current()
  %ret.ub.alloc34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  store { i64, ptr } %call.res32, ptr %ret.ub.alloc34, align 8
  br label %choice.exit28

choice.exit28:                                    ; preds = %choice.else27, %choice.then26
  %choice.res35 = phi ptr [ %ret.ub.alloc31, %choice.then26 ], [ %ret.ub.alloc34, %choice.else27 ]
  br label %choice.exit13

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit13
  %concat.lhs40 = getelementptr inbounds { i64, ptr }, ptr %choice.res36, i32 0, i32 1
  %concat.lhs41 = load ptr, ptr %concat.lhs40, align 8
  %concat.rhs = load i64, ptr @str.35.struct, align 8
  %concat.rhs42 = and i64 %concat.rhs, 281474976710655
  %concat.rhs43 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs38, i64 %concat.rhs42)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len44

tag.gen_check:                                    ; preds = %choice.exit13
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

concat.sum.len44:                                 ; preds = %abort.dead45, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum46 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf47 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf47, label %str_overflow_abort49, label %concat.tot.len48

str_overflow_abort:                               ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %concat.sum.len44

concat.tot.len48:                                 ; preds = %abort.dead50, %concat.sum.len44
  %arena.cur51 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs41, i64 %concat.lhs38, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs43, i64 %concat.rhs42, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur52 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit9

str_overflow_abort49:                             ; preds = %concat.sum.len44
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %concat.tot.len48

str_ok58:                                         ; preds = %abort.dead67, %tag.slow_check61, %tag.gen_check60, %choice.exit9
  %cmptmp = icmp sgt i64 %str.len.query56, 0
  br i1 %cmptmp, label %choice.then68, label %choice.else69

tag.gen_check60:                                  ; preds = %choice.exit9
  %active.gen63 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok64 = icmp eq i64 %str.tag57, %active.gen63
  br i1 %tag.fast.ok64, label %str_ok58, label %tag.slow_check61

tag.slow_check61:                                 ; preds = %tag.gen_check60
  %arena.cur65 = call ptr @dva_arena_current()
  %tag.valid66 = call i1 @dva_arena_validate_tag(ptr %arena.cur65, i64 %str.tag57)
  br i1 %tag.valid66, label %str_ok58, label %tag.stale62

tag.stale62:                                      ; preds = %tag.slow_check61
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %str_ok58

choice.then68:                                    ; preds = %str_ok58
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %var.load71 = load ptr, ptr @"var.log::#prefix_tag", align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %cat.seg72 = load i64, ptr %cat.seg, align 8
  %cat.seg73 = and i64 %cat.seg72, 281474976710655
  %str.tag74 = lshr i64 %cat.seg72, 48
  %tag.immortal76 = icmp eq i64 %str.tag74, 0
  br i1 %tag.immortal76, label %str_ok75, label %tag.gen_check77

choice.else69:                                    ; preds = %str_ok58
  br label %choice.exit70

choice.exit70:                                    ; preds = %choice.else69, %concat.tot.len102
  %choice.res114 = phi ptr [ %concat.str111, %concat.tot.len102 ], [ @str.0.struct, %choice.else69 ]
  store ptr %choice.res114, ptr %var.pfx_part, align 8
  %var.load115 = load ptr, ptr %var.ts_str, align 8
  %cat.seg116 = getelementptr inbounds { i64, ptr }, ptr %var.load115, i32 0, i32 0
  %cat.seg117 = load i64, ptr %cat.seg116, align 8
  %cat.seg118 = and i64 %cat.seg117, 281474976710655
  %str.tag119 = lshr i64 %cat.seg117, 48
  %tag.immortal121 = icmp eq i64 %str.tag119, 0
  br i1 %tag.immortal121, label %str_ok120, label %tag.gen_check122

str_ok75:                                         ; preds = %abort.dead84, %tag.slow_check78, %tag.gen_check77, %choice.then68
  %cat.seg85 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 1
  %cat.seg86 = load ptr, ptr %cat.seg85, align 8
  %cat.lit.data87 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.16.struct, i32 0, i32 1), align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %cat.seg73)
  %sum88 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf89 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf89, label %str_overflow_abort91, label %cat.sum.len90

tag.gen_check77:                                  ; preds = %choice.then68
  %active.gen80 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok81 = icmp eq i64 %str.tag74, %active.gen80
  br i1 %tag.fast.ok81, label %str_ok75, label %tag.slow_check78

tag.slow_check78:                                 ; preds = %tag.gen_check77
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid83 = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag74)
  br i1 %tag.valid83, label %str_ok75, label %tag.stale79

tag.stale79:                                      ; preds = %tag.slow_check78
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %str_ok75

cat.sum.len90:                                    ; preds = %abort.dead92, %str_ok75
  %cat.sum.len93 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum88, i64 1)
  %sum94 = extractvalue { i64, i1 } %cat.sum.len93, 0
  %ovf95 = extractvalue { i64, i1 } %cat.sum.len93, 1
  br i1 %ovf95, label %str_overflow_abort97, label %cat.sum.len96

str_overflow_abort91:                             ; preds = %str_ok75
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %cat.sum.len90

cat.sum.len96:                                    ; preds = %abort.dead98, %cat.sum.len90
  %concat.tot.len99 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum94, i64 1)
  %sum100 = extractvalue { i64, i1 } %concat.tot.len99, 0
  %ovf101 = extractvalue { i64, i1 } %concat.tot.len99, 1
  br i1 %ovf101, label %str_overflow_abort103, label %concat.tot.len102

str_overflow_abort97:                             ; preds = %cat.sum.len90
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead98:                                     ; No predecessors!
  br label %cat.sum.len96

concat.tot.len102:                                ; preds = %abort.dead104, %cat.sum.len96
  %arena.cur105 = call ptr @dva_arena_current()
  %concat.buf106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 %sum100)
  %cat.dst = getelementptr i8, ptr %concat.buf106, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 2, i1 false)
  %cat.dst107 = getelementptr i8, ptr %concat.buf106, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst107, ptr align 1 %cat.seg86, i64 %cat.seg73, i1 false)
  %cat.off = add i64 2, %cat.seg73
  %cat.dst108 = getelementptr i8, ptr %concat.buf106, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst108, ptr align 1 %cat.lit.data87, i64 1, i1 false)
  %concat.nul109 = getelementptr i8, ptr %concat.buf106, i64 %sum94
  store i8 0, ptr %concat.nul109, align 1
  %arena.cur110 = call ptr @dva_arena_current()
  %concat.str111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 16)
  %str.build.len.gep112 = getelementptr inbounds { i64, ptr }, ptr %concat.str111, i32 0, i32 0
  store i64 %sum94, ptr %str.build.len.gep112, align 8
  %str.build.data.gep113 = getelementptr inbounds { i64, ptr }, ptr %concat.str111, i32 0, i32 1
  store ptr %concat.buf106, ptr %str.build.data.gep113, align 8
  br label %choice.exit70

str_overflow_abort103:                            ; preds = %cat.sum.len96
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead104:                                    ; No predecessors!
  br label %concat.tot.len102

str_ok120:                                        ; preds = %abort.dead129, %tag.slow_check123, %tag.gen_check122, %choice.exit70
  %cat.seg130 = getelementptr inbounds { i64, ptr }, ptr %var.load115, i32 0, i32 1
  %cat.seg131 = load ptr, ptr %cat.seg130, align 8
  %var.load132 = load ptr, ptr %var.badge, align 8
  %cat.seg133 = getelementptr inbounds { i64, ptr }, ptr %var.load132, i32 0, i32 0
  %cat.seg134 = load i64, ptr %cat.seg133, align 8
  %cat.seg135 = and i64 %cat.seg134, 281474976710655
  %str.tag136 = lshr i64 %cat.seg134, 48
  %tag.immortal138 = icmp eq i64 %str.tag136, 0
  br i1 %tag.immortal138, label %str_ok137, label %tag.gen_check139

tag.gen_check122:                                 ; preds = %choice.exit70
  %active.gen125 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok126 = icmp eq i64 %str.tag119, %active.gen125
  br i1 %tag.fast.ok126, label %str_ok120, label %tag.slow_check123

tag.slow_check123:                                ; preds = %tag.gen_check122
  %arena.cur127 = call ptr @dva_arena_current()
  %tag.valid128 = call i1 @dva_arena_validate_tag(ptr %arena.cur127, i64 %str.tag119)
  br i1 %tag.valid128, label %str_ok120, label %tag.stale124

tag.stale124:                                     ; preds = %tag.slow_check123
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead129:                                    ; No predecessors!
  br label %str_ok120

str_ok137:                                        ; preds = %abort.dead146, %tag.slow_check140, %tag.gen_check139, %str_ok120
  %cat.seg147 = getelementptr inbounds { i64, ptr }, ptr %var.load132, i32 0, i32 1
  %cat.seg148 = load ptr, ptr %cat.seg147, align 8
  %var.load149 = load ptr, ptr %var.pfx_part, align 8
  %cat.seg150 = getelementptr inbounds { i64, ptr }, ptr %var.load149, i32 0, i32 0
  %cat.seg151 = load i64, ptr %cat.seg150, align 8
  %cat.seg152 = and i64 %cat.seg151, 281474976710655
  %str.tag153 = lshr i64 %cat.seg151, 48
  %tag.immortal155 = icmp eq i64 %str.tag153, 0
  br i1 %tag.immortal155, label %str_ok154, label %tag.gen_check156

tag.gen_check139:                                 ; preds = %str_ok120
  %active.gen142 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok143 = icmp eq i64 %str.tag136, %active.gen142
  br i1 %tag.fast.ok143, label %str_ok137, label %tag.slow_check140

tag.slow_check140:                                ; preds = %tag.gen_check139
  %arena.cur144 = call ptr @dva_arena_current()
  %tag.valid145 = call i1 @dva_arena_validate_tag(ptr %arena.cur144, i64 %str.tag136)
  br i1 %tag.valid145, label %str_ok137, label %tag.stale141

tag.stale141:                                     ; preds = %tag.slow_check140
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead146:                                    ; No predecessors!
  br label %str_ok137

str_ok154:                                        ; preds = %abort.dead163, %tag.slow_check157, %tag.gen_check156, %str_ok137
  %cat.seg164 = getelementptr inbounds { i64, ptr }, ptr %var.load149, i32 0, i32 1
  %cat.seg165 = load ptr, ptr %cat.seg164, align 8
  %cat.lit.data166 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %var.load167 = load ptr, ptr %var.msg, align 8
  %cat.seg168 = getelementptr inbounds { i64, ptr }, ptr %var.load167, i32 0, i32 0
  %cat.seg169 = load i64, ptr %cat.seg168, align 8
  %cat.seg170 = and i64 %cat.seg169, 281474976710655
  %str.tag171 = lshr i64 %cat.seg169, 48
  %tag.immortal173 = icmp eq i64 %str.tag171, 0
  br i1 %tag.immortal173, label %str_ok172, label %tag.gen_check174

tag.gen_check156:                                 ; preds = %str_ok137
  %active.gen159 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok160 = icmp eq i64 %str.tag153, %active.gen159
  br i1 %tag.fast.ok160, label %str_ok154, label %tag.slow_check157

tag.slow_check157:                                ; preds = %tag.gen_check156
  %arena.cur161 = call ptr @dva_arena_current()
  %tag.valid162 = call i1 @dva_arena_validate_tag(ptr %arena.cur161, i64 %str.tag153)
  br i1 %tag.valid162, label %str_ok154, label %tag.stale158

tag.stale158:                                     ; preds = %tag.slow_check157
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %str_ok154

str_ok172:                                        ; preds = %abort.dead181, %tag.slow_check175, %tag.gen_check174, %str_ok154
  %cat.seg182 = getelementptr inbounds { i64, ptr }, ptr %var.load167, i32 0, i32 1
  %cat.seg183 = load ptr, ptr %cat.seg182, align 8
  %cat.sum.len184 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg118, i64 %cat.seg135)
  %sum185 = extractvalue { i64, i1 } %cat.sum.len184, 0
  %ovf186 = extractvalue { i64, i1 } %cat.sum.len184, 1
  br i1 %ovf186, label %str_overflow_abort188, label %cat.sum.len187

tag.gen_check174:                                 ; preds = %str_ok154
  %active.gen177 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok178 = icmp eq i64 %str.tag171, %active.gen177
  br i1 %tag.fast.ok178, label %str_ok172, label %tag.slow_check175

tag.slow_check175:                                ; preds = %tag.gen_check174
  %arena.cur179 = call ptr @dva_arena_current()
  %tag.valid180 = call i1 @dva_arena_validate_tag(ptr %arena.cur179, i64 %str.tag171)
  br i1 %tag.valid180, label %str_ok172, label %tag.stale176

tag.stale176:                                     ; preds = %tag.slow_check175
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead181:                                    ; No predecessors!
  br label %str_ok172

cat.sum.len187:                                   ; preds = %abort.dead189, %str_ok172
  %cat.sum.len190 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum185, i64 %cat.seg152)
  %sum191 = extractvalue { i64, i1 } %cat.sum.len190, 0
  %ovf192 = extractvalue { i64, i1 } %cat.sum.len190, 1
  br i1 %ovf192, label %str_overflow_abort194, label %cat.sum.len193

str_overflow_abort188:                            ; preds = %str_ok172
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead189:                                    ; No predecessors!
  br label %cat.sum.len187

cat.sum.len193:                                   ; preds = %abort.dead195, %cat.sum.len187
  %cat.sum.len196 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum191, i64 1)
  %sum197 = extractvalue { i64, i1 } %cat.sum.len196, 0
  %ovf198 = extractvalue { i64, i1 } %cat.sum.len196, 1
  br i1 %ovf198, label %str_overflow_abort200, label %cat.sum.len199

str_overflow_abort194:                            ; preds = %cat.sum.len187
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead195:                                    ; No predecessors!
  br label %cat.sum.len193

cat.sum.len199:                                   ; preds = %abort.dead201, %cat.sum.len193
  %cat.sum.len202 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum197, i64 %cat.seg170)
  %sum203 = extractvalue { i64, i1 } %cat.sum.len202, 0
  %ovf204 = extractvalue { i64, i1 } %cat.sum.len202, 1
  br i1 %ovf204, label %str_overflow_abort206, label %cat.sum.len205

str_overflow_abort200:                            ; preds = %cat.sum.len193
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead201:                                    ; No predecessors!
  br label %cat.sum.len199

cat.sum.len205:                                   ; preds = %abort.dead207, %cat.sum.len199
  %concat.tot.len208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum203, i64 1)
  %sum209 = extractvalue { i64, i1 } %concat.tot.len208, 0
  %ovf210 = extractvalue { i64, i1 } %concat.tot.len208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %concat.tot.len211

str_overflow_abort206:                            ; preds = %cat.sum.len199
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead207:                                    ; No predecessors!
  br label %cat.sum.len205

concat.tot.len211:                                ; preds = %abort.dead213, %cat.sum.len205
  %arena.cur214 = call ptr @dva_arena_current()
  %concat.buf215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 %sum209)
  %cat.dst216 = getelementptr i8, ptr %concat.buf215, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst216, ptr align 1 %cat.seg131, i64 %cat.seg118, i1 false)
  %cat.off217 = add i64 0, %cat.seg118
  %cat.dst218 = getelementptr i8, ptr %concat.buf215, i64 %cat.off217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst218, ptr align 1 %cat.seg148, i64 %cat.seg135, i1 false)
  %cat.off219 = add i64 %cat.off217, %cat.seg135
  %cat.dst220 = getelementptr i8, ptr %concat.buf215, i64 %cat.off219
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst220, ptr align 1 %cat.seg165, i64 %cat.seg152, i1 false)
  %cat.off221 = add i64 %cat.off219, %cat.seg152
  %cat.dst222 = getelementptr i8, ptr %concat.buf215, i64 %cat.off221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst222, ptr align 1 %cat.lit.data166, i64 1, i1 false)
  %cat.off223 = add i64 %cat.off221, 1
  %cat.dst224 = getelementptr i8, ptr %concat.buf215, i64 %cat.off223
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst224, ptr align 1 %cat.seg183, i64 %cat.seg170, i1 false)
  %concat.nul225 = getelementptr i8, ptr %concat.buf215, i64 %sum203
  store i8 0, ptr %concat.nul225, align 1
  %str.build.len.gep227 = getelementptr inbounds { i64, ptr }, ptr %concat.str226, i32 0, i32 0
  store i64 %sum203, ptr %str.build.len.gep227, align 8
  %str.build.data.gep228 = getelementptr inbounds { i64, ptr }, ptr %concat.str226, i32 0, i32 1
  store ptr %concat.buf215, ptr %str.build.data.gep228, align 8
  %ret.pack = load { i64, ptr }, ptr %concat.str226, align 8
  ret { i64, ptr } %ret.pack

str_overflow_abort212:                            ; preds = %cat.sum.len205
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead213:                                    ; No predecessors!
  br label %concat.tot.len211
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
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
  %arena.cur5 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %str_ok48, %entry
  ret void

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  %concat.lhs6 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %concat.lhs7 = load ptr, ptr %concat.lhs6, align 8
  %concat.rhs = load i64, ptr @str.37.struct, align 8
  %concat.rhs8 = and i64 %concat.rhs, 281474976710655
  %concat.rhs9 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs5, i64 %concat.rhs8)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len10

tag.gen_check:                                    ; preds = %choice.then
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

concat.sum.len10:                                 ; preds = %abort.dead11, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum12 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf13 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %concat.tot.len14

str_overflow_abort:                               ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %concat.sum.len10

concat.tot.len14:                                 ; preds = %abort.dead16, %concat.sum.len10
  %arena.cur17 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %sum12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs7, i64 %concat.lhs5, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs9, i64 %concat.rhs8, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur18 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.line, align 8
  %var.load19 = load i64, ptr @"var.log::#out_fd", align 8
  %var.load20 = load ptr, ptr %var.line, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %arg.str.ptr21 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr22 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %arg.str.ptr23 = load i64, ptr %arg.str.ptr22, align 8
  %arg.str.ptr24 = and i64 %arg.str.ptr23, 281474976710655
  %str.tag25 = lshr i64 %arg.str.ptr23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  br i1 %tag.immortal27, label %str_ok26, label %tag.gen_check28

str_overflow_abort15:                             ; preds = %concat.sum.len10
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %concat.tot.len14

str_ok26:                                         ; preds = %abort.dead35, %tag.slow_check29, %tag.gen_check28, %concat.tot.len14
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr21, i64 %arg.str.ptr24
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr36, label %nulcopy

tag.gen_check28:                                  ; preds = %concat.tot.len14
  %active.gen31 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok32 = icmp eq i64 %str.tag25, %active.gen31
  br i1 %tag.fast.ok32, label %str_ok26, label %tag.slow_check29

tag.slow_check29:                                 ; preds = %tag.gen_check28
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag25)
  br i1 %tag.valid34, label %str_ok26, label %tag.stale30

tag.stale30:                                      ; preds = %tag.slow_check29
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %str_ok26

arg.str.ptr36:                                    ; preds = %str_ok26
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok26
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr24, i64 1)
  %sum37 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf38 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf38, label %str_overflow_abort40, label %nulcopy.len39

nulmerge:                                         ; preds = %nulcopy.len39, %arg.str.ptr36
  %arg.str.ptr43 = phi ptr [ %arg.str.ptr21, %arg.str.ptr36 ], [ %nulcopy.buf, %nulcopy.len39 ]
  %var.load44 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %str.len.query45 = load i64, ptr %str.len.query, align 8
  %str.len.query46 = and i64 %str.len.query45, 281474976710655
  %str.tag47 = lshr i64 %str.len.query45, 48
  %tag.immortal49 = icmp eq i64 %str.tag47, 0
  br i1 %tag.immortal49, label %str_ok48, label %tag.gen_check50

nulcopy.len39:                                    ; preds = %abort.dead41, %nulcopy
  %arena.cur42 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %sum37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr21, i64 %arg.str.ptr24, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr24
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort40:                             ; preds = %nulcopy
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %nulcopy.len39

str_ok48:                                         ; preds = %abort.dead57, %tag.slow_check51, %tag.gen_check50, %nulmerge
  %coerce.trunc = trunc i64 %var.load19 to i32
  %call.res58 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr43, i64 %str.len.query46)
  br label %choice.exit

tag.gen_check50:                                  ; preds = %nulmerge
  %active.gen53 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok54 = icmp eq i64 %str.tag47, %active.gen53
  br i1 %tag.fast.ok54, label %str_ok48, label %tag.slow_check51

tag.slow_check51:                                 ; preds = %tag.gen_check50
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag47)
  br i1 %tag.valid56, label %str_ok48, label %tag.stale52

tag.stale52:                                      ; preds = %tag.slow_check51
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %str_ok48
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

choice.exit:                                      ; preds = %str_ok52, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %a.after
  %concat.lhs10 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  %concat.lhs11 = load ptr, ptr %concat.lhs10, align 8
  %concat.rhs = load i64, ptr @str.37.struct, align 8
  %concat.rhs12 = and i64 %concat.rhs, 281474976710655
  %concat.rhs13 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs8, i64 %concat.rhs12)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len14

tag.gen_check:                                    ; preds = %a.after
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur9 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur9, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

concat.sum.len14:                                 ; preds = %abort.dead15, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum16 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf17 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf17, label %str_overflow_abort19, label %concat.tot.len18

str_overflow_abort:                               ; preds = %str_ok
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %concat.sum.len14

concat.tot.len18:                                 ; preds = %abort.dead20, %concat.sum.len14
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum16)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs11, i64 %concat.lhs8, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs13, i64 %concat.rhs12, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur22 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store ptr %concat.str, ptr %var.line, align 8
  %var.load23 = load i64, ptr @"var.log::#out_fd", align 8
  %var.load24 = load ptr, ptr %var.line, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %arg.str.ptr25 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr26 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %arg.str.ptr27 = load i64, ptr %arg.str.ptr26, align 8
  %arg.str.ptr28 = and i64 %arg.str.ptr27, 281474976710655
  %str.tag29 = lshr i64 %arg.str.ptr27, 48
  %tag.immortal31 = icmp eq i64 %str.tag29, 0
  br i1 %tag.immortal31, label %str_ok30, label %tag.gen_check32

str_overflow_abort19:                             ; preds = %concat.sum.len14
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %concat.tot.len18

str_ok30:                                         ; preds = %abort.dead39, %tag.slow_check33, %tag.gen_check32, %concat.tot.len18
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr25, i64 %arg.str.ptr28
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr40, label %nulcopy

tag.gen_check32:                                  ; preds = %concat.tot.len18
  %active.gen35 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok36 = icmp eq i64 %str.tag29, %active.gen35
  br i1 %tag.fast.ok36, label %str_ok30, label %tag.slow_check33

tag.slow_check33:                                 ; preds = %tag.gen_check32
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag29)
  br i1 %tag.valid38, label %str_ok30, label %tag.stale34

tag.stale34:                                      ; preds = %tag.slow_check33
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %str_ok30

arg.str.ptr40:                                    ; preds = %str_ok30
  br label %nulmerge

nulcopy:                                          ; preds = %str_ok30
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr28, i64 1)
  %sum41 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf42 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %nulcopy.len43

nulmerge:                                         ; preds = %nulcopy.len43, %arg.str.ptr40
  %arg.str.ptr47 = phi ptr [ %arg.str.ptr25, %arg.str.ptr40 ], [ %nulcopy.buf, %nulcopy.len43 ]
  %var.load48 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %str.len.query49 = load i64, ptr %str.len.query, align 8
  %str.len.query50 = and i64 %str.len.query49, 281474976710655
  %str.tag51 = lshr i64 %str.len.query49, 48
  %tag.immortal53 = icmp eq i64 %str.tag51, 0
  br i1 %tag.immortal53, label %str_ok52, label %tag.gen_check54

nulcopy.len43:                                    ; preds = %abort.dead45, %nulcopy
  %arena.cur46 = call ptr @dva_arena_current()
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr25, i64 %arg.str.ptr28, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr28
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort44:                             ; preds = %nulcopy
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %nulcopy.len43

str_ok52:                                         ; preds = %abort.dead61, %tag.slow_check55, %tag.gen_check54, %nulmerge
  %coerce.trunc = trunc i64 %var.load23 to i32
  %call.res62 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr47, i64 %str.len.query50)
  br label %choice.exit

tag.gen_check54:                                  ; preds = %nulmerge
  %active.gen57 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok58 = icmp eq i64 %str.tag51, %active.gen57
  br i1 %tag.fast.ok58, label %str_ok52, label %tag.slow_check55

tag.slow_check55:                                 ; preds = %tag.gen_check54
  %arena.cur59 = call ptr @dva_arena_current()
  %tag.valid60 = call i1 @dva_arena_validate_tag(ptr %arena.cur59, i64 %str.tag51)
  br i1 %tag.valid60, label %str_ok52, label %tag.stale56

tag.stale56:                                      ; preds = %tag.slow_check55
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %str_ok52
}

define void @"log::debug"(ptr %0) #0 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur2 = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
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
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
