; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
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
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"json::#is_ws_at", ptr null }
@"var.json::#is_ws_at" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"json::#skip_ws", ptr null }
@"var.json::#skip_ws" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"json::#hexval", ptr null }
@"var.json::#hexval" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"json::#is_hex_at", ptr null }
@"var.json::#is_hex_at" = global ptr null
@str.0 = internal unnamed_addr constant [5 x i8] c"true\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.0 }
@str.1 = internal unnamed_addr constant [6 x i8] c"false\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.1 }
@clo.const.4 = internal constant { ptr, ptr } { ptr @"json::#bool_str", ptr null }
@"var.json::#bool_str" = global ptr null
@str.2 = internal unnamed_addr constant [30 x i8] c"json: invalid UTF-8 in string\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.2 }
@str.3 = internal unnamed_addr constant [13 x i8] c"std/json.dva\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.3 }
@str.4 = internal unnamed_addr constant [26 x i8] c"json: unterminated string\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.4 }
@str.5 = internal unnamed_addr constant [24 x i8] c"json: bad low surrogate\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 23, ptr @str.5 }
@str.6 = internal unnamed_addr constant [28 x i8] c"json: missing low surrogate\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 27, ptr @str.6 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"json::#parse_surrogate_pair", ptr null }
@str.7 = internal unnamed_addr constant [29 x i8] c"json: unpaired low surrogate\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 28, ptr @str.7 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"json::#parse_unicode_cp", ptr null }
@str.8 = internal unnamed_addr constant [20 x i8] c"json: bad \\u escape\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 19, ptr @str.8 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"json::#parse_unicode", ptr null }
@str.9 = internal unnamed_addr constant [17 x i8] c"json: bad escape\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.9 }
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"json::#parse_escape", ptr null }
@str.10 = internal unnamed_addr constant [34 x i8] c"json: control character in string\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 33, ptr @str.10 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"json::#scan_string", ptr null }
@clo.const.10 = internal constant { ptr, ptr } { ptr @"json::#scan_utf8_char", ptr null }
@"var.json::#scan_utf8_char" = global ptr null
@"var.json::#scan_string" = global ptr null
@"var.json::#parse_escape" = global ptr null
@"var.json::#parse_unicode" = global ptr null
@"var.json::#parse_unicode_cp" = global ptr null
@"var.json::#parse_surrogate_pair" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"json::#is_digit_at", ptr null }
@"var.json::#is_digit_at" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"json::#parse_string", ptr null }
@"var.json::#parse_string" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@str.11 = internal unnamed_addr constant [31 x i8] c"json: trailing comma in object\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.11 }
@str.12 = internal unnamed_addr constant [36 x i8] c"json: expected ',' or '}' in object\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.12 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"json::#parse_object_after_val", ptr null }
@str.13 = internal unnamed_addr constant [36 x i8] c"json: expected ':' after object key\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.13 }
@str.14 = internal unnamed_addr constant [33 x i8] c"json: object key is not a string\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.14 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"json::#parse_object_after_key", ptr null }
@str.15 = internal unnamed_addr constant [36 x i8] c"json: expected string key in object\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.15 }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"json::#parse_object_loop", ptr null }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"json::#parse_object", ptr null }
@str.16 = internal unnamed_addr constant [18 x i8] c"json: bad literal\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 17, ptr @str.16 }
@clo.const.17 = internal constant { ptr, ptr } { ptr @"json::#parse_lit", ptr null }
@str.17 = internal unnamed_addr constant [5 x i8] c"null\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.17 }
@str.18 = internal unnamed_addr constant [23 x i8] c"json: bad null literal\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 22, ptr @str.18 }
@clo.const.18 = internal constant { ptr, ptr } { ptr @"json::#parse_null", ptr null }
@str.19 = internal unnamed_addr constant [31 x i8] c"json: leading zero not allowed\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.19 }
@str.20 = internal unnamed_addr constant [23 x i8] c"json: malformed number\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 22, ptr @str.20 }
@str.21 = internal unnamed_addr constant [24 x i8] c"json: expected a number\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 23, ptr @str.21 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"json::#parse_number", ptr null }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"json::#parse_value", ptr null }
@str.22 = internal unnamed_addr constant [30 x i8] c"json: trailing comma in array\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.22 }
@str.23 = internal unnamed_addr constant [35 x i8] c"json: expected ',' or ']' in array\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.23 }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"json::#parse_array_after_value", ptr null }
@clo.const.22 = internal constant { ptr, ptr } { ptr @"json::#parse_array_loop", ptr null }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"json::#parse_array", ptr null }
@"var.json::#parse_array" = global ptr null
@"var.json::#parse_array_loop" = global ptr null
@"var.json::#parse_array_after_value" = global ptr null
@"var.json::#parse_object" = global ptr null
@"var.json::#parse_object_loop" = global ptr null
@"var.json::#parse_object_after_key" = global ptr null
@"var.json::#parse_object_after_val" = global ptr null
@"var.json::#parse_lit" = global ptr null
@"var.json::#parse_null" = global ptr null
@"var.json::#parse_number" = global ptr null
@str.24 = internal unnamed_addr constant [38 x i8] c"json: trailing characters after value\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 37, ptr @str.24 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"json::#parse_finish", ptr null }
@clo.const.25 = internal constant { ptr, ptr } { ptr @"json::parse", ptr null }
@"var.json::parse" = global ptr null
@"var.json::#parse_finish" = global ptr null
@"var.json::#parse_value" = global ptr null
@str.25 = internal unnamed_addr constant [7 x i8] c"json: \00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.25 }
@clo.const.26 = internal constant { ptr, ptr } { ptr @"json::#json_type_err", ptr null }
@"var.json::#json_type_err" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"json::#hex_digit", ptr null }
@"var.json::#hex_digit" = global ptr null
@str.26 = internal unnamed_addr constant [3 x i8] c"\\\22\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.26 }
@str.27 = internal unnamed_addr constant [3 x i8] c"\\\\\00"
@str.27.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.27 }
@str.28 = internal unnamed_addr constant [3 x i8] c"\\b\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.28 }
@str.29 = internal unnamed_addr constant [3 x i8] c"\\f\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.29 }
@str.30 = internal unnamed_addr constant [3 x i8] c"\\n\00"
@str.30.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.30 }
@str.31 = internal unnamed_addr constant [3 x i8] c"\\r\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.31 }
@str.32 = internal unnamed_addr constant [3 x i8] c"\\t\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.32 }
@str.33 = internal unnamed_addr constant [5 x i8] c"\\u00\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.33 }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"json::escape_string_into", ptr null }
@"var.json::escape_string_into" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"json::escape_string", ptr null }
@"var.json::escape_string" = global ptr null
@str.34 = internal unnamed_addr constant [4 x i8] c"nan\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.34 }
@str.35 = internal unnamed_addr constant [4 x i8] c"inf\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.35 }
@str.36 = internal unnamed_addr constant [5 x i8] c"-inf\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.36 }
@clo.const.30 = internal constant { ptr, ptr } { ptr @"json::format_number", ptr null }
@"var.json::format_number" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"json::#stringify_into", ptr null }
@"var.json::#stringify_into" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"json::#append_indent", ptr null }
@"var.json::#append_indent" = global ptr null
@str.37 = internal unnamed_addr constant [3 x i8] c"[]\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.37 }
@str.38 = internal unnamed_addr constant [3 x i8] c"[\0A\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.38 }
@str.39 = internal unnamed_addr constant [3 x i8] c",\0A\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.39 }
@str.40 = internal unnamed_addr constant [3 x i8] c"{}\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.40 }
@str.41 = internal unnamed_addr constant [3 x i8] c"{\0A\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.41 }
@str.42 = internal unnamed_addr constant [3 x i8] c": \00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.42 }
@clo.const.33 = internal constant { ptr, ptr } { ptr @"json::#stringify_pretty_into", ptr null }
@"var.json::#stringify_pretty_into" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"json::stringify", ptr null }
@"var.json::stringify" = global ptr null
@clo.const.35 = internal constant { ptr, ptr } { ptr @"json::stringify_pretty", ptr null }
@"var.json::stringify_pretty" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"json::get", ptr null }
@"var.json::get" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"json::has", ptr null }
@"var.json::has" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"json::get_str", ptr null }
@"var.json::get_str" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"json::get_int", ptr null }
@"var.json::get_int" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"json::get_float", ptr null }
@"var.json::get_float" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"json::get_bool", ptr null }
@"var.json::get_bool" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"json::is_array", ptr null }
@"var.json::is_array" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"json::array_len", ptr null }
@"var.json::array_len" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"json::array_at", ptr null }
@"var.json::array_at" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"json::is_object", ptr null }
@"var.json::is_object" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"json::object_len", ptr null }
@"var.json::object_len" = global ptr null
@str.43 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.43 }
@clo.const.47 = internal constant { ptr, ptr } { ptr @"json::object_key_at", ptr null }
@"var.json::object_key_at" = global ptr null
@clo.const.48 = internal constant { ptr, ptr } { ptr @"json::object_val_at", ptr null }
@"var.json::object_val_at" = global ptr null
@clo.const.49 = internal constant { ptr, ptr } { ptr @"json::is_valid_int_value", ptr null }
@"var.json::is_valid_int_value" = global ptr null
@clo.const.50 = internal constant { ptr, ptr } { ptr @"json::unwrap_int_or_zero", ptr null }
@"var.json::unwrap_int_or_zero" = global ptr null
@clo.const.51 = internal constant { ptr, ptr } { ptr @"json::is_valid_float_value", ptr null }
@"var.json::is_valid_float_value" = global ptr null
@clo.const.52 = internal constant { ptr, ptr } { ptr @"json::unwrap_float_or_zero", ptr null }
@"var.json::unwrap_float_or_zero" = global ptr null
@str.44 = internal unnamed_addr constant [17 x i8] c"expected integer\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.44 }
@clo.const.53 = internal constant { ptr, ptr } { ptr @"json::decode_int_value", ptr null }
@"var.json::decode_int_value" = global ptr null
@str.45 = internal unnamed_addr constant [16 x i8] c"expected number\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 15, ptr @str.45 }
@clo.const.54 = internal constant { ptr, ptr } { ptr @"json::decode_float_value", ptr null }
@"var.json::decode_float_value" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_json, ptr null }]

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @dva_hash_string(ptr, i64)

declare ptr @dva_cov_map_ptr()

declare void @dva_cov_trace(i64)

declare void @__sanitizer_cov_trace_pc_guard(ptr)

declare void @__sanitizer_cov_trace_pc_guard_init(ptr, ptr)

define internal void @__dva_global_init_json() #1 {
entry:
  store ptr @clo.const, ptr @"var.json::#is_ws_at", align 8
  store ptr @clo.const.1, ptr @"var.json::#skip_ws", align 8
  store ptr @clo.const.2, ptr @"var.json::#hexval", align 8
  store ptr @clo.const.3, ptr @"var.json::#is_hex_at", align 8
  store ptr @clo.const.4, ptr @"var.json::#bool_str", align 8
  store ptr @clo.const.10, ptr @"var.json::#scan_utf8_char", align 8
  store ptr @clo.const.9, ptr @"var.json::#scan_string", align 8
  store ptr @clo.const.8, ptr @"var.json::#parse_escape", align 8
  store ptr @clo.const.7, ptr @"var.json::#parse_unicode", align 8
  store ptr @clo.const.6, ptr @"var.json::#parse_unicode_cp", align 8
  store ptr @clo.const.5, ptr @"var.json::#parse_surrogate_pair", align 8
  store ptr @clo.const.11, ptr @"var.json::#is_digit_at", align 8
  store ptr @clo.const.12, ptr @"var.json::#parse_string", align 8
  store ptr @clo.const.23, ptr @"var.json::#parse_array", align 8
  store ptr @clo.const.22, ptr @"var.json::#parse_array_loop", align 8
  store ptr @clo.const.21, ptr @"var.json::#parse_array_after_value", align 8
  store ptr @clo.const.16, ptr @"var.json::#parse_object", align 8
  store ptr @clo.const.15, ptr @"var.json::#parse_object_loop", align 8
  store ptr @clo.const.14, ptr @"var.json::#parse_object_after_key", align 8
  store ptr @clo.const.13, ptr @"var.json::#parse_object_after_val", align 8
  store ptr @clo.const.17, ptr @"var.json::#parse_lit", align 8
  store ptr @clo.const.18, ptr @"var.json::#parse_null", align 8
  store ptr @clo.const.19, ptr @"var.json::#parse_number", align 8
  store ptr @clo.const.25, ptr @"var.json::parse", align 8
  store ptr @clo.const.24, ptr @"var.json::#parse_finish", align 8
  store ptr @clo.const.20, ptr @"var.json::#parse_value", align 8
  store ptr @clo.const.26, ptr @"var.json::#json_type_err", align 8
  store ptr @clo.const.27, ptr @"var.json::#hex_digit", align 8
  store ptr @clo.const.28, ptr @"var.json::escape_string_into", align 8
  store ptr @clo.const.29, ptr @"var.json::escape_string", align 8
  store ptr @clo.const.30, ptr @"var.json::format_number", align 8
  store ptr @clo.const.31, ptr @"var.json::#stringify_into", align 8
  store ptr @clo.const.32, ptr @"var.json::#append_indent", align 8
  store ptr @clo.const.33, ptr @"var.json::#stringify_pretty_into", align 8
  store ptr @clo.const.34, ptr @"var.json::stringify", align 8
  store ptr @clo.const.35, ptr @"var.json::stringify_pretty", align 8
  store ptr @clo.const.36, ptr @"var.json::get", align 8
  store ptr @clo.const.37, ptr @"var.json::has", align 8
  store ptr @clo.const.38, ptr @"var.json::get_str", align 8
  store ptr @clo.const.39, ptr @"var.json::get_int", align 8
  store ptr @clo.const.40, ptr @"var.json::get_float", align 8
  store ptr @clo.const.41, ptr @"var.json::get_bool", align 8
  store ptr @clo.const.42, ptr @"var.json::is_array", align 8
  store ptr @clo.const.43, ptr @"var.json::array_len", align 8
  store ptr @clo.const.44, ptr @"var.json::array_at", align 8
  store ptr @clo.const.45, ptr @"var.json::is_object", align 8
  store ptr @clo.const.46, ptr @"var.json::object_len", align 8
  store ptr @clo.const.47, ptr @"var.json::object_key_at", align 8
  store ptr @clo.const.48, ptr @"var.json::object_val_at", align 8
  store ptr @clo.const.49, ptr @"var.json::is_valid_int_value", align 8
  store ptr @clo.const.50, ptr @"var.json::unwrap_int_or_zero", align 8
  store ptr @clo.const.51, ptr @"var.json::is_valid_float_value", align 8
  store ptr @clo.const.52, ptr @"var.json::unwrap_float_or_zero", align 8
  store ptr @clo.const.53, ptr @"var.json::decode_int_value", align 8
  store ptr @clo.const.54, ptr @"var.json::decode_float_value", align 8
  ret void
}

define internal i1 @"json::#is_ws_at"(ptr %0, i64 %1) #1 {
entry:
  %var.p = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store i64 %1, ptr %var.p, align 8
  %var.load = load i64, ptr %var.p, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.76.then, label %and.76.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.76.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

and.76.else:                                      ; preds = %str_ok
  br label %and.76.exit

and.76.exit:                                      ; preds = %and.76.else, %idx_ok
  %and.76.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.76.else ]
  ret i1 %and.76.phi

str_gen_check11:                                  ; preds = %and.76.then
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %and.76.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load17, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.76.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

declare i1 @"str::is_ws"(i64) #1

define internal i64 @"json::#skip_ws"(ptr %0, i64 %1) #1 {
entry:
  %var.p = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store i64 %1, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load i64, ptr %var.p, align 8
  %call.res = call i1 @"json::#is_ws_at"(ptr %var.load, i64 %var.load1)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.sc, align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load3, 1
  %call.res4 = call i64 @"json::#skip_ws"(ptr %var.load2, i64 %addtmp)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load5 = load i64, ptr %var.p, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %call.res4, %choice.then ], [ %var.load5, %choice.else ]
  ret i64 %choice.res
}

define internal i64 @"json::#hexval"(i64 %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var.h = alloca i64, align 8
  store i64 %0, ptr %var.h, align 8
  %var.load = load i64, ptr %var.h, align 8
  %call.res = call { i1, i64 } @"ascii::hex_value"(i64 %var.load)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %ram.pay, %choice.then ], [ -1, %choice.else ]
  ret i64 %choice.res
}

declare { i1, i64 } @"ascii::hex_value"(i64) #1

define internal i1 @"json::#is_hex_at"(ptr %0, i64 %1) #1 {
entry:
  %var.p = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store i64 %1, ptr %var.p, align 8
  %var.load = load i64, ptr %var.p, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.77.then, label %and.77.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.77.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

and.77.else:                                      ; preds = %str_ok
  br label %and.77.exit

and.77.exit:                                      ; preds = %and.77.else, %idx_ok
  %and.77.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.77.else ]
  ret i1 %and.77.phi

str_gen_check11:                                  ; preds = %and.77.then
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %and.77.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load17, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_hex"(i64 %s.byte.val)
  br label %and.77.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

declare i1 @"ascii::is_hex"(i64) #1

define internal ptr @"json::#bool_str"(i1 %0) #1 {
entry:
  %var.b = alloca i1, align 1
  store i1 %0, ptr %var.b, align 1
  %var.load = load i1, ptr %var.b, align 1
  br i1 %var.load, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  ret ptr %choice.res
}

define internal { i1, i64 } @"json::#scan_utf8_char"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.dec = alloca ptr, align 8
  %var._c0 = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.b, align 8
  store i64 %2, ptr %var.k, align 8
  store i64 %3, ptr %var._c0, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr %var.k, align 8
  %call.res = call ptr @"utf::decode_str_at"(ptr %fld.load, i64 %var.load1)
  store ptr %call.res, ptr %var.dec, align 8
  %var.load2 = load ptr, ptr %var.dec, align 8
  %fld.gep3 = getelementptr inbounds { i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  %cmptmp = icmp slt i64 %fld.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load5 = load i64, ptr %var.k, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load5, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld7, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %var.load8 = load ptr, ptr %var.sc, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag = lshr i64 %s.read.len11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %b.grow_done, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %call.res49, %b.grow_done ]
  ret { i1, i64 } %choice.res

str_gen_check:                                    ; preds = %choice.else
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.k, align 8
  %var.load16 = load i64, ptr %var.k, align 8
  %var.load17 = load ptr, ptr %var.dec, align 8
  %fld.gep18 = getelementptr inbounds { i64, i64 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %addtmp = add i64 %var.load16, %fld.load19
  %start.is_neg = icmp slt i64 %var.load15, 0
  %rel.start = add i64 %s.read.len12, %var.load15
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load15
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %s.read.len12, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %arena.cur20 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %app.str.len21 = load i64, ptr %app.str.len, align 8
  %app.str.len22 = and i64 %app.str.len21, 281474976710655
  %str.tag23 = lshr i64 %app.str.len21, 48
  %str.immortal24 = icmp eq i64 %str.tag23, 0
  br i1 %str.immortal24, label %str_ok26, label %str_gen_check25

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check25:                                  ; preds = %str_ok
  %arena.cur28 = call ptr @dva_arena_current()
  %tag.valid29 = call i1 @dva_arena_validate_tag(ptr %arena.cur28, i64 %str.tag23)
  br i1 %tag.valid29, label %str_ok26, label %str_stale27

str_ok26:                                         ; preds = %str_stale27, %str_gen_check25, %str_ok
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len30 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len30, i64 %app.str.len22)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len31

str_stale27:                                      ; preds = %str_gen_check25
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok26

b.app.new.len31:                                  ; preds = %str_overflow_abort, %str_ok26
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap32 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap32, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok26
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len31

b.grow2:                                          ; preds = %b.app.new.len31
  %b.cap2 = mul i64 %b.cap32, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len233 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data234 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum35 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf36 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf36, label %str_overflow_abort38, label %b.new.buf.len237

b.nogrow2:                                        ; preds = %b.app.new.len31
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len237
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %app.str.data40 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data41 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data41, i64 %b.app.cur.len30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data40, i64 %app.str.len22, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data41, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load42 = load ptr, ptr %var.sc, align 8
  %var.load43 = load ptr, ptr %var.b, align 8
  %var.load44 = load i64, ptr %var.k, align 8
  %var.load45 = load ptr, ptr %var.dec, align 8
  %fld.gep46 = getelementptr inbounds { i64, i64 }, ptr %var.load45, i32 0, i32 1
  %fld.load47 = load i64, ptr %fld.gep46, align 8
  %addtmp48 = add i64 %var.load44, %fld.load47
  %call.res49 = call { i1, i64 } @"json::#scan_string"(ptr %var.load42, ptr %var.load43, i64 %addtmp48)
  br label %choice.exit

b.new.buf.len237:                                 ; preds = %str_overflow_abort38, %b.grow2
  %arena.cur39 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %sum35)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data234, i64 %b.cur.len233, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len233
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort38:                             ; preds = %b.grow2
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len237
}

declare ptr @"utf::decode_str_at"(ptr, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define internal { i1, i64 } @"json::#scan_string"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.c = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.b, align 8
  store i64 %2, ptr %var.k, align 8
  %var.load = load i64, ptr %var.k, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sge i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %arena.cur4 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load5 = load i64, ptr %var.k, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load5, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld7, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load8 = load ptr, ptr %var.sc, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_gen_check15:                                  ; preds = %choice.exit
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %choice.exit
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %var.load21 = load i64, ptr %var.k, align 8
  %idx.neg = icmp slt i64 %var.load21, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale17:                                      ; preds = %str_gen_check15
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16

idx_big_check:                                    ; preds = %str_ok16
  %idx.big = icmp sge i64 %var.load21, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data20, i64 %var.load21
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load22 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load22, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok16
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit23:                                    ; preds = %choice.next57, %b.push_done, %choice.case32, %choice.case26, %choice.case
  %choice.res = phi { i1, i64 } [ %ram.pay25, %choice.case ], [ %call.res, %choice.case26 ], [ %ram.pay55, %choice.case32 ], [ %call.res70, %b.push_done ], [ %call.res75, %choice.next57 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %idx_ok
  %var.load24 = load i64, ptr %var.k, align 8
  %ram.pay25 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load24, 1
  br label %choice.exit23

choice.next:                                      ; preds = %idx_ok
  %val.match28 = icmp eq i64 %var.load22, 92
  br i1 %val.match28, label %choice.case26, label %choice.next27

choice.case26:                                    ; preds = %choice.next
  %var.load29 = load ptr, ptr %var.sc, align 8
  %var.load30 = load ptr, ptr %var.b, align 8
  %var.load31 = load i64, ptr %var.k, align 8
  %call.res = call { i1, i64 } @"json::#parse_escape"(ptr %var.load29, ptr %var.load30, i64 %var.load31)
  br label %choice.exit23

choice.next27:                                    ; preds = %choice.next
  %cmptmp34 = icmp slt i64 %var.load22, 32
  br i1 %cmptmp34, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next27
  %arena.cur35 = call ptr @dva_arena_current()
  %err.alloc36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 56)
  %err.code.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc36, i32 0, i32 0
  store i64 400, ptr %err.code.gep37, align 8
  %err.msg.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc36, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep38, align 8
  %err.file.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc36, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep39, align 8
  %err.line.gep40 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc36, i32 0, i32 3
  store i64 0, ptr %err.line.gep40, align 8
  %err.col.gep41 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc36, i32 0, i32 4
  store i64 0, ptr %err.col.gep41, align 8
  %err.ctx.gep42 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc36, i32 0, i32 5
  %var.load43 = load i64, ptr %var.k, align 8
  %arena.cur44 = call ptr @dva_arena_current()
  %rec.alloc45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld46 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc45, i32 0, i32 0
  store i64 %var.load43, ptr %rec.fld46, align 8
  %rec.fld47 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc45, i32 0, i32 1
  store i64 0, ptr %rec.fld47, align 8
  %ctx.0.gep48 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc45, i32 0, i32 0
  %ctx.049 = load i64, ptr %ctx.0.gep48, align 8
  %ctx.1.gep50 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc45, i32 0, i32 1
  %ctx.151 = load i64, ptr %ctx.1.gep50, align 8
  %err.ctx0.gep52 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep42, i32 0, i32 0
  store i64 %ctx.049, ptr %err.ctx0.gep52, align 8
  %err.ctx1.gep53 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep42, i32 0, i32 1
  store i64 %ctx.151, ptr %err.ctx1.gep53, align 8
  %p.to.i6454 = ptrtoint ptr %err.alloc36 to i64
  %ram.pay55 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6454, 1
  br label %choice.exit23

choice.next33:                                    ; preds = %choice.next27
  %cmptmp58 = icmp slt i64 %var.load22, 128
  br i1 %cmptmp58, label %choice.case56, label %choice.next57

choice.case56:                                    ; preds = %choice.next33
  %b.load = load ptr, ptr %var.b, align 8
  %var.load59 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load59, 0
  %b.b.le255 = icmp sle i64 %var.load59, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.next57:                                    ; preds = %choice.next33
  %var.load71 = load ptr, ptr %var.sc, align 8
  %var.load72 = load ptr, ptr %var.b, align 8
  %var.load73 = load i64, ptr %var.k, align 8
  %var.load74 = load i64, ptr %var.c, align 8
  %call.res75 = call { i1, i64 } @"json::#scan_utf8_char"(ptr %var.load71, ptr %var.load72, i64 %var.load73, i64 %var.load74)
  br label %choice.exit23

b.byte_ok:                                        ; preds = %b.byte_err, %choice.case56
  %b.byte.i8 = trunc i64 %var.load59 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len60 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap61 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data62 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len60, %b.cap61
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case56
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap61, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len63

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len63
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data65 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len66 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data65, i64 %b.cur.len66
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len66, 1
  %b.nul = getelementptr i8, ptr %b.cur.data65, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %var.load67 = load ptr, ptr %var.sc, align 8
  %var.load68 = load ptr, ptr %var.b, align 8
  %var.load69 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load69, 1
  %call.res70 = call { i1, i64 } @"json::#scan_string"(ptr %var.load67, ptr %var.load68, i64 %addtmp)
  br label %choice.exit23

b.new.buf.len63:                                  ; preds = %str_overflow_abort, %b.grow
  %arena.cur64 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data62, i64 %b.len60, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len60
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len63
}

define internal { i1, i64 } @"json::#parse_escape"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.e = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.b, align 8
  store i64 %2, ptr %var.k, align 8
  %var.load = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load, 1
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.e, align 8
  %var.load19 = load i64, ptr %var.e, align 8
  %cmptmp20 = icmp eq i64 %var.load19, 117
  br i1 %cmptmp20, label %choice.then, label %choice.exit21

choice.case:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %choice.case
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.k, align 8
  %addtmp18 = add i64 %var.load17, 1
  %idx.neg = icmp slt i64 %addtmp18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %addtmp18, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %addtmp18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then:                                      ; preds = %choice.exit
  %var.load22 = load ptr, ptr %var.sc, align 8
  %var.load23 = load ptr, ptr %var.b, align 8
  %var.load24 = load i64, ptr %var.k, align 8
  %call.res = call { i1, i64 } @"json::#parse_unicode"(ptr %var.load22, ptr %var.load23, i64 %var.load24)
  ret { i1, i64 } %call.res

choice.exit21:                                    ; preds = %ret.dead, %choice.exit
  %b.load = load ptr, ptr %var.b, align 8
  %var.load25 = load i64, ptr %var.e, align 8
  %val.match = icmp eq i64 %var.load25, 34
  %val.match29 = icmp eq i64 %var.load25, 92
  %case.or = or i1 %val.match, %val.match29
  %val.match30 = icmp eq i64 %var.load25, 47
  %case.or31 = or i1 %case.or, %val.match30
  br i1 %case.or31, label %choice.case27, label %choice.next28

ret.dead:                                         ; No predecessors!
  br label %choice.exit21

choice.exit26:                                    ; preds = %ret.dead52, %choice.case45, %choice.case42, %choice.case39, %choice.case36, %choice.case33, %choice.case27
  %choice.res53 = phi i64 [ %var.load32, %choice.case27 ], [ 8, %choice.case33 ], [ 12, %choice.case36 ], [ 10, %choice.case39 ], [ 13, %choice.case42 ], [ 9, %choice.case45 ], [ 0, %ret.dead52 ]
  %b.b.ge0 = icmp sge i64 %choice.res53, 0
  %b.b.le255 = icmp sle i64 %choice.res53, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.case27:                                    ; preds = %choice.exit21
  %var.load32 = load i64, ptr %var.e, align 8
  br label %choice.exit26

choice.next28:                                    ; preds = %choice.exit21
  %val.match35 = icmp eq i64 %var.load25, 98
  br i1 %val.match35, label %choice.case33, label %choice.next34

choice.case33:                                    ; preds = %choice.next28
  br label %choice.exit26

choice.next34:                                    ; preds = %choice.next28
  %val.match38 = icmp eq i64 %var.load25, 102
  br i1 %val.match38, label %choice.case36, label %choice.next37

choice.case36:                                    ; preds = %choice.next34
  br label %choice.exit26

choice.next37:                                    ; preds = %choice.next34
  %val.match41 = icmp eq i64 %var.load25, 110
  br i1 %val.match41, label %choice.case39, label %choice.next40

choice.case39:                                    ; preds = %choice.next37
  br label %choice.exit26

choice.next40:                                    ; preds = %choice.next37
  %val.match44 = icmp eq i64 %var.load25, 114
  br i1 %val.match44, label %choice.case42, label %choice.next43

choice.case42:                                    ; preds = %choice.next40
  br label %choice.exit26

choice.next43:                                    ; preds = %choice.next40
  %val.match47 = icmp eq i64 %var.load25, 116
  br i1 %val.match47, label %choice.case45, label %choice.next46

choice.case45:                                    ; preds = %choice.next43
  br label %choice.exit26

choice.next46:                                    ; preds = %choice.next43
  %arena.cur48 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load49 = load i64, ptr %var.k, align 8
  %arena.cur50 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load49, ptr %rec.fld, align 8
  %rec.fld51 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld51, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead52:                                       ; No predecessors!
  br label %choice.exit26

b.byte_ok:                                        ; preds = %b.byte_err, %choice.exit26
  %b.byte.i8 = trunc i64 %choice.res53 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len54 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data56 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len54, %b.cap55
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit26
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap55, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len57

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len57
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data59 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len60 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data59, i64 %b.cur.len60
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len60, 1
  %b.nul = getelementptr i8, ptr %b.cur.data59, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %var.load61 = load ptr, ptr %var.sc, align 8
  %var.load62 = load ptr, ptr %var.b, align 8
  %var.load63 = load i64, ptr %var.k, align 8
  %addtmp64 = add i64 %var.load63, 2
  %call.res65 = call { i1, i64 } @"json::#scan_string"(ptr %var.load61, ptr %var.load62, i64 %addtmp64)
  ret { i1, i64 } %call.res65

b.new.buf.len57:                                  ; preds = %str_overflow_abort, %b.grow
  %arena.cur58 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data56, i64 %b.len54, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len54
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len57
}

define internal { i1, i64 } @"json::#parse_unicode"(ptr %0, ptr %1, i64 %2) #1 {
entry:
  %var.cp = alloca i64, align 8
  %var.d5 = alloca i64, align 8
  %var.d4 = alloca i64, align 8
  %var.d3 = alloca i64, align 8
  %var.d2 = alloca i64, align 8
  %var.ok = alloca i1, align 1
  %var.h5 = alloca i1, align 1
  %var.h4 = alloca i1, align 1
  %var.h3 = alloca i1, align 1
  %var.h2 = alloca i1, align 1
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.b, align 8
  store i64 %2, ptr %var.k, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load1, 2
  %call.res = call i1 @"json::#is_hex_at"(ptr %var.load, i64 %addtmp)
  store i1 %call.res, ptr %var.h2, align 1
  %var.load2 = load ptr, ptr %var.sc, align 8
  %var.load3 = load i64, ptr %var.k, align 8
  %addtmp4 = add i64 %var.load3, 3
  %call.res5 = call i1 @"json::#is_hex_at"(ptr %var.load2, i64 %addtmp4)
  store i1 %call.res5, ptr %var.h3, align 1
  %var.load6 = load ptr, ptr %var.sc, align 8
  %var.load7 = load i64, ptr %var.k, align 8
  %addtmp8 = add i64 %var.load7, 4
  %call.res9 = call i1 @"json::#is_hex_at"(ptr %var.load6, i64 %addtmp8)
  store i1 %call.res9, ptr %var.h4, align 1
  %var.load10 = load ptr, ptr %var.sc, align 8
  %var.load11 = load i64, ptr %var.k, align 8
  %addtmp12 = add i64 %var.load11, 5
  %call.res13 = call i1 @"json::#is_hex_at"(ptr %var.load10, i64 %addtmp12)
  store i1 %call.res13, ptr %var.h5, align 1
  %var.load14 = load i1, ptr %var.h2, align 1
  br i1 %var.load14, label %and.79.then, label %and.79.else

and.79.then:                                      ; preds = %entry
  %var.load15 = load i1, ptr %var.h3, align 1
  br label %and.79.exit

and.79.else:                                      ; preds = %entry
  br label %and.79.exit

and.79.exit:                                      ; preds = %and.79.else, %and.79.then
  %and.79.phi = phi i1 [ %var.load15, %and.79.then ], [ %var.load14, %and.79.else ]
  br i1 %and.79.phi, label %and.80.then, label %and.80.else

and.80.then:                                      ; preds = %and.79.exit
  %var.load16 = load i1, ptr %var.h4, align 1
  br label %and.80.exit

and.80.else:                                      ; preds = %and.79.exit
  br label %and.80.exit

and.80.exit:                                      ; preds = %and.80.else, %and.80.then
  %and.80.phi = phi i1 [ %var.load16, %and.80.then ], [ %and.79.phi, %and.80.else ]
  br i1 %and.80.phi, label %and.81.then, label %and.81.else

and.81.then:                                      ; preds = %and.80.exit
  %var.load17 = load i1, ptr %var.h5, align 1
  br label %and.81.exit

and.81.else:                                      ; preds = %and.80.exit
  br label %and.81.exit

and.81.exit:                                      ; preds = %and.81.else, %and.81.then
  %and.81.phi = phi i1 [ %var.load17, %and.81.then ], [ %and.80.phi, %and.81.else ]
  store i1 %and.81.phi, ptr %var.ok, align 1
  %var.load18 = load i1, ptr %var.ok, align 1
  br i1 %var.load18, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.81.exit
  %var.load19 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load19, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %str.tag = lshr i64 %s.read.len20, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %and.81.exit
  %arena.cur118 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load119 = load i64, ptr %var.k, align 8
  %arena.cur120 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load119, ptr %rec.fld, align 8
  %rec.fld121 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld121, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %idx_ok97
  %choice.res = phi { i1, i64 } [ %call.res117, %idx_ok97 ], [ %ram.pay, %choice.else ]
  ret { i1, i64 } %choice.res

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load i64, ptr %var.k, align 8
  %addtmp24 = add i64 %var.load23, 2
  %idx.neg = icmp slt i64 %addtmp24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %addtmp24, %s.read.len21
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data22, i64 %addtmp24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res25 = call i64 @"json::#hexval"(i64 %s.byte.val)
  store i64 %call.res25, ptr %var.d2, align 8
  %var.load26 = load ptr, ptr %var.sc, align 8
  %fld.gep27 = getelementptr inbounds { ptr, i64 }, ptr %var.load26, i32 0, i32 0
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %s.read.len29 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 0
  %s.read.len30 = load i64, ptr %s.read.len29, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %str.tag32 = lshr i64 %s.read.len30, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check34:                                  ; preds = %idx_ok
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %idx_ok
  %s.read.data39 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data39, align 8
  %var.load41 = load i64, ptr %var.k, align 8
  %addtmp42 = add i64 %var.load41, 3
  %idx.neg43 = icmp slt i64 %addtmp42, 0
  br i1 %idx.neg43, label %idx_oob46, label %idx_big_check44

str_stale36:                                      ; preds = %str_gen_check34
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

idx_big_check44:                                  ; preds = %str_ok35
  %idx.big47 = icmp sge i64 %addtmp42, %s.read.len31
  br i1 %idx.big47, label %idx_oob46, label %idx_ok45

idx_ok45:                                         ; preds = %idx_oob46, %idx_big_check44
  %s.byte.gep48 = getelementptr i8, ptr %s.read.data40, i64 %addtmp42
  %s.byte49 = load i8, ptr %s.byte.gep48, align 1
  %s.byte.val50 = zext i8 %s.byte49 to i64
  %call.res51 = call i64 @"json::#hexval"(i64 %s.byte.val50)
  store i64 %call.res51, ptr %var.d3, align 8
  %var.load52 = load ptr, ptr %var.sc, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i64 }, ptr %var.load52, i32 0, i32 0
  %fld.load54 = load ptr, ptr %fld.gep53, align 8
  %s.read.len55 = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 0
  %s.read.len56 = load i64, ptr %s.read.len55, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %str.tag58 = lshr i64 %s.read.len56, 48
  %str.immortal59 = icmp eq i64 %str.tag58, 0
  br i1 %str.immortal59, label %str_ok61, label %str_gen_check60

idx_oob46:                                        ; preds = %idx_big_check44, %str_ok35
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok45

str_gen_check60:                                  ; preds = %idx_ok45
  %arena.cur63 = call ptr @dva_arena_current()
  %tag.valid64 = call i1 @dva_arena_validate_tag(ptr %arena.cur63, i64 %str.tag58)
  br i1 %tag.valid64, label %str_ok61, label %str_stale62

str_ok61:                                         ; preds = %str_stale62, %str_gen_check60, %idx_ok45
  %s.read.data65 = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 1
  %s.read.data66 = load ptr, ptr %s.read.data65, align 8
  %var.load67 = load i64, ptr %var.k, align 8
  %addtmp68 = add i64 %var.load67, 4
  %idx.neg69 = icmp slt i64 %addtmp68, 0
  br i1 %idx.neg69, label %idx_oob72, label %idx_big_check70

str_stale62:                                      ; preds = %str_gen_check60
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok61

idx_big_check70:                                  ; preds = %str_ok61
  %idx.big73 = icmp sge i64 %addtmp68, %s.read.len57
  br i1 %idx.big73, label %idx_oob72, label %idx_ok71

idx_ok71:                                         ; preds = %idx_oob72, %idx_big_check70
  %s.byte.gep74 = getelementptr i8, ptr %s.read.data66, i64 %addtmp68
  %s.byte75 = load i8, ptr %s.byte.gep74, align 1
  %s.byte.val76 = zext i8 %s.byte75 to i64
  %call.res77 = call i64 @"json::#hexval"(i64 %s.byte.val76)
  store i64 %call.res77, ptr %var.d4, align 8
  %var.load78 = load ptr, ptr %var.sc, align 8
  %fld.gep79 = getelementptr inbounds { ptr, i64 }, ptr %var.load78, i32 0, i32 0
  %fld.load80 = load ptr, ptr %fld.gep79, align 8
  %s.read.len81 = getelementptr inbounds { i64, ptr }, ptr %fld.load80, i32 0, i32 0
  %s.read.len82 = load i64, ptr %s.read.len81, align 8
  %s.read.len83 = and i64 %s.read.len82, 281474976710655
  %str.tag84 = lshr i64 %s.read.len82, 48
  %str.immortal85 = icmp eq i64 %str.tag84, 0
  br i1 %str.immortal85, label %str_ok87, label %str_gen_check86

idx_oob72:                                        ; preds = %idx_big_check70, %str_ok61
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok71

str_gen_check86:                                  ; preds = %idx_ok71
  %arena.cur89 = call ptr @dva_arena_current()
  %tag.valid90 = call i1 @dva_arena_validate_tag(ptr %arena.cur89, i64 %str.tag84)
  br i1 %tag.valid90, label %str_ok87, label %str_stale88

str_ok87:                                         ; preds = %str_stale88, %str_gen_check86, %idx_ok71
  %s.read.data91 = getelementptr inbounds { i64, ptr }, ptr %fld.load80, i32 0, i32 1
  %s.read.data92 = load ptr, ptr %s.read.data91, align 8
  %var.load93 = load i64, ptr %var.k, align 8
  %addtmp94 = add i64 %var.load93, 5
  %idx.neg95 = icmp slt i64 %addtmp94, 0
  br i1 %idx.neg95, label %idx_oob98, label %idx_big_check96

str_stale88:                                      ; preds = %str_gen_check86
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok87

idx_big_check96:                                  ; preds = %str_ok87
  %idx.big99 = icmp sge i64 %addtmp94, %s.read.len83
  br i1 %idx.big99, label %idx_oob98, label %idx_ok97

idx_ok97:                                         ; preds = %idx_oob98, %idx_big_check96
  %s.byte.gep100 = getelementptr i8, ptr %s.read.data92, i64 %addtmp94
  %s.byte101 = load i8, ptr %s.byte.gep100, align 1
  %s.byte.val102 = zext i8 %s.byte101 to i64
  %call.res103 = call i64 @"json::#hexval"(i64 %s.byte.val102)
  store i64 %call.res103, ptr %var.d5, align 8
  %var.load104 = load i64, ptr %var.d2, align 8
  %multmp = mul i64 %var.load104, 4096
  %var.load105 = load i64, ptr %var.d3, align 8
  %multmp106 = mul i64 %var.load105, 256
  %addtmp107 = add i64 %multmp, %multmp106
  %var.load108 = load i64, ptr %var.d4, align 8
  %multmp109 = mul i64 %var.load108, 16
  %addtmp110 = add i64 %addtmp107, %multmp109
  %var.load111 = load i64, ptr %var.d5, align 8
  %addtmp112 = add i64 %addtmp110, %var.load111
  store i64 %addtmp112, ptr %var.cp, align 8
  %var.load113 = load ptr, ptr %var.sc, align 8
  %var.load114 = load ptr, ptr %var.b, align 8
  %var.load115 = load i64, ptr %var.k, align 8
  %var.load116 = load i64, ptr %var.cp, align 8
  %call.res117 = call { i1, i64 } @"json::#parse_unicode_cp"(ptr %var.load113, ptr %var.load114, i64 %var.load115, i64 %var.load116)
  br label %choice.exit

idx_oob98:                                        ; preds = %idx_big_check96, %str_ok87
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok97
}

define internal { i1, i64 } @"json::#parse_unicode_cp"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.cp = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.b, align 8
  store i64 %2, ptr %var.k, align 8
  store i64 %3, ptr %var.cp, align 8
  %var.load = load i64, ptr %var.cp, align 8
  %cmptmp = icmp sge i64 %var.load, 55296
  br i1 %cmptmp, label %and.82.then, label %and.82.else

choice.exit:                                      ; preds = %choice.next7, %choice.case6, %choice.case
  %choice.res = phi { i1, i64 } [ %call.res, %choice.case ], [ %ram.pay, %choice.case6 ], [ %call.res18, %choice.next7 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %and.82.exit
  %var.load2 = load ptr, ptr %var.sc, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %var.load4 = load i64, ptr %var.k, align 8
  %var.load5 = load i64, ptr %var.cp, align 8
  %call.res = call { i1, i64 } @"json::#parse_surrogate_pair"(ptr %var.load2, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  br label %choice.exit

choice.next:                                      ; preds = %and.82.exit
  %cmptmp8 = icmp sge i64 %var.load, 56320
  br i1 %cmptmp8, label %and.90.then, label %and.90.else

and.82.then:                                      ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 56319
  br label %and.82.exit

and.82.else:                                      ; preds = %entry
  br label %and.82.exit

and.82.exit:                                      ; preds = %and.82.else, %and.82.then
  %and.82.phi = phi i1 [ %cmptmp1, %and.82.then ], [ %cmptmp, %and.82.else ]
  br i1 %and.82.phi, label %choice.case, label %choice.next

choice.case6:                                     ; preds = %and.90.exit
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load10 = load i64, ptr %var.k, align 8
  %arena.cur11 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load10, ptr %rec.fld, align 8
  %rec.fld12 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld12, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit

choice.next7:                                     ; preds = %and.90.exit
  %var.load13 = load ptr, ptr %var.b, align 8
  %var.load14 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load14 to i32
  call void @"utf::append_rune"(ptr %var.load13, i32 %coerce.trunc)
  %var.load15 = load ptr, ptr %var.sc, align 8
  %var.load16 = load ptr, ptr %var.b, align 8
  %var.load17 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load17, 6
  %call.res18 = call { i1, i64 } @"json::#scan_string"(ptr %var.load15, ptr %var.load16, i64 %addtmp)
  br label %choice.exit

and.90.then:                                      ; preds = %choice.next
  %cmptmp9 = icmp sle i64 %var.load, 57343
  br label %and.90.exit

and.90.else:                                      ; preds = %choice.next
  br label %and.90.exit

and.90.exit:                                      ; preds = %and.90.else, %and.90.then
  %and.90.phi = phi i1 [ %cmptmp9, %and.90.then ], [ %cmptmp8, %and.90.else ]
  br i1 %and.90.phi, label %choice.case6, label %choice.next7
}

define internal { i1, i64 } @"json::#parse_surrogate_pair"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var.full_cp = alloca i64, align 8
  %var.locp = alloca i64, align 8
  %var.l5 = alloca i64, align 8
  %var.l4 = alloca i64, align 8
  %var.l3 = alloca i64, align 8
  %var.l2 = alloca i64, align 8
  %var.has_second = alloca i1, align 1
  %var.cp = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.b, align 8
  store i64 %2, ptr %var.k, align 8
  store i64 %3, ptr %var.cp, align 8
  %var.load = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load, 11
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.83.then, label %and.83.else

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.83.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

and.83.else:                                      ; preds = %str_ok
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %idx_ok
  %and.83.phi = phi i1 [ %cmptmp19, %idx_ok ], [ %cmptmp, %and.83.else ]
  br i1 %and.83.phi, label %and.84.then, label %and.84.else

str_gen_check11:                                  ; preds = %and.83.then
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %and.83.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.k, align 8
  %addtmp18 = add i64 %var.load17, 6
  %idx.neg = icmp slt i64 %addtmp18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %addtmp18, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %addtmp18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp eq i64 %s.byte.val, 92
  br label %and.83.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

and.84.then:                                      ; preds = %and.83.exit
  %var.load20 = load ptr, ptr %var.sc, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i64 }, ptr %var.load20, i32 0, i32 0
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %s.read.len23 = getelementptr inbounds { i64, ptr }, ptr %fld.load22, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len23, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %str.tag26 = lshr i64 %s.read.len24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

and.84.else:                                      ; preds = %and.83.exit
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %idx_ok39
  %and.84.phi = phi i1 [ %cmptmp45, %idx_ok39 ], [ %and.83.phi, %and.84.else ]
  br i1 %and.84.phi, label %and.85.then, label %and.85.else

str_gen_check28:                                  ; preds = %and.84.then
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %and.84.then
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %fld.load22, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  %var.load35 = load i64, ptr %var.k, align 8
  %addtmp36 = add i64 %var.load35, 7
  %idx.neg37 = icmp slt i64 %addtmp36, 0
  br i1 %idx.neg37, label %idx_oob40, label %idx_big_check38

str_stale30:                                      ; preds = %str_gen_check28
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29

idx_big_check38:                                  ; preds = %str_ok29
  %idx.big41 = icmp sge i64 %addtmp36, %s.read.len25
  br i1 %idx.big41, label %idx_oob40, label %idx_ok39

idx_ok39:                                         ; preds = %idx_oob40, %idx_big_check38
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data34, i64 %addtmp36
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %cmptmp45 = icmp eq i64 %s.byte.val44, 117
  br label %and.84.exit

idx_oob40:                                        ; preds = %idx_big_check38, %str_ok29
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok39

and.85.then:                                      ; preds = %and.84.exit
  %var.load46 = load ptr, ptr %var.sc, align 8
  %var.load47 = load i64, ptr %var.k, align 8
  %addtmp48 = add i64 %var.load47, 8
  %call.res = call i1 @"json::#is_hex_at"(ptr %var.load46, i64 %addtmp48)
  br label %and.85.exit

and.85.else:                                      ; preds = %and.84.exit
  br label %and.85.exit

and.85.exit:                                      ; preds = %and.85.else, %and.85.then
  %and.85.phi = phi i1 [ %call.res, %and.85.then ], [ %and.84.phi, %and.85.else ]
  br i1 %and.85.phi, label %and.86.then, label %and.86.else

and.86.then:                                      ; preds = %and.85.exit
  %var.load49 = load ptr, ptr %var.sc, align 8
  %var.load50 = load i64, ptr %var.k, align 8
  %addtmp51 = add i64 %var.load50, 9
  %call.res52 = call i1 @"json::#is_hex_at"(ptr %var.load49, i64 %addtmp51)
  br label %and.86.exit

and.86.else:                                      ; preds = %and.85.exit
  br label %and.86.exit

and.86.exit:                                      ; preds = %and.86.else, %and.86.then
  %and.86.phi = phi i1 [ %call.res52, %and.86.then ], [ %and.85.phi, %and.86.else ]
  br i1 %and.86.phi, label %and.87.then, label %and.87.else

and.87.then:                                      ; preds = %and.86.exit
  %var.load53 = load ptr, ptr %var.sc, align 8
  %var.load54 = load i64, ptr %var.k, align 8
  %addtmp55 = add i64 %var.load54, 10
  %call.res56 = call i1 @"json::#is_hex_at"(ptr %var.load53, i64 %addtmp55)
  br label %and.87.exit

and.87.else:                                      ; preds = %and.86.exit
  br label %and.87.exit

and.87.exit:                                      ; preds = %and.87.else, %and.87.then
  %and.87.phi = phi i1 [ %call.res56, %and.87.then ], [ %and.86.phi, %and.87.else ]
  br i1 %and.87.phi, label %and.88.then, label %and.88.else

and.88.then:                                      ; preds = %and.87.exit
  %var.load57 = load ptr, ptr %var.sc, align 8
  %var.load58 = load i64, ptr %var.k, align 8
  %addtmp59 = add i64 %var.load58, 11
  %call.res60 = call i1 @"json::#is_hex_at"(ptr %var.load57, i64 %addtmp59)
  br label %and.88.exit

and.88.else:                                      ; preds = %and.87.exit
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %and.88.then
  %and.88.phi = phi i1 [ %call.res60, %and.88.then ], [ %and.87.phi, %and.88.else ]
  store i1 %and.88.phi, ptr %var.has_second, align 1
  %var.load61 = load i1, ptr %var.has_second, align 1
  br i1 %var.load61, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.88.exit
  %var.load62 = load ptr, ptr %var.sc, align 8
  %fld.gep63 = getelementptr inbounds { ptr, i64 }, ptr %var.load62, i32 0, i32 0
  %fld.load64 = load ptr, ptr %fld.gep63, align 8
  %s.read.len65 = getelementptr inbounds { i64, ptr }, ptr %fld.load64, i32 0, i32 0
  %s.read.len66 = load i64, ptr %s.read.len65, align 8
  %s.read.len67 = and i64 %s.read.len66, 281474976710655
  %str.tag68 = lshr i64 %s.read.len66, 48
  %str.immortal69 = icmp eq i64 %str.tag68, 0
  br i1 %str.immortal69, label %str_ok71, label %str_gen_check70

choice.else:                                      ; preds = %and.88.exit
  %arena.cur196 = call ptr @dva_arena_current()
  %err.alloc197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 56)
  %err.code.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 0
  store i64 400, ptr %err.code.gep198, align 8
  %err.msg.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep199, align 8
  %err.file.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep200, align 8
  %err.line.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 3
  store i64 0, ptr %err.line.gep201, align 8
  %err.col.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 4
  store i64 0, ptr %err.col.gep202, align 8
  %err.ctx.gep203 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc197, i32 0, i32 5
  %var.load204 = load i64, ptr %var.k, align 8
  %arena.cur205 = call ptr @dva_arena_current()
  %rec.alloc206 = call ptr @dva_arena_alloc(ptr %arena.cur205, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld207 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc206, i32 0, i32 0
  store i64 %var.load204, ptr %rec.fld207, align 8
  %rec.fld208 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc206, i32 0, i32 1
  store i64 0, ptr %rec.fld208, align 8
  %ctx.0.gep209 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc206, i32 0, i32 0
  %ctx.0210 = load i64, ptr %ctx.0.gep209, align 8
  %ctx.1.gep211 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc206, i32 0, i32 1
  %ctx.1212 = load i64, ptr %ctx.1.gep211, align 8
  %err.ctx0.gep213 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep203, i32 0, i32 0
  store i64 %ctx.0210, ptr %err.ctx0.gep213, align 8
  %err.ctx1.gep214 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep203, i32 0, i32 1
  store i64 %ctx.1212, ptr %err.ctx1.gep214, align 8
  %p.to.i64215 = ptrtoint ptr %err.alloc197 to i64
  %ram.pay216 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64215, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit176
  %choice.res217 = phi { i1, i64 } [ %choice.res, %choice.exit176 ], [ %ram.pay216, %choice.else ]
  ret { i1, i64 } %choice.res217

str_gen_check70:                                  ; preds = %choice.then
  %arena.cur73 = call ptr @dva_arena_current()
  %tag.valid74 = call i1 @dva_arena_validate_tag(ptr %arena.cur73, i64 %str.tag68)
  br i1 %tag.valid74, label %str_ok71, label %str_stale72

str_ok71:                                         ; preds = %str_stale72, %str_gen_check70, %choice.then
  %s.read.data75 = getelementptr inbounds { i64, ptr }, ptr %fld.load64, i32 0, i32 1
  %s.read.data76 = load ptr, ptr %s.read.data75, align 8
  %var.load77 = load i64, ptr %var.k, align 8
  %addtmp78 = add i64 %var.load77, 8
  %idx.neg79 = icmp slt i64 %addtmp78, 0
  br i1 %idx.neg79, label %idx_oob82, label %idx_big_check80

str_stale72:                                      ; preds = %str_gen_check70
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok71

idx_big_check80:                                  ; preds = %str_ok71
  %idx.big83 = icmp sge i64 %addtmp78, %s.read.len67
  br i1 %idx.big83, label %idx_oob82, label %idx_ok81

idx_ok81:                                         ; preds = %idx_oob82, %idx_big_check80
  %s.byte.gep84 = getelementptr i8, ptr %s.read.data76, i64 %addtmp78
  %s.byte85 = load i8, ptr %s.byte.gep84, align 1
  %s.byte.val86 = zext i8 %s.byte85 to i64
  %call.res87 = call i64 @"json::#hexval"(i64 %s.byte.val86)
  store i64 %call.res87, ptr %var.l2, align 8
  %var.load88 = load ptr, ptr %var.sc, align 8
  %fld.gep89 = getelementptr inbounds { ptr, i64 }, ptr %var.load88, i32 0, i32 0
  %fld.load90 = load ptr, ptr %fld.gep89, align 8
  %s.read.len91 = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 0
  %s.read.len92 = load i64, ptr %s.read.len91, align 8
  %s.read.len93 = and i64 %s.read.len92, 281474976710655
  %str.tag94 = lshr i64 %s.read.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

idx_oob82:                                        ; preds = %idx_big_check80, %str_ok71
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok81

str_gen_check96:                                  ; preds = %idx_ok81
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag94)
  br i1 %tag.valid100, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %idx_ok81
  %s.read.data101 = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 1
  %s.read.data102 = load ptr, ptr %s.read.data101, align 8
  %var.load103 = load i64, ptr %var.k, align 8
  %addtmp104 = add i64 %var.load103, 9
  %idx.neg105 = icmp slt i64 %addtmp104, 0
  br i1 %idx.neg105, label %idx_oob108, label %idx_big_check106

str_stale98:                                      ; preds = %str_gen_check96
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

idx_big_check106:                                 ; preds = %str_ok97
  %idx.big109 = icmp sge i64 %addtmp104, %s.read.len93
  br i1 %idx.big109, label %idx_oob108, label %idx_ok107

idx_ok107:                                        ; preds = %idx_oob108, %idx_big_check106
  %s.byte.gep110 = getelementptr i8, ptr %s.read.data102, i64 %addtmp104
  %s.byte111 = load i8, ptr %s.byte.gep110, align 1
  %s.byte.val112 = zext i8 %s.byte111 to i64
  %call.res113 = call i64 @"json::#hexval"(i64 %s.byte.val112)
  store i64 %call.res113, ptr %var.l3, align 8
  %var.load114 = load ptr, ptr %var.sc, align 8
  %fld.gep115 = getelementptr inbounds { ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %fld.load116 = load ptr, ptr %fld.gep115, align 8
  %s.read.len117 = getelementptr inbounds { i64, ptr }, ptr %fld.load116, i32 0, i32 0
  %s.read.len118 = load i64, ptr %s.read.len117, align 8
  %s.read.len119 = and i64 %s.read.len118, 281474976710655
  %str.tag120 = lshr i64 %s.read.len118, 48
  %str.immortal121 = icmp eq i64 %str.tag120, 0
  br i1 %str.immortal121, label %str_ok123, label %str_gen_check122

idx_oob108:                                       ; preds = %idx_big_check106, %str_ok97
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok107

str_gen_check122:                                 ; preds = %idx_ok107
  %arena.cur125 = call ptr @dva_arena_current()
  %tag.valid126 = call i1 @dva_arena_validate_tag(ptr %arena.cur125, i64 %str.tag120)
  br i1 %tag.valid126, label %str_ok123, label %str_stale124

str_ok123:                                        ; preds = %str_stale124, %str_gen_check122, %idx_ok107
  %s.read.data127 = getelementptr inbounds { i64, ptr }, ptr %fld.load116, i32 0, i32 1
  %s.read.data128 = load ptr, ptr %s.read.data127, align 8
  %var.load129 = load i64, ptr %var.k, align 8
  %addtmp130 = add i64 %var.load129, 10
  %idx.neg131 = icmp slt i64 %addtmp130, 0
  br i1 %idx.neg131, label %idx_oob134, label %idx_big_check132

str_stale124:                                     ; preds = %str_gen_check122
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok123

idx_big_check132:                                 ; preds = %str_ok123
  %idx.big135 = icmp sge i64 %addtmp130, %s.read.len119
  br i1 %idx.big135, label %idx_oob134, label %idx_ok133

idx_ok133:                                        ; preds = %idx_oob134, %idx_big_check132
  %s.byte.gep136 = getelementptr i8, ptr %s.read.data128, i64 %addtmp130
  %s.byte137 = load i8, ptr %s.byte.gep136, align 1
  %s.byte.val138 = zext i8 %s.byte137 to i64
  %call.res139 = call i64 @"json::#hexval"(i64 %s.byte.val138)
  store i64 %call.res139, ptr %var.l4, align 8
  %var.load140 = load ptr, ptr %var.sc, align 8
  %fld.gep141 = getelementptr inbounds { ptr, i64 }, ptr %var.load140, i32 0, i32 0
  %fld.load142 = load ptr, ptr %fld.gep141, align 8
  %s.read.len143 = getelementptr inbounds { i64, ptr }, ptr %fld.load142, i32 0, i32 0
  %s.read.len144 = load i64, ptr %s.read.len143, align 8
  %s.read.len145 = and i64 %s.read.len144, 281474976710655
  %str.tag146 = lshr i64 %s.read.len144, 48
  %str.immortal147 = icmp eq i64 %str.tag146, 0
  br i1 %str.immortal147, label %str_ok149, label %str_gen_check148

idx_oob134:                                       ; preds = %idx_big_check132, %str_ok123
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok133

str_gen_check148:                                 ; preds = %idx_ok133
  %arena.cur151 = call ptr @dva_arena_current()
  %tag.valid152 = call i1 @dva_arena_validate_tag(ptr %arena.cur151, i64 %str.tag146)
  br i1 %tag.valid152, label %str_ok149, label %str_stale150

str_ok149:                                        ; preds = %str_stale150, %str_gen_check148, %idx_ok133
  %s.read.data153 = getelementptr inbounds { i64, ptr }, ptr %fld.load142, i32 0, i32 1
  %s.read.data154 = load ptr, ptr %s.read.data153, align 8
  %var.load155 = load i64, ptr %var.k, align 8
  %addtmp156 = add i64 %var.load155, 11
  %idx.neg157 = icmp slt i64 %addtmp156, 0
  br i1 %idx.neg157, label %idx_oob160, label %idx_big_check158

str_stale150:                                     ; preds = %str_gen_check148
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok149

idx_big_check158:                                 ; preds = %str_ok149
  %idx.big161 = icmp sge i64 %addtmp156, %s.read.len145
  br i1 %idx.big161, label %idx_oob160, label %idx_ok159

idx_ok159:                                        ; preds = %idx_oob160, %idx_big_check158
  %s.byte.gep162 = getelementptr i8, ptr %s.read.data154, i64 %addtmp156
  %s.byte163 = load i8, ptr %s.byte.gep162, align 1
  %s.byte.val164 = zext i8 %s.byte163 to i64
  %call.res165 = call i64 @"json::#hexval"(i64 %s.byte.val164)
  store i64 %call.res165, ptr %var.l5, align 8
  %var.load166 = load i64, ptr %var.l2, align 8
  %multmp = mul i64 %var.load166, 4096
  %var.load167 = load i64, ptr %var.l3, align 8
  %multmp168 = mul i64 %var.load167, 256
  %addtmp169 = add i64 %multmp, %multmp168
  %var.load170 = load i64, ptr %var.l4, align 8
  %multmp171 = mul i64 %var.load170, 16
  %addtmp172 = add i64 %addtmp169, %multmp171
  %var.load173 = load i64, ptr %var.l5, align 8
  %addtmp174 = add i64 %addtmp172, %var.load173
  store i64 %addtmp174, ptr %var.locp, align 8
  %var.load175 = load i64, ptr %var.locp, align 8
  %cmptmp177 = icmp sge i64 %var.load175, 56320
  br i1 %cmptmp177, label %and.89.then, label %and.89.else

idx_oob160:                                       ; preds = %idx_big_check158, %str_ok149
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok159

choice.exit176:                                   ; preds = %choice.next, %choice.case
  %choice.res = phi { i1, i64 } [ %call.res191, %choice.case ], [ %ram.pay, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %and.89.exit
  %var.load179 = load i64, ptr %var.cp, align 8
  %subtmp = sub i64 %var.load179, 55296
  %multmp180 = mul i64 %subtmp, 1024
  %addtmp181 = add i64 65536, %multmp180
  %var.load182 = load i64, ptr %var.locp, align 8
  %subtmp183 = sub i64 %var.load182, 56320
  %addtmp184 = add i64 %addtmp181, %subtmp183
  store i64 %addtmp184, ptr %var.full_cp, align 8
  %var.load185 = load ptr, ptr %var.b, align 8
  %var.load186 = load i64, ptr %var.full_cp, align 8
  %coerce.trunc = trunc i64 %var.load186 to i32
  call void @"utf::append_rune"(ptr %var.load185, i32 %coerce.trunc)
  %var.load187 = load ptr, ptr %var.sc, align 8
  %var.load188 = load ptr, ptr %var.b, align 8
  %var.load189 = load i64, ptr %var.k, align 8
  %addtmp190 = add i64 %var.load189, 12
  %call.res191 = call { i1, i64 } @"json::#scan_string"(ptr %var.load187, ptr %var.load188, i64 %addtmp190)
  br label %choice.exit176

choice.next:                                      ; preds = %and.89.exit
  %arena.cur192 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load193 = load i64, ptr %var.k, align 8
  %arena.cur194 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur194, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load193, ptr %rec.fld, align 8
  %rec.fld195 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld195, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit176

and.89.then:                                      ; preds = %idx_ok159
  %cmptmp178 = icmp sle i64 %var.load175, 57343
  br label %and.89.exit

and.89.else:                                      ; preds = %idx_ok159
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %and.89.then
  %and.89.phi = phi i1 [ %cmptmp178, %and.89.then ], [ %cmptmp177, %and.89.else ]
  br i1 %and.89.phi, label %choice.case, label %choice.next
}

declare void @"utf::append_rune"(ptr, i32) #1

define internal i1 @"json::#is_digit_at"(ptr %0, i64 %1) #1 {
entry:
  %var.p = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store i64 %1, ptr %var.p, align 8
  %var.load = load i64, ptr %var.p, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.91.then, label %and.91.else

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.91.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %str.tag9 = lshr i64 %s.read.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

and.91.else:                                      ; preds = %str_ok
  br label %and.91.exit

and.91.exit:                                      ; preds = %and.91.else, %idx_ok
  %and.91.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.91.else ]
  ret i1 %and.91.phi

str_gen_check11:                                  ; preds = %and.91.then
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %and.91.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

idx_big_check:                                    ; preds = %str_ok12
  %idx.big = icmp sge i64 %var.load17, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_digit"(i64 %s.byte.val)
  br label %and.91.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok12
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok
}

declare i1 @"str::is_digit"(i64) #1

define internal { i1, i64 } @"json::#parse_string"(ptr %0) #1 {
entry:
  %var.err = alloca ptr, align 8
  %var._24 = alloca ptr, align 8
  %var.end = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.r = alloca { i1, i64 }, align 8
  %var.b = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 1
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep2, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len3

b.buf.len3:                                       ; preds = %str_overflow_abort, %entry
  %arena.cur4 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load5 = load ptr, ptr %var.sc, align 8
  %var.load6 = load ptr, ptr %var.b, align 8
  %var.load7 = load ptr, ptr %var.sc, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64 }, ptr %var.load7, i32 0, i32 1
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %call.res = call { i1, i64 } @"json::#scan_string"(ptr %var.load5, ptr %var.load6, i64 %fld.load9)
  store { i1, i64 } %call.res, ptr %var.r, align 8
  %var.load10 = load { i1, i64 }, ptr %var.r, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load10, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len3

choice.then:                                      ; preds = %b.buf.len3
  %ram.pay = extractvalue { i1, i64 } %var.load10, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load11 = load ptr, ptr %var.sc, align 8
  %var.load12 = load i64, ptr %var.end, align 8
  %addtmp13 = add i64 %var.load12, 1
  %fld.gep14 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 1
  store i64 %addtmp13, ptr %fld.gep14, align 8
  %arena.cur15 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load16 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %b.freeze.len17 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load16, i32 0, i32 1
  %b.freeze.data18 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else:                                      ; preds = %b.buf.len3
  %ram.pay23 = extractvalue { i1, i64 } %var.load10, 1
  %pay.ptr = inttoptr i64 %ram.pay23 to ptr
  store ptr %pay.ptr, ptr %var._24, align 8
  store ptr %pay.ptr, ptr %var.err, align 8
  %var.load25 = load ptr, ptr %var.err, align 8
  %p.to.i6426 = ptrtoint ptr %var.load25 to i64
  %ram.pay27 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6426, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %b.freeze.done
  %choice.res = phi { i1, i64 } [ %ram.pay22, %b.freeze.done ], [ %ram.pay27, %choice.else ]
  ret { i1, i64 } %choice.res

b.freeze.check:                                   ; preds = %choice.then
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data18, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data18, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data18, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len17, 1
  %arena.cur19 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data18, i64 %b.freeze.len17, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len17
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then
  %b.freeze.data20 = phi ptr [ %b.freeze.data18, %choice.then ], [ %b.freeze.data18, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur21 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len17, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data20, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load16, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load16, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load16, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay22 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define internal { i1, i64 } @"json::#parse_array"(ptr %0) #1 {
entry:
  %var.elems64 = alloca ptr, align 8
  %var.elems = alloca ptr, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 1
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep2, align 8
  %var.load3 = load ptr, ptr %var.sc, align 8
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load3, i64 %fld.load6)
  store i64 %call.res, ptr %var.p, align 8
  %var.load7 = load ptr, ptr %var.sc, align 8
  %var.load8 = load i64, ptr %var.p, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load7, i32 0, i32 1
  store i64 %var.load8, ptr %fld.gep9, align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %str.len.query14 = load i64, ptr %str.len.query, align 8
  %str.len.query15 = and i64 %str.len.query14, 281474976710655
  %str.tag = lshr i64 %str.len.query14, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load30 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load30, 93
  br i1 %val.match, label %choice.case32, label %choice.next33

choice.case:                                      ; preds = %str_ok
  %var.load16 = load ptr, ptr %var.sc, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check23:                                  ; preds = %choice.case
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %var.load29 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load29, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale25:                                      ; preds = %str_gen_check23
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check:                                    ; preds = %str_ok24
  %idx.big = icmp sge i64 %var.load29, %s.read.len20
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok24
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit31:                                    ; preds = %a.after70, %a.view.off54
  %choice.res80 = phi { i1, i64 } [ %ram.pay, %a.view.off54 ], [ %call.res79, %a.after70 ]
  ret { i1, i64 } %choice.res80

choice.case32:                                    ; preds = %choice.exit
  %var.load34 = load ptr, ptr %var.sc, align 8
  %var.load35 = load ptr, ptr %var.sc, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64 }, ptr %var.load35, i32 0, i32 1
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %addtmp38 = add i64 %fld.load37, 1
  %fld.gep39 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 1
  store i64 %addtmp38, ptr %fld.gep39, align 8
  %arena.cur40 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 24)
  %arena.cur41 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.elems, align 8
  %arena.cur42 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load43 = load ptr, ptr %var.elems, align 8
  %a.load = load ptr, ptr %var.elems, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next33:                                    ; preds = %choice.exit
  %arena.cur57 = call ptr @dva_arena_current()
  %a.new58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 24)
  %arena.cur59 = call ptr @dva_arena_current()
  %a.buf60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 128)
  %a.len.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new58, i32 0, i32 0
  store i64 0, ptr %a.len.gep61, align 8
  %a.data.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new58, i32 0, i32 1
  store ptr %a.buf60, ptr %a.data.gep62, align 8
  %a.cap.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new58, i32 0, i32 2
  store i64 16, ptr %a.cap.gep63, align 8
  store ptr %a.new58, ptr %var.elems64, align 8
  %var.load65 = load ptr, ptr %var.sc, align 8
  %var.load66 = load ptr, ptr %var.elems64, align 8
  %a.load67 = load ptr, ptr %var.elems64, align 8
  %a.null68 = icmp eq ptr %a.load67, null
  br i1 %a.null68, label %a.create69, label %a.after70

a.create:                                         ; preds = %choice.case32
  %arena.cur44 = call ptr @dva_arena_current()
  %a.create45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 24)
  %arena.cur46 = call ptr @dva_arena_current()
  %a.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 128)
  %a.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 0
  store i64 0, ptr %a.len.gep48, align 8
  %a.data.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 1
  store ptr %a.buf47, ptr %a.data.gep49, align 8
  %a.cap.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 2
  store i64 16, ptr %a.cap.gep50, align 8
  store ptr %a.create45, ptr %var.elems, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case32
  %a.load2 = load ptr, ptr %var.elems, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.view.len51 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len51, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len51
  %final.start = select i1 %start.gt.len, i64 %a.view.len51, i64 %c.start.0
  %rel.end = add i64 %a.view.len51, 0
  %norm.end = select i1 false, i64 %rel.end, i64 0
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len51
  %final.end = select i1 %end.gt.len, i64 %a.view.len51, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.view.data52 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off53, 0
  %ovf = extractvalue { i64, i1 } %a.view.off53, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off54

a.view.off54:                                     ; preds = %str_overflow_abort, %a.after
  %a.view.data55 = getelementptr i8, ptr %a.view.data52, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur56 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data55, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit31

str_overflow_abort:                               ; preds = %a.after
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.view.off54

a.create69:                                       ; preds = %choice.next33
  %arena.cur71 = call ptr @dva_arena_current()
  %a.create72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %arena.cur73 = call ptr @dva_arena_current()
  %a.buf74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 128)
  %a.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 0
  store i64 0, ptr %a.len.gep75, align 8
  %a.data.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 1
  store ptr %a.buf74, ptr %a.data.gep76, align 8
  %a.cap.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 2
  store i64 16, ptr %a.cap.gep77, align 8
  store ptr %a.create72, ptr %var.elems64, align 8
  br label %a.after70

a.after70:                                        ; preds = %a.create69, %choice.next33
  %a.load278 = load ptr, ptr %var.elems64, align 8
  %call.res79 = call { i1, i64 } @"json::#parse_array_loop"(ptr %var.load65, ptr %a.load278)
  br label %choice.exit31
}

define internal { i1, i64 } @"json::#parse_array_loop"(ptr %0, ptr %1) #1 {
entry:
  %var.v = alloca { i1, i64 }, align 8
  %var.elems = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.elems, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %call.res = call { i1, i64 } @"json::#parse_value"(ptr %var.load)
  store { i1, i64 } %call.res, ptr %var.v, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %var.load2 = load ptr, ptr %var.elems, align 8
  %a.load = load ptr, ptr %var.elems, align 8
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
  store ptr %a.create3, ptr %var.elems, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.elems, align 8
  %var.load5 = load { i1, i64 }, ptr %var.v, align 8
  %call.res6 = call { i1, i64 } @"json::#parse_array_after_value"(ptr %var.load1, ptr %a.load2, { i1, i64 } %var.load5)
  ret { i1, i64 } %call.res6
}

define internal { i1, i64 } @"json::#parse_value"(ptr %0) #1 {
entry:
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load, i64 %fld.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load ptr, ptr %var.sc, align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 1
  store i64 %var.load3, ptr %fld.gep4, align 8
  %var.load5 = load i64, ptr %var.p, align 8
  %var.load6 = load ptr, ptr %var.sc, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag = lshr i64 %str.len.query9, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load25 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load25, 34
  br i1 %val.match, label %choice.case27, label %choice.next28

choice.case:                                      ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %str.tag16 = lshr i64 %s.read.len14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check18:                                  ; preds = %choice.case
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale20:                                      ; preds = %str_gen_check18
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

idx_big_check:                                    ; preds = %str_ok19
  %idx.big = icmp sge i64 %var.load24, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data23, i64 %var.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok19
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit26:                                    ; preds = %choice.next52, %choice.case51, %choice.case46, %choice.case41, %choice.case36, %choice.case31, %choice.case27
  %choice.res58 = phi { i1, i64 } [ %call.res30, %choice.case27 ], [ %call.res35, %choice.case31 ], [ %call.res40, %choice.case36 ], [ %call.res45, %choice.case41 ], [ %call.res50, %choice.case46 ], [ %call.res55, %choice.case51 ], [ %call.res57, %choice.next52 ]
  ret { i1, i64 } %choice.res58

choice.case27:                                    ; preds = %choice.exit
  %var.load29 = load ptr, ptr %var.sc, align 8
  %call.res30 = call { i1, i64 } @"json::#parse_string"(ptr %var.load29)
  br label %choice.exit26

choice.next28:                                    ; preds = %choice.exit
  %val.match33 = icmp eq i64 %var.load25, 123
  br i1 %val.match33, label %choice.case31, label %choice.next32

choice.case31:                                    ; preds = %choice.next28
  %var.load34 = load ptr, ptr %var.sc, align 8
  %call.res35 = call { i1, i64 } @"json::#parse_object"(ptr %var.load34)
  br label %choice.exit26

choice.next32:                                    ; preds = %choice.next28
  %val.match38 = icmp eq i64 %var.load25, 91
  br i1 %val.match38, label %choice.case36, label %choice.next37

choice.case36:                                    ; preds = %choice.next32
  %var.load39 = load ptr, ptr %var.sc, align 8
  %call.res40 = call { i1, i64 } @"json::#parse_array"(ptr %var.load39)
  br label %choice.exit26

choice.next37:                                    ; preds = %choice.next32
  %val.match43 = icmp eq i64 %var.load25, 116
  br i1 %val.match43, label %choice.case41, label %choice.next42

choice.case41:                                    ; preds = %choice.next37
  %var.load44 = load ptr, ptr %var.sc, align 8
  %call.res45 = call { i1, i64 } @"json::#parse_lit"(ptr %var.load44, i1 true, i64 4)
  br label %choice.exit26

choice.next42:                                    ; preds = %choice.next37
  %val.match48 = icmp eq i64 %var.load25, 102
  br i1 %val.match48, label %choice.case46, label %choice.next47

choice.case46:                                    ; preds = %choice.next42
  %var.load49 = load ptr, ptr %var.sc, align 8
  %call.res50 = call { i1, i64 } @"json::#parse_lit"(ptr %var.load49, i1 false, i64 5)
  br label %choice.exit26

choice.next47:                                    ; preds = %choice.next42
  %val.match53 = icmp eq i64 %var.load25, 110
  br i1 %val.match53, label %choice.case51, label %choice.next52

choice.case51:                                    ; preds = %choice.next47
  %var.load54 = load ptr, ptr %var.sc, align 8
  %call.res55 = call { i1, i64 } @"json::#parse_null"(ptr %var.load54)
  br label %choice.exit26

choice.next52:                                    ; preds = %choice.next47
  %var.load56 = load ptr, ptr %var.sc, align 8
  %call.res57 = call { i1, i64 } @"json::#parse_number"(ptr %var.load56)
  br label %choice.exit26
}

define internal { i1, i64 } @"json::#parse_object"(ptr %0) #1 {
entry:
  %var.entries64 = alloca ptr, align 8
  %var.entries = alloca ptr, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 1
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep2, align 8
  %var.load3 = load ptr, ptr %var.sc, align 8
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load3, i64 %fld.load6)
  store i64 %call.res, ptr %var.p, align 8
  %var.load7 = load ptr, ptr %var.sc, align 8
  %var.load8 = load i64, ptr %var.p, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load7, i32 0, i32 1
  store i64 %var.load8, ptr %fld.gep9, align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %str.len.query14 = load i64, ptr %str.len.query, align 8
  %str.len.query15 = and i64 %str.len.query14, 281474976710655
  %str.tag = lshr i64 %str.len.query14, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load30 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load30, 125
  br i1 %val.match, label %choice.case32, label %choice.next33

choice.case:                                      ; preds = %str_ok
  %var.load16 = load ptr, ptr %var.sc, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %str.tag21 = lshr i64 %s.read.len19, 48
  %str.immortal22 = icmp eq i64 %str.tag21, 0
  br i1 %str.immortal22, label %str_ok24, label %str_gen_check23

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check23:                                  ; preds = %choice.case
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag21)
  br i1 %tag.valid27, label %str_ok24, label %str_stale25

str_ok24:                                         ; preds = %str_stale25, %str_gen_check23, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %var.load29 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load29, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale25:                                      ; preds = %str_gen_check23
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok24

idx_big_check:                                    ; preds = %str_ok24
  %idx.big = icmp sge i64 %var.load29, %s.read.len20
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok24
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit31:                                    ; preds = %a.after70, %a.view.off54
  %choice.res80 = phi { i1, i64 } [ %ram.pay, %a.view.off54 ], [ %call.res79, %a.after70 ]
  ret { i1, i64 } %choice.res80

choice.case32:                                    ; preds = %choice.exit
  %var.load34 = load ptr, ptr %var.sc, align 8
  %var.load35 = load ptr, ptr %var.sc, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64 }, ptr %var.load35, i32 0, i32 1
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %addtmp38 = add i64 %fld.load37, 1
  %fld.gep39 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 1
  store i64 %addtmp38, ptr %fld.gep39, align 8
  %arena.cur40 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 24)
  %arena.cur41 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.entries, align 8
  %arena.cur42 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load43 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next33:                                    ; preds = %choice.exit
  %arena.cur57 = call ptr @dva_arena_current()
  %a.new58 = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 24)
  %arena.cur59 = call ptr @dva_arena_current()
  %a.buf60 = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 128)
  %a.len.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new58, i32 0, i32 0
  store i64 0, ptr %a.len.gep61, align 8
  %a.data.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new58, i32 0, i32 1
  store ptr %a.buf60, ptr %a.data.gep62, align 8
  %a.cap.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new58, i32 0, i32 2
  store i64 16, ptr %a.cap.gep63, align 8
  store ptr %a.new58, ptr %var.entries64, align 8
  %var.load65 = load ptr, ptr %var.sc, align 8
  %var.load66 = load ptr, ptr %var.entries64, align 8
  %a.load67 = load ptr, ptr %var.entries64, align 8
  %a.null68 = icmp eq ptr %a.load67, null
  br i1 %a.null68, label %a.create69, label %a.after70

a.create:                                         ; preds = %choice.case32
  %arena.cur44 = call ptr @dva_arena_current()
  %a.create45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 24)
  %arena.cur46 = call ptr @dva_arena_current()
  %a.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 128)
  %a.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 0
  store i64 0, ptr %a.len.gep48, align 8
  %a.data.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 1
  store ptr %a.buf47, ptr %a.data.gep49, align 8
  %a.cap.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 2
  store i64 16, ptr %a.cap.gep50, align 8
  store ptr %a.create45, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case32
  %a.load2 = load ptr, ptr %var.entries, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.view.len51 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len51, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len51
  %final.start = select i1 %start.gt.len, i64 %a.view.len51, i64 %c.start.0
  %rel.end = add i64 %a.view.len51, 0
  %norm.end = select i1 false, i64 %rel.end, i64 0
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len51
  %final.end = select i1 %end.gt.len, i64 %a.view.len51, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.view.data52 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off53, 0
  %ovf = extractvalue { i64, i1 } %a.view.off53, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off54

a.view.off54:                                     ; preds = %str_overflow_abort, %a.after
  %a.view.data55 = getelementptr i8, ptr %a.view.data52, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur56 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data55, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit31

str_overflow_abort:                               ; preds = %a.after
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.view.off54

a.create69:                                       ; preds = %choice.next33
  %arena.cur71 = call ptr @dva_arena_current()
  %a.create72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %arena.cur73 = call ptr @dva_arena_current()
  %a.buf74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 128)
  %a.len.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 0
  store i64 0, ptr %a.len.gep75, align 8
  %a.data.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 1
  store ptr %a.buf74, ptr %a.data.gep76, align 8
  %a.cap.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create72, i32 0, i32 2
  store i64 16, ptr %a.cap.gep77, align 8
  store ptr %a.create72, ptr %var.entries64, align 8
  br label %a.after70

a.after70:                                        ; preds = %a.create69, %choice.next33
  %a.load278 = load ptr, ptr %var.entries64, align 8
  %call.res79 = call { i1, i64 } @"json::#parse_object_loop"(ptr %var.load65, ptr %a.load278)
  br label %choice.exit31
}

define internal { i1, i64 } @"json::#parse_object_loop"(ptr %0, ptr %1) #1 {
entry:
  %var.k = alloca { i1, i64 }, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.entries = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.entries, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load, i64 %fld.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load ptr, ptr %var.sc, align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 1
  store i64 %var.load3, ptr %fld.gep4, align 8
  %var.load5 = load i64, ptr %var.p, align 8
  %var.load6 = load ptr, ptr %var.sc, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag = lshr i64 %str.len.query9, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load25 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load25, 34
  br i1 %val.match, label %choice.case27, label %choice.next28

choice.case:                                      ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %str.tag16 = lshr i64 %s.read.len14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check18:                                  ; preds = %choice.case
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale20:                                      ; preds = %str_gen_check18
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

idx_big_check:                                    ; preds = %str_ok19
  %idx.big = icmp sge i64 %var.load24, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data23, i64 %var.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok19
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit26:                                    ; preds = %choice.next28, %a.after
  %choice.res42 = phi { i1, i64 } [ %call.res37, %a.after ], [ %ram.pay, %choice.next28 ]
  ret { i1, i64 } %choice.res42

choice.case27:                                    ; preds = %choice.exit
  %var.load29 = load ptr, ptr %var.sc, align 8
  %call.res30 = call { i1, i64 } @"json::#parse_string"(ptr %var.load29)
  store { i1, i64 } %call.res30, ptr %var.k, align 8
  %var.load31 = load ptr, ptr %var.sc, align 8
  %var.load32 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next28:                                    ; preds = %choice.exit
  %arena.cur38 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.15.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load39 = load i64, ptr %var.p, align 8
  %arena.cur40 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load39, ptr %rec.fld, align 8
  %rec.fld41 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld41, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit26

a.create:                                         ; preds = %choice.case27
  %arena.cur33 = call ptr @dva_arena_current()
  %a.create34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 24)
  %arena.cur35 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create34, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case27
  %a.load2 = load ptr, ptr %var.entries, align 8
  %var.load36 = load { i1, i64 }, ptr %var.k, align 8
  %call.res37 = call { i1, i64 } @"json::#parse_object_after_key"(ptr %var.load31, ptr %a.load2, { i1, i64 } %var.load36)
  br label %choice.exit26
}

define internal { i1, i64 } @"json::#parse_object_after_key"(ptr %0, ptr %1, { i1, i64 } %2) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._77 = alloca ptr, align 8
  %var.v = alloca { i1, i64 }, align 8
  %var.ok_col = alloca i1, align 1
  %var.p = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var._3 = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.k = alloca { i1, i64 }, align 8
  %var.entries = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.entries, align 8
  store { i1, i64 } %2, ptr %var.k, align 8
  %var.load = load { i1, i64 }, ptr %var.k, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.key, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  %ram.pay75 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr76 = inttoptr i64 %ram.pay75 to ptr
  store ptr %pay.ptr76, ptr %var._77, align 8
  store ptr %pay.ptr76, ptr %var.e, align 8
  %var.load78 = load ptr, ptr %var.e, align 8
  %p.to.i6479 = ptrtoint ptr %var.load78 to i64
  %ram.pay80 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6479, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit2
  %choice.res81 = phi { i1, i64 } [ %choice.res74, %choice.exit2 ], [ %ram.pay80, %choice.else ]
  ret { i1, i64 } %choice.res81

choice.exit2:                                     ; preds = %choice.next, %choice.exit33
  %choice.res74 = phi { i1, i64 } [ %choice.res, %choice.exit33 ], [ %ram.pay73, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._3, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load4 = load ptr, ptr %var.sc, align 8
  %var.load5 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load5, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load4, i64 %fld.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load6 = load ptr, ptr %var.sc, align 8
  %var.load7 = load i64, ptr %var.p, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 1
  store i64 %var.load7, ptr %fld.gep8, align 8
  %var.load9 = load i64, ptr %var.p, align 8
  %var.load10 = load ptr, ptr %var.sc, align 8
  %fld.gep11 = getelementptr inbounds { ptr, i64 }, ptr %var.load10, i32 0, i32 0
  %fld.load12 = load ptr, ptr %fld.gep11, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load12, i32 0, i32 0
  %str.len.query13 = load i64, ptr %str.len.query, align 8
  %str.len.query14 = and i64 %str.len.query13, 281474976710655
  %str.tag = lshr i64 %str.len.query13, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.next:                                      ; preds = %choice.then
  %arena.cur54 = call ptr @dva_arena_current()
  %err.alloc55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 56)
  %err.code.gep56 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 0
  store i64 400, ptr %err.code.gep56, align 8
  %err.msg.gep57 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 1
  store ptr @str.14.struct, ptr %err.msg.gep57, align 8
  %err.file.gep58 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep58, align 8
  %err.line.gep59 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 3
  store i64 0, ptr %err.line.gep59, align 8
  %err.col.gep60 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 4
  store i64 0, ptr %err.col.gep60, align 8
  %err.ctx.gep61 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc55, i32 0, i32 5
  %arena.cur62 = call ptr @dva_arena_current()
  %rec.alloc63 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld64 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc63, i32 0, i32 0
  store i64 0, ptr %rec.fld64, align 8
  %rec.fld65 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc63, i32 0, i32 1
  store i64 0, ptr %rec.fld65, align 8
  %ctx.0.gep66 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc63, i32 0, i32 0
  %ctx.067 = load i64, ptr %ctx.0.gep66, align 8
  %ctx.1.gep68 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc63, i32 0, i32 1
  %ctx.169 = load i64, ptr %ctx.1.gep68, align 8
  %err.ctx0.gep70 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep61, i32 0, i32 0
  store i64 %ctx.067, ptr %err.ctx0.gep70, align 8
  %err.ctx1.gep71 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep61, i32 0, i32 1
  store i64 %ctx.169, ptr %err.ctx1.gep71, align 8
  %p.to.i6472 = ptrtoint ptr %err.alloc55 to i64
  %ram.pay73 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6472, 1
  br label %choice.exit2

str_gen_check:                                    ; preds = %choice.case
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.case
  %cmptmp = icmp slt i64 %var.load9, %str.len.query14
  br i1 %cmptmp, label %and.92.then, label %and.92.else

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.92.then:                                      ; preds = %str_ok
  %var.load15 = load ptr, ptr %var.sc, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64 }, ptr %var.load15, i32 0, i32 0
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %str.tag20 = lshr i64 %s.read.len18, 48
  %str.immortal21 = icmp eq i64 %str.tag20, 0
  br i1 %str.immortal21, label %str_ok23, label %str_gen_check22

and.92.else:                                      ; preds = %str_ok
  br label %and.92.exit

and.92.exit:                                      ; preds = %and.92.else, %idx_ok
  %and.92.phi = phi i1 [ %cmptmp29, %idx_ok ], [ %cmptmp, %and.92.else ]
  store i1 %and.92.phi, ptr %var.ok_col, align 1
  %var.load30 = load i1, ptr %var.ok_col, align 1
  br i1 %var.load30, label %choice.then31, label %choice.else32

str_gen_check22:                                  ; preds = %and.92.then
  %arena.cur25 = call ptr @dva_arena_current()
  %tag.valid26 = call i1 @dva_arena_validate_tag(ptr %arena.cur25, i64 %str.tag20)
  br i1 %tag.valid26, label %str_ok23, label %str_stale24

str_ok23:                                         ; preds = %str_stale24, %str_gen_check22, %and.92.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 1
  %s.read.data27 = load ptr, ptr %s.read.data, align 8
  %var.load28 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load28, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale24:                                      ; preds = %str_gen_check22
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok23

idx_big_check:                                    ; preds = %str_ok23
  %idx.big = icmp sge i64 %var.load28, %s.read.len19
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data27, i64 %var.load28
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp29 = icmp eq i64 %s.byte.val, 58
  br label %and.92.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok23
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.then31:                                    ; preds = %and.92.exit
  %var.load34 = load ptr, ptr %var.sc, align 8
  %var.load35 = load ptr, ptr %var.sc, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64 }, ptr %var.load35, i32 0, i32 1
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %addtmp = add i64 %fld.load37, 1
  %fld.gep38 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep38, align 8
  %var.load39 = load ptr, ptr %var.sc, align 8
  %call.res40 = call { i1, i64 } @"json::#parse_value"(ptr %var.load39)
  store { i1, i64 } %call.res40, ptr %var.v, align 8
  %var.load41 = load ptr, ptr %var.sc, align 8
  %var.load42 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else32:                                    ; preds = %and.92.exit
  %arena.cur49 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.13.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load50 = load i64, ptr %var.p, align 8
  %arena.cur51 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load50, ptr %rec.fld, align 8
  %rec.fld52 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld52, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay53 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit33

choice.exit33:                                    ; preds = %choice.else32, %a.after
  %choice.res = phi { i1, i64 } [ %call.res48, %a.after ], [ %ram.pay53, %choice.else32 ]
  br label %choice.exit2

a.create:                                         ; preds = %choice.then31
  %arena.cur43 = call ptr @dva_arena_current()
  %a.create44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 24)
  %arena.cur45 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create44, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then31
  %a.load2 = load ptr, ptr %var.entries, align 8
  %var.load46 = load ptr, ptr %var.s, align 8
  %var.load47 = load { i1, i64 }, ptr %var.v, align 8
  %call.res48 = call { i1, i64 } @"json::#parse_object_after_val"(ptr %var.load41, ptr %a.load2, ptr %var.load46, { i1, i64 } %var.load47)
  br label %choice.exit33
}

define internal { i1, i64 } @"json::#parse_object_after_val"(ptr %0, ptr %1, ptr %2, { i1, i64 } %3) #1 {
entry:
  %var.e2 = alloca ptr, align 8
  %var._193 = alloca ptr, align 8
  %var.c2 = alloca i64, align 8
  %var.p2 = alloca i64, align 8
  %var.m = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.val = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.v = alloca { i1, i64 }, align 8
  %var.s = alloca ptr, align 8
  %var.entries = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.entries, align 8
  store ptr %2, ptr %var.s, align 8
  store { i1, i64 } %3, ptr %var.v, align 8
  %var.load = load { i1, i64 }, ptr %var.v, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %var.load2 = load ptr, ptr %var.val, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld3, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %entry
  %ram.pay191 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr192 = inttoptr i64 %ram.pay191 to ptr
  store ptr %pay.ptr192, ptr %var._193, align 8
  store ptr %pay.ptr192, ptr %var.e2, align 8
  %var.load194 = load ptr, ptr %var.e2, align 8
  %p.to.i64195 = ptrtoint ptr %var.load194 to i64
  %ram.pay196 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64195, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit39
  %choice.res197 = phi { i1, i64 } [ %choice.res190, %choice.exit39 ], [ %ram.pay196, %choice.else ]
  ret { i1, i64 } %choice.res197

a.create:                                         ; preds = %choice.then
  %arena.cur4 = call ptr @dva_arena_current()
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create5, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.entries, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len7 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap8 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len7, %a.cap8
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data9 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len10 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data9, i64 %a.cur.len10
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len10, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load11 = load ptr, ptr %var.sc, align 8
  %var.load12 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load12, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load11, i64 %fld.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load13 = load ptr, ptr %var.sc, align 8
  %var.load14 = load i64, ptr %var.p, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64 }, ptr %var.load13, i32 0, i32 1
  store i64 %var.load14, ptr %fld.gep15, align 8
  %var.load16 = load i64, ptr %var.p, align 8
  %var.load18 = load ptr, ptr %var.sc, align 8
  %fld.gep19 = getelementptr inbounds { ptr, i64 }, ptr %var.load18, i32 0, i32 0
  %fld.load20 = load ptr, ptr %fld.gep19, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load20, i32 0, i32 0
  %str.len.query21 = load i64, ptr %str.len.query, align 8
  %str.len.query22 = and i64 %str.len.query21, 281474976710655
  %str.tag = lshr i64 %str.len.query21, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit17:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load38 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load38, 125
  br i1 %val.match, label %choice.case40, label %choice.next41

choice.case:                                      ; preds = %str_ok
  %var.load24 = load ptr, ptr %var.sc, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64 }, ptr %var.load24, i32 0, i32 0
  %fld.load26 = load ptr, ptr %fld.gep25, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %str.tag29 = lshr i64 %s.read.len27, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

choice.next:                                      ; preds = %str_ok
  br label %choice.exit17

str_gen_check:                                    ; preds = %a.store
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %a.store
  %cmptmp = icmp slt i64 %var.load16, %str.len.query22
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check31:                                  ; preds = %choice.case
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 1
  %s.read.data36 = load ptr, ptr %s.read.data, align 8
  %var.load37 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load37, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale33:                                      ; preds = %str_gen_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

idx_big_check:                                    ; preds = %str_ok32
  %idx.big = icmp sge i64 %var.load37, %s.read.len28
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data36, i64 %var.load37
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit17

idx_oob:                                          ; preds = %idx_big_check, %str_ok32
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit39:                                    ; preds = %choice.next84, %choice.exit141, %a.view.off79
  %choice.res190 = phi { i1, i64 } [ %ram.pay82, %a.view.off79 ], [ %choice.res168, %choice.exit141 ], [ %ram.pay189, %choice.next84 ]
  br label %choice.exit

choice.case40:                                    ; preds = %choice.exit17
  %var.load42 = load ptr, ptr %var.sc, align 8
  %var.load43 = load ptr, ptr %var.sc, align 8
  %fld.gep44 = getelementptr inbounds { ptr, i64 }, ptr %var.load43, i32 0, i32 1
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  %addtmp = add i64 %fld.load45, 1
  %fld.gep46 = getelementptr inbounds { ptr, i64 }, ptr %var.load42, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep46, align 8
  %var.load47 = load ptr, ptr %var.entries, align 8
  %a.load48 = load ptr, ptr %var.entries, align 8
  %a.null49 = icmp eq ptr %a.load48, null
  br i1 %a.null49, label %a.create50, label %a.after51

choice.next41:                                    ; preds = %choice.exit17
  %val.match85 = icmp eq i64 %var.load38, 44
  br i1 %val.match85, label %choice.case83, label %choice.next84

a.create50:                                       ; preds = %choice.case40
  %arena.cur52 = call ptr @dva_arena_current()
  %a.create53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %arena.cur54 = call ptr @dva_arena_current()
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  %a.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 0
  store i64 0, ptr %a.len.gep56, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  store ptr %a.create53, ptr %var.entries, align 8
  br label %a.after51

a.after51:                                        ; preds = %a.create50, %choice.case40
  %a.load259 = load ptr, ptr %var.entries, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 0
  %a.len.query60 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query60, ptr %var.m, align 8
  %arena.cur61 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load62 = load ptr, ptr %var.entries, align 8
  %a.load63 = load ptr, ptr %var.entries, align 8
  %a.null64 = icmp eq ptr %a.load63, null
  br i1 %a.null64, label %a.create65, label %a.after66

a.create65:                                       ; preds = %a.after51
  %arena.cur67 = call ptr @dva_arena_current()
  %a.create68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 24)
  %arena.cur69 = call ptr @dva_arena_current()
  %a.buf70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 128)
  %a.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 0
  store i64 0, ptr %a.len.gep71, align 8
  %a.data.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 1
  store ptr %a.buf70, ptr %a.data.gep72, align 8
  %a.cap.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 2
  store i64 16, ptr %a.cap.gep73, align 8
  store ptr %a.create68, ptr %var.entries, align 8
  br label %a.after66

a.after66:                                        ; preds = %a.create65, %a.after51
  %a.load274 = load ptr, ptr %var.entries, align 8
  %var.load75 = load i64, ptr %var.m, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load274, i32 0, i32 0
  %a.view.len76 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len76, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len76
  %final.start = select i1 %start.gt.len, i64 %a.view.len76, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load75, 0
  %rel.end = add i64 %a.view.len76, %var.load75
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load75
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len76
  %final.end = select i1 %end.gt.len, i64 %a.view.len76, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load274, i32 0, i32 1
  %a.view.data77 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off78 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off78, 0
  %ovf = extractvalue { i64, i1 } %a.view.off78, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off79

a.view.off79:                                     ; preds = %str_overflow_abort, %a.after66
  %a.view.data80 = getelementptr i8, ptr %a.view.data77, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur81 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data80, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay82 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit39

str_overflow_abort:                               ; preds = %a.after66
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.view.off79

choice.case83:                                    ; preds = %choice.next41
  %var.load86 = load ptr, ptr %var.sc, align 8
  %var.load87 = load ptr, ptr %var.sc, align 8
  %fld.gep88 = getelementptr inbounds { ptr, i64 }, ptr %var.load87, i32 0, i32 1
  %fld.load89 = load i64, ptr %fld.gep88, align 8
  %addtmp90 = add i64 %fld.load89, 1
  %fld.gep91 = getelementptr inbounds { ptr, i64 }, ptr %var.load86, i32 0, i32 1
  store i64 %addtmp90, ptr %fld.gep91, align 8
  %var.load92 = load ptr, ptr %var.sc, align 8
  %var.load93 = load ptr, ptr %var.sc, align 8
  %fld.gep94 = getelementptr inbounds { ptr, i64 }, ptr %var.load93, i32 0, i32 1
  %fld.load95 = load i64, ptr %fld.gep94, align 8
  %call.res96 = call i64 @"json::#skip_ws"(ptr %var.load92, i64 %fld.load95)
  store i64 %call.res96, ptr %var.p2, align 8
  %var.load97 = load i64, ptr %var.p2, align 8
  %var.load101 = load ptr, ptr %var.sc, align 8
  %fld.gep102 = getelementptr inbounds { ptr, i64 }, ptr %var.load101, i32 0, i32 0
  %fld.load103 = load ptr, ptr %fld.gep102, align 8
  %str.len.query104 = getelementptr inbounds { i64, ptr }, ptr %fld.load103, i32 0, i32 0
  %str.len.query105 = load i64, ptr %str.len.query104, align 8
  %str.len.query106 = and i64 %str.len.query105, 281474976710655
  %str.tag107 = lshr i64 %str.len.query105, 48
  %str.immortal108 = icmp eq i64 %str.tag107, 0
  br i1 %str.immortal108, label %str_ok110, label %str_gen_check109

choice.next84:                                    ; preds = %choice.next41
  %arena.cur169 = call ptr @dva_arena_current()
  %err.alloc170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 56)
  %err.code.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 0
  store i64 400, ptr %err.code.gep171, align 8
  %err.msg.gep172 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 1
  store ptr @str.12.struct, ptr %err.msg.gep172, align 8
  %err.file.gep173 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep173, align 8
  %err.line.gep174 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 3
  store i64 0, ptr %err.line.gep174, align 8
  %err.col.gep175 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 4
  store i64 0, ptr %err.col.gep175, align 8
  %err.ctx.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc170, i32 0, i32 5
  %var.load177 = load i64, ptr %var.p, align 8
  %arena.cur178 = call ptr @dva_arena_current()
  %rec.alloc179 = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld180 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc179, i32 0, i32 0
  store i64 %var.load177, ptr %rec.fld180, align 8
  %rec.fld181 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc179, i32 0, i32 1
  store i64 0, ptr %rec.fld181, align 8
  %ctx.0.gep182 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc179, i32 0, i32 0
  %ctx.0183 = load i64, ptr %ctx.0.gep182, align 8
  %ctx.1.gep184 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc179, i32 0, i32 1
  %ctx.1185 = load i64, ptr %ctx.1.gep184, align 8
  %err.ctx0.gep186 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep176, i32 0, i32 0
  store i64 %ctx.0183, ptr %err.ctx0.gep186, align 8
  %err.ctx1.gep187 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep176, i32 0, i32 1
  store i64 %ctx.1185, ptr %err.ctx1.gep187, align 8
  %p.to.i64188 = ptrtoint ptr %err.alloc170 to i64
  %ram.pay189 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64188, 1
  br label %choice.exit39

choice.exit98:                                    ; preds = %choice.next100, %idx_ok133
  %choice.res139 = phi i64 [ %s.byte.val138, %idx_ok133 ], [ -1, %choice.next100 ]
  store i64 %choice.res139, ptr %var.c2, align 8
  %var.load140 = load i64, ptr %var.c2, align 8
  %val.match144 = icmp eq i64 %var.load140, 125
  br i1 %val.match144, label %choice.case142, label %choice.next143

choice.case99:                                    ; preds = %str_ok110
  %var.load115 = load ptr, ptr %var.sc, align 8
  %fld.gep116 = getelementptr inbounds { ptr, i64 }, ptr %var.load115, i32 0, i32 0
  %fld.load117 = load ptr, ptr %fld.gep116, align 8
  %s.read.len118 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %s.read.len119 = load i64, ptr %s.read.len118, align 8
  %s.read.len120 = and i64 %s.read.len119, 281474976710655
  %str.tag121 = lshr i64 %s.read.len119, 48
  %str.immortal122 = icmp eq i64 %str.tag121, 0
  br i1 %str.immortal122, label %str_ok124, label %str_gen_check123

choice.next100:                                   ; preds = %str_ok110
  br label %choice.exit98

str_gen_check109:                                 ; preds = %choice.case83
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %str.tag107)
  br i1 %tag.valid113, label %str_ok110, label %str_stale111

str_ok110:                                        ; preds = %str_stale111, %str_gen_check109, %choice.case83
  %cmptmp114 = icmp slt i64 %var.load97, %str.len.query106
  br i1 %cmptmp114, label %choice.case99, label %choice.next100

str_stale111:                                     ; preds = %str_gen_check109
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok110

str_gen_check123:                                 ; preds = %choice.case99
  %arena.cur126 = call ptr @dva_arena_current()
  %tag.valid127 = call i1 @dva_arena_validate_tag(ptr %arena.cur126, i64 %str.tag121)
  br i1 %tag.valid127, label %str_ok124, label %str_stale125

str_ok124:                                        ; preds = %str_stale125, %str_gen_check123, %choice.case99
  %s.read.data128 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %s.read.data129 = load ptr, ptr %s.read.data128, align 8
  %var.load130 = load i64, ptr %var.p2, align 8
  %idx.neg131 = icmp slt i64 %var.load130, 0
  br i1 %idx.neg131, label %idx_oob134, label %idx_big_check132

str_stale125:                                     ; preds = %str_gen_check123
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok124

idx_big_check132:                                 ; preds = %str_ok124
  %idx.big135 = icmp sge i64 %var.load130, %s.read.len120
  br i1 %idx.big135, label %idx_oob134, label %idx_ok133

idx_ok133:                                        ; preds = %idx_oob134, %idx_big_check132
  %s.byte.gep136 = getelementptr i8, ptr %s.read.data129, i64 %var.load130
  %s.byte137 = load i8, ptr %s.byte.gep136, align 1
  %s.byte.val138 = zext i8 %s.byte137 to i64
  br label %choice.exit98

idx_oob134:                                       ; preds = %idx_big_check132, %str_ok124
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok133

choice.exit141:                                   ; preds = %a.after158, %choice.case142
  %choice.res168 = phi { i1, i64 } [ %ram.pay152, %choice.case142 ], [ %call.res167, %a.after158 ]
  br label %choice.exit39

choice.case142:                                   ; preds = %choice.exit98
  %arena.cur145 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.11.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load146 = load i64, ptr %var.p2, align 8
  %arena.cur147 = call ptr @dva_arena_current()
  %rec.alloc148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld149 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc148, i32 0, i32 0
  store i64 %var.load146, ptr %rec.fld149, align 8
  %rec.fld150 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc148, i32 0, i32 1
  store i64 0, ptr %rec.fld150, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc148, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc148, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64151 = ptrtoint ptr %err.alloc to i64
  %ram.pay152 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64151, 1
  br label %choice.exit141

choice.next143:                                   ; preds = %choice.exit98
  %var.load153 = load ptr, ptr %var.sc, align 8
  %var.load154 = load ptr, ptr %var.entries, align 8
  %a.load155 = load ptr, ptr %var.entries, align 8
  %a.null156 = icmp eq ptr %a.load155, null
  br i1 %a.null156, label %a.create157, label %a.after158

a.create157:                                      ; preds = %choice.next143
  %arena.cur159 = call ptr @dva_arena_current()
  %a.create160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 24)
  %arena.cur161 = call ptr @dva_arena_current()
  %a.buf162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 128)
  %a.len.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 0
  store i64 0, ptr %a.len.gep163, align 8
  %a.data.gep164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 1
  store ptr %a.buf162, ptr %a.data.gep164, align 8
  %a.cap.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create160, i32 0, i32 2
  store i64 16, ptr %a.cap.gep165, align 8
  store ptr %a.create160, ptr %var.entries, align 8
  br label %a.after158

a.after158:                                       ; preds = %a.create157, %choice.next143
  %a.load2166 = load ptr, ptr %var.entries, align 8
  %call.res167 = call { i1, i64 } @"json::#parse_object_loop"(ptr %var.load153, ptr %a.load2166)
  br label %choice.exit141
}

define internal void @dva_array_grow(ptr %0) #1 {
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

a.cap25:                                          ; preds = %arr_overflow_abort, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %arr_overflow_abort9, %a.cap25
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
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

define internal { i1, i64 } @"json::#parse_lit"(ptr %0, i1 %1, i64 %2) #1 {
entry:
  %var.ok = alloca i1, align 1
  %var.word = alloca ptr, align 8
  %var.p = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.tag = alloca i1, align 1
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store i1 %1, ptr %var.tag, align 1
  store i64 %2, ptr %var.len, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load, i64 %fld.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load ptr, ptr %var.sc, align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 1
  store i64 %var.load3, ptr %fld.gep4, align 8
  %var.load5 = load i1, ptr %var.tag, align 1
  br i1 %var.load5, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  store ptr %choice.res, ptr %var.word, align 8
  %var.load6 = load i64, ptr %var.p, align 8
  %var.load7 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load6, %var.load7
  %var.load8 = load ptr, ptr %var.sc, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag = lshr i64 %str.len.query11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %choice.exit
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.exit
  %cmptmp = icmp sle i64 %addtmp, %str.len.query12
  br i1 %cmptmp, label %and.93.then, label %and.93.else

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.93.then:                                      ; preds = %str_ok
  %var.load13 = load ptr, ptr %var.sc, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64 }, ptr %var.load13, i32 0, i32 0
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %str.tag18 = lshr i64 %s.read.len16, 48
  %str.immortal19 = icmp eq i64 %str.tag18, 0
  br i1 %str.immortal19, label %str_ok21, label %str_gen_check20

and.93.else:                                      ; preds = %str_ok
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %str.eq.merge
  %and.93.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.93.else ]
  store i1 %and.93.phi, ptr %var.ok, align 1
  %var.load52 = load i1, ptr %var.ok, align 1
  br i1 %var.load52, label %choice.then53, label %choice.else54

str_gen_check20:                                  ; preds = %and.93.then
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag18)
  br i1 %tag.valid24, label %str_ok21, label %str_stale22

str_ok21:                                         ; preds = %str_stale22, %str_gen_check20, %and.93.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load i64, ptr %var.p, align 8
  %var.load27 = load i64, ptr %var.p, align 8
  %var.load28 = load i64, ptr %var.len, align 8
  %addtmp29 = add i64 %var.load27, %var.load28
  %start.is_neg = icmp slt i64 %var.load26, 0
  %rel.start = add i64 %s.read.len17, %var.load26
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load26
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len17
  %final.start = select i1 %start.gt.len, i64 %s.read.len17, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp29, 0
  %rel.end = add i64 %s.read.len17, %addtmp29
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp29
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len17
  %final.end = select i1 %end.gt.len, i64 %s.read.len17, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data25, i64 %final.start
  %arena.cur30 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load31 = load ptr, ptr %var.word, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len32 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len33 = and i64 %eq.lhs.len32, 281474976710655
  %str.tag34 = lshr i64 %eq.lhs.len32, 48
  %str.immortal35 = icmp eq i64 %str.tag34, 0
  br i1 %str.immortal35, label %str_ok37, label %str_gen_check36

str_stale22:                                      ; preds = %str_gen_check20
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok21

str_gen_check36:                                  ; preds = %str_ok21
  %arena.cur39 = call ptr @dva_arena_current()
  %tag.valid40 = call i1 @dva_arena_validate_tag(ptr %arena.cur39, i64 %str.tag34)
  br i1 %tag.valid40, label %str_ok37, label %str_stale38

str_ok37:                                         ; preds = %str_stale38, %str_gen_check36, %str_ok21
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %eq.rhs.len41 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len42 = and i64 %eq.rhs.len41, 281474976710655
  %str.tag43 = lshr i64 %eq.rhs.len41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_stale38:                                      ; preds = %str_gen_check36
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok37

str_gen_check45:                                  ; preds = %str_ok37
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str_ok37
  %eq.len = icmp eq i64 %eq.lhs.len33, %eq.rhs.len42
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale47:                                      ; preds = %str_gen_check45
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

str.eq.then:                                      ; preds = %str_ok46
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data50 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %eq.rhs.data51 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data50, ptr %eq.rhs.data51, i64 %eq.lhs.len33)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok46
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.93.exit

choice.then53:                                    ; preds = %and.93.exit
  %var.load56 = load ptr, ptr %var.sc, align 8
  %var.load57 = load i64, ptr %var.p, align 8
  %var.load58 = load i64, ptr %var.len, align 8
  %addtmp59 = add i64 %var.load57, %var.load58
  %fld.gep60 = getelementptr inbounds { ptr, i64 }, ptr %var.load56, i32 0, i32 1
  store i64 %addtmp59, ptr %fld.gep60, align 8
  %arena.cur61 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load62 = load i1, ptr %var.tag, align 1
  %arena.cur63 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i1 %var.load62, ptr %enum.pay.alloc, align 1
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit55

choice.else54:                                    ; preds = %and.93.exit
  %arena.cur64 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.16.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load65 = load i64, ptr %var.p, align 8
  %arena.cur66 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load65, ptr %rec.fld, align 8
  %rec.fld67 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld67, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6468 = ptrtoint ptr %err.alloc to i64
  %ram.pay69 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6468, 1
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else54, %choice.then53
  %choice.res70 = phi { i1, i64 } [ %ram.pay, %choice.then53 ], [ %ram.pay69, %choice.else54 ]
  ret { i1, i64 } %choice.res70
}

declare i32 @memcmp(ptr, ptr, i64)

define internal { i1, i64 } @"json::#parse_null"(ptr %0) #1 {
entry:
  %var.ok = alloca i1, align 1
  %var.p = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load, i64 %fld.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load ptr, ptr %var.sc, align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 1
  store i64 %var.load3, ptr %fld.gep4, align 8
  %var.load5 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load5, 4
  %var.load6 = load ptr, ptr %var.sc, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag = lshr i64 %str.len.query9, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp sle i64 %addtmp, %str.len.query10
  br i1 %cmptmp, label %and.94.then, label %and.94.else

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

and.94.then:                                      ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %str.tag16 = lshr i64 %s.read.len14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

and.94.else:                                      ; preds = %str_ok
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %str.eq.merge
  %and.94.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.94.else ]
  store i1 %and.94.phi, ptr %var.ok, align 1
  %var.load46 = load i1, ptr %var.ok, align 1
  br i1 %var.load46, label %choice.then, label %choice.else

str_gen_check18:                                  ; preds = %and.94.then
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %and.94.then
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load i64, ptr %var.p, align 8
  %var.load25 = load i64, ptr %var.p, align 8
  %addtmp26 = add i64 %var.load25, 4
  %start.is_neg = icmp slt i64 %var.load24, 0
  %rel.start = add i64 %s.read.len15, %var.load24
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load24
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len15
  %final.start = select i1 %start.gt.len, i64 %s.read.len15, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp26, 0
  %rel.end = add i64 %s.read.len15, %addtmp26
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp26
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len15
  %final.end = select i1 %end.gt.len, i64 %s.read.len15, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data23, i64 %final.start
  %arena.cur27 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %eq.lhs.len28 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len29 = and i64 %eq.lhs.len28, 281474976710655
  %str.tag30 = lshr i64 %eq.lhs.len28, 48
  %str.immortal31 = icmp eq i64 %str.tag30, 0
  br i1 %str.immortal31, label %str_ok33, label %str_gen_check32

str_stale20:                                      ; preds = %str_gen_check18
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

str_gen_check32:                                  ; preds = %str_ok19
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag30)
  br i1 %tag.valid36, label %str_ok33, label %str_stale34

str_ok33:                                         ; preds = %str_stale34, %str_gen_check32, %str_ok19
  %eq.rhs.len = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len37 = and i64 %eq.rhs.len, 281474976710655
  %str.tag38 = lshr i64 %eq.rhs.len, 48
  %str.immortal39 = icmp eq i64 %str.tag38, 0
  br i1 %str.immortal39, label %str_ok41, label %str_gen_check40

str_stale34:                                      ; preds = %str_gen_check32
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok33

str_gen_check40:                                  ; preds = %str_ok33
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid44 = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag38)
  br i1 %tag.valid44, label %str_ok41, label %str_stale42

str_ok41:                                         ; preds = %str_stale42, %str_gen_check40, %str_ok33
  %eq.len = icmp eq i64 %eq.lhs.len29, %eq.rhs.len37
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale42:                                      ; preds = %str_gen_check40
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok41

str.eq.then:                                      ; preds = %str_ok41
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  %eq.lhs.data45 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data45, ptr %eq.rhs.data, i64 %eq.lhs.len29)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok41
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.94.exit

choice.then:                                      ; preds = %and.94.exit
  %var.load47 = load ptr, ptr %var.sc, align 8
  %var.load48 = load i64, ptr %var.p, align 8
  %addtmp49 = add i64 %var.load48, 4
  %fld.gep50 = getelementptr inbounds { ptr, i64 }, ptr %var.load47, i32 0, i32 1
  store i64 %addtmp49, ptr %fld.gep50, align 8
  %arena.cur51 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %and.94.exit
  %arena.cur52 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load53 = load i64, ptr %var.p, align 8
  %arena.cur54 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load53, ptr %rec.fld, align 8
  %rec.fld55 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld55, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6456 = ptrtoint ptr %err.alloc to i64
  %ram.pay57 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6456, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %ram.pay57, %choice.else ]
  ret { i1, i64 } %choice.res
}

define internal { i1, i64 } @"json::#parse_number"(ptr %0) #1 {
entry:
  %var.f = alloca double, align 8
  %var.valid = alloca i1, align 1
  %var._535 = alloca i64, align 8
  %var._i534 = alloca i64, align 8
  %loop.step.109 = alloca i64, align 8
  %loop.idx.109 = alloca i64, align 8
  %var.abs_e = alloca i64, align 8
  %var.eclamp = alloca i64, align 8
  %var.exp_val = alloca i64, align 8
  %var.ed = alloca i64, align 8
  %var.ec = alloca i64, align 8
  %var._421 = alloca i64, align 8
  %var._i420 = alloca i64, align 8
  %loop.step.107 = alloca i64, align 8
  %loop.idx.107 = alloca i64, align 8
  %"var.had_exp_digits'" = alloca i1, align 1
  %"var.over_exp'" = alloca i1, align 1
  %"var.ev'" = alloca i64, align 8
  %var.plus = alloca i1, align 1
  %var.e0 = alloca i64, align 8
  %"var.eneg'" = alloca i1, align 1
  %"var.p3'" = alloca i64, align 8
  %"var.had_exp'" = alloca i1, align 1
  %var.has_exp = alloca i1, align 1
  %var.d283 = alloca i64, align 8
  %var.c270 = alloca i64, align 8
  %var._228 = alloca i64, align 8
  %var._i227 = alloca i64, align 8
  %loop.step.103 = alloca i64, align 8
  %loop.idx.103 = alloca i64, align 8
  %"var.had_frac'" = alloca i1, align 1
  %var.has_dot = alloca i1, align 1
  %var.d = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.99 = alloca i64, align 8
  %loop.idx.99 = alloca i64, align 8
  %"var.exp10'" = alloca i64, align 8
  %"var.fv'" = alloca double, align 8
  %"var.sig_digits'" = alloca i64, align 8
  %"var.had_int'" = alloca i1, align 1
  %"var.p2'" = alloca i64, align 8
  %var.has_leading_zero = alloca i1, align 1
  %"var.neg'" = alloca i1, align 1
  %var.is_num_start = alloca i1, align 1
  %var.c0 = alloca i64, align 8
  %"var.p'" = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load, i64 %fld.load)
  store i64 %call.res, ptr %"var.p'", align 8
  %var.load2 = load ptr, ptr %var.sc, align 8
  %var.load3 = load i64, ptr %"var.p'", align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 1
  store i64 %var.load3, ptr %fld.gep4, align 8
  %var.load5 = load i64, ptr %"var.p'", align 8
  %var.load6 = load ptr, ptr %var.sc, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag = lshr i64 %str.len.query9, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c0, align 8
  %var.load25 = load i64, ptr %var.c0, align 8
  %cmptmp29 = icmp sge i64 %var.load25, 48
  br i1 %cmptmp29, label %and.95.then, label %and.95.else

choice.case:                                      ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %str.tag16 = lshr i64 %s.read.len14, 48
  %str.immortal17 = icmp eq i64 %str.tag16, 0
  br i1 %str.immortal17, label %str_ok19, label %str_gen_check18

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check18:                                  ; preds = %choice.case
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag16)
  br i1 %tag.valid22, label %str_ok19, label %str_stale20

str_ok19:                                         ; preds = %str_stale20, %str_gen_check18, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data, align 8
  %var.load24 = load i64, ptr %"var.p'", align 8
  %idx.neg = icmp slt i64 %var.load24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale20:                                      ; preds = %str_gen_check18
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok19

idx_big_check:                                    ; preds = %str_ok19
  %idx.big = icmp sge i64 %var.load24, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data23, i64 %var.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %str_ok19
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit26:                                    ; preds = %choice.next28, %choice.case27
  %choice.res31 = phi i1 [ true, %choice.case27 ], [ false, %choice.next28 ]
  store i1 %choice.res31, ptr %var.is_num_start, align 1
  %var.load32 = load i1, ptr %var.is_num_start, align 1
  br i1 %var.load32, label %choice.then, label %choice.else

choice.case27:                                    ; preds = %and.95.exit
  br label %choice.exit26

choice.next28:                                    ; preds = %and.95.exit
  br label %choice.exit26

and.95.then:                                      ; preds = %choice.exit
  %cmptmp30 = icmp sle i64 %var.load25, 57
  br label %and.95.exit

and.95.else:                                      ; preds = %choice.exit
  br label %and.95.exit

and.95.exit:                                      ; preds = %and.95.else, %and.95.then
  %and.95.phi = phi i1 [ %cmptmp30, %and.95.then ], [ %cmptmp29, %and.95.else ]
  %val.match = icmp eq i64 %var.load25, 45
  %case.or = or i1 %and.95.phi, %val.match
  br i1 %case.or, label %choice.case27, label %choice.next28

choice.then:                                      ; preds = %choice.exit26
  store i1 false, ptr %"var.neg'", align 1
  %var.load34 = load i64, ptr %var.c0, align 8
  %val.match38 = icmp eq i64 %var.load34, 45
  br i1 %val.match38, label %choice.case36, label %choice.next37

choice.else:                                      ; preds = %choice.exit26
  %arena.cur595 = call ptr @dva_arena_current()
  %err.alloc596 = call ptr @dva_arena_alloc(ptr %arena.cur595, i64 56)
  %err.code.gep597 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 0
  store i64 400, ptr %err.code.gep597, align 8
  %err.msg.gep598 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 1
  store ptr @str.21.struct, ptr %err.msg.gep598, align 8
  %err.file.gep599 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep599, align 8
  %err.line.gep600 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 3
  store i64 0, ptr %err.line.gep600, align 8
  %err.col.gep601 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 4
  store i64 0, ptr %err.col.gep601, align 8
  %err.ctx.gep602 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc596, i32 0, i32 5
  %var.load603 = load i64, ptr %"var.p'", align 8
  %arena.cur604 = call ptr @dva_arena_current()
  %rec.alloc605 = call ptr @dva_arena_alloc(ptr %arena.cur604, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld606 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc605, i32 0, i32 0
  store i64 %var.load603, ptr %rec.fld606, align 8
  %rec.fld607 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc605, i32 0, i32 1
  store i64 0, ptr %rec.fld607, align 8
  %ctx.0.gep608 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc605, i32 0, i32 0
  %ctx.0609 = load i64, ptr %ctx.0.gep608, align 8
  %ctx.1.gep610 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc605, i32 0, i32 1
  %ctx.1611 = load i64, ptr %ctx.1.gep610, align 8
  %err.ctx0.gep612 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep602, i32 0, i32 0
  store i64 %ctx.0609, ptr %err.ctx0.gep612, align 8
  %err.ctx1.gep613 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep602, i32 0, i32 1
  store i64 %ctx.1611, ptr %err.ctx1.gep613, align 8
  %p.to.i64614 = ptrtoint ptr %err.alloc596 to i64
  %ram.pay615 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64614, 1
  br label %choice.exit33

choice.exit33:                                    ; preds = %choice.else, %choice.exit103
  %choice.res616 = phi { i1, i64 } [ %choice.res594, %choice.exit103 ], [ %ram.pay615, %choice.else ]
  ret { i1, i64 } %choice.res616

choice.exit35:                                    ; preds = %choice.next37, %choice.case36
  %var.load40 = load i64, ptr %"var.p'", align 8
  %var.load41 = load ptr, ptr %var.sc, align 8
  %fld.gep42 = getelementptr inbounds { ptr, i64 }, ptr %var.load41, i32 0, i32 0
  %fld.load43 = load ptr, ptr %fld.gep42, align 8
  %str.len.query44 = getelementptr inbounds { i64, ptr }, ptr %fld.load43, i32 0, i32 0
  %str.len.query45 = load i64, ptr %str.len.query44, align 8
  %str.len.query46 = and i64 %str.len.query45, 281474976710655
  %str.tag47 = lshr i64 %str.len.query45, 48
  %str.immortal48 = icmp eq i64 %str.tag47, 0
  br i1 %str.immortal48, label %str_ok50, label %str_gen_check49

choice.case36:                                    ; preds = %choice.then
  store i1 true, ptr %"var.neg'", align 1
  %var.load39 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load39, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit35

choice.next37:                                    ; preds = %choice.then
  br label %choice.exit35

str_gen_check49:                                  ; preds = %choice.exit35
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag47)
  br i1 %tag.valid53, label %str_ok50, label %str_stale51

str_ok50:                                         ; preds = %str_stale51, %str_gen_check49, %choice.exit35
  %cmptmp54 = icmp slt i64 %var.load40, %str.len.query46
  br i1 %cmptmp54, label %and.96.then, label %and.96.else

str_stale51:                                      ; preds = %str_gen_check49
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok50

and.96.then:                                      ; preds = %str_ok50
  %var.load55 = load ptr, ptr %var.sc, align 8
  %fld.gep56 = getelementptr inbounds { ptr, i64 }, ptr %var.load55, i32 0, i32 0
  %fld.load57 = load ptr, ptr %fld.gep56, align 8
  %s.read.len58 = getelementptr inbounds { i64, ptr }, ptr %fld.load57, i32 0, i32 0
  %s.read.len59 = load i64, ptr %s.read.len58, align 8
  %s.read.len60 = and i64 %s.read.len59, 281474976710655
  %str.tag61 = lshr i64 %s.read.len59, 48
  %str.immortal62 = icmp eq i64 %str.tag61, 0
  br i1 %str.immortal62, label %str_ok64, label %str_gen_check63

and.96.else:                                      ; preds = %str_ok50
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %idx_ok73
  %and.96.phi = phi i1 [ %cmptmp79, %idx_ok73 ], [ %cmptmp54, %and.96.else ]
  br i1 %and.96.phi, label %and.97.then, label %and.97.else

str_gen_check63:                                  ; preds = %and.96.then
  %arena.cur66 = call ptr @dva_arena_current()
  %tag.valid67 = call i1 @dva_arena_validate_tag(ptr %arena.cur66, i64 %str.tag61)
  br i1 %tag.valid67, label %str_ok64, label %str_stale65

str_ok64:                                         ; preds = %str_stale65, %str_gen_check63, %and.96.then
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %fld.load57, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %var.load70 = load i64, ptr %"var.p'", align 8
  %idx.neg71 = icmp slt i64 %var.load70, 0
  br i1 %idx.neg71, label %idx_oob74, label %idx_big_check72

str_stale65:                                      ; preds = %str_gen_check63
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok64

idx_big_check72:                                  ; preds = %str_ok64
  %idx.big75 = icmp sge i64 %var.load70, %s.read.len60
  br i1 %idx.big75, label %idx_oob74, label %idx_ok73

idx_ok73:                                         ; preds = %idx_oob74, %idx_big_check72
  %s.byte.gep76 = getelementptr i8, ptr %s.read.data69, i64 %var.load70
  %s.byte77 = load i8, ptr %s.byte.gep76, align 1
  %s.byte.val78 = zext i8 %s.byte77 to i64
  %cmptmp79 = icmp eq i64 %s.byte.val78, 48
  br label %and.96.exit

idx_oob74:                                        ; preds = %idx_big_check72, %str_ok64
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok73

and.97.then:                                      ; preds = %and.96.exit
  %var.load80 = load i64, ptr %"var.p'", align 8
  %addtmp81 = add i64 %var.load80, 1
  %var.load82 = load ptr, ptr %var.sc, align 8
  %fld.gep83 = getelementptr inbounds { ptr, i64 }, ptr %var.load82, i32 0, i32 0
  %fld.load84 = load ptr, ptr %fld.gep83, align 8
  %str.len.query85 = getelementptr inbounds { i64, ptr }, ptr %fld.load84, i32 0, i32 0
  %str.len.query86 = load i64, ptr %str.len.query85, align 8
  %str.len.query87 = and i64 %str.len.query86, 281474976710655
  %str.tag88 = lshr i64 %str.len.query86, 48
  %str.immortal89 = icmp eq i64 %str.tag88, 0
  br i1 %str.immortal89, label %str_ok91, label %str_gen_check90

and.97.else:                                      ; preds = %and.96.exit
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %str_ok91
  %and.97.phi = phi i1 [ %cmptmp95, %str_ok91 ], [ %and.96.phi, %and.97.else ]
  br i1 %and.97.phi, label %and.98.then, label %and.98.else

str_gen_check90:                                  ; preds = %and.97.then
  %arena.cur93 = call ptr @dva_arena_current()
  %tag.valid94 = call i1 @dva_arena_validate_tag(ptr %arena.cur93, i64 %str.tag88)
  br i1 %tag.valid94, label %str_ok91, label %str_stale92

str_ok91:                                         ; preds = %str_stale92, %str_gen_check90, %and.97.then
  %cmptmp95 = icmp slt i64 %addtmp81, %str.len.query87
  br label %and.97.exit

str_stale92:                                      ; preds = %str_gen_check90
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok91

and.98.then:                                      ; preds = %and.97.exit
  %var.load96 = load ptr, ptr %var.sc, align 8
  %var.load97 = load i64, ptr %"var.p'", align 8
  %addtmp98 = add i64 %var.load97, 1
  %call.res99 = call i1 @"json::#is_digit_at"(ptr %var.load96, i64 %addtmp98)
  br label %and.98.exit

and.98.else:                                      ; preds = %and.97.exit
  br label %and.98.exit

and.98.exit:                                      ; preds = %and.98.else, %and.98.then
  %and.98.phi = phi i1 [ %call.res99, %and.98.then ], [ %and.97.phi, %and.98.else ]
  store i1 %and.98.phi, ptr %var.has_leading_zero, align 1
  %var.load100 = load i1, ptr %var.has_leading_zero, align 1
  br i1 %var.load100, label %choice.then101, label %choice.else102

choice.then101:                                   ; preds = %and.98.exit
  %arena.cur104 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load105 = load i64, ptr %"var.p'", align 8
  %arena.cur106 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load105, ptr %rec.fld, align 8
  %rec.fld107 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld107, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit103

choice.else102:                                   ; preds = %and.98.exit
  %var.load108 = load i64, ptr %"var.p'", align 8
  store i64 %var.load108, ptr %"var.p2'", align 8
  store i1 false, ptr %"var.had_int'", align 1
  store i64 0, ptr %"var.sig_digits'", align 8
  store double 0.000000e+00, ptr %"var.fv'", align 8
  store i64 0, ptr %"var.exp10'", align 8
  store i64 0, ptr %loop.idx.99, align 8
  br label %loop.header.99

choice.exit103:                                   ; preds = %choice.exit556, %choice.then101
  %choice.res594 = phi { i1, i64 } [ %ram.pay, %choice.then101 ], [ %choice.res593, %choice.exit556 ]
  br label %choice.exit33

loop.header.99:                                   ; preds = %loop.latch.99, %choice.else102
  %counter.load = load i64, ptr %loop.idx.99, align 8
  br label %loop.body.99

loop.body.99:                                     ; preds = %loop.header.99
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.99, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load109 = load i64, ptr %"var.p2'", align 8
  %var.load110 = load ptr, ptr %var.sc, align 8
  %fld.gep111 = getelementptr inbounds { ptr, i64 }, ptr %var.load110, i32 0, i32 0
  %fld.load112 = load ptr, ptr %fld.gep111, align 8
  %str.len.query113 = getelementptr inbounds { i64, ptr }, ptr %fld.load112, i32 0, i32 0
  %str.len.query114 = load i64, ptr %str.len.query113, align 8
  %str.len.query115 = and i64 %str.len.query114, 281474976710655
  %str.tag116 = lshr i64 %str.len.query114, 48
  %str.immortal117 = icmp eq i64 %str.tag116, 0
  br i1 %str.immortal117, label %str_ok119, label %str_gen_check118

loop.exit.nat.99:                                 ; No predecessors!
  br label %loop.exit.99

loop.latch.99:                                    ; preds = %choice.exit159
  %step.val = load i64, ptr %loop.step.99, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.99, align 8
  br label %loop.header.99

loop.exit.99:                                     ; preds = %choice.else158, %choice.then124, %loop.exit.nat.99
  %var.load180 = load i64, ptr %"var.p2'", align 8
  %var.load181 = load ptr, ptr %var.sc, align 8
  %fld.gep182 = getelementptr inbounds { ptr, i64 }, ptr %var.load181, i32 0, i32 0
  %fld.load183 = load ptr, ptr %fld.gep182, align 8
  %str.len.query184 = getelementptr inbounds { i64, ptr }, ptr %fld.load183, i32 0, i32 0
  %str.len.query185 = load i64, ptr %str.len.query184, align 8
  %str.len.query186 = and i64 %str.len.query185, 281474976710655
  %str.tag187 = lshr i64 %str.len.query185, 48
  %str.immortal188 = icmp eq i64 %str.tag187, 0
  br i1 %str.immortal188, label %str_ok190, label %str_gen_check189

str_gen_check118:                                 ; preds = %loop.body.99
  %arena.cur121 = call ptr @dva_arena_current()
  %tag.valid122 = call i1 @dva_arena_validate_tag(ptr %arena.cur121, i64 %str.tag116)
  br i1 %tag.valid122, label %str_ok119, label %str_stale120

str_ok119:                                        ; preds = %str_stale120, %str_gen_check118, %loop.body.99
  %cmptmp123 = icmp sge i64 %var.load109, %str.len.query115
  br i1 %cmptmp123, label %choice.then124, label %choice.exit125

str_stale120:                                     ; preds = %str_gen_check118
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok119

choice.then124:                                   ; preds = %str_ok119
  br label %loop.exit.99

choice.exit125:                                   ; preds = %str_ok119
  %var.load126 = load ptr, ptr %var.sc, align 8
  %fld.gep127 = getelementptr inbounds { ptr, i64 }, ptr %var.load126, i32 0, i32 0
  %fld.load128 = load ptr, ptr %fld.gep127, align 8
  %s.read.len129 = getelementptr inbounds { i64, ptr }, ptr %fld.load128, i32 0, i32 0
  %s.read.len130 = load i64, ptr %s.read.len129, align 8
  %s.read.len131 = and i64 %s.read.len130, 281474976710655
  %str.tag132 = lshr i64 %s.read.len130, 48
  %str.immortal133 = icmp eq i64 %str.tag132, 0
  br i1 %str.immortal133, label %str_ok135, label %str_gen_check134

str_gen_check134:                                 ; preds = %choice.exit125
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %str.tag132)
  br i1 %tag.valid138, label %str_ok135, label %str_stale136

str_ok135:                                        ; preds = %str_stale136, %str_gen_check134, %choice.exit125
  %s.read.data139 = getelementptr inbounds { i64, ptr }, ptr %fld.load128, i32 0, i32 1
  %s.read.data140 = load ptr, ptr %s.read.data139, align 8
  %var.load141 = load i64, ptr %"var.p2'", align 8
  %idx.neg142 = icmp slt i64 %var.load141, 0
  br i1 %idx.neg142, label %idx_oob145, label %idx_big_check143

str_stale136:                                     ; preds = %str_gen_check134
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok135

idx_big_check143:                                 ; preds = %str_ok135
  %idx.big146 = icmp sge i64 %var.load141, %s.read.len131
  br i1 %idx.big146, label %idx_oob145, label %idx_ok144

idx_ok144:                                        ; preds = %idx_oob145, %idx_big_check143
  %s.byte.gep147 = getelementptr i8, ptr %s.read.data140, i64 %var.load141
  %s.byte148 = load i8, ptr %s.byte.gep147, align 1
  %s.byte.val149 = zext i8 %s.byte148 to i64
  store i64 %s.byte.val149, ptr %var.c, align 8
  %var.load150 = load i64, ptr %var.c, align 8
  %cmptmp154 = icmp sge i64 %var.load150, 48
  br i1 %cmptmp154, label %and.100.then, label %and.100.else

idx_oob145:                                       ; preds = %idx_big_check143, %str_ok135
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok144

choice.exit151:                                   ; preds = %choice.next153, %choice.case152
  %choice.res156 = phi i1 [ true, %choice.case152 ], [ false, %choice.next153 ]
  br i1 %choice.res156, label %choice.then157, label %choice.else158

choice.case152:                                   ; preds = %and.100.exit
  br label %choice.exit151

choice.next153:                                   ; preds = %and.100.exit
  br label %choice.exit151

and.100.then:                                     ; preds = %idx_ok144
  %cmptmp155 = icmp sle i64 %var.load150, 57
  br label %and.100.exit

and.100.else:                                     ; preds = %idx_ok144
  br label %and.100.exit

and.100.exit:                                     ; preds = %and.100.else, %and.100.then
  %and.100.phi = phi i1 [ %cmptmp155, %and.100.then ], [ %cmptmp154, %and.100.else ]
  br i1 %and.100.phi, label %choice.case152, label %choice.next153

choice.then157:                                   ; preds = %choice.exit151
  store i1 true, ptr %"var.had_int'", align 1
  %var.load160 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load160, 48
  store i64 %subtmp, ptr %var.d, align 8
  %var.load161 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp162 = icmp sgt i64 %var.load161, 0
  br i1 %cmptmp162, label %or.101.then, label %or.101.else

choice.else158:                                   ; preds = %choice.exit151
  br label %loop.exit.99

choice.exit159:                                   ; preds = %choice.exit166
  br label %loop.latch.99

or.101.then:                                      ; preds = %choice.then157
  br label %or.101.exit

or.101.else:                                      ; preds = %choice.then157
  %var.load163 = load i64, ptr %var.d, align 8
  %cmptmp164 = icmp ne i64 %var.load163, 0
  br label %or.101.exit

or.101.exit:                                      ; preds = %or.101.else, %or.101.then
  %or.101.phi = phi i1 [ %cmptmp162, %or.101.then ], [ %cmptmp164, %or.101.else ]
  br i1 %or.101.phi, label %choice.then165, label %choice.exit166

choice.then165:                                   ; preds = %or.101.exit
  %var.load167 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp168 = icmp slt i64 %var.load167, 17
  br i1 %cmptmp168, label %choice.then169, label %choice.else170

choice.exit166:                                   ; preds = %choice.exit171, %or.101.exit
  %var.load178 = load i64, ptr %"var.p2'", align 8
  %addtmp179 = add i64 %var.load178, 1
  store i64 %addtmp179, ptr %"var.p2'", align 8
  br label %choice.exit159

choice.then169:                                   ; preds = %choice.then165
  %var.load172 = load double, ptr %"var.fv'", align 8
  %fmultmp = fmul double %var.load172, 1.000000e+01
  %var.load173 = load i64, ptr %var.d, align 8
  %cast.sitofp = sitofp i64 %var.load173 to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.fv'", align 8
  %var.load174 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp175 = add i64 %var.load174, 1
  store i64 %addtmp175, ptr %"var.sig_digits'", align 8
  br label %choice.exit171

choice.else170:                                   ; preds = %choice.then165
  %var.load176 = load i64, ptr %"var.exp10'", align 8
  %addtmp177 = add i64 %var.load176, 1
  store i64 %addtmp177, ptr %"var.exp10'", align 8
  br label %choice.exit171

choice.exit171:                                   ; preds = %choice.else170, %choice.then169
  br label %choice.exit166

str_gen_check189:                                 ; preds = %loop.exit.99
  %arena.cur192 = call ptr @dva_arena_current()
  %tag.valid193 = call i1 @dva_arena_validate_tag(ptr %arena.cur192, i64 %str.tag187)
  br i1 %tag.valid193, label %str_ok190, label %str_stale191

str_ok190:                                        ; preds = %str_stale191, %str_gen_check189, %loop.exit.99
  %cmptmp194 = icmp slt i64 %var.load180, %str.len.query186
  br i1 %cmptmp194, label %and.102.then, label %and.102.else

str_stale191:                                     ; preds = %str_gen_check189
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok190

and.102.then:                                     ; preds = %str_ok190
  %var.load195 = load ptr, ptr %var.sc, align 8
  %fld.gep196 = getelementptr inbounds { ptr, i64 }, ptr %var.load195, i32 0, i32 0
  %fld.load197 = load ptr, ptr %fld.gep196, align 8
  %s.read.len198 = getelementptr inbounds { i64, ptr }, ptr %fld.load197, i32 0, i32 0
  %s.read.len199 = load i64, ptr %s.read.len198, align 8
  %s.read.len200 = and i64 %s.read.len199, 281474976710655
  %str.tag201 = lshr i64 %s.read.len199, 48
  %str.immortal202 = icmp eq i64 %str.tag201, 0
  br i1 %str.immortal202, label %str_ok204, label %str_gen_check203

and.102.else:                                     ; preds = %str_ok190
  br label %and.102.exit

and.102.exit:                                     ; preds = %and.102.else, %idx_ok213
  %and.102.phi = phi i1 [ %cmptmp219, %idx_ok213 ], [ %cmptmp194, %and.102.else ]
  store i1 %and.102.phi, ptr %var.has_dot, align 1
  store i1 false, ptr %"var.had_frac'", align 1
  %var.load220 = load i1, ptr %var.has_dot, align 1
  br i1 %var.load220, label %choice.then221, label %choice.exit222

str_gen_check203:                                 ; preds = %and.102.then
  %arena.cur206 = call ptr @dva_arena_current()
  %tag.valid207 = call i1 @dva_arena_validate_tag(ptr %arena.cur206, i64 %str.tag201)
  br i1 %tag.valid207, label %str_ok204, label %str_stale205

str_ok204:                                        ; preds = %str_stale205, %str_gen_check203, %and.102.then
  %s.read.data208 = getelementptr inbounds { i64, ptr }, ptr %fld.load197, i32 0, i32 1
  %s.read.data209 = load ptr, ptr %s.read.data208, align 8
  %var.load210 = load i64, ptr %"var.p2'", align 8
  %idx.neg211 = icmp slt i64 %var.load210, 0
  br i1 %idx.neg211, label %idx_oob214, label %idx_big_check212

str_stale205:                                     ; preds = %str_gen_check203
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok204

idx_big_check212:                                 ; preds = %str_ok204
  %idx.big215 = icmp sge i64 %var.load210, %s.read.len200
  br i1 %idx.big215, label %idx_oob214, label %idx_ok213

idx_ok213:                                        ; preds = %idx_oob214, %idx_big_check212
  %s.byte.gep216 = getelementptr i8, ptr %s.read.data209, i64 %var.load210
  %s.byte217 = load i8, ptr %s.byte.gep216, align 1
  %s.byte.val218 = zext i8 %s.byte217 to i64
  %cmptmp219 = icmp eq i64 %s.byte.val218, 46
  br label %and.102.exit

idx_oob214:                                       ; preds = %idx_big_check212, %str_ok204
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok213

choice.then221:                                   ; preds = %and.102.exit
  %var.load223 = load i64, ptr %"var.p2'", align 8
  %addtmp224 = add i64 %var.load223, 1
  store i64 %addtmp224, ptr %"var.p2'", align 8
  store i64 0, ptr %loop.idx.103, align 8
  br label %loop.header.103

choice.exit222:                                   ; preds = %loop.exit.103, %and.102.exit
  %var.load310 = load i64, ptr %"var.p2'", align 8
  %var.load311 = load ptr, ptr %var.sc, align 8
  %fld.gep312 = getelementptr inbounds { ptr, i64 }, ptr %var.load311, i32 0, i32 0
  %fld.load313 = load ptr, ptr %fld.gep312, align 8
  %str.len.query314 = getelementptr inbounds { i64, ptr }, ptr %fld.load313, i32 0, i32 0
  %str.len.query315 = load i64, ptr %str.len.query314, align 8
  %str.len.query316 = and i64 %str.len.query315, 281474976710655
  %str.tag317 = lshr i64 %str.len.query315, 48
  %str.immortal318 = icmp eq i64 %str.tag317, 0
  br i1 %str.immortal318, label %str_ok320, label %str_gen_check319

loop.header.103:                                  ; preds = %loop.latch.103, %choice.then221
  %counter.load225 = load i64, ptr %loop.idx.103, align 8
  br label %loop.body.103

loop.body.103:                                    ; preds = %loop.header.103
  %loop.rel.i226 = sub i64 %counter.load225, 0
  store i64 1, ptr %loop.step.103, align 8
  store i64 %loop.rel.i226, ptr %var._i227, align 8
  store i64 %counter.load225, ptr %var._228, align 8
  %var.load229 = load i64, ptr %"var.p2'", align 8
  %var.load230 = load ptr, ptr %var.sc, align 8
  %fld.gep231 = getelementptr inbounds { ptr, i64 }, ptr %var.load230, i32 0, i32 0
  %fld.load232 = load ptr, ptr %fld.gep231, align 8
  %str.len.query233 = getelementptr inbounds { i64, ptr }, ptr %fld.load232, i32 0, i32 0
  %str.len.query234 = load i64, ptr %str.len.query233, align 8
  %str.len.query235 = and i64 %str.len.query234, 281474976710655
  %str.tag236 = lshr i64 %str.len.query234, 48
  %str.immortal237 = icmp eq i64 %str.tag236, 0
  br i1 %str.immortal237, label %str_ok239, label %str_gen_check238

loop.exit.nat.103:                                ; No predecessors!
  br label %loop.exit.103

loop.latch.103:                                   ; preds = %choice.exit280
  %step.val308 = load i64, ptr %loop.step.103, align 8
  %loop.next309 = add i64 %counter.load225, %step.val308
  store i64 %loop.next309, ptr %loop.idx.103, align 8
  br label %loop.header.103

loop.exit.103:                                    ; preds = %choice.else279, %choice.then244, %loop.exit.nat.103
  br label %choice.exit222

str_gen_check238:                                 ; preds = %loop.body.103
  %arena.cur241 = call ptr @dva_arena_current()
  %tag.valid242 = call i1 @dva_arena_validate_tag(ptr %arena.cur241, i64 %str.tag236)
  br i1 %tag.valid242, label %str_ok239, label %str_stale240

str_ok239:                                        ; preds = %str_stale240, %str_gen_check238, %loop.body.103
  %cmptmp243 = icmp sge i64 %var.load229, %str.len.query235
  br i1 %cmptmp243, label %choice.then244, label %choice.exit245

str_stale240:                                     ; preds = %str_gen_check238
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok239

choice.then244:                                   ; preds = %str_ok239
  br label %loop.exit.103

choice.exit245:                                   ; preds = %str_ok239
  %var.load246 = load ptr, ptr %var.sc, align 8
  %fld.gep247 = getelementptr inbounds { ptr, i64 }, ptr %var.load246, i32 0, i32 0
  %fld.load248 = load ptr, ptr %fld.gep247, align 8
  %s.read.len249 = getelementptr inbounds { i64, ptr }, ptr %fld.load248, i32 0, i32 0
  %s.read.len250 = load i64, ptr %s.read.len249, align 8
  %s.read.len251 = and i64 %s.read.len250, 281474976710655
  %str.tag252 = lshr i64 %s.read.len250, 48
  %str.immortal253 = icmp eq i64 %str.tag252, 0
  br i1 %str.immortal253, label %str_ok255, label %str_gen_check254

str_gen_check254:                                 ; preds = %choice.exit245
  %arena.cur257 = call ptr @dva_arena_current()
  %tag.valid258 = call i1 @dva_arena_validate_tag(ptr %arena.cur257, i64 %str.tag252)
  br i1 %tag.valid258, label %str_ok255, label %str_stale256

str_ok255:                                        ; preds = %str_stale256, %str_gen_check254, %choice.exit245
  %s.read.data259 = getelementptr inbounds { i64, ptr }, ptr %fld.load248, i32 0, i32 1
  %s.read.data260 = load ptr, ptr %s.read.data259, align 8
  %var.load261 = load i64, ptr %"var.p2'", align 8
  %idx.neg262 = icmp slt i64 %var.load261, 0
  br i1 %idx.neg262, label %idx_oob265, label %idx_big_check263

str_stale256:                                     ; preds = %str_gen_check254
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok255

idx_big_check263:                                 ; preds = %str_ok255
  %idx.big266 = icmp sge i64 %var.load261, %s.read.len251
  br i1 %idx.big266, label %idx_oob265, label %idx_ok264

idx_ok264:                                        ; preds = %idx_oob265, %idx_big_check263
  %s.byte.gep267 = getelementptr i8, ptr %s.read.data260, i64 %var.load261
  %s.byte268 = load i8, ptr %s.byte.gep267, align 1
  %s.byte.val269 = zext i8 %s.byte268 to i64
  store i64 %s.byte.val269, ptr %var.c270, align 8
  %var.load271 = load i64, ptr %var.c270, align 8
  %cmptmp275 = icmp sge i64 %var.load271, 48
  br i1 %cmptmp275, label %and.104.then, label %and.104.else

idx_oob265:                                       ; preds = %idx_big_check263, %str_ok255
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok264

choice.exit272:                                   ; preds = %choice.next274, %choice.case273
  %choice.res277 = phi i1 [ true, %choice.case273 ], [ false, %choice.next274 ]
  br i1 %choice.res277, label %choice.then278, label %choice.else279

choice.case273:                                   ; preds = %and.104.exit
  br label %choice.exit272

choice.next274:                                   ; preds = %and.104.exit
  br label %choice.exit272

and.104.then:                                     ; preds = %idx_ok264
  %cmptmp276 = icmp sle i64 %var.load271, 57
  br label %and.104.exit

and.104.else:                                     ; preds = %idx_ok264
  br label %and.104.exit

and.104.exit:                                     ; preds = %and.104.else, %and.104.then
  %and.104.phi = phi i1 [ %cmptmp276, %and.104.then ], [ %cmptmp275, %and.104.else ]
  br i1 %and.104.phi, label %choice.case273, label %choice.next274

choice.then278:                                   ; preds = %choice.exit272
  store i1 true, ptr %"var.had_frac'", align 1
  %var.load281 = load i64, ptr %var.c270, align 8
  %subtmp282 = sub i64 %var.load281, 48
  store i64 %subtmp282, ptr %var.d283, align 8
  %var.load284 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp285 = icmp eq i64 %var.load284, 0
  br i1 %cmptmp285, label %and.105.then, label %and.105.else

choice.else279:                                   ; preds = %choice.exit272
  br label %loop.exit.103

choice.exit280:                                   ; preds = %choice.exit290
  br label %loop.latch.103

and.105.then:                                     ; preds = %choice.then278
  %var.load286 = load i64, ptr %var.d283, align 8
  %cmptmp287 = icmp eq i64 %var.load286, 0
  br label %and.105.exit

and.105.else:                                     ; preds = %choice.then278
  br label %and.105.exit

and.105.exit:                                     ; preds = %and.105.else, %and.105.then
  %and.105.phi = phi i1 [ %cmptmp287, %and.105.then ], [ %cmptmp285, %and.105.else ]
  br i1 %and.105.phi, label %choice.then288, label %choice.else289

choice.then288:                                   ; preds = %and.105.exit
  %var.load291 = load i64, ptr %"var.exp10'", align 8
  %subtmp292 = sub i64 %var.load291, 1
  store i64 %subtmp292, ptr %"var.exp10'", align 8
  br label %choice.exit290

choice.else289:                                   ; preds = %and.105.exit
  %var.load293 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp294 = icmp slt i64 %var.load293, 17
  br i1 %cmptmp294, label %choice.then295, label %choice.exit296

choice.exit290:                                   ; preds = %choice.exit296, %choice.then288
  %var.load306 = load i64, ptr %"var.p2'", align 8
  %addtmp307 = add i64 %var.load306, 1
  store i64 %addtmp307, ptr %"var.p2'", align 8
  br label %choice.exit280

choice.then295:                                   ; preds = %choice.else289
  %var.load297 = load double, ptr %"var.fv'", align 8
  %fmultmp298 = fmul double %var.load297, 1.000000e+01
  %var.load299 = load i64, ptr %var.d283, align 8
  %cast.sitofp300 = sitofp i64 %var.load299 to double
  %faddtmp301 = fadd double %fmultmp298, %cast.sitofp300
  store double %faddtmp301, ptr %"var.fv'", align 8
  %var.load302 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp303 = add i64 %var.load302, 1
  store i64 %addtmp303, ptr %"var.sig_digits'", align 8
  %var.load304 = load i64, ptr %"var.exp10'", align 8
  %subtmp305 = sub i64 %var.load304, 1
  store i64 %subtmp305, ptr %"var.exp10'", align 8
  br label %choice.exit296

choice.exit296:                                   ; preds = %choice.then295, %choice.else289
  br label %choice.exit290

str_gen_check319:                                 ; preds = %choice.exit222
  %arena.cur322 = call ptr @dva_arena_current()
  %tag.valid323 = call i1 @dva_arena_validate_tag(ptr %arena.cur322, i64 %str.tag317)
  br i1 %tag.valid323, label %str_ok320, label %str_stale321

str_ok320:                                        ; preds = %str_stale321, %str_gen_check319, %choice.exit222
  %cmptmp324 = icmp slt i64 %var.load310, %str.len.query316
  br i1 %cmptmp324, label %and.106.then, label %and.106.else

str_stale321:                                     ; preds = %str_gen_check319
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok320

and.106.then:                                     ; preds = %str_ok320
  %var.load325 = load ptr, ptr %var.sc, align 8
  %fld.gep326 = getelementptr inbounds { ptr, i64 }, ptr %var.load325, i32 0, i32 0
  %fld.load327 = load ptr, ptr %fld.gep326, align 8
  %s.read.len328 = getelementptr inbounds { i64, ptr }, ptr %fld.load327, i32 0, i32 0
  %s.read.len329 = load i64, ptr %s.read.len328, align 8
  %s.read.len330 = and i64 %s.read.len329, 281474976710655
  %str.tag331 = lshr i64 %s.read.len329, 48
  %str.immortal332 = icmp eq i64 %str.tag331, 0
  br i1 %str.immortal332, label %str_ok334, label %str_gen_check333

and.106.else:                                     ; preds = %str_ok320
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %choice.exit349
  %and.106.phi = phi i1 [ %choice.res355, %choice.exit349 ], [ %cmptmp324, %and.106.else ]
  store i1 %and.106.phi, ptr %var.has_exp, align 1
  store i1 false, ptr %"var.had_exp'", align 1
  %var.load356 = load i1, ptr %var.has_exp, align 1
  br i1 %var.load356, label %choice.then357, label %choice.exit358

str_gen_check333:                                 ; preds = %and.106.then
  %arena.cur336 = call ptr @dva_arena_current()
  %tag.valid337 = call i1 @dva_arena_validate_tag(ptr %arena.cur336, i64 %str.tag331)
  br i1 %tag.valid337, label %str_ok334, label %str_stale335

str_ok334:                                        ; preds = %str_stale335, %str_gen_check333, %and.106.then
  %s.read.data338 = getelementptr inbounds { i64, ptr }, ptr %fld.load327, i32 0, i32 1
  %s.read.data339 = load ptr, ptr %s.read.data338, align 8
  %var.load340 = load i64, ptr %"var.p2'", align 8
  %idx.neg341 = icmp slt i64 %var.load340, 0
  br i1 %idx.neg341, label %idx_oob344, label %idx_big_check342

str_stale335:                                     ; preds = %str_gen_check333
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok334

idx_big_check342:                                 ; preds = %str_ok334
  %idx.big345 = icmp sge i64 %var.load340, %s.read.len330
  br i1 %idx.big345, label %idx_oob344, label %idx_ok343

idx_ok343:                                        ; preds = %idx_oob344, %idx_big_check342
  %s.byte.gep346 = getelementptr i8, ptr %s.read.data339, i64 %var.load340
  %s.byte347 = load i8, ptr %s.byte.gep346, align 1
  %s.byte.val348 = zext i8 %s.byte347 to i64
  %val.match352 = icmp eq i64 %s.byte.val348, 101
  %val.match353 = icmp eq i64 %s.byte.val348, 69
  %case.or354 = or i1 %val.match352, %val.match353
  br i1 %case.or354, label %choice.case350, label %choice.next351

idx_oob344:                                       ; preds = %idx_big_check342, %str_ok334
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok343

choice.exit349:                                   ; preds = %choice.next351, %choice.case350
  %choice.res355 = phi i1 [ true, %choice.case350 ], [ false, %choice.next351 ]
  br label %and.106.exit

choice.case350:                                   ; preds = %idx_ok343
  br label %choice.exit349

choice.next351:                                   ; preds = %idx_ok343
  br label %choice.exit349

choice.then357:                                   ; preds = %and.106.exit
  %var.load359 = load i64, ptr %"var.p2'", align 8
  %addtmp360 = add i64 %var.load359, 1
  store i64 %addtmp360, ptr %"var.p3'", align 8
  store i1 false, ptr %"var.eneg'", align 1
  %var.load361 = load i64, ptr %"var.p3'", align 8
  %var.load365 = load ptr, ptr %var.sc, align 8
  %fld.gep366 = getelementptr inbounds { ptr, i64 }, ptr %var.load365, i32 0, i32 0
  %fld.load367 = load ptr, ptr %fld.gep366, align 8
  %str.len.query368 = getelementptr inbounds { i64, ptr }, ptr %fld.load367, i32 0, i32 0
  %str.len.query369 = load i64, ptr %str.len.query368, align 8
  %str.len.query370 = and i64 %str.len.query369, 281474976710655
  %str.tag371 = lshr i64 %str.len.query369, 48
  %str.immortal372 = icmp eq i64 %str.tag371, 0
  br i1 %str.immortal372, label %str_ok374, label %str_gen_check373

choice.exit358:                                   ; preds = %choice.exit498, %and.106.exit
  %var.load506 = load double, ptr %"var.fv'", align 8
  %fcmptmp = fcmp une double %var.load506, 0.000000e+00
  br i1 %fcmptmp, label %choice.then507, label %choice.exit508

choice.exit362:                                   ; preds = %choice.next364, %idx_ok397
  %choice.res403 = phi i64 [ %s.byte.val402, %idx_ok397 ], [ -1, %choice.next364 ]
  store i64 %choice.res403, ptr %var.e0, align 8
  %var.load404 = load i64, ptr %var.e0, align 8
  %val.match408 = icmp eq i64 %var.load404, 45
  br i1 %val.match408, label %choice.case406, label %choice.next407

choice.case363:                                   ; preds = %str_ok374
  %var.load379 = load ptr, ptr %var.sc, align 8
  %fld.gep380 = getelementptr inbounds { ptr, i64 }, ptr %var.load379, i32 0, i32 0
  %fld.load381 = load ptr, ptr %fld.gep380, align 8
  %s.read.len382 = getelementptr inbounds { i64, ptr }, ptr %fld.load381, i32 0, i32 0
  %s.read.len383 = load i64, ptr %s.read.len382, align 8
  %s.read.len384 = and i64 %s.read.len383, 281474976710655
  %str.tag385 = lshr i64 %s.read.len383, 48
  %str.immortal386 = icmp eq i64 %str.tag385, 0
  br i1 %str.immortal386, label %str_ok388, label %str_gen_check387

choice.next364:                                   ; preds = %str_ok374
  br label %choice.exit362

str_gen_check373:                                 ; preds = %choice.then357
  %arena.cur376 = call ptr @dva_arena_current()
  %tag.valid377 = call i1 @dva_arena_validate_tag(ptr %arena.cur376, i64 %str.tag371)
  br i1 %tag.valid377, label %str_ok374, label %str_stale375

str_ok374:                                        ; preds = %str_stale375, %str_gen_check373, %choice.then357
  %cmptmp378 = icmp slt i64 %var.load361, %str.len.query370
  br i1 %cmptmp378, label %choice.case363, label %choice.next364

str_stale375:                                     ; preds = %str_gen_check373
  %20 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok374

str_gen_check387:                                 ; preds = %choice.case363
  %arena.cur390 = call ptr @dva_arena_current()
  %tag.valid391 = call i1 @dva_arena_validate_tag(ptr %arena.cur390, i64 %str.tag385)
  br i1 %tag.valid391, label %str_ok388, label %str_stale389

str_ok388:                                        ; preds = %str_stale389, %str_gen_check387, %choice.case363
  %s.read.data392 = getelementptr inbounds { i64, ptr }, ptr %fld.load381, i32 0, i32 1
  %s.read.data393 = load ptr, ptr %s.read.data392, align 8
  %var.load394 = load i64, ptr %"var.p3'", align 8
  %idx.neg395 = icmp slt i64 %var.load394, 0
  br i1 %idx.neg395, label %idx_oob398, label %idx_big_check396

str_stale389:                                     ; preds = %str_gen_check387
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok388

idx_big_check396:                                 ; preds = %str_ok388
  %idx.big399 = icmp sge i64 %var.load394, %s.read.len384
  br i1 %idx.big399, label %idx_oob398, label %idx_ok397

idx_ok397:                                        ; preds = %idx_oob398, %idx_big_check396
  %s.byte.gep400 = getelementptr i8, ptr %s.read.data393, i64 %var.load394
  %s.byte401 = load i8, ptr %s.byte.gep400, align 1
  %s.byte.val402 = zext i8 %s.byte401 to i64
  br label %choice.exit362

idx_oob398:                                       ; preds = %idx_big_check396, %str_ok388
  %22 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok397

choice.exit405:                                   ; preds = %choice.next407, %choice.case406
  %var.load411 = load i64, ptr %var.e0, align 8
  %cmptmp412 = icmp eq i64 %var.load411, 43
  store i1 %cmptmp412, ptr %var.plus, align 1
  %var.load413 = load i1, ptr %var.plus, align 1
  br i1 %var.load413, label %choice.then414, label %choice.exit415

choice.case406:                                   ; preds = %choice.exit362
  store i1 true, ptr %"var.eneg'", align 1
  %var.load409 = load i64, ptr %"var.p3'", align 8
  %addtmp410 = add i64 %var.load409, 1
  store i64 %addtmp410, ptr %"var.p3'", align 8
  br label %choice.exit405

choice.next407:                                   ; preds = %choice.exit362
  br label %choice.exit405

choice.then414:                                   ; preds = %choice.exit405
  %var.load416 = load i64, ptr %"var.p3'", align 8
  %addtmp417 = add i64 %var.load416, 1
  store i64 %addtmp417, ptr %"var.p3'", align 8
  br label %choice.exit415

choice.exit415:                                   ; preds = %choice.then414, %choice.exit405
  store i64 0, ptr %"var.ev'", align 8
  store i1 false, ptr %"var.over_exp'", align 1
  store i1 false, ptr %"var.had_exp_digits'", align 1
  store i64 0, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.header.107:                                  ; preds = %loop.latch.107, %choice.exit415
  %counter.load418 = load i64, ptr %loop.idx.107, align 8
  br label %loop.body.107

loop.body.107:                                    ; preds = %loop.header.107
  %loop.rel.i419 = sub i64 %counter.load418, 0
  store i64 1, ptr %loop.step.107, align 8
  store i64 %loop.rel.i419, ptr %var._i420, align 8
  store i64 %counter.load418, ptr %var._421, align 8
  %var.load422 = load i64, ptr %"var.p3'", align 8
  %var.load423 = load ptr, ptr %var.sc, align 8
  %fld.gep424 = getelementptr inbounds { ptr, i64 }, ptr %var.load423, i32 0, i32 0
  %fld.load425 = load ptr, ptr %fld.gep424, align 8
  %str.len.query426 = getelementptr inbounds { i64, ptr }, ptr %fld.load425, i32 0, i32 0
  %str.len.query427 = load i64, ptr %str.len.query426, align 8
  %str.len.query428 = and i64 %str.len.query427, 281474976710655
  %str.tag429 = lshr i64 %str.len.query427, 48
  %str.immortal430 = icmp eq i64 %str.tag429, 0
  br i1 %str.immortal430, label %str_ok432, label %str_gen_check431

loop.exit.nat.107:                                ; No predecessors!
  br label %loop.exit.107

loop.latch.107:                                   ; preds = %choice.exit472
  %step.val485 = load i64, ptr %loop.step.107, align 8
  %loop.next486 = add i64 %counter.load418, %step.val485
  store i64 %loop.next486, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.exit.107:                                    ; preds = %choice.else471, %choice.then437, %loop.exit.nat.107
  %var.load487 = load i1, ptr %"var.had_exp_digits'", align 1
  store i1 %var.load487, ptr %"var.had_exp'", align 1
  %var.load488 = load i64, ptr %"var.p3'", align 8
  store i64 %var.load488, ptr %"var.p2'", align 8
  %var.load489 = load i1, ptr %"var.over_exp'", align 1
  br i1 %var.load489, label %choice.then490, label %choice.else491

str_gen_check431:                                 ; preds = %loop.body.107
  %arena.cur434 = call ptr @dva_arena_current()
  %tag.valid435 = call i1 @dva_arena_validate_tag(ptr %arena.cur434, i64 %str.tag429)
  br i1 %tag.valid435, label %str_ok432, label %str_stale433

str_ok432:                                        ; preds = %str_stale433, %str_gen_check431, %loop.body.107
  %cmptmp436 = icmp sge i64 %var.load422, %str.len.query428
  br i1 %cmptmp436, label %choice.then437, label %choice.exit438

str_stale433:                                     ; preds = %str_gen_check431
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok432

choice.then437:                                   ; preds = %str_ok432
  br label %loop.exit.107

choice.exit438:                                   ; preds = %str_ok432
  %var.load439 = load ptr, ptr %var.sc, align 8
  %fld.gep440 = getelementptr inbounds { ptr, i64 }, ptr %var.load439, i32 0, i32 0
  %fld.load441 = load ptr, ptr %fld.gep440, align 8
  %s.read.len442 = getelementptr inbounds { i64, ptr }, ptr %fld.load441, i32 0, i32 0
  %s.read.len443 = load i64, ptr %s.read.len442, align 8
  %s.read.len444 = and i64 %s.read.len443, 281474976710655
  %str.tag445 = lshr i64 %s.read.len443, 48
  %str.immortal446 = icmp eq i64 %str.tag445, 0
  br i1 %str.immortal446, label %str_ok448, label %str_gen_check447

str_gen_check447:                                 ; preds = %choice.exit438
  %arena.cur450 = call ptr @dva_arena_current()
  %tag.valid451 = call i1 @dva_arena_validate_tag(ptr %arena.cur450, i64 %str.tag445)
  br i1 %tag.valid451, label %str_ok448, label %str_stale449

str_ok448:                                        ; preds = %str_stale449, %str_gen_check447, %choice.exit438
  %s.read.data452 = getelementptr inbounds { i64, ptr }, ptr %fld.load441, i32 0, i32 1
  %s.read.data453 = load ptr, ptr %s.read.data452, align 8
  %var.load454 = load i64, ptr %"var.p3'", align 8
  %idx.neg455 = icmp slt i64 %var.load454, 0
  br i1 %idx.neg455, label %idx_oob458, label %idx_big_check456

str_stale449:                                     ; preds = %str_gen_check447
  %24 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok448

idx_big_check456:                                 ; preds = %str_ok448
  %idx.big459 = icmp sge i64 %var.load454, %s.read.len444
  br i1 %idx.big459, label %idx_oob458, label %idx_ok457

idx_ok457:                                        ; preds = %idx_oob458, %idx_big_check456
  %s.byte.gep460 = getelementptr i8, ptr %s.read.data453, i64 %var.load454
  %s.byte461 = load i8, ptr %s.byte.gep460, align 1
  %s.byte.val462 = zext i8 %s.byte461 to i64
  store i64 %s.byte.val462, ptr %var.ec, align 8
  %var.load463 = load i64, ptr %var.ec, align 8
  %cmptmp467 = icmp sge i64 %var.load463, 48
  br i1 %cmptmp467, label %and.108.then, label %and.108.else

idx_oob458:                                       ; preds = %idx_big_check456, %str_ok448
  %25 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok457

choice.exit464:                                   ; preds = %choice.next466, %choice.case465
  %choice.res469 = phi i1 [ true, %choice.case465 ], [ false, %choice.next466 ]
  br i1 %choice.res469, label %choice.then470, label %choice.else471

choice.case465:                                   ; preds = %and.108.exit
  br label %choice.exit464

choice.next466:                                   ; preds = %and.108.exit
  br label %choice.exit464

and.108.then:                                     ; preds = %idx_ok457
  %cmptmp468 = icmp sle i64 %var.load463, 57
  br label %and.108.exit

and.108.else:                                     ; preds = %idx_ok457
  br label %and.108.exit

and.108.exit:                                     ; preds = %and.108.else, %and.108.then
  %and.108.phi = phi i1 [ %cmptmp468, %and.108.then ], [ %cmptmp467, %and.108.else ]
  br i1 %and.108.phi, label %choice.case465, label %choice.next466

choice.then470:                                   ; preds = %choice.exit464
  store i1 true, ptr %"var.had_exp_digits'", align 1
  %var.load473 = load i64, ptr %var.ec, align 8
  %subtmp474 = sub i64 %var.load473, 48
  store i64 %subtmp474, ptr %var.ed, align 8
  %var.load475 = load i64, ptr %"var.ev'", align 8
  %cmptmp476 = icmp sgt i64 %var.load475, 1000000
  br i1 %cmptmp476, label %choice.then477, label %choice.else478

choice.else471:                                   ; preds = %choice.exit464
  br label %loop.exit.107

choice.exit472:                                   ; preds = %choice.exit479
  br label %loop.latch.107

choice.then477:                                   ; preds = %choice.then470
  store i1 true, ptr %"var.over_exp'", align 1
  br label %choice.exit479

choice.else478:                                   ; preds = %choice.then470
  %var.load480 = load i64, ptr %"var.ev'", align 8
  %multmp = mul i64 %var.load480, 10
  %var.load481 = load i64, ptr %var.ed, align 8
  %addtmp482 = add i64 %multmp, %var.load481
  store i64 %addtmp482, ptr %"var.ev'", align 8
  br label %choice.exit479

choice.exit479:                                   ; preds = %choice.else478, %choice.then477
  %var.load483 = load i64, ptr %"var.p3'", align 8
  %addtmp484 = add i64 %var.load483, 1
  store i64 %addtmp484, ptr %"var.p3'", align 8
  br label %choice.exit472

choice.then490:                                   ; preds = %loop.exit.107
  br label %choice.exit492

choice.else491:                                   ; preds = %loop.exit.107
  %var.load493 = load i64, ptr %"var.ev'", align 8
  br label %choice.exit492

choice.exit492:                                   ; preds = %choice.else491, %choice.then490
  %choice.res494 = phi i64 [ 1000000, %choice.then490 ], [ %var.load493, %choice.else491 ]
  store i64 %choice.res494, ptr %var.exp_val, align 8
  %var.load495 = load i1, ptr %"var.eneg'", align 1
  br i1 %var.load495, label %choice.then496, label %choice.else497

choice.then496:                                   ; preds = %choice.exit492
  %var.load499 = load i64, ptr %"var.exp10'", align 8
  %var.load500 = load i64, ptr %var.exp_val, align 8
  %subtmp501 = sub i64 %var.load499, %var.load500
  br label %choice.exit498

choice.else497:                                   ; preds = %choice.exit492
  %var.load502 = load i64, ptr %"var.exp10'", align 8
  %var.load503 = load i64, ptr %var.exp_val, align 8
  %addtmp504 = add i64 %var.load502, %var.load503
  br label %choice.exit498

choice.exit498:                                   ; preds = %choice.else497, %choice.then496
  %choice.res505 = phi i64 [ %subtmp501, %choice.then496 ], [ %addtmp504, %choice.else497 ]
  store i64 %choice.res505, ptr %"var.exp10'", align 8
  br label %choice.exit358

choice.then507:                                   ; preds = %choice.exit358
  %var.load509 = load i64, ptr %"var.exp10'", align 8
  %cmptmp510 = icmp slt i64 %var.load509, -400
  br i1 %cmptmp510, label %choice.then511, label %choice.else512

choice.exit508:                                   ; preds = %loop.exit.109, %choice.exit358
  %var.load547 = load i1, ptr %"var.had_int'", align 1
  br i1 %var.load547, label %and.110.then, label %and.110.else

choice.then511:                                   ; preds = %choice.then507
  br label %choice.exit513

choice.else512:                                   ; preds = %choice.then507
  %var.load514 = load i64, ptr %"var.exp10'", align 8
  %cmptmp515 = icmp sgt i64 %var.load514, 400
  br i1 %cmptmp515, label %choice.then516, label %choice.else517

choice.exit513:                                   ; preds = %choice.exit518, %choice.then511
  %choice.res521 = phi i64 [ -400, %choice.then511 ], [ %choice.res520, %choice.exit518 ]
  store i64 %choice.res521, ptr %var.eclamp, align 8
  %var.load522 = load i64, ptr %var.eclamp, align 8
  %cmptmp523 = icmp slt i64 %var.load522, 0
  br i1 %cmptmp523, label %choice.then524, label %choice.else525

choice.then516:                                   ; preds = %choice.else512
  br label %choice.exit518

choice.else517:                                   ; preds = %choice.else512
  %var.load519 = load i64, ptr %"var.exp10'", align 8
  br label %choice.exit518

choice.exit518:                                   ; preds = %choice.else517, %choice.then516
  %choice.res520 = phi i64 [ 400, %choice.then516 ], [ %var.load519, %choice.else517 ]
  br label %choice.exit513

choice.then524:                                   ; preds = %choice.exit513
  %var.load527 = load i64, ptr %var.eclamp, align 8
  %subtmp528 = sub i64 0, %var.load527
  br label %choice.exit526

choice.else525:                                   ; preds = %choice.exit513
  %var.load529 = load i64, ptr %var.eclamp, align 8
  br label %choice.exit526

choice.exit526:                                   ; preds = %choice.else525, %choice.then524
  %choice.res530 = phi i64 [ %subtmp528, %choice.then524 ], [ %var.load529, %choice.else525 ]
  store i64 %choice.res530, ptr %var.abs_e, align 8
  %var.load531 = load i64, ptr %var.abs_e, align 8
  store i64 0, ptr %loop.idx.109, align 8
  br label %loop.header.109

loop.header.109:                                  ; preds = %loop.latch.109, %choice.exit526
  %counter.load532 = load i64, ptr %loop.idx.109, align 8
  %loop.cond = icmp slt i64 %counter.load532, %var.load531
  br i1 %loop.cond, label %loop.body.109, label %loop.exit.nat.109

loop.body.109:                                    ; preds = %loop.header.109
  %loop.rel.i533 = sub i64 %counter.load532, 0
  store i64 1, ptr %loop.step.109, align 8
  store i64 %loop.rel.i533, ptr %var._i534, align 8
  store i64 %counter.load532, ptr %var._535, align 8
  %var.load536 = load i64, ptr %var.eclamp, align 8
  %cmptmp537 = icmp slt i64 %var.load536, 0
  br i1 %cmptmp537, label %choice.then538, label %choice.else539

loop.exit.nat.109:                                ; preds = %loop.header.109
  br label %loop.exit.109

loop.latch.109:                                   ; preds = %choice.exit540
  %step.val545 = load i64, ptr %loop.step.109, align 8
  %loop.next546 = add i64 %counter.load532, %step.val545
  store i64 %loop.next546, ptr %loop.idx.109, align 8
  br label %loop.header.109

loop.exit.109:                                    ; preds = %loop.exit.nat.109
  br label %choice.exit508

choice.then538:                                   ; preds = %loop.body.109
  %var.load541 = load double, ptr %"var.fv'", align 8
  %fdivtmp = fdiv double %var.load541, 1.000000e+01
  br label %choice.exit540

choice.else539:                                   ; preds = %loop.body.109
  %var.load542 = load double, ptr %"var.fv'", align 8
  %fmultmp543 = fmul double %var.load542, 1.000000e+01
  br label %choice.exit540

choice.exit540:                                   ; preds = %choice.else539, %choice.then538
  %choice.res544 = phi double [ %fdivtmp, %choice.then538 ], [ %fmultmp543, %choice.else539 ]
  store double %choice.res544, ptr %"var.fv'", align 8
  br label %loop.latch.109

and.110.then:                                     ; preds = %choice.exit508
  %var.load548 = load i1, ptr %var.has_dot, align 1
  %nottmp = xor i1 %var.load548, true
  br i1 %nottmp, label %or.111.then, label %or.111.else

and.110.else:                                     ; preds = %choice.exit508
  br label %and.110.exit

and.110.exit:                                     ; preds = %and.110.else, %or.111.exit
  %and.110.phi = phi i1 [ %or.111.phi, %or.111.exit ], [ %var.load547, %and.110.else ]
  br i1 %and.110.phi, label %and.112.then, label %and.112.else

or.111.then:                                      ; preds = %and.110.then
  br label %or.111.exit

or.111.else:                                      ; preds = %and.110.then
  %var.load549 = load i1, ptr %"var.had_frac'", align 1
  br label %or.111.exit

or.111.exit:                                      ; preds = %or.111.else, %or.111.then
  %or.111.phi = phi i1 [ %nottmp, %or.111.then ], [ %var.load549, %or.111.else ]
  br label %and.110.exit

and.112.then:                                     ; preds = %and.110.exit
  %var.load550 = load i1, ptr %var.has_exp, align 1
  %nottmp551 = xor i1 %var.load550, true
  br i1 %nottmp551, label %or.113.then, label %or.113.else

and.112.else:                                     ; preds = %and.110.exit
  br label %and.112.exit

and.112.exit:                                     ; preds = %and.112.else, %or.113.exit
  %and.112.phi = phi i1 [ %or.113.phi, %or.113.exit ], [ %and.110.phi, %and.112.else ]
  store i1 %and.112.phi, ptr %var.valid, align 1
  %var.load553 = load i1, ptr %var.valid, align 1
  br i1 %var.load553, label %choice.then554, label %choice.else555

or.113.then:                                      ; preds = %and.112.then
  br label %or.113.exit

or.113.else:                                      ; preds = %and.112.then
  %var.load552 = load i1, ptr %"var.had_exp'", align 1
  br label %or.113.exit

or.113.exit:                                      ; preds = %or.113.else, %or.113.then
  %or.113.phi = phi i1 [ %nottmp551, %or.113.then ], [ %var.load552, %or.113.else ]
  br label %and.112.exit

choice.then554:                                   ; preds = %and.112.exit
  %var.load557 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load557, label %choice.then558, label %choice.else559

choice.else555:                                   ; preds = %and.112.exit
  %arena.cur572 = call ptr @dva_arena_current()
  %err.alloc573 = call ptr @dva_arena_alloc(ptr %arena.cur572, i64 56)
  %err.code.gep574 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 0
  store i64 400, ptr %err.code.gep574, align 8
  %err.msg.gep575 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep575, align 8
  %err.file.gep576 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep576, align 8
  %err.line.gep577 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 3
  store i64 0, ptr %err.line.gep577, align 8
  %err.col.gep578 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 4
  store i64 0, ptr %err.col.gep578, align 8
  %err.ctx.gep579 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc573, i32 0, i32 5
  %var.load580 = load i64, ptr %"var.p'", align 8
  %arena.cur581 = call ptr @dva_arena_current()
  %rec.alloc582 = call ptr @dva_arena_alloc(ptr %arena.cur581, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld583 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc582, i32 0, i32 0
  store i64 %var.load580, ptr %rec.fld583, align 8
  %rec.fld584 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc582, i32 0, i32 1
  store i64 0, ptr %rec.fld584, align 8
  %ctx.0.gep585 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc582, i32 0, i32 0
  %ctx.0586 = load i64, ptr %ctx.0.gep585, align 8
  %ctx.1.gep587 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc582, i32 0, i32 1
  %ctx.1588 = load i64, ptr %ctx.1.gep587, align 8
  %err.ctx0.gep589 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep579, i32 0, i32 0
  store i64 %ctx.0586, ptr %err.ctx0.gep589, align 8
  %err.ctx1.gep590 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep579, i32 0, i32 1
  store i64 %ctx.1588, ptr %err.ctx1.gep590, align 8
  %p.to.i64591 = ptrtoint ptr %err.alloc573 to i64
  %ram.pay592 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64591, 1
  br label %choice.exit556

choice.exit556:                                   ; preds = %choice.else555, %choice.exit560
  %choice.res593 = phi { i1, i64 } [ %ram.pay571, %choice.exit560 ], [ %ram.pay592, %choice.else555 ]
  br label %choice.exit103

choice.then558:                                   ; preds = %choice.then554
  %var.load561 = load double, ptr %"var.fv'", align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load561
  br label %choice.exit560

choice.else559:                                   ; preds = %choice.then554
  %var.load562 = load double, ptr %"var.fv'", align 8
  br label %choice.exit560

choice.exit560:                                   ; preds = %choice.else559, %choice.then558
  %choice.res563 = phi double [ %fsubtmp, %choice.then558 ], [ %var.load562, %choice.else559 ]
  store double %choice.res563, ptr %var.f, align 8
  %var.load564 = load ptr, ptr %var.sc, align 8
  %var.load565 = load i64, ptr %"var.p2'", align 8
  %fld.gep566 = getelementptr inbounds { ptr, i64 }, ptr %var.load564, i32 0, i32 1
  store i64 %var.load565, ptr %fld.gep566, align 8
  %arena.cur567 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur567, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load568 = load double, ptr %var.f, align 8
  %arena.cur569 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur569, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store double %var.load568, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64570 = ptrtoint ptr %enum.alloc to i64
  %ram.pay571 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64570, 1
  br label %choice.exit556
}

define internal { i1, i64 } @"json::#parse_array_after_value"(ptr %0, ptr %1, { i1, i64 } %2) #1 {
entry:
  %var.e = alloca ptr, align 8
  %var._188 = alloca ptr, align 8
  %var.c2 = alloca i64, align 8
  %var.p2 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.val = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.v = alloca { i1, i64 }, align 8
  %var.elems = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store ptr %1, ptr %var.elems, align 8
  store { i1, i64 } %2, ptr %var.v, align 8
  %var.load = load { i1, i64 }, ptr %var.v, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.val, align 8
  %a.load = load ptr, ptr %var.elems, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %entry
  %ram.pay186 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr187 = inttoptr i64 %ram.pay186 to ptr
  store ptr %pay.ptr187, ptr %var._188, align 8
  store ptr %pay.ptr187, ptr %var.e, align 8
  %var.load189 = load ptr, ptr %var.e, align 8
  %p.to.i64190 = ptrtoint ptr %var.load189 to i64
  %ram.pay191 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64190, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit36
  %choice.res192 = phi { i1, i64 } [ %choice.res185, %choice.exit36 ], [ %ram.pay191, %choice.else ]
  ret { i1, i64 } %choice.res192

a.create:                                         ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create2, ptr %var.elems, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.elems, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len4 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap5 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len4, %a.cap5
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data6 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len7 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data6, i64 %a.cur.len7
  %slot.p2i = ptrtoint ptr %var.load1 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len7, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load8 = load ptr, ptr %var.sc, align 8
  %var.load9 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load9, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load8, i64 %fld.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load10 = load ptr, ptr %var.sc, align 8
  %var.load11 = load i64, ptr %var.p, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load10, i32 0, i32 1
  store i64 %var.load11, ptr %fld.gep12, align 8
  %var.load13 = load i64, ptr %var.p, align 8
  %var.load15 = load ptr, ptr %var.sc, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64 }, ptr %var.load15, i32 0, i32 0
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 0
  %str.len.query18 = load i64, ptr %str.len.query, align 8
  %str.len.query19 = and i64 %str.len.query18, 281474976710655
  %str.tag = lshr i64 %str.len.query18, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit14:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load35 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load35, 93
  br i1 %val.match, label %choice.case37, label %choice.next38

choice.case:                                      ; preds = %str_ok
  %var.load21 = load ptr, ptr %var.sc, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %str.tag26 = lshr i64 %s.read.len24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

choice.next:                                      ; preds = %str_ok
  br label %choice.exit14

str_gen_check:                                    ; preds = %a.store
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %a.store
  %cmptmp = icmp slt i64 %var.load13, %str.len.query19
  br i1 %cmptmp, label %choice.case, label %choice.next

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check28:                                  ; preds = %choice.case
  %arena.cur31 = call ptr @dva_arena_current()
  %tag.valid32 = call i1 @dva_arena_validate_tag(ptr %arena.cur31, i64 %str.tag26)
  br i1 %tag.valid32, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 1
  %s.read.data33 = load ptr, ptr %s.read.data, align 8
  %var.load34 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load34, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale30:                                      ; preds = %str_gen_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29

idx_big_check:                                    ; preds = %str_ok29
  %idx.big = icmp sge i64 %var.load34, %s.read.len25
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data33, i64 %var.load34
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit14

idx_oob:                                          ; preds = %idx_big_check, %str_ok29
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit36:                                    ; preds = %choice.next81, %choice.exit138, %a.view.off76
  %choice.res185 = phi { i1, i64 } [ %ram.pay79, %a.view.off76 ], [ %choice.res163, %choice.exit138 ], [ %ram.pay184, %choice.next81 ]
  br label %choice.exit

choice.case37:                                    ; preds = %choice.exit14
  %var.load39 = load ptr, ptr %var.sc, align 8
  %var.load40 = load ptr, ptr %var.sc, align 8
  %fld.gep41 = getelementptr inbounds { ptr, i64 }, ptr %var.load40, i32 0, i32 1
  %fld.load42 = load i64, ptr %fld.gep41, align 8
  %addtmp = add i64 %fld.load42, 1
  %fld.gep43 = getelementptr inbounds { ptr, i64 }, ptr %var.load39, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep43, align 8
  %var.load44 = load ptr, ptr %var.elems, align 8
  %a.load45 = load ptr, ptr %var.elems, align 8
  %a.null46 = icmp eq ptr %a.load45, null
  br i1 %a.null46, label %a.create47, label %a.after48

choice.next38:                                    ; preds = %choice.exit14
  %val.match82 = icmp eq i64 %var.load35, 44
  br i1 %val.match82, label %choice.case80, label %choice.next81

a.create47:                                       ; preds = %choice.case37
  %arena.cur49 = call ptr @dva_arena_current()
  %a.create50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 24)
  %arena.cur51 = call ptr @dva_arena_current()
  %a.buf52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 128)
  %a.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create50, i32 0, i32 0
  store i64 0, ptr %a.len.gep53, align 8
  %a.data.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create50, i32 0, i32 1
  store ptr %a.buf52, ptr %a.data.gep54, align 8
  %a.cap.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create50, i32 0, i32 2
  store i64 16, ptr %a.cap.gep55, align 8
  store ptr %a.create50, ptr %var.elems, align 8
  br label %a.after48

a.after48:                                        ; preds = %a.create47, %choice.case37
  %a.load256 = load ptr, ptr %var.elems, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load256, i32 0, i32 0
  %a.len.query57 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query57, ptr %var.n, align 8
  %arena.cur58 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load59 = load ptr, ptr %var.elems, align 8
  %a.load60 = load ptr, ptr %var.elems, align 8
  %a.null61 = icmp eq ptr %a.load60, null
  br i1 %a.null61, label %a.create62, label %a.after63

a.create62:                                       ; preds = %a.after48
  %arena.cur64 = call ptr @dva_arena_current()
  %a.create65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 24)
  %arena.cur66 = call ptr @dva_arena_current()
  %a.buf67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 128)
  %a.len.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 0
  store i64 0, ptr %a.len.gep68, align 8
  %a.data.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 1
  store ptr %a.buf67, ptr %a.data.gep69, align 8
  %a.cap.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 2
  store i64 16, ptr %a.cap.gep70, align 8
  store ptr %a.create65, ptr %var.elems, align 8
  br label %a.after63

a.after63:                                        ; preds = %a.create62, %a.after48
  %a.load271 = load ptr, ptr %var.elems, align 8
  %var.load72 = load i64, ptr %var.n, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load271, i32 0, i32 0
  %a.view.len73 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len73, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len73
  %final.start = select i1 %start.gt.len, i64 %a.view.len73, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load72, 0
  %rel.end = add i64 %a.view.len73, %var.load72
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load72
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len73
  %final.end = select i1 %end.gt.len, i64 %a.view.len73, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load271, i32 0, i32 1
  %a.view.data74 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off75, 0
  %ovf = extractvalue { i64, i1 } %a.view.off75, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off76

a.view.off76:                                     ; preds = %str_overflow_abort, %a.after63
  %a.view.data77 = getelementptr i8, ptr %a.view.data74, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur78 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data77, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay79 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit36

str_overflow_abort:                               ; preds = %a.after63
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %a.view.off76

choice.case80:                                    ; preds = %choice.next38
  %var.load83 = load ptr, ptr %var.sc, align 8
  %var.load84 = load ptr, ptr %var.sc, align 8
  %fld.gep85 = getelementptr inbounds { ptr, i64 }, ptr %var.load84, i32 0, i32 1
  %fld.load86 = load i64, ptr %fld.gep85, align 8
  %addtmp87 = add i64 %fld.load86, 1
  %fld.gep88 = getelementptr inbounds { ptr, i64 }, ptr %var.load83, i32 0, i32 1
  store i64 %addtmp87, ptr %fld.gep88, align 8
  %var.load89 = load ptr, ptr %var.sc, align 8
  %var.load90 = load ptr, ptr %var.sc, align 8
  %fld.gep91 = getelementptr inbounds { ptr, i64 }, ptr %var.load90, i32 0, i32 1
  %fld.load92 = load i64, ptr %fld.gep91, align 8
  %call.res93 = call i64 @"json::#skip_ws"(ptr %var.load89, i64 %fld.load92)
  store i64 %call.res93, ptr %var.p2, align 8
  %var.load94 = load i64, ptr %var.p2, align 8
  %var.load98 = load ptr, ptr %var.sc, align 8
  %fld.gep99 = getelementptr inbounds { ptr, i64 }, ptr %var.load98, i32 0, i32 0
  %fld.load100 = load ptr, ptr %fld.gep99, align 8
  %str.len.query101 = getelementptr inbounds { i64, ptr }, ptr %fld.load100, i32 0, i32 0
  %str.len.query102 = load i64, ptr %str.len.query101, align 8
  %str.len.query103 = and i64 %str.len.query102, 281474976710655
  %str.tag104 = lshr i64 %str.len.query102, 48
  %str.immortal105 = icmp eq i64 %str.tag104, 0
  br i1 %str.immortal105, label %str_ok107, label %str_gen_check106

choice.next81:                                    ; preds = %choice.next38
  %arena.cur164 = call ptr @dva_arena_current()
  %err.alloc165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 56)
  %err.code.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 0
  store i64 400, ptr %err.code.gep166, align 8
  %err.msg.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep167, align 8
  %err.file.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep168, align 8
  %err.line.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 3
  store i64 0, ptr %err.line.gep169, align 8
  %err.col.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 4
  store i64 0, ptr %err.col.gep170, align 8
  %err.ctx.gep171 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc165, i32 0, i32 5
  %var.load172 = load i64, ptr %var.p, align 8
  %arena.cur173 = call ptr @dva_arena_current()
  %rec.alloc174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld175 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc174, i32 0, i32 0
  store i64 %var.load172, ptr %rec.fld175, align 8
  %rec.fld176 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc174, i32 0, i32 1
  store i64 0, ptr %rec.fld176, align 8
  %ctx.0.gep177 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc174, i32 0, i32 0
  %ctx.0178 = load i64, ptr %ctx.0.gep177, align 8
  %ctx.1.gep179 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc174, i32 0, i32 1
  %ctx.1180 = load i64, ptr %ctx.1.gep179, align 8
  %err.ctx0.gep181 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep171, i32 0, i32 0
  store i64 %ctx.0178, ptr %err.ctx0.gep181, align 8
  %err.ctx1.gep182 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep171, i32 0, i32 1
  store i64 %ctx.1180, ptr %err.ctx1.gep182, align 8
  %p.to.i64183 = ptrtoint ptr %err.alloc165 to i64
  %ram.pay184 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64183, 1
  br label %choice.exit36

choice.exit95:                                    ; preds = %choice.next97, %idx_ok130
  %choice.res136 = phi i64 [ %s.byte.val135, %idx_ok130 ], [ -1, %choice.next97 ]
  store i64 %choice.res136, ptr %var.c2, align 8
  %var.load137 = load i64, ptr %var.c2, align 8
  %val.match141 = icmp eq i64 %var.load137, 93
  br i1 %val.match141, label %choice.case139, label %choice.next140

choice.case96:                                    ; preds = %str_ok107
  %var.load112 = load ptr, ptr %var.sc, align 8
  %fld.gep113 = getelementptr inbounds { ptr, i64 }, ptr %var.load112, i32 0, i32 0
  %fld.load114 = load ptr, ptr %fld.gep113, align 8
  %s.read.len115 = getelementptr inbounds { i64, ptr }, ptr %fld.load114, i32 0, i32 0
  %s.read.len116 = load i64, ptr %s.read.len115, align 8
  %s.read.len117 = and i64 %s.read.len116, 281474976710655
  %str.tag118 = lshr i64 %s.read.len116, 48
  %str.immortal119 = icmp eq i64 %str.tag118, 0
  br i1 %str.immortal119, label %str_ok121, label %str_gen_check120

choice.next97:                                    ; preds = %str_ok107
  br label %choice.exit95

str_gen_check106:                                 ; preds = %choice.case80
  %arena.cur109 = call ptr @dva_arena_current()
  %tag.valid110 = call i1 @dva_arena_validate_tag(ptr %arena.cur109, i64 %str.tag104)
  br i1 %tag.valid110, label %str_ok107, label %str_stale108

str_ok107:                                        ; preds = %str_stale108, %str_gen_check106, %choice.case80
  %cmptmp111 = icmp slt i64 %var.load94, %str.len.query103
  br i1 %cmptmp111, label %choice.case96, label %choice.next97

str_stale108:                                     ; preds = %str_gen_check106
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok107

str_gen_check120:                                 ; preds = %choice.case96
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid124 = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %str.tag118)
  br i1 %tag.valid124, label %str_ok121, label %str_stale122

str_ok121:                                        ; preds = %str_stale122, %str_gen_check120, %choice.case96
  %s.read.data125 = getelementptr inbounds { i64, ptr }, ptr %fld.load114, i32 0, i32 1
  %s.read.data126 = load ptr, ptr %s.read.data125, align 8
  %var.load127 = load i64, ptr %var.p2, align 8
  %idx.neg128 = icmp slt i64 %var.load127, 0
  br i1 %idx.neg128, label %idx_oob131, label %idx_big_check129

str_stale122:                                     ; preds = %str_gen_check120
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok121

idx_big_check129:                                 ; preds = %str_ok121
  %idx.big132 = icmp sge i64 %var.load127, %s.read.len117
  br i1 %idx.big132, label %idx_oob131, label %idx_ok130

idx_ok130:                                        ; preds = %idx_oob131, %idx_big_check129
  %s.byte.gep133 = getelementptr i8, ptr %s.read.data126, i64 %var.load127
  %s.byte134 = load i8, ptr %s.byte.gep133, align 1
  %s.byte.val135 = zext i8 %s.byte134 to i64
  br label %choice.exit95

idx_oob131:                                       ; preds = %idx_big_check129, %str_ok121
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok130

choice.exit138:                                   ; preds = %a.after153, %choice.case139
  %choice.res163 = phi { i1, i64 } [ %ram.pay147, %choice.case139 ], [ %call.res162, %a.after153 ]
  br label %choice.exit36

choice.case139:                                   ; preds = %choice.exit95
  %arena.cur142 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.22.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load143 = load i64, ptr %var.p2, align 8
  %arena.cur144 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load143, ptr %rec.fld, align 8
  %rec.fld145 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld145, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64146 = ptrtoint ptr %err.alloc to i64
  %ram.pay147 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64146, 1
  br label %choice.exit138

choice.next140:                                   ; preds = %choice.exit95
  %var.load148 = load ptr, ptr %var.sc, align 8
  %var.load149 = load ptr, ptr %var.elems, align 8
  %a.load150 = load ptr, ptr %var.elems, align 8
  %a.null151 = icmp eq ptr %a.load150, null
  br i1 %a.null151, label %a.create152, label %a.after153

a.create152:                                      ; preds = %choice.next140
  %arena.cur154 = call ptr @dva_arena_current()
  %a.create155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 24)
  %arena.cur156 = call ptr @dva_arena_current()
  %a.buf157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 128)
  %a.len.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create155, i32 0, i32 0
  store i64 0, ptr %a.len.gep158, align 8
  %a.data.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create155, i32 0, i32 1
  store ptr %a.buf157, ptr %a.data.gep159, align 8
  %a.cap.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create155, i32 0, i32 2
  store i64 16, ptr %a.cap.gep160, align 8
  store ptr %a.create155, ptr %var.elems, align 8
  br label %a.after153

a.after153:                                       ; preds = %a.create152, %choice.next140
  %a.load2161 = load ptr, ptr %var.elems, align 8
  %call.res162 = call { i1, i64 } @"json::#parse_array_loop"(ptr %var.load148, ptr %a.load2161)
  br label %choice.exit138
}

define { i1, i64 } @"json::parse"(ptr %0) #1 {
entry:
  %var.r = alloca { i1, i64 }, align 8
  %var.sc = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %var.sc, align 8
  %var.load2 = load ptr, ptr %var.sc, align 8
  %call.res = call { i1, i64 } @"json::#parse_value"(ptr %var.load2)
  store { i1, i64 } %call.res, ptr %var.r, align 8
  %var.load3 = load ptr, ptr %var.sc, align 8
  %var.load4 = load { i1, i64 }, ptr %var.r, align 8
  %call.res5 = call { i1, i64 } @"json::#parse_finish"(ptr %var.load3, { i1, i64 } %var.load4)
  ret { i1, i64 } %call.res5
}

define internal { i1, i64 } @"json::#parse_finish"(ptr %0, { i1, i64 } %1) #1 {
entry:
  %var.err = alloca ptr, align 8
  %var._22 = alloca ptr, align 8
  %var.p = alloca i64, align 8
  %var.val = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.r = alloca { i1, i64 }, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store { i1, i64 } %1, ptr %var.r, align 8
  %var.load = load { i1, i64 }, ptr %var.r, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %var.load2 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %var.load1, i64 %fld.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag = lshr i64 %str.len.query7, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.else:                                      ; preds = %entry
  %ram.pay20 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr21 = inttoptr i64 %ram.pay20 to ptr
  store ptr %pay.ptr21, ptr %var._22, align 8
  store ptr %pay.ptr21, ptr %var.err, align 8
  %var.load23 = load ptr, ptr %var.err, align 8
  %p.to.i6424 = ptrtoint ptr %var.load23 to i64
  %ram.pay25 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6424, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit11
  %choice.res26 = phi { i1, i64 } [ %choice.res, %choice.exit11 ], [ %ram.pay25, %choice.else ]
  ret { i1, i64 } %choice.res26

str_gen_check:                                    ; preds = %choice.then
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.then
  %cmptmp = icmp eq i64 %var.load3, %str.len.query8
  br i1 %cmptmp, label %choice.then9, label %choice.else10

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

choice.then9:                                     ; preds = %str_ok
  %var.load12 = load ptr, ptr %var.val, align 8
  %p.to.i64 = ptrtoint ptr %var.load12 to i64
  %ram.pay13 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit11

choice.else10:                                    ; preds = %str_ok
  %arena.cur14 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 400, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.24.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %var.load15 = load i64, ptr %var.p, align 8
  %arena.cur16 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load15, ptr %rec.fld, align 8
  %rec.fld17 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld17, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6418 = ptrtoint ptr %err.alloc to i64
  %ram.pay19 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6418, 1
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %choice.then9
  %choice.res = phi { i1, i64 } [ %ram.pay13, %choice.then9 ], [ %ram.pay19, %choice.else10 ]
  br label %choice.exit
}

define internal ptr @"json::#json_type_err"(ptr %0) #1 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %var.load = load ptr, ptr %var.msg, align 8
  %concat.lhs = load i64, ptr @str.25.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %str.tag = lshr i64 %concat.lhs, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur2, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %concat.lhs3 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.25.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs4 = load i64, ptr %concat.rhs, align 8
  %concat.rhs5 = and i64 %concat.rhs4, 281474976710655
  %str.tag6 = lshr i64 %concat.rhs4, 48
  %str.immortal7 = icmp eq i64 %str.tag6, 0
  br i1 %str.immortal7, label %str_ok9, label %str_gen_check8

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check8:                                   ; preds = %str_ok
  %arena.cur11 = call ptr @dva_arena_current()
  %tag.valid12 = call i1 @dva_arena_validate_tag(ptr %arena.cur11, i64 %str.tag6)
  br i1 %tag.valid12, label %str_ok9, label %str_stale10

str_ok9:                                          ; preds = %str_stale10, %str_gen_check8, %str_ok
  %concat.rhs13 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs14 = load ptr, ptr %concat.rhs13, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs5)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len15

str_stale10:                                      ; preds = %str_gen_check8
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok9

concat.sum.len15:                                 ; preds = %str_overflow_abort, %str_ok9
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum16 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf17 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf17, label %str_overflow_abort19, label %concat.tot.len18

str_overflow_abort:                               ; preds = %str_ok9
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len15

concat.tot.len18:                                 ; preds = %str_overflow_abort19, %concat.sum.len15
  %arena.cur20 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 %sum16)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs3, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs14, i64 %concat.rhs5, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur21 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 422, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr %concat.str, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur22 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld23 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld23, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  ret ptr %err.alloc

str_overflow_abort19:                             ; preds = %concat.sum.len15
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len18
}

define internal i32 @"json::#hex_digit"(i64 %0) #1 {
entry:
  %var.d = alloca i64, align 8
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %bandtmp = and i64 %var.load, 15
  store i64 %bandtmp, ptr %var.d, align 8
  %var.load1 = load i64, ptr %var.d, align 8
  %cmptmp = icmp slt i64 %var.load1, 10
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.d, align 8
  %coerce.trunc = trunc i64 %var.load2 to i32
  %addtmp = add i32 48, %coerce.trunc
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load i64, ptr %var.d, align 8
  %subtmp = sub i64 %var.load3, 10
  %coerce.trunc4 = trunc i64 %subtmp to i32
  %addtmp5 = add i32 97, %coerce.trunc4
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i32 [ %addtmp, %choice.then ], [ %addtmp5, %choice.else ]
  ret i32 %choice.res
}

define void @"json::escape_string_into"(ptr %0, ptr %1) #1 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.115 = alloca i64, align 8
  %loop.idx.115 = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.s, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

b.rn.new.len2:                                    ; preds = %str_overflow_abort, %entry
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %b.rn.data10 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data10, i64 %b.rn.cur.len1
  br i1 true, label %br.b1.114, label %br.c2.114

b.new.buf.len28:                                  ; preds = %str_overflow_abort9, %b.grow2
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
  br label %b.new.buf.len28

br.b1.114:                                        ; preds = %b.grow_done
  store i8 34, ptr %b.rn.dst, align 1
  br label %br.done.114

br.c2.114:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.114, label %br.c3.114

br.b2.114:                                        ; preds = %br.c2.114
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -94, ptr %br.dst1, align 1
  br label %br.done.114

br.c3.114:                                        ; preds = %br.c2.114
  br i1 true, label %br.b3.114, label %br.b4.114

br.b3.114:                                        ; preds = %br.c3.114
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -94, ptr %br.dst2.3, align 1
  br label %br.done.114

br.b4.114:                                        ; preds = %br.c3.114
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -94, ptr %br.dst3.4, align 1
  br label %br.done.114

br.done.114:                                      ; preds = %br.b4.114, %br.b3.114, %br.b2.114, %br.b1.114
  %br.nul = getelementptr i8, ptr %b.rn.data10, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag = lshr i64 %str.len.query11, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %br.done.114
  %arena.cur13 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur13, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %br.done.114
  store i64 0, ptr %loop.idx.115, align 8
  br label %loop.header.115

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.115:                                  ; preds = %loop.latch.115, %str_ok
  %counter.load = load i64, ptr %loop.idx.115, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query12
  br i1 %loop.cond, label %loop.body.115, label %loop.exit.nat.115

loop.body.115:                                    ; preds = %loop.header.115
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.115, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %str.tag17 = lshr i64 %s.read.len15, 48
  %str.immortal18 = icmp eq i64 %str.tag17, 0
  br i1 %str.immortal18, label %str_ok20, label %str_gen_check19

loop.exit.nat.115:                                ; preds = %loop.header.115
  br label %loop.exit.115

loop.latch.115:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.115, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.115, align 8
  br label %loop.header.115

loop.exit.115:                                    ; preds = %loop.exit.nat.115
  %b.load570 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len571 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 0
  %b.rn.cur.len572 = load i64, ptr %b.rn.cur.len571, align 8
  %b.rn.new.len573 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len572, i64 1)
  %sum574 = extractvalue { i64, i1 } %b.rn.new.len573, 0
  %ovf575 = extractvalue { i64, i1 } %b.rn.new.len573, 1
  br i1 %ovf575, label %str_overflow_abort577, label %b.rn.new.len576

str_gen_check19:                                  ; preds = %loop.body.115
  %arena.cur22 = call ptr @dva_arena_current()
  %tag.valid23 = call i1 @dva_arena_validate_tag(ptr %arena.cur22, i64 %str.tag17)
  br i1 %tag.valid23, label %str_ok20, label %str_stale21

str_ok20:                                         ; preds = %str_stale21, %str_gen_check19, %loop.body.115
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data, align 8
  %var.load25 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load25, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale21:                                      ; preds = %str_gen_check19
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok20

idx_big_check:                                    ; preds = %str_ok20
  %idx.big = icmp sge i64 %var.load25, %s.read.len16
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data24, i64 %var.load25
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %bandtmp = and i64 %s.byte.val, 255
  store i64 %bandtmp, ptr %var.c, align 8
  %var.load26 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load26, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %str_ok20
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

choice.exit:                                      ; preds = %b.push_done, %br.done.117, %b.grow_done348, %b.grow_done297, %b.grow_done246, %b.grow_done195, %b.grow_done144, %b.grow_done93, %b.grow_done46
  br label %loop.latch.115

choice.case:                                      ; preds = %idx_ok
  %b.load27 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.26.struct, align 8
  %app.str.len28 = and i64 %app.str.len, 281474976710655
  %str.tag29 = lshr i64 %app.str.len, 48
  %str.immortal30 = icmp eq i64 %str.tag29, 0
  br i1 %str.immortal30, label %str_ok32, label %str_gen_check31

choice.next:                                      ; preds = %idx_ok
  %val.match70 = icmp eq i64 %var.load26, 92
  br i1 %val.match70, label %choice.case68, label %choice.next69

str_gen_check31:                                  ; preds = %choice.case
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid35 = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag29)
  br i1 %tag.valid35, label %str_ok32, label %str_stale33

str_ok32:                                         ; preds = %str_stale33, %str_gen_check31, %choice.case
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 0
  %b.app.cur.len36 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len36, i64 %app.str.len28)
  %sum37 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf38 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.app.new.len39

str_stale33:                                      ; preds = %str_gen_check31
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok32

b.app.new.len39:                                  ; preds = %str_overflow_abort40, %str_ok32
  %b.cap41 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 2
  %b.cap42 = load i64, ptr %b.cap41, align 8
  %b.need.grow43 = icmp slt i64 %b.cap42, %sum37
  br i1 %b.need.grow43, label %b.grow244, label %b.nogrow245

str_overflow_abort40:                             ; preds = %str_ok32
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len39

b.grow244:                                        ; preds = %b.app.new.len39
  %b.cap247 = mul i64 %b.cap42, 2
  %b.cap.small48 = icmp slt i64 %b.cap247, 16
  %b.cap.grow49 = select i1 %b.cap.small48, i64 16, i64 %b.cap247
  %b.cap.need50 = icmp slt i64 %b.cap.grow49, %sum37
  %b.new.cap51 = select i1 %b.cap.need50, i64 %sum37, i64 %b.cap.grow49
  %b.cur.len252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 0
  %b.cur.len253 = load i64, ptr %b.cur.len252, align 8
  %b.cur.data254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 1
  %b.cur.data255 = load ptr, ptr %b.cur.data254, align 8
  %b.new.buf.len256 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap51, i64 1)
  %sum57 = extractvalue { i64, i1 } %b.new.buf.len256, 0
  %ovf58 = extractvalue { i64, i1 } %b.new.buf.len256, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.new.buf.len259

b.nogrow245:                                      ; preds = %b.app.new.len39
  br label %b.grow_done46

b.grow_done46:                                    ; preds = %b.nogrow245, %b.new.buf.len259
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 1
  %b.app.data66 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data66, i64 %b.app.cur.len36
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len28, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data66, i64 %sum37
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 0
  store i64 %sum37, ptr %b.len.gep67, align 8
  br label %choice.exit

b.new.buf.len259:                                 ; preds = %str_overflow_abort60, %b.grow244
  %arena.cur61 = call ptr @dva_arena_current()
  %b.new.buf262 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum57)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf262, ptr align 1 %b.cur.data255, i64 %b.cur.len253, i1 false)
  %b.grow2.nul63 = getelementptr i8, ptr %b.new.buf262, i64 %b.cur.len253
  store i8 0, ptr %b.grow2.nul63, align 1
  %b.new.data2.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 1
  store ptr %b.new.buf262, ptr %b.new.data2.gep64, align 8
  %b.new.cap2.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load27, i32 0, i32 2
  store i64 %b.new.cap51, ptr %b.new.cap2.gep65, align 8
  br label %b.grow_done46

str_overflow_abort60:                             ; preds = %b.grow244
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len259

choice.case68:                                    ; preds = %choice.next
  %b.load71 = load ptr, ptr %var.b, align 8
  %app.str.len72 = load i64, ptr @str.27.struct, align 8
  %app.str.len73 = and i64 %app.str.len72, 281474976710655
  %str.tag74 = lshr i64 %app.str.len72, 48
  %str.immortal75 = icmp eq i64 %str.tag74, 0
  br i1 %str.immortal75, label %str_ok77, label %str_gen_check76

choice.next69:                                    ; preds = %choice.next
  %val.match121 = icmp eq i64 %var.load26, 8
  br i1 %val.match121, label %choice.case119, label %choice.next120

str_gen_check76:                                  ; preds = %choice.case68
  %arena.cur79 = call ptr @dva_arena_current()
  %tag.valid80 = call i1 @dva_arena_validate_tag(ptr %arena.cur79, i64 %str.tag74)
  br i1 %tag.valid80, label %str_ok77, label %str_stale78

str_ok77:                                         ; preds = %str_stale78, %str_gen_check76, %choice.case68
  %b.app.cur.len81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 0
  %b.app.cur.len82 = load i64, ptr %b.app.cur.len81, align 8
  %b.app.new.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len82, i64 %app.str.len73)
  %sum84 = extractvalue { i64, i1 } %b.app.new.len83, 0
  %ovf85 = extractvalue { i64, i1 } %b.app.new.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %b.app.new.len86

str_stale78:                                      ; preds = %str_gen_check76
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok77

b.app.new.len86:                                  ; preds = %str_overflow_abort87, %str_ok77
  %b.cap88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 2
  %b.cap89 = load i64, ptr %b.cap88, align 8
  %b.need.grow90 = icmp slt i64 %b.cap89, %sum84
  br i1 %b.need.grow90, label %b.grow291, label %b.nogrow292

str_overflow_abort87:                             ; preds = %str_ok77
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len86

b.grow291:                                        ; preds = %b.app.new.len86
  %b.cap294 = mul i64 %b.cap89, 2
  %b.cap.small95 = icmp slt i64 %b.cap294, 16
  %b.cap.grow96 = select i1 %b.cap.small95, i64 16, i64 %b.cap294
  %b.cap.need97 = icmp slt i64 %b.cap.grow96, %sum84
  %b.new.cap98 = select i1 %b.cap.need97, i64 %sum84, i64 %b.cap.grow96
  %b.cur.len299 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 0
  %b.cur.len2100 = load i64, ptr %b.cur.len299, align 8
  %b.cur.data2101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 1
  %b.cur.data2102 = load ptr, ptr %b.cur.data2101, align 8
  %b.new.buf.len2103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap98, i64 1)
  %sum104 = extractvalue { i64, i1 } %b.new.buf.len2103, 0
  %ovf105 = extractvalue { i64, i1 } %b.new.buf.len2103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.new.buf.len2106

b.nogrow292:                                      ; preds = %b.app.new.len86
  br label %b.grow_done93

b.grow_done93:                                    ; preds = %b.nogrow292, %b.new.buf.len2106
  %app.str.data113 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %b.app.data114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 1
  %b.app.data115 = load ptr, ptr %b.app.data114, align 8
  %b.app.dst116 = getelementptr i8, ptr %b.app.data115, i64 %b.app.cur.len82
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst116, ptr align 1 %app.str.data113, i64 %app.str.len73, i1 false)
  %b.app.nul117 = getelementptr i8, ptr %b.app.data115, i64 %sum84
  store i8 0, ptr %b.app.nul117, align 1
  %b.len.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 0
  store i64 %sum84, ptr %b.len.gep118, align 8
  br label %choice.exit

b.new.buf.len2106:                                ; preds = %str_overflow_abort107, %b.grow291
  %arena.cur108 = call ptr @dva_arena_current()
  %b.new.buf2109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 %sum104)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2109, ptr align 1 %b.cur.data2102, i64 %b.cur.len2100, i1 false)
  %b.grow2.nul110 = getelementptr i8, ptr %b.new.buf2109, i64 %b.cur.len2100
  store i8 0, ptr %b.grow2.nul110, align 1
  %b.new.data2.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 1
  store ptr %b.new.buf2109, ptr %b.new.data2.gep111, align 8
  %b.new.cap2.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load71, i32 0, i32 2
  store i64 %b.new.cap98, ptr %b.new.cap2.gep112, align 8
  br label %b.grow_done93

str_overflow_abort107:                            ; preds = %b.grow291
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2106

choice.case119:                                   ; preds = %choice.next69
  %b.load122 = load ptr, ptr %var.b, align 8
  %app.str.len123 = load i64, ptr @str.28.struct, align 8
  %app.str.len124 = and i64 %app.str.len123, 281474976710655
  %str.tag125 = lshr i64 %app.str.len123, 48
  %str.immortal126 = icmp eq i64 %str.tag125, 0
  br i1 %str.immortal126, label %str_ok128, label %str_gen_check127

choice.next120:                                   ; preds = %choice.next69
  %val.match172 = icmp eq i64 %var.load26, 12
  br i1 %val.match172, label %choice.case170, label %choice.next171

str_gen_check127:                                 ; preds = %choice.case119
  %arena.cur130 = call ptr @dva_arena_current()
  %tag.valid131 = call i1 @dva_arena_validate_tag(ptr %arena.cur130, i64 %str.tag125)
  br i1 %tag.valid131, label %str_ok128, label %str_stale129

str_ok128:                                        ; preds = %str_stale129, %str_gen_check127, %choice.case119
  %b.app.cur.len132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  %b.app.cur.len133 = load i64, ptr %b.app.cur.len132, align 8
  %b.app.new.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len133, i64 %app.str.len124)
  %sum135 = extractvalue { i64, i1 } %b.app.new.len134, 0
  %ovf136 = extractvalue { i64, i1 } %b.app.new.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %b.app.new.len137

str_stale129:                                     ; preds = %str_gen_check127
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok128

b.app.new.len137:                                 ; preds = %str_overflow_abort138, %str_ok128
  %b.cap139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 2
  %b.cap140 = load i64, ptr %b.cap139, align 8
  %b.need.grow141 = icmp slt i64 %b.cap140, %sum135
  br i1 %b.need.grow141, label %b.grow2142, label %b.nogrow2143

str_overflow_abort138:                            ; preds = %str_ok128
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len137

b.grow2142:                                       ; preds = %b.app.new.len137
  %b.cap2145 = mul i64 %b.cap140, 2
  %b.cap.small146 = icmp slt i64 %b.cap2145, 16
  %b.cap.grow147 = select i1 %b.cap.small146, i64 16, i64 %b.cap2145
  %b.cap.need148 = icmp slt i64 %b.cap.grow147, %sum135
  %b.new.cap149 = select i1 %b.cap.need148, i64 %sum135, i64 %b.cap.grow147
  %b.cur.len2150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  %b.cur.len2151 = load i64, ptr %b.cur.len2150, align 8
  %b.cur.data2152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  %b.cur.data2153 = load ptr, ptr %b.cur.data2152, align 8
  %b.new.buf.len2154 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap149, i64 1)
  %sum155 = extractvalue { i64, i1 } %b.new.buf.len2154, 0
  %ovf156 = extractvalue { i64, i1 } %b.new.buf.len2154, 1
  br i1 %ovf156, label %str_overflow_abort158, label %b.new.buf.len2157

b.nogrow2143:                                     ; preds = %b.app.new.len137
  br label %b.grow_done144

b.grow_done144:                                   ; preds = %b.nogrow2143, %b.new.buf.len2157
  %app.str.data164 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %b.app.data165 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  %b.app.data166 = load ptr, ptr %b.app.data165, align 8
  %b.app.dst167 = getelementptr i8, ptr %b.app.data166, i64 %b.app.cur.len133
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst167, ptr align 1 %app.str.data164, i64 %app.str.len124, i1 false)
  %b.app.nul168 = getelementptr i8, ptr %b.app.data166, i64 %sum135
  store i8 0, ptr %b.app.nul168, align 1
  %b.len.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 0
  store i64 %sum135, ptr %b.len.gep169, align 8
  br label %choice.exit

b.new.buf.len2157:                                ; preds = %str_overflow_abort158, %b.grow2142
  %arena.cur159 = call ptr @dva_arena_current()
  %b.new.buf2160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 %sum155)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2160, ptr align 1 %b.cur.data2153, i64 %b.cur.len2151, i1 false)
  %b.grow2.nul161 = getelementptr i8, ptr %b.new.buf2160, i64 %b.cur.len2151
  store i8 0, ptr %b.grow2.nul161, align 1
  %b.new.data2.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 1
  store ptr %b.new.buf2160, ptr %b.new.data2.gep162, align 8
  %b.new.cap2.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load122, i32 0, i32 2
  store i64 %b.new.cap149, ptr %b.new.cap2.gep163, align 8
  br label %b.grow_done144

str_overflow_abort158:                            ; preds = %b.grow2142
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2157

choice.case170:                                   ; preds = %choice.next120
  %b.load173 = load ptr, ptr %var.b, align 8
  %app.str.len174 = load i64, ptr @str.29.struct, align 8
  %app.str.len175 = and i64 %app.str.len174, 281474976710655
  %str.tag176 = lshr i64 %app.str.len174, 48
  %str.immortal177 = icmp eq i64 %str.tag176, 0
  br i1 %str.immortal177, label %str_ok179, label %str_gen_check178

choice.next171:                                   ; preds = %choice.next120
  %val.match223 = icmp eq i64 %var.load26, 10
  br i1 %val.match223, label %choice.case221, label %choice.next222

str_gen_check178:                                 ; preds = %choice.case170
  %arena.cur181 = call ptr @dva_arena_current()
  %tag.valid182 = call i1 @dva_arena_validate_tag(ptr %arena.cur181, i64 %str.tag176)
  br i1 %tag.valid182, label %str_ok179, label %str_stale180

str_ok179:                                        ; preds = %str_stale180, %str_gen_check178, %choice.case170
  %b.app.cur.len183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 0
  %b.app.cur.len184 = load i64, ptr %b.app.cur.len183, align 8
  %b.app.new.len185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len184, i64 %app.str.len175)
  %sum186 = extractvalue { i64, i1 } %b.app.new.len185, 0
  %ovf187 = extractvalue { i64, i1 } %b.app.new.len185, 1
  br i1 %ovf187, label %str_overflow_abort189, label %b.app.new.len188

str_stale180:                                     ; preds = %str_gen_check178
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok179

b.app.new.len188:                                 ; preds = %str_overflow_abort189, %str_ok179
  %b.cap190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 2
  %b.cap191 = load i64, ptr %b.cap190, align 8
  %b.need.grow192 = icmp slt i64 %b.cap191, %sum186
  br i1 %b.need.grow192, label %b.grow2193, label %b.nogrow2194

str_overflow_abort189:                            ; preds = %str_ok179
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len188

b.grow2193:                                       ; preds = %b.app.new.len188
  %b.cap2196 = mul i64 %b.cap191, 2
  %b.cap.small197 = icmp slt i64 %b.cap2196, 16
  %b.cap.grow198 = select i1 %b.cap.small197, i64 16, i64 %b.cap2196
  %b.cap.need199 = icmp slt i64 %b.cap.grow198, %sum186
  %b.new.cap200 = select i1 %b.cap.need199, i64 %sum186, i64 %b.cap.grow198
  %b.cur.len2201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 0
  %b.cur.len2202 = load i64, ptr %b.cur.len2201, align 8
  %b.cur.data2203 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 1
  %b.cur.data2204 = load ptr, ptr %b.cur.data2203, align 8
  %b.new.buf.len2205 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap200, i64 1)
  %sum206 = extractvalue { i64, i1 } %b.new.buf.len2205, 0
  %ovf207 = extractvalue { i64, i1 } %b.new.buf.len2205, 1
  br i1 %ovf207, label %str_overflow_abort209, label %b.new.buf.len2208

b.nogrow2194:                                     ; preds = %b.app.new.len188
  br label %b.grow_done195

b.grow_done195:                                   ; preds = %b.nogrow2194, %b.new.buf.len2208
  %app.str.data215 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %b.app.data216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 1
  %b.app.data217 = load ptr, ptr %b.app.data216, align 8
  %b.app.dst218 = getelementptr i8, ptr %b.app.data217, i64 %b.app.cur.len184
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst218, ptr align 1 %app.str.data215, i64 %app.str.len175, i1 false)
  %b.app.nul219 = getelementptr i8, ptr %b.app.data217, i64 %sum186
  store i8 0, ptr %b.app.nul219, align 1
  %b.len.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 0
  store i64 %sum186, ptr %b.len.gep220, align 8
  br label %choice.exit

b.new.buf.len2208:                                ; preds = %str_overflow_abort209, %b.grow2193
  %arena.cur210 = call ptr @dva_arena_current()
  %b.new.buf2211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 %sum206)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2211, ptr align 1 %b.cur.data2204, i64 %b.cur.len2202, i1 false)
  %b.grow2.nul212 = getelementptr i8, ptr %b.new.buf2211, i64 %b.cur.len2202
  store i8 0, ptr %b.grow2.nul212, align 1
  %b.new.data2.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 1
  store ptr %b.new.buf2211, ptr %b.new.data2.gep213, align 8
  %b.new.cap2.gep214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load173, i32 0, i32 2
  store i64 %b.new.cap200, ptr %b.new.cap2.gep214, align 8
  br label %b.grow_done195

str_overflow_abort209:                            ; preds = %b.grow2193
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2208

choice.case221:                                   ; preds = %choice.next171
  %b.load224 = load ptr, ptr %var.b, align 8
  %app.str.len225 = load i64, ptr @str.30.struct, align 8
  %app.str.len226 = and i64 %app.str.len225, 281474976710655
  %str.tag227 = lshr i64 %app.str.len225, 48
  %str.immortal228 = icmp eq i64 %str.tag227, 0
  br i1 %str.immortal228, label %str_ok230, label %str_gen_check229

choice.next222:                                   ; preds = %choice.next171
  %val.match274 = icmp eq i64 %var.load26, 13
  br i1 %val.match274, label %choice.case272, label %choice.next273

str_gen_check229:                                 ; preds = %choice.case221
  %arena.cur232 = call ptr @dva_arena_current()
  %tag.valid233 = call i1 @dva_arena_validate_tag(ptr %arena.cur232, i64 %str.tag227)
  br i1 %tag.valid233, label %str_ok230, label %str_stale231

str_ok230:                                        ; preds = %str_stale231, %str_gen_check229, %choice.case221
  %b.app.cur.len234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 0
  %b.app.cur.len235 = load i64, ptr %b.app.cur.len234, align 8
  %b.app.new.len236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len235, i64 %app.str.len226)
  %sum237 = extractvalue { i64, i1 } %b.app.new.len236, 0
  %ovf238 = extractvalue { i64, i1 } %b.app.new.len236, 1
  br i1 %ovf238, label %str_overflow_abort240, label %b.app.new.len239

str_stale231:                                     ; preds = %str_gen_check229
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok230

b.app.new.len239:                                 ; preds = %str_overflow_abort240, %str_ok230
  %b.cap241 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 2
  %b.cap242 = load i64, ptr %b.cap241, align 8
  %b.need.grow243 = icmp slt i64 %b.cap242, %sum237
  br i1 %b.need.grow243, label %b.grow2244, label %b.nogrow2245

str_overflow_abort240:                            ; preds = %str_ok230
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len239

b.grow2244:                                       ; preds = %b.app.new.len239
  %b.cap2247 = mul i64 %b.cap242, 2
  %b.cap.small248 = icmp slt i64 %b.cap2247, 16
  %b.cap.grow249 = select i1 %b.cap.small248, i64 16, i64 %b.cap2247
  %b.cap.need250 = icmp slt i64 %b.cap.grow249, %sum237
  %b.new.cap251 = select i1 %b.cap.need250, i64 %sum237, i64 %b.cap.grow249
  %b.cur.len2252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 0
  %b.cur.len2253 = load i64, ptr %b.cur.len2252, align 8
  %b.cur.data2254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 1
  %b.cur.data2255 = load ptr, ptr %b.cur.data2254, align 8
  %b.new.buf.len2256 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap251, i64 1)
  %sum257 = extractvalue { i64, i1 } %b.new.buf.len2256, 0
  %ovf258 = extractvalue { i64, i1 } %b.new.buf.len2256, 1
  br i1 %ovf258, label %str_overflow_abort260, label %b.new.buf.len2259

b.nogrow2245:                                     ; preds = %b.app.new.len239
  br label %b.grow_done246

b.grow_done246:                                   ; preds = %b.nogrow2245, %b.new.buf.len2259
  %app.str.data266 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %b.app.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 1
  %b.app.data268 = load ptr, ptr %b.app.data267, align 8
  %b.app.dst269 = getelementptr i8, ptr %b.app.data268, i64 %b.app.cur.len235
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst269, ptr align 1 %app.str.data266, i64 %app.str.len226, i1 false)
  %b.app.nul270 = getelementptr i8, ptr %b.app.data268, i64 %sum237
  store i8 0, ptr %b.app.nul270, align 1
  %b.len.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 0
  store i64 %sum237, ptr %b.len.gep271, align 8
  br label %choice.exit

b.new.buf.len2259:                                ; preds = %str_overflow_abort260, %b.grow2244
  %arena.cur261 = call ptr @dva_arena_current()
  %b.new.buf2262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 %sum257)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2262, ptr align 1 %b.cur.data2255, i64 %b.cur.len2253, i1 false)
  %b.grow2.nul263 = getelementptr i8, ptr %b.new.buf2262, i64 %b.cur.len2253
  store i8 0, ptr %b.grow2.nul263, align 1
  %b.new.data2.gep264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 1
  store ptr %b.new.buf2262, ptr %b.new.data2.gep264, align 8
  %b.new.cap2.gep265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load224, i32 0, i32 2
  store i64 %b.new.cap251, ptr %b.new.cap2.gep265, align 8
  br label %b.grow_done246

str_overflow_abort260:                            ; preds = %b.grow2244
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2259

choice.case272:                                   ; preds = %choice.next222
  %b.load275 = load ptr, ptr %var.b, align 8
  %app.str.len276 = load i64, ptr @str.31.struct, align 8
  %app.str.len277 = and i64 %app.str.len276, 281474976710655
  %str.tag278 = lshr i64 %app.str.len276, 48
  %str.immortal279 = icmp eq i64 %str.tag278, 0
  br i1 %str.immortal279, label %str_ok281, label %str_gen_check280

choice.next273:                                   ; preds = %choice.next222
  %val.match325 = icmp eq i64 %var.load26, 9
  br i1 %val.match325, label %choice.case323, label %choice.next324

str_gen_check280:                                 ; preds = %choice.case272
  %arena.cur283 = call ptr @dva_arena_current()
  %tag.valid284 = call i1 @dva_arena_validate_tag(ptr %arena.cur283, i64 %str.tag278)
  br i1 %tag.valid284, label %str_ok281, label %str_stale282

str_ok281:                                        ; preds = %str_stale282, %str_gen_check280, %choice.case272
  %b.app.cur.len285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 0
  %b.app.cur.len286 = load i64, ptr %b.app.cur.len285, align 8
  %b.app.new.len287 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len286, i64 %app.str.len277)
  %sum288 = extractvalue { i64, i1 } %b.app.new.len287, 0
  %ovf289 = extractvalue { i64, i1 } %b.app.new.len287, 1
  br i1 %ovf289, label %str_overflow_abort291, label %b.app.new.len290

str_stale282:                                     ; preds = %str_gen_check280
  %22 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok281

b.app.new.len290:                                 ; preds = %str_overflow_abort291, %str_ok281
  %b.cap292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 2
  %b.cap293 = load i64, ptr %b.cap292, align 8
  %b.need.grow294 = icmp slt i64 %b.cap293, %sum288
  br i1 %b.need.grow294, label %b.grow2295, label %b.nogrow2296

str_overflow_abort291:                            ; preds = %str_ok281
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len290

b.grow2295:                                       ; preds = %b.app.new.len290
  %b.cap2298 = mul i64 %b.cap293, 2
  %b.cap.small299 = icmp slt i64 %b.cap2298, 16
  %b.cap.grow300 = select i1 %b.cap.small299, i64 16, i64 %b.cap2298
  %b.cap.need301 = icmp slt i64 %b.cap.grow300, %sum288
  %b.new.cap302 = select i1 %b.cap.need301, i64 %sum288, i64 %b.cap.grow300
  %b.cur.len2303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 0
  %b.cur.len2304 = load i64, ptr %b.cur.len2303, align 8
  %b.cur.data2305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 1
  %b.cur.data2306 = load ptr, ptr %b.cur.data2305, align 8
  %b.new.buf.len2307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap302, i64 1)
  %sum308 = extractvalue { i64, i1 } %b.new.buf.len2307, 0
  %ovf309 = extractvalue { i64, i1 } %b.new.buf.len2307, 1
  br i1 %ovf309, label %str_overflow_abort311, label %b.new.buf.len2310

b.nogrow2296:                                     ; preds = %b.app.new.len290
  br label %b.grow_done297

b.grow_done297:                                   ; preds = %b.nogrow2296, %b.new.buf.len2310
  %app.str.data317 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %b.app.data318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 1
  %b.app.data319 = load ptr, ptr %b.app.data318, align 8
  %b.app.dst320 = getelementptr i8, ptr %b.app.data319, i64 %b.app.cur.len286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst320, ptr align 1 %app.str.data317, i64 %app.str.len277, i1 false)
  %b.app.nul321 = getelementptr i8, ptr %b.app.data319, i64 %sum288
  store i8 0, ptr %b.app.nul321, align 1
  %b.len.gep322 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 0
  store i64 %sum288, ptr %b.len.gep322, align 8
  br label %choice.exit

b.new.buf.len2310:                                ; preds = %str_overflow_abort311, %b.grow2295
  %arena.cur312 = call ptr @dva_arena_current()
  %b.new.buf2313 = call ptr @dva_arena_alloc(ptr %arena.cur312, i64 %sum308)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2313, ptr align 1 %b.cur.data2306, i64 %b.cur.len2304, i1 false)
  %b.grow2.nul314 = getelementptr i8, ptr %b.new.buf2313, i64 %b.cur.len2304
  store i8 0, ptr %b.grow2.nul314, align 1
  %b.new.data2.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 1
  store ptr %b.new.buf2313, ptr %b.new.data2.gep315, align 8
  %b.new.cap2.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load275, i32 0, i32 2
  store i64 %b.new.cap302, ptr %b.new.cap2.gep316, align 8
  br label %b.grow_done297

str_overflow_abort311:                            ; preds = %b.grow2295
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2310

choice.case323:                                   ; preds = %choice.next273
  %b.load326 = load ptr, ptr %var.b, align 8
  %app.str.len327 = load i64, ptr @str.32.struct, align 8
  %app.str.len328 = and i64 %app.str.len327, 281474976710655
  %str.tag329 = lshr i64 %app.str.len327, 48
  %str.immortal330 = icmp eq i64 %str.tag329, 0
  br i1 %str.immortal330, label %str_ok332, label %str_gen_check331

choice.next324:                                   ; preds = %choice.next273
  %cmptmp = icmp slt i64 %var.load26, 32
  br i1 %cmptmp, label %choice.case374, label %choice.next375

str_gen_check331:                                 ; preds = %choice.case323
  %arena.cur334 = call ptr @dva_arena_current()
  %tag.valid335 = call i1 @dva_arena_validate_tag(ptr %arena.cur334, i64 %str.tag329)
  br i1 %tag.valid335, label %str_ok332, label %str_stale333

str_ok332:                                        ; preds = %str_stale333, %str_gen_check331, %choice.case323
  %b.app.cur.len336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 0
  %b.app.cur.len337 = load i64, ptr %b.app.cur.len336, align 8
  %b.app.new.len338 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len337, i64 %app.str.len328)
  %sum339 = extractvalue { i64, i1 } %b.app.new.len338, 0
  %ovf340 = extractvalue { i64, i1 } %b.app.new.len338, 1
  br i1 %ovf340, label %str_overflow_abort342, label %b.app.new.len341

str_stale333:                                     ; preds = %str_gen_check331
  %25 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok332

b.app.new.len341:                                 ; preds = %str_overflow_abort342, %str_ok332
  %b.cap343 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 2
  %b.cap344 = load i64, ptr %b.cap343, align 8
  %b.need.grow345 = icmp slt i64 %b.cap344, %sum339
  br i1 %b.need.grow345, label %b.grow2346, label %b.nogrow2347

str_overflow_abort342:                            ; preds = %str_ok332
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len341

b.grow2346:                                       ; preds = %b.app.new.len341
  %b.cap2349 = mul i64 %b.cap344, 2
  %b.cap.small350 = icmp slt i64 %b.cap2349, 16
  %b.cap.grow351 = select i1 %b.cap.small350, i64 16, i64 %b.cap2349
  %b.cap.need352 = icmp slt i64 %b.cap.grow351, %sum339
  %b.new.cap353 = select i1 %b.cap.need352, i64 %sum339, i64 %b.cap.grow351
  %b.cur.len2354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 0
  %b.cur.len2355 = load i64, ptr %b.cur.len2354, align 8
  %b.cur.data2356 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 1
  %b.cur.data2357 = load ptr, ptr %b.cur.data2356, align 8
  %b.new.buf.len2358 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap353, i64 1)
  %sum359 = extractvalue { i64, i1 } %b.new.buf.len2358, 0
  %ovf360 = extractvalue { i64, i1 } %b.new.buf.len2358, 1
  br i1 %ovf360, label %str_overflow_abort362, label %b.new.buf.len2361

b.nogrow2347:                                     ; preds = %b.app.new.len341
  br label %b.grow_done348

b.grow_done348:                                   ; preds = %b.nogrow2347, %b.new.buf.len2361
  %app.str.data368 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %b.app.data369 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 1
  %b.app.data370 = load ptr, ptr %b.app.data369, align 8
  %b.app.dst371 = getelementptr i8, ptr %b.app.data370, i64 %b.app.cur.len337
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst371, ptr align 1 %app.str.data368, i64 %app.str.len328, i1 false)
  %b.app.nul372 = getelementptr i8, ptr %b.app.data370, i64 %sum339
  store i8 0, ptr %b.app.nul372, align 1
  %b.len.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 0
  store i64 %sum339, ptr %b.len.gep373, align 8
  br label %choice.exit

b.new.buf.len2361:                                ; preds = %str_overflow_abort362, %b.grow2346
  %arena.cur363 = call ptr @dva_arena_current()
  %b.new.buf2364 = call ptr @dva_arena_alloc(ptr %arena.cur363, i64 %sum359)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2364, ptr align 1 %b.cur.data2357, i64 %b.cur.len2355, i1 false)
  %b.grow2.nul365 = getelementptr i8, ptr %b.new.buf2364, i64 %b.cur.len2355
  store i8 0, ptr %b.grow2.nul365, align 1
  %b.new.data2.gep366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 1
  store ptr %b.new.buf2364, ptr %b.new.data2.gep366, align 8
  %b.new.cap2.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load326, i32 0, i32 2
  store i64 %b.new.cap353, ptr %b.new.cap2.gep367, align 8
  br label %b.grow_done348

str_overflow_abort362:                            ; preds = %b.grow2346
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2361

choice.case374:                                   ; preds = %choice.next324
  %b.load376 = load ptr, ptr %var.b, align 8
  %app.str.len377 = load i64, ptr @str.33.struct, align 8
  %app.str.len378 = and i64 %app.str.len377, 281474976710655
  %str.tag379 = lshr i64 %app.str.len377, 48
  %str.immortal380 = icmp eq i64 %str.tag379, 0
  br i1 %str.immortal380, label %str_ok382, label %str_gen_check381

choice.next375:                                   ; preds = %choice.next324
  %b.load553 = load ptr, ptr %var.b, align 8
  %var.load554 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load554, 0
  %b.b.le255 = icmp sle i64 %var.load554, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_gen_check381:                                 ; preds = %choice.case374
  %arena.cur384 = call ptr @dva_arena_current()
  %tag.valid385 = call i1 @dva_arena_validate_tag(ptr %arena.cur384, i64 %str.tag379)
  br i1 %tag.valid385, label %str_ok382, label %str_stale383

str_ok382:                                        ; preds = %str_stale383, %str_gen_check381, %choice.case374
  %b.app.cur.len386 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 0
  %b.app.cur.len387 = load i64, ptr %b.app.cur.len386, align 8
  %b.app.new.len388 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len387, i64 %app.str.len378)
  %sum389 = extractvalue { i64, i1 } %b.app.new.len388, 0
  %ovf390 = extractvalue { i64, i1 } %b.app.new.len388, 1
  br i1 %ovf390, label %str_overflow_abort392, label %b.app.new.len391

str_stale383:                                     ; preds = %str_gen_check381
  %28 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok382

b.app.new.len391:                                 ; preds = %str_overflow_abort392, %str_ok382
  %b.cap393 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 2
  %b.cap394 = load i64, ptr %b.cap393, align 8
  %b.need.grow395 = icmp slt i64 %b.cap394, %sum389
  br i1 %b.need.grow395, label %b.grow2396, label %b.nogrow2397

str_overflow_abort392:                            ; preds = %str_ok382
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len391

b.grow2396:                                       ; preds = %b.app.new.len391
  %b.cap2399 = mul i64 %b.cap394, 2
  %b.cap.small400 = icmp slt i64 %b.cap2399, 16
  %b.cap.grow401 = select i1 %b.cap.small400, i64 16, i64 %b.cap2399
  %b.cap.need402 = icmp slt i64 %b.cap.grow401, %sum389
  %b.new.cap403 = select i1 %b.cap.need402, i64 %sum389, i64 %b.cap.grow401
  %b.cur.len2404 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 0
  %b.cur.len2405 = load i64, ptr %b.cur.len2404, align 8
  %b.cur.data2406 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 1
  %b.cur.data2407 = load ptr, ptr %b.cur.data2406, align 8
  %b.new.buf.len2408 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap403, i64 1)
  %sum409 = extractvalue { i64, i1 } %b.new.buf.len2408, 0
  %ovf410 = extractvalue { i64, i1 } %b.new.buf.len2408, 1
  br i1 %ovf410, label %str_overflow_abort412, label %b.new.buf.len2411

b.nogrow2397:                                     ; preds = %b.app.new.len391
  br label %b.grow_done398

b.grow_done398:                                   ; preds = %b.nogrow2397, %b.new.buf.len2411
  %app.str.data418 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %b.app.data419 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 1
  %b.app.data420 = load ptr, ptr %b.app.data419, align 8
  %b.app.dst421 = getelementptr i8, ptr %b.app.data420, i64 %b.app.cur.len387
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst421, ptr align 1 %app.str.data418, i64 %app.str.len378, i1 false)
  %b.app.nul422 = getelementptr i8, ptr %b.app.data420, i64 %sum389
  store i8 0, ptr %b.app.nul422, align 1
  %b.len.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 0
  store i64 %sum389, ptr %b.len.gep423, align 8
  %b.load424 = load ptr, ptr %var.b, align 8
  %var.load425 = load i64, ptr %var.c, align 8
  %shrtmp = lshr i64 %var.load425, 4
  %call.res = call i32 @"json::#hex_digit"(i64 %shrtmp)
  %coerce.sext = sext i32 %call.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 0
  %b.rn.cur.len427 = load i64, ptr %b.rn.cur.len426, align 8
  %b.rn.new.len428 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len427, i64 %br.width)
  %sum429 = extractvalue { i64, i1 } %b.rn.new.len428, 0
  %ovf430 = extractvalue { i64, i1 } %b.rn.new.len428, 1
  br i1 %ovf430, label %str_overflow_abort432, label %b.rn.new.len431

b.new.buf.len2411:                                ; preds = %str_overflow_abort412, %b.grow2396
  %arena.cur413 = call ptr @dva_arena_current()
  %b.new.buf2414 = call ptr @dva_arena_alloc(ptr %arena.cur413, i64 %sum409)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2414, ptr align 1 %b.cur.data2407, i64 %b.cur.len2405, i1 false)
  %b.grow2.nul415 = getelementptr i8, ptr %b.new.buf2414, i64 %b.cur.len2405
  store i8 0, ptr %b.grow2.nul415, align 1
  %b.new.data2.gep416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 1
  store ptr %b.new.buf2414, ptr %b.new.data2.gep416, align 8
  %b.new.cap2.gep417 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load376, i32 0, i32 2
  store i64 %b.new.cap403, ptr %b.new.cap2.gep417, align 8
  br label %b.grow_done398

str_overflow_abort412:                            ; preds = %b.grow2396
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2411

b.rn.new.len431:                                  ; preds = %str_overflow_abort432, %b.grow_done398
  %b.cap433 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 2
  %b.cap434 = load i64, ptr %b.cap433, align 8
  %b.need.grow435 = icmp slt i64 %b.cap434, %sum429
  br i1 %b.need.grow435, label %b.grow2436, label %b.nogrow2437

str_overflow_abort432:                            ; preds = %b.grow_done398
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len431

b.grow2436:                                       ; preds = %b.rn.new.len431
  %b.cap2439 = mul i64 %b.cap434, 2
  %b.cap.small440 = icmp slt i64 %b.cap2439, 16
  %b.cap.grow441 = select i1 %b.cap.small440, i64 16, i64 %b.cap2439
  %b.cap.need442 = icmp slt i64 %b.cap.grow441, %sum429
  %b.new.cap443 = select i1 %b.cap.need442, i64 %sum429, i64 %b.cap.grow441
  %b.cur.len2444 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 0
  %b.cur.len2445 = load i64, ptr %b.cur.len2444, align 8
  %b.cur.data2446 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 1
  %b.cur.data2447 = load ptr, ptr %b.cur.data2446, align 8
  %b.new.buf.len2448 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap443, i64 1)
  %sum449 = extractvalue { i64, i1 } %b.new.buf.len2448, 0
  %ovf450 = extractvalue { i64, i1 } %b.new.buf.len2448, 1
  br i1 %ovf450, label %str_overflow_abort452, label %b.new.buf.len2451

b.nogrow2437:                                     ; preds = %b.rn.new.len431
  br label %b.grow_done438

b.grow_done438:                                   ; preds = %b.nogrow2437, %b.new.buf.len2451
  %b.rn.data458 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 1
  %b.rn.data459 = load ptr, ptr %b.rn.data458, align 8
  %b.rn.dst460 = getelementptr i8, ptr %b.rn.data459, i64 %b.rn.cur.len427
  br i1 %br.cmp1, label %br.b1.116, label %br.c2.116

b.new.buf.len2451:                                ; preds = %str_overflow_abort452, %b.grow2436
  %arena.cur453 = call ptr @dva_arena_current()
  %b.new.buf2454 = call ptr @dva_arena_alloc(ptr %arena.cur453, i64 %sum449)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2454, ptr align 1 %b.cur.data2447, i64 %b.cur.len2445, i1 false)
  %b.grow2.nul455 = getelementptr i8, ptr %b.new.buf2454, i64 %b.cur.len2445
  store i8 0, ptr %b.grow2.nul455, align 1
  %b.new.data2.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 1
  store ptr %b.new.buf2454, ptr %b.new.data2.gep456, align 8
  %b.new.cap2.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 2
  store i64 %b.new.cap443, ptr %b.new.cap2.gep457, align 8
  br label %b.grow_done438

str_overflow_abort452:                            ; preds = %b.grow2436
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2451

br.b1.116:                                        ; preds = %b.grow_done438
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst460, align 1
  br label %br.done.116

br.c2.116:                                        ; preds = %b.grow_done438
  br i1 %br.cmp2, label %br.b2.116, label %br.c3.116

br.b2.116:                                        ; preds = %br.c2.116
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst460, align 1
  %br.dst1461 = getelementptr i8, ptr %b.rn.dst460, i64 1
  store i8 %br.b2.1t, ptr %br.dst1461, align 1
  br label %br.done.116

br.c3.116:                                        ; preds = %br.c2.116
  br i1 %br.cmp3, label %br.b3.116, label %br.b4.116

br.b3.116:                                        ; preds = %br.c3.116
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
  store i8 %br.b3.0t, ptr %b.rn.dst460, align 1
  %br.dst1.3462 = getelementptr i8, ptr %b.rn.dst460, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3462, align 1
  %br.dst2.3463 = getelementptr i8, ptr %b.rn.dst460, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3463, align 1
  br label %br.done.116

br.b4.116:                                        ; preds = %br.c3.116
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
  store i8 %br.b4.0t, ptr %b.rn.dst460, align 1
  %br.dst1.4464 = getelementptr i8, ptr %b.rn.dst460, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4464, align 1
  %br.dst2.4465 = getelementptr i8, ptr %b.rn.dst460, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4465, align 1
  %br.dst3.4466 = getelementptr i8, ptr %b.rn.dst460, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4466, align 1
  br label %br.done.116

br.done.116:                                      ; preds = %br.b4.116, %br.b3.116, %br.b2.116, %br.b1.116
  %br.nul467 = getelementptr i8, ptr %b.rn.data459, i64 %sum429
  store i8 0, ptr %br.nul467, align 1
  %b.len.gep468 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 0
  store i64 %sum429, ptr %b.len.gep468, align 8
  %b.load469 = load ptr, ptr %var.b, align 8
  %var.load470 = load i64, ptr %var.c, align 8
  %call.res471 = call i32 @"json::#hex_digit"(i64 %var.load470)
  %coerce.sext472 = sext i32 %call.res471 to i64
  %br.cmp1473 = icmp slt i64 %coerce.sext472, 128
  %br.cmp2474 = icmp slt i64 %coerce.sext472, 2048
  %br.cmp3475 = icmp slt i64 %coerce.sext472, 65536
  %br.w3476 = select i1 %br.cmp3475, i64 3, i64 4
  %br.w2477 = select i1 %br.cmp2474, i64 2, i64 %br.w3476
  %br.width478 = select i1 %br.cmp1473, i64 1, i64 %br.w2477
  %b.rn.cur.len479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 0
  %b.rn.cur.len480 = load i64, ptr %b.rn.cur.len479, align 8
  %b.rn.new.len481 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len480, i64 %br.width478)
  %sum482 = extractvalue { i64, i1 } %b.rn.new.len481, 0
  %ovf483 = extractvalue { i64, i1 } %b.rn.new.len481, 1
  br i1 %ovf483, label %str_overflow_abort485, label %b.rn.new.len484

b.rn.new.len484:                                  ; preds = %str_overflow_abort485, %br.done.116
  %b.cap486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 2
  %b.cap487 = load i64, ptr %b.cap486, align 8
  %b.need.grow488 = icmp slt i64 %b.cap487, %sum482
  br i1 %b.need.grow488, label %b.grow2489, label %b.nogrow2490

str_overflow_abort485:                            ; preds = %br.done.116
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len484

b.grow2489:                                       ; preds = %b.rn.new.len484
  %b.cap2492 = mul i64 %b.cap487, 2
  %b.cap.small493 = icmp slt i64 %b.cap2492, 16
  %b.cap.grow494 = select i1 %b.cap.small493, i64 16, i64 %b.cap2492
  %b.cap.need495 = icmp slt i64 %b.cap.grow494, %sum482
  %b.new.cap496 = select i1 %b.cap.need495, i64 %sum482, i64 %b.cap.grow494
  %b.cur.len2497 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 0
  %b.cur.len2498 = load i64, ptr %b.cur.len2497, align 8
  %b.cur.data2499 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 1
  %b.cur.data2500 = load ptr, ptr %b.cur.data2499, align 8
  %b.new.buf.len2501 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap496, i64 1)
  %sum502 = extractvalue { i64, i1 } %b.new.buf.len2501, 0
  %ovf503 = extractvalue { i64, i1 } %b.new.buf.len2501, 1
  br i1 %ovf503, label %str_overflow_abort505, label %b.new.buf.len2504

b.nogrow2490:                                     ; preds = %b.rn.new.len484
  br label %b.grow_done491

b.grow_done491:                                   ; preds = %b.nogrow2490, %b.new.buf.len2504
  %b.rn.data511 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 1
  %b.rn.data512 = load ptr, ptr %b.rn.data511, align 8
  %b.rn.dst513 = getelementptr i8, ptr %b.rn.data512, i64 %b.rn.cur.len480
  br i1 %br.cmp1473, label %br.b1.117, label %br.c2.117

b.new.buf.len2504:                                ; preds = %str_overflow_abort505, %b.grow2489
  %arena.cur506 = call ptr @dva_arena_current()
  %b.new.buf2507 = call ptr @dva_arena_alloc(ptr %arena.cur506, i64 %sum502)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2507, ptr align 1 %b.cur.data2500, i64 %b.cur.len2498, i1 false)
  %b.grow2.nul508 = getelementptr i8, ptr %b.new.buf2507, i64 %b.cur.len2498
  store i8 0, ptr %b.grow2.nul508, align 1
  %b.new.data2.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 1
  store ptr %b.new.buf2507, ptr %b.new.data2.gep509, align 8
  %b.new.cap2.gep510 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 2
  store i64 %b.new.cap496, ptr %b.new.cap2.gep510, align 8
  br label %b.grow_done491

str_overflow_abort505:                            ; preds = %b.grow2489
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2504

br.b1.117:                                        ; preds = %b.grow_done491
  %br.b1.0514 = trunc i64 %coerce.sext472 to i8
  store i8 %br.b1.0514, ptr %b.rn.dst513, align 1
  br label %br.done.117

br.c2.117:                                        ; preds = %b.grow_done491
  br i1 %br.cmp2474, label %br.b2.117, label %br.c3.117

br.b2.117:                                        ; preds = %br.c2.117
  %br.sh6515 = lshr i64 %coerce.sext472, 6
  %br.b2.0516 = or i64 %br.sh6515, 192
  %br.b2.0t517 = trunc i64 %br.b2.0516 to i8
  %br.m6518 = and i64 %coerce.sext472, 63
  %br.b2.1519 = or i64 %br.m6518, 128
  %br.b2.1t520 = trunc i64 %br.b2.1519 to i8
  store i8 %br.b2.0t517, ptr %b.rn.dst513, align 1
  %br.dst1521 = getelementptr i8, ptr %b.rn.dst513, i64 1
  store i8 %br.b2.1t520, ptr %br.dst1521, align 1
  br label %br.done.117

br.c3.117:                                        ; preds = %br.c2.117
  br i1 %br.cmp3475, label %br.b3.117, label %br.b4.117

br.b3.117:                                        ; preds = %br.c3.117
  %br.sh12522 = lshr i64 %coerce.sext472, 12
  %br.b3.0523 = or i64 %br.sh12522, 224
  %br.b3.0t524 = trunc i64 %br.b3.0523 to i8
  %br.sh6.3525 = lshr i64 %coerce.sext472, 6
  %br.m6.3526 = and i64 %br.sh6.3525, 63
  %br.b3.1527 = or i64 %br.m6.3526, 128
  %br.b3.1t528 = trunc i64 %br.b3.1527 to i8
  %br.mend529 = and i64 %coerce.sext472, 63
  %br.b3.2530 = or i64 %br.mend529, 128
  %br.b3.2t531 = trunc i64 %br.b3.2530 to i8
  store i8 %br.b3.0t524, ptr %b.rn.dst513, align 1
  %br.dst1.3532 = getelementptr i8, ptr %b.rn.dst513, i64 1
  store i8 %br.b3.1t528, ptr %br.dst1.3532, align 1
  %br.dst2.3533 = getelementptr i8, ptr %b.rn.dst513, i64 2
  store i8 %br.b3.2t531, ptr %br.dst2.3533, align 1
  br label %br.done.117

br.b4.117:                                        ; preds = %br.c3.117
  %br.sh18534 = lshr i64 %coerce.sext472, 18
  %br.b4.0535 = or i64 %br.sh18534, 240
  %br.b4.0t536 = trunc i64 %br.b4.0535 to i8
  %br.sh12.4537 = lshr i64 %coerce.sext472, 12
  %br.m12.4538 = and i64 %br.sh12.4537, 63
  %br.b4.1539 = or i64 %br.m12.4538, 128
  %br.b4.1t540 = trunc i64 %br.b4.1539 to i8
  %br.sh6.4541 = lshr i64 %coerce.sext472, 6
  %br.m6.4542 = and i64 %br.sh6.4541, 63
  %br.b4.2543 = or i64 %br.m6.4542, 128
  %br.b4.2t544 = trunc i64 %br.b4.2543 to i8
  %br.mend4545 = and i64 %coerce.sext472, 63
  %br.b4.3546 = or i64 %br.mend4545, 128
  %br.b4.3t547 = trunc i64 %br.b4.3546 to i8
  store i8 %br.b4.0t536, ptr %b.rn.dst513, align 1
  %br.dst1.4548 = getelementptr i8, ptr %b.rn.dst513, i64 1
  store i8 %br.b4.1t540, ptr %br.dst1.4548, align 1
  %br.dst2.4549 = getelementptr i8, ptr %b.rn.dst513, i64 2
  store i8 %br.b4.2t544, ptr %br.dst2.4549, align 1
  %br.dst3.4550 = getelementptr i8, ptr %b.rn.dst513, i64 3
  store i8 %br.b4.3t547, ptr %br.dst3.4550, align 1
  br label %br.done.117

br.done.117:                                      ; preds = %br.b4.117, %br.b3.117, %br.b2.117, %br.b1.117
  %br.nul551 = getelementptr i8, ptr %b.rn.data512, i64 %sum482
  store i8 0, ptr %br.nul551, align 1
  %b.len.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load469, i32 0, i32 0
  store i64 %sum482, ptr %b.len.gep552, align 8
  br label %choice.exit

b.byte_ok:                                        ; preds = %b.byte_err, %choice.next375
  %b.byte.i8 = trunc i64 %var.load554 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  %b.len555 = load i64, ptr %b.len, align 8
  %b.cap556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 2
  %b.cap557 = load i64, ptr %b.cap556, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  %b.data558 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len555, %b.cap557
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next375
  %35 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2559 = mul i64 %b.cap557, 2
  %b.cap.small560 = icmp slt i64 %b.cap2559, 16
  %b.new.cap561 = select i1 %b.cap.small560, i64 16, i64 %b.cap2559
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap561, i64 1)
  %sum562 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf563 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf563, label %str_overflow_abort565, label %b.new.buf.len564

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len564
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  %b.cur.data567 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  %b.cur.len568 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data567, i64 %b.cur.len568
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len568, 1
  %b.nul = getelementptr i8, ptr %b.cur.data567, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep569 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep569, align 8
  br label %choice.exit

b.new.buf.len564:                                 ; preds = %str_overflow_abort565, %b.grow
  %arena.cur566 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur566, i64 %sum562)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data558, i64 %b.len555, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len555
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 2
  store i64 %b.new.cap561, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort565:                            ; preds = %b.grow
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len564

b.rn.new.len576:                                  ; preds = %str_overflow_abort577, %loop.exit.115
  %b.cap578 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 2
  %b.cap579 = load i64, ptr %b.cap578, align 8
  %b.need.grow580 = icmp slt i64 %b.cap579, %sum574
  br i1 %b.need.grow580, label %b.grow2581, label %b.nogrow2582

str_overflow_abort577:                            ; preds = %loop.exit.115
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len576

b.grow2581:                                       ; preds = %b.rn.new.len576
  %b.cap2584 = mul i64 %b.cap579, 2
  %b.cap.small585 = icmp slt i64 %b.cap2584, 16
  %b.cap.grow586 = select i1 %b.cap.small585, i64 16, i64 %b.cap2584
  %b.cap.need587 = icmp slt i64 %b.cap.grow586, %sum574
  %b.new.cap588 = select i1 %b.cap.need587, i64 %sum574, i64 %b.cap.grow586
  %b.cur.len2589 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 0
  %b.cur.len2590 = load i64, ptr %b.cur.len2589, align 8
  %b.cur.data2591 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 1
  %b.cur.data2592 = load ptr, ptr %b.cur.data2591, align 8
  %b.new.buf.len2593 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap588, i64 1)
  %sum594 = extractvalue { i64, i1 } %b.new.buf.len2593, 0
  %ovf595 = extractvalue { i64, i1 } %b.new.buf.len2593, 1
  br i1 %ovf595, label %str_overflow_abort597, label %b.new.buf.len2596

b.nogrow2582:                                     ; preds = %b.rn.new.len576
  br label %b.grow_done583

b.grow_done583:                                   ; preds = %b.nogrow2582, %b.new.buf.len2596
  %b.rn.data603 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 1
  %b.rn.data604 = load ptr, ptr %b.rn.data603, align 8
  %b.rn.dst605 = getelementptr i8, ptr %b.rn.data604, i64 %b.rn.cur.len572
  br i1 true, label %br.b1.118, label %br.c2.118

b.new.buf.len2596:                                ; preds = %str_overflow_abort597, %b.grow2581
  %arena.cur598 = call ptr @dva_arena_current()
  %b.new.buf2599 = call ptr @dva_arena_alloc(ptr %arena.cur598, i64 %sum594)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2599, ptr align 1 %b.cur.data2592, i64 %b.cur.len2590, i1 false)
  %b.grow2.nul600 = getelementptr i8, ptr %b.new.buf2599, i64 %b.cur.len2590
  store i8 0, ptr %b.grow2.nul600, align 1
  %b.new.data2.gep601 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 1
  store ptr %b.new.buf2599, ptr %b.new.data2.gep601, align 8
  %b.new.cap2.gep602 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 2
  store i64 %b.new.cap588, ptr %b.new.cap2.gep602, align 8
  br label %b.grow_done583

str_overflow_abort597:                            ; preds = %b.grow2581
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2596

br.b1.118:                                        ; preds = %b.grow_done583
  store i8 34, ptr %b.rn.dst605, align 1
  br label %br.done.118

br.c2.118:                                        ; preds = %b.grow_done583
  br i1 true, label %br.b2.118, label %br.c3.118

br.b2.118:                                        ; preds = %br.c2.118
  store i8 -64, ptr %b.rn.dst605, align 1
  %br.dst1606 = getelementptr i8, ptr %b.rn.dst605, i64 1
  store i8 -94, ptr %br.dst1606, align 1
  br label %br.done.118

br.c3.118:                                        ; preds = %br.c2.118
  br i1 true, label %br.b3.118, label %br.b4.118

br.b3.118:                                        ; preds = %br.c3.118
  store i8 -32, ptr %b.rn.dst605, align 1
  %br.dst1.3607 = getelementptr i8, ptr %b.rn.dst605, i64 1
  store i8 -128, ptr %br.dst1.3607, align 1
  %br.dst2.3608 = getelementptr i8, ptr %b.rn.dst605, i64 2
  store i8 -94, ptr %br.dst2.3608, align 1
  br label %br.done.118

br.b4.118:                                        ; preds = %br.c3.118
  store i8 -16, ptr %b.rn.dst605, align 1
  %br.dst1.4609 = getelementptr i8, ptr %b.rn.dst605, i64 1
  store i8 -128, ptr %br.dst1.4609, align 1
  %br.dst2.4610 = getelementptr i8, ptr %b.rn.dst605, i64 2
  store i8 -128, ptr %br.dst2.4610, align 1
  %br.dst3.4611 = getelementptr i8, ptr %b.rn.dst605, i64 3
  store i8 -94, ptr %br.dst3.4611, align 1
  br label %br.done.118

br.done.118:                                      ; preds = %br.b4.118, %br.b3.118, %br.b2.118, %br.b1.118
  %br.nul612 = getelementptr i8, ptr %b.rn.data604, i64 %sum574
  store i8 0, ptr %br.nul612, align 1
  %b.len.gep613 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load570, i32 0, i32 0
  store i64 %sum574, ptr %b.len.gep613, align 8
  ret void
}

define ptr @"json::escape_string"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %addtmp = add i64 %str.len.query2, 8
  %arena.cur3 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.buf.len4:                                       ; preds = %str_overflow_abort, %str_ok
  %arena.cur5 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load6 = load ptr, ptr %var.b, align 8
  %var.load7 = load ptr, ptr %var.s, align 8
  call void @"json::escape_string_into"(ptr %var.load6, ptr %var.load7)
  %var.load8 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %b.freeze.len9 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 1
  %b.freeze.data10 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len4

b.freeze.check:                                   ; preds = %b.buf.len4
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data10, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data10, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data10, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len9, 1
  %arena.cur11 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data10, i64 %b.freeze.len9, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len9
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len4
  %b.freeze.data12 = phi ptr [ %b.freeze.data10, %b.buf.len4 ], [ %b.freeze.data10, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur13 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len9, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data12, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load8, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define ptr @"json::format_number"(double %0) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var.iv = alloca i64, align 8
  %var.f = alloca double, align 8
  store double %0, ptr %var.f, align 8
  %var.load = load double, ptr %var.f, align 8
  %var.load1 = load double, ptr %var.f, align 8
  %fcmptmp = fcmp une double %var.load, %var.load1
  br i1 %fcmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret ptr @str.17.struct

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load double, ptr %var.f, align 8
  %var.load3 = load double, ptr @"var.const::max_f64", align 8
  %fcmptmp4 = fcmp ogt double %var.load2, %var.load3
  br i1 %fcmptmp4, label %or.119.then, label %or.119.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

or.119.then:                                      ; preds = %choice.exit
  br label %or.119.exit

or.119.else:                                      ; preds = %choice.exit
  %var.load5 = load double, ptr %var.f, align 8
  %var.load6 = load double, ptr @"var.const::max_f64", align 8
  %fnegtmp = fneg double %var.load6
  %fcmptmp7 = fcmp olt double %var.load5, %fnegtmp
  br label %or.119.exit

or.119.exit:                                      ; preds = %or.119.else, %or.119.then
  %or.119.phi = phi i1 [ %fcmptmp4, %or.119.then ], [ %fcmptmp7, %or.119.else ]
  br i1 %or.119.phi, label %choice.then8, label %choice.exit9

choice.then8:                                     ; preds = %or.119.exit
  ret ptr @str.17.struct

choice.exit9:                                     ; preds = %ret.dead10, %or.119.exit
  %var.load11 = load double, ptr %var.f, align 8
  %cast.fptosi = fptosi double %var.load11 to i64
  store i64 %cast.fptosi, ptr %var.iv, align 8
  %var.load12 = load i64, ptr %var.iv, align 8
  %cast.sitofp = sitofp i64 %var.load12 to double
  %var.load13 = load double, ptr %var.f, align 8
  %fcmptmp14 = fcmp oeq double %cast.sitofp, %var.load13
  br i1 %fcmptmp14, label %and.120.then, label %and.120.else

ret.dead10:                                       ; No predecessors!
  br label %choice.exit9

and.120.then:                                     ; preds = %choice.exit9
  %var.load15 = load i64, ptr %var.iv, align 8
  %var.load17 = load i64, ptr @"var.const::max_safe_int", align 8
  %negtmp = sub i64 0, %var.load17
  %cmptmp = icmp sge i64 %var.load15, %negtmp
  br i1 %cmptmp, label %and.121.then, label %and.121.else

and.120.else:                                     ; preds = %choice.exit9
  br label %and.120.exit

and.120.exit:                                     ; preds = %and.120.else, %choice.exit16
  %and.120.phi = phi i1 [ %choice.res, %choice.exit16 ], [ %fcmptmp14, %and.120.else ]
  br i1 %and.120.phi, label %choice.then20, label %choice.else

choice.exit16:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.120.exit

choice.case:                                      ; preds = %and.121.exit
  br label %choice.exit16

choice.next:                                      ; preds = %and.121.exit
  br label %choice.exit16

and.121.then:                                     ; preds = %and.120.then
  %var.load18 = load i64, ptr @"var.const::max_safe_int", align 8
  %cmptmp19 = icmp sle i64 %var.load15, %var.load18
  br label %and.121.exit

and.121.else:                                     ; preds = %and.120.then
  br label %and.121.exit

and.121.exit:                                     ; preds = %and.121.else, %and.121.then
  %and.121.phi = phi i1 [ %cmptmp19, %and.121.then ], [ %cmptmp, %and.121.else ]
  br i1 %and.121.phi, label %choice.case, label %choice.next

choice.then20:                                    ; preds = %and.120.exit
  %var.load22 = load i64, ptr %var.iv, align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load22)
  br label %choice.exit21

choice.else:                                      ; preds = %and.120.exit
  %var.load23 = load double, ptr %var.f, align 8
  %call.res24 = call ptr @"str::from_float"(double %var.load23)
  store ptr %call.res24, ptr %var.s, align 8
  %var.load25 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %eq.lhs.len29 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len30 = and i64 %eq.lhs.len29, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len29, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

choice.exit21:                                    ; preds = %choice.exit26, %choice.then20
  %choice.res101 = phi ptr [ %call.res, %choice.then20 ], [ %choice.res100, %choice.exit26 ]
  ret ptr %choice.res101

choice.exit26:                                    ; preds = %choice.next28, %choice.case27
  %choice.res100 = phi ptr [ @str.17.struct, %choice.case27 ], [ %var.load99, %choice.next28 ]
  br label %choice.exit21

choice.case27:                                    ; preds = %str.eq.merge91
  br label %choice.exit26

choice.next28:                                    ; preds = %str.eq.merge91
  %var.load99 = load ptr, ptr %var.s, align 8
  br label %choice.exit26

str_gen_check:                                    ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.34.struct, align 8
  %eq.rhs.len31 = and i64 %eq.rhs.len, 281474976710655
  %str.tag32 = lshr i64 %eq.rhs.len, 48
  %str.immortal33 = icmp eq i64 %str.tag32, 0
  br i1 %str.immortal33, label %str_ok35, label %str_gen_check34

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check34:                                  ; preds = %str_ok
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %str.tag32)
  br i1 %tag.valid38, label %str_ok35, label %str_stale36

str_ok35:                                         ; preds = %str_stale36, %str_gen_check34, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len30, %eq.rhs.len31
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale36:                                      ; preds = %str_gen_check34
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok35

str.eq.then:                                      ; preds = %str_ok35
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %eq.lhs.data39 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data39, ptr %eq.rhs.data, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok35
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %eq.lhs.len41 = load i64, ptr %eq.lhs.len40, align 8
  %eq.lhs.len42 = and i64 %eq.lhs.len41, 281474976710655
  %str.tag43 = lshr i64 %eq.lhs.len41, 48
  %str.immortal44 = icmp eq i64 %str.tag43, 0
  br i1 %str.immortal44, label %str_ok46, label %str_gen_check45

str_gen_check45:                                  ; preds = %str.eq.merge
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag43)
  br i1 %tag.valid49, label %str_ok46, label %str_stale47

str_ok46:                                         ; preds = %str_stale47, %str_gen_check45, %str.eq.merge
  %eq.rhs.len50 = load i64, ptr @str.35.struct, align 8
  %eq.rhs.len51 = and i64 %eq.rhs.len50, 281474976710655
  %str.tag52 = lshr i64 %eq.rhs.len50, 48
  %str.immortal53 = icmp eq i64 %str.tag52, 0
  br i1 %str.immortal53, label %str_ok55, label %str_gen_check54

str_stale47:                                      ; preds = %str_gen_check45
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok46

str_gen_check54:                                  ; preds = %str_ok46
  %arena.cur57 = call ptr @dva_arena_current()
  %tag.valid58 = call i1 @dva_arena_validate_tag(ptr %arena.cur57, i64 %str.tag52)
  br i1 %tag.valid58, label %str_ok55, label %str_stale56

str_ok55:                                         ; preds = %str_stale56, %str_gen_check54, %str_ok46
  %eq.len59 = icmp eq i64 %eq.lhs.len42, %eq.rhs.len51
  br i1 %eq.len59, label %str.eq.then60, label %str.eq.else61

str_stale56:                                      ; preds = %str_gen_check54
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok55

str.eq.then60:                                    ; preds = %str_ok55
  %eq.lhs.data63 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %eq.lhs.data64 = load ptr, ptr %eq.lhs.data63, align 8
  %eq.rhs.data65 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %eq.memcmp66 = call i32 @memcmp(ptr %eq.lhs.data64, ptr %eq.rhs.data65, i64 %eq.lhs.len42)
  %eq.cmp.zero67 = icmp eq i32 %eq.memcmp66, 0
  br label %str.eq.merge62

str.eq.else61:                                    ; preds = %str_ok55
  br label %str.eq.merge62

str.eq.merge62:                                   ; preds = %str.eq.else61, %str.eq.then60
  %str.eq.result68 = phi i1 [ %eq.cmp.zero67, %str.eq.then60 ], [ false, %str.eq.else61 ]
  %case.or = or i1 %str.eq.result, %str.eq.result68
  %eq.lhs.len69 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 0
  %eq.lhs.len70 = load i64, ptr %eq.lhs.len69, align 8
  %eq.lhs.len71 = and i64 %eq.lhs.len70, 281474976710655
  %str.tag72 = lshr i64 %eq.lhs.len70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_gen_check74:                                  ; preds = %str.eq.merge62
  %arena.cur77 = call ptr @dva_arena_current()
  %tag.valid78 = call i1 @dva_arena_validate_tag(ptr %arena.cur77, i64 %str.tag72)
  br i1 %tag.valid78, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %str.eq.merge62
  %eq.rhs.len79 = load i64, ptr @str.36.struct, align 8
  %eq.rhs.len80 = and i64 %eq.rhs.len79, 281474976710655
  %str.tag81 = lshr i64 %eq.rhs.len79, 48
  %str.immortal82 = icmp eq i64 %str.tag81, 0
  br i1 %str.immortal82, label %str_ok84, label %str_gen_check83

str_stale76:                                      ; preds = %str_gen_check74
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

str_gen_check83:                                  ; preds = %str_ok75
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag81)
  br i1 %tag.valid87, label %str_ok84, label %str_stale85

str_ok84:                                         ; preds = %str_stale85, %str_gen_check83, %str_ok75
  %eq.len88 = icmp eq i64 %eq.lhs.len71, %eq.rhs.len80
  br i1 %eq.len88, label %str.eq.then89, label %str.eq.else90

str_stale85:                                      ; preds = %str_gen_check83
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok84

str.eq.then89:                                    ; preds = %str_ok84
  %eq.lhs.data92 = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %eq.lhs.data93 = load ptr, ptr %eq.lhs.data92, align 8
  %eq.rhs.data94 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %eq.memcmp95 = call i32 @memcmp(ptr %eq.lhs.data93, ptr %eq.rhs.data94, i64 %eq.lhs.len71)
  %eq.cmp.zero96 = icmp eq i32 %eq.memcmp95, 0
  br label %str.eq.merge91

str.eq.else90:                                    ; preds = %str_ok84
  br label %str.eq.merge91

str.eq.merge91:                                   ; preds = %str.eq.else90, %str.eq.then89
  %str.eq.result97 = phi i1 [ %eq.cmp.zero96, %str.eq.then89 ], [ false, %str.eq.else90 ]
  %case.or98 = or i1 %case.or, %str.eq.result97
  br i1 %case.or98, label %choice.case27, label %choice.next28
}

declare ptr @"str::from_int"(i64) #1

declare ptr @"str::from_float"(double) #1

define internal void @"json::#stringify_into"(ptr %0, ptr %1) #1 {
entry:
  %var._340 = alloca ptr, align 8
  %var._i339 = alloca i64, align 8
  %var.i333 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.127 = alloca i64, align 8
  %loop.idx.127 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._282 = alloca ptr, align 8
  %var._181 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.123 = alloca i64, align 8
  %loop.idx.123 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._146 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._33 = alloca i1, align 1
  %var.n = alloca double, align 8
  %var._10 = alloca double, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next276, %br.done.130, %br.done.125, %b.grow_done113, %b.grow_done59, %b.grow_done, %choice.case
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  call void @"json::escape_string_into"(ptr %var.load1, ptr %var.load2)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id6 = load i64, ptr %tag.gep5, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 1
  br i1 %tag.match7, label %choice.case3, label %choice.next4

choice.case3:                                     ; preds = %choice.next
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr9 = load ptr, ptr %pay.gep8, align 8
  %pay.float.null = icmp eq ptr %payload.ptr9, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next4:                                     ; preds = %choice.next
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 2
  br i1 %tag.match30, label %choice.case26, label %choice.next27

pay.float.load:                                   ; preds = %choice.case3
  %pay.float.val = load double, ptr %payload.ptr9, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case3
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._10, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load11 = load double, ptr %var.n, align 8
  %call.res = call ptr @"json::format_number"(double %var.load11)
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %app.str.len12 = load i64, ptr %app.str.len, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %str.tag = lshr i64 %app.str.len12, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %pay.float.merge
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %pay.float.merge
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len14 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len14, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len15

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len15:                                  ; preds = %str_overflow_abort, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap16 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap16, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len15

b.grow2:                                          ; preds = %b.app.new.len15
  %b.cap2 = mul i64 %b.cap16, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len217 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data218 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum19 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf20 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf20, label %str_overflow_abort22, label %b.new.buf.len221

b.nogrow2:                                        ; preds = %b.app.new.len15
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len221
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %app.str.data24 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data25 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data25, i64 %b.app.cur.len14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data24, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data25, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len221:                                 ; preds = %str_overflow_abort22, %b.grow2
  %arena.cur23 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data218, i64 %b.cur.len217, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len217
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort22:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len221

choice.case26:                                    ; preds = %choice.next4
  %pay.gep31 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr32 = load ptr, ptr %pay.gep31, align 8
  %pay.int.null = icmp eq ptr %payload.ptr32, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next27:                                    ; preds = %choice.next4
  %tag.gep88 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id89 = load i64, ptr %tag.gep88, align 8
  %tag.match90 = icmp eq i64 %tag.id89, 3
  br i1 %tag.match90, label %choice.case86, label %choice.next87

pay.int.load:                                     ; preds = %choice.case26
  %pay.int.val = load i1, ptr %payload.ptr32, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case26
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._33, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %b.load34 = load ptr, ptr %var.b, align 8
  %var.load35 = load i1, ptr %var.flag, align 1
  br i1 %var.load35, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.int.merge
  br label %choice.exit36

choice.else:                                      ; preds = %pay.int.merge
  br label %choice.exit36

choice.exit36:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  %app.str.len37 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %app.str.len38 = load i64, ptr %app.str.len37, align 8
  %app.str.len39 = and i64 %app.str.len38, 281474976710655
  %str.tag40 = lshr i64 %app.str.len38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_gen_check42:                                  ; preds = %choice.exit36
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %choice.exit36
  %b.app.cur.len47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  %b.app.cur.len48 = load i64, ptr %b.app.cur.len47, align 8
  %b.app.new.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len48, i64 %app.str.len39)
  %sum50 = extractvalue { i64, i1 } %b.app.new.len49, 0
  %ovf51 = extractvalue { i64, i1 } %b.app.new.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.app.new.len52

str_stale44:                                      ; preds = %str_gen_check42
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

b.app.new.len52:                                  ; preds = %str_overflow_abort53, %str_ok43
  %b.cap54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap54, align 8
  %b.need.grow56 = icmp slt i64 %b.cap55, %sum50
  br i1 %b.need.grow56, label %b.grow257, label %b.nogrow258

str_overflow_abort53:                             ; preds = %str_ok43
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len52

b.grow257:                                        ; preds = %b.app.new.len52
  %b.cap260 = mul i64 %b.cap55, 2
  %b.cap.small61 = icmp slt i64 %b.cap260, 16
  %b.cap.grow62 = select i1 %b.cap.small61, i64 16, i64 %b.cap260
  %b.cap.need63 = icmp slt i64 %b.cap.grow62, %sum50
  %b.new.cap64 = select i1 %b.cap.need63, i64 %sum50, i64 %b.cap.grow62
  %b.cur.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  %b.cur.len266 = load i64, ptr %b.cur.len265, align 8
  %b.cur.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  %b.cur.data268 = load ptr, ptr %b.cur.data267, align 8
  %b.new.buf.len269 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap64, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.new.buf.len269, 0
  %ovf71 = extractvalue { i64, i1 } %b.new.buf.len269, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.new.buf.len272

b.nogrow258:                                      ; preds = %b.app.new.len52
  br label %b.grow_done59

b.grow_done59:                                    ; preds = %b.nogrow258, %b.new.buf.len272
  %app.str.data79 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data80 = load ptr, ptr %app.str.data79, align 8
  %b.app.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  %b.app.data82 = load ptr, ptr %b.app.data81, align 8
  %b.app.dst83 = getelementptr i8, ptr %b.app.data82, i64 %b.app.cur.len48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst83, ptr align 1 %app.str.data80, i64 %app.str.len39, i1 false)
  %b.app.nul84 = getelementptr i8, ptr %b.app.data82, i64 %sum50
  store i8 0, ptr %b.app.nul84, align 1
  %b.len.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  store i64 %sum50, ptr %b.len.gep85, align 8
  br label %choice.exit

b.new.buf.len272:                                 ; preds = %str_overflow_abort73, %b.grow257
  %arena.cur74 = call ptr @dva_arena_current()
  %b.new.buf275 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf275, ptr align 1 %b.cur.data268, i64 %b.cur.len266, i1 false)
  %b.grow2.nul76 = getelementptr i8, ptr %b.new.buf275, i64 %b.cur.len266
  store i8 0, ptr %b.grow2.nul76, align 1
  %b.new.data2.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  store ptr %b.new.buf275, ptr %b.new.data2.gep77, align 8
  %b.new.cap2.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 2
  store i64 %b.new.cap64, ptr %b.new.cap2.gep78, align 8
  br label %b.grow_done59

str_overflow_abort73:                             ; preds = %b.grow257
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len272

choice.case86:                                    ; preds = %choice.next27
  %b.load91 = load ptr, ptr %var.b, align 8
  %app.str.len92 = load i64, ptr @str.17.struct, align 8
  %app.str.len93 = and i64 %app.str.len92, 281474976710655
  %str.tag94 = lshr i64 %app.str.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

choice.next87:                                    ; preds = %choice.next27
  %tag.gep141 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id142 = load i64, ptr %tag.gep141, align 8
  %tag.match143 = icmp eq i64 %tag.id142, 4
  br i1 %tag.match143, label %choice.case139, label %choice.next140

str_gen_check96:                                  ; preds = %choice.case86
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag94)
  br i1 %tag.valid100, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %choice.case86
  %b.app.cur.len101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.app.cur.len102 = load i64, ptr %b.app.cur.len101, align 8
  %b.app.new.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len102, i64 %app.str.len93)
  %sum104 = extractvalue { i64, i1 } %b.app.new.len103, 0
  %ovf105 = extractvalue { i64, i1 } %b.app.new.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.app.new.len106

str_stale98:                                      ; preds = %str_gen_check96
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

b.app.new.len106:                                 ; preds = %str_overflow_abort107, %str_ok97
  %b.cap108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  %b.cap109 = load i64, ptr %b.cap108, align 8
  %b.need.grow110 = icmp slt i64 %b.cap109, %sum104
  br i1 %b.need.grow110, label %b.grow2111, label %b.nogrow2112

str_overflow_abort107:                            ; preds = %str_ok97
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len106

b.grow2111:                                       ; preds = %b.app.new.len106
  %b.cap2114 = mul i64 %b.cap109, 2
  %b.cap.small115 = icmp slt i64 %b.cap2114, 16
  %b.cap.grow116 = select i1 %b.cap.small115, i64 16, i64 %b.cap2114
  %b.cap.need117 = icmp slt i64 %b.cap.grow116, %sum104
  %b.new.cap118 = select i1 %b.cap.need117, i64 %sum104, i64 %b.cap.grow116
  %b.cur.len2119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.cur.len2120 = load i64, ptr %b.cur.len2119, align 8
  %b.cur.data2121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.cur.data2122 = load ptr, ptr %b.cur.data2121, align 8
  %b.new.buf.len2123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap118, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len2123, 0
  %ovf125 = extractvalue { i64, i1 } %b.new.buf.len2123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.new.buf.len2126

b.nogrow2112:                                     ; preds = %b.app.new.len106
  br label %b.grow_done113

b.grow_done113:                                   ; preds = %b.nogrow2112, %b.new.buf.len2126
  %app.str.data133 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.app.data135 = load ptr, ptr %b.app.data134, align 8
  %b.app.dst136 = getelementptr i8, ptr %b.app.data135, i64 %b.app.cur.len102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst136, ptr align 1 %app.str.data133, i64 %app.str.len93, i1 false)
  %b.app.nul137 = getelementptr i8, ptr %b.app.data135, i64 %sum104
  store i8 0, ptr %b.app.nul137, align 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  store i64 %sum104, ptr %b.len.gep138, align 8
  br label %choice.exit

b.new.buf.len2126:                                ; preds = %str_overflow_abort127, %b.grow2111
  %arena.cur128 = call ptr @dva_arena_current()
  %b.new.buf2129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2129, ptr align 1 %b.cur.data2122, i64 %b.cur.len2120, i1 false)
  %b.grow2.nul130 = getelementptr i8, ptr %b.new.buf2129, i64 %b.cur.len2120
  store i8 0, ptr %b.grow2.nul130, align 1
  %b.new.data2.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  store ptr %b.new.buf2129, ptr %b.new.data2.gep131, align 8
  %b.new.cap2.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  store i64 %b.new.cap118, ptr %b.new.cap2.gep132, align 8
  br label %b.grow_done113

str_overflow_abort127:                            ; preds = %b.grow2111
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2126

choice.case139:                                   ; preds = %choice.next87
  %pay.gep144 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr145 = load ptr, ptr %pay.gep144, align 8
  store ptr %payload.ptr145, ptr %var._146, align 8
  store ptr %payload.ptr145, ptr %var.items, align 8
  %b.load147 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.rn.cur.len148 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len148, i64 1)
  %sum149 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf150 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf150, label %str_overflow_abort152, label %b.rn.new.len151

choice.next140:                                   ; preds = %choice.next87
  %tag.gep277 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id278 = load i64, ptr %tag.gep277, align 8
  %tag.match279 = icmp eq i64 %tag.id278, 5
  br i1 %tag.match279, label %choice.case275, label %choice.next276

b.rn.new.len151:                                  ; preds = %str_overflow_abort152, %choice.case139
  %b.cap153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  %b.cap154 = load i64, ptr %b.cap153, align 8
  %b.need.grow155 = icmp slt i64 %b.cap154, %sum149
  br i1 %b.need.grow155, label %b.grow2156, label %b.nogrow2157

str_overflow_abort152:                            ; preds = %choice.case139
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len151

b.grow2156:                                       ; preds = %b.rn.new.len151
  %b.cap2159 = mul i64 %b.cap154, 2
  %b.cap.small160 = icmp slt i64 %b.cap2159, 16
  %b.cap.grow161 = select i1 %b.cap.small160, i64 16, i64 %b.cap2159
  %b.cap.need162 = icmp slt i64 %b.cap.grow161, %sum149
  %b.new.cap163 = select i1 %b.cap.need162, i64 %sum149, i64 %b.cap.grow161
  %b.cur.len2164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.cur.len2165 = load i64, ptr %b.cur.len2164, align 8
  %b.cur.data2166 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.cur.data2167 = load ptr, ptr %b.cur.data2166, align 8
  %b.new.buf.len2168 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap163, i64 1)
  %sum169 = extractvalue { i64, i1 } %b.new.buf.len2168, 0
  %ovf170 = extractvalue { i64, i1 } %b.new.buf.len2168, 1
  br i1 %ovf170, label %str_overflow_abort172, label %b.new.buf.len2171

b.nogrow2157:                                     ; preds = %b.rn.new.len151
  br label %b.grow_done158

b.grow_done158:                                   ; preds = %b.nogrow2157, %b.new.buf.len2171
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.rn.data178 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data178, i64 %b.rn.cur.len148
  br i1 true, label %br.b1.122, label %br.c2.122

b.new.buf.len2171:                                ; preds = %str_overflow_abort172, %b.grow2156
  %arena.cur173 = call ptr @dva_arena_current()
  %b.new.buf2174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 %sum169)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2174, ptr align 1 %b.cur.data2167, i64 %b.cur.len2165, i1 false)
  %b.grow2.nul175 = getelementptr i8, ptr %b.new.buf2174, i64 %b.cur.len2165
  store i8 0, ptr %b.grow2.nul175, align 1
  %b.new.data2.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  store ptr %b.new.buf2174, ptr %b.new.data2.gep176, align 8
  %b.new.cap2.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  store i64 %b.new.cap163, ptr %b.new.cap2.gep177, align 8
  br label %b.grow_done158

str_overflow_abort172:                            ; preds = %b.grow2156
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2171

br.b1.122:                                        ; preds = %b.grow_done158
  store i8 91, ptr %b.rn.dst, align 1
  br label %br.done.122

br.c2.122:                                        ; preds = %b.grow_done158
  br i1 true, label %br.b2.122, label %br.c3.122

br.b2.122:                                        ; preds = %br.c2.122
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -101, ptr %br.dst1, align 1
  br label %br.done.122

br.c3.122:                                        ; preds = %br.c2.122
  br i1 true, label %br.b3.122, label %br.b4.122

br.b3.122:                                        ; preds = %br.c3.122
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -101, ptr %br.dst2.3, align 1
  br label %br.done.122

br.b4.122:                                        ; preds = %br.c3.122
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -101, ptr %br.dst3.4, align 1
  br label %br.done.122

br.done.122:                                      ; preds = %br.b4.122, %br.b3.122, %br.b2.122, %br.b1.122
  %br.nul = getelementptr i8, ptr %b.rn.data178, i64 %sum149
  store i8 0, ptr %br.nul, align 1
  %b.len.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  store i64 %sum149, ptr %b.len.gep179, align 8
  %var.load180 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load180, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load180, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.123, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._146, align 8
  br label %loop.header.123

loop.header.123:                                  ; preds = %loop.latch.123, %br.done.122
  %counter.load = load i64, ptr %loop.idx.123, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.123, label %loop.exit.nat.123

loop.body.123:                                    ; preds = %loop.header.123
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.123, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load180, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %counter.load
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.elem.val, ptr %var._181, align 8
  store ptr %sl.elem.val, ptr %var.item, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load182 = load i64, ptr %var.i, align 8
  %cmptmp = icmp sgt i64 %var.load182, 0
  br i1 %cmptmp, label %choice.then183, label %choice.exit184

loop.exit.nat.123:                                ; preds = %loop.header.123
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.123

loop.latch.123:                                   ; preds = %choice.exit184
  %step.val = load i64, ptr %loop.step.123, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.123, align 8
  br label %loop.header.123

loop.exit.123:                                    ; preds = %loop.exit.nat.123
  store ptr %cycle.prev.u, ptr %var._146, align 8
  %b.load231 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  %b.rn.cur.len233 = load i64, ptr %b.rn.cur.len232, align 8
  %b.rn.new.len234 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len233, i64 1)
  %sum235 = extractvalue { i64, i1 } %b.rn.new.len234, 0
  %ovf236 = extractvalue { i64, i1 } %b.rn.new.len234, 1
  br i1 %ovf236, label %str_overflow_abort238, label %b.rn.new.len237

choice.then183:                                   ; preds = %loop.body.123
  %b.load185 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.rn.cur.len187 = load i64, ptr %b.rn.cur.len186, align 8
  %b.rn.new.len188 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len187, i64 1)
  %sum189 = extractvalue { i64, i1 } %b.rn.new.len188, 0
  %ovf190 = extractvalue { i64, i1 } %b.rn.new.len188, 1
  br i1 %ovf190, label %str_overflow_abort192, label %b.rn.new.len191

choice.exit184:                                   ; preds = %br.done.124, %loop.body.123
  %var.load229 = load ptr, ptr %var.b, align 8
  %var.load230 = load ptr, ptr %var.item, align 8
  call void @"json::#stringify_into"(ptr %var.load229, ptr %var.load230)
  br label %loop.latch.123

b.rn.new.len191:                                  ; preds = %str_overflow_abort192, %choice.then183
  %b.cap193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  %b.cap194 = load i64, ptr %b.cap193, align 8
  %b.need.grow195 = icmp slt i64 %b.cap194, %sum189
  br i1 %b.need.grow195, label %b.grow2196, label %b.nogrow2197

str_overflow_abort192:                            ; preds = %choice.then183
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len191

b.grow2196:                                       ; preds = %b.rn.new.len191
  %b.cap2199 = mul i64 %b.cap194, 2
  %b.cap.small200 = icmp slt i64 %b.cap2199, 16
  %b.cap.grow201 = select i1 %b.cap.small200, i64 16, i64 %b.cap2199
  %b.cap.need202 = icmp slt i64 %b.cap.grow201, %sum189
  %b.new.cap203 = select i1 %b.cap.need202, i64 %sum189, i64 %b.cap.grow201
  %b.cur.len2204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.cur.len2205 = load i64, ptr %b.cur.len2204, align 8
  %b.cur.data2206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.cur.data2207 = load ptr, ptr %b.cur.data2206, align 8
  %b.new.buf.len2208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap203, i64 1)
  %sum209 = extractvalue { i64, i1 } %b.new.buf.len2208, 0
  %ovf210 = extractvalue { i64, i1 } %b.new.buf.len2208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %b.new.buf.len2211

b.nogrow2197:                                     ; preds = %b.rn.new.len191
  br label %b.grow_done198

b.grow_done198:                                   ; preds = %b.nogrow2197, %b.new.buf.len2211
  %b.rn.data218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.rn.data219 = load ptr, ptr %b.rn.data218, align 8
  %b.rn.dst220 = getelementptr i8, ptr %b.rn.data219, i64 %b.rn.cur.len187
  br i1 true, label %br.b1.124, label %br.c2.124

b.new.buf.len2211:                                ; preds = %str_overflow_abort212, %b.grow2196
  %arena.cur213 = call ptr @dva_arena_current()
  %b.new.buf2214 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %sum209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2214, ptr align 1 %b.cur.data2207, i64 %b.cur.len2205, i1 false)
  %b.grow2.nul215 = getelementptr i8, ptr %b.new.buf2214, i64 %b.cur.len2205
  store i8 0, ptr %b.grow2.nul215, align 1
  %b.new.data2.gep216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  store ptr %b.new.buf2214, ptr %b.new.data2.gep216, align 8
  %b.new.cap2.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  store i64 %b.new.cap203, ptr %b.new.cap2.gep217, align 8
  br label %b.grow_done198

str_overflow_abort212:                            ; preds = %b.grow2196
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2211

br.b1.124:                                        ; preds = %b.grow_done198
  store i8 44, ptr %b.rn.dst220, align 1
  br label %br.done.124

br.c2.124:                                        ; preds = %b.grow_done198
  br i1 true, label %br.b2.124, label %br.c3.124

br.b2.124:                                        ; preds = %br.c2.124
  store i8 -64, ptr %b.rn.dst220, align 1
  %br.dst1221 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -84, ptr %br.dst1221, align 1
  br label %br.done.124

br.c3.124:                                        ; preds = %br.c2.124
  br i1 true, label %br.b3.124, label %br.b4.124

br.b3.124:                                        ; preds = %br.c3.124
  store i8 -32, ptr %b.rn.dst220, align 1
  %br.dst1.3222 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -128, ptr %br.dst1.3222, align 1
  %br.dst2.3223 = getelementptr i8, ptr %b.rn.dst220, i64 2
  store i8 -84, ptr %br.dst2.3223, align 1
  br label %br.done.124

br.b4.124:                                        ; preds = %br.c3.124
  store i8 -16, ptr %b.rn.dst220, align 1
  %br.dst1.4224 = getelementptr i8, ptr %b.rn.dst220, i64 1
  store i8 -128, ptr %br.dst1.4224, align 1
  %br.dst2.4225 = getelementptr i8, ptr %b.rn.dst220, i64 2
  store i8 -128, ptr %br.dst2.4225, align 1
  %br.dst3.4226 = getelementptr i8, ptr %b.rn.dst220, i64 3
  store i8 -84, ptr %br.dst3.4226, align 1
  br label %br.done.124

br.done.124:                                      ; preds = %br.b4.124, %br.b3.124, %br.b2.124, %br.b1.124
  %br.nul227 = getelementptr i8, ptr %b.rn.data219, i64 %sum189
  store i8 0, ptr %br.nul227, align 1
  %b.len.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  store i64 %sum189, ptr %b.len.gep228, align 8
  br label %choice.exit184

b.rn.new.len237:                                  ; preds = %str_overflow_abort238, %loop.exit.123
  %b.cap239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 2
  %b.cap240 = load i64, ptr %b.cap239, align 8
  %b.need.grow241 = icmp slt i64 %b.cap240, %sum235
  br i1 %b.need.grow241, label %b.grow2242, label %b.nogrow2243

str_overflow_abort238:                            ; preds = %loop.exit.123
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len237

b.grow2242:                                       ; preds = %b.rn.new.len237
  %b.cap2245 = mul i64 %b.cap240, 2
  %b.cap.small246 = icmp slt i64 %b.cap2245, 16
  %b.cap.grow247 = select i1 %b.cap.small246, i64 16, i64 %b.cap2245
  %b.cap.need248 = icmp slt i64 %b.cap.grow247, %sum235
  %b.new.cap249 = select i1 %b.cap.need248, i64 %sum235, i64 %b.cap.grow247
  %b.cur.len2250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  %b.cur.len2251 = load i64, ptr %b.cur.len2250, align 8
  %b.cur.data2252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  %b.cur.data2253 = load ptr, ptr %b.cur.data2252, align 8
  %b.new.buf.len2254 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap249, i64 1)
  %sum255 = extractvalue { i64, i1 } %b.new.buf.len2254, 0
  %ovf256 = extractvalue { i64, i1 } %b.new.buf.len2254, 1
  br i1 %ovf256, label %str_overflow_abort258, label %b.new.buf.len2257

b.nogrow2243:                                     ; preds = %b.rn.new.len237
  br label %b.grow_done244

b.grow_done244:                                   ; preds = %b.nogrow2243, %b.new.buf.len2257
  %b.rn.data264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  %b.rn.data265 = load ptr, ptr %b.rn.data264, align 8
  %b.rn.dst266 = getelementptr i8, ptr %b.rn.data265, i64 %b.rn.cur.len233
  br i1 true, label %br.b1.125, label %br.c2.125

b.new.buf.len2257:                                ; preds = %str_overflow_abort258, %b.grow2242
  %arena.cur259 = call ptr @dva_arena_current()
  %b.new.buf2260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 %sum255)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2260, ptr align 1 %b.cur.data2253, i64 %b.cur.len2251, i1 false)
  %b.grow2.nul261 = getelementptr i8, ptr %b.new.buf2260, i64 %b.cur.len2251
  store i8 0, ptr %b.grow2.nul261, align 1
  %b.new.data2.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 1
  store ptr %b.new.buf2260, ptr %b.new.data2.gep262, align 8
  %b.new.cap2.gep263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 2
  store i64 %b.new.cap249, ptr %b.new.cap2.gep263, align 8
  br label %b.grow_done244

str_overflow_abort258:                            ; preds = %b.grow2242
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2257

br.b1.125:                                        ; preds = %b.grow_done244
  store i8 93, ptr %b.rn.dst266, align 1
  br label %br.done.125

br.c2.125:                                        ; preds = %b.grow_done244
  br i1 true, label %br.b2.125, label %br.c3.125

br.b2.125:                                        ; preds = %br.c2.125
  store i8 -63, ptr %b.rn.dst266, align 1
  %br.dst1267 = getelementptr i8, ptr %b.rn.dst266, i64 1
  store i8 -99, ptr %br.dst1267, align 1
  br label %br.done.125

br.c3.125:                                        ; preds = %br.c2.125
  br i1 true, label %br.b3.125, label %br.b4.125

br.b3.125:                                        ; preds = %br.c3.125
  store i8 -32, ptr %b.rn.dst266, align 1
  %br.dst1.3268 = getelementptr i8, ptr %b.rn.dst266, i64 1
  store i8 -127, ptr %br.dst1.3268, align 1
  %br.dst2.3269 = getelementptr i8, ptr %b.rn.dst266, i64 2
  store i8 -99, ptr %br.dst2.3269, align 1
  br label %br.done.125

br.b4.125:                                        ; preds = %br.c3.125
  store i8 -16, ptr %b.rn.dst266, align 1
  %br.dst1.4270 = getelementptr i8, ptr %b.rn.dst266, i64 1
  store i8 -128, ptr %br.dst1.4270, align 1
  %br.dst2.4271 = getelementptr i8, ptr %b.rn.dst266, i64 2
  store i8 -127, ptr %br.dst2.4271, align 1
  %br.dst3.4272 = getelementptr i8, ptr %b.rn.dst266, i64 3
  store i8 -99, ptr %br.dst3.4272, align 1
  br label %br.done.125

br.done.125:                                      ; preds = %br.b4.125, %br.b3.125, %br.b2.125, %br.b1.125
  %br.nul273 = getelementptr i8, ptr %b.rn.data265, i64 %sum235
  store i8 0, ptr %br.nul273, align 1
  %b.len.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load231, i32 0, i32 0
  store i64 %sum235, ptr %b.len.gep274, align 8
  br label %choice.exit

choice.case275:                                   ; preds = %choice.next140
  %pay.gep280 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr281 = load ptr, ptr %pay.gep280, align 8
  store ptr %payload.ptr281, ptr %var._282, align 8
  store ptr %payload.ptr281, ptr %var.pairs, align 8
  %b.load283 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  %b.rn.cur.len285 = load i64, ptr %b.rn.cur.len284, align 8
  %b.rn.new.len286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len285, i64 1)
  %sum287 = extractvalue { i64, i1 } %b.rn.new.len286, 0
  %ovf288 = extractvalue { i64, i1 } %b.rn.new.len286, 1
  br i1 %ovf288, label %str_overflow_abort290, label %b.rn.new.len289

choice.next276:                                   ; preds = %choice.next140
  br label %choice.exit

b.rn.new.len289:                                  ; preds = %str_overflow_abort290, %choice.case275
  %b.cap291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 2
  %b.cap292 = load i64, ptr %b.cap291, align 8
  %b.need.grow293 = icmp slt i64 %b.cap292, %sum287
  br i1 %b.need.grow293, label %b.grow2294, label %b.nogrow2295

str_overflow_abort290:                            ; preds = %choice.case275
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len289

b.grow2294:                                       ; preds = %b.rn.new.len289
  %b.cap2297 = mul i64 %b.cap292, 2
  %b.cap.small298 = icmp slt i64 %b.cap2297, 16
  %b.cap.grow299 = select i1 %b.cap.small298, i64 16, i64 %b.cap2297
  %b.cap.need300 = icmp slt i64 %b.cap.grow299, %sum287
  %b.new.cap301 = select i1 %b.cap.need300, i64 %sum287, i64 %b.cap.grow299
  %b.cur.len2302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  %b.cur.len2303 = load i64, ptr %b.cur.len2302, align 8
  %b.cur.data2304 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 1
  %b.cur.data2305 = load ptr, ptr %b.cur.data2304, align 8
  %b.new.buf.len2306 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap301, i64 1)
  %sum307 = extractvalue { i64, i1 } %b.new.buf.len2306, 0
  %ovf308 = extractvalue { i64, i1 } %b.new.buf.len2306, 1
  br i1 %ovf308, label %str_overflow_abort310, label %b.new.buf.len2309

b.nogrow2295:                                     ; preds = %b.rn.new.len289
  br label %b.grow_done296

b.grow_done296:                                   ; preds = %b.nogrow2295, %b.new.buf.len2309
  %b.rn.data316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 1
  %b.rn.data317 = load ptr, ptr %b.rn.data316, align 8
  %b.rn.dst318 = getelementptr i8, ptr %b.rn.data317, i64 %b.rn.cur.len285
  br i1 true, label %br.b1.126, label %br.c2.126

b.new.buf.len2309:                                ; preds = %str_overflow_abort310, %b.grow2294
  %arena.cur311 = call ptr @dva_arena_current()
  %b.new.buf2312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 %sum307)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2312, ptr align 1 %b.cur.data2305, i64 %b.cur.len2303, i1 false)
  %b.grow2.nul313 = getelementptr i8, ptr %b.new.buf2312, i64 %b.cur.len2303
  store i8 0, ptr %b.grow2.nul313, align 1
  %b.new.data2.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 1
  store ptr %b.new.buf2312, ptr %b.new.data2.gep314, align 8
  %b.new.cap2.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 2
  store i64 %b.new.cap301, ptr %b.new.cap2.gep315, align 8
  br label %b.grow_done296

str_overflow_abort310:                            ; preds = %b.grow2294
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2309

br.b1.126:                                        ; preds = %b.grow_done296
  store i8 123, ptr %b.rn.dst318, align 1
  br label %br.done.126

br.c2.126:                                        ; preds = %b.grow_done296
  br i1 true, label %br.b2.126, label %br.c3.126

br.b2.126:                                        ; preds = %br.c2.126
  store i8 -63, ptr %b.rn.dst318, align 1
  %br.dst1319 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -69, ptr %br.dst1319, align 1
  br label %br.done.126

br.c3.126:                                        ; preds = %br.c2.126
  br i1 true, label %br.b3.126, label %br.b4.126

br.b3.126:                                        ; preds = %br.c3.126
  store i8 -32, ptr %b.rn.dst318, align 1
  %br.dst1.3320 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -127, ptr %br.dst1.3320, align 1
  %br.dst2.3321 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -69, ptr %br.dst2.3321, align 1
  br label %br.done.126

br.b4.126:                                        ; preds = %br.c3.126
  store i8 -16, ptr %b.rn.dst318, align 1
  %br.dst1.4322 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -128, ptr %br.dst1.4322, align 1
  %br.dst2.4323 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -127, ptr %br.dst2.4323, align 1
  %br.dst3.4324 = getelementptr i8, ptr %b.rn.dst318, i64 3
  store i8 -69, ptr %br.dst3.4324, align 1
  br label %br.done.126

br.done.126:                                      ; preds = %br.b4.126, %br.b3.126, %br.b2.126, %br.b1.126
  %br.nul325 = getelementptr i8, ptr %b.rn.data317, i64 %sum287
  store i8 0, ptr %br.nul325, align 1
  %b.len.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  store i64 %sum287, ptr %b.len.gep326, align 8
  %var.load327 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep328 = getelementptr inbounds { ptr, i64 }, ptr %var.load327, i32 0, i32 1
  %sl.len.raw329 = load i64, ptr %sl.len.gep328, align 8
  %sl.len330 = and i64 %sl.len.raw329, 4611686018427387903
  %sl.data.gep331 = getelementptr inbounds { ptr, i64 }, ptr %var.load327, i32 0, i32 0
  %sl.data332 = load ptr, ptr %sl.data.gep331, align 8
  store i64 0, ptr %loop.idx.127, align 8
  store i64 0, ptr %var.i333, align 8
  %cycle.prev.u334 = load ptr, ptr %var._282, align 8
  br label %loop.header.127

loop.header.127:                                  ; preds = %loop.latch.127, %br.done.126
  %counter.load335 = load i64, ptr %loop.idx.127, align 8
  %loop.cond336 = icmp slt i64 %counter.load335, %sl.len330
  br i1 %loop.cond336, label %loop.body.127, label %loop.exit.nat.127

loop.body.127:                                    ; preds = %loop.header.127
  %loop.rel.i338 = sub i64 %counter.load335, 0
  store i64 1, ptr %loop.step.127, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load327, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.127:                                ; preds = %loop.header.127
  %loop.rel.end337 = sub i64 %counter.load335, 0
  store i64 %loop.rel.end337, ptr %var.i333, align 8
  br label %loop.exit.127

loop.latch.127:                                   ; preds = %br.done.129
  %step.val439 = load i64, ptr %loop.step.127, align 8
  %loop.next440 = add i64 %counter.load335, %step.val439
  store i64 %loop.next440, ptr %loop.idx.127, align 8
  br label %loop.header.127

loop.exit.127:                                    ; preds = %loop.exit.nat.127
  store ptr %cycle.prev.u334, ptr %var._282, align 8
  %b.load441 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len442 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 0
  %b.rn.cur.len443 = load i64, ptr %b.rn.cur.len442, align 8
  %b.rn.new.len444 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len443, i64 1)
  %sum445 = extractvalue { i64, i1 } %b.rn.new.len444, 0
  %ovf446 = extractvalue { i64, i1 } %b.rn.new.len444, 1
  br i1 %ovf446, label %str_overflow_abort448, label %b.rn.new.len447

sl.rec.elem.pbb:                                  ; preds = %loop.body.127
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data332, i64 %counter.load335
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.127
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data332, i64 %counter.load335
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i338, ptr %var._i339, align 8
  store ptr %sl.rec.elem, ptr %var._340, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i338, ptr %var.i333, align 8
  %var.load341 = load i64, ptr %var.i333, align 8
  %cmptmp342 = icmp sgt i64 %var.load341, 0
  br i1 %cmptmp342, label %choice.then343, label %choice.exit344

choice.then343:                                   ; preds = %sl.rec.elem.dbb
  %b.load345 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len346 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 0
  %b.rn.cur.len347 = load i64, ptr %b.rn.cur.len346, align 8
  %b.rn.new.len348 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len347, i64 1)
  %sum349 = extractvalue { i64, i1 } %b.rn.new.len348, 0
  %ovf350 = extractvalue { i64, i1 } %b.rn.new.len348, 1
  br i1 %ovf350, label %str_overflow_abort352, label %b.rn.new.len351

choice.exit344:                                   ; preds = %br.done.128, %sl.rec.elem.dbb
  %var.load389 = load ptr, ptr %var.b, align 8
  %var.load390 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load390, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load389, ptr %fld.load)
  %b.load391 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len392 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  %b.rn.cur.len393 = load i64, ptr %b.rn.cur.len392, align 8
  %b.rn.new.len394 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len393, i64 1)
  %sum395 = extractvalue { i64, i1 } %b.rn.new.len394, 0
  %ovf396 = extractvalue { i64, i1 } %b.rn.new.len394, 1
  br i1 %ovf396, label %str_overflow_abort398, label %b.rn.new.len397

b.rn.new.len351:                                  ; preds = %str_overflow_abort352, %choice.then343
  %b.cap353 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 2
  %b.cap354 = load i64, ptr %b.cap353, align 8
  %b.need.grow355 = icmp slt i64 %b.cap354, %sum349
  br i1 %b.need.grow355, label %b.grow2356, label %b.nogrow2357

str_overflow_abort352:                            ; preds = %choice.then343
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len351

b.grow2356:                                       ; preds = %b.rn.new.len351
  %b.cap2359 = mul i64 %b.cap354, 2
  %b.cap.small360 = icmp slt i64 %b.cap2359, 16
  %b.cap.grow361 = select i1 %b.cap.small360, i64 16, i64 %b.cap2359
  %b.cap.need362 = icmp slt i64 %b.cap.grow361, %sum349
  %b.new.cap363 = select i1 %b.cap.need362, i64 %sum349, i64 %b.cap.grow361
  %b.cur.len2364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 0
  %b.cur.len2365 = load i64, ptr %b.cur.len2364, align 8
  %b.cur.data2366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 1
  %b.cur.data2367 = load ptr, ptr %b.cur.data2366, align 8
  %b.new.buf.len2368 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap363, i64 1)
  %sum369 = extractvalue { i64, i1 } %b.new.buf.len2368, 0
  %ovf370 = extractvalue { i64, i1 } %b.new.buf.len2368, 1
  br i1 %ovf370, label %str_overflow_abort372, label %b.new.buf.len2371

b.nogrow2357:                                     ; preds = %b.rn.new.len351
  br label %b.grow_done358

b.grow_done358:                                   ; preds = %b.nogrow2357, %b.new.buf.len2371
  %b.rn.data378 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 1
  %b.rn.data379 = load ptr, ptr %b.rn.data378, align 8
  %b.rn.dst380 = getelementptr i8, ptr %b.rn.data379, i64 %b.rn.cur.len347
  br i1 true, label %br.b1.128, label %br.c2.128

b.new.buf.len2371:                                ; preds = %str_overflow_abort372, %b.grow2356
  %arena.cur373 = call ptr @dva_arena_current()
  %b.new.buf2374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 %sum369)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2374, ptr align 1 %b.cur.data2367, i64 %b.cur.len2365, i1 false)
  %b.grow2.nul375 = getelementptr i8, ptr %b.new.buf2374, i64 %b.cur.len2365
  store i8 0, ptr %b.grow2.nul375, align 1
  %b.new.data2.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 1
  store ptr %b.new.buf2374, ptr %b.new.data2.gep376, align 8
  %b.new.cap2.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 2
  store i64 %b.new.cap363, ptr %b.new.cap2.gep377, align 8
  br label %b.grow_done358

str_overflow_abort372:                            ; preds = %b.grow2356
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2371

br.b1.128:                                        ; preds = %b.grow_done358
  store i8 44, ptr %b.rn.dst380, align 1
  br label %br.done.128

br.c2.128:                                        ; preds = %b.grow_done358
  br i1 true, label %br.b2.128, label %br.c3.128

br.b2.128:                                        ; preds = %br.c2.128
  store i8 -64, ptr %b.rn.dst380, align 1
  %br.dst1381 = getelementptr i8, ptr %b.rn.dst380, i64 1
  store i8 -84, ptr %br.dst1381, align 1
  br label %br.done.128

br.c3.128:                                        ; preds = %br.c2.128
  br i1 true, label %br.b3.128, label %br.b4.128

br.b3.128:                                        ; preds = %br.c3.128
  store i8 -32, ptr %b.rn.dst380, align 1
  %br.dst1.3382 = getelementptr i8, ptr %b.rn.dst380, i64 1
  store i8 -128, ptr %br.dst1.3382, align 1
  %br.dst2.3383 = getelementptr i8, ptr %b.rn.dst380, i64 2
  store i8 -84, ptr %br.dst2.3383, align 1
  br label %br.done.128

br.b4.128:                                        ; preds = %br.c3.128
  store i8 -16, ptr %b.rn.dst380, align 1
  %br.dst1.4384 = getelementptr i8, ptr %b.rn.dst380, i64 1
  store i8 -128, ptr %br.dst1.4384, align 1
  %br.dst2.4385 = getelementptr i8, ptr %b.rn.dst380, i64 2
  store i8 -128, ptr %br.dst2.4385, align 1
  %br.dst3.4386 = getelementptr i8, ptr %b.rn.dst380, i64 3
  store i8 -84, ptr %br.dst3.4386, align 1
  br label %br.done.128

br.done.128:                                      ; preds = %br.b4.128, %br.b3.128, %br.b2.128, %br.b1.128
  %br.nul387 = getelementptr i8, ptr %b.rn.data379, i64 %sum349
  store i8 0, ptr %br.nul387, align 1
  %b.len.gep388 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load345, i32 0, i32 0
  store i64 %sum349, ptr %b.len.gep388, align 8
  br label %choice.exit344

b.rn.new.len397:                                  ; preds = %str_overflow_abort398, %choice.exit344
  %b.cap399 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 2
  %b.cap400 = load i64, ptr %b.cap399, align 8
  %b.need.grow401 = icmp slt i64 %b.cap400, %sum395
  br i1 %b.need.grow401, label %b.grow2402, label %b.nogrow2403

str_overflow_abort398:                            ; preds = %choice.exit344
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len397

b.grow2402:                                       ; preds = %b.rn.new.len397
  %b.cap2405 = mul i64 %b.cap400, 2
  %b.cap.small406 = icmp slt i64 %b.cap2405, 16
  %b.cap.grow407 = select i1 %b.cap.small406, i64 16, i64 %b.cap2405
  %b.cap.need408 = icmp slt i64 %b.cap.grow407, %sum395
  %b.new.cap409 = select i1 %b.cap.need408, i64 %sum395, i64 %b.cap.grow407
  %b.cur.len2410 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  %b.cur.len2411 = load i64, ptr %b.cur.len2410, align 8
  %b.cur.data2412 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  %b.cur.data2413 = load ptr, ptr %b.cur.data2412, align 8
  %b.new.buf.len2414 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap409, i64 1)
  %sum415 = extractvalue { i64, i1 } %b.new.buf.len2414, 0
  %ovf416 = extractvalue { i64, i1 } %b.new.buf.len2414, 1
  br i1 %ovf416, label %str_overflow_abort418, label %b.new.buf.len2417

b.nogrow2403:                                     ; preds = %b.rn.new.len397
  br label %b.grow_done404

b.grow_done404:                                   ; preds = %b.nogrow2403, %b.new.buf.len2417
  %b.rn.data424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  %b.rn.data425 = load ptr, ptr %b.rn.data424, align 8
  %b.rn.dst426 = getelementptr i8, ptr %b.rn.data425, i64 %b.rn.cur.len393
  br i1 true, label %br.b1.129, label %br.c2.129

b.new.buf.len2417:                                ; preds = %str_overflow_abort418, %b.grow2402
  %arena.cur419 = call ptr @dva_arena_current()
  %b.new.buf2420 = call ptr @dva_arena_alloc(ptr %arena.cur419, i64 %sum415)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2420, ptr align 1 %b.cur.data2413, i64 %b.cur.len2411, i1 false)
  %b.grow2.nul421 = getelementptr i8, ptr %b.new.buf2420, i64 %b.cur.len2411
  store i8 0, ptr %b.grow2.nul421, align 1
  %b.new.data2.gep422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 1
  store ptr %b.new.buf2420, ptr %b.new.data2.gep422, align 8
  %b.new.cap2.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 2
  store i64 %b.new.cap409, ptr %b.new.cap2.gep423, align 8
  br label %b.grow_done404

str_overflow_abort418:                            ; preds = %b.grow2402
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2417

br.b1.129:                                        ; preds = %b.grow_done404
  store i8 58, ptr %b.rn.dst426, align 1
  br label %br.done.129

br.c2.129:                                        ; preds = %b.grow_done404
  br i1 true, label %br.b2.129, label %br.c3.129

br.b2.129:                                        ; preds = %br.c2.129
  store i8 -64, ptr %b.rn.dst426, align 1
  %br.dst1427 = getelementptr i8, ptr %b.rn.dst426, i64 1
  store i8 -70, ptr %br.dst1427, align 1
  br label %br.done.129

br.c3.129:                                        ; preds = %br.c2.129
  br i1 true, label %br.b3.129, label %br.b4.129

br.b3.129:                                        ; preds = %br.c3.129
  store i8 -32, ptr %b.rn.dst426, align 1
  %br.dst1.3428 = getelementptr i8, ptr %b.rn.dst426, i64 1
  store i8 -128, ptr %br.dst1.3428, align 1
  %br.dst2.3429 = getelementptr i8, ptr %b.rn.dst426, i64 2
  store i8 -70, ptr %br.dst2.3429, align 1
  br label %br.done.129

br.b4.129:                                        ; preds = %br.c3.129
  store i8 -16, ptr %b.rn.dst426, align 1
  %br.dst1.4430 = getelementptr i8, ptr %b.rn.dst426, i64 1
  store i8 -128, ptr %br.dst1.4430, align 1
  %br.dst2.4431 = getelementptr i8, ptr %b.rn.dst426, i64 2
  store i8 -128, ptr %br.dst2.4431, align 1
  %br.dst3.4432 = getelementptr i8, ptr %b.rn.dst426, i64 3
  store i8 -70, ptr %br.dst3.4432, align 1
  br label %br.done.129

br.done.129:                                      ; preds = %br.b4.129, %br.b3.129, %br.b2.129, %br.b1.129
  %br.nul433 = getelementptr i8, ptr %b.rn.data425, i64 %sum395
  store i8 0, ptr %br.nul433, align 1
  %b.len.gep434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load391, i32 0, i32 0
  store i64 %sum395, ptr %b.len.gep434, align 8
  %var.load435 = load ptr, ptr %var.b, align 8
  %var.load436 = load ptr, ptr %var.p, align 8
  %fld.gep437 = getelementptr inbounds { ptr, ptr }, ptr %var.load436, i32 0, i32 1
  %fld.load438 = load ptr, ptr %fld.gep437, align 8
  call void @"json::#stringify_into"(ptr %var.load435, ptr %fld.load438)
  br label %loop.latch.127

b.rn.new.len447:                                  ; preds = %str_overflow_abort448, %loop.exit.127
  %b.cap449 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 2
  %b.cap450 = load i64, ptr %b.cap449, align 8
  %b.need.grow451 = icmp slt i64 %b.cap450, %sum445
  br i1 %b.need.grow451, label %b.grow2452, label %b.nogrow2453

str_overflow_abort448:                            ; preds = %loop.exit.127
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len447

b.grow2452:                                       ; preds = %b.rn.new.len447
  %b.cap2455 = mul i64 %b.cap450, 2
  %b.cap.small456 = icmp slt i64 %b.cap2455, 16
  %b.cap.grow457 = select i1 %b.cap.small456, i64 16, i64 %b.cap2455
  %b.cap.need458 = icmp slt i64 %b.cap.grow457, %sum445
  %b.new.cap459 = select i1 %b.cap.need458, i64 %sum445, i64 %b.cap.grow457
  %b.cur.len2460 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 0
  %b.cur.len2461 = load i64, ptr %b.cur.len2460, align 8
  %b.cur.data2462 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 1
  %b.cur.data2463 = load ptr, ptr %b.cur.data2462, align 8
  %b.new.buf.len2464 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap459, i64 1)
  %sum465 = extractvalue { i64, i1 } %b.new.buf.len2464, 0
  %ovf466 = extractvalue { i64, i1 } %b.new.buf.len2464, 1
  br i1 %ovf466, label %str_overflow_abort468, label %b.new.buf.len2467

b.nogrow2453:                                     ; preds = %b.rn.new.len447
  br label %b.grow_done454

b.grow_done454:                                   ; preds = %b.nogrow2453, %b.new.buf.len2467
  %b.rn.data474 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 1
  %b.rn.data475 = load ptr, ptr %b.rn.data474, align 8
  %b.rn.dst476 = getelementptr i8, ptr %b.rn.data475, i64 %b.rn.cur.len443
  br i1 true, label %br.b1.130, label %br.c2.130

b.new.buf.len2467:                                ; preds = %str_overflow_abort468, %b.grow2452
  %arena.cur469 = call ptr @dva_arena_current()
  %b.new.buf2470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 %sum465)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2470, ptr align 1 %b.cur.data2463, i64 %b.cur.len2461, i1 false)
  %b.grow2.nul471 = getelementptr i8, ptr %b.new.buf2470, i64 %b.cur.len2461
  store i8 0, ptr %b.grow2.nul471, align 1
  %b.new.data2.gep472 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 1
  store ptr %b.new.buf2470, ptr %b.new.data2.gep472, align 8
  %b.new.cap2.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 2
  store i64 %b.new.cap459, ptr %b.new.cap2.gep473, align 8
  br label %b.grow_done454

str_overflow_abort468:                            ; preds = %b.grow2452
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2467

br.b1.130:                                        ; preds = %b.grow_done454
  store i8 125, ptr %b.rn.dst476, align 1
  br label %br.done.130

br.c2.130:                                        ; preds = %b.grow_done454
  br i1 true, label %br.b2.130, label %br.c3.130

br.b2.130:                                        ; preds = %br.c2.130
  store i8 -63, ptr %b.rn.dst476, align 1
  %br.dst1477 = getelementptr i8, ptr %b.rn.dst476, i64 1
  store i8 -67, ptr %br.dst1477, align 1
  br label %br.done.130

br.c3.130:                                        ; preds = %br.c2.130
  br i1 true, label %br.b3.130, label %br.b4.130

br.b3.130:                                        ; preds = %br.c3.130
  store i8 -32, ptr %b.rn.dst476, align 1
  %br.dst1.3478 = getelementptr i8, ptr %b.rn.dst476, i64 1
  store i8 -127, ptr %br.dst1.3478, align 1
  %br.dst2.3479 = getelementptr i8, ptr %b.rn.dst476, i64 2
  store i8 -67, ptr %br.dst2.3479, align 1
  br label %br.done.130

br.b4.130:                                        ; preds = %br.c3.130
  store i8 -16, ptr %b.rn.dst476, align 1
  %br.dst1.4480 = getelementptr i8, ptr %b.rn.dst476, i64 1
  store i8 -128, ptr %br.dst1.4480, align 1
  %br.dst2.4481 = getelementptr i8, ptr %b.rn.dst476, i64 2
  store i8 -127, ptr %br.dst2.4481, align 1
  %br.dst3.4482 = getelementptr i8, ptr %b.rn.dst476, i64 3
  store i8 -67, ptr %br.dst3.4482, align 1
  br label %br.done.130

br.done.130:                                      ; preds = %br.b4.130, %br.b3.130, %br.b2.130, %br.b1.130
  %br.nul483 = getelementptr i8, ptr %b.rn.data475, i64 %sum445
  store i8 0, ptr %br.nul483, align 1
  %b.len.gep484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load441, i32 0, i32 0
  store i64 %sum445, ptr %b.len.gep484, align 8
  br label %choice.exit
}

define internal void @"json::#append_indent"(ptr %0, i64 %1) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.131 = alloca i64, align 8
  %loop.idx.131 = alloca i64, align 8
  %var.spaces = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.spaces, align 8
  %var.load = load i64, ptr %var.spaces, align 8
  store i64 0, ptr %loop.idx.131, align 8
  br label %loop.header.131

loop.header.131:                                  ; preds = %loop.latch.131, %entry
  %counter.load = load i64, ptr %loop.idx.131, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load
  br i1 %loop.cond, label %loop.body.131, label %loop.exit.nat.131

loop.body.131:                                    ; preds = %loop.header.131
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.131, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

loop.exit.nat.131:                                ; preds = %loop.header.131
  br label %loop.exit.131

loop.latch.131:                                   ; preds = %br.done.132
  %step.val = load i64, ptr %loop.step.131, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.131, align 8
  br label %loop.header.131

loop.exit.131:                                    ; preds = %loop.exit.nat.131
  ret void

b.rn.new.len2:                                    ; preds = %str_overflow_abort, %loop.body.131
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.131
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %b.rn.data10 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data10, i64 %b.rn.cur.len1
  br i1 true, label %br.b1.132, label %br.c2.132

b.new.buf.len28:                                  ; preds = %str_overflow_abort9, %b.grow2
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
  br label %b.new.buf.len28

br.b1.132:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.132

br.c2.132:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.132, label %br.c3.132

br.b2.132:                                        ; preds = %br.c2.132
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.132

br.c3.132:                                        ; preds = %br.c2.132
  br i1 true, label %br.b3.132, label %br.b4.132

br.b3.132:                                        ; preds = %br.c3.132
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.132

br.b4.132:                                        ; preds = %br.c3.132
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.132

br.done.132:                                      ; preds = %br.b4.132, %br.b3.132, %br.b2.132, %br.b1.132
  %br.nul = getelementptr i8, ptr %b.rn.data10, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.131
}

define internal void @"json::#stringify_pretty_into"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
entry:
  %var._515 = alloca ptr, align 8
  %var._i514 = alloca i64, align 8
  %var.i508 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.136 = alloca i64, align 8
  %loop.idx.136 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._397 = alloca ptr, align 8
  %var._248 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.133 = alloca i64, align 8
  %loop.idx.133 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._146 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._33 = alloca i1, align 1
  %var.n = alloca double, align 8
  %var._10 = alloca double, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.depth = alloca i64, align 8
  %var.indent = alloca i64, align 8
  %var.val = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store ptr %1, ptr %var.val, align 8
  store i64 %2, ptr %var.indent, align 8
  store i64 %3, ptr %var.depth, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next391, %choice.exit405, %choice.exit150, %b.grow_done113, %b.grow_done59, %b.grow_done, %choice.case
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  call void @"json::escape_string_into"(ptr %var.load1, ptr %var.load2)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id6 = load i64, ptr %tag.gep5, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 1
  br i1 %tag.match7, label %choice.case3, label %choice.next4

choice.case3:                                     ; preds = %choice.next
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr9 = load ptr, ptr %pay.gep8, align 8
  %pay.float.null = icmp eq ptr %payload.ptr9, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next4:                                     ; preds = %choice.next
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 2
  br i1 %tag.match30, label %choice.case26, label %choice.next27

pay.float.load:                                   ; preds = %choice.case3
  %pay.float.val = load double, ptr %payload.ptr9, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case3
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._10, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load11 = load double, ptr %var.n, align 8
  %call.res = call ptr @"json::format_number"(double %var.load11)
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %app.str.len12 = load i64, ptr %app.str.len, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %str.tag = lshr i64 %app.str.len12, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %pay.float.merge
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %pay.float.merge
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len14 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len14, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len15

str_stale:                                        ; preds = %str_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

b.app.new.len15:                                  ; preds = %str_overflow_abort, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap16 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap16, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len15

b.grow2:                                          ; preds = %b.app.new.len15
  %b.cap2 = mul i64 %b.cap16, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len217 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data218 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum19 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf20 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf20, label %str_overflow_abort22, label %b.new.buf.len221

b.nogrow2:                                        ; preds = %b.app.new.len15
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len221
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %app.str.data24 = load ptr, ptr %app.str.data, align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data25 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data25, i64 %b.app.cur.len14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data24, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data25, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len221:                                 ; preds = %str_overflow_abort22, %b.grow2
  %arena.cur23 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data218, i64 %b.cur.len217, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len217
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort22:                             ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len221

choice.case26:                                    ; preds = %choice.next4
  %pay.gep31 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr32 = load ptr, ptr %pay.gep31, align 8
  %pay.int.null = icmp eq ptr %payload.ptr32, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next27:                                    ; preds = %choice.next4
  %tag.gep88 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id89 = load i64, ptr %tag.gep88, align 8
  %tag.match90 = icmp eq i64 %tag.id89, 3
  br i1 %tag.match90, label %choice.case86, label %choice.next87

pay.int.load:                                     ; preds = %choice.case26
  %pay.int.val = load i1, ptr %payload.ptr32, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case26
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._33, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %b.load34 = load ptr, ptr %var.b, align 8
  %var.load35 = load i1, ptr %var.flag, align 1
  br i1 %var.load35, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.int.merge
  br label %choice.exit36

choice.else:                                      ; preds = %pay.int.merge
  br label %choice.exit36

choice.exit36:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  %app.str.len37 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %app.str.len38 = load i64, ptr %app.str.len37, align 8
  %app.str.len39 = and i64 %app.str.len38, 281474976710655
  %str.tag40 = lshr i64 %app.str.len38, 48
  %str.immortal41 = icmp eq i64 %str.tag40, 0
  br i1 %str.immortal41, label %str_ok43, label %str_gen_check42

str_gen_check42:                                  ; preds = %choice.exit36
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid46 = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag40)
  br i1 %tag.valid46, label %str_ok43, label %str_stale44

str_ok43:                                         ; preds = %str_stale44, %str_gen_check42, %choice.exit36
  %b.app.cur.len47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  %b.app.cur.len48 = load i64, ptr %b.app.cur.len47, align 8
  %b.app.new.len49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len48, i64 %app.str.len39)
  %sum50 = extractvalue { i64, i1 } %b.app.new.len49, 0
  %ovf51 = extractvalue { i64, i1 } %b.app.new.len49, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.app.new.len52

str_stale44:                                      ; preds = %str_gen_check42
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok43

b.app.new.len52:                                  ; preds = %str_overflow_abort53, %str_ok43
  %b.cap54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap54, align 8
  %b.need.grow56 = icmp slt i64 %b.cap55, %sum50
  br i1 %b.need.grow56, label %b.grow257, label %b.nogrow258

str_overflow_abort53:                             ; preds = %str_ok43
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len52

b.grow257:                                        ; preds = %b.app.new.len52
  %b.cap260 = mul i64 %b.cap55, 2
  %b.cap.small61 = icmp slt i64 %b.cap260, 16
  %b.cap.grow62 = select i1 %b.cap.small61, i64 16, i64 %b.cap260
  %b.cap.need63 = icmp slt i64 %b.cap.grow62, %sum50
  %b.new.cap64 = select i1 %b.cap.need63, i64 %sum50, i64 %b.cap.grow62
  %b.cur.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  %b.cur.len266 = load i64, ptr %b.cur.len265, align 8
  %b.cur.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  %b.cur.data268 = load ptr, ptr %b.cur.data267, align 8
  %b.new.buf.len269 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap64, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.new.buf.len269, 0
  %ovf71 = extractvalue { i64, i1 } %b.new.buf.len269, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.new.buf.len272

b.nogrow258:                                      ; preds = %b.app.new.len52
  br label %b.grow_done59

b.grow_done59:                                    ; preds = %b.nogrow258, %b.new.buf.len272
  %app.str.data79 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data80 = load ptr, ptr %app.str.data79, align 8
  %b.app.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  %b.app.data82 = load ptr, ptr %b.app.data81, align 8
  %b.app.dst83 = getelementptr i8, ptr %b.app.data82, i64 %b.app.cur.len48
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst83, ptr align 1 %app.str.data80, i64 %app.str.len39, i1 false)
  %b.app.nul84 = getelementptr i8, ptr %b.app.data82, i64 %sum50
  store i8 0, ptr %b.app.nul84, align 1
  %b.len.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 0
  store i64 %sum50, ptr %b.len.gep85, align 8
  br label %choice.exit

b.new.buf.len272:                                 ; preds = %str_overflow_abort73, %b.grow257
  %arena.cur74 = call ptr @dva_arena_current()
  %b.new.buf275 = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf275, ptr align 1 %b.cur.data268, i64 %b.cur.len266, i1 false)
  %b.grow2.nul76 = getelementptr i8, ptr %b.new.buf275, i64 %b.cur.len266
  store i8 0, ptr %b.grow2.nul76, align 1
  %b.new.data2.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 1
  store ptr %b.new.buf275, ptr %b.new.data2.gep77, align 8
  %b.new.cap2.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load34, i32 0, i32 2
  store i64 %b.new.cap64, ptr %b.new.cap2.gep78, align 8
  br label %b.grow_done59

str_overflow_abort73:                             ; preds = %b.grow257
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len272

choice.case86:                                    ; preds = %choice.next27
  %b.load91 = load ptr, ptr %var.b, align 8
  %app.str.len92 = load i64, ptr @str.17.struct, align 8
  %app.str.len93 = and i64 %app.str.len92, 281474976710655
  %str.tag94 = lshr i64 %app.str.len92, 48
  %str.immortal95 = icmp eq i64 %str.tag94, 0
  br i1 %str.immortal95, label %str_ok97, label %str_gen_check96

choice.next87:                                    ; preds = %choice.next27
  %tag.gep141 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id142 = load i64, ptr %tag.gep141, align 8
  %tag.match143 = icmp eq i64 %tag.id142, 4
  br i1 %tag.match143, label %choice.case139, label %choice.next140

str_gen_check96:                                  ; preds = %choice.case86
  %arena.cur99 = call ptr @dva_arena_current()
  %tag.valid100 = call i1 @dva_arena_validate_tag(ptr %arena.cur99, i64 %str.tag94)
  br i1 %tag.valid100, label %str_ok97, label %str_stale98

str_ok97:                                         ; preds = %str_stale98, %str_gen_check96, %choice.case86
  %b.app.cur.len101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.app.cur.len102 = load i64, ptr %b.app.cur.len101, align 8
  %b.app.new.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len102, i64 %app.str.len93)
  %sum104 = extractvalue { i64, i1 } %b.app.new.len103, 0
  %ovf105 = extractvalue { i64, i1 } %b.app.new.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.app.new.len106

str_stale98:                                      ; preds = %str_gen_check96
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok97

b.app.new.len106:                                 ; preds = %str_overflow_abort107, %str_ok97
  %b.cap108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  %b.cap109 = load i64, ptr %b.cap108, align 8
  %b.need.grow110 = icmp slt i64 %b.cap109, %sum104
  br i1 %b.need.grow110, label %b.grow2111, label %b.nogrow2112

str_overflow_abort107:                            ; preds = %str_ok97
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len106

b.grow2111:                                       ; preds = %b.app.new.len106
  %b.cap2114 = mul i64 %b.cap109, 2
  %b.cap.small115 = icmp slt i64 %b.cap2114, 16
  %b.cap.grow116 = select i1 %b.cap.small115, i64 16, i64 %b.cap2114
  %b.cap.need117 = icmp slt i64 %b.cap.grow116, %sum104
  %b.new.cap118 = select i1 %b.cap.need117, i64 %sum104, i64 %b.cap.grow116
  %b.cur.len2119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  %b.cur.len2120 = load i64, ptr %b.cur.len2119, align 8
  %b.cur.data2121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.cur.data2122 = load ptr, ptr %b.cur.data2121, align 8
  %b.new.buf.len2123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap118, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len2123, 0
  %ovf125 = extractvalue { i64, i1 } %b.new.buf.len2123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.new.buf.len2126

b.nogrow2112:                                     ; preds = %b.app.new.len106
  br label %b.grow_done113

b.grow_done113:                                   ; preds = %b.nogrow2112, %b.new.buf.len2126
  %app.str.data133 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  %b.app.data135 = load ptr, ptr %b.app.data134, align 8
  %b.app.dst136 = getelementptr i8, ptr %b.app.data135, i64 %b.app.cur.len102
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst136, ptr align 1 %app.str.data133, i64 %app.str.len93, i1 false)
  %b.app.nul137 = getelementptr i8, ptr %b.app.data135, i64 %sum104
  store i8 0, ptr %b.app.nul137, align 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 0
  store i64 %sum104, ptr %b.len.gep138, align 8
  br label %choice.exit

b.new.buf.len2126:                                ; preds = %str_overflow_abort127, %b.grow2111
  %arena.cur128 = call ptr @dva_arena_current()
  %b.new.buf2129 = call ptr @dva_arena_alloc(ptr %arena.cur128, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2129, ptr align 1 %b.cur.data2122, i64 %b.cur.len2120, i1 false)
  %b.grow2.nul130 = getelementptr i8, ptr %b.new.buf2129, i64 %b.cur.len2120
  store i8 0, ptr %b.grow2.nul130, align 1
  %b.new.data2.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 1
  store ptr %b.new.buf2129, ptr %b.new.data2.gep131, align 8
  %b.new.cap2.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load91, i32 0, i32 2
  store i64 %b.new.cap118, ptr %b.new.cap2.gep132, align 8
  br label %b.grow_done113

str_overflow_abort127:                            ; preds = %b.grow2111
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2126

choice.case139:                                   ; preds = %choice.next87
  %pay.gep144 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr145 = load ptr, ptr %pay.gep144, align 8
  store ptr %payload.ptr145, ptr %var._146, align 8
  store ptr %payload.ptr145, ptr %var.items, align 8
  %var.load147 = load ptr, ptr %var.items, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load147, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  %cmptmp = icmp eq i64 %slice.len, 0
  br i1 %cmptmp, label %choice.then148, label %choice.else149

choice.next140:                                   ; preds = %choice.next87
  %tag.gep392 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id393 = load i64, ptr %tag.gep392, align 8
  %tag.match394 = icmp eq i64 %tag.id393, 5
  br i1 %tag.match394, label %choice.case390, label %choice.next391

choice.then148:                                   ; preds = %choice.case139
  %b.load151 = load ptr, ptr %var.b, align 8
  %app.str.len152 = load i64, ptr @str.37.struct, align 8
  %app.str.len153 = and i64 %app.str.len152, 281474976710655
  %str.tag154 = lshr i64 %app.str.len152, 48
  %str.immortal155 = icmp eq i64 %str.tag154, 0
  br i1 %str.immortal155, label %str_ok157, label %str_gen_check156

choice.else149:                                   ; preds = %choice.case139
  %b.load199 = load ptr, ptr %var.b, align 8
  %app.str.len200 = load i64, ptr @str.38.struct, align 8
  %app.str.len201 = and i64 %app.str.len200, 281474976710655
  %str.tag202 = lshr i64 %app.str.len200, 48
  %str.immortal203 = icmp eq i64 %str.tag202, 0
  br i1 %str.immortal203, label %str_ok205, label %str_gen_check204

choice.exit150:                                   ; preds = %br.done.135, %b.grow_done173
  br label %choice.exit

str_gen_check156:                                 ; preds = %choice.then148
  %arena.cur159 = call ptr @dva_arena_current()
  %tag.valid160 = call i1 @dva_arena_validate_tag(ptr %arena.cur159, i64 %str.tag154)
  br i1 %tag.valid160, label %str_ok157, label %str_stale158

str_ok157:                                        ; preds = %str_stale158, %str_gen_check156, %choice.then148
  %b.app.cur.len161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.app.cur.len162 = load i64, ptr %b.app.cur.len161, align 8
  %b.app.new.len163 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len162, i64 %app.str.len153)
  %sum164 = extractvalue { i64, i1 } %b.app.new.len163, 0
  %ovf165 = extractvalue { i64, i1 } %b.app.new.len163, 1
  br i1 %ovf165, label %str_overflow_abort167, label %b.app.new.len166

str_stale158:                                     ; preds = %str_gen_check156
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok157

b.app.new.len166:                                 ; preds = %str_overflow_abort167, %str_ok157
  %b.cap168 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  %b.cap169 = load i64, ptr %b.cap168, align 8
  %b.need.grow170 = icmp slt i64 %b.cap169, %sum164
  br i1 %b.need.grow170, label %b.grow2171, label %b.nogrow2172

str_overflow_abort167:                            ; preds = %str_ok157
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len166

b.grow2171:                                       ; preds = %b.app.new.len166
  %b.cap2174 = mul i64 %b.cap169, 2
  %b.cap.small175 = icmp slt i64 %b.cap2174, 16
  %b.cap.grow176 = select i1 %b.cap.small175, i64 16, i64 %b.cap2174
  %b.cap.need177 = icmp slt i64 %b.cap.grow176, %sum164
  %b.new.cap178 = select i1 %b.cap.need177, i64 %sum164, i64 %b.cap.grow176
  %b.cur.len2179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.cur.len2180 = load i64, ptr %b.cur.len2179, align 8
  %b.cur.data2181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.cur.data2182 = load ptr, ptr %b.cur.data2181, align 8
  %b.new.buf.len2183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap178, i64 1)
  %sum184 = extractvalue { i64, i1 } %b.new.buf.len2183, 0
  %ovf185 = extractvalue { i64, i1 } %b.new.buf.len2183, 1
  br i1 %ovf185, label %str_overflow_abort187, label %b.new.buf.len2186

b.nogrow2172:                                     ; preds = %b.app.new.len166
  br label %b.grow_done173

b.grow_done173:                                   ; preds = %b.nogrow2172, %b.new.buf.len2186
  %app.str.data193 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %b.app.data194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.app.data195 = load ptr, ptr %b.app.data194, align 8
  %b.app.dst196 = getelementptr i8, ptr %b.app.data195, i64 %b.app.cur.len162
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst196, ptr align 1 %app.str.data193, i64 %app.str.len153, i1 false)
  %b.app.nul197 = getelementptr i8, ptr %b.app.data195, i64 %sum164
  store i8 0, ptr %b.app.nul197, align 1
  %b.len.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  store i64 %sum164, ptr %b.len.gep198, align 8
  br label %choice.exit150

b.new.buf.len2186:                                ; preds = %str_overflow_abort187, %b.grow2171
  %arena.cur188 = call ptr @dva_arena_current()
  %b.new.buf2189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 %sum184)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2189, ptr align 1 %b.cur.data2182, i64 %b.cur.len2180, i1 false)
  %b.grow2.nul190 = getelementptr i8, ptr %b.new.buf2189, i64 %b.cur.len2180
  store i8 0, ptr %b.grow2.nul190, align 1
  %b.new.data2.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  store ptr %b.new.buf2189, ptr %b.new.data2.gep191, align 8
  %b.new.cap2.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  store i64 %b.new.cap178, ptr %b.new.cap2.gep192, align 8
  br label %b.grow_done173

str_overflow_abort187:                            ; preds = %b.grow2171
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2186

str_gen_check204:                                 ; preds = %choice.else149
  %arena.cur207 = call ptr @dva_arena_current()
  %tag.valid208 = call i1 @dva_arena_validate_tag(ptr %arena.cur207, i64 %str.tag202)
  br i1 %tag.valid208, label %str_ok205, label %str_stale206

str_ok205:                                        ; preds = %str_stale206, %str_gen_check204, %choice.else149
  %b.app.cur.len209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.app.cur.len210 = load i64, ptr %b.app.cur.len209, align 8
  %b.app.new.len211 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len210, i64 %app.str.len201)
  %sum212 = extractvalue { i64, i1 } %b.app.new.len211, 0
  %ovf213 = extractvalue { i64, i1 } %b.app.new.len211, 1
  br i1 %ovf213, label %str_overflow_abort215, label %b.app.new.len214

str_stale206:                                     ; preds = %str_gen_check204
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok205

b.app.new.len214:                                 ; preds = %str_overflow_abort215, %str_ok205
  %b.cap216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  %b.cap217 = load i64, ptr %b.cap216, align 8
  %b.need.grow218 = icmp slt i64 %b.cap217, %sum212
  br i1 %b.need.grow218, label %b.grow2219, label %b.nogrow2220

str_overflow_abort215:                            ; preds = %str_ok205
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len214

b.grow2219:                                       ; preds = %b.app.new.len214
  %b.cap2222 = mul i64 %b.cap217, 2
  %b.cap.small223 = icmp slt i64 %b.cap2222, 16
  %b.cap.grow224 = select i1 %b.cap.small223, i64 16, i64 %b.cap2222
  %b.cap.need225 = icmp slt i64 %b.cap.grow224, %sum212
  %b.new.cap226 = select i1 %b.cap.need225, i64 %sum212, i64 %b.cap.grow224
  %b.cur.len2227 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.cur.len2228 = load i64, ptr %b.cur.len2227, align 8
  %b.cur.data2229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.cur.data2230 = load ptr, ptr %b.cur.data2229, align 8
  %b.new.buf.len2231 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap226, i64 1)
  %sum232 = extractvalue { i64, i1 } %b.new.buf.len2231, 0
  %ovf233 = extractvalue { i64, i1 } %b.new.buf.len2231, 1
  br i1 %ovf233, label %str_overflow_abort235, label %b.new.buf.len2234

b.nogrow2220:                                     ; preds = %b.app.new.len214
  br label %b.grow_done221

b.grow_done221:                                   ; preds = %b.nogrow2220, %b.new.buf.len2234
  %app.str.data241 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %b.app.data242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.app.data243 = load ptr, ptr %b.app.data242, align 8
  %b.app.dst244 = getelementptr i8, ptr %b.app.data243, i64 %b.app.cur.len210
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst244, ptr align 1 %app.str.data241, i64 %app.str.len201, i1 false)
  %b.app.nul245 = getelementptr i8, ptr %b.app.data243, i64 %sum212
  store i8 0, ptr %b.app.nul245, align 1
  %b.len.gep246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  store i64 %sum212, ptr %b.len.gep246, align 8
  %var.load247 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load247, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load247, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.133, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._146, align 8
  br label %loop.header.133

b.new.buf.len2234:                                ; preds = %str_overflow_abort235, %b.grow2219
  %arena.cur236 = call ptr @dva_arena_current()
  %b.new.buf2237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 %sum232)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2237, ptr align 1 %b.cur.data2230, i64 %b.cur.len2228, i1 false)
  %b.grow2.nul238 = getelementptr i8, ptr %b.new.buf2237, i64 %b.cur.len2228
  store i8 0, ptr %b.grow2.nul238, align 1
  %b.new.data2.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  store ptr %b.new.buf2237, ptr %b.new.data2.gep239, align 8
  %b.new.cap2.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  store i64 %b.new.cap226, ptr %b.new.cap2.gep240, align 8
  br label %b.grow_done221

str_overflow_abort235:                            ; preds = %b.grow2219
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2234

loop.header.133:                                  ; preds = %loop.latch.133, %b.grow_done221
  %counter.load = load i64, ptr %loop.idx.133, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.133, label %loop.exit.nat.133

loop.body.133:                                    ; preds = %loop.header.133
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.133, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load247, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %counter.load
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.elem.val, ptr %var._248, align 8
  store ptr %sl.elem.val, ptr %var.item, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load249 = load i64, ptr %var.i, align 8
  %cmptmp250 = icmp sgt i64 %var.load249, 0
  br i1 %cmptmp250, label %choice.then251, label %choice.exit252

loop.exit.nat.133:                                ; preds = %loop.header.133
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.133

loop.latch.133:                                   ; preds = %choice.exit252
  %step.val = load i64, ptr %loop.step.133, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.133, align 8
  br label %loop.header.133

loop.exit.133:                                    ; preds = %loop.exit.nat.133
  store ptr %cycle.prev.u, ptr %var._146, align 8
  %b.load309 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 0
  %b.rn.cur.len310 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len310, i64 1)
  %sum311 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf312 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf312, label %str_overflow_abort314, label %b.rn.new.len313

choice.then251:                                   ; preds = %loop.body.133
  %b.load253 = load ptr, ptr %var.b, align 8
  %app.str.len254 = load i64, ptr @str.39.struct, align 8
  %app.str.len255 = and i64 %app.str.len254, 281474976710655
  %str.tag256 = lshr i64 %app.str.len254, 48
  %str.immortal257 = icmp eq i64 %str.tag256, 0
  br i1 %str.immortal257, label %str_ok259, label %str_gen_check258

choice.exit252:                                   ; preds = %b.grow_done275, %loop.body.133
  %var.load301 = load ptr, ptr %var.b, align 8
  %var.load302 = load i64, ptr %var.depth, align 8
  %addtmp = add i64 %var.load302, 1
  %var.load303 = load i64, ptr %var.indent, align 8
  %multmp = mul i64 %addtmp, %var.load303
  call void @"json::#append_indent"(ptr %var.load301, i64 %multmp)
  %var.load304 = load ptr, ptr %var.b, align 8
  %var.load305 = load ptr, ptr %var.item, align 8
  %var.load306 = load i64, ptr %var.indent, align 8
  %var.load307 = load i64, ptr %var.depth, align 8
  %addtmp308 = add i64 %var.load307, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load304, ptr %var.load305, i64 %var.load306, i64 %addtmp308)
  br label %loop.latch.133

str_gen_check258:                                 ; preds = %choice.then251
  %arena.cur261 = call ptr @dva_arena_current()
  %tag.valid262 = call i1 @dva_arena_validate_tag(ptr %arena.cur261, i64 %str.tag256)
  br i1 %tag.valid262, label %str_ok259, label %str_stale260

str_ok259:                                        ; preds = %str_stale260, %str_gen_check258, %choice.then251
  %b.app.cur.len263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 0
  %b.app.cur.len264 = load i64, ptr %b.app.cur.len263, align 8
  %b.app.new.len265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len264, i64 %app.str.len255)
  %sum266 = extractvalue { i64, i1 } %b.app.new.len265, 0
  %ovf267 = extractvalue { i64, i1 } %b.app.new.len265, 1
  br i1 %ovf267, label %str_overflow_abort269, label %b.app.new.len268

str_stale260:                                     ; preds = %str_gen_check258
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok259

b.app.new.len268:                                 ; preds = %str_overflow_abort269, %str_ok259
  %b.cap270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 2
  %b.cap271 = load i64, ptr %b.cap270, align 8
  %b.need.grow272 = icmp slt i64 %b.cap271, %sum266
  br i1 %b.need.grow272, label %b.grow2273, label %b.nogrow2274

str_overflow_abort269:                            ; preds = %str_ok259
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len268

b.grow2273:                                       ; preds = %b.app.new.len268
  %b.cap2276 = mul i64 %b.cap271, 2
  %b.cap.small277 = icmp slt i64 %b.cap2276, 16
  %b.cap.grow278 = select i1 %b.cap.small277, i64 16, i64 %b.cap2276
  %b.cap.need279 = icmp slt i64 %b.cap.grow278, %sum266
  %b.new.cap280 = select i1 %b.cap.need279, i64 %sum266, i64 %b.cap.grow278
  %b.cur.len2281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 0
  %b.cur.len2282 = load i64, ptr %b.cur.len2281, align 8
  %b.cur.data2283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 1
  %b.cur.data2284 = load ptr, ptr %b.cur.data2283, align 8
  %b.new.buf.len2285 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap280, i64 1)
  %sum286 = extractvalue { i64, i1 } %b.new.buf.len2285, 0
  %ovf287 = extractvalue { i64, i1 } %b.new.buf.len2285, 1
  br i1 %ovf287, label %str_overflow_abort289, label %b.new.buf.len2288

b.nogrow2274:                                     ; preds = %b.app.new.len268
  br label %b.grow_done275

b.grow_done275:                                   ; preds = %b.nogrow2274, %b.new.buf.len2288
  %app.str.data295 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.data296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 1
  %b.app.data297 = load ptr, ptr %b.app.data296, align 8
  %b.app.dst298 = getelementptr i8, ptr %b.app.data297, i64 %b.app.cur.len264
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst298, ptr align 1 %app.str.data295, i64 %app.str.len255, i1 false)
  %b.app.nul299 = getelementptr i8, ptr %b.app.data297, i64 %sum266
  store i8 0, ptr %b.app.nul299, align 1
  %b.len.gep300 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 0
  store i64 %sum266, ptr %b.len.gep300, align 8
  br label %choice.exit252

b.new.buf.len2288:                                ; preds = %str_overflow_abort289, %b.grow2273
  %arena.cur290 = call ptr @dva_arena_current()
  %b.new.buf2291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 %sum286)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2291, ptr align 1 %b.cur.data2284, i64 %b.cur.len2282, i1 false)
  %b.grow2.nul292 = getelementptr i8, ptr %b.new.buf2291, i64 %b.cur.len2282
  store i8 0, ptr %b.grow2.nul292, align 1
  %b.new.data2.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 1
  store ptr %b.new.buf2291, ptr %b.new.data2.gep293, align 8
  %b.new.cap2.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load253, i32 0, i32 2
  store i64 %b.new.cap280, ptr %b.new.cap2.gep294, align 8
  br label %b.grow_done275

str_overflow_abort289:                            ; preds = %b.grow2273
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2288

b.rn.new.len313:                                  ; preds = %str_overflow_abort314, %loop.exit.133
  %b.cap315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 2
  %b.cap316 = load i64, ptr %b.cap315, align 8
  %b.need.grow317 = icmp slt i64 %b.cap316, %sum311
  br i1 %b.need.grow317, label %b.grow2318, label %b.nogrow2319

str_overflow_abort314:                            ; preds = %loop.exit.133
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len313

b.grow2318:                                       ; preds = %b.rn.new.len313
  %b.cap2321 = mul i64 %b.cap316, 2
  %b.cap.small322 = icmp slt i64 %b.cap2321, 16
  %b.cap.grow323 = select i1 %b.cap.small322, i64 16, i64 %b.cap2321
  %b.cap.need324 = icmp slt i64 %b.cap.grow323, %sum311
  %b.new.cap325 = select i1 %b.cap.need324, i64 %sum311, i64 %b.cap.grow323
  %b.cur.len2326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 0
  %b.cur.len2327 = load i64, ptr %b.cur.len2326, align 8
  %b.cur.data2328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 1
  %b.cur.data2329 = load ptr, ptr %b.cur.data2328, align 8
  %b.new.buf.len2330 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap325, i64 1)
  %sum331 = extractvalue { i64, i1 } %b.new.buf.len2330, 0
  %ovf332 = extractvalue { i64, i1 } %b.new.buf.len2330, 1
  br i1 %ovf332, label %str_overflow_abort334, label %b.new.buf.len2333

b.nogrow2319:                                     ; preds = %b.rn.new.len313
  br label %b.grow_done320

b.grow_done320:                                   ; preds = %b.nogrow2319, %b.new.buf.len2333
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 1
  %b.rn.data340 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data340, i64 %b.rn.cur.len310
  br i1 true, label %br.b1.134, label %br.c2.134

b.new.buf.len2333:                                ; preds = %str_overflow_abort334, %b.grow2318
  %arena.cur335 = call ptr @dva_arena_current()
  %b.new.buf2336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 %sum331)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2336, ptr align 1 %b.cur.data2329, i64 %b.cur.len2327, i1 false)
  %b.grow2.nul337 = getelementptr i8, ptr %b.new.buf2336, i64 %b.cur.len2327
  store i8 0, ptr %b.grow2.nul337, align 1
  %b.new.data2.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 1
  store ptr %b.new.buf2336, ptr %b.new.data2.gep338, align 8
  %b.new.cap2.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 2
  store i64 %b.new.cap325, ptr %b.new.cap2.gep339, align 8
  br label %b.grow_done320

str_overflow_abort334:                            ; preds = %b.grow2318
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2333

br.b1.134:                                        ; preds = %b.grow_done320
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.134

br.c2.134:                                        ; preds = %b.grow_done320
  br i1 true, label %br.b2.134, label %br.c3.134

br.b2.134:                                        ; preds = %br.c2.134
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.134

br.c3.134:                                        ; preds = %br.c2.134
  br i1 true, label %br.b3.134, label %br.b4.134

br.b3.134:                                        ; preds = %br.c3.134
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.134

br.b4.134:                                        ; preds = %br.c3.134
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.134

br.done.134:                                      ; preds = %br.b4.134, %br.b3.134, %br.b2.134, %br.b1.134
  %br.nul = getelementptr i8, ptr %b.rn.data340, i64 %sum311
  store i8 0, ptr %br.nul, align 1
  %b.len.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load309, i32 0, i32 0
  store i64 %sum311, ptr %b.len.gep341, align 8
  %var.load342 = load ptr, ptr %var.b, align 8
  %var.load343 = load i64, ptr %var.depth, align 8
  %var.load344 = load i64, ptr %var.indent, align 8
  %multmp345 = mul i64 %var.load343, %var.load344
  call void @"json::#append_indent"(ptr %var.load342, i64 %multmp345)
  %b.load346 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len347 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 0
  %b.rn.cur.len348 = load i64, ptr %b.rn.cur.len347, align 8
  %b.rn.new.len349 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len348, i64 1)
  %sum350 = extractvalue { i64, i1 } %b.rn.new.len349, 0
  %ovf351 = extractvalue { i64, i1 } %b.rn.new.len349, 1
  br i1 %ovf351, label %str_overflow_abort353, label %b.rn.new.len352

b.rn.new.len352:                                  ; preds = %str_overflow_abort353, %br.done.134
  %b.cap354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 2
  %b.cap355 = load i64, ptr %b.cap354, align 8
  %b.need.grow356 = icmp slt i64 %b.cap355, %sum350
  br i1 %b.need.grow356, label %b.grow2357, label %b.nogrow2358

str_overflow_abort353:                            ; preds = %br.done.134
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len352

b.grow2357:                                       ; preds = %b.rn.new.len352
  %b.cap2360 = mul i64 %b.cap355, 2
  %b.cap.small361 = icmp slt i64 %b.cap2360, 16
  %b.cap.grow362 = select i1 %b.cap.small361, i64 16, i64 %b.cap2360
  %b.cap.need363 = icmp slt i64 %b.cap.grow362, %sum350
  %b.new.cap364 = select i1 %b.cap.need363, i64 %sum350, i64 %b.cap.grow362
  %b.cur.len2365 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 0
  %b.cur.len2366 = load i64, ptr %b.cur.len2365, align 8
  %b.cur.data2367 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 1
  %b.cur.data2368 = load ptr, ptr %b.cur.data2367, align 8
  %b.new.buf.len2369 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap364, i64 1)
  %sum370 = extractvalue { i64, i1 } %b.new.buf.len2369, 0
  %ovf371 = extractvalue { i64, i1 } %b.new.buf.len2369, 1
  br i1 %ovf371, label %str_overflow_abort373, label %b.new.buf.len2372

b.nogrow2358:                                     ; preds = %b.rn.new.len352
  br label %b.grow_done359

b.grow_done359:                                   ; preds = %b.nogrow2358, %b.new.buf.len2372
  %b.rn.data379 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 1
  %b.rn.data380 = load ptr, ptr %b.rn.data379, align 8
  %b.rn.dst381 = getelementptr i8, ptr %b.rn.data380, i64 %b.rn.cur.len348
  br i1 true, label %br.b1.135, label %br.c2.135

b.new.buf.len2372:                                ; preds = %str_overflow_abort373, %b.grow2357
  %arena.cur374 = call ptr @dva_arena_current()
  %b.new.buf2375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 %sum370)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2375, ptr align 1 %b.cur.data2368, i64 %b.cur.len2366, i1 false)
  %b.grow2.nul376 = getelementptr i8, ptr %b.new.buf2375, i64 %b.cur.len2366
  store i8 0, ptr %b.grow2.nul376, align 1
  %b.new.data2.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 1
  store ptr %b.new.buf2375, ptr %b.new.data2.gep377, align 8
  %b.new.cap2.gep378 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 2
  store i64 %b.new.cap364, ptr %b.new.cap2.gep378, align 8
  br label %b.grow_done359

str_overflow_abort373:                            ; preds = %b.grow2357
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2372

br.b1.135:                                        ; preds = %b.grow_done359
  store i8 93, ptr %b.rn.dst381, align 1
  br label %br.done.135

br.c2.135:                                        ; preds = %b.grow_done359
  br i1 true, label %br.b2.135, label %br.c3.135

br.b2.135:                                        ; preds = %br.c2.135
  store i8 -63, ptr %b.rn.dst381, align 1
  %br.dst1382 = getelementptr i8, ptr %b.rn.dst381, i64 1
  store i8 -99, ptr %br.dst1382, align 1
  br label %br.done.135

br.c3.135:                                        ; preds = %br.c2.135
  br i1 true, label %br.b3.135, label %br.b4.135

br.b3.135:                                        ; preds = %br.c3.135
  store i8 -32, ptr %b.rn.dst381, align 1
  %br.dst1.3383 = getelementptr i8, ptr %b.rn.dst381, i64 1
  store i8 -127, ptr %br.dst1.3383, align 1
  %br.dst2.3384 = getelementptr i8, ptr %b.rn.dst381, i64 2
  store i8 -99, ptr %br.dst2.3384, align 1
  br label %br.done.135

br.b4.135:                                        ; preds = %br.c3.135
  store i8 -16, ptr %b.rn.dst381, align 1
  %br.dst1.4385 = getelementptr i8, ptr %b.rn.dst381, i64 1
  store i8 -128, ptr %br.dst1.4385, align 1
  %br.dst2.4386 = getelementptr i8, ptr %b.rn.dst381, i64 2
  store i8 -127, ptr %br.dst2.4386, align 1
  %br.dst3.4387 = getelementptr i8, ptr %b.rn.dst381, i64 3
  store i8 -99, ptr %br.dst3.4387, align 1
  br label %br.done.135

br.done.135:                                      ; preds = %br.b4.135, %br.b3.135, %br.b2.135, %br.b1.135
  %br.nul388 = getelementptr i8, ptr %b.rn.data380, i64 %sum350
  store i8 0, ptr %br.nul388, align 1
  %b.len.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load346, i32 0, i32 0
  store i64 %sum350, ptr %b.len.gep389, align 8
  br label %choice.exit150

choice.case390:                                   ; preds = %choice.next140
  %pay.gep395 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr396 = load ptr, ptr %pay.gep395, align 8
  store ptr %payload.ptr396, ptr %var._397, align 8
  store ptr %payload.ptr396, ptr %var.pairs, align 8
  %var.load398 = load ptr, ptr %var.pairs, align 8
  %slice.len.gep399 = getelementptr inbounds { ptr, i64 }, ptr %var.load398, i32 0, i32 1
  %slice.len.raw400 = load i64, ptr %slice.len.gep399, align 8
  %slice.len401 = and i64 %slice.len.raw400, 4611686018427387903
  %cmptmp402 = icmp eq i64 %slice.len401, 0
  br i1 %cmptmp402, label %choice.then403, label %choice.else404

choice.next391:                                   ; preds = %choice.next140
  br label %choice.exit

choice.then403:                                   ; preds = %choice.case390
  %b.load406 = load ptr, ptr %var.b, align 8
  %app.str.len407 = load i64, ptr @str.40.struct, align 8
  %app.str.len408 = and i64 %app.str.len407, 281474976710655
  %str.tag409 = lshr i64 %app.str.len407, 48
  %str.immortal410 = icmp eq i64 %str.tag409, 0
  br i1 %str.immortal410, label %str_ok412, label %str_gen_check411

choice.else404:                                   ; preds = %choice.case390
  %b.load454 = load ptr, ptr %var.b, align 8
  %app.str.len455 = load i64, ptr @str.41.struct, align 8
  %app.str.len456 = and i64 %app.str.len455, 281474976710655
  %str.tag457 = lshr i64 %app.str.len455, 48
  %str.immortal458 = icmp eq i64 %str.tag457, 0
  br i1 %str.immortal458, label %str_ok460, label %str_gen_check459

choice.exit405:                                   ; preds = %br.done.138, %b.grow_done428
  br label %choice.exit

str_gen_check411:                                 ; preds = %choice.then403
  %arena.cur414 = call ptr @dva_arena_current()
  %tag.valid415 = call i1 @dva_arena_validate_tag(ptr %arena.cur414, i64 %str.tag409)
  br i1 %tag.valid415, label %str_ok412, label %str_stale413

str_ok412:                                        ; preds = %str_stale413, %str_gen_check411, %choice.then403
  %b.app.cur.len416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  %b.app.cur.len417 = load i64, ptr %b.app.cur.len416, align 8
  %b.app.new.len418 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len417, i64 %app.str.len408)
  %sum419 = extractvalue { i64, i1 } %b.app.new.len418, 0
  %ovf420 = extractvalue { i64, i1 } %b.app.new.len418, 1
  br i1 %ovf420, label %str_overflow_abort422, label %b.app.new.len421

str_stale413:                                     ; preds = %str_gen_check411
  %26 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok412

b.app.new.len421:                                 ; preds = %str_overflow_abort422, %str_ok412
  %b.cap423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 2
  %b.cap424 = load i64, ptr %b.cap423, align 8
  %b.need.grow425 = icmp slt i64 %b.cap424, %sum419
  br i1 %b.need.grow425, label %b.grow2426, label %b.nogrow2427

str_overflow_abort422:                            ; preds = %str_ok412
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len421

b.grow2426:                                       ; preds = %b.app.new.len421
  %b.cap2429 = mul i64 %b.cap424, 2
  %b.cap.small430 = icmp slt i64 %b.cap2429, 16
  %b.cap.grow431 = select i1 %b.cap.small430, i64 16, i64 %b.cap2429
  %b.cap.need432 = icmp slt i64 %b.cap.grow431, %sum419
  %b.new.cap433 = select i1 %b.cap.need432, i64 %sum419, i64 %b.cap.grow431
  %b.cur.len2434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  %b.cur.len2435 = load i64, ptr %b.cur.len2434, align 8
  %b.cur.data2436 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  %b.cur.data2437 = load ptr, ptr %b.cur.data2436, align 8
  %b.new.buf.len2438 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap433, i64 1)
  %sum439 = extractvalue { i64, i1 } %b.new.buf.len2438, 0
  %ovf440 = extractvalue { i64, i1 } %b.new.buf.len2438, 1
  br i1 %ovf440, label %str_overflow_abort442, label %b.new.buf.len2441

b.nogrow2427:                                     ; preds = %b.app.new.len421
  br label %b.grow_done428

b.grow_done428:                                   ; preds = %b.nogrow2427, %b.new.buf.len2441
  %app.str.data448 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %b.app.data449 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  %b.app.data450 = load ptr, ptr %b.app.data449, align 8
  %b.app.dst451 = getelementptr i8, ptr %b.app.data450, i64 %b.app.cur.len417
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst451, ptr align 1 %app.str.data448, i64 %app.str.len408, i1 false)
  %b.app.nul452 = getelementptr i8, ptr %b.app.data450, i64 %sum419
  store i8 0, ptr %b.app.nul452, align 1
  %b.len.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  store i64 %sum419, ptr %b.len.gep453, align 8
  br label %choice.exit405

b.new.buf.len2441:                                ; preds = %str_overflow_abort442, %b.grow2426
  %arena.cur443 = call ptr @dva_arena_current()
  %b.new.buf2444 = call ptr @dva_arena_alloc(ptr %arena.cur443, i64 %sum439)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2444, ptr align 1 %b.cur.data2437, i64 %b.cur.len2435, i1 false)
  %b.grow2.nul445 = getelementptr i8, ptr %b.new.buf2444, i64 %b.cur.len2435
  store i8 0, ptr %b.grow2.nul445, align 1
  %b.new.data2.gep446 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  store ptr %b.new.buf2444, ptr %b.new.data2.gep446, align 8
  %b.new.cap2.gep447 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 2
  store i64 %b.new.cap433, ptr %b.new.cap2.gep447, align 8
  br label %b.grow_done428

str_overflow_abort442:                            ; preds = %b.grow2426
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2441

str_gen_check459:                                 ; preds = %choice.else404
  %arena.cur462 = call ptr @dva_arena_current()
  %tag.valid463 = call i1 @dva_arena_validate_tag(ptr %arena.cur462, i64 %str.tag457)
  br i1 %tag.valid463, label %str_ok460, label %str_stale461

str_ok460:                                        ; preds = %str_stale461, %str_gen_check459, %choice.else404
  %b.app.cur.len464 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 0
  %b.app.cur.len465 = load i64, ptr %b.app.cur.len464, align 8
  %b.app.new.len466 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len465, i64 %app.str.len456)
  %sum467 = extractvalue { i64, i1 } %b.app.new.len466, 0
  %ovf468 = extractvalue { i64, i1 } %b.app.new.len466, 1
  br i1 %ovf468, label %str_overflow_abort470, label %b.app.new.len469

str_stale461:                                     ; preds = %str_gen_check459
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok460

b.app.new.len469:                                 ; preds = %str_overflow_abort470, %str_ok460
  %b.cap471 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 2
  %b.cap472 = load i64, ptr %b.cap471, align 8
  %b.need.grow473 = icmp slt i64 %b.cap472, %sum467
  br i1 %b.need.grow473, label %b.grow2474, label %b.nogrow2475

str_overflow_abort470:                            ; preds = %str_ok460
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len469

b.grow2474:                                       ; preds = %b.app.new.len469
  %b.cap2477 = mul i64 %b.cap472, 2
  %b.cap.small478 = icmp slt i64 %b.cap2477, 16
  %b.cap.grow479 = select i1 %b.cap.small478, i64 16, i64 %b.cap2477
  %b.cap.need480 = icmp slt i64 %b.cap.grow479, %sum467
  %b.new.cap481 = select i1 %b.cap.need480, i64 %sum467, i64 %b.cap.grow479
  %b.cur.len2482 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 0
  %b.cur.len2483 = load i64, ptr %b.cur.len2482, align 8
  %b.cur.data2484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 1
  %b.cur.data2485 = load ptr, ptr %b.cur.data2484, align 8
  %b.new.buf.len2486 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap481, i64 1)
  %sum487 = extractvalue { i64, i1 } %b.new.buf.len2486, 0
  %ovf488 = extractvalue { i64, i1 } %b.new.buf.len2486, 1
  br i1 %ovf488, label %str_overflow_abort490, label %b.new.buf.len2489

b.nogrow2475:                                     ; preds = %b.app.new.len469
  br label %b.grow_done476

b.grow_done476:                                   ; preds = %b.nogrow2475, %b.new.buf.len2489
  %app.str.data496 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %b.app.data497 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 1
  %b.app.data498 = load ptr, ptr %b.app.data497, align 8
  %b.app.dst499 = getelementptr i8, ptr %b.app.data498, i64 %b.app.cur.len465
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst499, ptr align 1 %app.str.data496, i64 %app.str.len456, i1 false)
  %b.app.nul500 = getelementptr i8, ptr %b.app.data498, i64 %sum467
  store i8 0, ptr %b.app.nul500, align 1
  %b.len.gep501 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 0
  store i64 %sum467, ptr %b.len.gep501, align 8
  %var.load502 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep503 = getelementptr inbounds { ptr, i64 }, ptr %var.load502, i32 0, i32 1
  %sl.len.raw504 = load i64, ptr %sl.len.gep503, align 8
  %sl.len505 = and i64 %sl.len.raw504, 4611686018427387903
  %sl.data.gep506 = getelementptr inbounds { ptr, i64 }, ptr %var.load502, i32 0, i32 0
  %sl.data507 = load ptr, ptr %sl.data.gep506, align 8
  store i64 0, ptr %loop.idx.136, align 8
  store i64 0, ptr %var.i508, align 8
  %cycle.prev.u509 = load ptr, ptr %var._397, align 8
  br label %loop.header.136

b.new.buf.len2489:                                ; preds = %str_overflow_abort490, %b.grow2474
  %arena.cur491 = call ptr @dva_arena_current()
  %b.new.buf2492 = call ptr @dva_arena_alloc(ptr %arena.cur491, i64 %sum487)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2492, ptr align 1 %b.cur.data2485, i64 %b.cur.len2483, i1 false)
  %b.grow2.nul493 = getelementptr i8, ptr %b.new.buf2492, i64 %b.cur.len2483
  store i8 0, ptr %b.grow2.nul493, align 1
  %b.new.data2.gep494 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 1
  store ptr %b.new.buf2492, ptr %b.new.data2.gep494, align 8
  %b.new.cap2.gep495 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load454, i32 0, i32 2
  store i64 %b.new.cap481, ptr %b.new.cap2.gep495, align 8
  br label %b.grow_done476

str_overflow_abort490:                            ; preds = %b.grow2474
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2489

loop.header.136:                                  ; preds = %loop.latch.136, %b.grow_done476
  %counter.load510 = load i64, ptr %loop.idx.136, align 8
  %loop.cond511 = icmp slt i64 %counter.load510, %sl.len505
  br i1 %loop.cond511, label %loop.body.136, label %loop.exit.nat.136

loop.body.136:                                    ; preds = %loop.header.136
  %loop.rel.i513 = sub i64 %counter.load510, 0
  store i64 1, ptr %loop.step.136, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load502, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.136:                                ; preds = %loop.header.136
  %loop.rel.end512 = sub i64 %counter.load510, 0
  store i64 %loop.rel.end512, ptr %var.i508, align 8
  br label %loop.exit.136

loop.latch.136:                                   ; preds = %b.grow_done597
  %step.val630 = load i64, ptr %loop.step.136, align 8
  %loop.next631 = add i64 %counter.load510, %step.val630
  store i64 %loop.next631, ptr %loop.idx.136, align 8
  br label %loop.header.136

loop.exit.136:                                    ; preds = %loop.exit.nat.136
  store ptr %cycle.prev.u509, ptr %var._397, align 8
  %b.load632 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len633 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 0
  %b.rn.cur.len634 = load i64, ptr %b.rn.cur.len633, align 8
  %b.rn.new.len635 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len634, i64 1)
  %sum636 = extractvalue { i64, i1 } %b.rn.new.len635, 0
  %ovf637 = extractvalue { i64, i1 } %b.rn.new.len635, 1
  br i1 %ovf637, label %str_overflow_abort639, label %b.rn.new.len638

sl.rec.elem.pbb:                                  ; preds = %loop.body.136
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data507, i64 %counter.load510
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.136
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data507, i64 %counter.load510
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i513, ptr %var._i514, align 8
  store ptr %sl.rec.elem, ptr %var._515, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i513, ptr %var.i508, align 8
  %var.load516 = load i64, ptr %var.i508, align 8
  %cmptmp517 = icmp sgt i64 %var.load516, 0
  br i1 %cmptmp517, label %choice.then518, label %choice.exit519

choice.then518:                                   ; preds = %sl.rec.elem.dbb
  %b.load520 = load ptr, ptr %var.b, align 8
  %app.str.len521 = load i64, ptr @str.39.struct, align 8
  %app.str.len522 = and i64 %app.str.len521, 281474976710655
  %str.tag523 = lshr i64 %app.str.len521, 48
  %str.immortal524 = icmp eq i64 %str.tag523, 0
  br i1 %str.immortal524, label %str_ok526, label %str_gen_check525

choice.exit519:                                   ; preds = %b.grow_done542, %sl.rec.elem.dbb
  %var.load568 = load ptr, ptr %var.b, align 8
  %var.load569 = load i64, ptr %var.depth, align 8
  %addtmp570 = add i64 %var.load569, 1
  %var.load571 = load i64, ptr %var.indent, align 8
  %multmp572 = mul i64 %addtmp570, %var.load571
  call void @"json::#append_indent"(ptr %var.load568, i64 %multmp572)
  %var.load573 = load ptr, ptr %var.b, align 8
  %var.load574 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load574, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load573, ptr %fld.load)
  %b.load575 = load ptr, ptr %var.b, align 8
  %app.str.len576 = load i64, ptr @str.42.struct, align 8
  %app.str.len577 = and i64 %app.str.len576, 281474976710655
  %str.tag578 = lshr i64 %app.str.len576, 48
  %str.immortal579 = icmp eq i64 %str.tag578, 0
  br i1 %str.immortal579, label %str_ok581, label %str_gen_check580

str_gen_check525:                                 ; preds = %choice.then518
  %arena.cur528 = call ptr @dva_arena_current()
  %tag.valid529 = call i1 @dva_arena_validate_tag(ptr %arena.cur528, i64 %str.tag523)
  br i1 %tag.valid529, label %str_ok526, label %str_stale527

str_ok526:                                        ; preds = %str_stale527, %str_gen_check525, %choice.then518
  %b.app.cur.len530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 0
  %b.app.cur.len531 = load i64, ptr %b.app.cur.len530, align 8
  %b.app.new.len532 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len531, i64 %app.str.len522)
  %sum533 = extractvalue { i64, i1 } %b.app.new.len532, 0
  %ovf534 = extractvalue { i64, i1 } %b.app.new.len532, 1
  br i1 %ovf534, label %str_overflow_abort536, label %b.app.new.len535

str_stale527:                                     ; preds = %str_gen_check525
  %32 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok526

b.app.new.len535:                                 ; preds = %str_overflow_abort536, %str_ok526
  %b.cap537 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 2
  %b.cap538 = load i64, ptr %b.cap537, align 8
  %b.need.grow539 = icmp slt i64 %b.cap538, %sum533
  br i1 %b.need.grow539, label %b.grow2540, label %b.nogrow2541

str_overflow_abort536:                            ; preds = %str_ok526
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len535

b.grow2540:                                       ; preds = %b.app.new.len535
  %b.cap2543 = mul i64 %b.cap538, 2
  %b.cap.small544 = icmp slt i64 %b.cap2543, 16
  %b.cap.grow545 = select i1 %b.cap.small544, i64 16, i64 %b.cap2543
  %b.cap.need546 = icmp slt i64 %b.cap.grow545, %sum533
  %b.new.cap547 = select i1 %b.cap.need546, i64 %sum533, i64 %b.cap.grow545
  %b.cur.len2548 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 0
  %b.cur.len2549 = load i64, ptr %b.cur.len2548, align 8
  %b.cur.data2550 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 1
  %b.cur.data2551 = load ptr, ptr %b.cur.data2550, align 8
  %b.new.buf.len2552 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap547, i64 1)
  %sum553 = extractvalue { i64, i1 } %b.new.buf.len2552, 0
  %ovf554 = extractvalue { i64, i1 } %b.new.buf.len2552, 1
  br i1 %ovf554, label %str_overflow_abort556, label %b.new.buf.len2555

b.nogrow2541:                                     ; preds = %b.app.new.len535
  br label %b.grow_done542

b.grow_done542:                                   ; preds = %b.nogrow2541, %b.new.buf.len2555
  %app.str.data562 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.data563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 1
  %b.app.data564 = load ptr, ptr %b.app.data563, align 8
  %b.app.dst565 = getelementptr i8, ptr %b.app.data564, i64 %b.app.cur.len531
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst565, ptr align 1 %app.str.data562, i64 %app.str.len522, i1 false)
  %b.app.nul566 = getelementptr i8, ptr %b.app.data564, i64 %sum533
  store i8 0, ptr %b.app.nul566, align 1
  %b.len.gep567 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 0
  store i64 %sum533, ptr %b.len.gep567, align 8
  br label %choice.exit519

b.new.buf.len2555:                                ; preds = %str_overflow_abort556, %b.grow2540
  %arena.cur557 = call ptr @dva_arena_current()
  %b.new.buf2558 = call ptr @dva_arena_alloc(ptr %arena.cur557, i64 %sum553)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2558, ptr align 1 %b.cur.data2551, i64 %b.cur.len2549, i1 false)
  %b.grow2.nul559 = getelementptr i8, ptr %b.new.buf2558, i64 %b.cur.len2549
  store i8 0, ptr %b.grow2.nul559, align 1
  %b.new.data2.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 1
  store ptr %b.new.buf2558, ptr %b.new.data2.gep560, align 8
  %b.new.cap2.gep561 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 2
  store i64 %b.new.cap547, ptr %b.new.cap2.gep561, align 8
  br label %b.grow_done542

str_overflow_abort556:                            ; preds = %b.grow2540
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2555

str_gen_check580:                                 ; preds = %choice.exit519
  %arena.cur583 = call ptr @dva_arena_current()
  %tag.valid584 = call i1 @dva_arena_validate_tag(ptr %arena.cur583, i64 %str.tag578)
  br i1 %tag.valid584, label %str_ok581, label %str_stale582

str_ok581:                                        ; preds = %str_stale582, %str_gen_check580, %choice.exit519
  %b.app.cur.len585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 0
  %b.app.cur.len586 = load i64, ptr %b.app.cur.len585, align 8
  %b.app.new.len587 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len586, i64 %app.str.len577)
  %sum588 = extractvalue { i64, i1 } %b.app.new.len587, 0
  %ovf589 = extractvalue { i64, i1 } %b.app.new.len587, 1
  br i1 %ovf589, label %str_overflow_abort591, label %b.app.new.len590

str_stale582:                                     ; preds = %str_gen_check580
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok581

b.app.new.len590:                                 ; preds = %str_overflow_abort591, %str_ok581
  %b.cap592 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 2
  %b.cap593 = load i64, ptr %b.cap592, align 8
  %b.need.grow594 = icmp slt i64 %b.cap593, %sum588
  br i1 %b.need.grow594, label %b.grow2595, label %b.nogrow2596

str_overflow_abort591:                            ; preds = %str_ok581
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len590

b.grow2595:                                       ; preds = %b.app.new.len590
  %b.cap2598 = mul i64 %b.cap593, 2
  %b.cap.small599 = icmp slt i64 %b.cap2598, 16
  %b.cap.grow600 = select i1 %b.cap.small599, i64 16, i64 %b.cap2598
  %b.cap.need601 = icmp slt i64 %b.cap.grow600, %sum588
  %b.new.cap602 = select i1 %b.cap.need601, i64 %sum588, i64 %b.cap.grow600
  %b.cur.len2603 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 0
  %b.cur.len2604 = load i64, ptr %b.cur.len2603, align 8
  %b.cur.data2605 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 1
  %b.cur.data2606 = load ptr, ptr %b.cur.data2605, align 8
  %b.new.buf.len2607 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap602, i64 1)
  %sum608 = extractvalue { i64, i1 } %b.new.buf.len2607, 0
  %ovf609 = extractvalue { i64, i1 } %b.new.buf.len2607, 1
  br i1 %ovf609, label %str_overflow_abort611, label %b.new.buf.len2610

b.nogrow2596:                                     ; preds = %b.app.new.len590
  br label %b.grow_done597

b.grow_done597:                                   ; preds = %b.nogrow2596, %b.new.buf.len2610
  %app.str.data617 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.42.struct, i32 0, i32 1), align 8
  %b.app.data618 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 1
  %b.app.data619 = load ptr, ptr %b.app.data618, align 8
  %b.app.dst620 = getelementptr i8, ptr %b.app.data619, i64 %b.app.cur.len586
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst620, ptr align 1 %app.str.data617, i64 %app.str.len577, i1 false)
  %b.app.nul621 = getelementptr i8, ptr %b.app.data619, i64 %sum588
  store i8 0, ptr %b.app.nul621, align 1
  %b.len.gep622 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 0
  store i64 %sum588, ptr %b.len.gep622, align 8
  %var.load623 = load ptr, ptr %var.b, align 8
  %var.load624 = load ptr, ptr %var.p, align 8
  %fld.gep625 = getelementptr inbounds { ptr, ptr }, ptr %var.load624, i32 0, i32 1
  %fld.load626 = load ptr, ptr %fld.gep625, align 8
  %var.load627 = load i64, ptr %var.indent, align 8
  %var.load628 = load i64, ptr %var.depth, align 8
  %addtmp629 = add i64 %var.load628, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load623, ptr %fld.load626, i64 %var.load627, i64 %addtmp629)
  br label %loop.latch.136

b.new.buf.len2610:                                ; preds = %str_overflow_abort611, %b.grow2595
  %arena.cur612 = call ptr @dva_arena_current()
  %b.new.buf2613 = call ptr @dva_arena_alloc(ptr %arena.cur612, i64 %sum608)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2613, ptr align 1 %b.cur.data2606, i64 %b.cur.len2604, i1 false)
  %b.grow2.nul614 = getelementptr i8, ptr %b.new.buf2613, i64 %b.cur.len2604
  store i8 0, ptr %b.grow2.nul614, align 1
  %b.new.data2.gep615 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 1
  store ptr %b.new.buf2613, ptr %b.new.data2.gep615, align 8
  %b.new.cap2.gep616 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load575, i32 0, i32 2
  store i64 %b.new.cap602, ptr %b.new.cap2.gep616, align 8
  br label %b.grow_done597

str_overflow_abort611:                            ; preds = %b.grow2595
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2610

b.rn.new.len638:                                  ; preds = %str_overflow_abort639, %loop.exit.136
  %b.cap640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 2
  %b.cap641 = load i64, ptr %b.cap640, align 8
  %b.need.grow642 = icmp slt i64 %b.cap641, %sum636
  br i1 %b.need.grow642, label %b.grow2643, label %b.nogrow2644

str_overflow_abort639:                            ; preds = %loop.exit.136
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len638

b.grow2643:                                       ; preds = %b.rn.new.len638
  %b.cap2646 = mul i64 %b.cap641, 2
  %b.cap.small647 = icmp slt i64 %b.cap2646, 16
  %b.cap.grow648 = select i1 %b.cap.small647, i64 16, i64 %b.cap2646
  %b.cap.need649 = icmp slt i64 %b.cap.grow648, %sum636
  %b.new.cap650 = select i1 %b.cap.need649, i64 %sum636, i64 %b.cap.grow648
  %b.cur.len2651 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 0
  %b.cur.len2652 = load i64, ptr %b.cur.len2651, align 8
  %b.cur.data2653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 1
  %b.cur.data2654 = load ptr, ptr %b.cur.data2653, align 8
  %b.new.buf.len2655 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap650, i64 1)
  %sum656 = extractvalue { i64, i1 } %b.new.buf.len2655, 0
  %ovf657 = extractvalue { i64, i1 } %b.new.buf.len2655, 1
  br i1 %ovf657, label %str_overflow_abort659, label %b.new.buf.len2658

b.nogrow2644:                                     ; preds = %b.rn.new.len638
  br label %b.grow_done645

b.grow_done645:                                   ; preds = %b.nogrow2644, %b.new.buf.len2658
  %b.rn.data665 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 1
  %b.rn.data666 = load ptr, ptr %b.rn.data665, align 8
  %b.rn.dst667 = getelementptr i8, ptr %b.rn.data666, i64 %b.rn.cur.len634
  br i1 true, label %br.b1.137, label %br.c2.137

b.new.buf.len2658:                                ; preds = %str_overflow_abort659, %b.grow2643
  %arena.cur660 = call ptr @dva_arena_current()
  %b.new.buf2661 = call ptr @dva_arena_alloc(ptr %arena.cur660, i64 %sum656)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2661, ptr align 1 %b.cur.data2654, i64 %b.cur.len2652, i1 false)
  %b.grow2.nul662 = getelementptr i8, ptr %b.new.buf2661, i64 %b.cur.len2652
  store i8 0, ptr %b.grow2.nul662, align 1
  %b.new.data2.gep663 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 1
  store ptr %b.new.buf2661, ptr %b.new.data2.gep663, align 8
  %b.new.cap2.gep664 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 2
  store i64 %b.new.cap650, ptr %b.new.cap2.gep664, align 8
  br label %b.grow_done645

str_overflow_abort659:                            ; preds = %b.grow2643
  %39 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2658

br.b1.137:                                        ; preds = %b.grow_done645
  store i8 10, ptr %b.rn.dst667, align 1
  br label %br.done.137

br.c2.137:                                        ; preds = %b.grow_done645
  br i1 true, label %br.b2.137, label %br.c3.137

br.b2.137:                                        ; preds = %br.c2.137
  store i8 -64, ptr %b.rn.dst667, align 1
  %br.dst1668 = getelementptr i8, ptr %b.rn.dst667, i64 1
  store i8 -118, ptr %br.dst1668, align 1
  br label %br.done.137

br.c3.137:                                        ; preds = %br.c2.137
  br i1 true, label %br.b3.137, label %br.b4.137

br.b3.137:                                        ; preds = %br.c3.137
  store i8 -32, ptr %b.rn.dst667, align 1
  %br.dst1.3669 = getelementptr i8, ptr %b.rn.dst667, i64 1
  store i8 -128, ptr %br.dst1.3669, align 1
  %br.dst2.3670 = getelementptr i8, ptr %b.rn.dst667, i64 2
  store i8 -118, ptr %br.dst2.3670, align 1
  br label %br.done.137

br.b4.137:                                        ; preds = %br.c3.137
  store i8 -16, ptr %b.rn.dst667, align 1
  %br.dst1.4671 = getelementptr i8, ptr %b.rn.dst667, i64 1
  store i8 -128, ptr %br.dst1.4671, align 1
  %br.dst2.4672 = getelementptr i8, ptr %b.rn.dst667, i64 2
  store i8 -128, ptr %br.dst2.4672, align 1
  %br.dst3.4673 = getelementptr i8, ptr %b.rn.dst667, i64 3
  store i8 -118, ptr %br.dst3.4673, align 1
  br label %br.done.137

br.done.137:                                      ; preds = %br.b4.137, %br.b3.137, %br.b2.137, %br.b1.137
  %br.nul674 = getelementptr i8, ptr %b.rn.data666, i64 %sum636
  store i8 0, ptr %br.nul674, align 1
  %b.len.gep675 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 0
  store i64 %sum636, ptr %b.len.gep675, align 8
  %var.load676 = load ptr, ptr %var.b, align 8
  %var.load677 = load i64, ptr %var.depth, align 8
  %var.load678 = load i64, ptr %var.indent, align 8
  %multmp679 = mul i64 %var.load677, %var.load678
  call void @"json::#append_indent"(ptr %var.load676, i64 %multmp679)
  %b.load680 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len681 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 0
  %b.rn.cur.len682 = load i64, ptr %b.rn.cur.len681, align 8
  %b.rn.new.len683 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len682, i64 1)
  %sum684 = extractvalue { i64, i1 } %b.rn.new.len683, 0
  %ovf685 = extractvalue { i64, i1 } %b.rn.new.len683, 1
  br i1 %ovf685, label %str_overflow_abort687, label %b.rn.new.len686

b.rn.new.len686:                                  ; preds = %str_overflow_abort687, %br.done.137
  %b.cap688 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 2
  %b.cap689 = load i64, ptr %b.cap688, align 8
  %b.need.grow690 = icmp slt i64 %b.cap689, %sum684
  br i1 %b.need.grow690, label %b.grow2691, label %b.nogrow2692

str_overflow_abort687:                            ; preds = %br.done.137
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len686

b.grow2691:                                       ; preds = %b.rn.new.len686
  %b.cap2694 = mul i64 %b.cap689, 2
  %b.cap.small695 = icmp slt i64 %b.cap2694, 16
  %b.cap.grow696 = select i1 %b.cap.small695, i64 16, i64 %b.cap2694
  %b.cap.need697 = icmp slt i64 %b.cap.grow696, %sum684
  %b.new.cap698 = select i1 %b.cap.need697, i64 %sum684, i64 %b.cap.grow696
  %b.cur.len2699 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 0
  %b.cur.len2700 = load i64, ptr %b.cur.len2699, align 8
  %b.cur.data2701 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 1
  %b.cur.data2702 = load ptr, ptr %b.cur.data2701, align 8
  %b.new.buf.len2703 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap698, i64 1)
  %sum704 = extractvalue { i64, i1 } %b.new.buf.len2703, 0
  %ovf705 = extractvalue { i64, i1 } %b.new.buf.len2703, 1
  br i1 %ovf705, label %str_overflow_abort707, label %b.new.buf.len2706

b.nogrow2692:                                     ; preds = %b.rn.new.len686
  br label %b.grow_done693

b.grow_done693:                                   ; preds = %b.nogrow2692, %b.new.buf.len2706
  %b.rn.data713 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 1
  %b.rn.data714 = load ptr, ptr %b.rn.data713, align 8
  %b.rn.dst715 = getelementptr i8, ptr %b.rn.data714, i64 %b.rn.cur.len682
  br i1 true, label %br.b1.138, label %br.c2.138

b.new.buf.len2706:                                ; preds = %str_overflow_abort707, %b.grow2691
  %arena.cur708 = call ptr @dva_arena_current()
  %b.new.buf2709 = call ptr @dva_arena_alloc(ptr %arena.cur708, i64 %sum704)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2709, ptr align 1 %b.cur.data2702, i64 %b.cur.len2700, i1 false)
  %b.grow2.nul710 = getelementptr i8, ptr %b.new.buf2709, i64 %b.cur.len2700
  store i8 0, ptr %b.grow2.nul710, align 1
  %b.new.data2.gep711 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 1
  store ptr %b.new.buf2709, ptr %b.new.data2.gep711, align 8
  %b.new.cap2.gep712 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 2
  store i64 %b.new.cap698, ptr %b.new.cap2.gep712, align 8
  br label %b.grow_done693

str_overflow_abort707:                            ; preds = %b.grow2691
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2706

br.b1.138:                                        ; preds = %b.grow_done693
  store i8 125, ptr %b.rn.dst715, align 1
  br label %br.done.138

br.c2.138:                                        ; preds = %b.grow_done693
  br i1 true, label %br.b2.138, label %br.c3.138

br.b2.138:                                        ; preds = %br.c2.138
  store i8 -63, ptr %b.rn.dst715, align 1
  %br.dst1716 = getelementptr i8, ptr %b.rn.dst715, i64 1
  store i8 -67, ptr %br.dst1716, align 1
  br label %br.done.138

br.c3.138:                                        ; preds = %br.c2.138
  br i1 true, label %br.b3.138, label %br.b4.138

br.b3.138:                                        ; preds = %br.c3.138
  store i8 -32, ptr %b.rn.dst715, align 1
  %br.dst1.3717 = getelementptr i8, ptr %b.rn.dst715, i64 1
  store i8 -127, ptr %br.dst1.3717, align 1
  %br.dst2.3718 = getelementptr i8, ptr %b.rn.dst715, i64 2
  store i8 -67, ptr %br.dst2.3718, align 1
  br label %br.done.138

br.b4.138:                                        ; preds = %br.c3.138
  store i8 -16, ptr %b.rn.dst715, align 1
  %br.dst1.4719 = getelementptr i8, ptr %b.rn.dst715, i64 1
  store i8 -128, ptr %br.dst1.4719, align 1
  %br.dst2.4720 = getelementptr i8, ptr %b.rn.dst715, i64 2
  store i8 -127, ptr %br.dst2.4720, align 1
  %br.dst3.4721 = getelementptr i8, ptr %b.rn.dst715, i64 3
  store i8 -67, ptr %br.dst3.4721, align 1
  br label %br.done.138

br.done.138:                                      ; preds = %br.b4.138, %br.b3.138, %br.b2.138, %br.b1.138
  %br.nul722 = getelementptr i8, ptr %b.rn.data714, i64 %sum684
  store i8 0, ptr %br.nul722, align 1
  %b.len.gep723 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load680, i32 0, i32 0
  store i64 %sum684, ptr %b.len.gep723, align 8
  br label %choice.exit405
}

define ptr @"json::stringify"(ptr %0) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 128, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %str_overflow_abort, %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 128, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.val, align 8
  call void @"json::#stringify_into"(ptr %var.load, ptr %var.load3)
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
  %arena.cur9 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 16)
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
  ret ptr %builder.freeze
}

define ptr @"json::stringify_pretty"(ptr %0, i64 %1) #1 {
entry:
  %var.b = alloca ptr, align 8
  %var.indent = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.indent, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 256, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %str_overflow_abort, %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 256, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load ptr, ptr %var.val, align 8
  %var.load4 = load i64, ptr %var.indent, align 8
  call void @"json::#stringify_pretty_into"(ptr %var.load, ptr %var.load3, i64 %var.load4, i64 0)
  %var.load5 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 0
  %b.freeze.len6 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 1
  %b.freeze.data7 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data7, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data7, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data7, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len6, 1
  %arena.cur8 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data7, i64 %b.freeze.len6, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len6
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len1
  %b.freeze.data9 = phi ptr [ %b.freeze.data7, %b.buf.len1 ], [ %b.freeze.data7, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur10 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len6, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data9, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load5, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

define { i1, i64 } @"json::get"(ptr %0, ptr %1) #1 {
entry:
  %var._2 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.140 = alloca i64, align 8
  %loop.idx.140 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %loop.exit.140
  %choice.res = phi { i1, i64 } [ zeroinitializer, %loop.exit.140 ], [ zeroinitializer, %choice.next ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.pairs, align 8
  %var.load1 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.140, align 8
  %cycle.prev.u = load ptr, ptr %var._, align 8
  br label %loop.header.140

choice.next:                                      ; preds = %entry
  br label %choice.exit

loop.header.140:                                  ; preds = %loop.latch.140, %choice.case
  %counter.load = load i64, ptr %loop.idx.140, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.140, label %loop.exit.nat.140

loop.body.140:                                    ; preds = %loop.header.140
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.140, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.140:                                ; preds = %loop.header.140
  br label %loop.exit.140

loop.latch.140:                                   ; preds = %choice.exit18
  %step.val = load i64, ptr %loop.step.140, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.140, align 8
  br label %loop.header.140

loop.exit.140:                                    ; preds = %loop.exit.nat.140
  store ptr %cycle.prev.u, ptr %var._, align 8
  br label %choice.exit

sl.rec.elem.pbb:                                  ; preds = %loop.body.140
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.140
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data, i64 %counter.load
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.rec.elem, ptr %var._2, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load3, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load4 = load ptr, ptr %var.key, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len5, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %sl.rec.elem.dbb
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %sl.rec.elem.dbb
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.rhs.len7 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len8 = and i64 %eq.rhs.len7, 281474976710655
  %str.tag9 = lshr i64 %eq.rhs.len7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid15 = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag9)
  br i1 %tag.valid15, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len8
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

str.eq.then:                                      ; preds = %str_ok12
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data16 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.rhs.data17 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data16, ptr %eq.rhs.data17, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok12
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit18

choice.then:                                      ; preds = %str.eq.merge
  %var.load19 = load ptr, ptr %var.p, align 8
  %fld.gep20 = getelementptr inbounds { ptr, ptr }, ptr %var.load19, i32 0, i32 1
  %fld.load21 = load ptr, ptr %fld.gep20, align 8
  %p.to.i64 = ptrtoint ptr %fld.load21 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

choice.exit18:                                    ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.140

ret.dead:                                         ; No predecessors!
  br label %choice.exit18
}

define i1 @"json::has"(ptr %0, ptr %1) #1 {
entry:
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  ret i1 %ram.tag
}

define ptr @"json::get_str"(ptr %0, ptr %1) #1 {
entry:
  %var.s = alloca ptr, align 8
  %var._4 = alloca ptr, align 8
  %var.fval = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.fval, align 8
  %var.load2 = load ptr, ptr %var.fval, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit3
  %choice.res6 = phi ptr [ %choice.res, %choice.exit3 ], [ null, %choice.else ]
  ret ptr %choice.res6

choice.exit3:                                     ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %var.load5, %choice.case ], [ null, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._4, align 8
  store ptr %payload.ptr, ptr %var.s, align 8
  %var.load5 = load ptr, ptr %var.s, align 8
  br label %choice.exit3

choice.next:                                      ; preds = %choice.then
  br label %choice.exit3
}

define { i1, i64 } @"json::get_int"(ptr %0, ptr %1) #1 {
entry:
  %var.iv = alloca i64, align 8
  %var.n = alloca double, align 8
  %var._4 = alloca double, align 8
  %var.fval = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.fval, align 8
  %var.load2 = load ptr, ptr %var.fval, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit3
  %choice.res14 = phi { i1, i64 } [ %choice.res13, %choice.exit3 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res14

choice.exit3:                                     ; preds = %choice.next, %choice.exit10
  %choice.res13 = phi { i1, i64 } [ %choice.res, %choice.exit10 ], [ zeroinitializer, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %choice.then
  br label %choice.exit3

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._4, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %var.load5 = load double, ptr %var.n, align 8
  %cast.fptosi = fptosi double %var.load5 to i64
  store i64 %cast.fptosi, ptr %var.iv, align 8
  %var.load6 = load i64, ptr %var.iv, align 8
  %cast.sitofp = sitofp i64 %var.load6 to double
  %var.load7 = load double, ptr %var.n, align 8
  %fcmptmp = fcmp oeq double %cast.sitofp, %var.load7
  br i1 %fcmptmp, label %choice.then8, label %choice.else9

choice.then8:                                     ; preds = %pay.float.merge
  %var.load11 = load i64, ptr %var.iv, align 8
  %ram.pay12 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load11, 1
  br label %choice.exit10

choice.else9:                                     ; preds = %pay.float.merge
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else9, %choice.then8
  %choice.res = phi { i1, i64 } [ %ram.pay12, %choice.then8 ], [ zeroinitializer, %choice.else9 ]
  br label %choice.exit3
}

define { i1, i64 } @"json::get_float"(ptr %0, ptr %1) #1 {
entry:
  %var.n = alloca double, align 8
  %var._4 = alloca double, align 8
  %var.fval = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.fval, align 8
  %var.load2 = load ptr, ptr %var.fval, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit3
  %choice.res7 = phi { i1, i64 } [ %choice.res, %choice.exit3 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res7

choice.exit3:                                     ; preds = %choice.next, %pay.float.merge
  %choice.res = phi { i1, i64 } [ %ram.pay6, %pay.float.merge ], [ zeroinitializer, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %choice.then
  br label %choice.exit3

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._4, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %var.load5 = load double, ptr %var.n, align 8
  %f.to.i64 = bitcast double %var.load5 to i64
  %ram.pay6 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %choice.exit3
}

define { i1, i64 } @"json::get_bool"(ptr %0, ptr %1) #1 {
entry:
  %var.flag = alloca i1, align 1
  %var._4 = alloca i1, align 1
  %var.fval = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.key = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store ptr %1, ptr %var.key, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %var.load1 = load ptr, ptr %var.key, align 8
  %call.res = call { i1, i64 } @"json::get"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.fval, align 8
  %var.load2 = load ptr, ptr %var.fval, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 2
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit3
  %choice.res7 = phi { i1, i64 } [ %choice.res, %choice.exit3 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res7

choice.exit3:                                     ; preds = %choice.next, %pay.int.merge
  %choice.res = phi { i1, i64 } [ %ram.pay6, %pay.int.merge ], [ zeroinitializer, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next:                                      ; preds = %choice.then
  br label %choice.exit3

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i1, ptr %payload.ptr, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._4, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %var.load5 = load i1, ptr %var.flag, align 1
  %zext.to.i64 = zext i1 %var.load5 to i64
  %ram.pay6 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %zext.to.i64, 1
  br label %choice.exit3
}

define i1 @"json::is_array"(ptr %0) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i64 @"json::array_len"(ptr %0) #1 {
entry:
  %var.items = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i64 [ %slice.len, %choice.case ], [ 0, %choice.next ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.items, align 8
  %var.load1 = load ptr, ptr %var.items, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define ptr @"json::array_at"(ptr %0, i64 %1) #1 {
entry:
  %var.items = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.idx, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %slice.elem.raw, %choice.case ], [ %enum.alloc, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.items, align 8
  %var.load1 = load ptr, ptr %var.items, align 8
  %var.load2 = load i64, ptr %var.idx, align 8
  %slice.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %slice.data = load ptr, ptr %slice.data.gep, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %slice.data, i64 %var.load2
  %sl.elem.gep.ngep = getelementptr ptr, ptr %slice.data, i64 %var.load2
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %slice.elem.raw = load ptr, ptr %sl.elem.gep, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  br label %choice.exit
}

define i1 @"json::is_object"(ptr %0) #1 {
entry:
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i64 @"json::object_len"(ptr %0) #1 {
entry:
  %var.pairs = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i64 [ %slice.len, %choice.case ], [ 0, %choice.next ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.pairs, align 8
  %var.load1 = load ptr, ptr %var.pairs, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define ptr @"json::object_key_at"(ptr %0, i64 %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var.pairs = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.idx, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %sl.rec.elem.dbb
  %choice.res = phi ptr [ %fld.load, %sl.rec.elem.dbb ], [ @str.43.struct, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.pairs, align 8
  %var.load1 = load ptr, ptr %var.pairs, align 8
  %var.load2 = load i64, ptr %var.idx, align 8
  %slice.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %slice.data = load ptr, ptr %slice.data.gep, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

choice.next:                                      ; preds = %entry
  br label %choice.exit

sl.rec.elem.pbb:                                  ; preds = %choice.case
  %sl.rec.elem.pgep = getelementptr i64, ptr %slice.data, i64 %var.load2
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %choice.case
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %slice.data, i64 %var.load2
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store ptr %sl.rec.elem, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load3, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  br label %choice.exit
}

define ptr @"json::object_val_at"(ptr %0, i64 %1) #1 {
entry:
  %var.p = alloca ptr, align 8
  %var.pairs = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.idx, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %sl.rec.elem.dbb
  %choice.res = phi ptr [ %fld.load, %sl.rec.elem.dbb ], [ %enum.alloc, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.pairs, align 8
  %var.load1 = load ptr, ptr %var.pairs, align 8
  %var.load2 = load i64, ptr %var.idx, align 8
  %slice.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %slice.data = load ptr, ptr %slice.data.gep, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

choice.next:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep4, align 8
  %pay.gep5 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep5, align 8
  br label %choice.exit

sl.rec.elem.pbb:                                  ; preds = %choice.case
  %sl.rec.elem.pgep = getelementptr i64, ptr %slice.data, i64 %var.load2
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %choice.case
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %slice.data, i64 %var.load2
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store ptr %sl.rec.elem, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load3, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  br label %choice.exit
}

define i1 @"json::is_valid_int_value"(ptr %0) #1 {
entry:
  %var.iv = alloca i64, align 8
  %var.n = alloca double, align 8
  %var._ = alloca double, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %pay.float.merge
  %choice.res = phi i1 [ %fcmptmp, %pay.float.merge ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %entry
  br label %choice.exit

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %var.load1 = load double, ptr %var.n, align 8
  %cast.fptosi = fptosi double %var.load1 to i64
  store i64 %cast.fptosi, ptr %var.iv, align 8
  %var.load2 = load i64, ptr %var.iv, align 8
  %cast.sitofp = sitofp i64 %var.load2 to double
  %var.load3 = load double, ptr %var.n, align 8
  %fcmptmp = fcmp oeq double %cast.sitofp, %var.load3
  br label %choice.exit
}

define i64 @"json::unwrap_int_or_zero"(ptr %0) #1 {
entry:
  %var.n = alloca double, align 8
  %var._ = alloca double, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %pay.float.merge
  %choice.res = phi i64 [ %cast.fptosi, %pay.float.merge ], [ 0, %choice.next ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %entry
  br label %choice.exit

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %var.load1 = load double, ptr %var.n, align 8
  %cast.fptosi = fptosi double %var.load1 to i64
  br label %choice.exit
}

define i1 @"json::is_valid_float_value"(ptr %0) #1 {
entry:
  %var._ = alloca double, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %pay.float.merge
  %choice.res = phi i1 [ true, %pay.float.merge ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %entry
  br label %choice.exit

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._, align 8
  br label %choice.exit
}

define double @"json::unwrap_float_or_zero"(ptr %0) #1 {
entry:
  %var.n = alloca double, align 8
  %var._ = alloca double, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %pay.float.merge
  %choice.res = phi double [ %var.load1, %pay.float.merge ], [ 0.000000e+00, %choice.next ]
  ret double %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %entry
  br label %choice.exit

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %var.load1 = load double, ptr %var.n, align 8
  br label %choice.exit
}

define { i1, i64 } @"json::decode_int_value"(ptr %0) #1 {
entry:
  %var.iv = alloca i64, align 8
  %var.n = alloca double, align 8
  %var._ = alloca double, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit4
  %choice.res10 = phi { i1, i64 } [ %choice.res, %choice.exit4 ], [ %ram.pay9, %choice.next ]
  ret { i1, i64 } %choice.res10

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %entry
  %call.res7 = call ptr @"json::#json_type_err"(ptr @str.44.struct)
  %p.to.i648 = ptrtoint ptr %call.res7 to i64
  %ram.pay9 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i648, 1
  br label %choice.exit

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %var.load1 = load double, ptr %var.n, align 8
  %cast.fptosi = fptosi double %var.load1 to i64
  store i64 %cast.fptosi, ptr %var.iv, align 8
  %var.load2 = load i64, ptr %var.iv, align 8
  %cast.sitofp = sitofp i64 %var.load2 to double
  %var.load3 = load double, ptr %var.n, align 8
  %fcmptmp = fcmp oeq double %cast.sitofp, %var.load3
  br i1 %fcmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.float.merge
  %var.load5 = load i64, ptr %var.iv, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load5, 1
  br label %choice.exit4

choice.else:                                      ; preds = %pay.float.merge
  %call.res = call ptr @"json::#json_type_err"(ptr @str.44.struct)
  %p.to.i64 = ptrtoint ptr %call.res to i64
  %ram.pay6 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %ram.pay6, %choice.else ]
  br label %choice.exit
}

define { i1, i64 } @"json::decode_float_value"(ptr %0) #1 {
entry:
  %var.n = alloca double, align 8
  %var._ = alloca double, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %var.load = load ptr, ptr %var.val, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %pay.float.merge
  %choice.res = phi { i1, i64 } [ %ram.pay, %pay.float.merge ], [ %ram.pay2, %choice.next ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.nullbb, label %pay.float.load

choice.next:                                      ; preds = %entry
  %call.res = call ptr @"json::#json_type_err"(ptr @str.45.struct)
  %p.to.i64 = ptrtoint ptr %call.res to i64
  %ram.pay2 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.nullbb:                                 ; preds = %choice.case
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %pay.float.nullbb, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %pay.float.nullbb ]
  store double %pay.float.phi, ptr %var._, align 8
  store double %pay.float.phi, ptr %var.n, align 8
  %var.load1 = load double, ptr %var.n, align 8
  %f.to.i64 = bitcast double %var.load1 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %choice.exit
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
