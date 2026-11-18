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

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.88.exit

idx_oob:                                          ; preds = %idx_big_check, %and.88.then
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

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_hex"(i64 %s.byte.val)
  br label %and.89.exit

idx_oob:                                          ; preds = %idx_big_check, %and.89.then
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
  %idx.neg = icmp slt i64 %var.load13, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load13, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load14 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load14, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
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
  %idx.neg = icmp slt i64 %addtmp11, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %addtmp11, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %addtmp11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
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
  %idx.neg = icmp slt i64 %addtmp24, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

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
  %var.load100 = load i64, ptr %var.k, align 8
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_oob_msg()
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
  call void @dva_abort_str_oob_msg()
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
  call void @dva_abort_str_oob_msg()
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
  call void @dva_abort_str_oob_msg()
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
  %idx.neg = icmp slt i64 %addtmp11, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.95.else:                                      ; preds = %str_ok
  br label %and.95.exit

and.95.exit:                                      ; preds = %and.95.else, %idx_ok
  %and.95.phi = phi i1 [ %cmptmp12, %idx_ok ], [ %cmptmp, %and.95.else ]
  br i1 %and.95.phi, label %and.96.then, label %and.96.else

idx_big_check:                                    ; preds = %and.95.then
  %idx.big = icmp sge i64 %addtmp11, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %addtmp11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp12 = icmp eq i64 %s.byte.val, 92
  br label %and.95.exit

idx_oob:                                          ; preds = %idx_big_check, %and.95.then
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
  %idx.neg23 = icmp slt i64 %addtmp22, 0
  br i1 %idx.neg23, label %idx_oob26, label %idx_big_check24

and.96.else:                                      ; preds = %and.95.exit
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %idx_ok25
  %and.96.phi = phi i1 [ %cmptmp32, %idx_ok25 ], [ %and.95.phi, %and.96.else ]
  br i1 %and.96.phi, label %and.97.then, label %and.97.else

idx_big_check24:                                  ; preds = %and.96.then
  %idx.big27 = icmp sge i64 %addtmp22, %s.read.len18
  br i1 %idx.big27, label %idx_oob26, label %idx_ok25

idx_ok25:                                         ; preds = %abort.dead28, %idx_big_check24
  %s.byte.gep29 = getelementptr i8, ptr %s.read.data20, i64 %addtmp22
  %s.byte30 = load i8, ptr %s.byte.gep29, align 1
  %s.byte.val31 = zext i8 %s.byte30 to i64
  %cmptmp32 = icmp eq i64 %s.byte.val31, 117
  br label %and.96.exit

idx_oob26:                                        ; preds = %idx_big_check24, %and.96.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %idx_ok25

and.97.then:                                      ; preds = %and.96.exit
  %var.load33 = load ptr, ptr %var.sc, align 8
  %var.load34 = load i64, ptr %var.k, align 8
  %addtmp35 = add i64 %var.load34, 8
  %call.res = call i1 @"json::#is_hex_at"(ptr %var.load33, i64 %addtmp35)
  br label %and.97.exit

and.97.else:                                      ; preds = %and.96.exit
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %and.97.then
  %and.97.phi = phi i1 [ %call.res, %and.97.then ], [ %and.96.phi, %and.97.else ]
  br i1 %and.97.phi, label %and.98.then, label %and.98.else

and.98.then:                                      ; preds = %and.97.exit
  %var.load36 = load ptr, ptr %var.sc, align 8
  %var.load37 = load i64, ptr %var.k, align 8
  %addtmp38 = add i64 %var.load37, 9
  %call.res39 = call i1 @"json::#is_hex_at"(ptr %var.load36, i64 %addtmp38)
  br label %and.98.exit

and.98.else:                                      ; preds = %and.97.exit
  br label %and.98.exit

and.98.exit:                                      ; preds = %and.98.else, %and.98.then
  %and.98.phi = phi i1 [ %call.res39, %and.98.then ], [ %and.97.phi, %and.98.else ]
  br i1 %and.98.phi, label %and.99.then, label %and.99.else

and.99.then:                                      ; preds = %and.98.exit
  %var.load40 = load ptr, ptr %var.sc, align 8
  %var.load41 = load i64, ptr %var.k, align 8
  %addtmp42 = add i64 %var.load41, 10
  %call.res43 = call i1 @"json::#is_hex_at"(ptr %var.load40, i64 %addtmp42)
  br label %and.99.exit

and.99.else:                                      ; preds = %and.98.exit
  br label %and.99.exit

and.99.exit:                                      ; preds = %and.99.else, %and.99.then
  %and.99.phi = phi i1 [ %call.res43, %and.99.then ], [ %and.98.phi, %and.99.else ]
  br i1 %and.99.phi, label %and.100.then, label %and.100.else

and.100.then:                                     ; preds = %and.99.exit
  %var.load44 = load ptr, ptr %var.sc, align 8
  %var.load45 = load i64, ptr %var.k, align 8
  %addtmp46 = add i64 %var.load45, 11
  %call.res47 = call i1 @"json::#is_hex_at"(ptr %var.load44, i64 %addtmp46)
  br label %and.100.exit

and.100.else:                                     ; preds = %and.99.exit
  br label %and.100.exit

and.100.exit:                                     ; preds = %and.100.else, %and.100.then
  %and.100.phi = phi i1 [ %call.res47, %and.100.then ], [ %and.99.phi, %and.100.else ]
  store i1 %and.100.phi, ptr %var.has_second, align 1
  %var.load48 = load i1, ptr %var.has_second, align 1
  br i1 %var.load48, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.100.exit
  %var.load49 = load ptr, ptr %var.sc, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i64 }, ptr %var.load49, i32 0, i32 0
  %fld.load51 = load ptr, ptr %fld.gep50, align 8
  %s.read.len52 = getelementptr inbounds { i64, ptr }, ptr %fld.load51, i32 0, i32 0
  %s.read.len53 = load i64, ptr %s.read.len52, align 8
  %s.read.len54 = and i64 %s.read.len53, 281474976710655
  %s.read.data55 = getelementptr inbounds { i64, ptr }, ptr %fld.load51, i32 0, i32 1
  %s.read.data56 = load ptr, ptr %s.read.data55, align 8
  %var.load57 = load i64, ptr %var.k, align 8
  %addtmp58 = add i64 %var.load57, 8
  %idx.neg59 = icmp slt i64 %addtmp58, 0
  br i1 %idx.neg59, label %idx_oob62, label %idx_big_check60

choice.else:                                      ; preds = %and.100.exit
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 56)
  %err.code.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 0
  store i64 400, ptr %err.code.gep160, align 8
  %err.msg.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep161, align 8
  %err.file.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep162, align 8
  %err.line.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 3
  store i64 0, ptr %err.line.gep163, align 8
  %err.col.gep164 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 4
  store i64 0, ptr %err.col.gep164, align 8
  %err.ctx.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc159, i32 0, i32 5
  %var.load166 = load i64, ptr %var.k, align 8
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld169 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc168, i32 0, i32 0
  store i64 %var.load166, ptr %rec.fld169, align 8
  %rec.fld170 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc168, i32 0, i32 1
  store i64 0, ptr %rec.fld170, align 8
  %ctx.0.gep171 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc168, i32 0, i32 0
  %ctx.0172 = load i64, ptr %ctx.0.gep171, align 8
  %ctx.1.gep173 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc168, i32 0, i32 1
  %ctx.1174 = load i64, ptr %ctx.1.gep173, align 8
  %err.ctx0.gep175 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep165, i32 0, i32 0
  store i64 %ctx.0172, ptr %err.ctx0.gep175, align 8
  %err.ctx1.gep176 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep165, i32 0, i32 1
  store i64 %ctx.1174, ptr %err.ctx1.gep176, align 8
  %p.to.i64177 = ptrtoint ptr %err.alloc159 to i64
  %ram.pay178 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64177, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit139
  %choice.res179 = phi { i1, i64 } [ %choice.res, %choice.exit139 ], [ %ram.pay178, %choice.else ]
  ret { i1, i64 } %choice.res179

idx_big_check60:                                  ; preds = %choice.then
  %idx.big63 = icmp sge i64 %addtmp58, %s.read.len54
  br i1 %idx.big63, label %idx_oob62, label %idx_ok61

idx_ok61:                                         ; preds = %abort.dead64, %idx_big_check60
  %s.byte.gep65 = getelementptr i8, ptr %s.read.data56, i64 %addtmp58
  %s.byte66 = load i8, ptr %s.byte.gep65, align 1
  %s.byte.val67 = zext i8 %s.byte66 to i64
  %call.res68 = call i64 @"json::#hexval"(i64 %s.byte.val67)
  store i64 %call.res68, ptr %var.l2, align 8
  %var.load69 = load ptr, ptr %var.sc, align 8
  %fld.gep70 = getelementptr inbounds { ptr, i64 }, ptr %var.load69, i32 0, i32 0
  %fld.load71 = load ptr, ptr %fld.gep70, align 8
  %s.read.len72 = getelementptr inbounds { i64, ptr }, ptr %fld.load71, i32 0, i32 0
  %s.read.len73 = load i64, ptr %s.read.len72, align 8
  %s.read.len74 = and i64 %s.read.len73, 281474976710655
  %s.read.data75 = getelementptr inbounds { i64, ptr }, ptr %fld.load71, i32 0, i32 1
  %s.read.data76 = load ptr, ptr %s.read.data75, align 8
  %var.load77 = load i64, ptr %var.k, align 8
  %addtmp78 = add i64 %var.load77, 9
  %idx.neg79 = icmp slt i64 %addtmp78, 0
  br i1 %idx.neg79, label %idx_oob82, label %idx_big_check80

idx_oob62:                                        ; preds = %idx_big_check60, %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %idx_ok61

idx_big_check80:                                  ; preds = %idx_ok61
  %idx.big83 = icmp sge i64 %addtmp78, %s.read.len74
  br i1 %idx.big83, label %idx_oob82, label %idx_ok81

idx_ok81:                                         ; preds = %abort.dead84, %idx_big_check80
  %s.byte.gep85 = getelementptr i8, ptr %s.read.data76, i64 %addtmp78
  %s.byte86 = load i8, ptr %s.byte.gep85, align 1
  %s.byte.val87 = zext i8 %s.byte86 to i64
  %call.res88 = call i64 @"json::#hexval"(i64 %s.byte.val87)
  store i64 %call.res88, ptr %var.l3, align 8
  %var.load89 = load ptr, ptr %var.sc, align 8
  %fld.gep90 = getelementptr inbounds { ptr, i64 }, ptr %var.load89, i32 0, i32 0
  %fld.load91 = load ptr, ptr %fld.gep90, align 8
  %s.read.len92 = getelementptr inbounds { i64, ptr }, ptr %fld.load91, i32 0, i32 0
  %s.read.len93 = load i64, ptr %s.read.len92, align 8
  %s.read.len94 = and i64 %s.read.len93, 281474976710655
  %s.read.data95 = getelementptr inbounds { i64, ptr }, ptr %fld.load91, i32 0, i32 1
  %s.read.data96 = load ptr, ptr %s.read.data95, align 8
  %var.load97 = load i64, ptr %var.k, align 8
  %addtmp98 = add i64 %var.load97, 10
  %idx.neg99 = icmp slt i64 %addtmp98, 0
  br i1 %idx.neg99, label %idx_oob102, label %idx_big_check100

idx_oob82:                                        ; preds = %idx_big_check80, %idx_ok61
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %idx_ok81

idx_big_check100:                                 ; preds = %idx_ok81
  %idx.big103 = icmp sge i64 %addtmp98, %s.read.len94
  br i1 %idx.big103, label %idx_oob102, label %idx_ok101

idx_ok101:                                        ; preds = %abort.dead104, %idx_big_check100
  %s.byte.gep105 = getelementptr i8, ptr %s.read.data96, i64 %addtmp98
  %s.byte106 = load i8, ptr %s.byte.gep105, align 1
  %s.byte.val107 = zext i8 %s.byte106 to i64
  %call.res108 = call i64 @"json::#hexval"(i64 %s.byte.val107)
  store i64 %call.res108, ptr %var.l4, align 8
  %var.load109 = load ptr, ptr %var.sc, align 8
  %fld.gep110 = getelementptr inbounds { ptr, i64 }, ptr %var.load109, i32 0, i32 0
  %fld.load111 = load ptr, ptr %fld.gep110, align 8
  %s.read.len112 = getelementptr inbounds { i64, ptr }, ptr %fld.load111, i32 0, i32 0
  %s.read.len113 = load i64, ptr %s.read.len112, align 8
  %s.read.len114 = and i64 %s.read.len113, 281474976710655
  %s.read.data115 = getelementptr inbounds { i64, ptr }, ptr %fld.load111, i32 0, i32 1
  %s.read.data116 = load ptr, ptr %s.read.data115, align 8
  %var.load117 = load i64, ptr %var.k, align 8
  %addtmp118 = add i64 %var.load117, 11
  %idx.neg119 = icmp slt i64 %addtmp118, 0
  br i1 %idx.neg119, label %idx_oob122, label %idx_big_check120

idx_oob102:                                       ; preds = %idx_big_check100, %idx_ok81
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead104:                                    ; No predecessors!
  br label %idx_ok101

idx_big_check120:                                 ; preds = %idx_ok101
  %idx.big123 = icmp sge i64 %addtmp118, %s.read.len114
  br i1 %idx.big123, label %idx_oob122, label %idx_ok121

idx_ok121:                                        ; preds = %abort.dead124, %idx_big_check120
  %s.byte.gep125 = getelementptr i8, ptr %s.read.data116, i64 %addtmp118
  %s.byte126 = load i8, ptr %s.byte.gep125, align 1
  %s.byte.val127 = zext i8 %s.byte126 to i64
  %call.res128 = call i64 @"json::#hexval"(i64 %s.byte.val127)
  store i64 %call.res128, ptr %var.l5, align 8
  %var.load129 = load i64, ptr %var.l2, align 8
  %multmp = mul i64 %var.load129, 4096
  %var.load130 = load i64, ptr %var.l3, align 8
  %multmp131 = mul i64 %var.load130, 256
  %addtmp132 = add i64 %multmp, %multmp131
  %var.load133 = load i64, ptr %var.l4, align 8
  %multmp134 = mul i64 %var.load133, 16
  %addtmp135 = add i64 %addtmp132, %multmp134
  %var.load136 = load i64, ptr %var.l5, align 8
  %addtmp137 = add i64 %addtmp135, %var.load136
  store i64 %addtmp137, ptr %var.locp, align 8
  %var.load138 = load i64, ptr %var.locp, align 8
  %cmptmp140 = icmp sge i64 %var.load138, 56320
  br i1 %cmptmp140, label %and.101.then, label %and.101.else

idx_oob122:                                       ; preds = %idx_big_check120, %idx_ok101
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead124:                                    ; No predecessors!
  br label %idx_ok121

choice.exit139:                                   ; preds = %choice.next, %choice.case
  %choice.res = phi { i1, i64 } [ %call.res154, %choice.case ], [ %ram.pay, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %and.101.exit
  %var.load142 = load i64, ptr %var.cp, align 8
  %subtmp = sub i64 %var.load142, 55296
  %multmp143 = mul i64 %subtmp, 1024
  %addtmp144 = add i64 65536, %multmp143
  %var.load145 = load i64, ptr %var.locp, align 8
  %subtmp146 = sub i64 %var.load145, 56320
  %addtmp147 = add i64 %addtmp144, %subtmp146
  store i64 %addtmp147, ptr %var.full_cp, align 8
  %var.load148 = load ptr, ptr %var.b, align 8
  %var.load149 = load i64, ptr %var.full_cp, align 8
  %coerce.trunc = trunc i64 %var.load149 to i32
  call void @"utf::append_rune"(ptr %var.load148, i32 %coerce.trunc)
  %var.load150 = load ptr, ptr %var.sc, align 8
  %var.load151 = load ptr, ptr %var.b, align 8
  %var.load152 = load i64, ptr %var.k, align 8
  %addtmp153 = add i64 %var.load152, 12
  %call.res154 = call { i1, i64 } @"json::#scan_string"(ptr %var.load150, ptr %var.load151, i64 %addtmp153)
  br label %choice.exit139

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
  %var.load155 = load i64, ptr %var.k, align 8
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load155, ptr %rec.fld, align 8
  %rec.fld157 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld157, align 8
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
  br label %choice.exit139

and.101.then:                                     ; preds = %idx_ok121
  %cmptmp141 = icmp sle i64 %var.load138, 57343
  br label %and.101.exit

and.101.else:                                     ; preds = %idx_ok121
  br label %and.101.exit

and.101.exit:                                     ; preds = %and.101.else, %and.101.then
  %and.101.phi = phi i1 [ %cmptmp141, %and.101.then ], [ %cmptmp140, %and.101.else ]
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

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %var.load10
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_digit"(i64 %s.byte.val)
  br label %and.103.exit

idx_oob:                                          ; preds = %idx_big_check, %and.103.then
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
  %idx.neg = icmp slt i64 %var.load63, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit58
  %idx.big = icmp sge i64 %var.load63, %s.read.len61
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data62, i64 %var.load63
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load64 = load i64, ptr %var.c, align 8
  %cmptmp66 = icmp sge i64 %var.load64, 32
  br i1 %cmptmp66, label %and.106.then, label %and.106.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit58
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
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.108.else:                                     ; preds = %str_ok
  br label %and.108.exit

and.108.exit:                                     ; preds = %and.108.else, %idx_ok
  %and.108.phi = phi i1 [ %cmptmp18, %idx_ok ], [ %cmptmp, %and.108.else ]
  br i1 %and.108.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.108.then
  %idx.big = icmp sge i64 %var.load17, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp18 = icmp eq i64 %s.byte.val, 34
  br label %and.108.exit

idx_oob:                                          ; preds = %idx_big_check, %and.108.then
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
  %idx.neg = icmp slt i64 %var.load22, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load22, %s.read.len20
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data21, i64 %var.load22
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
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
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load17, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
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
  %idx.neg = icmp slt i64 %var.load22, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load10, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load22, %s.read.len20
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data21, i64 %var.load22
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
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
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load17, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
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
  %idx.neg = icmp slt i64 %var.load21, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.109.else:                                     ; preds = %str_ok
  br label %and.109.exit

and.109.exit:                                     ; preds = %and.109.else, %idx_ok
  %and.109.phi = phi i1 [ %cmptmp22, %idx_ok ], [ %cmptmp, %and.109.else ]
  store i1 %and.109.phi, ptr %var.ok_col, align 1
  %var.load23 = load i1, ptr %var.ok_col, align 1
  br i1 %var.load23, label %choice.then24, label %choice.else25

idx_big_check:                                    ; preds = %and.109.then
  %idx.big = icmp sge i64 %var.load21, %s.read.len19
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data20, i64 %var.load21
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp22 = icmp eq i64 %s.byte.val, 58
  br label %and.109.exit

idx_oob:                                          ; preds = %idx_big_check, %and.109.then
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
  %var._180 = alloca ptr, align 8
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
  %ram.pay178 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr179 = inttoptr i64 %ram.pay178 to ptr
  store ptr %pay.ptr179, ptr %var._180, align 8
  store ptr %pay.ptr179, ptr %var.e2, align 8
  %var.load181 = load ptr, ptr %var.e2, align 8
  %p.to.i64182 = ptrtoint ptr %var.load181 to i64
  %ram.pay183 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64182, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit31
  %choice.res184 = phi { i1, i64 } [ %choice.res177, %choice.exit31 ], [ %ram.pay183, %choice.else ]
  ret { i1, i64 } %choice.res184

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
  %idx.neg = icmp slt i64 %var.load29, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit17

str_ok:                                           ; preds = %tag.slow_check, %a.store
  %cmptmp = icmp slt i64 %var.load16, %str.len.query22
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %a.store
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load29, %s.read.len27
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit17

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit31:                                    ; preds = %choice.next77, %choice.exit128, %a.view.off71
  %choice.res177 = phi { i1, i64 } [ %ram.pay75, %a.view.off71 ], [ %choice.res155, %choice.exit128 ], [ %ram.pay176, %choice.next77 ]
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
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 56)
  %err.code.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc157, i32 0, i32 0
  store i64 400, ptr %err.code.gep158, align 8
  %err.msg.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc157, i32 0, i32 1
  store ptr @str.12.struct, ptr %err.msg.gep159, align 8
  %err.file.gep160 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc157, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep160, align 8
  %err.line.gep161 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc157, i32 0, i32 3
  store i64 0, ptr %err.line.gep161, align 8
  %err.col.gep162 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc157, i32 0, i32 4
  store i64 0, ptr %err.col.gep162, align 8
  %err.ctx.gep163 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc157, i32 0, i32 5
  %var.load164 = load i64, ptr %var.p, align 8
  %arena.cur165 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld167 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc166, i32 0, i32 0
  store i64 %var.load164, ptr %rec.fld167, align 8
  %rec.fld168 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc166, i32 0, i32 1
  store i64 0, ptr %rec.fld168, align 8
  %ctx.0.gep169 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc166, i32 0, i32 0
  %ctx.0170 = load i64, ptr %ctx.0.gep169, align 8
  %ctx.1.gep171 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc166, i32 0, i32 1
  %ctx.1172 = load i64, ptr %ctx.1.gep171, align 8
  %err.ctx0.gep173 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep163, i32 0, i32 0
  store i64 %ctx.0170, ptr %err.ctx0.gep173, align 8
  %err.ctx1.gep174 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep163, i32 0, i32 1
  store i64 %ctx.1172, ptr %err.ctx1.gep174, align 8
  %p.to.i64175 = ptrtoint ptr %err.alloc157 to i64
  %ram.pay176 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64175, 1
  br label %choice.exit31

choice.exit91:                                    ; preds = %choice.next93, %idx_ok119
  %choice.res126 = phi i64 [ %s.byte.val125, %idx_ok119 ], [ -1, %choice.next93 ]
  store i64 %choice.res126, ptr %var.c2, align 8
  %var.load127 = load i64, ptr %var.c2, align 8
  %val.match131 = icmp eq i64 %var.load127, 125
  br i1 %val.match131, label %choice.case129, label %choice.next130

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
  %idx.neg117 = icmp slt i64 %var.load116, 0
  br i1 %idx.neg117, label %idx_oob120, label %idx_big_check118

choice.next93:                                    ; preds = %str_ok101
  br label %choice.exit91

str_ok101:                                        ; preds = %tag.slow_check106, %choice.case76
  %cmptmp107 = icmp slt i64 %var.load90, %str.len.query99
  br i1 %cmptmp107, label %choice.case92, label %choice.next93

tag.slow_check106:                                ; preds = %choice.case76
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag100)
  br label %str_ok101

idx_big_check118:                                 ; preds = %choice.case92
  %idx.big121 = icmp sge i64 %var.load116, %s.read.len113
  br i1 %idx.big121, label %idx_oob120, label %idx_ok119

idx_ok119:                                        ; preds = %abort.dead122, %idx_big_check118
  %s.byte.gep123 = getelementptr i8, ptr %s.read.data115, i64 %var.load116
  %s.byte124 = load i8, ptr %s.byte.gep123, align 1
  %s.byte.val125 = zext i8 %s.byte124 to i64
  br label %choice.exit91

idx_oob120:                                       ; preds = %idx_big_check118, %choice.case92
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead122:                                    ; No predecessors!
  br label %idx_ok119

choice.exit128:                                   ; preds = %a.after145, %choice.case129
  %choice.res155 = phi { i1, i64 } [ %ram.pay139, %choice.case129 ], [ %call.res154, %a.after145 ]
  br label %choice.exit31

choice.case129:                                   ; preds = %choice.exit91
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 56)
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
  %var.load133 = load i64, ptr %var.p2, align 8
  %arena.cur134 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld136 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc135, i32 0, i32 0
  store i64 %var.load133, ptr %rec.fld136, align 8
  %rec.fld137 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc135, i32 0, i32 1
  store i64 0, ptr %rec.fld137, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc135, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc135, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64138 = ptrtoint ptr %err.alloc to i64
  %ram.pay139 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64138, 1
  br label %choice.exit128

choice.next130:                                   ; preds = %choice.exit91
  %var.load140 = load ptr, ptr %var.sc, align 8
  %var.load141 = load ptr, ptr %var.entries, align 8
  %a.load142 = load ptr, ptr %var.entries, align 8
  %a.null143 = icmp eq ptr %a.load142, null
  br i1 %a.null143, label %a.create144, label %a.after145

a.create144:                                      ; preds = %choice.next130
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 24)
  %arena.cur148 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 128)
  %a.len.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 0
  store i64 0, ptr %a.len.gep150, align 8
  %a.data.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 1
  store ptr %a.buf149, ptr %a.data.gep151, align 8
  %a.cap.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create147, i32 0, i32 2
  store i64 16, ptr %a.cap.gep152, align 8
  store ptr %a.create147, ptr %var.entries, align 8
  br label %a.after145

a.after145:                                       ; preds = %a.create144, %choice.next130
  %a.load2153 = load ptr, ptr %var.entries, align 8
  %call.res154 = call { i1, i64 } @"json::#parse_object_loop"(ptr %var.load140, ptr %a.load2153)
  br label %choice.exit128
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
  %var._464 = alloca i64, align 8
  %var._i463 = alloca i64, align 8
  %loop.step.126 = alloca i64, align 8
  %loop.idx.126 = alloca i64, align 8
  %var.abs_e = alloca i64, align 8
  %var.eclamp = alloca i64, align 8
  %var.exp_val = alloca i64, align 8
  %var.ed = alloca i64, align 8
  %var.ec = alloca i64, align 8
  %var._363 = alloca i64, align 8
  %var._i362 = alloca i64, align 8
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
  %var.d237 = alloca i64, align 8
  %var.c224 = alloca i64, align 8
  %var._195 = alloca i64, align 8
  %var._i194 = alloca i64, align 8
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
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp slt i64 %var.load5, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load17, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.case
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
  %arena.cur524 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc525 = call ptr @dva_arena_alloc(ptr %arena.cur524, i64 56)
  %err.code.gep526 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc525, i32 0, i32 0
  store i64 400, ptr %err.code.gep526, align 8
  %err.msg.gep527 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc525, i32 0, i32 1
  store ptr @str.21.struct, ptr %err.msg.gep527, align 8
  %err.file.gep528 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc525, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep528, align 8
  %err.line.gep529 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc525, i32 0, i32 3
  store i64 0, ptr %err.line.gep529, align 8
  %err.col.gep530 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc525, i32 0, i32 4
  store i64 0, ptr %err.col.gep530, align 8
  %err.ctx.gep531 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc525, i32 0, i32 5
  %var.load532 = load i64, ptr %"var.p'", align 8
  %arena.cur533 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc534 = call ptr @dva_arena_alloc(ptr %arena.cur533, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld535 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc534, i32 0, i32 0
  store i64 %var.load532, ptr %rec.fld535, align 8
  %rec.fld536 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc534, i32 0, i32 1
  store i64 0, ptr %rec.fld536, align 8
  %ctx.0.gep537 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc534, i32 0, i32 0
  %ctx.0538 = load i64, ptr %ctx.0.gep537, align 8
  %ctx.1.gep539 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc534, i32 0, i32 1
  %ctx.1540 = load i64, ptr %ctx.1.gep539, align 8
  %err.ctx0.gep541 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep531, i32 0, i32 0
  store i64 %ctx.0538, ptr %err.ctx0.gep541, align 8
  %err.ctx1.gep542 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep531, i32 0, i32 1
  store i64 %ctx.1540, ptr %err.ctx1.gep542, align 8
  %p.to.i64543 = ptrtoint ptr %err.alloc525 to i64
  %ram.pay544 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64543, 1
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else, %choice.exit90
  %choice.res545 = phi { i1, i64 } [ %choice.res523, %choice.exit90 ], [ %ram.pay544, %choice.else ]
  ret { i1, i64 } %choice.res545

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
  %idx.neg57 = icmp slt i64 %var.load56, 0
  br i1 %idx.neg57, label %idx_oob60, label %idx_big_check58

and.113.else:                                     ; preds = %str_ok41
  br label %and.113.exit

and.113.exit:                                     ; preds = %and.113.else, %idx_ok59
  %and.113.phi = phi i1 [ %cmptmp66, %idx_ok59 ], [ %cmptmp47, %and.113.else ]
  br i1 %and.113.phi, label %and.114.then, label %and.114.else

idx_big_check58:                                  ; preds = %and.113.then
  %idx.big61 = icmp sge i64 %var.load56, %s.read.len53
  br i1 %idx.big61, label %idx_oob60, label %idx_ok59

idx_ok59:                                         ; preds = %abort.dead62, %idx_big_check58
  %s.byte.gep63 = getelementptr i8, ptr %s.read.data55, i64 %var.load56
  %s.byte64 = load i8, ptr %s.byte.gep63, align 1
  %s.byte.val65 = zext i8 %s.byte64 to i64
  %cmptmp66 = icmp eq i64 %s.byte.val65, 48
  br label %and.113.exit

idx_oob60:                                        ; preds = %idx_big_check58, %and.113.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %idx_ok59

and.114.then:                                     ; preds = %and.113.exit
  %var.load67 = load i64, ptr %"var.p'", align 8
  %addtmp68 = add i64 %var.load67, 1
  %var.load69 = load ptr, ptr %var.sc, align 8
  %fld.gep70 = getelementptr inbounds { ptr, i64 }, ptr %var.load69, i32 0, i32 0
  %fld.load71 = load ptr, ptr %fld.gep70, align 8
  %str.len.query72 = getelementptr inbounds { i64, ptr }, ptr %fld.load71, i32 0, i32 0
  %str.len.query73 = load i64, ptr %str.len.query72, align 8
  %str.len.query74 = and i64 %str.len.query73, 281474976710655
  %str.tag75 = lshr i64 %str.len.query73, 48
  %tag.immortal77 = icmp eq i64 %str.tag75, 0
  %active.gen78 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current79 = icmp eq i64 %str.tag75, %active.gen78
  %tag.fast.ok80 = or i1 %tag.immortal77, %tag.current79
  br i1 %tag.fast.ok80, label %str_ok76, label %tag.slow_check81

and.114.else:                                     ; preds = %and.113.exit
  br label %and.114.exit

and.114.exit:                                     ; preds = %and.114.else, %str_ok76
  %and.114.phi = phi i1 [ %cmptmp82, %str_ok76 ], [ %and.113.phi, %and.114.else ]
  br i1 %and.114.phi, label %and.115.then, label %and.115.else

str_ok76:                                         ; preds = %tag.slow_check81, %and.114.then
  %cmptmp82 = icmp slt i64 %addtmp68, %str.len.query74
  br label %and.114.exit

tag.slow_check81:                                 ; preds = %and.114.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag75)
  br label %str_ok76

and.115.then:                                     ; preds = %and.114.exit
  %var.load83 = load ptr, ptr %var.sc, align 8
  %var.load84 = load i64, ptr %"var.p'", align 8
  %addtmp85 = add i64 %var.load84, 1
  %call.res86 = call i1 @"json::#is_digit_at"(ptr %var.load83, i64 %addtmp85)
  br label %and.115.exit

and.115.else:                                     ; preds = %and.114.exit
  br label %and.115.exit

and.115.exit:                                     ; preds = %and.115.else, %and.115.then
  %and.115.phi = phi i1 [ %call.res86, %and.115.then ], [ %and.114.phi, %and.115.else ]
  store i1 %and.115.phi, ptr %var.has_leading_zero, align 1
  %var.load87 = load i1, ptr %var.has_leading_zero, align 1
  br i1 %var.load87, label %choice.then88, label %choice.else89

choice.then88:                                    ; preds = %and.115.exit
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
  %var.load91 = load i64, ptr %"var.p'", align 8
  %arena.cur92 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur92, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load91, ptr %rec.fld, align 8
  %rec.fld93 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld93, align 8
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
  br label %choice.exit90

choice.else89:                                    ; preds = %and.115.exit
  %var.load94 = load i64, ptr %"var.p'", align 8
  store i64 %var.load94, ptr %"var.p2'", align 8
  store i1 false, ptr %"var.had_int'", align 1
  store i64 0, ptr %"var.sig_digits'", align 8
  store double 0.000000e+00, ptr %"var.fv'", align 8
  store i64 0, ptr %"var.exp10'", align 8
  store i64 0, ptr %loop.idx.116, align 8
  br label %loop.header.116

choice.exit90:                                    ; preds = %choice.exit485, %choice.then88
  %choice.res523 = phi { i1, i64 } [ %ram.pay, %choice.then88 ], [ %choice.res522, %choice.exit485 ]
  br label %choice.exit26

loop.header.116:                                  ; preds = %loop.latch.116, %choice.else89
  %counter.load = load i64, ptr %loop.idx.116, align 8
  br label %loop.body.116

loop.body.116:                                    ; preds = %loop.header.116
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.116, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load95 = load i64, ptr %"var.p2'", align 8
  %var.load96 = load ptr, ptr %var.sc, align 8
  %fld.gep97 = getelementptr inbounds { ptr, i64 }, ptr %var.load96, i32 0, i32 0
  %fld.load98 = load ptr, ptr %fld.gep97, align 8
  %str.len.query99 = getelementptr inbounds { i64, ptr }, ptr %fld.load98, i32 0, i32 0
  %str.len.query100 = load i64, ptr %str.len.query99, align 8
  %str.len.query101 = and i64 %str.len.query100, 281474976710655
  %cmptmp102 = icmp sge i64 %var.load95, %str.len.query101
  br i1 %cmptmp102, label %choice.then103, label %choice.exit104

loop.exit.nat.116:                                ; No predecessors!
  br label %loop.exit.116

loop.latch.116:                                   ; preds = %choice.exit132
  %step.val = load i64, ptr %loop.step.116, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.116, align 8
  br label %loop.header.116

loop.exit.116:                                    ; preds = %choice.else131, %choice.then103, %loop.exit.nat.116
  %var.load153 = load i64, ptr %"var.p2'", align 8
  %var.load154 = load ptr, ptr %var.sc, align 8
  %fld.gep155 = getelementptr inbounds { ptr, i64 }, ptr %var.load154, i32 0, i32 0
  %fld.load156 = load ptr, ptr %fld.gep155, align 8
  %str.len.query157 = getelementptr inbounds { i64, ptr }, ptr %fld.load156, i32 0, i32 0
  %str.len.query158 = load i64, ptr %str.len.query157, align 8
  %str.len.query159 = and i64 %str.len.query158, 281474976710655
  %str.tag160 = lshr i64 %str.len.query158, 48
  %tag.immortal162 = icmp eq i64 %str.tag160, 0
  %active.gen163 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current164 = icmp eq i64 %str.tag160, %active.gen163
  %tag.fast.ok165 = or i1 %tag.immortal162, %tag.current164
  br i1 %tag.fast.ok165, label %str_ok161, label %tag.slow_check166

choice.then103:                                   ; preds = %loop.body.116
  br label %loop.exit.116

choice.exit104:                                   ; preds = %loop.body.116
  %var.load105 = load ptr, ptr %var.sc, align 8
  %fld.gep106 = getelementptr inbounds { ptr, i64 }, ptr %var.load105, i32 0, i32 0
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  %s.read.len108 = getelementptr inbounds { i64, ptr }, ptr %fld.load107, i32 0, i32 0
  %s.read.len109 = load i64, ptr %s.read.len108, align 8
  %s.read.len110 = and i64 %s.read.len109, 281474976710655
  %s.read.data111 = getelementptr inbounds { i64, ptr }, ptr %fld.load107, i32 0, i32 1
  %s.read.data112 = load ptr, ptr %s.read.data111, align 8
  %var.load113 = load i64, ptr %"var.p2'", align 8
  %idx.neg114 = icmp slt i64 %var.load113, 0
  br i1 %idx.neg114, label %idx_oob117, label %idx_big_check115

idx_big_check115:                                 ; preds = %choice.exit104
  %idx.big118 = icmp sge i64 %var.load113, %s.read.len110
  br i1 %idx.big118, label %idx_oob117, label %idx_ok116

idx_ok116:                                        ; preds = %abort.dead119, %idx_big_check115
  %s.byte.gep120 = getelementptr i8, ptr %s.read.data112, i64 %var.load113
  %s.byte121 = load i8, ptr %s.byte.gep120, align 1
  %s.byte.val122 = zext i8 %s.byte121 to i64
  store i64 %s.byte.val122, ptr %var.c, align 8
  %var.load123 = load i64, ptr %var.c, align 8
  %cmptmp127 = icmp sge i64 %var.load123, 48
  br i1 %cmptmp127, label %and.117.then, label %and.117.else

idx_oob117:                                       ; preds = %idx_big_check115, %choice.exit104
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %idx_ok116

choice.exit124:                                   ; preds = %choice.next126, %choice.case125
  %choice.res129 = phi i1 [ true, %choice.case125 ], [ false, %choice.next126 ]
  br i1 %choice.res129, label %choice.then130, label %choice.else131

choice.case125:                                   ; preds = %and.117.exit
  br label %choice.exit124

choice.next126:                                   ; preds = %and.117.exit
  br label %choice.exit124

and.117.then:                                     ; preds = %idx_ok116
  %cmptmp128 = icmp sle i64 %var.load123, 57
  br label %and.117.exit

and.117.else:                                     ; preds = %idx_ok116
  br label %and.117.exit

and.117.exit:                                     ; preds = %and.117.else, %and.117.then
  %and.117.phi = phi i1 [ %cmptmp128, %and.117.then ], [ %cmptmp127, %and.117.else ]
  br i1 %and.117.phi, label %choice.case125, label %choice.next126

choice.then130:                                   ; preds = %choice.exit124
  store i1 true, ptr %"var.had_int'", align 1
  %var.load133 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load133, 48
  store i64 %subtmp, ptr %var.d, align 8
  %var.load134 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp135 = icmp sgt i64 %var.load134, 0
  br i1 %cmptmp135, label %or.118.then, label %or.118.else

choice.else131:                                   ; preds = %choice.exit124
  br label %loop.exit.116

choice.exit132:                                   ; preds = %choice.exit139
  br label %loop.latch.116

or.118.then:                                      ; preds = %choice.then130
  br label %or.118.exit

or.118.else:                                      ; preds = %choice.then130
  %var.load136 = load i64, ptr %var.d, align 8
  %cmptmp137 = icmp ne i64 %var.load136, 0
  br label %or.118.exit

or.118.exit:                                      ; preds = %or.118.else, %or.118.then
  %or.118.phi = phi i1 [ %cmptmp135, %or.118.then ], [ %cmptmp137, %or.118.else ]
  br i1 %or.118.phi, label %choice.then138, label %choice.exit139

choice.then138:                                   ; preds = %or.118.exit
  %var.load140 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp141 = icmp slt i64 %var.load140, 17
  br i1 %cmptmp141, label %choice.then142, label %choice.else143

choice.exit139:                                   ; preds = %choice.exit144, %or.118.exit
  %var.load151 = load i64, ptr %"var.p2'", align 8
  %addtmp152 = add i64 %var.load151, 1
  store i64 %addtmp152, ptr %"var.p2'", align 8
  br label %choice.exit132

choice.then142:                                   ; preds = %choice.then138
  %var.load145 = load double, ptr %"var.fv'", align 8
  %fmultmp = fmul double %var.load145, 1.000000e+01
  %var.load146 = load i64, ptr %var.d, align 8
  %cast.sitofp = sitofp i64 %var.load146 to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.fv'", align 8
  %var.load147 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp148 = add i64 %var.load147, 1
  store i64 %addtmp148, ptr %"var.sig_digits'", align 8
  br label %choice.exit144

choice.else143:                                   ; preds = %choice.then138
  %var.load149 = load i64, ptr %"var.exp10'", align 8
  %addtmp150 = add i64 %var.load149, 1
  store i64 %addtmp150, ptr %"var.exp10'", align 8
  br label %choice.exit144

choice.exit144:                                   ; preds = %choice.else143, %choice.then142
  br label %choice.exit139

str_ok161:                                        ; preds = %tag.slow_check166, %loop.exit.116
  %cmptmp167 = icmp slt i64 %var.load153, %str.len.query159
  br i1 %cmptmp167, label %and.119.then, label %and.119.else

tag.slow_check166:                                ; preds = %loop.exit.116
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag160)
  br label %str_ok161

and.119.then:                                     ; preds = %str_ok161
  %var.load168 = load ptr, ptr %var.sc, align 8
  %fld.gep169 = getelementptr inbounds { ptr, i64 }, ptr %var.load168, i32 0, i32 0
  %fld.load170 = load ptr, ptr %fld.gep169, align 8
  %s.read.len171 = getelementptr inbounds { i64, ptr }, ptr %fld.load170, i32 0, i32 0
  %s.read.len172 = load i64, ptr %s.read.len171, align 8
  %s.read.len173 = and i64 %s.read.len172, 281474976710655
  %s.read.data174 = getelementptr inbounds { i64, ptr }, ptr %fld.load170, i32 0, i32 1
  %s.read.data175 = load ptr, ptr %s.read.data174, align 8
  %var.load176 = load i64, ptr %"var.p2'", align 8
  %idx.neg177 = icmp slt i64 %var.load176, 0
  br i1 %idx.neg177, label %idx_oob180, label %idx_big_check178

and.119.else:                                     ; preds = %str_ok161
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %idx_ok179
  %and.119.phi = phi i1 [ %cmptmp186, %idx_ok179 ], [ %cmptmp167, %and.119.else ]
  store i1 %and.119.phi, ptr %var.has_dot, align 1
  store i1 false, ptr %"var.had_frac'", align 1
  %var.load187 = load i1, ptr %var.has_dot, align 1
  br i1 %var.load187, label %choice.then188, label %choice.exit189

idx_big_check178:                                 ; preds = %and.119.then
  %idx.big181 = icmp sge i64 %var.load176, %s.read.len173
  br i1 %idx.big181, label %idx_oob180, label %idx_ok179

idx_ok179:                                        ; preds = %abort.dead182, %idx_big_check178
  %s.byte.gep183 = getelementptr i8, ptr %s.read.data175, i64 %var.load176
  %s.byte184 = load i8, ptr %s.byte.gep183, align 1
  %s.byte.val185 = zext i8 %s.byte184 to i64
  %cmptmp186 = icmp eq i64 %s.byte.val185, 46
  br label %and.119.exit

idx_oob180:                                       ; preds = %idx_big_check178, %and.119.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead182:                                    ; No predecessors!
  br label %idx_ok179

choice.then188:                                   ; preds = %and.119.exit
  %var.load190 = load i64, ptr %"var.p2'", align 8
  %addtmp191 = add i64 %var.load190, 1
  store i64 %addtmp191, ptr %"var.p2'", align 8
  store i64 0, ptr %loop.idx.120, align 8
  br label %loop.header.120

choice.exit189:                                   ; preds = %loop.exit.120, %and.119.exit
  %var.load264 = load i64, ptr %"var.p2'", align 8
  %var.load265 = load ptr, ptr %var.sc, align 8
  %fld.gep266 = getelementptr inbounds { ptr, i64 }, ptr %var.load265, i32 0, i32 0
  %fld.load267 = load ptr, ptr %fld.gep266, align 8
  %str.len.query268 = getelementptr inbounds { i64, ptr }, ptr %fld.load267, i32 0, i32 0
  %str.len.query269 = load i64, ptr %str.len.query268, align 8
  %str.len.query270 = and i64 %str.len.query269, 281474976710655
  %str.tag271 = lshr i64 %str.len.query269, 48
  %tag.immortal273 = icmp eq i64 %str.tag271, 0
  %active.gen274 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current275 = icmp eq i64 %str.tag271, %active.gen274
  %tag.fast.ok276 = or i1 %tag.immortal273, %tag.current275
  br i1 %tag.fast.ok276, label %str_ok272, label %tag.slow_check277

loop.header.120:                                  ; preds = %loop.latch.120, %choice.then188
  %counter.load192 = load i64, ptr %loop.idx.120, align 8
  br label %loop.body.120

loop.body.120:                                    ; preds = %loop.header.120
  %loop.rel.i193 = sub i64 %counter.load192, 0
  store i64 1, ptr %loop.step.120, align 8
  store i64 %loop.rel.i193, ptr %var._i194, align 8
  store i64 %counter.load192, ptr %var._195, align 8
  %var.load196 = load i64, ptr %"var.p2'", align 8
  %var.load197 = load ptr, ptr %var.sc, align 8
  %fld.gep198 = getelementptr inbounds { ptr, i64 }, ptr %var.load197, i32 0, i32 0
  %fld.load199 = load ptr, ptr %fld.gep198, align 8
  %str.len.query200 = getelementptr inbounds { i64, ptr }, ptr %fld.load199, i32 0, i32 0
  %str.len.query201 = load i64, ptr %str.len.query200, align 8
  %str.len.query202 = and i64 %str.len.query201, 281474976710655
  %cmptmp203 = icmp sge i64 %var.load196, %str.len.query202
  br i1 %cmptmp203, label %choice.then204, label %choice.exit205

loop.exit.nat.120:                                ; No predecessors!
  br label %loop.exit.120

loop.latch.120:                                   ; preds = %choice.exit234
  %step.val262 = load i64, ptr %loop.step.120, align 8
  %loop.next263 = add i64 %counter.load192, %step.val262
  store i64 %loop.next263, ptr %loop.idx.120, align 8
  br label %loop.header.120

loop.exit.120:                                    ; preds = %choice.else233, %choice.then204, %loop.exit.nat.120
  br label %choice.exit189

choice.then204:                                   ; preds = %loop.body.120
  br label %loop.exit.120

choice.exit205:                                   ; preds = %loop.body.120
  %var.load206 = load ptr, ptr %var.sc, align 8
  %fld.gep207 = getelementptr inbounds { ptr, i64 }, ptr %var.load206, i32 0, i32 0
  %fld.load208 = load ptr, ptr %fld.gep207, align 8
  %s.read.len209 = getelementptr inbounds { i64, ptr }, ptr %fld.load208, i32 0, i32 0
  %s.read.len210 = load i64, ptr %s.read.len209, align 8
  %s.read.len211 = and i64 %s.read.len210, 281474976710655
  %s.read.data212 = getelementptr inbounds { i64, ptr }, ptr %fld.load208, i32 0, i32 1
  %s.read.data213 = load ptr, ptr %s.read.data212, align 8
  %var.load214 = load i64, ptr %"var.p2'", align 8
  %idx.neg215 = icmp slt i64 %var.load214, 0
  br i1 %idx.neg215, label %idx_oob218, label %idx_big_check216

idx_big_check216:                                 ; preds = %choice.exit205
  %idx.big219 = icmp sge i64 %var.load214, %s.read.len211
  br i1 %idx.big219, label %idx_oob218, label %idx_ok217

idx_ok217:                                        ; preds = %abort.dead220, %idx_big_check216
  %s.byte.gep221 = getelementptr i8, ptr %s.read.data213, i64 %var.load214
  %s.byte222 = load i8, ptr %s.byte.gep221, align 1
  %s.byte.val223 = zext i8 %s.byte222 to i64
  store i64 %s.byte.val223, ptr %var.c224, align 8
  %var.load225 = load i64, ptr %var.c224, align 8
  %cmptmp229 = icmp sge i64 %var.load225, 48
  br i1 %cmptmp229, label %and.121.then, label %and.121.else

idx_oob218:                                       ; preds = %idx_big_check216, %choice.exit205
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead220:                                    ; No predecessors!
  br label %idx_ok217

choice.exit226:                                   ; preds = %choice.next228, %choice.case227
  %choice.res231 = phi i1 [ true, %choice.case227 ], [ false, %choice.next228 ]
  br i1 %choice.res231, label %choice.then232, label %choice.else233

choice.case227:                                   ; preds = %and.121.exit
  br label %choice.exit226

choice.next228:                                   ; preds = %and.121.exit
  br label %choice.exit226

and.121.then:                                     ; preds = %idx_ok217
  %cmptmp230 = icmp sle i64 %var.load225, 57
  br label %and.121.exit

and.121.else:                                     ; preds = %idx_ok217
  br label %and.121.exit

and.121.exit:                                     ; preds = %and.121.else, %and.121.then
  %and.121.phi = phi i1 [ %cmptmp230, %and.121.then ], [ %cmptmp229, %and.121.else ]
  br i1 %and.121.phi, label %choice.case227, label %choice.next228

choice.then232:                                   ; preds = %choice.exit226
  store i1 true, ptr %"var.had_frac'", align 1
  %var.load235 = load i64, ptr %var.c224, align 8
  %subtmp236 = sub i64 %var.load235, 48
  store i64 %subtmp236, ptr %var.d237, align 8
  %var.load238 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp239 = icmp eq i64 %var.load238, 0
  br i1 %cmptmp239, label %and.122.then, label %and.122.else

choice.else233:                                   ; preds = %choice.exit226
  br label %loop.exit.120

choice.exit234:                                   ; preds = %choice.exit244
  br label %loop.latch.120

and.122.then:                                     ; preds = %choice.then232
  %var.load240 = load i64, ptr %var.d237, align 8
  %cmptmp241 = icmp eq i64 %var.load240, 0
  br label %and.122.exit

and.122.else:                                     ; preds = %choice.then232
  br label %and.122.exit

and.122.exit:                                     ; preds = %and.122.else, %and.122.then
  %and.122.phi = phi i1 [ %cmptmp241, %and.122.then ], [ %cmptmp239, %and.122.else ]
  br i1 %and.122.phi, label %choice.then242, label %choice.else243

choice.then242:                                   ; preds = %and.122.exit
  %var.load245 = load i64, ptr %"var.exp10'", align 8
  %subtmp246 = sub i64 %var.load245, 1
  store i64 %subtmp246, ptr %"var.exp10'", align 8
  br label %choice.exit244

choice.else243:                                   ; preds = %and.122.exit
  %var.load247 = load i64, ptr %"var.sig_digits'", align 8
  %cmptmp248 = icmp slt i64 %var.load247, 17
  br i1 %cmptmp248, label %choice.then249, label %choice.exit250

choice.exit244:                                   ; preds = %choice.exit250, %choice.then242
  %var.load260 = load i64, ptr %"var.p2'", align 8
  %addtmp261 = add i64 %var.load260, 1
  store i64 %addtmp261, ptr %"var.p2'", align 8
  br label %choice.exit234

choice.then249:                                   ; preds = %choice.else243
  %var.load251 = load double, ptr %"var.fv'", align 8
  %fmultmp252 = fmul double %var.load251, 1.000000e+01
  %var.load253 = load i64, ptr %var.d237, align 8
  %cast.sitofp254 = sitofp i64 %var.load253 to double
  %faddtmp255 = fadd double %fmultmp252, %cast.sitofp254
  store double %faddtmp255, ptr %"var.fv'", align 8
  %var.load256 = load i64, ptr %"var.sig_digits'", align 8
  %addtmp257 = add i64 %var.load256, 1
  store i64 %addtmp257, ptr %"var.sig_digits'", align 8
  %var.load258 = load i64, ptr %"var.exp10'", align 8
  %subtmp259 = sub i64 %var.load258, 1
  store i64 %subtmp259, ptr %"var.exp10'", align 8
  br label %choice.exit250

choice.exit250:                                   ; preds = %choice.then249, %choice.else243
  br label %choice.exit244

str_ok272:                                        ; preds = %tag.slow_check277, %choice.exit189
  %cmptmp278 = icmp slt i64 %var.load264, %str.len.query270
  br i1 %cmptmp278, label %and.123.then, label %and.123.else

tag.slow_check277:                                ; preds = %choice.exit189
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag271)
  br label %str_ok272

and.123.then:                                     ; preds = %str_ok272
  %var.load279 = load ptr, ptr %var.sc, align 8
  %fld.gep280 = getelementptr inbounds { ptr, i64 }, ptr %var.load279, i32 0, i32 0
  %fld.load281 = load ptr, ptr %fld.gep280, align 8
  %s.read.len282 = getelementptr inbounds { i64, ptr }, ptr %fld.load281, i32 0, i32 0
  %s.read.len283 = load i64, ptr %s.read.len282, align 8
  %s.read.len284 = and i64 %s.read.len283, 281474976710655
  %s.read.data285 = getelementptr inbounds { i64, ptr }, ptr %fld.load281, i32 0, i32 1
  %s.read.data286 = load ptr, ptr %s.read.data285, align 8
  %var.load287 = load i64, ptr %"var.p2'", align 8
  %idx.neg288 = icmp slt i64 %var.load287, 0
  br i1 %idx.neg288, label %idx_oob291, label %idx_big_check289

and.123.else:                                     ; preds = %str_ok272
  br label %and.123.exit

and.123.exit:                                     ; preds = %and.123.else, %choice.exit297
  %and.123.phi = phi i1 [ %choice.res303, %choice.exit297 ], [ %cmptmp278, %and.123.else ]
  store i1 %and.123.phi, ptr %var.has_exp, align 1
  store i1 false, ptr %"var.had_exp'", align 1
  %var.load304 = load i1, ptr %var.has_exp, align 1
  br i1 %var.load304, label %choice.then305, label %choice.exit306

idx_big_check289:                                 ; preds = %and.123.then
  %idx.big292 = icmp sge i64 %var.load287, %s.read.len284
  br i1 %idx.big292, label %idx_oob291, label %idx_ok290

idx_ok290:                                        ; preds = %abort.dead293, %idx_big_check289
  %s.byte.gep294 = getelementptr i8, ptr %s.read.data286, i64 %var.load287
  %s.byte295 = load i8, ptr %s.byte.gep294, align 1
  %s.byte.val296 = zext i8 %s.byte295 to i64
  %val.match300 = icmp eq i64 %s.byte.val296, 101
  %val.match301 = icmp eq i64 %s.byte.val296, 69
  %case.or302 = or i1 %val.match300, %val.match301
  br i1 %case.or302, label %choice.case298, label %choice.next299

idx_oob291:                                       ; preds = %idx_big_check289, %and.123.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead293:                                    ; No predecessors!
  br label %idx_ok290

choice.exit297:                                   ; preds = %choice.next299, %choice.case298
  %choice.res303 = phi i1 [ true, %choice.case298 ], [ false, %choice.next299 ]
  br label %and.123.exit

choice.case298:                                   ; preds = %idx_ok290
  br label %choice.exit297

choice.next299:                                   ; preds = %idx_ok290
  br label %choice.exit297

choice.then305:                                   ; preds = %and.123.exit
  %var.load307 = load i64, ptr %"var.p2'", align 8
  %addtmp308 = add i64 %var.load307, 1
  store i64 %addtmp308, ptr %"var.p3'", align 8
  store i1 false, ptr %"var.eneg'", align 1
  %var.load309 = load i64, ptr %"var.p3'", align 8
  %var.load313 = load ptr, ptr %var.sc, align 8
  %fld.gep314 = getelementptr inbounds { ptr, i64 }, ptr %var.load313, i32 0, i32 0
  %fld.load315 = load ptr, ptr %fld.gep314, align 8
  %str.len.query316 = getelementptr inbounds { i64, ptr }, ptr %fld.load315, i32 0, i32 0
  %str.len.query317 = load i64, ptr %str.len.query316, align 8
  %str.len.query318 = and i64 %str.len.query317, 281474976710655
  %str.tag319 = lshr i64 %str.len.query317, 48
  %tag.immortal321 = icmp eq i64 %str.tag319, 0
  %active.gen322 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current323 = icmp eq i64 %str.tag319, %active.gen322
  %tag.fast.ok324 = or i1 %tag.immortal321, %tag.current323
  br i1 %tag.fast.ok324, label %str_ok320, label %tag.slow_check325

choice.exit306:                                   ; preds = %choice.exit427, %and.123.exit
  %var.load435 = load double, ptr %"var.fv'", align 8
  %fcmptmp = fcmp une double %var.load435, 0.000000e+00
  br i1 %fcmptmp, label %choice.then436, label %choice.exit437

choice.exit310:                                   ; preds = %choice.next312, %idx_ok338
  %choice.res345 = phi i64 [ %s.byte.val344, %idx_ok338 ], [ -1, %choice.next312 ]
  store i64 %choice.res345, ptr %var.e0, align 8
  %var.load346 = load i64, ptr %var.e0, align 8
  %val.match350 = icmp eq i64 %var.load346, 45
  br i1 %val.match350, label %choice.case348, label %choice.next349

choice.case311:                                   ; preds = %str_ok320
  %var.load327 = load ptr, ptr %var.sc, align 8
  %fld.gep328 = getelementptr inbounds { ptr, i64 }, ptr %var.load327, i32 0, i32 0
  %fld.load329 = load ptr, ptr %fld.gep328, align 8
  %s.read.len330 = getelementptr inbounds { i64, ptr }, ptr %fld.load329, i32 0, i32 0
  %s.read.len331 = load i64, ptr %s.read.len330, align 8
  %s.read.len332 = and i64 %s.read.len331, 281474976710655
  %s.read.data333 = getelementptr inbounds { i64, ptr }, ptr %fld.load329, i32 0, i32 1
  %s.read.data334 = load ptr, ptr %s.read.data333, align 8
  %var.load335 = load i64, ptr %"var.p3'", align 8
  %idx.neg336 = icmp slt i64 %var.load335, 0
  br i1 %idx.neg336, label %idx_oob339, label %idx_big_check337

choice.next312:                                   ; preds = %str_ok320
  br label %choice.exit310

str_ok320:                                        ; preds = %tag.slow_check325, %choice.then305
  %cmptmp326 = icmp slt i64 %var.load309, %str.len.query318
  br i1 %cmptmp326, label %choice.case311, label %choice.next312

tag.slow_check325:                                ; preds = %choice.then305
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag319)
  br label %str_ok320

idx_big_check337:                                 ; preds = %choice.case311
  %idx.big340 = icmp sge i64 %var.load335, %s.read.len332
  br i1 %idx.big340, label %idx_oob339, label %idx_ok338

idx_ok338:                                        ; preds = %abort.dead341, %idx_big_check337
  %s.byte.gep342 = getelementptr i8, ptr %s.read.data334, i64 %var.load335
  %s.byte343 = load i8, ptr %s.byte.gep342, align 1
  %s.byte.val344 = zext i8 %s.byte343 to i64
  br label %choice.exit310

idx_oob339:                                       ; preds = %idx_big_check337, %choice.case311
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead341:                                    ; No predecessors!
  br label %idx_ok338

choice.exit347:                                   ; preds = %choice.next349, %choice.case348
  %var.load353 = load i64, ptr %var.e0, align 8
  %cmptmp354 = icmp eq i64 %var.load353, 43
  store i1 %cmptmp354, ptr %var.plus, align 1
  %var.load355 = load i1, ptr %var.plus, align 1
  br i1 %var.load355, label %choice.then356, label %choice.exit357

choice.case348:                                   ; preds = %choice.exit310
  store i1 true, ptr %"var.eneg'", align 1
  %var.load351 = load i64, ptr %"var.p3'", align 8
  %addtmp352 = add i64 %var.load351, 1
  store i64 %addtmp352, ptr %"var.p3'", align 8
  br label %choice.exit347

choice.next349:                                   ; preds = %choice.exit310
  br label %choice.exit347

choice.then356:                                   ; preds = %choice.exit347
  %var.load358 = load i64, ptr %"var.p3'", align 8
  %addtmp359 = add i64 %var.load358, 1
  store i64 %addtmp359, ptr %"var.p3'", align 8
  br label %choice.exit357

choice.exit357:                                   ; preds = %choice.then356, %choice.exit347
  store i64 0, ptr %"var.ev'", align 8
  store i1 false, ptr %"var.over_exp'", align 1
  store i1 false, ptr %"var.had_exp_digits'", align 1
  store i64 0, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.header.124:                                  ; preds = %loop.latch.124, %choice.exit357
  %counter.load360 = load i64, ptr %loop.idx.124, align 8
  br label %loop.body.124

loop.body.124:                                    ; preds = %loop.header.124
  %loop.rel.i361 = sub i64 %counter.load360, 0
  store i64 1, ptr %loop.step.124, align 8
  store i64 %loop.rel.i361, ptr %var._i362, align 8
  store i64 %counter.load360, ptr %var._363, align 8
  %var.load364 = load i64, ptr %"var.p3'", align 8
  %var.load365 = load ptr, ptr %var.sc, align 8
  %fld.gep366 = getelementptr inbounds { ptr, i64 }, ptr %var.load365, i32 0, i32 0
  %fld.load367 = load ptr, ptr %fld.gep366, align 8
  %str.len.query368 = getelementptr inbounds { i64, ptr }, ptr %fld.load367, i32 0, i32 0
  %str.len.query369 = load i64, ptr %str.len.query368, align 8
  %str.len.query370 = and i64 %str.len.query369, 281474976710655
  %cmptmp371 = icmp sge i64 %var.load364, %str.len.query370
  br i1 %cmptmp371, label %choice.then372, label %choice.exit373

loop.exit.nat.124:                                ; No predecessors!
  br label %loop.exit.124

loop.latch.124:                                   ; preds = %choice.exit401
  %step.val414 = load i64, ptr %loop.step.124, align 8
  %loop.next415 = add i64 %counter.load360, %step.val414
  store i64 %loop.next415, ptr %loop.idx.124, align 8
  br label %loop.header.124

loop.exit.124:                                    ; preds = %choice.else400, %choice.then372, %loop.exit.nat.124
  %var.load416 = load i1, ptr %"var.had_exp_digits'", align 1
  store i1 %var.load416, ptr %"var.had_exp'", align 1
  %var.load417 = load i64, ptr %"var.p3'", align 8
  store i64 %var.load417, ptr %"var.p2'", align 8
  %var.load418 = load i1, ptr %"var.over_exp'", align 1
  br i1 %var.load418, label %choice.then419, label %choice.else420

choice.then372:                                   ; preds = %loop.body.124
  br label %loop.exit.124

choice.exit373:                                   ; preds = %loop.body.124
  %var.load374 = load ptr, ptr %var.sc, align 8
  %fld.gep375 = getelementptr inbounds { ptr, i64 }, ptr %var.load374, i32 0, i32 0
  %fld.load376 = load ptr, ptr %fld.gep375, align 8
  %s.read.len377 = getelementptr inbounds { i64, ptr }, ptr %fld.load376, i32 0, i32 0
  %s.read.len378 = load i64, ptr %s.read.len377, align 8
  %s.read.len379 = and i64 %s.read.len378, 281474976710655
  %s.read.data380 = getelementptr inbounds { i64, ptr }, ptr %fld.load376, i32 0, i32 1
  %s.read.data381 = load ptr, ptr %s.read.data380, align 8
  %var.load382 = load i64, ptr %"var.p3'", align 8
  %idx.neg383 = icmp slt i64 %var.load382, 0
  br i1 %idx.neg383, label %idx_oob386, label %idx_big_check384

idx_big_check384:                                 ; preds = %choice.exit373
  %idx.big387 = icmp sge i64 %var.load382, %s.read.len379
  br i1 %idx.big387, label %idx_oob386, label %idx_ok385

idx_ok385:                                        ; preds = %abort.dead388, %idx_big_check384
  %s.byte.gep389 = getelementptr i8, ptr %s.read.data381, i64 %var.load382
  %s.byte390 = load i8, ptr %s.byte.gep389, align 1
  %s.byte.val391 = zext i8 %s.byte390 to i64
  store i64 %s.byte.val391, ptr %var.ec, align 8
  %var.load392 = load i64, ptr %var.ec, align 8
  %cmptmp396 = icmp sge i64 %var.load392, 48
  br i1 %cmptmp396, label %and.125.then, label %and.125.else

idx_oob386:                                       ; preds = %idx_big_check384, %choice.exit373
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead388:                                    ; No predecessors!
  br label %idx_ok385

choice.exit393:                                   ; preds = %choice.next395, %choice.case394
  %choice.res398 = phi i1 [ true, %choice.case394 ], [ false, %choice.next395 ]
  br i1 %choice.res398, label %choice.then399, label %choice.else400

choice.case394:                                   ; preds = %and.125.exit
  br label %choice.exit393

choice.next395:                                   ; preds = %and.125.exit
  br label %choice.exit393

and.125.then:                                     ; preds = %idx_ok385
  %cmptmp397 = icmp sle i64 %var.load392, 57
  br label %and.125.exit

and.125.else:                                     ; preds = %idx_ok385
  br label %and.125.exit

and.125.exit:                                     ; preds = %and.125.else, %and.125.then
  %and.125.phi = phi i1 [ %cmptmp397, %and.125.then ], [ %cmptmp396, %and.125.else ]
  br i1 %and.125.phi, label %choice.case394, label %choice.next395

choice.then399:                                   ; preds = %choice.exit393
  store i1 true, ptr %"var.had_exp_digits'", align 1
  %var.load402 = load i64, ptr %var.ec, align 8
  %subtmp403 = sub i64 %var.load402, 48
  store i64 %subtmp403, ptr %var.ed, align 8
  %var.load404 = load i64, ptr %"var.ev'", align 8
  %cmptmp405 = icmp sgt i64 %var.load404, 1000000
  br i1 %cmptmp405, label %choice.then406, label %choice.else407

choice.else400:                                   ; preds = %choice.exit393
  br label %loop.exit.124

choice.exit401:                                   ; preds = %choice.exit408
  br label %loop.latch.124

choice.then406:                                   ; preds = %choice.then399
  store i1 true, ptr %"var.over_exp'", align 1
  br label %choice.exit408

choice.else407:                                   ; preds = %choice.then399
  %var.load409 = load i64, ptr %"var.ev'", align 8
  %multmp = mul i64 %var.load409, 10
  %var.load410 = load i64, ptr %var.ed, align 8
  %addtmp411 = add i64 %multmp, %var.load410
  store i64 %addtmp411, ptr %"var.ev'", align 8
  br label %choice.exit408

choice.exit408:                                   ; preds = %choice.else407, %choice.then406
  %var.load412 = load i64, ptr %"var.p3'", align 8
  %addtmp413 = add i64 %var.load412, 1
  store i64 %addtmp413, ptr %"var.p3'", align 8
  br label %choice.exit401

choice.then419:                                   ; preds = %loop.exit.124
  br label %choice.exit421

choice.else420:                                   ; preds = %loop.exit.124
  %var.load422 = load i64, ptr %"var.ev'", align 8
  br label %choice.exit421

choice.exit421:                                   ; preds = %choice.else420, %choice.then419
  %choice.res423 = phi i64 [ 1000000, %choice.then419 ], [ %var.load422, %choice.else420 ]
  store i64 %choice.res423, ptr %var.exp_val, align 8
  %var.load424 = load i1, ptr %"var.eneg'", align 1
  br i1 %var.load424, label %choice.then425, label %choice.else426

choice.then425:                                   ; preds = %choice.exit421
  %var.load428 = load i64, ptr %"var.exp10'", align 8
  %var.load429 = load i64, ptr %var.exp_val, align 8
  %subtmp430 = sub i64 %var.load428, %var.load429
  br label %choice.exit427

choice.else426:                                   ; preds = %choice.exit421
  %var.load431 = load i64, ptr %"var.exp10'", align 8
  %var.load432 = load i64, ptr %var.exp_val, align 8
  %addtmp433 = add i64 %var.load431, %var.load432
  br label %choice.exit427

choice.exit427:                                   ; preds = %choice.else426, %choice.then425
  %choice.res434 = phi i64 [ %subtmp430, %choice.then425 ], [ %addtmp433, %choice.else426 ]
  store i64 %choice.res434, ptr %"var.exp10'", align 8
  br label %choice.exit306

choice.then436:                                   ; preds = %choice.exit306
  %var.load438 = load i64, ptr %"var.exp10'", align 8
  %cmptmp439 = icmp slt i64 %var.load438, -400
  br i1 %cmptmp439, label %choice.then440, label %choice.else441

choice.exit437:                                   ; preds = %loop.exit.126, %choice.exit306
  %var.load476 = load i1, ptr %"var.had_int'", align 1
  br i1 %var.load476, label %and.127.then, label %and.127.else

choice.then440:                                   ; preds = %choice.then436
  br label %choice.exit442

choice.else441:                                   ; preds = %choice.then436
  %var.load443 = load i64, ptr %"var.exp10'", align 8
  %cmptmp444 = icmp sgt i64 %var.load443, 400
  br i1 %cmptmp444, label %choice.then445, label %choice.else446

choice.exit442:                                   ; preds = %choice.exit447, %choice.then440
  %choice.res450 = phi i64 [ -400, %choice.then440 ], [ %choice.res449, %choice.exit447 ]
  store i64 %choice.res450, ptr %var.eclamp, align 8
  %var.load451 = load i64, ptr %var.eclamp, align 8
  %cmptmp452 = icmp slt i64 %var.load451, 0
  br i1 %cmptmp452, label %choice.then453, label %choice.else454

choice.then445:                                   ; preds = %choice.else441
  br label %choice.exit447

choice.else446:                                   ; preds = %choice.else441
  %var.load448 = load i64, ptr %"var.exp10'", align 8
  br label %choice.exit447

choice.exit447:                                   ; preds = %choice.else446, %choice.then445
  %choice.res449 = phi i64 [ 400, %choice.then445 ], [ %var.load448, %choice.else446 ]
  br label %choice.exit442

choice.then453:                                   ; preds = %choice.exit442
  %var.load456 = load i64, ptr %var.eclamp, align 8
  %subtmp457 = sub i64 0, %var.load456
  br label %choice.exit455

choice.else454:                                   ; preds = %choice.exit442
  %var.load458 = load i64, ptr %var.eclamp, align 8
  br label %choice.exit455

choice.exit455:                                   ; preds = %choice.else454, %choice.then453
  %choice.res459 = phi i64 [ %subtmp457, %choice.then453 ], [ %var.load458, %choice.else454 ]
  store i64 %choice.res459, ptr %var.abs_e, align 8
  %var.load460 = load i64, ptr %var.abs_e, align 8
  store i64 0, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.header.126:                                  ; preds = %loop.latch.126, %choice.exit455
  %counter.load461 = load i64, ptr %loop.idx.126, align 8
  %loop.cond = icmp slt i64 %counter.load461, %var.load460
  br i1 %loop.cond, label %loop.body.126, label %loop.exit.nat.126

loop.body.126:                                    ; preds = %loop.header.126
  %loop.rel.i462 = sub i64 %counter.load461, 0
  store i64 1, ptr %loop.step.126, align 8
  store i64 %loop.rel.i462, ptr %var._i463, align 8
  store i64 %counter.load461, ptr %var._464, align 8
  %var.load465 = load i64, ptr %var.eclamp, align 8
  %cmptmp466 = icmp slt i64 %var.load465, 0
  br i1 %cmptmp466, label %choice.then467, label %choice.else468

loop.exit.nat.126:                                ; preds = %loop.header.126
  br label %loop.exit.126

loop.latch.126:                                   ; preds = %choice.exit469
  %step.val474 = load i64, ptr %loop.step.126, align 8
  %loop.next475 = add i64 %counter.load461, %step.val474
  store i64 %loop.next475, ptr %loop.idx.126, align 8
  br label %loop.header.126

loop.exit.126:                                    ; preds = %loop.exit.nat.126
  br label %choice.exit437

choice.then467:                                   ; preds = %loop.body.126
  %var.load470 = load double, ptr %"var.fv'", align 8
  %fdivtmp = fdiv double %var.load470, 1.000000e+01
  br label %choice.exit469

choice.else468:                                   ; preds = %loop.body.126
  %var.load471 = load double, ptr %"var.fv'", align 8
  %fmultmp472 = fmul double %var.load471, 1.000000e+01
  br label %choice.exit469

choice.exit469:                                   ; preds = %choice.else468, %choice.then467
  %choice.res473 = phi double [ %fdivtmp, %choice.then467 ], [ %fmultmp472, %choice.else468 ]
  store double %choice.res473, ptr %"var.fv'", align 8
  br label %loop.latch.126

and.127.then:                                     ; preds = %choice.exit437
  %var.load477 = load i1, ptr %var.has_dot, align 1
  %nottmp = xor i1 %var.load477, true
  br i1 %nottmp, label %or.128.then, label %or.128.else

and.127.else:                                     ; preds = %choice.exit437
  br label %and.127.exit

and.127.exit:                                     ; preds = %and.127.else, %or.128.exit
  %and.127.phi = phi i1 [ %or.128.phi, %or.128.exit ], [ %var.load476, %and.127.else ]
  br i1 %and.127.phi, label %and.129.then, label %and.129.else

or.128.then:                                      ; preds = %and.127.then
  br label %or.128.exit

or.128.else:                                      ; preds = %and.127.then
  %var.load478 = load i1, ptr %"var.had_frac'", align 1
  br label %or.128.exit

or.128.exit:                                      ; preds = %or.128.else, %or.128.then
  %or.128.phi = phi i1 [ %nottmp, %or.128.then ], [ %var.load478, %or.128.else ]
  br label %and.127.exit

and.129.then:                                     ; preds = %and.127.exit
  %var.load479 = load i1, ptr %var.has_exp, align 1
  %nottmp480 = xor i1 %var.load479, true
  br i1 %nottmp480, label %or.130.then, label %or.130.else

and.129.else:                                     ; preds = %and.127.exit
  br label %and.129.exit

and.129.exit:                                     ; preds = %and.129.else, %or.130.exit
  %and.129.phi = phi i1 [ %or.130.phi, %or.130.exit ], [ %and.127.phi, %and.129.else ]
  store i1 %and.129.phi, ptr %var.valid, align 1
  %var.load482 = load i1, ptr %var.valid, align 1
  br i1 %var.load482, label %choice.then483, label %choice.else484

or.130.then:                                      ; preds = %and.129.then
  br label %or.130.exit

or.130.else:                                      ; preds = %and.129.then
  %var.load481 = load i1, ptr %"var.had_exp'", align 1
  br label %or.130.exit

or.130.exit:                                      ; preds = %or.130.else, %or.130.then
  %or.130.phi = phi i1 [ %nottmp480, %or.130.then ], [ %var.load481, %or.130.else ]
  br label %and.129.exit

choice.then483:                                   ; preds = %and.129.exit
  %var.load486 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load486, label %choice.then487, label %choice.else488

choice.else484:                                   ; preds = %and.129.exit
  %arena.cur501 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 56)
  %err.code.gep503 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 0
  store i64 400, ptr %err.code.gep503, align 8
  %err.msg.gep504 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep504, align 8
  %err.file.gep505 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep505, align 8
  %err.line.gep506 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 3
  store i64 0, ptr %err.line.gep506, align 8
  %err.col.gep507 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 4
  store i64 0, ptr %err.col.gep507, align 8
  %err.ctx.gep508 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc502, i32 0, i32 5
  %var.load509 = load i64, ptr %"var.p'", align 8
  %arena.cur510 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc511 = call ptr @dva_arena_alloc(ptr %arena.cur510, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld512 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc511, i32 0, i32 0
  store i64 %var.load509, ptr %rec.fld512, align 8
  %rec.fld513 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc511, i32 0, i32 1
  store i64 0, ptr %rec.fld513, align 8
  %ctx.0.gep514 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc511, i32 0, i32 0
  %ctx.0515 = load i64, ptr %ctx.0.gep514, align 8
  %ctx.1.gep516 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc511, i32 0, i32 1
  %ctx.1517 = load i64, ptr %ctx.1.gep516, align 8
  %err.ctx0.gep518 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep508, i32 0, i32 0
  store i64 %ctx.0515, ptr %err.ctx0.gep518, align 8
  %err.ctx1.gep519 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep508, i32 0, i32 1
  store i64 %ctx.1517, ptr %err.ctx1.gep519, align 8
  %p.to.i64520 = ptrtoint ptr %err.alloc502 to i64
  %ram.pay521 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64520, 1
  br label %choice.exit485

choice.exit485:                                   ; preds = %choice.else484, %choice.exit489
  %choice.res522 = phi { i1, i64 } [ %ram.pay500, %choice.exit489 ], [ %ram.pay521, %choice.else484 ]
  br label %choice.exit90

choice.then487:                                   ; preds = %choice.then483
  %var.load490 = load double, ptr %"var.fv'", align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load490
  br label %choice.exit489

choice.else488:                                   ; preds = %choice.then483
  %var.load491 = load double, ptr %"var.fv'", align 8
  br label %choice.exit489

choice.exit489:                                   ; preds = %choice.else488, %choice.then487
  %choice.res492 = phi double [ %fsubtmp, %choice.then487 ], [ %var.load491, %choice.else488 ]
  store double %choice.res492, ptr %var.f, align 8
  %var.load493 = load ptr, ptr %var.sc, align 8
  %var.load494 = load i64, ptr %"var.p2'", align 8
  %fld.gep495 = getelementptr inbounds { ptr, i64 }, ptr %var.load493, i32 0, i32 1
  store i64 %var.load494, ptr %fld.gep495, align 8
  %arena.cur496 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur496, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load497 = load double, ptr %var.f, align 8
  %arena.cur498 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur498, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store double %var.load497, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %p.to.i64499 = ptrtoint ptr %enum.alloc to i64
  %ram.pay500 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64499, 1
  br label %choice.exit485
}

define internal { i1, i64 } @"json::#parse_array_after_value"(ptr %0, ptr %1, { i1, i64 } %2) #0 {
entry:
  %var.e = alloca ptr, align 8
  %var._175 = alloca ptr, align 8
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
  %ram.pay173 = extractvalue { i1, i64 } %var.load, 1
  %pay.ptr174 = inttoptr i64 %ram.pay173 to ptr
  store ptr %pay.ptr174, ptr %var._175, align 8
  store ptr %pay.ptr174, ptr %var.e, align 8
  %var.load176 = load ptr, ptr %var.e, align 8
  %p.to.i64177 = ptrtoint ptr %var.load176 to i64
  %ram.pay178 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64177, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit28
  %choice.res179 = phi { i1, i64 } [ %choice.res172, %choice.exit28 ], [ %ram.pay178, %choice.else ]
  ret { i1, i64 } %choice.res179

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
  %idx.neg = icmp slt i64 %var.load26, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.next:                                      ; preds = %str_ok
  br label %choice.exit14

str_ok:                                           ; preds = %tag.slow_check, %a.store
  %cmptmp = icmp slt i64 %var.load13, %str.len.query19
  br i1 %cmptmp, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %a.store
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

idx_big_check:                                    ; preds = %choice.case
  %idx.big = icmp sge i64 %var.load26, %s.read.len24
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 %var.load26
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit14

idx_oob:                                          ; preds = %idx_big_check, %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.exit28:                                    ; preds = %choice.next74, %choice.exit125, %a.view.off68
  %choice.res172 = phi { i1, i64 } [ %ram.pay72, %a.view.off68 ], [ %choice.res150, %choice.exit125 ], [ %ram.pay171, %choice.next74 ]
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
  %arena.cur151 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 56)
  %err.code.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc152, i32 0, i32 0
  store i64 400, ptr %err.code.gep153, align 8
  %err.msg.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc152, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep154, align 8
  %err.file.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc152, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep155, align 8
  %err.line.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc152, i32 0, i32 3
  store i64 0, ptr %err.line.gep156, align 8
  %err.col.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc152, i32 0, i32 4
  store i64 0, ptr %err.col.gep157, align 8
  %err.ctx.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc152, i32 0, i32 5
  %var.load159 = load i64, ptr %var.p, align 8
  %arena.cur160 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld162 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc161, i32 0, i32 0
  store i64 %var.load159, ptr %rec.fld162, align 8
  %rec.fld163 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc161, i32 0, i32 1
  store i64 0, ptr %rec.fld163, align 8
  %ctx.0.gep164 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc161, i32 0, i32 0
  %ctx.0165 = load i64, ptr %ctx.0.gep164, align 8
  %ctx.1.gep166 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc161, i32 0, i32 1
  %ctx.1167 = load i64, ptr %ctx.1.gep166, align 8
  %err.ctx0.gep168 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep158, i32 0, i32 0
  store i64 %ctx.0165, ptr %err.ctx0.gep168, align 8
  %err.ctx1.gep169 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep158, i32 0, i32 1
  store i64 %ctx.1167, ptr %err.ctx1.gep169, align 8
  %p.to.i64170 = ptrtoint ptr %err.alloc152 to i64
  %ram.pay171 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64170, 1
  br label %choice.exit28

choice.exit88:                                    ; preds = %choice.next90, %idx_ok116
  %choice.res123 = phi i64 [ %s.byte.val122, %idx_ok116 ], [ -1, %choice.next90 ]
  store i64 %choice.res123, ptr %var.c2, align 8
  %var.load124 = load i64, ptr %var.c2, align 8
  %val.match128 = icmp eq i64 %var.load124, 93
  br i1 %val.match128, label %choice.case126, label %choice.next127

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
  %idx.neg114 = icmp slt i64 %var.load113, 0
  br i1 %idx.neg114, label %idx_oob117, label %idx_big_check115

choice.next90:                                    ; preds = %str_ok98
  br label %choice.exit88

str_ok98:                                         ; preds = %tag.slow_check103, %choice.case73
  %cmptmp104 = icmp slt i64 %var.load87, %str.len.query96
  br i1 %cmptmp104, label %choice.case89, label %choice.next90

tag.slow_check103:                                ; preds = %choice.case73
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag97)
  br label %str_ok98

idx_big_check115:                                 ; preds = %choice.case89
  %idx.big118 = icmp sge i64 %var.load113, %s.read.len110
  br i1 %idx.big118, label %idx_oob117, label %idx_ok116

idx_ok116:                                        ; preds = %abort.dead119, %idx_big_check115
  %s.byte.gep120 = getelementptr i8, ptr %s.read.data112, i64 %var.load113
  %s.byte121 = load i8, ptr %s.byte.gep120, align 1
  %s.byte.val122 = zext i8 %s.byte121 to i64
  br label %choice.exit88

idx_oob117:                                       ; preds = %idx_big_check115, %choice.case89
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %idx_ok116

choice.exit125:                                   ; preds = %a.after140, %choice.case126
  %choice.res150 = phi { i1, i64 } [ %ram.pay134, %choice.case126 ], [ %call.res149, %a.after140 ]
  br label %choice.exit28

choice.case126:                                   ; preds = %choice.exit88
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 56)
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
  %var.load130 = load i64, ptr %var.p2, align 8
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load130, ptr %rec.fld, align 8
  %rec.fld132 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld132, align 8
  %ctx.0.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  %ctx.0 = load i64, ptr %ctx.0.gep, align 8
  %ctx.1.gep = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  %ctx.1 = load i64, ptr %ctx.1.gep, align 8
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 %ctx.0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 %ctx.1, ptr %err.ctx1.gep, align 8
  %p.to.i64133 = ptrtoint ptr %err.alloc to i64
  %ram.pay134 = insertvalue { i1, i64 } zeroinitializer, i64 %p.to.i64133, 1
  br label %choice.exit125

choice.next127:                                   ; preds = %choice.exit88
  %var.load135 = load ptr, ptr %var.sc, align 8
  %var.load136 = load ptr, ptr %var.elems, align 8
  %a.load137 = load ptr, ptr %var.elems, align 8
  %a.null138 = icmp eq ptr %a.load137, null
  br i1 %a.null138, label %a.create139, label %a.after140

a.create139:                                      ; preds = %choice.next127
  %arena.cur141 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 24)
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 128)
  %a.len.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create142, i32 0, i32 0
  store i64 0, ptr %a.len.gep145, align 8
  %a.data.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create142, i32 0, i32 1
  store ptr %a.buf144, ptr %a.data.gep146, align 8
  %a.cap.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create142, i32 0, i32 2
  store i64 16, ptr %a.cap.gep147, align 8
  store ptr %a.create142, ptr %var.elems, align 8
  br label %a.after140

a.after140:                                       ; preds = %a.create139, %choice.next127
  %a.load2148 = load ptr, ptr %var.elems, align 8
  %call.res149 = call { i1, i64 } @"json::#parse_array_loop"(ptr %var.load135, ptr %a.load2148)
  br label %choice.exit125
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
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.132:                                ; preds = %loop.header.132
  br label %loop.exit.132

loop.latch.132:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.132, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.132, align 8
  br label %loop.header.132

loop.exit.132:                                    ; preds = %loop.exit.nat.132
  %b.load530 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len531 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 0
  %b.rn.cur.len532 = load i64, ptr %b.rn.cur.len531, align 8
  %b.rn.new.len533 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len532, i64 1)
  %sum534 = extractvalue { i64, i1 } %b.rn.new.len533, 0
  %ovf535 = extractvalue { i64, i1 } %b.rn.new.len533, 1
  br i1 %ovf535, label %str_overflow_abort537, label %b.rn.new.len536

idx_big_check:                                    ; preds = %loop.body.132
  %idx.big = icmp sge i64 %var.load18, %s.read.len16
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead19, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %bandtmp = and i64 %s.byte.val, 255
  store i64 %bandtmp, ptr %var.c, align 8
  %var.load20 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load20, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %loop.body.132
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %idx_ok

choice.exit:                                      ; preds = %b.push_done, %br.done.134, %b.grow_done307, %b.grow_done261, %b.grow_done215, %b.grow_done169, %b.grow_done123, %b.grow_done77, %b.grow_done34
  br label %loop.latch.132

choice.case:                                      ; preds = %idx_ok
  %b.load21 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.26.struct, align 8
  %app.str.len22 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.26.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 0
  %b.app.cur.len23 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len23, i64 %app.str.len22)
  %sum24 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf25 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf25, label %str_overflow_abort27, label %b.app.new.len26

choice.next:                                      ; preds = %idx_ok
  %val.match59 = icmp eq i64 %var.load20, 92
  br i1 %val.match59, label %choice.case57, label %choice.next58

b.app.new.len26:                                  ; preds = %abort.dead28, %choice.case
  %b.cap29 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 2
  %b.cap30 = load i64, ptr %b.cap29, align 8
  %b.need.grow31 = icmp slt i64 %b.cap30, %sum24
  br i1 %b.need.grow31, label %b.grow232, label %b.nogrow233

str_overflow_abort27:                             ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %b.app.new.len26

b.grow232:                                        ; preds = %b.app.new.len26
  %b.cap235 = mul i64 %b.cap30, 2
  %b.cap.small36 = icmp slt i64 %b.cap235, 16
  %b.cap.grow37 = select i1 %b.cap.small36, i64 16, i64 %b.cap235
  %b.cap.need38 = icmp slt i64 %b.cap.grow37, %sum24
  %b.new.cap39 = select i1 %b.cap.need38, i64 %sum24, i64 %b.cap.grow37
  %b.cur.len240 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 0
  %b.cur.len241 = load i64, ptr %b.cur.len240, align 8
  %b.cur.data242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 1
  %b.cur.data243 = load ptr, ptr %b.cur.data242, align 8
  %b.new.buf.len244 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap39, i64 1)
  %sum45 = extractvalue { i64, i1 } %b.new.buf.len244, 0
  %ovf46 = extractvalue { i64, i1 } %b.new.buf.len244, 1
  br i1 %ovf46, label %str_overflow_abort48, label %b.new.buf.len247

b.nogrow233:                                      ; preds = %b.app.new.len26
  br label %b.grow_done34

b.grow_done34:                                    ; preds = %b.nogrow233, %b.new.buf.len247
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 1
  %b.app.data55 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data55, i64 %b.app.cur.len23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len22, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data55, i64 %sum24
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 0
  store i64 %sum24, ptr %b.len.gep56, align 8
  br label %choice.exit

b.new.buf.len247:                                 ; preds = %abort.dead49, %b.grow232
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf251 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 %sum45)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf251, ptr align 1 %b.cur.data243, i64 %b.cur.len241, i1 false)
  %b.grow2.nul52 = getelementptr i8, ptr %b.new.buf251, i64 %b.cur.len241
  store i8 0, ptr %b.grow2.nul52, align 1
  %b.new.data2.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 1
  store ptr %b.new.buf251, ptr %b.new.data2.gep53, align 8
  %b.new.cap2.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load21, i32 0, i32 2
  store i64 %b.new.cap39, ptr %b.new.cap2.gep54, align 8
  br label %b.grow_done34

str_overflow_abort48:                             ; preds = %b.grow232
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %b.new.buf.len247

choice.case57:                                    ; preds = %choice.next
  %b.load60 = load ptr, ptr %var.b, align 8
  %app.str.len61 = load i64, ptr @str.27.struct, align 8
  %app.str.len62 = and i64 %app.str.len61, 281474976710655
  %app.str.data63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.27.struct, i32 0, i32 1), align 8
  %b.app.cur.len64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 0
  %b.app.cur.len65 = load i64, ptr %b.app.cur.len64, align 8
  %b.app.new.len66 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len65, i64 %app.str.len62)
  %sum67 = extractvalue { i64, i1 } %b.app.new.len66, 0
  %ovf68 = extractvalue { i64, i1 } %b.app.new.len66, 1
  br i1 %ovf68, label %str_overflow_abort70, label %b.app.new.len69

choice.next58:                                    ; preds = %choice.next
  %val.match105 = icmp eq i64 %var.load20, 8
  br i1 %val.match105, label %choice.case103, label %choice.next104

b.app.new.len69:                                  ; preds = %abort.dead71, %choice.case57
  %b.cap72 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 2
  %b.cap73 = load i64, ptr %b.cap72, align 8
  %b.need.grow74 = icmp slt i64 %b.cap73, %sum67
  br i1 %b.need.grow74, label %b.grow275, label %b.nogrow276

str_overflow_abort70:                             ; preds = %choice.case57
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %b.app.new.len69

b.grow275:                                        ; preds = %b.app.new.len69
  %b.cap278 = mul i64 %b.cap73, 2
  %b.cap.small79 = icmp slt i64 %b.cap278, 16
  %b.cap.grow80 = select i1 %b.cap.small79, i64 16, i64 %b.cap278
  %b.cap.need81 = icmp slt i64 %b.cap.grow80, %sum67
  %b.new.cap82 = select i1 %b.cap.need81, i64 %sum67, i64 %b.cap.grow80
  %b.cur.len283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 0
  %b.cur.len284 = load i64, ptr %b.cur.len283, align 8
  %b.cur.data285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 1
  %b.cur.data286 = load ptr, ptr %b.cur.data285, align 8
  %b.new.buf.len287 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap82, i64 1)
  %sum88 = extractvalue { i64, i1 } %b.new.buf.len287, 0
  %ovf89 = extractvalue { i64, i1 } %b.new.buf.len287, 1
  br i1 %ovf89, label %str_overflow_abort91, label %b.new.buf.len290

b.nogrow276:                                      ; preds = %b.app.new.len69
  br label %b.grow_done77

b.grow_done77:                                    ; preds = %b.nogrow276, %b.new.buf.len290
  %b.app.data98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 1
  %b.app.data99 = load ptr, ptr %b.app.data98, align 8
  %b.app.dst100 = getelementptr i8, ptr %b.app.data99, i64 %b.app.cur.len65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst100, ptr align 1 %app.str.data63, i64 %app.str.len62, i1 false)
  %b.app.nul101 = getelementptr i8, ptr %b.app.data99, i64 %sum67
  store i8 0, ptr %b.app.nul101, align 1
  %b.len.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 0
  store i64 %sum67, ptr %b.len.gep102, align 8
  br label %choice.exit

b.new.buf.len290:                                 ; preds = %abort.dead92, %b.grow275
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf294 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 %sum88)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf294, ptr align 1 %b.cur.data286, i64 %b.cur.len284, i1 false)
  %b.grow2.nul95 = getelementptr i8, ptr %b.new.buf294, i64 %b.cur.len284
  store i8 0, ptr %b.grow2.nul95, align 1
  %b.new.data2.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 1
  store ptr %b.new.buf294, ptr %b.new.data2.gep96, align 8
  %b.new.cap2.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 2
  store i64 %b.new.cap82, ptr %b.new.cap2.gep97, align 8
  br label %b.grow_done77

str_overflow_abort91:                             ; preds = %b.grow275
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %b.new.buf.len290

choice.case103:                                   ; preds = %choice.next58
  %b.load106 = load ptr, ptr %var.b, align 8
  %app.str.len107 = load i64, ptr @str.28.struct, align 8
  %app.str.len108 = and i64 %app.str.len107, 281474976710655
  %app.str.data109 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.28.struct, i32 0, i32 1), align 8
  %b.app.cur.len110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 0
  %b.app.cur.len111 = load i64, ptr %b.app.cur.len110, align 8
  %b.app.new.len112 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len111, i64 %app.str.len108)
  %sum113 = extractvalue { i64, i1 } %b.app.new.len112, 0
  %ovf114 = extractvalue { i64, i1 } %b.app.new.len112, 1
  br i1 %ovf114, label %str_overflow_abort116, label %b.app.new.len115

choice.next104:                                   ; preds = %choice.next58
  %val.match151 = icmp eq i64 %var.load20, 12
  br i1 %val.match151, label %choice.case149, label %choice.next150

b.app.new.len115:                                 ; preds = %abort.dead117, %choice.case103
  %b.cap118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 2
  %b.cap119 = load i64, ptr %b.cap118, align 8
  %b.need.grow120 = icmp slt i64 %b.cap119, %sum113
  br i1 %b.need.grow120, label %b.grow2121, label %b.nogrow2122

str_overflow_abort116:                            ; preds = %choice.case103
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead117:                                    ; No predecessors!
  br label %b.app.new.len115

b.grow2121:                                       ; preds = %b.app.new.len115
  %b.cap2124 = mul i64 %b.cap119, 2
  %b.cap.small125 = icmp slt i64 %b.cap2124, 16
  %b.cap.grow126 = select i1 %b.cap.small125, i64 16, i64 %b.cap2124
  %b.cap.need127 = icmp slt i64 %b.cap.grow126, %sum113
  %b.new.cap128 = select i1 %b.cap.need127, i64 %sum113, i64 %b.cap.grow126
  %b.cur.len2129 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 0
  %b.cur.len2130 = load i64, ptr %b.cur.len2129, align 8
  %b.cur.data2131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 1
  %b.cur.data2132 = load ptr, ptr %b.cur.data2131, align 8
  %b.new.buf.len2133 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap128, i64 1)
  %sum134 = extractvalue { i64, i1 } %b.new.buf.len2133, 0
  %ovf135 = extractvalue { i64, i1 } %b.new.buf.len2133, 1
  br i1 %ovf135, label %str_overflow_abort137, label %b.new.buf.len2136

b.nogrow2122:                                     ; preds = %b.app.new.len115
  br label %b.grow_done123

b.grow_done123:                                   ; preds = %b.nogrow2122, %b.new.buf.len2136
  %b.app.data144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 1
  %b.app.data145 = load ptr, ptr %b.app.data144, align 8
  %b.app.dst146 = getelementptr i8, ptr %b.app.data145, i64 %b.app.cur.len111
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst146, ptr align 1 %app.str.data109, i64 %app.str.len108, i1 false)
  %b.app.nul147 = getelementptr i8, ptr %b.app.data145, i64 %sum113
  store i8 0, ptr %b.app.nul147, align 1
  %b.len.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 0
  store i64 %sum113, ptr %b.len.gep148, align 8
  br label %choice.exit

b.new.buf.len2136:                                ; preds = %abort.dead138, %b.grow2121
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %sum134)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2140, ptr align 1 %b.cur.data2132, i64 %b.cur.len2130, i1 false)
  %b.grow2.nul141 = getelementptr i8, ptr %b.new.buf2140, i64 %b.cur.len2130
  store i8 0, ptr %b.grow2.nul141, align 1
  %b.new.data2.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 1
  store ptr %b.new.buf2140, ptr %b.new.data2.gep142, align 8
  %b.new.cap2.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load106, i32 0, i32 2
  store i64 %b.new.cap128, ptr %b.new.cap2.gep143, align 8
  br label %b.grow_done123

str_overflow_abort137:                            ; preds = %b.grow2121
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead138:                                    ; No predecessors!
  br label %b.new.buf.len2136

choice.case149:                                   ; preds = %choice.next104
  %b.load152 = load ptr, ptr %var.b, align 8
  %app.str.len153 = load i64, ptr @str.29.struct, align 8
  %app.str.len154 = and i64 %app.str.len153, 281474976710655
  %app.str.data155 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.29.struct, i32 0, i32 1), align 8
  %b.app.cur.len156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load152, i32 0, i32 0
  %b.app.cur.len157 = load i64, ptr %b.app.cur.len156, align 8
  %b.app.new.len158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len157, i64 %app.str.len154)
  %sum159 = extractvalue { i64, i1 } %b.app.new.len158, 0
  %ovf160 = extractvalue { i64, i1 } %b.app.new.len158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %b.app.new.len161

choice.next150:                                   ; preds = %choice.next104
  %val.match197 = icmp eq i64 %var.load20, 10
  br i1 %val.match197, label %choice.case195, label %choice.next196

b.app.new.len161:                                 ; preds = %abort.dead163, %choice.case149
  %b.cap164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load152, i32 0, i32 2
  %b.cap165 = load i64, ptr %b.cap164, align 8
  %b.need.grow166 = icmp slt i64 %b.cap165, %sum159
  br i1 %b.need.grow166, label %b.grow2167, label %b.nogrow2168

str_overflow_abort162:                            ; preds = %choice.case149
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %b.app.new.len161

b.grow2167:                                       ; preds = %b.app.new.len161
  %b.cap2170 = mul i64 %b.cap165, 2
  %b.cap.small171 = icmp slt i64 %b.cap2170, 16
  %b.cap.grow172 = select i1 %b.cap.small171, i64 16, i64 %b.cap2170
  %b.cap.need173 = icmp slt i64 %b.cap.grow172, %sum159
  %b.new.cap174 = select i1 %b.cap.need173, i64 %sum159, i64 %b.cap.grow172
  %b.cur.len2175 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load152, i32 0, i32 0
  %b.cur.len2176 = load i64, ptr %b.cur.len2175, align 8
  %b.cur.data2177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load152, i32 0, i32 1
  %b.cur.data2178 = load ptr, ptr %b.cur.data2177, align 8
  %b.new.buf.len2179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap174, i64 1)
  %sum180 = extractvalue { i64, i1 } %b.new.buf.len2179, 0
  %ovf181 = extractvalue { i64, i1 } %b.new.buf.len2179, 1
  br i1 %ovf181, label %str_overflow_abort183, label %b.new.buf.len2182

b.nogrow2168:                                     ; preds = %b.app.new.len161
  br label %b.grow_done169

b.grow_done169:                                   ; preds = %b.nogrow2168, %b.new.buf.len2182
  %b.app.data190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load152, i32 0, i32 1
  %b.app.data191 = load ptr, ptr %b.app.data190, align 8
  %b.app.dst192 = getelementptr i8, ptr %b.app.data191, i64 %b.app.cur.len157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst192, ptr align 1 %app.str.data155, i64 %app.str.len154, i1 false)
  %b.app.nul193 = getelementptr i8, ptr %b.app.data191, i64 %sum159
  store i8 0, ptr %b.app.nul193, align 1
  %b.len.gep194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load152, i32 0, i32 0
  store i64 %sum159, ptr %b.len.gep194, align 8
  br label %choice.exit

b.new.buf.len2182:                                ; preds = %abort.dead184, %b.grow2167
  %arena.cur185 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 %sum180)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2186, ptr align 1 %b.cur.data2178, i64 %b.cur.len2176, i1 false)
  %b.grow2.nul187 = getelementptr i8, ptr %b.new.buf2186, i64 %b.cur.len2176
  store i8 0, ptr %b.grow2.nul187, align 1
  %b.new.data2.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load152, i32 0, i32 1
  store ptr %b.new.buf2186, ptr %b.new.data2.gep188, align 8
  %b.new.cap2.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load152, i32 0, i32 2
  store i64 %b.new.cap174, ptr %b.new.cap2.gep189, align 8
  br label %b.grow_done169

str_overflow_abort183:                            ; preds = %b.grow2167
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead184:                                    ; No predecessors!
  br label %b.new.buf.len2182

choice.case195:                                   ; preds = %choice.next150
  %b.load198 = load ptr, ptr %var.b, align 8
  %app.str.len199 = load i64, ptr @str.30.struct, align 8
  %app.str.len200 = and i64 %app.str.len199, 281474976710655
  %app.str.data201 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.30.struct, i32 0, i32 1), align 8
  %b.app.cur.len202 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  %b.app.cur.len203 = load i64, ptr %b.app.cur.len202, align 8
  %b.app.new.len204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len203, i64 %app.str.len200)
  %sum205 = extractvalue { i64, i1 } %b.app.new.len204, 0
  %ovf206 = extractvalue { i64, i1 } %b.app.new.len204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %b.app.new.len207

choice.next196:                                   ; preds = %choice.next150
  %val.match243 = icmp eq i64 %var.load20, 13
  br i1 %val.match243, label %choice.case241, label %choice.next242

b.app.new.len207:                                 ; preds = %abort.dead209, %choice.case195
  %b.cap210 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 2
  %b.cap211 = load i64, ptr %b.cap210, align 8
  %b.need.grow212 = icmp slt i64 %b.cap211, %sum205
  br i1 %b.need.grow212, label %b.grow2213, label %b.nogrow2214

str_overflow_abort208:                            ; preds = %choice.case195
  call void @dva_abort_str_overflow_msg()
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
  br label %choice.exit

b.new.buf.len2228:                                ; preds = %abort.dead230, %b.grow2213
  %arena.cur231 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead230:                                    ; No predecessors!
  br label %b.new.buf.len2228

choice.case241:                                   ; preds = %choice.next196
  %b.load244 = load ptr, ptr %var.b, align 8
  %app.str.len245 = load i64, ptr @str.31.struct, align 8
  %app.str.len246 = and i64 %app.str.len245, 281474976710655
  %app.str.data247 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.31.struct, i32 0, i32 1), align 8
  %b.app.cur.len248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 0
  %b.app.cur.len249 = load i64, ptr %b.app.cur.len248, align 8
  %b.app.new.len250 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len249, i64 %app.str.len246)
  %sum251 = extractvalue { i64, i1 } %b.app.new.len250, 0
  %ovf252 = extractvalue { i64, i1 } %b.app.new.len250, 1
  br i1 %ovf252, label %str_overflow_abort254, label %b.app.new.len253

choice.next242:                                   ; preds = %choice.next196
  %val.match289 = icmp eq i64 %var.load20, 9
  br i1 %val.match289, label %choice.case287, label %choice.next288

b.app.new.len253:                                 ; preds = %abort.dead255, %choice.case241
  %b.cap256 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 2
  %b.cap257 = load i64, ptr %b.cap256, align 8
  %b.need.grow258 = icmp slt i64 %b.cap257, %sum251
  br i1 %b.need.grow258, label %b.grow2259, label %b.nogrow2260

str_overflow_abort254:                            ; preds = %choice.case241
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead255:                                    ; No predecessors!
  br label %b.app.new.len253

b.grow2259:                                       ; preds = %b.app.new.len253
  %b.cap2262 = mul i64 %b.cap257, 2
  %b.cap.small263 = icmp slt i64 %b.cap2262, 16
  %b.cap.grow264 = select i1 %b.cap.small263, i64 16, i64 %b.cap2262
  %b.cap.need265 = icmp slt i64 %b.cap.grow264, %sum251
  %b.new.cap266 = select i1 %b.cap.need265, i64 %sum251, i64 %b.cap.grow264
  %b.cur.len2267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 0
  %b.cur.len2268 = load i64, ptr %b.cur.len2267, align 8
  %b.cur.data2269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 1
  %b.cur.data2270 = load ptr, ptr %b.cur.data2269, align 8
  %b.new.buf.len2271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap266, i64 1)
  %sum272 = extractvalue { i64, i1 } %b.new.buf.len2271, 0
  %ovf273 = extractvalue { i64, i1 } %b.new.buf.len2271, 1
  br i1 %ovf273, label %str_overflow_abort275, label %b.new.buf.len2274

b.nogrow2260:                                     ; preds = %b.app.new.len253
  br label %b.grow_done261

b.grow_done261:                                   ; preds = %b.nogrow2260, %b.new.buf.len2274
  %b.app.data282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 1
  %b.app.data283 = load ptr, ptr %b.app.data282, align 8
  %b.app.dst284 = getelementptr i8, ptr %b.app.data283, i64 %b.app.cur.len249
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst284, ptr align 1 %app.str.data247, i64 %app.str.len246, i1 false)
  %b.app.nul285 = getelementptr i8, ptr %b.app.data283, i64 %sum251
  store i8 0, ptr %b.app.nul285, align 1
  %b.len.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 0
  store i64 %sum251, ptr %b.len.gep286, align 8
  br label %choice.exit

b.new.buf.len2274:                                ; preds = %abort.dead276, %b.grow2259
  %arena.cur277 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 %sum272)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2278, ptr align 1 %b.cur.data2270, i64 %b.cur.len2268, i1 false)
  %b.grow2.nul279 = getelementptr i8, ptr %b.new.buf2278, i64 %b.cur.len2268
  store i8 0, ptr %b.grow2.nul279, align 1
  %b.new.data2.gep280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 1
  store ptr %b.new.buf2278, ptr %b.new.data2.gep280, align 8
  %b.new.cap2.gep281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load244, i32 0, i32 2
  store i64 %b.new.cap266, ptr %b.new.cap2.gep281, align 8
  br label %b.grow_done261

str_overflow_abort275:                            ; preds = %b.grow2259
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead276:                                    ; No predecessors!
  br label %b.new.buf.len2274

choice.case287:                                   ; preds = %choice.next242
  %b.load290 = load ptr, ptr %var.b, align 8
  %app.str.len291 = load i64, ptr @str.32.struct, align 8
  %app.str.len292 = and i64 %app.str.len291, 281474976710655
  %app.str.data293 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.32.struct, i32 0, i32 1), align 8
  %b.app.cur.len294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  %b.app.cur.len295 = load i64, ptr %b.app.cur.len294, align 8
  %b.app.new.len296 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len295, i64 %app.str.len292)
  %sum297 = extractvalue { i64, i1 } %b.app.new.len296, 0
  %ovf298 = extractvalue { i64, i1 } %b.app.new.len296, 1
  br i1 %ovf298, label %str_overflow_abort300, label %b.app.new.len299

choice.next288:                                   ; preds = %choice.next242
  %cmptmp = icmp slt i64 %var.load20, 32
  br i1 %cmptmp, label %choice.case333, label %choice.next334

b.app.new.len299:                                 ; preds = %abort.dead301, %choice.case287
  %b.cap302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 2
  %b.cap303 = load i64, ptr %b.cap302, align 8
  %b.need.grow304 = icmp slt i64 %b.cap303, %sum297
  br i1 %b.need.grow304, label %b.grow2305, label %b.nogrow2306

str_overflow_abort300:                            ; preds = %choice.case287
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead301:                                    ; No predecessors!
  br label %b.app.new.len299

b.grow2305:                                       ; preds = %b.app.new.len299
  %b.cap2308 = mul i64 %b.cap303, 2
  %b.cap.small309 = icmp slt i64 %b.cap2308, 16
  %b.cap.grow310 = select i1 %b.cap.small309, i64 16, i64 %b.cap2308
  %b.cap.need311 = icmp slt i64 %b.cap.grow310, %sum297
  %b.new.cap312 = select i1 %b.cap.need311, i64 %sum297, i64 %b.cap.grow310
  %b.cur.len2313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  %b.cur.len2314 = load i64, ptr %b.cur.len2313, align 8
  %b.cur.data2315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  %b.cur.data2316 = load ptr, ptr %b.cur.data2315, align 8
  %b.new.buf.len2317 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap312, i64 1)
  %sum318 = extractvalue { i64, i1 } %b.new.buf.len2317, 0
  %ovf319 = extractvalue { i64, i1 } %b.new.buf.len2317, 1
  br i1 %ovf319, label %str_overflow_abort321, label %b.new.buf.len2320

b.nogrow2306:                                     ; preds = %b.app.new.len299
  br label %b.grow_done307

b.grow_done307:                                   ; preds = %b.nogrow2306, %b.new.buf.len2320
  %b.app.data328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  %b.app.data329 = load ptr, ptr %b.app.data328, align 8
  %b.app.dst330 = getelementptr i8, ptr %b.app.data329, i64 %b.app.cur.len295
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst330, ptr align 1 %app.str.data293, i64 %app.str.len292, i1 false)
  %b.app.nul331 = getelementptr i8, ptr %b.app.data329, i64 %sum297
  store i8 0, ptr %b.app.nul331, align 1
  %b.len.gep332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 0
  store i64 %sum297, ptr %b.len.gep332, align 8
  br label %choice.exit

b.new.buf.len2320:                                ; preds = %abort.dead322, %b.grow2305
  %arena.cur323 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2324 = call ptr @dva_arena_alloc(ptr %arena.cur323, i64 %sum318)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2324, ptr align 1 %b.cur.data2316, i64 %b.cur.len2314, i1 false)
  %b.grow2.nul325 = getelementptr i8, ptr %b.new.buf2324, i64 %b.cur.len2314
  store i8 0, ptr %b.grow2.nul325, align 1
  %b.new.data2.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 1
  store ptr %b.new.buf2324, ptr %b.new.data2.gep326, align 8
  %b.new.cap2.gep327 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load290, i32 0, i32 2
  store i64 %b.new.cap312, ptr %b.new.cap2.gep327, align 8
  br label %b.grow_done307

str_overflow_abort321:                            ; preds = %b.grow2305
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead322:                                    ; No predecessors!
  br label %b.new.buf.len2320

choice.case333:                                   ; preds = %choice.next288
  %b.load335 = load ptr, ptr %var.b, align 8
  %app.str.len336 = load i64, ptr @str.33.struct, align 8
  %app.str.len337 = and i64 %app.str.len336, 281474976710655
  %app.str.data338 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.33.struct, i32 0, i32 1), align 8
  %b.app.cur.len339 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 0
  %b.app.cur.len340 = load i64, ptr %b.app.cur.len339, align 8
  %b.app.new.len341 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len340, i64 %app.str.len337)
  %sum342 = extractvalue { i64, i1 } %b.app.new.len341, 0
  %ovf343 = extractvalue { i64, i1 } %b.app.new.len341, 1
  br i1 %ovf343, label %str_overflow_abort345, label %b.app.new.len344

choice.next334:                                   ; preds = %choice.next288
  %b.load511 = load ptr, ptr %var.b, align 8
  %var.load512 = load i64, ptr %var.c, align 8
  %b.b.ge0 = icmp sge i64 %var.load512, 0
  %b.b.le255 = icmp sle i64 %var.load512, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.app.new.len344:                                 ; preds = %abort.dead346, %choice.case333
  %b.cap347 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 2
  %b.cap348 = load i64, ptr %b.cap347, align 8
  %b.need.grow349 = icmp slt i64 %b.cap348, %sum342
  br i1 %b.need.grow349, label %b.grow2350, label %b.nogrow2351

str_overflow_abort345:                            ; preds = %choice.case333
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead346:                                    ; No predecessors!
  br label %b.app.new.len344

b.grow2350:                                       ; preds = %b.app.new.len344
  %b.cap2353 = mul i64 %b.cap348, 2
  %b.cap.small354 = icmp slt i64 %b.cap2353, 16
  %b.cap.grow355 = select i1 %b.cap.small354, i64 16, i64 %b.cap2353
  %b.cap.need356 = icmp slt i64 %b.cap.grow355, %sum342
  %b.new.cap357 = select i1 %b.cap.need356, i64 %sum342, i64 %b.cap.grow355
  %b.cur.len2358 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 0
  %b.cur.len2359 = load i64, ptr %b.cur.len2358, align 8
  %b.cur.data2360 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 1
  %b.cur.data2361 = load ptr, ptr %b.cur.data2360, align 8
  %b.new.buf.len2362 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap357, i64 1)
  %sum363 = extractvalue { i64, i1 } %b.new.buf.len2362, 0
  %ovf364 = extractvalue { i64, i1 } %b.new.buf.len2362, 1
  br i1 %ovf364, label %str_overflow_abort366, label %b.new.buf.len2365

b.nogrow2351:                                     ; preds = %b.app.new.len344
  br label %b.grow_done352

b.grow_done352:                                   ; preds = %b.nogrow2351, %b.new.buf.len2365
  %b.app.data373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 1
  %b.app.data374 = load ptr, ptr %b.app.data373, align 8
  %b.app.dst375 = getelementptr i8, ptr %b.app.data374, i64 %b.app.cur.len340
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst375, ptr align 1 %app.str.data338, i64 %app.str.len337, i1 false)
  %b.app.nul376 = getelementptr i8, ptr %b.app.data374, i64 %sum342
  store i8 0, ptr %b.app.nul376, align 1
  %b.len.gep377 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 0
  store i64 %sum342, ptr %b.len.gep377, align 8
  %b.load378 = load ptr, ptr %var.b, align 8
  %var.load379 = load i64, ptr %var.c, align 8
  %shrtmp = lshr i64 %var.load379, 4
  %call.res = call i32 @"json::#hex_digit"(i64 %shrtmp)
  %coerce.sext = sext i32 %call.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len380 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 0
  %b.rn.cur.len381 = load i64, ptr %b.rn.cur.len380, align 8
  %b.rn.new.len382 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len381, i64 %br.width)
  %sum383 = extractvalue { i64, i1 } %b.rn.new.len382, 0
  %ovf384 = extractvalue { i64, i1 } %b.rn.new.len382, 1
  br i1 %ovf384, label %str_overflow_abort386, label %b.rn.new.len385

b.new.buf.len2365:                                ; preds = %abort.dead367, %b.grow2350
  %arena.cur368 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2369 = call ptr @dva_arena_alloc(ptr %arena.cur368, i64 %sum363)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2369, ptr align 1 %b.cur.data2361, i64 %b.cur.len2359, i1 false)
  %b.grow2.nul370 = getelementptr i8, ptr %b.new.buf2369, i64 %b.cur.len2359
  store i8 0, ptr %b.grow2.nul370, align 1
  %b.new.data2.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 1
  store ptr %b.new.buf2369, ptr %b.new.data2.gep371, align 8
  %b.new.cap2.gep372 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 2
  store i64 %b.new.cap357, ptr %b.new.cap2.gep372, align 8
  br label %b.grow_done352

str_overflow_abort366:                            ; preds = %b.grow2350
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead367:                                    ; No predecessors!
  br label %b.new.buf.len2365

b.rn.new.len385:                                  ; preds = %abort.dead387, %b.grow_done352
  %b.cap388 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 2
  %b.cap389 = load i64, ptr %b.cap388, align 8
  %b.need.grow390 = icmp slt i64 %b.cap389, %sum383
  br i1 %b.need.grow390, label %b.grow2391, label %b.nogrow2392

str_overflow_abort386:                            ; preds = %b.grow_done352
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead387:                                    ; No predecessors!
  br label %b.rn.new.len385

b.grow2391:                                       ; preds = %b.rn.new.len385
  %b.cap2394 = mul i64 %b.cap389, 2
  %b.cap.small395 = icmp slt i64 %b.cap2394, 16
  %b.cap.grow396 = select i1 %b.cap.small395, i64 16, i64 %b.cap2394
  %b.cap.need397 = icmp slt i64 %b.cap.grow396, %sum383
  %b.new.cap398 = select i1 %b.cap.need397, i64 %sum383, i64 %b.cap.grow396
  %b.cur.len2399 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 0
  %b.cur.len2400 = load i64, ptr %b.cur.len2399, align 8
  %b.cur.data2401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 1
  %b.cur.data2402 = load ptr, ptr %b.cur.data2401, align 8
  %b.new.buf.len2403 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap398, i64 1)
  %sum404 = extractvalue { i64, i1 } %b.new.buf.len2403, 0
  %ovf405 = extractvalue { i64, i1 } %b.new.buf.len2403, 1
  br i1 %ovf405, label %str_overflow_abort407, label %b.new.buf.len2406

b.nogrow2392:                                     ; preds = %b.rn.new.len385
  br label %b.grow_done393

b.grow_done393:                                   ; preds = %b.nogrow2392, %b.new.buf.len2406
  %b.rn.data414 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 1
  %b.rn.data415 = load ptr, ptr %b.rn.data414, align 8
  %b.rn.dst416 = getelementptr i8, ptr %b.rn.data415, i64 %b.rn.cur.len381
  br i1 %br.cmp1, label %br.b1.133, label %br.c2.133

b.new.buf.len2406:                                ; preds = %abort.dead408, %b.grow2391
  %arena.cur409 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2410 = call ptr @dva_arena_alloc(ptr %arena.cur409, i64 %sum404)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2410, ptr align 1 %b.cur.data2402, i64 %b.cur.len2400, i1 false)
  %b.grow2.nul411 = getelementptr i8, ptr %b.new.buf2410, i64 %b.cur.len2400
  store i8 0, ptr %b.grow2.nul411, align 1
  %b.new.data2.gep412 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 1
  store ptr %b.new.buf2410, ptr %b.new.data2.gep412, align 8
  %b.new.cap2.gep413 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 2
  store i64 %b.new.cap398, ptr %b.new.cap2.gep413, align 8
  br label %b.grow_done393

str_overflow_abort407:                            ; preds = %b.grow2391
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead408:                                    ; No predecessors!
  br label %b.new.buf.len2406

br.b1.133:                                        ; preds = %b.grow_done393
  %br.b1.0 = trunc i64 %coerce.sext to i8
  store i8 %br.b1.0, ptr %b.rn.dst416, align 1
  br label %br.done.133

br.c2.133:                                        ; preds = %b.grow_done393
  br i1 %br.cmp2, label %br.b2.133, label %br.c3.133

br.b2.133:                                        ; preds = %br.c2.133
  %br.sh6 = lshr i64 %coerce.sext, 6
  %br.b2.0 = or i64 %br.sh6, 192
  %br.b2.0t = trunc i64 %br.b2.0 to i8
  %br.m6 = and i64 %coerce.sext, 63
  %br.b2.1 = or i64 %br.m6, 128
  %br.b2.1t = trunc i64 %br.b2.1 to i8
  store i8 %br.b2.0t, ptr %b.rn.dst416, align 1
  %br.dst1417 = getelementptr i8, ptr %b.rn.dst416, i64 1
  store i8 %br.b2.1t, ptr %br.dst1417, align 1
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
  store i8 %br.b3.0t, ptr %b.rn.dst416, align 1
  %br.dst1.3418 = getelementptr i8, ptr %b.rn.dst416, i64 1
  store i8 %br.b3.1t, ptr %br.dst1.3418, align 1
  %br.dst2.3419 = getelementptr i8, ptr %b.rn.dst416, i64 2
  store i8 %br.b3.2t, ptr %br.dst2.3419, align 1
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
  store i8 %br.b4.0t, ptr %b.rn.dst416, align 1
  %br.dst1.4420 = getelementptr i8, ptr %b.rn.dst416, i64 1
  store i8 %br.b4.1t, ptr %br.dst1.4420, align 1
  %br.dst2.4421 = getelementptr i8, ptr %b.rn.dst416, i64 2
  store i8 %br.b4.2t, ptr %br.dst2.4421, align 1
  %br.dst3.4422 = getelementptr i8, ptr %b.rn.dst416, i64 3
  store i8 %br.b4.3t, ptr %br.dst3.4422, align 1
  br label %br.done.133

br.done.133:                                      ; preds = %br.b4.133, %br.b3.133, %br.b2.133, %br.b1.133
  %br.nul423 = getelementptr i8, ptr %b.rn.data415, i64 %sum383
  store i8 0, ptr %br.nul423, align 1
  %b.len.gep424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 0
  store i64 %sum383, ptr %b.len.gep424, align 8
  %b.load425 = load ptr, ptr %var.b, align 8
  %var.load426 = load i64, ptr %var.c, align 8
  %call.res427 = call i32 @"json::#hex_digit"(i64 %var.load426)
  %coerce.sext428 = sext i32 %call.res427 to i64
  %br.cmp1429 = icmp slt i64 %coerce.sext428, 128
  %br.cmp2430 = icmp slt i64 %coerce.sext428, 2048
  %br.cmp3431 = icmp slt i64 %coerce.sext428, 65536
  %br.w3432 = select i1 %br.cmp3431, i64 3, i64 4
  %br.w2433 = select i1 %br.cmp2430, i64 2, i64 %br.w3432
  %br.width434 = select i1 %br.cmp1429, i64 1, i64 %br.w2433
  %b.rn.cur.len435 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 0
  %b.rn.cur.len436 = load i64, ptr %b.rn.cur.len435, align 8
  %b.rn.new.len437 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len436, i64 %br.width434)
  %sum438 = extractvalue { i64, i1 } %b.rn.new.len437, 0
  %ovf439 = extractvalue { i64, i1 } %b.rn.new.len437, 1
  br i1 %ovf439, label %str_overflow_abort441, label %b.rn.new.len440

b.rn.new.len440:                                  ; preds = %abort.dead442, %br.done.133
  %b.cap443 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 2
  %b.cap444 = load i64, ptr %b.cap443, align 8
  %b.need.grow445 = icmp slt i64 %b.cap444, %sum438
  br i1 %b.need.grow445, label %b.grow2446, label %b.nogrow2447

str_overflow_abort441:                            ; preds = %br.done.133
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead442:                                    ; No predecessors!
  br label %b.rn.new.len440

b.grow2446:                                       ; preds = %b.rn.new.len440
  %b.cap2449 = mul i64 %b.cap444, 2
  %b.cap.small450 = icmp slt i64 %b.cap2449, 16
  %b.cap.grow451 = select i1 %b.cap.small450, i64 16, i64 %b.cap2449
  %b.cap.need452 = icmp slt i64 %b.cap.grow451, %sum438
  %b.new.cap453 = select i1 %b.cap.need452, i64 %sum438, i64 %b.cap.grow451
  %b.cur.len2454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 0
  %b.cur.len2455 = load i64, ptr %b.cur.len2454, align 8
  %b.cur.data2456 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 1
  %b.cur.data2457 = load ptr, ptr %b.cur.data2456, align 8
  %b.new.buf.len2458 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap453, i64 1)
  %sum459 = extractvalue { i64, i1 } %b.new.buf.len2458, 0
  %ovf460 = extractvalue { i64, i1 } %b.new.buf.len2458, 1
  br i1 %ovf460, label %str_overflow_abort462, label %b.new.buf.len2461

b.nogrow2447:                                     ; preds = %b.rn.new.len440
  br label %b.grow_done448

b.grow_done448:                                   ; preds = %b.nogrow2447, %b.new.buf.len2461
  %b.rn.data469 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 1
  %b.rn.data470 = load ptr, ptr %b.rn.data469, align 8
  %b.rn.dst471 = getelementptr i8, ptr %b.rn.data470, i64 %b.rn.cur.len436
  br i1 %br.cmp1429, label %br.b1.134, label %br.c2.134

b.new.buf.len2461:                                ; preds = %abort.dead463, %b.grow2446
  %arena.cur464 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2465 = call ptr @dva_arena_alloc(ptr %arena.cur464, i64 %sum459)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2465, ptr align 1 %b.cur.data2457, i64 %b.cur.len2455, i1 false)
  %b.grow2.nul466 = getelementptr i8, ptr %b.new.buf2465, i64 %b.cur.len2455
  store i8 0, ptr %b.grow2.nul466, align 1
  %b.new.data2.gep467 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 1
  store ptr %b.new.buf2465, ptr %b.new.data2.gep467, align 8
  %b.new.cap2.gep468 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 2
  store i64 %b.new.cap453, ptr %b.new.cap2.gep468, align 8
  br label %b.grow_done448

str_overflow_abort462:                            ; preds = %b.grow2446
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead463:                                    ; No predecessors!
  br label %b.new.buf.len2461

br.b1.134:                                        ; preds = %b.grow_done448
  %br.b1.0472 = trunc i64 %coerce.sext428 to i8
  store i8 %br.b1.0472, ptr %b.rn.dst471, align 1
  br label %br.done.134

br.c2.134:                                        ; preds = %b.grow_done448
  br i1 %br.cmp2430, label %br.b2.134, label %br.c3.134

br.b2.134:                                        ; preds = %br.c2.134
  %br.sh6473 = lshr i64 %coerce.sext428, 6
  %br.b2.0474 = or i64 %br.sh6473, 192
  %br.b2.0t475 = trunc i64 %br.b2.0474 to i8
  %br.m6476 = and i64 %coerce.sext428, 63
  %br.b2.1477 = or i64 %br.m6476, 128
  %br.b2.1t478 = trunc i64 %br.b2.1477 to i8
  store i8 %br.b2.0t475, ptr %b.rn.dst471, align 1
  %br.dst1479 = getelementptr i8, ptr %b.rn.dst471, i64 1
  store i8 %br.b2.1t478, ptr %br.dst1479, align 1
  br label %br.done.134

br.c3.134:                                        ; preds = %br.c2.134
  br i1 %br.cmp3431, label %br.b3.134, label %br.b4.134

br.b3.134:                                        ; preds = %br.c3.134
  %br.sh12480 = lshr i64 %coerce.sext428, 12
  %br.b3.0481 = or i64 %br.sh12480, 224
  %br.b3.0t482 = trunc i64 %br.b3.0481 to i8
  %br.sh6.3483 = lshr i64 %coerce.sext428, 6
  %br.m6.3484 = and i64 %br.sh6.3483, 63
  %br.b3.1485 = or i64 %br.m6.3484, 128
  %br.b3.1t486 = trunc i64 %br.b3.1485 to i8
  %br.mend487 = and i64 %coerce.sext428, 63
  %br.b3.2488 = or i64 %br.mend487, 128
  %br.b3.2t489 = trunc i64 %br.b3.2488 to i8
  store i8 %br.b3.0t482, ptr %b.rn.dst471, align 1
  %br.dst1.3490 = getelementptr i8, ptr %b.rn.dst471, i64 1
  store i8 %br.b3.1t486, ptr %br.dst1.3490, align 1
  %br.dst2.3491 = getelementptr i8, ptr %b.rn.dst471, i64 2
  store i8 %br.b3.2t489, ptr %br.dst2.3491, align 1
  br label %br.done.134

br.b4.134:                                        ; preds = %br.c3.134
  %br.sh18492 = lshr i64 %coerce.sext428, 18
  %br.b4.0493 = or i64 %br.sh18492, 240
  %br.b4.0t494 = trunc i64 %br.b4.0493 to i8
  %br.sh12.4495 = lshr i64 %coerce.sext428, 12
  %br.m12.4496 = and i64 %br.sh12.4495, 63
  %br.b4.1497 = or i64 %br.m12.4496, 128
  %br.b4.1t498 = trunc i64 %br.b4.1497 to i8
  %br.sh6.4499 = lshr i64 %coerce.sext428, 6
  %br.m6.4500 = and i64 %br.sh6.4499, 63
  %br.b4.2501 = or i64 %br.m6.4500, 128
  %br.b4.2t502 = trunc i64 %br.b4.2501 to i8
  %br.mend4503 = and i64 %coerce.sext428, 63
  %br.b4.3504 = or i64 %br.mend4503, 128
  %br.b4.3t505 = trunc i64 %br.b4.3504 to i8
  store i8 %br.b4.0t494, ptr %b.rn.dst471, align 1
  %br.dst1.4506 = getelementptr i8, ptr %b.rn.dst471, i64 1
  store i8 %br.b4.1t498, ptr %br.dst1.4506, align 1
  %br.dst2.4507 = getelementptr i8, ptr %b.rn.dst471, i64 2
  store i8 %br.b4.2t502, ptr %br.dst2.4507, align 1
  %br.dst3.4508 = getelementptr i8, ptr %b.rn.dst471, i64 3
  store i8 %br.b4.3t505, ptr %br.dst3.4508, align 1
  br label %br.done.134

br.done.134:                                      ; preds = %br.b4.134, %br.b3.134, %br.b2.134, %br.b1.134
  %br.nul509 = getelementptr i8, ptr %b.rn.data470, i64 %sum438
  store i8 0, ptr %br.nul509, align 1
  %b.len.gep510 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load425, i32 0, i32 0
  store i64 %sum438, ptr %b.len.gep510, align 8
  br label %choice.exit

b.byte_ok:                                        ; preds = %abort.dead513, %choice.next334
  %b.byte.i8 = trunc i64 %var.load512 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load511, i32 0, i32 0
  %b.len514 = load i64, ptr %b.len, align 8
  %b.cap515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load511, i32 0, i32 2
  %b.cap516 = load i64, ptr %b.cap515, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load511, i32 0, i32 1
  %b.data517 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len514, %b.cap516
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.next334
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead513:                                    ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2518 = mul i64 %b.cap516, 2
  %b.cap.small519 = icmp slt i64 %b.cap2518, 16
  %b.new.cap520 = select i1 %b.cap.small519, i64 16, i64 %b.cap2518
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap520, i64 1)
  %sum521 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf522 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf522, label %str_overflow_abort524, label %b.new.buf.len523

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len523
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load511, i32 0, i32 1
  %b.cur.data527 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load511, i32 0, i32 0
  %b.cur.len528 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data527, i64 %b.cur.len528
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len528, 1
  %b.nul = getelementptr i8, ptr %b.cur.data527, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep529 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load511, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep529, align 8
  br label %choice.exit

b.new.buf.len523:                                 ; preds = %abort.dead525, %b.grow
  %arena.cur526 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur526, i64 %sum521)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data517, i64 %b.len514, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len514
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load511, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load511, i32 0, i32 2
  store i64 %b.new.cap520, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort524:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead525:                                    ; No predecessors!
  br label %b.new.buf.len523

b.rn.new.len536:                                  ; preds = %abort.dead538, %loop.exit.132
  %b.cap539 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 2
  %b.cap540 = load i64, ptr %b.cap539, align 8
  %b.need.grow541 = icmp slt i64 %b.cap540, %sum534
  br i1 %b.need.grow541, label %b.grow2542, label %b.nogrow2543

str_overflow_abort537:                            ; preds = %loop.exit.132
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead538:                                    ; No predecessors!
  br label %b.rn.new.len536

b.grow2542:                                       ; preds = %b.rn.new.len536
  %b.cap2545 = mul i64 %b.cap540, 2
  %b.cap.small546 = icmp slt i64 %b.cap2545, 16
  %b.cap.grow547 = select i1 %b.cap.small546, i64 16, i64 %b.cap2545
  %b.cap.need548 = icmp slt i64 %b.cap.grow547, %sum534
  %b.new.cap549 = select i1 %b.cap.need548, i64 %sum534, i64 %b.cap.grow547
  %b.cur.len2550 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 0
  %b.cur.len2551 = load i64, ptr %b.cur.len2550, align 8
  %b.cur.data2552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 1
  %b.cur.data2553 = load ptr, ptr %b.cur.data2552, align 8
  %b.new.buf.len2554 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap549, i64 1)
  %sum555 = extractvalue { i64, i1 } %b.new.buf.len2554, 0
  %ovf556 = extractvalue { i64, i1 } %b.new.buf.len2554, 1
  br i1 %ovf556, label %str_overflow_abort558, label %b.new.buf.len2557

b.nogrow2543:                                     ; preds = %b.rn.new.len536
  br label %b.grow_done544

b.grow_done544:                                   ; preds = %b.nogrow2543, %b.new.buf.len2557
  %b.rn.data565 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 1
  %b.rn.data566 = load ptr, ptr %b.rn.data565, align 8
  %b.rn.dst567 = getelementptr i8, ptr %b.rn.data566, i64 %b.rn.cur.len532
  br i1 true, label %br.b1.135, label %br.c2.135

b.new.buf.len2557:                                ; preds = %abort.dead559, %b.grow2542
  %arena.cur560 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2561 = call ptr @dva_arena_alloc(ptr %arena.cur560, i64 %sum555)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2561, ptr align 1 %b.cur.data2553, i64 %b.cur.len2551, i1 false)
  %b.grow2.nul562 = getelementptr i8, ptr %b.new.buf2561, i64 %b.cur.len2551
  store i8 0, ptr %b.grow2.nul562, align 1
  %b.new.data2.gep563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 1
  store ptr %b.new.buf2561, ptr %b.new.data2.gep563, align 8
  %b.new.cap2.gep564 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 2
  store i64 %b.new.cap549, ptr %b.new.cap2.gep564, align 8
  br label %b.grow_done544

str_overflow_abort558:                            ; preds = %b.grow2542
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead559:                                    ; No predecessors!
  br label %b.new.buf.len2557

br.b1.135:                                        ; preds = %b.grow_done544
  store i8 34, ptr %b.rn.dst567, align 1
  br label %br.done.135

br.c2.135:                                        ; preds = %b.grow_done544
  br i1 true, label %br.b2.135, label %br.c3.135

br.b2.135:                                        ; preds = %br.c2.135
  store i8 -64, ptr %b.rn.dst567, align 1
  %br.dst1568 = getelementptr i8, ptr %b.rn.dst567, i64 1
  store i8 -94, ptr %br.dst1568, align 1
  br label %br.done.135

br.c3.135:                                        ; preds = %br.c2.135
  br i1 true, label %br.b3.135, label %br.b4.135

br.b3.135:                                        ; preds = %br.c3.135
  store i8 -32, ptr %b.rn.dst567, align 1
  %br.dst1.3569 = getelementptr i8, ptr %b.rn.dst567, i64 1
  store i8 -128, ptr %br.dst1.3569, align 1
  %br.dst2.3570 = getelementptr i8, ptr %b.rn.dst567, i64 2
  store i8 -94, ptr %br.dst2.3570, align 1
  br label %br.done.135

br.b4.135:                                        ; preds = %br.c3.135
  store i8 -16, ptr %b.rn.dst567, align 1
  %br.dst1.4571 = getelementptr i8, ptr %b.rn.dst567, i64 1
  store i8 -128, ptr %br.dst1.4571, align 1
  %br.dst2.4572 = getelementptr i8, ptr %b.rn.dst567, i64 2
  store i8 -128, ptr %br.dst2.4572, align 1
  %br.dst3.4573 = getelementptr i8, ptr %b.rn.dst567, i64 3
  store i8 -94, ptr %br.dst3.4573, align 1
  br label %br.done.135

br.done.135:                                      ; preds = %br.b4.135, %br.b3.135, %br.b2.135, %br.b1.135
  %br.nul574 = getelementptr i8, ptr %b.rn.data566, i64 %sum534
  store i8 0, ptr %br.nul574, align 1
  %b.len.gep575 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 0
  store i64 %sum534, ptr %b.len.gep575, align 8
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
  %idx.neg = icmp slt i64 %var.load11, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load11, %s.read.len9
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load12 = load i64, ptr %var.c, align 8
  %val.match = icmp eq i64 %var.load12, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
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
  %idx.neg = icmp slt i64 %var.load12, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load12, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ch, align 8
  %var.load13 = load i64, ptr %var.ch, align 8
  %val.match = icmp eq i64 %var.load13, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
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
  %idx.neg = icmp slt i64 %addtmp15, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.166.else:                                     ; preds = %or.165.else
  br label %and.166.exit

and.166.exit:                                     ; preds = %and.166.else, %choice.exit16
  %and.166.phi = phi i1 [ %choice.res21, %choice.exit16 ], [ %cmptmp7, %and.166.else ]
  br label %or.165.exit

idx_big_check:                                    ; preds = %and.166.then
  %idx.big = icmp sge i64 %addtmp15, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %addtmp15
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp sge i64 %s.byte.val, 48
  br i1 %cmptmp19, label %and.167.then, label %and.167.else

idx_oob:                                          ; preds = %idx_big_check, %and.166.then
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

loop.latch.168:                                   ; preds = %choice.exit64
  %step.val = load i64, ptr %loop.step.168, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.168, align 8
  br label %loop.header.168

loop.exit.168:                                    ; preds = %choice.else, %choice.then29, %loop.exit.nat.168
  %var.load67 = load ptr, ptr %var.cur, align 8
  %var.load68 = load i64, ptr %"var.k'", align 8
  %fld.gep69 = getelementptr inbounds { ptr, i64 }, ptr %var.load67, i32 0, i32 1
  store i64 %var.load68, ptr %fld.gep69, align 8
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
  %idx.neg40 = icmp slt i64 %var.load39, 0
  br i1 %idx.neg40, label %idx_oob43, label %idx_big_check41

idx_big_check41:                                  ; preds = %choice.exit30
  %idx.big44 = icmp sge i64 %var.load39, %s.read.len36
  br i1 %idx.big44, label %idx_oob43, label %idx_ok42

idx_ok42:                                         ; preds = %abort.dead45, %idx_big_check41
  %s.byte.gep46 = getelementptr i8, ptr %s.read.data38, i64 %var.load39
  %s.byte47 = load i8, ptr %s.byte.gep46, align 1
  %s.byte.val48 = zext i8 %s.byte47 to i64
  %cmptmp52 = icmp sge i64 %s.byte.val48, 48
  br i1 %cmptmp52, label %and.169.then, label %and.169.else

idx_oob43:                                        ; preds = %idx_big_check41, %choice.exit30
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %idx_ok42

choice.exit49:                                    ; preds = %choice.next51, %choice.case50
  %choice.res62 = phi i1 [ true, %choice.case50 ], [ false, %choice.next51 ]
  br i1 %choice.res62, label %choice.then63, label %choice.else

choice.case50:                                    ; preds = %and.169.exit
  br label %choice.exit49

choice.next51:                                    ; preds = %and.169.exit
  br label %choice.exit49

and.169.then:                                     ; preds = %idx_ok42
  %cmptmp53 = icmp sle i64 %s.byte.val48, 57
  br label %and.169.exit

and.169.else:                                     ; preds = %idx_ok42
  br label %and.169.exit

and.169.exit:                                     ; preds = %and.169.else, %and.169.then
  %and.169.phi = phi i1 [ %cmptmp53, %and.169.then ], [ %cmptmp52, %and.169.else ]
  %val.match = icmp eq i64 %s.byte.val48, 43
  %case.or = or i1 %and.169.phi, %val.match
  %val.match54 = icmp eq i64 %s.byte.val48, 45
  %case.or55 = or i1 %case.or, %val.match54
  %val.match56 = icmp eq i64 %s.byte.val48, 46
  %case.or57 = or i1 %case.or55, %val.match56
  %val.match58 = icmp eq i64 %s.byte.val48, 101
  %case.or59 = or i1 %case.or57, %val.match58
  %val.match60 = icmp eq i64 %s.byte.val48, 69
  %case.or61 = or i1 %case.or59, %val.match60
  br i1 %case.or61, label %choice.case50, label %choice.next51

choice.then63:                                    ; preds = %choice.exit49
  %var.load65 = load i64, ptr %"var.k'", align 8
  %addtmp66 = add i64 %var.load65, 1
  store i64 %addtmp66, ptr %"var.k'", align 8
  br label %choice.exit64

choice.else:                                      ; preds = %choice.exit49
  br label %loop.exit.168

choice.exit64:                                    ; preds = %choice.then63
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
  %idx.neg = icmp slt i64 %var.load14, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load14, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then15, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
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

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %var.load11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %idx_big_check, %choice.then
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
  %idx.neg = icmp slt i64 %var.load13, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.171.else:                                     ; preds = %str_ok
  br label %and.171.exit

and.171.exit:                                     ; preds = %and.171.else, %idx_ok
  %and.171.phi = phi i1 [ %cmptmp15, %idx_ok ], [ %cmptmp, %and.171.else ]
  br i1 %and.171.phi, label %and.172.then, label %and.172.else

idx_big_check:                                    ; preds = %and.171.then
  %idx.big = icmp sge i64 %var.load13, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load14 = load i64, ptr %var.ch, align 8
  %cmptmp15 = icmp eq i64 %s.byte.val, %var.load14
  br label %and.171.exit

idx_oob:                                          ; preds = %idx_big_check, %and.171.then
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
  %idx.neg44 = icmp slt i64 %var.load43, 0
  br i1 %idx.neg44, label %idx_oob47, label %idx_big_check45

and.173.else:                                     ; preds = %str_ok28
  br label %and.173.exit

and.173.exit:                                     ; preds = %and.173.else, %idx_ok46
  %and.173.phi = phi i1 [ %cmptmp54, %idx_ok46 ], [ %cmptmp34, %and.173.else ]
  br i1 %and.173.phi, label %choice.then55, label %choice.else56

idx_big_check45:                                  ; preds = %and.173.then
  %idx.big48 = icmp sge i64 %var.load43, %s.read.len40
  br i1 %idx.big48, label %idx_oob47, label %idx_ok46

idx_ok46:                                         ; preds = %abort.dead49, %idx_big_check45
  %s.byte.gep50 = getelementptr i8, ptr %s.read.data42, i64 %var.load43
  %s.byte51 = load i8, ptr %s.byte.gep50, align 1
  %s.byte.val52 = zext i8 %s.byte51 to i64
  %var.load53 = load i64, ptr %var.ch, align 8
  %cmptmp54 = icmp eq i64 %s.byte.val52, %var.load53
  br label %and.173.exit

idx_oob47:                                        ; preds = %idx_big_check45, %and.173.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %idx_ok46

choice.then55:                                    ; preds = %and.173.exit
  %var.load58 = load ptr, ptr %var.cur, align 8
  %var.load59 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load59, 1
  %fld.gep60 = getelementptr inbounds { ptr, i64 }, ptr %var.load58, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep60, align 8
  br label %choice.exit57

choice.else56:                                    ; preds = %and.173.exit
  br label %choice.exit57

choice.exit57:                                    ; preds = %choice.else56, %choice.then55
  %choice.res61 = phi i1 [ true, %choice.then55 ], [ false, %choice.else56 ]
  ret i1 %choice.res61
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
  %idx.neg = icmp slt i64 %var.load14, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.174.else:                                     ; preds = %str_ok
  br label %and.174.exit

and.174.exit:                                     ; preds = %and.174.else, %idx_ok
  %and.174.phi = phi i1 [ %cmptmp15, %idx_ok ], [ %cmptmp, %and.174.else ]
  br i1 %and.174.phi, label %choice.then, label %choice.else

idx_big_check:                                    ; preds = %and.174.then
  %idx.big = icmp sge i64 %var.load14, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp15 = icmp eq i64 %s.byte.val, 34
  br label %and.174.exit

idx_oob:                                          ; preds = %idx_big_check, %and.174.then
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
  %idx.neg30 = icmp slt i64 %var.load29, 0
  br i1 %idx.neg30, label %idx_oob33, label %idx_big_check31

or.175.exit:                                      ; preds = %idx_ok32, %or.175.then
  %or.175.phi = phi i1 [ %cmptmp20, %or.175.then ], [ %cmptmp39, %idx_ok32 ]
  br i1 %or.175.phi, label %choice.then40, label %choice.exit41

idx_big_check31:                                  ; preds = %or.175.else
  %idx.big34 = icmp sge i64 %var.load29, %s.read.len26
  br i1 %idx.big34, label %idx_oob33, label %idx_ok32

idx_ok32:                                         ; preds = %abort.dead35, %idx_big_check31
  %s.byte.gep36 = getelementptr i8, ptr %s.read.data28, i64 %var.load29
  %s.byte37 = load i8, ptr %s.byte.gep36, align 1
  %s.byte.val38 = zext i8 %s.byte37 to i64
  %cmptmp39 = icmp ne i64 %s.byte.val38, 34
  br label %or.175.exit

idx_oob33:                                        ; preds = %idx_big_check31, %or.175.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %idx_ok32

choice.then40:                                    ; preds = %or.175.exit
  ret { i64, ptr } zeroinitializer

choice.exit41:                                    ; preds = %ret.dead, %or.175.exit
  %var.load42 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load42, 1
  store i64 %addtmp, ptr %var.start, align 8
  %var.load43 = load ptr, ptr %var.cur, align 8
  %fld.gep44 = getelementptr inbounds { ptr, i64 }, ptr %var.load43, i32 0, i32 0
  %fld.load45 = load ptr, ptr %fld.gep44, align 8
  %var.load46 = load i64, ptr %var.start, align 8
  %call.res47 = call i64 @"json::#scan_plain_ascii_end"(ptr %fld.load45, i64 %var.load46)
  store i64 %call.res47, ptr %var.plain_end, align 8
  %var.load48 = load i64, ptr %var.plain_end, align 8
  %var.load49 = load i64, ptr %var.n, align 8
  %cmptmp50 = icmp slt i64 %var.load48, %var.load49
  br i1 %cmptmp50, label %and.176.then, label %and.176.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit41

and.176.then:                                     ; preds = %choice.exit41
  %var.load51 = load ptr, ptr %var.cur, align 8
  %fld.gep52 = getelementptr inbounds { ptr, i64 }, ptr %var.load51, i32 0, i32 0
  %fld.load53 = load ptr, ptr %fld.gep52, align 8
  %s.read.len54 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 0
  %s.read.len55 = load i64, ptr %s.read.len54, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %s.read.data57 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 1
  %s.read.data58 = load ptr, ptr %s.read.data57, align 8
  %var.load59 = load i64, ptr %var.plain_end, align 8
  %idx.neg60 = icmp slt i64 %var.load59, 0
  br i1 %idx.neg60, label %idx_oob63, label %idx_big_check61

and.176.else:                                     ; preds = %choice.exit41
  br label %and.176.exit

and.176.exit:                                     ; preds = %and.176.else, %idx_ok62
  %and.176.phi = phi i1 [ %cmptmp69, %idx_ok62 ], [ %cmptmp50, %and.176.else ]
  br i1 %and.176.phi, label %choice.then70, label %choice.exit71

idx_big_check61:                                  ; preds = %and.176.then
  %idx.big64 = icmp sge i64 %var.load59, %s.read.len56
  br i1 %idx.big64, label %idx_oob63, label %idx_ok62

idx_ok62:                                         ; preds = %abort.dead65, %idx_big_check61
  %s.byte.gep66 = getelementptr i8, ptr %s.read.data58, i64 %var.load59
  %s.byte67 = load i8, ptr %s.byte.gep66, align 1
  %s.byte.val68 = zext i8 %s.byte67 to i64
  %cmptmp69 = icmp eq i64 %s.byte.val68, 34
  br label %and.176.exit

idx_oob63:                                        ; preds = %idx_big_check61, %and.176.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %idx_ok62

choice.then70:                                    ; preds = %and.176.exit
  %var.load72 = load ptr, ptr %var.cur, align 8
  %var.load73 = load i64, ptr %var.plain_end, align 8
  %addtmp74 = add i64 %var.load73, 1
  %fld.gep75 = getelementptr inbounds { ptr, i64 }, ptr %var.load72, i32 0, i32 1
  store i64 %addtmp74, ptr %fld.gep75, align 8
  %var.load76 = load ptr, ptr %var.cur, align 8
  %fld.gep77 = getelementptr inbounds { ptr, i64 }, ptr %var.load76, i32 0, i32 0
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %s.read.len79 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 0
  %s.read.len80 = load i64, ptr %s.read.len79, align 8
  %s.read.len81 = and i64 %s.read.len80, 281474976710655
  %s.read.data82 = getelementptr inbounds { i64, ptr }, ptr %fld.load78, i32 0, i32 1
  %s.read.data83 = load ptr, ptr %s.read.data82, align 8
  %var.load84 = load i64, ptr %var.start, align 8
  %var.load85 = load i64, ptr %var.plain_end, align 8
  %start.is_neg = icmp slt i64 %var.load84, 0
  %rel.start = add i64 %s.read.len81, %var.load84
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load84
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len81
  %final.start = select i1 %start.gt.len, i64 %s.read.len81, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load85, 0
  %rel.end = add i64 %s.read.len81, %var.load85
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load85
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len81
  %final.end = select i1 %end.gt.len, i64 %s.read.len81, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data83, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.niche.nn = icmp ne ptr %str.view, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.exit71:                                    ; preds = %ret.dead86, %and.176.exit
  %var.load87 = load ptr, ptr %var.cur, align 8
  %var.load88 = load i64, ptr %var.start, align 8
  %var.load89 = load i64, ptr %var.plain_end, align 8
  %call.res90 = call { i64, ptr } @"json::#cursor_read_str_escaped"(ptr %var.load87, i64 %var.load88, i64 %var.load89)
  %ret.niche.data = extractvalue { i64, ptr } %call.res90, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.load:                                   ; preds = %choice.then70
  %ret.niche.val = load { i64, ptr }, ptr %str.view, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.then70
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.then70 ]
  ret { i64, ptr } %ret.niche.pack

ret.dead86:                                       ; No predecessors!
  br label %choice.exit71

ret.niche.alloc:                                  ; preds = %choice.exit71
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 16)
  store { i64, ptr } %call.res90, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit71
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit71 ]
  %ret.niche.nn92 = icmp ne ptr %ret.niche.ptr, null
  br i1 %ret.niche.nn92, label %ret.niche.load93, label %ret.niche.merge94

ret.niche.load93:                                 ; preds = %ret.niche.done
  %ret.niche.val95 = load { i64, ptr }, ptr %ret.niche.ptr, align 8
  br label %ret.niche.merge94

ret.niche.merge94:                                ; preds = %ret.niche.load93, %ret.niche.done
  %ret.niche.pack96 = phi { i64, ptr } [ %ret.niche.val95, %ret.niche.load93 ], [ zeroinitializer, %ret.niche.done ]
  ret { i64, ptr } %ret.niche.pack96
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

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %var.load14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 34
  %val.match15 = icmp eq i64 %s.byte.val, 44
  %case.or = or i1 %val.match, %val.match15
  %val.match16 = icmp eq i64 %s.byte.val, 125
  %case.or17 = or i1 %case.or, %val.match16
  br i1 %case.or17, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %and.177.then
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
  %idx.neg36 = icmp slt i64 %var.load35, 0
  br i1 %idx.neg36, label %idx_oob39, label %idx_big_check37

ret.dead:                                         ; No predecessors!
  br label %choice.exit26

idx_big_check37:                                  ; preds = %choice.exit26
  %idx.big40 = icmp sge i64 %var.load35, %s.read.len32
  br i1 %idx.big40, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead41, %idx_big_check37
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data34, i64 %var.load35
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  store i64 %s.byte.val44, ptr %var.c, align 8
  %var.load45 = load i64, ptr %var.c, align 8
  %val.match49 = icmp eq i64 %var.load45, 125
  br i1 %val.match49, label %choice.case47, label %choice.next48

idx_oob39:                                        ; preds = %idx_big_check37, %choice.exit26
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %idx_ok38

choice.exit46:                                    ; preds = %choice.next48, %ret.dead53
  %var.load54 = load i64, ptr %var.c, align 8
  %val.match58 = icmp eq i64 %var.load54, 44
  br i1 %val.match58, label %choice.case56, label %choice.next57

choice.case47:                                    ; preds = %idx_ok38
  %var.load50 = load ptr, ptr %var.cur, align 8
  %var.load51 = load i64, ptr %var.p, align 8
  %addtmp = add i64 %var.load51, 1
  %fld.gep52 = getelementptr inbounds { ptr, i64 }, ptr %var.load50, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep52, align 8
  ret { i64, ptr } zeroinitializer

choice.next48:                                    ; preds = %idx_ok38
  br label %choice.exit46

ret.dead53:                                       ; No predecessors!
  br label %choice.exit46

choice.exit55:                                    ; preds = %choice.next57, %choice.exit118
  %var.load120 = load ptr, ptr %var.cur, align 8
  %call.res121 = call { i64, ptr } @"json::cursor_read_str"(ptr %var.load120)
  %ret.niche.data = extractvalue { i64, ptr } %call.res121, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

choice.case56:                                    ; preds = %choice.exit46
  %var.load59 = load ptr, ptr %var.cur, align 8
  %var.load60 = load i64, ptr %var.p, align 8
  %addtmp61 = add i64 %var.load60, 1
  %fld.gep62 = getelementptr inbounds { ptr, i64 }, ptr %var.load59, i32 0, i32 1
  store i64 %addtmp61, ptr %fld.gep62, align 8
  %var.load63 = load ptr, ptr %var.cur, align 8
  %fld.gep64 = getelementptr inbounds { ptr, i64 }, ptr %var.load63, i32 0, i32 1
  %fld.load65 = load i64, ptr %fld.gep64, align 8
  store i64 %fld.load65, ptr %var.at2, align 8
  %var.load66 = load i64, ptr %var.at2, align 8
  %var.load67 = load i64, ptr %var.n, align 8
  %cmptmp68 = icmp slt i64 %var.load66, %var.load67
  br i1 %cmptmp68, label %and.178.then, label %and.178.else

choice.next57:                                    ; preds = %choice.exit46
  br label %choice.exit55

and.178.then:                                     ; preds = %choice.case56
  %var.load69 = load ptr, ptr %var.cur, align 8
  %fld.gep70 = getelementptr inbounds { ptr, i64 }, ptr %var.load69, i32 0, i32 0
  %fld.load71 = load ptr, ptr %fld.gep70, align 8
  %s.read.len72 = getelementptr inbounds { i64, ptr }, ptr %fld.load71, i32 0, i32 0
  %s.read.len73 = load i64, ptr %s.read.len72, align 8
  %s.read.len74 = and i64 %s.read.len73, 281474976710655
  %s.read.data75 = getelementptr inbounds { i64, ptr }, ptr %fld.load71, i32 0, i32 1
  %s.read.data76 = load ptr, ptr %s.read.data75, align 8
  %var.load77 = load i64, ptr %var.at2, align 8
  %idx.neg78 = icmp slt i64 %var.load77, 0
  br i1 %idx.neg78, label %idx_oob81, label %idx_big_check79

and.178.else:                                     ; preds = %choice.case56
  br label %and.178.exit

and.178.exit:                                     ; preds = %and.178.else, %idx_ok80
  %and.178.phi = phi i1 [ %cmptmp87, %idx_ok80 ], [ %cmptmp68, %and.178.else ]
  br i1 %and.178.phi, label %choice.then88, label %choice.else89

idx_big_check79:                                  ; preds = %and.178.then
  %idx.big82 = icmp sge i64 %var.load77, %s.read.len74
  br i1 %idx.big82, label %idx_oob81, label %idx_ok80

idx_ok80:                                         ; preds = %abort.dead83, %idx_big_check79
  %s.byte.gep84 = getelementptr i8, ptr %s.read.data76, i64 %var.load77
  %s.byte85 = load i8, ptr %s.byte.gep84, align 1
  %s.byte.val86 = zext i8 %s.byte85 to i64
  %cmptmp87 = icmp eq i64 %s.byte.val86, 34
  br label %and.178.exit

idx_oob81:                                        ; preds = %idx_big_check79, %and.178.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead83:                                     ; No predecessors!
  br label %idx_ok80

choice.then88:                                    ; preds = %and.178.exit
  %var.load91 = load i64, ptr %var.at2, align 8
  br label %choice.exit90

choice.else89:                                    ; preds = %and.178.exit
  %var.load92 = load ptr, ptr %var.cur, align 8
  %call.res93 = call i64 @"json::cursor_skip_ws"(ptr %var.load92)
  br label %choice.exit90

choice.exit90:                                    ; preds = %choice.else89, %choice.then88
  %choice.res94 = phi i64 [ %var.load91, %choice.then88 ], [ %call.res93, %choice.else89 ]
  store i64 %choice.res94, ptr %var.p2, align 8
  %var.load95 = load i64, ptr %var.p2, align 8
  %var.load96 = load i64, ptr %var.n, align 8
  %cmptmp97 = icmp sge i64 %var.load95, %var.load96
  br i1 %cmptmp97, label %or.179.then, label %or.179.else

or.179.then:                                      ; preds = %choice.exit90
  br label %or.179.exit

or.179.else:                                      ; preds = %choice.exit90
  %var.load98 = load ptr, ptr %var.cur, align 8
  %fld.gep99 = getelementptr inbounds { ptr, i64 }, ptr %var.load98, i32 0, i32 0
  %fld.load100 = load ptr, ptr %fld.gep99, align 8
  %s.read.len101 = getelementptr inbounds { i64, ptr }, ptr %fld.load100, i32 0, i32 0
  %s.read.len102 = load i64, ptr %s.read.len101, align 8
  %s.read.len103 = and i64 %s.read.len102, 281474976710655
  %s.read.data104 = getelementptr inbounds { i64, ptr }, ptr %fld.load100, i32 0, i32 1
  %s.read.data105 = load ptr, ptr %s.read.data104, align 8
  %var.load106 = load i64, ptr %var.p2, align 8
  %idx.neg107 = icmp slt i64 %var.load106, 0
  br i1 %idx.neg107, label %idx_oob110, label %idx_big_check108

or.179.exit:                                      ; preds = %idx_ok109, %or.179.then
  %or.179.phi = phi i1 [ %cmptmp97, %or.179.then ], [ %cmptmp116, %idx_ok109 ]
  br i1 %or.179.phi, label %choice.then117, label %choice.exit118

idx_big_check108:                                 ; preds = %or.179.else
  %idx.big111 = icmp sge i64 %var.load106, %s.read.len103
  br i1 %idx.big111, label %idx_oob110, label %idx_ok109

idx_ok109:                                        ; preds = %abort.dead112, %idx_big_check108
  %s.byte.gep113 = getelementptr i8, ptr %s.read.data105, i64 %var.load106
  %s.byte114 = load i8, ptr %s.byte.gep113, align 1
  %s.byte.val115 = zext i8 %s.byte114 to i64
  %cmptmp116 = icmp eq i64 %s.byte.val115, 125
  br label %or.179.exit

idx_oob110:                                       ; preds = %idx_big_check108, %or.179.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead112:                                    ; No predecessors!
  br label %idx_ok109

choice.then117:                                   ; preds = %or.179.exit
  ret { i64, ptr } zeroinitializer

choice.exit118:                                   ; preds = %ret.dead119, %or.179.exit
  br label %choice.exit55

ret.dead119:                                      ; No predecessors!
  br label %choice.exit118

ret.niche.alloc:                                  ; preds = %choice.exit55
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res121, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.exit55
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.exit55 ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  br i1 %niche.ne.null, label %choice.then122, label %choice.else123

choice.then122:                                   ; preds = %ret.niche.done
  store ptr %ret.niche.ptr, ptr %var._, align 8
  store ptr %ret.niche.ptr, ptr %var.k, align 8
  %var.load125 = load ptr, ptr %var.cur, align 8
  %call.res126 = call i1 @"json::cursor_expect_byte"(ptr %var.load125, i64 58)
  br i1 %call.res126, label %choice.then127, label %choice.else128

choice.else123:                                   ; preds = %ret.niche.done
  br label %choice.exit124

choice.exit124:                                   ; preds = %choice.else123, %choice.exit129
  %choice.res132 = phi ptr [ %choice.res131, %choice.exit129 ], [ null, %choice.else123 ]
  %ret.niche.nn = icmp ne ptr %choice.res132, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.then127:                                   ; preds = %choice.then122
  %var.load130 = load ptr, ptr %var.k, align 8
  br label %choice.exit129

choice.else128:                                   ; preds = %choice.then122
  br label %choice.exit129

choice.exit129:                                   ; preds = %choice.else128, %choice.then127
  %choice.res131 = phi ptr [ %var.load130, %choice.then127 ], [ null, %choice.else128 ]
  br label %choice.exit124

ret.niche.load:                                   ; preds = %choice.exit124
  %ret.niche.val = load { i64, ptr }, ptr %choice.res132, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit124
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit124 ]
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
  %idx.neg = icmp slt i64 %var.load13, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load13, %s.read.len11
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 45
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
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
  %idx.neg31 = icmp slt i64 %var.load30, 0
  br i1 %idx.neg31, label %idx_oob34, label %idx_big_check32

ret.dead21:                                       ; No predecessors!
  br label %choice.exit20

idx_big_check32:                                  ; preds = %choice.exit20
  %idx.big35 = icmp sge i64 %var.load30, %s.read.len27
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %abort.dead36, %idx_big_check32
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  store i64 %s.byte.val39, ptr %var.c0, align 8
  %var.load40 = load i64, ptr %var.c0, align 8
  %cmptmp44 = icmp sge i64 %var.load40, 48
  br i1 %cmptmp44, label %and.180.then, label %and.180.else

idx_oob34:                                        ; preds = %idx_big_check32, %choice.exit20
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok33

choice.exit41:                                    ; preds = %choice.next43, %choice.case42
  %choice.res = phi i1 [ true, %choice.case42 ], [ false, %choice.next43 ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then46, label %choice.exit47

choice.case42:                                    ; preds = %and.180.exit
  br label %choice.exit41

choice.next43:                                    ; preds = %and.180.exit
  br label %choice.exit41

and.180.then:                                     ; preds = %idx_ok33
  %cmptmp45 = icmp sle i64 %var.load40, 57
  br label %and.180.exit

and.180.else:                                     ; preds = %idx_ok33
  br label %and.180.exit

and.180.exit:                                     ; preds = %and.180.else, %and.180.then
  %and.180.phi = phi i1 [ %cmptmp45, %and.180.then ], [ %cmptmp44, %and.180.else ]
  br i1 %and.180.phi, label %choice.case42, label %choice.next43

choice.then46:                                    ; preds = %choice.exit41
  ret { i1, i64 } zeroinitializer

choice.exit47:                                    ; preds = %ret.dead48, %choice.exit41
  %var.load49 = load i64, ptr %var.c0, align 8
  %val.match53 = icmp eq i64 %var.load49, 48
  br i1 %val.match53, label %choice.case51, label %choice.next52

ret.dead48:                                       ; No predecessors!
  br label %choice.exit47

choice.exit50:                                    ; preds = %choice.next52, %choice.case51
  %choice.res54 = phi i1 [ true, %choice.case51 ], [ false, %choice.next52 ]
  br i1 %choice.res54, label %and.181.then, label %and.181.else

choice.case51:                                    ; preds = %choice.exit47
  br label %choice.exit50

choice.next52:                                    ; preds = %choice.exit47
  br label %choice.exit50

and.181.then:                                     ; preds = %choice.exit50
  %var.load55 = load i64, ptr %"var.p'", align 8
  %addtmp56 = add i64 %var.load55, 1
  %var.load57 = load i64, ptr %var.n, align 8
  %cmptmp58 = icmp slt i64 %addtmp56, %var.load57
  br label %and.181.exit

and.181.else:                                     ; preds = %choice.exit50
  br label %and.181.exit

and.181.exit:                                     ; preds = %and.181.else, %and.181.then
  %and.181.phi = phi i1 [ %cmptmp58, %and.181.then ], [ %choice.res54, %and.181.else ]
  br i1 %and.181.phi, label %and.182.then, label %and.182.else

and.182.then:                                     ; preds = %and.181.exit
  %var.load59 = load ptr, ptr %var.cur, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i64 }, ptr %var.load59, i32 0, i32 0
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %s.read.len62 = getelementptr inbounds { i64, ptr }, ptr %fld.load61, i32 0, i32 0
  %s.read.len63 = load i64, ptr %s.read.len62, align 8
  %s.read.len64 = and i64 %s.read.len63, 281474976710655
  %s.read.data65 = getelementptr inbounds { i64, ptr }, ptr %fld.load61, i32 0, i32 1
  %s.read.data66 = load ptr, ptr %s.read.data65, align 8
  %var.load67 = load i64, ptr %"var.p'", align 8
  %addtmp68 = add i64 %var.load67, 1
  %idx.neg69 = icmp slt i64 %addtmp68, 0
  br i1 %idx.neg69, label %idx_oob72, label %idx_big_check70

and.182.else:                                     ; preds = %and.181.exit
  br label %and.182.exit

and.182.exit:                                     ; preds = %and.182.else, %idx_ok71
  %and.182.phi = phi i1 [ %call.res78, %idx_ok71 ], [ %and.181.phi, %and.182.else ]
  br i1 %and.182.phi, label %choice.then79, label %choice.exit80

idx_big_check70:                                  ; preds = %and.182.then
  %idx.big73 = icmp sge i64 %addtmp68, %s.read.len64
  br i1 %idx.big73, label %idx_oob72, label %idx_ok71

idx_ok71:                                         ; preds = %abort.dead74, %idx_big_check70
  %s.byte.gep75 = getelementptr i8, ptr %s.read.data66, i64 %addtmp68
  %s.byte76 = load i8, ptr %s.byte.gep75, align 1
  %s.byte.val77 = zext i8 %s.byte76 to i64
  %call.res78 = call i1 @"ascii::is_digit"(i64 %s.byte.val77)
  br label %and.182.exit

idx_oob72:                                        ; preds = %idx_big_check70, %and.182.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %idx_ok71

choice.then79:                                    ; preds = %and.182.exit
  ret { i1, i64 } zeroinitializer

choice.exit80:                                    ; preds = %ret.dead81, %and.182.exit
  store i64 0, ptr %"var.v'", align 8
  store i64 0, ptr %loop.idx.183, align 8
  br label %loop.header.183

ret.dead81:                                       ; No predecessors!
  br label %choice.exit80

loop.header.183:                                  ; preds = %loop.latch.183, %choice.exit80
  %counter.load = load i64, ptr %loop.idx.183, align 8
  br label %loop.body.183

loop.body.183:                                    ; preds = %loop.header.183
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.183, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load82 = load i64, ptr %"var.p'", align 8
  %var.load83 = load i64, ptr %var.n, align 8
  %cmptmp84 = icmp sge i64 %var.load82, %var.load83
  br i1 %cmptmp84, label %choice.then85, label %choice.exit86

loop.exit.nat.183:                                ; No predecessors!
  br label %loop.exit.183

loop.latch.183:                                   ; preds = %choice.exit113
  %step.val = load i64, ptr %loop.step.183, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.183, align 8
  br label %loop.header.183

loop.exit.183:                                    ; preds = %choice.else, %choice.then85, %loop.exit.nat.183
  %var.load119 = load i64, ptr %"var.p'", align 8
  %var.load120 = load i64, ptr %var.n, align 8
  %cmptmp121 = icmp slt i64 %var.load119, %var.load120
  br i1 %cmptmp121, label %and.185.then, label %and.185.else

choice.then85:                                    ; preds = %loop.body.183
  br label %loop.exit.183

choice.exit86:                                    ; preds = %loop.body.183
  %var.load87 = load ptr, ptr %var.cur, align 8
  %fld.gep88 = getelementptr inbounds { ptr, i64 }, ptr %var.load87, i32 0, i32 0
  %fld.load89 = load ptr, ptr %fld.gep88, align 8
  %s.read.len90 = getelementptr inbounds { i64, ptr }, ptr %fld.load89, i32 0, i32 0
  %s.read.len91 = load i64, ptr %s.read.len90, align 8
  %s.read.len92 = and i64 %s.read.len91, 281474976710655
  %s.read.data93 = getelementptr inbounds { i64, ptr }, ptr %fld.load89, i32 0, i32 1
  %s.read.data94 = load ptr, ptr %s.read.data93, align 8
  %var.load95 = load i64, ptr %"var.p'", align 8
  %idx.neg96 = icmp slt i64 %var.load95, 0
  br i1 %idx.neg96, label %idx_oob99, label %idx_big_check97

idx_big_check97:                                  ; preds = %choice.exit86
  %idx.big100 = icmp sge i64 %var.load95, %s.read.len92
  br i1 %idx.big100, label %idx_oob99, label %idx_ok98

idx_ok98:                                         ; preds = %abort.dead101, %idx_big_check97
  %s.byte.gep102 = getelementptr i8, ptr %s.read.data94, i64 %var.load95
  %s.byte103 = load i8, ptr %s.byte.gep102, align 1
  %s.byte.val104 = zext i8 %s.byte103 to i64
  store i64 %s.byte.val104, ptr %var.c, align 8
  %var.load105 = load i64, ptr %var.c, align 8
  %cmptmp109 = icmp sge i64 %var.load105, 48
  br i1 %cmptmp109, label %and.184.then, label %and.184.else

idx_oob99:                                        ; preds = %idx_big_check97, %choice.exit86
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %idx_ok98

choice.exit106:                                   ; preds = %choice.next108, %choice.case107
  %choice.res111 = phi i1 [ true, %choice.case107 ], [ false, %choice.next108 ]
  br i1 %choice.res111, label %choice.then112, label %choice.else

choice.case107:                                   ; preds = %and.184.exit
  br label %choice.exit106

choice.next108:                                   ; preds = %and.184.exit
  br label %choice.exit106

and.184.then:                                     ; preds = %idx_ok98
  %cmptmp110 = icmp sle i64 %var.load105, 57
  br label %and.184.exit

and.184.else:                                     ; preds = %idx_ok98
  br label %and.184.exit

and.184.exit:                                     ; preds = %and.184.else, %and.184.then
  %and.184.phi = phi i1 [ %cmptmp110, %and.184.then ], [ %cmptmp109, %and.184.else ]
  br i1 %and.184.phi, label %choice.case107, label %choice.next108

choice.then112:                                   ; preds = %choice.exit106
  %var.load114 = load i64, ptr %"var.v'", align 8
  %multmp = mul i64 %var.load114, 10
  %var.load115 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load115, 48
  %addtmp116 = add i64 %multmp, %subtmp
  store i64 %addtmp116, ptr %"var.v'", align 8
  %var.load117 = load i64, ptr %"var.p'", align 8
  %addtmp118 = add i64 %var.load117, 1
  store i64 %addtmp118, ptr %"var.p'", align 8
  br label %choice.exit113

choice.else:                                      ; preds = %choice.exit106
  br label %loop.exit.183

choice.exit113:                                   ; preds = %choice.then112
  br label %loop.latch.183

and.185.then:                                     ; preds = %loop.exit.183
  %var.load122 = load ptr, ptr %var.cur, align 8
  %fld.gep123 = getelementptr inbounds { ptr, i64 }, ptr %var.load122, i32 0, i32 0
  %fld.load124 = load ptr, ptr %fld.gep123, align 8
  %s.read.len125 = getelementptr inbounds { i64, ptr }, ptr %fld.load124, i32 0, i32 0
  %s.read.len126 = load i64, ptr %s.read.len125, align 8
  %s.read.len127 = and i64 %s.read.len126, 281474976710655
  %s.read.data128 = getelementptr inbounds { i64, ptr }, ptr %fld.load124, i32 0, i32 1
  %s.read.data129 = load ptr, ptr %s.read.data128, align 8
  %var.load130 = load i64, ptr %"var.p'", align 8
  %idx.neg131 = icmp slt i64 %var.load130, 0
  br i1 %idx.neg131, label %idx_oob134, label %idx_big_check132

and.185.else:                                     ; preds = %loop.exit.183
  br label %and.185.exit

and.185.exit:                                     ; preds = %and.185.else, %choice.exit140
  %and.185.phi = phi i1 [ %choice.res147, %choice.exit140 ], [ %cmptmp121, %and.185.else ]
  br i1 %and.185.phi, label %choice.then148, label %choice.exit149

idx_big_check132:                                 ; preds = %and.185.then
  %idx.big135 = icmp sge i64 %var.load130, %s.read.len127
  br i1 %idx.big135, label %idx_oob134, label %idx_ok133

idx_ok133:                                        ; preds = %abort.dead136, %idx_big_check132
  %s.byte.gep137 = getelementptr i8, ptr %s.read.data129, i64 %var.load130
  %s.byte138 = load i8, ptr %s.byte.gep137, align 1
  %s.byte.val139 = zext i8 %s.byte138 to i64
  %val.match143 = icmp eq i64 %s.byte.val139, 46
  %val.match144 = icmp eq i64 %s.byte.val139, 101
  %case.or = or i1 %val.match143, %val.match144
  %val.match145 = icmp eq i64 %s.byte.val139, 69
  %case.or146 = or i1 %case.or, %val.match145
  br i1 %case.or146, label %choice.case141, label %choice.next142

idx_oob134:                                       ; preds = %idx_big_check132, %and.185.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead136:                                    ; No predecessors!
  br label %idx_ok133

choice.exit140:                                   ; preds = %choice.next142, %choice.case141
  %choice.res147 = phi i1 [ true, %choice.case141 ], [ false, %choice.next142 ]
  br label %and.185.exit

choice.case141:                                   ; preds = %idx_ok133
  br label %choice.exit140

choice.next142:                                   ; preds = %idx_ok133
  br label %choice.exit140

choice.then148:                                   ; preds = %and.185.exit
  ret { i1, i64 } zeroinitializer

choice.exit149:                                   ; preds = %ret.dead150, %and.185.exit
  %var.load151 = load ptr, ptr %var.cur, align 8
  %var.load152 = load i64, ptr %"var.p'", align 8
  %fld.gep153 = getelementptr inbounds { ptr, i64 }, ptr %var.load151, i32 0, i32 1
  store i64 %var.load152, ptr %fld.gep153, align 8
  %var.load154 = load i1, ptr %"var.neg'", align 1
  br i1 %var.load154, label %choice.then155, label %choice.else156

ret.dead150:                                      ; No predecessors!
  br label %choice.exit149

choice.then155:                                   ; preds = %choice.exit149
  %var.load158 = load i64, ptr %"var.v'", align 8
  %subtmp159 = sub i64 0, %var.load158
  br label %choice.exit157

choice.else156:                                   ; preds = %choice.exit149
  %var.load160 = load i64, ptr %"var.v'", align 8
  br label %choice.exit157

choice.exit157:                                   ; preds = %choice.else156, %choice.then155
  %choice.res161 = phi i64 [ %subtmp159, %choice.then155 ], [ %var.load160, %choice.else156 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res161, 1
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
  %idx.neg = icmp slt i64 %var.load12, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 %var.load12, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.c0, align 8
  %var.load13 = load i64, ptr %var.c0, align 8
  %val.match = icmp eq i64 %var.load13, 34
  br i1 %val.match, label %choice.case, label %choice.next

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
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
