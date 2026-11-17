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
@clo.const = internal constant { ptr, ptr } { ptr @"str::#find_byte_from", ptr null }
@"var.str::#find_byte_from" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"str::is_digit", ptr null }
@"var.str::is_digit" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"str::is_alpha", ptr null }
@"var.str::is_alpha" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"str::is_alnum", ptr null }
@"var.str::is_alnum" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"str::is_ws", ptr null }
@"var.str::is_ws" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"str::is_hex", ptr null }
@"var.str::is_hex" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.6 = internal constant { ptr, ptr } { ptr @"str::from_byte", ptr null }
@"var.str::from_byte" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"str::from_int", ptr null }
@"var.str::from_int" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"str::from_u64", ptr null }
@"var.str::from_u64" = global ptr null
@str.0 = internal unnamed_addr constant [4 x i8] c"nan\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.0 }
@str.1 = internal unnamed_addr constant [4 x i8] c"inf\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.1 }
@str.2 = internal unnamed_addr constant [5 x i8] c"-inf\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.2 }
@str.3 = internal unnamed_addr constant [3 x i8] c"-0\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.3 }
@str.4 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.4 }
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@str.5 = internal unnamed_addr constant [3 x i8] c"0.\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@str.6 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.6 }
@str.7 = internal unnamed_addr constant [2 x i8] c"e\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.7 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"str::from_float", ptr null }
@"var.str::from_float" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"str::cmp", ptr null }
@"var.str::cmp" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"str::lt", ptr null }
@"var.str::lt" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"str::to_int", ptr null }
@"var.str::to_int" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"str::to_hex", ptr null }
@"var.str::to_hex" = global ptr null
@str.8 = internal unnamed_addr constant [4 x i8] c"0x0\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.8 }
@clo.const.14 = internal constant { ptr, ptr } { ptr @"str::hex_to_str", ptr null }
@"var.str::hex_to_str" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"str::is_empty", ptr null }
@"var.str::is_empty" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"str::is_blank", ptr null }
@"var.str::is_blank" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"str::starts_with", ptr null }
@"var.str::starts_with" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"str::ends_with", ptr null }
@"var.str::ends_with" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"str::find_from", ptr null }
@"var.str::find_from" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"str::find", ptr null }
@"var.str::find" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"str::rfind", ptr null }
@"var.str::rfind" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"str::contains", ptr null }
@"var.str::contains" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"str::count", ptr null }
@"var.str::count" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"str::trim_start", ptr null }
@"var.str::trim_start" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"str::trim_end", ptr null }
@"var.str::trim_end" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"str::trim", ptr null }
@"var.str::trim" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"str::trim_prefix", ptr null }
@"var.str::trim_prefix" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"str::trim_suffix", ptr null }
@"var.str::trim_suffix" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"str::split_once", ptr null }
@"var.str::split_once" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.30 = internal constant { ptr, ptr } { ptr @"str::split", ptr null }
@"var.str::split" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"str::lines", ptr null }
@"var.str::lines" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"str::words", ptr null }
@"var.str::words" = global ptr null
@str.9 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.9 }
@str.10 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.10 }
@str.11 = internal unnamed_addr constant [8 x i8] c"str.dva\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.11 }
@str.12 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.12 }
@dva_thread_rec = external thread_local global ptr
@clo.const.33 = internal constant { ptr, ptr } { ptr @"str::join", ptr null }
@"var.str::join" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"str::lower", ptr null }
@"var.str::lower" = global ptr null
@str.13 = internal unnamed_addr constant [3 x i8] c"SS\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.13 }
@clo.const.35 = internal constant { ptr, ptr } { ptr @"str::upper", ptr null }
@"var.str::upper" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"str::repeat", ptr null }
@"var.str::repeat" = global ptr null
@clo.const.37 = internal constant { ptr, ptr } { ptr @"str::pad_left", ptr null }
@"var.str::pad_left" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"str::pad_right", ptr null }
@"var.str::pad_right" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"str::reverse", ptr null }
@"var.str::reverse" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"str::replace_first", ptr null }
@"var.str::replace_first" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"str::replace", ptr null }
@"var.str::replace" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"str::parse_int", ptr null }
@"var.str::parse_int" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"str::parse_float", ptr null }
@"var.str::parse_float" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_str, ptr null }]

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

define internal void @__dva_global_init_str() #0 {
entry:
  store ptr @clo.const, ptr @"var.str::#find_byte_from", align 8
  store ptr @clo.const.1, ptr @"var.str::is_digit", align 8
  store ptr @clo.const.2, ptr @"var.str::is_alpha", align 8
  store ptr @clo.const.3, ptr @"var.str::is_alnum", align 8
  store ptr @clo.const.4, ptr @"var.str::is_ws", align 8
  store ptr @clo.const.5, ptr @"var.str::is_hex", align 8
  store ptr @clo.const.6, ptr @"var.str::from_byte", align 8
  store ptr @clo.const.7, ptr @"var.str::from_int", align 8
  store ptr @clo.const.8, ptr @"var.str::from_u64", align 8
  store ptr @clo.const.9, ptr @"var.str::from_float", align 8
  store ptr @clo.const.10, ptr @"var.str::cmp", align 8
  store ptr @clo.const.11, ptr @"var.str::lt", align 8
  store ptr @clo.const.12, ptr @"var.str::to_int", align 8
  store ptr @clo.const.13, ptr @"var.str::to_hex", align 8
  store ptr @clo.const.14, ptr @"var.str::hex_to_str", align 8
  store ptr @clo.const.15, ptr @"var.str::is_empty", align 8
  store ptr @clo.const.16, ptr @"var.str::is_blank", align 8
  store ptr @clo.const.17, ptr @"var.str::starts_with", align 8
  store ptr @clo.const.18, ptr @"var.str::ends_with", align 8
  store ptr @clo.const.19, ptr @"var.str::find_from", align 8
  store ptr @clo.const.20, ptr @"var.str::find", align 8
  store ptr @clo.const.21, ptr @"var.str::rfind", align 8
  store ptr @clo.const.22, ptr @"var.str::contains", align 8
  store ptr @clo.const.23, ptr @"var.str::count", align 8
  store ptr @clo.const.24, ptr @"var.str::trim_start", align 8
  store ptr @clo.const.25, ptr @"var.str::trim_end", align 8
  store ptr @clo.const.26, ptr @"var.str::trim", align 8
  store ptr @clo.const.27, ptr @"var.str::trim_prefix", align 8
  store ptr @clo.const.28, ptr @"var.str::trim_suffix", align 8
  store ptr @clo.const.29, ptr @"var.str::split_once", align 8
  store ptr @clo.const.30, ptr @"var.str::split", align 8
  store ptr @clo.const.31, ptr @"var.str::lines", align 8
  store ptr @clo.const.32, ptr @"var.str::words", align 8
  store ptr @clo.const.33, ptr @"var.str::join", align 8
  store ptr @clo.const.34, ptr @"var.str::lower", align 8
  store ptr @clo.const.35, ptr @"var.str::upper", align 8
  store ptr @clo.const.36, ptr @"var.str::repeat", align 8
  store ptr @clo.const.37, ptr @"var.str::pad_left", align 8
  store ptr @clo.const.38, ptr @"var.str::pad_right", align 8
  store ptr @clo.const.39, ptr @"var.str::reverse", align 8
  store ptr @clo.const.40, ptr @"var.str::replace_first", align 8
  store ptr @clo.const.41, ptr @"var.str::replace", align 8
  store ptr @clo.const.42, ptr @"var.str::parse_int", align 8
  store ptr @clo.const.43, ptr @"var.str::parse_float", align 8
  ret void
}

declare ptr @memchr(ptr, i64, i64) #0

define internal i64 @"str::#find_byte_from"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var.hit = alloca ptr, align 8
  %var.raw_base = alloca i64, align 8
  %var.base = alloca ptr, align 8
  %var.st = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.ch = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.ch, align 8
  store i64 %2, ptr %var.start, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load i64, ptr %var.start, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
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
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load4 = load i64, ptr %var.start, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load4, %choice.else ]
  store i64 %choice.res, ptr %var.st, align 8
  %var.load5 = load i64, ptr %var.st, align 8
  %var.load6 = load i64, ptr %var.ls, align 8
  %cmptmp7 = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp7, label %or.39.then, label %or.39.else

or.39.then:                                       ; preds = %choice.exit
  br label %or.39.exit

or.39.else:                                       ; preds = %choice.exit
  %var.load8 = load i64, ptr %var.ch, align 8
  %cmptmp10 = icmp sge i64 %var.load8, 0
  br i1 %cmptmp10, label %and.40.then, label %and.40.else

or.39.exit:                                       ; preds = %choice.exit9, %or.39.then
  %or.39.phi = phi i1 [ %cmptmp7, %or.39.then ], [ %nottmp, %choice.exit9 ]
  br i1 %or.39.phi, label %choice.then13, label %choice.exit14

choice.exit9:                                     ; preds = %choice.next, %choice.case
  %choice.res12 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp = xor i1 %choice.res12, true
  br label %or.39.exit

choice.case:                                      ; preds = %and.40.exit
  br label %choice.exit9

choice.next:                                      ; preds = %and.40.exit
  br label %choice.exit9

and.40.then:                                      ; preds = %or.39.else
  %cmptmp11 = icmp slt i64 %var.load8, 256
  br label %and.40.exit

and.40.else:                                      ; preds = %or.39.else
  br label %and.40.exit

and.40.exit:                                      ; preds = %and.40.else, %and.40.then
  %and.40.phi = phi i1 [ %cmptmp11, %and.40.then ], [ %cmptmp10, %and.40.else ]
  br i1 %and.40.phi, label %choice.case, label %choice.next

choice.then13:                                    ; preds = %or.39.exit
  ret i64 -1

choice.exit14:                                    ; preds = %ret.dead, %or.39.exit
  %var.load15 = load ptr, ptr %var.s, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.ptr16 = load ptr, ptr %s.ptr, align 8
  store ptr %s.ptr16, ptr %var.base, align 8
  %var.load17 = load ptr, ptr %var.base, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load17 to i64
  %bandtmp = and i64 %coerce.ptr2int, 281474976710655
  store i64 %bandtmp, ptr %var.raw_base, align 8
  %var.load18 = load ptr, ptr %var.base, align 8
  %var.load19 = load i64, ptr %var.st, align 8
  %ptr.int.l = ptrtoint ptr %var.load18 to i64
  %addtmp = add i64 %ptr.int.l, %var.load19
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load20 = load i64, ptr %var.ch, align 8
  %var.load21 = load i64, ptr %var.ls, align 8
  %var.load22 = load i64, ptr %var.st, align 8
  %subtmp = sub i64 %var.load21, %var.load22
  %call.res = call ptr @memchr(ptr %addr.ffi.clean, i64 %var.load20, i64 %subtmp)
  store ptr %call.res, ptr %var.hit, align 8
  %var.load23 = load ptr, ptr %var.hit, align 8
  %ptr.int.l24 = ptrtoint ptr %var.load23 to i64
  %cmptmp25 = icmp eq i64 %ptr.int.l24, 0
  br i1 %cmptmp25, label %choice.then26, label %choice.else27

ret.dead:                                         ; No predecessors!
  br label %choice.exit14

choice.then26:                                    ; preds = %choice.exit14
  br label %choice.exit28

choice.else27:                                    ; preds = %choice.exit14
  %var.load29 = load ptr, ptr %var.hit, align 8
  %coerce.ptr2int30 = ptrtoint ptr %var.load29 to i64
  %var.load31 = load i64, ptr %var.raw_base, align 8
  %subtmp32 = sub i64 %coerce.ptr2int30, %var.load31
  br label %choice.exit28

choice.exit28:                                    ; preds = %choice.else27, %choice.then26
  %choice.res33 = phi i64 [ -1, %choice.then26 ], [ %subtmp32, %choice.else27 ]
  ret i64 %choice.res33
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

define i1 @"str::is_digit"(i64 %0) #0 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_digit"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_digit"(i64) #0

define i1 @"str::is_alpha"(i64 %0) #0 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_alpha"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_alpha"(i64) #0

define i1 @"str::is_alnum"(i64 %0) #0 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_alnum"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_alnum"(i64) #0

define i1 @"str::is_ws"(i64 %0) #0 {
entry:
  %var._ = alloca i64, align 8
  store i64 %0, ptr %var._, align 8
  %var.load = load i64, ptr %var._, align 8
  %val.match = icmp eq i64 %var.load, 32
  %val.match1 = icmp eq i64 %var.load, 9
  %case.or = or i1 %val.match, %val.match1
  %val.match2 = icmp eq i64 %var.load, 10
  %case.or3 = or i1 %case.or, %val.match2
  %val.match4 = icmp eq i64 %var.load, 13
  %case.or5 = or i1 %case.or3, %val.match4
  br i1 %case.or5, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"str::is_hex"(i64 %0) #0 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_hex"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_hex"(i64) #0

define { i64, ptr } @"str::from_byte"(i64 %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.b = alloca i64, align 8
  store i64 %0, ptr %var.b, align 8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 1, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.out, align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load = load i64, ptr %var.b, align 8
  %b.b.ge0 = icmp sge i64 %var.load, 0
  %b.b.le255 = icmp sle i64 %var.load, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.byte_ok:                                        ; preds = %abort.dead2, %b.buf.len1
  %b.byte.i8 = trunc i64 %var.load to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len3 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap4 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data5 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len3, %b.cap4
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len1
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead2:                                      ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap4, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum6 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf7 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %b.new.buf.len8

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len8
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data12 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len13 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data12, i64 %b.cur.len13
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len13, 1
  %b.nul = getelementptr i8, ptr %b.cur.data12, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep14, align 8
  %var.load15 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 0
  %b.freeze.len16 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  %b.freeze.data17 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len16, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data17, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack

b.new.buf.len8:                                   ; preds = %abort.dead10, %b.grow
  %arena.cur11 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data5, i64 %b.len3, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len3
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort9:                              ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %b.new.buf.len8
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

define { i64, ptr } @"str::from_int"(i64 %0) #0 {
entry:
  %var.v = alloca i64, align 8
  store i64 %0, ptr %var.v, align 8
  %var.load = load i64, ptr %var.v, align 8
  %arena.cur = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %to_str.n = call i64 @dva_fmt_i64_buf(ptr %to_str.buf, i64 %var.load, i1 false)
  %arena.cur1 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.n, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %to_str.res, align 8
  ret { i64, ptr } %ret.pack
}

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #0 {
entry:
  %fmt.tmp = alloca [24 x i8], align 1
  %fmt.is.zero = icmp eq i64 %1, 0
  br i1 %fmt.is.zero, label %zero, label %nonzero

zero:                                             ; preds = %entry
  store i8 48, ptr %0, align 1
  %fmt.z.nul = getelementptr i8, ptr %0, i64 1
  store i8 0, ptr %fmt.z.nul, align 1
  ret i64 1

nonzero:                                          ; preds = %entry
  %fmt.slt = icmp slt i64 %1, 0
  %fmt.not.u = xor i1 %2, true
  %fmt.is.neg = and i1 %fmt.not.u, %fmt.slt
  %fmt.neg = sub i64 0, %1
  %fmt.abs = select i1 %fmt.is.neg, i64 %fmt.neg, i64 %1
  br label %divloop

divloop:                                          ; preds = %divloop, %nonzero
  %fmt.n = phi i64 [ %fmt.abs, %nonzero ], [ %fmt.quot, %divloop ]
  %fmt.k = phi i64 [ 0, %nonzero ], [ %fmt.k.next, %divloop ]
  %fmt.rem = urem i64 %fmt.n, 10
  %fmt.quot = udiv i64 %fmt.n, 10
  %fmt.r8 = trunc i64 %fmt.rem to i8
  %fmt.dig = add i8 %fmt.r8, 48
  %fmt.tslot = getelementptr i8, ptr %fmt.tmp, i64 %fmt.k
  store i8 %fmt.dig, ptr %fmt.tslot, align 1
  %fmt.k.next = add i64 %fmt.k, 1
  %fmt.more = icmp ne i64 %fmt.quot, 0
  br i1 %fmt.more, label %divloop, label %sign

sign:                                             ; preds = %divloop
  br i1 %fmt.is.neg, label %negstore, label %copypre

negstore:                                         ; preds = %sign
  store i8 45, ptr %0, align 1
  br label %copypre

copypre:                                          ; preds = %negstore, %sign
  %fmt.off = phi i64 [ 0, %sign ], [ 1, %negstore ]
  br label %copyloop

copyloop:                                         ; preds = %copyloop, %copypre
  %fmt.i = phi i64 [ 0, %copypre ], [ %fmt.i.next, %copyloop ]
  %fmt.km1 = sub i64 %fmt.k.next, 1
  %fmt.sidx = sub i64 %fmt.km1, %fmt.i
  %fmt.sptr = getelementptr i8, ptr %fmt.tmp, i64 %fmt.sidx
  %fmt.ch = load i8, ptr %fmt.sptr, align 1
  %fmt.didx = add i64 %fmt.off, %fmt.i
  %fmt.dptr = getelementptr i8, ptr %0, i64 %fmt.didx
  store i8 %fmt.ch, ptr %fmt.dptr, align 1
  %fmt.i.next = add i64 %fmt.i, 1
  %fmt.cmore = icmp ne i64 %fmt.i.next, %fmt.k.next
  br i1 %fmt.cmore, label %copyloop, label %done

done:                                             ; preds = %copyloop
  %fmt.tot = add i64 %fmt.off, %fmt.k.next
  %fmt.nul = getelementptr i8, ptr %0, i64 %fmt.tot
  store i8 0, ptr %fmt.nul, align 1
  ret i64 %fmt.tot
}

define { i64, ptr } @"str::from_u64"(i64 %0) #0 {
entry:
  %var.v = alloca i64, align 8
  store i64 %0, ptr %var.v, align 8
  %var.load = load i64, ptr %var.v, align 8
  %arena.cur = call ptr @dva_arena_current()
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %to_str.n = call i64 @dva_fmt_i64_buf(ptr %to_str.buf, i64 %var.load, i1 true)
  %arena.cur1 = call ptr @dva_arena_current()
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 0
  store i64 %to_str.n, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %to_str.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"str::from_float"(double %0) #0 {
entry:
  %var.es = alloca ptr, align 8
  %cat.ibuf = alloca [24 x i8], align 1
  %var.mant = alloca ptr, align 8
  %var._827 = alloca i64, align 8
  %var._i826 = alloca i64, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var._781 = alloca i64, align 8
  %var._i780 = alloca i64, align 8
  %loop.step.55 = alloca i64, align 8
  %loop.idx.55 = alloca i64, align 8
  %"var.dot_pos'" = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._674 = alloca i64, align 8
  %var._i673 = alloca i64, align 8
  %loop.step.54 = alloca i64, align 8
  %loop.idx.54 = alloca i64, align 8
  %var._621 = alloca i64, align 8
  %var._i620 = alloca i64, align 8
  %loop.step.52 = alloca i64, align 8
  %loop.idx.52 = alloca i64, align 8
  %var._519 = alloca i64, align 8
  %var._i518 = alloca i64, align 8
  %loop.step.51 = alloca i64, align 8
  %loop.idx.51 = alloca i64, align 8
  %var._405 = alloca i64, align 8
  %var._i404 = alloca i64, align 8
  %loop.step.49 = alloca i64, align 8
  %loop.idx.49 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._334 = alloca i64, align 8
  %var._i333 = alloca i64, align 8
  %loop.step.48 = alloca i64, align 8
  %loop.idx.48 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.ms = alloca ptr, align 8
  %var._146 = alloca i64, align 8
  %var._i145 = alloca i64, align 8
  %loop.step.44 = alloca i64, align 8
  %loop.idx.44 = alloca i64, align 8
  %"var.m'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.d = alloca i64, align 8
  %var._81 = alloca i64, align 8
  %var._i80 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.43 = alloca i64, align 8
  %loop.idx.43 = alloca i64, align 8
  %var.ds = alloca ptr, align 8
  %"var.f'" = alloca double, align 8
  %var.ip = alloca i64, align 8
  %var._47 = alloca i64, align 8
  %var._i46 = alloca i64, align 8
  %loop.step.42 = alloca i64, align 8
  %loop.idx.42 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.41 = alloca i64, align 8
  %loop.idx.41 = alloca i64, align 8
  %"var.e'" = alloca i64, align 8
  %"var.x'" = alloca double, align 8
  %var.a = alloca double, align 8
  %var.neg = alloca i1, align 1
  %var.v = alloca double, align 8
  store double %0, ptr %var.v, align 8
  %var.load = load double, ptr %var.v, align 8
  %var.load1 = load double, ptr %var.v, align 8
  %fcmptmp = fcmp une double %var.load, %var.load1
  br i1 %fcmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.0.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load double, ptr %var.v, align 8
  %var.load3 = load double, ptr @"var.const::max_f64", align 8
  %fcmptmp4 = fcmp ogt double %var.load2, %var.load3
  br i1 %fcmptmp4, label %choice.then5, label %choice.exit6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then5:                                     ; preds = %choice.exit
  %ret.pack7 = load { i64, ptr }, ptr @str.1.struct, align 8
  ret { i64, ptr } %ret.pack7

choice.exit6:                                     ; preds = %ret.dead8, %choice.exit
  %var.load9 = load double, ptr %var.v, align 8
  %var.load10 = load double, ptr @"var.const::max_f64", align 8
  %fnegtmp = fneg double %var.load10
  %fcmptmp11 = fcmp olt double %var.load9, %fnegtmp
  br i1 %fcmptmp11, label %choice.then12, label %choice.exit13

ret.dead8:                                        ; No predecessors!
  br label %choice.exit6

choice.then12:                                    ; preds = %choice.exit6
  %ret.pack14 = load { i64, ptr }, ptr @str.2.struct, align 8
  ret { i64, ptr } %ret.pack14

choice.exit13:                                    ; preds = %ret.dead15, %choice.exit6
  %var.load16 = load double, ptr %var.v, align 8
  %fcmptmp17 = fcmp olt double %var.load16, 0.000000e+00
  store i1 %fcmptmp17, ptr %var.neg, align 1
  %var.load18 = load i1, ptr %var.neg, align 1
  br i1 %var.load18, label %choice.then19, label %choice.else

ret.dead15:                                       ; No predecessors!
  br label %choice.exit13

choice.then19:                                    ; preds = %choice.exit13
  %var.load21 = load double, ptr %var.v, align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load21
  br label %choice.exit20

choice.else:                                      ; preds = %choice.exit13
  %var.load22 = load double, ptr %var.v, align 8
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else, %choice.then19
  %choice.res = phi double [ %fsubtmp, %choice.then19 ], [ %var.load22, %choice.else ]
  store double %choice.res, ptr %var.a, align 8
  %var.load23 = load double, ptr %var.a, align 8
  %fcmptmp24 = fcmp oeq double %var.load23, 0.000000e+00
  br i1 %fcmptmp24, label %choice.then25, label %choice.exit26

choice.then25:                                    ; preds = %choice.exit20
  %var.load27 = load double, ptr %var.v, align 8
  %fdivtmp = fdiv double 1.000000e+00, %var.load27
  %fcmptmp28 = fcmp olt double %fdivtmp, 0.000000e+00
  br i1 %fcmptmp28, label %choice.then29, label %choice.else30

choice.exit26:                                    ; preds = %ret.dead34, %choice.exit20
  %var.load35 = load double, ptr %var.a, align 8
  store double %var.load35, ptr %"var.x'", align 8
  store i64 0, ptr %"var.e'", align 8
  store i64 0, ptr %loop.idx.41, align 8
  br label %loop.header.41

choice.then29:                                    ; preds = %choice.then25
  br label %choice.exit31

choice.else30:                                    ; preds = %choice.then25
  br label %choice.exit31

choice.exit31:                                    ; preds = %choice.else30, %choice.then29
  %choice.res32 = phi ptr [ @str.3.struct, %choice.then29 ], [ @str.4.struct, %choice.else30 ]
  %ret.pack33 = load { i64, ptr }, ptr %choice.res32, align 8
  ret { i64, ptr } %ret.pack33

ret.dead34:                                       ; No predecessors!
  br label %choice.exit26

loop.header.41:                                   ; preds = %loop.latch.41, %choice.exit26
  %counter.load = load i64, ptr %loop.idx.41, align 8
  br label %loop.body.41

loop.body.41:                                     ; preds = %loop.header.41
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.41, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load36 = load double, ptr %"var.x'", align 8
  %fcmptmp37 = fcmp oge double %var.load36, 1.000000e+01
  br i1 %fcmptmp37, label %choice.then38, label %choice.else39

loop.exit.nat.41:                                 ; No predecessors!
  br label %loop.exit.41

loop.latch.41:                                    ; preds = %choice.exit40
  %step.val = load i64, ptr %loop.step.41, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.exit.41:                                     ; preds = %choice.else39, %loop.exit.nat.41
  store i64 0, ptr %loop.idx.42, align 8
  br label %loop.header.42

choice.then38:                                    ; preds = %loop.body.41
  %var.load41 = load double, ptr %"var.x'", align 8
  %fdivtmp42 = fdiv double %var.load41, 1.000000e+01
  store double %fdivtmp42, ptr %"var.x'", align 8
  %var.load43 = load i64, ptr %"var.e'", align 8
  %addtmp = add i64 %var.load43, 1
  store i64 %addtmp, ptr %"var.e'", align 8
  br label %choice.exit40

choice.else39:                                    ; preds = %loop.body.41
  br label %loop.exit.41

choice.exit40:                                    ; preds = %choice.then38
  br label %loop.latch.41

loop.header.42:                                   ; preds = %loop.latch.42, %loop.exit.41
  %counter.load44 = load i64, ptr %loop.idx.42, align 8
  br label %loop.body.42

loop.body.42:                                     ; preds = %loop.header.42
  %loop.rel.i45 = sub i64 %counter.load44, 0
  store i64 1, ptr %loop.step.42, align 8
  store i64 %loop.rel.i45, ptr %var._i46, align 8
  store i64 %counter.load44, ptr %var._47, align 8
  %var.load48 = load double, ptr %"var.x'", align 8
  %fcmptmp49 = fcmp olt double %var.load48, 1.000000e+00
  br i1 %fcmptmp49, label %choice.then50, label %choice.else51

loop.exit.nat.42:                                 ; No predecessors!
  br label %loop.exit.42

loop.latch.42:                                    ; preds = %choice.exit52
  %step.val55 = load i64, ptr %loop.step.42, align 8
  %loop.next56 = add i64 %counter.load44, %step.val55
  store i64 %loop.next56, ptr %loop.idx.42, align 8
  br label %loop.header.42

loop.exit.42:                                     ; preds = %choice.else51, %loop.exit.nat.42
  %var.load57 = load double, ptr %"var.x'", align 8
  %cast.fptosi = fptosi double %var.load57 to i64
  store i64 %cast.fptosi, ptr %var.ip, align 8
  %var.load58 = load double, ptr %"var.x'", align 8
  %var.load59 = load i64, ptr %var.ip, align 8
  %cast.sitofp = sitofp i64 %var.load59 to double
  %fsubtmp60 = fsub double %var.load58, %cast.sitofp
  store double %fsubtmp60, ptr %"var.f'", align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len61

choice.then50:                                    ; preds = %loop.body.42
  %var.load53 = load double, ptr %"var.x'", align 8
  %fmultmp = fmul double %var.load53, 1.000000e+01
  store double %fmultmp, ptr %"var.x'", align 8
  %var.load54 = load i64, ptr %"var.e'", align 8
  %subtmp = sub i64 %var.load54, 1
  store i64 %subtmp, ptr %"var.e'", align 8
  br label %choice.exit52

choice.else51:                                    ; preds = %loop.body.42
  br label %loop.exit.42

choice.exit52:                                    ; preds = %choice.then50
  br label %loop.latch.42

b.buf.len61:                                      ; preds = %abort.dead, %loop.exit.42
  %arena.cur62 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.ds, align 8
  %b.load = load ptr, ptr %var.ds, align 8
  %var.load63 = load i64, ptr %var.ip, align 8
  %coerce.trunc = trunc i64 %var.load63 to i32
  %addtmp64 = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp64 to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %loop.exit.42
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len61

b.byte_ok:                                        ; preds = %abort.dead65, %b.buf.len61
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len66 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap67 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data68 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len66, %b.cap67
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len61
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead65:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap67, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum69 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf70 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf70, label %str_overflow_abort72, label %b.new.buf.len71

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len71
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data75 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len76 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data75, i64 %b.cur.len76
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len76, 1
  %b.nul = getelementptr i8, ptr %b.cur.data75, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep77, align 8
  store i64 0, ptr %loop.idx.43, align 8
  br label %loop.header.43

b.new.buf.len71:                                  ; preds = %abort.dead73, %b.grow
  %arena.cur74 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %sum69)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data68, i64 %b.len66, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len66
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort72:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %b.new.buf.len71

loop.header.43:                                   ; preds = %loop.latch.43, %b.push_done
  %counter.load78 = load i64, ptr %loop.idx.43, align 8
  %loop.cond = icmp slt i64 %counter.load78, 6
  br i1 %loop.cond, label %loop.body.43, label %loop.exit.nat.43

loop.body.43:                                     ; preds = %loop.header.43
  %loop.rel.i79 = sub i64 %counter.load78, 0
  store i64 1, ptr %loop.step.43, align 8
  store i64 %loop.rel.i79, ptr %var._i80, align 8
  store i64 %counter.load78, ptr %var._81, align 8
  store i64 %counter.load78, ptr %var.i, align 8
  %var.load82 = load double, ptr %"var.f'", align 8
  %fmultmp83 = fmul double %var.load82, 1.000000e+01
  store double %fmultmp83, ptr %"var.f'", align 8
  %var.load84 = load double, ptr %"var.f'", align 8
  %cast.fptosi85 = fptosi double %var.load84 to i64
  store i64 %cast.fptosi85, ptr %var.d, align 8
  %b.load86 = load ptr, ptr %var.ds, align 8
  %var.load87 = load i64, ptr %var.d, align 8
  %coerce.trunc88 = trunc i64 %var.load87 to i32
  %addtmp89 = add i32 48, %coerce.trunc88
  %b.byte.zext90 = zext i32 %addtmp89 to i64
  %b.b.ge091 = icmp sge i64 %b.byte.zext90, 0
  %b.b.le25592 = icmp sle i64 %b.byte.zext90, 255
  %b.byte.range93 = and i1 %b.b.ge091, %b.b.le25592
  br i1 %b.byte.range93, label %b.byte_ok94, label %b.byte_err95

loop.exit.nat.43:                                 ; preds = %loop.header.43
  br label %loop.exit.43

loop.latch.43:                                    ; preds = %b.push_done107
  %step.val134 = load i64, ptr %loop.step.43, align 8
  %loop.next135 = add i64 %counter.load78, %step.val134
  store i64 %loop.next135, ptr %loop.idx.43, align 8
  br label %loop.header.43

loop.exit.43:                                     ; preds = %loop.exit.nat.43
  %var.load136 = load ptr, ptr %var.ds, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 0
  %b.freeze.len137 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 1
  %b.freeze.data138 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok94:                                      ; preds = %abort.dead96, %loop.body.43
  %b.byte.i897 = trunc i64 %b.byte.zext90 to i8
  %b.len98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 0
  %b.len99 = load i64, ptr %b.len98, align 8
  %b.cap100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 2
  %b.cap101 = load i64, ptr %b.cap100, align 8
  %b.data102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 1
  %b.data103 = load ptr, ptr %b.data102, align 8
  %b.needs.grow104 = icmp eq i64 %b.len99, %b.cap101
  br i1 %b.needs.grow104, label %b.grow105, label %b.nogrow106

b.byte_err95:                                     ; preds = %loop.body.43
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %b.byte_ok94

b.grow105:                                        ; preds = %b.byte_ok94
  %b.cap2108 = mul i64 %b.cap101, 2
  %b.cap.small109 = icmp slt i64 %b.cap2108, 16
  %b.new.cap110 = select i1 %b.cap.small109, i64 16, i64 %b.cap2108
  %b.new.buf.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap110, i64 1)
  %sum112 = extractvalue { i64, i1 } %b.new.buf.len111, 0
  %ovf113 = extractvalue { i64, i1 } %b.new.buf.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %b.new.buf.len114

b.nogrow106:                                      ; preds = %b.byte_ok94
  br label %b.push_done107

b.push_done107:                                   ; preds = %b.nogrow106, %b.new.buf.len114
  %b.cur.data122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 1
  %b.cur.data123 = load ptr, ptr %b.cur.data122, align 8
  %b.cur.len124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 0
  %b.cur.len125 = load i64, ptr %b.cur.len124, align 8
  %b.byte.gep126 = getelementptr i8, ptr %b.cur.data123, i64 %b.cur.len125
  store i8 %b.byte.i897, ptr %b.byte.gep126, align 1
  %b.next.len127 = add i64 %b.cur.len125, 1
  %b.nul128 = getelementptr i8, ptr %b.cur.data123, i64 %b.next.len127
  store i8 0, ptr %b.nul128, align 1
  %b.len.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 0
  store i64 %b.next.len127, ptr %b.len.gep129, align 8
  %var.load130 = load double, ptr %"var.f'", align 8
  %var.load131 = load i64, ptr %var.d, align 8
  %cast.sitofp132 = sitofp i64 %var.load131 to double
  %fsubtmp133 = fsub double %var.load130, %cast.sitofp132
  store double %fsubtmp133, ptr %"var.f'", align 8
  br label %loop.latch.43

b.new.buf.len114:                                 ; preds = %abort.dead116, %b.grow105
  %arena.cur117 = call ptr @dva_arena_current()
  %b.new.buf118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 %sum112)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf118, ptr align 1 %b.data103, i64 %b.len99, i1 false)
  %b.grow.nul119 = getelementptr i8, ptr %b.new.buf118, i64 %b.len99
  store i8 0, ptr %b.grow.nul119, align 1
  %b.new.data.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 1
  store ptr %b.new.buf118, ptr %b.new.data.gep120, align 8
  %b.new.cap.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load86, i32 0, i32 2
  store i64 %b.new.cap110, ptr %b.new.cap.gep121, align 8
  br label %b.push_done107

str_overflow_abort115:                            ; preds = %b.grow105
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %b.new.buf.len114

b.freeze.check:                                   ; preds = %loop.exit.43
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data138, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data138, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data138, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len137, 1
  %arena.cur139 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data138, i64 %b.freeze.len137, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len137
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.43
  %b.freeze.data140 = phi ptr [ %b.freeze.data138, %loop.exit.43 ], [ %b.freeze.data138, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur141 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len137, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data140, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load136, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  store i64 0, ptr %"var.m'", align 8
  store i64 0, ptr %loop.idx.44, align 8
  br label %loop.header.44

loop.header.44:                                   ; preds = %loop.latch.44, %b.freeze.done
  %counter.load142 = load i64, ptr %loop.idx.44, align 8
  %loop.cond143 = icmp slt i64 %counter.load142, 6
  br i1 %loop.cond143, label %loop.body.44, label %loop.exit.nat.44

loop.body.44:                                     ; preds = %loop.header.44
  %loop.rel.i144 = sub i64 %counter.load142, 0
  store i64 1, ptr %loop.step.44, align 8
  store i64 %loop.rel.i144, ptr %var._i145, align 8
  store i64 %counter.load142, ptr %var._146, align 8
  store i64 %counter.load142, ptr %var.i, align 8
  %var.load147 = load i64, ptr %"var.m'", align 8
  %multmp = mul i64 %var.load147, 10
  %var.load148 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 0
  %s.read.len149 = load i64, ptr %s.read.len, align 8
  %s.read.len150 = and i64 %s.read.len149, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 1
  %s.read.data151 = load ptr, ptr %s.read.data, align 8
  %var.load152 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load152, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.44:                                 ; preds = %loop.header.44
  br label %loop.exit.44

loop.latch.44:                                    ; preds = %idx_ok
  %step.val156 = load i64, ptr %loop.step.44, align 8
  %loop.next157 = add i64 %counter.load142, %step.val156
  store i64 %loop.next157, ptr %loop.idx.44, align 8
  br label %loop.header.44

loop.exit.44:                                     ; preds = %loop.exit.nat.44
  %var.load158 = load ptr, ptr %var.s, align 8
  %s.read.len159 = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 0
  %s.read.len160 = load i64, ptr %s.read.len159, align 8
  %s.read.len161 = and i64 %s.read.len160, 281474976710655
  %s.read.data162 = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 1
  %s.read.data163 = load ptr, ptr %s.read.data162, align 8
  br i1 false, label %idx_oob166, label %idx_big_check164

idx_big_check:                                    ; preds = %loop.body.44
  %idx.big = icmp sge i64 %var.load152, %s.read.len150
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead153, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data151, i64 %var.load152
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp154 = sub i64 %s.byte.val, 48
  %addtmp155 = add i64 %multmp, %subtmp154
  store i64 %addtmp155, ptr %"var.m'", align 8
  br label %loop.latch.44

idx_oob:                                          ; preds = %idx_big_check, %loop.body.44
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead153:                                    ; No predecessors!
  br label %idx_ok

idx_big_check164:                                 ; preds = %loop.exit.44
  %idx.big167 = icmp sge i64 6, %s.read.len161
  br i1 %idx.big167, label %idx_oob166, label %idx_ok165

idx_ok165:                                        ; preds = %abort.dead168, %idx_big_check164
  %s.byte.gep169 = getelementptr i8, ptr %s.read.data163, i64 6
  %s.byte170 = load i8, ptr %s.byte.gep169, align 1
  %s.byte.val171 = zext i8 %s.byte170 to i64
  %cmptmp = icmp sge i64 %s.byte.val171, 53
  br i1 %cmptmp, label %choice.then172, label %choice.exit173

idx_oob166:                                       ; preds = %idx_big_check164, %loop.exit.44
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead168:                                    ; No predecessors!
  br label %idx_ok165

choice.then172:                                   ; preds = %idx_ok165
  %var.load174 = load i64, ptr %"var.m'", align 8
  %addtmp175 = add i64 %var.load174, 1
  store i64 %addtmp175, ptr %"var.m'", align 8
  br label %choice.exit173

choice.exit173:                                   ; preds = %choice.then172, %idx_ok165
  %var.load176 = load i64, ptr %"var.m'", align 8
  %cmptmp177 = icmp eq i64 %var.load176, 1000000
  br i1 %cmptmp177, label %choice.then178, label %choice.exit179

choice.then178:                                   ; preds = %choice.exit173
  store i64 100000, ptr %"var.m'", align 8
  %var.load180 = load i64, ptr %"var.e'", align 8
  %addtmp181 = add i64 %var.load180, 1
  store i64 %addtmp181, ptr %"var.e'", align 8
  br label %choice.exit179

choice.exit179:                                   ; preds = %choice.then178, %choice.exit173
  %var.load182 = load i64, ptr %"var.m'", align 8
  %call.res = call { i64, ptr } @"str::from_int"(i64 %var.load182)
  %arena.cur183 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.ms, align 8
  %arena.cur184 = call ptr @dva_arena_current()
  %builder.new185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 24)
  %b.data.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new185, i32 0, i32 1
  %b.len.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new185, i32 0, i32 0
  %b.cap.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new185, i32 0, i32 2
  %b.buf.len189 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum190 = extractvalue { i64, i1 } %b.buf.len189, 0
  %ovf191 = extractvalue { i64, i1 } %b.buf.len189, 1
  br i1 %ovf191, label %str_overflow_abort193, label %b.buf.len192

b.buf.len192:                                     ; preds = %abort.dead194, %choice.exit179
  %arena.cur195 = call ptr @dva_arena_current()
  %b.buf196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 %sum190)
  %b.nul0197 = getelementptr i8, ptr %b.buf196, i64 0
  store i8 0, ptr %b.nul0197, align 1
  store i64 0, ptr %b.len.gep187, align 8
  store ptr %b.buf196, ptr %b.data.gep186, align 8
  store i64 32, ptr %b.cap.gep188, align 8
  store ptr %builder.new185, ptr %var.b, align 8
  %var.load198 = load i1, ptr %var.neg, align 1
  br i1 %var.load198, label %choice.then199, label %choice.exit200

str_overflow_abort193:                            ; preds = %choice.exit179
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead194:                                    ; No predecessors!
  br label %b.buf.len192

choice.then199:                                   ; preds = %b.buf.len192
  %b.load201 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 0
  %b.rn.cur.len202 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len202, i64 1)
  %sum203 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf204 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf204, label %str_overflow_abort206, label %b.rn.new.len205

choice.exit200:                                   ; preds = %br.done.45, %b.buf.len192
  %var.load223 = load i64, ptr %"var.e'", align 8
  %cmptmp224 = icmp slt i64 %var.load223, -4
  br i1 %cmptmp224, label %or.46.then, label %or.46.else

b.rn.new.len205:                                  ; preds = %abort.dead207, %choice.then199
  %b.cap208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 2
  %b.cap209 = load i64, ptr %b.cap208, align 8
  %b.need.grow = icmp slt i64 %b.cap209, %sum203
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort206:                            ; preds = %choice.then199
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead207:                                    ; No predecessors!
  br label %b.rn.new.len205

b.grow2:                                          ; preds = %b.rn.new.len205
  %b.cap2210 = mul i64 %b.cap209, 2
  %b.cap.small211 = icmp slt i64 %b.cap2210, 16
  %b.cap.grow = select i1 %b.cap.small211, i64 16, i64 %b.cap2210
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum203
  %b.new.cap212 = select i1 %b.cap.need, i64 %sum203, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 0
  %b.cur.len2213 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 1
  %b.cur.data2214 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap212, i64 1)
  %sum215 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf216 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf216, label %str_overflow_abort218, label %b.new.buf.len2217

b.nogrow2:                                        ; preds = %b.rn.new.len205
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2217
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 1
  %b.rn.data221 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data221, i64 %b.rn.cur.len202
  br i1 true, label %br.b1.45, label %br.c2.45

b.new.buf.len2217:                                ; preds = %abort.dead219, %b.grow2
  %arena.cur220 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 %sum215)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2214, i64 %b.cur.len2213, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2213
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 2
  store i64 %b.new.cap212, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort218:                            ; preds = %b.grow2
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead219:                                    ; No predecessors!
  br label %b.new.buf.len2217

br.b1.45:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.45

br.c2.45:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.45, label %br.c3.45

br.b2.45:                                         ; preds = %br.c2.45
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.45

br.c3.45:                                         ; preds = %br.c2.45
  br i1 true, label %br.b3.45, label %br.b4.45

br.b3.45:                                         ; preds = %br.c3.45
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.45

br.b4.45:                                         ; preds = %br.c3.45
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.45

br.done.45:                                       ; preds = %br.b4.45, %br.b3.45, %br.b2.45, %br.b1.45
  %br.nul = getelementptr i8, ptr %b.rn.data221, i64 %sum203
  store i8 0, ptr %br.nul, align 1
  %b.len.gep222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load201, i32 0, i32 0
  store i64 %sum203, ptr %b.len.gep222, align 8
  br label %choice.exit200

or.46.then:                                       ; preds = %choice.exit200
  br label %or.46.exit

or.46.else:                                       ; preds = %choice.exit200
  %var.load225 = load i64, ptr %"var.e'", align 8
  %cmptmp226 = icmp sge i64 %var.load225, 6
  br label %or.46.exit

or.46.exit:                                       ; preds = %or.46.else, %or.46.then
  %or.46.phi = phi i1 [ %cmptmp224, %or.46.then ], [ %cmptmp226, %or.46.else ]
  br i1 %or.46.phi, label %choice.then227, label %choice.else228

choice.then227:                                   ; preds = %or.46.exit
  %b.load230 = load ptr, ptr %var.b, align 8
  %var.load231 = load ptr, ptr %var.ms, align 8
  %s.read.len232 = getelementptr inbounds { i64, ptr }, ptr %var.load231, i32 0, i32 0
  %s.read.len233 = load i64, ptr %s.read.len232, align 8
  %s.read.len234 = and i64 %s.read.len233, 281474976710655
  %s.read.data235 = getelementptr inbounds { i64, ptr }, ptr %var.load231, i32 0, i32 1
  %s.read.data236 = load ptr, ptr %s.read.data235, align 8
  br i1 false, label %idx_oob239, label %idx_big_check237

choice.else228:                                   ; preds = %or.46.exit
  %var.load393 = load i64, ptr %"var.e'", align 8
  %cmptmp394 = icmp sge i64 %var.load393, 0
  br i1 %cmptmp394, label %choice.then395, label %choice.else396

choice.exit229:                                   ; preds = %choice.exit397, %loop.exit.48
  %var.load733 = load ptr, ptr %var.b, align 8
  %b.freeze.len734 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load733, i32 0, i32 0
  %b.freeze.len735 = load i64, ptr %b.freeze.len734, align 8
  %b.freeze.data736 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load733, i32 0, i32 1
  %b.freeze.data737 = load ptr, ptr %b.freeze.data736, align 8
  %b.freeze.arena738 = call ptr @dva_arena_current()
  %b.freeze.nc.gep739 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena738, i32 0, i32 1
  %b.freeze.nc740 = load i64, ptr %b.freeze.nc.gep739, align 8
  %b.freeze.has.chunk741 = icmp sgt i64 %b.freeze.nc740, 0
  br i1 %b.freeze.has.chunk741, label %b.freeze.check742, label %b.freeze.done744

idx_big_check237:                                 ; preds = %choice.then227
  %idx.big240 = icmp sge i64 0, %s.read.len234
  br i1 %idx.big240, label %idx_oob239, label %idx_ok238

idx_ok238:                                        ; preds = %abort.dead241, %idx_big_check237
  %s.byte.gep242 = getelementptr i8, ptr %s.read.data236, i64 0
  %s.byte243 = load i8, ptr %s.byte.gep242, align 1
  %s.byte.val244 = zext i8 %s.byte243 to i64
  %b.b.ge0245 = icmp sge i64 %s.byte.val244, 0
  %b.b.le255246 = icmp sle i64 %s.byte.val244, 255
  %b.byte.range247 = and i1 %b.b.ge0245, %b.b.le255246
  br i1 %b.byte.range247, label %b.byte_ok248, label %b.byte_err249

idx_oob239:                                       ; preds = %idx_big_check237, %choice.then227
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead241:                                    ; No predecessors!
  br label %idx_ok238

b.byte_ok248:                                     ; preds = %abort.dead250, %idx_ok238
  %b.byte.i8251 = trunc i64 %s.byte.val244 to i8
  %b.len252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load230, i32 0, i32 0
  %b.len253 = load i64, ptr %b.len252, align 8
  %b.cap254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load230, i32 0, i32 2
  %b.cap255 = load i64, ptr %b.cap254, align 8
  %b.data256 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load230, i32 0, i32 1
  %b.data257 = load ptr, ptr %b.data256, align 8
  %b.needs.grow258 = icmp eq i64 %b.len253, %b.cap255
  br i1 %b.needs.grow258, label %b.grow259, label %b.nogrow260

b.byte_err249:                                    ; preds = %idx_ok238
  %12 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead250:                                    ; No predecessors!
  br label %b.byte_ok248

b.grow259:                                        ; preds = %b.byte_ok248
  %b.cap2262 = mul i64 %b.cap255, 2
  %b.cap.small263 = icmp slt i64 %b.cap2262, 16
  %b.new.cap264 = select i1 %b.cap.small263, i64 16, i64 %b.cap2262
  %b.new.buf.len265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap264, i64 1)
  %sum266 = extractvalue { i64, i1 } %b.new.buf.len265, 0
  %ovf267 = extractvalue { i64, i1 } %b.new.buf.len265, 1
  br i1 %ovf267, label %str_overflow_abort269, label %b.new.buf.len268

b.nogrow260:                                      ; preds = %b.byte_ok248
  br label %b.push_done261

b.push_done261:                                   ; preds = %b.nogrow260, %b.new.buf.len268
  %b.cur.data276 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load230, i32 0, i32 1
  %b.cur.data277 = load ptr, ptr %b.cur.data276, align 8
  %b.cur.len278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load230, i32 0, i32 0
  %b.cur.len279 = load i64, ptr %b.cur.len278, align 8
  %b.byte.gep280 = getelementptr i8, ptr %b.cur.data277, i64 %b.cur.len279
  store i8 %b.byte.i8251, ptr %b.byte.gep280, align 1
  %b.next.len281 = add i64 %b.cur.len279, 1
  %b.nul282 = getelementptr i8, ptr %b.cur.data277, i64 %b.next.len281
  store i8 0, ptr %b.nul282, align 1
  %b.len.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load230, i32 0, i32 0
  store i64 %b.next.len281, ptr %b.len.gep283, align 8
  %b.load284 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load284, i32 0, i32 0
  %b.rn.cur.len286 = load i64, ptr %b.rn.cur.len285, align 8
  %b.rn.new.len287 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len286, i64 1)
  %sum288 = extractvalue { i64, i1 } %b.rn.new.len287, 0
  %ovf289 = extractvalue { i64, i1 } %b.rn.new.len287, 1
  br i1 %ovf289, label %str_overflow_abort291, label %b.rn.new.len290

b.new.buf.len268:                                 ; preds = %abort.dead270, %b.grow259
  %arena.cur271 = call ptr @dva_arena_current()
  %b.new.buf272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 %sum266)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf272, ptr align 1 %b.data257, i64 %b.len253, i1 false)
  %b.grow.nul273 = getelementptr i8, ptr %b.new.buf272, i64 %b.len253
  store i8 0, ptr %b.grow.nul273, align 1
  %b.new.data.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load230, i32 0, i32 1
  store ptr %b.new.buf272, ptr %b.new.data.gep274, align 8
  %b.new.cap.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load230, i32 0, i32 2
  store i64 %b.new.cap264, ptr %b.new.cap.gep275, align 8
  br label %b.push_done261

str_overflow_abort269:                            ; preds = %b.grow259
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead270:                                    ; No predecessors!
  br label %b.new.buf.len268

b.rn.new.len290:                                  ; preds = %abort.dead292, %b.push_done261
  %b.cap293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load284, i32 0, i32 2
  %b.cap294 = load i64, ptr %b.cap293, align 8
  %b.need.grow295 = icmp slt i64 %b.cap294, %sum288
  br i1 %b.need.grow295, label %b.grow2296, label %b.nogrow2297

str_overflow_abort291:                            ; preds = %b.push_done261
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead292:                                    ; No predecessors!
  br label %b.rn.new.len290

b.grow2296:                                       ; preds = %b.rn.new.len290
  %b.cap2299 = mul i64 %b.cap294, 2
  %b.cap.small300 = icmp slt i64 %b.cap2299, 16
  %b.cap.grow301 = select i1 %b.cap.small300, i64 16, i64 %b.cap2299
  %b.cap.need302 = icmp slt i64 %b.cap.grow301, %sum288
  %b.new.cap303 = select i1 %b.cap.need302, i64 %sum288, i64 %b.cap.grow301
  %b.cur.len2304 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load284, i32 0, i32 0
  %b.cur.len2305 = load i64, ptr %b.cur.len2304, align 8
  %b.cur.data2306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load284, i32 0, i32 1
  %b.cur.data2307 = load ptr, ptr %b.cur.data2306, align 8
  %b.new.buf.len2308 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap303, i64 1)
  %sum309 = extractvalue { i64, i1 } %b.new.buf.len2308, 0
  %ovf310 = extractvalue { i64, i1 } %b.new.buf.len2308, 1
  br i1 %ovf310, label %str_overflow_abort312, label %b.new.buf.len2311

b.nogrow2297:                                     ; preds = %b.rn.new.len290
  br label %b.grow_done298

b.grow_done298:                                   ; preds = %b.nogrow2297, %b.new.buf.len2311
  %b.rn.data319 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load284, i32 0, i32 1
  %b.rn.data320 = load ptr, ptr %b.rn.data319, align 8
  %b.rn.dst321 = getelementptr i8, ptr %b.rn.data320, i64 %b.rn.cur.len286
  br i1 true, label %br.b1.47, label %br.c2.47

b.new.buf.len2311:                                ; preds = %abort.dead313, %b.grow2296
  %arena.cur314 = call ptr @dva_arena_current()
  %b.new.buf2315 = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 %sum309)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2315, ptr align 1 %b.cur.data2307, i64 %b.cur.len2305, i1 false)
  %b.grow2.nul316 = getelementptr i8, ptr %b.new.buf2315, i64 %b.cur.len2305
  store i8 0, ptr %b.grow2.nul316, align 1
  %b.new.data2.gep317 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load284, i32 0, i32 1
  store ptr %b.new.buf2315, ptr %b.new.data2.gep317, align 8
  %b.new.cap2.gep318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load284, i32 0, i32 2
  store i64 %b.new.cap303, ptr %b.new.cap2.gep318, align 8
  br label %b.grow_done298

str_overflow_abort312:                            ; preds = %b.grow2296
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead313:                                    ; No predecessors!
  br label %b.new.buf.len2311

br.b1.47:                                         ; preds = %b.grow_done298
  store i8 46, ptr %b.rn.dst321, align 1
  br label %br.done.47

br.c2.47:                                         ; preds = %b.grow_done298
  br i1 true, label %br.b2.47, label %br.c3.47

br.b2.47:                                         ; preds = %br.c2.47
  store i8 -64, ptr %b.rn.dst321, align 1
  %br.dst1322 = getelementptr i8, ptr %b.rn.dst321, i64 1
  store i8 -82, ptr %br.dst1322, align 1
  br label %br.done.47

br.c3.47:                                         ; preds = %br.c2.47
  br i1 true, label %br.b3.47, label %br.b4.47

br.b3.47:                                         ; preds = %br.c3.47
  store i8 -32, ptr %b.rn.dst321, align 1
  %br.dst1.3323 = getelementptr i8, ptr %b.rn.dst321, i64 1
  store i8 -128, ptr %br.dst1.3323, align 1
  %br.dst2.3324 = getelementptr i8, ptr %b.rn.dst321, i64 2
  store i8 -82, ptr %br.dst2.3324, align 1
  br label %br.done.47

br.b4.47:                                         ; preds = %br.c3.47
  store i8 -16, ptr %b.rn.dst321, align 1
  %br.dst1.4325 = getelementptr i8, ptr %b.rn.dst321, i64 1
  store i8 -128, ptr %br.dst1.4325, align 1
  %br.dst2.4326 = getelementptr i8, ptr %b.rn.dst321, i64 2
  store i8 -128, ptr %br.dst2.4326, align 1
  %br.dst3.4327 = getelementptr i8, ptr %b.rn.dst321, i64 3
  store i8 -82, ptr %br.dst3.4327, align 1
  br label %br.done.47

br.done.47:                                       ; preds = %br.b4.47, %br.b3.47, %br.b2.47, %br.b1.47
  %br.nul328 = getelementptr i8, ptr %b.rn.data320, i64 %sum288
  store i8 0, ptr %br.nul328, align 1
  %b.len.gep329 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load284, i32 0, i32 0
  store i64 %sum288, ptr %b.len.gep329, align 8
  store i64 1, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.header.48:                                   ; preds = %loop.latch.48, %br.done.47
  %counter.load330 = load i64, ptr %loop.idx.48, align 8
  %loop.cond331 = icmp slt i64 %counter.load330, 6
  br i1 %loop.cond331, label %loop.body.48, label %loop.exit.nat.48

loop.body.48:                                     ; preds = %loop.header.48
  %loop.rel.i332 = sub i64 %counter.load330, 1
  store i64 1, ptr %loop.step.48, align 8
  store i64 %loop.rel.i332, ptr %var._i333, align 8
  store i64 %counter.load330, ptr %var._334, align 8
  store i64 %counter.load330, ptr %var.i, align 8
  %b.load335 = load ptr, ptr %var.b, align 8
  %var.load336 = load ptr, ptr %var.ms, align 8
  %s.read.len337 = getelementptr inbounds { i64, ptr }, ptr %var.load336, i32 0, i32 0
  %s.read.len338 = load i64, ptr %s.read.len337, align 8
  %s.read.len339 = and i64 %s.read.len338, 281474976710655
  %s.read.data340 = getelementptr inbounds { i64, ptr }, ptr %var.load336, i32 0, i32 1
  %s.read.data341 = load ptr, ptr %s.read.data340, align 8
  %var.load342 = load i64, ptr %var.i, align 8
  %idx.neg343 = icmp slt i64 %var.load342, 0
  br i1 %idx.neg343, label %idx_oob346, label %idx_big_check344

loop.exit.nat.48:                                 ; preds = %loop.header.48
  br label %loop.exit.48

loop.latch.48:                                    ; preds = %b.push_done368
  %step.val391 = load i64, ptr %loop.step.48, align 8
  %loop.next392 = add i64 %counter.load330, %step.val391
  store i64 %loop.next392, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.exit.48:                                     ; preds = %loop.exit.nat.48
  br label %choice.exit229

idx_big_check344:                                 ; preds = %loop.body.48
  %idx.big347 = icmp sge i64 %var.load342, %s.read.len339
  br i1 %idx.big347, label %idx_oob346, label %idx_ok345

idx_ok345:                                        ; preds = %abort.dead348, %idx_big_check344
  %s.byte.gep349 = getelementptr i8, ptr %s.read.data341, i64 %var.load342
  %s.byte350 = load i8, ptr %s.byte.gep349, align 1
  %s.byte.val351 = zext i8 %s.byte350 to i64
  %b.b.ge0352 = icmp sge i64 %s.byte.val351, 0
  %b.b.le255353 = icmp sle i64 %s.byte.val351, 255
  %b.byte.range354 = and i1 %b.b.ge0352, %b.b.le255353
  br i1 %b.byte.range354, label %b.byte_ok355, label %b.byte_err356

idx_oob346:                                       ; preds = %idx_big_check344, %loop.body.48
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead348:                                    ; No predecessors!
  br label %idx_ok345

b.byte_ok355:                                     ; preds = %abort.dead357, %idx_ok345
  %b.byte.i8358 = trunc i64 %s.byte.val351 to i8
  %b.len359 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 0
  %b.len360 = load i64, ptr %b.len359, align 8
  %b.cap361 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 2
  %b.cap362 = load i64, ptr %b.cap361, align 8
  %b.data363 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 1
  %b.data364 = load ptr, ptr %b.data363, align 8
  %b.needs.grow365 = icmp eq i64 %b.len360, %b.cap362
  br i1 %b.needs.grow365, label %b.grow366, label %b.nogrow367

b.byte_err356:                                    ; preds = %idx_ok345
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead357:                                    ; No predecessors!
  br label %b.byte_ok355

b.grow366:                                        ; preds = %b.byte_ok355
  %b.cap2369 = mul i64 %b.cap362, 2
  %b.cap.small370 = icmp slt i64 %b.cap2369, 16
  %b.new.cap371 = select i1 %b.cap.small370, i64 16, i64 %b.cap2369
  %b.new.buf.len372 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap371, i64 1)
  %sum373 = extractvalue { i64, i1 } %b.new.buf.len372, 0
  %ovf374 = extractvalue { i64, i1 } %b.new.buf.len372, 1
  br i1 %ovf374, label %str_overflow_abort376, label %b.new.buf.len375

b.nogrow367:                                      ; preds = %b.byte_ok355
  br label %b.push_done368

b.push_done368:                                   ; preds = %b.nogrow367, %b.new.buf.len375
  %b.cur.data383 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 1
  %b.cur.data384 = load ptr, ptr %b.cur.data383, align 8
  %b.cur.len385 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 0
  %b.cur.len386 = load i64, ptr %b.cur.len385, align 8
  %b.byte.gep387 = getelementptr i8, ptr %b.cur.data384, i64 %b.cur.len386
  store i8 %b.byte.i8358, ptr %b.byte.gep387, align 1
  %b.next.len388 = add i64 %b.cur.len386, 1
  %b.nul389 = getelementptr i8, ptr %b.cur.data384, i64 %b.next.len388
  store i8 0, ptr %b.nul389, align 1
  %b.len.gep390 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 0
  store i64 %b.next.len388, ptr %b.len.gep390, align 8
  br label %loop.latch.48

b.new.buf.len375:                                 ; preds = %abort.dead377, %b.grow366
  %arena.cur378 = call ptr @dva_arena_current()
  %b.new.buf379 = call ptr @dva_arena_alloc(ptr %arena.cur378, i64 %sum373)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf379, ptr align 1 %b.data364, i64 %b.len360, i1 false)
  %b.grow.nul380 = getelementptr i8, ptr %b.new.buf379, i64 %b.len360
  store i8 0, ptr %b.grow.nul380, align 1
  %b.new.data.gep381 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 1
  store ptr %b.new.buf379, ptr %b.new.data.gep381, align 8
  %b.new.cap.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load335, i32 0, i32 2
  store i64 %b.new.cap371, ptr %b.new.cap.gep382, align 8
  br label %b.push_done368

str_overflow_abort376:                            ; preds = %b.grow366
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead377:                                    ; No predecessors!
  br label %b.new.buf.len375

choice.then395:                                   ; preds = %choice.else228
  %var.load398 = load i64, ptr %"var.e'", align 8
  %addtmp399 = add i64 %var.load398, 1
  store i64 %addtmp399, ptr %var.en, align 8
  %var.load400 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.49, align 8
  br label %loop.header.49

choice.else396:                                   ; preds = %choice.else228
  %b.load578 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.5.struct, align 8
  %app.str.len579 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 0
  %b.app.cur.len580 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len580, i64 %app.str.len579)
  %sum581 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf582 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf582, label %str_overflow_abort584, label %b.app.new.len583

choice.exit397:                                   ; preds = %loop.exit.54, %choice.exit467
  br label %choice.exit229

loop.header.49:                                   ; preds = %loop.latch.49, %choice.then395
  %counter.load401 = load i64, ptr %loop.idx.49, align 8
  %loop.cond402 = icmp slt i64 %counter.load401, %var.load400
  br i1 %loop.cond402, label %loop.body.49, label %loop.exit.nat.49

loop.body.49:                                     ; preds = %loop.header.49
  %loop.rel.i403 = sub i64 %counter.load401, 0
  store i64 1, ptr %loop.step.49, align 8
  store i64 %loop.rel.i403, ptr %var._i404, align 8
  store i64 %counter.load401, ptr %var._405, align 8
  store i64 %counter.load401, ptr %var.i, align 8
  %b.load406 = load ptr, ptr %var.b, align 8
  %var.load407 = load ptr, ptr %var.ms, align 8
  %s.read.len408 = getelementptr inbounds { i64, ptr }, ptr %var.load407, i32 0, i32 0
  %s.read.len409 = load i64, ptr %s.read.len408, align 8
  %s.read.len410 = and i64 %s.read.len409, 281474976710655
  %s.read.data411 = getelementptr inbounds { i64, ptr }, ptr %var.load407, i32 0, i32 1
  %s.read.data412 = load ptr, ptr %s.read.data411, align 8
  %var.load413 = load i64, ptr %var.i, align 8
  %idx.neg414 = icmp slt i64 %var.load413, 0
  br i1 %idx.neg414, label %idx_oob417, label %idx_big_check415

loop.exit.nat.49:                                 ; preds = %loop.header.49
  br label %loop.exit.49

loop.latch.49:                                    ; preds = %b.push_done439
  %step.val462 = load i64, ptr %loop.step.49, align 8
  %loop.next463 = add i64 %counter.load401, %step.val462
  store i64 %loop.next463, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.exit.49:                                     ; preds = %loop.exit.nat.49
  %var.load464 = load i64, ptr %var.en, align 8
  %cmptmp465 = icmp slt i64 %var.load464, 6
  br i1 %cmptmp465, label %choice.then466, label %choice.exit467

idx_big_check415:                                 ; preds = %loop.body.49
  %idx.big418 = icmp sge i64 %var.load413, %s.read.len410
  br i1 %idx.big418, label %idx_oob417, label %idx_ok416

idx_ok416:                                        ; preds = %abort.dead419, %idx_big_check415
  %s.byte.gep420 = getelementptr i8, ptr %s.read.data412, i64 %var.load413
  %s.byte421 = load i8, ptr %s.byte.gep420, align 1
  %s.byte.val422 = zext i8 %s.byte421 to i64
  %b.b.ge0423 = icmp sge i64 %s.byte.val422, 0
  %b.b.le255424 = icmp sle i64 %s.byte.val422, 255
  %b.byte.range425 = and i1 %b.b.ge0423, %b.b.le255424
  br i1 %b.byte.range425, label %b.byte_ok426, label %b.byte_err427

idx_oob417:                                       ; preds = %idx_big_check415, %loop.body.49
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead419:                                    ; No predecessors!
  br label %idx_ok416

b.byte_ok426:                                     ; preds = %abort.dead428, %idx_ok416
  %b.byte.i8429 = trunc i64 %s.byte.val422 to i8
  %b.len430 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  %b.len431 = load i64, ptr %b.len430, align 8
  %b.cap432 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 2
  %b.cap433 = load i64, ptr %b.cap432, align 8
  %b.data434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  %b.data435 = load ptr, ptr %b.data434, align 8
  %b.needs.grow436 = icmp eq i64 %b.len431, %b.cap433
  br i1 %b.needs.grow436, label %b.grow437, label %b.nogrow438

b.byte_err427:                                    ; preds = %idx_ok416
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead428:                                    ; No predecessors!
  br label %b.byte_ok426

b.grow437:                                        ; preds = %b.byte_ok426
  %b.cap2440 = mul i64 %b.cap433, 2
  %b.cap.small441 = icmp slt i64 %b.cap2440, 16
  %b.new.cap442 = select i1 %b.cap.small441, i64 16, i64 %b.cap2440
  %b.new.buf.len443 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap442, i64 1)
  %sum444 = extractvalue { i64, i1 } %b.new.buf.len443, 0
  %ovf445 = extractvalue { i64, i1 } %b.new.buf.len443, 1
  br i1 %ovf445, label %str_overflow_abort447, label %b.new.buf.len446

b.nogrow438:                                      ; preds = %b.byte_ok426
  br label %b.push_done439

b.push_done439:                                   ; preds = %b.nogrow438, %b.new.buf.len446
  %b.cur.data454 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  %b.cur.data455 = load ptr, ptr %b.cur.data454, align 8
  %b.cur.len456 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  %b.cur.len457 = load i64, ptr %b.cur.len456, align 8
  %b.byte.gep458 = getelementptr i8, ptr %b.cur.data455, i64 %b.cur.len457
  store i8 %b.byte.i8429, ptr %b.byte.gep458, align 1
  %b.next.len459 = add i64 %b.cur.len457, 1
  %b.nul460 = getelementptr i8, ptr %b.cur.data455, i64 %b.next.len459
  store i8 0, ptr %b.nul460, align 1
  %b.len.gep461 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 0
  store i64 %b.next.len459, ptr %b.len.gep461, align 8
  br label %loop.latch.49

b.new.buf.len446:                                 ; preds = %abort.dead448, %b.grow437
  %arena.cur449 = call ptr @dva_arena_current()
  %b.new.buf450 = call ptr @dva_arena_alloc(ptr %arena.cur449, i64 %sum444)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf450, ptr align 1 %b.data435, i64 %b.len431, i1 false)
  %b.grow.nul451 = getelementptr i8, ptr %b.new.buf450, i64 %b.len431
  store i8 0, ptr %b.grow.nul451, align 1
  %b.new.data.gep452 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 1
  store ptr %b.new.buf450, ptr %b.new.data.gep452, align 8
  %b.new.cap.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load406, i32 0, i32 2
  store i64 %b.new.cap442, ptr %b.new.cap.gep453, align 8
  br label %b.push_done439

str_overflow_abort447:                            ; preds = %b.grow437
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead448:                                    ; No predecessors!
  br label %b.new.buf.len446

choice.then466:                                   ; preds = %loop.exit.49
  %b.load468 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len469 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 0
  %b.rn.cur.len470 = load i64, ptr %b.rn.cur.len469, align 8
  %b.rn.new.len471 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len470, i64 1)
  %sum472 = extractvalue { i64, i1 } %b.rn.new.len471, 0
  %ovf473 = extractvalue { i64, i1 } %b.rn.new.len471, 1
  br i1 %ovf473, label %str_overflow_abort475, label %b.rn.new.len474

choice.exit467:                                   ; preds = %loop.exit.51, %loop.exit.49
  br label %choice.exit397

b.rn.new.len474:                                  ; preds = %abort.dead476, %choice.then466
  %b.cap477 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 2
  %b.cap478 = load i64, ptr %b.cap477, align 8
  %b.need.grow479 = icmp slt i64 %b.cap478, %sum472
  br i1 %b.need.grow479, label %b.grow2480, label %b.nogrow2481

str_overflow_abort475:                            ; preds = %choice.then466
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead476:                                    ; No predecessors!
  br label %b.rn.new.len474

b.grow2480:                                       ; preds = %b.rn.new.len474
  %b.cap2483 = mul i64 %b.cap478, 2
  %b.cap.small484 = icmp slt i64 %b.cap2483, 16
  %b.cap.grow485 = select i1 %b.cap.small484, i64 16, i64 %b.cap2483
  %b.cap.need486 = icmp slt i64 %b.cap.grow485, %sum472
  %b.new.cap487 = select i1 %b.cap.need486, i64 %sum472, i64 %b.cap.grow485
  %b.cur.len2488 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 0
  %b.cur.len2489 = load i64, ptr %b.cur.len2488, align 8
  %b.cur.data2490 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 1
  %b.cur.data2491 = load ptr, ptr %b.cur.data2490, align 8
  %b.new.buf.len2492 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap487, i64 1)
  %sum493 = extractvalue { i64, i1 } %b.new.buf.len2492, 0
  %ovf494 = extractvalue { i64, i1 } %b.new.buf.len2492, 1
  br i1 %ovf494, label %str_overflow_abort496, label %b.new.buf.len2495

b.nogrow2481:                                     ; preds = %b.rn.new.len474
  br label %b.grow_done482

b.grow_done482:                                   ; preds = %b.nogrow2481, %b.new.buf.len2495
  %b.rn.data503 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 1
  %b.rn.data504 = load ptr, ptr %b.rn.data503, align 8
  %b.rn.dst505 = getelementptr i8, ptr %b.rn.data504, i64 %b.rn.cur.len470
  br i1 true, label %br.b1.50, label %br.c2.50

b.new.buf.len2495:                                ; preds = %abort.dead497, %b.grow2480
  %arena.cur498 = call ptr @dva_arena_current()
  %b.new.buf2499 = call ptr @dva_arena_alloc(ptr %arena.cur498, i64 %sum493)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2499, ptr align 1 %b.cur.data2491, i64 %b.cur.len2489, i1 false)
  %b.grow2.nul500 = getelementptr i8, ptr %b.new.buf2499, i64 %b.cur.len2489
  store i8 0, ptr %b.grow2.nul500, align 1
  %b.new.data2.gep501 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 1
  store ptr %b.new.buf2499, ptr %b.new.data2.gep501, align 8
  %b.new.cap2.gep502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 2
  store i64 %b.new.cap487, ptr %b.new.cap2.gep502, align 8
  br label %b.grow_done482

str_overflow_abort496:                            ; preds = %b.grow2480
  %23 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead497:                                    ; No predecessors!
  br label %b.new.buf.len2495

br.b1.50:                                         ; preds = %b.grow_done482
  store i8 46, ptr %b.rn.dst505, align 1
  br label %br.done.50

br.c2.50:                                         ; preds = %b.grow_done482
  br i1 true, label %br.b2.50, label %br.c3.50

br.b2.50:                                         ; preds = %br.c2.50
  store i8 -64, ptr %b.rn.dst505, align 1
  %br.dst1506 = getelementptr i8, ptr %b.rn.dst505, i64 1
  store i8 -82, ptr %br.dst1506, align 1
  br label %br.done.50

br.c3.50:                                         ; preds = %br.c2.50
  br i1 true, label %br.b3.50, label %br.b4.50

br.b3.50:                                         ; preds = %br.c3.50
  store i8 -32, ptr %b.rn.dst505, align 1
  %br.dst1.3507 = getelementptr i8, ptr %b.rn.dst505, i64 1
  store i8 -128, ptr %br.dst1.3507, align 1
  %br.dst2.3508 = getelementptr i8, ptr %b.rn.dst505, i64 2
  store i8 -82, ptr %br.dst2.3508, align 1
  br label %br.done.50

br.b4.50:                                         ; preds = %br.c3.50
  store i8 -16, ptr %b.rn.dst505, align 1
  %br.dst1.4509 = getelementptr i8, ptr %b.rn.dst505, i64 1
  store i8 -128, ptr %br.dst1.4509, align 1
  %br.dst2.4510 = getelementptr i8, ptr %b.rn.dst505, i64 2
  store i8 -128, ptr %br.dst2.4510, align 1
  %br.dst3.4511 = getelementptr i8, ptr %b.rn.dst505, i64 3
  store i8 -82, ptr %br.dst3.4511, align 1
  br label %br.done.50

br.done.50:                                       ; preds = %br.b4.50, %br.b3.50, %br.b2.50, %br.b1.50
  %br.nul512 = getelementptr i8, ptr %b.rn.data504, i64 %sum472
  store i8 0, ptr %br.nul512, align 1
  %b.len.gep513 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load468, i32 0, i32 0
  store i64 %sum472, ptr %b.len.gep513, align 8
  %var.load514 = load i64, ptr %var.en, align 8
  store i64 %var.load514, ptr %loop.idx.51, align 8
  br label %loop.header.51

loop.header.51:                                   ; preds = %loop.latch.51, %br.done.50
  %counter.load515 = load i64, ptr %loop.idx.51, align 8
  %loop.cond516 = icmp slt i64 %counter.load515, 6
  br i1 %loop.cond516, label %loop.body.51, label %loop.exit.nat.51

loop.body.51:                                     ; preds = %loop.header.51
  %loop.rel.i517 = sub i64 %counter.load515, %var.load514
  store i64 1, ptr %loop.step.51, align 8
  store i64 %loop.rel.i517, ptr %var._i518, align 8
  store i64 %counter.load515, ptr %var._519, align 8
  store i64 %counter.load515, ptr %var.i, align 8
  %b.load520 = load ptr, ptr %var.b, align 8
  %var.load521 = load ptr, ptr %var.ms, align 8
  %s.read.len522 = getelementptr inbounds { i64, ptr }, ptr %var.load521, i32 0, i32 0
  %s.read.len523 = load i64, ptr %s.read.len522, align 8
  %s.read.len524 = and i64 %s.read.len523, 281474976710655
  %s.read.data525 = getelementptr inbounds { i64, ptr }, ptr %var.load521, i32 0, i32 1
  %s.read.data526 = load ptr, ptr %s.read.data525, align 8
  %var.load527 = load i64, ptr %var.i, align 8
  %idx.neg528 = icmp slt i64 %var.load527, 0
  br i1 %idx.neg528, label %idx_oob531, label %idx_big_check529

loop.exit.nat.51:                                 ; preds = %loop.header.51
  br label %loop.exit.51

loop.latch.51:                                    ; preds = %b.push_done553
  %step.val576 = load i64, ptr %loop.step.51, align 8
  %loop.next577 = add i64 %counter.load515, %step.val576
  store i64 %loop.next577, ptr %loop.idx.51, align 8
  br label %loop.header.51

loop.exit.51:                                     ; preds = %loop.exit.nat.51
  br label %choice.exit467

idx_big_check529:                                 ; preds = %loop.body.51
  %idx.big532 = icmp sge i64 %var.load527, %s.read.len524
  br i1 %idx.big532, label %idx_oob531, label %idx_ok530

idx_ok530:                                        ; preds = %abort.dead533, %idx_big_check529
  %s.byte.gep534 = getelementptr i8, ptr %s.read.data526, i64 %var.load527
  %s.byte535 = load i8, ptr %s.byte.gep534, align 1
  %s.byte.val536 = zext i8 %s.byte535 to i64
  %b.b.ge0537 = icmp sge i64 %s.byte.val536, 0
  %b.b.le255538 = icmp sle i64 %s.byte.val536, 255
  %b.byte.range539 = and i1 %b.b.ge0537, %b.b.le255538
  br i1 %b.byte.range539, label %b.byte_ok540, label %b.byte_err541

idx_oob531:                                       ; preds = %idx_big_check529, %loop.body.51
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead533:                                    ; No predecessors!
  br label %idx_ok530

b.byte_ok540:                                     ; preds = %abort.dead542, %idx_ok530
  %b.byte.i8543 = trunc i64 %s.byte.val536 to i8
  %b.len544 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 0
  %b.len545 = load i64, ptr %b.len544, align 8
  %b.cap546 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 2
  %b.cap547 = load i64, ptr %b.cap546, align 8
  %b.data548 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 1
  %b.data549 = load ptr, ptr %b.data548, align 8
  %b.needs.grow550 = icmp eq i64 %b.len545, %b.cap547
  br i1 %b.needs.grow550, label %b.grow551, label %b.nogrow552

b.byte_err541:                                    ; preds = %idx_ok530
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead542:                                    ; No predecessors!
  br label %b.byte_ok540

b.grow551:                                        ; preds = %b.byte_ok540
  %b.cap2554 = mul i64 %b.cap547, 2
  %b.cap.small555 = icmp slt i64 %b.cap2554, 16
  %b.new.cap556 = select i1 %b.cap.small555, i64 16, i64 %b.cap2554
  %b.new.buf.len557 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap556, i64 1)
  %sum558 = extractvalue { i64, i1 } %b.new.buf.len557, 0
  %ovf559 = extractvalue { i64, i1 } %b.new.buf.len557, 1
  br i1 %ovf559, label %str_overflow_abort561, label %b.new.buf.len560

b.nogrow552:                                      ; preds = %b.byte_ok540
  br label %b.push_done553

b.push_done553:                                   ; preds = %b.nogrow552, %b.new.buf.len560
  %b.cur.data568 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 1
  %b.cur.data569 = load ptr, ptr %b.cur.data568, align 8
  %b.cur.len570 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 0
  %b.cur.len571 = load i64, ptr %b.cur.len570, align 8
  %b.byte.gep572 = getelementptr i8, ptr %b.cur.data569, i64 %b.cur.len571
  store i8 %b.byte.i8543, ptr %b.byte.gep572, align 1
  %b.next.len573 = add i64 %b.cur.len571, 1
  %b.nul574 = getelementptr i8, ptr %b.cur.data569, i64 %b.next.len573
  store i8 0, ptr %b.nul574, align 1
  %b.len.gep575 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 0
  store i64 %b.next.len573, ptr %b.len.gep575, align 8
  br label %loop.latch.51

b.new.buf.len560:                                 ; preds = %abort.dead562, %b.grow551
  %arena.cur563 = call ptr @dva_arena_current()
  %b.new.buf564 = call ptr @dva_arena_alloc(ptr %arena.cur563, i64 %sum558)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf564, ptr align 1 %b.data549, i64 %b.len545, i1 false)
  %b.grow.nul565 = getelementptr i8, ptr %b.new.buf564, i64 %b.len545
  store i8 0, ptr %b.grow.nul565, align 1
  %b.new.data.gep566 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 1
  store ptr %b.new.buf564, ptr %b.new.data.gep566, align 8
  %b.new.cap.gep567 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load520, i32 0, i32 2
  store i64 %b.new.cap556, ptr %b.new.cap.gep567, align 8
  br label %b.push_done553

str_overflow_abort561:                            ; preds = %b.grow551
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead562:                                    ; No predecessors!
  br label %b.new.buf.len560

b.app.new.len583:                                 ; preds = %abort.dead585, %choice.else396
  %b.cap586 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 2
  %b.cap587 = load i64, ptr %b.cap586, align 8
  %b.need.grow588 = icmp slt i64 %b.cap587, %sum581
  br i1 %b.need.grow588, label %b.grow2589, label %b.nogrow2590

str_overflow_abort584:                            ; preds = %choice.else396
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead585:                                    ; No predecessors!
  br label %b.app.new.len583

b.grow2589:                                       ; preds = %b.app.new.len583
  %b.cap2592 = mul i64 %b.cap587, 2
  %b.cap.small593 = icmp slt i64 %b.cap2592, 16
  %b.cap.grow594 = select i1 %b.cap.small593, i64 16, i64 %b.cap2592
  %b.cap.need595 = icmp slt i64 %b.cap.grow594, %sum581
  %b.new.cap596 = select i1 %b.cap.need595, i64 %sum581, i64 %b.cap.grow594
  %b.cur.len2597 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 0
  %b.cur.len2598 = load i64, ptr %b.cur.len2597, align 8
  %b.cur.data2599 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 1
  %b.cur.data2600 = load ptr, ptr %b.cur.data2599, align 8
  %b.new.buf.len2601 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap596, i64 1)
  %sum602 = extractvalue { i64, i1 } %b.new.buf.len2601, 0
  %ovf603 = extractvalue { i64, i1 } %b.new.buf.len2601, 1
  br i1 %ovf603, label %str_overflow_abort605, label %b.new.buf.len2604

b.nogrow2590:                                     ; preds = %b.app.new.len583
  br label %b.grow_done591

b.grow_done591:                                   ; preds = %b.nogrow2590, %b.new.buf.len2604
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 1
  %b.app.data612 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data612, i64 %b.app.cur.len580
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len579, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data612, i64 %sum581
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep613 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 0
  store i64 %sum581, ptr %b.len.gep613, align 8
  %var.load614 = load i64, ptr %"var.e'", align 8
  %subtmp615 = sub i64 0, %var.load614
  %subtmp616 = sub i64 %subtmp615, 1
  store i64 0, ptr %loop.idx.52, align 8
  br label %loop.header.52

b.new.buf.len2604:                                ; preds = %abort.dead606, %b.grow2589
  %arena.cur607 = call ptr @dva_arena_current()
  %b.new.buf2608 = call ptr @dva_arena_alloc(ptr %arena.cur607, i64 %sum602)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2608, ptr align 1 %b.cur.data2600, i64 %b.cur.len2598, i1 false)
  %b.grow2.nul609 = getelementptr i8, ptr %b.new.buf2608, i64 %b.cur.len2598
  store i8 0, ptr %b.grow2.nul609, align 1
  %b.new.data2.gep610 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 1
  store ptr %b.new.buf2608, ptr %b.new.data2.gep610, align 8
  %b.new.cap2.gep611 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 2
  store i64 %b.new.cap596, ptr %b.new.cap2.gep611, align 8
  br label %b.grow_done591

str_overflow_abort605:                            ; preds = %b.grow2589
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead606:                                    ; No predecessors!
  br label %b.new.buf.len2604

loop.header.52:                                   ; preds = %loop.latch.52, %b.grow_done591
  %counter.load617 = load i64, ptr %loop.idx.52, align 8
  %loop.cond618 = icmp slt i64 %counter.load617, %subtmp616
  br i1 %loop.cond618, label %loop.body.52, label %loop.exit.nat.52

loop.body.52:                                     ; preds = %loop.header.52
  %loop.rel.i619 = sub i64 %counter.load617, 0
  store i64 1, ptr %loop.step.52, align 8
  store i64 %loop.rel.i619, ptr %var._i620, align 8
  store i64 %counter.load617, ptr %var._621, align 8
  store i64 %counter.load617, ptr %var.i, align 8
  %b.load622 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len623 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load622, i32 0, i32 0
  %b.rn.cur.len624 = load i64, ptr %b.rn.cur.len623, align 8
  %b.rn.new.len625 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len624, i64 1)
  %sum626 = extractvalue { i64, i1 } %b.rn.new.len625, 0
  %ovf627 = extractvalue { i64, i1 } %b.rn.new.len625, 1
  br i1 %ovf627, label %str_overflow_abort629, label %b.rn.new.len628

loop.exit.nat.52:                                 ; preds = %loop.header.52
  br label %loop.exit.52

loop.latch.52:                                    ; preds = %br.done.53
  %step.val668 = load i64, ptr %loop.step.52, align 8
  %loop.next669 = add i64 %counter.load617, %step.val668
  store i64 %loop.next669, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.exit.52:                                     ; preds = %loop.exit.nat.52
  store i64 0, ptr %loop.idx.54, align 8
  br label %loop.header.54

b.rn.new.len628:                                  ; preds = %abort.dead630, %loop.body.52
  %b.cap631 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load622, i32 0, i32 2
  %b.cap632 = load i64, ptr %b.cap631, align 8
  %b.need.grow633 = icmp slt i64 %b.cap632, %sum626
  br i1 %b.need.grow633, label %b.grow2634, label %b.nogrow2635

str_overflow_abort629:                            ; preds = %loop.body.52
  %29 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead630:                                    ; No predecessors!
  br label %b.rn.new.len628

b.grow2634:                                       ; preds = %b.rn.new.len628
  %b.cap2637 = mul i64 %b.cap632, 2
  %b.cap.small638 = icmp slt i64 %b.cap2637, 16
  %b.cap.grow639 = select i1 %b.cap.small638, i64 16, i64 %b.cap2637
  %b.cap.need640 = icmp slt i64 %b.cap.grow639, %sum626
  %b.new.cap641 = select i1 %b.cap.need640, i64 %sum626, i64 %b.cap.grow639
  %b.cur.len2642 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load622, i32 0, i32 0
  %b.cur.len2643 = load i64, ptr %b.cur.len2642, align 8
  %b.cur.data2644 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load622, i32 0, i32 1
  %b.cur.data2645 = load ptr, ptr %b.cur.data2644, align 8
  %b.new.buf.len2646 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap641, i64 1)
  %sum647 = extractvalue { i64, i1 } %b.new.buf.len2646, 0
  %ovf648 = extractvalue { i64, i1 } %b.new.buf.len2646, 1
  br i1 %ovf648, label %str_overflow_abort650, label %b.new.buf.len2649

b.nogrow2635:                                     ; preds = %b.rn.new.len628
  br label %b.grow_done636

b.grow_done636:                                   ; preds = %b.nogrow2635, %b.new.buf.len2649
  %b.rn.data657 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load622, i32 0, i32 1
  %b.rn.data658 = load ptr, ptr %b.rn.data657, align 8
  %b.rn.dst659 = getelementptr i8, ptr %b.rn.data658, i64 %b.rn.cur.len624
  br i1 true, label %br.b1.53, label %br.c2.53

b.new.buf.len2649:                                ; preds = %abort.dead651, %b.grow2634
  %arena.cur652 = call ptr @dva_arena_current()
  %b.new.buf2653 = call ptr @dva_arena_alloc(ptr %arena.cur652, i64 %sum647)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2653, ptr align 1 %b.cur.data2645, i64 %b.cur.len2643, i1 false)
  %b.grow2.nul654 = getelementptr i8, ptr %b.new.buf2653, i64 %b.cur.len2643
  store i8 0, ptr %b.grow2.nul654, align 1
  %b.new.data2.gep655 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load622, i32 0, i32 1
  store ptr %b.new.buf2653, ptr %b.new.data2.gep655, align 8
  %b.new.cap2.gep656 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load622, i32 0, i32 2
  store i64 %b.new.cap641, ptr %b.new.cap2.gep656, align 8
  br label %b.grow_done636

str_overflow_abort650:                            ; preds = %b.grow2634
  %30 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead651:                                    ; No predecessors!
  br label %b.new.buf.len2649

br.b1.53:                                         ; preds = %b.grow_done636
  store i8 48, ptr %b.rn.dst659, align 1
  br label %br.done.53

br.c2.53:                                         ; preds = %b.grow_done636
  br i1 true, label %br.b2.53, label %br.c3.53

br.b2.53:                                         ; preds = %br.c2.53
  store i8 -64, ptr %b.rn.dst659, align 1
  %br.dst1660 = getelementptr i8, ptr %b.rn.dst659, i64 1
  store i8 -80, ptr %br.dst1660, align 1
  br label %br.done.53

br.c3.53:                                         ; preds = %br.c2.53
  br i1 true, label %br.b3.53, label %br.b4.53

br.b3.53:                                         ; preds = %br.c3.53
  store i8 -32, ptr %b.rn.dst659, align 1
  %br.dst1.3661 = getelementptr i8, ptr %b.rn.dst659, i64 1
  store i8 -128, ptr %br.dst1.3661, align 1
  %br.dst2.3662 = getelementptr i8, ptr %b.rn.dst659, i64 2
  store i8 -80, ptr %br.dst2.3662, align 1
  br label %br.done.53

br.b4.53:                                         ; preds = %br.c3.53
  store i8 -16, ptr %b.rn.dst659, align 1
  %br.dst1.4663 = getelementptr i8, ptr %b.rn.dst659, i64 1
  store i8 -128, ptr %br.dst1.4663, align 1
  %br.dst2.4664 = getelementptr i8, ptr %b.rn.dst659, i64 2
  store i8 -128, ptr %br.dst2.4664, align 1
  %br.dst3.4665 = getelementptr i8, ptr %b.rn.dst659, i64 3
  store i8 -80, ptr %br.dst3.4665, align 1
  br label %br.done.53

br.done.53:                                       ; preds = %br.b4.53, %br.b3.53, %br.b2.53, %br.b1.53
  %br.nul666 = getelementptr i8, ptr %b.rn.data658, i64 %sum626
  store i8 0, ptr %br.nul666, align 1
  %b.len.gep667 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load622, i32 0, i32 0
  store i64 %sum626, ptr %b.len.gep667, align 8
  br label %loop.latch.52

loop.header.54:                                   ; preds = %loop.latch.54, %loop.exit.52
  %counter.load670 = load i64, ptr %loop.idx.54, align 8
  %loop.cond671 = icmp slt i64 %counter.load670, 6
  br i1 %loop.cond671, label %loop.body.54, label %loop.exit.nat.54

loop.body.54:                                     ; preds = %loop.header.54
  %loop.rel.i672 = sub i64 %counter.load670, 0
  store i64 1, ptr %loop.step.54, align 8
  store i64 %loop.rel.i672, ptr %var._i673, align 8
  store i64 %counter.load670, ptr %var._674, align 8
  store i64 %counter.load670, ptr %var.i, align 8
  %b.load675 = load ptr, ptr %var.b, align 8
  %var.load676 = load ptr, ptr %var.ms, align 8
  %s.read.len677 = getelementptr inbounds { i64, ptr }, ptr %var.load676, i32 0, i32 0
  %s.read.len678 = load i64, ptr %s.read.len677, align 8
  %s.read.len679 = and i64 %s.read.len678, 281474976710655
  %s.read.data680 = getelementptr inbounds { i64, ptr }, ptr %var.load676, i32 0, i32 1
  %s.read.data681 = load ptr, ptr %s.read.data680, align 8
  %var.load682 = load i64, ptr %var.i, align 8
  %idx.neg683 = icmp slt i64 %var.load682, 0
  br i1 %idx.neg683, label %idx_oob686, label %idx_big_check684

loop.exit.nat.54:                                 ; preds = %loop.header.54
  br label %loop.exit.54

loop.latch.54:                                    ; preds = %b.push_done708
  %step.val731 = load i64, ptr %loop.step.54, align 8
  %loop.next732 = add i64 %counter.load670, %step.val731
  store i64 %loop.next732, ptr %loop.idx.54, align 8
  br label %loop.header.54

loop.exit.54:                                     ; preds = %loop.exit.nat.54
  br label %choice.exit397

idx_big_check684:                                 ; preds = %loop.body.54
  %idx.big687 = icmp sge i64 %var.load682, %s.read.len679
  br i1 %idx.big687, label %idx_oob686, label %idx_ok685

idx_ok685:                                        ; preds = %abort.dead688, %idx_big_check684
  %s.byte.gep689 = getelementptr i8, ptr %s.read.data681, i64 %var.load682
  %s.byte690 = load i8, ptr %s.byte.gep689, align 1
  %s.byte.val691 = zext i8 %s.byte690 to i64
  %b.b.ge0692 = icmp sge i64 %s.byte.val691, 0
  %b.b.le255693 = icmp sle i64 %s.byte.val691, 255
  %b.byte.range694 = and i1 %b.b.ge0692, %b.b.le255693
  br i1 %b.byte.range694, label %b.byte_ok695, label %b.byte_err696

idx_oob686:                                       ; preds = %idx_big_check684, %loop.body.54
  %31 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead688:                                    ; No predecessors!
  br label %idx_ok685

b.byte_ok695:                                     ; preds = %abort.dead697, %idx_ok685
  %b.byte.i8698 = trunc i64 %s.byte.val691 to i8
  %b.len699 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 0
  %b.len700 = load i64, ptr %b.len699, align 8
  %b.cap701 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 2
  %b.cap702 = load i64, ptr %b.cap701, align 8
  %b.data703 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 1
  %b.data704 = load ptr, ptr %b.data703, align 8
  %b.needs.grow705 = icmp eq i64 %b.len700, %b.cap702
  br i1 %b.needs.grow705, label %b.grow706, label %b.nogrow707

b.byte_err696:                                    ; preds = %idx_ok685
  %32 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead697:                                    ; No predecessors!
  br label %b.byte_ok695

b.grow706:                                        ; preds = %b.byte_ok695
  %b.cap2709 = mul i64 %b.cap702, 2
  %b.cap.small710 = icmp slt i64 %b.cap2709, 16
  %b.new.cap711 = select i1 %b.cap.small710, i64 16, i64 %b.cap2709
  %b.new.buf.len712 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap711, i64 1)
  %sum713 = extractvalue { i64, i1 } %b.new.buf.len712, 0
  %ovf714 = extractvalue { i64, i1 } %b.new.buf.len712, 1
  br i1 %ovf714, label %str_overflow_abort716, label %b.new.buf.len715

b.nogrow707:                                      ; preds = %b.byte_ok695
  br label %b.push_done708

b.push_done708:                                   ; preds = %b.nogrow707, %b.new.buf.len715
  %b.cur.data723 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 1
  %b.cur.data724 = load ptr, ptr %b.cur.data723, align 8
  %b.cur.len725 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 0
  %b.cur.len726 = load i64, ptr %b.cur.len725, align 8
  %b.byte.gep727 = getelementptr i8, ptr %b.cur.data724, i64 %b.cur.len726
  store i8 %b.byte.i8698, ptr %b.byte.gep727, align 1
  %b.next.len728 = add i64 %b.cur.len726, 1
  %b.nul729 = getelementptr i8, ptr %b.cur.data724, i64 %b.next.len728
  store i8 0, ptr %b.nul729, align 1
  %b.len.gep730 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 0
  store i64 %b.next.len728, ptr %b.len.gep730, align 8
  br label %loop.latch.54

b.new.buf.len715:                                 ; preds = %abort.dead717, %b.grow706
  %arena.cur718 = call ptr @dva_arena_current()
  %b.new.buf719 = call ptr @dva_arena_alloc(ptr %arena.cur718, i64 %sum713)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf719, ptr align 1 %b.data704, i64 %b.len700, i1 false)
  %b.grow.nul720 = getelementptr i8, ptr %b.new.buf719, i64 %b.len700
  store i8 0, ptr %b.grow.nul720, align 1
  %b.new.data.gep721 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 1
  store ptr %b.new.buf719, ptr %b.new.data.gep721, align 8
  %b.new.cap.gep722 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 2
  store i64 %b.new.cap711, ptr %b.new.cap.gep722, align 8
  br label %b.push_done708

str_overflow_abort716:                            ; preds = %b.grow706
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead717:                                    ; No predecessors!
  br label %b.new.buf.len715

b.freeze.check742:                                ; preds = %choice.exit229
  %b.freeze.last.idx745 = sub i64 %b.freeze.nc740, 1
  %b.freeze.chunks.gep746 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena738, i32 0, i32 3
  %b.freeze.chunk.slot747 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep746, i64 0, i64 %b.freeze.last.idx745
  %b.freeze.last.chunk748 = load ptr, ptr %b.freeze.chunk.slot747, align 8
  %b.freeze.off.gep749 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena738, i32 0, i32 2
  %b.freeze.off750 = load i64, ptr %b.freeze.off.gep749, align 8
  %b.freeze.bump751 = getelementptr i8, ptr %b.freeze.last.chunk748, i64 %b.freeze.off750
  %b.freeze.cap.gep752 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena738, i32 0, i32 0
  %b.freeze.cap753 = load i64, ptr %b.freeze.cap.gep752, align 8
  %b.freeze.chunk.end754 = getelementptr i8, ptr %b.freeze.last.chunk748, i64 %b.freeze.cap753
  %b.freeze.ge.chunk755 = icmp uge ptr %b.freeze.data737, %b.freeze.last.chunk748
  %b.freeze.lt.end756 = icmp ult ptr %b.freeze.data737, %b.freeze.chunk.end754
  %b.freeze.in.chunk757 = and i1 %b.freeze.ge.chunk755, %b.freeze.lt.end756
  %b.freeze.ge.bump758 = icmp uge ptr %b.freeze.data737, %b.freeze.bump751
  %b.freeze.reaped759 = and i1 %b.freeze.in.chunk757, %b.freeze.ge.bump758
  br i1 %b.freeze.reaped759, label %b.freeze.copy743, label %b.freeze.done744

b.freeze.copy743:                                 ; preds = %b.freeze.check742
  %b.freeze.alen760 = add i64 %b.freeze.len735, 1
  %arena.cur761 = call ptr @dva_arena_current()
  %b.freeze.fresh762 = call ptr @dva_arena_alloc(ptr %arena.cur761, i64 %b.freeze.alen760)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh762, ptr align 1 %b.freeze.data737, i64 %b.freeze.len735, i1 false)
  %b.freeze.nul763 = getelementptr i8, ptr %b.freeze.fresh762, i64 %b.freeze.len735
  store i8 0, ptr %b.freeze.nul763, align 1
  br label %b.freeze.done744

b.freeze.done744:                                 ; preds = %b.freeze.copy743, %b.freeze.check742, %choice.exit229
  %b.freeze.data764 = phi ptr [ %b.freeze.data737, %choice.exit229 ], [ %b.freeze.data737, %b.freeze.check742 ], [ %b.freeze.fresh762, %b.freeze.copy743 ]
  %arena.cur765 = call ptr @dva_arena_current()
  %builder.freeze766 = call ptr @dva_arena_alloc(ptr %arena.cur765, i64 16)
  %str.build.len.gep767 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze766, i32 0, i32 0
  store i64 %b.freeze.len735, ptr %str.build.len.gep767, align 8
  %str.build.data.gep768 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze766, i32 0, i32 1
  store ptr %b.freeze.data764, ptr %str.build.data.gep768, align 8
  %b.freeze.rst.len769 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load733, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len769, align 8
  %b.freeze.rst.data770 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load733, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data770, align 8
  %b.freeze.rst.cap771 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load733, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap771, align 8
  store ptr %builder.freeze766, ptr %var.full, align 8
  store i64 -1, ptr %"var.dot_pos'", align 8
  %var.load772 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load772, i32 0, i32 0
  %str.len.query773 = load i64, ptr %str.len.query, align 8
  %str.len.query774 = and i64 %str.len.query773, 281474976710655
  %str.tag = lshr i64 %str.len.query773, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead776, %tag.slow_check, %tag.gen_check, %b.freeze.done744
  store i64 0, ptr %loop.idx.55, align 8
  br label %loop.header.55

tag.gen_check:                                    ; preds = %b.freeze.done744
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur775 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur775, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %34 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead776:                                    ; No predecessors!
  br label %str_ok

loop.header.55:                                   ; preds = %loop.latch.55, %str_ok
  %counter.load777 = load i64, ptr %loop.idx.55, align 8
  %loop.cond778 = icmp slt i64 %counter.load777, %str.len.query774
  br i1 %loop.cond778, label %loop.body.55, label %loop.exit.nat.55

loop.body.55:                                     ; preds = %loop.header.55
  %loop.rel.i779 = sub i64 %counter.load777, 0
  store i64 1, ptr %loop.step.55, align 8
  store i64 %loop.rel.i779, ptr %var._i780, align 8
  store i64 %counter.load777, ptr %var._781, align 8
  store i64 %counter.load777, ptr %var.i, align 8
  %var.load782 = load ptr, ptr %var.full, align 8
  %s.read.len783 = getelementptr inbounds { i64, ptr }, ptr %var.load782, i32 0, i32 0
  %s.read.len784 = load i64, ptr %s.read.len783, align 8
  %s.read.len785 = and i64 %s.read.len784, 281474976710655
  %s.read.data786 = getelementptr inbounds { i64, ptr }, ptr %var.load782, i32 0, i32 1
  %s.read.data787 = load ptr, ptr %s.read.data786, align 8
  %var.load788 = load i64, ptr %var.i, align 8
  %idx.neg789 = icmp slt i64 %var.load788, 0
  br i1 %idx.neg789, label %idx_oob792, label %idx_big_check790

loop.exit.nat.55:                                 ; preds = %loop.header.55
  br label %loop.exit.55

loop.latch.55:                                    ; preds = %choice.exit800
  %step.val802 = load i64, ptr %loop.step.55, align 8
  %loop.next803 = add i64 %counter.load777, %step.val802
  store i64 %loop.next803, ptr %loop.idx.55, align 8
  br label %loop.header.55

loop.exit.55:                                     ; preds = %loop.exit.nat.55
  %var.load804 = load ptr, ptr %var.full, align 8
  %str.len.query805 = getelementptr inbounds { i64, ptr }, ptr %var.load804, i32 0, i32 0
  %str.len.query806 = load i64, ptr %str.len.query805, align 8
  %str.len.query807 = and i64 %str.len.query806, 281474976710655
  %str.tag808 = lshr i64 %str.len.query806, 48
  %tag.immortal810 = icmp eq i64 %str.tag808, 0
  br i1 %tag.immortal810, label %str_ok809, label %tag.gen_check811

idx_big_check790:                                 ; preds = %loop.body.55
  %idx.big793 = icmp sge i64 %var.load788, %s.read.len785
  br i1 %idx.big793, label %idx_oob792, label %idx_ok791

idx_ok791:                                        ; preds = %abort.dead794, %idx_big_check790
  %s.byte.gep795 = getelementptr i8, ptr %s.read.data787, i64 %var.load788
  %s.byte796 = load i8, ptr %s.byte.gep795, align 1
  %s.byte.val797 = zext i8 %s.byte796 to i64
  %cmptmp798 = icmp eq i64 %s.byte.val797, 46
  br i1 %cmptmp798, label %choice.then799, label %choice.exit800

idx_oob792:                                       ; preds = %idx_big_check790, %loop.body.55
  %35 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead794:                                    ; No predecessors!
  br label %idx_ok791

choice.then799:                                   ; preds = %idx_ok791
  %var.load801 = load i64, ptr %var.i, align 8
  store i64 %var.load801, ptr %"var.dot_pos'", align 8
  br label %choice.exit800

choice.exit800:                                   ; preds = %choice.then799, %idx_ok791
  br label %loop.latch.55

str_ok809:                                        ; preds = %abort.dead818, %tag.slow_check812, %tag.gen_check811, %loop.exit.55
  store i64 %str.len.query807, ptr %var.len, align 8
  %var.load819 = load i64, ptr %var.len, align 8
  store i64 %var.load819, ptr %"var.end'", align 8
  %var.load820 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp821 = icmp sge i64 %var.load820, 0
  br i1 %cmptmp821, label %choice.then822, label %choice.exit823

tag.gen_check811:                                 ; preds = %loop.exit.55
  %active.gen814 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok815 = icmp eq i64 %str.tag808, %active.gen814
  br i1 %tag.fast.ok815, label %str_ok809, label %tag.slow_check812

tag.slow_check812:                                ; preds = %tag.gen_check811
  %arena.cur816 = call ptr @dva_arena_current()
  %tag.valid817 = call i1 @dva_arena_validate_tag(ptr %arena.cur816, i64 %str.tag808)
  br i1 %tag.valid817, label %str_ok809, label %tag.stale813

tag.stale813:                                     ; preds = %tag.slow_check812
  %36 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead818:                                    ; No predecessors!
  br label %str_ok809

choice.then822:                                   ; preds = %str_ok809
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

choice.exit823:                                   ; preds = %choice.exit862, %str_ok809
  %var.load864 = load ptr, ptr %var.full, align 8
  %s.read.len865 = getelementptr inbounds { i64, ptr }, ptr %var.load864, i32 0, i32 0
  %s.read.len866 = load i64, ptr %s.read.len865, align 8
  %s.read.len867 = and i64 %s.read.len866, 281474976710655
  %s.read.data868 = getelementptr inbounds { i64, ptr }, ptr %var.load864, i32 0, i32 1
  %s.read.data869 = load ptr, ptr %s.read.data868, align 8
  %var.load870 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len867, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len867
  %final.start = select i1 %start.gt.len, i64 %s.read.len867, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load870, 0
  %rel.end = add i64 %s.read.len867, %var.load870
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load870
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len867
  %final.end = select i1 %end.gt.len, i64 %s.read.len867, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data869, i64 %final.start
  %arena.cur871 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur871, i64 16)
  %str.build.len.gep872 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep872, align 8
  %str.build.data.gep873 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep873, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load874 = load i64, ptr %"var.e'", align 8
  %cmptmp875 = icmp slt i64 %var.load874, 0
  br i1 %cmptmp875, label %choice.then876, label %choice.else877

loop.header.56:                                   ; preds = %loop.latch.56, %choice.then822
  %counter.load824 = load i64, ptr %loop.idx.56, align 8
  br label %loop.body.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i825 = sub i64 %counter.load824, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i825, ptr %var._i826, align 8
  store i64 %counter.load824, ptr %var._827, align 8
  %var.load828 = load i64, ptr %"var.end'", align 8
  %subtmp829 = sub i64 %var.load828, 1
  %var.load830 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp831 = icmp sgt i64 %subtmp829, %var.load830
  br i1 %cmptmp831, label %and.57.then, label %and.57.else

loop.exit.nat.56:                                 ; No predecessors!
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit852
  %step.val855 = load i64, ptr %loop.step.56, align 8
  %loop.next856 = add i64 %counter.load824, %step.val855
  store i64 %loop.next856, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %choice.else851, %loop.exit.nat.56
  %var.load857 = load i64, ptr %"var.end'", align 8
  %subtmp858 = sub i64 %var.load857, 1
  %var.load859 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp860 = icmp eq i64 %subtmp858, %var.load859
  br i1 %cmptmp860, label %choice.then861, label %choice.exit862

and.57.then:                                      ; preds = %loop.body.56
  %var.load832 = load ptr, ptr %var.full, align 8
  %s.read.len833 = getelementptr inbounds { i64, ptr }, ptr %var.load832, i32 0, i32 0
  %s.read.len834 = load i64, ptr %s.read.len833, align 8
  %s.read.len835 = and i64 %s.read.len834, 281474976710655
  %s.read.data836 = getelementptr inbounds { i64, ptr }, ptr %var.load832, i32 0, i32 1
  %s.read.data837 = load ptr, ptr %s.read.data836, align 8
  %var.load838 = load i64, ptr %"var.end'", align 8
  %subtmp839 = sub i64 %var.load838, 1
  %idx.neg840 = icmp slt i64 %subtmp839, 0
  br i1 %idx.neg840, label %idx_oob843, label %idx_big_check841

and.57.else:                                      ; preds = %loop.body.56
  br label %and.57.exit

and.57.exit:                                      ; preds = %and.57.else, %idx_ok842
  %and.57.phi = phi i1 [ %cmptmp849, %idx_ok842 ], [ %cmptmp831, %and.57.else ]
  br i1 %and.57.phi, label %choice.then850, label %choice.else851

idx_big_check841:                                 ; preds = %and.57.then
  %idx.big844 = icmp sge i64 %subtmp839, %s.read.len835
  br i1 %idx.big844, label %idx_oob843, label %idx_ok842

idx_ok842:                                        ; preds = %abort.dead845, %idx_big_check841
  %s.byte.gep846 = getelementptr i8, ptr %s.read.data837, i64 %subtmp839
  %s.byte847 = load i8, ptr %s.byte.gep846, align 1
  %s.byte.val848 = zext i8 %s.byte847 to i64
  %cmptmp849 = icmp eq i64 %s.byte.val848, 48
  br label %and.57.exit

idx_oob843:                                       ; preds = %idx_big_check841, %and.57.then
  %37 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead845:                                    ; No predecessors!
  br label %idx_ok842

choice.then850:                                   ; preds = %and.57.exit
  %var.load853 = load i64, ptr %"var.end'", align 8
  %subtmp854 = sub i64 %var.load853, 1
  store i64 %subtmp854, ptr %"var.end'", align 8
  br label %choice.exit852

choice.else851:                                   ; preds = %and.57.exit
  br label %loop.exit.56

choice.exit852:                                   ; preds = %choice.then850
  br label %loop.latch.56

choice.then861:                                   ; preds = %loop.exit.56
  %var.load863 = load i64, ptr %"var.dot_pos'", align 8
  store i64 %var.load863, ptr %"var.end'", align 8
  br label %choice.exit862

choice.exit862:                                   ; preds = %choice.then861, %loop.exit.56
  br label %choice.exit823

choice.then876:                                   ; preds = %choice.exit823
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %var.load879 = load i64, ptr %"var.e'", align 8
  %subtmp880 = sub i64 0, %var.load879
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %subtmp880, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.ilen)
  %sum881 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf882 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf882, label %str_overflow_abort884, label %cat.sum.len883

choice.else877:                                   ; preds = %choice.exit823
  %var.load896 = load i64, ptr %"var.e'", align 8
  %call.res897 = call { i64, ptr } @"str::from_int"(i64 %var.load896)
  %arena.cur898 = call ptr @dva_arena_current()
  %ret.ub.alloc899 = call ptr @dva_arena_alloc(ptr %arena.cur898, i64 16)
  store { i64, ptr } %call.res897, ptr %ret.ub.alloc899, align 8
  br label %choice.exit878

choice.exit878:                                   ; preds = %choice.else877, %concat.tot.len888
  %choice.res900 = phi ptr [ %concat.str, %concat.tot.len888 ], [ %ret.ub.alloc899, %choice.else877 ]
  store ptr %choice.res900, ptr %var.es, align 8
  %var.load901 = load i64, ptr %"var.e'", align 8
  %cmptmp902 = icmp slt i64 %var.load901, -4
  br i1 %cmptmp902, label %or.58.then, label %or.58.else

cat.sum.len883:                                   ; preds = %abort.dead885, %choice.then876
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum881, i64 1)
  %sum886 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf887 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf887, label %str_overflow_abort889, label %concat.tot.len888

str_overflow_abort884:                            ; preds = %choice.then876
  %38 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead885:                                    ; No predecessors!
  br label %cat.sum.len883

concat.tot.len888:                                ; preds = %abort.dead890, %cat.sum.len883
  %arena.cur891 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur891, i64 %sum886)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.dst892 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst892, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum881
  store i8 0, ptr %concat.nul, align 1
  %arena.cur893 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur893, i64 16)
  %str.build.len.gep894 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum881, ptr %str.build.len.gep894, align 8
  %str.build.data.gep895 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep895, align 8
  br label %choice.exit878

str_overflow_abort889:                            ; preds = %cat.sum.len883
  %39 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead890:                                    ; No predecessors!
  br label %concat.tot.len888

or.58.then:                                       ; preds = %choice.exit878
  br label %or.58.exit

or.58.else:                                       ; preds = %choice.exit878
  %var.load903 = load i64, ptr %"var.e'", align 8
  %cmptmp904 = icmp sge i64 %var.load903, 6
  br label %or.58.exit

or.58.exit:                                       ; preds = %or.58.else, %or.58.then
  %or.58.phi = phi i1 [ %cmptmp902, %or.58.then ], [ %cmptmp904, %or.58.else ]
  br i1 %or.58.phi, label %choice.then905, label %choice.else906

choice.then905:                                   ; preds = %or.58.exit
  %var.load908 = load ptr, ptr %var.mant, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load908, i32 0, i32 0
  %cat.seg909 = load i64, ptr %cat.seg, align 8
  %cat.seg910 = and i64 %cat.seg909, 281474976710655
  %str.tag911 = lshr i64 %cat.seg909, 48
  %tag.immortal913 = icmp eq i64 %str.tag911, 0
  br i1 %tag.immortal913, label %str_ok912, label %tag.gen_check914

choice.else906:                                   ; preds = %or.58.exit
  %var.load971 = load ptr, ptr %var.mant, align 8
  br label %choice.exit907

choice.exit907:                                   ; preds = %choice.else906, %concat.tot.len957
  %choice.res972 = phi ptr [ %concat.str968, %concat.tot.len957 ], [ %var.load971, %choice.else906 ]
  %ret.pack973 = load { i64, ptr }, ptr %choice.res972, align 8
  ret { i64, ptr } %ret.pack973

str_ok912:                                        ; preds = %abort.dead921, %tag.slow_check915, %tag.gen_check914, %choice.then905
  %cat.seg922 = getelementptr inbounds { i64, ptr }, ptr %var.load908, i32 0, i32 1
  %cat.seg923 = load ptr, ptr %cat.seg922, align 8
  %cat.lit.data924 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %var.load925 = load ptr, ptr %var.es, align 8
  %cat.seg926 = getelementptr inbounds { i64, ptr }, ptr %var.load925, i32 0, i32 0
  %cat.seg927 = load i64, ptr %cat.seg926, align 8
  %cat.seg928 = and i64 %cat.seg927, 281474976710655
  %str.tag929 = lshr i64 %cat.seg927, 48
  %tag.immortal931 = icmp eq i64 %str.tag929, 0
  br i1 %tag.immortal931, label %str_ok930, label %tag.gen_check932

tag.gen_check914:                                 ; preds = %choice.then905
  %active.gen917 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok918 = icmp eq i64 %str.tag911, %active.gen917
  br i1 %tag.fast.ok918, label %str_ok912, label %tag.slow_check915

tag.slow_check915:                                ; preds = %tag.gen_check914
  %arena.cur919 = call ptr @dva_arena_current()
  %tag.valid920 = call i1 @dva_arena_validate_tag(ptr %arena.cur919, i64 %str.tag911)
  br i1 %tag.valid920, label %str_ok912, label %tag.stale916

tag.stale916:                                     ; preds = %tag.slow_check915
  %40 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead921:                                    ; No predecessors!
  br label %str_ok912

str_ok930:                                        ; preds = %abort.dead939, %tag.slow_check933, %tag.gen_check932, %str_ok912
  %cat.seg940 = getelementptr inbounds { i64, ptr }, ptr %var.load925, i32 0, i32 1
  %cat.seg941 = load ptr, ptr %cat.seg940, align 8
  %cat.sum.len942 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg910, i64 1)
  %sum943 = extractvalue { i64, i1 } %cat.sum.len942, 0
  %ovf944 = extractvalue { i64, i1 } %cat.sum.len942, 1
  br i1 %ovf944, label %str_overflow_abort946, label %cat.sum.len945

tag.gen_check932:                                 ; preds = %str_ok912
  %active.gen935 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok936 = icmp eq i64 %str.tag929, %active.gen935
  br i1 %tag.fast.ok936, label %str_ok930, label %tag.slow_check933

tag.slow_check933:                                ; preds = %tag.gen_check932
  %arena.cur937 = call ptr @dva_arena_current()
  %tag.valid938 = call i1 @dva_arena_validate_tag(ptr %arena.cur937, i64 %str.tag929)
  br i1 %tag.valid938, label %str_ok930, label %tag.stale934

tag.stale934:                                     ; preds = %tag.slow_check933
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead939:                                    ; No predecessors!
  br label %str_ok930

cat.sum.len945:                                   ; preds = %abort.dead947, %str_ok930
  %cat.sum.len948 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum943, i64 %cat.seg928)
  %sum949 = extractvalue { i64, i1 } %cat.sum.len948, 0
  %ovf950 = extractvalue { i64, i1 } %cat.sum.len948, 1
  br i1 %ovf950, label %str_overflow_abort952, label %cat.sum.len951

str_overflow_abort946:                            ; preds = %str_ok930
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead947:                                    ; No predecessors!
  br label %cat.sum.len945

cat.sum.len951:                                   ; preds = %abort.dead953, %cat.sum.len945
  %concat.tot.len954 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum949, i64 1)
  %sum955 = extractvalue { i64, i1 } %concat.tot.len954, 0
  %ovf956 = extractvalue { i64, i1 } %concat.tot.len954, 1
  br i1 %ovf956, label %str_overflow_abort958, label %concat.tot.len957

str_overflow_abort952:                            ; preds = %cat.sum.len945
  %43 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead953:                                    ; No predecessors!
  br label %cat.sum.len951

concat.tot.len957:                                ; preds = %abort.dead959, %cat.sum.len951
  %arena.cur960 = call ptr @dva_arena_current()
  %concat.buf961 = call ptr @dva_arena_alloc(ptr %arena.cur960, i64 %sum955)
  %cat.dst962 = getelementptr i8, ptr %concat.buf961, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst962, ptr align 1 %cat.seg923, i64 %cat.seg910, i1 false)
  %cat.off = add i64 0, %cat.seg910
  %cat.dst963 = getelementptr i8, ptr %concat.buf961, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst963, ptr align 1 %cat.lit.data924, i64 1, i1 false)
  %cat.off964 = add i64 %cat.off, 1
  %cat.dst965 = getelementptr i8, ptr %concat.buf961, i64 %cat.off964
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst965, ptr align 1 %cat.seg941, i64 %cat.seg928, i1 false)
  %concat.nul966 = getelementptr i8, ptr %concat.buf961, i64 %sum949
  store i8 0, ptr %concat.nul966, align 1
  %arena.cur967 = call ptr @dva_arena_current()
  %concat.str968 = call ptr @dva_arena_alloc(ptr %arena.cur967, i64 16)
  %str.build.len.gep969 = getelementptr inbounds { i64, ptr }, ptr %concat.str968, i32 0, i32 0
  store i64 %sum949, ptr %str.build.len.gep969, align 8
  %str.build.data.gep970 = getelementptr inbounds { i64, ptr }, ptr %concat.str968, i32 0, i32 1
  store ptr %concat.buf961, ptr %str.build.data.gep970, align 8
  br label %choice.exit907

str_overflow_abort958:                            ; preds = %cat.sum.len951
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead959:                                    ; No predecessors!
  br label %concat.tot.len957
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

define i64 @"str::cmp"(ptr %0, ptr %1) #0 {
entry:
  %var.cb = alloca i64, align 8
  %var.ca = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.59 = alloca i64, align 8
  %loop.idx.59 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.lb = alloca i64, align 8
  %var.la = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.la, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  br i1 %tag.immortal9, label %str_ok8, label %tag.gen_check10

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

str_ok8:                                          ; preds = %abort.dead17, %tag.slow_check11, %tag.gen_check10, %str_ok
  store i64 %str.len.query6, ptr %var.lb, align 8
  %var.load18 = load i64, ptr %var.la, align 8
  %var.load19 = load i64, ptr %var.lb, align 8
  %cmptmp = icmp slt i64 %var.load18, %var.load19
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check10:                                  ; preds = %str_ok
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok14 = icmp eq i64 %str.tag7, %active.gen13
  br i1 %tag.fast.ok14, label %str_ok8, label %tag.slow_check11

tag.slow_check11:                                 ; preds = %tag.gen_check10
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag7)
  br i1 %tag.valid16, label %str_ok8, label %tag.stale12

tag.stale12:                                      ; preds = %tag.slow_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %str_ok8

choice.then:                                      ; preds = %str_ok8
  %var.load20 = load i64, ptr %var.la, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok8
  %var.load21 = load i64, ptr %var.lb, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load20, %choice.then ], [ %var.load21, %choice.else ]
  store i64 %choice.res, ptr %var.n, align 8
  %var.load22 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit
  %counter.load = load i64, ptr %loop.idx.59, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load22
  br i1 %loop.cond, label %loop.body.59, label %loop.exit.nat.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load23 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data, align 8
  %var.load27 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load27, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit49
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  %var.load57 = load i64, ptr %var.la, align 8
  %var.load58 = load i64, ptr %var.lb, align 8
  %cmptmp59 = icmp eq i64 %var.load57, %var.load58
  br i1 %cmptmp59, label %choice.then60, label %choice.else61

idx_big_check:                                    ; preds = %loop.body.59
  %idx.big = icmp sge i64 %var.load27, %s.read.len25
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead28, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data26, i64 %var.load27
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ca, align 8
  %var.load29 = load ptr, ptr %var.b, align 8
  %s.read.len30 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len30, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  %var.load35 = load i64, ptr %var.i, align 8
  %idx.neg36 = icmp slt i64 %var.load35, 0
  br i1 %idx.neg36, label %idx_oob39, label %idx_big_check37

idx_oob:                                          ; preds = %idx_big_check, %loop.body.59
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead28:                                     ; No predecessors!
  br label %idx_ok

idx_big_check37:                                  ; preds = %idx_ok
  %idx.big40 = icmp sge i64 %var.load35, %s.read.len32
  br i1 %idx.big40, label %idx_oob39, label %idx_ok38

idx_ok38:                                         ; preds = %abort.dead41, %idx_big_check37
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data34, i64 %var.load35
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  store i64 %s.byte.val44, ptr %var.cb, align 8
  %var.load45 = load i64, ptr %var.ca, align 8
  %var.load46 = load i64, ptr %var.cb, align 8
  %cmptmp47 = icmp ne i64 %var.load45, %var.load46
  br i1 %cmptmp47, label %choice.then48, label %choice.exit49

idx_oob39:                                        ; preds = %idx_big_check37, %idx_ok
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %idx_ok38

choice.then48:                                    ; preds = %idx_ok38
  %var.load50 = load i64, ptr %var.ca, align 8
  %var.load51 = load i64, ptr %var.cb, align 8
  %cmptmp52 = icmp slt i64 %var.load50, %var.load51
  br i1 %cmptmp52, label %choice.then53, label %choice.else54

choice.exit49:                                    ; preds = %ret.dead, %idx_ok38
  br label %loop.latch.59

choice.then53:                                    ; preds = %choice.then48
  br label %choice.exit55

choice.else54:                                    ; preds = %choice.then48
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else54, %choice.then53
  %choice.res56 = phi i64 [ -1, %choice.then53 ], [ 1, %choice.else54 ]
  ret i64 %choice.res56

ret.dead:                                         ; No predecessors!
  br label %choice.exit49

choice.then60:                                    ; preds = %loop.exit.59
  br label %choice.exit62

choice.else61:                                    ; preds = %loop.exit.59
  %var.load63 = load i64, ptr %var.la, align 8
  %var.load64 = load i64, ptr %var.lb, align 8
  %cmptmp65 = icmp slt i64 %var.load63, %var.load64
  br i1 %cmptmp65, label %choice.then66, label %choice.else67

choice.exit62:                                    ; preds = %choice.exit68, %choice.then60
  %choice.res70 = phi i64 [ 0, %choice.then60 ], [ %choice.res69, %choice.exit68 ]
  ret i64 %choice.res70

choice.then66:                                    ; preds = %choice.else61
  br label %choice.exit68

choice.else67:                                    ; preds = %choice.else61
  br label %choice.exit68

choice.exit68:                                    ; preds = %choice.else67, %choice.then66
  %choice.res69 = phi i64 [ -1, %choice.then66 ], [ 1, %choice.else67 ]
  br label %choice.exit62
}

define i1 @"str::lt"(ptr %0, ptr %1) #0 {
entry:
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %call.res = call i64 @"str::cmp"(ptr %var.load, ptr %var.load1)
  %cmptmp = icmp slt i64 %call.res, 0
  ret i1 %cmptmp
}

define ptr @"str::to_int"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.b = alloca i64, align 8
  %loop.step.60 = alloca i64, align 8
  %loop.idx.60 = alloca i64, align 8
  %"var.val'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.val'", align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %str.tag = lshr i64 %str.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.60, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.60

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

loop.header.60:                                   ; preds = %loop.latch.60, %str_ok
  %counter.load = load i64, ptr %loop.idx.60, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.60, label %loop.exit.nat.60

loop.body.60:                                     ; preds = %loop.header.60
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.60, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.b, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.b, align 8
  %call.res = call i1 @"str::is_digit"(i64 %var.load4)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

loop.exit.nat.60:                                 ; preds = %loop.header.60
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.60

loop.latch.60:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.60, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.60, align 8
  br label %loop.header.60

loop.exit.60:                                     ; preds = %choice.then, %loop.exit.nat.60
  %var.load7 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load7, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.60
  br label %loop.exit.60

choice.exit:                                      ; preds = %loop.body.60
  %var.load5 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load5, 10
  %var.load6 = load i64, ptr %var.b, align 8
  %subtmp = sub i64 %var.load6, 48
  %addtmp = add i64 %multmp, %subtmp
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %loop.latch.60

choice.exit8:                                     ; preds = %choice.next, %ret.dead
  %var.load9 = load i64, ptr %"var.val'", align 8
  %var.load10 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data13 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data13, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load15, 0
  %rel.start = add i64 %s.read.len12, %var.load15
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load15
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len12, 0
  %rel.end = add i64 %s.read.len12, %s.read.len12
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len12
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %arena.cur16 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur17 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load9, ptr %rec.fld, align 8
  %rec.fld18 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld18, align 8
  ret ptr %rec.alloc

choice.case:                                      ; preds = %loop.exit.60
  ret ptr null

choice.next:                                      ; preds = %loop.exit.60
  br label %choice.exit8

ret.dead:                                         ; No predecessors!
  br label %choice.exit8
}

define ptr @"str::to_hex"(ptr %0) #0 {
entry:
  %var.d = alloca i64, align 8
  %var._5 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.b = alloca i64, align 8
  %loop.step.61 = alloca i64, align 8
  %loop.idx.61 = alloca i64, align 8
  %"var.val'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.val'", align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %str.tag = lshr i64 %str.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.61, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.61

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

loop.header.61:                                   ; preds = %loop.latch.61, %str_ok
  %counter.load = load i64, ptr %loop.idx.61, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.61, label %loop.exit.nat.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.61, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.b, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.b, align 8
  %call.res = call { i1, i64 } @"ascii::hex_value"(i64 %var.load4)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

loop.exit.nat.61:                                 ; preds = %loop.header.61
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.61, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %choice.else, %loop.exit.nat.61
  %var.load8 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load8, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.61
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._5, align 8
  store i64 %ram.pay, ptr %var.d, align 8
  %var.load6 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load6, 16
  %var.load7 = load i64, ptr %var.d, align 8
  %addtmp = add i64 %multmp, %var.load7
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.61
  br label %loop.exit.61

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.61

choice.exit9:                                     ; preds = %choice.next, %ret.dead
  %var.load10 = load i64, ptr %"var.val'", align 8
  %var.load11 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data14 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data14, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load16, 0
  %rel.start = add i64 %s.read.len13, %var.load16
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load16
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len13
  %final.start = select i1 %start.gt.len, i64 %s.read.len13, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len13, 0
  %rel.end = add i64 %s.read.len13, %s.read.len13
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len13
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len13
  %final.end = select i1 %end.gt.len, i64 %s.read.len13, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data15, i64 %final.start
  %arena.cur17 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur18 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load10, ptr %rec.fld, align 8
  %rec.fld19 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld19, align 8
  ret ptr %rec.alloc

choice.case:                                      ; preds = %loop.exit.61
  ret ptr null

choice.next:                                      ; preds = %loop.exit.61
  br label %choice.exit9

ret.dead:                                         ; No predecessors!
  br label %choice.exit9
}

declare { i1, i64 } @"ascii::hex_value"(i64) #0

define { i64, ptr } @"str::hex_to_str"(i64 %0) #0 {
entry:
  %var._176 = alloca i64, align 8
  %var._i175 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.66 = alloca i64, align 8
  %loop.idx.66 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var.digit = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.neg = alloca i1, align 1
  %var.b = alloca ptr, align 8
  %var.val = alloca i64, align 8
  store i64 %0, ptr %var.val, align 8
  %var.load = load i64, ptr %var.val, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %ret.dead
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

choice.case:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.8.struct, align 8
  ret { i64, ptr } %ret.pack

choice.next:                                      ; preds = %entry
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len1:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.val, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  store i1 %cmptmp, ptr %var.neg, align 1
  %var.load4 = load i1, ptr %var.neg, align 1
  br i1 %var.load4, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  %var.load6 = load i64, ptr %var.val, align 8
  %subtmp = sub i64 0, %var.load6
  br label %choice.exit5

choice.else:                                      ; preds = %b.buf.len1
  %var.load7 = load i64, ptr %var.val, align 8
  br label %choice.exit5

choice.exit5:                                     ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ %var.load7, %choice.else ]
  store i64 %choice.res, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.header.62:                                   ; preds = %loop.latch.62, %choice.exit5
  %counter.load = load i64, ptr %loop.idx.62, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.62, label %loop.exit.nat.62

loop.body.62:                                     ; preds = %loop.header.62
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.62, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load8 = load i64, ptr %"var.n'", align 8
  %cmptmp12 = icmp ugt i64 %var.load8, 0
  br i1 %cmptmp12, label %choice.case10, label %choice.next11

loop.exit.nat.62:                                 ; preds = %loop.header.62
  br label %loop.exit.62

loop.latch.62:                                    ; preds = %choice.exit9
  %step.val = load i64, ptr %loop.step.62, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.exit.62:                                     ; preds = %choice.next11, %loop.exit.nat.62
  %b.load30 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 0
  %b.rn.cur.len31 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len31, i64 1)
  %sum32 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf33 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %b.rn.new.len34

choice.exit9:                                     ; preds = %b.push_done
  br label %loop.latch.62

choice.case10:                                    ; preds = %loop.body.62
  %var.load13 = load i64, ptr %"var.n'", align 8
  %bandtmp = and i64 %var.load13, 15
  store i64 %bandtmp, ptr %var.digit, align 8
  %var.load14 = load i64, ptr %var.digit, align 8
  %call.res = call i64 @"ascii::hex_char_upper"(i64 %var.load14)
  store i64 %call.res, ptr %var.ch, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load15 = load i64, ptr %var.ch, align 8
  %b.b.ge0 = icmp sge i64 %var.load15, 0
  %b.b.le255 = icmp sle i64 %var.load15, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.next11:                                    ; preds = %loop.body.62
  br label %loop.exit.62

b.byte_ok:                                        ; preds = %abort.dead16, %choice.case10
  %b.byte.i8 = trunc i64 %var.load15 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len17 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap18 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data19 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len17, %b.cap18
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case10
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead16:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap18, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len22

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len22
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data26 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len27 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data26, i64 %b.cur.len27
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len27, 1
  %b.nul = getelementptr i8, ptr %b.cur.data26, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep28, align 8
  %var.load29 = load i64, ptr %"var.n'", align 8
  %shrtmp = lshr i64 %var.load29, 4
  store i64 %shrtmp, ptr %"var.n'", align 8
  br label %choice.exit9

b.new.buf.len22:                                  ; preds = %abort.dead24, %b.grow
  %arena.cur25 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data19, i64 %b.len17, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len17
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort23:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %b.new.buf.len22

b.rn.new.len34:                                   ; preds = %abort.dead36, %loop.exit.62
  %b.cap37 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 2
  %b.cap38 = load i64, ptr %b.cap37, align 8
  %b.need.grow = icmp slt i64 %b.cap38, %sum32
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort35:                             ; preds = %loop.exit.62
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %b.rn.new.len34

b.grow2:                                          ; preds = %b.rn.new.len34
  %b.cap239 = mul i64 %b.cap38, 2
  %b.cap.small40 = icmp slt i64 %b.cap239, 16
  %b.cap.grow = select i1 %b.cap.small40, i64 16, i64 %b.cap239
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum32
  %b.new.cap41 = select i1 %b.cap.need, i64 %sum32, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 0
  %b.cur.len242 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 1
  %b.cur.data243 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap41, i64 1)
  %sum44 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf45 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf45, label %str_overflow_abort47, label %b.new.buf.len246

b.nogrow2:                                        ; preds = %b.rn.new.len34
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len246
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 1
  %b.rn.data50 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data50, i64 %b.rn.cur.len31
  br i1 true, label %br.b1.63, label %br.c2.63

b.new.buf.len246:                                 ; preds = %abort.dead48, %b.grow2
  %arena.cur49 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 %sum44)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data243, i64 %b.cur.len242, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len242
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 2
  store i64 %b.new.cap41, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort47:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %b.new.buf.len246

br.b1.63:                                         ; preds = %b.grow_done
  store i8 120, ptr %b.rn.dst, align 1
  br label %br.done.63

br.c2.63:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.63, label %br.c3.63

br.b2.63:                                         ; preds = %br.c2.63
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -72, ptr %br.dst1, align 1
  br label %br.done.63

br.c3.63:                                         ; preds = %br.c2.63
  br i1 true, label %br.b3.63, label %br.b4.63

br.b3.63:                                         ; preds = %br.c3.63
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -72, ptr %br.dst2.3, align 1
  br label %br.done.63

br.b4.63:                                         ; preds = %br.c3.63
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -72, ptr %br.dst3.4, align 1
  br label %br.done.63

br.done.63:                                       ; preds = %br.b4.63, %br.b3.63, %br.b2.63, %br.b1.63
  %br.nul = getelementptr i8, ptr %b.rn.data50, i64 %sum32
  store i8 0, ptr %br.nul, align 1
  %b.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 0
  store i64 %sum32, ptr %b.len.gep51, align 8
  %b.load52 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load52, i32 0, i32 0
  %b.rn.cur.len54 = load i64, ptr %b.rn.cur.len53, align 8
  %b.rn.new.len55 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len54, i64 1)
  %sum56 = extractvalue { i64, i1 } %b.rn.new.len55, 0
  %ovf57 = extractvalue { i64, i1 } %b.rn.new.len55, 1
  br i1 %ovf57, label %str_overflow_abort59, label %b.rn.new.len58

b.rn.new.len58:                                   ; preds = %abort.dead60, %br.done.63
  %b.cap61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load52, i32 0, i32 2
  %b.cap62 = load i64, ptr %b.cap61, align 8
  %b.need.grow63 = icmp slt i64 %b.cap62, %sum56
  br i1 %b.need.grow63, label %b.grow264, label %b.nogrow265

str_overflow_abort59:                             ; preds = %br.done.63
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %b.rn.new.len58

b.grow264:                                        ; preds = %b.rn.new.len58
  %b.cap267 = mul i64 %b.cap62, 2
  %b.cap.small68 = icmp slt i64 %b.cap267, 16
  %b.cap.grow69 = select i1 %b.cap.small68, i64 16, i64 %b.cap267
  %b.cap.need70 = icmp slt i64 %b.cap.grow69, %sum56
  %b.new.cap71 = select i1 %b.cap.need70, i64 %sum56, i64 %b.cap.grow69
  %b.cur.len272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load52, i32 0, i32 0
  %b.cur.len273 = load i64, ptr %b.cur.len272, align 8
  %b.cur.data274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load52, i32 0, i32 1
  %b.cur.data275 = load ptr, ptr %b.cur.data274, align 8
  %b.new.buf.len276 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap71, i64 1)
  %sum77 = extractvalue { i64, i1 } %b.new.buf.len276, 0
  %ovf78 = extractvalue { i64, i1 } %b.new.buf.len276, 1
  br i1 %ovf78, label %str_overflow_abort80, label %b.new.buf.len279

b.nogrow265:                                      ; preds = %b.rn.new.len58
  br label %b.grow_done66

b.grow_done66:                                    ; preds = %b.nogrow265, %b.new.buf.len279
  %b.rn.data87 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load52, i32 0, i32 1
  %b.rn.data88 = load ptr, ptr %b.rn.data87, align 8
  %b.rn.dst89 = getelementptr i8, ptr %b.rn.data88, i64 %b.rn.cur.len54
  br i1 true, label %br.b1.64, label %br.c2.64

b.new.buf.len279:                                 ; preds = %abort.dead81, %b.grow264
  %arena.cur82 = call ptr @dva_arena_current()
  %b.new.buf283 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 %sum77)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf283, ptr align 1 %b.cur.data275, i64 %b.cur.len273, i1 false)
  %b.grow2.nul84 = getelementptr i8, ptr %b.new.buf283, i64 %b.cur.len273
  store i8 0, ptr %b.grow2.nul84, align 1
  %b.new.data2.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load52, i32 0, i32 1
  store ptr %b.new.buf283, ptr %b.new.data2.gep85, align 8
  %b.new.cap2.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load52, i32 0, i32 2
  store i64 %b.new.cap71, ptr %b.new.cap2.gep86, align 8
  br label %b.grow_done66

str_overflow_abort80:                             ; preds = %b.grow264
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead81:                                     ; No predecessors!
  br label %b.new.buf.len279

br.b1.64:                                         ; preds = %b.grow_done66
  store i8 48, ptr %b.rn.dst89, align 1
  br label %br.done.64

br.c2.64:                                         ; preds = %b.grow_done66
  br i1 true, label %br.b2.64, label %br.c3.64

br.b2.64:                                         ; preds = %br.c2.64
  store i8 -64, ptr %b.rn.dst89, align 1
  %br.dst190 = getelementptr i8, ptr %b.rn.dst89, i64 1
  store i8 -80, ptr %br.dst190, align 1
  br label %br.done.64

br.c3.64:                                         ; preds = %br.c2.64
  br i1 true, label %br.b3.64, label %br.b4.64

br.b3.64:                                         ; preds = %br.c3.64
  store i8 -32, ptr %b.rn.dst89, align 1
  %br.dst1.391 = getelementptr i8, ptr %b.rn.dst89, i64 1
  store i8 -128, ptr %br.dst1.391, align 1
  %br.dst2.392 = getelementptr i8, ptr %b.rn.dst89, i64 2
  store i8 -80, ptr %br.dst2.392, align 1
  br label %br.done.64

br.b4.64:                                         ; preds = %br.c3.64
  store i8 -16, ptr %b.rn.dst89, align 1
  %br.dst1.493 = getelementptr i8, ptr %b.rn.dst89, i64 1
  store i8 -128, ptr %br.dst1.493, align 1
  %br.dst2.494 = getelementptr i8, ptr %b.rn.dst89, i64 2
  store i8 -128, ptr %br.dst2.494, align 1
  %br.dst3.495 = getelementptr i8, ptr %b.rn.dst89, i64 3
  store i8 -80, ptr %br.dst3.495, align 1
  br label %br.done.64

br.done.64:                                       ; preds = %br.b4.64, %br.b3.64, %br.b2.64, %br.b1.64
  %br.nul96 = getelementptr i8, ptr %b.rn.data88, i64 %sum56
  store i8 0, ptr %br.nul96, align 1
  %b.len.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load52, i32 0, i32 0
  store i64 %sum56, ptr %b.len.gep97, align 8
  %var.load98 = load i1, ptr %var.neg, align 1
  br i1 %var.load98, label %choice.then99, label %choice.exit100

choice.then99:                                    ; preds = %br.done.64
  %b.load101 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len102 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  %b.rn.cur.len103 = load i64, ptr %b.rn.cur.len102, align 8
  %b.rn.new.len104 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len103, i64 1)
  %sum105 = extractvalue { i64, i1 } %b.rn.new.len104, 0
  %ovf106 = extractvalue { i64, i1 } %b.rn.new.len104, 1
  br i1 %ovf106, label %str_overflow_abort108, label %b.rn.new.len107

choice.exit100:                                   ; preds = %br.done.65, %br.done.64
  %var.load147 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 0
  %b.freeze.len148 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 1
  %b.freeze.data149 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len107:                                  ; preds = %abort.dead109, %choice.then99
  %b.cap110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 2
  %b.cap111 = load i64, ptr %b.cap110, align 8
  %b.need.grow112 = icmp slt i64 %b.cap111, %sum105
  br i1 %b.need.grow112, label %b.grow2113, label %b.nogrow2114

str_overflow_abort108:                            ; preds = %choice.then99
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead109:                                    ; No predecessors!
  br label %b.rn.new.len107

b.grow2113:                                       ; preds = %b.rn.new.len107
  %b.cap2116 = mul i64 %b.cap111, 2
  %b.cap.small117 = icmp slt i64 %b.cap2116, 16
  %b.cap.grow118 = select i1 %b.cap.small117, i64 16, i64 %b.cap2116
  %b.cap.need119 = icmp slt i64 %b.cap.grow118, %sum105
  %b.new.cap120 = select i1 %b.cap.need119, i64 %sum105, i64 %b.cap.grow118
  %b.cur.len2121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  %b.cur.len2122 = load i64, ptr %b.cur.len2121, align 8
  %b.cur.data2123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 1
  %b.cur.data2124 = load ptr, ptr %b.cur.data2123, align 8
  %b.new.buf.len2125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap120, i64 1)
  %sum126 = extractvalue { i64, i1 } %b.new.buf.len2125, 0
  %ovf127 = extractvalue { i64, i1 } %b.new.buf.len2125, 1
  br i1 %ovf127, label %str_overflow_abort129, label %b.new.buf.len2128

b.nogrow2114:                                     ; preds = %b.rn.new.len107
  br label %b.grow_done115

b.grow_done115:                                   ; preds = %b.nogrow2114, %b.new.buf.len2128
  %b.rn.data136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 1
  %b.rn.data137 = load ptr, ptr %b.rn.data136, align 8
  %b.rn.dst138 = getelementptr i8, ptr %b.rn.data137, i64 %b.rn.cur.len103
  br i1 true, label %br.b1.65, label %br.c2.65

b.new.buf.len2128:                                ; preds = %abort.dead130, %b.grow2113
  %arena.cur131 = call ptr @dva_arena_current()
  %b.new.buf2132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 %sum126)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2132, ptr align 1 %b.cur.data2124, i64 %b.cur.len2122, i1 false)
  %b.grow2.nul133 = getelementptr i8, ptr %b.new.buf2132, i64 %b.cur.len2122
  store i8 0, ptr %b.grow2.nul133, align 1
  %b.new.data2.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 1
  store ptr %b.new.buf2132, ptr %b.new.data2.gep134, align 8
  %b.new.cap2.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 2
  store i64 %b.new.cap120, ptr %b.new.cap2.gep135, align 8
  br label %b.grow_done115

str_overflow_abort129:                            ; preds = %b.grow2113
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead130:                                    ; No predecessors!
  br label %b.new.buf.len2128

br.b1.65:                                         ; preds = %b.grow_done115
  store i8 45, ptr %b.rn.dst138, align 1
  br label %br.done.65

br.c2.65:                                         ; preds = %b.grow_done115
  br i1 true, label %br.b2.65, label %br.c3.65

br.b2.65:                                         ; preds = %br.c2.65
  store i8 -64, ptr %b.rn.dst138, align 1
  %br.dst1139 = getelementptr i8, ptr %b.rn.dst138, i64 1
  store i8 -83, ptr %br.dst1139, align 1
  br label %br.done.65

br.c3.65:                                         ; preds = %br.c2.65
  br i1 true, label %br.b3.65, label %br.b4.65

br.b3.65:                                         ; preds = %br.c3.65
  store i8 -32, ptr %b.rn.dst138, align 1
  %br.dst1.3140 = getelementptr i8, ptr %b.rn.dst138, i64 1
  store i8 -128, ptr %br.dst1.3140, align 1
  %br.dst2.3141 = getelementptr i8, ptr %b.rn.dst138, i64 2
  store i8 -83, ptr %br.dst2.3141, align 1
  br label %br.done.65

br.b4.65:                                         ; preds = %br.c3.65
  store i8 -16, ptr %b.rn.dst138, align 1
  %br.dst1.4142 = getelementptr i8, ptr %b.rn.dst138, i64 1
  store i8 -128, ptr %br.dst1.4142, align 1
  %br.dst2.4143 = getelementptr i8, ptr %b.rn.dst138, i64 2
  store i8 -128, ptr %br.dst2.4143, align 1
  %br.dst3.4144 = getelementptr i8, ptr %b.rn.dst138, i64 3
  store i8 -83, ptr %br.dst3.4144, align 1
  br label %br.done.65

br.done.65:                                       ; preds = %br.b4.65, %br.b3.65, %br.b2.65, %br.b1.65
  %br.nul145 = getelementptr i8, ptr %b.rn.data137, i64 %sum105
  store i8 0, ptr %br.nul145, align 1
  %b.len.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  store i64 %sum105, ptr %b.len.gep146, align 8
  br label %choice.exit100

b.freeze.check:                                   ; preds = %choice.exit100
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data149, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data149, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data149, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len148, 1
  %arena.cur150 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data149, i64 %b.freeze.len148, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len148
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit100
  %b.freeze.data151 = phi ptr [ %b.freeze.data149, %choice.exit100 ], [ %b.freeze.data149, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur152 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len148, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data151, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur153 = call ptr @dva_arena_current()
  %builder.new154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 24)
  %b.data.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new154, i32 0, i32 1
  %b.len.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new154, i32 0, i32 0
  %b.cap.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new154, i32 0, i32 2
  %b.buf.len158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum159 = extractvalue { i64, i1 } %b.buf.len158, 0
  %ovf160 = extractvalue { i64, i1 } %b.buf.len158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %b.buf.len161

b.buf.len161:                                     ; preds = %abort.dead163, %b.freeze.done
  %arena.cur164 = call ptr @dva_arena_current()
  %b.buf165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 %sum159)
  %b.nul0166 = getelementptr i8, ptr %b.buf165, i64 0
  store i8 0, ptr %b.nul0166, align 1
  store i64 0, ptr %b.len.gep156, align 8
  store ptr %b.buf165, ptr %b.data.gep155, align 8
  store i64 32, ptr %b.cap.gep157, align 8
  store ptr %builder.new154, ptr %var.out, align 8
  %var.load167 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load167, i32 0, i32 0
  %str.len.query168 = load i64, ptr %str.len.query, align 8
  %str.len.query169 = and i64 %str.len.query168, 281474976710655
  %str.tag = lshr i64 %str.len.query168, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_overflow_abort162:                            ; preds = %b.freeze.done
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %b.buf.len161

str_ok:                                           ; preds = %abort.dead171, %tag.slow_check, %tag.gen_check, %b.buf.len161
  store i64 0, ptr %loop.idx.66, align 8
  br label %loop.header.66

tag.gen_check:                                    ; preds = %b.buf.len161
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur170 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur170, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead171:                                    ; No predecessors!
  br label %str_ok

loop.header.66:                                   ; preds = %loop.latch.66, %str_ok
  %counter.load172 = load i64, ptr %loop.idx.66, align 8
  %loop.cond173 = icmp slt i64 %counter.load172, %str.len.query169
  br i1 %loop.cond173, label %loop.body.66, label %loop.exit.nat.66

loop.body.66:                                     ; preds = %loop.header.66
  %loop.rel.i174 = sub i64 %counter.load172, 0
  store i64 1, ptr %loop.step.66, align 8
  store i64 %loop.rel.i174, ptr %var._i175, align 8
  store i64 %counter.load172, ptr %var._176, align 8
  store i64 %counter.load172, ptr %var.i, align 8
  %b.load177 = load ptr, ptr %var.out, align 8
  %var.load178 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load178, i32 0, i32 0
  %s.read.len179 = load i64, ptr %s.read.len, align 8
  %s.read.len180 = and i64 %s.read.len179, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load178, i32 0, i32 1
  %s.read.data181 = load ptr, ptr %s.read.data, align 8
  %var.load182 = load ptr, ptr %var.s, align 8
  %str.len.query183 = getelementptr inbounds { i64, ptr }, ptr %var.load182, i32 0, i32 0
  %str.len.query184 = load i64, ptr %str.len.query183, align 8
  %str.len.query185 = and i64 %str.len.query184, 281474976710655
  %subtmp186 = sub i64 %str.len.query185, 1
  %var.load187 = load i64, ptr %var.i, align 8
  %subtmp188 = sub i64 %subtmp186, %var.load187
  %idx.neg = icmp slt i64 %subtmp188, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.66:                                 ; preds = %loop.header.66
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %b.push_done206
  %step.val229 = load i64, ptr %loop.step.66, align 8
  %loop.next230 = add i64 %counter.load172, %step.val229
  store i64 %loop.next230, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %loop.exit.nat.66
  %var.load231 = load ptr, ptr %var.out, align 8
  %b.freeze.len232 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load231, i32 0, i32 0
  %b.freeze.len233 = load i64, ptr %b.freeze.len232, align 8
  %b.freeze.data234 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load231, i32 0, i32 1
  %b.freeze.data235 = load ptr, ptr %b.freeze.data234, align 8
  %b.freeze.arena236 = call ptr @dva_arena_current()
  %b.freeze.nc.gep237 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena236, i32 0, i32 1
  %b.freeze.nc238 = load i64, ptr %b.freeze.nc.gep237, align 8
  %b.freeze.has.chunk239 = icmp sgt i64 %b.freeze.nc238, 0
  br i1 %b.freeze.has.chunk239, label %b.freeze.check240, label %b.freeze.done242

idx_big_check:                                    ; preds = %loop.body.66
  %idx.big = icmp sge i64 %subtmp188, %s.read.len180
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead189, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data181, i64 %subtmp188
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0190 = icmp sge i64 %s.byte.val, 0
  %b.b.le255191 = icmp sle i64 %s.byte.val, 255
  %b.byte.range192 = and i1 %b.b.ge0190, %b.b.le255191
  br i1 %b.byte.range192, label %b.byte_ok193, label %b.byte_err194

idx_oob:                                          ; preds = %idx_big_check, %loop.body.66
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead189:                                    ; No predecessors!
  br label %idx_ok

b.byte_ok193:                                     ; preds = %abort.dead195, %idx_ok
  %b.byte.i8196 = trunc i64 %s.byte.val to i8
  %b.len197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 0
  %b.len198 = load i64, ptr %b.len197, align 8
  %b.cap199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 2
  %b.cap200 = load i64, ptr %b.cap199, align 8
  %b.data201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 1
  %b.data202 = load ptr, ptr %b.data201, align 8
  %b.needs.grow203 = icmp eq i64 %b.len198, %b.cap200
  br i1 %b.needs.grow203, label %b.grow204, label %b.nogrow205

b.byte_err194:                                    ; preds = %idx_ok
  %13 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead195:                                    ; No predecessors!
  br label %b.byte_ok193

b.grow204:                                        ; preds = %b.byte_ok193
  %b.cap2207 = mul i64 %b.cap200, 2
  %b.cap.small208 = icmp slt i64 %b.cap2207, 16
  %b.new.cap209 = select i1 %b.cap.small208, i64 16, i64 %b.cap2207
  %b.new.buf.len210 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap209, i64 1)
  %sum211 = extractvalue { i64, i1 } %b.new.buf.len210, 0
  %ovf212 = extractvalue { i64, i1 } %b.new.buf.len210, 1
  br i1 %ovf212, label %str_overflow_abort214, label %b.new.buf.len213

b.nogrow205:                                      ; preds = %b.byte_ok193
  br label %b.push_done206

b.push_done206:                                   ; preds = %b.nogrow205, %b.new.buf.len213
  %b.cur.data221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 1
  %b.cur.data222 = load ptr, ptr %b.cur.data221, align 8
  %b.cur.len223 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 0
  %b.cur.len224 = load i64, ptr %b.cur.len223, align 8
  %b.byte.gep225 = getelementptr i8, ptr %b.cur.data222, i64 %b.cur.len224
  store i8 %b.byte.i8196, ptr %b.byte.gep225, align 1
  %b.next.len226 = add i64 %b.cur.len224, 1
  %b.nul227 = getelementptr i8, ptr %b.cur.data222, i64 %b.next.len226
  store i8 0, ptr %b.nul227, align 1
  %b.len.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 0
  store i64 %b.next.len226, ptr %b.len.gep228, align 8
  br label %loop.latch.66

b.new.buf.len213:                                 ; preds = %abort.dead215, %b.grow204
  %arena.cur216 = call ptr @dva_arena_current()
  %b.new.buf217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 %sum211)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf217, ptr align 1 %b.data202, i64 %b.len198, i1 false)
  %b.grow.nul218 = getelementptr i8, ptr %b.new.buf217, i64 %b.len198
  store i8 0, ptr %b.grow.nul218, align 1
  %b.new.data.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 1
  store ptr %b.new.buf217, ptr %b.new.data.gep219, align 8
  %b.new.cap.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load177, i32 0, i32 2
  store i64 %b.new.cap209, ptr %b.new.cap.gep220, align 8
  br label %b.push_done206

str_overflow_abort214:                            ; preds = %b.grow204
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead215:                                    ; No predecessors!
  br label %b.new.buf.len213

b.freeze.check240:                                ; preds = %loop.exit.66
  %b.freeze.last.idx243 = sub i64 %b.freeze.nc238, 1
  %b.freeze.chunks.gep244 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena236, i32 0, i32 3
  %b.freeze.chunk.slot245 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep244, i64 0, i64 %b.freeze.last.idx243
  %b.freeze.last.chunk246 = load ptr, ptr %b.freeze.chunk.slot245, align 8
  %b.freeze.off.gep247 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena236, i32 0, i32 2
  %b.freeze.off248 = load i64, ptr %b.freeze.off.gep247, align 8
  %b.freeze.bump249 = getelementptr i8, ptr %b.freeze.last.chunk246, i64 %b.freeze.off248
  %b.freeze.cap.gep250 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena236, i32 0, i32 0
  %b.freeze.cap251 = load i64, ptr %b.freeze.cap.gep250, align 8
  %b.freeze.chunk.end252 = getelementptr i8, ptr %b.freeze.last.chunk246, i64 %b.freeze.cap251
  %b.freeze.ge.chunk253 = icmp uge ptr %b.freeze.data235, %b.freeze.last.chunk246
  %b.freeze.lt.end254 = icmp ult ptr %b.freeze.data235, %b.freeze.chunk.end252
  %b.freeze.in.chunk255 = and i1 %b.freeze.ge.chunk253, %b.freeze.lt.end254
  %b.freeze.ge.bump256 = icmp uge ptr %b.freeze.data235, %b.freeze.bump249
  %b.freeze.reaped257 = and i1 %b.freeze.in.chunk255, %b.freeze.ge.bump256
  br i1 %b.freeze.reaped257, label %b.freeze.copy241, label %b.freeze.done242

b.freeze.copy241:                                 ; preds = %b.freeze.check240
  %b.freeze.alen258 = add i64 %b.freeze.len233, 1
  %arena.cur259 = call ptr @dva_arena_current()
  %b.freeze.fresh260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 %b.freeze.alen258)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh260, ptr align 1 %b.freeze.data235, i64 %b.freeze.len233, i1 false)
  %b.freeze.nul261 = getelementptr i8, ptr %b.freeze.fresh260, i64 %b.freeze.len233
  store i8 0, ptr %b.freeze.nul261, align 1
  br label %b.freeze.done242

b.freeze.done242:                                 ; preds = %b.freeze.copy241, %b.freeze.check240, %loop.exit.66
  %b.freeze.data262 = phi ptr [ %b.freeze.data235, %loop.exit.66 ], [ %b.freeze.data235, %b.freeze.check240 ], [ %b.freeze.fresh260, %b.freeze.copy241 ]
  %arena.cur263 = call ptr @dva_arena_current()
  %builder.freeze264 = call ptr @dva_arena_alloc(ptr %arena.cur263, i64 16)
  %str.build.len.gep265 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze264, i32 0, i32 0
  store i64 %b.freeze.len233, ptr %str.build.len.gep265, align 8
  %str.build.data.gep266 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze264, i32 0, i32 1
  store ptr %b.freeze.data262, ptr %str.build.data.gep266, align 8
  %b.freeze.rst.len267 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load231, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len267, align 8
  %b.freeze.rst.data268 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load231, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data268, align 8
  %b.freeze.rst.cap269 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load231, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap269, align 8
  %ret.pack270 = load { i64, ptr }, ptr %builder.freeze264, align 8
  ret { i64, ptr } %ret.pack270
}

declare i64 @"ascii::hex_char_upper"(i64) #0

define i1 @"str::is_empty"(ptr %0) #0 {
entry:
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

define i1 @"str::is_blank"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.c = alloca i64, align 8
  %loop.step.67 = alloca i64, align 8
  %loop.idx.67 = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %str.tag = lshr i64 %str.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.67, align 8
  br label %loop.header.67

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

loop.header.67:                                   ; preds = %loop.latch.67, %str_ok
  %counter.load = load i64, ptr %loop.idx.67, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.67, label %loop.exit.nat.67

loop.body.67:                                     ; preds = %loop.header.67
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.67, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.c, align 8
  %var.load4 = load i64, ptr %var.c, align 8
  %call.res = call i1 @"str::is_ws"(i64 %var.load4)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

loop.exit.nat.67:                                 ; preds = %loop.header.67
  br label %loop.exit.67

loop.latch.67:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.67, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.67, align 8
  br label %loop.header.67

loop.exit.67:                                     ; preds = %loop.exit.nat.67
  ret i1 true

choice.then:                                      ; preds = %loop.body.67
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %loop.body.67
  br label %loop.latch.67

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define i1 @"str::starts_with"(ptr %0, ptr %1) #0 {
entry:
  %var.lp = alloca i64, align 8
  %var.prefix = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.prefix, align 8
  %var.load = load ptr, ptr %var.prefix, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.lp, align 8
  %var.load3 = load i64, ptr %var.lp, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  br i1 %tag.immortal10, label %str_ok9, label %tag.gen_check11

choice.exit:                                      ; preds = %and.68.exit, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %and.68.phi, %and.68.exit ]
  ret i1 %choice.res

str_ok9:                                          ; preds = %abort.dead18, %tag.slow_check12, %tag.gen_check11, %choice.else
  %var.load19 = load i64, ptr %var.lp, align 8
  %cmptmp20 = icmp sge i64 %str.len.query7, %var.load19
  br i1 %cmptmp20, label %and.68.then, label %and.68.else

tag.gen_check11:                                  ; preds = %choice.else
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok15 = icmp eq i64 %str.tag8, %active.gen14
  br i1 %tag.fast.ok15, label %str_ok9, label %tag.slow_check12

tag.slow_check12:                                 ; preds = %tag.gen_check11
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag8)
  br i1 %tag.valid17, label %str_ok9, label %tag.stale13

tag.stale13:                                      ; preds = %tag.slow_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %str_ok9

and.68.then:                                      ; preds = %str_ok9
  %var.load21 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.chk.len22 = load i64, ptr %s.chk.len, align 8
  %s.chk.len23 = and i64 %s.chk.len22, 281474976710655
  %str.tag24 = lshr i64 %s.chk.len22, 48
  %tag.immortal26 = icmp eq i64 %str.tag24, 0
  br i1 %tag.immortal26, label %str_ok25, label %tag.gen_check27

and.68.else:                                      ; preds = %str_ok9
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %str.eq.merge
  %and.68.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp20, %and.68.else ]
  br label %choice.exit

str_ok25:                                         ; preds = %abort.dead34, %tag.slow_check28, %tag.gen_check27, %and.68.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len35 = load i64, ptr %s.read.len, align 8
  %s.read.len36 = and i64 %s.read.len35, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %s.read.data37 = load ptr, ptr %s.read.data, align 8
  %var.load38 = load i64, ptr %var.lp, align 8
  %rel.start = add i64 %s.read.len36, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len36
  %final.start = select i1 %start.gt.len, i64 %s.read.len36, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load38, 0
  %rel.end = add i64 %s.read.len36, %var.load38
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load38
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len36
  %final.end = select i1 %end.gt.len, i64 %s.read.len36, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data37, i64 %final.start
  %var.load39 = load ptr, ptr %var.prefix, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %cmp.str40 = load i64, ptr %cmp.str, align 8
  %cmp.str41 = and i64 %cmp.str40, 281474976710655
  %str.tag42 = lshr i64 %cmp.str40, 48
  %tag.immortal44 = icmp eq i64 %str.tag42, 0
  br i1 %tag.immortal44, label %str_ok43, label %tag.gen_check45

tag.gen_check27:                                  ; preds = %and.68.then
  %active.gen30 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok31 = icmp eq i64 %str.tag24, %active.gen30
  br i1 %tag.fast.ok31, label %str_ok25, label %tag.slow_check28

tag.slow_check28:                                 ; preds = %tag.gen_check27
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag24)
  br i1 %tag.valid33, label %str_ok25, label %tag.stale29

tag.stale29:                                      ; preds = %tag.slow_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %str_ok25

str_ok43:                                         ; preds = %abort.dead52, %tag.slow_check46, %tag.gen_check45, %str_ok25
  %cmp.str53 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %cmp.str54 = load ptr, ptr %cmp.str53, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str41
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check45:                                  ; preds = %str_ok25
  %active.gen48 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok49 = icmp eq i64 %str.tag42, %active.gen48
  br i1 %tag.fast.ok49, label %str_ok43, label %tag.slow_check46

tag.slow_check46:                                 ; preds = %tag.gen_check45
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid51 = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag42)
  br i1 %tag.valid51, label %str_ok43, label %tag.stale47

tag.stale47:                                      ; preds = %tag.slow_check46
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead52:                                     ; No predecessors!
  br label %str_ok43

str.eq.then:                                      ; preds = %str_ok43
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str54, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok43
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.68.exit
}

declare i32 @memcmp(ptr, ptr, i64) #0

define i1 @"str::ends_with"(ptr %0, ptr %1) #0 {
entry:
  %var.lf = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.suffix = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.suffix, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.suffix, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  br i1 %tag.immortal9, label %str_ok8, label %tag.gen_check10

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

str_ok8:                                          ; preds = %abort.dead17, %tag.slow_check11, %tag.gen_check10, %str_ok
  store i64 %str.len.query6, ptr %var.lf, align 8
  %var.load18 = load i64, ptr %var.lf, align 8
  %cmptmp = icmp eq i64 %var.load18, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check10:                                  ; preds = %str_ok
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok14 = icmp eq i64 %str.tag7, %active.gen13
  br i1 %tag.fast.ok14, label %str_ok8, label %tag.slow_check11

tag.slow_check11:                                 ; preds = %tag.gen_check10
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag7)
  br i1 %tag.valid16, label %str_ok8, label %tag.stale12

tag.stale12:                                      ; preds = %tag.slow_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %str_ok8

choice.then:                                      ; preds = %str_ok8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok8
  %var.load19 = load i64, ptr %var.ls, align 8
  %var.load20 = load i64, ptr %var.lf, align 8
  %cmptmp21 = icmp sge i64 %var.load19, %var.load20
  br i1 %cmptmp21, label %and.69.then, label %and.69.else

choice.exit:                                      ; preds = %and.69.exit, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %and.69.phi, %and.69.exit ]
  ret i1 %choice.res

and.69.then:                                      ; preds = %choice.else
  %var.load22 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.chk.len23 = load i64, ptr %s.chk.len, align 8
  %s.chk.len24 = and i64 %s.chk.len23, 281474976710655
  %str.tag25 = lshr i64 %s.chk.len23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  br i1 %tag.immortal27, label %str_ok26, label %tag.gen_check28

and.69.else:                                      ; preds = %choice.else
  br label %and.69.exit

and.69.exit:                                      ; preds = %and.69.else, %str.eq.merge
  %and.69.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp21, %and.69.else ]
  br label %choice.exit

str_ok26:                                         ; preds = %abort.dead35, %tag.slow_check29, %tag.gen_check28, %and.69.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len36 = load i64, ptr %s.read.len, align 8
  %s.read.len37 = and i64 %s.read.len36, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data38 = load ptr, ptr %s.read.data, align 8
  %var.load39 = load i64, ptr %var.ls, align 8
  %var.load40 = load i64, ptr %var.lf, align 8
  %subtmp = sub i64 %var.load39, %var.load40
  %var.load41 = load i64, ptr %var.ls, align 8
  %start.is_neg = icmp slt i64 %subtmp, 0
  %rel.start = add i64 %s.read.len37, %subtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len37
  %final.start = select i1 %start.gt.len, i64 %s.read.len37, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load41, 0
  %rel.end = add i64 %s.read.len37, %var.load41
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load41
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len37
  %final.end = select i1 %end.gt.len, i64 %s.read.len37, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data38, i64 %final.start
  %var.load42 = load ptr, ptr %var.suffix, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %cmp.str43 = load i64, ptr %cmp.str, align 8
  %cmp.str44 = and i64 %cmp.str43, 281474976710655
  %str.tag45 = lshr i64 %cmp.str43, 48
  %tag.immortal47 = icmp eq i64 %str.tag45, 0
  br i1 %tag.immortal47, label %str_ok46, label %tag.gen_check48

tag.gen_check28:                                  ; preds = %and.69.then
  %active.gen31 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok32 = icmp eq i64 %str.tag25, %active.gen31
  br i1 %tag.fast.ok32, label %str_ok26, label %tag.slow_check29

tag.slow_check29:                                 ; preds = %tag.gen_check28
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %str.tag25)
  br i1 %tag.valid34, label %str_ok26, label %tag.stale30

tag.stale30:                                      ; preds = %tag.slow_check29
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %str_ok26

str_ok46:                                         ; preds = %abort.dead55, %tag.slow_check49, %tag.gen_check48, %str_ok26
  %cmp.str56 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %cmp.str57 = load ptr, ptr %cmp.str56, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str44
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check48:                                  ; preds = %str_ok26
  %active.gen51 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok52 = icmp eq i64 %str.tag45, %active.gen51
  br i1 %tag.fast.ok52, label %str_ok46, label %tag.slow_check49

tag.slow_check49:                                 ; preds = %tag.gen_check48
  %arena.cur53 = call ptr @dva_arena_current()
  %tag.valid54 = call i1 @dva_arena_validate_tag(ptr %arena.cur53, i64 %str.tag45)
  br i1 %tag.valid54, label %str_ok46, label %tag.stale50

tag.stale50:                                      ; preds = %tag.slow_check49
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead55:                                     ; No predecessors!
  br label %str_ok46

str.eq.then:                                      ; preds = %str_ok46
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str57, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok46
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.69.exit
}

define { i1, i64 } @"str::find_from"(ptr %0, ptr %1, i64 %2) #0 {
entry:
  %var.hit = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.70 = alloca i64, align 8
  %loop.idx.70 = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.last_b = alloca i64, align 8
  %var.first_b = alloca i64, align 8
  %var.limit = alloca i64, align 8
  %var.pos = alloca i64, align 8
  %var.st = alloca i64, align 8
  %var.ln = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
  store i64 %2, ptr %var.start, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.needle, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  br i1 %tag.immortal9, label %str_ok8, label %tag.gen_check10

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

str_ok8:                                          ; preds = %abort.dead17, %tag.slow_check11, %tag.gen_check10, %str_ok
  store i64 %str.len.query6, ptr %var.ln, align 8
  %var.load18 = load i64, ptr %var.start, align 8
  %cmptmp = icmp slt i64 %var.load18, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check10:                                  ; preds = %str_ok
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok14 = icmp eq i64 %str.tag7, %active.gen13
  br i1 %tag.fast.ok14, label %str_ok8, label %tag.slow_check11

tag.slow_check11:                                 ; preds = %tag.gen_check10
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag7)
  br i1 %tag.valid16, label %str_ok8, label %tag.stale12

tag.stale12:                                      ; preds = %tag.slow_check11
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %str_ok8

choice.then:                                      ; preds = %str_ok8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok8
  %var.load19 = load i64, ptr %var.start, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load19, %choice.else ]
  store i64 %choice.res, ptr %var.st, align 8
  %var.load20 = load i64, ptr %var.ln, align 8
  %cmptmp21 = icmp eq i64 %var.load20, 0
  br i1 %cmptmp21, label %choice.then22, label %choice.else23

choice.then22:                                    ; preds = %choice.exit
  %var.load25 = load i64, ptr %var.st, align 8
  %var.load26 = load i64, ptr %var.ls, align 8
  %cmptmp27 = icmp sle i64 %var.load25, %var.load26
  br i1 %cmptmp27, label %choice.then28, label %choice.else29

choice.else23:                                    ; preds = %choice.exit
  %var.load33 = load i64, ptr %var.st, align 8
  %var.load34 = load i64, ptr %var.ln, align 8
  %addtmp = add i64 %var.load33, %var.load34
  %var.load35 = load i64, ptr %var.ls, align 8
  %cmptmp36 = icmp sgt i64 %addtmp, %var.load35
  br i1 %cmptmp36, label %choice.then37, label %choice.else38

choice.exit24:                                    ; preds = %choice.exit39, %choice.exit30
  %choice.res178 = phi { i1, i64 } [ %choice.res32, %choice.exit30 ], [ %choice.res177, %choice.exit39 ]
  ret { i1, i64 } %choice.res178

choice.then28:                                    ; preds = %choice.then22
  %var.load31 = load i64, ptr %var.st, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load31, 1
  br label %choice.exit30

choice.else29:                                    ; preds = %choice.then22
  br label %choice.exit30

choice.exit30:                                    ; preds = %choice.else29, %choice.then28
  %choice.res32 = phi { i1, i64 } [ %ram.pay, %choice.then28 ], [ zeroinitializer, %choice.else29 ]
  br label %choice.exit24

choice.then37:                                    ; preds = %choice.else23
  br label %choice.exit39

choice.else38:                                    ; preds = %choice.else23
  %var.load40 = load i64, ptr %var.ln, align 8
  %cmptmp41 = icmp eq i64 %var.load40, 1
  br i1 %cmptmp41, label %choice.then42, label %choice.else43

choice.exit39:                                    ; preds = %choice.exit44, %choice.then37
  %choice.res177 = phi { i1, i64 } [ zeroinitializer, %choice.then37 ], [ %choice.res176, %choice.exit44 ]
  br label %choice.exit24

choice.then42:                                    ; preds = %choice.else38
  %var.load45 = load ptr, ptr %var.s, align 8
  %var.load46 = load ptr, ptr %var.needle, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 0
  %s.read.len47 = load i64, ptr %s.read.len, align 8
  %s.read.len48 = and i64 %s.read.len47, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 1
  %s.read.data49 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

choice.else43:                                    ; preds = %choice.else38
  %var.load60 = load i64, ptr %var.ls, align 8
  %var.load61 = load i64, ptr %var.ln, align 8
  %subtmp = sub i64 %var.load60, %var.load61
  store i64 %subtmp, ptr %var.limit, align 8
  %var.load62 = load ptr, ptr %var.needle, align 8
  %s.read.len63 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 0
  %s.read.len64 = load i64, ptr %s.read.len63, align 8
  %s.read.len65 = and i64 %s.read.len64, 281474976710655
  %s.read.data66 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data66, align 8
  br i1 false, label %idx_oob70, label %idx_big_check68

choice.exit44:                                    ; preds = %loop.exit.70, %choice.exit56
  %choice.res176 = phi { i1, i64 } [ %choice.res59, %choice.exit56 ], [ zeroinitializer, %loop.exit.70 ]
  br label %choice.exit39

idx_big_check:                                    ; preds = %choice.then42
  %idx.big = icmp sge i64 0, %s.read.len48
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead50, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data49, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load51 = load i64, ptr %var.st, align 8
  %call.res = call i64 @"str::#find_byte_from"(ptr %var.load45, i64 %s.byte.val, i64 %var.load51)
  store i64 %call.res, ptr %var.pos, align 8
  %var.load52 = load i64, ptr %var.pos, align 8
  %cmptmp53 = icmp slt i64 %var.load52, 0
  br i1 %cmptmp53, label %choice.then54, label %choice.else55

idx_oob:                                          ; preds = %idx_big_check, %choice.then42
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %idx_ok

choice.then54:                                    ; preds = %idx_ok
  br label %choice.exit56

choice.else55:                                    ; preds = %idx_ok
  %var.load57 = load i64, ptr %var.pos, align 8
  %ram.pay58 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load57, 1
  br label %choice.exit56

choice.exit56:                                    ; preds = %choice.else55, %choice.then54
  %choice.res59 = phi { i1, i64 } [ zeroinitializer, %choice.then54 ], [ %ram.pay58, %choice.else55 ]
  br label %choice.exit44

idx_big_check68:                                  ; preds = %choice.else43
  %idx.big71 = icmp sge i64 0, %s.read.len65
  br i1 %idx.big71, label %idx_oob70, label %idx_ok69

idx_ok69:                                         ; preds = %abort.dead72, %idx_big_check68
  %s.byte.gep73 = getelementptr i8, ptr %s.read.data67, i64 0
  %s.byte74 = load i8, ptr %s.byte.gep73, align 1
  %s.byte.val75 = zext i8 %s.byte74 to i64
  store i64 %s.byte.val75, ptr %var.first_b, align 8
  %var.load76 = load ptr, ptr %var.needle, align 8
  %s.read.len77 = getelementptr inbounds { i64, ptr }, ptr %var.load76, i32 0, i32 0
  %s.read.len78 = load i64, ptr %s.read.len77, align 8
  %s.read.len79 = and i64 %s.read.len78, 281474976710655
  %s.read.data80 = getelementptr inbounds { i64, ptr }, ptr %var.load76, i32 0, i32 1
  %s.read.data81 = load ptr, ptr %s.read.data80, align 8
  %var.load82 = load i64, ptr %var.ln, align 8
  %subtmp83 = sub i64 %var.load82, 1
  %idx.neg = icmp slt i64 %subtmp83, 0
  br i1 %idx.neg, label %idx_oob86, label %idx_big_check84

idx_oob70:                                        ; preds = %idx_big_check68, %choice.else43
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %idx_ok69

idx_big_check84:                                  ; preds = %idx_ok69
  %idx.big87 = icmp sge i64 %subtmp83, %s.read.len79
  br i1 %idx.big87, label %idx_oob86, label %idx_ok85

idx_ok85:                                         ; preds = %abort.dead88, %idx_big_check84
  %s.byte.gep89 = getelementptr i8, ptr %s.read.data81, i64 %subtmp83
  %s.byte90 = load i8, ptr %s.byte.gep89, align 1
  %s.byte.val91 = zext i8 %s.byte90 to i64
  store i64 %s.byte.val91, ptr %var.last_b, align 8
  %var.load92 = load i64, ptr %var.st, align 8
  store i64 %var.load92, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.70, align 8
  br label %loop.header.70

idx_oob86:                                        ; preds = %idx_big_check84, %idx_ok69
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %idx_ok85

loop.header.70:                                   ; preds = %loop.latch.70, %idx_ok85
  %counter.load = load i64, ptr %loop.idx.70, align 8
  br label %loop.body.70

loop.body.70:                                     ; preds = %loop.header.70
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.70, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load93 = load ptr, ptr %var.s, align 8
  %var.load94 = load i64, ptr %var.first_b, align 8
  %var.load95 = load i64, ptr %"var.pos'", align 8
  %call.res96 = call i64 @"str::#find_byte_from"(ptr %var.load93, i64 %var.load94, i64 %var.load95)
  store i64 %call.res96, ptr %var.hit, align 8
  %var.load97 = load i64, ptr %var.hit, align 8
  %cmptmp98 = icmp slt i64 %var.load97, 0
  br i1 %cmptmp98, label %or.71.then, label %or.71.else

loop.exit.nat.70:                                 ; No predecessors!
  br label %loop.exit.70

loop.latch.70:                                    ; preds = %choice.exit170
  %step.val = load i64, ptr %loop.step.70, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.exit.70:                                     ; preds = %loop.exit.nat.70
  br label %choice.exit44

or.71.then:                                       ; preds = %loop.body.70
  br label %or.71.exit

or.71.else:                                       ; preds = %loop.body.70
  %var.load99 = load i64, ptr %var.hit, align 8
  %var.load100 = load i64, ptr %var.limit, align 8
  %cmptmp101 = icmp sgt i64 %var.load99, %var.load100
  br label %or.71.exit

or.71.exit:                                       ; preds = %or.71.else, %or.71.then
  %or.71.phi = phi i1 [ %cmptmp98, %or.71.then ], [ %cmptmp101, %or.71.else ]
  br i1 %or.71.phi, label %choice.then102, label %choice.exit103

choice.then102:                                   ; preds = %or.71.exit
  ret { i1, i64 } zeroinitializer

choice.exit103:                                   ; preds = %ret.dead, %or.71.exit
  %var.load104 = load ptr, ptr %var.s, align 8
  %s.read.len105 = getelementptr inbounds { i64, ptr }, ptr %var.load104, i32 0, i32 0
  %s.read.len106 = load i64, ptr %s.read.len105, align 8
  %s.read.len107 = and i64 %s.read.len106, 281474976710655
  %s.read.data108 = getelementptr inbounds { i64, ptr }, ptr %var.load104, i32 0, i32 1
  %s.read.data109 = load ptr, ptr %s.read.data108, align 8
  %var.load110 = load i64, ptr %var.hit, align 8
  %var.load111 = load i64, ptr %var.ln, align 8
  %addtmp112 = add i64 %var.load110, %var.load111
  %subtmp113 = sub i64 %addtmp112, 1
  %idx.neg114 = icmp slt i64 %subtmp113, 0
  br i1 %idx.neg114, label %idx_oob117, label %idx_big_check115

ret.dead:                                         ; No predecessors!
  br label %choice.exit103

idx_big_check115:                                 ; preds = %choice.exit103
  %idx.big118 = icmp sge i64 %subtmp113, %s.read.len107
  br i1 %idx.big118, label %idx_oob117, label %idx_ok116

idx_ok116:                                        ; preds = %abort.dead119, %idx_big_check115
  %s.byte.gep120 = getelementptr i8, ptr %s.read.data109, i64 %subtmp113
  %s.byte121 = load i8, ptr %s.byte.gep120, align 1
  %s.byte.val122 = zext i8 %s.byte121 to i64
  %var.load123 = load i64, ptr %var.last_b, align 8
  %cmptmp124 = icmp eq i64 %s.byte.val122, %var.load123
  br i1 %cmptmp124, label %and.72.then, label %and.72.else

idx_oob117:                                       ; preds = %idx_big_check115, %choice.exit103
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead119:                                    ; No predecessors!
  br label %idx_ok116

and.72.then:                                      ; preds = %idx_ok116
  %var.load125 = load i64, ptr %var.ln, align 8
  %cmptmp126 = icmp eq i64 %var.load125, 2
  br i1 %cmptmp126, label %or.73.then, label %or.73.else

and.72.else:                                      ; preds = %idx_ok116
  br label %and.72.exit

and.72.exit:                                      ; preds = %and.72.else, %or.73.exit
  %and.72.phi = phi i1 [ %or.73.phi, %or.73.exit ], [ %cmptmp124, %and.72.else ]
  br i1 %and.72.phi, label %choice.then169, label %choice.exit170

or.73.then:                                       ; preds = %and.72.then
  br label %or.73.exit

or.73.else:                                       ; preds = %and.72.then
  %var.load127 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load127, i32 0, i32 0
  %s.chk.len128 = load i64, ptr %s.chk.len, align 8
  %s.chk.len129 = and i64 %s.chk.len128, 281474976710655
  %s.read.len130 = getelementptr inbounds { i64, ptr }, ptr %var.load127, i32 0, i32 0
  %s.read.len131 = load i64, ptr %s.read.len130, align 8
  %s.read.len132 = and i64 %s.read.len131, 281474976710655
  %s.read.data133 = getelementptr inbounds { i64, ptr }, ptr %var.load127, i32 0, i32 1
  %s.read.data134 = load ptr, ptr %s.read.data133, align 8
  %var.load135 = load i64, ptr %var.hit, align 8
  %addtmp136 = add i64 %var.load135, 1
  %var.load137 = load i64, ptr %var.hit, align 8
  %var.load138 = load i64, ptr %var.ln, align 8
  %addtmp139 = add i64 %var.load137, %var.load138
  %subtmp140 = sub i64 %addtmp139, 1
  %start.is_neg = icmp slt i64 %addtmp136, 0
  %rel.start = add i64 %s.read.len132, %addtmp136
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp136
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len132
  %final.start = select i1 %start.gt.len, i64 %s.read.len132, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp140, 0
  %rel.end = add i64 %s.read.len132, %subtmp140
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp140
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len132
  %final.end = select i1 %end.gt.len, i64 %s.read.len132, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data134, i64 %final.start
  %var.load141 = load ptr, ptr %var.needle, align 8
  %s.chk.len142 = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 0
  %s.chk.len143 = load i64, ptr %s.chk.len142, align 8
  %s.chk.len144 = and i64 %s.chk.len143, 281474976710655
  %s.read.len145 = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 0
  %s.read.len146 = load i64, ptr %s.read.len145, align 8
  %s.read.len147 = and i64 %s.read.len146, 281474976710655
  %s.read.data148 = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 1
  %s.read.data149 = load ptr, ptr %s.read.data148, align 8
  %var.load150 = load i64, ptr %var.ln, align 8
  %subtmp151 = sub i64 %var.load150, 1
  %rel.start152 = add i64 %s.read.len147, 1
  %norm.start153 = select i1 false, i64 %rel.start152, i64 1
  %start.lt.0154 = icmp slt i64 %norm.start153, 0
  %c.start.0155 = select i1 %start.lt.0154, i64 0, i64 %norm.start153
  %start.gt.len156 = icmp sgt i64 %c.start.0155, %s.read.len147
  %final.start157 = select i1 %start.gt.len156, i64 %s.read.len147, i64 %c.start.0155
  %end.is_neg158 = icmp slt i64 %subtmp151, 0
  %rel.end159 = add i64 %s.read.len147, %subtmp151
  %norm.end160 = select i1 %end.is_neg158, i64 %rel.end159, i64 %subtmp151
  %end.lt.0161 = icmp slt i64 %norm.end160, 0
  %c.end.0162 = select i1 %end.lt.0161, i64 0, i64 %norm.end160
  %end.gt.len163 = icmp sgt i64 %c.end.0162, %s.read.len147
  %final.end164 = select i1 %end.gt.len163, i64 %s.read.len147, i64 %c.end.0162
  %view.empty165 = icmp sle i64 %final.end164, %final.start157
  %view.len.sub166 = sub i64 %final.end164, %final.start157
  %view.len167 = select i1 %view.empty165, i64 0, i64 %view.len.sub166
  %view.data168 = getelementptr i8, ptr %s.read.data149, i64 %final.start157
  %eq.len = icmp eq i64 %view.len, %view.len167
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

or.73.exit:                                       ; preds = %str.eq.merge, %or.73.then
  %or.73.phi = phi i1 [ %cmptmp126, %or.73.then ], [ %str.eq.result, %str.eq.merge ]
  br label %and.72.exit

str.eq.then:                                      ; preds = %or.73.else
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %view.data168, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %or.73.else
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %or.73.exit

choice.then169:                                   ; preds = %and.72.exit
  %var.load171 = load i64, ptr %var.hit, align 8
  %ram.pay172 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load171, 1
  ret { i1, i64 } %ram.pay172

choice.exit170:                                   ; preds = %ret.dead173, %and.72.exit
  %var.load174 = load i64, ptr %var.hit, align 8
  %addtmp175 = add i64 %var.load174, 1
  store i64 %addtmp175, ptr %"var.pos'", align 8
  br label %loop.latch.70

ret.dead173:                                      ; No predecessors!
  br label %choice.exit170
}

define { i1, i64 } @"str::find"(ptr %0, ptr %1) #0 {
entry:
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.needle, align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load, ptr %var.load1, i64 0)
  ret { i1, i64 } %call.res
}

define { i1, i64 } @"str::rfind"(ptr %0, ptr %1) #0 {
entry:
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.74 = alloca i64, align 8
  %loop.idx.74 = alloca i64, align 8
  %var.first_b = alloca i64, align 8
  %var.span = alloca i64, align 8
  %var.ln = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.needle, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  br i1 %tag.immortal9, label %str_ok8, label %tag.gen_check10

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

str_ok8:                                          ; preds = %abort.dead17, %tag.slow_check11, %tag.gen_check10, %str_ok
  store i64 %str.len.query6, ptr %var.ln, align 8
  %var.load18 = load i64, ptr %var.ln, align 8
  %cmptmp = icmp eq i64 %var.load18, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check10:                                  ; preds = %str_ok
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok14 = icmp eq i64 %str.tag7, %active.gen13
  br i1 %tag.fast.ok14, label %str_ok8, label %tag.slow_check11

tag.slow_check11:                                 ; preds = %tag.gen_check10
  %arena.cur15 = call ptr @dva_arena_current()
  %tag.valid16 = call i1 @dva_arena_validate_tag(ptr %arena.cur15, i64 %str.tag7)
  br i1 %tag.valid16, label %str_ok8, label %tag.stale12

tag.stale12:                                      ; preds = %tag.slow_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %str_ok8

choice.then:                                      ; preds = %str_ok8
  %var.load19 = load i64, ptr %var.ls, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load19, 1
  br label %choice.exit

choice.else:                                      ; preds = %str_ok8
  %var.load20 = load i64, ptr %var.ln, align 8
  %var.load21 = load i64, ptr %var.ls, align 8
  %cmptmp22 = icmp sgt i64 %var.load20, %var.load21
  br i1 %cmptmp22, label %choice.then23, label %choice.else24

choice.exit:                                      ; preds = %choice.exit25, %choice.then
  %choice.res77 = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %choice.res, %choice.exit25 ]
  ret { i1, i64 } %choice.res77

choice.then23:                                    ; preds = %choice.else
  br label %choice.exit25

choice.else24:                                    ; preds = %choice.else
  %var.load26 = load i64, ptr %var.ls, align 8
  %var.load27 = load i64, ptr %var.ln, align 8
  %subtmp = sub i64 %var.load26, %var.load27
  %addtmp = add i64 %subtmp, 1
  store i64 %addtmp, ptr %var.span, align 8
  %var.load28 = load ptr, ptr %var.needle, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

choice.exit25:                                    ; preds = %loop.exit.74, %choice.then23
  %choice.res = phi { i1, i64 } [ zeroinitializer, %choice.then23 ], [ zeroinitializer, %loop.exit.74 ]
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.else24
  %idx.big = icmp sge i64 0, %s.read.len30
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead32, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data31, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.first_b, align 8
  %var.load33 = load i64, ptr %var.span, align 8
  store i64 0, ptr %loop.idx.74, align 8
  br label %loop.header.74

idx_oob:                                          ; preds = %idx_big_check, %choice.else24
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %idx_ok

loop.header.74:                                   ; preds = %loop.latch.74, %idx_ok
  %counter.load = load i64, ptr %loop.idx.74, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load33
  br i1 %loop.cond, label %loop.body.74, label %loop.exit.nat.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load34 = load i64, ptr %var.ls, align 8
  %var.load35 = load i64, ptr %var.ln, align 8
  %subtmp36 = sub i64 %var.load34, %var.load35
  %var.load37 = load i64, ptr %var.k, align 8
  %subtmp38 = sub i64 %subtmp36, %var.load37
  store i64 %subtmp38, ptr %var.i, align 8
  %var.load39 = load ptr, ptr %var.s, align 8
  %s.read.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %s.read.len41 = load i64, ptr %s.read.len40, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %s.read.data43 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %s.read.data44 = load ptr, ptr %s.read.data43, align 8
  %var.load45 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load45, 0
  br i1 %idx.neg, label %idx_oob48, label %idx_big_check46

loop.exit.nat.74:                                 ; preds = %loop.header.74
  br label %loop.exit.74

loop.latch.74:                                    ; preds = %choice.exit74
  %step.val = load i64, ptr %loop.step.74, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.74, align 8
  br label %loop.header.74

loop.exit.74:                                     ; preds = %loop.exit.nat.74
  br label %choice.exit25

idx_big_check46:                                  ; preds = %loop.body.74
  %idx.big49 = icmp sge i64 %var.load45, %s.read.len42
  br i1 %idx.big49, label %idx_oob48, label %idx_ok47

idx_ok47:                                         ; preds = %abort.dead50, %idx_big_check46
  %s.byte.gep51 = getelementptr i8, ptr %s.read.data44, i64 %var.load45
  %s.byte52 = load i8, ptr %s.byte.gep51, align 1
  %s.byte.val53 = zext i8 %s.byte52 to i64
  %var.load54 = load i64, ptr %var.first_b, align 8
  %cmptmp55 = icmp eq i64 %s.byte.val53, %var.load54
  br i1 %cmptmp55, label %and.75.then, label %and.75.else

idx_oob48:                                        ; preds = %idx_big_check46, %loop.body.74
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %idx_ok47

and.75.then:                                      ; preds = %idx_ok47
  %var.load56 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %s.chk.len57 = load i64, ptr %s.chk.len, align 8
  %s.chk.len58 = and i64 %s.chk.len57, 281474976710655
  %s.read.len59 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %s.read.len60 = load i64, ptr %s.read.len59, align 8
  %s.read.len61 = and i64 %s.read.len60, 281474976710655
  %s.read.data62 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %s.read.data63 = load ptr, ptr %s.read.data62, align 8
  %var.load64 = load i64, ptr %var.i, align 8
  %var.load65 = load i64, ptr %var.i, align 8
  %var.load66 = load i64, ptr %var.ln, align 8
  %addtmp67 = add i64 %var.load65, %var.load66
  %start.is_neg = icmp slt i64 %var.load64, 0
  %rel.start = add i64 %s.read.len61, %var.load64
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load64
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len61
  %final.start = select i1 %start.gt.len, i64 %s.read.len61, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp67, 0
  %rel.end = add i64 %s.read.len61, %addtmp67
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp67
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len61
  %final.end = select i1 %end.gt.len, i64 %s.read.len61, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data63, i64 %final.start
  %var.load68 = load ptr, ptr %var.needle, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 0
  %cmp.str69 = load i64, ptr %cmp.str, align 8
  %cmp.str70 = and i64 %cmp.str69, 281474976710655
  %cmp.str71 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 1
  %cmp.str72 = load ptr, ptr %cmp.str71, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str70
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.75.else:                                      ; preds = %idx_ok47
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %str.eq.merge
  %and.75.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp55, %and.75.else ]
  br i1 %and.75.phi, label %choice.then73, label %choice.exit74

str.eq.then:                                      ; preds = %and.75.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str72, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.75.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.75.exit

choice.then73:                                    ; preds = %and.75.exit
  %var.load75 = load i64, ptr %var.i, align 8
  %ram.pay76 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load75, 1
  ret { i1, i64 } %ram.pay76

choice.exit74:                                    ; preds = %ret.dead, %and.75.exit
  br label %loop.latch.74

ret.dead:                                         ; No predecessors!
  br label %choice.exit74
}

define i1 @"str::contains"(ptr %0, ptr %1) #0 {
entry:
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.needle, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  ret i1 %ram.tag
}

define i64 @"str::count"(ptr %0, ptr %1) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._31 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.76 = alloca i64, align 8
  %loop.idx.76 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.ln = alloca i64, align 8
  %var.needle = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.needle, align 8
  %var.load = load ptr, ptr %var.needle, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.ln, align 8
  %var.load3 = load i64, ptr %var.ln, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
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
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  br i1 %tag.immortal10, label %str_ok9, label %tag.gen_check11

choice.exit:                                      ; preds = %loop.exit.76, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load37, %loop.exit.76 ]
  ret i64 %choice.res

str_ok9:                                          ; preds = %abort.dead18, %tag.slow_check12, %tag.gen_check11, %choice.else
  store i64 %str.len.query7, ptr %var.ls, align 8
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.76, align 8
  br label %loop.header.76

tag.gen_check11:                                  ; preds = %choice.else
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok15 = icmp eq i64 %str.tag8, %active.gen14
  br i1 %tag.fast.ok15, label %str_ok9, label %tag.slow_check12

tag.slow_check12:                                 ; preds = %tag.gen_check11
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag8)
  br i1 %tag.valid17, label %str_ok9, label %tag.stale13

tag.stale13:                                      ; preds = %tag.slow_check12
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %str_ok9

loop.header.76:                                   ; preds = %loop.latch.76, %str_ok9
  %counter.load = load i64, ptr %loop.idx.76, align 8
  br label %loop.body.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load19 = load i64, ptr %"var.pos'", align 8
  %var.load20 = load i64, ptr %var.ln, align 8
  %addtmp = add i64 %var.load19, %var.load20
  %var.load21 = load i64, ptr %var.ls, align 8
  %cmptmp22 = icmp sgt i64 %addtmp, %var.load21
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

loop.exit.nat.76:                                 ; No predecessors!
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit30
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %choice.else29, %choice.then23, %loop.exit.nat.76
  %var.load37 = load i64, ptr %"var.n'", align 8
  br label %choice.exit

choice.then23:                                    ; preds = %loop.body.76
  br label %loop.exit.76

choice.exit24:                                    ; preds = %loop.body.76
  %var.load25 = load ptr, ptr %var.s, align 8
  %var.load26 = load ptr, ptr %var.needle, align 8
  %var.load27 = load i64, ptr %"var.pos'", align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load25, ptr %var.load26, i64 %var.load27)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then28, label %choice.else29

choice.then28:                                    ; preds = %choice.exit24
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._31, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load32 = load i64, ptr %"var.n'", align 8
  %addtmp33 = add i64 %var.load32, 1
  store i64 %addtmp33, ptr %"var.n'", align 8
  %var.load34 = load i64, ptr %var.idx, align 8
  %var.load35 = load i64, ptr %var.ln, align 8
  %addtmp36 = add i64 %var.load34, %var.load35
  store i64 %addtmp36, ptr %"var.pos'", align 8
  br label %choice.exit30

choice.else29:                                    ; preds = %choice.exit24
  br label %loop.exit.76

choice.exit30:                                    ; preds = %choice.then28
  br label %loop.latch.76
}

define { i64, ptr } @"str::trim_start"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.77 = alloca i64, align 8
  %loop.idx.77 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.77, align 8
  br label %loop.header.77

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

loop.header.77:                                   ; preds = %loop.latch.77, %str_ok
  %counter.load = load i64, ptr %loop.idx.77, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load3
  br i1 %loop.cond, label %loop.body.77, label %loop.exit.nat.77

loop.body.77:                                     ; preds = %loop.header.77
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.77, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load4 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %s.read.len5 = load i64, ptr %s.read.len, align 8
  %s.read.len6 = and i64 %s.read.len5, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %var.load8 = load i64, ptr %var.k, align 8
  %idx.neg = icmp slt i64 %var.load8, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.77:                                 ; preds = %loop.header.77
  br label %loop.exit.77

loop.latch.77:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.77, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.exit.77:                                     ; preds = %choice.else, %loop.exit.nat.77
  %var.load11 = load i64, ptr %"var.i'", align 8
  %cmptmp = icmp eq i64 %var.load11, 0
  br i1 %cmptmp, label %choice.then12, label %choice.else13

idx_big_check:                                    ; preds = %loop.body.77
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead9, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.77
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead9:                                      ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load10 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load10, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.77

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.77

choice.then12:                                    ; preds = %loop.exit.77
  %var.load15 = load ptr, ptr %var.s, align 8
  br label %choice.exit14

choice.else13:                                    ; preds = %loop.exit.77
  %var.load16 = load ptr, ptr %var.s, align 8
  %s.read.len17 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len17, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data20 = getelementptr inbounds { i64, ptr }, ptr %var.load16, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data20, align 8
  %var.load22 = load i64, ptr %"var.i'", align 8
  %var.load23 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load22, 0
  %rel.start = add i64 %s.read.len19, %var.load22
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load22
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len19
  %final.start = select i1 %start.gt.len, i64 %s.read.len19, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load23, 0
  %rel.end = add i64 %s.read.len19, %var.load23
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load23
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len19
  %final.end = select i1 %end.gt.len, i64 %s.read.len19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data21, i64 %final.start
  %arena.cur24 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit14

choice.exit14:                                    ; preds = %choice.else13, %choice.then12
  %choice.res = phi ptr [ %var.load15, %choice.then12 ], [ %str.view, %choice.else13 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"str::trim_end"(ptr %0) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.k = alloca i64, align 8
  %loop.step.78 = alloca i64, align 8
  %loop.idx.78 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 %var.load3, ptr %"var.end'", align 8
  %var.load4 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.78, align 8
  br label %loop.header.78

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

loop.header.78:                                   ; preds = %loop.latch.78, %str_ok
  %counter.load = load i64, ptr %loop.idx.78, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load4
  br i1 %loop.cond, label %loop.body.78, label %loop.exit.nat.78

loop.body.78:                                     ; preds = %loop.header.78
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.78, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load5, 1
  %var.load6 = load i64, ptr %var.k, align 8
  %subtmp7 = sub i64 %subtmp, %var.load6
  store i64 %subtmp7, ptr %var.idx, align 8
  %var.load8 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %var.load12 = load i64, ptr %var.idx, align 8
  %idx.neg = icmp slt i64 %var.load12, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.78:                                 ; preds = %loop.header.78
  br label %loop.exit.78

loop.latch.78:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.78, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.exit.78:                                     ; preds = %choice.else, %loop.exit.nat.78
  %var.load15 = load i64, ptr %"var.end'", align 8
  %var.load16 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load15, %var.load16
  br i1 %cmptmp, label %choice.then17, label %choice.else18

idx_big_check:                                    ; preds = %loop.body.78
  %idx.big = icmp sge i64 %var.load12, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead13, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.78
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load14 = load i64, ptr %var.idx, align 8
  store i64 %var.load14, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.78

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.78

choice.then17:                                    ; preds = %loop.exit.78
  %var.load20 = load ptr, ptr %var.s, align 8
  br label %choice.exit19

choice.else18:                                    ; preds = %loop.exit.78
  %var.load21 = load ptr, ptr %var.s, align 8
  %s.read.len22 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len22, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data25 = getelementptr inbounds { i64, ptr }, ptr %var.load21, i32 0, i32 1
  %s.read.data26 = load ptr, ptr %s.read.data25, align 8
  %var.load27 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len24, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len24
  %final.start = select i1 %start.gt.len, i64 %s.read.len24, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load27, 0
  %rel.end = add i64 %s.read.len24, %var.load27
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load27
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len24
  %final.end = select i1 %end.gt.len, i64 %s.read.len24, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data26, i64 %final.start
  %arena.cur28 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else18, %choice.then17
  %choice.res = phi ptr [ %var.load20, %choice.then17 ], [ %str.view, %choice.else18 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"str::trim"(ptr %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %call.res = call { i64, ptr } @"str::trim_start"(ptr %var.load)
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %call.res1 = call { i64, ptr } @"str::trim_end"(ptr %ret.ub.alloc)
  store { i64, ptr } %call.res1, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"str::trim_prefix"(ptr %0, ptr %1) #0 {
entry:
  %var.prefix = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.prefix, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.prefix, align 8
  %call.res = call i1 @"str::starts_with"(ptr %var.load, ptr %var.load1)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %s.read.len3 = load i64, ptr %s.read.len, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load ptr, ptr %var.prefix, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag = lshr i64 %str.len.query7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.else:                                      ; preds = %entry
  %var.load25 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok14
  %choice.res = phi ptr [ %str.view, %str_ok14 ], [ %var.load25, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  %var.load9 = load ptr, ptr %var.s, align 8
  %str.len.query10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag13 = lshr i64 %str.len.query11, 48
  %tag.immortal15 = icmp eq i64 %str.tag13, 0
  br i1 %tag.immortal15, label %str_ok14, label %tag.gen_check16

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

str_ok14:                                         ; preds = %abort.dead23, %tag.slow_check17, %tag.gen_check16, %str_ok
  %start.is_neg = icmp slt i64 %str.len.query8, 0
  %rel.start = add i64 %s.read.len4, %str.len.query8
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %str.len.query8
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len4
  %final.start = select i1 %start.gt.len, i64 %s.read.len4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %str.len.query12, 0
  %rel.end = add i64 %s.read.len4, %str.len.query12
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %str.len.query12
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data5, i64 %final.start
  %arena.cur24 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

tag.gen_check16:                                  ; preds = %str_ok
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok20 = icmp eq i64 %str.tag13, %active.gen19
  br i1 %tag.fast.ok20, label %str_ok14, label %tag.slow_check17

tag.slow_check17:                                 ; preds = %tag.gen_check16
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag13)
  br i1 %tag.valid22, label %str_ok14, label %tag.stale18

tag.stale18:                                      ; preds = %tag.slow_check17
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %str_ok14
}

define { i64, ptr } @"str::trim_suffix"(ptr %0, ptr %1) #0 {
entry:
  %var.suffix = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.suffix, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.suffix, align 8
  %call.res = call i1 @"str::ends_with"(ptr %var.load, ptr %var.load1)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %s.read.len3 = load i64, ptr %s.read.len, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag = lshr i64 %str.len.query7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.else:                                      ; preds = %entry
  %var.load25 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok14
  %choice.res = phi ptr [ %str.view, %str_ok14 ], [ %var.load25, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  %var.load9 = load ptr, ptr %var.suffix, align 8
  %str.len.query10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag13 = lshr i64 %str.len.query11, 48
  %tag.immortal15 = icmp eq i64 %str.tag13, 0
  br i1 %tag.immortal15, label %str_ok14, label %tag.gen_check16

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

str_ok14:                                         ; preds = %abort.dead23, %tag.slow_check17, %tag.gen_check16, %str_ok
  %subtmp = sub i64 %str.len.query8, %str.len.query12
  %rel.start = add i64 %s.read.len4, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len4
  %final.start = select i1 %start.gt.len, i64 %s.read.len4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp, 0
  %rel.end = add i64 %s.read.len4, %subtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data5, i64 %final.start
  %arena.cur24 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

tag.gen_check16:                                  ; preds = %str_ok
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok20 = icmp eq i64 %str.tag13, %active.gen19
  br i1 %tag.fast.ok20, label %str_ok14, label %tag.slow_check17

tag.slow_check17:                                 ; preds = %tag.gen_check16
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %str.tag13)
  br i1 %tag.valid22, label %str_ok14, label %tag.stale18

tag.stale18:                                      ; preds = %tag.slow_check17
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %str_ok14
}

define ptr @"str::split_once"(ptr %0, ptr %1) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.sep = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.sep, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.sep, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load, ptr %var.load1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %s.read.len3 = load i64, ptr %s.read.len, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %var.load6 = load i64, ptr %var.idx, align 8
  %rel.start = add i64 %s.read.len4, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len4
  %final.start = select i1 %start.gt.len, i64 %s.read.len4, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load6, 0
  %rel.end = add i64 %s.read.len4, %var.load6
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load6
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data5, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %var.load7 = load ptr, ptr %var.s, align 8
  %s.read.len8 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len8, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data11 = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data11, align 8
  %var.load13 = load i64, ptr %var.idx, align 8
  %var.load14 = load ptr, ptr %var.sep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %str.len.query15 = load i64, ptr %str.len.query, align 8
  %str.len.query16 = and i64 %str.len.query15, 281474976710655
  %str.tag = lshr i64 %str.len.query15, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok23
  %choice.res = phi ptr [ %rec.alloc, %str_ok23 ], [ null, %choice.else ]
  ret ptr %choice.res

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  %addtmp = add i64 %var.load13, %str.len.query16
  %var.load18 = load ptr, ptr %var.s, align 8
  %str.len.query19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %str.len.query20 = load i64, ptr %str.len.query19, align 8
  %str.len.query21 = and i64 %str.len.query20, 281474976710655
  %str.tag22 = lshr i64 %str.len.query20, 48
  %tag.immortal24 = icmp eq i64 %str.tag22, 0
  br i1 %tag.immortal24, label %str_ok23, label %tag.gen_check25

tag.gen_check:                                    ; preds = %choice.then
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok23:                                         ; preds = %abort.dead32, %tag.slow_check26, %tag.gen_check25, %str_ok
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start33 = add i64 %s.read.len10, %addtmp
  %norm.start34 = select i1 %start.is_neg, i64 %rel.start33, i64 %addtmp
  %start.lt.035 = icmp slt i64 %norm.start34, 0
  %c.start.036 = select i1 %start.lt.035, i64 0, i64 %norm.start34
  %start.gt.len37 = icmp sgt i64 %c.start.036, %s.read.len10
  %final.start38 = select i1 %start.gt.len37, i64 %s.read.len10, i64 %c.start.036
  %end.is_neg39 = icmp slt i64 %str.len.query21, 0
  %rel.end40 = add i64 %s.read.len10, %str.len.query21
  %norm.end41 = select i1 %end.is_neg39, i64 %rel.end40, i64 %str.len.query21
  %end.lt.042 = icmp slt i64 %norm.end41, 0
  %c.end.043 = select i1 %end.lt.042, i64 0, i64 %norm.end41
  %end.gt.len44 = icmp sgt i64 %c.end.043, %s.read.len10
  %final.end45 = select i1 %end.gt.len44, i64 %s.read.len10, i64 %c.end.043
  %view.empty46 = icmp sle i64 %final.end45, %final.start38
  %view.len.sub47 = sub i64 %final.end45, %final.start38
  %view.len48 = select i1 %view.empty46, i64 0, i64 %view.len.sub47
  %view.data49 = getelementptr i8, ptr %s.read.data12, i64 %final.start38
  %arena.cur50 = call ptr @dva_arena_current()
  %str.view51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 16)
  %str.build.len.gep52 = getelementptr inbounds { i64, ptr }, ptr %str.view51, i32 0, i32 0
  store i64 %view.len48, ptr %str.build.len.gep52, align 8
  %str.build.data.gep53 = getelementptr inbounds { i64, ptr }, ptr %str.view51, i32 0, i32 1
  store ptr %view.data49, ptr %str.build.data.gep53, align 8
  %arena.cur54 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %str.view, ptr %rec.fld, align 8
  %rec.fld55 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view51, ptr %rec.fld55, align 8
  br label %choice.exit

tag.gen_check25:                                  ; preds = %str_ok
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok29 = icmp eq i64 %str.tag22, %active.gen28
  br i1 %tag.fast.ok29, label %str_ok23, label %tag.slow_check26

tag.slow_check26:                                 ; preds = %tag.gen_check25
  %arena.cur30 = call ptr @dva_arena_current()
  %tag.valid31 = call i1 @dva_arena_validate_tag(ptr %arena.cur30, i64 %str.tag22)
  br i1 %tag.valid31, label %str_ok23, label %tag.stale27

tag.stale27:                                      ; preds = %tag.slow_check26
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead32:                                     ; No predecessors!
  br label %str_ok23
}

define ptr @"str::split"(ptr %0, ptr %1) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._63 = alloca i64, align 8
  %var._56 = alloca i64, align 8
  %var._i55 = alloca i64, align 8
  %loop.step.81 = alloca i64, align 8
  %loop.idx.81 = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.80 = alloca i64, align 8
  %loop.idx.80 = alloca i64, align 8
  %var.lsep = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.sep = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.sep, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.ls, align 8
  %var.load5 = load ptr, ptr %var.sep, align 8
  %str.len.query6 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query6, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag9 = lshr i64 %str.len.query7, 48
  %tag.immortal11 = icmp eq i64 %str.tag9, 0
  br i1 %tag.immortal11, label %str_ok10, label %tag.gen_check12

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok10:                                         ; preds = %abort.dead19, %tag.slow_check13, %tag.gen_check12, %str_ok
  store i64 %str.len.query8, ptr %var.lsep, align 8
  %var.load20 = load i64, ptr %var.lsep, align 8
  %cmptmp = icmp eq i64 %var.load20, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check12:                                  ; preds = %str_ok
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok16 = icmp eq i64 %str.tag9, %active.gen15
  br i1 %tag.fast.ok16, label %str_ok10, label %tag.slow_check13

tag.slow_check13:                                 ; preds = %tag.gen_check12
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag9)
  br i1 %tag.valid18, label %str_ok10, label %tag.stale14

tag.stale14:                                      ; preds = %tag.slow_check13
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %str_ok10

choice.then:                                      ; preds = %str_ok10
  %var.load21 = load i64, ptr %var.ls, align 8
  store i64 0, ptr %loop.idx.80, align 8
  br label %loop.header.80

choice.else:                                      ; preds = %str_ok10
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

choice.exit:                                      ; preds = %a.after189, %a.after44
  %choice.res = phi ptr [ %a.load252, %a.after44 ], [ %a.load2197, %a.after189 ]
  ret ptr %choice.res

loop.header.80:                                   ; preds = %loop.latch.80, %choice.then
  %counter.load = load i64, ptr %loop.idx.80, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load21
  br i1 %loop.cond, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.80, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load22 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 0
  %s.read.len23 = load i64, ptr %s.read.len, align 8
  %s.read.len24 = and i64 %s.read.len23, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load22, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data, align 8
  %var.load26 = load i64, ptr %var.i, align 8
  %var.load27 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load27, 1
  %start.is_neg = icmp slt i64 %var.load26, 0
  %rel.start = add i64 %s.read.len24, %var.load26
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load26
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len24
  %final.start = select i1 %start.gt.len, i64 %s.read.len24, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %s.read.len24, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len24
  %final.end = select i1 %end.gt.len, i64 %s.read.len24, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data25, i64 %final.start
  %arena.cur28 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

loop.exit.nat.80:                                 ; preds = %loop.header.80
  br label %loop.exit.80

loop.latch.80:                                    ; preds = %a.store
  %step.val = load i64, ptr %loop.step.80, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.80, align 8
  br label %loop.header.80

loop.exit.80:                                     ; preds = %loop.exit.nat.80
  %var.load40 = load ptr, ptr %var.out, align 8
  %a.load41 = load ptr, ptr %var.out, align 8
  %a.null42 = icmp eq ptr %a.load41, null
  br i1 %a.null42, label %a.create43, label %a.after44

a.create:                                         ; preds = %loop.body.80
  %arena.cur29 = call ptr @dva_arena_current()
  %a.create30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %arena.cur31 = call ptr @dva_arena_current()
  %a.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 128)
  %a.len.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 0
  store i64 0, ptr %a.len.gep33, align 8
  %a.data.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 1
  store ptr %a.buf32, ptr %a.data.gep34, align 8
  %a.cap.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create30, i32 0, i32 2
  store i64 16, ptr %a.cap.gep35, align 8
  store ptr %a.create30, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.80
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len36 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap37 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len36, %a.cap37
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data38 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len39 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data38, i64 %a.cur.len39
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len39, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.80

a.create43:                                       ; preds = %loop.exit.80
  %arena.cur45 = call ptr @dva_arena_current()
  %a.create46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 24)
  %arena.cur47 = call ptr @dva_arena_current()
  %a.buf48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 128)
  %a.len.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 0
  store i64 0, ptr %a.len.gep49, align 8
  %a.data.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 1
  store ptr %a.buf48, ptr %a.data.gep50, align 8
  %a.cap.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create46, i32 0, i32 2
  store i64 16, ptr %a.cap.gep51, align 8
  store ptr %a.create46, ptr %var.out, align 8
  br label %a.after44

a.after44:                                        ; preds = %a.create43, %loop.exit.80
  %a.load252 = load ptr, ptr %var.out, align 8
  br label %choice.exit

loop.header.81:                                   ; preds = %loop.latch.81, %choice.else
  %counter.load53 = load i64, ptr %loop.idx.81, align 8
  br label %loop.body.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i54 = sub i64 %counter.load53, 0
  store i64 1, ptr %loop.step.81, align 8
  store i64 %loop.rel.i54, ptr %var._i55, align 8
  store i64 %counter.load53, ptr %var._56, align 8
  %var.load57 = load ptr, ptr %var.s, align 8
  %var.load58 = load ptr, ptr %var.sep, align 8
  %var.load59 = load i64, ptr %"var.pos'", align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load57, ptr %var.load58, i64 %var.load59)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then60, label %choice.else61

loop.exit.nat.81:                                 ; No predecessors!
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit62
  %step.val183 = load i64, ptr %loop.step.81, align 8
  %loop.next184 = add i64 %counter.load53, %step.val183
  store i64 %loop.next184, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %a.store169, %loop.exit.nat.81
  %var.load185 = load ptr, ptr %var.out, align 8
  %a.load186 = load ptr, ptr %var.out, align 8
  %a.null187 = icmp eq ptr %a.load186, null
  br i1 %a.null187, label %a.create188, label %a.after189

choice.then60:                                    ; preds = %loop.body.81
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._63, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load64 = load ptr, ptr %var.s, align 8
  %s.read.len65 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 0
  %s.read.len66 = load i64, ptr %s.read.len65, align 8
  %s.read.len67 = and i64 %s.read.len66, 281474976710655
  %s.read.data68 = getelementptr inbounds { i64, ptr }, ptr %var.load64, i32 0, i32 1
  %s.read.data69 = load ptr, ptr %s.read.data68, align 8
  %var.load70 = load i64, ptr %"var.pos'", align 8
  %var.load71 = load i64, ptr %var.idx, align 8
  %start.is_neg72 = icmp slt i64 %var.load70, 0
  %rel.start73 = add i64 %s.read.len67, %var.load70
  %norm.start74 = select i1 %start.is_neg72, i64 %rel.start73, i64 %var.load70
  %start.lt.075 = icmp slt i64 %norm.start74, 0
  %c.start.076 = select i1 %start.lt.075, i64 0, i64 %norm.start74
  %start.gt.len77 = icmp sgt i64 %c.start.076, %s.read.len67
  %final.start78 = select i1 %start.gt.len77, i64 %s.read.len67, i64 %c.start.076
  %end.is_neg79 = icmp slt i64 %var.load71, 0
  %rel.end80 = add i64 %s.read.len67, %var.load71
  %norm.end81 = select i1 %end.is_neg79, i64 %rel.end80, i64 %var.load71
  %end.lt.082 = icmp slt i64 %norm.end81, 0
  %c.end.083 = select i1 %end.lt.082, i64 0, i64 %norm.end81
  %end.gt.len84 = icmp sgt i64 %c.end.083, %s.read.len67
  %final.end85 = select i1 %end.gt.len84, i64 %s.read.len67, i64 %c.end.083
  %view.empty86 = icmp sle i64 %final.end85, %final.start78
  %view.len.sub87 = sub i64 %final.end85, %final.start78
  %view.len88 = select i1 %view.empty86, i64 0, i64 %view.len.sub87
  %view.data89 = getelementptr i8, ptr %s.read.data69, i64 %final.start78
  %arena.cur90 = call ptr @dva_arena_current()
  %str.view91 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 16)
  %str.build.len.gep92 = getelementptr inbounds { i64, ptr }, ptr %str.view91, i32 0, i32 0
  store i64 %view.len88, ptr %str.build.len.gep92, align 8
  %str.build.data.gep93 = getelementptr inbounds { i64, ptr }, ptr %str.view91, i32 0, i32 1
  store ptr %view.data89, ptr %str.build.data.gep93, align 8
  %a.load94 = load ptr, ptr %var.out, align 8
  %a.null95 = icmp eq ptr %a.load94, null
  br i1 %a.null95, label %a.create96, label %a.after97

choice.else61:                                    ; preds = %loop.body.81
  %var.load125 = load ptr, ptr %var.s, align 8
  %s.read.len126 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %s.read.len127 = load i64, ptr %s.read.len126, align 8
  %s.read.len128 = and i64 %s.read.len127, 281474976710655
  %s.read.data129 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 1
  %s.read.data130 = load ptr, ptr %s.read.data129, align 8
  %var.load131 = load i64, ptr %"var.pos'", align 8
  %var.load132 = load i64, ptr %var.ls, align 8
  %start.is_neg133 = icmp slt i64 %var.load131, 0
  %rel.start134 = add i64 %s.read.len128, %var.load131
  %norm.start135 = select i1 %start.is_neg133, i64 %rel.start134, i64 %var.load131
  %start.lt.0136 = icmp slt i64 %norm.start135, 0
  %c.start.0137 = select i1 %start.lt.0136, i64 0, i64 %norm.start135
  %start.gt.len138 = icmp sgt i64 %c.start.0137, %s.read.len128
  %final.start139 = select i1 %start.gt.len138, i64 %s.read.len128, i64 %c.start.0137
  %end.is_neg140 = icmp slt i64 %var.load132, 0
  %rel.end141 = add i64 %s.read.len128, %var.load132
  %norm.end142 = select i1 %end.is_neg140, i64 %rel.end141, i64 %var.load132
  %end.lt.0143 = icmp slt i64 %norm.end142, 0
  %c.end.0144 = select i1 %end.lt.0143, i64 0, i64 %norm.end142
  %end.gt.len145 = icmp sgt i64 %c.end.0144, %s.read.len128
  %final.end146 = select i1 %end.gt.len145, i64 %s.read.len128, i64 %c.end.0144
  %view.empty147 = icmp sle i64 %final.end146, %final.start139
  %view.len.sub148 = sub i64 %final.end146, %final.start139
  %view.len149 = select i1 %view.empty147, i64 0, i64 %view.len.sub148
  %view.data150 = getelementptr i8, ptr %s.read.data130, i64 %final.start139
  %arena.cur151 = call ptr @dva_arena_current()
  %str.view152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 16)
  %str.build.len.gep153 = getelementptr inbounds { i64, ptr }, ptr %str.view152, i32 0, i32 0
  store i64 %view.len149, ptr %str.build.len.gep153, align 8
  %str.build.data.gep154 = getelementptr inbounds { i64, ptr }, ptr %str.view152, i32 0, i32 1
  store ptr %view.data150, ptr %str.build.data.gep154, align 8
  %a.load155 = load ptr, ptr %var.out, align 8
  %a.null156 = icmp eq ptr %a.load155, null
  br i1 %a.null156, label %a.create157, label %a.after158

choice.exit62:                                    ; preds = %a.store108
  br label %loop.latch.81

a.create96:                                       ; preds = %choice.then60
  %arena.cur98 = call ptr @dva_arena_current()
  %a.create99 = call ptr @dva_arena_alloc(ptr %arena.cur98, i64 24)
  %arena.cur100 = call ptr @dva_arena_current()
  %a.buf101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 128)
  %a.len.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 0
  store i64 0, ptr %a.len.gep102, align 8
  %a.data.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 1
  store ptr %a.buf101, ptr %a.data.gep103, align 8
  %a.cap.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create99, i32 0, i32 2
  store i64 16, ptr %a.cap.gep104, align 8
  store ptr %a.create99, ptr %var.out, align 8
  br label %a.after97

a.after97:                                        ; preds = %a.create96, %choice.then60
  %a.load2105 = load ptr, ptr %var.out, align 8
  br label %a.check106

a.check106:                                       ; preds = %a.after97
  %a.len109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 0
  %a.len110 = load i64, ptr %a.len109, align 8
  %a.cap111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 2
  %a.cap112 = load i64, ptr %a.cap111, align 8
  %a.needs.grow113 = icmp eq i64 %a.len110, %a.cap112
  br i1 %a.needs.grow113, label %a.grow107, label %a.store108

a.grow107:                                        ; preds = %a.check106
  call void @dva_array_grow(ptr %a.load2105)
  br label %a.store108

a.store108:                                       ; preds = %a.grow107, %a.check106
  %a.cur.data114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 1
  %a.cur.data115 = load ptr, ptr %a.cur.data114, align 8
  %a.cur.len116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 0
  %a.cur.len117 = load i64, ptr %a.cur.len116, align 8
  %a.elem.gep118 = getelementptr i64, ptr %a.cur.data115, i64 %a.cur.len117
  %slot.p2i119 = ptrtoint ptr %str.view91 to i64
  store i64 %slot.p2i119, ptr %a.elem.gep118, align 8
  %a.next.len120 = add i64 %a.cur.len117, 1
  %b.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2105, i32 0, i32 0
  store i64 %a.next.len120, ptr %b.len.gep121, align 8
  %var.load122 = load i64, ptr %var.idx, align 8
  %var.load123 = load i64, ptr %var.lsep, align 8
  %addtmp124 = add i64 %var.load122, %var.load123
  store i64 %addtmp124, ptr %"var.pos'", align 8
  br label %choice.exit62

a.create157:                                      ; preds = %choice.else61
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
  store ptr %a.create160, ptr %var.out, align 8
  br label %a.after158

a.after158:                                       ; preds = %a.create157, %choice.else61
  %a.load2166 = load ptr, ptr %var.out, align 8
  br label %a.check167

a.check167:                                       ; preds = %a.after158
  %a.len170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2166, i32 0, i32 0
  %a.len171 = load i64, ptr %a.len170, align 8
  %a.cap172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2166, i32 0, i32 2
  %a.cap173 = load i64, ptr %a.cap172, align 8
  %a.needs.grow174 = icmp eq i64 %a.len171, %a.cap173
  br i1 %a.needs.grow174, label %a.grow168, label %a.store169

a.grow168:                                        ; preds = %a.check167
  call void @dva_array_grow(ptr %a.load2166)
  br label %a.store169

a.store169:                                       ; preds = %a.grow168, %a.check167
  %a.cur.data175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2166, i32 0, i32 1
  %a.cur.data176 = load ptr, ptr %a.cur.data175, align 8
  %a.cur.len177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2166, i32 0, i32 0
  %a.cur.len178 = load i64, ptr %a.cur.len177, align 8
  %a.elem.gep179 = getelementptr i64, ptr %a.cur.data176, i64 %a.cur.len178
  %slot.p2i180 = ptrtoint ptr %str.view152 to i64
  store i64 %slot.p2i180, ptr %a.elem.gep179, align 8
  %a.next.len181 = add i64 %a.cur.len178, 1
  %b.len.gep182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2166, i32 0, i32 0
  store i64 %a.next.len181, ptr %b.len.gep182, align 8
  br label %loop.exit.81

a.create188:                                      ; preds = %loop.exit.81
  %arena.cur190 = call ptr @dva_arena_current()
  %a.create191 = call ptr @dva_arena_alloc(ptr %arena.cur190, i64 24)
  %arena.cur192 = call ptr @dva_arena_current()
  %a.buf193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 128)
  %a.len.gep194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create191, i32 0, i32 0
  store i64 0, ptr %a.len.gep194, align 8
  %a.data.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create191, i32 0, i32 1
  store ptr %a.buf193, ptr %a.data.gep195, align 8
  %a.cap.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create191, i32 0, i32 2
  store i64 16, ptr %a.cap.gep196, align 8
  store ptr %a.create191, ptr %var.out, align 8
  br label %a.after189

a.after189:                                       ; preds = %a.create188, %loop.exit.81
  %a.load2197 = load ptr, ptr %var.out, align 8
  br label %choice.exit
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

define ptr @"str::lines"(ptr %0) #0 {
entry:
  %var.end94 = alloca i64, align 8
  %var.end = alloca i64, align 8
  %var.pos = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.82 = alloca i64, align 8
  %loop.idx.82 = alloca i64, align 8
  %"var.start'" = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.ls, align 8
  %var.load5 = load i64, ptr %var.ls, align 8
  %cmptmp = icmp eq i64 %var.load5, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load6 = load ptr, ptr %var.out, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %str_ok
  store i64 0, ptr %"var.start'", align 8
  store i64 0, ptr %loop.idx.82, align 8
  br label %loop.header.82

a.create:                                         ; preds = %choice.then
  %arena.cur7 = call ptr @dva_arena_current()
  %a.create8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 24)
  %arena.cur9 = call ptr @dva_arena_current()
  %a.buf10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 128)
  %a.len.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 0
  store i64 0, ptr %a.len.gep11, align 8
  %a.data.gep12 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 1
  store ptr %a.buf10, ptr %a.data.gep12, align 8
  %a.cap.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 2
  store i64 16, ptr %a.cap.gep13, align 8
  store ptr %a.create8, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.82:                                   ; preds = %loop.latch.82, %choice.exit
  %counter.load = load i64, ptr %loop.idx.82, align 8
  br label %loop.body.82

loop.body.82:                                     ; preds = %loop.header.82
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.82, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load14 = load i64, ptr %"var.start'", align 8
  %var.load15 = load i64, ptr %var.ls, align 8
  %cmptmp16 = icmp sge i64 %var.load14, %var.load15
  br i1 %cmptmp16, label %choice.then17, label %choice.exit18

loop.exit.nat.82:                                 ; No predecessors!
  br label %loop.exit.82

loop.latch.82:                                    ; preds = %choice.exit24
  %step.val = load i64, ptr %loop.step.82, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.82, align 8
  br label %loop.header.82

loop.exit.82:                                     ; preds = %a.store, %choice.then17, %loop.exit.nat.82
  %var.load154 = load ptr, ptr %var.out, align 8
  %a.load155 = load ptr, ptr %var.out, align 8
  %a.null156 = icmp eq ptr %a.load155, null
  br i1 %a.null156, label %a.create157, label %a.after158

choice.then17:                                    ; preds = %loop.body.82
  br label %loop.exit.82

choice.exit18:                                    ; preds = %loop.body.82
  %var.load19 = load ptr, ptr %var.s, align 8
  %var.load20 = load i64, ptr %"var.start'", align 8
  %call.res = call i64 @"str::#find_byte_from"(ptr %var.load19, i64 10, i64 %var.load20)
  store i64 %call.res, ptr %var.pos, align 8
  %var.load21 = load i64, ptr %var.pos, align 8
  %cmptmp22 = icmp slt i64 %var.load21, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.else

choice.then23:                                    ; preds = %choice.exit18
  %var.load25 = load i64, ptr %var.ls, align 8
  %var.load26 = load i64, ptr %"var.start'", align 8
  %cmptmp27 = icmp sgt i64 %var.load25, %var.load26
  br i1 %cmptmp27, label %and.83.then, label %and.83.else

choice.else:                                      ; preds = %choice.exit18
  %var.load66 = load i64, ptr %var.pos, align 8
  %var.load67 = load i64, ptr %"var.start'", align 8
  %cmptmp68 = icmp sgt i64 %var.load66, %var.load67
  br i1 %cmptmp68, label %and.84.then, label %and.84.else

choice.exit24:                                    ; preds = %a.store139
  br label %loop.latch.82

and.83.then:                                      ; preds = %choice.then23
  %var.load28 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data31 = load ptr, ptr %s.read.data, align 8
  %var.load32 = load i64, ptr %var.ls, align 8
  %subtmp = sub i64 %var.load32, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.83.else:                                      ; preds = %choice.then23
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %idx_ok
  %and.83.phi = phi i1 [ %cmptmp34, %idx_ok ], [ %cmptmp27, %and.83.else ]
  br i1 %and.83.phi, label %choice.then35, label %choice.else36

idx_big_check:                                    ; preds = %and.83.then
  %idx.big = icmp sge i64 %subtmp, %s.read.len30
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead33, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data31, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp34 = icmp eq i64 %s.byte.val, 13
  br label %and.83.exit

idx_oob:                                          ; preds = %idx_big_check, %and.83.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %idx_ok

choice.then35:                                    ; preds = %and.83.exit
  %var.load38 = load i64, ptr %var.ls, align 8
  %subtmp39 = sub i64 %var.load38, 1
  br label %choice.exit37

choice.else36:                                    ; preds = %and.83.exit
  %var.load40 = load i64, ptr %var.ls, align 8
  br label %choice.exit37

choice.exit37:                                    ; preds = %choice.else36, %choice.then35
  %choice.res = phi i64 [ %subtmp39, %choice.then35 ], [ %var.load40, %choice.else36 ]
  store i64 %choice.res, ptr %var.end, align 8
  %var.load41 = load ptr, ptr %var.s, align 8
  %s.read.len42 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len42, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %s.read.data45 = getelementptr inbounds { i64, ptr }, ptr %var.load41, i32 0, i32 1
  %s.read.data46 = load ptr, ptr %s.read.data45, align 8
  %var.load47 = load i64, ptr %"var.start'", align 8
  %var.load48 = load i64, ptr %var.end, align 8
  %start.is_neg = icmp slt i64 %var.load47, 0
  %rel.start = add i64 %s.read.len44, %var.load47
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load47
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len44
  %final.start = select i1 %start.gt.len, i64 %s.read.len44, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load48, 0
  %rel.end = add i64 %s.read.len44, %var.load48
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load48
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len44
  %final.end = select i1 %end.gt.len, i64 %s.read.len44, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data46, i64 %final.start
  %arena.cur49 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.load50 = load ptr, ptr %var.out, align 8
  %a.null51 = icmp eq ptr %a.load50, null
  br i1 %a.null51, label %a.create52, label %a.after53

a.create52:                                       ; preds = %choice.exit37
  %arena.cur54 = call ptr @dva_arena_current()
  %a.create55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 24)
  %arena.cur56 = call ptr @dva_arena_current()
  %a.buf57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 128)
  %a.len.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create55, i32 0, i32 0
  store i64 0, ptr %a.len.gep58, align 8
  %a.data.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create55, i32 0, i32 1
  store ptr %a.buf57, ptr %a.data.gep59, align 8
  %a.cap.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create55, i32 0, i32 2
  store i64 16, ptr %a.cap.gep60, align 8
  store ptr %a.create55, ptr %var.out, align 8
  br label %a.after53

a.after53:                                        ; preds = %a.create52, %choice.exit37
  %a.load261 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after53
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 0
  %a.len62 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 2
  %a.cap63 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len62, %a.cap63
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load261)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 1
  %a.cur.data64 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 0
  %a.cur.len65 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data64, i64 %a.cur.len65
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len65, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load261, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.exit.82

and.84.then:                                      ; preds = %choice.else
  %var.load69 = load ptr, ptr %var.s, align 8
  %s.read.len70 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 0
  %s.read.len71 = load i64, ptr %s.read.len70, align 8
  %s.read.len72 = and i64 %s.read.len71, 281474976710655
  %s.read.data73 = getelementptr inbounds { i64, ptr }, ptr %var.load69, i32 0, i32 1
  %s.read.data74 = load ptr, ptr %s.read.data73, align 8
  %var.load75 = load i64, ptr %var.pos, align 8
  %subtmp76 = sub i64 %var.load75, 1
  %idx.neg77 = icmp slt i64 %subtmp76, 0
  br i1 %idx.neg77, label %idx_oob80, label %idx_big_check78

and.84.else:                                      ; preds = %choice.else
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %idx_ok79
  %and.84.phi = phi i1 [ %cmptmp86, %idx_ok79 ], [ %cmptmp68, %and.84.else ]
  br i1 %and.84.phi, label %choice.then87, label %choice.else88

idx_big_check78:                                  ; preds = %and.84.then
  %idx.big81 = icmp sge i64 %subtmp76, %s.read.len72
  br i1 %idx.big81, label %idx_oob80, label %idx_ok79

idx_ok79:                                         ; preds = %abort.dead82, %idx_big_check78
  %s.byte.gep83 = getelementptr i8, ptr %s.read.data74, i64 %subtmp76
  %s.byte84 = load i8, ptr %s.byte.gep83, align 1
  %s.byte.val85 = zext i8 %s.byte84 to i64
  %cmptmp86 = icmp eq i64 %s.byte.val85, 13
  br label %and.84.exit

idx_oob80:                                        ; preds = %idx_big_check78, %and.84.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %idx_ok79

choice.then87:                                    ; preds = %and.84.exit
  %var.load90 = load i64, ptr %var.pos, align 8
  %subtmp91 = sub i64 %var.load90, 1
  br label %choice.exit89

choice.else88:                                    ; preds = %and.84.exit
  %var.load92 = load i64, ptr %var.pos, align 8
  br label %choice.exit89

choice.exit89:                                    ; preds = %choice.else88, %choice.then87
  %choice.res93 = phi i64 [ %subtmp91, %choice.then87 ], [ %var.load92, %choice.else88 ]
  store i64 %choice.res93, ptr %var.end94, align 8
  %var.load95 = load ptr, ptr %var.s, align 8
  %s.read.len96 = getelementptr inbounds { i64, ptr }, ptr %var.load95, i32 0, i32 0
  %s.read.len97 = load i64, ptr %s.read.len96, align 8
  %s.read.len98 = and i64 %s.read.len97, 281474976710655
  %s.read.data99 = getelementptr inbounds { i64, ptr }, ptr %var.load95, i32 0, i32 1
  %s.read.data100 = load ptr, ptr %s.read.data99, align 8
  %var.load101 = load i64, ptr %"var.start'", align 8
  %var.load102 = load i64, ptr %var.end94, align 8
  %start.is_neg103 = icmp slt i64 %var.load101, 0
  %rel.start104 = add i64 %s.read.len98, %var.load101
  %norm.start105 = select i1 %start.is_neg103, i64 %rel.start104, i64 %var.load101
  %start.lt.0106 = icmp slt i64 %norm.start105, 0
  %c.start.0107 = select i1 %start.lt.0106, i64 0, i64 %norm.start105
  %start.gt.len108 = icmp sgt i64 %c.start.0107, %s.read.len98
  %final.start109 = select i1 %start.gt.len108, i64 %s.read.len98, i64 %c.start.0107
  %end.is_neg110 = icmp slt i64 %var.load102, 0
  %rel.end111 = add i64 %s.read.len98, %var.load102
  %norm.end112 = select i1 %end.is_neg110, i64 %rel.end111, i64 %var.load102
  %end.lt.0113 = icmp slt i64 %norm.end112, 0
  %c.end.0114 = select i1 %end.lt.0113, i64 0, i64 %norm.end112
  %end.gt.len115 = icmp sgt i64 %c.end.0114, %s.read.len98
  %final.end116 = select i1 %end.gt.len115, i64 %s.read.len98, i64 %c.end.0114
  %view.empty117 = icmp sle i64 %final.end116, %final.start109
  %view.len.sub118 = sub i64 %final.end116, %final.start109
  %view.len119 = select i1 %view.empty117, i64 0, i64 %view.len.sub118
  %view.data120 = getelementptr i8, ptr %s.read.data100, i64 %final.start109
  %arena.cur121 = call ptr @dva_arena_current()
  %str.view122 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 16)
  %str.build.len.gep123 = getelementptr inbounds { i64, ptr }, ptr %str.view122, i32 0, i32 0
  store i64 %view.len119, ptr %str.build.len.gep123, align 8
  %str.build.data.gep124 = getelementptr inbounds { i64, ptr }, ptr %str.view122, i32 0, i32 1
  store ptr %view.data120, ptr %str.build.data.gep124, align 8
  %a.load125 = load ptr, ptr %var.out, align 8
  %a.null126 = icmp eq ptr %a.load125, null
  br i1 %a.null126, label %a.create127, label %a.after128

a.create127:                                      ; preds = %choice.exit89
  %arena.cur129 = call ptr @dva_arena_current()
  %a.create130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 24)
  %arena.cur131 = call ptr @dva_arena_current()
  %a.buf132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 128)
  %a.len.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 0
  store i64 0, ptr %a.len.gep133, align 8
  %a.data.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 1
  store ptr %a.buf132, ptr %a.data.gep134, align 8
  %a.cap.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 2
  store i64 16, ptr %a.cap.gep135, align 8
  store ptr %a.create130, ptr %var.out, align 8
  br label %a.after128

a.after128:                                       ; preds = %a.create127, %choice.exit89
  %a.load2136 = load ptr, ptr %var.out, align 8
  br label %a.check137

a.check137:                                       ; preds = %a.after128
  %a.len140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 0
  %a.len141 = load i64, ptr %a.len140, align 8
  %a.cap142 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 2
  %a.cap143 = load i64, ptr %a.cap142, align 8
  %a.needs.grow144 = icmp eq i64 %a.len141, %a.cap143
  br i1 %a.needs.grow144, label %a.grow138, label %a.store139

a.grow138:                                        ; preds = %a.check137
  call void @dva_array_grow(ptr %a.load2136)
  br label %a.store139

a.store139:                                       ; preds = %a.grow138, %a.check137
  %a.cur.data145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 1
  %a.cur.data146 = load ptr, ptr %a.cur.data145, align 8
  %a.cur.len147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 0
  %a.cur.len148 = load i64, ptr %a.cur.len147, align 8
  %a.elem.gep149 = getelementptr i64, ptr %a.cur.data146, i64 %a.cur.len148
  %slot.p2i150 = ptrtoint ptr %str.view122 to i64
  store i64 %slot.p2i150, ptr %a.elem.gep149, align 8
  %a.next.len151 = add i64 %a.cur.len148, 1
  %b.len.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 0
  store i64 %a.next.len151, ptr %b.len.gep152, align 8
  %var.load153 = load i64, ptr %var.pos, align 8
  %addtmp = add i64 %var.load153, 1
  store i64 %addtmp, ptr %"var.start'", align 8
  br label %choice.exit24

a.create157:                                      ; preds = %loop.exit.82
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
  store ptr %a.create160, ptr %var.out, align 8
  br label %a.after158

a.after158:                                       ; preds = %a.create157, %loop.exit.82
  %a.load2166 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2166
}

define ptr @"str::words"(ptr %0) #0 {
entry:
  %var._34 = alloca i64, align 8
  %var._i33 = alloca i64, align 8
  %loop.step.88 = alloca i64, align 8
  %loop.idx.88 = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var._10 = alloca i64, align 8
  %var._i9 = alloca i64, align 8
  %loop.step.86 = alloca i64, align 8
  %loop.idx.86 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.85 = alloca i64, align 8
  %loop.idx.85 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.out, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.ls, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.85, align 8
  br label %loop.header.85

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

loop.header.85:                                   ; preds = %loop.latch.85, %str_ok
  %counter.load = load i64, ptr %loop.idx.85, align 8
  br label %loop.body.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.85, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.i'", align 8
  %var.load6 = load i64, ptr %var.ls, align 8
  %cmptmp = icmp sge i64 %var.load5, %var.load6
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.85:                                 ; No predecessors!
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %a.store
  %step.val82 = load i64, ptr %loop.step.85, align 8
  %loop.next83 = add i64 %counter.load, %step.val82
  store i64 %loop.next83, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %choice.then26, %choice.then, %loop.exit.nat.85
  %var.load84 = load ptr, ptr %var.out, align 8
  %a.load85 = load ptr, ptr %var.out, align 8
  %a.null86 = icmp eq ptr %a.load85, null
  br i1 %a.null86, label %a.create87, label %a.after88

choice.then:                                      ; preds = %loop.body.85
  br label %loop.exit.85

choice.exit:                                      ; preds = %loop.body.85
  store i64 0, ptr %loop.idx.86, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %choice.exit
  %counter.load7 = load i64, ptr %loop.idx.86, align 8
  br label %loop.body.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i8 = sub i64 %counter.load7, 0
  store i64 1, ptr %loop.step.86, align 8
  store i64 %loop.rel.i8, ptr %var._i9, align 8
  store i64 %counter.load7, ptr %var._10, align 8
  %var.load11 = load i64, ptr %"var.i'", align 8
  %var.load12 = load i64, ptr %var.ls, align 8
  %cmptmp13 = icmp slt i64 %var.load11, %var.load12
  br i1 %cmptmp13, label %and.87.then, label %and.87.else

loop.exit.nat.86:                                 ; No predecessors!
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.86, align 8
  %loop.next = add i64 %counter.load7, %step.val
  store i64 %loop.next, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %choice.else, %loop.exit.nat.86
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load23 = load i64, ptr %"var.i'", align 8
  %var.load24 = load i64, ptr %var.ls, align 8
  %cmptmp25 = icmp sge i64 %var.load23, %var.load24
  br i1 %cmptmp25, label %choice.then26, label %choice.exit27

and.87.then:                                      ; preds = %loop.body.86
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.87.else:                                      ; preds = %loop.body.86
  br label %and.87.exit

and.87.exit:                                      ; preds = %and.87.else, %idx_ok
  %and.87.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp13, %and.87.else ]
  br i1 %and.87.phi, label %choice.then20, label %choice.else

idx_big_check:                                    ; preds = %and.87.then
  %idx.big = icmp sge i64 %var.load18, %s.read.len16
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead19, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.87.exit

idx_oob:                                          ; preds = %idx_big_check, %and.87.then
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %idx_ok

choice.then20:                                    ; preds = %and.87.exit
  %var.load22 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load22, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit21

choice.else:                                      ; preds = %and.87.exit
  br label %loop.exit.86

choice.exit21:                                    ; preds = %choice.then20
  br label %loop.latch.86

choice.then26:                                    ; preds = %loop.exit.86
  br label %loop.exit.85

choice.exit27:                                    ; preds = %loop.exit.86
  %var.load28 = load i64, ptr %"var.i'", align 8
  store i64 %var.load28, ptr %var.start, align 8
  store i64 0, ptr %loop.idx.88, align 8
  %cycle.prev.u29 = load i64, ptr %var._, align 8
  %cycle.prev.i30 = load i64, ptr %var._i, align 8
  br label %loop.header.88

loop.header.88:                                   ; preds = %loop.latch.88, %choice.exit27
  %counter.load31 = load i64, ptr %loop.idx.88, align 8
  br label %loop.body.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i32 = sub i64 %counter.load31, 0
  store i64 1, ptr %loop.step.88, align 8
  store i64 %loop.rel.i32, ptr %var._i33, align 8
  store i64 %counter.load31, ptr %var._34, align 8
  %var.load35 = load i64, ptr %"var.i'", align 8
  %var.load36 = load i64, ptr %var.ls, align 8
  %cmptmp37 = icmp slt i64 %var.load35, %var.load36
  br i1 %cmptmp37, label %and.89.then, label %and.89.else

loop.exit.nat.88:                                 ; No predecessors!
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit57
  %step.val60 = load i64, ptr %loop.step.88, align 8
  %loop.next61 = add i64 %counter.load31, %step.val60
  store i64 %loop.next61, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %choice.else56, %loop.exit.nat.88
  store i64 %cycle.prev.u29, ptr %var._, align 8
  store i64 %cycle.prev.i30, ptr %var._i, align 8
  %var.load62 = load ptr, ptr %var.s, align 8
  %s.read.len63 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 0
  %s.read.len64 = load i64, ptr %s.read.len63, align 8
  %s.read.len65 = and i64 %s.read.len64, 281474976710655
  %s.read.data66 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data66, align 8
  %var.load68 = load i64, ptr %var.start, align 8
  %var.load69 = load i64, ptr %"var.i'", align 8
  %start.is_neg = icmp slt i64 %var.load68, 0
  %rel.start = add i64 %s.read.len65, %var.load68
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load68
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len65
  %final.start = select i1 %start.gt.len, i64 %s.read.len65, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load69, 0
  %rel.end = add i64 %s.read.len65, %var.load69
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load69
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len65
  %final.end = select i1 %end.gt.len, i64 %s.read.len65, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data67, i64 %final.start
  %arena.cur70 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.89.then:                                      ; preds = %loop.body.88
  %var.load38 = load ptr, ptr %var.s, align 8
  %s.read.len39 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 0
  %s.read.len40 = load i64, ptr %s.read.len39, align 8
  %s.read.len41 = and i64 %s.read.len40, 281474976710655
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load38, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %var.load44 = load i64, ptr %"var.i'", align 8
  %idx.neg45 = icmp slt i64 %var.load44, 0
  br i1 %idx.neg45, label %idx_oob48, label %idx_big_check46

and.89.else:                                      ; preds = %loop.body.88
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %idx_ok47
  %and.89.phi = phi i1 [ %nottmp, %idx_ok47 ], [ %cmptmp37, %and.89.else ]
  br i1 %and.89.phi, label %choice.then55, label %choice.else56

idx_big_check46:                                  ; preds = %and.89.then
  %idx.big49 = icmp sge i64 %var.load44, %s.read.len41
  br i1 %idx.big49, label %idx_oob48, label %idx_ok47

idx_ok47:                                         ; preds = %abort.dead50, %idx_big_check46
  %s.byte.gep51 = getelementptr i8, ptr %s.read.data43, i64 %var.load44
  %s.byte52 = load i8, ptr %s.byte.gep51, align 1
  %s.byte.val53 = zext i8 %s.byte52 to i64
  %call.res54 = call i1 @"str::is_ws"(i64 %s.byte.val53)
  %nottmp = xor i1 %call.res54, true
  br label %and.89.exit

idx_oob48:                                        ; preds = %idx_big_check46, %and.89.then
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %idx_ok47

choice.then55:                                    ; preds = %and.89.exit
  %var.load58 = load i64, ptr %"var.i'", align 8
  %addtmp59 = add i64 %var.load58, 1
  store i64 %addtmp59, ptr %"var.i'", align 8
  br label %choice.exit57

choice.else56:                                    ; preds = %and.89.exit
  br label %loop.exit.88

choice.exit57:                                    ; preds = %choice.then55
  br label %loop.latch.88

a.create:                                         ; preds = %loop.exit.88
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
  store ptr %a.create72, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.exit.88
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len78 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap79 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len78, %a.cap79
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data80 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len81 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data80, i64 %a.cur.len81
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len81, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.85

a.create87:                                       ; preds = %loop.exit.85
  %arena.cur89 = call ptr @dva_arena_current()
  %a.create90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 24)
  %arena.cur91 = call ptr @dva_arena_current()
  %a.buf92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 128)
  %a.len.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 0
  store i64 0, ptr %a.len.gep93, align 8
  %a.data.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 1
  store ptr %a.buf92, ptr %a.data.gep94, align 8
  %a.cap.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 2
  store i64 16, ptr %a.cap.gep95, align 8
  store ptr %a.create90, ptr %var.out, align 8
  br label %a.after88

a.after88:                                        ; preds = %a.create87, %loop.exit.85
  %a.load296 = load ptr, ptr %var.out, align 8
  ret ptr %a.load296
}

define { i64, ptr } @"str::join"(ptr %0, ptr %1) #0 {
entry:
  %var._128 = alloca ptr, align 8
  %var._i127 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.92 = alloca i64, align 8
  %loop.idx.92 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.total = alloca i64, align 8
  %var.acc = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  %loop.step.91 = alloca i64, align 8
  %loop.idx.91 = alloca i64, align 8
  %var._fold_acc_240 = alloca i64, align 8
  %var.lsep = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.sep = alloca ptr, align 8
  %var.parts = alloca ptr, align 8
  store ptr %0, ptr %var.parts, align 8
  store ptr %1, ptr %var.sep, align 8
  %var.load = load ptr, ptr %var.parts, align 8
  %a.load = load ptr, ptr %var.parts, align 8
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
  store ptr %a.create1, ptr %var.parts, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.parts, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query3, ptr %var.n, align 8
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after
  %ret.pack = load { i64, ptr }, ptr @str.9.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %a.after
  %var.load5 = load i64, ptr %var.n, align 8
  %cmptmp6 = icmp eq i64 %var.load5, 1
  br i1 %cmptmp6, label %choice.then7, label %choice.exit8

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then7:                                     ; preds = %choice.exit
  %var.load9 = load ptr, ptr %var.parts, align 8
  %a.load10 = load ptr, ptr %var.parts, align 8
  %a.null11 = icmp eq ptr %a.load10, null
  br i1 %a.null11, label %a.create12, label %a.after13

choice.exit8:                                     ; preds = %ret.dead60, %choice.exit
  %var.load61 = load ptr, ptr %var.sep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load61, i32 0, i32 0
  %str.len.query62 = load i64, ptr %str.len.query, align 8
  %str.len.query63 = and i64 %str.len.query62, 281474976710655
  %str.tag64 = lshr i64 %str.len.query62, 48
  %tag.immortal66 = icmp eq i64 %str.tag64, 0
  br i1 %tag.immortal66, label %str_ok65, label %tag.gen_check67

a.create12:                                       ; preds = %choice.then7
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
  store ptr %a.create15, ptr %var.parts, align 8
  br label %a.after13

a.after13:                                        ; preds = %a.create12, %choice.then7
  %a.load221 = load ptr, ptr %var.parts, align 8
  %a.rd.nonnull = icmp ne ptr %a.load221, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after13
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load221, i32 0, i32 0
  %a.rd.len22 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len22
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load221, i32 0, i32 1
  %a.rd.data23 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data23, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after13
  %arena.cur24 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.10.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.11.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 444, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 28, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur25 = call ptr @dva_arena_current()
  %err.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 56)
  %err.code.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 0
  store i64 4011, ptr %err.code.gep27, align 8
  %err.msg.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 1
  store ptr @str.12.struct, ptr %err.msg.gep28, align 8
  %err.file.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 2
  store ptr @str.11.struct, ptr %err.file.gep29, align 8
  %err.line.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 3
  store i64 444, ptr %err.line.gep30, align 8
  %err.col.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 4
  store i64 28, ptr %err.col.gep31, align 8
  %err.ctx.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 5
  %err.ctx0.gep33 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep32, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep33, align 8
  %err.ctx1.gep34 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep32, i32 0, i32 1
  store i64 %a.rd.len22, ptr %err.ctx1.gep34, align 8
  %err.p2i35 = ptrtoint ptr %err.alloc26 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i35, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.90, label %unwrap.abort.90

unwrap.pos.90:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  %ret.pack59 = load { i64, ptr }, ptr %pay.ptr, align 8
  ret { i64, ptr } %ret.pack59

unwrap.abort.90:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep36, align 8
  %err.msg.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep37, align 8
  %err.file.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep38, align 8
  %err.line.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep39, align 8
  %err.col.gep40 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep40, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len41 = load i64, ptr %err.msg.len, align 8
  %err.msg.len42 = and i64 %err.msg.len41, 281474976710655
  %str.tag = lshr i64 %err.msg.len41, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %unwrap.abort.90
  %err.msg.len32 = trunc i64 %err.msg.len42 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data44 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len45 = load i64, ptr %err.file.len, align 8
  %err.file.len46 = and i64 %err.file.len45, 281474976710655
  %str.tag47 = lshr i64 %err.file.len45, 48
  %tag.immortal49 = icmp eq i64 %str.tag47, 0
  br i1 %tag.immortal49, label %str_ok48, label %tag.gen_check50

tag.gen_check:                                    ; preds = %unwrap.abort.90
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok48:                                         ; preds = %abort.dead57, %tag.slow_check51, %tag.gen_check50, %str_ok
  %err.file.len32 = trunc i64 %err.file.len46 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data58 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.gen_check50:                                  ; preds = %str_ok
  %active.gen53 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok54 = icmp eq i64 %str.tag47, %active.gen53
  br i1 %tag.fast.ok54, label %str_ok48, label %tag.slow_check51

tag.slow_check51:                                 ; preds = %tag.gen_check50
  %arena.cur55 = call ptr @dva_arena_current()
  %tag.valid56 = call i1 @dva_arena_validate_tag(ptr %arena.cur55, i64 %str.tag47)
  br i1 %tag.valid56, label %str_ok48, label %tag.stale52

tag.stale52:                                      ; preds = %tag.slow_check51
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %str_ok48

err.thread:                                       ; preds = %str_ok48
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok48
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data44, i32 %err.file.len32, ptr %err.file.data58, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

ret.dead60:                                       ; No predecessors!
  br label %choice.exit8

str_ok65:                                         ; preds = %abort.dead74, %tag.slow_check68, %tag.gen_check67, %choice.exit8
  store i64 %str.len.query63, ptr %var.lsep, align 8
  %var.load75 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load75, 1
  %var.load76 = load i64, ptr %var.lsep, align 8
  %multmp = mul i64 %subtmp, %var.load76
  store i64 %multmp, ptr %var._fold_acc_240, align 8
  %var.load77 = load ptr, ptr %var.parts, align 8
  %a.load78 = load ptr, ptr %var.parts, align 8
  %a.null79 = icmp eq ptr %a.load78, null
  br i1 %a.null79, label %a.create80, label %a.after81

tag.gen_check67:                                  ; preds = %choice.exit8
  %active.gen70 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok71 = icmp eq i64 %str.tag64, %active.gen70
  br i1 %tag.fast.ok71, label %str_ok65, label %tag.slow_check68

tag.slow_check68:                                 ; preds = %tag.gen_check67
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag64)
  br i1 %tag.valid73, label %str_ok65, label %tag.stale69

tag.stale69:                                      ; preds = %tag.slow_check68
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %str_ok65

a.create80:                                       ; preds = %str_ok65
  %arena.cur82 = call ptr @dva_arena_current()
  %a.create83 = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 24)
  %arena.cur84 = call ptr @dva_arena_current()
  %a.buf85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 128)
  %a.len.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create83, i32 0, i32 0
  store i64 0, ptr %a.len.gep86, align 8
  %a.data.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create83, i32 0, i32 1
  store ptr %a.buf85, ptr %a.data.gep87, align 8
  %a.cap.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create83, i32 0, i32 2
  store i64 16, ptr %a.cap.gep88, align 8
  store ptr %a.create83, ptr %var.parts, align 8
  br label %a.after81

a.after81:                                        ; preds = %a.create80, %str_ok65
  %a.load289 = load ptr, ptr %var.parts, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load289, i32 0, i32 0
  %arr.cycle.len90 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load289, i32 0, i32 1
  %arr.cycle.data91 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.header.91:                                   ; preds = %loop.latch.91, %a.after81
  %counter.load = load i64, ptr %loop.idx.91, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len90
  br i1 %loop.cond, label %loop.body.91, label %loop.exit.nat.91

loop.body.91:                                     ; preds = %loop.header.91
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.91, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data91, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load92 = load i64, ptr %var._fold_acc_240, align 8
  store i64 %var.load92, ptr %var.acc, align 8
  %var.load93 = load i64, ptr %var.acc, align 8
  %var.load94 = load ptr, ptr %var.p, align 8
  %str.len.query95 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %str.len.query96 = load i64, ptr %str.len.query95, align 8
  %str.len.query97 = and i64 %str.len.query96, 281474976710655
  %addtmp = add i64 %var.load93, %str.len.query97
  store i64 %addtmp, ptr %var._fold_acc_240, align 8
  br label %loop.latch.91

loop.exit.nat.91:                                 ; preds = %loop.header.91
  br label %loop.exit.91

loop.latch.91:                                    ; preds = %loop.body.91
  %step.val = load i64, ptr %loop.step.91, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.exit.91:                                     ; preds = %loop.exit.nat.91
  %var.load98 = load i64, ptr %var._fold_acc_240, align 8
  store i64 %var.load98, ptr %var.total, align 8
  %var.load99 = load i64, ptr %var.total, align 8
  %addtmp100 = add i64 %var.load99, 1
  %cap.neg = icmp slt i64 %addtmp100, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp100
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len101

b.buf.len101:                                     ; preds = %abort.dead102, %loop.exit.91
  %arena.cur103 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load104 = load ptr, ptr %var.parts, align 8
  %a.load105 = load ptr, ptr %var.parts, align 8
  %a.null106 = icmp eq ptr %a.load105, null
  br i1 %a.null106, label %a.create107, label %a.after108

str_overflow_abort:                               ; preds = %loop.exit.91
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead102:                                    ; No predecessors!
  br label %b.buf.len101

a.create107:                                      ; preds = %b.buf.len101
  %arena.cur109 = call ptr @dva_arena_current()
  %a.create110 = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 24)
  %arena.cur111 = call ptr @dva_arena_current()
  %a.buf112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 128)
  %a.len.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create110, i32 0, i32 0
  store i64 0, ptr %a.len.gep113, align 8
  %a.data.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create110, i32 0, i32 1
  store ptr %a.buf112, ptr %a.data.gep114, align 8
  %a.cap.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create110, i32 0, i32 2
  store i64 16, ptr %a.cap.gep115, align 8
  store ptr %a.create110, ptr %var.parts, align 8
  br label %a.after108

a.after108:                                       ; preds = %a.create107, %b.buf.len101
  %a.load2116 = load ptr, ptr %var.parts, align 8
  %arr.cycle.len117 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2116, i32 0, i32 0
  %arr.cycle.len118 = load i64, ptr %arr.cycle.len117, align 8
  %arr.cycle.data119 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2116, i32 0, i32 1
  %arr.cycle.data120 = load ptr, ptr %arr.cycle.data119, align 8
  store i64 0, ptr %loop.idx.92, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %a.after108
  %counter.load121 = load i64, ptr %loop.idx.92, align 8
  %loop.cond122 = icmp slt i64 %counter.load121, %arr.cycle.len118
  br i1 %loop.cond122, label %loop.body.92, label %loop.exit.nat.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i123 = sub i64 %counter.load121, 0
  store i64 1, ptr %loop.step.92, align 8
  %arr.elem.gep124 = getelementptr i64, ptr %arr.cycle.data120, i64 %counter.load121
  %arr.elem.raw125 = load i64, ptr %arr.elem.gep124, align 8
  %slot.i2p126 = inttoptr i64 %arr.elem.raw125 to ptr
  store i64 %loop.rel.i123, ptr %var._i127, align 8
  store ptr %slot.i2p126, ptr %var._128, align 8
  store ptr %slot.i2p126, ptr %var.p, align 8
  store i64 %loop.rel.i123, ptr %var.i, align 8
  %var.load129 = load i64, ptr %var.i, align 8
  %cmptmp130 = icmp sgt i64 %var.load129, 0
  br i1 %cmptmp130, label %and.93.then, label %and.93.else

loop.exit.nat.92:                                 ; preds = %loop.header.92
  %loop.rel.end = sub i64 %counter.load121, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %b.grow_done176
  %step.val202 = load i64, ptr %loop.step.92, align 8
  %loop.next203 = add i64 %counter.load121, %step.val202
  store i64 %loop.next203, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %loop.exit.nat.92
  %var.load204 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load204, i32 0, i32 0
  %b.freeze.len205 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load204, i32 0, i32 1
  %b.freeze.data206 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

and.93.then:                                      ; preds = %loop.body.92
  %var.load131 = load i64, ptr %var.lsep, align 8
  %cmptmp132 = icmp sgt i64 %var.load131, 0
  br label %and.93.exit

and.93.else:                                      ; preds = %loop.body.92
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %and.93.then
  %and.93.phi = phi i1 [ %cmptmp132, %and.93.then ], [ %cmptmp130, %and.93.else ]
  br i1 %and.93.phi, label %choice.then133, label %choice.exit134

choice.then133:                                   ; preds = %and.93.exit
  %b.load = load ptr, ptr %var.b, align 8
  %var.load135 = load ptr, ptr %var.sep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 0
  %app.str.len136 = load i64, ptr %app.str.len, align 8
  %app.str.len137 = and i64 %app.str.len136, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 1
  %app.str.data138 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len139 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len139, i64 %app.str.len137)
  %sum140 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf141 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf141, label %str_overflow_abort143, label %b.app.new.len142

choice.exit134:                                   ; preds = %b.grow_done, %and.93.exit
  %b.load156 = load ptr, ptr %var.b, align 8
  %var.load157 = load ptr, ptr %var.p, align 8
  %app.str.len158 = getelementptr inbounds { i64, ptr }, ptr %var.load157, i32 0, i32 0
  %app.str.len159 = load i64, ptr %app.str.len158, align 8
  %app.str.len160 = and i64 %app.str.len159, 281474976710655
  %app.str.data161 = getelementptr inbounds { i64, ptr }, ptr %var.load157, i32 0, i32 1
  %app.str.data162 = load ptr, ptr %app.str.data161, align 8
  %b.app.cur.len163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 0
  %b.app.cur.len164 = load i64, ptr %b.app.cur.len163, align 8
  %b.app.new.len165 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len164, i64 %app.str.len160)
  %sum166 = extractvalue { i64, i1 } %b.app.new.len165, 0
  %ovf167 = extractvalue { i64, i1 } %b.app.new.len165, 1
  br i1 %ovf167, label %str_overflow_abort169, label %b.app.new.len168

b.app.new.len142:                                 ; preds = %abort.dead144, %choice.then133
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap145 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap145, %sum140
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort143:                            ; preds = %choice.then133
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead144:                                    ; No predecessors!
  br label %b.app.new.len142

b.grow2:                                          ; preds = %b.app.new.len142
  %b.cap2 = mul i64 %b.cap145, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum140
  %b.new.cap = select i1 %b.cap.need, i64 %sum140, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2146 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2147 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum148 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf149 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf149, label %str_overflow_abort151, label %b.new.buf.len2150

b.nogrow2:                                        ; preds = %b.app.new.len142
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2150
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data154 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data154, i64 %b.app.cur.len139
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data138, i64 %app.str.len137, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data154, i64 %sum140
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum140, ptr %b.len.gep155, align 8
  br label %choice.exit134

b.new.buf.len2150:                                ; preds = %abort.dead152, %b.grow2
  %arena.cur153 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 %sum148)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2147, i64 %b.cur.len2146, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2146
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort151:                            ; preds = %b.grow2
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead152:                                    ; No predecessors!
  br label %b.new.buf.len2150

b.app.new.len168:                                 ; preds = %abort.dead170, %choice.exit134
  %b.cap171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 2
  %b.cap172 = load i64, ptr %b.cap171, align 8
  %b.need.grow173 = icmp slt i64 %b.cap172, %sum166
  br i1 %b.need.grow173, label %b.grow2174, label %b.nogrow2175

str_overflow_abort169:                            ; preds = %choice.exit134
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead170:                                    ; No predecessors!
  br label %b.app.new.len168

b.grow2174:                                       ; preds = %b.app.new.len168
  %b.cap2177 = mul i64 %b.cap172, 2
  %b.cap.small178 = icmp slt i64 %b.cap2177, 16
  %b.cap.grow179 = select i1 %b.cap.small178, i64 16, i64 %b.cap2177
  %b.cap.need180 = icmp slt i64 %b.cap.grow179, %sum166
  %b.new.cap181 = select i1 %b.cap.need180, i64 %sum166, i64 %b.cap.grow179
  %b.cur.len2182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 0
  %b.cur.len2183 = load i64, ptr %b.cur.len2182, align 8
  %b.cur.data2184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 1
  %b.cur.data2185 = load ptr, ptr %b.cur.data2184, align 8
  %b.new.buf.len2186 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap181, i64 1)
  %sum187 = extractvalue { i64, i1 } %b.new.buf.len2186, 0
  %ovf188 = extractvalue { i64, i1 } %b.new.buf.len2186, 1
  br i1 %ovf188, label %str_overflow_abort190, label %b.new.buf.len2189

b.nogrow2175:                                     ; preds = %b.app.new.len168
  br label %b.grow_done176

b.grow_done176:                                   ; preds = %b.nogrow2175, %b.new.buf.len2189
  %b.app.data197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 1
  %b.app.data198 = load ptr, ptr %b.app.data197, align 8
  %b.app.dst199 = getelementptr i8, ptr %b.app.data198, i64 %b.app.cur.len164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst199, ptr align 1 %app.str.data162, i64 %app.str.len160, i1 false)
  %b.app.nul200 = getelementptr i8, ptr %b.app.data198, i64 %sum166
  store i8 0, ptr %b.app.nul200, align 1
  %b.len.gep201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 0
  store i64 %sum166, ptr %b.len.gep201, align 8
  br label %loop.latch.92

b.new.buf.len2189:                                ; preds = %abort.dead191, %b.grow2174
  %arena.cur192 = call ptr @dva_arena_current()
  %b.new.buf2193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 %sum187)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2193, ptr align 1 %b.cur.data2185, i64 %b.cur.len2183, i1 false)
  %b.grow2.nul194 = getelementptr i8, ptr %b.new.buf2193, i64 %b.cur.len2183
  store i8 0, ptr %b.grow2.nul194, align 1
  %b.new.data2.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 1
  store ptr %b.new.buf2193, ptr %b.new.data2.gep195, align 8
  %b.new.cap2.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load156, i32 0, i32 2
  store i64 %b.new.cap181, ptr %b.new.cap2.gep196, align 8
  br label %b.grow_done176

str_overflow_abort190:                            ; preds = %b.grow2174
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead191:                                    ; No predecessors!
  br label %b.new.buf.len2189

b.freeze.check:                                   ; preds = %loop.exit.92
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data206, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data206, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data206, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len205, 1
  %arena.cur207 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur207, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data206, i64 %b.freeze.len205, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len205
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.92
  %b.freeze.data208 = phi ptr [ %b.freeze.data206, %loop.exit.92 ], [ %b.freeze.data206, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur209 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len205, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data208, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load204, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load204, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load204, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack210 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack210
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define { i64, ptr } @"str::lower"(ptr %0) #0 {
entry:
  %var.width = alloca i64, align 8
  %var.cp = alloca i64, align 8
  %var._dp_1 = alloca ptr, align 8
  %var.b0 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.94 = alloca i64, align 8
  %loop.idx.94 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
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
  %ret.pack = load { i64, ptr }, ptr @str.9.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load4, 8
  %arena.cur5 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len6:                                       ; preds = %abort.dead7, %choice.exit
  %arena.cur8 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.94, align 8
  br label %loop.header.94

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %b.buf.len6

loop.header.94:                                   ; preds = %loop.latch.94, %b.buf.len6
  %counter.load = load i64, ptr %loop.idx.94, align 8
  br label %loop.body.94

loop.body.94:                                     ; preds = %loop.header.94
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.94, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load9 = load i64, ptr %"var.i'", align 8
  %var.load10 = load i64, ptr %var.len, align 8
  %cmptmp11 = icmp sge i64 %var.load9, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

loop.exit.nat.94:                                 ; No predecessors!
  br label %loop.exit.94

loop.latch.94:                                    ; preds = %choice.exit23
  %step.val = load i64, ptr %loop.step.94, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.exit.94:                                     ; preds = %choice.then12, %loop.exit.nat.94
  %var.load102 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 0
  %b.freeze.len103 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 1
  %b.freeze.data104 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then12:                                    ; preds = %loop.body.94
  br label %loop.exit.94

choice.exit13:                                    ; preds = %loop.body.94
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit13
  %idx.big = icmp sge i64 %var.load18, %s.read.len16
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead19, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load20 = load i64, ptr %var.b0, align 8
  %cmptmp21 = icmp slt i64 %var.load20, 128
  br i1 %cmptmp21, label %choice.then22, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit13
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %idx_ok

choice.then22:                                    ; preds = %idx_ok
  %b.load = load ptr, ptr %var.b, align 8
  %var.load24 = load i64, ptr %var.b0, align 8
  %call.res = call i64 @"ascii::to_lower"(i64 %var.load24)
  %b.b.ge0 = icmp sge i64 %call.res, 0
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else:                                      ; preds = %idx_ok
  %var.load40 = load ptr, ptr %var.s, align 8
  %var.load41 = load i64, ptr %"var.i'", align 8
  %call.res42 = call { i64, i64 } @"utf::decode_str_at"(ptr %var.load40, i64 %var.load41)
  %arena.cur43 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store { i64, i64 } %call.res42, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var._dp_1, align 8
  %var.load44 = load ptr, ptr %var._dp_1, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load44, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cp, align 8
  %var.load45 = load ptr, ptr %var._dp_1, align 8
  %fld.gep46 = getelementptr inbounds { i64, i64 }, ptr %var.load45, i32 0, i32 1
  %fld.load47 = load i64, ptr %fld.gep46, align 8
  store i64 %fld.load47, ptr %var.width, align 8
  %var.load48 = load i64, ptr %var.cp, align 8
  %cmptmp49 = icmp slt i64 %var.load48, 0
  br i1 %cmptmp49, label %choice.then50, label %choice.else51

choice.exit23:                                    ; preds = %choice.exit52, %b.push_done
  br label %loop.latch.94

b.byte_ok:                                        ; preds = %abort.dead25, %choice.then22
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len26 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap27 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data28 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len26, %b.cap27
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then22
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap27, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum29 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf30 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf30, label %str_overflow_abort32, label %b.new.buf.len31

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len31
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data35 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len36 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data35, i64 %b.cur.len36
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len36, 1
  %b.nul = getelementptr i8, ptr %b.cur.data35, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep37, align 8
  %var.load38 = load i64, ptr %"var.i'", align 8
  %addtmp39 = add i64 %var.load38, 1
  store i64 %addtmp39, ptr %"var.i'", align 8
  br label %choice.exit23

b.new.buf.len31:                                  ; preds = %abort.dead33, %b.grow
  %arena.cur34 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data28, i64 %b.len26, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len26
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort32:                             ; preds = %b.grow
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %b.new.buf.len31

choice.then50:                                    ; preds = %choice.else
  %b.load53 = load ptr, ptr %var.b, align 8
  %var.load54 = load i64, ptr %var.b0, align 8
  %b.b.ge055 = icmp sge i64 %var.load54, 0
  %b.b.le25556 = icmp sle i64 %var.load54, 255
  %b.byte.range57 = and i1 %b.b.ge055, %b.b.le25556
  br i1 %b.byte.range57, label %b.byte_ok58, label %b.byte_err59

choice.else51:                                    ; preds = %choice.else
  %var.load96 = load ptr, ptr %var.b, align 8
  %var.load97 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load97 to i32
  %call.res98 = call i32 @"unicode::to_lower"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %var.load96, i32 %call.res98)
  %var.load99 = load i64, ptr %"var.i'", align 8
  %var.load100 = load i64, ptr %var.width, align 8
  %addtmp101 = add i64 %var.load99, %var.load100
  store i64 %addtmp101, ptr %"var.i'", align 8
  br label %choice.exit52

choice.exit52:                                    ; preds = %choice.else51, %b.push_done71
  br label %choice.exit23

b.byte_ok58:                                      ; preds = %abort.dead60, %choice.then50
  %b.byte.i861 = trunc i64 %var.load54 to i8
  %b.len62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 0
  %b.len63 = load i64, ptr %b.len62, align 8
  %b.cap64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 2
  %b.cap65 = load i64, ptr %b.cap64, align 8
  %b.data66 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 1
  %b.data67 = load ptr, ptr %b.data66, align 8
  %b.needs.grow68 = icmp eq i64 %b.len63, %b.cap65
  br i1 %b.needs.grow68, label %b.grow69, label %b.nogrow70

b.byte_err59:                                     ; preds = %choice.then50
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %b.byte_ok58

b.grow69:                                         ; preds = %b.byte_ok58
  %b.cap272 = mul i64 %b.cap65, 2
  %b.cap.small73 = icmp slt i64 %b.cap272, 16
  %b.new.cap74 = select i1 %b.cap.small73, i64 16, i64 %b.cap272
  %b.new.buf.len75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap74, i64 1)
  %sum76 = extractvalue { i64, i1 } %b.new.buf.len75, 0
  %ovf77 = extractvalue { i64, i1 } %b.new.buf.len75, 1
  br i1 %ovf77, label %str_overflow_abort79, label %b.new.buf.len78

b.nogrow70:                                       ; preds = %b.byte_ok58
  br label %b.push_done71

b.push_done71:                                    ; preds = %b.nogrow70, %b.new.buf.len78
  %b.cur.data86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 1
  %b.cur.data87 = load ptr, ptr %b.cur.data86, align 8
  %b.cur.len88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 0
  %b.cur.len89 = load i64, ptr %b.cur.len88, align 8
  %b.byte.gep90 = getelementptr i8, ptr %b.cur.data87, i64 %b.cur.len89
  store i8 %b.byte.i861, ptr %b.byte.gep90, align 1
  %b.next.len91 = add i64 %b.cur.len89, 1
  %b.nul92 = getelementptr i8, ptr %b.cur.data87, i64 %b.next.len91
  store i8 0, ptr %b.nul92, align 1
  %b.len.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 0
  store i64 %b.next.len91, ptr %b.len.gep93, align 8
  %var.load94 = load i64, ptr %"var.i'", align 8
  %addtmp95 = add i64 %var.load94, 1
  store i64 %addtmp95, ptr %"var.i'", align 8
  br label %choice.exit52

b.new.buf.len78:                                  ; preds = %abort.dead80, %b.grow69
  %arena.cur81 = call ptr @dva_arena_current()
  %b.new.buf82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 %sum76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf82, ptr align 1 %b.data67, i64 %b.len63, i1 false)
  %b.grow.nul83 = getelementptr i8, ptr %b.new.buf82, i64 %b.len63
  store i8 0, ptr %b.grow.nul83, align 1
  %b.new.data.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 1
  store ptr %b.new.buf82, ptr %b.new.data.gep84, align 8
  %b.new.cap.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 2
  store i64 %b.new.cap74, ptr %b.new.cap.gep85, align 8
  br label %b.push_done71

str_overflow_abort79:                             ; preds = %b.grow69
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %b.new.buf.len78

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data104, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data104, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data104, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len103, 1
  %arena.cur105 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data104, i64 %b.freeze.len103, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len103
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.94
  %b.freeze.data106 = phi ptr [ %b.freeze.data104, %loop.exit.94 ], [ %b.freeze.data104, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur107 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len103, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data106, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load102, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack108 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack108
}

declare i64 @"ascii::to_lower"(i64) #0

declare { i64, i64 } @"utf::decode_str_at"(ptr, i64) #0

declare i32 @"unicode::to_lower"(i32) #0

declare void @"utf::append_rune"(ptr, i32) #0

define { i64, ptr } @"str::upper"(ptr %0) #0 {
entry:
  %var.width = alloca i64, align 8
  %var.cp = alloca i64, align 8
  %var._dp_2 = alloca ptr, align 8
  %var.b0 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.95 = alloca i64, align 8
  %loop.idx.95 = alloca i64, align 8
  %"var.i'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
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
  %ret.pack = load { i64, ptr }, ptr @str.9.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load4, 8
  %arena.cur5 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len6:                                       ; preds = %abort.dead7, %choice.exit
  %arena.cur8 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.95, align 8
  br label %loop.header.95

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %b.buf.len6

loop.header.95:                                   ; preds = %loop.latch.95, %b.buf.len6
  %counter.load = load i64, ptr %loop.idx.95, align 8
  br label %loop.body.95

loop.body.95:                                     ; preds = %loop.header.95
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.95, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load9 = load i64, ptr %"var.i'", align 8
  %var.load10 = load i64, ptr %var.len, align 8
  %cmptmp11 = icmp sge i64 %var.load9, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

loop.exit.nat.95:                                 ; No predecessors!
  br label %loop.exit.95

loop.latch.95:                                    ; preds = %choice.exit23
  %step.val = load i64, ptr %loop.step.95, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.exit.95:                                     ; preds = %choice.then12, %loop.exit.nat.95
  %var.load130 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 0
  %b.freeze.len131 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 1
  %b.freeze.data132 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then12:                                    ; preds = %loop.body.95
  br label %loop.exit.95

choice.exit13:                                    ; preds = %loop.body.95
  %var.load14 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %var.load18 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load18, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit13
  %idx.big = icmp sge i64 %var.load18, %s.read.len16
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead19, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data17, i64 %var.load18
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load20 = load i64, ptr %var.b0, align 8
  %cmptmp21 = icmp slt i64 %var.load20, 128
  br i1 %cmptmp21, label %choice.then22, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit13
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %idx_ok

choice.then22:                                    ; preds = %idx_ok
  %b.load = load ptr, ptr %var.b, align 8
  %var.load24 = load i64, ptr %var.b0, align 8
  %call.res = call i64 @"ascii::to_upper"(i64 %var.load24)
  %b.b.ge0 = icmp sge i64 %call.res, 0
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else:                                      ; preds = %idx_ok
  %var.load40 = load ptr, ptr %var.s, align 8
  %var.load41 = load i64, ptr %"var.i'", align 8
  %call.res42 = call { i64, i64 } @"utf::decode_str_at"(ptr %var.load40, i64 %var.load41)
  %arena.cur43 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store { i64, i64 } %call.res42, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var._dp_2, align 8
  %var.load44 = load ptr, ptr %var._dp_2, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load44, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cp, align 8
  %var.load45 = load ptr, ptr %var._dp_2, align 8
  %fld.gep46 = getelementptr inbounds { i64, i64 }, ptr %var.load45, i32 0, i32 1
  %fld.load47 = load i64, ptr %fld.gep46, align 8
  store i64 %fld.load47, ptr %var.width, align 8
  %var.load48 = load i64, ptr %var.cp, align 8
  %cmptmp49 = icmp slt i64 %var.load48, 0
  br i1 %cmptmp49, label %choice.then50, label %choice.else51

choice.exit23:                                    ; preds = %choice.exit52, %b.push_done
  br label %loop.latch.95

b.byte_ok:                                        ; preds = %abort.dead25, %choice.then22
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len26 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap27 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data28 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len26, %b.cap27
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then22
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead25:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap27, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum29 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf30 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf30, label %str_overflow_abort32, label %b.new.buf.len31

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len31
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data35 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len36 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data35, i64 %b.cur.len36
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len36, 1
  %b.nul = getelementptr i8, ptr %b.cur.data35, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep37, align 8
  %var.load38 = load i64, ptr %"var.i'", align 8
  %addtmp39 = add i64 %var.load38, 1
  store i64 %addtmp39, ptr %"var.i'", align 8
  br label %choice.exit23

b.new.buf.len31:                                  ; preds = %abort.dead33, %b.grow
  %arena.cur34 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum29)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data28, i64 %b.len26, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len26
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort32:                             ; preds = %b.grow
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %b.new.buf.len31

choice.then50:                                    ; preds = %choice.else
  %b.load53 = load ptr, ptr %var.b, align 8
  %var.load54 = load i64, ptr %var.b0, align 8
  %b.b.ge055 = icmp sge i64 %var.load54, 0
  %b.b.le25556 = icmp sle i64 %var.load54, 255
  %b.byte.range57 = and i1 %b.b.ge055, %b.b.le25556
  br i1 %b.byte.range57, label %b.byte_ok58, label %b.byte_err59

choice.else51:                                    ; preds = %choice.else
  %var.load96 = load i64, ptr %var.cp, align 8
  %cmptmp97 = icmp eq i64 %var.load96, 223
  br i1 %cmptmp97, label %choice.then98, label %choice.else99

choice.exit52:                                    ; preds = %choice.exit100, %b.push_done71
  br label %choice.exit23

b.byte_ok58:                                      ; preds = %abort.dead60, %choice.then50
  %b.byte.i861 = trunc i64 %var.load54 to i8
  %b.len62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 0
  %b.len63 = load i64, ptr %b.len62, align 8
  %b.cap64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 2
  %b.cap65 = load i64, ptr %b.cap64, align 8
  %b.data66 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 1
  %b.data67 = load ptr, ptr %b.data66, align 8
  %b.needs.grow68 = icmp eq i64 %b.len63, %b.cap65
  br i1 %b.needs.grow68, label %b.grow69, label %b.nogrow70

b.byte_err59:                                     ; preds = %choice.then50
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %b.byte_ok58

b.grow69:                                         ; preds = %b.byte_ok58
  %b.cap272 = mul i64 %b.cap65, 2
  %b.cap.small73 = icmp slt i64 %b.cap272, 16
  %b.new.cap74 = select i1 %b.cap.small73, i64 16, i64 %b.cap272
  %b.new.buf.len75 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap74, i64 1)
  %sum76 = extractvalue { i64, i1 } %b.new.buf.len75, 0
  %ovf77 = extractvalue { i64, i1 } %b.new.buf.len75, 1
  br i1 %ovf77, label %str_overflow_abort79, label %b.new.buf.len78

b.nogrow70:                                       ; preds = %b.byte_ok58
  br label %b.push_done71

b.push_done71:                                    ; preds = %b.nogrow70, %b.new.buf.len78
  %b.cur.data86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 1
  %b.cur.data87 = load ptr, ptr %b.cur.data86, align 8
  %b.cur.len88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 0
  %b.cur.len89 = load i64, ptr %b.cur.len88, align 8
  %b.byte.gep90 = getelementptr i8, ptr %b.cur.data87, i64 %b.cur.len89
  store i8 %b.byte.i861, ptr %b.byte.gep90, align 1
  %b.next.len91 = add i64 %b.cur.len89, 1
  %b.nul92 = getelementptr i8, ptr %b.cur.data87, i64 %b.next.len91
  store i8 0, ptr %b.nul92, align 1
  %b.len.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 0
  store i64 %b.next.len91, ptr %b.len.gep93, align 8
  %var.load94 = load i64, ptr %"var.i'", align 8
  %addtmp95 = add i64 %var.load94, 1
  store i64 %addtmp95, ptr %"var.i'", align 8
  br label %choice.exit52

b.new.buf.len78:                                  ; preds = %abort.dead80, %b.grow69
  %arena.cur81 = call ptr @dva_arena_current()
  %b.new.buf82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 %sum76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf82, ptr align 1 %b.data67, i64 %b.len63, i1 false)
  %b.grow.nul83 = getelementptr i8, ptr %b.new.buf82, i64 %b.len63
  store i8 0, ptr %b.grow.nul83, align 1
  %b.new.data.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 1
  store ptr %b.new.buf82, ptr %b.new.data.gep84, align 8
  %b.new.cap.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load53, i32 0, i32 2
  store i64 %b.new.cap74, ptr %b.new.cap.gep85, align 8
  br label %b.push_done71

str_overflow_abort79:                             ; preds = %b.grow69
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %b.new.buf.len78

choice.then98:                                    ; preds = %choice.else51
  %b.load101 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.13.struct, align 8
  %app.str.len102 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  %b.app.cur.len103 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len103, i64 %app.str.len102)
  %sum104 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf105 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.app.new.len106

choice.else99:                                    ; preds = %choice.else51
  %var.load124 = load ptr, ptr %var.b, align 8
  %var.load125 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load125 to i32
  %call.res126 = call i32 @"unicode::to_upper"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %var.load124, i32 %call.res126)
  br label %choice.exit100

choice.exit100:                                   ; preds = %choice.else99, %b.grow_done
  %var.load127 = load i64, ptr %"var.i'", align 8
  %var.load128 = load i64, ptr %var.width, align 8
  %addtmp129 = add i64 %var.load127, %var.load128
  store i64 %addtmp129, ptr %"var.i'", align 8
  br label %choice.exit52

b.app.new.len106:                                 ; preds = %abort.dead108, %choice.then98
  %b.cap109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 2
  %b.cap110 = load i64, ptr %b.cap109, align 8
  %b.need.grow = icmp slt i64 %b.cap110, %sum104
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort107:                            ; preds = %choice.then98
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead108:                                    ; No predecessors!
  br label %b.app.new.len106

b.grow2:                                          ; preds = %b.app.new.len106
  %b.cap2111 = mul i64 %b.cap110, 2
  %b.cap.small112 = icmp slt i64 %b.cap2111, 16
  %b.cap.grow = select i1 %b.cap.small112, i64 16, i64 %b.cap2111
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum104
  %b.new.cap113 = select i1 %b.cap.need, i64 %sum104, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  %b.cur.len2114 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 1
  %b.cur.data2115 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap113, i64 1)
  %sum116 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf117 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf117, label %str_overflow_abort119, label %b.new.buf.len2118

b.nogrow2:                                        ; preds = %b.app.new.len106
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2118
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 1
  %b.app.data122 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data122, i64 %b.app.cur.len103
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len102, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data122, i64 %sum104
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  store i64 %sum104, ptr %b.len.gep123, align 8
  br label %choice.exit100

b.new.buf.len2118:                                ; preds = %abort.dead120, %b.grow2
  %arena.cur121 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur121, i64 %sum116)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2115, i64 %b.cur.len2114, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2114
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 2
  store i64 %b.new.cap113, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort119:                            ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %b.new.buf.len2118

b.freeze.check:                                   ; preds = %loop.exit.95
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data132, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data132, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data132, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len131, 1
  %arena.cur133 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data132, i64 %b.freeze.len131, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len131
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.95
  %b.freeze.data134 = phi ptr [ %b.freeze.data132, %loop.exit.95 ], [ %b.freeze.data132, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur135 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len131, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data134, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack136 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack136
}

declare i64 @"ascii::to_upper"(i64) #0

declare i32 @"unicode::to_upper"(i32) #0

define { i64, ptr } @"str::repeat"(ptr %0, i64 %1) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.97 = alloca i64, align 8
  %loop.idx.97 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.len = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.n, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load3, 0
  br i1 %cmptmp, label %or.96.then, label %or.96.else

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

or.96.then:                                       ; preds = %str_ok
  br label %or.96.exit

or.96.else:                                       ; preds = %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp5 = icmp eq i64 %var.load4, 0
  br label %or.96.exit

or.96.exit:                                       ; preds = %or.96.else, %or.96.then
  %or.96.phi = phi i1 [ %cmptmp, %or.96.then ], [ %cmptmp5, %or.96.else ]
  br i1 %or.96.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.96.exit
  %ret.pack = load { i64, ptr }, ptr @str.9.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %or.96.exit
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp7 = icmp eq i64 %var.load6, 1
  br i1 %cmptmp7, label %choice.then8, label %choice.exit9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then8:                                     ; preds = %choice.exit
  %var.load10 = load ptr, ptr %var.s, align 8
  %ret.pack11 = load { i64, ptr }, ptr %var.load10, align 8
  ret { i64, ptr } %ret.pack11

choice.exit9:                                     ; preds = %ret.dead12, %choice.exit
  %var.load13 = load i64, ptr %var.len, align 8
  %var.load14 = load i64, ptr %var.n, align 8
  %multmp = mul i64 %var.load13, %var.load14
  %arena.cur15 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %cap.neg = icmp slt i64 %multmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %multmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len16

ret.dead12:                                       ; No predecessors!
  br label %choice.exit9

b.buf.len16:                                      ; preds = %abort.dead17, %choice.exit9
  %arena.cur18 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load19 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.97, align 8
  br label %loop.header.97

str_overflow_abort:                               ; preds = %choice.exit9
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %b.buf.len16

loop.header.97:                                   ; preds = %loop.latch.97, %b.buf.len16
  %counter.load = load i64, ptr %loop.idx.97, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load19
  br i1 %loop.cond, label %loop.body.97, label %loop.exit.nat.97

loop.body.97:                                     ; preds = %loop.header.97
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.97, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load20 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %app.str.len21 = load i64, ptr %app.str.len, align 8
  %app.str.len22 = and i64 %app.str.len21, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %app.str.data23 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len24 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len24, i64 %app.str.len22)
  %sum25 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf26 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.app.new.len27

loop.exit.nat.97:                                 ; preds = %loop.header.97
  br label %loop.exit.97

loop.latch.97:                                    ; preds = %b.grow_done
  %step.val = load i64, ptr %loop.step.97, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.97, align 8
  br label %loop.header.97

loop.exit.97:                                     ; preds = %loop.exit.nat.97
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

b.app.new.len27:                                  ; preds = %abort.dead29, %loop.body.97
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap30 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap30, %sum25
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort28:                             ; preds = %loop.body.97
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead29:                                     ; No predecessors!
  br label %b.app.new.len27

b.grow2:                                          ; preds = %b.app.new.len27
  %b.cap2 = mul i64 %b.cap30, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum25
  %b.new.cap = select i1 %b.cap.need, i64 %sum25, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len231 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data232 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum33 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf34 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf34, label %str_overflow_abort36, label %b.new.buf.len235

b.nogrow2:                                        ; preds = %b.app.new.len27
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len235
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data39 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data39, i64 %b.app.cur.len24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data23, i64 %app.str.len22, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data39, i64 %sum25
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum25, ptr %b.len.gep40, align 8
  br label %loop.latch.97

b.new.buf.len235:                                 ; preds = %abort.dead37, %b.grow2
  %arena.cur38 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 %sum33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data232, i64 %b.cur.len231, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len231
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort36:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %b.new.buf.len235

b.freeze.check:                                   ; preds = %loop.exit.97
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

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.97
  %b.freeze.data45 = phi ptr [ %b.freeze.data43, %loop.exit.97 ], [ %b.freeze.data43, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
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
  %ret.pack47 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack47
}

define { i64, ptr } @"str::pad_left"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.98 = alloca i64, align 8
  %loop.idx.98 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.pad_n = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.pad_byte = alloca i64, align 8
  %var.width = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.width, align 8
  store i64 %2, ptr %var.pad_byte, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.width, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
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
  %var.load5 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load5, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load6 = load i64, ptr %var.width, align 8
  %var.load7 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load6, %var.load7
  store i64 %subtmp, ptr %var.pad_n, align 8
  %var.load8 = load i64, ptr %var.width, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %cap.neg = icmp slt i64 %var.load8, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len10:                                      ; preds = %abort.dead11, %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load13 = load i64, ptr %var.pad_n, align 8
  store i64 0, ptr %loop.idx.98, align 8
  br label %loop.header.98

str_overflow_abort:                               ; preds = %choice.exit
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %b.buf.len10

loop.header.98:                                   ; preds = %loop.latch.98, %b.buf.len10
  %counter.load = load i64, ptr %loop.idx.98, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load13
  br i1 %loop.cond, label %loop.body.98, label %loop.exit.nat.98

loop.body.98:                                     ; preds = %loop.header.98
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.98, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load14 = load i64, ptr %var.pad_byte, align 8
  %b.b.ge0 = icmp sge i64 %var.load14, 0
  %b.b.le255 = icmp sle i64 %var.load14, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

loop.exit.nat.98:                                 ; preds = %loop.header.98
  br label %loop.exit.98

loop.latch.98:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.98, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.98, align 8
  br label %loop.header.98

loop.exit.98:                                     ; preds = %loop.exit.nat.98
  %b.load28 = load ptr, ptr %var.b, align 8
  %var.load29 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %app.str.len30 = load i64, ptr %app.str.len, align 8
  %app.str.len31 = and i64 %app.str.len30, 281474976710655
  %str.tag32 = lshr i64 %app.str.len30, 48
  %tag.immortal34 = icmp eq i64 %str.tag32, 0
  br i1 %tag.immortal34, label %str_ok33, label %tag.gen_check35

b.byte_ok:                                        ; preds = %abort.dead15, %loop.body.98
  %b.byte.i8 = trunc i64 %var.load14 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len16 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data18 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len16, %b.cap17
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %loop.body.98
  %5 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap17, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum19 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf20 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %b.new.buf.len21

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len21
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data25 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len26 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data25, i64 %b.cur.len26
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len26, 1
  %b.nul = getelementptr i8, ptr %b.cur.data25, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep27, align 8
  br label %loop.latch.98

b.new.buf.len21:                                  ; preds = %abort.dead23, %b.grow
  %arena.cur24 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data18, i64 %b.len16, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len16
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort22:                             ; preds = %b.grow
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %b.new.buf.len21

str_ok33:                                         ; preds = %abort.dead42, %tag.slow_check36, %tag.gen_check35, %loop.exit.98
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %app.str.data43 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.app.cur.len44 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len44, i64 %app.str.len31)
  %sum45 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf46 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf46, label %str_overflow_abort48, label %b.app.new.len47

tag.gen_check35:                                  ; preds = %loop.exit.98
  %active.gen38 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok39 = icmp eq i64 %str.tag32, %active.gen38
  br i1 %tag.fast.ok39, label %str_ok33, label %tag.slow_check36

tag.slow_check36:                                 ; preds = %tag.gen_check35
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag32)
  br i1 %tag.valid41, label %str_ok33, label %tag.stale37

tag.stale37:                                      ; preds = %tag.slow_check36
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %str_ok33

b.app.new.len47:                                  ; preds = %abort.dead49, %str_ok33
  %b.cap50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  %b.cap51 = load i64, ptr %b.cap50, align 8
  %b.need.grow = icmp slt i64 %b.cap51, %sum45
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort48:                             ; preds = %str_ok33
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead49:                                     ; No predecessors!
  br label %b.app.new.len47

b.grow2:                                          ; preds = %b.app.new.len47
  %b.cap252 = mul i64 %b.cap51, 2
  %b.cap.small53 = icmp slt i64 %b.cap252, 16
  %b.cap.grow = select i1 %b.cap.small53, i64 16, i64 %b.cap252
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum45
  %b.new.cap54 = select i1 %b.cap.need, i64 %sum45, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.cur.len255 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.cur.data256 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap54, i64 1)
  %sum57 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf58 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.new.buf.len259

b.nogrow2:                                        ; preds = %b.app.new.len47
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len259
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.app.data63 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data63, i64 %b.app.cur.len44
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data43, i64 %app.str.len31, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data63, i64 %sum45
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  store i64 %sum45, ptr %b.len.gep64, align 8
  %var.load65 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %b.freeze.len66 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  %b.freeze.data67 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len259:                                 ; preds = %abort.dead61, %b.grow2
  %arena.cur62 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %sum57)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data256, i64 %b.cur.len255, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len255
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  store i64 %b.new.cap54, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort60:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %b.new.buf.len259

b.freeze.check:                                   ; preds = %b.grow_done
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data67, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data67, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data67, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len66, 1
  %arena.cur68 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data67, i64 %b.freeze.len66, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len66
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data69 = phi ptr [ %b.freeze.data67, %b.grow_done ], [ %b.freeze.data67, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur70 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len66, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data69, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack71 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack71
}

define { i64, ptr } @"str::pad_right"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.99 = alloca i64, align 8
  %loop.idx.99 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.pad_n = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.pad_byte = alloca i64, align 8
  %var.width = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.width, align 8
  store i64 %2, ptr %var.pad_byte, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.width, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
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
  %var.load5 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load5, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load6 = load i64, ptr %var.width, align 8
  %var.load7 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load6, %var.load7
  store i64 %subtmp, ptr %var.pad_n, align 8
  %var.load8 = load i64, ptr %var.width, align 8
  %arena.cur9 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %cap.neg = icmp slt i64 %var.load8, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len10

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len10:                                      ; preds = %abort.dead11, %choice.exit
  %arena.cur12 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load13 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %app.str.len14 = load i64, ptr %app.str.len, align 8
  %app.str.len15 = and i64 %app.str.len14, 281474976710655
  %str.tag16 = lshr i64 %app.str.len14, 48
  %tag.immortal18 = icmp eq i64 %str.tag16, 0
  br i1 %tag.immortal18, label %str_ok17, label %tag.gen_check19

str_overflow_abort:                               ; preds = %choice.exit
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead11:                                     ; No predecessors!
  br label %b.buf.len10

str_ok17:                                         ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %b.buf.len10
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %app.str.data27 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len28 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len28, i64 %app.str.len15)
  %sum29 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf30 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf30, label %str_overflow_abort32, label %b.app.new.len31

tag.gen_check19:                                  ; preds = %b.buf.len10
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %str.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %str_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag16)
  br i1 %tag.valid25, label %str_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %str_ok17

b.app.new.len31:                                  ; preds = %abort.dead33, %str_ok17
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap34 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap34, %sum29
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort32:                             ; preds = %str_ok17
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead33:                                     ; No predecessors!
  br label %b.app.new.len31

b.grow2:                                          ; preds = %b.app.new.len31
  %b.cap2 = mul i64 %b.cap34, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum29
  %b.new.cap = select i1 %b.cap.need, i64 %sum29, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len235 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data236 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum37 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf38 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf38, label %str_overflow_abort40, label %b.new.buf.len239

b.nogrow2:                                        ; preds = %b.app.new.len31
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len239
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data43 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data43, i64 %b.app.cur.len28
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data27, i64 %app.str.len15, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data43, i64 %sum29
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum29, ptr %b.len.gep44, align 8
  %var.load45 = load i64, ptr %var.pad_n, align 8
  store i64 0, ptr %loop.idx.99, align 8
  br label %loop.header.99

b.new.buf.len239:                                 ; preds = %abort.dead41, %b.grow2
  %arena.cur42 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %sum37)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data236, i64 %b.cur.len235, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len235
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort40:                             ; preds = %b.grow2
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead41:                                     ; No predecessors!
  br label %b.new.buf.len239

loop.header.99:                                   ; preds = %loop.latch.99, %b.grow_done
  %counter.load = load i64, ptr %loop.idx.99, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load45
  br i1 %loop.cond, label %loop.body.99, label %loop.exit.nat.99

loop.body.99:                                     ; preds = %loop.header.99
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.99, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load46 = load ptr, ptr %var.b, align 8
  %var.load47 = load i64, ptr %var.pad_byte, align 8
  %b.b.ge0 = icmp sge i64 %var.load47, 0
  %b.b.le255 = icmp sle i64 %var.load47, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

loop.exit.nat.99:                                 ; preds = %loop.header.99
  br label %loop.exit.99

loop.latch.99:                                    ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.99, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.99, align 8
  br label %loop.header.99

loop.exit.99:                                     ; preds = %loop.exit.nat.99
  %var.load65 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  %b.freeze.len66 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  %b.freeze.data67 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok:                                        ; preds = %abort.dead48, %loop.body.99
  %b.byte.i8 = trunc i64 %var.load47 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load46, i32 0, i32 0
  %b.len49 = load i64, ptr %b.len, align 8
  %b.cap50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load46, i32 0, i32 2
  %b.cap51 = load i64, ptr %b.cap50, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load46, i32 0, i32 1
  %b.data52 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len49, %b.cap51
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %loop.body.99
  %8 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap253 = mul i64 %b.cap51, 2
  %b.cap.small54 = icmp slt i64 %b.cap253, 16
  %b.new.cap55 = select i1 %b.cap.small54, i64 16, i64 %b.cap253
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap55, i64 1)
  %sum56 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf57 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf57, label %str_overflow_abort59, label %b.new.buf.len58

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len58
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load46, i32 0, i32 1
  %b.cur.data62 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load46, i32 0, i32 0
  %b.cur.len63 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data62, i64 %b.cur.len63
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len63, 1
  %b.nul = getelementptr i8, ptr %b.cur.data62, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load46, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep64, align 8
  br label %loop.latch.99

b.new.buf.len58:                                  ; preds = %abort.dead60, %b.grow
  %arena.cur61 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur61, i64 %sum56)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data52, i64 %b.len49, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len49
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load46, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load46, i32 0, i32 2
  store i64 %b.new.cap55, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort59:                             ; preds = %b.grow
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %b.new.buf.len58

b.freeze.check:                                   ; preds = %loop.exit.99
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data67, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data67, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data67, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len66, 1
  %arena.cur68 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data67, i64 %b.freeze.len66, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len66
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.99
  %b.freeze.data69 = phi ptr [ %b.freeze.data67, %loop.exit.99 ], [ %b.freeze.data67, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur70 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len66, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data69, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load65, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack71 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack71
}

define { i64, ptr } @"str::reverse"(ptr %0) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.100 = alloca i64, align 8
  %loop.idx.100 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.len = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sle i64 %var.load3, 1
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
  %var.load4 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load4, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load5 = load i64, ptr %var.len, align 8
  %cap.neg = icmp slt i64 %var.load5, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load5
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len6:                                       ; preds = %abort.dead7, %choice.exit
  %arena.cur8 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load9 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.100, align 8
  br label %loop.header.100

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %b.buf.len6

loop.header.100:                                  ; preds = %loop.latch.100, %b.buf.len6
  %counter.load = load i64, ptr %loop.idx.100, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load9
  br i1 %loop.cond, label %loop.body.100, label %loop.exit.nat.100

loop.body.100:                                    ; preds = %loop.header.100
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.100, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load10 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load14, 1
  %var.load15 = load i64, ptr %var.i, align 8
  %subtmp16 = sub i64 %subtmp, %var.load15
  %idx.neg = icmp slt i64 %subtmp16, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.100:                                ; preds = %loop.header.100
  br label %loop.exit.100

loop.latch.100:                                   ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.100, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.exit.100:                                    ; preds = %loop.exit.nat.100
  %var.load31 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load31, i32 0, i32 0
  %b.freeze.len32 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load31, i32 0, i32 1
  %b.freeze.data33 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

idx_big_check:                                    ; preds = %loop.body.100
  %idx.big = icmp sge i64 %subtmp16, %s.read.len12
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead17, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data13, i64 %subtmp16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val, 0
  %b.b.le255 = icmp sle i64 %s.byte.val, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob:                                          ; preds = %idx_big_check, %loop.body.100
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %idx_ok

b.byte_ok:                                        ; preds = %abort.dead18, %idx_ok
  %b.byte.i8 = trunc i64 %s.byte.val to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len19 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap20 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data21 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len19, %b.cap20
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap20, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum22 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf23 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf23, label %str_overflow_abort25, label %b.new.buf.len24

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len24
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data28 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len29 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data28, i64 %b.cur.len29
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len29, 1
  %b.nul = getelementptr i8, ptr %b.cur.data28, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep30, align 8
  br label %loop.latch.100

b.new.buf.len24:                                  ; preds = %abort.dead26, %b.grow
  %arena.cur27 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum22)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data21, i64 %b.len19, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len19
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort25:                             ; preds = %b.grow
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %b.new.buf.len24

b.freeze.check:                                   ; preds = %loop.exit.100
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data33, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data33, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data33, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len32, 1
  %arena.cur34 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data33, i64 %b.freeze.len32, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len32
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.100
  %b.freeze.data35 = phi ptr [ %b.freeze.data33, %loop.exit.100 ], [ %b.freeze.data33, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur36 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len32, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data35, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load31, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load31, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load31, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack37 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack37
}

define { i64, ptr } @"str::replace_first"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.after = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.lo = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.new_s = alloca ptr, align 8
  %var.old = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.old, align 8
  store ptr %2, ptr %var.new_s, align 8
  %var.load = load ptr, ptr %var.old, align 8
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
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load3 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load3, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %var.load5 = load ptr, ptr %var.old, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load4, ptr %var.load5)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then6, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then6:                                     ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load8 = load ptr, ptr %var.s, align 8
  %str.len.query9 = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %str.len.query10 = load i64, ptr %str.len.query9, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %str.tag12 = lshr i64 %str.len.query10, 48
  %tag.immortal14 = icmp eq i64 %str.tag12, 0
  br i1 %tag.immortal14, label %str_ok13, label %tag.gen_check15

choice.else:                                      ; preds = %choice.exit
  %var.load218 = load ptr, ptr %var.s, align 8
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ %var.load218, %choice.else ]
  %ret.pack219 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack219

str_ok13:                                         ; preds = %abort.dead22, %tag.slow_check16, %tag.gen_check15, %choice.then6
  store i64 %str.len.query11, ptr %var.ls, align 8
  %var.load23 = load ptr, ptr %var.old, align 8
  %str.len.query24 = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %str.len.query25 = load i64, ptr %str.len.query24, align 8
  %str.len.query26 = and i64 %str.len.query25, 281474976710655
  %str.tag27 = lshr i64 %str.len.query25, 48
  %tag.immortal29 = icmp eq i64 %str.tag27, 0
  br i1 %tag.immortal29, label %str_ok28, label %tag.gen_check30

tag.gen_check15:                                  ; preds = %choice.then6
  %active.gen18 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok19 = icmp eq i64 %str.tag12, %active.gen18
  br i1 %tag.fast.ok19, label %str_ok13, label %tag.slow_check16

tag.slow_check16:                                 ; preds = %tag.gen_check15
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %str.tag12)
  br i1 %tag.valid21, label %str_ok13, label %tag.stale17

tag.stale17:                                      ; preds = %tag.slow_check16
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead22:                                     ; No predecessors!
  br label %str_ok13

str_ok28:                                         ; preds = %abort.dead37, %tag.slow_check31, %tag.gen_check30, %str_ok13
  store i64 %str.len.query26, ptr %var.lo, align 8
  %var.load38 = load i64, ptr %var.ls, align 8
  %var.load39 = load i64, ptr %var.lo, align 8
  %subtmp = sub i64 %var.load38, %var.load39
  %var.load40 = load ptr, ptr %var.new_s, align 8
  %str.len.query41 = getelementptr inbounds { i64, ptr }, ptr %var.load40, i32 0, i32 0
  %str.len.query42 = load i64, ptr %str.len.query41, align 8
  %str.len.query43 = and i64 %str.len.query42, 281474976710655
  %str.tag44 = lshr i64 %str.len.query42, 48
  %tag.immortal46 = icmp eq i64 %str.tag44, 0
  br i1 %tag.immortal46, label %str_ok45, label %tag.gen_check47

tag.gen_check30:                                  ; preds = %str_ok13
  %active.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok34 = icmp eq i64 %str.tag27, %active.gen33
  br i1 %tag.fast.ok34, label %str_ok28, label %tag.slow_check31

tag.slow_check31:                                 ; preds = %tag.gen_check30
  %arena.cur35 = call ptr @dva_arena_current()
  %tag.valid36 = call i1 @dva_arena_validate_tag(ptr %arena.cur35, i64 %str.tag27)
  br i1 %tag.valid36, label %str_ok28, label %tag.stale32

tag.stale32:                                      ; preds = %tag.slow_check31
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %str_ok28

str_ok45:                                         ; preds = %abort.dead54, %tag.slow_check48, %tag.gen_check47, %str_ok28
  %addtmp = add i64 %subtmp, %str.len.query43
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len55

tag.gen_check47:                                  ; preds = %str_ok28
  %active.gen50 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok51 = icmp eq i64 %str.tag44, %active.gen50
  br i1 %tag.fast.ok51, label %str_ok45, label %tag.slow_check48

tag.slow_check48:                                 ; preds = %tag.gen_check47
  %arena.cur52 = call ptr @dva_arena_current()
  %tag.valid53 = call i1 @dva_arena_validate_tag(ptr %arena.cur52, i64 %str.tag44)
  br i1 %tag.valid53, label %str_ok45, label %tag.stale49

tag.stale49:                                      ; preds = %tag.slow_check48
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %str_ok45

b.buf.len55:                                      ; preds = %abort.dead56, %str_ok45
  %arena.cur57 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load58 = load i64, ptr %var.idx, align 8
  %cmptmp59 = icmp sgt i64 %var.load58, 0
  br i1 %cmptmp59, label %choice.then60, label %choice.exit61

str_overflow_abort:                               ; preds = %str_ok45
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %b.buf.len55

choice.then60:                                    ; preds = %b.buf.len55
  %b.load = load ptr, ptr %var.b, align 8
  %var.load62 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 0
  %s.read.len63 = load i64, ptr %s.read.len, align 8
  %s.read.len64 = and i64 %s.read.len63, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 1
  %s.read.data65 = load ptr, ptr %s.read.data, align 8
  %var.load66 = load i64, ptr %var.idx, align 8
  %rel.start = add i64 %s.read.len64, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len64
  %final.start = select i1 %start.gt.len, i64 %s.read.len64, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load66, 0
  %rel.end = add i64 %s.read.len64, %var.load66
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load66
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len64
  %final.end = select i1 %end.gt.len, i64 %s.read.len64, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data65, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len67 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len67, i64 %view.len)
  %sum68 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf69 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf69, label %str_overflow_abort71, label %b.app.new.len70

choice.exit61:                                    ; preds = %b.grow_done, %b.buf.len55
  %b.load84 = load ptr, ptr %var.b, align 8
  %var.load85 = load ptr, ptr %var.new_s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 0
  %app.str.len86 = load i64, ptr %app.str.len, align 8
  %app.str.len87 = and i64 %app.str.len86, 281474976710655
  %str.tag88 = lshr i64 %app.str.len86, 48
  %tag.immortal90 = icmp eq i64 %str.tag88, 0
  br i1 %tag.immortal90, label %str_ok89, label %tag.gen_check91

b.app.new.len70:                                  ; preds = %abort.dead72, %choice.then60
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap73 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap73, %sum68
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort71:                             ; preds = %choice.then60
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %b.app.new.len70

b.grow2:                                          ; preds = %b.app.new.len70
  %b.cap2 = mul i64 %b.cap73, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum68
  %b.new.cap = select i1 %b.cap.need, i64 %sum68, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len274 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data275 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum76 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf77 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf77, label %str_overflow_abort79, label %b.new.buf.len278

b.nogrow2:                                        ; preds = %b.app.new.len70
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len278
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data82 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data82, i64 %b.app.cur.len67
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data82, i64 %sum68
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum68, ptr %b.len.gep83, align 8
  br label %choice.exit61

b.new.buf.len278:                                 ; preds = %abort.dead80, %b.grow2
  %arena.cur81 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 %sum76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data275, i64 %b.cur.len274, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len274
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort79:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %b.new.buf.len278

str_ok89:                                         ; preds = %abort.dead98, %tag.slow_check92, %tag.gen_check91, %choice.exit61
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 1
  %app.str.data99 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load84, i32 0, i32 0
  %b.app.cur.len101 = load i64, ptr %b.app.cur.len100, align 8
  %b.app.new.len102 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len101, i64 %app.str.len87)
  %sum103 = extractvalue { i64, i1 } %b.app.new.len102, 0
  %ovf104 = extractvalue { i64, i1 } %b.app.new.len102, 1
  br i1 %ovf104, label %str_overflow_abort106, label %b.app.new.len105

tag.gen_check91:                                  ; preds = %choice.exit61
  %active.gen94 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok95 = icmp eq i64 %str.tag88, %active.gen94
  br i1 %tag.fast.ok95, label %str_ok89, label %tag.slow_check92

tag.slow_check92:                                 ; preds = %tag.gen_check91
  %arena.cur96 = call ptr @dva_arena_current()
  %tag.valid97 = call i1 @dva_arena_validate_tag(ptr %arena.cur96, i64 %str.tag88)
  br i1 %tag.valid97, label %str_ok89, label %tag.stale93

tag.stale93:                                      ; preds = %tag.slow_check92
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead98:                                     ; No predecessors!
  br label %str_ok89

b.app.new.len105:                                 ; preds = %abort.dead107, %str_ok89
  %b.cap108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load84, i32 0, i32 2
  %b.cap109 = load i64, ptr %b.cap108, align 8
  %b.need.grow110 = icmp slt i64 %b.cap109, %sum103
  br i1 %b.need.grow110, label %b.grow2111, label %b.nogrow2112

str_overflow_abort106:                            ; preds = %str_ok89
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead107:                                    ; No predecessors!
  br label %b.app.new.len105

b.grow2111:                                       ; preds = %b.app.new.len105
  %b.cap2114 = mul i64 %b.cap109, 2
  %b.cap.small115 = icmp slt i64 %b.cap2114, 16
  %b.cap.grow116 = select i1 %b.cap.small115, i64 16, i64 %b.cap2114
  %b.cap.need117 = icmp slt i64 %b.cap.grow116, %sum103
  %b.new.cap118 = select i1 %b.cap.need117, i64 %sum103, i64 %b.cap.grow116
  %b.cur.len2119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load84, i32 0, i32 0
  %b.cur.len2120 = load i64, ptr %b.cur.len2119, align 8
  %b.cur.data2121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load84, i32 0, i32 1
  %b.cur.data2122 = load ptr, ptr %b.cur.data2121, align 8
  %b.new.buf.len2123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap118, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len2123, 0
  %ovf125 = extractvalue { i64, i1 } %b.new.buf.len2123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.new.buf.len2126

b.nogrow2112:                                     ; preds = %b.app.new.len105
  br label %b.grow_done113

b.grow_done113:                                   ; preds = %b.nogrow2112, %b.new.buf.len2126
  %b.app.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load84, i32 0, i32 1
  %b.app.data135 = load ptr, ptr %b.app.data134, align 8
  %b.app.dst136 = getelementptr i8, ptr %b.app.data135, i64 %b.app.cur.len101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst136, ptr align 1 %app.str.data99, i64 %app.str.len87, i1 false)
  %b.app.nul137 = getelementptr i8, ptr %b.app.data135, i64 %sum103
  store i8 0, ptr %b.app.nul137, align 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load84, i32 0, i32 0
  store i64 %sum103, ptr %b.len.gep138, align 8
  %var.load139 = load i64, ptr %var.idx, align 8
  %var.load140 = load i64, ptr %var.lo, align 8
  %addtmp141 = add i64 %var.load139, %var.load140
  store i64 %addtmp141, ptr %var.after, align 8
  %var.load142 = load i64, ptr %var.after, align 8
  %var.load143 = load i64, ptr %var.ls, align 8
  %cmptmp144 = icmp slt i64 %var.load142, %var.load143
  br i1 %cmptmp144, label %choice.then145, label %choice.exit146

b.new.buf.len2126:                                ; preds = %abort.dead128, %b.grow2111
  %arena.cur129 = call ptr @dva_arena_current()
  %b.new.buf2130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2130, ptr align 1 %b.cur.data2122, i64 %b.cur.len2120, i1 false)
  %b.grow2.nul131 = getelementptr i8, ptr %b.new.buf2130, i64 %b.cur.len2120
  store i8 0, ptr %b.grow2.nul131, align 1
  %b.new.data2.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load84, i32 0, i32 1
  store ptr %b.new.buf2130, ptr %b.new.data2.gep132, align 8
  %b.new.cap2.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load84, i32 0, i32 2
  store i64 %b.new.cap118, ptr %b.new.cap2.gep133, align 8
  br label %b.grow_done113

str_overflow_abort127:                            ; preds = %b.grow2111
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %b.new.buf.len2126

choice.then145:                                   ; preds = %b.grow_done113
  %b.load147 = load ptr, ptr %var.b, align 8
  %var.load148 = load ptr, ptr %var.s, align 8
  %s.read.len149 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 0
  %s.read.len150 = load i64, ptr %s.read.len149, align 8
  %s.read.len151 = and i64 %s.read.len150, 281474976710655
  %s.read.data152 = getelementptr inbounds { i64, ptr }, ptr %var.load148, i32 0, i32 1
  %s.read.data153 = load ptr, ptr %s.read.data152, align 8
  %var.load154 = load i64, ptr %var.after, align 8
  %var.load155 = load i64, ptr %var.ls, align 8
  %start.is_neg = icmp slt i64 %var.load154, 0
  %rel.start156 = add i64 %s.read.len151, %var.load154
  %norm.start157 = select i1 %start.is_neg, i64 %rel.start156, i64 %var.load154
  %start.lt.0158 = icmp slt i64 %norm.start157, 0
  %c.start.0159 = select i1 %start.lt.0158, i64 0, i64 %norm.start157
  %start.gt.len160 = icmp sgt i64 %c.start.0159, %s.read.len151
  %final.start161 = select i1 %start.gt.len160, i64 %s.read.len151, i64 %c.start.0159
  %end.is_neg162 = icmp slt i64 %var.load155, 0
  %rel.end163 = add i64 %s.read.len151, %var.load155
  %norm.end164 = select i1 %end.is_neg162, i64 %rel.end163, i64 %var.load155
  %end.lt.0165 = icmp slt i64 %norm.end164, 0
  %c.end.0166 = select i1 %end.lt.0165, i64 0, i64 %norm.end164
  %end.gt.len167 = icmp sgt i64 %c.end.0166, %s.read.len151
  %final.end168 = select i1 %end.gt.len167, i64 %s.read.len151, i64 %c.end.0166
  %view.empty169 = icmp sle i64 %final.end168, %final.start161
  %view.len.sub170 = sub i64 %final.end168, %final.start161
  %view.len171 = select i1 %view.empty169, i64 0, i64 %view.len.sub170
  %view.data172 = getelementptr i8, ptr %s.read.data153, i64 %final.start161
  %b.app.cur.len173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.app.cur.len174 = load i64, ptr %b.app.cur.len173, align 8
  %b.app.new.len175 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len174, i64 %view.len171)
  %sum176 = extractvalue { i64, i1 } %b.app.new.len175, 0
  %ovf177 = extractvalue { i64, i1 } %b.app.new.len175, 1
  br i1 %ovf177, label %str_overflow_abort179, label %b.app.new.len178

choice.exit146:                                   ; preds = %b.grow_done186, %b.grow_done113
  %var.load212 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load212, i32 0, i32 0
  %b.freeze.len213 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load212, i32 0, i32 1
  %b.freeze.data214 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.app.new.len178:                                 ; preds = %abort.dead180, %choice.then145
  %b.cap181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  %b.cap182 = load i64, ptr %b.cap181, align 8
  %b.need.grow183 = icmp slt i64 %b.cap182, %sum176
  br i1 %b.need.grow183, label %b.grow2184, label %b.nogrow2185

str_overflow_abort179:                            ; preds = %choice.then145
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead180:                                    ; No predecessors!
  br label %b.app.new.len178

b.grow2184:                                       ; preds = %b.app.new.len178
  %b.cap2187 = mul i64 %b.cap182, 2
  %b.cap.small188 = icmp slt i64 %b.cap2187, 16
  %b.cap.grow189 = select i1 %b.cap.small188, i64 16, i64 %b.cap2187
  %b.cap.need190 = icmp slt i64 %b.cap.grow189, %sum176
  %b.new.cap191 = select i1 %b.cap.need190, i64 %sum176, i64 %b.cap.grow189
  %b.cur.len2192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  %b.cur.len2193 = load i64, ptr %b.cur.len2192, align 8
  %b.cur.data2194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.cur.data2195 = load ptr, ptr %b.cur.data2194, align 8
  %b.new.buf.len2196 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap191, i64 1)
  %sum197 = extractvalue { i64, i1 } %b.new.buf.len2196, 0
  %ovf198 = extractvalue { i64, i1 } %b.new.buf.len2196, 1
  br i1 %ovf198, label %str_overflow_abort200, label %b.new.buf.len2199

b.nogrow2185:                                     ; preds = %b.app.new.len178
  br label %b.grow_done186

b.grow_done186:                                   ; preds = %b.nogrow2185, %b.new.buf.len2199
  %b.app.data207 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  %b.app.data208 = load ptr, ptr %b.app.data207, align 8
  %b.app.dst209 = getelementptr i8, ptr %b.app.data208, i64 %b.app.cur.len174
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst209, ptr align 1 %view.data172, i64 %view.len171, i1 false)
  %b.app.nul210 = getelementptr i8, ptr %b.app.data208, i64 %sum176
  store i8 0, ptr %b.app.nul210, align 1
  %b.len.gep211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 0
  store i64 %sum176, ptr %b.len.gep211, align 8
  br label %choice.exit146

b.new.buf.len2199:                                ; preds = %abort.dead201, %b.grow2184
  %arena.cur202 = call ptr @dva_arena_current()
  %b.new.buf2203 = call ptr @dva_arena_alloc(ptr %arena.cur202, i64 %sum197)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2203, ptr align 1 %b.cur.data2195, i64 %b.cur.len2193, i1 false)
  %b.grow2.nul204 = getelementptr i8, ptr %b.new.buf2203, i64 %b.cur.len2193
  store i8 0, ptr %b.grow2.nul204, align 1
  %b.new.data2.gep205 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 1
  store ptr %b.new.buf2203, ptr %b.new.data2.gep205, align 8
  %b.new.cap2.gep206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load147, i32 0, i32 2
  store i64 %b.new.cap191, ptr %b.new.cap2.gep206, align 8
  br label %b.grow_done186

str_overflow_abort200:                            ; preds = %b.grow2184
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead201:                                    ; No predecessors!
  br label %b.new.buf.len2199

b.freeze.check:                                   ; preds = %choice.exit146
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data214, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data214, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data214, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len213, 1
  %arena.cur215 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data214, i64 %b.freeze.len213, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len213
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit146
  %b.freeze.data216 = phi ptr [ %b.freeze.data214, %choice.exit146 ], [ %b.freeze.data214, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur217 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len213, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data216, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load212, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load212, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load212, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit7
}

define { i64, ptr } @"str::replace"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._128 = alloca i64, align 8
  %var._113 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.101 = alloca i64, align 8
  %loop.idx.101 = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.first_idx = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.ls = alloca i64, align 8
  %var.lo = alloca i64, align 8
  %var.new_s = alloca ptr, align 8
  %var.old = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.old, align 8
  store ptr %2, ptr %var.new_s, align 8
  %var.load = load ptr, ptr %var.old, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.lo, align 8
  %var.load3 = load i64, ptr %var.lo, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
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
  %var.load4 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load4, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load5 = load ptr, ptr %var.s, align 8
  %str.len.query6 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query6, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag9 = lshr i64 %str.len.query7, 48
  %tag.immortal11 = icmp eq i64 %str.tag9, 0
  br i1 %tag.immortal11, label %str_ok10, label %tag.gen_check12

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok10:                                         ; preds = %abort.dead19, %tag.slow_check13, %tag.gen_check12, %choice.exit
  store i64 %str.len.query8, ptr %var.ls, align 8
  %var.load20 = load ptr, ptr %var.s, align 8
  %var.load21 = load ptr, ptr %var.old, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load20, ptr %var.load21)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then22, label %choice.else

tag.gen_check12:                                  ; preds = %choice.exit
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok16 = icmp eq i64 %str.tag9, %active.gen15
  br i1 %tag.fast.ok16, label %str_ok10, label %tag.slow_check13

tag.slow_check13:                                 ; preds = %tag.gen_check12
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %str.tag9)
  br i1 %tag.valid18, label %str_ok10, label %tag.stale14

tag.stale14:                                      ; preds = %tag.slow_check13
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %str_ok10

choice.then22:                                    ; preds = %str_ok10
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.first_idx, align 8
  %var.load24 = load i64, ptr %var.ls, align 8
  %addtmp = add i64 %var.load24, 16
  %arena.cur25 = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 24)
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len26

choice.else:                                      ; preds = %str_ok10
  %var.load320 = load ptr, ptr %var.s, align 8
  br label %choice.exit23

choice.exit23:                                    ; preds = %choice.else, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ %var.load320, %choice.else ]
  %ret.pack321 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack321

b.buf.len26:                                      ; preds = %abort.dead27, %choice.then22
  %arena.cur28 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load29 = load i64, ptr %var.first_idx, align 8
  %cmptmp30 = icmp sgt i64 %var.load29, 0
  br i1 %cmptmp30, label %choice.then31, label %choice.exit32

str_overflow_abort:                               ; preds = %choice.then22
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %b.buf.len26

choice.then31:                                    ; preds = %b.buf.len26
  %b.load = load ptr, ptr %var.b, align 8
  %var.load33 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %s.read.len34 = load i64, ptr %s.read.len, align 8
  %s.read.len35 = and i64 %s.read.len34, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %s.read.data36 = load ptr, ptr %s.read.data, align 8
  %var.load37 = load i64, ptr %var.first_idx, align 8
  %rel.start = add i64 %s.read.len35, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len35
  %final.start = select i1 %start.gt.len, i64 %s.read.len35, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load37, 0
  %rel.end = add i64 %s.read.len35, %var.load37
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load37
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len35
  %final.end = select i1 %end.gt.len, i64 %s.read.len35, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data36, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len38 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len38, i64 %view.len)
  %sum39 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf40 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %b.app.new.len41

choice.exit32:                                    ; preds = %b.grow_done, %b.buf.len26
  %b.load55 = load ptr, ptr %var.b, align 8
  %var.load56 = load ptr, ptr %var.new_s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %app.str.len57 = load i64, ptr %app.str.len, align 8
  %app.str.len58 = and i64 %app.str.len57, 281474976710655
  %str.tag59 = lshr i64 %app.str.len57, 48
  %tag.immortal61 = icmp eq i64 %str.tag59, 0
  br i1 %tag.immortal61, label %str_ok60, label %tag.gen_check62

b.app.new.len41:                                  ; preds = %abort.dead43, %choice.then31
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap44 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap44, %sum39
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort42:                             ; preds = %choice.then31
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %b.app.new.len41

b.grow2:                                          ; preds = %b.app.new.len41
  %b.cap2 = mul i64 %b.cap44, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum39
  %b.new.cap = select i1 %b.cap.need, i64 %sum39, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len245 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data246 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum47 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf48 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf48, label %str_overflow_abort50, label %b.new.buf.len249

b.nogrow2:                                        ; preds = %b.app.new.len41
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len249
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data53 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data53, i64 %b.app.cur.len38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data53, i64 %sum39
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum39, ptr %b.len.gep54, align 8
  br label %choice.exit32

b.new.buf.len249:                                 ; preds = %abort.dead51, %b.grow2
  %arena.cur52 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 %sum47)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data246, i64 %b.cur.len245, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len245
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort50:                             ; preds = %b.grow2
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead51:                                     ; No predecessors!
  br label %b.new.buf.len249

str_ok60:                                         ; preds = %abort.dead69, %tag.slow_check63, %tag.gen_check62, %choice.exit32
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %app.str.data70 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 0
  %b.app.cur.len72 = load i64, ptr %b.app.cur.len71, align 8
  %b.app.new.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len72, i64 %app.str.len58)
  %sum74 = extractvalue { i64, i1 } %b.app.new.len73, 0
  %ovf75 = extractvalue { i64, i1 } %b.app.new.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.app.new.len76

tag.gen_check62:                                  ; preds = %choice.exit32
  %active.gen65 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok66 = icmp eq i64 %str.tag59, %active.gen65
  br i1 %tag.fast.ok66, label %str_ok60, label %tag.slow_check63

tag.slow_check63:                                 ; preds = %tag.gen_check62
  %arena.cur67 = call ptr @dva_arena_current()
  %tag.valid68 = call i1 @dva_arena_validate_tag(ptr %arena.cur67, i64 %str.tag59)
  br i1 %tag.valid68, label %str_ok60, label %tag.stale64

tag.stale64:                                      ; preds = %tag.slow_check63
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead69:                                     ; No predecessors!
  br label %str_ok60

b.app.new.len76:                                  ; preds = %abort.dead78, %str_ok60
  %b.cap79 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 2
  %b.cap80 = load i64, ptr %b.cap79, align 8
  %b.need.grow81 = icmp slt i64 %b.cap80, %sum74
  br i1 %b.need.grow81, label %b.grow282, label %b.nogrow283

str_overflow_abort77:                             ; preds = %str_ok60
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %b.app.new.len76

b.grow282:                                        ; preds = %b.app.new.len76
  %b.cap285 = mul i64 %b.cap80, 2
  %b.cap.small86 = icmp slt i64 %b.cap285, 16
  %b.cap.grow87 = select i1 %b.cap.small86, i64 16, i64 %b.cap285
  %b.cap.need88 = icmp slt i64 %b.cap.grow87, %sum74
  %b.new.cap89 = select i1 %b.cap.need88, i64 %sum74, i64 %b.cap.grow87
  %b.cur.len290 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 0
  %b.cur.len291 = load i64, ptr %b.cur.len290, align 8
  %b.cur.data292 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 1
  %b.cur.data293 = load ptr, ptr %b.cur.data292, align 8
  %b.new.buf.len294 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap89, i64 1)
  %sum95 = extractvalue { i64, i1 } %b.new.buf.len294, 0
  %ovf96 = extractvalue { i64, i1 } %b.new.buf.len294, 1
  br i1 %ovf96, label %str_overflow_abort98, label %b.new.buf.len297

b.nogrow283:                                      ; preds = %b.app.new.len76
  br label %b.grow_done84

b.grow_done84:                                    ; preds = %b.nogrow283, %b.new.buf.len297
  %b.app.data105 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 1
  %b.app.data106 = load ptr, ptr %b.app.data105, align 8
  %b.app.dst107 = getelementptr i8, ptr %b.app.data106, i64 %b.app.cur.len72
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst107, ptr align 1 %app.str.data70, i64 %app.str.len58, i1 false)
  %b.app.nul108 = getelementptr i8, ptr %b.app.data106, i64 %sum74
  store i8 0, ptr %b.app.nul108, align 1
  %b.len.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 0
  store i64 %sum74, ptr %b.len.gep109, align 8
  %var.load110 = load i64, ptr %var.first_idx, align 8
  %var.load111 = load i64, ptr %var.lo, align 8
  %addtmp112 = add i64 %var.load110, %var.load111
  store i64 %addtmp112, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.101, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  br label %loop.header.101

b.new.buf.len297:                                 ; preds = %abort.dead99, %b.grow282
  %arena.cur100 = call ptr @dva_arena_current()
  %b.new.buf2101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 %sum95)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2101, ptr align 1 %b.cur.data293, i64 %b.cur.len291, i1 false)
  %b.grow2.nul102 = getelementptr i8, ptr %b.new.buf2101, i64 %b.cur.len291
  store i8 0, ptr %b.grow2.nul102, align 1
  %b.new.data2.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 1
  store ptr %b.new.buf2101, ptr %b.new.data2.gep103, align 8
  %b.new.cap2.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load55, i32 0, i32 2
  store i64 %b.new.cap89, ptr %b.new.cap2.gep104, align 8
  br label %b.grow_done84

str_overflow_abort98:                             ; preds = %b.grow282
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead99:                                     ; No predecessors!
  br label %b.new.buf.len297

loop.header.101:                                  ; preds = %loop.latch.101, %b.grow_done84
  %counter.load = load i64, ptr %loop.idx.101, align 8
  br label %loop.body.101

loop.body.101:                                    ; preds = %loop.header.101
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.101, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._113, align 8
  %var.load114 = load i64, ptr %"var.pos'", align 8
  %var.load115 = load i64, ptr %var.ls, align 8
  %cmptmp116 = icmp sge i64 %var.load114, %var.load115
  br i1 %cmptmp116, label %choice.then117, label %choice.exit118

loop.exit.nat.101:                                ; No predecessors!
  br label %loop.exit.101

loop.latch.101:                                   ; preds = %choice.exit126
  %step.val = load i64, ptr %loop.step.101, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.101, align 8
  br label %loop.header.101

loop.exit.101:                                    ; preds = %b.grow_done288, %choice.then117, %loop.exit.nat.101
  store i64 %cycle.prev.u, ptr %var._, align 8
  %var.load314 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 0
  %b.freeze.len315 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 1
  %b.freeze.data316 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then117:                                   ; preds = %loop.body.101
  br label %loop.exit.101

choice.exit118:                                   ; preds = %loop.body.101
  %var.load119 = load ptr, ptr %var.s, align 8
  %var.load120 = load ptr, ptr %var.old, align 8
  %var.load121 = load i64, ptr %"var.pos'", align 8
  %call.res122 = call { i1, i64 } @"str::find_from"(ptr %var.load119, ptr %var.load120, i64 %var.load121)
  %ram.tag123 = extractvalue { i1, i64 } %call.res122, 0
  br i1 %ram.tag123, label %choice.then124, label %choice.else125

choice.then124:                                   ; preds = %choice.exit118
  %ram.pay127 = extractvalue { i1, i64 } %call.res122, 1
  store i64 %ram.pay127, ptr %var._128, align 8
  store i64 %ram.pay127, ptr %var.idx, align 8
  %var.load129 = load i64, ptr %var.idx, align 8
  %var.load130 = load i64, ptr %"var.pos'", align 8
  %cmptmp131 = icmp sgt i64 %var.load129, %var.load130
  br i1 %cmptmp131, label %choice.then132, label %choice.exit133

choice.else125:                                   ; preds = %choice.exit118
  %b.load248 = load ptr, ptr %var.b, align 8
  %var.load249 = load ptr, ptr %var.s, align 8
  %s.read.len250 = getelementptr inbounds { i64, ptr }, ptr %var.load249, i32 0, i32 0
  %s.read.len251 = load i64, ptr %s.read.len250, align 8
  %s.read.len252 = and i64 %s.read.len251, 281474976710655
  %s.read.data253 = getelementptr inbounds { i64, ptr }, ptr %var.load249, i32 0, i32 1
  %s.read.data254 = load ptr, ptr %s.read.data253, align 8
  %var.load255 = load i64, ptr %"var.pos'", align 8
  %var.load256 = load i64, ptr %var.ls, align 8
  %start.is_neg257 = icmp slt i64 %var.load255, 0
  %rel.start258 = add i64 %s.read.len252, %var.load255
  %norm.start259 = select i1 %start.is_neg257, i64 %rel.start258, i64 %var.load255
  %start.lt.0260 = icmp slt i64 %norm.start259, 0
  %c.start.0261 = select i1 %start.lt.0260, i64 0, i64 %norm.start259
  %start.gt.len262 = icmp sgt i64 %c.start.0261, %s.read.len252
  %final.start263 = select i1 %start.gt.len262, i64 %s.read.len252, i64 %c.start.0261
  %end.is_neg264 = icmp slt i64 %var.load256, 0
  %rel.end265 = add i64 %s.read.len252, %var.load256
  %norm.end266 = select i1 %end.is_neg264, i64 %rel.end265, i64 %var.load256
  %end.lt.0267 = icmp slt i64 %norm.end266, 0
  %c.end.0268 = select i1 %end.lt.0267, i64 0, i64 %norm.end266
  %end.gt.len269 = icmp sgt i64 %c.end.0268, %s.read.len252
  %final.end270 = select i1 %end.gt.len269, i64 %s.read.len252, i64 %c.end.0268
  %view.empty271 = icmp sle i64 %final.end270, %final.start263
  %view.len.sub272 = sub i64 %final.end270, %final.start263
  %view.len273 = select i1 %view.empty271, i64 0, i64 %view.len.sub272
  %view.data274 = getelementptr i8, ptr %s.read.data254, i64 %final.start263
  %b.app.cur.len275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load248, i32 0, i32 0
  %b.app.cur.len276 = load i64, ptr %b.app.cur.len275, align 8
  %b.app.new.len277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len276, i64 %view.len273)
  %sum278 = extractvalue { i64, i1 } %b.app.new.len277, 0
  %ovf279 = extractvalue { i64, i1 } %b.app.new.len277, 1
  br i1 %ovf279, label %str_overflow_abort281, label %b.app.new.len280

choice.exit126:                                   ; preds = %b.grow_done219
  br label %loop.latch.101

choice.then132:                                   ; preds = %choice.then124
  %b.load134 = load ptr, ptr %var.b, align 8
  %var.load135 = load ptr, ptr %var.s, align 8
  %s.read.len136 = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 0
  %s.read.len137 = load i64, ptr %s.read.len136, align 8
  %s.read.len138 = and i64 %s.read.len137, 281474976710655
  %s.read.data139 = getelementptr inbounds { i64, ptr }, ptr %var.load135, i32 0, i32 1
  %s.read.data140 = load ptr, ptr %s.read.data139, align 8
  %var.load141 = load i64, ptr %"var.pos'", align 8
  %var.load142 = load i64, ptr %var.idx, align 8
  %start.is_neg = icmp slt i64 %var.load141, 0
  %rel.start143 = add i64 %s.read.len138, %var.load141
  %norm.start144 = select i1 %start.is_neg, i64 %rel.start143, i64 %var.load141
  %start.lt.0145 = icmp slt i64 %norm.start144, 0
  %c.start.0146 = select i1 %start.lt.0145, i64 0, i64 %norm.start144
  %start.gt.len147 = icmp sgt i64 %c.start.0146, %s.read.len138
  %final.start148 = select i1 %start.gt.len147, i64 %s.read.len138, i64 %c.start.0146
  %end.is_neg149 = icmp slt i64 %var.load142, 0
  %rel.end150 = add i64 %s.read.len138, %var.load142
  %norm.end151 = select i1 %end.is_neg149, i64 %rel.end150, i64 %var.load142
  %end.lt.0152 = icmp slt i64 %norm.end151, 0
  %c.end.0153 = select i1 %end.lt.0152, i64 0, i64 %norm.end151
  %end.gt.len154 = icmp sgt i64 %c.end.0153, %s.read.len138
  %final.end155 = select i1 %end.gt.len154, i64 %s.read.len138, i64 %c.end.0153
  %view.empty156 = icmp sle i64 %final.end155, %final.start148
  %view.len.sub157 = sub i64 %final.end155, %final.start148
  %view.len158 = select i1 %view.empty156, i64 0, i64 %view.len.sub157
  %view.data159 = getelementptr i8, ptr %s.read.data140, i64 %final.start148
  %b.app.cur.len160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 0
  %b.app.cur.len161 = load i64, ptr %b.app.cur.len160, align 8
  %b.app.new.len162 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len161, i64 %view.len158)
  %sum163 = extractvalue { i64, i1 } %b.app.new.len162, 0
  %ovf164 = extractvalue { i64, i1 } %b.app.new.len162, 1
  br i1 %ovf164, label %str_overflow_abort166, label %b.app.new.len165

choice.exit133:                                   ; preds = %b.grow_done173, %choice.then124
  %b.load199 = load ptr, ptr %var.b, align 8
  %var.load200 = load ptr, ptr %var.new_s, align 8
  %app.str.len201 = getelementptr inbounds { i64, ptr }, ptr %var.load200, i32 0, i32 0
  %app.str.len202 = load i64, ptr %app.str.len201, align 8
  %app.str.len203 = and i64 %app.str.len202, 281474976710655
  %app.str.data204 = getelementptr inbounds { i64, ptr }, ptr %var.load200, i32 0, i32 1
  %app.str.data205 = load ptr, ptr %app.str.data204, align 8
  %b.app.cur.len206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.app.cur.len207 = load i64, ptr %b.app.cur.len206, align 8
  %b.app.new.len208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len207, i64 %app.str.len203)
  %sum209 = extractvalue { i64, i1 } %b.app.new.len208, 0
  %ovf210 = extractvalue { i64, i1 } %b.app.new.len208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %b.app.new.len211

b.app.new.len165:                                 ; preds = %abort.dead167, %choice.then132
  %b.cap168 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 2
  %b.cap169 = load i64, ptr %b.cap168, align 8
  %b.need.grow170 = icmp slt i64 %b.cap169, %sum163
  br i1 %b.need.grow170, label %b.grow2171, label %b.nogrow2172

str_overflow_abort166:                            ; preds = %choice.then132
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead167:                                    ; No predecessors!
  br label %b.app.new.len165

b.grow2171:                                       ; preds = %b.app.new.len165
  %b.cap2174 = mul i64 %b.cap169, 2
  %b.cap.small175 = icmp slt i64 %b.cap2174, 16
  %b.cap.grow176 = select i1 %b.cap.small175, i64 16, i64 %b.cap2174
  %b.cap.need177 = icmp slt i64 %b.cap.grow176, %sum163
  %b.new.cap178 = select i1 %b.cap.need177, i64 %sum163, i64 %b.cap.grow176
  %b.cur.len2179 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 0
  %b.cur.len2180 = load i64, ptr %b.cur.len2179, align 8
  %b.cur.data2181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 1
  %b.cur.data2182 = load ptr, ptr %b.cur.data2181, align 8
  %b.new.buf.len2183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap178, i64 1)
  %sum184 = extractvalue { i64, i1 } %b.new.buf.len2183, 0
  %ovf185 = extractvalue { i64, i1 } %b.new.buf.len2183, 1
  br i1 %ovf185, label %str_overflow_abort187, label %b.new.buf.len2186

b.nogrow2172:                                     ; preds = %b.app.new.len165
  br label %b.grow_done173

b.grow_done173:                                   ; preds = %b.nogrow2172, %b.new.buf.len2186
  %b.app.data194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 1
  %b.app.data195 = load ptr, ptr %b.app.data194, align 8
  %b.app.dst196 = getelementptr i8, ptr %b.app.data195, i64 %b.app.cur.len161
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst196, ptr align 1 %view.data159, i64 %view.len158, i1 false)
  %b.app.nul197 = getelementptr i8, ptr %b.app.data195, i64 %sum163
  store i8 0, ptr %b.app.nul197, align 1
  %b.len.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 0
  store i64 %sum163, ptr %b.len.gep198, align 8
  br label %choice.exit133

b.new.buf.len2186:                                ; preds = %abort.dead188, %b.grow2171
  %arena.cur189 = call ptr @dva_arena_current()
  %b.new.buf2190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 %sum184)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2190, ptr align 1 %b.cur.data2182, i64 %b.cur.len2180, i1 false)
  %b.grow2.nul191 = getelementptr i8, ptr %b.new.buf2190, i64 %b.cur.len2180
  store i8 0, ptr %b.grow2.nul191, align 1
  %b.new.data2.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 1
  store ptr %b.new.buf2190, ptr %b.new.data2.gep192, align 8
  %b.new.cap2.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load134, i32 0, i32 2
  store i64 %b.new.cap178, ptr %b.new.cap2.gep193, align 8
  br label %b.grow_done173

str_overflow_abort187:                            ; preds = %b.grow2171
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead188:                                    ; No predecessors!
  br label %b.new.buf.len2186

b.app.new.len211:                                 ; preds = %abort.dead213, %choice.exit133
  %b.cap214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  %b.cap215 = load i64, ptr %b.cap214, align 8
  %b.need.grow216 = icmp slt i64 %b.cap215, %sum209
  br i1 %b.need.grow216, label %b.grow2217, label %b.nogrow2218

str_overflow_abort212:                            ; preds = %choice.exit133
  %13 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead213:                                    ; No predecessors!
  br label %b.app.new.len211

b.grow2217:                                       ; preds = %b.app.new.len211
  %b.cap2220 = mul i64 %b.cap215, 2
  %b.cap.small221 = icmp slt i64 %b.cap2220, 16
  %b.cap.grow222 = select i1 %b.cap.small221, i64 16, i64 %b.cap2220
  %b.cap.need223 = icmp slt i64 %b.cap.grow222, %sum209
  %b.new.cap224 = select i1 %b.cap.need223, i64 %sum209, i64 %b.cap.grow222
  %b.cur.len2225 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  %b.cur.len2226 = load i64, ptr %b.cur.len2225, align 8
  %b.cur.data2227 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.cur.data2228 = load ptr, ptr %b.cur.data2227, align 8
  %b.new.buf.len2229 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap224, i64 1)
  %sum230 = extractvalue { i64, i1 } %b.new.buf.len2229, 0
  %ovf231 = extractvalue { i64, i1 } %b.new.buf.len2229, 1
  br i1 %ovf231, label %str_overflow_abort233, label %b.new.buf.len2232

b.nogrow2218:                                     ; preds = %b.app.new.len211
  br label %b.grow_done219

b.grow_done219:                                   ; preds = %b.nogrow2218, %b.new.buf.len2232
  %b.app.data240 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  %b.app.data241 = load ptr, ptr %b.app.data240, align 8
  %b.app.dst242 = getelementptr i8, ptr %b.app.data241, i64 %b.app.cur.len207
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst242, ptr align 1 %app.str.data205, i64 %app.str.len203, i1 false)
  %b.app.nul243 = getelementptr i8, ptr %b.app.data241, i64 %sum209
  store i8 0, ptr %b.app.nul243, align 1
  %b.len.gep244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 0
  store i64 %sum209, ptr %b.len.gep244, align 8
  %var.load245 = load i64, ptr %var.idx, align 8
  %var.load246 = load i64, ptr %var.lo, align 8
  %addtmp247 = add i64 %var.load245, %var.load246
  store i64 %addtmp247, ptr %"var.pos'", align 8
  br label %choice.exit126

b.new.buf.len2232:                                ; preds = %abort.dead234, %b.grow2217
  %arena.cur235 = call ptr @dva_arena_current()
  %b.new.buf2236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 %sum230)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2236, ptr align 1 %b.cur.data2228, i64 %b.cur.len2226, i1 false)
  %b.grow2.nul237 = getelementptr i8, ptr %b.new.buf2236, i64 %b.cur.len2226
  store i8 0, ptr %b.grow2.nul237, align 1
  %b.new.data2.gep238 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 1
  store ptr %b.new.buf2236, ptr %b.new.data2.gep238, align 8
  %b.new.cap2.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load199, i32 0, i32 2
  store i64 %b.new.cap224, ptr %b.new.cap2.gep239, align 8
  br label %b.grow_done219

str_overflow_abort233:                            ; preds = %b.grow2217
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead234:                                    ; No predecessors!
  br label %b.new.buf.len2232

b.app.new.len280:                                 ; preds = %abort.dead282, %choice.else125
  %b.cap283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load248, i32 0, i32 2
  %b.cap284 = load i64, ptr %b.cap283, align 8
  %b.need.grow285 = icmp slt i64 %b.cap284, %sum278
  br i1 %b.need.grow285, label %b.grow2286, label %b.nogrow2287

str_overflow_abort281:                            ; preds = %choice.else125
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead282:                                    ; No predecessors!
  br label %b.app.new.len280

b.grow2286:                                       ; preds = %b.app.new.len280
  %b.cap2289 = mul i64 %b.cap284, 2
  %b.cap.small290 = icmp slt i64 %b.cap2289, 16
  %b.cap.grow291 = select i1 %b.cap.small290, i64 16, i64 %b.cap2289
  %b.cap.need292 = icmp slt i64 %b.cap.grow291, %sum278
  %b.new.cap293 = select i1 %b.cap.need292, i64 %sum278, i64 %b.cap.grow291
  %b.cur.len2294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load248, i32 0, i32 0
  %b.cur.len2295 = load i64, ptr %b.cur.len2294, align 8
  %b.cur.data2296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load248, i32 0, i32 1
  %b.cur.data2297 = load ptr, ptr %b.cur.data2296, align 8
  %b.new.buf.len2298 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap293, i64 1)
  %sum299 = extractvalue { i64, i1 } %b.new.buf.len2298, 0
  %ovf300 = extractvalue { i64, i1 } %b.new.buf.len2298, 1
  br i1 %ovf300, label %str_overflow_abort302, label %b.new.buf.len2301

b.nogrow2287:                                     ; preds = %b.app.new.len280
  br label %b.grow_done288

b.grow_done288:                                   ; preds = %b.nogrow2287, %b.new.buf.len2301
  %b.app.data309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load248, i32 0, i32 1
  %b.app.data310 = load ptr, ptr %b.app.data309, align 8
  %b.app.dst311 = getelementptr i8, ptr %b.app.data310, i64 %b.app.cur.len276
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst311, ptr align 1 %view.data274, i64 %view.len273, i1 false)
  %b.app.nul312 = getelementptr i8, ptr %b.app.data310, i64 %sum278
  store i8 0, ptr %b.app.nul312, align 1
  %b.len.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load248, i32 0, i32 0
  store i64 %sum278, ptr %b.len.gep313, align 8
  br label %loop.exit.101

b.new.buf.len2301:                                ; preds = %abort.dead303, %b.grow2286
  %arena.cur304 = call ptr @dva_arena_current()
  %b.new.buf2305 = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 %sum299)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2305, ptr align 1 %b.cur.data2297, i64 %b.cur.len2295, i1 false)
  %b.grow2.nul306 = getelementptr i8, ptr %b.new.buf2305, i64 %b.cur.len2295
  store i8 0, ptr %b.grow2.nul306, align 1
  %b.new.data2.gep307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load248, i32 0, i32 1
  store ptr %b.new.buf2305, ptr %b.new.data2.gep307, align 8
  %b.new.cap2.gep308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load248, i32 0, i32 2
  store i64 %b.new.cap293, ptr %b.new.cap2.gep308, align 8
  br label %b.grow_done288

str_overflow_abort302:                            ; preds = %b.grow2286
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead303:                                    ; No predecessors!
  br label %b.new.buf.len2301

b.freeze.check:                                   ; preds = %loop.exit.101
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data316, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data316, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data316, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len315, 1
  %arena.cur317 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur317, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data316, i64 %b.freeze.len315, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len315
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.101
  %b.freeze.data318 = phi ptr [ %b.freeze.data316, %loop.exit.101 ], [ %b.freeze.data316, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur319 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur319, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len315, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data318, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit23
}

define { i1, i64 } @"str::parse_int"(ptr %0) #0 {
entry:
  %var.d248 = alloca ptr, align 8
  %var._247 = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var._206 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.107 = alloca i64, align 8
  %loop.idx.107 = alloca i64, align 8
  %"var.val'" = alloca i64, align 8
  %var.d = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.is_bin_pfx = alloca i1, align 1
  %var.is_hex_pfx = alloca i1, align 1
  %var.lbody = alloca i64, align 8
  %var.body = alloca ptr, align 8
  %var.start = alloca i64, align 8
  %var.has_sign = alloca i1, align 1
  %var.neg = alloca i1, align 1
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %call.res = call { i64, ptr } @"str::trim"(ptr %var.load)
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load5, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
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
  %var.load6 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 0, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead10, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp11 = icmp eq i64 %s.byte.val, 45
  store i1 %cmptmp11, ptr %var.neg, align 1
  %var.load12 = load i1, ptr %var.neg, align 1
  br i1 %var.load12, label %or.102.then, label %or.102.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %idx_ok

or.102.then:                                      ; preds = %idx_ok
  br label %or.102.exit

or.102.else:                                      ; preds = %idx_ok
  %var.load13 = load ptr, ptr %var.s, align 8
  %s.read.len14 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len14, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data17 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data17, align 8
  br i1 false, label %idx_oob21, label %idx_big_check19

or.102.exit:                                      ; preds = %idx_ok20, %or.102.then
  %or.102.phi = phi i1 [ %var.load12, %or.102.then ], [ %cmptmp27, %idx_ok20 ]
  store i1 %or.102.phi, ptr %var.has_sign, align 1
  %var.load28 = load i1, ptr %var.has_sign, align 1
  br i1 %var.load28, label %choice.then29, label %choice.else

idx_big_check19:                                  ; preds = %or.102.else
  %idx.big22 = icmp sge i64 0, %s.read.len16
  br i1 %idx.big22, label %idx_oob21, label %idx_ok20

idx_ok20:                                         ; preds = %abort.dead23, %idx_big_check19
  %s.byte.gep24 = getelementptr i8, ptr %s.read.data18, i64 0
  %s.byte25 = load i8, ptr %s.byte.gep24, align 1
  %s.byte.val26 = zext i8 %s.byte25 to i64
  %cmptmp27 = icmp eq i64 %s.byte.val26, 43
  br label %or.102.exit

idx_oob21:                                        ; preds = %idx_big_check19, %or.102.else
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok20

choice.then29:                                    ; preds = %or.102.exit
  br label %choice.exit30

choice.else:                                      ; preds = %or.102.exit
  br label %choice.exit30

choice.exit30:                                    ; preds = %choice.else, %choice.then29
  %choice.res = phi i64 [ 1, %choice.then29 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.start, align 8
  %var.load31 = load i64, ptr %var.start, align 8
  %var.load32 = load i64, ptr %var.len, align 8
  %cmptmp33 = icmp sge i64 %var.load31, %var.load32
  br i1 %cmptmp33, label %choice.then34, label %choice.exit35

choice.then34:                                    ; preds = %choice.exit30
  ret { i1, i64 } zeroinitializer

choice.exit35:                                    ; preds = %ret.dead36, %choice.exit30
  %var.load37 = load ptr, ptr %var.s, align 8
  %s.read.len38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %s.read.len39 = load i64, ptr %s.read.len38, align 8
  %s.read.len40 = and i64 %s.read.len39, 281474976710655
  %s.read.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data41, align 8
  %var.load43 = load i64, ptr %var.start, align 8
  %var.load44 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load43, 0
  %rel.start = add i64 %s.read.len40, %var.load43
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load43
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len40
  %final.start = select i1 %start.gt.len, i64 %s.read.len40, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load44, 0
  %rel.end = add i64 %s.read.len40, %var.load44
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load44
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len40
  %final.end = select i1 %end.gt.len, i64 %s.read.len40, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data42, i64 %final.start
  %arena.cur45 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.body, align 8
  %var.load46 = load ptr, ptr %var.body, align 8
  %str.len.query47 = getelementptr inbounds { i64, ptr }, ptr %var.load46, i32 0, i32 0
  %str.len.query48 = load i64, ptr %str.len.query47, align 8
  %str.len.query49 = and i64 %str.len.query48, 281474976710655
  %str.tag50 = lshr i64 %str.len.query48, 48
  %tag.immortal52 = icmp eq i64 %str.tag50, 0
  br i1 %tag.immortal52, label %str_ok51, label %tag.gen_check53

ret.dead36:                                       ; No predecessors!
  br label %choice.exit35

str_ok51:                                         ; preds = %abort.dead60, %tag.slow_check54, %tag.gen_check53, %choice.exit35
  store i64 %str.len.query49, ptr %var.lbody, align 8
  %var.load61 = load i64, ptr %var.lbody, align 8
  %cmptmp62 = icmp sgt i64 %var.load61, 2
  br i1 %cmptmp62, label %and.103.then, label %and.103.else

tag.gen_check53:                                  ; preds = %choice.exit35
  %active.gen56 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok57 = icmp eq i64 %str.tag50, %active.gen56
  br i1 %tag.fast.ok57, label %str_ok51, label %tag.slow_check54

tag.slow_check54:                                 ; preds = %tag.gen_check53
  %arena.cur58 = call ptr @dva_arena_current()
  %tag.valid59 = call i1 @dva_arena_validate_tag(ptr %arena.cur58, i64 %str.tag50)
  br i1 %tag.valid59, label %str_ok51, label %tag.stale55

tag.stale55:                                      ; preds = %tag.slow_check54
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead60:                                     ; No predecessors!
  br label %str_ok51

and.103.then:                                     ; preds = %str_ok51
  %var.load63 = load ptr, ptr %var.body, align 8
  %s.read.len64 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 0
  %s.read.len65 = load i64, ptr %s.read.len64, align 8
  %s.read.len66 = and i64 %s.read.len65, 281474976710655
  %s.read.data67 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 1
  %s.read.data68 = load ptr, ptr %s.read.data67, align 8
  br i1 false, label %idx_oob71, label %idx_big_check69

and.103.else:                                     ; preds = %str_ok51
  br label %and.103.exit

and.103.exit:                                     ; preds = %and.103.else, %idx_ok70
  %and.103.phi = phi i1 [ %cmptmp77, %idx_ok70 ], [ %cmptmp62, %and.103.else ]
  br i1 %and.103.phi, label %and.104.then, label %and.104.else

idx_big_check69:                                  ; preds = %and.103.then
  %idx.big72 = icmp sge i64 0, %s.read.len66
  br i1 %idx.big72, label %idx_oob71, label %idx_ok70

idx_ok70:                                         ; preds = %abort.dead73, %idx_big_check69
  %s.byte.gep74 = getelementptr i8, ptr %s.read.data68, i64 0
  %s.byte75 = load i8, ptr %s.byte.gep74, align 1
  %s.byte.val76 = zext i8 %s.byte75 to i64
  %cmptmp77 = icmp eq i64 %s.byte.val76, 48
  br label %and.103.exit

idx_oob71:                                        ; preds = %idx_big_check69, %and.103.then
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead73:                                     ; No predecessors!
  br label %idx_ok70

and.104.then:                                     ; preds = %and.103.exit
  %var.load78 = load ptr, ptr %var.body, align 8
  %s.read.len79 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %s.read.len80 = load i64, ptr %s.read.len79, align 8
  %s.read.len81 = and i64 %s.read.len80, 281474976710655
  %s.read.data82 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %s.read.data83 = load ptr, ptr %s.read.data82, align 8
  br i1 false, label %idx_oob86, label %idx_big_check84

and.104.else:                                     ; preds = %and.103.exit
  br label %and.104.exit

and.104.exit:                                     ; preds = %and.104.else, %choice.exit92
  %and.104.phi = phi i1 [ %choice.res94, %choice.exit92 ], [ %and.103.phi, %and.104.else ]
  store i1 %and.104.phi, ptr %var.is_hex_pfx, align 1
  %var.load95 = load i64, ptr %var.lbody, align 8
  %cmptmp96 = icmp sgt i64 %var.load95, 2
  br i1 %cmptmp96, label %and.105.then, label %and.105.else

idx_big_check84:                                  ; preds = %and.104.then
  %idx.big87 = icmp sge i64 1, %s.read.len81
  br i1 %idx.big87, label %idx_oob86, label %idx_ok85

idx_ok85:                                         ; preds = %abort.dead88, %idx_big_check84
  %s.byte.gep89 = getelementptr i8, ptr %s.read.data83, i64 1
  %s.byte90 = load i8, ptr %s.byte.gep89, align 1
  %s.byte.val91 = zext i8 %s.byte90 to i64
  %val.match = icmp eq i64 %s.byte.val91, 120
  %val.match93 = icmp eq i64 %s.byte.val91, 88
  %case.or = or i1 %val.match, %val.match93
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob86:                                        ; preds = %idx_big_check84, %and.104.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %idx_ok85

choice.exit92:                                    ; preds = %choice.next, %choice.case
  %choice.res94 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.104.exit

choice.case:                                      ; preds = %idx_ok85
  br label %choice.exit92

choice.next:                                      ; preds = %idx_ok85
  br label %choice.exit92

and.105.then:                                     ; preds = %and.104.exit
  %var.load97 = load ptr, ptr %var.body, align 8
  %s.read.len98 = getelementptr inbounds { i64, ptr }, ptr %var.load97, i32 0, i32 0
  %s.read.len99 = load i64, ptr %s.read.len98, align 8
  %s.read.len100 = and i64 %s.read.len99, 281474976710655
  %s.read.data101 = getelementptr inbounds { i64, ptr }, ptr %var.load97, i32 0, i32 1
  %s.read.data102 = load ptr, ptr %s.read.data101, align 8
  br i1 false, label %idx_oob105, label %idx_big_check103

and.105.else:                                     ; preds = %and.104.exit
  br label %and.105.exit

and.105.exit:                                     ; preds = %and.105.else, %idx_ok104
  %and.105.phi = phi i1 [ %cmptmp111, %idx_ok104 ], [ %cmptmp96, %and.105.else ]
  br i1 %and.105.phi, label %and.106.then, label %and.106.else

idx_big_check103:                                 ; preds = %and.105.then
  %idx.big106 = icmp sge i64 0, %s.read.len100
  br i1 %idx.big106, label %idx_oob105, label %idx_ok104

idx_ok104:                                        ; preds = %abort.dead107, %idx_big_check103
  %s.byte.gep108 = getelementptr i8, ptr %s.read.data102, i64 0
  %s.byte109 = load i8, ptr %s.byte.gep108, align 1
  %s.byte.val110 = zext i8 %s.byte109 to i64
  %cmptmp111 = icmp eq i64 %s.byte.val110, 48
  br label %and.105.exit

idx_oob105:                                       ; preds = %idx_big_check103, %and.105.then
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead107:                                    ; No predecessors!
  br label %idx_ok104

and.106.then:                                     ; preds = %and.105.exit
  %var.load112 = load ptr, ptr %var.body, align 8
  %s.read.len113 = getelementptr inbounds { i64, ptr }, ptr %var.load112, i32 0, i32 0
  %s.read.len114 = load i64, ptr %s.read.len113, align 8
  %s.read.len115 = and i64 %s.read.len114, 281474976710655
  %s.read.data116 = getelementptr inbounds { i64, ptr }, ptr %var.load112, i32 0, i32 1
  %s.read.data117 = load ptr, ptr %s.read.data116, align 8
  br i1 false, label %idx_oob120, label %idx_big_check118

and.106.else:                                     ; preds = %and.105.exit
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %choice.exit126
  %and.106.phi = phi i1 [ %choice.res132, %choice.exit126 ], [ %and.105.phi, %and.106.else ]
  store i1 %and.106.phi, ptr %var.is_bin_pfx, align 1
  %var.load133 = load i1, ptr %var.is_hex_pfx, align 1
  br i1 %var.load133, label %choice.then134, label %choice.else135

idx_big_check118:                                 ; preds = %and.106.then
  %idx.big121 = icmp sge i64 1, %s.read.len115
  br i1 %idx.big121, label %idx_oob120, label %idx_ok119

idx_ok119:                                        ; preds = %abort.dead122, %idx_big_check118
  %s.byte.gep123 = getelementptr i8, ptr %s.read.data117, i64 1
  %s.byte124 = load i8, ptr %s.byte.gep123, align 1
  %s.byte.val125 = zext i8 %s.byte124 to i64
  %val.match129 = icmp eq i64 %s.byte.val125, 98
  %val.match130 = icmp eq i64 %s.byte.val125, 66
  %case.or131 = or i1 %val.match129, %val.match130
  br i1 %case.or131, label %choice.case127, label %choice.next128

idx_oob120:                                       ; preds = %idx_big_check118, %and.106.then
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead122:                                    ; No predecessors!
  br label %idx_ok119

choice.exit126:                                   ; preds = %choice.next128, %choice.case127
  %choice.res132 = phi i1 [ true, %choice.case127 ], [ false, %choice.next128 ]
  br label %and.106.exit

choice.case127:                                   ; preds = %idx_ok119
  br label %choice.exit126

choice.next128:                                   ; preds = %idx_ok119
  br label %choice.exit126

choice.then134:                                   ; preds = %and.106.exit
  %var.load137 = load ptr, ptr %var.body, align 8
  %s.read.len138 = getelementptr inbounds { i64, ptr }, ptr %var.load137, i32 0, i32 0
  %s.read.len139 = load i64, ptr %s.read.len138, align 8
  %s.read.len140 = and i64 %s.read.len139, 281474976710655
  %s.read.data141 = getelementptr inbounds { i64, ptr }, ptr %var.load137, i32 0, i32 1
  %s.read.data142 = load ptr, ptr %s.read.data141, align 8
  %var.load143 = load i64, ptr %var.lbody, align 8
  %rel.start144 = add i64 %s.read.len140, 2
  %norm.start145 = select i1 false, i64 %rel.start144, i64 2
  %start.lt.0146 = icmp slt i64 %norm.start145, 0
  %c.start.0147 = select i1 %start.lt.0146, i64 0, i64 %norm.start145
  %start.gt.len148 = icmp sgt i64 %c.start.0147, %s.read.len140
  %final.start149 = select i1 %start.gt.len148, i64 %s.read.len140, i64 %c.start.0147
  %end.is_neg150 = icmp slt i64 %var.load143, 0
  %rel.end151 = add i64 %s.read.len140, %var.load143
  %norm.end152 = select i1 %end.is_neg150, i64 %rel.end151, i64 %var.load143
  %end.lt.0153 = icmp slt i64 %norm.end152, 0
  %c.end.0154 = select i1 %end.lt.0153, i64 0, i64 %norm.end152
  %end.gt.len155 = icmp sgt i64 %c.end.0154, %s.read.len140
  %final.end156 = select i1 %end.gt.len155, i64 %s.read.len140, i64 %c.end.0154
  %view.empty157 = icmp sle i64 %final.end156, %final.start149
  %view.len.sub158 = sub i64 %final.end156, %final.start149
  %view.len159 = select i1 %view.empty157, i64 0, i64 %view.len.sub158
  %view.data160 = getelementptr i8, ptr %s.read.data142, i64 %final.start149
  %arena.cur161 = call ptr @dva_arena_current()
  %str.view162 = call ptr @dva_arena_alloc(ptr %arena.cur161, i64 16)
  %str.build.len.gep163 = getelementptr inbounds { i64, ptr }, ptr %str.view162, i32 0, i32 0
  store i64 %view.len159, ptr %str.build.len.gep163, align 8
  %str.build.data.gep164 = getelementptr inbounds { i64, ptr }, ptr %str.view162, i32 0, i32 1
  store ptr %view.data160, ptr %str.build.data.gep164, align 8
  %call.res165 = call ptr @"str::to_hex"(ptr %str.view162)
  %niche.ne.null = icmp ne ptr %call.res165, null
  br i1 %niche.ne.null, label %choice.then166, label %choice.else167

choice.else135:                                   ; preds = %and.106.exit
  %var.load201 = load i1, ptr %var.is_bin_pfx, align 1
  br i1 %var.load201, label %choice.then202, label %choice.else203

choice.exit136:                                   ; preds = %choice.exit204, %choice.exit168
  %choice.res286 = phi { i1, i64 } [ %choice.res200, %choice.exit168 ], [ %choice.res285, %choice.exit204 ]
  ret { i1, i64 } %choice.res286

choice.then166:                                   ; preds = %choice.then134
  store ptr %call.res165, ptr %var._, align 8
  store ptr %call.res165, ptr %var.d, align 8
  %var.load169 = load ptr, ptr %var.d, align 8
  %fld.gep = getelementptr inbounds { i64, ptr }, ptr %var.load169, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query170 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query171 = load i64, ptr %str.len.query170, align 8
  %str.len.query172 = and i64 %str.len.query171, 281474976710655
  %str.tag173 = lshr i64 %str.len.query171, 48
  %tag.immortal175 = icmp eq i64 %str.tag173, 0
  br i1 %tag.immortal175, label %str_ok174, label %tag.gen_check176

choice.else167:                                   ; preds = %choice.then134
  br label %choice.exit168

choice.exit168:                                   ; preds = %choice.else167, %choice.exit187
  %choice.res200 = phi { i1, i64 } [ %choice.res199, %choice.exit187 ], [ zeroinitializer, %choice.else167 ]
  br label %choice.exit136

str_ok174:                                        ; preds = %abort.dead183, %tag.slow_check177, %tag.gen_check176, %choice.then166
  %cmptmp184 = icmp eq i64 %str.len.query172, 0
  br i1 %cmptmp184, label %choice.then185, label %choice.else186

tag.gen_check176:                                 ; preds = %choice.then166
  %active.gen179 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok180 = icmp eq i64 %str.tag173, %active.gen179
  br i1 %tag.fast.ok180, label %str_ok174, label %tag.slow_check177

tag.slow_check177:                                ; preds = %tag.gen_check176
  %arena.cur181 = call ptr @dva_arena_current()
  %tag.valid182 = call i1 @dva_arena_validate_tag(ptr %arena.cur181, i64 %str.tag173)
  br i1 %tag.valid182, label %str_ok174, label %tag.stale178

tag.stale178:                                     ; preds = %tag.slow_check177
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead183:                                    ; No predecessors!
  br label %str_ok174

choice.then185:                                   ; preds = %str_ok174
  %var.load188 = load i1, ptr %var.neg, align 1
  br i1 %var.load188, label %choice.then189, label %choice.else190

choice.else186:                                   ; preds = %str_ok174
  br label %choice.exit187

choice.exit187:                                   ; preds = %choice.else186, %choice.exit191
  %choice.res199 = phi { i1, i64 } [ %ram.pay, %choice.exit191 ], [ zeroinitializer, %choice.else186 ]
  br label %choice.exit168

choice.then189:                                   ; preds = %choice.then185
  %var.load192 = load ptr, ptr %var.d, align 8
  %fld.gep193 = getelementptr inbounds { i64, ptr }, ptr %var.load192, i32 0, i32 0
  %fld.load194 = load i64, ptr %fld.gep193, align 8
  %negtmp = sub i64 0, %fld.load194
  br label %choice.exit191

choice.else190:                                   ; preds = %choice.then185
  %var.load195 = load ptr, ptr %var.d, align 8
  %fld.gep196 = getelementptr inbounds { i64, ptr }, ptr %var.load195, i32 0, i32 0
  %fld.load197 = load i64, ptr %fld.gep196, align 8
  br label %choice.exit191

choice.exit191:                                   ; preds = %choice.else190, %choice.then189
  %choice.res198 = phi i64 [ %negtmp, %choice.then189 ], [ %fld.load197, %choice.else190 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res198, 1
  br label %choice.exit187

choice.then202:                                   ; preds = %choice.else135
  store i64 0, ptr %"var.val'", align 8
  %var.load205 = load i64, ptr %var.lbody, align 8
  store i64 2, ptr %loop.idx.107, align 8
  br label %loop.header.107

choice.else203:                                   ; preds = %choice.else135
  %var.load241 = load ptr, ptr %var.body, align 8
  %call.res242 = call ptr @"str::to_int"(ptr %var.load241)
  %niche.ne.null243 = icmp ne ptr %call.res242, null
  br i1 %niche.ne.null243, label %choice.then244, label %choice.else245

choice.exit204:                                   ; preds = %choice.exit246, %choice.exit235
  %choice.res285 = phi { i1, i64 } [ %ram.pay240, %choice.exit235 ], [ %choice.res284, %choice.exit246 ]
  br label %choice.exit136

loop.header.107:                                  ; preds = %loop.latch.107, %choice.then202
  %counter.load = load i64, ptr %loop.idx.107, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load205
  br i1 %loop.cond, label %loop.body.107, label %loop.exit.nat.107

loop.body.107:                                    ; preds = %loop.header.107
  %loop.rel.i = sub i64 %counter.load, 2
  store i64 1, ptr %loop.step.107, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._206, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load207 = load ptr, ptr %var.body, align 8
  %s.read.len208 = getelementptr inbounds { i64, ptr }, ptr %var.load207, i32 0, i32 0
  %s.read.len209 = load i64, ptr %s.read.len208, align 8
  %s.read.len210 = and i64 %s.read.len209, 281474976710655
  %s.read.data211 = getelementptr inbounds { i64, ptr }, ptr %var.load207, i32 0, i32 1
  %s.read.data212 = load ptr, ptr %s.read.data211, align 8
  %var.load213 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load213, 0
  br i1 %idx.neg, label %idx_oob216, label %idx_big_check214

loop.exit.nat.107:                                ; preds = %loop.header.107
  br label %loop.exit.107

loop.latch.107:                                   ; preds = %choice.exit228
  %step.val = load i64, ptr %loop.step.107, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.exit.107:                                    ; preds = %loop.exit.nat.107
  %var.load232 = load i1, ptr %var.neg, align 1
  br i1 %var.load232, label %choice.then233, label %choice.else234

idx_big_check214:                                 ; preds = %loop.body.107
  %idx.big217 = icmp sge i64 %var.load213, %s.read.len210
  br i1 %idx.big217, label %idx_oob216, label %idx_ok215

idx_ok215:                                        ; preds = %abort.dead218, %idx_big_check214
  %s.byte.gep219 = getelementptr i8, ptr %s.read.data212, i64 %var.load213
  %s.byte220 = load i8, ptr %s.byte.gep219, align 1
  %s.byte.val221 = zext i8 %s.byte220 to i64
  store i64 %s.byte.val221, ptr %var.ch, align 8
  %var.load222 = load i64, ptr %var.ch, align 8
  %cmptmp223 = icmp eq i64 %var.load222, 48
  br i1 %cmptmp223, label %or.108.then, label %or.108.else

idx_oob216:                                       ; preds = %idx_big_check214, %loop.body.107
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead218:                                    ; No predecessors!
  br label %idx_ok215

or.108.then:                                      ; preds = %idx_ok215
  br label %or.108.exit

or.108.else:                                      ; preds = %idx_ok215
  %var.load224 = load i64, ptr %var.ch, align 8
  %cmptmp225 = icmp eq i64 %var.load224, 49
  br label %or.108.exit

or.108.exit:                                      ; preds = %or.108.else, %or.108.then
  %or.108.phi = phi i1 [ %cmptmp223, %or.108.then ], [ %cmptmp225, %or.108.else ]
  br i1 %or.108.phi, label %choice.then226, label %choice.else227

choice.then226:                                   ; preds = %or.108.exit
  %var.load229 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load229, 2
  %var.load230 = load i64, ptr %var.ch, align 8
  %subtmp = sub i64 %var.load230, 48
  %addtmp = add i64 %multmp, %subtmp
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %choice.exit228

choice.else227:                                   ; preds = %or.108.exit
  ret { i1, i64 } zeroinitializer

choice.exit228:                                   ; preds = %ret.dead231, %choice.then226
  br label %loop.latch.107

ret.dead231:                                      ; No predecessors!
  br label %choice.exit228

choice.then233:                                   ; preds = %loop.exit.107
  %var.load236 = load i64, ptr %"var.val'", align 8
  %negtmp237 = sub i64 0, %var.load236
  br label %choice.exit235

choice.else234:                                   ; preds = %loop.exit.107
  %var.load238 = load i64, ptr %"var.val'", align 8
  br label %choice.exit235

choice.exit235:                                   ; preds = %choice.else234, %choice.then233
  %choice.res239 = phi i64 [ %negtmp237, %choice.then233 ], [ %var.load238, %choice.else234 ]
  %ram.pay240 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res239, 1
  br label %choice.exit204

choice.then244:                                   ; preds = %choice.else203
  store ptr %call.res242, ptr %var._247, align 8
  store ptr %call.res242, ptr %var.d248, align 8
  %var.load249 = load ptr, ptr %var.d248, align 8
  %fld.gep250 = getelementptr inbounds { i64, ptr }, ptr %var.load249, i32 0, i32 1
  %fld.load251 = load ptr, ptr %fld.gep250, align 8
  %str.len.query252 = getelementptr inbounds { i64, ptr }, ptr %fld.load251, i32 0, i32 0
  %str.len.query253 = load i64, ptr %str.len.query252, align 8
  %str.len.query254 = and i64 %str.len.query253, 281474976710655
  %str.tag255 = lshr i64 %str.len.query253, 48
  %tag.immortal257 = icmp eq i64 %str.tag255, 0
  br i1 %tag.immortal257, label %str_ok256, label %tag.gen_check258

choice.else245:                                   ; preds = %choice.else203
  br label %choice.exit246

choice.exit246:                                   ; preds = %choice.else245, %choice.exit269
  %choice.res284 = phi { i1, i64 } [ %choice.res283, %choice.exit269 ], [ zeroinitializer, %choice.else245 ]
  br label %choice.exit204

str_ok256:                                        ; preds = %abort.dead265, %tag.slow_check259, %tag.gen_check258, %choice.then244
  %cmptmp266 = icmp eq i64 %str.len.query254, 0
  br i1 %cmptmp266, label %choice.then267, label %choice.else268

tag.gen_check258:                                 ; preds = %choice.then244
  %active.gen261 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok262 = icmp eq i64 %str.tag255, %active.gen261
  br i1 %tag.fast.ok262, label %str_ok256, label %tag.slow_check259

tag.slow_check259:                                ; preds = %tag.gen_check258
  %arena.cur263 = call ptr @dva_arena_current()
  %tag.valid264 = call i1 @dva_arena_validate_tag(ptr %arena.cur263, i64 %str.tag255)
  br i1 %tag.valid264, label %str_ok256, label %tag.stale260

tag.stale260:                                     ; preds = %tag.slow_check259
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead265:                                    ; No predecessors!
  br label %str_ok256

choice.then267:                                   ; preds = %str_ok256
  %var.load270 = load i1, ptr %var.neg, align 1
  br i1 %var.load270, label %choice.then271, label %choice.else272

choice.else268:                                   ; preds = %str_ok256
  br label %choice.exit269

choice.exit269:                                   ; preds = %choice.else268, %choice.exit273
  %choice.res283 = phi { i1, i64 } [ %ram.pay282, %choice.exit273 ], [ zeroinitializer, %choice.else268 ]
  br label %choice.exit246

choice.then271:                                   ; preds = %choice.then267
  %var.load274 = load ptr, ptr %var.d248, align 8
  %fld.gep275 = getelementptr inbounds { i64, ptr }, ptr %var.load274, i32 0, i32 0
  %fld.load276 = load i64, ptr %fld.gep275, align 8
  %negtmp277 = sub i64 0, %fld.load276
  br label %choice.exit273

choice.else272:                                   ; preds = %choice.then267
  %var.load278 = load ptr, ptr %var.d248, align 8
  %fld.gep279 = getelementptr inbounds { i64, ptr }, ptr %var.load278, i32 0, i32 0
  %fld.load280 = load i64, ptr %fld.gep279, align 8
  br label %choice.exit273

choice.exit273:                                   ; preds = %choice.else272, %choice.then271
  %choice.res281 = phi i64 [ %negtmp277, %choice.then271 ], [ %fld.load280, %choice.else272 ]
  %ram.pay282 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res281, 1
  br label %choice.exit269
}

define { i1, i64 } @"str::parse_float"(ptr %0) #0 {
entry:
  %var.pow10 = alloca double, align 8
  %var._245 = alloca i64, align 8
  %var._i244 = alloca i64, align 8
  %loop.step.118 = alloca i64, align 8
  %loop.idx.118 = alloca i64, align 8
  %"var.exp_digits'" = alloca i64, align 8
  %"var.exp_val'" = alloca i64, align 8
  %var.exp_neg = alloca i1, align 1
  %"var.res'" = alloca double, align 8
  %var._104 = alloca i64, align 8
  %var._i103 = alloca i64, align 8
  %loop.step.114 = alloca i64, align 8
  %loop.idx.114 = alloca i64, align 8
  %"var.frac_scale'" = alloca double, align 8
  %"var.frac_val'" = alloca double, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.111 = alloca i64, align 8
  %loop.idx.111 = alloca i64, align 8
  %"var.digits'" = alloca i64, align 8
  %"var.int_val'" = alloca double, align 8
  %var.neg = alloca i1, align 1
  %"var.i'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %call.res = call { i64, ptr } @"str::trim"(ptr %var.load)
  %arena.cur = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query3, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load5, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur4 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur4, i64 %str.tag)
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
  store i64 0, ptr %"var.i'", align 8
  %var.load6 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %s.read.len7 = load i64, ptr %s.read.len, align 8
  %s.read.len8 = and i64 %s.read.len7, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 0, %s.read.len8
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead10, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp11 = icmp eq i64 %s.byte.val, 45
  store i1 %cmptmp11, ptr %var.neg, align 1
  %var.load12 = load i1, ptr %var.neg, align 1
  br i1 %var.load12, label %or.110.then, label %or.110.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %idx_ok

or.110.then:                                      ; preds = %idx_ok
  br label %or.110.exit

or.110.else:                                      ; preds = %idx_ok
  %var.load13 = load ptr, ptr %var.s, align 8
  %s.read.len14 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %s.read.len15 = load i64, ptr %s.read.len14, align 8
  %s.read.len16 = and i64 %s.read.len15, 281474976710655
  %s.read.data17 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %s.read.data18 = load ptr, ptr %s.read.data17, align 8
  br i1 false, label %idx_oob21, label %idx_big_check19

or.110.exit:                                      ; preds = %idx_ok20, %or.110.then
  %or.110.phi = phi i1 [ %var.load12, %or.110.then ], [ %cmptmp27, %idx_ok20 ]
  br i1 %or.110.phi, label %choice.then28, label %choice.exit29

idx_big_check19:                                  ; preds = %or.110.else
  %idx.big22 = icmp sge i64 0, %s.read.len16
  br i1 %idx.big22, label %idx_oob21, label %idx_ok20

idx_ok20:                                         ; preds = %abort.dead23, %idx_big_check19
  %s.byte.gep24 = getelementptr i8, ptr %s.read.data18, i64 0
  %s.byte25 = load i8, ptr %s.byte.gep24, align 1
  %s.byte.val26 = zext i8 %s.byte25 to i64
  %cmptmp27 = icmp eq i64 %s.byte.val26, 43
  br label %or.110.exit

idx_oob21:                                        ; preds = %idx_big_check19, %or.110.else
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %idx_ok20

choice.then28:                                    ; preds = %or.110.exit
  store i64 1, ptr %"var.i'", align 8
  br label %choice.exit29

choice.exit29:                                    ; preds = %choice.then28, %or.110.exit
  %var.load30 = load i64, ptr %"var.i'", align 8
  %var.load31 = load i64, ptr %var.len, align 8
  %cmptmp32 = icmp sge i64 %var.load30, %var.load31
  br i1 %cmptmp32, label %choice.then33, label %choice.exit34

choice.then33:                                    ; preds = %choice.exit29
  ret { i1, i64 } zeroinitializer

choice.exit34:                                    ; preds = %ret.dead35, %choice.exit29
  store double 0.000000e+00, ptr %"var.int_val'", align 8
  store i64 0, ptr %"var.digits'", align 8
  store i64 0, ptr %loop.idx.111, align 8
  br label %loop.header.111

ret.dead35:                                       ; No predecessors!
  br label %choice.exit34

loop.header.111:                                  ; preds = %loop.latch.111, %choice.exit34
  %counter.load = load i64, ptr %loop.idx.111, align 8
  br label %loop.body.111

loop.body.111:                                    ; preds = %loop.header.111
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.111, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load36 = load i64, ptr %"var.i'", align 8
  %var.load37 = load i64, ptr %var.len, align 8
  %cmptmp38 = icmp slt i64 %var.load36, %var.load37
  br i1 %cmptmp38, label %and.112.then, label %and.112.else

loop.exit.nat.111:                                ; No predecessors!
  br label %loop.exit.111

loop.latch.111:                                   ; preds = %choice.exit56
  %step.val = load i64, ptr %loop.step.111, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.111, align 8
  br label %loop.header.111

loop.exit.111:                                    ; preds = %choice.else, %loop.exit.nat.111
  store double 0.000000e+00, ptr %"var.frac_val'", align 8
  store double 1.000000e+00, ptr %"var.frac_scale'", align 8
  %var.load77 = load i64, ptr %"var.i'", align 8
  %var.load78 = load i64, ptr %var.len, align 8
  %cmptmp79 = icmp slt i64 %var.load77, %var.load78
  br i1 %cmptmp79, label %and.113.then, label %and.113.else

and.112.then:                                     ; preds = %loop.body.111
  %var.load39 = load ptr, ptr %var.s, align 8
  %s.read.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %s.read.len41 = load i64, ptr %s.read.len40, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %s.read.data43 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %s.read.data44 = load ptr, ptr %s.read.data43, align 8
  %var.load45 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load45, 0
  br i1 %idx.neg, label %idx_oob48, label %idx_big_check46

and.112.else:                                     ; preds = %loop.body.111
  br label %and.112.exit

and.112.exit:                                     ; preds = %and.112.else, %idx_ok47
  %and.112.phi = phi i1 [ %call.res54, %idx_ok47 ], [ %cmptmp38, %and.112.else ]
  br i1 %and.112.phi, label %choice.then55, label %choice.else

idx_big_check46:                                  ; preds = %and.112.then
  %idx.big49 = icmp sge i64 %var.load45, %s.read.len42
  br i1 %idx.big49, label %idx_oob48, label %idx_ok47

idx_ok47:                                         ; preds = %abort.dead50, %idx_big_check46
  %s.byte.gep51 = getelementptr i8, ptr %s.read.data44, i64 %var.load45
  %s.byte52 = load i8, ptr %s.byte.gep51, align 1
  %s.byte.val53 = zext i8 %s.byte52 to i64
  %call.res54 = call i1 @"str::is_digit"(i64 %s.byte.val53)
  br label %and.112.exit

idx_oob48:                                        ; preds = %idx_big_check46, %and.112.then
  %4 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead50:                                     ; No predecessors!
  br label %idx_ok47

choice.then55:                                    ; preds = %and.112.exit
  %var.load57 = load double, ptr %"var.int_val'", align 8
  %fmultmp = fmul double %var.load57, 1.000000e+01
  %var.load58 = load ptr, ptr %var.s, align 8
  %s.read.len59 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 0
  %s.read.len60 = load i64, ptr %s.read.len59, align 8
  %s.read.len61 = and i64 %s.read.len60, 281474976710655
  %s.read.data62 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 1
  %s.read.data63 = load ptr, ptr %s.read.data62, align 8
  %var.load64 = load i64, ptr %"var.i'", align 8
  %idx.neg65 = icmp slt i64 %var.load64, 0
  br i1 %idx.neg65, label %idx_oob68, label %idx_big_check66

choice.else:                                      ; preds = %and.112.exit
  br label %loop.exit.111

choice.exit56:                                    ; preds = %idx_ok67
  br label %loop.latch.111

idx_big_check66:                                  ; preds = %choice.then55
  %idx.big69 = icmp sge i64 %var.load64, %s.read.len61
  br i1 %idx.big69, label %idx_oob68, label %idx_ok67

idx_ok67:                                         ; preds = %abort.dead70, %idx_big_check66
  %s.byte.gep71 = getelementptr i8, ptr %s.read.data63, i64 %var.load64
  %s.byte72 = load i8, ptr %s.byte.gep71, align 1
  %s.byte.val73 = zext i8 %s.byte72 to i64
  %subtmp = sub i64 %s.byte.val73, 48
  %cast.sitofp = sitofp i64 %subtmp to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.int_val'", align 8
  %var.load74 = load i64, ptr %"var.digits'", align 8
  %addtmp = add i64 %var.load74, 1
  store i64 %addtmp, ptr %"var.digits'", align 8
  %var.load75 = load i64, ptr %"var.i'", align 8
  %addtmp76 = add i64 %var.load75, 1
  store i64 %addtmp76, ptr %"var.i'", align 8
  br label %choice.exit56

idx_oob68:                                        ; preds = %idx_big_check66, %choice.then55
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead70:                                     ; No predecessors!
  br label %idx_ok67

and.113.then:                                     ; preds = %loop.exit.111
  %var.load80 = load ptr, ptr %var.s, align 8
  %s.read.len81 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 0
  %s.read.len82 = load i64, ptr %s.read.len81, align 8
  %s.read.len83 = and i64 %s.read.len82, 281474976710655
  %s.read.data84 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 1
  %s.read.data85 = load ptr, ptr %s.read.data84, align 8
  %var.load86 = load i64, ptr %"var.i'", align 8
  %idx.neg87 = icmp slt i64 %var.load86, 0
  br i1 %idx.neg87, label %idx_oob90, label %idx_big_check88

and.113.else:                                     ; preds = %loop.exit.111
  br label %and.113.exit

and.113.exit:                                     ; preds = %and.113.else, %idx_ok89
  %and.113.phi = phi i1 [ %cmptmp96, %idx_ok89 ], [ %cmptmp79, %and.113.else ]
  br i1 %and.113.phi, label %choice.then97, label %choice.exit98

idx_big_check88:                                  ; preds = %and.113.then
  %idx.big91 = icmp sge i64 %var.load86, %s.read.len83
  br i1 %idx.big91, label %idx_oob90, label %idx_ok89

idx_ok89:                                         ; preds = %abort.dead92, %idx_big_check88
  %s.byte.gep93 = getelementptr i8, ptr %s.read.data85, i64 %var.load86
  %s.byte94 = load i8, ptr %s.byte.gep93, align 1
  %s.byte.val95 = zext i8 %s.byte94 to i64
  %cmptmp96 = icmp eq i64 %s.byte.val95, 46
  br label %and.113.exit

idx_oob90:                                        ; preds = %idx_big_check88, %and.113.then
  %6 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead92:                                     ; No predecessors!
  br label %idx_ok89

choice.then97:                                    ; preds = %and.113.exit
  %var.load99 = load i64, ptr %"var.i'", align 8
  %addtmp100 = add i64 %var.load99, 1
  store i64 %addtmp100, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.114, align 8
  br label %loop.header.114

choice.exit98:                                    ; preds = %loop.exit.114, %and.113.exit
  %var.load157 = load i64, ptr %"var.digits'", align 8
  %cmptmp158 = icmp eq i64 %var.load157, 0
  br i1 %cmptmp158, label %choice.then159, label %choice.exit160

loop.header.114:                                  ; preds = %loop.latch.114, %choice.then97
  %counter.load101 = load i64, ptr %loop.idx.114, align 8
  br label %loop.body.114

loop.body.114:                                    ; preds = %loop.header.114
  %loop.rel.i102 = sub i64 %counter.load101, 0
  store i64 1, ptr %loop.step.114, align 8
  store i64 %loop.rel.i102, ptr %var._i103, align 8
  store i64 %counter.load101, ptr %var._104, align 8
  %var.load105 = load i64, ptr %"var.i'", align 8
  %var.load106 = load i64, ptr %var.len, align 8
  %cmptmp107 = icmp slt i64 %var.load105, %var.load106
  br i1 %cmptmp107, label %and.115.then, label %and.115.else

loop.exit.nat.114:                                ; No predecessors!
  br label %loop.exit.114

loop.latch.114:                                   ; preds = %choice.exit127
  %step.val155 = load i64, ptr %loop.step.114, align 8
  %loop.next156 = add i64 %counter.load101, %step.val155
  store i64 %loop.next156, ptr %loop.idx.114, align 8
  br label %loop.header.114

loop.exit.114:                                    ; preds = %choice.else126, %loop.exit.nat.114
  br label %choice.exit98

and.115.then:                                     ; preds = %loop.body.114
  %var.load108 = load ptr, ptr %var.s, align 8
  %s.read.len109 = getelementptr inbounds { i64, ptr }, ptr %var.load108, i32 0, i32 0
  %s.read.len110 = load i64, ptr %s.read.len109, align 8
  %s.read.len111 = and i64 %s.read.len110, 281474976710655
  %s.read.data112 = getelementptr inbounds { i64, ptr }, ptr %var.load108, i32 0, i32 1
  %s.read.data113 = load ptr, ptr %s.read.data112, align 8
  %var.load114 = load i64, ptr %"var.i'", align 8
  %idx.neg115 = icmp slt i64 %var.load114, 0
  br i1 %idx.neg115, label %idx_oob118, label %idx_big_check116

and.115.else:                                     ; preds = %loop.body.114
  br label %and.115.exit

and.115.exit:                                     ; preds = %and.115.else, %idx_ok117
  %and.115.phi = phi i1 [ %call.res124, %idx_ok117 ], [ %cmptmp107, %and.115.else ]
  br i1 %and.115.phi, label %choice.then125, label %choice.else126

idx_big_check116:                                 ; preds = %and.115.then
  %idx.big119 = icmp sge i64 %var.load114, %s.read.len111
  br i1 %idx.big119, label %idx_oob118, label %idx_ok117

idx_ok117:                                        ; preds = %abort.dead120, %idx_big_check116
  %s.byte.gep121 = getelementptr i8, ptr %s.read.data113, i64 %var.load114
  %s.byte122 = load i8, ptr %s.byte.gep121, align 1
  %s.byte.val123 = zext i8 %s.byte122 to i64
  %call.res124 = call i1 @"str::is_digit"(i64 %s.byte.val123)
  br label %and.115.exit

idx_oob118:                                       ; preds = %idx_big_check116, %and.115.then
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %idx_ok117

choice.then125:                                   ; preds = %and.115.exit
  %var.load128 = load double, ptr %"var.frac_val'", align 8
  %fmultmp129 = fmul double %var.load128, 1.000000e+01
  %var.load130 = load ptr, ptr %var.s, align 8
  %s.read.len131 = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 0
  %s.read.len132 = load i64, ptr %s.read.len131, align 8
  %s.read.len133 = and i64 %s.read.len132, 281474976710655
  %s.read.data134 = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 1
  %s.read.data135 = load ptr, ptr %s.read.data134, align 8
  %var.load136 = load i64, ptr %"var.i'", align 8
  %idx.neg137 = icmp slt i64 %var.load136, 0
  br i1 %idx.neg137, label %idx_oob140, label %idx_big_check138

choice.else126:                                   ; preds = %and.115.exit
  br label %loop.exit.114

choice.exit127:                                   ; preds = %idx_ok139
  br label %loop.latch.114

idx_big_check138:                                 ; preds = %choice.then125
  %idx.big141 = icmp sge i64 %var.load136, %s.read.len133
  br i1 %idx.big141, label %idx_oob140, label %idx_ok139

idx_ok139:                                        ; preds = %abort.dead142, %idx_big_check138
  %s.byte.gep143 = getelementptr i8, ptr %s.read.data135, i64 %var.load136
  %s.byte144 = load i8, ptr %s.byte.gep143, align 1
  %s.byte.val145 = zext i8 %s.byte144 to i64
  %subtmp146 = sub i64 %s.byte.val145, 48
  %cast.sitofp147 = sitofp i64 %subtmp146 to double
  %faddtmp148 = fadd double %fmultmp129, %cast.sitofp147
  store double %faddtmp148, ptr %"var.frac_val'", align 8
  %var.load149 = load double, ptr %"var.frac_scale'", align 8
  %fmultmp150 = fmul double %var.load149, 1.000000e+01
  store double %fmultmp150, ptr %"var.frac_scale'", align 8
  %var.load151 = load i64, ptr %"var.digits'", align 8
  %addtmp152 = add i64 %var.load151, 1
  store i64 %addtmp152, ptr %"var.digits'", align 8
  %var.load153 = load i64, ptr %"var.i'", align 8
  %addtmp154 = add i64 %var.load153, 1
  store i64 %addtmp154, ptr %"var.i'", align 8
  br label %choice.exit127

idx_oob140:                                       ; preds = %idx_big_check138, %choice.then125
  %8 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead142:                                    ; No predecessors!
  br label %idx_ok139

choice.then159:                                   ; preds = %choice.exit98
  ret { i1, i64 } zeroinitializer

choice.exit160:                                   ; preds = %ret.dead161, %choice.exit98
  %var.load162 = load double, ptr %"var.int_val'", align 8
  %var.load163 = load double, ptr %"var.frac_val'", align 8
  %var.load164 = load double, ptr %"var.frac_scale'", align 8
  %fdivtmp = fdiv double %var.load163, %var.load164
  %faddtmp165 = fadd double %var.load162, %fdivtmp
  store double %faddtmp165, ptr %"var.res'", align 8
  %var.load166 = load i64, ptr %"var.i'", align 8
  %var.load167 = load i64, ptr %var.len, align 8
  %cmptmp168 = icmp slt i64 %var.load166, %var.load167
  br i1 %cmptmp168, label %and.116.then, label %and.116.else

ret.dead161:                                      ; No predecessors!
  br label %choice.exit160

and.116.then:                                     ; preds = %choice.exit160
  %var.load169 = load ptr, ptr %var.s, align 8
  %s.read.len170 = getelementptr inbounds { i64, ptr }, ptr %var.load169, i32 0, i32 0
  %s.read.len171 = load i64, ptr %s.read.len170, align 8
  %s.read.len172 = and i64 %s.read.len171, 281474976710655
  %s.read.data173 = getelementptr inbounds { i64, ptr }, ptr %var.load169, i32 0, i32 1
  %s.read.data174 = load ptr, ptr %s.read.data173, align 8
  %var.load175 = load i64, ptr %"var.i'", align 8
  %idx.neg176 = icmp slt i64 %var.load175, 0
  br i1 %idx.neg176, label %idx_oob179, label %idx_big_check177

and.116.else:                                     ; preds = %choice.exit160
  br label %and.116.exit

and.116.exit:                                     ; preds = %and.116.else, %choice.exit185
  %and.116.phi = phi i1 [ %choice.res, %choice.exit185 ], [ %cmptmp168, %and.116.else ]
  br i1 %and.116.phi, label %choice.then187, label %choice.exit188

idx_big_check177:                                 ; preds = %and.116.then
  %idx.big180 = icmp sge i64 %var.load175, %s.read.len172
  br i1 %idx.big180, label %idx_oob179, label %idx_ok178

idx_ok178:                                        ; preds = %abort.dead181, %idx_big_check177
  %s.byte.gep182 = getelementptr i8, ptr %s.read.data174, i64 %var.load175
  %s.byte183 = load i8, ptr %s.byte.gep182, align 1
  %s.byte.val184 = zext i8 %s.byte183 to i64
  %val.match = icmp eq i64 %s.byte.val184, 101
  %val.match186 = icmp eq i64 %s.byte.val184, 69
  %case.or = or i1 %val.match, %val.match186
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob179:                                       ; preds = %idx_big_check177, %and.116.then
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead181:                                    ; No predecessors!
  br label %idx_ok178

choice.exit185:                                   ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.116.exit

choice.case:                                      ; preds = %idx_ok178
  br label %choice.exit185

choice.next:                                      ; preds = %idx_ok178
  br label %choice.exit185

choice.then187:                                   ; preds = %and.116.exit
  %var.load189 = load i64, ptr %"var.i'", align 8
  %addtmp190 = add i64 %var.load189, 1
  store i64 %addtmp190, ptr %"var.i'", align 8
  %var.load191 = load i64, ptr %"var.i'", align 8
  %var.load192 = load i64, ptr %var.len, align 8
  %cmptmp193 = icmp sge i64 %var.load191, %var.load192
  br i1 %cmptmp193, label %choice.then194, label %choice.exit195

choice.exit188:                                   ; preds = %choice.exit302, %and.116.exit
  %var.load310 = load i64, ptr %"var.i'", align 8
  %var.load311 = load i64, ptr %var.len, align 8
  %cmptmp312 = icmp ne i64 %var.load310, %var.load311
  br i1 %cmptmp312, label %choice.then313, label %choice.else314

choice.then194:                                   ; preds = %choice.then187
  ret { i1, i64 } zeroinitializer

choice.exit195:                                   ; preds = %ret.dead196, %choice.then187
  %var.load197 = load ptr, ptr %var.s, align 8
  %s.read.len198 = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 0
  %s.read.len199 = load i64, ptr %s.read.len198, align 8
  %s.read.len200 = and i64 %s.read.len199, 281474976710655
  %s.read.data201 = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 1
  %s.read.data202 = load ptr, ptr %s.read.data201, align 8
  %var.load203 = load i64, ptr %"var.i'", align 8
  %idx.neg204 = icmp slt i64 %var.load203, 0
  br i1 %idx.neg204, label %idx_oob207, label %idx_big_check205

ret.dead196:                                      ; No predecessors!
  br label %choice.exit195

idx_big_check205:                                 ; preds = %choice.exit195
  %idx.big208 = icmp sge i64 %var.load203, %s.read.len200
  br i1 %idx.big208, label %idx_oob207, label %idx_ok206

idx_ok206:                                        ; preds = %abort.dead209, %idx_big_check205
  %s.byte.gep210 = getelementptr i8, ptr %s.read.data202, i64 %var.load203
  %s.byte211 = load i8, ptr %s.byte.gep210, align 1
  %s.byte.val212 = zext i8 %s.byte211 to i64
  %cmptmp213 = icmp eq i64 %s.byte.val212, 45
  store i1 %cmptmp213, ptr %var.exp_neg, align 1
  %var.load214 = load i1, ptr %var.exp_neg, align 1
  br i1 %var.load214, label %or.117.then, label %or.117.else

idx_oob207:                                       ; preds = %idx_big_check205, %choice.exit195
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead209:                                    ; No predecessors!
  br label %idx_ok206

or.117.then:                                      ; preds = %idx_ok206
  br label %or.117.exit

or.117.else:                                      ; preds = %idx_ok206
  %var.load215 = load ptr, ptr %var.s, align 8
  %s.read.len216 = getelementptr inbounds { i64, ptr }, ptr %var.load215, i32 0, i32 0
  %s.read.len217 = load i64, ptr %s.read.len216, align 8
  %s.read.len218 = and i64 %s.read.len217, 281474976710655
  %s.read.data219 = getelementptr inbounds { i64, ptr }, ptr %var.load215, i32 0, i32 1
  %s.read.data220 = load ptr, ptr %s.read.data219, align 8
  %var.load221 = load i64, ptr %"var.i'", align 8
  %idx.neg222 = icmp slt i64 %var.load221, 0
  br i1 %idx.neg222, label %idx_oob225, label %idx_big_check223

or.117.exit:                                      ; preds = %idx_ok224, %or.117.then
  %or.117.phi = phi i1 [ %var.load214, %or.117.then ], [ %cmptmp231, %idx_ok224 ]
  br i1 %or.117.phi, label %choice.then232, label %choice.exit233

idx_big_check223:                                 ; preds = %or.117.else
  %idx.big226 = icmp sge i64 %var.load221, %s.read.len218
  br i1 %idx.big226, label %idx_oob225, label %idx_ok224

idx_ok224:                                        ; preds = %abort.dead227, %idx_big_check223
  %s.byte.gep228 = getelementptr i8, ptr %s.read.data220, i64 %var.load221
  %s.byte229 = load i8, ptr %s.byte.gep228, align 1
  %s.byte.val230 = zext i8 %s.byte229 to i64
  %cmptmp231 = icmp eq i64 %s.byte.val230, 43
  br label %or.117.exit

idx_oob225:                                       ; preds = %idx_big_check223, %or.117.else
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead227:                                    ; No predecessors!
  br label %idx_ok224

choice.then232:                                   ; preds = %or.117.exit
  %var.load234 = load i64, ptr %"var.i'", align 8
  %addtmp235 = add i64 %var.load234, 1
  store i64 %addtmp235, ptr %"var.i'", align 8
  br label %choice.exit233

choice.exit233:                                   ; preds = %choice.then232, %or.117.exit
  %var.load236 = load i64, ptr %"var.i'", align 8
  %var.load237 = load i64, ptr %var.len, align 8
  %cmptmp238 = icmp sge i64 %var.load236, %var.load237
  br i1 %cmptmp238, label %choice.then239, label %choice.exit240

choice.then239:                                   ; preds = %choice.exit233
  ret { i1, i64 } zeroinitializer

choice.exit240:                                   ; preds = %ret.dead241, %choice.exit233
  store i64 0, ptr %"var.exp_val'", align 8
  store i64 0, ptr %"var.exp_digits'", align 8
  store i64 0, ptr %loop.idx.118, align 8
  br label %loop.header.118

ret.dead241:                                      ; No predecessors!
  br label %choice.exit240

loop.header.118:                                  ; preds = %loop.latch.118, %choice.exit240
  %counter.load242 = load i64, ptr %loop.idx.118, align 8
  br label %loop.body.118

loop.body.118:                                    ; preds = %loop.header.118
  %loop.rel.i243 = sub i64 %counter.load242, 0
  store i64 1, ptr %loop.step.118, align 8
  store i64 %loop.rel.i243, ptr %var._i244, align 8
  store i64 %counter.load242, ptr %var._245, align 8
  %var.load246 = load i64, ptr %"var.i'", align 8
  %var.load247 = load i64, ptr %var.len, align 8
  %cmptmp248 = icmp slt i64 %var.load246, %var.load247
  br i1 %cmptmp248, label %and.119.then, label %and.119.else

loop.exit.nat.118:                                ; No predecessors!
  br label %loop.exit.118

loop.latch.118:                                   ; preds = %choice.exit268
  %step.val292 = load i64, ptr %loop.step.118, align 8
  %loop.next293 = add i64 %counter.load242, %step.val292
  store i64 %loop.next293, ptr %loop.idx.118, align 8
  br label %loop.header.118

loop.exit.118:                                    ; preds = %choice.else267, %loop.exit.nat.118
  %var.load294 = load i64, ptr %"var.exp_digits'", align 8
  %cmptmp295 = icmp eq i64 %var.load294, 0
  br i1 %cmptmp295, label %choice.then296, label %choice.exit297

and.119.then:                                     ; preds = %loop.body.118
  %var.load249 = load ptr, ptr %var.s, align 8
  %s.read.len250 = getelementptr inbounds { i64, ptr }, ptr %var.load249, i32 0, i32 0
  %s.read.len251 = load i64, ptr %s.read.len250, align 8
  %s.read.len252 = and i64 %s.read.len251, 281474976710655
  %s.read.data253 = getelementptr inbounds { i64, ptr }, ptr %var.load249, i32 0, i32 1
  %s.read.data254 = load ptr, ptr %s.read.data253, align 8
  %var.load255 = load i64, ptr %"var.i'", align 8
  %idx.neg256 = icmp slt i64 %var.load255, 0
  br i1 %idx.neg256, label %idx_oob259, label %idx_big_check257

and.119.else:                                     ; preds = %loop.body.118
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %idx_ok258
  %and.119.phi = phi i1 [ %call.res265, %idx_ok258 ], [ %cmptmp248, %and.119.else ]
  br i1 %and.119.phi, label %choice.then266, label %choice.else267

idx_big_check257:                                 ; preds = %and.119.then
  %idx.big260 = icmp sge i64 %var.load255, %s.read.len252
  br i1 %idx.big260, label %idx_oob259, label %idx_ok258

idx_ok258:                                        ; preds = %abort.dead261, %idx_big_check257
  %s.byte.gep262 = getelementptr i8, ptr %s.read.data254, i64 %var.load255
  %s.byte263 = load i8, ptr %s.byte.gep262, align 1
  %s.byte.val264 = zext i8 %s.byte263 to i64
  %call.res265 = call i1 @"str::is_digit"(i64 %s.byte.val264)
  br label %and.119.exit

idx_oob259:                                       ; preds = %idx_big_check257, %and.119.then
  %12 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead261:                                    ; No predecessors!
  br label %idx_ok258

choice.then266:                                   ; preds = %and.119.exit
  %var.load269 = load i64, ptr %"var.exp_val'", align 8
  %multmp = mul i64 %var.load269, 10
  %var.load270 = load ptr, ptr %var.s, align 8
  %s.read.len271 = getelementptr inbounds { i64, ptr }, ptr %var.load270, i32 0, i32 0
  %s.read.len272 = load i64, ptr %s.read.len271, align 8
  %s.read.len273 = and i64 %s.read.len272, 281474976710655
  %s.read.data274 = getelementptr inbounds { i64, ptr }, ptr %var.load270, i32 0, i32 1
  %s.read.data275 = load ptr, ptr %s.read.data274, align 8
  %var.load276 = load i64, ptr %"var.i'", align 8
  %idx.neg277 = icmp slt i64 %var.load276, 0
  br i1 %idx.neg277, label %idx_oob280, label %idx_big_check278

choice.else267:                                   ; preds = %and.119.exit
  br label %loop.exit.118

choice.exit268:                                   ; preds = %idx_ok279
  br label %loop.latch.118

idx_big_check278:                                 ; preds = %choice.then266
  %idx.big281 = icmp sge i64 %var.load276, %s.read.len273
  br i1 %idx.big281, label %idx_oob280, label %idx_ok279

idx_ok279:                                        ; preds = %abort.dead282, %idx_big_check278
  %s.byte.gep283 = getelementptr i8, ptr %s.read.data275, i64 %var.load276
  %s.byte284 = load i8, ptr %s.byte.gep283, align 1
  %s.byte.val285 = zext i8 %s.byte284 to i64
  %subtmp286 = sub i64 %s.byte.val285, 48
  %addtmp287 = add i64 %multmp, %subtmp286
  store i64 %addtmp287, ptr %"var.exp_val'", align 8
  %var.load288 = load i64, ptr %"var.exp_digits'", align 8
  %addtmp289 = add i64 %var.load288, 1
  store i64 %addtmp289, ptr %"var.exp_digits'", align 8
  %var.load290 = load i64, ptr %"var.i'", align 8
  %addtmp291 = add i64 %var.load290, 1
  store i64 %addtmp291, ptr %"var.i'", align 8
  br label %choice.exit268

idx_oob280:                                       ; preds = %idx_big_check278, %choice.then266
  %13 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead282:                                    ; No predecessors!
  br label %idx_ok279

choice.then296:                                   ; preds = %loop.exit.118
  ret { i1, i64 } zeroinitializer

choice.exit297:                                   ; preds = %ret.dead298, %loop.exit.118
  %var.load299 = load i1, ptr %var.exp_neg, align 1
  br i1 %var.load299, label %choice.then300, label %choice.else301

ret.dead298:                                      ; No predecessors!
  br label %choice.exit297

choice.then300:                                   ; preds = %choice.exit297
  %var.load303 = load i64, ptr %"var.exp_val'", align 8
  %negtmp = sub i64 0, %var.load303
  br label %choice.exit302

choice.else301:                                   ; preds = %choice.exit297
  %var.load304 = load i64, ptr %"var.exp_val'", align 8
  br label %choice.exit302

choice.exit302:                                   ; preds = %choice.else301, %choice.then300
  %choice.res305 = phi i64 [ %negtmp, %choice.then300 ], [ %var.load304, %choice.else301 ]
  %cast.sitofp306 = sitofp i64 %choice.res305 to double
  %pow = call double @llvm.pow.f64(double 1.000000e+01, double %cast.sitofp306)
  store double %pow, ptr %var.pow10, align 8
  %var.load307 = load double, ptr %"var.res'", align 8
  %var.load308 = load double, ptr %var.pow10, align 8
  %fmultmp309 = fmul double %var.load307, %var.load308
  store double %fmultmp309, ptr %"var.res'", align 8
  br label %choice.exit188

choice.then313:                                   ; preds = %choice.exit188
  br label %choice.exit315

choice.else314:                                   ; preds = %choice.exit188
  %var.load316 = load i1, ptr %var.neg, align 1
  br i1 %var.load316, label %choice.then317, label %choice.else318

choice.exit315:                                   ; preds = %choice.exit319, %choice.then313
  %choice.res323 = phi { i1, i64 } [ zeroinitializer, %choice.then313 ], [ %ram.pay, %choice.exit319 ]
  ret { i1, i64 } %choice.res323

choice.then317:                                   ; preds = %choice.else314
  %var.load320 = load double, ptr %"var.res'", align 8
  %fnegtmp = fneg double %var.load320
  br label %choice.exit319

choice.else318:                                   ; preds = %choice.else314
  %var.load321 = load double, ptr %"var.res'", align 8
  br label %choice.exit319

choice.exit319:                                   ; preds = %choice.else318, %choice.then317
  %choice.res322 = phi double [ %fnegtmp, %choice.then317 ], [ %var.load321, %choice.else318 ]
  %f.to.i64 = bitcast double %choice.res322 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %choice.exit315
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #1

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
