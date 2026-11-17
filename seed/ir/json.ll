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
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@clo.const.12 = internal constant { ptr, ptr } { ptr @"json::#scan_plain_ascii_end", ptr null }
@"var.json::#scan_plain_ascii_end" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"json::#parse_string_escaped", ptr null }
@"var.json::#parse_string_escaped" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"json::#parse_string", ptr null }
@"var.json::#parse_string" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@str.11 = internal unnamed_addr constant [31 x i8] c"json: trailing comma in object\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.11 }
@str.12 = internal unnamed_addr constant [36 x i8] c"json: expected ',' or '}' in object\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.12 }
@clo.const.15 = internal constant { ptr, ptr } { ptr @"json::#parse_object_after_val", ptr null }
@str.13 = internal unnamed_addr constant [36 x i8] c"json: expected ':' after object key\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.13 }
@str.14 = internal unnamed_addr constant [33 x i8] c"json: object key is not a string\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.14 }
@clo.const.16 = internal constant { ptr, ptr } { ptr @"json::#parse_object_after_key", ptr null }
@str.15 = internal unnamed_addr constant [36 x i8] c"json: expected string key in object\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 35, ptr @str.15 }
@clo.const.17 = internal constant { ptr, ptr } { ptr @"json::#parse_object_loop", ptr null }
@clo.const.18 = internal constant { ptr, ptr } { ptr @"json::#parse_object", ptr null }
@str.16 = internal unnamed_addr constant [18 x i8] c"json: bad literal\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 17, ptr @str.16 }
@clo.const.19 = internal constant { ptr, ptr } { ptr @"json::#parse_lit", ptr null }
@str.17 = internal unnamed_addr constant [5 x i8] c"null\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.17 }
@str.18 = internal unnamed_addr constant [23 x i8] c"json: bad null literal\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 22, ptr @str.18 }
@clo.const.20 = internal constant { ptr, ptr } { ptr @"json::#parse_null", ptr null }
@str.19 = internal unnamed_addr constant [31 x i8] c"json: leading zero not allowed\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 30, ptr @str.19 }
@str.20 = internal unnamed_addr constant [23 x i8] c"json: malformed number\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 22, ptr @str.20 }
@str.21 = internal unnamed_addr constant [24 x i8] c"json: expected a number\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 23, ptr @str.21 }
@clo.const.21 = internal constant { ptr, ptr } { ptr @"json::#parse_number", ptr null }
@clo.const.22 = internal constant { ptr, ptr } { ptr @"json::#parse_value", ptr null }
@str.22 = internal unnamed_addr constant [30 x i8] c"json: trailing comma in array\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 29, ptr @str.22 }
@str.23 = internal unnamed_addr constant [35 x i8] c"json: expected ',' or ']' in array\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.23 }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"json::#parse_array_after_value", ptr null }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"json::#parse_array_loop", ptr null }
@clo.const.25 = internal constant { ptr, ptr } { ptr @"json::#parse_array", ptr null }
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
@clo.const.26 = internal constant { ptr, ptr } { ptr @"json::#parse_finish", ptr null }
@clo.const.27 = internal constant { ptr, ptr } { ptr @"json::parse", ptr null }
@"var.json::parse" = global ptr null
@"var.json::#parse_finish" = global ptr null
@"var.json::#parse_value" = global ptr null
@str.25 = internal unnamed_addr constant [7 x i8] c"json: \00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.25 }
@clo.const.28 = internal constant { ptr, ptr } { ptr @"json::#json_type_err", ptr null }
@"var.json::#json_type_err" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"json::#hex_digit", ptr null }
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
@clo.const.30 = internal constant { ptr, ptr } { ptr @"json::escape_string_into", ptr null }
@"var.json::escape_string_into" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"json::escape_string", ptr null }
@"var.json::escape_string" = global ptr null
@str.34 = internal unnamed_addr constant [4 x i8] c"nan\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.34 }
@str.35 = internal unnamed_addr constant [4 x i8] c"inf\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.35 }
@str.36 = internal unnamed_addr constant [5 x i8] c"-inf\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.36 }
@clo.const.32 = internal constant { ptr, ptr } { ptr @"json::format_number", ptr null }
@"var.json::format_number" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"json::#stringify_into", ptr null }
@"var.json::#stringify_into" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"json::#append_indent", ptr null }
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
@clo.const.35 = internal constant { ptr, ptr } { ptr @"json::#stringify_pretty_into", ptr null }
@"var.json::#stringify_pretty_into" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"json::stringify", ptr null }
@"var.json::stringify" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"json::stringify_pretty", ptr null }
@"var.json::stringify_pretty" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"json::get", ptr null }
@"var.json::get" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"json::has", ptr null }
@"var.json::has" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"json::get_str", ptr null }
@"var.json::get_str" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"json::get_int", ptr null }
@"var.json::get_int" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"json::get_float", ptr null }
@"var.json::get_float" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"json::get_bool", ptr null }
@"var.json::get_bool" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"json::is_array", ptr null }
@"var.json::is_array" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"json::array_len", ptr null }
@"var.json::array_len" = global ptr null
@clo.const.46 = internal constant { ptr, ptr } { ptr @"json::array_at", ptr null }
@"var.json::array_at" = global ptr null
@clo.const.47 = internal constant { ptr, ptr } { ptr @"json::is_object", ptr null }
@"var.json::is_object" = global ptr null
@clo.const.48 = internal constant { ptr, ptr } { ptr @"json::object_len", ptr null }
@"var.json::object_len" = global ptr null
@str.43 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.43.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.43 }
@clo.const.49 = internal constant { ptr, ptr } { ptr @"json::object_key_at", ptr null }
@"var.json::object_key_at" = global ptr null
@clo.const.50 = internal constant { ptr, ptr } { ptr @"json::object_val_at", ptr null }
@"var.json::object_val_at" = global ptr null
@clo.const.51 = internal constant { ptr, ptr } { ptr @"json::is_valid_int_value", ptr null }
@"var.json::is_valid_int_value" = global ptr null
@clo.const.52 = internal constant { ptr, ptr } { ptr @"json::unwrap_int_or_zero", ptr null }
@"var.json::unwrap_int_or_zero" = global ptr null
@clo.const.53 = internal constant { ptr, ptr } { ptr @"json::is_valid_float_value", ptr null }
@"var.json::is_valid_float_value" = global ptr null
@clo.const.54 = internal constant { ptr, ptr } { ptr @"json::unwrap_float_or_zero", ptr null }
@"var.json::unwrap_float_or_zero" = global ptr null
@str.44 = internal unnamed_addr constant [17 x i8] c"expected integer\00"
@str.44.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.44 }
@clo.const.55 = internal constant { ptr, ptr } { ptr @"json::decode_int_value", ptr null }
@"var.json::decode_int_value" = global ptr null
@str.45 = internal unnamed_addr constant [16 x i8] c"expected number\00"
@str.45.struct = internal unnamed_addr constant { i64, ptr } { i64 15, ptr @str.45 }
@clo.const.56 = internal constant { ptr, ptr } { ptr @"json::decode_float_value", ptr null }
@"var.json::decode_float_value" = global ptr null
@clo.const.57 = internal constant { ptr, ptr } { ptr @"json::#cursor_skip_str", ptr null }
@"var.json::#cursor_skip_str" = global ptr null
@clo.const.58 = internal constant { ptr, ptr } { ptr @"json::#cursor_read_str_escaped", ptr null }
@"var.json::#cursor_read_str_escaped" = global ptr null
@clo.const.59 = internal constant { ptr, ptr } { ptr @"json::#cursor_skip_compound", ptr null }
@"var.json::#cursor_skip_compound" = global ptr null
@clo.const.60 = internal constant { ptr, ptr } { ptr @"json::#cursor_skip_number", ptr null }
@"var.json::#cursor_skip_number" = global ptr null
@clo.const.61 = internal constant { ptr, ptr } { ptr @"json::cursor", ptr null }
@"var.json::cursor" = global ptr null
@clo.const.62 = internal constant { ptr, ptr } { ptr @"json::cursor_reset", ptr null }
@"var.json::cursor_reset" = global ptr null
@clo.const.63 = internal constant { ptr, ptr } { ptr @"json::cursor_skip_ws", ptr null }
@"var.json::cursor_skip_ws" = global ptr null
@clo.const.64 = internal constant { ptr, ptr } { ptr @"json::cursor_eof", ptr null }
@"var.json::cursor_eof" = global ptr null
@clo.const.65 = internal constant { ptr, ptr } { ptr @"json::cursor_peek", ptr null }
@"var.json::cursor_peek" = global ptr null
@clo.const.66 = internal constant { ptr, ptr } { ptr @"json::cursor_expect_byte", ptr null }
@"var.json::cursor_expect_byte" = global ptr null
@clo.const.67 = internal constant { ptr, ptr } { ptr @"json::cursor_enter_object", ptr null }
@"var.json::cursor_enter_object" = global ptr null
@clo.const.68 = internal constant { ptr, ptr } { ptr @"json::cursor_enter_array", ptr null }
@"var.json::cursor_enter_array" = global ptr null
@clo.const.69 = internal constant { ptr, ptr } { ptr @"json::cursor_read_str", ptr null }
@"var.json::cursor_read_str" = global ptr null
@clo.const.70 = internal constant { ptr, ptr } { ptr @"json::cursor_next_field", ptr null }
@"var.json::cursor_next_field" = global ptr null
@clo.const.71 = internal constant { ptr, ptr } { ptr @"json::cursor_read_int", ptr null }
@"var.json::cursor_read_int" = global ptr null
@clo.const.72 = internal constant { ptr, ptr } { ptr @"json::cursor_read_bool", ptr null }
@"var.json::cursor_read_bool" = global ptr null
@clo.const.73 = internal constant { ptr, ptr } { ptr @"json::cursor_skip_value", ptr null }
@"var.json::cursor_skip_value" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_json, ptr null }]

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

define internal void @__dva_global_init_json() #0 {
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
  store ptr @clo.const.12, ptr @"var.json::#scan_plain_ascii_end", align 8
  store ptr @clo.const.13, ptr @"var.json::#parse_string_escaped", align 8
  store ptr @clo.const.14, ptr @"var.json::#parse_string", align 8
  store ptr @clo.const.25, ptr @"var.json::#parse_array", align 8
  store ptr @clo.const.24, ptr @"var.json::#parse_array_loop", align 8
  store ptr @clo.const.23, ptr @"var.json::#parse_array_after_value", align 8
  store ptr @clo.const.18, ptr @"var.json::#parse_object", align 8
  store ptr @clo.const.17, ptr @"var.json::#parse_object_loop", align 8
  store ptr @clo.const.16, ptr @"var.json::#parse_object_after_key", align 8
  store ptr @clo.const.15, ptr @"var.json::#parse_object_after_val", align 8
  store ptr @clo.const.19, ptr @"var.json::#parse_lit", align 8
  store ptr @clo.const.20, ptr @"var.json::#parse_null", align 8
  store ptr @clo.const.21, ptr @"var.json::#parse_number", align 8
  store ptr @clo.const.27, ptr @"var.json::parse", align 8
  store ptr @clo.const.26, ptr @"var.json::#parse_finish", align 8
  store ptr @clo.const.22, ptr @"var.json::#parse_value", align 8
  store ptr @clo.const.28, ptr @"var.json::#json_type_err", align 8
  store ptr @clo.const.29, ptr @"var.json::#hex_digit", align 8
  store ptr @clo.const.30, ptr @"var.json::escape_string_into", align 8
  store ptr @clo.const.31, ptr @"var.json::escape_string", align 8
  store ptr @clo.const.32, ptr @"var.json::format_number", align 8
  store ptr @clo.const.33, ptr @"var.json::#stringify_into", align 8
  store ptr @clo.const.34, ptr @"var.json::#append_indent", align 8
  store ptr @clo.const.35, ptr @"var.json::#stringify_pretty_into", align 8
  store ptr @clo.const.36, ptr @"var.json::stringify", align 8
  store ptr @clo.const.37, ptr @"var.json::stringify_pretty", align 8
  store ptr @clo.const.38, ptr @"var.json::get", align 8
  store ptr @clo.const.39, ptr @"var.json::has", align 8
  store ptr @clo.const.40, ptr @"var.json::get_str", align 8
  store ptr @clo.const.41, ptr @"var.json::get_int", align 8
  store ptr @clo.const.42, ptr @"var.json::get_float", align 8
  store ptr @clo.const.43, ptr @"var.json::get_bool", align 8
  store ptr @clo.const.44, ptr @"var.json::is_array", align 8
  store ptr @clo.const.45, ptr @"var.json::array_len", align 8
  store ptr @clo.const.46, ptr @"var.json::array_at", align 8
  store ptr @clo.const.47, ptr @"var.json::is_object", align 8
  store ptr @clo.const.48, ptr @"var.json::object_len", align 8
  store ptr @clo.const.49, ptr @"var.json::object_key_at", align 8
  store ptr @clo.const.50, ptr @"var.json::object_val_at", align 8
  store ptr @clo.const.51, ptr @"var.json::is_valid_int_value", align 8
  store ptr @clo.const.52, ptr @"var.json::unwrap_int_or_zero", align 8
  store ptr @clo.const.53, ptr @"var.json::is_valid_float_value", align 8
  store ptr @clo.const.54, ptr @"var.json::unwrap_float_or_zero", align 8
  store ptr @clo.const.55, ptr @"var.json::decode_int_value", align 8
  store ptr @clo.const.56, ptr @"var.json::decode_float_value", align 8
  store ptr @clo.const.57, ptr @"var.json::#cursor_skip_str", align 8
  store ptr @clo.const.58, ptr @"var.json::#cursor_read_str_escaped", align 8
  store ptr @clo.const.59, ptr @"var.json::#cursor_skip_compound", align 8
  store ptr @clo.const.60, ptr @"var.json::#cursor_skip_number", align 8
  store ptr @clo.const.61, ptr @"var.json::cursor", align 8
  store ptr @clo.const.62, ptr @"var.json::cursor_reset", align 8
  store ptr @clo.const.63, ptr @"var.json::cursor_skip_ws", align 8
  store ptr @clo.const.64, ptr @"var.json::cursor_eof", align 8
  store ptr @clo.const.65, ptr @"var.json::cursor_peek", align 8
  store ptr @clo.const.66, ptr @"var.json::cursor_expect_byte", align 8
  store ptr @clo.const.67, ptr @"var.json::cursor_enter_object", align 8
  store ptr @clo.const.68, ptr @"var.json::cursor_enter_array", align 8
  store ptr @clo.const.69, ptr @"var.json::cursor_read_str", align 8
  store ptr @clo.const.70, ptr @"var.json::cursor_next_field", align 8
  store ptr @clo.const.71, ptr @"var.json::cursor_read_int", align 8
  store ptr @clo.const.72, ptr @"var.json::cursor_read_bool", align 8
  store ptr @clo.const.73, ptr @"var.json::cursor_skip_value", align 8
  ret void
}

define internal i1 @"json::#is_ws_at"(ptr %0, i64 %1) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.88.then, label %and.88.else

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

and.88.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load10, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.88.else:                                      ; preds = %str_ok
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %idx_ok
  %and.88.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.88.else ]
  ret i1 %and.88.phi

idx_big_check:                                    ; preds = %and.88.then
  %idx.big = icmp sge i64 %var.load10, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead11, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.88.exit

idx_oob:                                          ; preds = %idx_big_check, %and.88.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %idx_ok
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

declare i1 @"str::is_ws"(i64) #0

define internal i64 @"json::#skip_ws"(ptr %0, i64 %1) #0 {
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

define internal i64 @"json::#hexval"(i64 %0) #0 {
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

declare { i1, i64 } @"ascii::hex_value"(i64) #0

define internal i1 @"json::#is_hex_at"(ptr %0, i64 %1) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.89.then, label %and.89.else

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

and.89.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load10, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.89.else:                                      ; preds = %str_ok
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %idx_ok
  %and.89.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.89.else ]
  ret i1 %and.89.phi

idx_big_check:                                    ; preds = %and.89.then
  %idx.big = icmp sge i64 %var.load10, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead11, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_hex"(i64 %s.byte.val)
  br label %and.89.exit

idx_oob:                                          ; preds = %idx_big_check, %and.89.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %idx_ok
}

declare i1 @"ascii::is_hex"(i64) #0

define internal { i64, ptr } @"json::#bool_str"(i1 %0) #0 {
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
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define internal { i1, i64 } @"json::#scan_utf8_char"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
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
  %call.res = call { i64, i64 } @"utf::decode_str_at"(ptr %fld.load, i64 %var.load1)
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store { i64, i64 } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.dec, align 8
  %var.load2 = load ptr, ptr %var.dec, align 8
  %fld.gep3 = getelementptr inbounds { i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  %cmptmp = icmp slt i64 %fld.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %arena.cur5 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 56)
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
  %var.load6 = load i64, ptr %var.k, align 8
  %arena.cur7 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load6, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld8, align 8
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
  %var.load9 = load ptr, ptr %var.sc, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64 }, ptr %var.load9, i32 0, i32 0
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load11, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load11, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.k, align 8
  %var.load16 = load i64, ptr %var.k, align 8
  %var.load17 = load ptr, ptr %var.dec, align 8
  %fld.gep18 = getelementptr inbounds { i64, i64 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load i64, ptr %fld.gep18, align 8
  %addtmp = add i64 %var.load16, %fld.load19
  %start.is_neg = icmp slt i64 %var.load15, 0
  %rel.start = add i64 %s.read.len13, %var.load15
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load15
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len13
  %final.start = select i1 %start.gt.len, i64 %s.read.len13, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %s.read.len13, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len13
  %final.end = select i1 %end.gt.len, i64 %s.read.len13, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len20 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len20, i64 %view.len)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len21

choice.exit:                                      ; preds = %b.grow_done, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %call.res39, %b.grow_done ]
  ret { i1, i64 } %choice.res

b.app.new.len21:                                  ; preds = %abort.dead, %choice.else
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap22 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap22, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.else
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.app.new.len21

b.grow2:                                          ; preds = %b.app.new.len21
  %b.cap2 = mul i64 %b.cap22, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len223 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data224 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum25 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf26 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.new.buf.len227

b.nogrow2:                                        ; preds = %b.app.new.len21
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len227
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data31 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data31, i64 %b.app.cur.len20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data31, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load32 = load ptr, ptr %var.sc, align 8
  %var.load33 = load ptr, ptr %var.b, align 8
  %var.load34 = load i64, ptr %var.k, align 8
  %var.load35 = load ptr, ptr %var.dec, align 8
  %fld.gep36 = getelementptr inbounds { i64, i64 }, ptr %var.load35, i32 0, i32 1
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %addtmp38 = add i64 %var.load34, %fld.load37
  %call.res39 = call { i1, i64 } @"json::#scan_string"(ptr %var.load32, ptr %var.load33, i64 %addtmp38)
  br label %choice.exit

b.new.buf.len227:                                 ; preds = %abort.dead29, %b.grow2
  %arena.cur30 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 %sum25)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data224, i64 %b.cur.len223, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len223
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort28:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %b.new.buf.len227
}

declare { i64, i64 } @"utf::decode_str_at"(ptr, i64) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

define internal { i1, i64 } @"json::#scan_string"(ptr %0, ptr %1, i64 %2) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sge i64 %var.load, %str.len.query3
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
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.k, align 8
  %idx.neg = icmp slt i64 %var.load14, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load14, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead15, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load16 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load16, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %idx_ok

choice.exit17:                                    ; preds = %choice.next51, %b.push_done, %choice.case26, %choice.case20, %choice.case
  %choice.res = phi { i1, i64 } [ %ram.pay19, %choice.case ], [ %call.res, %choice.case20 ], [ %ram.pay49, %choice.case26 ], [ %call.res66, %b.push_done ], [ %call.res71, %choice.next51 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %idx_ok
  %var.load18 = load i64, ptr %var.k, align 8
  %ram.pay19 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load18, 1
  br label %choice.exit17

choice.next:                                      ; preds = %idx_ok
  %val.match22 = icmp eq i64 %var.load16, 92
  br i1 %val.match22, label %choice.case20, label %choice.next21

choice.case20:                                    ; preds = %choice.next
  %var.load23 = load ptr, ptr %var.sc, align 8
  %var.load24 = load ptr, ptr %var.b, align 8
  %var.load25 = load i64, ptr %var.k, align 8
  %call.res = call { i1, i64 } @"json::#parse_escape"(ptr %var.load23, ptr %var.load24, i64 %var.load25)
  br label %choice.exit17

choice.next21:                                    ; preds = %choice.next
  %cmptmp28 = icmp slt i64 %var.load16, 32
  br i1 %cmptmp28, label %choice.case26, label %choice.next27

choice.case26:                                    ; preds = %choice.next21
  %arena.cur29 = call ptr @dva_arena_current()
  %err.alloc30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 56)
  %err.code.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 0
  store i64 400, ptr %err.code.gep31, align 8
  %err.msg.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep32, align 8
  %err.file.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep33, align 8
  %err.line.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 3
  store i64 0, ptr %err.line.gep34, align 8
  %err.col.gep35 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 4
  store i64 0, ptr %err.col.gep35, align 8
  %err.ctx.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc30, i32 0, i32 5
  %var.load37 = load i64, ptr %var.k, align 8
  %arena.cur38 = call ptr @dva_arena_current()
  %rec.alloc39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld40 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc39, i32 0, i32 0
  store i64 %var.load37, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc39, i32 0, i32 1
  store i64 0, ptr %rec.fld41, align 8
  %ctx.0.gep42 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc39, i32 0, i32 0
  %ctx.043 = load i64, ptr %ctx.0.gep42, align 8
  %ctx.1.gep44 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc39, i32 0, i32 1
  %ctx.145 = load i64, ptr %ctx.1.gep44, align 8
  %err.ctx0.gep46 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep36, i32 0, i32 0
  store i64 %ctx.043, ptr %err.ctx0.gep46, align 8
  %err.ctx1.gep47 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep36, i32 0, i32 1
  store i64 %ctx.145, ptr %err.ctx1.gep47, align 8
  %p.to.i6448 = ptrtoint ptr %err.alloc30 to i64
  %ram.pay49 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6448, 1
  br label %choice.exit17

choice.next27:                                    ; preds = %choice.next21
  %cmptmp52 = icmp slt i64 %var.load16, 128
  br i1 %cmptmp52, label %choice.case50, label %choice.next51

choice.case50:                                    ; preds = %choice.next27
  %b.load = load ptr, ptr %var.b, align 8
  %var.load53 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load53, 0
  %b.b.le255 = icmp sle i64 %var.load53, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.next51:                                    ; preds = %choice.next27
  %var.load67 = load ptr, ptr %var.sc, align 8
  %var.load68 = load ptr, ptr %var.b, align 8
  %var.load69 = load i64, ptr %var.k, align 8
  %var.load70 = load i64, ptr %var.c, align 8
  %call.res71 = call { i1, i64 } @"json::#scan_utf8_char"(ptr %var.load67, ptr %var.load68, i64 %var.load69, i64 %var.load70)
  br label %choice.exit17

b.byte_ok:                                        ; preds = %abort.dead54, %choice.case50
  %b.byte.i8 = trunc i64 %var.load53 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len55 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap56 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data57 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len55, %b.cap56
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case50
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap56, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len58

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len58
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data61 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len62 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data61, i64 %b.cur.len62
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len62, 1
  %b.nul = getelementptr i8, ptr %b.cur.data61, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %var.load63 = load ptr, ptr %var.sc, align 8
  %var.load64 = load ptr, ptr %var.b, align 8
  %var.load65 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load65, 1
  %call.res66 = call { i1, i64 } @"json::#scan_string"(ptr %var.load63, ptr %var.load64, i64 %addtmp)
  br label %choice.exit17

b.new.buf.len58:                                  ; preds = %abort.dead59, %b.grow
  %arena.cur60 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data57, i64 %b.len55, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len55
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead59:                                     ; No predecessors!
  br label %b.new.buf.len58
}

define internal { i1, i64 } @"json::#parse_escape"(ptr %0, ptr %1, i64 %2) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.e, align 8
  %var.load13 = load i64, ptr %var.e, align 8
  %cmptmp14 = icmp eq i64 %var.load13, 117
  br i1 %cmptmp14, label %choice.then, label %choice.exit15

choice.case:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %var.k, align 8
  %addtmp11 = add i64 %var.load10, 1
  %idx.neg = icmp slt i64 %addtmp11, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %addtmp11, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead12, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %addtmp11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %choice.exit
  %var.load16 = load ptr, ptr %var.sc, align 8
  %var.load17 = load ptr, ptr %var.b, align 8
  %var.load18 = load i64, ptr %var.k, align 8
  %call.res = call { i1, i64 } @"json::#parse_unicode"(ptr %var.load16, ptr %var.load17, i64 %var.load18)
  ret { i1, i64 } %call.res

choice.exit15:                                    ; preds = %ret.dead, %choice.exit
  %b.load = load ptr, ptr %var.b, align 8
  %var.load19 = load i64, ptr %var.e, align 8
  %val.match = icmp eq i64 %var.load19, 34
  %val.match23 = icmp eq i64 %var.load19, 92
  %case.or = or i1 %val.match, %val.match23
  %val.match24 = icmp eq i64 %var.load19, 47
  %case.or25 = or i1 %case.or, %val.match24
  br i1 %case.or25, label %choice.case21, label %choice.next22

ret.dead:                                         ; No predecessors!
  br label %choice.exit15

choice.exit20:                                    ; preds = %ret.dead46, %choice.case39, %choice.case36, %choice.case33, %choice.case30, %choice.case27, %choice.case21
  %choice.res47 = phi i64 [ %var.load26, %choice.case21 ], [ 8, %choice.case27 ], [ 12, %choice.case30 ], [ 10, %choice.case33 ], [ 13, %choice.case36 ], [ 9, %choice.case39 ], [ 0, %ret.dead46 ]
  %b.b.ge0 = icmp sge i64 %choice.res47, 0
  %b.b.le255 = icmp sle i64 %choice.res47, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.case21:                                    ; preds = %choice.exit15
  %var.load26 = load i64, ptr %var.e, align 8
  br label %choice.exit20

choice.next22:                                    ; preds = %choice.exit15
  %val.match29 = icmp eq i64 %var.load19, 98
  br i1 %val.match29, label %choice.case27, label %choice.next28

choice.case27:                                    ; preds = %choice.next22
  br label %choice.exit20

choice.next28:                                    ; preds = %choice.next22
  %val.match32 = icmp eq i64 %var.load19, 102
  br i1 %val.match32, label %choice.case30, label %choice.next31

choice.case30:                                    ; preds = %choice.next28
  br label %choice.exit20

choice.next31:                                    ; preds = %choice.next28
  %val.match35 = icmp eq i64 %var.load19, 110
  br i1 %val.match35, label %choice.case33, label %choice.next34

choice.case33:                                    ; preds = %choice.next31
  br label %choice.exit20

choice.next34:                                    ; preds = %choice.next31
  %val.match38 = icmp eq i64 %var.load19, 114
  br i1 %val.match38, label %choice.case36, label %choice.next37

choice.case36:                                    ; preds = %choice.next34
  br label %choice.exit20

choice.next37:                                    ; preds = %choice.next34
  %val.match41 = icmp eq i64 %var.load19, 116
  br i1 %val.match41, label %choice.case39, label %choice.next40

choice.case39:                                    ; preds = %choice.next37
  br label %choice.exit20

choice.next40:                                    ; preds = %choice.next37
  %arena.cur42 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 56)
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
  %var.load43 = load i64, ptr %var.k, align 8
  %arena.cur44 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load43, ptr %rec.fld, align 8
  %rec.fld45 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld45, align 8
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

ret.dead46:                                       ; No predecessors!
  br label %choice.exit20

b.byte_ok:                                        ; preds = %abort.dead48, %choice.exit20
  %b.byte.i8 = trunc i64 %choice.res47 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len49 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap50 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data51 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len49, %b.cap50
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit20
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap50, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len52

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len52
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data55 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len56 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data55, i64 %b.cur.len56
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len56, 1
  %b.nul = getelementptr i8, ptr %b.cur.data55, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %var.load57 = load ptr, ptr %var.sc, align 8
  %var.load58 = load ptr, ptr %var.b, align 8
  %var.load59 = load i64, ptr %var.k, align 8
  %addtmp60 = add i64 %var.load59, 2
  %call.res61 = call { i1, i64 } @"json::#scan_string"(ptr %var.load57, ptr %var.load58, i64 %addtmp60)
  ret { i1, i64 } %call.res61

b.new.buf.len52:                                  ; preds = %abort.dead53, %b.grow
  %arena.cur54 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data51, i64 %b.len49, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len49
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %b.new.buf.len52
}

define internal { i1, i64 } @"json::#parse_unicode"(ptr %0, ptr %1, i64 %2) #0 {
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
  br i1 %var.load14, label %and.91.then, label %and.91.else

and.91.then:                                      ; preds = %entry
  %var.load15 = load i1, ptr %var.h3, align 1
  br label %and.91.exit

and.91.else:                                      ; preds = %entry
  br label %and.91.exit

and.91.exit:                                      ; preds = %and.91.else, %and.91.then
  %and.91.phi = phi i1 [ %var.load15, %and.91.then ], [ %var.load14, %and.91.else ]
  br i1 %and.91.phi, label %and.92.then, label %and.92.else

and.92.then:                                      ; preds = %and.91.exit
  %var.load16 = load i1, ptr %var.h4, align 1
  br label %and.92.exit

and.92.else:                                      ; preds = %and.91.exit
  br label %and.92.exit

and.92.exit:                                      ; preds = %and.92.else, %and.92.then
  %and.92.phi = phi i1 [ %var.load16, %and.92.then ], [ %and.91.phi, %and.92.else ]
  br i1 %and.92.phi, label %and.93.then, label %and.93.else

and.93.then:                                      ; preds = %and.92.exit
  %var.load17 = load i1, ptr %var.h5, align 1
  br label %and.93.exit

and.93.else:                                      ; preds = %and.92.exit
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %and.93.then
  %and.93.phi = phi i1 [ %var.load17, %and.93.then ], [ %and.92.phi, %and.93.else ]
  store i1 %and.93.phi, ptr %var.ok, align 1
  %var.load18 = load i1, ptr %var.ok, align 1
  br i1 %var.load18, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.93.exit
  %var.load19 = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load19, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load i64, ptr %var.k, align 8
  %addtmp24 = add i64 %var.load23, 2
  %idx.neg = icmp slt i64 %addtmp24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.else:                                      ; preds = %and.93.exit
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
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
  %var.load100 = load i64, ptr %var.k, align 8
  %arena.cur101 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load100, ptr %rec.fld, align 8
  %rec.fld102 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld102, align 8
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

choice.exit:                                      ; preds = %choice.else, %idx_ok78
  %choice.res = phi { i1, i64 } [ %call.res99, %idx_ok78 ], [ %ram.pay, %choice.else ]
  ret { i1, i64 } %choice.res

idx_big_check:                                    ; preds = %choice.then
  %idx.big = icmp sge i64 %addtmp24, %s.read.len21
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
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
  %s.read.data32 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %s.read.data33 = load ptr, ptr %s.read.data32, align 8
  %var.load34 = load i64, ptr %var.k, align 8
  %addtmp35 = add i64 %var.load34, 3
  %idx.neg36 = icmp slt i64 %addtmp35, 0
  br i1 %idx.neg36, label %idx_oob39, label %idx_big_check37

idx_oob:                                          ; preds = %idx_big_check, %choice.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

idx_big_check37:                                  ; preds = %idx_ok
  %idx.big40 = icmp sge i64 %addtmp35, %s.read.len31
  br i1 %idx.big40, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead41, %idx_big_check37
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data33, i64 %addtmp35
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %call.res45 = call i64 @"json::#hexval"(i64 %s.byte.val44)
  store i64 %call.res45, ptr %var.d3, align 8
  %var.load46 = load ptr, ptr %var.sc, align 8
  %fld.gep47 = getelementptr inbounds { ptr, i64 }, ptr %var.load46, i32 0, i32 0
  %fld.load48 = load ptr, ptr %fld.gep47, align 8
  %s.read.len49 = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 0
  %s.read.len50 = load i64, ptr %s.read.len49, align 8
  %s.read.len51 = and i64 %s.read.len50, 281474976710655
  %s.read.data52 = getelementptr inbounds { i64, ptr }, ptr %fld.load48, i32 0, i32 1
  %s.read.data53 = load ptr, ptr %s.read.data52, align 8
  %var.load54 = load i64, ptr %var.k, align 8
  %addtmp55 = add i64 %var.load54, 4
  %idx.neg56 = icmp slt i64 %addtmp55, 0
  br i1 %idx.neg56, label %idx_oob59, label %idx_big_check57

idx_oob39:                                        ; preds = %idx_big_check37, %idx_ok
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %idx_ok38

idx_big_check57:                                  ; preds = %idx_ok38
  %idx.big60 = icmp sge i64 %addtmp55, %s.read.len51
  br i1 %idx.big60, label %idx_oob59, label %idx_ok58

idx_ok58:                                         ; preds = %abort.dead61, %idx_big_check57
  %s.byte.gep62 = getelementptr i8, ptr %s.read.data53, i64 %addtmp55
  %s.byte63 = load i8, ptr %s.byte.gep62, align 1
  %s.byte.val64 = zext i8 %s.byte63 to i64
  %call.res65 = call i64 @"json::#hexval"(i64 %s.byte.val64)
  store i64 %call.res65, ptr %var.d4, align 8
  %var.load66 = load ptr, ptr %var.sc, align 8
  %fld.gep67 = getelementptr inbounds { ptr, i64 }, ptr %var.load66, i32 0, i32 0
  %fld.load68 = load ptr, ptr %fld.gep67, align 8
  %s.read.len69 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 0
  %s.read.len70 = load i64, ptr %s.read.len69, align 8
  %s.read.len71 = and i64 %s.read.len70, 281474976710655
  %s.read.data72 = getelementptr inbounds { i64, ptr }, ptr %fld.load68, i32 0, i32 1
  %s.read.data73 = load ptr, ptr %s.read.data72, align 8
  %var.load74 = load i64, ptr %var.k, align 8
  %addtmp75 = add i64 %var.load74, 5
  %idx.neg76 = icmp slt i64 %addtmp75, 0
  br i1 %idx.neg76, label %idx_oob79, label %idx_big_check77

idx_oob59:                                        ; preds = %idx_big_check57, %idx_ok38
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %idx_ok58

idx_big_check77:                                  ; preds = %idx_ok58
  %idx.big80 = icmp sge i64 %addtmp75, %s.read.len71
  br i1 %idx.big80, label %idx_oob79, label %idx_ok78

idx_ok78:                                         ; preds = %abort.dead81, %idx_big_check77
  %s.byte.gep82 = getelementptr i8, ptr %s.read.data73, i64 %addtmp75
  %s.byte83 = load i8, ptr %s.byte.gep82, align 1
  %s.byte.val84 = zext i8 %s.byte83 to i64
  %call.res85 = call i64 @"json::#hexval"(i64 %s.byte.val84)
  store i64 %call.res85, ptr %var.d5, align 8
  %var.load86 = load i64, ptr %var.d2, align 8
  %multmp = mul i64 %var.load86, 4096
  %var.load87 = load i64, ptr %var.d3, align 8
  %multmp88 = mul i64 %var.load87, 256
  %addtmp89 = add i64 %multmp, %multmp88
  %var.load90 = load i64, ptr %var.d4, align 8
  %multmp91 = mul i64 %var.load90, 16
  %addtmp92 = add i64 %addtmp89, %multmp91
  %var.load93 = load i64, ptr %var.d5, align 8
  %addtmp94 = add i64 %addtmp92, %var.load93
  store i64 %addtmp94, ptr %var.cp, align 8
  %var.load95 = load ptr, ptr %var.sc, align 8
  %var.load96 = load ptr, ptr %var.b, align 8
  %var.load97 = load i64, ptr %var.k, align 8
  %var.load98 = load i64, ptr %var.cp, align 8
  %call.res99 = call { i1, i64 } @"json::#parse_unicode_cp"(ptr %var.load95, ptr %var.load96, i64 %var.load97, i64 %var.load98)
  br label %choice.exit

idx_oob79:                                        ; preds = %idx_big_check77, %idx_ok58
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead81:                                     ; No predecessors!
  br label %idx_ok78
}

define internal { i1, i64 } @"json::#parse_unicode_cp"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
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
  br i1 %cmptmp, label %and.94.then, label %and.94.else

choice.exit:                                      ; preds = %choice.next7, %choice.case6, %choice.case
  %choice.res = phi { i1, i64 } [ %call.res, %choice.case ], [ %ram.pay, %choice.case6 ], [ %call.res18, %choice.next7 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %and.94.exit
  %var.load2 = load ptr, ptr %var.sc, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %var.load4 = load i64, ptr %var.k, align 8
  %var.load5 = load i64, ptr %var.cp, align 8
  %call.res = call { i1, i64 } @"json::#parse_surrogate_pair"(ptr %var.load2, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  br label %choice.exit

choice.next:                                      ; preds = %and.94.exit
  %cmptmp8 = icmp sge i64 %var.load, 56320
  br i1 %cmptmp8, label %and.102.then, label %and.102.else

and.94.then:                                      ; preds = %entry
  %cmptmp1 = icmp sle i64 %var.load, 56319
  br label %and.94.exit

and.94.else:                                      ; preds = %entry
  br label %and.94.exit

and.94.exit:                                      ; preds = %and.94.else, %and.94.then
  %and.94.phi = phi i1 [ %cmptmp1, %and.94.then ], [ %cmptmp, %and.94.else ]
  br i1 %and.94.phi, label %choice.case, label %choice.next

choice.case6:                                     ; preds = %and.102.exit
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

choice.next7:                                     ; preds = %and.102.exit
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

and.102.then:                                     ; preds = %choice.next
  %cmptmp9 = icmp sle i64 %var.load, 57343
  br label %and.102.exit

and.102.else:                                     ; preds = %choice.next
  br label %and.102.exit

and.102.exit:                                     ; preds = %and.102.else, %and.102.then
  %and.102.phi = phi i1 [ %cmptmp9, %and.102.then ], [ %cmptmp8, %and.102.else ]
  br i1 %and.102.phi, label %choice.case6, label %choice.next7
}

define internal { i1, i64 } @"json::#parse_surrogate_pair"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.95.then, label %and.95.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.95.then:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %var.k, align 8
  %addtmp11 = add i64 %var.load10, 6
  %idx.neg = icmp slt i64 %addtmp11, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.95.else:                                      ; preds = %str_ok
  br label %and.95.exit

and.95.exit:                                      ; preds = %and.95.else, %idx_ok
  %and.95.phi = phi i1 [ %cmptmp13, %idx_ok ], [ %cmptmp, %and.95.else ]
  br i1 %and.95.phi, label %and.96.then, label %and.96.else

idx_big_check:                                    ; preds = %and.95.then
  %idx.big = icmp sge i64 %addtmp11, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead12, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %addtmp11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp13 = icmp eq i64 %s.byte.val, 92
  br label %and.95.exit

idx_oob:                                          ; preds = %idx_big_check, %and.95.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %idx_ok

and.96.then:                                      ; preds = %and.95.exit
  %var.load14 = load ptr, ptr %var.sc, align 8
  %fld.gep15 = getelementptr inbounds { ptr, i64 }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %s.read.len17 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len17, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data20 = getelementptr inbounds { i64, ptr }, ptr %fld.load16, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data20, align 8
  %var.load22 = load i64, ptr %var.k, align 8
  %addtmp23 = add i64 %var.load22, 7
  %idx.neg24 = icmp slt i64 %addtmp23, 0
  br i1 %idx.neg24, label %idx_oob27, label %idx_big_check25

and.96.else:                                      ; preds = %and.95.exit
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %idx_ok26
  %and.96.phi = phi i1 [ %cmptmp33, %idx_ok26 ], [ %and.95.phi, %and.96.else ]
  br i1 %and.96.phi, label %and.97.then, label %and.97.else

idx_big_check25:                                  ; preds = %and.96.then
  %idx.big28 = icmp sge i64 %addtmp23, %s.read.len19
  br i1 %idx.big28, label %idx_oob27, label %idx_ok26

idx_ok26:                                         ; preds = %abort.dead29, %idx_big_check25
  %s.byte.gep30 = getelementptr i8, ptr %s.read.data21, i64 %addtmp23
  %s.byte31 = load i8, ptr %s.byte.gep30, align 1
  %s.byte.val32 = zext i8 %s.byte31 to i64
  %cmptmp33 = icmp eq i64 %s.byte.val32, 117
  br label %and.96.exit

idx_oob27:                                        ; preds = %idx_big_check25, %and.96.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %idx_ok26

and.97.then:                                      ; preds = %and.96.exit
  %var.load34 = load ptr, ptr %var.sc, align 8
  %var.load35 = load i64, ptr %var.k, align 8
  %addtmp36 = add i64 %var.load35, 8
  %call.res = call i1 @"json::#is_hex_at"(ptr %var.load34, i64 %addtmp36)
  br label %and.97.exit

and.97.else:                                      ; preds = %and.96.exit
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %and.97.then
  %and.97.phi = phi i1 [ %call.res, %and.97.then ], [ %and.96.phi, %and.97.else ]
  br i1 %and.97.phi, label %and.98.then, label %and.98.else

and.98.then:                                      ; preds = %and.97.exit
  %var.load37 = load ptr, ptr %var.sc, align 8
  %var.load38 = load i64, ptr %var.k, align 8
  %addtmp39 = add i64 %var.load38, 9
  %call.res40 = call i1 @"json::#is_hex_at"(ptr %var.load37, i64 %addtmp39)
  br label %and.98.exit

and.98.else:                                      ; preds = %and.97.exit
  br label %and.98.exit

and.98.exit:                                      ; preds = %and.98.else, %and.98.then
  %and.98.phi = phi i1 [ %call.res40, %and.98.then ], [ %and.97.phi, %and.98.else ]
  br i1 %and.98.phi, label %and.99.then, label %and.99.else

and.99.then:                                      ; preds = %and.98.exit
  %var.load41 = load ptr, ptr %var.sc, align 8
  %var.load42 = load i64, ptr %var.k, align 8
  %addtmp43 = add i64 %var.load42, 10
  %call.res44 = call i1 @"json::#is_hex_at"(ptr %var.load41, i64 %addtmp43)
  br label %and.99.exit

and.99.else:                                      ; preds = %and.98.exit
  br label %and.99.exit

and.99.exit:                                      ; preds = %and.99.else, %and.99.then
  %and.99.phi = phi i1 [ %call.res44, %and.99.then ], [ %and.98.phi, %and.99.else ]
  br i1 %and.99.phi, label %and.100.then, label %and.100.else

and.100.then:                                     ; preds = %and.99.exit
  %var.load45 = load ptr, ptr %var.sc, align 8
  %var.load46 = load i64, ptr %var.k, align 8
  %addtmp47 = add i64 %var.load46, 11
  %call.res48 = call i1 @"json::#is_hex_at"(ptr %var.load45, i64 %addtmp47)
  br label %and.100.exit

and.100.else:                                     ; preds = %and.99.exit
  br label %and.100.exit

and.100.exit:                                     ; preds = %and.100.else, %and.100.then
  %and.100.phi = phi i1 [ %call.res48, %and.100.then ], [ %and.99.phi, %and.100.else ]
  store i1 %and.100.phi, ptr %var.has_second, align 1
  %var.load49 = load i1, ptr %var.has_second, align 1
  br i1 %var.load49, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.100.exit
  %var.load50 = load ptr, ptr %var.sc, align 8
  %fld.gep51 = getelementptr inbounds { ptr, i64 }, ptr %var.load50, i32 0, i32 0
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %s.read.len53 = getelementptr inbounds { i64, ptr }, ptr %fld.load52, i32 0, i32 0
  %s.read.len54 = load i64, ptr %s.read.len53, align 8
  %s.read.len55 = and i64 %s.read.len54, 281474976710655
  %s.read.data56 = getelementptr inbounds { i64, ptr }, ptr %fld.load52, i32 0, i32 1
  %s.read.data57 = load ptr, ptr %s.read.data56, align 8
  %var.load58 = load i64, ptr %var.k, align 8
  %addtmp59 = add i64 %var.load58, 8
  %idx.neg60 = icmp slt i64 %addtmp59, 0
  br i1 %idx.neg60, label %idx_oob63, label %idx_big_check61

choice.else:                                      ; preds = %and.100.exit
  %arena.cur160 = call ptr @dva_arena_current()
  %err.alloc161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 56)
  %err.code.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 0
  store i64 400, ptr %err.code.gep162, align 8
  %err.msg.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep163, align 8
  %err.file.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep164, align 8
  %err.line.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 3
  store i64 0, ptr %err.line.gep165, align 8
  %err.col.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 4
  store i64 0, ptr %err.col.gep166, align 8
  %err.ctx.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc161, i32 0, i32 5
  %var.load168 = load i64, ptr %var.k, align 8
  %arena.cur169 = call ptr @dva_arena_current()
  %rec.alloc170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld171 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc170, i32 0, i32 0
  store i64 %var.load168, ptr %rec.fld171, align 8
  %rec.fld172 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc170, i32 0, i32 1
  store i64 0, ptr %rec.fld172, align 8
  %ctx.0.gep173 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc170, i32 0, i32 0
  %ctx.0174 = load i64, ptr %ctx.0.gep173, align 8
  %ctx.1.gep175 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc170, i32 0, i32 1
  %ctx.1176 = load i64, ptr %ctx.1.gep175, align 8
  %err.ctx0.gep177 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep167, i32 0, i32 0
  store i64 %ctx.0174, ptr %err.ctx0.gep177, align 8
  %err.ctx1.gep178 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep167, i32 0, i32 1
  store i64 %ctx.1176, ptr %err.ctx1.gep178, align 8
  %p.to.i64179 = ptrtoint ptr %err.alloc161 to i64
  %ram.pay180 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64179, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit140
  %choice.res181 = phi { i1, i64 } [ %choice.res, %choice.exit140 ], [ %ram.pay180, %choice.else ]
  ret { i1, i64 } %choice.res181

idx_big_check61:                                  ; preds = %choice.then
  %idx.big64 = icmp sge i64 %addtmp59, %s.read.len55
  br i1 %idx.big64, label %idx_oob63, label %idx_ok62

idx_ok62:                                         ; preds = %abort.dead65, %idx_big_check61
  %s.byte.gep66 = getelementptr i8, ptr %s.read.data57, i64 %addtmp59
  %s.byte67 = load i8, ptr %s.byte.gep66, align 1
  %s.byte.val68 = zext i8 %s.byte67 to i64
  %call.res69 = call i64 @"json::#hexval"(i64 %s.byte.val68)
  store i64 %call.res69, ptr %var.l2, align 8
  %var.load70 = load ptr, ptr %var.sc, align 8
  %fld.gep71 = getelementptr inbounds { ptr, i64 }, ptr %var.load70, i32 0, i32 0
  %fld.load72 = load ptr, ptr %fld.gep71, align 8
  %s.read.len73 = getelementptr inbounds { i64, ptr }, ptr %fld.load72, i32 0, i32 0
  %s.read.len74 = load i64, ptr %s.read.len73, align 8
  %s.read.len75 = and i64 %s.read.len74, 281474976710655
  %s.read.data76 = getelementptr inbounds { i64, ptr }, ptr %fld.load72, i32 0, i32 1
  %s.read.data77 = load ptr, ptr %s.read.data76, align 8
  %var.load78 = load i64, ptr %var.k, align 8
  %addtmp79 = add i64 %var.load78, 9
  %idx.neg80 = icmp slt i64 %addtmp79, 0
  br i1 %idx.neg80, label %idx_oob83, label %idx_big_check81

idx_oob63:                                        ; preds = %idx_big_check61, %choice.then
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %idx_ok62

idx_big_check81:                                  ; preds = %idx_ok62
  %idx.big84 = icmp sge i64 %addtmp79, %s.read.len75
  br i1 %idx.big84, label %idx_oob83, label %idx_ok82

idx_ok82:                                         ; preds = %abort.dead85, %idx_big_check81
  %s.byte.gep86 = getelementptr i8, ptr %s.read.data77, i64 %addtmp79
  %s.byte87 = load i8, ptr %s.byte.gep86, align 1
  %s.byte.val88 = zext i8 %s.byte87 to i64
  %call.res89 = call i64 @"json::#hexval"(i64 %s.byte.val88)
  store i64 %call.res89, ptr %var.l3, align 8
  %var.load90 = load ptr, ptr %var.sc, align 8
  %fld.gep91 = getelementptr inbounds { ptr, i64 }, ptr %var.load90, i32 0, i32 0
  %fld.load92 = load ptr, ptr %fld.gep91, align 8
  %s.read.len93 = getelementptr inbounds { i64, ptr }, ptr %fld.load92, i32 0, i32 0
  %s.read.len94 = load i64, ptr %s.read.len93, align 8
  %s.read.len95 = and i64 %s.read.len94, 281474976710655
  %s.read.data96 = getelementptr inbounds { i64, ptr }, ptr %fld.load92, i32 0, i32 1
  %s.read.data97 = load ptr, ptr %s.read.data96, align 8
  %var.load98 = load i64, ptr %var.k, align 8
  %addtmp99 = add i64 %var.load98, 10
  %idx.neg100 = icmp slt i64 %addtmp99, 0
  br i1 %idx.neg100, label %idx_oob103, label %idx_big_check101

idx_oob83:                                        ; preds = %idx_big_check81, %idx_ok62
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead85:                                     ; No predecessors!
  br label %idx_ok82

idx_big_check101:                                 ; preds = %idx_ok82
  %idx.big104 = icmp sge i64 %addtmp99, %s.read.len95
  br i1 %idx.big104, label %idx_oob103, label %idx_ok102

idx_ok102:                                        ; preds = %abort.dead105, %idx_big_check101
  %s.byte.gep106 = getelementptr i8, ptr %s.read.data97, i64 %addtmp99
  %s.byte107 = load i8, ptr %s.byte.gep106, align 1
  %s.byte.val108 = zext i8 %s.byte107 to i64
  %call.res109 = call i64 @"json::#hexval"(i64 %s.byte.val108)
  store i64 %call.res109, ptr %var.l4, align 8
  %var.load110 = load ptr, ptr %var.sc, align 8
  %fld.gep111 = getelementptr inbounds { ptr, i64 }, ptr %var.load110, i32 0, i32 0
  %fld.load112 = load ptr, ptr %fld.gep111, align 8
  %s.read.len113 = getelementptr inbounds { i64, ptr }, ptr %fld.load112, i32 0, i32 0
  %s.read.len114 = load i64, ptr %s.read.len113, align 8
  %s.read.len115 = and i64 %s.read.len114, 281474976710655
  %s.read.data116 = getelementptr inbounds { i64, ptr }, ptr %fld.load112, i32 0, i32 1
  %s.read.data117 = load ptr, ptr %s.read.data116, align 8
  %var.load118 = load i64, ptr %var.k, align 8
  %addtmp119 = add i64 %var.load118, 11
  %idx.neg120 = icmp slt i64 %addtmp119, 0
  br i1 %idx.neg120, label %idx_oob123, label %idx_big_check121

idx_oob103:                                       ; preds = %idx_big_check101, %idx_ok82
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead105:                                    ; No predecessors!
  br label %idx_ok102

idx_big_check121:                                 ; preds = %idx_ok102
  %idx.big124 = icmp sge i64 %addtmp119, %s.read.len115
  br i1 %idx.big124, label %idx_oob123, label %idx_ok122

idx_ok122:                                        ; preds = %abort.dead125, %idx_big_check121
  %s.byte.gep126 = getelementptr i8, ptr %s.read.data117, i64 %addtmp119
  %s.byte127 = load i8, ptr %s.byte.gep126, align 1
  %s.byte.val128 = zext i8 %s.byte127 to i64
  %call.res129 = call i64 @"json::#hexval"(i64 %s.byte.val128)
  store i64 %call.res129, ptr %var.l5, align 8
  %var.load130 = load i64, ptr %var.l2, align 8
  %multmp = mul i64 %var.load130, 4096
  %var.load131 = load i64, ptr %var.l3, align 8
  %multmp132 = mul i64 %var.load131, 256
  %addtmp133 = add i64 %multmp, %multmp132
  %var.load134 = load i64, ptr %var.l4, align 8
  %multmp135 = mul i64 %var.load134, 16
  %addtmp136 = add i64 %addtmp133, %multmp135
  %var.load137 = load i64, ptr %var.l5, align 8
  %addtmp138 = add i64 %addtmp136, %var.load137
  store i64 %addtmp138, ptr %var.locp, align 8
  %var.load139 = load i64, ptr %var.locp, align 8
  %cmptmp141 = icmp sge i64 %var.load139, 56320
  br i1 %cmptmp141, label %and.101.then, label %and.101.else

idx_oob123:                                       ; preds = %idx_big_check121, %idx_ok102
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead125:                                    ; No predecessors!
  br label %idx_ok122

choice.exit140:                                   ; preds = %choice.next, %choice.case
  %choice.res = phi { i1, i64 } [ %call.res155, %choice.case ], [ %ram.pay, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %and.101.exit
  %var.load143 = load i64, ptr %var.cp, align 8
  %subtmp = sub i64 %var.load143, 55296
  %multmp144 = mul i64 %subtmp, 1024
  %addtmp145 = add i64 65536, %multmp144
  %var.load146 = load i64, ptr %var.locp, align 8
  %subtmp147 = sub i64 %var.load146, 56320
  %addtmp148 = add i64 %addtmp145, %subtmp147
  store i64 %addtmp148, ptr %var.full_cp, align 8
  %var.load149 = load ptr, ptr %var.b, align 8
  %var.load150 = load i64, ptr %var.full_cp, align 8
  %coerce.trunc = trunc i64 %var.load150 to i32
  call void @"utf::append_rune"(ptr %var.load149, i32 %coerce.trunc)
  %var.load151 = load ptr, ptr %var.sc, align 8
  %var.load152 = load ptr, ptr %var.b, align 8
  %var.load153 = load i64, ptr %var.k, align 8
  %addtmp154 = add i64 %var.load153, 12
  %call.res155 = call { i1, i64 } @"json::#scan_string"(ptr %var.load151, ptr %var.load152, i64 %addtmp154)
  br label %choice.exit140

choice.next:                                      ; preds = %and.101.exit
  %arena.cur156 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 56)
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
  %var.load157 = load i64, ptr %var.k, align 8
  %arena.cur158 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load157, ptr %rec.fld, align 8
  %rec.fld159 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld159, align 8
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
  br label %choice.exit140

and.101.then:                                     ; preds = %idx_ok122
  %cmptmp142 = icmp sle i64 %var.load139, 57343
  br label %and.101.exit

and.101.else:                                     ; preds = %idx_ok122
  br label %and.101.exit

and.101.exit:                                     ; preds = %and.101.else, %and.101.then
  %and.101.phi = phi i1 [ %cmptmp142, %and.101.then ], [ %cmptmp141, %and.101.else ]
  br i1 %and.101.phi, label %choice.case, label %choice.next
}

declare void @"utf::append_rune"(ptr, i32) #0

define internal i1 @"json::#is_digit_at"(ptr %0, i64 %1) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.103.then, label %and.103.else

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

and.103.then:                                     ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load10, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.103.else:                                     ; preds = %str_ok
  br label %and.103.exit

and.103.exit:                                     ; preds = %and.103.else, %idx_ok
  %and.103.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.103.else ]
  ret i1 %and.103.phi

idx_big_check:                                    ; preds = %and.103.then
  %idx.big = icmp sge i64 %var.load10, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead11, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_digit"(i64 %s.byte.val)
  br label %and.103.exit

idx_oob:                                          ; preds = %idx_big_check, %and.103.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %idx_ok
}

declare i1 @"str::is_digit"(i64) #0

define internal i64 @"json::#scan_plain_ascii_end"(ptr %0, i64 %1) #0 {
entry:
  %var.c = alloca i64, align 8
  %var._57 = alloca i64, align 8
  %var._i56 = alloca i64, align 8
  %loop.step.105 = alloca i64, align 8
  %loop.idx.105 = alloca i64, align 8
  %var.bad = alloca i64, align 8
  %var.m2 = alloca i64, align 8
  %var.m1 = alloca i64, align 8
  %var.x2 = alloca i64, align 8
  %var.x1 = alloca i64, align 8
  %var.ctrl_or_hi = alloca i64, align 8
  %var.w = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.104 = alloca i64, align 8
  %loop.idx.104 = alloca i64, align 8
  %var.base = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %"var.k'" = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store i64 %1, ptr %var.start, align 8
  %var.load = load i64, ptr %var.start, align 8
  store i64 %var.load, ptr %"var.k'", align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %"var.k'", align 8
  %addtmp = add i64 %var.load4, 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %addtmp, %var.load5
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
  %var.load6 = load ptr, ptr %var.src, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.ptr7 = load ptr, ptr %s.ptr, align 8
  store ptr %s.ptr7, ptr %var.base, align 8
  store i64 0, ptr %loop.idx.104, align 8
  br label %loop.header.104

choice.exit:                                      ; preds = %loop.exit.104, %str_ok
  store i64 0, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.header.104:                                  ; preds = %loop.latch.104, %choice.then
  %counter.load = load i64, ptr %loop.idx.104, align 8
  br label %loop.body.104

loop.body.104:                                    ; preds = %loop.header.104
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.104, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load8 = load i64, ptr %"var.k'", align 8
  %addtmp9 = add i64 %var.load8, 8
  %var.load10 = load i64, ptr %var.n, align 8
  %cmptmp11 = icmp sgt i64 %addtmp9, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

loop.exit.nat.104:                                ; No predecessors!
  br label %loop.exit.104

loop.latch.104:                                   ; preds = %choice.exit48
  %step.val = load i64, ptr %loop.step.104, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.104, align 8
  br label %loop.header.104

loop.exit.104:                                    ; preds = %ret.dead, %choice.then12, %loop.exit.nat.104
  br label %choice.exit

choice.then12:                                    ; preds = %loop.body.104
  br label %loop.exit.104

choice.exit13:                                    ; preds = %loop.body.104
  %var.load14 = load ptr, ptr %var.base, align 8
  %var.load15 = load i64, ptr %"var.k'", align 8
  %ptr.int.l = ptrtoint ptr %var.load14 to i64
  %addtmp16 = add i64 %ptr.int.l, %var.load15
  %ptr.res = inttoptr i64 %addtmp16 to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal17 = icmp eq i64 %addr.tag, 0
  br i1 %tag.immortal17, label %addr_ok, label %tag.gen_check18

addr_ok:                                          ; preds = %abort.dead25, %tag.slow_check19, %tag.gen_check18, %choice.exit13
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.w, align 8
  %var.load26 = load i64, ptr %var.w, align 8
  %var.load27 = load i64, ptr %var.w, align 8
  %subtmp = sub i64 %var.load27, 2314885530818453536
  %bortmp = or i64 %var.load26, %subtmp
  store i64 %bortmp, ptr %var.ctrl_or_hi, align 8
  %var.load28 = load i64, ptr %var.w, align 8
  %bxortmp = xor i64 %var.load28, 2459565876494606882
  store i64 %bxortmp, ptr %var.x1, align 8
  %var.load29 = load i64, ptr %var.w, align 8
  %bxortmp30 = xor i64 %var.load29, 6655295901103053916
  store i64 %bxortmp30, ptr %var.x2, align 8
  %var.load31 = load i64, ptr %var.x1, align 8
  %subtmp32 = sub i64 %var.load31, 72340172838076673
  %var.load33 = load i64, ptr %var.x1, align 8
  %bitnottmp = xor i64 %var.load33, -1
  %bandtmp = and i64 %subtmp32, %bitnottmp
  store i64 %bandtmp, ptr %var.m1, align 8
  %var.load34 = load i64, ptr %var.x2, align 8
  %subtmp35 = sub i64 %var.load34, 72340172838076673
  %var.load36 = load i64, ptr %var.x2, align 8
  %bitnottmp37 = xor i64 %var.load36, -1
  %bandtmp38 = and i64 %subtmp35, %bitnottmp37
  store i64 %bandtmp38, ptr %var.m2, align 8
  %var.load39 = load i64, ptr %var.ctrl_or_hi, align 8
  %var.load40 = load i64, ptr %var.m1, align 8
  %bortmp41 = or i64 %var.load39, %var.load40
  %var.load42 = load i64, ptr %var.m2, align 8
  %bortmp43 = or i64 %bortmp41, %var.load42
  %bandtmp44 = and i64 %bortmp43, -9187201950435737472
  store i64 %bandtmp44, ptr %var.bad, align 8
  %var.load45 = load i64, ptr %var.bad, align 8
  %cmptmp46 = icmp ne i64 %var.load45, 0
  br i1 %cmptmp46, label %choice.then47, label %choice.exit48

tag.gen_check18:                                  ; preds = %choice.exit13
  %active.gen21 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok22 = icmp eq i64 %addr.tag, %active.gen21
  br i1 %tag.fast.ok22, label %addr_ok, label %tag.slow_check19

tag.slow_check19:                                 ; preds = %tag.gen_check18
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid24 = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %addr.tag)
  br i1 %tag.valid24, label %addr_ok, label %tag.stale20

tag.stale20:                                      ; preds = %tag.slow_check19
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %addr_ok

choice.then47:                                    ; preds = %addr_ok
  %var.load49 = load i64, ptr %"var.k'", align 8
  %var.load50 = load i64, ptr %var.bad, align 8
  %cttz = call i64 @llvm.cttz.i64(i64 %var.load50, i1 false)
  %shrtmp = lshr i64 %cttz, 3
  %addtmp51 = add i64 %var.load49, %shrtmp
  ret i64 %addtmp51

choice.exit48:                                    ; preds = %addr_ok
  %var.load52 = load i64, ptr %"var.k'", align 8
  %addtmp53 = add i64 %var.load52, 8
  store i64 %addtmp53, ptr %"var.k'", align 8
  br label %loop.latch.104

ret.dead:                                         ; No predecessors!
  br label %loop.exit.104

loop.header.105:                                  ; preds = %loop.latch.105, %choice.exit
  %counter.load54 = load i64, ptr %loop.idx.105, align 8
  br label %loop.body.105

loop.body.105:                                    ; preds = %loop.header.105
  %loop.rel.i55 = sub i64 %counter.load54, 0
  store i64 1, ptr %loop.step.105, align 8
  store i64 %loop.rel.i55, ptr %var._i56, align 8
  store i64 %counter.load54, ptr %var._57, align 8
  %var.load58 = load i64, ptr %"var.k'", align 8
  %var.load59 = load i64, ptr %var.n, align 8
  %cmptmp60 = icmp sge i64 %var.load58, %var.load59
  br i1 %cmptmp60, label %choice.then61, label %choice.exit62

loop.exit.nat.105:                                ; No predecessors!
  br label %loop.exit.105

loop.latch.105:                                   ; preds = %choice.exit80
  %step.val83 = load i64, ptr %loop.step.105, align 8
  %loop.next84 = add i64 %counter.load54, %step.val83
  store i64 %loop.next84, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.exit.105:                                    ; preds = %choice.else, %choice.then61, %loop.exit.nat.105
  %var.load85 = load i64, ptr %"var.k'", align 8
  ret i64 %var.load85

choice.then61:                                    ; preds = %loop.body.105
  br label %loop.exit.105

choice.exit62:                                    ; preds = %loop.body.105
  %var.load63 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 0
  %s.read.len64 = load i64, ptr %s.read.len, align 8
  %s.read.len65 = and i64 %s.read.len64, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 1
  %s.read.data66 = load ptr, ptr %s.read.data, align 8
  %var.load67 = load i64, ptr %"var.k'", align 8
  %idx.neg = icmp slt i64 %var.load67, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit62
  %idx.big = icmp sge i64 %var.load67, %s.read.len65
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead68, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data66, i64 %var.load67
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load69 = load i64, ptr %var.c, align 8
  %cmptmp71 = icmp sge i64 %var.load69, 32
  br i1 %cmptmp71, label %and.106.then, label %and.106.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit62
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead68:                                     ; No predecessors!
  br label %idx_ok

choice.exit70:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %and.107.then, label %and.107.else

choice.case:                                      ; preds = %and.106.exit
  br label %choice.exit70

choice.next:                                      ; preds = %and.106.exit
  br label %choice.exit70

and.106.then:                                     ; preds = %idx_ok
  %cmptmp72 = icmp sle i64 %var.load69, 127
  br label %and.106.exit

and.106.else:                                     ; preds = %idx_ok
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %and.106.then
  %and.106.phi = phi i1 [ %cmptmp72, %and.106.then ], [ %cmptmp71, %and.106.else ]
  br i1 %and.106.phi, label %choice.case, label %choice.next

and.107.then:                                     ; preds = %choice.exit70
  %var.load73 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load73, 34
  %val.match77 = icmp eq i64 %var.load73, 92
  %case.or = or i1 %val.match, %val.match77
  br i1 %case.or, label %choice.case75, label %choice.next76

and.107.else:                                     ; preds = %choice.exit70
  br label %and.107.exit

and.107.exit:                                     ; preds = %and.107.else, %choice.exit74
  %and.107.phi = phi i1 [ %nottmp, %choice.exit74 ], [ %choice.res, %and.107.else ]
  br i1 %and.107.phi, label %choice.then79, label %choice.else

choice.exit74:                                    ; preds = %choice.next76, %choice.case75
  %choice.res78 = phi i1 [ true, %choice.case75 ], [ false, %choice.next76 ]
  %nottmp = xor i1 %choice.res78, true
  br label %and.107.exit

choice.case75:                                    ; preds = %and.107.then
  br label %choice.exit74

choice.next76:                                    ; preds = %and.107.then
  br label %choice.exit74

choice.then79:                                    ; preds = %and.107.exit
  %var.load81 = load i64, ptr %"var.k'", align 8
  %addtmp82 = add i64 %var.load81, 1
  store i64 %addtmp82, ptr %"var.k'", align 8
  br label %choice.exit80

choice.else:                                      ; preds = %and.107.exit
  br label %loop.exit.105

choice.exit80:                                    ; preds = %choice.then79
  br label %loop.latch.105
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

define internal { i1, i64 } @"json::#parse_string_escaped"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var.err = alloca ptr, align 8
  %var._48 = alloca ptr, align 8
  %var.end = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.r = alloca { i1, i64 }, align 8
  %var.b = alloca ptr, align 8
  %var.plain_end = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.plain_end, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %var.load1 = load i64, ptr %var.start, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 1
  store i64 %var.load1, ptr %fld.gep, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

b.buf.len2:                                       ; preds = %abort.dead, %entry
  %arena.cur3 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load4 = load i64, ptr %var.plain_end, align 8
  %var.load5 = load i64, ptr %var.start, align 8
  %cmptmp = icmp sgt i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_overflow_abort:                               ; preds = %entry
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

choice.then:                                      ; preds = %b.buf.len2
  %b.load = load ptr, ptr %var.b, align 8
  %var.load6 = load ptr, ptr %var.sc, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep7, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %var.start, align 8
  %var.load12 = load i64, ptr %var.plain_end, align 8
  %start.is_neg = icmp slt i64 %var.load11, 0
  %rel.start = add i64 %s.read.len9, %var.load11
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load11
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len9
  %final.start = select i1 %start.gt.len, i64 %s.read.len9, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load12, 0
  %rel.end = add i64 %s.read.len9, %var.load12
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load12
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len9
  %final.end = select i1 %end.gt.len, i64 %s.read.len9, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data10, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len13 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len13, i64 %view.len)
  %sum14 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf15 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %b.app.new.len16

choice.exit:                                      ; preds = %b.grow_done, %b.buf.len2
  %var.load30 = load ptr, ptr %var.sc, align 8
  %var.load31 = load ptr, ptr %var.b, align 8
  %var.load32 = load i64, ptr %var.plain_end, align 8
  %call.res = call { i1, i64 } @"json::#scan_string"(ptr %var.load30, ptr %var.load31, i64 %var.load32)
  store { i1, i64 } %call.res, ptr %var.r, align 8
  %var.load33 = load { i1, i64 }, ptr %var.r, align 8
  %ram.tag = extractvalue { i1, i64 } %var.load33, 0
  br i1 %ram.tag, label %choice.then34, label %choice.else

b.app.new.len16:                                  ; preds = %abort.dead18, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap19 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap19, %sum14
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort17:                             ; preds = %choice.then
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %b.app.new.len16

b.grow2:                                          ; preds = %b.app.new.len16
  %b.cap2 = mul i64 %b.cap19, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum14
  %b.new.cap = select i1 %b.cap.need, i64 %sum14, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len220 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data221 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum22 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf23 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf23, label %str_overflow_abort25, label %b.new.buf.len224

b.nogrow2:                                        ; preds = %b.app.new.len16
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len224
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data28 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data28, i64 %b.app.cur.len13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data28, i64 %sum14
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum14, ptr %b.len.gep29, align 8
  br label %choice.exit

b.new.buf.len224:                                 ; preds = %abort.dead26, %b.grow2
  %arena.cur27 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum22)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data221, i64 %b.cur.len220, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len220
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort25:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %b.new.buf.len224

choice.then34:                                    ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %var.load33, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load36 = load ptr, ptr %var.sc, align 8
  %var.load37 = load i64, ptr %var.end, align 8
  %addtmp = add i64 %var.load37, 1
  %fld.gep38 = getelementptr inbounds { ptr, i64 }, ptr %var.load36, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep38, align 8
  %arena.cur39 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load40 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load40, i32 0, i32 0
  %b.freeze.len41 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load40, i32 0, i32 1
  %b.freeze.data42 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else:                                      ; preds = %choice.exit
  %ram.pay47 = extractvalue { i1, i64 } %var.load33, 1
  %pay.ptr = inttoptr i64 %ram.pay47 to ptr
  store ptr %pay.ptr, ptr %var._48, align 8
  store ptr %pay.ptr, ptr %var.err, align 8
  %var.load49 = load ptr, ptr %var.err, align 8
  %p.to.i6450 = ptrtoint ptr %var.load49 to i64
  %ram.pay51 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6450, 1
  br label %choice.exit35

choice.exit35:                                    ; preds = %choice.else, %b.freeze.done
  %choice.res = phi { i1, i64 } [ %ram.pay46, %b.freeze.done ], [ %ram.pay51, %choice.else ]
  ret { i1, i64 } %choice.res

b.freeze.check:                                   ; preds = %choice.then34
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data42, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data42, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data42, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len41, 1
  %arena.cur43 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data42, i64 %b.freeze.len41, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len41
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then34
  %b.freeze.data44 = phi ptr [ %b.freeze.data42, %choice.then34 ], [ %b.freeze.data42, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur45 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len41, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data44, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load40, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load40, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load40, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay46 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit35
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

define internal { i1, i64 } @"json::#parse_string"(ptr %0) #0 {
entry:
  %var.plain_end = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.sc = alloca ptr, align 8
  store ptr %0, ptr %var.sc, align 8
  %var.load = load ptr, ptr %var.sc, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 1
  store i64 %addtmp, ptr %var.start, align 8
  %var.load1 = load ptr, ptr %var.sc, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %var.load4 = load i64, ptr %var.start, align 8
  %call.res = call i64 @"json::#scan_plain_ascii_end"(ptr %fld.load3, i64 %var.load4)
  store i64 %call.res, ptr %var.plain_end, align 8
  %var.load5 = load i64, ptr %var.plain_end, align 8
  %var.load6 = load ptr, ptr %var.sc, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %str.len.query9 = load i64, ptr %str.len.query, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %str.tag = lshr i64 %str.len.query9, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %and.108.then, label %and.108.else

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

and.108.then:                                     ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.plain_end, align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.108.else:                                     ; preds = %str_ok
  br label %and.108.exit

and.108.exit:                                     ; preds = %and.108.else, %idx_ok
  %and.108.phi = phi i1 [ %cmptmp19, %idx_ok ], [ %cmptmp, %and.108.else ]
  br i1 %and.108.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.108.then
  %idx.big = icmp sge i64 %var.load17, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead18, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp eq i64 %s.byte.val, 34
  br label %and.108.exit

idx_oob:                                          ; preds = %idx_big_check, %and.108.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.108.exit
  %var.load20 = load ptr, ptr %var.sc, align 8
  %var.load21 = load i64, ptr %var.plain_end, align 8
  %addtmp22 = add i64 %var.load21, 1
  %fld.gep23 = getelementptr inbounds { ptr, i64 }, ptr %var.load20, i32 0, i32 1
  store i64 %addtmp22, ptr %fld.gep23, align 8
  %arena.cur24 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load25 = load ptr, ptr %var.sc, align 8
  %fld.gep26 = getelementptr inbounds { ptr, i64 }, ptr %var.load25, i32 0, i32 0
  %fld.load27 = load ptr, ptr %fld.gep26, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %fld.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data31 = getelementptr inbounds { i64, ptr }, ptr %fld.load27, i32 0, i32 1
  %s.read.data32 = load ptr, ptr %s.read.data31, align 8
  %var.load33 = load i64, ptr %var.start, align 8
  %var.load34 = load i64, ptr %var.plain_end, align 8
  %start.is_neg = icmp slt i64 %var.load33, 0
  %rel.start = add i64 %s.read.len30, %var.load33
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load33
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len30
  %final.start = select i1 %start.gt.len, i64 %s.read.len30, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load34, 0
  %rel.end = add i64 %s.read.len30, %var.load34
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load34
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len30
  %final.end = select i1 %end.gt.len, i64 %s.read.len30, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data32, i64 %final.start
  %arena.cur35 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %and.108.exit
  %var.load36 = load ptr, ptr %var.sc, align 8
  %var.load37 = load i64, ptr %var.start, align 8
  %var.load38 = load i64, ptr %var.plain_end, align 8
  %call.res39 = call { i1, i64 } @"json::#parse_string_escaped"(ptr %var.load36, i64 %var.load37, i64 %var.load38)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %call.res39, %choice.else ]
  ret { i1, i64 } %choice.res
}

define internal { i1, i64 } @"json::#parse_array"(ptr %0) #0 {
entry:
  %var.elems59 = alloca ptr, align 8
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load24 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load24, 93
  br i1 %val.match, label %choice.case26, label %choice.next27

choice.case:                                      ; preds = %str_ok
  %var.load16 = load ptr, ptr %var.sc, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %var.load22 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load22, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

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

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load22, %s.read.len20
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead23, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data21, i64 %var.load22
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok

choice.exit25:                                    ; preds = %a.after65, %a.view.off48
  %choice.res75 = phi { i1, i64 } [ %ram.pay, %a.view.off48 ], [ %call.res74, %a.after65 ]
  ret { i1, i64 } %choice.res75

choice.case26:                                    ; preds = %choice.exit
  %var.load28 = load ptr, ptr %var.sc, align 8
  %var.load29 = load ptr, ptr %var.sc, align 8
  %fld.gep30 = getelementptr inbounds { ptr, i64 }, ptr %var.load29, i32 0, i32 1
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %addtmp32 = add i64 %fld.load31, 1
  %fld.gep33 = getelementptr inbounds { ptr, i64 }, ptr %var.load28, i32 0, i32 1
  store i64 %addtmp32, ptr %fld.gep33, align 8
  %arena.cur34 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %arena.cur35 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.elems, align 8
  %arena.cur36 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load37 = load ptr, ptr %var.elems, align 8
  %a.load = load ptr, ptr %var.elems, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next27:                                    ; preds = %choice.exit
  %arena.cur52 = call ptr @dva_arena_current()
  %a.new53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %arena.cur54 = call ptr @dva_arena_current()
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  %a.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new53, i32 0, i32 0
  store i64 0, ptr %a.len.gep56, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new53, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new53, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  store ptr %a.new53, ptr %var.elems59, align 8
  %var.load60 = load ptr, ptr %var.sc, align 8
  %var.load61 = load ptr, ptr %var.elems59, align 8
  %a.load62 = load ptr, ptr %var.elems59, align 8
  %a.null63 = icmp eq ptr %a.load62, null
  br i1 %a.null63, label %a.create64, label %a.after65

a.create:                                         ; preds = %choice.case26
  %arena.cur38 = call ptr @dva_arena_current()
  %a.create39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 24)
  %arena.cur40 = call ptr @dva_arena_current()
  %a.buf41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 128)
  %a.len.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 0
  store i64 0, ptr %a.len.gep42, align 8
  %a.data.gep43 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 1
  store ptr %a.buf41, ptr %a.data.gep43, align 8
  %a.cap.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 2
  store i64 16, ptr %a.cap.gep44, align 8
  store ptr %a.create39, ptr %var.elems, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case26
  %a.load2 = load ptr, ptr %var.elems, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.view.len45 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len45, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len45
  %final.start = select i1 %start.gt.len, i64 %a.view.len45, i64 %c.start.0
  %rel.end = add i64 %a.view.len45, 0
  %norm.end = select i1 false, i64 %rel.end, i64 0
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len45
  %final.end = select i1 %end.gt.len, i64 %a.view.len45, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.view.data46 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off47, 0
  %ovf = extractvalue { i64, i1 } %a.view.off47, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off48

a.view.off48:                                     ; preds = %abort.dead49, %a.after
  %a.view.data50 = getelementptr i8, ptr %a.view.data46, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur51 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data50, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit25

str_overflow_abort:                               ; preds = %a.after
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %a.view.off48

a.create64:                                       ; preds = %choice.next27
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
  store ptr %a.create67, ptr %var.elems59, align 8
  br label %a.after65

a.after65:                                        ; preds = %a.create64, %choice.next27
  %a.load273 = load ptr, ptr %var.elems59, align 8
  %call.res74 = call { i1, i64 } @"json::#parse_array_loop"(ptr %var.load60, ptr %a.load273)
  br label %choice.exit25
}

define internal { i1, i64 } @"json::#parse_array_loop"(ptr %0, ptr %1) #0 {
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

define internal { i1, i64 } @"json::#parse_value"(ptr %0) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load19 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load19, 34
  br i1 %val.match, label %choice.case21, label %choice.next22

choice.case:                                      ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

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

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load17, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead18, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %idx_ok

choice.exit20:                                    ; preds = %choice.next46, %choice.case45, %choice.case40, %choice.case35, %choice.case30, %choice.case25, %choice.case21
  %choice.res52 = phi { i1, i64 } [ %call.res24, %choice.case21 ], [ %call.res29, %choice.case25 ], [ %call.res34, %choice.case30 ], [ %call.res39, %choice.case35 ], [ %call.res44, %choice.case40 ], [ %call.res49, %choice.case45 ], [ %call.res51, %choice.next46 ]
  ret { i1, i64 } %choice.res52

choice.case21:                                    ; preds = %choice.exit
  %var.load23 = load ptr, ptr %var.sc, align 8
  %call.res24 = call { i1, i64 } @"json::#parse_string"(ptr %var.load23)
  br label %choice.exit20

choice.next22:                                    ; preds = %choice.exit
  %val.match27 = icmp eq i64 %var.load19, 123
  br i1 %val.match27, label %choice.case25, label %choice.next26

choice.case25:                                    ; preds = %choice.next22
  %var.load28 = load ptr, ptr %var.sc, align 8
  %call.res29 = call { i1, i64 } @"json::#parse_object"(ptr %var.load28)
  br label %choice.exit20

choice.next26:                                    ; preds = %choice.next22
  %val.match32 = icmp eq i64 %var.load19, 91
  br i1 %val.match32, label %choice.case30, label %choice.next31

choice.case30:                                    ; preds = %choice.next26
  %var.load33 = load ptr, ptr %var.sc, align 8
  %call.res34 = call { i1, i64 } @"json::#parse_array"(ptr %var.load33)
  br label %choice.exit20

choice.next31:                                    ; preds = %choice.next26
  %val.match37 = icmp eq i64 %var.load19, 116
  br i1 %val.match37, label %choice.case35, label %choice.next36

choice.case35:                                    ; preds = %choice.next31
  %var.load38 = load ptr, ptr %var.sc, align 8
  %call.res39 = call { i1, i64 } @"json::#parse_lit"(ptr %var.load38, i1 true, i64 4)
  br label %choice.exit20

choice.next36:                                    ; preds = %choice.next31
  %val.match42 = icmp eq i64 %var.load19, 102
  br i1 %val.match42, label %choice.case40, label %choice.next41

choice.case40:                                    ; preds = %choice.next36
  %var.load43 = load ptr, ptr %var.sc, align 8
  %call.res44 = call { i1, i64 } @"json::#parse_lit"(ptr %var.load43, i1 false, i64 5)
  br label %choice.exit20

choice.next41:                                    ; preds = %choice.next36
  %val.match47 = icmp eq i64 %var.load19, 110
  br i1 %val.match47, label %choice.case45, label %choice.next46

choice.case45:                                    ; preds = %choice.next41
  %var.load48 = load ptr, ptr %var.sc, align 8
  %call.res49 = call { i1, i64 } @"json::#parse_null"(ptr %var.load48)
  br label %choice.exit20

choice.next46:                                    ; preds = %choice.next41
  %var.load50 = load ptr, ptr %var.sc, align 8
  %call.res51 = call { i1, i64 } @"json::#parse_number"(ptr %var.load50)
  br label %choice.exit20
}

define internal { i1, i64 } @"json::#parse_object"(ptr %0) #0 {
entry:
  %var.entries59 = alloca ptr, align 8
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load24 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load24, 125
  br i1 %val.match, label %choice.case26, label %choice.next27

choice.case:                                      ; preds = %str_ok
  %var.load16 = load ptr, ptr %var.sc, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %var.load22 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load22, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

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

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load22, %s.read.len20
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead23, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data21, i64 %var.load22
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok

choice.exit25:                                    ; preds = %a.after65, %a.view.off48
  %choice.res75 = phi { i1, i64 } [ %ram.pay, %a.view.off48 ], [ %call.res74, %a.after65 ]
  ret { i1, i64 } %choice.res75

choice.case26:                                    ; preds = %choice.exit
  %var.load28 = load ptr, ptr %var.sc, align 8
  %var.load29 = load ptr, ptr %var.sc, align 8
  %fld.gep30 = getelementptr inbounds { ptr, i64 }, ptr %var.load29, i32 0, i32 1
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %addtmp32 = add i64 %fld.load31, 1
  %fld.gep33 = getelementptr inbounds { ptr, i64 }, ptr %var.load28, i32 0, i32 1
  store i64 %addtmp32, ptr %fld.gep33, align 8
  %arena.cur34 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %arena.cur35 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.entries, align 8
  %arena.cur36 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load37 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next27:                                    ; preds = %choice.exit
  %arena.cur52 = call ptr @dva_arena_current()
  %a.new53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %arena.cur54 = call ptr @dva_arena_current()
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  %a.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new53, i32 0, i32 0
  store i64 0, ptr %a.len.gep56, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new53, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new53, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  store ptr %a.new53, ptr %var.entries59, align 8
  %var.load60 = load ptr, ptr %var.sc, align 8
  %var.load61 = load ptr, ptr %var.entries59, align 8
  %a.load62 = load ptr, ptr %var.entries59, align 8
  %a.null63 = icmp eq ptr %a.load62, null
  br i1 %a.null63, label %a.create64, label %a.after65

a.create:                                         ; preds = %choice.case26
  %arena.cur38 = call ptr @dva_arena_current()
  %a.create39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 24)
  %arena.cur40 = call ptr @dva_arena_current()
  %a.buf41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 128)
  %a.len.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 0
  store i64 0, ptr %a.len.gep42, align 8
  %a.data.gep43 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 1
  store ptr %a.buf41, ptr %a.data.gep43, align 8
  %a.cap.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create39, i32 0, i32 2
  store i64 16, ptr %a.cap.gep44, align 8
  store ptr %a.create39, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case26
  %a.load2 = load ptr, ptr %var.entries, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.view.len45 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len45, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len45
  %final.start = select i1 %start.gt.len, i64 %a.view.len45, i64 %c.start.0
  %rel.end = add i64 %a.view.len45, 0
  %norm.end = select i1 false, i64 %rel.end, i64 0
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len45
  %final.end = select i1 %end.gt.len, i64 %a.view.len45, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.view.data46 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off47 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off47, 0
  %ovf = extractvalue { i64, i1 } %a.view.off47, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off48

a.view.off48:                                     ; preds = %abort.dead49, %a.after
  %a.view.data50 = getelementptr i8, ptr %a.view.data46, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur51 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data50, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit25

str_overflow_abort:                               ; preds = %a.after
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %a.view.off48

a.create64:                                       ; preds = %choice.next27
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
  store ptr %a.create67, ptr %var.entries59, align 8
  br label %a.after65

a.after65:                                        ; preds = %a.create64, %choice.next27
  %a.load273 = load ptr, ptr %var.entries59, align 8
  %call.res74 = call { i1, i64 } @"json::#parse_object_loop"(ptr %var.load60, ptr %a.load273)
  br label %choice.exit25
}

define internal { i1, i64 } @"json::#parse_object_loop"(ptr %0, ptr %1) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load19 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load19, 34
  br i1 %val.match, label %choice.case21, label %choice.next22

choice.case:                                      ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

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

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load17, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead18, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %idx_ok

choice.exit20:                                    ; preds = %choice.next22, %a.after
  %choice.res36 = phi { i1, i64 } [ %call.res31, %a.after ], [ %ram.pay, %choice.next22 ]
  ret { i1, i64 } %choice.res36

choice.case21:                                    ; preds = %choice.exit
  %var.load23 = load ptr, ptr %var.sc, align 8
  %call.res24 = call { i1, i64 } @"json::#parse_string"(ptr %var.load23)
  store { i1, i64 } %call.res24, ptr %var.k, align 8
  %var.load25 = load ptr, ptr %var.sc, align 8
  %var.load26 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next22:                                    ; preds = %choice.exit
  %arena.cur32 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 56)
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
  %var.load33 = load i64, ptr %var.p, align 8
  %arena.cur34 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load33, ptr %rec.fld, align 8
  %rec.fld35 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld35, align 8
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
  br label %choice.exit20

a.create:                                         ; preds = %choice.case21
  %arena.cur27 = call ptr @dva_arena_current()
  %a.create28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 24)
  %arena.cur29 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create28, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create28, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create28, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create28, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case21
  %a.load2 = load ptr, ptr %var.entries, align 8
  %var.load30 = load { i1, i64 }, ptr %var.k, align 8
  %call.res31 = call { i1, i64 } @"json::#parse_object_after_key"(ptr %var.load25, ptr %a.load2, { i1, i64 } %var.load30)
  br label %choice.exit20
}

define internal { i1, i64 } @"json::#parse_object_after_key"(ptr %0, ptr %1, { i1, i64 } %2) #0 {
entry:
  %var.e = alloca ptr, align 8
  %var._71 = alloca ptr, align 8
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
  %ram.pay69 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr70 = inttoptr i64 %ram.pay69 to ptr
  store ptr %pay.ptr70, ptr %var._71, align 8
  store ptr %pay.ptr70, ptr %var.e, align 8
  %var.load72 = load ptr, ptr %var.e, align 8
  %p.to.i6473 = ptrtoint ptr %var.load72 to i64
  %ram.pay74 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6473, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit2
  %choice.res75 = phi { i1, i64 } [ %choice.res68, %choice.exit2 ], [ %ram.pay74, %choice.else ]
  ret { i1, i64 } %choice.res75

choice.exit2:                                     ; preds = %choice.next, %choice.exit27
  %choice.res68 = phi { i1, i64 } [ %choice.res, %choice.exit27 ], [ %ram.pay67, %choice.next ]
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.next:                                      ; preds = %choice.then
  %arena.cur48 = call ptr @dva_arena_current()
  %err.alloc49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 56)
  %err.code.gep50 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc49, i32 0, i32 0
  store i64 400, ptr %err.code.gep50, align 8
  %err.msg.gep51 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc49, i32 0, i32 1
  store ptr @str.14.struct, ptr %err.msg.gep51, align 8
  %err.file.gep52 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc49, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep52, align 8
  %err.line.gep53 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc49, i32 0, i32 3
  store i64 0, ptr %err.line.gep53, align 8
  %err.col.gep54 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc49, i32 0, i32 4
  store i64 0, ptr %err.col.gep54, align 8
  %err.ctx.gep55 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc49, i32 0, i32 5
  %arena.cur56 = call ptr @dva_arena_current()
  %rec.alloc57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld58 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc57, i32 0, i32 0
  store i64 0, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc57, i32 0, i32 1
  store i64 0, ptr %rec.fld59, align 8
  %ctx.0.gep60 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc57, i32 0, i32 0
  %ctx.061 = load i64, ptr %ctx.0.gep60, align 8
  %ctx.1.gep62 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc57, i32 0, i32 1
  %ctx.163 = load i64, ptr %ctx.1.gep62, align 8
  %err.ctx0.gep64 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep55, i32 0, i32 0
  store i64 %ctx.061, ptr %err.ctx0.gep64, align 8
  %err.ctx1.gep65 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep55, i32 0, i32 1
  store i64 %ctx.163, ptr %err.ctx1.gep65, align 8
  %p.to.i6466 = ptrtoint ptr %err.alloc49 to i64
  %ram.pay67 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6466, 1
  br label %choice.exit2

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.case
  %cmptmp = icmp slt i64 %var.load9, %str.len.query14
  br i1 %cmptmp, label %and.109.then, label %and.109.else

tag.gen_check:                                    ; preds = %choice.case
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.109.then:                                     ; preds = %str_ok
  %var.load15 = load ptr, ptr %var.sc, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64 }, ptr %var.load15, i32 0, i32 0
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %var.load21 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load21, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.109.else:                                     ; preds = %str_ok
  br label %and.109.exit

and.109.exit:                                     ; preds = %and.109.else, %idx_ok
  %and.109.phi = phi i1 [ %cmptmp23, %idx_ok ], [ %cmptmp, %and.109.else ]
  store i1 %and.109.phi, ptr %var.ok_col, align 1
  %var.load24 = load i1, ptr %var.ok_col, align 1
  br i1 %var.load24, label %choice.then25, label %choice.else26

idx_big_check:                                    ; preds = %and.109.then
  %idx.big = icmp sge i64 %var.load21, %s.read.len19
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead22, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data20, i64 %var.load21
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp23 = icmp eq i64 %s.byte.val, 58
  br label %and.109.exit

idx_oob:                                          ; preds = %idx_big_check, %and.109.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead22:                                     ; No predecessors!
  br label %idx_ok

choice.then25:                                    ; preds = %and.109.exit
  %var.load28 = load ptr, ptr %var.sc, align 8
  %var.load29 = load ptr, ptr %var.sc, align 8
  %fld.gep30 = getelementptr inbounds { ptr, i64 }, ptr %var.load29, i32 0, i32 1
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %addtmp = add i64 %fld.load31, 1
  %fld.gep32 = getelementptr inbounds { ptr, i64 }, ptr %var.load28, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep32, align 8
  %var.load33 = load ptr, ptr %var.sc, align 8
  %call.res34 = call { i1, i64 } @"json::#parse_value"(ptr %var.load33)
  store { i1, i64 } %call.res34, ptr %var.v, align 8
  %var.load35 = load ptr, ptr %var.sc, align 8
  %var.load36 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else26:                                    ; preds = %and.109.exit
  %arena.cur43 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 56)
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
  %var.load44 = load i64, ptr %var.p, align 8
  %arena.cur45 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load44, ptr %rec.fld, align 8
  %rec.fld46 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld46, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay47 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.else26, %a.after
  %choice.res = phi { i1, i64 } [ %call.res42, %a.after ], [ %ram.pay47, %choice.else26 ]
  br label %choice.exit2

a.create:                                         ; preds = %choice.then25
  %arena.cur37 = call ptr @dva_arena_current()
  %a.create38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 24)
  %arena.cur39 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create38, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create38, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create38, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create38, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then25
  %a.load2 = load ptr, ptr %var.entries, align 8
  %var.load40 = load ptr, ptr %var.s, align 8
  %var.load41 = load { i1, i64 }, ptr %var.v, align 8
  %call.res42 = call { i1, i64 } @"json::#parse_object_after_val"(ptr %var.load35, ptr %a.load2, ptr %var.load40, { i1, i64 } %var.load41)
  br label %choice.exit27
}

define internal { i1, i64 } @"json::#parse_object_after_val"(ptr %0, ptr %1, ptr %2, { i1, i64 } %3) #0 {
entry:
  %var.e2 = alloca ptr, align 8
  %var._186 = alloca ptr, align 8
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
  %ram.pay184 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr185 = inttoptr i64 %ram.pay184 to ptr
  store ptr %pay.ptr185, ptr %var._186, align 8
  store ptr %pay.ptr185, ptr %var.e2, align 8
  %var.load187 = load ptr, ptr %var.e2, align 8
  %p.to.i64188 = ptrtoint ptr %var.load187 to i64
  %ram.pay189 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64188, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit33
  %choice.res190 = phi { i1, i64 } [ %choice.res183, %choice.exit33 ], [ %ram.pay189, %choice.else ]
  ret { i1, i64 } %choice.res190

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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit17:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load32 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load32, 125
  br i1 %val.match, label %choice.case34, label %choice.next35

choice.case:                                      ; preds = %str_ok
  %var.load24 = load ptr, ptr %var.sc, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64 }, ptr %var.load24, i32 0, i32 0
  %fld.load26 = load ptr, ptr %fld.gep25, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load26, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load30, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit17

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %a.store
  %cmptmp = icmp slt i64 %var.load16, %str.len.query22
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.gen_check:                                    ; preds = %a.store
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur23 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur23, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load30, %s.read.len28
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead31, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit17

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %idx_ok

choice.exit33:                                    ; preds = %choice.next79, %choice.exit134, %a.view.off73
  %choice.res183 = phi { i1, i64 } [ %ram.pay77, %a.view.off73 ], [ %choice.res161, %choice.exit134 ], [ %ram.pay182, %choice.next79 ]
  br label %choice.exit

choice.case34:                                    ; preds = %choice.exit17
  %var.load36 = load ptr, ptr %var.sc, align 8
  %var.load37 = load ptr, ptr %var.sc, align 8
  %fld.gep38 = getelementptr inbounds { ptr, i64 }, ptr %var.load37, i32 0, i32 1
  %fld.load39 = load i64, ptr %fld.gep38, align 8
  %addtmp = add i64 %fld.load39, 1
  %fld.gep40 = getelementptr inbounds { ptr, i64 }, ptr %var.load36, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep40, align 8
  %var.load41 = load ptr, ptr %var.entries, align 8
  %a.load42 = load ptr, ptr %var.entries, align 8
  %a.null43 = icmp eq ptr %a.load42, null
  br i1 %a.null43, label %a.create44, label %a.after45

choice.next35:                                    ; preds = %choice.exit17
  %val.match80 = icmp eq i64 %var.load32, 44
  br i1 %val.match80, label %choice.case78, label %choice.next79

a.create44:                                       ; preds = %choice.case34
  %arena.cur46 = call ptr @dva_arena_current()
  %a.create47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 24)
  %arena.cur48 = call ptr @dva_arena_current()
  %a.buf49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 128)
  %a.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 0
  store i64 0, ptr %a.len.gep50, align 8
  %a.data.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 1
  store ptr %a.buf49, ptr %a.data.gep51, align 8
  %a.cap.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create47, i32 0, i32 2
  store i64 16, ptr %a.cap.gep52, align 8
  store ptr %a.create47, ptr %var.entries, align 8
  br label %a.after45

a.after45:                                        ; preds = %a.create44, %choice.case34
  %a.load253 = load ptr, ptr %var.entries, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load253, i32 0, i32 0
  %a.len.query54 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query54, ptr %var.m, align 8
  %arena.cur55 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load56 = load ptr, ptr %var.entries, align 8
  %a.load57 = load ptr, ptr %var.entries, align 8
  %a.null58 = icmp eq ptr %a.load57, null
  br i1 %a.null58, label %a.create59, label %a.after60

a.create59:                                       ; preds = %a.after45
  %arena.cur61 = call ptr @dva_arena_current()
  %a.create62 = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 24)
  %arena.cur63 = call ptr @dva_arena_current()
  %a.buf64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 128)
  %a.len.gep65 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 0
  store i64 0, ptr %a.len.gep65, align 8
  %a.data.gep66 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 1
  store ptr %a.buf64, ptr %a.data.gep66, align 8
  %a.cap.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create62, i32 0, i32 2
  store i64 16, ptr %a.cap.gep67, align 8
  store ptr %a.create62, ptr %var.entries, align 8
  br label %a.after60

a.after60:                                        ; preds = %a.create59, %a.after45
  %a.load268 = load ptr, ptr %var.entries, align 8
  %var.load69 = load i64, ptr %var.m, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load268, i32 0, i32 0
  %a.view.len70 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len70, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len70
  %final.start = select i1 %start.gt.len, i64 %a.view.len70, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load69, 0
  %rel.end = add i64 %a.view.len70, %var.load69
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load69
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len70
  %final.end = select i1 %end.gt.len, i64 %a.view.len70, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load268, i32 0, i32 1
  %a.view.data71 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off72, 0
  %ovf = extractvalue { i64, i1 } %a.view.off72, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off73

a.view.off73:                                     ; preds = %abort.dead74, %a.after60
  %a.view.data75 = getelementptr i8, ptr %a.view.data71, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur76 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data75, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay77 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit33

str_overflow_abort:                               ; preds = %a.after60
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %a.view.off73

choice.case78:                                    ; preds = %choice.next35
  %var.load81 = load ptr, ptr %var.sc, align 8
  %var.load82 = load ptr, ptr %var.sc, align 8
  %fld.gep83 = getelementptr inbounds { ptr, i64 }, ptr %var.load82, i32 0, i32 1
  %fld.load84 = load i64, ptr %fld.gep83, align 8
  %addtmp85 = add i64 %fld.load84, 1
  %fld.gep86 = getelementptr inbounds { ptr, i64 }, ptr %var.load81, i32 0, i32 1
  store i64 %addtmp85, ptr %fld.gep86, align 8
  %var.load87 = load ptr, ptr %var.sc, align 8
  %var.load88 = load ptr, ptr %var.sc, align 8
  %fld.gep89 = getelementptr inbounds { ptr, i64 }, ptr %var.load88, i32 0, i32 1
  %fld.load90 = load i64, ptr %fld.gep89, align 8
  %call.res91 = call i64 @"json::#skip_ws"(ptr %var.load87, i64 %fld.load90)
  store i64 %call.res91, ptr %var.p2, align 8
  %var.load92 = load i64, ptr %var.p2, align 8
  %var.load96 = load ptr, ptr %var.sc, align 8
  %fld.gep97 = getelementptr inbounds { ptr, i64 }, ptr %var.load96, i32 0, i32 0
  %fld.load98 = load ptr, ptr %fld.gep97, align 8
  %str.len.query99 = getelementptr inbounds { i64, ptr }, ptr %fld.load98, i32 0, i32 0
  %str.len.query100 = load i64, ptr %str.len.query99, align 8
  %str.len.query101 = and i64 %str.len.query100, 281474976710655
  %str.tag102 = lshr i64 %str.len.query100, 48
  %tag.immortal104 = icmp eq i64 %str.tag102, 0
  br i1 %tag.immortal104, label %str_ok103, label %tag.gen_check105

choice.next79:                                    ; preds = %choice.next35
  %arena.cur162 = call ptr @dva_arena_current()
  %err.alloc163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 56)
  %err.code.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc163, i32 0, i32 0
  store i64 400, ptr %err.code.gep164, align 8
  %err.msg.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc163, i32 0, i32 1
  store ptr @str.12.struct, ptr %err.msg.gep165, align 8
  %err.file.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc163, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep166, align 8
  %err.line.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc163, i32 0, i32 3
  store i64 0, ptr %err.line.gep167, align 8
  %err.col.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc163, i32 0, i32 4
  store i64 0, ptr %err.col.gep168, align 8
  %err.ctx.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc163, i32 0, i32 5
  %var.load170 = load i64, ptr %var.p, align 8
  %arena.cur171 = call ptr @dva_arena_current()
  %rec.alloc172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld173 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc172, i32 0, i32 0
  store i64 %var.load170, ptr %rec.fld173, align 8
  %rec.fld174 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc172, i32 0, i32 1
  store i64 0, ptr %rec.fld174, align 8
  %ctx.0.gep175 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc172, i32 0, i32 0
  %ctx.0176 = load i64, ptr %ctx.0.gep175, align 8
  %ctx.1.gep177 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc172, i32 0, i32 1
  %ctx.1178 = load i64, ptr %ctx.1.gep177, align 8
  %err.ctx0.gep179 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep169, i32 0, i32 0
  store i64 %ctx.0176, ptr %err.ctx0.gep179, align 8
  %err.ctx1.gep180 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep169, i32 0, i32 1
  store i64 %ctx.1178, ptr %err.ctx1.gep180, align 8
  %p.to.i64181 = ptrtoint ptr %err.alloc163 to i64
  %ram.pay182 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64181, 1
  br label %choice.exit33

choice.exit93:                                    ; preds = %choice.next95, %idx_ok125
  %choice.res132 = phi i64 [ %s.byte.val131, %idx_ok125 ], [ -1, %choice.next95 ]
  store i64 %choice.res132, ptr %var.c2, align 8
  %var.load133 = load i64, ptr %var.c2, align 8
  %val.match137 = icmp eq i64 %var.load133, 125
  br i1 %val.match137, label %choice.case135, label %choice.next136

choice.case94:                                    ; preds = %str_ok103
  %var.load114 = load ptr, ptr %var.sc, align 8
  %fld.gep115 = getelementptr inbounds { ptr, i64 }, ptr %var.load114, i32 0, i32 0
  %fld.load116 = load ptr, ptr %fld.gep115, align 8
  %s.read.len117 = getelementptr inbounds { i64, ptr }, ptr %fld.load116, i32 0, i32 0
  %s.read.len118 = load i64, ptr %s.read.len117, align 8
  %s.read.len119 = and i64 %s.read.len118, 281474976710655
  %s.read.data120 = getelementptr inbounds { i64, ptr }, ptr %fld.load116, i32 0, i32 1
  %s.read.data121 = load ptr, ptr %s.read.data120, align 8
  %var.load122 = load i64, ptr %var.p2, align 8
  %idx.neg123 = icmp slt i64 %var.load122, 0
  br i1 %idx.neg123, label %idx_oob126, label %idx_big_check124

choice.next95:                                    ; preds = %str_ok103
  br label %choice.exit93

str_ok103:                                        ; preds = %abort.dead112, %tag.slow_check106, %tag.gen_check105, %choice.case78
  %cmptmp113 = icmp slt i64 %var.load92, %str.len.query101
  br i1 %cmptmp113, label %choice.case94, label %choice.next95

tag.gen_check105:                                 ; preds = %choice.case78
  %active.gen108 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok109 = icmp eq i64 %str.tag102, %active.gen108
  br i1 %tag.fast.ok109, label %str_ok103, label %tag.slow_check106

tag.slow_check106:                                ; preds = %tag.gen_check105
  %arena.cur110 = call ptr @dva_arena_current()
  %tag.valid111 = call i1 @dva_arena_validate_tag(ptr %arena.cur110, i64 %str.tag102)
  br i1 %tag.valid111, label %str_ok103, label %tag.stale107

tag.stale107:                                     ; preds = %tag.slow_check106
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead112:                                    ; No predecessors!
  br label %str_ok103

idx_big_check124:                                 ; preds = %choice.case94
  %idx.big127 = icmp sge i64 %var.load122, %s.read.len119
  br i1 %idx.big127, label %idx_oob126, label %idx_ok125

idx_ok125:                                        ; preds = %abort.dead128, %idx_big_check124
  %s.byte.gep129 = getelementptr i8, ptr %s.read.data121, i64 %var.load122
  %s.byte130 = load i8, ptr %s.byte.gep129, align 1
  %s.byte.val131 = zext i8 %s.byte130 to i64
  br label %choice.exit93

idx_oob126:                                       ; preds = %idx_big_check124, %choice.case94
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %idx_ok125

choice.exit134:                                   ; preds = %a.after151, %choice.case135
  %choice.res161 = phi { i1, i64 } [ %ram.pay145, %choice.case135 ], [ %call.res160, %a.after151 ]
  br label %choice.exit33

choice.case135:                                   ; preds = %choice.exit93
  %arena.cur138 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 56)
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
  %var.load139 = load i64, ptr %var.p2, align 8
  %arena.cur140 = call ptr @dva_arena_current()
  %rec.alloc141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld142 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc141, i32 0, i32 0
  store i64 %var.load139, ptr %rec.fld142, align 8
  %rec.fld143 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc141, i32 0, i32 1
  store i64 0, ptr %rec.fld143, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc141, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc141, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64144 = ptrtoint ptr %err.alloc to i64
  %ram.pay145 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64144, 1
  br label %choice.exit134

choice.next136:                                   ; preds = %choice.exit93
  %var.load146 = load ptr, ptr %var.sc, align 8
  %var.load147 = load ptr, ptr %var.entries, align 8
  %a.load148 = load ptr, ptr %var.entries, align 8
  %a.null149 = icmp eq ptr %a.load148, null
  br i1 %a.null149, label %a.create150, label %a.after151

a.create150:                                      ; preds = %choice.next136
  %arena.cur152 = call ptr @dva_arena_current()
  %a.create153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 24)
  %arena.cur154 = call ptr @dva_arena_current()
  %a.buf155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 128)
  %a.len.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create153, i32 0, i32 0
  store i64 0, ptr %a.len.gep156, align 8
  %a.data.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create153, i32 0, i32 1
  store ptr %a.buf155, ptr %a.data.gep157, align 8
  %a.cap.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create153, i32 0, i32 2
  store i64 16, ptr %a.cap.gep158, align 8
  store ptr %a.create153, ptr %var.entries, align 8
  br label %a.after151

a.after151:                                       ; preds = %a.create150, %choice.next136
  %a.load2159 = load ptr, ptr %var.entries, align 8
  %call.res160 = call { i1, i64 } @"json::#parse_object_loop"(ptr %var.load146, ptr %a.load2159)
  br label %choice.exit134
}

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

define internal { i1, i64 } @"json::#parse_lit"(ptr %0, i1 %1, i64 %2) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit
  %cmptmp = icmp sle i64 %addtmp, %str.len.query12
  br i1 %cmptmp, label %and.110.then, label %and.110.else

tag.gen_check:                                    ; preds = %choice.exit
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

and.110.then:                                     ; preds = %str_ok
  %var.load13 = load ptr, ptr %var.sc, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64 }, ptr %var.load13, i32 0, i32 0
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %s.chk.len16 = load i64, ptr %s.chk.len, align 8
  %s.chk.len17 = and i64 %s.chk.len16, 281474976710655
  %str.tag18 = lshr i64 %s.chk.len16, 48
  %tag.immortal20 = icmp eq i64 %str.tag18, 0
  br i1 %tag.immortal20, label %str_ok19, label %tag.gen_check21

and.110.else:                                     ; preds = %str_ok
  br label %and.110.exit

and.110.exit:                                     ; preds = %and.110.else, %str.eq.merge
  %and.110.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.110.else ]
  store i1 %and.110.phi, ptr %var.ok, align 1
  %var.load52 = load i1, ptr %var.ok, align 1
  br i1 %var.load52, label %choice.then53, label %choice.else54

str_ok19:                                         ; preds = %abort.dead28, %tag.slow_check22, %tag.gen_check21, %and.110.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data, align 8
  %var.load32 = load i64, ptr %var.p, align 8
  %var.load33 = load i64, ptr %var.p, align 8
  %var.load34 = load i64, ptr %var.len, align 8
  %addtmp35 = add i64 %var.load33, %var.load34
  %start.is_neg = icmp slt i64 %var.load32, 0
  %rel.start = add i64 %s.read.len30, %var.load32
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load32
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len30
  %final.start = select i1 %start.gt.len, i64 %s.read.len30, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp35, 0
  %rel.end = add i64 %s.read.len30, %addtmp35
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp35
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len30
  %final.end = select i1 %end.gt.len, i64 %s.read.len30, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data31, i64 %final.start
  %var.load36 = load ptr, ptr %var.word, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %cmp.str37 = load i64, ptr %cmp.str, align 8
  %cmp.str38 = and i64 %cmp.str37, 281474976710655
  %str.tag39 = lshr i64 %cmp.str37, 48
  %tag.immortal41 = icmp eq i64 %str.tag39, 0
  br i1 %tag.immortal41, label %str_ok40, label %tag.gen_check42

tag.gen_check21:                                  ; preds = %and.110.then
  %active.gen24 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok25 = icmp eq i64 %str.tag18, %active.gen24
  br i1 %tag.fast.ok25, label %str_ok19, label %tag.slow_check22

tag.slow_check22:                                 ; preds = %tag.gen_check21
  %arena.cur26 = call ptr @dva_arena_current()
  %tag.valid27 = call i1 @dva_arena_validate_tag(ptr %arena.cur26, i64 %str.tag18)
  br i1 %tag.valid27, label %str_ok19, label %tag.stale23

tag.stale23:                                      ; preds = %tag.slow_check22
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %str_ok19

str_ok40:                                         ; preds = %abort.dead49, %tag.slow_check43, %tag.gen_check42, %str_ok19
  %cmp.str50 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %cmp.str51 = load ptr, ptr %cmp.str50, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str38
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check42:                                  ; preds = %str_ok19
  %active.gen45 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok46 = icmp eq i64 %str.tag39, %active.gen45
  br i1 %tag.fast.ok46, label %str_ok40, label %tag.slow_check43

tag.slow_check43:                                 ; preds = %tag.gen_check42
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %str.tag39)
  br i1 %tag.valid48, label %str_ok40, label %tag.stale44

tag.stale44:                                      ; preds = %tag.slow_check43
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %str_ok40

str.eq.then:                                      ; preds = %str_ok40
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str51, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok40
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.110.exit

choice.then53:                                    ; preds = %and.110.exit
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

choice.else54:                                    ; preds = %and.110.exit
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

declare i32 @memcmp(ptr, ptr, i64) #0

define internal { i1, i64 } @"json::#parse_null"(ptr %0) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sle i64 %addtmp, %str.len.query10
  br i1 %cmptmp, label %and.111.then, label %and.111.else

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

and.111.then:                                     ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.chk.len14 = load i64, ptr %s.chk.len, align 8
  %s.chk.len15 = and i64 %s.chk.len14, 281474976710655
  %str.tag16 = lshr i64 %s.chk.len14, 48
  %tag.immortal18 = icmp eq i64 %str.tag16, 0
  br i1 %tag.immortal18, label %str_ok17, label %tag.gen_check19

and.111.else:                                     ; preds = %str_ok
  br label %and.111.exit

and.111.exit:                                     ; preds = %and.111.else, %str.eq.merge
  %and.111.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.111.else ]
  store i1 %and.111.phi, ptr %var.ok, align 1
  %var.load35 = load i1, ptr %var.ok, align 1
  br i1 %var.load35, label %choice.then, label %choice.else

str_ok17:                                         ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %and.111.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load i64, ptr %var.p, align 8
  %var.load31 = load i64, ptr %var.p, align 8
  %addtmp32 = add i64 %var.load31, 4
  %start.is_neg = icmp slt i64 %var.load30, 0
  %rel.start = add i64 %s.read.len28, %var.load30
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load30
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len28
  %final.start = select i1 %start.gt.len, i64 %s.read.len28, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp32, 0
  %rel.end = add i64 %s.read.len28, %addtmp32
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp32
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len28
  %final.end = select i1 %end.gt.len, i64 %s.read.len28, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data29, i64 %final.start
  %cmp.str = load i64, ptr @str.17.struct, align 8
  %cmp.str33 = and i64 %cmp.str, 281474976710655
  %cmp.str34 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str33
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check19:                                  ; preds = %and.111.then
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %str.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %str_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag16)
  br i1 %tag.valid25, label %str_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %str_ok17

str.eq.then:                                      ; preds = %str_ok17
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str34, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok17
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.111.exit

choice.then:                                      ; preds = %and.111.exit
  %var.load36 = load ptr, ptr %var.sc, align 8
  %var.load37 = load i64, ptr %var.p, align 8
  %addtmp38 = add i64 %var.load37, 4
  %fld.gep39 = getelementptr inbounds { ptr, i64 }, ptr %var.load36, i32 0, i32 1
  store i64 %addtmp38, ptr %fld.gep39, align 8
  %arena.cur40 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %and.111.exit
  %arena.cur41 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 56)
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
  %var.load42 = load i64, ptr %var.p, align 8
  %arena.cur43 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load42, ptr %rec.fld, align 8
  %rec.fld44 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld44, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6445 = ptrtoint ptr %err.alloc to i64
  %ram.pay46 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6445, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %ram.pay46, %choice.else ]
  ret { i1, i64 } %choice.res
}

define internal { i1, i64 } @"json::#parse_number"(ptr %0) #0 {
entry:
  %var.f = alloca double, align 8
  %var.valid = alloca i1, align 1
  %var._486 = alloca i64, align 8
  %var._i485 = alloca i64, align 8
  %loop.step.126 = alloca i64, align 8
  %loop.idx.126 = alloca i64, align 8
  %var.abs_e = alloca i64, align 8
  %var.eclamp = alloca i64, align 8
  %var.exp_val = alloca i64, align 8
  %var.ed = alloca i64, align 8
  %var.ec = alloca i64, align 8
  %var._385 = alloca i64, align 8
  %var._i384 = alloca i64, align 8
  %loop.step.124 = alloca i64, align 8
  %loop.idx.124 = alloca i64, align 8
  %"var.had_exp_digits'" = alloca i1, align 1
  %"var.over_exp'" = alloca i1, align 1
  %"var.ev'" = alloca i64, align 8
  %var.plus = alloca i1, align 1
  %var.e0 = alloca i64, align 8
  %"var.eneg'" = alloca i1, align 1
  %"var.p3'" = alloca i64, align 8
  %"var.had_exp'" = alloca i1, align 1
  %var.has_exp = alloca i1, align 1
  %var.d251 = alloca i64, align 8
  %var.c238 = alloca i64, align 8
  %var._209 = alloca i64, align 8
  %var._i208 = alloca i64, align 8
  %loop.step.120 = alloca i64, align 8
  %loop.idx.120 = alloca i64, align 8
  %"var.had_frac'" = alloca i1, align 1
  %var.has_dot = alloca i1, align 1
  %var.d = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.116 = alloca i64, align 8
  %loop.idx.116 = alloca i64, align 8
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c0, align 8
  %var.load19 = load i64, ptr %var.c0, align 8
  %cmptmp23 = icmp sge i64 %var.load19, 48
  br i1 %cmptmp23, label %and.112.then, label %and.112.else

choice.case:                                      ; preds = %str_ok
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %"var.p'", align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

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

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load17, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead18, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %idx_ok

choice.exit20:                                    ; preds = %choice.next22, %choice.case21
  %choice.res25 = phi i1 [ true, %choice.case21 ], [ false, %choice.next22 ]
  store i1 %choice.res25, ptr %var.is_num_start, align 1
  %var.load26 = load i1, ptr %var.is_num_start, align 1
  br i1 %var.load26, label %choice.then, label %choice.else

choice.case21:                                    ; preds = %and.112.exit
  br label %choice.exit20

choice.next22:                                    ; preds = %and.112.exit
  br label %choice.exit20

and.112.then:                                     ; preds = %choice.exit
  %cmptmp24 = icmp sle i64 %var.load19, 57
  br label %and.112.exit

and.112.else:                                     ; preds = %choice.exit
  br label %and.112.exit

and.112.exit:                                     ; preds = %and.112.else, %and.112.then
  %and.112.phi = phi i1 [ %cmptmp24, %and.112.then ], [ %cmptmp23, %and.112.else ]
  %val.match = icmp eq i64 %var.load19, 45
  %case.or = or i1 %and.112.phi, %val.match
  br i1 %case.or, label %choice.case21, label %choice.next22

choice.then:                                      ; preds = %choice.exit20
  store i1 false, ptr %"var.neg'", align 1
  %var.load28 = load i64, ptr %var.c0, align 8
  %val.match32 = icmp eq i64 %var.load28, 45
  br i1 %val.match32, label %choice.case30, label %choice.next31

choice.else:                                      ; preds = %choice.exit20
  %arena.cur546 = call ptr @dva_arena_current()
  %err.alloc547 = call ptr @dva_arena_alloc(ptr %arena.cur546, i64 56)
  %err.code.gep548 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 0
  store i64 400, ptr %err.code.gep548, align 8
  %err.msg.gep549 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 1
  store ptr @str.21.struct, ptr %err.msg.gep549, align 8
  %err.file.gep550 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep550, align 8
  %err.line.gep551 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 3
  store i64 0, ptr %err.line.gep551, align 8
  %err.col.gep552 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 4
  store i64 0, ptr %err.col.gep552, align 8
  %err.ctx.gep553 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc547, i32 0, i32 5
  %var.load554 = load i64, ptr %"var.p'", align 8
  %arena.cur555 = call ptr @dva_arena_current()
  %rec.alloc556 = call ptr @dva_arena_alloc(ptr %arena.cur555, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld557 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc556, i32 0, i32 0
  store i64 %var.load554, ptr %rec.fld557, align 8
  %rec.fld558 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc556, i32 0, i32 1
  store i64 0, ptr %rec.fld558, align 8
  %ctx.0.gep559 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc556, i32 0, i32 0
  %ctx.0560 = load i64, ptr %ctx.0.gep559, align 8
  %ctx.1.gep561 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc556, i32 0, i32 1
  %ctx.1562 = load i64, ptr %ctx.1.gep561, align 8
  %err.ctx0.gep563 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep553, i32 0, i32 0
  store i64 %ctx.0560, ptr %err.ctx0.gep563, align 8
  %err.ctx1.gep564 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep553, i32 0, i32 1
  store i64 %ctx.1562, ptr %err.ctx1.gep564, align 8
  %p.to.i64565 = ptrtoint ptr %err.alloc547 to i64
  %ram.pay566 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64565, 1
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.else, %choice.exit99
  %choice.res567 = phi { i1, i64 } [ %choice.res545, %choice.exit99 ], [ %ram.pay566, %choice.else ]
  ret { i1, i64 } %choice.res567

choice.exit29:                                    ; preds = %choice.next31, %choice.case30
  %var.load34 = load i64, ptr %"var.p'", align 8
  %var.load35 = load ptr, ptr %var.sc, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64 }, ptr %var.load35, i32 0, i32 0
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %str.len.query38 = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 0
  %str.len.query39 = load i64, ptr %str.len.query38, align 8
  %str.len.query40 = and i64 %str.len.query39, 281474976710655
  %str.tag41 = lshr i64 %str.len.query39, 48
  %tag.immortal43 = icmp eq i64 %str.tag41, 0
  br i1 %tag.immortal43, label %str_ok42, label %tag.gen_check44

choice.case30:                                    ; preds = %choice.then
  store i1 true, ptr %"var.neg'", align 1
  %var.load33 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load33, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit29

choice.next31:                                    ; preds = %choice.then
  br label %choice.exit29

str_ok42:                                         ; preds = %abort.dead51, %tag.slow_check45, %tag.gen_check44, %choice.exit29
  %cmptmp52 = icmp slt i64 %var.load34, %str.len.query40
  br i1 %cmptmp52, label %and.113.then, label %and.113.else

tag.gen_check44:                                  ; preds = %choice.exit29
  %active.gen47 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok48 = icmp eq i64 %str.tag41, %active.gen47
  br i1 %tag.fast.ok48, label %str_ok42, label %tag.slow_check45

tag.slow_check45:                                 ; preds = %tag.gen_check44
  %arena.cur49 = call ptr @dva_arena_current()
  %tag.valid50 = call i1 @dva_arena_validate_tag(ptr %arena.cur49, i64 %str.tag41)
  br i1 %tag.valid50, label %str_ok42, label %tag.stale46

tag.stale46:                                      ; preds = %tag.slow_check45
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead51:                                     ; No predecessors!
  br label %str_ok42

and.113.then:                                     ; preds = %str_ok42
  %var.load53 = load ptr, ptr %var.sc, align 8
  %fld.gep54 = getelementptr inbounds { ptr, i64 }, ptr %var.load53, i32 0, i32 0
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %s.read.len56 = getelementptr inbounds { i64, ptr }, ptr %fld.load55, i32 0, i32 0
  %s.read.len57 = load i64, ptr %s.read.len56, align 8
  %s.read.len58 = and i64 %s.read.len57, 281474976710655
  %s.read.data59 = getelementptr inbounds { i64, ptr }, ptr %fld.load55, i32 0, i32 1
  %s.read.data60 = load ptr, ptr %s.read.data59, align 8
  %var.load61 = load i64, ptr %"var.p'", align 8
  %idx.neg62 = icmp slt i64 %var.load61, 0
  br i1 %idx.neg62, label %idx_oob65, label %idx_big_check63

and.113.else:                                     ; preds = %str_ok42
  br label %and.113.exit

and.113.exit:                                     ; preds = %and.113.else, %idx_ok64
  %and.113.phi = phi i1 [ %cmptmp71, %idx_ok64 ], [ %cmptmp52, %and.113.else ]
  br i1 %and.113.phi, label %and.114.then, label %and.114.else

idx_big_check63:                                  ; preds = %and.113.then
  %idx.big66 = icmp sge i64 %var.load61, %s.read.len58
  br i1 %idx.big66, label %idx_oob65, label %idx_ok64

idx_ok64:                                         ; preds = %abort.dead67, %idx_big_check63
  %s.byte.gep68 = getelementptr i8, ptr %s.read.data60, i64 %var.load61
  %s.byte69 = load i8, ptr %s.byte.gep68, align 1
  %s.byte.val70 = zext i8 %s.byte69 to i64
  %cmptmp71 = icmp eq i64 %s.byte.val70, 48
  br label %and.113.exit

idx_oob65:                                        ; preds = %idx_big_check63, %and.113.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %idx_ok64

and.114.then:                                     ; preds = %and.113.exit
  %var.load72 = load i64, ptr %"var.p'", align 8
  %addtmp73 = add i64 %var.load72, 1
  %var.load74 = load ptr, ptr %var.sc, align 8
  %fld.gep75 = getelementptr inbounds { ptr, i64 }, ptr %var.load74, i32 0, i32 0
  %fld.load76 = load ptr, ptr %fld.gep75, align 8
  %str.len.query77 = getelementptr inbounds { i64, ptr }, ptr %fld.load76, i32 0, i32 0
  %str.len.query78 = load i64, ptr %str.len.query77, align 8
  %str.len.query79 = and i64 %str.len.query78, 281474976710655
  %str.tag80 = lshr i64 %str.len.query78, 48
  %tag.immortal82 = icmp eq i64 %str.tag80, 0
  br i1 %tag.immortal82, label %str_ok81, label %tag.gen_check83

and.114.else:                                     ; preds = %and.113.exit
  br label %and.114.exit

and.114.exit:                                     ; preds = %and.114.else, %str_ok81
  %and.114.phi = phi i1 [ %cmptmp91, %str_ok81 ], [ %and.113.phi, %and.114.else ]
  br i1 %and.114.phi, label %and.115.then, label %and.115.else

str_ok81:                                         ; preds = %abort.dead90, %tag.slow_check84, %tag.gen_check83, %and.114.then
  %cmptmp91 = icmp slt i64 %addtmp73, %str.len.query79
  br label %and.114.exit

tag.gen_check83:                                  ; preds = %and.114.then
  %active.gen86 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok87 = icmp eq i64 %str.tag80, %active.gen86
  br i1 %tag.fast.ok87, label %str_ok81, label %tag.slow_check84

tag.slow_check84:                                 ; preds = %tag.gen_check83
  %arena.cur88 = call ptr @dva_arena_current()
  %tag.valid89 = call i1 @dva_arena_validate_tag(ptr %arena.cur88, i64 %str.tag80)
  br i1 %tag.valid89, label %str_ok81, label %tag.stale85

tag.stale85:                                      ; preds = %tag.slow_check84
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead90:                                     ; No predecessors!
  br label %str_ok81

and.115.then:                                     ; preds = %and.114.exit
  %var.load92 = load ptr, ptr %var.sc, align 8
  %var.load93 = load i64, ptr %"var.p'", align 8
  %addtmp94 = add i64 %var.load93, 1
  %call.res95 = call i1 @"json::#is_digit_at"(ptr %var.load92, i64 %addtmp94)
  br label %and.115.exit

and.115.else:                                     ; preds = %and.114.exit
  br label %and.115.exit

and.115.exit:                                     ; preds = %and.115.else, %and.115.then
  %and.115.phi = phi i1 [ %call.res95, %and.115.then ], [ %and.114.phi, %and.115.else ]
  store i1 %and.115.phi, ptr %var.has_leading_zero, align 1
  %var.load96 = load i1, ptr %var.has_leading_zero, align 1
  br i1 %var.load96, label %choice.then97, label %choice.else98

choice.then97:                                    ; preds = %and.115.exit
  %arena.cur100 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 56)
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
  %var.load101 = load i64, ptr %"var.p'", align 8
  %arena.cur102 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load101, ptr %rec.fld, align 8
  %rec.fld103 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld103, align 8
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
  br label %choice.exit99

choice.else98:                                    ; preds = %and.115.exit
  %var.load104 = load i64, ptr %"var.p'", align 8
  store i64 %var.load104, ptr %"var.p2'", align 8
  store i1 false, ptr %"var.had_int'", align 1
  store i64 0, ptr %"var.sig_digits'", align 8
  store double 0.000000e+00, ptr %"var.fv'", align 8
  store i64 0, ptr %"var.exp10'", align 8
  store i64 0, ptr %loop.idx.116, align 8
  br label %loop.header.116

choice.exit99:                                    ; preds = %choice.exit507, %choice.then97
  %choice.res545 = phi { i1, i64 } [ %ram.pay, %choice.then97 ], [ %choice.res544, %choice.exit507 ]
  br label %choice.exit27

loop.header.116:                                  ; preds = %loop.latch.116, %choice.else98
  %counter.load = load i64, ptr %loop.idx.116, align 8
  br label %loop.body.116

loop.body.116:                                    ; preds = %loop.header.116
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.116, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load105 = load i64, ptr %"var.p2'", align 8
  %var.load106 = load ptr, ptr %var.sc, align 8
  %fld.gep107 = getelementptr inbounds { ptr, i64 }, ptr %var.load106, i32 0, i32 0
  %fld.load108 = load ptr, ptr %fld.gep107, align 8
  %str.len.query109 = getelementptr inbounds { i64, ptr }, ptr %fld.load108, i32 0, i32 0
  %str.len.query110 = load i64, ptr %str.len.query109, align 8
  %str.len.query111 = and i64 %str.len.query110, 281474976710655
  %cmptmp112 = icmp sge i64 %var.load105, %str.len.query111
  br i1 %cmptmp112, label %choice.then113, label %choice.exit114

loop.exit.nat.116:                                ; No predecessors!
  br label %loop.exit.116

loop.latch.116:                                   ; preds = %choice.exit142
  %step.val = load i64, ptr %loop.step.116, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.116, align 8
  br label %loop.header.116

loop.exit.116:                                    ; preds = %choice.else141, %choice.then113, %loop.exit.nat.116
  %var.load163 = load i64, ptr %"var.p2'", align 8
  %var.load164 = load ptr, ptr %var.sc, align 8
  %fld.gep165 = getelementptr inbounds { ptr, i64 }, ptr %var.load164, i32 0, i32 0
  %fld.load166 = load ptr, ptr %fld.gep165, align 8
  %str.len.query167 = getelementptr inbounds { i64, ptr }, ptr %fld.load166, i32 0, i32 0
  %str.len.query168 = load i64, ptr %str.len.query167, align 8
  %str.len.query169 = and i64 %str.len.query168, 281474976710655
  %str.tag170 = lshr i64 %str.len.query168, 48
  %tag.immortal172 = icmp eq i64 %str.tag170, 0
  br i1 %tag.immortal172, label %str_ok171, label %tag.gen_check173

choice.then113:                                   ; preds = %loop.body.116
  br label %loop.exit.116

choice.exit114:                                   ; preds = %loop.body.116
  %var.load115 = load ptr, ptr %var.sc, align 8
  %fld.gep116 = getelementptr inbounds { ptr, i64 }, ptr %var.load115, i32 0, i32 0
  %fld.load117 = load ptr, ptr %fld.gep116, align 8
  %s.read.len118 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 0
  %s.read.len119 = load i64, ptr %s.read.len118, align 8
  %s.read.len120 = and i64 %s.read.len119, 281474976710655
  %s.read.data121 = getelementptr inbounds { i64, ptr }, ptr %fld.load117, i32 0, i32 1
  %s.read.data122 = load ptr, ptr %s.read.data121, align 8
  %var.load123 = load i64, ptr %"var.p2'", align 8
  %idx.neg124 = icmp slt i64 %var.load123, 0
  br i1 %idx.neg124, label %idx_oob127, label %idx_big_check125

idx_big_check125:                                 ; preds = %choice.exit114
  %idx.big128 = icmp sge i64 %var.load123, %s.read.len120
  br i1 %idx.big128, label %idx_oob127, label %idx_ok126

idx_ok126:                                        ; preds = %abort.dead129, %idx_big_check125
  %s.byte.gep130 = getelementptr i8, ptr %s.read.data122, i64 %var.load123
  %s.byte131 = load i8, ptr %s.byte.gep130, align 1
  %s.byte.val132 = zext i8 %s.byte131 to i64
  store i64 %s.byte.val132, ptr %var.c, align 8
  %var.load133 = load i64, ptr %var.c, align 8
  %cmptmp137 = icmp sge i64 %var.load133, 48
  br i1 %cmptmp137, label %and.117.then, label %and.117.else

idx_oob127:                                       ; preds = %idx_big_check125, %choice.exit114
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead129:                                    ; No predecessors!
  br label %idx_ok126

choice.exit134:                                   ; preds = %choice.next136, %choice.case135
  %choice.res139 = phi i1 [ true, %choice.case135 ], [ false, %choice.next136 ]
  br i1 %choice.res139, label %choice.then140, label %choice.else141

choice.case135:                                   ; preds = %and.117.exit
  br label %choice.exit134

choice.next136:                                   ; preds = %and.117.exit
  br label %choice.exit134

and.117.then:                                     ; preds = %idx_ok126
  %cmptmp138 = icmp sle i64 %var.load133, 57
  br label %and.117.exit

and.117.else:                                     ; preds = %idx_ok126
  br label %and.117.exit

and.117.exit:                                     ; preds = %and.117.else, %and.117.then
  %and.117.phi = phi i1 [ %cmptmp138, %and.117.then ], [ %cmptmp137, %and.117.else ]
  br i1 %and.117.phi, label %choice.case135, label %choice.next136

choice.then140:                                   ; preds = %choice.exit134
  store i1 true, ptr %"var.had_int'", align 1
  %var.load143 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load143, 48
  store i64 %subtmp, ptr %var.d, align 8
  %var.load144 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp145 = icmp sgt i64 %var.load144, 0
  br i1 %cmptmp145, label %or.118.then, label %or.118.else

choice.else141:                                   ; preds = %choice.exit134
  br label %loop.exit.116

choice.exit142:                                   ; preds = %choice.exit149
  br label %loop.latch.116

or.118.then:                                      ; preds = %choice.then140
  br label %or.118.exit

or.118.else:                                      ; preds = %choice.then140
  %var.load146 = load i64, ptr %var.d, align 8
  %cmptmp147 = icmp ne i64 %var.load146, 0
  br label %or.118.exit

or.118.exit:                                      ; preds = %or.118.else, %or.118.then
  %or.118.phi = phi i1 [ %cmptmp145, %or.118.then ], [ %cmptmp147, %or.118.else ]
  br i1 %or.118.phi, label %choice.then148, label %choice.exit149

choice.then148:                                   ; preds = %or.118.exit
  %var.load150 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp151 = icmp slt i64 %var.load150, 17
  br i1 %cmptmp151, label %choice.then152, label %choice.else153

choice.exit149:                                   ; preds = %choice.exit154, %or.118.exit
  %var.load161 = load i64, ptr %"var.p2'", align 8
  %addtmp162 = add i64 %var.load161, 1
  store i64 %addtmp162, ptr %"var.p2'", align 8
  br label %choice.exit142

choice.then152:                                   ; preds = %choice.then148
  %var.load155 = load double, ptr %"var.fv'", align 8
  %fmultmp = fmul double %var.load155, 1.000000e+01
  %var.load156 = load i64, ptr %var.d, align 8
  %cast.sitofp = sitofp i64 %var.load156 to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.fv'", align 8
  %var.load157 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp158 = add i64 %var.load157, 1
  store i64 %addtmp158, ptr %"var.sig_digits'", align 8
  br label %choice.exit154

choice.else153:                                   ; preds = %choice.then148
  %var.load159 = load i64, ptr %"var.exp10'", align 8
  %addtmp160 = add i64 %var.load159, 1
  store i64 %addtmp160, ptr %"var.exp10'", align 8
  br label %choice.exit154

choice.exit154:                                   ; preds = %choice.else153, %choice.then152
  br label %choice.exit149

str_ok171:                                        ; preds = %abort.dead180, %tag.slow_check174, %tag.gen_check173, %loop.exit.116
  %cmptmp181 = icmp slt i64 %var.load163, %str.len.query169
  br i1 %cmptmp181, label %and.119.then, label %and.119.else

tag.gen_check173:                                 ; preds = %loop.exit.116
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

and.119.then:                                     ; preds = %str_ok171
  %var.load182 = load ptr, ptr %var.sc, align 8
  %fld.gep183 = getelementptr inbounds { ptr, i64 }, ptr %var.load182, i32 0, i32 0
  %fld.load184 = load ptr, ptr %fld.gep183, align 8
  %s.read.len185 = getelementptr inbounds { i64, ptr }, ptr %fld.load184, i32 0, i32 0
  %s.read.len186 = load i64, ptr %s.read.len185, align 8
  %s.read.len187 = and i64 %s.read.len186, 281474976710655
  %s.read.data188 = getelementptr inbounds { i64, ptr }, ptr %fld.load184, i32 0, i32 1
  %s.read.data189 = load ptr, ptr %s.read.data188, align 8
  %var.load190 = load i64, ptr %"var.p2'", align 8
  %idx.neg191 = icmp slt i64 %var.load190, 0
  br i1 %idx.neg191, label %idx_oob194, label %idx_big_check192

and.119.else:                                     ; preds = %str_ok171
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %idx_ok193
  %and.119.phi = phi i1 [ %cmptmp200, %idx_ok193 ], [ %cmptmp181, %and.119.else ]
  store i1 %and.119.phi, ptr %var.has_dot, align 1
  store i1 false, ptr %"var.had_frac'", align 1
  %var.load201 = load i1, ptr %var.has_dot, align 1
  br i1 %var.load201, label %choice.then202, label %choice.exit203

idx_big_check192:                                 ; preds = %and.119.then
  %idx.big195 = icmp sge i64 %var.load190, %s.read.len187
  br i1 %idx.big195, label %idx_oob194, label %idx_ok193

idx_ok193:                                        ; preds = %abort.dead196, %idx_big_check192
  %s.byte.gep197 = getelementptr i8, ptr %s.read.data189, i64 %var.load190
  %s.byte198 = load i8, ptr %s.byte.gep197, align 1
  %s.byte.val199 = zext i8 %s.byte198 to i64
  %cmptmp200 = icmp eq i64 %s.byte.val199, 46
  br label %and.119.exit

idx_oob194:                                       ; preds = %idx_big_check192, %and.119.then
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead196:                                    ; No predecessors!
  br label %idx_ok193

choice.then202:                                   ; preds = %and.119.exit
  %var.load204 = load i64, ptr %"var.p2'", align 8
  %addtmp205 = add i64 %var.load204, 1
  store i64 %addtmp205, ptr %"var.p2'", align 8
  store i64 0, ptr %loop.idx.120, align 8
  br label %loop.header.120

choice.exit203:                                   ; preds = %loop.exit.120, %and.119.exit
  %var.load278 = load i64, ptr %"var.p2'", align 8
  %var.load279 = load ptr, ptr %var.sc, align 8
  %fld.gep280 = getelementptr inbounds { ptr, i64 }, ptr %var.load279, i32 0, i32 0
  %fld.load281 = load ptr, ptr %fld.gep280, align 8
  %str.len.query282 = getelementptr inbounds { i64, ptr }, ptr %fld.load281, i32 0, i32 0
  %str.len.query283 = load i64, ptr %str.len.query282, align 8
  %str.len.query284 = and i64 %str.len.query283, 281474976710655
  %str.tag285 = lshr i64 %str.len.query283, 48
  %tag.immortal287 = icmp eq i64 %str.tag285, 0
  br i1 %tag.immortal287, label %str_ok286, label %tag.gen_check288

loop.header.120:                                  ; preds = %loop.latch.120, %choice.then202
  %counter.load206 = load i64, ptr %loop.idx.120, align 8
  br label %loop.body.120

loop.body.120:                                    ; preds = %loop.header.120
  %loop.rel.i207 = sub i64 %counter.load206, 0
  store i64 1, ptr %loop.step.120, align 8
  store i64 %loop.rel.i207, ptr %var._i208, align 8
  store i64 %counter.load206, ptr %var._209, align 8
  %var.load210 = load i64, ptr %"var.p2'", align 8
  %var.load211 = load ptr, ptr %var.sc, align 8
  %fld.gep212 = getelementptr inbounds { ptr, i64 }, ptr %var.load211, i32 0, i32 0
  %fld.load213 = load ptr, ptr %fld.gep212, align 8
  %str.len.query214 = getelementptr inbounds { i64, ptr }, ptr %fld.load213, i32 0, i32 0
  %str.len.query215 = load i64, ptr %str.len.query214, align 8
  %str.len.query216 = and i64 %str.len.query215, 281474976710655
  %cmptmp217 = icmp sge i64 %var.load210, %str.len.query216
  br i1 %cmptmp217, label %choice.then218, label %choice.exit219

loop.exit.nat.120:                                ; No predecessors!
  br label %loop.exit.120

loop.latch.120:                                   ; preds = %choice.exit248
  %step.val276 = load i64, ptr %loop.step.120, align 8
  %loop.next277 = add i64 %counter.load206, %step.val276
  store i64 %loop.next277, ptr %loop.idx.120, align 8
  br label %loop.header.120

loop.exit.120:                                    ; preds = %choice.else247, %choice.then218, %loop.exit.nat.120
  br label %choice.exit203

choice.then218:                                   ; preds = %loop.body.120
  br label %loop.exit.120

choice.exit219:                                   ; preds = %loop.body.120
  %var.load220 = load ptr, ptr %var.sc, align 8
  %fld.gep221 = getelementptr inbounds { ptr, i64 }, ptr %var.load220, i32 0, i32 0
  %fld.load222 = load ptr, ptr %fld.gep221, align 8
  %s.read.len223 = getelementptr inbounds { i64, ptr }, ptr %fld.load222, i32 0, i32 0
  %s.read.len224 = load i64, ptr %s.read.len223, align 8
  %s.read.len225 = and i64 %s.read.len224, 281474976710655
  %s.read.data226 = getelementptr inbounds { i64, ptr }, ptr %fld.load222, i32 0, i32 1
  %s.read.data227 = load ptr, ptr %s.read.data226, align 8
  %var.load228 = load i64, ptr %"var.p2'", align 8
  %idx.neg229 = icmp slt i64 %var.load228, 0
  br i1 %idx.neg229, label %idx_oob232, label %idx_big_check230

idx_big_check230:                                 ; preds = %choice.exit219
  %idx.big233 = icmp sge i64 %var.load228, %s.read.len225
  br i1 %idx.big233, label %idx_oob232, label %idx_ok231

idx_ok231:                                        ; preds = %abort.dead234, %idx_big_check230
  %s.byte.gep235 = getelementptr i8, ptr %s.read.data227, i64 %var.load228
  %s.byte236 = load i8, ptr %s.byte.gep235, align 1
  %s.byte.val237 = zext i8 %s.byte236 to i64
  store i64 %s.byte.val237, ptr %var.c238, align 8
  %var.load239 = load i64, ptr %var.c238, align 8
  %cmptmp243 = icmp sge i64 %var.load239, 48
  br i1 %cmptmp243, label %and.121.then, label %and.121.else

idx_oob232:                                       ; preds = %idx_big_check230, %choice.exit219
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead234:                                    ; No predecessors!
  br label %idx_ok231

choice.exit240:                                   ; preds = %choice.next242, %choice.case241
  %choice.res245 = phi i1 [ true, %choice.case241 ], [ false, %choice.next242 ]
  br i1 %choice.res245, label %choice.then246, label %choice.else247

choice.case241:                                   ; preds = %and.121.exit
  br label %choice.exit240

choice.next242:                                   ; preds = %and.121.exit
  br label %choice.exit240

and.121.then:                                     ; preds = %idx_ok231
  %cmptmp244 = icmp sle i64 %var.load239, 57
  br label %and.121.exit

and.121.else:                                     ; preds = %idx_ok231
  br label %and.121.exit

and.121.exit:                                     ; preds = %and.121.else, %and.121.then
  %and.121.phi = phi i1 [ %cmptmp244, %and.121.then ], [ %cmptmp243, %and.121.else ]
  br i1 %and.121.phi, label %choice.case241, label %choice.next242

choice.then246:                                   ; preds = %choice.exit240
  store i1 true, ptr %"var.had_frac'", align 1
  %var.load249 = load i64, ptr %var.c238, align 8
  %subtmp250 = sub i64 %var.load249, 48
  store i64 %subtmp250, ptr %var.d251, align 8
  %var.load252 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp253 = icmp eq i64 %var.load252, 0
  br i1 %cmptmp253, label %and.122.then, label %and.122.else

choice.else247:                                   ; preds = %choice.exit240
  br label %loop.exit.120

choice.exit248:                                   ; preds = %choice.exit258
  br label %loop.latch.120

and.122.then:                                     ; preds = %choice.then246
  %var.load254 = load i64, ptr %var.d251, align 8
  %cmptmp255 = icmp eq i64 %var.load254, 0
  br label %and.122.exit

and.122.else:                                     ; preds = %choice.then246
  br label %and.122.exit

and.122.exit:                                     ; preds = %and.122.else, %and.122.then
  %and.122.phi = phi i1 [ %cmptmp255, %and.122.then ], [ %cmptmp253, %and.122.else ]
  br i1 %and.122.phi, label %choice.then256, label %choice.else257

choice.then256:                                   ; preds = %and.122.exit
  %var.load259 = load i64, ptr %"var.exp10'", align 8
  %subtmp260 = sub i64 %var.load259, 1
  store i64 %subtmp260, ptr %"var.exp10'", align 8
  br label %choice.exit258

choice.else257:                                   ; preds = %and.122.exit
  %var.load261 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp262 = icmp slt i64 %var.load261, 17
  br i1 %cmptmp262, label %choice.then263, label %choice.exit264

choice.exit258:                                   ; preds = %choice.exit264, %choice.then256
  %var.load274 = load i64, ptr %"var.p2'", align 8
  %addtmp275 = add i64 %var.load274, 1
  store i64 %addtmp275, ptr %"var.p2'", align 8
  br label %choice.exit248

choice.then263:                                   ; preds = %choice.else257
  %var.load265 = load double, ptr %"var.fv'", align 8
  %fmultmp266 = fmul double %var.load265, 1.000000e+01
  %var.load267 = load i64, ptr %var.d251, align 8
  %cast.sitofp268 = sitofp i64 %var.load267 to double
  %faddtmp269 = fadd double %fmultmp266, %cast.sitofp268
  store double %faddtmp269, ptr %"var.fv'", align 8
  %var.load270 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp271 = add i64 %var.load270, 1
  store i64 %addtmp271, ptr %"var.sig_digits'", align 8
  %var.load272 = load i64, ptr %"var.exp10'", align 8
  %subtmp273 = sub i64 %var.load272, 1
  store i64 %subtmp273, ptr %"var.exp10'", align 8
  br label %choice.exit264

choice.exit264:                                   ; preds = %choice.then263, %choice.else257
  br label %choice.exit258

str_ok286:                                        ; preds = %abort.dead295, %tag.slow_check289, %tag.gen_check288, %choice.exit203
  %cmptmp296 = icmp slt i64 %var.load278, %str.len.query284
  br i1 %cmptmp296, label %and.123.then, label %and.123.else

tag.gen_check288:                                 ; preds = %choice.exit203
  %active.gen291 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok292 = icmp eq i64 %str.tag285, %active.gen291
  br i1 %tag.fast.ok292, label %str_ok286, label %tag.slow_check289

tag.slow_check289:                                ; preds = %tag.gen_check288
  %arena.cur293 = call ptr @dva_arena_current()
  %tag.valid294 = call i1 @dva_arena_validate_tag(ptr %arena.cur293, i64 %str.tag285)
  br i1 %tag.valid294, label %str_ok286, label %tag.stale290

tag.stale290:                                     ; preds = %tag.slow_check289
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead295:                                    ; No predecessors!
  br label %str_ok286

and.123.then:                                     ; preds = %str_ok286
  %var.load297 = load ptr, ptr %var.sc, align 8
  %fld.gep298 = getelementptr inbounds { ptr, i64 }, ptr %var.load297, i32 0, i32 0
  %fld.load299 = load ptr, ptr %fld.gep298, align 8
  %s.read.len300 = getelementptr inbounds { i64, ptr }, ptr %fld.load299, i32 0, i32 0
  %s.read.len301 = load i64, ptr %s.read.len300, align 8
  %s.read.len302 = and i64 %s.read.len301, 281474976710655
  %s.read.data303 = getelementptr inbounds { i64, ptr }, ptr %fld.load299, i32 0, i32 1
  %s.read.data304 = load ptr, ptr %s.read.data303, align 8
  %var.load305 = load i64, ptr %"var.p2'", align 8
  %idx.neg306 = icmp slt i64 %var.load305, 0
  br i1 %idx.neg306, label %idx_oob309, label %idx_big_check307

and.123.else:                                     ; preds = %str_ok286
  br label %and.123.exit

and.123.exit:                                     ; preds = %and.123.else, %choice.exit315
  %and.123.phi = phi i1 [ %choice.res321, %choice.exit315 ], [ %cmptmp296, %and.123.else ]
  store i1 %and.123.phi, ptr %var.has_exp, align 1
  store i1 false, ptr %"var.had_exp'", align 1
  %var.load322 = load i1, ptr %var.has_exp, align 1
  br i1 %var.load322, label %choice.then323, label %choice.exit324

idx_big_check307:                                 ; preds = %and.123.then
  %idx.big310 = icmp sge i64 %var.load305, %s.read.len302
  br i1 %idx.big310, label %idx_oob309, label %idx_ok308

idx_ok308:                                        ; preds = %abort.dead311, %idx_big_check307
  %s.byte.gep312 = getelementptr i8, ptr %s.read.data304, i64 %var.load305
  %s.byte313 = load i8, ptr %s.byte.gep312, align 1
  %s.byte.val314 = zext i8 %s.byte313 to i64
  %val.match318 = icmp eq i64 %s.byte.val314, 101
  %val.match319 = icmp eq i64 %s.byte.val314, 69
  %case.or320 = or i1 %val.match318, %val.match319
  br i1 %case.or320, label %choice.case316, label %choice.next317

idx_oob309:                                       ; preds = %idx_big_check307, %and.123.then
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead311:                                    ; No predecessors!
  br label %idx_ok308

choice.exit315:                                   ; preds = %choice.next317, %choice.case316
  %choice.res321 = phi i1 [ true, %choice.case316 ], [ false, %choice.next317 ]
  br label %and.123.exit

choice.case316:                                   ; preds = %idx_ok308
  br label %choice.exit315

choice.next317:                                   ; preds = %idx_ok308
  br label %choice.exit315

choice.then323:                                   ; preds = %and.123.exit
  %var.load325 = load i64, ptr %"var.p2'", align 8
  %addtmp326 = add i64 %var.load325, 1
  store i64 %addtmp326, ptr %"var.p3'", align 8
  store i1 false, ptr %"var.eneg'", align 1
  %var.load327 = load i64, ptr %"var.p3'", align 8
  %var.load331 = load ptr, ptr %var.sc, align 8
  %fld.gep332 = getelementptr inbounds { ptr, i64 }, ptr %var.load331, i32 0, i32 0
  %fld.load333 = load ptr, ptr %fld.gep332, align 8
  %str.len.query334 = getelementptr inbounds { i64, ptr }, ptr %fld.load333, i32 0, i32 0
  %str.len.query335 = load i64, ptr %str.len.query334, align 8
  %str.len.query336 = and i64 %str.len.query335, 281474976710655
  %str.tag337 = lshr i64 %str.len.query335, 48
  %tag.immortal339 = icmp eq i64 %str.tag337, 0
  br i1 %tag.immortal339, label %str_ok338, label %tag.gen_check340

choice.exit324:                                   ; preds = %choice.exit449, %and.123.exit
  %var.load457 = load double, ptr %"var.fv'", align 8
  %fcmptmp = fcmp une double %var.load457, 0.000000e+00
  br i1 %fcmptmp, label %choice.then458, label %choice.exit459

choice.exit328:                                   ; preds = %choice.next330, %idx_ok360
  %choice.res367 = phi i64 [ %s.byte.val366, %idx_ok360 ], [ -1, %choice.next330 ]
  store i64 %choice.res367, ptr %var.e0, align 8
  %var.load368 = load i64, ptr %var.e0, align 8
  %val.match372 = icmp eq i64 %var.load368, 45
  br i1 %val.match372, label %choice.case370, label %choice.next371

choice.case329:                                   ; preds = %str_ok338
  %var.load349 = load ptr, ptr %var.sc, align 8
  %fld.gep350 = getelementptr inbounds { ptr, i64 }, ptr %var.load349, i32 0, i32 0
  %fld.load351 = load ptr, ptr %fld.gep350, align 8
  %s.read.len352 = getelementptr inbounds { i64, ptr }, ptr %fld.load351, i32 0, i32 0
  %s.read.len353 = load i64, ptr %s.read.len352, align 8
  %s.read.len354 = and i64 %s.read.len353, 281474976710655
  %s.read.data355 = getelementptr inbounds { i64, ptr }, ptr %fld.load351, i32 0, i32 1
  %s.read.data356 = load ptr, ptr %s.read.data355, align 8
  %var.load357 = load i64, ptr %"var.p3'", align 8
  %idx.neg358 = icmp slt i64 %var.load357, 0
  br i1 %idx.neg358, label %idx_oob361, label %idx_big_check359

choice.next330:                                   ; preds = %str_ok338
  br label %choice.exit328

str_ok338:                                        ; preds = %abort.dead347, %tag.slow_check341, %tag.gen_check340, %choice.then323
  %cmptmp348 = icmp slt i64 %var.load327, %str.len.query336
  br i1 %cmptmp348, label %choice.case329, label %choice.next330

tag.gen_check340:                                 ; preds = %choice.then323
  %active.gen343 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok344 = icmp eq i64 %str.tag337, %active.gen343
  br i1 %tag.fast.ok344, label %str_ok338, label %tag.slow_check341

tag.slow_check341:                                ; preds = %tag.gen_check340
  %arena.cur345 = call ptr @dva_arena_current()
  %tag.valid346 = call i1 @dva_arena_validate_tag(ptr %arena.cur345, i64 %str.tag337)
  br i1 %tag.valid346, label %str_ok338, label %tag.stale342

tag.stale342:                                     ; preds = %tag.slow_check341
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead347:                                    ; No predecessors!
  br label %str_ok338

idx_big_check359:                                 ; preds = %choice.case329
  %idx.big362 = icmp sge i64 %var.load357, %s.read.len354
  br i1 %idx.big362, label %idx_oob361, label %idx_ok360

idx_ok360:                                        ; preds = %abort.dead363, %idx_big_check359
  %s.byte.gep364 = getelementptr i8, ptr %s.read.data356, i64 %var.load357
  %s.byte365 = load i8, ptr %s.byte.gep364, align 1
  %s.byte.val366 = zext i8 %s.byte365 to i64
  br label %choice.exit328

idx_oob361:                                       ; preds = %idx_big_check359, %choice.case329
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead363:                                    ; No predecessors!
  br label %idx_ok360

choice.exit369:                                   ; preds = %choice.next371, %choice.case370
  %var.load375 = load i64, ptr %var.e0, align 8
  %cmptmp376 = icmp eq i64 %var.load375, 43
  store i1 %cmptmp376, ptr %var.plus, align 1
  %var.load377 = load i1, ptr %var.plus, align 1
  br i1 %var.load377, label %choice.then378, label %choice.exit379

choice.case370:                                   ; preds = %choice.exit328
  store i1 true, ptr %"var.eneg'", align 1
  %var.load373 = load i64, ptr %"var.p3'", align 8
  %addtmp374 = add i64 %var.load373, 1
  store i64 %addtmp374, ptr %"var.p3'", align 8
  br label %choice.exit369

choice.next371:                                   ; preds = %choice.exit328
  br label %choice.exit369

choice.then378:                                   ; preds = %choice.exit369
  %var.load380 = load i64, ptr %"var.p3'", align 8
  %addtmp381 = add i64 %var.load380, 1
  store i64 %addtmp381, ptr %"var.p3'", align 8
  br label %choice.exit379

choice.exit379:                                   ; preds = %choice.then378, %choice.exit369
  store i64 0, ptr %"var.ev'", align 8
  store i1 false, ptr %"var.over_exp'", align 1
  store i1 false, ptr %"var.had_exp_digits'", align 1
  store i64 0, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.header.124:                                  ; preds = %loop.latch.124, %choice.exit379
  %counter.load382 = load i64, ptr %loop.idx.124, align 8
  br label %loop.body.124

loop.body.124:                                    ; preds = %loop.header.124
  %loop.rel.i383 = sub i64 %counter.load382, 0
  store i64 1, ptr %loop.step.124, align 8
  store i64 %loop.rel.i383, ptr %var._i384, align 8
  store i64 %counter.load382, ptr %var._385, align 8
  %var.load386 = load i64, ptr %"var.p3'", align 8
  %var.load387 = load ptr, ptr %var.sc, align 8
  %fld.gep388 = getelementptr inbounds { ptr, i64 }, ptr %var.load387, i32 0, i32 0
  %fld.load389 = load ptr, ptr %fld.gep388, align 8
  %str.len.query390 = getelementptr inbounds { i64, ptr }, ptr %fld.load389, i32 0, i32 0
  %str.len.query391 = load i64, ptr %str.len.query390, align 8
  %str.len.query392 = and i64 %str.len.query391, 281474976710655
  %cmptmp393 = icmp sge i64 %var.load386, %str.len.query392
  br i1 %cmptmp393, label %choice.then394, label %choice.exit395

loop.exit.nat.124:                                ; No predecessors!
  br label %loop.exit.124

loop.latch.124:                                   ; preds = %choice.exit423
  %step.val436 = load i64, ptr %loop.step.124, align 8
  %loop.next437 = add i64 %counter.load382, %step.val436
  store i64 %loop.next437, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.exit.124:                                    ; preds = %choice.else422, %choice.then394, %loop.exit.nat.124
  %var.load438 = load i1, ptr %"var.had_exp_digits'", align 1
  store i1 %var.load438, ptr %"var.had_exp'", align 1
  %var.load439 = load i64, ptr %"var.p3'", align 8
  store i64 %var.load439, ptr %"var.p2'", align 8
  %var.load440 = load i1, ptr %"var.over_exp'", align 1
  br i1 %var.load440, label %choice.then441, label %choice.else442

choice.then394:                                   ; preds = %loop.body.124
  br label %loop.exit.124

choice.exit395:                                   ; preds = %loop.body.124
  %var.load396 = load ptr, ptr %var.sc, align 8
  %fld.gep397 = getelementptr inbounds { ptr, i64 }, ptr %var.load396, i32 0, i32 0
  %fld.load398 = load ptr, ptr %fld.gep397, align 8
  %s.read.len399 = getelementptr inbounds { i64, ptr }, ptr %fld.load398, i32 0, i32 0
  %s.read.len400 = load i64, ptr %s.read.len399, align 8
  %s.read.len401 = and i64 %s.read.len400, 281474976710655
  %s.read.data402 = getelementptr inbounds { i64, ptr }, ptr %fld.load398, i32 0, i32 1
  %s.read.data403 = load ptr, ptr %s.read.data402, align 8
  %var.load404 = load i64, ptr %"var.p3'", align 8
  %idx.neg405 = icmp slt i64 %var.load404, 0
  br i1 %idx.neg405, label %idx_oob408, label %idx_big_check406

idx_big_check406:                                 ; preds = %choice.exit395
  %idx.big409 = icmp sge i64 %var.load404, %s.read.len401
  br i1 %idx.big409, label %idx_oob408, label %idx_ok407

idx_ok407:                                        ; preds = %abort.dead410, %idx_big_check406
  %s.byte.gep411 = getelementptr i8, ptr %s.read.data403, i64 %var.load404
  %s.byte412 = load i8, ptr %s.byte.gep411, align 1
  %s.byte.val413 = zext i8 %s.byte412 to i64
  store i64 %s.byte.val413, ptr %var.ec, align 8
  %var.load414 = load i64, ptr %var.ec, align 8
  %cmptmp418 = icmp sge i64 %var.load414, 48
  br i1 %cmptmp418, label %and.125.then, label %and.125.else

idx_oob408:                                       ; preds = %idx_big_check406, %choice.exit395
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead410:                                    ; No predecessors!
  br label %idx_ok407

choice.exit415:                                   ; preds = %choice.next417, %choice.case416
  %choice.res420 = phi i1 [ true, %choice.case416 ], [ false, %choice.next417 ]
  br i1 %choice.res420, label %choice.then421, label %choice.else422

choice.case416:                                   ; preds = %and.125.exit
  br label %choice.exit415

choice.next417:                                   ; preds = %and.125.exit
  br label %choice.exit415

and.125.then:                                     ; preds = %idx_ok407
  %cmptmp419 = icmp sle i64 %var.load414, 57
  br label %and.125.exit

and.125.else:                                     ; preds = %idx_ok407
  br label %and.125.exit

and.125.exit:                                     ; preds = %and.125.else, %and.125.then
  %and.125.phi = phi i1 [ %cmptmp419, %and.125.then ], [ %cmptmp418, %and.125.else ]
  br i1 %and.125.phi, label %choice.case416, label %choice.next417

choice.then421:                                   ; preds = %choice.exit415
  store i1 true, ptr %"var.had_exp_digits'", align 1
  %var.load424 = load i64, ptr %var.ec, align 8
  %subtmp425 = sub i64 %var.load424, 48
  store i64 %subtmp425, ptr %var.ed, align 8
  %var.load426 = load i64, ptr %"var.ev'", align 8
  %cmptmp427 = icmp sgt i64 %var.load426, 1000000
  br i1 %cmptmp427, label %choice.then428, label %choice.else429

choice.else422:                                   ; preds = %choice.exit415
  br label %loop.exit.124

choice.exit423:                                   ; preds = %choice.exit430
  br label %loop.latch.124

choice.then428:                                   ; preds = %choice.then421
  store i1 true, ptr %"var.over_exp'", align 1
  br label %choice.exit430

choice.else429:                                   ; preds = %choice.then421
  %var.load431 = load i64, ptr %"var.ev'", align 8
  %multmp = mul i64 %var.load431, 10
  %var.load432 = load i64, ptr %var.ed, align 8
  %addtmp433 = add i64 %multmp, %var.load432
  store i64 %addtmp433, ptr %"var.ev'", align 8
  br label %choice.exit430

choice.exit430:                                   ; preds = %choice.else429, %choice.then428
  %var.load434 = load i64, ptr %"var.p3'", align 8
  %addtmp435 = add i64 %var.load434, 1
  store i64 %addtmp435, ptr %"var.p3'", align 8
  br label %choice.exit423

choice.then441:                                   ; preds = %loop.exit.124
  br label %choice.exit443

choice.else442:                                   ; preds = %loop.exit.124
  %var.load444 = load i64, ptr %"var.ev'", align 8
  br label %choice.exit443

choice.exit443:                                   ; preds = %choice.else442, %choice.then441
  %choice.res445 = phi i64 [ 1000000, %choice.then441 ], [ %var.load444, %choice.else442 ]
  store i64 %choice.res445, ptr %var.exp_val, align 8
  %var.load446 = load i1, ptr %"var.eneg'", align 1
  br i1 %var.load446, label %choice.then447, label %choice.else448

choice.then447:                                   ; preds = %choice.exit443
  %var.load450 = load i64, ptr %"var.exp10'", align 8
  %var.load451 = load i64, ptr %var.exp_val, align 8
  %subtmp452 = sub i64 %var.load450, %var.load451
  br label %choice.exit449

choice.else448:                                   ; preds = %choice.exit443
  %var.load453 = load i64, ptr %"var.exp10'", align 8
  %var.load454 = load i64, ptr %var.exp_val, align 8
  %addtmp455 = add i64 %var.load453, %var.load454
  br label %choice.exit449

choice.exit449:                                   ; preds = %choice.else448, %choice.then447
  %choice.res456 = phi i64 [ %subtmp452, %choice.then447 ], [ %addtmp455, %choice.else448 ]
  store i64 %choice.res456, ptr %"var.exp10'", align 8
  br label %choice.exit324

choice.then458:                                   ; preds = %choice.exit324
  %var.load460 = load i64, ptr %"var.exp10'", align 8
  %cmptmp461 = icmp slt i64 %var.load460, -400
  br i1 %cmptmp461, label %choice.then462, label %choice.else463

choice.exit459:                                   ; preds = %loop.exit.126, %choice.exit324
  %var.load498 = load i1, ptr %"var.had_int'", align 1
  br i1 %var.load498, label %and.127.then, label %and.127.else

choice.then462:                                   ; preds = %choice.then458
  br label %choice.exit464

choice.else463:                                   ; preds = %choice.then458
  %var.load465 = load i64, ptr %"var.exp10'", align 8
  %cmptmp466 = icmp sgt i64 %var.load465, 400
  br i1 %cmptmp466, label %choice.then467, label %choice.else468

choice.exit464:                                   ; preds = %choice.exit469, %choice.then462
  %choice.res472 = phi i64 [ -400, %choice.then462 ], [ %choice.res471, %choice.exit469 ]
  store i64 %choice.res472, ptr %var.eclamp, align 8
  %var.load473 = load i64, ptr %var.eclamp, align 8
  %cmptmp474 = icmp slt i64 %var.load473, 0
  br i1 %cmptmp474, label %choice.then475, label %choice.else476

choice.then467:                                   ; preds = %choice.else463
  br label %choice.exit469

choice.else468:                                   ; preds = %choice.else463
  %var.load470 = load i64, ptr %"var.exp10'", align 8
  br label %choice.exit469

choice.exit469:                                   ; preds = %choice.else468, %choice.then467
  %choice.res471 = phi i64 [ 400, %choice.then467 ], [ %var.load470, %choice.else468 ]
  br label %choice.exit464

choice.then475:                                   ; preds = %choice.exit464
  %var.load478 = load i64, ptr %var.eclamp, align 8
  %subtmp479 = sub i64 0, %var.load478
  br label %choice.exit477

choice.else476:                                   ; preds = %choice.exit464
  %var.load480 = load i64, ptr %var.eclamp, align 8
  br label %choice.exit477

choice.exit477:                                   ; preds = %choice.else476, %choice.then475
  %choice.res481 = phi i64 [ %subtmp479, %choice.then475 ], [ %var.load480, %choice.else476 ]
  store i64 %choice.res481, ptr %var.abs_e, align 8
  %var.load482 = load i64, ptr %var.abs_e, align 8
  store i64 0, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.header.126:                                  ; preds = %loop.latch.126, %choice.exit477
  %counter.load483 = load i64, ptr %loop.idx.126, align 8
  %loop.cond = icmp slt i64 %counter.load483, %var.load482
  br i1 %loop.cond, label %loop.body.126, label %loop.exit.nat.126

loop.body.126:                                    ; preds = %loop.header.126
  %loop.rel.i484 = sub i64 %counter.load483, 0
  store i64 1, ptr %loop.step.126, align 8
  store i64 %loop.rel.i484, ptr %var._i485, align 8
  store i64 %counter.load483, ptr %var._486, align 8
  %var.load487 = load i64, ptr %var.eclamp, align 8
  %cmptmp488 = icmp slt i64 %var.load487, 0
  br i1 %cmptmp488, label %choice.then489, label %choice.else490

loop.exit.nat.126:                                ; preds = %loop.header.126
  br label %loop.exit.126

loop.latch.126:                                   ; preds = %choice.exit491
  %step.val496 = load i64, ptr %loop.step.126, align 8
  %loop.next497 = add i64 %counter.load483, %step.val496
  store i64 %loop.next497, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.exit.126:                                    ; preds = %loop.exit.nat.126
  br label %choice.exit459

choice.then489:                                   ; preds = %loop.body.126
  %var.load492 = load double, ptr %"var.fv'", align 8
  %fdivtmp = fdiv double %var.load492, 1.000000e+01
  br label %choice.exit491

choice.else490:                                   ; preds = %loop.body.126
  %var.load493 = load double, ptr %"var.fv'", align 8
  %fmultmp494 = fmul double %var.load493, 1.000000e+01
  br label %choice.exit491

choice.exit491:                                   ; preds = %choice.else490, %choice.then489
  %choice.res495 = phi double [ %fdivtmp, %choice.then489 ], [ %fmultmp494, %choice.else490 ]
  store double %choice.res495, ptr %"var.fv'", align 8
  br label %loop.latch.126

and.127.then:                                     ; preds = %choice.exit459
  %var.load499 = load i1, ptr %var.has_dot, align 1
  %nottmp = xor i1 %var.load499, true
  br i1 %nottmp, label %or.128.then, label %or.128.else

and.127.else:                                     ; preds = %choice.exit459
  br label %and.127.exit

and.127.exit:                                     ; preds = %and.127.else, %or.128.exit
  %and.127.phi = phi i1 [ %or.128.phi, %or.128.exit ], [ %var.load498, %and.127.else ]
  br i1 %and.127.phi, label %and.129.then, label %and.129.else

or.128.then:                                      ; preds = %and.127.then
  br label %or.128.exit

or.128.else:                                      ; preds = %and.127.then
  %var.load500 = load i1, ptr %"var.had_frac'", align 1
  br label %or.128.exit

or.128.exit:                                      ; preds = %or.128.else, %or.128.then
  %or.128.phi = phi i1 [ %nottmp, %or.128.then ], [ %var.load500, %or.128.else ]
  br label %and.127.exit

and.129.then:                                     ; preds = %and.127.exit
  %var.load501 = load i1, ptr %var.has_exp, align 1
  %nottmp502 = xor i1 %var.load501, true
  br i1 %nottmp502, label %or.130.then, label %or.130.else

and.129.else:                                     ; preds = %and.127.exit
  br label %and.129.exit

and.129.exit:                                     ; preds = %and.129.else, %or.130.exit
  %and.129.phi = phi i1 [ %or.130.phi, %or.130.exit ], [ %and.127.phi, %and.129.else ]
  store i1 %and.129.phi, ptr %var.valid, align 1
  %var.load504 = load i1, ptr %var.valid, align 1
  br i1 %var.load504, label %choice.then505, label %choice.else506

or.130.then:                                      ; preds = %and.129.then
  br label %or.130.exit

or.130.else:                                      ; preds = %and.129.then
  %var.load503 = load i1, ptr %"var.had_exp'", align 1
  br label %or.130.exit

or.130.exit:                                      ; preds = %or.130.else, %or.130.then
  %or.130.phi = phi i1 [ %nottmp502, %or.130.then ], [ %var.load503, %or.130.else ]
  br label %and.129.exit

choice.then505:                                   ; preds = %and.129.exit
  %var.load508 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load508, label %choice.then509, label %choice.else510

choice.else506:                                   ; preds = %and.129.exit
  %arena.cur523 = call ptr @dva_arena_current()
  %err.alloc524 = call ptr @dva_arena_alloc(ptr %arena.cur523, i64 56)
  %err.code.gep525 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc524, i32 0, i32 0
  store i64 400, ptr %err.code.gep525, align 8
  %err.msg.gep526 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc524, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep526, align 8
  %err.file.gep527 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc524, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep527, align 8
  %err.line.gep528 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc524, i32 0, i32 3
  store i64 0, ptr %err.line.gep528, align 8
  %err.col.gep529 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc524, i32 0, i32 4
  store i64 0, ptr %err.col.gep529, align 8
  %err.ctx.gep530 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc524, i32 0, i32 5
  %var.load531 = load i64, ptr %"var.p'", align 8
  %arena.cur532 = call ptr @dva_arena_current()
  %rec.alloc533 = call ptr @dva_arena_alloc(ptr %arena.cur532, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld534 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc533, i32 0, i32 0
  store i64 %var.load531, ptr %rec.fld534, align 8
  %rec.fld535 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc533, i32 0, i32 1
  store i64 0, ptr %rec.fld535, align 8
  %ctx.0.gep536 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc533, i32 0, i32 0
  %ctx.0537 = load i64, ptr %ctx.0.gep536, align 8
  %ctx.1.gep538 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc533, i32 0, i32 1
  %ctx.1539 = load i64, ptr %ctx.1.gep538, align 8
  %err.ctx0.gep540 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep530, i32 0, i32 0
  store i64 %ctx.0537, ptr %err.ctx0.gep540, align 8
  %err.ctx1.gep541 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep530, i32 0, i32 1
  store i64 %ctx.1539, ptr %err.ctx1.gep541, align 8
  %p.to.i64542 = ptrtoint ptr %err.alloc524 to i64
  %ram.pay543 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64542, 1
  br label %choice.exit507

choice.exit507:                                   ; preds = %choice.else506, %choice.exit511
  %choice.res544 = phi { i1, i64 } [ %ram.pay522, %choice.exit511 ], [ %ram.pay543, %choice.else506 ]
  br label %choice.exit99

choice.then509:                                   ; preds = %choice.then505
  %var.load512 = load double, ptr %"var.fv'", align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load512
  br label %choice.exit511

choice.else510:                                   ; preds = %choice.then505
  %var.load513 = load double, ptr %"var.fv'", align 8
  br label %choice.exit511

choice.exit511:                                   ; preds = %choice.else510, %choice.then509
  %choice.res514 = phi double [ %fsubtmp, %choice.then509 ], [ %var.load513, %choice.else510 ]
  store double %choice.res514, ptr %var.f, align 8
  %var.load515 = load ptr, ptr %var.sc, align 8
  %var.load516 = load i64, ptr %"var.p2'", align 8
  %fld.gep517 = getelementptr inbounds { ptr, i64 }, ptr %var.load515, i32 0, i32 1
  store i64 %var.load516, ptr %fld.gep517, align 8
  %arena.cur518 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur518, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load519 = load double, ptr %var.f, align 8
  %arena.cur520 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur520, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store double %var.load519, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64521 = ptrtoint ptr %enum.alloc to i64
  %ram.pay522 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64521, 1
  br label %choice.exit507
}

define internal { i1, i64 } @"json::#parse_array_after_value"(ptr %0, ptr %1, { i1, i64 } %2) #0 {
entry:
  %var.e = alloca ptr, align 8
  %var._181 = alloca ptr, align 8
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
  %ram.pay179 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr180 = inttoptr i64 %ram.pay179 to ptr
  store ptr %pay.ptr180, ptr %var._181, align 8
  store ptr %pay.ptr180, ptr %var.e, align 8
  %var.load182 = load ptr, ptr %var.e, align 8
  %p.to.i64183 = ptrtoint ptr %var.load182 to i64
  %ram.pay184 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64183, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit30
  %choice.res185 = phi { i1, i64 } [ %choice.res178, %choice.exit30 ], [ %ram.pay184, %choice.else ]
  ret { i1, i64 } %choice.res185

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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit14:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load29 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load29, 93
  br i1 %val.match, label %choice.case31, label %choice.next32

choice.case:                                      ; preds = %str_ok
  %var.load21 = load ptr, ptr %var.sc, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  %var.load27 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load27, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit14

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %a.store
  %cmptmp = icmp slt i64 %var.load13, %str.len.query19
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.gen_check:                                    ; preds = %a.store
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load27, %s.read.len25
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead28, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data26, i64 %var.load27
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit14

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %idx_ok

choice.exit30:                                    ; preds = %choice.next76, %choice.exit131, %a.view.off70
  %choice.res178 = phi { i1, i64 } [ %ram.pay74, %a.view.off70 ], [ %choice.res156, %choice.exit131 ], [ %ram.pay177, %choice.next76 ]
  br label %choice.exit

choice.case31:                                    ; preds = %choice.exit14
  %var.load33 = load ptr, ptr %var.sc, align 8
  %var.load34 = load ptr, ptr %var.sc, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 1
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %addtmp = add i64 %fld.load36, 1
  %fld.gep37 = getelementptr inbounds { ptr, i64 }, ptr %var.load33, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep37, align 8
  %var.load38 = load ptr, ptr %var.elems, align 8
  %a.load39 = load ptr, ptr %var.elems, align 8
  %a.null40 = icmp eq ptr %a.load39, null
  br i1 %a.null40, label %a.create41, label %a.after42

choice.next32:                                    ; preds = %choice.exit14
  %val.match77 = icmp eq i64 %var.load29, 44
  br i1 %val.match77, label %choice.case75, label %choice.next76

a.create41:                                       ; preds = %choice.case31
  %arena.cur43 = call ptr @dva_arena_current()
  %a.create44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 24)
  %arena.cur45 = call ptr @dva_arena_current()
  %a.buf46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 128)
  %a.len.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 0
  store i64 0, ptr %a.len.gep47, align 8
  %a.data.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 1
  store ptr %a.buf46, ptr %a.data.gep48, align 8
  %a.cap.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create44, i32 0, i32 2
  store i64 16, ptr %a.cap.gep49, align 8
  store ptr %a.create44, ptr %var.elems, align 8
  br label %a.after42

a.after42:                                        ; preds = %a.create41, %choice.case31
  %a.load250 = load ptr, ptr %var.elems, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load250, i32 0, i32 0
  %a.len.query51 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query51, ptr %var.n, align 8
  %arena.cur52 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load53 = load ptr, ptr %var.elems, align 8
  %a.load54 = load ptr, ptr %var.elems, align 8
  %a.null55 = icmp eq ptr %a.load54, null
  br i1 %a.null55, label %a.create56, label %a.after57

a.create56:                                       ; preds = %a.after42
  %arena.cur58 = call ptr @dva_arena_current()
  %a.create59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 24)
  %arena.cur60 = call ptr @dva_arena_current()
  %a.buf61 = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 128)
  %a.len.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 0
  store i64 0, ptr %a.len.gep62, align 8
  %a.data.gep63 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 1
  store ptr %a.buf61, ptr %a.data.gep63, align 8
  %a.cap.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create59, i32 0, i32 2
  store i64 16, ptr %a.cap.gep64, align 8
  store ptr %a.create59, ptr %var.elems, align 8
  br label %a.after57

a.after57:                                        ; preds = %a.create56, %a.after42
  %a.load265 = load ptr, ptr %var.elems, align 8
  %var.load66 = load i64, ptr %var.n, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 0
  %a.view.len67 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len67, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len67
  %final.start = select i1 %start.gt.len, i64 %a.view.len67, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load66, 0
  %rel.end = add i64 %a.view.len67, %var.load66
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load66
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len67
  %final.end = select i1 %end.gt.len, i64 %a.view.len67, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load265, i32 0, i32 1
  %a.view.data68 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off69 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off69, 0
  %ovf = extractvalue { i64, i1 } %a.view.off69, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off70

a.view.off70:                                     ; preds = %abort.dead71, %a.after57
  %a.view.data72 = getelementptr i8, ptr %a.view.data68, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur73 = call ptr @dva_arena_current()
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data72, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay74 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit30

str_overflow_abort:                               ; preds = %a.after57
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %a.view.off70

choice.case75:                                    ; preds = %choice.next32
  %var.load78 = load ptr, ptr %var.sc, align 8
  %var.load79 = load ptr, ptr %var.sc, align 8
  %fld.gep80 = getelementptr inbounds { ptr, i64 }, ptr %var.load79, i32 0, i32 1
  %fld.load81 = load i64, ptr %fld.gep80, align 8
  %addtmp82 = add i64 %fld.load81, 1
  %fld.gep83 = getelementptr inbounds { ptr, i64 }, ptr %var.load78, i32 0, i32 1
  store i64 %addtmp82, ptr %fld.gep83, align 8
  %var.load84 = load ptr, ptr %var.sc, align 8
  %var.load85 = load ptr, ptr %var.sc, align 8
  %fld.gep86 = getelementptr inbounds { ptr, i64 }, ptr %var.load85, i32 0, i32 1
  %fld.load87 = load i64, ptr %fld.gep86, align 8
  %call.res88 = call i64 @"json::#skip_ws"(ptr %var.load84, i64 %fld.load87)
  store i64 %call.res88, ptr %var.p2, align 8
  %var.load89 = load i64, ptr %var.p2, align 8
  %var.load93 = load ptr, ptr %var.sc, align 8
  %fld.gep94 = getelementptr inbounds { ptr, i64 }, ptr %var.load93, i32 0, i32 0
  %fld.load95 = load ptr, ptr %fld.gep94, align 8
  %str.len.query96 = getelementptr inbounds { i64, ptr }, ptr %fld.load95, i32 0, i32 0
  %str.len.query97 = load i64, ptr %str.len.query96, align 8
  %str.len.query98 = and i64 %str.len.query97, 281474976710655
  %str.tag99 = lshr i64 %str.len.query97, 48
  %tag.immortal101 = icmp eq i64 %str.tag99, 0
  br i1 %tag.immortal101, label %str_ok100, label %tag.gen_check102

choice.next76:                                    ; preds = %choice.next32
  %arena.cur157 = call ptr @dva_arena_current()
  %err.alloc158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 56)
  %err.code.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 0
  store i64 400, ptr %err.code.gep159, align 8
  %err.msg.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep160, align 8
  %err.file.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep161, align 8
  %err.line.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 3
  store i64 0, ptr %err.line.gep162, align 8
  %err.col.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 4
  store i64 0, ptr %err.col.gep163, align 8
  %err.ctx.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc158, i32 0, i32 5
  %var.load165 = load i64, ptr %var.p, align 8
  %arena.cur166 = call ptr @dva_arena_current()
  %rec.alloc167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld168 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc167, i32 0, i32 0
  store i64 %var.load165, ptr %rec.fld168, align 8
  %rec.fld169 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc167, i32 0, i32 1
  store i64 0, ptr %rec.fld169, align 8
  %ctx.0.gep170 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc167, i32 0, i32 0
  %ctx.0171 = load i64, ptr %ctx.0.gep170, align 8
  %ctx.1.gep172 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc167, i32 0, i32 1
  %ctx.1173 = load i64, ptr %ctx.1.gep172, align 8
  %err.ctx0.gep174 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep164, i32 0, i32 0
  store i64 %ctx.0171, ptr %err.ctx0.gep174, align 8
  %err.ctx1.gep175 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep164, i32 0, i32 1
  store i64 %ctx.1173, ptr %err.ctx1.gep175, align 8
  %p.to.i64176 = ptrtoint ptr %err.alloc158 to i64
  %ram.pay177 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64176, 1
  br label %choice.exit30

choice.exit90:                                    ; preds = %choice.next92, %idx_ok122
  %choice.res129 = phi i64 [ %s.byte.val128, %idx_ok122 ], [ -1, %choice.next92 ]
  store i64 %choice.res129, ptr %var.c2, align 8
  %var.load130 = load i64, ptr %var.c2, align 8
  %val.match134 = icmp eq i64 %var.load130, 93
  br i1 %val.match134, label %choice.case132, label %choice.next133

choice.case91:                                    ; preds = %str_ok100
  %var.load111 = load ptr, ptr %var.sc, align 8
  %fld.gep112 = getelementptr inbounds { ptr, i64 }, ptr %var.load111, i32 0, i32 0
  %fld.load113 = load ptr, ptr %fld.gep112, align 8
  %s.read.len114 = getelementptr inbounds { i64, ptr }, ptr %fld.load113, i32 0, i32 0
  %s.read.len115 = load i64, ptr %s.read.len114, align 8
  %s.read.len116 = and i64 %s.read.len115, 281474976710655
  %s.read.data117 = getelementptr inbounds { i64, ptr }, ptr %fld.load113, i32 0, i32 1
  %s.read.data118 = load ptr, ptr %s.read.data117, align 8
  %var.load119 = load i64, ptr %var.p2, align 8
  %idx.neg120 = icmp slt i64 %var.load119, 0
  br i1 %idx.neg120, label %idx_oob123, label %idx_big_check121

choice.next92:                                    ; preds = %str_ok100
  br label %choice.exit90

str_ok100:                                        ; preds = %abort.dead109, %tag.slow_check103, %tag.gen_check102, %choice.case75
  %cmptmp110 = icmp slt i64 %var.load89, %str.len.query98
  br i1 %cmptmp110, label %choice.case91, label %choice.next92

tag.gen_check102:                                 ; preds = %choice.case75
  %active.gen105 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok106 = icmp eq i64 %str.tag99, %active.gen105
  br i1 %tag.fast.ok106, label %str_ok100, label %tag.slow_check103

tag.slow_check103:                                ; preds = %tag.gen_check102
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %str.tag99)
  br i1 %tag.valid108, label %str_ok100, label %tag.stale104

tag.stale104:                                     ; preds = %tag.slow_check103
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead109:                                    ; No predecessors!
  br label %str_ok100

idx_big_check121:                                 ; preds = %choice.case91
  %idx.big124 = icmp sge i64 %var.load119, %s.read.len116
  br i1 %idx.big124, label %idx_oob123, label %idx_ok122

idx_ok122:                                        ; preds = %abort.dead125, %idx_big_check121
  %s.byte.gep126 = getelementptr i8, ptr %s.read.data118, i64 %var.load119
  %s.byte127 = load i8, ptr %s.byte.gep126, align 1
  %s.byte.val128 = zext i8 %s.byte127 to i64
  br label %choice.exit90

idx_oob123:                                       ; preds = %idx_big_check121, %choice.case91
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead125:                                    ; No predecessors!
  br label %idx_ok122

choice.exit131:                                   ; preds = %a.after146, %choice.case132
  %choice.res156 = phi { i1, i64 } [ %ram.pay140, %choice.case132 ], [ %call.res155, %a.after146 ]
  br label %choice.exit30

choice.case132:                                   ; preds = %choice.exit90
  %arena.cur135 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 56)
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
  %var.load136 = load i64, ptr %var.p2, align 8
  %arena.cur137 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load136, ptr %rec.fld, align 8
  %rec.fld138 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld138, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64139 = ptrtoint ptr %err.alloc to i64
  %ram.pay140 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64139, 1
  br label %choice.exit131

choice.next133:                                   ; preds = %choice.exit90
  %var.load141 = load ptr, ptr %var.sc, align 8
  %var.load142 = load ptr, ptr %var.elems, align 8
  %a.load143 = load ptr, ptr %var.elems, align 8
  %a.null144 = icmp eq ptr %a.load143, null
  br i1 %a.null144, label %a.create145, label %a.after146

a.create145:                                      ; preds = %choice.next133
  %arena.cur147 = call ptr @dva_arena_current()
  %a.create148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 24)
  %arena.cur149 = call ptr @dva_arena_current()
  %a.buf150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 128)
  %a.len.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 0
  store i64 0, ptr %a.len.gep151, align 8
  %a.data.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 1
  store ptr %a.buf150, ptr %a.data.gep152, align 8
  %a.cap.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 2
  store i64 16, ptr %a.cap.gep153, align 8
  store ptr %a.create148, ptr %var.elems, align 8
  br label %a.after146

a.after146:                                       ; preds = %a.create145, %choice.next133
  %a.load2154 = load ptr, ptr %var.elems, align 8
  %call.res155 = call { i1, i64 } @"json::#parse_array_loop"(ptr %var.load141, ptr %a.load2154)
  br label %choice.exit131
}

define { i1, i64 } @"json::parse"(ptr %0) #0 {
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

define internal { i1, i64 } @"json::#parse_finish"(ptr %0, { i1, i64 } %1) #0 {
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
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

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

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  %cmptmp = icmp eq i64 %var.load3, %str.len.query8
  br i1 %cmptmp, label %choice.then9, label %choice.else10

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

define internal ptr @"json::#json_type_err"(ptr %0) #0 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %var.load = load ptr, ptr %var.msg, align 8
  %concat.lhs = load i64, ptr @str.25.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.25.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs3 = load i64, ptr %concat.rhs, align 8
  %concat.rhs4 = and i64 %concat.rhs3, 281474976710655
  %str.tag = lshr i64 %concat.rhs3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %concat.rhs6 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs7 = load ptr, ptr %concat.rhs6, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len8

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur5 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur5, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

concat.sum.len8:                                  ; preds = %abort.dead9, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum10 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf11 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf11, label %str_overflow_abort13, label %concat.tot.len12

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %concat.sum.len8

concat.tot.len12:                                 ; preds = %abort.dead14, %concat.sum.len8
  %arena.cur15 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 %sum10)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs7, i64 %concat.rhs4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur16 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
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
  %arena.cur17 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld18 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld18, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  ret ptr %err.alloc

str_overflow_abort13:                             ; preds = %concat.sum.len8
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead14:                                     ; No predecessors!
  br label %concat.tot.len12
}

define internal i32 @"json::#hex_digit"(i64 %0) #0 {
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

define void @"json::escape_string_into"(ptr %0, ptr %1) #0 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.132 = alloca i64, align 8
  %loop.idx.132 = alloca i64, align 8
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

b.rn.new.len2:                                    ; preds = %abort.dead, %entry
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %entry
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
  br i1 true, label %br.b1.131, label %br.c2.131

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

br.b1.131:                                        ; preds = %b.grow_done
  store i8 34, ptr %b.rn.dst, align 1
  br label %br.done.131

br.c2.131:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.131, label %br.c3.131

br.b2.131:                                        ; preds = %br.c2.131
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -94, ptr %br.dst1, align 1
  br label %br.done.131

br.c3.131:                                        ; preds = %br.c2.131
  br i1 true, label %br.b3.131, label %br.b4.131

br.b3.131:                                        ; preds = %br.c3.131
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -94, ptr %br.dst2.3, align 1
  br label %br.done.131

br.b4.131:                                        ; preds = %br.c3.131
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -94, ptr %br.dst3.4, align 1
  br label %br.done.131

br.done.131:                                      ; preds = %br.b4.131, %br.b3.131, %br.b2.131, %br.b1.131
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query12 = load i64, ptr %str.len.query, align 8
  %str.len.query13 = and i64 %str.len.query12, 281474976710655
  %str.tag = lshr i64 %str.len.query12, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead15, %tag.slow_check, %tag.gen_check, %br.done.131
  store i64 0, ptr %loop.idx.132, align 8
  br label %loop.header.132

tag.gen_check:                                    ; preds = %br.done.131
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %str_ok

loop.header.132:                                  ; preds = %loop.latch.132, %str_ok
  %counter.load = load i64, ptr %loop.idx.132, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len.query13
  br i1 %loop.cond, label %loop.body.132, label %loop.exit.nat.132

loop.body.132:                                    ; preds = %loop.header.132
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.132, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load16 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %s.read.len17 = load i64, ptr %s.read.len, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %s.read.data19 = load ptr, ptr %s.read.data, align 8
  %var.load20 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load20, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.132:                                ; preds = %loop.header.132
  br label %loop.exit.132

loop.latch.132:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.132, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.132, align 8
  br label %loop.header.132

loop.exit.132:                                    ; preds = %loop.exit.nat.132
  %b.load532 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len533 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 0
  %b.rn.cur.len534 = load i64, ptr %b.rn.cur.len533, align 8
  %b.rn.new.len535 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len534, i64 1)
  %sum536 = extractvalue { i64, i1 } %b.rn.new.len535, 0
  %ovf537 = extractvalue { i64, i1 } %b.rn.new.len535, 1
  br i1 %ovf537, label %str_overflow_abort539, label %b.rn.new.len538

idx_big_check:                                    ; preds = %loop.body.132
  %idx.big = icmp sge i64 %var.load20, %s.read.len18
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead21, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data19, i64 %var.load20
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %bandtmp = and i64 %s.byte.val, 255
  store i64 %bandtmp, ptr %var.c, align 8
  %var.load22 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load22, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %loop.body.132
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %idx_ok

choice.exit:                                      ; preds = %b.push_done, %br.done.134, %b.grow_done309, %b.grow_done263, %b.grow_done217, %b.grow_done171, %b.grow_done125, %b.grow_done79, %b.grow_done36
  br label %loop.latch.132

choice.case:                                      ; preds = %idx_ok
  %b.load23 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.26.struct, align 8
  %app.str.len24 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 0
  %b.app.cur.len25 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len25, i64 %app.str.len24)
  %sum26 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf27 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf27, label %str_overflow_abort29, label %b.app.new.len28

choice.next:                                      ; preds = %idx_ok
  %val.match61 = icmp eq i64 %var.load22, 92
  br i1 %val.match61, label %choice.case59, label %choice.next60

b.app.new.len28:                                  ; preds = %abort.dead30, %choice.case
  %b.cap31 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 2
  %b.cap32 = load i64, ptr %b.cap31, align 8
  %b.need.grow33 = icmp slt i64 %b.cap32, %sum26
  br i1 %b.need.grow33, label %b.grow234, label %b.nogrow235

str_overflow_abort29:                             ; preds = %choice.case
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %b.app.new.len28

b.grow234:                                        ; preds = %b.app.new.len28
  %b.cap237 = mul i64 %b.cap32, 2
  %b.cap.small38 = icmp slt i64 %b.cap237, 16
  %b.cap.grow39 = select i1 %b.cap.small38, i64 16, i64 %b.cap237
  %b.cap.need40 = icmp slt i64 %b.cap.grow39, %sum26
  %b.new.cap41 = select i1 %b.cap.need40, i64 %sum26, i64 %b.cap.grow39
  %b.cur.len242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 0
  %b.cur.len243 = load i64, ptr %b.cur.len242, align 8
  %b.cur.data244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 1
  %b.cur.data245 = load ptr, ptr %b.cur.data244, align 8
  %b.new.buf.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap41, i64 1)
  %sum47 = extractvalue { i64, i1 } %b.new.buf.len246, 0
  %ovf48 = extractvalue { i64, i1 } %b.new.buf.len246, 1
  br i1 %ovf48, label %str_overflow_abort50, label %b.new.buf.len249

b.nogrow235:                                      ; preds = %b.app.new.len28
  br label %b.grow_done36

b.grow_done36:                                    ; preds = %b.nogrow235, %b.new.buf.len249
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 1
  %b.app.data57 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data57, i64 %b.app.cur.len25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len24, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data57, i64 %sum26
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 0
  store i64 %sum26, ptr %b.len.gep58, align 8
  br label %choice.exit

b.new.buf.len249:                                 ; preds = %abort.dead51, %b.grow234
  %arena.cur52 = call ptr @dva_arena_current()
  %b.new.buf253 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 %sum47)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf253, ptr align 1 %b.cur.data245, i64 %b.cur.len243, i1 false)
  %b.grow2.nul54 = getelementptr i8, ptr %b.new.buf253, i64 %b.cur.len243
  store i8 0, ptr %b.grow2.nul54, align 1
  %b.new.data2.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 1
  store ptr %b.new.buf253, ptr %b.new.data2.gep55, align 8
  %b.new.cap2.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load23, i32 0, i32 2
  store i64 %b.new.cap41, ptr %b.new.cap2.gep56, align 8
  br label %b.grow_done36

str_overflow_abort50:                             ; preds = %b.grow234
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead51:                                     ; No predecessors!
  br label %b.new.buf.len249

choice.case59:                                    ; preds = %choice.next
  %b.load62 = load ptr, ptr %var.b, align 8
  %app.str.len63 = load i64, ptr @str.27.struct, align 8
  %app.str.len64 = and i64 %app.str.len63, 281474976710655
  %app.str.data65 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %b.app.cur.len66 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load62, i32 0, i32 0
  %b.app.cur.len67 = load i64, ptr %b.app.cur.len66, align 8
  %b.app.new.len68 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len67, i64 %app.str.len64)
  %sum69 = extractvalue { i64, i1 } %b.app.new.len68, 0
  %ovf70 = extractvalue { i64, i1 } %b.app.new.len68, 1
  br i1 %ovf70, label %str_overflow_abort72, label %b.app.new.len71

choice.next60:                                    ; preds = %choice.next
  %val.match107 = icmp eq i64 %var.load22, 8
  br i1 %val.match107, label %choice.case105, label %choice.next106

b.app.new.len71:                                  ; preds = %abort.dead73, %choice.case59
  %b.cap74 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load62, i32 0, i32 2
  %b.cap75 = load i64, ptr %b.cap74, align 8
  %b.need.grow76 = icmp slt i64 %b.cap75, %sum69
  br i1 %b.need.grow76, label %b.grow277, label %b.nogrow278

str_overflow_abort72:                             ; preds = %choice.case59
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %b.app.new.len71

b.grow277:                                        ; preds = %b.app.new.len71
  %b.cap280 = mul i64 %b.cap75, 2
  %b.cap.small81 = icmp slt i64 %b.cap280, 16
  %b.cap.grow82 = select i1 %b.cap.small81, i64 16, i64 %b.cap280
  %b.cap.need83 = icmp slt i64 %b.cap.grow82, %sum69
  %b.new.cap84 = select i1 %b.cap.need83, i64 %sum69, i64 %b.cap.grow82
  %b.cur.len285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load62, i32 0, i32 0
  %b.cur.len286 = load i64, ptr %b.cur.len285, align 8
  %b.cur.data287 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load62, i32 0, i32 1
  %b.cur.data288 = load ptr, ptr %b.cur.data287, align 8
  %b.new.buf.len289 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap84, i64 1)
  %sum90 = extractvalue { i64, i1 } %b.new.buf.len289, 0
  %ovf91 = extractvalue { i64, i1 } %b.new.buf.len289, 1
  br i1 %ovf91, label %str_overflow_abort93, label %b.new.buf.len292

b.nogrow278:                                      ; preds = %b.app.new.len71
  br label %b.grow_done79

b.grow_done79:                                    ; preds = %b.nogrow278, %b.new.buf.len292
  %b.app.data100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load62, i32 0, i32 1
  %b.app.data101 = load ptr, ptr %b.app.data100, align 8
  %b.app.dst102 = getelementptr i8, ptr %b.app.data101, i64 %b.app.cur.len67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst102, ptr align 1 %app.str.data65, i64 %app.str.len64, i1 false)
  %b.app.nul103 = getelementptr i8, ptr %b.app.data101, i64 %sum69
  store i8 0, ptr %b.app.nul103, align 1
  %b.len.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load62, i32 0, i32 0
  store i64 %sum69, ptr %b.len.gep104, align 8
  br label %choice.exit

b.new.buf.len292:                                 ; preds = %abort.dead94, %b.grow277
  %arena.cur95 = call ptr @dva_arena_current()
  %b.new.buf296 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 %sum90)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf296, ptr align 1 %b.cur.data288, i64 %b.cur.len286, i1 false)
  %b.grow2.nul97 = getelementptr i8, ptr %b.new.buf296, i64 %b.cur.len286
  store i8 0, ptr %b.grow2.nul97, align 1
  %b.new.data2.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load62, i32 0, i32 1
  store ptr %b.new.buf296, ptr %b.new.data2.gep98, align 8
  %b.new.cap2.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load62, i32 0, i32 2
  store i64 %b.new.cap84, ptr %b.new.cap2.gep99, align 8
  br label %b.grow_done79

str_overflow_abort93:                             ; preds = %b.grow277
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead94:                                     ; No predecessors!
  br label %b.new.buf.len292

choice.case105:                                   ; preds = %choice.next60
  %b.load108 = load ptr, ptr %var.b, align 8
  %app.str.len109 = load i64, ptr @str.28.struct, align 8
  %app.str.len110 = and i64 %app.str.len109, 281474976710655
  %app.str.data111 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %b.app.cur.len112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 0
  %b.app.cur.len113 = load i64, ptr %b.app.cur.len112, align 8
  %b.app.new.len114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len113, i64 %app.str.len110)
  %sum115 = extractvalue { i64, i1 } %b.app.new.len114, 0
  %ovf116 = extractvalue { i64, i1 } %b.app.new.len114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %b.app.new.len117

choice.next106:                                   ; preds = %choice.next60
  %val.match153 = icmp eq i64 %var.load22, 12
  br i1 %val.match153, label %choice.case151, label %choice.next152

b.app.new.len117:                                 ; preds = %abort.dead119, %choice.case105
  %b.cap120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 2
  %b.cap121 = load i64, ptr %b.cap120, align 8
  %b.need.grow122 = icmp slt i64 %b.cap121, %sum115
  br i1 %b.need.grow122, label %b.grow2123, label %b.nogrow2124

str_overflow_abort118:                            ; preds = %choice.case105
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %b.app.new.len117

b.grow2123:                                       ; preds = %b.app.new.len117
  %b.cap2126 = mul i64 %b.cap121, 2
  %b.cap.small127 = icmp slt i64 %b.cap2126, 16
  %b.cap.grow128 = select i1 %b.cap.small127, i64 16, i64 %b.cap2126
  %b.cap.need129 = icmp slt i64 %b.cap.grow128, %sum115
  %b.new.cap130 = select i1 %b.cap.need129, i64 %sum115, i64 %b.cap.grow128
  %b.cur.len2131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 0
  %b.cur.len2132 = load i64, ptr %b.cur.len2131, align 8
  %b.cur.data2133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 1
  %b.cur.data2134 = load ptr, ptr %b.cur.data2133, align 8
  %b.new.buf.len2135 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap130, i64 1)
  %sum136 = extractvalue { i64, i1 } %b.new.buf.len2135, 0
  %ovf137 = extractvalue { i64, i1 } %b.new.buf.len2135, 1
  br i1 %ovf137, label %str_overflow_abort139, label %b.new.buf.len2138

b.nogrow2124:                                     ; preds = %b.app.new.len117
  br label %b.grow_done125

b.grow_done125:                                   ; preds = %b.nogrow2124, %b.new.buf.len2138
  %b.app.data146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 1
  %b.app.data147 = load ptr, ptr %b.app.data146, align 8
  %b.app.dst148 = getelementptr i8, ptr %b.app.data147, i64 %b.app.cur.len113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst148, ptr align 1 %app.str.data111, i64 %app.str.len110, i1 false)
  %b.app.nul149 = getelementptr i8, ptr %b.app.data147, i64 %sum115
  store i8 0, ptr %b.app.nul149, align 1
  %b.len.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 0
  store i64 %sum115, ptr %b.len.gep150, align 8
  br label %choice.exit

b.new.buf.len2138:                                ; preds = %abort.dead140, %b.grow2123
  %arena.cur141 = call ptr @dva_arena_current()
  %b.new.buf2142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 %sum136)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2142, ptr align 1 %b.cur.data2134, i64 %b.cur.len2132, i1 false)
  %b.grow2.nul143 = getelementptr i8, ptr %b.new.buf2142, i64 %b.cur.len2132
  store i8 0, ptr %b.grow2.nul143, align 1
  %b.new.data2.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 1
  store ptr %b.new.buf2142, ptr %b.new.data2.gep144, align 8
  %b.new.cap2.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load108, i32 0, i32 2
  store i64 %b.new.cap130, ptr %b.new.cap2.gep145, align 8
  br label %b.grow_done125

str_overflow_abort139:                            ; preds = %b.grow2123
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead140:                                    ; No predecessors!
  br label %b.new.buf.len2138

choice.case151:                                   ; preds = %choice.next106
  %b.load154 = load ptr, ptr %var.b, align 8
  %app.str.len155 = load i64, ptr @str.29.struct, align 8
  %app.str.len156 = and i64 %app.str.len155, 281474976710655
  %app.str.data157 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %b.app.cur.len158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 0
  %b.app.cur.len159 = load i64, ptr %b.app.cur.len158, align 8
  %b.app.new.len160 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len159, i64 %app.str.len156)
  %sum161 = extractvalue { i64, i1 } %b.app.new.len160, 0
  %ovf162 = extractvalue { i64, i1 } %b.app.new.len160, 1
  br i1 %ovf162, label %str_overflow_abort164, label %b.app.new.len163

choice.next152:                                   ; preds = %choice.next106
  %val.match199 = icmp eq i64 %var.load22, 10
  br i1 %val.match199, label %choice.case197, label %choice.next198

b.app.new.len163:                                 ; preds = %abort.dead165, %choice.case151
  %b.cap166 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 2
  %b.cap167 = load i64, ptr %b.cap166, align 8
  %b.need.grow168 = icmp slt i64 %b.cap167, %sum161
  br i1 %b.need.grow168, label %b.grow2169, label %b.nogrow2170

str_overflow_abort164:                            ; preds = %choice.case151
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead165:                                    ; No predecessors!
  br label %b.app.new.len163

b.grow2169:                                       ; preds = %b.app.new.len163
  %b.cap2172 = mul i64 %b.cap167, 2
  %b.cap.small173 = icmp slt i64 %b.cap2172, 16
  %b.cap.grow174 = select i1 %b.cap.small173, i64 16, i64 %b.cap2172
  %b.cap.need175 = icmp slt i64 %b.cap.grow174, %sum161
  %b.new.cap176 = select i1 %b.cap.need175, i64 %sum161, i64 %b.cap.grow174
  %b.cur.len2177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 0
  %b.cur.len2178 = load i64, ptr %b.cur.len2177, align 8
  %b.cur.data2179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 1
  %b.cur.data2180 = load ptr, ptr %b.cur.data2179, align 8
  %b.new.buf.len2181 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap176, i64 1)
  %sum182 = extractvalue { i64, i1 } %b.new.buf.len2181, 0
  %ovf183 = extractvalue { i64, i1 } %b.new.buf.len2181, 1
  br i1 %ovf183, label %str_overflow_abort185, label %b.new.buf.len2184

b.nogrow2170:                                     ; preds = %b.app.new.len163
  br label %b.grow_done171

b.grow_done171:                                   ; preds = %b.nogrow2170, %b.new.buf.len2184
  %b.app.data192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 1
  %b.app.data193 = load ptr, ptr %b.app.data192, align 8
  %b.app.dst194 = getelementptr i8, ptr %b.app.data193, i64 %b.app.cur.len159
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst194, ptr align 1 %app.str.data157, i64 %app.str.len156, i1 false)
  %b.app.nul195 = getelementptr i8, ptr %b.app.data193, i64 %sum161
  store i8 0, ptr %b.app.nul195, align 1
  %b.len.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 0
  store i64 %sum161, ptr %b.len.gep196, align 8
  br label %choice.exit

b.new.buf.len2184:                                ; preds = %abort.dead186, %b.grow2169
  %arena.cur187 = call ptr @dva_arena_current()
  %b.new.buf2188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 %sum182)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2188, ptr align 1 %b.cur.data2180, i64 %b.cur.len2178, i1 false)
  %b.grow2.nul189 = getelementptr i8, ptr %b.new.buf2188, i64 %b.cur.len2178
  store i8 0, ptr %b.grow2.nul189, align 1
  %b.new.data2.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 1
  store ptr %b.new.buf2188, ptr %b.new.data2.gep190, align 8
  %b.new.cap2.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 2
  store i64 %b.new.cap176, ptr %b.new.cap2.gep191, align 8
  br label %b.grow_done171

str_overflow_abort185:                            ; preds = %b.grow2169
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead186:                                    ; No predecessors!
  br label %b.new.buf.len2184

choice.case197:                                   ; preds = %choice.next152
  %b.load200 = load ptr, ptr %var.b, align 8
  %app.str.len201 = load i64, ptr @str.30.struct, align 8
  %app.str.len202 = and i64 %app.str.len201, 281474976710655
  %app.str.data203 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %b.app.cur.len204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load200, i32 0, i32 0
  %b.app.cur.len205 = load i64, ptr %b.app.cur.len204, align 8
  %b.app.new.len206 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len205, i64 %app.str.len202)
  %sum207 = extractvalue { i64, i1 } %b.app.new.len206, 0
  %ovf208 = extractvalue { i64, i1 } %b.app.new.len206, 1
  br i1 %ovf208, label %str_overflow_abort210, label %b.app.new.len209

choice.next198:                                   ; preds = %choice.next152
  %val.match245 = icmp eq i64 %var.load22, 13
  br i1 %val.match245, label %choice.case243, label %choice.next244

b.app.new.len209:                                 ; preds = %abort.dead211, %choice.case197
  %b.cap212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load200, i32 0, i32 2
  %b.cap213 = load i64, ptr %b.cap212, align 8
  %b.need.grow214 = icmp slt i64 %b.cap213, %sum207
  br i1 %b.need.grow214, label %b.grow2215, label %b.nogrow2216

str_overflow_abort210:                            ; preds = %choice.case197
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead211:                                    ; No predecessors!
  br label %b.app.new.len209

b.grow2215:                                       ; preds = %b.app.new.len209
  %b.cap2218 = mul i64 %b.cap213, 2
  %b.cap.small219 = icmp slt i64 %b.cap2218, 16
  %b.cap.grow220 = select i1 %b.cap.small219, i64 16, i64 %b.cap2218
  %b.cap.need221 = icmp slt i64 %b.cap.grow220, %sum207
  %b.new.cap222 = select i1 %b.cap.need221, i64 %sum207, i64 %b.cap.grow220
  %b.cur.len2223 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load200, i32 0, i32 0
  %b.cur.len2224 = load i64, ptr %b.cur.len2223, align 8
  %b.cur.data2225 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load200, i32 0, i32 1
  %b.cur.data2226 = load ptr, ptr %b.cur.data2225, align 8
  %b.new.buf.len2227 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap222, i64 1)
  %sum228 = extractvalue { i64, i1 } %b.new.buf.len2227, 0
  %ovf229 = extractvalue { i64, i1 } %b.new.buf.len2227, 1
  br i1 %ovf229, label %str_overflow_abort231, label %b.new.buf.len2230

b.nogrow2216:                                     ; preds = %b.app.new.len209
  br label %b.grow_done217

b.grow_done217:                                   ; preds = %b.nogrow2216, %b.new.buf.len2230
  %b.app.data238 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load200, i32 0, i32 1
  %b.app.data239 = load ptr, ptr %b.app.data238, align 8
  %b.app.dst240 = getelementptr i8, ptr %b.app.data239, i64 %b.app.cur.len205
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst240, ptr align 1 %app.str.data203, i64 %app.str.len202, i1 false)
  %b.app.nul241 = getelementptr i8, ptr %b.app.data239, i64 %sum207
  store i8 0, ptr %b.app.nul241, align 1
  %b.len.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load200, i32 0, i32 0
  store i64 %sum207, ptr %b.len.gep242, align 8
  br label %choice.exit

b.new.buf.len2230:                                ; preds = %abort.dead232, %b.grow2215
  %arena.cur233 = call ptr @dva_arena_current()
  %b.new.buf2234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 %sum228)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2234, ptr align 1 %b.cur.data2226, i64 %b.cur.len2224, i1 false)
  %b.grow2.nul235 = getelementptr i8, ptr %b.new.buf2234, i64 %b.cur.len2224
  store i8 0, ptr %b.grow2.nul235, align 1
  %b.new.data2.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load200, i32 0, i32 1
  store ptr %b.new.buf2234, ptr %b.new.data2.gep236, align 8
  %b.new.cap2.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load200, i32 0, i32 2
  store i64 %b.new.cap222, ptr %b.new.cap2.gep237, align 8
  br label %b.grow_done217

str_overflow_abort231:                            ; preds = %b.grow2215
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead232:                                    ; No predecessors!
  br label %b.new.buf.len2230

choice.case243:                                   ; preds = %choice.next198
  %b.load246 = load ptr, ptr %var.b, align 8
  %app.str.len247 = load i64, ptr @str.31.struct, align 8
  %app.str.len248 = and i64 %app.str.len247, 281474976710655
  %app.str.data249 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %b.app.cur.len250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load246, i32 0, i32 0
  %b.app.cur.len251 = load i64, ptr %b.app.cur.len250, align 8
  %b.app.new.len252 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len251, i64 %app.str.len248)
  %sum253 = extractvalue { i64, i1 } %b.app.new.len252, 0
  %ovf254 = extractvalue { i64, i1 } %b.app.new.len252, 1
  br i1 %ovf254, label %str_overflow_abort256, label %b.app.new.len255

choice.next244:                                   ; preds = %choice.next198
  %val.match291 = icmp eq i64 %var.load22, 9
  br i1 %val.match291, label %choice.case289, label %choice.next290

b.app.new.len255:                                 ; preds = %abort.dead257, %choice.case243
  %b.cap258 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load246, i32 0, i32 2
  %b.cap259 = load i64, ptr %b.cap258, align 8
  %b.need.grow260 = icmp slt i64 %b.cap259, %sum253
  br i1 %b.need.grow260, label %b.grow2261, label %b.nogrow2262

str_overflow_abort256:                            ; preds = %choice.case243
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead257:                                    ; No predecessors!
  br label %b.app.new.len255

b.grow2261:                                       ; preds = %b.app.new.len255
  %b.cap2264 = mul i64 %b.cap259, 2
  %b.cap.small265 = icmp slt i64 %b.cap2264, 16
  %b.cap.grow266 = select i1 %b.cap.small265, i64 16, i64 %b.cap2264
  %b.cap.need267 = icmp slt i64 %b.cap.grow266, %sum253
  %b.new.cap268 = select i1 %b.cap.need267, i64 %sum253, i64 %b.cap.grow266
  %b.cur.len2269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load246, i32 0, i32 0
  %b.cur.len2270 = load i64, ptr %b.cur.len2269, align 8
  %b.cur.data2271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load246, i32 0, i32 1
  %b.cur.data2272 = load ptr, ptr %b.cur.data2271, align 8
  %b.new.buf.len2273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap268, i64 1)
  %sum274 = extractvalue { i64, i1 } %b.new.buf.len2273, 0
  %ovf275 = extractvalue { i64, i1 } %b.new.buf.len2273, 1
  br i1 %ovf275, label %str_overflow_abort277, label %b.new.buf.len2276

b.nogrow2262:                                     ; preds = %b.app.new.len255
  br label %b.grow_done263

b.grow_done263:                                   ; preds = %b.nogrow2262, %b.new.buf.len2276
  %b.app.data284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load246, i32 0, i32 1
  %b.app.data285 = load ptr, ptr %b.app.data284, align 8
  %b.app.dst286 = getelementptr i8, ptr %b.app.data285, i64 %b.app.cur.len251
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst286, ptr align 1 %app.str.data249, i64 %app.str.len248, i1 false)
  %b.app.nul287 = getelementptr i8, ptr %b.app.data285, i64 %sum253
  store i8 0, ptr %b.app.nul287, align 1
  %b.len.gep288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load246, i32 0, i32 0
  store i64 %sum253, ptr %b.len.gep288, align 8
  br label %choice.exit

b.new.buf.len2276:                                ; preds = %abort.dead278, %b.grow2261
  %arena.cur279 = call ptr @dva_arena_current()
  %b.new.buf2280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 %sum274)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2280, ptr align 1 %b.cur.data2272, i64 %b.cur.len2270, i1 false)
  %b.grow2.nul281 = getelementptr i8, ptr %b.new.buf2280, i64 %b.cur.len2270
  store i8 0, ptr %b.grow2.nul281, align 1
  %b.new.data2.gep282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load246, i32 0, i32 1
  store ptr %b.new.buf2280, ptr %b.new.data2.gep282, align 8
  %b.new.cap2.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load246, i32 0, i32 2
  store i64 %b.new.cap268, ptr %b.new.cap2.gep283, align 8
  br label %b.grow_done263

str_overflow_abort277:                            ; preds = %b.grow2261
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead278:                                    ; No predecessors!
  br label %b.new.buf.len2276

choice.case289:                                   ; preds = %choice.next244
  %b.load292 = load ptr, ptr %var.b, align 8
  %app.str.len293 = load i64, ptr @str.32.struct, align 8
  %app.str.len294 = and i64 %app.str.len293, 281474976710655
  %app.str.data295 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %b.app.cur.len296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 0
  %b.app.cur.len297 = load i64, ptr %b.app.cur.len296, align 8
  %b.app.new.len298 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len297, i64 %app.str.len294)
  %sum299 = extractvalue { i64, i1 } %b.app.new.len298, 0
  %ovf300 = extractvalue { i64, i1 } %b.app.new.len298, 1
  br i1 %ovf300, label %str_overflow_abort302, label %b.app.new.len301

choice.next290:                                   ; preds = %choice.next244
  %cmptmp = icmp slt i64 %var.load22, 32
  br i1 %cmptmp, label %choice.case335, label %choice.next336

b.app.new.len301:                                 ; preds = %abort.dead303, %choice.case289
  %b.cap304 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 2
  %b.cap305 = load i64, ptr %b.cap304, align 8
  %b.need.grow306 = icmp slt i64 %b.cap305, %sum299
  br i1 %b.need.grow306, label %b.grow2307, label %b.nogrow2308

str_overflow_abort302:                            ; preds = %choice.case289
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead303:                                    ; No predecessors!
  br label %b.app.new.len301

b.grow2307:                                       ; preds = %b.app.new.len301
  %b.cap2310 = mul i64 %b.cap305, 2
  %b.cap.small311 = icmp slt i64 %b.cap2310, 16
  %b.cap.grow312 = select i1 %b.cap.small311, i64 16, i64 %b.cap2310
  %b.cap.need313 = icmp slt i64 %b.cap.grow312, %sum299
  %b.new.cap314 = select i1 %b.cap.need313, i64 %sum299, i64 %b.cap.grow312
  %b.cur.len2315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 0
  %b.cur.len2316 = load i64, ptr %b.cur.len2315, align 8
  %b.cur.data2317 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 1
  %b.cur.data2318 = load ptr, ptr %b.cur.data2317, align 8
  %b.new.buf.len2319 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap314, i64 1)
  %sum320 = extractvalue { i64, i1 } %b.new.buf.len2319, 0
  %ovf321 = extractvalue { i64, i1 } %b.new.buf.len2319, 1
  br i1 %ovf321, label %str_overflow_abort323, label %b.new.buf.len2322

b.nogrow2308:                                     ; preds = %b.app.new.len301
  br label %b.grow_done309

b.grow_done309:                                   ; preds = %b.nogrow2308, %b.new.buf.len2322
  %b.app.data330 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 1
  %b.app.data331 = load ptr, ptr %b.app.data330, align 8
  %b.app.dst332 = getelementptr i8, ptr %b.app.data331, i64 %b.app.cur.len297
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst332, ptr align 1 %app.str.data295, i64 %app.str.len294, i1 false)
  %b.app.nul333 = getelementptr i8, ptr %b.app.data331, i64 %sum299
  store i8 0, ptr %b.app.nul333, align 1
  %b.len.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 0
  store i64 %sum299, ptr %b.len.gep334, align 8
  br label %choice.exit

b.new.buf.len2322:                                ; preds = %abort.dead324, %b.grow2307
  %arena.cur325 = call ptr @dva_arena_current()
  %b.new.buf2326 = call ptr @dva_arena_alloc(ptr %arena.cur325, i64 %sum320)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2326, ptr align 1 %b.cur.data2318, i64 %b.cur.len2316, i1 false)
  %b.grow2.nul327 = getelementptr i8, ptr %b.new.buf2326, i64 %b.cur.len2316
  store i8 0, ptr %b.grow2.nul327, align 1
  %b.new.data2.gep328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 1
  store ptr %b.new.buf2326, ptr %b.new.data2.gep328, align 8
  %b.new.cap2.gep329 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 2
  store i64 %b.new.cap314, ptr %b.new.cap2.gep329, align 8
  br label %b.grow_done309

str_overflow_abort323:                            ; preds = %b.grow2307
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead324:                                    ; No predecessors!
  br label %b.new.buf.len2322

choice.case335:                                   ; preds = %choice.next290
  %b.load337 = load ptr, ptr %var.b, align 8
  %app.str.len338 = load i64, ptr @str.33.struct, align 8
  %app.str.len339 = and i64 %app.str.len338, 281474976710655
  %app.str.data340 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %b.app.cur.len341 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 0
  %b.app.cur.len342 = load i64, ptr %b.app.cur.len341, align 8
  %b.app.new.len343 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len342, i64 %app.str.len339)
  %sum344 = extractvalue { i64, i1 } %b.app.new.len343, 0
  %ovf345 = extractvalue { i64, i1 } %b.app.new.len343, 1
  br i1 %ovf345, label %str_overflow_abort347, label %b.app.new.len346

choice.next336:                                   ; preds = %choice.next290
  %b.load513 = load ptr, ptr %var.b, align 8
  %var.load514 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load514, 0
  %b.b.le255 = icmp sle i64 %var.load514, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.app.new.len346:                                 ; preds = %abort.dead348, %choice.case335
  %b.cap349 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 2
  %b.cap350 = load i64, ptr %b.cap349, align 8
  %b.need.grow351 = icmp slt i64 %b.cap350, %sum344
  br i1 %b.need.grow351, label %b.grow2352, label %b.nogrow2353

str_overflow_abort347:                            ; preds = %choice.case335
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead348:                                    ; No predecessors!
  br label %b.app.new.len346

b.grow2352:                                       ; preds = %b.app.new.len346
  %b.cap2355 = mul i64 %b.cap350, 2
  %b.cap.small356 = icmp slt i64 %b.cap2355, 16
  %b.cap.grow357 = select i1 %b.cap.small356, i64 16, i64 %b.cap2355
  %b.cap.need358 = icmp slt i64 %b.cap.grow357, %sum344
  %b.new.cap359 = select i1 %b.cap.need358, i64 %sum344, i64 %b.cap.grow357
  %b.cur.len2360 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 0
  %b.cur.len2361 = load i64, ptr %b.cur.len2360, align 8
  %b.cur.data2362 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 1
  %b.cur.data2363 = load ptr, ptr %b.cur.data2362, align 8
  %b.new.buf.len2364 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap359, i64 1)
  %sum365 = extractvalue { i64, i1 } %b.new.buf.len2364, 0
  %ovf366 = extractvalue { i64, i1 } %b.new.buf.len2364, 1
  br i1 %ovf366, label %str_overflow_abort368, label %b.new.buf.len2367

b.nogrow2353:                                     ; preds = %b.app.new.len346
  br label %b.grow_done354

b.grow_done354:                                   ; preds = %b.nogrow2353, %b.new.buf.len2367
  %b.app.data375 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 1
  %b.app.data376 = load ptr, ptr %b.app.data375, align 8
  %b.app.dst377 = getelementptr i8, ptr %b.app.data376, i64 %b.app.cur.len342
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst377, ptr align 1 %app.str.data340, i64 %app.str.len339, i1 false)
  %b.app.nul378 = getelementptr i8, ptr %b.app.data376, i64 %sum344
  store i8 0, ptr %b.app.nul378, align 1
  %b.len.gep379 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 0
  store i64 %sum344, ptr %b.len.gep379, align 8
  %b.load380 = load ptr, ptr %var.b, align 8
  %var.load381 = load i64, ptr %var.c, align 8
  %shrtmp = lshr i64 %var.load381, 4
  %call.res = call i32 @"json::#hex_digit"(i64 %shrtmp)
  %coerce.sext = sext i32 %call.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load380, i32 0, i32 0
  %b.rn.cur.len383 = load i64, ptr %b.rn.cur.len382, align 8
  %b.rn.new.len384 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len383, i64 %br.width)
  %sum385 = extractvalue { i64, i1 } %b.rn.new.len384, 0
  %ovf386 = extractvalue { i64, i1 } %b.rn.new.len384, 1
  br i1 %ovf386, label %str_overflow_abort388, label %b.rn.new.len387

b.new.buf.len2367:                                ; preds = %abort.dead369, %b.grow2352
  %arena.cur370 = call ptr @dva_arena_current()
  %b.new.buf2371 = call ptr @dva_arena_alloc(ptr %arena.cur370, i64 %sum365)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2371, ptr align 1 %b.cur.data2363, i64 %b.cur.len2361, i1 false)
  %b.grow2.nul372 = getelementptr i8, ptr %b.new.buf2371, i64 %b.cur.len2361
  store i8 0, ptr %b.grow2.nul372, align 1
  %b.new.data2.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 1
  store ptr %b.new.buf2371, ptr %b.new.data2.gep373, align 8
  %b.new.cap2.gep374 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 2
  store i64 %b.new.cap359, ptr %b.new.cap2.gep374, align 8
  br label %b.grow_done354

str_overflow_abort368:                            ; preds = %b.grow2352
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead369:                                    ; No predecessors!
  br label %b.new.buf.len2367

b.rn.new.len387:                                  ; preds = %abort.dead389, %b.grow_done354
  %b.cap390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load380, i32 0, i32 2
  %b.cap391 = load i64, ptr %b.cap390, align 8
  %b.need.grow392 = icmp slt i64 %b.cap391, %sum385
  br i1 %b.need.grow392, label %b.grow2393, label %b.nogrow2394

str_overflow_abort388:                            ; preds = %b.grow_done354
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
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
  %b.cur.len2401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load380, i32 0, i32 0
  %b.cur.len2402 = load i64, ptr %b.cur.len2401, align 8
  %b.cur.data2403 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load380, i32 0, i32 1
  %b.cur.data2404 = load ptr, ptr %b.cur.data2403, align 8
  %b.new.buf.len2405 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap400, i64 1)
  %sum406 = extractvalue { i64, i1 } %b.new.buf.len2405, 0
  %ovf407 = extractvalue { i64, i1 } %b.new.buf.len2405, 1
  br i1 %ovf407, label %str_overflow_abort409, label %b.new.buf.len2408

b.nogrow2394:                                     ; preds = %b.rn.new.len387
  br label %b.grow_done395

b.grow_done395:                                   ; preds = %b.nogrow2394, %b.new.buf.len2408
  %b.rn.data416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load380, i32 0, i32 1
  %b.rn.data417 = load ptr, ptr %b.rn.data416, align 8
  %b.rn.dst418 = getelementptr i8, ptr %b.rn.data417, i64 %b.rn.cur.len383
  br i1 %br.cmp1, label %br.b1.133, label %br.c2.133

b.new.buf.len2408:                                ; preds = %abort.dead410, %b.grow2393
  %arena.cur411 = call ptr @dva_arena_current()
  %b.new.buf2412 = call ptr @dva_arena_alloc(ptr %arena.cur411, i64 %sum406)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2412, ptr align 1 %b.cur.data2404, i64 %b.cur.len2402, i1 false)
  %b.grow2.nul413 = getelementptr i8, ptr %b.new.buf2412, i64 %b.cur.len2402
  store i8 0, ptr %b.grow2.nul413, align 1
  %b.new.data2.gep414 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load380, i32 0, i32 1
  store ptr %b.new.buf2412, ptr %b.new.data2.gep414, align 8
  %b.new.cap2.gep415 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load380, i32 0, i32 2
  store i64 %b.new.cap400, ptr %b.new.cap2.gep415, align 8
  br label %b.grow_done395

str_overflow_abort409:                            ; preds = %b.grow2393
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead410:                                    ; No predecessors!
  br label %b.new.buf.len2408

br.b1.133:                                        ; preds = %b.grow_done395
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst418, align 1
  br label %br.done.133

br.c2.133:                                        ; preds = %b.grow_done395
  br i1 %br.cmp2, label %br.b2.133, label %br.c3.133

br.b2.133:                                        ; preds = %br.c2.133
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst418, align 1
  %br.dst1419 = getelementptr i8, ptr %b.rn.dst418, i64 1
  store i8 %br.b2.1t, ptr %br.dst1419, align 1
  br label %br.done.133

br.c3.133:                                        ; preds = %br.c2.133
  br i1 %br.cmp3, label %br.b3.133, label %br.b4.133

br.b3.133:                                        ; preds = %br.c3.133
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
  store i8 %br.b3.0t, ptr %b.rn.dst418, align 1
  %br.dst1.3420 = getelementptr i8, ptr %b.rn.dst418, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3420, align 1
  %br.dst2.3421 = getelementptr i8, ptr %b.rn.dst418, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3421, align 1
  br label %br.done.133

br.b4.133:                                        ; preds = %br.c3.133
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
  store i8 %br.b4.0t, ptr %b.rn.dst418, align 1
  %br.dst1.4422 = getelementptr i8, ptr %b.rn.dst418, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4422, align 1
  %br.dst2.4423 = getelementptr i8, ptr %b.rn.dst418, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4423, align 1
  %br.dst3.4424 = getelementptr i8, ptr %b.rn.dst418, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4424, align 1
  br label %br.done.133

br.done.133:                                      ; preds = %br.b4.133, %br.b3.133, %br.b2.133, %br.b1.133
  %br.nul425 = getelementptr i8, ptr %b.rn.data417, i64 %sum385
  store i8 0, ptr %br.nul425, align 1
  %b.len.gep426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load380, i32 0, i32 0
  store i64 %sum385, ptr %b.len.gep426, align 8
  %b.load427 = load ptr, ptr %var.b, align 8
  %var.load428 = load i64, ptr %var.c, align 8
  %call.res429 = call i32 @"json::#hex_digit"(i64 %var.load428)
  %coerce.sext430 = sext i32 %call.res429 to i64
  %br.cmp1431 = icmp slt i64 %coerce.sext430, 128
  %br.cmp2432 = icmp slt i64 %coerce.sext430, 2048
  %br.cmp3433 = icmp slt i64 %coerce.sext430, 65536
  %br.w3434 = select i1 %br.cmp3433, i64 3, i64 4
  %br.w2435 = select i1 %br.cmp2432, i64 2, i64 %br.w3434
  %br.width436 = select i1 %br.cmp1431, i64 1, i64 %br.w2435
  %b.rn.cur.len437 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load427, i32 0, i32 0
  %b.rn.cur.len438 = load i64, ptr %b.rn.cur.len437, align 8
  %b.rn.new.len439 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len438, i64 %br.width436)
  %sum440 = extractvalue { i64, i1 } %b.rn.new.len439, 0
  %ovf441 = extractvalue { i64, i1 } %b.rn.new.len439, 1
  br i1 %ovf441, label %str_overflow_abort443, label %b.rn.new.len442

b.rn.new.len442:                                  ; preds = %abort.dead444, %br.done.133
  %b.cap445 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load427, i32 0, i32 2
  %b.cap446 = load i64, ptr %b.cap445, align 8
  %b.need.grow447 = icmp slt i64 %b.cap446, %sum440
  br i1 %b.need.grow447, label %b.grow2448, label %b.nogrow2449

str_overflow_abort443:                            ; preds = %br.done.133
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead444:                                    ; No predecessors!
  br label %b.rn.new.len442

b.grow2448:                                       ; preds = %b.rn.new.len442
  %b.cap2451 = mul i64 %b.cap446, 2
  %b.cap.small452 = icmp slt i64 %b.cap2451, 16
  %b.cap.grow453 = select i1 %b.cap.small452, i64 16, i64 %b.cap2451
  %b.cap.need454 = icmp slt i64 %b.cap.grow453, %sum440
  %b.new.cap455 = select i1 %b.cap.need454, i64 %sum440, i64 %b.cap.grow453
  %b.cur.len2456 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load427, i32 0, i32 0
  %b.cur.len2457 = load i64, ptr %b.cur.len2456, align 8
  %b.cur.data2458 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load427, i32 0, i32 1
  %b.cur.data2459 = load ptr, ptr %b.cur.data2458, align 8
  %b.new.buf.len2460 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap455, i64 1)
  %sum461 = extractvalue { i64, i1 } %b.new.buf.len2460, 0
  %ovf462 = extractvalue { i64, i1 } %b.new.buf.len2460, 1
  br i1 %ovf462, label %str_overflow_abort464, label %b.new.buf.len2463

b.nogrow2449:                                     ; preds = %b.rn.new.len442
  br label %b.grow_done450

b.grow_done450:                                   ; preds = %b.nogrow2449, %b.new.buf.len2463
  %b.rn.data471 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load427, i32 0, i32 1
  %b.rn.data472 = load ptr, ptr %b.rn.data471, align 8
  %b.rn.dst473 = getelementptr i8, ptr %b.rn.data472, i64 %b.rn.cur.len438
  br i1 %br.cmp1431, label %br.b1.134, label %br.c2.134

b.new.buf.len2463:                                ; preds = %abort.dead465, %b.grow2448
  %arena.cur466 = call ptr @dva_arena_current()
  %b.new.buf2467 = call ptr @dva_arena_alloc(ptr %arena.cur466, i64 %sum461)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2467, ptr align 1 %b.cur.data2459, i64 %b.cur.len2457, i1 false)
  %b.grow2.nul468 = getelementptr i8, ptr %b.new.buf2467, i64 %b.cur.len2457
  store i8 0, ptr %b.grow2.nul468, align 1
  %b.new.data2.gep469 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load427, i32 0, i32 1
  store ptr %b.new.buf2467, ptr %b.new.data2.gep469, align 8
  %b.new.cap2.gep470 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load427, i32 0, i32 2
  store i64 %b.new.cap455, ptr %b.new.cap2.gep470, align 8
  br label %b.grow_done450

str_overflow_abort464:                            ; preds = %b.grow2448
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead465:                                    ; No predecessors!
  br label %b.new.buf.len2463

br.b1.134:                                        ; preds = %b.grow_done450
  %br.b1.0474 = trunc i64 %coerce.sext430 to i8
  store i8 %br.b1.0474, ptr %b.rn.dst473, align 1
  br label %br.done.134

br.c2.134:                                        ; preds = %b.grow_done450
  br i1 %br.cmp2432, label %br.b2.134, label %br.c3.134

br.b2.134:                                        ; preds = %br.c2.134
  %br.sh6475 = lshr i64 %coerce.sext430, 6
  %br.b2.0476 = or i64 %br.sh6475, 192
  %br.b2.0t477 = trunc i64 %br.b2.0476 to i8
  %br.m6478 = and i64 %coerce.sext430, 63
  %br.b2.1479 = or i64 %br.m6478, 128
  %br.b2.1t480 = trunc i64 %br.b2.1479 to i8
  store i8 %br.b2.0t477, ptr %b.rn.dst473, align 1
  %br.dst1481 = getelementptr i8, ptr %b.rn.dst473, i64 1
  store i8 %br.b2.1t480, ptr %br.dst1481, align 1
  br label %br.done.134

br.c3.134:                                        ; preds = %br.c2.134
  br i1 %br.cmp3433, label %br.b3.134, label %br.b4.134

br.b3.134:                                        ; preds = %br.c3.134
  %br.sh12482 = lshr i64 %coerce.sext430, 12
  %br.b3.0483 = or i64 %br.sh12482, 224
  %br.b3.0t484 = trunc i64 %br.b3.0483 to i8
  %br.sh6.3485 = lshr i64 %coerce.sext430, 6
  %br.m6.3486 = and i64 %br.sh6.3485, 63
  %br.b3.1487 = or i64 %br.m6.3486, 128
  %br.b3.1t488 = trunc i64 %br.b3.1487 to i8
  %br.mend489 = and i64 %coerce.sext430, 63
  %br.b3.2490 = or i64 %br.mend489, 128
  %br.b3.2t491 = trunc i64 %br.b3.2490 to i8
  store i8 %br.b3.0t484, ptr %b.rn.dst473, align 1
  %br.dst1.3492 = getelementptr i8, ptr %b.rn.dst473, i64 1
  store i8 %br.b3.1t488, ptr %br.dst1.3492, align 1
  %br.dst2.3493 = getelementptr i8, ptr %b.rn.dst473, i64 2
  store i8 %br.b3.2t491, ptr %br.dst2.3493, align 1
  br label %br.done.134

br.b4.134:                                        ; preds = %br.c3.134
  %br.sh18494 = lshr i64 %coerce.sext430, 18
  %br.b4.0495 = or i64 %br.sh18494, 240
  %br.b4.0t496 = trunc i64 %br.b4.0495 to i8
  %br.sh12.4497 = lshr i64 %coerce.sext430, 12
  %br.m12.4498 = and i64 %br.sh12.4497, 63
  %br.b4.1499 = or i64 %br.m12.4498, 128
  %br.b4.1t500 = trunc i64 %br.b4.1499 to i8
  %br.sh6.4501 = lshr i64 %coerce.sext430, 6
  %br.m6.4502 = and i64 %br.sh6.4501, 63
  %br.b4.2503 = or i64 %br.m6.4502, 128
  %br.b4.2t504 = trunc i64 %br.b4.2503 to i8
  %br.mend4505 = and i64 %coerce.sext430, 63
  %br.b4.3506 = or i64 %br.mend4505, 128
  %br.b4.3t507 = trunc i64 %br.b4.3506 to i8
  store i8 %br.b4.0t496, ptr %b.rn.dst473, align 1
  %br.dst1.4508 = getelementptr i8, ptr %b.rn.dst473, i64 1
  store i8 %br.b4.1t500, ptr %br.dst1.4508, align 1
  %br.dst2.4509 = getelementptr i8, ptr %b.rn.dst473, i64 2
  store i8 %br.b4.2t504, ptr %br.dst2.4509, align 1
  %br.dst3.4510 = getelementptr i8, ptr %b.rn.dst473, i64 3
  store i8 %br.b4.3t507, ptr %br.dst3.4510, align 1
  br label %br.done.134

br.done.134:                                      ; preds = %br.b4.134, %br.b3.134, %br.b2.134, %br.b1.134
  %br.nul511 = getelementptr i8, ptr %b.rn.data472, i64 %sum440
  store i8 0, ptr %br.nul511, align 1
  %b.len.gep512 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load427, i32 0, i32 0
  store i64 %sum440, ptr %b.len.gep512, align 8
  br label %choice.exit

b.byte_ok:                                        ; preds = %abort.dead515, %choice.next336
  %b.byte.i8 = trunc i64 %var.load514 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 0
  %b.len516 = load i64, ptr %b.len, align 8
  %b.cap517 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 2
  %b.cap518 = load i64, ptr %b.cap517, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 1
  %b.data519 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len516, %b.cap518
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next336
  %26 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead515:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2520 = mul i64 %b.cap518, 2
  %b.cap.small521 = icmp slt i64 %b.cap2520, 16
  %b.new.cap522 = select i1 %b.cap.small521, i64 16, i64 %b.cap2520
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap522, i64 1)
  %sum523 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf524 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf524, label %str_overflow_abort526, label %b.new.buf.len525

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len525
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 1
  %b.cur.data529 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 0
  %b.cur.len530 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data529, i64 %b.cur.len530
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len530, 1
  %b.nul = getelementptr i8, ptr %b.cur.data529, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep531 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep531, align 8
  br label %choice.exit

b.new.buf.len525:                                 ; preds = %abort.dead527, %b.grow
  %arena.cur528 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur528, i64 %sum523)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data519, i64 %b.len516, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len516
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load513, i32 0, i32 2
  store i64 %b.new.cap522, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort526:                            ; preds = %b.grow
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead527:                                    ; No predecessors!
  br label %b.new.buf.len525

b.rn.new.len538:                                  ; preds = %abort.dead540, %loop.exit.132
  %b.cap541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 2
  %b.cap542 = load i64, ptr %b.cap541, align 8
  %b.need.grow543 = icmp slt i64 %b.cap542, %sum536
  br i1 %b.need.grow543, label %b.grow2544, label %b.nogrow2545

str_overflow_abort539:                            ; preds = %loop.exit.132
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead540:                                    ; No predecessors!
  br label %b.rn.new.len538

b.grow2544:                                       ; preds = %b.rn.new.len538
  %b.cap2547 = mul i64 %b.cap542, 2
  %b.cap.small548 = icmp slt i64 %b.cap2547, 16
  %b.cap.grow549 = select i1 %b.cap.small548, i64 16, i64 %b.cap2547
  %b.cap.need550 = icmp slt i64 %b.cap.grow549, %sum536
  %b.new.cap551 = select i1 %b.cap.need550, i64 %sum536, i64 %b.cap.grow549
  %b.cur.len2552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 0
  %b.cur.len2553 = load i64, ptr %b.cur.len2552, align 8
  %b.cur.data2554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 1
  %b.cur.data2555 = load ptr, ptr %b.cur.data2554, align 8
  %b.new.buf.len2556 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap551, i64 1)
  %sum557 = extractvalue { i64, i1 } %b.new.buf.len2556, 0
  %ovf558 = extractvalue { i64, i1 } %b.new.buf.len2556, 1
  br i1 %ovf558, label %str_overflow_abort560, label %b.new.buf.len2559

b.nogrow2545:                                     ; preds = %b.rn.new.len538
  br label %b.grow_done546

b.grow_done546:                                   ; preds = %b.nogrow2545, %b.new.buf.len2559
  %b.rn.data567 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 1
  %b.rn.data568 = load ptr, ptr %b.rn.data567, align 8
  %b.rn.dst569 = getelementptr i8, ptr %b.rn.data568, i64 %b.rn.cur.len534
  br i1 true, label %br.b1.135, label %br.c2.135

b.new.buf.len2559:                                ; preds = %abort.dead561, %b.grow2544
  %arena.cur562 = call ptr @dva_arena_current()
  %b.new.buf2563 = call ptr @dva_arena_alloc(ptr %arena.cur562, i64 %sum557)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2563, ptr align 1 %b.cur.data2555, i64 %b.cur.len2553, i1 false)
  %b.grow2.nul564 = getelementptr i8, ptr %b.new.buf2563, i64 %b.cur.len2553
  store i8 0, ptr %b.grow2.nul564, align 1
  %b.new.data2.gep565 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 1
  store ptr %b.new.buf2563, ptr %b.new.data2.gep565, align 8
  %b.new.cap2.gep566 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 2
  store i64 %b.new.cap551, ptr %b.new.cap2.gep566, align 8
  br label %b.grow_done546

str_overflow_abort560:                            ; preds = %b.grow2544
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead561:                                    ; No predecessors!
  br label %b.new.buf.len2559

br.b1.135:                                        ; preds = %b.grow_done546
  store i8 34, ptr %b.rn.dst569, align 1
  br label %br.done.135

br.c2.135:                                        ; preds = %b.grow_done546
  br i1 true, label %br.b2.135, label %br.c3.135

br.b2.135:                                        ; preds = %br.c2.135
  store i8 -64, ptr %b.rn.dst569, align 1
  %br.dst1570 = getelementptr i8, ptr %b.rn.dst569, i64 1
  store i8 -94, ptr %br.dst1570, align 1
  br label %br.done.135

br.c3.135:                                        ; preds = %br.c2.135
  br i1 true, label %br.b3.135, label %br.b4.135

br.b3.135:                                        ; preds = %br.c3.135
  store i8 -32, ptr %b.rn.dst569, align 1
  %br.dst1.3571 = getelementptr i8, ptr %b.rn.dst569, i64 1
  store i8 -128, ptr %br.dst1.3571, align 1
  %br.dst2.3572 = getelementptr i8, ptr %b.rn.dst569, i64 2
  store i8 -94, ptr %br.dst2.3572, align 1
  br label %br.done.135

br.b4.135:                                        ; preds = %br.c3.135
  store i8 -16, ptr %b.rn.dst569, align 1
  %br.dst1.4573 = getelementptr i8, ptr %b.rn.dst569, i64 1
  store i8 -128, ptr %br.dst1.4573, align 1
  %br.dst2.4574 = getelementptr i8, ptr %b.rn.dst569, i64 2
  store i8 -128, ptr %br.dst2.4574, align 1
  %br.dst3.4575 = getelementptr i8, ptr %b.rn.dst569, i64 3
  store i8 -94, ptr %br.dst3.4575, align 1
  br label %br.done.135

br.done.135:                                      ; preds = %br.b4.135, %br.b3.135, %br.b2.135, %br.b1.135
  %br.nul576 = getelementptr i8, ptr %b.rn.data568, i64 %sum536
  store i8 0, ptr %br.nul576, align 1
  %b.len.gep577 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load532, i32 0, i32 0
  store i64 %sum536, ptr %b.len.gep577, align 8
  ret void
}

define { i64, ptr } @"json::escape_string"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
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

b.buf.len4:                                       ; preds = %abort.dead5, %str_ok
  %arena.cur6 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load7 = load ptr, ptr %var.b, align 8
  %var.load8 = load ptr, ptr %var.s, align 8
  call void @"json::escape_string_into"(ptr %var.load7, ptr %var.load8)
  %var.load9 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 0
  %b.freeze.len10 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 1
  %b.freeze.data11 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %str_ok
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead5:                                      ; No predecessors!
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data11, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data11, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data11, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len10, 1
  %arena.cur12 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data11, i64 %b.freeze.len10, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len10
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len4
  %b.freeze.data13 = phi ptr [ %b.freeze.data11, %b.buf.len4 ], [ %b.freeze.data11, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len10, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data13, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load9, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"json::format_number"(double %0) #0 {
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
  %ret.pack = load { i64, ptr }, ptr @str.17.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load double, ptr %var.f, align 8
  %var.load3 = load double, ptr @"var.const::max_f64", align 8
  %fcmptmp4 = fcmp ogt double %var.load2, %var.load3
  br i1 %fcmptmp4, label %or.136.then, label %or.136.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

or.136.then:                                      ; preds = %choice.exit
  br label %or.136.exit

or.136.else:                                      ; preds = %choice.exit
  %var.load5 = load double, ptr %var.f, align 8
  %var.load6 = load double, ptr @"var.const::max_f64", align 8
  %fnegtmp = fneg double %var.load6
  %fcmptmp7 = fcmp olt double %var.load5, %fnegtmp
  br label %or.136.exit

or.136.exit:                                      ; preds = %or.136.else, %or.136.then
  %or.136.phi = phi i1 [ %fcmptmp4, %or.136.then ], [ %fcmptmp7, %or.136.else ]
  br i1 %or.136.phi, label %choice.then8, label %choice.exit9

choice.then8:                                     ; preds = %or.136.exit
  %ret.pack10 = load { i64, ptr }, ptr @str.17.struct, align 8
  ret { i64, ptr } %ret.pack10

choice.exit9:                                     ; preds = %ret.dead11, %or.136.exit
  %var.load12 = load double, ptr %var.f, align 8
  %cast.fptosi = fptosi double %var.load12 to i64
  store i64 %cast.fptosi, ptr %var.iv, align 8
  %var.load13 = load i64, ptr %var.iv, align 8
  %cast.sitofp = sitofp i64 %var.load13 to double
  %var.load14 = load double, ptr %var.f, align 8
  %fcmptmp15 = fcmp oeq double %cast.sitofp, %var.load14
  br i1 %fcmptmp15, label %and.137.then, label %and.137.else

ret.dead11:                                       ; No predecessors!
  br label %choice.exit9

and.137.then:                                     ; preds = %choice.exit9
  %var.load16 = load i64, ptr %var.iv, align 8
  %var.load18 = load i64, ptr @"var.const::max_safe_int", align 8
  %negtmp = sub i64 0, %var.load18
  %cmptmp = icmp sge i64 %var.load16, %negtmp
  br i1 %cmptmp, label %and.138.then, label %and.138.else

and.137.else:                                     ; preds = %choice.exit9
  br label %and.137.exit

and.137.exit:                                     ; preds = %and.137.else, %choice.exit17
  %and.137.phi = phi i1 [ %choice.res, %choice.exit17 ], [ %fcmptmp15, %and.137.else ]
  br i1 %and.137.phi, label %choice.then21, label %choice.else

choice.exit17:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.137.exit

choice.case:                                      ; preds = %and.138.exit
  br label %choice.exit17

choice.next:                                      ; preds = %and.138.exit
  br label %choice.exit17

and.138.then:                                     ; preds = %and.137.then
  %var.load19 = load i64, ptr @"var.const::max_safe_int", align 8
  %cmptmp20 = icmp sle i64 %var.load16, %var.load19
  br label %and.138.exit

and.138.else:                                     ; preds = %and.137.then
  br label %and.138.exit

and.138.exit:                                     ; preds = %and.138.else, %and.138.then
  %and.138.phi = phi i1 [ %cmptmp20, %and.138.then ], [ %cmptmp, %and.138.else ]
  br i1 %and.138.phi, label %choice.case, label %choice.next

choice.then21:                                    ; preds = %and.137.exit
  %var.load23 = load i64, ptr %var.iv, align 8
  %call.res = call { i64, ptr } @"str::from_int"(i64 %var.load23)
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit22

choice.else:                                      ; preds = %and.137.exit
  %var.load24 = load double, ptr %var.f, align 8
  %call.res25 = call { i64, ptr } @"str::from_float"(double %var.load24)
  %arena.cur26 = call ptr @dva_arena_current()
  %ret.ub.alloc27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  store { i64, ptr } %call.res25, ptr %ret.ub.alloc27, align 8
  store ptr %ret.ub.alloc27, ptr %var.s, align 8
  %var.load28 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.lhs.len32 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len33 = and i64 %eq.lhs.len32, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len32, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit22:                                    ; preds = %choice.exit29, %choice.then21
  %choice.res92 = phi ptr [ %ret.ub.alloc, %choice.then21 ], [ %choice.res91, %choice.exit29 ]
  %ret.pack93 = load { i64, ptr }, ptr %choice.res92, align 8
  ret { i64, ptr } %ret.pack93

choice.exit29:                                    ; preds = %choice.next31, %choice.case30
  %choice.res91 = phi ptr [ @str.17.struct, %choice.case30 ], [ %var.load90, %choice.next31 ]
  br label %choice.exit22

choice.case30:                                    ; preds = %str.eq.merge82
  br label %choice.exit29

choice.next31:                                    ; preds = %str.eq.merge82
  %var.load90 = load ptr, ptr %var.s, align 8
  br label %choice.exit29

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.34.struct, align 8
  %eq.rhs.len35 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len33, %eq.rhs.len35
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check:                                    ; preds = %choice.else
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur34 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur34, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data36 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data36, ptr %eq.rhs.data, i64 %eq.lhs.len33)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len37 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.lhs.len38 = load i64, ptr %eq.lhs.len37, align 8
  %eq.lhs.len39 = and i64 %eq.lhs.len38, 281474976710655
  %str.tag40 = lshr i64 %eq.lhs.len38, 48
  %tag.immortal42 = icmp eq i64 %str.tag40, 0
  br i1 %tag.immortal42, label %str_ok41, label %tag.gen_check43

str_ok41:                                         ; preds = %abort.dead50, %tag.slow_check44, %tag.gen_check43, %str.eq.merge
  %eq.rhs.len51 = load i64, ptr @str.35.struct, align 8
  %eq.rhs.len52 = and i64 %eq.rhs.len51, 281474976710655
  %eq.len53 = icmp eq i64 %eq.lhs.len39, %eq.rhs.len52
  br i1 %eq.len53, label %str.eq.then54, label %str.eq.else55

tag.gen_check43:                                  ; preds = %str.eq.merge
  %active.gen46 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok47 = icmp eq i64 %str.tag40, %active.gen46
  br i1 %tag.fast.ok47, label %str_ok41, label %tag.slow_check44

tag.slow_check44:                                 ; preds = %tag.gen_check43
  %arena.cur48 = call ptr @dva_arena_current()
  %tag.valid49 = call i1 @dva_arena_validate_tag(ptr %arena.cur48, i64 %str.tag40)
  br i1 %tag.valid49, label %str_ok41, label %tag.stale45

tag.stale45:                                      ; preds = %tag.slow_check44
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %str_ok41

str.eq.then54:                                    ; preds = %str_ok41
  %eq.lhs.data57 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data58 = load ptr, ptr %eq.lhs.data57, align 8
  %eq.rhs.data59 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %eq.memcmp60 = call i32 @memcmp(ptr %eq.lhs.data58, ptr %eq.rhs.data59, i64 %eq.lhs.len39)
  %eq.cmp.zero61 = icmp eq i32 %eq.memcmp60, 0
  br label %str.eq.merge56

str.eq.else55:                                    ; preds = %str_ok41
  br label %str.eq.merge56

str.eq.merge56:                                   ; preds = %str.eq.else55, %str.eq.then54
  %str.eq.result62 = phi i1 [ %eq.cmp.zero61, %str.eq.then54 ], [ false, %str.eq.else55 ]
  %case.or = or i1 %str.eq.result, %str.eq.result62
  %eq.lhs.len63 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.lhs.len64 = load i64, ptr %eq.lhs.len63, align 8
  %eq.lhs.len65 = and i64 %eq.lhs.len64, 281474976710655
  %str.tag66 = lshr i64 %eq.lhs.len64, 48
  %tag.immortal68 = icmp eq i64 %str.tag66, 0
  br i1 %tag.immortal68, label %str_ok67, label %tag.gen_check69

str_ok67:                                         ; preds = %abort.dead76, %tag.slow_check70, %tag.gen_check69, %str.eq.merge56
  %eq.rhs.len77 = load i64, ptr @str.36.struct, align 8
  %eq.rhs.len78 = and i64 %eq.rhs.len77, 281474976710655
  %eq.len79 = icmp eq i64 %eq.lhs.len65, %eq.rhs.len78
  br i1 %eq.len79, label %str.eq.then80, label %str.eq.else81

tag.gen_check69:                                  ; preds = %str.eq.merge56
  %active.gen72 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok73 = icmp eq i64 %str.tag66, %active.gen72
  br i1 %tag.fast.ok73, label %str_ok67, label %tag.slow_check70

tag.slow_check70:                                 ; preds = %tag.gen_check69
  %arena.cur74 = call ptr @dva_arena_current()
  %tag.valid75 = call i1 @dva_arena_validate_tag(ptr %arena.cur74, i64 %str.tag66)
  br i1 %tag.valid75, label %str_ok67, label %tag.stale71

tag.stale71:                                      ; preds = %tag.slow_check70
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead76:                                     ; No predecessors!
  br label %str_ok67

str.eq.then80:                                    ; preds = %str_ok67
  %eq.lhs.data83 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data84 = load ptr, ptr %eq.lhs.data83, align 8
  %eq.rhs.data85 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %eq.memcmp86 = call i32 @memcmp(ptr %eq.lhs.data84, ptr %eq.rhs.data85, i64 %eq.lhs.len65)
  %eq.cmp.zero87 = icmp eq i32 %eq.memcmp86, 0
  br label %str.eq.merge82

str.eq.else81:                                    ; preds = %str_ok67
  br label %str.eq.merge82

str.eq.merge82:                                   ; preds = %str.eq.else81, %str.eq.then80
  %str.eq.result88 = phi i1 [ %eq.cmp.zero87, %str.eq.then80 ], [ false, %str.eq.else81 ]
  %case.or89 = or i1 %case.or, %str.eq.result88
  br i1 %case.or89, label %choice.case30, label %choice.next31
}

declare { i64, ptr } @"str::from_int"(i64) #0

declare { i64, ptr } @"str::from_float"(double) #0

define internal void @"json::#stringify_into"(ptr %0, ptr %1) #0 {
entry:
  %var._352 = alloca ptr, align 8
  %var._i351 = alloca i64, align 8
  %var.i345 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.144 = alloca i64, align 8
  %loop.idx.144 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._292 = alloca ptr, align 8
  %var._187 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.140 = alloca i64, align 8
  %loop.idx.140 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._150 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._36 = alloca i1, align 1
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

choice.exit:                                      ; preds = %choice.next286, %br.done.147, %br.done.142, %b.grow_done117, %b.grow_done69, %b.grow_done, %choice.case
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
  %tag.gep31 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id32 = load i64, ptr %tag.gep31, align 8
  %tag.match33 = icmp eq i64 %tag.id32, 2
  br i1 %tag.match33, label %choice.case29, label %choice.next30

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
  %call.res = call { i64, ptr } @"json::format_number"(double %var.load11)
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %app.str.len12 = load i64, ptr %app.str.len, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %str.tag = lshr i64 %app.str.len12, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %pay.float.merge
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data15 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len16 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len16, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len17

tag.gen_check:                                    ; preds = %pay.float.merge
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

b.app.new.len17:                                  ; preds = %abort.dead18, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap19 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap19, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %b.app.new.len17

b.grow2:                                          ; preds = %b.app.new.len17
  %b.cap2 = mul i64 %b.cap19, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len220 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data221 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum22 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf23 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf23, label %str_overflow_abort25, label %b.new.buf.len224

b.nogrow2:                                        ; preds = %b.app.new.len17
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len224
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data28 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data28, i64 %b.app.cur.len16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data15, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data28, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len224:                                 ; preds = %abort.dead26, %b.grow2
  %arena.cur27 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum22)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data221, i64 %b.cur.len220, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len220
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort25:                             ; preds = %b.grow2
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %b.new.buf.len224

choice.case29:                                    ; preds = %choice.next4
  %pay.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr35 = load ptr, ptr %pay.gep34, align 8
  %pay.int.null = icmp eq ptr %payload.ptr35, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next30:                                    ; preds = %choice.next4
  %tag.gep97 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id98 = load i64, ptr %tag.gep97, align 8
  %tag.match99 = icmp eq i64 %tag.id98, 3
  br i1 %tag.match99, label %choice.case95, label %choice.next96

pay.int.load:                                     ; preds = %choice.case29
  %pay.int.val = load i1, ptr %payload.ptr35, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case29
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._36, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %b.load37 = load ptr, ptr %var.b, align 8
  %var.load38 = load i1, ptr %var.flag, align 1
  br i1 %var.load38, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.int.merge
  br label %choice.exit39

choice.else:                                      ; preds = %pay.int.merge
  br label %choice.exit39

choice.exit39:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  %app.str.len40 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %app.str.len41 = load i64, ptr %app.str.len40, align 8
  %app.str.len42 = and i64 %app.str.len41, 281474976710655
  %str.tag43 = lshr i64 %app.str.len41, 48
  %tag.immortal45 = icmp eq i64 %str.tag43, 0
  br i1 %tag.immortal45, label %str_ok44, label %tag.gen_check46

str_ok44:                                         ; preds = %abort.dead53, %tag.slow_check47, %tag.gen_check46, %choice.exit39
  %app.str.data54 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data55 = load ptr, ptr %app.str.data54, align 8
  %b.app.cur.len56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 0
  %b.app.cur.len57 = load i64, ptr %b.app.cur.len56, align 8
  %b.app.new.len58 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len57, i64 %app.str.len42)
  %sum59 = extractvalue { i64, i1 } %b.app.new.len58, 0
  %ovf60 = extractvalue { i64, i1 } %b.app.new.len58, 1
  br i1 %ovf60, label %str_overflow_abort62, label %b.app.new.len61

tag.gen_check46:                                  ; preds = %choice.exit39
  %active.gen49 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok50 = icmp eq i64 %str.tag43, %active.gen49
  br i1 %tag.fast.ok50, label %str_ok44, label %tag.slow_check47

tag.slow_check47:                                 ; preds = %tag.gen_check46
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag43)
  br i1 %tag.valid52, label %str_ok44, label %tag.stale48

tag.stale48:                                      ; preds = %tag.slow_check47
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %str_ok44

b.app.new.len61:                                  ; preds = %abort.dead63, %str_ok44
  %b.cap64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 2
  %b.cap65 = load i64, ptr %b.cap64, align 8
  %b.need.grow66 = icmp slt i64 %b.cap65, %sum59
  br i1 %b.need.grow66, label %b.grow267, label %b.nogrow268

str_overflow_abort62:                             ; preds = %str_ok44
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead63:                                     ; No predecessors!
  br label %b.app.new.len61

b.grow267:                                        ; preds = %b.app.new.len61
  %b.cap270 = mul i64 %b.cap65, 2
  %b.cap.small71 = icmp slt i64 %b.cap270, 16
  %b.cap.grow72 = select i1 %b.cap.small71, i64 16, i64 %b.cap270
  %b.cap.need73 = icmp slt i64 %b.cap.grow72, %sum59
  %b.new.cap74 = select i1 %b.cap.need73, i64 %sum59, i64 %b.cap.grow72
  %b.cur.len275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 0
  %b.cur.len276 = load i64, ptr %b.cur.len275, align 8
  %b.cur.data277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 1
  %b.cur.data278 = load ptr, ptr %b.cur.data277, align 8
  %b.new.buf.len279 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap74, i64 1)
  %sum80 = extractvalue { i64, i1 } %b.new.buf.len279, 0
  %ovf81 = extractvalue { i64, i1 } %b.new.buf.len279, 1
  br i1 %ovf81, label %str_overflow_abort83, label %b.new.buf.len282

b.nogrow268:                                      ; preds = %b.app.new.len61
  br label %b.grow_done69

b.grow_done69:                                    ; preds = %b.nogrow268, %b.new.buf.len282
  %b.app.data90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 1
  %b.app.data91 = load ptr, ptr %b.app.data90, align 8
  %b.app.dst92 = getelementptr i8, ptr %b.app.data91, i64 %b.app.cur.len57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst92, ptr align 1 %app.str.data55, i64 %app.str.len42, i1 false)
  %b.app.nul93 = getelementptr i8, ptr %b.app.data91, i64 %sum59
  store i8 0, ptr %b.app.nul93, align 1
  %b.len.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 0
  store i64 %sum59, ptr %b.len.gep94, align 8
  br label %choice.exit

b.new.buf.len282:                                 ; preds = %abort.dead84, %b.grow267
  %arena.cur85 = call ptr @dva_arena_current()
  %b.new.buf286 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 %sum80)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf286, ptr align 1 %b.cur.data278, i64 %b.cur.len276, i1 false)
  %b.grow2.nul87 = getelementptr i8, ptr %b.new.buf286, i64 %b.cur.len276
  store i8 0, ptr %b.grow2.nul87, align 1
  %b.new.data2.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 1
  store ptr %b.new.buf286, ptr %b.new.data2.gep88, align 8
  %b.new.cap2.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 2
  store i64 %b.new.cap74, ptr %b.new.cap2.gep89, align 8
  br label %b.grow_done69

str_overflow_abort83:                             ; preds = %b.grow267
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %b.new.buf.len282

choice.case95:                                    ; preds = %choice.next30
  %b.load100 = load ptr, ptr %var.b, align 8
  %app.str.len101 = load i64, ptr @str.17.struct, align 8
  %app.str.len102 = and i64 %app.str.len101, 281474976710655
  %app.str.data103 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.cur.len104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 0
  %b.app.cur.len105 = load i64, ptr %b.app.cur.len104, align 8
  %b.app.new.len106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len105, i64 %app.str.len102)
  %sum107 = extractvalue { i64, i1 } %b.app.new.len106, 0
  %ovf108 = extractvalue { i64, i1 } %b.app.new.len106, 1
  br i1 %ovf108, label %str_overflow_abort110, label %b.app.new.len109

choice.next96:                                    ; preds = %choice.next30
  %tag.gep145 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id146 = load i64, ptr %tag.gep145, align 8
  %tag.match147 = icmp eq i64 %tag.id146, 4
  br i1 %tag.match147, label %choice.case143, label %choice.next144

b.app.new.len109:                                 ; preds = %abort.dead111, %choice.case95
  %b.cap112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 2
  %b.cap113 = load i64, ptr %b.cap112, align 8
  %b.need.grow114 = icmp slt i64 %b.cap113, %sum107
  br i1 %b.need.grow114, label %b.grow2115, label %b.nogrow2116

str_overflow_abort110:                            ; preds = %choice.case95
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead111:                                    ; No predecessors!
  br label %b.app.new.len109

b.grow2115:                                       ; preds = %b.app.new.len109
  %b.cap2118 = mul i64 %b.cap113, 2
  %b.cap.small119 = icmp slt i64 %b.cap2118, 16
  %b.cap.grow120 = select i1 %b.cap.small119, i64 16, i64 %b.cap2118
  %b.cap.need121 = icmp slt i64 %b.cap.grow120, %sum107
  %b.new.cap122 = select i1 %b.cap.need121, i64 %sum107, i64 %b.cap.grow120
  %b.cur.len2123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 0
  %b.cur.len2124 = load i64, ptr %b.cur.len2123, align 8
  %b.cur.data2125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 1
  %b.cur.data2126 = load ptr, ptr %b.cur.data2125, align 8
  %b.new.buf.len2127 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap122, i64 1)
  %sum128 = extractvalue { i64, i1 } %b.new.buf.len2127, 0
  %ovf129 = extractvalue { i64, i1 } %b.new.buf.len2127, 1
  br i1 %ovf129, label %str_overflow_abort131, label %b.new.buf.len2130

b.nogrow2116:                                     ; preds = %b.app.new.len109
  br label %b.grow_done117

b.grow_done117:                                   ; preds = %b.nogrow2116, %b.new.buf.len2130
  %b.app.data138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 1
  %b.app.data139 = load ptr, ptr %b.app.data138, align 8
  %b.app.dst140 = getelementptr i8, ptr %b.app.data139, i64 %b.app.cur.len105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst140, ptr align 1 %app.str.data103, i64 %app.str.len102, i1 false)
  %b.app.nul141 = getelementptr i8, ptr %b.app.data139, i64 %sum107
  store i8 0, ptr %b.app.nul141, align 1
  %b.len.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 0
  store i64 %sum107, ptr %b.len.gep142, align 8
  br label %choice.exit

b.new.buf.len2130:                                ; preds = %abort.dead132, %b.grow2115
  %arena.cur133 = call ptr @dva_arena_current()
  %b.new.buf2134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %sum128)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2134, ptr align 1 %b.cur.data2126, i64 %b.cur.len2124, i1 false)
  %b.grow2.nul135 = getelementptr i8, ptr %b.new.buf2134, i64 %b.cur.len2124
  store i8 0, ptr %b.grow2.nul135, align 1
  %b.new.data2.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 1
  store ptr %b.new.buf2134, ptr %b.new.data2.gep136, align 8
  %b.new.cap2.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 2
  store i64 %b.new.cap122, ptr %b.new.cap2.gep137, align 8
  br label %b.grow_done117

str_overflow_abort131:                            ; preds = %b.grow2115
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead132:                                    ; No predecessors!
  br label %b.new.buf.len2130

choice.case143:                                   ; preds = %choice.next96
  %pay.gep148 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr149 = load ptr, ptr %pay.gep148, align 8
  store ptr %payload.ptr149, ptr %var._150, align 8
  store ptr %payload.ptr149, ptr %var.items, align 8
  %b.load151 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.rn.cur.len152 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len152, i64 1)
  %sum153 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf154 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf154, label %str_overflow_abort156, label %b.rn.new.len155

choice.next144:                                   ; preds = %choice.next96
  %tag.gep287 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id288 = load i64, ptr %tag.gep287, align 8
  %tag.match289 = icmp eq i64 %tag.id288, 5
  br i1 %tag.match289, label %choice.case285, label %choice.next286

b.rn.new.len155:                                  ; preds = %abort.dead157, %choice.case143
  %b.cap158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  %b.cap159 = load i64, ptr %b.cap158, align 8
  %b.need.grow160 = icmp slt i64 %b.cap159, %sum153
  br i1 %b.need.grow160, label %b.grow2161, label %b.nogrow2162

str_overflow_abort156:                            ; preds = %choice.case143
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead157:                                    ; No predecessors!
  br label %b.rn.new.len155

b.grow2161:                                       ; preds = %b.rn.new.len155
  %b.cap2164 = mul i64 %b.cap159, 2
  %b.cap.small165 = icmp slt i64 %b.cap2164, 16
  %b.cap.grow166 = select i1 %b.cap.small165, i64 16, i64 %b.cap2164
  %b.cap.need167 = icmp slt i64 %b.cap.grow166, %sum153
  %b.new.cap168 = select i1 %b.cap.need167, i64 %sum153, i64 %b.cap.grow166
  %b.cur.len2169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.cur.len2170 = load i64, ptr %b.cur.len2169, align 8
  %b.cur.data2171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.cur.data2172 = load ptr, ptr %b.cur.data2171, align 8
  %b.new.buf.len2173 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap168, i64 1)
  %sum174 = extractvalue { i64, i1 } %b.new.buf.len2173, 0
  %ovf175 = extractvalue { i64, i1 } %b.new.buf.len2173, 1
  br i1 %ovf175, label %str_overflow_abort177, label %b.new.buf.len2176

b.nogrow2162:                                     ; preds = %b.rn.new.len155
  br label %b.grow_done163

b.grow_done163:                                   ; preds = %b.nogrow2162, %b.new.buf.len2176
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.rn.data184 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data184, i64 %b.rn.cur.len152
  br i1 true, label %br.b1.139, label %br.c2.139

b.new.buf.len2176:                                ; preds = %abort.dead178, %b.grow2161
  %arena.cur179 = call ptr @dva_arena_current()
  %b.new.buf2180 = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 %sum174)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2180, ptr align 1 %b.cur.data2172, i64 %b.cur.len2170, i1 false)
  %b.grow2.nul181 = getelementptr i8, ptr %b.new.buf2180, i64 %b.cur.len2170
  store i8 0, ptr %b.grow2.nul181, align 1
  %b.new.data2.gep182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  store ptr %b.new.buf2180, ptr %b.new.data2.gep182, align 8
  %b.new.cap2.gep183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  store i64 %b.new.cap168, ptr %b.new.cap2.gep183, align 8
  br label %b.grow_done163

str_overflow_abort177:                            ; preds = %b.grow2161
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead178:                                    ; No predecessors!
  br label %b.new.buf.len2176

br.b1.139:                                        ; preds = %b.grow_done163
  store i8 91, ptr %b.rn.dst, align 1
  br label %br.done.139

br.c2.139:                                        ; preds = %b.grow_done163
  br i1 true, label %br.b2.139, label %br.c3.139

br.b2.139:                                        ; preds = %br.c2.139
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -101, ptr %br.dst1, align 1
  br label %br.done.139

br.c3.139:                                        ; preds = %br.c2.139
  br i1 true, label %br.b3.139, label %br.b4.139

br.b3.139:                                        ; preds = %br.c3.139
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -101, ptr %br.dst2.3, align 1
  br label %br.done.139

br.b4.139:                                        ; preds = %br.c3.139
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -101, ptr %br.dst3.4, align 1
  br label %br.done.139

br.done.139:                                      ; preds = %br.b4.139, %br.b3.139, %br.b2.139, %br.b1.139
  %br.nul = getelementptr i8, ptr %b.rn.data184, i64 %sum153
  store i8 0, ptr %br.nul, align 1
  %b.len.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  store i64 %sum153, ptr %b.len.gep185, align 8
  %var.load186 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load186, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load186, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.140, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._150, align 8
  br label %loop.header.140

loop.header.140:                                  ; preds = %loop.latch.140, %br.done.139
  %counter.load = load i64, ptr %loop.idx.140, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.140, label %loop.exit.nat.140

loop.body.140:                                    ; preds = %loop.header.140
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.140, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load186, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %counter.load
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.elem.val, ptr %var._187, align 8
  store ptr %sl.elem.val, ptr %var.item, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load188 = load i64, ptr %var.i, align 8
  %cmptmp = icmp sgt i64 %var.load188, 0
  br i1 %cmptmp, label %choice.then189, label %choice.exit190

loop.exit.nat.140:                                ; preds = %loop.header.140
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.140

loop.latch.140:                                   ; preds = %choice.exit190
  %step.val = load i64, ptr %loop.step.140, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.140, align 8
  br label %loop.header.140

loop.exit.140:                                    ; preds = %loop.exit.nat.140
  store ptr %cycle.prev.u, ptr %var._150, align 8
  %b.load239 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len240 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load239, i32 0, i32 0
  %b.rn.cur.len241 = load i64, ptr %b.rn.cur.len240, align 8
  %b.rn.new.len242 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len241, i64 1)
  %sum243 = extractvalue { i64, i1 } %b.rn.new.len242, 0
  %ovf244 = extractvalue { i64, i1 } %b.rn.new.len242, 1
  br i1 %ovf244, label %str_overflow_abort246, label %b.rn.new.len245

choice.then189:                                   ; preds = %loop.body.140
  %b.load191 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load191, i32 0, i32 0
  %b.rn.cur.len193 = load i64, ptr %b.rn.cur.len192, align 8
  %b.rn.new.len194 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len193, i64 1)
  %sum195 = extractvalue { i64, i1 } %b.rn.new.len194, 0
  %ovf196 = extractvalue { i64, i1 } %b.rn.new.len194, 1
  br i1 %ovf196, label %str_overflow_abort198, label %b.rn.new.len197

choice.exit190:                                   ; preds = %br.done.141, %loop.body.140
  %var.load237 = load ptr, ptr %var.b, align 8
  %var.load238 = load ptr, ptr %var.item, align 8
  call void @"json::#stringify_into"(ptr %var.load237, ptr %var.load238)
  br label %loop.latch.140

b.rn.new.len197:                                  ; preds = %abort.dead199, %choice.then189
  %b.cap200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load191, i32 0, i32 2
  %b.cap201 = load i64, ptr %b.cap200, align 8
  %b.need.grow202 = icmp slt i64 %b.cap201, %sum195
  br i1 %b.need.grow202, label %b.grow2203, label %b.nogrow2204

str_overflow_abort198:                            ; preds = %choice.then189
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead199:                                    ; No predecessors!
  br label %b.rn.new.len197

b.grow2203:                                       ; preds = %b.rn.new.len197
  %b.cap2206 = mul i64 %b.cap201, 2
  %b.cap.small207 = icmp slt i64 %b.cap2206, 16
  %b.cap.grow208 = select i1 %b.cap.small207, i64 16, i64 %b.cap2206
  %b.cap.need209 = icmp slt i64 %b.cap.grow208, %sum195
  %b.new.cap210 = select i1 %b.cap.need209, i64 %sum195, i64 %b.cap.grow208
  %b.cur.len2211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load191, i32 0, i32 0
  %b.cur.len2212 = load i64, ptr %b.cur.len2211, align 8
  %b.cur.data2213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load191, i32 0, i32 1
  %b.cur.data2214 = load ptr, ptr %b.cur.data2213, align 8
  %b.new.buf.len2215 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap210, i64 1)
  %sum216 = extractvalue { i64, i1 } %b.new.buf.len2215, 0
  %ovf217 = extractvalue { i64, i1 } %b.new.buf.len2215, 1
  br i1 %ovf217, label %str_overflow_abort219, label %b.new.buf.len2218

b.nogrow2204:                                     ; preds = %b.rn.new.len197
  br label %b.grow_done205

b.grow_done205:                                   ; preds = %b.nogrow2204, %b.new.buf.len2218
  %b.rn.data226 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load191, i32 0, i32 1
  %b.rn.data227 = load ptr, ptr %b.rn.data226, align 8
  %b.rn.dst228 = getelementptr i8, ptr %b.rn.data227, i64 %b.rn.cur.len193
  br i1 true, label %br.b1.141, label %br.c2.141

b.new.buf.len2218:                                ; preds = %abort.dead220, %b.grow2203
  %arena.cur221 = call ptr @dva_arena_current()
  %b.new.buf2222 = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 %sum216)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2222, ptr align 1 %b.cur.data2214, i64 %b.cur.len2212, i1 false)
  %b.grow2.nul223 = getelementptr i8, ptr %b.new.buf2222, i64 %b.cur.len2212
  store i8 0, ptr %b.grow2.nul223, align 1
  %b.new.data2.gep224 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load191, i32 0, i32 1
  store ptr %b.new.buf2222, ptr %b.new.data2.gep224, align 8
  %b.new.cap2.gep225 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load191, i32 0, i32 2
  store i64 %b.new.cap210, ptr %b.new.cap2.gep225, align 8
  br label %b.grow_done205

str_overflow_abort219:                            ; preds = %b.grow2203
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead220:                                    ; No predecessors!
  br label %b.new.buf.len2218

br.b1.141:                                        ; preds = %b.grow_done205
  store i8 44, ptr %b.rn.dst228, align 1
  br label %br.done.141

br.c2.141:                                        ; preds = %b.grow_done205
  br i1 true, label %br.b2.141, label %br.c3.141

br.b2.141:                                        ; preds = %br.c2.141
  store i8 -64, ptr %b.rn.dst228, align 1
  %br.dst1229 = getelementptr i8, ptr %b.rn.dst228, i64 1
  store i8 -84, ptr %br.dst1229, align 1
  br label %br.done.141

br.c3.141:                                        ; preds = %br.c2.141
  br i1 true, label %br.b3.141, label %br.b4.141

br.b3.141:                                        ; preds = %br.c3.141
  store i8 -32, ptr %b.rn.dst228, align 1
  %br.dst1.3230 = getelementptr i8, ptr %b.rn.dst228, i64 1
  store i8 -128, ptr %br.dst1.3230, align 1
  %br.dst2.3231 = getelementptr i8, ptr %b.rn.dst228, i64 2
  store i8 -84, ptr %br.dst2.3231, align 1
  br label %br.done.141

br.b4.141:                                        ; preds = %br.c3.141
  store i8 -16, ptr %b.rn.dst228, align 1
  %br.dst1.4232 = getelementptr i8, ptr %b.rn.dst228, i64 1
  store i8 -128, ptr %br.dst1.4232, align 1
  %br.dst2.4233 = getelementptr i8, ptr %b.rn.dst228, i64 2
  store i8 -128, ptr %br.dst2.4233, align 1
  %br.dst3.4234 = getelementptr i8, ptr %b.rn.dst228, i64 3
  store i8 -84, ptr %br.dst3.4234, align 1
  br label %br.done.141

br.done.141:                                      ; preds = %br.b4.141, %br.b3.141, %br.b2.141, %br.b1.141
  %br.nul235 = getelementptr i8, ptr %b.rn.data227, i64 %sum195
  store i8 0, ptr %br.nul235, align 1
  %b.len.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load191, i32 0, i32 0
  store i64 %sum195, ptr %b.len.gep236, align 8
  br label %choice.exit190

b.rn.new.len245:                                  ; preds = %abort.dead247, %loop.exit.140
  %b.cap248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load239, i32 0, i32 2
  %b.cap249 = load i64, ptr %b.cap248, align 8
  %b.need.grow250 = icmp slt i64 %b.cap249, %sum243
  br i1 %b.need.grow250, label %b.grow2251, label %b.nogrow2252

str_overflow_abort246:                            ; preds = %loop.exit.140
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead247:                                    ; No predecessors!
  br label %b.rn.new.len245

b.grow2251:                                       ; preds = %b.rn.new.len245
  %b.cap2254 = mul i64 %b.cap249, 2
  %b.cap.small255 = icmp slt i64 %b.cap2254, 16
  %b.cap.grow256 = select i1 %b.cap.small255, i64 16, i64 %b.cap2254
  %b.cap.need257 = icmp slt i64 %b.cap.grow256, %sum243
  %b.new.cap258 = select i1 %b.cap.need257, i64 %sum243, i64 %b.cap.grow256
  %b.cur.len2259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load239, i32 0, i32 0
  %b.cur.len2260 = load i64, ptr %b.cur.len2259, align 8
  %b.cur.data2261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load239, i32 0, i32 1
  %b.cur.data2262 = load ptr, ptr %b.cur.data2261, align 8
  %b.new.buf.len2263 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap258, i64 1)
  %sum264 = extractvalue { i64, i1 } %b.new.buf.len2263, 0
  %ovf265 = extractvalue { i64, i1 } %b.new.buf.len2263, 1
  br i1 %ovf265, label %str_overflow_abort267, label %b.new.buf.len2266

b.nogrow2252:                                     ; preds = %b.rn.new.len245
  br label %b.grow_done253

b.grow_done253:                                   ; preds = %b.nogrow2252, %b.new.buf.len2266
  %b.rn.data274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load239, i32 0, i32 1
  %b.rn.data275 = load ptr, ptr %b.rn.data274, align 8
  %b.rn.dst276 = getelementptr i8, ptr %b.rn.data275, i64 %b.rn.cur.len241
  br i1 true, label %br.b1.142, label %br.c2.142

b.new.buf.len2266:                                ; preds = %abort.dead268, %b.grow2251
  %arena.cur269 = call ptr @dva_arena_current()
  %b.new.buf2270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 %sum264)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2270, ptr align 1 %b.cur.data2262, i64 %b.cur.len2260, i1 false)
  %b.grow2.nul271 = getelementptr i8, ptr %b.new.buf2270, i64 %b.cur.len2260
  store i8 0, ptr %b.grow2.nul271, align 1
  %b.new.data2.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load239, i32 0, i32 1
  store ptr %b.new.buf2270, ptr %b.new.data2.gep272, align 8
  %b.new.cap2.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load239, i32 0, i32 2
  store i64 %b.new.cap258, ptr %b.new.cap2.gep273, align 8
  br label %b.grow_done253

str_overflow_abort267:                            ; preds = %b.grow2251
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead268:                                    ; No predecessors!
  br label %b.new.buf.len2266

br.b1.142:                                        ; preds = %b.grow_done253
  store i8 93, ptr %b.rn.dst276, align 1
  br label %br.done.142

br.c2.142:                                        ; preds = %b.grow_done253
  br i1 true, label %br.b2.142, label %br.c3.142

br.b2.142:                                        ; preds = %br.c2.142
  store i8 -63, ptr %b.rn.dst276, align 1
  %br.dst1277 = getelementptr i8, ptr %b.rn.dst276, i64 1
  store i8 -99, ptr %br.dst1277, align 1
  br label %br.done.142

br.c3.142:                                        ; preds = %br.c2.142
  br i1 true, label %br.b3.142, label %br.b4.142

br.b3.142:                                        ; preds = %br.c3.142
  store i8 -32, ptr %b.rn.dst276, align 1
  %br.dst1.3278 = getelementptr i8, ptr %b.rn.dst276, i64 1
  store i8 -127, ptr %br.dst1.3278, align 1
  %br.dst2.3279 = getelementptr i8, ptr %b.rn.dst276, i64 2
  store i8 -99, ptr %br.dst2.3279, align 1
  br label %br.done.142

br.b4.142:                                        ; preds = %br.c3.142
  store i8 -16, ptr %b.rn.dst276, align 1
  %br.dst1.4280 = getelementptr i8, ptr %b.rn.dst276, i64 1
  store i8 -128, ptr %br.dst1.4280, align 1
  %br.dst2.4281 = getelementptr i8, ptr %b.rn.dst276, i64 2
  store i8 -127, ptr %br.dst2.4281, align 1
  %br.dst3.4282 = getelementptr i8, ptr %b.rn.dst276, i64 3
  store i8 -99, ptr %br.dst3.4282, align 1
  br label %br.done.142

br.done.142:                                      ; preds = %br.b4.142, %br.b3.142, %br.b2.142, %br.b1.142
  %br.nul283 = getelementptr i8, ptr %b.rn.data275, i64 %sum243
  store i8 0, ptr %br.nul283, align 1
  %b.len.gep284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load239, i32 0, i32 0
  store i64 %sum243, ptr %b.len.gep284, align 8
  br label %choice.exit

choice.case285:                                   ; preds = %choice.next144
  %pay.gep290 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr291 = load ptr, ptr %pay.gep290, align 8
  store ptr %payload.ptr291, ptr %var._292, align 8
  store ptr %payload.ptr291, ptr %var.pairs, align 8
  %b.load293 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 0
  %b.rn.cur.len295 = load i64, ptr %b.rn.cur.len294, align 8
  %b.rn.new.len296 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len295, i64 1)
  %sum297 = extractvalue { i64, i1 } %b.rn.new.len296, 0
  %ovf298 = extractvalue { i64, i1 } %b.rn.new.len296, 1
  br i1 %ovf298, label %str_overflow_abort300, label %b.rn.new.len299

choice.next286:                                   ; preds = %choice.next144
  br label %choice.exit

b.rn.new.len299:                                  ; preds = %abort.dead301, %choice.case285
  %b.cap302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 2
  %b.cap303 = load i64, ptr %b.cap302, align 8
  %b.need.grow304 = icmp slt i64 %b.cap303, %sum297
  br i1 %b.need.grow304, label %b.grow2305, label %b.nogrow2306

str_overflow_abort300:                            ; preds = %choice.case285
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead301:                                    ; No predecessors!
  br label %b.rn.new.len299

b.grow2305:                                       ; preds = %b.rn.new.len299
  %b.cap2308 = mul i64 %b.cap303, 2
  %b.cap.small309 = icmp slt i64 %b.cap2308, 16
  %b.cap.grow310 = select i1 %b.cap.small309, i64 16, i64 %b.cap2308
  %b.cap.need311 = icmp slt i64 %b.cap.grow310, %sum297
  %b.new.cap312 = select i1 %b.cap.need311, i64 %sum297, i64 %b.cap.grow310
  %b.cur.len2313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 0
  %b.cur.len2314 = load i64, ptr %b.cur.len2313, align 8
  %b.cur.data2315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 1
  %b.cur.data2316 = load ptr, ptr %b.cur.data2315, align 8
  %b.new.buf.len2317 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap312, i64 1)
  %sum318 = extractvalue { i64, i1 } %b.new.buf.len2317, 0
  %ovf319 = extractvalue { i64, i1 } %b.new.buf.len2317, 1
  br i1 %ovf319, label %str_overflow_abort321, label %b.new.buf.len2320

b.nogrow2306:                                     ; preds = %b.rn.new.len299
  br label %b.grow_done307

b.grow_done307:                                   ; preds = %b.nogrow2306, %b.new.buf.len2320
  %b.rn.data328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 1
  %b.rn.data329 = load ptr, ptr %b.rn.data328, align 8
  %b.rn.dst330 = getelementptr i8, ptr %b.rn.data329, i64 %b.rn.cur.len295
  br i1 true, label %br.b1.143, label %br.c2.143

b.new.buf.len2320:                                ; preds = %abort.dead322, %b.grow2305
  %arena.cur323 = call ptr @dva_arena_current()
  %b.new.buf2324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 %sum318)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2324, ptr align 1 %b.cur.data2316, i64 %b.cur.len2314, i1 false)
  %b.grow2.nul325 = getelementptr i8, ptr %b.new.buf2324, i64 %b.cur.len2314
  store i8 0, ptr %b.grow2.nul325, align 1
  %b.new.data2.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 1
  store ptr %b.new.buf2324, ptr %b.new.data2.gep326, align 8
  %b.new.cap2.gep327 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 2
  store i64 %b.new.cap312, ptr %b.new.cap2.gep327, align 8
  br label %b.grow_done307

str_overflow_abort321:                            ; preds = %b.grow2305
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead322:                                    ; No predecessors!
  br label %b.new.buf.len2320

br.b1.143:                                        ; preds = %b.grow_done307
  store i8 123, ptr %b.rn.dst330, align 1
  br label %br.done.143

br.c2.143:                                        ; preds = %b.grow_done307
  br i1 true, label %br.b2.143, label %br.c3.143

br.b2.143:                                        ; preds = %br.c2.143
  store i8 -63, ptr %b.rn.dst330, align 1
  %br.dst1331 = getelementptr i8, ptr %b.rn.dst330, i64 1
  store i8 -69, ptr %br.dst1331, align 1
  br label %br.done.143

br.c3.143:                                        ; preds = %br.c2.143
  br i1 true, label %br.b3.143, label %br.b4.143

br.b3.143:                                        ; preds = %br.c3.143
  store i8 -32, ptr %b.rn.dst330, align 1
  %br.dst1.3332 = getelementptr i8, ptr %b.rn.dst330, i64 1
  store i8 -127, ptr %br.dst1.3332, align 1
  %br.dst2.3333 = getelementptr i8, ptr %b.rn.dst330, i64 2
  store i8 -69, ptr %br.dst2.3333, align 1
  br label %br.done.143

br.b4.143:                                        ; preds = %br.c3.143
  store i8 -16, ptr %b.rn.dst330, align 1
  %br.dst1.4334 = getelementptr i8, ptr %b.rn.dst330, i64 1
  store i8 -128, ptr %br.dst1.4334, align 1
  %br.dst2.4335 = getelementptr i8, ptr %b.rn.dst330, i64 2
  store i8 -127, ptr %br.dst2.4335, align 1
  %br.dst3.4336 = getelementptr i8, ptr %b.rn.dst330, i64 3
  store i8 -69, ptr %br.dst3.4336, align 1
  br label %br.done.143

br.done.143:                                      ; preds = %br.b4.143, %br.b3.143, %br.b2.143, %br.b1.143
  %br.nul337 = getelementptr i8, ptr %b.rn.data329, i64 %sum297
  store i8 0, ptr %br.nul337, align 1
  %b.len.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load293, i32 0, i32 0
  store i64 %sum297, ptr %b.len.gep338, align 8
  %var.load339 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep340 = getelementptr inbounds { ptr, i64 }, ptr %var.load339, i32 0, i32 1
  %sl.len.raw341 = load i64, ptr %sl.len.gep340, align 8
  %sl.len342 = and i64 %sl.len.raw341, 4611686018427387903
  %sl.data.gep343 = getelementptr inbounds { ptr, i64 }, ptr %var.load339, i32 0, i32 0
  %sl.data344 = load ptr, ptr %sl.data.gep343, align 8
  store i64 0, ptr %loop.idx.144, align 8
  store i64 0, ptr %var.i345, align 8
  %cycle.prev.u346 = load ptr, ptr %var._292, align 8
  br label %loop.header.144

loop.header.144:                                  ; preds = %loop.latch.144, %br.done.143
  %counter.load347 = load i64, ptr %loop.idx.144, align 8
  %loop.cond348 = icmp slt i64 %counter.load347, %sl.len342
  br i1 %loop.cond348, label %loop.body.144, label %loop.exit.nat.144

loop.body.144:                                    ; preds = %loop.header.144
  %loop.rel.i350 = sub i64 %counter.load347, 0
  store i64 1, ptr %loop.step.144, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load339, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.144:                                ; preds = %loop.header.144
  %loop.rel.end349 = sub i64 %counter.load347, 0
  store i64 %loop.rel.end349, ptr %var.i345, align 8
  br label %loop.exit.144

loop.latch.144:                                   ; preds = %br.done.146
  %step.val455 = load i64, ptr %loop.step.144, align 8
  %loop.next456 = add i64 %counter.load347, %step.val455
  store i64 %loop.next456, ptr %loop.idx.144, align 8
  br label %loop.header.144

loop.exit.144:                                    ; preds = %loop.exit.nat.144
  store ptr %cycle.prev.u346, ptr %var._292, align 8
  %b.load457 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len458 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 0
  %b.rn.cur.len459 = load i64, ptr %b.rn.cur.len458, align 8
  %b.rn.new.len460 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len459, i64 1)
  %sum461 = extractvalue { i64, i1 } %b.rn.new.len460, 0
  %ovf462 = extractvalue { i64, i1 } %b.rn.new.len460, 1
  br i1 %ovf462, label %str_overflow_abort464, label %b.rn.new.len463

sl.rec.elem.pbb:                                  ; preds = %loop.body.144
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data344, i64 %counter.load347
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.144
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data344, i64 %counter.load347
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i350, ptr %var._i351, align 8
  store ptr %sl.rec.elem, ptr %var._352, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i350, ptr %var.i345, align 8
  %var.load353 = load i64, ptr %var.i345, align 8
  %cmptmp354 = icmp sgt i64 %var.load353, 0
  br i1 %cmptmp354, label %choice.then355, label %choice.exit356

choice.then355:                                   ; preds = %sl.rec.elem.dbb
  %b.load357 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len358 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 0
  %b.rn.cur.len359 = load i64, ptr %b.rn.cur.len358, align 8
  %b.rn.new.len360 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len359, i64 1)
  %sum361 = extractvalue { i64, i1 } %b.rn.new.len360, 0
  %ovf362 = extractvalue { i64, i1 } %b.rn.new.len360, 1
  br i1 %ovf362, label %str_overflow_abort364, label %b.rn.new.len363

choice.exit356:                                   ; preds = %br.done.145, %sl.rec.elem.dbb
  %var.load403 = load ptr, ptr %var.b, align 8
  %var.load404 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load404, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load403, ptr %fld.load)
  %b.load405 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len406 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 0
  %b.rn.cur.len407 = load i64, ptr %b.rn.cur.len406, align 8
  %b.rn.new.len408 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len407, i64 1)
  %sum409 = extractvalue { i64, i1 } %b.rn.new.len408, 0
  %ovf410 = extractvalue { i64, i1 } %b.rn.new.len408, 1
  br i1 %ovf410, label %str_overflow_abort412, label %b.rn.new.len411

b.rn.new.len363:                                  ; preds = %abort.dead365, %choice.then355
  %b.cap366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 2
  %b.cap367 = load i64, ptr %b.cap366, align 8
  %b.need.grow368 = icmp slt i64 %b.cap367, %sum361
  br i1 %b.need.grow368, label %b.grow2369, label %b.nogrow2370

str_overflow_abort364:                            ; preds = %choice.then355
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead365:                                    ; No predecessors!
  br label %b.rn.new.len363

b.grow2369:                                       ; preds = %b.rn.new.len363
  %b.cap2372 = mul i64 %b.cap367, 2
  %b.cap.small373 = icmp slt i64 %b.cap2372, 16
  %b.cap.grow374 = select i1 %b.cap.small373, i64 16, i64 %b.cap2372
  %b.cap.need375 = icmp slt i64 %b.cap.grow374, %sum361
  %b.new.cap376 = select i1 %b.cap.need375, i64 %sum361, i64 %b.cap.grow374
  %b.cur.len2377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 0
  %b.cur.len2378 = load i64, ptr %b.cur.len2377, align 8
  %b.cur.data2379 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 1
  %b.cur.data2380 = load ptr, ptr %b.cur.data2379, align 8
  %b.new.buf.len2381 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap376, i64 1)
  %sum382 = extractvalue { i64, i1 } %b.new.buf.len2381, 0
  %ovf383 = extractvalue { i64, i1 } %b.new.buf.len2381, 1
  br i1 %ovf383, label %str_overflow_abort385, label %b.new.buf.len2384

b.nogrow2370:                                     ; preds = %b.rn.new.len363
  br label %b.grow_done371

b.grow_done371:                                   ; preds = %b.nogrow2370, %b.new.buf.len2384
  %b.rn.data392 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 1
  %b.rn.data393 = load ptr, ptr %b.rn.data392, align 8
  %b.rn.dst394 = getelementptr i8, ptr %b.rn.data393, i64 %b.rn.cur.len359
  br i1 true, label %br.b1.145, label %br.c2.145

b.new.buf.len2384:                                ; preds = %abort.dead386, %b.grow2369
  %arena.cur387 = call ptr @dva_arena_current()
  %b.new.buf2388 = call ptr @dva_arena_alloc(ptr %arena.cur387, i64 %sum382)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2388, ptr align 1 %b.cur.data2380, i64 %b.cur.len2378, i1 false)
  %b.grow2.nul389 = getelementptr i8, ptr %b.new.buf2388, i64 %b.cur.len2378
  store i8 0, ptr %b.grow2.nul389, align 1
  %b.new.data2.gep390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 1
  store ptr %b.new.buf2388, ptr %b.new.data2.gep390, align 8
  %b.new.cap2.gep391 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 2
  store i64 %b.new.cap376, ptr %b.new.cap2.gep391, align 8
  br label %b.grow_done371

str_overflow_abort385:                            ; preds = %b.grow2369
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead386:                                    ; No predecessors!
  br label %b.new.buf.len2384

br.b1.145:                                        ; preds = %b.grow_done371
  store i8 44, ptr %b.rn.dst394, align 1
  br label %br.done.145

br.c2.145:                                        ; preds = %b.grow_done371
  br i1 true, label %br.b2.145, label %br.c3.145

br.b2.145:                                        ; preds = %br.c2.145
  store i8 -64, ptr %b.rn.dst394, align 1
  %br.dst1395 = getelementptr i8, ptr %b.rn.dst394, i64 1
  store i8 -84, ptr %br.dst1395, align 1
  br label %br.done.145

br.c3.145:                                        ; preds = %br.c2.145
  br i1 true, label %br.b3.145, label %br.b4.145

br.b3.145:                                        ; preds = %br.c3.145
  store i8 -32, ptr %b.rn.dst394, align 1
  %br.dst1.3396 = getelementptr i8, ptr %b.rn.dst394, i64 1
  store i8 -128, ptr %br.dst1.3396, align 1
  %br.dst2.3397 = getelementptr i8, ptr %b.rn.dst394, i64 2
  store i8 -84, ptr %br.dst2.3397, align 1
  br label %br.done.145

br.b4.145:                                        ; preds = %br.c3.145
  store i8 -16, ptr %b.rn.dst394, align 1
  %br.dst1.4398 = getelementptr i8, ptr %b.rn.dst394, i64 1
  store i8 -128, ptr %br.dst1.4398, align 1
  %br.dst2.4399 = getelementptr i8, ptr %b.rn.dst394, i64 2
  store i8 -128, ptr %br.dst2.4399, align 1
  %br.dst3.4400 = getelementptr i8, ptr %b.rn.dst394, i64 3
  store i8 -84, ptr %br.dst3.4400, align 1
  br label %br.done.145

br.done.145:                                      ; preds = %br.b4.145, %br.b3.145, %br.b2.145, %br.b1.145
  %br.nul401 = getelementptr i8, ptr %b.rn.data393, i64 %sum361
  store i8 0, ptr %br.nul401, align 1
  %b.len.gep402 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load357, i32 0, i32 0
  store i64 %sum361, ptr %b.len.gep402, align 8
  br label %choice.exit356

b.rn.new.len411:                                  ; preds = %abort.dead413, %choice.exit356
  %b.cap414 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 2
  %b.cap415 = load i64, ptr %b.cap414, align 8
  %b.need.grow416 = icmp slt i64 %b.cap415, %sum409
  br i1 %b.need.grow416, label %b.grow2417, label %b.nogrow2418

str_overflow_abort412:                            ; preds = %choice.exit356
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead413:                                    ; No predecessors!
  br label %b.rn.new.len411

b.grow2417:                                       ; preds = %b.rn.new.len411
  %b.cap2420 = mul i64 %b.cap415, 2
  %b.cap.small421 = icmp slt i64 %b.cap2420, 16
  %b.cap.grow422 = select i1 %b.cap.small421, i64 16, i64 %b.cap2420
  %b.cap.need423 = icmp slt i64 %b.cap.grow422, %sum409
  %b.new.cap424 = select i1 %b.cap.need423, i64 %sum409, i64 %b.cap.grow422
  %b.cur.len2425 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 0
  %b.cur.len2426 = load i64, ptr %b.cur.len2425, align 8
  %b.cur.data2427 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 1
  %b.cur.data2428 = load ptr, ptr %b.cur.data2427, align 8
  %b.new.buf.len2429 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap424, i64 1)
  %sum430 = extractvalue { i64, i1 } %b.new.buf.len2429, 0
  %ovf431 = extractvalue { i64, i1 } %b.new.buf.len2429, 1
  br i1 %ovf431, label %str_overflow_abort433, label %b.new.buf.len2432

b.nogrow2418:                                     ; preds = %b.rn.new.len411
  br label %b.grow_done419

b.grow_done419:                                   ; preds = %b.nogrow2418, %b.new.buf.len2432
  %b.rn.data440 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 1
  %b.rn.data441 = load ptr, ptr %b.rn.data440, align 8
  %b.rn.dst442 = getelementptr i8, ptr %b.rn.data441, i64 %b.rn.cur.len407
  br i1 true, label %br.b1.146, label %br.c2.146

b.new.buf.len2432:                                ; preds = %abort.dead434, %b.grow2417
  %arena.cur435 = call ptr @dva_arena_current()
  %b.new.buf2436 = call ptr @dva_arena_alloc(ptr %arena.cur435, i64 %sum430)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2436, ptr align 1 %b.cur.data2428, i64 %b.cur.len2426, i1 false)
  %b.grow2.nul437 = getelementptr i8, ptr %b.new.buf2436, i64 %b.cur.len2426
  store i8 0, ptr %b.grow2.nul437, align 1
  %b.new.data2.gep438 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 1
  store ptr %b.new.buf2436, ptr %b.new.data2.gep438, align 8
  %b.new.cap2.gep439 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 2
  store i64 %b.new.cap424, ptr %b.new.cap2.gep439, align 8
  br label %b.grow_done419

str_overflow_abort433:                            ; preds = %b.grow2417
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead434:                                    ; No predecessors!
  br label %b.new.buf.len2432

br.b1.146:                                        ; preds = %b.grow_done419
  store i8 58, ptr %b.rn.dst442, align 1
  br label %br.done.146

br.c2.146:                                        ; preds = %b.grow_done419
  br i1 true, label %br.b2.146, label %br.c3.146

br.b2.146:                                        ; preds = %br.c2.146
  store i8 -64, ptr %b.rn.dst442, align 1
  %br.dst1443 = getelementptr i8, ptr %b.rn.dst442, i64 1
  store i8 -70, ptr %br.dst1443, align 1
  br label %br.done.146

br.c3.146:                                        ; preds = %br.c2.146
  br i1 true, label %br.b3.146, label %br.b4.146

br.b3.146:                                        ; preds = %br.c3.146
  store i8 -32, ptr %b.rn.dst442, align 1
  %br.dst1.3444 = getelementptr i8, ptr %b.rn.dst442, i64 1
  store i8 -128, ptr %br.dst1.3444, align 1
  %br.dst2.3445 = getelementptr i8, ptr %b.rn.dst442, i64 2
  store i8 -70, ptr %br.dst2.3445, align 1
  br label %br.done.146

br.b4.146:                                        ; preds = %br.c3.146
  store i8 -16, ptr %b.rn.dst442, align 1
  %br.dst1.4446 = getelementptr i8, ptr %b.rn.dst442, i64 1
  store i8 -128, ptr %br.dst1.4446, align 1
  %br.dst2.4447 = getelementptr i8, ptr %b.rn.dst442, i64 2
  store i8 -128, ptr %br.dst2.4447, align 1
  %br.dst3.4448 = getelementptr i8, ptr %b.rn.dst442, i64 3
  store i8 -70, ptr %br.dst3.4448, align 1
  br label %br.done.146

br.done.146:                                      ; preds = %br.b4.146, %br.b3.146, %br.b2.146, %br.b1.146
  %br.nul449 = getelementptr i8, ptr %b.rn.data441, i64 %sum409
  store i8 0, ptr %br.nul449, align 1
  %b.len.gep450 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 0
  store i64 %sum409, ptr %b.len.gep450, align 8
  %var.load451 = load ptr, ptr %var.b, align 8
  %var.load452 = load ptr, ptr %var.p, align 8
  %fld.gep453 = getelementptr inbounds { ptr, ptr }, ptr %var.load452, i32 0, i32 1
  %fld.load454 = load ptr, ptr %fld.gep453, align 8
  call void @"json::#stringify_into"(ptr %var.load451, ptr %fld.load454)
  br label %loop.latch.144

b.rn.new.len463:                                  ; preds = %abort.dead465, %loop.exit.144
  %b.cap466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 2
  %b.cap467 = load i64, ptr %b.cap466, align 8
  %b.need.grow468 = icmp slt i64 %b.cap467, %sum461
  br i1 %b.need.grow468, label %b.grow2469, label %b.nogrow2470

str_overflow_abort464:                            ; preds = %loop.exit.144
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead465:                                    ; No predecessors!
  br label %b.rn.new.len463

b.grow2469:                                       ; preds = %b.rn.new.len463
  %b.cap2472 = mul i64 %b.cap467, 2
  %b.cap.small473 = icmp slt i64 %b.cap2472, 16
  %b.cap.grow474 = select i1 %b.cap.small473, i64 16, i64 %b.cap2472
  %b.cap.need475 = icmp slt i64 %b.cap.grow474, %sum461
  %b.new.cap476 = select i1 %b.cap.need475, i64 %sum461, i64 %b.cap.grow474
  %b.cur.len2477 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 0
  %b.cur.len2478 = load i64, ptr %b.cur.len2477, align 8
  %b.cur.data2479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 1
  %b.cur.data2480 = load ptr, ptr %b.cur.data2479, align 8
  %b.new.buf.len2481 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap476, i64 1)
  %sum482 = extractvalue { i64, i1 } %b.new.buf.len2481, 0
  %ovf483 = extractvalue { i64, i1 } %b.new.buf.len2481, 1
  br i1 %ovf483, label %str_overflow_abort485, label %b.new.buf.len2484

b.nogrow2470:                                     ; preds = %b.rn.new.len463
  br label %b.grow_done471

b.grow_done471:                                   ; preds = %b.nogrow2470, %b.new.buf.len2484
  %b.rn.data492 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 1
  %b.rn.data493 = load ptr, ptr %b.rn.data492, align 8
  %b.rn.dst494 = getelementptr i8, ptr %b.rn.data493, i64 %b.rn.cur.len459
  br i1 true, label %br.b1.147, label %br.c2.147

b.new.buf.len2484:                                ; preds = %abort.dead486, %b.grow2469
  %arena.cur487 = call ptr @dva_arena_current()
  %b.new.buf2488 = call ptr @dva_arena_alloc(ptr %arena.cur487, i64 %sum482)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2488, ptr align 1 %b.cur.data2480, i64 %b.cur.len2478, i1 false)
  %b.grow2.nul489 = getelementptr i8, ptr %b.new.buf2488, i64 %b.cur.len2478
  store i8 0, ptr %b.grow2.nul489, align 1
  %b.new.data2.gep490 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 1
  store ptr %b.new.buf2488, ptr %b.new.data2.gep490, align 8
  %b.new.cap2.gep491 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 2
  store i64 %b.new.cap476, ptr %b.new.cap2.gep491, align 8
  br label %b.grow_done471

str_overflow_abort485:                            ; preds = %b.grow2469
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead486:                                    ; No predecessors!
  br label %b.new.buf.len2484

br.b1.147:                                        ; preds = %b.grow_done471
  store i8 125, ptr %b.rn.dst494, align 1
  br label %br.done.147

br.c2.147:                                        ; preds = %b.grow_done471
  br i1 true, label %br.b2.147, label %br.c3.147

br.b2.147:                                        ; preds = %br.c2.147
  store i8 -63, ptr %b.rn.dst494, align 1
  %br.dst1495 = getelementptr i8, ptr %b.rn.dst494, i64 1
  store i8 -67, ptr %br.dst1495, align 1
  br label %br.done.147

br.c3.147:                                        ; preds = %br.c2.147
  br i1 true, label %br.b3.147, label %br.b4.147

br.b3.147:                                        ; preds = %br.c3.147
  store i8 -32, ptr %b.rn.dst494, align 1
  %br.dst1.3496 = getelementptr i8, ptr %b.rn.dst494, i64 1
  store i8 -127, ptr %br.dst1.3496, align 1
  %br.dst2.3497 = getelementptr i8, ptr %b.rn.dst494, i64 2
  store i8 -67, ptr %br.dst2.3497, align 1
  br label %br.done.147

br.b4.147:                                        ; preds = %br.c3.147
  store i8 -16, ptr %b.rn.dst494, align 1
  %br.dst1.4498 = getelementptr i8, ptr %b.rn.dst494, i64 1
  store i8 -128, ptr %br.dst1.4498, align 1
  %br.dst2.4499 = getelementptr i8, ptr %b.rn.dst494, i64 2
  store i8 -127, ptr %br.dst2.4499, align 1
  %br.dst3.4500 = getelementptr i8, ptr %b.rn.dst494, i64 3
  store i8 -67, ptr %br.dst3.4500, align 1
  br label %br.done.147

br.done.147:                                      ; preds = %br.b4.147, %br.b3.147, %br.b2.147, %br.b1.147
  %br.nul501 = getelementptr i8, ptr %b.rn.data493, i64 %sum461
  store i8 0, ptr %br.nul501, align 1
  %b.len.gep502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load457, i32 0, i32 0
  store i64 %sum461, ptr %b.len.gep502, align 8
  br label %choice.exit
}

define internal void @"json::#append_indent"(ptr %0, i64 %1) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.148 = alloca i64, align 8
  %loop.idx.148 = alloca i64, align 8
  %var.spaces = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.spaces, align 8
  %var.load = load i64, ptr %var.spaces, align 8
  store i64 0, ptr %loop.idx.148, align 8
  br label %loop.header.148

loop.header.148:                                  ; preds = %loop.latch.148, %entry
  %counter.load = load i64, ptr %loop.idx.148, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load
  br i1 %loop.cond, label %loop.body.148, label %loop.exit.nat.148

loop.body.148:                                    ; preds = %loop.header.148
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.148, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.rn.cur.len1 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

loop.exit.nat.148:                                ; preds = %loop.header.148
  br label %loop.exit.148

loop.latch.148:                                   ; preds = %br.done.149
  %step.val = load i64, ptr %loop.step.148, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.148, align 8
  br label %loop.header.148

loop.exit.148:                                    ; preds = %loop.exit.nat.148
  ret void

b.rn.new.len2:                                    ; preds = %abort.dead, %loop.body.148
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %loop.body.148
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
  br i1 true, label %br.b1.149, label %br.c2.149

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

br.b1.149:                                        ; preds = %b.grow_done
  store i8 32, ptr %b.rn.dst, align 1
  br label %br.done.149

br.c2.149:                                        ; preds = %b.grow_done
  br i1 true, label %br.b2.149, label %br.c3.149

br.b2.149:                                        ; preds = %br.c2.149
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -96, ptr %br.dst1, align 1
  br label %br.done.149

br.c3.149:                                        ; preds = %br.c2.149
  br i1 true, label %br.b3.149, label %br.b4.149

br.b3.149:                                        ; preds = %br.c3.149
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -96, ptr %br.dst2.3, align 1
  br label %br.done.149

br.b4.149:                                        ; preds = %br.c3.149
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -96, ptr %br.dst3.4, align 1
  br label %br.done.149

br.done.149:                                      ; preds = %br.b4.149, %br.b3.149, %br.b2.149, %br.b1.149
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %loop.latch.148
}

define internal void @"json::#stringify_pretty_into"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
entry:
  %var._498 = alloca ptr, align 8
  %var._i497 = alloca i64, align 8
  %var.i491 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.153 = alloca i64, align 8
  %loop.idx.153 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._390 = alloca ptr, align 8
  %var._242 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.150 = alloca i64, align 8
  %loop.idx.150 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._150 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._36 = alloca i1, align 1
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

choice.exit:                                      ; preds = %choice.next384, %choice.exit398, %choice.exit154, %b.grow_done117, %b.grow_done69, %b.grow_done, %choice.case
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
  %tag.gep31 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id32 = load i64, ptr %tag.gep31, align 8
  %tag.match33 = icmp eq i64 %tag.id32, 2
  br i1 %tag.match33, label %choice.case29, label %choice.next30

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
  %call.res = call { i64, ptr } @"json::format_number"(double %var.load11)
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %app.str.len12 = load i64, ptr %app.str.len, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %str.tag = lshr i64 %app.str.len12, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %pay.float.merge
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data15 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len16 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len16, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len17

tag.gen_check:                                    ; preds = %pay.float.merge
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur14 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur14, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

b.app.new.len17:                                  ; preds = %abort.dead18, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap19 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap19, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %b.app.new.len17

b.grow2:                                          ; preds = %b.app.new.len17
  %b.cap2 = mul i64 %b.cap19, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len220 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data221 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum22 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf23 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf23, label %str_overflow_abort25, label %b.new.buf.len224

b.nogrow2:                                        ; preds = %b.app.new.len17
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len224
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data28 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data28, i64 %b.app.cur.len16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data15, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data28, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len224:                                 ; preds = %abort.dead26, %b.grow2
  %arena.cur27 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum22)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data221, i64 %b.cur.len220, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len220
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort25:                             ; preds = %b.grow2
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %b.new.buf.len224

choice.case29:                                    ; preds = %choice.next4
  %pay.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr35 = load ptr, ptr %pay.gep34, align 8
  %pay.int.null = icmp eq ptr %payload.ptr35, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next30:                                    ; preds = %choice.next4
  %tag.gep97 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id98 = load i64, ptr %tag.gep97, align 8
  %tag.match99 = icmp eq i64 %tag.id98, 3
  br i1 %tag.match99, label %choice.case95, label %choice.next96

pay.int.load:                                     ; preds = %choice.case29
  %pay.int.val = load i1, ptr %payload.ptr35, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case29
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._36, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %b.load37 = load ptr, ptr %var.b, align 8
  %var.load38 = load i1, ptr %var.flag, align 1
  br i1 %var.load38, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.int.merge
  br label %choice.exit39

choice.else:                                      ; preds = %pay.int.merge
  br label %choice.exit39

choice.exit39:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  %app.str.len40 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %app.str.len41 = load i64, ptr %app.str.len40, align 8
  %app.str.len42 = and i64 %app.str.len41, 281474976710655
  %str.tag43 = lshr i64 %app.str.len41, 48
  %tag.immortal45 = icmp eq i64 %str.tag43, 0
  br i1 %tag.immortal45, label %str_ok44, label %tag.gen_check46

str_ok44:                                         ; preds = %abort.dead53, %tag.slow_check47, %tag.gen_check46, %choice.exit39
  %app.str.data54 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data55 = load ptr, ptr %app.str.data54, align 8
  %b.app.cur.len56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 0
  %b.app.cur.len57 = load i64, ptr %b.app.cur.len56, align 8
  %b.app.new.len58 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len57, i64 %app.str.len42)
  %sum59 = extractvalue { i64, i1 } %b.app.new.len58, 0
  %ovf60 = extractvalue { i64, i1 } %b.app.new.len58, 1
  br i1 %ovf60, label %str_overflow_abort62, label %b.app.new.len61

tag.gen_check46:                                  ; preds = %choice.exit39
  %active.gen49 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok50 = icmp eq i64 %str.tag43, %active.gen49
  br i1 %tag.fast.ok50, label %str_ok44, label %tag.slow_check47

tag.slow_check47:                                 ; preds = %tag.gen_check46
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag43)
  br i1 %tag.valid52, label %str_ok44, label %tag.stale48

tag.stale48:                                      ; preds = %tag.slow_check47
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %str_ok44

b.app.new.len61:                                  ; preds = %abort.dead63, %str_ok44
  %b.cap64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 2
  %b.cap65 = load i64, ptr %b.cap64, align 8
  %b.need.grow66 = icmp slt i64 %b.cap65, %sum59
  br i1 %b.need.grow66, label %b.grow267, label %b.nogrow268

str_overflow_abort62:                             ; preds = %str_ok44
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead63:                                     ; No predecessors!
  br label %b.app.new.len61

b.grow267:                                        ; preds = %b.app.new.len61
  %b.cap270 = mul i64 %b.cap65, 2
  %b.cap.small71 = icmp slt i64 %b.cap270, 16
  %b.cap.grow72 = select i1 %b.cap.small71, i64 16, i64 %b.cap270
  %b.cap.need73 = icmp slt i64 %b.cap.grow72, %sum59
  %b.new.cap74 = select i1 %b.cap.need73, i64 %sum59, i64 %b.cap.grow72
  %b.cur.len275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 0
  %b.cur.len276 = load i64, ptr %b.cur.len275, align 8
  %b.cur.data277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 1
  %b.cur.data278 = load ptr, ptr %b.cur.data277, align 8
  %b.new.buf.len279 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap74, i64 1)
  %sum80 = extractvalue { i64, i1 } %b.new.buf.len279, 0
  %ovf81 = extractvalue { i64, i1 } %b.new.buf.len279, 1
  br i1 %ovf81, label %str_overflow_abort83, label %b.new.buf.len282

b.nogrow268:                                      ; preds = %b.app.new.len61
  br label %b.grow_done69

b.grow_done69:                                    ; preds = %b.nogrow268, %b.new.buf.len282
  %b.app.data90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 1
  %b.app.data91 = load ptr, ptr %b.app.data90, align 8
  %b.app.dst92 = getelementptr i8, ptr %b.app.data91, i64 %b.app.cur.len57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst92, ptr align 1 %app.str.data55, i64 %app.str.len42, i1 false)
  %b.app.nul93 = getelementptr i8, ptr %b.app.data91, i64 %sum59
  store i8 0, ptr %b.app.nul93, align 1
  %b.len.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 0
  store i64 %sum59, ptr %b.len.gep94, align 8
  br label %choice.exit

b.new.buf.len282:                                 ; preds = %abort.dead84, %b.grow267
  %arena.cur85 = call ptr @dva_arena_current()
  %b.new.buf286 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 %sum80)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf286, ptr align 1 %b.cur.data278, i64 %b.cur.len276, i1 false)
  %b.grow2.nul87 = getelementptr i8, ptr %b.new.buf286, i64 %b.cur.len276
  store i8 0, ptr %b.grow2.nul87, align 1
  %b.new.data2.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 1
  store ptr %b.new.buf286, ptr %b.new.data2.gep88, align 8
  %b.new.cap2.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 2
  store i64 %b.new.cap74, ptr %b.new.cap2.gep89, align 8
  br label %b.grow_done69

str_overflow_abort83:                             ; preds = %b.grow267
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %b.new.buf.len282

choice.case95:                                    ; preds = %choice.next30
  %b.load100 = load ptr, ptr %var.b, align 8
  %app.str.len101 = load i64, ptr @str.17.struct, align 8
  %app.str.len102 = and i64 %app.str.len101, 281474976710655
  %app.str.data103 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.cur.len104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 0
  %b.app.cur.len105 = load i64, ptr %b.app.cur.len104, align 8
  %b.app.new.len106 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len105, i64 %app.str.len102)
  %sum107 = extractvalue { i64, i1 } %b.app.new.len106, 0
  %ovf108 = extractvalue { i64, i1 } %b.app.new.len106, 1
  br i1 %ovf108, label %str_overflow_abort110, label %b.app.new.len109

choice.next96:                                    ; preds = %choice.next30
  %tag.gep145 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id146 = load i64, ptr %tag.gep145, align 8
  %tag.match147 = icmp eq i64 %tag.id146, 4
  br i1 %tag.match147, label %choice.case143, label %choice.next144

b.app.new.len109:                                 ; preds = %abort.dead111, %choice.case95
  %b.cap112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 2
  %b.cap113 = load i64, ptr %b.cap112, align 8
  %b.need.grow114 = icmp slt i64 %b.cap113, %sum107
  br i1 %b.need.grow114, label %b.grow2115, label %b.nogrow2116

str_overflow_abort110:                            ; preds = %choice.case95
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead111:                                    ; No predecessors!
  br label %b.app.new.len109

b.grow2115:                                       ; preds = %b.app.new.len109
  %b.cap2118 = mul i64 %b.cap113, 2
  %b.cap.small119 = icmp slt i64 %b.cap2118, 16
  %b.cap.grow120 = select i1 %b.cap.small119, i64 16, i64 %b.cap2118
  %b.cap.need121 = icmp slt i64 %b.cap.grow120, %sum107
  %b.new.cap122 = select i1 %b.cap.need121, i64 %sum107, i64 %b.cap.grow120
  %b.cur.len2123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 0
  %b.cur.len2124 = load i64, ptr %b.cur.len2123, align 8
  %b.cur.data2125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 1
  %b.cur.data2126 = load ptr, ptr %b.cur.data2125, align 8
  %b.new.buf.len2127 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap122, i64 1)
  %sum128 = extractvalue { i64, i1 } %b.new.buf.len2127, 0
  %ovf129 = extractvalue { i64, i1 } %b.new.buf.len2127, 1
  br i1 %ovf129, label %str_overflow_abort131, label %b.new.buf.len2130

b.nogrow2116:                                     ; preds = %b.app.new.len109
  br label %b.grow_done117

b.grow_done117:                                   ; preds = %b.nogrow2116, %b.new.buf.len2130
  %b.app.data138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 1
  %b.app.data139 = load ptr, ptr %b.app.data138, align 8
  %b.app.dst140 = getelementptr i8, ptr %b.app.data139, i64 %b.app.cur.len105
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst140, ptr align 1 %app.str.data103, i64 %app.str.len102, i1 false)
  %b.app.nul141 = getelementptr i8, ptr %b.app.data139, i64 %sum107
  store i8 0, ptr %b.app.nul141, align 1
  %b.len.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 0
  store i64 %sum107, ptr %b.len.gep142, align 8
  br label %choice.exit

b.new.buf.len2130:                                ; preds = %abort.dead132, %b.grow2115
  %arena.cur133 = call ptr @dva_arena_current()
  %b.new.buf2134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %sum128)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2134, ptr align 1 %b.cur.data2126, i64 %b.cur.len2124, i1 false)
  %b.grow2.nul135 = getelementptr i8, ptr %b.new.buf2134, i64 %b.cur.len2124
  store i8 0, ptr %b.grow2.nul135, align 1
  %b.new.data2.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 1
  store ptr %b.new.buf2134, ptr %b.new.data2.gep136, align 8
  %b.new.cap2.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 2
  store i64 %b.new.cap122, ptr %b.new.cap2.gep137, align 8
  br label %b.grow_done117

str_overflow_abort131:                            ; preds = %b.grow2115
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead132:                                    ; No predecessors!
  br label %b.new.buf.len2130

choice.case143:                                   ; preds = %choice.next96
  %pay.gep148 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr149 = load ptr, ptr %pay.gep148, align 8
  store ptr %payload.ptr149, ptr %var._150, align 8
  store ptr %payload.ptr149, ptr %var.items, align 8
  %var.load151 = load ptr, ptr %var.items, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load151, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  %cmptmp = icmp eq i64 %slice.len, 0
  br i1 %cmptmp, label %choice.then152, label %choice.else153

choice.next144:                                   ; preds = %choice.next96
  %tag.gep385 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id386 = load i64, ptr %tag.gep385, align 8
  %tag.match387 = icmp eq i64 %tag.id386, 5
  br i1 %tag.match387, label %choice.case383, label %choice.next384

choice.then152:                                   ; preds = %choice.case143
  %b.load155 = load ptr, ptr %var.b, align 8
  %app.str.len156 = load i64, ptr @str.37.struct, align 8
  %app.str.len157 = and i64 %app.str.len156, 281474976710655
  %app.str.data158 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %b.app.cur.len159 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 0
  %b.app.cur.len160 = load i64, ptr %b.app.cur.len159, align 8
  %b.app.new.len161 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len160, i64 %app.str.len157)
  %sum162 = extractvalue { i64, i1 } %b.app.new.len161, 0
  %ovf163 = extractvalue { i64, i1 } %b.app.new.len161, 1
  br i1 %ovf163, label %str_overflow_abort165, label %b.app.new.len164

choice.else153:                                   ; preds = %choice.case143
  %b.load198 = load ptr, ptr %var.b, align 8
  %app.str.len199 = load i64, ptr @str.38.struct, align 8
  %app.str.len200 = and i64 %app.str.len199, 281474976710655
  %app.str.data201 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %b.app.cur.len202 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  %b.app.cur.len203 = load i64, ptr %b.app.cur.len202, align 8
  %b.app.new.len204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len203, i64 %app.str.len200)
  %sum205 = extractvalue { i64, i1 } %b.app.new.len204, 0
  %ovf206 = extractvalue { i64, i1 } %b.app.new.len204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %b.app.new.len207

choice.exit154:                                   ; preds = %br.done.152, %b.grow_done172
  br label %choice.exit

b.app.new.len164:                                 ; preds = %abort.dead166, %choice.then152
  %b.cap167 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 2
  %b.cap168 = load i64, ptr %b.cap167, align 8
  %b.need.grow169 = icmp slt i64 %b.cap168, %sum162
  br i1 %b.need.grow169, label %b.grow2170, label %b.nogrow2171

str_overflow_abort165:                            ; preds = %choice.then152
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead166:                                    ; No predecessors!
  br label %b.app.new.len164

b.grow2170:                                       ; preds = %b.app.new.len164
  %b.cap2173 = mul i64 %b.cap168, 2
  %b.cap.small174 = icmp slt i64 %b.cap2173, 16
  %b.cap.grow175 = select i1 %b.cap.small174, i64 16, i64 %b.cap2173
  %b.cap.need176 = icmp slt i64 %b.cap.grow175, %sum162
  %b.new.cap177 = select i1 %b.cap.need176, i64 %sum162, i64 %b.cap.grow175
  %b.cur.len2178 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 0
  %b.cur.len2179 = load i64, ptr %b.cur.len2178, align 8
  %b.cur.data2180 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 1
  %b.cur.data2181 = load ptr, ptr %b.cur.data2180, align 8
  %b.new.buf.len2182 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap177, i64 1)
  %sum183 = extractvalue { i64, i1 } %b.new.buf.len2182, 0
  %ovf184 = extractvalue { i64, i1 } %b.new.buf.len2182, 1
  br i1 %ovf184, label %str_overflow_abort186, label %b.new.buf.len2185

b.nogrow2171:                                     ; preds = %b.app.new.len164
  br label %b.grow_done172

b.grow_done172:                                   ; preds = %b.nogrow2171, %b.new.buf.len2185
  %b.app.data193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 1
  %b.app.data194 = load ptr, ptr %b.app.data193, align 8
  %b.app.dst195 = getelementptr i8, ptr %b.app.data194, i64 %b.app.cur.len160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst195, ptr align 1 %app.str.data158, i64 %app.str.len157, i1 false)
  %b.app.nul196 = getelementptr i8, ptr %b.app.data194, i64 %sum162
  store i8 0, ptr %b.app.nul196, align 1
  %b.len.gep197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 0
  store i64 %sum162, ptr %b.len.gep197, align 8
  br label %choice.exit154

b.new.buf.len2185:                                ; preds = %abort.dead187, %b.grow2170
  %arena.cur188 = call ptr @dva_arena_current()
  %b.new.buf2189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 %sum183)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2189, ptr align 1 %b.cur.data2181, i64 %b.cur.len2179, i1 false)
  %b.grow2.nul190 = getelementptr i8, ptr %b.new.buf2189, i64 %b.cur.len2179
  store i8 0, ptr %b.grow2.nul190, align 1
  %b.new.data2.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 1
  store ptr %b.new.buf2189, ptr %b.new.data2.gep191, align 8
  %b.new.cap2.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load155, i32 0, i32 2
  store i64 %b.new.cap177, ptr %b.new.cap2.gep192, align 8
  br label %b.grow_done172

str_overflow_abort186:                            ; preds = %b.grow2170
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead187:                                    ; No predecessors!
  br label %b.new.buf.len2185

b.app.new.len207:                                 ; preds = %abort.dead209, %choice.else153
  %b.cap210 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 2
  %b.cap211 = load i64, ptr %b.cap210, align 8
  %b.need.grow212 = icmp slt i64 %b.cap211, %sum205
  br i1 %b.need.grow212, label %b.grow2213, label %b.nogrow2214

str_overflow_abort208:                            ; preds = %choice.else153
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead209:                                    ; No predecessors!
  br label %b.app.new.len207

b.grow2213:                                       ; preds = %b.app.new.len207
  %b.cap2216 = mul i64 %b.cap211, 2
  %b.cap.small217 = icmp slt i64 %b.cap2216, 16
  %b.cap.grow218 = select i1 %b.cap.small217, i64 16, i64 %b.cap2216
  %b.cap.need219 = icmp slt i64 %b.cap.grow218, %sum205
  %b.new.cap220 = select i1 %b.cap.need219, i64 %sum205, i64 %b.cap.grow218
  %b.cur.len2221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  %b.cur.len2222 = load i64, ptr %b.cur.len2221, align 8
  %b.cur.data2223 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 1
  %b.cur.data2224 = load ptr, ptr %b.cur.data2223, align 8
  %b.new.buf.len2225 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap220, i64 1)
  %sum226 = extractvalue { i64, i1 } %b.new.buf.len2225, 0
  %ovf227 = extractvalue { i64, i1 } %b.new.buf.len2225, 1
  br i1 %ovf227, label %str_overflow_abort229, label %b.new.buf.len2228

b.nogrow2214:                                     ; preds = %b.app.new.len207
  br label %b.grow_done215

b.grow_done215:                                   ; preds = %b.nogrow2214, %b.new.buf.len2228
  %b.app.data236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 1
  %b.app.data237 = load ptr, ptr %b.app.data236, align 8
  %b.app.dst238 = getelementptr i8, ptr %b.app.data237, i64 %b.app.cur.len203
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst238, ptr align 1 %app.str.data201, i64 %app.str.len200, i1 false)
  %b.app.nul239 = getelementptr i8, ptr %b.app.data237, i64 %sum205
  store i8 0, ptr %b.app.nul239, align 1
  %b.len.gep240 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  store i64 %sum205, ptr %b.len.gep240, align 8
  %var.load241 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load241, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load241, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.150, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._150, align 8
  br label %loop.header.150

b.new.buf.len2228:                                ; preds = %abort.dead230, %b.grow2213
  %arena.cur231 = call ptr @dva_arena_current()
  %b.new.buf2232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 %sum226)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2232, ptr align 1 %b.cur.data2224, i64 %b.cur.len2222, i1 false)
  %b.grow2.nul233 = getelementptr i8, ptr %b.new.buf2232, i64 %b.cur.len2222
  store i8 0, ptr %b.grow2.nul233, align 1
  %b.new.data2.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 1
  store ptr %b.new.buf2232, ptr %b.new.data2.gep234, align 8
  %b.new.cap2.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 2
  store i64 %b.new.cap220, ptr %b.new.cap2.gep235, align 8
  br label %b.grow_done215

str_overflow_abort229:                            ; preds = %b.grow2213
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead230:                                    ; No predecessors!
  br label %b.new.buf.len2228

loop.header.150:                                  ; preds = %loop.latch.150, %b.grow_done215
  %counter.load = load i64, ptr %loop.idx.150, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.150, label %loop.exit.nat.150

loop.body.150:                                    ; preds = %loop.header.150
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.150, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load241, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %counter.load
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.elem.val, ptr %var._242, align 8
  store ptr %sl.elem.val, ptr %var.item, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load243 = load i64, ptr %var.i, align 8
  %cmptmp244 = icmp sgt i64 %var.load243, 0
  br i1 %cmptmp244, label %choice.then245, label %choice.exit246

loop.exit.nat.150:                                ; preds = %loop.header.150
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.150

loop.latch.150:                                   ; preds = %choice.exit246
  %step.val = load i64, ptr %loop.step.150, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.150, align 8
  br label %loop.header.150

loop.exit.150:                                    ; preds = %loop.exit.nat.150
  store ptr %cycle.prev.u, ptr %var._150, align 8
  %b.load298 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 0
  %b.rn.cur.len299 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len299, i64 1)
  %sum300 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf301 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf301, label %str_overflow_abort303, label %b.rn.new.len302

choice.then245:                                   ; preds = %loop.body.150
  %b.load247 = load ptr, ptr %var.b, align 8
  %app.str.len248 = load i64, ptr @str.39.struct, align 8
  %app.str.len249 = and i64 %app.str.len248, 281474976710655
  %app.str.data250 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.cur.len251 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load247, i32 0, i32 0
  %b.app.cur.len252 = load i64, ptr %b.app.cur.len251, align 8
  %b.app.new.len253 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len252, i64 %app.str.len249)
  %sum254 = extractvalue { i64, i1 } %b.app.new.len253, 0
  %ovf255 = extractvalue { i64, i1 } %b.app.new.len253, 1
  br i1 %ovf255, label %str_overflow_abort257, label %b.app.new.len256

choice.exit246:                                   ; preds = %b.grow_done264, %loop.body.150
  %var.load290 = load ptr, ptr %var.b, align 8
  %var.load291 = load i64, ptr %var.depth, align 8
  %addtmp = add i64 %var.load291, 1
  %var.load292 = load i64, ptr %var.indent, align 8
  %multmp = mul i64 %addtmp, %var.load292
  call void @"json::#append_indent"(ptr %var.load290, i64 %multmp)
  %var.load293 = load ptr, ptr %var.b, align 8
  %var.load294 = load ptr, ptr %var.item, align 8
  %var.load295 = load i64, ptr %var.indent, align 8
  %var.load296 = load i64, ptr %var.depth, align 8
  %addtmp297 = add i64 %var.load296, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load293, ptr %var.load294, i64 %var.load295, i64 %addtmp297)
  br label %loop.latch.150

b.app.new.len256:                                 ; preds = %abort.dead258, %choice.then245
  %b.cap259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load247, i32 0, i32 2
  %b.cap260 = load i64, ptr %b.cap259, align 8
  %b.need.grow261 = icmp slt i64 %b.cap260, %sum254
  br i1 %b.need.grow261, label %b.grow2262, label %b.nogrow2263

str_overflow_abort257:                            ; preds = %choice.then245
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead258:                                    ; No predecessors!
  br label %b.app.new.len256

b.grow2262:                                       ; preds = %b.app.new.len256
  %b.cap2265 = mul i64 %b.cap260, 2
  %b.cap.small266 = icmp slt i64 %b.cap2265, 16
  %b.cap.grow267 = select i1 %b.cap.small266, i64 16, i64 %b.cap2265
  %b.cap.need268 = icmp slt i64 %b.cap.grow267, %sum254
  %b.new.cap269 = select i1 %b.cap.need268, i64 %sum254, i64 %b.cap.grow267
  %b.cur.len2270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load247, i32 0, i32 0
  %b.cur.len2271 = load i64, ptr %b.cur.len2270, align 8
  %b.cur.data2272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load247, i32 0, i32 1
  %b.cur.data2273 = load ptr, ptr %b.cur.data2272, align 8
  %b.new.buf.len2274 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap269, i64 1)
  %sum275 = extractvalue { i64, i1 } %b.new.buf.len2274, 0
  %ovf276 = extractvalue { i64, i1 } %b.new.buf.len2274, 1
  br i1 %ovf276, label %str_overflow_abort278, label %b.new.buf.len2277

b.nogrow2263:                                     ; preds = %b.app.new.len256
  br label %b.grow_done264

b.grow_done264:                                   ; preds = %b.nogrow2263, %b.new.buf.len2277
  %b.app.data285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load247, i32 0, i32 1
  %b.app.data286 = load ptr, ptr %b.app.data285, align 8
  %b.app.dst287 = getelementptr i8, ptr %b.app.data286, i64 %b.app.cur.len252
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst287, ptr align 1 %app.str.data250, i64 %app.str.len249, i1 false)
  %b.app.nul288 = getelementptr i8, ptr %b.app.data286, i64 %sum254
  store i8 0, ptr %b.app.nul288, align 1
  %b.len.gep289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load247, i32 0, i32 0
  store i64 %sum254, ptr %b.len.gep289, align 8
  br label %choice.exit246

b.new.buf.len2277:                                ; preds = %abort.dead279, %b.grow2262
  %arena.cur280 = call ptr @dva_arena_current()
  %b.new.buf2281 = call ptr @dva_arena_alloc(ptr %arena.cur280, i64 %sum275)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2281, ptr align 1 %b.cur.data2273, i64 %b.cur.len2271, i1 false)
  %b.grow2.nul282 = getelementptr i8, ptr %b.new.buf2281, i64 %b.cur.len2271
  store i8 0, ptr %b.grow2.nul282, align 1
  %b.new.data2.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load247, i32 0, i32 1
  store ptr %b.new.buf2281, ptr %b.new.data2.gep283, align 8
  %b.new.cap2.gep284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load247, i32 0, i32 2
  store i64 %b.new.cap269, ptr %b.new.cap2.gep284, align 8
  br label %b.grow_done264

str_overflow_abort278:                            ; preds = %b.grow2262
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead279:                                    ; No predecessors!
  br label %b.new.buf.len2277

b.rn.new.len302:                                  ; preds = %abort.dead304, %loop.exit.150
  %b.cap305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 2
  %b.cap306 = load i64, ptr %b.cap305, align 8
  %b.need.grow307 = icmp slt i64 %b.cap306, %sum300
  br i1 %b.need.grow307, label %b.grow2308, label %b.nogrow2309

str_overflow_abort303:                            ; preds = %loop.exit.150
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead304:                                    ; No predecessors!
  br label %b.rn.new.len302

b.grow2308:                                       ; preds = %b.rn.new.len302
  %b.cap2311 = mul i64 %b.cap306, 2
  %b.cap.small312 = icmp slt i64 %b.cap2311, 16
  %b.cap.grow313 = select i1 %b.cap.small312, i64 16, i64 %b.cap2311
  %b.cap.need314 = icmp slt i64 %b.cap.grow313, %sum300
  %b.new.cap315 = select i1 %b.cap.need314, i64 %sum300, i64 %b.cap.grow313
  %b.cur.len2316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 0
  %b.cur.len2317 = load i64, ptr %b.cur.len2316, align 8
  %b.cur.data2318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 1
  %b.cur.data2319 = load ptr, ptr %b.cur.data2318, align 8
  %b.new.buf.len2320 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap315, i64 1)
  %sum321 = extractvalue { i64, i1 } %b.new.buf.len2320, 0
  %ovf322 = extractvalue { i64, i1 } %b.new.buf.len2320, 1
  br i1 %ovf322, label %str_overflow_abort324, label %b.new.buf.len2323

b.nogrow2309:                                     ; preds = %b.rn.new.len302
  br label %b.grow_done310

b.grow_done310:                                   ; preds = %b.nogrow2309, %b.new.buf.len2323
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 1
  %b.rn.data331 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data331, i64 %b.rn.cur.len299
  br i1 true, label %br.b1.151, label %br.c2.151

b.new.buf.len2323:                                ; preds = %abort.dead325, %b.grow2308
  %arena.cur326 = call ptr @dva_arena_current()
  %b.new.buf2327 = call ptr @dva_arena_alloc(ptr %arena.cur326, i64 %sum321)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2327, ptr align 1 %b.cur.data2319, i64 %b.cur.len2317, i1 false)
  %b.grow2.nul328 = getelementptr i8, ptr %b.new.buf2327, i64 %b.cur.len2317
  store i8 0, ptr %b.grow2.nul328, align 1
  %b.new.data2.gep329 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 1
  store ptr %b.new.buf2327, ptr %b.new.data2.gep329, align 8
  %b.new.cap2.gep330 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 2
  store i64 %b.new.cap315, ptr %b.new.cap2.gep330, align 8
  br label %b.grow_done310

str_overflow_abort324:                            ; preds = %b.grow2308
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead325:                                    ; No predecessors!
  br label %b.new.buf.len2323

br.b1.151:                                        ; preds = %b.grow_done310
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.151

br.c2.151:                                        ; preds = %b.grow_done310
  br i1 true, label %br.b2.151, label %br.c3.151

br.b2.151:                                        ; preds = %br.c2.151
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -118, ptr %br.dst1, align 1
  br label %br.done.151

br.c3.151:                                        ; preds = %br.c2.151
  br i1 true, label %br.b3.151, label %br.b4.151

br.b3.151:                                        ; preds = %br.c3.151
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -118, ptr %br.dst2.3, align 1
  br label %br.done.151

br.b4.151:                                        ; preds = %br.c3.151
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -118, ptr %br.dst3.4, align 1
  br label %br.done.151

br.done.151:                                      ; preds = %br.b4.151, %br.b3.151, %br.b2.151, %br.b1.151
  %br.nul = getelementptr i8, ptr %b.rn.data331, i64 %sum300
  store i8 0, ptr %br.nul, align 1
  %b.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load298, i32 0, i32 0
  store i64 %sum300, ptr %b.len.gep332, align 8
  %var.load333 = load ptr, ptr %var.b, align 8
  %var.load334 = load i64, ptr %var.depth, align 8
  %var.load335 = load i64, ptr %var.indent, align 8
  %multmp336 = mul i64 %var.load334, %var.load335
  call void @"json::#append_indent"(ptr %var.load333, i64 %multmp336)
  %b.load337 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len338 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 0
  %b.rn.cur.len339 = load i64, ptr %b.rn.cur.len338, align 8
  %b.rn.new.len340 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len339, i64 1)
  %sum341 = extractvalue { i64, i1 } %b.rn.new.len340, 0
  %ovf342 = extractvalue { i64, i1 } %b.rn.new.len340, 1
  br i1 %ovf342, label %str_overflow_abort344, label %b.rn.new.len343

b.rn.new.len343:                                  ; preds = %abort.dead345, %br.done.151
  %b.cap346 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 2
  %b.cap347 = load i64, ptr %b.cap346, align 8
  %b.need.grow348 = icmp slt i64 %b.cap347, %sum341
  br i1 %b.need.grow348, label %b.grow2349, label %b.nogrow2350

str_overflow_abort344:                            ; preds = %br.done.151
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead345:                                    ; No predecessors!
  br label %b.rn.new.len343

b.grow2349:                                       ; preds = %b.rn.new.len343
  %b.cap2352 = mul i64 %b.cap347, 2
  %b.cap.small353 = icmp slt i64 %b.cap2352, 16
  %b.cap.grow354 = select i1 %b.cap.small353, i64 16, i64 %b.cap2352
  %b.cap.need355 = icmp slt i64 %b.cap.grow354, %sum341
  %b.new.cap356 = select i1 %b.cap.need355, i64 %sum341, i64 %b.cap.grow354
  %b.cur.len2357 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 0
  %b.cur.len2358 = load i64, ptr %b.cur.len2357, align 8
  %b.cur.data2359 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 1
  %b.cur.data2360 = load ptr, ptr %b.cur.data2359, align 8
  %b.new.buf.len2361 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap356, i64 1)
  %sum362 = extractvalue { i64, i1 } %b.new.buf.len2361, 0
  %ovf363 = extractvalue { i64, i1 } %b.new.buf.len2361, 1
  br i1 %ovf363, label %str_overflow_abort365, label %b.new.buf.len2364

b.nogrow2350:                                     ; preds = %b.rn.new.len343
  br label %b.grow_done351

b.grow_done351:                                   ; preds = %b.nogrow2350, %b.new.buf.len2364
  %b.rn.data372 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 1
  %b.rn.data373 = load ptr, ptr %b.rn.data372, align 8
  %b.rn.dst374 = getelementptr i8, ptr %b.rn.data373, i64 %b.rn.cur.len339
  br i1 true, label %br.b1.152, label %br.c2.152

b.new.buf.len2364:                                ; preds = %abort.dead366, %b.grow2349
  %arena.cur367 = call ptr @dva_arena_current()
  %b.new.buf2368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 %sum362)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2368, ptr align 1 %b.cur.data2360, i64 %b.cur.len2358, i1 false)
  %b.grow2.nul369 = getelementptr i8, ptr %b.new.buf2368, i64 %b.cur.len2358
  store i8 0, ptr %b.grow2.nul369, align 1
  %b.new.data2.gep370 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 1
  store ptr %b.new.buf2368, ptr %b.new.data2.gep370, align 8
  %b.new.cap2.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 2
  store i64 %b.new.cap356, ptr %b.new.cap2.gep371, align 8
  br label %b.grow_done351

str_overflow_abort365:                            ; preds = %b.grow2349
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead366:                                    ; No predecessors!
  br label %b.new.buf.len2364

br.b1.152:                                        ; preds = %b.grow_done351
  store i8 93, ptr %b.rn.dst374, align 1
  br label %br.done.152

br.c2.152:                                        ; preds = %b.grow_done351
  br i1 true, label %br.b2.152, label %br.c3.152

br.b2.152:                                        ; preds = %br.c2.152
  store i8 -63, ptr %b.rn.dst374, align 1
  %br.dst1375 = getelementptr i8, ptr %b.rn.dst374, i64 1
  store i8 -99, ptr %br.dst1375, align 1
  br label %br.done.152

br.c3.152:                                        ; preds = %br.c2.152
  br i1 true, label %br.b3.152, label %br.b4.152

br.b3.152:                                        ; preds = %br.c3.152
  store i8 -32, ptr %b.rn.dst374, align 1
  %br.dst1.3376 = getelementptr i8, ptr %b.rn.dst374, i64 1
  store i8 -127, ptr %br.dst1.3376, align 1
  %br.dst2.3377 = getelementptr i8, ptr %b.rn.dst374, i64 2
  store i8 -99, ptr %br.dst2.3377, align 1
  br label %br.done.152

br.b4.152:                                        ; preds = %br.c3.152
  store i8 -16, ptr %b.rn.dst374, align 1
  %br.dst1.4378 = getelementptr i8, ptr %b.rn.dst374, i64 1
  store i8 -128, ptr %br.dst1.4378, align 1
  %br.dst2.4379 = getelementptr i8, ptr %b.rn.dst374, i64 2
  store i8 -127, ptr %br.dst2.4379, align 1
  %br.dst3.4380 = getelementptr i8, ptr %b.rn.dst374, i64 3
  store i8 -99, ptr %br.dst3.4380, align 1
  br label %br.done.152

br.done.152:                                      ; preds = %br.b4.152, %br.b3.152, %br.b2.152, %br.b1.152
  %br.nul381 = getelementptr i8, ptr %b.rn.data373, i64 %sum341
  store i8 0, ptr %br.nul381, align 1
  %b.len.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load337, i32 0, i32 0
  store i64 %sum341, ptr %b.len.gep382, align 8
  br label %choice.exit154

choice.case383:                                   ; preds = %choice.next144
  %pay.gep388 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr389 = load ptr, ptr %pay.gep388, align 8
  store ptr %payload.ptr389, ptr %var._390, align 8
  store ptr %payload.ptr389, ptr %var.pairs, align 8
  %var.load391 = load ptr, ptr %var.pairs, align 8
  %slice.len.gep392 = getelementptr inbounds { ptr, i64 }, ptr %var.load391, i32 0, i32 1
  %slice.len.raw393 = load i64, ptr %slice.len.gep392, align 8
  %slice.len394 = and i64 %slice.len.raw393, 4611686018427387903
  %cmptmp395 = icmp eq i64 %slice.len394, 0
  br i1 %cmptmp395, label %choice.then396, label %choice.else397

choice.next384:                                   ; preds = %choice.next144
  br label %choice.exit

choice.then396:                                   ; preds = %choice.case383
  %b.load399 = load ptr, ptr %var.b, align 8
  %app.str.len400 = load i64, ptr @str.40.struct, align 8
  %app.str.len401 = and i64 %app.str.len400, 281474976710655
  %app.str.data402 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %b.app.cur.len403 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 0
  %b.app.cur.len404 = load i64, ptr %b.app.cur.len403, align 8
  %b.app.new.len405 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len404, i64 %app.str.len401)
  %sum406 = extractvalue { i64, i1 } %b.app.new.len405, 0
  %ovf407 = extractvalue { i64, i1 } %b.app.new.len405, 1
  br i1 %ovf407, label %str_overflow_abort409, label %b.app.new.len408

choice.else397:                                   ; preds = %choice.case383
  %b.load442 = load ptr, ptr %var.b, align 8
  %app.str.len443 = load i64, ptr @str.41.struct, align 8
  %app.str.len444 = and i64 %app.str.len443, 281474976710655
  %app.str.data445 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %b.app.cur.len446 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load442, i32 0, i32 0
  %b.app.cur.len447 = load i64, ptr %b.app.cur.len446, align 8
  %b.app.new.len448 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len447, i64 %app.str.len444)
  %sum449 = extractvalue { i64, i1 } %b.app.new.len448, 0
  %ovf450 = extractvalue { i64, i1 } %b.app.new.len448, 1
  br i1 %ovf450, label %str_overflow_abort452, label %b.app.new.len451

choice.exit398:                                   ; preds = %br.done.155, %b.grow_done416
  br label %choice.exit

b.app.new.len408:                                 ; preds = %abort.dead410, %choice.then396
  %b.cap411 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 2
  %b.cap412 = load i64, ptr %b.cap411, align 8
  %b.need.grow413 = icmp slt i64 %b.cap412, %sum406
  br i1 %b.need.grow413, label %b.grow2414, label %b.nogrow2415

str_overflow_abort409:                            ; preds = %choice.then396
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead410:                                    ; No predecessors!
  br label %b.app.new.len408

b.grow2414:                                       ; preds = %b.app.new.len408
  %b.cap2417 = mul i64 %b.cap412, 2
  %b.cap.small418 = icmp slt i64 %b.cap2417, 16
  %b.cap.grow419 = select i1 %b.cap.small418, i64 16, i64 %b.cap2417
  %b.cap.need420 = icmp slt i64 %b.cap.grow419, %sum406
  %b.new.cap421 = select i1 %b.cap.need420, i64 %sum406, i64 %b.cap.grow419
  %b.cur.len2422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 0
  %b.cur.len2423 = load i64, ptr %b.cur.len2422, align 8
  %b.cur.data2424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 1
  %b.cur.data2425 = load ptr, ptr %b.cur.data2424, align 8
  %b.new.buf.len2426 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap421, i64 1)
  %sum427 = extractvalue { i64, i1 } %b.new.buf.len2426, 0
  %ovf428 = extractvalue { i64, i1 } %b.new.buf.len2426, 1
  br i1 %ovf428, label %str_overflow_abort430, label %b.new.buf.len2429

b.nogrow2415:                                     ; preds = %b.app.new.len408
  br label %b.grow_done416

b.grow_done416:                                   ; preds = %b.nogrow2415, %b.new.buf.len2429
  %b.app.data437 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 1
  %b.app.data438 = load ptr, ptr %b.app.data437, align 8
  %b.app.dst439 = getelementptr i8, ptr %b.app.data438, i64 %b.app.cur.len404
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst439, ptr align 1 %app.str.data402, i64 %app.str.len401, i1 false)
  %b.app.nul440 = getelementptr i8, ptr %b.app.data438, i64 %sum406
  store i8 0, ptr %b.app.nul440, align 1
  %b.len.gep441 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 0
  store i64 %sum406, ptr %b.len.gep441, align 8
  br label %choice.exit398

b.new.buf.len2429:                                ; preds = %abort.dead431, %b.grow2414
  %arena.cur432 = call ptr @dva_arena_current()
  %b.new.buf2433 = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 %sum427)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2433, ptr align 1 %b.cur.data2425, i64 %b.cur.len2423, i1 false)
  %b.grow2.nul434 = getelementptr i8, ptr %b.new.buf2433, i64 %b.cur.len2423
  store i8 0, ptr %b.grow2.nul434, align 1
  %b.new.data2.gep435 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 1
  store ptr %b.new.buf2433, ptr %b.new.data2.gep435, align 8
  %b.new.cap2.gep436 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 2
  store i64 %b.new.cap421, ptr %b.new.cap2.gep436, align 8
  br label %b.grow_done416

str_overflow_abort430:                            ; preds = %b.grow2414
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead431:                                    ; No predecessors!
  br label %b.new.buf.len2429

b.app.new.len451:                                 ; preds = %abort.dead453, %choice.else397
  %b.cap454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load442, i32 0, i32 2
  %b.cap455 = load i64, ptr %b.cap454, align 8
  %b.need.grow456 = icmp slt i64 %b.cap455, %sum449
  br i1 %b.need.grow456, label %b.grow2457, label %b.nogrow2458

str_overflow_abort452:                            ; preds = %choice.else397
  %24 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead453:                                    ; No predecessors!
  br label %b.app.new.len451

b.grow2457:                                       ; preds = %b.app.new.len451
  %b.cap2460 = mul i64 %b.cap455, 2
  %b.cap.small461 = icmp slt i64 %b.cap2460, 16
  %b.cap.grow462 = select i1 %b.cap.small461, i64 16, i64 %b.cap2460
  %b.cap.need463 = icmp slt i64 %b.cap.grow462, %sum449
  %b.new.cap464 = select i1 %b.cap.need463, i64 %sum449, i64 %b.cap.grow462
  %b.cur.len2465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load442, i32 0, i32 0
  %b.cur.len2466 = load i64, ptr %b.cur.len2465, align 8
  %b.cur.data2467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load442, i32 0, i32 1
  %b.cur.data2468 = load ptr, ptr %b.cur.data2467, align 8
  %b.new.buf.len2469 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap464, i64 1)
  %sum470 = extractvalue { i64, i1 } %b.new.buf.len2469, 0
  %ovf471 = extractvalue { i64, i1 } %b.new.buf.len2469, 1
  br i1 %ovf471, label %str_overflow_abort473, label %b.new.buf.len2472

b.nogrow2458:                                     ; preds = %b.app.new.len451
  br label %b.grow_done459

b.grow_done459:                                   ; preds = %b.nogrow2458, %b.new.buf.len2472
  %b.app.data480 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load442, i32 0, i32 1
  %b.app.data481 = load ptr, ptr %b.app.data480, align 8
  %b.app.dst482 = getelementptr i8, ptr %b.app.data481, i64 %b.app.cur.len447
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst482, ptr align 1 %app.str.data445, i64 %app.str.len444, i1 false)
  %b.app.nul483 = getelementptr i8, ptr %b.app.data481, i64 %sum449
  store i8 0, ptr %b.app.nul483, align 1
  %b.len.gep484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load442, i32 0, i32 0
  store i64 %sum449, ptr %b.len.gep484, align 8
  %var.load485 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep486 = getelementptr inbounds { ptr, i64 }, ptr %var.load485, i32 0, i32 1
  %sl.len.raw487 = load i64, ptr %sl.len.gep486, align 8
  %sl.len488 = and i64 %sl.len.raw487, 4611686018427387903
  %sl.data.gep489 = getelementptr inbounds { ptr, i64 }, ptr %var.load485, i32 0, i32 0
  %sl.data490 = load ptr, ptr %sl.data.gep489, align 8
  store i64 0, ptr %loop.idx.153, align 8
  store i64 0, ptr %var.i491, align 8
  %cycle.prev.u492 = load ptr, ptr %var._390, align 8
  br label %loop.header.153

b.new.buf.len2472:                                ; preds = %abort.dead474, %b.grow2457
  %arena.cur475 = call ptr @dva_arena_current()
  %b.new.buf2476 = call ptr @dva_arena_alloc(ptr %arena.cur475, i64 %sum470)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2476, ptr align 1 %b.cur.data2468, i64 %b.cur.len2466, i1 false)
  %b.grow2.nul477 = getelementptr i8, ptr %b.new.buf2476, i64 %b.cur.len2466
  store i8 0, ptr %b.grow2.nul477, align 1
  %b.new.data2.gep478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load442, i32 0, i32 1
  store ptr %b.new.buf2476, ptr %b.new.data2.gep478, align 8
  %b.new.cap2.gep479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load442, i32 0, i32 2
  store i64 %b.new.cap464, ptr %b.new.cap2.gep479, align 8
  br label %b.grow_done459

str_overflow_abort473:                            ; preds = %b.grow2457
  %25 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead474:                                    ; No predecessors!
  br label %b.new.buf.len2472

loop.header.153:                                  ; preds = %loop.latch.153, %b.grow_done459
  %counter.load493 = load i64, ptr %loop.idx.153, align 8
  %loop.cond494 = icmp slt i64 %counter.load493, %sl.len488
  br i1 %loop.cond494, label %loop.body.153, label %loop.exit.nat.153

loop.body.153:                                    ; preds = %loop.header.153
  %loop.rel.i496 = sub i64 %counter.load493, 0
  store i64 1, ptr %loop.step.153, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load485, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.153:                                ; preds = %loop.header.153
  %loop.rel.end495 = sub i64 %counter.load493, 0
  store i64 %loop.rel.end495, ptr %var.i491, align 8
  br label %loop.exit.153

loop.latch.153:                                   ; preds = %b.grow_done570
  %step.val603 = load i64, ptr %loop.step.153, align 8
  %loop.next604 = add i64 %counter.load493, %step.val603
  store i64 %loop.next604, ptr %loop.idx.153, align 8
  br label %loop.header.153

loop.exit.153:                                    ; preds = %loop.exit.nat.153
  store ptr %cycle.prev.u492, ptr %var._390, align 8
  %b.load605 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len606 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load605, i32 0, i32 0
  %b.rn.cur.len607 = load i64, ptr %b.rn.cur.len606, align 8
  %b.rn.new.len608 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len607, i64 1)
  %sum609 = extractvalue { i64, i1 } %b.rn.new.len608, 0
  %ovf610 = extractvalue { i64, i1 } %b.rn.new.len608, 1
  br i1 %ovf610, label %str_overflow_abort612, label %b.rn.new.len611

sl.rec.elem.pbb:                                  ; preds = %loop.body.153
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data490, i64 %counter.load493
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.153
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data490, i64 %counter.load493
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i496, ptr %var._i497, align 8
  store ptr %sl.rec.elem, ptr %var._498, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i496, ptr %var.i491, align 8
  %var.load499 = load i64, ptr %var.i491, align 8
  %cmptmp500 = icmp sgt i64 %var.load499, 0
  br i1 %cmptmp500, label %choice.then501, label %choice.exit502

choice.then501:                                   ; preds = %sl.rec.elem.dbb
  %b.load503 = load ptr, ptr %var.b, align 8
  %app.str.len504 = load i64, ptr @str.39.struct, align 8
  %app.str.len505 = and i64 %app.str.len504, 281474976710655
  %app.str.data506 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.cur.len507 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load503, i32 0, i32 0
  %b.app.cur.len508 = load i64, ptr %b.app.cur.len507, align 8
  %b.app.new.len509 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len508, i64 %app.str.len505)
  %sum510 = extractvalue { i64, i1 } %b.app.new.len509, 0
  %ovf511 = extractvalue { i64, i1 } %b.app.new.len509, 1
  br i1 %ovf511, label %str_overflow_abort513, label %b.app.new.len512

choice.exit502:                                   ; preds = %b.grow_done520, %sl.rec.elem.dbb
  %var.load546 = load ptr, ptr %var.b, align 8
  %var.load547 = load i64, ptr %var.depth, align 8
  %addtmp548 = add i64 %var.load547, 1
  %var.load549 = load i64, ptr %var.indent, align 8
  %multmp550 = mul i64 %addtmp548, %var.load549
  call void @"json::#append_indent"(ptr %var.load546, i64 %multmp550)
  %var.load551 = load ptr, ptr %var.b, align 8
  %var.load552 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load552, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load551, ptr %fld.load)
  %b.load553 = load ptr, ptr %var.b, align 8
  %app.str.len554 = load i64, ptr @str.42.struct, align 8
  %app.str.len555 = and i64 %app.str.len554, 281474976710655
  %app.str.data556 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.42.struct, i32 0, i32 1), align 8
  %b.app.cur.len557 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  %b.app.cur.len558 = load i64, ptr %b.app.cur.len557, align 8
  %b.app.new.len559 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len558, i64 %app.str.len555)
  %sum560 = extractvalue { i64, i1 } %b.app.new.len559, 0
  %ovf561 = extractvalue { i64, i1 } %b.app.new.len559, 1
  br i1 %ovf561, label %str_overflow_abort563, label %b.app.new.len562

b.app.new.len512:                                 ; preds = %abort.dead514, %choice.then501
  %b.cap515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load503, i32 0, i32 2
  %b.cap516 = load i64, ptr %b.cap515, align 8
  %b.need.grow517 = icmp slt i64 %b.cap516, %sum510
  br i1 %b.need.grow517, label %b.grow2518, label %b.nogrow2519

str_overflow_abort513:                            ; preds = %choice.then501
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead514:                                    ; No predecessors!
  br label %b.app.new.len512

b.grow2518:                                       ; preds = %b.app.new.len512
  %b.cap2521 = mul i64 %b.cap516, 2
  %b.cap.small522 = icmp slt i64 %b.cap2521, 16
  %b.cap.grow523 = select i1 %b.cap.small522, i64 16, i64 %b.cap2521
  %b.cap.need524 = icmp slt i64 %b.cap.grow523, %sum510
  %b.new.cap525 = select i1 %b.cap.need524, i64 %sum510, i64 %b.cap.grow523
  %b.cur.len2526 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load503, i32 0, i32 0
  %b.cur.len2527 = load i64, ptr %b.cur.len2526, align 8
  %b.cur.data2528 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load503, i32 0, i32 1
  %b.cur.data2529 = load ptr, ptr %b.cur.data2528, align 8
  %b.new.buf.len2530 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap525, i64 1)
  %sum531 = extractvalue { i64, i1 } %b.new.buf.len2530, 0
  %ovf532 = extractvalue { i64, i1 } %b.new.buf.len2530, 1
  br i1 %ovf532, label %str_overflow_abort534, label %b.new.buf.len2533

b.nogrow2519:                                     ; preds = %b.app.new.len512
  br label %b.grow_done520

b.grow_done520:                                   ; preds = %b.nogrow2519, %b.new.buf.len2533
  %b.app.data541 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load503, i32 0, i32 1
  %b.app.data542 = load ptr, ptr %b.app.data541, align 8
  %b.app.dst543 = getelementptr i8, ptr %b.app.data542, i64 %b.app.cur.len508
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst543, ptr align 1 %app.str.data506, i64 %app.str.len505, i1 false)
  %b.app.nul544 = getelementptr i8, ptr %b.app.data542, i64 %sum510
  store i8 0, ptr %b.app.nul544, align 1
  %b.len.gep545 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load503, i32 0, i32 0
  store i64 %sum510, ptr %b.len.gep545, align 8
  br label %choice.exit502

b.new.buf.len2533:                                ; preds = %abort.dead535, %b.grow2518
  %arena.cur536 = call ptr @dva_arena_current()
  %b.new.buf2537 = call ptr @dva_arena_alloc(ptr %arena.cur536, i64 %sum531)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2537, ptr align 1 %b.cur.data2529, i64 %b.cur.len2527, i1 false)
  %b.grow2.nul538 = getelementptr i8, ptr %b.new.buf2537, i64 %b.cur.len2527
  store i8 0, ptr %b.grow2.nul538, align 1
  %b.new.data2.gep539 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load503, i32 0, i32 1
  store ptr %b.new.buf2537, ptr %b.new.data2.gep539, align 8
  %b.new.cap2.gep540 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load503, i32 0, i32 2
  store i64 %b.new.cap525, ptr %b.new.cap2.gep540, align 8
  br label %b.grow_done520

str_overflow_abort534:                            ; preds = %b.grow2518
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead535:                                    ; No predecessors!
  br label %b.new.buf.len2533

b.app.new.len562:                                 ; preds = %abort.dead564, %choice.exit502
  %b.cap565 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 2
  %b.cap566 = load i64, ptr %b.cap565, align 8
  %b.need.grow567 = icmp slt i64 %b.cap566, %sum560
  br i1 %b.need.grow567, label %b.grow2568, label %b.nogrow2569

str_overflow_abort563:                            ; preds = %choice.exit502
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead564:                                    ; No predecessors!
  br label %b.app.new.len562

b.grow2568:                                       ; preds = %b.app.new.len562
  %b.cap2571 = mul i64 %b.cap566, 2
  %b.cap.small572 = icmp slt i64 %b.cap2571, 16
  %b.cap.grow573 = select i1 %b.cap.small572, i64 16, i64 %b.cap2571
  %b.cap.need574 = icmp slt i64 %b.cap.grow573, %sum560
  %b.new.cap575 = select i1 %b.cap.need574, i64 %sum560, i64 %b.cap.grow573
  %b.cur.len2576 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  %b.cur.len2577 = load i64, ptr %b.cur.len2576, align 8
  %b.cur.data2578 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  %b.cur.data2579 = load ptr, ptr %b.cur.data2578, align 8
  %b.new.buf.len2580 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap575, i64 1)
  %sum581 = extractvalue { i64, i1 } %b.new.buf.len2580, 0
  %ovf582 = extractvalue { i64, i1 } %b.new.buf.len2580, 1
  br i1 %ovf582, label %str_overflow_abort584, label %b.new.buf.len2583

b.nogrow2569:                                     ; preds = %b.app.new.len562
  br label %b.grow_done570

b.grow_done570:                                   ; preds = %b.nogrow2569, %b.new.buf.len2583
  %b.app.data591 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  %b.app.data592 = load ptr, ptr %b.app.data591, align 8
  %b.app.dst593 = getelementptr i8, ptr %b.app.data592, i64 %b.app.cur.len558
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst593, ptr align 1 %app.str.data556, i64 %app.str.len555, i1 false)
  %b.app.nul594 = getelementptr i8, ptr %b.app.data592, i64 %sum560
  store i8 0, ptr %b.app.nul594, align 1
  %b.len.gep595 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 0
  store i64 %sum560, ptr %b.len.gep595, align 8
  %var.load596 = load ptr, ptr %var.b, align 8
  %var.load597 = load ptr, ptr %var.p, align 8
  %fld.gep598 = getelementptr inbounds { ptr, ptr }, ptr %var.load597, i32 0, i32 1
  %fld.load599 = load ptr, ptr %fld.gep598, align 8
  %var.load600 = load i64, ptr %var.indent, align 8
  %var.load601 = load i64, ptr %var.depth, align 8
  %addtmp602 = add i64 %var.load601, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load596, ptr %fld.load599, i64 %var.load600, i64 %addtmp602)
  br label %loop.latch.153

b.new.buf.len2583:                                ; preds = %abort.dead585, %b.grow2568
  %arena.cur586 = call ptr @dva_arena_current()
  %b.new.buf2587 = call ptr @dva_arena_alloc(ptr %arena.cur586, i64 %sum581)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2587, ptr align 1 %b.cur.data2579, i64 %b.cur.len2577, i1 false)
  %b.grow2.nul588 = getelementptr i8, ptr %b.new.buf2587, i64 %b.cur.len2577
  store i8 0, ptr %b.grow2.nul588, align 1
  %b.new.data2.gep589 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 1
  store ptr %b.new.buf2587, ptr %b.new.data2.gep589, align 8
  %b.new.cap2.gep590 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load553, i32 0, i32 2
  store i64 %b.new.cap575, ptr %b.new.cap2.gep590, align 8
  br label %b.grow_done570

str_overflow_abort584:                            ; preds = %b.grow2568
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead585:                                    ; No predecessors!
  br label %b.new.buf.len2583

b.rn.new.len611:                                  ; preds = %abort.dead613, %loop.exit.153
  %b.cap614 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load605, i32 0, i32 2
  %b.cap615 = load i64, ptr %b.cap614, align 8
  %b.need.grow616 = icmp slt i64 %b.cap615, %sum609
  br i1 %b.need.grow616, label %b.grow2617, label %b.nogrow2618

str_overflow_abort612:                            ; preds = %loop.exit.153
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead613:                                    ; No predecessors!
  br label %b.rn.new.len611

b.grow2617:                                       ; preds = %b.rn.new.len611
  %b.cap2620 = mul i64 %b.cap615, 2
  %b.cap.small621 = icmp slt i64 %b.cap2620, 16
  %b.cap.grow622 = select i1 %b.cap.small621, i64 16, i64 %b.cap2620
  %b.cap.need623 = icmp slt i64 %b.cap.grow622, %sum609
  %b.new.cap624 = select i1 %b.cap.need623, i64 %sum609, i64 %b.cap.grow622
  %b.cur.len2625 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load605, i32 0, i32 0
  %b.cur.len2626 = load i64, ptr %b.cur.len2625, align 8
  %b.cur.data2627 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load605, i32 0, i32 1
  %b.cur.data2628 = load ptr, ptr %b.cur.data2627, align 8
  %b.new.buf.len2629 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap624, i64 1)
  %sum630 = extractvalue { i64, i1 } %b.new.buf.len2629, 0
  %ovf631 = extractvalue { i64, i1 } %b.new.buf.len2629, 1
  br i1 %ovf631, label %str_overflow_abort633, label %b.new.buf.len2632

b.nogrow2618:                                     ; preds = %b.rn.new.len611
  br label %b.grow_done619

b.grow_done619:                                   ; preds = %b.nogrow2618, %b.new.buf.len2632
  %b.rn.data640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load605, i32 0, i32 1
  %b.rn.data641 = load ptr, ptr %b.rn.data640, align 8
  %b.rn.dst642 = getelementptr i8, ptr %b.rn.data641, i64 %b.rn.cur.len607
  br i1 true, label %br.b1.154, label %br.c2.154

b.new.buf.len2632:                                ; preds = %abort.dead634, %b.grow2617
  %arena.cur635 = call ptr @dva_arena_current()
  %b.new.buf2636 = call ptr @dva_arena_alloc(ptr %arena.cur635, i64 %sum630)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2636, ptr align 1 %b.cur.data2628, i64 %b.cur.len2626, i1 false)
  %b.grow2.nul637 = getelementptr i8, ptr %b.new.buf2636, i64 %b.cur.len2626
  store i8 0, ptr %b.grow2.nul637, align 1
  %b.new.data2.gep638 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load605, i32 0, i32 1
  store ptr %b.new.buf2636, ptr %b.new.data2.gep638, align 8
  %b.new.cap2.gep639 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load605, i32 0, i32 2
  store i64 %b.new.cap624, ptr %b.new.cap2.gep639, align 8
  br label %b.grow_done619

str_overflow_abort633:                            ; preds = %b.grow2617
  %31 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead634:                                    ; No predecessors!
  br label %b.new.buf.len2632

br.b1.154:                                        ; preds = %b.grow_done619
  store i8 10, ptr %b.rn.dst642, align 1
  br label %br.done.154

br.c2.154:                                        ; preds = %b.grow_done619
  br i1 true, label %br.b2.154, label %br.c3.154

br.b2.154:                                        ; preds = %br.c2.154
  store i8 -64, ptr %b.rn.dst642, align 1
  %br.dst1643 = getelementptr i8, ptr %b.rn.dst642, i64 1
  store i8 -118, ptr %br.dst1643, align 1
  br label %br.done.154

br.c3.154:                                        ; preds = %br.c2.154
  br i1 true, label %br.b3.154, label %br.b4.154

br.b3.154:                                        ; preds = %br.c3.154
  store i8 -32, ptr %b.rn.dst642, align 1
  %br.dst1.3644 = getelementptr i8, ptr %b.rn.dst642, i64 1
  store i8 -128, ptr %br.dst1.3644, align 1
  %br.dst2.3645 = getelementptr i8, ptr %b.rn.dst642, i64 2
  store i8 -118, ptr %br.dst2.3645, align 1
  br label %br.done.154

br.b4.154:                                        ; preds = %br.c3.154
  store i8 -16, ptr %b.rn.dst642, align 1
  %br.dst1.4646 = getelementptr i8, ptr %b.rn.dst642, i64 1
  store i8 -128, ptr %br.dst1.4646, align 1
  %br.dst2.4647 = getelementptr i8, ptr %b.rn.dst642, i64 2
  store i8 -128, ptr %br.dst2.4647, align 1
  %br.dst3.4648 = getelementptr i8, ptr %b.rn.dst642, i64 3
  store i8 -118, ptr %br.dst3.4648, align 1
  br label %br.done.154

br.done.154:                                      ; preds = %br.b4.154, %br.b3.154, %br.b2.154, %br.b1.154
  %br.nul649 = getelementptr i8, ptr %b.rn.data641, i64 %sum609
  store i8 0, ptr %br.nul649, align 1
  %b.len.gep650 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load605, i32 0, i32 0
  store i64 %sum609, ptr %b.len.gep650, align 8
  %var.load651 = load ptr, ptr %var.b, align 8
  %var.load652 = load i64, ptr %var.depth, align 8
  %var.load653 = load i64, ptr %var.indent, align 8
  %multmp654 = mul i64 %var.load652, %var.load653
  call void @"json::#append_indent"(ptr %var.load651, i64 %multmp654)
  %b.load655 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len656 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load655, i32 0, i32 0
  %b.rn.cur.len657 = load i64, ptr %b.rn.cur.len656, align 8
  %b.rn.new.len658 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len657, i64 1)
  %sum659 = extractvalue { i64, i1 } %b.rn.new.len658, 0
  %ovf660 = extractvalue { i64, i1 } %b.rn.new.len658, 1
  br i1 %ovf660, label %str_overflow_abort662, label %b.rn.new.len661

b.rn.new.len661:                                  ; preds = %abort.dead663, %br.done.154
  %b.cap664 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load655, i32 0, i32 2
  %b.cap665 = load i64, ptr %b.cap664, align 8
  %b.need.grow666 = icmp slt i64 %b.cap665, %sum659
  br i1 %b.need.grow666, label %b.grow2667, label %b.nogrow2668

str_overflow_abort662:                            ; preds = %br.done.154
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead663:                                    ; No predecessors!
  br label %b.rn.new.len661

b.grow2667:                                       ; preds = %b.rn.new.len661
  %b.cap2670 = mul i64 %b.cap665, 2
  %b.cap.small671 = icmp slt i64 %b.cap2670, 16
  %b.cap.grow672 = select i1 %b.cap.small671, i64 16, i64 %b.cap2670
  %b.cap.need673 = icmp slt i64 %b.cap.grow672, %sum659
  %b.new.cap674 = select i1 %b.cap.need673, i64 %sum659, i64 %b.cap.grow672
  %b.cur.len2675 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load655, i32 0, i32 0
  %b.cur.len2676 = load i64, ptr %b.cur.len2675, align 8
  %b.cur.data2677 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load655, i32 0, i32 1
  %b.cur.data2678 = load ptr, ptr %b.cur.data2677, align 8
  %b.new.buf.len2679 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap674, i64 1)
  %sum680 = extractvalue { i64, i1 } %b.new.buf.len2679, 0
  %ovf681 = extractvalue { i64, i1 } %b.new.buf.len2679, 1
  br i1 %ovf681, label %str_overflow_abort683, label %b.new.buf.len2682

b.nogrow2668:                                     ; preds = %b.rn.new.len661
  br label %b.grow_done669

b.grow_done669:                                   ; preds = %b.nogrow2668, %b.new.buf.len2682
  %b.rn.data690 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load655, i32 0, i32 1
  %b.rn.data691 = load ptr, ptr %b.rn.data690, align 8
  %b.rn.dst692 = getelementptr i8, ptr %b.rn.data691, i64 %b.rn.cur.len657
  br i1 true, label %br.b1.155, label %br.c2.155

b.new.buf.len2682:                                ; preds = %abort.dead684, %b.grow2667
  %arena.cur685 = call ptr @dva_arena_current()
  %b.new.buf2686 = call ptr @dva_arena_alloc(ptr %arena.cur685, i64 %sum680)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2686, ptr align 1 %b.cur.data2678, i64 %b.cur.len2676, i1 false)
  %b.grow2.nul687 = getelementptr i8, ptr %b.new.buf2686, i64 %b.cur.len2676
  store i8 0, ptr %b.grow2.nul687, align 1
  %b.new.data2.gep688 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load655, i32 0, i32 1
  store ptr %b.new.buf2686, ptr %b.new.data2.gep688, align 8
  %b.new.cap2.gep689 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load655, i32 0, i32 2
  store i64 %b.new.cap674, ptr %b.new.cap2.gep689, align 8
  br label %b.grow_done669

str_overflow_abort683:                            ; preds = %b.grow2667
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead684:                                    ; No predecessors!
  br label %b.new.buf.len2682

br.b1.155:                                        ; preds = %b.grow_done669
  store i8 125, ptr %b.rn.dst692, align 1
  br label %br.done.155

br.c2.155:                                        ; preds = %b.grow_done669
  br i1 true, label %br.b2.155, label %br.c3.155

br.b2.155:                                        ; preds = %br.c2.155
  store i8 -63, ptr %b.rn.dst692, align 1
  %br.dst1693 = getelementptr i8, ptr %b.rn.dst692, i64 1
  store i8 -67, ptr %br.dst1693, align 1
  br label %br.done.155

br.c3.155:                                        ; preds = %br.c2.155
  br i1 true, label %br.b3.155, label %br.b4.155

br.b3.155:                                        ; preds = %br.c3.155
  store i8 -32, ptr %b.rn.dst692, align 1
  %br.dst1.3694 = getelementptr i8, ptr %b.rn.dst692, i64 1
  store i8 -127, ptr %br.dst1.3694, align 1
  %br.dst2.3695 = getelementptr i8, ptr %b.rn.dst692, i64 2
  store i8 -67, ptr %br.dst2.3695, align 1
  br label %br.done.155

br.b4.155:                                        ; preds = %br.c3.155
  store i8 -16, ptr %b.rn.dst692, align 1
  %br.dst1.4696 = getelementptr i8, ptr %b.rn.dst692, i64 1
  store i8 -128, ptr %br.dst1.4696, align 1
  %br.dst2.4697 = getelementptr i8, ptr %b.rn.dst692, i64 2
  store i8 -127, ptr %br.dst2.4697, align 1
  %br.dst3.4698 = getelementptr i8, ptr %b.rn.dst692, i64 3
  store i8 -67, ptr %br.dst3.4698, align 1
  br label %br.done.155

br.done.155:                                      ; preds = %br.b4.155, %br.b3.155, %br.b2.155, %br.b1.155
  %br.nul699 = getelementptr i8, ptr %b.rn.data691, i64 %sum659
  store i8 0, ptr %br.nul699, align 1
  %b.len.gep700 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load655, i32 0, i32 0
  store i64 %sum659, ptr %b.len.gep700, align 8
  br label %choice.exit398
}

define { i64, ptr } @"json::stringify"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
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

b.buf.len1:                                       ; preds = %abort.dead, %entry
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

define { i64, ptr } @"json::stringify_pretty"(ptr %0, i64 %1) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
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

b.buf.len1:                                       ; preds = %abort.dead, %entry
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
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define { i1, i64 } @"json::get"(ptr %0, ptr %1) #0 {
entry:
  %var._2 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.157 = alloca i64, align 8
  %loop.idx.157 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.next, %loop.exit.157
  %choice.res = phi { i1, i64 } [ zeroinitializer, %loop.exit.157 ], [ zeroinitializer, %choice.next ]
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
  store i64 0, ptr %loop.idx.157, align 8
  %cycle.prev.u = load ptr, ptr %var._, align 8
  br label %loop.header.157

choice.next:                                      ; preds = %entry
  br label %choice.exit

loop.header.157:                                  ; preds = %loop.latch.157, %choice.case
  %counter.load = load i64, ptr %loop.idx.157, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.157, label %loop.exit.nat.157

loop.body.157:                                    ; preds = %loop.header.157
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.157, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.157:                                ; preds = %loop.header.157
  br label %loop.exit.157

loop.latch.157:                                   ; preds = %choice.exit11
  %step.val = load i64, ptr %loop.step.157, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.157, align 8
  br label %loop.header.157

loop.exit.157:                                    ; preds = %loop.exit.nat.157
  store ptr %cycle.prev.u, ptr %var._, align 8
  br label %choice.exit

sl.rec.elem.pbb:                                  ; preds = %loop.body.157
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.157
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
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.rhs.len7 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len8 = and i64 %eq.rhs.len7, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len8
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %sl.rec.elem.dbb
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data9 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.rhs.data10 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data9, ptr %eq.rhs.data10, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %sl.rec.elem.dbb
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then, label %choice.exit11

choice.then:                                      ; preds = %str.eq.merge
  %var.load12 = load ptr, ptr %var.p, align 8
  %fld.gep13 = getelementptr inbounds { ptr, ptr }, ptr %var.load12, i32 0, i32 1
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  %p.to.i64 = ptrtoint ptr %fld.load14 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

choice.exit11:                                    ; preds = %ret.dead, %str.eq.merge
  br label %loop.latch.157

ret.dead:                                         ; No predecessors!
  br label %choice.exit11
}

define i1 @"json::has"(ptr %0, ptr %1) #0 {
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

define { i64, ptr } @"json::get_str"(ptr %0, ptr %1) #0 {
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
  %ret.niche.nn = icmp ne ptr %choice.res6, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

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

ret.niche.load:                                   ; preds = %choice.exit
  %ret.niche.val = load { i64, ptr }, ptr %choice.res6, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit ]
  ret { i64, ptr } %ret.niche.pack
}

define { i1, i64 } @"json::get_int"(ptr %0, ptr %1) #0 {
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

define { i1, i64 } @"json::get_float"(ptr %0, ptr %1) #0 {
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

define { i1, i64 } @"json::get_bool"(ptr %0, ptr %1) #0 {
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

define i1 @"json::is_array"(ptr %0) #0 {
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

define i64 @"json::array_len"(ptr %0) #0 {
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

define ptr @"json::array_at"(ptr %0, i64 %1) #0 {
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

define i1 @"json::is_object"(ptr %0) #0 {
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

define i64 @"json::object_len"(ptr %0) #0 {
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

define { i64, ptr } @"json::object_key_at"(ptr %0, i64 %1) #0 {
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
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

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

define ptr @"json::object_val_at"(ptr %0, i64 %1) #0 {
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

define i1 @"json::is_valid_int_value"(ptr %0) #0 {
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

define i64 @"json::unwrap_int_or_zero"(ptr %0) #0 {
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

define i1 @"json::is_valid_float_value"(ptr %0) #0 {
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

define double @"json::unwrap_float_or_zero"(ptr %0) #0 {
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

define { i1, i64 } @"json::decode_int_value"(ptr %0) #0 {
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

define { i1, i64 } @"json::decode_float_value"(ptr %0) #0 {
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

define internal { i1, i64 } @"json::#cursor_skip_str"(ptr %0, i64 %1) #0 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.162 = alloca i64, align 8
  %loop.idx.162 = alloca i64, align 8
  %"var.k'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.src = alloca ptr, align 8
  store ptr %0, ptr %var.src, align 8
  store i64 %1, ptr %var.start, align 8
  %var.load = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load ptr, ptr %var.src, align 8
  %var.load4 = load i64, ptr %var.start, align 8
  %call.res = call i64 @"json::#scan_plain_ascii_end"(ptr %var.load3, i64 %var.load4)
  store i64 %call.res, ptr %"var.k'", align 8
  store i64 0, ptr %loop.idx.162, align 8
  br label %loop.header.162

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

loop.header.162:                                  ; preds = %loop.latch.162, %str_ok
  %counter.load = load i64, ptr %loop.idx.162, align 8
  br label %loop.body.162

loop.body.162:                                    ; preds = %loop.header.162
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.162, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.k'", align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.162:                                ; No predecessors!
  br label %loop.exit.162

loop.latch.162:                                   ; preds = %choice.exit14
  %step.val = load i64, ptr %loop.step.162, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.162, align 8
  br label %loop.header.162

loop.exit.162:                                    ; preds = %loop.exit.nat.162
  ret { i1, i64 } zeroinitializer

choice.then:                                      ; preds = %loop.body.162
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %loop.body.162
  %var.load7 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %"var.k'", align 8
  %idx.neg = icmp slt i64 %var.load11, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load11, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead12, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load13 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load13, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %idx_ok

choice.exit14:                                    ; preds = %choice.next18, %choice.exit25, %ret.dead16
  br label %loop.latch.162

choice.case:                                      ; preds = %idx_ok
  %var.load15 = load i64, ptr %"var.k'", align 8
  %addtmp = add i64 %var.load15, 1
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %addtmp, 1
  ret { i1, i64 } %ram.pay

choice.next:                                      ; preds = %idx_ok
  %val.match19 = icmp eq i64 %var.load13, 92
  br i1 %val.match19, label %choice.case17, label %choice.next18

ret.dead16:                                       ; No predecessors!
  br label %choice.exit14

choice.case17:                                    ; preds = %choice.next
  %var.load20 = load i64, ptr %"var.k'", align 8
  %addtmp21 = add i64 %var.load20, 1
  %var.load22 = load i64, ptr %var.n, align 8
  %cmptmp23 = icmp sge i64 %addtmp21, %var.load22
  br i1 %cmptmp23, label %choice.then24, label %choice.exit25

choice.next18:                                    ; preds = %choice.next
  %var.load29 = load i64, ptr %"var.k'", align 8
  %addtmp30 = add i64 %var.load29, 1
  store i64 %addtmp30, ptr %"var.k'", align 8
  br label %choice.exit14

choice.then24:                                    ; preds = %choice.case17
  ret { i1, i64 } zeroinitializer

choice.exit25:                                    ; preds = %ret.dead26, %choice.case17
  %var.load27 = load i64, ptr %"var.k'", align 8
  %addtmp28 = add i64 %var.load27, 2
  store i64 %addtmp28, ptr %"var.k'", align 8
  br label %choice.exit14

ret.dead26:                                       ; No predecessors!
  br label %choice.exit25
}

define internal { i64, ptr } @"json::#cursor_read_str_escaped"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var._48 = alloca ptr, align 8
  %var.end = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.sc = alloca ptr, align 8
  %var.plain_end = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  store i64 %1, ptr %var.start, align 8
  store i64 %2, ptr %var.plain_end, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr %var.start, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load, ptr %rec.fld, align 8
  %rec.fld2 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld2, align 8
  store ptr %rec.alloc, ptr %var.sc, align 8
  %arena.cur3 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

b.buf.len4:                                       ; preds = %abort.dead, %entry
  %arena.cur5 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load6 = load i64, ptr %var.plain_end, align 8
  %var.load7 = load i64, ptr %var.start, align 8
  %cmptmp = icmp sgt i64 %var.load6, %var.load7
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_overflow_abort:                               ; preds = %entry
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len4

choice.then:                                      ; preds = %b.buf.len4
  %b.load = load ptr, ptr %var.b, align 8
  %var.load8 = load ptr, ptr %var.cur, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.start, align 8
  %var.load15 = load i64, ptr %var.plain_end, align 8
  %start.is_neg = icmp slt i64 %var.load14, 0
  %rel.start = add i64 %s.read.len12, %var.load14
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load14
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load15, 0
  %rel.end = add i64 %s.read.len12, %var.load15
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load15
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len16 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len16, i64 %view.len)
  %sum17 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf18 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %b.app.new.len19

choice.exit:                                      ; preds = %b.grow_done, %b.buf.len4
  %var.load33 = load ptr, ptr %var.sc, align 8
  %var.load34 = load ptr, ptr %var.b, align 8
  %var.load35 = load i64, ptr %var.plain_end, align 8
  %call.res = call { i1, i64 } @"json::#scan_string"(ptr %var.load33, ptr %var.load34, i64 %var.load35)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then36, label %choice.else

b.app.new.len19:                                  ; preds = %abort.dead21, %choice.then
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap22 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap22, %sum17
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort20:                             ; preds = %choice.then
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %b.app.new.len19

b.grow2:                                          ; preds = %b.app.new.len19
  %b.cap2 = mul i64 %b.cap22, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum17
  %b.new.cap = select i1 %b.cap.need, i64 %sum17, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len223 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data224 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum25 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf26 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.new.buf.len227

b.nogrow2:                                        ; preds = %b.app.new.len19
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len227
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data31 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data31, i64 %b.app.cur.len16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data31, i64 %sum17
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum17, ptr %b.len.gep32, align 8
  br label %choice.exit

b.new.buf.len227:                                 ; preds = %abort.dead29, %b.grow2
  %arena.cur30 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 %sum25)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data224, i64 %b.cur.len223, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len223
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort28:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %b.new.buf.len227

choice.then36:                                    ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load38 = load ptr, ptr %var.cur, align 8
  %var.load39 = load i64, ptr %var.end, align 8
  %addtmp = add i64 %var.load39, 1
  %fld.gep40 = getelementptr inbounds { ptr, i64 }, ptr %var.load38, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep40, align 8
  %var.load41 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load41, i32 0, i32 0
  %b.freeze.len42 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load41, i32 0, i32 1
  %b.freeze.data43 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else:                                      ; preds = %choice.exit
  %ram.pay47 = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay47 to ptr
  store ptr %pay.ptr, ptr %var._48, align 8
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ null, %choice.else ]
  %ret.niche.nn = icmp ne ptr %choice.res, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

b.freeze.check:                                   ; preds = %choice.then36
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data43, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data43, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data43, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len42, 1
  %arena.cur44 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data43, i64 %b.freeze.len42, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len42
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then36
  %b.freeze.data45 = phi ptr [ %b.freeze.data43, %choice.then36 ], [ %b.freeze.data43, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur46 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len42, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data45, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load41, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load41, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load41, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit37

ret.niche.load:                                   ; preds = %choice.exit37
  %ret.niche.val = load { i64, ptr }, ptr %choice.res, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit37
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit37 ]
  ret { i64, ptr } %ret.niche.pack
}

define internal i1 @"json::#cursor_skip_compound"(ptr %0, i64 %1) #0 {
entry:
  %var.end = alloca i64, align 8
  %var._23 = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.163 = alloca i64, align 8
  %loop.idx.163 = alloca i64, align 8
  %"var.depth'" = alloca i64, align 8
  %"var.k'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  store i64 %1, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load3, 1
  store i64 %addtmp, ptr %"var.k'", align 8
  store i64 1, ptr %"var.depth'", align 8
  store i64 0, ptr %loop.idx.163, align 8
  br label %loop.header.163

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

loop.header.163:                                  ; preds = %loop.latch.163, %str_ok
  %counter.load = load i64, ptr %loop.idx.163, align 8
  br label %loop.body.163

loop.body.163:                                    ; preds = %loop.header.163
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.163, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.k'", align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.163:                                ; No predecessors!
  br label %loop.exit.163

loop.latch.163:                                   ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.163, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.163, align 8
  br label %loop.header.163

loop.exit.163:                                    ; preds = %loop.exit.nat.163
  ret i1 false

choice.then:                                      ; preds = %loop.body.163
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %loop.body.163
  %var.load6 = load ptr, ptr %var.cur, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %var.load12 = load i64, ptr %"var.k'", align 8
  %idx.neg = icmp slt i64 %var.load12, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load12, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead13, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load14 = load i64, ptr %var.ch, align 8
  %val.match = icmp eq i64 %var.load14, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %idx_ok

choice.exit15:                                    ; preds = %choice.next35, %choice.exit45, %choice.case26, %choice.exit22
  br label %loop.latch.163

choice.case:                                      ; preds = %idx_ok
  %var.load16 = load ptr, ptr %var.cur, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %var.load19 = load i64, ptr %"var.k'", align 8
  %addtmp20 = add i64 %var.load19, 1
  %call.res = call { i1, i64 } @"json::#cursor_skip_str"(ptr %fld.load18, i64 %addtmp20)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then21, label %choice.else

choice.next:                                      ; preds = %idx_ok
  %val.match28 = icmp eq i64 %var.load14, 123
  %val.match29 = icmp eq i64 %var.load14, 91
  %case.or = or i1 %val.match28, %val.match29
  br i1 %case.or, label %choice.case26, label %choice.next27

choice.then21:                                    ; preds = %choice.case
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._23, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load24 = load i64, ptr %var.end, align 8
  store i64 %var.load24, ptr %"var.k'", align 8
  br label %choice.exit22

choice.else:                                      ; preds = %choice.case
  ret i1 false

choice.exit22:                                    ; preds = %ret.dead25, %choice.then21
  br label %choice.exit15

ret.dead25:                                       ; No predecessors!
  br label %choice.exit22

choice.case26:                                    ; preds = %choice.next
  %var.load30 = load i64, ptr %"var.depth'", align 8
  %addtmp31 = add i64 %var.load30, 1
  store i64 %addtmp31, ptr %"var.depth'", align 8
  %var.load32 = load i64, ptr %"var.k'", align 8
  %addtmp33 = add i64 %var.load32, 1
  store i64 %addtmp33, ptr %"var.k'", align 8
  br label %choice.exit15

choice.next27:                                    ; preds = %choice.next
  %val.match36 = icmp eq i64 %var.load14, 125
  %val.match37 = icmp eq i64 %var.load14, 93
  %case.or38 = or i1 %val.match36, %val.match37
  br i1 %case.or38, label %choice.case34, label %choice.next35

choice.case34:                                    ; preds = %choice.next27
  %var.load39 = load i64, ptr %"var.depth'", align 8
  %subtmp = sub i64 %var.load39, 1
  store i64 %subtmp, ptr %"var.depth'", align 8
  %var.load40 = load i64, ptr %"var.k'", align 8
  %addtmp41 = add i64 %var.load40, 1
  store i64 %addtmp41, ptr %"var.k'", align 8
  %var.load42 = load i64, ptr %"var.depth'", align 8
  %cmptmp43 = icmp eq i64 %var.load42, 0
  br i1 %cmptmp43, label %choice.then44, label %choice.exit45

choice.next35:                                    ; preds = %choice.next27
  %var.load50 = load i64, ptr %"var.k'", align 8
  %addtmp51 = add i64 %var.load50, 1
  store i64 %addtmp51, ptr %"var.k'", align 8
  br label %choice.exit15

choice.then44:                                    ; preds = %choice.case34
  %var.load46 = load ptr, ptr %var.cur, align 8
  %var.load47 = load i64, ptr %"var.k'", align 8
  %fld.gep48 = getelementptr inbounds { ptr, i64 }, ptr %var.load46, i32 0, i32 1
  store i64 %var.load47, ptr %fld.gep48, align 8
  ret i1 true

choice.exit45:                                    ; preds = %ret.dead49, %choice.case34
  br label %choice.exit15

ret.dead49:                                       ; No predecessors!
  br label %choice.exit45
}

define internal i1 @"json::#cursor_skip_number"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.168 = alloca i64, align 8
  %loop.idx.168 = alloca i64, align 8
  %"var.k'" = alloca i64, align 8
  %var.has_digit = alloca i1, align 1
  %var.n = alloca i64, align 8
  %var.c0 = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  store i64 %1, ptr %var.p, align 8
  store i64 %2, ptr %var.c0, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.c0, align 8
  %cmptmp = icmp sge i64 %var.load3, 48
  br i1 %cmptmp, label %and.164.then, label %and.164.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %or.165.then, label %or.165.else

choice.case:                                      ; preds = %and.164.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.164.exit
  br label %choice.exit

and.164.then:                                     ; preds = %str_ok
  %cmptmp4 = icmp sle i64 %var.load3, 57
  br label %and.164.exit

and.164.else:                                     ; preds = %str_ok
  br label %and.164.exit

and.164.exit:                                     ; preds = %and.164.else, %and.164.then
  %and.164.phi = phi i1 [ %cmptmp4, %and.164.then ], [ %cmptmp, %and.164.else ]
  br i1 %and.164.phi, label %choice.case, label %choice.next

or.165.then:                                      ; preds = %choice.exit
  br label %or.165.exit

or.165.else:                                      ; preds = %choice.exit
  %var.load5 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load5, 1
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp7 = icmp slt i64 %addtmp, %var.load6
  br i1 %cmptmp7, label %and.166.then, label %and.166.else

or.165.exit:                                      ; preds = %and.166.exit, %or.165.then
  %or.165.phi = phi i1 [ %choice.res, %or.165.then ], [ %and.166.phi, %and.166.exit ]
  store i1 %or.165.phi, ptr %var.has_digit, align 1
  %var.load23 = load i1, ptr %var.has_digit, align 1
  %nottmp = xor i1 %var.load23, true
  br i1 %nottmp, label %choice.then, label %choice.exit24

and.166.then:                                     ; preds = %or.165.else
  %var.load8 = load ptr, ptr %var.cur, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.p, align 8
  %addtmp15 = add i64 %var.load14, 1
  %idx.neg = icmp slt i64 %addtmp15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.166.else:                                     ; preds = %or.165.else
  br label %and.166.exit

and.166.exit:                                     ; preds = %and.166.else, %choice.exit17
  %and.166.phi = phi i1 [ %choice.res22, %choice.exit17 ], [ %cmptmp7, %and.166.else ]
  br label %or.165.exit

idx_big_check:                                    ; preds = %and.166.then
  %idx.big = icmp sge i64 %addtmp15, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead16, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %addtmp15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp20 = icmp sge i64 %s.byte.val, 48
  br i1 %cmptmp20, label %and.167.then, label %and.167.else

idx_oob:                                          ; preds = %idx_big_check, %and.166.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %idx_ok

choice.exit17:                                    ; preds = %choice.next19, %choice.case18
  %choice.res22 = phi i1 [ true, %choice.case18 ], [ false, %choice.next19 ]
  br label %and.166.exit

choice.case18:                                    ; preds = %and.167.exit
  br label %choice.exit17

choice.next19:                                    ; preds = %and.167.exit
  br label %choice.exit17

and.167.then:                                     ; preds = %idx_ok
  %cmptmp21 = icmp sle i64 %s.byte.val, 57
  br label %and.167.exit

and.167.else:                                     ; preds = %idx_ok
  br label %and.167.exit

and.167.exit:                                     ; preds = %and.167.else, %and.167.then
  %and.167.phi = phi i1 [ %cmptmp21, %and.167.then ], [ %cmptmp20, %and.167.else ]
  br i1 %and.167.phi, label %choice.case18, label %choice.next19

choice.then:                                      ; preds = %or.165.exit
  ret i1 false

choice.exit24:                                    ; preds = %ret.dead, %or.165.exit
  %var.load25 = load i64, ptr %var.p, align 8
  %addtmp26 = add i64 %var.load25, 1
  store i64 %addtmp26, ptr %"var.k'", align 8
  store i64 0, ptr %loop.idx.168, align 8
  br label %loop.header.168

ret.dead:                                         ; No predecessors!
  br label %choice.exit24

loop.header.168:                                  ; preds = %loop.latch.168, %choice.exit24
  %counter.load = load i64, ptr %loop.idx.168, align 8
  br label %loop.body.168

loop.body.168:                                    ; preds = %loop.header.168
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.168, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load27 = load i64, ptr %"var.k'", align 8
  %var.load28 = load i64, ptr %var.n, align 8
  %cmptmp29 = icmp sge i64 %var.load27, %var.load28
  br i1 %cmptmp29, label %choice.then30, label %choice.exit31

loop.exit.nat.168:                                ; No predecessors!
  br label %loop.exit.168

loop.latch.168:                                   ; preds = %choice.exit65
  %step.val = load i64, ptr %loop.step.168, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.168, align 8
  br label %loop.header.168

loop.exit.168:                                    ; preds = %choice.else, %choice.then30, %loop.exit.nat.168
  %var.load68 = load ptr, ptr %var.cur, align 8
  %var.load69 = load i64, ptr %"var.k'", align 8
  %fld.gep70 = getelementptr inbounds { ptr, i64 }, ptr %var.load68, i32 0, i32 1
  store i64 %var.load69, ptr %fld.gep70, align 8
  ret i1 true

choice.then30:                                    ; preds = %loop.body.168
  br label %loop.exit.168

choice.exit31:                                    ; preds = %loop.body.168
  %var.load32 = load ptr, ptr %var.cur, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64 }, ptr %var.load32, i32 0, i32 0
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %s.read.len35 = getelementptr inbounds { i64, ptr }, ptr %fld.load34, i32 0, i32 0
  %s.read.len36 = load i64, ptr %s.read.len35, align 8
  %s.read.len37 = and i64 %s.read.len36, 281474976710655
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %fld.load34, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %"var.k'", align 8
  %idx.neg41 = icmp slt i64 %var.load40, 0
  br i1 %idx.neg41, label %idx_oob44, label %idx_big_check42

idx_big_check42:                                  ; preds = %choice.exit31
  %idx.big45 = icmp sge i64 %var.load40, %s.read.len37
  br i1 %idx.big45, label %idx_oob44, label %idx_ok43

idx_ok43:                                         ; preds = %abort.dead46, %idx_big_check42
  %s.byte.gep47 = getelementptr i8, ptr %s.read.data39, i64 %var.load40
  %s.byte48 = load i8, ptr %s.byte.gep47, align 1
  %s.byte.val49 = zext i8 %s.byte48 to i64
  %cmptmp53 = icmp sge i64 %s.byte.val49, 48
  br i1 %cmptmp53, label %and.169.then, label %and.169.else

idx_oob44:                                        ; preds = %idx_big_check42, %choice.exit31
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %idx_ok43

choice.exit50:                                    ; preds = %choice.next52, %choice.case51
  %choice.res63 = phi i1 [ true, %choice.case51 ], [ false, %choice.next52 ]
  br i1 %choice.res63, label %choice.then64, label %choice.else

choice.case51:                                    ; preds = %and.169.exit
  br label %choice.exit50

choice.next52:                                    ; preds = %and.169.exit
  br label %choice.exit50

and.169.then:                                     ; preds = %idx_ok43
  %cmptmp54 = icmp sle i64 %s.byte.val49, 57
  br label %and.169.exit

and.169.else:                                     ; preds = %idx_ok43
  br label %and.169.exit

and.169.exit:                                     ; preds = %and.169.else, %and.169.then
  %and.169.phi = phi i1 [ %cmptmp54, %and.169.then ], [ %cmptmp53, %and.169.else ]
  %val.match = icmp eq i64 %s.byte.val49, 43
  %case.or = or i1 %and.169.phi, %val.match
  %val.match55 = icmp eq i64 %s.byte.val49, 45
  %case.or56 = or i1 %case.or, %val.match55
  %val.match57 = icmp eq i64 %s.byte.val49, 46
  %case.or58 = or i1 %case.or56, %val.match57
  %val.match59 = icmp eq i64 %s.byte.val49, 101
  %case.or60 = or i1 %case.or58, %val.match59
  %val.match61 = icmp eq i64 %s.byte.val49, 69
  %case.or62 = or i1 %case.or60, %val.match61
  br i1 %case.or62, label %choice.case51, label %choice.next52

choice.then64:                                    ; preds = %choice.exit50
  %var.load66 = load i64, ptr %"var.k'", align 8
  %addtmp67 = add i64 %var.load66, 1
  store i64 %addtmp67, ptr %"var.k'", align 8
  br label %choice.exit65

choice.else:                                      ; preds = %choice.exit50
  br label %loop.exit.168

choice.exit65:                                    ; preds = %choice.then64
  br label %loop.latch.168
}

define { ptr, i64 } @"json::cursor"(ptr %0) #0 {
entry:
  %rec.salloc = alloca { ptr, i64 }, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.salloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds { ptr, i64 }, ptr %rec.salloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  %ret.pack = load { ptr, i64 }, ptr %rec.salloc, align 8
  ret { ptr, i64 } %ret.pack
}

define void @"json::cursor_reset"(ptr %0, ptr %1) #0 {
entry:
  %var.s = alloca ptr, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  store ptr %1, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  store ptr %var.load1, ptr %fld.gep, align 8
  %var.load2 = load ptr, ptr %var.cur, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 1
  store i64 0, ptr %fld.gep3, align 8
  ret void
}

define i64 @"json::cursor_skip_ws"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.170 = alloca i64, align 8
  %loop.idx.170 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.p'" = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %"var.p'", align 8
  %var.load1 = load ptr, ptr %var.cur, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query5, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.170, align 8
  br label %loop.header.170

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

loop.header.170:                                  ; preds = %loop.latch.170, %str_ok
  %counter.load = load i64, ptr %loop.idx.170, align 8
  br label %loop.body.170

loop.body.170:                                    ; preds = %loop.header.170
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.170, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load6 = load i64, ptr %"var.p'", align 8
  %var.load7 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load6, %var.load7
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.170:                                ; No predecessors!
  br label %loop.exit.170

loop.latch.170:                                   ; preds = %choice.exit17
  %step.val = load i64, ptr %loop.step.170, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.170, align 8
  br label %loop.header.170

loop.exit.170:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.170
  %var.load19 = load ptr, ptr %var.cur, align 8
  %var.load20 = load i64, ptr %"var.p'", align 8
  %fld.gep21 = getelementptr inbounds { ptr, i64 }, ptr %var.load19, i32 0, i32 1
  store i64 %var.load20, ptr %fld.gep21, align 8
  %var.load22 = load i64, ptr %"var.p'", align 8
  ret i64 %var.load22

choice.then:                                      ; preds = %loop.body.170
  br label %loop.exit.170

choice.exit:                                      ; preds = %loop.body.170
  %var.load8 = load ptr, ptr %var.cur, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %"var.p'", align 8
  %idx.neg = icmp slt i64 %var.load14, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load14, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead15, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then16, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %idx_ok

choice.then16:                                    ; preds = %idx_ok
  %var.load18 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load18, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit17

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.170

choice.exit17:                                    ; preds = %choice.then16
  br label %loop.latch.170
}

define i1 @"json::cursor_eof"(ptr %0) #0 {
entry:
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load)
  %var.load1 = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp sge i64 %call.res, %str.len.query3
  ret i1 %cmptmp

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
}

define i64 @"json::cursor_peek"(ptr %0) #0 {
entry:
  %var.p = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.p, align 8
  %var.load2 = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %str.tag = lshr i64 %str.len.query3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load1, %str.len.query4
  br i1 %cmptmp, label %choice.then, label %choice.else

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
  %var.load5 = load ptr, ptr %var.cur, align 8
  %fld.gep6 = getelementptr inbounds { ptr, i64 }, ptr %var.load5, i32 0, i32 0
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load11, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.else:                                      ; preds = %str_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.else ]
  ret i64 %choice.res

idx_big_check:                                    ; preds = %choice.then
  %idx.big = icmp sge i64 %var.load11, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead12, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %idx_ok
}

define i1 @"json::cursor_expect_byte"(ptr %0, i64 %1) #0 {
entry:
  %var.p = alloca i64, align 8
  %var.at = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  store i64 %1, ptr %var.ch, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.at, align 8
  %var.load1 = load i64, ptr %var.at, align 8
  %var.load2 = load ptr, ptr %var.cur, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load4, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag = lshr i64 %str.len.query5, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %cmptmp = icmp slt i64 %var.load1, %str.len.query6
  br i1 %cmptmp, label %and.171.then, label %and.171.else

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

and.171.then:                                     ; preds = %str_ok
  %var.load7 = load ptr, ptr %var.cur, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %var.at, align 8
  %idx.neg = icmp slt i64 %var.load13, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.171.else:                                     ; preds = %str_ok
  br label %and.171.exit

and.171.exit:                                     ; preds = %and.171.else, %idx_ok
  %and.171.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.171.else ]
  br i1 %and.171.phi, label %and.172.then, label %and.172.else

idx_big_check:                                    ; preds = %and.171.then
  %idx.big = icmp sge i64 %var.load13, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead14, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load15 = load i64, ptr %var.ch, align 8
  %cmptmp16 = icmp eq i64 %s.byte.val, %var.load15
  br label %and.171.exit

idx_oob:                                          ; preds = %idx_big_check, %and.171.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead14:                                     ; No predecessors!
  br label %idx_ok

and.172.then:                                     ; preds = %and.171.exit
  %var.load17 = load i64, ptr %var.ch, align 8
  %call.res = call i1 @"str::is_ws"(i64 %var.load17)
  %nottmp = xor i1 %call.res, true
  br label %and.172.exit

and.172.else:                                     ; preds = %and.171.exit
  br label %and.172.exit

and.172.exit:                                     ; preds = %and.172.else, %and.172.then
  %and.172.phi = phi i1 [ %nottmp, %and.172.then ], [ %and.171.phi, %and.172.else ]
  br i1 %and.172.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.172.exit
  %var.load18 = load i64, ptr %var.at, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.172.exit
  %var.load19 = load ptr, ptr %var.cur, align 8
  %call.res20 = call i64 @"json::cursor_skip_ws"(ptr %var.load19)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load18, %choice.then ], [ %call.res20, %choice.else ]
  store i64 %choice.res, ptr %var.p, align 8
  %var.load21 = load i64, ptr %var.p, align 8
  %var.load22 = load ptr, ptr %var.cur, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64 }, ptr %var.load22, i32 0, i32 0
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %str.len.query25 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %str.len.query26 = load i64, ptr %str.len.query25, align 8
  %str.len.query27 = and i64 %str.len.query26, 281474976710655
  %str.tag28 = lshr i64 %str.len.query26, 48
  %tag.immortal30 = icmp eq i64 %str.tag28, 0
  br i1 %tag.immortal30, label %str_ok29, label %tag.gen_check31

str_ok29:                                         ; preds = %abort.dead38, %tag.slow_check32, %tag.gen_check31, %choice.exit
  %cmptmp39 = icmp slt i64 %var.load21, %str.len.query27
  br i1 %cmptmp39, label %and.173.then, label %and.173.else

tag.gen_check31:                                  ; preds = %choice.exit
  %active.gen34 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok35 = icmp eq i64 %str.tag28, %active.gen34
  br i1 %tag.fast.ok35, label %str_ok29, label %tag.slow_check32

tag.slow_check32:                                 ; preds = %tag.gen_check31
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag28)
  br i1 %tag.valid37, label %str_ok29, label %tag.stale33

tag.stale33:                                      ; preds = %tag.slow_check32
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead38:                                     ; No predecessors!
  br label %str_ok29

and.173.then:                                     ; preds = %str_ok29
  %var.load40 = load ptr, ptr %var.cur, align 8
  %fld.gep41 = getelementptr inbounds { ptr, i64 }, ptr %var.load40, i32 0, i32 0
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  %s.read.len43 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 0
  %s.read.len44 = load i64, ptr %s.read.len43, align 8
  %s.read.len45 = and i64 %s.read.len44, 281474976710655
  %s.read.data46 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 1
  %s.read.data47 = load ptr, ptr %s.read.data46, align 8
  %var.load48 = load i64, ptr %var.p, align 8
  %idx.neg49 = icmp slt i64 %var.load48, 0
  br i1 %idx.neg49, label %idx_oob52, label %idx_big_check50

and.173.else:                                     ; preds = %str_ok29
  br label %and.173.exit

and.173.exit:                                     ; preds = %and.173.else, %idx_ok51
  %and.173.phi = phi i1 [ %cmptmp59, %idx_ok51 ], [ %cmptmp39, %and.173.else ]
  br i1 %and.173.phi, label %choice.then60, label %choice.else61

idx_big_check50:                                  ; preds = %and.173.then
  %idx.big53 = icmp sge i64 %var.load48, %s.read.len45
  br i1 %idx.big53, label %idx_oob52, label %idx_ok51

idx_ok51:                                         ; preds = %abort.dead54, %idx_big_check50
  %s.byte.gep55 = getelementptr i8, ptr %s.read.data47, i64 %var.load48
  %s.byte56 = load i8, ptr %s.byte.gep55, align 1
  %s.byte.val57 = zext i8 %s.byte56 to i64
  %var.load58 = load i64, ptr %var.ch, align 8
  %cmptmp59 = icmp eq i64 %s.byte.val57, %var.load58
  br label %and.173.exit

idx_oob52:                                        ; preds = %idx_big_check50, %and.173.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %idx_ok51

choice.then60:                                    ; preds = %and.173.exit
  %var.load63 = load ptr, ptr %var.cur, align 8
  %var.load64 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load64, 1
  %fld.gep65 = getelementptr inbounds { ptr, i64 }, ptr %var.load63, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep65, align 8
  br label %choice.exit62

choice.else61:                                    ; preds = %and.173.exit
  br label %choice.exit62

choice.exit62:                                    ; preds = %choice.else61, %choice.then60
  %choice.res66 = phi i1 [ true, %choice.then60 ], [ false, %choice.else61 ]
  ret i1 %choice.res66
}

define i1 @"json::cursor_enter_object"(ptr %0) #0 {
entry:
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %call.res = call i1 @"json::cursor_expect_byte"(ptr %var.load, i64 123)
  ret i1 %call.res
}

define i1 @"json::cursor_enter_array"(ptr %0) #0 {
entry:
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %call.res = call i1 @"json::cursor_expect_byte"(ptr %var.load, i64 91)
  ret i1 %call.res
}

define { i64, ptr } @"json::cursor_read_str"(ptr %0) #0 {
entry:
  %var.plain_end = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.at = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load ptr, ptr %var.cur, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  store i64 %fld.load5, ptr %var.at, align 8
  %var.load6 = load i64, ptr %var.at, align 8
  %var.load7 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load6, %var.load7
  br i1 %cmptmp, label %and.174.then, label %and.174.else

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

and.174.then:                                     ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.cur, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.at, align 8
  %idx.neg = icmp slt i64 %var.load14, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.174.else:                                     ; preds = %str_ok
  br label %and.174.exit

and.174.exit:                                     ; preds = %and.174.else, %idx_ok
  %and.174.phi = phi i1 [ %cmptmp16, %idx_ok ], [ %cmptmp, %and.174.else ]
  br i1 %and.174.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.174.then
  %idx.big = icmp sge i64 %var.load14, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead15, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp16 = icmp eq i64 %s.byte.val, 34
  br label %and.174.exit

idx_oob:                                          ; preds = %idx_big_check, %and.174.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.174.exit
  %var.load17 = load i64, ptr %var.at, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.174.exit
  %var.load18 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load18)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load17, %choice.then ], [ %call.res, %choice.else ]
  store i64 %choice.res, ptr %var.p, align 8
  %var.load19 = load i64, ptr %var.p, align 8
  %var.load20 = load i64, ptr %var.n, align 8
  %cmptmp21 = icmp sge i64 %var.load19, %var.load20
  br i1 %cmptmp21, label %or.175.then, label %or.175.else

or.175.then:                                      ; preds = %choice.exit
  br label %or.175.exit

or.175.else:                                      ; preds = %choice.exit
  %var.load22 = load ptr, ptr %var.cur, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64 }, ptr %var.load22, i32 0, i32 0
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %s.read.len25 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len25, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.p, align 8
  %idx.neg31 = icmp slt i64 %var.load30, 0
  br i1 %idx.neg31, label %idx_oob34, label %idx_big_check32

or.175.exit:                                      ; preds = %idx_ok33, %or.175.then
  %or.175.phi = phi i1 [ %cmptmp21, %or.175.then ], [ %cmptmp40, %idx_ok33 ]
  br i1 %or.175.phi, label %choice.then41, label %choice.exit42

idx_big_check32:                                  ; preds = %or.175.else
  %idx.big35 = icmp sge i64 %var.load30, %s.read.len27
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %abort.dead36, %idx_big_check32
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  %cmptmp40 = icmp ne i64 %s.byte.val39, 34
  br label %or.175.exit

idx_oob34:                                        ; preds = %idx_big_check32, %or.175.else
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok33

choice.then41:                                    ; preds = %or.175.exit
  ret { i64, ptr } zeroinitializer

choice.exit42:                                    ; preds = %ret.dead, %or.175.exit
  %var.load43 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load43, 1
  store i64 %addtmp, ptr %var.start, align 8
  %var.load44 = load ptr, ptr %var.cur, align 8
  %fld.gep45 = getelementptr inbounds { ptr, i64 }, ptr %var.load44, i32 0, i32 0
  %fld.load46 = load ptr, ptr %fld.gep45, align 8
  %var.load47 = load i64, ptr %var.start, align 8
  %call.res48 = call i64 @"json::#scan_plain_ascii_end"(ptr %fld.load46, i64 %var.load47)
  store i64 %call.res48, ptr %var.plain_end, align 8
  %var.load49 = load i64, ptr %var.plain_end, align 8
  %var.load50 = load i64, ptr %var.n, align 8
  %cmptmp51 = icmp slt i64 %var.load49, %var.load50
  br i1 %cmptmp51, label %and.176.then, label %and.176.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit42

and.176.then:                                     ; preds = %choice.exit42
  %var.load52 = load ptr, ptr %var.cur, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i64 }, ptr %var.load52, i32 0, i32 0
  %fld.load54 = load ptr, ptr %fld.gep53, align 8
  %s.read.len55 = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 0
  %s.read.len56 = load i64, ptr %s.read.len55, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %s.read.data58 = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 1
  %s.read.data59 = load ptr, ptr %s.read.data58, align 8
  %var.load60 = load i64, ptr %var.plain_end, align 8
  %idx.neg61 = icmp slt i64 %var.load60, 0
  br i1 %idx.neg61, label %idx_oob64, label %idx_big_check62

and.176.else:                                     ; preds = %choice.exit42
  br label %and.176.exit

and.176.exit:                                     ; preds = %and.176.else, %idx_ok63
  %and.176.phi = phi i1 [ %cmptmp70, %idx_ok63 ], [ %cmptmp51, %and.176.else ]
  br i1 %and.176.phi, label %choice.then71, label %choice.exit72

idx_big_check62:                                  ; preds = %and.176.then
  %idx.big65 = icmp sge i64 %var.load60, %s.read.len57
  br i1 %idx.big65, label %idx_oob64, label %idx_ok63

idx_ok63:                                         ; preds = %abort.dead66, %idx_big_check62
  %s.byte.gep67 = getelementptr i8, ptr %s.read.data59, i64 %var.load60
  %s.byte68 = load i8, ptr %s.byte.gep67, align 1
  %s.byte.val69 = zext i8 %s.byte68 to i64
  %cmptmp70 = icmp eq i64 %s.byte.val69, 34
  br label %and.176.exit

idx_oob64:                                        ; preds = %idx_big_check62, %and.176.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead66:                                     ; No predecessors!
  br label %idx_ok63

choice.then71:                                    ; preds = %and.176.exit
  %var.load73 = load ptr, ptr %var.cur, align 8
  %var.load74 = load i64, ptr %var.plain_end, align 8
  %addtmp75 = add i64 %var.load74, 1
  %fld.gep76 = getelementptr inbounds { ptr, i64 }, ptr %var.load73, i32 0, i32 1
  store i64 %addtmp75, ptr %fld.gep76, align 8
  %var.load77 = load ptr, ptr %var.cur, align 8
  %fld.gep78 = getelementptr inbounds { ptr, i64 }, ptr %var.load77, i32 0, i32 0
  %fld.load79 = load ptr, ptr %fld.gep78, align 8
  %s.read.len80 = getelementptr inbounds { i64, ptr }, ptr %fld.load79, i32 0, i32 0
  %s.read.len81 = load i64, ptr %s.read.len80, align 8
  %s.read.len82 = and i64 %s.read.len81, 281474976710655
  %s.read.data83 = getelementptr inbounds { i64, ptr }, ptr %fld.load79, i32 0, i32 1
  %s.read.data84 = load ptr, ptr %s.read.data83, align 8
  %var.load85 = load i64, ptr %var.start, align 8
  %var.load86 = load i64, ptr %var.plain_end, align 8
  %start.is_neg = icmp slt i64 %var.load85, 0
  %rel.start = add i64 %s.read.len82, %var.load85
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load85
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len82
  %final.start = select i1 %start.gt.len, i64 %s.read.len82, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load86, 0
  %rel.end = add i64 %s.read.len82, %var.load86
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load86
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len82
  %final.end = select i1 %end.gt.len, i64 %s.read.len82, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data84, i64 %final.start
  %arena.cur87 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.niche.nn = icmp ne ptr %str.view, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.exit72:                                    ; preds = %ret.dead88, %and.176.exit
  %var.load89 = load ptr, ptr %var.cur, align 8
  %var.load90 = load i64, ptr %var.start, align 8
  %var.load91 = load i64, ptr %var.plain_end, align 8
  %call.res92 = call { i64, ptr } @"json::#cursor_read_str_escaped"(ptr %var.load89, i64 %var.load90, i64 %var.load91)
  %ret.niche.data = extractvalue { i64, ptr } %call.res92, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.load:                                   ; preds = %choice.then71
  %ret.niche.val = load { i64, ptr }, ptr %str.view, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.then71
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.then71 ]
  ret { i64, ptr } %ret.niche.pack

ret.dead88:                                       ; No predecessors!
  br label %choice.exit72

ret.niche.alloc:                                  ; preds = %choice.exit72
  %arena.cur93 = call ptr @dva_arena_current()
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 16)
  store { i64, ptr } %call.res92, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit72
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit72 ]
  %ret.niche.nn94 = icmp ne ptr %ret.niche.ptr, null
  br i1 %ret.niche.nn94, label %ret.niche.load95, label %ret.niche.merge96

ret.niche.load95:                                 ; preds = %ret.niche.done
  %ret.niche.val97 = load { i64, ptr }, ptr %ret.niche.ptr, align 8
  br label %ret.niche.merge96

ret.niche.merge96:                                ; preds = %ret.niche.load95, %ret.niche.done
  %ret.niche.pack98 = phi { i64, ptr } [ %ret.niche.val97, %ret.niche.load95 ], [ zeroinitializer, %ret.niche.done ]
  ret { i64, ptr } %ret.niche.pack98
}

define { i64, ptr } @"json::cursor_next_field"(ptr %0) #0 {
entry:
  %var.k = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.p2 = alloca i64, align 8
  %var.at2 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.at = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load ptr, ptr %var.cur, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  store i64 %fld.load5, ptr %var.at, align 8
  %var.load6 = load i64, ptr %var.at, align 8
  %var.load7 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load6, %var.load7
  br i1 %cmptmp, label %and.177.then, label %and.177.else

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

and.177.then:                                     ; preds = %str_ok
  %var.load8 = load ptr, ptr %var.cur, align 8
  %fld.gep9 = getelementptr inbounds { ptr, i64 }, ptr %var.load8, i32 0, i32 0
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.at, align 8
  %idx.neg = icmp slt i64 %var.load14, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.177.else:                                     ; preds = %str_ok
  br label %and.177.exit

and.177.exit:                                     ; preds = %and.177.else, %choice.exit
  %and.177.phi = phi i1 [ %choice.res, %choice.exit ], [ %cmptmp, %and.177.else ]
  br i1 %and.177.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.177.then
  %idx.big = icmp sge i64 %var.load14, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead15, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 34
  %val.match16 = icmp eq i64 %s.byte.val, 44
  %case.or = or i1 %val.match, %val.match16
  %val.match17 = icmp eq i64 %s.byte.val, 125
  %case.or18 = or i1 %case.or, %val.match17
  br i1 %case.or18, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %and.177.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %idx_ok

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.177.exit

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit

choice.then:                                      ; preds = %and.177.exit
  %var.load20 = load i64, ptr %var.at, align 8
  br label %choice.exit19

choice.else:                                      ; preds = %and.177.exit
  %var.load21 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load21)
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else, %choice.then
  %choice.res22 = phi i64 [ %var.load20, %choice.then ], [ %call.res, %choice.else ]
  store i64 %choice.res22, ptr %var.p, align 8
  %var.load23 = load i64, ptr %var.p, align 8
  %var.load24 = load i64, ptr %var.n, align 8
  %cmptmp25 = icmp sge i64 %var.load23, %var.load24
  br i1 %cmptmp25, label %choice.then26, label %choice.exit27

choice.then26:                                    ; preds = %choice.exit19
  ret { i64, ptr } zeroinitializer

choice.exit27:                                    ; preds = %ret.dead, %choice.exit19
  %var.load28 = load ptr, ptr %var.cur, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64 }, ptr %var.load28, i32 0, i32 0
  %fld.load30 = load ptr, ptr %fld.gep29, align 8
  %s.read.len31 = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len31, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %fld.load30, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  %var.load36 = load i64, ptr %var.p, align 8
  %idx.neg37 = icmp slt i64 %var.load36, 0
  br i1 %idx.neg37, label %idx_oob40, label %idx_big_check38

ret.dead:                                         ; No predecessors!
  br label %choice.exit27

idx_big_check38:                                  ; preds = %choice.exit27
  %idx.big41 = icmp sge i64 %var.load36, %s.read.len33
  br i1 %idx.big41, label %idx_oob40, label %idx_ok39

idx_ok39:                                         ; preds = %abort.dead42, %idx_big_check38
  %s.byte.gep43 = getelementptr i8, ptr %s.read.data35, i64 %var.load36
  %s.byte44 = load i8, ptr %s.byte.gep43, align 1
  %s.byte.val45 = zext i8 %s.byte44 to i64
  store i64 %s.byte.val45, ptr %var.c, align 8
  %var.load46 = load i64, ptr %var.c, align 8
  %val.match50 = icmp eq i64 %var.load46, 125
  br i1 %val.match50, label %choice.case48, label %choice.next49

idx_oob40:                                        ; preds = %idx_big_check38, %choice.exit27
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %idx_ok39

choice.exit47:                                    ; preds = %choice.next49, %ret.dead54
  %var.load55 = load i64, ptr %var.c, align 8
  %val.match59 = icmp eq i64 %var.load55, 44
  br i1 %val.match59, label %choice.case57, label %choice.next58

choice.case48:                                    ; preds = %idx_ok39
  %var.load51 = load ptr, ptr %var.cur, align 8
  %var.load52 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load52, 1
  %fld.gep53 = getelementptr inbounds { ptr, i64 }, ptr %var.load51, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep53, align 8
  ret { i64, ptr } zeroinitializer

choice.next49:                                    ; preds = %idx_ok39
  br label %choice.exit47

ret.dead54:                                       ; No predecessors!
  br label %choice.exit47

choice.exit56:                                    ; preds = %choice.next58, %choice.exit119
  %var.load121 = load ptr, ptr %var.cur, align 8
  %call.res122 = call { i64, ptr } @"json::cursor_read_str"(ptr %var.load121)
  %ret.niche.data = extractvalue { i64, ptr } %call.res122, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

choice.case57:                                    ; preds = %choice.exit47
  %var.load60 = load ptr, ptr %var.cur, align 8
  %var.load61 = load i64, ptr %var.p, align 8
  %addtmp62 = add i64 %var.load61, 1
  %fld.gep63 = getelementptr inbounds { ptr, i64 }, ptr %var.load60, i32 0, i32 1
  store i64 %addtmp62, ptr %fld.gep63, align 8
  %var.load64 = load ptr, ptr %var.cur, align 8
  %fld.gep65 = getelementptr inbounds { ptr, i64 }, ptr %var.load64, i32 0, i32 1
  %fld.load66 = load i64, ptr %fld.gep65, align 8
  store i64 %fld.load66, ptr %var.at2, align 8
  %var.load67 = load i64, ptr %var.at2, align 8
  %var.load68 = load i64, ptr %var.n, align 8
  %cmptmp69 = icmp slt i64 %var.load67, %var.load68
  br i1 %cmptmp69, label %and.178.then, label %and.178.else

choice.next58:                                    ; preds = %choice.exit47
  br label %choice.exit56

and.178.then:                                     ; preds = %choice.case57
  %var.load70 = load ptr, ptr %var.cur, align 8
  %fld.gep71 = getelementptr inbounds { ptr, i64 }, ptr %var.load70, i32 0, i32 0
  %fld.load72 = load ptr, ptr %fld.gep71, align 8
  %s.read.len73 = getelementptr inbounds { i64, ptr }, ptr %fld.load72, i32 0, i32 0
  %s.read.len74 = load i64, ptr %s.read.len73, align 8
  %s.read.len75 = and i64 %s.read.len74, 281474976710655
  %s.read.data76 = getelementptr inbounds { i64, ptr }, ptr %fld.load72, i32 0, i32 1
  %s.read.data77 = load ptr, ptr %s.read.data76, align 8
  %var.load78 = load i64, ptr %var.at2, align 8
  %idx.neg79 = icmp slt i64 %var.load78, 0
  br i1 %idx.neg79, label %idx_oob82, label %idx_big_check80

and.178.else:                                     ; preds = %choice.case57
  br label %and.178.exit

and.178.exit:                                     ; preds = %and.178.else, %idx_ok81
  %and.178.phi = phi i1 [ %cmptmp88, %idx_ok81 ], [ %cmptmp69, %and.178.else ]
  br i1 %and.178.phi, label %choice.then89, label %choice.else90

idx_big_check80:                                  ; preds = %and.178.then
  %idx.big83 = icmp sge i64 %var.load78, %s.read.len75
  br i1 %idx.big83, label %idx_oob82, label %idx_ok81

idx_ok81:                                         ; preds = %abort.dead84, %idx_big_check80
  %s.byte.gep85 = getelementptr i8, ptr %s.read.data77, i64 %var.load78
  %s.byte86 = load i8, ptr %s.byte.gep85, align 1
  %s.byte.val87 = zext i8 %s.byte86 to i64
  %cmptmp88 = icmp eq i64 %s.byte.val87, 34
  br label %and.178.exit

idx_oob82:                                        ; preds = %idx_big_check80, %and.178.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %idx_ok81

choice.then89:                                    ; preds = %and.178.exit
  %var.load92 = load i64, ptr %var.at2, align 8
  br label %choice.exit91

choice.else90:                                    ; preds = %and.178.exit
  %var.load93 = load ptr, ptr %var.cur, align 8
  %call.res94 = call i64 @"json::cursor_skip_ws"(ptr %var.load93)
  br label %choice.exit91

choice.exit91:                                    ; preds = %choice.else90, %choice.then89
  %choice.res95 = phi i64 [ %var.load92, %choice.then89 ], [ %call.res94, %choice.else90 ]
  store i64 %choice.res95, ptr %var.p2, align 8
  %var.load96 = load i64, ptr %var.p2, align 8
  %var.load97 = load i64, ptr %var.n, align 8
  %cmptmp98 = icmp sge i64 %var.load96, %var.load97
  br i1 %cmptmp98, label %or.179.then, label %or.179.else

or.179.then:                                      ; preds = %choice.exit91
  br label %or.179.exit

or.179.else:                                      ; preds = %choice.exit91
  %var.load99 = load ptr, ptr %var.cur, align 8
  %fld.gep100 = getelementptr inbounds { ptr, i64 }, ptr %var.load99, i32 0, i32 0
  %fld.load101 = load ptr, ptr %fld.gep100, align 8
  %s.read.len102 = getelementptr inbounds { i64, ptr }, ptr %fld.load101, i32 0, i32 0
  %s.read.len103 = load i64, ptr %s.read.len102, align 8
  %s.read.len104 = and i64 %s.read.len103, 281474976710655
  %s.read.data105 = getelementptr inbounds { i64, ptr }, ptr %fld.load101, i32 0, i32 1
  %s.read.data106 = load ptr, ptr %s.read.data105, align 8
  %var.load107 = load i64, ptr %var.p2, align 8
  %idx.neg108 = icmp slt i64 %var.load107, 0
  br i1 %idx.neg108, label %idx_oob111, label %idx_big_check109

or.179.exit:                                      ; preds = %idx_ok110, %or.179.then
  %or.179.phi = phi i1 [ %cmptmp98, %or.179.then ], [ %cmptmp117, %idx_ok110 ]
  br i1 %or.179.phi, label %choice.then118, label %choice.exit119

idx_big_check109:                                 ; preds = %or.179.else
  %idx.big112 = icmp sge i64 %var.load107, %s.read.len104
  br i1 %idx.big112, label %idx_oob111, label %idx_ok110

idx_ok110:                                        ; preds = %abort.dead113, %idx_big_check109
  %s.byte.gep114 = getelementptr i8, ptr %s.read.data106, i64 %var.load107
  %s.byte115 = load i8, ptr %s.byte.gep114, align 1
  %s.byte.val116 = zext i8 %s.byte115 to i64
  %cmptmp117 = icmp eq i64 %s.byte.val116, 125
  br label %or.179.exit

idx_oob111:                                       ; preds = %idx_big_check109, %or.179.else
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %idx_ok110

choice.then118:                                   ; preds = %or.179.exit
  ret { i64, ptr } zeroinitializer

choice.exit119:                                   ; preds = %ret.dead120, %or.179.exit
  br label %choice.exit56

ret.dead120:                                      ; No predecessors!
  br label %choice.exit119

ret.niche.alloc:                                  ; preds = %choice.exit56
  %arena.cur123 = call ptr @dva_arena_current()
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 16)
  store { i64, ptr } %call.res122, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit56
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit56 ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  br i1 %niche.ne.null, label %choice.then124, label %choice.else125

choice.then124:                                   ; preds = %ret.niche.done
  store ptr %ret.niche.ptr, ptr %var._, align 8
  store ptr %ret.niche.ptr, ptr %var.k, align 8
  %var.load127 = load ptr, ptr %var.cur, align 8
  %call.res128 = call i1 @"json::cursor_expect_byte"(ptr %var.load127, i64 58)
  br i1 %call.res128, label %choice.then129, label %choice.else130

choice.else125:                                   ; preds = %ret.niche.done
  br label %choice.exit126

choice.exit126:                                   ; preds = %choice.else125, %choice.exit131
  %choice.res134 = phi ptr [ %choice.res133, %choice.exit131 ], [ null, %choice.else125 ]
  %ret.niche.nn = icmp ne ptr %choice.res134, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.then129:                                   ; preds = %choice.then124
  %var.load132 = load ptr, ptr %var.k, align 8
  br label %choice.exit131

choice.else130:                                   ; preds = %choice.then124
  br label %choice.exit131

choice.exit131:                                   ; preds = %choice.else130, %choice.then129
  %choice.res133 = phi ptr [ %var.load132, %choice.then129 ], [ null, %choice.else130 ]
  br label %choice.exit126

ret.niche.load:                                   ; preds = %choice.exit126
  %ret.niche.val = load { i64, ptr }, ptr %choice.res134, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit126
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit126 ]
  ret { i64, ptr } %ret.niche.pack
}

define { i1, i64 } @"json::cursor_read_int"(ptr %0) #0 {
entry:
  %var.c = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.183 = alloca i64, align 8
  %loop.idx.183 = alloca i64, align 8
  %"var.v'" = alloca i64, align 8
  %var.c0 = alloca i64, align 8
  %"var.neg'" = alloca i1, align 1
  %"var.p'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.p0 = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load)
  store i64 %call.res, ptr %var.p0, align 8
  %var.load1 = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.p0, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
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
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load6 = load i64, ptr %var.p0, align 8
  store i64 %var.load6, ptr %"var.p'", align 8
  store i1 false, ptr %"var.neg'", align 1
  %var.load7 = load ptr, ptr %var.cur, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %"var.p'", align 8
  %idx.neg = icmp slt i64 %var.load13, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load13, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead14, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 45
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead14:                                     ; No predecessors!
  br label %idx_ok

choice.exit15:                                    ; preds = %choice.next, %choice.case
  %var.load17 = load i64, ptr %"var.p'", align 8
  %var.load18 = load i64, ptr %var.n, align 8
  %cmptmp19 = icmp sge i64 %var.load17, %var.load18
  br i1 %cmptmp19, label %choice.then20, label %choice.exit21

choice.case:                                      ; preds = %idx_ok
  store i1 true, ptr %"var.neg'", align 1
  %var.load16 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load16, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit15

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit15

choice.then20:                                    ; preds = %choice.exit15
  ret { i1, i64 } zeroinitializer

choice.exit21:                                    ; preds = %ret.dead22, %choice.exit15
  %var.load23 = load ptr, ptr %var.cur, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64 }, ptr %var.load23, i32 0, i32 0
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  %var.load31 = load i64, ptr %"var.p'", align 8
  %idx.neg32 = icmp slt i64 %var.load31, 0
  br i1 %idx.neg32, label %idx_oob35, label %idx_big_check33

ret.dead22:                                       ; No predecessors!
  br label %choice.exit21

idx_big_check33:                                  ; preds = %choice.exit21
  %idx.big36 = icmp sge i64 %var.load31, %s.read.len28
  br i1 %idx.big36, label %idx_oob35, label %idx_ok34

idx_ok34:                                         ; preds = %abort.dead37, %idx_big_check33
  %s.byte.gep38 = getelementptr i8, ptr %s.read.data30, i64 %var.load31
  %s.byte39 = load i8, ptr %s.byte.gep38, align 1
  %s.byte.val40 = zext i8 %s.byte39 to i64
  store i64 %s.byte.val40, ptr %var.c0, align 8
  %var.load41 = load i64, ptr %var.c0, align 8
  %cmptmp45 = icmp sge i64 %var.load41, 48
  br i1 %cmptmp45, label %and.180.then, label %and.180.else

idx_oob35:                                        ; preds = %idx_big_check33, %choice.exit21
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %idx_ok34

choice.exit42:                                    ; preds = %choice.next44, %choice.case43
  %choice.res = phi i1 [ true, %choice.case43 ], [ false, %choice.next44 ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then47, label %choice.exit48

choice.case43:                                    ; preds = %and.180.exit
  br label %choice.exit42

choice.next44:                                    ; preds = %and.180.exit
  br label %choice.exit42

and.180.then:                                     ; preds = %idx_ok34
  %cmptmp46 = icmp sle i64 %var.load41, 57
  br label %and.180.exit

and.180.else:                                     ; preds = %idx_ok34
  br label %and.180.exit

and.180.exit:                                     ; preds = %and.180.else, %and.180.then
  %and.180.phi = phi i1 [ %cmptmp46, %and.180.then ], [ %cmptmp45, %and.180.else ]
  br i1 %and.180.phi, label %choice.case43, label %choice.next44

choice.then47:                                    ; preds = %choice.exit42
  ret { i1, i64 } zeroinitializer

choice.exit48:                                    ; preds = %ret.dead49, %choice.exit42
  %var.load50 = load i64, ptr %var.c0, align 8
  %val.match54 = icmp eq i64 %var.load50, 48
  br i1 %val.match54, label %choice.case52, label %choice.next53

ret.dead49:                                       ; No predecessors!
  br label %choice.exit48

choice.exit51:                                    ; preds = %choice.next53, %choice.case52
  %choice.res55 = phi i1 [ true, %choice.case52 ], [ false, %choice.next53 ]
  br i1 %choice.res55, label %and.181.then, label %and.181.else

choice.case52:                                    ; preds = %choice.exit48
  br label %choice.exit51

choice.next53:                                    ; preds = %choice.exit48
  br label %choice.exit51

and.181.then:                                     ; preds = %choice.exit51
  %var.load56 = load i64, ptr %"var.p'", align 8
  %addtmp57 = add i64 %var.load56, 1
  %var.load58 = load i64, ptr %var.n, align 8
  %cmptmp59 = icmp slt i64 %addtmp57, %var.load58
  br label %and.181.exit

and.181.else:                                     ; preds = %choice.exit51
  br label %and.181.exit

and.181.exit:                                     ; preds = %and.181.else, %and.181.then
  %and.181.phi = phi i1 [ %cmptmp59, %and.181.then ], [ %choice.res55, %and.181.else ]
  br i1 %and.181.phi, label %and.182.then, label %and.182.else

and.182.then:                                     ; preds = %and.181.exit
  %var.load60 = load ptr, ptr %var.cur, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64 }, ptr %var.load60, i32 0, i32 0
  %fld.load62 = load ptr, ptr %fld.gep61, align 8
  %s.read.len63 = getelementptr inbounds { i64, ptr }, ptr %fld.load62, i32 0, i32 0
  %s.read.len64 = load i64, ptr %s.read.len63, align 8
  %s.read.len65 = and i64 %s.read.len64, 281474976710655
  %s.read.data66 = getelementptr inbounds { i64, ptr }, ptr %fld.load62, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data66, align 8
  %var.load68 = load i64, ptr %"var.p'", align 8
  %addtmp69 = add i64 %var.load68, 1
  %idx.neg70 = icmp slt i64 %addtmp69, 0
  br i1 %idx.neg70, label %idx_oob73, label %idx_big_check71

and.182.else:                                     ; preds = %and.181.exit
  br label %and.182.exit

and.182.exit:                                     ; preds = %and.182.else, %idx_ok72
  %and.182.phi = phi i1 [ %call.res79, %idx_ok72 ], [ %and.181.phi, %and.182.else ]
  br i1 %and.182.phi, label %choice.then80, label %choice.exit81

idx_big_check71:                                  ; preds = %and.182.then
  %idx.big74 = icmp sge i64 %addtmp69, %s.read.len65
  br i1 %idx.big74, label %idx_oob73, label %idx_ok72

idx_ok72:                                         ; preds = %abort.dead75, %idx_big_check71
  %s.byte.gep76 = getelementptr i8, ptr %s.read.data67, i64 %addtmp69
  %s.byte77 = load i8, ptr %s.byte.gep76, align 1
  %s.byte.val78 = zext i8 %s.byte77 to i64
  %call.res79 = call i1 @"ascii::is_digit"(i64 %s.byte.val78)
  br label %and.182.exit

idx_oob73:                                        ; preds = %idx_big_check71, %and.182.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead75:                                     ; No predecessors!
  br label %idx_ok72

choice.then80:                                    ; preds = %and.182.exit
  ret { i1, i64 } zeroinitializer

choice.exit81:                                    ; preds = %ret.dead82, %and.182.exit
  store i64 0, ptr %"var.v'", align 8
  store i64 0, ptr %loop.idx.183, align 8
  br label %loop.header.183

ret.dead82:                                       ; No predecessors!
  br label %choice.exit81

loop.header.183:                                  ; preds = %loop.latch.183, %choice.exit81
  %counter.load = load i64, ptr %loop.idx.183, align 8
  br label %loop.body.183

loop.body.183:                                    ; preds = %loop.header.183
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.183, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load83 = load i64, ptr %"var.p'", align 8
  %var.load84 = load i64, ptr %var.n, align 8
  %cmptmp85 = icmp sge i64 %var.load83, %var.load84
  br i1 %cmptmp85, label %choice.then86, label %choice.exit87

loop.exit.nat.183:                                ; No predecessors!
  br label %loop.exit.183

loop.latch.183:                                   ; preds = %choice.exit114
  %step.val = load i64, ptr %loop.step.183, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.183, align 8
  br label %loop.header.183

loop.exit.183:                                    ; preds = %choice.else, %choice.then86, %loop.exit.nat.183
  %var.load120 = load i64, ptr %"var.p'", align 8
  %var.load121 = load i64, ptr %var.n, align 8
  %cmptmp122 = icmp slt i64 %var.load120, %var.load121
  br i1 %cmptmp122, label %and.185.then, label %and.185.else

choice.then86:                                    ; preds = %loop.body.183
  br label %loop.exit.183

choice.exit87:                                    ; preds = %loop.body.183
  %var.load88 = load ptr, ptr %var.cur, align 8
  %fld.gep89 = getelementptr inbounds { ptr, i64 }, ptr %var.load88, i32 0, i32 0
  %fld.load90 = load ptr, ptr %fld.gep89, align 8
  %s.read.len91 = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 0
  %s.read.len92 = load i64, ptr %s.read.len91, align 8
  %s.read.len93 = and i64 %s.read.len92, 281474976710655
  %s.read.data94 = getelementptr inbounds { i64, ptr }, ptr %fld.load90, i32 0, i32 1
  %s.read.data95 = load ptr, ptr %s.read.data94, align 8
  %var.load96 = load i64, ptr %"var.p'", align 8
  %idx.neg97 = icmp slt i64 %var.load96, 0
  br i1 %idx.neg97, label %idx_oob100, label %idx_big_check98

idx_big_check98:                                  ; preds = %choice.exit87
  %idx.big101 = icmp sge i64 %var.load96, %s.read.len93
  br i1 %idx.big101, label %idx_oob100, label %idx_ok99

idx_ok99:                                         ; preds = %abort.dead102, %idx_big_check98
  %s.byte.gep103 = getelementptr i8, ptr %s.read.data95, i64 %var.load96
  %s.byte104 = load i8, ptr %s.byte.gep103, align 1
  %s.byte.val105 = zext i8 %s.byte104 to i64
  store i64 %s.byte.val105, ptr %var.c, align 8
  %var.load106 = load i64, ptr %var.c, align 8
  %cmptmp110 = icmp sge i64 %var.load106, 48
  br i1 %cmptmp110, label %and.184.then, label %and.184.else

idx_oob100:                                       ; preds = %idx_big_check98, %choice.exit87
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead102:                                    ; No predecessors!
  br label %idx_ok99

choice.exit107:                                   ; preds = %choice.next109, %choice.case108
  %choice.res112 = phi i1 [ true, %choice.case108 ], [ false, %choice.next109 ]
  br i1 %choice.res112, label %choice.then113, label %choice.else

choice.case108:                                   ; preds = %and.184.exit
  br label %choice.exit107

choice.next109:                                   ; preds = %and.184.exit
  br label %choice.exit107

and.184.then:                                     ; preds = %idx_ok99
  %cmptmp111 = icmp sle i64 %var.load106, 57
  br label %and.184.exit

and.184.else:                                     ; preds = %idx_ok99
  br label %and.184.exit

and.184.exit:                                     ; preds = %and.184.else, %and.184.then
  %and.184.phi = phi i1 [ %cmptmp111, %and.184.then ], [ %cmptmp110, %and.184.else ]
  br i1 %and.184.phi, label %choice.case108, label %choice.next109

choice.then113:                                   ; preds = %choice.exit107
  %var.load115 = load i64, ptr %"var.v'", align 8
  %multmp = mul i64 %var.load115, 10
  %var.load116 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load116, 48
  %addtmp117 = add i64 %multmp, %subtmp
  store i64 %addtmp117, ptr %"var.v'", align 8
  %var.load118 = load i64, ptr %"var.p'", align 8
  %addtmp119 = add i64 %var.load118, 1
  store i64 %addtmp119, ptr %"var.p'", align 8
  br label %choice.exit114

choice.else:                                      ; preds = %choice.exit107
  br label %loop.exit.183

choice.exit114:                                   ; preds = %choice.then113
  br label %loop.latch.183

and.185.then:                                     ; preds = %loop.exit.183
  %var.load123 = load ptr, ptr %var.cur, align 8
  %fld.gep124 = getelementptr inbounds { ptr, i64 }, ptr %var.load123, i32 0, i32 0
  %fld.load125 = load ptr, ptr %fld.gep124, align 8
  %s.read.len126 = getelementptr inbounds { i64, ptr }, ptr %fld.load125, i32 0, i32 0
  %s.read.len127 = load i64, ptr %s.read.len126, align 8
  %s.read.len128 = and i64 %s.read.len127, 281474976710655
  %s.read.data129 = getelementptr inbounds { i64, ptr }, ptr %fld.load125, i32 0, i32 1
  %s.read.data130 = load ptr, ptr %s.read.data129, align 8
  %var.load131 = load i64, ptr %"var.p'", align 8
  %idx.neg132 = icmp slt i64 %var.load131, 0
  br i1 %idx.neg132, label %idx_oob135, label %idx_big_check133

and.185.else:                                     ; preds = %loop.exit.183
  br label %and.185.exit

and.185.exit:                                     ; preds = %and.185.else, %choice.exit141
  %and.185.phi = phi i1 [ %choice.res148, %choice.exit141 ], [ %cmptmp122, %and.185.else ]
  br i1 %and.185.phi, label %choice.then149, label %choice.exit150

idx_big_check133:                                 ; preds = %and.185.then
  %idx.big136 = icmp sge i64 %var.load131, %s.read.len128
  br i1 %idx.big136, label %idx_oob135, label %idx_ok134

idx_ok134:                                        ; preds = %abort.dead137, %idx_big_check133
  %s.byte.gep138 = getelementptr i8, ptr %s.read.data130, i64 %var.load131
  %s.byte139 = load i8, ptr %s.byte.gep138, align 1
  %s.byte.val140 = zext i8 %s.byte139 to i64
  %val.match144 = icmp eq i64 %s.byte.val140, 46
  %val.match145 = icmp eq i64 %s.byte.val140, 101
  %case.or = or i1 %val.match144, %val.match145
  %val.match146 = icmp eq i64 %s.byte.val140, 69
  %case.or147 = or i1 %case.or, %val.match146
  br i1 %case.or147, label %choice.case142, label %choice.next143

idx_oob135:                                       ; preds = %idx_big_check133, %and.185.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead137:                                    ; No predecessors!
  br label %idx_ok134

choice.exit141:                                   ; preds = %choice.next143, %choice.case142
  %choice.res148 = phi i1 [ true, %choice.case142 ], [ false, %choice.next143 ]
  br label %and.185.exit

choice.case142:                                   ; preds = %idx_ok134
  br label %choice.exit141

choice.next143:                                   ; preds = %idx_ok134
  br label %choice.exit141

choice.then149:                                   ; preds = %and.185.exit
  ret { i1, i64 } zeroinitializer

choice.exit150:                                   ; preds = %ret.dead151, %and.185.exit
  %var.load152 = load ptr, ptr %var.cur, align 8
  %var.load153 = load i64, ptr %"var.p'", align 8
  %fld.gep154 = getelementptr inbounds { ptr, i64 }, ptr %var.load152, i32 0, i32 1
  store i64 %var.load153, ptr %fld.gep154, align 8
  %var.load155 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load155, label %choice.then156, label %choice.else157

ret.dead151:                                      ; No predecessors!
  br label %choice.exit150

choice.then156:                                   ; preds = %choice.exit150
  %var.load159 = load i64, ptr %"var.v'", align 8
  %subtmp160 = sub i64 0, %var.load159
  br label %choice.exit158

choice.else157:                                   ; preds = %choice.exit150
  %var.load161 = load i64, ptr %"var.v'", align 8
  br label %choice.exit158

choice.exit158:                                   ; preds = %choice.else157, %choice.then156
  %choice.res162 = phi i64 [ %subtmp160, %choice.then156 ], [ %var.load161, %choice.else157 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res162, 1
  ret { i1, i64 } %ram.pay
}

declare i1 @"ascii::is_digit"(i64) #0

define { i1, i64 } @"json::cursor_read_bool"(ptr %0) #0 {
entry:
  %var.n = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load1 = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load4, 4
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %addtmp, %var.load5
  br i1 %cmptmp, label %and.186.then, label %and.186.else

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

and.186.then:                                     ; preds = %str_ok
  %var.load6 = load ptr, ptr %var.cur, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %s.chk.len9 = load i64, ptr %s.chk.len, align 8
  %s.chk.len10 = and i64 %s.chk.len9, 281474976710655
  %str.tag11 = lshr i64 %s.chk.len9, 48
  %tag.immortal13 = icmp eq i64 %str.tag11, 0
  br i1 %tag.immortal13, label %str_ok12, label %tag.gen_check14

and.186.else:                                     ; preds = %str_ok
  br label %and.186.exit

and.186.exit:                                     ; preds = %and.186.else, %str.eq.merge
  %and.186.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.186.else ]
  br i1 %and.186.phi, label %choice.then, label %choice.exit

str_ok12:                                         ; preds = %abort.dead21, %tag.slow_check15, %tag.gen_check14, %and.186.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %s.read.len22 = load i64, ptr %s.read.len, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data, align 8
  %var.load25 = load i64, ptr %var.p, align 8
  %var.load26 = load i64, ptr %var.p, align 8
  %addtmp27 = add i64 %var.load26, 4
  %start.is_neg = icmp slt i64 %var.load25, 0
  %rel.start = add i64 %s.read.len23, %var.load25
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load25
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len23
  %final.start = select i1 %start.gt.len, i64 %s.read.len23, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp27, 0
  %rel.end = add i64 %s.read.len23, %addtmp27
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp27
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len23
  %final.end = select i1 %end.gt.len, i64 %s.read.len23, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data24, i64 %final.start
  %cmp.str = load i64, ptr @str.0.struct, align 8
  %cmp.str28 = and i64 %cmp.str, 281474976710655
  %cmp.str29 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str28
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check14:                                  ; preds = %and.186.then
  %active.gen17 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok18 = icmp eq i64 %str.tag11, %active.gen17
  br i1 %tag.fast.ok18, label %str_ok12, label %tag.slow_check15

tag.slow_check15:                                 ; preds = %tag.gen_check14
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid20 = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag11)
  br i1 %tag.valid20, label %str_ok12, label %tag.stale16

tag.stale16:                                      ; preds = %tag.slow_check15
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %str_ok12

str.eq.then:                                      ; preds = %str_ok12
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str29, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok12
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.186.exit

choice.then:                                      ; preds = %and.186.exit
  %var.load30 = load ptr, ptr %var.cur, align 8
  %var.load31 = load i64, ptr %var.p, align 8
  %addtmp32 = add i64 %var.load31, 4
  %fld.gep33 = getelementptr inbounds { ptr, i64 }, ptr %var.load30, i32 0, i32 1
  store i64 %addtmp32, ptr %fld.gep33, align 8
  ret { i1, i64 } { i1 true, i64 1 }

choice.exit:                                      ; preds = %ret.dead, %and.186.exit
  %var.load34 = load i64, ptr %var.p, align 8
  %addtmp35 = add i64 %var.load34, 5
  %var.load36 = load i64, ptr %var.n, align 8
  %cmptmp37 = icmp sle i64 %addtmp35, %var.load36
  br i1 %cmptmp37, label %and.187.then, label %and.187.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.187.then:                                     ; preds = %choice.exit
  %var.load38 = load ptr, ptr %var.cur, align 8
  %fld.gep39 = getelementptr inbounds { ptr, i64 }, ptr %var.load38, i32 0, i32 0
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %s.chk.len41 = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 0
  %s.chk.len42 = load i64, ptr %s.chk.len41, align 8
  %s.chk.len43 = and i64 %s.chk.len42, 281474976710655
  %str.tag44 = lshr i64 %s.chk.len42, 48
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  br i1 %tag.immortal46, label %str_ok45, label %tag.gen_check47

and.187.else:                                     ; preds = %choice.exit
  br label %and.187.exit

and.187.exit:                                     ; preds = %and.187.else, %str.eq.merge87
  %and.187.phi = phi i1 [ %str.eq.result90, %str.eq.merge87 ], [ %cmptmp37, %and.187.else ]
  br i1 %and.187.phi, label %choice.then91, label %choice.exit92

str_ok45:                                         ; preds = %abort.dead54, %tag.slow_check48, %tag.gen_check47, %and.187.then
  %s.read.len55 = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 0
  %s.read.len56 = load i64, ptr %s.read.len55, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %s.read.data58 = getelementptr inbounds { i64, ptr }, ptr %fld.load40, i32 0, i32 1
  %s.read.data59 = load ptr, ptr %s.read.data58, align 8
  %var.load60 = load i64, ptr %var.p, align 8
  %var.load61 = load i64, ptr %var.p, align 8
  %addtmp62 = add i64 %var.load61, 5
  %start.is_neg63 = icmp slt i64 %var.load60, 0
  %rel.start64 = add i64 %s.read.len57, %var.load60
  %norm.start65 = select i1 %start.is_neg63, i64 %rel.start64, i64 %var.load60
  %start.lt.066 = icmp slt i64 %norm.start65, 0
  %c.start.067 = select i1 %start.lt.066, i64 0, i64 %norm.start65
  %start.gt.len68 = icmp sgt i64 %c.start.067, %s.read.len57
  %final.start69 = select i1 %start.gt.len68, i64 %s.read.len57, i64 %c.start.067
  %end.is_neg70 = icmp slt i64 %addtmp62, 0
  %rel.end71 = add i64 %s.read.len57, %addtmp62
  %norm.end72 = select i1 %end.is_neg70, i64 %rel.end71, i64 %addtmp62
  %end.lt.073 = icmp slt i64 %norm.end72, 0
  %c.end.074 = select i1 %end.lt.073, i64 0, i64 %norm.end72
  %end.gt.len75 = icmp sgt i64 %c.end.074, %s.read.len57
  %final.end76 = select i1 %end.gt.len75, i64 %s.read.len57, i64 %c.end.074
  %view.empty77 = icmp sle i64 %final.end76, %final.start69
  %view.len.sub78 = sub i64 %final.end76, %final.start69
  %view.len79 = select i1 %view.empty77, i64 0, i64 %view.len.sub78
  %view.data80 = getelementptr i8, ptr %s.read.data59, i64 %final.start69
  %cmp.str81 = load i64, ptr @str.1.struct, align 8
  %cmp.str82 = and i64 %cmp.str81, 281474976710655
  %cmp.str83 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.len84 = icmp eq i64 %view.len79, %cmp.str82
  br i1 %eq.len84, label %str.eq.then85, label %str.eq.else86

tag.gen_check47:                                  ; preds = %and.187.then
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

str.eq.then85:                                    ; preds = %str_ok45
  %eq.memcmp88 = call i32 @memcmp(ptr %view.data80, ptr %cmp.str83, i64 %view.len79)
  %eq.cmp.zero89 = icmp eq i32 %eq.memcmp88, 0
  br label %str.eq.merge87

str.eq.else86:                                    ; preds = %str_ok45
  br label %str.eq.merge87

str.eq.merge87:                                   ; preds = %str.eq.else86, %str.eq.then85
  %str.eq.result90 = phi i1 [ %eq.cmp.zero89, %str.eq.then85 ], [ false, %str.eq.else86 ]
  br label %and.187.exit

choice.then91:                                    ; preds = %and.187.exit
  %var.load93 = load ptr, ptr %var.cur, align 8
  %var.load94 = load i64, ptr %var.p, align 8
  %addtmp95 = add i64 %var.load94, 5
  %fld.gep96 = getelementptr inbounds { ptr, i64 }, ptr %var.load93, i32 0, i32 1
  store i64 %addtmp95, ptr %fld.gep96, align 8
  ret { i1, i64 } { i1 true, i64 0 }

choice.exit92:                                    ; preds = %ret.dead97, %and.187.exit
  ret { i1, i64 } zeroinitializer

ret.dead97:                                       ; No predecessors!
  br label %choice.exit92
}

define i1 @"json::cursor_skip_value"(ptr %0) #0 {
entry:
  %var.end = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.c0 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load)
  store i64 %call.res, ptr %var.p, align 8
  %var.load1 = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.p, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
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
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load6 = load ptr, ptr %var.cur, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %var.load12 = load i64, ptr %var.p, align 8
  %idx.neg = icmp slt i64 %var.load12, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load12, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead13, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c0, align 8
  %var.load14 = load i64, ptr %var.c0, align 8
  %val.match = icmp eq i64 %var.load14, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %idx_ok

choice.exit15:                                    ; preds = %choice.next211, %choice.case210, %choice.exit204, %choice.exit136, %choice.exit68, %choice.case26, %choice.exit22
  %choice.res220 = phi i1 [ %choice.res, %choice.exit22 ], [ %call.res32, %choice.case26 ], [ %choice.res73, %choice.exit68 ], [ %choice.res141, %choice.exit136 ], [ %choice.res209, %choice.exit204 ], [ %call.res219, %choice.case210 ], [ false, %choice.next211 ]
  ret i1 %choice.res220

choice.case:                                      ; preds = %idx_ok
  %var.load16 = load ptr, ptr %var.cur, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %var.load19 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load19, 1
  %call.res20 = call { i1, i64 } @"json::#cursor_skip_str"(ptr %fld.load18, i64 %addtmp)
  %ram.tag = extractvalue { i1, i64 } %call.res20, 0
  br i1 %ram.tag, label %choice.then21, label %choice.else

choice.next:                                      ; preds = %idx_ok
  %val.match28 = icmp eq i64 %var.load14, 123
  %val.match29 = icmp eq i64 %var.load14, 91
  %case.or = or i1 %val.match28, %val.match29
  br i1 %case.or, label %choice.case26, label %choice.next27

choice.then21:                                    ; preds = %choice.case
  %ram.pay = extractvalue { i1, i64 } %call.res20, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load23 = load ptr, ptr %var.cur, align 8
  %var.load24 = load i64, ptr %var.end, align 8
  %fld.gep25 = getelementptr inbounds { ptr, i64 }, ptr %var.load23, i32 0, i32 1
  store i64 %var.load24, ptr %fld.gep25, align 8
  br label %choice.exit22

choice.else:                                      ; preds = %choice.case
  br label %choice.exit22

choice.exit22:                                    ; preds = %choice.else, %choice.then21
  %choice.res = phi i1 [ true, %choice.then21 ], [ false, %choice.else ]
  br label %choice.exit15

choice.case26:                                    ; preds = %choice.next
  %var.load30 = load ptr, ptr %var.cur, align 8
  %var.load31 = load i64, ptr %var.p, align 8
  %call.res32 = call i1 @"json::#cursor_skip_compound"(ptr %var.load30, i64 %var.load31)
  br label %choice.exit15

choice.next27:                                    ; preds = %choice.next
  %val.match35 = icmp eq i64 %var.load14, 116
  br i1 %val.match35, label %choice.case33, label %choice.next34

choice.case33:                                    ; preds = %choice.next27
  %var.load36 = load i64, ptr %var.p, align 8
  %addtmp37 = add i64 %var.load36, 4
  %var.load38 = load i64, ptr %var.n, align 8
  %cmptmp39 = icmp sle i64 %addtmp37, %var.load38
  br i1 %cmptmp39, label %and.188.then, label %and.188.else

choice.next34:                                    ; preds = %choice.next27
  %val.match76 = icmp eq i64 %var.load14, 102
  br i1 %val.match76, label %choice.case74, label %choice.next75

and.188.then:                                     ; preds = %choice.case33
  %var.load40 = load ptr, ptr %var.cur, align 8
  %fld.gep41 = getelementptr inbounds { ptr, i64 }, ptr %var.load40, i32 0, i32 0
  %fld.load42 = load ptr, ptr %fld.gep41, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 0
  %s.chk.len43 = load i64, ptr %s.chk.len, align 8
  %s.chk.len44 = and i64 %s.chk.len43, 281474976710655
  %str.tag45 = lshr i64 %s.chk.len43, 48
  %tag.immortal47 = icmp eq i64 %str.tag45, 0
  br i1 %tag.immortal47, label %str_ok46, label %tag.gen_check48

and.188.else:                                     ; preds = %choice.case33
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %str.eq.merge
  %and.188.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp39, %and.188.else ]
  br i1 %and.188.phi, label %choice.then66, label %choice.else67

str_ok46:                                         ; preds = %abort.dead55, %tag.slow_check49, %tag.gen_check48, %and.188.then
  %s.read.len56 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 0
  %s.read.len57 = load i64, ptr %s.read.len56, align 8
  %s.read.len58 = and i64 %s.read.len57, 281474976710655
  %s.read.data59 = getelementptr inbounds { i64, ptr }, ptr %fld.load42, i32 0, i32 1
  %s.read.data60 = load ptr, ptr %s.read.data59, align 8
  %var.load61 = load i64, ptr %var.p, align 8
  %var.load62 = load i64, ptr %var.p, align 8
  %addtmp63 = add i64 %var.load62, 4
  %start.is_neg = icmp slt i64 %var.load61, 0
  %rel.start = add i64 %s.read.len58, %var.load61
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load61
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len58
  %final.start = select i1 %start.gt.len, i64 %s.read.len58, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp63, 0
  %rel.end = add i64 %s.read.len58, %addtmp63
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp63
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len58
  %final.end = select i1 %end.gt.len, i64 %s.read.len58, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data60, i64 %final.start
  %cmp.str = load i64, ptr @str.0.struct, align 8
  %cmp.str64 = and i64 %cmp.str, 281474976710655
  %cmp.str65 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str64
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check48:                                  ; preds = %and.188.then
  %active.gen51 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok52 = icmp eq i64 %str.tag45, %active.gen51
  br i1 %tag.fast.ok52, label %str_ok46, label %tag.slow_check49

tag.slow_check49:                                 ; preds = %tag.gen_check48
  %arena.cur53 = call ptr @dva_arena_current()
  %tag.valid54 = call i1 @dva_arena_validate_tag(ptr %arena.cur53, i64 %str.tag45)
  br i1 %tag.valid54, label %str_ok46, label %tag.stale50

tag.stale50:                                      ; preds = %tag.slow_check49
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead55:                                     ; No predecessors!
  br label %str_ok46

str.eq.then:                                      ; preds = %str_ok46
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str65, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok46
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.188.exit

choice.then66:                                    ; preds = %and.188.exit
  %var.load69 = load ptr, ptr %var.cur, align 8
  %var.load70 = load i64, ptr %var.p, align 8
  %addtmp71 = add i64 %var.load70, 4
  %fld.gep72 = getelementptr inbounds { ptr, i64 }, ptr %var.load69, i32 0, i32 1
  store i64 %addtmp71, ptr %fld.gep72, align 8
  br label %choice.exit68

choice.else67:                                    ; preds = %and.188.exit
  br label %choice.exit68

choice.exit68:                                    ; preds = %choice.else67, %choice.then66
  %choice.res73 = phi i1 [ true, %choice.then66 ], [ false, %choice.else67 ]
  br label %choice.exit15

choice.case74:                                    ; preds = %choice.next34
  %var.load77 = load i64, ptr %var.p, align 8
  %addtmp78 = add i64 %var.load77, 5
  %var.load79 = load i64, ptr %var.n, align 8
  %cmptmp80 = icmp sle i64 %addtmp78, %var.load79
  br i1 %cmptmp80, label %and.189.then, label %and.189.else

choice.next75:                                    ; preds = %choice.next34
  %val.match144 = icmp eq i64 %var.load14, 110
  br i1 %val.match144, label %choice.case142, label %choice.next143

and.189.then:                                     ; preds = %choice.case74
  %var.load81 = load ptr, ptr %var.cur, align 8
  %fld.gep82 = getelementptr inbounds { ptr, i64 }, ptr %var.load81, i32 0, i32 0
  %fld.load83 = load ptr, ptr %fld.gep82, align 8
  %s.chk.len84 = getelementptr inbounds { i64, ptr }, ptr %fld.load83, i32 0, i32 0
  %s.chk.len85 = load i64, ptr %s.chk.len84, align 8
  %s.chk.len86 = and i64 %s.chk.len85, 281474976710655
  %str.tag87 = lshr i64 %s.chk.len85, 48
  %tag.immortal89 = icmp eq i64 %str.tag87, 0
  br i1 %tag.immortal89, label %str_ok88, label %tag.gen_check90

and.189.else:                                     ; preds = %choice.case74
  br label %and.189.exit

and.189.exit:                                     ; preds = %and.189.else, %str.eq.merge130
  %and.189.phi = phi i1 [ %str.eq.result133, %str.eq.merge130 ], [ %cmptmp80, %and.189.else ]
  br i1 %and.189.phi, label %choice.then134, label %choice.else135

str_ok88:                                         ; preds = %abort.dead97, %tag.slow_check91, %tag.gen_check90, %and.189.then
  %s.read.len98 = getelementptr inbounds { i64, ptr }, ptr %fld.load83, i32 0, i32 0
  %s.read.len99 = load i64, ptr %s.read.len98, align 8
  %s.read.len100 = and i64 %s.read.len99, 281474976710655
  %s.read.data101 = getelementptr inbounds { i64, ptr }, ptr %fld.load83, i32 0, i32 1
  %s.read.data102 = load ptr, ptr %s.read.data101, align 8
  %var.load103 = load i64, ptr %var.p, align 8
  %var.load104 = load i64, ptr %var.p, align 8
  %addtmp105 = add i64 %var.load104, 5
  %start.is_neg106 = icmp slt i64 %var.load103, 0
  %rel.start107 = add i64 %s.read.len100, %var.load103
  %norm.start108 = select i1 %start.is_neg106, i64 %rel.start107, i64 %var.load103
  %start.lt.0109 = icmp slt i64 %norm.start108, 0
  %c.start.0110 = select i1 %start.lt.0109, i64 0, i64 %norm.start108
  %start.gt.len111 = icmp sgt i64 %c.start.0110, %s.read.len100
  %final.start112 = select i1 %start.gt.len111, i64 %s.read.len100, i64 %c.start.0110
  %end.is_neg113 = icmp slt i64 %addtmp105, 0
  %rel.end114 = add i64 %s.read.len100, %addtmp105
  %norm.end115 = select i1 %end.is_neg113, i64 %rel.end114, i64 %addtmp105
  %end.lt.0116 = icmp slt i64 %norm.end115, 0
  %c.end.0117 = select i1 %end.lt.0116, i64 0, i64 %norm.end115
  %end.gt.len118 = icmp sgt i64 %c.end.0117, %s.read.len100
  %final.end119 = select i1 %end.gt.len118, i64 %s.read.len100, i64 %c.end.0117
  %view.empty120 = icmp sle i64 %final.end119, %final.start112
  %view.len.sub121 = sub i64 %final.end119, %final.start112
  %view.len122 = select i1 %view.empty120, i64 0, i64 %view.len.sub121
  %view.data123 = getelementptr i8, ptr %s.read.data102, i64 %final.start112
  %cmp.str124 = load i64, ptr @str.1.struct, align 8
  %cmp.str125 = and i64 %cmp.str124, 281474976710655
  %cmp.str126 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.len127 = icmp eq i64 %view.len122, %cmp.str125
  br i1 %eq.len127, label %str.eq.then128, label %str.eq.else129

tag.gen_check90:                                  ; preds = %and.189.then
  %active.gen93 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok94 = icmp eq i64 %str.tag87, %active.gen93
  br i1 %tag.fast.ok94, label %str_ok88, label %tag.slow_check91

tag.slow_check91:                                 ; preds = %tag.gen_check90
  %arena.cur95 = call ptr @dva_arena_current()
  %tag.valid96 = call i1 @dva_arena_validate_tag(ptr %arena.cur95, i64 %str.tag87)
  br i1 %tag.valid96, label %str_ok88, label %tag.stale92

tag.stale92:                                      ; preds = %tag.slow_check91
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead97:                                     ; No predecessors!
  br label %str_ok88

str.eq.then128:                                   ; preds = %str_ok88
  %eq.memcmp131 = call i32 @memcmp(ptr %view.data123, ptr %cmp.str126, i64 %view.len122)
  %eq.cmp.zero132 = icmp eq i32 %eq.memcmp131, 0
  br label %str.eq.merge130

str.eq.else129:                                   ; preds = %str_ok88
  br label %str.eq.merge130

str.eq.merge130:                                  ; preds = %str.eq.else129, %str.eq.then128
  %str.eq.result133 = phi i1 [ %eq.cmp.zero132, %str.eq.then128 ], [ false, %str.eq.else129 ]
  br label %and.189.exit

choice.then134:                                   ; preds = %and.189.exit
  %var.load137 = load ptr, ptr %var.cur, align 8
  %var.load138 = load i64, ptr %var.p, align 8
  %addtmp139 = add i64 %var.load138, 5
  %fld.gep140 = getelementptr inbounds { ptr, i64 }, ptr %var.load137, i32 0, i32 1
  store i64 %addtmp139, ptr %fld.gep140, align 8
  br label %choice.exit136

choice.else135:                                   ; preds = %and.189.exit
  br label %choice.exit136

choice.exit136:                                   ; preds = %choice.else135, %choice.then134
  %choice.res141 = phi i1 [ true, %choice.then134 ], [ false, %choice.else135 ]
  br label %choice.exit15

choice.case142:                                   ; preds = %choice.next75
  %var.load145 = load i64, ptr %var.p, align 8
  %addtmp146 = add i64 %var.load145, 4
  %var.load147 = load i64, ptr %var.n, align 8
  %cmptmp148 = icmp sle i64 %addtmp146, %var.load147
  br i1 %cmptmp148, label %and.190.then, label %and.190.else

choice.next143:                                   ; preds = %choice.next75
  %cmptmp212 = icmp sge i64 %var.load14, 48
  br i1 %cmptmp212, label %and.191.then, label %and.191.else

and.190.then:                                     ; preds = %choice.case142
  %var.load149 = load ptr, ptr %var.cur, align 8
  %fld.gep150 = getelementptr inbounds { ptr, i64 }, ptr %var.load149, i32 0, i32 0
  %fld.load151 = load ptr, ptr %fld.gep150, align 8
  %s.chk.len152 = getelementptr inbounds { i64, ptr }, ptr %fld.load151, i32 0, i32 0
  %s.chk.len153 = load i64, ptr %s.chk.len152, align 8
  %s.chk.len154 = and i64 %s.chk.len153, 281474976710655
  %str.tag155 = lshr i64 %s.chk.len153, 48
  %tag.immortal157 = icmp eq i64 %str.tag155, 0
  br i1 %tag.immortal157, label %str_ok156, label %tag.gen_check158

and.190.else:                                     ; preds = %choice.case142
  br label %and.190.exit

and.190.exit:                                     ; preds = %and.190.else, %str.eq.merge198
  %and.190.phi = phi i1 [ %str.eq.result201, %str.eq.merge198 ], [ %cmptmp148, %and.190.else ]
  br i1 %and.190.phi, label %choice.then202, label %choice.else203

str_ok156:                                        ; preds = %abort.dead165, %tag.slow_check159, %tag.gen_check158, %and.190.then
  %s.read.len166 = getelementptr inbounds { i64, ptr }, ptr %fld.load151, i32 0, i32 0
  %s.read.len167 = load i64, ptr %s.read.len166, align 8
  %s.read.len168 = and i64 %s.read.len167, 281474976710655
  %s.read.data169 = getelementptr inbounds { i64, ptr }, ptr %fld.load151, i32 0, i32 1
  %s.read.data170 = load ptr, ptr %s.read.data169, align 8
  %var.load171 = load i64, ptr %var.p, align 8
  %var.load172 = load i64, ptr %var.p, align 8
  %addtmp173 = add i64 %var.load172, 4
  %start.is_neg174 = icmp slt i64 %var.load171, 0
  %rel.start175 = add i64 %s.read.len168, %var.load171
  %norm.start176 = select i1 %start.is_neg174, i64 %rel.start175, i64 %var.load171
  %start.lt.0177 = icmp slt i64 %norm.start176, 0
  %c.start.0178 = select i1 %start.lt.0177, i64 0, i64 %norm.start176
  %start.gt.len179 = icmp sgt i64 %c.start.0178, %s.read.len168
  %final.start180 = select i1 %start.gt.len179, i64 %s.read.len168, i64 %c.start.0178
  %end.is_neg181 = icmp slt i64 %addtmp173, 0
  %rel.end182 = add i64 %s.read.len168, %addtmp173
  %norm.end183 = select i1 %end.is_neg181, i64 %rel.end182, i64 %addtmp173
  %end.lt.0184 = icmp slt i64 %norm.end183, 0
  %c.end.0185 = select i1 %end.lt.0184, i64 0, i64 %norm.end183
  %end.gt.len186 = icmp sgt i64 %c.end.0185, %s.read.len168
  %final.end187 = select i1 %end.gt.len186, i64 %s.read.len168, i64 %c.end.0185
  %view.empty188 = icmp sle i64 %final.end187, %final.start180
  %view.len.sub189 = sub i64 %final.end187, %final.start180
  %view.len190 = select i1 %view.empty188, i64 0, i64 %view.len.sub189
  %view.data191 = getelementptr i8, ptr %s.read.data170, i64 %final.start180
  %cmp.str192 = load i64, ptr @str.17.struct, align 8
  %cmp.str193 = and i64 %cmp.str192, 281474976710655
  %cmp.str194 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.len195 = icmp eq i64 %view.len190, %cmp.str193
  br i1 %eq.len195, label %str.eq.then196, label %str.eq.else197

tag.gen_check158:                                 ; preds = %and.190.then
  %active.gen161 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok162 = icmp eq i64 %str.tag155, %active.gen161
  br i1 %tag.fast.ok162, label %str_ok156, label %tag.slow_check159

tag.slow_check159:                                ; preds = %tag.gen_check158
  %arena.cur163 = call ptr @dva_arena_current()
  %tag.valid164 = call i1 @dva_arena_validate_tag(ptr %arena.cur163, i64 %str.tag155)
  br i1 %tag.valid164, label %str_ok156, label %tag.stale160

tag.stale160:                                     ; preds = %tag.slow_check159
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead165:                                    ; No predecessors!
  br label %str_ok156

str.eq.then196:                                   ; preds = %str_ok156
  %eq.memcmp199 = call i32 @memcmp(ptr %view.data191, ptr %cmp.str194, i64 %view.len190)
  %eq.cmp.zero200 = icmp eq i32 %eq.memcmp199, 0
  br label %str.eq.merge198

str.eq.else197:                                   ; preds = %str_ok156
  br label %str.eq.merge198

str.eq.merge198:                                  ; preds = %str.eq.else197, %str.eq.then196
  %str.eq.result201 = phi i1 [ %eq.cmp.zero200, %str.eq.then196 ], [ false, %str.eq.else197 ]
  br label %and.190.exit

choice.then202:                                   ; preds = %and.190.exit
  %var.load205 = load ptr, ptr %var.cur, align 8
  %var.load206 = load i64, ptr %var.p, align 8
  %addtmp207 = add i64 %var.load206, 4
  %fld.gep208 = getelementptr inbounds { ptr, i64 }, ptr %var.load205, i32 0, i32 1
  store i64 %addtmp207, ptr %fld.gep208, align 8
  br label %choice.exit204

choice.else203:                                   ; preds = %and.190.exit
  br label %choice.exit204

choice.exit204:                                   ; preds = %choice.else203, %choice.then202
  %choice.res209 = phi i1 [ true, %choice.then202 ], [ false, %choice.else203 ]
  br label %choice.exit15

choice.case210:                                   ; preds = %and.191.exit
  %var.load216 = load ptr, ptr %var.cur, align 8
  %var.load217 = load i64, ptr %var.p, align 8
  %var.load218 = load i64, ptr %var.c0, align 8
  %call.res219 = call i1 @"json::#cursor_skip_number"(ptr %var.load216, i64 %var.load217, i64 %var.load218)
  br label %choice.exit15

choice.next211:                                   ; preds = %and.191.exit
  br label %choice.exit15

and.191.then:                                     ; preds = %choice.next143
  %cmptmp213 = icmp sle i64 %var.load14, 57
  br label %and.191.exit

and.191.else:                                     ; preds = %choice.next143
  br label %and.191.exit

and.191.exit:                                     ; preds = %and.191.else, %and.191.then
  %and.191.phi = phi i1 [ %cmptmp213, %and.191.then ], [ %cmptmp212, %and.191.else ]
  %val.match214 = icmp eq i64 %var.load14, 45
  %case.or215 = or i1 %and.191.phi, %val.match214
  br i1 %case.or215, label %choice.case210, label %choice.next211
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
