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
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.88.then, label %and.88.else

and.88.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load10, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.88.else:                                      ; preds = %entry
  br label %and.88.exit

and.88.exit:                                      ; preds = %and.88.else, %idx_ok
  %and.88.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.88.else ]
  ret i1 %and.88.phi

idx_ok:                                           ; preds = %abort.dead, %and.88.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.88.exit

idx_oob:                                          ; preds = %and.88.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #5

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
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.89.then, label %and.89.else

and.89.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load10, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.89.else:                                      ; preds = %entry
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %idx_ok
  %and.89.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.89.else ]
  ret i1 %and.89.phi

idx_ok:                                           ; preds = %abort.dead, %and.89.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_hex"(i64 %s.byte.val)
  br label %and.89.exit

idx_oob:                                          ; preds = %and.89.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
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
  %ret.ub.salloc = alloca { i64, i64 }, align 8
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
  store { i64, i64 } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.dec, align 8
  %var.load2 = load ptr, ptr %var.dec, align 8
  %fld.gep3 = getelementptr inbounds { i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  %cmptmp = icmp slt i64 %fld.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.k, align 8
  %var.load15 = load i64, ptr %var.k, align 8
  %var.load16 = load ptr, ptr %var.dec, align 8
  %fld.gep17 = getelementptr inbounds { i64, i64 }, ptr %var.load16, i32 0, i32 1
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %addtmp = add i64 %var.load15, %fld.load18
  %start.is_neg = icmp slt i64 %var.load14, 0
  %rel.start = add i64 %s.read.len12, %var.load14
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load14
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
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len19 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len19, i64 %view.len)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len20

choice.exit:                                      ; preds = %b.grow_done, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %call.res38, %b.grow_done ]
  ret { i1, i64 } %choice.res

b.app.new.len20:                                  ; preds = %abort.dead, %choice.else
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap21 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap21, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.app.new.len20

b.grow2:                                          ; preds = %b.app.new.len20
  %b.cap2 = mul i64 %b.cap21, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len222 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data223 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum24 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf25 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf25, label %str_overflow_abort27, label %b.new.buf.len226

b.nogrow2:                                        ; preds = %b.app.new.len20
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len226
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data30 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data30, i64 %b.app.cur.len19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data30, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  %var.load31 = load ptr, ptr %var.sc, align 8
  %var.load32 = load ptr, ptr %var.b, align 8
  %var.load33 = load i64, ptr %var.k, align 8
  %var.load34 = load ptr, ptr %var.dec, align 8
  %fld.gep35 = getelementptr inbounds { i64, i64 }, ptr %var.load34, i32 0, i32 1
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %addtmp37 = add i64 %var.load33, %fld.load36
  %call.res38 = call { i1, i64 } @"json::#scan_string"(ptr %var.load31, ptr %var.load32, i64 %addtmp37)
  br label %choice.exit

b.new.buf.len226:                                 ; preds = %abort.dead28, %b.grow2
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 %sum24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data223, i64 %b.cur.len222, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len222
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort27:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %b.new.buf.len226
}

declare { i64, i64 } @"utf::decode_str_at"(ptr, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

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
  %cmptmp = icmp sge i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
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
  %var.load4 = load i64, ptr %var.k, align 8
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load4, ptr %rec.fld, align 8
  %rec.fld6 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld6, align 8
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

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load7 = load ptr, ptr %var.sc, align 8
  %fld.gep8 = getelementptr inbounds { ptr, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load ptr, ptr %fld.gep8, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %var.k, align 8
  %idx.oob = icmp uge i64 %var.load13, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load14 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load14, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit15:                                    ; preds = %choice.next49, %b.push_done, %choice.case24, %choice.case18, %choice.case
  %choice.res = phi { i1, i64 } [ %ram.pay17, %choice.case ], [ %call.res, %choice.case18 ], [ %ram.pay47, %choice.case24 ], [ %call.res64, %b.push_done ], [ %call.res69, %choice.next49 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %idx_ok
  %var.load16 = load i64, ptr %var.k, align 8
  %ram.pay17 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load16, 1
  br label %choice.exit15

choice.next:                                      ; preds = %idx_ok
  %val.match20 = icmp eq i64 %var.load14, 92
  br i1 %val.match20, label %choice.case18, label %choice.next19

choice.case18:                                    ; preds = %choice.next
  %var.load21 = load ptr, ptr %var.sc, align 8
  %var.load22 = load ptr, ptr %var.b, align 8
  %var.load23 = load i64, ptr %var.k, align 8
  %call.res = call { i1, i64 } @"json::#parse_escape"(ptr %var.load21, ptr %var.load22, i64 %var.load23)
  br label %choice.exit15

choice.next19:                                    ; preds = %choice.next
  %cmptmp26 = icmp slt i64 %var.load14, 32
  br i1 %cmptmp26, label %choice.case24, label %choice.next25

choice.case24:                                    ; preds = %choice.next19
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
  %err.code.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 0
  store i64 400, ptr %err.code.gep29, align 8
  %err.msg.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep30, align 8
  %err.file.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep31, align 8
  %err.line.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 3
  store i64 0, ptr %err.line.gep32, align 8
  %err.col.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 4
  store i64 0, ptr %err.col.gep33, align 8
  %err.ctx.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 5
  %var.load35 = load i64, ptr %var.k, align 8
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld38 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc37, i32 0, i32 0
  store i64 %var.load35, ptr %rec.fld38, align 8
  %rec.fld39 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc37, i32 0, i32 1
  store i64 0, ptr %rec.fld39, align 8
  %ctx.0.gep40 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc37, i32 0, i32 0
  %ctx.041 = load i64, ptr %ctx.0.gep40, align 8
  %ctx.1.gep42 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc37, i32 0, i32 1
  %ctx.143 = load i64, ptr %ctx.1.gep42, align 8
  %err.ctx0.gep44 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep34, i32 0, i32 0
  store i64 %ctx.041, ptr %err.ctx0.gep44, align 8
  %err.ctx1.gep45 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep34, i32 0, i32 1
  store i64 %ctx.143, ptr %err.ctx1.gep45, align 8
  %p.to.i6446 = ptrtoint ptr %err.alloc28 to i64
  %ram.pay47 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6446, 1
  br label %choice.exit15

choice.next25:                                    ; preds = %choice.next19
  %cmptmp50 = icmp slt i64 %var.load14, 128
  br i1 %cmptmp50, label %choice.case48, label %choice.next49

choice.case48:                                    ; preds = %choice.next25
  %b.load = load ptr, ptr %var.b, align 8
  %var.load51 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load51, 0
  %b.b.le255 = icmp sle i64 %var.load51, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.next49:                                    ; preds = %choice.next25
  %var.load65 = load ptr, ptr %var.sc, align 8
  %var.load66 = load ptr, ptr %var.b, align 8
  %var.load67 = load i64, ptr %var.k, align 8
  %var.load68 = load i64, ptr %var.c, align 8
  %call.res69 = call { i1, i64 } @"json::#scan_utf8_char"(ptr %var.load65, ptr %var.load66, i64 %var.load67, i64 %var.load68)
  br label %choice.exit15

b.byte_ok:                                        ; preds = %abort.dead52, %choice.case48
  %b.byte.i8 = trunc i64 %var.load51 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len53 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap54 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data55 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len53, %b.cap54
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case48
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap54, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len56

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len56
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
  %addtmp = add i64 %var.load63, 1
  %call.res64 = call { i1, i64 } @"json::#scan_string"(ptr %var.load61, ptr %var.load62, i64 %addtmp)
  br label %choice.exit15

b.new.buf.len56:                                  ; preds = %abort.dead57, %b.grow
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data55, i64 %b.len53, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len53
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %b.new.buf.len56
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
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.e, align 8
  %var.load12 = load i64, ptr %var.e, align 8
  %cmptmp13 = icmp eq i64 %var.load12, 117
  br i1 %cmptmp13, label %choice.then, label %choice.exit14

choice.case:                                      ; preds = %entry
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
  %idx.oob = icmp uge i64 %addtmp11, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %entry
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %addtmp11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %choice.exit
  %var.load15 = load ptr, ptr %var.sc, align 8
  %var.load16 = load ptr, ptr %var.b, align 8
  %var.load17 = load i64, ptr %var.k, align 8
  %call.res = call { i1, i64 } @"json::#parse_unicode"(ptr %var.load15, ptr %var.load16, i64 %var.load17)
  ret { i1, i64 } %call.res

choice.exit14:                                    ; preds = %ret.dead, %choice.exit
  %b.load = load ptr, ptr %var.b, align 8
  %var.load18 = load i64, ptr %var.e, align 8
  %val.match = icmp eq i64 %var.load18, 34
  %val.match22 = icmp eq i64 %var.load18, 92
  %case.or = or i1 %val.match, %val.match22
  %val.match23 = icmp eq i64 %var.load18, 47
  %case.or24 = or i1 %case.or, %val.match23
  br i1 %case.or24, label %choice.case20, label %choice.next21

ret.dead:                                         ; No predecessors!
  br label %choice.exit14

choice.exit19:                                    ; preds = %ret.dead44, %choice.case38, %choice.case35, %choice.case32, %choice.case29, %choice.case26, %choice.case20
  %choice.res45 = phi i64 [ %var.load25, %choice.case20 ], [ 8, %choice.case26 ], [ 12, %choice.case29 ], [ 10, %choice.case32 ], [ 13, %choice.case35 ], [ 9, %choice.case38 ], [ 0, %ret.dead44 ]
  %b.b.ge0 = icmp sge i64 %choice.res45, 0
  %b.b.le255 = icmp sle i64 %choice.res45, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.case20:                                    ; preds = %choice.exit14
  %var.load25 = load i64, ptr %var.e, align 8
  br label %choice.exit19

choice.next21:                                    ; preds = %choice.exit14
  %val.match28 = icmp eq i64 %var.load18, 98
  br i1 %val.match28, label %choice.case26, label %choice.next27

choice.case26:                                    ; preds = %choice.next21
  br label %choice.exit19

choice.next27:                                    ; preds = %choice.next21
  %val.match31 = icmp eq i64 %var.load18, 102
  br i1 %val.match31, label %choice.case29, label %choice.next30

choice.case29:                                    ; preds = %choice.next27
  br label %choice.exit19

choice.next30:                                    ; preds = %choice.next27
  %val.match34 = icmp eq i64 %var.load18, 110
  br i1 %val.match34, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next30
  br label %choice.exit19

choice.next33:                                    ; preds = %choice.next30
  %val.match37 = icmp eq i64 %var.load18, 114
  br i1 %val.match37, label %choice.case35, label %choice.next36

choice.case35:                                    ; preds = %choice.next33
  br label %choice.exit19

choice.next36:                                    ; preds = %choice.next33
  %val.match40 = icmp eq i64 %var.load18, 116
  br i1 %val.match40, label %choice.case38, label %choice.next39

choice.case38:                                    ; preds = %choice.next36
  br label %choice.exit19

choice.next39:                                    ; preds = %choice.next36
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
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
  %var.load41 = load i64, ptr %var.k, align 8
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load41, ptr %rec.fld, align 8
  %rec.fld43 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld43, align 8
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

ret.dead44:                                       ; No predecessors!
  br label %choice.exit19

b.byte_ok:                                        ; preds = %abort.dead46, %choice.exit19
  %b.byte.i8 = trunc i64 %choice.res45 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len47 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap48 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data49 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len47, %b.cap48
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit19
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap48, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len50

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len50
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data53 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len54 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data53, i64 %b.cur.len54
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len54, 1
  %b.nul = getelementptr i8, ptr %b.cur.data53, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  %var.load55 = load ptr, ptr %var.sc, align 8
  %var.load56 = load ptr, ptr %var.b, align 8
  %var.load57 = load i64, ptr %var.k, align 8
  %addtmp58 = add i64 %var.load57, 2
  %call.res59 = call { i1, i64 } @"json::#scan_string"(ptr %var.load55, ptr %var.load56, i64 %addtmp58)
  ret { i1, i64 } %call.res59

b.new.buf.len50:                                  ; preds = %abort.dead51, %b.grow
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data49, i64 %b.len47, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len47
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead51:                                     ; No predecessors!
  br label %b.new.buf.len50
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
  %idx.oob = icmp uge i64 %addtmp24, %s.read.len21
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.else:                                      ; preds = %and.93.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var.load94 = load i64, ptr %var.k, align 8
  %arena.cur95 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load94, ptr %rec.fld, align 8
  %rec.fld96 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld96, align 8
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

choice.exit:                                      ; preds = %choice.else, %idx_ok73
  %choice.res = phi { i1, i64 } [ %call.res93, %idx_ok73 ], [ %ram.pay, %choice.else ]
  ret { i1, i64 } %choice.res

idx_ok:                                           ; preds = %abort.dead, %choice.then
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
  %idx.oob36 = icmp uge i64 %addtmp35, %s.read.len31
  br i1 %idx.oob36, label %idx_oob38, label %idx_ok37

idx_oob:                                          ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

idx_ok37:                                         ; preds = %abort.dead39, %idx_ok
  %s.byte.gep40 = getelementptr i8, ptr %s.read.data33, i64 %addtmp35
  %s.byte41 = load i8, ptr %s.byte.gep40, align 1
  %s.byte.val42 = zext i8 %s.byte41 to i64
  %call.res43 = call i64 @"json::#hexval"(i64 %s.byte.val42)
  store i64 %call.res43, ptr %var.d3, align 8
  %var.load44 = load ptr, ptr %var.sc, align 8
  %fld.gep45 = getelementptr inbounds { ptr, i64 }, ptr %var.load44, i32 0, i32 0
  %fld.load46 = load ptr, ptr %fld.gep45, align 8
  %s.read.len47 = getelementptr inbounds { i64, ptr }, ptr %fld.load46, i32 0, i32 0
  %s.read.len48 = load i64, ptr %s.read.len47, align 8
  %s.read.len49 = and i64 %s.read.len48, 281474976710655
  %s.read.data50 = getelementptr inbounds { i64, ptr }, ptr %fld.load46, i32 0, i32 1
  %s.read.data51 = load ptr, ptr %s.read.data50, align 8
  %var.load52 = load i64, ptr %var.k, align 8
  %addtmp53 = add i64 %var.load52, 4
  %idx.oob54 = icmp uge i64 %addtmp53, %s.read.len49
  br i1 %idx.oob54, label %idx_oob56, label %idx_ok55

idx_oob38:                                        ; preds = %idx_ok
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %idx_ok37

idx_ok55:                                         ; preds = %abort.dead57, %idx_ok37
  %s.byte.gep58 = getelementptr i8, ptr %s.read.data51, i64 %addtmp53
  %s.byte59 = load i8, ptr %s.byte.gep58, align 1
  %s.byte.val60 = zext i8 %s.byte59 to i64
  %call.res61 = call i64 @"json::#hexval"(i64 %s.byte.val60)
  store i64 %call.res61, ptr %var.d4, align 8
  %var.load62 = load ptr, ptr %var.sc, align 8
  %fld.gep63 = getelementptr inbounds { ptr, i64 }, ptr %var.load62, i32 0, i32 0
  %fld.load64 = load ptr, ptr %fld.gep63, align 8
  %s.read.len65 = getelementptr inbounds { i64, ptr }, ptr %fld.load64, i32 0, i32 0
  %s.read.len66 = load i64, ptr %s.read.len65, align 8
  %s.read.len67 = and i64 %s.read.len66, 281474976710655
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %fld.load64, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %var.load70 = load i64, ptr %var.k, align 8
  %addtmp71 = add i64 %var.load70, 5
  %idx.oob72 = icmp uge i64 %addtmp71, %s.read.len67
  br i1 %idx.oob72, label %idx_oob74, label %idx_ok73

idx_oob56:                                        ; preds = %idx_ok37
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %idx_ok55

idx_ok73:                                         ; preds = %abort.dead75, %idx_ok55
  %s.byte.gep76 = getelementptr i8, ptr %s.read.data69, i64 %addtmp71
  %s.byte77 = load i8, ptr %s.byte.gep76, align 1
  %s.byte.val78 = zext i8 %s.byte77 to i64
  %call.res79 = call i64 @"json::#hexval"(i64 %s.byte.val78)
  store i64 %call.res79, ptr %var.d5, align 8
  %var.load80 = load i64, ptr %var.d2, align 8
  %multmp = mul i64 %var.load80, 4096
  %var.load81 = load i64, ptr %var.d3, align 8
  %multmp82 = mul i64 %var.load81, 256
  %addtmp83 = add i64 %multmp, %multmp82
  %var.load84 = load i64, ptr %var.d4, align 8
  %multmp85 = mul i64 %var.load84, 16
  %addtmp86 = add i64 %addtmp83, %multmp85
  %var.load87 = load i64, ptr %var.d5, align 8
  %addtmp88 = add i64 %addtmp86, %var.load87
  store i64 %addtmp88, ptr %var.cp, align 8
  %var.load89 = load ptr, ptr %var.sc, align 8
  %var.load90 = load ptr, ptr %var.b, align 8
  %var.load91 = load i64, ptr %var.k, align 8
  %var.load92 = load i64, ptr %var.cp, align 8
  %call.res93 = call { i1, i64 } @"json::#parse_unicode_cp"(ptr %var.load89, ptr %var.load90, i64 %var.load91, i64 %var.load92)
  br label %choice.exit

idx_oob74:                                        ; preds = %idx_ok55
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead75:                                     ; No predecessors!
  br label %idx_ok73
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.95.then, label %and.95.else

and.95.then:                                      ; preds = %entry
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
  %idx.oob = icmp uge i64 %addtmp11, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.95.else:                                      ; preds = %entry
  br label %and.95.exit

and.95.exit:                                      ; preds = %and.95.else, %idx_ok
  %and.95.phi = phi i1 [ %cmptmp12, %idx_ok ], [ %cmptmp, %and.95.else ]
  br i1 %and.95.phi, label %and.96.then, label %and.96.else

idx_ok:                                           ; preds = %abort.dead, %and.95.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %addtmp11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp12 = icmp eq i64 %s.byte.val, 92
  br label %and.95.exit

idx_oob:                                          ; preds = %and.95.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.96.then:                                      ; preds = %and.95.exit
  %var.load13 = load ptr, ptr %var.sc, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64 }, ptr %var.load13, i32 0, i32 0
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %s.read.len16 = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %s.read.len17 = load i64, ptr %s.read.len16, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %s.read.data19 = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data19, align 8
  %var.load21 = load i64, ptr %var.k, align 8
  %addtmp22 = add i64 %var.load21, 7
  %idx.oob23 = icmp uge i64 %addtmp22, %s.read.len18
  br i1 %idx.oob23, label %idx_oob25, label %idx_ok24

and.96.else:                                      ; preds = %and.95.exit
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %idx_ok24
  %and.96.phi = phi i1 [ %cmptmp30, %idx_ok24 ], [ %and.95.phi, %and.96.else ]
  br i1 %and.96.phi, label %and.97.then, label %and.97.else

idx_ok24:                                         ; preds = %abort.dead26, %and.96.then
  %s.byte.gep27 = getelementptr i8, ptr %s.read.data20, i64 %addtmp22
  %s.byte28 = load i8, ptr %s.byte.gep27, align 1
  %s.byte.val29 = zext i8 %s.byte28 to i64
  %cmptmp30 = icmp eq i64 %s.byte.val29, 117
  br label %and.96.exit

idx_oob25:                                        ; preds = %and.96.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %idx_ok24

and.97.then:                                      ; preds = %and.96.exit
  %var.load31 = load ptr, ptr %var.sc, align 8
  %var.load32 = load i64, ptr %var.k, align 8
  %addtmp33 = add i64 %var.load32, 8
  %call.res = call i1 @"json::#is_hex_at"(ptr %var.load31, i64 %addtmp33)
  br label %and.97.exit

and.97.else:                                      ; preds = %and.96.exit
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %and.97.then
  %and.97.phi = phi i1 [ %call.res, %and.97.then ], [ %and.96.phi, %and.97.else ]
  br i1 %and.97.phi, label %and.98.then, label %and.98.else

and.98.then:                                      ; preds = %and.97.exit
  %var.load34 = load ptr, ptr %var.sc, align 8
  %var.load35 = load i64, ptr %var.k, align 8
  %addtmp36 = add i64 %var.load35, 9
  %call.res37 = call i1 @"json::#is_hex_at"(ptr %var.load34, i64 %addtmp36)
  br label %and.98.exit

and.98.else:                                      ; preds = %and.97.exit
  br label %and.98.exit

and.98.exit:                                      ; preds = %and.98.else, %and.98.then
  %and.98.phi = phi i1 [ %call.res37, %and.98.then ], [ %and.97.phi, %and.98.else ]
  br i1 %and.98.phi, label %and.99.then, label %and.99.else

and.99.then:                                      ; preds = %and.98.exit
  %var.load38 = load ptr, ptr %var.sc, align 8
  %var.load39 = load i64, ptr %var.k, align 8
  %addtmp40 = add i64 %var.load39, 10
  %call.res41 = call i1 @"json::#is_hex_at"(ptr %var.load38, i64 %addtmp40)
  br label %and.99.exit

and.99.else:                                      ; preds = %and.98.exit
  br label %and.99.exit

and.99.exit:                                      ; preds = %and.99.else, %and.99.then
  %and.99.phi = phi i1 [ %call.res41, %and.99.then ], [ %and.98.phi, %and.99.else ]
  br i1 %and.99.phi, label %and.100.then, label %and.100.else

and.100.then:                                     ; preds = %and.99.exit
  %var.load42 = load ptr, ptr %var.sc, align 8
  %var.load43 = load i64, ptr %var.k, align 8
  %addtmp44 = add i64 %var.load43, 11
  %call.res45 = call i1 @"json::#is_hex_at"(ptr %var.load42, i64 %addtmp44)
  br label %and.100.exit

and.100.else:                                     ; preds = %and.99.exit
  br label %and.100.exit

and.100.exit:                                     ; preds = %and.100.else, %and.100.then
  %and.100.phi = phi i1 [ %call.res45, %and.100.then ], [ %and.99.phi, %and.100.else ]
  store i1 %and.100.phi, ptr %var.has_second, align 1
  %var.load46 = load i1, ptr %var.has_second, align 1
  br i1 %var.load46, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.100.exit
  %var.load47 = load ptr, ptr %var.sc, align 8
  %fld.gep48 = getelementptr inbounds { ptr, i64 }, ptr %var.load47, i32 0, i32 0
  %fld.load49 = load ptr, ptr %fld.gep48, align 8
  %s.read.len50 = getelementptr inbounds { i64, ptr }, ptr %fld.load49, i32 0, i32 0
  %s.read.len51 = load i64, ptr %s.read.len50, align 8
  %s.read.len52 = and i64 %s.read.len51, 281474976710655
  %s.read.data53 = getelementptr inbounds { i64, ptr }, ptr %fld.load49, i32 0, i32 1
  %s.read.data54 = load ptr, ptr %s.read.data53, align 8
  %var.load55 = load i64, ptr %var.k, align 8
  %addtmp56 = add i64 %var.load55, 8
  %idx.oob57 = icmp uge i64 %addtmp56, %s.read.len52
  br i1 %idx.oob57, label %idx_oob59, label %idx_ok58

choice.else:                                      ; preds = %and.100.exit
  %arena.cur148 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 56)
  %err.code.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 0
  store i64 400, ptr %err.code.gep150, align 8
  %err.msg.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep151, align 8
  %err.file.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep152, align 8
  %err.line.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 3
  store i64 0, ptr %err.line.gep153, align 8
  %err.col.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 4
  store i64 0, ptr %err.col.gep154, align 8
  %err.ctx.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 5
  %var.load156 = load i64, ptr %var.k, align 8
  %arena.cur157 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld159 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc158, i32 0, i32 0
  store i64 %var.load156, ptr %rec.fld159, align 8
  %rec.fld160 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc158, i32 0, i32 1
  store i64 0, ptr %rec.fld160, align 8
  %ctx.0.gep161 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc158, i32 0, i32 0
  %ctx.0162 = load i64, ptr %ctx.0.gep161, align 8
  %ctx.1.gep163 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc158, i32 0, i32 1
  %ctx.1164 = load i64, ptr %ctx.1.gep163, align 8
  %err.ctx0.gep165 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep155, i32 0, i32 0
  store i64 %ctx.0162, ptr %err.ctx0.gep165, align 8
  %err.ctx1.gep166 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep155, i32 0, i32 1
  store i64 %ctx.1164, ptr %err.ctx1.gep166, align 8
  %p.to.i64167 = ptrtoint ptr %err.alloc149 to i64
  %ram.pay168 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64167, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit129
  %choice.res169 = phi { i1, i64 } [ %choice.res, %choice.exit129 ], [ %ram.pay168, %choice.else ]
  ret { i1, i64 } %choice.res169

idx_ok58:                                         ; preds = %abort.dead60, %choice.then
  %s.byte.gep61 = getelementptr i8, ptr %s.read.data54, i64 %addtmp56
  %s.byte62 = load i8, ptr %s.byte.gep61, align 1
  %s.byte.val63 = zext i8 %s.byte62 to i64
  %call.res64 = call i64 @"json::#hexval"(i64 %s.byte.val63)
  store i64 %call.res64, ptr %var.l2, align 8
  %var.load65 = load ptr, ptr %var.sc, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %fld.load67 = load ptr, ptr %fld.gep66, align 8
  %s.read.len68 = getelementptr inbounds { i64, ptr }, ptr %fld.load67, i32 0, i32 0
  %s.read.len69 = load i64, ptr %s.read.len68, align 8
  %s.read.len70 = and i64 %s.read.len69, 281474976710655
  %s.read.data71 = getelementptr inbounds { i64, ptr }, ptr %fld.load67, i32 0, i32 1
  %s.read.data72 = load ptr, ptr %s.read.data71, align 8
  %var.load73 = load i64, ptr %var.k, align 8
  %addtmp74 = add i64 %var.load73, 9
  %idx.oob75 = icmp uge i64 %addtmp74, %s.read.len70
  br i1 %idx.oob75, label %idx_oob77, label %idx_ok76

idx_oob59:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %idx_ok58

idx_ok76:                                         ; preds = %abort.dead78, %idx_ok58
  %s.byte.gep79 = getelementptr i8, ptr %s.read.data72, i64 %addtmp74
  %s.byte80 = load i8, ptr %s.byte.gep79, align 1
  %s.byte.val81 = zext i8 %s.byte80 to i64
  %call.res82 = call i64 @"json::#hexval"(i64 %s.byte.val81)
  store i64 %call.res82, ptr %var.l3, align 8
  %var.load83 = load ptr, ptr %var.sc, align 8
  %fld.gep84 = getelementptr inbounds { ptr, i64 }, ptr %var.load83, i32 0, i32 0
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %s.read.len86 = getelementptr inbounds { i64, ptr }, ptr %fld.load85, i32 0, i32 0
  %s.read.len87 = load i64, ptr %s.read.len86, align 8
  %s.read.len88 = and i64 %s.read.len87, 281474976710655
  %s.read.data89 = getelementptr inbounds { i64, ptr }, ptr %fld.load85, i32 0, i32 1
  %s.read.data90 = load ptr, ptr %s.read.data89, align 8
  %var.load91 = load i64, ptr %var.k, align 8
  %addtmp92 = add i64 %var.load91, 10
  %idx.oob93 = icmp uge i64 %addtmp92, %s.read.len88
  br i1 %idx.oob93, label %idx_oob95, label %idx_ok94

idx_oob77:                                        ; preds = %idx_ok58
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %idx_ok76

idx_ok94:                                         ; preds = %abort.dead96, %idx_ok76
  %s.byte.gep97 = getelementptr i8, ptr %s.read.data90, i64 %addtmp92
  %s.byte98 = load i8, ptr %s.byte.gep97, align 1
  %s.byte.val99 = zext i8 %s.byte98 to i64
  %call.res100 = call i64 @"json::#hexval"(i64 %s.byte.val99)
  store i64 %call.res100, ptr %var.l4, align 8
  %var.load101 = load ptr, ptr %var.sc, align 8
  %fld.gep102 = getelementptr inbounds { ptr, i64 }, ptr %var.load101, i32 0, i32 0
  %fld.load103 = load ptr, ptr %fld.gep102, align 8
  %s.read.len104 = getelementptr inbounds { i64, ptr }, ptr %fld.load103, i32 0, i32 0
  %s.read.len105 = load i64, ptr %s.read.len104, align 8
  %s.read.len106 = and i64 %s.read.len105, 281474976710655
  %s.read.data107 = getelementptr inbounds { i64, ptr }, ptr %fld.load103, i32 0, i32 1
  %s.read.data108 = load ptr, ptr %s.read.data107, align 8
  %var.load109 = load i64, ptr %var.k, align 8
  %addtmp110 = add i64 %var.load109, 11
  %idx.oob111 = icmp uge i64 %addtmp110, %s.read.len106
  br i1 %idx.oob111, label %idx_oob113, label %idx_ok112

idx_oob95:                                        ; preds = %idx_ok76
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %idx_ok94

idx_ok112:                                        ; preds = %abort.dead114, %idx_ok94
  %s.byte.gep115 = getelementptr i8, ptr %s.read.data108, i64 %addtmp110
  %s.byte116 = load i8, ptr %s.byte.gep115, align 1
  %s.byte.val117 = zext i8 %s.byte116 to i64
  %call.res118 = call i64 @"json::#hexval"(i64 %s.byte.val117)
  store i64 %call.res118, ptr %var.l5, align 8
  %var.load119 = load i64, ptr %var.l2, align 8
  %multmp = mul i64 %var.load119, 4096
  %var.load120 = load i64, ptr %var.l3, align 8
  %multmp121 = mul i64 %var.load120, 256
  %addtmp122 = add i64 %multmp, %multmp121
  %var.load123 = load i64, ptr %var.l4, align 8
  %multmp124 = mul i64 %var.load123, 16
  %addtmp125 = add i64 %addtmp122, %multmp124
  %var.load126 = load i64, ptr %var.l5, align 8
  %addtmp127 = add i64 %addtmp125, %var.load126
  store i64 %addtmp127, ptr %var.locp, align 8
  %var.load128 = load i64, ptr %var.locp, align 8
  %cmptmp130 = icmp sge i64 %var.load128, 56320
  br i1 %cmptmp130, label %and.101.then, label %and.101.else

idx_oob113:                                       ; preds = %idx_ok94
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead114:                                    ; No predecessors!
  br label %idx_ok112

choice.exit129:                                   ; preds = %choice.next, %choice.case
  %choice.res = phi { i1, i64 } [ %call.res144, %choice.case ], [ %ram.pay, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %and.101.exit
  %var.load132 = load i64, ptr %var.cp, align 8
  %subtmp = sub i64 %var.load132, 55296
  %multmp133 = mul i64 %subtmp, 1024
  %addtmp134 = add i64 65536, %multmp133
  %var.load135 = load i64, ptr %var.locp, align 8
  %subtmp136 = sub i64 %var.load135, 56320
  %addtmp137 = add i64 %addtmp134, %subtmp136
  store i64 %addtmp137, ptr %var.full_cp, align 8
  %var.load138 = load ptr, ptr %var.b, align 8
  %var.load139 = load i64, ptr %var.full_cp, align 8
  %coerce.trunc = trunc i64 %var.load139 to i32
  call void @"utf::append_rune"(ptr %var.load138, i32 %coerce.trunc)
  %var.load140 = load ptr, ptr %var.sc, align 8
  %var.load141 = load ptr, ptr %var.b, align 8
  %var.load142 = load i64, ptr %var.k, align 8
  %addtmp143 = add i64 %var.load142, 12
  %call.res144 = call { i1, i64 } @"json::#scan_string"(ptr %var.load140, ptr %var.load141, i64 %addtmp143)
  br label %choice.exit129

choice.next:                                      ; preds = %and.101.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
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
  %var.load145 = load i64, ptr %var.k, align 8
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load145, ptr %rec.fld, align 8
  %rec.fld147 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld147, align 8
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
  br label %choice.exit129

and.101.then:                                     ; preds = %idx_ok112
  %cmptmp131 = icmp sle i64 %var.load128, 57343
  br label %and.101.exit

and.101.else:                                     ; preds = %idx_ok112
  br label %and.101.exit

and.101.exit:                                     ; preds = %and.101.else, %and.101.then
  %and.101.phi = phi i1 [ %cmptmp131, %and.101.then ], [ %cmptmp130, %and.101.else ]
  br i1 %and.101.phi, label %choice.case, label %choice.next
}

declare void @"utf::append_rune"(ptr, i32) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

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
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.103.then, label %and.103.else

and.103.then:                                     ; preds = %entry
  %var.load4 = load ptr, ptr %var.sc, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load10, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.103.else:                                     ; preds = %entry
  br label %and.103.exit

and.103.exit:                                     ; preds = %and.103.else, %idx_ok
  %and.103.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp, %and.103.else ]
  ret i1 %and.103.phi

idx_ok:                                           ; preds = %abort.dead, %and.103.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_digit"(i64 %s.byte.val)
  br label %and.103.exit

idx_oob:                                          ; preds = %and.103.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok
}

declare i1 @"str::is_digit"(i64) #0

; Function Attrs: inlinehint
define internal i64 @"json::#scan_plain_ascii_end"(ptr %0, i64 %1) #7 {
entry:
  %var.c = alloca i64, align 8
  %var._48 = alloca i64, align 8
  %var._i47 = alloca i64, align 8
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
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %"var.k'", align 8
  %addtmp = add i64 %var.load4, 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %addtmp, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load6 = load ptr, ptr %var.src, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.ptr7 = load ptr, ptr %s.ptr, align 8
  store ptr %s.ptr7, ptr %var.base, align 8
  store i64 0, ptr %loop.idx.104, align 8
  br label %loop.header.104

choice.exit:                                      ; preds = %loop.exit.104, %entry
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

loop.latch.104:                                   ; preds = %choice.exit39
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
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.w, align 8
  %var.load17 = load i64, ptr %var.w, align 8
  %var.load18 = load i64, ptr %var.w, align 8
  %subtmp = sub i64 %var.load18, 2314885530818453536
  %bortmp = or i64 %var.load17, %subtmp
  store i64 %bortmp, ptr %var.ctrl_or_hi, align 8
  %var.load19 = load i64, ptr %var.w, align 8
  %bxortmp = xor i64 %var.load19, 2459565876494606882
  store i64 %bxortmp, ptr %var.x1, align 8
  %var.load20 = load i64, ptr %var.w, align 8
  %bxortmp21 = xor i64 %var.load20, 6655295901103053916
  store i64 %bxortmp21, ptr %var.x2, align 8
  %var.load22 = load i64, ptr %var.x1, align 8
  %subtmp23 = sub i64 %var.load22, 72340172838076673
  %var.load24 = load i64, ptr %var.x1, align 8
  %bitnottmp = xor i64 %var.load24, -1
  %bandtmp = and i64 %subtmp23, %bitnottmp
  store i64 %bandtmp, ptr %var.m1, align 8
  %var.load25 = load i64, ptr %var.x2, align 8
  %subtmp26 = sub i64 %var.load25, 72340172838076673
  %var.load27 = load i64, ptr %var.x2, align 8
  %bitnottmp28 = xor i64 %var.load27, -1
  %bandtmp29 = and i64 %subtmp26, %bitnottmp28
  store i64 %bandtmp29, ptr %var.m2, align 8
  %var.load30 = load i64, ptr %var.ctrl_or_hi, align 8
  %var.load31 = load i64, ptr %var.m1, align 8
  %bortmp32 = or i64 %var.load30, %var.load31
  %var.load33 = load i64, ptr %var.m2, align 8
  %bortmp34 = or i64 %bortmp32, %var.load33
  %bandtmp35 = and i64 %bortmp34, -9187201950435737472
  store i64 %bandtmp35, ptr %var.bad, align 8
  %var.load36 = load i64, ptr %var.bad, align 8
  %cmptmp37 = icmp ne i64 %var.load36, 0
  br i1 %cmptmp37, label %choice.then38, label %choice.exit39

choice.then38:                                    ; preds = %choice.exit13
  %var.load40 = load i64, ptr %"var.k'", align 8
  %var.load41 = load i64, ptr %var.bad, align 8
  %cttz = call i64 @llvm.cttz.i64(i64 %var.load41, i1 false)
  %shrtmp = lshr i64 %cttz, 3
  %addtmp42 = add i64 %var.load40, %shrtmp
  ret i64 %addtmp42

choice.exit39:                                    ; preds = %choice.exit13
  %var.load43 = load i64, ptr %"var.k'", align 8
  %addtmp44 = add i64 %var.load43, 8
  store i64 %addtmp44, ptr %"var.k'", align 8
  br label %loop.latch.104

ret.dead:                                         ; No predecessors!
  br label %loop.exit.104

loop.header.105:                                  ; preds = %loop.latch.105, %choice.exit
  %counter.load45 = load i64, ptr %loop.idx.105, align 8
  br label %loop.body.105

loop.body.105:                                    ; preds = %loop.header.105
  %loop.rel.i46 = sub i64 %counter.load45, 0
  store i64 1, ptr %loop.step.105, align 8
  store i64 %loop.rel.i46, ptr %var._i47, align 8
  store i64 %counter.load45, ptr %var._48, align 8
  %var.load49 = load i64, ptr %"var.k'", align 8
  %var.load50 = load i64, ptr %var.n, align 8
  %cmptmp51 = icmp sge i64 %var.load49, %var.load50
  br i1 %cmptmp51, label %choice.then52, label %choice.exit53

loop.exit.nat.105:                                ; No predecessors!
  br label %loop.exit.105

loop.latch.105:                                   ; preds = %choice.exit70
  %step.val73 = load i64, ptr %loop.step.105, align 8
  %loop.next74 = add i64 %counter.load45, %step.val73
  store i64 %loop.next74, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.exit.105:                                    ; preds = %choice.else, %choice.then52, %loop.exit.nat.105
  %var.load75 = load i64, ptr %"var.k'", align 8
  ret i64 %var.load75

choice.then52:                                    ; preds = %loop.body.105
  br label %loop.exit.105

choice.exit53:                                    ; preds = %loop.body.105
  %var.load54 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %s.read.len55 = load i64, ptr %s.read.len, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %s.read.data57 = load ptr, ptr %s.read.data, align 8
  %var.load58 = load i64, ptr %"var.k'", align 8
  %idx.oob = icmp uge i64 %var.load58, %s.read.len56
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %choice.exit53
  %s.byte.gep = getelementptr i8, ptr %s.read.data57, i64 %var.load58
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load59 = load i64, ptr %var.c, align 8
  %cmptmp61 = icmp sge i64 %var.load59, 32
  br i1 %cmptmp61, label %and.106.then, label %and.106.else

idx_oob:                                          ; preds = %choice.exit53
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit60:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %and.107.then, label %and.107.else

choice.case:                                      ; preds = %and.106.exit
  br label %choice.exit60

choice.next:                                      ; preds = %and.106.exit
  br label %choice.exit60

and.106.then:                                     ; preds = %idx_ok
  %cmptmp62 = icmp sle i64 %var.load59, 127
  br label %and.106.exit

and.106.else:                                     ; preds = %idx_ok
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %and.106.then
  %and.106.phi = phi i1 [ %cmptmp62, %and.106.then ], [ %cmptmp61, %and.106.else ]
  br i1 %and.106.phi, label %choice.case, label %choice.next

and.107.then:                                     ; preds = %choice.exit60
  %var.load63 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load63, 34
  %val.match67 = icmp eq i64 %var.load63, 92
  %case.or = or i1 %val.match, %val.match67
  br i1 %case.or, label %choice.case65, label %choice.next66

and.107.else:                                     ; preds = %choice.exit60
  br label %and.107.exit

and.107.exit:                                     ; preds = %and.107.else, %choice.exit64
  %and.107.phi = phi i1 [ %nottmp, %choice.exit64 ], [ %choice.res, %and.107.else ]
  br i1 %and.107.phi, label %choice.then69, label %choice.else

choice.exit64:                                    ; preds = %choice.next66, %choice.case65
  %choice.res68 = phi i1 [ true, %choice.case65 ], [ false, %choice.next66 ]
  %nottmp = xor i1 %choice.res68, true
  br label %and.107.exit

choice.case65:                                    ; preds = %and.107.then
  br label %choice.exit64

choice.next66:                                    ; preds = %and.107.then
  br label %choice.exit64

choice.then69:                                    ; preds = %and.107.exit
  %var.load71 = load i64, ptr %"var.k'", align 8
  %addtmp72 = add i64 %var.load71, 1
  store i64 %addtmp72, ptr %"var.k'", align 8
  br label %choice.exit70

choice.else:                                      ; preds = %and.107.exit
  br label %loop.exit.105

choice.exit70:                                    ; preds = %choice.then69
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

b.buf.len2:                                       ; preds = %abort.dead, %entry
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load40 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load40, i32 0, i32 0
  %b.freeze.len41 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load40, i32 0, i32 1
  %b.freeze.data42 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data42, i64 %b.freeze.len41, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len41
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then34
  %b.freeze.data44 = phi ptr [ %b.freeze.data42, %choice.then34 ], [ %b.freeze.data42, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

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
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %and.108.then, label %and.108.else

and.108.then:                                     ; preds = %entry
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.plain_end, align 8
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.108.else:                                     ; preds = %entry
  br label %and.108.exit

and.108.exit:                                     ; preds = %and.108.else, %idx_ok
  %and.108.phi = phi i1 [ %cmptmp18, %idx_ok ], [ %cmptmp, %and.108.else ]
  br i1 %and.108.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.108.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp18 = icmp eq i64 %s.byte.val, 34
  br label %and.108.exit

idx_oob:                                          ; preds = %and.108.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.108.exit
  %var.load19 = load ptr, ptr %var.sc, align 8
  %var.load20 = load i64, ptr %var.plain_end, align 8
  %addtmp21 = add i64 %var.load20, 1
  %fld.gep22 = getelementptr inbounds { ptr, i64 }, ptr %var.load19, i32 0, i32 1
  store i64 %addtmp21, ptr %fld.gep22, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load23 = load ptr, ptr %var.sc, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64 }, ptr %var.load23, i32 0, i32 0
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %s.read.len26 = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len26, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  %var.load31 = load i64, ptr %var.start, align 8
  %var.load32 = load i64, ptr %var.plain_end, align 8
  %start.is_neg = icmp slt i64 %var.load31, 0
  %rel.start = add i64 %s.read.len28, %var.load31
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load31
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len28
  %final.start = select i1 %start.gt.len, i64 %s.read.len28, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load32, 0
  %rel.end = add i64 %s.read.len28, %var.load32
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load32
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len28
  %final.end = select i1 %end.gt.len, i64 %s.read.len28, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data30, i64 %final.start
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %and.108.exit
  %var.load34 = load ptr, ptr %var.sc, align 8
  %var.load35 = load i64, ptr %var.start, align 8
  %var.load36 = load i64, ptr %var.plain_end, align 8
  %call.res37 = call { i1, i64 } @"json::#parse_string_escaped"(ptr %var.load34, i64 %var.load35, i64 %var.load36)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %call.res37, %choice.else ]
  ret { i1, i64 } %choice.res
}

define internal { i1, i64 } @"json::#parse_array"(ptr %0) #0 {
entry:
  %var.elems57 = alloca ptr, align 8
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
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load23 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load23, 93
  br i1 %val.match, label %choice.case25, label %choice.next26

choice.case:                                      ; preds = %entry
  %var.load16 = load ptr, ptr %var.sc, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %var.load22 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load22, %s.read.len20
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %entry
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data21, i64 %var.load22
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit24:                                    ; preds = %a.after63, %a.view.off46
  %choice.res73 = phi { i1, i64 } [ %ram.pay, %a.view.off46 ], [ %call.res72, %a.after63 ]
  ret { i1, i64 } %choice.res73

choice.case25:                                    ; preds = %choice.exit
  %var.load27 = load ptr, ptr %var.sc, align 8
  %var.load28 = load ptr, ptr %var.sc, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64 }, ptr %var.load28, i32 0, i32 1
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %addtmp31 = add i64 %fld.load30, 1
  %fld.gep32 = getelementptr inbounds { ptr, i64 }, ptr %var.load27, i32 0, i32 1
  store i64 %addtmp31, ptr %fld.gep32, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.elems, align 8
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load35 = load ptr, ptr %var.elems, align 8
  %a.load = load ptr, ptr %var.elems, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next26:                                    ; preds = %choice.exit
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  %a.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 0
  store i64 0, ptr %a.len.gep54, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  store ptr %a.new51, ptr %var.elems57, align 8
  %var.load58 = load ptr, ptr %var.sc, align 8
  %var.load59 = load ptr, ptr %var.elems57, align 8
  %a.load60 = load ptr, ptr %var.elems57, align 8
  %a.null61 = icmp eq ptr %a.load60, null
  br i1 %a.null61, label %a.create62, label %a.after63

a.create:                                         ; preds = %choice.case25
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 24)
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 128)
  %a.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 0
  store i64 0, ptr %a.len.gep40, align 8
  %a.data.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 1
  store ptr %a.buf39, ptr %a.data.gep41, align 8
  %a.cap.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 2
  store i64 16, ptr %a.cap.gep42, align 8
  store ptr %a.create37, ptr %var.elems, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case25
  %a.load2 = load ptr, ptr %var.elems, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.view.len43 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len43, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len43
  %final.start = select i1 %start.gt.len, i64 %a.view.len43, i64 %c.start.0
  %rel.end = add i64 %a.view.len43, 0
  %norm.end = select i1 false, i64 %rel.end, i64 0
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len43
  %final.end = select i1 %end.gt.len, i64 %a.view.len43, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.view.data44 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off45, 0
  %ovf = extractvalue { i64, i1 } %a.view.off45, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off46

a.view.off46:                                     ; preds = %abort.dead47, %a.after
  %a.view.data48 = getelementptr i8, ptr %a.view.data44, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data48, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit24

str_overflow_abort:                               ; preds = %a.after
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %a.view.off46

a.create62:                                       ; preds = %choice.next26
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 24)
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 128)
  %a.len.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 0
  store i64 0, ptr %a.len.gep68, align 8
  %a.data.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 1
  store ptr %a.buf67, ptr %a.data.gep69, align 8
  %a.cap.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 2
  store i64 16, ptr %a.cap.gep70, align 8
  store ptr %a.create65, ptr %var.elems57, align 8
  br label %a.after63

a.after63:                                        ; preds = %a.create62, %choice.next26
  %a.load271 = load ptr, ptr %var.elems57, align 8
  %call.res72 = call { i1, i64 } @"json::#parse_array_loop"(ptr %var.load58, ptr %a.load271)
  br label %choice.exit24
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
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load18 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load18, 34
  br i1 %val.match, label %choice.case20, label %choice.next21

choice.case:                                      ; preds = %entry
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %entry
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit19:                                    ; preds = %choice.next45, %choice.case44, %choice.case39, %choice.case34, %choice.case29, %choice.case24, %choice.case20
  %choice.res51 = phi { i1, i64 } [ %call.res23, %choice.case20 ], [ %call.res28, %choice.case24 ], [ %call.res33, %choice.case29 ], [ %call.res38, %choice.case34 ], [ %call.res43, %choice.case39 ], [ %call.res48, %choice.case44 ], [ %call.res50, %choice.next45 ]
  ret { i1, i64 } %choice.res51

choice.case20:                                    ; preds = %choice.exit
  %var.load22 = load ptr, ptr %var.sc, align 8
  %call.res23 = call { i1, i64 } @"json::#parse_string"(ptr %var.load22)
  br label %choice.exit19

choice.next21:                                    ; preds = %choice.exit
  %val.match26 = icmp eq i64 %var.load18, 123
  br i1 %val.match26, label %choice.case24, label %choice.next25

choice.case24:                                    ; preds = %choice.next21
  %var.load27 = load ptr, ptr %var.sc, align 8
  %call.res28 = call { i1, i64 } @"json::#parse_object"(ptr %var.load27)
  br label %choice.exit19

choice.next25:                                    ; preds = %choice.next21
  %val.match31 = icmp eq i64 %var.load18, 91
  br i1 %val.match31, label %choice.case29, label %choice.next30

choice.case29:                                    ; preds = %choice.next25
  %var.load32 = load ptr, ptr %var.sc, align 8
  %call.res33 = call { i1, i64 } @"json::#parse_array"(ptr %var.load32)
  br label %choice.exit19

choice.next30:                                    ; preds = %choice.next25
  %val.match36 = icmp eq i64 %var.load18, 116
  br i1 %val.match36, label %choice.case34, label %choice.next35

choice.case34:                                    ; preds = %choice.next30
  %var.load37 = load ptr, ptr %var.sc, align 8
  %call.res38 = call { i1, i64 } @"json::#parse_lit"(ptr %var.load37, i1 true, i64 4)
  br label %choice.exit19

choice.next35:                                    ; preds = %choice.next30
  %val.match41 = icmp eq i64 %var.load18, 102
  br i1 %val.match41, label %choice.case39, label %choice.next40

choice.case39:                                    ; preds = %choice.next35
  %var.load42 = load ptr, ptr %var.sc, align 8
  %call.res43 = call { i1, i64 } @"json::#parse_lit"(ptr %var.load42, i1 false, i64 5)
  br label %choice.exit19

choice.next40:                                    ; preds = %choice.next35
  %val.match46 = icmp eq i64 %var.load18, 110
  br i1 %val.match46, label %choice.case44, label %choice.next45

choice.case44:                                    ; preds = %choice.next40
  %var.load47 = load ptr, ptr %var.sc, align 8
  %call.res48 = call { i1, i64 } @"json::#parse_null"(ptr %var.load47)
  br label %choice.exit19

choice.next45:                                    ; preds = %choice.next40
  %var.load49 = load ptr, ptr %var.sc, align 8
  %call.res50 = call { i1, i64 } @"json::#parse_number"(ptr %var.load49)
  br label %choice.exit19
}

define internal { i1, i64 } @"json::#parse_object"(ptr %0) #0 {
entry:
  %var.entries57 = alloca ptr, align 8
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
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load23 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load23, 125
  br i1 %val.match, label %choice.case25, label %choice.next26

choice.case:                                      ; preds = %entry
  %var.load16 = load ptr, ptr %var.sc, align 8
  %fld.gep17 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 0
  %fld.load18 = load ptr, ptr %fld.gep17, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load18, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %var.load22 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load22, %s.read.len20
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %entry
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data21, i64 %var.load22
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit24:                                    ; preds = %a.after63, %a.view.off46
  %choice.res73 = phi { i1, i64 } [ %ram.pay, %a.view.off46 ], [ %call.res72, %a.after63 ]
  ret { i1, i64 } %choice.res73

choice.case25:                                    ; preds = %choice.exit
  %var.load27 = load ptr, ptr %var.sc, align 8
  %var.load28 = load ptr, ptr %var.sc, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64 }, ptr %var.load28, i32 0, i32 1
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %addtmp31 = add i64 %fld.load30, 1
  %fld.gep32 = getelementptr inbounds { ptr, i64 }, ptr %var.load27, i32 0, i32 1
  store i64 %addtmp31, ptr %fld.gep32, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.entries, align 8
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load35 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next26:                                    ; preds = %choice.exit
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  %a.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 0
  store i64 0, ptr %a.len.gep54, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  store ptr %a.new51, ptr %var.entries57, align 8
  %var.load58 = load ptr, ptr %var.sc, align 8
  %var.load59 = load ptr, ptr %var.entries57, align 8
  %a.load60 = load ptr, ptr %var.entries57, align 8
  %a.null61 = icmp eq ptr %a.load60, null
  br i1 %a.null61, label %a.create62, label %a.after63

a.create:                                         ; preds = %choice.case25
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 24)
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 128)
  %a.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 0
  store i64 0, ptr %a.len.gep40, align 8
  %a.data.gep41 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 1
  store ptr %a.buf39, ptr %a.data.gep41, align 8
  %a.cap.gep42 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create37, i32 0, i32 2
  store i64 16, ptr %a.cap.gep42, align 8
  store ptr %a.create37, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case25
  %a.load2 = load ptr, ptr %var.entries, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.view.len43 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len43, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len43
  %final.start = select i1 %start.gt.len, i64 %a.view.len43, i64 %c.start.0
  %rel.end = add i64 %a.view.len43, 0
  %norm.end = select i1 false, i64 %rel.end, i64 0
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len43
  %final.end = select i1 %end.gt.len, i64 %a.view.len43, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.view.data44 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off45, 0
  %ovf = extractvalue { i64, i1 } %a.view.off45, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off46

a.view.off46:                                     ; preds = %abort.dead47, %a.after
  %a.view.data48 = getelementptr i8, ptr %a.view.data44, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data48, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit24

str_overflow_abort:                               ; preds = %a.after
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %a.view.off46

a.create62:                                       ; preds = %choice.next26
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create65 = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 24)
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf67 = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 128)
  %a.len.gep68 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 0
  store i64 0, ptr %a.len.gep68, align 8
  %a.data.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 1
  store ptr %a.buf67, ptr %a.data.gep69, align 8
  %a.cap.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create65, i32 0, i32 2
  store i64 16, ptr %a.cap.gep70, align 8
  store ptr %a.create65, ptr %var.entries57, align 8
  br label %a.after63

a.after63:                                        ; preds = %a.create62, %choice.next26
  %a.load271 = load ptr, ptr %var.entries57, align 8
  %call.res72 = call { i1, i64 } @"json::#parse_object_loop"(ptr %var.load58, ptr %a.load271)
  br label %choice.exit24
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
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load18 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load18, 34
  br i1 %val.match, label %choice.case20, label %choice.next21

choice.case:                                      ; preds = %entry
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %entry
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit19:                                    ; preds = %choice.next21, %a.after
  %choice.res34 = phi { i1, i64 } [ %call.res29, %a.after ], [ %ram.pay, %choice.next21 ]
  ret { i1, i64 } %choice.res34

choice.case20:                                    ; preds = %choice.exit
  %var.load22 = load ptr, ptr %var.sc, align 8
  %call.res23 = call { i1, i64 } @"json::#parse_string"(ptr %var.load22)
  store { i1, i64 } %call.res23, ptr %var.k, align 8
  %var.load24 = load ptr, ptr %var.sc, align 8
  %var.load25 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next21:                                    ; preds = %choice.exit
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 56)
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
  %var.load31 = load i64, ptr %var.p, align 8
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load31, ptr %rec.fld, align 8
  %rec.fld33 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld33, align 8
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
  br label %choice.exit19

a.create:                                         ; preds = %choice.case20
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create26 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create26, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case20
  %a.load2 = load ptr, ptr %var.entries, align 8
  %var.load28 = load { i1, i64 }, ptr %var.k, align 8
  %call.res29 = call { i1, i64 } @"json::#parse_object_after_key"(ptr %var.load24, ptr %a.load2, { i1, i64 } %var.load28)
  br label %choice.exit19
}

define internal { i1, i64 } @"json::#parse_object_after_key"(ptr %0, ptr %1, { i1, i64 } %2) #0 {
entry:
  %var.e = alloca ptr, align 8
  %var._69 = alloca ptr, align 8
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
  %ram.pay67 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr68 = inttoptr i64 %ram.pay67 to ptr
  store ptr %pay.ptr68, ptr %var._69, align 8
  store ptr %pay.ptr68, ptr %var.e, align 8
  %var.load70 = load ptr, ptr %var.e, align 8
  %p.to.i6471 = ptrtoint ptr %var.load70 to i64
  %ram.pay72 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6471, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit2
  %choice.res73 = phi { i1, i64 } [ %choice.res66, %choice.exit2 ], [ %ram.pay72, %choice.else ]
  ret { i1, i64 } %choice.res73

choice.exit2:                                     ; preds = %choice.next, %choice.exit26
  %choice.res66 = phi { i1, i64 } [ %choice.res, %choice.exit26 ], [ %ram.pay65, %choice.next ]
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
  %cmptmp = icmp slt i64 %var.load9, %str.len.query14
  br i1 %cmptmp, label %and.109.then, label %and.109.else

choice.next:                                      ; preds = %choice.then
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 56)
  %err.code.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 0
  store i64 400, ptr %err.code.gep48, align 8
  %err.msg.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 1
  store ptr @str.14.struct, ptr %err.msg.gep49, align 8
  %err.file.gep50 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep50, align 8
  %err.line.gep51 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 3
  store i64 0, ptr %err.line.gep51, align 8
  %err.col.gep52 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 4
  store i64 0, ptr %err.col.gep52, align 8
  %err.ctx.gep53 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc47, i32 0, i32 5
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld56 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc55, i32 0, i32 0
  store i64 0, ptr %rec.fld56, align 8
  %rec.fld57 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc55, i32 0, i32 1
  store i64 0, ptr %rec.fld57, align 8
  %ctx.0.gep58 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc55, i32 0, i32 0
  %ctx.059 = load i64, ptr %ctx.0.gep58, align 8
  %ctx.1.gep60 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc55, i32 0, i32 1
  %ctx.161 = load i64, ptr %ctx.1.gep60, align 8
  %err.ctx0.gep62 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep53, i32 0, i32 0
  store i64 %ctx.059, ptr %err.ctx0.gep62, align 8
  %err.ctx1.gep63 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep53, i32 0, i32 1
  store i64 %ctx.161, ptr %err.ctx1.gep63, align 8
  %p.to.i6464 = ptrtoint ptr %err.alloc47 to i64
  %ram.pay65 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6464, 1
  br label %choice.exit2

and.109.then:                                     ; preds = %choice.case
  %var.load15 = load ptr, ptr %var.sc, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64 }, ptr %var.load15, i32 0, i32 0
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %var.load21 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load21, %s.read.len19
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.109.else:                                     ; preds = %choice.case
  br label %and.109.exit

and.109.exit:                                     ; preds = %and.109.else, %idx_ok
  %and.109.phi = phi i1 [ %cmptmp22, %idx_ok ], [ %cmptmp, %and.109.else ]
  store i1 %and.109.phi, ptr %var.ok_col, align 1
  %var.load23 = load i1, ptr %var.ok_col, align 1
  br i1 %var.load23, label %choice.then24, label %choice.else25

idx_ok:                                           ; preds = %abort.dead, %and.109.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data20, i64 %var.load21
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp22 = icmp eq i64 %s.byte.val, 58
  br label %and.109.exit

idx_oob:                                          ; preds = %and.109.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then24:                                    ; preds = %and.109.exit
  %var.load27 = load ptr, ptr %var.sc, align 8
  %var.load28 = load ptr, ptr %var.sc, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i64 }, ptr %var.load28, i32 0, i32 1
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %addtmp = add i64 %fld.load30, 1
  %fld.gep31 = getelementptr inbounds { ptr, i64 }, ptr %var.load27, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep31, align 8
  %var.load32 = load ptr, ptr %var.sc, align 8
  %call.res33 = call { i1, i64 } @"json::#parse_value"(ptr %var.load32)
  store { i1, i64 } %call.res33, ptr %var.v, align 8
  %var.load34 = load ptr, ptr %var.sc, align 8
  %var.load35 = load ptr, ptr %var.entries, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else25:                                    ; preds = %and.109.exit
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 56)
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
  %var.load42 = load i64, ptr %var.p, align 8
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %p.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay45 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64, 1
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %a.after
  %choice.res = phi { i1, i64 } [ %call.res40, %a.after ], [ %ram.pay45, %choice.else25 ]
  br label %choice.exit2

a.create:                                         ; preds = %choice.then24
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create36 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create36, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create36, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create36, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create36, ptr %var.entries, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then24
  %a.load2 = load ptr, ptr %var.entries, align 8
  %var.load38 = load ptr, ptr %var.s, align 8
  %var.load39 = load { i1, i64 }, ptr %var.v, align 8
  %call.res40 = call { i1, i64 } @"json::#parse_object_after_val"(ptr %var.load34, ptr %a.load2, ptr %var.load38, { i1, i64 } %var.load39)
  br label %choice.exit26
}

define internal { i1, i64 } @"json::#parse_object_after_val"(ptr %0, ptr %1, ptr %2, { i1, i64 } %3) #0 {
entry:
  %var.e2 = alloca ptr, align 8
  %var._171 = alloca ptr, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load2, ptr %rec.fld3, align 8
  %a.load = load ptr, ptr %var.entries, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %entry
  %ram.pay169 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr170 = inttoptr i64 %ram.pay169 to ptr
  store ptr %pay.ptr170, ptr %var._171, align 8
  store ptr %pay.ptr170, ptr %var.e2, align 8
  %var.load172 = load ptr, ptr %var.e2, align 8
  %p.to.i64173 = ptrtoint ptr %var.load172 to i64
  %ram.pay174 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64173, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit31
  %choice.res175 = phi { i1, i64 } [ %choice.res168, %choice.exit31 ], [ %ram.pay174, %choice.else ]
  ret { i1, i64 } %choice.res175

a.create:                                         ; preds = %choice.then
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %cmptmp = icmp slt i64 %var.load16, %str.len.query22
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit17:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load30 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load30, 125
  br i1 %val.match, label %choice.case32, label %choice.next33

choice.case:                                      ; preds = %a.store
  %var.load23 = load ptr, ptr %var.sc, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64 }, ptr %var.load23, i32 0, i32 0
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %var.load29 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load29, %s.read.len27
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %a.store
  br label %choice.exit17

idx_ok:                                           ; preds = %abort.dead, %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit17

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit31:                                    ; preds = %choice.next77, %choice.exit119, %a.view.off71
  %choice.res168 = phi { i1, i64 } [ %ram.pay75, %a.view.off71 ], [ %choice.res146, %choice.exit119 ], [ %ram.pay167, %choice.next77 ]
  br label %choice.exit

choice.case32:                                    ; preds = %choice.exit17
  %var.load34 = load ptr, ptr %var.sc, align 8
  %var.load35 = load ptr, ptr %var.sc, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64 }, ptr %var.load35, i32 0, i32 1
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %addtmp = add i64 %fld.load37, 1
  %fld.gep38 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep38, align 8
  %var.load39 = load ptr, ptr %var.entries, align 8
  %a.load40 = load ptr, ptr %var.entries, align 8
  %a.null41 = icmp eq ptr %a.load40, null
  br i1 %a.null41, label %a.create42, label %a.after43

choice.next33:                                    ; preds = %choice.exit17
  %val.match78 = icmp eq i64 %var.load30, 44
  br i1 %val.match78, label %choice.case76, label %choice.next77

a.create42:                                       ; preds = %choice.case32
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 24)
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 128)
  %a.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 0
  store i64 0, ptr %a.len.gep48, align 8
  %a.data.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 1
  store ptr %a.buf47, ptr %a.data.gep49, align 8
  %a.cap.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 2
  store i64 16, ptr %a.cap.gep50, align 8
  store ptr %a.create45, ptr %var.entries, align 8
  br label %a.after43

a.after43:                                        ; preds = %a.create42, %choice.case32
  %a.load251 = load ptr, ptr %var.entries, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load251, i32 0, i32 0
  %a.len.query52 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query52, ptr %var.m, align 8
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load54 = load ptr, ptr %var.entries, align 8
  %a.load55 = load ptr, ptr %var.entries, align 8
  %a.null56 = icmp eq ptr %a.load55, null
  br i1 %a.null56, label %a.create57, label %a.after58

a.create57:                                       ; preds = %a.after43
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
  store ptr %a.create60, ptr %var.entries, align 8
  br label %a.after58

a.after58:                                        ; preds = %a.create57, %a.after43
  %a.load266 = load ptr, ptr %var.entries, align 8
  %var.load67 = load i64, ptr %var.m, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load266, i32 0, i32 0
  %a.view.len68 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len68, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len68
  %final.start = select i1 %start.gt.len, i64 %a.view.len68, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load67, 0
  %rel.end = add i64 %a.view.len68, %var.load67
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load67
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len68
  %final.end = select i1 %end.gt.len, i64 %a.view.len68, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load266, i32 0, i32 1
  %a.view.data69 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off70 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off70, 0
  %ovf = extractvalue { i64, i1 } %a.view.off70, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off71

a.view.off71:                                     ; preds = %abort.dead72, %a.after58
  %a.view.data73 = getelementptr i8, ptr %a.view.data69, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data73, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay75 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit31

str_overflow_abort:                               ; preds = %a.after58
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %a.view.off71

choice.case76:                                    ; preds = %choice.next33
  %var.load79 = load ptr, ptr %var.sc, align 8
  %var.load80 = load ptr, ptr %var.sc, align 8
  %fld.gep81 = getelementptr inbounds { ptr, i64 }, ptr %var.load80, i32 0, i32 1
  %fld.load82 = load i64, ptr %fld.gep81, align 8
  %addtmp83 = add i64 %fld.load82, 1
  %fld.gep84 = getelementptr inbounds { ptr, i64 }, ptr %var.load79, i32 0, i32 1
  store i64 %addtmp83, ptr %fld.gep84, align 8
  %var.load85 = load ptr, ptr %var.sc, align 8
  %var.load86 = load ptr, ptr %var.sc, align 8
  %fld.gep87 = getelementptr inbounds { ptr, i64 }, ptr %var.load86, i32 0, i32 1
  %fld.load88 = load i64, ptr %fld.gep87, align 8
  %call.res89 = call i64 @"json::#skip_ws"(ptr %var.load85, i64 %fld.load88)
  store i64 %call.res89, ptr %var.p2, align 8
  %var.load90 = load i64, ptr %var.p2, align 8
  %var.load94 = load ptr, ptr %var.sc, align 8
  %fld.gep95 = getelementptr inbounds { ptr, i64 }, ptr %var.load94, i32 0, i32 0
  %fld.load96 = load ptr, ptr %fld.gep95, align 8
  %str.len.query97 = getelementptr inbounds { i64, ptr }, ptr %fld.load96, i32 0, i32 0
  %str.len.query98 = load i64, ptr %str.len.query97, align 8
  %str.len.query99 = and i64 %str.len.query98, 281474976710655
  %cmptmp100 = icmp slt i64 %var.load90, %str.len.query99
  br i1 %cmptmp100, label %choice.case92, label %choice.next93

choice.next77:                                    ; preds = %choice.next33
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 56)
  %err.code.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 0
  store i64 400, ptr %err.code.gep149, align 8
  %err.msg.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 1
  store ptr @str.12.struct, ptr %err.msg.gep150, align 8
  %err.file.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep151, align 8
  %err.line.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 3
  store i64 0, ptr %err.line.gep152, align 8
  %err.col.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 4
  store i64 0, ptr %err.col.gep153, align 8
  %err.ctx.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 5
  %var.load155 = load i64, ptr %var.p, align 8
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld158 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc157, i32 0, i32 0
  store i64 %var.load155, ptr %rec.fld158, align 8
  %rec.fld159 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc157, i32 0, i32 1
  store i64 0, ptr %rec.fld159, align 8
  %ctx.0.gep160 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc157, i32 0, i32 0
  %ctx.0161 = load i64, ptr %ctx.0.gep160, align 8
  %ctx.1.gep162 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc157, i32 0, i32 1
  %ctx.1163 = load i64, ptr %ctx.1.gep162, align 8
  %err.ctx0.gep164 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep154, i32 0, i32 0
  store i64 %ctx.0161, ptr %err.ctx0.gep164, align 8
  %err.ctx1.gep165 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep154, i32 0, i32 1
  store i64 %ctx.1163, ptr %err.ctx1.gep165, align 8
  %p.to.i64166 = ptrtoint ptr %err.alloc148 to i64
  %ram.pay167 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64166, 1
  br label %choice.exit31

choice.exit91:                                    ; preds = %choice.next93, %idx_ok111
  %choice.res117 = phi i64 [ %s.byte.val116, %idx_ok111 ], [ -1, %choice.next93 ]
  store i64 %choice.res117, ptr %var.c2, align 8
  %var.load118 = load i64, ptr %var.c2, align 8
  %val.match122 = icmp eq i64 %var.load118, 125
  br i1 %val.match122, label %choice.case120, label %choice.next121

choice.case92:                                    ; preds = %choice.case76
  %var.load101 = load ptr, ptr %var.sc, align 8
  %fld.gep102 = getelementptr inbounds { ptr, i64 }, ptr %var.load101, i32 0, i32 0
  %fld.load103 = load ptr, ptr %fld.gep102, align 8
  %s.read.len104 = getelementptr inbounds { i64, ptr }, ptr %fld.load103, i32 0, i32 0
  %s.read.len105 = load i64, ptr %s.read.len104, align 8
  %s.read.len106 = and i64 %s.read.len105, 281474976710655
  %s.read.data107 = getelementptr inbounds { i64, ptr }, ptr %fld.load103, i32 0, i32 1
  %s.read.data108 = load ptr, ptr %s.read.data107, align 8
  %var.load109 = load i64, ptr %var.p2, align 8
  %idx.oob110 = icmp uge i64 %var.load109, %s.read.len106
  br i1 %idx.oob110, label %idx_oob112, label %idx_ok111

choice.next93:                                    ; preds = %choice.case76
  br label %choice.exit91

idx_ok111:                                        ; preds = %abort.dead113, %choice.case92
  %s.byte.gep114 = getelementptr i8, ptr %s.read.data108, i64 %var.load109
  %s.byte115 = load i8, ptr %s.byte.gep114, align 1
  %s.byte.val116 = zext i8 %s.byte115 to i64
  br label %choice.exit91

idx_oob112:                                       ; preds = %choice.case92
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %idx_ok111

choice.exit119:                                   ; preds = %a.after136, %choice.case120
  %choice.res146 = phi { i1, i64 } [ %ram.pay130, %choice.case120 ], [ %call.res145, %a.after136 ]
  br label %choice.exit31

choice.case120:                                   ; preds = %choice.exit91
  %arena.cur123 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 56)
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
  %var.load124 = load i64, ptr %var.p2, align 8
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld127 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc126, i32 0, i32 0
  store i64 %var.load124, ptr %rec.fld127, align 8
  %rec.fld128 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc126, i32 0, i32 1
  store i64 0, ptr %rec.fld128, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc126, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc126, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64129 = ptrtoint ptr %err.alloc to i64
  %ram.pay130 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64129, 1
  br label %choice.exit119

choice.next121:                                   ; preds = %choice.exit91
  %var.load131 = load ptr, ptr %var.sc, align 8
  %var.load132 = load ptr, ptr %var.entries, align 8
  %a.load133 = load ptr, ptr %var.entries, align 8
  %a.null134 = icmp eq ptr %a.load133, null
  br i1 %a.null134, label %a.create135, label %a.after136

a.create135:                                      ; preds = %choice.next121
  %arena.cur137 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create138 = call ptr @dva_arena_alloc(ptr %arena.cur137, i64 24)
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 128)
  %a.len.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 0
  store i64 0, ptr %a.len.gep141, align 8
  %a.data.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 1
  store ptr %a.buf140, ptr %a.data.gep142, align 8
  %a.cap.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create138, i32 0, i32 2
  store i64 16, ptr %a.cap.gep143, align 8
  store ptr %a.create138, ptr %var.entries, align 8
  br label %a.after136

a.after136:                                       ; preds = %a.create135, %choice.next121
  %a.load2144 = load ptr, ptr %var.entries, align 8
  %call.res145 = call { i1, i64 } @"json::#parse_object_loop"(ptr %var.load131, ptr %a.load2144)
  br label %choice.exit119
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
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %abort.dead10, %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

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
  %cmptmp = icmp sle i64 %addtmp, %str.len.query12
  br i1 %cmptmp, label %and.110.then, label %and.110.else

and.110.then:                                     ; preds = %choice.exit
  %var.load13 = load ptr, ptr %var.sc, align 8
  %fld.gep14 = getelementptr inbounds { ptr, i64 }, ptr %var.load13, i32 0, i32 0
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %s.read.len16 = load i64, ptr %s.read.len, align 8
  %s.read.len17 = and i64 %s.read.len16, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %var.load19 = load i64, ptr %var.p, align 8
  %var.load20 = load i64, ptr %var.p, align 8
  %var.load21 = load i64, ptr %var.len, align 8
  %addtmp22 = add i64 %var.load20, %var.load21
  %start.is_neg = icmp slt i64 %var.load19, 0
  %rel.start = add i64 %s.read.len17, %var.load19
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load19
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len17
  %final.start = select i1 %start.gt.len, i64 %s.read.len17, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp22, 0
  %rel.end = add i64 %s.read.len17, %addtmp22
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp22
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len17
  %final.end = select i1 %end.gt.len, i64 %s.read.len17, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data18, i64 %final.start
  %var.load23 = load ptr, ptr %var.word, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %cmp.str24 = load i64, ptr %cmp.str, align 8
  %cmp.str25 = and i64 %cmp.str24, 281474976710655
  %cmp.str26 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %cmp.str27 = load ptr, ptr %cmp.str26, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str25
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.110.else:                                     ; preds = %choice.exit
  br label %and.110.exit

and.110.exit:                                     ; preds = %and.110.else, %str.eq.merge
  %and.110.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.110.else ]
  store i1 %and.110.phi, ptr %var.ok, align 1
  %var.load28 = load i1, ptr %var.ok, align 1
  br i1 %var.load28, label %choice.then29, label %choice.else30

str.eq.then:                                      ; preds = %and.110.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str27, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.110.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.110.exit

choice.then29:                                    ; preds = %and.110.exit
  %var.load32 = load ptr, ptr %var.sc, align 8
  %var.load33 = load i64, ptr %var.p, align 8
  %var.load34 = load i64, ptr %var.len, align 8
  %addtmp35 = add i64 %var.load33, %var.load34
  %fld.gep36 = getelementptr inbounds { ptr, i64 }, ptr %var.load32, i32 0, i32 1
  store i64 %addtmp35, ptr %fld.gep36, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load37 = load i1, ptr %var.tag, align 1
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i1 %var.load37, ptr %enum.pay.alloc, align 1
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit31

choice.else30:                                    ; preds = %and.110.exit
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 56)
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
  %var.load40 = load i64, ptr %var.p, align 8
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load40, ptr %rec.fld, align 8
  %rec.fld42 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld42, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6443 = ptrtoint ptr %err.alloc to i64
  %ram.pay44 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6443, 1
  br label %choice.exit31

choice.exit31:                                    ; preds = %choice.else30, %choice.then29
  %choice.res45 = phi { i1, i64 } [ %ram.pay, %choice.then29 ], [ %ram.pay44, %choice.else30 ]
  ret { i1, i64 } %choice.res45
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
  %cmptmp = icmp sle i64 %addtmp, %str.len.query10
  br i1 %cmptmp, label %and.111.then, label %and.111.else

and.111.then:                                     ; preds = %entry
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %var.load18 = load i64, ptr %var.p, align 8
  %addtmp19 = add i64 %var.load18, 4
  %start.is_neg = icmp slt i64 %var.load17, 0
  %rel.start = add i64 %s.read.len15, %var.load17
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load17
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len15
  %final.start = select i1 %start.gt.len, i64 %s.read.len15, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp19, 0
  %rel.end = add i64 %s.read.len15, %addtmp19
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp19
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len15
  %final.end = select i1 %end.gt.len, i64 %s.read.len15, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data16, i64 %final.start
  %cmp.str = load i64, ptr @str.17.struct, align 8
  %cmp.str20 = and i64 %cmp.str, 281474976710655
  %cmp.str21 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str20
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.111.else:                                     ; preds = %entry
  br label %and.111.exit

and.111.exit:                                     ; preds = %and.111.else, %str.eq.merge
  %and.111.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.111.else ]
  store i1 %and.111.phi, ptr %var.ok, align 1
  %var.load22 = load i1, ptr %var.ok, align 1
  br i1 %var.load22, label %choice.then, label %choice.else

str.eq.then:                                      ; preds = %and.111.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str21, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.111.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.111.exit

choice.then:                                      ; preds = %and.111.exit
  %var.load23 = load ptr, ptr %var.sc, align 8
  %var.load24 = load i64, ptr %var.p, align 8
  %addtmp25 = add i64 %var.load24, 4
  %fld.gep26 = getelementptr inbounds { ptr, i64 }, ptr %var.load23, i32 0, i32 1
  store i64 %addtmp25, ptr %fld.gep26, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %and.111.exit
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
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
  %var.load28 = load i64, ptr %var.p, align 8
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load28, ptr %rec.fld, align 8
  %rec.fld30 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld30, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6431 = ptrtoint ptr %err.alloc to i64
  %ram.pay32 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6431, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %ram.pay32, %choice.else ]
  ret { i1, i64 } %choice.res
}

define internal { i1, i64 } @"json::#parse_number"(ptr %0) #0 {
entry:
  %var.f = alloca double, align 8
  %var.valid = alloca i1, align 1
  %var._415 = alloca i64, align 8
  %var._i414 = alloca i64, align 8
  %loop.step.126 = alloca i64, align 8
  %loop.idx.126 = alloca i64, align 8
  %var.abs_e = alloca i64, align 8
  %var.eclamp = alloca i64, align 8
  %var.exp_val = alloca i64, align 8
  %var.ed = alloca i64, align 8
  %var.ec = alloca i64, align 8
  %var._316 = alloca i64, align 8
  %var._i315 = alloca i64, align 8
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
  %var.d208 = alloca i64, align 8
  %var.c195 = alloca i64, align 8
  %var._168 = alloca i64, align 8
  %var._i167 = alloca i64, align 8
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
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c0, align 8
  %var.load18 = load i64, ptr %var.c0, align 8
  %cmptmp22 = icmp sge i64 %var.load18, 48
  br i1 %cmptmp22, label %and.112.then, label %and.112.else

choice.case:                                      ; preds = %entry
  %var.load11 = load ptr, ptr %var.sc, align 8
  %fld.gep12 = getelementptr inbounds { ptr, i64 }, ptr %var.load11, i32 0, i32 0
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %"var.p'", align 8
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %entry
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit19:                                    ; preds = %choice.next21, %choice.case20
  %choice.res24 = phi i1 [ true, %choice.case20 ], [ false, %choice.next21 ]
  store i1 %choice.res24, ptr %var.is_num_start, align 1
  %var.load25 = load i1, ptr %var.is_num_start, align 1
  br i1 %var.load25, label %choice.then, label %choice.else

choice.case20:                                    ; preds = %and.112.exit
  br label %choice.exit19

choice.next21:                                    ; preds = %and.112.exit
  br label %choice.exit19

and.112.then:                                     ; preds = %choice.exit
  %cmptmp23 = icmp sle i64 %var.load18, 57
  br label %and.112.exit

and.112.else:                                     ; preds = %choice.exit
  br label %and.112.exit

and.112.exit:                                     ; preds = %and.112.else, %and.112.then
  %and.112.phi = phi i1 [ %cmptmp23, %and.112.then ], [ %cmptmp22, %and.112.else ]
  %val.match = icmp eq i64 %var.load18, 45
  %case.or = or i1 %and.112.phi, %val.match
  br i1 %case.or, label %choice.case20, label %choice.next21

choice.then:                                      ; preds = %choice.exit19
  store i1 false, ptr %"var.neg'", align 1
  %var.load27 = load i64, ptr %var.c0, align 8
  %val.match31 = icmp eq i64 %var.load27, 45
  br i1 %val.match31, label %choice.case29, label %choice.next30

choice.else:                                      ; preds = %choice.exit19
  %arena.cur475 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc476 = call ptr @dva_arena_alloc(ptr %arena.cur475, i64 56)
  %err.code.gep477 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 0
  store i64 400, ptr %err.code.gep477, align 8
  %err.msg.gep478 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 1
  store ptr @str.21.struct, ptr %err.msg.gep478, align 8
  %err.file.gep479 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep479, align 8
  %err.line.gep480 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 3
  store i64 0, ptr %err.line.gep480, align 8
  %err.col.gep481 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 4
  store i64 0, ptr %err.col.gep481, align 8
  %err.ctx.gep482 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 5
  %var.load483 = load i64, ptr %"var.p'", align 8
  %arena.cur484 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc485 = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld486 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc485, i32 0, i32 0
  store i64 %var.load483, ptr %rec.fld486, align 8
  %rec.fld487 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc485, i32 0, i32 1
  store i64 0, ptr %rec.fld487, align 8
  %ctx.0.gep488 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc485, i32 0, i32 0
  %ctx.0489 = load i64, ptr %ctx.0.gep488, align 8
  %ctx.1.gep490 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc485, i32 0, i32 1
  %ctx.1491 = load i64, ptr %ctx.1.gep490, align 8
  %err.ctx0.gep492 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep482, i32 0, i32 0
  store i64 %ctx.0489, ptr %err.ctx0.gep492, align 8
  %err.ctx1.gep493 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep482, i32 0, i32 1
  store i64 %ctx.1491, ptr %err.ctx1.gep493, align 8
  %p.to.i64494 = ptrtoint ptr %err.alloc476 to i64
  %ram.pay495 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64494, 1
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else, %choice.exit74
  %choice.res496 = phi { i1, i64 } [ %choice.res474, %choice.exit74 ], [ %ram.pay495, %choice.else ]
  ret { i1, i64 } %choice.res496

choice.exit28:                                    ; preds = %choice.next30, %choice.case29
  %var.load33 = load i64, ptr %"var.p'", align 8
  %var.load34 = load ptr, ptr %var.sc, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 0
  %fld.load36 = load ptr, ptr %fld.gep35, align 8
  %str.len.query37 = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 0
  %str.len.query38 = load i64, ptr %str.len.query37, align 8
  %str.len.query39 = and i64 %str.len.query38, 281474976710655
  %cmptmp40 = icmp slt i64 %var.load33, %str.len.query39
  br i1 %cmptmp40, label %and.113.then, label %and.113.else

choice.case29:                                    ; preds = %choice.then
  store i1 true, ptr %"var.neg'", align 1
  %var.load32 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load32, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit28

choice.next30:                                    ; preds = %choice.then
  br label %choice.exit28

and.113.then:                                     ; preds = %choice.exit28
  %var.load41 = load ptr, ptr %var.sc, align 8
  %fld.gep42 = getelementptr inbounds { ptr, i64 }, ptr %var.load41, i32 0, i32 0
  %fld.load43 = load ptr, ptr %fld.gep42, align 8
  %s.read.len44 = getelementptr inbounds { i64, ptr }, ptr %fld.load43, i32 0, i32 0
  %s.read.len45 = load i64, ptr %s.read.len44, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %s.read.data47 = getelementptr inbounds { i64, ptr }, ptr %fld.load43, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data47, align 8
  %var.load49 = load i64, ptr %"var.p'", align 8
  %idx.oob50 = icmp uge i64 %var.load49, %s.read.len46
  br i1 %idx.oob50, label %idx_oob52, label %idx_ok51

and.113.else:                                     ; preds = %choice.exit28
  br label %and.113.exit

and.113.exit:                                     ; preds = %and.113.else, %idx_ok51
  %and.113.phi = phi i1 [ %cmptmp57, %idx_ok51 ], [ %cmptmp40, %and.113.else ]
  br i1 %and.113.phi, label %and.114.then, label %and.114.else

idx_ok51:                                         ; preds = %abort.dead53, %and.113.then
  %s.byte.gep54 = getelementptr i8, ptr %s.read.data48, i64 %var.load49
  %s.byte55 = load i8, ptr %s.byte.gep54, align 1
  %s.byte.val56 = zext i8 %s.byte55 to i64
  %cmptmp57 = icmp eq i64 %s.byte.val56, 48
  br label %and.113.exit

idx_oob52:                                        ; preds = %and.113.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %idx_ok51

and.114.then:                                     ; preds = %and.113.exit
  %var.load58 = load i64, ptr %"var.p'", align 8
  %addtmp59 = add i64 %var.load58, 1
  %var.load60 = load ptr, ptr %var.sc, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i64 }, ptr %var.load60, i32 0, i32 0
  %fld.load62 = load ptr, ptr %fld.gep61, align 8
  %str.len.query63 = getelementptr inbounds { i64, ptr }, ptr %fld.load62, i32 0, i32 0
  %str.len.query64 = load i64, ptr %str.len.query63, align 8
  %str.len.query65 = and i64 %str.len.query64, 281474976710655
  %cmptmp66 = icmp slt i64 %addtmp59, %str.len.query65
  br label %and.114.exit

and.114.else:                                     ; preds = %and.113.exit
  br label %and.114.exit

and.114.exit:                                     ; preds = %and.114.else, %and.114.then
  %and.114.phi = phi i1 [ %cmptmp66, %and.114.then ], [ %and.113.phi, %and.114.else ]
  br i1 %and.114.phi, label %and.115.then, label %and.115.else

and.115.then:                                     ; preds = %and.114.exit
  %var.load67 = load ptr, ptr %var.sc, align 8
  %var.load68 = load i64, ptr %"var.p'", align 8
  %addtmp69 = add i64 %var.load68, 1
  %call.res70 = call i1 @"json::#is_digit_at"(ptr %var.load67, i64 %addtmp69)
  br label %and.115.exit

and.115.else:                                     ; preds = %and.114.exit
  br label %and.115.exit

and.115.exit:                                     ; preds = %and.115.else, %and.115.then
  %and.115.phi = phi i1 [ %call.res70, %and.115.then ], [ %and.114.phi, %and.115.else ]
  store i1 %and.115.phi, ptr %var.has_leading_zero, align 1
  %var.load71 = load i1, ptr %var.has_leading_zero, align 1
  br i1 %var.load71, label %choice.then72, label %choice.else73

choice.then72:                                    ; preds = %and.115.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
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
  %var.load75 = load i64, ptr %"var.p'", align 8
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load75, ptr %rec.fld, align 8
  %rec.fld77 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld77, align 8
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
  br label %choice.exit74

choice.else73:                                    ; preds = %and.115.exit
  %var.load78 = load i64, ptr %"var.p'", align 8
  store i64 %var.load78, ptr %"var.p2'", align 8
  store i1 false, ptr %"var.had_int'", align 1
  store i64 0, ptr %"var.sig_digits'", align 8
  store double 0.000000e+00, ptr %"var.fv'", align 8
  store i64 0, ptr %"var.exp10'", align 8
  store i64 0, ptr %loop.idx.116, align 8
  br label %loop.header.116

choice.exit74:                                    ; preds = %choice.exit436, %choice.then72
  %choice.res474 = phi { i1, i64 } [ %ram.pay, %choice.then72 ], [ %choice.res473, %choice.exit436 ]
  br label %choice.exit26

loop.header.116:                                  ; preds = %loop.latch.116, %choice.else73
  %counter.load = load i64, ptr %loop.idx.116, align 8
  br label %loop.body.116

loop.body.116:                                    ; preds = %loop.header.116
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.116, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load79 = load i64, ptr %"var.p2'", align 8
  %var.load80 = load ptr, ptr %var.sc, align 8
  %fld.gep81 = getelementptr inbounds { ptr, i64 }, ptr %var.load80, i32 0, i32 0
  %fld.load82 = load ptr, ptr %fld.gep81, align 8
  %str.len.query83 = getelementptr inbounds { i64, ptr }, ptr %fld.load82, i32 0, i32 0
  %str.len.query84 = load i64, ptr %str.len.query83, align 8
  %str.len.query85 = and i64 %str.len.query84, 281474976710655
  %cmptmp86 = icmp sge i64 %var.load79, %str.len.query85
  br i1 %cmptmp86, label %choice.then87, label %choice.exit88

loop.exit.nat.116:                                ; No predecessors!
  br label %loop.exit.116

loop.latch.116:                                   ; preds = %choice.exit114
  %step.val = load i64, ptr %loop.step.116, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.116, align 8
  br label %loop.header.116

loop.exit.116:                                    ; preds = %choice.else113, %choice.then87, %loop.exit.nat.116
  %var.load135 = load i64, ptr %"var.p2'", align 8
  %var.load136 = load ptr, ptr %var.sc, align 8
  %fld.gep137 = getelementptr inbounds { ptr, i64 }, ptr %var.load136, i32 0, i32 0
  %fld.load138 = load ptr, ptr %fld.gep137, align 8
  %str.len.query139 = getelementptr inbounds { i64, ptr }, ptr %fld.load138, i32 0, i32 0
  %str.len.query140 = load i64, ptr %str.len.query139, align 8
  %str.len.query141 = and i64 %str.len.query140, 281474976710655
  %cmptmp142 = icmp slt i64 %var.load135, %str.len.query141
  br i1 %cmptmp142, label %and.119.then, label %and.119.else

choice.then87:                                    ; preds = %loop.body.116
  br label %loop.exit.116

choice.exit88:                                    ; preds = %loop.body.116
  %var.load89 = load ptr, ptr %var.sc, align 8
  %fld.gep90 = getelementptr inbounds { ptr, i64 }, ptr %var.load89, i32 0, i32 0
  %fld.load91 = load ptr, ptr %fld.gep90, align 8
  %s.read.len92 = getelementptr inbounds { i64, ptr }, ptr %fld.load91, i32 0, i32 0
  %s.read.len93 = load i64, ptr %s.read.len92, align 8
  %s.read.len94 = and i64 %s.read.len93, 281474976710655
  %s.read.data95 = getelementptr inbounds { i64, ptr }, ptr %fld.load91, i32 0, i32 1
  %s.read.data96 = load ptr, ptr %s.read.data95, align 8
  %var.load97 = load i64, ptr %"var.p2'", align 8
  %idx.oob98 = icmp uge i64 %var.load97, %s.read.len94
  br i1 %idx.oob98, label %idx_oob100, label %idx_ok99

idx_ok99:                                         ; preds = %abort.dead101, %choice.exit88
  %s.byte.gep102 = getelementptr i8, ptr %s.read.data96, i64 %var.load97
  %s.byte103 = load i8, ptr %s.byte.gep102, align 1
  %s.byte.val104 = zext i8 %s.byte103 to i64
  store i64 %s.byte.val104, ptr %var.c, align 8
  %var.load105 = load i64, ptr %var.c, align 8
  %cmptmp109 = icmp sge i64 %var.load105, 48
  br i1 %cmptmp109, label %and.117.then, label %and.117.else

idx_oob100:                                       ; preds = %choice.exit88
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %idx_ok99

choice.exit106:                                   ; preds = %choice.next108, %choice.case107
  %choice.res111 = phi i1 [ true, %choice.case107 ], [ false, %choice.next108 ]
  br i1 %choice.res111, label %choice.then112, label %choice.else113

choice.case107:                                   ; preds = %and.117.exit
  br label %choice.exit106

choice.next108:                                   ; preds = %and.117.exit
  br label %choice.exit106

and.117.then:                                     ; preds = %idx_ok99
  %cmptmp110 = icmp sle i64 %var.load105, 57
  br label %and.117.exit

and.117.else:                                     ; preds = %idx_ok99
  br label %and.117.exit

and.117.exit:                                     ; preds = %and.117.else, %and.117.then
  %and.117.phi = phi i1 [ %cmptmp110, %and.117.then ], [ %cmptmp109, %and.117.else ]
  br i1 %and.117.phi, label %choice.case107, label %choice.next108

choice.then112:                                   ; preds = %choice.exit106
  store i1 true, ptr %"var.had_int'", align 1
  %var.load115 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load115, 48
  store i64 %subtmp, ptr %var.d, align 8
  %var.load116 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp117 = icmp sgt i64 %var.load116, 0
  br i1 %cmptmp117, label %or.118.then, label %or.118.else

choice.else113:                                   ; preds = %choice.exit106
  br label %loop.exit.116

choice.exit114:                                   ; preds = %choice.exit121
  br label %loop.latch.116

or.118.then:                                      ; preds = %choice.then112
  br label %or.118.exit

or.118.else:                                      ; preds = %choice.then112
  %var.load118 = load i64, ptr %var.d, align 8
  %cmptmp119 = icmp ne i64 %var.load118, 0
  br label %or.118.exit

or.118.exit:                                      ; preds = %or.118.else, %or.118.then
  %or.118.phi = phi i1 [ %cmptmp117, %or.118.then ], [ %cmptmp119, %or.118.else ]
  br i1 %or.118.phi, label %choice.then120, label %choice.exit121

choice.then120:                                   ; preds = %or.118.exit
  %var.load122 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp123 = icmp slt i64 %var.load122, 17
  br i1 %cmptmp123, label %choice.then124, label %choice.else125

choice.exit121:                                   ; preds = %choice.exit126, %or.118.exit
  %var.load133 = load i64, ptr %"var.p2'", align 8
  %addtmp134 = add i64 %var.load133, 1
  store i64 %addtmp134, ptr %"var.p2'", align 8
  br label %choice.exit114

choice.then124:                                   ; preds = %choice.then120
  %var.load127 = load double, ptr %"var.fv'", align 8
  %fmultmp = fmul double %var.load127, 1.000000e+01
  %var.load128 = load i64, ptr %var.d, align 8
  %cast.sitofp = sitofp i64 %var.load128 to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.fv'", align 8
  %var.load129 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp130 = add i64 %var.load129, 1
  store i64 %addtmp130, ptr %"var.sig_digits'", align 8
  br label %choice.exit126

choice.else125:                                   ; preds = %choice.then120
  %var.load131 = load i64, ptr %"var.exp10'", align 8
  %addtmp132 = add i64 %var.load131, 1
  store i64 %addtmp132, ptr %"var.exp10'", align 8
  br label %choice.exit126

choice.exit126:                                   ; preds = %choice.else125, %choice.then124
  br label %choice.exit121

and.119.then:                                     ; preds = %loop.exit.116
  %var.load143 = load ptr, ptr %var.sc, align 8
  %fld.gep144 = getelementptr inbounds { ptr, i64 }, ptr %var.load143, i32 0, i32 0
  %fld.load145 = load ptr, ptr %fld.gep144, align 8
  %s.read.len146 = getelementptr inbounds { i64, ptr }, ptr %fld.load145, i32 0, i32 0
  %s.read.len147 = load i64, ptr %s.read.len146, align 8
  %s.read.len148 = and i64 %s.read.len147, 281474976710655
  %s.read.data149 = getelementptr inbounds { i64, ptr }, ptr %fld.load145, i32 0, i32 1
  %s.read.data150 = load ptr, ptr %s.read.data149, align 8
  %var.load151 = load i64, ptr %"var.p2'", align 8
  %idx.oob152 = icmp uge i64 %var.load151, %s.read.len148
  br i1 %idx.oob152, label %idx_oob154, label %idx_ok153

and.119.else:                                     ; preds = %loop.exit.116
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %idx_ok153
  %and.119.phi = phi i1 [ %cmptmp159, %idx_ok153 ], [ %cmptmp142, %and.119.else ]
  store i1 %and.119.phi, ptr %var.has_dot, align 1
  store i1 false, ptr %"var.had_frac'", align 1
  %var.load160 = load i1, ptr %var.has_dot, align 1
  br i1 %var.load160, label %choice.then161, label %choice.exit162

idx_ok153:                                        ; preds = %abort.dead155, %and.119.then
  %s.byte.gep156 = getelementptr i8, ptr %s.read.data150, i64 %var.load151
  %s.byte157 = load i8, ptr %s.byte.gep156, align 1
  %s.byte.val158 = zext i8 %s.byte157 to i64
  %cmptmp159 = icmp eq i64 %s.byte.val158, 46
  br label %and.119.exit

idx_oob154:                                       ; preds = %and.119.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead155:                                    ; No predecessors!
  br label %idx_ok153

choice.then161:                                   ; preds = %and.119.exit
  %var.load163 = load i64, ptr %"var.p2'", align 8
  %addtmp164 = add i64 %var.load163, 1
  store i64 %addtmp164, ptr %"var.p2'", align 8
  store i64 0, ptr %loop.idx.120, align 8
  br label %loop.header.120

choice.exit162:                                   ; preds = %loop.exit.120, %and.119.exit
  %var.load235 = load i64, ptr %"var.p2'", align 8
  %var.load236 = load ptr, ptr %var.sc, align 8
  %fld.gep237 = getelementptr inbounds { ptr, i64 }, ptr %var.load236, i32 0, i32 0
  %fld.load238 = load ptr, ptr %fld.gep237, align 8
  %str.len.query239 = getelementptr inbounds { i64, ptr }, ptr %fld.load238, i32 0, i32 0
  %str.len.query240 = load i64, ptr %str.len.query239, align 8
  %str.len.query241 = and i64 %str.len.query240, 281474976710655
  %cmptmp242 = icmp slt i64 %var.load235, %str.len.query241
  br i1 %cmptmp242, label %and.123.then, label %and.123.else

loop.header.120:                                  ; preds = %loop.latch.120, %choice.then161
  %counter.load165 = load i64, ptr %loop.idx.120, align 8
  br label %loop.body.120

loop.body.120:                                    ; preds = %loop.header.120
  %loop.rel.i166 = sub i64 %counter.load165, 0
  store i64 1, ptr %loop.step.120, align 8
  store i64 %loop.rel.i166, ptr %var._i167, align 8
  store i64 %counter.load165, ptr %var._168, align 8
  %var.load169 = load i64, ptr %"var.p2'", align 8
  %var.load170 = load ptr, ptr %var.sc, align 8
  %fld.gep171 = getelementptr inbounds { ptr, i64 }, ptr %var.load170, i32 0, i32 0
  %fld.load172 = load ptr, ptr %fld.gep171, align 8
  %str.len.query173 = getelementptr inbounds { i64, ptr }, ptr %fld.load172, i32 0, i32 0
  %str.len.query174 = load i64, ptr %str.len.query173, align 8
  %str.len.query175 = and i64 %str.len.query174, 281474976710655
  %cmptmp176 = icmp sge i64 %var.load169, %str.len.query175
  br i1 %cmptmp176, label %choice.then177, label %choice.exit178

loop.exit.nat.120:                                ; No predecessors!
  br label %loop.exit.120

loop.latch.120:                                   ; preds = %choice.exit205
  %step.val233 = load i64, ptr %loop.step.120, align 8
  %loop.next234 = add i64 %counter.load165, %step.val233
  store i64 %loop.next234, ptr %loop.idx.120, align 8
  br label %loop.header.120

loop.exit.120:                                    ; preds = %choice.else204, %choice.then177, %loop.exit.nat.120
  br label %choice.exit162

choice.then177:                                   ; preds = %loop.body.120
  br label %loop.exit.120

choice.exit178:                                   ; preds = %loop.body.120
  %var.load179 = load ptr, ptr %var.sc, align 8
  %fld.gep180 = getelementptr inbounds { ptr, i64 }, ptr %var.load179, i32 0, i32 0
  %fld.load181 = load ptr, ptr %fld.gep180, align 8
  %s.read.len182 = getelementptr inbounds { i64, ptr }, ptr %fld.load181, i32 0, i32 0
  %s.read.len183 = load i64, ptr %s.read.len182, align 8
  %s.read.len184 = and i64 %s.read.len183, 281474976710655
  %s.read.data185 = getelementptr inbounds { i64, ptr }, ptr %fld.load181, i32 0, i32 1
  %s.read.data186 = load ptr, ptr %s.read.data185, align 8
  %var.load187 = load i64, ptr %"var.p2'", align 8
  %idx.oob188 = icmp uge i64 %var.load187, %s.read.len184
  br i1 %idx.oob188, label %idx_oob190, label %idx_ok189

idx_ok189:                                        ; preds = %abort.dead191, %choice.exit178
  %s.byte.gep192 = getelementptr i8, ptr %s.read.data186, i64 %var.load187
  %s.byte193 = load i8, ptr %s.byte.gep192, align 1
  %s.byte.val194 = zext i8 %s.byte193 to i64
  store i64 %s.byte.val194, ptr %var.c195, align 8
  %var.load196 = load i64, ptr %var.c195, align 8
  %cmptmp200 = icmp sge i64 %var.load196, 48
  br i1 %cmptmp200, label %and.121.then, label %and.121.else

idx_oob190:                                       ; preds = %choice.exit178
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead191:                                    ; No predecessors!
  br label %idx_ok189

choice.exit197:                                   ; preds = %choice.next199, %choice.case198
  %choice.res202 = phi i1 [ true, %choice.case198 ], [ false, %choice.next199 ]
  br i1 %choice.res202, label %choice.then203, label %choice.else204

choice.case198:                                   ; preds = %and.121.exit
  br label %choice.exit197

choice.next199:                                   ; preds = %and.121.exit
  br label %choice.exit197

and.121.then:                                     ; preds = %idx_ok189
  %cmptmp201 = icmp sle i64 %var.load196, 57
  br label %and.121.exit

and.121.else:                                     ; preds = %idx_ok189
  br label %and.121.exit

and.121.exit:                                     ; preds = %and.121.else, %and.121.then
  %and.121.phi = phi i1 [ %cmptmp201, %and.121.then ], [ %cmptmp200, %and.121.else ]
  br i1 %and.121.phi, label %choice.case198, label %choice.next199

choice.then203:                                   ; preds = %choice.exit197
  store i1 true, ptr %"var.had_frac'", align 1
  %var.load206 = load i64, ptr %var.c195, align 8
  %subtmp207 = sub i64 %var.load206, 48
  store i64 %subtmp207, ptr %var.d208, align 8
  %var.load209 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp210 = icmp eq i64 %var.load209, 0
  br i1 %cmptmp210, label %and.122.then, label %and.122.else

choice.else204:                                   ; preds = %choice.exit197
  br label %loop.exit.120

choice.exit205:                                   ; preds = %choice.exit215
  br label %loop.latch.120

and.122.then:                                     ; preds = %choice.then203
  %var.load211 = load i64, ptr %var.d208, align 8
  %cmptmp212 = icmp eq i64 %var.load211, 0
  br label %and.122.exit

and.122.else:                                     ; preds = %choice.then203
  br label %and.122.exit

and.122.exit:                                     ; preds = %and.122.else, %and.122.then
  %and.122.phi = phi i1 [ %cmptmp212, %and.122.then ], [ %cmptmp210, %and.122.else ]
  br i1 %and.122.phi, label %choice.then213, label %choice.else214

choice.then213:                                   ; preds = %and.122.exit
  %var.load216 = load i64, ptr %"var.exp10'", align 8
  %subtmp217 = sub i64 %var.load216, 1
  store i64 %subtmp217, ptr %"var.exp10'", align 8
  br label %choice.exit215

choice.else214:                                   ; preds = %and.122.exit
  %var.load218 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp219 = icmp slt i64 %var.load218, 17
  br i1 %cmptmp219, label %choice.then220, label %choice.exit221

choice.exit215:                                   ; preds = %choice.exit221, %choice.then213
  %var.load231 = load i64, ptr %"var.p2'", align 8
  %addtmp232 = add i64 %var.load231, 1
  store i64 %addtmp232, ptr %"var.p2'", align 8
  br label %choice.exit205

choice.then220:                                   ; preds = %choice.else214
  %var.load222 = load double, ptr %"var.fv'", align 8
  %fmultmp223 = fmul double %var.load222, 1.000000e+01
  %var.load224 = load i64, ptr %var.d208, align 8
  %cast.sitofp225 = sitofp i64 %var.load224 to double
  %faddtmp226 = fadd double %fmultmp223, %cast.sitofp225
  store double %faddtmp226, ptr %"var.fv'", align 8
  %var.load227 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp228 = add i64 %var.load227, 1
  store i64 %addtmp228, ptr %"var.sig_digits'", align 8
  %var.load229 = load i64, ptr %"var.exp10'", align 8
  %subtmp230 = sub i64 %var.load229, 1
  store i64 %subtmp230, ptr %"var.exp10'", align 8
  br label %choice.exit221

choice.exit221:                                   ; preds = %choice.then220, %choice.else214
  br label %choice.exit215

and.123.then:                                     ; preds = %choice.exit162
  %var.load243 = load ptr, ptr %var.sc, align 8
  %fld.gep244 = getelementptr inbounds { ptr, i64 }, ptr %var.load243, i32 0, i32 0
  %fld.load245 = load ptr, ptr %fld.gep244, align 8
  %s.read.len246 = getelementptr inbounds { i64, ptr }, ptr %fld.load245, i32 0, i32 0
  %s.read.len247 = load i64, ptr %s.read.len246, align 8
  %s.read.len248 = and i64 %s.read.len247, 281474976710655
  %s.read.data249 = getelementptr inbounds { i64, ptr }, ptr %fld.load245, i32 0, i32 1
  %s.read.data250 = load ptr, ptr %s.read.data249, align 8
  %var.load251 = load i64, ptr %"var.p2'", align 8
  %idx.oob252 = icmp uge i64 %var.load251, %s.read.len248
  br i1 %idx.oob252, label %idx_oob254, label %idx_ok253

and.123.else:                                     ; preds = %choice.exit162
  br label %and.123.exit

and.123.exit:                                     ; preds = %and.123.else, %choice.exit259
  %and.123.phi = phi i1 [ %choice.res265, %choice.exit259 ], [ %cmptmp242, %and.123.else ]
  store i1 %and.123.phi, ptr %var.has_exp, align 1
  store i1 false, ptr %"var.had_exp'", align 1
  %var.load266 = load i1, ptr %var.has_exp, align 1
  br i1 %var.load266, label %choice.then267, label %choice.exit268

idx_ok253:                                        ; preds = %abort.dead255, %and.123.then
  %s.byte.gep256 = getelementptr i8, ptr %s.read.data250, i64 %var.load251
  %s.byte257 = load i8, ptr %s.byte.gep256, align 1
  %s.byte.val258 = zext i8 %s.byte257 to i64
  %val.match262 = icmp eq i64 %s.byte.val258, 101
  %val.match263 = icmp eq i64 %s.byte.val258, 69
  %case.or264 = or i1 %val.match262, %val.match263
  br i1 %case.or264, label %choice.case260, label %choice.next261

idx_oob254:                                       ; preds = %and.123.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead255:                                    ; No predecessors!
  br label %idx_ok253

choice.exit259:                                   ; preds = %choice.next261, %choice.case260
  %choice.res265 = phi i1 [ true, %choice.case260 ], [ false, %choice.next261 ]
  br label %and.123.exit

choice.case260:                                   ; preds = %idx_ok253
  br label %choice.exit259

choice.next261:                                   ; preds = %idx_ok253
  br label %choice.exit259

choice.then267:                                   ; preds = %and.123.exit
  %var.load269 = load i64, ptr %"var.p2'", align 8
  %addtmp270 = add i64 %var.load269, 1
  store i64 %addtmp270, ptr %"var.p3'", align 8
  store i1 false, ptr %"var.eneg'", align 1
  %var.load271 = load i64, ptr %"var.p3'", align 8
  %var.load275 = load ptr, ptr %var.sc, align 8
  %fld.gep276 = getelementptr inbounds { ptr, i64 }, ptr %var.load275, i32 0, i32 0
  %fld.load277 = load ptr, ptr %fld.gep276, align 8
  %str.len.query278 = getelementptr inbounds { i64, ptr }, ptr %fld.load277, i32 0, i32 0
  %str.len.query279 = load i64, ptr %str.len.query278, align 8
  %str.len.query280 = and i64 %str.len.query279, 281474976710655
  %cmptmp281 = icmp slt i64 %var.load271, %str.len.query280
  br i1 %cmptmp281, label %choice.case273, label %choice.next274

choice.exit268:                                   ; preds = %choice.exit378, %and.123.exit
  %var.load386 = load double, ptr %"var.fv'", align 8
  %fcmptmp = fcmp une double %var.load386, 0.000000e+00
  br i1 %fcmptmp, label %choice.then387, label %choice.exit388

choice.exit272:                                   ; preds = %choice.next274, %idx_ok292
  %choice.res298 = phi i64 [ %s.byte.val297, %idx_ok292 ], [ -1, %choice.next274 ]
  store i64 %choice.res298, ptr %var.e0, align 8
  %var.load299 = load i64, ptr %var.e0, align 8
  %val.match303 = icmp eq i64 %var.load299, 45
  br i1 %val.match303, label %choice.case301, label %choice.next302

choice.case273:                                   ; preds = %choice.then267
  %var.load282 = load ptr, ptr %var.sc, align 8
  %fld.gep283 = getelementptr inbounds { ptr, i64 }, ptr %var.load282, i32 0, i32 0
  %fld.load284 = load ptr, ptr %fld.gep283, align 8
  %s.read.len285 = getelementptr inbounds { i64, ptr }, ptr %fld.load284, i32 0, i32 0
  %s.read.len286 = load i64, ptr %s.read.len285, align 8
  %s.read.len287 = and i64 %s.read.len286, 281474976710655
  %s.read.data288 = getelementptr inbounds { i64, ptr }, ptr %fld.load284, i32 0, i32 1
  %s.read.data289 = load ptr, ptr %s.read.data288, align 8
  %var.load290 = load i64, ptr %"var.p3'", align 8
  %idx.oob291 = icmp uge i64 %var.load290, %s.read.len287
  br i1 %idx.oob291, label %idx_oob293, label %idx_ok292

choice.next274:                                   ; preds = %choice.then267
  br label %choice.exit272

idx_ok292:                                        ; preds = %abort.dead294, %choice.case273
  %s.byte.gep295 = getelementptr i8, ptr %s.read.data289, i64 %var.load290
  %s.byte296 = load i8, ptr %s.byte.gep295, align 1
  %s.byte.val297 = zext i8 %s.byte296 to i64
  br label %choice.exit272

idx_oob293:                                       ; preds = %choice.case273
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead294:                                    ; No predecessors!
  br label %idx_ok292

choice.exit300:                                   ; preds = %choice.next302, %choice.case301
  %var.load306 = load i64, ptr %var.e0, align 8
  %cmptmp307 = icmp eq i64 %var.load306, 43
  store i1 %cmptmp307, ptr %var.plus, align 1
  %var.load308 = load i1, ptr %var.plus, align 1
  br i1 %var.load308, label %choice.then309, label %choice.exit310

choice.case301:                                   ; preds = %choice.exit272
  store i1 true, ptr %"var.eneg'", align 1
  %var.load304 = load i64, ptr %"var.p3'", align 8
  %addtmp305 = add i64 %var.load304, 1
  store i64 %addtmp305, ptr %"var.p3'", align 8
  br label %choice.exit300

choice.next302:                                   ; preds = %choice.exit272
  br label %choice.exit300

choice.then309:                                   ; preds = %choice.exit300
  %var.load311 = load i64, ptr %"var.p3'", align 8
  %addtmp312 = add i64 %var.load311, 1
  store i64 %addtmp312, ptr %"var.p3'", align 8
  br label %choice.exit310

choice.exit310:                                   ; preds = %choice.then309, %choice.exit300
  store i64 0, ptr %"var.ev'", align 8
  store i1 false, ptr %"var.over_exp'", align 1
  store i1 false, ptr %"var.had_exp_digits'", align 1
  store i64 0, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.header.124:                                  ; preds = %loop.latch.124, %choice.exit310
  %counter.load313 = load i64, ptr %loop.idx.124, align 8
  br label %loop.body.124

loop.body.124:                                    ; preds = %loop.header.124
  %loop.rel.i314 = sub i64 %counter.load313, 0
  store i64 1, ptr %loop.step.124, align 8
  store i64 %loop.rel.i314, ptr %var._i315, align 8
  store i64 %counter.load313, ptr %var._316, align 8
  %var.load317 = load i64, ptr %"var.p3'", align 8
  %var.load318 = load ptr, ptr %var.sc, align 8
  %fld.gep319 = getelementptr inbounds { ptr, i64 }, ptr %var.load318, i32 0, i32 0
  %fld.load320 = load ptr, ptr %fld.gep319, align 8
  %str.len.query321 = getelementptr inbounds { i64, ptr }, ptr %fld.load320, i32 0, i32 0
  %str.len.query322 = load i64, ptr %str.len.query321, align 8
  %str.len.query323 = and i64 %str.len.query322, 281474976710655
  %cmptmp324 = icmp sge i64 %var.load317, %str.len.query323
  br i1 %cmptmp324, label %choice.then325, label %choice.exit326

loop.exit.nat.124:                                ; No predecessors!
  br label %loop.exit.124

loop.latch.124:                                   ; preds = %choice.exit352
  %step.val365 = load i64, ptr %loop.step.124, align 8
  %loop.next366 = add i64 %counter.load313, %step.val365
  store i64 %loop.next366, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.exit.124:                                    ; preds = %choice.else351, %choice.then325, %loop.exit.nat.124
  %var.load367 = load i1, ptr %"var.had_exp_digits'", align 1
  store i1 %var.load367, ptr %"var.had_exp'", align 1
  %var.load368 = load i64, ptr %"var.p3'", align 8
  store i64 %var.load368, ptr %"var.p2'", align 8
  %var.load369 = load i1, ptr %"var.over_exp'", align 1
  br i1 %var.load369, label %choice.then370, label %choice.else371

choice.then325:                                   ; preds = %loop.body.124
  br label %loop.exit.124

choice.exit326:                                   ; preds = %loop.body.124
  %var.load327 = load ptr, ptr %var.sc, align 8
  %fld.gep328 = getelementptr inbounds { ptr, i64 }, ptr %var.load327, i32 0, i32 0
  %fld.load329 = load ptr, ptr %fld.gep328, align 8
  %s.read.len330 = getelementptr inbounds { i64, ptr }, ptr %fld.load329, i32 0, i32 0
  %s.read.len331 = load i64, ptr %s.read.len330, align 8
  %s.read.len332 = and i64 %s.read.len331, 281474976710655
  %s.read.data333 = getelementptr inbounds { i64, ptr }, ptr %fld.load329, i32 0, i32 1
  %s.read.data334 = load ptr, ptr %s.read.data333, align 8
  %var.load335 = load i64, ptr %"var.p3'", align 8
  %idx.oob336 = icmp uge i64 %var.load335, %s.read.len332
  br i1 %idx.oob336, label %idx_oob338, label %idx_ok337

idx_ok337:                                        ; preds = %abort.dead339, %choice.exit326
  %s.byte.gep340 = getelementptr i8, ptr %s.read.data334, i64 %var.load335
  %s.byte341 = load i8, ptr %s.byte.gep340, align 1
  %s.byte.val342 = zext i8 %s.byte341 to i64
  store i64 %s.byte.val342, ptr %var.ec, align 8
  %var.load343 = load i64, ptr %var.ec, align 8
  %cmptmp347 = icmp sge i64 %var.load343, 48
  br i1 %cmptmp347, label %and.125.then, label %and.125.else

idx_oob338:                                       ; preds = %choice.exit326
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead339:                                    ; No predecessors!
  br label %idx_ok337

choice.exit344:                                   ; preds = %choice.next346, %choice.case345
  %choice.res349 = phi i1 [ true, %choice.case345 ], [ false, %choice.next346 ]
  br i1 %choice.res349, label %choice.then350, label %choice.else351

choice.case345:                                   ; preds = %and.125.exit
  br label %choice.exit344

choice.next346:                                   ; preds = %and.125.exit
  br label %choice.exit344

and.125.then:                                     ; preds = %idx_ok337
  %cmptmp348 = icmp sle i64 %var.load343, 57
  br label %and.125.exit

and.125.else:                                     ; preds = %idx_ok337
  br label %and.125.exit

and.125.exit:                                     ; preds = %and.125.else, %and.125.then
  %and.125.phi = phi i1 [ %cmptmp348, %and.125.then ], [ %cmptmp347, %and.125.else ]
  br i1 %and.125.phi, label %choice.case345, label %choice.next346

choice.then350:                                   ; preds = %choice.exit344
  store i1 true, ptr %"var.had_exp_digits'", align 1
  %var.load353 = load i64, ptr %var.ec, align 8
  %subtmp354 = sub i64 %var.load353, 48
  store i64 %subtmp354, ptr %var.ed, align 8
  %var.load355 = load i64, ptr %"var.ev'", align 8
  %cmptmp356 = icmp sgt i64 %var.load355, 1000000
  br i1 %cmptmp356, label %choice.then357, label %choice.else358

choice.else351:                                   ; preds = %choice.exit344
  br label %loop.exit.124

choice.exit352:                                   ; preds = %choice.exit359
  br label %loop.latch.124

choice.then357:                                   ; preds = %choice.then350
  store i1 true, ptr %"var.over_exp'", align 1
  br label %choice.exit359

choice.else358:                                   ; preds = %choice.then350
  %var.load360 = load i64, ptr %"var.ev'", align 8
  %multmp = mul i64 %var.load360, 10
  %var.load361 = load i64, ptr %var.ed, align 8
  %addtmp362 = add i64 %multmp, %var.load361
  store i64 %addtmp362, ptr %"var.ev'", align 8
  br label %choice.exit359

choice.exit359:                                   ; preds = %choice.else358, %choice.then357
  %var.load363 = load i64, ptr %"var.p3'", align 8
  %addtmp364 = add i64 %var.load363, 1
  store i64 %addtmp364, ptr %"var.p3'", align 8
  br label %choice.exit352

choice.then370:                                   ; preds = %loop.exit.124
  br label %choice.exit372

choice.else371:                                   ; preds = %loop.exit.124
  %var.load373 = load i64, ptr %"var.ev'", align 8
  br label %choice.exit372

choice.exit372:                                   ; preds = %choice.else371, %choice.then370
  %choice.res374 = phi i64 [ 1000000, %choice.then370 ], [ %var.load373, %choice.else371 ]
  store i64 %choice.res374, ptr %var.exp_val, align 8
  %var.load375 = load i1, ptr %"var.eneg'", align 1
  br i1 %var.load375, label %choice.then376, label %choice.else377

choice.then376:                                   ; preds = %choice.exit372
  %var.load379 = load i64, ptr %"var.exp10'", align 8
  %var.load380 = load i64, ptr %var.exp_val, align 8
  %subtmp381 = sub i64 %var.load379, %var.load380
  br label %choice.exit378

choice.else377:                                   ; preds = %choice.exit372
  %var.load382 = load i64, ptr %"var.exp10'", align 8
  %var.load383 = load i64, ptr %var.exp_val, align 8
  %addtmp384 = add i64 %var.load382, %var.load383
  br label %choice.exit378

choice.exit378:                                   ; preds = %choice.else377, %choice.then376
  %choice.res385 = phi i64 [ %subtmp381, %choice.then376 ], [ %addtmp384, %choice.else377 ]
  store i64 %choice.res385, ptr %"var.exp10'", align 8
  br label %choice.exit268

choice.then387:                                   ; preds = %choice.exit268
  %var.load389 = load i64, ptr %"var.exp10'", align 8
  %cmptmp390 = icmp slt i64 %var.load389, -400
  br i1 %cmptmp390, label %choice.then391, label %choice.else392

choice.exit388:                                   ; preds = %loop.exit.126, %choice.exit268
  %var.load427 = load i1, ptr %"var.had_int'", align 1
  br i1 %var.load427, label %and.127.then, label %and.127.else

choice.then391:                                   ; preds = %choice.then387
  br label %choice.exit393

choice.else392:                                   ; preds = %choice.then387
  %var.load394 = load i64, ptr %"var.exp10'", align 8
  %cmptmp395 = icmp sgt i64 %var.load394, 400
  br i1 %cmptmp395, label %choice.then396, label %choice.else397

choice.exit393:                                   ; preds = %choice.exit398, %choice.then391
  %choice.res401 = phi i64 [ -400, %choice.then391 ], [ %choice.res400, %choice.exit398 ]
  store i64 %choice.res401, ptr %var.eclamp, align 8
  %var.load402 = load i64, ptr %var.eclamp, align 8
  %cmptmp403 = icmp slt i64 %var.load402, 0
  br i1 %cmptmp403, label %choice.then404, label %choice.else405

choice.then396:                                   ; preds = %choice.else392
  br label %choice.exit398

choice.else397:                                   ; preds = %choice.else392
  %var.load399 = load i64, ptr %"var.exp10'", align 8
  br label %choice.exit398

choice.exit398:                                   ; preds = %choice.else397, %choice.then396
  %choice.res400 = phi i64 [ 400, %choice.then396 ], [ %var.load399, %choice.else397 ]
  br label %choice.exit393

choice.then404:                                   ; preds = %choice.exit393
  %var.load407 = load i64, ptr %var.eclamp, align 8
  %subtmp408 = sub i64 0, %var.load407
  br label %choice.exit406

choice.else405:                                   ; preds = %choice.exit393
  %var.load409 = load i64, ptr %var.eclamp, align 8
  br label %choice.exit406

choice.exit406:                                   ; preds = %choice.else405, %choice.then404
  %choice.res410 = phi i64 [ %subtmp408, %choice.then404 ], [ %var.load409, %choice.else405 ]
  store i64 %choice.res410, ptr %var.abs_e, align 8
  %var.load411 = load i64, ptr %var.abs_e, align 8
  store i64 0, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.header.126:                                  ; preds = %loop.latch.126, %choice.exit406
  %counter.load412 = load i64, ptr %loop.idx.126, align 8
  %loop.cond = icmp slt i64 %counter.load412, %var.load411
  br i1 %loop.cond, label %loop.body.126, label %loop.exit.nat.126

loop.body.126:                                    ; preds = %loop.header.126
  %loop.rel.i413 = sub i64 %counter.load412, 0
  store i64 1, ptr %loop.step.126, align 8
  store i64 %loop.rel.i413, ptr %var._i414, align 8
  store i64 %counter.load412, ptr %var._415, align 8
  %var.load416 = load i64, ptr %var.eclamp, align 8
  %cmptmp417 = icmp slt i64 %var.load416, 0
  br i1 %cmptmp417, label %choice.then418, label %choice.else419

loop.exit.nat.126:                                ; preds = %loop.header.126
  br label %loop.exit.126

loop.latch.126:                                   ; preds = %choice.exit420
  %step.val425 = load i64, ptr %loop.step.126, align 8
  %loop.next426 = add i64 %counter.load412, %step.val425
  store i64 %loop.next426, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.exit.126:                                    ; preds = %loop.exit.nat.126
  br label %choice.exit388

choice.then418:                                   ; preds = %loop.body.126
  %var.load421 = load double, ptr %"var.fv'", align 8
  %fdivtmp = fdiv double %var.load421, 1.000000e+01
  br label %choice.exit420

choice.else419:                                   ; preds = %loop.body.126
  %var.load422 = load double, ptr %"var.fv'", align 8
  %fmultmp423 = fmul double %var.load422, 1.000000e+01
  br label %choice.exit420

choice.exit420:                                   ; preds = %choice.else419, %choice.then418
  %choice.res424 = phi double [ %fdivtmp, %choice.then418 ], [ %fmultmp423, %choice.else419 ]
  store double %choice.res424, ptr %"var.fv'", align 8
  br label %loop.latch.126

and.127.then:                                     ; preds = %choice.exit388
  %var.load428 = load i1, ptr %var.has_dot, align 1
  %nottmp = xor i1 %var.load428, true
  br i1 %nottmp, label %or.128.then, label %or.128.else

and.127.else:                                     ; preds = %choice.exit388
  br label %and.127.exit

and.127.exit:                                     ; preds = %and.127.else, %or.128.exit
  %and.127.phi = phi i1 [ %or.128.phi, %or.128.exit ], [ %var.load427, %and.127.else ]
  br i1 %and.127.phi, label %and.129.then, label %and.129.else

or.128.then:                                      ; preds = %and.127.then
  br label %or.128.exit

or.128.else:                                      ; preds = %and.127.then
  %var.load429 = load i1, ptr %"var.had_frac'", align 1
  br label %or.128.exit

or.128.exit:                                      ; preds = %or.128.else, %or.128.then
  %or.128.phi = phi i1 [ %nottmp, %or.128.then ], [ %var.load429, %or.128.else ]
  br label %and.127.exit

and.129.then:                                     ; preds = %and.127.exit
  %var.load430 = load i1, ptr %var.has_exp, align 1
  %nottmp431 = xor i1 %var.load430, true
  br i1 %nottmp431, label %or.130.then, label %or.130.else

and.129.else:                                     ; preds = %and.127.exit
  br label %and.129.exit

and.129.exit:                                     ; preds = %and.129.else, %or.130.exit
  %and.129.phi = phi i1 [ %or.130.phi, %or.130.exit ], [ %and.127.phi, %and.129.else ]
  store i1 %and.129.phi, ptr %var.valid, align 1
  %var.load433 = load i1, ptr %var.valid, align 1
  br i1 %var.load433, label %choice.then434, label %choice.else435

or.130.then:                                      ; preds = %and.129.then
  br label %or.130.exit

or.130.else:                                      ; preds = %and.129.then
  %var.load432 = load i1, ptr %"var.had_exp'", align 1
  br label %or.130.exit

or.130.exit:                                      ; preds = %or.130.else, %or.130.then
  %or.130.phi = phi i1 [ %nottmp431, %or.130.then ], [ %var.load432, %or.130.else ]
  br label %and.129.exit

choice.then434:                                   ; preds = %and.129.exit
  %var.load437 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load437, label %choice.then438, label %choice.else439

choice.else435:                                   ; preds = %and.129.exit
  %arena.cur452 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc453 = call ptr @dva_arena_alloc(ptr %arena.cur452, i64 56)
  %err.code.gep454 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 0
  store i64 400, ptr %err.code.gep454, align 8
  %err.msg.gep455 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep455, align 8
  %err.file.gep456 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep456, align 8
  %err.line.gep457 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 3
  store i64 0, ptr %err.line.gep457, align 8
  %err.col.gep458 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 4
  store i64 0, ptr %err.col.gep458, align 8
  %err.ctx.gep459 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 5
  %var.load460 = load i64, ptr %"var.p'", align 8
  %arena.cur461 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld463 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc462, i32 0, i32 0
  store i64 %var.load460, ptr %rec.fld463, align 8
  %rec.fld464 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc462, i32 0, i32 1
  store i64 0, ptr %rec.fld464, align 8
  %ctx.0.gep465 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc462, i32 0, i32 0
  %ctx.0466 = load i64, ptr %ctx.0.gep465, align 8
  %ctx.1.gep467 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc462, i32 0, i32 1
  %ctx.1468 = load i64, ptr %ctx.1.gep467, align 8
  %err.ctx0.gep469 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep459, i32 0, i32 0
  store i64 %ctx.0466, ptr %err.ctx0.gep469, align 8
  %err.ctx1.gep470 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep459, i32 0, i32 1
  store i64 %ctx.1468, ptr %err.ctx1.gep470, align 8
  %p.to.i64471 = ptrtoint ptr %err.alloc453 to i64
  %ram.pay472 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64471, 1
  br label %choice.exit436

choice.exit436:                                   ; preds = %choice.else435, %choice.exit440
  %choice.res473 = phi { i1, i64 } [ %ram.pay451, %choice.exit440 ], [ %ram.pay472, %choice.else435 ]
  br label %choice.exit74

choice.then438:                                   ; preds = %choice.then434
  %var.load441 = load double, ptr %"var.fv'", align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load441
  br label %choice.exit440

choice.else439:                                   ; preds = %choice.then434
  %var.load442 = load double, ptr %"var.fv'", align 8
  br label %choice.exit440

choice.exit440:                                   ; preds = %choice.else439, %choice.then438
  %choice.res443 = phi double [ %fsubtmp, %choice.then438 ], [ %var.load442, %choice.else439 ]
  store double %choice.res443, ptr %var.f, align 8
  %var.load444 = load ptr, ptr %var.sc, align 8
  %var.load445 = load i64, ptr %"var.p2'", align 8
  %fld.gep446 = getelementptr inbounds { ptr, i64 }, ptr %var.load444, i32 0, i32 1
  store i64 %var.load445, ptr %fld.gep446, align 8
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load448 = load double, ptr %var.f, align 8
  %arena.cur449 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur449, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store double %var.load448, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64450 = ptrtoint ptr %enum.alloc to i64
  %ram.pay451 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64450, 1
  br label %choice.exit436
}

define internal { i1, i64 } @"json::#parse_array_after_value"(ptr %0, ptr %1, { i1, i64 } %2) #0 {
entry:
  %var.e = alloca ptr, align 8
  %var._166 = alloca ptr, align 8
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
  %ram.pay164 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr165 = inttoptr i64 %ram.pay164 to ptr
  store ptr %pay.ptr165, ptr %var._166, align 8
  store ptr %pay.ptr165, ptr %var.e, align 8
  %var.load167 = load ptr, ptr %var.e, align 8
  %p.to.i64168 = ptrtoint ptr %var.load167 to i64
  %ram.pay169 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64168, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit28
  %choice.res170 = phi { i1, i64 } [ %choice.res163, %choice.exit28 ], [ %ram.pay169, %choice.else ]
  ret { i1, i64 } %choice.res170

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %cmptmp = icmp slt i64 %var.load13, %str.len.query19
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit14:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load27 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load27, 93
  br i1 %val.match, label %choice.case29, label %choice.next30

choice.case:                                      ; preds = %a.store
  %var.load20 = load ptr, ptr %var.sc, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i64 }, ptr %var.load20, i32 0, i32 0
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load22, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load22, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load26, %s.read.len24
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %a.store
  br label %choice.exit14

idx_ok:                                           ; preds = %abort.dead, %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 %var.load26
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit14

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit28:                                    ; preds = %choice.next74, %choice.exit116, %a.view.off68
  %choice.res163 = phi { i1, i64 } [ %ram.pay72, %a.view.off68 ], [ %choice.res141, %choice.exit116 ], [ %ram.pay162, %choice.next74 ]
  br label %choice.exit

choice.case29:                                    ; preds = %choice.exit14
  %var.load31 = load ptr, ptr %var.sc, align 8
  %var.load32 = load ptr, ptr %var.sc, align 8
  %fld.gep33 = getelementptr inbounds { ptr, i64 }, ptr %var.load32, i32 0, i32 1
  %fld.load34 = load i64, ptr %fld.gep33, align 8
  %addtmp = add i64 %fld.load34, 1
  %fld.gep35 = getelementptr inbounds { ptr, i64 }, ptr %var.load31, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep35, align 8
  %var.load36 = load ptr, ptr %var.elems, align 8
  %a.load37 = load ptr, ptr %var.elems, align 8
  %a.null38 = icmp eq ptr %a.load37, null
  br i1 %a.null38, label %a.create39, label %a.after40

choice.next30:                                    ; preds = %choice.exit14
  %val.match75 = icmp eq i64 %var.load27, 44
  br i1 %val.match75, label %choice.case73, label %choice.next74

a.create39:                                       ; preds = %choice.case29
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 24)
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 128)
  %a.len.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 0
  store i64 0, ptr %a.len.gep45, align 8
  %a.data.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 1
  store ptr %a.buf44, ptr %a.data.gep46, align 8
  %a.cap.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 2
  store i64 16, ptr %a.cap.gep47, align 8
  store ptr %a.create42, ptr %var.elems, align 8
  br label %a.after40

a.after40:                                        ; preds = %a.create39, %choice.case29
  %a.load248 = load ptr, ptr %var.elems, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load248, i32 0, i32 0
  %a.len.query49 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query49, ptr %var.n, align 8
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load51 = load ptr, ptr %var.elems, align 8
  %a.load52 = load ptr, ptr %var.elems, align 8
  %a.null53 = icmp eq ptr %a.load52, null
  br i1 %a.null53, label %a.create54, label %a.after55

a.create54:                                       ; preds = %a.after40
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 24)
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 128)
  %a.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 0
  store i64 0, ptr %a.len.gep60, align 8
  %a.data.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 1
  store ptr %a.buf59, ptr %a.data.gep61, align 8
  %a.cap.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 2
  store i64 16, ptr %a.cap.gep62, align 8
  store ptr %a.create57, ptr %var.elems, align 8
  br label %a.after55

a.after55:                                        ; preds = %a.create54, %a.after40
  %a.load263 = load ptr, ptr %var.elems, align 8
  %var.load64 = load i64, ptr %var.n, align 8
  %a.view.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load263, i32 0, i32 0
  %a.view.len65 = load i64, ptr %a.view.len, align 8
  %rel.start = add i64 %a.view.len65, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %a.view.len65
  %final.start = select i1 %start.gt.len, i64 %a.view.len65, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load64, 0
  %rel.end = add i64 %a.view.len65, %var.load64
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load64
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len65
  %final.end = select i1 %end.gt.len, i64 %a.view.len65, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load263, i32 0, i32 1
  %a.view.data66 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off67, 0
  %ovf = extractvalue { i64, i1 } %a.view.off67, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off68

a.view.off68:                                     ; preds = %abort.dead69, %a.after55
  %a.view.data70 = getelementptr i8, ptr %a.view.data66, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  %a.view.data.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 0
  store ptr %a.view.data70, ptr %a.view.data.gep, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay72 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit28

str_overflow_abort:                               ; preds = %a.after55
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead69:                                     ; No predecessors!
  br label %a.view.off68

choice.case73:                                    ; preds = %choice.next30
  %var.load76 = load ptr, ptr %var.sc, align 8
  %var.load77 = load ptr, ptr %var.sc, align 8
  %fld.gep78 = getelementptr inbounds { ptr, i64 }, ptr %var.load77, i32 0, i32 1
  %fld.load79 = load i64, ptr %fld.gep78, align 8
  %addtmp80 = add i64 %fld.load79, 1
  %fld.gep81 = getelementptr inbounds { ptr, i64 }, ptr %var.load76, i32 0, i32 1
  store i64 %addtmp80, ptr %fld.gep81, align 8
  %var.load82 = load ptr, ptr %var.sc, align 8
  %var.load83 = load ptr, ptr %var.sc, align 8
  %fld.gep84 = getelementptr inbounds { ptr, i64 }, ptr %var.load83, i32 0, i32 1
  %fld.load85 = load i64, ptr %fld.gep84, align 8
  %call.res86 = call i64 @"json::#skip_ws"(ptr %var.load82, i64 %fld.load85)
  store i64 %call.res86, ptr %var.p2, align 8
  %var.load87 = load i64, ptr %var.p2, align 8
  %var.load91 = load ptr, ptr %var.sc, align 8
  %fld.gep92 = getelementptr inbounds { ptr, i64 }, ptr %var.load91, i32 0, i32 0
  %fld.load93 = load ptr, ptr %fld.gep92, align 8
  %str.len.query94 = getelementptr inbounds { i64, ptr }, ptr %fld.load93, i32 0, i32 0
  %str.len.query95 = load i64, ptr %str.len.query94, align 8
  %str.len.query96 = and i64 %str.len.query95, 281474976710655
  %cmptmp97 = icmp slt i64 %var.load87, %str.len.query96
  br i1 %cmptmp97, label %choice.case89, label %choice.next90

choice.next74:                                    ; preds = %choice.next30
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 56)
  %err.code.gep144 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 0
  store i64 400, ptr %err.code.gep144, align 8
  %err.msg.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep145, align 8
  %err.file.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep146, align 8
  %err.line.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 3
  store i64 0, ptr %err.line.gep147, align 8
  %err.col.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 4
  store i64 0, ptr %err.col.gep148, align 8
  %err.ctx.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 5
  %var.load150 = load i64, ptr %var.p, align 8
  %arena.cur151 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld153 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc152, i32 0, i32 0
  store i64 %var.load150, ptr %rec.fld153, align 8
  %rec.fld154 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc152, i32 0, i32 1
  store i64 0, ptr %rec.fld154, align 8
  %ctx.0.gep155 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc152, i32 0, i32 0
  %ctx.0156 = load i64, ptr %ctx.0.gep155, align 8
  %ctx.1.gep157 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc152, i32 0, i32 1
  %ctx.1158 = load i64, ptr %ctx.1.gep157, align 8
  %err.ctx0.gep159 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 0
  store i64 %ctx.0156, ptr %err.ctx0.gep159, align 8
  %err.ctx1.gep160 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 1
  store i64 %ctx.1158, ptr %err.ctx1.gep160, align 8
  %p.to.i64161 = ptrtoint ptr %err.alloc143 to i64
  %ram.pay162 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64161, 1
  br label %choice.exit28

choice.exit88:                                    ; preds = %choice.next90, %idx_ok108
  %choice.res114 = phi i64 [ %s.byte.val113, %idx_ok108 ], [ -1, %choice.next90 ]
  store i64 %choice.res114, ptr %var.c2, align 8
  %var.load115 = load i64, ptr %var.c2, align 8
  %val.match119 = icmp eq i64 %var.load115, 93
  br i1 %val.match119, label %choice.case117, label %choice.next118

choice.case89:                                    ; preds = %choice.case73
  %var.load98 = load ptr, ptr %var.sc, align 8
  %fld.gep99 = getelementptr inbounds { ptr, i64 }, ptr %var.load98, i32 0, i32 0
  %fld.load100 = load ptr, ptr %fld.gep99, align 8
  %s.read.len101 = getelementptr inbounds { i64, ptr }, ptr %fld.load100, i32 0, i32 0
  %s.read.len102 = load i64, ptr %s.read.len101, align 8
  %s.read.len103 = and i64 %s.read.len102, 281474976710655
  %s.read.data104 = getelementptr inbounds { i64, ptr }, ptr %fld.load100, i32 0, i32 1
  %s.read.data105 = load ptr, ptr %s.read.data104, align 8
  %var.load106 = load i64, ptr %var.p2, align 8
  %idx.oob107 = icmp uge i64 %var.load106, %s.read.len103
  br i1 %idx.oob107, label %idx_oob109, label %idx_ok108

choice.next90:                                    ; preds = %choice.case73
  br label %choice.exit88

idx_ok108:                                        ; preds = %abort.dead110, %choice.case89
  %s.byte.gep111 = getelementptr i8, ptr %s.read.data105, i64 %var.load106
  %s.byte112 = load i8, ptr %s.byte.gep111, align 1
  %s.byte.val113 = zext i8 %s.byte112 to i64
  br label %choice.exit88

idx_oob109:                                       ; preds = %choice.case89
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %idx_ok108

choice.exit116:                                   ; preds = %a.after131, %choice.case117
  %choice.res141 = phi { i1, i64 } [ %ram.pay125, %choice.case117 ], [ %call.res140, %a.after131 ]
  br label %choice.exit28

choice.case117:                                   ; preds = %choice.exit88
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 56)
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
  %var.load121 = load i64, ptr %var.p2, align 8
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load121, ptr %rec.fld, align 8
  %rec.fld123 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld123, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64124 = ptrtoint ptr %err.alloc to i64
  %ram.pay125 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64124, 1
  br label %choice.exit116

choice.next118:                                   ; preds = %choice.exit88
  %var.load126 = load ptr, ptr %var.sc, align 8
  %var.load127 = load ptr, ptr %var.elems, align 8
  %a.load128 = load ptr, ptr %var.elems, align 8
  %a.null129 = icmp eq ptr %a.load128, null
  br i1 %a.null129, label %a.create130, label %a.after131

a.create130:                                      ; preds = %choice.next118
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 24)
  %arena.cur134 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 128)
  %a.len.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create133, i32 0, i32 0
  store i64 0, ptr %a.len.gep136, align 8
  %a.data.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create133, i32 0, i32 1
  store ptr %a.buf135, ptr %a.data.gep137, align 8
  %a.cap.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create133, i32 0, i32 2
  store i64 16, ptr %a.cap.gep138, align 8
  store ptr %a.create133, ptr %var.elems, align 8
  br label %a.after131

a.after131:                                       ; preds = %a.create130, %choice.next118
  %a.load2139 = load ptr, ptr %var.elems, align 8
  %call.res140 = call { i1, i64 } @"json::#parse_array_loop"(ptr %var.load126, ptr %a.load2139)
  br label %choice.exit116
}

define { i1, i64 } @"json::parse"(ptr %0) #0 {
entry:
  %var.r = alloca { i1, i64 }, align 8
  %var.sc = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var._21 = alloca ptr, align 8
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
  %cmptmp = icmp eq i64 %var.load3, %str.len.query8
  br i1 %cmptmp, label %choice.then9, label %choice.else10

choice.else:                                      ; preds = %entry
  %ram.pay19 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr20 = inttoptr i64 %ram.pay19 to ptr
  store ptr %pay.ptr20, ptr %var._21, align 8
  store ptr %pay.ptr20, ptr %var.err, align 8
  %var.load22 = load ptr, ptr %var.err, align 8
  %p.to.i6423 = ptrtoint ptr %var.load22 to i64
  %ram.pay24 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6423, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit11
  %choice.res25 = phi { i1, i64 } [ %choice.res, %choice.exit11 ], [ %ram.pay24, %choice.else ]
  ret { i1, i64 } %choice.res25

choice.then9:                                     ; preds = %choice.then
  %var.load12 = load ptr, ptr %var.val, align 8
  %p.to.i64 = ptrtoint ptr %var.load12 to i64
  %ram.pay13 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit11

choice.else10:                                    ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
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
  %var.load14 = load i64, ptr %var.p, align 8
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load14, ptr %rec.fld, align 8
  %rec.fld16 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld16, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6417 = ptrtoint ptr %err.alloc to i64
  %ram.pay18 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6417, 1
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %choice.then9
  %choice.res = phi { i1, i64 } [ %ram.pay13, %choice.then9 ], [ %ram.pay18, %choice.else10 ]
  br label %choice.exit
}

define internal ptr @"json::#json_type_err"(ptr %0) #0 {
entry:
  %var.msg = alloca ptr, align 8
  store ptr %0, ptr %var.msg, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %var.load = load ptr, ptr %var.msg, align 8
  %concat.lhs = load i64, ptr @str.25.struct, align 8
  %concat.lhs1 = and i64 %concat.lhs, 281474976710655
  %concat.lhs2 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.25.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %concat.rhs3 = load i64, ptr %concat.rhs, align 8
  %concat.rhs4 = and i64 %concat.rhs3, 281474976710655
  %concat.rhs5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs6 = load ptr, ptr %concat.rhs5, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len7

concat.sum.len7:                                  ; preds = %abort.dead, %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf9 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf9, label %str_overflow_abort11, label %concat.tot.len10

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %concat.sum.len7

concat.tot.len10:                                 ; preds = %abort.dead12, %concat.sum.len7
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 %sum8)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs2, i64 %concat.lhs1, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs6, i64 %concat.rhs4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
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
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld16 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld16, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  ret ptr %err.alloc

str_overflow_abort11:                             ; preds = %concat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %concat.tot.len10
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
  %var.ch_ = alloca i64, align 8
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
  br i1 true, label %br.b1.131, label %br.c2.131

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
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len12 = load i64, ptr %str.len, align 8
  %str.len13 = and i64 %str.len12, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.132, align 8
  br label %loop.header.132

loop.header.132:                                  ; preds = %loop.latch.132, %br.done.131
  %counter.load = load i64, ptr %loop.idx.132, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len13
  br i1 %loop.cond, label %loop.body.132, label %loop.exit.nat.132

loop.body.132:                                    ; preds = %loop.header.132
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.132, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.ch_, align 8
  %var.load15 = load i64, ptr %var.ch_, align 8
  %bandtmp = and i64 %var.load15, 255
  store i64 %bandtmp, ptr %var.c, align 8
  %var.load16 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load16, 34
  br i1 %val.match, label %choice.case, label %choice.next

loop.exit.nat.132:                                ; preds = %loop.header.132
  br label %loop.exit.132

loop.latch.132:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.132, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.132, align 8
  br label %loop.header.132

loop.exit.132:                                    ; preds = %loop.exit.nat.132
  %b.load526 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len527 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load526, i32 0, i32 0
  %b.rn.cur.len528 = load i64, ptr %b.rn.cur.len527, align 8
  %b.rn.new.len529 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len528, i64 1)
  %sum530 = extractvalue { i64, i1 } %b.rn.new.len529, 0
  %ovf531 = extractvalue { i64, i1 } %b.rn.new.len529, 1
  br i1 %ovf531, label %str_overflow_abort533, label %b.rn.new.len532

choice.exit:                                      ; preds = %b.push_done, %br.done.134, %b.grow_done303, %b.grow_done257, %b.grow_done211, %b.grow_done165, %b.grow_done119, %b.grow_done73, %b.grow_done30
  br label %loop.latch.132

choice.case:                                      ; preds = %loop.body.132
  %b.load17 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.26.struct, align 8
  %app.str.len18 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 0
  %b.app.cur.len19 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len19, i64 %app.str.len18)
  %sum20 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf21 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.app.new.len22

choice.next:                                      ; preds = %loop.body.132
  %val.match55 = icmp eq i64 %var.load16, 92
  br i1 %val.match55, label %choice.case53, label %choice.next54

b.app.new.len22:                                  ; preds = %abort.dead24, %choice.case
  %b.cap25 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 2
  %b.cap26 = load i64, ptr %b.cap25, align 8
  %b.need.grow27 = icmp slt i64 %b.cap26, %sum20
  br i1 %b.need.grow27, label %b.grow228, label %b.nogrow229

str_overflow_abort23:                             ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %b.app.new.len22

b.grow228:                                        ; preds = %b.app.new.len22
  %b.cap231 = mul i64 %b.cap26, 2
  %b.cap.small32 = icmp slt i64 %b.cap231, 16
  %b.cap.grow33 = select i1 %b.cap.small32, i64 16, i64 %b.cap231
  %b.cap.need34 = icmp slt i64 %b.cap.grow33, %sum20
  %b.new.cap35 = select i1 %b.cap.need34, i64 %sum20, i64 %b.cap.grow33
  %b.cur.len236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 0
  %b.cur.len237 = load i64, ptr %b.cur.len236, align 8
  %b.cur.data238 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 1
  %b.cur.data239 = load ptr, ptr %b.cur.data238, align 8
  %b.new.buf.len240 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap35, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len240, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len240, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len243

b.nogrow229:                                      ; preds = %b.app.new.len22
  br label %b.grow_done30

b.grow_done30:                                    ; preds = %b.nogrow229, %b.new.buf.len243
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 1
  %b.app.data51 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data51, i64 %b.app.cur.len19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len18, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data51, i64 %sum20
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 0
  store i64 %sum20, ptr %b.len.gep52, align 8
  br label %choice.exit

b.new.buf.len243:                                 ; preds = %abort.dead45, %b.grow228
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf247 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf247, ptr align 1 %b.cur.data239, i64 %b.cur.len237, i1 false)
  %b.grow2.nul48 = getelementptr i8, ptr %b.new.buf247, i64 %b.cur.len237
  store i8 0, ptr %b.grow2.nul48, align 1
  %b.new.data2.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 1
  store ptr %b.new.buf247, ptr %b.new.data2.gep49, align 8
  %b.new.cap2.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load17, i32 0, i32 2
  store i64 %b.new.cap35, ptr %b.new.cap2.gep50, align 8
  br label %b.grow_done30

str_overflow_abort44:                             ; preds = %b.grow228
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %b.new.buf.len243

choice.case53:                                    ; preds = %choice.next
  %b.load56 = load ptr, ptr %var.b, align 8
  %app.str.len57 = load i64, ptr @str.27.struct, align 8
  %app.str.len58 = and i64 %app.str.len57, 281474976710655
  %app.str.data59 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %b.app.cur.len60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 0
  %b.app.cur.len61 = load i64, ptr %b.app.cur.len60, align 8
  %b.app.new.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len61, i64 %app.str.len58)
  %sum63 = extractvalue { i64, i1 } %b.app.new.len62, 0
  %ovf64 = extractvalue { i64, i1 } %b.app.new.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %b.app.new.len65

choice.next54:                                    ; preds = %choice.next
  %val.match101 = icmp eq i64 %var.load16, 8
  br i1 %val.match101, label %choice.case99, label %choice.next100

b.app.new.len65:                                  ; preds = %abort.dead67, %choice.case53
  %b.cap68 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 2
  %b.cap69 = load i64, ptr %b.cap68, align 8
  %b.need.grow70 = icmp slt i64 %b.cap69, %sum63
  br i1 %b.need.grow70, label %b.grow271, label %b.nogrow272

str_overflow_abort66:                             ; preds = %choice.case53
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %b.app.new.len65

b.grow271:                                        ; preds = %b.app.new.len65
  %b.cap274 = mul i64 %b.cap69, 2
  %b.cap.small75 = icmp slt i64 %b.cap274, 16
  %b.cap.grow76 = select i1 %b.cap.small75, i64 16, i64 %b.cap274
  %b.cap.need77 = icmp slt i64 %b.cap.grow76, %sum63
  %b.new.cap78 = select i1 %b.cap.need77, i64 %sum63, i64 %b.cap.grow76
  %b.cur.len279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 0
  %b.cur.len280 = load i64, ptr %b.cur.len279, align 8
  %b.cur.data281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 1
  %b.cur.data282 = load ptr, ptr %b.cur.data281, align 8
  %b.new.buf.len283 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap78, i64 1)
  %sum84 = extractvalue { i64, i1 } %b.new.buf.len283, 0
  %ovf85 = extractvalue { i64, i1 } %b.new.buf.len283, 1
  br i1 %ovf85, label %str_overflow_abort87, label %b.new.buf.len286

b.nogrow272:                                      ; preds = %b.app.new.len65
  br label %b.grow_done73

b.grow_done73:                                    ; preds = %b.nogrow272, %b.new.buf.len286
  %b.app.data94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 1
  %b.app.data95 = load ptr, ptr %b.app.data94, align 8
  %b.app.dst96 = getelementptr i8, ptr %b.app.data95, i64 %b.app.cur.len61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst96, ptr align 1 %app.str.data59, i64 %app.str.len58, i1 false)
  %b.app.nul97 = getelementptr i8, ptr %b.app.data95, i64 %sum63
  store i8 0, ptr %b.app.nul97, align 1
  %b.len.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 0
  store i64 %sum63, ptr %b.len.gep98, align 8
  br label %choice.exit

b.new.buf.len286:                                 ; preds = %abort.dead88, %b.grow271
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf290 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 %sum84)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf290, ptr align 1 %b.cur.data282, i64 %b.cur.len280, i1 false)
  %b.grow2.nul91 = getelementptr i8, ptr %b.new.buf290, i64 %b.cur.len280
  store i8 0, ptr %b.grow2.nul91, align 1
  %b.new.data2.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 1
  store ptr %b.new.buf290, ptr %b.new.data2.gep92, align 8
  %b.new.cap2.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load56, i32 0, i32 2
  store i64 %b.new.cap78, ptr %b.new.cap2.gep93, align 8
  br label %b.grow_done73

str_overflow_abort87:                             ; preds = %b.grow271
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %b.new.buf.len286

choice.case99:                                    ; preds = %choice.next54
  %b.load102 = load ptr, ptr %var.b, align 8
  %app.str.len103 = load i64, ptr @str.28.struct, align 8
  %app.str.len104 = and i64 %app.str.len103, 281474976710655
  %app.str.data105 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %b.app.cur.len106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  %b.app.cur.len107 = load i64, ptr %b.app.cur.len106, align 8
  %b.app.new.len108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len107, i64 %app.str.len104)
  %sum109 = extractvalue { i64, i1 } %b.app.new.len108, 0
  %ovf110 = extractvalue { i64, i1 } %b.app.new.len108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %b.app.new.len111

choice.next100:                                   ; preds = %choice.next54
  %val.match147 = icmp eq i64 %var.load16, 12
  br i1 %val.match147, label %choice.case145, label %choice.next146

b.app.new.len111:                                 ; preds = %abort.dead113, %choice.case99
  %b.cap114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 2
  %b.cap115 = load i64, ptr %b.cap114, align 8
  %b.need.grow116 = icmp slt i64 %b.cap115, %sum109
  br i1 %b.need.grow116, label %b.grow2117, label %b.nogrow2118

str_overflow_abort112:                            ; preds = %choice.case99
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead113:                                    ; No predecessors!
  br label %b.app.new.len111

b.grow2117:                                       ; preds = %b.app.new.len111
  %b.cap2120 = mul i64 %b.cap115, 2
  %b.cap.small121 = icmp slt i64 %b.cap2120, 16
  %b.cap.grow122 = select i1 %b.cap.small121, i64 16, i64 %b.cap2120
  %b.cap.need123 = icmp slt i64 %b.cap.grow122, %sum109
  %b.new.cap124 = select i1 %b.cap.need123, i64 %sum109, i64 %b.cap.grow122
  %b.cur.len2125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  %b.cur.len2126 = load i64, ptr %b.cur.len2125, align 8
  %b.cur.data2127 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 1
  %b.cur.data2128 = load ptr, ptr %b.cur.data2127, align 8
  %b.new.buf.len2129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap124, i64 1)
  %sum130 = extractvalue { i64, i1 } %b.new.buf.len2129, 0
  %ovf131 = extractvalue { i64, i1 } %b.new.buf.len2129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %b.new.buf.len2132

b.nogrow2118:                                     ; preds = %b.app.new.len111
  br label %b.grow_done119

b.grow_done119:                                   ; preds = %b.nogrow2118, %b.new.buf.len2132
  %b.app.data140 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 1
  %b.app.data141 = load ptr, ptr %b.app.data140, align 8
  %b.app.dst142 = getelementptr i8, ptr %b.app.data141, i64 %b.app.cur.len107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst142, ptr align 1 %app.str.data105, i64 %app.str.len104, i1 false)
  %b.app.nul143 = getelementptr i8, ptr %b.app.data141, i64 %sum109
  store i8 0, ptr %b.app.nul143, align 1
  %b.len.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 0
  store i64 %sum109, ptr %b.len.gep144, align 8
  br label %choice.exit

b.new.buf.len2132:                                ; preds = %abort.dead134, %b.grow2117
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 %sum130)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2136, ptr align 1 %b.cur.data2128, i64 %b.cur.len2126, i1 false)
  %b.grow2.nul137 = getelementptr i8, ptr %b.new.buf2136, i64 %b.cur.len2126
  store i8 0, ptr %b.grow2.nul137, align 1
  %b.new.data2.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 1
  store ptr %b.new.buf2136, ptr %b.new.data2.gep138, align 8
  %b.new.cap2.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load102, i32 0, i32 2
  store i64 %b.new.cap124, ptr %b.new.cap2.gep139, align 8
  br label %b.grow_done119

str_overflow_abort133:                            ; preds = %b.grow2117
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead134:                                    ; No predecessors!
  br label %b.new.buf.len2132

choice.case145:                                   ; preds = %choice.next100
  %b.load148 = load ptr, ptr %var.b, align 8
  %app.str.len149 = load i64, ptr @str.29.struct, align 8
  %app.str.len150 = and i64 %app.str.len149, 281474976710655
  %app.str.data151 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %b.app.cur.len152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load148, i32 0, i32 0
  %b.app.cur.len153 = load i64, ptr %b.app.cur.len152, align 8
  %b.app.new.len154 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len153, i64 %app.str.len150)
  %sum155 = extractvalue { i64, i1 } %b.app.new.len154, 0
  %ovf156 = extractvalue { i64, i1 } %b.app.new.len154, 1
  br i1 %ovf156, label %str_overflow_abort158, label %b.app.new.len157

choice.next146:                                   ; preds = %choice.next100
  %val.match193 = icmp eq i64 %var.load16, 10
  br i1 %val.match193, label %choice.case191, label %choice.next192

b.app.new.len157:                                 ; preds = %abort.dead159, %choice.case145
  %b.cap160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load148, i32 0, i32 2
  %b.cap161 = load i64, ptr %b.cap160, align 8
  %b.need.grow162 = icmp slt i64 %b.cap161, %sum155
  br i1 %b.need.grow162, label %b.grow2163, label %b.nogrow2164

str_overflow_abort158:                            ; preds = %choice.case145
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead159:                                    ; No predecessors!
  br label %b.app.new.len157

b.grow2163:                                       ; preds = %b.app.new.len157
  %b.cap2166 = mul i64 %b.cap161, 2
  %b.cap.small167 = icmp slt i64 %b.cap2166, 16
  %b.cap.grow168 = select i1 %b.cap.small167, i64 16, i64 %b.cap2166
  %b.cap.need169 = icmp slt i64 %b.cap.grow168, %sum155
  %b.new.cap170 = select i1 %b.cap.need169, i64 %sum155, i64 %b.cap.grow168
  %b.cur.len2171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load148, i32 0, i32 0
  %b.cur.len2172 = load i64, ptr %b.cur.len2171, align 8
  %b.cur.data2173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load148, i32 0, i32 1
  %b.cur.data2174 = load ptr, ptr %b.cur.data2173, align 8
  %b.new.buf.len2175 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap170, i64 1)
  %sum176 = extractvalue { i64, i1 } %b.new.buf.len2175, 0
  %ovf177 = extractvalue { i64, i1 } %b.new.buf.len2175, 1
  br i1 %ovf177, label %str_overflow_abort179, label %b.new.buf.len2178

b.nogrow2164:                                     ; preds = %b.app.new.len157
  br label %b.grow_done165

b.grow_done165:                                   ; preds = %b.nogrow2164, %b.new.buf.len2178
  %b.app.data186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load148, i32 0, i32 1
  %b.app.data187 = load ptr, ptr %b.app.data186, align 8
  %b.app.dst188 = getelementptr i8, ptr %b.app.data187, i64 %b.app.cur.len153
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst188, ptr align 1 %app.str.data151, i64 %app.str.len150, i1 false)
  %b.app.nul189 = getelementptr i8, ptr %b.app.data187, i64 %sum155
  store i8 0, ptr %b.app.nul189, align 1
  %b.len.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load148, i32 0, i32 0
  store i64 %sum155, ptr %b.len.gep190, align 8
  br label %choice.exit

b.new.buf.len2178:                                ; preds = %abort.dead180, %b.grow2163
  %arena.cur181 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 %sum176)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2182, ptr align 1 %b.cur.data2174, i64 %b.cur.len2172, i1 false)
  %b.grow2.nul183 = getelementptr i8, ptr %b.new.buf2182, i64 %b.cur.len2172
  store i8 0, ptr %b.grow2.nul183, align 1
  %b.new.data2.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load148, i32 0, i32 1
  store ptr %b.new.buf2182, ptr %b.new.data2.gep184, align 8
  %b.new.cap2.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load148, i32 0, i32 2
  store i64 %b.new.cap170, ptr %b.new.cap2.gep185, align 8
  br label %b.grow_done165

str_overflow_abort179:                            ; preds = %b.grow2163
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead180:                                    ; No predecessors!
  br label %b.new.buf.len2178

choice.case191:                                   ; preds = %choice.next146
  %b.load194 = load ptr, ptr %var.b, align 8
  %app.str.len195 = load i64, ptr @str.30.struct, align 8
  %app.str.len196 = and i64 %app.str.len195, 281474976710655
  %app.str.data197 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %b.app.cur.len198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 0
  %b.app.cur.len199 = load i64, ptr %b.app.cur.len198, align 8
  %b.app.new.len200 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len199, i64 %app.str.len196)
  %sum201 = extractvalue { i64, i1 } %b.app.new.len200, 0
  %ovf202 = extractvalue { i64, i1 } %b.app.new.len200, 1
  br i1 %ovf202, label %str_overflow_abort204, label %b.app.new.len203

choice.next192:                                   ; preds = %choice.next146
  %val.match239 = icmp eq i64 %var.load16, 13
  br i1 %val.match239, label %choice.case237, label %choice.next238

b.app.new.len203:                                 ; preds = %abort.dead205, %choice.case191
  %b.cap206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 2
  %b.cap207 = load i64, ptr %b.cap206, align 8
  %b.need.grow208 = icmp slt i64 %b.cap207, %sum201
  br i1 %b.need.grow208, label %b.grow2209, label %b.nogrow2210

str_overflow_abort204:                            ; preds = %choice.case191
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead205:                                    ; No predecessors!
  br label %b.app.new.len203

b.grow2209:                                       ; preds = %b.app.new.len203
  %b.cap2212 = mul i64 %b.cap207, 2
  %b.cap.small213 = icmp slt i64 %b.cap2212, 16
  %b.cap.grow214 = select i1 %b.cap.small213, i64 16, i64 %b.cap2212
  %b.cap.need215 = icmp slt i64 %b.cap.grow214, %sum201
  %b.new.cap216 = select i1 %b.cap.need215, i64 %sum201, i64 %b.cap.grow214
  %b.cur.len2217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 0
  %b.cur.len2218 = load i64, ptr %b.cur.len2217, align 8
  %b.cur.data2219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 1
  %b.cur.data2220 = load ptr, ptr %b.cur.data2219, align 8
  %b.new.buf.len2221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap216, i64 1)
  %sum222 = extractvalue { i64, i1 } %b.new.buf.len2221, 0
  %ovf223 = extractvalue { i64, i1 } %b.new.buf.len2221, 1
  br i1 %ovf223, label %str_overflow_abort225, label %b.new.buf.len2224

b.nogrow2210:                                     ; preds = %b.app.new.len203
  br label %b.grow_done211

b.grow_done211:                                   ; preds = %b.nogrow2210, %b.new.buf.len2224
  %b.app.data232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 1
  %b.app.data233 = load ptr, ptr %b.app.data232, align 8
  %b.app.dst234 = getelementptr i8, ptr %b.app.data233, i64 %b.app.cur.len199
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst234, ptr align 1 %app.str.data197, i64 %app.str.len196, i1 false)
  %b.app.nul235 = getelementptr i8, ptr %b.app.data233, i64 %sum201
  store i8 0, ptr %b.app.nul235, align 1
  %b.len.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 0
  store i64 %sum201, ptr %b.len.gep236, align 8
  br label %choice.exit

b.new.buf.len2224:                                ; preds = %abort.dead226, %b.grow2209
  %arena.cur227 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 %sum222)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2228, ptr align 1 %b.cur.data2220, i64 %b.cur.len2218, i1 false)
  %b.grow2.nul229 = getelementptr i8, ptr %b.new.buf2228, i64 %b.cur.len2218
  store i8 0, ptr %b.grow2.nul229, align 1
  %b.new.data2.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 1
  store ptr %b.new.buf2228, ptr %b.new.data2.gep230, align 8
  %b.new.cap2.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 2
  store i64 %b.new.cap216, ptr %b.new.cap2.gep231, align 8
  br label %b.grow_done211

str_overflow_abort225:                            ; preds = %b.grow2209
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead226:                                    ; No predecessors!
  br label %b.new.buf.len2224

choice.case237:                                   ; preds = %choice.next192
  %b.load240 = load ptr, ptr %var.b, align 8
  %app.str.len241 = load i64, ptr @str.31.struct, align 8
  %app.str.len242 = and i64 %app.str.len241, 281474976710655
  %app.str.data243 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %b.app.cur.len244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load240, i32 0, i32 0
  %b.app.cur.len245 = load i64, ptr %b.app.cur.len244, align 8
  %b.app.new.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len245, i64 %app.str.len242)
  %sum247 = extractvalue { i64, i1 } %b.app.new.len246, 0
  %ovf248 = extractvalue { i64, i1 } %b.app.new.len246, 1
  br i1 %ovf248, label %str_overflow_abort250, label %b.app.new.len249

choice.next238:                                   ; preds = %choice.next192
  %val.match285 = icmp eq i64 %var.load16, 9
  br i1 %val.match285, label %choice.case283, label %choice.next284

b.app.new.len249:                                 ; preds = %abort.dead251, %choice.case237
  %b.cap252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load240, i32 0, i32 2
  %b.cap253 = load i64, ptr %b.cap252, align 8
  %b.need.grow254 = icmp slt i64 %b.cap253, %sum247
  br i1 %b.need.grow254, label %b.grow2255, label %b.nogrow2256

str_overflow_abort250:                            ; preds = %choice.case237
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead251:                                    ; No predecessors!
  br label %b.app.new.len249

b.grow2255:                                       ; preds = %b.app.new.len249
  %b.cap2258 = mul i64 %b.cap253, 2
  %b.cap.small259 = icmp slt i64 %b.cap2258, 16
  %b.cap.grow260 = select i1 %b.cap.small259, i64 16, i64 %b.cap2258
  %b.cap.need261 = icmp slt i64 %b.cap.grow260, %sum247
  %b.new.cap262 = select i1 %b.cap.need261, i64 %sum247, i64 %b.cap.grow260
  %b.cur.len2263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load240, i32 0, i32 0
  %b.cur.len2264 = load i64, ptr %b.cur.len2263, align 8
  %b.cur.data2265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load240, i32 0, i32 1
  %b.cur.data2266 = load ptr, ptr %b.cur.data2265, align 8
  %b.new.buf.len2267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap262, i64 1)
  %sum268 = extractvalue { i64, i1 } %b.new.buf.len2267, 0
  %ovf269 = extractvalue { i64, i1 } %b.new.buf.len2267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %b.new.buf.len2270

b.nogrow2256:                                     ; preds = %b.app.new.len249
  br label %b.grow_done257

b.grow_done257:                                   ; preds = %b.nogrow2256, %b.new.buf.len2270
  %b.app.data278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load240, i32 0, i32 1
  %b.app.data279 = load ptr, ptr %b.app.data278, align 8
  %b.app.dst280 = getelementptr i8, ptr %b.app.data279, i64 %b.app.cur.len245
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst280, ptr align 1 %app.str.data243, i64 %app.str.len242, i1 false)
  %b.app.nul281 = getelementptr i8, ptr %b.app.data279, i64 %sum247
  store i8 0, ptr %b.app.nul281, align 1
  %b.len.gep282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load240, i32 0, i32 0
  store i64 %sum247, ptr %b.len.gep282, align 8
  br label %choice.exit

b.new.buf.len2270:                                ; preds = %abort.dead272, %b.grow2255
  %arena.cur273 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 %sum268)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2274, ptr align 1 %b.cur.data2266, i64 %b.cur.len2264, i1 false)
  %b.grow2.nul275 = getelementptr i8, ptr %b.new.buf2274, i64 %b.cur.len2264
  store i8 0, ptr %b.grow2.nul275, align 1
  %b.new.data2.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load240, i32 0, i32 1
  store ptr %b.new.buf2274, ptr %b.new.data2.gep276, align 8
  %b.new.cap2.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load240, i32 0, i32 2
  store i64 %b.new.cap262, ptr %b.new.cap2.gep277, align 8
  br label %b.grow_done257

str_overflow_abort271:                            ; preds = %b.grow2255
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead272:                                    ; No predecessors!
  br label %b.new.buf.len2270

choice.case283:                                   ; preds = %choice.next238
  %b.load286 = load ptr, ptr %var.b, align 8
  %app.str.len287 = load i64, ptr @str.32.struct, align 8
  %app.str.len288 = and i64 %app.str.len287, 281474976710655
  %app.str.data289 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %b.app.cur.len290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load286, i32 0, i32 0
  %b.app.cur.len291 = load i64, ptr %b.app.cur.len290, align 8
  %b.app.new.len292 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len291, i64 %app.str.len288)
  %sum293 = extractvalue { i64, i1 } %b.app.new.len292, 0
  %ovf294 = extractvalue { i64, i1 } %b.app.new.len292, 1
  br i1 %ovf294, label %str_overflow_abort296, label %b.app.new.len295

choice.next284:                                   ; preds = %choice.next238
  %cmptmp = icmp slt i64 %var.load16, 32
  br i1 %cmptmp, label %choice.case329, label %choice.next330

b.app.new.len295:                                 ; preds = %abort.dead297, %choice.case283
  %b.cap298 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load286, i32 0, i32 2
  %b.cap299 = load i64, ptr %b.cap298, align 8
  %b.need.grow300 = icmp slt i64 %b.cap299, %sum293
  br i1 %b.need.grow300, label %b.grow2301, label %b.nogrow2302

str_overflow_abort296:                            ; preds = %choice.case283
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead297:                                    ; No predecessors!
  br label %b.app.new.len295

b.grow2301:                                       ; preds = %b.app.new.len295
  %b.cap2304 = mul i64 %b.cap299, 2
  %b.cap.small305 = icmp slt i64 %b.cap2304, 16
  %b.cap.grow306 = select i1 %b.cap.small305, i64 16, i64 %b.cap2304
  %b.cap.need307 = icmp slt i64 %b.cap.grow306, %sum293
  %b.new.cap308 = select i1 %b.cap.need307, i64 %sum293, i64 %b.cap.grow306
  %b.cur.len2309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load286, i32 0, i32 0
  %b.cur.len2310 = load i64, ptr %b.cur.len2309, align 8
  %b.cur.data2311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load286, i32 0, i32 1
  %b.cur.data2312 = load ptr, ptr %b.cur.data2311, align 8
  %b.new.buf.len2313 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap308, i64 1)
  %sum314 = extractvalue { i64, i1 } %b.new.buf.len2313, 0
  %ovf315 = extractvalue { i64, i1 } %b.new.buf.len2313, 1
  br i1 %ovf315, label %str_overflow_abort317, label %b.new.buf.len2316

b.nogrow2302:                                     ; preds = %b.app.new.len295
  br label %b.grow_done303

b.grow_done303:                                   ; preds = %b.nogrow2302, %b.new.buf.len2316
  %b.app.data324 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load286, i32 0, i32 1
  %b.app.data325 = load ptr, ptr %b.app.data324, align 8
  %b.app.dst326 = getelementptr i8, ptr %b.app.data325, i64 %b.app.cur.len291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst326, ptr align 1 %app.str.data289, i64 %app.str.len288, i1 false)
  %b.app.nul327 = getelementptr i8, ptr %b.app.data325, i64 %sum293
  store i8 0, ptr %b.app.nul327, align 1
  %b.len.gep328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load286, i32 0, i32 0
  store i64 %sum293, ptr %b.len.gep328, align 8
  br label %choice.exit

b.new.buf.len2316:                                ; preds = %abort.dead318, %b.grow2301
  %arena.cur319 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 %sum314)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2320, ptr align 1 %b.cur.data2312, i64 %b.cur.len2310, i1 false)
  %b.grow2.nul321 = getelementptr i8, ptr %b.new.buf2320, i64 %b.cur.len2310
  store i8 0, ptr %b.grow2.nul321, align 1
  %b.new.data2.gep322 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load286, i32 0, i32 1
  store ptr %b.new.buf2320, ptr %b.new.data2.gep322, align 8
  %b.new.cap2.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load286, i32 0, i32 2
  store i64 %b.new.cap308, ptr %b.new.cap2.gep323, align 8
  br label %b.grow_done303

str_overflow_abort317:                            ; preds = %b.grow2301
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead318:                                    ; No predecessors!
  br label %b.new.buf.len2316

choice.case329:                                   ; preds = %choice.next284
  %b.load331 = load ptr, ptr %var.b, align 8
  %app.str.len332 = load i64, ptr @str.33.struct, align 8
  %app.str.len333 = and i64 %app.str.len332, 281474976710655
  %app.str.data334 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %b.app.cur.len335 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 0
  %b.app.cur.len336 = load i64, ptr %b.app.cur.len335, align 8
  %b.app.new.len337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len336, i64 %app.str.len333)
  %sum338 = extractvalue { i64, i1 } %b.app.new.len337, 0
  %ovf339 = extractvalue { i64, i1 } %b.app.new.len337, 1
  br i1 %ovf339, label %str_overflow_abort341, label %b.app.new.len340

choice.next330:                                   ; preds = %choice.next284
  %b.load507 = load ptr, ptr %var.b, align 8
  %var.load508 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load508, 0
  %b.b.le255 = icmp sle i64 %var.load508, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.app.new.len340:                                 ; preds = %abort.dead342, %choice.case329
  %b.cap343 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 2
  %b.cap344 = load i64, ptr %b.cap343, align 8
  %b.need.grow345 = icmp slt i64 %b.cap344, %sum338
  br i1 %b.need.grow345, label %b.grow2346, label %b.nogrow2347

str_overflow_abort341:                            ; preds = %choice.case329
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
  %b.cur.len2354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 0
  %b.cur.len2355 = load i64, ptr %b.cur.len2354, align 8
  %b.cur.data2356 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 1
  %b.cur.data2357 = load ptr, ptr %b.cur.data2356, align 8
  %b.new.buf.len2358 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap353, i64 1)
  %sum359 = extractvalue { i64, i1 } %b.new.buf.len2358, 0
  %ovf360 = extractvalue { i64, i1 } %b.new.buf.len2358, 1
  br i1 %ovf360, label %str_overflow_abort362, label %b.new.buf.len2361

b.nogrow2347:                                     ; preds = %b.app.new.len340
  br label %b.grow_done348

b.grow_done348:                                   ; preds = %b.nogrow2347, %b.new.buf.len2361
  %b.app.data369 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 1
  %b.app.data370 = load ptr, ptr %b.app.data369, align 8
  %b.app.dst371 = getelementptr i8, ptr %b.app.data370, i64 %b.app.cur.len336
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst371, ptr align 1 %app.str.data334, i64 %app.str.len333, i1 false)
  %b.app.nul372 = getelementptr i8, ptr %b.app.data370, i64 %sum338
  store i8 0, ptr %b.app.nul372, align 1
  %b.len.gep373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 0
  store i64 %sum338, ptr %b.len.gep373, align 8
  %b.load374 = load ptr, ptr %var.b, align 8
  %var.load375 = load i64, ptr %var.c, align 8
  %shrtmp = lshr i64 %var.load375, 4
  %call.res = call i32 @"json::#hex_digit"(i64 %shrtmp)
  %coerce.sext = sext i32 %call.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len376 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 0
  %b.rn.cur.len377 = load i64, ptr %b.rn.cur.len376, align 8
  %b.rn.new.len378 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len377, i64 %br.width)
  %sum379 = extractvalue { i64, i1 } %b.rn.new.len378, 0
  %ovf380 = extractvalue { i64, i1 } %b.rn.new.len378, 1
  br i1 %ovf380, label %str_overflow_abort382, label %b.rn.new.len381

b.new.buf.len2361:                                ; preds = %abort.dead363, %b.grow2346
  %arena.cur364 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 %sum359)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2365, ptr align 1 %b.cur.data2357, i64 %b.cur.len2355, i1 false)
  %b.grow2.nul366 = getelementptr i8, ptr %b.new.buf2365, i64 %b.cur.len2355
  store i8 0, ptr %b.grow2.nul366, align 1
  %b.new.data2.gep367 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 1
  store ptr %b.new.buf2365, ptr %b.new.data2.gep367, align 8
  %b.new.cap2.gep368 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 2
  store i64 %b.new.cap353, ptr %b.new.cap2.gep368, align 8
  br label %b.grow_done348

str_overflow_abort362:                            ; preds = %b.grow2346
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead363:                                    ; No predecessors!
  br label %b.new.buf.len2361

b.rn.new.len381:                                  ; preds = %abort.dead383, %b.grow_done348
  %b.cap384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 2
  %b.cap385 = load i64, ptr %b.cap384, align 8
  %b.need.grow386 = icmp slt i64 %b.cap385, %sum379
  br i1 %b.need.grow386, label %b.grow2387, label %b.nogrow2388

str_overflow_abort382:                            ; preds = %b.grow_done348
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead383:                                    ; No predecessors!
  br label %b.rn.new.len381

b.grow2387:                                       ; preds = %b.rn.new.len381
  %b.cap2390 = mul i64 %b.cap385, 2
  %b.cap.small391 = icmp slt i64 %b.cap2390, 16
  %b.cap.grow392 = select i1 %b.cap.small391, i64 16, i64 %b.cap2390
  %b.cap.need393 = icmp slt i64 %b.cap.grow392, %sum379
  %b.new.cap394 = select i1 %b.cap.need393, i64 %sum379, i64 %b.cap.grow392
  %b.cur.len2395 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 0
  %b.cur.len2396 = load i64, ptr %b.cur.len2395, align 8
  %b.cur.data2397 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 1
  %b.cur.data2398 = load ptr, ptr %b.cur.data2397, align 8
  %b.new.buf.len2399 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap394, i64 1)
  %sum400 = extractvalue { i64, i1 } %b.new.buf.len2399, 0
  %ovf401 = extractvalue { i64, i1 } %b.new.buf.len2399, 1
  br i1 %ovf401, label %str_overflow_abort403, label %b.new.buf.len2402

b.nogrow2388:                                     ; preds = %b.rn.new.len381
  br label %b.grow_done389

b.grow_done389:                                   ; preds = %b.nogrow2388, %b.new.buf.len2402
  %b.rn.data410 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 1
  %b.rn.data411 = load ptr, ptr %b.rn.data410, align 8
  %b.rn.dst412 = getelementptr i8, ptr %b.rn.data411, i64 %b.rn.cur.len377
  br i1 %br.cmp1, label %br.b1.133, label %br.c2.133

b.new.buf.len2402:                                ; preds = %abort.dead404, %b.grow2387
  %arena.cur405 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2406 = call ptr @dva_arena_alloc(ptr %arena.cur405, i64 %sum400)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2406, ptr align 1 %b.cur.data2398, i64 %b.cur.len2396, i1 false)
  %b.grow2.nul407 = getelementptr i8, ptr %b.new.buf2406, i64 %b.cur.len2396
  store i8 0, ptr %b.grow2.nul407, align 1
  %b.new.data2.gep408 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 1
  store ptr %b.new.buf2406, ptr %b.new.data2.gep408, align 8
  %b.new.cap2.gep409 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 2
  store i64 %b.new.cap394, ptr %b.new.cap2.gep409, align 8
  br label %b.grow_done389

str_overflow_abort403:                            ; preds = %b.grow2387
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead404:                                    ; No predecessors!
  br label %b.new.buf.len2402

br.b1.133:                                        ; preds = %b.grow_done389
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst412, align 1
  br label %br.done.133

br.c2.133:                                        ; preds = %b.grow_done389
  br i1 %br.cmp2, label %br.b2.133, label %br.c3.133

br.b2.133:                                        ; preds = %br.c2.133
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst412, align 1
  %br.dst1413 = getelementptr i8, ptr %b.rn.dst412, i64 1
  store i8 %br.b2.1t, ptr %br.dst1413, align 1
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
  store i8 %br.b3.0t, ptr %b.rn.dst412, align 1
  %br.dst1.3414 = getelementptr i8, ptr %b.rn.dst412, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3414, align 1
  %br.dst2.3415 = getelementptr i8, ptr %b.rn.dst412, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3415, align 1
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
  store i8 %br.b4.0t, ptr %b.rn.dst412, align 1
  %br.dst1.4416 = getelementptr i8, ptr %b.rn.dst412, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4416, align 1
  %br.dst2.4417 = getelementptr i8, ptr %b.rn.dst412, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4417, align 1
  %br.dst3.4418 = getelementptr i8, ptr %b.rn.dst412, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4418, align 1
  br label %br.done.133

br.done.133:                                      ; preds = %br.b4.133, %br.b3.133, %br.b2.133, %br.b1.133
  %br.nul419 = getelementptr i8, ptr %b.rn.data411, i64 %sum379
  store i8 0, ptr %br.nul419, align 1
  %b.len.gep420 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 0
  store i64 %sum379, ptr %b.len.gep420, align 8
  %b.load421 = load ptr, ptr %var.b, align 8
  %var.load422 = load i64, ptr %var.c, align 8
  %call.res423 = call i32 @"json::#hex_digit"(i64 %var.load422)
  %coerce.sext424 = sext i32 %call.res423 to i64
  %br.cmp1425 = icmp slt i64 %coerce.sext424, 128
  %br.cmp2426 = icmp slt i64 %coerce.sext424, 2048
  %br.cmp3427 = icmp slt i64 %coerce.sext424, 65536
  %br.w3428 = select i1 %br.cmp3427, i64 3, i64 4
  %br.w2429 = select i1 %br.cmp2426, i64 2, i64 %br.w3428
  %br.width430 = select i1 %br.cmp1425, i64 1, i64 %br.w2429
  %b.rn.cur.len431 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load421, i32 0, i32 0
  %b.rn.cur.len432 = load i64, ptr %b.rn.cur.len431, align 8
  %b.rn.new.len433 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len432, i64 %br.width430)
  %sum434 = extractvalue { i64, i1 } %b.rn.new.len433, 0
  %ovf435 = extractvalue { i64, i1 } %b.rn.new.len433, 1
  br i1 %ovf435, label %str_overflow_abort437, label %b.rn.new.len436

b.rn.new.len436:                                  ; preds = %abort.dead438, %br.done.133
  %b.cap439 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load421, i32 0, i32 2
  %b.cap440 = load i64, ptr %b.cap439, align 8
  %b.need.grow441 = icmp slt i64 %b.cap440, %sum434
  br i1 %b.need.grow441, label %b.grow2442, label %b.nogrow2443

str_overflow_abort437:                            ; preds = %br.done.133
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead438:                                    ; No predecessors!
  br label %b.rn.new.len436

b.grow2442:                                       ; preds = %b.rn.new.len436
  %b.cap2445 = mul i64 %b.cap440, 2
  %b.cap.small446 = icmp slt i64 %b.cap2445, 16
  %b.cap.grow447 = select i1 %b.cap.small446, i64 16, i64 %b.cap2445
  %b.cap.need448 = icmp slt i64 %b.cap.grow447, %sum434
  %b.new.cap449 = select i1 %b.cap.need448, i64 %sum434, i64 %b.cap.grow447
  %b.cur.len2450 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load421, i32 0, i32 0
  %b.cur.len2451 = load i64, ptr %b.cur.len2450, align 8
  %b.cur.data2452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load421, i32 0, i32 1
  %b.cur.data2453 = load ptr, ptr %b.cur.data2452, align 8
  %b.new.buf.len2454 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap449, i64 1)
  %sum455 = extractvalue { i64, i1 } %b.new.buf.len2454, 0
  %ovf456 = extractvalue { i64, i1 } %b.new.buf.len2454, 1
  br i1 %ovf456, label %str_overflow_abort458, label %b.new.buf.len2457

b.nogrow2443:                                     ; preds = %b.rn.new.len436
  br label %b.grow_done444

b.grow_done444:                                   ; preds = %b.nogrow2443, %b.new.buf.len2457
  %b.rn.data465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load421, i32 0, i32 1
  %b.rn.data466 = load ptr, ptr %b.rn.data465, align 8
  %b.rn.dst467 = getelementptr i8, ptr %b.rn.data466, i64 %b.rn.cur.len432
  br i1 %br.cmp1425, label %br.b1.134, label %br.c2.134

b.new.buf.len2457:                                ; preds = %abort.dead459, %b.grow2442
  %arena.cur460 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2461 = call ptr @dva_arena_alloc(ptr %arena.cur460, i64 %sum455)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2461, ptr align 1 %b.cur.data2453, i64 %b.cur.len2451, i1 false)
  %b.grow2.nul462 = getelementptr i8, ptr %b.new.buf2461, i64 %b.cur.len2451
  store i8 0, ptr %b.grow2.nul462, align 1
  %b.new.data2.gep463 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load421, i32 0, i32 1
  store ptr %b.new.buf2461, ptr %b.new.data2.gep463, align 8
  %b.new.cap2.gep464 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load421, i32 0, i32 2
  store i64 %b.new.cap449, ptr %b.new.cap2.gep464, align 8
  br label %b.grow_done444

str_overflow_abort458:                            ; preds = %b.grow2442
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead459:                                    ; No predecessors!
  br label %b.new.buf.len2457

br.b1.134:                                        ; preds = %b.grow_done444
  %br.b1.0468 = trunc i64 %coerce.sext424 to i8
  store i8 %br.b1.0468, ptr %b.rn.dst467, align 1
  br label %br.done.134

br.c2.134:                                        ; preds = %b.grow_done444
  br i1 %br.cmp2426, label %br.b2.134, label %br.c3.134

br.b2.134:                                        ; preds = %br.c2.134
  %br.sh6469 = lshr i64 %coerce.sext424, 6
  %br.b2.0470 = or i64 %br.sh6469, 192
  %br.b2.0t471 = trunc i64 %br.b2.0470 to i8
  %br.m6472 = and i64 %coerce.sext424, 63
  %br.b2.1473 = or i64 %br.m6472, 128
  %br.b2.1t474 = trunc i64 %br.b2.1473 to i8
  store i8 %br.b2.0t471, ptr %b.rn.dst467, align 1
  %br.dst1475 = getelementptr i8, ptr %b.rn.dst467, i64 1
  store i8 %br.b2.1t474, ptr %br.dst1475, align 1
  br label %br.done.134

br.c3.134:                                        ; preds = %br.c2.134
  br i1 %br.cmp3427, label %br.b3.134, label %br.b4.134

br.b3.134:                                        ; preds = %br.c3.134
  %br.sh12476 = lshr i64 %coerce.sext424, 12
  %br.b3.0477 = or i64 %br.sh12476, 224
  %br.b3.0t478 = trunc i64 %br.b3.0477 to i8
  %br.sh6.3479 = lshr i64 %coerce.sext424, 6
  %br.m6.3480 = and i64 %br.sh6.3479, 63
  %br.b3.1481 = or i64 %br.m6.3480, 128
  %br.b3.1t482 = trunc i64 %br.b3.1481 to i8
  %br.mend483 = and i64 %coerce.sext424, 63
  %br.b3.2484 = or i64 %br.mend483, 128
  %br.b3.2t485 = trunc i64 %br.b3.2484 to i8
  store i8 %br.b3.0t478, ptr %b.rn.dst467, align 1
  %br.dst1.3486 = getelementptr i8, ptr %b.rn.dst467, i64 1
  store i8 %br.b3.1t482, ptr %br.dst1.3486, align 1
  %br.dst2.3487 = getelementptr i8, ptr %b.rn.dst467, i64 2
  store i8 %br.b3.2t485, ptr %br.dst2.3487, align 1
  br label %br.done.134

br.b4.134:                                        ; preds = %br.c3.134
  %br.sh18488 = lshr i64 %coerce.sext424, 18
  %br.b4.0489 = or i64 %br.sh18488, 240
  %br.b4.0t490 = trunc i64 %br.b4.0489 to i8
  %br.sh12.4491 = lshr i64 %coerce.sext424, 12
  %br.m12.4492 = and i64 %br.sh12.4491, 63
  %br.b4.1493 = or i64 %br.m12.4492, 128
  %br.b4.1t494 = trunc i64 %br.b4.1493 to i8
  %br.sh6.4495 = lshr i64 %coerce.sext424, 6
  %br.m6.4496 = and i64 %br.sh6.4495, 63
  %br.b4.2497 = or i64 %br.m6.4496, 128
  %br.b4.2t498 = trunc i64 %br.b4.2497 to i8
  %br.mend4499 = and i64 %coerce.sext424, 63
  %br.b4.3500 = or i64 %br.mend4499, 128
  %br.b4.3t501 = trunc i64 %br.b4.3500 to i8
  store i8 %br.b4.0t490, ptr %b.rn.dst467, align 1
  %br.dst1.4502 = getelementptr i8, ptr %b.rn.dst467, i64 1
  store i8 %br.b4.1t494, ptr %br.dst1.4502, align 1
  %br.dst2.4503 = getelementptr i8, ptr %b.rn.dst467, i64 2
  store i8 %br.b4.2t498, ptr %br.dst2.4503, align 1
  %br.dst3.4504 = getelementptr i8, ptr %b.rn.dst467, i64 3
  store i8 %br.b4.3t501, ptr %br.dst3.4504, align 1
  br label %br.done.134

br.done.134:                                      ; preds = %br.b4.134, %br.b3.134, %br.b2.134, %br.b1.134
  %br.nul505 = getelementptr i8, ptr %b.rn.data466, i64 %sum434
  store i8 0, ptr %br.nul505, align 1
  %b.len.gep506 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load421, i32 0, i32 0
  store i64 %sum434, ptr %b.len.gep506, align 8
  br label %choice.exit

b.byte_ok:                                        ; preds = %abort.dead509, %choice.next330
  %b.byte.i8 = trunc i64 %var.load508 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 0
  %b.len510 = load i64, ptr %b.len, align 8
  %b.cap511 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 2
  %b.cap512 = load i64, ptr %b.cap511, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 1
  %b.data513 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len510, %b.cap512
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next330
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead509:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2514 = mul i64 %b.cap512, 2
  %b.cap.small515 = icmp slt i64 %b.cap2514, 16
  %b.new.cap516 = select i1 %b.cap.small515, i64 16, i64 %b.cap2514
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap516, i64 1)
  %sum517 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf518 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf518, label %str_overflow_abort520, label %b.new.buf.len519

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len519
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 1
  %b.cur.data523 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 0
  %b.cur.len524 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data523, i64 %b.cur.len524
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len524, 1
  %b.nul = getelementptr i8, ptr %b.cur.data523, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep525 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep525, align 8
  br label %choice.exit

b.new.buf.len519:                                 ; preds = %abort.dead521, %b.grow
  %arena.cur522 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur522, i64 %sum517)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data513, i64 %b.len510, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len510
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load507, i32 0, i32 2
  store i64 %b.new.cap516, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort520:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead521:                                    ; No predecessors!
  br label %b.new.buf.len519

b.rn.new.len532:                                  ; preds = %abort.dead534, %loop.exit.132
  %b.cap535 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load526, i32 0, i32 2
  %b.cap536 = load i64, ptr %b.cap535, align 8
  %b.need.grow537 = icmp slt i64 %b.cap536, %sum530
  br i1 %b.need.grow537, label %b.grow2538, label %b.nogrow2539

str_overflow_abort533:                            ; preds = %loop.exit.132
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead534:                                    ; No predecessors!
  br label %b.rn.new.len532

b.grow2538:                                       ; preds = %b.rn.new.len532
  %b.cap2541 = mul i64 %b.cap536, 2
  %b.cap.small542 = icmp slt i64 %b.cap2541, 16
  %b.cap.grow543 = select i1 %b.cap.small542, i64 16, i64 %b.cap2541
  %b.cap.need544 = icmp slt i64 %b.cap.grow543, %sum530
  %b.new.cap545 = select i1 %b.cap.need544, i64 %sum530, i64 %b.cap.grow543
  %b.cur.len2546 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load526, i32 0, i32 0
  %b.cur.len2547 = load i64, ptr %b.cur.len2546, align 8
  %b.cur.data2548 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load526, i32 0, i32 1
  %b.cur.data2549 = load ptr, ptr %b.cur.data2548, align 8
  %b.new.buf.len2550 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap545, i64 1)
  %sum551 = extractvalue { i64, i1 } %b.new.buf.len2550, 0
  %ovf552 = extractvalue { i64, i1 } %b.new.buf.len2550, 1
  br i1 %ovf552, label %str_overflow_abort554, label %b.new.buf.len2553

b.nogrow2539:                                     ; preds = %b.rn.new.len532
  br label %b.grow_done540

b.grow_done540:                                   ; preds = %b.nogrow2539, %b.new.buf.len2553
  %b.rn.data561 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load526, i32 0, i32 1
  %b.rn.data562 = load ptr, ptr %b.rn.data561, align 8
  %b.rn.dst563 = getelementptr i8, ptr %b.rn.data562, i64 %b.rn.cur.len528
  br i1 true, label %br.b1.135, label %br.c2.135

b.new.buf.len2553:                                ; preds = %abort.dead555, %b.grow2538
  %arena.cur556 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2557 = call ptr @dva_arena_alloc(ptr %arena.cur556, i64 %sum551)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2557, ptr align 1 %b.cur.data2549, i64 %b.cur.len2547, i1 false)
  %b.grow2.nul558 = getelementptr i8, ptr %b.new.buf2557, i64 %b.cur.len2547
  store i8 0, ptr %b.grow2.nul558, align 1
  %b.new.data2.gep559 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load526, i32 0, i32 1
  store ptr %b.new.buf2557, ptr %b.new.data2.gep559, align 8
  %b.new.cap2.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load526, i32 0, i32 2
  store i64 %b.new.cap545, ptr %b.new.cap2.gep560, align 8
  br label %b.grow_done540

str_overflow_abort554:                            ; preds = %b.grow2538
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead555:                                    ; No predecessors!
  br label %b.new.buf.len2553

br.b1.135:                                        ; preds = %b.grow_done540
  store i8 34, ptr %b.rn.dst563, align 1
  br label %br.done.135

br.c2.135:                                        ; preds = %b.grow_done540
  br i1 true, label %br.b2.135, label %br.c3.135

br.b2.135:                                        ; preds = %br.c2.135
  store i8 -64, ptr %b.rn.dst563, align 1
  %br.dst1564 = getelementptr i8, ptr %b.rn.dst563, i64 1
  store i8 -94, ptr %br.dst1564, align 1
  br label %br.done.135

br.c3.135:                                        ; preds = %br.c2.135
  br i1 true, label %br.b3.135, label %br.b4.135

br.b3.135:                                        ; preds = %br.c3.135
  store i8 -32, ptr %b.rn.dst563, align 1
  %br.dst1.3565 = getelementptr i8, ptr %b.rn.dst563, i64 1
  store i8 -128, ptr %br.dst1.3565, align 1
  %br.dst2.3566 = getelementptr i8, ptr %b.rn.dst563, i64 2
  store i8 -94, ptr %br.dst2.3566, align 1
  br label %br.done.135

br.b4.135:                                        ; preds = %br.c3.135
  store i8 -16, ptr %b.rn.dst563, align 1
  %br.dst1.4567 = getelementptr i8, ptr %b.rn.dst563, i64 1
  store i8 -128, ptr %br.dst1.4567, align 1
  %br.dst2.4568 = getelementptr i8, ptr %b.rn.dst563, i64 2
  store i8 -128, ptr %br.dst2.4568, align 1
  %br.dst3.4569 = getelementptr i8, ptr %b.rn.dst563, i64 3
  store i8 -94, ptr %br.dst3.4569, align 1
  br label %br.done.135

br.done.135:                                      ; preds = %br.b4.135, %br.b3.135, %br.b2.135, %br.b1.135
  %br.nul570 = getelementptr i8, ptr %b.rn.data562, i64 %sum530
  store i8 0, ptr %br.nul570, align 1
  %b.len.gep571 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load526, i32 0, i32 0
  store i64 %sum530, ptr %b.len.gep571, align 8
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
  %addtmp = add i64 %str.len.query2, 8
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
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len3

b.buf.len3:                                       ; preds = %abort.dead, %entry
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load5 = load ptr, ptr %var.b, align 8
  %var.load6 = load ptr, ptr %var.s, align 8
  call void @"json::escape_string_into"(ptr %var.load5, ptr %var.load6)
  %var.load7 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 0
  %b.freeze.len8 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 1
  %b.freeze.data9 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len3

b.freeze.check:                                   ; preds = %b.buf.len3
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data9, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data9, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data9, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len8, 1
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data9, i64 %b.freeze.len8, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len8
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len3
  %b.freeze.data11 = phi ptr [ %b.freeze.data9, %b.buf.len3 ], [ %b.freeze.data9, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len8, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data11, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load7, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"json::format_number"(double %0) #0 {
entry:
  %var.s = alloca ptr, align 8
  %ret.ub.salloc26 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
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
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  br label %choice.exit22

choice.else:                                      ; preds = %and.137.exit
  %var.load24 = load double, ptr %var.f, align 8
  %call.res25 = call { i64, ptr } @"str::from_float"(double %var.load24)
  store { i64, ptr } %call.res25, ptr %ret.ub.salloc26, align 8
  store ptr %ret.ub.salloc26, ptr %var.s, align 8
  %var.load27 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %eq.lhs.len31 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len32 = and i64 %eq.lhs.len31, 281474976710655
  %eq.rhs.len = load i64, ptr @str.34.struct, align 8
  %eq.rhs.len33 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len32, %eq.rhs.len33
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.exit22:                                    ; preds = %choice.exit28, %choice.then21
  %choice.res68 = phi ptr [ %ret.ub.salloc, %choice.then21 ], [ %choice.res67, %choice.exit28 ]
  %ret.pack69 = load { i64, ptr }, ptr %choice.res68, align 8
  ret { i64, ptr } %ret.pack69

choice.exit28:                                    ; preds = %choice.next30, %choice.case29
  %choice.res67 = phi ptr [ @str.17.struct, %choice.case29 ], [ %var.load66, %choice.next30 ]
  br label %choice.exit22

choice.case29:                                    ; preds = %str.eq.merge58
  br label %choice.exit28

choice.next30:                                    ; preds = %str.eq.merge58
  %var.load66 = load ptr, ptr %var.s, align 8
  br label %choice.exit28

str.eq.then:                                      ; preds = %choice.else
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data34, ptr %eq.rhs.data, i64 %eq.lhs.len32)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.else
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len35 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %eq.lhs.len36 = load i64, ptr %eq.lhs.len35, align 8
  %eq.lhs.len37 = and i64 %eq.lhs.len36, 281474976710655
  %eq.rhs.len38 = load i64, ptr @str.35.struct, align 8
  %eq.rhs.len39 = and i64 %eq.rhs.len38, 281474976710655
  %eq.len40 = icmp eq i64 %eq.lhs.len37, %eq.rhs.len39
  br i1 %eq.len40, label %str.eq.then41, label %str.eq.else42

str.eq.then41:                                    ; preds = %str.eq.merge
  %eq.lhs.data44 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %eq.lhs.data45 = load ptr, ptr %eq.lhs.data44, align 8
  %eq.rhs.data46 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %eq.memcmp47 = call i32 @memcmp(ptr %eq.lhs.data45, ptr %eq.rhs.data46, i64 %eq.lhs.len37)
  %eq.cmp.zero48 = icmp eq i32 %eq.memcmp47, 0
  br label %str.eq.merge43

str.eq.else42:                                    ; preds = %str.eq.merge
  br label %str.eq.merge43

str.eq.merge43:                                   ; preds = %str.eq.else42, %str.eq.then41
  %str.eq.result49 = phi i1 [ %eq.cmp.zero48, %str.eq.then41 ], [ false, %str.eq.else42 ]
  %case.or = or i1 %str.eq.result, %str.eq.result49
  %eq.lhs.len50 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %eq.lhs.len51 = load i64, ptr %eq.lhs.len50, align 8
  %eq.lhs.len52 = and i64 %eq.lhs.len51, 281474976710655
  %eq.rhs.len53 = load i64, ptr @str.36.struct, align 8
  %eq.rhs.len54 = and i64 %eq.rhs.len53, 281474976710655
  %eq.len55 = icmp eq i64 %eq.lhs.len52, %eq.rhs.len54
  br i1 %eq.len55, label %str.eq.then56, label %str.eq.else57

str.eq.then56:                                    ; preds = %str.eq.merge43
  %eq.lhs.data59 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %eq.lhs.data60 = load ptr, ptr %eq.lhs.data59, align 8
  %eq.rhs.data61 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %eq.memcmp62 = call i32 @memcmp(ptr %eq.lhs.data60, ptr %eq.rhs.data61, i64 %eq.lhs.len52)
  %eq.cmp.zero63 = icmp eq i32 %eq.memcmp62, 0
  br label %str.eq.merge58

str.eq.else57:                                    ; preds = %str.eq.merge43
  br label %str.eq.merge58

str.eq.merge58:                                   ; preds = %str.eq.else57, %str.eq.then56
  %str.eq.result64 = phi i1 [ %eq.cmp.zero63, %str.eq.then56 ], [ false, %str.eq.else57 ]
  %case.or65 = or i1 %case.or, %str.eq.result64
  br i1 %case.or65, label %choice.case29, label %choice.next30
}

declare { i64, ptr } @"str::from_int"(i64) #0

declare { i64, ptr } @"str::from_float"(double) #0

define internal void @"json::#stringify_into"(ptr %0, ptr %1) #0 {
entry:
  %var._339 = alloca ptr, align 8
  %var._i338 = alloca i64, align 8
  %var.i332 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.144 = alloca i64, align 8
  %loop.idx.144 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._279 = alloca ptr, align 8
  %var._174 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.140 = alloca i64, align 8
  %loop.idx.140 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._137 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._34 = alloca i1, align 1
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

choice.exit:                                      ; preds = %choice.next273, %br.done.147, %br.done.142, %b.grow_done104, %b.grow_done56, %b.grow_done, %choice.case
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
  %tag.gep29 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id30 = load i64, ptr %tag.gep29, align 8
  %tag.match31 = icmp eq i64 %tag.id30, 2
  br i1 %tag.match31, label %choice.case27, label %choice.next28

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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %app.str.len12 = load i64, ptr %app.str.len, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data14 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len15 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len15, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len16

b.app.new.len16:                                  ; preds = %abort.dead, %pay.float.merge
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap17, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %pay.float.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.app.new.len16

b.grow2:                                          ; preds = %b.app.new.len16
  %b.cap2 = mul i64 %b.cap17, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len218 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data219 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.nogrow2:                                        ; preds = %b.app.new.len16
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len222
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data26 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data26, i64 %b.app.cur.len15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data14, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data26, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len222:                                 ; preds = %abort.dead24, %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data219, i64 %b.cur.len218, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len218
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %b.new.buf.len222

choice.case27:                                    ; preds = %choice.next4
  %pay.gep32 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr33 = load ptr, ptr %pay.gep32, align 8
  %pay.int.null = icmp eq ptr %payload.ptr33, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next28:                                    ; preds = %choice.next4
  %tag.gep84 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id85 = load i64, ptr %tag.gep84, align 8
  %tag.match86 = icmp eq i64 %tag.id85, 3
  br i1 %tag.match86, label %choice.case82, label %choice.next83

pay.int.load:                                     ; preds = %choice.case27
  %pay.int.val = load i1, ptr %payload.ptr33, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case27
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._34, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %b.load35 = load ptr, ptr %var.b, align 8
  %var.load36 = load i1, ptr %var.flag, align 1
  br i1 %var.load36, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.int.merge
  br label %choice.exit37

choice.else:                                      ; preds = %pay.int.merge
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  %app.str.len38 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %app.str.len39 = load i64, ptr %app.str.len38, align 8
  %app.str.len40 = and i64 %app.str.len39, 281474976710655
  %app.str.data41 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data42 = load ptr, ptr %app.str.data41, align 8
  %b.app.cur.len43 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.app.cur.len44 = load i64, ptr %b.app.cur.len43, align 8
  %b.app.new.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len44, i64 %app.str.len40)
  %sum46 = extractvalue { i64, i1 } %b.app.new.len45, 0
  %ovf47 = extractvalue { i64, i1 } %b.app.new.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.app.new.len48

b.app.new.len48:                                  ; preds = %abort.dead50, %choice.exit37
  %b.cap51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  %b.cap52 = load i64, ptr %b.cap51, align 8
  %b.need.grow53 = icmp slt i64 %b.cap52, %sum46
  br i1 %b.need.grow53, label %b.grow254, label %b.nogrow255

str_overflow_abort49:                             ; preds = %choice.exit37
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %b.app.new.len48

b.grow254:                                        ; preds = %b.app.new.len48
  %b.cap257 = mul i64 %b.cap52, 2
  %b.cap.small58 = icmp slt i64 %b.cap257, 16
  %b.cap.grow59 = select i1 %b.cap.small58, i64 16, i64 %b.cap257
  %b.cap.need60 = icmp slt i64 %b.cap.grow59, %sum46
  %b.new.cap61 = select i1 %b.cap.need60, i64 %sum46, i64 %b.cap.grow59
  %b.cur.len262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.cur.len263 = load i64, ptr %b.cur.len262, align 8
  %b.cur.data264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.cur.data265 = load ptr, ptr %b.cur.data264, align 8
  %b.new.buf.len266 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap61, i64 1)
  %sum67 = extractvalue { i64, i1 } %b.new.buf.len266, 0
  %ovf68 = extractvalue { i64, i1 } %b.new.buf.len266, 1
  br i1 %ovf68, label %str_overflow_abort70, label %b.new.buf.len269

b.nogrow255:                                      ; preds = %b.app.new.len48
  br label %b.grow_done56

b.grow_done56:                                    ; preds = %b.nogrow255, %b.new.buf.len269
  %b.app.data77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.app.data78 = load ptr, ptr %b.app.data77, align 8
  %b.app.dst79 = getelementptr i8, ptr %b.app.data78, i64 %b.app.cur.len44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst79, ptr align 1 %app.str.data42, i64 %app.str.len40, i1 false)
  %b.app.nul80 = getelementptr i8, ptr %b.app.data78, i64 %sum46
  store i8 0, ptr %b.app.nul80, align 1
  %b.len.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  store i64 %sum46, ptr %b.len.gep81, align 8
  br label %choice.exit

b.new.buf.len269:                                 ; preds = %abort.dead71, %b.grow254
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf273 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf273, ptr align 1 %b.cur.data265, i64 %b.cur.len263, i1 false)
  %b.grow2.nul74 = getelementptr i8, ptr %b.new.buf273, i64 %b.cur.len263
  store i8 0, ptr %b.grow2.nul74, align 1
  %b.new.data2.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  store ptr %b.new.buf273, ptr %b.new.data2.gep75, align 8
  %b.new.cap2.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  store i64 %b.new.cap61, ptr %b.new.cap2.gep76, align 8
  br label %b.grow_done56

str_overflow_abort70:                             ; preds = %b.grow254
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %b.new.buf.len269

choice.case82:                                    ; preds = %choice.next28
  %b.load87 = load ptr, ptr %var.b, align 8
  %app.str.len88 = load i64, ptr @str.17.struct, align 8
  %app.str.len89 = and i64 %app.str.len88, 281474976710655
  %app.str.data90 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.cur.len91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 0
  %b.app.cur.len92 = load i64, ptr %b.app.cur.len91, align 8
  %b.app.new.len93 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len92, i64 %app.str.len89)
  %sum94 = extractvalue { i64, i1 } %b.app.new.len93, 0
  %ovf95 = extractvalue { i64, i1 } %b.app.new.len93, 1
  br i1 %ovf95, label %str_overflow_abort97, label %b.app.new.len96

choice.next83:                                    ; preds = %choice.next28
  %tag.gep132 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id133 = load i64, ptr %tag.gep132, align 8
  %tag.match134 = icmp eq i64 %tag.id133, 4
  br i1 %tag.match134, label %choice.case130, label %choice.next131

b.app.new.len96:                                  ; preds = %abort.dead98, %choice.case82
  %b.cap99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 2
  %b.cap100 = load i64, ptr %b.cap99, align 8
  %b.need.grow101 = icmp slt i64 %b.cap100, %sum94
  br i1 %b.need.grow101, label %b.grow2102, label %b.nogrow2103

str_overflow_abort97:                             ; preds = %choice.case82
  call void @dva_abort_str_overflow_msg()
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
  br label %choice.exit

b.new.buf.len2117:                                ; preds = %abort.dead119, %b.grow2102
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %b.new.buf.len2117

choice.case130:                                   ; preds = %choice.next83
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr136 = load ptr, ptr %pay.gep135, align 8
  store ptr %payload.ptr136, ptr %var._137, align 8
  store ptr %payload.ptr136, ptr %var.items, align 8
  %b.load138 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load138, i32 0, i32 0
  %b.rn.cur.len139 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len139, i64 1)
  %sum140 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf141 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf141, label %str_overflow_abort143, label %b.rn.new.len142

choice.next131:                                   ; preds = %choice.next83
  %tag.gep274 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id275 = load i64, ptr %tag.gep274, align 8
  %tag.match276 = icmp eq i64 %tag.id275, 5
  br i1 %tag.match276, label %choice.case272, label %choice.next273

b.rn.new.len142:                                  ; preds = %abort.dead144, %choice.case130
  %b.cap145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load138, i32 0, i32 2
  %b.cap146 = load i64, ptr %b.cap145, align 8
  %b.need.grow147 = icmp slt i64 %b.cap146, %sum140
  br i1 %b.need.grow147, label %b.grow2148, label %b.nogrow2149

str_overflow_abort143:                            ; preds = %choice.case130
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead144:                                    ; No predecessors!
  br label %b.rn.new.len142

b.grow2148:                                       ; preds = %b.rn.new.len142
  %b.cap2151 = mul i64 %b.cap146, 2
  %b.cap.small152 = icmp slt i64 %b.cap2151, 16
  %b.cap.grow153 = select i1 %b.cap.small152, i64 16, i64 %b.cap2151
  %b.cap.need154 = icmp slt i64 %b.cap.grow153, %sum140
  %b.new.cap155 = select i1 %b.cap.need154, i64 %sum140, i64 %b.cap.grow153
  %b.cur.len2156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load138, i32 0, i32 0
  %b.cur.len2157 = load i64, ptr %b.cur.len2156, align 8
  %b.cur.data2158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load138, i32 0, i32 1
  %b.cur.data2159 = load ptr, ptr %b.cur.data2158, align 8
  %b.new.buf.len2160 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap155, i64 1)
  %sum161 = extractvalue { i64, i1 } %b.new.buf.len2160, 0
  %ovf162 = extractvalue { i64, i1 } %b.new.buf.len2160, 1
  br i1 %ovf162, label %str_overflow_abort164, label %b.new.buf.len2163

b.nogrow2149:                                     ; preds = %b.rn.new.len142
  br label %b.grow_done150

b.grow_done150:                                   ; preds = %b.nogrow2149, %b.new.buf.len2163
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load138, i32 0, i32 1
  %b.rn.data171 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data171, i64 %b.rn.cur.len139
  br i1 true, label %br.b1.139, label %br.c2.139

b.new.buf.len2163:                                ; preds = %abort.dead165, %b.grow2148
  %arena.cur166 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 %sum161)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2167, ptr align 1 %b.cur.data2159, i64 %b.cur.len2157, i1 false)
  %b.grow2.nul168 = getelementptr i8, ptr %b.new.buf2167, i64 %b.cur.len2157
  store i8 0, ptr %b.grow2.nul168, align 1
  %b.new.data2.gep169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load138, i32 0, i32 1
  store ptr %b.new.buf2167, ptr %b.new.data2.gep169, align 8
  %b.new.cap2.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load138, i32 0, i32 2
  store i64 %b.new.cap155, ptr %b.new.cap2.gep170, align 8
  br label %b.grow_done150

str_overflow_abort164:                            ; preds = %b.grow2148
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead165:                                    ; No predecessors!
  br label %b.new.buf.len2163

br.b1.139:                                        ; preds = %b.grow_done150
  store i8 91, ptr %b.rn.dst, align 1
  br label %br.done.139

br.c2.139:                                        ; preds = %b.grow_done150
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
  %br.nul = getelementptr i8, ptr %b.rn.data171, i64 %sum140
  store i8 0, ptr %br.nul, align 1
  %b.len.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load138, i32 0, i32 0
  store i64 %sum140, ptr %b.len.gep172, align 8
  %var.load173 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load173, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load173, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.140, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._137, align 8
  br label %loop.header.140

loop.header.140:                                  ; preds = %loop.latch.140, %br.done.139
  %counter.load = load i64, ptr %loop.idx.140, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.140, label %loop.exit.nat.140

loop.body.140:                                    ; preds = %loop.header.140
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.140, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load173, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %counter.load
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.elem.val, ptr %var._174, align 8
  store ptr %sl.elem.val, ptr %var.item, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load175 = load i64, ptr %var.i, align 8
  %cmptmp = icmp sgt i64 %var.load175, 0
  br i1 %cmptmp, label %choice.then176, label %choice.exit177

loop.exit.nat.140:                                ; preds = %loop.header.140
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.140

loop.latch.140:                                   ; preds = %choice.exit177
  %step.val = load i64, ptr %loop.step.140, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.140, align 8
  br label %loop.header.140

loop.exit.140:                                    ; preds = %loop.exit.nat.140
  store ptr %cycle.prev.u, ptr %var._137, align 8
  %b.load226 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len227 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load226, i32 0, i32 0
  %b.rn.cur.len228 = load i64, ptr %b.rn.cur.len227, align 8
  %b.rn.new.len229 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len228, i64 1)
  %sum230 = extractvalue { i64, i1 } %b.rn.new.len229, 0
  %ovf231 = extractvalue { i64, i1 } %b.rn.new.len229, 1
  br i1 %ovf231, label %str_overflow_abort233, label %b.rn.new.len232

choice.then176:                                   ; preds = %loop.body.140
  %b.load178 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  %b.rn.cur.len180 = load i64, ptr %b.rn.cur.len179, align 8
  %b.rn.new.len181 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len180, i64 1)
  %sum182 = extractvalue { i64, i1 } %b.rn.new.len181, 0
  %ovf183 = extractvalue { i64, i1 } %b.rn.new.len181, 1
  br i1 %ovf183, label %str_overflow_abort185, label %b.rn.new.len184

choice.exit177:                                   ; preds = %br.done.141, %loop.body.140
  %var.load224 = load ptr, ptr %var.b, align 8
  %var.load225 = load ptr, ptr %var.item, align 8
  call void @"json::#stringify_into"(ptr %var.load224, ptr %var.load225)
  br label %loop.latch.140

b.rn.new.len184:                                  ; preds = %abort.dead186, %choice.then176
  %b.cap187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 2
  %b.cap188 = load i64, ptr %b.cap187, align 8
  %b.need.grow189 = icmp slt i64 %b.cap188, %sum182
  br i1 %b.need.grow189, label %b.grow2190, label %b.nogrow2191

str_overflow_abort185:                            ; preds = %choice.then176
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead186:                                    ; No predecessors!
  br label %b.rn.new.len184

b.grow2190:                                       ; preds = %b.rn.new.len184
  %b.cap2193 = mul i64 %b.cap188, 2
  %b.cap.small194 = icmp slt i64 %b.cap2193, 16
  %b.cap.grow195 = select i1 %b.cap.small194, i64 16, i64 %b.cap2193
  %b.cap.need196 = icmp slt i64 %b.cap.grow195, %sum182
  %b.new.cap197 = select i1 %b.cap.need196, i64 %sum182, i64 %b.cap.grow195
  %b.cur.len2198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  %b.cur.len2199 = load i64, ptr %b.cur.len2198, align 8
  %b.cur.data2200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 1
  %b.cur.data2201 = load ptr, ptr %b.cur.data2200, align 8
  %b.new.buf.len2202 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap197, i64 1)
  %sum203 = extractvalue { i64, i1 } %b.new.buf.len2202, 0
  %ovf204 = extractvalue { i64, i1 } %b.new.buf.len2202, 1
  br i1 %ovf204, label %str_overflow_abort206, label %b.new.buf.len2205

b.nogrow2191:                                     ; preds = %b.rn.new.len184
  br label %b.grow_done192

b.grow_done192:                                   ; preds = %b.nogrow2191, %b.new.buf.len2205
  %b.rn.data213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 1
  %b.rn.data214 = load ptr, ptr %b.rn.data213, align 8
  %b.rn.dst215 = getelementptr i8, ptr %b.rn.data214, i64 %b.rn.cur.len180
  br i1 true, label %br.b1.141, label %br.c2.141

b.new.buf.len2205:                                ; preds = %abort.dead207, %b.grow2190
  %arena.cur208 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 %sum203)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2209, ptr align 1 %b.cur.data2201, i64 %b.cur.len2199, i1 false)
  %b.grow2.nul210 = getelementptr i8, ptr %b.new.buf2209, i64 %b.cur.len2199
  store i8 0, ptr %b.grow2.nul210, align 1
  %b.new.data2.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 1
  store ptr %b.new.buf2209, ptr %b.new.data2.gep211, align 8
  %b.new.cap2.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 2
  store i64 %b.new.cap197, ptr %b.new.cap2.gep212, align 8
  br label %b.grow_done192

str_overflow_abort206:                            ; preds = %b.grow2190
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead207:                                    ; No predecessors!
  br label %b.new.buf.len2205

br.b1.141:                                        ; preds = %b.grow_done192
  store i8 44, ptr %b.rn.dst215, align 1
  br label %br.done.141

br.c2.141:                                        ; preds = %b.grow_done192
  br i1 true, label %br.b2.141, label %br.c3.141

br.b2.141:                                        ; preds = %br.c2.141
  store i8 -64, ptr %b.rn.dst215, align 1
  %br.dst1216 = getelementptr i8, ptr %b.rn.dst215, i64 1
  store i8 -84, ptr %br.dst1216, align 1
  br label %br.done.141

br.c3.141:                                        ; preds = %br.c2.141
  br i1 true, label %br.b3.141, label %br.b4.141

br.b3.141:                                        ; preds = %br.c3.141
  store i8 -32, ptr %b.rn.dst215, align 1
  %br.dst1.3217 = getelementptr i8, ptr %b.rn.dst215, i64 1
  store i8 -128, ptr %br.dst1.3217, align 1
  %br.dst2.3218 = getelementptr i8, ptr %b.rn.dst215, i64 2
  store i8 -84, ptr %br.dst2.3218, align 1
  br label %br.done.141

br.b4.141:                                        ; preds = %br.c3.141
  store i8 -16, ptr %b.rn.dst215, align 1
  %br.dst1.4219 = getelementptr i8, ptr %b.rn.dst215, i64 1
  store i8 -128, ptr %br.dst1.4219, align 1
  %br.dst2.4220 = getelementptr i8, ptr %b.rn.dst215, i64 2
  store i8 -128, ptr %br.dst2.4220, align 1
  %br.dst3.4221 = getelementptr i8, ptr %b.rn.dst215, i64 3
  store i8 -84, ptr %br.dst3.4221, align 1
  br label %br.done.141

br.done.141:                                      ; preds = %br.b4.141, %br.b3.141, %br.b2.141, %br.b1.141
  %br.nul222 = getelementptr i8, ptr %b.rn.data214, i64 %sum182
  store i8 0, ptr %br.nul222, align 1
  %b.len.gep223 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  store i64 %sum182, ptr %b.len.gep223, align 8
  br label %choice.exit177

b.rn.new.len232:                                  ; preds = %abort.dead234, %loop.exit.140
  %b.cap235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load226, i32 0, i32 2
  %b.cap236 = load i64, ptr %b.cap235, align 8
  %b.need.grow237 = icmp slt i64 %b.cap236, %sum230
  br i1 %b.need.grow237, label %b.grow2238, label %b.nogrow2239

str_overflow_abort233:                            ; preds = %loop.exit.140
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead234:                                    ; No predecessors!
  br label %b.rn.new.len232

b.grow2238:                                       ; preds = %b.rn.new.len232
  %b.cap2241 = mul i64 %b.cap236, 2
  %b.cap.small242 = icmp slt i64 %b.cap2241, 16
  %b.cap.grow243 = select i1 %b.cap.small242, i64 16, i64 %b.cap2241
  %b.cap.need244 = icmp slt i64 %b.cap.grow243, %sum230
  %b.new.cap245 = select i1 %b.cap.need244, i64 %sum230, i64 %b.cap.grow243
  %b.cur.len2246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load226, i32 0, i32 0
  %b.cur.len2247 = load i64, ptr %b.cur.len2246, align 8
  %b.cur.data2248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load226, i32 0, i32 1
  %b.cur.data2249 = load ptr, ptr %b.cur.data2248, align 8
  %b.new.buf.len2250 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap245, i64 1)
  %sum251 = extractvalue { i64, i1 } %b.new.buf.len2250, 0
  %ovf252 = extractvalue { i64, i1 } %b.new.buf.len2250, 1
  br i1 %ovf252, label %str_overflow_abort254, label %b.new.buf.len2253

b.nogrow2239:                                     ; preds = %b.rn.new.len232
  br label %b.grow_done240

b.grow_done240:                                   ; preds = %b.nogrow2239, %b.new.buf.len2253
  %b.rn.data261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load226, i32 0, i32 1
  %b.rn.data262 = load ptr, ptr %b.rn.data261, align 8
  %b.rn.dst263 = getelementptr i8, ptr %b.rn.data262, i64 %b.rn.cur.len228
  br i1 true, label %br.b1.142, label %br.c2.142

b.new.buf.len2253:                                ; preds = %abort.dead255, %b.grow2238
  %arena.cur256 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 %sum251)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2257, ptr align 1 %b.cur.data2249, i64 %b.cur.len2247, i1 false)
  %b.grow2.nul258 = getelementptr i8, ptr %b.new.buf2257, i64 %b.cur.len2247
  store i8 0, ptr %b.grow2.nul258, align 1
  %b.new.data2.gep259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load226, i32 0, i32 1
  store ptr %b.new.buf2257, ptr %b.new.data2.gep259, align 8
  %b.new.cap2.gep260 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load226, i32 0, i32 2
  store i64 %b.new.cap245, ptr %b.new.cap2.gep260, align 8
  br label %b.grow_done240

str_overflow_abort254:                            ; preds = %b.grow2238
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead255:                                    ; No predecessors!
  br label %b.new.buf.len2253

br.b1.142:                                        ; preds = %b.grow_done240
  store i8 93, ptr %b.rn.dst263, align 1
  br label %br.done.142

br.c2.142:                                        ; preds = %b.grow_done240
  br i1 true, label %br.b2.142, label %br.c3.142

br.b2.142:                                        ; preds = %br.c2.142
  store i8 -63, ptr %b.rn.dst263, align 1
  %br.dst1264 = getelementptr i8, ptr %b.rn.dst263, i64 1
  store i8 -99, ptr %br.dst1264, align 1
  br label %br.done.142

br.c3.142:                                        ; preds = %br.c2.142
  br i1 true, label %br.b3.142, label %br.b4.142

br.b3.142:                                        ; preds = %br.c3.142
  store i8 -32, ptr %b.rn.dst263, align 1
  %br.dst1.3265 = getelementptr i8, ptr %b.rn.dst263, i64 1
  store i8 -127, ptr %br.dst1.3265, align 1
  %br.dst2.3266 = getelementptr i8, ptr %b.rn.dst263, i64 2
  store i8 -99, ptr %br.dst2.3266, align 1
  br label %br.done.142

br.b4.142:                                        ; preds = %br.c3.142
  store i8 -16, ptr %b.rn.dst263, align 1
  %br.dst1.4267 = getelementptr i8, ptr %b.rn.dst263, i64 1
  store i8 -128, ptr %br.dst1.4267, align 1
  %br.dst2.4268 = getelementptr i8, ptr %b.rn.dst263, i64 2
  store i8 -127, ptr %br.dst2.4268, align 1
  %br.dst3.4269 = getelementptr i8, ptr %b.rn.dst263, i64 3
  store i8 -99, ptr %br.dst3.4269, align 1
  br label %br.done.142

br.done.142:                                      ; preds = %br.b4.142, %br.b3.142, %br.b2.142, %br.b1.142
  %br.nul270 = getelementptr i8, ptr %b.rn.data262, i64 %sum230
  store i8 0, ptr %br.nul270, align 1
  %b.len.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load226, i32 0, i32 0
  store i64 %sum230, ptr %b.len.gep271, align 8
  br label %choice.exit

choice.case272:                                   ; preds = %choice.next131
  %pay.gep277 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr278 = load ptr, ptr %pay.gep277, align 8
  store ptr %payload.ptr278, ptr %var._279, align 8
  store ptr %payload.ptr278, ptr %var.pairs, align 8
  %b.load280 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 0
  %b.rn.cur.len282 = load i64, ptr %b.rn.cur.len281, align 8
  %b.rn.new.len283 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len282, i64 1)
  %sum284 = extractvalue { i64, i1 } %b.rn.new.len283, 0
  %ovf285 = extractvalue { i64, i1 } %b.rn.new.len283, 1
  br i1 %ovf285, label %str_overflow_abort287, label %b.rn.new.len286

choice.next273:                                   ; preds = %choice.next131
  br label %choice.exit

b.rn.new.len286:                                  ; preds = %abort.dead288, %choice.case272
  %b.cap289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 2
  %b.cap290 = load i64, ptr %b.cap289, align 8
  %b.need.grow291 = icmp slt i64 %b.cap290, %sum284
  br i1 %b.need.grow291, label %b.grow2292, label %b.nogrow2293

str_overflow_abort287:                            ; preds = %choice.case272
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead288:                                    ; No predecessors!
  br label %b.rn.new.len286

b.grow2292:                                       ; preds = %b.rn.new.len286
  %b.cap2295 = mul i64 %b.cap290, 2
  %b.cap.small296 = icmp slt i64 %b.cap2295, 16
  %b.cap.grow297 = select i1 %b.cap.small296, i64 16, i64 %b.cap2295
  %b.cap.need298 = icmp slt i64 %b.cap.grow297, %sum284
  %b.new.cap299 = select i1 %b.cap.need298, i64 %sum284, i64 %b.cap.grow297
  %b.cur.len2300 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 0
  %b.cur.len2301 = load i64, ptr %b.cur.len2300, align 8
  %b.cur.data2302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 1
  %b.cur.data2303 = load ptr, ptr %b.cur.data2302, align 8
  %b.new.buf.len2304 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap299, i64 1)
  %sum305 = extractvalue { i64, i1 } %b.new.buf.len2304, 0
  %ovf306 = extractvalue { i64, i1 } %b.new.buf.len2304, 1
  br i1 %ovf306, label %str_overflow_abort308, label %b.new.buf.len2307

b.nogrow2293:                                     ; preds = %b.rn.new.len286
  br label %b.grow_done294

b.grow_done294:                                   ; preds = %b.nogrow2293, %b.new.buf.len2307
  %b.rn.data315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 1
  %b.rn.data316 = load ptr, ptr %b.rn.data315, align 8
  %b.rn.dst317 = getelementptr i8, ptr %b.rn.data316, i64 %b.rn.cur.len282
  br i1 true, label %br.b1.143, label %br.c2.143

b.new.buf.len2307:                                ; preds = %abort.dead309, %b.grow2292
  %arena.cur310 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2311 = call ptr @dva_arena_alloc(ptr %arena.cur310, i64 %sum305)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2311, ptr align 1 %b.cur.data2303, i64 %b.cur.len2301, i1 false)
  %b.grow2.nul312 = getelementptr i8, ptr %b.new.buf2311, i64 %b.cur.len2301
  store i8 0, ptr %b.grow2.nul312, align 1
  %b.new.data2.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 1
  store ptr %b.new.buf2311, ptr %b.new.data2.gep313, align 8
  %b.new.cap2.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 2
  store i64 %b.new.cap299, ptr %b.new.cap2.gep314, align 8
  br label %b.grow_done294

str_overflow_abort308:                            ; preds = %b.grow2292
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead309:                                    ; No predecessors!
  br label %b.new.buf.len2307

br.b1.143:                                        ; preds = %b.grow_done294
  store i8 123, ptr %b.rn.dst317, align 1
  br label %br.done.143

br.c2.143:                                        ; preds = %b.grow_done294
  br i1 true, label %br.b2.143, label %br.c3.143

br.b2.143:                                        ; preds = %br.c2.143
  store i8 -63, ptr %b.rn.dst317, align 1
  %br.dst1318 = getelementptr i8, ptr %b.rn.dst317, i64 1
  store i8 -69, ptr %br.dst1318, align 1
  br label %br.done.143

br.c3.143:                                        ; preds = %br.c2.143
  br i1 true, label %br.b3.143, label %br.b4.143

br.b3.143:                                        ; preds = %br.c3.143
  store i8 -32, ptr %b.rn.dst317, align 1
  %br.dst1.3319 = getelementptr i8, ptr %b.rn.dst317, i64 1
  store i8 -127, ptr %br.dst1.3319, align 1
  %br.dst2.3320 = getelementptr i8, ptr %b.rn.dst317, i64 2
  store i8 -69, ptr %br.dst2.3320, align 1
  br label %br.done.143

br.b4.143:                                        ; preds = %br.c3.143
  store i8 -16, ptr %b.rn.dst317, align 1
  %br.dst1.4321 = getelementptr i8, ptr %b.rn.dst317, i64 1
  store i8 -128, ptr %br.dst1.4321, align 1
  %br.dst2.4322 = getelementptr i8, ptr %b.rn.dst317, i64 2
  store i8 -127, ptr %br.dst2.4322, align 1
  %br.dst3.4323 = getelementptr i8, ptr %b.rn.dst317, i64 3
  store i8 -69, ptr %br.dst3.4323, align 1
  br label %br.done.143

br.done.143:                                      ; preds = %br.b4.143, %br.b3.143, %br.b2.143, %br.b1.143
  %br.nul324 = getelementptr i8, ptr %b.rn.data316, i64 %sum284
  store i8 0, ptr %br.nul324, align 1
  %b.len.gep325 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 0
  store i64 %sum284, ptr %b.len.gep325, align 8
  %var.load326 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep327 = getelementptr inbounds { ptr, i64 }, ptr %var.load326, i32 0, i32 1
  %sl.len.raw328 = load i64, ptr %sl.len.gep327, align 8
  %sl.len329 = and i64 %sl.len.raw328, 4611686018427387903
  %sl.data.gep330 = getelementptr inbounds { ptr, i64 }, ptr %var.load326, i32 0, i32 0
  %sl.data331 = load ptr, ptr %sl.data.gep330, align 8
  store i64 0, ptr %loop.idx.144, align 8
  store i64 0, ptr %var.i332, align 8
  %cycle.prev.u333 = load ptr, ptr %var._279, align 8
  br label %loop.header.144

loop.header.144:                                  ; preds = %loop.latch.144, %br.done.143
  %counter.load334 = load i64, ptr %loop.idx.144, align 8
  %loop.cond335 = icmp slt i64 %counter.load334, %sl.len329
  br i1 %loop.cond335, label %loop.body.144, label %loop.exit.nat.144

loop.body.144:                                    ; preds = %loop.header.144
  %loop.rel.i337 = sub i64 %counter.load334, 0
  store i64 1, ptr %loop.step.144, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load326, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.144:                                ; preds = %loop.header.144
  %loop.rel.end336 = sub i64 %counter.load334, 0
  store i64 %loop.rel.end336, ptr %var.i332, align 8
  br label %loop.exit.144

loop.latch.144:                                   ; preds = %br.done.146
  %step.val442 = load i64, ptr %loop.step.144, align 8
  %loop.next443 = add i64 %counter.load334, %step.val442
  store i64 %loop.next443, ptr %loop.idx.144, align 8
  br label %loop.header.144

loop.exit.144:                                    ; preds = %loop.exit.nat.144
  store ptr %cycle.prev.u333, ptr %var._279, align 8
  %b.load444 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len445 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load444, i32 0, i32 0
  %b.rn.cur.len446 = load i64, ptr %b.rn.cur.len445, align 8
  %b.rn.new.len447 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len446, i64 1)
  %sum448 = extractvalue { i64, i1 } %b.rn.new.len447, 0
  %ovf449 = extractvalue { i64, i1 } %b.rn.new.len447, 1
  br i1 %ovf449, label %str_overflow_abort451, label %b.rn.new.len450

sl.rec.elem.pbb:                                  ; preds = %loop.body.144
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data331, i64 %counter.load334
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.144
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data331, i64 %counter.load334
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i337, ptr %var._i338, align 8
  store ptr %sl.rec.elem, ptr %var._339, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i337, ptr %var.i332, align 8
  %var.load340 = load i64, ptr %var.i332, align 8
  %cmptmp341 = icmp sgt i64 %var.load340, 0
  br i1 %cmptmp341, label %choice.then342, label %choice.exit343

choice.then342:                                   ; preds = %sl.rec.elem.dbb
  %b.load344 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len345 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 0
  %b.rn.cur.len346 = load i64, ptr %b.rn.cur.len345, align 8
  %b.rn.new.len347 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len346, i64 1)
  %sum348 = extractvalue { i64, i1 } %b.rn.new.len347, 0
  %ovf349 = extractvalue { i64, i1 } %b.rn.new.len347, 1
  br i1 %ovf349, label %str_overflow_abort351, label %b.rn.new.len350

choice.exit343:                                   ; preds = %br.done.145, %sl.rec.elem.dbb
  %var.load390 = load ptr, ptr %var.b, align 8
  %var.load391 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load391, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load390, ptr %fld.load)
  %b.load392 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len393 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load392, i32 0, i32 0
  %b.rn.cur.len394 = load i64, ptr %b.rn.cur.len393, align 8
  %b.rn.new.len395 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len394, i64 1)
  %sum396 = extractvalue { i64, i1 } %b.rn.new.len395, 0
  %ovf397 = extractvalue { i64, i1 } %b.rn.new.len395, 1
  br i1 %ovf397, label %str_overflow_abort399, label %b.rn.new.len398

b.rn.new.len350:                                  ; preds = %abort.dead352, %choice.then342
  %b.cap353 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 2
  %b.cap354 = load i64, ptr %b.cap353, align 8
  %b.need.grow355 = icmp slt i64 %b.cap354, %sum348
  br i1 %b.need.grow355, label %b.grow2356, label %b.nogrow2357

str_overflow_abort351:                            ; preds = %choice.then342
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead352:                                    ; No predecessors!
  br label %b.rn.new.len350

b.grow2356:                                       ; preds = %b.rn.new.len350
  %b.cap2359 = mul i64 %b.cap354, 2
  %b.cap.small360 = icmp slt i64 %b.cap2359, 16
  %b.cap.grow361 = select i1 %b.cap.small360, i64 16, i64 %b.cap2359
  %b.cap.need362 = icmp slt i64 %b.cap.grow361, %sum348
  %b.new.cap363 = select i1 %b.cap.need362, i64 %sum348, i64 %b.cap.grow361
  %b.cur.len2364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 0
  %b.cur.len2365 = load i64, ptr %b.cur.len2364, align 8
  %b.cur.data2366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 1
  %b.cur.data2367 = load ptr, ptr %b.cur.data2366, align 8
  %b.new.buf.len2368 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap363, i64 1)
  %sum369 = extractvalue { i64, i1 } %b.new.buf.len2368, 0
  %ovf370 = extractvalue { i64, i1 } %b.new.buf.len2368, 1
  br i1 %ovf370, label %str_overflow_abort372, label %b.new.buf.len2371

b.nogrow2357:                                     ; preds = %b.rn.new.len350
  br label %b.grow_done358

b.grow_done358:                                   ; preds = %b.nogrow2357, %b.new.buf.len2371
  %b.rn.data379 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 1
  %b.rn.data380 = load ptr, ptr %b.rn.data379, align 8
  %b.rn.dst381 = getelementptr i8, ptr %b.rn.data380, i64 %b.rn.cur.len346
  br i1 true, label %br.b1.145, label %br.c2.145

b.new.buf.len2371:                                ; preds = %abort.dead373, %b.grow2356
  %arena.cur374 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 %sum369)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2375, ptr align 1 %b.cur.data2367, i64 %b.cur.len2365, i1 false)
  %b.grow2.nul376 = getelementptr i8, ptr %b.new.buf2375, i64 %b.cur.len2365
  store i8 0, ptr %b.grow2.nul376, align 1
  %b.new.data2.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 1
  store ptr %b.new.buf2375, ptr %b.new.data2.gep377, align 8
  %b.new.cap2.gep378 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 2
  store i64 %b.new.cap363, ptr %b.new.cap2.gep378, align 8
  br label %b.grow_done358

str_overflow_abort372:                            ; preds = %b.grow2356
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead373:                                    ; No predecessors!
  br label %b.new.buf.len2371

br.b1.145:                                        ; preds = %b.grow_done358
  store i8 44, ptr %b.rn.dst381, align 1
  br label %br.done.145

br.c2.145:                                        ; preds = %b.grow_done358
  br i1 true, label %br.b2.145, label %br.c3.145

br.b2.145:                                        ; preds = %br.c2.145
  store i8 -64, ptr %b.rn.dst381, align 1
  %br.dst1382 = getelementptr i8, ptr %b.rn.dst381, i64 1
  store i8 -84, ptr %br.dst1382, align 1
  br label %br.done.145

br.c3.145:                                        ; preds = %br.c2.145
  br i1 true, label %br.b3.145, label %br.b4.145

br.b3.145:                                        ; preds = %br.c3.145
  store i8 -32, ptr %b.rn.dst381, align 1
  %br.dst1.3383 = getelementptr i8, ptr %b.rn.dst381, i64 1
  store i8 -128, ptr %br.dst1.3383, align 1
  %br.dst2.3384 = getelementptr i8, ptr %b.rn.dst381, i64 2
  store i8 -84, ptr %br.dst2.3384, align 1
  br label %br.done.145

br.b4.145:                                        ; preds = %br.c3.145
  store i8 -16, ptr %b.rn.dst381, align 1
  %br.dst1.4385 = getelementptr i8, ptr %b.rn.dst381, i64 1
  store i8 -128, ptr %br.dst1.4385, align 1
  %br.dst2.4386 = getelementptr i8, ptr %b.rn.dst381, i64 2
  store i8 -128, ptr %br.dst2.4386, align 1
  %br.dst3.4387 = getelementptr i8, ptr %b.rn.dst381, i64 3
  store i8 -84, ptr %br.dst3.4387, align 1
  br label %br.done.145

br.done.145:                                      ; preds = %br.b4.145, %br.b3.145, %br.b2.145, %br.b1.145
  %br.nul388 = getelementptr i8, ptr %b.rn.data380, i64 %sum348
  store i8 0, ptr %br.nul388, align 1
  %b.len.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load344, i32 0, i32 0
  store i64 %sum348, ptr %b.len.gep389, align 8
  br label %choice.exit343

b.rn.new.len398:                                  ; preds = %abort.dead400, %choice.exit343
  %b.cap401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load392, i32 0, i32 2
  %b.cap402 = load i64, ptr %b.cap401, align 8
  %b.need.grow403 = icmp slt i64 %b.cap402, %sum396
  br i1 %b.need.grow403, label %b.grow2404, label %b.nogrow2405

str_overflow_abort399:                            ; preds = %choice.exit343
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead400:                                    ; No predecessors!
  br label %b.rn.new.len398

b.grow2404:                                       ; preds = %b.rn.new.len398
  %b.cap2407 = mul i64 %b.cap402, 2
  %b.cap.small408 = icmp slt i64 %b.cap2407, 16
  %b.cap.grow409 = select i1 %b.cap.small408, i64 16, i64 %b.cap2407
  %b.cap.need410 = icmp slt i64 %b.cap.grow409, %sum396
  %b.new.cap411 = select i1 %b.cap.need410, i64 %sum396, i64 %b.cap.grow409
  %b.cur.len2412 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load392, i32 0, i32 0
  %b.cur.len2413 = load i64, ptr %b.cur.len2412, align 8
  %b.cur.data2414 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load392, i32 0, i32 1
  %b.cur.data2415 = load ptr, ptr %b.cur.data2414, align 8
  %b.new.buf.len2416 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap411, i64 1)
  %sum417 = extractvalue { i64, i1 } %b.new.buf.len2416, 0
  %ovf418 = extractvalue { i64, i1 } %b.new.buf.len2416, 1
  br i1 %ovf418, label %str_overflow_abort420, label %b.new.buf.len2419

b.nogrow2405:                                     ; preds = %b.rn.new.len398
  br label %b.grow_done406

b.grow_done406:                                   ; preds = %b.nogrow2405, %b.new.buf.len2419
  %b.rn.data427 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load392, i32 0, i32 1
  %b.rn.data428 = load ptr, ptr %b.rn.data427, align 8
  %b.rn.dst429 = getelementptr i8, ptr %b.rn.data428, i64 %b.rn.cur.len394
  br i1 true, label %br.b1.146, label %br.c2.146

b.new.buf.len2419:                                ; preds = %abort.dead421, %b.grow2404
  %arena.cur422 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2423 = call ptr @dva_arena_alloc(ptr %arena.cur422, i64 %sum417)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2423, ptr align 1 %b.cur.data2415, i64 %b.cur.len2413, i1 false)
  %b.grow2.nul424 = getelementptr i8, ptr %b.new.buf2423, i64 %b.cur.len2413
  store i8 0, ptr %b.grow2.nul424, align 1
  %b.new.data2.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load392, i32 0, i32 1
  store ptr %b.new.buf2423, ptr %b.new.data2.gep425, align 8
  %b.new.cap2.gep426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load392, i32 0, i32 2
  store i64 %b.new.cap411, ptr %b.new.cap2.gep426, align 8
  br label %b.grow_done406

str_overflow_abort420:                            ; preds = %b.grow2404
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead421:                                    ; No predecessors!
  br label %b.new.buf.len2419

br.b1.146:                                        ; preds = %b.grow_done406
  store i8 58, ptr %b.rn.dst429, align 1
  br label %br.done.146

br.c2.146:                                        ; preds = %b.grow_done406
  br i1 true, label %br.b2.146, label %br.c3.146

br.b2.146:                                        ; preds = %br.c2.146
  store i8 -64, ptr %b.rn.dst429, align 1
  %br.dst1430 = getelementptr i8, ptr %b.rn.dst429, i64 1
  store i8 -70, ptr %br.dst1430, align 1
  br label %br.done.146

br.c3.146:                                        ; preds = %br.c2.146
  br i1 true, label %br.b3.146, label %br.b4.146

br.b3.146:                                        ; preds = %br.c3.146
  store i8 -32, ptr %b.rn.dst429, align 1
  %br.dst1.3431 = getelementptr i8, ptr %b.rn.dst429, i64 1
  store i8 -128, ptr %br.dst1.3431, align 1
  %br.dst2.3432 = getelementptr i8, ptr %b.rn.dst429, i64 2
  store i8 -70, ptr %br.dst2.3432, align 1
  br label %br.done.146

br.b4.146:                                        ; preds = %br.c3.146
  store i8 -16, ptr %b.rn.dst429, align 1
  %br.dst1.4433 = getelementptr i8, ptr %b.rn.dst429, i64 1
  store i8 -128, ptr %br.dst1.4433, align 1
  %br.dst2.4434 = getelementptr i8, ptr %b.rn.dst429, i64 2
  store i8 -128, ptr %br.dst2.4434, align 1
  %br.dst3.4435 = getelementptr i8, ptr %b.rn.dst429, i64 3
  store i8 -70, ptr %br.dst3.4435, align 1
  br label %br.done.146

br.done.146:                                      ; preds = %br.b4.146, %br.b3.146, %br.b2.146, %br.b1.146
  %br.nul436 = getelementptr i8, ptr %b.rn.data428, i64 %sum396
  store i8 0, ptr %br.nul436, align 1
  %b.len.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load392, i32 0, i32 0
  store i64 %sum396, ptr %b.len.gep437, align 8
  %var.load438 = load ptr, ptr %var.b, align 8
  %var.load439 = load ptr, ptr %var.p, align 8
  %fld.gep440 = getelementptr inbounds { ptr, ptr }, ptr %var.load439, i32 0, i32 1
  %fld.load441 = load ptr, ptr %fld.gep440, align 8
  call void @"json::#stringify_into"(ptr %var.load438, ptr %fld.load441)
  br label %loop.latch.144

b.rn.new.len450:                                  ; preds = %abort.dead452, %loop.exit.144
  %b.cap453 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load444, i32 0, i32 2
  %b.cap454 = load i64, ptr %b.cap453, align 8
  %b.need.grow455 = icmp slt i64 %b.cap454, %sum448
  br i1 %b.need.grow455, label %b.grow2456, label %b.nogrow2457

str_overflow_abort451:                            ; preds = %loop.exit.144
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead452:                                    ; No predecessors!
  br label %b.rn.new.len450

b.grow2456:                                       ; preds = %b.rn.new.len450
  %b.cap2459 = mul i64 %b.cap454, 2
  %b.cap.small460 = icmp slt i64 %b.cap2459, 16
  %b.cap.grow461 = select i1 %b.cap.small460, i64 16, i64 %b.cap2459
  %b.cap.need462 = icmp slt i64 %b.cap.grow461, %sum448
  %b.new.cap463 = select i1 %b.cap.need462, i64 %sum448, i64 %b.cap.grow461
  %b.cur.len2464 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load444, i32 0, i32 0
  %b.cur.len2465 = load i64, ptr %b.cur.len2464, align 8
  %b.cur.data2466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load444, i32 0, i32 1
  %b.cur.data2467 = load ptr, ptr %b.cur.data2466, align 8
  %b.new.buf.len2468 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap463, i64 1)
  %sum469 = extractvalue { i64, i1 } %b.new.buf.len2468, 0
  %ovf470 = extractvalue { i64, i1 } %b.new.buf.len2468, 1
  br i1 %ovf470, label %str_overflow_abort472, label %b.new.buf.len2471

b.nogrow2457:                                     ; preds = %b.rn.new.len450
  br label %b.grow_done458

b.grow_done458:                                   ; preds = %b.nogrow2457, %b.new.buf.len2471
  %b.rn.data479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load444, i32 0, i32 1
  %b.rn.data480 = load ptr, ptr %b.rn.data479, align 8
  %b.rn.dst481 = getelementptr i8, ptr %b.rn.data480, i64 %b.rn.cur.len446
  br i1 true, label %br.b1.147, label %br.c2.147

b.new.buf.len2471:                                ; preds = %abort.dead473, %b.grow2456
  %arena.cur474 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2475 = call ptr @dva_arena_alloc(ptr %arena.cur474, i64 %sum469)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2475, ptr align 1 %b.cur.data2467, i64 %b.cur.len2465, i1 false)
  %b.grow2.nul476 = getelementptr i8, ptr %b.new.buf2475, i64 %b.cur.len2465
  store i8 0, ptr %b.grow2.nul476, align 1
  %b.new.data2.gep477 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load444, i32 0, i32 1
  store ptr %b.new.buf2475, ptr %b.new.data2.gep477, align 8
  %b.new.cap2.gep478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load444, i32 0, i32 2
  store i64 %b.new.cap463, ptr %b.new.cap2.gep478, align 8
  br label %b.grow_done458

str_overflow_abort472:                            ; preds = %b.grow2456
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead473:                                    ; No predecessors!
  br label %b.new.buf.len2471

br.b1.147:                                        ; preds = %b.grow_done458
  store i8 125, ptr %b.rn.dst481, align 1
  br label %br.done.147

br.c2.147:                                        ; preds = %b.grow_done458
  br i1 true, label %br.b2.147, label %br.c3.147

br.b2.147:                                        ; preds = %br.c2.147
  store i8 -63, ptr %b.rn.dst481, align 1
  %br.dst1482 = getelementptr i8, ptr %b.rn.dst481, i64 1
  store i8 -67, ptr %br.dst1482, align 1
  br label %br.done.147

br.c3.147:                                        ; preds = %br.c2.147
  br i1 true, label %br.b3.147, label %br.b4.147

br.b3.147:                                        ; preds = %br.c3.147
  store i8 -32, ptr %b.rn.dst481, align 1
  %br.dst1.3483 = getelementptr i8, ptr %b.rn.dst481, i64 1
  store i8 -127, ptr %br.dst1.3483, align 1
  %br.dst2.3484 = getelementptr i8, ptr %b.rn.dst481, i64 2
  store i8 -67, ptr %br.dst2.3484, align 1
  br label %br.done.147

br.b4.147:                                        ; preds = %br.c3.147
  store i8 -16, ptr %b.rn.dst481, align 1
  %br.dst1.4485 = getelementptr i8, ptr %b.rn.dst481, i64 1
  store i8 -128, ptr %br.dst1.4485, align 1
  %br.dst2.4486 = getelementptr i8, ptr %b.rn.dst481, i64 2
  store i8 -127, ptr %br.dst2.4486, align 1
  %br.dst3.4487 = getelementptr i8, ptr %b.rn.dst481, i64 3
  store i8 -67, ptr %br.dst3.4487, align 1
  br label %br.done.147

br.done.147:                                      ; preds = %br.b4.147, %br.b3.147, %br.b2.147, %br.b1.147
  %br.nul488 = getelementptr i8, ptr %b.rn.data480, i64 %sum448
  store i8 0, ptr %br.nul488, align 1
  %b.len.gep489 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load444, i32 0, i32 0
  store i64 %sum448, ptr %b.len.gep489, align 8
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
  br i1 true, label %br.b1.149, label %br.c2.149

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
  %var._485 = alloca ptr, align 8
  %var._i484 = alloca i64, align 8
  %var.i478 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.153 = alloca i64, align 8
  %loop.idx.153 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._377 = alloca ptr, align 8
  %var._229 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.150 = alloca i64, align 8
  %loop.idx.150 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._137 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._34 = alloca i1, align 1
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

choice.exit:                                      ; preds = %choice.next371, %choice.exit385, %choice.exit141, %b.grow_done104, %b.grow_done56, %b.grow_done, %choice.case
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
  %tag.gep29 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id30 = load i64, ptr %tag.gep29, align 8
  %tag.match31 = icmp eq i64 %tag.id30, 2
  br i1 %tag.match31, label %choice.case27, label %choice.next28

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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %app.str.len12 = load i64, ptr %app.str.len, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data14 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len15 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len15, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len16

b.app.new.len16:                                  ; preds = %abort.dead, %pay.float.merge
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap17, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %pay.float.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.app.new.len16

b.grow2:                                          ; preds = %b.app.new.len16
  %b.cap2 = mul i64 %b.cap17, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len218 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data219 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.nogrow2:                                        ; preds = %b.app.new.len16
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len222
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data26 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data26, i64 %b.app.cur.len15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data14, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data26, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len222:                                 ; preds = %abort.dead24, %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data219, i64 %b.cur.len218, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len218
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %b.new.buf.len222

choice.case27:                                    ; preds = %choice.next4
  %pay.gep32 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr33 = load ptr, ptr %pay.gep32, align 8
  %pay.int.null = icmp eq ptr %payload.ptr33, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next28:                                    ; preds = %choice.next4
  %tag.gep84 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id85 = load i64, ptr %tag.gep84, align 8
  %tag.match86 = icmp eq i64 %tag.id85, 3
  br i1 %tag.match86, label %choice.case82, label %choice.next83

pay.int.load:                                     ; preds = %choice.case27
  %pay.int.val = load i1, ptr %payload.ptr33, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case27
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._34, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %b.load35 = load ptr, ptr %var.b, align 8
  %var.load36 = load i1, ptr %var.flag, align 1
  br i1 %var.load36, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.int.merge
  br label %choice.exit37

choice.else:                                      ; preds = %pay.int.merge
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ @str.0.struct, %choice.then ], [ @str.1.struct, %choice.else ]
  %app.str.len38 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 0
  %app.str.len39 = load i64, ptr %app.str.len38, align 8
  %app.str.len40 = and i64 %app.str.len39, 281474976710655
  %app.str.data41 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data42 = load ptr, ptr %app.str.data41, align 8
  %b.app.cur.len43 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.app.cur.len44 = load i64, ptr %b.app.cur.len43, align 8
  %b.app.new.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len44, i64 %app.str.len40)
  %sum46 = extractvalue { i64, i1 } %b.app.new.len45, 0
  %ovf47 = extractvalue { i64, i1 } %b.app.new.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.app.new.len48

b.app.new.len48:                                  ; preds = %abort.dead50, %choice.exit37
  %b.cap51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  %b.cap52 = load i64, ptr %b.cap51, align 8
  %b.need.grow53 = icmp slt i64 %b.cap52, %sum46
  br i1 %b.need.grow53, label %b.grow254, label %b.nogrow255

str_overflow_abort49:                             ; preds = %choice.exit37
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %b.app.new.len48

b.grow254:                                        ; preds = %b.app.new.len48
  %b.cap257 = mul i64 %b.cap52, 2
  %b.cap.small58 = icmp slt i64 %b.cap257, 16
  %b.cap.grow59 = select i1 %b.cap.small58, i64 16, i64 %b.cap257
  %b.cap.need60 = icmp slt i64 %b.cap.grow59, %sum46
  %b.new.cap61 = select i1 %b.cap.need60, i64 %sum46, i64 %b.cap.grow59
  %b.cur.len262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.cur.len263 = load i64, ptr %b.cur.len262, align 8
  %b.cur.data264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.cur.data265 = load ptr, ptr %b.cur.data264, align 8
  %b.new.buf.len266 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap61, i64 1)
  %sum67 = extractvalue { i64, i1 } %b.new.buf.len266, 0
  %ovf68 = extractvalue { i64, i1 } %b.new.buf.len266, 1
  br i1 %ovf68, label %str_overflow_abort70, label %b.new.buf.len269

b.nogrow255:                                      ; preds = %b.app.new.len48
  br label %b.grow_done56

b.grow_done56:                                    ; preds = %b.nogrow255, %b.new.buf.len269
  %b.app.data77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.app.data78 = load ptr, ptr %b.app.data77, align 8
  %b.app.dst79 = getelementptr i8, ptr %b.app.data78, i64 %b.app.cur.len44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst79, ptr align 1 %app.str.data42, i64 %app.str.len40, i1 false)
  %b.app.nul80 = getelementptr i8, ptr %b.app.data78, i64 %sum46
  store i8 0, ptr %b.app.nul80, align 1
  %b.len.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  store i64 %sum46, ptr %b.len.gep81, align 8
  br label %choice.exit

b.new.buf.len269:                                 ; preds = %abort.dead71, %b.grow254
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf273 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf273, ptr align 1 %b.cur.data265, i64 %b.cur.len263, i1 false)
  %b.grow2.nul74 = getelementptr i8, ptr %b.new.buf273, i64 %b.cur.len263
  store i8 0, ptr %b.grow2.nul74, align 1
  %b.new.data2.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  store ptr %b.new.buf273, ptr %b.new.data2.gep75, align 8
  %b.new.cap2.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  store i64 %b.new.cap61, ptr %b.new.cap2.gep76, align 8
  br label %b.grow_done56

str_overflow_abort70:                             ; preds = %b.grow254
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %b.new.buf.len269

choice.case82:                                    ; preds = %choice.next28
  %b.load87 = load ptr, ptr %var.b, align 8
  %app.str.len88 = load i64, ptr @str.17.struct, align 8
  %app.str.len89 = and i64 %app.str.len88, 281474976710655
  %app.str.data90 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.cur.len91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 0
  %b.app.cur.len92 = load i64, ptr %b.app.cur.len91, align 8
  %b.app.new.len93 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len92, i64 %app.str.len89)
  %sum94 = extractvalue { i64, i1 } %b.app.new.len93, 0
  %ovf95 = extractvalue { i64, i1 } %b.app.new.len93, 1
  br i1 %ovf95, label %str_overflow_abort97, label %b.app.new.len96

choice.next83:                                    ; preds = %choice.next28
  %tag.gep132 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id133 = load i64, ptr %tag.gep132, align 8
  %tag.match134 = icmp eq i64 %tag.id133, 4
  br i1 %tag.match134, label %choice.case130, label %choice.next131

b.app.new.len96:                                  ; preds = %abort.dead98, %choice.case82
  %b.cap99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load87, i32 0, i32 2
  %b.cap100 = load i64, ptr %b.cap99, align 8
  %b.need.grow101 = icmp slt i64 %b.cap100, %sum94
  br i1 %b.need.grow101, label %b.grow2102, label %b.nogrow2103

str_overflow_abort97:                             ; preds = %choice.case82
  call void @dva_abort_str_overflow_msg()
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
  br label %choice.exit

b.new.buf.len2117:                                ; preds = %abort.dead119, %b.grow2102
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %b.new.buf.len2117

choice.case130:                                   ; preds = %choice.next83
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr136 = load ptr, ptr %pay.gep135, align 8
  store ptr %payload.ptr136, ptr %var._137, align 8
  store ptr %payload.ptr136, ptr %var.items, align 8
  %var.load138 = load ptr, ptr %var.items, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load138, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  %cmptmp = icmp eq i64 %slice.len, 0
  br i1 %cmptmp, label %choice.then139, label %choice.else140

choice.next131:                                   ; preds = %choice.next83
  %tag.gep372 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id373 = load i64, ptr %tag.gep372, align 8
  %tag.match374 = icmp eq i64 %tag.id373, 5
  br i1 %tag.match374, label %choice.case370, label %choice.next371

choice.then139:                                   ; preds = %choice.case130
  %b.load142 = load ptr, ptr %var.b, align 8
  %app.str.len143 = load i64, ptr @str.37.struct, align 8
  %app.str.len144 = and i64 %app.str.len143, 281474976710655
  %app.str.data145 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %b.app.cur.len146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 0
  %b.app.cur.len147 = load i64, ptr %b.app.cur.len146, align 8
  %b.app.new.len148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len147, i64 %app.str.len144)
  %sum149 = extractvalue { i64, i1 } %b.app.new.len148, 0
  %ovf150 = extractvalue { i64, i1 } %b.app.new.len148, 1
  br i1 %ovf150, label %str_overflow_abort152, label %b.app.new.len151

choice.else140:                                   ; preds = %choice.case130
  %b.load185 = load ptr, ptr %var.b, align 8
  %app.str.len186 = load i64, ptr @str.38.struct, align 8
  %app.str.len187 = and i64 %app.str.len186, 281474976710655
  %app.str.data188 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %b.app.cur.len189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.app.cur.len190 = load i64, ptr %b.app.cur.len189, align 8
  %b.app.new.len191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len190, i64 %app.str.len187)
  %sum192 = extractvalue { i64, i1 } %b.app.new.len191, 0
  %ovf193 = extractvalue { i64, i1 } %b.app.new.len191, 1
  br i1 %ovf193, label %str_overflow_abort195, label %b.app.new.len194

choice.exit141:                                   ; preds = %br.done.152, %b.grow_done159
  br label %choice.exit

b.app.new.len151:                                 ; preds = %abort.dead153, %choice.then139
  %b.cap154 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 2
  %b.cap155 = load i64, ptr %b.cap154, align 8
  %b.need.grow156 = icmp slt i64 %b.cap155, %sum149
  br i1 %b.need.grow156, label %b.grow2157, label %b.nogrow2158

str_overflow_abort152:                            ; preds = %choice.then139
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead153:                                    ; No predecessors!
  br label %b.app.new.len151

b.grow2157:                                       ; preds = %b.app.new.len151
  %b.cap2160 = mul i64 %b.cap155, 2
  %b.cap.small161 = icmp slt i64 %b.cap2160, 16
  %b.cap.grow162 = select i1 %b.cap.small161, i64 16, i64 %b.cap2160
  %b.cap.need163 = icmp slt i64 %b.cap.grow162, %sum149
  %b.new.cap164 = select i1 %b.cap.need163, i64 %sum149, i64 %b.cap.grow162
  %b.cur.len2165 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 0
  %b.cur.len2166 = load i64, ptr %b.cur.len2165, align 8
  %b.cur.data2167 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 1
  %b.cur.data2168 = load ptr, ptr %b.cur.data2167, align 8
  %b.new.buf.len2169 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap164, i64 1)
  %sum170 = extractvalue { i64, i1 } %b.new.buf.len2169, 0
  %ovf171 = extractvalue { i64, i1 } %b.new.buf.len2169, 1
  br i1 %ovf171, label %str_overflow_abort173, label %b.new.buf.len2172

b.nogrow2158:                                     ; preds = %b.app.new.len151
  br label %b.grow_done159

b.grow_done159:                                   ; preds = %b.nogrow2158, %b.new.buf.len2172
  %b.app.data180 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 1
  %b.app.data181 = load ptr, ptr %b.app.data180, align 8
  %b.app.dst182 = getelementptr i8, ptr %b.app.data181, i64 %b.app.cur.len147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst182, ptr align 1 %app.str.data145, i64 %app.str.len144, i1 false)
  %b.app.nul183 = getelementptr i8, ptr %b.app.data181, i64 %sum149
  store i8 0, ptr %b.app.nul183, align 1
  %b.len.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 0
  store i64 %sum149, ptr %b.len.gep184, align 8
  br label %choice.exit141

b.new.buf.len2172:                                ; preds = %abort.dead174, %b.grow2157
  %arena.cur175 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 %sum170)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2176, ptr align 1 %b.cur.data2168, i64 %b.cur.len2166, i1 false)
  %b.grow2.nul177 = getelementptr i8, ptr %b.new.buf2176, i64 %b.cur.len2166
  store i8 0, ptr %b.grow2.nul177, align 1
  %b.new.data2.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 1
  store ptr %b.new.buf2176, ptr %b.new.data2.gep178, align 8
  %b.new.cap2.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 2
  store i64 %b.new.cap164, ptr %b.new.cap2.gep179, align 8
  br label %b.grow_done159

str_overflow_abort173:                            ; preds = %b.grow2157
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead174:                                    ; No predecessors!
  br label %b.new.buf.len2172

b.app.new.len194:                                 ; preds = %abort.dead196, %choice.else140
  %b.cap197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  %b.cap198 = load i64, ptr %b.cap197, align 8
  %b.need.grow199 = icmp slt i64 %b.cap198, %sum192
  br i1 %b.need.grow199, label %b.grow2200, label %b.nogrow2201

str_overflow_abort195:                            ; preds = %choice.else140
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead196:                                    ; No predecessors!
  br label %b.app.new.len194

b.grow2200:                                       ; preds = %b.app.new.len194
  %b.cap2203 = mul i64 %b.cap198, 2
  %b.cap.small204 = icmp slt i64 %b.cap2203, 16
  %b.cap.grow205 = select i1 %b.cap.small204, i64 16, i64 %b.cap2203
  %b.cap.need206 = icmp slt i64 %b.cap.grow205, %sum192
  %b.new.cap207 = select i1 %b.cap.need206, i64 %sum192, i64 %b.cap.grow205
  %b.cur.len2208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.cur.len2209 = load i64, ptr %b.cur.len2208, align 8
  %b.cur.data2210 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.cur.data2211 = load ptr, ptr %b.cur.data2210, align 8
  %b.new.buf.len2212 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap207, i64 1)
  %sum213 = extractvalue { i64, i1 } %b.new.buf.len2212, 0
  %ovf214 = extractvalue { i64, i1 } %b.new.buf.len2212, 1
  br i1 %ovf214, label %str_overflow_abort216, label %b.new.buf.len2215

b.nogrow2201:                                     ; preds = %b.app.new.len194
  br label %b.grow_done202

b.grow_done202:                                   ; preds = %b.nogrow2201, %b.new.buf.len2215
  %b.app.data223 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.app.data224 = load ptr, ptr %b.app.data223, align 8
  %b.app.dst225 = getelementptr i8, ptr %b.app.data224, i64 %b.app.cur.len190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst225, ptr align 1 %app.str.data188, i64 %app.str.len187, i1 false)
  %b.app.nul226 = getelementptr i8, ptr %b.app.data224, i64 %sum192
  store i8 0, ptr %b.app.nul226, align 1
  %b.len.gep227 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  store i64 %sum192, ptr %b.len.gep227, align 8
  %var.load228 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load228, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load228, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.150, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._137, align 8
  br label %loop.header.150

b.new.buf.len2215:                                ; preds = %abort.dead217, %b.grow2200
  %arena.cur218 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 %sum213)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2219, ptr align 1 %b.cur.data2211, i64 %b.cur.len2209, i1 false)
  %b.grow2.nul220 = getelementptr i8, ptr %b.new.buf2219, i64 %b.cur.len2209
  store i8 0, ptr %b.grow2.nul220, align 1
  %b.new.data2.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  store ptr %b.new.buf2219, ptr %b.new.data2.gep221, align 8
  %b.new.cap2.gep222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  store i64 %b.new.cap207, ptr %b.new.cap2.gep222, align 8
  br label %b.grow_done202

str_overflow_abort216:                            ; preds = %b.grow2200
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead217:                                    ; No predecessors!
  br label %b.new.buf.len2215

loop.header.150:                                  ; preds = %loop.latch.150, %b.grow_done202
  %counter.load = load i64, ptr %loop.idx.150, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.150, label %loop.exit.nat.150

loop.body.150:                                    ; preds = %loop.header.150
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.150, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load228, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %counter.load
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.elem.val, ptr %var._229, align 8
  store ptr %sl.elem.val, ptr %var.item, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load230 = load i64, ptr %var.i, align 8
  %cmptmp231 = icmp sgt i64 %var.load230, 0
  br i1 %cmptmp231, label %choice.then232, label %choice.exit233

loop.exit.nat.150:                                ; preds = %loop.header.150
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.150

loop.latch.150:                                   ; preds = %choice.exit233
  %step.val = load i64, ptr %loop.step.150, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.150, align 8
  br label %loop.header.150

loop.exit.150:                                    ; preds = %loop.exit.nat.150
  store ptr %cycle.prev.u, ptr %var._137, align 8
  %b.load285 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load285, i32 0, i32 0
  %b.rn.cur.len286 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len286, i64 1)
  %sum287 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf288 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf288, label %str_overflow_abort290, label %b.rn.new.len289

choice.then232:                                   ; preds = %loop.body.150
  %b.load234 = load ptr, ptr %var.b, align 8
  %app.str.len235 = load i64, ptr @str.39.struct, align 8
  %app.str.len236 = and i64 %app.str.len235, 281474976710655
  %app.str.data237 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.cur.len238 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load234, i32 0, i32 0
  %b.app.cur.len239 = load i64, ptr %b.app.cur.len238, align 8
  %b.app.new.len240 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len239, i64 %app.str.len236)
  %sum241 = extractvalue { i64, i1 } %b.app.new.len240, 0
  %ovf242 = extractvalue { i64, i1 } %b.app.new.len240, 1
  br i1 %ovf242, label %str_overflow_abort244, label %b.app.new.len243

choice.exit233:                                   ; preds = %b.grow_done251, %loop.body.150
  %var.load277 = load ptr, ptr %var.b, align 8
  %var.load278 = load i64, ptr %var.depth, align 8
  %addtmp = add i64 %var.load278, 1
  %var.load279 = load i64, ptr %var.indent, align 8
  %multmp = mul i64 %addtmp, %var.load279
  call void @"json::#append_indent"(ptr %var.load277, i64 %multmp)
  %var.load280 = load ptr, ptr %var.b, align 8
  %var.load281 = load ptr, ptr %var.item, align 8
  %var.load282 = load i64, ptr %var.indent, align 8
  %var.load283 = load i64, ptr %var.depth, align 8
  %addtmp284 = add i64 %var.load283, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load280, ptr %var.load281, i64 %var.load282, i64 %addtmp284)
  br label %loop.latch.150

b.app.new.len243:                                 ; preds = %abort.dead245, %choice.then232
  %b.cap246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load234, i32 0, i32 2
  %b.cap247 = load i64, ptr %b.cap246, align 8
  %b.need.grow248 = icmp slt i64 %b.cap247, %sum241
  br i1 %b.need.grow248, label %b.grow2249, label %b.nogrow2250

str_overflow_abort244:                            ; preds = %choice.then232
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead245:                                    ; No predecessors!
  br label %b.app.new.len243

b.grow2249:                                       ; preds = %b.app.new.len243
  %b.cap2252 = mul i64 %b.cap247, 2
  %b.cap.small253 = icmp slt i64 %b.cap2252, 16
  %b.cap.grow254 = select i1 %b.cap.small253, i64 16, i64 %b.cap2252
  %b.cap.need255 = icmp slt i64 %b.cap.grow254, %sum241
  %b.new.cap256 = select i1 %b.cap.need255, i64 %sum241, i64 %b.cap.grow254
  %b.cur.len2257 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load234, i32 0, i32 0
  %b.cur.len2258 = load i64, ptr %b.cur.len2257, align 8
  %b.cur.data2259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load234, i32 0, i32 1
  %b.cur.data2260 = load ptr, ptr %b.cur.data2259, align 8
  %b.new.buf.len2261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap256, i64 1)
  %sum262 = extractvalue { i64, i1 } %b.new.buf.len2261, 0
  %ovf263 = extractvalue { i64, i1 } %b.new.buf.len2261, 1
  br i1 %ovf263, label %str_overflow_abort265, label %b.new.buf.len2264

b.nogrow2250:                                     ; preds = %b.app.new.len243
  br label %b.grow_done251

b.grow_done251:                                   ; preds = %b.nogrow2250, %b.new.buf.len2264
  %b.app.data272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load234, i32 0, i32 1
  %b.app.data273 = load ptr, ptr %b.app.data272, align 8
  %b.app.dst274 = getelementptr i8, ptr %b.app.data273, i64 %b.app.cur.len239
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst274, ptr align 1 %app.str.data237, i64 %app.str.len236, i1 false)
  %b.app.nul275 = getelementptr i8, ptr %b.app.data273, i64 %sum241
  store i8 0, ptr %b.app.nul275, align 1
  %b.len.gep276 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load234, i32 0, i32 0
  store i64 %sum241, ptr %b.len.gep276, align 8
  br label %choice.exit233

b.new.buf.len2264:                                ; preds = %abort.dead266, %b.grow2249
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 %sum262)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2268, ptr align 1 %b.cur.data2260, i64 %b.cur.len2258, i1 false)
  %b.grow2.nul269 = getelementptr i8, ptr %b.new.buf2268, i64 %b.cur.len2258
  store i8 0, ptr %b.grow2.nul269, align 1
  %b.new.data2.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load234, i32 0, i32 1
  store ptr %b.new.buf2268, ptr %b.new.data2.gep270, align 8
  %b.new.cap2.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load234, i32 0, i32 2
  store i64 %b.new.cap256, ptr %b.new.cap2.gep271, align 8
  br label %b.grow_done251

str_overflow_abort265:                            ; preds = %b.grow2249
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead266:                                    ; No predecessors!
  br label %b.new.buf.len2264

b.rn.new.len289:                                  ; preds = %abort.dead291, %loop.exit.150
  %b.cap292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load285, i32 0, i32 2
  %b.cap293 = load i64, ptr %b.cap292, align 8
  %b.need.grow294 = icmp slt i64 %b.cap293, %sum287
  br i1 %b.need.grow294, label %b.grow2295, label %b.nogrow2296

str_overflow_abort290:                            ; preds = %loop.exit.150
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead291:                                    ; No predecessors!
  br label %b.rn.new.len289

b.grow2295:                                       ; preds = %b.rn.new.len289
  %b.cap2298 = mul i64 %b.cap293, 2
  %b.cap.small299 = icmp slt i64 %b.cap2298, 16
  %b.cap.grow300 = select i1 %b.cap.small299, i64 16, i64 %b.cap2298
  %b.cap.need301 = icmp slt i64 %b.cap.grow300, %sum287
  %b.new.cap302 = select i1 %b.cap.need301, i64 %sum287, i64 %b.cap.grow300
  %b.cur.len2303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load285, i32 0, i32 0
  %b.cur.len2304 = load i64, ptr %b.cur.len2303, align 8
  %b.cur.data2305 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load285, i32 0, i32 1
  %b.cur.data2306 = load ptr, ptr %b.cur.data2305, align 8
  %b.new.buf.len2307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap302, i64 1)
  %sum308 = extractvalue { i64, i1 } %b.new.buf.len2307, 0
  %ovf309 = extractvalue { i64, i1 } %b.new.buf.len2307, 1
  br i1 %ovf309, label %str_overflow_abort311, label %b.new.buf.len2310

b.nogrow2296:                                     ; preds = %b.rn.new.len289
  br label %b.grow_done297

b.grow_done297:                                   ; preds = %b.nogrow2296, %b.new.buf.len2310
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load285, i32 0, i32 1
  %b.rn.data318 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data318, i64 %b.rn.cur.len286
  br i1 true, label %br.b1.151, label %br.c2.151

b.new.buf.len2310:                                ; preds = %abort.dead312, %b.grow2295
  %arena.cur313 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2314 = call ptr @dva_arena_alloc(ptr %arena.cur313, i64 %sum308)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2314, ptr align 1 %b.cur.data2306, i64 %b.cur.len2304, i1 false)
  %b.grow2.nul315 = getelementptr i8, ptr %b.new.buf2314, i64 %b.cur.len2304
  store i8 0, ptr %b.grow2.nul315, align 1
  %b.new.data2.gep316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load285, i32 0, i32 1
  store ptr %b.new.buf2314, ptr %b.new.data2.gep316, align 8
  %b.new.cap2.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load285, i32 0, i32 2
  store i64 %b.new.cap302, ptr %b.new.cap2.gep317, align 8
  br label %b.grow_done297

str_overflow_abort311:                            ; preds = %b.grow2295
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead312:                                    ; No predecessors!
  br label %b.new.buf.len2310

br.b1.151:                                        ; preds = %b.grow_done297
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.151

br.c2.151:                                        ; preds = %b.grow_done297
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
  %br.nul = getelementptr i8, ptr %b.rn.data318, i64 %sum287
  store i8 0, ptr %br.nul, align 1
  %b.len.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load285, i32 0, i32 0
  store i64 %sum287, ptr %b.len.gep319, align 8
  %var.load320 = load ptr, ptr %var.b, align 8
  %var.load321 = load i64, ptr %var.depth, align 8
  %var.load322 = load i64, ptr %var.indent, align 8
  %multmp323 = mul i64 %var.load321, %var.load322
  call void @"json::#append_indent"(ptr %var.load320, i64 %multmp323)
  %b.load324 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len325 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load324, i32 0, i32 0
  %b.rn.cur.len326 = load i64, ptr %b.rn.cur.len325, align 8
  %b.rn.new.len327 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len326, i64 1)
  %sum328 = extractvalue { i64, i1 } %b.rn.new.len327, 0
  %ovf329 = extractvalue { i64, i1 } %b.rn.new.len327, 1
  br i1 %ovf329, label %str_overflow_abort331, label %b.rn.new.len330

b.rn.new.len330:                                  ; preds = %abort.dead332, %br.done.151
  %b.cap333 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load324, i32 0, i32 2
  %b.cap334 = load i64, ptr %b.cap333, align 8
  %b.need.grow335 = icmp slt i64 %b.cap334, %sum328
  br i1 %b.need.grow335, label %b.grow2336, label %b.nogrow2337

str_overflow_abort331:                            ; preds = %br.done.151
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead332:                                    ; No predecessors!
  br label %b.rn.new.len330

b.grow2336:                                       ; preds = %b.rn.new.len330
  %b.cap2339 = mul i64 %b.cap334, 2
  %b.cap.small340 = icmp slt i64 %b.cap2339, 16
  %b.cap.grow341 = select i1 %b.cap.small340, i64 16, i64 %b.cap2339
  %b.cap.need342 = icmp slt i64 %b.cap.grow341, %sum328
  %b.new.cap343 = select i1 %b.cap.need342, i64 %sum328, i64 %b.cap.grow341
  %b.cur.len2344 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load324, i32 0, i32 0
  %b.cur.len2345 = load i64, ptr %b.cur.len2344, align 8
  %b.cur.data2346 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load324, i32 0, i32 1
  %b.cur.data2347 = load ptr, ptr %b.cur.data2346, align 8
  %b.new.buf.len2348 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap343, i64 1)
  %sum349 = extractvalue { i64, i1 } %b.new.buf.len2348, 0
  %ovf350 = extractvalue { i64, i1 } %b.new.buf.len2348, 1
  br i1 %ovf350, label %str_overflow_abort352, label %b.new.buf.len2351

b.nogrow2337:                                     ; preds = %b.rn.new.len330
  br label %b.grow_done338

b.grow_done338:                                   ; preds = %b.nogrow2337, %b.new.buf.len2351
  %b.rn.data359 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load324, i32 0, i32 1
  %b.rn.data360 = load ptr, ptr %b.rn.data359, align 8
  %b.rn.dst361 = getelementptr i8, ptr %b.rn.data360, i64 %b.rn.cur.len326
  br i1 true, label %br.b1.152, label %br.c2.152

b.new.buf.len2351:                                ; preds = %abort.dead353, %b.grow2336
  %arena.cur354 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2355 = call ptr @dva_arena_alloc(ptr %arena.cur354, i64 %sum349)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2355, ptr align 1 %b.cur.data2347, i64 %b.cur.len2345, i1 false)
  %b.grow2.nul356 = getelementptr i8, ptr %b.new.buf2355, i64 %b.cur.len2345
  store i8 0, ptr %b.grow2.nul356, align 1
  %b.new.data2.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load324, i32 0, i32 1
  store ptr %b.new.buf2355, ptr %b.new.data2.gep357, align 8
  %b.new.cap2.gep358 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load324, i32 0, i32 2
  store i64 %b.new.cap343, ptr %b.new.cap2.gep358, align 8
  br label %b.grow_done338

str_overflow_abort352:                            ; preds = %b.grow2336
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead353:                                    ; No predecessors!
  br label %b.new.buf.len2351

br.b1.152:                                        ; preds = %b.grow_done338
  store i8 93, ptr %b.rn.dst361, align 1
  br label %br.done.152

br.c2.152:                                        ; preds = %b.grow_done338
  br i1 true, label %br.b2.152, label %br.c3.152

br.b2.152:                                        ; preds = %br.c2.152
  store i8 -63, ptr %b.rn.dst361, align 1
  %br.dst1362 = getelementptr i8, ptr %b.rn.dst361, i64 1
  store i8 -99, ptr %br.dst1362, align 1
  br label %br.done.152

br.c3.152:                                        ; preds = %br.c2.152
  br i1 true, label %br.b3.152, label %br.b4.152

br.b3.152:                                        ; preds = %br.c3.152
  store i8 -32, ptr %b.rn.dst361, align 1
  %br.dst1.3363 = getelementptr i8, ptr %b.rn.dst361, i64 1
  store i8 -127, ptr %br.dst1.3363, align 1
  %br.dst2.3364 = getelementptr i8, ptr %b.rn.dst361, i64 2
  store i8 -99, ptr %br.dst2.3364, align 1
  br label %br.done.152

br.b4.152:                                        ; preds = %br.c3.152
  store i8 -16, ptr %b.rn.dst361, align 1
  %br.dst1.4365 = getelementptr i8, ptr %b.rn.dst361, i64 1
  store i8 -128, ptr %br.dst1.4365, align 1
  %br.dst2.4366 = getelementptr i8, ptr %b.rn.dst361, i64 2
  store i8 -127, ptr %br.dst2.4366, align 1
  %br.dst3.4367 = getelementptr i8, ptr %b.rn.dst361, i64 3
  store i8 -99, ptr %br.dst3.4367, align 1
  br label %br.done.152

br.done.152:                                      ; preds = %br.b4.152, %br.b3.152, %br.b2.152, %br.b1.152
  %br.nul368 = getelementptr i8, ptr %b.rn.data360, i64 %sum328
  store i8 0, ptr %br.nul368, align 1
  %b.len.gep369 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load324, i32 0, i32 0
  store i64 %sum328, ptr %b.len.gep369, align 8
  br label %choice.exit141

choice.case370:                                   ; preds = %choice.next131
  %pay.gep375 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr376 = load ptr, ptr %pay.gep375, align 8
  store ptr %payload.ptr376, ptr %var._377, align 8
  store ptr %payload.ptr376, ptr %var.pairs, align 8
  %var.load378 = load ptr, ptr %var.pairs, align 8
  %slice.len.gep379 = getelementptr inbounds { ptr, i64 }, ptr %var.load378, i32 0, i32 1
  %slice.len.raw380 = load i64, ptr %slice.len.gep379, align 8
  %slice.len381 = and i64 %slice.len.raw380, 4611686018427387903
  %cmptmp382 = icmp eq i64 %slice.len381, 0
  br i1 %cmptmp382, label %choice.then383, label %choice.else384

choice.next371:                                   ; preds = %choice.next131
  br label %choice.exit

choice.then383:                                   ; preds = %choice.case370
  %b.load386 = load ptr, ptr %var.b, align 8
  %app.str.len387 = load i64, ptr @str.40.struct, align 8
  %app.str.len388 = and i64 %app.str.len387, 281474976710655
  %app.str.data389 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %b.app.cur.len390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load386, i32 0, i32 0
  %b.app.cur.len391 = load i64, ptr %b.app.cur.len390, align 8
  %b.app.new.len392 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len391, i64 %app.str.len388)
  %sum393 = extractvalue { i64, i1 } %b.app.new.len392, 0
  %ovf394 = extractvalue { i64, i1 } %b.app.new.len392, 1
  br i1 %ovf394, label %str_overflow_abort396, label %b.app.new.len395

choice.else384:                                   ; preds = %choice.case370
  %b.load429 = load ptr, ptr %var.b, align 8
  %app.str.len430 = load i64, ptr @str.41.struct, align 8
  %app.str.len431 = and i64 %app.str.len430, 281474976710655
  %app.str.data432 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %b.app.cur.len433 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load429, i32 0, i32 0
  %b.app.cur.len434 = load i64, ptr %b.app.cur.len433, align 8
  %b.app.new.len435 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len434, i64 %app.str.len431)
  %sum436 = extractvalue { i64, i1 } %b.app.new.len435, 0
  %ovf437 = extractvalue { i64, i1 } %b.app.new.len435, 1
  br i1 %ovf437, label %str_overflow_abort439, label %b.app.new.len438

choice.exit385:                                   ; preds = %br.done.155, %b.grow_done403
  br label %choice.exit

b.app.new.len395:                                 ; preds = %abort.dead397, %choice.then383
  %b.cap398 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load386, i32 0, i32 2
  %b.cap399 = load i64, ptr %b.cap398, align 8
  %b.need.grow400 = icmp slt i64 %b.cap399, %sum393
  br i1 %b.need.grow400, label %b.grow2401, label %b.nogrow2402

str_overflow_abort396:                            ; preds = %choice.then383
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead397:                                    ; No predecessors!
  br label %b.app.new.len395

b.grow2401:                                       ; preds = %b.app.new.len395
  %b.cap2404 = mul i64 %b.cap399, 2
  %b.cap.small405 = icmp slt i64 %b.cap2404, 16
  %b.cap.grow406 = select i1 %b.cap.small405, i64 16, i64 %b.cap2404
  %b.cap.need407 = icmp slt i64 %b.cap.grow406, %sum393
  %b.new.cap408 = select i1 %b.cap.need407, i64 %sum393, i64 %b.cap.grow406
  %b.cur.len2409 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load386, i32 0, i32 0
  %b.cur.len2410 = load i64, ptr %b.cur.len2409, align 8
  %b.cur.data2411 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load386, i32 0, i32 1
  %b.cur.data2412 = load ptr, ptr %b.cur.data2411, align 8
  %b.new.buf.len2413 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap408, i64 1)
  %sum414 = extractvalue { i64, i1 } %b.new.buf.len2413, 0
  %ovf415 = extractvalue { i64, i1 } %b.new.buf.len2413, 1
  br i1 %ovf415, label %str_overflow_abort417, label %b.new.buf.len2416

b.nogrow2402:                                     ; preds = %b.app.new.len395
  br label %b.grow_done403

b.grow_done403:                                   ; preds = %b.nogrow2402, %b.new.buf.len2416
  %b.app.data424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load386, i32 0, i32 1
  %b.app.data425 = load ptr, ptr %b.app.data424, align 8
  %b.app.dst426 = getelementptr i8, ptr %b.app.data425, i64 %b.app.cur.len391
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst426, ptr align 1 %app.str.data389, i64 %app.str.len388, i1 false)
  %b.app.nul427 = getelementptr i8, ptr %b.app.data425, i64 %sum393
  store i8 0, ptr %b.app.nul427, align 1
  %b.len.gep428 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load386, i32 0, i32 0
  store i64 %sum393, ptr %b.len.gep428, align 8
  br label %choice.exit385

b.new.buf.len2416:                                ; preds = %abort.dead418, %b.grow2401
  %arena.cur419 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2420 = call ptr @dva_arena_alloc(ptr %arena.cur419, i64 %sum414)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2420, ptr align 1 %b.cur.data2412, i64 %b.cur.len2410, i1 false)
  %b.grow2.nul421 = getelementptr i8, ptr %b.new.buf2420, i64 %b.cur.len2410
  store i8 0, ptr %b.grow2.nul421, align 1
  %b.new.data2.gep422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load386, i32 0, i32 1
  store ptr %b.new.buf2420, ptr %b.new.data2.gep422, align 8
  %b.new.cap2.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load386, i32 0, i32 2
  store i64 %b.new.cap408, ptr %b.new.cap2.gep423, align 8
  br label %b.grow_done403

str_overflow_abort417:                            ; preds = %b.grow2401
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead418:                                    ; No predecessors!
  br label %b.new.buf.len2416

b.app.new.len438:                                 ; preds = %abort.dead440, %choice.else384
  %b.cap441 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load429, i32 0, i32 2
  %b.cap442 = load i64, ptr %b.cap441, align 8
  %b.need.grow443 = icmp slt i64 %b.cap442, %sum436
  br i1 %b.need.grow443, label %b.grow2444, label %b.nogrow2445

str_overflow_abort439:                            ; preds = %choice.else384
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead440:                                    ; No predecessors!
  br label %b.app.new.len438

b.grow2444:                                       ; preds = %b.app.new.len438
  %b.cap2447 = mul i64 %b.cap442, 2
  %b.cap.small448 = icmp slt i64 %b.cap2447, 16
  %b.cap.grow449 = select i1 %b.cap.small448, i64 16, i64 %b.cap2447
  %b.cap.need450 = icmp slt i64 %b.cap.grow449, %sum436
  %b.new.cap451 = select i1 %b.cap.need450, i64 %sum436, i64 %b.cap.grow449
  %b.cur.len2452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load429, i32 0, i32 0
  %b.cur.len2453 = load i64, ptr %b.cur.len2452, align 8
  %b.cur.data2454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load429, i32 0, i32 1
  %b.cur.data2455 = load ptr, ptr %b.cur.data2454, align 8
  %b.new.buf.len2456 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap451, i64 1)
  %sum457 = extractvalue { i64, i1 } %b.new.buf.len2456, 0
  %ovf458 = extractvalue { i64, i1 } %b.new.buf.len2456, 1
  br i1 %ovf458, label %str_overflow_abort460, label %b.new.buf.len2459

b.nogrow2445:                                     ; preds = %b.app.new.len438
  br label %b.grow_done446

b.grow_done446:                                   ; preds = %b.nogrow2445, %b.new.buf.len2459
  %b.app.data467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load429, i32 0, i32 1
  %b.app.data468 = load ptr, ptr %b.app.data467, align 8
  %b.app.dst469 = getelementptr i8, ptr %b.app.data468, i64 %b.app.cur.len434
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst469, ptr align 1 %app.str.data432, i64 %app.str.len431, i1 false)
  %b.app.nul470 = getelementptr i8, ptr %b.app.data468, i64 %sum436
  store i8 0, ptr %b.app.nul470, align 1
  %b.len.gep471 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load429, i32 0, i32 0
  store i64 %sum436, ptr %b.len.gep471, align 8
  %var.load472 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep473 = getelementptr inbounds { ptr, i64 }, ptr %var.load472, i32 0, i32 1
  %sl.len.raw474 = load i64, ptr %sl.len.gep473, align 8
  %sl.len475 = and i64 %sl.len.raw474, 4611686018427387903
  %sl.data.gep476 = getelementptr inbounds { ptr, i64 }, ptr %var.load472, i32 0, i32 0
  %sl.data477 = load ptr, ptr %sl.data.gep476, align 8
  store i64 0, ptr %loop.idx.153, align 8
  store i64 0, ptr %var.i478, align 8
  %cycle.prev.u479 = load ptr, ptr %var._377, align 8
  br label %loop.header.153

b.new.buf.len2459:                                ; preds = %abort.dead461, %b.grow2444
  %arena.cur462 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2463 = call ptr @dva_arena_alloc(ptr %arena.cur462, i64 %sum457)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2463, ptr align 1 %b.cur.data2455, i64 %b.cur.len2453, i1 false)
  %b.grow2.nul464 = getelementptr i8, ptr %b.new.buf2463, i64 %b.cur.len2453
  store i8 0, ptr %b.grow2.nul464, align 1
  %b.new.data2.gep465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load429, i32 0, i32 1
  store ptr %b.new.buf2463, ptr %b.new.data2.gep465, align 8
  %b.new.cap2.gep466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load429, i32 0, i32 2
  store i64 %b.new.cap451, ptr %b.new.cap2.gep466, align 8
  br label %b.grow_done446

str_overflow_abort460:                            ; preds = %b.grow2444
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead461:                                    ; No predecessors!
  br label %b.new.buf.len2459

loop.header.153:                                  ; preds = %loop.latch.153, %b.grow_done446
  %counter.load480 = load i64, ptr %loop.idx.153, align 8
  %loop.cond481 = icmp slt i64 %counter.load480, %sl.len475
  br i1 %loop.cond481, label %loop.body.153, label %loop.exit.nat.153

loop.body.153:                                    ; preds = %loop.header.153
  %loop.rel.i483 = sub i64 %counter.load480, 0
  store i64 1, ptr %loop.step.153, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load472, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.153:                                ; preds = %loop.header.153
  %loop.rel.end482 = sub i64 %counter.load480, 0
  store i64 %loop.rel.end482, ptr %var.i478, align 8
  br label %loop.exit.153

loop.latch.153:                                   ; preds = %b.grow_done557
  %step.val590 = load i64, ptr %loop.step.153, align 8
  %loop.next591 = add i64 %counter.load480, %step.val590
  store i64 %loop.next591, ptr %loop.idx.153, align 8
  br label %loop.header.153

loop.exit.153:                                    ; preds = %loop.exit.nat.153
  store ptr %cycle.prev.u479, ptr %var._377, align 8
  %b.load592 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len593 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load592, i32 0, i32 0
  %b.rn.cur.len594 = load i64, ptr %b.rn.cur.len593, align 8
  %b.rn.new.len595 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len594, i64 1)
  %sum596 = extractvalue { i64, i1 } %b.rn.new.len595, 0
  %ovf597 = extractvalue { i64, i1 } %b.rn.new.len595, 1
  br i1 %ovf597, label %str_overflow_abort599, label %b.rn.new.len598

sl.rec.elem.pbb:                                  ; preds = %loop.body.153
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data477, i64 %counter.load480
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.153
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data477, i64 %counter.load480
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i483, ptr %var._i484, align 8
  store ptr %sl.rec.elem, ptr %var._485, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i483, ptr %var.i478, align 8
  %var.load486 = load i64, ptr %var.i478, align 8
  %cmptmp487 = icmp sgt i64 %var.load486, 0
  br i1 %cmptmp487, label %choice.then488, label %choice.exit489

choice.then488:                                   ; preds = %sl.rec.elem.dbb
  %b.load490 = load ptr, ptr %var.b, align 8
  %app.str.len491 = load i64, ptr @str.39.struct, align 8
  %app.str.len492 = and i64 %app.str.len491, 281474976710655
  %app.str.data493 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.cur.len494 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 0
  %b.app.cur.len495 = load i64, ptr %b.app.cur.len494, align 8
  %b.app.new.len496 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len495, i64 %app.str.len492)
  %sum497 = extractvalue { i64, i1 } %b.app.new.len496, 0
  %ovf498 = extractvalue { i64, i1 } %b.app.new.len496, 1
  br i1 %ovf498, label %str_overflow_abort500, label %b.app.new.len499

choice.exit489:                                   ; preds = %b.grow_done507, %sl.rec.elem.dbb
  %var.load533 = load ptr, ptr %var.b, align 8
  %var.load534 = load i64, ptr %var.depth, align 8
  %addtmp535 = add i64 %var.load534, 1
  %var.load536 = load i64, ptr %var.indent, align 8
  %multmp537 = mul i64 %addtmp535, %var.load536
  call void @"json::#append_indent"(ptr %var.load533, i64 %multmp537)
  %var.load538 = load ptr, ptr %var.b, align 8
  %var.load539 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load539, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load538, ptr %fld.load)
  %b.load540 = load ptr, ptr %var.b, align 8
  %app.str.len541 = load i64, ptr @str.42.struct, align 8
  %app.str.len542 = and i64 %app.str.len541, 281474976710655
  %app.str.data543 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.42.struct, i32 0, i32 1), align 8
  %b.app.cur.len544 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load540, i32 0, i32 0
  %b.app.cur.len545 = load i64, ptr %b.app.cur.len544, align 8
  %b.app.new.len546 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len545, i64 %app.str.len542)
  %sum547 = extractvalue { i64, i1 } %b.app.new.len546, 0
  %ovf548 = extractvalue { i64, i1 } %b.app.new.len546, 1
  br i1 %ovf548, label %str_overflow_abort550, label %b.app.new.len549

b.app.new.len499:                                 ; preds = %abort.dead501, %choice.then488
  %b.cap502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 2
  %b.cap503 = load i64, ptr %b.cap502, align 8
  %b.need.grow504 = icmp slt i64 %b.cap503, %sum497
  br i1 %b.need.grow504, label %b.grow2505, label %b.nogrow2506

str_overflow_abort500:                            ; preds = %choice.then488
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead501:                                    ; No predecessors!
  br label %b.app.new.len499

b.grow2505:                                       ; preds = %b.app.new.len499
  %b.cap2508 = mul i64 %b.cap503, 2
  %b.cap.small509 = icmp slt i64 %b.cap2508, 16
  %b.cap.grow510 = select i1 %b.cap.small509, i64 16, i64 %b.cap2508
  %b.cap.need511 = icmp slt i64 %b.cap.grow510, %sum497
  %b.new.cap512 = select i1 %b.cap.need511, i64 %sum497, i64 %b.cap.grow510
  %b.cur.len2513 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 0
  %b.cur.len2514 = load i64, ptr %b.cur.len2513, align 8
  %b.cur.data2515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 1
  %b.cur.data2516 = load ptr, ptr %b.cur.data2515, align 8
  %b.new.buf.len2517 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap512, i64 1)
  %sum518 = extractvalue { i64, i1 } %b.new.buf.len2517, 0
  %ovf519 = extractvalue { i64, i1 } %b.new.buf.len2517, 1
  br i1 %ovf519, label %str_overflow_abort521, label %b.new.buf.len2520

b.nogrow2506:                                     ; preds = %b.app.new.len499
  br label %b.grow_done507

b.grow_done507:                                   ; preds = %b.nogrow2506, %b.new.buf.len2520
  %b.app.data528 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 1
  %b.app.data529 = load ptr, ptr %b.app.data528, align 8
  %b.app.dst530 = getelementptr i8, ptr %b.app.data529, i64 %b.app.cur.len495
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst530, ptr align 1 %app.str.data493, i64 %app.str.len492, i1 false)
  %b.app.nul531 = getelementptr i8, ptr %b.app.data529, i64 %sum497
  store i8 0, ptr %b.app.nul531, align 1
  %b.len.gep532 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 0
  store i64 %sum497, ptr %b.len.gep532, align 8
  br label %choice.exit489

b.new.buf.len2520:                                ; preds = %abort.dead522, %b.grow2505
  %arena.cur523 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2524 = call ptr @dva_arena_alloc(ptr %arena.cur523, i64 %sum518)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2524, ptr align 1 %b.cur.data2516, i64 %b.cur.len2514, i1 false)
  %b.grow2.nul525 = getelementptr i8, ptr %b.new.buf2524, i64 %b.cur.len2514
  store i8 0, ptr %b.grow2.nul525, align 1
  %b.new.data2.gep526 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 1
  store ptr %b.new.buf2524, ptr %b.new.data2.gep526, align 8
  %b.new.cap2.gep527 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load490, i32 0, i32 2
  store i64 %b.new.cap512, ptr %b.new.cap2.gep527, align 8
  br label %b.grow_done507

str_overflow_abort521:                            ; preds = %b.grow2505
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead522:                                    ; No predecessors!
  br label %b.new.buf.len2520

b.app.new.len549:                                 ; preds = %abort.dead551, %choice.exit489
  %b.cap552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load540, i32 0, i32 2
  %b.cap553 = load i64, ptr %b.cap552, align 8
  %b.need.grow554 = icmp slt i64 %b.cap553, %sum547
  br i1 %b.need.grow554, label %b.grow2555, label %b.nogrow2556

str_overflow_abort550:                            ; preds = %choice.exit489
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead551:                                    ; No predecessors!
  br label %b.app.new.len549

b.grow2555:                                       ; preds = %b.app.new.len549
  %b.cap2558 = mul i64 %b.cap553, 2
  %b.cap.small559 = icmp slt i64 %b.cap2558, 16
  %b.cap.grow560 = select i1 %b.cap.small559, i64 16, i64 %b.cap2558
  %b.cap.need561 = icmp slt i64 %b.cap.grow560, %sum547
  %b.new.cap562 = select i1 %b.cap.need561, i64 %sum547, i64 %b.cap.grow560
  %b.cur.len2563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load540, i32 0, i32 0
  %b.cur.len2564 = load i64, ptr %b.cur.len2563, align 8
  %b.cur.data2565 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load540, i32 0, i32 1
  %b.cur.data2566 = load ptr, ptr %b.cur.data2565, align 8
  %b.new.buf.len2567 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap562, i64 1)
  %sum568 = extractvalue { i64, i1 } %b.new.buf.len2567, 0
  %ovf569 = extractvalue { i64, i1 } %b.new.buf.len2567, 1
  br i1 %ovf569, label %str_overflow_abort571, label %b.new.buf.len2570

b.nogrow2556:                                     ; preds = %b.app.new.len549
  br label %b.grow_done557

b.grow_done557:                                   ; preds = %b.nogrow2556, %b.new.buf.len2570
  %b.app.data578 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load540, i32 0, i32 1
  %b.app.data579 = load ptr, ptr %b.app.data578, align 8
  %b.app.dst580 = getelementptr i8, ptr %b.app.data579, i64 %b.app.cur.len545
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst580, ptr align 1 %app.str.data543, i64 %app.str.len542, i1 false)
  %b.app.nul581 = getelementptr i8, ptr %b.app.data579, i64 %sum547
  store i8 0, ptr %b.app.nul581, align 1
  %b.len.gep582 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load540, i32 0, i32 0
  store i64 %sum547, ptr %b.len.gep582, align 8
  %var.load583 = load ptr, ptr %var.b, align 8
  %var.load584 = load ptr, ptr %var.p, align 8
  %fld.gep585 = getelementptr inbounds { ptr, ptr }, ptr %var.load584, i32 0, i32 1
  %fld.load586 = load ptr, ptr %fld.gep585, align 8
  %var.load587 = load i64, ptr %var.indent, align 8
  %var.load588 = load i64, ptr %var.depth, align 8
  %addtmp589 = add i64 %var.load588, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load583, ptr %fld.load586, i64 %var.load587, i64 %addtmp589)
  br label %loop.latch.153

b.new.buf.len2570:                                ; preds = %abort.dead572, %b.grow2555
  %arena.cur573 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2574 = call ptr @dva_arena_alloc(ptr %arena.cur573, i64 %sum568)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2574, ptr align 1 %b.cur.data2566, i64 %b.cur.len2564, i1 false)
  %b.grow2.nul575 = getelementptr i8, ptr %b.new.buf2574, i64 %b.cur.len2564
  store i8 0, ptr %b.grow2.nul575, align 1
  %b.new.data2.gep576 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load540, i32 0, i32 1
  store ptr %b.new.buf2574, ptr %b.new.data2.gep576, align 8
  %b.new.cap2.gep577 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load540, i32 0, i32 2
  store i64 %b.new.cap562, ptr %b.new.cap2.gep577, align 8
  br label %b.grow_done557

str_overflow_abort571:                            ; preds = %b.grow2555
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead572:                                    ; No predecessors!
  br label %b.new.buf.len2570

b.rn.new.len598:                                  ; preds = %abort.dead600, %loop.exit.153
  %b.cap601 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load592, i32 0, i32 2
  %b.cap602 = load i64, ptr %b.cap601, align 8
  %b.need.grow603 = icmp slt i64 %b.cap602, %sum596
  br i1 %b.need.grow603, label %b.grow2604, label %b.nogrow2605

str_overflow_abort599:                            ; preds = %loop.exit.153
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead600:                                    ; No predecessors!
  br label %b.rn.new.len598

b.grow2604:                                       ; preds = %b.rn.new.len598
  %b.cap2607 = mul i64 %b.cap602, 2
  %b.cap.small608 = icmp slt i64 %b.cap2607, 16
  %b.cap.grow609 = select i1 %b.cap.small608, i64 16, i64 %b.cap2607
  %b.cap.need610 = icmp slt i64 %b.cap.grow609, %sum596
  %b.new.cap611 = select i1 %b.cap.need610, i64 %sum596, i64 %b.cap.grow609
  %b.cur.len2612 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load592, i32 0, i32 0
  %b.cur.len2613 = load i64, ptr %b.cur.len2612, align 8
  %b.cur.data2614 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load592, i32 0, i32 1
  %b.cur.data2615 = load ptr, ptr %b.cur.data2614, align 8
  %b.new.buf.len2616 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap611, i64 1)
  %sum617 = extractvalue { i64, i1 } %b.new.buf.len2616, 0
  %ovf618 = extractvalue { i64, i1 } %b.new.buf.len2616, 1
  br i1 %ovf618, label %str_overflow_abort620, label %b.new.buf.len2619

b.nogrow2605:                                     ; preds = %b.rn.new.len598
  br label %b.grow_done606

b.grow_done606:                                   ; preds = %b.nogrow2605, %b.new.buf.len2619
  %b.rn.data627 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load592, i32 0, i32 1
  %b.rn.data628 = load ptr, ptr %b.rn.data627, align 8
  %b.rn.dst629 = getelementptr i8, ptr %b.rn.data628, i64 %b.rn.cur.len594
  br i1 true, label %br.b1.154, label %br.c2.154

b.new.buf.len2619:                                ; preds = %abort.dead621, %b.grow2604
  %arena.cur622 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2623 = call ptr @dva_arena_alloc(ptr %arena.cur622, i64 %sum617)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2623, ptr align 1 %b.cur.data2615, i64 %b.cur.len2613, i1 false)
  %b.grow2.nul624 = getelementptr i8, ptr %b.new.buf2623, i64 %b.cur.len2613
  store i8 0, ptr %b.grow2.nul624, align 1
  %b.new.data2.gep625 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load592, i32 0, i32 1
  store ptr %b.new.buf2623, ptr %b.new.data2.gep625, align 8
  %b.new.cap2.gep626 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load592, i32 0, i32 2
  store i64 %b.new.cap611, ptr %b.new.cap2.gep626, align 8
  br label %b.grow_done606

str_overflow_abort620:                            ; preds = %b.grow2604
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead621:                                    ; No predecessors!
  br label %b.new.buf.len2619

br.b1.154:                                        ; preds = %b.grow_done606
  store i8 10, ptr %b.rn.dst629, align 1
  br label %br.done.154

br.c2.154:                                        ; preds = %b.grow_done606
  br i1 true, label %br.b2.154, label %br.c3.154

br.b2.154:                                        ; preds = %br.c2.154
  store i8 -64, ptr %b.rn.dst629, align 1
  %br.dst1630 = getelementptr i8, ptr %b.rn.dst629, i64 1
  store i8 -118, ptr %br.dst1630, align 1
  br label %br.done.154

br.c3.154:                                        ; preds = %br.c2.154
  br i1 true, label %br.b3.154, label %br.b4.154

br.b3.154:                                        ; preds = %br.c3.154
  store i8 -32, ptr %b.rn.dst629, align 1
  %br.dst1.3631 = getelementptr i8, ptr %b.rn.dst629, i64 1
  store i8 -128, ptr %br.dst1.3631, align 1
  %br.dst2.3632 = getelementptr i8, ptr %b.rn.dst629, i64 2
  store i8 -118, ptr %br.dst2.3632, align 1
  br label %br.done.154

br.b4.154:                                        ; preds = %br.c3.154
  store i8 -16, ptr %b.rn.dst629, align 1
  %br.dst1.4633 = getelementptr i8, ptr %b.rn.dst629, i64 1
  store i8 -128, ptr %br.dst1.4633, align 1
  %br.dst2.4634 = getelementptr i8, ptr %b.rn.dst629, i64 2
  store i8 -128, ptr %br.dst2.4634, align 1
  %br.dst3.4635 = getelementptr i8, ptr %b.rn.dst629, i64 3
  store i8 -118, ptr %br.dst3.4635, align 1
  br label %br.done.154

br.done.154:                                      ; preds = %br.b4.154, %br.b3.154, %br.b2.154, %br.b1.154
  %br.nul636 = getelementptr i8, ptr %b.rn.data628, i64 %sum596
  store i8 0, ptr %br.nul636, align 1
  %b.len.gep637 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load592, i32 0, i32 0
  store i64 %sum596, ptr %b.len.gep637, align 8
  %var.load638 = load ptr, ptr %var.b, align 8
  %var.load639 = load i64, ptr %var.depth, align 8
  %var.load640 = load i64, ptr %var.indent, align 8
  %multmp641 = mul i64 %var.load639, %var.load640
  call void @"json::#append_indent"(ptr %var.load638, i64 %multmp641)
  %b.load642 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len643 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load642, i32 0, i32 0
  %b.rn.cur.len644 = load i64, ptr %b.rn.cur.len643, align 8
  %b.rn.new.len645 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len644, i64 1)
  %sum646 = extractvalue { i64, i1 } %b.rn.new.len645, 0
  %ovf647 = extractvalue { i64, i1 } %b.rn.new.len645, 1
  br i1 %ovf647, label %str_overflow_abort649, label %b.rn.new.len648

b.rn.new.len648:                                  ; preds = %abort.dead650, %br.done.154
  %b.cap651 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load642, i32 0, i32 2
  %b.cap652 = load i64, ptr %b.cap651, align 8
  %b.need.grow653 = icmp slt i64 %b.cap652, %sum646
  br i1 %b.need.grow653, label %b.grow2654, label %b.nogrow2655

str_overflow_abort649:                            ; preds = %br.done.154
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead650:                                    ; No predecessors!
  br label %b.rn.new.len648

b.grow2654:                                       ; preds = %b.rn.new.len648
  %b.cap2657 = mul i64 %b.cap652, 2
  %b.cap.small658 = icmp slt i64 %b.cap2657, 16
  %b.cap.grow659 = select i1 %b.cap.small658, i64 16, i64 %b.cap2657
  %b.cap.need660 = icmp slt i64 %b.cap.grow659, %sum646
  %b.new.cap661 = select i1 %b.cap.need660, i64 %sum646, i64 %b.cap.grow659
  %b.cur.len2662 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load642, i32 0, i32 0
  %b.cur.len2663 = load i64, ptr %b.cur.len2662, align 8
  %b.cur.data2664 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load642, i32 0, i32 1
  %b.cur.data2665 = load ptr, ptr %b.cur.data2664, align 8
  %b.new.buf.len2666 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap661, i64 1)
  %sum667 = extractvalue { i64, i1 } %b.new.buf.len2666, 0
  %ovf668 = extractvalue { i64, i1 } %b.new.buf.len2666, 1
  br i1 %ovf668, label %str_overflow_abort670, label %b.new.buf.len2669

b.nogrow2655:                                     ; preds = %b.rn.new.len648
  br label %b.grow_done656

b.grow_done656:                                   ; preds = %b.nogrow2655, %b.new.buf.len2669
  %b.rn.data677 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load642, i32 0, i32 1
  %b.rn.data678 = load ptr, ptr %b.rn.data677, align 8
  %b.rn.dst679 = getelementptr i8, ptr %b.rn.data678, i64 %b.rn.cur.len644
  br i1 true, label %br.b1.155, label %br.c2.155

b.new.buf.len2669:                                ; preds = %abort.dead671, %b.grow2654
  %arena.cur672 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2673 = call ptr @dva_arena_alloc(ptr %arena.cur672, i64 %sum667)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2673, ptr align 1 %b.cur.data2665, i64 %b.cur.len2663, i1 false)
  %b.grow2.nul674 = getelementptr i8, ptr %b.new.buf2673, i64 %b.cur.len2663
  store i8 0, ptr %b.grow2.nul674, align 1
  %b.new.data2.gep675 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load642, i32 0, i32 1
  store ptr %b.new.buf2673, ptr %b.new.data2.gep675, align 8
  %b.new.cap2.gep676 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load642, i32 0, i32 2
  store i64 %b.new.cap661, ptr %b.new.cap2.gep676, align 8
  br label %b.grow_done656

str_overflow_abort670:                            ; preds = %b.grow2654
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead671:                                    ; No predecessors!
  br label %b.new.buf.len2669

br.b1.155:                                        ; preds = %b.grow_done656
  store i8 125, ptr %b.rn.dst679, align 1
  br label %br.done.155

br.c2.155:                                        ; preds = %b.grow_done656
  br i1 true, label %br.b2.155, label %br.c3.155

br.b2.155:                                        ; preds = %br.c2.155
  store i8 -63, ptr %b.rn.dst679, align 1
  %br.dst1680 = getelementptr i8, ptr %b.rn.dst679, i64 1
  store i8 -67, ptr %br.dst1680, align 1
  br label %br.done.155

br.c3.155:                                        ; preds = %br.c2.155
  br i1 true, label %br.b3.155, label %br.b4.155

br.b3.155:                                        ; preds = %br.c3.155
  store i8 -32, ptr %b.rn.dst679, align 1
  %br.dst1.3681 = getelementptr i8, ptr %b.rn.dst679, i64 1
  store i8 -127, ptr %br.dst1.3681, align 1
  %br.dst2.3682 = getelementptr i8, ptr %b.rn.dst679, i64 2
  store i8 -67, ptr %br.dst2.3682, align 1
  br label %br.done.155

br.b4.155:                                        ; preds = %br.c3.155
  store i8 -16, ptr %b.rn.dst679, align 1
  %br.dst1.4683 = getelementptr i8, ptr %b.rn.dst679, i64 1
  store i8 -128, ptr %br.dst1.4683, align 1
  %br.dst2.4684 = getelementptr i8, ptr %b.rn.dst679, i64 2
  store i8 -127, ptr %br.dst2.4684, align 1
  %br.dst3.4685 = getelementptr i8, ptr %b.rn.dst679, i64 3
  store i8 -67, ptr %br.dst3.4685, align 1
  br label %br.done.155

br.done.155:                                      ; preds = %br.b4.155, %br.b3.155, %br.b2.155, %br.b1.155
  %br.nul686 = getelementptr i8, ptr %b.rn.data678, i64 %sum646
  store i8 0, ptr %br.nul686, align 1
  %b.len.gep687 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load642, i32 0, i32 0
  store i64 %sum646, ptr %b.len.gep687, align 8
  br label %choice.exit385
}

define { i64, ptr } @"json::stringify"(ptr %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 128, i64 1)
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

define { i64, ptr } @"json::stringify_pretty"(ptr %0, i64 %1) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.indent = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.indent, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 256, i64 1)
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data7, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data7, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data7, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len6, 1
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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

; Function Attrs: inlinehint
define internal { i1, i64 } @"json::#cursor_skip_str"(ptr %0, i64 %1) #7 {
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
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load ptr, ptr %var.src, align 8
  %var.load4 = load i64, ptr %var.start, align 8
  %call.res = call i64 @"json::#scan_plain_ascii_end"(ptr %var.load3, i64 %var.load4)
  store i64 %call.res, ptr %"var.k'", align 8
  store i64 0, ptr %loop.idx.162, align 8
  br label %loop.header.162

loop.header.162:                                  ; preds = %loop.latch.162, %entry
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

loop.latch.162:                                   ; preds = %choice.exit13
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
  %idx.oob = icmp uge i64 %var.load11, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load12 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load12, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit13:                                    ; preds = %choice.next17, %choice.exit24, %ret.dead15
  br label %loop.latch.162

choice.case:                                      ; preds = %idx_ok
  %var.load14 = load i64, ptr %"var.k'", align 8
  %addtmp = add i64 %var.load14, 1
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %addtmp, 1
  ret { i1, i64 } %ram.pay

choice.next:                                      ; preds = %idx_ok
  %val.match18 = icmp eq i64 %var.load12, 92
  br i1 %val.match18, label %choice.case16, label %choice.next17

ret.dead15:                                       ; No predecessors!
  br label %choice.exit13

choice.case16:                                    ; preds = %choice.next
  %var.load19 = load i64, ptr %"var.k'", align 8
  %addtmp20 = add i64 %var.load19, 1
  %var.load21 = load i64, ptr %var.n, align 8
  %cmptmp22 = icmp sge i64 %addtmp20, %var.load21
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

choice.next17:                                    ; preds = %choice.next
  %var.load28 = load i64, ptr %"var.k'", align 8
  %addtmp29 = add i64 %var.load28, 1
  store i64 %addtmp29, ptr %"var.k'", align 8
  br label %choice.exit13

choice.then23:                                    ; preds = %choice.case16
  ret { i1, i64 } zeroinitializer

choice.exit24:                                    ; preds = %ret.dead25, %choice.case16
  %var.load26 = load i64, ptr %"var.k'", align 8
  %addtmp27 = add i64 %var.load26, 2
  store i64 %addtmp27, ptr %"var.k'", align 8
  br label %choice.exit13

ret.dead25:                                       ; No predecessors!
  br label %choice.exit24
}

define internal { i64, ptr } @"json::#cursor_read_str_escaped"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var._47 = alloca ptr, align 8
  %builder.freeze = alloca { i64, ptr }, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load, ptr %rec.fld, align 8
  %rec.fld2 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld2, align 8
  store ptr %rec.alloc, ptr %var.sc, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 64, i64 1)
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
  store i64 64, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load6 = load i64, ptr %var.plain_end, align 8
  %var.load7 = load i64, ptr %var.start, align 8
  %cmptmp = icmp sgt i64 %var.load6, %var.load7
  br i1 %cmptmp, label %choice.then, label %choice.exit

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else:                                      ; preds = %choice.exit
  %ram.pay46 = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay46 to ptr
  store ptr %pay.ptr, ptr %var._47, align 8
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
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data43, i64 %b.freeze.len42, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len42
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then36
  %b.freeze.data45 = phi ptr [ %b.freeze.data43, %choice.then36 ], [ %b.freeze.data43, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
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
  %var._19 = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.163 = alloca i64, align 8
  %loop.idx.163 = alloca i64, align 8
  %"var.depth'" = alloca i64, align 8
  %"var.k'" = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.p = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  store i64 %1, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load4, 1
  store i64 %addtmp, ptr %"var.k'", align 8
  store i64 1, ptr %"var.depth'", align 8
  store i64 0, ptr %loop.idx.163, align 8
  br label %loop.header.163

loop.header.163:                                  ; preds = %loop.latch.163, %entry
  %counter.load = load i64, ptr %loop.idx.163, align 8
  br label %loop.body.163

loop.body.163:                                    ; preds = %loop.header.163
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.163, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.k'", align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.163:                                ; No predecessors!
  br label %loop.exit.163

loop.latch.163:                                   ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.163, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.163, align 8
  br label %loop.header.163

loop.exit.163:                                    ; preds = %loop.exit.nat.163
  ret i1 false

choice.then:                                      ; preds = %loop.body.163
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %loop.body.163
  %var.load7 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %"var.k'", align 8
  %idx.oob = icmp uge i64 %var.load11, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load12 = load i64, ptr %var.ch, align 8
  %val.match = icmp eq i64 %var.load12, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit13:                                    ; preds = %choice.next31, %choice.exit41, %choice.case22, %choice.exit18
  br label %loop.latch.163

choice.case:                                      ; preds = %idx_ok
  %var.load14 = load ptr, ptr %var.src, align 8
  %var.load15 = load i64, ptr %"var.k'", align 8
  %addtmp16 = add i64 %var.load15, 1
  %call.res = call { i1, i64 } @"json::#cursor_skip_str"(ptr %var.load14, i64 %addtmp16)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then17, label %choice.else

choice.next:                                      ; preds = %idx_ok
  %val.match24 = icmp eq i64 %var.load12, 123
  %val.match25 = icmp eq i64 %var.load12, 91
  %case.or = or i1 %val.match24, %val.match25
  br i1 %case.or, label %choice.case22, label %choice.next23

choice.then17:                                    ; preds = %choice.case
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._19, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load20 = load i64, ptr %var.end, align 8
  store i64 %var.load20, ptr %"var.k'", align 8
  br label %choice.exit18

choice.else:                                      ; preds = %choice.case
  ret i1 false

choice.exit18:                                    ; preds = %ret.dead21, %choice.then17
  br label %choice.exit13

ret.dead21:                                       ; No predecessors!
  br label %choice.exit18

choice.case22:                                    ; preds = %choice.next
  %var.load26 = load i64, ptr %"var.depth'", align 8
  %addtmp27 = add i64 %var.load26, 1
  store i64 %addtmp27, ptr %"var.depth'", align 8
  %var.load28 = load i64, ptr %"var.k'", align 8
  %addtmp29 = add i64 %var.load28, 1
  store i64 %addtmp29, ptr %"var.k'", align 8
  br label %choice.exit13

choice.next23:                                    ; preds = %choice.next
  %val.match32 = icmp eq i64 %var.load12, 125
  %val.match33 = icmp eq i64 %var.load12, 93
  %case.or34 = or i1 %val.match32, %val.match33
  br i1 %case.or34, label %choice.case30, label %choice.next31

choice.case30:                                    ; preds = %choice.next23
  %var.load35 = load i64, ptr %"var.depth'", align 8
  %subtmp = sub i64 %var.load35, 1
  store i64 %subtmp, ptr %"var.depth'", align 8
  %var.load36 = load i64, ptr %"var.k'", align 8
  %addtmp37 = add i64 %var.load36, 1
  store i64 %addtmp37, ptr %"var.k'", align 8
  %var.load38 = load i64, ptr %"var.depth'", align 8
  %cmptmp39 = icmp eq i64 %var.load38, 0
  br i1 %cmptmp39, label %choice.then40, label %choice.exit41

choice.next31:                                    ; preds = %choice.next23
  %var.load46 = load i64, ptr %"var.k'", align 8
  %addtmp47 = add i64 %var.load46, 1
  store i64 %addtmp47, ptr %"var.k'", align 8
  br label %choice.exit13

choice.then40:                                    ; preds = %choice.case30
  %var.load42 = load ptr, ptr %var.cur, align 8
  %var.load43 = load i64, ptr %"var.k'", align 8
  %fld.gep44 = getelementptr inbounds { ptr, i64 }, ptr %var.load42, i32 0, i32 1
  store i64 %var.load43, ptr %fld.gep44, align 8
  ret i1 true

choice.exit41:                                    ; preds = %ret.dead45, %choice.case30
  br label %choice.exit13

ret.dead45:                                       ; No predecessors!
  br label %choice.exit41
}

; Function Attrs: inlinehint
define internal i1 @"json::#cursor_skip_number"(ptr %0, i64 %1, i64 %2) #7 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.168 = alloca i64, align 8
  %loop.idx.168 = alloca i64, align 8
  %"var.k'" = alloca i64, align 8
  %var.has_digit = alloca i1, align 1
  %var.n = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.c0 = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  store i64 %1, ptr %var.p, align 8
  store i64 %2, ptr %var.c0, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.c0, align 8
  %cmptmp = icmp sge i64 %var.load4, 48
  br i1 %cmptmp, label %and.164.then, label %and.164.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %or.165.then, label %or.165.else

choice.case:                                      ; preds = %and.164.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.164.exit
  br label %choice.exit

and.164.then:                                     ; preds = %entry
  %cmptmp5 = icmp sle i64 %var.load4, 57
  br label %and.164.exit

and.164.else:                                     ; preds = %entry
  br label %and.164.exit

and.164.exit:                                     ; preds = %and.164.else, %and.164.then
  %and.164.phi = phi i1 [ %cmptmp5, %and.164.then ], [ %cmptmp, %and.164.else ]
  br i1 %and.164.phi, label %choice.case, label %choice.next

or.165.then:                                      ; preds = %choice.exit
  br label %or.165.exit

or.165.else:                                      ; preds = %choice.exit
  %var.load6 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load6, 1
  %var.load7 = load i64, ptr %var.n, align 8
  %cmptmp8 = icmp slt i64 %addtmp, %var.load7
  br i1 %cmptmp8, label %and.166.then, label %and.166.else

or.165.exit:                                      ; preds = %and.166.exit, %or.165.then
  %or.165.phi = phi i1 [ %choice.res, %or.165.then ], [ %and.166.phi, %and.166.exit ]
  store i1 %or.165.phi, ptr %var.has_digit, align 1
  %var.load21 = load i1, ptr %var.has_digit, align 1
  %nottmp = xor i1 %var.load21, true
  br i1 %nottmp, label %choice.then, label %choice.exit22

and.166.then:                                     ; preds = %or.165.else
  %var.load9 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %var.p, align 8
  %addtmp14 = add i64 %var.load13, 1
  %idx.oob = icmp uge i64 %addtmp14, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.166.else:                                     ; preds = %or.165.else
  br label %and.166.exit

and.166.exit:                                     ; preds = %and.166.else, %choice.exit15
  %and.166.phi = phi i1 [ %choice.res20, %choice.exit15 ], [ %cmptmp8, %and.166.else ]
  br label %or.165.exit

idx_ok:                                           ; preds = %abort.dead, %and.166.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %addtmp14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp18 = icmp sge i64 %s.byte.val, 48
  br i1 %cmptmp18, label %and.167.then, label %and.167.else

idx_oob:                                          ; preds = %and.166.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit15:                                    ; preds = %choice.next17, %choice.case16
  %choice.res20 = phi i1 [ true, %choice.case16 ], [ false, %choice.next17 ]
  br label %and.166.exit

choice.case16:                                    ; preds = %and.167.exit
  br label %choice.exit15

choice.next17:                                    ; preds = %and.167.exit
  br label %choice.exit15

and.167.then:                                     ; preds = %idx_ok
  %cmptmp19 = icmp sle i64 %s.byte.val, 57
  br label %and.167.exit

and.167.else:                                     ; preds = %idx_ok
  br label %and.167.exit

and.167.exit:                                     ; preds = %and.167.else, %and.167.then
  %and.167.phi = phi i1 [ %cmptmp19, %and.167.then ], [ %cmptmp18, %and.167.else ]
  br i1 %and.167.phi, label %choice.case16, label %choice.next17

choice.then:                                      ; preds = %or.165.exit
  ret i1 false

choice.exit22:                                    ; preds = %ret.dead, %or.165.exit
  %var.load23 = load i64, ptr %var.p, align 8
  %addtmp24 = add i64 %var.load23, 1
  store i64 %addtmp24, ptr %"var.k'", align 8
  store i64 0, ptr %loop.idx.168, align 8
  br label %loop.header.168

ret.dead:                                         ; No predecessors!
  br label %choice.exit22

loop.header.168:                                  ; preds = %loop.latch.168, %choice.exit22
  %counter.load = load i64, ptr %loop.idx.168, align 8
  br label %loop.body.168

loop.body.168:                                    ; preds = %loop.header.168
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.168, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load25 = load i64, ptr %"var.k'", align 8
  %var.load26 = load i64, ptr %var.n, align 8
  %cmptmp27 = icmp sge i64 %var.load25, %var.load26
  br i1 %cmptmp27, label %choice.then28, label %choice.exit29

loop.exit.nat.168:                                ; No predecessors!
  br label %loop.exit.168

loop.latch.168:                                   ; preds = %choice.exit59
  %step.val = load i64, ptr %loop.step.168, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.168, align 8
  br label %loop.header.168

loop.exit.168:                                    ; preds = %choice.else, %choice.then28, %loop.exit.nat.168
  %var.load62 = load ptr, ptr %var.cur, align 8
  %var.load63 = load i64, ptr %"var.k'", align 8
  %fld.gep64 = getelementptr inbounds { ptr, i64 }, ptr %var.load62, i32 0, i32 1
  store i64 %var.load63, ptr %fld.gep64, align 8
  ret i1 true

choice.then28:                                    ; preds = %loop.body.168
  br label %loop.exit.168

choice.exit29:                                    ; preds = %loop.body.168
  %var.load30 = load ptr, ptr %var.src, align 8
  %s.read.len31 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %s.read.len32 = load i64, ptr %s.read.len31, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  %var.load36 = load i64, ptr %"var.k'", align 8
  %idx.oob37 = icmp uge i64 %var.load36, %s.read.len33
  br i1 %idx.oob37, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead40, %choice.exit29
  %s.byte.gep41 = getelementptr i8, ptr %s.read.data35, i64 %var.load36
  %s.byte42 = load i8, ptr %s.byte.gep41, align 1
  %s.byte.val43 = zext i8 %s.byte42 to i64
  %cmptmp47 = icmp sge i64 %s.byte.val43, 48
  br i1 %cmptmp47, label %and.169.then, label %and.169.else

idx_oob39:                                        ; preds = %choice.exit29
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %idx_ok38

choice.exit44:                                    ; preds = %choice.next46, %choice.case45
  %choice.res57 = phi i1 [ true, %choice.case45 ], [ false, %choice.next46 ]
  br i1 %choice.res57, label %choice.then58, label %choice.else

choice.case45:                                    ; preds = %and.169.exit
  br label %choice.exit44

choice.next46:                                    ; preds = %and.169.exit
  br label %choice.exit44

and.169.then:                                     ; preds = %idx_ok38
  %cmptmp48 = icmp sle i64 %s.byte.val43, 57
  br label %and.169.exit

and.169.else:                                     ; preds = %idx_ok38
  br label %and.169.exit

and.169.exit:                                     ; preds = %and.169.else, %and.169.then
  %and.169.phi = phi i1 [ %cmptmp48, %and.169.then ], [ %cmptmp47, %and.169.else ]
  %val.match = icmp eq i64 %s.byte.val43, 43
  %case.or = or i1 %and.169.phi, %val.match
  %val.match49 = icmp eq i64 %s.byte.val43, 45
  %case.or50 = or i1 %case.or, %val.match49
  %val.match51 = icmp eq i64 %s.byte.val43, 46
  %case.or52 = or i1 %case.or50, %val.match51
  %val.match53 = icmp eq i64 %s.byte.val43, 101
  %case.or54 = or i1 %case.or52, %val.match53
  %val.match55 = icmp eq i64 %s.byte.val43, 69
  %case.or56 = or i1 %case.or54, %val.match55
  br i1 %case.or56, label %choice.case45, label %choice.next46

choice.then58:                                    ; preds = %choice.exit44
  %var.load60 = load i64, ptr %"var.k'", align 8
  %addtmp61 = add i64 %var.load60, 1
  store i64 %addtmp61, ptr %"var.k'", align 8
  br label %choice.exit59

choice.else:                                      ; preds = %choice.exit44
  br label %loop.exit.168

choice.exit59:                                    ; preds = %choice.then58
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

; Function Attrs: inlinehint
define i64 @"json::cursor_skip_ws"(ptr %0) #7 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.170 = alloca i64, align 8
  %loop.idx.170 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %"var.p'" = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.cur, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  store i64 %fld.load3, ptr %"var.p'", align 8
  %var.load4 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  store i64 %str.len.query6, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.170, align 8
  br label %loop.header.170

loop.header.170:                                  ; preds = %loop.latch.170, %entry
  %counter.load = load i64, ptr %loop.idx.170, align 8
  br label %loop.body.170

loop.body.170:                                    ; preds = %loop.header.170
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.170, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load7 = load i64, ptr %"var.p'", align 8
  %var.load8 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load7, %var.load8
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.170:                                ; No predecessors!
  br label %loop.exit.170

loop.latch.170:                                   ; preds = %choice.exit15
  %step.val = load i64, ptr %loop.step.170, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.170, align 8
  br label %loop.header.170

loop.exit.170:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.170
  %var.load17 = load ptr, ptr %var.cur, align 8
  %var.load18 = load i64, ptr %"var.p'", align 8
  %fld.gep19 = getelementptr inbounds { ptr, i64 }, ptr %var.load17, i32 0, i32 1
  store i64 %var.load18, ptr %fld.gep19, align 8
  %var.load20 = load i64, ptr %"var.p'", align 8
  ret i64 %var.load20

choice.then:                                      ; preds = %loop.body.170
  br label %loop.exit.170

choice.exit:                                      ; preds = %loop.body.170
  %var.load9 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %"var.p'", align 8
  %idx.oob = icmp uge i64 %var.load13, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then14, label %choice.else

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then14:                                    ; preds = %idx_ok
  %var.load16 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load16, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit15

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.170

choice.exit15:                                    ; preds = %choice.then14
  br label %loop.latch.170
}

; Function Attrs: inlinehint
define i1 @"json::cursor_eof"(ptr %0) #7 {
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
  %cmptmp = icmp sge i64 %call.res, %str.len.query3
  ret i1 %cmptmp
}

; Function Attrs: inlinehint
define i64 @"json::cursor_peek"(ptr %0) #7 {
entry:
  %var.p = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load1)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load i64, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %cmptmp = icmp slt i64 %var.load2, %str.len.query5
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load6 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %var.load10 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load10, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.else ]
  ret i64 %choice.res

idx_ok:                                           ; preds = %abort.dead, %choice.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok
}

; Function Attrs: inlinehint
define i1 @"json::cursor_expect_byte"(ptr %0, i64 %1) #7 {
entry:
  %var.p = alloca i64, align 8
  %var.at = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  store i64 %1, ptr %var.ch, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load ptr, ptr %var.cur, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  store i64 %fld.load6, ptr %var.at, align 8
  %var.load7 = load i64, ptr %var.at, align 8
  %var.load8 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load7, %var.load8
  br i1 %cmptmp, label %and.171.then, label %and.171.else

and.171.then:                                     ; preds = %entry
  %var.load9 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %var.at, align 8
  %idx.oob = icmp uge i64 %var.load13, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.171.else:                                     ; preds = %entry
  br label %and.171.exit

and.171.exit:                                     ; preds = %and.171.else, %idx_ok
  %and.171.phi = phi i1 [ %cmptmp15, %idx_ok ], [ %cmptmp, %and.171.else ]
  br i1 %and.171.phi, label %and.172.then, label %and.172.else

idx_ok:                                           ; preds = %abort.dead, %and.171.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load14 = load i64, ptr %var.ch, align 8
  %cmptmp15 = icmp eq i64 %s.byte.val, %var.load14
  br label %and.171.exit

idx_oob:                                          ; preds = %and.171.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

and.172.then:                                     ; preds = %and.171.exit
  %var.load16 = load i64, ptr %var.ch, align 8
  %call.res = call i1 @"str::is_ws"(i64 %var.load16)
  %nottmp = xor i1 %call.res, true
  br label %and.172.exit

and.172.else:                                     ; preds = %and.171.exit
  br label %and.172.exit

and.172.exit:                                     ; preds = %and.172.else, %and.172.then
  %and.172.phi = phi i1 [ %nottmp, %and.172.then ], [ %and.171.phi, %and.172.else ]
  br i1 %and.172.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.172.exit
  %var.load17 = load i64, ptr %var.at, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.172.exit
  %var.load18 = load ptr, ptr %var.cur, align 8
  %call.res19 = call i64 @"json::cursor_skip_ws"(ptr %var.load18)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load17, %choice.then ], [ %call.res19, %choice.else ]
  store i64 %choice.res, ptr %var.p, align 8
  %var.load20 = load i64, ptr %var.p, align 8
  %var.load21 = load i64, ptr %var.n, align 8
  %cmptmp22 = icmp slt i64 %var.load20, %var.load21
  br i1 %cmptmp22, label %and.173.then, label %and.173.else

and.173.then:                                     ; preds = %choice.exit
  %var.load23 = load ptr, ptr %var.src, align 8
  %s.read.len24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %s.read.len25 = load i64, ptr %s.read.len24, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %s.read.data27 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data27, align 8
  %var.load29 = load i64, ptr %var.p, align 8
  %idx.oob30 = icmp uge i64 %var.load29, %s.read.len26
  br i1 %idx.oob30, label %idx_oob32, label %idx_ok31

and.173.else:                                     ; preds = %choice.exit
  br label %and.173.exit

and.173.exit:                                     ; preds = %and.173.else, %idx_ok31
  %and.173.phi = phi i1 [ %cmptmp38, %idx_ok31 ], [ %cmptmp22, %and.173.else ]
  br i1 %and.173.phi, label %choice.then39, label %choice.else40

idx_ok31:                                         ; preds = %abort.dead33, %and.173.then
  %s.byte.gep34 = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte35 = load i8, ptr %s.byte.gep34, align 1
  %s.byte.val36 = zext i8 %s.byte35 to i64
  %var.load37 = load i64, ptr %var.ch, align 8
  %cmptmp38 = icmp eq i64 %s.byte.val36, %var.load37
  br label %and.173.exit

idx_oob32:                                        ; preds = %and.173.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %idx_ok31

choice.then39:                                    ; preds = %and.173.exit
  %var.load42 = load ptr, ptr %var.cur, align 8
  %var.load43 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load43, 1
  %fld.gep44 = getelementptr inbounds { ptr, i64 }, ptr %var.load42, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep44, align 8
  br label %choice.exit41

choice.else40:                                    ; preds = %and.173.exit
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  %choice.res45 = phi i1 [ true, %choice.then39 ], [ false, %choice.else40 ]
  ret i1 %choice.res45
}

; Function Attrs: inlinehint
define i1 @"json::cursor_enter_object"(ptr %0) #7 {
entry:
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %call.res = call i1 @"json::cursor_expect_byte"(ptr %var.load, i64 123)
  ret i1 %call.res
}

; Function Attrs: inlinehint
define i1 @"json::cursor_enter_array"(ptr %0) #7 {
entry:
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %call.res = call i1 @"json::cursor_expect_byte"(ptr %var.load, i64 91)
  ret i1 %call.res
}

; Function Attrs: inlinehint
define { i64, ptr } @"json::cursor_read_str"(ptr %0) #7 {
entry:
  %ret.niche.salloc = alloca { i64, ptr }, align 8
  %str.view = alloca { i64, ptr }, align 8
  %var.plain_end = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.at = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load ptr, ptr %var.cur, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  store i64 %fld.load6, ptr %var.at, align 8
  %var.load7 = load i64, ptr %var.at, align 8
  %var.load8 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load7, %var.load8
  br i1 %cmptmp, label %and.174.then, label %and.174.else

and.174.then:                                     ; preds = %entry
  %var.load9 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %var.at, align 8
  %idx.oob = icmp uge i64 %var.load13, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.174.else:                                     ; preds = %entry
  br label %and.174.exit

and.174.exit:                                     ; preds = %and.174.else, %idx_ok
  %and.174.phi = phi i1 [ %cmptmp14, %idx_ok ], [ %cmptmp, %and.174.else ]
  br i1 %and.174.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.174.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp14 = icmp eq i64 %s.byte.val, 34
  br label %and.174.exit

idx_oob:                                          ; preds = %and.174.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.174.exit
  %var.load15 = load i64, ptr %var.at, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.174.exit
  %var.load16 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load16)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load15, %choice.then ], [ %call.res, %choice.else ]
  store i64 %choice.res, ptr %var.p, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %var.load18 = load i64, ptr %var.n, align 8
  %cmptmp19 = icmp sge i64 %var.load17, %var.load18
  br i1 %cmptmp19, label %or.175.then, label %or.175.else

or.175.then:                                      ; preds = %choice.exit
  br label %or.175.exit

or.175.else:                                      ; preds = %choice.exit
  %var.load20 = load ptr, ptr %var.src, align 8
  %s.read.len21 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %s.read.len22 = load i64, ptr %s.read.len21, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %s.read.data24 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data24, align 8
  %var.load26 = load i64, ptr %var.p, align 8
  %idx.oob27 = icmp uge i64 %var.load26, %s.read.len23
  br i1 %idx.oob27, label %idx_oob29, label %idx_ok28

or.175.exit:                                      ; preds = %idx_ok28, %or.175.then
  %or.175.phi = phi i1 [ %cmptmp19, %or.175.then ], [ %cmptmp34, %idx_ok28 ]
  br i1 %or.175.phi, label %choice.then35, label %choice.exit36

idx_ok28:                                         ; preds = %abort.dead30, %or.175.else
  %s.byte.gep31 = getelementptr i8, ptr %s.read.data25, i64 %var.load26
  %s.byte32 = load i8, ptr %s.byte.gep31, align 1
  %s.byte.val33 = zext i8 %s.byte32 to i64
  %cmptmp34 = icmp ne i64 %s.byte.val33, 34
  br label %or.175.exit

idx_oob29:                                        ; preds = %or.175.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead30:                                     ; No predecessors!
  br label %idx_ok28

choice.then35:                                    ; preds = %or.175.exit
  ret { i64, ptr } zeroinitializer

choice.exit36:                                    ; preds = %ret.dead, %or.175.exit
  %var.load37 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load37, 1
  store i64 %addtmp, ptr %var.start, align 8
  %var.load38 = load ptr, ptr %var.src, align 8
  %var.load39 = load i64, ptr %var.start, align 8
  %call.res40 = call i64 @"json::#scan_plain_ascii_end"(ptr %var.load38, i64 %var.load39)
  store i64 %call.res40, ptr %var.plain_end, align 8
  %var.load41 = load i64, ptr %var.plain_end, align 8
  %var.load42 = load i64, ptr %var.n, align 8
  %cmptmp43 = icmp slt i64 %var.load41, %var.load42
  br i1 %cmptmp43, label %and.176.then, label %and.176.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit36

and.176.then:                                     ; preds = %choice.exit36
  %var.load44 = load ptr, ptr %var.src, align 8
  %s.read.len45 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %s.read.len46 = load i64, ptr %s.read.len45, align 8
  %s.read.len47 = and i64 %s.read.len46, 281474976710655
  %s.read.data48 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 1
  %s.read.data49 = load ptr, ptr %s.read.data48, align 8
  %var.load50 = load i64, ptr %var.plain_end, align 8
  %idx.oob51 = icmp uge i64 %var.load50, %s.read.len47
  br i1 %idx.oob51, label %idx_oob53, label %idx_ok52

and.176.else:                                     ; preds = %choice.exit36
  br label %and.176.exit

and.176.exit:                                     ; preds = %and.176.else, %idx_ok52
  %and.176.phi = phi i1 [ %cmptmp58, %idx_ok52 ], [ %cmptmp43, %and.176.else ]
  br i1 %and.176.phi, label %choice.then59, label %choice.exit60

idx_ok52:                                         ; preds = %abort.dead54, %and.176.then
  %s.byte.gep55 = getelementptr i8, ptr %s.read.data49, i64 %var.load50
  %s.byte56 = load i8, ptr %s.byte.gep55, align 1
  %s.byte.val57 = zext i8 %s.byte56 to i64
  %cmptmp58 = icmp eq i64 %s.byte.val57, 34
  br label %and.176.exit

idx_oob53:                                        ; preds = %and.176.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %idx_ok52

choice.then59:                                    ; preds = %and.176.exit
  %var.load61 = load ptr, ptr %var.cur, align 8
  %var.load62 = load i64, ptr %var.plain_end, align 8
  %addtmp63 = add i64 %var.load62, 1
  %fld.gep64 = getelementptr inbounds { ptr, i64 }, ptr %var.load61, i32 0, i32 1
  store i64 %addtmp63, ptr %fld.gep64, align 8
  %var.load65 = load ptr, ptr %var.src, align 8
  %s.read.len66 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 0
  %s.read.len67 = load i64, ptr %s.read.len66, align 8
  %s.read.len68 = and i64 %s.read.len67, 281474976710655
  %s.read.data69 = getelementptr inbounds { i64, ptr }, ptr %var.load65, i32 0, i32 1
  %s.read.data70 = load ptr, ptr %s.read.data69, align 8
  %var.load71 = load i64, ptr %var.start, align 8
  %var.load72 = load i64, ptr %var.plain_end, align 8
  %start.is_neg = icmp slt i64 %var.load71, 0
  %rel.start = add i64 %s.read.len68, %var.load71
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load71
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len68
  %final.start = select i1 %start.gt.len, i64 %s.read.len68, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load72, 0
  %rel.end = add i64 %s.read.len68, %var.load72
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load72
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len68
  %final.end = select i1 %end.gt.len, i64 %s.read.len68, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data70, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.niche.nn = icmp ne ptr %str.view, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.exit60:                                    ; preds = %ret.dead73, %and.176.exit
  %var.load74 = load ptr, ptr %var.cur, align 8
  %var.load75 = load i64, ptr %var.start, align 8
  %var.load76 = load i64, ptr %var.plain_end, align 8
  %call.res77 = call { i64, ptr } @"json::#cursor_read_str_escaped"(ptr %var.load74, i64 %var.load75, i64 %var.load76)
  %ret.niche.data = extractvalue { i64, ptr } %call.res77, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  store { i64, ptr } %call.res77, ptr %ret.niche.salloc, align 8
  %ret.niche.sel = select i1 %ret.niche.ok, ptr %ret.niche.salloc, ptr null
  %ret.niche.nn78 = icmp ne ptr %ret.niche.sel, null
  br i1 %ret.niche.nn78, label %ret.niche.load79, label %ret.niche.merge80

ret.niche.load:                                   ; preds = %choice.then59
  %ret.niche.val = load { i64, ptr }, ptr %str.view, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.then59
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.then59 ]
  ret { i64, ptr } %ret.niche.pack

ret.dead73:                                       ; No predecessors!
  br label %choice.exit60

ret.niche.load79:                                 ; preds = %choice.exit60
  %ret.niche.val81 = load { i64, ptr }, ptr %ret.niche.sel, align 8
  br label %ret.niche.merge80

ret.niche.merge80:                                ; preds = %ret.niche.load79, %choice.exit60
  %ret.niche.pack82 = phi { i64, ptr } [ %ret.niche.val81, %ret.niche.load79 ], [ zeroinitializer, %choice.exit60 ]
  ret { i64, ptr } %ret.niche.pack82
}

; Function Attrs: inlinehint
define { i64, ptr } @"json::cursor_next_field"(ptr %0) #7 {
entry:
  %var.k = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %ret.niche.salloc = alloca { i64, ptr }, align 8
  %var.p2 = alloca i64, align 8
  %var.at2 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.at = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load ptr, ptr %var.cur, align 8
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  store i64 %fld.load6, ptr %var.at, align 8
  %var.load7 = load i64, ptr %var.at, align 8
  %var.load8 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load7, %var.load8
  br i1 %cmptmp, label %and.177.then, label %and.177.else

and.177.then:                                     ; preds = %entry
  %var.load9 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %var.at, align 8
  %idx.oob = icmp uge i64 %var.load13, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.177.else:                                     ; preds = %entry
  br label %and.177.exit

and.177.exit:                                     ; preds = %and.177.else, %choice.exit
  %and.177.phi = phi i1 [ %choice.res, %choice.exit ], [ %cmptmp, %and.177.else ]
  br i1 %and.177.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.177.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 34
  %val.match14 = icmp eq i64 %s.byte.val, 44
  %case.or = or i1 %val.match, %val.match14
  %val.match15 = icmp eq i64 %s.byte.val, 125
  %case.or16 = or i1 %case.or, %val.match15
  br i1 %case.or16, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %and.177.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.177.exit

choice.case:                                      ; preds = %idx_ok
  br label %choice.exit

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit

choice.then:                                      ; preds = %and.177.exit
  %var.load18 = load i64, ptr %var.at, align 8
  br label %choice.exit17

choice.else:                                      ; preds = %and.177.exit
  %var.load19 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load19)
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then
  %choice.res20 = phi i64 [ %var.load18, %choice.then ], [ %call.res, %choice.else ]
  store i64 %choice.res20, ptr %var.p, align 8
  %var.load21 = load i64, ptr %var.p, align 8
  %var.load22 = load i64, ptr %var.n, align 8
  %cmptmp23 = icmp sge i64 %var.load21, %var.load22
  br i1 %cmptmp23, label %choice.then24, label %choice.exit25

choice.then24:                                    ; preds = %choice.exit17
  ret { i64, ptr } zeroinitializer

choice.exit25:                                    ; preds = %ret.dead, %choice.exit17
  %var.load26 = load ptr, ptr %var.src, align 8
  %s.read.len27 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len27, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data30 = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data30, align 8
  %var.load32 = load i64, ptr %var.p, align 8
  %idx.oob33 = icmp uge i64 %var.load32, %s.read.len29
  br i1 %idx.oob33, label %idx_oob35, label %idx_ok34

ret.dead:                                         ; No predecessors!
  br label %choice.exit25

idx_ok34:                                         ; preds = %abort.dead36, %choice.exit25
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data31, i64 %var.load32
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  store i64 %s.byte.val39, ptr %var.c, align 8
  %var.load40 = load i64, ptr %var.c, align 8
  %val.match44 = icmp eq i64 %var.load40, 125
  br i1 %val.match44, label %choice.case42, label %choice.next43

idx_oob35:                                        ; preds = %choice.exit25
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok34

choice.exit41:                                    ; preds = %choice.next43, %ret.dead48
  %var.load49 = load i64, ptr %var.c, align 8
  %val.match53 = icmp eq i64 %var.load49, 44
  br i1 %val.match53, label %choice.case51, label %choice.next52

choice.case42:                                    ; preds = %idx_ok34
  %var.load45 = load ptr, ptr %var.cur, align 8
  %var.load46 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load46, 1
  %fld.gep47 = getelementptr inbounds { ptr, i64 }, ptr %var.load45, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep47, align 8
  ret { i64, ptr } zeroinitializer

choice.next43:                                    ; preds = %idx_ok34
  br label %choice.exit41

ret.dead48:                                       ; No predecessors!
  br label %choice.exit41

choice.exit50:                                    ; preds = %choice.next52, %choice.exit105
  %var.load107 = load ptr, ptr %var.cur, align 8
  %call.res108 = call { i64, ptr } @"json::cursor_read_str"(ptr %var.load107)
  %ret.niche.data = extractvalue { i64, ptr } %call.res108, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  store { i64, ptr } %call.res108, ptr %ret.niche.salloc, align 8
  %ret.niche.sel = select i1 %ret.niche.ok, ptr %ret.niche.salloc, ptr null
  %niche.ne.null = icmp ne ptr %ret.niche.sel, null
  br i1 %niche.ne.null, label %choice.then109, label %choice.else110

choice.case51:                                    ; preds = %choice.exit41
  %var.load54 = load ptr, ptr %var.cur, align 8
  %var.load55 = load i64, ptr %var.p, align 8
  %addtmp56 = add i64 %var.load55, 1
  %fld.gep57 = getelementptr inbounds { ptr, i64 }, ptr %var.load54, i32 0, i32 1
  store i64 %addtmp56, ptr %fld.gep57, align 8
  %var.load58 = load ptr, ptr %var.cur, align 8
  %fld.gep59 = getelementptr inbounds { ptr, i64 }, ptr %var.load58, i32 0, i32 1
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  store i64 %fld.load60, ptr %var.at2, align 8
  %var.load61 = load i64, ptr %var.at2, align 8
  %var.load62 = load i64, ptr %var.n, align 8
  %cmptmp63 = icmp slt i64 %var.load61, %var.load62
  br i1 %cmptmp63, label %and.178.then, label %and.178.else

choice.next52:                                    ; preds = %choice.exit41
  br label %choice.exit50

and.178.then:                                     ; preds = %choice.case51
  %var.load64 = load ptr, ptr %var.src, align 8
  %s.read.len65 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %s.read.len66 = load i64, ptr %s.read.len65, align 8
  %s.read.len67 = and i64 %s.read.len66, 281474976710655
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %var.load70 = load i64, ptr %var.at2, align 8
  %idx.oob71 = icmp uge i64 %var.load70, %s.read.len67
  br i1 %idx.oob71, label %idx_oob73, label %idx_ok72

and.178.else:                                     ; preds = %choice.case51
  br label %and.178.exit

and.178.exit:                                     ; preds = %and.178.else, %idx_ok72
  %and.178.phi = phi i1 [ %cmptmp78, %idx_ok72 ], [ %cmptmp63, %and.178.else ]
  br i1 %and.178.phi, label %choice.then79, label %choice.else80

idx_ok72:                                         ; preds = %abort.dead74, %and.178.then
  %s.byte.gep75 = getelementptr i8, ptr %s.read.data69, i64 %var.load70
  %s.byte76 = load i8, ptr %s.byte.gep75, align 1
  %s.byte.val77 = zext i8 %s.byte76 to i64
  %cmptmp78 = icmp eq i64 %s.byte.val77, 34
  br label %and.178.exit

idx_oob73:                                        ; preds = %and.178.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %idx_ok72

choice.then79:                                    ; preds = %and.178.exit
  %var.load82 = load i64, ptr %var.at2, align 8
  br label %choice.exit81

choice.else80:                                    ; preds = %and.178.exit
  %var.load83 = load ptr, ptr %var.cur, align 8
  %call.res84 = call i64 @"json::cursor_skip_ws"(ptr %var.load83)
  br label %choice.exit81

choice.exit81:                                    ; preds = %choice.else80, %choice.then79
  %choice.res85 = phi i64 [ %var.load82, %choice.then79 ], [ %call.res84, %choice.else80 ]
  store i64 %choice.res85, ptr %var.p2, align 8
  %var.load86 = load i64, ptr %var.p2, align 8
  %var.load87 = load i64, ptr %var.n, align 8
  %cmptmp88 = icmp sge i64 %var.load86, %var.load87
  br i1 %cmptmp88, label %or.179.then, label %or.179.else

or.179.then:                                      ; preds = %choice.exit81
  br label %or.179.exit

or.179.else:                                      ; preds = %choice.exit81
  %var.load89 = load ptr, ptr %var.src, align 8
  %s.read.len90 = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 0
  %s.read.len91 = load i64, ptr %s.read.len90, align 8
  %s.read.len92 = and i64 %s.read.len91, 281474976710655
  %s.read.data93 = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 1
  %s.read.data94 = load ptr, ptr %s.read.data93, align 8
  %var.load95 = load i64, ptr %var.p2, align 8
  %idx.oob96 = icmp uge i64 %var.load95, %s.read.len92
  br i1 %idx.oob96, label %idx_oob98, label %idx_ok97

or.179.exit:                                      ; preds = %idx_ok97, %or.179.then
  %or.179.phi = phi i1 [ %cmptmp88, %or.179.then ], [ %cmptmp103, %idx_ok97 ]
  br i1 %or.179.phi, label %choice.then104, label %choice.exit105

idx_ok97:                                         ; preds = %abort.dead99, %or.179.else
  %s.byte.gep100 = getelementptr i8, ptr %s.read.data94, i64 %var.load95
  %s.byte101 = load i8, ptr %s.byte.gep100, align 1
  %s.byte.val102 = zext i8 %s.byte101 to i64
  %cmptmp103 = icmp eq i64 %s.byte.val102, 125
  br label %or.179.exit

idx_oob98:                                        ; preds = %or.179.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead99:                                     ; No predecessors!
  br label %idx_ok97

choice.then104:                                   ; preds = %or.179.exit
  ret { i64, ptr } zeroinitializer

choice.exit105:                                   ; preds = %ret.dead106, %or.179.exit
  br label %choice.exit50

ret.dead106:                                      ; No predecessors!
  br label %choice.exit105

choice.then109:                                   ; preds = %choice.exit50
  store ptr %ret.niche.sel, ptr %var._, align 8
  store ptr %ret.niche.sel, ptr %var.k, align 8
  %var.load112 = load ptr, ptr %var.cur, align 8
  %call.res113 = call i1 @"json::cursor_expect_byte"(ptr %var.load112, i64 58)
  br i1 %call.res113, label %choice.then114, label %choice.else115

choice.else110:                                   ; preds = %choice.exit50
  br label %choice.exit111

choice.exit111:                                   ; preds = %choice.else110, %choice.exit116
  %choice.res119 = phi ptr [ %choice.res118, %choice.exit116 ], [ null, %choice.else110 ]
  %ret.niche.nn = icmp ne ptr %choice.res119, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.then114:                                   ; preds = %choice.then109
  %var.load117 = load ptr, ptr %var.k, align 8
  br label %choice.exit116

choice.else115:                                   ; preds = %choice.then109
  br label %choice.exit116

choice.exit116:                                   ; preds = %choice.else115, %choice.then114
  %choice.res118 = phi ptr [ %var.load117, %choice.then114 ], [ null, %choice.else115 ]
  br label %choice.exit111

ret.niche.load:                                   ; preds = %choice.exit111
  %ret.niche.val = load { i64, ptr }, ptr %choice.res119, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit111
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit111 ]
  ret { i64, ptr } %ret.niche.pack
}

; Function Attrs: inlinehint
define { i1, i64 } @"json::cursor_read_int"(ptr %0) #7 {
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
  %var.src = alloca ptr, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load1)
  store i64 %call.res, ptr %var.p0, align 8
  %var.load2 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  store i64 %str.len.query4, ptr %var.n, align 8
  %var.load5 = load i64, ptr %var.p0, align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load7 = load i64, ptr %var.p0, align 8
  store i64 %var.load7, ptr %"var.p'", align 8
  store i1 false, ptr %"var.neg'", align 1
  %var.load8 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %var.load12 = load i64, ptr %"var.p'", align 8
  %idx.oob = icmp uge i64 %var.load12, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 45
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit13:                                    ; preds = %choice.next, %choice.case
  %var.load15 = load i64, ptr %"var.p'", align 8
  %var.load16 = load i64, ptr %var.n, align 8
  %cmptmp17 = icmp sge i64 %var.load15, %var.load16
  br i1 %cmptmp17, label %choice.then18, label %choice.exit19

choice.case:                                      ; preds = %idx_ok
  store i1 true, ptr %"var.neg'", align 1
  %var.load14 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load14, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit13

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit13

choice.then18:                                    ; preds = %choice.exit13
  ret { i1, i64 } zeroinitializer

choice.exit19:                                    ; preds = %ret.dead20, %choice.exit13
  %var.load21 = load ptr, ptr %var.src, align 8
  %s.read.len22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len22, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data25 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data25, align 8
  %var.load27 = load i64, ptr %"var.p'", align 8
  %idx.oob28 = icmp uge i64 %var.load27, %s.read.len24
  br i1 %idx.oob28, label %idx_oob30, label %idx_ok29

ret.dead20:                                       ; No predecessors!
  br label %choice.exit19

idx_ok29:                                         ; preds = %abort.dead31, %choice.exit19
  %s.byte.gep32 = getelementptr i8, ptr %s.read.data26, i64 %var.load27
  %s.byte33 = load i8, ptr %s.byte.gep32, align 1
  %s.byte.val34 = zext i8 %s.byte33 to i64
  store i64 %s.byte.val34, ptr %var.c0, align 8
  %var.load35 = load i64, ptr %var.c0, align 8
  %cmptmp39 = icmp sge i64 %var.load35, 48
  br i1 %cmptmp39, label %and.180.then, label %and.180.else

idx_oob30:                                        ; preds = %choice.exit19
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %idx_ok29

choice.exit36:                                    ; preds = %choice.next38, %choice.case37
  %choice.res = phi i1 [ true, %choice.case37 ], [ false, %choice.next38 ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then41, label %choice.exit42

choice.case37:                                    ; preds = %and.180.exit
  br label %choice.exit36

choice.next38:                                    ; preds = %and.180.exit
  br label %choice.exit36

and.180.then:                                     ; preds = %idx_ok29
  %cmptmp40 = icmp sle i64 %var.load35, 57
  br label %and.180.exit

and.180.else:                                     ; preds = %idx_ok29
  br label %and.180.exit

and.180.exit:                                     ; preds = %and.180.else, %and.180.then
  %and.180.phi = phi i1 [ %cmptmp40, %and.180.then ], [ %cmptmp39, %and.180.else ]
  br i1 %and.180.phi, label %choice.case37, label %choice.next38

choice.then41:                                    ; preds = %choice.exit36
  ret { i1, i64 } zeroinitializer

choice.exit42:                                    ; preds = %ret.dead43, %choice.exit36
  %var.load44 = load i64, ptr %var.c0, align 8
  %val.match48 = icmp eq i64 %var.load44, 48
  br i1 %val.match48, label %choice.case46, label %choice.next47

ret.dead43:                                       ; No predecessors!
  br label %choice.exit42

choice.exit45:                                    ; preds = %choice.next47, %choice.case46
  %choice.res49 = phi i1 [ true, %choice.case46 ], [ false, %choice.next47 ]
  br i1 %choice.res49, label %and.181.then, label %and.181.else

choice.case46:                                    ; preds = %choice.exit42
  br label %choice.exit45

choice.next47:                                    ; preds = %choice.exit42
  br label %choice.exit45

and.181.then:                                     ; preds = %choice.exit45
  %var.load50 = load i64, ptr %"var.p'", align 8
  %addtmp51 = add i64 %var.load50, 1
  %var.load52 = load i64, ptr %var.n, align 8
  %cmptmp53 = icmp slt i64 %addtmp51, %var.load52
  br label %and.181.exit

and.181.else:                                     ; preds = %choice.exit45
  br label %and.181.exit

and.181.exit:                                     ; preds = %and.181.else, %and.181.then
  %and.181.phi = phi i1 [ %cmptmp53, %and.181.then ], [ %choice.res49, %and.181.else ]
  br i1 %and.181.phi, label %and.182.then, label %and.182.else

and.182.then:                                     ; preds = %and.181.exit
  %var.load54 = load ptr, ptr %var.src, align 8
  %s.read.len55 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %s.read.len56 = load i64, ptr %s.read.len55, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %s.read.data58 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %s.read.data59 = load ptr, ptr %s.read.data58, align 8
  %var.load60 = load i64, ptr %"var.p'", align 8
  %addtmp61 = add i64 %var.load60, 1
  %idx.oob62 = icmp uge i64 %addtmp61, %s.read.len57
  br i1 %idx.oob62, label %idx_oob64, label %idx_ok63

and.182.else:                                     ; preds = %and.181.exit
  br label %and.182.exit

and.182.exit:                                     ; preds = %and.182.else, %idx_ok63
  %and.182.phi = phi i1 [ %call.res69, %idx_ok63 ], [ %and.181.phi, %and.182.else ]
  br i1 %and.182.phi, label %choice.then70, label %choice.exit71

idx_ok63:                                         ; preds = %abort.dead65, %and.182.then
  %s.byte.gep66 = getelementptr i8, ptr %s.read.data59, i64 %addtmp61
  %s.byte67 = load i8, ptr %s.byte.gep66, align 1
  %s.byte.val68 = zext i8 %s.byte67 to i64
  %call.res69 = call i1 @"ascii::is_digit"(i64 %s.byte.val68)
  br label %and.182.exit

idx_oob64:                                        ; preds = %and.182.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %idx_ok63

choice.then70:                                    ; preds = %and.182.exit
  ret { i1, i64 } zeroinitializer

choice.exit71:                                    ; preds = %ret.dead72, %and.182.exit
  store i64 0, ptr %"var.v'", align 8
  store i64 0, ptr %loop.idx.183, align 8
  br label %loop.header.183

ret.dead72:                                       ; No predecessors!
  br label %choice.exit71

loop.header.183:                                  ; preds = %loop.latch.183, %choice.exit71
  %counter.load = load i64, ptr %loop.idx.183, align 8
  br label %loop.body.183

loop.body.183:                                    ; preds = %loop.header.183
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.183, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load73 = load i64, ptr %"var.p'", align 8
  %var.load74 = load i64, ptr %var.n, align 8
  %cmptmp75 = icmp sge i64 %var.load73, %var.load74
  br i1 %cmptmp75, label %choice.then76, label %choice.exit77

loop.exit.nat.183:                                ; No predecessors!
  br label %loop.exit.183

loop.latch.183:                                   ; preds = %choice.exit100
  %step.val = load i64, ptr %loop.step.183, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.183, align 8
  br label %loop.header.183

loop.exit.183:                                    ; preds = %choice.else, %choice.then76, %loop.exit.nat.183
  %var.load106 = load i64, ptr %"var.p'", align 8
  %var.load107 = load i64, ptr %var.n, align 8
  %cmptmp108 = icmp slt i64 %var.load106, %var.load107
  br i1 %cmptmp108, label %and.185.then, label %and.185.else

choice.then76:                                    ; preds = %loop.body.183
  br label %loop.exit.183

choice.exit77:                                    ; preds = %loop.body.183
  %var.load78 = load ptr, ptr %var.src, align 8
  %s.read.len79 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %s.read.len80 = load i64, ptr %s.read.len79, align 8
  %s.read.len81 = and i64 %s.read.len80, 281474976710655
  %s.read.data82 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %s.read.data83 = load ptr, ptr %s.read.data82, align 8
  %var.load84 = load i64, ptr %"var.p'", align 8
  %idx.oob85 = icmp uge i64 %var.load84, %s.read.len81
  br i1 %idx.oob85, label %idx_oob87, label %idx_ok86

idx_ok86:                                         ; preds = %abort.dead88, %choice.exit77
  %s.byte.gep89 = getelementptr i8, ptr %s.read.data83, i64 %var.load84
  %s.byte90 = load i8, ptr %s.byte.gep89, align 1
  %s.byte.val91 = zext i8 %s.byte90 to i64
  store i64 %s.byte.val91, ptr %var.c, align 8
  %var.load92 = load i64, ptr %var.c, align 8
  %cmptmp96 = icmp sge i64 %var.load92, 48
  br i1 %cmptmp96, label %and.184.then, label %and.184.else

idx_oob87:                                        ; preds = %choice.exit77
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %idx_ok86

choice.exit93:                                    ; preds = %choice.next95, %choice.case94
  %choice.res98 = phi i1 [ true, %choice.case94 ], [ false, %choice.next95 ]
  br i1 %choice.res98, label %choice.then99, label %choice.else

choice.case94:                                    ; preds = %and.184.exit
  br label %choice.exit93

choice.next95:                                    ; preds = %and.184.exit
  br label %choice.exit93

and.184.then:                                     ; preds = %idx_ok86
  %cmptmp97 = icmp sle i64 %var.load92, 57
  br label %and.184.exit

and.184.else:                                     ; preds = %idx_ok86
  br label %and.184.exit

and.184.exit:                                     ; preds = %and.184.else, %and.184.then
  %and.184.phi = phi i1 [ %cmptmp97, %and.184.then ], [ %cmptmp96, %and.184.else ]
  br i1 %and.184.phi, label %choice.case94, label %choice.next95

choice.then99:                                    ; preds = %choice.exit93
  %var.load101 = load i64, ptr %"var.v'", align 8
  %multmp = mul i64 %var.load101, 10
  %var.load102 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load102, 48
  %addtmp103 = add i64 %multmp, %subtmp
  store i64 %addtmp103, ptr %"var.v'", align 8
  %var.load104 = load i64, ptr %"var.p'", align 8
  %addtmp105 = add i64 %var.load104, 1
  store i64 %addtmp105, ptr %"var.p'", align 8
  br label %choice.exit100

choice.else:                                      ; preds = %choice.exit93
  br label %loop.exit.183

choice.exit100:                                   ; preds = %choice.then99
  br label %loop.latch.183

and.185.then:                                     ; preds = %loop.exit.183
  %var.load109 = load ptr, ptr %var.src, align 8
  %s.read.len110 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 0
  %s.read.len111 = load i64, ptr %s.read.len110, align 8
  %s.read.len112 = and i64 %s.read.len111, 281474976710655
  %s.read.data113 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 1
  %s.read.data114 = load ptr, ptr %s.read.data113, align 8
  %var.load115 = load i64, ptr %"var.p'", align 8
  %idx.oob116 = icmp uge i64 %var.load115, %s.read.len112
  br i1 %idx.oob116, label %idx_oob118, label %idx_ok117

and.185.else:                                     ; preds = %loop.exit.183
  br label %and.185.exit

and.185.exit:                                     ; preds = %and.185.else, %choice.exit123
  %and.185.phi = phi i1 [ %choice.res130, %choice.exit123 ], [ %cmptmp108, %and.185.else ]
  br i1 %and.185.phi, label %choice.then131, label %choice.exit132

idx_ok117:                                        ; preds = %abort.dead119, %and.185.then
  %s.byte.gep120 = getelementptr i8, ptr %s.read.data114, i64 %var.load115
  %s.byte121 = load i8, ptr %s.byte.gep120, align 1
  %s.byte.val122 = zext i8 %s.byte121 to i64
  %val.match126 = icmp eq i64 %s.byte.val122, 46
  %val.match127 = icmp eq i64 %s.byte.val122, 101
  %case.or = or i1 %val.match126, %val.match127
  %val.match128 = icmp eq i64 %s.byte.val122, 69
  %case.or129 = or i1 %case.or, %val.match128
  br i1 %case.or129, label %choice.case124, label %choice.next125

idx_oob118:                                       ; preds = %and.185.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %idx_ok117

choice.exit123:                                   ; preds = %choice.next125, %choice.case124
  %choice.res130 = phi i1 [ true, %choice.case124 ], [ false, %choice.next125 ]
  br label %and.185.exit

choice.case124:                                   ; preds = %idx_ok117
  br label %choice.exit123

choice.next125:                                   ; preds = %idx_ok117
  br label %choice.exit123

choice.then131:                                   ; preds = %and.185.exit
  ret { i1, i64 } zeroinitializer

choice.exit132:                                   ; preds = %ret.dead133, %and.185.exit
  %var.load134 = load ptr, ptr %var.cur, align 8
  %var.load135 = load i64, ptr %"var.p'", align 8
  %fld.gep136 = getelementptr inbounds { ptr, i64 }, ptr %var.load134, i32 0, i32 1
  store i64 %var.load135, ptr %fld.gep136, align 8
  %var.load137 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load137, label %choice.then138, label %choice.else139

ret.dead133:                                      ; No predecessors!
  br label %choice.exit132

choice.then138:                                   ; preds = %choice.exit132
  %var.load141 = load i64, ptr %"var.v'", align 8
  %subtmp142 = sub i64 0, %var.load141
  br label %choice.exit140

choice.else139:                                   ; preds = %choice.exit132
  %var.load143 = load i64, ptr %"var.v'", align 8
  br label %choice.exit140

choice.exit140:                                   ; preds = %choice.else139, %choice.then138
  %choice.res144 = phi i64 [ %subtmp142, %choice.then138 ], [ %var.load143, %choice.else139 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res144, 1
  ret { i1, i64 } %ram.pay
}

declare i1 @"ascii::is_digit"(i64) #0

; Function Attrs: inlinehint
define { i1, i64 } @"json::cursor_read_bool"(ptr %0) #7 {
entry:
  %var.n = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load1)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  store i64 %str.len.query4, ptr %var.n, align 8
  %var.load5 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load5, 4
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %addtmp, %var.load6
  br i1 %cmptmp, label %and.186.then, label %and.186.else

and.186.then:                                     ; preds = %entry
  %var.load7 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %var.p, align 8
  %var.load12 = load i64, ptr %var.p, align 8
  %addtmp13 = add i64 %var.load12, 4
  %start.is_neg = icmp slt i64 %var.load11, 0
  %rel.start = add i64 %s.read.len9, %var.load11
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load11
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len9
  %final.start = select i1 %start.gt.len, i64 %s.read.len9, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp13, 0
  %rel.end = add i64 %s.read.len9, %addtmp13
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp13
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len9
  %final.end = select i1 %end.gt.len, i64 %s.read.len9, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data10, i64 %final.start
  %cmp.str = load i64, ptr @str.0.struct, align 8
  %cmp.str14 = and i64 %cmp.str, 281474976710655
  %cmp.str15 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.186.else:                                     ; preds = %entry
  br label %and.186.exit

and.186.exit:                                     ; preds = %and.186.else, %str.eq.merge
  %and.186.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.186.else ]
  br i1 %and.186.phi, label %choice.then, label %choice.exit

str.eq.then:                                      ; preds = %and.186.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str15, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.186.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.186.exit

choice.then:                                      ; preds = %and.186.exit
  %var.load16 = load ptr, ptr %var.cur, align 8
  %var.load17 = load i64, ptr %var.p, align 8
  %addtmp18 = add i64 %var.load17, 4
  %fld.gep19 = getelementptr inbounds { ptr, i64 }, ptr %var.load16, i32 0, i32 1
  store i64 %addtmp18, ptr %fld.gep19, align 8
  ret { i1, i64 } { i1 true, i64 1 }

choice.exit:                                      ; preds = %ret.dead, %and.186.exit
  %var.load20 = load i64, ptr %var.p, align 8
  %addtmp21 = add i64 %var.load20, 5
  %var.load22 = load i64, ptr %var.n, align 8
  %cmptmp23 = icmp sle i64 %addtmp21, %var.load22
  br i1 %cmptmp23, label %and.187.then, label %and.187.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.187.then:                                     ; preds = %choice.exit
  %var.load24 = load ptr, ptr %var.src, align 8
  %s.read.len25 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len25, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.p, align 8
  %var.load31 = load i64, ptr %var.p, align 8
  %addtmp32 = add i64 %var.load31, 5
  %start.is_neg33 = icmp slt i64 %var.load30, 0
  %rel.start34 = add i64 %s.read.len27, %var.load30
  %norm.start35 = select i1 %start.is_neg33, i64 %rel.start34, i64 %var.load30
  %start.lt.036 = icmp slt i64 %norm.start35, 0
  %c.start.037 = select i1 %start.lt.036, i64 0, i64 %norm.start35
  %start.gt.len38 = icmp sgt i64 %c.start.037, %s.read.len27
  %final.start39 = select i1 %start.gt.len38, i64 %s.read.len27, i64 %c.start.037
  %end.is_neg40 = icmp slt i64 %addtmp32, 0
  %rel.end41 = add i64 %s.read.len27, %addtmp32
  %norm.end42 = select i1 %end.is_neg40, i64 %rel.end41, i64 %addtmp32
  %end.lt.043 = icmp slt i64 %norm.end42, 0
  %c.end.044 = select i1 %end.lt.043, i64 0, i64 %norm.end42
  %end.gt.len45 = icmp sgt i64 %c.end.044, %s.read.len27
  %final.end46 = select i1 %end.gt.len45, i64 %s.read.len27, i64 %c.end.044
  %view.empty47 = icmp sle i64 %final.end46, %final.start39
  %view.len.sub48 = sub i64 %final.end46, %final.start39
  %view.len49 = select i1 %view.empty47, i64 0, i64 %view.len.sub48
  %view.data50 = getelementptr i8, ptr %s.read.data29, i64 %final.start39
  %cmp.str51 = load i64, ptr @str.1.struct, align 8
  %cmp.str52 = and i64 %cmp.str51, 281474976710655
  %cmp.str53 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.len54 = icmp eq i64 %view.len49, %cmp.str52
  br i1 %eq.len54, label %str.eq.then55, label %str.eq.else56

and.187.else:                                     ; preds = %choice.exit
  br label %and.187.exit

and.187.exit:                                     ; preds = %and.187.else, %str.eq.merge57
  %and.187.phi = phi i1 [ %str.eq.result60, %str.eq.merge57 ], [ %cmptmp23, %and.187.else ]
  br i1 %and.187.phi, label %choice.then61, label %choice.exit62

str.eq.then55:                                    ; preds = %and.187.then
  %eq.memcmp58 = call i32 @memcmp(ptr %view.data50, ptr %cmp.str53, i64 %view.len49)
  %eq.cmp.zero59 = icmp eq i32 %eq.memcmp58, 0
  br label %str.eq.merge57

str.eq.else56:                                    ; preds = %and.187.then
  br label %str.eq.merge57

str.eq.merge57:                                   ; preds = %str.eq.else56, %str.eq.then55
  %str.eq.result60 = phi i1 [ %eq.cmp.zero59, %str.eq.then55 ], [ false, %str.eq.else56 ]
  br label %and.187.exit

choice.then61:                                    ; preds = %and.187.exit
  %var.load63 = load ptr, ptr %var.cur, align 8
  %var.load64 = load i64, ptr %var.p, align 8
  %addtmp65 = add i64 %var.load64, 5
  %fld.gep66 = getelementptr inbounds { ptr, i64 }, ptr %var.load63, i32 0, i32 1
  store i64 %addtmp65, ptr %fld.gep66, align 8
  ret { i1, i64 } { i1 true, i64 0 }

choice.exit62:                                    ; preds = %ret.dead67, %and.187.exit
  ret { i1, i64 } zeroinitializer

ret.dead67:                                       ; No predecessors!
  br label %choice.exit62
}

; Function Attrs: inlinehint
define i1 @"json::cursor_skip_value"(ptr %0) #7 {
entry:
  %var.end = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.c0 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.p = alloca i64, align 8
  %var.src = alloca ptr, align 8
  %var.cur = alloca ptr, align 8
  store ptr %0, ptr %var.cur, align 8
  %var.load = load ptr, ptr %var.cur, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.src, align 8
  %var.load1 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load1)
  store i64 %call.res, ptr %var.p, align 8
  %var.load2 = load ptr, ptr %var.src, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  store i64 %str.len.query4, ptr %var.n, align 8
  %var.load5 = load i64, ptr %var.p, align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load7 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %var.p, align 8
  %idx.oob = icmp uge i64 %var.load11, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c0, align 8
  %var.load12 = load i64, ptr %var.c0, align 8
  %val.match = icmp eq i64 %var.load12, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit13:                                    ; preds = %choice.next160, %choice.case159, %choice.exit153, %choice.exit101, %choice.exit49, %choice.case22, %choice.exit18
  %choice.res169 = phi i1 [ %choice.res, %choice.exit18 ], [ %call.res28, %choice.case22 ], [ %choice.res54, %choice.exit49 ], [ %choice.res106, %choice.exit101 ], [ %choice.res158, %choice.exit153 ], [ %call.res168, %choice.case159 ], [ false, %choice.next160 ]
  ret i1 %choice.res169

choice.case:                                      ; preds = %idx_ok
  %var.load14 = load ptr, ptr %var.src, align 8
  %var.load15 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load15, 1
  %call.res16 = call { i1, i64 } @"json::#cursor_skip_str"(ptr %var.load14, i64 %addtmp)
  %ram.tag = extractvalue { i1, i64 } %call.res16, 0
  br i1 %ram.tag, label %choice.then17, label %choice.else

choice.next:                                      ; preds = %idx_ok
  %val.match24 = icmp eq i64 %var.load12, 123
  %val.match25 = icmp eq i64 %var.load12, 91
  %case.or = or i1 %val.match24, %val.match25
  br i1 %case.or, label %choice.case22, label %choice.next23

choice.then17:                                    ; preds = %choice.case
  %ram.pay = extractvalue { i1, i64 } %call.res16, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load19 = load ptr, ptr %var.cur, align 8
  %var.load20 = load i64, ptr %var.end, align 8
  %fld.gep21 = getelementptr inbounds { ptr, i64 }, ptr %var.load19, i32 0, i32 1
  store i64 %var.load20, ptr %fld.gep21, align 8
  br label %choice.exit18

choice.else:                                      ; preds = %choice.case
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else, %choice.then17
  %choice.res = phi i1 [ true, %choice.then17 ], [ false, %choice.else ]
  br label %choice.exit13

choice.case22:                                    ; preds = %choice.next
  %var.load26 = load ptr, ptr %var.cur, align 8
  %var.load27 = load i64, ptr %var.p, align 8
  %call.res28 = call i1 @"json::#cursor_skip_compound"(ptr %var.load26, i64 %var.load27)
  br label %choice.exit13

choice.next23:                                    ; preds = %choice.next
  %val.match31 = icmp eq i64 %var.load12, 116
  br i1 %val.match31, label %choice.case29, label %choice.next30

choice.case29:                                    ; preds = %choice.next23
  %var.load32 = load i64, ptr %var.p, align 8
  %addtmp33 = add i64 %var.load32, 4
  %var.load34 = load i64, ptr %var.n, align 8
  %cmptmp35 = icmp sle i64 %addtmp33, %var.load34
  br i1 %cmptmp35, label %and.188.then, label %and.188.else

choice.next30:                                    ; preds = %choice.next23
  %val.match57 = icmp eq i64 %var.load12, 102
  br i1 %val.match57, label %choice.case55, label %choice.next56

and.188.then:                                     ; preds = %choice.case29
  %var.load36 = load ptr, ptr %var.src, align 8
  %s.read.len37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %s.read.len38 = load i64, ptr %s.read.len37, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %s.read.data40 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data40, align 8
  %var.load42 = load i64, ptr %var.p, align 8
  %var.load43 = load i64, ptr %var.p, align 8
  %addtmp44 = add i64 %var.load43, 4
  %start.is_neg = icmp slt i64 %var.load42, 0
  %rel.start = add i64 %s.read.len39, %var.load42
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load42
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len39
  %final.start = select i1 %start.gt.len, i64 %s.read.len39, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp44, 0
  %rel.end = add i64 %s.read.len39, %addtmp44
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp44
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len39
  %final.end = select i1 %end.gt.len, i64 %s.read.len39, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data41, i64 %final.start
  %cmp.str = load i64, ptr @str.0.struct, align 8
  %cmp.str45 = and i64 %cmp.str, 281474976710655
  %cmp.str46 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str45
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.188.else:                                     ; preds = %choice.case29
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %str.eq.merge
  %and.188.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp35, %and.188.else ]
  br i1 %and.188.phi, label %choice.then47, label %choice.else48

str.eq.then:                                      ; preds = %and.188.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str46, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.188.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.188.exit

choice.then47:                                    ; preds = %and.188.exit
  %var.load50 = load ptr, ptr %var.cur, align 8
  %var.load51 = load i64, ptr %var.p, align 8
  %addtmp52 = add i64 %var.load51, 4
  %fld.gep53 = getelementptr inbounds { ptr, i64 }, ptr %var.load50, i32 0, i32 1
  store i64 %addtmp52, ptr %fld.gep53, align 8
  br label %choice.exit49

choice.else48:                                    ; preds = %and.188.exit
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.else48, %choice.then47
  %choice.res54 = phi i1 [ true, %choice.then47 ], [ false, %choice.else48 ]
  br label %choice.exit13

choice.case55:                                    ; preds = %choice.next30
  %var.load58 = load i64, ptr %var.p, align 8
  %addtmp59 = add i64 %var.load58, 5
  %var.load60 = load i64, ptr %var.n, align 8
  %cmptmp61 = icmp sle i64 %addtmp59, %var.load60
  br i1 %cmptmp61, label %and.189.then, label %and.189.else

choice.next56:                                    ; preds = %choice.next30
  %val.match109 = icmp eq i64 %var.load12, 110
  br i1 %val.match109, label %choice.case107, label %choice.next108

and.189.then:                                     ; preds = %choice.case55
  %var.load62 = load ptr, ptr %var.src, align 8
  %s.read.len63 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 0
  %s.read.len64 = load i64, ptr %s.read.len63, align 8
  %s.read.len65 = and i64 %s.read.len64, 281474976710655
  %s.read.data66 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data66, align 8
  %var.load68 = load i64, ptr %var.p, align 8
  %var.load69 = load i64, ptr %var.p, align 8
  %addtmp70 = add i64 %var.load69, 5
  %start.is_neg71 = icmp slt i64 %var.load68, 0
  %rel.start72 = add i64 %s.read.len65, %var.load68
  %norm.start73 = select i1 %start.is_neg71, i64 %rel.start72, i64 %var.load68
  %start.lt.074 = icmp slt i64 %norm.start73, 0
  %c.start.075 = select i1 %start.lt.074, i64 0, i64 %norm.start73
  %start.gt.len76 = icmp sgt i64 %c.start.075, %s.read.len65
  %final.start77 = select i1 %start.gt.len76, i64 %s.read.len65, i64 %c.start.075
  %end.is_neg78 = icmp slt i64 %addtmp70, 0
  %rel.end79 = add i64 %s.read.len65, %addtmp70
  %norm.end80 = select i1 %end.is_neg78, i64 %rel.end79, i64 %addtmp70
  %end.lt.081 = icmp slt i64 %norm.end80, 0
  %c.end.082 = select i1 %end.lt.081, i64 0, i64 %norm.end80
  %end.gt.len83 = icmp sgt i64 %c.end.082, %s.read.len65
  %final.end84 = select i1 %end.gt.len83, i64 %s.read.len65, i64 %c.end.082
  %view.empty85 = icmp sle i64 %final.end84, %final.start77
  %view.len.sub86 = sub i64 %final.end84, %final.start77
  %view.len87 = select i1 %view.empty85, i64 0, i64 %view.len.sub86
  %view.data88 = getelementptr i8, ptr %s.read.data67, i64 %final.start77
  %cmp.str89 = load i64, ptr @str.1.struct, align 8
  %cmp.str90 = and i64 %cmp.str89, 281474976710655
  %cmp.str91 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.len92 = icmp eq i64 %view.len87, %cmp.str90
  br i1 %eq.len92, label %str.eq.then93, label %str.eq.else94

and.189.else:                                     ; preds = %choice.case55
  br label %and.189.exit

and.189.exit:                                     ; preds = %and.189.else, %str.eq.merge95
  %and.189.phi = phi i1 [ %str.eq.result98, %str.eq.merge95 ], [ %cmptmp61, %and.189.else ]
  br i1 %and.189.phi, label %choice.then99, label %choice.else100

str.eq.then93:                                    ; preds = %and.189.then
  %eq.memcmp96 = call i32 @memcmp(ptr %view.data88, ptr %cmp.str91, i64 %view.len87)
  %eq.cmp.zero97 = icmp eq i32 %eq.memcmp96, 0
  br label %str.eq.merge95

str.eq.else94:                                    ; preds = %and.189.then
  br label %str.eq.merge95

str.eq.merge95:                                   ; preds = %str.eq.else94, %str.eq.then93
  %str.eq.result98 = phi i1 [ %eq.cmp.zero97, %str.eq.then93 ], [ false, %str.eq.else94 ]
  br label %and.189.exit

choice.then99:                                    ; preds = %and.189.exit
  %var.load102 = load ptr, ptr %var.cur, align 8
  %var.load103 = load i64, ptr %var.p, align 8
  %addtmp104 = add i64 %var.load103, 5
  %fld.gep105 = getelementptr inbounds { ptr, i64 }, ptr %var.load102, i32 0, i32 1
  store i64 %addtmp104, ptr %fld.gep105, align 8
  br label %choice.exit101

choice.else100:                                   ; preds = %and.189.exit
  br label %choice.exit101

choice.exit101:                                   ; preds = %choice.else100, %choice.then99
  %choice.res106 = phi i1 [ true, %choice.then99 ], [ false, %choice.else100 ]
  br label %choice.exit13

choice.case107:                                   ; preds = %choice.next56
  %var.load110 = load i64, ptr %var.p, align 8
  %addtmp111 = add i64 %var.load110, 4
  %var.load112 = load i64, ptr %var.n, align 8
  %cmptmp113 = icmp sle i64 %addtmp111, %var.load112
  br i1 %cmptmp113, label %and.190.then, label %and.190.else

choice.next108:                                   ; preds = %choice.next56
  %cmptmp161 = icmp sge i64 %var.load12, 48
  br i1 %cmptmp161, label %and.191.then, label %and.191.else

and.190.then:                                     ; preds = %choice.case107
  %var.load114 = load ptr, ptr %var.src, align 8
  %s.read.len115 = getelementptr inbounds { i64, ptr }, ptr %var.load114, i32 0, i32 0
  %s.read.len116 = load i64, ptr %s.read.len115, align 8
  %s.read.len117 = and i64 %s.read.len116, 281474976710655
  %s.read.data118 = getelementptr inbounds { i64, ptr }, ptr %var.load114, i32 0, i32 1
  %s.read.data119 = load ptr, ptr %s.read.data118, align 8
  %var.load120 = load i64, ptr %var.p, align 8
  %var.load121 = load i64, ptr %var.p, align 8
  %addtmp122 = add i64 %var.load121, 4
  %start.is_neg123 = icmp slt i64 %var.load120, 0
  %rel.start124 = add i64 %s.read.len117, %var.load120
  %norm.start125 = select i1 %start.is_neg123, i64 %rel.start124, i64 %var.load120
  %start.lt.0126 = icmp slt i64 %norm.start125, 0
  %c.start.0127 = select i1 %start.lt.0126, i64 0, i64 %norm.start125
  %start.gt.len128 = icmp sgt i64 %c.start.0127, %s.read.len117
  %final.start129 = select i1 %start.gt.len128, i64 %s.read.len117, i64 %c.start.0127
  %end.is_neg130 = icmp slt i64 %addtmp122, 0
  %rel.end131 = add i64 %s.read.len117, %addtmp122
  %norm.end132 = select i1 %end.is_neg130, i64 %rel.end131, i64 %addtmp122
  %end.lt.0133 = icmp slt i64 %norm.end132, 0
  %c.end.0134 = select i1 %end.lt.0133, i64 0, i64 %norm.end132
  %end.gt.len135 = icmp sgt i64 %c.end.0134, %s.read.len117
  %final.end136 = select i1 %end.gt.len135, i64 %s.read.len117, i64 %c.end.0134
  %view.empty137 = icmp sle i64 %final.end136, %final.start129
  %view.len.sub138 = sub i64 %final.end136, %final.start129
  %view.len139 = select i1 %view.empty137, i64 0, i64 %view.len.sub138
  %view.data140 = getelementptr i8, ptr %s.read.data119, i64 %final.start129
  %cmp.str141 = load i64, ptr @str.17.struct, align 8
  %cmp.str142 = and i64 %cmp.str141, 281474976710655
  %cmp.str143 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.len144 = icmp eq i64 %view.len139, %cmp.str142
  br i1 %eq.len144, label %str.eq.then145, label %str.eq.else146

and.190.else:                                     ; preds = %choice.case107
  br label %and.190.exit

and.190.exit:                                     ; preds = %and.190.else, %str.eq.merge147
  %and.190.phi = phi i1 [ %str.eq.result150, %str.eq.merge147 ], [ %cmptmp113, %and.190.else ]
  br i1 %and.190.phi, label %choice.then151, label %choice.else152

str.eq.then145:                                   ; preds = %and.190.then
  %eq.memcmp148 = call i32 @memcmp(ptr %view.data140, ptr %cmp.str143, i64 %view.len139)
  %eq.cmp.zero149 = icmp eq i32 %eq.memcmp148, 0
  br label %str.eq.merge147

str.eq.else146:                                   ; preds = %and.190.then
  br label %str.eq.merge147

str.eq.merge147:                                  ; preds = %str.eq.else146, %str.eq.then145
  %str.eq.result150 = phi i1 [ %eq.cmp.zero149, %str.eq.then145 ], [ false, %str.eq.else146 ]
  br label %and.190.exit

choice.then151:                                   ; preds = %and.190.exit
  %var.load154 = load ptr, ptr %var.cur, align 8
  %var.load155 = load i64, ptr %var.p, align 8
  %addtmp156 = add i64 %var.load155, 4
  %fld.gep157 = getelementptr inbounds { ptr, i64 }, ptr %var.load154, i32 0, i32 1
  store i64 %addtmp156, ptr %fld.gep157, align 8
  br label %choice.exit153

choice.else152:                                   ; preds = %and.190.exit
  br label %choice.exit153

choice.exit153:                                   ; preds = %choice.else152, %choice.then151
  %choice.res158 = phi i1 [ true, %choice.then151 ], [ false, %choice.else152 ]
  br label %choice.exit13

choice.case159:                                   ; preds = %and.191.exit
  %var.load165 = load ptr, ptr %var.cur, align 8
  %var.load166 = load i64, ptr %var.p, align 8
  %var.load167 = load i64, ptr %var.c0, align 8
  %call.res168 = call i1 @"json::#cursor_skip_number"(ptr %var.load165, i64 %var.load166, i64 %var.load167)
  br label %choice.exit13

choice.next160:                                   ; preds = %and.191.exit
  br label %choice.exit13

and.191.then:                                     ; preds = %choice.next108
  %cmptmp162 = icmp sle i64 %var.load12, 57
  br label %and.191.exit

and.191.else:                                     ; preds = %choice.next108
  br label %and.191.exit

and.191.exit:                                     ; preds = %and.191.else, %and.191.then
  %and.191.phi = phi i1 [ %cmptmp162, %and.191.then ], [ %cmptmp161, %and.191.else ]
  %val.match163 = icmp eq i64 %var.load12, 45
  %case.or164 = or i1 %and.191.phi, %val.match163
  br i1 %case.or164, label %choice.case159, label %choice.next160
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noinline noreturn "nounwind" }
attributes #5 = { cold noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint "nounwind" }
