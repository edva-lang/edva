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
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.88.then, label %and.88.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load10, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.88.else:                                      ; preds = %str_ok
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

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #4 {
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

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.89.then, label %and.89.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load10, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.89.else:                                      ; preds = %str_ok
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store { i64, i64 } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.dec, align 8
  %var.load2 = load ptr, ptr %var.dec, align 8
  %fld.gep3 = getelementptr inbounds { i64, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  %cmptmp = icmp slt i64 %fld.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
}

declare { i64, i64 } @"utf::decode_str_at"(ptr, i64) #0

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sge i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
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

choice.exit:                                      ; preds = %ret.dead, %str_ok
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
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.e, align 8
  %var.load12 = load i64, ptr %var.e, align 8
  %cmptmp13 = icmp eq i64 %var.load12, 117
  br i1 %cmptmp13, label %choice.then, label %choice.exit14

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
  %idx.oob = icmp uge i64 %addtmp11, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

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
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.95.then, label %and.95.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %addtmp11, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.95.else:                                      ; preds = %str_ok
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
define internal void @dva_abort_b_byte_msg() #5 {
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
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load, %str.len.query3
  br i1 %cmptmp, label %and.103.then, label %and.103.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load10, %s.read.len8
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.103.else:                                     ; preds = %str_ok
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

define internal i64 @"json::#scan_plain_ascii_end"(ptr %0, i64 %1) #0 {
entry:
  %var.c = alloca i64, align 8
  %var._53 = alloca i64, align 8
  %var._i52 = alloca i64, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %"var.k'", align 8
  %addtmp = add i64 %var.load4, 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %addtmp, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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

loop.latch.104:                                   ; preds = %choice.exit44
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
  %active.gen18 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current19 = icmp eq i64 %addr.tag, %active.gen18
  %tag.fast.ok20 = or i1 %tag.immortal17, %tag.current19
  br i1 %tag.fast.ok20, label %addr_ok, label %tag.slow_check21

addr_ok:                                          ; preds = %tag.slow_check21, %choice.exit13
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.w, align 8
  %var.load22 = load i64, ptr %var.w, align 8
  %var.load23 = load i64, ptr %var.w, align 8
  %subtmp = sub i64 %var.load23, 2314885530818453536
  %bortmp = or i64 %var.load22, %subtmp
  store i64 %bortmp, ptr %var.ctrl_or_hi, align 8
  %var.load24 = load i64, ptr %var.w, align 8
  %bxortmp = xor i64 %var.load24, 2459565876494606882
  store i64 %bxortmp, ptr %var.x1, align 8
  %var.load25 = load i64, ptr %var.w, align 8
  %bxortmp26 = xor i64 %var.load25, 6655295901103053916
  store i64 %bxortmp26, ptr %var.x2, align 8
  %var.load27 = load i64, ptr %var.x1, align 8
  %subtmp28 = sub i64 %var.load27, 72340172838076673
  %var.load29 = load i64, ptr %var.x1, align 8
  %bitnottmp = xor i64 %var.load29, -1
  %bandtmp = and i64 %subtmp28, %bitnottmp
  store i64 %bandtmp, ptr %var.m1, align 8
  %var.load30 = load i64, ptr %var.x2, align 8
  %subtmp31 = sub i64 %var.load30, 72340172838076673
  %var.load32 = load i64, ptr %var.x2, align 8
  %bitnottmp33 = xor i64 %var.load32, -1
  %bandtmp34 = and i64 %subtmp31, %bitnottmp33
  store i64 %bandtmp34, ptr %var.m2, align 8
  %var.load35 = load i64, ptr %var.ctrl_or_hi, align 8
  %var.load36 = load i64, ptr %var.m1, align 8
  %bortmp37 = or i64 %var.load35, %var.load36
  %var.load38 = load i64, ptr %var.m2, align 8
  %bortmp39 = or i64 %bortmp37, %var.load38
  %bandtmp40 = and i64 %bortmp39, -9187201950435737472
  store i64 %bandtmp40, ptr %var.bad, align 8
  %var.load41 = load i64, ptr %var.bad, align 8
  %cmptmp42 = icmp ne i64 %var.load41, 0
  br i1 %cmptmp42, label %choice.then43, label %choice.exit44

tag.slow_check21:                                 ; preds = %choice.exit13
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then43:                                    ; preds = %addr_ok
  %var.load45 = load i64, ptr %"var.k'", align 8
  %var.load46 = load i64, ptr %var.bad, align 8
  %cttz = call i64 @llvm.cttz.i64(i64 %var.load46, i1 false)
  %shrtmp = lshr i64 %cttz, 3
  %addtmp47 = add i64 %var.load45, %shrtmp
  ret i64 %addtmp47

choice.exit44:                                    ; preds = %addr_ok
  %var.load48 = load i64, ptr %"var.k'", align 8
  %addtmp49 = add i64 %var.load48, 8
  store i64 %addtmp49, ptr %"var.k'", align 8
  br label %loop.latch.104

ret.dead:                                         ; No predecessors!
  br label %loop.exit.104

loop.header.105:                                  ; preds = %loop.latch.105, %choice.exit
  %counter.load50 = load i64, ptr %loop.idx.105, align 8
  br label %loop.body.105

loop.body.105:                                    ; preds = %loop.header.105
  %loop.rel.i51 = sub i64 %counter.load50, 0
  store i64 1, ptr %loop.step.105, align 8
  store i64 %loop.rel.i51, ptr %var._i52, align 8
  store i64 %counter.load50, ptr %var._53, align 8
  %var.load54 = load i64, ptr %"var.k'", align 8
  %var.load55 = load i64, ptr %var.n, align 8
  %cmptmp56 = icmp sge i64 %var.load54, %var.load55
  br i1 %cmptmp56, label %choice.then57, label %choice.exit58

loop.exit.nat.105:                                ; No predecessors!
  br label %loop.exit.105

loop.latch.105:                                   ; preds = %choice.exit75
  %step.val78 = load i64, ptr %loop.step.105, align 8
  %loop.next79 = add i64 %counter.load50, %step.val78
  store i64 %loop.next79, ptr %loop.idx.105, align 8
  br label %loop.header.105

loop.exit.105:                                    ; preds = %choice.else, %choice.then57, %loop.exit.nat.105
  %var.load80 = load i64, ptr %"var.k'", align 8
  ret i64 %var.load80

choice.then57:                                    ; preds = %loop.body.105
  br label %loop.exit.105

choice.exit58:                                    ; preds = %loop.body.105
  %var.load59 = load ptr, ptr %var.src, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 0
  %s.read.len60 = load i64, ptr %s.read.len, align 8
  %s.read.len61 = and i64 %s.read.len60, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 1
  %s.read.data62 = load ptr, ptr %s.read.data, align 8
  %var.load63 = load i64, ptr %"var.k'", align 8
  %idx.oob = icmp uge i64 %var.load63, %s.read.len61
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %choice.exit58
  %s.byte.gep = getelementptr i8, ptr %s.read.data62, i64 %var.load63
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load64 = load i64, ptr %var.c, align 8
  %cmptmp66 = icmp sge i64 %var.load64, 32
  br i1 %cmptmp66, label %and.106.then, label %and.106.else

idx_oob:                                          ; preds = %choice.exit58
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit65:                                    ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br i1 %choice.res, label %and.107.then, label %and.107.else

choice.case:                                      ; preds = %and.106.exit
  br label %choice.exit65

choice.next:                                      ; preds = %and.106.exit
  br label %choice.exit65

and.106.then:                                     ; preds = %idx_ok
  %cmptmp67 = icmp sle i64 %var.load64, 127
  br label %and.106.exit

and.106.else:                                     ; preds = %idx_ok
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %and.106.then
  %and.106.phi = phi i1 [ %cmptmp67, %and.106.then ], [ %cmptmp66, %and.106.else ]
  br i1 %and.106.phi, label %choice.case, label %choice.next

and.107.then:                                     ; preds = %choice.exit65
  %var.load68 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load68, 34
  %val.match72 = icmp eq i64 %var.load68, 92
  %case.or = or i1 %val.match, %val.match72
  br i1 %case.or, label %choice.case70, label %choice.next71

and.107.else:                                     ; preds = %choice.exit65
  br label %and.107.exit

and.107.exit:                                     ; preds = %and.107.else, %choice.exit69
  %and.107.phi = phi i1 [ %nottmp, %choice.exit69 ], [ %choice.res, %and.107.else ]
  br i1 %and.107.phi, label %choice.then74, label %choice.else

choice.exit69:                                    ; preds = %choice.next71, %choice.case70
  %choice.res73 = phi i1 [ true, %choice.case70 ], [ false, %choice.next71 ]
  %nottmp = xor i1 %choice.res73, true
  br label %and.107.exit

choice.case70:                                    ; preds = %and.107.then
  br label %choice.exit69

choice.next71:                                    ; preds = %and.107.then
  br label %choice.exit69

choice.then74:                                    ; preds = %and.107.exit
  %var.load76 = load i64, ptr %"var.k'", align 8
  %addtmp77 = add i64 %var.load76, 1
  store i64 %addtmp77, ptr %"var.k'", align 8
  br label %choice.exit75

choice.else:                                      ; preds = %and.107.exit
  br label %loop.exit.105

choice.exit75:                                    ; preds = %choice.then74
  br label %loop.latch.105
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_addr_msg(i64 %0) #4 {
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %and.108.then, label %and.108.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.108.else:                                     ; preds = %str_ok
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
  %str.tag = lshr i64 %str.len.query14, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load23 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load23, 93
  br i1 %val.match, label %choice.case25, label %choice.next26

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
  %idx.oob = icmp uge i64 %var.load22, %s.read.len20
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

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
  %str.tag = lshr i64 %str.len.query9, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load18 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load18, 34
  br i1 %val.match, label %choice.case20, label %choice.next21

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
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

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
  %str.tag = lshr i64 %str.len.query14, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load23 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load23, 125
  br i1 %val.match, label %choice.case25, label %choice.next26

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
  %idx.oob = icmp uge i64 %var.load22, %s.read.len20
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

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
  %str.tag = lshr i64 %str.len.query9, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load18 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load18, 34
  br i1 %val.match, label %choice.case20, label %choice.next21

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
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

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
  %str.tag = lshr i64 %str.len.query13, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

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

str_ok:                                           ; preds = %tag.slow_check, %choice.case
  %cmptmp = icmp slt i64 %var.load9, %str.len.query14
  br i1 %cmptmp, label %and.109.then, label %and.109.else

tag.slow_check:                                   ; preds = %choice.case
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load21, %s.read.len19
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.109.else:                                     ; preds = %str_ok
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
  %var._178 = alloca ptr, align 8
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
  %ram.pay176 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr177 = inttoptr i64 %ram.pay176 to ptr
  store ptr %pay.ptr177, ptr %var._178, align 8
  store ptr %pay.ptr177, ptr %var.e2, align 8
  %var.load179 = load ptr, ptr %var.e2, align 8
  %p.to.i64180 = ptrtoint ptr %var.load179 to i64
  %ram.pay181 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64180, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit31
  %choice.res182 = phi { i1, i64 } [ %choice.res175, %choice.exit31 ], [ %ram.pay181, %choice.else ]
  ret { i1, i64 } %choice.res182

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
  %str.tag = lshr i64 %str.len.query21, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit17:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load30 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load30, 125
  br i1 %val.match, label %choice.case32, label %choice.next33

choice.case:                                      ; preds = %str_ok
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

choice.next:                                      ; preds = %str_ok
  br label %choice.exit17

str_ok:                                           ; preds = %tag.slow_check, %a.store
  %cmptmp = icmp slt i64 %var.load16, %str.len.query22
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %a.store
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

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

choice.exit31:                                    ; preds = %choice.next77, %choice.exit126, %a.view.off71
  %choice.res175 = phi { i1, i64 } [ %ram.pay75, %a.view.off71 ], [ %choice.res153, %choice.exit126 ], [ %ram.pay174, %choice.next77 ]
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
  %str.tag100 = lshr i64 %str.len.query98, 48
  %tag.immortal102 = icmp eq i64 %str.tag100, 0
  %active.gen103 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current104 = icmp eq i64 %str.tag100, %active.gen103
  %tag.fast.ok105 = or i1 %tag.immortal102, %tag.current104
  br i1 %tag.fast.ok105, label %str_ok101, label %tag.slow_check106

choice.next77:                                    ; preds = %choice.next33
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 56)
  %err.code.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 0
  store i64 400, ptr %err.code.gep156, align 8
  %err.msg.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 1
  store ptr @str.12.struct, ptr %err.msg.gep157, align 8
  %err.file.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep158, align 8
  %err.line.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 3
  store i64 0, ptr %err.line.gep159, align 8
  %err.col.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 4
  store i64 0, ptr %err.col.gep160, align 8
  %err.ctx.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc155, i32 0, i32 5
  %var.load162 = load i64, ptr %var.p, align 8
  %arena.cur163 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld165 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc164, i32 0, i32 0
  store i64 %var.load162, ptr %rec.fld165, align 8
  %rec.fld166 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc164, i32 0, i32 1
  store i64 0, ptr %rec.fld166, align 8
  %ctx.0.gep167 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc164, i32 0, i32 0
  %ctx.0168 = load i64, ptr %ctx.0.gep167, align 8
  %ctx.1.gep169 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc164, i32 0, i32 1
  %ctx.1170 = load i64, ptr %ctx.1.gep169, align 8
  %err.ctx0.gep171 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep161, i32 0, i32 0
  store i64 %ctx.0168, ptr %err.ctx0.gep171, align 8
  %err.ctx1.gep172 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep161, i32 0, i32 1
  store i64 %ctx.1170, ptr %err.ctx1.gep172, align 8
  %p.to.i64173 = ptrtoint ptr %err.alloc155 to i64
  %ram.pay174 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64173, 1
  br label %choice.exit31

choice.exit91:                                    ; preds = %choice.next93, %idx_ok118
  %choice.res124 = phi i64 [ %s.byte.val123, %idx_ok118 ], [ -1, %choice.next93 ]
  store i64 %choice.res124, ptr %var.c2, align 8
  %var.load125 = load i64, ptr %var.c2, align 8
  %val.match129 = icmp eq i64 %var.load125, 125
  br i1 %val.match129, label %choice.case127, label %choice.next128

choice.case92:                                    ; preds = %str_ok101
  %var.load108 = load ptr, ptr %var.sc, align 8
  %fld.gep109 = getelementptr inbounds { ptr, i64 }, ptr %var.load108, i32 0, i32 0
  %fld.load110 = load ptr, ptr %fld.gep109, align 8
  %s.read.len111 = getelementptr inbounds { i64, ptr }, ptr %fld.load110, i32 0, i32 0
  %s.read.len112 = load i64, ptr %s.read.len111, align 8
  %s.read.len113 = and i64 %s.read.len112, 281474976710655
  %s.read.data114 = getelementptr inbounds { i64, ptr }, ptr %fld.load110, i32 0, i32 1
  %s.read.data115 = load ptr, ptr %s.read.data114, align 8
  %var.load116 = load i64, ptr %var.p2, align 8
  %idx.oob117 = icmp uge i64 %var.load116, %s.read.len113
  br i1 %idx.oob117, label %idx_oob119, label %idx_ok118

choice.next93:                                    ; preds = %str_ok101
  br label %choice.exit91

str_ok101:                                        ; preds = %tag.slow_check106, %choice.case76
  %cmptmp107 = icmp slt i64 %var.load90, %str.len.query99
  br i1 %cmptmp107, label %choice.case92, label %choice.next93

tag.slow_check106:                                ; preds = %choice.case76
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag100)
  br label %str_ok101

idx_ok118:                                        ; preds = %abort.dead120, %choice.case92
  %s.byte.gep121 = getelementptr i8, ptr %s.read.data115, i64 %var.load116
  %s.byte122 = load i8, ptr %s.byte.gep121, align 1
  %s.byte.val123 = zext i8 %s.byte122 to i64
  br label %choice.exit91

idx_oob119:                                       ; preds = %choice.case92
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %idx_ok118

choice.exit126:                                   ; preds = %a.after143, %choice.case127
  %choice.res153 = phi { i1, i64 } [ %ram.pay137, %choice.case127 ], [ %call.res152, %a.after143 ]
  br label %choice.exit31

choice.case127:                                   ; preds = %choice.exit91
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 56)
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
  %var.load131 = load i64, ptr %var.p2, align 8
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld134 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc133, i32 0, i32 0
  store i64 %var.load131, ptr %rec.fld134, align 8
  %rec.fld135 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc133, i32 0, i32 1
  store i64 0, ptr %rec.fld135, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc133, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc133, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64136 = ptrtoint ptr %err.alloc to i64
  %ram.pay137 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64136, 1
  br label %choice.exit126

choice.next128:                                   ; preds = %choice.exit91
  %var.load138 = load ptr, ptr %var.sc, align 8
  %var.load139 = load ptr, ptr %var.entries, align 8
  %a.load140 = load ptr, ptr %var.entries, align 8
  %a.null141 = icmp eq ptr %a.load140, null
  br i1 %a.null141, label %a.create142, label %a.after143

a.create142:                                      ; preds = %choice.next128
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 24)
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 128)
  %a.len.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 0
  store i64 0, ptr %a.len.gep148, align 8
  %a.data.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 1
  store ptr %a.buf147, ptr %a.data.gep149, align 8
  %a.cap.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create145, i32 0, i32 2
  store i64 16, ptr %a.cap.gep150, align 8
  store ptr %a.create145, ptr %var.entries, align 8
  br label %a.after143

a.after143:                                       ; preds = %a.create142, %choice.next128
  %a.load2151 = load ptr, ptr %var.entries, align 8
  %call.res152 = call { i1, i64 } @"json::#parse_object_loop"(ptr %var.load138, ptr %a.load2151)
  br label %choice.exit126
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
define internal void @dva_abort_arr_overflow_msg() #5 {
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
  %str.tag = lshr i64 %str.len.query11, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.exit
  %cmptmp = icmp sle i64 %addtmp, %str.len.query12
  br i1 %cmptmp, label %and.110.then, label %and.110.else

tag.slow_check:                                   ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen21 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current22 = icmp eq i64 %str.tag18, %active.gen21
  %tag.fast.ok23 = or i1 %tag.immortal20, %tag.current22
  br i1 %tag.fast.ok23, label %str_ok19, label %tag.slow_check24

and.110.else:                                     ; preds = %str_ok
  br label %and.110.exit

and.110.exit:                                     ; preds = %and.110.else, %str.eq.merge
  %and.110.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.110.else ]
  store i1 %and.110.phi, ptr %var.ok, align 1
  %var.load44 = load i1, ptr %var.ok, align 1
  br i1 %var.load44, label %choice.then45, label %choice.else46

str_ok19:                                         ; preds = %tag.slow_check24, %and.110.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 0
  %s.read.len25 = load i64, ptr %s.read.len, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %s.read.data27 = load ptr, ptr %s.read.data, align 8
  %var.load28 = load i64, ptr %var.p, align 8
  %var.load29 = load i64, ptr %var.p, align 8
  %var.load30 = load i64, ptr %var.len, align 8
  %addtmp31 = add i64 %var.load29, %var.load30
  %start.is_neg = icmp slt i64 %var.load28, 0
  %rel.start = add i64 %s.read.len26, %var.load28
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load28
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len26
  %final.start = select i1 %start.gt.len, i64 %s.read.len26, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp31, 0
  %rel.end = add i64 %s.read.len26, %addtmp31
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp31
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len26
  %final.end = select i1 %end.gt.len, i64 %s.read.len26, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data27, i64 %final.start
  %var.load32 = load ptr, ptr %var.word, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %cmp.str33 = load i64, ptr %cmp.str, align 8
  %cmp.str34 = and i64 %cmp.str33, 281474976710655
  %str.tag35 = lshr i64 %cmp.str33, 48
  %tag.immortal37 = icmp eq i64 %str.tag35, 0
  %active.gen38 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current39 = icmp eq i64 %str.tag35, %active.gen38
  %tag.fast.ok40 = or i1 %tag.immortal37, %tag.current39
  br i1 %tag.fast.ok40, label %str_ok36, label %tag.slow_check41

tag.slow_check24:                                 ; preds = %and.110.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag18)
  br label %str_ok19

str_ok36:                                         ; preds = %tag.slow_check41, %str_ok19
  %cmp.str42 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 1
  %cmp.str43 = load ptr, ptr %cmp.str42, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str34
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check41:                                 ; preds = %str_ok19
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag35)
  br label %str_ok36

str.eq.then:                                      ; preds = %str_ok36
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str43, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok36
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.110.exit

choice.then45:                                    ; preds = %and.110.exit
  %var.load48 = load ptr, ptr %var.sc, align 8
  %var.load49 = load i64, ptr %var.p, align 8
  %var.load50 = load i64, ptr %var.len, align 8
  %addtmp51 = add i64 %var.load49, %var.load50
  %fld.gep52 = getelementptr inbounds { ptr, i64 }, ptr %var.load48, i32 0, i32 1
  store i64 %addtmp51, ptr %fld.gep52, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load53 = load i1, ptr %var.tag, align 1
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i1 %var.load53, ptr %enum.pay.alloc, align 1
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit47

choice.else46:                                    ; preds = %and.110.exit
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 56)
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
  %var.load56 = load i64, ptr %var.p, align 8
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load56, ptr %rec.fld, align 8
  %rec.fld58 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld58, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6459 = ptrtoint ptr %err.alloc to i64
  %ram.pay60 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6459, 1
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.else46, %choice.then45
  %choice.res61 = phi { i1, i64 } [ %ram.pay, %choice.then45 ], [ %ram.pay60, %choice.else46 ]
  ret { i1, i64 } %choice.res61
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sle i64 %addtmp, %str.len.query10
  br i1 %cmptmp, label %and.111.then, label %and.111.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current20 = icmp eq i64 %str.tag16, %active.gen19
  %tag.fast.ok21 = or i1 %tag.immortal18, %tag.current20
  br i1 %tag.fast.ok21, label %str_ok17, label %tag.slow_check22

and.111.else:                                     ; preds = %str_ok
  br label %and.111.exit

and.111.exit:                                     ; preds = %and.111.else, %str.eq.merge
  %and.111.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.111.else ]
  store i1 %and.111.phi, ptr %var.ok, align 1
  %var.load31 = load i1, ptr %var.ok, align 1
  br i1 %var.load31, label %choice.then, label %choice.else

str_ok17:                                         ; preds = %tag.slow_check22, %and.111.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load i64, ptr %var.p, align 8
  %var.load27 = load i64, ptr %var.p, align 8
  %addtmp28 = add i64 %var.load27, 4
  %start.is_neg = icmp slt i64 %var.load26, 0
  %rel.start = add i64 %s.read.len24, %var.load26
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load26
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len24
  %final.start = select i1 %start.gt.len, i64 %s.read.len24, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp28, 0
  %rel.end = add i64 %s.read.len24, %addtmp28
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp28
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len24
  %final.end = select i1 %end.gt.len, i64 %s.read.len24, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data25, i64 %final.start
  %cmp.str = load i64, ptr @str.17.struct, align 8
  %cmp.str29 = and i64 %cmp.str, 281474976710655
  %cmp.str30 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str29
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check22:                                 ; preds = %and.111.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag16)
  br label %str_ok17

str.eq.then:                                      ; preds = %str_ok17
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str30, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok17
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.111.exit

choice.then:                                      ; preds = %and.111.exit
  %var.load32 = load ptr, ptr %var.sc, align 8
  %var.load33 = load i64, ptr %var.p, align 8
  %addtmp34 = add i64 %var.load33, 4
  %fld.gep35 = getelementptr inbounds { ptr, i64 }, ptr %var.load32, i32 0, i32 1
  store i64 %addtmp34, ptr %fld.gep35, align 8
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
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 56)
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
  %var.load37 = load i64, ptr %var.p, align 8
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load37, ptr %rec.fld, align 8
  %rec.fld39 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld39, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i6440 = ptrtoint ptr %err.alloc to i64
  %ram.pay41 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i6440, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %ram.pay41, %choice.else ]
  ret { i1, i64 } %choice.res
}

define internal { i1, i64 } @"json::#parse_number"(ptr %0) #0 {
entry:
  %var.f = alloca double, align 8
  %var.valid = alloca i1, align 1
  %var._450 = alloca i64, align 8
  %var._i449 = alloca i64, align 8
  %loop.step.126 = alloca i64, align 8
  %loop.idx.126 = alloca i64, align 8
  %var.abs_e = alloca i64, align 8
  %var.eclamp = alloca i64, align 8
  %var.exp_val = alloca i64, align 8
  %var.ed = alloca i64, align 8
  %var.ec = alloca i64, align 8
  %var._351 = alloca i64, align 8
  %var._i350 = alloca i64, align 8
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
  %var.d229 = alloca i64, align 8
  %var.c216 = alloca i64, align 8
  %var._189 = alloca i64, align 8
  %var._i188 = alloca i64, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c0, align 8
  %var.load18 = load i64, ptr %var.c0, align 8
  %cmptmp22 = icmp sge i64 %var.load18, 48
  br i1 %cmptmp22, label %and.112.then, label %and.112.else

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
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

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
  %arena.cur510 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc511 = call ptr @dva_arena_alloc(ptr %arena.cur510, i64 56)
  %err.code.gep512 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 0
  store i64 400, ptr %err.code.gep512, align 8
  %err.msg.gep513 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 1
  store ptr @str.21.struct, ptr %err.msg.gep513, align 8
  %err.file.gep514 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep514, align 8
  %err.line.gep515 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 3
  store i64 0, ptr %err.line.gep515, align 8
  %err.col.gep516 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 4
  store i64 0, ptr %err.col.gep516, align 8
  %err.ctx.gep517 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc511, i32 0, i32 5
  %var.load518 = load i64, ptr %"var.p'", align 8
  %arena.cur519 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc520 = call ptr @dva_arena_alloc(ptr %arena.cur519, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld521 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc520, i32 0, i32 0
  store i64 %var.load518, ptr %rec.fld521, align 8
  %rec.fld522 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc520, i32 0, i32 1
  store i64 0, ptr %rec.fld522, align 8
  %ctx.0.gep523 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc520, i32 0, i32 0
  %ctx.0524 = load i64, ptr %ctx.0.gep523, align 8
  %ctx.1.gep525 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc520, i32 0, i32 1
  %ctx.1526 = load i64, ptr %ctx.1.gep525, align 8
  %err.ctx0.gep527 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep517, i32 0, i32 0
  store i64 %ctx.0524, ptr %err.ctx0.gep527, align 8
  %err.ctx1.gep528 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep517, i32 0, i32 1
  store i64 %ctx.1526, ptr %err.ctx1.gep528, align 8
  %p.to.i64529 = ptrtoint ptr %err.alloc511 to i64
  %ram.pay530 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64529, 1
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else, %choice.exit88
  %choice.res531 = phi { i1, i64 } [ %choice.res509, %choice.exit88 ], [ %ram.pay530, %choice.else ]
  ret { i1, i64 } %choice.res531

choice.exit28:                                    ; preds = %choice.next30, %choice.case29
  %var.load33 = load i64, ptr %"var.p'", align 8
  %var.load34 = load ptr, ptr %var.sc, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 0
  %fld.load36 = load ptr, ptr %fld.gep35, align 8
  %str.len.query37 = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 0
  %str.len.query38 = load i64, ptr %str.len.query37, align 8
  %str.len.query39 = and i64 %str.len.query38, 281474976710655
  %str.tag40 = lshr i64 %str.len.query38, 48
  %tag.immortal42 = icmp eq i64 %str.tag40, 0
  %active.gen43 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current44 = icmp eq i64 %str.tag40, %active.gen43
  %tag.fast.ok45 = or i1 %tag.immortal42, %tag.current44
  br i1 %tag.fast.ok45, label %str_ok41, label %tag.slow_check46

choice.case29:                                    ; preds = %choice.then
  store i1 true, ptr %"var.neg'", align 1
  %var.load32 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load32, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit28

choice.next30:                                    ; preds = %choice.then
  br label %choice.exit28

str_ok41:                                         ; preds = %tag.slow_check46, %choice.exit28
  %cmptmp47 = icmp slt i64 %var.load33, %str.len.query39
  br i1 %cmptmp47, label %and.113.then, label %and.113.else

tag.slow_check46:                                 ; preds = %choice.exit28
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag40)
  br label %str_ok41

and.113.then:                                     ; preds = %str_ok41
  %var.load48 = load ptr, ptr %var.sc, align 8
  %fld.gep49 = getelementptr inbounds { ptr, i64 }, ptr %var.load48, i32 0, i32 0
  %fld.load50 = load ptr, ptr %fld.gep49, align 8
  %s.read.len51 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len51, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %s.read.data54 = getelementptr inbounds { i64, ptr }, ptr %fld.load50, i32 0, i32 1
  %s.read.data55 = load ptr, ptr %s.read.data54, align 8
  %var.load56 = load i64, ptr %"var.p'", align 8
  %idx.oob57 = icmp uge i64 %var.load56, %s.read.len53
  br i1 %idx.oob57, label %idx_oob59, label %idx_ok58

and.113.else:                                     ; preds = %str_ok41
  br label %and.113.exit

and.113.exit:                                     ; preds = %and.113.else, %idx_ok58
  %and.113.phi = phi i1 [ %cmptmp64, %idx_ok58 ], [ %cmptmp47, %and.113.else ]
  br i1 %and.113.phi, label %and.114.then, label %and.114.else

idx_ok58:                                         ; preds = %abort.dead60, %and.113.then
  %s.byte.gep61 = getelementptr i8, ptr %s.read.data55, i64 %var.load56
  %s.byte62 = load i8, ptr %s.byte.gep61, align 1
  %s.byte.val63 = zext i8 %s.byte62 to i64
  %cmptmp64 = icmp eq i64 %s.byte.val63, 48
  br label %and.113.exit

idx_oob59:                                        ; preds = %and.113.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %idx_ok58

and.114.then:                                     ; preds = %and.113.exit
  %var.load65 = load i64, ptr %"var.p'", align 8
  %addtmp66 = add i64 %var.load65, 1
  %var.load67 = load ptr, ptr %var.sc, align 8
  %fld.gep68 = getelementptr inbounds { ptr, i64 }, ptr %var.load67, i32 0, i32 0
  %fld.load69 = load ptr, ptr %fld.gep68, align 8
  %str.len.query70 = getelementptr inbounds { i64, ptr }, ptr %fld.load69, i32 0, i32 0
  %str.len.query71 = load i64, ptr %str.len.query70, align 8
  %str.len.query72 = and i64 %str.len.query71, 281474976710655
  %str.tag73 = lshr i64 %str.len.query71, 48
  %tag.immortal75 = icmp eq i64 %str.tag73, 0
  %active.gen76 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current77 = icmp eq i64 %str.tag73, %active.gen76
  %tag.fast.ok78 = or i1 %tag.immortal75, %tag.current77
  br i1 %tag.fast.ok78, label %str_ok74, label %tag.slow_check79

and.114.else:                                     ; preds = %and.113.exit
  br label %and.114.exit

and.114.exit:                                     ; preds = %and.114.else, %str_ok74
  %and.114.phi = phi i1 [ %cmptmp80, %str_ok74 ], [ %and.113.phi, %and.114.else ]
  br i1 %and.114.phi, label %and.115.then, label %and.115.else

str_ok74:                                         ; preds = %tag.slow_check79, %and.114.then
  %cmptmp80 = icmp slt i64 %addtmp66, %str.len.query72
  br label %and.114.exit

tag.slow_check79:                                 ; preds = %and.114.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag73)
  br label %str_ok74

and.115.then:                                     ; preds = %and.114.exit
  %var.load81 = load ptr, ptr %var.sc, align 8
  %var.load82 = load i64, ptr %"var.p'", align 8
  %addtmp83 = add i64 %var.load82, 1
  %call.res84 = call i1 @"json::#is_digit_at"(ptr %var.load81, i64 %addtmp83)
  br label %and.115.exit

and.115.else:                                     ; preds = %and.114.exit
  br label %and.115.exit

and.115.exit:                                     ; preds = %and.115.else, %and.115.then
  %and.115.phi = phi i1 [ %call.res84, %and.115.then ], [ %and.114.phi, %and.115.else ]
  store i1 %and.115.phi, ptr %var.has_leading_zero, align 1
  %var.load85 = load i1, ptr %var.has_leading_zero, align 1
  br i1 %var.load85, label %choice.then86, label %choice.else87

choice.then86:                                    ; preds = %and.115.exit
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
  %var.load89 = load i64, ptr %"var.p'", align 8
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load89, ptr %rec.fld, align 8
  %rec.fld91 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld91, align 8
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
  br label %choice.exit88

choice.else87:                                    ; preds = %and.115.exit
  %var.load92 = load i64, ptr %"var.p'", align 8
  store i64 %var.load92, ptr %"var.p2'", align 8
  store i1 false, ptr %"var.had_int'", align 1
  store i64 0, ptr %"var.sig_digits'", align 8
  store double 0.000000e+00, ptr %"var.fv'", align 8
  store i64 0, ptr %"var.exp10'", align 8
  store i64 0, ptr %loop.idx.116, align 8
  br label %loop.header.116

choice.exit88:                                    ; preds = %choice.exit471, %choice.then86
  %choice.res509 = phi { i1, i64 } [ %ram.pay, %choice.then86 ], [ %choice.res508, %choice.exit471 ]
  br label %choice.exit26

loop.header.116:                                  ; preds = %loop.latch.116, %choice.else87
  %counter.load = load i64, ptr %loop.idx.116, align 8
  br label %loop.body.116

loop.body.116:                                    ; preds = %loop.header.116
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.116, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load93 = load i64, ptr %"var.p2'", align 8
  %var.load94 = load ptr, ptr %var.sc, align 8
  %fld.gep95 = getelementptr inbounds { ptr, i64 }, ptr %var.load94, i32 0, i32 0
  %fld.load96 = load ptr, ptr %fld.gep95, align 8
  %str.len.query97 = getelementptr inbounds { i64, ptr }, ptr %fld.load96, i32 0, i32 0
  %str.len.query98 = load i64, ptr %str.len.query97, align 8
  %str.len.query99 = and i64 %str.len.query98, 281474976710655
  %cmptmp100 = icmp sge i64 %var.load93, %str.len.query99
  br i1 %cmptmp100, label %choice.then101, label %choice.exit102

loop.exit.nat.116:                                ; No predecessors!
  br label %loop.exit.116

loop.latch.116:                                   ; preds = %choice.exit128
  %step.val = load i64, ptr %loop.step.116, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.116, align 8
  br label %loop.header.116

loop.exit.116:                                    ; preds = %choice.else127, %choice.then101, %loop.exit.nat.116
  %var.load149 = load i64, ptr %"var.p2'", align 8
  %var.load150 = load ptr, ptr %var.sc, align 8
  %fld.gep151 = getelementptr inbounds { ptr, i64 }, ptr %var.load150, i32 0, i32 0
  %fld.load152 = load ptr, ptr %fld.gep151, align 8
  %str.len.query153 = getelementptr inbounds { i64, ptr }, ptr %fld.load152, i32 0, i32 0
  %str.len.query154 = load i64, ptr %str.len.query153, align 8
  %str.len.query155 = and i64 %str.len.query154, 281474976710655
  %str.tag156 = lshr i64 %str.len.query154, 48
  %tag.immortal158 = icmp eq i64 %str.tag156, 0
  %active.gen159 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current160 = icmp eq i64 %str.tag156, %active.gen159
  %tag.fast.ok161 = or i1 %tag.immortal158, %tag.current160
  br i1 %tag.fast.ok161, label %str_ok157, label %tag.slow_check162

choice.then101:                                   ; preds = %loop.body.116
  br label %loop.exit.116

choice.exit102:                                   ; preds = %loop.body.116
  %var.load103 = load ptr, ptr %var.sc, align 8
  %fld.gep104 = getelementptr inbounds { ptr, i64 }, ptr %var.load103, i32 0, i32 0
  %fld.load105 = load ptr, ptr %fld.gep104, align 8
  %s.read.len106 = getelementptr inbounds { i64, ptr }, ptr %fld.load105, i32 0, i32 0
  %s.read.len107 = load i64, ptr %s.read.len106, align 8
  %s.read.len108 = and i64 %s.read.len107, 281474976710655
  %s.read.data109 = getelementptr inbounds { i64, ptr }, ptr %fld.load105, i32 0, i32 1
  %s.read.data110 = load ptr, ptr %s.read.data109, align 8
  %var.load111 = load i64, ptr %"var.p2'", align 8
  %idx.oob112 = icmp uge i64 %var.load111, %s.read.len108
  br i1 %idx.oob112, label %idx_oob114, label %idx_ok113

idx_ok113:                                        ; preds = %abort.dead115, %choice.exit102
  %s.byte.gep116 = getelementptr i8, ptr %s.read.data110, i64 %var.load111
  %s.byte117 = load i8, ptr %s.byte.gep116, align 1
  %s.byte.val118 = zext i8 %s.byte117 to i64
  store i64 %s.byte.val118, ptr %var.c, align 8
  %var.load119 = load i64, ptr %var.c, align 8
  %cmptmp123 = icmp sge i64 %var.load119, 48
  br i1 %cmptmp123, label %and.117.then, label %and.117.else

idx_oob114:                                       ; preds = %choice.exit102
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead115:                                    ; No predecessors!
  br label %idx_ok113

choice.exit120:                                   ; preds = %choice.next122, %choice.case121
  %choice.res125 = phi i1 [ true, %choice.case121 ], [ false, %choice.next122 ]
  br i1 %choice.res125, label %choice.then126, label %choice.else127

choice.case121:                                   ; preds = %and.117.exit
  br label %choice.exit120

choice.next122:                                   ; preds = %and.117.exit
  br label %choice.exit120

and.117.then:                                     ; preds = %idx_ok113
  %cmptmp124 = icmp sle i64 %var.load119, 57
  br label %and.117.exit

and.117.else:                                     ; preds = %idx_ok113
  br label %and.117.exit

and.117.exit:                                     ; preds = %and.117.else, %and.117.then
  %and.117.phi = phi i1 [ %cmptmp124, %and.117.then ], [ %cmptmp123, %and.117.else ]
  br i1 %and.117.phi, label %choice.case121, label %choice.next122

choice.then126:                                   ; preds = %choice.exit120
  store i1 true, ptr %"var.had_int'", align 1
  %var.load129 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load129, 48
  store i64 %subtmp, ptr %var.d, align 8
  %var.load130 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp131 = icmp sgt i64 %var.load130, 0
  br i1 %cmptmp131, label %or.118.then, label %or.118.else

choice.else127:                                   ; preds = %choice.exit120
  br label %loop.exit.116

choice.exit128:                                   ; preds = %choice.exit135
  br label %loop.latch.116

or.118.then:                                      ; preds = %choice.then126
  br label %or.118.exit

or.118.else:                                      ; preds = %choice.then126
  %var.load132 = load i64, ptr %var.d, align 8
  %cmptmp133 = icmp ne i64 %var.load132, 0
  br label %or.118.exit

or.118.exit:                                      ; preds = %or.118.else, %or.118.then
  %or.118.phi = phi i1 [ %cmptmp131, %or.118.then ], [ %cmptmp133, %or.118.else ]
  br i1 %or.118.phi, label %choice.then134, label %choice.exit135

choice.then134:                                   ; preds = %or.118.exit
  %var.load136 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp137 = icmp slt i64 %var.load136, 17
  br i1 %cmptmp137, label %choice.then138, label %choice.else139

choice.exit135:                                   ; preds = %choice.exit140, %or.118.exit
  %var.load147 = load i64, ptr %"var.p2'", align 8
  %addtmp148 = add i64 %var.load147, 1
  store i64 %addtmp148, ptr %"var.p2'", align 8
  br label %choice.exit128

choice.then138:                                   ; preds = %choice.then134
  %var.load141 = load double, ptr %"var.fv'", align 8
  %fmultmp = fmul double %var.load141, 1.000000e+01
  %var.load142 = load i64, ptr %var.d, align 8
  %cast.sitofp = sitofp i64 %var.load142 to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.fv'", align 8
  %var.load143 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp144 = add i64 %var.load143, 1
  store i64 %addtmp144, ptr %"var.sig_digits'", align 8
  br label %choice.exit140

choice.else139:                                   ; preds = %choice.then134
  %var.load145 = load i64, ptr %"var.exp10'", align 8
  %addtmp146 = add i64 %var.load145, 1
  store i64 %addtmp146, ptr %"var.exp10'", align 8
  br label %choice.exit140

choice.exit140:                                   ; preds = %choice.else139, %choice.then138
  br label %choice.exit135

str_ok157:                                        ; preds = %tag.slow_check162, %loop.exit.116
  %cmptmp163 = icmp slt i64 %var.load149, %str.len.query155
  br i1 %cmptmp163, label %and.119.then, label %and.119.else

tag.slow_check162:                                ; preds = %loop.exit.116
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag156)
  br label %str_ok157

and.119.then:                                     ; preds = %str_ok157
  %var.load164 = load ptr, ptr %var.sc, align 8
  %fld.gep165 = getelementptr inbounds { ptr, i64 }, ptr %var.load164, i32 0, i32 0
  %fld.load166 = load ptr, ptr %fld.gep165, align 8
  %s.read.len167 = getelementptr inbounds { i64, ptr }, ptr %fld.load166, i32 0, i32 0
  %s.read.len168 = load i64, ptr %s.read.len167, align 8
  %s.read.len169 = and i64 %s.read.len168, 281474976710655
  %s.read.data170 = getelementptr inbounds { i64, ptr }, ptr %fld.load166, i32 0, i32 1
  %s.read.data171 = load ptr, ptr %s.read.data170, align 8
  %var.load172 = load i64, ptr %"var.p2'", align 8
  %idx.oob173 = icmp uge i64 %var.load172, %s.read.len169
  br i1 %idx.oob173, label %idx_oob175, label %idx_ok174

and.119.else:                                     ; preds = %str_ok157
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %idx_ok174
  %and.119.phi = phi i1 [ %cmptmp180, %idx_ok174 ], [ %cmptmp163, %and.119.else ]
  store i1 %and.119.phi, ptr %var.has_dot, align 1
  store i1 false, ptr %"var.had_frac'", align 1
  %var.load181 = load i1, ptr %var.has_dot, align 1
  br i1 %var.load181, label %choice.then182, label %choice.exit183

idx_ok174:                                        ; preds = %abort.dead176, %and.119.then
  %s.byte.gep177 = getelementptr i8, ptr %s.read.data171, i64 %var.load172
  %s.byte178 = load i8, ptr %s.byte.gep177, align 1
  %s.byte.val179 = zext i8 %s.byte178 to i64
  %cmptmp180 = icmp eq i64 %s.byte.val179, 46
  br label %and.119.exit

idx_oob175:                                       ; preds = %and.119.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead176:                                    ; No predecessors!
  br label %idx_ok174

choice.then182:                                   ; preds = %and.119.exit
  %var.load184 = load i64, ptr %"var.p2'", align 8
  %addtmp185 = add i64 %var.load184, 1
  store i64 %addtmp185, ptr %"var.p2'", align 8
  store i64 0, ptr %loop.idx.120, align 8
  br label %loop.header.120

choice.exit183:                                   ; preds = %loop.exit.120, %and.119.exit
  %var.load256 = load i64, ptr %"var.p2'", align 8
  %var.load257 = load ptr, ptr %var.sc, align 8
  %fld.gep258 = getelementptr inbounds { ptr, i64 }, ptr %var.load257, i32 0, i32 0
  %fld.load259 = load ptr, ptr %fld.gep258, align 8
  %str.len.query260 = getelementptr inbounds { i64, ptr }, ptr %fld.load259, i32 0, i32 0
  %str.len.query261 = load i64, ptr %str.len.query260, align 8
  %str.len.query262 = and i64 %str.len.query261, 281474976710655
  %str.tag263 = lshr i64 %str.len.query261, 48
  %tag.immortal265 = icmp eq i64 %str.tag263, 0
  %active.gen266 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current267 = icmp eq i64 %str.tag263, %active.gen266
  %tag.fast.ok268 = or i1 %tag.immortal265, %tag.current267
  br i1 %tag.fast.ok268, label %str_ok264, label %tag.slow_check269

loop.header.120:                                  ; preds = %loop.latch.120, %choice.then182
  %counter.load186 = load i64, ptr %loop.idx.120, align 8
  br label %loop.body.120

loop.body.120:                                    ; preds = %loop.header.120
  %loop.rel.i187 = sub i64 %counter.load186, 0
  store i64 1, ptr %loop.step.120, align 8
  store i64 %loop.rel.i187, ptr %var._i188, align 8
  store i64 %counter.load186, ptr %var._189, align 8
  %var.load190 = load i64, ptr %"var.p2'", align 8
  %var.load191 = load ptr, ptr %var.sc, align 8
  %fld.gep192 = getelementptr inbounds { ptr, i64 }, ptr %var.load191, i32 0, i32 0
  %fld.load193 = load ptr, ptr %fld.gep192, align 8
  %str.len.query194 = getelementptr inbounds { i64, ptr }, ptr %fld.load193, i32 0, i32 0
  %str.len.query195 = load i64, ptr %str.len.query194, align 8
  %str.len.query196 = and i64 %str.len.query195, 281474976710655
  %cmptmp197 = icmp sge i64 %var.load190, %str.len.query196
  br i1 %cmptmp197, label %choice.then198, label %choice.exit199

loop.exit.nat.120:                                ; No predecessors!
  br label %loop.exit.120

loop.latch.120:                                   ; preds = %choice.exit226
  %step.val254 = load i64, ptr %loop.step.120, align 8
  %loop.next255 = add i64 %counter.load186, %step.val254
  store i64 %loop.next255, ptr %loop.idx.120, align 8
  br label %loop.header.120

loop.exit.120:                                    ; preds = %choice.else225, %choice.then198, %loop.exit.nat.120
  br label %choice.exit183

choice.then198:                                   ; preds = %loop.body.120
  br label %loop.exit.120

choice.exit199:                                   ; preds = %loop.body.120
  %var.load200 = load ptr, ptr %var.sc, align 8
  %fld.gep201 = getelementptr inbounds { ptr, i64 }, ptr %var.load200, i32 0, i32 0
  %fld.load202 = load ptr, ptr %fld.gep201, align 8
  %s.read.len203 = getelementptr inbounds { i64, ptr }, ptr %fld.load202, i32 0, i32 0
  %s.read.len204 = load i64, ptr %s.read.len203, align 8
  %s.read.len205 = and i64 %s.read.len204, 281474976710655
  %s.read.data206 = getelementptr inbounds { i64, ptr }, ptr %fld.load202, i32 0, i32 1
  %s.read.data207 = load ptr, ptr %s.read.data206, align 8
  %var.load208 = load i64, ptr %"var.p2'", align 8
  %idx.oob209 = icmp uge i64 %var.load208, %s.read.len205
  br i1 %idx.oob209, label %idx_oob211, label %idx_ok210

idx_ok210:                                        ; preds = %abort.dead212, %choice.exit199
  %s.byte.gep213 = getelementptr i8, ptr %s.read.data207, i64 %var.load208
  %s.byte214 = load i8, ptr %s.byte.gep213, align 1
  %s.byte.val215 = zext i8 %s.byte214 to i64
  store i64 %s.byte.val215, ptr %var.c216, align 8
  %var.load217 = load i64, ptr %var.c216, align 8
  %cmptmp221 = icmp sge i64 %var.load217, 48
  br i1 %cmptmp221, label %and.121.then, label %and.121.else

idx_oob211:                                       ; preds = %choice.exit199
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead212:                                    ; No predecessors!
  br label %idx_ok210

choice.exit218:                                   ; preds = %choice.next220, %choice.case219
  %choice.res223 = phi i1 [ true, %choice.case219 ], [ false, %choice.next220 ]
  br i1 %choice.res223, label %choice.then224, label %choice.else225

choice.case219:                                   ; preds = %and.121.exit
  br label %choice.exit218

choice.next220:                                   ; preds = %and.121.exit
  br label %choice.exit218

and.121.then:                                     ; preds = %idx_ok210
  %cmptmp222 = icmp sle i64 %var.load217, 57
  br label %and.121.exit

and.121.else:                                     ; preds = %idx_ok210
  br label %and.121.exit

and.121.exit:                                     ; preds = %and.121.else, %and.121.then
  %and.121.phi = phi i1 [ %cmptmp222, %and.121.then ], [ %cmptmp221, %and.121.else ]
  br i1 %and.121.phi, label %choice.case219, label %choice.next220

choice.then224:                                   ; preds = %choice.exit218
  store i1 true, ptr %"var.had_frac'", align 1
  %var.load227 = load i64, ptr %var.c216, align 8
  %subtmp228 = sub i64 %var.load227, 48
  store i64 %subtmp228, ptr %var.d229, align 8
  %var.load230 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp231 = icmp eq i64 %var.load230, 0
  br i1 %cmptmp231, label %and.122.then, label %and.122.else

choice.else225:                                   ; preds = %choice.exit218
  br label %loop.exit.120

choice.exit226:                                   ; preds = %choice.exit236
  br label %loop.latch.120

and.122.then:                                     ; preds = %choice.then224
  %var.load232 = load i64, ptr %var.d229, align 8
  %cmptmp233 = icmp eq i64 %var.load232, 0
  br label %and.122.exit

and.122.else:                                     ; preds = %choice.then224
  br label %and.122.exit

and.122.exit:                                     ; preds = %and.122.else, %and.122.then
  %and.122.phi = phi i1 [ %cmptmp233, %and.122.then ], [ %cmptmp231, %and.122.else ]
  br i1 %and.122.phi, label %choice.then234, label %choice.else235

choice.then234:                                   ; preds = %and.122.exit
  %var.load237 = load i64, ptr %"var.exp10'", align 8
  %subtmp238 = sub i64 %var.load237, 1
  store i64 %subtmp238, ptr %"var.exp10'", align 8
  br label %choice.exit236

choice.else235:                                   ; preds = %and.122.exit
  %var.load239 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp240 = icmp slt i64 %var.load239, 17
  br i1 %cmptmp240, label %choice.then241, label %choice.exit242

choice.exit236:                                   ; preds = %choice.exit242, %choice.then234
  %var.load252 = load i64, ptr %"var.p2'", align 8
  %addtmp253 = add i64 %var.load252, 1
  store i64 %addtmp253, ptr %"var.p2'", align 8
  br label %choice.exit226

choice.then241:                                   ; preds = %choice.else235
  %var.load243 = load double, ptr %"var.fv'", align 8
  %fmultmp244 = fmul double %var.load243, 1.000000e+01
  %var.load245 = load i64, ptr %var.d229, align 8
  %cast.sitofp246 = sitofp i64 %var.load245 to double
  %faddtmp247 = fadd double %fmultmp244, %cast.sitofp246
  store double %faddtmp247, ptr %"var.fv'", align 8
  %var.load248 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp249 = add i64 %var.load248, 1
  store i64 %addtmp249, ptr %"var.sig_digits'", align 8
  %var.load250 = load i64, ptr %"var.exp10'", align 8
  %subtmp251 = sub i64 %var.load250, 1
  store i64 %subtmp251, ptr %"var.exp10'", align 8
  br label %choice.exit242

choice.exit242:                                   ; preds = %choice.then241, %choice.else235
  br label %choice.exit236

str_ok264:                                        ; preds = %tag.slow_check269, %choice.exit183
  %cmptmp270 = icmp slt i64 %var.load256, %str.len.query262
  br i1 %cmptmp270, label %and.123.then, label %and.123.else

tag.slow_check269:                                ; preds = %choice.exit183
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag263)
  br label %str_ok264

and.123.then:                                     ; preds = %str_ok264
  %var.load271 = load ptr, ptr %var.sc, align 8
  %fld.gep272 = getelementptr inbounds { ptr, i64 }, ptr %var.load271, i32 0, i32 0
  %fld.load273 = load ptr, ptr %fld.gep272, align 8
  %s.read.len274 = getelementptr inbounds { i64, ptr }, ptr %fld.load273, i32 0, i32 0
  %s.read.len275 = load i64, ptr %s.read.len274, align 8
  %s.read.len276 = and i64 %s.read.len275, 281474976710655
  %s.read.data277 = getelementptr inbounds { i64, ptr }, ptr %fld.load273, i32 0, i32 1
  %s.read.data278 = load ptr, ptr %s.read.data277, align 8
  %var.load279 = load i64, ptr %"var.p2'", align 8
  %idx.oob280 = icmp uge i64 %var.load279, %s.read.len276
  br i1 %idx.oob280, label %idx_oob282, label %idx_ok281

and.123.else:                                     ; preds = %str_ok264
  br label %and.123.exit

and.123.exit:                                     ; preds = %and.123.else, %choice.exit287
  %and.123.phi = phi i1 [ %choice.res293, %choice.exit287 ], [ %cmptmp270, %and.123.else ]
  store i1 %and.123.phi, ptr %var.has_exp, align 1
  store i1 false, ptr %"var.had_exp'", align 1
  %var.load294 = load i1, ptr %var.has_exp, align 1
  br i1 %var.load294, label %choice.then295, label %choice.exit296

idx_ok281:                                        ; preds = %abort.dead283, %and.123.then
  %s.byte.gep284 = getelementptr i8, ptr %s.read.data278, i64 %var.load279
  %s.byte285 = load i8, ptr %s.byte.gep284, align 1
  %s.byte.val286 = zext i8 %s.byte285 to i64
  %val.match290 = icmp eq i64 %s.byte.val286, 101
  %val.match291 = icmp eq i64 %s.byte.val286, 69
  %case.or292 = or i1 %val.match290, %val.match291
  br i1 %case.or292, label %choice.case288, label %choice.next289

idx_oob282:                                       ; preds = %and.123.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead283:                                    ; No predecessors!
  br label %idx_ok281

choice.exit287:                                   ; preds = %choice.next289, %choice.case288
  %choice.res293 = phi i1 [ true, %choice.case288 ], [ false, %choice.next289 ]
  br label %and.123.exit

choice.case288:                                   ; preds = %idx_ok281
  br label %choice.exit287

choice.next289:                                   ; preds = %idx_ok281
  br label %choice.exit287

choice.then295:                                   ; preds = %and.123.exit
  %var.load297 = load i64, ptr %"var.p2'", align 8
  %addtmp298 = add i64 %var.load297, 1
  store i64 %addtmp298, ptr %"var.p3'", align 8
  store i1 false, ptr %"var.eneg'", align 1
  %var.load299 = load i64, ptr %"var.p3'", align 8
  %var.load303 = load ptr, ptr %var.sc, align 8
  %fld.gep304 = getelementptr inbounds { ptr, i64 }, ptr %var.load303, i32 0, i32 0
  %fld.load305 = load ptr, ptr %fld.gep304, align 8
  %str.len.query306 = getelementptr inbounds { i64, ptr }, ptr %fld.load305, i32 0, i32 0
  %str.len.query307 = load i64, ptr %str.len.query306, align 8
  %str.len.query308 = and i64 %str.len.query307, 281474976710655
  %str.tag309 = lshr i64 %str.len.query307, 48
  %tag.immortal311 = icmp eq i64 %str.tag309, 0
  %active.gen312 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current313 = icmp eq i64 %str.tag309, %active.gen312
  %tag.fast.ok314 = or i1 %tag.immortal311, %tag.current313
  br i1 %tag.fast.ok314, label %str_ok310, label %tag.slow_check315

choice.exit296:                                   ; preds = %choice.exit413, %and.123.exit
  %var.load421 = load double, ptr %"var.fv'", align 8
  %fcmptmp = fcmp une double %var.load421, 0.000000e+00
  br i1 %fcmptmp, label %choice.then422, label %choice.exit423

choice.exit300:                                   ; preds = %choice.next302, %idx_ok327
  %choice.res333 = phi i64 [ %s.byte.val332, %idx_ok327 ], [ -1, %choice.next302 ]
  store i64 %choice.res333, ptr %var.e0, align 8
  %var.load334 = load i64, ptr %var.e0, align 8
  %val.match338 = icmp eq i64 %var.load334, 45
  br i1 %val.match338, label %choice.case336, label %choice.next337

choice.case301:                                   ; preds = %str_ok310
  %var.load317 = load ptr, ptr %var.sc, align 8
  %fld.gep318 = getelementptr inbounds { ptr, i64 }, ptr %var.load317, i32 0, i32 0
  %fld.load319 = load ptr, ptr %fld.gep318, align 8
  %s.read.len320 = getelementptr inbounds { i64, ptr }, ptr %fld.load319, i32 0, i32 0
  %s.read.len321 = load i64, ptr %s.read.len320, align 8
  %s.read.len322 = and i64 %s.read.len321, 281474976710655
  %s.read.data323 = getelementptr inbounds { i64, ptr }, ptr %fld.load319, i32 0, i32 1
  %s.read.data324 = load ptr, ptr %s.read.data323, align 8
  %var.load325 = load i64, ptr %"var.p3'", align 8
  %idx.oob326 = icmp uge i64 %var.load325, %s.read.len322
  br i1 %idx.oob326, label %idx_oob328, label %idx_ok327

choice.next302:                                   ; preds = %str_ok310
  br label %choice.exit300

str_ok310:                                        ; preds = %tag.slow_check315, %choice.then295
  %cmptmp316 = icmp slt i64 %var.load299, %str.len.query308
  br i1 %cmptmp316, label %choice.case301, label %choice.next302

tag.slow_check315:                                ; preds = %choice.then295
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag309)
  br label %str_ok310

idx_ok327:                                        ; preds = %abort.dead329, %choice.case301
  %s.byte.gep330 = getelementptr i8, ptr %s.read.data324, i64 %var.load325
  %s.byte331 = load i8, ptr %s.byte.gep330, align 1
  %s.byte.val332 = zext i8 %s.byte331 to i64
  br label %choice.exit300

idx_oob328:                                       ; preds = %choice.case301
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead329:                                    ; No predecessors!
  br label %idx_ok327

choice.exit335:                                   ; preds = %choice.next337, %choice.case336
  %var.load341 = load i64, ptr %var.e0, align 8
  %cmptmp342 = icmp eq i64 %var.load341, 43
  store i1 %cmptmp342, ptr %var.plus, align 1
  %var.load343 = load i1, ptr %var.plus, align 1
  br i1 %var.load343, label %choice.then344, label %choice.exit345

choice.case336:                                   ; preds = %choice.exit300
  store i1 true, ptr %"var.eneg'", align 1
  %var.load339 = load i64, ptr %"var.p3'", align 8
  %addtmp340 = add i64 %var.load339, 1
  store i64 %addtmp340, ptr %"var.p3'", align 8
  br label %choice.exit335

choice.next337:                                   ; preds = %choice.exit300
  br label %choice.exit335

choice.then344:                                   ; preds = %choice.exit335
  %var.load346 = load i64, ptr %"var.p3'", align 8
  %addtmp347 = add i64 %var.load346, 1
  store i64 %addtmp347, ptr %"var.p3'", align 8
  br label %choice.exit345

choice.exit345:                                   ; preds = %choice.then344, %choice.exit335
  store i64 0, ptr %"var.ev'", align 8
  store i1 false, ptr %"var.over_exp'", align 1
  store i1 false, ptr %"var.had_exp_digits'", align 1
  store i64 0, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.header.124:                                  ; preds = %loop.latch.124, %choice.exit345
  %counter.load348 = load i64, ptr %loop.idx.124, align 8
  br label %loop.body.124

loop.body.124:                                    ; preds = %loop.header.124
  %loop.rel.i349 = sub i64 %counter.load348, 0
  store i64 1, ptr %loop.step.124, align 8
  store i64 %loop.rel.i349, ptr %var._i350, align 8
  store i64 %counter.load348, ptr %var._351, align 8
  %var.load352 = load i64, ptr %"var.p3'", align 8
  %var.load353 = load ptr, ptr %var.sc, align 8
  %fld.gep354 = getelementptr inbounds { ptr, i64 }, ptr %var.load353, i32 0, i32 0
  %fld.load355 = load ptr, ptr %fld.gep354, align 8
  %str.len.query356 = getelementptr inbounds { i64, ptr }, ptr %fld.load355, i32 0, i32 0
  %str.len.query357 = load i64, ptr %str.len.query356, align 8
  %str.len.query358 = and i64 %str.len.query357, 281474976710655
  %cmptmp359 = icmp sge i64 %var.load352, %str.len.query358
  br i1 %cmptmp359, label %choice.then360, label %choice.exit361

loop.exit.nat.124:                                ; No predecessors!
  br label %loop.exit.124

loop.latch.124:                                   ; preds = %choice.exit387
  %step.val400 = load i64, ptr %loop.step.124, align 8
  %loop.next401 = add i64 %counter.load348, %step.val400
  store i64 %loop.next401, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.exit.124:                                    ; preds = %choice.else386, %choice.then360, %loop.exit.nat.124
  %var.load402 = load i1, ptr %"var.had_exp_digits'", align 1
  store i1 %var.load402, ptr %"var.had_exp'", align 1
  %var.load403 = load i64, ptr %"var.p3'", align 8
  store i64 %var.load403, ptr %"var.p2'", align 8
  %var.load404 = load i1, ptr %"var.over_exp'", align 1
  br i1 %var.load404, label %choice.then405, label %choice.else406

choice.then360:                                   ; preds = %loop.body.124
  br label %loop.exit.124

choice.exit361:                                   ; preds = %loop.body.124
  %var.load362 = load ptr, ptr %var.sc, align 8
  %fld.gep363 = getelementptr inbounds { ptr, i64 }, ptr %var.load362, i32 0, i32 0
  %fld.load364 = load ptr, ptr %fld.gep363, align 8
  %s.read.len365 = getelementptr inbounds { i64, ptr }, ptr %fld.load364, i32 0, i32 0
  %s.read.len366 = load i64, ptr %s.read.len365, align 8
  %s.read.len367 = and i64 %s.read.len366, 281474976710655
  %s.read.data368 = getelementptr inbounds { i64, ptr }, ptr %fld.load364, i32 0, i32 1
  %s.read.data369 = load ptr, ptr %s.read.data368, align 8
  %var.load370 = load i64, ptr %"var.p3'", align 8
  %idx.oob371 = icmp uge i64 %var.load370, %s.read.len367
  br i1 %idx.oob371, label %idx_oob373, label %idx_ok372

idx_ok372:                                        ; preds = %abort.dead374, %choice.exit361
  %s.byte.gep375 = getelementptr i8, ptr %s.read.data369, i64 %var.load370
  %s.byte376 = load i8, ptr %s.byte.gep375, align 1
  %s.byte.val377 = zext i8 %s.byte376 to i64
  store i64 %s.byte.val377, ptr %var.ec, align 8
  %var.load378 = load i64, ptr %var.ec, align 8
  %cmptmp382 = icmp sge i64 %var.load378, 48
  br i1 %cmptmp382, label %and.125.then, label %and.125.else

idx_oob373:                                       ; preds = %choice.exit361
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead374:                                    ; No predecessors!
  br label %idx_ok372

choice.exit379:                                   ; preds = %choice.next381, %choice.case380
  %choice.res384 = phi i1 [ true, %choice.case380 ], [ false, %choice.next381 ]
  br i1 %choice.res384, label %choice.then385, label %choice.else386

choice.case380:                                   ; preds = %and.125.exit
  br label %choice.exit379

choice.next381:                                   ; preds = %and.125.exit
  br label %choice.exit379

and.125.then:                                     ; preds = %idx_ok372
  %cmptmp383 = icmp sle i64 %var.load378, 57
  br label %and.125.exit

and.125.else:                                     ; preds = %idx_ok372
  br label %and.125.exit

and.125.exit:                                     ; preds = %and.125.else, %and.125.then
  %and.125.phi = phi i1 [ %cmptmp383, %and.125.then ], [ %cmptmp382, %and.125.else ]
  br i1 %and.125.phi, label %choice.case380, label %choice.next381

choice.then385:                                   ; preds = %choice.exit379
  store i1 true, ptr %"var.had_exp_digits'", align 1
  %var.load388 = load i64, ptr %var.ec, align 8
  %subtmp389 = sub i64 %var.load388, 48
  store i64 %subtmp389, ptr %var.ed, align 8
  %var.load390 = load i64, ptr %"var.ev'", align 8
  %cmptmp391 = icmp sgt i64 %var.load390, 1000000
  br i1 %cmptmp391, label %choice.then392, label %choice.else393

choice.else386:                                   ; preds = %choice.exit379
  br label %loop.exit.124

choice.exit387:                                   ; preds = %choice.exit394
  br label %loop.latch.124

choice.then392:                                   ; preds = %choice.then385
  store i1 true, ptr %"var.over_exp'", align 1
  br label %choice.exit394

choice.else393:                                   ; preds = %choice.then385
  %var.load395 = load i64, ptr %"var.ev'", align 8
  %multmp = mul i64 %var.load395, 10
  %var.load396 = load i64, ptr %var.ed, align 8
  %addtmp397 = add i64 %multmp, %var.load396
  store i64 %addtmp397, ptr %"var.ev'", align 8
  br label %choice.exit394

choice.exit394:                                   ; preds = %choice.else393, %choice.then392
  %var.load398 = load i64, ptr %"var.p3'", align 8
  %addtmp399 = add i64 %var.load398, 1
  store i64 %addtmp399, ptr %"var.p3'", align 8
  br label %choice.exit387

choice.then405:                                   ; preds = %loop.exit.124
  br label %choice.exit407

choice.else406:                                   ; preds = %loop.exit.124
  %var.load408 = load i64, ptr %"var.ev'", align 8
  br label %choice.exit407

choice.exit407:                                   ; preds = %choice.else406, %choice.then405
  %choice.res409 = phi i64 [ 1000000, %choice.then405 ], [ %var.load408, %choice.else406 ]
  store i64 %choice.res409, ptr %var.exp_val, align 8
  %var.load410 = load i1, ptr %"var.eneg'", align 1
  br i1 %var.load410, label %choice.then411, label %choice.else412

choice.then411:                                   ; preds = %choice.exit407
  %var.load414 = load i64, ptr %"var.exp10'", align 8
  %var.load415 = load i64, ptr %var.exp_val, align 8
  %subtmp416 = sub i64 %var.load414, %var.load415
  br label %choice.exit413

choice.else412:                                   ; preds = %choice.exit407
  %var.load417 = load i64, ptr %"var.exp10'", align 8
  %var.load418 = load i64, ptr %var.exp_val, align 8
  %addtmp419 = add i64 %var.load417, %var.load418
  br label %choice.exit413

choice.exit413:                                   ; preds = %choice.else412, %choice.then411
  %choice.res420 = phi i64 [ %subtmp416, %choice.then411 ], [ %addtmp419, %choice.else412 ]
  store i64 %choice.res420, ptr %"var.exp10'", align 8
  br label %choice.exit296

choice.then422:                                   ; preds = %choice.exit296
  %var.load424 = load i64, ptr %"var.exp10'", align 8
  %cmptmp425 = icmp slt i64 %var.load424, -400
  br i1 %cmptmp425, label %choice.then426, label %choice.else427

choice.exit423:                                   ; preds = %loop.exit.126, %choice.exit296
  %var.load462 = load i1, ptr %"var.had_int'", align 1
  br i1 %var.load462, label %and.127.then, label %and.127.else

choice.then426:                                   ; preds = %choice.then422
  br label %choice.exit428

choice.else427:                                   ; preds = %choice.then422
  %var.load429 = load i64, ptr %"var.exp10'", align 8
  %cmptmp430 = icmp sgt i64 %var.load429, 400
  br i1 %cmptmp430, label %choice.then431, label %choice.else432

choice.exit428:                                   ; preds = %choice.exit433, %choice.then426
  %choice.res436 = phi i64 [ -400, %choice.then426 ], [ %choice.res435, %choice.exit433 ]
  store i64 %choice.res436, ptr %var.eclamp, align 8
  %var.load437 = load i64, ptr %var.eclamp, align 8
  %cmptmp438 = icmp slt i64 %var.load437, 0
  br i1 %cmptmp438, label %choice.then439, label %choice.else440

choice.then431:                                   ; preds = %choice.else427
  br label %choice.exit433

choice.else432:                                   ; preds = %choice.else427
  %var.load434 = load i64, ptr %"var.exp10'", align 8
  br label %choice.exit433

choice.exit433:                                   ; preds = %choice.else432, %choice.then431
  %choice.res435 = phi i64 [ 400, %choice.then431 ], [ %var.load434, %choice.else432 ]
  br label %choice.exit428

choice.then439:                                   ; preds = %choice.exit428
  %var.load442 = load i64, ptr %var.eclamp, align 8
  %subtmp443 = sub i64 0, %var.load442
  br label %choice.exit441

choice.else440:                                   ; preds = %choice.exit428
  %var.load444 = load i64, ptr %var.eclamp, align 8
  br label %choice.exit441

choice.exit441:                                   ; preds = %choice.else440, %choice.then439
  %choice.res445 = phi i64 [ %subtmp443, %choice.then439 ], [ %var.load444, %choice.else440 ]
  store i64 %choice.res445, ptr %var.abs_e, align 8
  %var.load446 = load i64, ptr %var.abs_e, align 8
  store i64 0, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.header.126:                                  ; preds = %loop.latch.126, %choice.exit441
  %counter.load447 = load i64, ptr %loop.idx.126, align 8
  %loop.cond = icmp slt i64 %counter.load447, %var.load446
  br i1 %loop.cond, label %loop.body.126, label %loop.exit.nat.126

loop.body.126:                                    ; preds = %loop.header.126
  %loop.rel.i448 = sub i64 %counter.load447, 0
  store i64 1, ptr %loop.step.126, align 8
  store i64 %loop.rel.i448, ptr %var._i449, align 8
  store i64 %counter.load447, ptr %var._450, align 8
  %var.load451 = load i64, ptr %var.eclamp, align 8
  %cmptmp452 = icmp slt i64 %var.load451, 0
  br i1 %cmptmp452, label %choice.then453, label %choice.else454

loop.exit.nat.126:                                ; preds = %loop.header.126
  br label %loop.exit.126

loop.latch.126:                                   ; preds = %choice.exit455
  %step.val460 = load i64, ptr %loop.step.126, align 8
  %loop.next461 = add i64 %counter.load447, %step.val460
  store i64 %loop.next461, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.exit.126:                                    ; preds = %loop.exit.nat.126
  br label %choice.exit423

choice.then453:                                   ; preds = %loop.body.126
  %var.load456 = load double, ptr %"var.fv'", align 8
  %fdivtmp = fdiv double %var.load456, 1.000000e+01
  br label %choice.exit455

choice.else454:                                   ; preds = %loop.body.126
  %var.load457 = load double, ptr %"var.fv'", align 8
  %fmultmp458 = fmul double %var.load457, 1.000000e+01
  br label %choice.exit455

choice.exit455:                                   ; preds = %choice.else454, %choice.then453
  %choice.res459 = phi double [ %fdivtmp, %choice.then453 ], [ %fmultmp458, %choice.else454 ]
  store double %choice.res459, ptr %"var.fv'", align 8
  br label %loop.latch.126

and.127.then:                                     ; preds = %choice.exit423
  %var.load463 = load i1, ptr %var.has_dot, align 1
  %nottmp = xor i1 %var.load463, true
  br i1 %nottmp, label %or.128.then, label %or.128.else

and.127.else:                                     ; preds = %choice.exit423
  br label %and.127.exit

and.127.exit:                                     ; preds = %and.127.else, %or.128.exit
  %and.127.phi = phi i1 [ %or.128.phi, %or.128.exit ], [ %var.load462, %and.127.else ]
  br i1 %and.127.phi, label %and.129.then, label %and.129.else

or.128.then:                                      ; preds = %and.127.then
  br label %or.128.exit

or.128.else:                                      ; preds = %and.127.then
  %var.load464 = load i1, ptr %"var.had_frac'", align 1
  br label %or.128.exit

or.128.exit:                                      ; preds = %or.128.else, %or.128.then
  %or.128.phi = phi i1 [ %nottmp, %or.128.then ], [ %var.load464, %or.128.else ]
  br label %and.127.exit

and.129.then:                                     ; preds = %and.127.exit
  %var.load465 = load i1, ptr %var.has_exp, align 1
  %nottmp466 = xor i1 %var.load465, true
  br i1 %nottmp466, label %or.130.then, label %or.130.else

and.129.else:                                     ; preds = %and.127.exit
  br label %and.129.exit

and.129.exit:                                     ; preds = %and.129.else, %or.130.exit
  %and.129.phi = phi i1 [ %or.130.phi, %or.130.exit ], [ %and.127.phi, %and.129.else ]
  store i1 %and.129.phi, ptr %var.valid, align 1
  %var.load468 = load i1, ptr %var.valid, align 1
  br i1 %var.load468, label %choice.then469, label %choice.else470

or.130.then:                                      ; preds = %and.129.then
  br label %or.130.exit

or.130.else:                                      ; preds = %and.129.then
  %var.load467 = load i1, ptr %"var.had_exp'", align 1
  br label %or.130.exit

or.130.exit:                                      ; preds = %or.130.else, %or.130.then
  %or.130.phi = phi i1 [ %nottmp466, %or.130.then ], [ %var.load467, %or.130.else ]
  br label %and.129.exit

choice.then469:                                   ; preds = %and.129.exit
  %var.load472 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load472, label %choice.then473, label %choice.else474

choice.else470:                                   ; preds = %and.129.exit
  %arena.cur487 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc488 = call ptr @dva_arena_alloc(ptr %arena.cur487, i64 56)
  %err.code.gep489 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 0
  store i64 400, ptr %err.code.gep489, align 8
  %err.msg.gep490 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep490, align 8
  %err.file.gep491 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep491, align 8
  %err.line.gep492 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 3
  store i64 0, ptr %err.line.gep492, align 8
  %err.col.gep493 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 4
  store i64 0, ptr %err.col.gep493, align 8
  %err.ctx.gep494 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc488, i32 0, i32 5
  %var.load495 = load i64, ptr %"var.p'", align 8
  %arena.cur496 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc497 = call ptr @dva_arena_alloc(ptr %arena.cur496, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld498 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc497, i32 0, i32 0
  store i64 %var.load495, ptr %rec.fld498, align 8
  %rec.fld499 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc497, i32 0, i32 1
  store i64 0, ptr %rec.fld499, align 8
  %ctx.0.gep500 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc497, i32 0, i32 0
  %ctx.0501 = load i64, ptr %ctx.0.gep500, align 8
  %ctx.1.gep502 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc497, i32 0, i32 1
  %ctx.1503 = load i64, ptr %ctx.1.gep502, align 8
  %err.ctx0.gep504 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep494, i32 0, i32 0
  store i64 %ctx.0501, ptr %err.ctx0.gep504, align 8
  %err.ctx1.gep505 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep494, i32 0, i32 1
  store i64 %ctx.1503, ptr %err.ctx1.gep505, align 8
  %p.to.i64506 = ptrtoint ptr %err.alloc488 to i64
  %ram.pay507 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64506, 1
  br label %choice.exit471

choice.exit471:                                   ; preds = %choice.else470, %choice.exit475
  %choice.res508 = phi { i1, i64 } [ %ram.pay486, %choice.exit475 ], [ %ram.pay507, %choice.else470 ]
  br label %choice.exit88

choice.then473:                                   ; preds = %choice.then469
  %var.load476 = load double, ptr %"var.fv'", align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load476
  br label %choice.exit475

choice.else474:                                   ; preds = %choice.then469
  %var.load477 = load double, ptr %"var.fv'", align 8
  br label %choice.exit475

choice.exit475:                                   ; preds = %choice.else474, %choice.then473
  %choice.res478 = phi double [ %fsubtmp, %choice.then473 ], [ %var.load477, %choice.else474 ]
  store double %choice.res478, ptr %var.f, align 8
  %var.load479 = load ptr, ptr %var.sc, align 8
  %var.load480 = load i64, ptr %"var.p2'", align 8
  %fld.gep481 = getelementptr inbounds { ptr, i64 }, ptr %var.load479, i32 0, i32 1
  store i64 %var.load480, ptr %fld.gep481, align 8
  %arena.cur482 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur482, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load483 = load double, ptr %var.f, align 8
  %arena.cur484 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store double %var.load483, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64485 = ptrtoint ptr %enum.alloc to i64
  %ram.pay486 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64485, 1
  br label %choice.exit471
}

define internal { i1, i64 } @"json::#parse_array_after_value"(ptr %0, ptr %1, { i1, i64 } %2) #0 {
entry:
  %var.e = alloca ptr, align 8
  %var._173 = alloca ptr, align 8
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
  %ram.pay171 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr172 = inttoptr i64 %ram.pay171 to ptr
  store ptr %pay.ptr172, ptr %var._173, align 8
  store ptr %pay.ptr172, ptr %var.e, align 8
  %var.load174 = load ptr, ptr %var.e, align 8
  %p.to.i64175 = ptrtoint ptr %var.load174 to i64
  %ram.pay176 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64175, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit28
  %choice.res177 = phi { i1, i64 } [ %choice.res170, %choice.exit28 ], [ %ram.pay176, %choice.else ]
  ret { i1, i64 } %choice.res177

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
  %str.tag = lshr i64 %str.len.query18, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit14:                                    ; preds = %choice.next, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.next ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load27 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load27, 93
  br i1 %val.match, label %choice.case29, label %choice.next30

choice.case:                                      ; preds = %str_ok
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

choice.next:                                      ; preds = %str_ok
  br label %choice.exit14

str_ok:                                           ; preds = %tag.slow_check, %a.store
  %cmptmp = icmp slt i64 %var.load13, %str.len.query19
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %a.store
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

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

choice.exit28:                                    ; preds = %choice.next74, %choice.exit123, %a.view.off68
  %choice.res170 = phi { i1, i64 } [ %ram.pay72, %a.view.off68 ], [ %choice.res148, %choice.exit123 ], [ %ram.pay169, %choice.next74 ]
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
  %str.tag97 = lshr i64 %str.len.query95, 48
  %tag.immortal99 = icmp eq i64 %str.tag97, 0
  %active.gen100 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current101 = icmp eq i64 %str.tag97, %active.gen100
  %tag.fast.ok102 = or i1 %tag.immortal99, %tag.current101
  br i1 %tag.fast.ok102, label %str_ok98, label %tag.slow_check103

choice.next74:                                    ; preds = %choice.next30
  %arena.cur149 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 56)
  %err.code.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 0
  store i64 400, ptr %err.code.gep151, align 8
  %err.msg.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep152, align 8
  %err.file.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep153, align 8
  %err.line.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 3
  store i64 0, ptr %err.line.gep154, align 8
  %err.col.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 4
  store i64 0, ptr %err.col.gep155, align 8
  %err.ctx.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc150, i32 0, i32 5
  %var.load157 = load i64, ptr %var.p, align 8
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld160 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc159, i32 0, i32 0
  store i64 %var.load157, ptr %rec.fld160, align 8
  %rec.fld161 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc159, i32 0, i32 1
  store i64 0, ptr %rec.fld161, align 8
  %ctx.0.gep162 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc159, i32 0, i32 0
  %ctx.0163 = load i64, ptr %ctx.0.gep162, align 8
  %ctx.1.gep164 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc159, i32 0, i32 1
  %ctx.1165 = load i64, ptr %ctx.1.gep164, align 8
  %err.ctx0.gep166 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep156, i32 0, i32 0
  store i64 %ctx.0163, ptr %err.ctx0.gep166, align 8
  %err.ctx1.gep167 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep156, i32 0, i32 1
  store i64 %ctx.1165, ptr %err.ctx1.gep167, align 8
  %p.to.i64168 = ptrtoint ptr %err.alloc150 to i64
  %ram.pay169 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64168, 1
  br label %choice.exit28

choice.exit88:                                    ; preds = %choice.next90, %idx_ok115
  %choice.res121 = phi i64 [ %s.byte.val120, %idx_ok115 ], [ -1, %choice.next90 ]
  store i64 %choice.res121, ptr %var.c2, align 8
  %var.load122 = load i64, ptr %var.c2, align 8
  %val.match126 = icmp eq i64 %var.load122, 93
  br i1 %val.match126, label %choice.case124, label %choice.next125

choice.case89:                                    ; preds = %str_ok98
  %var.load105 = load ptr, ptr %var.sc, align 8
  %fld.gep106 = getelementptr inbounds { ptr, i64 }, ptr %var.load105, i32 0, i32 0
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  %s.read.len108 = getelementptr inbounds { i64, ptr }, ptr %fld.load107, i32 0, i32 0
  %s.read.len109 = load i64, ptr %s.read.len108, align 8
  %s.read.len110 = and i64 %s.read.len109, 281474976710655
  %s.read.data111 = getelementptr inbounds { i64, ptr }, ptr %fld.load107, i32 0, i32 1
  %s.read.data112 = load ptr, ptr %s.read.data111, align 8
  %var.load113 = load i64, ptr %var.p2, align 8
  %idx.oob114 = icmp uge i64 %var.load113, %s.read.len110
  br i1 %idx.oob114, label %idx_oob116, label %idx_ok115

choice.next90:                                    ; preds = %str_ok98
  br label %choice.exit88

str_ok98:                                         ; preds = %tag.slow_check103, %choice.case73
  %cmptmp104 = icmp slt i64 %var.load87, %str.len.query96
  br i1 %cmptmp104, label %choice.case89, label %choice.next90

tag.slow_check103:                                ; preds = %choice.case73
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag97)
  br label %str_ok98

idx_ok115:                                        ; preds = %abort.dead117, %choice.case89
  %s.byte.gep118 = getelementptr i8, ptr %s.read.data112, i64 %var.load113
  %s.byte119 = load i8, ptr %s.byte.gep118, align 1
  %s.byte.val120 = zext i8 %s.byte119 to i64
  br label %choice.exit88

idx_oob116:                                       ; preds = %choice.case89
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead117:                                    ; No predecessors!
  br label %idx_ok115

choice.exit123:                                   ; preds = %a.after138, %choice.case124
  %choice.res148 = phi { i1, i64 } [ %ram.pay132, %choice.case124 ], [ %call.res147, %a.after138 ]
  br label %choice.exit28

choice.case124:                                   ; preds = %choice.exit88
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 56)
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
  %var.load128 = load i64, ptr %var.p2, align 8
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load128, ptr %rec.fld, align 8
  %rec.fld130 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld130, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64131 = ptrtoint ptr %err.alloc to i64
  %ram.pay132 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64131, 1
  br label %choice.exit123

choice.next125:                                   ; preds = %choice.exit88
  %var.load133 = load ptr, ptr %var.sc, align 8
  %var.load134 = load ptr, ptr %var.elems, align 8
  %a.load135 = load ptr, ptr %var.elems, align 8
  %a.null136 = icmp eq ptr %a.load135, null
  br i1 %a.null136, label %a.create137, label %a.after138

a.create137:                                      ; preds = %choice.next125
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 24)
  %arena.cur141 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 128)
  %a.len.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create140, i32 0, i32 0
  store i64 0, ptr %a.len.gep143, align 8
  %a.data.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create140, i32 0, i32 1
  store ptr %a.buf142, ptr %a.data.gep144, align 8
  %a.cap.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create140, i32 0, i32 2
  store i64 16, ptr %a.cap.gep145, align 8
  store ptr %a.create140, ptr %var.elems, align 8
  br label %a.after138

a.after138:                                       ; preds = %a.create137, %choice.next125
  %a.load2146 = load ptr, ptr %var.elems, align 8
  %call.res147 = call { i1, i64 } @"json::#parse_array_loop"(ptr %var.load133, ptr %a.load2146)
  br label %choice.exit123
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
  %str.tag = lshr i64 %str.len.query7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

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

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %cmptmp = icmp eq i64 %var.load3, %str.len.query8
  br i1 %cmptmp, label %choice.then9, label %choice.else10

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then9:                                     ; preds = %str_ok
  %var.load12 = load ptr, ptr %var.val, align 8
  %p.to.i64 = ptrtoint ptr %var.load12 to i64
  %ram.pay13 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit11

choice.else10:                                    ; preds = %str_ok
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
  %str.tag = lshr i64 %concat.rhs3, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %concat.rhs5 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %concat.rhs6 = load ptr, ptr %concat.rhs5, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len7

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

concat.sum.len7:                                  ; preds = %abort.dead, %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf9 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf9, label %str_overflow_abort11, label %concat.tot.len10

str_overflow_abort:                               ; preds = %str_ok
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
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query12 = load i64, ptr %str.len.query, align 8
  %str.len.query13 = and i64 %str.len.query12, 281474976710655
  %str.tag = lshr i64 %str.len.query12, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %br.done.131
  store i64 0, ptr %loop.idx.132, align 8
  br label %loop.header.132

tag.slow_check:                                   ; preds = %br.done.131
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %var.i, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %bandtmp = and i64 %s.byte.val, 255
  store i64 %bandtmp, ptr %var.c, align 8
  %var.load19 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load19, 34
  br i1 %val.match, label %choice.case, label %choice.next

loop.exit.nat.132:                                ; preds = %loop.header.132
  br label %loop.exit.132

loop.latch.132:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.132, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.132, align 8
  br label %loop.header.132

loop.exit.132:                                    ; preds = %loop.exit.nat.132
  %b.load529 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 0
  %b.rn.cur.len531 = load i64, ptr %b.rn.cur.len530, align 8
  %b.rn.new.len532 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len531, i64 1)
  %sum533 = extractvalue { i64, i1 } %b.rn.new.len532, 0
  %ovf534 = extractvalue { i64, i1 } %b.rn.new.len532, 1
  br i1 %ovf534, label %str_overflow_abort536, label %b.rn.new.len535

choice.exit:                                      ; preds = %b.push_done, %br.done.134, %b.grow_done306, %b.grow_done260, %b.grow_done214, %b.grow_done168, %b.grow_done122, %b.grow_done76, %b.grow_done33
  br label %loop.latch.132

choice.case:                                      ; preds = %loop.body.132
  %b.load20 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.26.struct, align 8
  %app.str.len21 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load20, i32 0, i32 0
  %b.app.cur.len22 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len22, i64 %app.str.len21)
  %sum23 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf24 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf24, label %str_overflow_abort26, label %b.app.new.len25

choice.next:                                      ; preds = %loop.body.132
  %val.match58 = icmp eq i64 %var.load19, 92
  br i1 %val.match58, label %choice.case56, label %choice.next57

b.app.new.len25:                                  ; preds = %abort.dead27, %choice.case
  %b.cap28 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load20, i32 0, i32 2
  %b.cap29 = load i64, ptr %b.cap28, align 8
  %b.need.grow30 = icmp slt i64 %b.cap29, %sum23
  br i1 %b.need.grow30, label %b.grow231, label %b.nogrow232

str_overflow_abort26:                             ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %b.app.new.len25

b.grow231:                                        ; preds = %b.app.new.len25
  %b.cap234 = mul i64 %b.cap29, 2
  %b.cap.small35 = icmp slt i64 %b.cap234, 16
  %b.cap.grow36 = select i1 %b.cap.small35, i64 16, i64 %b.cap234
  %b.cap.need37 = icmp slt i64 %b.cap.grow36, %sum23
  %b.new.cap38 = select i1 %b.cap.need37, i64 %sum23, i64 %b.cap.grow36
  %b.cur.len239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load20, i32 0, i32 0
  %b.cur.len240 = load i64, ptr %b.cur.len239, align 8
  %b.cur.data241 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load20, i32 0, i32 1
  %b.cur.data242 = load ptr, ptr %b.cur.data241, align 8
  %b.new.buf.len243 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap38, i64 1)
  %sum44 = extractvalue { i64, i1 } %b.new.buf.len243, 0
  %ovf45 = extractvalue { i64, i1 } %b.new.buf.len243, 1
  br i1 %ovf45, label %str_overflow_abort47, label %b.new.buf.len246

b.nogrow232:                                      ; preds = %b.app.new.len25
  br label %b.grow_done33

b.grow_done33:                                    ; preds = %b.nogrow232, %b.new.buf.len246
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load20, i32 0, i32 1
  %b.app.data54 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data54, i64 %b.app.cur.len22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len21, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data54, i64 %sum23
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load20, i32 0, i32 0
  store i64 %sum23, ptr %b.len.gep55, align 8
  br label %choice.exit

b.new.buf.len246:                                 ; preds = %abort.dead48, %b.grow231
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf250 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf250, ptr align 1 %b.cur.data242, i64 %b.cur.len240, i1 false)
  %b.grow2.nul51 = getelementptr i8, ptr %b.new.buf250, i64 %b.cur.len240
  store i8 0, ptr %b.grow2.nul51, align 1
  %b.new.data2.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load20, i32 0, i32 1
  store ptr %b.new.buf250, ptr %b.new.data2.gep52, align 8
  %b.new.cap2.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load20, i32 0, i32 2
  store i64 %b.new.cap38, ptr %b.new.cap2.gep53, align 8
  br label %b.grow_done33

str_overflow_abort47:                             ; preds = %b.grow231
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %b.new.buf.len246

choice.case56:                                    ; preds = %choice.next
  %b.load59 = load ptr, ptr %var.b, align 8
  %app.str.len60 = load i64, ptr @str.27.struct, align 8
  %app.str.len61 = and i64 %app.str.len60, 281474976710655
  %app.str.data62 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %b.app.cur.len63 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load59, i32 0, i32 0
  %b.app.cur.len64 = load i64, ptr %b.app.cur.len63, align 8
  %b.app.new.len65 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len64, i64 %app.str.len61)
  %sum66 = extractvalue { i64, i1 } %b.app.new.len65, 0
  %ovf67 = extractvalue { i64, i1 } %b.app.new.len65, 1
  br i1 %ovf67, label %str_overflow_abort69, label %b.app.new.len68

choice.next57:                                    ; preds = %choice.next
  %val.match104 = icmp eq i64 %var.load19, 8
  br i1 %val.match104, label %choice.case102, label %choice.next103

b.app.new.len68:                                  ; preds = %abort.dead70, %choice.case56
  %b.cap71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load59, i32 0, i32 2
  %b.cap72 = load i64, ptr %b.cap71, align 8
  %b.need.grow73 = icmp slt i64 %b.cap72, %sum66
  br i1 %b.need.grow73, label %b.grow274, label %b.nogrow275

str_overflow_abort69:                             ; preds = %choice.case56
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %b.app.new.len68

b.grow274:                                        ; preds = %b.app.new.len68
  %b.cap277 = mul i64 %b.cap72, 2
  %b.cap.small78 = icmp slt i64 %b.cap277, 16
  %b.cap.grow79 = select i1 %b.cap.small78, i64 16, i64 %b.cap277
  %b.cap.need80 = icmp slt i64 %b.cap.grow79, %sum66
  %b.new.cap81 = select i1 %b.cap.need80, i64 %sum66, i64 %b.cap.grow79
  %b.cur.len282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load59, i32 0, i32 0
  %b.cur.len283 = load i64, ptr %b.cur.len282, align 8
  %b.cur.data284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load59, i32 0, i32 1
  %b.cur.data285 = load ptr, ptr %b.cur.data284, align 8
  %b.new.buf.len286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap81, i64 1)
  %sum87 = extractvalue { i64, i1 } %b.new.buf.len286, 0
  %ovf88 = extractvalue { i64, i1 } %b.new.buf.len286, 1
  br i1 %ovf88, label %str_overflow_abort90, label %b.new.buf.len289

b.nogrow275:                                      ; preds = %b.app.new.len68
  br label %b.grow_done76

b.grow_done76:                                    ; preds = %b.nogrow275, %b.new.buf.len289
  %b.app.data97 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load59, i32 0, i32 1
  %b.app.data98 = load ptr, ptr %b.app.data97, align 8
  %b.app.dst99 = getelementptr i8, ptr %b.app.data98, i64 %b.app.cur.len64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst99, ptr align 1 %app.str.data62, i64 %app.str.len61, i1 false)
  %b.app.nul100 = getelementptr i8, ptr %b.app.data98, i64 %sum66
  store i8 0, ptr %b.app.nul100, align 1
  %b.len.gep101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load59, i32 0, i32 0
  store i64 %sum66, ptr %b.len.gep101, align 8
  br label %choice.exit

b.new.buf.len289:                                 ; preds = %abort.dead91, %b.grow274
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf293 = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 %sum87)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf293, ptr align 1 %b.cur.data285, i64 %b.cur.len283, i1 false)
  %b.grow2.nul94 = getelementptr i8, ptr %b.new.buf293, i64 %b.cur.len283
  store i8 0, ptr %b.grow2.nul94, align 1
  %b.new.data2.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load59, i32 0, i32 1
  store ptr %b.new.buf293, ptr %b.new.data2.gep95, align 8
  %b.new.cap2.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load59, i32 0, i32 2
  store i64 %b.new.cap81, ptr %b.new.cap2.gep96, align 8
  br label %b.grow_done76

str_overflow_abort90:                             ; preds = %b.grow274
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead91:                                     ; No predecessors!
  br label %b.new.buf.len289

choice.case102:                                   ; preds = %choice.next57
  %b.load105 = load ptr, ptr %var.b, align 8
  %app.str.len106 = load i64, ptr @str.28.struct, align 8
  %app.str.len107 = and i64 %app.str.len106, 281474976710655
  %app.str.data108 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %b.app.cur.len109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load105, i32 0, i32 0
  %b.app.cur.len110 = load i64, ptr %b.app.cur.len109, align 8
  %b.app.new.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len110, i64 %app.str.len107)
  %sum112 = extractvalue { i64, i1 } %b.app.new.len111, 0
  %ovf113 = extractvalue { i64, i1 } %b.app.new.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %b.app.new.len114

choice.next103:                                   ; preds = %choice.next57
  %val.match150 = icmp eq i64 %var.load19, 12
  br i1 %val.match150, label %choice.case148, label %choice.next149

b.app.new.len114:                                 ; preds = %abort.dead116, %choice.case102
  %b.cap117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load105, i32 0, i32 2
  %b.cap118 = load i64, ptr %b.cap117, align 8
  %b.need.grow119 = icmp slt i64 %b.cap118, %sum112
  br i1 %b.need.grow119, label %b.grow2120, label %b.nogrow2121

str_overflow_abort115:                            ; preds = %choice.case102
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %b.app.new.len114

b.grow2120:                                       ; preds = %b.app.new.len114
  %b.cap2123 = mul i64 %b.cap118, 2
  %b.cap.small124 = icmp slt i64 %b.cap2123, 16
  %b.cap.grow125 = select i1 %b.cap.small124, i64 16, i64 %b.cap2123
  %b.cap.need126 = icmp slt i64 %b.cap.grow125, %sum112
  %b.new.cap127 = select i1 %b.cap.need126, i64 %sum112, i64 %b.cap.grow125
  %b.cur.len2128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load105, i32 0, i32 0
  %b.cur.len2129 = load i64, ptr %b.cur.len2128, align 8
  %b.cur.data2130 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load105, i32 0, i32 1
  %b.cur.data2131 = load ptr, ptr %b.cur.data2130, align 8
  %b.new.buf.len2132 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap127, i64 1)
  %sum133 = extractvalue { i64, i1 } %b.new.buf.len2132, 0
  %ovf134 = extractvalue { i64, i1 } %b.new.buf.len2132, 1
  br i1 %ovf134, label %str_overflow_abort136, label %b.new.buf.len2135

b.nogrow2121:                                     ; preds = %b.app.new.len114
  br label %b.grow_done122

b.grow_done122:                                   ; preds = %b.nogrow2121, %b.new.buf.len2135
  %b.app.data143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load105, i32 0, i32 1
  %b.app.data144 = load ptr, ptr %b.app.data143, align 8
  %b.app.dst145 = getelementptr i8, ptr %b.app.data144, i64 %b.app.cur.len110
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst145, ptr align 1 %app.str.data108, i64 %app.str.len107, i1 false)
  %b.app.nul146 = getelementptr i8, ptr %b.app.data144, i64 %sum112
  store i8 0, ptr %b.app.nul146, align 1
  %b.len.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load105, i32 0, i32 0
  store i64 %sum112, ptr %b.len.gep147, align 8
  br label %choice.exit

b.new.buf.len2135:                                ; preds = %abort.dead137, %b.grow2120
  %arena.cur138 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 %sum133)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2139, ptr align 1 %b.cur.data2131, i64 %b.cur.len2129, i1 false)
  %b.grow2.nul140 = getelementptr i8, ptr %b.new.buf2139, i64 %b.cur.len2129
  store i8 0, ptr %b.grow2.nul140, align 1
  %b.new.data2.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load105, i32 0, i32 1
  store ptr %b.new.buf2139, ptr %b.new.data2.gep141, align 8
  %b.new.cap2.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load105, i32 0, i32 2
  store i64 %b.new.cap127, ptr %b.new.cap2.gep142, align 8
  br label %b.grow_done122

str_overflow_abort136:                            ; preds = %b.grow2120
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead137:                                    ; No predecessors!
  br label %b.new.buf.len2135

choice.case148:                                   ; preds = %choice.next103
  %b.load151 = load ptr, ptr %var.b, align 8
  %app.str.len152 = load i64, ptr @str.29.struct, align 8
  %app.str.len153 = and i64 %app.str.len152, 281474976710655
  %app.str.data154 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %b.app.cur.len155 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.app.cur.len156 = load i64, ptr %b.app.cur.len155, align 8
  %b.app.new.len157 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len156, i64 %app.str.len153)
  %sum158 = extractvalue { i64, i1 } %b.app.new.len157, 0
  %ovf159 = extractvalue { i64, i1 } %b.app.new.len157, 1
  br i1 %ovf159, label %str_overflow_abort161, label %b.app.new.len160

choice.next149:                                   ; preds = %choice.next103
  %val.match196 = icmp eq i64 %var.load19, 10
  br i1 %val.match196, label %choice.case194, label %choice.next195

b.app.new.len160:                                 ; preds = %abort.dead162, %choice.case148
  %b.cap163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  %b.cap164 = load i64, ptr %b.cap163, align 8
  %b.need.grow165 = icmp slt i64 %b.cap164, %sum158
  br i1 %b.need.grow165, label %b.grow2166, label %b.nogrow2167

str_overflow_abort161:                            ; preds = %choice.case148
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead162:                                    ; No predecessors!
  br label %b.app.new.len160

b.grow2166:                                       ; preds = %b.app.new.len160
  %b.cap2169 = mul i64 %b.cap164, 2
  %b.cap.small170 = icmp slt i64 %b.cap2169, 16
  %b.cap.grow171 = select i1 %b.cap.small170, i64 16, i64 %b.cap2169
  %b.cap.need172 = icmp slt i64 %b.cap.grow171, %sum158
  %b.new.cap173 = select i1 %b.cap.need172, i64 %sum158, i64 %b.cap.grow171
  %b.cur.len2174 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  %b.cur.len2175 = load i64, ptr %b.cur.len2174, align 8
  %b.cur.data2176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.cur.data2177 = load ptr, ptr %b.cur.data2176, align 8
  %b.new.buf.len2178 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap173, i64 1)
  %sum179 = extractvalue { i64, i1 } %b.new.buf.len2178, 0
  %ovf180 = extractvalue { i64, i1 } %b.new.buf.len2178, 1
  br i1 %ovf180, label %str_overflow_abort182, label %b.new.buf.len2181

b.nogrow2167:                                     ; preds = %b.app.new.len160
  br label %b.grow_done168

b.grow_done168:                                   ; preds = %b.nogrow2167, %b.new.buf.len2181
  %b.app.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  %b.app.data190 = load ptr, ptr %b.app.data189, align 8
  %b.app.dst191 = getelementptr i8, ptr %b.app.data190, i64 %b.app.cur.len156
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst191, ptr align 1 %app.str.data154, i64 %app.str.len153, i1 false)
  %b.app.nul192 = getelementptr i8, ptr %b.app.data190, i64 %sum158
  store i8 0, ptr %b.app.nul192, align 1
  %b.len.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 0
  store i64 %sum158, ptr %b.len.gep193, align 8
  br label %choice.exit

b.new.buf.len2181:                                ; preds = %abort.dead183, %b.grow2166
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 %sum179)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2185, ptr align 1 %b.cur.data2177, i64 %b.cur.len2175, i1 false)
  %b.grow2.nul186 = getelementptr i8, ptr %b.new.buf2185, i64 %b.cur.len2175
  store i8 0, ptr %b.grow2.nul186, align 1
  %b.new.data2.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 1
  store ptr %b.new.buf2185, ptr %b.new.data2.gep187, align 8
  %b.new.cap2.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load151, i32 0, i32 2
  store i64 %b.new.cap173, ptr %b.new.cap2.gep188, align 8
  br label %b.grow_done168

str_overflow_abort182:                            ; preds = %b.grow2166
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead183:                                    ; No predecessors!
  br label %b.new.buf.len2181

choice.case194:                                   ; preds = %choice.next149
  %b.load197 = load ptr, ptr %var.b, align 8
  %app.str.len198 = load i64, ptr @str.30.struct, align 8
  %app.str.len199 = and i64 %app.str.len198, 281474976710655
  %app.str.data200 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %b.app.cur.len201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 0
  %b.app.cur.len202 = load i64, ptr %b.app.cur.len201, align 8
  %b.app.new.len203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len202, i64 %app.str.len199)
  %sum204 = extractvalue { i64, i1 } %b.app.new.len203, 0
  %ovf205 = extractvalue { i64, i1 } %b.app.new.len203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %b.app.new.len206

choice.next195:                                   ; preds = %choice.next149
  %val.match242 = icmp eq i64 %var.load19, 13
  br i1 %val.match242, label %choice.case240, label %choice.next241

b.app.new.len206:                                 ; preds = %abort.dead208, %choice.case194
  %b.cap209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 2
  %b.cap210 = load i64, ptr %b.cap209, align 8
  %b.need.grow211 = icmp slt i64 %b.cap210, %sum204
  br i1 %b.need.grow211, label %b.grow2212, label %b.nogrow2213

str_overflow_abort207:                            ; preds = %choice.case194
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead208:                                    ; No predecessors!
  br label %b.app.new.len206

b.grow2212:                                       ; preds = %b.app.new.len206
  %b.cap2215 = mul i64 %b.cap210, 2
  %b.cap.small216 = icmp slt i64 %b.cap2215, 16
  %b.cap.grow217 = select i1 %b.cap.small216, i64 16, i64 %b.cap2215
  %b.cap.need218 = icmp slt i64 %b.cap.grow217, %sum204
  %b.new.cap219 = select i1 %b.cap.need218, i64 %sum204, i64 %b.cap.grow217
  %b.cur.len2220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 0
  %b.cur.len2221 = load i64, ptr %b.cur.len2220, align 8
  %b.cur.data2222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 1
  %b.cur.data2223 = load ptr, ptr %b.cur.data2222, align 8
  %b.new.buf.len2224 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap219, i64 1)
  %sum225 = extractvalue { i64, i1 } %b.new.buf.len2224, 0
  %ovf226 = extractvalue { i64, i1 } %b.new.buf.len2224, 1
  br i1 %ovf226, label %str_overflow_abort228, label %b.new.buf.len2227

b.nogrow2213:                                     ; preds = %b.app.new.len206
  br label %b.grow_done214

b.grow_done214:                                   ; preds = %b.nogrow2213, %b.new.buf.len2227
  %b.app.data235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 1
  %b.app.data236 = load ptr, ptr %b.app.data235, align 8
  %b.app.dst237 = getelementptr i8, ptr %b.app.data236, i64 %b.app.cur.len202
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst237, ptr align 1 %app.str.data200, i64 %app.str.len199, i1 false)
  %b.app.nul238 = getelementptr i8, ptr %b.app.data236, i64 %sum204
  store i8 0, ptr %b.app.nul238, align 1
  %b.len.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 0
  store i64 %sum204, ptr %b.len.gep239, align 8
  br label %choice.exit

b.new.buf.len2227:                                ; preds = %abort.dead229, %b.grow2212
  %arena.cur230 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2231 = call ptr @dva_arena_alloc(ptr %arena.cur230, i64 %sum225)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2231, ptr align 1 %b.cur.data2223, i64 %b.cur.len2221, i1 false)
  %b.grow2.nul232 = getelementptr i8, ptr %b.new.buf2231, i64 %b.cur.len2221
  store i8 0, ptr %b.grow2.nul232, align 1
  %b.new.data2.gep233 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 1
  store ptr %b.new.buf2231, ptr %b.new.data2.gep233, align 8
  %b.new.cap2.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load197, i32 0, i32 2
  store i64 %b.new.cap219, ptr %b.new.cap2.gep234, align 8
  br label %b.grow_done214

str_overflow_abort228:                            ; preds = %b.grow2212
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead229:                                    ; No predecessors!
  br label %b.new.buf.len2227

choice.case240:                                   ; preds = %choice.next195
  %b.load243 = load ptr, ptr %var.b, align 8
  %app.str.len244 = load i64, ptr @str.31.struct, align 8
  %app.str.len245 = and i64 %app.str.len244, 281474976710655
  %app.str.data246 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %b.app.cur.len247 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load243, i32 0, i32 0
  %b.app.cur.len248 = load i64, ptr %b.app.cur.len247, align 8
  %b.app.new.len249 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len248, i64 %app.str.len245)
  %sum250 = extractvalue { i64, i1 } %b.app.new.len249, 0
  %ovf251 = extractvalue { i64, i1 } %b.app.new.len249, 1
  br i1 %ovf251, label %str_overflow_abort253, label %b.app.new.len252

choice.next241:                                   ; preds = %choice.next195
  %val.match288 = icmp eq i64 %var.load19, 9
  br i1 %val.match288, label %choice.case286, label %choice.next287

b.app.new.len252:                                 ; preds = %abort.dead254, %choice.case240
  %b.cap255 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load243, i32 0, i32 2
  %b.cap256 = load i64, ptr %b.cap255, align 8
  %b.need.grow257 = icmp slt i64 %b.cap256, %sum250
  br i1 %b.need.grow257, label %b.grow2258, label %b.nogrow2259

str_overflow_abort253:                            ; preds = %choice.case240
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead254:                                    ; No predecessors!
  br label %b.app.new.len252

b.grow2258:                                       ; preds = %b.app.new.len252
  %b.cap2261 = mul i64 %b.cap256, 2
  %b.cap.small262 = icmp slt i64 %b.cap2261, 16
  %b.cap.grow263 = select i1 %b.cap.small262, i64 16, i64 %b.cap2261
  %b.cap.need264 = icmp slt i64 %b.cap.grow263, %sum250
  %b.new.cap265 = select i1 %b.cap.need264, i64 %sum250, i64 %b.cap.grow263
  %b.cur.len2266 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load243, i32 0, i32 0
  %b.cur.len2267 = load i64, ptr %b.cur.len2266, align 8
  %b.cur.data2268 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load243, i32 0, i32 1
  %b.cur.data2269 = load ptr, ptr %b.cur.data2268, align 8
  %b.new.buf.len2270 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap265, i64 1)
  %sum271 = extractvalue { i64, i1 } %b.new.buf.len2270, 0
  %ovf272 = extractvalue { i64, i1 } %b.new.buf.len2270, 1
  br i1 %ovf272, label %str_overflow_abort274, label %b.new.buf.len2273

b.nogrow2259:                                     ; preds = %b.app.new.len252
  br label %b.grow_done260

b.grow_done260:                                   ; preds = %b.nogrow2259, %b.new.buf.len2273
  %b.app.data281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load243, i32 0, i32 1
  %b.app.data282 = load ptr, ptr %b.app.data281, align 8
  %b.app.dst283 = getelementptr i8, ptr %b.app.data282, i64 %b.app.cur.len248
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst283, ptr align 1 %app.str.data246, i64 %app.str.len245, i1 false)
  %b.app.nul284 = getelementptr i8, ptr %b.app.data282, i64 %sum250
  store i8 0, ptr %b.app.nul284, align 1
  %b.len.gep285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load243, i32 0, i32 0
  store i64 %sum250, ptr %b.len.gep285, align 8
  br label %choice.exit

b.new.buf.len2273:                                ; preds = %abort.dead275, %b.grow2258
  %arena.cur276 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2277 = call ptr @dva_arena_alloc(ptr %arena.cur276, i64 %sum271)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2277, ptr align 1 %b.cur.data2269, i64 %b.cur.len2267, i1 false)
  %b.grow2.nul278 = getelementptr i8, ptr %b.new.buf2277, i64 %b.cur.len2267
  store i8 0, ptr %b.grow2.nul278, align 1
  %b.new.data2.gep279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load243, i32 0, i32 1
  store ptr %b.new.buf2277, ptr %b.new.data2.gep279, align 8
  %b.new.cap2.gep280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load243, i32 0, i32 2
  store i64 %b.new.cap265, ptr %b.new.cap2.gep280, align 8
  br label %b.grow_done260

str_overflow_abort274:                            ; preds = %b.grow2258
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead275:                                    ; No predecessors!
  br label %b.new.buf.len2273

choice.case286:                                   ; preds = %choice.next241
  %b.load289 = load ptr, ptr %var.b, align 8
  %app.str.len290 = load i64, ptr @str.32.struct, align 8
  %app.str.len291 = and i64 %app.str.len290, 281474976710655
  %app.str.data292 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %b.app.cur.len293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load289, i32 0, i32 0
  %b.app.cur.len294 = load i64, ptr %b.app.cur.len293, align 8
  %b.app.new.len295 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len294, i64 %app.str.len291)
  %sum296 = extractvalue { i64, i1 } %b.app.new.len295, 0
  %ovf297 = extractvalue { i64, i1 } %b.app.new.len295, 1
  br i1 %ovf297, label %str_overflow_abort299, label %b.app.new.len298

choice.next287:                                   ; preds = %choice.next241
  %cmptmp = icmp slt i64 %var.load19, 32
  br i1 %cmptmp, label %choice.case332, label %choice.next333

b.app.new.len298:                                 ; preds = %abort.dead300, %choice.case286
  %b.cap301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load289, i32 0, i32 2
  %b.cap302 = load i64, ptr %b.cap301, align 8
  %b.need.grow303 = icmp slt i64 %b.cap302, %sum296
  br i1 %b.need.grow303, label %b.grow2304, label %b.nogrow2305

str_overflow_abort299:                            ; preds = %choice.case286
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead300:                                    ; No predecessors!
  br label %b.app.new.len298

b.grow2304:                                       ; preds = %b.app.new.len298
  %b.cap2307 = mul i64 %b.cap302, 2
  %b.cap.small308 = icmp slt i64 %b.cap2307, 16
  %b.cap.grow309 = select i1 %b.cap.small308, i64 16, i64 %b.cap2307
  %b.cap.need310 = icmp slt i64 %b.cap.grow309, %sum296
  %b.new.cap311 = select i1 %b.cap.need310, i64 %sum296, i64 %b.cap.grow309
  %b.cur.len2312 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load289, i32 0, i32 0
  %b.cur.len2313 = load i64, ptr %b.cur.len2312, align 8
  %b.cur.data2314 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load289, i32 0, i32 1
  %b.cur.data2315 = load ptr, ptr %b.cur.data2314, align 8
  %b.new.buf.len2316 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap311, i64 1)
  %sum317 = extractvalue { i64, i1 } %b.new.buf.len2316, 0
  %ovf318 = extractvalue { i64, i1 } %b.new.buf.len2316, 1
  br i1 %ovf318, label %str_overflow_abort320, label %b.new.buf.len2319

b.nogrow2305:                                     ; preds = %b.app.new.len298
  br label %b.grow_done306

b.grow_done306:                                   ; preds = %b.nogrow2305, %b.new.buf.len2319
  %b.app.data327 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load289, i32 0, i32 1
  %b.app.data328 = load ptr, ptr %b.app.data327, align 8
  %b.app.dst329 = getelementptr i8, ptr %b.app.data328, i64 %b.app.cur.len294
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst329, ptr align 1 %app.str.data292, i64 %app.str.len291, i1 false)
  %b.app.nul330 = getelementptr i8, ptr %b.app.data328, i64 %sum296
  store i8 0, ptr %b.app.nul330, align 1
  %b.len.gep331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load289, i32 0, i32 0
  store i64 %sum296, ptr %b.len.gep331, align 8
  br label %choice.exit

b.new.buf.len2319:                                ; preds = %abort.dead321, %b.grow2304
  %arena.cur322 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2323 = call ptr @dva_arena_alloc(ptr %arena.cur322, i64 %sum317)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2323, ptr align 1 %b.cur.data2315, i64 %b.cur.len2313, i1 false)
  %b.grow2.nul324 = getelementptr i8, ptr %b.new.buf2323, i64 %b.cur.len2313
  store i8 0, ptr %b.grow2.nul324, align 1
  %b.new.data2.gep325 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load289, i32 0, i32 1
  store ptr %b.new.buf2323, ptr %b.new.data2.gep325, align 8
  %b.new.cap2.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load289, i32 0, i32 2
  store i64 %b.new.cap311, ptr %b.new.cap2.gep326, align 8
  br label %b.grow_done306

str_overflow_abort320:                            ; preds = %b.grow2304
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead321:                                    ; No predecessors!
  br label %b.new.buf.len2319

choice.case332:                                   ; preds = %choice.next287
  %b.load334 = load ptr, ptr %var.b, align 8
  %app.str.len335 = load i64, ptr @str.33.struct, align 8
  %app.str.len336 = and i64 %app.str.len335, 281474976710655
  %app.str.data337 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %b.app.cur.len338 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load334, i32 0, i32 0
  %b.app.cur.len339 = load i64, ptr %b.app.cur.len338, align 8
  %b.app.new.len340 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len339, i64 %app.str.len336)
  %sum341 = extractvalue { i64, i1 } %b.app.new.len340, 0
  %ovf342 = extractvalue { i64, i1 } %b.app.new.len340, 1
  br i1 %ovf342, label %str_overflow_abort344, label %b.app.new.len343

choice.next333:                                   ; preds = %choice.next287
  %b.load510 = load ptr, ptr %var.b, align 8
  %var.load511 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load511, 0
  %b.b.le255 = icmp sle i64 %var.load511, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.app.new.len343:                                 ; preds = %abort.dead345, %choice.case332
  %b.cap346 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load334, i32 0, i32 2
  %b.cap347 = load i64, ptr %b.cap346, align 8
  %b.need.grow348 = icmp slt i64 %b.cap347, %sum341
  br i1 %b.need.grow348, label %b.grow2349, label %b.nogrow2350

str_overflow_abort344:                            ; preds = %choice.case332
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead345:                                    ; No predecessors!
  br label %b.app.new.len343

b.grow2349:                                       ; preds = %b.app.new.len343
  %b.cap2352 = mul i64 %b.cap347, 2
  %b.cap.small353 = icmp slt i64 %b.cap2352, 16
  %b.cap.grow354 = select i1 %b.cap.small353, i64 16, i64 %b.cap2352
  %b.cap.need355 = icmp slt i64 %b.cap.grow354, %sum341
  %b.new.cap356 = select i1 %b.cap.need355, i64 %sum341, i64 %b.cap.grow354
  %b.cur.len2357 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load334, i32 0, i32 0
  %b.cur.len2358 = load i64, ptr %b.cur.len2357, align 8
  %b.cur.data2359 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load334, i32 0, i32 1
  %b.cur.data2360 = load ptr, ptr %b.cur.data2359, align 8
  %b.new.buf.len2361 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap356, i64 1)
  %sum362 = extractvalue { i64, i1 } %b.new.buf.len2361, 0
  %ovf363 = extractvalue { i64, i1 } %b.new.buf.len2361, 1
  br i1 %ovf363, label %str_overflow_abort365, label %b.new.buf.len2364

b.nogrow2350:                                     ; preds = %b.app.new.len343
  br label %b.grow_done351

b.grow_done351:                                   ; preds = %b.nogrow2350, %b.new.buf.len2364
  %b.app.data372 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load334, i32 0, i32 1
  %b.app.data373 = load ptr, ptr %b.app.data372, align 8
  %b.app.dst374 = getelementptr i8, ptr %b.app.data373, i64 %b.app.cur.len339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst374, ptr align 1 %app.str.data337, i64 %app.str.len336, i1 false)
  %b.app.nul375 = getelementptr i8, ptr %b.app.data373, i64 %sum341
  store i8 0, ptr %b.app.nul375, align 1
  %b.len.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load334, i32 0, i32 0
  store i64 %sum341, ptr %b.len.gep376, align 8
  %b.load377 = load ptr, ptr %var.b, align 8
  %var.load378 = load i64, ptr %var.c, align 8
  %shrtmp = lshr i64 %var.load378, 4
  %call.res = call i32 @"json::#hex_digit"(i64 %shrtmp)
  %coerce.sext = sext i32 %call.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len379 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 0
  %b.rn.cur.len380 = load i64, ptr %b.rn.cur.len379, align 8
  %b.rn.new.len381 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len380, i64 %br.width)
  %sum382 = extractvalue { i64, i1 } %b.rn.new.len381, 0
  %ovf383 = extractvalue { i64, i1 } %b.rn.new.len381, 1
  br i1 %ovf383, label %str_overflow_abort385, label %b.rn.new.len384

b.new.buf.len2364:                                ; preds = %abort.dead366, %b.grow2349
  %arena.cur367 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 %sum362)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2368, ptr align 1 %b.cur.data2360, i64 %b.cur.len2358, i1 false)
  %b.grow2.nul369 = getelementptr i8, ptr %b.new.buf2368, i64 %b.cur.len2358
  store i8 0, ptr %b.grow2.nul369, align 1
  %b.new.data2.gep370 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load334, i32 0, i32 1
  store ptr %b.new.buf2368, ptr %b.new.data2.gep370, align 8
  %b.new.cap2.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load334, i32 0, i32 2
  store i64 %b.new.cap356, ptr %b.new.cap2.gep371, align 8
  br label %b.grow_done351

str_overflow_abort365:                            ; preds = %b.grow2349
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead366:                                    ; No predecessors!
  br label %b.new.buf.len2364

b.rn.new.len384:                                  ; preds = %abort.dead386, %b.grow_done351
  %b.cap387 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 2
  %b.cap388 = load i64, ptr %b.cap387, align 8
  %b.need.grow389 = icmp slt i64 %b.cap388, %sum382
  br i1 %b.need.grow389, label %b.grow2390, label %b.nogrow2391

str_overflow_abort385:                            ; preds = %b.grow_done351
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead386:                                    ; No predecessors!
  br label %b.rn.new.len384

b.grow2390:                                       ; preds = %b.rn.new.len384
  %b.cap2393 = mul i64 %b.cap388, 2
  %b.cap.small394 = icmp slt i64 %b.cap2393, 16
  %b.cap.grow395 = select i1 %b.cap.small394, i64 16, i64 %b.cap2393
  %b.cap.need396 = icmp slt i64 %b.cap.grow395, %sum382
  %b.new.cap397 = select i1 %b.cap.need396, i64 %sum382, i64 %b.cap.grow395
  %b.cur.len2398 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 0
  %b.cur.len2399 = load i64, ptr %b.cur.len2398, align 8
  %b.cur.data2400 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 1
  %b.cur.data2401 = load ptr, ptr %b.cur.data2400, align 8
  %b.new.buf.len2402 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap397, i64 1)
  %sum403 = extractvalue { i64, i1 } %b.new.buf.len2402, 0
  %ovf404 = extractvalue { i64, i1 } %b.new.buf.len2402, 1
  br i1 %ovf404, label %str_overflow_abort406, label %b.new.buf.len2405

b.nogrow2391:                                     ; preds = %b.rn.new.len384
  br label %b.grow_done392

b.grow_done392:                                   ; preds = %b.nogrow2391, %b.new.buf.len2405
  %b.rn.data413 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 1
  %b.rn.data414 = load ptr, ptr %b.rn.data413, align 8
  %b.rn.dst415 = getelementptr i8, ptr %b.rn.data414, i64 %b.rn.cur.len380
  br i1 %br.cmp1, label %br.b1.133, label %br.c2.133

b.new.buf.len2405:                                ; preds = %abort.dead407, %b.grow2390
  %arena.cur408 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2409 = call ptr @dva_arena_alloc(ptr %arena.cur408, i64 %sum403)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2409, ptr align 1 %b.cur.data2401, i64 %b.cur.len2399, i1 false)
  %b.grow2.nul410 = getelementptr i8, ptr %b.new.buf2409, i64 %b.cur.len2399
  store i8 0, ptr %b.grow2.nul410, align 1
  %b.new.data2.gep411 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 1
  store ptr %b.new.buf2409, ptr %b.new.data2.gep411, align 8
  %b.new.cap2.gep412 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 2
  store i64 %b.new.cap397, ptr %b.new.cap2.gep412, align 8
  br label %b.grow_done392

str_overflow_abort406:                            ; preds = %b.grow2390
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead407:                                    ; No predecessors!
  br label %b.new.buf.len2405

br.b1.133:                                        ; preds = %b.grow_done392
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst415, align 1
  br label %br.done.133

br.c2.133:                                        ; preds = %b.grow_done392
  br i1 %br.cmp2, label %br.b2.133, label %br.c3.133

br.b2.133:                                        ; preds = %br.c2.133
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst415, align 1
  %br.dst1416 = getelementptr i8, ptr %b.rn.dst415, i64 1
  store i8 %br.b2.1t, ptr %br.dst1416, align 1
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
  store i8 %br.b3.0t, ptr %b.rn.dst415, align 1
  %br.dst1.3417 = getelementptr i8, ptr %b.rn.dst415, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3417, align 1
  %br.dst2.3418 = getelementptr i8, ptr %b.rn.dst415, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3418, align 1
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
  store i8 %br.b4.0t, ptr %b.rn.dst415, align 1
  %br.dst1.4419 = getelementptr i8, ptr %b.rn.dst415, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4419, align 1
  %br.dst2.4420 = getelementptr i8, ptr %b.rn.dst415, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4420, align 1
  %br.dst3.4421 = getelementptr i8, ptr %b.rn.dst415, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4421, align 1
  br label %br.done.133

br.done.133:                                      ; preds = %br.b4.133, %br.b3.133, %br.b2.133, %br.b1.133
  %br.nul422 = getelementptr i8, ptr %b.rn.data414, i64 %sum382
  store i8 0, ptr %br.nul422, align 1
  %b.len.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load377, i32 0, i32 0
  store i64 %sum382, ptr %b.len.gep423, align 8
  %b.load424 = load ptr, ptr %var.b, align 8
  %var.load425 = load i64, ptr %var.c, align 8
  %call.res426 = call i32 @"json::#hex_digit"(i64 %var.load425)
  %coerce.sext427 = sext i32 %call.res426 to i64
  %br.cmp1428 = icmp slt i64 %coerce.sext427, 128
  %br.cmp2429 = icmp slt i64 %coerce.sext427, 2048
  %br.cmp3430 = icmp slt i64 %coerce.sext427, 65536
  %br.w3431 = select i1 %br.cmp3430, i64 3, i64 4
  %br.w2432 = select i1 %br.cmp2429, i64 2, i64 %br.w3431
  %br.width433 = select i1 %br.cmp1428, i64 1, i64 %br.w2432
  %b.rn.cur.len434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 0
  %b.rn.cur.len435 = load i64, ptr %b.rn.cur.len434, align 8
  %b.rn.new.len436 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len435, i64 %br.width433)
  %sum437 = extractvalue { i64, i1 } %b.rn.new.len436, 0
  %ovf438 = extractvalue { i64, i1 } %b.rn.new.len436, 1
  br i1 %ovf438, label %str_overflow_abort440, label %b.rn.new.len439

b.rn.new.len439:                                  ; preds = %abort.dead441, %br.done.133
  %b.cap442 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 2
  %b.cap443 = load i64, ptr %b.cap442, align 8
  %b.need.grow444 = icmp slt i64 %b.cap443, %sum437
  br i1 %b.need.grow444, label %b.grow2445, label %b.nogrow2446

str_overflow_abort440:                            ; preds = %br.done.133
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead441:                                    ; No predecessors!
  br label %b.rn.new.len439

b.grow2445:                                       ; preds = %b.rn.new.len439
  %b.cap2448 = mul i64 %b.cap443, 2
  %b.cap.small449 = icmp slt i64 %b.cap2448, 16
  %b.cap.grow450 = select i1 %b.cap.small449, i64 16, i64 %b.cap2448
  %b.cap.need451 = icmp slt i64 %b.cap.grow450, %sum437
  %b.new.cap452 = select i1 %b.cap.need451, i64 %sum437, i64 %b.cap.grow450
  %b.cur.len2453 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 0
  %b.cur.len2454 = load i64, ptr %b.cur.len2453, align 8
  %b.cur.data2455 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 1
  %b.cur.data2456 = load ptr, ptr %b.cur.data2455, align 8
  %b.new.buf.len2457 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap452, i64 1)
  %sum458 = extractvalue { i64, i1 } %b.new.buf.len2457, 0
  %ovf459 = extractvalue { i64, i1 } %b.new.buf.len2457, 1
  br i1 %ovf459, label %str_overflow_abort461, label %b.new.buf.len2460

b.nogrow2446:                                     ; preds = %b.rn.new.len439
  br label %b.grow_done447

b.grow_done447:                                   ; preds = %b.nogrow2446, %b.new.buf.len2460
  %b.rn.data468 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 1
  %b.rn.data469 = load ptr, ptr %b.rn.data468, align 8
  %b.rn.dst470 = getelementptr i8, ptr %b.rn.data469, i64 %b.rn.cur.len435
  br i1 %br.cmp1428, label %br.b1.134, label %br.c2.134

b.new.buf.len2460:                                ; preds = %abort.dead462, %b.grow2445
  %arena.cur463 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2464 = call ptr @dva_arena_alloc(ptr %arena.cur463, i64 %sum458)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2464, ptr align 1 %b.cur.data2456, i64 %b.cur.len2454, i1 false)
  %b.grow2.nul465 = getelementptr i8, ptr %b.new.buf2464, i64 %b.cur.len2454
  store i8 0, ptr %b.grow2.nul465, align 1
  %b.new.data2.gep466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 1
  store ptr %b.new.buf2464, ptr %b.new.data2.gep466, align 8
  %b.new.cap2.gep467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 2
  store i64 %b.new.cap452, ptr %b.new.cap2.gep467, align 8
  br label %b.grow_done447

str_overflow_abort461:                            ; preds = %b.grow2445
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead462:                                    ; No predecessors!
  br label %b.new.buf.len2460

br.b1.134:                                        ; preds = %b.grow_done447
  %br.b1.0471 = trunc i64 %coerce.sext427 to i8
  store i8 %br.b1.0471, ptr %b.rn.dst470, align 1
  br label %br.done.134

br.c2.134:                                        ; preds = %b.grow_done447
  br i1 %br.cmp2429, label %br.b2.134, label %br.c3.134

br.b2.134:                                        ; preds = %br.c2.134
  %br.sh6472 = lshr i64 %coerce.sext427, 6
  %br.b2.0473 = or i64 %br.sh6472, 192
  %br.b2.0t474 = trunc i64 %br.b2.0473 to i8
  %br.m6475 = and i64 %coerce.sext427, 63
  %br.b2.1476 = or i64 %br.m6475, 128
  %br.b2.1t477 = trunc i64 %br.b2.1476 to i8
  store i8 %br.b2.0t474, ptr %b.rn.dst470, align 1
  %br.dst1478 = getelementptr i8, ptr %b.rn.dst470, i64 1
  store i8 %br.b2.1t477, ptr %br.dst1478, align 1
  br label %br.done.134

br.c3.134:                                        ; preds = %br.c2.134
  br i1 %br.cmp3430, label %br.b3.134, label %br.b4.134

br.b3.134:                                        ; preds = %br.c3.134
  %br.sh12479 = lshr i64 %coerce.sext427, 12
  %br.b3.0480 = or i64 %br.sh12479, 224
  %br.b3.0t481 = trunc i64 %br.b3.0480 to i8
  %br.sh6.3482 = lshr i64 %coerce.sext427, 6
  %br.m6.3483 = and i64 %br.sh6.3482, 63
  %br.b3.1484 = or i64 %br.m6.3483, 128
  %br.b3.1t485 = trunc i64 %br.b3.1484 to i8
  %br.mend486 = and i64 %coerce.sext427, 63
  %br.b3.2487 = or i64 %br.mend486, 128
  %br.b3.2t488 = trunc i64 %br.b3.2487 to i8
  store i8 %br.b3.0t481, ptr %b.rn.dst470, align 1
  %br.dst1.3489 = getelementptr i8, ptr %b.rn.dst470, i64 1
  store i8 %br.b3.1t485, ptr %br.dst1.3489, align 1
  %br.dst2.3490 = getelementptr i8, ptr %b.rn.dst470, i64 2
  store i8 %br.b3.2t488, ptr %br.dst2.3490, align 1
  br label %br.done.134

br.b4.134:                                        ; preds = %br.c3.134
  %br.sh18491 = lshr i64 %coerce.sext427, 18
  %br.b4.0492 = or i64 %br.sh18491, 240
  %br.b4.0t493 = trunc i64 %br.b4.0492 to i8
  %br.sh12.4494 = lshr i64 %coerce.sext427, 12
  %br.m12.4495 = and i64 %br.sh12.4494, 63
  %br.b4.1496 = or i64 %br.m12.4495, 128
  %br.b4.1t497 = trunc i64 %br.b4.1496 to i8
  %br.sh6.4498 = lshr i64 %coerce.sext427, 6
  %br.m6.4499 = and i64 %br.sh6.4498, 63
  %br.b4.2500 = or i64 %br.m6.4499, 128
  %br.b4.2t501 = trunc i64 %br.b4.2500 to i8
  %br.mend4502 = and i64 %coerce.sext427, 63
  %br.b4.3503 = or i64 %br.mend4502, 128
  %br.b4.3t504 = trunc i64 %br.b4.3503 to i8
  store i8 %br.b4.0t493, ptr %b.rn.dst470, align 1
  %br.dst1.4505 = getelementptr i8, ptr %b.rn.dst470, i64 1
  store i8 %br.b4.1t497, ptr %br.dst1.4505, align 1
  %br.dst2.4506 = getelementptr i8, ptr %b.rn.dst470, i64 2
  store i8 %br.b4.2t501, ptr %br.dst2.4506, align 1
  %br.dst3.4507 = getelementptr i8, ptr %b.rn.dst470, i64 3
  store i8 %br.b4.3t504, ptr %br.dst3.4507, align 1
  br label %br.done.134

br.done.134:                                      ; preds = %br.b4.134, %br.b3.134, %br.b2.134, %br.b1.134
  %br.nul508 = getelementptr i8, ptr %b.rn.data469, i64 %sum437
  store i8 0, ptr %br.nul508, align 1
  %b.len.gep509 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load424, i32 0, i32 0
  store i64 %sum437, ptr %b.len.gep509, align 8
  br label %choice.exit

b.byte_ok:                                        ; preds = %abort.dead512, %choice.next333
  %b.byte.i8 = trunc i64 %var.load511 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load510, i32 0, i32 0
  %b.len513 = load i64, ptr %b.len, align 8
  %b.cap514 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load510, i32 0, i32 2
  %b.cap515 = load i64, ptr %b.cap514, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load510, i32 0, i32 1
  %b.data516 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len513, %b.cap515
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next333
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead512:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2517 = mul i64 %b.cap515, 2
  %b.cap.small518 = icmp slt i64 %b.cap2517, 16
  %b.new.cap519 = select i1 %b.cap.small518, i64 16, i64 %b.cap2517
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap519, i64 1)
  %sum520 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf521 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf521, label %str_overflow_abort523, label %b.new.buf.len522

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len522
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load510, i32 0, i32 1
  %b.cur.data526 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load510, i32 0, i32 0
  %b.cur.len527 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data526, i64 %b.cur.len527
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len527, 1
  %b.nul = getelementptr i8, ptr %b.cur.data526, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep528 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load510, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep528, align 8
  br label %choice.exit

b.new.buf.len522:                                 ; preds = %abort.dead524, %b.grow
  %arena.cur525 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur525, i64 %sum520)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data516, i64 %b.len513, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len513
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load510, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load510, i32 0, i32 2
  store i64 %b.new.cap519, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort523:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead524:                                    ; No predecessors!
  br label %b.new.buf.len522

b.rn.new.len535:                                  ; preds = %abort.dead537, %loop.exit.132
  %b.cap538 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 2
  %b.cap539 = load i64, ptr %b.cap538, align 8
  %b.need.grow540 = icmp slt i64 %b.cap539, %sum533
  br i1 %b.need.grow540, label %b.grow2541, label %b.nogrow2542

str_overflow_abort536:                            ; preds = %loop.exit.132
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead537:                                    ; No predecessors!
  br label %b.rn.new.len535

b.grow2541:                                       ; preds = %b.rn.new.len535
  %b.cap2544 = mul i64 %b.cap539, 2
  %b.cap.small545 = icmp slt i64 %b.cap2544, 16
  %b.cap.grow546 = select i1 %b.cap.small545, i64 16, i64 %b.cap2544
  %b.cap.need547 = icmp slt i64 %b.cap.grow546, %sum533
  %b.new.cap548 = select i1 %b.cap.need547, i64 %sum533, i64 %b.cap.grow546
  %b.cur.len2549 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 0
  %b.cur.len2550 = load i64, ptr %b.cur.len2549, align 8
  %b.cur.data2551 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 1
  %b.cur.data2552 = load ptr, ptr %b.cur.data2551, align 8
  %b.new.buf.len2553 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap548, i64 1)
  %sum554 = extractvalue { i64, i1 } %b.new.buf.len2553, 0
  %ovf555 = extractvalue { i64, i1 } %b.new.buf.len2553, 1
  br i1 %ovf555, label %str_overflow_abort557, label %b.new.buf.len2556

b.nogrow2542:                                     ; preds = %b.rn.new.len535
  br label %b.grow_done543

b.grow_done543:                                   ; preds = %b.nogrow2542, %b.new.buf.len2556
  %b.rn.data564 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 1
  %b.rn.data565 = load ptr, ptr %b.rn.data564, align 8
  %b.rn.dst566 = getelementptr i8, ptr %b.rn.data565, i64 %b.rn.cur.len531
  br i1 true, label %br.b1.135, label %br.c2.135

b.new.buf.len2556:                                ; preds = %abort.dead558, %b.grow2541
  %arena.cur559 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2560 = call ptr @dva_arena_alloc(ptr %arena.cur559, i64 %sum554)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2560, ptr align 1 %b.cur.data2552, i64 %b.cur.len2550, i1 false)
  %b.grow2.nul561 = getelementptr i8, ptr %b.new.buf2560, i64 %b.cur.len2550
  store i8 0, ptr %b.grow2.nul561, align 1
  %b.new.data2.gep562 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 1
  store ptr %b.new.buf2560, ptr %b.new.data2.gep562, align 8
  %b.new.cap2.gep563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 2
  store i64 %b.new.cap548, ptr %b.new.cap2.gep563, align 8
  br label %b.grow_done543

str_overflow_abort557:                            ; preds = %b.grow2541
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead558:                                    ; No predecessors!
  br label %b.new.buf.len2556

br.b1.135:                                        ; preds = %b.grow_done543
  store i8 34, ptr %b.rn.dst566, align 1
  br label %br.done.135

br.c2.135:                                        ; preds = %b.grow_done543
  br i1 true, label %br.b2.135, label %br.c3.135

br.b2.135:                                        ; preds = %br.c2.135
  store i8 -64, ptr %b.rn.dst566, align 1
  %br.dst1567 = getelementptr i8, ptr %b.rn.dst566, i64 1
  store i8 -94, ptr %br.dst1567, align 1
  br label %br.done.135

br.c3.135:                                        ; preds = %br.c2.135
  br i1 true, label %br.b3.135, label %br.b4.135

br.b3.135:                                        ; preds = %br.c3.135
  store i8 -32, ptr %b.rn.dst566, align 1
  %br.dst1.3568 = getelementptr i8, ptr %b.rn.dst566, i64 1
  store i8 -128, ptr %br.dst1.3568, align 1
  %br.dst2.3569 = getelementptr i8, ptr %b.rn.dst566, i64 2
  store i8 -94, ptr %br.dst2.3569, align 1
  br label %br.done.135

br.b4.135:                                        ; preds = %br.c3.135
  store i8 -16, ptr %b.rn.dst566, align 1
  %br.dst1.4570 = getelementptr i8, ptr %b.rn.dst566, i64 1
  store i8 -128, ptr %br.dst1.4570, align 1
  %br.dst2.4571 = getelementptr i8, ptr %b.rn.dst566, i64 2
  store i8 -128, ptr %br.dst2.4571, align 1
  %br.dst3.4572 = getelementptr i8, ptr %b.rn.dst566, i64 3
  store i8 -94, ptr %br.dst3.4572, align 1
  br label %br.done.135

br.done.135:                                      ; preds = %br.b4.135, %br.b3.135, %br.b2.135, %br.b1.135
  %br.nul573 = getelementptr i8, ptr %b.rn.data565, i64 %sum533
  store i8 0, ptr %br.nul573, align 1
  %b.len.gep574 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 0
  store i64 %sum533, ptr %b.len.gep574, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
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

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.buf.len3:                                       ; preds = %abort.dead, %str_ok
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

str_overflow_abort:                               ; preds = %str_ok
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit22

choice.else:                                      ; preds = %and.137.exit
  %var.load24 = load double, ptr %var.f, align 8
  %call.res25 = call { i64, ptr } @"str::from_float"(double %var.load24)
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  store { i64, ptr } %call.res25, ptr %ret.ub.alloc27, align 8
  store ptr %ret.ub.alloc27, ptr %var.s, align 8
  %var.load28 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.lhs.len32 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len33 = and i64 %eq.lhs.len32, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len32, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit22:                                    ; preds = %choice.exit29, %choice.then21
  %choice.res83 = phi ptr [ %ret.ub.alloc, %choice.then21 ], [ %choice.res82, %choice.exit29 ]
  %ret.pack84 = load { i64, ptr }, ptr %choice.res83, align 8
  ret { i64, ptr } %ret.pack84

choice.exit29:                                    ; preds = %choice.next31, %choice.case30
  %choice.res82 = phi ptr [ @str.17.struct, %choice.case30 ], [ %var.load81, %choice.next31 ]
  br label %choice.exit22

choice.case30:                                    ; preds = %str.eq.merge73
  br label %choice.exit29

choice.next31:                                    ; preds = %str.eq.merge73
  %var.load81 = load ptr, ptr %var.s, align 8
  br label %choice.exit29

str_ok:                                           ; preds = %tag.slow_check, %choice.else
  %eq.rhs.len = load i64, ptr @str.34.struct, align 8
  %eq.rhs.len34 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len33, %eq.rhs.len34
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data35 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.34.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data35, ptr %eq.rhs.data, i64 %eq.lhs.len33)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len36 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.lhs.len37 = load i64, ptr %eq.lhs.len36, align 8
  %eq.lhs.len38 = and i64 %eq.lhs.len37, 281474976710655
  %str.tag39 = lshr i64 %eq.lhs.len37, 48
  %tag.immortal41 = icmp eq i64 %str.tag39, 0
  %active.gen42 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current43 = icmp eq i64 %str.tag39, %active.gen42
  %tag.fast.ok44 = or i1 %tag.immortal41, %tag.current43
  br i1 %tag.fast.ok44, label %str_ok40, label %tag.slow_check45

str_ok40:                                         ; preds = %tag.slow_check45, %str.eq.merge
  %eq.rhs.len46 = load i64, ptr @str.35.struct, align 8
  %eq.rhs.len47 = and i64 %eq.rhs.len46, 281474976710655
  %eq.len48 = icmp eq i64 %eq.lhs.len38, %eq.rhs.len47
  br i1 %eq.len48, label %str.eq.then49, label %str.eq.else50

tag.slow_check45:                                 ; preds = %str.eq.merge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag39)
  br label %str_ok40

str.eq.then49:                                    ; preds = %str_ok40
  %eq.lhs.data52 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data53 = load ptr, ptr %eq.lhs.data52, align 8
  %eq.rhs.data54 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.35.struct, i32 0, i32 1), align 8
  %eq.memcmp55 = call i32 @memcmp(ptr %eq.lhs.data53, ptr %eq.rhs.data54, i64 %eq.lhs.len38)
  %eq.cmp.zero56 = icmp eq i32 %eq.memcmp55, 0
  br label %str.eq.merge51

str.eq.else50:                                    ; preds = %str_ok40
  br label %str.eq.merge51

str.eq.merge51:                                   ; preds = %str.eq.else50, %str.eq.then49
  %str.eq.result57 = phi i1 [ %eq.cmp.zero56, %str.eq.then49 ], [ false, %str.eq.else50 ]
  %case.or = or i1 %str.eq.result, %str.eq.result57
  %eq.lhs.len58 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.lhs.len59 = load i64, ptr %eq.lhs.len58, align 8
  %eq.lhs.len60 = and i64 %eq.lhs.len59, 281474976710655
  %str.tag61 = lshr i64 %eq.lhs.len59, 48
  %tag.immortal63 = icmp eq i64 %str.tag61, 0
  %active.gen64 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current65 = icmp eq i64 %str.tag61, %active.gen64
  %tag.fast.ok66 = or i1 %tag.immortal63, %tag.current65
  br i1 %tag.fast.ok66, label %str_ok62, label %tag.slow_check67

str_ok62:                                         ; preds = %tag.slow_check67, %str.eq.merge51
  %eq.rhs.len68 = load i64, ptr @str.36.struct, align 8
  %eq.rhs.len69 = and i64 %eq.rhs.len68, 281474976710655
  %eq.len70 = icmp eq i64 %eq.lhs.len60, %eq.rhs.len69
  br i1 %eq.len70, label %str.eq.then71, label %str.eq.else72

tag.slow_check67:                                 ; preds = %str.eq.merge51
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag61)
  br label %str_ok62

str.eq.then71:                                    ; preds = %str_ok62
  %eq.lhs.data74 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data75 = load ptr, ptr %eq.lhs.data74, align 8
  %eq.rhs.data76 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.36.struct, i32 0, i32 1), align 8
  %eq.memcmp77 = call i32 @memcmp(ptr %eq.lhs.data75, ptr %eq.rhs.data76, i64 %eq.lhs.len60)
  %eq.cmp.zero78 = icmp eq i32 %eq.memcmp77, 0
  br label %str.eq.merge73

str.eq.else72:                                    ; preds = %str_ok62
  br label %str.eq.merge73

str.eq.merge73:                                   ; preds = %str.eq.else72, %str.eq.then71
  %str.eq.result79 = phi i1 [ %eq.cmp.zero78, %str.eq.then71 ], [ false, %str.eq.else72 ]
  %case.or80 = or i1 %case.or, %str.eq.result79
  br i1 %case.or80, label %choice.case30, label %choice.next31
}

declare { i64, ptr } @"str::from_int"(i64) #0

declare { i64, ptr } @"str::from_float"(double) #0

define internal void @"json::#stringify_into"(ptr %0, ptr %1) #0 {
entry:
  %var._346 = alloca ptr, align 8
  %var._i345 = alloca i64, align 8
  %var.i339 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.144 = alloca i64, align 8
  %loop.idx.144 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._286 = alloca ptr, align 8
  %var._181 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.140 = alloca i64, align 8
  %loop.idx.140 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._144 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next280, %br.done.147, %br.done.142, %b.grow_done111, %b.grow_done63, %b.grow_done, %choice.case
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
  %str.tag = lshr i64 %app.str.len12, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %pay.float.merge
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data14 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len15 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len15, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len16

tag.slow_check:                                   ; preds = %pay.float.merge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.app.new.len16:                                  ; preds = %abort.dead, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap17, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok
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
  %tag.gep91 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id92 = load i64, ptr %tag.gep91, align 8
  %tag.match93 = icmp eq i64 %tag.id92, 3
  br i1 %tag.match93, label %choice.case89, label %choice.next90

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
  %str.tag41 = lshr i64 %app.str.len39, 48
  %tag.immortal43 = icmp eq i64 %str.tag41, 0
  %active.gen44 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current45 = icmp eq i64 %str.tag41, %active.gen44
  %tag.fast.ok46 = or i1 %tag.immortal43, %tag.current45
  br i1 %tag.fast.ok46, label %str_ok42, label %tag.slow_check47

str_ok42:                                         ; preds = %tag.slow_check47, %choice.exit37
  %app.str.data48 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data49 = load ptr, ptr %app.str.data48, align 8
  %b.app.cur.len50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.app.cur.len51 = load i64, ptr %b.app.cur.len50, align 8
  %b.app.new.len52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len51, i64 %app.str.len40)
  %sum53 = extractvalue { i64, i1 } %b.app.new.len52, 0
  %ovf54 = extractvalue { i64, i1 } %b.app.new.len52, 1
  br i1 %ovf54, label %str_overflow_abort56, label %b.app.new.len55

tag.slow_check47:                                 ; preds = %choice.exit37
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag41)
  br label %str_ok42

b.app.new.len55:                                  ; preds = %abort.dead57, %str_ok42
  %b.cap58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  %b.cap59 = load i64, ptr %b.cap58, align 8
  %b.need.grow60 = icmp slt i64 %b.cap59, %sum53
  br i1 %b.need.grow60, label %b.grow261, label %b.nogrow262

str_overflow_abort56:                             ; preds = %str_ok42
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %b.app.new.len55

b.grow261:                                        ; preds = %b.app.new.len55
  %b.cap264 = mul i64 %b.cap59, 2
  %b.cap.small65 = icmp slt i64 %b.cap264, 16
  %b.cap.grow66 = select i1 %b.cap.small65, i64 16, i64 %b.cap264
  %b.cap.need67 = icmp slt i64 %b.cap.grow66, %sum53
  %b.new.cap68 = select i1 %b.cap.need67, i64 %sum53, i64 %b.cap.grow66
  %b.cur.len269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.cur.len270 = load i64, ptr %b.cur.len269, align 8
  %b.cur.data271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.cur.data272 = load ptr, ptr %b.cur.data271, align 8
  %b.new.buf.len273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap68, i64 1)
  %sum74 = extractvalue { i64, i1 } %b.new.buf.len273, 0
  %ovf75 = extractvalue { i64, i1 } %b.new.buf.len273, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.new.buf.len276

b.nogrow262:                                      ; preds = %b.app.new.len55
  br label %b.grow_done63

b.grow_done63:                                    ; preds = %b.nogrow262, %b.new.buf.len276
  %b.app.data84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.app.data85 = load ptr, ptr %b.app.data84, align 8
  %b.app.dst86 = getelementptr i8, ptr %b.app.data85, i64 %b.app.cur.len51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst86, ptr align 1 %app.str.data49, i64 %app.str.len40, i1 false)
  %b.app.nul87 = getelementptr i8, ptr %b.app.data85, i64 %sum53
  store i8 0, ptr %b.app.nul87, align 1
  %b.len.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  store i64 %sum53, ptr %b.len.gep88, align 8
  br label %choice.exit

b.new.buf.len276:                                 ; preds = %abort.dead78, %b.grow261
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf280 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum74)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf280, ptr align 1 %b.cur.data272, i64 %b.cur.len270, i1 false)
  %b.grow2.nul81 = getelementptr i8, ptr %b.new.buf280, i64 %b.cur.len270
  store i8 0, ptr %b.grow2.nul81, align 1
  %b.new.data2.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  store ptr %b.new.buf280, ptr %b.new.data2.gep82, align 8
  %b.new.cap2.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  store i64 %b.new.cap68, ptr %b.new.cap2.gep83, align 8
  br label %b.grow_done63

str_overflow_abort77:                             ; preds = %b.grow261
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %b.new.buf.len276

choice.case89:                                    ; preds = %choice.next28
  %b.load94 = load ptr, ptr %var.b, align 8
  %app.str.len95 = load i64, ptr @str.17.struct, align 8
  %app.str.len96 = and i64 %app.str.len95, 281474976710655
  %app.str.data97 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.cur.len98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  %b.app.cur.len99 = load i64, ptr %b.app.cur.len98, align 8
  %b.app.new.len100 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len99, i64 %app.str.len96)
  %sum101 = extractvalue { i64, i1 } %b.app.new.len100, 0
  %ovf102 = extractvalue { i64, i1 } %b.app.new.len100, 1
  br i1 %ovf102, label %str_overflow_abort104, label %b.app.new.len103

choice.next90:                                    ; preds = %choice.next28
  %tag.gep139 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id140 = load i64, ptr %tag.gep139, align 8
  %tag.match141 = icmp eq i64 %tag.id140, 4
  br i1 %tag.match141, label %choice.case137, label %choice.next138

b.app.new.len103:                                 ; preds = %abort.dead105, %choice.case89
  %b.cap106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 2
  %b.cap107 = load i64, ptr %b.cap106, align 8
  %b.need.grow108 = icmp slt i64 %b.cap107, %sum101
  br i1 %b.need.grow108, label %b.grow2109, label %b.nogrow2110

str_overflow_abort104:                            ; preds = %choice.case89
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead105:                                    ; No predecessors!
  br label %b.app.new.len103

b.grow2109:                                       ; preds = %b.app.new.len103
  %b.cap2112 = mul i64 %b.cap107, 2
  %b.cap.small113 = icmp slt i64 %b.cap2112, 16
  %b.cap.grow114 = select i1 %b.cap.small113, i64 16, i64 %b.cap2112
  %b.cap.need115 = icmp slt i64 %b.cap.grow114, %sum101
  %b.new.cap116 = select i1 %b.cap.need115, i64 %sum101, i64 %b.cap.grow114
  %b.cur.len2117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  %b.cur.len2118 = load i64, ptr %b.cur.len2117, align 8
  %b.cur.data2119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 1
  %b.cur.data2120 = load ptr, ptr %b.cur.data2119, align 8
  %b.new.buf.len2121 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap116, i64 1)
  %sum122 = extractvalue { i64, i1 } %b.new.buf.len2121, 0
  %ovf123 = extractvalue { i64, i1 } %b.new.buf.len2121, 1
  br i1 %ovf123, label %str_overflow_abort125, label %b.new.buf.len2124

b.nogrow2110:                                     ; preds = %b.app.new.len103
  br label %b.grow_done111

b.grow_done111:                                   ; preds = %b.nogrow2110, %b.new.buf.len2124
  %b.app.data132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 1
  %b.app.data133 = load ptr, ptr %b.app.data132, align 8
  %b.app.dst134 = getelementptr i8, ptr %b.app.data133, i64 %b.app.cur.len99
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst134, ptr align 1 %app.str.data97, i64 %app.str.len96, i1 false)
  %b.app.nul135 = getelementptr i8, ptr %b.app.data133, i64 %sum101
  store i8 0, ptr %b.app.nul135, align 1
  %b.len.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  store i64 %sum101, ptr %b.len.gep136, align 8
  br label %choice.exit

b.new.buf.len2124:                                ; preds = %abort.dead126, %b.grow2109
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 %sum122)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2128, ptr align 1 %b.cur.data2120, i64 %b.cur.len2118, i1 false)
  %b.grow2.nul129 = getelementptr i8, ptr %b.new.buf2128, i64 %b.cur.len2118
  store i8 0, ptr %b.grow2.nul129, align 1
  %b.new.data2.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 1
  store ptr %b.new.buf2128, ptr %b.new.data2.gep130, align 8
  %b.new.cap2.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 2
  store i64 %b.new.cap116, ptr %b.new.cap2.gep131, align 8
  br label %b.grow_done111

str_overflow_abort125:                            ; preds = %b.grow2109
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead126:                                    ; No predecessors!
  br label %b.new.buf.len2124

choice.case137:                                   ; preds = %choice.next90
  %pay.gep142 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr143 = load ptr, ptr %pay.gep142, align 8
  store ptr %payload.ptr143, ptr %var._144, align 8
  store ptr %payload.ptr143, ptr %var.items, align 8
  %b.load145 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load145, i32 0, i32 0
  %b.rn.cur.len146 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len146, i64 1)
  %sum147 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf148 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf148, label %str_overflow_abort150, label %b.rn.new.len149

choice.next138:                                   ; preds = %choice.next90
  %tag.gep281 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id282 = load i64, ptr %tag.gep281, align 8
  %tag.match283 = icmp eq i64 %tag.id282, 5
  br i1 %tag.match283, label %choice.case279, label %choice.next280

b.rn.new.len149:                                  ; preds = %abort.dead151, %choice.case137
  %b.cap152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load145, i32 0, i32 2
  %b.cap153 = load i64, ptr %b.cap152, align 8
  %b.need.grow154 = icmp slt i64 %b.cap153, %sum147
  br i1 %b.need.grow154, label %b.grow2155, label %b.nogrow2156

str_overflow_abort150:                            ; preds = %choice.case137
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead151:                                    ; No predecessors!
  br label %b.rn.new.len149

b.grow2155:                                       ; preds = %b.rn.new.len149
  %b.cap2158 = mul i64 %b.cap153, 2
  %b.cap.small159 = icmp slt i64 %b.cap2158, 16
  %b.cap.grow160 = select i1 %b.cap.small159, i64 16, i64 %b.cap2158
  %b.cap.need161 = icmp slt i64 %b.cap.grow160, %sum147
  %b.new.cap162 = select i1 %b.cap.need161, i64 %sum147, i64 %b.cap.grow160
  %b.cur.len2163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load145, i32 0, i32 0
  %b.cur.len2164 = load i64, ptr %b.cur.len2163, align 8
  %b.cur.data2165 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load145, i32 0, i32 1
  %b.cur.data2166 = load ptr, ptr %b.cur.data2165, align 8
  %b.new.buf.len2167 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap162, i64 1)
  %sum168 = extractvalue { i64, i1 } %b.new.buf.len2167, 0
  %ovf169 = extractvalue { i64, i1 } %b.new.buf.len2167, 1
  br i1 %ovf169, label %str_overflow_abort171, label %b.new.buf.len2170

b.nogrow2156:                                     ; preds = %b.rn.new.len149
  br label %b.grow_done157

b.grow_done157:                                   ; preds = %b.nogrow2156, %b.new.buf.len2170
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load145, i32 0, i32 1
  %b.rn.data178 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data178, i64 %b.rn.cur.len146
  br i1 true, label %br.b1.139, label %br.c2.139

b.new.buf.len2170:                                ; preds = %abort.dead172, %b.grow2155
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 %sum168)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2174, ptr align 1 %b.cur.data2166, i64 %b.cur.len2164, i1 false)
  %b.grow2.nul175 = getelementptr i8, ptr %b.new.buf2174, i64 %b.cur.len2164
  store i8 0, ptr %b.grow2.nul175, align 1
  %b.new.data2.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load145, i32 0, i32 1
  store ptr %b.new.buf2174, ptr %b.new.data2.gep176, align 8
  %b.new.cap2.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load145, i32 0, i32 2
  store i64 %b.new.cap162, ptr %b.new.cap2.gep177, align 8
  br label %b.grow_done157

str_overflow_abort171:                            ; preds = %b.grow2155
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead172:                                    ; No predecessors!
  br label %b.new.buf.len2170

br.b1.139:                                        ; preds = %b.grow_done157
  store i8 91, ptr %b.rn.dst, align 1
  br label %br.done.139

br.c2.139:                                        ; preds = %b.grow_done157
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
  %br.nul = getelementptr i8, ptr %b.rn.data178, i64 %sum147
  store i8 0, ptr %br.nul, align 1
  %b.len.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load145, i32 0, i32 0
  store i64 %sum147, ptr %b.len.gep179, align 8
  %var.load180 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load180, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load180, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.140, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._144, align 8
  br label %loop.header.140

loop.header.140:                                  ; preds = %loop.latch.140, %br.done.139
  %counter.load = load i64, ptr %loop.idx.140, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.140, label %loop.exit.nat.140

loop.body.140:                                    ; preds = %loop.header.140
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.140, align 8
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

loop.exit.nat.140:                                ; preds = %loop.header.140
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.140

loop.latch.140:                                   ; preds = %choice.exit184
  %step.val = load i64, ptr %loop.step.140, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.140, align 8
  br label %loop.header.140

loop.exit.140:                                    ; preds = %loop.exit.nat.140
  store ptr %cycle.prev.u, ptr %var._144, align 8
  %b.load233 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 0
  %b.rn.cur.len235 = load i64, ptr %b.rn.cur.len234, align 8
  %b.rn.new.len236 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len235, i64 1)
  %sum237 = extractvalue { i64, i1 } %b.rn.new.len236, 0
  %ovf238 = extractvalue { i64, i1 } %b.rn.new.len236, 1
  br i1 %ovf238, label %str_overflow_abort240, label %b.rn.new.len239

choice.then183:                                   ; preds = %loop.body.140
  %b.load185 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.rn.cur.len187 = load i64, ptr %b.rn.cur.len186, align 8
  %b.rn.new.len188 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len187, i64 1)
  %sum189 = extractvalue { i64, i1 } %b.rn.new.len188, 0
  %ovf190 = extractvalue { i64, i1 } %b.rn.new.len188, 1
  br i1 %ovf190, label %str_overflow_abort192, label %b.rn.new.len191

choice.exit184:                                   ; preds = %br.done.141, %loop.body.140
  %var.load231 = load ptr, ptr %var.b, align 8
  %var.load232 = load ptr, ptr %var.item, align 8
  call void @"json::#stringify_into"(ptr %var.load231, ptr %var.load232)
  br label %loop.latch.140

b.rn.new.len191:                                  ; preds = %abort.dead193, %choice.then183
  %b.cap194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  %b.cap195 = load i64, ptr %b.cap194, align 8
  %b.need.grow196 = icmp slt i64 %b.cap195, %sum189
  br i1 %b.need.grow196, label %b.grow2197, label %b.nogrow2198

str_overflow_abort192:                            ; preds = %choice.then183
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead193:                                    ; No predecessors!
  br label %b.rn.new.len191

b.grow2197:                                       ; preds = %b.rn.new.len191
  %b.cap2200 = mul i64 %b.cap195, 2
  %b.cap.small201 = icmp slt i64 %b.cap2200, 16
  %b.cap.grow202 = select i1 %b.cap.small201, i64 16, i64 %b.cap2200
  %b.cap.need203 = icmp slt i64 %b.cap.grow202, %sum189
  %b.new.cap204 = select i1 %b.cap.need203, i64 %sum189, i64 %b.cap.grow202
  %b.cur.len2205 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  %b.cur.len2206 = load i64, ptr %b.cur.len2205, align 8
  %b.cur.data2207 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.cur.data2208 = load ptr, ptr %b.cur.data2207, align 8
  %b.new.buf.len2209 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap204, i64 1)
  %sum210 = extractvalue { i64, i1 } %b.new.buf.len2209, 0
  %ovf211 = extractvalue { i64, i1 } %b.new.buf.len2209, 1
  br i1 %ovf211, label %str_overflow_abort213, label %b.new.buf.len2212

b.nogrow2198:                                     ; preds = %b.rn.new.len191
  br label %b.grow_done199

b.grow_done199:                                   ; preds = %b.nogrow2198, %b.new.buf.len2212
  %b.rn.data220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  %b.rn.data221 = load ptr, ptr %b.rn.data220, align 8
  %b.rn.dst222 = getelementptr i8, ptr %b.rn.data221, i64 %b.rn.cur.len187
  br i1 true, label %br.b1.141, label %br.c2.141

b.new.buf.len2212:                                ; preds = %abort.dead214, %b.grow2197
  %arena.cur215 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 %sum210)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2216, ptr align 1 %b.cur.data2208, i64 %b.cur.len2206, i1 false)
  %b.grow2.nul217 = getelementptr i8, ptr %b.new.buf2216, i64 %b.cur.len2206
  store i8 0, ptr %b.grow2.nul217, align 1
  %b.new.data2.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 1
  store ptr %b.new.buf2216, ptr %b.new.data2.gep218, align 8
  %b.new.cap2.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 2
  store i64 %b.new.cap204, ptr %b.new.cap2.gep219, align 8
  br label %b.grow_done199

str_overflow_abort213:                            ; preds = %b.grow2197
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead214:                                    ; No predecessors!
  br label %b.new.buf.len2212

br.b1.141:                                        ; preds = %b.grow_done199
  store i8 44, ptr %b.rn.dst222, align 1
  br label %br.done.141

br.c2.141:                                        ; preds = %b.grow_done199
  br i1 true, label %br.b2.141, label %br.c3.141

br.b2.141:                                        ; preds = %br.c2.141
  store i8 -64, ptr %b.rn.dst222, align 1
  %br.dst1223 = getelementptr i8, ptr %b.rn.dst222, i64 1
  store i8 -84, ptr %br.dst1223, align 1
  br label %br.done.141

br.c3.141:                                        ; preds = %br.c2.141
  br i1 true, label %br.b3.141, label %br.b4.141

br.b3.141:                                        ; preds = %br.c3.141
  store i8 -32, ptr %b.rn.dst222, align 1
  %br.dst1.3224 = getelementptr i8, ptr %b.rn.dst222, i64 1
  store i8 -128, ptr %br.dst1.3224, align 1
  %br.dst2.3225 = getelementptr i8, ptr %b.rn.dst222, i64 2
  store i8 -84, ptr %br.dst2.3225, align 1
  br label %br.done.141

br.b4.141:                                        ; preds = %br.c3.141
  store i8 -16, ptr %b.rn.dst222, align 1
  %br.dst1.4226 = getelementptr i8, ptr %b.rn.dst222, i64 1
  store i8 -128, ptr %br.dst1.4226, align 1
  %br.dst2.4227 = getelementptr i8, ptr %b.rn.dst222, i64 2
  store i8 -128, ptr %br.dst2.4227, align 1
  %br.dst3.4228 = getelementptr i8, ptr %b.rn.dst222, i64 3
  store i8 -84, ptr %br.dst3.4228, align 1
  br label %br.done.141

br.done.141:                                      ; preds = %br.b4.141, %br.b3.141, %br.b2.141, %br.b1.141
  %br.nul229 = getelementptr i8, ptr %b.rn.data221, i64 %sum189
  store i8 0, ptr %br.nul229, align 1
  %b.len.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load185, i32 0, i32 0
  store i64 %sum189, ptr %b.len.gep230, align 8
  br label %choice.exit184

b.rn.new.len239:                                  ; preds = %abort.dead241, %loop.exit.140
  %b.cap242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 2
  %b.cap243 = load i64, ptr %b.cap242, align 8
  %b.need.grow244 = icmp slt i64 %b.cap243, %sum237
  br i1 %b.need.grow244, label %b.grow2245, label %b.nogrow2246

str_overflow_abort240:                            ; preds = %loop.exit.140
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead241:                                    ; No predecessors!
  br label %b.rn.new.len239

b.grow2245:                                       ; preds = %b.rn.new.len239
  %b.cap2248 = mul i64 %b.cap243, 2
  %b.cap.small249 = icmp slt i64 %b.cap2248, 16
  %b.cap.grow250 = select i1 %b.cap.small249, i64 16, i64 %b.cap2248
  %b.cap.need251 = icmp slt i64 %b.cap.grow250, %sum237
  %b.new.cap252 = select i1 %b.cap.need251, i64 %sum237, i64 %b.cap.grow250
  %b.cur.len2253 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 0
  %b.cur.len2254 = load i64, ptr %b.cur.len2253, align 8
  %b.cur.data2255 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 1
  %b.cur.data2256 = load ptr, ptr %b.cur.data2255, align 8
  %b.new.buf.len2257 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap252, i64 1)
  %sum258 = extractvalue { i64, i1 } %b.new.buf.len2257, 0
  %ovf259 = extractvalue { i64, i1 } %b.new.buf.len2257, 1
  br i1 %ovf259, label %str_overflow_abort261, label %b.new.buf.len2260

b.nogrow2246:                                     ; preds = %b.rn.new.len239
  br label %b.grow_done247

b.grow_done247:                                   ; preds = %b.nogrow2246, %b.new.buf.len2260
  %b.rn.data268 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 1
  %b.rn.data269 = load ptr, ptr %b.rn.data268, align 8
  %b.rn.dst270 = getelementptr i8, ptr %b.rn.data269, i64 %b.rn.cur.len235
  br i1 true, label %br.b1.142, label %br.c2.142

b.new.buf.len2260:                                ; preds = %abort.dead262, %b.grow2245
  %arena.cur263 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2264 = call ptr @dva_arena_alloc(ptr %arena.cur263, i64 %sum258)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2264, ptr align 1 %b.cur.data2256, i64 %b.cur.len2254, i1 false)
  %b.grow2.nul265 = getelementptr i8, ptr %b.new.buf2264, i64 %b.cur.len2254
  store i8 0, ptr %b.grow2.nul265, align 1
  %b.new.data2.gep266 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 1
  store ptr %b.new.buf2264, ptr %b.new.data2.gep266, align 8
  %b.new.cap2.gep267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 2
  store i64 %b.new.cap252, ptr %b.new.cap2.gep267, align 8
  br label %b.grow_done247

str_overflow_abort261:                            ; preds = %b.grow2245
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead262:                                    ; No predecessors!
  br label %b.new.buf.len2260

br.b1.142:                                        ; preds = %b.grow_done247
  store i8 93, ptr %b.rn.dst270, align 1
  br label %br.done.142

br.c2.142:                                        ; preds = %b.grow_done247
  br i1 true, label %br.b2.142, label %br.c3.142

br.b2.142:                                        ; preds = %br.c2.142
  store i8 -63, ptr %b.rn.dst270, align 1
  %br.dst1271 = getelementptr i8, ptr %b.rn.dst270, i64 1
  store i8 -99, ptr %br.dst1271, align 1
  br label %br.done.142

br.c3.142:                                        ; preds = %br.c2.142
  br i1 true, label %br.b3.142, label %br.b4.142

br.b3.142:                                        ; preds = %br.c3.142
  store i8 -32, ptr %b.rn.dst270, align 1
  %br.dst1.3272 = getelementptr i8, ptr %b.rn.dst270, i64 1
  store i8 -127, ptr %br.dst1.3272, align 1
  %br.dst2.3273 = getelementptr i8, ptr %b.rn.dst270, i64 2
  store i8 -99, ptr %br.dst2.3273, align 1
  br label %br.done.142

br.b4.142:                                        ; preds = %br.c3.142
  store i8 -16, ptr %b.rn.dst270, align 1
  %br.dst1.4274 = getelementptr i8, ptr %b.rn.dst270, i64 1
  store i8 -128, ptr %br.dst1.4274, align 1
  %br.dst2.4275 = getelementptr i8, ptr %b.rn.dst270, i64 2
  store i8 -127, ptr %br.dst2.4275, align 1
  %br.dst3.4276 = getelementptr i8, ptr %b.rn.dst270, i64 3
  store i8 -99, ptr %br.dst3.4276, align 1
  br label %br.done.142

br.done.142:                                      ; preds = %br.b4.142, %br.b3.142, %br.b2.142, %br.b1.142
  %br.nul277 = getelementptr i8, ptr %b.rn.data269, i64 %sum237
  store i8 0, ptr %br.nul277, align 1
  %b.len.gep278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load233, i32 0, i32 0
  store i64 %sum237, ptr %b.len.gep278, align 8
  br label %choice.exit

choice.case279:                                   ; preds = %choice.next138
  %pay.gep284 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr285 = load ptr, ptr %pay.gep284, align 8
  store ptr %payload.ptr285, ptr %var._286, align 8
  store ptr %payload.ptr285, ptr %var.pairs, align 8
  %b.load287 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  %b.rn.cur.len289 = load i64, ptr %b.rn.cur.len288, align 8
  %b.rn.new.len290 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len289, i64 1)
  %sum291 = extractvalue { i64, i1 } %b.rn.new.len290, 0
  %ovf292 = extractvalue { i64, i1 } %b.rn.new.len290, 1
  br i1 %ovf292, label %str_overflow_abort294, label %b.rn.new.len293

choice.next280:                                   ; preds = %choice.next138
  br label %choice.exit

b.rn.new.len293:                                  ; preds = %abort.dead295, %choice.case279
  %b.cap296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 2
  %b.cap297 = load i64, ptr %b.cap296, align 8
  %b.need.grow298 = icmp slt i64 %b.cap297, %sum291
  br i1 %b.need.grow298, label %b.grow2299, label %b.nogrow2300

str_overflow_abort294:                            ; preds = %choice.case279
  call void @dva_abort_str_overflow_msg()
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
  br i1 true, label %br.b1.143, label %br.c2.143

b.new.buf.len2314:                                ; preds = %abort.dead316, %b.grow2299
  %arena.cur317 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead316:                                    ; No predecessors!
  br label %b.new.buf.len2314

br.b1.143:                                        ; preds = %b.grow_done301
  store i8 123, ptr %b.rn.dst324, align 1
  br label %br.done.143

br.c2.143:                                        ; preds = %b.grow_done301
  br i1 true, label %br.b2.143, label %br.c3.143

br.b2.143:                                        ; preds = %br.c2.143
  store i8 -63, ptr %b.rn.dst324, align 1
  %br.dst1325 = getelementptr i8, ptr %b.rn.dst324, i64 1
  store i8 -69, ptr %br.dst1325, align 1
  br label %br.done.143

br.c3.143:                                        ; preds = %br.c2.143
  br i1 true, label %br.b3.143, label %br.b4.143

br.b3.143:                                        ; preds = %br.c3.143
  store i8 -32, ptr %b.rn.dst324, align 1
  %br.dst1.3326 = getelementptr i8, ptr %b.rn.dst324, i64 1
  store i8 -127, ptr %br.dst1.3326, align 1
  %br.dst2.3327 = getelementptr i8, ptr %b.rn.dst324, i64 2
  store i8 -69, ptr %br.dst2.3327, align 1
  br label %br.done.143

br.b4.143:                                        ; preds = %br.c3.143
  store i8 -16, ptr %b.rn.dst324, align 1
  %br.dst1.4328 = getelementptr i8, ptr %b.rn.dst324, i64 1
  store i8 -128, ptr %br.dst1.4328, align 1
  %br.dst2.4329 = getelementptr i8, ptr %b.rn.dst324, i64 2
  store i8 -127, ptr %br.dst2.4329, align 1
  %br.dst3.4330 = getelementptr i8, ptr %b.rn.dst324, i64 3
  store i8 -69, ptr %br.dst3.4330, align 1
  br label %br.done.143

br.done.143:                                      ; preds = %br.b4.143, %br.b3.143, %br.b2.143, %br.b1.143
  %br.nul331 = getelementptr i8, ptr %b.rn.data323, i64 %sum291
  store i8 0, ptr %br.nul331, align 1
  %b.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  store i64 %sum291, ptr %b.len.gep332, align 8
  %var.load333 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep334 = getelementptr inbounds { ptr, i64 }, ptr %var.load333, i32 0, i32 1
  %sl.len.raw335 = load i64, ptr %sl.len.gep334, align 8
  %sl.len336 = and i64 %sl.len.raw335, 4611686018427387903
  %sl.data.gep337 = getelementptr inbounds { ptr, i64 }, ptr %var.load333, i32 0, i32 0
  %sl.data338 = load ptr, ptr %sl.data.gep337, align 8
  store i64 0, ptr %loop.idx.144, align 8
  store i64 0, ptr %var.i339, align 8
  %cycle.prev.u340 = load ptr, ptr %var._286, align 8
  br label %loop.header.144

loop.header.144:                                  ; preds = %loop.latch.144, %br.done.143
  %counter.load341 = load i64, ptr %loop.idx.144, align 8
  %loop.cond342 = icmp slt i64 %counter.load341, %sl.len336
  br i1 %loop.cond342, label %loop.body.144, label %loop.exit.nat.144

loop.body.144:                                    ; preds = %loop.header.144
  %loop.rel.i344 = sub i64 %counter.load341, 0
  store i64 1, ptr %loop.step.144, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load333, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.144:                                ; preds = %loop.header.144
  %loop.rel.end343 = sub i64 %counter.load341, 0
  store i64 %loop.rel.end343, ptr %var.i339, align 8
  br label %loop.exit.144

loop.latch.144:                                   ; preds = %br.done.146
  %step.val449 = load i64, ptr %loop.step.144, align 8
  %loop.next450 = add i64 %counter.load341, %step.val449
  store i64 %loop.next450, ptr %loop.idx.144, align 8
  br label %loop.header.144

loop.exit.144:                                    ; preds = %loop.exit.nat.144
  store ptr %cycle.prev.u340, ptr %var._286, align 8
  %b.load451 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 0
  %b.rn.cur.len453 = load i64, ptr %b.rn.cur.len452, align 8
  %b.rn.new.len454 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len453, i64 1)
  %sum455 = extractvalue { i64, i1 } %b.rn.new.len454, 0
  %ovf456 = extractvalue { i64, i1 } %b.rn.new.len454, 1
  br i1 %ovf456, label %str_overflow_abort458, label %b.rn.new.len457

sl.rec.elem.pbb:                                  ; preds = %loop.body.144
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data338, i64 %counter.load341
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.144
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data338, i64 %counter.load341
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i344, ptr %var._i345, align 8
  store ptr %sl.rec.elem, ptr %var._346, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i344, ptr %var.i339, align 8
  %var.load347 = load i64, ptr %var.i339, align 8
  %cmptmp348 = icmp sgt i64 %var.load347, 0
  br i1 %cmptmp348, label %choice.then349, label %choice.exit350

choice.then349:                                   ; preds = %sl.rec.elem.dbb
  %b.load351 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len352 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 0
  %b.rn.cur.len353 = load i64, ptr %b.rn.cur.len352, align 8
  %b.rn.new.len354 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len353, i64 1)
  %sum355 = extractvalue { i64, i1 } %b.rn.new.len354, 0
  %ovf356 = extractvalue { i64, i1 } %b.rn.new.len354, 1
  br i1 %ovf356, label %str_overflow_abort358, label %b.rn.new.len357

choice.exit350:                                   ; preds = %br.done.145, %sl.rec.elem.dbb
  %var.load397 = load ptr, ptr %var.b, align 8
  %var.load398 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load398, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load397, ptr %fld.load)
  %b.load399 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len400 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 0
  %b.rn.cur.len401 = load i64, ptr %b.rn.cur.len400, align 8
  %b.rn.new.len402 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len401, i64 1)
  %sum403 = extractvalue { i64, i1 } %b.rn.new.len402, 0
  %ovf404 = extractvalue { i64, i1 } %b.rn.new.len402, 1
  br i1 %ovf404, label %str_overflow_abort406, label %b.rn.new.len405

b.rn.new.len357:                                  ; preds = %abort.dead359, %choice.then349
  %b.cap360 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 2
  %b.cap361 = load i64, ptr %b.cap360, align 8
  %b.need.grow362 = icmp slt i64 %b.cap361, %sum355
  br i1 %b.need.grow362, label %b.grow2363, label %b.nogrow2364

str_overflow_abort358:                            ; preds = %choice.then349
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead359:                                    ; No predecessors!
  br label %b.rn.new.len357

b.grow2363:                                       ; preds = %b.rn.new.len357
  %b.cap2366 = mul i64 %b.cap361, 2
  %b.cap.small367 = icmp slt i64 %b.cap2366, 16
  %b.cap.grow368 = select i1 %b.cap.small367, i64 16, i64 %b.cap2366
  %b.cap.need369 = icmp slt i64 %b.cap.grow368, %sum355
  %b.new.cap370 = select i1 %b.cap.need369, i64 %sum355, i64 %b.cap.grow368
  %b.cur.len2371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 0
  %b.cur.len2372 = load i64, ptr %b.cur.len2371, align 8
  %b.cur.data2373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 1
  %b.cur.data2374 = load ptr, ptr %b.cur.data2373, align 8
  %b.new.buf.len2375 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap370, i64 1)
  %sum376 = extractvalue { i64, i1 } %b.new.buf.len2375, 0
  %ovf377 = extractvalue { i64, i1 } %b.new.buf.len2375, 1
  br i1 %ovf377, label %str_overflow_abort379, label %b.new.buf.len2378

b.nogrow2364:                                     ; preds = %b.rn.new.len357
  br label %b.grow_done365

b.grow_done365:                                   ; preds = %b.nogrow2364, %b.new.buf.len2378
  %b.rn.data386 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 1
  %b.rn.data387 = load ptr, ptr %b.rn.data386, align 8
  %b.rn.dst388 = getelementptr i8, ptr %b.rn.data387, i64 %b.rn.cur.len353
  br i1 true, label %br.b1.145, label %br.c2.145

b.new.buf.len2378:                                ; preds = %abort.dead380, %b.grow2363
  %arena.cur381 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2382 = call ptr @dva_arena_alloc(ptr %arena.cur381, i64 %sum376)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2382, ptr align 1 %b.cur.data2374, i64 %b.cur.len2372, i1 false)
  %b.grow2.nul383 = getelementptr i8, ptr %b.new.buf2382, i64 %b.cur.len2372
  store i8 0, ptr %b.grow2.nul383, align 1
  %b.new.data2.gep384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 1
  store ptr %b.new.buf2382, ptr %b.new.data2.gep384, align 8
  %b.new.cap2.gep385 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 2
  store i64 %b.new.cap370, ptr %b.new.cap2.gep385, align 8
  br label %b.grow_done365

str_overflow_abort379:                            ; preds = %b.grow2363
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead380:                                    ; No predecessors!
  br label %b.new.buf.len2378

br.b1.145:                                        ; preds = %b.grow_done365
  store i8 44, ptr %b.rn.dst388, align 1
  br label %br.done.145

br.c2.145:                                        ; preds = %b.grow_done365
  br i1 true, label %br.b2.145, label %br.c3.145

br.b2.145:                                        ; preds = %br.c2.145
  store i8 -64, ptr %b.rn.dst388, align 1
  %br.dst1389 = getelementptr i8, ptr %b.rn.dst388, i64 1
  store i8 -84, ptr %br.dst1389, align 1
  br label %br.done.145

br.c3.145:                                        ; preds = %br.c2.145
  br i1 true, label %br.b3.145, label %br.b4.145

br.b3.145:                                        ; preds = %br.c3.145
  store i8 -32, ptr %b.rn.dst388, align 1
  %br.dst1.3390 = getelementptr i8, ptr %b.rn.dst388, i64 1
  store i8 -128, ptr %br.dst1.3390, align 1
  %br.dst2.3391 = getelementptr i8, ptr %b.rn.dst388, i64 2
  store i8 -84, ptr %br.dst2.3391, align 1
  br label %br.done.145

br.b4.145:                                        ; preds = %br.c3.145
  store i8 -16, ptr %b.rn.dst388, align 1
  %br.dst1.4392 = getelementptr i8, ptr %b.rn.dst388, i64 1
  store i8 -128, ptr %br.dst1.4392, align 1
  %br.dst2.4393 = getelementptr i8, ptr %b.rn.dst388, i64 2
  store i8 -128, ptr %br.dst2.4393, align 1
  %br.dst3.4394 = getelementptr i8, ptr %b.rn.dst388, i64 3
  store i8 -84, ptr %br.dst3.4394, align 1
  br label %br.done.145

br.done.145:                                      ; preds = %br.b4.145, %br.b3.145, %br.b2.145, %br.b1.145
  %br.nul395 = getelementptr i8, ptr %b.rn.data387, i64 %sum355
  store i8 0, ptr %br.nul395, align 1
  %b.len.gep396 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 0
  store i64 %sum355, ptr %b.len.gep396, align 8
  br label %choice.exit350

b.rn.new.len405:                                  ; preds = %abort.dead407, %choice.exit350
  %b.cap408 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 2
  %b.cap409 = load i64, ptr %b.cap408, align 8
  %b.need.grow410 = icmp slt i64 %b.cap409, %sum403
  br i1 %b.need.grow410, label %b.grow2411, label %b.nogrow2412

str_overflow_abort406:                            ; preds = %choice.exit350
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead407:                                    ; No predecessors!
  br label %b.rn.new.len405

b.grow2411:                                       ; preds = %b.rn.new.len405
  %b.cap2414 = mul i64 %b.cap409, 2
  %b.cap.small415 = icmp slt i64 %b.cap2414, 16
  %b.cap.grow416 = select i1 %b.cap.small415, i64 16, i64 %b.cap2414
  %b.cap.need417 = icmp slt i64 %b.cap.grow416, %sum403
  %b.new.cap418 = select i1 %b.cap.need417, i64 %sum403, i64 %b.cap.grow416
  %b.cur.len2419 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 0
  %b.cur.len2420 = load i64, ptr %b.cur.len2419, align 8
  %b.cur.data2421 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 1
  %b.cur.data2422 = load ptr, ptr %b.cur.data2421, align 8
  %b.new.buf.len2423 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap418, i64 1)
  %sum424 = extractvalue { i64, i1 } %b.new.buf.len2423, 0
  %ovf425 = extractvalue { i64, i1 } %b.new.buf.len2423, 1
  br i1 %ovf425, label %str_overflow_abort427, label %b.new.buf.len2426

b.nogrow2412:                                     ; preds = %b.rn.new.len405
  br label %b.grow_done413

b.grow_done413:                                   ; preds = %b.nogrow2412, %b.new.buf.len2426
  %b.rn.data434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 1
  %b.rn.data435 = load ptr, ptr %b.rn.data434, align 8
  %b.rn.dst436 = getelementptr i8, ptr %b.rn.data435, i64 %b.rn.cur.len401
  br i1 true, label %br.b1.146, label %br.c2.146

b.new.buf.len2426:                                ; preds = %abort.dead428, %b.grow2411
  %arena.cur429 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2430 = call ptr @dva_arena_alloc(ptr %arena.cur429, i64 %sum424)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2430, ptr align 1 %b.cur.data2422, i64 %b.cur.len2420, i1 false)
  %b.grow2.nul431 = getelementptr i8, ptr %b.new.buf2430, i64 %b.cur.len2420
  store i8 0, ptr %b.grow2.nul431, align 1
  %b.new.data2.gep432 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 1
  store ptr %b.new.buf2430, ptr %b.new.data2.gep432, align 8
  %b.new.cap2.gep433 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 2
  store i64 %b.new.cap418, ptr %b.new.cap2.gep433, align 8
  br label %b.grow_done413

str_overflow_abort427:                            ; preds = %b.grow2411
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead428:                                    ; No predecessors!
  br label %b.new.buf.len2426

br.b1.146:                                        ; preds = %b.grow_done413
  store i8 58, ptr %b.rn.dst436, align 1
  br label %br.done.146

br.c2.146:                                        ; preds = %b.grow_done413
  br i1 true, label %br.b2.146, label %br.c3.146

br.b2.146:                                        ; preds = %br.c2.146
  store i8 -64, ptr %b.rn.dst436, align 1
  %br.dst1437 = getelementptr i8, ptr %b.rn.dst436, i64 1
  store i8 -70, ptr %br.dst1437, align 1
  br label %br.done.146

br.c3.146:                                        ; preds = %br.c2.146
  br i1 true, label %br.b3.146, label %br.b4.146

br.b3.146:                                        ; preds = %br.c3.146
  store i8 -32, ptr %b.rn.dst436, align 1
  %br.dst1.3438 = getelementptr i8, ptr %b.rn.dst436, i64 1
  store i8 -128, ptr %br.dst1.3438, align 1
  %br.dst2.3439 = getelementptr i8, ptr %b.rn.dst436, i64 2
  store i8 -70, ptr %br.dst2.3439, align 1
  br label %br.done.146

br.b4.146:                                        ; preds = %br.c3.146
  store i8 -16, ptr %b.rn.dst436, align 1
  %br.dst1.4440 = getelementptr i8, ptr %b.rn.dst436, i64 1
  store i8 -128, ptr %br.dst1.4440, align 1
  %br.dst2.4441 = getelementptr i8, ptr %b.rn.dst436, i64 2
  store i8 -128, ptr %br.dst2.4441, align 1
  %br.dst3.4442 = getelementptr i8, ptr %b.rn.dst436, i64 3
  store i8 -70, ptr %br.dst3.4442, align 1
  br label %br.done.146

br.done.146:                                      ; preds = %br.b4.146, %br.b3.146, %br.b2.146, %br.b1.146
  %br.nul443 = getelementptr i8, ptr %b.rn.data435, i64 %sum403
  store i8 0, ptr %br.nul443, align 1
  %b.len.gep444 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load399, i32 0, i32 0
  store i64 %sum403, ptr %b.len.gep444, align 8
  %var.load445 = load ptr, ptr %var.b, align 8
  %var.load446 = load ptr, ptr %var.p, align 8
  %fld.gep447 = getelementptr inbounds { ptr, ptr }, ptr %var.load446, i32 0, i32 1
  %fld.load448 = load ptr, ptr %fld.gep447, align 8
  call void @"json::#stringify_into"(ptr %var.load445, ptr %fld.load448)
  br label %loop.latch.144

b.rn.new.len457:                                  ; preds = %abort.dead459, %loop.exit.144
  %b.cap460 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 2
  %b.cap461 = load i64, ptr %b.cap460, align 8
  %b.need.grow462 = icmp slt i64 %b.cap461, %sum455
  br i1 %b.need.grow462, label %b.grow2463, label %b.nogrow2464

str_overflow_abort458:                            ; preds = %loop.exit.144
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead459:                                    ; No predecessors!
  br label %b.rn.new.len457

b.grow2463:                                       ; preds = %b.rn.new.len457
  %b.cap2466 = mul i64 %b.cap461, 2
  %b.cap.small467 = icmp slt i64 %b.cap2466, 16
  %b.cap.grow468 = select i1 %b.cap.small467, i64 16, i64 %b.cap2466
  %b.cap.need469 = icmp slt i64 %b.cap.grow468, %sum455
  %b.new.cap470 = select i1 %b.cap.need469, i64 %sum455, i64 %b.cap.grow468
  %b.cur.len2471 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 0
  %b.cur.len2472 = load i64, ptr %b.cur.len2471, align 8
  %b.cur.data2473 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 1
  %b.cur.data2474 = load ptr, ptr %b.cur.data2473, align 8
  %b.new.buf.len2475 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap470, i64 1)
  %sum476 = extractvalue { i64, i1 } %b.new.buf.len2475, 0
  %ovf477 = extractvalue { i64, i1 } %b.new.buf.len2475, 1
  br i1 %ovf477, label %str_overflow_abort479, label %b.new.buf.len2478

b.nogrow2464:                                     ; preds = %b.rn.new.len457
  br label %b.grow_done465

b.grow_done465:                                   ; preds = %b.nogrow2464, %b.new.buf.len2478
  %b.rn.data486 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 1
  %b.rn.data487 = load ptr, ptr %b.rn.data486, align 8
  %b.rn.dst488 = getelementptr i8, ptr %b.rn.data487, i64 %b.rn.cur.len453
  br i1 true, label %br.b1.147, label %br.c2.147

b.new.buf.len2478:                                ; preds = %abort.dead480, %b.grow2463
  %arena.cur481 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2482 = call ptr @dva_arena_alloc(ptr %arena.cur481, i64 %sum476)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2482, ptr align 1 %b.cur.data2474, i64 %b.cur.len2472, i1 false)
  %b.grow2.nul483 = getelementptr i8, ptr %b.new.buf2482, i64 %b.cur.len2472
  store i8 0, ptr %b.grow2.nul483, align 1
  %b.new.data2.gep484 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 1
  store ptr %b.new.buf2482, ptr %b.new.data2.gep484, align 8
  %b.new.cap2.gep485 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 2
  store i64 %b.new.cap470, ptr %b.new.cap2.gep485, align 8
  br label %b.grow_done465

str_overflow_abort479:                            ; preds = %b.grow2463
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead480:                                    ; No predecessors!
  br label %b.new.buf.len2478

br.b1.147:                                        ; preds = %b.grow_done465
  store i8 125, ptr %b.rn.dst488, align 1
  br label %br.done.147

br.c2.147:                                        ; preds = %b.grow_done465
  br i1 true, label %br.b2.147, label %br.c3.147

br.b2.147:                                        ; preds = %br.c2.147
  store i8 -63, ptr %b.rn.dst488, align 1
  %br.dst1489 = getelementptr i8, ptr %b.rn.dst488, i64 1
  store i8 -67, ptr %br.dst1489, align 1
  br label %br.done.147

br.c3.147:                                        ; preds = %br.c2.147
  br i1 true, label %br.b3.147, label %br.b4.147

br.b3.147:                                        ; preds = %br.c3.147
  store i8 -32, ptr %b.rn.dst488, align 1
  %br.dst1.3490 = getelementptr i8, ptr %b.rn.dst488, i64 1
  store i8 -127, ptr %br.dst1.3490, align 1
  %br.dst2.3491 = getelementptr i8, ptr %b.rn.dst488, i64 2
  store i8 -67, ptr %br.dst2.3491, align 1
  br label %br.done.147

br.b4.147:                                        ; preds = %br.c3.147
  store i8 -16, ptr %b.rn.dst488, align 1
  %br.dst1.4492 = getelementptr i8, ptr %b.rn.dst488, i64 1
  store i8 -128, ptr %br.dst1.4492, align 1
  %br.dst2.4493 = getelementptr i8, ptr %b.rn.dst488, i64 2
  store i8 -127, ptr %br.dst2.4493, align 1
  %br.dst3.4494 = getelementptr i8, ptr %b.rn.dst488, i64 3
  store i8 -67, ptr %br.dst3.4494, align 1
  br label %br.done.147

br.done.147:                                      ; preds = %br.b4.147, %br.b3.147, %br.b2.147, %br.b1.147
  %br.nul495 = getelementptr i8, ptr %b.rn.data487, i64 %sum455
  store i8 0, ptr %br.nul495, align 1
  %b.len.gep496 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load451, i32 0, i32 0
  store i64 %sum455, ptr %b.len.gep496, align 8
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
  %var._492 = alloca ptr, align 8
  %var._i491 = alloca i64, align 8
  %var.i485 = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.153 = alloca i64, align 8
  %loop.idx.153 = alloca i64, align 8
  %var.pairs = alloca ptr, align 8
  %var._384 = alloca ptr, align 8
  %var._236 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.item = alloca ptr, align 8
  %loop.step.150 = alloca i64, align 8
  %loop.idx.150 = alloca i64, align 8
  %var.items = alloca ptr, align 8
  %var._144 = alloca ptr, align 8
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

choice.exit:                                      ; preds = %choice.next378, %choice.exit392, %choice.exit148, %b.grow_done111, %b.grow_done63, %b.grow_done, %choice.case
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
  %str.tag = lshr i64 %app.str.len12, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %pay.float.merge
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data14 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len15 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len15, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len16

tag.slow_check:                                   ; preds = %pay.float.merge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

b.app.new.len16:                                  ; preds = %abort.dead, %str_ok
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap17, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort:                               ; preds = %str_ok
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
  %tag.gep91 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id92 = load i64, ptr %tag.gep91, align 8
  %tag.match93 = icmp eq i64 %tag.id92, 3
  br i1 %tag.match93, label %choice.case89, label %choice.next90

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
  %str.tag41 = lshr i64 %app.str.len39, 48
  %tag.immortal43 = icmp eq i64 %str.tag41, 0
  %active.gen44 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current45 = icmp eq i64 %str.tag41, %active.gen44
  %tag.fast.ok46 = or i1 %tag.immortal43, %tag.current45
  br i1 %tag.fast.ok46, label %str_ok42, label %tag.slow_check47

str_ok42:                                         ; preds = %tag.slow_check47, %choice.exit37
  %app.str.data48 = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %app.str.data49 = load ptr, ptr %app.str.data48, align 8
  %b.app.cur.len50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.app.cur.len51 = load i64, ptr %b.app.cur.len50, align 8
  %b.app.new.len52 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len51, i64 %app.str.len40)
  %sum53 = extractvalue { i64, i1 } %b.app.new.len52, 0
  %ovf54 = extractvalue { i64, i1 } %b.app.new.len52, 1
  br i1 %ovf54, label %str_overflow_abort56, label %b.app.new.len55

tag.slow_check47:                                 ; preds = %choice.exit37
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag41)
  br label %str_ok42

b.app.new.len55:                                  ; preds = %abort.dead57, %str_ok42
  %b.cap58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  %b.cap59 = load i64, ptr %b.cap58, align 8
  %b.need.grow60 = icmp slt i64 %b.cap59, %sum53
  br i1 %b.need.grow60, label %b.grow261, label %b.nogrow262

str_overflow_abort56:                             ; preds = %str_ok42
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %b.app.new.len55

b.grow261:                                        ; preds = %b.app.new.len55
  %b.cap264 = mul i64 %b.cap59, 2
  %b.cap.small65 = icmp slt i64 %b.cap264, 16
  %b.cap.grow66 = select i1 %b.cap.small65, i64 16, i64 %b.cap264
  %b.cap.need67 = icmp slt i64 %b.cap.grow66, %sum53
  %b.new.cap68 = select i1 %b.cap.need67, i64 %sum53, i64 %b.cap.grow66
  %b.cur.len269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  %b.cur.len270 = load i64, ptr %b.cur.len269, align 8
  %b.cur.data271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.cur.data272 = load ptr, ptr %b.cur.data271, align 8
  %b.new.buf.len273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap68, i64 1)
  %sum74 = extractvalue { i64, i1 } %b.new.buf.len273, 0
  %ovf75 = extractvalue { i64, i1 } %b.new.buf.len273, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.new.buf.len276

b.nogrow262:                                      ; preds = %b.app.new.len55
  br label %b.grow_done63

b.grow_done63:                                    ; preds = %b.nogrow262, %b.new.buf.len276
  %b.app.data84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  %b.app.data85 = load ptr, ptr %b.app.data84, align 8
  %b.app.dst86 = getelementptr i8, ptr %b.app.data85, i64 %b.app.cur.len51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst86, ptr align 1 %app.str.data49, i64 %app.str.len40, i1 false)
  %b.app.nul87 = getelementptr i8, ptr %b.app.data85, i64 %sum53
  store i8 0, ptr %b.app.nul87, align 1
  %b.len.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 0
  store i64 %sum53, ptr %b.len.gep88, align 8
  br label %choice.exit

b.new.buf.len276:                                 ; preds = %abort.dead78, %b.grow261
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf280 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum74)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf280, ptr align 1 %b.cur.data272, i64 %b.cur.len270, i1 false)
  %b.grow2.nul81 = getelementptr i8, ptr %b.new.buf280, i64 %b.cur.len270
  store i8 0, ptr %b.grow2.nul81, align 1
  %b.new.data2.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 1
  store ptr %b.new.buf280, ptr %b.new.data2.gep82, align 8
  %b.new.cap2.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load35, i32 0, i32 2
  store i64 %b.new.cap68, ptr %b.new.cap2.gep83, align 8
  br label %b.grow_done63

str_overflow_abort77:                             ; preds = %b.grow261
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %b.new.buf.len276

choice.case89:                                    ; preds = %choice.next28
  %b.load94 = load ptr, ptr %var.b, align 8
  %app.str.len95 = load i64, ptr @str.17.struct, align 8
  %app.str.len96 = and i64 %app.str.len95, 281474976710655
  %app.str.data97 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %b.app.cur.len98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  %b.app.cur.len99 = load i64, ptr %b.app.cur.len98, align 8
  %b.app.new.len100 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len99, i64 %app.str.len96)
  %sum101 = extractvalue { i64, i1 } %b.app.new.len100, 0
  %ovf102 = extractvalue { i64, i1 } %b.app.new.len100, 1
  br i1 %ovf102, label %str_overflow_abort104, label %b.app.new.len103

choice.next90:                                    ; preds = %choice.next28
  %tag.gep139 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id140 = load i64, ptr %tag.gep139, align 8
  %tag.match141 = icmp eq i64 %tag.id140, 4
  br i1 %tag.match141, label %choice.case137, label %choice.next138

b.app.new.len103:                                 ; preds = %abort.dead105, %choice.case89
  %b.cap106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 2
  %b.cap107 = load i64, ptr %b.cap106, align 8
  %b.need.grow108 = icmp slt i64 %b.cap107, %sum101
  br i1 %b.need.grow108, label %b.grow2109, label %b.nogrow2110

str_overflow_abort104:                            ; preds = %choice.case89
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead105:                                    ; No predecessors!
  br label %b.app.new.len103

b.grow2109:                                       ; preds = %b.app.new.len103
  %b.cap2112 = mul i64 %b.cap107, 2
  %b.cap.small113 = icmp slt i64 %b.cap2112, 16
  %b.cap.grow114 = select i1 %b.cap.small113, i64 16, i64 %b.cap2112
  %b.cap.need115 = icmp slt i64 %b.cap.grow114, %sum101
  %b.new.cap116 = select i1 %b.cap.need115, i64 %sum101, i64 %b.cap.grow114
  %b.cur.len2117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  %b.cur.len2118 = load i64, ptr %b.cur.len2117, align 8
  %b.cur.data2119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 1
  %b.cur.data2120 = load ptr, ptr %b.cur.data2119, align 8
  %b.new.buf.len2121 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap116, i64 1)
  %sum122 = extractvalue { i64, i1 } %b.new.buf.len2121, 0
  %ovf123 = extractvalue { i64, i1 } %b.new.buf.len2121, 1
  br i1 %ovf123, label %str_overflow_abort125, label %b.new.buf.len2124

b.nogrow2110:                                     ; preds = %b.app.new.len103
  br label %b.grow_done111

b.grow_done111:                                   ; preds = %b.nogrow2110, %b.new.buf.len2124
  %b.app.data132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 1
  %b.app.data133 = load ptr, ptr %b.app.data132, align 8
  %b.app.dst134 = getelementptr i8, ptr %b.app.data133, i64 %b.app.cur.len99
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst134, ptr align 1 %app.str.data97, i64 %app.str.len96, i1 false)
  %b.app.nul135 = getelementptr i8, ptr %b.app.data133, i64 %sum101
  store i8 0, ptr %b.app.nul135, align 1
  %b.len.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  store i64 %sum101, ptr %b.len.gep136, align 8
  br label %choice.exit

b.new.buf.len2124:                                ; preds = %abort.dead126, %b.grow2109
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 %sum122)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2128, ptr align 1 %b.cur.data2120, i64 %b.cur.len2118, i1 false)
  %b.grow2.nul129 = getelementptr i8, ptr %b.new.buf2128, i64 %b.cur.len2118
  store i8 0, ptr %b.grow2.nul129, align 1
  %b.new.data2.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 1
  store ptr %b.new.buf2128, ptr %b.new.data2.gep130, align 8
  %b.new.cap2.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 2
  store i64 %b.new.cap116, ptr %b.new.cap2.gep131, align 8
  br label %b.grow_done111

str_overflow_abort125:                            ; preds = %b.grow2109
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead126:                                    ; No predecessors!
  br label %b.new.buf.len2124

choice.case137:                                   ; preds = %choice.next90
  %pay.gep142 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr143 = load ptr, ptr %pay.gep142, align 8
  store ptr %payload.ptr143, ptr %var._144, align 8
  store ptr %payload.ptr143, ptr %var.items, align 8
  %var.load145 = load ptr, ptr %var.items, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load145, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  %cmptmp = icmp eq i64 %slice.len, 0
  br i1 %cmptmp, label %choice.then146, label %choice.else147

choice.next138:                                   ; preds = %choice.next90
  %tag.gep379 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id380 = load i64, ptr %tag.gep379, align 8
  %tag.match381 = icmp eq i64 %tag.id380, 5
  br i1 %tag.match381, label %choice.case377, label %choice.next378

choice.then146:                                   ; preds = %choice.case137
  %b.load149 = load ptr, ptr %var.b, align 8
  %app.str.len150 = load i64, ptr @str.37.struct, align 8
  %app.str.len151 = and i64 %app.str.len150, 281474976710655
  %app.str.data152 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.37.struct, i32 0, i32 1), align 8
  %b.app.cur.len153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load149, i32 0, i32 0
  %b.app.cur.len154 = load i64, ptr %b.app.cur.len153, align 8
  %b.app.new.len155 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len154, i64 %app.str.len151)
  %sum156 = extractvalue { i64, i1 } %b.app.new.len155, 0
  %ovf157 = extractvalue { i64, i1 } %b.app.new.len155, 1
  br i1 %ovf157, label %str_overflow_abort159, label %b.app.new.len158

choice.else147:                                   ; preds = %choice.case137
  %b.load192 = load ptr, ptr %var.b, align 8
  %app.str.len193 = load i64, ptr @str.38.struct, align 8
  %app.str.len194 = and i64 %app.str.len193, 281474976710655
  %app.str.data195 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.38.struct, i32 0, i32 1), align 8
  %b.app.cur.len196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load192, i32 0, i32 0
  %b.app.cur.len197 = load i64, ptr %b.app.cur.len196, align 8
  %b.app.new.len198 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len197, i64 %app.str.len194)
  %sum199 = extractvalue { i64, i1 } %b.app.new.len198, 0
  %ovf200 = extractvalue { i64, i1 } %b.app.new.len198, 1
  br i1 %ovf200, label %str_overflow_abort202, label %b.app.new.len201

choice.exit148:                                   ; preds = %br.done.152, %b.grow_done166
  br label %choice.exit

b.app.new.len158:                                 ; preds = %abort.dead160, %choice.then146
  %b.cap161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load149, i32 0, i32 2
  %b.cap162 = load i64, ptr %b.cap161, align 8
  %b.need.grow163 = icmp slt i64 %b.cap162, %sum156
  br i1 %b.need.grow163, label %b.grow2164, label %b.nogrow2165

str_overflow_abort159:                            ; preds = %choice.then146
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead160:                                    ; No predecessors!
  br label %b.app.new.len158

b.grow2164:                                       ; preds = %b.app.new.len158
  %b.cap2167 = mul i64 %b.cap162, 2
  %b.cap.small168 = icmp slt i64 %b.cap2167, 16
  %b.cap.grow169 = select i1 %b.cap.small168, i64 16, i64 %b.cap2167
  %b.cap.need170 = icmp slt i64 %b.cap.grow169, %sum156
  %b.new.cap171 = select i1 %b.cap.need170, i64 %sum156, i64 %b.cap.grow169
  %b.cur.len2172 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load149, i32 0, i32 0
  %b.cur.len2173 = load i64, ptr %b.cur.len2172, align 8
  %b.cur.data2174 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load149, i32 0, i32 1
  %b.cur.data2175 = load ptr, ptr %b.cur.data2174, align 8
  %b.new.buf.len2176 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap171, i64 1)
  %sum177 = extractvalue { i64, i1 } %b.new.buf.len2176, 0
  %ovf178 = extractvalue { i64, i1 } %b.new.buf.len2176, 1
  br i1 %ovf178, label %str_overflow_abort180, label %b.new.buf.len2179

b.nogrow2165:                                     ; preds = %b.app.new.len158
  br label %b.grow_done166

b.grow_done166:                                   ; preds = %b.nogrow2165, %b.new.buf.len2179
  %b.app.data187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load149, i32 0, i32 1
  %b.app.data188 = load ptr, ptr %b.app.data187, align 8
  %b.app.dst189 = getelementptr i8, ptr %b.app.data188, i64 %b.app.cur.len154
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst189, ptr align 1 %app.str.data152, i64 %app.str.len151, i1 false)
  %b.app.nul190 = getelementptr i8, ptr %b.app.data188, i64 %sum156
  store i8 0, ptr %b.app.nul190, align 1
  %b.len.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load149, i32 0, i32 0
  store i64 %sum156, ptr %b.len.gep191, align 8
  br label %choice.exit148

b.new.buf.len2179:                                ; preds = %abort.dead181, %b.grow2164
  %arena.cur182 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 %sum177)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2183, ptr align 1 %b.cur.data2175, i64 %b.cur.len2173, i1 false)
  %b.grow2.nul184 = getelementptr i8, ptr %b.new.buf2183, i64 %b.cur.len2173
  store i8 0, ptr %b.grow2.nul184, align 1
  %b.new.data2.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load149, i32 0, i32 1
  store ptr %b.new.buf2183, ptr %b.new.data2.gep185, align 8
  %b.new.cap2.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load149, i32 0, i32 2
  store i64 %b.new.cap171, ptr %b.new.cap2.gep186, align 8
  br label %b.grow_done166

str_overflow_abort180:                            ; preds = %b.grow2164
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead181:                                    ; No predecessors!
  br label %b.new.buf.len2179

b.app.new.len201:                                 ; preds = %abort.dead203, %choice.else147
  %b.cap204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load192, i32 0, i32 2
  %b.cap205 = load i64, ptr %b.cap204, align 8
  %b.need.grow206 = icmp slt i64 %b.cap205, %sum199
  br i1 %b.need.grow206, label %b.grow2207, label %b.nogrow2208

str_overflow_abort202:                            ; preds = %choice.else147
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead203:                                    ; No predecessors!
  br label %b.app.new.len201

b.grow2207:                                       ; preds = %b.app.new.len201
  %b.cap2210 = mul i64 %b.cap205, 2
  %b.cap.small211 = icmp slt i64 %b.cap2210, 16
  %b.cap.grow212 = select i1 %b.cap.small211, i64 16, i64 %b.cap2210
  %b.cap.need213 = icmp slt i64 %b.cap.grow212, %sum199
  %b.new.cap214 = select i1 %b.cap.need213, i64 %sum199, i64 %b.cap.grow212
  %b.cur.len2215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load192, i32 0, i32 0
  %b.cur.len2216 = load i64, ptr %b.cur.len2215, align 8
  %b.cur.data2217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load192, i32 0, i32 1
  %b.cur.data2218 = load ptr, ptr %b.cur.data2217, align 8
  %b.new.buf.len2219 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap214, i64 1)
  %sum220 = extractvalue { i64, i1 } %b.new.buf.len2219, 0
  %ovf221 = extractvalue { i64, i1 } %b.new.buf.len2219, 1
  br i1 %ovf221, label %str_overflow_abort223, label %b.new.buf.len2222

b.nogrow2208:                                     ; preds = %b.app.new.len201
  br label %b.grow_done209

b.grow_done209:                                   ; preds = %b.nogrow2208, %b.new.buf.len2222
  %b.app.data230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load192, i32 0, i32 1
  %b.app.data231 = load ptr, ptr %b.app.data230, align 8
  %b.app.dst232 = getelementptr i8, ptr %b.app.data231, i64 %b.app.cur.len197
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst232, ptr align 1 %app.str.data195, i64 %app.str.len194, i1 false)
  %b.app.nul233 = getelementptr i8, ptr %b.app.data231, i64 %sum199
  store i8 0, ptr %b.app.nul233, align 1
  %b.len.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load192, i32 0, i32 0
  store i64 %sum199, ptr %b.len.gep234, align 8
  %var.load235 = load ptr, ptr %var.items, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load235, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load235, i32 0, i32 0
  %sl.data = load ptr, ptr %sl.data.gep, align 8
  store i64 0, ptr %loop.idx.150, align 8
  store i64 0, ptr %var.i, align 8
  %cycle.prev.u = load ptr, ptr %var._144, align 8
  br label %loop.header.150

b.new.buf.len2222:                                ; preds = %abort.dead224, %b.grow2207
  %arena.cur225 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 %sum220)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2226, ptr align 1 %b.cur.data2218, i64 %b.cur.len2216, i1 false)
  %b.grow2.nul227 = getelementptr i8, ptr %b.new.buf2226, i64 %b.cur.len2216
  store i8 0, ptr %b.grow2.nul227, align 1
  %b.new.data2.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load192, i32 0, i32 1
  store ptr %b.new.buf2226, ptr %b.new.data2.gep228, align 8
  %b.new.cap2.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load192, i32 0, i32 2
  store i64 %b.new.cap214, ptr %b.new.cap2.gep229, align 8
  br label %b.grow_done209

str_overflow_abort223:                            ; preds = %b.grow2207
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead224:                                    ; No predecessors!
  br label %b.new.buf.len2222

loop.header.150:                                  ; preds = %loop.latch.150, %b.grow_done209
  %counter.load = load i64, ptr %loop.idx.150, align 8
  %loop.cond = icmp slt i64 %counter.load, %sl.len
  br i1 %loop.cond, label %loop.body.150, label %loop.exit.nat.150

loop.body.150:                                    ; preds = %loop.header.150
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.150, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load235, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %counter.load
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %counter.load
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %sl.elem.val, ptr %var._236, align 8
  store ptr %sl.elem.val, ptr %var.item, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load237 = load i64, ptr %var.i, align 8
  %cmptmp238 = icmp sgt i64 %var.load237, 0
  br i1 %cmptmp238, label %choice.then239, label %choice.exit240

loop.exit.nat.150:                                ; preds = %loop.header.150
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.150

loop.latch.150:                                   ; preds = %choice.exit240
  %step.val = load i64, ptr %loop.step.150, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.150, align 8
  br label %loop.header.150

loop.exit.150:                                    ; preds = %loop.exit.nat.150
  store ptr %cycle.prev.u, ptr %var._144, align 8
  %b.load292 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 0
  %b.rn.cur.len293 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len293, i64 1)
  %sum294 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf295 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf295, label %str_overflow_abort297, label %b.rn.new.len296

choice.then239:                                   ; preds = %loop.body.150
  %b.load241 = load ptr, ptr %var.b, align 8
  %app.str.len242 = load i64, ptr @str.39.struct, align 8
  %app.str.len243 = and i64 %app.str.len242, 281474976710655
  %app.str.data244 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.cur.len245 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load241, i32 0, i32 0
  %b.app.cur.len246 = load i64, ptr %b.app.cur.len245, align 8
  %b.app.new.len247 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len246, i64 %app.str.len243)
  %sum248 = extractvalue { i64, i1 } %b.app.new.len247, 0
  %ovf249 = extractvalue { i64, i1 } %b.app.new.len247, 1
  br i1 %ovf249, label %str_overflow_abort251, label %b.app.new.len250

choice.exit240:                                   ; preds = %b.grow_done258, %loop.body.150
  %var.load284 = load ptr, ptr %var.b, align 8
  %var.load285 = load i64, ptr %var.depth, align 8
  %addtmp = add i64 %var.load285, 1
  %var.load286 = load i64, ptr %var.indent, align 8
  %multmp = mul i64 %addtmp, %var.load286
  call void @"json::#append_indent"(ptr %var.load284, i64 %multmp)
  %var.load287 = load ptr, ptr %var.b, align 8
  %var.load288 = load ptr, ptr %var.item, align 8
  %var.load289 = load i64, ptr %var.indent, align 8
  %var.load290 = load i64, ptr %var.depth, align 8
  %addtmp291 = add i64 %var.load290, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load287, ptr %var.load288, i64 %var.load289, i64 %addtmp291)
  br label %loop.latch.150

b.app.new.len250:                                 ; preds = %abort.dead252, %choice.then239
  %b.cap253 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load241, i32 0, i32 2
  %b.cap254 = load i64, ptr %b.cap253, align 8
  %b.need.grow255 = icmp slt i64 %b.cap254, %sum248
  br i1 %b.need.grow255, label %b.grow2256, label %b.nogrow2257

str_overflow_abort251:                            ; preds = %choice.then239
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead252:                                    ; No predecessors!
  br label %b.app.new.len250

b.grow2256:                                       ; preds = %b.app.new.len250
  %b.cap2259 = mul i64 %b.cap254, 2
  %b.cap.small260 = icmp slt i64 %b.cap2259, 16
  %b.cap.grow261 = select i1 %b.cap.small260, i64 16, i64 %b.cap2259
  %b.cap.need262 = icmp slt i64 %b.cap.grow261, %sum248
  %b.new.cap263 = select i1 %b.cap.need262, i64 %sum248, i64 %b.cap.grow261
  %b.cur.len2264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load241, i32 0, i32 0
  %b.cur.len2265 = load i64, ptr %b.cur.len2264, align 8
  %b.cur.data2266 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load241, i32 0, i32 1
  %b.cur.data2267 = load ptr, ptr %b.cur.data2266, align 8
  %b.new.buf.len2268 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap263, i64 1)
  %sum269 = extractvalue { i64, i1 } %b.new.buf.len2268, 0
  %ovf270 = extractvalue { i64, i1 } %b.new.buf.len2268, 1
  br i1 %ovf270, label %str_overflow_abort272, label %b.new.buf.len2271

b.nogrow2257:                                     ; preds = %b.app.new.len250
  br label %b.grow_done258

b.grow_done258:                                   ; preds = %b.nogrow2257, %b.new.buf.len2271
  %b.app.data279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load241, i32 0, i32 1
  %b.app.data280 = load ptr, ptr %b.app.data279, align 8
  %b.app.dst281 = getelementptr i8, ptr %b.app.data280, i64 %b.app.cur.len246
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst281, ptr align 1 %app.str.data244, i64 %app.str.len243, i1 false)
  %b.app.nul282 = getelementptr i8, ptr %b.app.data280, i64 %sum248
  store i8 0, ptr %b.app.nul282, align 1
  %b.len.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load241, i32 0, i32 0
  store i64 %sum248, ptr %b.len.gep283, align 8
  br label %choice.exit240

b.new.buf.len2271:                                ; preds = %abort.dead273, %b.grow2256
  %arena.cur274 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 %sum269)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2275, ptr align 1 %b.cur.data2267, i64 %b.cur.len2265, i1 false)
  %b.grow2.nul276 = getelementptr i8, ptr %b.new.buf2275, i64 %b.cur.len2265
  store i8 0, ptr %b.grow2.nul276, align 1
  %b.new.data2.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load241, i32 0, i32 1
  store ptr %b.new.buf2275, ptr %b.new.data2.gep277, align 8
  %b.new.cap2.gep278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load241, i32 0, i32 2
  store i64 %b.new.cap263, ptr %b.new.cap2.gep278, align 8
  br label %b.grow_done258

str_overflow_abort272:                            ; preds = %b.grow2256
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead273:                                    ; No predecessors!
  br label %b.new.buf.len2271

b.rn.new.len296:                                  ; preds = %abort.dead298, %loop.exit.150
  %b.cap299 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 2
  %b.cap300 = load i64, ptr %b.cap299, align 8
  %b.need.grow301 = icmp slt i64 %b.cap300, %sum294
  br i1 %b.need.grow301, label %b.grow2302, label %b.nogrow2303

str_overflow_abort297:                            ; preds = %loop.exit.150
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead298:                                    ; No predecessors!
  br label %b.rn.new.len296

b.grow2302:                                       ; preds = %b.rn.new.len296
  %b.cap2305 = mul i64 %b.cap300, 2
  %b.cap.small306 = icmp slt i64 %b.cap2305, 16
  %b.cap.grow307 = select i1 %b.cap.small306, i64 16, i64 %b.cap2305
  %b.cap.need308 = icmp slt i64 %b.cap.grow307, %sum294
  %b.new.cap309 = select i1 %b.cap.need308, i64 %sum294, i64 %b.cap.grow307
  %b.cur.len2310 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 0
  %b.cur.len2311 = load i64, ptr %b.cur.len2310, align 8
  %b.cur.data2312 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 1
  %b.cur.data2313 = load ptr, ptr %b.cur.data2312, align 8
  %b.new.buf.len2314 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap309, i64 1)
  %sum315 = extractvalue { i64, i1 } %b.new.buf.len2314, 0
  %ovf316 = extractvalue { i64, i1 } %b.new.buf.len2314, 1
  br i1 %ovf316, label %str_overflow_abort318, label %b.new.buf.len2317

b.nogrow2303:                                     ; preds = %b.rn.new.len296
  br label %b.grow_done304

b.grow_done304:                                   ; preds = %b.nogrow2303, %b.new.buf.len2317
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 1
  %b.rn.data325 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data325, i64 %b.rn.cur.len293
  br i1 true, label %br.b1.151, label %br.c2.151

b.new.buf.len2317:                                ; preds = %abort.dead319, %b.grow2302
  %arena.cur320 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 %sum315)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2321, ptr align 1 %b.cur.data2313, i64 %b.cur.len2311, i1 false)
  %b.grow2.nul322 = getelementptr i8, ptr %b.new.buf2321, i64 %b.cur.len2311
  store i8 0, ptr %b.grow2.nul322, align 1
  %b.new.data2.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 1
  store ptr %b.new.buf2321, ptr %b.new.data2.gep323, align 8
  %b.new.cap2.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 2
  store i64 %b.new.cap309, ptr %b.new.cap2.gep324, align 8
  br label %b.grow_done304

str_overflow_abort318:                            ; preds = %b.grow2302
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead319:                                    ; No predecessors!
  br label %b.new.buf.len2317

br.b1.151:                                        ; preds = %b.grow_done304
  store i8 10, ptr %b.rn.dst, align 1
  br label %br.done.151

br.c2.151:                                        ; preds = %b.grow_done304
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
  %br.nul = getelementptr i8, ptr %b.rn.data325, i64 %sum294
  store i8 0, ptr %br.nul, align 1
  %b.len.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load292, i32 0, i32 0
  store i64 %sum294, ptr %b.len.gep326, align 8
  %var.load327 = load ptr, ptr %var.b, align 8
  %var.load328 = load i64, ptr %var.depth, align 8
  %var.load329 = load i64, ptr %var.indent, align 8
  %multmp330 = mul i64 %var.load328, %var.load329
  call void @"json::#append_indent"(ptr %var.load327, i64 %multmp330)
  %b.load331 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 0
  %b.rn.cur.len333 = load i64, ptr %b.rn.cur.len332, align 8
  %b.rn.new.len334 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len333, i64 1)
  %sum335 = extractvalue { i64, i1 } %b.rn.new.len334, 0
  %ovf336 = extractvalue { i64, i1 } %b.rn.new.len334, 1
  br i1 %ovf336, label %str_overflow_abort338, label %b.rn.new.len337

b.rn.new.len337:                                  ; preds = %abort.dead339, %br.done.151
  %b.cap340 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 2
  %b.cap341 = load i64, ptr %b.cap340, align 8
  %b.need.grow342 = icmp slt i64 %b.cap341, %sum335
  br i1 %b.need.grow342, label %b.grow2343, label %b.nogrow2344

str_overflow_abort338:                            ; preds = %br.done.151
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead339:                                    ; No predecessors!
  br label %b.rn.new.len337

b.grow2343:                                       ; preds = %b.rn.new.len337
  %b.cap2346 = mul i64 %b.cap341, 2
  %b.cap.small347 = icmp slt i64 %b.cap2346, 16
  %b.cap.grow348 = select i1 %b.cap.small347, i64 16, i64 %b.cap2346
  %b.cap.need349 = icmp slt i64 %b.cap.grow348, %sum335
  %b.new.cap350 = select i1 %b.cap.need349, i64 %sum335, i64 %b.cap.grow348
  %b.cur.len2351 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 0
  %b.cur.len2352 = load i64, ptr %b.cur.len2351, align 8
  %b.cur.data2353 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 1
  %b.cur.data2354 = load ptr, ptr %b.cur.data2353, align 8
  %b.new.buf.len2355 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap350, i64 1)
  %sum356 = extractvalue { i64, i1 } %b.new.buf.len2355, 0
  %ovf357 = extractvalue { i64, i1 } %b.new.buf.len2355, 1
  br i1 %ovf357, label %str_overflow_abort359, label %b.new.buf.len2358

b.nogrow2344:                                     ; preds = %b.rn.new.len337
  br label %b.grow_done345

b.grow_done345:                                   ; preds = %b.nogrow2344, %b.new.buf.len2358
  %b.rn.data366 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 1
  %b.rn.data367 = load ptr, ptr %b.rn.data366, align 8
  %b.rn.dst368 = getelementptr i8, ptr %b.rn.data367, i64 %b.rn.cur.len333
  br i1 true, label %br.b1.152, label %br.c2.152

b.new.buf.len2358:                                ; preds = %abort.dead360, %b.grow2343
  %arena.cur361 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2362 = call ptr @dva_arena_alloc(ptr %arena.cur361, i64 %sum356)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2362, ptr align 1 %b.cur.data2354, i64 %b.cur.len2352, i1 false)
  %b.grow2.nul363 = getelementptr i8, ptr %b.new.buf2362, i64 %b.cur.len2352
  store i8 0, ptr %b.grow2.nul363, align 1
  %b.new.data2.gep364 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 1
  store ptr %b.new.buf2362, ptr %b.new.data2.gep364, align 8
  %b.new.cap2.gep365 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 2
  store i64 %b.new.cap350, ptr %b.new.cap2.gep365, align 8
  br label %b.grow_done345

str_overflow_abort359:                            ; preds = %b.grow2343
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead360:                                    ; No predecessors!
  br label %b.new.buf.len2358

br.b1.152:                                        ; preds = %b.grow_done345
  store i8 93, ptr %b.rn.dst368, align 1
  br label %br.done.152

br.c2.152:                                        ; preds = %b.grow_done345
  br i1 true, label %br.b2.152, label %br.c3.152

br.b2.152:                                        ; preds = %br.c2.152
  store i8 -63, ptr %b.rn.dst368, align 1
  %br.dst1369 = getelementptr i8, ptr %b.rn.dst368, i64 1
  store i8 -99, ptr %br.dst1369, align 1
  br label %br.done.152

br.c3.152:                                        ; preds = %br.c2.152
  br i1 true, label %br.b3.152, label %br.b4.152

br.b3.152:                                        ; preds = %br.c3.152
  store i8 -32, ptr %b.rn.dst368, align 1
  %br.dst1.3370 = getelementptr i8, ptr %b.rn.dst368, i64 1
  store i8 -127, ptr %br.dst1.3370, align 1
  %br.dst2.3371 = getelementptr i8, ptr %b.rn.dst368, i64 2
  store i8 -99, ptr %br.dst2.3371, align 1
  br label %br.done.152

br.b4.152:                                        ; preds = %br.c3.152
  store i8 -16, ptr %b.rn.dst368, align 1
  %br.dst1.4372 = getelementptr i8, ptr %b.rn.dst368, i64 1
  store i8 -128, ptr %br.dst1.4372, align 1
  %br.dst2.4373 = getelementptr i8, ptr %b.rn.dst368, i64 2
  store i8 -127, ptr %br.dst2.4373, align 1
  %br.dst3.4374 = getelementptr i8, ptr %b.rn.dst368, i64 3
  store i8 -99, ptr %br.dst3.4374, align 1
  br label %br.done.152

br.done.152:                                      ; preds = %br.b4.152, %br.b3.152, %br.b2.152, %br.b1.152
  %br.nul375 = getelementptr i8, ptr %b.rn.data367, i64 %sum335
  store i8 0, ptr %br.nul375, align 1
  %b.len.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load331, i32 0, i32 0
  store i64 %sum335, ptr %b.len.gep376, align 8
  br label %choice.exit148

choice.case377:                                   ; preds = %choice.next138
  %pay.gep382 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr383 = load ptr, ptr %pay.gep382, align 8
  store ptr %payload.ptr383, ptr %var._384, align 8
  store ptr %payload.ptr383, ptr %var.pairs, align 8
  %var.load385 = load ptr, ptr %var.pairs, align 8
  %slice.len.gep386 = getelementptr inbounds { ptr, i64 }, ptr %var.load385, i32 0, i32 1
  %slice.len.raw387 = load i64, ptr %slice.len.gep386, align 8
  %slice.len388 = and i64 %slice.len.raw387, 4611686018427387903
  %cmptmp389 = icmp eq i64 %slice.len388, 0
  br i1 %cmptmp389, label %choice.then390, label %choice.else391

choice.next378:                                   ; preds = %choice.next138
  br label %choice.exit

choice.then390:                                   ; preds = %choice.case377
  %b.load393 = load ptr, ptr %var.b, align 8
  %app.str.len394 = load i64, ptr @str.40.struct, align 8
  %app.str.len395 = and i64 %app.str.len394, 281474976710655
  %app.str.data396 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.40.struct, i32 0, i32 1), align 8
  %b.app.cur.len397 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load393, i32 0, i32 0
  %b.app.cur.len398 = load i64, ptr %b.app.cur.len397, align 8
  %b.app.new.len399 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len398, i64 %app.str.len395)
  %sum400 = extractvalue { i64, i1 } %b.app.new.len399, 0
  %ovf401 = extractvalue { i64, i1 } %b.app.new.len399, 1
  br i1 %ovf401, label %str_overflow_abort403, label %b.app.new.len402

choice.else391:                                   ; preds = %choice.case377
  %b.load436 = load ptr, ptr %var.b, align 8
  %app.str.len437 = load i64, ptr @str.41.struct, align 8
  %app.str.len438 = and i64 %app.str.len437, 281474976710655
  %app.str.data439 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.41.struct, i32 0, i32 1), align 8
  %b.app.cur.len440 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 0
  %b.app.cur.len441 = load i64, ptr %b.app.cur.len440, align 8
  %b.app.new.len442 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len441, i64 %app.str.len438)
  %sum443 = extractvalue { i64, i1 } %b.app.new.len442, 0
  %ovf444 = extractvalue { i64, i1 } %b.app.new.len442, 1
  br i1 %ovf444, label %str_overflow_abort446, label %b.app.new.len445

choice.exit392:                                   ; preds = %br.done.155, %b.grow_done410
  br label %choice.exit

b.app.new.len402:                                 ; preds = %abort.dead404, %choice.then390
  %b.cap405 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load393, i32 0, i32 2
  %b.cap406 = load i64, ptr %b.cap405, align 8
  %b.need.grow407 = icmp slt i64 %b.cap406, %sum400
  br i1 %b.need.grow407, label %b.grow2408, label %b.nogrow2409

str_overflow_abort403:                            ; preds = %choice.then390
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead404:                                    ; No predecessors!
  br label %b.app.new.len402

b.grow2408:                                       ; preds = %b.app.new.len402
  %b.cap2411 = mul i64 %b.cap406, 2
  %b.cap.small412 = icmp slt i64 %b.cap2411, 16
  %b.cap.grow413 = select i1 %b.cap.small412, i64 16, i64 %b.cap2411
  %b.cap.need414 = icmp slt i64 %b.cap.grow413, %sum400
  %b.new.cap415 = select i1 %b.cap.need414, i64 %sum400, i64 %b.cap.grow413
  %b.cur.len2416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load393, i32 0, i32 0
  %b.cur.len2417 = load i64, ptr %b.cur.len2416, align 8
  %b.cur.data2418 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load393, i32 0, i32 1
  %b.cur.data2419 = load ptr, ptr %b.cur.data2418, align 8
  %b.new.buf.len2420 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap415, i64 1)
  %sum421 = extractvalue { i64, i1 } %b.new.buf.len2420, 0
  %ovf422 = extractvalue { i64, i1 } %b.new.buf.len2420, 1
  br i1 %ovf422, label %str_overflow_abort424, label %b.new.buf.len2423

b.nogrow2409:                                     ; preds = %b.app.new.len402
  br label %b.grow_done410

b.grow_done410:                                   ; preds = %b.nogrow2409, %b.new.buf.len2423
  %b.app.data431 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load393, i32 0, i32 1
  %b.app.data432 = load ptr, ptr %b.app.data431, align 8
  %b.app.dst433 = getelementptr i8, ptr %b.app.data432, i64 %b.app.cur.len398
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst433, ptr align 1 %app.str.data396, i64 %app.str.len395, i1 false)
  %b.app.nul434 = getelementptr i8, ptr %b.app.data432, i64 %sum400
  store i8 0, ptr %b.app.nul434, align 1
  %b.len.gep435 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load393, i32 0, i32 0
  store i64 %sum400, ptr %b.len.gep435, align 8
  br label %choice.exit392

b.new.buf.len2423:                                ; preds = %abort.dead425, %b.grow2408
  %arena.cur426 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2427 = call ptr @dva_arena_alloc(ptr %arena.cur426, i64 %sum421)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2427, ptr align 1 %b.cur.data2419, i64 %b.cur.len2417, i1 false)
  %b.grow2.nul428 = getelementptr i8, ptr %b.new.buf2427, i64 %b.cur.len2417
  store i8 0, ptr %b.grow2.nul428, align 1
  %b.new.data2.gep429 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load393, i32 0, i32 1
  store ptr %b.new.buf2427, ptr %b.new.data2.gep429, align 8
  %b.new.cap2.gep430 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load393, i32 0, i32 2
  store i64 %b.new.cap415, ptr %b.new.cap2.gep430, align 8
  br label %b.grow_done410

str_overflow_abort424:                            ; preds = %b.grow2408
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead425:                                    ; No predecessors!
  br label %b.new.buf.len2423

b.app.new.len445:                                 ; preds = %abort.dead447, %choice.else391
  %b.cap448 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 2
  %b.cap449 = load i64, ptr %b.cap448, align 8
  %b.need.grow450 = icmp slt i64 %b.cap449, %sum443
  br i1 %b.need.grow450, label %b.grow2451, label %b.nogrow2452

str_overflow_abort446:                            ; preds = %choice.else391
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead447:                                    ; No predecessors!
  br label %b.app.new.len445

b.grow2451:                                       ; preds = %b.app.new.len445
  %b.cap2454 = mul i64 %b.cap449, 2
  %b.cap.small455 = icmp slt i64 %b.cap2454, 16
  %b.cap.grow456 = select i1 %b.cap.small455, i64 16, i64 %b.cap2454
  %b.cap.need457 = icmp slt i64 %b.cap.grow456, %sum443
  %b.new.cap458 = select i1 %b.cap.need457, i64 %sum443, i64 %b.cap.grow456
  %b.cur.len2459 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 0
  %b.cur.len2460 = load i64, ptr %b.cur.len2459, align 8
  %b.cur.data2461 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 1
  %b.cur.data2462 = load ptr, ptr %b.cur.data2461, align 8
  %b.new.buf.len2463 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap458, i64 1)
  %sum464 = extractvalue { i64, i1 } %b.new.buf.len2463, 0
  %ovf465 = extractvalue { i64, i1 } %b.new.buf.len2463, 1
  br i1 %ovf465, label %str_overflow_abort467, label %b.new.buf.len2466

b.nogrow2452:                                     ; preds = %b.app.new.len445
  br label %b.grow_done453

b.grow_done453:                                   ; preds = %b.nogrow2452, %b.new.buf.len2466
  %b.app.data474 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 1
  %b.app.data475 = load ptr, ptr %b.app.data474, align 8
  %b.app.dst476 = getelementptr i8, ptr %b.app.data475, i64 %b.app.cur.len441
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst476, ptr align 1 %app.str.data439, i64 %app.str.len438, i1 false)
  %b.app.nul477 = getelementptr i8, ptr %b.app.data475, i64 %sum443
  store i8 0, ptr %b.app.nul477, align 1
  %b.len.gep478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 0
  store i64 %sum443, ptr %b.len.gep478, align 8
  %var.load479 = load ptr, ptr %var.pairs, align 8
  %sl.len.gep480 = getelementptr inbounds { ptr, i64 }, ptr %var.load479, i32 0, i32 1
  %sl.len.raw481 = load i64, ptr %sl.len.gep480, align 8
  %sl.len482 = and i64 %sl.len.raw481, 4611686018427387903
  %sl.data.gep483 = getelementptr inbounds { ptr, i64 }, ptr %var.load479, i32 0, i32 0
  %sl.data484 = load ptr, ptr %sl.data.gep483, align 8
  store i64 0, ptr %loop.idx.153, align 8
  store i64 0, ptr %var.i485, align 8
  %cycle.prev.u486 = load ptr, ptr %var._384, align 8
  br label %loop.header.153

b.new.buf.len2466:                                ; preds = %abort.dead468, %b.grow2451
  %arena.cur469 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 %sum464)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2470, ptr align 1 %b.cur.data2462, i64 %b.cur.len2460, i1 false)
  %b.grow2.nul471 = getelementptr i8, ptr %b.new.buf2470, i64 %b.cur.len2460
  store i8 0, ptr %b.grow2.nul471, align 1
  %b.new.data2.gep472 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 1
  store ptr %b.new.buf2470, ptr %b.new.data2.gep472, align 8
  %b.new.cap2.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load436, i32 0, i32 2
  store i64 %b.new.cap458, ptr %b.new.cap2.gep473, align 8
  br label %b.grow_done453

str_overflow_abort467:                            ; preds = %b.grow2451
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead468:                                    ; No predecessors!
  br label %b.new.buf.len2466

loop.header.153:                                  ; preds = %loop.latch.153, %b.grow_done453
  %counter.load487 = load i64, ptr %loop.idx.153, align 8
  %loop.cond488 = icmp slt i64 %counter.load487, %sl.len482
  br i1 %loop.cond488, label %loop.body.153, label %loop.exit.nat.153

loop.body.153:                                    ; preds = %loop.header.153
  %loop.rel.i490 = sub i64 %counter.load487, 0
  store i64 1, ptr %loop.step.153, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %var.load479, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.nat.153:                                ; preds = %loop.header.153
  %loop.rel.end489 = sub i64 %counter.load487, 0
  store i64 %loop.rel.end489, ptr %var.i485, align 8
  br label %loop.exit.153

loop.latch.153:                                   ; preds = %b.grow_done564
  %step.val597 = load i64, ptr %loop.step.153, align 8
  %loop.next598 = add i64 %counter.load487, %step.val597
  store i64 %loop.next598, ptr %loop.idx.153, align 8
  br label %loop.header.153

loop.exit.153:                                    ; preds = %loop.exit.nat.153
  store ptr %cycle.prev.u486, ptr %var._384, align 8
  %b.load599 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len600 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load599, i32 0, i32 0
  %b.rn.cur.len601 = load i64, ptr %b.rn.cur.len600, align 8
  %b.rn.new.len602 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len601, i64 1)
  %sum603 = extractvalue { i64, i1 } %b.rn.new.len602, 0
  %ovf604 = extractvalue { i64, i1 } %b.rn.new.len602, 1
  br i1 %ovf604, label %str_overflow_abort606, label %b.rn.new.len605

sl.rec.elem.pbb:                                  ; preds = %loop.body.153
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data484, i64 %counter.load487
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.153
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data484, i64 %counter.load487
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  store i64 %loop.rel.i490, ptr %var._i491, align 8
  store ptr %sl.rec.elem, ptr %var._492, align 8
  store ptr %sl.rec.elem, ptr %var.p, align 8
  store i64 %loop.rel.i490, ptr %var.i485, align 8
  %var.load493 = load i64, ptr %var.i485, align 8
  %cmptmp494 = icmp sgt i64 %var.load493, 0
  br i1 %cmptmp494, label %choice.then495, label %choice.exit496

choice.then495:                                   ; preds = %sl.rec.elem.dbb
  %b.load497 = load ptr, ptr %var.b, align 8
  %app.str.len498 = load i64, ptr @str.39.struct, align 8
  %app.str.len499 = and i64 %app.str.len498, 281474976710655
  %app.str.data500 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.39.struct, i32 0, i32 1), align 8
  %b.app.cur.len501 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 0
  %b.app.cur.len502 = load i64, ptr %b.app.cur.len501, align 8
  %b.app.new.len503 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len502, i64 %app.str.len499)
  %sum504 = extractvalue { i64, i1 } %b.app.new.len503, 0
  %ovf505 = extractvalue { i64, i1 } %b.app.new.len503, 1
  br i1 %ovf505, label %str_overflow_abort507, label %b.app.new.len506

choice.exit496:                                   ; preds = %b.grow_done514, %sl.rec.elem.dbb
  %var.load540 = load ptr, ptr %var.b, align 8
  %var.load541 = load i64, ptr %var.depth, align 8
  %addtmp542 = add i64 %var.load541, 1
  %var.load543 = load i64, ptr %var.indent, align 8
  %multmp544 = mul i64 %addtmp542, %var.load543
  call void @"json::#append_indent"(ptr %var.load540, i64 %multmp544)
  %var.load545 = load ptr, ptr %var.b, align 8
  %var.load546 = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load546, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  call void @"json::escape_string_into"(ptr %var.load545, ptr %fld.load)
  %b.load547 = load ptr, ptr %var.b, align 8
  %app.str.len548 = load i64, ptr @str.42.struct, align 8
  %app.str.len549 = and i64 %app.str.len548, 281474976710655
  %app.str.data550 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.42.struct, i32 0, i32 1), align 8
  %b.app.cur.len551 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 0
  %b.app.cur.len552 = load i64, ptr %b.app.cur.len551, align 8
  %b.app.new.len553 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len552, i64 %app.str.len549)
  %sum554 = extractvalue { i64, i1 } %b.app.new.len553, 0
  %ovf555 = extractvalue { i64, i1 } %b.app.new.len553, 1
  br i1 %ovf555, label %str_overflow_abort557, label %b.app.new.len556

b.app.new.len506:                                 ; preds = %abort.dead508, %choice.then495
  %b.cap509 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 2
  %b.cap510 = load i64, ptr %b.cap509, align 8
  %b.need.grow511 = icmp slt i64 %b.cap510, %sum504
  br i1 %b.need.grow511, label %b.grow2512, label %b.nogrow2513

str_overflow_abort507:                            ; preds = %choice.then495
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead508:                                    ; No predecessors!
  br label %b.app.new.len506

b.grow2512:                                       ; preds = %b.app.new.len506
  %b.cap2515 = mul i64 %b.cap510, 2
  %b.cap.small516 = icmp slt i64 %b.cap2515, 16
  %b.cap.grow517 = select i1 %b.cap.small516, i64 16, i64 %b.cap2515
  %b.cap.need518 = icmp slt i64 %b.cap.grow517, %sum504
  %b.new.cap519 = select i1 %b.cap.need518, i64 %sum504, i64 %b.cap.grow517
  %b.cur.len2520 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 0
  %b.cur.len2521 = load i64, ptr %b.cur.len2520, align 8
  %b.cur.data2522 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 1
  %b.cur.data2523 = load ptr, ptr %b.cur.data2522, align 8
  %b.new.buf.len2524 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap519, i64 1)
  %sum525 = extractvalue { i64, i1 } %b.new.buf.len2524, 0
  %ovf526 = extractvalue { i64, i1 } %b.new.buf.len2524, 1
  br i1 %ovf526, label %str_overflow_abort528, label %b.new.buf.len2527

b.nogrow2513:                                     ; preds = %b.app.new.len506
  br label %b.grow_done514

b.grow_done514:                                   ; preds = %b.nogrow2513, %b.new.buf.len2527
  %b.app.data535 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 1
  %b.app.data536 = load ptr, ptr %b.app.data535, align 8
  %b.app.dst537 = getelementptr i8, ptr %b.app.data536, i64 %b.app.cur.len502
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst537, ptr align 1 %app.str.data500, i64 %app.str.len499, i1 false)
  %b.app.nul538 = getelementptr i8, ptr %b.app.data536, i64 %sum504
  store i8 0, ptr %b.app.nul538, align 1
  %b.len.gep539 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 0
  store i64 %sum504, ptr %b.len.gep539, align 8
  br label %choice.exit496

b.new.buf.len2527:                                ; preds = %abort.dead529, %b.grow2512
  %arena.cur530 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2531 = call ptr @dva_arena_alloc(ptr %arena.cur530, i64 %sum525)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2531, ptr align 1 %b.cur.data2523, i64 %b.cur.len2521, i1 false)
  %b.grow2.nul532 = getelementptr i8, ptr %b.new.buf2531, i64 %b.cur.len2521
  store i8 0, ptr %b.grow2.nul532, align 1
  %b.new.data2.gep533 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 1
  store ptr %b.new.buf2531, ptr %b.new.data2.gep533, align 8
  %b.new.cap2.gep534 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load497, i32 0, i32 2
  store i64 %b.new.cap519, ptr %b.new.cap2.gep534, align 8
  br label %b.grow_done514

str_overflow_abort528:                            ; preds = %b.grow2512
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead529:                                    ; No predecessors!
  br label %b.new.buf.len2527

b.app.new.len556:                                 ; preds = %abort.dead558, %choice.exit496
  %b.cap559 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 2
  %b.cap560 = load i64, ptr %b.cap559, align 8
  %b.need.grow561 = icmp slt i64 %b.cap560, %sum554
  br i1 %b.need.grow561, label %b.grow2562, label %b.nogrow2563

str_overflow_abort557:                            ; preds = %choice.exit496
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead558:                                    ; No predecessors!
  br label %b.app.new.len556

b.grow2562:                                       ; preds = %b.app.new.len556
  %b.cap2565 = mul i64 %b.cap560, 2
  %b.cap.small566 = icmp slt i64 %b.cap2565, 16
  %b.cap.grow567 = select i1 %b.cap.small566, i64 16, i64 %b.cap2565
  %b.cap.need568 = icmp slt i64 %b.cap.grow567, %sum554
  %b.new.cap569 = select i1 %b.cap.need568, i64 %sum554, i64 %b.cap.grow567
  %b.cur.len2570 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 0
  %b.cur.len2571 = load i64, ptr %b.cur.len2570, align 8
  %b.cur.data2572 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 1
  %b.cur.data2573 = load ptr, ptr %b.cur.data2572, align 8
  %b.new.buf.len2574 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap569, i64 1)
  %sum575 = extractvalue { i64, i1 } %b.new.buf.len2574, 0
  %ovf576 = extractvalue { i64, i1 } %b.new.buf.len2574, 1
  br i1 %ovf576, label %str_overflow_abort578, label %b.new.buf.len2577

b.nogrow2563:                                     ; preds = %b.app.new.len556
  br label %b.grow_done564

b.grow_done564:                                   ; preds = %b.nogrow2563, %b.new.buf.len2577
  %b.app.data585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 1
  %b.app.data586 = load ptr, ptr %b.app.data585, align 8
  %b.app.dst587 = getelementptr i8, ptr %b.app.data586, i64 %b.app.cur.len552
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst587, ptr align 1 %app.str.data550, i64 %app.str.len549, i1 false)
  %b.app.nul588 = getelementptr i8, ptr %b.app.data586, i64 %sum554
  store i8 0, ptr %b.app.nul588, align 1
  %b.len.gep589 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 0
  store i64 %sum554, ptr %b.len.gep589, align 8
  %var.load590 = load ptr, ptr %var.b, align 8
  %var.load591 = load ptr, ptr %var.p, align 8
  %fld.gep592 = getelementptr inbounds { ptr, ptr }, ptr %var.load591, i32 0, i32 1
  %fld.load593 = load ptr, ptr %fld.gep592, align 8
  %var.load594 = load i64, ptr %var.indent, align 8
  %var.load595 = load i64, ptr %var.depth, align 8
  %addtmp596 = add i64 %var.load595, 1
  call void @"json::#stringify_pretty_into"(ptr %var.load590, ptr %fld.load593, i64 %var.load594, i64 %addtmp596)
  br label %loop.latch.153

b.new.buf.len2577:                                ; preds = %abort.dead579, %b.grow2562
  %arena.cur580 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2581 = call ptr @dva_arena_alloc(ptr %arena.cur580, i64 %sum575)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2581, ptr align 1 %b.cur.data2573, i64 %b.cur.len2571, i1 false)
  %b.grow2.nul582 = getelementptr i8, ptr %b.new.buf2581, i64 %b.cur.len2571
  store i8 0, ptr %b.grow2.nul582, align 1
  %b.new.data2.gep583 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 1
  store ptr %b.new.buf2581, ptr %b.new.data2.gep583, align 8
  %b.new.cap2.gep584 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load547, i32 0, i32 2
  store i64 %b.new.cap569, ptr %b.new.cap2.gep584, align 8
  br label %b.grow_done564

str_overflow_abort578:                            ; preds = %b.grow2562
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead579:                                    ; No predecessors!
  br label %b.new.buf.len2577

b.rn.new.len605:                                  ; preds = %abort.dead607, %loop.exit.153
  %b.cap608 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load599, i32 0, i32 2
  %b.cap609 = load i64, ptr %b.cap608, align 8
  %b.need.grow610 = icmp slt i64 %b.cap609, %sum603
  br i1 %b.need.grow610, label %b.grow2611, label %b.nogrow2612

str_overflow_abort606:                            ; preds = %loop.exit.153
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead607:                                    ; No predecessors!
  br label %b.rn.new.len605

b.grow2611:                                       ; preds = %b.rn.new.len605
  %b.cap2614 = mul i64 %b.cap609, 2
  %b.cap.small615 = icmp slt i64 %b.cap2614, 16
  %b.cap.grow616 = select i1 %b.cap.small615, i64 16, i64 %b.cap2614
  %b.cap.need617 = icmp slt i64 %b.cap.grow616, %sum603
  %b.new.cap618 = select i1 %b.cap.need617, i64 %sum603, i64 %b.cap.grow616
  %b.cur.len2619 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load599, i32 0, i32 0
  %b.cur.len2620 = load i64, ptr %b.cur.len2619, align 8
  %b.cur.data2621 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load599, i32 0, i32 1
  %b.cur.data2622 = load ptr, ptr %b.cur.data2621, align 8
  %b.new.buf.len2623 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap618, i64 1)
  %sum624 = extractvalue { i64, i1 } %b.new.buf.len2623, 0
  %ovf625 = extractvalue { i64, i1 } %b.new.buf.len2623, 1
  br i1 %ovf625, label %str_overflow_abort627, label %b.new.buf.len2626

b.nogrow2612:                                     ; preds = %b.rn.new.len605
  br label %b.grow_done613

b.grow_done613:                                   ; preds = %b.nogrow2612, %b.new.buf.len2626
  %b.rn.data634 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load599, i32 0, i32 1
  %b.rn.data635 = load ptr, ptr %b.rn.data634, align 8
  %b.rn.dst636 = getelementptr i8, ptr %b.rn.data635, i64 %b.rn.cur.len601
  br i1 true, label %br.b1.154, label %br.c2.154

b.new.buf.len2626:                                ; preds = %abort.dead628, %b.grow2611
  %arena.cur629 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2630 = call ptr @dva_arena_alloc(ptr %arena.cur629, i64 %sum624)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2630, ptr align 1 %b.cur.data2622, i64 %b.cur.len2620, i1 false)
  %b.grow2.nul631 = getelementptr i8, ptr %b.new.buf2630, i64 %b.cur.len2620
  store i8 0, ptr %b.grow2.nul631, align 1
  %b.new.data2.gep632 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load599, i32 0, i32 1
  store ptr %b.new.buf2630, ptr %b.new.data2.gep632, align 8
  %b.new.cap2.gep633 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load599, i32 0, i32 2
  store i64 %b.new.cap618, ptr %b.new.cap2.gep633, align 8
  br label %b.grow_done613

str_overflow_abort627:                            ; preds = %b.grow2611
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead628:                                    ; No predecessors!
  br label %b.new.buf.len2626

br.b1.154:                                        ; preds = %b.grow_done613
  store i8 10, ptr %b.rn.dst636, align 1
  br label %br.done.154

br.c2.154:                                        ; preds = %b.grow_done613
  br i1 true, label %br.b2.154, label %br.c3.154

br.b2.154:                                        ; preds = %br.c2.154
  store i8 -64, ptr %b.rn.dst636, align 1
  %br.dst1637 = getelementptr i8, ptr %b.rn.dst636, i64 1
  store i8 -118, ptr %br.dst1637, align 1
  br label %br.done.154

br.c3.154:                                        ; preds = %br.c2.154
  br i1 true, label %br.b3.154, label %br.b4.154

br.b3.154:                                        ; preds = %br.c3.154
  store i8 -32, ptr %b.rn.dst636, align 1
  %br.dst1.3638 = getelementptr i8, ptr %b.rn.dst636, i64 1
  store i8 -128, ptr %br.dst1.3638, align 1
  %br.dst2.3639 = getelementptr i8, ptr %b.rn.dst636, i64 2
  store i8 -118, ptr %br.dst2.3639, align 1
  br label %br.done.154

br.b4.154:                                        ; preds = %br.c3.154
  store i8 -16, ptr %b.rn.dst636, align 1
  %br.dst1.4640 = getelementptr i8, ptr %b.rn.dst636, i64 1
  store i8 -128, ptr %br.dst1.4640, align 1
  %br.dst2.4641 = getelementptr i8, ptr %b.rn.dst636, i64 2
  store i8 -128, ptr %br.dst2.4641, align 1
  %br.dst3.4642 = getelementptr i8, ptr %b.rn.dst636, i64 3
  store i8 -118, ptr %br.dst3.4642, align 1
  br label %br.done.154

br.done.154:                                      ; preds = %br.b4.154, %br.b3.154, %br.b2.154, %br.b1.154
  %br.nul643 = getelementptr i8, ptr %b.rn.data635, i64 %sum603
  store i8 0, ptr %br.nul643, align 1
  %b.len.gep644 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load599, i32 0, i32 0
  store i64 %sum603, ptr %b.len.gep644, align 8
  %var.load645 = load ptr, ptr %var.b, align 8
  %var.load646 = load i64, ptr %var.depth, align 8
  %var.load647 = load i64, ptr %var.indent, align 8
  %multmp648 = mul i64 %var.load646, %var.load647
  call void @"json::#append_indent"(ptr %var.load645, i64 %multmp648)
  %b.load649 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len650 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load649, i32 0, i32 0
  %b.rn.cur.len651 = load i64, ptr %b.rn.cur.len650, align 8
  %b.rn.new.len652 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len651, i64 1)
  %sum653 = extractvalue { i64, i1 } %b.rn.new.len652, 0
  %ovf654 = extractvalue { i64, i1 } %b.rn.new.len652, 1
  br i1 %ovf654, label %str_overflow_abort656, label %b.rn.new.len655

b.rn.new.len655:                                  ; preds = %abort.dead657, %br.done.154
  %b.cap658 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load649, i32 0, i32 2
  %b.cap659 = load i64, ptr %b.cap658, align 8
  %b.need.grow660 = icmp slt i64 %b.cap659, %sum653
  br i1 %b.need.grow660, label %b.grow2661, label %b.nogrow2662

str_overflow_abort656:                            ; preds = %br.done.154
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead657:                                    ; No predecessors!
  br label %b.rn.new.len655

b.grow2661:                                       ; preds = %b.rn.new.len655
  %b.cap2664 = mul i64 %b.cap659, 2
  %b.cap.small665 = icmp slt i64 %b.cap2664, 16
  %b.cap.grow666 = select i1 %b.cap.small665, i64 16, i64 %b.cap2664
  %b.cap.need667 = icmp slt i64 %b.cap.grow666, %sum653
  %b.new.cap668 = select i1 %b.cap.need667, i64 %sum653, i64 %b.cap.grow666
  %b.cur.len2669 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load649, i32 0, i32 0
  %b.cur.len2670 = load i64, ptr %b.cur.len2669, align 8
  %b.cur.data2671 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load649, i32 0, i32 1
  %b.cur.data2672 = load ptr, ptr %b.cur.data2671, align 8
  %b.new.buf.len2673 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap668, i64 1)
  %sum674 = extractvalue { i64, i1 } %b.new.buf.len2673, 0
  %ovf675 = extractvalue { i64, i1 } %b.new.buf.len2673, 1
  br i1 %ovf675, label %str_overflow_abort677, label %b.new.buf.len2676

b.nogrow2662:                                     ; preds = %b.rn.new.len655
  br label %b.grow_done663

b.grow_done663:                                   ; preds = %b.nogrow2662, %b.new.buf.len2676
  %b.rn.data684 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load649, i32 0, i32 1
  %b.rn.data685 = load ptr, ptr %b.rn.data684, align 8
  %b.rn.dst686 = getelementptr i8, ptr %b.rn.data685, i64 %b.rn.cur.len651
  br i1 true, label %br.b1.155, label %br.c2.155

b.new.buf.len2676:                                ; preds = %abort.dead678, %b.grow2661
  %arena.cur679 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2680 = call ptr @dva_arena_alloc(ptr %arena.cur679, i64 %sum674)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2680, ptr align 1 %b.cur.data2672, i64 %b.cur.len2670, i1 false)
  %b.grow2.nul681 = getelementptr i8, ptr %b.new.buf2680, i64 %b.cur.len2670
  store i8 0, ptr %b.grow2.nul681, align 1
  %b.new.data2.gep682 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load649, i32 0, i32 1
  store ptr %b.new.buf2680, ptr %b.new.data2.gep682, align 8
  %b.new.cap2.gep683 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load649, i32 0, i32 2
  store i64 %b.new.cap668, ptr %b.new.cap2.gep683, align 8
  br label %b.grow_done663

str_overflow_abort677:                            ; preds = %b.grow2661
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead678:                                    ; No predecessors!
  br label %b.new.buf.len2676

br.b1.155:                                        ; preds = %b.grow_done663
  store i8 125, ptr %b.rn.dst686, align 1
  br label %br.done.155

br.c2.155:                                        ; preds = %b.grow_done663
  br i1 true, label %br.b2.155, label %br.c3.155

br.b2.155:                                        ; preds = %br.c2.155
  store i8 -63, ptr %b.rn.dst686, align 1
  %br.dst1687 = getelementptr i8, ptr %b.rn.dst686, i64 1
  store i8 -67, ptr %br.dst1687, align 1
  br label %br.done.155

br.c3.155:                                        ; preds = %br.c2.155
  br i1 true, label %br.b3.155, label %br.b4.155

br.b3.155:                                        ; preds = %br.c3.155
  store i8 -32, ptr %b.rn.dst686, align 1
  %br.dst1.3688 = getelementptr i8, ptr %b.rn.dst686, i64 1
  store i8 -127, ptr %br.dst1.3688, align 1
  %br.dst2.3689 = getelementptr i8, ptr %b.rn.dst686, i64 2
  store i8 -67, ptr %br.dst2.3689, align 1
  br label %br.done.155

br.b4.155:                                        ; preds = %br.c3.155
  store i8 -16, ptr %b.rn.dst686, align 1
  %br.dst1.4690 = getelementptr i8, ptr %b.rn.dst686, i64 1
  store i8 -128, ptr %br.dst1.4690, align 1
  %br.dst2.4691 = getelementptr i8, ptr %b.rn.dst686, i64 2
  store i8 -127, ptr %br.dst2.4691, align 1
  %br.dst3.4692 = getelementptr i8, ptr %b.rn.dst686, i64 3
  store i8 -67, ptr %br.dst3.4692, align 1
  br label %br.done.155

br.done.155:                                      ; preds = %br.b4.155, %br.b3.155, %br.b2.155, %br.b1.155
  %br.nul693 = getelementptr i8, ptr %b.rn.data685, i64 %sum653
  store i8 0, ptr %br.nul693, align 1
  %b.len.gep694 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load649, i32 0, i32 0
  store i64 %sum653, ptr %b.len.gep694, align 8
  br label %choice.exit392
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load ptr, ptr %var.src, align 8
  %var.load4 = load i64, ptr %var.start, align 8
  %call.res = call i64 @"json::#scan_plain_ascii_end"(ptr %var.load3, i64 %var.load4)
  store i64 %call.res, ptr %"var.k'", align 8
  store i64 0, ptr %loop.idx.162, align 8
  br label %loop.header.162

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data43, i64 %b.freeze.len42, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len42
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then36
  %b.freeze.data45 = phi ptr [ %b.freeze.data43, %choice.then36 ], [ %b.freeze.data43, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var._22 = alloca i64, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load3, 1
  store i64 %addtmp, ptr %"var.k'", align 8
  store i64 1, ptr %"var.depth'", align 8
  store i64 0, ptr %loop.idx.163, align 8
  br label %loop.header.163

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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

loop.latch.163:                                   ; preds = %choice.exit14
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
  %idx.oob = icmp uge i64 %var.load12, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load13 = load i64, ptr %var.ch, align 8
  %val.match = icmp eq i64 %var.load13, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit14:                                    ; preds = %choice.next34, %choice.exit44, %choice.case25, %choice.exit21
  br label %loop.latch.163

choice.case:                                      ; preds = %idx_ok
  %var.load15 = load ptr, ptr %var.cur, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64 }, ptr %var.load15, i32 0, i32 0
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %var.load18 = load i64, ptr %"var.k'", align 8
  %addtmp19 = add i64 %var.load18, 1
  %call.res = call { i1, i64 } @"json::#cursor_skip_str"(ptr %fld.load17, i64 %addtmp19)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then20, label %choice.else

choice.next:                                      ; preds = %idx_ok
  %val.match27 = icmp eq i64 %var.load13, 123
  %val.match28 = icmp eq i64 %var.load13, 91
  %case.or = or i1 %val.match27, %val.match28
  br i1 %case.or, label %choice.case25, label %choice.next26

choice.then20:                                    ; preds = %choice.case
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._22, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load23 = load i64, ptr %var.end, align 8
  store i64 %var.load23, ptr %"var.k'", align 8
  br label %choice.exit21

choice.else:                                      ; preds = %choice.case
  ret i1 false

choice.exit21:                                    ; preds = %ret.dead24, %choice.then20
  br label %choice.exit14

ret.dead24:                                       ; No predecessors!
  br label %choice.exit21

choice.case25:                                    ; preds = %choice.next
  %var.load29 = load i64, ptr %"var.depth'", align 8
  %addtmp30 = add i64 %var.load29, 1
  store i64 %addtmp30, ptr %"var.depth'", align 8
  %var.load31 = load i64, ptr %"var.k'", align 8
  %addtmp32 = add i64 %var.load31, 1
  store i64 %addtmp32, ptr %"var.k'", align 8
  br label %choice.exit14

choice.next26:                                    ; preds = %choice.next
  %val.match35 = icmp eq i64 %var.load13, 125
  %val.match36 = icmp eq i64 %var.load13, 93
  %case.or37 = or i1 %val.match35, %val.match36
  br i1 %case.or37, label %choice.case33, label %choice.next34

choice.case33:                                    ; preds = %choice.next26
  %var.load38 = load i64, ptr %"var.depth'", align 8
  %subtmp = sub i64 %var.load38, 1
  store i64 %subtmp, ptr %"var.depth'", align 8
  %var.load39 = load i64, ptr %"var.k'", align 8
  %addtmp40 = add i64 %var.load39, 1
  store i64 %addtmp40, ptr %"var.k'", align 8
  %var.load41 = load i64, ptr %"var.depth'", align 8
  %cmptmp42 = icmp eq i64 %var.load41, 0
  br i1 %cmptmp42, label %choice.then43, label %choice.exit44

choice.next34:                                    ; preds = %choice.next26
  %var.load49 = load i64, ptr %"var.k'", align 8
  %addtmp50 = add i64 %var.load49, 1
  store i64 %addtmp50, ptr %"var.k'", align 8
  br label %choice.exit14

choice.then43:                                    ; preds = %choice.case33
  %var.load45 = load ptr, ptr %var.cur, align 8
  %var.load46 = load i64, ptr %"var.k'", align 8
  %fld.gep47 = getelementptr inbounds { ptr, i64 }, ptr %var.load45, i32 0, i32 1
  store i64 %var.load46, ptr %fld.gep47, align 8
  ret i1 true

choice.exit44:                                    ; preds = %ret.dead48, %choice.case33
  br label %choice.exit14

ret.dead48:                                       ; No predecessors!
  br label %choice.exit44
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.c0, align 8
  %cmptmp = icmp sge i64 %var.load3, 48
  br i1 %cmptmp, label %and.164.then, label %and.164.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %var.load22 = load i1, ptr %var.has_digit, align 1
  %nottmp = xor i1 %var.load22, true
  br i1 %nottmp, label %choice.then, label %choice.exit23

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
  %idx.oob = icmp uge i64 %addtmp15, %s.read.len12
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.166.else:                                     ; preds = %or.165.else
  br label %and.166.exit

and.166.exit:                                     ; preds = %and.166.else, %choice.exit16
  %and.166.phi = phi i1 [ %choice.res21, %choice.exit16 ], [ %cmptmp7, %and.166.else ]
  br label %or.165.exit

idx_ok:                                           ; preds = %abort.dead, %and.166.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %addtmp15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp sge i64 %s.byte.val, 48
  br i1 %cmptmp19, label %and.167.then, label %and.167.else

idx_oob:                                          ; preds = %and.166.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit16:                                    ; preds = %choice.next18, %choice.case17
  %choice.res21 = phi i1 [ true, %choice.case17 ], [ false, %choice.next18 ]
  br label %and.166.exit

choice.case17:                                    ; preds = %and.167.exit
  br label %choice.exit16

choice.next18:                                    ; preds = %and.167.exit
  br label %choice.exit16

and.167.then:                                     ; preds = %idx_ok
  %cmptmp20 = icmp sle i64 %s.byte.val, 57
  br label %and.167.exit

and.167.else:                                     ; preds = %idx_ok
  br label %and.167.exit

and.167.exit:                                     ; preds = %and.167.else, %and.167.then
  %and.167.phi = phi i1 [ %cmptmp20, %and.167.then ], [ %cmptmp19, %and.167.else ]
  br i1 %and.167.phi, label %choice.case17, label %choice.next18

choice.then:                                      ; preds = %or.165.exit
  ret i1 false

choice.exit23:                                    ; preds = %ret.dead, %or.165.exit
  %var.load24 = load i64, ptr %var.p, align 8
  %addtmp25 = add i64 %var.load24, 1
  store i64 %addtmp25, ptr %"var.k'", align 8
  store i64 0, ptr %loop.idx.168, align 8
  br label %loop.header.168

ret.dead:                                         ; No predecessors!
  br label %choice.exit23

loop.header.168:                                  ; preds = %loop.latch.168, %choice.exit23
  %counter.load = load i64, ptr %loop.idx.168, align 8
  br label %loop.body.168

loop.body.168:                                    ; preds = %loop.header.168
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.168, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load26 = load i64, ptr %"var.k'", align 8
  %var.load27 = load i64, ptr %var.n, align 8
  %cmptmp28 = icmp sge i64 %var.load26, %var.load27
  br i1 %cmptmp28, label %choice.then29, label %choice.exit30

loop.exit.nat.168:                                ; No predecessors!
  br label %loop.exit.168

loop.latch.168:                                   ; preds = %choice.exit62
  %step.val = load i64, ptr %loop.step.168, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.168, align 8
  br label %loop.header.168

loop.exit.168:                                    ; preds = %choice.else, %choice.then29, %loop.exit.nat.168
  %var.load65 = load ptr, ptr %var.cur, align 8
  %var.load66 = load i64, ptr %"var.k'", align 8
  %fld.gep67 = getelementptr inbounds { ptr, i64 }, ptr %var.load65, i32 0, i32 1
  store i64 %var.load66, ptr %fld.gep67, align 8
  ret i1 true

choice.then29:                                    ; preds = %loop.body.168
  br label %loop.exit.168

choice.exit30:                                    ; preds = %loop.body.168
  %var.load31 = load ptr, ptr %var.cur, align 8
  %fld.gep32 = getelementptr inbounds { ptr, i64 }, ptr %var.load31, i32 0, i32 0
  %fld.load33 = load ptr, ptr %fld.gep32, align 8
  %s.read.len34 = getelementptr inbounds { i64, ptr }, ptr %fld.load33, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len34, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %s.read.data37 = getelementptr inbounds { i64, ptr }, ptr %fld.load33, i32 0, i32 1
  %s.read.data38 = load ptr, ptr %s.read.data37, align 8
  %var.load39 = load i64, ptr %"var.k'", align 8
  %idx.oob40 = icmp uge i64 %var.load39, %s.read.len36
  br i1 %idx.oob40, label %idx_oob42, label %idx_ok41

idx_ok41:                                         ; preds = %abort.dead43, %choice.exit30
  %s.byte.gep44 = getelementptr i8, ptr %s.read.data38, i64 %var.load39
  %s.byte45 = load i8, ptr %s.byte.gep44, align 1
  %s.byte.val46 = zext i8 %s.byte45 to i64
  %cmptmp50 = icmp sge i64 %s.byte.val46, 48
  br i1 %cmptmp50, label %and.169.then, label %and.169.else

idx_oob42:                                        ; preds = %choice.exit30
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %idx_ok41

choice.exit47:                                    ; preds = %choice.next49, %choice.case48
  %choice.res60 = phi i1 [ true, %choice.case48 ], [ false, %choice.next49 ]
  br i1 %choice.res60, label %choice.then61, label %choice.else

choice.case48:                                    ; preds = %and.169.exit
  br label %choice.exit47

choice.next49:                                    ; preds = %and.169.exit
  br label %choice.exit47

and.169.then:                                     ; preds = %idx_ok41
  %cmptmp51 = icmp sle i64 %s.byte.val46, 57
  br label %and.169.exit

and.169.else:                                     ; preds = %idx_ok41
  br label %and.169.exit

and.169.exit:                                     ; preds = %and.169.else, %and.169.then
  %and.169.phi = phi i1 [ %cmptmp51, %and.169.then ], [ %cmptmp50, %and.169.else ]
  %val.match = icmp eq i64 %s.byte.val46, 43
  %case.or = or i1 %and.169.phi, %val.match
  %val.match52 = icmp eq i64 %s.byte.val46, 45
  %case.or53 = or i1 %case.or, %val.match52
  %val.match54 = icmp eq i64 %s.byte.val46, 46
  %case.or55 = or i1 %case.or53, %val.match54
  %val.match56 = icmp eq i64 %s.byte.val46, 101
  %case.or57 = or i1 %case.or55, %val.match56
  %val.match58 = icmp eq i64 %s.byte.val46, 69
  %case.or59 = or i1 %case.or57, %val.match58
  br i1 %case.or59, label %choice.case48, label %choice.next49

choice.then61:                                    ; preds = %choice.exit47
  %var.load63 = load i64, ptr %"var.k'", align 8
  %addtmp64 = add i64 %var.load63, 1
  store i64 %addtmp64, ptr %"var.k'", align 8
  br label %choice.exit62

choice.else:                                      ; preds = %choice.exit47
  br label %loop.exit.168

choice.exit62:                                    ; preds = %choice.then61
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query5, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.170, align 8
  br label %loop.header.170

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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

loop.latch.170:                                   ; preds = %choice.exit16
  %step.val = load i64, ptr %loop.step.170, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.170, align 8
  br label %loop.header.170

loop.exit.170:                                    ; preds = %choice.else, %choice.then, %loop.exit.nat.170
  %var.load18 = load ptr, ptr %var.cur, align 8
  %var.load19 = load i64, ptr %"var.p'", align 8
  %fld.gep20 = getelementptr inbounds { ptr, i64 }, ptr %var.load18, i32 0, i32 1
  store i64 %var.load19, ptr %fld.gep20, align 8
  %var.load21 = load i64, ptr %"var.p'", align 8
  ret i64 %var.load21

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
  %idx.oob = icmp uge i64 %var.load14, %s.read.len12
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then15, label %choice.else

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then15:                                    ; preds = %idx_ok
  %var.load17 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load17, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit16

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.170

choice.exit16:                                    ; preds = %choice.then15
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp sge i64 %call.res, %str.len.query3
  ret i1 %cmptmp

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load1, %str.len.query4
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load11, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.else:                                      ; preds = %str_ok
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %choice.else ]
  ret i64 %choice.res

idx_ok:                                           ; preds = %abort.dead, %choice.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load1, %str.len.query6
  br i1 %cmptmp, label %and.171.then, label %and.171.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load13, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.171.else:                                     ; preds = %str_ok
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
  %var.load21 = load ptr, ptr %var.cur, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %str.len.query24 = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 0
  %str.len.query25 = load i64, ptr %str.len.query24, align 8
  %str.len.query26 = and i64 %str.len.query25, 281474976710655
  %str.tag27 = lshr i64 %str.len.query25, 48
  %tag.immortal29 = icmp eq i64 %str.tag27, 0
  %active.gen30 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current31 = icmp eq i64 %str.tag27, %active.gen30
  %tag.fast.ok32 = or i1 %tag.immortal29, %tag.current31
  br i1 %tag.fast.ok32, label %str_ok28, label %tag.slow_check33

str_ok28:                                         ; preds = %tag.slow_check33, %choice.exit
  %cmptmp34 = icmp slt i64 %var.load20, %str.len.query26
  br i1 %cmptmp34, label %and.173.then, label %and.173.else

tag.slow_check33:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag27)
  br label %str_ok28

and.173.then:                                     ; preds = %str_ok28
  %var.load35 = load ptr, ptr %var.cur, align 8
  %fld.gep36 = getelementptr inbounds { ptr, i64 }, ptr %var.load35, i32 0, i32 0
  %fld.load37 = load ptr, ptr %fld.gep36, align 8
  %s.read.len38 = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 0
  %s.read.len39 = load i64, ptr %s.read.len38, align 8
  %s.read.len40 = and i64 %s.read.len39, 281474976710655
  %s.read.data41 = getelementptr inbounds { i64, ptr }, ptr %fld.load37, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data41, align 8
  %var.load43 = load i64, ptr %var.p, align 8
  %idx.oob44 = icmp uge i64 %var.load43, %s.read.len40
  br i1 %idx.oob44, label %idx_oob46, label %idx_ok45

and.173.else:                                     ; preds = %str_ok28
  br label %and.173.exit

and.173.exit:                                     ; preds = %and.173.else, %idx_ok45
  %and.173.phi = phi i1 [ %cmptmp52, %idx_ok45 ], [ %cmptmp34, %and.173.else ]
  br i1 %and.173.phi, label %choice.then53, label %choice.else54

idx_ok45:                                         ; preds = %abort.dead47, %and.173.then
  %s.byte.gep48 = getelementptr i8, ptr %s.read.data42, i64 %var.load43
  %s.byte49 = load i8, ptr %s.byte.gep48, align 1
  %s.byte.val50 = zext i8 %s.byte49 to i64
  %var.load51 = load i64, ptr %var.ch, align 8
  %cmptmp52 = icmp eq i64 %s.byte.val50, %var.load51
  br label %and.173.exit

idx_oob46:                                        ; preds = %and.173.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %idx_ok45

choice.then53:                                    ; preds = %and.173.exit
  %var.load56 = load ptr, ptr %var.cur, align 8
  %var.load57 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load57, 1
  %fld.gep58 = getelementptr inbounds { ptr, i64 }, ptr %var.load56, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep58, align 8
  br label %choice.exit55

choice.else54:                                    ; preds = %and.173.exit
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else54, %choice.then53
  %choice.res59 = phi i1 [ true, %choice.then53 ], [ false, %choice.else54 ]
  ret i1 %choice.res59
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load ptr, ptr %var.cur, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  store i64 %fld.load5, ptr %var.at, align 8
  %var.load6 = load i64, ptr %var.at, align 8
  %var.load7 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load6, %var.load7
  br i1 %cmptmp, label %and.174.then, label %and.174.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load14, %s.read.len12
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.174.else:                                     ; preds = %str_ok
  br label %and.174.exit

and.174.exit:                                     ; preds = %and.174.else, %idx_ok
  %and.174.phi = phi i1 [ %cmptmp15, %idx_ok ], [ %cmptmp, %and.174.else ]
  br i1 %and.174.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.174.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp15 = icmp eq i64 %s.byte.val, 34
  br label %and.174.exit

idx_oob:                                          ; preds = %and.174.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %and.174.exit
  %var.load16 = load i64, ptr %var.at, align 8
  br label %choice.exit

choice.else:                                      ; preds = %and.174.exit
  %var.load17 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load17)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load16, %choice.then ], [ %call.res, %choice.else ]
  store i64 %choice.res, ptr %var.p, align 8
  %var.load18 = load i64, ptr %var.p, align 8
  %var.load19 = load i64, ptr %var.n, align 8
  %cmptmp20 = icmp sge i64 %var.load18, %var.load19
  br i1 %cmptmp20, label %or.175.then, label %or.175.else

or.175.then:                                      ; preds = %choice.exit
  br label %or.175.exit

or.175.else:                                      ; preds = %choice.exit
  %var.load21 = load ptr, ptr %var.cur, align 8
  %fld.gep22 = getelementptr inbounds { ptr, i64 }, ptr %var.load21, i32 0, i32 0
  %fld.load23 = load ptr, ptr %fld.gep22, align 8
  %s.read.len24 = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 0
  %s.read.len25 = load i64, ptr %s.read.len24, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %s.read.data27 = getelementptr inbounds { i64, ptr }, ptr %fld.load23, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data27, align 8
  %var.load29 = load i64, ptr %var.p, align 8
  %idx.oob30 = icmp uge i64 %var.load29, %s.read.len26
  br i1 %idx.oob30, label %idx_oob32, label %idx_ok31

or.175.exit:                                      ; preds = %idx_ok31, %or.175.then
  %or.175.phi = phi i1 [ %cmptmp20, %or.175.then ], [ %cmptmp37, %idx_ok31 ]
  br i1 %or.175.phi, label %choice.then38, label %choice.exit39

idx_ok31:                                         ; preds = %abort.dead33, %or.175.else
  %s.byte.gep34 = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte35 = load i8, ptr %s.byte.gep34, align 1
  %s.byte.val36 = zext i8 %s.byte35 to i64
  %cmptmp37 = icmp ne i64 %s.byte.val36, 34
  br label %or.175.exit

idx_oob32:                                        ; preds = %or.175.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %idx_ok31

choice.then38:                                    ; preds = %or.175.exit
  ret { i64, ptr } zeroinitializer

choice.exit39:                                    ; preds = %ret.dead, %or.175.exit
  %var.load40 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load40, 1
  store i64 %addtmp, ptr %var.start, align 8
  %var.load41 = load ptr, ptr %var.cur, align 8
  %fld.gep42 = getelementptr inbounds { ptr, i64 }, ptr %var.load41, i32 0, i32 0
  %fld.load43 = load ptr, ptr %fld.gep42, align 8
  %var.load44 = load i64, ptr %var.start, align 8
  %call.res45 = call i64 @"json::#scan_plain_ascii_end"(ptr %fld.load43, i64 %var.load44)
  store i64 %call.res45, ptr %var.plain_end, align 8
  %var.load46 = load i64, ptr %var.plain_end, align 8
  %var.load47 = load i64, ptr %var.n, align 8
  %cmptmp48 = icmp slt i64 %var.load46, %var.load47
  br i1 %cmptmp48, label %and.176.then, label %and.176.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit39

and.176.then:                                     ; preds = %choice.exit39
  %var.load49 = load ptr, ptr %var.cur, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i64 }, ptr %var.load49, i32 0, i32 0
  %fld.load51 = load ptr, ptr %fld.gep50, align 8
  %s.read.len52 = getelementptr inbounds { i64, ptr }, ptr %fld.load51, i32 0, i32 0
  %s.read.len53 = load i64, ptr %s.read.len52, align 8
  %s.read.len54 = and i64 %s.read.len53, 281474976710655
  %s.read.data55 = getelementptr inbounds { i64, ptr }, ptr %fld.load51, i32 0, i32 1
  %s.read.data56 = load ptr, ptr %s.read.data55, align 8
  %var.load57 = load i64, ptr %var.plain_end, align 8
  %idx.oob58 = icmp uge i64 %var.load57, %s.read.len54
  br i1 %idx.oob58, label %idx_oob60, label %idx_ok59

and.176.else:                                     ; preds = %choice.exit39
  br label %and.176.exit

and.176.exit:                                     ; preds = %and.176.else, %idx_ok59
  %and.176.phi = phi i1 [ %cmptmp65, %idx_ok59 ], [ %cmptmp48, %and.176.else ]
  br i1 %and.176.phi, label %choice.then66, label %choice.exit67

idx_ok59:                                         ; preds = %abort.dead61, %and.176.then
  %s.byte.gep62 = getelementptr i8, ptr %s.read.data56, i64 %var.load57
  %s.byte63 = load i8, ptr %s.byte.gep62, align 1
  %s.byte.val64 = zext i8 %s.byte63 to i64
  %cmptmp65 = icmp eq i64 %s.byte.val64, 34
  br label %and.176.exit

idx_oob60:                                        ; preds = %and.176.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %idx_ok59

choice.then66:                                    ; preds = %and.176.exit
  %var.load68 = load ptr, ptr %var.cur, align 8
  %var.load69 = load i64, ptr %var.plain_end, align 8
  %addtmp70 = add i64 %var.load69, 1
  %fld.gep71 = getelementptr inbounds { ptr, i64 }, ptr %var.load68, i32 0, i32 1
  store i64 %addtmp70, ptr %fld.gep71, align 8
  %var.load72 = load ptr, ptr %var.cur, align 8
  %fld.gep73 = getelementptr inbounds { ptr, i64 }, ptr %var.load72, i32 0, i32 0
  %fld.load74 = load ptr, ptr %fld.gep73, align 8
  %s.read.len75 = getelementptr inbounds { i64, ptr }, ptr %fld.load74, i32 0, i32 0
  %s.read.len76 = load i64, ptr %s.read.len75, align 8
  %s.read.len77 = and i64 %s.read.len76, 281474976710655
  %s.read.data78 = getelementptr inbounds { i64, ptr }, ptr %fld.load74, i32 0, i32 1
  %s.read.data79 = load ptr, ptr %s.read.data78, align 8
  %var.load80 = load i64, ptr %var.start, align 8
  %var.load81 = load i64, ptr %var.plain_end, align 8
  %start.is_neg = icmp slt i64 %var.load80, 0
  %rel.start = add i64 %s.read.len77, %var.load80
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load80
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len77
  %final.start = select i1 %start.gt.len, i64 %s.read.len77, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load81, 0
  %rel.end = add i64 %s.read.len77, %var.load81
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load81
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len77
  %final.end = select i1 %end.gt.len, i64 %s.read.len77, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data79, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.niche.nn = icmp ne ptr %str.view, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.exit67:                                    ; preds = %ret.dead82, %and.176.exit
  %var.load83 = load ptr, ptr %var.cur, align 8
  %var.load84 = load i64, ptr %var.start, align 8
  %var.load85 = load i64, ptr %var.plain_end, align 8
  %call.res86 = call { i64, ptr } @"json::#cursor_read_str_escaped"(ptr %var.load83, i64 %var.load84, i64 %var.load85)
  %ret.niche.data = extractvalue { i64, ptr } %call.res86, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.load:                                   ; preds = %choice.then66
  %ret.niche.val = load { i64, ptr }, ptr %str.view, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.then66
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.then66 ]
  ret { i64, ptr } %ret.niche.pack

ret.dead82:                                       ; No predecessors!
  br label %choice.exit67

ret.niche.alloc:                                  ; preds = %choice.exit67
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 16)
  store { i64, ptr } %call.res86, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit67
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit67 ]
  %ret.niche.nn88 = icmp ne ptr %ret.niche.ptr, null
  br i1 %ret.niche.nn88, label %ret.niche.load89, label %ret.niche.merge90

ret.niche.load89:                                 ; preds = %ret.niche.done
  %ret.niche.val91 = load { i64, ptr }, ptr %ret.niche.ptr, align 8
  br label %ret.niche.merge90

ret.niche.merge90:                                ; preds = %ret.niche.load89, %ret.niche.done
  %ret.niche.pack92 = phi { i64, ptr } [ %ret.niche.val91, %ret.niche.load89 ], [ zeroinitializer, %ret.niche.done ]
  ret { i64, ptr } %ret.niche.pack92
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load ptr, ptr %var.cur, align 8
  %fld.gep4 = getelementptr inbounds { ptr, i64 }, ptr %var.load3, i32 0, i32 1
  %fld.load5 = load i64, ptr %fld.gep4, align 8
  store i64 %fld.load5, ptr %var.at, align 8
  %var.load6 = load i64, ptr %var.at, align 8
  %var.load7 = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load6, %var.load7
  br i1 %cmptmp, label %and.177.then, label %and.177.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load14, %s.read.len12
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.177.else:                                     ; preds = %str_ok
  br label %and.177.exit

and.177.exit:                                     ; preds = %and.177.else, %choice.exit
  %and.177.phi = phi i1 [ %choice.res, %choice.exit ], [ %cmptmp, %and.177.else ]
  br i1 %and.177.phi, label %choice.then, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.177.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 34
  %val.match15 = icmp eq i64 %s.byte.val, 44
  %case.or = or i1 %val.match, %val.match15
  %val.match16 = icmp eq i64 %s.byte.val, 125
  %case.or17 = or i1 %case.or, %val.match16
  br i1 %case.or17, label %choice.case, label %choice.next

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
  %var.load19 = load i64, ptr %var.at, align 8
  br label %choice.exit18

choice.else:                                      ; preds = %and.177.exit
  %var.load20 = load ptr, ptr %var.cur, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %var.load20)
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else, %choice.then
  %choice.res21 = phi i64 [ %var.load19, %choice.then ], [ %call.res, %choice.else ]
  store i64 %choice.res21, ptr %var.p, align 8
  %var.load22 = load i64, ptr %var.p, align 8
  %var.load23 = load i64, ptr %var.n, align 8
  %cmptmp24 = icmp sge i64 %var.load22, %var.load23
  br i1 %cmptmp24, label %choice.then25, label %choice.exit26

choice.then25:                                    ; preds = %choice.exit18
  ret { i64, ptr } zeroinitializer

choice.exit26:                                    ; preds = %ret.dead, %choice.exit18
  %var.load27 = load ptr, ptr %var.cur, align 8
  %fld.gep28 = getelementptr inbounds { ptr, i64 }, ptr %var.load27, i32 0, i32 0
  %fld.load29 = load ptr, ptr %fld.gep28, align 8
  %s.read.len30 = getelementptr inbounds { i64, ptr }, ptr %fld.load29, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len30, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %fld.load29, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  %var.load35 = load i64, ptr %var.p, align 8
  %idx.oob36 = icmp uge i64 %var.load35, %s.read.len32
  br i1 %idx.oob36, label %idx_oob38, label %idx_ok37

ret.dead:                                         ; No predecessors!
  br label %choice.exit26

idx_ok37:                                         ; preds = %abort.dead39, %choice.exit26
  %s.byte.gep40 = getelementptr i8, ptr %s.read.data34, i64 %var.load35
  %s.byte41 = load i8, ptr %s.byte.gep40, align 1
  %s.byte.val42 = zext i8 %s.byte41 to i64
  store i64 %s.byte.val42, ptr %var.c, align 8
  %var.load43 = load i64, ptr %var.c, align 8
  %val.match47 = icmp eq i64 %var.load43, 125
  br i1 %val.match47, label %choice.case45, label %choice.next46

idx_oob38:                                        ; preds = %choice.exit26
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead39:                                     ; No predecessors!
  br label %idx_ok37

choice.exit44:                                    ; preds = %choice.next46, %ret.dead51
  %var.load52 = load i64, ptr %var.c, align 8
  %val.match56 = icmp eq i64 %var.load52, 44
  br i1 %val.match56, label %choice.case54, label %choice.next55

choice.case45:                                    ; preds = %idx_ok37
  %var.load48 = load ptr, ptr %var.cur, align 8
  %var.load49 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load49, 1
  %fld.gep50 = getelementptr inbounds { ptr, i64 }, ptr %var.load48, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep50, align 8
  ret { i64, ptr } zeroinitializer

choice.next46:                                    ; preds = %idx_ok37
  br label %choice.exit44

ret.dead51:                                       ; No predecessors!
  br label %choice.exit44

choice.exit53:                                    ; preds = %choice.next55, %choice.exit112
  %var.load114 = load ptr, ptr %var.cur, align 8
  %call.res115 = call { i64, ptr } @"json::cursor_read_str"(ptr %var.load114)
  %ret.niche.data = extractvalue { i64, ptr } %call.res115, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

choice.case54:                                    ; preds = %choice.exit44
  %var.load57 = load ptr, ptr %var.cur, align 8
  %var.load58 = load i64, ptr %var.p, align 8
  %addtmp59 = add i64 %var.load58, 1
  %fld.gep60 = getelementptr inbounds { ptr, i64 }, ptr %var.load57, i32 0, i32 1
  store i64 %addtmp59, ptr %fld.gep60, align 8
  %var.load61 = load ptr, ptr %var.cur, align 8
  %fld.gep62 = getelementptr inbounds { ptr, i64 }, ptr %var.load61, i32 0, i32 1
  %fld.load63 = load i64, ptr %fld.gep62, align 8
  store i64 %fld.load63, ptr %var.at2, align 8
  %var.load64 = load i64, ptr %var.at2, align 8
  %var.load65 = load i64, ptr %var.n, align 8
  %cmptmp66 = icmp slt i64 %var.load64, %var.load65
  br i1 %cmptmp66, label %and.178.then, label %and.178.else

choice.next55:                                    ; preds = %choice.exit44
  br label %choice.exit53

and.178.then:                                     ; preds = %choice.case54
  %var.load67 = load ptr, ptr %var.cur, align 8
  %fld.gep68 = getelementptr inbounds { ptr, i64 }, ptr %var.load67, i32 0, i32 0
  %fld.load69 = load ptr, ptr %fld.gep68, align 8
  %s.read.len70 = getelementptr inbounds { i64, ptr }, ptr %fld.load69, i32 0, i32 0
  %s.read.len71 = load i64, ptr %s.read.len70, align 8
  %s.read.len72 = and i64 %s.read.len71, 281474976710655
  %s.read.data73 = getelementptr inbounds { i64, ptr }, ptr %fld.load69, i32 0, i32 1
  %s.read.data74 = load ptr, ptr %s.read.data73, align 8
  %var.load75 = load i64, ptr %var.at2, align 8
  %idx.oob76 = icmp uge i64 %var.load75, %s.read.len72
  br i1 %idx.oob76, label %idx_oob78, label %idx_ok77

and.178.else:                                     ; preds = %choice.case54
  br label %and.178.exit

and.178.exit:                                     ; preds = %and.178.else, %idx_ok77
  %and.178.phi = phi i1 [ %cmptmp83, %idx_ok77 ], [ %cmptmp66, %and.178.else ]
  br i1 %and.178.phi, label %choice.then84, label %choice.else85

idx_ok77:                                         ; preds = %abort.dead79, %and.178.then
  %s.byte.gep80 = getelementptr i8, ptr %s.read.data74, i64 %var.load75
  %s.byte81 = load i8, ptr %s.byte.gep80, align 1
  %s.byte.val82 = zext i8 %s.byte81 to i64
  %cmptmp83 = icmp eq i64 %s.byte.val82, 34
  br label %and.178.exit

idx_oob78:                                        ; preds = %and.178.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead79:                                     ; No predecessors!
  br label %idx_ok77

choice.then84:                                    ; preds = %and.178.exit
  %var.load87 = load i64, ptr %var.at2, align 8
  br label %choice.exit86

choice.else85:                                    ; preds = %and.178.exit
  %var.load88 = load ptr, ptr %var.cur, align 8
  %call.res89 = call i64 @"json::cursor_skip_ws"(ptr %var.load88)
  br label %choice.exit86

choice.exit86:                                    ; preds = %choice.else85, %choice.then84
  %choice.res90 = phi i64 [ %var.load87, %choice.then84 ], [ %call.res89, %choice.else85 ]
  store i64 %choice.res90, ptr %var.p2, align 8
  %var.load91 = load i64, ptr %var.p2, align 8
  %var.load92 = load i64, ptr %var.n, align 8
  %cmptmp93 = icmp sge i64 %var.load91, %var.load92
  br i1 %cmptmp93, label %or.179.then, label %or.179.else

or.179.then:                                      ; preds = %choice.exit86
  br label %or.179.exit

or.179.else:                                      ; preds = %choice.exit86
  %var.load94 = load ptr, ptr %var.cur, align 8
  %fld.gep95 = getelementptr inbounds { ptr, i64 }, ptr %var.load94, i32 0, i32 0
  %fld.load96 = load ptr, ptr %fld.gep95, align 8
  %s.read.len97 = getelementptr inbounds { i64, ptr }, ptr %fld.load96, i32 0, i32 0
  %s.read.len98 = load i64, ptr %s.read.len97, align 8
  %s.read.len99 = and i64 %s.read.len98, 281474976710655
  %s.read.data100 = getelementptr inbounds { i64, ptr }, ptr %fld.load96, i32 0, i32 1
  %s.read.data101 = load ptr, ptr %s.read.data100, align 8
  %var.load102 = load i64, ptr %var.p2, align 8
  %idx.oob103 = icmp uge i64 %var.load102, %s.read.len99
  br i1 %idx.oob103, label %idx_oob105, label %idx_ok104

or.179.exit:                                      ; preds = %idx_ok104, %or.179.then
  %or.179.phi = phi i1 [ %cmptmp93, %or.179.then ], [ %cmptmp110, %idx_ok104 ]
  br i1 %or.179.phi, label %choice.then111, label %choice.exit112

idx_ok104:                                        ; preds = %abort.dead106, %or.179.else
  %s.byte.gep107 = getelementptr i8, ptr %s.read.data101, i64 %var.load102
  %s.byte108 = load i8, ptr %s.byte.gep107, align 1
  %s.byte.val109 = zext i8 %s.byte108 to i64
  %cmptmp110 = icmp eq i64 %s.byte.val109, 125
  br label %or.179.exit

idx_oob105:                                       ; preds = %or.179.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead106:                                    ; No predecessors!
  br label %idx_ok104

choice.then111:                                   ; preds = %or.179.exit
  ret { i64, ptr } zeroinitializer

choice.exit112:                                   ; preds = %ret.dead113, %or.179.exit
  br label %choice.exit53

ret.dead113:                                      ; No predecessors!
  br label %choice.exit112

ret.niche.alloc:                                  ; preds = %choice.exit53
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res115, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit53
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit53 ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  br i1 %niche.ne.null, label %choice.then116, label %choice.else117

choice.then116:                                   ; preds = %ret.niche.done
  store ptr %ret.niche.ptr, ptr %var._, align 8
  store ptr %ret.niche.ptr, ptr %var.k, align 8
  %var.load119 = load ptr, ptr %var.cur, align 8
  %call.res120 = call i1 @"json::cursor_expect_byte"(ptr %var.load119, i64 58)
  br i1 %call.res120, label %choice.then121, label %choice.else122

choice.else117:                                   ; preds = %ret.niche.done
  br label %choice.exit118

choice.exit118:                                   ; preds = %choice.else117, %choice.exit123
  %choice.res126 = phi ptr [ %choice.res125, %choice.exit123 ], [ null, %choice.else117 ]
  %ret.niche.nn = icmp ne ptr %choice.res126, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.then121:                                   ; preds = %choice.then116
  %var.load124 = load ptr, ptr %var.k, align 8
  br label %choice.exit123

choice.else122:                                   ; preds = %choice.then116
  br label %choice.exit123

choice.exit123:                                   ; preds = %choice.else122, %choice.then121
  %choice.res125 = phi ptr [ %var.load124, %choice.then121 ], [ null, %choice.else122 ]
  br label %choice.exit118

ret.niche.load:                                   ; preds = %choice.exit118
  %ret.niche.val = load { i64, ptr }, ptr %choice.res126, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit118
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit118 ]
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.p0, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load13, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 45
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit14:                                    ; preds = %choice.next, %choice.case
  %var.load16 = load i64, ptr %"var.p'", align 8
  %var.load17 = load i64, ptr %var.n, align 8
  %cmptmp18 = icmp sge i64 %var.load16, %var.load17
  br i1 %cmptmp18, label %choice.then19, label %choice.exit20

choice.case:                                      ; preds = %idx_ok
  store i1 true, ptr %"var.neg'", align 1
  %var.load15 = load i64, ptr %"var.p'", align 8
  %addtmp = add i64 %var.load15, 1
  store i64 %addtmp, ptr %"var.p'", align 8
  br label %choice.exit14

choice.next:                                      ; preds = %idx_ok
  br label %choice.exit14

choice.then19:                                    ; preds = %choice.exit14
  ret { i1, i64 } zeroinitializer

choice.exit20:                                    ; preds = %ret.dead21, %choice.exit14
  %var.load22 = load ptr, ptr %var.cur, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i64 }, ptr %var.load22, i32 0, i32 0
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %s.read.len25 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len25, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %"var.p'", align 8
  %idx.oob31 = icmp uge i64 %var.load30, %s.read.len27
  br i1 %idx.oob31, label %idx_oob33, label %idx_ok32

ret.dead21:                                       ; No predecessors!
  br label %choice.exit20

idx_ok32:                                         ; preds = %abort.dead34, %choice.exit20
  %s.byte.gep35 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte36 = load i8, ptr %s.byte.gep35, align 1
  %s.byte.val37 = zext i8 %s.byte36 to i64
  store i64 %s.byte.val37, ptr %var.c0, align 8
  %var.load38 = load i64, ptr %var.c0, align 8
  %cmptmp42 = icmp sge i64 %var.load38, 48
  br i1 %cmptmp42, label %and.180.then, label %and.180.else

idx_oob33:                                        ; preds = %choice.exit20
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %idx_ok32

choice.exit39:                                    ; preds = %choice.next41, %choice.case40
  %choice.res = phi i1 [ true, %choice.case40 ], [ false, %choice.next41 ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then44, label %choice.exit45

choice.case40:                                    ; preds = %and.180.exit
  br label %choice.exit39

choice.next41:                                    ; preds = %and.180.exit
  br label %choice.exit39

and.180.then:                                     ; preds = %idx_ok32
  %cmptmp43 = icmp sle i64 %var.load38, 57
  br label %and.180.exit

and.180.else:                                     ; preds = %idx_ok32
  br label %and.180.exit

and.180.exit:                                     ; preds = %and.180.else, %and.180.then
  %and.180.phi = phi i1 [ %cmptmp43, %and.180.then ], [ %cmptmp42, %and.180.else ]
  br i1 %and.180.phi, label %choice.case40, label %choice.next41

choice.then44:                                    ; preds = %choice.exit39
  ret { i1, i64 } zeroinitializer

choice.exit45:                                    ; preds = %ret.dead46, %choice.exit39
  %var.load47 = load i64, ptr %var.c0, align 8
  %val.match51 = icmp eq i64 %var.load47, 48
  br i1 %val.match51, label %choice.case49, label %choice.next50

ret.dead46:                                       ; No predecessors!
  br label %choice.exit45

choice.exit48:                                    ; preds = %choice.next50, %choice.case49
  %choice.res52 = phi i1 [ true, %choice.case49 ], [ false, %choice.next50 ]
  br i1 %choice.res52, label %and.181.then, label %and.181.else

choice.case49:                                    ; preds = %choice.exit45
  br label %choice.exit48

choice.next50:                                    ; preds = %choice.exit45
  br label %choice.exit48

and.181.then:                                     ; preds = %choice.exit48
  %var.load53 = load i64, ptr %"var.p'", align 8
  %addtmp54 = add i64 %var.load53, 1
  %var.load55 = load i64, ptr %var.n, align 8
  %cmptmp56 = icmp slt i64 %addtmp54, %var.load55
  br label %and.181.exit

and.181.else:                                     ; preds = %choice.exit48
  br label %and.181.exit

and.181.exit:                                     ; preds = %and.181.else, %and.181.then
  %and.181.phi = phi i1 [ %cmptmp56, %and.181.then ], [ %choice.res52, %and.181.else ]
  br i1 %and.181.phi, label %and.182.then, label %and.182.else

and.182.then:                                     ; preds = %and.181.exit
  %var.load57 = load ptr, ptr %var.cur, align 8
  %fld.gep58 = getelementptr inbounds { ptr, i64 }, ptr %var.load57, i32 0, i32 0
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %s.read.len60 = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 0
  %s.read.len61 = load i64, ptr %s.read.len60, align 8
  %s.read.len62 = and i64 %s.read.len61, 281474976710655
  %s.read.data63 = getelementptr inbounds { i64, ptr }, ptr %fld.load59, i32 0, i32 1
  %s.read.data64 = load ptr, ptr %s.read.data63, align 8
  %var.load65 = load i64, ptr %"var.p'", align 8
  %addtmp66 = add i64 %var.load65, 1
  %idx.oob67 = icmp uge i64 %addtmp66, %s.read.len62
  br i1 %idx.oob67, label %idx_oob69, label %idx_ok68

and.182.else:                                     ; preds = %and.181.exit
  br label %and.182.exit

and.182.exit:                                     ; preds = %and.182.else, %idx_ok68
  %and.182.phi = phi i1 [ %call.res74, %idx_ok68 ], [ %and.181.phi, %and.182.else ]
  br i1 %and.182.phi, label %choice.then75, label %choice.exit76

idx_ok68:                                         ; preds = %abort.dead70, %and.182.then
  %s.byte.gep71 = getelementptr i8, ptr %s.read.data64, i64 %addtmp66
  %s.byte72 = load i8, ptr %s.byte.gep71, align 1
  %s.byte.val73 = zext i8 %s.byte72 to i64
  %call.res74 = call i1 @"ascii::is_digit"(i64 %s.byte.val73)
  br label %and.182.exit

idx_oob69:                                        ; preds = %and.182.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %idx_ok68

choice.then75:                                    ; preds = %and.182.exit
  ret { i1, i64 } zeroinitializer

choice.exit76:                                    ; preds = %ret.dead77, %and.182.exit
  store i64 0, ptr %"var.v'", align 8
  store i64 0, ptr %loop.idx.183, align 8
  br label %loop.header.183

ret.dead77:                                       ; No predecessors!
  br label %choice.exit76

loop.header.183:                                  ; preds = %loop.latch.183, %choice.exit76
  %counter.load = load i64, ptr %loop.idx.183, align 8
  br label %loop.body.183

loop.body.183:                                    ; preds = %loop.header.183
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.183, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load78 = load i64, ptr %"var.p'", align 8
  %var.load79 = load i64, ptr %var.n, align 8
  %cmptmp80 = icmp sge i64 %var.load78, %var.load79
  br i1 %cmptmp80, label %choice.then81, label %choice.exit82

loop.exit.nat.183:                                ; No predecessors!
  br label %loop.exit.183

loop.latch.183:                                   ; preds = %choice.exit107
  %step.val = load i64, ptr %loop.step.183, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.183, align 8
  br label %loop.header.183

loop.exit.183:                                    ; preds = %choice.else, %choice.then81, %loop.exit.nat.183
  %var.load113 = load i64, ptr %"var.p'", align 8
  %var.load114 = load i64, ptr %var.n, align 8
  %cmptmp115 = icmp slt i64 %var.load113, %var.load114
  br i1 %cmptmp115, label %and.185.then, label %and.185.else

choice.then81:                                    ; preds = %loop.body.183
  br label %loop.exit.183

choice.exit82:                                    ; preds = %loop.body.183
  %var.load83 = load ptr, ptr %var.cur, align 8
  %fld.gep84 = getelementptr inbounds { ptr, i64 }, ptr %var.load83, i32 0, i32 0
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %s.read.len86 = getelementptr inbounds { i64, ptr }, ptr %fld.load85, i32 0, i32 0
  %s.read.len87 = load i64, ptr %s.read.len86, align 8
  %s.read.len88 = and i64 %s.read.len87, 281474976710655
  %s.read.data89 = getelementptr inbounds { i64, ptr }, ptr %fld.load85, i32 0, i32 1
  %s.read.data90 = load ptr, ptr %s.read.data89, align 8
  %var.load91 = load i64, ptr %"var.p'", align 8
  %idx.oob92 = icmp uge i64 %var.load91, %s.read.len88
  br i1 %idx.oob92, label %idx_oob94, label %idx_ok93

idx_ok93:                                         ; preds = %abort.dead95, %choice.exit82
  %s.byte.gep96 = getelementptr i8, ptr %s.read.data90, i64 %var.load91
  %s.byte97 = load i8, ptr %s.byte.gep96, align 1
  %s.byte.val98 = zext i8 %s.byte97 to i64
  store i64 %s.byte.val98, ptr %var.c, align 8
  %var.load99 = load i64, ptr %var.c, align 8
  %cmptmp103 = icmp sge i64 %var.load99, 48
  br i1 %cmptmp103, label %and.184.then, label %and.184.else

idx_oob94:                                        ; preds = %choice.exit82
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %idx_ok93

choice.exit100:                                   ; preds = %choice.next102, %choice.case101
  %choice.res105 = phi i1 [ true, %choice.case101 ], [ false, %choice.next102 ]
  br i1 %choice.res105, label %choice.then106, label %choice.else

choice.case101:                                   ; preds = %and.184.exit
  br label %choice.exit100

choice.next102:                                   ; preds = %and.184.exit
  br label %choice.exit100

and.184.then:                                     ; preds = %idx_ok93
  %cmptmp104 = icmp sle i64 %var.load99, 57
  br label %and.184.exit

and.184.else:                                     ; preds = %idx_ok93
  br label %and.184.exit

and.184.exit:                                     ; preds = %and.184.else, %and.184.then
  %and.184.phi = phi i1 [ %cmptmp104, %and.184.then ], [ %cmptmp103, %and.184.else ]
  br i1 %and.184.phi, label %choice.case101, label %choice.next102

choice.then106:                                   ; preds = %choice.exit100
  %var.load108 = load i64, ptr %"var.v'", align 8
  %multmp = mul i64 %var.load108, 10
  %var.load109 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load109, 48
  %addtmp110 = add i64 %multmp, %subtmp
  store i64 %addtmp110, ptr %"var.v'", align 8
  %var.load111 = load i64, ptr %"var.p'", align 8
  %addtmp112 = add i64 %var.load111, 1
  store i64 %addtmp112, ptr %"var.p'", align 8
  br label %choice.exit107

choice.else:                                      ; preds = %choice.exit100
  br label %loop.exit.183

choice.exit107:                                   ; preds = %choice.then106
  br label %loop.latch.183

and.185.then:                                     ; preds = %loop.exit.183
  %var.load116 = load ptr, ptr %var.cur, align 8
  %fld.gep117 = getelementptr inbounds { ptr, i64 }, ptr %var.load116, i32 0, i32 0
  %fld.load118 = load ptr, ptr %fld.gep117, align 8
  %s.read.len119 = getelementptr inbounds { i64, ptr }, ptr %fld.load118, i32 0, i32 0
  %s.read.len120 = load i64, ptr %s.read.len119, align 8
  %s.read.len121 = and i64 %s.read.len120, 281474976710655
  %s.read.data122 = getelementptr inbounds { i64, ptr }, ptr %fld.load118, i32 0, i32 1
  %s.read.data123 = load ptr, ptr %s.read.data122, align 8
  %var.load124 = load i64, ptr %"var.p'", align 8
  %idx.oob125 = icmp uge i64 %var.load124, %s.read.len121
  br i1 %idx.oob125, label %idx_oob127, label %idx_ok126

and.185.else:                                     ; preds = %loop.exit.183
  br label %and.185.exit

and.185.exit:                                     ; preds = %and.185.else, %choice.exit132
  %and.185.phi = phi i1 [ %choice.res139, %choice.exit132 ], [ %cmptmp115, %and.185.else ]
  br i1 %and.185.phi, label %choice.then140, label %choice.exit141

idx_ok126:                                        ; preds = %abort.dead128, %and.185.then
  %s.byte.gep129 = getelementptr i8, ptr %s.read.data123, i64 %var.load124
  %s.byte130 = load i8, ptr %s.byte.gep129, align 1
  %s.byte.val131 = zext i8 %s.byte130 to i64
  %val.match135 = icmp eq i64 %s.byte.val131, 46
  %val.match136 = icmp eq i64 %s.byte.val131, 101
  %case.or = or i1 %val.match135, %val.match136
  %val.match137 = icmp eq i64 %s.byte.val131, 69
  %case.or138 = or i1 %case.or, %val.match137
  br i1 %case.or138, label %choice.case133, label %choice.next134

idx_oob127:                                       ; preds = %and.185.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %idx_ok126

choice.exit132:                                   ; preds = %choice.next134, %choice.case133
  %choice.res139 = phi i1 [ true, %choice.case133 ], [ false, %choice.next134 ]
  br label %and.185.exit

choice.case133:                                   ; preds = %idx_ok126
  br label %choice.exit132

choice.next134:                                   ; preds = %idx_ok126
  br label %choice.exit132

choice.then140:                                   ; preds = %and.185.exit
  ret { i1, i64 } zeroinitializer

choice.exit141:                                   ; preds = %ret.dead142, %and.185.exit
  %var.load143 = load ptr, ptr %var.cur, align 8
  %var.load144 = load i64, ptr %"var.p'", align 8
  %fld.gep145 = getelementptr inbounds { ptr, i64 }, ptr %var.load143, i32 0, i32 1
  store i64 %var.load144, ptr %fld.gep145, align 8
  %var.load146 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load146, label %choice.then147, label %choice.else148

ret.dead142:                                      ; No predecessors!
  br label %choice.exit141

choice.then147:                                   ; preds = %choice.exit141
  %var.load150 = load i64, ptr %"var.v'", align 8
  %subtmp151 = sub i64 0, %var.load150
  br label %choice.exit149

choice.else148:                                   ; preds = %choice.exit141
  %var.load152 = load i64, ptr %"var.v'", align 8
  br label %choice.exit149

choice.exit149:                                   ; preds = %choice.else148, %choice.then147
  %choice.res153 = phi i64 [ %subtmp151, %choice.then147 ], [ %var.load152, %choice.else148 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res153, 1
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load4, 4
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %addtmp, %var.load5
  br i1 %cmptmp, label %and.186.then, label %and.186.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current15 = icmp eq i64 %str.tag11, %active.gen14
  %tag.fast.ok16 = or i1 %tag.immortal13, %tag.current15
  br i1 %tag.fast.ok16, label %str_ok12, label %tag.slow_check17

and.186.else:                                     ; preds = %str_ok
  br label %and.186.exit

and.186.exit:                                     ; preds = %and.186.else, %str.eq.merge
  %and.186.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp, %and.186.else ]
  br i1 %and.186.phi, label %choice.then, label %choice.exit

str_ok12:                                         ; preds = %tag.slow_check17, %and.186.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %var.load21 = load i64, ptr %var.p, align 8
  %var.load22 = load i64, ptr %var.p, align 8
  %addtmp23 = add i64 %var.load22, 4
  %start.is_neg = icmp slt i64 %var.load21, 0
  %rel.start = add i64 %s.read.len19, %var.load21
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load21
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len19
  %final.start = select i1 %start.gt.len, i64 %s.read.len19, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp23, 0
  %rel.end = add i64 %s.read.len19, %addtmp23
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp23
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len19
  %final.end = select i1 %end.gt.len, i64 %s.read.len19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data20, i64 %final.start
  %cmp.str = load i64, ptr @str.0.struct, align 8
  %cmp.str24 = and i64 %cmp.str, 281474976710655
  %cmp.str25 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str24
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check17:                                 ; preds = %and.186.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag11)
  br label %str_ok12

str.eq.then:                                      ; preds = %str_ok12
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str25, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok12
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.186.exit

choice.then:                                      ; preds = %and.186.exit
  %var.load26 = load ptr, ptr %var.cur, align 8
  %var.load27 = load i64, ptr %var.p, align 8
  %addtmp28 = add i64 %var.load27, 4
  %fld.gep29 = getelementptr inbounds { ptr, i64 }, ptr %var.load26, i32 0, i32 1
  store i64 %addtmp28, ptr %fld.gep29, align 8
  ret { i1, i64 } { i1 true, i64 1 }

choice.exit:                                      ; preds = %ret.dead, %and.186.exit
  %var.load30 = load i64, ptr %var.p, align 8
  %addtmp31 = add i64 %var.load30, 5
  %var.load32 = load i64, ptr %var.n, align 8
  %cmptmp33 = icmp sle i64 %addtmp31, %var.load32
  br i1 %cmptmp33, label %and.187.then, label %and.187.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

and.187.then:                                     ; preds = %choice.exit
  %var.load34 = load ptr, ptr %var.cur, align 8
  %fld.gep35 = getelementptr inbounds { ptr, i64 }, ptr %var.load34, i32 0, i32 0
  %fld.load36 = load ptr, ptr %fld.gep35, align 8
  %s.chk.len37 = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 0
  %s.chk.len38 = load i64, ptr %s.chk.len37, align 8
  %s.chk.len39 = and i64 %s.chk.len38, 281474976710655
  %str.tag40 = lshr i64 %s.chk.len38, 48
  %tag.immortal42 = icmp eq i64 %str.tag40, 0
  %active.gen43 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current44 = icmp eq i64 %str.tag40, %active.gen43
  %tag.fast.ok45 = or i1 %tag.immortal42, %tag.current44
  br i1 %tag.fast.ok45, label %str_ok41, label %tag.slow_check46

and.187.else:                                     ; preds = %choice.exit
  br label %and.187.exit

and.187.exit:                                     ; preds = %and.187.else, %str.eq.merge79
  %and.187.phi = phi i1 [ %str.eq.result82, %str.eq.merge79 ], [ %cmptmp33, %and.187.else ]
  br i1 %and.187.phi, label %choice.then83, label %choice.exit84

str_ok41:                                         ; preds = %tag.slow_check46, %and.187.then
  %s.read.len47 = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 0
  %s.read.len48 = load i64, ptr %s.read.len47, align 8
  %s.read.len49 = and i64 %s.read.len48, 281474976710655
  %s.read.data50 = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 1
  %s.read.data51 = load ptr, ptr %s.read.data50, align 8
  %var.load52 = load i64, ptr %var.p, align 8
  %var.load53 = load i64, ptr %var.p, align 8
  %addtmp54 = add i64 %var.load53, 5
  %start.is_neg55 = icmp slt i64 %var.load52, 0
  %rel.start56 = add i64 %s.read.len49, %var.load52
  %norm.start57 = select i1 %start.is_neg55, i64 %rel.start56, i64 %var.load52
  %start.lt.058 = icmp slt i64 %norm.start57, 0
  %c.start.059 = select i1 %start.lt.058, i64 0, i64 %norm.start57
  %start.gt.len60 = icmp sgt i64 %c.start.059, %s.read.len49
  %final.start61 = select i1 %start.gt.len60, i64 %s.read.len49, i64 %c.start.059
  %end.is_neg62 = icmp slt i64 %addtmp54, 0
  %rel.end63 = add i64 %s.read.len49, %addtmp54
  %norm.end64 = select i1 %end.is_neg62, i64 %rel.end63, i64 %addtmp54
  %end.lt.065 = icmp slt i64 %norm.end64, 0
  %c.end.066 = select i1 %end.lt.065, i64 0, i64 %norm.end64
  %end.gt.len67 = icmp sgt i64 %c.end.066, %s.read.len49
  %final.end68 = select i1 %end.gt.len67, i64 %s.read.len49, i64 %c.end.066
  %view.empty69 = icmp sle i64 %final.end68, %final.start61
  %view.len.sub70 = sub i64 %final.end68, %final.start61
  %view.len71 = select i1 %view.empty69, i64 0, i64 %view.len.sub70
  %view.data72 = getelementptr i8, ptr %s.read.data51, i64 %final.start61
  %cmp.str73 = load i64, ptr @str.1.struct, align 8
  %cmp.str74 = and i64 %cmp.str73, 281474976710655
  %cmp.str75 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.len76 = icmp eq i64 %view.len71, %cmp.str74
  br i1 %eq.len76, label %str.eq.then77, label %str.eq.else78

tag.slow_check46:                                 ; preds = %and.187.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag40)
  br label %str_ok41

str.eq.then77:                                    ; preds = %str_ok41
  %eq.memcmp80 = call i32 @memcmp(ptr %view.data72, ptr %cmp.str75, i64 %view.len71)
  %eq.cmp.zero81 = icmp eq i32 %eq.memcmp80, 0
  br label %str.eq.merge79

str.eq.else78:                                    ; preds = %str_ok41
  br label %str.eq.merge79

str.eq.merge79:                                   ; preds = %str.eq.else78, %str.eq.then77
  %str.eq.result82 = phi i1 [ %eq.cmp.zero81, %str.eq.then77 ], [ false, %str.eq.else78 ]
  br label %and.187.exit

choice.then83:                                    ; preds = %and.187.exit
  %var.load85 = load ptr, ptr %var.cur, align 8
  %var.load86 = load i64, ptr %var.p, align 8
  %addtmp87 = add i64 %var.load86, 5
  %fld.gep88 = getelementptr inbounds { ptr, i64 }, ptr %var.load85, i32 0, i32 1
  store i64 %addtmp87, ptr %fld.gep88, align 8
  ret { i1, i64 } { i1 true, i64 0 }

choice.exit84:                                    ; preds = %ret.dead89, %and.187.exit
  ret { i1, i64 } zeroinitializer

ret.dead89:                                       ; No predecessors!
  br label %choice.exit84
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.p, align 8
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %idx.oob = icmp uge i64 %var.load12, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c0, align 8
  %var.load13 = load i64, ptr %var.c0, align 8
  %val.match = icmp eq i64 %var.load13, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit14:                                    ; preds = %choice.next198, %choice.case197, %choice.exit191, %choice.exit127, %choice.exit63, %choice.case25, %choice.exit21
  %choice.res207 = phi i1 [ %choice.res, %choice.exit21 ], [ %call.res31, %choice.case25 ], [ %choice.res68, %choice.exit63 ], [ %choice.res132, %choice.exit127 ], [ %choice.res196, %choice.exit191 ], [ %call.res206, %choice.case197 ], [ false, %choice.next198 ]
  ret i1 %choice.res207

choice.case:                                      ; preds = %idx_ok
  %var.load15 = load ptr, ptr %var.cur, align 8
  %fld.gep16 = getelementptr inbounds { ptr, i64 }, ptr %var.load15, i32 0, i32 0
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %var.load18 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load18, 1
  %call.res19 = call { i1, i64 } @"json::#cursor_skip_str"(ptr %fld.load17, i64 %addtmp)
  %ram.tag = extractvalue { i1, i64 } %call.res19, 0
  br i1 %ram.tag, label %choice.then20, label %choice.else

choice.next:                                      ; preds = %idx_ok
  %val.match27 = icmp eq i64 %var.load13, 123
  %val.match28 = icmp eq i64 %var.load13, 91
  %case.or = or i1 %val.match27, %val.match28
  br i1 %case.or, label %choice.case25, label %choice.next26

choice.then20:                                    ; preds = %choice.case
  %ram.pay = extractvalue { i1, i64 } %call.res19, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.end, align 8
  %var.load22 = load ptr, ptr %var.cur, align 8
  %var.load23 = load i64, ptr %var.end, align 8
  %fld.gep24 = getelementptr inbounds { ptr, i64 }, ptr %var.load22, i32 0, i32 1
  store i64 %var.load23, ptr %fld.gep24, align 8
  br label %choice.exit21

choice.else:                                      ; preds = %choice.case
  br label %choice.exit21

choice.exit21:                                    ; preds = %choice.else, %choice.then20
  %choice.res = phi i1 [ true, %choice.then20 ], [ false, %choice.else ]
  br label %choice.exit14

choice.case25:                                    ; preds = %choice.next
  %var.load29 = load ptr, ptr %var.cur, align 8
  %var.load30 = load i64, ptr %var.p, align 8
  %call.res31 = call i1 @"json::#cursor_skip_compound"(ptr %var.load29, i64 %var.load30)
  br label %choice.exit14

choice.next26:                                    ; preds = %choice.next
  %val.match34 = icmp eq i64 %var.load13, 116
  br i1 %val.match34, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next26
  %var.load35 = load i64, ptr %var.p, align 8
  %addtmp36 = add i64 %var.load35, 4
  %var.load37 = load i64, ptr %var.n, align 8
  %cmptmp38 = icmp sle i64 %addtmp36, %var.load37
  br i1 %cmptmp38, label %and.188.then, label %and.188.else

choice.next33:                                    ; preds = %choice.next26
  %val.match71 = icmp eq i64 %var.load13, 102
  br i1 %val.match71, label %choice.case69, label %choice.next70

and.188.then:                                     ; preds = %choice.case32
  %var.load39 = load ptr, ptr %var.cur, align 8
  %fld.gep40 = getelementptr inbounds { ptr, i64 }, ptr %var.load39, i32 0, i32 0
  %fld.load41 = load ptr, ptr %fld.gep40, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %fld.load41, i32 0, i32 0
  %s.chk.len42 = load i64, ptr %s.chk.len, align 8
  %s.chk.len43 = and i64 %s.chk.len42, 281474976710655
  %str.tag44 = lshr i64 %s.chk.len42, 48
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  %active.gen47 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current48 = icmp eq i64 %str.tag44, %active.gen47
  %tag.fast.ok49 = or i1 %tag.immortal46, %tag.current48
  br i1 %tag.fast.ok49, label %str_ok45, label %tag.slow_check50

and.188.else:                                     ; preds = %choice.case32
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %str.eq.merge
  %and.188.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp38, %and.188.else ]
  br i1 %and.188.phi, label %choice.then61, label %choice.else62

str_ok45:                                         ; preds = %tag.slow_check50, %and.188.then
  %s.read.len51 = getelementptr inbounds { i64, ptr }, ptr %fld.load41, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len51, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %s.read.data54 = getelementptr inbounds { i64, ptr }, ptr %fld.load41, i32 0, i32 1
  %s.read.data55 = load ptr, ptr %s.read.data54, align 8
  %var.load56 = load i64, ptr %var.p, align 8
  %var.load57 = load i64, ptr %var.p, align 8
  %addtmp58 = add i64 %var.load57, 4
  %start.is_neg = icmp slt i64 %var.load56, 0
  %rel.start = add i64 %s.read.len53, %var.load56
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load56
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len53
  %final.start = select i1 %start.gt.len, i64 %s.read.len53, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp58, 0
  %rel.end = add i64 %s.read.len53, %addtmp58
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp58
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len53
  %final.end = select i1 %end.gt.len, i64 %s.read.len53, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data55, i64 %final.start
  %cmp.str = load i64, ptr @str.0.struct, align 8
  %cmp.str59 = and i64 %cmp.str, 281474976710655
  %cmp.str60 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str59
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check50:                                 ; preds = %and.188.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag44)
  br label %str_ok45

str.eq.then:                                      ; preds = %str_ok45
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str60, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok45
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.188.exit

choice.then61:                                    ; preds = %and.188.exit
  %var.load64 = load ptr, ptr %var.cur, align 8
  %var.load65 = load i64, ptr %var.p, align 8
  %addtmp66 = add i64 %var.load65, 4
  %fld.gep67 = getelementptr inbounds { ptr, i64 }, ptr %var.load64, i32 0, i32 1
  store i64 %addtmp66, ptr %fld.gep67, align 8
  br label %choice.exit63

choice.else62:                                    ; preds = %and.188.exit
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else62, %choice.then61
  %choice.res68 = phi i1 [ true, %choice.then61 ], [ false, %choice.else62 ]
  br label %choice.exit14

choice.case69:                                    ; preds = %choice.next33
  %var.load72 = load i64, ptr %var.p, align 8
  %addtmp73 = add i64 %var.load72, 5
  %var.load74 = load i64, ptr %var.n, align 8
  %cmptmp75 = icmp sle i64 %addtmp73, %var.load74
  br i1 %cmptmp75, label %and.189.then, label %and.189.else

choice.next70:                                    ; preds = %choice.next33
  %val.match135 = icmp eq i64 %var.load13, 110
  br i1 %val.match135, label %choice.case133, label %choice.next134

and.189.then:                                     ; preds = %choice.case69
  %var.load76 = load ptr, ptr %var.cur, align 8
  %fld.gep77 = getelementptr inbounds { ptr, i64 }, ptr %var.load76, i32 0, i32 0
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %s.chk.len79 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 0
  %s.chk.len80 = load i64, ptr %s.chk.len79, align 8
  %s.chk.len81 = and i64 %s.chk.len80, 281474976710655
  %str.tag82 = lshr i64 %s.chk.len80, 48
  %tag.immortal84 = icmp eq i64 %str.tag82, 0
  %active.gen85 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current86 = icmp eq i64 %str.tag82, %active.gen85
  %tag.fast.ok87 = or i1 %tag.immortal84, %tag.current86
  br i1 %tag.fast.ok87, label %str_ok83, label %tag.slow_check88

and.189.else:                                     ; preds = %choice.case69
  br label %and.189.exit

and.189.exit:                                     ; preds = %and.189.else, %str.eq.merge121
  %and.189.phi = phi i1 [ %str.eq.result124, %str.eq.merge121 ], [ %cmptmp75, %and.189.else ]
  br i1 %and.189.phi, label %choice.then125, label %choice.else126

str_ok83:                                         ; preds = %tag.slow_check88, %and.189.then
  %s.read.len89 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 0
  %s.read.len90 = load i64, ptr %s.read.len89, align 8
  %s.read.len91 = and i64 %s.read.len90, 281474976710655
  %s.read.data92 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 1
  %s.read.data93 = load ptr, ptr %s.read.data92, align 8
  %var.load94 = load i64, ptr %var.p, align 8
  %var.load95 = load i64, ptr %var.p, align 8
  %addtmp96 = add i64 %var.load95, 5
  %start.is_neg97 = icmp slt i64 %var.load94, 0
  %rel.start98 = add i64 %s.read.len91, %var.load94
  %norm.start99 = select i1 %start.is_neg97, i64 %rel.start98, i64 %var.load94
  %start.lt.0100 = icmp slt i64 %norm.start99, 0
  %c.start.0101 = select i1 %start.lt.0100, i64 0, i64 %norm.start99
  %start.gt.len102 = icmp sgt i64 %c.start.0101, %s.read.len91
  %final.start103 = select i1 %start.gt.len102, i64 %s.read.len91, i64 %c.start.0101
  %end.is_neg104 = icmp slt i64 %addtmp96, 0
  %rel.end105 = add i64 %s.read.len91, %addtmp96
  %norm.end106 = select i1 %end.is_neg104, i64 %rel.end105, i64 %addtmp96
  %end.lt.0107 = icmp slt i64 %norm.end106, 0
  %c.end.0108 = select i1 %end.lt.0107, i64 0, i64 %norm.end106
  %end.gt.len109 = icmp sgt i64 %c.end.0108, %s.read.len91
  %final.end110 = select i1 %end.gt.len109, i64 %s.read.len91, i64 %c.end.0108
  %view.empty111 = icmp sle i64 %final.end110, %final.start103
  %view.len.sub112 = sub i64 %final.end110, %final.start103
  %view.len113 = select i1 %view.empty111, i64 0, i64 %view.len.sub112
  %view.data114 = getelementptr i8, ptr %s.read.data93, i64 %final.start103
  %cmp.str115 = load i64, ptr @str.1.struct, align 8
  %cmp.str116 = and i64 %cmp.str115, 281474976710655
  %cmp.str117 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.len118 = icmp eq i64 %view.len113, %cmp.str116
  br i1 %eq.len118, label %str.eq.then119, label %str.eq.else120

tag.slow_check88:                                 ; preds = %and.189.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag82)
  br label %str_ok83

str.eq.then119:                                   ; preds = %str_ok83
  %eq.memcmp122 = call i32 @memcmp(ptr %view.data114, ptr %cmp.str117, i64 %view.len113)
  %eq.cmp.zero123 = icmp eq i32 %eq.memcmp122, 0
  br label %str.eq.merge121

str.eq.else120:                                   ; preds = %str_ok83
  br label %str.eq.merge121

str.eq.merge121:                                  ; preds = %str.eq.else120, %str.eq.then119
  %str.eq.result124 = phi i1 [ %eq.cmp.zero123, %str.eq.then119 ], [ false, %str.eq.else120 ]
  br label %and.189.exit

choice.then125:                                   ; preds = %and.189.exit
  %var.load128 = load ptr, ptr %var.cur, align 8
  %var.load129 = load i64, ptr %var.p, align 8
  %addtmp130 = add i64 %var.load129, 5
  %fld.gep131 = getelementptr inbounds { ptr, i64 }, ptr %var.load128, i32 0, i32 1
  store i64 %addtmp130, ptr %fld.gep131, align 8
  br label %choice.exit127

choice.else126:                                   ; preds = %and.189.exit
  br label %choice.exit127

choice.exit127:                                   ; preds = %choice.else126, %choice.then125
  %choice.res132 = phi i1 [ true, %choice.then125 ], [ false, %choice.else126 ]
  br label %choice.exit14

choice.case133:                                   ; preds = %choice.next70
  %var.load136 = load i64, ptr %var.p, align 8
  %addtmp137 = add i64 %var.load136, 4
  %var.load138 = load i64, ptr %var.n, align 8
  %cmptmp139 = icmp sle i64 %addtmp137, %var.load138
  br i1 %cmptmp139, label %and.190.then, label %and.190.else

choice.next134:                                   ; preds = %choice.next70
  %cmptmp199 = icmp sge i64 %var.load13, 48
  br i1 %cmptmp199, label %and.191.then, label %and.191.else

and.190.then:                                     ; preds = %choice.case133
  %var.load140 = load ptr, ptr %var.cur, align 8
  %fld.gep141 = getelementptr inbounds { ptr, i64 }, ptr %var.load140, i32 0, i32 0
  %fld.load142 = load ptr, ptr %fld.gep141, align 8
  %s.chk.len143 = getelementptr inbounds { i64, ptr }, ptr %fld.load142, i32 0, i32 0
  %s.chk.len144 = load i64, ptr %s.chk.len143, align 8
  %s.chk.len145 = and i64 %s.chk.len144, 281474976710655
  %str.tag146 = lshr i64 %s.chk.len144, 48
  %tag.immortal148 = icmp eq i64 %str.tag146, 0
  %active.gen149 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current150 = icmp eq i64 %str.tag146, %active.gen149
  %tag.fast.ok151 = or i1 %tag.immortal148, %tag.current150
  br i1 %tag.fast.ok151, label %str_ok147, label %tag.slow_check152

and.190.else:                                     ; preds = %choice.case133
  br label %and.190.exit

and.190.exit:                                     ; preds = %and.190.else, %str.eq.merge185
  %and.190.phi = phi i1 [ %str.eq.result188, %str.eq.merge185 ], [ %cmptmp139, %and.190.else ]
  br i1 %and.190.phi, label %choice.then189, label %choice.else190

str_ok147:                                        ; preds = %tag.slow_check152, %and.190.then
  %s.read.len153 = getelementptr inbounds { i64, ptr }, ptr %fld.load142, i32 0, i32 0
  %s.read.len154 = load i64, ptr %s.read.len153, align 8
  %s.read.len155 = and i64 %s.read.len154, 281474976710655
  %s.read.data156 = getelementptr inbounds { i64, ptr }, ptr %fld.load142, i32 0, i32 1
  %s.read.data157 = load ptr, ptr %s.read.data156, align 8
  %var.load158 = load i64, ptr %var.p, align 8
  %var.load159 = load i64, ptr %var.p, align 8
  %addtmp160 = add i64 %var.load159, 4
  %start.is_neg161 = icmp slt i64 %var.load158, 0
  %rel.start162 = add i64 %s.read.len155, %var.load158
  %norm.start163 = select i1 %start.is_neg161, i64 %rel.start162, i64 %var.load158
  %start.lt.0164 = icmp slt i64 %norm.start163, 0
  %c.start.0165 = select i1 %start.lt.0164, i64 0, i64 %norm.start163
  %start.gt.len166 = icmp sgt i64 %c.start.0165, %s.read.len155
  %final.start167 = select i1 %start.gt.len166, i64 %s.read.len155, i64 %c.start.0165
  %end.is_neg168 = icmp slt i64 %addtmp160, 0
  %rel.end169 = add i64 %s.read.len155, %addtmp160
  %norm.end170 = select i1 %end.is_neg168, i64 %rel.end169, i64 %addtmp160
  %end.lt.0171 = icmp slt i64 %norm.end170, 0
  %c.end.0172 = select i1 %end.lt.0171, i64 0, i64 %norm.end170
  %end.gt.len173 = icmp sgt i64 %c.end.0172, %s.read.len155
  %final.end174 = select i1 %end.gt.len173, i64 %s.read.len155, i64 %c.end.0172
  %view.empty175 = icmp sle i64 %final.end174, %final.start167
  %view.len.sub176 = sub i64 %final.end174, %final.start167
  %view.len177 = select i1 %view.empty175, i64 0, i64 %view.len.sub176
  %view.data178 = getelementptr i8, ptr %s.read.data157, i64 %final.start167
  %cmp.str179 = load i64, ptr @str.17.struct, align 8
  %cmp.str180 = and i64 %cmp.str179, 281474976710655
  %cmp.str181 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.len182 = icmp eq i64 %view.len177, %cmp.str180
  br i1 %eq.len182, label %str.eq.then183, label %str.eq.else184

tag.slow_check152:                                ; preds = %and.190.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag146)
  br label %str_ok147

str.eq.then183:                                   ; preds = %str_ok147
  %eq.memcmp186 = call i32 @memcmp(ptr %view.data178, ptr %cmp.str181, i64 %view.len177)
  %eq.cmp.zero187 = icmp eq i32 %eq.memcmp186, 0
  br label %str.eq.merge185

str.eq.else184:                                   ; preds = %str_ok147
  br label %str.eq.merge185

str.eq.merge185:                                  ; preds = %str.eq.else184, %str.eq.then183
  %str.eq.result188 = phi i1 [ %eq.cmp.zero187, %str.eq.then183 ], [ false, %str.eq.else184 ]
  br label %and.190.exit

choice.then189:                                   ; preds = %and.190.exit
  %var.load192 = load ptr, ptr %var.cur, align 8
  %var.load193 = load i64, ptr %var.p, align 8
  %addtmp194 = add i64 %var.load193, 4
  %fld.gep195 = getelementptr inbounds { ptr, i64 }, ptr %var.load192, i32 0, i32 1
  store i64 %addtmp194, ptr %fld.gep195, align 8
  br label %choice.exit191

choice.else190:                                   ; preds = %and.190.exit
  br label %choice.exit191

choice.exit191:                                   ; preds = %choice.else190, %choice.then189
  %choice.res196 = phi i1 [ true, %choice.then189 ], [ false, %choice.else190 ]
  br label %choice.exit14

choice.case197:                                   ; preds = %and.191.exit
  %var.load203 = load ptr, ptr %var.cur, align 8
  %var.load204 = load i64, ptr %var.p, align 8
  %var.load205 = load i64, ptr %var.c0, align 8
  %call.res206 = call i1 @"json::#cursor_skip_number"(ptr %var.load203, i64 %var.load204, i64 %var.load205)
  br label %choice.exit14

choice.next198:                                   ; preds = %and.191.exit
  br label %choice.exit14

and.191.then:                                     ; preds = %choice.next134
  %cmptmp200 = icmp sle i64 %var.load13, 57
  br label %and.191.exit

and.191.else:                                     ; preds = %choice.next134
  br label %and.191.exit

and.191.exit:                                     ; preds = %and.191.else, %and.191.then
  %and.191.phi = phi i1 [ %cmptmp200, %and.191.then ], [ %cmptmp199, %and.191.else ]
  %val.match201 = icmp eq i64 %var.load13, 45
  %case.or202 = or i1 %and.191.phi, %val.match201
  br i1 %case.or202, label %choice.case197, label %choice.next198
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noinline "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
