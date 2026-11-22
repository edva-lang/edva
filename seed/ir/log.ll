; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@"var.sys::addr_null" = external global ptr
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
@str.13 = internal unnamed_addr constant [5 x i8] c"TERM\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.13 }
@str.14 = internal unnamed_addr constant [5 x i8] c"dumb\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"log::#auto_color_enabled", ptr null }
@"var.log::#auto_color_enabled" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"log::#should_color", ptr null }
@"var.log::#should_color" = global ptr null
@str.15 = internal unnamed_addr constant [2 x i8] c"[\00"
@str.16 = internal unnamed_addr constant [2 x i8] c"]\00"
@clo.const.6 = internal constant { ptr, ptr } { ptr @"log::#level_plain", ptr null }
@"var.log::#level_plain" = global ptr null
@str.17 = internal unnamed_addr constant [5 x i8] c"\1B[0m\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"log::#level_ansi", ptr null }
@"var.log::#level_ansi" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"log::#needs_quoting", ptr null }
@"var.log::#needs_quoting" = global ptr null
@str.18 = internal unnamed_addr constant [3 x i8] c"\\\22\00"
@str.19 = internal unnamed_addr constant [3 x i8] c"\\\\\00"
@str.20 = internal unnamed_addr constant [3 x i8] c"\\n\00"
@str.21 = internal unnamed_addr constant [3 x i8] c"\\r\00"
@str.22 = internal unnamed_addr constant [3 x i8] c"\\t\00"
@clo.const.9 = internal constant { ptr, ptr } { ptr @"log::#quote_value", ptr null }
@"var.log::#quote_value" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"log::#append_fields", ptr null }
@"var.log::#append_fields" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"log::level_rank", ptr null }
@"var.log::level_rank" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"log::level_name", ptr null }
@"var.log::level_name" = global ptr null
@str.23 = internal unnamed_addr constant [6 x i8] c"debug\00"
@str.24 = internal unnamed_addr constant [5 x i8] c"info\00"
@str.25 = internal unnamed_addr constant [5 x i8] c"warn\00"
@str.26 = internal unnamed_addr constant [8 x i8] c"warning\00"
@str.27 = internal unnamed_addr constant [6 x i8] c"error\00"
@str.28 = internal unnamed_addr constant [4 x i8] c"err\00"
@str.29 = internal unnamed_addr constant [7 x i8] c"silent\00"
@str.30 = internal unnamed_addr constant [4 x i8] c"off\00"
@str.31 = internal unnamed_addr constant [5 x i8] c"none\00"
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
@clo.const.25 = internal constant { ptr, ptr } { ptr @"log::set_fd", ptr null }
@"var.log::set_fd" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"log::get_fd", ptr null }
@"var.log::get_fd" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"log::set_file", ptr null }
@"var.log::set_file" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"log::close_file", ptr null }
@"var.log::close_file" = global ptr null
@str.32 = internal unnamed_addr constant [2 x i8] c" \00"
@str.33 = internal unnamed_addr constant [3 x i8] c" [\00"
@clo.const.37 = internal constant { ptr, ptr } { ptr @"log::format_entry", ptr null }
@"var.log::format_entry" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"log::format_kv", ptr null }
@"var.log::format_kv" = global ptr null
@str.34 = internal unnamed_addr constant [2 x i8] c"\0A\00"
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
entry:
  %align.add = add i64 %1, 15
  %aligned = and i64 %align.add, -16
  %cap = load i64, ptr %0, align 8
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

common.ret:                                       ; preds = %slow, %bump
  %common.ret.op = phi ptr [ %result, %bump ], [ %result.slow, %slow ]
  ret ptr %common.ret.op

bump:                                             ; preds = %entry
  %chunks = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 3
  %last = sub i64 %nc, 1
  %slot = getelementptr [16384 x ptr], ptr %chunks, i64 0, i64 %last
  %chunk = load ptr, ptr %slot, align 8
  %result = getelementptr i8, ptr %chunk, i64 %off
  %next = add i64 %off, %aligned
  store i64 %next, ptr %off.ptr, align 8
  br label %common.ret

slow:                                             ; preds = %entry
  %result.slow = call ptr @dva_arena_alloc_slow(ptr %0, i64 %1)
  br label %common.ret
}

; Function Attrs: noinline
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

define internal void @__dva_global_init_log() #3 {
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
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc, ptr %rec.alloc, align 8
  %rec.fld2 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr @str.2.struct, ptr %rec.fld4, align 8
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 16)
  store i64 1, ptr %enum.alloc6, align 8
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc6, i32 0, i32 1
  store ptr null, ptr %pay.gep8, align 8
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc6, ptr %rec.alloc10, align 8
  %rec.fld12 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 1
  store i64 1, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 2
  store ptr @str.3.struct, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc10, i32 0, i32 3
  store ptr @str.4.struct, ptr %rec.fld14, align 8
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  store i64 2, ptr %enum.alloc16, align 8
  %pay.gep18 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc16, i32 0, i32 1
  store ptr null, ptr %pay.gep18, align 8
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc16, ptr %rec.alloc20, align 8
  %rec.fld22 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 1
  store i64 2, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 2
  store ptr @str.5.struct, ptr %rec.fld23, align 8
  %rec.fld24 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc20, i32 0, i32 3
  store ptr @str.6.struct, ptr %rec.fld24, align 8
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  store i64 3, ptr %enum.alloc26, align 8
  %pay.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc26, i32 0, i32 1
  store ptr null, ptr %pay.gep28, align 8
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc26, ptr %rec.alloc30, align 8
  %rec.fld32 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 1
  store i64 3, ptr %rec.fld32, align 8
  %rec.fld33 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 2
  store ptr @str.7.struct, ptr %rec.fld33, align 8
  %rec.fld34 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc30, i32 0, i32 3
  store ptr @str.8.struct, ptr %rec.fld34, align 8
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 16)
  store i64 4, ptr %enum.alloc36, align 8
  %pay.gep38 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc36, i32 0, i32 1
  store ptr null, ptr %pay.gep38, align 8
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %enum.alloc36, ptr %rec.alloc40, align 8
  %rec.fld42 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 1
  store i64 4, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 2
  store ptr @str.9.struct, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %rec.alloc40, i32 0, i32 3
  store ptr @str.0.struct, ptr %rec.fld44, align 8
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 ptrtoint (ptr getelementptr ({ { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr null, i32 1) to i64))
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.alloc46, ptr align 1 %rec.alloc, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, ptr }, ptr null, i32 1) to i64), i1 false)
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

declare i32 @close(i32)

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

declare i64 @isatty(i32)

declare ptr @getenv(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

define internal ptr @"log::#level_meta"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 1, label %choice.case2
    i64 2, label %choice.case9
    i64 3, label %choice.case16
    i64 4, label %choice.case23
  ]

choice.exit:                                      ; preds = %entry, %choice.case23, %choice.case16, %choice.case9, %choice.case2, %choice.case
  %choice.res = phi ptr [ %var.load1, %choice.case ], [ %fld.gep8, %choice.case2 ], [ %fld.gep15, %choice.case9 ], [ %fld.gep22, %choice.case16 ], [ %fld.gep29, %choice.case23 ], [ null, %entry ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load1 = load ptr, ptr @"var.log::#LEVELS", align 8
  br label %choice.exit

choice.case2:                                     ; preds = %entry
  %var.load7 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep8 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load7, i32 0, i32 1
  br label %choice.exit

choice.case9:                                     ; preds = %entry
  %var.load14 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep15 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load14, i32 0, i32 2
  br label %choice.exit

choice.case16:                                    ; preds = %entry
  %var.load21 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep22 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load21, i32 0, i32 3
  br label %choice.exit

choice.case23:                                    ; preds = %entry
  %var.load28 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep29 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load28, i32 0, i32 4
  br label %choice.exit
}

define internal ptr @"log::#rank_to_level"(i64 %0) #3 {
entry:
  switch i64 %0, label %choice.next18 [
    i64 0, label %choice.case
    i64 1, label %choice.case3
    i64 2, label %choice.case10
    i64 3, label %choice.case17
  ]

choice.exit:                                      ; preds = %choice.next18, %choice.case17, %choice.case10, %choice.case3, %choice.case
  %choice.res = phi ptr [ %fld.load, %choice.case ], [ %fld.load9, %choice.case3 ], [ %fld.load16, %choice.case10 ], [ %fld.load23, %choice.case17 ], [ %fld.load27, %choice.next18 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %var.load1 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.load = load ptr, ptr %var.load1, align 8
  br label %choice.exit

choice.case3:                                     ; preds = %entry
  %var.load6 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep7 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load6, i32 0, i32 1
  %fld.load9 = load ptr, ptr %fld.gep7, align 8
  br label %choice.exit

choice.case10:                                    ; preds = %entry
  %var.load13 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep14 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load13, i32 0, i32 2
  %fld.load16 = load ptr, ptr %fld.gep14, align 8
  br label %choice.exit

choice.case17:                                    ; preds = %entry
  %var.load20 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep21 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load20, i32 0, i32 3
  %fld.load23 = load ptr, ptr %fld.gep21, align 8
  br label %choice.exit

choice.next18:                                    ; preds = %entry
  %var.load24 = load ptr, ptr @"var.log::#LEVELS", align 8
  %fld.gep25 = getelementptr inbounds { { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr }, { ptr, i64, ptr, ptr } }, ptr %var.load24, i32 0, i32 4
  %fld.load27 = load ptr, ptr %fld.gep25, align 8
  br label %choice.exit
}

define internal { i64, ptr } @"log::#env_val"(ptr %0) #3 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %arg.str.ptr1 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr3 = load i64, ptr %0, align 8
  %arg.str.ptr4 = and i64 %arg.str.ptr3, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

nulcopy:                                          ; preds = %entry
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %entry, %nulcopy.len6
  %arg.str.ptr7 = phi ptr [ %nulcopy.buf, %nulcopy.len6 ], [ %arg.str.ptr1, %entry ]
  %call.res = call ptr @getenv(ptr %arg.str.ptr7)
  %var.load9 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %call.res to i64
  %ptr.int.r = ptrtoint ptr %var.load9 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.exit, label %choice.else

nulcopy.len6:                                     ; preds = %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.else:                                      ; preds = %nulmerge
  %call.res11 = call { i64, ptr } @"sys::c_str"(ptr %call.res)
  %call.res11.fca.0.extract = extractvalue { i64, ptr } %call.res11, 0
  store i64 %call.res11.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res11.fca.1.extract = extractvalue { i64, ptr } %call.res11, 1
  %call.res11.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  store ptr %call.res11.fca.1.extract, ptr %call.res11.fca.1.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %nulmerge, %choice.else
  %choice.res = phi ptr [ %ret.ub.salloc, %choice.else ], [ @str.0.struct, %nulmerge ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
}

declare { i64, ptr } @"sys::c_str"(ptr) #3

define internal i1 @"log::#auto_color_enabled"() #3 {
entry:
  %call.res = call i1 @"log::#auto_color_enabled_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"()
  ret i1 %call.res
}

define internal i1 @"log::#auto_color_enabled_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"() #3 {
entry:
  %call.res = call { i64, ptr } @"log::#env_val"(ptr @str.10.struct)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %str.len.query2 = and i64 %call.res.fca.0.extract, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query2, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %str.eq.then25, %str.eq.merge, %entry, %choice.exit35
  %common.ret.op = phi i1 [ %cmptmp39, %choice.exit35 ], [ false, %entry ], [ true, %str.eq.merge ], [ false, %str.eq.then25 ]
  ret i1 %common.ret.op

choice.exit:                                      ; preds = %entry
  %call.res3 = call { i64, ptr } @"log::#env_val"(ptr @str.11.struct)
  %call.res3.fca.0.extract = extractvalue { i64, ptr } %call.res3, 0
  %call.res3.fca.1.extract = extractvalue { i64, ptr } %call.res3, 1
  %str.len.query7 = and i64 %call.res3.fca.0.extract, 281474976710655
  %cmptmp8 = icmp sgt i64 %str.len.query7, 0
  br i1 %cmptmp8, label %and.118.then, label %choice.exit15

and.118.then:                                     ; preds = %choice.exit
  %eq.len = icmp eq i64 %str.len.query7, 1
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

str.eq.then:                                      ; preds = %and.118.then
  %eq.memcmp = call i32 @memcmp(ptr %call.res3.fca.1.extract, ptr @str.12, i64 %str.len.query7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %and.118.then, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %and.118.then ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %common.ret, label %choice.exit15

choice.exit15:                                    ; preds = %choice.exit, %str.eq.merge
  %call.res17 = call { i64, ptr } @"log::#env_val"(ptr @str.13.struct)
  %call.res17.fca.0.extract = extractvalue { i64, ptr } %call.res17, 0
  %call.res17.fca.1.extract = extractvalue { i64, ptr } %call.res17, 1
  %eq.lhs.len21 = and i64 %call.res17.fca.0.extract, 281474976710655
  %eq.len24 = icmp eq i64 %eq.lhs.len21, 4
  br i1 %eq.len24, label %str.eq.then25, label %choice.exit35

str.eq.then25:                                    ; preds = %choice.exit15
  %eq.memcmp31 = call i32 @memcmp(ptr %call.res17.fca.1.extract, ptr @str.14, i64 %eq.lhs.len21)
  %eq.cmp.zero32 = icmp eq i32 %eq.memcmp31, 0
  br i1 %eq.cmp.zero32, label %common.ret, label %choice.exit35

choice.exit35:                                    ; preds = %choice.exit15, %str.eq.then25
  %var.load37 = load i64, ptr @"var.log::#out_fd", align 8
  %coerce.trunc = trunc i64 %var.load37 to i32
  %call.res38 = call i64 @isatty(i32 %coerce.trunc)
  %cmptmp39 = icmp eq i64 %call.res38, 1
  br label %common.ret
}

declare i32 @memcmp(ptr, ptr, i64) #3

define internal i1 @"log::#should_color"() #3 {
entry:
  %var.load = load i64, ptr @"var.log::#color_mode", align 8
  switch i64 %var.load, label %choice.next2 [
    i64 1, label %choice.exit
    i64 2, label %choice.case1
  ]

choice.exit:                                      ; preds = %entry, %choice.next2, %choice.case1
  %choice.res = phi i1 [ false, %choice.case1 ], [ %call.res, %choice.next2 ], [ true, %entry ]
  ret i1 %choice.res

choice.case1:                                     ; preds = %entry
  br label %choice.exit

choice.next2:                                     ; preds = %entry
  %call.res = call i1 @"log::#auto_color_enabled"()
  br label %choice.exit
}

define internal { i64, ptr } @"log::#level_plain"(ptr %0) #3 {
entry:
  %call.res = call ptr @"log::#level_meta"(ptr %0)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %cat.seg1 = load i64, ptr %fld.load, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len6

cat.sum.len6:                                     ; preds = %entry
  %cat.sum.len7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %cat.sum.len7, 0
  %ovf9 = extractvalue { i64, i1 } %cat.sum.len7, 1
  br i1 %ovf9, label %str_overflow_abort11, label %cat.sum.len10

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len10:                                    ; preds = %cat.sum.len6
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum8, i64 1)
  %sum13 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf14 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf14, label %str_overflow_abort16, label %concat.tot.len15

str_overflow_abort11:                             ; preds = %cat.sum.len6
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len15:                                 ; preds = %cat.sum.len10
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.15, i64 1, i1 false)
  %cat.dst18 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst18, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %cat.off = add i64 1, %cat.seg2
  %cat.dst19 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst19, ptr align 1 @str.16, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum8
  store i8 0, ptr %concat.nul, align 1
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %sum8, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %concat.buf, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

str_overflow_abort16:                             ; preds = %cat.sum.len10
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal { i64, ptr } @"log::#level_ansi"(ptr %0) #3 {
entry:
  %concat.str67 = alloca { i64, ptr }, align 8
  %concat.str67.sroa.gep72 = getelementptr inbounds { i64, ptr }, ptr %concat.str67, i32 0, i32 1
  %call.res = call ptr @"log::#level_meta"(ptr %0)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %cat.seg2 = load i64, ptr %fld.load, align 8
  %cat.seg3 = and i64 %cat.seg2, 281474976710655
  %cat.seg4 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %cat.seg5 = load ptr, ptr %cat.seg4, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.seg3)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len7

cat.sum.len7:                                     ; preds = %entry
  %cat.sum.len8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum9 = extractvalue { i64, i1 } %cat.sum.len8, 0
  %ovf10 = extractvalue { i64, i1 } %cat.sum.len8, 1
  br i1 %ovf10, label %str_overflow_abort12, label %cat.sum.len11

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len11:                                    ; preds = %cat.sum.len7
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum9, i64 1)
  %sum14 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf15 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %concat.tot.len16

str_overflow_abort12:                             ; preds = %cat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len16:                                 ; preds = %cat.sum.len11
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum14)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.15, i64 1, i1 false)
  %cat.dst19 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst19, ptr align 1 %cat.seg5, i64 %cat.seg3, i1 false)
  %cat.off = add i64 1, %cat.seg3
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 @str.16, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum9
  store i8 0, ptr %concat.nul, align 1
  %fld.gep22 = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 3
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %str.len.query24 = load i64, ptr %fld.load23, align 8
  %str.len.query25 = and i64 %str.len.query24, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query25, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_overflow_abort17:                             ; preds = %cat.sum.len11
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then:                                      ; preds = %concat.tot.len16
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 1
  %cat.seg33 = load ptr, ptr %cat.seg32, align 8
  %cat.seg37 = and i64 %sum9, 281474976710655
  %cat.sum.len41 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %str.len.query25, i64 %cat.seg37)
  %sum42 = extractvalue { i64, i1 } %cat.sum.len41, 0
  %ovf43 = extractvalue { i64, i1 } %cat.sum.len41, 1
  br i1 %ovf43, label %str_overflow_abort45, label %cat.sum.len44

choice.exit:                                      ; preds = %concat.tot.len16, %concat.tot.len56
  %choice.res.sroa.phi.sroa.speculated = phi i64 [ %choice.res.sroa.phi.sroa.speculate.load.concat.tot.len56, %concat.tot.len56 ], [ %sum9, %concat.tot.len16 ]
  %choice.res.sroa.phi71.sroa.speculated = phi ptr [ %concat.buf60, %concat.tot.len56 ], [ %concat.buf, %concat.tot.len16 ]
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %choice.res.sroa.phi.sroa.speculated, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %choice.res.sroa.phi71.sroa.speculated, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

cat.sum.len44:                                    ; preds = %choice.then
  %cat.sum.len47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum42, i64 4)
  %sum48 = extractvalue { i64, i1 } %cat.sum.len47, 0
  %ovf49 = extractvalue { i64, i1 } %cat.sum.len47, 1
  br i1 %ovf49, label %str_overflow_abort51, label %cat.sum.len50

str_overflow_abort45:                             ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len50:                                    ; preds = %cat.sum.len44
  %concat.tot.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum48, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len53, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort51:                             ; preds = %cat.sum.len44
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len56:                                 ; preds = %cat.sum.len50
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf60, ptr align 1 %cat.seg33, i64 %str.len.query25, i1 false)
  %cat.dst63 = getelementptr i8, ptr %concat.buf60, i64 %str.len.query25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst63, ptr align 1 %concat.buf, i64 %cat.seg37, i1 false)
  %cat.off64 = add i64 %str.len.query25, %cat.seg37
  %cat.dst65 = getelementptr i8, ptr %concat.buf60, i64 %cat.off64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst65, ptr align 1 @str.17, i64 4, i1 false)
  %concat.nul66 = getelementptr i8, ptr %concat.buf60, i64 %sum48
  store i8 0, ptr %concat.nul66, align 1
  store i64 %sum48, ptr %concat.str67, align 8
  store ptr %concat.buf60, ptr %concat.str67.sroa.gep72, align 8
  %choice.res.sroa.phi.sroa.speculate.load.concat.tot.len56 = load i64, ptr %concat.str67, align 8
  br label %choice.exit

str_overflow_abort57:                             ; preds = %cat.sum.len50
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal i1 @"log::#needs_quoting"(ptr %0) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %loop.body.119, %loop.body.119, %loop.body.119, %loop.body.119, %loop.body.119, %loop.body.119, %loop.header.119, %entry
  %common.ret.op = phi i1 [ true, %entry ], [ false, %loop.header.119 ], [ true, %loop.body.119 ], [ true, %loop.body.119 ], [ true, %loop.body.119 ], [ true, %loop.body.119 ], [ true, %loop.body.119 ], [ true, %loop.body.119 ]
  ret i1 %common.ret.op

choice.exit:                                      ; preds = %entry
  %str.len4 = load i64, ptr %0, align 8
  %str.len5 = and i64 %str.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  br label %loop.header.119

loop.header.119:                                  ; preds = %choice.exit19, %choice.exit
  %loop.idx.119.0 = phi i64 [ 0, %choice.exit ], [ %loop.next, %choice.exit19 ]
  %loop.cond = icmp slt i64 %loop.idx.119.0, %str.len5
  br i1 %loop.cond, label %loop.body.119, label %common.ret

loop.body.119:                                    ; preds = %loop.header.119
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %loop.idx.119.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %choice.exit19 [
    i64 61, label %common.ret
    i64 34, label %common.ret
    i64 32, label %common.ret
    i64 13, label %common.ret
    i64 10, label %common.ret
    i64 9, label %common.ret
  ]

choice.exit19:                                    ; preds = %loop.body.119
  %loop.next = add i64 %loop.idx.119.0, 1
  br label %loop.header.119
}

define internal { i64, ptr } @"log::#quote_value"(ptr %0) #3 {
entry:
  %call.res = call i1 @"log::#needs_quoting"(ptr %0)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %b.grow_done282, %choice.then
  %common.ret.op = phi { i64, ptr } [ %ret.pack, %choice.then ], [ %ret.pack317.fca.1.insert, %b.grow_done282 ]
  ret { i64, ptr } %common.ret.op

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr %0, align 8
  br label %common.ret

choice.exit:                                      ; preds = %entry
  %str.len.query3 = load i64, ptr %0, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %addtmp = add i64 %str.len.query4, 8
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %addtmp, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

b.buf.len5:                                       ; preds = %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  %b.need.grow = icmp slt i64 %addtmp, 1
  br i1 %b.need.grow, label %b.grow2, label %br.b1.120

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.buf.len5
  %b.cap2 = mul i64 %addtmp, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.cap.grow, i64 1)
  %sum15 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf16 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf16, label %str_overflow_abort18, label %b.new.buf.len217

b.new.buf.len217:                                 ; preds = %b.grow2
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.buf, i64 0, i1 false)
  store i8 0, ptr %b.new.buf2, align 1
  br label %br.b1.120

str_overflow_abort18:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

br.b1.120:                                        ; preds = %b.new.buf.len217, %b.buf.len5
  %builder.new.salloc.sroa.54.0 = phi i64 [ %b.cap.grow, %b.new.buf.len217 ], [ %addtmp, %b.buf.len5 ]
  %builder.new.salloc.sroa.27.0 = phi ptr [ %b.new.buf2, %b.new.buf.len217 ], [ %b.buf, %b.buf.len5 ]
  store i8 34, ptr %builder.new.salloc.sroa.27.0, align 1
  %br.nul = getelementptr i8, ptr %builder.new.salloc.sroa.27.0, i64 1
  store i8 0, ptr %br.nul, align 1
  %str.len24 = load i64, ptr %0, align 8
  %str.len25 = and i64 %str.len24, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  br label %loop.header.121

loop.header.121:                                  ; preds = %choice.exit28, %br.b1.120
  %builder.new.salloc.sroa.54.1 = phi i64 [ %builder.new.salloc.sroa.54.0, %br.b1.120 ], [ %builder.new.salloc.sroa.54.2, %choice.exit28 ]
  %builder.new.salloc.sroa.27.1 = phi ptr [ %builder.new.salloc.sroa.27.0, %br.b1.120 ], [ %builder.new.salloc.sroa.27.2, %choice.exit28 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 1, %br.b1.120 ], [ %builder.new.salloc.sroa.0.1, %choice.exit28 ]
  %loop.idx.121.0 = phi i64 [ 0, %br.b1.120 ], [ %loop.next, %choice.exit28 ]
  %loop.cond = icmp slt i64 %loop.idx.121.0, %str.len25
  br i1 %loop.cond, label %loop.body.121, label %loop.exit.121

loop.body.121:                                    ; preds = %loop.header.121
  %s.byte.gep = getelementptr i8, ptr %s.read.data26, i64 %loop.idx.121.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %b.byte_ok [
    i64 34, label %choice.case
    i64 92, label %choice.case65
    i64 10, label %choice.case111
    i64 13, label %choice.case157
    i64 9, label %choice.case203
  ]

loop.exit.121:                                    ; preds = %loop.header.121
  %b.rn.new.len271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum272 = extractvalue { i64, i1 } %b.rn.new.len271, 0
  %ovf273 = extractvalue { i64, i1 } %b.rn.new.len271, 1
  br i1 %ovf273, label %str_overflow_abort275, label %b.rn.new.len274

choice.exit28:                                    ; preds = %b.push_done, %b.grow_done223, %b.grow_done177, %b.grow_done131, %b.grow_done85, %b.grow_done42
  %builder.new.salloc.sroa.54.2 = phi i64 [ %builder.new.salloc.sroa.54.3, %b.grow_done42 ], [ %builder.new.salloc.sroa.54.4, %b.grow_done85 ], [ %builder.new.salloc.sroa.54.5, %b.grow_done131 ], [ %builder.new.salloc.sroa.54.6, %b.grow_done177 ], [ %builder.new.salloc.sroa.54.7, %b.grow_done223 ], [ %builder.new.salloc.sroa.54.8, %b.push_done ]
  %builder.new.salloc.sroa.27.2 = phi ptr [ %builder.new.salloc.sroa.27.3, %b.grow_done42 ], [ %builder.new.salloc.sroa.27.4, %b.grow_done85 ], [ %builder.new.salloc.sroa.27.5, %b.grow_done131 ], [ %builder.new.salloc.sroa.27.6, %b.grow_done177 ], [ %builder.new.salloc.sroa.27.7, %b.grow_done223 ], [ %builder.new.salloc.sroa.27.8, %b.push_done ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum32, %b.grow_done42 ], [ %sum75, %b.grow_done85 ], [ %sum121, %b.grow_done131 ], [ %sum167, %b.grow_done177 ], [ %sum213, %b.grow_done223 ], [ %b.next.len, %b.push_done ]
  %loop.next = add i64 %loop.idx.121.0, 1
  br label %loop.header.121

choice.case:                                      ; preds = %loop.body.121
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 2)
  %sum32 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf33 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %b.app.new.len34

b.app.new.len34:                                  ; preds = %choice.case
  %b.need.grow39 = icmp slt i64 %builder.new.salloc.sroa.54.1, %sum32
  br i1 %b.need.grow39, label %b.grow240, label %b.grow_done42

str_overflow_abort35:                             ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow240:                                        ; preds = %b.app.new.len34
  %b.cap243 = mul i64 %builder.new.salloc.sroa.54.1, 2
  %b.cap.small44 = icmp slt i64 %b.cap243, 16
  %b.cap.grow45 = select i1 %b.cap.small44, i64 16, i64 %b.cap243
  %b.cap.need46 = icmp slt i64 %b.cap.grow45, %sum32
  %b.new.cap47 = select i1 %b.cap.need46, i64 %sum32, i64 %b.cap.grow45
  %b.new.buf.len252 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap47, i64 1)
  %sum53 = extractvalue { i64, i1 } %b.new.buf.len252, 0
  %ovf54 = extractvalue { i64, i1 } %b.new.buf.len252, 1
  br i1 %ovf54, label %str_overflow_abort56, label %b.new.buf.len255

b.grow_done42:                                    ; preds = %b.app.new.len34, %b.new.buf.len255
  %builder.new.salloc.sroa.54.3 = phi i64 [ %b.new.cap47, %b.new.buf.len255 ], [ %builder.new.salloc.sroa.54.1, %b.app.new.len34 ]
  %builder.new.salloc.sroa.27.3 = phi ptr [ %b.new.buf259, %b.new.buf.len255 ], [ %builder.new.salloc.sroa.27.1, %b.app.new.len34 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.27.3, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 @str.18, i64 2, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.27.3, i64 %sum32
  store i8 0, ptr %b.app.nul, align 1
  br label %choice.exit28

b.new.buf.len255:                                 ; preds = %b.grow240
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf259 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum53)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf259, ptr align 1 %builder.new.salloc.sroa.27.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul60 = getelementptr i8, ptr %b.new.buf259, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul60, align 1
  br label %b.grow_done42

str_overflow_abort56:                             ; preds = %b.grow240
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case65:                                    ; preds = %loop.body.121
  %b.app.new.len74 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 2)
  %sum75 = extractvalue { i64, i1 } %b.app.new.len74, 0
  %ovf76 = extractvalue { i64, i1 } %b.app.new.len74, 1
  br i1 %ovf76, label %str_overflow_abort78, label %b.app.new.len77

b.app.new.len77:                                  ; preds = %choice.case65
  %b.need.grow82 = icmp slt i64 %builder.new.salloc.sroa.54.1, %sum75
  br i1 %b.need.grow82, label %b.grow283, label %b.grow_done85

str_overflow_abort78:                             ; preds = %choice.case65
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow283:                                        ; preds = %b.app.new.len77
  %b.cap286 = mul i64 %builder.new.salloc.sroa.54.1, 2
  %b.cap.small87 = icmp slt i64 %b.cap286, 16
  %b.cap.grow88 = select i1 %b.cap.small87, i64 16, i64 %b.cap286
  %b.cap.need89 = icmp slt i64 %b.cap.grow88, %sum75
  %b.new.cap90 = select i1 %b.cap.need89, i64 %sum75, i64 %b.cap.grow88
  %b.new.buf.len295 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap90, i64 1)
  %sum96 = extractvalue { i64, i1 } %b.new.buf.len295, 0
  %ovf97 = extractvalue { i64, i1 } %b.new.buf.len295, 1
  br i1 %ovf97, label %str_overflow_abort99, label %b.new.buf.len298

b.grow_done85:                                    ; preds = %b.app.new.len77, %b.new.buf.len298
  %builder.new.salloc.sroa.54.4 = phi i64 [ %b.new.cap90, %b.new.buf.len298 ], [ %builder.new.salloc.sroa.54.1, %b.app.new.len77 ]
  %builder.new.salloc.sroa.27.4 = phi ptr [ %b.new.buf2102, %b.new.buf.len298 ], [ %builder.new.salloc.sroa.27.1, %b.app.new.len77 ]
  %b.app.dst108 = getelementptr i8, ptr %builder.new.salloc.sroa.27.4, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst108, ptr align 1 @str.19, i64 2, i1 false)
  %b.app.nul109 = getelementptr i8, ptr %builder.new.salloc.sroa.27.4, i64 %sum75
  store i8 0, ptr %b.app.nul109, align 1
  br label %choice.exit28

b.new.buf.len298:                                 ; preds = %b.grow283
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 %sum96)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2102, ptr align 1 %builder.new.salloc.sroa.27.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul103 = getelementptr i8, ptr %b.new.buf2102, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul103, align 1
  br label %b.grow_done85

str_overflow_abort99:                             ; preds = %b.grow283
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case111:                                   ; preds = %loop.body.121
  %b.app.new.len120 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 2)
  %sum121 = extractvalue { i64, i1 } %b.app.new.len120, 0
  %ovf122 = extractvalue { i64, i1 } %b.app.new.len120, 1
  br i1 %ovf122, label %str_overflow_abort124, label %b.app.new.len123

b.app.new.len123:                                 ; preds = %choice.case111
  %b.need.grow128 = icmp slt i64 %builder.new.salloc.sroa.54.1, %sum121
  br i1 %b.need.grow128, label %b.grow2129, label %b.grow_done131

str_overflow_abort124:                            ; preds = %choice.case111
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2129:                                       ; preds = %b.app.new.len123
  %b.cap2132 = mul i64 %builder.new.salloc.sroa.54.1, 2
  %b.cap.small133 = icmp slt i64 %b.cap2132, 16
  %b.cap.grow134 = select i1 %b.cap.small133, i64 16, i64 %b.cap2132
  %b.cap.need135 = icmp slt i64 %b.cap.grow134, %sum121
  %b.new.cap136 = select i1 %b.cap.need135, i64 %sum121, i64 %b.cap.grow134
  %b.new.buf.len2141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap136, i64 1)
  %sum142 = extractvalue { i64, i1 } %b.new.buf.len2141, 0
  %ovf143 = extractvalue { i64, i1 } %b.new.buf.len2141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %b.new.buf.len2144

b.grow_done131:                                   ; preds = %b.app.new.len123, %b.new.buf.len2144
  %builder.new.salloc.sroa.54.5 = phi i64 [ %b.new.cap136, %b.new.buf.len2144 ], [ %builder.new.salloc.sroa.54.1, %b.app.new.len123 ]
  %builder.new.salloc.sroa.27.5 = phi ptr [ %b.new.buf2148, %b.new.buf.len2144 ], [ %builder.new.salloc.sroa.27.1, %b.app.new.len123 ]
  %b.app.dst154 = getelementptr i8, ptr %builder.new.salloc.sroa.27.5, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst154, ptr align 1 @str.20, i64 2, i1 false)
  %b.app.nul155 = getelementptr i8, ptr %builder.new.salloc.sroa.27.5, i64 %sum121
  store i8 0, ptr %b.app.nul155, align 1
  br label %choice.exit28

b.new.buf.len2144:                                ; preds = %b.grow2129
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 %sum142)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2148, ptr align 1 %builder.new.salloc.sroa.27.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul149 = getelementptr i8, ptr %b.new.buf2148, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul149, align 1
  br label %b.grow_done131

str_overflow_abort145:                            ; preds = %b.grow2129
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case157:                                   ; preds = %loop.body.121
  %b.app.new.len166 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 2)
  %sum167 = extractvalue { i64, i1 } %b.app.new.len166, 0
  %ovf168 = extractvalue { i64, i1 } %b.app.new.len166, 1
  br i1 %ovf168, label %str_overflow_abort170, label %b.app.new.len169

b.app.new.len169:                                 ; preds = %choice.case157
  %b.need.grow174 = icmp slt i64 %builder.new.salloc.sroa.54.1, %sum167
  br i1 %b.need.grow174, label %b.grow2175, label %b.grow_done177

str_overflow_abort170:                            ; preds = %choice.case157
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2175:                                       ; preds = %b.app.new.len169
  %b.cap2178 = mul i64 %builder.new.salloc.sroa.54.1, 2
  %b.cap.small179 = icmp slt i64 %b.cap2178, 16
  %b.cap.grow180 = select i1 %b.cap.small179, i64 16, i64 %b.cap2178
  %b.cap.need181 = icmp slt i64 %b.cap.grow180, %sum167
  %b.new.cap182 = select i1 %b.cap.need181, i64 %sum167, i64 %b.cap.grow180
  %b.new.buf.len2187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap182, i64 1)
  %sum188 = extractvalue { i64, i1 } %b.new.buf.len2187, 0
  %ovf189 = extractvalue { i64, i1 } %b.new.buf.len2187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %b.new.buf.len2190

b.grow_done177:                                   ; preds = %b.app.new.len169, %b.new.buf.len2190
  %builder.new.salloc.sroa.54.6 = phi i64 [ %b.new.cap182, %b.new.buf.len2190 ], [ %builder.new.salloc.sroa.54.1, %b.app.new.len169 ]
  %builder.new.salloc.sroa.27.6 = phi ptr [ %b.new.buf2194, %b.new.buf.len2190 ], [ %builder.new.salloc.sroa.27.1, %b.app.new.len169 ]
  %b.app.dst200 = getelementptr i8, ptr %builder.new.salloc.sroa.27.6, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst200, ptr align 1 @str.21, i64 2, i1 false)
  %b.app.nul201 = getelementptr i8, ptr %builder.new.salloc.sroa.27.6, i64 %sum167
  store i8 0, ptr %b.app.nul201, align 1
  br label %choice.exit28

b.new.buf.len2190:                                ; preds = %b.grow2175
  %arena.cur193 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 %sum188)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2194, ptr align 1 %builder.new.salloc.sroa.27.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul195 = getelementptr i8, ptr %b.new.buf2194, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul195, align 1
  br label %b.grow_done177

str_overflow_abort191:                            ; preds = %b.grow2175
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case203:                                   ; preds = %loop.body.121
  %b.app.new.len212 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 2)
  %sum213 = extractvalue { i64, i1 } %b.app.new.len212, 0
  %ovf214 = extractvalue { i64, i1 } %b.app.new.len212, 1
  br i1 %ovf214, label %str_overflow_abort216, label %b.app.new.len215

b.app.new.len215:                                 ; preds = %choice.case203
  %b.need.grow220 = icmp slt i64 %builder.new.salloc.sroa.54.1, %sum213
  br i1 %b.need.grow220, label %b.grow2221, label %b.grow_done223

str_overflow_abort216:                            ; preds = %choice.case203
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2221:                                       ; preds = %b.app.new.len215
  %b.cap2224 = mul i64 %builder.new.salloc.sroa.54.1, 2
  %b.cap.small225 = icmp slt i64 %b.cap2224, 16
  %b.cap.grow226 = select i1 %b.cap.small225, i64 16, i64 %b.cap2224
  %b.cap.need227 = icmp slt i64 %b.cap.grow226, %sum213
  %b.new.cap228 = select i1 %b.cap.need227, i64 %sum213, i64 %b.cap.grow226
  %b.new.buf.len2233 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap228, i64 1)
  %sum234 = extractvalue { i64, i1 } %b.new.buf.len2233, 0
  %ovf235 = extractvalue { i64, i1 } %b.new.buf.len2233, 1
  br i1 %ovf235, label %str_overflow_abort237, label %b.new.buf.len2236

b.grow_done223:                                   ; preds = %b.app.new.len215, %b.new.buf.len2236
  %builder.new.salloc.sroa.54.7 = phi i64 [ %b.new.cap228, %b.new.buf.len2236 ], [ %builder.new.salloc.sroa.54.1, %b.app.new.len215 ]
  %builder.new.salloc.sroa.27.7 = phi ptr [ %b.new.buf2240, %b.new.buf.len2236 ], [ %builder.new.salloc.sroa.27.1, %b.app.new.len215 ]
  %b.app.dst246 = getelementptr i8, ptr %builder.new.salloc.sroa.27.7, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst246, ptr align 1 @str.22, i64 2, i1 false)
  %b.app.nul247 = getelementptr i8, ptr %builder.new.salloc.sroa.27.7, i64 %sum213
  store i8 0, ptr %b.app.nul247, align 1
  br label %choice.exit28

b.new.buf.len2236:                                ; preds = %b.grow2221
  %arena.cur239 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 %sum234)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2240, ptr align 1 %builder.new.salloc.sroa.27.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul241 = getelementptr i8, ptr %b.new.buf2240, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul241, align 1
  br label %b.grow_done223

str_overflow_abort237:                            ; preds = %b.grow2221
  call void @dva_abort_str_overflow_msg()
  unreachable

b.byte_ok:                                        ; preds = %loop.body.121
  %b.needs.grow = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.54.1
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2256 = mul i64 %builder.new.salloc.sroa.54.1, 2
  %b.cap.small257 = icmp slt i64 %b.cap2256, 16
  %b.new.cap258 = select i1 %b.cap.small257, i64 16, i64 %b.cap2256
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap258, i64 1)
  %sum259 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf260 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf260, label %str_overflow_abort262, label %b.new.buf.len261

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len261
  %builder.new.salloc.sroa.54.8 = phi i64 [ %b.new.cap258, %b.new.buf.len261 ], [ %builder.new.salloc.sroa.54.1, %b.byte_ok ]
  %builder.new.salloc.sroa.27.8 = phi ptr [ %b.new.buf, %b.new.buf.len261 ], [ %builder.new.salloc.sroa.27.1, %b.byte_ok ]
  %b.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.27.8, i64 %builder.new.salloc.sroa.0.0
  store i8 %s.byte, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul = getelementptr i8, ptr %builder.new.salloc.sroa.27.8, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  br label %choice.exit28

b.new.buf.len261:                                 ; preds = %b.grow
  %arena.cur264 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 %sum259)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %builder.new.salloc.sroa.27.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul, align 1
  br label %b.push_done

str_overflow_abort262:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len274:                                  ; preds = %loop.exit.121
  %b.need.grow279 = icmp slt i64 %builder.new.salloc.sroa.54.1, %sum272
  br i1 %b.need.grow279, label %b.grow2280, label %b.grow_done282

str_overflow_abort275:                            ; preds = %loop.exit.121
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2280:                                       ; preds = %b.rn.new.len274
  %b.cap2283 = mul i64 %builder.new.salloc.sroa.54.1, 2
  %b.cap.small284 = icmp slt i64 %b.cap2283, 16
  %b.cap.grow285 = select i1 %b.cap.small284, i64 16, i64 %b.cap2283
  %b.cap.need286 = icmp slt i64 %b.cap.grow285, %sum272
  %b.new.cap287 = select i1 %b.cap.need286, i64 %sum272, i64 %b.cap.grow285
  %b.new.buf.len2292 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap287, i64 1)
  %sum293 = extractvalue { i64, i1 } %b.new.buf.len2292, 0
  %ovf294 = extractvalue { i64, i1 } %b.new.buf.len2292, 1
  br i1 %ovf294, label %str_overflow_abort296, label %b.new.buf.len2295

b.grow_done282:                                   ; preds = %b.rn.new.len274, %b.new.buf.len2295
  %builder.new.salloc.sroa.27.9 = phi ptr [ %b.new.buf2299, %b.new.buf.len2295 ], [ %builder.new.salloc.sroa.27.1, %b.rn.new.len274 ]
  %b.rn.dst305 = getelementptr i8, ptr %builder.new.salloc.sroa.27.9, i64 %builder.new.salloc.sroa.0.0
  store i8 34, ptr %b.rn.dst305, align 1
  %br.nul312 = getelementptr i8, ptr %builder.new.salloc.sroa.27.9, i64 %sum272
  store i8 0, ptr %br.nul312, align 1
  %ret.pack317.fca.0.insert = insertvalue { i64, ptr } poison, i64 %sum272, 0
  %ret.pack317.fca.1.insert = insertvalue { i64, ptr } %ret.pack317.fca.0.insert, ptr %builder.new.salloc.sroa.27.9, 1
  br label %common.ret

b.new.buf.len2295:                                ; preds = %b.grow2280
  %arena.cur298 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2299 = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 %sum293)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2299, ptr align 1 %builder.new.salloc.sroa.27.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul300 = getelementptr i8, ptr %b.new.buf2299, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul300, align 1
  br label %b.grow_done282

str_overflow_abort296:                            ; preds = %b.grow2280
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal { i64, ptr } @"log::#append_fields"(ptr %0, ptr %1) #3 {
entry:
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  store i64 0, ptr %a.create1, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.fields.0 = phi ptr [ %a.create1, %a.create ], [ %1, %entry ]
  %a.len.query3 = load i64, ptr %var.fields.0, align 8
  %cmptmp = icmp eq i64 %a.len.query3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %loop.exit.124, %choice.then
  %common.ret.op = phi { i64, ptr } [ %ret.pack, %choice.then ], [ %ret.pack173.fca.1.insert, %loop.exit.124 ]
  ret { i64, ptr } %common.ret.op

choice.then:                                      ; preds = %a.after
  %ret.pack = load { i64, ptr }, ptr %0, align 8
  br label %common.ret

choice.exit:                                      ; preds = %a.after
  %str.len.query6 = load i64, ptr %0, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %arr.cycle.len21 = load i64, ptr %var.fields.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.fields.0, i32 0, i32 1
  %arr.cycle.data22 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.123

loop.header.123:                                  ; preds = %loop.body.123, %choice.exit
  %loop.idx.123.0 = phi i64 [ 0, %choice.exit ], [ %loop.next, %loop.body.123 ]
  %"var.total'.0" = phi i64 [ %str.len.query7, %choice.exit ], [ %addtmp28, %loop.body.123 ]
  %loop.cond = icmp slt i64 %loop.idx.123.0, %arr.cycle.len21
  br i1 %loop.cond, label %loop.body.123, label %loop.exit.123

loop.body.123:                                    ; preds = %loop.header.123
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data22, i64 %loop.idx.123.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %addtmp = add i64 %"var.total'.0", 1
  %str.len.query26 = load i64, ptr %slot.i2p, align 8
  %str.len.query27 = and i64 %str.len.query26, 281474976710655
  %addtmp28 = add i64 %addtmp, %str.len.query27
  %loop.next = add i64 %loop.idx.123.0, 1
  br label %loop.header.123

loop.exit.123:                                    ; preds = %loop.header.123
  %addtmp30 = add i64 %"var.total'.0", 8
  %cap.neg = icmp slt i64 %addtmp30, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp30
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len31

b.buf.len31:                                      ; preds = %loop.exit.123
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  %app.str.len34 = load i64, ptr %0, align 8
  %app.str.len35 = and i64 %app.str.len34, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %app.str.data36 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 0, i64 %app.str.len35)
  %sum38 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf39 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf39, label %str_overflow_abort41, label %b.app.new.len40

str_overflow_abort:                               ; preds = %loop.exit.123
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len40:                                  ; preds = %b.buf.len31
  %b.need.grow = icmp slt i64 %cap.safe, %sum38
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort41:                             ; preds = %b.buf.len31
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len40
  %b.cap2 = mul i64 %cap.safe, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum38
  %b.new.cap = select i1 %b.cap.need, i64 %sum38, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum46 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf47 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.new.buf.len248

b.grow_done:                                      ; preds = %b.app.new.len40, %b.new.buf.len248
  %builder.new.salloc.sroa.24.0 = phi i64 [ %b.new.cap, %b.new.buf.len248 ], [ %cap.safe, %b.app.new.len40 ]
  %builder.new.salloc.sroa.12.0 = phi ptr [ %b.new.buf2, %b.new.buf.len248 ], [ %b.buf, %b.app.new.len40 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %builder.new.salloc.sroa.12.0, ptr align 1 %app.str.data36, i64 %app.str.len35, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.12.0, i64 %sum38
  store i8 0, ptr %b.app.nul, align 1
  %arr.cycle.len68 = load i64, ptr %var.fields.0, align 8
  %arr.cycle.data69 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.fields.0, i32 0, i32 1
  %arr.cycle.data70 = load ptr, ptr %arr.cycle.data69, align 8
  br label %loop.header.124

b.new.buf.len248:                                 ; preds = %b.grow2
  %arena.cur51 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 %sum46)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.buf, i64 0, i1 false)
  store i8 0, ptr %b.new.buf2, align 1
  br label %b.grow_done

str_overflow_abort49:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.124:                                  ; preds = %choice.exit86, %b.grow_done
  %builder.new.salloc.sroa.24.1 = phi i64 [ %builder.new.salloc.sroa.24.0, %b.grow_done ], [ %builder.new.salloc.sroa.24.2, %choice.exit86 ]
  %builder.new.salloc.sroa.12.1 = phi ptr [ %builder.new.salloc.sroa.12.0, %b.grow_done ], [ %builder.new.salloc.sroa.12.2, %choice.exit86 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ %sum38, %b.grow_done ], [ %builder.new.salloc.sroa.0.1, %choice.exit86 ]
  %loop.idx.124.0 = phi i64 [ 0, %b.grow_done ], [ %loop.next169, %choice.exit86 ]
  %loop.cond72 = icmp slt i64 %loop.idx.124.0, %arr.cycle.len68
  br i1 %loop.cond72, label %loop.body.124, label %loop.exit.124

loop.body.124:                                    ; preds = %loop.header.124
  %arr.elem.gep74 = getelementptr i64, ptr %arr.cycle.data70, i64 %loop.idx.124.0
  %arr.elem.raw75 = load i64, ptr %arr.elem.gep74, align 8
  %slot.i2p76 = inttoptr i64 %arr.elem.raw75 to ptr
  %str.len.query82 = load i64, ptr %slot.i2p76, align 8
  %str.len.query83 = and i64 %str.len.query82, 281474976710655
  %cmptmp84 = icmp sgt i64 %str.len.query83, 0
  br i1 %cmptmp84, label %choice.then85, label %choice.exit86

loop.exit.124:                                    ; preds = %loop.header.124
  %ret.pack173.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack173.fca.1.insert = insertvalue { i64, ptr } %ret.pack173.fca.0.insert, ptr %builder.new.salloc.sroa.12.1, 1
  br label %common.ret

choice.then85:                                    ; preds = %loop.body.124
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum89 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf90 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf90, label %str_overflow_abort92, label %b.rn.new.len91

choice.exit86:                                    ; preds = %b.grow_done142, %loop.body.124
  %builder.new.salloc.sroa.24.2 = phi i64 [ %builder.new.salloc.sroa.24.4, %b.grow_done142 ], [ %builder.new.salloc.sroa.24.1, %loop.body.124 ]
  %builder.new.salloc.sroa.12.2 = phi ptr [ %builder.new.salloc.sroa.12.4, %b.grow_done142 ], [ %builder.new.salloc.sroa.12.1, %loop.body.124 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum132, %b.grow_done142 ], [ %builder.new.salloc.sroa.0.0, %loop.body.124 ]
  %loop.next169 = add i64 %loop.idx.124.0, 1
  br label %loop.header.124

b.rn.new.len91:                                   ; preds = %choice.then85
  %b.need.grow96 = icmp slt i64 %builder.new.salloc.sroa.24.1, %sum89
  br i1 %b.need.grow96, label %b.grow297, label %b.grow_done99

str_overflow_abort92:                             ; preds = %choice.then85
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow297:                                        ; preds = %b.rn.new.len91
  %b.cap2100 = mul i64 %builder.new.salloc.sroa.24.1, 2
  %b.cap.small101 = icmp slt i64 %b.cap2100, 16
  %b.cap.grow102 = select i1 %b.cap.small101, i64 16, i64 %b.cap2100
  %b.cap.need103 = icmp slt i64 %b.cap.grow102, %sum89
  %b.new.cap104 = select i1 %b.cap.need103, i64 %sum89, i64 %b.cap.grow102
  %b.new.buf.len2109 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap104, i64 1)
  %sum110 = extractvalue { i64, i1 } %b.new.buf.len2109, 0
  %ovf111 = extractvalue { i64, i1 } %b.new.buf.len2109, 1
  br i1 %ovf111, label %str_overflow_abort113, label %b.new.buf.len2112

b.grow_done99:                                    ; preds = %b.rn.new.len91, %b.new.buf.len2112
  %builder.new.salloc.sroa.24.3 = phi i64 [ %b.new.cap104, %b.new.buf.len2112 ], [ %builder.new.salloc.sroa.24.1, %b.rn.new.len91 ]
  %builder.new.salloc.sroa.12.3 = phi ptr [ %b.new.buf2116, %b.new.buf.len2112 ], [ %builder.new.salloc.sroa.12.1, %b.rn.new.len91 ]
  %b.rn.dst = getelementptr i8, ptr %builder.new.salloc.sroa.12.3, i64 %builder.new.salloc.sroa.0.0
  store i8 32, ptr %b.rn.dst, align 1
  %br.nul = getelementptr i8, ptr %builder.new.salloc.sroa.12.3, i64 %sum89
  store i8 0, ptr %br.nul, align 1
  %app.str.len125 = load i64, ptr %slot.i2p76, align 8
  %app.str.len126 = and i64 %app.str.len125, 281474976710655
  %app.str.data127 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p76, i32 0, i32 1
  %app.str.data128 = load ptr, ptr %app.str.data127, align 8
  %b.app.new.len131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum89, i64 %app.str.len126)
  %sum132 = extractvalue { i64, i1 } %b.app.new.len131, 0
  %ovf133 = extractvalue { i64, i1 } %b.app.new.len131, 1
  br i1 %ovf133, label %str_overflow_abort135, label %b.app.new.len134

b.new.buf.len2112:                                ; preds = %b.grow297
  %arena.cur115 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2116 = call ptr @dva_arena_alloc(ptr %arena.cur115, i64 %sum110)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2116, ptr align 1 %builder.new.salloc.sroa.12.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul117 = getelementptr i8, ptr %b.new.buf2116, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul117, align 1
  br label %b.grow_done99

str_overflow_abort113:                            ; preds = %b.grow297
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len134:                                 ; preds = %b.grow_done99
  %b.need.grow139 = icmp slt i64 %builder.new.salloc.sroa.24.3, %sum132
  br i1 %b.need.grow139, label %b.grow2140, label %b.grow_done142

str_overflow_abort135:                            ; preds = %b.grow_done99
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2140:                                       ; preds = %b.app.new.len134
  %b.cap2143 = mul i64 %builder.new.salloc.sroa.24.3, 2
  %b.cap.small144 = icmp slt i64 %b.cap2143, 16
  %b.cap.grow145 = select i1 %b.cap.small144, i64 16, i64 %b.cap2143
  %b.cap.need146 = icmp slt i64 %b.cap.grow145, %sum132
  %b.new.cap147 = select i1 %b.cap.need146, i64 %sum132, i64 %b.cap.grow145
  %b.new.buf.len2152 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap147, i64 1)
  %sum153 = extractvalue { i64, i1 } %b.new.buf.len2152, 0
  %ovf154 = extractvalue { i64, i1 } %b.new.buf.len2152, 1
  br i1 %ovf154, label %str_overflow_abort156, label %b.new.buf.len2155

b.grow_done142:                                   ; preds = %b.app.new.len134, %b.new.buf.len2155
  %builder.new.salloc.sroa.24.4 = phi i64 [ %b.new.cap147, %b.new.buf.len2155 ], [ %builder.new.salloc.sroa.24.3, %b.app.new.len134 ]
  %builder.new.salloc.sroa.12.4 = phi ptr [ %b.new.buf2159, %b.new.buf.len2155 ], [ %builder.new.salloc.sroa.12.3, %b.app.new.len134 ]
  %b.app.dst165 = getelementptr i8, ptr %builder.new.salloc.sroa.12.4, i64 %sum89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst165, ptr align 1 %app.str.data128, i64 %app.str.len126, i1 false)
  %b.app.nul166 = getelementptr i8, ptr %builder.new.salloc.sroa.12.4, i64 %sum132
  store i8 0, ptr %b.app.nul166, align 1
  br label %choice.exit86

b.new.buf.len2155:                                ; preds = %b.grow2140
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 %sum153)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2159, ptr align 1 %builder.new.salloc.sroa.12.3, i64 %sum89, i1 false)
  %b.grow2.nul160 = getelementptr i8, ptr %b.new.buf2159, i64 %sum89
  store i8 0, ptr %b.grow2.nul160, align 1
  br label %b.grow_done142

str_overflow_abort156:                            ; preds = %b.grow2140
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define i64 @"log::level_rank"(ptr %0) #3 {
entry:
  %call.res = call ptr @"log::#level_meta"(ptr %0)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define { i64, ptr } @"log::level_name"(ptr %0) #3 {
entry:
  %call.res = call ptr @"log::#level_meta"(ptr %0)
  %fld.gep = getelementptr inbounds { ptr, i64, ptr, ptr }, ptr %call.res, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %fld.load, align 8
  ret { i64, ptr } %ret.pack
}

define { i1, i64 } @"log::parse_level"(ptr %0) #3 {
entry:
  %call.res = call { i64, ptr } @"str::trim"(ptr %0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %call.res1 = call { i64, ptr } @"str::lower"(ptr %ret.ub.alloc)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 16)
  store { i64, ptr } %call.res1, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len4 = load i64, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len5 = and i64 %eq.lhs.len4, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len5, 5
  br i1 %eq.len, label %str.eq.then, label %choice.next

choice.exit:                                      ; preds = %str.eq.merge150, %choice.case109, %choice.case70, %choice.case32, %choice.case9, %choice.case
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.case ], [ %ram.pay31, %choice.case9 ], [ %ram.pay69, %choice.case32 ], [ %ram.pay108, %choice.case70 ], [ %ram.pay163, %choice.case109 ], [ zeroinitializer, %str.eq.merge150 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %str.eq.then
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.next:                                      ; preds = %entry, %str.eq.then
  %eq.lhs.len12 = load i64, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len13 = and i64 %eq.lhs.len12, 281474976710655
  %eq.len16 = icmp eq i64 %eq.lhs.len13, 4
  br i1 %eq.len16, label %str.eq.then17, label %choice.next10

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data7 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data7, ptr @str.23, i64 %eq.lhs.len5)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.case, label %choice.next

choice.case9:                                     ; preds = %str.eq.then17
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  store i64 1, ptr %enum.alloc27, align 8
  %pay.gep29 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc27, i32 0, i32 1
  store ptr null, ptr %pay.gep29, align 8
  %p.to.i6430 = ptrtoint ptr %enum.alloc27 to i64
  %ram.pay31 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6430, 1
  br label %choice.exit

choice.next10:                                    ; preds = %choice.next, %str.eq.then17
  %eq.lhs.len35 = load i64, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len36 = and i64 %eq.lhs.len35, 281474976710655
  %eq.len39 = icmp eq i64 %eq.lhs.len36, 4
  br i1 %eq.len39, label %str.eq.then40, label %str.eq.merge42

str.eq.then17:                                    ; preds = %choice.next
  %eq.lhs.data20 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data21 = load ptr, ptr %eq.lhs.data20, align 8
  %eq.memcmp23 = call i32 @memcmp(ptr %eq.lhs.data21, ptr @str.24, i64 %eq.lhs.len13)
  %eq.cmp.zero24 = icmp eq i32 %eq.memcmp23, 0
  br i1 %eq.cmp.zero24, label %choice.case9, label %choice.next10

choice.case32:                                    ; preds = %str.eq.merge57
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  store i64 2, ptr %enum.alloc65, align 8
  %pay.gep67 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc65, i32 0, i32 1
  store ptr null, ptr %pay.gep67, align 8
  %p.to.i6468 = ptrtoint ptr %enum.alloc65 to i64
  %ram.pay69 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6468, 1
  br label %choice.exit

choice.next33:                                    ; preds = %str.eq.merge57
  %eq.lhs.len73 = load i64, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len74 = and i64 %eq.lhs.len73, 281474976710655
  %eq.len77 = icmp eq i64 %eq.lhs.len74, 5
  br i1 %eq.len77, label %str.eq.then78, label %str.eq.merge80

str.eq.then40:                                    ; preds = %choice.next10
  %eq.lhs.data43 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data44 = load ptr, ptr %eq.lhs.data43, align 8
  %eq.memcmp46 = call i32 @memcmp(ptr %eq.lhs.data44, ptr @str.25, i64 %eq.lhs.len36)
  %eq.cmp.zero47 = icmp eq i32 %eq.memcmp46, 0
  br label %str.eq.merge42

str.eq.merge42:                                   ; preds = %choice.next10, %str.eq.then40
  %str.eq.result48 = phi i1 [ %eq.cmp.zero47, %str.eq.then40 ], [ false, %choice.next10 ]
  %eq.lhs.len50 = load i64, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %eq.len54 = icmp eq i64 %eq.lhs.len51, 7
  br i1 %eq.len54, label %str.eq.then55, label %str.eq.merge57

str.eq.then55:                                    ; preds = %str.eq.merge42
  %eq.lhs.data58 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data59 = load ptr, ptr %eq.lhs.data58, align 8
  %eq.memcmp61 = call i32 @memcmp(ptr %eq.lhs.data59, ptr @str.26, i64 %eq.lhs.len51)
  %eq.cmp.zero62 = icmp eq i32 %eq.memcmp61, 0
  br label %str.eq.merge57

str.eq.merge57:                                   ; preds = %str.eq.merge42, %str.eq.then55
  %str.eq.result63 = phi i1 [ %eq.cmp.zero62, %str.eq.then55 ], [ false, %str.eq.merge42 ]
  %case.or = or i1 %str.eq.result48, %str.eq.result63
  br i1 %case.or, label %choice.case32, label %choice.next33

choice.case70:                                    ; preds = %str.eq.merge95
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 16)
  store i64 3, ptr %enum.alloc104, align 8
  %pay.gep106 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc104, i32 0, i32 1
  store ptr null, ptr %pay.gep106, align 8
  %p.to.i64107 = ptrtoint ptr %enum.alloc104 to i64
  %ram.pay108 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64107, 1
  br label %choice.exit

choice.next71:                                    ; preds = %str.eq.merge95
  %eq.lhs.len112 = load i64, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len113 = and i64 %eq.lhs.len112, 281474976710655
  %eq.len116 = icmp eq i64 %eq.lhs.len113, 6
  br i1 %eq.len116, label %str.eq.then117, label %str.eq.merge119

str.eq.then78:                                    ; preds = %choice.next33
  %eq.lhs.data81 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data82 = load ptr, ptr %eq.lhs.data81, align 8
  %eq.memcmp84 = call i32 @memcmp(ptr %eq.lhs.data82, ptr @str.27, i64 %eq.lhs.len74)
  %eq.cmp.zero85 = icmp eq i32 %eq.memcmp84, 0
  br label %str.eq.merge80

str.eq.merge80:                                   ; preds = %choice.next33, %str.eq.then78
  %str.eq.result86 = phi i1 [ %eq.cmp.zero85, %str.eq.then78 ], [ false, %choice.next33 ]
  %eq.lhs.len88 = load i64, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len89 = and i64 %eq.lhs.len88, 281474976710655
  %eq.len92 = icmp eq i64 %eq.lhs.len89, 3
  br i1 %eq.len92, label %str.eq.then93, label %str.eq.merge95

str.eq.then93:                                    ; preds = %str.eq.merge80
  %eq.lhs.data96 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data97 = load ptr, ptr %eq.lhs.data96, align 8
  %eq.memcmp99 = call i32 @memcmp(ptr %eq.lhs.data97, ptr @str.28, i64 %eq.lhs.len89)
  %eq.cmp.zero100 = icmp eq i32 %eq.memcmp99, 0
  br label %str.eq.merge95

str.eq.merge95:                                   ; preds = %str.eq.merge80, %str.eq.then93
  %str.eq.result101 = phi i1 [ %eq.cmp.zero100, %str.eq.then93 ], [ false, %str.eq.merge80 ]
  %case.or102 = or i1 %str.eq.result86, %str.eq.result101
  br i1 %case.or102, label %choice.case70, label %choice.next71

choice.case109:                                   ; preds = %str.eq.merge150
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 16)
  store i64 4, ptr %enum.alloc159, align 8
  %pay.gep161 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc159, i32 0, i32 1
  store ptr null, ptr %pay.gep161, align 8
  %p.to.i64162 = ptrtoint ptr %enum.alloc159 to i64
  %ram.pay163 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64162, 1
  br label %choice.exit

str.eq.then117:                                   ; preds = %choice.next71
  %eq.lhs.data120 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data121 = load ptr, ptr %eq.lhs.data120, align 8
  %eq.memcmp123 = call i32 @memcmp(ptr %eq.lhs.data121, ptr @str.29, i64 %eq.lhs.len113)
  %eq.cmp.zero124 = icmp eq i32 %eq.memcmp123, 0
  br label %str.eq.merge119

str.eq.merge119:                                  ; preds = %choice.next71, %str.eq.then117
  %str.eq.result125 = phi i1 [ %eq.cmp.zero124, %str.eq.then117 ], [ false, %choice.next71 ]
  %eq.lhs.len127 = load i64, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len128 = and i64 %eq.lhs.len127, 281474976710655
  %eq.len131 = icmp eq i64 %eq.lhs.len128, 3
  br i1 %eq.len131, label %str.eq.then132, label %str.eq.merge134

str.eq.then132:                                   ; preds = %str.eq.merge119
  %eq.lhs.data135 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data136 = load ptr, ptr %eq.lhs.data135, align 8
  %eq.memcmp138 = call i32 @memcmp(ptr %eq.lhs.data136, ptr @str.30, i64 %eq.lhs.len128)
  %eq.cmp.zero139 = icmp eq i32 %eq.memcmp138, 0
  br label %str.eq.merge134

str.eq.merge134:                                  ; preds = %str.eq.merge119, %str.eq.then132
  %str.eq.result140 = phi i1 [ %eq.cmp.zero139, %str.eq.then132 ], [ false, %str.eq.merge119 ]
  %case.or141 = or i1 %str.eq.result125, %str.eq.result140
  %eq.lhs.len143 = load i64, ptr %ret.ub.alloc3, align 8
  %eq.lhs.len144 = and i64 %eq.lhs.len143, 281474976710655
  %eq.len147 = icmp eq i64 %eq.lhs.len144, 4
  br i1 %eq.len147, label %str.eq.then148, label %str.eq.merge150

str.eq.then148:                                   ; preds = %str.eq.merge134
  %eq.lhs.data151 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc3, i32 0, i32 1
  %eq.lhs.data152 = load ptr, ptr %eq.lhs.data151, align 8
  %eq.memcmp154 = call i32 @memcmp(ptr %eq.lhs.data152, ptr @str.31, i64 %eq.lhs.len144)
  %eq.cmp.zero155 = icmp eq i32 %eq.memcmp154, 0
  br label %str.eq.merge150

str.eq.merge150:                                  ; preds = %str.eq.merge134, %str.eq.then148
  %str.eq.result156 = phi i1 [ %eq.cmp.zero155, %str.eq.then148 ], [ false, %str.eq.merge134 ]
  %case.or157 = or i1 %case.or141, %str.eq.result156
  br i1 %case.or157, label %choice.case109, label %choice.exit
}

declare { i64, ptr } @"str::trim"(ptr) #3

declare { i64, ptr } @"str::lower"(ptr) #3

define void @"log::set_level"(ptr %0) #3 {
entry:
  %call.res = call i64 @"log::level_rank"(ptr %0)
  store i64 %call.res, ptr @"var.log::#min_level", align 8
  ret void
}

define ptr @"log::get_level"() #3 {
entry:
  %var.load = load i64, ptr @"var.log::#min_level", align 8
  %call.res = call ptr @"log::#rank_to_level"(i64 %var.load)
  ret ptr %call.res
}

define i1 @"log::enabled"(ptr %0) #3 {
entry:
  %call.res = call i64 @"log::level_rank"(ptr %0)
  %cmptmp = icmp slt i64 %call.res, 4
  %var.load3 = load i64, ptr @"var.log::#min_level", align 8
  %cmptmp4 = icmp sge i64 %call.res, %var.load3
  %and.127.phi = select i1 %cmptmp, i1 %cmptmp4, i1 false
  ret i1 %and.127.phi
}

define void @"log::set_timestamps"(i1 %0) #3 {
entry:
  store i1 %0, ptr @"var.log::#show_ts", align 1
  ret void
}

define void @"log::set_utc"(i1 %0) #3 {
entry:
  store i1 %0, ptr @"var.log::#ts_utc", align 1
  ret void
}

define void @"log::set_basic_iso"(i1 %0) #3 {
entry:
  store i1 %0, ptr @"var.log::#ts_basic", align 1
  ret void
}

define void @"log::set_color"(i1 %0) #3 {
entry:
  %. = select i1 %0, i64 1, i64 2
  store i64 %., ptr @"var.log::#color_mode", align 8
  ret void
}

define void @"log::use_auto_color"() #3 {
entry:
  store i64 0, ptr @"var.log::#color_mode", align 8
  ret void
}

define void @"log::set_prefix"(ptr %0) #3 {
entry:
  store ptr %0, ptr @"var.log::#prefix_tag", align 8
  ret void
}

define { i64, ptr } @"log::get_prefix"() #3 {
entry:
  %var.load = load ptr, ptr @"var.log::#prefix_tag", align 8
  %ret.pack = load { i64, ptr }, ptr %var.load, align 8
  ret { i64, ptr } %ret.pack
}

define void @"log::set_fd"(i64 %0) #3 {
entry:
  call void @"log::set_fd_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"(i64 %0)
  ret void
}

define internal void @"log::set_fd_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"(i64 %0) #3 {
entry:
  %var.load = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp = icmp sge i64 %var.load, 0
  %cmptmp3 = icmp ne i64 %var.load, %0
  %and.128.phi = select i1 %cmptmp, i1 %cmptmp3, i1 false
  br i1 %and.128.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load4 = load i64, ptr @"var.log::#owned_fd", align 8
  %coerce.trunc = trunc i64 %var.load4 to i32
  %call.res = call i32 @close(i32 %coerce.trunc)
  store i64 -1, ptr @"var.log::#owned_fd", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  store i64 %0, ptr @"var.log::#out_fd", align 8
  ret void
}

define i64 @"log::get_fd"() #3 {
entry:
  %var.load = load i64, ptr @"var.log::#out_fd", align 8
  ret i64 %var.load
}

define i1 @"log::set_file"(ptr %0) #3 {
entry:
  %.val = load i64, ptr %0, align 8
  %1 = getelementptr i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %1, align 8
  %call.res = call i1 @"log::set_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"(i64 %.val, ptr %.val1)
  ret i1 %call.res
}

define internal i1 @"log::set_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"(i64 %.0.val, ptr %.8.val) #3 {
entry:
  %arg.str.ptr4 = and i64 %.0.val, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %.8.val, i64 %arg.str.ptr4
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

nulcopy:                                          ; preds = %entry
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr4, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len6

nulmerge:                                         ; preds = %entry, %nulcopy.len6
  %arg.str.ptr7 = phi ptr [ %nulcopy.buf, %nulcopy.len6 ], [ %.8.val, %entry ]
  %var.load8 = load i64, ptr @"var.log::#O_LOG_APPEND", align 8
  %coerce.trunc = trunc i64 %var.load8 to i32
  %call.res = call i32 @open(ptr %arg.str.ptr7, i32 %coerce.trunc, i64 420)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp slt i64 %coerce.sext, 0
  br i1 %cmptmp, label %choice.exit, label %choice.else

nulcopy.len6:                                     ; preds = %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %.8.val, i64 %arg.str.ptr4, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr4
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.else:                                      ; preds = %nulmerge
  %var.load10 = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp11 = icmp sge i64 %var.load10, 0
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

choice.exit:                                      ; preds = %nulmerge, %choice.exit13
  %choice.res = phi i1 [ true, %choice.exit13 ], [ false, %nulmerge ]
  ret i1 %choice.res

choice.then12:                                    ; preds = %choice.else
  %coerce.trunc15 = trunc i64 %var.load10 to i32
  %call.res16 = call i32 @close(i32 %coerce.trunc15)
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.then12, %choice.else
  store i64 %coerce.sext, ptr @"var.log::#owned_fd", align 8
  store i64 %coerce.sext, ptr @"var.log::#out_fd", align 8
  br label %choice.exit
}

define void @"log::close_file"() #3 {
entry:
  call void @"log::close_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"()
  ret void
}

define internal void @"log::close_file_os$Rec(log::#LogOsTarget:posix:Int,tag:Int)"() #3 {
entry:
  %var.load = load i64, ptr @"var.log::#owned_fd", align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %coerce.trunc = trunc i64 %var.load to i32
  %call.res = call i32 @close(i32 %coerce.trunc)
  store i64 -1, ptr @"var.log::#owned_fd", align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  store i64 2, ptr @"var.log::#out_fd", align 8
  ret void
}

define { i64, ptr } @"log::format_entry"(ptr %0, ptr %1) #3 {
entry:
  %concat.str82 = alloca { i64, ptr }, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %ret.ub.salloc4 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %call.res = call i1 @"log::#should_color"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %call.res1 = call { i64, ptr } @"log::#level_ansi"(ptr %0)
  %call.res1.fca.0.extract = extractvalue { i64, ptr } %call.res1, 0
  store i64 %call.res1.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res1.fca.1.extract = extractvalue { i64, ptr } %call.res1, 1
  %call.res1.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  store ptr %call.res1.fca.1.extract, ptr %call.res1.fca.1.gep, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %call.res3 = call { i64, ptr } @"log::#level_plain"(ptr %0)
  %call.res3.fca.0.extract = extractvalue { i64, ptr } %call.res3, 0
  store i64 %call.res3.fca.0.extract, ptr %ret.ub.salloc4, align 8
  %call.res3.fca.1.extract = extractvalue { i64, ptr } %call.res3, 1
  %call.res3.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc4, i32 0, i32 1
  store ptr %call.res3.fca.1.extract, ptr %call.res3.fca.1.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %ret.ub.salloc, %choice.then ], [ %ret.ub.salloc4, %choice.else ]
  %var.load5 = load i1, ptr @"var.log::#show_ts", align 1
  br i1 %var.load5, label %choice.then6, label %choice.exit8

choice.then6:                                     ; preds = %choice.exit
  %var.load9 = load i1, ptr @"var.log::#ts_utc", align 1
  br i1 %var.load9, label %choice.then10, label %choice.else11

choice.exit8:                                     ; preds = %choice.exit, %concat.tot.len43
  %choice.res47 = phi ptr [ %concat.str, %concat.tot.len43 ], [ @str.0.struct, %choice.exit ]
  %var.load48 = load ptr, ptr @"var.log::#prefix_tag", align 8
  %str.len.query49 = load i64, ptr %var.load48, align 8
  %str.len.query50 = and i64 %str.len.query49, 281474976710655
  %cmptmp = icmp sgt i64 %str.len.query50, 0
  br i1 %cmptmp, label %choice.then51, label %choice.exit53

choice.then10:                                    ; preds = %choice.then6
  %var.load13 = load i1, ptr @"var.log::#ts_basic", align 1
  br i1 %var.load13, label %choice.then14, label %choice.else15

choice.else11:                                    ; preds = %choice.then6
  %var.load22 = load i1, ptr @"var.log::#ts_basic", align 1
  br i1 %var.load22, label %choice.then23, label %choice.else24

choice.exit12:                                    ; preds = %choice.then23, %choice.else24, %choice.then14, %choice.else15
  %choice.res33 = phi ptr [ %ret.ub.alloc, %choice.then14 ], [ %ret.ub.alloc20, %choice.else15 ], [ %ret.ub.alloc28, %choice.then23 ], [ %ret.ub.alloc31, %choice.else24 ]
  %concat.lhs34 = load i64, ptr %choice.res33, align 8
  %concat.lhs35 = and i64 %concat.lhs34, 281474976710655
  %concat.lhs36 = getelementptr inbounds { i64, ptr }, ptr %choice.res33, i32 0, i32 1
  %concat.lhs37 = load ptr, ptr %concat.lhs36, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs35, i64 1)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len40

choice.then14:                                    ; preds = %choice.then10
  %call.res17 = call { i64, ptr } @"time::utc_iso_basic$Unit"(i64 0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res17, ptr %ret.ub.alloc, align 8
  br label %choice.exit12

choice.else15:                                    ; preds = %choice.then10
  %call.res18 = call { i64, ptr } @"time::utc_iso$Unit"(i64 0)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  store { i64, ptr } %call.res18, ptr %ret.ub.alloc20, align 8
  br label %choice.exit12

choice.then23:                                    ; preds = %choice.else11
  %call.res26 = call { i64, ptr } @"time::iso_basic$Unit"(i64 0)
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  store { i64, ptr } %call.res26, ptr %ret.ub.alloc28, align 8
  br label %choice.exit12

choice.else24:                                    ; preds = %choice.else11
  %call.res29 = call { i64, ptr } @"time::iso$Unit"(i64 0)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  store { i64, ptr } %call.res29, ptr %ret.ub.alloc31, align 8
  br label %choice.exit12

concat.sum.len40:                                 ; preds = %choice.exit12
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum41 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf42 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf42, label %str_overflow_abort44, label %concat.tot.len43

str_overflow_abort:                               ; preds = %choice.exit12
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len43:                                 ; preds = %concat.sum.len40
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs37, i64 %concat.lhs35, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs35
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 @str.32, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit8

str_overflow_abort44:                             ; preds = %concat.sum.len40
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then51:                                    ; preds = %choice.exit8
  %cat.seg57 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %cat.seg58 = load ptr, ptr %cat.seg57, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %str.len.query50)
  %sum60 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf61 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf61, label %str_overflow_abort63, label %cat.sum.len62

choice.exit53:                                    ; preds = %choice.exit8, %concat.tot.len74
  %choice.res85 = phi ptr [ %concat.str82, %concat.tot.len74 ], [ @str.0.struct, %choice.exit8 ]
  %cat.seg88 = load i64, ptr %choice.res47, align 8
  %cat.seg89 = and i64 %cat.seg88, 281474976710655
  %cat.seg90 = getelementptr inbounds { i64, ptr }, ptr %choice.res47, i32 0, i32 1
  %cat.seg91 = load ptr, ptr %cat.seg90, align 8
  %cat.seg94 = load i64, ptr %choice.res, align 8
  %cat.seg95 = and i64 %cat.seg94, 281474976710655
  %cat.seg96 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %cat.seg97 = load ptr, ptr %cat.seg96, align 8
  %cat.seg100 = load i64, ptr %choice.res85, align 8
  %cat.seg101 = and i64 %cat.seg100, 281474976710655
  %cat.seg102 = getelementptr inbounds { i64, ptr }, ptr %choice.res85, i32 0, i32 1
  %cat.seg103 = load ptr, ptr %cat.seg102, align 8
  %cat.seg107 = load i64, ptr %1, align 8
  %cat.seg108 = and i64 %cat.seg107, 281474976710655
  %cat.seg109 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %cat.seg110 = load ptr, ptr %cat.seg109, align 8
  %cat.sum.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg89, i64 %cat.seg95)
  %sum112 = extractvalue { i64, i1 } %cat.sum.len111, 0
  %ovf113 = extractvalue { i64, i1 } %cat.sum.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %cat.sum.len114

cat.sum.len62:                                    ; preds = %choice.then51
  %cat.sum.len65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum60, i64 1)
  %sum66 = extractvalue { i64, i1 } %cat.sum.len65, 0
  %ovf67 = extractvalue { i64, i1 } %cat.sum.len65, 1
  br i1 %ovf67, label %str_overflow_abort69, label %cat.sum.len68

str_overflow_abort63:                             ; preds = %choice.then51
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len68:                                    ; preds = %cat.sum.len62
  %concat.tot.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum66, i64 1)
  %sum72 = extractvalue { i64, i1 } %concat.tot.len71, 0
  %ovf73 = extractvalue { i64, i1 } %concat.tot.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %concat.tot.len74

str_overflow_abort69:                             ; preds = %cat.sum.len62
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len74:                                 ; preds = %cat.sum.len68
  %arena.cur77 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum72)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf78, ptr align 1 @str.33, i64 2, i1 false)
  %cat.dst79 = getelementptr i8, ptr %concat.buf78, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst79, ptr align 1 %cat.seg58, i64 %str.len.query50, i1 false)
  %cat.off = add i64 2, %str.len.query50
  %cat.dst80 = getelementptr i8, ptr %concat.buf78, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst80, ptr align 1 @str.16, i64 1, i1 false)
  %concat.nul81 = getelementptr i8, ptr %concat.buf78, i64 %sum66
  store i8 0, ptr %concat.nul81, align 1
  store i64 %sum66, ptr %concat.str82, align 8
  %str.build.data.gep84 = getelementptr inbounds { i64, ptr }, ptr %concat.str82, i32 0, i32 1
  store ptr %concat.buf78, ptr %str.build.data.gep84, align 8
  br label %choice.exit53

str_overflow_abort75:                             ; preds = %cat.sum.len68
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len114:                                   ; preds = %choice.exit53
  %cat.sum.len117 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum112, i64 %cat.seg101)
  %sum118 = extractvalue { i64, i1 } %cat.sum.len117, 0
  %ovf119 = extractvalue { i64, i1 } %cat.sum.len117, 1
  br i1 %ovf119, label %str_overflow_abort121, label %cat.sum.len120

str_overflow_abort115:                            ; preds = %choice.exit53
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len120:                                   ; preds = %cat.sum.len114
  %cat.sum.len123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum118, i64 1)
  %sum124 = extractvalue { i64, i1 } %cat.sum.len123, 0
  %ovf125 = extractvalue { i64, i1 } %cat.sum.len123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %cat.sum.len126

str_overflow_abort121:                            ; preds = %cat.sum.len114
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len126:                                   ; preds = %cat.sum.len120
  %cat.sum.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum124, i64 %cat.seg108)
  %sum130 = extractvalue { i64, i1 } %cat.sum.len129, 0
  %ovf131 = extractvalue { i64, i1 } %cat.sum.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %cat.sum.len132

str_overflow_abort127:                            ; preds = %cat.sum.len120
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len132:                                   ; preds = %cat.sum.len126
  %concat.tot.len135 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum130, i64 1)
  %sum136 = extractvalue { i64, i1 } %concat.tot.len135, 0
  %ovf137 = extractvalue { i64, i1 } %concat.tot.len135, 1
  br i1 %ovf137, label %str_overflow_abort139, label %concat.tot.len138

str_overflow_abort133:                            ; preds = %cat.sum.len126
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len138:                                ; preds = %cat.sum.len132
  %arena.cur141 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 %sum136)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf142, ptr align 1 %cat.seg91, i64 %cat.seg89, i1 false)
  %cat.dst145 = getelementptr i8, ptr %concat.buf142, i64 %cat.seg89
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst145, ptr align 1 %cat.seg97, i64 %cat.seg95, i1 false)
  %cat.off146 = add i64 %cat.seg89, %cat.seg95
  %cat.dst147 = getelementptr i8, ptr %concat.buf142, i64 %cat.off146
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst147, ptr align 1 %cat.seg103, i64 %cat.seg101, i1 false)
  %cat.off148 = add i64 %cat.off146, %cat.seg101
  %cat.dst149 = getelementptr i8, ptr %concat.buf142, i64 %cat.off148
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst149, ptr align 1 @str.32, i64 1, i1 false)
  %cat.off150 = add i64 %cat.off148, 1
  %cat.dst151 = getelementptr i8, ptr %concat.buf142, i64 %cat.off150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst151, ptr align 1 %cat.seg110, i64 %cat.seg108, i1 false)
  %concat.nul152 = getelementptr i8, ptr %concat.buf142, i64 %sum130
  store i8 0, ptr %concat.nul152, align 1
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %sum130, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %concat.buf142, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

str_overflow_abort139:                            ; preds = %cat.sum.len132
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal { i64, ptr } @"time::utc_iso_basic$Unit"(i64 %0) #3 {
entry:
  %call.res = call ptr @"time::resolve_utc_dt$Unit"(i64 %0)
  %call.res1 = call { i64, ptr } @"time::format_dt_iso_basic"(ptr %call.res)
  %call.res1.fca.0.extract = extractvalue { i64, ptr } %call.res1, 0
  %call.res1.fca.1.extract = extractvalue { i64, ptr } %call.res1, 1
  ret { i64, ptr } %call.res1
}

define internal ptr @"time::resolve_utc_dt$Unit"(i64 %0) #3 {
entry:
  %call.res = call ptr @"time::utc_now_dt"()
  ret ptr %call.res
}

declare ptr @"time::utc_now_dt"() #3

declare { i64, ptr } @"time::format_dt_iso_basic"(ptr) #3

define internal { i64, ptr } @"time::utc_iso$Unit"(i64 %0) #3 {
entry:
  %call.res = call ptr @"time::resolve_utc_dt$Unit"(i64 %0)
  %call.res1 = call { i64, ptr } @"time::format_dt_iso"(ptr %call.res)
  %call.res1.fca.0.extract = extractvalue { i64, ptr } %call.res1, 0
  %call.res1.fca.1.extract = extractvalue { i64, ptr } %call.res1, 1
  ret { i64, ptr } %call.res1
}

declare { i64, ptr } @"time::format_dt_iso"(ptr) #3

define internal { i64, ptr } @"time::iso_basic$Unit"(i64 %0) #3 {
entry:
  %call.res = call ptr @"time::resolve_local_dt$Unit"(i64 %0)
  %call.res1 = call { i64, ptr } @"time::format_dt_iso_basic"(ptr %call.res)
  %call.res1.fca.0.extract = extractvalue { i64, ptr } %call.res1, 0
  %call.res1.fca.1.extract = extractvalue { i64, ptr } %call.res1, 1
  ret { i64, ptr } %call.res1
}

define internal ptr @"time::resolve_local_dt$Unit"(i64 %0) #3 {
entry:
  %call.res = call ptr @"time::local_now_dt"()
  ret ptr %call.res
}

declare ptr @"time::local_now_dt"() #3

define internal { i64, ptr } @"time::iso$Unit"(i64 %0) #3 {
entry:
  %call.res = call ptr @"time::resolve_local_dt$Unit"(i64 %0)
  %call.res1 = call { i64, ptr } @"time::format_dt_iso"(ptr %call.res)
  %call.res1.fca.0.extract = extractvalue { i64, ptr } %call.res1, 0
  %call.res1.fca.1.extract = extractvalue { i64, ptr } %call.res1, 1
  ret { i64, ptr } %call.res1
}

define { i64, ptr } @"log::format_kv"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %a.null = icmp eq ptr %2, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.fields.0 = phi ptr [ %a.create3, %a.create ], [ %2, %entry ]
  %call.res = call { i64, ptr } @"log::#append_fields"(ptr %1, ptr %var.fields.0)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  store i64 %call.res.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %call.res.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  store ptr %call.res.fca.1.extract, ptr %call.res.fca.1.gep, align 8
  %call.res5 = call { i64, ptr } @"log::format_entry"(ptr %0, ptr %ret.ub.salloc)
  %call.res5.fca.0.extract = extractvalue { i64, ptr } %call.res5, 0
  %call.res5.fca.1.extract = extractvalue { i64, ptr } %call.res5, 1
  ret { i64, ptr } %call.res5
}

define void @"log::log"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call i1 @"log::enabled"(ptr %0)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res3 = call { i64, ptr } @"log::format_entry"(ptr %0, ptr %1)
  %call.res3.fca.0.extract = extractvalue { i64, ptr } %call.res3, 0
  %call.res3.fca.1.extract = extractvalue { i64, ptr } %call.res3, 1
  %concat.lhs5 = and i64 %call.res3.fca.0.extract, 281474976710655
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs5, i64 1)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len10

choice.exit:                                      ; preds = %nulmerge, %entry
  ret void

concat.sum.len10:                                 ; preds = %choice.then
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum11 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf12 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf12, label %str_overflow_abort14, label %concat.tot.len13

str_overflow_abort:                               ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len13:                                 ; preds = %concat.sum.len10
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum11)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %call.res3.fca.1.extract, i64 %concat.lhs5, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 @str.34, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load17 = load i64, ptr @"var.log::#out_fd", align 8
  %arg.str.ptr21 = load i64, ptr %concat.str, align 8
  %arg.str.ptr22 = and i64 %arg.str.ptr21, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %concat.buf, i64 %arg.str.ptr22
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

str_overflow_abort14:                             ; preds = %concat.sum.len10
  call void @dva_abort_str_overflow_msg()
  unreachable

nulcopy:                                          ; preds = %concat.tot.len13
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr22, i64 1)
  %sum24 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf25 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf25, label %str_overflow_abort27, label %nulcopy.len26

nulmerge:                                         ; preds = %concat.tot.len13, %nulcopy.len26
  %arg.str.ptr30 = phi ptr [ %nulcopy.buf, %nulcopy.len26 ], [ %concat.buf, %concat.tot.len13 ]
  %str.len.query32 = load i64, ptr %concat.str, align 8
  %str.len.query33 = and i64 %str.len.query32, 281474976710655
  %coerce.trunc = trunc i64 %var.load17 to i32
  %call.res34 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr30, i64 %str.len.query33)
  br label %choice.exit

nulcopy.len26:                                    ; preds = %nulcopy
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 %sum24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %concat.buf, i64 %arg.str.ptr22, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr22
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort27:                             ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define void @"log::log_kv"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %call.res = call i1 @"log::enabled"(ptr %0)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %a.null = icmp eq ptr %2, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %nulmerge, %entry
  ret void

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  store i64 0, ptr %a.create4, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %var.fields.0 = phi ptr [ %a.create4, %a.create ], [ %2, %choice.then ]
  %call.res6 = call { i64, ptr } @"log::format_kv"(ptr %0, ptr %1, ptr %var.fields.0)
  %call.res6.fca.0.extract = extractvalue { i64, ptr } %call.res6, 0
  %call.res6.fca.1.extract = extractvalue { i64, ptr } %call.res6, 1
  %concat.lhs8 = and i64 %call.res6.fca.0.extract, 281474976710655
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs8, i64 1)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len13

concat.sum.len13:                                 ; preds = %a.after
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum14 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf15 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %concat.tot.len16

str_overflow_abort:                               ; preds = %a.after
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len16:                                 ; preds = %concat.sum.len13
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum14)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %call.res6.fca.1.extract, i64 %concat.lhs8, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 @str.34, i64 1, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %var.load21 = load i64, ptr @"var.log::#out_fd", align 8
  %arg.str.ptr25 = load i64, ptr %concat.str, align 8
  %arg.str.ptr26 = and i64 %arg.str.ptr25, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %concat.buf, i64 %arg.str.ptr26
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

str_overflow_abort17:                             ; preds = %concat.sum.len13
  call void @dva_abort_str_overflow_msg()
  unreachable

nulcopy:                                          ; preds = %concat.tot.len16
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr26, i64 1)
  %sum28 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf29 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf29, label %str_overflow_abort31, label %nulcopy.len30

nulmerge:                                         ; preds = %concat.tot.len16, %nulcopy.len30
  %arg.str.ptr34 = phi ptr [ %nulcopy.buf, %nulcopy.len30 ], [ %concat.buf, %concat.tot.len16 ]
  %str.len.query36 = load i64, ptr %concat.str, align 8
  %str.len.query37 = and i64 %str.len.query36, 281474976710655
  %coerce.trunc = trunc i64 %var.load21 to i32
  %call.res38 = call i64 @write(i32 %coerce.trunc, ptr %arg.str.ptr34, i64 %str.len.query37)
  br label %choice.exit

nulcopy.len30:                                    ; preds = %nulcopy
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 %sum28)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %concat.buf, i64 %arg.str.ptr26, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr26
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort31:                             ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define void @"log::debug"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %0)
  ret void
}

define void @"log::info"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 1, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %0)
  ret void
}

define void @"log::warn"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 2, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %0)
  ret void
}

define void @"log::error"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  call void @"log::log"(ptr %enum.alloc, ptr %0)
  ret void
}

define void @"log::debug_kv"(ptr %0, ptr %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.fields.0 = phi ptr [ %a.create3, %a.create ], [ %1, %entry ]
  call void @"log::log_kv"(ptr %enum.alloc, ptr %0, ptr %var.fields.0)
  ret void
}

define void @"log::info_kv"(ptr %0, ptr %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 1, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.fields.0 = phi ptr [ %a.create3, %a.create ], [ %1, %entry ]
  call void @"log::log_kv"(ptr %enum.alloc, ptr %0, ptr %var.fields.0)
  ret void
}

define void @"log::warn_kv"(ptr %0, ptr %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 2, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.fields.0 = phi ptr [ %a.create3, %a.create ], [ %1, %entry ]
  call void @"log::log_kv"(ptr %enum.alloc, ptr %0, ptr %var.fields.0)
  ret void
}

define void @"log::error_kv"(ptr %0, ptr %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  store i64 0, ptr %a.create3, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %var.fields.0 = phi ptr [ %a.create3, %a.create ], [ %1, %entry ]
  call void @"log::log_kv"(ptr %enum.alloc, ptr %0, ptr %var.fields.0)
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn "nounwind" }
