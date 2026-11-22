; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@"var.const::max_safe_int" = external global i64
@"var.const::max_f64" = external global double
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
@clo.const.28 = internal constant { ptr, ptr } { ptr @"json::#json_type_err", ptr null }
@"var.json::#json_type_err" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"json::#hex_digit", ptr null }
@"var.json::#hex_digit" = global ptr null
@str.26 = internal unnamed_addr constant [3 x i8] c"\\\22\00"
@str.27 = internal unnamed_addr constant [3 x i8] c"\\\\\00"
@str.28 = internal unnamed_addr constant [3 x i8] c"\\b\00"
@str.29 = internal unnamed_addr constant [3 x i8] c"\\f\00"
@str.30 = internal unnamed_addr constant [3 x i8] c"\\n\00"
@str.31 = internal unnamed_addr constant [3 x i8] c"\\r\00"
@str.32 = internal unnamed_addr constant [3 x i8] c"\\t\00"
@str.33 = internal unnamed_addr constant [5 x i8] c"\\u00\00"
@clo.const.30 = internal constant { ptr, ptr } { ptr @"json::escape_string_into", ptr null }
@"var.json::escape_string_into" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"json::escape_string", ptr null }
@"var.json::escape_string" = global ptr null
@str.34 = internal unnamed_addr constant [4 x i8] c"nan\00"
@str.35 = internal unnamed_addr constant [4 x i8] c"inf\00"
@str.36 = internal unnamed_addr constant [5 x i8] c"-inf\00"
@clo.const.32 = internal constant { ptr, ptr } { ptr @"json::format_number", ptr null }
@"var.json::format_number" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"json::#stringify_into", ptr null }
@"var.json::#stringify_into" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"json::#append_indent", ptr null }
@"var.json::#append_indent" = global ptr null
@str.37 = internal unnamed_addr constant [3 x i8] c"[]\00"
@str.38 = internal unnamed_addr constant [3 x i8] c"[\0A\00"
@str.39 = internal unnamed_addr constant [3 x i8] c",\0A\00"
@str.40 = internal unnamed_addr constant [3 x i8] c"{}\00"
@str.41 = internal unnamed_addr constant [3 x i8] c"{\0A\00"
@str.42 = internal unnamed_addr constant [3 x i8] c": \00"
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

define internal void @__dva_global_init_json() #3 {
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

define internal i1 @"json::#is_ws_at"(ptr %0, i64 %1) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp slt i64 %1, %str.len.query3
  br i1 %cmptmp, label %and.88.then, label %and.88.exit

and.88.then:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %1, %str.len.query3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.88.exit:                                      ; preds = %entry, %idx_ok
  %and.88.phi = phi i1 [ %call.res, %idx_ok ], [ false, %entry ]
  ret i1 %and.88.phi

idx_ok:                                           ; preds = %and.88.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %1
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.88.exit

idx_oob:                                          ; preds = %and.88.then
  call void @dva_abort_str_oob_msg()
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #5

declare i1 @"str::is_ws"(i64) #3

define internal i64 @"json::#skip_ws"(ptr %0, i64 %1) #3 {
entry:
  %call.res = call i1 @"json::#is_ws_at"(ptr %0, i64 %1)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %addtmp = add i64 %1, 1
  %call.res4 = call i64 @"json::#skip_ws"(ptr %0, i64 %addtmp)
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res = phi i64 [ %call.res4, %choice.then ], [ %1, %entry ]
  ret i64 %choice.res
}

define internal i64 @"json::#hexval"(i64 %0) #3 {
entry:
  %call.res = call { i1, i64 } @"ascii::hex_value"(i64 %0)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %choice.res = select i1 %ram.tag, i64 %ram.pay, i64 -1
  ret i64 %choice.res
}

declare { i1, i64 } @"ascii::hex_value"(i64) #3

define internal i1 @"json::#is_hex_at"(ptr %0, i64 %1) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp slt i64 %1, %str.len.query3
  br i1 %cmptmp, label %and.89.then, label %and.89.exit

and.89.then:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %1, %str.len.query3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.89.exit:                                      ; preds = %entry, %idx_ok
  %and.89.phi = phi i1 [ %call.res, %idx_ok ], [ false, %entry ]
  ret i1 %and.89.phi

idx_ok:                                           ; preds = %and.89.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %1
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"ascii::is_hex"(i64 %s.byte.val)
  br label %and.89.exit

idx_oob:                                          ; preds = %and.89.then
  call void @dva_abort_str_oob_msg()
  unreachable
}

declare i1 @"ascii::is_hex"(i64) #3

define internal { i64, ptr } @"json::#bool_str"(i1 %0) #3 {
entry:
  %str.0.struct.str.1.struct = select i1 %0, ptr @str.0.struct, ptr @str.1.struct
  %ret.pack = load { i64, ptr }, ptr %str.0.struct.str.1.struct, align 8
  ret { i64, ptr } %ret.pack
}

define internal { i1, i64 } @"json::#scan_utf8_char"(ptr %0, ptr %1, i64 %2, i64 %3) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %call.res = call { i64, i64 } @"utf::decode_str_at"(ptr %fld.load, i64 %2)
  %call.res.fca.0.extract = extractvalue { i64, i64 } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, i64 } %call.res, 1
  %cmptmp = icmp slt i64 %call.res.fca.0.extract, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %2, ptr %rec.alloc, align 8
  %rec.fld7 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld7, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %fld.load10 = load ptr, ptr %0, align 8
  %s.read.len11 = load i64, ptr %fld.load10, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %addtmp = add i64 %2, %call.res.fca.1.extract
  %start.is_neg = icmp slt i64 %2, 0
  %rel.start = add i64 %s.read.len12, %2
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %2
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
  %b.app.cur.len19 = load i64, ptr %1, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len19, i64 %view.len)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len20

choice.exit:                                      ; preds = %b.grow_done, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %call.res38, %b.grow_done ]
  ret { i1, i64 } %choice.res

b.app.new.len20:                                  ; preds = %choice.else
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 2
  %b.cap21 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap21, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort:                               ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len20
  %b.cap2 = mul i64 %b.cap21, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len222 = load i64, ptr %1, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 1
  %b.cur.data223 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum24 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf25 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf25, label %str_overflow_abort27, label %b.new.buf.len226

b.grow_done:                                      ; preds = %b.app.new.len20, %b.new.buf.len226
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 1
  %b.app.data30 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data30, i64 %b.app.cur.len19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data30, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum, ptr %1, align 8
  %call.res38 = call { i1, i64 } @"json::#scan_string"(ptr %0, ptr %1, i64 %addtmp)
  br label %choice.exit

b.new.buf.len226:                                 ; preds = %b.grow2
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 %sum24)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data223, i64 %b.cur.len222, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len222
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.cur.data2, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.grow_done

str_overflow_abort27:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable
}

declare { i64, i64 } @"utf::decode_str_at"(ptr, i64) #3

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define internal { i1, i64 } @"json::#scan_string"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp sge i64 %2, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %choice.case, %choice.case18, %choice.case24, %b.push_done, %choice.next49, %choice.then
  %common.ret.op = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %ram.pay17, %choice.case ], [ %call.res, %choice.case18 ], [ %ram.pay47, %choice.case24 ], [ %call.res64, %b.push_done ], [ %call.res69, %choice.next49 ]
  ret { i1, i64 } %common.ret.op

choice.then:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.4.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %2, ptr %rec.alloc, align 8
  %rec.fld6 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld6, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %common.ret

choice.exit:                                      ; preds = %entry
  %fld.load9 = load ptr, ptr %0, align 8
  %s.read.len10 = load i64, ptr %fld.load9, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %2, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %2
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %choice.next19 [
    i64 34, label %choice.case
    i64 92, label %choice.case18
  ]

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case:                                      ; preds = %idx_ok
  %ram.pay17 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %2, 1
  br label %common.ret

choice.case18:                                    ; preds = %idx_ok
  %call.res = call { i1, i64 } @"json::#parse_escape"(ptr %0, ptr %1, i64 %2)
  br label %common.ret

choice.next19:                                    ; preds = %idx_ok
  %cmptmp26 = icmp slt i64 %s.byte.val, 32
  br i1 %cmptmp26, label %choice.case24, label %choice.next25

choice.case24:                                    ; preds = %choice.next19
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc28 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
  store i64 400, ptr %err.alloc28, align 8
  %err.msg.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep30, align 8
  %err.file.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep31, align 8
  %err.line.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 3
  store i64 0, ptr %err.line.gep32, align 8
  %err.col.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 4
  store i64 0, ptr %err.col.gep33, align 8
  %err.ctx.gep34 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc28, i32 0, i32 5
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %2, ptr %rec.alloc37, align 8
  %rec.fld39 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc37, i32 0, i32 1
  store i64 0, ptr %rec.fld39, align 8
  %ctx.041 = load i64, ptr %rec.alloc37, align 8
  store i64 %ctx.041, ptr %err.ctx.gep34, align 8
  %err.ctx1.gep45 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep34, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep45, align 8
  %ptr.to.i6446 = ptrtoint ptr %err.alloc28 to i64
  %ram.pay47 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i6446, 1
  br label %common.ret

choice.next25:                                    ; preds = %choice.next19
  %cmptmp50 = icmp slt i64 %s.byte.val, 128
  br i1 %cmptmp50, label %b.byte_ok, label %choice.next49

choice.next49:                                    ; preds = %choice.next25
  %call.res69 = call { i1, i64 } @"json::#scan_utf8_char"(ptr %0, ptr %1, i64 %2, i64 %s.byte.val)
  br label %common.ret

b.byte_ok:                                        ; preds = %choice.next25
  %b.len53 = load i64, ptr %1, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 2
  %b.cap54 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 1
  %b.data55 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len53, %b.cap54
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap54, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len56

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len56
  %b.cur.data59 = load ptr, ptr %b.data, align 8
  %b.cur.len60 = load i64, ptr %1, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data59, i64 %b.cur.len60
  store i8 %s.byte, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len60, 1
  %b.nul = getelementptr i8, ptr %b.cur.data59, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  store i64 %b.next.len, ptr %1, align 8
  %addtmp = add i64 %2, 1
  %call.res64 = call { i1, i64 } @"json::#scan_string"(ptr %0, ptr %1, i64 %addtmp)
  br label %common.ret

b.new.buf.len56:                                  ; preds = %b.grow
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data55, i64 %b.len53, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len53
  store i8 0, ptr %b.grow.nul, align 1
  store ptr %b.new.buf, ptr %b.data, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal { i1, i64 } @"json::#parse_escape"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %addtmp = add i64 %2, 1
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %entry ]
  switch i64 %choice.res, label %choice.next39 [
    i64 117, label %choice.then
    i64 92, label %choice.exit19
    i64 47, label %choice.exit19
    i64 34, label %choice.exit19
    i64 98, label %choice.case26
    i64 102, label %choice.case29
    i64 110, label %choice.case32
    i64 114, label %choice.case35
    i64 116, label %choice.case38
  ]

choice.case:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %addtmp, %str.len.query3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %addtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

common.ret:                                       ; preds = %b.push_done, %choice.next39, %choice.then
  %common.ret.op = phi { i1, i64 } [ %call.res, %choice.then ], [ %ram.pay, %choice.next39 ], [ %call.res59, %b.push_done ]
  ret { i1, i64 } %common.ret.op

choice.then:                                      ; preds = %choice.exit
  %call.res = call { i1, i64 } @"json::#parse_unicode"(ptr %0, ptr %1, i64 %2)
  br label %common.ret

choice.exit19:                                    ; preds = %choice.exit, %choice.exit, %choice.exit, %choice.case38, %choice.case35, %choice.case32, %choice.case29, %choice.case26
  %choice.res45 = phi i64 [ 8, %choice.case26 ], [ 12, %choice.case29 ], [ 10, %choice.case32 ], [ 13, %choice.case35 ], [ 9, %choice.case38 ], [ %choice.res, %choice.exit ], [ %choice.res, %choice.exit ], [ %choice.res, %choice.exit ]
  %b.b.ge0 = icmp sge i64 %choice.res45, 0
  br i1 %b.b.ge0, label %b.byte_ok, label %b.byte_err

choice.case26:                                    ; preds = %choice.exit
  br label %choice.exit19

choice.case29:                                    ; preds = %choice.exit
  br label %choice.exit19

choice.case32:                                    ; preds = %choice.exit
  br label %choice.exit19

choice.case35:                                    ; preds = %choice.exit
  br label %choice.exit19

choice.case38:                                    ; preds = %choice.exit
  br label %choice.exit19

choice.next39:                                    ; preds = %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %2, ptr %rec.alloc, align 8
  %rec.fld43 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld43, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %common.ret

b.byte_ok:                                        ; preds = %choice.exit19
  %b.byte.i8 = trunc i64 %choice.res45 to i8
  %b.len47 = load i64, ptr %1, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 2
  %b.cap48 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %1, i32 0, i32 1
  %b.data49 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len47, %b.cap48
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %choice.exit19
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap48, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len50

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len50
  %b.cur.data53 = load ptr, ptr %b.data, align 8
  %b.cur.len54 = load i64, ptr %1, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data53, i64 %b.cur.len54
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len54, 1
  %b.nul = getelementptr i8, ptr %b.cur.data53, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  store i64 %b.next.len, ptr %1, align 8
  %addtmp58 = add i64 %2, 2
  %call.res59 = call { i1, i64 } @"json::#scan_string"(ptr %0, ptr %1, i64 %addtmp58)
  br label %common.ret

b.new.buf.len50:                                  ; preds = %b.grow
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data49, i64 %b.len47, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len47
  store i8 0, ptr %b.grow.nul, align 1
  store ptr %b.new.buf, ptr %b.data, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal { i1, i64 } @"json::#parse_unicode"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %addtmp = add i64 %2, 2
  %call.res = call i1 @"json::#is_hex_at"(ptr %0, i64 %addtmp)
  %addtmp4 = add i64 %2, 3
  %call.res5 = call i1 @"json::#is_hex_at"(ptr %0, i64 %addtmp4)
  %addtmp8 = add i64 %2, 4
  %call.res9 = call i1 @"json::#is_hex_at"(ptr %0, i64 %addtmp8)
  %addtmp12 = add i64 %2, 5
  %call.res13 = call i1 @"json::#is_hex_at"(ptr %0, i64 %addtmp12)
  %call.res5.call.res = select i1 %call.res, i1 %call.res5, i1 %call.res
  %and.92.phi = select i1 %call.res5.call.res, i1 %call.res9, i1 %call.res5.call.res
  %and.93.phi = select i1 %and.92.phi, i1 %call.res13, i1 %and.92.phi
  br i1 %and.93.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %fld.load = load ptr, ptr %0, align 8
  %s.read.len20 = load i64, ptr %fld.load, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %addtmp, %s.read.len21
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.8.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur95 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %2, ptr %rec.alloc, align 8
  %rec.fld96 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld96, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %idx_ok73
  %choice.res = phi { i1, i64 } [ %call.res93, %idx_ok73 ], [ %ram.pay, %choice.else ]
  ret { i1, i64 } %choice.res

idx_ok:                                           ; preds = %choice.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data22, i64 %addtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res25 = call i64 @"json::#hexval"(i64 %s.byte.val)
  %fld.load28 = load ptr, ptr %0, align 8
  %s.read.len30 = load i64, ptr %fld.load28, align 8
  %s.read.len31 = and i64 %s.read.len30, 281474976710655
  %s.read.data32 = getelementptr inbounds { i64, ptr }, ptr %fld.load28, i32 0, i32 1
  %s.read.data33 = load ptr, ptr %s.read.data32, align 8
  %idx.oob36 = icmp uge i64 %addtmp4, %s.read.len31
  br i1 %idx.oob36, label %idx_oob38, label %idx_ok37

idx_oob:                                          ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok37:                                         ; preds = %idx_ok
  %s.byte.gep40 = getelementptr i8, ptr %s.read.data33, i64 %addtmp4
  %s.byte41 = load i8, ptr %s.byte.gep40, align 1
  %s.byte.val42 = zext i8 %s.byte41 to i64
  %call.res43 = call i64 @"json::#hexval"(i64 %s.byte.val42)
  %fld.load46 = load ptr, ptr %0, align 8
  %s.read.len48 = load i64, ptr %fld.load46, align 8
  %s.read.len49 = and i64 %s.read.len48, 281474976710655
  %s.read.data50 = getelementptr inbounds { i64, ptr }, ptr %fld.load46, i32 0, i32 1
  %s.read.data51 = load ptr, ptr %s.read.data50, align 8
  %idx.oob54 = icmp uge i64 %addtmp8, %s.read.len49
  br i1 %idx.oob54, label %idx_oob56, label %idx_ok55

idx_oob38:                                        ; preds = %idx_ok
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok55:                                         ; preds = %idx_ok37
  %s.byte.gep58 = getelementptr i8, ptr %s.read.data51, i64 %addtmp8
  %s.byte59 = load i8, ptr %s.byte.gep58, align 1
  %s.byte.val60 = zext i8 %s.byte59 to i64
  %call.res61 = call i64 @"json::#hexval"(i64 %s.byte.val60)
  %fld.load64 = load ptr, ptr %0, align 8
  %s.read.len66 = load i64, ptr %fld.load64, align 8
  %s.read.len67 = and i64 %s.read.len66, 281474976710655
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %fld.load64, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %idx.oob72 = icmp uge i64 %addtmp12, %s.read.len67
  br i1 %idx.oob72, label %idx_oob74, label %idx_ok73

idx_oob56:                                        ; preds = %idx_ok37
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok73:                                         ; preds = %idx_ok55
  %s.byte.gep76 = getelementptr i8, ptr %s.read.data69, i64 %addtmp12
  %s.byte77 = load i8, ptr %s.byte.gep76, align 1
  %s.byte.val78 = zext i8 %s.byte77 to i64
  %call.res79 = call i64 @"json::#hexval"(i64 %s.byte.val78)
  %multmp = mul i64 %call.res25, 4096
  %multmp82 = mul i64 %call.res43, 256
  %addtmp83 = add i64 %multmp, %multmp82
  %multmp85 = mul i64 %call.res61, 16
  %addtmp86 = add i64 %addtmp83, %multmp85
  %addtmp88 = add i64 %addtmp86, %call.res79
  %call.res93 = call { i1, i64 } @"json::#parse_unicode_cp"(ptr %0, ptr %1, i64 %2, i64 %addtmp88)
  br label %choice.exit

idx_oob74:                                        ; preds = %idx_ok55
  call void @dva_abort_str_oob_msg()
  unreachable
}

define internal { i1, i64 } @"json::#parse_unicode_cp"(ptr %0, ptr %1, i64 %2, i64 %3) #3 {
entry:
  %cmptmp = icmp sge i64 %3, 55296
  %cmptmp1 = icmp sle i64 %3, 56319
  %and.94.phi = select i1 %cmptmp, i1 %cmptmp1, i1 false
  br i1 %and.94.phi, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next7, %choice.case6, %choice.case
  %choice.res = phi { i1, i64 } [ %call.res, %choice.case ], [ %ram.pay, %choice.case6 ], [ %call.res18, %choice.next7 ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %entry
  %call.res = call { i1, i64 } @"json::#parse_surrogate_pair"(ptr %0, ptr %1, i64 %2, i64 %3)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %cmptmp8 = icmp sge i64 %3, 56320
  %cmptmp9 = icmp sle i64 %3, 57343
  %and.102.phi = select i1 %cmptmp8, i1 %cmptmp9, i1 false
  br i1 %and.102.phi, label %choice.case6, label %choice.next7

choice.case6:                                     ; preds = %choice.next
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %2, ptr %rec.alloc, align 8
  %rec.fld12 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld12, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %choice.exit

choice.next7:                                     ; preds = %choice.next
  %coerce.trunc = trunc i64 %3 to i32
  call void @"utf::append_rune"(ptr %1, i32 %coerce.trunc)
  %addtmp = add i64 %2, 6
  %call.res18 = call { i1, i64 } @"json::#scan_string"(ptr %0, ptr %1, i64 %addtmp)
  br label %choice.exit
}

define internal { i1, i64 } @"json::#parse_surrogate_pair"(ptr %0, ptr %1, i64 %2, i64 %3) #3 {
entry:
  %addtmp = add i64 %2, 11
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %and.95.then, label %and.95.exit

and.95.then:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %addtmp11 = add i64 %2, 6
  %idx.oob = icmp uge i64 %addtmp11, %str.len.query3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.95.exit:                                      ; preds = %entry, %idx_ok
  %and.95.phi = phi i1 [ %cmptmp12, %idx_ok ], [ false, %entry ]
  br i1 %and.95.phi, label %and.96.then, label %and.96.exit

idx_ok:                                           ; preds = %and.95.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %addtmp11
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp12 = icmp eq i64 %s.byte.val, 92
  br label %and.95.exit

idx_oob:                                          ; preds = %and.95.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.96.then:                                      ; preds = %and.95.exit
  %fld.load15 = load ptr, ptr %0, align 8
  %s.read.len17 = load i64, ptr %fld.load15, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %s.read.data19 = getelementptr inbounds { i64, ptr }, ptr %fld.load15, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data19, align 8
  %addtmp22 = add i64 %2, 7
  %idx.oob23 = icmp uge i64 %addtmp22, %s.read.len18
  br i1 %idx.oob23, label %idx_oob25, label %idx_ok24

and.96.exit:                                      ; preds = %and.95.exit, %idx_ok24
  %and.96.phi = phi i1 [ %cmptmp30, %idx_ok24 ], [ %and.95.phi, %and.95.exit ]
  br i1 %and.96.phi, label %and.97.then, label %and.97.exit

idx_ok24:                                         ; preds = %and.96.then
  %s.byte.gep27 = getelementptr i8, ptr %s.read.data20, i64 %addtmp22
  %s.byte28 = load i8, ptr %s.byte.gep27, align 1
  %s.byte.val29 = zext i8 %s.byte28 to i64
  %cmptmp30 = icmp eq i64 %s.byte.val29, 117
  br label %and.96.exit

idx_oob25:                                        ; preds = %and.96.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.97.then:                                      ; preds = %and.96.exit
  %addtmp33 = add i64 %2, 8
  %call.res = call i1 @"json::#is_hex_at"(ptr %0, i64 %addtmp33)
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.96.exit, %and.97.then
  %and.97.phi = phi i1 [ %call.res, %and.97.then ], [ %and.96.phi, %and.96.exit ]
  br i1 %and.97.phi, label %and.98.then, label %and.98.exit

and.98.then:                                      ; preds = %and.97.exit
  %addtmp36 = add i64 %2, 9
  %call.res37 = call i1 @"json::#is_hex_at"(ptr %0, i64 %addtmp36)
  br label %and.98.exit

and.98.exit:                                      ; preds = %and.97.exit, %and.98.then
  %and.98.phi = phi i1 [ %call.res37, %and.98.then ], [ %and.97.phi, %and.97.exit ]
  br i1 %and.98.phi, label %and.99.then, label %and.99.exit

and.99.then:                                      ; preds = %and.98.exit
  %addtmp40 = add i64 %2, 10
  %call.res41 = call i1 @"json::#is_hex_at"(ptr %0, i64 %addtmp40)
  br label %and.99.exit

and.99.exit:                                      ; preds = %and.98.exit, %and.99.then
  %and.99.phi = phi i1 [ %call.res41, %and.99.then ], [ %and.98.phi, %and.98.exit ]
  br i1 %and.99.phi, label %and.100.then, label %and.100.exit

and.100.then:                                     ; preds = %and.99.exit
  %call.res45 = call i1 @"json::#is_hex_at"(ptr %0, i64 %addtmp)
  br label %and.100.exit

and.100.exit:                                     ; preds = %and.99.exit, %and.100.then
  %and.100.phi = phi i1 [ %call.res45, %and.100.then ], [ %and.99.phi, %and.99.exit ]
  br i1 %and.100.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.100.exit
  %fld.load49 = load ptr, ptr %0, align 8
  %s.read.len51 = load i64, ptr %fld.load49, align 8
  %s.read.len52 = and i64 %s.read.len51, 281474976710655
  %s.read.data53 = getelementptr inbounds { i64, ptr }, ptr %fld.load49, i32 0, i32 1
  %s.read.data54 = load ptr, ptr %s.read.data53, align 8
  %addtmp56 = add i64 %2, 8
  %idx.oob57 = icmp uge i64 %addtmp56, %s.read.len52
  br i1 %idx.oob57, label %idx_oob59, label %idx_ok58

choice.else:                                      ; preds = %and.100.exit
  %arena.cur148 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc149 = call ptr @dva_arena_alloc(ptr %arena.cur148, i64 56)
  store i64 400, ptr %err.alloc149, align 8
  %err.msg.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 1
  store ptr @str.6.struct, ptr %err.msg.gep151, align 8
  %err.file.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep152, align 8
  %err.line.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 3
  store i64 0, ptr %err.line.gep153, align 8
  %err.col.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 4
  store i64 0, ptr %err.col.gep154, align 8
  %err.ctx.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc149, i32 0, i32 5
  %arena.cur157 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %2, ptr %rec.alloc158, align 8
  %rec.fld160 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc158, i32 0, i32 1
  store i64 0, ptr %rec.fld160, align 8
  %ctx.0162 = load i64, ptr %rec.alloc158, align 8
  store i64 %ctx.0162, ptr %err.ctx.gep155, align 8
  %err.ctx1.gep166 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep155, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep166, align 8
  %ptr.to.i64167 = ptrtoint ptr %err.alloc149 to i64
  %ram.pay168 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64167, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.case, %choice.next, %choice.else
  %choice.res169 = phi { i1, i64 } [ %ram.pay168, %choice.else ], [ %call.res144, %choice.case ], [ %ram.pay, %choice.next ]
  ret { i1, i64 } %choice.res169

idx_ok58:                                         ; preds = %choice.then
  %s.byte.gep61 = getelementptr i8, ptr %s.read.data54, i64 %addtmp56
  %s.byte62 = load i8, ptr %s.byte.gep61, align 1
  %s.byte.val63 = zext i8 %s.byte62 to i64
  %call.res64 = call i64 @"json::#hexval"(i64 %s.byte.val63)
  %fld.load67 = load ptr, ptr %0, align 8
  %s.read.len69 = load i64, ptr %fld.load67, align 8
  %s.read.len70 = and i64 %s.read.len69, 281474976710655
  %s.read.data71 = getelementptr inbounds { i64, ptr }, ptr %fld.load67, i32 0, i32 1
  %s.read.data72 = load ptr, ptr %s.read.data71, align 8
  %addtmp74 = add i64 %2, 9
  %idx.oob75 = icmp uge i64 %addtmp74, %s.read.len70
  br i1 %idx.oob75, label %idx_oob77, label %idx_ok76

idx_oob59:                                        ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok76:                                         ; preds = %idx_ok58
  %s.byte.gep79 = getelementptr i8, ptr %s.read.data72, i64 %addtmp74
  %s.byte80 = load i8, ptr %s.byte.gep79, align 1
  %s.byte.val81 = zext i8 %s.byte80 to i64
  %call.res82 = call i64 @"json::#hexval"(i64 %s.byte.val81)
  %fld.load85 = load ptr, ptr %0, align 8
  %s.read.len87 = load i64, ptr %fld.load85, align 8
  %s.read.len88 = and i64 %s.read.len87, 281474976710655
  %s.read.data89 = getelementptr inbounds { i64, ptr }, ptr %fld.load85, i32 0, i32 1
  %s.read.data90 = load ptr, ptr %s.read.data89, align 8
  %addtmp92 = add i64 %2, 10
  %idx.oob93 = icmp uge i64 %addtmp92, %s.read.len88
  br i1 %idx.oob93, label %idx_oob95, label %idx_ok94

idx_oob77:                                        ; preds = %idx_ok58
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok94:                                         ; preds = %idx_ok76
  %s.byte.gep97 = getelementptr i8, ptr %s.read.data90, i64 %addtmp92
  %s.byte98 = load i8, ptr %s.byte.gep97, align 1
  %s.byte.val99 = zext i8 %s.byte98 to i64
  %call.res100 = call i64 @"json::#hexval"(i64 %s.byte.val99)
  %fld.load103 = load ptr, ptr %0, align 8
  %s.read.len105 = load i64, ptr %fld.load103, align 8
  %s.read.len106 = and i64 %s.read.len105, 281474976710655
  %s.read.data107 = getelementptr inbounds { i64, ptr }, ptr %fld.load103, i32 0, i32 1
  %s.read.data108 = load ptr, ptr %s.read.data107, align 8
  %idx.oob111 = icmp uge i64 %addtmp, %s.read.len106
  br i1 %idx.oob111, label %idx_oob113, label %idx_ok112

idx_oob95:                                        ; preds = %idx_ok76
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok112:                                        ; preds = %idx_ok94
  %s.byte.gep115 = getelementptr i8, ptr %s.read.data108, i64 %addtmp
  %s.byte116 = load i8, ptr %s.byte.gep115, align 1
  %s.byte.val117 = zext i8 %s.byte116 to i64
  %call.res118 = call i64 @"json::#hexval"(i64 %s.byte.val117)
  %multmp = mul i64 %call.res64, 4096
  %multmp121 = mul i64 %call.res82, 256
  %addtmp122 = add i64 %multmp, %multmp121
  %multmp124 = mul i64 %call.res100, 16
  %addtmp125 = add i64 %addtmp122, %multmp124
  %addtmp127 = add i64 %addtmp125, %call.res118
  %cmptmp130 = icmp sge i64 %addtmp127, 56320
  %cmptmp131 = icmp sle i64 %addtmp127, 57343
  %and.101.phi = select i1 %cmptmp130, i1 %cmptmp131, i1 false
  br i1 %and.101.phi, label %choice.case, label %choice.next

idx_oob113:                                       ; preds = %idx_ok94
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case:                                      ; preds = %idx_ok112
  %subtmp = sub i64 %3, 55296
  %multmp133 = mul i64 %subtmp, 1024
  %addtmp134 = add i64 65536, %multmp133
  %subtmp136 = sub i64 %addtmp127, 56320
  %addtmp137 = add i64 %addtmp134, %subtmp136
  %coerce.trunc = trunc i64 %addtmp137 to i32
  call void @"utf::append_rune"(ptr %1, i32 %coerce.trunc)
  %addtmp143 = add i64 %2, 12
  %call.res144 = call { i1, i64 } @"json::#scan_string"(ptr %0, ptr %1, i64 %addtmp143)
  br label %choice.exit

choice.next:                                      ; preds = %idx_ok112
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.5.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %2, ptr %rec.alloc, align 8
  %rec.fld147 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld147, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %choice.exit
}

declare void @"utf::append_rune"(ptr, i32) #3

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable
}

define internal i1 @"json::#is_digit_at"(ptr %0, i64 %1) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp slt i64 %1, %str.len.query3
  br i1 %cmptmp, label %and.103.then, label %and.103.exit

and.103.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %1, %str.len.query3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.103.exit:                                     ; preds = %entry, %idx_ok
  %and.103.phi = phi i1 [ %call.res, %idx_ok ], [ false, %entry ]
  ret i1 %and.103.phi

idx_ok:                                           ; preds = %and.103.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %1
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_digit"(i64 %s.byte.val)
  br label %and.103.exit

idx_oob:                                          ; preds = %and.103.then
  call void @dva_abort_str_oob_msg()
  unreachable
}

declare i1 @"str::is_digit"(i64) #3

; Function Attrs: inlinehint
define internal i64 @"json::#scan_plain_ascii_end"(ptr %0, i64 %1) #7 {
entry:
  %str.len.query2 = load i64, ptr %0, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %addtmp = add i64 %1, 8
  %cmptmp = icmp sle i64 %addtmp, %str.len.query3
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.ptr7 = load ptr, ptr %s.ptr, align 8
  br label %loop.header.104

choice.exit:                                      ; preds = %loop.header.104, %entry
  %"var.k'.0" = phi i64 [ %1, %entry ], [ %"var.k'.1", %loop.header.104 ]
  br label %loop.header.105

loop.header.104:                                  ; preds = %choice.exit39, %choice.then
  %loop.idx.104.0 = phi i64 [ 0, %choice.then ], [ %loop.next, %choice.exit39 ]
  %"var.k'.1" = phi i64 [ %1, %choice.then ], [ %addtmp9, %choice.exit39 ]
  %addtmp9 = add i64 %"var.k'.1", 8
  %cmptmp11 = icmp sgt i64 %addtmp9, %str.len.query3
  br i1 %cmptmp11, label %choice.exit, label %choice.exit13

choice.exit13:                                    ; preds = %loop.header.104
  %ptr.int.l = ptrtoint ptr %s.ptr7 to i64
  %addtmp16 = add i64 %ptr.int.l, %"var.k'.1"
  %ptr.res = inttoptr i64 %addtmp16 to ptr
  %raw.clean.int = and i64 %addtmp16, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  %subtmp = sub i64 %raw.load, 2314885530818453536
  %bortmp = or i64 %raw.load, %subtmp
  %bxortmp = xor i64 %raw.load, 2459565876494606882
  %bxortmp21 = xor i64 %raw.load, 6655295901103053916
  %subtmp23 = sub i64 %bxortmp, 72340172838076673
  %bitnottmp = xor i64 %bxortmp, -1
  %bandtmp = and i64 %subtmp23, %bitnottmp
  %subtmp26 = sub i64 %bxortmp21, 72340172838076673
  %bitnottmp28 = xor i64 %bxortmp21, -1
  %bandtmp29 = and i64 %subtmp26, %bitnottmp28
  %bortmp32 = or i64 %bortmp, %bandtmp
  %bortmp34 = or i64 %bortmp32, %bandtmp29
  %bandtmp35 = and i64 %bortmp34, -9187201950435737472
  %cmptmp37 = icmp ne i64 %bandtmp35, 0
  br i1 %cmptmp37, label %choice.then38, label %choice.exit39

common.ret:                                       ; preds = %and.107.exit, %loop.header.105, %choice.then38
  %common.ret.op = phi i64 [ %addtmp42, %choice.then38 ], [ %"var.k'.2", %loop.header.105 ], [ %"var.k'.2", %and.107.exit ]
  ret i64 %common.ret.op

choice.then38:                                    ; preds = %choice.exit13
  %cttz = call i64 @llvm.cttz.i64(i64 %bandtmp35, i1 false)
  %shrtmp = lshr i64 %cttz, 3
  %addtmp42 = add i64 %"var.k'.1", %shrtmp
  br label %common.ret

choice.exit39:                                    ; preds = %choice.exit13
  %loop.next = add i64 %loop.idx.104.0, 1
  br label %loop.header.104

loop.header.105:                                  ; preds = %choice.then69, %choice.exit
  %loop.idx.105.0 = phi i64 [ 0, %choice.exit ], [ %loop.next74, %choice.then69 ]
  %"var.k'.2" = phi i64 [ %"var.k'.0", %choice.exit ], [ %addtmp72, %choice.then69 ]
  %cmptmp51 = icmp sge i64 %"var.k'.2", %str.len.query3
  br i1 %cmptmp51, label %common.ret, label %choice.exit53

choice.exit53:                                    ; preds = %loop.header.105
  %s.read.len55 = load i64, ptr %0, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data57 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.k'.2", %s.read.len56
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit53
  %s.byte.gep = getelementptr i8, ptr %s.read.data57, i64 %"var.k'.2"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp61 = icmp sge i64 %s.byte.val, 32
  %cmptmp62 = icmp sle i64 %s.byte.val, 127
  %and.106.phi = select i1 %cmptmp61, i1 %cmptmp62, i1 false
  %choice.res = select i1 %and.106.phi, i1 true, i1 false
  br i1 %choice.res, label %and.107.then, label %and.107.exit

idx_oob:                                          ; preds = %choice.exit53
  call void @dva_abort_str_oob_msg()
  unreachable

and.107.then:                                     ; preds = %idx_ok
  %switch.selectcmp.case1 = icmp eq i64 %s.byte.val, 92
  %switch.selectcmp.case2 = icmp eq i64 %s.byte.val, 34
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %2 = select i1 %switch.selectcmp, i1 true, i1 false
  %nottmp = xor i1 %2, true
  br label %and.107.exit

and.107.exit:                                     ; preds = %idx_ok, %and.107.then
  %and.107.phi = phi i1 [ %nottmp, %and.107.then ], [ %choice.res, %idx_ok ]
  br i1 %and.107.phi, label %choice.then69, label %common.ret

choice.then69:                                    ; preds = %and.107.exit
  %addtmp72 = add i64 %"var.k'.2", 1
  %loop.next74 = add i64 %loop.idx.105.0, 1
  br label %loop.header.105
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #0

define internal { i1, i64 } @"json::#parse_string_escaped"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %1, ptr %fld.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 65)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  %cmptmp = icmp sgt i64 %2, %1
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %fld.load = load ptr, ptr %0, align 8
  %s.read.len8 = load i64, ptr %fld.load, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %1, 0
  %rel.start = add i64 %s.read.len9, %1
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %1
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len9
  %final.start = select i1 %start.gt.len, i64 %s.read.len9, i64 %c.start.0
  %end.is_neg = icmp slt i64 %2, 0
  %rel.end = add i64 %s.read.len9, %2
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len9
  %final.end = select i1 %end.gt.len, i64 %s.read.len9, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data10, i64 %final.start
  %b.app.cur.len13 = load i64, ptr %builder.new, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len13, i64 %view.len)
  %sum14 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf15 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf15, label %str_overflow_abort17, label %b.app.new.len16

choice.exit:                                      ; preds = %b.grow_done, %entry
  %call.res = call { i1, i64 } @"json::#scan_string"(ptr %0, ptr %builder.new, i64 %2)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then34, label %choice.else

b.app.new.len16:                                  ; preds = %choice.then
  %b.cap19 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow = icmp slt i64 %b.cap19, %sum14
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort17:                             ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len16
  %b.cap2 = mul i64 %b.cap19, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum14
  %b.new.cap = select i1 %b.cap.need, i64 %sum14, i64 %b.cap.grow
  %b.cur.len220 = load i64, ptr %builder.new, align 8
  %b.cur.data221 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum22 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf23 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf23, label %str_overflow_abort25, label %b.new.buf.len224

b.grow_done:                                      ; preds = %b.app.new.len16, %b.new.buf.len224
  %b.app.data28 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data28, i64 %b.app.cur.len13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data28, i64 %sum14
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum14, ptr %builder.new, align 8
  br label %choice.exit

b.new.buf.len224:                                 ; preds = %b.grow2
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum22)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data221, i64 %b.cur.len220, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len220
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.grow_done

str_overflow_abort25:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then34:                                    ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %addtmp = add i64 %ram.pay, 1
  store i64 %addtmp, ptr %fld.gep, align 8
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %b.freeze.len41 = load i64, ptr %builder.new, align 8
  %b.freeze.data42 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else:                                      ; preds = %choice.exit
  %ram.pay47 = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay47 to ptr
  %ram.pay51 = insertvalue { i1, i64 } zeroinitializer, i64 %ram.pay47, 1
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
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data42, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data42, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data42, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len41, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data42, i64 %b.freeze.len41, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len41
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then34
  %b.freeze.data44 = phi ptr [ %b.freeze.data42, %choice.then34 ], [ %b.freeze.data42, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  store i64 %b.freeze.len41, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data44, ptr %str.build.data.gep, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  store ptr %builder.freeze, ptr %pay.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay46 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %choice.exit35
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

define internal { i1, i64 } @"json::#parse_string"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 1
  %fld.load3 = load ptr, ptr %0, align 8
  %call.res = call i64 @"json::#scan_plain_ascii_end"(ptr %fld.load3, i64 %addtmp)
  %fld.load8 = load ptr, ptr %0, align 8
  %str.len.query9 = load i64, ptr %fld.load8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query10
  br i1 %cmptmp, label %and.108.then, label %choice.else

and.108.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.108.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp18 = icmp eq i64 %s.byte.val, 34
  br i1 %cmptmp18, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %and.108.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then:                                      ; preds = %idx_ok
  %addtmp21 = add i64 %call.res, 1
  store i64 %addtmp21, ptr %fld.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 0, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %fld.load25 = load ptr, ptr %0, align 8
  %s.read.len27 = load i64, ptr %fld.load25, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data29 = getelementptr inbounds { i64, ptr }, ptr %fld.load25, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data29, align 8
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len28, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len28
  %final.start = select i1 %start.gt.len, i64 %s.read.len28, i64 %c.start.0
  %end.is_neg = icmp slt i64 %call.res, 0
  %rel.end = add i64 %s.read.len28, %call.res
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %call.res
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
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %pay.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry, %idx_ok
  %call.res37 = call { i1, i64 } @"json::#parse_string_escaped"(ptr %0, i64 %addtmp, i64 %call.res)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %call.res37, %choice.else ]
  ret { i1, i64 } %choice.res
}

define internal { i1, i64 } @"json::#parse_array"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 1
  store i64 %addtmp, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %addtmp)
  store i64 %call.res, ptr %fld.gep, align 8
  %fld.load13 = load ptr, ptr %0, align 8
  %str.len.query14 = load i64, ptr %fld.load13, align 8
  %str.len.query15 = and i64 %str.len.query14, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %entry ]
  %val.match = icmp eq i64 %choice.res, 93
  br i1 %val.match, label %choice.case25, label %choice.next26

choice.case:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data21, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit24:                                    ; preds = %choice.next26, %a.view.off46
  %choice.res73 = phi { i1, i64 } [ %ram.pay, %a.view.off46 ], [ %call.res72, %choice.next26 ]
  ret { i1, i64 } %choice.res73

choice.case25:                                    ; preds = %choice.exit
  %fld.load30 = load i64, ptr %fld.gep, align 8
  %addtmp31 = add i64 %fld.load30, 1
  store i64 %addtmp31, ptr %fld.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  store i64 4, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %a.view.len43 = load i64, ptr %a.new, align 8
  %start.gt.len = icmp sgt i64 0, %a.view.len43
  %final.start = select i1 %start.gt.len, i64 %a.view.len43, i64 0
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  %a.view.data44 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off45, 0
  %ovf = extractvalue { i64, i1 } %a.view.off45, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off46

choice.next26:                                    ; preds = %choice.exit
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  store i64 0, ptr %a.new51, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  %call.res72 = call { i1, i64 } @"json::#parse_array_loop"(ptr %0, ptr %a.new51)
  br label %choice.exit24

a.view.off46:                                     ; preds = %choice.case25
  %a.view.data48 = getelementptr i8, ptr %a.view.data44, i64 %sum
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  store ptr %a.view.data48, ptr %a.view.slice, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 4611686018427387904, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %choice.exit24

str_overflow_abort:                               ; preds = %choice.case25
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal { i1, i64 } @"json::#parse_array_loop"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::#parse_value"(ptr %0)
  %a.null = icmp eq ptr %1, null
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
  %var.elems.0 = phi ptr [ %a.create3, %a.create ], [ %1, %entry ]
  %call.res6 = call { i1, i64 } @"json::#parse_array_after_value"(ptr %0, ptr %var.elems.0, { i1, i64 } %call.res)
  ret { i1, i64 } %call.res6
}

define internal { i1, i64 } @"json::#parse_value"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %fld.load)
  store i64 %call.res, ptr %fld.gep, align 8
  %fld.load8 = load ptr, ptr %0, align 8
  %str.len.query9 = load i64, ptr %fld.load8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %entry ]
  switch i64 %choice.res, label %choice.next45 [
    i64 34, label %choice.case20
    i64 123, label %choice.case24
    i64 91, label %choice.case29
    i64 116, label %choice.case34
    i64 102, label %choice.case39
    i64 110, label %choice.case44
  ]

choice.case:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit19:                                    ; preds = %choice.next45, %choice.case44, %choice.case39, %choice.case34, %choice.case29, %choice.case24, %choice.case20
  %choice.res51 = phi { i1, i64 } [ %call.res23, %choice.case20 ], [ %call.res28, %choice.case24 ], [ %call.res33, %choice.case29 ], [ %call.res38, %choice.case34 ], [ %call.res43, %choice.case39 ], [ %call.res48, %choice.case44 ], [ %call.res50, %choice.next45 ]
  ret { i1, i64 } %choice.res51

choice.case20:                                    ; preds = %choice.exit
  %call.res23 = call { i1, i64 } @"json::#parse_string"(ptr %0)
  br label %choice.exit19

choice.case24:                                    ; preds = %choice.exit
  %call.res28 = call { i1, i64 } @"json::#parse_object"(ptr %0)
  br label %choice.exit19

choice.case29:                                    ; preds = %choice.exit
  %call.res33 = call { i1, i64 } @"json::#parse_array"(ptr %0)
  br label %choice.exit19

choice.case34:                                    ; preds = %choice.exit
  %call.res38 = call { i1, i64 } @"json::#parse_lit"(ptr %0, i1 true, i64 4)
  br label %choice.exit19

choice.case39:                                    ; preds = %choice.exit
  %call.res43 = call { i1, i64 } @"json::#parse_lit"(ptr %0, i1 false, i64 5)
  br label %choice.exit19

choice.case44:                                    ; preds = %choice.exit
  %call.res48 = call { i1, i64 } @"json::#parse_null"(ptr %0)
  br label %choice.exit19

choice.next45:                                    ; preds = %choice.exit
  %call.res50 = call { i1, i64 } @"json::#parse_number"(ptr %0)
  br label %choice.exit19
}

define internal { i1, i64 } @"json::#parse_object"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load, 1
  store i64 %addtmp, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %addtmp)
  store i64 %call.res, ptr %fld.gep, align 8
  %fld.load13 = load ptr, ptr %0, align 8
  %str.len.query14 = load i64, ptr %fld.load13, align 8
  %str.len.query15 = and i64 %str.len.query14, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query15
  br i1 %cmptmp, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %entry ]
  %val.match = icmp eq i64 %choice.res, 125
  br i1 %val.match, label %choice.case25, label %choice.next26

choice.case:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load13, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data21, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit24:                                    ; preds = %choice.next26, %a.view.off46
  %choice.res73 = phi { i1, i64 } [ %ram.pay, %a.view.off46 ], [ %call.res72, %choice.next26 ]
  ret { i1, i64 } %choice.res73

choice.case25:                                    ; preds = %choice.exit
  %fld.load30 = load i64, ptr %fld.gep, align 8
  %addtmp31 = add i64 %fld.load30, 1
  store i64 %addtmp31, ptr %fld.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  store i64 5, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %a.view.len43 = load i64, ptr %a.new, align 8
  %start.gt.len = icmp sgt i64 0, %a.view.len43
  %final.start = select i1 %start.gt.len, i64 %a.view.len43, i64 0
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  %a.view.data44 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off45, 0
  %ovf = extractvalue { i64, i1 } %a.view.off45, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off46

choice.next26:                                    ; preds = %choice.exit
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  store i64 0, ptr %a.new51, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  %call.res72 = call { i1, i64 } @"json::#parse_object_loop"(ptr %0, ptr %a.new51)
  br label %choice.exit24

a.view.off46:                                     ; preds = %choice.case25
  %a.view.data48 = getelementptr i8, ptr %a.view.data44, i64 %sum
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  store ptr %a.view.data48, ptr %a.view.slice, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 4611686018427387904, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %choice.exit24

str_overflow_abort:                               ; preds = %choice.case25
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal { i1, i64 } @"json::#parse_object_loop"(ptr %0, ptr %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %fld.load)
  store i64 %call.res, ptr %fld.gep, align 8
  %fld.load8 = load ptr, ptr %0, align 8
  %str.len.query9 = load i64, ptr %fld.load8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %entry ]
  %val.match = icmp eq i64 %choice.res, 34
  br i1 %val.match, label %choice.case20, label %choice.next21

choice.case:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit19:                                    ; preds = %choice.next21, %a.after
  %choice.res34 = phi { i1, i64 } [ %call.res29, %a.after ], [ %ram.pay, %choice.next21 ]
  ret { i1, i64 } %choice.res34

choice.case20:                                    ; preds = %choice.exit
  %call.res23 = call { i1, i64 } @"json::#parse_string"(ptr %0)
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

choice.next21:                                    ; preds = %choice.exit
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.15.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res, ptr %rec.alloc, align 8
  %rec.fld33 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld33, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %choice.exit19

a.create:                                         ; preds = %choice.case20
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create26 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 128)
  store i64 0, ptr %a.create26, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create26, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case20
  %var.entries.0 = phi ptr [ %a.create26, %a.create ], [ %1, %choice.case20 ]
  %call.res29 = call { i1, i64 } @"json::#parse_object_after_key"(ptr %0, ptr %var.entries.0, { i1, i64 } %call.res23)
  br label %choice.exit19
}

define internal { i1, i64 } @"json::#parse_object_after_key"(ptr %0, ptr %1, { i1, i64 } %2) #3 {
entry:
  %ram.tag = extractvalue { i1, i64 } %2, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %2, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  %tag.id = load i64, ptr %pay.ptr, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %entry
  %ram.pay67 = extractvalue { i1, i64 } %2, 1
  %pay.ptr68 = inttoptr i64 %ram.pay67 to ptr
  %ram.pay72 = insertvalue { i1, i64 } zeroinitializer, i64 %ram.pay67, 1
  br label %choice.exit

choice.exit:                                      ; preds = %a.after, %choice.else25, %choice.next, %choice.else
  %choice.res73 = phi { i1, i64 } [ %ram.pay72, %choice.else ], [ %ram.pay65, %choice.next ], [ %call.res40, %a.after ], [ %ram.pay45, %choice.else25 ]
  ret { i1, i64 } %choice.res73

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %fld.load)
  store i64 %call.res, ptr %fld.gep, align 8
  %fld.load12 = load ptr, ptr %0, align 8
  %str.len.query13 = load i64, ptr %fld.load12, align 8
  %str.len.query14 = and i64 %str.len.query13, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query14
  br i1 %cmptmp, label %and.109.then, label %choice.else25

choice.next:                                      ; preds = %choice.then
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 56)
  store i64 400, ptr %err.alloc47, align 8
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
  store i64 0, ptr %rec.alloc55, align 8
  %rec.fld57 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc55, i32 0, i32 1
  store i64 0, ptr %rec.fld57, align 8
  %ctx.059 = load i64, ptr %rec.alloc55, align 8
  store i64 %ctx.059, ptr %err.ctx.gep53, align 8
  %err.ctx1.gep63 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep53, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep63, align 8
  %ptr.to.i6464 = ptrtoint ptr %err.alloc47 to i64
  %ram.pay65 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i6464, 1
  br label %choice.exit

and.109.then:                                     ; preds = %choice.case
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load12, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query14
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.109.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data20, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp22 = icmp eq i64 %s.byte.val, 58
  br i1 %cmptmp22, label %choice.then24, label %choice.else25

idx_oob:                                          ; preds = %and.109.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then24:                                    ; preds = %idx_ok
  %fld.load30 = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load30, 1
  store i64 %addtmp, ptr %fld.gep, align 8
  %call.res33 = call { i1, i64 } @"json::#parse_value"(ptr %0)
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

choice.else25:                                    ; preds = %choice.case, %idx_ok
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.13.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res, ptr %rec.alloc, align 8
  %rec.fld44 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld44, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay45 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %choice.exit

a.create:                                         ; preds = %choice.then24
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create36 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 128)
  store i64 0, ptr %a.create36, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create36, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create36, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then24
  %var.entries.0 = phi ptr [ %a.create36, %a.create ], [ %1, %choice.then24 ]
  %call.res40 = call { i1, i64 } @"json::#parse_object_after_val"(ptr %0, ptr %var.entries.0, ptr %payload.ptr, { i1, i64 } %call.res33)
  br label %choice.exit
}

define internal { i1, i64 } @"json::#parse_object_after_val"(ptr %0, ptr %1, ptr %2, { i1, i64 } %3) #3 {
entry:
  %ram.tag = extractvalue { i1, i64 } %3, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %3, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %2, ptr %rec.alloc, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %pay.ptr, ptr %rec.fld3, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.check

choice.else:                                      ; preds = %entry
  %ram.pay169 = extractvalue { i1, i64 } %3, 1
  %pay.ptr170 = inttoptr i64 %ram.pay169 to ptr
  %ram.pay174 = insertvalue { i1, i64 } zeroinitializer, i64 %ram.pay169, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.case120, %a.after136, %a.view.off71, %choice.next77, %choice.else
  %choice.res175 = phi { i1, i64 } [ %ram.pay174, %choice.else ], [ %ram.pay75, %a.view.off71 ], [ %ram.pay167, %choice.next77 ], [ %ram.pay130, %choice.case120 ], [ %call.res145, %a.after136 ]
  ret { i1, i64 } %choice.res175

a.create:                                         ; preds = %choice.then
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  store i64 0, ptr %a.create5, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create5, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.check

a.check:                                          ; preds = %choice.then, %a.create
  %var.entries.0 = phi ptr [ %a.create5, %a.create ], [ %1, %choice.then ]
  %a.len7 = load i64, ptr %var.entries.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.entries.0, i32 0, i32 2
  %a.cap8 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len7, %a.cap8
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.entries.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.entries.0, i32 0, i32 1
  %a.cur.data9 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len10 = load i64, ptr %var.entries.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data9, i64 %a.cur.len10
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len10, 1
  store i64 %a.next.len, ptr %var.entries.0, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %fld.load)
  store i64 %call.res, ptr %fld.gep, align 8
  %fld.load20 = load ptr, ptr %0, align 8
  %str.len.query21 = load i64, ptr %fld.load20, align 8
  %str.len.query22 = and i64 %str.len.query21, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query22
  br i1 %cmptmp, label %choice.case, label %choice.exit17

choice.exit17:                                    ; preds = %a.store, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %a.store ]
  switch i64 %choice.res, label %choice.next77 [
    i64 125, label %choice.case32
    i64 44, label %choice.case76
  ]

choice.case:                                      ; preds = %a.store
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load20, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query22
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data28, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit17

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case32:                                    ; preds = %choice.exit17
  %fld.load37 = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load37, 1
  store i64 %addtmp, ptr %fld.gep, align 8
  %a.len.query52 = load i64, ptr %var.entries.0, align 8
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 16)
  store i64 5, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %a.view.len68 = load i64, ptr %var.entries.0, align 8
  %start.gt.len = icmp sgt i64 0, %a.view.len68
  %final.start = select i1 %start.gt.len, i64 %a.view.len68, i64 0
  %end.is_neg = icmp slt i64 %a.len.query52, 0
  %rel.end = add i64 %a.view.len68, %a.len.query52
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %a.len.query52
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len68
  %final.end = select i1 %end.gt.len, i64 %a.view.len68, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.entries.0, i32 0, i32 1
  %a.view.data69 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off70 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off70, 0
  %ovf = extractvalue { i64, i1 } %a.view.off70, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off71

a.view.off71:                                     ; preds = %choice.case32
  %a.view.data73 = getelementptr i8, ptr %a.view.data69, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 16)
  store ptr %a.view.data73, ptr %a.view.slice, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay75 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %choice.exit

str_overflow_abort:                               ; preds = %choice.case32
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case76:                                    ; preds = %choice.exit17
  %fld.load82 = load i64, ptr %fld.gep, align 8
  %addtmp83 = add i64 %fld.load82, 1
  store i64 %addtmp83, ptr %fld.gep, align 8
  %call.res89 = call i64 @"json::#skip_ws"(ptr %0, i64 %addtmp83)
  %fld.load96 = load ptr, ptr %0, align 8
  %str.len.query98 = load i64, ptr %fld.load96, align 8
  %str.len.query99 = and i64 %str.len.query98, 281474976710655
  %cmptmp100 = icmp slt i64 %call.res89, %str.len.query99
  br i1 %cmptmp100, label %choice.case92, label %choice.exit91

choice.next77:                                    ; preds = %choice.exit17
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 56)
  store i64 400, ptr %err.alloc148, align 8
  %err.msg.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 1
  store ptr @str.12.struct, ptr %err.msg.gep150, align 8
  %err.file.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep151, align 8
  %err.line.gep152 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 3
  store i64 0, ptr %err.line.gep152, align 8
  %err.col.gep153 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 4
  store i64 0, ptr %err.col.gep153, align 8
  %err.ctx.gep154 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc148, i32 0, i32 5
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res, ptr %rec.alloc157, align 8
  %rec.fld159 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc157, i32 0, i32 1
  store i64 0, ptr %rec.fld159, align 8
  %ctx.0161 = load i64, ptr %rec.alloc157, align 8
  store i64 %ctx.0161, ptr %err.ctx.gep154, align 8
  %err.ctx1.gep165 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep154, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep165, align 8
  %ptr.to.i64166 = ptrtoint ptr %err.alloc148 to i64
  %ram.pay167 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64166, 1
  br label %choice.exit

choice.exit91:                                    ; preds = %choice.case76, %idx_ok111
  %choice.res117 = phi i64 [ %s.byte.val116, %idx_ok111 ], [ -1, %choice.case76 ]
  %val.match122 = icmp eq i64 %choice.res117, 125
  br i1 %val.match122, label %choice.case120, label %a.after136

choice.case92:                                    ; preds = %choice.case76
  %s.read.data107 = getelementptr inbounds { i64, ptr }, ptr %fld.load96, i32 0, i32 1
  %s.read.data108 = load ptr, ptr %s.read.data107, align 8
  %idx.oob110 = icmp uge i64 %call.res89, %str.len.query99
  br i1 %idx.oob110, label %idx_oob112, label %idx_ok111

idx_ok111:                                        ; preds = %choice.case92
  %s.byte.gep114 = getelementptr i8, ptr %s.read.data108, i64 %call.res89
  %s.byte115 = load i8, ptr %s.byte.gep114, align 1
  %s.byte.val116 = zext i8 %s.byte115 to i64
  br label %choice.exit91

idx_oob112:                                       ; preds = %choice.case92
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case120:                                   ; preds = %choice.exit91
  %arena.cur123 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.11.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res89, ptr %rec.alloc126, align 8
  %rec.fld128 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc126, i32 0, i32 1
  store i64 0, ptr %rec.fld128, align 8
  %ctx.0 = load i64, ptr %rec.alloc126, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64129 = ptrtoint ptr %err.alloc to i64
  %ram.pay130 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64129, 1
  br label %choice.exit

a.after136:                                       ; preds = %choice.exit91
  %call.res145 = call { i1, i64 } @"json::#parse_object_loop"(ptr %0, ptr %var.entries.0)
  br label %choice.exit
}

define internal void @dva_array_grow(ptr %0) #3 {
entry:
  %a.len1 = load i64, ptr %0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  call void @dva_abort_arr_overflow_msg()
  unreachable

a.grow.bytes8:                                    ; preds = %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  store ptr %a.new.buf, ptr %a.data, align 8
  store i64 %a.new.cap, ptr %a.cap, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable
}

define internal { i1, i64 } @"json::#parse_lit"(ptr %0, i1 %1, i64 %2) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %fld.load)
  store i64 %call.res, ptr %fld.gep, align 8
  %str.0.struct.str.1.struct = select i1 %1, ptr @str.0.struct, ptr @str.1.struct
  %addtmp = add i64 %call.res, %2
  %fld.load10 = load ptr, ptr %0, align 8
  %str.len.query11 = load i64, ptr %fld.load10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %cmptmp = icmp sle i64 %addtmp, %str.len.query12
  br i1 %cmptmp, label %and.110.then, label %choice.else30

and.110.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %call.res, 0
  %rel.start = add i64 %str.len.query12, %call.res
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %call.res
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query12
  %final.start = select i1 %start.gt.len, i64 %str.len.query12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %str.len.query12, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %str.len.query12
  %final.end = select i1 %end.gt.len, i64 %str.len.query12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data18, i64 %final.start
  %cmp.str24 = load i64, ptr %str.0.struct.str.1.struct, align 8
  %cmp.str25 = and i64 %cmp.str24, 281474976710655
  %cmp.str26 = getelementptr inbounds { i64, ptr }, ptr %str.0.struct.str.1.struct, i32 0, i32 1
  %cmp.str27 = load ptr, ptr %cmp.str26, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str25
  br i1 %eq.len, label %str.eq.then, label %choice.else30

str.eq.then:                                      ; preds = %and.110.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str27, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then29, label %choice.else30

choice.then29:                                    ; preds = %str.eq.then
  store i64 %addtmp, ptr %fld.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 2, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i1 %1, ptr %enum.pay.alloc, align 1
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %choice.exit31

choice.else30:                                    ; preds = %and.110.then, %entry, %str.eq.then
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.16.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res, ptr %rec.alloc, align 8
  %rec.fld42 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld42, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i6443 = ptrtoint ptr %err.alloc to i64
  %ram.pay44 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i6443, 1
  br label %choice.exit31

choice.exit31:                                    ; preds = %choice.else30, %choice.then29
  %choice.res45 = phi { i1, i64 } [ %ram.pay, %choice.then29 ], [ %ram.pay44, %choice.else30 ]
  ret { i1, i64 } %choice.res45
}

declare i32 @memcmp(ptr, ptr, i64) #3

define internal { i1, i64 } @"json::#parse_null"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %fld.load)
  store i64 %call.res, ptr %fld.gep, align 8
  %addtmp = add i64 %call.res, 4
  %fld.load8 = load ptr, ptr %0, align 8
  %str.len.query9 = load i64, ptr %fld.load8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %cmptmp = icmp sle i64 %addtmp, %str.len.query10
  br i1 %cmptmp, label %and.111.then, label %choice.else

and.111.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %call.res, 0
  %rel.start = add i64 %str.len.query10, %call.res
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %call.res
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query10
  %final.start = select i1 %start.gt.len, i64 %str.len.query10, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %str.len.query10, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %str.len.query10
  %final.end = select i1 %end.gt.len, i64 %str.len.query10, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data16, i64 %final.start
  %eq.len = icmp eq i64 %view.len, 4
  br i1 %eq.len, label %str.eq.then, label %choice.else

str.eq.then:                                      ; preds = %and.111.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr @str.17, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.else

choice.then:                                      ; preds = %str.eq.then
  store i64 %addtmp, ptr %fld.gep, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %and.111.then, %entry, %str.eq.then
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.18.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res, ptr %rec.alloc, align 8
  %rec.fld30 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld30, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i6431 = ptrtoint ptr %err.alloc to i64
  %ram.pay32 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i6431, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %ram.pay32, %choice.else ]
  ret { i1, i64 } %choice.res
}

define internal { i1, i64 } @"json::#parse_number"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %fld.load)
  store i64 %call.res, ptr %fld.gep, align 8
  %fld.load8 = load ptr, ptr %0, align 8
  %str.len.query9 = load i64, ptr %fld.load8, align 8
  %str.len.query10 = and i64 %str.len.query9, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query10
  br i1 %cmptmp, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %entry ]
  %cmptmp22 = icmp sge i64 %choice.res, 48
  %cmptmp23 = icmp sle i64 %choice.res, 57
  %and.112.phi = select i1 %cmptmp22, i1 %cmptmp23, i1 false
  %val.match = icmp eq i64 %choice.res, 45
  %case.or = or i1 %and.112.phi, %val.match
  br i1 %case.or, label %choice.then, label %choice.else

choice.case:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then:                                      ; preds = %choice.exit
  %addtmp = add i64 %call.res, 1
  %"var.neg'.0" = select i1 %val.match, i1 true, i1 false
  %"var.p'.0" = select i1 %val.match, i64 %addtmp, i64 %call.res
  %fld.load36 = load ptr, ptr %0, align 8
  %str.len.query38 = load i64, ptr %fld.load36, align 8
  %str.len.query39 = and i64 %str.len.query38, 281474976710655
  %cmptmp40 = icmp slt i64 %"var.p'.0", %str.len.query39
  br i1 %cmptmp40, label %and.113.then, label %and.113.exit

choice.else:                                      ; preds = %choice.exit
  %arena.cur475 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc476 = call ptr @dva_arena_alloc(ptr %arena.cur475, i64 56)
  store i64 400, ptr %err.alloc476, align 8
  %err.msg.gep478 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 1
  store ptr @str.21.struct, ptr %err.msg.gep478, align 8
  %err.file.gep479 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep479, align 8
  %err.line.gep480 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 3
  store i64 0, ptr %err.line.gep480, align 8
  %err.col.gep481 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 4
  store i64 0, ptr %err.col.gep481, align 8
  %err.ctx.gep482 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc476, i32 0, i32 5
  %arena.cur484 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc485 = call ptr @dva_arena_alloc(ptr %arena.cur484, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res, ptr %rec.alloc485, align 8
  %rec.fld487 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc485, i32 0, i32 1
  store i64 0, ptr %rec.fld487, align 8
  %ctx.0489 = load i64, ptr %rec.alloc485, align 8
  store i64 %ctx.0489, ptr %err.ctx.gep482, align 8
  %err.ctx1.gep493 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep482, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep493, align 8
  %ptr.to.i64494 = ptrtoint ptr %err.alloc476 to i64
  %ram.pay495 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64494, 1
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.then434, %choice.else435, %choice.then72, %choice.else
  %choice.res496 = phi { i1, i64 } [ %ram.pay495, %choice.else ], [ %ram.pay, %choice.then72 ], [ %ram.pay451, %choice.then434 ], [ %ram.pay472, %choice.else435 ]
  ret { i1, i64 } %choice.res496

and.113.then:                                     ; preds = %choice.then
  %s.read.data47 = getelementptr inbounds { i64, ptr }, ptr %fld.load36, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data47, align 8
  %idx.oob50 = icmp uge i64 %"var.p'.0", %str.len.query39
  br i1 %idx.oob50, label %idx_oob52, label %idx_ok51

and.113.exit:                                     ; preds = %choice.then, %idx_ok51
  %and.113.phi = phi i1 [ %cmptmp57, %idx_ok51 ], [ false, %choice.then ]
  br i1 %and.113.phi, label %and.114.then, label %and.114.exit

idx_ok51:                                         ; preds = %and.113.then
  %s.byte.gep54 = getelementptr i8, ptr %s.read.data48, i64 %"var.p'.0"
  %s.byte55 = load i8, ptr %s.byte.gep54, align 1
  %s.byte.val56 = zext i8 %s.byte55 to i64
  %cmptmp57 = icmp eq i64 %s.byte.val56, 48
  br label %and.113.exit

idx_oob52:                                        ; preds = %and.113.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.114.then:                                     ; preds = %and.113.exit
  %addtmp59 = add i64 %"var.p'.0", 1
  %fld.load62 = load ptr, ptr %0, align 8
  %str.len.query64 = load i64, ptr %fld.load62, align 8
  %str.len.query65 = and i64 %str.len.query64, 281474976710655
  %cmptmp66 = icmp slt i64 %addtmp59, %str.len.query65
  br label %and.114.exit

and.114.exit:                                     ; preds = %and.113.exit, %and.114.then
  %and.114.phi = phi i1 [ %cmptmp66, %and.114.then ], [ %and.113.phi, %and.113.exit ]
  br i1 %and.114.phi, label %and.115.then, label %and.115.exit

and.115.then:                                     ; preds = %and.114.exit
  %addtmp69 = add i64 %"var.p'.0", 1
  %call.res70 = call i1 @"json::#is_digit_at"(ptr %0, i64 %addtmp69)
  br label %and.115.exit

and.115.exit:                                     ; preds = %and.114.exit, %and.115.then
  %and.115.phi = phi i1 [ %call.res70, %and.115.then ], [ %and.114.phi, %and.114.exit ]
  br i1 %and.115.phi, label %choice.then72, label %loop.header.116

choice.then72:                                    ; preds = %and.115.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.19.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %"var.p'.0", ptr %rec.alloc, align 8
  %rec.fld77 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld77, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %err.alloc to i64
  %ram.pay = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %choice.exit26

loop.header.116:                                  ; preds = %and.115.exit, %choice.exit121
  %loop.idx.116.0 = phi i64 [ %loop.next, %choice.exit121 ], [ 0, %and.115.exit ]
  %"var.exp10'.0" = phi i64 [ %"var.exp10'.1", %choice.exit121 ], [ 0, %and.115.exit ]
  %"var.fv'.0" = phi double [ %"var.fv'.1", %choice.exit121 ], [ 0.000000e+00, %and.115.exit ]
  %"var.sig_digits'.0" = phi i64 [ %"var.sig_digits'.1", %choice.exit121 ], [ 0, %and.115.exit ]
  %"var.had_int'.0" = phi i1 [ true, %choice.exit121 ], [ false, %and.115.exit ]
  %"var.p2'.0" = phi i64 [ %addtmp134, %choice.exit121 ], [ %"var.p'.0", %and.115.exit ]
  %fld.load82 = load ptr, ptr %0, align 8
  %str.len.query84 = load i64, ptr %fld.load82, align 8
  %str.len.query85 = and i64 %str.len.query84, 281474976710655
  %cmptmp86 = icmp sge i64 %"var.p2'.0", %str.len.query85
  br i1 %cmptmp86, label %loop.exit.116, label %choice.exit88

loop.exit.116:                                    ; preds = %idx_ok99, %loop.header.116
  %fld.load138 = load ptr, ptr %0, align 8
  %str.len.query140 = load i64, ptr %fld.load138, align 8
  %str.len.query141 = and i64 %str.len.query140, 281474976710655
  %cmptmp142 = icmp slt i64 %"var.p2'.0", %str.len.query141
  br i1 %cmptmp142, label %and.119.then, label %and.119.exit

choice.exit88:                                    ; preds = %loop.header.116
  %s.read.data95 = getelementptr inbounds { i64, ptr }, ptr %fld.load82, i32 0, i32 1
  %s.read.data96 = load ptr, ptr %s.read.data95, align 8
  %idx.oob98 = icmp uge i64 %"var.p2'.0", %str.len.query85
  br i1 %idx.oob98, label %idx_oob100, label %idx_ok99

idx_ok99:                                         ; preds = %choice.exit88
  %s.byte.gep102 = getelementptr i8, ptr %s.read.data96, i64 %"var.p2'.0"
  %s.byte103 = load i8, ptr %s.byte.gep102, align 1
  %s.byte.val104 = zext i8 %s.byte103 to i64
  %cmptmp109 = icmp sge i64 %s.byte.val104, 48
  %cmptmp110 = icmp sle i64 %s.byte.val104, 57
  %and.117.phi = select i1 %cmptmp109, i1 %cmptmp110, i1 false
  %choice.res111 = select i1 %and.117.phi, i1 true, i1 false
  br i1 %choice.res111, label %choice.then112, label %loop.exit.116

idx_oob100:                                       ; preds = %choice.exit88
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then112:                                   ; preds = %idx_ok99
  %subtmp = sub i64 %s.byte.val104, 48
  %cmptmp117 = icmp sgt i64 %"var.sig_digits'.0", 0
  %cmptmp119 = icmp ne i64 %subtmp, 0
  %or.118.phi = select i1 %cmptmp117, i1 true, i1 %cmptmp119
  br i1 %or.118.phi, label %choice.then120, label %choice.exit121

choice.then120:                                   ; preds = %choice.then112
  %cmptmp123 = icmp slt i64 %"var.sig_digits'.0", 17
  br i1 %cmptmp123, label %choice.then124, label %choice.else125

choice.exit121:                                   ; preds = %choice.then124, %choice.else125, %choice.then112
  %"var.exp10'.1" = phi i64 [ %"var.exp10'.0", %choice.then112 ], [ %"var.exp10'.0", %choice.then124 ], [ %addtmp132, %choice.else125 ]
  %"var.fv'.1" = phi double [ %"var.fv'.0", %choice.then112 ], [ %faddtmp, %choice.then124 ], [ %"var.fv'.0", %choice.else125 ]
  %"var.sig_digits'.1" = phi i64 [ %"var.sig_digits'.0", %choice.then112 ], [ %addtmp130, %choice.then124 ], [ %"var.sig_digits'.0", %choice.else125 ]
  %addtmp134 = add i64 %"var.p2'.0", 1
  %loop.next = add i64 %loop.idx.116.0, 1
  br label %loop.header.116

choice.then124:                                   ; preds = %choice.then120
  %fmultmp = fmul double %"var.fv'.0", 1.000000e+01
  %cast.sitofp = sitofp i64 %subtmp to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  %addtmp130 = add i64 %"var.sig_digits'.0", 1
  br label %choice.exit121

choice.else125:                                   ; preds = %choice.then120
  %addtmp132 = add i64 %"var.exp10'.0", 1
  br label %choice.exit121

and.119.then:                                     ; preds = %loop.exit.116
  %s.read.data149 = getelementptr inbounds { i64, ptr }, ptr %fld.load138, i32 0, i32 1
  %s.read.data150 = load ptr, ptr %s.read.data149, align 8
  %idx.oob152 = icmp uge i64 %"var.p2'.0", %str.len.query141
  br i1 %idx.oob152, label %idx_oob154, label %idx_ok153

and.119.exit:                                     ; preds = %loop.exit.116, %idx_ok153
  %and.119.phi = phi i1 [ %cmptmp159, %idx_ok153 ], [ false, %loop.exit.116 ]
  br i1 %and.119.phi, label %choice.then161, label %choice.exit162

idx_ok153:                                        ; preds = %and.119.then
  %s.byte.gep156 = getelementptr i8, ptr %s.read.data150, i64 %"var.p2'.0"
  %s.byte157 = load i8, ptr %s.byte.gep156, align 1
  %s.byte.val158 = zext i8 %s.byte157 to i64
  %cmptmp159 = icmp eq i64 %s.byte.val158, 46
  br label %and.119.exit

idx_oob154:                                       ; preds = %and.119.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then161:                                   ; preds = %and.119.exit
  %addtmp164 = add i64 %"var.p2'.0", 1
  br label %loop.header.120

choice.exit162:                                   ; preds = %idx_ok189, %loop.header.120, %and.119.exit
  %"var.had_frac'.0" = phi i1 [ false, %and.119.exit ], [ %"var.had_frac'.1", %loop.header.120 ], [ %"var.had_frac'.1", %idx_ok189 ]
  %"var.exp10'.3" = phi i64 [ %"var.exp10'.0", %and.119.exit ], [ %"var.exp10'.4", %loop.header.120 ], [ %"var.exp10'.4", %idx_ok189 ]
  %"var.fv'.3" = phi double [ %"var.fv'.0", %and.119.exit ], [ %"var.fv'.4", %loop.header.120 ], [ %"var.fv'.4", %idx_ok189 ]
  %"var.p2'.1" = phi i64 [ %"var.p2'.0", %and.119.exit ], [ %"var.p2'.2", %loop.header.120 ], [ %"var.p2'.2", %idx_ok189 ]
  %fld.load238 = load ptr, ptr %0, align 8
  %str.len.query240 = load i64, ptr %fld.load238, align 8
  %str.len.query241 = and i64 %str.len.query240, 281474976710655
  %cmptmp242 = icmp slt i64 %"var.p2'.1", %str.len.query241
  br i1 %cmptmp242, label %and.123.then, label %and.123.exit

loop.header.120:                                  ; preds = %choice.exit215, %choice.then161
  %loop.idx.120.0 = phi i64 [ 0, %choice.then161 ], [ %loop.next234, %choice.exit215 ]
  %"var.had_frac'.1" = phi i1 [ false, %choice.then161 ], [ true, %choice.exit215 ]
  %"var.exp10'.4" = phi i64 [ %"var.exp10'.0", %choice.then161 ], [ %"var.exp10'.5", %choice.exit215 ]
  %"var.fv'.4" = phi double [ %"var.fv'.0", %choice.then161 ], [ %"var.fv'.5", %choice.exit215 ]
  %"var.sig_digits'.3" = phi i64 [ %"var.sig_digits'.0", %choice.then161 ], [ %"var.sig_digits'.4", %choice.exit215 ]
  %"var.p2'.2" = phi i64 [ %addtmp164, %choice.then161 ], [ %addtmp232, %choice.exit215 ]
  %fld.load172 = load ptr, ptr %0, align 8
  %str.len.query174 = load i64, ptr %fld.load172, align 8
  %str.len.query175 = and i64 %str.len.query174, 281474976710655
  %cmptmp176 = icmp sge i64 %"var.p2'.2", %str.len.query175
  br i1 %cmptmp176, label %choice.exit162, label %choice.exit178

choice.exit178:                                   ; preds = %loop.header.120
  %s.read.data185 = getelementptr inbounds { i64, ptr }, ptr %fld.load172, i32 0, i32 1
  %s.read.data186 = load ptr, ptr %s.read.data185, align 8
  %idx.oob188 = icmp uge i64 %"var.p2'.2", %str.len.query175
  br i1 %idx.oob188, label %idx_oob190, label %idx_ok189

idx_ok189:                                        ; preds = %choice.exit178
  %s.byte.gep192 = getelementptr i8, ptr %s.read.data186, i64 %"var.p2'.2"
  %s.byte193 = load i8, ptr %s.byte.gep192, align 1
  %s.byte.val194 = zext i8 %s.byte193 to i64
  %cmptmp200 = icmp sge i64 %s.byte.val194, 48
  %cmptmp201 = icmp sle i64 %s.byte.val194, 57
  %and.121.phi = select i1 %cmptmp200, i1 %cmptmp201, i1 false
  %choice.res202 = select i1 %and.121.phi, i1 true, i1 false
  br i1 %choice.res202, label %choice.then203, label %choice.exit162

idx_oob190:                                       ; preds = %choice.exit178
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then203:                                   ; preds = %idx_ok189
  %subtmp207 = sub i64 %s.byte.val194, 48
  %cmptmp210 = icmp eq i64 %"var.sig_digits'.3", 0
  %cmptmp212 = icmp eq i64 %subtmp207, 0
  %and.122.phi = select i1 %cmptmp210, i1 %cmptmp212, i1 false
  br i1 %and.122.phi, label %choice.then213, label %choice.else214

choice.then213:                                   ; preds = %choice.then203
  %subtmp217 = sub i64 %"var.exp10'.4", 1
  br label %choice.exit215

choice.else214:                                   ; preds = %choice.then203
  %cmptmp219 = icmp slt i64 %"var.sig_digits'.3", 17
  br i1 %cmptmp219, label %choice.then220, label %choice.exit215

choice.exit215:                                   ; preds = %choice.else214, %choice.then220, %choice.then213
  %"var.exp10'.5" = phi i64 [ %subtmp217, %choice.then213 ], [ %subtmp230, %choice.then220 ], [ %"var.exp10'.4", %choice.else214 ]
  %"var.fv'.5" = phi double [ %"var.fv'.4", %choice.then213 ], [ %faddtmp226, %choice.then220 ], [ %"var.fv'.4", %choice.else214 ]
  %"var.sig_digits'.4" = phi i64 [ %"var.sig_digits'.3", %choice.then213 ], [ %addtmp228, %choice.then220 ], [ %"var.sig_digits'.3", %choice.else214 ]
  %addtmp232 = add i64 %"var.p2'.2", 1
  %loop.next234 = add i64 %loop.idx.120.0, 1
  br label %loop.header.120

choice.then220:                                   ; preds = %choice.else214
  %fmultmp223 = fmul double %"var.fv'.4", 1.000000e+01
  %cast.sitofp225 = sitofp i64 %subtmp207 to double
  %faddtmp226 = fadd double %fmultmp223, %cast.sitofp225
  %addtmp228 = add i64 %"var.sig_digits'.3", 1
  %subtmp230 = sub i64 %"var.exp10'.4", 1
  br label %choice.exit215

and.123.then:                                     ; preds = %choice.exit162
  %s.read.data249 = getelementptr inbounds { i64, ptr }, ptr %fld.load238, i32 0, i32 1
  %s.read.data250 = load ptr, ptr %s.read.data249, align 8
  %idx.oob252 = icmp uge i64 %"var.p2'.1", %str.len.query241
  br i1 %idx.oob252, label %idx_oob254, label %idx_ok253

and.123.exit:                                     ; preds = %idx_ok253, %choice.exit162
  %and.123.phi = phi i1 [ false, %choice.exit162 ], [ %2, %idx_ok253 ]
  br i1 %and.123.phi, label %choice.then267, label %choice.exit268

idx_ok253:                                        ; preds = %and.123.then
  %s.byte.gep256 = getelementptr i8, ptr %s.read.data250, i64 %"var.p2'.1"
  %s.byte257 = load i8, ptr %s.byte.gep256, align 1
  %s.byte.val258 = zext i8 %s.byte257 to i64
  %1 = sub i64 %s.byte.val258, 69
  %switch.and = and i64 %1, -33
  %switch.selectcmp = icmp eq i64 %switch.and, 0
  %2 = select i1 %switch.selectcmp, i1 true, i1 false
  br label %and.123.exit

idx_oob254:                                       ; preds = %and.123.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then267:                                   ; preds = %and.123.exit
  %addtmp270 = add i64 %"var.p2'.1", 1
  %fld.load277 = load ptr, ptr %0, align 8
  %str.len.query279 = load i64, ptr %fld.load277, align 8
  %str.len.query280 = and i64 %str.len.query279, 281474976710655
  %cmptmp281 = icmp slt i64 %addtmp270, %str.len.query280
  br i1 %cmptmp281, label %choice.case273, label %choice.exit272

choice.exit268:                                   ; preds = %loop.exit.124, %and.123.exit
  %"var.had_exp'.0" = phi i1 [ %"var.had_exp_digits'.0", %loop.exit.124 ], [ false, %and.123.exit ]
  %"var.exp10'.7" = phi i64 [ %choice.res385, %loop.exit.124 ], [ %"var.exp10'.3", %and.123.exit ]
  %"var.p2'.3" = phi i64 [ %"var.p3'.2", %loop.exit.124 ], [ %"var.p2'.1", %and.123.exit ]
  %fcmptmp = fcmp une double %"var.fv'.3", 0.000000e+00
  br i1 %fcmptmp, label %choice.then387, label %choice.exit388

choice.exit272:                                   ; preds = %choice.then267, %idx_ok292
  %choice.res298 = phi i64 [ %s.byte.val297, %idx_ok292 ], [ -1, %choice.then267 ]
  %val.match303 = icmp eq i64 %choice.res298, 45
  %addtmp305 = add i64 %addtmp270, 1
  %"var.eneg'.0" = select i1 %val.match303, i1 true, i1 false
  %"var.p3'.0" = select i1 %val.match303, i64 %addtmp305, i64 %addtmp270
  %cmptmp307 = icmp eq i64 %choice.res298, 43
  %addtmp312 = add i64 %"var.p3'.0", 1
  %"var.p3'.1" = select i1 %cmptmp307, i64 %addtmp312, i64 %"var.p3'.0"
  br label %loop.header.124

choice.case273:                                   ; preds = %choice.then267
  %s.read.data288 = getelementptr inbounds { i64, ptr }, ptr %fld.load277, i32 0, i32 1
  %s.read.data289 = load ptr, ptr %s.read.data288, align 8
  %idx.oob291 = icmp uge i64 %addtmp270, %str.len.query280
  br i1 %idx.oob291, label %idx_oob293, label %idx_ok292

idx_ok292:                                        ; preds = %choice.case273
  %s.byte.gep295 = getelementptr i8, ptr %s.read.data289, i64 %addtmp270
  %s.byte296 = load i8, ptr %s.byte.gep295, align 1
  %s.byte.val297 = zext i8 %s.byte296 to i64
  br label %choice.exit272

idx_oob293:                                       ; preds = %choice.case273
  call void @dva_abort_str_oob_msg()
  unreachable

loop.header.124:                                  ; preds = %choice.then350, %choice.exit272
  %"var.ev'.0" = phi i64 [ 0, %choice.exit272 ], [ %"var.ev'.1", %choice.then350 ]
  %"var.over_exp'.0" = phi i1 [ false, %choice.exit272 ], [ %"var.over_exp'.1", %choice.then350 ]
  %"var.had_exp_digits'.0" = phi i1 [ false, %choice.exit272 ], [ true, %choice.then350 ]
  %loop.idx.124.0 = phi i64 [ 0, %choice.exit272 ], [ %loop.next366, %choice.then350 ]
  %"var.p3'.2" = phi i64 [ %"var.p3'.1", %choice.exit272 ], [ %addtmp364, %choice.then350 ]
  %fld.load320 = load ptr, ptr %0, align 8
  %str.len.query322 = load i64, ptr %fld.load320, align 8
  %str.len.query323 = and i64 %str.len.query322, 281474976710655
  %cmptmp324 = icmp sge i64 %"var.p3'.2", %str.len.query323
  br i1 %cmptmp324, label %loop.exit.124, label %choice.exit326

loop.exit.124:                                    ; preds = %idx_ok337, %loop.header.124
  %".var.ev'.0" = select i1 %"var.over_exp'.0", i64 1000000, i64 %"var.ev'.0"
  %subtmp381 = sub i64 %"var.exp10'.3", %".var.ev'.0"
  %addtmp384 = add i64 %"var.exp10'.3", %".var.ev'.0"
  %choice.res385 = select i1 %"var.eneg'.0", i64 %subtmp381, i64 %addtmp384
  br label %choice.exit268

choice.exit326:                                   ; preds = %loop.header.124
  %s.read.data333 = getelementptr inbounds { i64, ptr }, ptr %fld.load320, i32 0, i32 1
  %s.read.data334 = load ptr, ptr %s.read.data333, align 8
  %idx.oob336 = icmp uge i64 %"var.p3'.2", %str.len.query323
  br i1 %idx.oob336, label %idx_oob338, label %idx_ok337

idx_ok337:                                        ; preds = %choice.exit326
  %s.byte.gep340 = getelementptr i8, ptr %s.read.data334, i64 %"var.p3'.2"
  %s.byte341 = load i8, ptr %s.byte.gep340, align 1
  %s.byte.val342 = zext i8 %s.byte341 to i64
  %cmptmp347 = icmp sge i64 %s.byte.val342, 48
  %cmptmp348 = icmp sle i64 %s.byte.val342, 57
  %and.125.phi = select i1 %cmptmp347, i1 %cmptmp348, i1 false
  %choice.res349 = select i1 %and.125.phi, i1 true, i1 false
  br i1 %choice.res349, label %choice.then350, label %loop.exit.124

idx_oob338:                                       ; preds = %choice.exit326
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then350:                                   ; preds = %idx_ok337
  %subtmp354 = sub i64 %s.byte.val342, 48
  %cmptmp356 = icmp sgt i64 %"var.ev'.0", 1000000
  %multmp = mul i64 %"var.ev'.0", 10
  %addtmp362 = add i64 %multmp, %subtmp354
  %"var.ev'.1" = select i1 %cmptmp356, i64 %"var.ev'.0", i64 %addtmp362
  %"var.over_exp'.1" = select i1 %cmptmp356, i1 true, i1 %"var.over_exp'.0"
  %addtmp364 = add i64 %"var.p3'.2", 1
  %loop.next366 = add i64 %loop.idx.124.0, 1
  br label %loop.header.124

choice.then387:                                   ; preds = %choice.exit268
  %cmptmp390 = icmp slt i64 %"var.exp10'.7", -400
  %cmptmp395 = icmp sgt i64 %"var.exp10'.7", 400
  %".var.exp10'.7" = select i1 %cmptmp395, i64 400, i64 %"var.exp10'.7"
  %choice.res401 = select i1 %cmptmp390, i64 -400, i64 %".var.exp10'.7"
  %cmptmp403 = icmp slt i64 %choice.res401, 0
  %subtmp408 = sub i64 0, %choice.res401
  %choice.res410 = select i1 %cmptmp403, i64 %subtmp408, i64 %choice.res401
  br label %loop.header.126

choice.exit388:                                   ; preds = %loop.header.126, %choice.exit268
  %"var.fv'.7" = phi double [ %"var.fv'.3", %choice.exit268 ], [ %"var.fv'.8", %loop.header.126 ]
  br i1 %"var.had_int'.0", label %and.127.then, label %and.127.exit

loop.header.126:                                  ; preds = %loop.body.126, %choice.then387
  %"var.fv'.8" = phi double [ %"var.fv'.3", %choice.then387 ], [ %choice.res424, %loop.body.126 ]
  %loop.idx.126.0 = phi i64 [ 0, %choice.then387 ], [ %loop.next426, %loop.body.126 ]
  %loop.cond = icmp slt i64 %loop.idx.126.0, %choice.res410
  br i1 %loop.cond, label %loop.body.126, label %choice.exit388

loop.body.126:                                    ; preds = %loop.header.126
  %fdivtmp = fdiv double %"var.fv'.8", 1.000000e+01
  %fmultmp423 = fmul double %"var.fv'.8", 1.000000e+01
  %choice.res424 = select i1 %cmptmp403, double %fdivtmp, double %fmultmp423
  %loop.next426 = add i64 %loop.idx.126.0, 1
  br label %loop.header.126

and.127.then:                                     ; preds = %choice.exit388
  %nottmp = xor i1 %and.119.phi, true
  %".var.had_frac'.0" = select i1 %nottmp, i1 true, i1 %"var.had_frac'.0"
  br label %and.127.exit

and.127.exit:                                     ; preds = %choice.exit388, %and.127.then
  %and.127.phi = phi i1 [ %".var.had_frac'.0", %and.127.then ], [ %"var.had_int'.0", %choice.exit388 ]
  br i1 %and.127.phi, label %and.129.then, label %and.129.exit

and.129.then:                                     ; preds = %and.127.exit
  %nottmp431 = xor i1 %and.123.phi, true
  %".var.had_exp'.0" = select i1 %nottmp431, i1 true, i1 %"var.had_exp'.0"
  br label %and.129.exit

and.129.exit:                                     ; preds = %and.127.exit, %and.129.then
  %and.129.phi = phi i1 [ %".var.had_exp'.0", %and.129.then ], [ %and.127.phi, %and.127.exit ]
  br i1 %and.129.phi, label %choice.then434, label %choice.else435

choice.then434:                                   ; preds = %and.129.exit
  %fsubtmp = fsub double 0.000000e+00, %"var.fv'.7"
  %choice.res443 = select i1 %"var.neg'.0", double %fsubtmp, double %"var.fv'.7"
  store i64 %"var.p2'.3", ptr %fld.gep, align 8
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 16)
  store i64 1, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur449 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur449, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store double %choice.res443, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %ptr.to.i64450 = ptrtoint ptr %enum.alloc to i64
  %ram.pay451 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64450, 1
  br label %choice.exit26

choice.else435:                                   ; preds = %and.129.exit
  %arena.cur452 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc453 = call ptr @dva_arena_alloc(ptr %arena.cur452, i64 56)
  store i64 400, ptr %err.alloc453, align 8
  %err.msg.gep455 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 1
  store ptr @str.20.struct, ptr %err.msg.gep455, align 8
  %err.file.gep456 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep456, align 8
  %err.line.gep457 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 3
  store i64 0, ptr %err.line.gep457, align 8
  %err.col.gep458 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 4
  store i64 0, ptr %err.col.gep458, align 8
  %err.ctx.gep459 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc453, i32 0, i32 5
  %arena.cur461 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc462 = call ptr @dva_arena_alloc(ptr %arena.cur461, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %"var.p'.0", ptr %rec.alloc462, align 8
  %rec.fld464 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc462, i32 0, i32 1
  store i64 0, ptr %rec.fld464, align 8
  %ctx.0466 = load i64, ptr %rec.alloc462, align 8
  store i64 %ctx.0466, ptr %err.ctx.gep459, align 8
  %err.ctx1.gep470 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep459, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep470, align 8
  %ptr.to.i64471 = ptrtoint ptr %err.alloc453 to i64
  %ram.pay472 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64471, 1
  br label %choice.exit26
}

define internal { i1, i64 } @"json::#parse_array_after_value"(ptr %0, ptr %1, { i1, i64 } %2) #3 {
entry:
  %ram.tag = extractvalue { i1, i64 } %2, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %2, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.check

choice.else:                                      ; preds = %entry
  %ram.pay164 = extractvalue { i1, i64 } %2, 1
  %pay.ptr165 = inttoptr i64 %ram.pay164 to ptr
  %ram.pay169 = insertvalue { i1, i64 } zeroinitializer, i64 %ram.pay164, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.case117, %a.after131, %a.view.off68, %choice.next74, %choice.else
  %choice.res170 = phi { i1, i64 } [ %ram.pay169, %choice.else ], [ %ram.pay72, %a.view.off68 ], [ %ram.pay162, %choice.next74 ], [ %ram.pay125, %choice.case117 ], [ %call.res140, %a.after131 ]
  ret { i1, i64 } %choice.res170

a.create:                                         ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  store i64 0, ptr %a.create2, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.check

a.check:                                          ; preds = %choice.then, %a.create
  %var.elems.0 = phi ptr [ %a.create2, %a.create ], [ %1, %choice.then ]
  %a.len4 = load i64, ptr %var.elems.0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.elems.0, i32 0, i32 2
  %a.cap5 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len4, %a.cap5
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.elems.0)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.elems.0, i32 0, i32 1
  %a.cur.data6 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len7 = load i64, ptr %var.elems.0, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data6, i64 %a.cur.len7
  store i64 %ram.pay, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len7, 1
  store i64 %a.next.len, ptr %var.elems.0, align 8
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %fld.load)
  store i64 %call.res, ptr %fld.gep, align 8
  %fld.load17 = load ptr, ptr %0, align 8
  %str.len.query18 = load i64, ptr %fld.load17, align 8
  %str.len.query19 = and i64 %str.len.query18, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query19
  br i1 %cmptmp, label %choice.case, label %choice.exit14

choice.exit14:                                    ; preds = %a.store, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %a.store ]
  switch i64 %choice.res, label %choice.next74 [
    i64 93, label %choice.case29
    i64 44, label %choice.case73
  ]

choice.case:                                      ; preds = %a.store
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query19
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.case
  %s.byte.gep = getelementptr i8, ptr %s.read.data25, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit14

idx_oob:                                          ; preds = %choice.case
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case29:                                    ; preds = %choice.exit14
  %fld.load34 = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load34, 1
  store i64 %addtmp, ptr %fld.gep, align 8
  %a.len.query49 = load i64, ptr %var.elems.0, align 8
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  store i64 4, ptr %enum.alloc, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %a.view.len65 = load i64, ptr %var.elems.0, align 8
  %start.gt.len = icmp sgt i64 0, %a.view.len65
  %final.start = select i1 %start.gt.len, i64 %a.view.len65, i64 0
  %end.is_neg = icmp slt i64 %a.len.query49, 0
  %rel.end = add i64 %a.view.len65, %a.len.query49
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %a.len.query49
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %a.view.len65
  %final.end = select i1 %end.gt.len, i64 %a.view.len65, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %a.view.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.elems.0, i32 0, i32 1
  %a.view.data66 = load ptr, ptr %a.view.data, align 8
  %a.view.off = mul i64 %final.start, 8
  %a.view.off67 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %a.view.off, i64 0)
  %sum = extractvalue { i64, i1 } %a.view.off67, 0
  %ovf = extractvalue { i64, i1 } %a.view.off67, 1
  br i1 %ovf, label %str_overflow_abort, label %a.view.off68

a.view.off68:                                     ; preds = %choice.case29
  %a.view.data70 = getelementptr i8, ptr %a.view.data66, i64 %sum
  %a.view.len.tagged = or i64 %view.len, 4611686018427387904
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.view.slice = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 16)
  store ptr %a.view.data70, ptr %a.view.slice, align 8
  %a.view.len.gep = getelementptr inbounds { ptr, i64 }, ptr %a.view.slice, i32 0, i32 1
  store i64 %a.view.len.tagged, ptr %a.view.len.gep, align 8
  store ptr %a.view.slice, ptr %pay.gep, align 8
  %ptr.to.i64 = ptrtoint ptr %enum.alloc to i64
  %ram.pay72 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %choice.exit

str_overflow_abort:                               ; preds = %choice.case29
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case73:                                    ; preds = %choice.exit14
  %fld.load79 = load i64, ptr %fld.gep, align 8
  %addtmp80 = add i64 %fld.load79, 1
  store i64 %addtmp80, ptr %fld.gep, align 8
  %call.res86 = call i64 @"json::#skip_ws"(ptr %0, i64 %addtmp80)
  %fld.load93 = load ptr, ptr %0, align 8
  %str.len.query95 = load i64, ptr %fld.load93, align 8
  %str.len.query96 = and i64 %str.len.query95, 281474976710655
  %cmptmp97 = icmp slt i64 %call.res86, %str.len.query96
  br i1 %cmptmp97, label %choice.case89, label %choice.exit88

choice.next74:                                    ; preds = %choice.exit14
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 56)
  store i64 400, ptr %err.alloc143, align 8
  %err.msg.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep145, align 8
  %err.file.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep146, align 8
  %err.line.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 3
  store i64 0, ptr %err.line.gep147, align 8
  %err.col.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 4
  store i64 0, ptr %err.col.gep148, align 8
  %err.ctx.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc143, i32 0, i32 5
  %arena.cur151 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res, ptr %rec.alloc152, align 8
  %rec.fld154 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc152, i32 0, i32 1
  store i64 0, ptr %rec.fld154, align 8
  %ctx.0156 = load i64, ptr %rec.alloc152, align 8
  store i64 %ctx.0156, ptr %err.ctx.gep149, align 8
  %err.ctx1.gep160 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep149, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep160, align 8
  %ptr.to.i64161 = ptrtoint ptr %err.alloc143 to i64
  %ram.pay162 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64161, 1
  br label %choice.exit

choice.exit88:                                    ; preds = %choice.case73, %idx_ok108
  %choice.res114 = phi i64 [ %s.byte.val113, %idx_ok108 ], [ -1, %choice.case73 ]
  %val.match119 = icmp eq i64 %choice.res114, 93
  br i1 %val.match119, label %choice.case117, label %a.after131

choice.case89:                                    ; preds = %choice.case73
  %s.read.data104 = getelementptr inbounds { i64, ptr }, ptr %fld.load93, i32 0, i32 1
  %s.read.data105 = load ptr, ptr %s.read.data104, align 8
  %idx.oob107 = icmp uge i64 %call.res86, %str.len.query96
  br i1 %idx.oob107, label %idx_oob109, label %idx_ok108

idx_ok108:                                        ; preds = %choice.case89
  %s.byte.gep111 = getelementptr i8, ptr %s.read.data105, i64 %call.res86
  %s.byte112 = load i8, ptr %s.byte.gep111, align 1
  %s.byte.val113 = zext i8 %s.byte112 to i64
  br label %choice.exit88

idx_oob109:                                       ; preds = %choice.case89
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case117:                                   ; preds = %choice.exit88
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.22.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res86, ptr %rec.alloc, align 8
  %rec.fld123 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld123, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i64124 = ptrtoint ptr %err.alloc to i64
  %ram.pay125 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64124, 1
  br label %choice.exit

a.after131:                                       ; preds = %choice.exit88
  %call.res140 = call { i1, i64 } @"json::#parse_array_loop"(ptr %0, ptr %var.elems.0)
  br label %choice.exit
}

define { i1, i64 } @"json::parse"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  store ptr %0, ptr %rec.alloc, align 8
  %rec.fld1 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  %call.res = call { i1, i64 } @"json::#parse_value"(ptr %rec.alloc)
  %call.res5 = call { i1, i64 } @"json::#parse_finish"(ptr %rec.alloc, { i1, i64 } %call.res)
  ret { i1, i64 } %call.res5
}

define internal { i1, i64 } @"json::#parse_finish"(ptr %0, { i1, i64 } %1) #3 {
entry:
  %ram.tag = extractvalue { i1, i64 } %1, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %1, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  %fld.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %call.res = call i64 @"json::#skip_ws"(ptr %0, i64 %fld.load)
  %fld.load6 = load ptr, ptr %0, align 8
  %str.len.query7 = load i64, ptr %fld.load6, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %cmptmp = icmp eq i64 %call.res, %str.len.query8
  br i1 %cmptmp, label %choice.then9, label %choice.else10

choice.else:                                      ; preds = %entry
  %ram.pay19 = extractvalue { i1, i64 } %1, 1
  %pay.ptr20 = inttoptr i64 %ram.pay19 to ptr
  %ram.pay24 = insertvalue { i1, i64 } zeroinitializer, i64 %ram.pay19, 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then9, %choice.else10, %choice.else
  %choice.res25 = phi { i1, i64 } [ %ram.pay24, %choice.else ], [ %ram.pay13, %choice.then9 ], [ %ram.pay18, %choice.else10 ]
  ret { i1, i64 } %choice.res25

choice.then9:                                     ; preds = %choice.then
  %ram.pay13 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ram.pay, 1
  br label %choice.exit

choice.else10:                                    ; preds = %choice.then
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 400, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.24.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.3.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store i64 %call.res, ptr %rec.alloc, align 8
  %rec.fld16 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld16, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %ptr.to.i6417 = ptrtoint ptr %err.alloc to i64
  %ram.pay18 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i6417, 1
  br label %choice.exit
}

define internal ptr @"json::#json_type_err"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  %concat.rhs3 = load i64, ptr %0, align 8
  %concat.rhs4 = and i64 %concat.rhs3, 281474976710655
  %concat.rhs5 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %concat.rhs6 = load ptr, ptr %concat.rhs5, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %concat.rhs4)
  %sum = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %concat.sum.len7

concat.sum.len7:                                  ; preds = %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum8 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf9 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf9, label %str_overflow_abort11, label %concat.tot.len10

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len10:                                 ; preds = %concat.sum.len7
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 %sum8)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.25, i64 6, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs6, i64 %concat.rhs4, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 16)
  store i64 %sum, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  store i64 422, ptr %err.alloc, align 8
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
  store i64 0, ptr %rec.alloc, align 8
  %rec.fld16 = getelementptr inbounds { i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld16, align 8
  %ctx.0 = load i64, ptr %rec.alloc, align 8
  store i64 %ctx.0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  ret ptr %err.alloc

str_overflow_abort11:                             ; preds = %concat.sum.len7
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal i32 @"json::#hex_digit"(i64 %0) #3 {
entry:
  %bandtmp = and i64 %0, 15
  %cmptmp = icmp slt i64 %bandtmp, 10
  %coerce.trunc = trunc i64 %bandtmp to i32
  %addtmp = add i32 48, %coerce.trunc
  %subtmp = sub i64 %bandtmp, 10
  %coerce.trunc4 = trunc i64 %subtmp to i32
  %addtmp5 = add i32 97, %coerce.trunc4
  %choice.res = select i1 %cmptmp, i32 %addtmp, i32 %addtmp5
  ret i32 %choice.res
}

define void @"json::escape_string_into"(ptr %0, ptr %1) #3 {
entry:
  %b.rn.cur.len1 = load i64, ptr %0, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

b.rn.new.len2:                                    ; preds = %entry
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.rn.new.len2
  %b.cap2 = mul i64 %b.cap3, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len24 = load i64, ptr %0, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len28

b.grow_done:                                      ; preds = %b.rn.new.len2, %b.new.buf.len28
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.rn.data11 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data11, i64 %b.rn.cur.len1
  store i8 34, ptr %b.rn.dst, align 1
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  store i64 %sum, ptr %0, align 8
  %str.len12 = load i64, ptr %1, align 8
  %str.len13 = and i64 %str.len12, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  br label %loop.header.132

b.new.buf.len28:                                  ; preds = %b.grow2
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data25, i64 %b.cur.len24, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len24
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.cur.data2, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.grow_done

str_overflow_abort9:                              ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.132:                                  ; preds = %choice.exit, %b.grow_done
  %loop.idx.132.0 = phi i64 [ 0, %b.grow_done ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.132.0, %str.len13
  br i1 %loop.cond, label %loop.body.132, label %loop.exit.132

loop.body.132:                                    ; preds = %loop.header.132
  %s.byte.gep = getelementptr i8, ptr %s.read.data14, i64 %loop.idx.132.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %bandtmp = and i64 %s.byte.val, 255
  switch i64 %bandtmp, label %choice.next284 [
    i64 34, label %choice.case
    i64 92, label %choice.case53
    i64 8, label %choice.case99
    i64 12, label %choice.case145
    i64 10, label %choice.case191
    i64 13, label %choice.case237
    i64 9, label %choice.case283
  ]

loop.exit.132:                                    ; preds = %loop.header.132
  %b.rn.cur.len528 = load i64, ptr %0, align 8
  %b.rn.new.len529 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len528, i64 1)
  %sum530 = extractvalue { i64, i1 } %b.rn.new.len529, 0
  %ovf531 = extractvalue { i64, i1 } %b.rn.new.len529, 1
  br i1 %ovf531, label %str_overflow_abort533, label %b.rn.new.len532

choice.exit:                                      ; preds = %b.push_done, %br.done.134, %b.grow_done303, %b.grow_done257, %b.grow_done211, %b.grow_done165, %b.grow_done119, %b.grow_done73, %b.grow_done30
  %loop.next = add i64 %loop.idx.132.0, 1
  br label %loop.header.132

choice.case:                                      ; preds = %loop.body.132
  %b.app.cur.len19 = load i64, ptr %0, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len19, i64 2)
  %sum20 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf21 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.app.new.len22

b.app.new.len22:                                  ; preds = %choice.case
  %b.cap26 = load i64, ptr %b.cap, align 8
  %b.need.grow27 = icmp slt i64 %b.cap26, %sum20
  br i1 %b.need.grow27, label %b.grow228, label %b.grow_done30

str_overflow_abort23:                             ; preds = %choice.case
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow228:                                        ; preds = %b.app.new.len22
  %b.cap231 = mul i64 %b.cap26, 2
  %b.cap.small32 = icmp slt i64 %b.cap231, 16
  %b.cap.grow33 = select i1 %b.cap.small32, i64 16, i64 %b.cap231
  %b.cap.need34 = icmp slt i64 %b.cap.grow33, %sum20
  %b.new.cap35 = select i1 %b.cap.need34, i64 %sum20, i64 %b.cap.grow33
  %b.cur.len237 = load i64, ptr %0, align 8
  %b.cur.data239 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len240 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap35, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len240, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len240, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len243

b.grow_done30:                                    ; preds = %b.app.new.len22, %b.new.buf.len243
  %b.app.data51 = load ptr, ptr %b.rn.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data51, i64 %b.app.cur.len19
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 @str.26, i64 2, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data51, i64 %sum20
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum20, ptr %0, align 8
  br label %choice.exit

b.new.buf.len243:                                 ; preds = %b.grow228
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf247 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf247, ptr align 1 %b.cur.data239, i64 %b.cur.len237, i1 false)
  %b.grow2.nul48 = getelementptr i8, ptr %b.new.buf247, i64 %b.cur.len237
  store i8 0, ptr %b.grow2.nul48, align 1
  store ptr %b.new.buf247, ptr %b.rn.data, align 8
  store i64 %b.new.cap35, ptr %b.cap, align 8
  br label %b.grow_done30

str_overflow_abort44:                             ; preds = %b.grow228
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case53:                                    ; preds = %loop.body.132
  %b.app.cur.len61 = load i64, ptr %0, align 8
  %b.app.new.len62 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len61, i64 2)
  %sum63 = extractvalue { i64, i1 } %b.app.new.len62, 0
  %ovf64 = extractvalue { i64, i1 } %b.app.new.len62, 1
  br i1 %ovf64, label %str_overflow_abort66, label %b.app.new.len65

b.app.new.len65:                                  ; preds = %choice.case53
  %b.cap69 = load i64, ptr %b.cap, align 8
  %b.need.grow70 = icmp slt i64 %b.cap69, %sum63
  br i1 %b.need.grow70, label %b.grow271, label %b.grow_done73

str_overflow_abort66:                             ; preds = %choice.case53
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow271:                                        ; preds = %b.app.new.len65
  %b.cap274 = mul i64 %b.cap69, 2
  %b.cap.small75 = icmp slt i64 %b.cap274, 16
  %b.cap.grow76 = select i1 %b.cap.small75, i64 16, i64 %b.cap274
  %b.cap.need77 = icmp slt i64 %b.cap.grow76, %sum63
  %b.new.cap78 = select i1 %b.cap.need77, i64 %sum63, i64 %b.cap.grow76
  %b.cur.len280 = load i64, ptr %0, align 8
  %b.cur.data282 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len283 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap78, i64 1)
  %sum84 = extractvalue { i64, i1 } %b.new.buf.len283, 0
  %ovf85 = extractvalue { i64, i1 } %b.new.buf.len283, 1
  br i1 %ovf85, label %str_overflow_abort87, label %b.new.buf.len286

b.grow_done73:                                    ; preds = %b.app.new.len65, %b.new.buf.len286
  %b.app.data95 = load ptr, ptr %b.rn.data, align 8
  %b.app.dst96 = getelementptr i8, ptr %b.app.data95, i64 %b.app.cur.len61
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst96, ptr align 1 @str.27, i64 2, i1 false)
  %b.app.nul97 = getelementptr i8, ptr %b.app.data95, i64 %sum63
  store i8 0, ptr %b.app.nul97, align 1
  store i64 %sum63, ptr %0, align 8
  br label %choice.exit

b.new.buf.len286:                                 ; preds = %b.grow271
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf290 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 %sum84)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf290, ptr align 1 %b.cur.data282, i64 %b.cur.len280, i1 false)
  %b.grow2.nul91 = getelementptr i8, ptr %b.new.buf290, i64 %b.cur.len280
  store i8 0, ptr %b.grow2.nul91, align 1
  store ptr %b.new.buf290, ptr %b.rn.data, align 8
  store i64 %b.new.cap78, ptr %b.cap, align 8
  br label %b.grow_done73

str_overflow_abort87:                             ; preds = %b.grow271
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case99:                                    ; preds = %loop.body.132
  %b.app.cur.len107 = load i64, ptr %0, align 8
  %b.app.new.len108 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len107, i64 2)
  %sum109 = extractvalue { i64, i1 } %b.app.new.len108, 0
  %ovf110 = extractvalue { i64, i1 } %b.app.new.len108, 1
  br i1 %ovf110, label %str_overflow_abort112, label %b.app.new.len111

b.app.new.len111:                                 ; preds = %choice.case99
  %b.cap115 = load i64, ptr %b.cap, align 8
  %b.need.grow116 = icmp slt i64 %b.cap115, %sum109
  br i1 %b.need.grow116, label %b.grow2117, label %b.grow_done119

str_overflow_abort112:                            ; preds = %choice.case99
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2117:                                       ; preds = %b.app.new.len111
  %b.cap2120 = mul i64 %b.cap115, 2
  %b.cap.small121 = icmp slt i64 %b.cap2120, 16
  %b.cap.grow122 = select i1 %b.cap.small121, i64 16, i64 %b.cap2120
  %b.cap.need123 = icmp slt i64 %b.cap.grow122, %sum109
  %b.new.cap124 = select i1 %b.cap.need123, i64 %sum109, i64 %b.cap.grow122
  %b.cur.len2126 = load i64, ptr %0, align 8
  %b.cur.data2128 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap124, i64 1)
  %sum130 = extractvalue { i64, i1 } %b.new.buf.len2129, 0
  %ovf131 = extractvalue { i64, i1 } %b.new.buf.len2129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %b.new.buf.len2132

b.grow_done119:                                   ; preds = %b.app.new.len111, %b.new.buf.len2132
  %b.app.data141 = load ptr, ptr %b.rn.data, align 8
  %b.app.dst142 = getelementptr i8, ptr %b.app.data141, i64 %b.app.cur.len107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst142, ptr align 1 @str.28, i64 2, i1 false)
  %b.app.nul143 = getelementptr i8, ptr %b.app.data141, i64 %sum109
  store i8 0, ptr %b.app.nul143, align 1
  store i64 %sum109, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2132:                                ; preds = %b.grow2117
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 %sum130)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2136, ptr align 1 %b.cur.data2128, i64 %b.cur.len2126, i1 false)
  %b.grow2.nul137 = getelementptr i8, ptr %b.new.buf2136, i64 %b.cur.len2126
  store i8 0, ptr %b.grow2.nul137, align 1
  store ptr %b.new.buf2136, ptr %b.rn.data, align 8
  store i64 %b.new.cap124, ptr %b.cap, align 8
  br label %b.grow_done119

str_overflow_abort133:                            ; preds = %b.grow2117
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case145:                                   ; preds = %loop.body.132
  %b.app.cur.len153 = load i64, ptr %0, align 8
  %b.app.new.len154 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len153, i64 2)
  %sum155 = extractvalue { i64, i1 } %b.app.new.len154, 0
  %ovf156 = extractvalue { i64, i1 } %b.app.new.len154, 1
  br i1 %ovf156, label %str_overflow_abort158, label %b.app.new.len157

b.app.new.len157:                                 ; preds = %choice.case145
  %b.cap161 = load i64, ptr %b.cap, align 8
  %b.need.grow162 = icmp slt i64 %b.cap161, %sum155
  br i1 %b.need.grow162, label %b.grow2163, label %b.grow_done165

str_overflow_abort158:                            ; preds = %choice.case145
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2163:                                       ; preds = %b.app.new.len157
  %b.cap2166 = mul i64 %b.cap161, 2
  %b.cap.small167 = icmp slt i64 %b.cap2166, 16
  %b.cap.grow168 = select i1 %b.cap.small167, i64 16, i64 %b.cap2166
  %b.cap.need169 = icmp slt i64 %b.cap.grow168, %sum155
  %b.new.cap170 = select i1 %b.cap.need169, i64 %sum155, i64 %b.cap.grow168
  %b.cur.len2172 = load i64, ptr %0, align 8
  %b.cur.data2174 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2175 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap170, i64 1)
  %sum176 = extractvalue { i64, i1 } %b.new.buf.len2175, 0
  %ovf177 = extractvalue { i64, i1 } %b.new.buf.len2175, 1
  br i1 %ovf177, label %str_overflow_abort179, label %b.new.buf.len2178

b.grow_done165:                                   ; preds = %b.app.new.len157, %b.new.buf.len2178
  %b.app.data187 = load ptr, ptr %b.rn.data, align 8
  %b.app.dst188 = getelementptr i8, ptr %b.app.data187, i64 %b.app.cur.len153
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst188, ptr align 1 @str.29, i64 2, i1 false)
  %b.app.nul189 = getelementptr i8, ptr %b.app.data187, i64 %sum155
  store i8 0, ptr %b.app.nul189, align 1
  store i64 %sum155, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2178:                                ; preds = %b.grow2163
  %arena.cur181 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2182 = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 %sum176)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2182, ptr align 1 %b.cur.data2174, i64 %b.cur.len2172, i1 false)
  %b.grow2.nul183 = getelementptr i8, ptr %b.new.buf2182, i64 %b.cur.len2172
  store i8 0, ptr %b.grow2.nul183, align 1
  store ptr %b.new.buf2182, ptr %b.rn.data, align 8
  store i64 %b.new.cap170, ptr %b.cap, align 8
  br label %b.grow_done165

str_overflow_abort179:                            ; preds = %b.grow2163
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case191:                                   ; preds = %loop.body.132
  %b.app.cur.len199 = load i64, ptr %0, align 8
  %b.app.new.len200 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len199, i64 2)
  %sum201 = extractvalue { i64, i1 } %b.app.new.len200, 0
  %ovf202 = extractvalue { i64, i1 } %b.app.new.len200, 1
  br i1 %ovf202, label %str_overflow_abort204, label %b.app.new.len203

b.app.new.len203:                                 ; preds = %choice.case191
  %b.cap207 = load i64, ptr %b.cap, align 8
  %b.need.grow208 = icmp slt i64 %b.cap207, %sum201
  br i1 %b.need.grow208, label %b.grow2209, label %b.grow_done211

str_overflow_abort204:                            ; preds = %choice.case191
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2209:                                       ; preds = %b.app.new.len203
  %b.cap2212 = mul i64 %b.cap207, 2
  %b.cap.small213 = icmp slt i64 %b.cap2212, 16
  %b.cap.grow214 = select i1 %b.cap.small213, i64 16, i64 %b.cap2212
  %b.cap.need215 = icmp slt i64 %b.cap.grow214, %sum201
  %b.new.cap216 = select i1 %b.cap.need215, i64 %sum201, i64 %b.cap.grow214
  %b.cur.len2218 = load i64, ptr %0, align 8
  %b.cur.data2220 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap216, i64 1)
  %sum222 = extractvalue { i64, i1 } %b.new.buf.len2221, 0
  %ovf223 = extractvalue { i64, i1 } %b.new.buf.len2221, 1
  br i1 %ovf223, label %str_overflow_abort225, label %b.new.buf.len2224

b.grow_done211:                                   ; preds = %b.app.new.len203, %b.new.buf.len2224
  %b.app.data233 = load ptr, ptr %b.rn.data, align 8
  %b.app.dst234 = getelementptr i8, ptr %b.app.data233, i64 %b.app.cur.len199
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst234, ptr align 1 @str.30, i64 2, i1 false)
  %b.app.nul235 = getelementptr i8, ptr %b.app.data233, i64 %sum201
  store i8 0, ptr %b.app.nul235, align 1
  store i64 %sum201, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2224:                                ; preds = %b.grow2209
  %arena.cur227 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 %sum222)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2228, ptr align 1 %b.cur.data2220, i64 %b.cur.len2218, i1 false)
  %b.grow2.nul229 = getelementptr i8, ptr %b.new.buf2228, i64 %b.cur.len2218
  store i8 0, ptr %b.grow2.nul229, align 1
  store ptr %b.new.buf2228, ptr %b.rn.data, align 8
  store i64 %b.new.cap216, ptr %b.cap, align 8
  br label %b.grow_done211

str_overflow_abort225:                            ; preds = %b.grow2209
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case237:                                   ; preds = %loop.body.132
  %b.app.cur.len245 = load i64, ptr %0, align 8
  %b.app.new.len246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len245, i64 2)
  %sum247 = extractvalue { i64, i1 } %b.app.new.len246, 0
  %ovf248 = extractvalue { i64, i1 } %b.app.new.len246, 1
  br i1 %ovf248, label %str_overflow_abort250, label %b.app.new.len249

b.app.new.len249:                                 ; preds = %choice.case237
  %b.cap253 = load i64, ptr %b.cap, align 8
  %b.need.grow254 = icmp slt i64 %b.cap253, %sum247
  br i1 %b.need.grow254, label %b.grow2255, label %b.grow_done257

str_overflow_abort250:                            ; preds = %choice.case237
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2255:                                       ; preds = %b.app.new.len249
  %b.cap2258 = mul i64 %b.cap253, 2
  %b.cap.small259 = icmp slt i64 %b.cap2258, 16
  %b.cap.grow260 = select i1 %b.cap.small259, i64 16, i64 %b.cap2258
  %b.cap.need261 = icmp slt i64 %b.cap.grow260, %sum247
  %b.new.cap262 = select i1 %b.cap.need261, i64 %sum247, i64 %b.cap.grow260
  %b.cur.len2264 = load i64, ptr %0, align 8
  %b.cur.data2266 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap262, i64 1)
  %sum268 = extractvalue { i64, i1 } %b.new.buf.len2267, 0
  %ovf269 = extractvalue { i64, i1 } %b.new.buf.len2267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %b.new.buf.len2270

b.grow_done257:                                   ; preds = %b.app.new.len249, %b.new.buf.len2270
  %b.app.data279 = load ptr, ptr %b.rn.data, align 8
  %b.app.dst280 = getelementptr i8, ptr %b.app.data279, i64 %b.app.cur.len245
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst280, ptr align 1 @str.31, i64 2, i1 false)
  %b.app.nul281 = getelementptr i8, ptr %b.app.data279, i64 %sum247
  store i8 0, ptr %b.app.nul281, align 1
  store i64 %sum247, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2270:                                ; preds = %b.grow2255
  %arena.cur273 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 %sum268)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2274, ptr align 1 %b.cur.data2266, i64 %b.cur.len2264, i1 false)
  %b.grow2.nul275 = getelementptr i8, ptr %b.new.buf2274, i64 %b.cur.len2264
  store i8 0, ptr %b.grow2.nul275, align 1
  store ptr %b.new.buf2274, ptr %b.rn.data, align 8
  store i64 %b.new.cap262, ptr %b.cap, align 8
  br label %b.grow_done257

str_overflow_abort271:                            ; preds = %b.grow2255
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case283:                                   ; preds = %loop.body.132
  %b.app.cur.len291 = load i64, ptr %0, align 8
  %b.app.new.len292 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len291, i64 2)
  %sum293 = extractvalue { i64, i1 } %b.app.new.len292, 0
  %ovf294 = extractvalue { i64, i1 } %b.app.new.len292, 1
  br i1 %ovf294, label %str_overflow_abort296, label %b.app.new.len295

choice.next284:                                   ; preds = %loop.body.132
  %cmptmp = icmp slt i64 %bandtmp, 32
  br i1 %cmptmp, label %choice.case329, label %b.byte_ok

b.app.new.len295:                                 ; preds = %choice.case283
  %b.cap299 = load i64, ptr %b.cap, align 8
  %b.need.grow300 = icmp slt i64 %b.cap299, %sum293
  br i1 %b.need.grow300, label %b.grow2301, label %b.grow_done303

str_overflow_abort296:                            ; preds = %choice.case283
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2301:                                       ; preds = %b.app.new.len295
  %b.cap2304 = mul i64 %b.cap299, 2
  %b.cap.small305 = icmp slt i64 %b.cap2304, 16
  %b.cap.grow306 = select i1 %b.cap.small305, i64 16, i64 %b.cap2304
  %b.cap.need307 = icmp slt i64 %b.cap.grow306, %sum293
  %b.new.cap308 = select i1 %b.cap.need307, i64 %sum293, i64 %b.cap.grow306
  %b.cur.len2310 = load i64, ptr %0, align 8
  %b.cur.data2312 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2313 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap308, i64 1)
  %sum314 = extractvalue { i64, i1 } %b.new.buf.len2313, 0
  %ovf315 = extractvalue { i64, i1 } %b.new.buf.len2313, 1
  br i1 %ovf315, label %str_overflow_abort317, label %b.new.buf.len2316

b.grow_done303:                                   ; preds = %b.app.new.len295, %b.new.buf.len2316
  %b.app.data325 = load ptr, ptr %b.rn.data, align 8
  %b.app.dst326 = getelementptr i8, ptr %b.app.data325, i64 %b.app.cur.len291
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst326, ptr align 1 @str.32, i64 2, i1 false)
  %b.app.nul327 = getelementptr i8, ptr %b.app.data325, i64 %sum293
  store i8 0, ptr %b.app.nul327, align 1
  store i64 %sum293, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2316:                                ; preds = %b.grow2301
  %arena.cur319 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2320 = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 %sum314)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2320, ptr align 1 %b.cur.data2312, i64 %b.cur.len2310, i1 false)
  %b.grow2.nul321 = getelementptr i8, ptr %b.new.buf2320, i64 %b.cur.len2310
  store i8 0, ptr %b.grow2.nul321, align 1
  store ptr %b.new.buf2320, ptr %b.rn.data, align 8
  store i64 %b.new.cap308, ptr %b.cap, align 8
  br label %b.grow_done303

str_overflow_abort317:                            ; preds = %b.grow2301
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case329:                                   ; preds = %choice.next284
  %b.app.cur.len336 = load i64, ptr %0, align 8
  %b.app.new.len337 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len336, i64 4)
  %sum338 = extractvalue { i64, i1 } %b.app.new.len337, 0
  %ovf339 = extractvalue { i64, i1 } %b.app.new.len337, 1
  br i1 %ovf339, label %str_overflow_abort341, label %b.app.new.len340

b.app.new.len340:                                 ; preds = %choice.case329
  %b.cap344 = load i64, ptr %b.cap, align 8
  %b.need.grow345 = icmp slt i64 %b.cap344, %sum338
  br i1 %b.need.grow345, label %b.grow2346, label %b.grow_done348

str_overflow_abort341:                            ; preds = %choice.case329
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2346:                                       ; preds = %b.app.new.len340
  %b.cap2349 = mul i64 %b.cap344, 2
  %b.cap.small350 = icmp slt i64 %b.cap2349, 16
  %b.cap.grow351 = select i1 %b.cap.small350, i64 16, i64 %b.cap2349
  %b.cap.need352 = icmp slt i64 %b.cap.grow351, %sum338
  %b.new.cap353 = select i1 %b.cap.need352, i64 %sum338, i64 %b.cap.grow351
  %b.cur.len2355 = load i64, ptr %0, align 8
  %b.cur.data2357 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2358 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap353, i64 1)
  %sum359 = extractvalue { i64, i1 } %b.new.buf.len2358, 0
  %ovf360 = extractvalue { i64, i1 } %b.new.buf.len2358, 1
  br i1 %ovf360, label %str_overflow_abort362, label %b.new.buf.len2361

b.grow_done348:                                   ; preds = %b.app.new.len340, %b.new.buf.len2361
  %b.app.data370 = load ptr, ptr %b.rn.data, align 8
  %b.app.dst371 = getelementptr i8, ptr %b.app.data370, i64 %b.app.cur.len336
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst371, ptr align 1 @str.33, i64 4, i1 false)
  %b.app.nul372 = getelementptr i8, ptr %b.app.data370, i64 %sum338
  store i8 0, ptr %b.app.nul372, align 1
  store i64 %sum338, ptr %0, align 8
  %shrtmp = lshr i64 %bandtmp, 4
  %call.res = call i32 @"json::#hex_digit"(i64 %shrtmp)
  %coerce.sext = sext i32 %call.res to i64
  %br.cmp1 = icmp slt i64 %coerce.sext, 128
  %br.cmp2 = icmp slt i64 %coerce.sext, 2048
  %br.cmp3 = icmp slt i64 %coerce.sext, 65536
  %br.w3 = select i1 %br.cmp3, i64 3, i64 4
  %br.w2 = select i1 %br.cmp2, i64 2, i64 %br.w3
  %br.width = select i1 %br.cmp1, i64 1, i64 %br.w2
  %b.rn.cur.len377 = load i64, ptr %0, align 8
  %b.rn.new.len378 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len377, i64 %br.width)
  %sum379 = extractvalue { i64, i1 } %b.rn.new.len378, 0
  %ovf380 = extractvalue { i64, i1 } %b.rn.new.len378, 1
  br i1 %ovf380, label %str_overflow_abort382, label %b.rn.new.len381

b.new.buf.len2361:                                ; preds = %b.grow2346
  %arena.cur364 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2365 = call ptr @dva_arena_alloc(ptr %arena.cur364, i64 %sum359)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2365, ptr align 1 %b.cur.data2357, i64 %b.cur.len2355, i1 false)
  %b.grow2.nul366 = getelementptr i8, ptr %b.new.buf2365, i64 %b.cur.len2355
  store i8 0, ptr %b.grow2.nul366, align 1
  store ptr %b.new.buf2365, ptr %b.rn.data, align 8
  store i64 %b.new.cap353, ptr %b.cap, align 8
  br label %b.grow_done348

str_overflow_abort362:                            ; preds = %b.grow2346
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len381:                                  ; preds = %b.grow_done348
  %b.cap385 = load i64, ptr %b.cap, align 8
  %b.need.grow386 = icmp slt i64 %b.cap385, %sum379
  br i1 %b.need.grow386, label %b.grow2387, label %b.grow_done389

str_overflow_abort382:                            ; preds = %b.grow_done348
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2387:                                       ; preds = %b.rn.new.len381
  %b.cap2390 = mul i64 %b.cap385, 2
  %b.cap.small391 = icmp slt i64 %b.cap2390, 16
  %b.cap.grow392 = select i1 %b.cap.small391, i64 16, i64 %b.cap2390
  %b.cap.need393 = icmp slt i64 %b.cap.grow392, %sum379
  %b.new.cap394 = select i1 %b.cap.need393, i64 %sum379, i64 %b.cap.grow392
  %b.cur.len2396 = load i64, ptr %0, align 8
  %b.cur.data2398 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2399 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap394, i64 1)
  %sum400 = extractvalue { i64, i1 } %b.new.buf.len2399, 0
  %ovf401 = extractvalue { i64, i1 } %b.new.buf.len2399, 1
  br i1 %ovf401, label %str_overflow_abort403, label %b.new.buf.len2402

b.grow_done389:                                   ; preds = %b.rn.new.len381, %b.new.buf.len2402
  %b.rn.data411 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst412 = getelementptr i8, ptr %b.rn.data411, i64 %b.rn.cur.len377
  br i1 %br.cmp1, label %br.b1.133, label %br.c2.133

b.new.buf.len2402:                                ; preds = %b.grow2387
  %arena.cur405 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2406 = call ptr @dva_arena_alloc(ptr %arena.cur405, i64 %sum400)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2406, ptr align 1 %b.cur.data2398, i64 %b.cur.len2396, i1 false)
  %b.grow2.nul407 = getelementptr i8, ptr %b.new.buf2406, i64 %b.cur.len2396
  store i8 0, ptr %b.grow2.nul407, align 1
  store ptr %b.new.buf2406, ptr %b.rn.data, align 8
  store i64 %b.new.cap394, ptr %b.cap, align 8
  br label %b.grow_done389

str_overflow_abort403:                            ; preds = %b.grow2387
  call void @dva_abort_str_overflow_msg()
  unreachable

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
  store i64 %sum379, ptr %0, align 8
  %call.res423 = call i32 @"json::#hex_digit"(i64 %bandtmp)
  %coerce.sext424 = sext i32 %call.res423 to i64
  %br.cmp1425 = icmp slt i64 %coerce.sext424, 128
  %br.cmp2426 = icmp slt i64 %coerce.sext424, 2048
  %br.cmp3427 = icmp slt i64 %coerce.sext424, 65536
  %br.w3428 = select i1 %br.cmp3427, i64 3, i64 4
  %br.w2429 = select i1 %br.cmp2426, i64 2, i64 %br.w3428
  %br.width430 = select i1 %br.cmp1425, i64 1, i64 %br.w2429
  %b.rn.cur.len432 = load i64, ptr %0, align 8
  %b.rn.new.len433 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len432, i64 %br.width430)
  %sum434 = extractvalue { i64, i1 } %b.rn.new.len433, 0
  %ovf435 = extractvalue { i64, i1 } %b.rn.new.len433, 1
  br i1 %ovf435, label %str_overflow_abort437, label %b.rn.new.len436

b.rn.new.len436:                                  ; preds = %br.done.133
  %b.cap440 = load i64, ptr %b.cap, align 8
  %b.need.grow441 = icmp slt i64 %b.cap440, %sum434
  br i1 %b.need.grow441, label %b.grow2442, label %b.grow_done444

str_overflow_abort437:                            ; preds = %br.done.133
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2442:                                       ; preds = %b.rn.new.len436
  %b.cap2445 = mul i64 %b.cap440, 2
  %b.cap.small446 = icmp slt i64 %b.cap2445, 16
  %b.cap.grow447 = select i1 %b.cap.small446, i64 16, i64 %b.cap2445
  %b.cap.need448 = icmp slt i64 %b.cap.grow447, %sum434
  %b.new.cap449 = select i1 %b.cap.need448, i64 %sum434, i64 %b.cap.grow447
  %b.cur.len2451 = load i64, ptr %0, align 8
  %b.cur.data2453 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2454 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap449, i64 1)
  %sum455 = extractvalue { i64, i1 } %b.new.buf.len2454, 0
  %ovf456 = extractvalue { i64, i1 } %b.new.buf.len2454, 1
  br i1 %ovf456, label %str_overflow_abort458, label %b.new.buf.len2457

b.grow_done444:                                   ; preds = %b.rn.new.len436, %b.new.buf.len2457
  %b.rn.data466 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst467 = getelementptr i8, ptr %b.rn.data466, i64 %b.rn.cur.len432
  br i1 %br.cmp1425, label %br.b1.134, label %br.c2.134

b.new.buf.len2457:                                ; preds = %b.grow2442
  %arena.cur460 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2461 = call ptr @dva_arena_alloc(ptr %arena.cur460, i64 %sum455)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2461, ptr align 1 %b.cur.data2453, i64 %b.cur.len2451, i1 false)
  %b.grow2.nul462 = getelementptr i8, ptr %b.new.buf2461, i64 %b.cur.len2451
  store i8 0, ptr %b.grow2.nul462, align 1
  store ptr %b.new.buf2461, ptr %b.rn.data, align 8
  store i64 %b.new.cap449, ptr %b.cap, align 8
  br label %b.grow_done444

str_overflow_abort458:                            ; preds = %b.grow2442
  call void @dva_abort_str_overflow_msg()
  unreachable

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
  store i64 %sum434, ptr %0, align 8
  br label %choice.exit

b.byte_ok:                                        ; preds = %choice.next284
  %b.byte.i8 = trunc i64 %bandtmp to i8
  %b.len510 = load i64, ptr %0, align 8
  %b.cap512 = load i64, ptr %b.cap, align 8
  %b.data513 = load ptr, ptr %b.rn.data, align 8
  %b.needs.grow = icmp eq i64 %b.len510, %b.cap512
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2514 = mul i64 %b.cap512, 2
  %b.cap.small515 = icmp slt i64 %b.cap2514, 16
  %b.new.cap516 = select i1 %b.cap.small515, i64 16, i64 %b.cap2514
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap516, i64 1)
  %sum517 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf518 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf518, label %str_overflow_abort520, label %b.new.buf.len519

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len519
  %b.cur.data523 = load ptr, ptr %b.rn.data, align 8
  %b.cur.len524 = load i64, ptr %0, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data523, i64 %b.cur.len524
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len524, 1
  %b.nul = getelementptr i8, ptr %b.cur.data523, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  store i64 %b.next.len, ptr %0, align 8
  br label %choice.exit

b.new.buf.len519:                                 ; preds = %b.grow
  %arena.cur522 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur522, i64 %sum517)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data513, i64 %b.len510, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len510
  store i8 0, ptr %b.grow.nul, align 1
  store ptr %b.new.buf, ptr %b.rn.data, align 8
  store i64 %b.new.cap516, ptr %b.cap, align 8
  br label %b.push_done

str_overflow_abort520:                            ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len532:                                  ; preds = %loop.exit.132
  %b.cap536 = load i64, ptr %b.cap, align 8
  %b.need.grow537 = icmp slt i64 %b.cap536, %sum530
  br i1 %b.need.grow537, label %b.grow2538, label %b.grow_done540

str_overflow_abort533:                            ; preds = %loop.exit.132
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2538:                                       ; preds = %b.rn.new.len532
  %b.cap2541 = mul i64 %b.cap536, 2
  %b.cap.small542 = icmp slt i64 %b.cap2541, 16
  %b.cap.grow543 = select i1 %b.cap.small542, i64 16, i64 %b.cap2541
  %b.cap.need544 = icmp slt i64 %b.cap.grow543, %sum530
  %b.new.cap545 = select i1 %b.cap.need544, i64 %sum530, i64 %b.cap.grow543
  %b.cur.len2547 = load i64, ptr %0, align 8
  %b.cur.data2549 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2550 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap545, i64 1)
  %sum551 = extractvalue { i64, i1 } %b.new.buf.len2550, 0
  %ovf552 = extractvalue { i64, i1 } %b.new.buf.len2550, 1
  br i1 %ovf552, label %str_overflow_abort554, label %b.new.buf.len2553

b.grow_done540:                                   ; preds = %b.rn.new.len532, %b.new.buf.len2553
  %b.rn.data562 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst563 = getelementptr i8, ptr %b.rn.data562, i64 %b.rn.cur.len528
  store i8 34, ptr %b.rn.dst563, align 1
  %br.nul570 = getelementptr i8, ptr %b.rn.data562, i64 %sum530
  store i8 0, ptr %br.nul570, align 1
  store i64 %sum530, ptr %0, align 8
  ret void

b.new.buf.len2553:                                ; preds = %b.grow2538
  %arena.cur556 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2557 = call ptr @dva_arena_alloc(ptr %arena.cur556, i64 %sum551)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2557, ptr align 1 %b.cur.data2549, i64 %b.cur.len2547, i1 false)
  %b.grow2.nul558 = getelementptr i8, ptr %b.new.buf2557, i64 %b.cur.len2547
  store i8 0, ptr %b.grow2.nul558, align 1
  store ptr %b.new.buf2557, ptr %b.rn.data, align 8
  store i64 %b.new.cap545, ptr %b.cap, align 8
  br label %b.grow_done540

str_overflow_abort554:                            ; preds = %b.grow2538
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"json::escape_string"(ptr %0) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %addtmp = add i64 %str.len.query2, 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %addtmp, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len3

b.buf.len3:                                       ; preds = %entry
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %addtmp, ptr %b.cap.gep, align 8
  call void @"json::escape_string_into"(ptr %builder.new, ptr %0)
  %b.freeze.len8 = load i64, ptr %builder.new, align 8
  %b.freeze.data9 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %b.buf.len3
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data9, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data9, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data9, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len8, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data9, i64 %b.freeze.len8, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len8
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len3
  %b.freeze.data11 = phi ptr [ %b.freeze.data9, %b.buf.len3 ], [ %b.freeze.data9, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %b.freeze.len8, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %b.freeze.data11, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

define { i64, ptr } @"json::format_number"(double %0) #3 {
entry:
  %ret.ub.salloc26 = alloca { i64, ptr }, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %fcmptmp = fcmp une double %0, %0
  br i1 %fcmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %choice.exit, %entry, %choice.exit22
  %common.ret.op = phi { i64, ptr } [ %ret.pack69.fca.1.insert, %choice.exit22 ], [ { i64 4, ptr @str.17 }, %entry ], [ { i64 4, ptr @str.17 }, %choice.exit ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %entry
  %var.load3 = load double, ptr @"var.const::max_f64", align 8
  %fcmptmp4 = fcmp ogt double %0, %var.load3
  %fnegtmp = fneg double %var.load3
  %fcmptmp7 = fcmp olt double %0, %fnegtmp
  %or.136.phi = select i1 %fcmptmp4, i1 true, i1 %fcmptmp7
  br i1 %or.136.phi, label %common.ret, label %choice.exit9

choice.exit9:                                     ; preds = %choice.exit
  %cast.fptosi = fptosi double %0 to i64
  %cast.sitofp = sitofp i64 %cast.fptosi to double
  %fcmptmp15 = fcmp oeq double %cast.sitofp, %0
  br i1 %fcmptmp15, label %and.137.then, label %choice.else

and.137.then:                                     ; preds = %choice.exit9
  %var.load18 = load i64, ptr @"var.const::max_safe_int", align 8
  %negtmp = sub i64 0, %var.load18
  %cmptmp = icmp sge i64 %cast.fptosi, %negtmp
  %cmptmp20 = icmp sle i64 %cast.fptosi, %var.load18
  %and.138.phi = select i1 %cmptmp, i1 %cmptmp20, i1 false
  %choice.res = select i1 %and.138.phi, i1 true, i1 false
  br i1 %choice.res, label %choice.then21, label %choice.else

choice.then21:                                    ; preds = %and.137.then
  %call.res = call { i64, ptr } @"str::from_int"(i64 %cast.fptosi)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  store i64 %call.res.fca.0.extract, ptr %ret.ub.salloc, align 8
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %call.res.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc, i32 0, i32 1
  store ptr %call.res.fca.1.extract, ptr %call.res.fca.1.gep, align 8
  br label %choice.exit22

choice.else:                                      ; preds = %choice.exit9, %and.137.then
  %call.res25 = call { i64, ptr } @"str::from_float"(double %0)
  %call.res25.fca.0.extract = extractvalue { i64, ptr } %call.res25, 0
  store i64 %call.res25.fca.0.extract, ptr %ret.ub.salloc26, align 8
  %call.res25.fca.1.extract = extractvalue { i64, ptr } %call.res25, 1
  %call.res25.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc26, i32 0, i32 1
  store ptr %call.res25.fca.1.extract, ptr %call.res25.fca.1.gep, align 8
  %eq.lhs.len31 = load i64, ptr %ret.ub.salloc26, align 8
  %eq.lhs.len32 = and i64 %eq.lhs.len31, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len32, 3
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

choice.exit22:                                    ; preds = %str.eq.merge58, %choice.then21
  %choice.res68 = phi ptr [ %ret.ub.salloc, %choice.then21 ], [ %choice.res67, %str.eq.merge58 ]
  %ret.pack69.fca.0.load = load i64, ptr %choice.res68, align 8
  %ret.pack69.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack69.fca.0.load, 0
  %ret.pack69.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res68, i32 0, i32 1
  %ret.pack69.fca.1.load = load ptr, ptr %ret.pack69.fca.1.gep, align 8
  %ret.pack69.fca.1.insert = insertvalue { i64, ptr } %ret.pack69.fca.0.insert, ptr %ret.pack69.fca.1.load, 1
  br label %common.ret

str.eq.then:                                      ; preds = %choice.else
  %eq.memcmp = call i32 @memcmp(ptr %call.res25.fca.1.extract, ptr @str.34, i64 %eq.lhs.len32)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %choice.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %choice.else ]
  %eq.lhs.len36 = load i64, ptr %ret.ub.salloc26, align 8
  %eq.lhs.len37 = and i64 %eq.lhs.len36, 281474976710655
  %eq.len40 = icmp eq i64 %eq.lhs.len37, 3
  br i1 %eq.len40, label %str.eq.then41, label %str.eq.merge43

str.eq.then41:                                    ; preds = %str.eq.merge
  %eq.lhs.data45 = load ptr, ptr %call.res25.fca.1.gep, align 8
  %eq.memcmp47 = call i32 @memcmp(ptr %eq.lhs.data45, ptr @str.35, i64 %eq.lhs.len37)
  %eq.cmp.zero48 = icmp eq i32 %eq.memcmp47, 0
  br label %str.eq.merge43

str.eq.merge43:                                   ; preds = %str.eq.merge, %str.eq.then41
  %str.eq.result49 = phi i1 [ %eq.cmp.zero48, %str.eq.then41 ], [ false, %str.eq.merge ]
  %case.or = or i1 %str.eq.result, %str.eq.result49
  %eq.lhs.len51 = load i64, ptr %ret.ub.salloc26, align 8
  %eq.lhs.len52 = and i64 %eq.lhs.len51, 281474976710655
  %eq.len55 = icmp eq i64 %eq.lhs.len52, 4
  br i1 %eq.len55, label %str.eq.then56, label %str.eq.merge58

str.eq.then56:                                    ; preds = %str.eq.merge43
  %eq.lhs.data60 = load ptr, ptr %call.res25.fca.1.gep, align 8
  %eq.memcmp62 = call i32 @memcmp(ptr %eq.lhs.data60, ptr @str.36, i64 %eq.lhs.len52)
  %eq.cmp.zero63 = icmp eq i32 %eq.memcmp62, 0
  br label %str.eq.merge58

str.eq.merge58:                                   ; preds = %str.eq.merge43, %str.eq.then56
  %str.eq.result64 = phi i1 [ %eq.cmp.zero63, %str.eq.then56 ], [ false, %str.eq.merge43 ]
  %case.or65 = or i1 %case.or, %str.eq.result64
  %choice.res67 = select i1 %case.or65, ptr @str.17.struct, ptr %ret.ub.salloc26
  br label %choice.exit22
}

declare { i64, ptr } @"str::from_int"(i64) #3

declare { i64, ptr } @"str::from_float"(double) #3

define internal void @"json::#stringify_into"(ptr %0, ptr %1) #3 {
entry:
  %tag.id = load i64, ptr %1, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 1, label %choice.case3
    i64 2, label %choice.case27
    i64 3, label %choice.case82
    i64 4, label %choice.case130
    i64 5, label %choice.case272
  ]

choice.exit:                                      ; preds = %entry, %b.grow_done456, %b.grow_done240, %b.grow_done104, %b.grow_done56, %b.grow_done, %choice.case
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  call void @"json::escape_string_into"(ptr %0, ptr %payload.ptr)
  br label %choice.exit

choice.case3:                                     ; preds = %entry
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr9 = load ptr, ptr %pay.gep8, align 8
  %pay.float.null = icmp eq ptr %payload.ptr9, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case3
  %pay.float.val = load double, ptr %payload.ptr9, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case3, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case3 ]
  %call.res = call { i64, ptr } @"json::format_number"(double %pay.float.phi)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len12 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data14 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len15 = load i64, ptr %0, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len15, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len16

b.app.new.len16:                                  ; preds = %pay.float.merge
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap17, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort:                               ; preds = %pay.float.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len16
  %b.cap2 = mul i64 %b.cap17, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len218 = load i64, ptr %0, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data219 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len16, %b.new.buf.len222
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data26 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data26, i64 %b.app.cur.len15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data14, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data26, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum, ptr %0, align 8
  br label %choice.exit

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data219, i64 %b.cur.len218, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len218
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.cur.data2, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case27:                                    ; preds = %entry
  %pay.gep32 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr33 = load ptr, ptr %pay.gep32, align 8
  %pay.int.null = icmp eq ptr %payload.ptr33, null
  br i1 %pay.int.null, label %pay.int.merge, label %pay.int.load

pay.int.load:                                     ; preds = %choice.case27
  %pay.int.val = load i1, ptr %payload.ptr33, align 1
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %choice.case27, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %choice.case27 ]
  %str.0.struct.str.1.struct = select i1 %pay.int.phi, ptr @str.0.struct, ptr @str.1.struct
  %app.str.len39 = load i64, ptr %str.0.struct.str.1.struct, align 8
  %app.str.len40 = and i64 %app.str.len39, 281474976710655
  %app.str.data41 = getelementptr inbounds { i64, ptr }, ptr %str.0.struct.str.1.struct, i32 0, i32 1
  %app.str.data42 = load ptr, ptr %app.str.data41, align 8
  %b.app.cur.len44 = load i64, ptr %0, align 8
  %b.app.new.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len44, i64 %app.str.len40)
  %sum46 = extractvalue { i64, i1 } %b.app.new.len45, 0
  %ovf47 = extractvalue { i64, i1 } %b.app.new.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.app.new.len48

b.app.new.len48:                                  ; preds = %pay.int.merge
  %b.cap51 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap52 = load i64, ptr %b.cap51, align 8
  %b.need.grow53 = icmp slt i64 %b.cap52, %sum46
  br i1 %b.need.grow53, label %b.grow254, label %b.grow_done56

str_overflow_abort49:                             ; preds = %pay.int.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow254:                                        ; preds = %b.app.new.len48
  %b.cap257 = mul i64 %b.cap52, 2
  %b.cap.small58 = icmp slt i64 %b.cap257, 16
  %b.cap.grow59 = select i1 %b.cap.small58, i64 16, i64 %b.cap257
  %b.cap.need60 = icmp slt i64 %b.cap.grow59, %sum46
  %b.new.cap61 = select i1 %b.cap.need60, i64 %sum46, i64 %b.cap.grow59
  %b.cur.len263 = load i64, ptr %0, align 8
  %b.cur.data264 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data265 = load ptr, ptr %b.cur.data264, align 8
  %b.new.buf.len266 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap61, i64 1)
  %sum67 = extractvalue { i64, i1 } %b.new.buf.len266, 0
  %ovf68 = extractvalue { i64, i1 } %b.new.buf.len266, 1
  br i1 %ovf68, label %str_overflow_abort70, label %b.new.buf.len269

b.grow_done56:                                    ; preds = %b.app.new.len48, %b.new.buf.len269
  %b.app.data77 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data78 = load ptr, ptr %b.app.data77, align 8
  %b.app.dst79 = getelementptr i8, ptr %b.app.data78, i64 %b.app.cur.len44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst79, ptr align 1 %app.str.data42, i64 %app.str.len40, i1 false)
  %b.app.nul80 = getelementptr i8, ptr %b.app.data78, i64 %sum46
  store i8 0, ptr %b.app.nul80, align 1
  store i64 %sum46, ptr %0, align 8
  br label %choice.exit

b.new.buf.len269:                                 ; preds = %b.grow254
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf273 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf273, ptr align 1 %b.cur.data265, i64 %b.cur.len263, i1 false)
  %b.grow2.nul74 = getelementptr i8, ptr %b.new.buf273, i64 %b.cur.len263
  store i8 0, ptr %b.grow2.nul74, align 1
  store ptr %b.new.buf273, ptr %b.cur.data264, align 8
  store i64 %b.new.cap61, ptr %b.cap51, align 8
  br label %b.grow_done56

str_overflow_abort70:                             ; preds = %b.grow254
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case82:                                    ; preds = %entry
  %b.app.cur.len92 = load i64, ptr %0, align 8
  %b.app.new.len93 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len92, i64 4)
  %sum94 = extractvalue { i64, i1 } %b.app.new.len93, 0
  %ovf95 = extractvalue { i64, i1 } %b.app.new.len93, 1
  br i1 %ovf95, label %str_overflow_abort97, label %b.app.new.len96

b.app.new.len96:                                  ; preds = %choice.case82
  %b.cap99 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap100 = load i64, ptr %b.cap99, align 8
  %b.need.grow101 = icmp slt i64 %b.cap100, %sum94
  br i1 %b.need.grow101, label %b.grow2102, label %b.grow_done104

str_overflow_abort97:                             ; preds = %choice.case82
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2102:                                       ; preds = %b.app.new.len96
  %b.cap2105 = mul i64 %b.cap100, 2
  %b.cap.small106 = icmp slt i64 %b.cap2105, 16
  %b.cap.grow107 = select i1 %b.cap.small106, i64 16, i64 %b.cap2105
  %b.cap.need108 = icmp slt i64 %b.cap.grow107, %sum94
  %b.new.cap109 = select i1 %b.cap.need108, i64 %sum94, i64 %b.cap.grow107
  %b.cur.len2111 = load i64, ptr %0, align 8
  %b.cur.data2112 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data2113 = load ptr, ptr %b.cur.data2112, align 8
  %b.new.buf.len2114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap109, i64 1)
  %sum115 = extractvalue { i64, i1 } %b.new.buf.len2114, 0
  %ovf116 = extractvalue { i64, i1 } %b.new.buf.len2114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %b.new.buf.len2117

b.grow_done104:                                   ; preds = %b.app.new.len96, %b.new.buf.len2117
  %b.app.data125 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data126 = load ptr, ptr %b.app.data125, align 8
  %b.app.dst127 = getelementptr i8, ptr %b.app.data126, i64 %b.app.cur.len92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst127, ptr align 1 @str.17, i64 4, i1 false)
  %b.app.nul128 = getelementptr i8, ptr %b.app.data126, i64 %sum94
  store i8 0, ptr %b.app.nul128, align 1
  store i64 %sum94, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2117:                                ; preds = %b.grow2102
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2121, ptr align 1 %b.cur.data2113, i64 %b.cur.len2111, i1 false)
  %b.grow2.nul122 = getelementptr i8, ptr %b.new.buf2121, i64 %b.cur.len2111
  store i8 0, ptr %b.grow2.nul122, align 1
  store ptr %b.new.buf2121, ptr %b.cur.data2112, align 8
  store i64 %b.new.cap109, ptr %b.cap99, align 8
  br label %b.grow_done104

str_overflow_abort118:                            ; preds = %b.grow2102
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case130:                                   ; preds = %entry
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr136 = load ptr, ptr %pay.gep135, align 8
  %b.rn.cur.len139 = load i64, ptr %0, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len139, i64 1)
  %sum140 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf141 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf141, label %str_overflow_abort143, label %b.rn.new.len142

b.rn.new.len142:                                  ; preds = %choice.case130
  %b.cap145 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap146 = load i64, ptr %b.cap145, align 8
  %b.need.grow147 = icmp slt i64 %b.cap146, %sum140
  br i1 %b.need.grow147, label %b.grow2148, label %b.grow_done150

str_overflow_abort143:                            ; preds = %choice.case130
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2148:                                       ; preds = %b.rn.new.len142
  %b.cap2151 = mul i64 %b.cap146, 2
  %b.cap.small152 = icmp slt i64 %b.cap2151, 16
  %b.cap.grow153 = select i1 %b.cap.small152, i64 16, i64 %b.cap2151
  %b.cap.need154 = icmp slt i64 %b.cap.grow153, %sum140
  %b.new.cap155 = select i1 %b.cap.need154, i64 %sum140, i64 %b.cap.grow153
  %b.cur.len2157 = load i64, ptr %0, align 8
  %b.cur.data2158 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data2159 = load ptr, ptr %b.cur.data2158, align 8
  %b.new.buf.len2160 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap155, i64 1)
  %sum161 = extractvalue { i64, i1 } %b.new.buf.len2160, 0
  %ovf162 = extractvalue { i64, i1 } %b.new.buf.len2160, 1
  br i1 %ovf162, label %str_overflow_abort164, label %b.new.buf.len2163

b.grow_done150:                                   ; preds = %b.rn.new.len142, %b.new.buf.len2163
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.rn.data171 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data171, i64 %b.rn.cur.len139
  store i8 91, ptr %b.rn.dst, align 1
  %br.nul = getelementptr i8, ptr %b.rn.data171, i64 %sum140
  store i8 0, ptr %br.nul, align 1
  store i64 %sum140, ptr %0, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr136, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data = load ptr, ptr %payload.ptr136, align 8
  br label %loop.header.140

b.new.buf.len2163:                                ; preds = %b.grow2148
  %arena.cur166 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2167 = call ptr @dva_arena_alloc(ptr %arena.cur166, i64 %sum161)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2167, ptr align 1 %b.cur.data2159, i64 %b.cur.len2157, i1 false)
  %b.grow2.nul168 = getelementptr i8, ptr %b.new.buf2167, i64 %b.cur.len2157
  store i8 0, ptr %b.grow2.nul168, align 1
  store ptr %b.new.buf2167, ptr %b.cur.data2158, align 8
  store i64 %b.new.cap155, ptr %b.cap145, align 8
  br label %b.grow_done150

str_overflow_abort164:                            ; preds = %b.grow2148
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.140:                                  ; preds = %choice.exit177, %b.grow_done150
  %loop.idx.140.0 = phi i64 [ 0, %b.grow_done150 ], [ %loop.next, %choice.exit177 ]
  %loop.cond = icmp slt i64 %loop.idx.140.0, %sl.len
  br i1 %loop.cond, label %loop.body.140, label %loop.exit.140

loop.body.140:                                    ; preds = %loop.header.140
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.len.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %loop.idx.140.0
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %loop.idx.140.0
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  %cmptmp = icmp sgt i64 %loop.idx.140.0, 0
  br i1 %cmptmp, label %choice.then176, label %choice.exit177

loop.exit.140:                                    ; preds = %loop.header.140
  %b.rn.cur.len228 = load i64, ptr %0, align 8
  %b.rn.new.len229 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len228, i64 1)
  %sum230 = extractvalue { i64, i1 } %b.rn.new.len229, 0
  %ovf231 = extractvalue { i64, i1 } %b.rn.new.len229, 1
  br i1 %ovf231, label %str_overflow_abort233, label %b.rn.new.len232

choice.then176:                                   ; preds = %loop.body.140
  %b.rn.cur.len180 = load i64, ptr %0, align 8
  %b.rn.new.len181 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len180, i64 1)
  %sum182 = extractvalue { i64, i1 } %b.rn.new.len181, 0
  %ovf183 = extractvalue { i64, i1 } %b.rn.new.len181, 1
  br i1 %ovf183, label %str_overflow_abort185, label %b.rn.new.len184

choice.exit177:                                   ; preds = %b.grow_done192, %loop.body.140
  call void @"json::#stringify_into"(ptr %0, ptr %sl.elem.val)
  %loop.next = add i64 %loop.idx.140.0, 1
  br label %loop.header.140

b.rn.new.len184:                                  ; preds = %choice.then176
  %b.cap188 = load i64, ptr %b.cap145, align 8
  %b.need.grow189 = icmp slt i64 %b.cap188, %sum182
  br i1 %b.need.grow189, label %b.grow2190, label %b.grow_done192

str_overflow_abort185:                            ; preds = %choice.then176
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2190:                                       ; preds = %b.rn.new.len184
  %b.cap2193 = mul i64 %b.cap188, 2
  %b.cap.small194 = icmp slt i64 %b.cap2193, 16
  %b.cap.grow195 = select i1 %b.cap.small194, i64 16, i64 %b.cap2193
  %b.cap.need196 = icmp slt i64 %b.cap.grow195, %sum182
  %b.new.cap197 = select i1 %b.cap.need196, i64 %sum182, i64 %b.cap.grow195
  %b.cur.len2199 = load i64, ptr %0, align 8
  %b.cur.data2201 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2202 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap197, i64 1)
  %sum203 = extractvalue { i64, i1 } %b.new.buf.len2202, 0
  %ovf204 = extractvalue { i64, i1 } %b.new.buf.len2202, 1
  br i1 %ovf204, label %str_overflow_abort206, label %b.new.buf.len2205

b.grow_done192:                                   ; preds = %b.rn.new.len184, %b.new.buf.len2205
  %b.rn.data214 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst215 = getelementptr i8, ptr %b.rn.data214, i64 %b.rn.cur.len180
  store i8 44, ptr %b.rn.dst215, align 1
  %br.nul222 = getelementptr i8, ptr %b.rn.data214, i64 %sum182
  store i8 0, ptr %br.nul222, align 1
  store i64 %sum182, ptr %0, align 8
  br label %choice.exit177

b.new.buf.len2205:                                ; preds = %b.grow2190
  %arena.cur208 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 %sum203)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2209, ptr align 1 %b.cur.data2201, i64 %b.cur.len2199, i1 false)
  %b.grow2.nul210 = getelementptr i8, ptr %b.new.buf2209, i64 %b.cur.len2199
  store i8 0, ptr %b.grow2.nul210, align 1
  store ptr %b.new.buf2209, ptr %b.rn.data, align 8
  store i64 %b.new.cap197, ptr %b.cap145, align 8
  br label %b.grow_done192

str_overflow_abort206:                            ; preds = %b.grow2190
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len232:                                  ; preds = %loop.exit.140
  %b.cap236 = load i64, ptr %b.cap145, align 8
  %b.need.grow237 = icmp slt i64 %b.cap236, %sum230
  br i1 %b.need.grow237, label %b.grow2238, label %b.grow_done240

str_overflow_abort233:                            ; preds = %loop.exit.140
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2238:                                       ; preds = %b.rn.new.len232
  %b.cap2241 = mul i64 %b.cap236, 2
  %b.cap.small242 = icmp slt i64 %b.cap2241, 16
  %b.cap.grow243 = select i1 %b.cap.small242, i64 16, i64 %b.cap2241
  %b.cap.need244 = icmp slt i64 %b.cap.grow243, %sum230
  %b.new.cap245 = select i1 %b.cap.need244, i64 %sum230, i64 %b.cap.grow243
  %b.cur.len2247 = load i64, ptr %0, align 8
  %b.cur.data2249 = load ptr, ptr %b.rn.data, align 8
  %b.new.buf.len2250 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap245, i64 1)
  %sum251 = extractvalue { i64, i1 } %b.new.buf.len2250, 0
  %ovf252 = extractvalue { i64, i1 } %b.new.buf.len2250, 1
  br i1 %ovf252, label %str_overflow_abort254, label %b.new.buf.len2253

b.grow_done240:                                   ; preds = %b.rn.new.len232, %b.new.buf.len2253
  %b.rn.data262 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst263 = getelementptr i8, ptr %b.rn.data262, i64 %b.rn.cur.len228
  store i8 93, ptr %b.rn.dst263, align 1
  %br.nul270 = getelementptr i8, ptr %b.rn.data262, i64 %sum230
  store i8 0, ptr %br.nul270, align 1
  store i64 %sum230, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2253:                                ; preds = %b.grow2238
  %arena.cur256 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 %sum251)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2257, ptr align 1 %b.cur.data2249, i64 %b.cur.len2247, i1 false)
  %b.grow2.nul258 = getelementptr i8, ptr %b.new.buf2257, i64 %b.cur.len2247
  store i8 0, ptr %b.grow2.nul258, align 1
  store ptr %b.new.buf2257, ptr %b.rn.data, align 8
  store i64 %b.new.cap245, ptr %b.cap145, align 8
  br label %b.grow_done240

str_overflow_abort254:                            ; preds = %b.grow2238
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case272:                                   ; preds = %entry
  %pay.gep277 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr278 = load ptr, ptr %pay.gep277, align 8
  %b.rn.cur.len282 = load i64, ptr %0, align 8
  %b.rn.new.len283 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len282, i64 1)
  %sum284 = extractvalue { i64, i1 } %b.rn.new.len283, 0
  %ovf285 = extractvalue { i64, i1 } %b.rn.new.len283, 1
  br i1 %ovf285, label %str_overflow_abort287, label %b.rn.new.len286

b.rn.new.len286:                                  ; preds = %choice.case272
  %b.cap289 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap290 = load i64, ptr %b.cap289, align 8
  %b.need.grow291 = icmp slt i64 %b.cap290, %sum284
  br i1 %b.need.grow291, label %b.grow2292, label %b.grow_done294

str_overflow_abort287:                            ; preds = %choice.case272
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2292:                                       ; preds = %b.rn.new.len286
  %b.cap2295 = mul i64 %b.cap290, 2
  %b.cap.small296 = icmp slt i64 %b.cap2295, 16
  %b.cap.grow297 = select i1 %b.cap.small296, i64 16, i64 %b.cap2295
  %b.cap.need298 = icmp slt i64 %b.cap.grow297, %sum284
  %b.new.cap299 = select i1 %b.cap.need298, i64 %sum284, i64 %b.cap.grow297
  %b.cur.len2301 = load i64, ptr %0, align 8
  %b.cur.data2302 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data2303 = load ptr, ptr %b.cur.data2302, align 8
  %b.new.buf.len2304 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap299, i64 1)
  %sum305 = extractvalue { i64, i1 } %b.new.buf.len2304, 0
  %ovf306 = extractvalue { i64, i1 } %b.new.buf.len2304, 1
  br i1 %ovf306, label %str_overflow_abort308, label %b.new.buf.len2307

b.grow_done294:                                   ; preds = %b.rn.new.len286, %b.new.buf.len2307
  %b.rn.data315 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.rn.data316 = load ptr, ptr %b.rn.data315, align 8
  %b.rn.dst317 = getelementptr i8, ptr %b.rn.data316, i64 %b.rn.cur.len282
  store i8 123, ptr %b.rn.dst317, align 1
  %br.nul324 = getelementptr i8, ptr %b.rn.data316, i64 %sum284
  store i8 0, ptr %br.nul324, align 1
  store i64 %sum284, ptr %0, align 8
  %sl.len.gep327 = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr278, i32 0, i32 1
  %sl.len.raw328 = load i64, ptr %sl.len.gep327, align 8
  %sl.len329 = and i64 %sl.len.raw328, 4611686018427387903
  %sl.data331 = load ptr, ptr %payload.ptr278, align 8
  br label %loop.header.144

b.new.buf.len2307:                                ; preds = %b.grow2292
  %arena.cur310 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2311 = call ptr @dva_arena_alloc(ptr %arena.cur310, i64 %sum305)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2311, ptr align 1 %b.cur.data2303, i64 %b.cur.len2301, i1 false)
  %b.grow2.nul312 = getelementptr i8, ptr %b.new.buf2311, i64 %b.cur.len2301
  store i8 0, ptr %b.grow2.nul312, align 1
  store ptr %b.new.buf2311, ptr %b.cur.data2302, align 8
  store i64 %b.new.cap299, ptr %b.cap289, align 8
  br label %b.grow_done294

str_overflow_abort308:                            ; preds = %b.grow2292
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.144:                                  ; preds = %b.grow_done404, %b.grow_done294
  %loop.idx.144.0 = phi i64 [ 0, %b.grow_done294 ], [ %loop.next441, %b.grow_done404 ]
  %loop.cond333 = icmp slt i64 %loop.idx.144.0, %sl.len329
  br i1 %loop.cond333, label %loop.body.144, label %loop.exit.144

loop.body.144:                                    ; preds = %loop.header.144
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.len.gep327, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.144:                                    ; preds = %loop.header.144
  %b.rn.cur.len444 = load i64, ptr %0, align 8
  %b.rn.new.len445 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len444, i64 1)
  %sum446 = extractvalue { i64, i1 } %b.rn.new.len445, 0
  %ovf447 = extractvalue { i64, i1 } %b.rn.new.len445, 1
  br i1 %ovf447, label %str_overflow_abort449, label %b.rn.new.len448

sl.rec.elem.pbb:                                  ; preds = %loop.body.144
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data331, i64 %loop.idx.144.0
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.144
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data331, i64 %loop.idx.144.0
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  %cmptmp339 = icmp sgt i64 %loop.idx.144.0, 0
  br i1 %cmptmp339, label %choice.then340, label %choice.exit341

choice.then340:                                   ; preds = %sl.rec.elem.dbb
  %b.rn.cur.len344 = load i64, ptr %0, align 8
  %b.rn.new.len345 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len344, i64 1)
  %sum346 = extractvalue { i64, i1 } %b.rn.new.len345, 0
  %ovf347 = extractvalue { i64, i1 } %b.rn.new.len345, 1
  br i1 %ovf347, label %str_overflow_abort349, label %b.rn.new.len348

choice.exit341:                                   ; preds = %b.grow_done356, %sl.rec.elem.dbb
  %fld.load = load ptr, ptr %sl.rec.elem, align 8
  call void @"json::escape_string_into"(ptr %0, ptr %fld.load)
  %b.rn.cur.len392 = load i64, ptr %0, align 8
  %b.rn.new.len393 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len392, i64 1)
  %sum394 = extractvalue { i64, i1 } %b.rn.new.len393, 0
  %ovf395 = extractvalue { i64, i1 } %b.rn.new.len393, 1
  br i1 %ovf395, label %str_overflow_abort397, label %b.rn.new.len396

b.rn.new.len348:                                  ; preds = %choice.then340
  %b.cap352 = load i64, ptr %b.cap289, align 8
  %b.need.grow353 = icmp slt i64 %b.cap352, %sum346
  br i1 %b.need.grow353, label %b.grow2354, label %b.grow_done356

str_overflow_abort349:                            ; preds = %choice.then340
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2354:                                       ; preds = %b.rn.new.len348
  %b.cap2357 = mul i64 %b.cap352, 2
  %b.cap.small358 = icmp slt i64 %b.cap2357, 16
  %b.cap.grow359 = select i1 %b.cap.small358, i64 16, i64 %b.cap2357
  %b.cap.need360 = icmp slt i64 %b.cap.grow359, %sum346
  %b.new.cap361 = select i1 %b.cap.need360, i64 %sum346, i64 %b.cap.grow359
  %b.cur.len2363 = load i64, ptr %0, align 8
  %b.cur.data2365 = load ptr, ptr %b.rn.data315, align 8
  %b.new.buf.len2366 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap361, i64 1)
  %sum367 = extractvalue { i64, i1 } %b.new.buf.len2366, 0
  %ovf368 = extractvalue { i64, i1 } %b.new.buf.len2366, 1
  br i1 %ovf368, label %str_overflow_abort370, label %b.new.buf.len2369

b.grow_done356:                                   ; preds = %b.rn.new.len348, %b.new.buf.len2369
  %b.rn.data378 = load ptr, ptr %b.rn.data315, align 8
  %b.rn.dst379 = getelementptr i8, ptr %b.rn.data378, i64 %b.rn.cur.len344
  store i8 44, ptr %b.rn.dst379, align 1
  %br.nul386 = getelementptr i8, ptr %b.rn.data378, i64 %sum346
  store i8 0, ptr %br.nul386, align 1
  store i64 %sum346, ptr %0, align 8
  br label %choice.exit341

b.new.buf.len2369:                                ; preds = %b.grow2354
  %arena.cur372 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2373 = call ptr @dva_arena_alloc(ptr %arena.cur372, i64 %sum367)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2373, ptr align 1 %b.cur.data2365, i64 %b.cur.len2363, i1 false)
  %b.grow2.nul374 = getelementptr i8, ptr %b.new.buf2373, i64 %b.cur.len2363
  store i8 0, ptr %b.grow2.nul374, align 1
  store ptr %b.new.buf2373, ptr %b.rn.data315, align 8
  store i64 %b.new.cap361, ptr %b.cap289, align 8
  br label %b.grow_done356

str_overflow_abort370:                            ; preds = %b.grow2354
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len396:                                  ; preds = %choice.exit341
  %b.cap400 = load i64, ptr %b.cap289, align 8
  %b.need.grow401 = icmp slt i64 %b.cap400, %sum394
  br i1 %b.need.grow401, label %b.grow2402, label %b.grow_done404

str_overflow_abort397:                            ; preds = %choice.exit341
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2402:                                       ; preds = %b.rn.new.len396
  %b.cap2405 = mul i64 %b.cap400, 2
  %b.cap.small406 = icmp slt i64 %b.cap2405, 16
  %b.cap.grow407 = select i1 %b.cap.small406, i64 16, i64 %b.cap2405
  %b.cap.need408 = icmp slt i64 %b.cap.grow407, %sum394
  %b.new.cap409 = select i1 %b.cap.need408, i64 %sum394, i64 %b.cap.grow407
  %b.cur.len2411 = load i64, ptr %0, align 8
  %b.cur.data2413 = load ptr, ptr %b.rn.data315, align 8
  %b.new.buf.len2414 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap409, i64 1)
  %sum415 = extractvalue { i64, i1 } %b.new.buf.len2414, 0
  %ovf416 = extractvalue { i64, i1 } %b.new.buf.len2414, 1
  br i1 %ovf416, label %str_overflow_abort418, label %b.new.buf.len2417

b.grow_done404:                                   ; preds = %b.rn.new.len396, %b.new.buf.len2417
  %b.rn.data426 = load ptr, ptr %b.rn.data315, align 8
  %b.rn.dst427 = getelementptr i8, ptr %b.rn.data426, i64 %b.rn.cur.len392
  store i8 58, ptr %b.rn.dst427, align 1
  %br.nul434 = getelementptr i8, ptr %b.rn.data426, i64 %sum394
  store i8 0, ptr %br.nul434, align 1
  store i64 %sum394, ptr %0, align 8
  %fld.gep438 = getelementptr inbounds { ptr, ptr }, ptr %sl.rec.elem, i32 0, i32 1
  %fld.load439 = load ptr, ptr %fld.gep438, align 8
  call void @"json::#stringify_into"(ptr %0, ptr %fld.load439)
  %loop.next441 = add i64 %loop.idx.144.0, 1
  br label %loop.header.144

b.new.buf.len2417:                                ; preds = %b.grow2402
  %arena.cur420 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2421 = call ptr @dva_arena_alloc(ptr %arena.cur420, i64 %sum415)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2421, ptr align 1 %b.cur.data2413, i64 %b.cur.len2411, i1 false)
  %b.grow2.nul422 = getelementptr i8, ptr %b.new.buf2421, i64 %b.cur.len2411
  store i8 0, ptr %b.grow2.nul422, align 1
  store ptr %b.new.buf2421, ptr %b.rn.data315, align 8
  store i64 %b.new.cap409, ptr %b.cap289, align 8
  br label %b.grow_done404

str_overflow_abort418:                            ; preds = %b.grow2402
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len448:                                  ; preds = %loop.exit.144
  %b.cap452 = load i64, ptr %b.cap289, align 8
  %b.need.grow453 = icmp slt i64 %b.cap452, %sum446
  br i1 %b.need.grow453, label %b.grow2454, label %b.grow_done456

str_overflow_abort449:                            ; preds = %loop.exit.144
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2454:                                       ; preds = %b.rn.new.len448
  %b.cap2457 = mul i64 %b.cap452, 2
  %b.cap.small458 = icmp slt i64 %b.cap2457, 16
  %b.cap.grow459 = select i1 %b.cap.small458, i64 16, i64 %b.cap2457
  %b.cap.need460 = icmp slt i64 %b.cap.grow459, %sum446
  %b.new.cap461 = select i1 %b.cap.need460, i64 %sum446, i64 %b.cap.grow459
  %b.cur.len2463 = load i64, ptr %0, align 8
  %b.cur.data2465 = load ptr, ptr %b.rn.data315, align 8
  %b.new.buf.len2466 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap461, i64 1)
  %sum467 = extractvalue { i64, i1 } %b.new.buf.len2466, 0
  %ovf468 = extractvalue { i64, i1 } %b.new.buf.len2466, 1
  br i1 %ovf468, label %str_overflow_abort470, label %b.new.buf.len2469

b.grow_done456:                                   ; preds = %b.rn.new.len448, %b.new.buf.len2469
  %b.rn.data478 = load ptr, ptr %b.rn.data315, align 8
  %b.rn.dst479 = getelementptr i8, ptr %b.rn.data478, i64 %b.rn.cur.len444
  store i8 125, ptr %b.rn.dst479, align 1
  %br.nul486 = getelementptr i8, ptr %b.rn.data478, i64 %sum446
  store i8 0, ptr %br.nul486, align 1
  store i64 %sum446, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2469:                                ; preds = %b.grow2454
  %arena.cur472 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2473 = call ptr @dva_arena_alloc(ptr %arena.cur472, i64 %sum467)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2473, ptr align 1 %b.cur.data2465, i64 %b.cur.len2463, i1 false)
  %b.grow2.nul474 = getelementptr i8, ptr %b.new.buf2473, i64 %b.cur.len2463
  store i8 0, ptr %b.grow2.nul474, align 1
  store ptr %b.new.buf2473, ptr %b.rn.data315, align 8
  store i64 %b.new.cap461, ptr %b.cap289, align 8
  br label %b.grow_done456

str_overflow_abort470:                            ; preds = %b.grow2454
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal void @"json::#append_indent"(ptr %0, i64 %1) #3 {
entry:
  br label %loop.header.148

loop.header.148:                                  ; preds = %b.grow_done, %entry
  %loop.idx.148.0 = phi i64 [ 0, %entry ], [ %loop.next, %b.grow_done ]
  %loop.cond = icmp slt i64 %loop.idx.148.0, %1
  br i1 %loop.cond, label %loop.body.148, label %loop.exit.148

loop.body.148:                                    ; preds = %loop.header.148
  %b.rn.cur.len1 = load i64, ptr %0, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len1, i64 1)
  %sum = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.rn.new.len2

loop.exit.148:                                    ; preds = %loop.header.148
  ret void

b.rn.new.len2:                                    ; preds = %loop.body.148
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap3 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap3, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort:                               ; preds = %loop.body.148
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.rn.new.len2
  %b.cap2 = mul i64 %b.cap3, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len24 = load i64, ptr %0, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len28

b.grow_done:                                      ; preds = %b.rn.new.len2, %b.new.buf.len28
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.rn.data11 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data11, i64 %b.rn.cur.len1
  store i8 32, ptr %b.rn.dst, align 1
  %br.nul = getelementptr i8, ptr %b.rn.data11, i64 %sum
  store i8 0, ptr %br.nul, align 1
  store i64 %sum, ptr %0, align 8
  %loop.next = add i64 %loop.idx.148.0, 1
  br label %loop.header.148

b.new.buf.len28:                                  ; preds = %b.grow2
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data25, i64 %b.cur.len24, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len24
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.cur.data2, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.grow_done

str_overflow_abort9:                              ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal void @"json::#stringify_pretty_into"(ptr %0, ptr %1, i64 %2, i64 %3) #3 {
entry:
  %tag.id = load i64, ptr %1, align 8
  switch i64 %tag.id, label %choice.exit [
    i64 0, label %choice.case
    i64 1, label %choice.case3
    i64 2, label %choice.case27
    i64 3, label %choice.case82
    i64 4, label %choice.case130
    i64 5, label %choice.case370
  ]

choice.exit:                                      ; preds = %b.grow_done403, %b.grow_done654, %entry, %b.grow_done159, %b.grow_done338, %b.grow_done104, %b.grow_done56, %b.grow_done, %choice.case
  ret void

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  call void @"json::escape_string_into"(ptr %0, ptr %payload.ptr)
  br label %choice.exit

choice.case3:                                     ; preds = %entry
  %pay.gep8 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr9 = load ptr, ptr %pay.gep8, align 8
  %pay.float.null = icmp eq ptr %payload.ptr9, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case3
  %pay.float.val = load double, ptr %payload.ptr9, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case3, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case3 ]
  %call.res = call { i64, ptr } @"json::format_number"(double %pay.float.phi)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %app.str.len12 = load i64, ptr %ret.ub.alloc, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %app.str.data14 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len15 = load i64, ptr %0, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len15, i64 %app.str.len13)
  %sum = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.app.new.len16

b.app.new.len16:                                  ; preds = %pay.float.merge
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap17, %sum
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort:                               ; preds = %pay.float.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len16
  %b.cap2 = mul i64 %b.cap17, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum
  %b.new.cap = select i1 %b.cap.need, i64 %sum, i64 %b.cap.grow
  %b.cur.len218 = load i64, ptr %0, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data219 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len222

b.grow_done:                                      ; preds = %b.app.new.len16, %b.new.buf.len222
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data26 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data26, i64 %b.app.cur.len15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data14, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data26, i64 %sum
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum, ptr %0, align 8
  br label %choice.exit

b.new.buf.len222:                                 ; preds = %b.grow2
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data219, i64 %b.cur.len218, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len218
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.cur.data2, align 8
  store i64 %b.new.cap, ptr %b.cap, align 8
  br label %b.grow_done

str_overflow_abort23:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case27:                                    ; preds = %entry
  %pay.gep32 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr33 = load ptr, ptr %pay.gep32, align 8
  %pay.int.null = icmp eq ptr %payload.ptr33, null
  br i1 %pay.int.null, label %pay.int.merge, label %pay.int.load

pay.int.load:                                     ; preds = %choice.case27
  %pay.int.val = load i1, ptr %payload.ptr33, align 1
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %choice.case27, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %choice.case27 ]
  %str.0.struct.str.1.struct = select i1 %pay.int.phi, ptr @str.0.struct, ptr @str.1.struct
  %app.str.len39 = load i64, ptr %str.0.struct.str.1.struct, align 8
  %app.str.len40 = and i64 %app.str.len39, 281474976710655
  %app.str.data41 = getelementptr inbounds { i64, ptr }, ptr %str.0.struct.str.1.struct, i32 0, i32 1
  %app.str.data42 = load ptr, ptr %app.str.data41, align 8
  %b.app.cur.len44 = load i64, ptr %0, align 8
  %b.app.new.len45 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len44, i64 %app.str.len40)
  %sum46 = extractvalue { i64, i1 } %b.app.new.len45, 0
  %ovf47 = extractvalue { i64, i1 } %b.app.new.len45, 1
  br i1 %ovf47, label %str_overflow_abort49, label %b.app.new.len48

b.app.new.len48:                                  ; preds = %pay.int.merge
  %b.cap51 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap52 = load i64, ptr %b.cap51, align 8
  %b.need.grow53 = icmp slt i64 %b.cap52, %sum46
  br i1 %b.need.grow53, label %b.grow254, label %b.grow_done56

str_overflow_abort49:                             ; preds = %pay.int.merge
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow254:                                        ; preds = %b.app.new.len48
  %b.cap257 = mul i64 %b.cap52, 2
  %b.cap.small58 = icmp slt i64 %b.cap257, 16
  %b.cap.grow59 = select i1 %b.cap.small58, i64 16, i64 %b.cap257
  %b.cap.need60 = icmp slt i64 %b.cap.grow59, %sum46
  %b.new.cap61 = select i1 %b.cap.need60, i64 %sum46, i64 %b.cap.grow59
  %b.cur.len263 = load i64, ptr %0, align 8
  %b.cur.data264 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data265 = load ptr, ptr %b.cur.data264, align 8
  %b.new.buf.len266 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap61, i64 1)
  %sum67 = extractvalue { i64, i1 } %b.new.buf.len266, 0
  %ovf68 = extractvalue { i64, i1 } %b.new.buf.len266, 1
  br i1 %ovf68, label %str_overflow_abort70, label %b.new.buf.len269

b.grow_done56:                                    ; preds = %b.app.new.len48, %b.new.buf.len269
  %b.app.data77 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data78 = load ptr, ptr %b.app.data77, align 8
  %b.app.dst79 = getelementptr i8, ptr %b.app.data78, i64 %b.app.cur.len44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst79, ptr align 1 %app.str.data42, i64 %app.str.len40, i1 false)
  %b.app.nul80 = getelementptr i8, ptr %b.app.data78, i64 %sum46
  store i8 0, ptr %b.app.nul80, align 1
  store i64 %sum46, ptr %0, align 8
  br label %choice.exit

b.new.buf.len269:                                 ; preds = %b.grow254
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf273 = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 %sum67)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf273, ptr align 1 %b.cur.data265, i64 %b.cur.len263, i1 false)
  %b.grow2.nul74 = getelementptr i8, ptr %b.new.buf273, i64 %b.cur.len263
  store i8 0, ptr %b.grow2.nul74, align 1
  store ptr %b.new.buf273, ptr %b.cur.data264, align 8
  store i64 %b.new.cap61, ptr %b.cap51, align 8
  br label %b.grow_done56

str_overflow_abort70:                             ; preds = %b.grow254
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case82:                                    ; preds = %entry
  %b.app.cur.len92 = load i64, ptr %0, align 8
  %b.app.new.len93 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len92, i64 4)
  %sum94 = extractvalue { i64, i1 } %b.app.new.len93, 0
  %ovf95 = extractvalue { i64, i1 } %b.app.new.len93, 1
  br i1 %ovf95, label %str_overflow_abort97, label %b.app.new.len96

b.app.new.len96:                                  ; preds = %choice.case82
  %b.cap99 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap100 = load i64, ptr %b.cap99, align 8
  %b.need.grow101 = icmp slt i64 %b.cap100, %sum94
  br i1 %b.need.grow101, label %b.grow2102, label %b.grow_done104

str_overflow_abort97:                             ; preds = %choice.case82
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2102:                                       ; preds = %b.app.new.len96
  %b.cap2105 = mul i64 %b.cap100, 2
  %b.cap.small106 = icmp slt i64 %b.cap2105, 16
  %b.cap.grow107 = select i1 %b.cap.small106, i64 16, i64 %b.cap2105
  %b.cap.need108 = icmp slt i64 %b.cap.grow107, %sum94
  %b.new.cap109 = select i1 %b.cap.need108, i64 %sum94, i64 %b.cap.grow107
  %b.cur.len2111 = load i64, ptr %0, align 8
  %b.cur.data2112 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data2113 = load ptr, ptr %b.cur.data2112, align 8
  %b.new.buf.len2114 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap109, i64 1)
  %sum115 = extractvalue { i64, i1 } %b.new.buf.len2114, 0
  %ovf116 = extractvalue { i64, i1 } %b.new.buf.len2114, 1
  br i1 %ovf116, label %str_overflow_abort118, label %b.new.buf.len2117

b.grow_done104:                                   ; preds = %b.app.new.len96, %b.new.buf.len2117
  %b.app.data125 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data126 = load ptr, ptr %b.app.data125, align 8
  %b.app.dst127 = getelementptr i8, ptr %b.app.data126, i64 %b.app.cur.len92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst127, ptr align 1 @str.17, i64 4, i1 false)
  %b.app.nul128 = getelementptr i8, ptr %b.app.data126, i64 %sum94
  store i8 0, ptr %b.app.nul128, align 1
  store i64 %sum94, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2117:                                ; preds = %b.grow2102
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2121 = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 %sum115)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2121, ptr align 1 %b.cur.data2113, i64 %b.cur.len2111, i1 false)
  %b.grow2.nul122 = getelementptr i8, ptr %b.new.buf2121, i64 %b.cur.len2111
  store i8 0, ptr %b.grow2.nul122, align 1
  store ptr %b.new.buf2121, ptr %b.cur.data2112, align 8
  store i64 %b.new.cap109, ptr %b.cap99, align 8
  br label %b.grow_done104

str_overflow_abort118:                            ; preds = %b.grow2102
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case130:                                   ; preds = %entry
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr136 = load ptr, ptr %pay.gep135, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr136, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  %cmptmp = icmp eq i64 %slice.len, 0
  br i1 %cmptmp, label %choice.then139, label %choice.else140

choice.then139:                                   ; preds = %choice.case130
  %b.app.cur.len147 = load i64, ptr %0, align 8
  %b.app.new.len148 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len147, i64 2)
  %sum149 = extractvalue { i64, i1 } %b.app.new.len148, 0
  %ovf150 = extractvalue { i64, i1 } %b.app.new.len148, 1
  br i1 %ovf150, label %str_overflow_abort152, label %b.app.new.len151

choice.else140:                                   ; preds = %choice.case130
  %b.app.cur.len190 = load i64, ptr %0, align 8
  %b.app.new.len191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len190, i64 2)
  %sum192 = extractvalue { i64, i1 } %b.app.new.len191, 0
  %ovf193 = extractvalue { i64, i1 } %b.app.new.len191, 1
  br i1 %ovf193, label %str_overflow_abort195, label %b.app.new.len194

b.app.new.len151:                                 ; preds = %choice.then139
  %b.cap154 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap155 = load i64, ptr %b.cap154, align 8
  %b.need.grow156 = icmp slt i64 %b.cap155, %sum149
  br i1 %b.need.grow156, label %b.grow2157, label %b.grow_done159

str_overflow_abort152:                            ; preds = %choice.then139
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2157:                                       ; preds = %b.app.new.len151
  %b.cap2160 = mul i64 %b.cap155, 2
  %b.cap.small161 = icmp slt i64 %b.cap2160, 16
  %b.cap.grow162 = select i1 %b.cap.small161, i64 16, i64 %b.cap2160
  %b.cap.need163 = icmp slt i64 %b.cap.grow162, %sum149
  %b.new.cap164 = select i1 %b.cap.need163, i64 %sum149, i64 %b.cap.grow162
  %b.cur.len2166 = load i64, ptr %0, align 8
  %b.cur.data2167 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data2168 = load ptr, ptr %b.cur.data2167, align 8
  %b.new.buf.len2169 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap164, i64 1)
  %sum170 = extractvalue { i64, i1 } %b.new.buf.len2169, 0
  %ovf171 = extractvalue { i64, i1 } %b.new.buf.len2169, 1
  br i1 %ovf171, label %str_overflow_abort173, label %b.new.buf.len2172

b.grow_done159:                                   ; preds = %b.app.new.len151, %b.new.buf.len2172
  %b.app.data180 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data181 = load ptr, ptr %b.app.data180, align 8
  %b.app.dst182 = getelementptr i8, ptr %b.app.data181, i64 %b.app.cur.len147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst182, ptr align 1 @str.37, i64 2, i1 false)
  %b.app.nul183 = getelementptr i8, ptr %b.app.data181, i64 %sum149
  store i8 0, ptr %b.app.nul183, align 1
  store i64 %sum149, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2172:                                ; preds = %b.grow2157
  %arena.cur175 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2176 = call ptr @dva_arena_alloc(ptr %arena.cur175, i64 %sum170)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2176, ptr align 1 %b.cur.data2168, i64 %b.cur.len2166, i1 false)
  %b.grow2.nul177 = getelementptr i8, ptr %b.new.buf2176, i64 %b.cur.len2166
  store i8 0, ptr %b.grow2.nul177, align 1
  store ptr %b.new.buf2176, ptr %b.cur.data2167, align 8
  store i64 %b.new.cap164, ptr %b.cap154, align 8
  br label %b.grow_done159

str_overflow_abort173:                            ; preds = %b.grow2157
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len194:                                 ; preds = %choice.else140
  %b.cap197 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap198 = load i64, ptr %b.cap197, align 8
  %b.need.grow199 = icmp slt i64 %b.cap198, %sum192
  br i1 %b.need.grow199, label %b.grow2200, label %b.grow_done202

str_overflow_abort195:                            ; preds = %choice.else140
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2200:                                       ; preds = %b.app.new.len194
  %b.cap2203 = mul i64 %b.cap198, 2
  %b.cap.small204 = icmp slt i64 %b.cap2203, 16
  %b.cap.grow205 = select i1 %b.cap.small204, i64 16, i64 %b.cap2203
  %b.cap.need206 = icmp slt i64 %b.cap.grow205, %sum192
  %b.new.cap207 = select i1 %b.cap.need206, i64 %sum192, i64 %b.cap.grow205
  %b.cur.len2209 = load i64, ptr %0, align 8
  %b.cur.data2210 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data2211 = load ptr, ptr %b.cur.data2210, align 8
  %b.new.buf.len2212 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap207, i64 1)
  %sum213 = extractvalue { i64, i1 } %b.new.buf.len2212, 0
  %ovf214 = extractvalue { i64, i1 } %b.new.buf.len2212, 1
  br i1 %ovf214, label %str_overflow_abort216, label %b.new.buf.len2215

b.grow_done202:                                   ; preds = %b.app.new.len194, %b.new.buf.len2215
  %b.app.data223 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data224 = load ptr, ptr %b.app.data223, align 8
  %b.app.dst225 = getelementptr i8, ptr %b.app.data224, i64 %b.app.cur.len190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst225, ptr align 1 @str.38, i64 2, i1 false)
  %b.app.nul226 = getelementptr i8, ptr %b.app.data224, i64 %sum192
  store i8 0, ptr %b.app.nul226, align 1
  store i64 %sum192, ptr %0, align 8
  %sl.len.raw = load i64, ptr %slice.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data = load ptr, ptr %payload.ptr136, align 8
  br label %loop.header.150

b.new.buf.len2215:                                ; preds = %b.grow2200
  %arena.cur218 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 %sum213)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2219, ptr align 1 %b.cur.data2211, i64 %b.cur.len2209, i1 false)
  %b.grow2.nul220 = getelementptr i8, ptr %b.new.buf2219, i64 %b.cur.len2209
  store i8 0, ptr %b.grow2.nul220, align 1
  store ptr %b.new.buf2219, ptr %b.cur.data2210, align 8
  store i64 %b.new.cap207, ptr %b.cap197, align 8
  br label %b.grow_done202

str_overflow_abort216:                            ; preds = %b.grow2200
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.150:                                  ; preds = %choice.exit233, %b.grow_done202
  %loop.idx.150.0 = phi i64 [ 0, %b.grow_done202 ], [ %loop.next, %choice.exit233 ]
  %loop.cond = icmp slt i64 %loop.idx.150.0, %sl.len
  br i1 %loop.cond, label %loop.body.150, label %loop.exit.150

loop.body.150:                                    ; preds = %loop.header.150
  %sl.elem.gep.isp.bit.raw = load i64, ptr %slice.len.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %sl.data, i64 %loop.idx.150.0
  %sl.elem.gep.ngep = getelementptr ptr, ptr %sl.data, i64 %loop.idx.150.0
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %sl.elem.val = load ptr, ptr %sl.elem.gep, align 8
  %cmptmp231 = icmp sgt i64 %loop.idx.150.0, 0
  br i1 %cmptmp231, label %choice.then232, label %choice.exit233

loop.exit.150:                                    ; preds = %loop.header.150
  %b.rn.cur.len286 = load i64, ptr %0, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len286, i64 1)
  %sum287 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf288 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf288, label %str_overflow_abort290, label %b.rn.new.len289

choice.then232:                                   ; preds = %loop.body.150
  %b.app.cur.len239 = load i64, ptr %0, align 8
  %b.app.new.len240 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len239, i64 2)
  %sum241 = extractvalue { i64, i1 } %b.app.new.len240, 0
  %ovf242 = extractvalue { i64, i1 } %b.app.new.len240, 1
  br i1 %ovf242, label %str_overflow_abort244, label %b.app.new.len243

choice.exit233:                                   ; preds = %b.grow_done251, %loop.body.150
  %addtmp = add i64 %3, 1
  %multmp = mul i64 %addtmp, %2
  call void @"json::#append_indent"(ptr %0, i64 %multmp)
  call void @"json::#stringify_pretty_into"(ptr %0, ptr %sl.elem.val, i64 %2, i64 %addtmp)
  %loop.next = add i64 %loop.idx.150.0, 1
  br label %loop.header.150

b.app.new.len243:                                 ; preds = %choice.then232
  %b.cap247 = load i64, ptr %b.cap197, align 8
  %b.need.grow248 = icmp slt i64 %b.cap247, %sum241
  br i1 %b.need.grow248, label %b.grow2249, label %b.grow_done251

str_overflow_abort244:                            ; preds = %choice.then232
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2249:                                       ; preds = %b.app.new.len243
  %b.cap2252 = mul i64 %b.cap247, 2
  %b.cap.small253 = icmp slt i64 %b.cap2252, 16
  %b.cap.grow254 = select i1 %b.cap.small253, i64 16, i64 %b.cap2252
  %b.cap.need255 = icmp slt i64 %b.cap.grow254, %sum241
  %b.new.cap256 = select i1 %b.cap.need255, i64 %sum241, i64 %b.cap.grow254
  %b.cur.len2258 = load i64, ptr %0, align 8
  %b.cur.data2260 = load ptr, ptr %b.app.data223, align 8
  %b.new.buf.len2261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap256, i64 1)
  %sum262 = extractvalue { i64, i1 } %b.new.buf.len2261, 0
  %ovf263 = extractvalue { i64, i1 } %b.new.buf.len2261, 1
  br i1 %ovf263, label %str_overflow_abort265, label %b.new.buf.len2264

b.grow_done251:                                   ; preds = %b.app.new.len243, %b.new.buf.len2264
  %b.app.data273 = load ptr, ptr %b.app.data223, align 8
  %b.app.dst274 = getelementptr i8, ptr %b.app.data273, i64 %b.app.cur.len239
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst274, ptr align 1 @str.39, i64 2, i1 false)
  %b.app.nul275 = getelementptr i8, ptr %b.app.data273, i64 %sum241
  store i8 0, ptr %b.app.nul275, align 1
  store i64 %sum241, ptr %0, align 8
  br label %choice.exit233

b.new.buf.len2264:                                ; preds = %b.grow2249
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 %sum262)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2268, ptr align 1 %b.cur.data2260, i64 %b.cur.len2258, i1 false)
  %b.grow2.nul269 = getelementptr i8, ptr %b.new.buf2268, i64 %b.cur.len2258
  store i8 0, ptr %b.grow2.nul269, align 1
  store ptr %b.new.buf2268, ptr %b.app.data223, align 8
  store i64 %b.new.cap256, ptr %b.cap197, align 8
  br label %b.grow_done251

str_overflow_abort265:                            ; preds = %b.grow2249
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len289:                                  ; preds = %loop.exit.150
  %b.cap293 = load i64, ptr %b.cap197, align 8
  %b.need.grow294 = icmp slt i64 %b.cap293, %sum287
  br i1 %b.need.grow294, label %b.grow2295, label %b.grow_done297

str_overflow_abort290:                            ; preds = %loop.exit.150
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2295:                                       ; preds = %b.rn.new.len289
  %b.cap2298 = mul i64 %b.cap293, 2
  %b.cap.small299 = icmp slt i64 %b.cap2298, 16
  %b.cap.grow300 = select i1 %b.cap.small299, i64 16, i64 %b.cap2298
  %b.cap.need301 = icmp slt i64 %b.cap.grow300, %sum287
  %b.new.cap302 = select i1 %b.cap.need301, i64 %sum287, i64 %b.cap.grow300
  %b.cur.len2304 = load i64, ptr %0, align 8
  %b.cur.data2306 = load ptr, ptr %b.app.data223, align 8
  %b.new.buf.len2307 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap302, i64 1)
  %sum308 = extractvalue { i64, i1 } %b.new.buf.len2307, 0
  %ovf309 = extractvalue { i64, i1 } %b.new.buf.len2307, 1
  br i1 %ovf309, label %str_overflow_abort311, label %b.new.buf.len2310

b.grow_done297:                                   ; preds = %b.rn.new.len289, %b.new.buf.len2310
  %b.rn.data318 = load ptr, ptr %b.app.data223, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data318, i64 %b.rn.cur.len286
  store i8 10, ptr %b.rn.dst, align 1
  %br.nul = getelementptr i8, ptr %b.rn.data318, i64 %sum287
  store i8 0, ptr %br.nul, align 1
  store i64 %sum287, ptr %0, align 8
  %multmp323 = mul i64 %3, %2
  call void @"json::#append_indent"(ptr %0, i64 %multmp323)
  %b.rn.cur.len326 = load i64, ptr %0, align 8
  %b.rn.new.len327 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len326, i64 1)
  %sum328 = extractvalue { i64, i1 } %b.rn.new.len327, 0
  %ovf329 = extractvalue { i64, i1 } %b.rn.new.len327, 1
  br i1 %ovf329, label %str_overflow_abort331, label %b.rn.new.len330

b.new.buf.len2310:                                ; preds = %b.grow2295
  %arena.cur313 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2314 = call ptr @dva_arena_alloc(ptr %arena.cur313, i64 %sum308)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2314, ptr align 1 %b.cur.data2306, i64 %b.cur.len2304, i1 false)
  %b.grow2.nul315 = getelementptr i8, ptr %b.new.buf2314, i64 %b.cur.len2304
  store i8 0, ptr %b.grow2.nul315, align 1
  store ptr %b.new.buf2314, ptr %b.app.data223, align 8
  store i64 %b.new.cap302, ptr %b.cap197, align 8
  br label %b.grow_done297

str_overflow_abort311:                            ; preds = %b.grow2295
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len330:                                  ; preds = %b.grow_done297
  %b.cap334 = load i64, ptr %b.cap197, align 8
  %b.need.grow335 = icmp slt i64 %b.cap334, %sum328
  br i1 %b.need.grow335, label %b.grow2336, label %b.grow_done338

str_overflow_abort331:                            ; preds = %b.grow_done297
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2336:                                       ; preds = %b.rn.new.len330
  %b.cap2339 = mul i64 %b.cap334, 2
  %b.cap.small340 = icmp slt i64 %b.cap2339, 16
  %b.cap.grow341 = select i1 %b.cap.small340, i64 16, i64 %b.cap2339
  %b.cap.need342 = icmp slt i64 %b.cap.grow341, %sum328
  %b.new.cap343 = select i1 %b.cap.need342, i64 %sum328, i64 %b.cap.grow341
  %b.cur.len2345 = load i64, ptr %0, align 8
  %b.cur.data2347 = load ptr, ptr %b.app.data223, align 8
  %b.new.buf.len2348 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap343, i64 1)
  %sum349 = extractvalue { i64, i1 } %b.new.buf.len2348, 0
  %ovf350 = extractvalue { i64, i1 } %b.new.buf.len2348, 1
  br i1 %ovf350, label %str_overflow_abort352, label %b.new.buf.len2351

b.grow_done338:                                   ; preds = %b.rn.new.len330, %b.new.buf.len2351
  %b.rn.data360 = load ptr, ptr %b.app.data223, align 8
  %b.rn.dst361 = getelementptr i8, ptr %b.rn.data360, i64 %b.rn.cur.len326
  store i8 93, ptr %b.rn.dst361, align 1
  %br.nul368 = getelementptr i8, ptr %b.rn.data360, i64 %sum328
  store i8 0, ptr %br.nul368, align 1
  store i64 %sum328, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2351:                                ; preds = %b.grow2336
  %arena.cur354 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2355 = call ptr @dva_arena_alloc(ptr %arena.cur354, i64 %sum349)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2355, ptr align 1 %b.cur.data2347, i64 %b.cur.len2345, i1 false)
  %b.grow2.nul356 = getelementptr i8, ptr %b.new.buf2355, i64 %b.cur.len2345
  store i8 0, ptr %b.grow2.nul356, align 1
  store ptr %b.new.buf2355, ptr %b.app.data223, align 8
  store i64 %b.new.cap343, ptr %b.cap197, align 8
  br label %b.grow_done338

str_overflow_abort352:                            ; preds = %b.grow2336
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.case370:                                   ; preds = %entry
  %pay.gep375 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %payload.ptr376 = load ptr, ptr %pay.gep375, align 8
  %slice.len.gep379 = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr376, i32 0, i32 1
  %slice.len.raw380 = load i64, ptr %slice.len.gep379, align 8
  %slice.len381 = and i64 %slice.len.raw380, 4611686018427387903
  %cmptmp382 = icmp eq i64 %slice.len381, 0
  br i1 %cmptmp382, label %choice.then383, label %choice.else384

choice.then383:                                   ; preds = %choice.case370
  %b.app.cur.len391 = load i64, ptr %0, align 8
  %b.app.new.len392 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len391, i64 2)
  %sum393 = extractvalue { i64, i1 } %b.app.new.len392, 0
  %ovf394 = extractvalue { i64, i1 } %b.app.new.len392, 1
  br i1 %ovf394, label %str_overflow_abort396, label %b.app.new.len395

choice.else384:                                   ; preds = %choice.case370
  %b.app.cur.len434 = load i64, ptr %0, align 8
  %b.app.new.len435 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len434, i64 2)
  %sum436 = extractvalue { i64, i1 } %b.app.new.len435, 0
  %ovf437 = extractvalue { i64, i1 } %b.app.new.len435, 1
  br i1 %ovf437, label %str_overflow_abort439, label %b.app.new.len438

b.app.new.len395:                                 ; preds = %choice.then383
  %b.cap398 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap399 = load i64, ptr %b.cap398, align 8
  %b.need.grow400 = icmp slt i64 %b.cap399, %sum393
  br i1 %b.need.grow400, label %b.grow2401, label %b.grow_done403

str_overflow_abort396:                            ; preds = %choice.then383
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2401:                                       ; preds = %b.app.new.len395
  %b.cap2404 = mul i64 %b.cap399, 2
  %b.cap.small405 = icmp slt i64 %b.cap2404, 16
  %b.cap.grow406 = select i1 %b.cap.small405, i64 16, i64 %b.cap2404
  %b.cap.need407 = icmp slt i64 %b.cap.grow406, %sum393
  %b.new.cap408 = select i1 %b.cap.need407, i64 %sum393, i64 %b.cap.grow406
  %b.cur.len2410 = load i64, ptr %0, align 8
  %b.cur.data2411 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data2412 = load ptr, ptr %b.cur.data2411, align 8
  %b.new.buf.len2413 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap408, i64 1)
  %sum414 = extractvalue { i64, i1 } %b.new.buf.len2413, 0
  %ovf415 = extractvalue { i64, i1 } %b.new.buf.len2413, 1
  br i1 %ovf415, label %str_overflow_abort417, label %b.new.buf.len2416

b.grow_done403:                                   ; preds = %b.app.new.len395, %b.new.buf.len2416
  %b.app.data424 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data425 = load ptr, ptr %b.app.data424, align 8
  %b.app.dst426 = getelementptr i8, ptr %b.app.data425, i64 %b.app.cur.len391
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst426, ptr align 1 @str.40, i64 2, i1 false)
  %b.app.nul427 = getelementptr i8, ptr %b.app.data425, i64 %sum393
  store i8 0, ptr %b.app.nul427, align 1
  store i64 %sum393, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2416:                                ; preds = %b.grow2401
  %arena.cur419 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2420 = call ptr @dva_arena_alloc(ptr %arena.cur419, i64 %sum414)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2420, ptr align 1 %b.cur.data2412, i64 %b.cur.len2410, i1 false)
  %b.grow2.nul421 = getelementptr i8, ptr %b.new.buf2420, i64 %b.cur.len2410
  store i8 0, ptr %b.grow2.nul421, align 1
  store ptr %b.new.buf2420, ptr %b.cur.data2411, align 8
  store i64 %b.new.cap408, ptr %b.cap398, align 8
  br label %b.grow_done403

str_overflow_abort417:                            ; preds = %b.grow2401
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len438:                                 ; preds = %choice.else384
  %b.cap441 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %b.cap442 = load i64, ptr %b.cap441, align 8
  %b.need.grow443 = icmp slt i64 %b.cap442, %sum436
  br i1 %b.need.grow443, label %b.grow2444, label %b.grow_done446

str_overflow_abort439:                            ; preds = %choice.else384
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2444:                                       ; preds = %b.app.new.len438
  %b.cap2447 = mul i64 %b.cap442, 2
  %b.cap.small448 = icmp slt i64 %b.cap2447, 16
  %b.cap.grow449 = select i1 %b.cap.small448, i64 16, i64 %b.cap2447
  %b.cap.need450 = icmp slt i64 %b.cap.grow449, %sum436
  %b.new.cap451 = select i1 %b.cap.need450, i64 %sum436, i64 %b.cap.grow449
  %b.cur.len2453 = load i64, ptr %0, align 8
  %b.cur.data2454 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.cur.data2455 = load ptr, ptr %b.cur.data2454, align 8
  %b.new.buf.len2456 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap451, i64 1)
  %sum457 = extractvalue { i64, i1 } %b.new.buf.len2456, 0
  %ovf458 = extractvalue { i64, i1 } %b.new.buf.len2456, 1
  br i1 %ovf458, label %str_overflow_abort460, label %b.new.buf.len2459

b.grow_done446:                                   ; preds = %b.app.new.len438, %b.new.buf.len2459
  %b.app.data467 = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %b.app.data468 = load ptr, ptr %b.app.data467, align 8
  %b.app.dst469 = getelementptr i8, ptr %b.app.data468, i64 %b.app.cur.len434
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst469, ptr align 1 @str.41, i64 2, i1 false)
  %b.app.nul470 = getelementptr i8, ptr %b.app.data468, i64 %sum436
  store i8 0, ptr %b.app.nul470, align 1
  store i64 %sum436, ptr %0, align 8
  %sl.len.raw474 = load i64, ptr %slice.len.gep379, align 8
  %sl.len475 = and i64 %sl.len.raw474, 4611686018427387903
  %sl.data477 = load ptr, ptr %payload.ptr376, align 8
  br label %loop.header.153

b.new.buf.len2459:                                ; preds = %b.grow2444
  %arena.cur462 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2463 = call ptr @dva_arena_alloc(ptr %arena.cur462, i64 %sum457)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2463, ptr align 1 %b.cur.data2455, i64 %b.cur.len2453, i1 false)
  %b.grow2.nul464 = getelementptr i8, ptr %b.new.buf2463, i64 %b.cur.len2453
  store i8 0, ptr %b.grow2.nul464, align 1
  store ptr %b.new.buf2463, ptr %b.cur.data2454, align 8
  store i64 %b.new.cap451, ptr %b.cap441, align 8
  br label %b.grow_done446

str_overflow_abort460:                            ; preds = %b.grow2444
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.153:                                  ; preds = %b.grow_done555, %b.grow_done446
  %loop.idx.153.0 = phi i64 [ 0, %b.grow_done446 ], [ %loop.next589, %b.grow_done555 ]
  %loop.cond479 = icmp slt i64 %loop.idx.153.0, %sl.len475
  br i1 %loop.cond479, label %loop.body.153, label %loop.exit.153

loop.body.153:                                    ; preds = %loop.header.153
  %sl.rec.elem.isp.bit.raw = load i64, ptr %slice.len.gep379, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

loop.exit.153:                                    ; preds = %loop.header.153
  %b.rn.cur.len592 = load i64, ptr %0, align 8
  %b.rn.new.len593 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len592, i64 1)
  %sum594 = extractvalue { i64, i1 } %b.rn.new.len593, 0
  %ovf595 = extractvalue { i64, i1 } %b.rn.new.len593, 1
  br i1 %ovf595, label %str_overflow_abort597, label %b.rn.new.len596

sl.rec.elem.pbb:                                  ; preds = %loop.body.153
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data477, i64 %loop.idx.153.0
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.153
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data477, i64 %loop.idx.153.0
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  %cmptmp485 = icmp sgt i64 %loop.idx.153.0, 0
  br i1 %cmptmp485, label %choice.then486, label %choice.exit487

choice.then486:                                   ; preds = %sl.rec.elem.dbb
  %b.app.cur.len493 = load i64, ptr %0, align 8
  %b.app.new.len494 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len493, i64 2)
  %sum495 = extractvalue { i64, i1 } %b.app.new.len494, 0
  %ovf496 = extractvalue { i64, i1 } %b.app.new.len494, 1
  br i1 %ovf496, label %str_overflow_abort498, label %b.app.new.len497

choice.exit487:                                   ; preds = %b.grow_done505, %sl.rec.elem.dbb
  %addtmp533 = add i64 %3, 1
  %multmp535 = mul i64 %addtmp533, %2
  call void @"json::#append_indent"(ptr %0, i64 %multmp535)
  %fld.load = load ptr, ptr %sl.rec.elem, align 8
  call void @"json::escape_string_into"(ptr %0, ptr %fld.load)
  %b.app.cur.len543 = load i64, ptr %0, align 8
  %b.app.new.len544 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len543, i64 2)
  %sum545 = extractvalue { i64, i1 } %b.app.new.len544, 0
  %ovf546 = extractvalue { i64, i1 } %b.app.new.len544, 1
  br i1 %ovf546, label %str_overflow_abort548, label %b.app.new.len547

b.app.new.len497:                                 ; preds = %choice.then486
  %b.cap501 = load i64, ptr %b.cap441, align 8
  %b.need.grow502 = icmp slt i64 %b.cap501, %sum495
  br i1 %b.need.grow502, label %b.grow2503, label %b.grow_done505

str_overflow_abort498:                            ; preds = %choice.then486
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2503:                                       ; preds = %b.app.new.len497
  %b.cap2506 = mul i64 %b.cap501, 2
  %b.cap.small507 = icmp slt i64 %b.cap2506, 16
  %b.cap.grow508 = select i1 %b.cap.small507, i64 16, i64 %b.cap2506
  %b.cap.need509 = icmp slt i64 %b.cap.grow508, %sum495
  %b.new.cap510 = select i1 %b.cap.need509, i64 %sum495, i64 %b.cap.grow508
  %b.cur.len2512 = load i64, ptr %0, align 8
  %b.cur.data2514 = load ptr, ptr %b.app.data467, align 8
  %b.new.buf.len2515 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap510, i64 1)
  %sum516 = extractvalue { i64, i1 } %b.new.buf.len2515, 0
  %ovf517 = extractvalue { i64, i1 } %b.new.buf.len2515, 1
  br i1 %ovf517, label %str_overflow_abort519, label %b.new.buf.len2518

b.grow_done505:                                   ; preds = %b.app.new.len497, %b.new.buf.len2518
  %b.app.data527 = load ptr, ptr %b.app.data467, align 8
  %b.app.dst528 = getelementptr i8, ptr %b.app.data527, i64 %b.app.cur.len493
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst528, ptr align 1 @str.39, i64 2, i1 false)
  %b.app.nul529 = getelementptr i8, ptr %b.app.data527, i64 %sum495
  store i8 0, ptr %b.app.nul529, align 1
  store i64 %sum495, ptr %0, align 8
  br label %choice.exit487

b.new.buf.len2518:                                ; preds = %b.grow2503
  %arena.cur521 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2522 = call ptr @dva_arena_alloc(ptr %arena.cur521, i64 %sum516)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2522, ptr align 1 %b.cur.data2514, i64 %b.cur.len2512, i1 false)
  %b.grow2.nul523 = getelementptr i8, ptr %b.new.buf2522, i64 %b.cur.len2512
  store i8 0, ptr %b.grow2.nul523, align 1
  store ptr %b.new.buf2522, ptr %b.app.data467, align 8
  store i64 %b.new.cap510, ptr %b.cap441, align 8
  br label %b.grow_done505

str_overflow_abort519:                            ; preds = %b.grow2503
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len547:                                 ; preds = %choice.exit487
  %b.cap551 = load i64, ptr %b.cap441, align 8
  %b.need.grow552 = icmp slt i64 %b.cap551, %sum545
  br i1 %b.need.grow552, label %b.grow2553, label %b.grow_done555

str_overflow_abort548:                            ; preds = %choice.exit487
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2553:                                       ; preds = %b.app.new.len547
  %b.cap2556 = mul i64 %b.cap551, 2
  %b.cap.small557 = icmp slt i64 %b.cap2556, 16
  %b.cap.grow558 = select i1 %b.cap.small557, i64 16, i64 %b.cap2556
  %b.cap.need559 = icmp slt i64 %b.cap.grow558, %sum545
  %b.new.cap560 = select i1 %b.cap.need559, i64 %sum545, i64 %b.cap.grow558
  %b.cur.len2562 = load i64, ptr %0, align 8
  %b.cur.data2564 = load ptr, ptr %b.app.data467, align 8
  %b.new.buf.len2565 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap560, i64 1)
  %sum566 = extractvalue { i64, i1 } %b.new.buf.len2565, 0
  %ovf567 = extractvalue { i64, i1 } %b.new.buf.len2565, 1
  br i1 %ovf567, label %str_overflow_abort569, label %b.new.buf.len2568

b.grow_done555:                                   ; preds = %b.app.new.len547, %b.new.buf.len2568
  %b.app.data577 = load ptr, ptr %b.app.data467, align 8
  %b.app.dst578 = getelementptr i8, ptr %b.app.data577, i64 %b.app.cur.len543
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst578, ptr align 1 @str.42, i64 2, i1 false)
  %b.app.nul579 = getelementptr i8, ptr %b.app.data577, i64 %sum545
  store i8 0, ptr %b.app.nul579, align 1
  store i64 %sum545, ptr %0, align 8
  %fld.gep583 = getelementptr inbounds { ptr, ptr }, ptr %sl.rec.elem, i32 0, i32 1
  %fld.load584 = load ptr, ptr %fld.gep583, align 8
  call void @"json::#stringify_pretty_into"(ptr %0, ptr %fld.load584, i64 %2, i64 %addtmp533)
  %loop.next589 = add i64 %loop.idx.153.0, 1
  br label %loop.header.153

b.new.buf.len2568:                                ; preds = %b.grow2553
  %arena.cur571 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2572 = call ptr @dva_arena_alloc(ptr %arena.cur571, i64 %sum566)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2572, ptr align 1 %b.cur.data2564, i64 %b.cur.len2562, i1 false)
  %b.grow2.nul573 = getelementptr i8, ptr %b.new.buf2572, i64 %b.cur.len2562
  store i8 0, ptr %b.grow2.nul573, align 1
  store ptr %b.new.buf2572, ptr %b.app.data467, align 8
  store i64 %b.new.cap560, ptr %b.cap441, align 8
  br label %b.grow_done555

str_overflow_abort569:                            ; preds = %b.grow2553
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len596:                                  ; preds = %loop.exit.153
  %b.cap600 = load i64, ptr %b.cap441, align 8
  %b.need.grow601 = icmp slt i64 %b.cap600, %sum594
  br i1 %b.need.grow601, label %b.grow2602, label %b.grow_done604

str_overflow_abort597:                            ; preds = %loop.exit.153
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2602:                                       ; preds = %b.rn.new.len596
  %b.cap2605 = mul i64 %b.cap600, 2
  %b.cap.small606 = icmp slt i64 %b.cap2605, 16
  %b.cap.grow607 = select i1 %b.cap.small606, i64 16, i64 %b.cap2605
  %b.cap.need608 = icmp slt i64 %b.cap.grow607, %sum594
  %b.new.cap609 = select i1 %b.cap.need608, i64 %sum594, i64 %b.cap.grow607
  %b.cur.len2611 = load i64, ptr %0, align 8
  %b.cur.data2613 = load ptr, ptr %b.app.data467, align 8
  %b.new.buf.len2614 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap609, i64 1)
  %sum615 = extractvalue { i64, i1 } %b.new.buf.len2614, 0
  %ovf616 = extractvalue { i64, i1 } %b.new.buf.len2614, 1
  br i1 %ovf616, label %str_overflow_abort618, label %b.new.buf.len2617

b.grow_done604:                                   ; preds = %b.rn.new.len596, %b.new.buf.len2617
  %b.rn.data626 = load ptr, ptr %b.app.data467, align 8
  %b.rn.dst627 = getelementptr i8, ptr %b.rn.data626, i64 %b.rn.cur.len592
  store i8 10, ptr %b.rn.dst627, align 1
  %br.nul634 = getelementptr i8, ptr %b.rn.data626, i64 %sum594
  store i8 0, ptr %br.nul634, align 1
  store i64 %sum594, ptr %0, align 8
  %multmp639 = mul i64 %3, %2
  call void @"json::#append_indent"(ptr %0, i64 %multmp639)
  %b.rn.cur.len642 = load i64, ptr %0, align 8
  %b.rn.new.len643 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len642, i64 1)
  %sum644 = extractvalue { i64, i1 } %b.rn.new.len643, 0
  %ovf645 = extractvalue { i64, i1 } %b.rn.new.len643, 1
  br i1 %ovf645, label %str_overflow_abort647, label %b.rn.new.len646

b.new.buf.len2617:                                ; preds = %b.grow2602
  %arena.cur620 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2621 = call ptr @dva_arena_alloc(ptr %arena.cur620, i64 %sum615)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2621, ptr align 1 %b.cur.data2613, i64 %b.cur.len2611, i1 false)
  %b.grow2.nul622 = getelementptr i8, ptr %b.new.buf2621, i64 %b.cur.len2611
  store i8 0, ptr %b.grow2.nul622, align 1
  store ptr %b.new.buf2621, ptr %b.app.data467, align 8
  store i64 %b.new.cap609, ptr %b.cap441, align 8
  br label %b.grow_done604

str_overflow_abort618:                            ; preds = %b.grow2602
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len646:                                  ; preds = %b.grow_done604
  %b.cap650 = load i64, ptr %b.cap441, align 8
  %b.need.grow651 = icmp slt i64 %b.cap650, %sum644
  br i1 %b.need.grow651, label %b.grow2652, label %b.grow_done654

str_overflow_abort647:                            ; preds = %b.grow_done604
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2652:                                       ; preds = %b.rn.new.len646
  %b.cap2655 = mul i64 %b.cap650, 2
  %b.cap.small656 = icmp slt i64 %b.cap2655, 16
  %b.cap.grow657 = select i1 %b.cap.small656, i64 16, i64 %b.cap2655
  %b.cap.need658 = icmp slt i64 %b.cap.grow657, %sum644
  %b.new.cap659 = select i1 %b.cap.need658, i64 %sum644, i64 %b.cap.grow657
  %b.cur.len2661 = load i64, ptr %0, align 8
  %b.cur.data2663 = load ptr, ptr %b.app.data467, align 8
  %b.new.buf.len2664 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap659, i64 1)
  %sum665 = extractvalue { i64, i1 } %b.new.buf.len2664, 0
  %ovf666 = extractvalue { i64, i1 } %b.new.buf.len2664, 1
  br i1 %ovf666, label %str_overflow_abort668, label %b.new.buf.len2667

b.grow_done654:                                   ; preds = %b.rn.new.len646, %b.new.buf.len2667
  %b.rn.data676 = load ptr, ptr %b.app.data467, align 8
  %b.rn.dst677 = getelementptr i8, ptr %b.rn.data676, i64 %b.rn.cur.len642
  store i8 125, ptr %b.rn.dst677, align 1
  %br.nul684 = getelementptr i8, ptr %b.rn.data676, i64 %sum644
  store i8 0, ptr %br.nul684, align 1
  store i64 %sum644, ptr %0, align 8
  br label %choice.exit

b.new.buf.len2667:                                ; preds = %b.grow2652
  %arena.cur670 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2671 = call ptr @dva_arena_alloc(ptr %arena.cur670, i64 %sum665)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2671, ptr align 1 %b.cur.data2663, i64 %b.cur.len2661, i1 false)
  %b.grow2.nul672 = getelementptr i8, ptr %b.new.buf2671, i64 %b.cur.len2661
  store i8 0, ptr %b.grow2.nul672, align 1
  store ptr %b.new.buf2671, ptr %b.app.data467, align 8
  store i64 %b.new.cap659, ptr %b.cap441, align 8
  br label %b.grow_done654

str_overflow_abort668:                            ; preds = %b.grow2652
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"json::stringify"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 129)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 128, ptr %b.cap.gep, align 8
  call void @"json::#stringify_into"(ptr %builder.new, ptr %0)
  %b.freeze.len5 = load i64, ptr %builder.new, align 8
  %b.freeze.data6 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %entry
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data6, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data6, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data6, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len5, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data6, i64 %b.freeze.len5, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len5
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %entry
  %b.freeze.data8 = phi ptr [ %b.freeze.data6, %entry ], [ %b.freeze.data6, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %b.freeze.len5, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %b.freeze.data8, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

define { i64, ptr } @"json::stringify_pretty"(ptr %0, i64 %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 257)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 256, ptr %b.cap.gep, align 8
  call void @"json::#stringify_pretty_into"(ptr %builder.new, ptr %0, i64 %1, i64 0)
  %b.freeze.len6 = load i64, ptr %builder.new, align 8
  %b.freeze.data7 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %entry
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data7, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data7, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data7, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len6, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data7, i64 %b.freeze.len6, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len6
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %entry
  %b.freeze.data9 = phi ptr [ %b.freeze.data7, %entry ], [ %b.freeze.data7, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %b.freeze.len6, 0
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %b.freeze.data9, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

define { i1, i64 } @"json::get"(ptr %0, ptr %1) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %common.ret

common.ret:                                       ; preds = %loop.header.157, %entry, %choice.then
  %common.ret.op = phi { i1, i64 } [ %ram.pay, %choice.then ], [ zeroinitializer, %entry ], [ zeroinitializer, %loop.header.157 ]
  ret { i1, i64 } %common.ret.op

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %sl.len.gep = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr, i32 0, i32 1
  %sl.len.raw = load i64, ptr %sl.len.gep, align 8
  %sl.len = and i64 %sl.len.raw, 4611686018427387903
  %sl.data = load ptr, ptr %payload.ptr, align 8
  br label %loop.header.157

loop.header.157:                                  ; preds = %choice.exit11, %choice.case
  %loop.idx.157.0 = phi i64 [ 0, %choice.case ], [ %loop.next, %choice.exit11 ]
  %loop.cond = icmp slt i64 %loop.idx.157.0, %sl.len
  br i1 %loop.cond, label %loop.body.157, label %common.ret

loop.body.157:                                    ; preds = %loop.header.157
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.len.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

sl.rec.elem.pbb:                                  ; preds = %loop.body.157
  %sl.rec.elem.pgep = getelementptr i64, ptr %sl.data, i64 %loop.idx.157.0
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %loop.body.157
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %sl.data, i64 %loop.idx.157.0
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  %fld.load = load ptr, ptr %sl.rec.elem, align 8
  %eq.lhs.len5 = load i64, ptr %fld.load, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %eq.rhs.len7 = load i64, ptr %1, align 8
  %eq.rhs.len8 = and i64 %eq.rhs.len7, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len8
  br i1 %eq.len, label %str.eq.then, label %choice.exit11

str.eq.then:                                      ; preds = %sl.rec.elem.dbb
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %eq.lhs.data9 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %eq.rhs.data10 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data9, ptr %eq.rhs.data10, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.exit11

choice.then:                                      ; preds = %str.eq.then
  %fld.gep13 = getelementptr inbounds { ptr, ptr }, ptr %sl.rec.elem, i32 0, i32 1
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  %ptr.to.i64 = ptrtoint ptr %fld.load14 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %common.ret

choice.exit11:                                    ; preds = %sl.rec.elem.dbb, %str.eq.then
  %loop.next = add i64 %loop.idx.157.0, 1
  br label %loop.header.157
}

define i1 @"json::has"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr %1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  ret i1 %ram.tag
}

define { i64, ptr } @"json::get_str"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr %1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  %tag.id = load i64, ptr %pay.ptr, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %choice.then, %choice.case, %entry
  %choice.res6 = phi ptr [ null, %entry ], [ %payload.ptr, %choice.case ], [ null, %choice.then ]
  %ret.niche.nn = icmp ne ptr %choice.res6, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  br label %choice.exit

ret.niche.load:                                   ; preds = %choice.exit
  %ret.niche.val = load { i64, ptr }, ptr %choice.res6, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit ]
  ret { i64, ptr } %ret.niche.pack
}

define { i1, i64 } @"json::get_int"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr %1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  %tag.id = load i64, ptr %pay.ptr, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %choice.then, %pay.float.merge, %entry
  %choice.res14 = phi { i1, i64 } [ zeroinitializer, %entry ], [ %choice.res, %pay.float.merge ], [ zeroinitializer, %choice.then ]
  ret { i1, i64 } %choice.res14

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case ]
  %cast.fptosi = fptosi double %pay.float.phi to i64
  %cast.sitofp = sitofp i64 %cast.fptosi to double
  %fcmptmp = fcmp oeq double %cast.sitofp, %pay.float.phi
  %ram.pay12 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %cast.fptosi, 1
  %choice.res = select i1 %fcmptmp, { i1, i64 } %ram.pay12, { i1, i64 } zeroinitializer
  br label %choice.exit
}

define { i1, i64 } @"json::get_float"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr %1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  %tag.id = load i64, ptr %pay.ptr, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %choice.then, %pay.float.merge, %entry
  %choice.res7 = phi { i1, i64 } [ zeroinitializer, %entry ], [ %ram.pay6, %pay.float.merge ], [ zeroinitializer, %choice.then ]
  ret { i1, i64 } %choice.res7

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case ]
  %f.to.i64 = bitcast double %pay.float.phi to i64
  %ram.pay6 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %choice.exit
}

define { i1, i64 } @"json::get_bool"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call { i1, i64 } @"json::get"(ptr %0, ptr %1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %pay.ptr = inttoptr i64 %ram.pay to ptr
  %tag.id = load i64, ptr %pay.ptr, align 8
  %tag.match = icmp eq i64 %tag.id, 2
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %choice.then, %pay.int.merge, %entry
  %choice.res7 = phi { i1, i64 } [ zeroinitializer, %entry ], [ %ram.pay6, %pay.int.merge ], [ zeroinitializer, %choice.then ]
  ret { i1, i64 } %choice.res7

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.merge, label %pay.int.load

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i1, ptr %payload.ptr, align 1
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %choice.case, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %choice.case ]
  %zext.to.i64 = zext i1 %pay.int.phi to i64
  %ram.pay6 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %zext.to.i64, 1
  br label %choice.exit
}

define i1 @"json::is_array"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  %spec.select = select i1 %tag.match, i1 true, i1 false
  ret i1 %spec.select
}

define i64 @"json::array_len"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.case
  %choice.res = phi i64 [ %slice.len, %choice.case ], [ 0, %entry ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  br label %choice.exit
}

define ptr @"json::array_at"(ptr %0, i64 %1) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi ptr [ %slice.elem.raw, %choice.case ], [ %enum.alloc, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %slice.data = load ptr, ptr %payload.ptr, align 8
  %sl.elem.gep.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr, i32 0, i32 1
  %sl.elem.gep.isp.bit.raw = load i64, ptr %sl.elem.gep.isp.bit.gep, align 8
  %sl.elem.gep.isp.bit = and i64 %sl.elem.gep.isp.bit.raw, 4611686018427387904
  %sl.elem.gep.isp = icmp ne i64 %sl.elem.gep.isp.bit, 0
  %sl.elem.gep.pgep = getelementptr i64, ptr %slice.data, i64 %1
  %sl.elem.gep.ngep = getelementptr ptr, ptr %slice.data, i64 %1
  %sl.elem.gep = select i1 %sl.elem.gep.isp, ptr %sl.elem.gep.pgep, ptr %sl.elem.gep.ngep
  %slice.elem.raw = load ptr, ptr %sl.elem.gep, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  br label %choice.exit
}

define i1 @"json::is_object"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  %spec.select = select i1 %tag.match, i1 true, i1 false
  ret i1 %spec.select
}

define i64 @"json::object_len"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.case
  %choice.res = phi i64 [ %slice.len, %choice.case ], [ 0, %entry ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %slice.len.gep = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr, i32 0, i32 1
  %slice.len.raw = load i64, ptr %slice.len.gep, align 8
  %slice.len = and i64 %slice.len.raw, 4611686018427387903
  br label %choice.exit
}

define { i64, ptr } @"json::object_key_at"(ptr %0, i64 %1) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %sl.rec.elem.dbb
  %choice.res = phi ptr [ %fld.load, %sl.rec.elem.dbb ], [ @str.43.struct, %entry ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %slice.data = load ptr, ptr %payload.ptr, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

sl.rec.elem.pbb:                                  ; preds = %choice.case
  %sl.rec.elem.pgep = getelementptr i64, ptr %slice.data, i64 %1
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %choice.case
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %slice.data, i64 %1
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  %fld.load = load ptr, ptr %sl.rec.elem, align 8
  br label %choice.exit
}

define ptr @"json::object_val_at"(ptr %0, i64 %1) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 5
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %sl.rec.elem.dbb
  %choice.res = phi ptr [ %fld.load, %sl.rec.elem.dbb ], [ %enum.alloc, %choice.next ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %slice.data = load ptr, ptr %payload.ptr, align 8
  %sl.rec.elem.isp.bit.gep = getelementptr inbounds { ptr, i64 }, ptr %payload.ptr, i32 0, i32 1
  %sl.rec.elem.isp.bit.raw = load i64, ptr %sl.rec.elem.isp.bit.gep, align 8
  %sl.rec.elem.isp.bit = and i64 %sl.rec.elem.isp.bit.raw, 4611686018427387904
  %sl.rec.elem.isp = icmp ne i64 %sl.rec.elem.isp.bit, 0
  br i1 %sl.rec.elem.isp, label %sl.rec.elem.pbb, label %sl.rec.elem.nbb

choice.next:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 3, ptr %enum.alloc, align 8
  %pay.gep5 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep5, align 8
  br label %choice.exit

sl.rec.elem.pbb:                                  ; preds = %choice.case
  %sl.rec.elem.pgep = getelementptr i64, ptr %slice.data, i64 %1
  %sl.rec.elem.pval = load ptr, ptr %sl.rec.elem.pgep, align 8
  br label %sl.rec.elem.dbb

sl.rec.elem.nbb:                                  ; preds = %choice.case
  %sl.rec.elem.ngep = getelementptr { ptr, ptr }, ptr %slice.data, i64 %1
  br label %sl.rec.elem.dbb

sl.rec.elem.dbb:                                  ; preds = %sl.rec.elem.nbb, %sl.rec.elem.pbb
  %sl.rec.elem = phi ptr [ %sl.rec.elem.pval, %sl.rec.elem.pbb ], [ %sl.rec.elem.ngep, %sl.rec.elem.nbb ]
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %sl.rec.elem, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  br label %choice.exit
}

define i1 @"json::is_valid_int_value"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %pay.float.merge
  %choice.res = phi i1 [ %fcmptmp, %pay.float.merge ], [ false, %entry ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case ]
  %cast.fptosi = fptosi double %pay.float.phi to i64
  %cast.sitofp = sitofp i64 %cast.fptosi to double
  %fcmptmp = fcmp oeq double %cast.sitofp, %pay.float.phi
  br label %choice.exit
}

define i64 @"json::unwrap_int_or_zero"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %entry, %pay.float.merge
  %choice.res = phi i64 [ %cast.fptosi, %pay.float.merge ], [ 0, %entry ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case ]
  %cast.fptosi = fptosi double %pay.float.phi to i64
  br label %choice.exit
}

define i1 @"json::is_valid_float_value"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  %spec.select = select i1 %tag.match, i1 true, i1 false
  ret i1 %spec.select
}

define double @"json::unwrap_float_or_zero"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.exit

choice.exit:                                      ; preds = %pay.float.load, %choice.case, %entry
  %choice.res = phi double [ 0.000000e+00, %entry ], [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case ]
  ret double %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %choice.exit, label %pay.float.load

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %choice.exit
}

define { i1, i64 } @"json::decode_int_value"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.then, %choice.else, %choice.next
  %choice.res10 = phi { i1, i64 } [ %ram.pay9, %choice.next ], [ %ram.pay, %choice.then ], [ %ram.pay6, %choice.else ]
  ret { i1, i64 } %choice.res10

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

choice.next:                                      ; preds = %entry
  %call.res7 = call ptr @"json::#json_type_err"(ptr @str.44.struct)
  %ptr.to.i648 = ptrtoint ptr %call.res7 to i64
  %ram.pay9 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i648, 1
  br label %choice.exit

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case ]
  %cast.fptosi = fptosi double %pay.float.phi to i64
  %cast.sitofp = sitofp i64 %cast.fptosi to double
  %fcmptmp = fcmp oeq double %cast.sitofp, %pay.float.phi
  br i1 %fcmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %pay.float.merge
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %cast.fptosi, 1
  br label %choice.exit

choice.else:                                      ; preds = %pay.float.merge
  %call.res = call ptr @"json::#json_type_err"(ptr @str.44.struct)
  %ptr.to.i64 = ptrtoint ptr %call.res to i64
  %ram.pay6 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %choice.exit
}

define { i1, i64 } @"json::decode_float_value"(ptr %0) #3 {
entry:
  %tag.id = load i64, ptr %0, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %pay.float.merge
  %choice.res = phi { i1, i64 } [ %ram.pay, %pay.float.merge ], [ %ram.pay2, %choice.next ]
  ret { i1, i64 } %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.float.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.float.null, label %pay.float.merge, label %pay.float.load

choice.next:                                      ; preds = %entry
  %call.res = call ptr @"json::#json_type_err"(ptr @str.45.struct)
  %ptr.to.i64 = ptrtoint ptr %call.res to i64
  %ram.pay2 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64, 1
  br label %choice.exit

pay.float.load:                                   ; preds = %choice.case
  %pay.float.val = load double, ptr %payload.ptr, align 8
  br label %pay.float.merge

pay.float.merge:                                  ; preds = %choice.case, %pay.float.load
  %pay.float.phi = phi double [ %pay.float.val, %pay.float.load ], [ 0.000000e+00, %choice.case ]
  %f.to.i64 = bitcast double %pay.float.phi to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %choice.exit
}

; Function Attrs: inlinehint
define internal { i1, i64 } @"json::#cursor_skip_str"(ptr %0, i64 %1) #7 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %call.res = call i64 @"json::#scan_plain_ascii_end"(ptr %0, i64 %1)
  br label %loop.header.162

loop.header.162:                                  ; preds = %choice.exit13, %entry
  %loop.idx.162.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit13 ]
  %"var.k'.0" = phi i64 [ %call.res, %entry ], [ %"var.k'.1", %choice.exit13 ]
  %cmptmp = icmp sge i64 %"var.k'.0", %str.len.query2
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %choice.case16, %loop.header.162, %choice.case
  %common.ret.op = phi { i1, i64 } [ %ram.pay, %choice.case ], [ zeroinitializer, %loop.header.162 ], [ zeroinitializer, %choice.case16 ]
  ret { i1, i64 } %common.ret.op

choice.exit:                                      ; preds = %loop.header.162
  %s.read.len8 = load i64, ptr %0, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.k'.0", %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %"var.k'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %choice.next17 [
    i64 34, label %choice.case
    i64 92, label %choice.case16
  ]

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit13:                                    ; preds = %choice.next17, %choice.exit24
  %"var.k'.1" = phi i64 [ %addtmp27, %choice.exit24 ], [ %addtmp29, %choice.next17 ]
  %loop.next = add i64 %loop.idx.162.0, 1
  br label %loop.header.162

choice.case:                                      ; preds = %idx_ok
  %addtmp = add i64 %"var.k'.0", 1
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %addtmp, 1
  br label %common.ret

choice.case16:                                    ; preds = %idx_ok
  %addtmp20 = add i64 %"var.k'.0", 1
  %cmptmp22 = icmp sge i64 %addtmp20, %str.len.query2
  br i1 %cmptmp22, label %common.ret, label %choice.exit24

choice.next17:                                    ; preds = %idx_ok
  %addtmp29 = add i64 %"var.k'.0", 1
  br label %choice.exit13

choice.exit24:                                    ; preds = %choice.case16
  %addtmp27 = add i64 %"var.k'.0", 2
  br label %choice.exit13
}

define internal { i64, ptr } @"json::#cursor_read_str_escaped"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %fld.load = load ptr, ptr %0, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64 }, ptr null, i32 1) to i64))
  store ptr %fld.load, ptr %rec.alloc, align 8
  %rec.fld2 = getelementptr inbounds { ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %1, ptr %rec.fld2, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 65)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 64, ptr %b.cap.gep, align 8
  %cmptmp = icmp sgt i64 %2, %1
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %fld.load10 = load ptr, ptr %0, align 8
  %s.read.len11 = load i64, ptr %fld.load10, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %1, 0
  %rel.start = add i64 %s.read.len12, %1
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %1
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %2, 0
  %rel.end = add i64 %s.read.len12, %2
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %2
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %b.app.cur.len16 = load i64, ptr %builder.new, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len16, i64 %view.len)
  %sum17 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf18 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %b.app.new.len19

choice.exit:                                      ; preds = %b.grow_done, %entry
  %call.res = call { i1, i64 } @"json::#scan_string"(ptr %rec.alloc, ptr %builder.new, i64 %2)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then36, label %choice.else

b.app.new.len19:                                  ; preds = %choice.then
  %b.cap22 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow = icmp slt i64 %b.cap22, %sum17
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort20:                             ; preds = %choice.then
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len19
  %b.cap2 = mul i64 %b.cap22, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum17
  %b.new.cap = select i1 %b.cap.need, i64 %sum17, i64 %b.cap.grow
  %b.cur.len223 = load i64, ptr %builder.new, align 8
  %b.cur.data224 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum25 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf26 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.new.buf.len227

b.grow_done:                                      ; preds = %b.app.new.len19, %b.new.buf.len227
  %b.app.data31 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data31, i64 %b.app.cur.len16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data31, i64 %sum17
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum17, ptr %builder.new, align 8
  br label %choice.exit

b.new.buf.len227:                                 ; preds = %b.grow2
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 %sum25)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data224, i64 %b.cur.len223, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len223
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.grow_done

str_overflow_abort28:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then36:                                    ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %addtmp = add i64 %ram.pay, 1
  %fld.gep40 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep40, align 8
  %b.freeze.len42 = load i64, ptr %builder.new, align 8
  %b.freeze.data43 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.else:                                      ; preds = %choice.exit
  %ram.pay46 = extractvalue { i1, i64 } %call.res, 1
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
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data43, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data43, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data43, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len42, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data43, i64 %b.freeze.len42, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len42
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then36
  %b.freeze.data45 = phi ptr [ %b.freeze.data43, %choice.then36 ], [ %b.freeze.data43, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  store i64 %b.freeze.len42, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data45, ptr %str.build.data.gep, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  br label %choice.exit37

ret.niche.load:                                   ; preds = %choice.exit37
  %ret.niche.val.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.niche.val.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.niche.val.fca.0.load, 0
  %ret.niche.val.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.niche.val.fca.1.load = load ptr, ptr %ret.niche.val.fca.1.gep, align 8
  %ret.niche.val.fca.1.insert = insertvalue { i64, ptr } %ret.niche.val.fca.0.insert, ptr %ret.niche.val.fca.1.load, 1
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit37
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val.fca.1.insert, %ret.niche.load ], [ zeroinitializer, %choice.exit37 ]
  ret { i64, ptr } %ret.niche.pack
}

define internal i1 @"json::#cursor_skip_compound"(ptr %0, i64 %1) #3 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %addtmp = add i64 %1, 1
  br label %loop.header.163

loop.header.163:                                  ; preds = %choice.exit13, %entry
  %loop.idx.163.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit13 ]
  %"var.depth'.0" = phi i64 [ 1, %entry ], [ %"var.depth'.1", %choice.exit13 ]
  %"var.k'.0" = phi i64 [ %addtmp, %entry ], [ %"var.k'.1", %choice.exit13 ]
  %cmptmp = icmp sge i64 %"var.k'.0", %str.len.query3
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %choice.case, %loop.header.163, %choice.then40
  %common.ret.op = phi i1 [ true, %choice.then40 ], [ false, %loop.header.163 ], [ false, %choice.case ]
  ret i1 %common.ret.op

choice.exit:                                      ; preds = %loop.header.163
  %s.read.len8 = load i64, ptr %fld.load, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.k'.0", %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %"var.k'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %choice.next31 [
    i64 34, label %choice.case
    i64 123, label %choice.case22
    i64 91, label %choice.case22
    i64 125, label %choice.case30
    i64 93, label %choice.case30
  ]

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit13:                                    ; preds = %choice.case30, %choice.next31, %choice.case22, %choice.then17
  %"var.depth'.1" = phi i64 [ %"var.depth'.0", %choice.then17 ], [ %addtmp27, %choice.case22 ], [ %"var.depth'.0", %choice.next31 ], [ %subtmp, %choice.case30 ]
  %"var.k'.1" = phi i64 [ %ram.pay, %choice.then17 ], [ %addtmp29, %choice.case22 ], [ %addtmp47, %choice.next31 ], [ %addtmp37, %choice.case30 ]
  %loop.next = add i64 %loop.idx.163.0, 1
  br label %loop.header.163

choice.case:                                      ; preds = %idx_ok
  %addtmp16 = add i64 %"var.k'.0", 1
  %call.res = call { i1, i64 } @"json::#cursor_skip_str"(ptr %fld.load, i64 %addtmp16)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then17, label %common.ret

choice.then17:                                    ; preds = %choice.case
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  br label %choice.exit13

choice.case22:                                    ; preds = %idx_ok, %idx_ok
  %addtmp27 = add i64 %"var.depth'.0", 1
  %addtmp29 = add i64 %"var.k'.0", 1
  br label %choice.exit13

choice.case30:                                    ; preds = %idx_ok, %idx_ok
  %subtmp = sub i64 %"var.depth'.0", 1
  %addtmp37 = add i64 %"var.k'.0", 1
  %cmptmp39 = icmp eq i64 %subtmp, 0
  br i1 %cmptmp39, label %choice.then40, label %choice.exit13

choice.next31:                                    ; preds = %idx_ok
  %addtmp47 = add i64 %"var.k'.0", 1
  br label %choice.exit13

choice.then40:                                    ; preds = %choice.case30
  %fld.gep44 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %addtmp37, ptr %fld.gep44, align 8
  br label %common.ret
}

; Function Attrs: inlinehint
define internal i1 @"json::#cursor_skip_number"(ptr %0, i64 %1, i64 %2) #7 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp sge i64 %2, 48
  %cmptmp5 = icmp sle i64 %2, 57
  %and.164.phi = select i1 %cmptmp, i1 %cmptmp5, i1 false
  %choice.res = select i1 %and.164.phi, i1 true, i1 false
  br i1 %choice.res, label %or.165.exit, label %or.165.else

or.165.else:                                      ; preds = %entry
  %addtmp = add i64 %1, 1
  %cmptmp8 = icmp slt i64 %addtmp, %str.len.query3
  br i1 %cmptmp8, label %and.166.then, label %or.165.exit

or.165.exit:                                      ; preds = %idx_ok, %or.165.else, %entry
  %or.165.phi = phi i1 [ %choice.res, %entry ], [ %choice.res20, %idx_ok ], [ false, %or.165.else ]
  %nottmp = xor i1 %or.165.phi, true
  br i1 %nottmp, label %common.ret, label %choice.exit22

and.166.then:                                     ; preds = %or.165.else
  %s.read.len10 = load i64, ptr %fld.load, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %addtmp, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.166.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %addtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp18 = icmp sge i64 %s.byte.val, 48
  %cmptmp19 = icmp sle i64 %s.byte.val, 57
  %and.167.phi = select i1 %cmptmp18, i1 %cmptmp19, i1 false
  %choice.res20 = select i1 %and.167.phi, i1 true, i1 false
  br label %or.165.exit

idx_oob:                                          ; preds = %and.166.then
  call void @dva_abort_str_oob_msg()
  unreachable

common.ret:                                       ; preds = %or.165.exit, %loop.exit.168
  %common.ret.op = phi i1 [ true, %loop.exit.168 ], [ false, %or.165.exit ]
  ret i1 %common.ret.op

choice.exit22:                                    ; preds = %or.165.exit
  %addtmp24 = add i64 %1, 1
  br label %loop.header.168

loop.header.168:                                  ; preds = %choice.then58, %choice.exit22
  %loop.idx.168.0 = phi i64 [ 0, %choice.exit22 ], [ %loop.next, %choice.then58 ]
  %"var.k'.0" = phi i64 [ %addtmp24, %choice.exit22 ], [ %addtmp61, %choice.then58 ]
  %cmptmp27 = icmp sge i64 %"var.k'.0", %str.len.query3
  br i1 %cmptmp27, label %loop.exit.168, label %choice.exit29

loop.exit.168:                                    ; preds = %switch.early.test, %loop.header.168
  %fld.gep64 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %"var.k'.0", ptr %fld.gep64, align 8
  br label %common.ret

choice.exit29:                                    ; preds = %loop.header.168
  %s.read.len32 = load i64, ptr %fld.load, align 8
  %s.read.len33 = and i64 %s.read.len32, 281474976710655
  %s.read.data34 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data34, align 8
  %idx.oob37 = icmp uge i64 %"var.k'.0", %s.read.len33
  br i1 %idx.oob37, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %choice.exit29
  %s.byte.gep41 = getelementptr i8, ptr %s.read.data35, i64 %"var.k'.0"
  %s.byte42 = load i8, ptr %s.byte.gep41, align 1
  %s.byte.val43 = zext i8 %s.byte42 to i64
  %cmptmp47 = icmp sge i64 %s.byte.val43, 48
  %cmptmp48 = icmp sle i64 %s.byte.val43, 57
  %and.169.phi = select i1 %cmptmp47, i1 %cmptmp48, i1 false
  %3 = freeze i1 %and.169.phi
  br i1 %3, label %choice.then58, label %switch.early.test

switch.early.test:                                ; preds = %idx_ok38
  switch i64 %s.byte.val43, label %loop.exit.168 [
    i64 101, label %choice.then58
    i64 69, label %choice.then58
    i64 46, label %choice.then58
    i64 45, label %choice.then58
    i64 43, label %choice.then58
  ]

idx_oob39:                                        ; preds = %choice.exit29
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then58:                                    ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %idx_ok38
  %addtmp61 = add i64 %"var.k'.0", 1
  %loop.next = add i64 %loop.idx.168.0, 1
  br label %loop.header.168
}

define { ptr, i64 } @"json::cursor"(ptr %0) #3 {
entry:
  %ret.pack.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %0, 0
  %ret.pack.fca.1.insert = insertvalue { ptr, i64 } %ret.pack.fca.0.insert, i64 0, 1
  ret { ptr, i64 } %ret.pack.fca.1.insert
}

define void @"json::cursor_reset"(ptr %0, ptr %1) #3 {
entry:
  store ptr %1, ptr %0, align 8
  %fld.gep3 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 0, ptr %fld.gep3, align 8
  ret void
}

; Function Attrs: inlinehint
define i64 @"json::cursor_skip_ws"(ptr %0) #7 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %str.len.query5 = load i64, ptr %fld.load, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  br label %loop.header.170

loop.header.170:                                  ; preds = %choice.then14, %entry
  %loop.idx.170.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then14 ]
  %"var.p'.0" = phi i64 [ %fld.load3, %entry ], [ %addtmp, %choice.then14 ]
  %cmptmp = icmp sge i64 %"var.p'.0", %str.len.query6
  br i1 %cmptmp, label %loop.exit.170, label %choice.exit

loop.exit.170:                                    ; preds = %idx_ok, %loop.header.170
  store i64 %"var.p'.0", ptr %fld.gep2, align 8
  ret i64 %"var.p'.0"

choice.exit:                                      ; preds = %loop.header.170
  %s.read.len10 = load i64, ptr %fld.load, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.p'.0", %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %"var.p'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then14, label %loop.exit.170

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then14:                                    ; preds = %idx_ok
  %addtmp = add i64 %"var.p'.0", 1
  %loop.next = add i64 %loop.idx.170.0, 1
  br label %loop.header.170
}

; Function Attrs: inlinehint
define i1 @"json::cursor_eof"(ptr %0) #7 {
entry:
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %0)
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp sge i64 %call.res, %str.len.query3
  ret i1 %cmptmp
}

; Function Attrs: inlinehint
define i64 @"json::cursor_peek"(ptr %0) #7 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %0)
  %str.len.query4 = load i64, ptr %fld.load, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %cmptmp = icmp slt i64 %call.res, %str.len.query5
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %str.len.query5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.exit:                                      ; preds = %entry, %idx_ok
  %choice.res = phi i64 [ %s.byte.val, %idx_ok ], [ -1, %entry ]
  ret i64 %choice.res

idx_ok:                                           ; preds = %choice.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %choice.exit

idx_oob:                                          ; preds = %choice.then
  call void @dva_abort_str_oob_msg()
  unreachable
}

; Function Attrs: inlinehint
define i1 @"json::cursor_expect_byte"(ptr %0, i64 %1) #7 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %cmptmp = icmp slt i64 %fld.load6, %str.len.query3
  br i1 %cmptmp, label %and.171.then, label %and.171.exit

and.171.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %fld.load6, %str.len.query3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.171.exit:                                     ; preds = %entry, %idx_ok
  %and.171.phi = phi i1 [ %cmptmp15, %idx_ok ], [ false, %entry ]
  br i1 %and.171.phi, label %and.172.then, label %and.172.exit

idx_ok:                                           ; preds = %and.171.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %fld.load6
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp15 = icmp eq i64 %s.byte.val, %1
  br label %and.171.exit

idx_oob:                                          ; preds = %and.171.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.172.then:                                     ; preds = %and.171.exit
  %call.res = call i1 @"str::is_ws"(i64 %1)
  %nottmp = xor i1 %call.res, true
  br label %and.172.exit

and.172.exit:                                     ; preds = %and.171.exit, %and.172.then
  %and.172.phi = phi i1 [ %nottmp, %and.172.then ], [ %and.171.phi, %and.171.exit ]
  br i1 %and.172.phi, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %and.172.exit
  %call.res19 = call i64 @"json::cursor_skip_ws"(ptr %0)
  br label %choice.exit

choice.exit:                                      ; preds = %and.172.exit, %choice.else
  %choice.res = phi i64 [ %call.res19, %choice.else ], [ %fld.load6, %and.172.exit ]
  %cmptmp22 = icmp slt i64 %choice.res, %str.len.query3
  br i1 %cmptmp22, label %and.173.then, label %choice.exit41

and.173.then:                                     ; preds = %choice.exit
  %s.read.len25 = load i64, ptr %fld.load, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %s.read.data27 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data28 = load ptr, ptr %s.read.data27, align 8
  %idx.oob30 = icmp uge i64 %choice.res, %s.read.len26
  br i1 %idx.oob30, label %idx_oob32, label %idx_ok31

idx_ok31:                                         ; preds = %and.173.then
  %s.byte.gep34 = getelementptr i8, ptr %s.read.data28, i64 %choice.res
  %s.byte35 = load i8, ptr %s.byte.gep34, align 1
  %s.byte.val36 = zext i8 %s.byte35 to i64
  %cmptmp38 = icmp eq i64 %s.byte.val36, %1
  br i1 %cmptmp38, label %choice.then39, label %choice.exit41

idx_oob32:                                        ; preds = %and.173.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then39:                                    ; preds = %idx_ok31
  %addtmp = add i64 %choice.res, 1
  store i64 %addtmp, ptr %fld.gep5, align 8
  br label %choice.exit41

choice.exit41:                                    ; preds = %idx_ok31, %choice.exit, %choice.then39
  %choice.res45 = phi i1 [ true, %choice.then39 ], [ false, %choice.exit ], [ false, %idx_ok31 ]
  ret i1 %choice.res45
}

; Function Attrs: inlinehint
define i1 @"json::cursor_enter_object"(ptr %0) #7 {
entry:
  %call.res = call i1 @"json::cursor_expect_byte"(ptr %0, i64 123)
  ret i1 %call.res
}

; Function Attrs: inlinehint
define i1 @"json::cursor_enter_array"(ptr %0) #7 {
entry:
  %call.res = call i1 @"json::cursor_expect_byte"(ptr %0, i64 91)
  ret i1 %call.res
}

; Function Attrs: inlinehint
define { i64, ptr } @"json::cursor_read_str"(ptr %0) #7 {
entry:
  %ret.niche.salloc = alloca { i64, ptr }, align 8
  %str.view = alloca { i64, ptr }, align 8
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %cmptmp = icmp slt i64 %fld.load6, %str.len.query3
  br i1 %cmptmp, label %and.174.then, label %choice.else

and.174.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %fld.load6, %str.len.query3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.174.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %fld.load6
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp14 = icmp eq i64 %s.byte.val, 34
  br i1 %cmptmp14, label %choice.exit, label %choice.else

idx_oob:                                          ; preds = %and.174.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.else:                                      ; preds = %entry, %idx_ok
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %0)
  br label %choice.exit

choice.exit:                                      ; preds = %idx_ok, %choice.else
  %choice.res = phi i64 [ %call.res, %choice.else ], [ %fld.load6, %idx_ok ]
  %cmptmp19 = icmp sge i64 %choice.res, %str.len.query3
  br i1 %cmptmp19, label %common.ret, label %or.175.else

or.175.else:                                      ; preds = %choice.exit
  %s.read.len22 = load i64, ptr %fld.load, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %s.read.data24 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data24, align 8
  %idx.oob27 = icmp uge i64 %choice.res, %s.read.len23
  br i1 %idx.oob27, label %idx_oob29, label %idx_ok28

idx_ok28:                                         ; preds = %or.175.else
  %s.byte.gep31 = getelementptr i8, ptr %s.read.data25, i64 %choice.res
  %s.byte32 = load i8, ptr %s.byte.gep31, align 1
  %s.byte.val33 = zext i8 %s.byte32 to i64
  %cmptmp34 = icmp ne i64 %s.byte.val33, 34
  br i1 %cmptmp34, label %common.ret, label %choice.exit36

idx_oob29:                                        ; preds = %or.175.else
  call void @dva_abort_str_oob_msg()
  unreachable

common.ret:                                       ; preds = %choice.exit60, %ret.niche.load79, %idx_ok28, %choice.exit, %choice.then59
  %common.ret.op = phi { i64, ptr } [ %ret.niche.val.fca.1.insert, %choice.then59 ], [ zeroinitializer, %choice.exit ], [ zeroinitializer, %idx_ok28 ], [ %ret.niche.val81.fca.1.insert, %ret.niche.load79 ], [ zeroinitializer, %choice.exit60 ]
  ret { i64, ptr } %common.ret.op

choice.exit36:                                    ; preds = %idx_ok28
  %addtmp = add i64 %choice.res, 1
  %call.res40 = call i64 @"json::#scan_plain_ascii_end"(ptr %fld.load, i64 %addtmp)
  %cmptmp43 = icmp slt i64 %call.res40, %str.len.query3
  br i1 %cmptmp43, label %and.176.then, label %choice.exit60

and.176.then:                                     ; preds = %choice.exit36
  %s.read.len46 = load i64, ptr %fld.load, align 8
  %s.read.len47 = and i64 %s.read.len46, 281474976710655
  %s.read.data48 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data49 = load ptr, ptr %s.read.data48, align 8
  %idx.oob51 = icmp uge i64 %call.res40, %s.read.len47
  br i1 %idx.oob51, label %idx_oob53, label %idx_ok52

idx_ok52:                                         ; preds = %and.176.then
  %s.byte.gep55 = getelementptr i8, ptr %s.read.data49, i64 %call.res40
  %s.byte56 = load i8, ptr %s.byte.gep55, align 1
  %s.byte.val57 = zext i8 %s.byte56 to i64
  %cmptmp58 = icmp eq i64 %s.byte.val57, 34
  br i1 %cmptmp58, label %choice.then59, label %choice.exit60

idx_oob53:                                        ; preds = %and.176.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then59:                                    ; preds = %idx_ok52
  %addtmp63 = add i64 %call.res40, 1
  store i64 %addtmp63, ptr %fld.gep5, align 8
  %s.read.len67 = load i64, ptr %fld.load, align 8
  %s.read.len68 = and i64 %s.read.len67, 281474976710655
  %s.read.data69 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data70 = load ptr, ptr %s.read.data69, align 8
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len68, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len68
  %final.start = select i1 %start.gt.len, i64 %s.read.len68, i64 %c.start.0
  %end.is_neg = icmp slt i64 %call.res40, 0
  %rel.end = add i64 %s.read.len68, %call.res40
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %call.res40
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len68
  %final.end = select i1 %end.gt.len, i64 %s.read.len68, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data70, i64 %final.start
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %ret.niche.val.fca.0.load = load i64, ptr %str.view, align 8
  %ret.niche.val.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.niche.val.fca.0.load, 0
  %ret.niche.val.fca.1.insert = insertvalue { i64, ptr } %ret.niche.val.fca.0.insert, ptr %view.data, 1
  br label %common.ret

choice.exit60:                                    ; preds = %choice.exit36, %idx_ok52
  %call.res77 = call { i64, ptr } @"json::#cursor_read_str_escaped"(ptr %0, i64 %addtmp, i64 %call.res40)
  %ret.niche.data = extractvalue { i64, ptr } %call.res77, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  %call.res77.fca.0.extract = extractvalue { i64, ptr } %call.res77, 0
  store i64 %call.res77.fca.0.extract, ptr %ret.niche.salloc, align 8
  %call.res77.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.niche.salloc, i32 0, i32 1
  store ptr %ret.niche.data, ptr %call.res77.fca.1.gep, align 8
  %ret.niche.sel = select i1 %ret.niche.ok, ptr %ret.niche.salloc, ptr null
  br i1 %ret.niche.ok, label %ret.niche.load79, label %common.ret

ret.niche.load79:                                 ; preds = %choice.exit60
  %ret.niche.val81.fca.0.load = load i64, ptr %ret.niche.sel, align 8
  %ret.niche.val81.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.niche.val81.fca.0.load, 0
  %ret.niche.val81.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.niche.sel, i32 0, i32 1
  %ret.niche.val81.fca.1.load = load ptr, ptr %ret.niche.val81.fca.1.gep, align 8
  %ret.niche.val81.fca.1.insert = insertvalue { i64, ptr } %ret.niche.val81.fca.0.insert, ptr %ret.niche.val81.fca.1.load, 1
  br label %common.ret
}

; Function Attrs: inlinehint
define { i64, ptr } @"json::cursor_next_field"(ptr %0) #7 {
entry:
  %ret.niche.salloc = alloca { i64, ptr }, align 8
  %fld.load = load ptr, ptr %0, align 8
  %str.len.query2 = load i64, ptr %fld.load, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %fld.gep5 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  %fld.load6 = load i64, ptr %fld.gep5, align 8
  %cmptmp = icmp slt i64 %fld.load6, %str.len.query3
  br i1 %cmptmp, label %and.177.then, label %choice.else

and.177.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %fld.load6, %str.len.query3
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.177.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %fld.load6
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %choice.else [
    i64 125, label %choice.exit17
    i64 44, label %choice.exit17
    i64 34, label %choice.exit17
  ]

idx_oob:                                          ; preds = %and.177.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.else:                                      ; preds = %entry, %idx_ok
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %0)
  br label %choice.exit17

choice.exit17:                                    ; preds = %idx_ok, %idx_ok, %idx_ok, %choice.else
  %choice.res20 = phi i64 [ %call.res, %choice.else ], [ %fld.load6, %idx_ok ], [ %fld.load6, %idx_ok ], [ %fld.load6, %idx_ok ]
  %cmptmp23 = icmp sge i64 %choice.res20, %str.len.query3
  br i1 %cmptmp23, label %common.ret, label %choice.exit25

common.ret:                                       ; preds = %choice.exit111, %ret.niche.load, %idx_ok97, %choice.exit81, %choice.exit17, %choice.case42
  %common.ret.op = phi { i64, ptr } [ zeroinitializer, %choice.case42 ], [ zeroinitializer, %choice.exit17 ], [ zeroinitializer, %choice.exit81 ], [ zeroinitializer, %idx_ok97 ], [ %ret.niche.val.fca.1.insert, %ret.niche.load ], [ zeroinitializer, %choice.exit111 ]
  ret { i64, ptr } %common.ret.op

choice.exit25:                                    ; preds = %choice.exit17
  %s.read.len28 = load i64, ptr %fld.load, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data30 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data30, align 8
  %idx.oob33 = icmp uge i64 %choice.res20, %s.read.len29
  br i1 %idx.oob33, label %idx_oob35, label %idx_ok34

idx_ok34:                                         ; preds = %choice.exit25
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data31, i64 %choice.res20
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  switch i64 %s.byte.val39, label %choice.exit50 [
    i64 125, label %choice.case42
    i64 44, label %choice.case51
  ]

idx_oob35:                                        ; preds = %choice.exit25
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case42:                                    ; preds = %idx_ok34
  %addtmp = add i64 %choice.res20, 1
  store i64 %addtmp, ptr %fld.gep5, align 8
  br label %common.ret

choice.exit50:                                    ; preds = %idx_ok97, %idx_ok34
  %call.res108 = call { i64, ptr } @"json::cursor_read_str"(ptr %0)
  %ret.niche.data = extractvalue { i64, ptr } %call.res108, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  %call.res108.fca.0.extract = extractvalue { i64, ptr } %call.res108, 0
  store i64 %call.res108.fca.0.extract, ptr %ret.niche.salloc, align 8
  %call.res108.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.niche.salloc, i32 0, i32 1
  store ptr %ret.niche.data, ptr %call.res108.fca.1.gep, align 8
  %ret.niche.sel = select i1 %ret.niche.ok, ptr %ret.niche.salloc, ptr null
  br i1 %ret.niche.ok, label %choice.then109, label %choice.exit111

choice.case51:                                    ; preds = %idx_ok34
  %addtmp56 = add i64 %choice.res20, 1
  store i64 %addtmp56, ptr %fld.gep5, align 8
  %cmptmp63 = icmp slt i64 %addtmp56, %str.len.query3
  br i1 %cmptmp63, label %and.178.then, label %choice.else80

and.178.then:                                     ; preds = %choice.case51
  %s.read.len66 = load i64, ptr %fld.load, align 8
  %s.read.len67 = and i64 %s.read.len66, 281474976710655
  %s.read.data69 = load ptr, ptr %s.read.data30, align 8
  %idx.oob71 = icmp uge i64 %addtmp56, %s.read.len67
  br i1 %idx.oob71, label %idx_oob73, label %idx_ok72

idx_ok72:                                         ; preds = %and.178.then
  %s.byte.gep75 = getelementptr i8, ptr %s.read.data69, i64 %addtmp56
  %s.byte76 = load i8, ptr %s.byte.gep75, align 1
  %s.byte.val77 = zext i8 %s.byte76 to i64
  %cmptmp78 = icmp eq i64 %s.byte.val77, 34
  br i1 %cmptmp78, label %choice.exit81, label %choice.else80

idx_oob73:                                        ; preds = %and.178.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.else80:                                    ; preds = %choice.case51, %idx_ok72
  %call.res84 = call i64 @"json::cursor_skip_ws"(ptr %0)
  br label %choice.exit81

choice.exit81:                                    ; preds = %idx_ok72, %choice.else80
  %choice.res85 = phi i64 [ %call.res84, %choice.else80 ], [ %addtmp56, %idx_ok72 ]
  %cmptmp88 = icmp sge i64 %choice.res85, %str.len.query3
  br i1 %cmptmp88, label %common.ret, label %or.179.else

or.179.else:                                      ; preds = %choice.exit81
  %s.read.len91 = load i64, ptr %fld.load, align 8
  %s.read.len92 = and i64 %s.read.len91, 281474976710655
  %s.read.data94 = load ptr, ptr %s.read.data30, align 8
  %idx.oob96 = icmp uge i64 %choice.res85, %s.read.len92
  br i1 %idx.oob96, label %idx_oob98, label %idx_ok97

idx_ok97:                                         ; preds = %or.179.else
  %s.byte.gep100 = getelementptr i8, ptr %s.read.data94, i64 %choice.res85
  %s.byte101 = load i8, ptr %s.byte.gep100, align 1
  %s.byte.val102 = zext i8 %s.byte101 to i64
  %cmptmp103 = icmp eq i64 %s.byte.val102, 125
  br i1 %cmptmp103, label %common.ret, label %choice.exit50

idx_oob98:                                        ; preds = %or.179.else
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then109:                                   ; preds = %choice.exit50
  %call.res113 = call i1 @"json::cursor_expect_byte"(ptr %0, i64 58)
  %ret.niche.sel. = select i1 %call.res113, ptr %ret.niche.sel, ptr null
  br label %choice.exit111

choice.exit111:                                   ; preds = %choice.exit50, %choice.then109
  %choice.res119 = phi ptr [ %ret.niche.sel., %choice.then109 ], [ null, %choice.exit50 ]
  %ret.niche.nn = icmp ne ptr %choice.res119, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %common.ret

ret.niche.load:                                   ; preds = %choice.exit111
  %ret.niche.val.fca.0.load = load i64, ptr %choice.res119, align 8
  %ret.niche.val.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.niche.val.fca.0.load, 0
  %ret.niche.val.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res119, i32 0, i32 1
  %ret.niche.val.fca.1.load = load ptr, ptr %ret.niche.val.fca.1.gep, align 8
  %ret.niche.val.fca.1.insert = insertvalue { i64, ptr } %ret.niche.val.fca.0.insert, ptr %ret.niche.val.fca.1.load, 1
  br label %common.ret
}

; Function Attrs: inlinehint
define { i1, i64 } @"json::cursor_read_int"(ptr %0) #7 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %0)
  %str.len.query3 = load i64, ptr %fld.load, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %cmptmp = icmp sge i64 %call.res, %str.len.query4
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %idx_ok117, %idx_ok117, %idx_ok117, %and.182.exit, %idx_ok29, %idx_ok, %entry, %choice.exit132
  %common.ret.op = phi { i1, i64 } [ %ram.pay, %choice.exit132 ], [ zeroinitializer, %entry ], [ zeroinitializer, %idx_ok ], [ zeroinitializer, %idx_ok29 ], [ zeroinitializer, %and.182.exit ], [ zeroinitializer, %idx_ok117 ], [ zeroinitializer, %idx_ok117 ], [ zeroinitializer, %idx_ok117 ]
  ret { i1, i64 } %common.ret.op

choice.exit:                                      ; preds = %entry
  %s.read.len9 = load i64, ptr %fld.load, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %val.match = icmp eq i64 %s.byte.val, 45
  %addtmp = add i64 %call.res, 1
  %"var.neg'.0" = select i1 %val.match, i1 true, i1 false
  %"var.p'.0" = select i1 %val.match, i64 %addtmp, i64 %call.res
  %cmptmp17 = icmp sge i64 %"var.p'.0", %str.len.query4
  br i1 %cmptmp17, label %common.ret, label %choice.exit19

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit19:                                    ; preds = %idx_ok
  %s.read.len23 = load i64, ptr %fld.load, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  %idx.oob28 = icmp uge i64 %"var.p'.0", %s.read.len24
  br i1 %idx.oob28, label %idx_oob30, label %idx_ok29

idx_ok29:                                         ; preds = %choice.exit19
  %s.byte.gep32 = getelementptr i8, ptr %s.read.data26, i64 %"var.p'.0"
  %s.byte33 = load i8, ptr %s.byte.gep32, align 1
  %s.byte.val34 = zext i8 %s.byte33 to i64
  %cmptmp39 = icmp sge i64 %s.byte.val34, 48
  %cmptmp40 = icmp sle i64 %s.byte.val34, 57
  %and.180.phi = select i1 %cmptmp39, i1 %cmptmp40, i1 false
  %choice.res = select i1 %and.180.phi, i1 true, i1 false
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %common.ret, label %choice.exit42

idx_oob30:                                        ; preds = %choice.exit19
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit42:                                    ; preds = %idx_ok29
  %val.match48 = icmp eq i64 %s.byte.val34, 48
  %. = select i1 %val.match48, i1 true, i1 false
  br i1 %., label %and.181.then, label %and.181.exit

and.181.then:                                     ; preds = %choice.exit42
  %addtmp51 = add i64 %"var.p'.0", 1
  %cmptmp53 = icmp slt i64 %addtmp51, %str.len.query4
  br label %and.181.exit

and.181.exit:                                     ; preds = %choice.exit42, %and.181.then
  %and.181.phi = phi i1 [ %cmptmp53, %and.181.then ], [ %., %choice.exit42 ]
  br i1 %and.181.phi, label %and.182.then, label %and.182.exit

and.182.then:                                     ; preds = %and.181.exit
  %s.read.len56 = load i64, ptr %fld.load, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %s.read.data59 = load ptr, ptr %s.read.data, align 8
  %addtmp61 = add i64 %"var.p'.0", 1
  %idx.oob62 = icmp uge i64 %addtmp61, %s.read.len57
  br i1 %idx.oob62, label %idx_oob64, label %idx_ok63

and.182.exit:                                     ; preds = %and.181.exit, %idx_ok63
  %and.182.phi = phi i1 [ %call.res69, %idx_ok63 ], [ %and.181.phi, %and.181.exit ]
  br i1 %and.182.phi, label %common.ret, label %loop.header.183

idx_ok63:                                         ; preds = %and.182.then
  %s.byte.gep66 = getelementptr i8, ptr %s.read.data59, i64 %addtmp61
  %s.byte67 = load i8, ptr %s.byte.gep66, align 1
  %s.byte.val68 = zext i8 %s.byte67 to i64
  %call.res69 = call i1 @"ascii::is_digit"(i64 %s.byte.val68)
  br label %and.182.exit

idx_oob64:                                        ; preds = %and.182.then
  call void @dva_abort_str_oob_msg()
  unreachable

loop.header.183:                                  ; preds = %and.182.exit, %choice.then99
  %loop.idx.183.0 = phi i64 [ %loop.next, %choice.then99 ], [ 0, %and.182.exit ]
  %"var.v'.0" = phi i64 [ %addtmp103, %choice.then99 ], [ 0, %and.182.exit ]
  %"var.p'.1" = phi i64 [ %addtmp105, %choice.then99 ], [ %"var.p'.0", %and.182.exit ]
  %cmptmp75 = icmp sge i64 %"var.p'.1", %str.len.query4
  br i1 %cmptmp75, label %loop.exit.183, label %choice.exit77

loop.exit.183:                                    ; preds = %idx_ok86, %loop.header.183
  %cmptmp108 = icmp slt i64 %"var.p'.1", %str.len.query4
  br i1 %cmptmp108, label %and.185.then, label %choice.exit132

choice.exit77:                                    ; preds = %loop.header.183
  %s.read.len80 = load i64, ptr %fld.load, align 8
  %s.read.len81 = and i64 %s.read.len80, 281474976710655
  %s.read.data83 = load ptr, ptr %s.read.data, align 8
  %idx.oob85 = icmp uge i64 %"var.p'.1", %s.read.len81
  br i1 %idx.oob85, label %idx_oob87, label %idx_ok86

idx_ok86:                                         ; preds = %choice.exit77
  %s.byte.gep89 = getelementptr i8, ptr %s.read.data83, i64 %"var.p'.1"
  %s.byte90 = load i8, ptr %s.byte.gep89, align 1
  %s.byte.val91 = zext i8 %s.byte90 to i64
  %cmptmp96 = icmp sge i64 %s.byte.val91, 48
  %cmptmp97 = icmp sle i64 %s.byte.val91, 57
  %and.184.phi = select i1 %cmptmp96, i1 %cmptmp97, i1 false
  %choice.res98 = select i1 %and.184.phi, i1 true, i1 false
  br i1 %choice.res98, label %choice.then99, label %loop.exit.183

idx_oob87:                                        ; preds = %choice.exit77
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then99:                                    ; preds = %idx_ok86
  %multmp = mul i64 %"var.v'.0", 10
  %subtmp = sub i64 %s.byte.val91, 48
  %addtmp103 = add i64 %multmp, %subtmp
  %addtmp105 = add i64 %"var.p'.1", 1
  %loop.next = add i64 %loop.idx.183.0, 1
  br label %loop.header.183

and.185.then:                                     ; preds = %loop.exit.183
  %s.read.len111 = load i64, ptr %fld.load, align 8
  %s.read.len112 = and i64 %s.read.len111, 281474976710655
  %s.read.data114 = load ptr, ptr %s.read.data, align 8
  %idx.oob116 = icmp uge i64 %"var.p'.1", %s.read.len112
  br i1 %idx.oob116, label %idx_oob118, label %idx_ok117

idx_ok117:                                        ; preds = %and.185.then
  %s.byte.gep120 = getelementptr i8, ptr %s.read.data114, i64 %"var.p'.1"
  %s.byte121 = load i8, ptr %s.byte.gep120, align 1
  %s.byte.val122 = zext i8 %s.byte121 to i64
  switch i64 %s.byte.val122, label %choice.exit132 [
    i64 101, label %common.ret
    i64 69, label %common.ret
    i64 46, label %common.ret
  ]

idx_oob118:                                       ; preds = %and.185.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit132:                                   ; preds = %loop.exit.183, %idx_ok117
  %fld.gep136 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %"var.p'.1", ptr %fld.gep136, align 8
  %subtmp142 = sub i64 0, %"var.v'.0"
  %choice.res144 = select i1 %"var.neg'.0", i64 %subtmp142, i64 %"var.v'.0"
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res144, 1
  br label %common.ret
}

declare i1 @"ascii::is_digit"(i64) #3

; Function Attrs: inlinehint
define { i1, i64 } @"json::cursor_read_bool"(ptr %0) #7 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %0)
  %str.len.query3 = load i64, ptr %fld.load, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %addtmp = add i64 %call.res, 4
  %cmptmp = icmp sle i64 %addtmp, %str.len.query4
  br i1 %cmptmp, label %and.186.then, label %choice.exit

and.186.then:                                     ; preds = %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %call.res, 0
  %rel.start = add i64 %str.len.query4, %call.res
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %call.res
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query4
  %final.start = select i1 %start.gt.len, i64 %str.len.query4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %str.len.query4, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %str.len.query4
  %final.end = select i1 %end.gt.len, i64 %str.len.query4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data10, i64 %final.start
  %eq.len = icmp eq i64 %view.len, 4
  br i1 %eq.len, label %str.eq.then, label %choice.exit

str.eq.then:                                      ; preds = %and.186.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr @str.0, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %str.eq.then55, %choice.exit, %and.187.then, %choice.then61, %choice.then
  %common.ret.op = phi { i1, i64 } [ { i1 true, i64 1 }, %choice.then ], [ { i1 true, i64 0 }, %choice.then61 ], [ zeroinitializer, %and.187.then ], [ zeroinitializer, %choice.exit ], [ zeroinitializer, %str.eq.then55 ]
  ret { i1, i64 } %common.ret.op

choice.then:                                      ; preds = %str.eq.then
  %fld.gep19 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %addtmp, ptr %fld.gep19, align 8
  br label %common.ret

choice.exit:                                      ; preds = %and.186.then, %entry, %str.eq.then
  %addtmp21 = add i64 %call.res, 5
  %cmptmp23 = icmp sle i64 %addtmp21, %str.len.query4
  br i1 %cmptmp23, label %and.187.then, label %common.ret

and.187.then:                                     ; preds = %choice.exit
  %s.read.len26 = load i64, ptr %fld.load, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %start.is_neg33 = icmp slt i64 %call.res, 0
  %rel.start34 = add i64 %s.read.len27, %call.res
  %norm.start35 = select i1 %start.is_neg33, i64 %rel.start34, i64 %call.res
  %start.lt.036 = icmp slt i64 %norm.start35, 0
  %c.start.037 = select i1 %start.lt.036, i64 0, i64 %norm.start35
  %start.gt.len38 = icmp sgt i64 %c.start.037, %s.read.len27
  %final.start39 = select i1 %start.gt.len38, i64 %s.read.len27, i64 %c.start.037
  %end.is_neg40 = icmp slt i64 %addtmp21, 0
  %rel.end41 = add i64 %s.read.len27, %addtmp21
  %norm.end42 = select i1 %end.is_neg40, i64 %rel.end41, i64 %addtmp21
  %end.lt.043 = icmp slt i64 %norm.end42, 0
  %c.end.044 = select i1 %end.lt.043, i64 0, i64 %norm.end42
  %end.gt.len45 = icmp sgt i64 %c.end.044, %s.read.len27
  %final.end46 = select i1 %end.gt.len45, i64 %s.read.len27, i64 %c.end.044
  %view.empty47 = icmp sle i64 %final.end46, %final.start39
  %view.len.sub48 = sub i64 %final.end46, %final.start39
  %view.len49 = select i1 %view.empty47, i64 0, i64 %view.len.sub48
  %view.data50 = getelementptr i8, ptr %s.read.data29, i64 %final.start39
  %eq.len54 = icmp eq i64 %view.len49, 5
  br i1 %eq.len54, label %str.eq.then55, label %common.ret

str.eq.then55:                                    ; preds = %and.187.then
  %eq.memcmp58 = call i32 @memcmp(ptr %view.data50, ptr @str.1, i64 %view.len49)
  %eq.cmp.zero59 = icmp eq i32 %eq.memcmp58, 0
  br i1 %eq.cmp.zero59, label %choice.then61, label %common.ret

choice.then61:                                    ; preds = %str.eq.then55
  %fld.gep66 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %addtmp21, ptr %fld.gep66, align 8
  br label %common.ret
}

; Function Attrs: inlinehint
define i1 @"json::cursor_skip_value"(ptr %0) #7 {
entry:
  %fld.load = load ptr, ptr %0, align 8
  %call.res = call i64 @"json::cursor_skip_ws"(ptr %0)
  %str.len.query3 = load i64, ptr %fld.load, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %cmptmp = icmp sge i64 %call.res, %str.len.query4
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %choice.next108, %choice.then151, %and.190.then, %choice.case107, %str.eq.then145, %choice.then99, %and.189.then, %choice.case55, %str.eq.then93, %choice.then47, %and.188.then, %choice.case29, %str.eq.then, %choice.then17, %choice.case, %choice.case22, %choice.case159, %entry
  %common.ret.op = phi i1 [ false, %entry ], [ %call.res28, %choice.case22 ], [ %call.res168, %choice.case159 ], [ true, %choice.then17 ], [ false, %choice.case ], [ true, %choice.then47 ], [ false, %and.188.then ], [ false, %choice.case29 ], [ false, %str.eq.then ], [ true, %choice.then99 ], [ false, %and.189.then ], [ false, %choice.case55 ], [ false, %str.eq.then93 ], [ true, %choice.then151 ], [ false, %and.190.then ], [ false, %choice.case107 ], [ false, %str.eq.then145 ], [ false, %choice.next108 ]
  ret i1 %common.ret.op

choice.exit:                                      ; preds = %entry
  %s.read.len8 = load i64, ptr %fld.load, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %call.res, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %call.res
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  switch i64 %s.byte.val, label %choice.next108 [
    i64 34, label %choice.case
    i64 123, label %choice.case22
    i64 91, label %choice.case22
    i64 116, label %choice.case29
    i64 102, label %choice.case55
    i64 110, label %choice.case107
  ]

idx_oob:                                          ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

choice.case:                                      ; preds = %idx_ok
  %addtmp = add i64 %call.res, 1
  %call.res16 = call { i1, i64 } @"json::#cursor_skip_str"(ptr %fld.load, i64 %addtmp)
  %ram.tag = extractvalue { i1, i64 } %call.res16, 0
  br i1 %ram.tag, label %choice.then17, label %common.ret

choice.then17:                                    ; preds = %choice.case
  %ram.pay = extractvalue { i1, i64 } %call.res16, 1
  %fld.gep21 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %ram.pay, ptr %fld.gep21, align 8
  br label %common.ret

choice.case22:                                    ; preds = %idx_ok, %idx_ok
  %call.res28 = call i1 @"json::#cursor_skip_compound"(ptr %0, i64 %call.res)
  br label %common.ret

choice.case29:                                    ; preds = %idx_ok
  %addtmp33 = add i64 %call.res, 4
  %cmptmp35 = icmp sle i64 %addtmp33, %str.len.query4
  br i1 %cmptmp35, label %and.188.then, label %common.ret

and.188.then:                                     ; preds = %choice.case29
  %s.read.len38 = load i64, ptr %fld.load, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %s.read.data41 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %call.res, 0
  %rel.start = add i64 %s.read.len39, %call.res
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %call.res
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len39
  %final.start = select i1 %start.gt.len, i64 %s.read.len39, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp33, 0
  %rel.end = add i64 %s.read.len39, %addtmp33
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp33
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len39
  %final.end = select i1 %end.gt.len, i64 %s.read.len39, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data41, i64 %final.start
  %eq.len = icmp eq i64 %view.len, 4
  br i1 %eq.len, label %str.eq.then, label %common.ret

str.eq.then:                                      ; preds = %and.188.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr @str.0, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then47, label %common.ret

choice.then47:                                    ; preds = %str.eq.then
  %fld.gep53 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %addtmp33, ptr %fld.gep53, align 8
  br label %common.ret

choice.case55:                                    ; preds = %idx_ok
  %addtmp59 = add i64 %call.res, 5
  %cmptmp61 = icmp sle i64 %addtmp59, %str.len.query4
  br i1 %cmptmp61, label %and.189.then, label %common.ret

and.189.then:                                     ; preds = %choice.case55
  %s.read.len64 = load i64, ptr %fld.load, align 8
  %s.read.len65 = and i64 %s.read.len64, 281474976710655
  %s.read.data67 = load ptr, ptr %s.read.data, align 8
  %start.is_neg71 = icmp slt i64 %call.res, 0
  %rel.start72 = add i64 %s.read.len65, %call.res
  %norm.start73 = select i1 %start.is_neg71, i64 %rel.start72, i64 %call.res
  %start.lt.074 = icmp slt i64 %norm.start73, 0
  %c.start.075 = select i1 %start.lt.074, i64 0, i64 %norm.start73
  %start.gt.len76 = icmp sgt i64 %c.start.075, %s.read.len65
  %final.start77 = select i1 %start.gt.len76, i64 %s.read.len65, i64 %c.start.075
  %end.is_neg78 = icmp slt i64 %addtmp59, 0
  %rel.end79 = add i64 %s.read.len65, %addtmp59
  %norm.end80 = select i1 %end.is_neg78, i64 %rel.end79, i64 %addtmp59
  %end.lt.081 = icmp slt i64 %norm.end80, 0
  %c.end.082 = select i1 %end.lt.081, i64 0, i64 %norm.end80
  %end.gt.len83 = icmp sgt i64 %c.end.082, %s.read.len65
  %final.end84 = select i1 %end.gt.len83, i64 %s.read.len65, i64 %c.end.082
  %view.empty85 = icmp sle i64 %final.end84, %final.start77
  %view.len.sub86 = sub i64 %final.end84, %final.start77
  %view.len87 = select i1 %view.empty85, i64 0, i64 %view.len.sub86
  %view.data88 = getelementptr i8, ptr %s.read.data67, i64 %final.start77
  %eq.len92 = icmp eq i64 %view.len87, 5
  br i1 %eq.len92, label %str.eq.then93, label %common.ret

str.eq.then93:                                    ; preds = %and.189.then
  %eq.memcmp96 = call i32 @memcmp(ptr %view.data88, ptr @str.1, i64 %view.len87)
  %eq.cmp.zero97 = icmp eq i32 %eq.memcmp96, 0
  br i1 %eq.cmp.zero97, label %choice.then99, label %common.ret

choice.then99:                                    ; preds = %str.eq.then93
  %fld.gep105 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %addtmp59, ptr %fld.gep105, align 8
  br label %common.ret

choice.case107:                                   ; preds = %idx_ok
  %addtmp111 = add i64 %call.res, 4
  %cmptmp113 = icmp sle i64 %addtmp111, %str.len.query4
  br i1 %cmptmp113, label %and.190.then, label %common.ret

choice.next108:                                   ; preds = %idx_ok
  %cmptmp161 = icmp sge i64 %s.byte.val, 48
  %cmptmp162 = icmp sle i64 %s.byte.val, 57
  %and.191.phi = select i1 %cmptmp161, i1 %cmptmp162, i1 false
  %val.match163 = icmp eq i64 %s.byte.val, 45
  %case.or164 = or i1 %and.191.phi, %val.match163
  br i1 %case.or164, label %choice.case159, label %common.ret

and.190.then:                                     ; preds = %choice.case107
  %s.read.len116 = load i64, ptr %fld.load, align 8
  %s.read.len117 = and i64 %s.read.len116, 281474976710655
  %s.read.data119 = load ptr, ptr %s.read.data, align 8
  %start.is_neg123 = icmp slt i64 %call.res, 0
  %rel.start124 = add i64 %s.read.len117, %call.res
  %norm.start125 = select i1 %start.is_neg123, i64 %rel.start124, i64 %call.res
  %start.lt.0126 = icmp slt i64 %norm.start125, 0
  %c.start.0127 = select i1 %start.lt.0126, i64 0, i64 %norm.start125
  %start.gt.len128 = icmp sgt i64 %c.start.0127, %s.read.len117
  %final.start129 = select i1 %start.gt.len128, i64 %s.read.len117, i64 %c.start.0127
  %end.is_neg130 = icmp slt i64 %addtmp111, 0
  %rel.end131 = add i64 %s.read.len117, %addtmp111
  %norm.end132 = select i1 %end.is_neg130, i64 %rel.end131, i64 %addtmp111
  %end.lt.0133 = icmp slt i64 %norm.end132, 0
  %c.end.0134 = select i1 %end.lt.0133, i64 0, i64 %norm.end132
  %end.gt.len135 = icmp sgt i64 %c.end.0134, %s.read.len117
  %final.end136 = select i1 %end.gt.len135, i64 %s.read.len117, i64 %c.end.0134
  %view.empty137 = icmp sle i64 %final.end136, %final.start129
  %view.len.sub138 = sub i64 %final.end136, %final.start129
  %view.len139 = select i1 %view.empty137, i64 0, i64 %view.len.sub138
  %view.data140 = getelementptr i8, ptr %s.read.data119, i64 %final.start129
  %eq.len144 = icmp eq i64 %view.len139, 4
  br i1 %eq.len144, label %str.eq.then145, label %common.ret

str.eq.then145:                                   ; preds = %and.190.then
  %eq.memcmp148 = call i32 @memcmp(ptr %view.data140, ptr @str.17, i64 %view.len139)
  %eq.cmp.zero149 = icmp eq i32 %eq.memcmp148, 0
  br i1 %eq.cmp.zero149, label %choice.then151, label %common.ret

choice.then151:                                   ; preds = %str.eq.then145
  %fld.gep157 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store i64 %addtmp111, ptr %fld.gep157, align 8
  br label %common.ret

choice.case159:                                   ; preds = %choice.next108
  %call.res168 = call i1 @"json::#cursor_skip_number"(ptr %0, i64 %call.res, i64 %s.byte.val)
  br label %common.ret
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noinline noreturn "nounwind" }
attributes #5 = { cold noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint "nounwind" }
