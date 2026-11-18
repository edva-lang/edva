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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load i64, ptr %var.start, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_b_byte_msg()
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
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %b.new.buf.len8
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"str::from_int"(i64 %0) #0 {
entry:
  %var.v = alloca i64, align 8
  store i64 %0, ptr %var.v, align 8
  %var.load = load i64, ptr %var.v, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %to_str.n = call i64 @dva_fmt_i64_buf(ptr %to_str.buf, i64 %var.load, i1 false)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %to_str.n = call i64 @dva_fmt_i64_buf(ptr %to_str.buf, i64 %var.load, i1 true)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %var._821 = alloca i64, align 8
  %var._i820 = alloca i64, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var._779 = alloca i64, align 8
  %var._i778 = alloca i64, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_b_byte_msg()
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
  %arena.cur74 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_b_byte_msg()
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
  %arena.cur117 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data138, i64 %b.freeze.len137, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len137
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.43
  %b.freeze.data140 = phi ptr [ %b.freeze.data138, %loop.exit.43 ], [ %b.freeze.data138, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur141 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_oob_msg()
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
  call void @dva_abort_str_oob_msg()
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
  %arena.cur183 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.ms, align 8
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 24)
  %b.data.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new185, i32 0, i32 1
  %b.len.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new185, i32 0, i32 0
  %b.cap.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new185, i32 0, i32 2
  %b.buf.len189 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum190 = extractvalue { i64, i1 } %b.buf.len189, 0
  %ovf191 = extractvalue { i64, i1 } %b.buf.len189, 1
  br i1 %ovf191, label %str_overflow_abort193, label %b.buf.len192

b.buf.len192:                                     ; preds = %abort.dead194, %choice.exit179
  %arena.cur195 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur220 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  %b.freeze.arena738 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_oob_msg()
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
  call void @dva_abort_b_byte_msg()
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
  %arena.cur271 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead270:                                    ; No predecessors!
  br label %b.new.buf.len268

b.rn.new.len290:                                  ; preds = %abort.dead292, %b.push_done261
  %b.cap293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load284, i32 0, i32 2
  %b.cap294 = load i64, ptr %b.cap293, align 8
  %b.need.grow295 = icmp slt i64 %b.cap294, %sum288
  br i1 %b.need.grow295, label %b.grow2296, label %b.nogrow2297

str_overflow_abort291:                            ; preds = %b.push_done261
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur314 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_oob_msg()
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
  call void @dva_abort_b_byte_msg()
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
  %arena.cur378 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_oob_msg()
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
  call void @dva_abort_b_byte_msg()
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
  %arena.cur449 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur498 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_oob_msg()
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
  call void @dva_abort_b_byte_msg()
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
  %arena.cur563 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead562:                                    ; No predecessors!
  br label %b.new.buf.len560

b.app.new.len583:                                 ; preds = %abort.dead585, %choice.else396
  %b.cap586 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load578, i32 0, i32 2
  %b.cap587 = load i64, ptr %b.cap586, align 8
  %b.need.grow588 = icmp slt i64 %b.cap587, %sum581
  br i1 %b.need.grow588, label %b.grow2589, label %b.nogrow2590

str_overflow_abort584:                            ; preds = %choice.else396
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur607 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur652 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_oob_msg()
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
  call void @dva_abort_b_byte_msg()
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
  %arena.cur718 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur761 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh762 = call ptr @dva_arena_alloc(ptr %arena.cur761, i64 %b.freeze.alen760)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh762, ptr align 1 %b.freeze.data737, i64 %b.freeze.len735, i1 false)
  %b.freeze.nul763 = getelementptr i8, ptr %b.freeze.fresh762, i64 %b.freeze.len735
  store i8 0, ptr %b.freeze.nul763, align 1
  br label %b.freeze.done744

b.freeze.done744:                                 ; preds = %b.freeze.copy743, %b.freeze.check742, %choice.exit229
  %b.freeze.data764 = phi ptr [ %b.freeze.data737, %choice.exit229 ], [ %b.freeze.data737, %b.freeze.check742 ], [ %b.freeze.fresh762, %b.freeze.copy743 ]
  %arena.cur765 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %b.freeze.done744
  store i64 0, ptr %loop.idx.55, align 8
  br label %loop.header.55

tag.slow_check:                                   ; preds = %b.freeze.done744
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.55:                                   ; preds = %loop.latch.55, %str_ok
  %counter.load775 = load i64, ptr %loop.idx.55, align 8
  %loop.cond776 = icmp slt i64 %counter.load775, %str.len.query774
  br i1 %loop.cond776, label %loop.body.55, label %loop.exit.nat.55

loop.body.55:                                     ; preds = %loop.header.55
  %loop.rel.i777 = sub i64 %counter.load775, 0
  store i64 1, ptr %loop.step.55, align 8
  store i64 %loop.rel.i777, ptr %var._i778, align 8
  store i64 %counter.load775, ptr %var._779, align 8
  store i64 %counter.load775, ptr %var.i, align 8
  %var.load780 = load ptr, ptr %var.full, align 8
  %s.read.len781 = getelementptr inbounds { i64, ptr }, ptr %var.load780, i32 0, i32 0
  %s.read.len782 = load i64, ptr %s.read.len781, align 8
  %s.read.len783 = and i64 %s.read.len782, 281474976710655
  %s.read.data784 = getelementptr inbounds { i64, ptr }, ptr %var.load780, i32 0, i32 1
  %s.read.data785 = load ptr, ptr %s.read.data784, align 8
  %var.load786 = load i64, ptr %var.i, align 8
  %idx.neg787 = icmp slt i64 %var.load786, 0
  br i1 %idx.neg787, label %idx_oob790, label %idx_big_check788

loop.exit.nat.55:                                 ; preds = %loop.header.55
  br label %loop.exit.55

loop.latch.55:                                    ; preds = %choice.exit798
  %step.val800 = load i64, ptr %loop.step.55, align 8
  %loop.next801 = add i64 %counter.load775, %step.val800
  store i64 %loop.next801, ptr %loop.idx.55, align 8
  br label %loop.header.55

loop.exit.55:                                     ; preds = %loop.exit.nat.55
  %var.load802 = load ptr, ptr %var.full, align 8
  %str.len.query803 = getelementptr inbounds { i64, ptr }, ptr %var.load802, i32 0, i32 0
  %str.len.query804 = load i64, ptr %str.len.query803, align 8
  %str.len.query805 = and i64 %str.len.query804, 281474976710655
  %str.tag806 = lshr i64 %str.len.query804, 48
  %tag.immortal808 = icmp eq i64 %str.tag806, 0
  %active.gen809 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current810 = icmp eq i64 %str.tag806, %active.gen809
  %tag.fast.ok811 = or i1 %tag.immortal808, %tag.current810
  br i1 %tag.fast.ok811, label %str_ok807, label %tag.slow_check812

idx_big_check788:                                 ; preds = %loop.body.55
  %idx.big791 = icmp sge i64 %var.load786, %s.read.len783
  br i1 %idx.big791, label %idx_oob790, label %idx_ok789

idx_ok789:                                        ; preds = %abort.dead792, %idx_big_check788
  %s.byte.gep793 = getelementptr i8, ptr %s.read.data785, i64 %var.load786
  %s.byte794 = load i8, ptr %s.byte.gep793, align 1
  %s.byte.val795 = zext i8 %s.byte794 to i64
  %cmptmp796 = icmp eq i64 %s.byte.val795, 46
  br i1 %cmptmp796, label %choice.then797, label %choice.exit798

idx_oob790:                                       ; preds = %idx_big_check788, %loop.body.55
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead792:                                    ; No predecessors!
  br label %idx_ok789

choice.then797:                                   ; preds = %idx_ok789
  %var.load799 = load i64, ptr %var.i, align 8
  store i64 %var.load799, ptr %"var.dot_pos'", align 8
  br label %choice.exit798

choice.exit798:                                   ; preds = %choice.then797, %idx_ok789
  br label %loop.latch.55

str_ok807:                                        ; preds = %tag.slow_check812, %loop.exit.55
  store i64 %str.len.query805, ptr %var.len, align 8
  %var.load813 = load i64, ptr %var.len, align 8
  store i64 %var.load813, ptr %"var.end'", align 8
  %var.load814 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp815 = icmp sge i64 %var.load814, 0
  br i1 %cmptmp815, label %choice.then816, label %choice.exit817

tag.slow_check812:                                ; preds = %loop.exit.55
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag806)
  br label %str_ok807

choice.then816:                                   ; preds = %str_ok807
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

choice.exit817:                                   ; preds = %choice.exit856, %str_ok807
  %var.load858 = load ptr, ptr %var.full, align 8
  %s.read.len859 = getelementptr inbounds { i64, ptr }, ptr %var.load858, i32 0, i32 0
  %s.read.len860 = load i64, ptr %s.read.len859, align 8
  %s.read.len861 = and i64 %s.read.len860, 281474976710655
  %s.read.data862 = getelementptr inbounds { i64, ptr }, ptr %var.load858, i32 0, i32 1
  %s.read.data863 = load ptr, ptr %s.read.data862, align 8
  %var.load864 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len861, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len861
  %final.start = select i1 %start.gt.len, i64 %s.read.len861, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load864, 0
  %rel.end = add i64 %s.read.len861, %var.load864
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load864
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len861
  %final.end = select i1 %end.gt.len, i64 %s.read.len861, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data863, i64 %final.start
  %arena.cur865 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur865, i64 16)
  %str.build.len.gep866 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep866, align 8
  %str.build.data.gep867 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep867, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load868 = load i64, ptr %"var.e'", align 8
  %cmptmp869 = icmp slt i64 %var.load868, 0
  br i1 %cmptmp869, label %choice.then870, label %choice.else871

loop.header.56:                                   ; preds = %loop.latch.56, %choice.then816
  %counter.load818 = load i64, ptr %loop.idx.56, align 8
  br label %loop.body.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i819 = sub i64 %counter.load818, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i819, ptr %var._i820, align 8
  store i64 %counter.load818, ptr %var._821, align 8
  %var.load822 = load i64, ptr %"var.end'", align 8
  %subtmp823 = sub i64 %var.load822, 1
  %var.load824 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp825 = icmp sgt i64 %subtmp823, %var.load824
  br i1 %cmptmp825, label %and.57.then, label %and.57.else

loop.exit.nat.56:                                 ; No predecessors!
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit846
  %step.val849 = load i64, ptr %loop.step.56, align 8
  %loop.next850 = add i64 %counter.load818, %step.val849
  store i64 %loop.next850, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %choice.else845, %loop.exit.nat.56
  %var.load851 = load i64, ptr %"var.end'", align 8
  %subtmp852 = sub i64 %var.load851, 1
  %var.load853 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp854 = icmp eq i64 %subtmp852, %var.load853
  br i1 %cmptmp854, label %choice.then855, label %choice.exit856

and.57.then:                                      ; preds = %loop.body.56
  %var.load826 = load ptr, ptr %var.full, align 8
  %s.read.len827 = getelementptr inbounds { i64, ptr }, ptr %var.load826, i32 0, i32 0
  %s.read.len828 = load i64, ptr %s.read.len827, align 8
  %s.read.len829 = and i64 %s.read.len828, 281474976710655
  %s.read.data830 = getelementptr inbounds { i64, ptr }, ptr %var.load826, i32 0, i32 1
  %s.read.data831 = load ptr, ptr %s.read.data830, align 8
  %var.load832 = load i64, ptr %"var.end'", align 8
  %subtmp833 = sub i64 %var.load832, 1
  %idx.neg834 = icmp slt i64 %subtmp833, 0
  br i1 %idx.neg834, label %idx_oob837, label %idx_big_check835

and.57.else:                                      ; preds = %loop.body.56
  br label %and.57.exit

and.57.exit:                                      ; preds = %and.57.else, %idx_ok836
  %and.57.phi = phi i1 [ %cmptmp843, %idx_ok836 ], [ %cmptmp825, %and.57.else ]
  br i1 %and.57.phi, label %choice.then844, label %choice.else845

idx_big_check835:                                 ; preds = %and.57.then
  %idx.big838 = icmp sge i64 %subtmp833, %s.read.len829
  br i1 %idx.big838, label %idx_oob837, label %idx_ok836

idx_ok836:                                        ; preds = %abort.dead839, %idx_big_check835
  %s.byte.gep840 = getelementptr i8, ptr %s.read.data831, i64 %subtmp833
  %s.byte841 = load i8, ptr %s.byte.gep840, align 1
  %s.byte.val842 = zext i8 %s.byte841 to i64
  %cmptmp843 = icmp eq i64 %s.byte.val842, 48
  br label %and.57.exit

idx_oob837:                                       ; preds = %idx_big_check835, %and.57.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead839:                                    ; No predecessors!
  br label %idx_ok836

choice.then844:                                   ; preds = %and.57.exit
  %var.load847 = load i64, ptr %"var.end'", align 8
  %subtmp848 = sub i64 %var.load847, 1
  store i64 %subtmp848, ptr %"var.end'", align 8
  br label %choice.exit846

choice.else845:                                   ; preds = %and.57.exit
  br label %loop.exit.56

choice.exit846:                                   ; preds = %choice.then844
  br label %loop.latch.56

choice.then855:                                   ; preds = %loop.exit.56
  %var.load857 = load i64, ptr %"var.dot_pos'", align 8
  store i64 %var.load857, ptr %"var.end'", align 8
  br label %choice.exit856

choice.exit856:                                   ; preds = %choice.then855, %loop.exit.56
  br label %choice.exit817

choice.then870:                                   ; preds = %choice.exit817
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %var.load873 = load i64, ptr %"var.e'", align 8
  %subtmp874 = sub i64 0, %var.load873
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %subtmp874, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.ilen)
  %sum875 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf876 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf876, label %str_overflow_abort878, label %cat.sum.len877

choice.else871:                                   ; preds = %choice.exit817
  %var.load890 = load i64, ptr %"var.e'", align 8
  %call.res891 = call { i64, ptr } @"str::from_int"(i64 %var.load890)
  %arena.cur892 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc893 = call ptr @dva_arena_alloc(ptr %arena.cur892, i64 16)
  store { i64, ptr } %call.res891, ptr %ret.ub.alloc893, align 8
  br label %choice.exit872

choice.exit872:                                   ; preds = %choice.else871, %concat.tot.len882
  %choice.res894 = phi ptr [ %concat.str, %concat.tot.len882 ], [ %ret.ub.alloc893, %choice.else871 ]
  store ptr %choice.res894, ptr %var.es, align 8
  %var.load895 = load i64, ptr %"var.e'", align 8
  %cmptmp896 = icmp slt i64 %var.load895, -4
  br i1 %cmptmp896, label %or.58.then, label %or.58.else

cat.sum.len877:                                   ; preds = %abort.dead879, %choice.then870
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum875, i64 1)
  %sum880 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf881 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf881, label %str_overflow_abort883, label %concat.tot.len882

str_overflow_abort878:                            ; preds = %choice.then870
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead879:                                    ; No predecessors!
  br label %cat.sum.len877

concat.tot.len882:                                ; preds = %abort.dead884, %cat.sum.len877
  %arena.cur885 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur885, i64 %sum880)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.dst886 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst886, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum875
  store i8 0, ptr %concat.nul, align 1
  %arena.cur887 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur887, i64 16)
  %str.build.len.gep888 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum875, ptr %str.build.len.gep888, align 8
  %str.build.data.gep889 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep889, align 8
  br label %choice.exit872

str_overflow_abort883:                            ; preds = %cat.sum.len877
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead884:                                    ; No predecessors!
  br label %concat.tot.len882

or.58.then:                                       ; preds = %choice.exit872
  br label %or.58.exit

or.58.else:                                       ; preds = %choice.exit872
  %var.load897 = load i64, ptr %"var.e'", align 8
  %cmptmp898 = icmp sge i64 %var.load897, 6
  br label %or.58.exit

or.58.exit:                                       ; preds = %or.58.else, %or.58.then
  %or.58.phi = phi i1 [ %cmptmp896, %or.58.then ], [ %cmptmp898, %or.58.else ]
  br i1 %or.58.phi, label %choice.then899, label %choice.else900

choice.then899:                                   ; preds = %or.58.exit
  %var.load902 = load ptr, ptr %var.mant, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load902, i32 0, i32 0
  %cat.seg903 = load i64, ptr %cat.seg, align 8
  %cat.seg904 = and i64 %cat.seg903, 281474976710655
  %str.tag905 = lshr i64 %cat.seg903, 48
  %tag.immortal907 = icmp eq i64 %str.tag905, 0
  %active.gen908 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current909 = icmp eq i64 %str.tag905, %active.gen908
  %tag.fast.ok910 = or i1 %tag.immortal907, %tag.current909
  br i1 %tag.fast.ok910, label %str_ok906, label %tag.slow_check911

choice.else900:                                   ; preds = %or.58.exit
  %var.load957 = load ptr, ptr %var.mant, align 8
  br label %choice.exit901

choice.exit901:                                   ; preds = %choice.else900, %concat.tot.len943
  %choice.res958 = phi ptr [ %concat.str954, %concat.tot.len943 ], [ %var.load957, %choice.else900 ]
  %ret.pack959 = load { i64, ptr }, ptr %choice.res958, align 8
  ret { i64, ptr } %ret.pack959

str_ok906:                                        ; preds = %tag.slow_check911, %choice.then899
  %cat.seg912 = getelementptr inbounds { i64, ptr }, ptr %var.load902, i32 0, i32 1
  %cat.seg913 = load ptr, ptr %cat.seg912, align 8
  %cat.lit.data914 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %var.load915 = load ptr, ptr %var.es, align 8
  %cat.seg916 = getelementptr inbounds { i64, ptr }, ptr %var.load915, i32 0, i32 0
  %cat.seg917 = load i64, ptr %cat.seg916, align 8
  %cat.seg918 = and i64 %cat.seg917, 281474976710655
  %str.tag919 = lshr i64 %cat.seg917, 48
  %tag.immortal921 = icmp eq i64 %str.tag919, 0
  %active.gen922 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current923 = icmp eq i64 %str.tag919, %active.gen922
  %tag.fast.ok924 = or i1 %tag.immortal921, %tag.current923
  br i1 %tag.fast.ok924, label %str_ok920, label %tag.slow_check925

tag.slow_check911:                                ; preds = %choice.then899
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag905)
  br label %str_ok906

str_ok920:                                        ; preds = %tag.slow_check925, %str_ok906
  %cat.seg926 = getelementptr inbounds { i64, ptr }, ptr %var.load915, i32 0, i32 1
  %cat.seg927 = load ptr, ptr %cat.seg926, align 8
  %cat.sum.len928 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg904, i64 1)
  %sum929 = extractvalue { i64, i1 } %cat.sum.len928, 0
  %ovf930 = extractvalue { i64, i1 } %cat.sum.len928, 1
  br i1 %ovf930, label %str_overflow_abort932, label %cat.sum.len931

tag.slow_check925:                                ; preds = %str_ok906
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag919)
  br label %str_ok920

cat.sum.len931:                                   ; preds = %abort.dead933, %str_ok920
  %cat.sum.len934 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum929, i64 %cat.seg918)
  %sum935 = extractvalue { i64, i1 } %cat.sum.len934, 0
  %ovf936 = extractvalue { i64, i1 } %cat.sum.len934, 1
  br i1 %ovf936, label %str_overflow_abort938, label %cat.sum.len937

str_overflow_abort932:                            ; preds = %str_ok920
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead933:                                    ; No predecessors!
  br label %cat.sum.len931

cat.sum.len937:                                   ; preds = %abort.dead939, %cat.sum.len931
  %concat.tot.len940 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum935, i64 1)
  %sum941 = extractvalue { i64, i1 } %concat.tot.len940, 0
  %ovf942 = extractvalue { i64, i1 } %concat.tot.len940, 1
  br i1 %ovf942, label %str_overflow_abort944, label %concat.tot.len943

str_overflow_abort938:                            ; preds = %cat.sum.len931
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead939:                                    ; No predecessors!
  br label %cat.sum.len937

concat.tot.len943:                                ; preds = %abort.dead945, %cat.sum.len937
  %arena.cur946 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf947 = call ptr @dva_arena_alloc(ptr %arena.cur946, i64 %sum941)
  %cat.dst948 = getelementptr i8, ptr %concat.buf947, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst948, ptr align 1 %cat.seg913, i64 %cat.seg904, i1 false)
  %cat.off = add i64 0, %cat.seg904
  %cat.dst949 = getelementptr i8, ptr %concat.buf947, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst949, ptr align 1 %cat.lit.data914, i64 1, i1 false)
  %cat.off950 = add i64 %cat.off, 1
  %cat.dst951 = getelementptr i8, ptr %concat.buf947, i64 %cat.off950
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst951, ptr align 1 %cat.seg927, i64 %cat.seg918, i1 false)
  %concat.nul952 = getelementptr i8, ptr %concat.buf947, i64 %sum935
  store i8 0, ptr %concat.nul952, align 1
  %arena.cur953 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str954 = call ptr @dva_arena_alloc(ptr %arena.cur953, i64 16)
  %str.build.len.gep955 = getelementptr inbounds { i64, ptr }, ptr %concat.str954, i32 0, i32 0
  store i64 %sum935, ptr %str.build.len.gep955, align 8
  %str.build.data.gep956 = getelementptr inbounds { i64, ptr }, ptr %concat.str954, i32 0, i32 1
  store ptr %concat.buf947, ptr %str.build.data.gep956, align 8
  br label %choice.exit901

str_overflow_abort944:                            ; preds = %cat.sum.len937
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead945:                                    ; No predecessors!
  br label %concat.tot.len943
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.la, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  %active.gen10 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current11 = icmp eq i64 %str.tag7, %active.gen10
  %tag.fast.ok12 = or i1 %tag.immortal9, %tag.current11
  br i1 %tag.fast.ok12, label %str_ok8, label %tag.slow_check13

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok8:                                          ; preds = %tag.slow_check13, %str_ok
  store i64 %str.len.query6, ptr %var.lb, align 8
  %var.load14 = load i64, ptr %var.la, align 8
  %var.load15 = load i64, ptr %var.lb, align 8
  %cmptmp = icmp slt i64 %var.load14, %var.load15
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check13:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

choice.then:                                      ; preds = %str_ok8
  %var.load16 = load i64, ptr %var.la, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok8
  %var.load17 = load i64, ptr %var.lb, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load16, %choice.then ], [ %var.load17, %choice.else ]
  store i64 %choice.res, ptr %var.n, align 8
  %var.load18 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit
  %counter.load = load i64, ptr %loop.idx.59, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load18
  br i1 %loop.cond, label %loop.body.59, label %loop.exit.nat.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load19 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load23, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit44
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  %var.load52 = load i64, ptr %var.la, align 8
  %var.load53 = load i64, ptr %var.lb, align 8
  %cmptmp54 = icmp eq i64 %var.load52, %var.load53
  br i1 %cmptmp54, label %choice.then55, label %choice.else56

idx_big_check:                                    ; preds = %loop.body.59
  %idx.big = icmp sge i64 %var.load23, %s.read.len21
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data22, i64 %var.load23
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ca, align 8
  %var.load24 = load ptr, ptr %var.b, align 8
  %s.read.len25 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %s.read.len26 = load i64, ptr %s.read.len25, align 8
  %s.read.len27 = and i64 %s.read.len26, 281474976710655
  %s.read.data28 = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %idx.neg31 = icmp slt i64 %var.load30, 0
  br i1 %idx.neg31, label %idx_oob34, label %idx_big_check32

idx_oob:                                          ; preds = %idx_big_check, %loop.body.59
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

idx_big_check32:                                  ; preds = %idx_ok
  %idx.big35 = icmp sge i64 %var.load30, %s.read.len27
  br i1 %idx.big35, label %idx_oob34, label %idx_ok33

idx_ok33:                                         ; preds = %abort.dead36, %idx_big_check32
  %s.byte.gep37 = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte38 = load i8, ptr %s.byte.gep37, align 1
  %s.byte.val39 = zext i8 %s.byte38 to i64
  store i64 %s.byte.val39, ptr %var.cb, align 8
  %var.load40 = load i64, ptr %var.ca, align 8
  %var.load41 = load i64, ptr %var.cb, align 8
  %cmptmp42 = icmp ne i64 %var.load40, %var.load41
  br i1 %cmptmp42, label %choice.then43, label %choice.exit44

idx_oob34:                                        ; preds = %idx_big_check32, %idx_ok
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead36:                                     ; No predecessors!
  br label %idx_ok33

choice.then43:                                    ; preds = %idx_ok33
  %var.load45 = load i64, ptr %var.ca, align 8
  %var.load46 = load i64, ptr %var.cb, align 8
  %cmptmp47 = icmp slt i64 %var.load45, %var.load46
  br i1 %cmptmp47, label %choice.then48, label %choice.else49

choice.exit44:                                    ; preds = %ret.dead, %idx_ok33
  br label %loop.latch.59

choice.then48:                                    ; preds = %choice.then43
  br label %choice.exit50

choice.else49:                                    ; preds = %choice.then43
  br label %choice.exit50

choice.exit50:                                    ; preds = %choice.else49, %choice.then48
  %choice.res51 = phi i64 [ -1, %choice.then48 ], [ 1, %choice.else49 ]
  ret i64 %choice.res51

ret.dead:                                         ; No predecessors!
  br label %choice.exit44

choice.then55:                                    ; preds = %loop.exit.59
  br label %choice.exit57

choice.else56:                                    ; preds = %loop.exit.59
  %var.load58 = load i64, ptr %var.la, align 8
  %var.load59 = load i64, ptr %var.lb, align 8
  %cmptmp60 = icmp slt i64 %var.load58, %var.load59
  br i1 %cmptmp60, label %choice.then61, label %choice.else62

choice.exit57:                                    ; preds = %choice.exit63, %choice.then55
  %choice.res65 = phi i64 [ 0, %choice.then55 ], [ %choice.res64, %choice.exit63 ]
  ret i64 %choice.res65

choice.then61:                                    ; preds = %choice.else56
  br label %choice.exit63

choice.else62:                                    ; preds = %choice.else56
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else62, %choice.then61
  %choice.res64 = phi i64 [ -1, %choice.then61 ], [ 1, %choice.else62 ]
  br label %choice.exit57
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.60, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.60

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load9, ptr %rec.fld, align 8
  %rec.fld17 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld17, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.61, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.61

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load10, ptr %rec.fld, align 8
  %rec.fld18 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld18, align 8
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
  %var._174 = alloca i64, align 8
  %var._i173 = alloca i64, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_b_byte_msg()
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
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %b.new.buf.len22

b.rn.new.len34:                                   ; preds = %abort.dead36, %loop.exit.62
  %b.cap37 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 2
  %b.cap38 = load i64, ptr %b.cap37, align 8
  %b.need.grow = icmp slt i64 %b.cap38, %sum32
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort35:                             ; preds = %loop.exit.62
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
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
  %arena.cur150 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data149, i64 %b.freeze.len148, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len148
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit100
  %b.freeze.data151 = phi ptr [ %b.freeze.data149, %choice.exit100 ], [ %b.freeze.data149, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur152 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur153 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 24)
  %b.data.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new154, i32 0, i32 1
  %b.len.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new154, i32 0, i32 0
  %b.cap.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new154, i32 0, i32 2
  %b.buf.len158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum159 = extractvalue { i64, i1 } %b.buf.len158, 0
  %ovf160 = extractvalue { i64, i1 } %b.buf.len158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %b.buf.len161

b.buf.len161:                                     ; preds = %abort.dead163, %b.freeze.done
  %arena.cur164 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_overflow_abort162:                            ; preds = %b.freeze.done
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %b.buf.len161

str_ok:                                           ; preds = %tag.slow_check, %b.buf.len161
  store i64 0, ptr %loop.idx.66, align 8
  br label %loop.header.66

tag.slow_check:                                   ; preds = %b.buf.len161
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.66:                                   ; preds = %loop.latch.66, %str_ok
  %counter.load170 = load i64, ptr %loop.idx.66, align 8
  %loop.cond171 = icmp slt i64 %counter.load170, %str.len.query169
  br i1 %loop.cond171, label %loop.body.66, label %loop.exit.nat.66

loop.body.66:                                     ; preds = %loop.header.66
  %loop.rel.i172 = sub i64 %counter.load170, 0
  store i64 1, ptr %loop.step.66, align 8
  store i64 %loop.rel.i172, ptr %var._i173, align 8
  store i64 %counter.load170, ptr %var._174, align 8
  store i64 %counter.load170, ptr %var.i, align 8
  %b.load175 = load ptr, ptr %var.out, align 8
  %var.load176 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load176, i32 0, i32 0
  %s.read.len177 = load i64, ptr %s.read.len, align 8
  %s.read.len178 = and i64 %s.read.len177, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load176, i32 0, i32 1
  %s.read.data179 = load ptr, ptr %s.read.data, align 8
  %var.load180 = load ptr, ptr %var.s, align 8
  %str.len.query181 = getelementptr inbounds { i64, ptr }, ptr %var.load180, i32 0, i32 0
  %str.len.query182 = load i64, ptr %str.len.query181, align 8
  %str.len.query183 = and i64 %str.len.query182, 281474976710655
  %subtmp184 = sub i64 %str.len.query183, 1
  %var.load185 = load i64, ptr %var.i, align 8
  %subtmp186 = sub i64 %subtmp184, %var.load185
  %idx.neg = icmp slt i64 %subtmp186, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.66:                                 ; preds = %loop.header.66
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %b.push_done204
  %step.val227 = load i64, ptr %loop.step.66, align 8
  %loop.next228 = add i64 %counter.load170, %step.val227
  store i64 %loop.next228, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %loop.exit.nat.66
  %var.load229 = load ptr, ptr %var.out, align 8
  %b.freeze.len230 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 0
  %b.freeze.len231 = load i64, ptr %b.freeze.len230, align 8
  %b.freeze.data232 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 1
  %b.freeze.data233 = load ptr, ptr %b.freeze.data232, align 8
  %b.freeze.arena234 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep235 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena234, i32 0, i32 1
  %b.freeze.nc236 = load i64, ptr %b.freeze.nc.gep235, align 8
  %b.freeze.has.chunk237 = icmp sgt i64 %b.freeze.nc236, 0
  br i1 %b.freeze.has.chunk237, label %b.freeze.check238, label %b.freeze.done240

idx_big_check:                                    ; preds = %loop.body.66
  %idx.big = icmp sge i64 %subtmp186, %s.read.len178
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead187, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data179, i64 %subtmp186
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0188 = icmp sge i64 %s.byte.val, 0
  %b.b.le255189 = icmp sle i64 %s.byte.val, 255
  %b.byte.range190 = and i1 %b.b.ge0188, %b.b.le255189
  br i1 %b.byte.range190, label %b.byte_ok191, label %b.byte_err192

idx_oob:                                          ; preds = %idx_big_check, %loop.body.66
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead187:                                    ; No predecessors!
  br label %idx_ok

b.byte_ok191:                                     ; preds = %abort.dead193, %idx_ok
  %b.byte.i8194 = trunc i64 %s.byte.val to i8
  %b.len195 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 0
  %b.len196 = load i64, ptr %b.len195, align 8
  %b.cap197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 2
  %b.cap198 = load i64, ptr %b.cap197, align 8
  %b.data199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 1
  %b.data200 = load ptr, ptr %b.data199, align 8
  %b.needs.grow201 = icmp eq i64 %b.len196, %b.cap198
  br i1 %b.needs.grow201, label %b.grow202, label %b.nogrow203

b.byte_err192:                                    ; preds = %idx_ok
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead193:                                    ; No predecessors!
  br label %b.byte_ok191

b.grow202:                                        ; preds = %b.byte_ok191
  %b.cap2205 = mul i64 %b.cap198, 2
  %b.cap.small206 = icmp slt i64 %b.cap2205, 16
  %b.new.cap207 = select i1 %b.cap.small206, i64 16, i64 %b.cap2205
  %b.new.buf.len208 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap207, i64 1)
  %sum209 = extractvalue { i64, i1 } %b.new.buf.len208, 0
  %ovf210 = extractvalue { i64, i1 } %b.new.buf.len208, 1
  br i1 %ovf210, label %str_overflow_abort212, label %b.new.buf.len211

b.nogrow203:                                      ; preds = %b.byte_ok191
  br label %b.push_done204

b.push_done204:                                   ; preds = %b.nogrow203, %b.new.buf.len211
  %b.cur.data219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 1
  %b.cur.data220 = load ptr, ptr %b.cur.data219, align 8
  %b.cur.len221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 0
  %b.cur.len222 = load i64, ptr %b.cur.len221, align 8
  %b.byte.gep223 = getelementptr i8, ptr %b.cur.data220, i64 %b.cur.len222
  store i8 %b.byte.i8194, ptr %b.byte.gep223, align 1
  %b.next.len224 = add i64 %b.cur.len222, 1
  %b.nul225 = getelementptr i8, ptr %b.cur.data220, i64 %b.next.len224
  store i8 0, ptr %b.nul225, align 1
  %b.len.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 0
  store i64 %b.next.len224, ptr %b.len.gep226, align 8
  br label %loop.latch.66

b.new.buf.len211:                                 ; preds = %abort.dead213, %b.grow202
  %arena.cur214 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 %sum209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf215, ptr align 1 %b.data200, i64 %b.len196, i1 false)
  %b.grow.nul216 = getelementptr i8, ptr %b.new.buf215, i64 %b.len196
  store i8 0, ptr %b.grow.nul216, align 1
  %b.new.data.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 1
  store ptr %b.new.buf215, ptr %b.new.data.gep217, align 8
  %b.new.cap.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 2
  store i64 %b.new.cap207, ptr %b.new.cap.gep218, align 8
  br label %b.push_done204

str_overflow_abort212:                            ; preds = %b.grow202
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead213:                                    ; No predecessors!
  br label %b.new.buf.len211

b.freeze.check238:                                ; preds = %loop.exit.66
  %b.freeze.last.idx241 = sub i64 %b.freeze.nc236, 1
  %b.freeze.chunks.gep242 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena234, i32 0, i32 3
  %b.freeze.chunk.slot243 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep242, i64 0, i64 %b.freeze.last.idx241
  %b.freeze.last.chunk244 = load ptr, ptr %b.freeze.chunk.slot243, align 8
  %b.freeze.off.gep245 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena234, i32 0, i32 2
  %b.freeze.off246 = load i64, ptr %b.freeze.off.gep245, align 8
  %b.freeze.bump247 = getelementptr i8, ptr %b.freeze.last.chunk244, i64 %b.freeze.off246
  %b.freeze.cap.gep248 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena234, i32 0, i32 0
  %b.freeze.cap249 = load i64, ptr %b.freeze.cap.gep248, align 8
  %b.freeze.chunk.end250 = getelementptr i8, ptr %b.freeze.last.chunk244, i64 %b.freeze.cap249
  %b.freeze.ge.chunk251 = icmp uge ptr %b.freeze.data233, %b.freeze.last.chunk244
  %b.freeze.lt.end252 = icmp ult ptr %b.freeze.data233, %b.freeze.chunk.end250
  %b.freeze.in.chunk253 = and i1 %b.freeze.ge.chunk251, %b.freeze.lt.end252
  %b.freeze.ge.bump254 = icmp uge ptr %b.freeze.data233, %b.freeze.bump247
  %b.freeze.reaped255 = and i1 %b.freeze.in.chunk253, %b.freeze.ge.bump254
  br i1 %b.freeze.reaped255, label %b.freeze.copy239, label %b.freeze.done240

b.freeze.copy239:                                 ; preds = %b.freeze.check238
  %b.freeze.alen256 = add i64 %b.freeze.len231, 1
  %arena.cur257 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 %b.freeze.alen256)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh258, ptr align 1 %b.freeze.data233, i64 %b.freeze.len231, i1 false)
  %b.freeze.nul259 = getelementptr i8, ptr %b.freeze.fresh258, i64 %b.freeze.len231
  store i8 0, ptr %b.freeze.nul259, align 1
  br label %b.freeze.done240

b.freeze.done240:                                 ; preds = %b.freeze.copy239, %b.freeze.check238, %loop.exit.66
  %b.freeze.data260 = phi ptr [ %b.freeze.data233, %loop.exit.66 ], [ %b.freeze.data233, %b.freeze.check238 ], [ %b.freeze.fresh258, %b.freeze.copy239 ]
  %arena.cur261 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 16)
  %str.build.len.gep263 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze262, i32 0, i32 0
  store i64 %b.freeze.len231, ptr %str.build.len.gep263, align 8
  %str.build.data.gep264 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze262, i32 0, i32 1
  store ptr %b.freeze.data260, ptr %str.build.data.gep264, align 8
  %b.freeze.rst.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len265, align 8
  %b.freeze.rst.data266 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data266, align 8
  %b.freeze.rst.cap267 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap267, align 8
  %ret.pack268 = load { i64, ptr }, ptr %builder.freeze262, align 8
  ret { i64, ptr } %ret.pack268
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  ret i1 %cmptmp

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.67, align 8
  br label %loop.header.67

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.lp, align 8
  %var.load3 = load i64, ptr %var.lp, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

choice.exit:                                      ; preds = %and.68.exit, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %and.68.phi, %and.68.exit ]
  ret i1 %choice.res

str_ok9:                                          ; preds = %tag.slow_check14, %choice.else
  %var.load15 = load i64, ptr %var.lp, align 8
  %cmptmp16 = icmp sge i64 %str.len.query7, %var.load15
  br i1 %cmptmp16, label %and.68.then, label %and.68.else

tag.slow_check14:                                 ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

and.68.then:                                      ; preds = %str_ok9
  %var.load17 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.chk.len18 = load i64, ptr %s.chk.len, align 8
  %s.chk.len19 = and i64 %s.chk.len18, 281474976710655
  %str.tag20 = lshr i64 %s.chk.len18, 48
  %tag.immortal22 = icmp eq i64 %str.tag20, 0
  %active.gen23 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current24 = icmp eq i64 %str.tag20, %active.gen23
  %tag.fast.ok25 = or i1 %tag.immortal22, %tag.current24
  br i1 %tag.fast.ok25, label %str_ok21, label %tag.slow_check26

and.68.else:                                      ; preds = %str_ok9
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %str.eq.merge
  %and.68.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp16, %and.68.else ]
  br label %choice.exit

str_ok21:                                         ; preds = %tag.slow_check26, %and.68.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len27 = load i64, ptr %s.read.len, align 8
  %s.read.len28 = and i64 %s.read.len27, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load i64, ptr %var.lp, align 8
  %rel.start = add i64 %s.read.len28, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len28
  %final.start = select i1 %start.gt.len, i64 %s.read.len28, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load30, 0
  %rel.end = add i64 %s.read.len28, %var.load30
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load30
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len28
  %final.end = select i1 %end.gt.len, i64 %s.read.len28, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data29, i64 %final.start
  %var.load31 = load ptr, ptr %var.prefix, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %cmp.str32 = load i64, ptr %cmp.str, align 8
  %cmp.str33 = and i64 %cmp.str32, 281474976710655
  %str.tag34 = lshr i64 %cmp.str32, 48
  %tag.immortal36 = icmp eq i64 %str.tag34, 0
  %active.gen37 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current38 = icmp eq i64 %str.tag34, %active.gen37
  %tag.fast.ok39 = or i1 %tag.immortal36, %tag.current38
  br i1 %tag.fast.ok39, label %str_ok35, label %tag.slow_check40

tag.slow_check26:                                 ; preds = %and.68.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag20)
  br label %str_ok21

str_ok35:                                         ; preds = %tag.slow_check40, %str_ok21
  %cmp.str41 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %cmp.str42 = load ptr, ptr %cmp.str41, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str33
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check40:                                 ; preds = %str_ok21
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag34)
  br label %str_ok35

str.eq.then:                                      ; preds = %str_ok35
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str42, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok35
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.suffix, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  %active.gen10 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current11 = icmp eq i64 %str.tag7, %active.gen10
  %tag.fast.ok12 = or i1 %tag.immortal9, %tag.current11
  br i1 %tag.fast.ok12, label %str_ok8, label %tag.slow_check13

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok8:                                          ; preds = %tag.slow_check13, %str_ok
  store i64 %str.len.query6, ptr %var.lf, align 8
  %var.load14 = load i64, ptr %var.lf, align 8
  %cmptmp = icmp eq i64 %var.load14, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check13:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

choice.then:                                      ; preds = %str_ok8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok8
  %var.load15 = load i64, ptr %var.ls, align 8
  %var.load16 = load i64, ptr %var.lf, align 8
  %cmptmp17 = icmp sge i64 %var.load15, %var.load16
  br i1 %cmptmp17, label %and.69.then, label %and.69.else

choice.exit:                                      ; preds = %and.69.exit, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %and.69.phi, %and.69.exit ]
  ret i1 %choice.res

and.69.then:                                      ; preds = %choice.else
  %var.load18 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.chk.len19 = load i64, ptr %s.chk.len, align 8
  %s.chk.len20 = and i64 %s.chk.len19, 281474976710655
  %str.tag21 = lshr i64 %s.chk.len19, 48
  %tag.immortal23 = icmp eq i64 %str.tag21, 0
  %active.gen24 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current25 = icmp eq i64 %str.tag21, %active.gen24
  %tag.fast.ok26 = or i1 %tag.immortal23, %tag.current25
  br i1 %tag.fast.ok26, label %str_ok22, label %tag.slow_check27

and.69.else:                                      ; preds = %choice.else
  br label %and.69.exit

and.69.exit:                                      ; preds = %and.69.else, %str.eq.merge
  %and.69.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp17, %and.69.else ]
  br label %choice.exit

str_ok22:                                         ; preds = %tag.slow_check27, %and.69.then
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  %var.load31 = load i64, ptr %var.ls, align 8
  %var.load32 = load i64, ptr %var.lf, align 8
  %subtmp = sub i64 %var.load31, %var.load32
  %var.load33 = load i64, ptr %var.ls, align 8
  %start.is_neg = icmp slt i64 %subtmp, 0
  %rel.start = add i64 %s.read.len29, %subtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len29
  %final.start = select i1 %start.gt.len, i64 %s.read.len29, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load33, 0
  %rel.end = add i64 %s.read.len29, %var.load33
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load33
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len29
  %final.end = select i1 %end.gt.len, i64 %s.read.len29, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data30, i64 %final.start
  %var.load34 = load ptr, ptr %var.suffix, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %cmp.str35 = load i64, ptr %cmp.str, align 8
  %cmp.str36 = and i64 %cmp.str35, 281474976710655
  %str.tag37 = lshr i64 %cmp.str35, 48
  %tag.immortal39 = icmp eq i64 %str.tag37, 0
  %active.gen40 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current41 = icmp eq i64 %str.tag37, %active.gen40
  %tag.fast.ok42 = or i1 %tag.immortal39, %tag.current41
  br i1 %tag.fast.ok42, label %str_ok38, label %tag.slow_check43

tag.slow_check27:                                 ; preds = %and.69.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag21)
  br label %str_ok22

str_ok38:                                         ; preds = %tag.slow_check43, %str_ok22
  %cmp.str44 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %cmp.str45 = load ptr, ptr %cmp.str44, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str36
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check43:                                 ; preds = %str_ok22
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag37)
  br label %str_ok38

str.eq.then:                                      ; preds = %str_ok38
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str45, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok38
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.needle, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  %active.gen10 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current11 = icmp eq i64 %str.tag7, %active.gen10
  %tag.fast.ok12 = or i1 %tag.immortal9, %tag.current11
  br i1 %tag.fast.ok12, label %str_ok8, label %tag.slow_check13

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok8:                                          ; preds = %tag.slow_check13, %str_ok
  store i64 %str.len.query6, ptr %var.ln, align 8
  %var.load14 = load i64, ptr %var.start, align 8
  %cmptmp = icmp slt i64 %var.load14, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check13:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

choice.then:                                      ; preds = %str_ok8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok8
  %var.load15 = load i64, ptr %var.start, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load15, %choice.else ]
  store i64 %choice.res, ptr %var.st, align 8
  %var.load16 = load i64, ptr %var.ln, align 8
  %cmptmp17 = icmp eq i64 %var.load16, 0
  br i1 %cmptmp17, label %choice.then18, label %choice.else19

choice.then18:                                    ; preds = %choice.exit
  %var.load21 = load i64, ptr %var.st, align 8
  %var.load22 = load i64, ptr %var.ls, align 8
  %cmptmp23 = icmp sle i64 %var.load21, %var.load22
  br i1 %cmptmp23, label %choice.then24, label %choice.else25

choice.else19:                                    ; preds = %choice.exit
  %var.load29 = load i64, ptr %var.st, align 8
  %var.load30 = load i64, ptr %var.ln, align 8
  %addtmp = add i64 %var.load29, %var.load30
  %var.load31 = load i64, ptr %var.ls, align 8
  %cmptmp32 = icmp sgt i64 %addtmp, %var.load31
  br i1 %cmptmp32, label %choice.then33, label %choice.else34

choice.exit20:                                    ; preds = %choice.exit35, %choice.exit26
  %choice.res173 = phi { i1, i64 } [ %choice.res28, %choice.exit26 ], [ %choice.res172, %choice.exit35 ]
  ret { i1, i64 } %choice.res173

choice.then24:                                    ; preds = %choice.then18
  %var.load27 = load i64, ptr %var.st, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load27, 1
  br label %choice.exit26

choice.else25:                                    ; preds = %choice.then18
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.else25, %choice.then24
  %choice.res28 = phi { i1, i64 } [ %ram.pay, %choice.then24 ], [ zeroinitializer, %choice.else25 ]
  br label %choice.exit20

choice.then33:                                    ; preds = %choice.else19
  br label %choice.exit35

choice.else34:                                    ; preds = %choice.else19
  %var.load36 = load i64, ptr %var.ln, align 8
  %cmptmp37 = icmp eq i64 %var.load36, 1
  br i1 %cmptmp37, label %choice.then38, label %choice.else39

choice.exit35:                                    ; preds = %choice.exit40, %choice.then33
  %choice.res172 = phi { i1, i64 } [ zeroinitializer, %choice.then33 ], [ %choice.res171, %choice.exit40 ]
  br label %choice.exit20

choice.then38:                                    ; preds = %choice.else34
  %var.load41 = load ptr, ptr %var.s, align 8
  %var.load42 = load ptr, ptr %var.needle, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %s.read.len43 = load i64, ptr %s.read.len, align 8
  %s.read.len44 = and i64 %s.read.len43, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %s.read.data45 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

choice.else39:                                    ; preds = %choice.else34
  %var.load55 = load i64, ptr %var.ls, align 8
  %var.load56 = load i64, ptr %var.ln, align 8
  %subtmp = sub i64 %var.load55, %var.load56
  store i64 %subtmp, ptr %var.limit, align 8
  %var.load57 = load ptr, ptr %var.needle, align 8
  %s.read.len58 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %s.read.len59 = load i64, ptr %s.read.len58, align 8
  %s.read.len60 = and i64 %s.read.len59, 281474976710655
  %s.read.data61 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %s.read.data62 = load ptr, ptr %s.read.data61, align 8
  br i1 false, label %idx_oob65, label %idx_big_check63

choice.exit40:                                    ; preds = %loop.exit.70, %choice.exit51
  %choice.res171 = phi { i1, i64 } [ %choice.res54, %choice.exit51 ], [ zeroinitializer, %loop.exit.70 ]
  br label %choice.exit35

idx_big_check:                                    ; preds = %choice.then38
  %idx.big = icmp sge i64 0, %s.read.len44
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data45, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load46 = load i64, ptr %var.st, align 8
  %call.res = call i64 @"str::#find_byte_from"(ptr %var.load41, i64 %s.byte.val, i64 %var.load46)
  store i64 %call.res, ptr %var.pos, align 8
  %var.load47 = load i64, ptr %var.pos, align 8
  %cmptmp48 = icmp slt i64 %var.load47, 0
  br i1 %cmptmp48, label %choice.then49, label %choice.else50

idx_oob:                                          ; preds = %idx_big_check, %choice.then38
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then49:                                    ; preds = %idx_ok
  br label %choice.exit51

choice.else50:                                    ; preds = %idx_ok
  %var.load52 = load i64, ptr %var.pos, align 8
  %ram.pay53 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load52, 1
  br label %choice.exit51

choice.exit51:                                    ; preds = %choice.else50, %choice.then49
  %choice.res54 = phi { i1, i64 } [ zeroinitializer, %choice.then49 ], [ %ram.pay53, %choice.else50 ]
  br label %choice.exit40

idx_big_check63:                                  ; preds = %choice.else39
  %idx.big66 = icmp sge i64 0, %s.read.len60
  br i1 %idx.big66, label %idx_oob65, label %idx_ok64

idx_ok64:                                         ; preds = %abort.dead67, %idx_big_check63
  %s.byte.gep68 = getelementptr i8, ptr %s.read.data62, i64 0
  %s.byte69 = load i8, ptr %s.byte.gep68, align 1
  %s.byte.val70 = zext i8 %s.byte69 to i64
  store i64 %s.byte.val70, ptr %var.first_b, align 8
  %var.load71 = load ptr, ptr %var.needle, align 8
  %s.read.len72 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %s.read.len73 = load i64, ptr %s.read.len72, align 8
  %s.read.len74 = and i64 %s.read.len73, 281474976710655
  %s.read.data75 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 1
  %s.read.data76 = load ptr, ptr %s.read.data75, align 8
  %var.load77 = load i64, ptr %var.ln, align 8
  %subtmp78 = sub i64 %var.load77, 1
  %idx.neg = icmp slt i64 %subtmp78, 0
  br i1 %idx.neg, label %idx_oob81, label %idx_big_check79

idx_oob65:                                        ; preds = %idx_big_check63, %choice.else39
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %idx_ok64

idx_big_check79:                                  ; preds = %idx_ok64
  %idx.big82 = icmp sge i64 %subtmp78, %s.read.len74
  br i1 %idx.big82, label %idx_oob81, label %idx_ok80

idx_ok80:                                         ; preds = %abort.dead83, %idx_big_check79
  %s.byte.gep84 = getelementptr i8, ptr %s.read.data76, i64 %subtmp78
  %s.byte85 = load i8, ptr %s.byte.gep84, align 1
  %s.byte.val86 = zext i8 %s.byte85 to i64
  store i64 %s.byte.val86, ptr %var.last_b, align 8
  %var.load87 = load i64, ptr %var.st, align 8
  store i64 %var.load87, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.70, align 8
  br label %loop.header.70

idx_oob81:                                        ; preds = %idx_big_check79, %idx_ok64
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead83:                                     ; No predecessors!
  br label %idx_ok80

loop.header.70:                                   ; preds = %loop.latch.70, %idx_ok80
  %counter.load = load i64, ptr %loop.idx.70, align 8
  br label %loop.body.70

loop.body.70:                                     ; preds = %loop.header.70
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.70, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load88 = load ptr, ptr %var.s, align 8
  %var.load89 = load i64, ptr %var.first_b, align 8
  %var.load90 = load i64, ptr %"var.pos'", align 8
  %call.res91 = call i64 @"str::#find_byte_from"(ptr %var.load88, i64 %var.load89, i64 %var.load90)
  store i64 %call.res91, ptr %var.hit, align 8
  %var.load92 = load i64, ptr %var.hit, align 8
  %cmptmp93 = icmp slt i64 %var.load92, 0
  br i1 %cmptmp93, label %or.71.then, label %or.71.else

loop.exit.nat.70:                                 ; No predecessors!
  br label %loop.exit.70

loop.latch.70:                                    ; preds = %choice.exit165
  %step.val = load i64, ptr %loop.step.70, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.exit.70:                                     ; preds = %loop.exit.nat.70
  br label %choice.exit40

or.71.then:                                       ; preds = %loop.body.70
  br label %or.71.exit

or.71.else:                                       ; preds = %loop.body.70
  %var.load94 = load i64, ptr %var.hit, align 8
  %var.load95 = load i64, ptr %var.limit, align 8
  %cmptmp96 = icmp sgt i64 %var.load94, %var.load95
  br label %or.71.exit

or.71.exit:                                       ; preds = %or.71.else, %or.71.then
  %or.71.phi = phi i1 [ %cmptmp93, %or.71.then ], [ %cmptmp96, %or.71.else ]
  br i1 %or.71.phi, label %choice.then97, label %choice.exit98

choice.then97:                                    ; preds = %or.71.exit
  ret { i1, i64 } zeroinitializer

choice.exit98:                                    ; preds = %ret.dead, %or.71.exit
  %var.load99 = load ptr, ptr %var.s, align 8
  %s.read.len100 = getelementptr inbounds { i64, ptr }, ptr %var.load99, i32 0, i32 0
  %s.read.len101 = load i64, ptr %s.read.len100, align 8
  %s.read.len102 = and i64 %s.read.len101, 281474976710655
  %s.read.data103 = getelementptr inbounds { i64, ptr }, ptr %var.load99, i32 0, i32 1
  %s.read.data104 = load ptr, ptr %s.read.data103, align 8
  %var.load105 = load i64, ptr %var.hit, align 8
  %var.load106 = load i64, ptr %var.ln, align 8
  %addtmp107 = add i64 %var.load105, %var.load106
  %subtmp108 = sub i64 %addtmp107, 1
  %idx.neg109 = icmp slt i64 %subtmp108, 0
  br i1 %idx.neg109, label %idx_oob112, label %idx_big_check110

ret.dead:                                         ; No predecessors!
  br label %choice.exit98

idx_big_check110:                                 ; preds = %choice.exit98
  %idx.big113 = icmp sge i64 %subtmp108, %s.read.len102
  br i1 %idx.big113, label %idx_oob112, label %idx_ok111

idx_ok111:                                        ; preds = %abort.dead114, %idx_big_check110
  %s.byte.gep115 = getelementptr i8, ptr %s.read.data104, i64 %subtmp108
  %s.byte116 = load i8, ptr %s.byte.gep115, align 1
  %s.byte.val117 = zext i8 %s.byte116 to i64
  %var.load118 = load i64, ptr %var.last_b, align 8
  %cmptmp119 = icmp eq i64 %s.byte.val117, %var.load118
  br i1 %cmptmp119, label %and.72.then, label %and.72.else

idx_oob112:                                       ; preds = %idx_big_check110, %choice.exit98
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead114:                                    ; No predecessors!
  br label %idx_ok111

and.72.then:                                      ; preds = %idx_ok111
  %var.load120 = load i64, ptr %var.ln, align 8
  %cmptmp121 = icmp eq i64 %var.load120, 2
  br i1 %cmptmp121, label %or.73.then, label %or.73.else

and.72.else:                                      ; preds = %idx_ok111
  br label %and.72.exit

and.72.exit:                                      ; preds = %and.72.else, %or.73.exit
  %and.72.phi = phi i1 [ %or.73.phi, %or.73.exit ], [ %cmptmp119, %and.72.else ]
  br i1 %and.72.phi, label %choice.then164, label %choice.exit165

or.73.then:                                       ; preds = %and.72.then
  br label %or.73.exit

or.73.else:                                       ; preds = %and.72.then
  %var.load122 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 0
  %s.chk.len123 = load i64, ptr %s.chk.len, align 8
  %s.chk.len124 = and i64 %s.chk.len123, 281474976710655
  %s.read.len125 = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 0
  %s.read.len126 = load i64, ptr %s.read.len125, align 8
  %s.read.len127 = and i64 %s.read.len126, 281474976710655
  %s.read.data128 = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 1
  %s.read.data129 = load ptr, ptr %s.read.data128, align 8
  %var.load130 = load i64, ptr %var.hit, align 8
  %addtmp131 = add i64 %var.load130, 1
  %var.load132 = load i64, ptr %var.hit, align 8
  %var.load133 = load i64, ptr %var.ln, align 8
  %addtmp134 = add i64 %var.load132, %var.load133
  %subtmp135 = sub i64 %addtmp134, 1
  %start.is_neg = icmp slt i64 %addtmp131, 0
  %rel.start = add i64 %s.read.len127, %addtmp131
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp131
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len127
  %final.start = select i1 %start.gt.len, i64 %s.read.len127, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp135, 0
  %rel.end = add i64 %s.read.len127, %subtmp135
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp135
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len127
  %final.end = select i1 %end.gt.len, i64 %s.read.len127, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data129, i64 %final.start
  %var.load136 = load ptr, ptr %var.needle, align 8
  %s.chk.len137 = getelementptr inbounds { i64, ptr }, ptr %var.load136, i32 0, i32 0
  %s.chk.len138 = load i64, ptr %s.chk.len137, align 8
  %s.chk.len139 = and i64 %s.chk.len138, 281474976710655
  %s.read.len140 = getelementptr inbounds { i64, ptr }, ptr %var.load136, i32 0, i32 0
  %s.read.len141 = load i64, ptr %s.read.len140, align 8
  %s.read.len142 = and i64 %s.read.len141, 281474976710655
  %s.read.data143 = getelementptr inbounds { i64, ptr }, ptr %var.load136, i32 0, i32 1
  %s.read.data144 = load ptr, ptr %s.read.data143, align 8
  %var.load145 = load i64, ptr %var.ln, align 8
  %subtmp146 = sub i64 %var.load145, 1
  %rel.start147 = add i64 %s.read.len142, 1
  %norm.start148 = select i1 false, i64 %rel.start147, i64 1
  %start.lt.0149 = icmp slt i64 %norm.start148, 0
  %c.start.0150 = select i1 %start.lt.0149, i64 0, i64 %norm.start148
  %start.gt.len151 = icmp sgt i64 %c.start.0150, %s.read.len142
  %final.start152 = select i1 %start.gt.len151, i64 %s.read.len142, i64 %c.start.0150
  %end.is_neg153 = icmp slt i64 %subtmp146, 0
  %rel.end154 = add i64 %s.read.len142, %subtmp146
  %norm.end155 = select i1 %end.is_neg153, i64 %rel.end154, i64 %subtmp146
  %end.lt.0156 = icmp slt i64 %norm.end155, 0
  %c.end.0157 = select i1 %end.lt.0156, i64 0, i64 %norm.end155
  %end.gt.len158 = icmp sgt i64 %c.end.0157, %s.read.len142
  %final.end159 = select i1 %end.gt.len158, i64 %s.read.len142, i64 %c.end.0157
  %view.empty160 = icmp sle i64 %final.end159, %final.start152
  %view.len.sub161 = sub i64 %final.end159, %final.start152
  %view.len162 = select i1 %view.empty160, i64 0, i64 %view.len.sub161
  %view.data163 = getelementptr i8, ptr %s.read.data144, i64 %final.start152
  %eq.len = icmp eq i64 %view.len, %view.len162
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

or.73.exit:                                       ; preds = %str.eq.merge, %or.73.then
  %or.73.phi = phi i1 [ %cmptmp121, %or.73.then ], [ %str.eq.result, %str.eq.merge ]
  br label %and.72.exit

str.eq.then:                                      ; preds = %or.73.else
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %view.data163, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %or.73.else
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %or.73.exit

choice.then164:                                   ; preds = %and.72.exit
  %var.load166 = load i64, ptr %var.hit, align 8
  %ram.pay167 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load166, 1
  ret { i1, i64 } %ram.pay167

choice.exit165:                                   ; preds = %ret.dead168, %and.72.exit
  %var.load169 = load i64, ptr %var.hit, align 8
  %addtmp170 = add i64 %var.load169, 1
  store i64 %addtmp170, ptr %"var.pos'", align 8
  br label %loop.latch.70

ret.dead168:                                      ; No predecessors!
  br label %choice.exit165
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.needle, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  %active.gen10 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current11 = icmp eq i64 %str.tag7, %active.gen10
  %tag.fast.ok12 = or i1 %tag.immortal9, %tag.current11
  br i1 %tag.fast.ok12, label %str_ok8, label %tag.slow_check13

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok8:                                          ; preds = %tag.slow_check13, %str_ok
  store i64 %str.len.query6, ptr %var.ln, align 8
  %var.load14 = load i64, ptr %var.ln, align 8
  %cmptmp = icmp eq i64 %var.load14, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check13:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

choice.then:                                      ; preds = %str_ok8
  %var.load15 = load i64, ptr %var.ls, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load15, 1
  br label %choice.exit

choice.else:                                      ; preds = %str_ok8
  %var.load16 = load i64, ptr %var.ln, align 8
  %var.load17 = load i64, ptr %var.ls, align 8
  %cmptmp18 = icmp sgt i64 %var.load16, %var.load17
  br i1 %cmptmp18, label %choice.then19, label %choice.else20

choice.exit:                                      ; preds = %choice.exit21, %choice.then
  %choice.res72 = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %choice.res, %choice.exit21 ]
  ret { i1, i64 } %choice.res72

choice.then19:                                    ; preds = %choice.else
  br label %choice.exit21

choice.else20:                                    ; preds = %choice.else
  %var.load22 = load i64, ptr %var.ls, align 8
  %var.load23 = load i64, ptr %var.ln, align 8
  %subtmp = sub i64 %var.load22, %var.load23
  %addtmp = add i64 %subtmp, 1
  store i64 %addtmp, ptr %var.span, align 8
  %var.load24 = load ptr, ptr %var.needle, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 0
  %s.read.len25 = load i64, ptr %s.read.len, align 8
  %s.read.len26 = and i64 %s.read.len25, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load24, i32 0, i32 1
  %s.read.data27 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

choice.exit21:                                    ; preds = %loop.exit.74, %choice.then19
  %choice.res = phi { i1, i64 } [ zeroinitializer, %choice.then19 ], [ zeroinitializer, %loop.exit.74 ]
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.else20
  %idx.big = icmp sge i64 0, %s.read.len26
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data27, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.first_b, align 8
  %var.load28 = load i64, ptr %var.span, align 8
  store i64 0, ptr %loop.idx.74, align 8
  br label %loop.header.74

idx_oob:                                          ; preds = %idx_big_check, %choice.else20
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

loop.header.74:                                   ; preds = %loop.latch.74, %idx_ok
  %counter.load = load i64, ptr %loop.idx.74, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load28
  br i1 %loop.cond, label %loop.body.74, label %loop.exit.nat.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load29 = load i64, ptr %var.ls, align 8
  %var.load30 = load i64, ptr %var.ln, align 8
  %subtmp31 = sub i64 %var.load29, %var.load30
  %var.load32 = load i64, ptr %var.k, align 8
  %subtmp33 = sub i64 %subtmp31, %var.load32
  store i64 %subtmp33, ptr %var.i, align 8
  %var.load34 = load ptr, ptr %var.s, align 8
  %s.read.len35 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %s.read.len36 = load i64, ptr %s.read.len35, align 8
  %s.read.len37 = and i64 %s.read.len36, 281474976710655
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load40, 0
  br i1 %idx.neg, label %idx_oob43, label %idx_big_check41

loop.exit.nat.74:                                 ; preds = %loop.header.74
  br label %loop.exit.74

loop.latch.74:                                    ; preds = %choice.exit69
  %step.val = load i64, ptr %loop.step.74, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.74, align 8
  br label %loop.header.74

loop.exit.74:                                     ; preds = %loop.exit.nat.74
  br label %choice.exit21

idx_big_check41:                                  ; preds = %loop.body.74
  %idx.big44 = icmp sge i64 %var.load40, %s.read.len37
  br i1 %idx.big44, label %idx_oob43, label %idx_ok42

idx_ok42:                                         ; preds = %abort.dead45, %idx_big_check41
  %s.byte.gep46 = getelementptr i8, ptr %s.read.data39, i64 %var.load40
  %s.byte47 = load i8, ptr %s.byte.gep46, align 1
  %s.byte.val48 = zext i8 %s.byte47 to i64
  %var.load49 = load i64, ptr %var.first_b, align 8
  %cmptmp50 = icmp eq i64 %s.byte.val48, %var.load49
  br i1 %cmptmp50, label %and.75.then, label %and.75.else

idx_oob43:                                        ; preds = %idx_big_check41, %loop.body.74
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %idx_ok42

and.75.then:                                      ; preds = %idx_ok42
  %var.load51 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 0
  %s.chk.len52 = load i64, ptr %s.chk.len, align 8
  %s.chk.len53 = and i64 %s.chk.len52, 281474976710655
  %s.read.len54 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 0
  %s.read.len55 = load i64, ptr %s.read.len54, align 8
  %s.read.len56 = and i64 %s.read.len55, 281474976710655
  %s.read.data57 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 1
  %s.read.data58 = load ptr, ptr %s.read.data57, align 8
  %var.load59 = load i64, ptr %var.i, align 8
  %var.load60 = load i64, ptr %var.i, align 8
  %var.load61 = load i64, ptr %var.ln, align 8
  %addtmp62 = add i64 %var.load60, %var.load61
  %start.is_neg = icmp slt i64 %var.load59, 0
  %rel.start = add i64 %s.read.len56, %var.load59
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load59
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len56
  %final.start = select i1 %start.gt.len, i64 %s.read.len56, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp62, 0
  %rel.end = add i64 %s.read.len56, %addtmp62
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp62
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len56
  %final.end = select i1 %end.gt.len, i64 %s.read.len56, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data58, i64 %final.start
  %var.load63 = load ptr, ptr %var.needle, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 0
  %cmp.str64 = load i64, ptr %cmp.str, align 8
  %cmp.str65 = and i64 %cmp.str64, 281474976710655
  %cmp.str66 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 1
  %cmp.str67 = load ptr, ptr %cmp.str66, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str65
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.75.else:                                      ; preds = %idx_ok42
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %str.eq.merge
  %and.75.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp50, %and.75.else ]
  br i1 %and.75.phi, label %choice.then68, label %choice.exit69

str.eq.then:                                      ; preds = %and.75.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str67, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.75.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.75.exit

choice.then68:                                    ; preds = %and.75.exit
  %var.load70 = load i64, ptr %var.i, align 8
  %ram.pay71 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load70, 1
  ret { i1, i64 } %ram.pay71

choice.exit69:                                    ; preds = %ret.dead, %and.75.exit
  br label %loop.latch.74

ret.dead:                                         ; No predecessors!
  br label %choice.exit69
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
  %var._27 = alloca i64, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.ln, align 8
  %var.load3 = load i64, ptr %var.ln, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

choice.exit:                                      ; preds = %loop.exit.76, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load33, %loop.exit.76 ]
  ret i64 %choice.res

str_ok9:                                          ; preds = %tag.slow_check14, %choice.else
  store i64 %str.len.query7, ptr %var.ls, align 8
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.76, align 8
  br label %loop.header.76

tag.slow_check14:                                 ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

loop.header.76:                                   ; preds = %loop.latch.76, %str_ok9
  %counter.load = load i64, ptr %loop.idx.76, align 8
  br label %loop.body.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load15 = load i64, ptr %"var.pos'", align 8
  %var.load16 = load i64, ptr %var.ln, align 8
  %addtmp = add i64 %var.load15, %var.load16
  %var.load17 = load i64, ptr %var.ls, align 8
  %cmptmp18 = icmp sgt i64 %addtmp, %var.load17
  br i1 %cmptmp18, label %choice.then19, label %choice.exit20

loop.exit.nat.76:                                 ; No predecessors!
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit26
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %choice.else25, %choice.then19, %loop.exit.nat.76
  %var.load33 = load i64, ptr %"var.n'", align 8
  br label %choice.exit

choice.then19:                                    ; preds = %loop.body.76
  br label %loop.exit.76

choice.exit20:                                    ; preds = %loop.body.76
  %var.load21 = load ptr, ptr %var.s, align 8
  %var.load22 = load ptr, ptr %var.needle, align 8
  %var.load23 = load i64, ptr %"var.pos'", align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load21, ptr %var.load22, i64 %var.load23)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %choice.exit20
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._27, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load28 = load i64, ptr %"var.n'", align 8
  %addtmp29 = add i64 %var.load28, 1
  store i64 %addtmp29, ptr %"var.n'", align 8
  %var.load30 = load i64, ptr %var.idx, align 8
  %var.load31 = load i64, ptr %var.ln, align 8
  %addtmp32 = add i64 %var.load30, %var.load31
  store i64 %addtmp32, ptr %"var.pos'", align 8
  br label %choice.exit26

choice.else25:                                    ; preds = %choice.exit20
  br label %loop.exit.76

choice.exit26:                                    ; preds = %choice.then24
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.77, align 8
  br label %loop.header.77

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %var.load10 = load i64, ptr %"var.i'", align 8
  %cmptmp = icmp eq i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then11, label %choice.else12

idx_big_check:                                    ; preds = %loop.body.77
  %idx.big = icmp sge i64 %var.load8, %s.read.len6
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.77
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load9 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load9, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.77

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.77

choice.then11:                                    ; preds = %loop.exit.77
  %var.load14 = load ptr, ptr %var.s, align 8
  br label %choice.exit13

choice.else12:                                    ; preds = %loop.exit.77
  %var.load15 = load ptr, ptr %var.s, align 8
  %s.read.len16 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %s.read.len17 = load i64, ptr %s.read.len16, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %s.read.data19 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data19, align 8
  %var.load21 = load i64, ptr %"var.i'", align 8
  %var.load22 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load21, 0
  %rel.start = add i64 %s.read.len18, %var.load21
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load21
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len18
  %final.start = select i1 %start.gt.len, i64 %s.read.len18, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load22, 0
  %rel.end = add i64 %s.read.len18, %var.load22
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load22
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len18
  %final.end = select i1 %end.gt.len, i64 %s.read.len18, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data20, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.else12, %choice.then11
  %choice.res = phi ptr [ %var.load14, %choice.then11 ], [ %str.view, %choice.else12 ]
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 %var.load3, ptr %"var.end'", align 8
  %var.load4 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.78, align 8
  br label %loop.header.78

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %var.load14 = load i64, ptr %"var.end'", align 8
  %var.load15 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load14, %var.load15
  br i1 %cmptmp, label %choice.then16, label %choice.else17

idx_big_check:                                    ; preds = %loop.body.78
  %idx.big = icmp sge i64 %var.load12, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %loop.body.78
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then:                                      ; preds = %idx_ok
  %var.load13 = load i64, ptr %var.idx, align 8
  store i64 %var.load13, ptr %"var.end'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.78

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.78

choice.then16:                                    ; preds = %loop.exit.78
  %var.load19 = load ptr, ptr %var.s, align 8
  br label %choice.exit18

choice.else17:                                    ; preds = %loop.exit.78
  %var.load20 = load ptr, ptr %var.s, align 8
  %s.read.len21 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 0
  %s.read.len22 = load i64, ptr %s.read.len21, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %s.read.data24 = getelementptr inbounds { i64, ptr }, ptr %var.load20, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data24, align 8
  %var.load26 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len23, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len23
  %final.start = select i1 %start.gt.len, i64 %s.read.len23, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load26, 0
  %rel.end = add i64 %s.read.len23, %var.load26
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load26
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len23
  %final.end = select i1 %end.gt.len, i64 %s.read.len23, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data25, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else17, %choice.then16
  %choice.res = phi ptr [ %var.load19, %choice.then16 ], [ %str.view, %choice.else17 ]
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %entry
  %var.load20 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok14
  %choice.res = phi ptr [ %str.view, %str_ok14 ], [ %var.load20, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %var.load9 = load ptr, ptr %var.s, align 8
  %str.len.query10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag13 = lshr i64 %str.len.query11, 48
  %tag.immortal15 = icmp eq i64 %str.tag13, 0
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current17 = icmp eq i64 %str.tag13, %active.gen16
  %tag.fast.ok18 = or i1 %tag.immortal15, %tag.current17
  br i1 %tag.fast.ok18, label %str_ok14, label %tag.slow_check19

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok14:                                         ; preds = %tag.slow_check19, %str_ok
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

tag.slow_check19:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag13)
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %entry
  %var.load20 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok14
  %choice.res = phi ptr [ %str.view, %str_ok14 ], [ %var.load20, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %var.load9 = load ptr, ptr %var.suffix, align 8
  %str.len.query10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %str.tag13 = lshr i64 %str.len.query11, 48
  %tag.immortal15 = icmp eq i64 %str.tag13, 0
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current17 = icmp eq i64 %str.tag13, %active.gen16
  %tag.fast.ok18 = or i1 %tag.immortal15, %tag.current17
  br i1 %tag.fast.ok18, label %str_ok14, label %tag.slow_check19

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok14:                                         ; preds = %tag.slow_check19, %str_ok
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

tag.slow_check19:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag13)
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %str_ok22
  %choice.res = phi ptr [ %rec.alloc, %str_ok22 ], [ null, %choice.else ]
  ret ptr %choice.res

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %addtmp = add i64 %var.load13, %str.len.query16
  %var.load17 = load ptr, ptr %var.s, align 8
  %str.len.query18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %str.len.query19 = load i64, ptr %str.len.query18, align 8
  %str.len.query20 = and i64 %str.len.query19, 281474976710655
  %str.tag21 = lshr i64 %str.len.query19, 48
  %tag.immortal23 = icmp eq i64 %str.tag21, 0
  %active.gen24 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current25 = icmp eq i64 %str.tag21, %active.gen24
  %tag.fast.ok26 = or i1 %tag.immortal23, %tag.current25
  br i1 %tag.fast.ok26, label %str_ok22, label %tag.slow_check27

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok22:                                         ; preds = %tag.slow_check27, %str_ok
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start28 = add i64 %s.read.len10, %addtmp
  %norm.start29 = select i1 %start.is_neg, i64 %rel.start28, i64 %addtmp
  %start.lt.030 = icmp slt i64 %norm.start29, 0
  %c.start.031 = select i1 %start.lt.030, i64 0, i64 %norm.start29
  %start.gt.len32 = icmp sgt i64 %c.start.031, %s.read.len10
  %final.start33 = select i1 %start.gt.len32, i64 %s.read.len10, i64 %c.start.031
  %end.is_neg34 = icmp slt i64 %str.len.query20, 0
  %rel.end35 = add i64 %s.read.len10, %str.len.query20
  %norm.end36 = select i1 %end.is_neg34, i64 %rel.end35, i64 %str.len.query20
  %end.lt.037 = icmp slt i64 %norm.end36, 0
  %c.end.038 = select i1 %end.lt.037, i64 0, i64 %norm.end36
  %end.gt.len39 = icmp sgt i64 %c.end.038, %s.read.len10
  %final.end40 = select i1 %end.gt.len39, i64 %s.read.len10, i64 %c.end.038
  %view.empty41 = icmp sle i64 %final.end40, %final.start33
  %view.len.sub42 = sub i64 %final.end40, %final.start33
  %view.len43 = select i1 %view.empty41, i64 0, i64 %view.len.sub42
  %view.data44 = getelementptr i8, ptr %s.read.data12, i64 %final.start33
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  %str.build.len.gep47 = getelementptr inbounds { i64, ptr }, ptr %str.view46, i32 0, i32 0
  store i64 %view.len43, ptr %str.build.len.gep47, align 8
  %str.build.data.gep48 = getelementptr inbounds { i64, ptr }, ptr %str.view46, i32 0, i32 1
  store ptr %view.data44, ptr %str.build.data.gep48, align 8
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %str.view, ptr %rec.fld, align 8
  %rec.fld50 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view46, ptr %rec.fld50, align 8
  br label %choice.exit

tag.slow_check27:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag21)
  br label %str_ok22
}

define ptr @"str::split"(ptr %0, ptr %1) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._58 = alloca i64, align 8
  %var._51 = alloca i64, align 8
  %var._i50 = alloca i64, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query3, ptr %var.ls, align 8
  %var.load4 = load ptr, ptr %var.sep, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %str.tag8 = lshr i64 %str.len.query6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok9:                                          ; preds = %tag.slow_check14, %str_ok
  store i64 %str.len.query7, ptr %var.lsep, align 8
  %var.load15 = load i64, ptr %var.lsep, align 8
  %cmptmp = icmp eq i64 %var.load15, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check14:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

choice.then:                                      ; preds = %str_ok9
  %var.load16 = load i64, ptr %var.ls, align 8
  store i64 0, ptr %loop.idx.80, align 8
  br label %loop.header.80

choice.else:                                      ; preds = %str_ok9
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

choice.exit:                                      ; preds = %a.after184, %a.after39
  %choice.res = phi ptr [ %a.load247, %a.after39 ], [ %a.load2192, %a.after184 ]
  ret ptr %choice.res

loop.header.80:                                   ; preds = %loop.latch.80, %choice.then
  %counter.load = load i64, ptr %loop.idx.80, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load16
  br i1 %loop.cond, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.80, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load17 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %var.load21 = load i64, ptr %var.i, align 8
  %var.load22 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load22, 1
  %start.is_neg = icmp slt i64 %var.load21, 0
  %rel.start = add i64 %s.read.len19, %var.load21
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load21
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len19
  %final.start = select i1 %start.gt.len, i64 %s.read.len19, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %s.read.len19, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len19
  %final.end = select i1 %end.gt.len, i64 %s.read.len19, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data20, i64 %final.start
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
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
  %var.load35 = load ptr, ptr %var.out, align 8
  %a.load36 = load ptr, ptr %var.out, align 8
  %a.null37 = icmp eq ptr %a.load36, null
  br i1 %a.null37, label %a.create38, label %a.after39

a.create:                                         ; preds = %loop.body.80
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create25 = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 24)
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 128)
  %a.len.gep28 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 0
  store i64 0, ptr %a.len.gep28, align 8
  %a.data.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 1
  store ptr %a.buf27, ptr %a.data.gep29, align 8
  %a.cap.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create25, i32 0, i32 2
  store i64 16, ptr %a.cap.gep30, align 8
  store ptr %a.create25, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.80
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len31 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap32 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len31, %a.cap32
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data33 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len34 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data33, i64 %a.cur.len34
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len34, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.80

a.create38:                                       ; preds = %loop.exit.80
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 24)
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 128)
  %a.len.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create41, i32 0, i32 0
  store i64 0, ptr %a.len.gep44, align 8
  %a.data.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create41, i32 0, i32 1
  store ptr %a.buf43, ptr %a.data.gep45, align 8
  %a.cap.gep46 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create41, i32 0, i32 2
  store i64 16, ptr %a.cap.gep46, align 8
  store ptr %a.create41, ptr %var.out, align 8
  br label %a.after39

a.after39:                                        ; preds = %a.create38, %loop.exit.80
  %a.load247 = load ptr, ptr %var.out, align 8
  br label %choice.exit

loop.header.81:                                   ; preds = %loop.latch.81, %choice.else
  %counter.load48 = load i64, ptr %loop.idx.81, align 8
  br label %loop.body.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i49 = sub i64 %counter.load48, 0
  store i64 1, ptr %loop.step.81, align 8
  store i64 %loop.rel.i49, ptr %var._i50, align 8
  store i64 %counter.load48, ptr %var._51, align 8
  %var.load52 = load ptr, ptr %var.s, align 8
  %var.load53 = load ptr, ptr %var.sep, align 8
  %var.load54 = load i64, ptr %"var.pos'", align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load52, ptr %var.load53, i64 %var.load54)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then55, label %choice.else56

loop.exit.nat.81:                                 ; No predecessors!
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit57
  %step.val178 = load i64, ptr %loop.step.81, align 8
  %loop.next179 = add i64 %counter.load48, %step.val178
  store i64 %loop.next179, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %a.store164, %loop.exit.nat.81
  %var.load180 = load ptr, ptr %var.out, align 8
  %a.load181 = load ptr, ptr %var.out, align 8
  %a.null182 = icmp eq ptr %a.load181, null
  br i1 %a.null182, label %a.create183, label %a.after184

choice.then55:                                    ; preds = %loop.body.81
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._58, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load59 = load ptr, ptr %var.s, align 8
  %s.read.len60 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 0
  %s.read.len61 = load i64, ptr %s.read.len60, align 8
  %s.read.len62 = and i64 %s.read.len61, 281474976710655
  %s.read.data63 = getelementptr inbounds { i64, ptr }, ptr %var.load59, i32 0, i32 1
  %s.read.data64 = load ptr, ptr %s.read.data63, align 8
  %var.load65 = load i64, ptr %"var.pos'", align 8
  %var.load66 = load i64, ptr %var.idx, align 8
  %start.is_neg67 = icmp slt i64 %var.load65, 0
  %rel.start68 = add i64 %s.read.len62, %var.load65
  %norm.start69 = select i1 %start.is_neg67, i64 %rel.start68, i64 %var.load65
  %start.lt.070 = icmp slt i64 %norm.start69, 0
  %c.start.071 = select i1 %start.lt.070, i64 0, i64 %norm.start69
  %start.gt.len72 = icmp sgt i64 %c.start.071, %s.read.len62
  %final.start73 = select i1 %start.gt.len72, i64 %s.read.len62, i64 %c.start.071
  %end.is_neg74 = icmp slt i64 %var.load66, 0
  %rel.end75 = add i64 %s.read.len62, %var.load66
  %norm.end76 = select i1 %end.is_neg74, i64 %rel.end75, i64 %var.load66
  %end.lt.077 = icmp slt i64 %norm.end76, 0
  %c.end.078 = select i1 %end.lt.077, i64 0, i64 %norm.end76
  %end.gt.len79 = icmp sgt i64 %c.end.078, %s.read.len62
  %final.end80 = select i1 %end.gt.len79, i64 %s.read.len62, i64 %c.end.078
  %view.empty81 = icmp sle i64 %final.end80, %final.start73
  %view.len.sub82 = sub i64 %final.end80, %final.start73
  %view.len83 = select i1 %view.empty81, i64 0, i64 %view.len.sub82
  %view.data84 = getelementptr i8, ptr %s.read.data64, i64 %final.start73
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 16)
  %str.build.len.gep87 = getelementptr inbounds { i64, ptr }, ptr %str.view86, i32 0, i32 0
  store i64 %view.len83, ptr %str.build.len.gep87, align 8
  %str.build.data.gep88 = getelementptr inbounds { i64, ptr }, ptr %str.view86, i32 0, i32 1
  store ptr %view.data84, ptr %str.build.data.gep88, align 8
  %a.load89 = load ptr, ptr %var.out, align 8
  %a.null90 = icmp eq ptr %a.load89, null
  br i1 %a.null90, label %a.create91, label %a.after92

choice.else56:                                    ; preds = %loop.body.81
  %var.load120 = load ptr, ptr %var.s, align 8
  %s.read.len121 = getelementptr inbounds { i64, ptr }, ptr %var.load120, i32 0, i32 0
  %s.read.len122 = load i64, ptr %s.read.len121, align 8
  %s.read.len123 = and i64 %s.read.len122, 281474976710655
  %s.read.data124 = getelementptr inbounds { i64, ptr }, ptr %var.load120, i32 0, i32 1
  %s.read.data125 = load ptr, ptr %s.read.data124, align 8
  %var.load126 = load i64, ptr %"var.pos'", align 8
  %var.load127 = load i64, ptr %var.ls, align 8
  %start.is_neg128 = icmp slt i64 %var.load126, 0
  %rel.start129 = add i64 %s.read.len123, %var.load126
  %norm.start130 = select i1 %start.is_neg128, i64 %rel.start129, i64 %var.load126
  %start.lt.0131 = icmp slt i64 %norm.start130, 0
  %c.start.0132 = select i1 %start.lt.0131, i64 0, i64 %norm.start130
  %start.gt.len133 = icmp sgt i64 %c.start.0132, %s.read.len123
  %final.start134 = select i1 %start.gt.len133, i64 %s.read.len123, i64 %c.start.0132
  %end.is_neg135 = icmp slt i64 %var.load127, 0
  %rel.end136 = add i64 %s.read.len123, %var.load127
  %norm.end137 = select i1 %end.is_neg135, i64 %rel.end136, i64 %var.load127
  %end.lt.0138 = icmp slt i64 %norm.end137, 0
  %c.end.0139 = select i1 %end.lt.0138, i64 0, i64 %norm.end137
  %end.gt.len140 = icmp sgt i64 %c.end.0139, %s.read.len123
  %final.end141 = select i1 %end.gt.len140, i64 %s.read.len123, i64 %c.end.0139
  %view.empty142 = icmp sle i64 %final.end141, %final.start134
  %view.len.sub143 = sub i64 %final.end141, %final.start134
  %view.len144 = select i1 %view.empty142, i64 0, i64 %view.len.sub143
  %view.data145 = getelementptr i8, ptr %s.read.data125, i64 %final.start134
  %arena.cur146 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view147 = call ptr @dva_arena_alloc(ptr %arena.cur146, i64 16)
  %str.build.len.gep148 = getelementptr inbounds { i64, ptr }, ptr %str.view147, i32 0, i32 0
  store i64 %view.len144, ptr %str.build.len.gep148, align 8
  %str.build.data.gep149 = getelementptr inbounds { i64, ptr }, ptr %str.view147, i32 0, i32 1
  store ptr %view.data145, ptr %str.build.data.gep149, align 8
  %a.load150 = load ptr, ptr %var.out, align 8
  %a.null151 = icmp eq ptr %a.load150, null
  br i1 %a.null151, label %a.create152, label %a.after153

choice.exit57:                                    ; preds = %a.store103
  br label %loop.latch.81

a.create91:                                       ; preds = %choice.then55
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 24)
  %arena.cur95 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 128)
  %a.len.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 0
  store i64 0, ptr %a.len.gep97, align 8
  %a.data.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 1
  store ptr %a.buf96, ptr %a.data.gep98, align 8
  %a.cap.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 2
  store i64 16, ptr %a.cap.gep99, align 8
  store ptr %a.create94, ptr %var.out, align 8
  br label %a.after92

a.after92:                                        ; preds = %a.create91, %choice.then55
  %a.load2100 = load ptr, ptr %var.out, align 8
  br label %a.check101

a.check101:                                       ; preds = %a.after92
  %a.len104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2100, i32 0, i32 0
  %a.len105 = load i64, ptr %a.len104, align 8
  %a.cap106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2100, i32 0, i32 2
  %a.cap107 = load i64, ptr %a.cap106, align 8
  %a.needs.grow108 = icmp eq i64 %a.len105, %a.cap107
  br i1 %a.needs.grow108, label %a.grow102, label %a.store103

a.grow102:                                        ; preds = %a.check101
  call void @dva_array_grow(ptr %a.load2100)
  br label %a.store103

a.store103:                                       ; preds = %a.grow102, %a.check101
  %a.cur.data109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2100, i32 0, i32 1
  %a.cur.data110 = load ptr, ptr %a.cur.data109, align 8
  %a.cur.len111 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2100, i32 0, i32 0
  %a.cur.len112 = load i64, ptr %a.cur.len111, align 8
  %a.elem.gep113 = getelementptr i64, ptr %a.cur.data110, i64 %a.cur.len112
  %slot.p2i114 = ptrtoint ptr %str.view86 to i64
  store i64 %slot.p2i114, ptr %a.elem.gep113, align 8
  %a.next.len115 = add i64 %a.cur.len112, 1
  %b.len.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2100, i32 0, i32 0
  store i64 %a.next.len115, ptr %b.len.gep116, align 8
  %var.load117 = load i64, ptr %var.idx, align 8
  %var.load118 = load i64, ptr %var.lsep, align 8
  %addtmp119 = add i64 %var.load117, %var.load118
  store i64 %addtmp119, ptr %"var.pos'", align 8
  br label %choice.exit57

a.create152:                                      ; preds = %choice.else56
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 24)
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 128)
  %a.len.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create155, i32 0, i32 0
  store i64 0, ptr %a.len.gep158, align 8
  %a.data.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create155, i32 0, i32 1
  store ptr %a.buf157, ptr %a.data.gep159, align 8
  %a.cap.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create155, i32 0, i32 2
  store i64 16, ptr %a.cap.gep160, align 8
  store ptr %a.create155, ptr %var.out, align 8
  br label %a.after153

a.after153:                                       ; preds = %a.create152, %choice.else56
  %a.load2161 = load ptr, ptr %var.out, align 8
  br label %a.check162

a.check162:                                       ; preds = %a.after153
  %a.len165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2161, i32 0, i32 0
  %a.len166 = load i64, ptr %a.len165, align 8
  %a.cap167 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2161, i32 0, i32 2
  %a.cap168 = load i64, ptr %a.cap167, align 8
  %a.needs.grow169 = icmp eq i64 %a.len166, %a.cap168
  br i1 %a.needs.grow169, label %a.grow163, label %a.store164

a.grow163:                                        ; preds = %a.check162
  call void @dva_array_grow(ptr %a.load2161)
  br label %a.store164

a.store164:                                       ; preds = %a.grow163, %a.check162
  %a.cur.data170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2161, i32 0, i32 1
  %a.cur.data171 = load ptr, ptr %a.cur.data170, align 8
  %a.cur.len172 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2161, i32 0, i32 0
  %a.cur.len173 = load i64, ptr %a.cur.len172, align 8
  %a.elem.gep174 = getelementptr i64, ptr %a.cur.data171, i64 %a.cur.len173
  %slot.p2i175 = ptrtoint ptr %str.view147 to i64
  store i64 %slot.p2i175, ptr %a.elem.gep174, align 8
  %a.next.len176 = add i64 %a.cur.len173, 1
  %b.len.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2161, i32 0, i32 0
  store i64 %a.next.len176, ptr %b.len.gep177, align 8
  br label %loop.exit.81

a.create183:                                      ; preds = %loop.exit.81
  %arena.cur185 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 24)
  %arena.cur187 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 128)
  %a.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 0
  store i64 0, ptr %a.len.gep189, align 8
  %a.data.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 1
  store ptr %a.buf188, ptr %a.data.gep190, align 8
  %a.cap.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create186, i32 0, i32 2
  store i64 16, ptr %a.cap.gep191, align 8
  store ptr %a.create186, ptr %var.out, align 8
  br label %a.after184

a.after184:                                       ; preds = %a.create183, %loop.exit.81
  %a.load2192 = load ptr, ptr %var.out, align 8
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

define ptr @"str::lines"(ptr %0) #0 {
entry:
  %var.end92 = alloca i64, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query3, ptr %var.ls, align 8
  %var.load4 = load i64, ptr %var.ls, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %var.load5 = load ptr, ptr %var.out, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %str_ok
  store i64 0, ptr %"var.start'", align 8
  store i64 0, ptr %loop.idx.82, align 8
  br label %loop.header.82

a.create:                                         ; preds = %choice.then
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 24)
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf9 = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 128)
  %a.len.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 0
  store i64 0, ptr %a.len.gep10, align 8
  %a.data.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 1
  store ptr %a.buf9, ptr %a.data.gep11, align 8
  %a.cap.gep12 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create7, i32 0, i32 2
  store i64 16, ptr %a.cap.gep12, align 8
  store ptr %a.create7, ptr %var.out, align 8
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
  %var.load13 = load i64, ptr %"var.start'", align 8
  %var.load14 = load i64, ptr %var.ls, align 8
  %cmptmp15 = icmp sge i64 %var.load13, %var.load14
  br i1 %cmptmp15, label %choice.then16, label %choice.exit17

loop.exit.nat.82:                                 ; No predecessors!
  br label %loop.exit.82

loop.latch.82:                                    ; preds = %choice.exit23
  %step.val = load i64, ptr %loop.step.82, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.82, align 8
  br label %loop.header.82

loop.exit.82:                                     ; preds = %a.store, %choice.then16, %loop.exit.nat.82
  %var.load152 = load ptr, ptr %var.out, align 8
  %a.load153 = load ptr, ptr %var.out, align 8
  %a.null154 = icmp eq ptr %a.load153, null
  br i1 %a.null154, label %a.create155, label %a.after156

choice.then16:                                    ; preds = %loop.body.82
  br label %loop.exit.82

choice.exit17:                                    ; preds = %loop.body.82
  %var.load18 = load ptr, ptr %var.s, align 8
  %var.load19 = load i64, ptr %"var.start'", align 8
  %call.res = call i64 @"str::#find_byte_from"(ptr %var.load18, i64 10, i64 %var.load19)
  store i64 %call.res, ptr %var.pos, align 8
  %var.load20 = load i64, ptr %var.pos, align 8
  %cmptmp21 = icmp slt i64 %var.load20, 0
  br i1 %cmptmp21, label %choice.then22, label %choice.else

choice.then22:                                    ; preds = %choice.exit17
  %var.load24 = load i64, ptr %var.ls, align 8
  %var.load25 = load i64, ptr %"var.start'", align 8
  %cmptmp26 = icmp sgt i64 %var.load24, %var.load25
  br i1 %cmptmp26, label %and.83.then, label %and.83.else

choice.else:                                      ; preds = %choice.exit17
  %var.load64 = load i64, ptr %var.pos, align 8
  %var.load65 = load i64, ptr %"var.start'", align 8
  %cmptmp66 = icmp sgt i64 %var.load64, %var.load65
  br i1 %cmptmp66, label %and.84.then, label %and.84.else

choice.exit23:                                    ; preds = %a.store137
  br label %loop.latch.82

and.83.then:                                      ; preds = %choice.then22
  %var.load27 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  %var.load31 = load i64, ptr %var.ls, align 8
  %subtmp = sub i64 %var.load31, 1
  %idx.neg = icmp slt i64 %subtmp, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.83.else:                                      ; preds = %choice.then22
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %idx_ok
  %and.83.phi = phi i1 [ %cmptmp32, %idx_ok ], [ %cmptmp26, %and.83.else ]
  br i1 %and.83.phi, label %choice.then33, label %choice.else34

idx_big_check:                                    ; preds = %and.83.then
  %idx.big = icmp sge i64 %subtmp, %s.read.len29
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data30, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp32 = icmp eq i64 %s.byte.val, 13
  br label %and.83.exit

idx_oob:                                          ; preds = %idx_big_check, %and.83.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then33:                                    ; preds = %and.83.exit
  %var.load36 = load i64, ptr %var.ls, align 8
  %subtmp37 = sub i64 %var.load36, 1
  br label %choice.exit35

choice.else34:                                    ; preds = %and.83.exit
  %var.load38 = load i64, ptr %var.ls, align 8
  br label %choice.exit35

choice.exit35:                                    ; preds = %choice.else34, %choice.then33
  %choice.res = phi i64 [ %subtmp37, %choice.then33 ], [ %var.load38, %choice.else34 ]
  store i64 %choice.res, ptr %var.end, align 8
  %var.load39 = load ptr, ptr %var.s, align 8
  %s.read.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 0
  %s.read.len41 = load i64, ptr %s.read.len40, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %s.read.data43 = getelementptr inbounds { i64, ptr }, ptr %var.load39, i32 0, i32 1
  %s.read.data44 = load ptr, ptr %s.read.data43, align 8
  %var.load45 = load i64, ptr %"var.start'", align 8
  %var.load46 = load i64, ptr %var.end, align 8
  %start.is_neg = icmp slt i64 %var.load45, 0
  %rel.start = add i64 %s.read.len42, %var.load45
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load45
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len42
  %final.start = select i1 %start.gt.len, i64 %s.read.len42, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load46, 0
  %rel.end = add i64 %s.read.len42, %var.load46
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load46
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len42
  %final.end = select i1 %end.gt.len, i64 %s.read.len42, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data44, i64 %final.start
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.load48 = load ptr, ptr %var.out, align 8
  %a.null49 = icmp eq ptr %a.load48, null
  br i1 %a.null49, label %a.create50, label %a.after51

a.create50:                                       ; preds = %choice.exit35
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  %a.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 0
  store i64 0, ptr %a.len.gep56, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  store ptr %a.create53, ptr %var.out, align 8
  br label %a.after51

a.after51:                                        ; preds = %a.create50, %choice.exit35
  %a.load259 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after51
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 0
  %a.len60 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 2
  %a.cap61 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len60, %a.cap61
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load259)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 1
  %a.cur.data62 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 0
  %a.cur.len63 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data62, i64 %a.cur.len63
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len63, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load259, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.exit.82

and.84.then:                                      ; preds = %choice.else
  %var.load67 = load ptr, ptr %var.s, align 8
  %s.read.len68 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 0
  %s.read.len69 = load i64, ptr %s.read.len68, align 8
  %s.read.len70 = and i64 %s.read.len69, 281474976710655
  %s.read.data71 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 1
  %s.read.data72 = load ptr, ptr %s.read.data71, align 8
  %var.load73 = load i64, ptr %var.pos, align 8
  %subtmp74 = sub i64 %var.load73, 1
  %idx.neg75 = icmp slt i64 %subtmp74, 0
  br i1 %idx.neg75, label %idx_oob78, label %idx_big_check76

and.84.else:                                      ; preds = %choice.else
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %idx_ok77
  %and.84.phi = phi i1 [ %cmptmp84, %idx_ok77 ], [ %cmptmp66, %and.84.else ]
  br i1 %and.84.phi, label %choice.then85, label %choice.else86

idx_big_check76:                                  ; preds = %and.84.then
  %idx.big79 = icmp sge i64 %subtmp74, %s.read.len70
  br i1 %idx.big79, label %idx_oob78, label %idx_ok77

idx_ok77:                                         ; preds = %abort.dead80, %idx_big_check76
  %s.byte.gep81 = getelementptr i8, ptr %s.read.data72, i64 %subtmp74
  %s.byte82 = load i8, ptr %s.byte.gep81, align 1
  %s.byte.val83 = zext i8 %s.byte82 to i64
  %cmptmp84 = icmp eq i64 %s.byte.val83, 13
  br label %and.84.exit

idx_oob78:                                        ; preds = %idx_big_check76, %and.84.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %idx_ok77

choice.then85:                                    ; preds = %and.84.exit
  %var.load88 = load i64, ptr %var.pos, align 8
  %subtmp89 = sub i64 %var.load88, 1
  br label %choice.exit87

choice.else86:                                    ; preds = %and.84.exit
  %var.load90 = load i64, ptr %var.pos, align 8
  br label %choice.exit87

choice.exit87:                                    ; preds = %choice.else86, %choice.then85
  %choice.res91 = phi i64 [ %subtmp89, %choice.then85 ], [ %var.load90, %choice.else86 ]
  store i64 %choice.res91, ptr %var.end92, align 8
  %var.load93 = load ptr, ptr %var.s, align 8
  %s.read.len94 = getelementptr inbounds { i64, ptr }, ptr %var.load93, i32 0, i32 0
  %s.read.len95 = load i64, ptr %s.read.len94, align 8
  %s.read.len96 = and i64 %s.read.len95, 281474976710655
  %s.read.data97 = getelementptr inbounds { i64, ptr }, ptr %var.load93, i32 0, i32 1
  %s.read.data98 = load ptr, ptr %s.read.data97, align 8
  %var.load99 = load i64, ptr %"var.start'", align 8
  %var.load100 = load i64, ptr %var.end92, align 8
  %start.is_neg101 = icmp slt i64 %var.load99, 0
  %rel.start102 = add i64 %s.read.len96, %var.load99
  %norm.start103 = select i1 %start.is_neg101, i64 %rel.start102, i64 %var.load99
  %start.lt.0104 = icmp slt i64 %norm.start103, 0
  %c.start.0105 = select i1 %start.lt.0104, i64 0, i64 %norm.start103
  %start.gt.len106 = icmp sgt i64 %c.start.0105, %s.read.len96
  %final.start107 = select i1 %start.gt.len106, i64 %s.read.len96, i64 %c.start.0105
  %end.is_neg108 = icmp slt i64 %var.load100, 0
  %rel.end109 = add i64 %s.read.len96, %var.load100
  %norm.end110 = select i1 %end.is_neg108, i64 %rel.end109, i64 %var.load100
  %end.lt.0111 = icmp slt i64 %norm.end110, 0
  %c.end.0112 = select i1 %end.lt.0111, i64 0, i64 %norm.end110
  %end.gt.len113 = icmp sgt i64 %c.end.0112, %s.read.len96
  %final.end114 = select i1 %end.gt.len113, i64 %s.read.len96, i64 %c.end.0112
  %view.empty115 = icmp sle i64 %final.end114, %final.start107
  %view.len.sub116 = sub i64 %final.end114, %final.start107
  %view.len117 = select i1 %view.empty115, i64 0, i64 %view.len.sub116
  %view.data118 = getelementptr i8, ptr %s.read.data98, i64 %final.start107
  %arena.cur119 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view120 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 16)
  %str.build.len.gep121 = getelementptr inbounds { i64, ptr }, ptr %str.view120, i32 0, i32 0
  store i64 %view.len117, ptr %str.build.len.gep121, align 8
  %str.build.data.gep122 = getelementptr inbounds { i64, ptr }, ptr %str.view120, i32 0, i32 1
  store ptr %view.data118, ptr %str.build.data.gep122, align 8
  %a.load123 = load ptr, ptr %var.out, align 8
  %a.null124 = icmp eq ptr %a.load123, null
  br i1 %a.null124, label %a.create125, label %a.after126

a.create125:                                      ; preds = %choice.exit87
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 24)
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 128)
  %a.len.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 0
  store i64 0, ptr %a.len.gep131, align 8
  %a.data.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 1
  store ptr %a.buf130, ptr %a.data.gep132, align 8
  %a.cap.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create128, i32 0, i32 2
  store i64 16, ptr %a.cap.gep133, align 8
  store ptr %a.create128, ptr %var.out, align 8
  br label %a.after126

a.after126:                                       ; preds = %a.create125, %choice.exit87
  %a.load2134 = load ptr, ptr %var.out, align 8
  br label %a.check135

a.check135:                                       ; preds = %a.after126
  %a.len138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 0
  %a.len139 = load i64, ptr %a.len138, align 8
  %a.cap140 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 2
  %a.cap141 = load i64, ptr %a.cap140, align 8
  %a.needs.grow142 = icmp eq i64 %a.len139, %a.cap141
  br i1 %a.needs.grow142, label %a.grow136, label %a.store137

a.grow136:                                        ; preds = %a.check135
  call void @dva_array_grow(ptr %a.load2134)
  br label %a.store137

a.store137:                                       ; preds = %a.grow136, %a.check135
  %a.cur.data143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 1
  %a.cur.data144 = load ptr, ptr %a.cur.data143, align 8
  %a.cur.len145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 0
  %a.cur.len146 = load i64, ptr %a.cur.len145, align 8
  %a.elem.gep147 = getelementptr i64, ptr %a.cur.data144, i64 %a.cur.len146
  %slot.p2i148 = ptrtoint ptr %str.view120 to i64
  store i64 %slot.p2i148, ptr %a.elem.gep147, align 8
  %a.next.len149 = add i64 %a.cur.len146, 1
  %b.len.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2134, i32 0, i32 0
  store i64 %a.next.len149, ptr %b.len.gep150, align 8
  %var.load151 = load i64, ptr %var.pos, align 8
  %addtmp = add i64 %var.load151, 1
  store i64 %addtmp, ptr %"var.start'", align 8
  br label %choice.exit23

a.create155:                                      ; preds = %loop.exit.82
  %arena.cur157 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 24)
  %arena.cur159 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 128)
  %a.len.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 0
  store i64 0, ptr %a.len.gep161, align 8
  %a.data.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 1
  store ptr %a.buf160, ptr %a.data.gep162, align 8
  %a.cap.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 2
  store i64 16, ptr %a.cap.gep163, align 8
  store ptr %a.create158, ptr %var.out, align 8
  br label %a.after156

a.after156:                                       ; preds = %a.create155, %loop.exit.82
  %a.load2164 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2164
}

define ptr @"str::words"(ptr %0) #0 {
entry:
  %var._32 = alloca i64, align 8
  %var._i31 = alloca i64, align 8
  %loop.step.88 = alloca i64, align 8
  %loop.idx.88 = alloca i64, align 8
  %var.start = alloca i64, align 8
  %var._9 = alloca i64, align 8
  %var._i8 = alloca i64, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query3, ptr %var.ls, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.85, align 8
  br label %loop.header.85

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

loop.header.85:                                   ; preds = %loop.latch.85, %str_ok
  %counter.load = load i64, ptr %loop.idx.85, align 8
  br label %loop.body.85

loop.body.85:                                     ; preds = %loop.header.85
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.85, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.i'", align 8
  %var.load5 = load i64, ptr %var.ls, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit

loop.exit.nat.85:                                 ; No predecessors!
  br label %loop.exit.85

loop.latch.85:                                    ; preds = %a.store
  %step.val80 = load i64, ptr %loop.step.85, align 8
  %loop.next81 = add i64 %counter.load, %step.val80
  store i64 %loop.next81, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %choice.then24, %choice.then, %loop.exit.nat.85
  %var.load82 = load ptr, ptr %var.out, align 8
  %a.load83 = load ptr, ptr %var.out, align 8
  %a.null84 = icmp eq ptr %a.load83, null
  br i1 %a.null84, label %a.create85, label %a.after86

choice.then:                                      ; preds = %loop.body.85
  br label %loop.exit.85

choice.exit:                                      ; preds = %loop.body.85
  store i64 0, ptr %loop.idx.86, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  %cycle.prev.i = load i64, ptr %var._i, align 8
  br label %loop.header.86

loop.header.86:                                   ; preds = %loop.latch.86, %choice.exit
  %counter.load6 = load i64, ptr %loop.idx.86, align 8
  br label %loop.body.86

loop.body.86:                                     ; preds = %loop.header.86
  %loop.rel.i7 = sub i64 %counter.load6, 0
  store i64 1, ptr %loop.step.86, align 8
  store i64 %loop.rel.i7, ptr %var._i8, align 8
  store i64 %counter.load6, ptr %var._9, align 8
  %var.load10 = load i64, ptr %"var.i'", align 8
  %var.load11 = load i64, ptr %var.ls, align 8
  %cmptmp12 = icmp slt i64 %var.load10, %var.load11
  br i1 %cmptmp12, label %and.87.then, label %and.87.else

loop.exit.nat.86:                                 ; No predecessors!
  br label %loop.exit.86

loop.latch.86:                                    ; preds = %choice.exit19
  %step.val = load i64, ptr %loop.step.86, align 8
  %loop.next = add i64 %counter.load6, %step.val
  store i64 %loop.next, ptr %loop.idx.86, align 8
  br label %loop.header.86

loop.exit.86:                                     ; preds = %choice.else, %loop.exit.nat.86
  store i64 %cycle.prev.u, ptr %var._, align 8
  store i64 %cycle.prev.i, ptr %var._i, align 8
  %var.load21 = load i64, ptr %"var.i'", align 8
  %var.load22 = load i64, ptr %var.ls, align 8
  %cmptmp23 = icmp sge i64 %var.load21, %var.load22
  br i1 %cmptmp23, label %choice.then24, label %choice.exit25

and.87.then:                                      ; preds = %loop.body.86
  %var.load13 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %var.load17 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load17, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

and.87.else:                                      ; preds = %loop.body.86
  br label %and.87.exit

and.87.exit:                                      ; preds = %and.87.else, %idx_ok
  %and.87.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp12, %and.87.else ]
  br i1 %and.87.phi, label %choice.then18, label %choice.else

idx_big_check:                                    ; preds = %and.87.then
  %idx.big = icmp sge i64 %var.load17, %s.read.len15
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.87.exit

idx_oob:                                          ; preds = %idx_big_check, %and.87.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then18:                                    ; preds = %and.87.exit
  %var.load20 = load i64, ptr %"var.i'", align 8
  %addtmp = add i64 %var.load20, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit19

choice.else:                                      ; preds = %and.87.exit
  br label %loop.exit.86

choice.exit19:                                    ; preds = %choice.then18
  br label %loop.latch.86

choice.then24:                                    ; preds = %loop.exit.86
  br label %loop.exit.85

choice.exit25:                                    ; preds = %loop.exit.86
  %var.load26 = load i64, ptr %"var.i'", align 8
  store i64 %var.load26, ptr %var.start, align 8
  store i64 0, ptr %loop.idx.88, align 8
  %cycle.prev.u27 = load i64, ptr %var._, align 8
  %cycle.prev.i28 = load i64, ptr %var._i, align 8
  br label %loop.header.88

loop.header.88:                                   ; preds = %loop.latch.88, %choice.exit25
  %counter.load29 = load i64, ptr %loop.idx.88, align 8
  br label %loop.body.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i30 = sub i64 %counter.load29, 0
  store i64 1, ptr %loop.step.88, align 8
  store i64 %loop.rel.i30, ptr %var._i31, align 8
  store i64 %counter.load29, ptr %var._32, align 8
  %var.load33 = load i64, ptr %"var.i'", align 8
  %var.load34 = load i64, ptr %var.ls, align 8
  %cmptmp35 = icmp slt i64 %var.load33, %var.load34
  br i1 %cmptmp35, label %and.89.then, label %and.89.else

loop.exit.nat.88:                                 ; No predecessors!
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit55
  %step.val58 = load i64, ptr %loop.step.88, align 8
  %loop.next59 = add i64 %counter.load29, %step.val58
  store i64 %loop.next59, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %choice.else54, %loop.exit.nat.88
  store i64 %cycle.prev.u27, ptr %var._, align 8
  store i64 %cycle.prev.i28, ptr %var._i, align 8
  %var.load60 = load ptr, ptr %var.s, align 8
  %s.read.len61 = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 0
  %s.read.len62 = load i64, ptr %s.read.len61, align 8
  %s.read.len63 = and i64 %s.read.len62, 281474976710655
  %s.read.data64 = getelementptr inbounds { i64, ptr }, ptr %var.load60, i32 0, i32 1
  %s.read.data65 = load ptr, ptr %s.read.data64, align 8
  %var.load66 = load i64, ptr %var.start, align 8
  %var.load67 = load i64, ptr %"var.i'", align 8
  %start.is_neg = icmp slt i64 %var.load66, 0
  %rel.start = add i64 %s.read.len63, %var.load66
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load66
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len63
  %final.start = select i1 %start.gt.len, i64 %s.read.len63, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load67, 0
  %rel.end = add i64 %s.read.len63, %var.load67
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load67
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len63
  %final.end = select i1 %end.gt.len, i64 %s.read.len63, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data65, i64 %final.start
  %arena.cur68 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

and.89.then:                                      ; preds = %loop.body.88
  %var.load36 = load ptr, ptr %var.s, align 8
  %s.read.len37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %s.read.len38 = load i64, ptr %s.read.len37, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %s.read.data40 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data40, align 8
  %var.load42 = load i64, ptr %"var.i'", align 8
  %idx.neg43 = icmp slt i64 %var.load42, 0
  br i1 %idx.neg43, label %idx_oob46, label %idx_big_check44

and.89.else:                                      ; preds = %loop.body.88
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %idx_ok45
  %and.89.phi = phi i1 [ %nottmp, %idx_ok45 ], [ %cmptmp35, %and.89.else ]
  br i1 %and.89.phi, label %choice.then53, label %choice.else54

idx_big_check44:                                  ; preds = %and.89.then
  %idx.big47 = icmp sge i64 %var.load42, %s.read.len39
  br i1 %idx.big47, label %idx_oob46, label %idx_ok45

idx_ok45:                                         ; preds = %abort.dead48, %idx_big_check44
  %s.byte.gep49 = getelementptr i8, ptr %s.read.data41, i64 %var.load42
  %s.byte50 = load i8, ptr %s.byte.gep49, align 1
  %s.byte.val51 = zext i8 %s.byte50 to i64
  %call.res52 = call i1 @"str::is_ws"(i64 %s.byte.val51)
  %nottmp = xor i1 %call.res52, true
  br label %and.89.exit

idx_oob46:                                        ; preds = %idx_big_check44, %and.89.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %idx_ok45

choice.then53:                                    ; preds = %and.89.exit
  %var.load56 = load i64, ptr %"var.i'", align 8
  %addtmp57 = add i64 %var.load56, 1
  store i64 %addtmp57, ptr %"var.i'", align 8
  br label %choice.exit55

choice.else54:                                    ; preds = %and.89.exit
  br label %loop.exit.88

choice.exit55:                                    ; preds = %choice.then53
  br label %loop.latch.88

a.create:                                         ; preds = %loop.exit.88
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 24)
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 128)
  %a.len.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create70, i32 0, i32 0
  store i64 0, ptr %a.len.gep73, align 8
  %a.data.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create70, i32 0, i32 1
  store ptr %a.buf72, ptr %a.data.gep74, align 8
  %a.cap.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create70, i32 0, i32 2
  store i64 16, ptr %a.cap.gep75, align 8
  store ptr %a.create70, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.exit.88
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len76 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap77 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len76, %a.cap77
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data78 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len79 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data78, i64 %a.cur.len79
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len79, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.85

a.create85:                                       ; preds = %loop.exit.85
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 24)
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 128)
  %a.len.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create88, i32 0, i32 0
  store i64 0, ptr %a.len.gep91, align 8
  %a.data.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create88, i32 0, i32 1
  store ptr %a.buf90, ptr %a.data.gep92, align 8
  %a.cap.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create88, i32 0, i32 2
  store i64 16, ptr %a.cap.gep93, align 8
  store ptr %a.create88, ptr %var.out, align 8
  br label %a.after86

a.after86:                                        ; preds = %a.create85, %loop.exit.85
  %a.load294 = load ptr, ptr %var.out, align 8
  ret ptr %a.load294
}

define { i64, ptr } @"str::join"(ptr %0, ptr %1) #0 {
entry:
  %var._118 = alloca ptr, align 8
  %var._i117 = alloca i64, align 8
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

choice.exit8:                                     ; preds = %ret.dead55, %choice.exit
  %var.load56 = load ptr, ptr %var.sep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %str.len.query57 = load i64, ptr %str.len.query, align 8
  %str.len.query58 = and i64 %str.len.query57, 281474976710655
  %str.tag59 = lshr i64 %str.len.query57, 48
  %tag.immortal61 = icmp eq i64 %str.tag59, 0
  %active.gen62 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current63 = icmp eq i64 %str.tag59, %active.gen62
  %tag.fast.ok64 = or i1 %tag.immortal61, %tag.current63
  br i1 %tag.fast.ok64, label %str_ok60, label %tag.slow_check65

a.create12:                                       ; preds = %choice.then7
  %arena.cur14 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create15 = call ptr @dva_arena_alloc(ptr %arena.cur14, i64 24)
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %ret.pack54 = load { i64, ptr }, ptr %pay.ptr, align 8
  ret { i64, ptr } %ret.pack54

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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %unwrap.abort.90
  %err.msg.len32 = trunc i64 %err.msg.len42 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data43 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len44 = load i64, ptr %err.file.len, align 8
  %err.file.len45 = and i64 %err.file.len44, 281474976710655
  %str.tag46 = lshr i64 %err.file.len44, 48
  %tag.immortal48 = icmp eq i64 %str.tag46, 0
  %active.gen49 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current50 = icmp eq i64 %str.tag46, %active.gen49
  %tag.fast.ok51 = or i1 %tag.immortal48, %tag.current50
  br i1 %tag.fast.ok51, label %str_ok47, label %tag.slow_check52

tag.slow_check:                                   ; preds = %unwrap.abort.90
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok47:                                         ; preds = %tag.slow_check52, %str_ok
  %err.file.len32 = trunc i64 %err.file.len45 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data53 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check52:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag46)
  br label %str_ok47

err.thread:                                       ; preds = %str_ok47
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok47
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data43, i32 %err.file.len32, ptr %err.file.data53, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

ret.dead55:                                       ; No predecessors!
  br label %choice.exit8

str_ok60:                                         ; preds = %tag.slow_check65, %choice.exit8
  store i64 %str.len.query58, ptr %var.lsep, align 8
  %var.load66 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load66, 1
  %var.load67 = load i64, ptr %var.lsep, align 8
  %multmp = mul i64 %subtmp, %var.load67
  store i64 %multmp, ptr %var._fold_acc_240, align 8
  %var.load68 = load ptr, ptr %var.parts, align 8
  %a.load69 = load ptr, ptr %var.parts, align 8
  %a.null70 = icmp eq ptr %a.load69, null
  br i1 %a.null70, label %a.create71, label %a.after72

tag.slow_check65:                                 ; preds = %choice.exit8
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag59)
  br label %str_ok60

a.create71:                                       ; preds = %str_ok60
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create74 = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 24)
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 128)
  %a.len.gep77 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create74, i32 0, i32 0
  store i64 0, ptr %a.len.gep77, align 8
  %a.data.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create74, i32 0, i32 1
  store ptr %a.buf76, ptr %a.data.gep78, align 8
  %a.cap.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create74, i32 0, i32 2
  store i64 16, ptr %a.cap.gep79, align 8
  store ptr %a.create74, ptr %var.parts, align 8
  br label %a.after72

a.after72:                                        ; preds = %a.create71, %str_ok60
  %a.load280 = load ptr, ptr %var.parts, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load280, i32 0, i32 0
  %arr.cycle.len81 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load280, i32 0, i32 1
  %arr.cycle.data82 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.header.91:                                   ; preds = %loop.latch.91, %a.after72
  %counter.load = load i64, ptr %loop.idx.91, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len81
  br i1 %loop.cond, label %loop.body.91, label %loop.exit.nat.91

loop.body.91:                                     ; preds = %loop.header.91
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.91, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data82, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load83 = load i64, ptr %var._fold_acc_240, align 8
  store i64 %var.load83, ptr %var.acc, align 8
  %var.load84 = load i64, ptr %var.acc, align 8
  %var.load85 = load ptr, ptr %var.p, align 8
  %str.len.query86 = getelementptr inbounds { i64, ptr }, ptr %var.load85, i32 0, i32 0
  %str.len.query87 = load i64, ptr %str.len.query86, align 8
  %str.len.query88 = and i64 %str.len.query87, 281474976710655
  %addtmp = add i64 %var.load84, %str.len.query88
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
  %var.load89 = load i64, ptr %var._fold_acc_240, align 8
  store i64 %var.load89, ptr %var.total, align 8
  %var.load90 = load i64, ptr %var.total, align 8
  %addtmp91 = add i64 %var.load90, 1
  %cap.neg = icmp slt i64 %addtmp91, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp91
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len92

b.buf.len92:                                      ; preds = %abort.dead, %loop.exit.91
  %arena.cur93 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load94 = load ptr, ptr %var.parts, align 8
  %a.load95 = load ptr, ptr %var.parts, align 8
  %a.null96 = icmp eq ptr %a.load95, null
  br i1 %a.null96, label %a.create97, label %a.after98

str_overflow_abort:                               ; preds = %loop.exit.91
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len92

a.create97:                                       ; preds = %b.buf.len92
  %arena.cur99 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create100 = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 24)
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 128)
  %a.len.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 0
  store i64 0, ptr %a.len.gep103, align 8
  %a.data.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 1
  store ptr %a.buf102, ptr %a.data.gep104, align 8
  %a.cap.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create100, i32 0, i32 2
  store i64 16, ptr %a.cap.gep105, align 8
  store ptr %a.create100, ptr %var.parts, align 8
  br label %a.after98

a.after98:                                        ; preds = %a.create97, %b.buf.len92
  %a.load2106 = load ptr, ptr %var.parts, align 8
  %arr.cycle.len107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 0
  %arr.cycle.len108 = load i64, ptr %arr.cycle.len107, align 8
  %arr.cycle.data109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2106, i32 0, i32 1
  %arr.cycle.data110 = load ptr, ptr %arr.cycle.data109, align 8
  store i64 0, ptr %loop.idx.92, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %a.after98
  %counter.load111 = load i64, ptr %loop.idx.92, align 8
  %loop.cond112 = icmp slt i64 %counter.load111, %arr.cycle.len108
  br i1 %loop.cond112, label %loop.body.92, label %loop.exit.nat.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i113 = sub i64 %counter.load111, 0
  store i64 1, ptr %loop.step.92, align 8
  %arr.elem.gep114 = getelementptr i64, ptr %arr.cycle.data110, i64 %counter.load111
  %arr.elem.raw115 = load i64, ptr %arr.elem.gep114, align 8
  %slot.i2p116 = inttoptr i64 %arr.elem.raw115 to ptr
  store i64 %loop.rel.i113, ptr %var._i117, align 8
  store ptr %slot.i2p116, ptr %var._118, align 8
  store ptr %slot.i2p116, ptr %var.p, align 8
  store i64 %loop.rel.i113, ptr %var.i, align 8
  %var.load119 = load i64, ptr %var.i, align 8
  %cmptmp120 = icmp sgt i64 %var.load119, 0
  br i1 %cmptmp120, label %and.93.then, label %and.93.else

loop.exit.nat.92:                                 ; preds = %loop.header.92
  %loop.rel.end = sub i64 %counter.load111, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %b.grow_done166
  %step.val192 = load i64, ptr %loop.step.92, align 8
  %loop.next193 = add i64 %counter.load111, %step.val192
  store i64 %loop.next193, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %loop.exit.nat.92
  %var.load194 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 0
  %b.freeze.len195 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 1
  %b.freeze.data196 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

and.93.then:                                      ; preds = %loop.body.92
  %var.load121 = load i64, ptr %var.lsep, align 8
  %cmptmp122 = icmp sgt i64 %var.load121, 0
  br label %and.93.exit

and.93.else:                                      ; preds = %loop.body.92
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %and.93.then
  %and.93.phi = phi i1 [ %cmptmp122, %and.93.then ], [ %cmptmp120, %and.93.else ]
  br i1 %and.93.phi, label %choice.then123, label %choice.exit124

choice.then123:                                   ; preds = %and.93.exit
  %b.load = load ptr, ptr %var.b, align 8
  %var.load125 = load ptr, ptr %var.sep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %app.str.len126 = load i64, ptr %app.str.len, align 8
  %app.str.len127 = and i64 %app.str.len126, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 1
  %app.str.data128 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len129 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len129, i64 %app.str.len127)
  %sum130 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf131 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf131, label %str_overflow_abort133, label %b.app.new.len132

choice.exit124:                                   ; preds = %b.grow_done, %and.93.exit
  %b.load146 = load ptr, ptr %var.b, align 8
  %var.load147 = load ptr, ptr %var.p, align 8
  %app.str.len148 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 0
  %app.str.len149 = load i64, ptr %app.str.len148, align 8
  %app.str.len150 = and i64 %app.str.len149, 281474976710655
  %app.str.data151 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 1
  %app.str.data152 = load ptr, ptr %app.str.data151, align 8
  %b.app.cur.len153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 0
  %b.app.cur.len154 = load i64, ptr %b.app.cur.len153, align 8
  %b.app.new.len155 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len154, i64 %app.str.len150)
  %sum156 = extractvalue { i64, i1 } %b.app.new.len155, 0
  %ovf157 = extractvalue { i64, i1 } %b.app.new.len155, 1
  br i1 %ovf157, label %str_overflow_abort159, label %b.app.new.len158

b.app.new.len132:                                 ; preds = %abort.dead134, %choice.then123
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap135 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap135, %sum130
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort133:                            ; preds = %choice.then123
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead134:                                    ; No predecessors!
  br label %b.app.new.len132

b.grow2:                                          ; preds = %b.app.new.len132
  %b.cap2 = mul i64 %b.cap135, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum130
  %b.new.cap = select i1 %b.cap.need, i64 %sum130, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2136 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2137 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum138 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf139 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf139, label %str_overflow_abort141, label %b.new.buf.len2140

b.nogrow2:                                        ; preds = %b.app.new.len132
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2140
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data144 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data144, i64 %b.app.cur.len129
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data128, i64 %app.str.len127, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data144, i64 %sum130
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum130, ptr %b.len.gep145, align 8
  br label %choice.exit124

b.new.buf.len2140:                                ; preds = %abort.dead142, %b.grow2
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 %sum138)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2137, i64 %b.cur.len2136, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2136
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort141:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead142:                                    ; No predecessors!
  br label %b.new.buf.len2140

b.app.new.len158:                                 ; preds = %abort.dead160, %choice.exit124
  %b.cap161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 2
  %b.cap162 = load i64, ptr %b.cap161, align 8
  %b.need.grow163 = icmp slt i64 %b.cap162, %sum156
  br i1 %b.need.grow163, label %b.grow2164, label %b.nogrow2165

str_overflow_abort159:                            ; preds = %choice.exit124
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
  %b.cur.len2172 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 0
  %b.cur.len2173 = load i64, ptr %b.cur.len2172, align 8
  %b.cur.data2174 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 1
  %b.cur.data2175 = load ptr, ptr %b.cur.data2174, align 8
  %b.new.buf.len2176 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap171, i64 1)
  %sum177 = extractvalue { i64, i1 } %b.new.buf.len2176, 0
  %ovf178 = extractvalue { i64, i1 } %b.new.buf.len2176, 1
  br i1 %ovf178, label %str_overflow_abort180, label %b.new.buf.len2179

b.nogrow2165:                                     ; preds = %b.app.new.len158
  br label %b.grow_done166

b.grow_done166:                                   ; preds = %b.nogrow2165, %b.new.buf.len2179
  %b.app.data187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 1
  %b.app.data188 = load ptr, ptr %b.app.data187, align 8
  %b.app.dst189 = getelementptr i8, ptr %b.app.data188, i64 %b.app.cur.len154
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst189, ptr align 1 %app.str.data152, i64 %app.str.len150, i1 false)
  %b.app.nul190 = getelementptr i8, ptr %b.app.data188, i64 %sum156
  store i8 0, ptr %b.app.nul190, align 1
  %b.len.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 0
  store i64 %sum156, ptr %b.len.gep191, align 8
  br label %loop.latch.92

b.new.buf.len2179:                                ; preds = %abort.dead181, %b.grow2164
  %arena.cur182 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 %sum177)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2183, ptr align 1 %b.cur.data2175, i64 %b.cur.len2173, i1 false)
  %b.grow2.nul184 = getelementptr i8, ptr %b.new.buf2183, i64 %b.cur.len2173
  store i8 0, ptr %b.grow2.nul184, align 1
  %b.new.data2.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 1
  store ptr %b.new.buf2183, ptr %b.new.data2.gep185, align 8
  %b.new.cap2.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 2
  store i64 %b.new.cap171, ptr %b.new.cap2.gep186, align 8
  br label %b.grow_done166

str_overflow_abort180:                            ; preds = %b.grow2164
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead181:                                    ; No predecessors!
  br label %b.new.buf.len2179

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data196, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data196, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data196, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len195, 1
  %arena.cur197 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data196, i64 %b.freeze.len195, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len195
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.92
  %b.freeze.data198 = phi ptr [ %b.freeze.data196, %loop.exit.92 ], [ %b.freeze.data196, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur199 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len195, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data198, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack200 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack200
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ret.pack = load { i64, ptr }, ptr @str.9.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load4, 8
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
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len5:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len5

loop.header.94:                                   ; preds = %loop.latch.94, %b.buf.len5
  %counter.load = load i64, ptr %loop.idx.94, align 8
  br label %loop.body.94

loop.body.94:                                     ; preds = %loop.header.94
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.94, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load7 = load i64, ptr %"var.i'", align 8
  %var.load8 = load i64, ptr %var.len, align 8
  %cmptmp9 = icmp sge i64 %var.load7, %var.load8
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

loop.exit.nat.94:                                 ; No predecessors!
  br label %loop.exit.94

loop.latch.94:                                    ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.94, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.exit.94:                                     ; preds = %choice.then10, %loop.exit.nat.94
  %var.load100 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load100, i32 0, i32 0
  %b.freeze.len101 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load100, i32 0, i32 1
  %b.freeze.data102 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then10:                                    ; preds = %loop.body.94
  br label %loop.exit.94

choice.exit11:                                    ; preds = %loop.body.94
  %var.load12 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %var.load16 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load16, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit11
  %idx.big = icmp sge i64 %var.load16, %s.read.len14
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead17, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load18 = load i64, ptr %var.b0, align 8
  %cmptmp19 = icmp slt i64 %var.load18, 128
  br i1 %cmptmp19, label %choice.then20, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit11
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %idx_ok

choice.then20:                                    ; preds = %idx_ok
  %b.load = load ptr, ptr %var.b, align 8
  %var.load22 = load i64, ptr %var.b0, align 8
  %call.res = call i64 @"ascii::to_lower"(i64 %var.load22)
  %b.b.ge0 = icmp sge i64 %call.res, 0
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else:                                      ; preds = %idx_ok
  %var.load38 = load ptr, ptr %var.s, align 8
  %var.load39 = load i64, ptr %"var.i'", align 8
  %call.res40 = call { i64, i64 } @"utf::decode_str_at"(ptr %var.load38, i64 %var.load39)
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store { i64, i64 } %call.res40, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var._dp_1, align 8
  %var.load42 = load ptr, ptr %var._dp_1, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load42, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cp, align 8
  %var.load43 = load ptr, ptr %var._dp_1, align 8
  %fld.gep44 = getelementptr inbounds { i64, i64 }, ptr %var.load43, i32 0, i32 1
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  store i64 %fld.load45, ptr %var.width, align 8
  %var.load46 = load i64, ptr %var.cp, align 8
  %cmptmp47 = icmp slt i64 %var.load46, 0
  br i1 %cmptmp47, label %choice.then48, label %choice.else49

choice.exit21:                                    ; preds = %choice.exit50, %b.push_done
  br label %loop.latch.94

b.byte_ok:                                        ; preds = %abort.dead23, %choice.then20
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len24 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap25 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data26 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len24, %b.cap25
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then20
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap25, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum27 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf28 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %b.new.buf.len29

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len29
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data33 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len34 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data33, i64 %b.cur.len34
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len34, 1
  %b.nul = getelementptr i8, ptr %b.cur.data33, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep35, align 8
  %var.load36 = load i64, ptr %"var.i'", align 8
  %addtmp37 = add i64 %var.load36, 1
  store i64 %addtmp37, ptr %"var.i'", align 8
  br label %choice.exit21

b.new.buf.len29:                                  ; preds = %abort.dead31, %b.grow
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %sum27)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data26, i64 %b.len24, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len24
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort30:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %b.new.buf.len29

choice.then48:                                    ; preds = %choice.else
  %b.load51 = load ptr, ptr %var.b, align 8
  %var.load52 = load i64, ptr %var.b0, align 8
  %b.b.ge053 = icmp sge i64 %var.load52, 0
  %b.b.le25554 = icmp sle i64 %var.load52, 255
  %b.byte.range55 = and i1 %b.b.ge053, %b.b.le25554
  br i1 %b.byte.range55, label %b.byte_ok56, label %b.byte_err57

choice.else49:                                    ; preds = %choice.else
  %var.load94 = load ptr, ptr %var.b, align 8
  %var.load95 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load95 to i32
  %call.res96 = call i32 @"unicode::to_lower"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %var.load94, i32 %call.res96)
  %var.load97 = load i64, ptr %"var.i'", align 8
  %var.load98 = load i64, ptr %var.width, align 8
  %addtmp99 = add i64 %var.load97, %var.load98
  store i64 %addtmp99, ptr %"var.i'", align 8
  br label %choice.exit50

choice.exit50:                                    ; preds = %choice.else49, %b.push_done69
  br label %choice.exit21

b.byte_ok56:                                      ; preds = %abort.dead58, %choice.then48
  %b.byte.i859 = trunc i64 %var.load52 to i8
  %b.len60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.len61 = load i64, ptr %b.len60, align 8
  %b.cap62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  %b.cap63 = load i64, ptr %b.cap62, align 8
  %b.data64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.data65 = load ptr, ptr %b.data64, align 8
  %b.needs.grow66 = icmp eq i64 %b.len61, %b.cap63
  br i1 %b.needs.grow66, label %b.grow67, label %b.nogrow68

b.byte_err57:                                     ; preds = %choice.then48
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %b.byte_ok56

b.grow67:                                         ; preds = %b.byte_ok56
  %b.cap270 = mul i64 %b.cap63, 2
  %b.cap.small71 = icmp slt i64 %b.cap270, 16
  %b.new.cap72 = select i1 %b.cap.small71, i64 16, i64 %b.cap270
  %b.new.buf.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap72, i64 1)
  %sum74 = extractvalue { i64, i1 } %b.new.buf.len73, 0
  %ovf75 = extractvalue { i64, i1 } %b.new.buf.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.new.buf.len76

b.nogrow68:                                       ; preds = %b.byte_ok56
  br label %b.push_done69

b.push_done69:                                    ; preds = %b.nogrow68, %b.new.buf.len76
  %b.cur.data84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.cur.data85 = load ptr, ptr %b.cur.data84, align 8
  %b.cur.len86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.cur.len87 = load i64, ptr %b.cur.len86, align 8
  %b.byte.gep88 = getelementptr i8, ptr %b.cur.data85, i64 %b.cur.len87
  store i8 %b.byte.i859, ptr %b.byte.gep88, align 1
  %b.next.len89 = add i64 %b.cur.len87, 1
  %b.nul90 = getelementptr i8, ptr %b.cur.data85, i64 %b.next.len89
  store i8 0, ptr %b.nul90, align 1
  %b.len.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  store i64 %b.next.len89, ptr %b.len.gep91, align 8
  %var.load92 = load i64, ptr %"var.i'", align 8
  %addtmp93 = add i64 %var.load92, 1
  store i64 %addtmp93, ptr %"var.i'", align 8
  br label %choice.exit50

b.new.buf.len76:                                  ; preds = %abort.dead78, %b.grow67
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum74)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf80, ptr align 1 %b.data65, i64 %b.len61, i1 false)
  %b.grow.nul81 = getelementptr i8, ptr %b.new.buf80, i64 %b.len61
  store i8 0, ptr %b.grow.nul81, align 1
  %b.new.data.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  store ptr %b.new.buf80, ptr %b.new.data.gep82, align 8
  %b.new.cap.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  store i64 %b.new.cap72, ptr %b.new.cap.gep83, align 8
  br label %b.push_done69

str_overflow_abort77:                             ; preds = %b.grow67
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %b.new.buf.len76

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data102, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data102, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data102, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len101, 1
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data102, i64 %b.freeze.len101, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len101
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.94
  %b.freeze.data104 = phi ptr [ %b.freeze.data102, %loop.exit.94 ], [ %b.freeze.data102, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len101, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data104, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load100, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load100, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load100, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack106 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack106
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  %ret.pack = load { i64, ptr }, ptr @str.9.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load4 = load i64, ptr %var.len, align 8
  %addtmp = add i64 %var.load4, 8
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
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len5:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len5

loop.header.95:                                   ; preds = %loop.latch.95, %b.buf.len5
  %counter.load = load i64, ptr %loop.idx.95, align 8
  br label %loop.body.95

loop.body.95:                                     ; preds = %loop.header.95
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.95, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load7 = load i64, ptr %"var.i'", align 8
  %var.load8 = load i64, ptr %var.len, align 8
  %cmptmp9 = icmp sge i64 %var.load7, %var.load8
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

loop.exit.nat.95:                                 ; No predecessors!
  br label %loop.exit.95

loop.latch.95:                                    ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.95, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.exit.95:                                     ; preds = %choice.then10, %loop.exit.nat.95
  %var.load128 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load128, i32 0, i32 0
  %b.freeze.len129 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load128, i32 0, i32 1
  %b.freeze.data130 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then10:                                    ; preds = %loop.body.95
  br label %loop.exit.95

choice.exit11:                                    ; preds = %loop.body.95
  %var.load12 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %var.load16 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load16, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

idx_big_check:                                    ; preds = %choice.exit11
  %idx.big = icmp sge i64 %var.load16, %s.read.len14
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead17, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load18 = load i64, ptr %var.b0, align 8
  %cmptmp19 = icmp slt i64 %var.load18, 128
  br i1 %cmptmp19, label %choice.then20, label %choice.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit11
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead17:                                     ; No predecessors!
  br label %idx_ok

choice.then20:                                    ; preds = %idx_ok
  %b.load = load ptr, ptr %var.b, align 8
  %var.load22 = load i64, ptr %var.b0, align 8
  %call.res = call i64 @"ascii::to_upper"(i64 %var.load22)
  %b.b.ge0 = icmp sge i64 %call.res, 0
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else:                                      ; preds = %idx_ok
  %var.load38 = load ptr, ptr %var.s, align 8
  %var.load39 = load i64, ptr %"var.i'", align 8
  %call.res40 = call { i64, i64 } @"utf::decode_str_at"(ptr %var.load38, i64 %var.load39)
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 ptrtoint (ptr getelementptr ({ i64, i64 }, ptr null, i32 1) to i64))
  store { i64, i64 } %call.res40, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var._dp_2, align 8
  %var.load42 = load ptr, ptr %var._dp_2, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load42, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cp, align 8
  %var.load43 = load ptr, ptr %var._dp_2, align 8
  %fld.gep44 = getelementptr inbounds { i64, i64 }, ptr %var.load43, i32 0, i32 1
  %fld.load45 = load i64, ptr %fld.gep44, align 8
  store i64 %fld.load45, ptr %var.width, align 8
  %var.load46 = load i64, ptr %var.cp, align 8
  %cmptmp47 = icmp slt i64 %var.load46, 0
  br i1 %cmptmp47, label %choice.then48, label %choice.else49

choice.exit21:                                    ; preds = %choice.exit50, %b.push_done
  br label %loop.latch.95

b.byte_ok:                                        ; preds = %abort.dead23, %choice.then20
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len24 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap25 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data26 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len24, %b.cap25
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.then20
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap25, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum27 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf28 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %b.new.buf.len29

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len29
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data33 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len34 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data33, i64 %b.cur.len34
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len34, 1
  %b.nul = getelementptr i8, ptr %b.cur.data33, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep35, align 8
  %var.load36 = load i64, ptr %"var.i'", align 8
  %addtmp37 = add i64 %var.load36, 1
  store i64 %addtmp37, ptr %"var.i'", align 8
  br label %choice.exit21

b.new.buf.len29:                                  ; preds = %abort.dead31, %b.grow
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %sum27)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data26, i64 %b.len24, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len24
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort30:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead31:                                     ; No predecessors!
  br label %b.new.buf.len29

choice.then48:                                    ; preds = %choice.else
  %b.load51 = load ptr, ptr %var.b, align 8
  %var.load52 = load i64, ptr %var.b0, align 8
  %b.b.ge053 = icmp sge i64 %var.load52, 0
  %b.b.le25554 = icmp sle i64 %var.load52, 255
  %b.byte.range55 = and i1 %b.b.ge053, %b.b.le25554
  br i1 %b.byte.range55, label %b.byte_ok56, label %b.byte_err57

choice.else49:                                    ; preds = %choice.else
  %var.load94 = load i64, ptr %var.cp, align 8
  %cmptmp95 = icmp eq i64 %var.load94, 223
  br i1 %cmptmp95, label %choice.then96, label %choice.else97

choice.exit50:                                    ; preds = %choice.exit98, %b.push_done69
  br label %choice.exit21

b.byte_ok56:                                      ; preds = %abort.dead58, %choice.then48
  %b.byte.i859 = trunc i64 %var.load52 to i8
  %b.len60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.len61 = load i64, ptr %b.len60, align 8
  %b.cap62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  %b.cap63 = load i64, ptr %b.cap62, align 8
  %b.data64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.data65 = load ptr, ptr %b.data64, align 8
  %b.needs.grow66 = icmp eq i64 %b.len61, %b.cap63
  br i1 %b.needs.grow66, label %b.grow67, label %b.nogrow68

b.byte_err57:                                     ; preds = %choice.then48
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %b.byte_ok56

b.grow67:                                         ; preds = %b.byte_ok56
  %b.cap270 = mul i64 %b.cap63, 2
  %b.cap.small71 = icmp slt i64 %b.cap270, 16
  %b.new.cap72 = select i1 %b.cap.small71, i64 16, i64 %b.cap270
  %b.new.buf.len73 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap72, i64 1)
  %sum74 = extractvalue { i64, i1 } %b.new.buf.len73, 0
  %ovf75 = extractvalue { i64, i1 } %b.new.buf.len73, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.new.buf.len76

b.nogrow68:                                       ; preds = %b.byte_ok56
  br label %b.push_done69

b.push_done69:                                    ; preds = %b.nogrow68, %b.new.buf.len76
  %b.cur.data84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.cur.data85 = load ptr, ptr %b.cur.data84, align 8
  %b.cur.len86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.cur.len87 = load i64, ptr %b.cur.len86, align 8
  %b.byte.gep88 = getelementptr i8, ptr %b.cur.data85, i64 %b.cur.len87
  store i8 %b.byte.i859, ptr %b.byte.gep88, align 1
  %b.next.len89 = add i64 %b.cur.len87, 1
  %b.nul90 = getelementptr i8, ptr %b.cur.data85, i64 %b.next.len89
  store i8 0, ptr %b.nul90, align 1
  %b.len.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  store i64 %b.next.len89, ptr %b.len.gep91, align 8
  %var.load92 = load i64, ptr %"var.i'", align 8
  %addtmp93 = add i64 %var.load92, 1
  store i64 %addtmp93, ptr %"var.i'", align 8
  br label %choice.exit50

b.new.buf.len76:                                  ; preds = %abort.dead78, %b.grow67
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum74)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf80, ptr align 1 %b.data65, i64 %b.len61, i1 false)
  %b.grow.nul81 = getelementptr i8, ptr %b.new.buf80, i64 %b.len61
  store i8 0, ptr %b.grow.nul81, align 1
  %b.new.data.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  store ptr %b.new.buf80, ptr %b.new.data.gep82, align 8
  %b.new.cap.gep83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  store i64 %b.new.cap72, ptr %b.new.cap.gep83, align 8
  br label %b.push_done69

str_overflow_abort77:                             ; preds = %b.grow67
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %b.new.buf.len76

choice.then96:                                    ; preds = %choice.else49
  %b.load99 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.13.struct, align 8
  %app.str.len100 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.app.cur.len101 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len101, i64 %app.str.len100)
  %sum102 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf103 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf103, label %str_overflow_abort105, label %b.app.new.len104

choice.else97:                                    ; preds = %choice.else49
  %var.load122 = load ptr, ptr %var.b, align 8
  %var.load123 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load123 to i32
  %call.res124 = call i32 @"unicode::to_upper"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %var.load122, i32 %call.res124)
  br label %choice.exit98

choice.exit98:                                    ; preds = %choice.else97, %b.grow_done
  %var.load125 = load i64, ptr %"var.i'", align 8
  %var.load126 = load i64, ptr %var.width, align 8
  %addtmp127 = add i64 %var.load125, %var.load126
  store i64 %addtmp127, ptr %"var.i'", align 8
  br label %choice.exit50

b.app.new.len104:                                 ; preds = %abort.dead106, %choice.then96
  %b.cap107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  %b.cap108 = load i64, ptr %b.cap107, align 8
  %b.need.grow = icmp slt i64 %b.cap108, %sum102
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort105:                            ; preds = %choice.then96
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead106:                                    ; No predecessors!
  br label %b.app.new.len104

b.grow2:                                          ; preds = %b.app.new.len104
  %b.cap2109 = mul i64 %b.cap108, 2
  %b.cap.small110 = icmp slt i64 %b.cap2109, 16
  %b.cap.grow = select i1 %b.cap.small110, i64 16, i64 %b.cap2109
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum102
  %b.new.cap111 = select i1 %b.cap.need, i64 %sum102, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.cur.len2112 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.cur.data2113 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap111, i64 1)
  %sum114 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf115 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf115, label %str_overflow_abort117, label %b.new.buf.len2116

b.nogrow2:                                        ; preds = %b.app.new.len104
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2116
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.app.data120 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data120, i64 %b.app.cur.len101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len100, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data120, i64 %sum102
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  store i64 %sum102, ptr %b.len.gep121, align 8
  br label %choice.exit98

b.new.buf.len2116:                                ; preds = %abort.dead118, %b.grow2
  %arena.cur119 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur119, i64 %sum114)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2113, i64 %b.cur.len2112, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2112
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  store i64 %b.new.cap111, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort117:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead118:                                    ; No predecessors!
  br label %b.new.buf.len2116

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data130, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data130, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data130, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len129, 1
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data130, i64 %b.freeze.len129, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len129
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.95
  %b.freeze.data132 = phi ptr [ %b.freeze.data130, %loop.exit.95 ], [ %b.freeze.data130, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len129, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data132, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load128, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load128, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load128, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack134 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack134
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load3, 0
  br i1 %cmptmp, label %or.96.then, label %or.96.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %multmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %multmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len15

ret.dead12:                                       ; No predecessors!
  br label %choice.exit9

b.buf.len15:                                      ; preds = %abort.dead, %choice.exit9
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load17 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.97, align 8
  br label %loop.header.97

str_overflow_abort:                               ; preds = %choice.exit9
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len15

loop.header.97:                                   ; preds = %loop.latch.97, %b.buf.len15
  %counter.load = load i64, ptr %loop.idx.97, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load17
  br i1 %loop.cond, label %loop.body.97, label %loop.exit.nat.97

loop.body.97:                                     ; preds = %loop.header.97
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.97, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load18 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %app.str.len19 = load i64, ptr %app.str.len, align 8
  %app.str.len20 = and i64 %app.str.len19, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %app.str.data21 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len22 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len22, i64 %app.str.len20)
  %sum23 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf24 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf24, label %str_overflow_abort26, label %b.app.new.len25

loop.exit.nat.97:                                 ; preds = %loop.header.97
  br label %loop.exit.97

loop.latch.97:                                    ; preds = %b.grow_done
  %step.val = load i64, ptr %loop.step.97, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.97, align 8
  br label %loop.header.97

loop.exit.97:                                     ; preds = %loop.exit.nat.97
  %var.load39 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load39, i32 0, i32 0
  %b.freeze.len40 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load39, i32 0, i32 1
  %b.freeze.data41 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.app.new.len25:                                  ; preds = %abort.dead27, %loop.body.97
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap28 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap28, %sum23
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort26:                             ; preds = %loop.body.97
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %b.app.new.len25

b.grow2:                                          ; preds = %b.app.new.len25
  %b.cap2 = mul i64 %b.cap28, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum23
  %b.new.cap = select i1 %b.cap.need, i64 %sum23, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len229 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data230 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum31 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf32 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf32, label %str_overflow_abort34, label %b.new.buf.len233

b.nogrow2:                                        ; preds = %b.app.new.len25
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len233
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data37 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data37, i64 %b.app.cur.len22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data21, i64 %app.str.len20, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data37, i64 %sum23
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum23, ptr %b.len.gep38, align 8
  br label %loop.latch.97

b.new.buf.len233:                                 ; preds = %abort.dead35, %b.grow2
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 %sum31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data230, i64 %b.cur.len229, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len229
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort34:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %b.new.buf.len233

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data41, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data41, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data41, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len40, 1
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data41, i64 %b.freeze.len40, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len40
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.97
  %b.freeze.data43 = phi ptr [ %b.freeze.data41, %loop.exit.97 ], [ %b.freeze.data41, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len40, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data43, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load39, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load39, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load39, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack45 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack45
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.width, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load8, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len9:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load11 = load i64, ptr %var.pad_n, align 8
  store i64 0, ptr %loop.idx.98, align 8
  br label %loop.header.98

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len9

loop.header.98:                                   ; preds = %loop.latch.98, %b.buf.len9
  %counter.load = load i64, ptr %loop.idx.98, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load11
  br i1 %loop.cond, label %loop.body.98, label %loop.exit.nat.98

loop.body.98:                                     ; preds = %loop.header.98
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.98, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load12 = load i64, ptr %var.pad_byte, align 8
  %b.b.ge0 = icmp sge i64 %var.load12, 0
  %b.b.le255 = icmp sle i64 %var.load12, 255
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
  %b.load26 = load ptr, ptr %var.b, align 8
  %var.load27 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %app.str.len28 = load i64, ptr %app.str.len, align 8
  %app.str.len29 = and i64 %app.str.len28, 281474976710655
  %str.tag30 = lshr i64 %app.str.len28, 48
  %tag.immortal32 = icmp eq i64 %str.tag30, 0
  %active.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current34 = icmp eq i64 %str.tag30, %active.gen33
  %tag.fast.ok35 = or i1 %tag.immortal32, %tag.current34
  br i1 %tag.fast.ok35, label %str_ok31, label %tag.slow_check36

b.byte_ok:                                        ; preds = %abort.dead13, %loop.body.98
  %b.byte.i8 = trunc i64 %var.load12 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len14 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap15 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data16 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len14, %b.cap15
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %loop.body.98
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead13:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap15, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum17 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf18 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf18, label %str_overflow_abort20, label %b.new.buf.len19

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len19
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data23 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len24 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data23, i64 %b.cur.len24
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len24, 1
  %b.nul = getelementptr i8, ptr %b.cur.data23, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep25, align 8
  br label %loop.latch.98

b.new.buf.len19:                                  ; preds = %abort.dead21, %b.grow
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data16, i64 %b.len14, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len14
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort20:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %b.new.buf.len19

str_ok31:                                         ; preds = %tag.slow_check36, %loop.exit.98
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %app.str.data37 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load26, i32 0, i32 0
  %b.app.cur.len38 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len38, i64 %app.str.len29)
  %sum39 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf40 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %b.app.new.len41

tag.slow_check36:                                 ; preds = %loop.exit.98
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag30)
  br label %str_ok31

b.app.new.len41:                                  ; preds = %abort.dead43, %str_ok31
  %b.cap44 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load26, i32 0, i32 2
  %b.cap45 = load i64, ptr %b.cap44, align 8
  %b.need.grow = icmp slt i64 %b.cap45, %sum39
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort42:                             ; preds = %str_ok31
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead43:                                     ; No predecessors!
  br label %b.app.new.len41

b.grow2:                                          ; preds = %b.app.new.len41
  %b.cap246 = mul i64 %b.cap45, 2
  %b.cap.small47 = icmp slt i64 %b.cap246, 16
  %b.cap.grow = select i1 %b.cap.small47, i64 16, i64 %b.cap246
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum39
  %b.new.cap48 = select i1 %b.cap.need, i64 %sum39, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load26, i32 0, i32 0
  %b.cur.len249 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load26, i32 0, i32 1
  %b.cur.data250 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap48, i64 1)
  %sum51 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf52 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf52, label %str_overflow_abort54, label %b.new.buf.len253

b.nogrow2:                                        ; preds = %b.app.new.len41
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len253
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load26, i32 0, i32 1
  %b.app.data57 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data57, i64 %b.app.cur.len38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data37, i64 %app.str.len29, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data57, i64 %sum39
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load26, i32 0, i32 0
  store i64 %sum39, ptr %b.len.gep58, align 8
  %var.load59 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 0
  %b.freeze.len60 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 1
  %b.freeze.data61 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len253:                                 ; preds = %abort.dead55, %b.grow2
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 %sum51)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data250, i64 %b.cur.len249, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len249
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load26, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load26, i32 0, i32 2
  store i64 %b.new.cap48, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort54:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead55:                                     ; No predecessors!
  br label %b.new.buf.len253

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data61, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data61, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data61, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len60, 1
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data61, i64 %b.freeze.len60, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len60
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data63 = phi ptr [ %b.freeze.data61, %b.grow_done ], [ %b.freeze.data61, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len60, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data63, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack65 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack65
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.width, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load8, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len9:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load11 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %app.str.len12 = load i64, ptr %app.str.len, align 8
  %app.str.len13 = and i64 %app.str.len12, 281474976710655
  %str.tag14 = lshr i64 %app.str.len12, 48
  %tag.immortal16 = icmp eq i64 %str.tag14, 0
  %active.gen17 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current18 = icmp eq i64 %str.tag14, %active.gen17
  %tag.fast.ok19 = or i1 %tag.immortal16, %tag.current18
  br i1 %tag.fast.ok19, label %str_ok15, label %tag.slow_check20

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len9

str_ok15:                                         ; preds = %tag.slow_check20, %b.buf.len9
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %app.str.data21 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len22 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len22, i64 %app.str.len13)
  %sum23 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf24 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf24, label %str_overflow_abort26, label %b.app.new.len25

tag.slow_check20:                                 ; preds = %b.buf.len9
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag14)
  br label %str_ok15

b.app.new.len25:                                  ; preds = %abort.dead27, %str_ok15
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap28 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap28, %sum23
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort26:                             ; preds = %str_ok15
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %b.app.new.len25

b.grow2:                                          ; preds = %b.app.new.len25
  %b.cap2 = mul i64 %b.cap28, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum23
  %b.new.cap = select i1 %b.cap.need, i64 %sum23, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len229 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data230 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum31 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf32 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf32, label %str_overflow_abort34, label %b.new.buf.len233

b.nogrow2:                                        ; preds = %b.app.new.len25
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len233
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data37 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data37, i64 %b.app.cur.len22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data21, i64 %app.str.len13, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data37, i64 %sum23
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum23, ptr %b.len.gep38, align 8
  %var.load39 = load i64, ptr %var.pad_n, align 8
  store i64 0, ptr %loop.idx.99, align 8
  br label %loop.header.99

b.new.buf.len233:                                 ; preds = %abort.dead35, %b.grow2
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 %sum31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data230, i64 %b.cur.len229, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len229
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort34:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %b.new.buf.len233

loop.header.99:                                   ; preds = %loop.latch.99, %b.grow_done
  %counter.load = load i64, ptr %loop.idx.99, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load39
  br i1 %loop.cond, label %loop.body.99, label %loop.exit.nat.99

loop.body.99:                                     ; preds = %loop.header.99
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.99, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load40 = load ptr, ptr %var.b, align 8
  %var.load41 = load i64, ptr %var.pad_byte, align 8
  %b.b.ge0 = icmp sge i64 %var.load41, 0
  %b.b.le255 = icmp sle i64 %var.load41, 255
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
  %var.load59 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 0
  %b.freeze.len60 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 1
  %b.freeze.data61 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok:                                        ; preds = %abort.dead42, %loop.body.99
  %b.byte.i8 = trunc i64 %var.load41 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load40, i32 0, i32 0
  %b.len43 = load i64, ptr %b.len, align 8
  %b.cap44 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load40, i32 0, i32 2
  %b.cap45 = load i64, ptr %b.cap44, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load40, i32 0, i32 1
  %b.data46 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len43, %b.cap45
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %loop.body.99
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead42:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap247 = mul i64 %b.cap45, 2
  %b.cap.small48 = icmp slt i64 %b.cap247, 16
  %b.new.cap49 = select i1 %b.cap.small48, i64 16, i64 %b.cap247
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap49, i64 1)
  %sum50 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf51 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.new.buf.len52

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len52
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load40, i32 0, i32 1
  %b.cur.data56 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load40, i32 0, i32 0
  %b.cur.len57 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data56, i64 %b.cur.len57
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len57, 1
  %b.nul = getelementptr i8, ptr %b.cur.data56, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load40, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep58, align 8
  br label %loop.latch.99

b.new.buf.len52:                                  ; preds = %abort.dead54, %b.grow
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 %sum50)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data46, i64 %b.len43, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len43
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load40, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load40, i32 0, i32 2
  store i64 %b.new.cap49, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort53:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead54:                                     ; No predecessors!
  br label %b.new.buf.len52

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data61, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data61, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data61, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len60, 1
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data61, i64 %b.freeze.len60, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len60
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.99
  %b.freeze.data63 = phi ptr [ %b.freeze.data61, %loop.exit.99 ], [ %b.freeze.data61, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len60, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data63, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack65 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack65
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sle i64 %var.load3, 1
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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

b.buf.len6:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load7 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.100, align 8
  br label %loop.header.100

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len6

loop.header.100:                                  ; preds = %loop.latch.100, %b.buf.len6
  %counter.load = load i64, ptr %loop.idx.100, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load7
  br i1 %loop.cond, label %loop.body.100, label %loop.exit.nat.100

loop.body.100:                                    ; preds = %loop.header.100
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.100, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load8 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %var.load12 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load12, 1
  %var.load13 = load i64, ptr %var.i, align 8
  %subtmp14 = sub i64 %subtmp, %var.load13
  %idx.neg = icmp slt i64 %subtmp14, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

loop.exit.nat.100:                                ; preds = %loop.header.100
  br label %loop.exit.100

loop.latch.100:                                   ; preds = %b.push_done
  %step.val = load i64, ptr %loop.step.100, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.100, align 8
  br label %loop.header.100

loop.exit.100:                                    ; preds = %loop.exit.nat.100
  %var.load29 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 0
  %b.freeze.len30 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 1
  %b.freeze.data31 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

idx_big_check:                                    ; preds = %loop.body.100
  %idx.big = icmp sge i64 %subtmp14, %s.read.len10
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead15, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %subtmp14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val, 0
  %b.b.le255 = icmp sle i64 %s.byte.val, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob:                                          ; preds = %idx_big_check, %loop.body.100
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead15:                                     ; No predecessors!
  br label %idx_ok

b.byte_ok:                                        ; preds = %abort.dead16, %idx_ok
  %b.byte.i8 = trunc i64 %s.byte.val to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len17 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap18 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data19 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len17, %b.cap18
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %idx_ok
  call void @dva_abort_b_byte_msg()
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
  br label %loop.latch.100

b.new.buf.len22:                                  ; preds = %abort.dead24, %b.grow
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead24:                                     ; No predecessors!
  br label %b.new.buf.len22

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data31, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data31, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data31, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len30, 1
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data31, i64 %b.freeze.len30, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len30
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.100
  %b.freeze.data33 = phi ptr [ %b.freeze.data31, %loop.exit.100 ], [ %b.freeze.data31, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len30, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data33, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack35 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack35
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current16 = icmp eq i64 %str.tag12, %active.gen15
  %tag.fast.ok17 = or i1 %tag.immortal14, %tag.current16
  br i1 %tag.fast.ok17, label %str_ok13, label %tag.slow_check18

choice.else:                                      ; preds = %choice.exit
  %var.load200 = load ptr, ptr %var.s, align 8
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ %var.load200, %choice.else ]
  %ret.pack201 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack201

str_ok13:                                         ; preds = %tag.slow_check18, %choice.then6
  store i64 %str.len.query11, ptr %var.ls, align 8
  %var.load19 = load ptr, ptr %var.old, align 8
  %str.len.query20 = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %str.len.query21 = load i64, ptr %str.len.query20, align 8
  %str.len.query22 = and i64 %str.len.query21, 281474976710655
  %str.tag23 = lshr i64 %str.len.query21, 48
  %tag.immortal25 = icmp eq i64 %str.tag23, 0
  %active.gen26 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current27 = icmp eq i64 %str.tag23, %active.gen26
  %tag.fast.ok28 = or i1 %tag.immortal25, %tag.current27
  br i1 %tag.fast.ok28, label %str_ok24, label %tag.slow_check29

tag.slow_check18:                                 ; preds = %choice.then6
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag12)
  br label %str_ok13

str_ok24:                                         ; preds = %tag.slow_check29, %str_ok13
  store i64 %str.len.query22, ptr %var.lo, align 8
  %var.load30 = load i64, ptr %var.ls, align 8
  %var.load31 = load i64, ptr %var.lo, align 8
  %subtmp = sub i64 %var.load30, %var.load31
  %var.load32 = load ptr, ptr %var.new_s, align 8
  %str.len.query33 = getelementptr inbounds { i64, ptr }, ptr %var.load32, i32 0, i32 0
  %str.len.query34 = load i64, ptr %str.len.query33, align 8
  %str.len.query35 = and i64 %str.len.query34, 281474976710655
  %str.tag36 = lshr i64 %str.len.query34, 48
  %tag.immortal38 = icmp eq i64 %str.tag36, 0
  %active.gen39 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current40 = icmp eq i64 %str.tag36, %active.gen39
  %tag.fast.ok41 = or i1 %tag.immortal38, %tag.current40
  br i1 %tag.fast.ok41, label %str_ok37, label %tag.slow_check42

tag.slow_check29:                                 ; preds = %str_ok13
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag23)
  br label %str_ok24

str_ok37:                                         ; preds = %tag.slow_check42, %str_ok24
  %addtmp = add i64 %subtmp, %str.len.query35
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len43

tag.slow_check42:                                 ; preds = %str_ok24
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag36)
  br label %str_ok37

b.buf.len43:                                      ; preds = %abort.dead, %str_ok37
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load44 = load i64, ptr %var.idx, align 8
  %cmptmp45 = icmp sgt i64 %var.load44, 0
  br i1 %cmptmp45, label %choice.then46, label %choice.exit47

str_overflow_abort:                               ; preds = %str_ok37
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len43

choice.then46:                                    ; preds = %b.buf.len43
  %b.load = load ptr, ptr %var.b, align 8
  %var.load48 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %s.read.len49 = load i64, ptr %s.read.len, align 8
  %s.read.len50 = and i64 %s.read.len49, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %s.read.data51 = load ptr, ptr %s.read.data, align 8
  %var.load52 = load i64, ptr %var.idx, align 8
  %rel.start = add i64 %s.read.len50, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len50
  %final.start = select i1 %start.gt.len, i64 %s.read.len50, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load52, 0
  %rel.end = add i64 %s.read.len50, %var.load52
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load52
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len50
  %final.end = select i1 %end.gt.len, i64 %s.read.len50, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data51, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len53 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len53, i64 %view.len)
  %sum54 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf55 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf55, label %str_overflow_abort57, label %b.app.new.len56

choice.exit47:                                    ; preds = %b.grow_done, %b.buf.len43
  %b.load70 = load ptr, ptr %var.b, align 8
  %var.load71 = load ptr, ptr %var.new_s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %app.str.len72 = load i64, ptr %app.str.len, align 8
  %app.str.len73 = and i64 %app.str.len72, 281474976710655
  %str.tag74 = lshr i64 %app.str.len72, 48
  %tag.immortal76 = icmp eq i64 %str.tag74, 0
  %active.gen77 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current78 = icmp eq i64 %str.tag74, %active.gen77
  %tag.fast.ok79 = or i1 %tag.immortal76, %tag.current78
  br i1 %tag.fast.ok79, label %str_ok75, label %tag.slow_check80

b.app.new.len56:                                  ; preds = %abort.dead58, %choice.then46
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap59 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap59, %sum54
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort57:                             ; preds = %choice.then46
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead58:                                     ; No predecessors!
  br label %b.app.new.len56

b.grow2:                                          ; preds = %b.app.new.len56
  %b.cap2 = mul i64 %b.cap59, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum54
  %b.new.cap = select i1 %b.cap.need, i64 %sum54, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len260 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data261 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum62 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf63 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf63, label %str_overflow_abort65, label %b.new.buf.len264

b.nogrow2:                                        ; preds = %b.app.new.len56
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len264
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data68 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data68, i64 %b.app.cur.len53
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data68, i64 %sum54
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum54, ptr %b.len.gep69, align 8
  br label %choice.exit47

b.new.buf.len264:                                 ; preds = %abort.dead66, %b.grow2
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 %sum62)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data261, i64 %b.cur.len260, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len260
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort65:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead66:                                     ; No predecessors!
  br label %b.new.buf.len264

str_ok75:                                         ; preds = %tag.slow_check80, %choice.exit47
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 1
  %app.str.data81 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  %b.app.cur.len83 = load i64, ptr %b.app.cur.len82, align 8
  %b.app.new.len84 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len83, i64 %app.str.len73)
  %sum85 = extractvalue { i64, i1 } %b.app.new.len84, 0
  %ovf86 = extractvalue { i64, i1 } %b.app.new.len84, 1
  br i1 %ovf86, label %str_overflow_abort88, label %b.app.new.len87

tag.slow_check80:                                 ; preds = %choice.exit47
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag74)
  br label %str_ok75

b.app.new.len87:                                  ; preds = %abort.dead89, %str_ok75
  %b.cap90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 2
  %b.cap91 = load i64, ptr %b.cap90, align 8
  %b.need.grow92 = icmp slt i64 %b.cap91, %sum85
  br i1 %b.need.grow92, label %b.grow293, label %b.nogrow294

str_overflow_abort88:                             ; preds = %str_ok75
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead89:                                     ; No predecessors!
  br label %b.app.new.len87

b.grow293:                                        ; preds = %b.app.new.len87
  %b.cap296 = mul i64 %b.cap91, 2
  %b.cap.small97 = icmp slt i64 %b.cap296, 16
  %b.cap.grow98 = select i1 %b.cap.small97, i64 16, i64 %b.cap296
  %b.cap.need99 = icmp slt i64 %b.cap.grow98, %sum85
  %b.new.cap100 = select i1 %b.cap.need99, i64 %sum85, i64 %b.cap.grow98
  %b.cur.len2101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  %b.cur.len2102 = load i64, ptr %b.cur.len2101, align 8
  %b.cur.data2103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  %b.cur.data2104 = load ptr, ptr %b.cur.data2103, align 8
  %b.new.buf.len2105 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap100, i64 1)
  %sum106 = extractvalue { i64, i1 } %b.new.buf.len2105, 0
  %ovf107 = extractvalue { i64, i1 } %b.new.buf.len2105, 1
  br i1 %ovf107, label %str_overflow_abort109, label %b.new.buf.len2108

b.nogrow294:                                      ; preds = %b.app.new.len87
  br label %b.grow_done95

b.grow_done95:                                    ; preds = %b.nogrow294, %b.new.buf.len2108
  %b.app.data116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  %b.app.data117 = load ptr, ptr %b.app.data116, align 8
  %b.app.dst118 = getelementptr i8, ptr %b.app.data117, i64 %b.app.cur.len83
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst118, ptr align 1 %app.str.data81, i64 %app.str.len73, i1 false)
  %b.app.nul119 = getelementptr i8, ptr %b.app.data117, i64 %sum85
  store i8 0, ptr %b.app.nul119, align 1
  %b.len.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 0
  store i64 %sum85, ptr %b.len.gep120, align 8
  %var.load121 = load i64, ptr %var.idx, align 8
  %var.load122 = load i64, ptr %var.lo, align 8
  %addtmp123 = add i64 %var.load121, %var.load122
  store i64 %addtmp123, ptr %var.after, align 8
  %var.load124 = load i64, ptr %var.after, align 8
  %var.load125 = load i64, ptr %var.ls, align 8
  %cmptmp126 = icmp slt i64 %var.load124, %var.load125
  br i1 %cmptmp126, label %choice.then127, label %choice.exit128

b.new.buf.len2108:                                ; preds = %abort.dead110, %b.grow293
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2112 = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 %sum106)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2112, ptr align 1 %b.cur.data2104, i64 %b.cur.len2102, i1 false)
  %b.grow2.nul113 = getelementptr i8, ptr %b.new.buf2112, i64 %b.cur.len2102
  store i8 0, ptr %b.grow2.nul113, align 1
  %b.new.data2.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 1
  store ptr %b.new.buf2112, ptr %b.new.data2.gep114, align 8
  %b.new.cap2.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load70, i32 0, i32 2
  store i64 %b.new.cap100, ptr %b.new.cap2.gep115, align 8
  br label %b.grow_done95

str_overflow_abort109:                            ; preds = %b.grow293
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %b.new.buf.len2108

choice.then127:                                   ; preds = %b.grow_done95
  %b.load129 = load ptr, ptr %var.b, align 8
  %var.load130 = load ptr, ptr %var.s, align 8
  %s.read.len131 = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 0
  %s.read.len132 = load i64, ptr %s.read.len131, align 8
  %s.read.len133 = and i64 %s.read.len132, 281474976710655
  %s.read.data134 = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 1
  %s.read.data135 = load ptr, ptr %s.read.data134, align 8
  %var.load136 = load i64, ptr %var.after, align 8
  %var.load137 = load i64, ptr %var.ls, align 8
  %start.is_neg = icmp slt i64 %var.load136, 0
  %rel.start138 = add i64 %s.read.len133, %var.load136
  %norm.start139 = select i1 %start.is_neg, i64 %rel.start138, i64 %var.load136
  %start.lt.0140 = icmp slt i64 %norm.start139, 0
  %c.start.0141 = select i1 %start.lt.0140, i64 0, i64 %norm.start139
  %start.gt.len142 = icmp sgt i64 %c.start.0141, %s.read.len133
  %final.start143 = select i1 %start.gt.len142, i64 %s.read.len133, i64 %c.start.0141
  %end.is_neg144 = icmp slt i64 %var.load137, 0
  %rel.end145 = add i64 %s.read.len133, %var.load137
  %norm.end146 = select i1 %end.is_neg144, i64 %rel.end145, i64 %var.load137
  %end.lt.0147 = icmp slt i64 %norm.end146, 0
  %c.end.0148 = select i1 %end.lt.0147, i64 0, i64 %norm.end146
  %end.gt.len149 = icmp sgt i64 %c.end.0148, %s.read.len133
  %final.end150 = select i1 %end.gt.len149, i64 %s.read.len133, i64 %c.end.0148
  %view.empty151 = icmp sle i64 %final.end150, %final.start143
  %view.len.sub152 = sub i64 %final.end150, %final.start143
  %view.len153 = select i1 %view.empty151, i64 0, i64 %view.len.sub152
  %view.data154 = getelementptr i8, ptr %s.read.data135, i64 %final.start143
  %b.app.cur.len155 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 0
  %b.app.cur.len156 = load i64, ptr %b.app.cur.len155, align 8
  %b.app.new.len157 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len156, i64 %view.len153)
  %sum158 = extractvalue { i64, i1 } %b.app.new.len157, 0
  %ovf159 = extractvalue { i64, i1 } %b.app.new.len157, 1
  br i1 %ovf159, label %str_overflow_abort161, label %b.app.new.len160

choice.exit128:                                   ; preds = %b.grow_done168, %b.grow_done95
  %var.load194 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 0
  %b.freeze.len195 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 1
  %b.freeze.data196 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.app.new.len160:                                 ; preds = %abort.dead162, %choice.then127
  %b.cap163 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 2
  %b.cap164 = load i64, ptr %b.cap163, align 8
  %b.need.grow165 = icmp slt i64 %b.cap164, %sum158
  br i1 %b.need.grow165, label %b.grow2166, label %b.nogrow2167

str_overflow_abort161:                            ; preds = %choice.then127
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
  %b.cur.len2174 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 0
  %b.cur.len2175 = load i64, ptr %b.cur.len2174, align 8
  %b.cur.data2176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 1
  %b.cur.data2177 = load ptr, ptr %b.cur.data2176, align 8
  %b.new.buf.len2178 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap173, i64 1)
  %sum179 = extractvalue { i64, i1 } %b.new.buf.len2178, 0
  %ovf180 = extractvalue { i64, i1 } %b.new.buf.len2178, 1
  br i1 %ovf180, label %str_overflow_abort182, label %b.new.buf.len2181

b.nogrow2167:                                     ; preds = %b.app.new.len160
  br label %b.grow_done168

b.grow_done168:                                   ; preds = %b.nogrow2167, %b.new.buf.len2181
  %b.app.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 1
  %b.app.data190 = load ptr, ptr %b.app.data189, align 8
  %b.app.dst191 = getelementptr i8, ptr %b.app.data190, i64 %b.app.cur.len156
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst191, ptr align 1 %view.data154, i64 %view.len153, i1 false)
  %b.app.nul192 = getelementptr i8, ptr %b.app.data190, i64 %sum158
  store i8 0, ptr %b.app.nul192, align 1
  %b.len.gep193 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 0
  store i64 %sum158, ptr %b.len.gep193, align 8
  br label %choice.exit128

b.new.buf.len2181:                                ; preds = %abort.dead183, %b.grow2166
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 %sum179)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2185, ptr align 1 %b.cur.data2177, i64 %b.cur.len2175, i1 false)
  %b.grow2.nul186 = getelementptr i8, ptr %b.new.buf2185, i64 %b.cur.len2175
  store i8 0, ptr %b.grow2.nul186, align 1
  %b.new.data2.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 1
  store ptr %b.new.buf2185, ptr %b.new.data2.gep187, align 8
  %b.new.cap2.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load129, i32 0, i32 2
  store i64 %b.new.cap173, ptr %b.new.cap2.gep188, align 8
  br label %b.grow_done168

str_overflow_abort182:                            ; preds = %b.grow2166
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead183:                                    ; No predecessors!
  br label %b.new.buf.len2181

b.freeze.check:                                   ; preds = %choice.exit128
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data196, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data196, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data196, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len195, 1
  %arena.cur197 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur197, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data196, i64 %b.freeze.len195, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len195
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit128
  %b.freeze.data198 = phi ptr [ %b.freeze.data196, %choice.exit128 ], [ %b.freeze.data196, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur199 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len195, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data198, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load194, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit7
}

define { i64, ptr } @"str::replace"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.idx = alloca i64, align 8
  %var._118 = alloca i64, align 8
  %var._103 = alloca i64, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.lo, align 8
  %var.load3 = load i64, ptr %var.lo, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
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
  %active.gen12 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current13 = icmp eq i64 %str.tag9, %active.gen12
  %tag.fast.ok14 = or i1 %tag.immortal11, %tag.current13
  br i1 %tag.fast.ok14, label %str_ok10, label %tag.slow_check15

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str_ok10:                                         ; preds = %tag.slow_check15, %choice.exit
  store i64 %str.len.query8, ptr %var.ls, align 8
  %var.load16 = load ptr, ptr %var.s, align 8
  %var.load17 = load ptr, ptr %var.old, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load16, ptr %var.load17)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then18, label %choice.else

tag.slow_check15:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag9)
  br label %str_ok10

choice.then18:                                    ; preds = %str_ok10
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.first_idx, align 8
  %var.load20 = load i64, ptr %var.ls, align 8
  %addtmp = add i64 %var.load20, 16
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
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len21

choice.else:                                      ; preds = %str_ok10
  %var.load310 = load ptr, ptr %var.s, align 8
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else, %b.freeze.done
  %choice.res = phi ptr [ %builder.freeze, %b.freeze.done ], [ %var.load310, %choice.else ]
  %ret.pack311 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack311

b.buf.len21:                                      ; preds = %abort.dead, %choice.then18
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load23 = load i64, ptr %var.first_idx, align 8
  %cmptmp24 = icmp sgt i64 %var.load23, 0
  br i1 %cmptmp24, label %choice.then25, label %choice.exit26

str_overflow_abort:                               ; preds = %choice.then18
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len21

choice.then25:                                    ; preds = %b.buf.len21
  %b.load = load ptr, ptr %var.b, align 8
  %var.load27 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  %var.load31 = load i64, ptr %var.first_idx, align 8
  %rel.start = add i64 %s.read.len29, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len29
  %final.start = select i1 %start.gt.len, i64 %s.read.len29, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load31, 0
  %rel.end = add i64 %s.read.len29, %var.load31
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load31
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len29
  %final.end = select i1 %end.gt.len, i64 %s.read.len29, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data30, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len32 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len32, i64 %view.len)
  %sum33 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf34 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %b.app.new.len35

choice.exit26:                                    ; preds = %b.grow_done, %b.buf.len21
  %b.load49 = load ptr, ptr %var.b, align 8
  %var.load50 = load ptr, ptr %var.new_s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %app.str.len51 = load i64, ptr %app.str.len, align 8
  %app.str.len52 = and i64 %app.str.len51, 281474976710655
  %str.tag53 = lshr i64 %app.str.len51, 48
  %tag.immortal55 = icmp eq i64 %str.tag53, 0
  %active.gen56 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current57 = icmp eq i64 %str.tag53, %active.gen56
  %tag.fast.ok58 = or i1 %tag.immortal55, %tag.current57
  br i1 %tag.fast.ok58, label %str_ok54, label %tag.slow_check59

b.app.new.len35:                                  ; preds = %abort.dead37, %choice.then25
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap38 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap38, %sum33
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort36:                             ; preds = %choice.then25
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %b.app.new.len35

b.grow2:                                          ; preds = %b.app.new.len35
  %b.cap2 = mul i64 %b.cap38, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum33
  %b.new.cap = select i1 %b.cap.need, i64 %sum33, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len239 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data240 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len243

b.nogrow2:                                        ; preds = %b.app.new.len35
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len243
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data47 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data47, i64 %b.app.cur.len32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data47, i64 %sum33
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum33, ptr %b.len.gep48, align 8
  br label %choice.exit26

b.new.buf.len243:                                 ; preds = %abort.dead45, %b.grow2
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data240, i64 %b.cur.len239, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len239
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort44:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %b.new.buf.len243

str_ok54:                                         ; preds = %tag.slow_check59, %choice.exit26
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %app.str.data60 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 0
  %b.app.cur.len62 = load i64, ptr %b.app.cur.len61, align 8
  %b.app.new.len63 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len62, i64 %app.str.len52)
  %sum64 = extractvalue { i64, i1 } %b.app.new.len63, 0
  %ovf65 = extractvalue { i64, i1 } %b.app.new.len63, 1
  br i1 %ovf65, label %str_overflow_abort67, label %b.app.new.len66

tag.slow_check59:                                 ; preds = %choice.exit26
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag53)
  br label %str_ok54

b.app.new.len66:                                  ; preds = %abort.dead68, %str_ok54
  %b.cap69 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 2
  %b.cap70 = load i64, ptr %b.cap69, align 8
  %b.need.grow71 = icmp slt i64 %b.cap70, %sum64
  br i1 %b.need.grow71, label %b.grow272, label %b.nogrow273

str_overflow_abort67:                             ; preds = %str_ok54
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead68:                                     ; No predecessors!
  br label %b.app.new.len66

b.grow272:                                        ; preds = %b.app.new.len66
  %b.cap275 = mul i64 %b.cap70, 2
  %b.cap.small76 = icmp slt i64 %b.cap275, 16
  %b.cap.grow77 = select i1 %b.cap.small76, i64 16, i64 %b.cap275
  %b.cap.need78 = icmp slt i64 %b.cap.grow77, %sum64
  %b.new.cap79 = select i1 %b.cap.need78, i64 %sum64, i64 %b.cap.grow77
  %b.cur.len280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 0
  %b.cur.len281 = load i64, ptr %b.cur.len280, align 8
  %b.cur.data282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 1
  %b.cur.data283 = load ptr, ptr %b.cur.data282, align 8
  %b.new.buf.len284 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap79, i64 1)
  %sum85 = extractvalue { i64, i1 } %b.new.buf.len284, 0
  %ovf86 = extractvalue { i64, i1 } %b.new.buf.len284, 1
  br i1 %ovf86, label %str_overflow_abort88, label %b.new.buf.len287

b.nogrow273:                                      ; preds = %b.app.new.len66
  br label %b.grow_done74

b.grow_done74:                                    ; preds = %b.nogrow273, %b.new.buf.len287
  %b.app.data95 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 1
  %b.app.data96 = load ptr, ptr %b.app.data95, align 8
  %b.app.dst97 = getelementptr i8, ptr %b.app.data96, i64 %b.app.cur.len62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst97, ptr align 1 %app.str.data60, i64 %app.str.len52, i1 false)
  %b.app.nul98 = getelementptr i8, ptr %b.app.data96, i64 %sum64
  store i8 0, ptr %b.app.nul98, align 1
  %b.len.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 0
  store i64 %sum64, ptr %b.len.gep99, align 8
  %var.load100 = load i64, ptr %var.first_idx, align 8
  %var.load101 = load i64, ptr %var.lo, align 8
  %addtmp102 = add i64 %var.load100, %var.load101
  store i64 %addtmp102, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.101, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  br label %loop.header.101

b.new.buf.len287:                                 ; preds = %abort.dead89, %b.grow272
  %arena.cur90 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf291 = call ptr @dva_arena_alloc(ptr %arena.cur90, i64 %sum85)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf291, ptr align 1 %b.cur.data283, i64 %b.cur.len281, i1 false)
  %b.grow2.nul92 = getelementptr i8, ptr %b.new.buf291, i64 %b.cur.len281
  store i8 0, ptr %b.grow2.nul92, align 1
  %b.new.data2.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 1
  store ptr %b.new.buf291, ptr %b.new.data2.gep93, align 8
  %b.new.cap2.gep94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 2
  store i64 %b.new.cap79, ptr %b.new.cap2.gep94, align 8
  br label %b.grow_done74

str_overflow_abort88:                             ; preds = %b.grow272
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead89:                                     ; No predecessors!
  br label %b.new.buf.len287

loop.header.101:                                  ; preds = %loop.latch.101, %b.grow_done74
  %counter.load = load i64, ptr %loop.idx.101, align 8
  br label %loop.body.101

loop.body.101:                                    ; preds = %loop.header.101
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.101, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._103, align 8
  %var.load104 = load i64, ptr %"var.pos'", align 8
  %var.load105 = load i64, ptr %var.ls, align 8
  %cmptmp106 = icmp sge i64 %var.load104, %var.load105
  br i1 %cmptmp106, label %choice.then107, label %choice.exit108

loop.exit.nat.101:                                ; No predecessors!
  br label %loop.exit.101

loop.latch.101:                                   ; preds = %choice.exit116
  %step.val = load i64, ptr %loop.step.101, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.101, align 8
  br label %loop.header.101

loop.exit.101:                                    ; preds = %b.grow_done278, %choice.then107, %loop.exit.nat.101
  store i64 %cycle.prev.u, ptr %var._, align 8
  %var.load304 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 0
  %b.freeze.len305 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load304, i32 0, i32 1
  %b.freeze.data306 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.then107:                                   ; preds = %loop.body.101
  br label %loop.exit.101

choice.exit108:                                   ; preds = %loop.body.101
  %var.load109 = load ptr, ptr %var.s, align 8
  %var.load110 = load ptr, ptr %var.old, align 8
  %var.load111 = load i64, ptr %"var.pos'", align 8
  %call.res112 = call { i1, i64 } @"str::find_from"(ptr %var.load109, ptr %var.load110, i64 %var.load111)
  %ram.tag113 = extractvalue { i1, i64 } %call.res112, 0
  br i1 %ram.tag113, label %choice.then114, label %choice.else115

choice.then114:                                   ; preds = %choice.exit108
  %ram.pay117 = extractvalue { i1, i64 } %call.res112, 1
  store i64 %ram.pay117, ptr %var._118, align 8
  store i64 %ram.pay117, ptr %var.idx, align 8
  %var.load119 = load i64, ptr %var.idx, align 8
  %var.load120 = load i64, ptr %"var.pos'", align 8
  %cmptmp121 = icmp sgt i64 %var.load119, %var.load120
  br i1 %cmptmp121, label %choice.then122, label %choice.exit123

choice.else115:                                   ; preds = %choice.exit108
  %b.load238 = load ptr, ptr %var.b, align 8
  %var.load239 = load ptr, ptr %var.s, align 8
  %s.read.len240 = getelementptr inbounds { i64, ptr }, ptr %var.load239, i32 0, i32 0
  %s.read.len241 = load i64, ptr %s.read.len240, align 8
  %s.read.len242 = and i64 %s.read.len241, 281474976710655
  %s.read.data243 = getelementptr inbounds { i64, ptr }, ptr %var.load239, i32 0, i32 1
  %s.read.data244 = load ptr, ptr %s.read.data243, align 8
  %var.load245 = load i64, ptr %"var.pos'", align 8
  %var.load246 = load i64, ptr %var.ls, align 8
  %start.is_neg247 = icmp slt i64 %var.load245, 0
  %rel.start248 = add i64 %s.read.len242, %var.load245
  %norm.start249 = select i1 %start.is_neg247, i64 %rel.start248, i64 %var.load245
  %start.lt.0250 = icmp slt i64 %norm.start249, 0
  %c.start.0251 = select i1 %start.lt.0250, i64 0, i64 %norm.start249
  %start.gt.len252 = icmp sgt i64 %c.start.0251, %s.read.len242
  %final.start253 = select i1 %start.gt.len252, i64 %s.read.len242, i64 %c.start.0251
  %end.is_neg254 = icmp slt i64 %var.load246, 0
  %rel.end255 = add i64 %s.read.len242, %var.load246
  %norm.end256 = select i1 %end.is_neg254, i64 %rel.end255, i64 %var.load246
  %end.lt.0257 = icmp slt i64 %norm.end256, 0
  %c.end.0258 = select i1 %end.lt.0257, i64 0, i64 %norm.end256
  %end.gt.len259 = icmp sgt i64 %c.end.0258, %s.read.len242
  %final.end260 = select i1 %end.gt.len259, i64 %s.read.len242, i64 %c.end.0258
  %view.empty261 = icmp sle i64 %final.end260, %final.start253
  %view.len.sub262 = sub i64 %final.end260, %final.start253
  %view.len263 = select i1 %view.empty261, i64 0, i64 %view.len.sub262
  %view.data264 = getelementptr i8, ptr %s.read.data244, i64 %final.start253
  %b.app.cur.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load238, i32 0, i32 0
  %b.app.cur.len266 = load i64, ptr %b.app.cur.len265, align 8
  %b.app.new.len267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len266, i64 %view.len263)
  %sum268 = extractvalue { i64, i1 } %b.app.new.len267, 0
  %ovf269 = extractvalue { i64, i1 } %b.app.new.len267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %b.app.new.len270

choice.exit116:                                   ; preds = %b.grow_done209
  br label %loop.latch.101

choice.then122:                                   ; preds = %choice.then114
  %b.load124 = load ptr, ptr %var.b, align 8
  %var.load125 = load ptr, ptr %var.s, align 8
  %s.read.len126 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %s.read.len127 = load i64, ptr %s.read.len126, align 8
  %s.read.len128 = and i64 %s.read.len127, 281474976710655
  %s.read.data129 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 1
  %s.read.data130 = load ptr, ptr %s.read.data129, align 8
  %var.load131 = load i64, ptr %"var.pos'", align 8
  %var.load132 = load i64, ptr %var.idx, align 8
  %start.is_neg = icmp slt i64 %var.load131, 0
  %rel.start133 = add i64 %s.read.len128, %var.load131
  %norm.start134 = select i1 %start.is_neg, i64 %rel.start133, i64 %var.load131
  %start.lt.0135 = icmp slt i64 %norm.start134, 0
  %c.start.0136 = select i1 %start.lt.0135, i64 0, i64 %norm.start134
  %start.gt.len137 = icmp sgt i64 %c.start.0136, %s.read.len128
  %final.start138 = select i1 %start.gt.len137, i64 %s.read.len128, i64 %c.start.0136
  %end.is_neg139 = icmp slt i64 %var.load132, 0
  %rel.end140 = add i64 %s.read.len128, %var.load132
  %norm.end141 = select i1 %end.is_neg139, i64 %rel.end140, i64 %var.load132
  %end.lt.0142 = icmp slt i64 %norm.end141, 0
  %c.end.0143 = select i1 %end.lt.0142, i64 0, i64 %norm.end141
  %end.gt.len144 = icmp sgt i64 %c.end.0143, %s.read.len128
  %final.end145 = select i1 %end.gt.len144, i64 %s.read.len128, i64 %c.end.0143
  %view.empty146 = icmp sle i64 %final.end145, %final.start138
  %view.len.sub147 = sub i64 %final.end145, %final.start138
  %view.len148 = select i1 %view.empty146, i64 0, i64 %view.len.sub147
  %view.data149 = getelementptr i8, ptr %s.read.data130, i64 %final.start138
  %b.app.cur.len150 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  %b.app.cur.len151 = load i64, ptr %b.app.cur.len150, align 8
  %b.app.new.len152 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len151, i64 %view.len148)
  %sum153 = extractvalue { i64, i1 } %b.app.new.len152, 0
  %ovf154 = extractvalue { i64, i1 } %b.app.new.len152, 1
  br i1 %ovf154, label %str_overflow_abort156, label %b.app.new.len155

choice.exit123:                                   ; preds = %b.grow_done163, %choice.then114
  %b.load189 = load ptr, ptr %var.b, align 8
  %var.load190 = load ptr, ptr %var.new_s, align 8
  %app.str.len191 = getelementptr inbounds { i64, ptr }, ptr %var.load190, i32 0, i32 0
  %app.str.len192 = load i64, ptr %app.str.len191, align 8
  %app.str.len193 = and i64 %app.str.len192, 281474976710655
  %app.str.data194 = getelementptr inbounds { i64, ptr }, ptr %var.load190, i32 0, i32 1
  %app.str.data195 = load ptr, ptr %app.str.data194, align 8
  %b.app.cur.len196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load189, i32 0, i32 0
  %b.app.cur.len197 = load i64, ptr %b.app.cur.len196, align 8
  %b.app.new.len198 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len197, i64 %app.str.len193)
  %sum199 = extractvalue { i64, i1 } %b.app.new.len198, 0
  %ovf200 = extractvalue { i64, i1 } %b.app.new.len198, 1
  br i1 %ovf200, label %str_overflow_abort202, label %b.app.new.len201

b.app.new.len155:                                 ; preds = %abort.dead157, %choice.then122
  %b.cap158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 2
  %b.cap159 = load i64, ptr %b.cap158, align 8
  %b.need.grow160 = icmp slt i64 %b.cap159, %sum153
  br i1 %b.need.grow160, label %b.grow2161, label %b.nogrow2162

str_overflow_abort156:                            ; preds = %choice.then122
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead157:                                    ; No predecessors!
  br label %b.app.new.len155

b.grow2161:                                       ; preds = %b.app.new.len155
  %b.cap2164 = mul i64 %b.cap159, 2
  %b.cap.small165 = icmp slt i64 %b.cap2164, 16
  %b.cap.grow166 = select i1 %b.cap.small165, i64 16, i64 %b.cap2164
  %b.cap.need167 = icmp slt i64 %b.cap.grow166, %sum153
  %b.new.cap168 = select i1 %b.cap.need167, i64 %sum153, i64 %b.cap.grow166
  %b.cur.len2169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  %b.cur.len2170 = load i64, ptr %b.cur.len2169, align 8
  %b.cur.data2171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  %b.cur.data2172 = load ptr, ptr %b.cur.data2171, align 8
  %b.new.buf.len2173 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap168, i64 1)
  %sum174 = extractvalue { i64, i1 } %b.new.buf.len2173, 0
  %ovf175 = extractvalue { i64, i1 } %b.new.buf.len2173, 1
  br i1 %ovf175, label %str_overflow_abort177, label %b.new.buf.len2176

b.nogrow2162:                                     ; preds = %b.app.new.len155
  br label %b.grow_done163

b.grow_done163:                                   ; preds = %b.nogrow2162, %b.new.buf.len2176
  %b.app.data184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  %b.app.data185 = load ptr, ptr %b.app.data184, align 8
  %b.app.dst186 = getelementptr i8, ptr %b.app.data185, i64 %b.app.cur.len151
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst186, ptr align 1 %view.data149, i64 %view.len148, i1 false)
  %b.app.nul187 = getelementptr i8, ptr %b.app.data185, i64 %sum153
  store i8 0, ptr %b.app.nul187, align 1
  %b.len.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  store i64 %sum153, ptr %b.len.gep188, align 8
  br label %choice.exit123

b.new.buf.len2176:                                ; preds = %abort.dead178, %b.grow2161
  %arena.cur179 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2180 = call ptr @dva_arena_alloc(ptr %arena.cur179, i64 %sum174)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2180, ptr align 1 %b.cur.data2172, i64 %b.cur.len2170, i1 false)
  %b.grow2.nul181 = getelementptr i8, ptr %b.new.buf2180, i64 %b.cur.len2170
  store i8 0, ptr %b.grow2.nul181, align 1
  %b.new.data2.gep182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  store ptr %b.new.buf2180, ptr %b.new.data2.gep182, align 8
  %b.new.cap2.gep183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 2
  store i64 %b.new.cap168, ptr %b.new.cap2.gep183, align 8
  br label %b.grow_done163

str_overflow_abort177:                            ; preds = %b.grow2161
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead178:                                    ; No predecessors!
  br label %b.new.buf.len2176

b.app.new.len201:                                 ; preds = %abort.dead203, %choice.exit123
  %b.cap204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load189, i32 0, i32 2
  %b.cap205 = load i64, ptr %b.cap204, align 8
  %b.need.grow206 = icmp slt i64 %b.cap205, %sum199
  br i1 %b.need.grow206, label %b.grow2207, label %b.nogrow2208

str_overflow_abort202:                            ; preds = %choice.exit123
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
  %b.cur.len2215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load189, i32 0, i32 0
  %b.cur.len2216 = load i64, ptr %b.cur.len2215, align 8
  %b.cur.data2217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load189, i32 0, i32 1
  %b.cur.data2218 = load ptr, ptr %b.cur.data2217, align 8
  %b.new.buf.len2219 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap214, i64 1)
  %sum220 = extractvalue { i64, i1 } %b.new.buf.len2219, 0
  %ovf221 = extractvalue { i64, i1 } %b.new.buf.len2219, 1
  br i1 %ovf221, label %str_overflow_abort223, label %b.new.buf.len2222

b.nogrow2208:                                     ; preds = %b.app.new.len201
  br label %b.grow_done209

b.grow_done209:                                   ; preds = %b.nogrow2208, %b.new.buf.len2222
  %b.app.data230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load189, i32 0, i32 1
  %b.app.data231 = load ptr, ptr %b.app.data230, align 8
  %b.app.dst232 = getelementptr i8, ptr %b.app.data231, i64 %b.app.cur.len197
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst232, ptr align 1 %app.str.data195, i64 %app.str.len193, i1 false)
  %b.app.nul233 = getelementptr i8, ptr %b.app.data231, i64 %sum199
  store i8 0, ptr %b.app.nul233, align 1
  %b.len.gep234 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load189, i32 0, i32 0
  store i64 %sum199, ptr %b.len.gep234, align 8
  %var.load235 = load i64, ptr %var.idx, align 8
  %var.load236 = load i64, ptr %var.lo, align 8
  %addtmp237 = add i64 %var.load235, %var.load236
  store i64 %addtmp237, ptr %"var.pos'", align 8
  br label %choice.exit116

b.new.buf.len2222:                                ; preds = %abort.dead224, %b.grow2207
  %arena.cur225 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 %sum220)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2226, ptr align 1 %b.cur.data2218, i64 %b.cur.len2216, i1 false)
  %b.grow2.nul227 = getelementptr i8, ptr %b.new.buf2226, i64 %b.cur.len2216
  store i8 0, ptr %b.grow2.nul227, align 1
  %b.new.data2.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load189, i32 0, i32 1
  store ptr %b.new.buf2226, ptr %b.new.data2.gep228, align 8
  %b.new.cap2.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load189, i32 0, i32 2
  store i64 %b.new.cap214, ptr %b.new.cap2.gep229, align 8
  br label %b.grow_done209

str_overflow_abort223:                            ; preds = %b.grow2207
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead224:                                    ; No predecessors!
  br label %b.new.buf.len2222

b.app.new.len270:                                 ; preds = %abort.dead272, %choice.else115
  %b.cap273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load238, i32 0, i32 2
  %b.cap274 = load i64, ptr %b.cap273, align 8
  %b.need.grow275 = icmp slt i64 %b.cap274, %sum268
  br i1 %b.need.grow275, label %b.grow2276, label %b.nogrow2277

str_overflow_abort271:                            ; preds = %choice.else115
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead272:                                    ; No predecessors!
  br label %b.app.new.len270

b.grow2276:                                       ; preds = %b.app.new.len270
  %b.cap2279 = mul i64 %b.cap274, 2
  %b.cap.small280 = icmp slt i64 %b.cap2279, 16
  %b.cap.grow281 = select i1 %b.cap.small280, i64 16, i64 %b.cap2279
  %b.cap.need282 = icmp slt i64 %b.cap.grow281, %sum268
  %b.new.cap283 = select i1 %b.cap.need282, i64 %sum268, i64 %b.cap.grow281
  %b.cur.len2284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load238, i32 0, i32 0
  %b.cur.len2285 = load i64, ptr %b.cur.len2284, align 8
  %b.cur.data2286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load238, i32 0, i32 1
  %b.cur.data2287 = load ptr, ptr %b.cur.data2286, align 8
  %b.new.buf.len2288 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap283, i64 1)
  %sum289 = extractvalue { i64, i1 } %b.new.buf.len2288, 0
  %ovf290 = extractvalue { i64, i1 } %b.new.buf.len2288, 1
  br i1 %ovf290, label %str_overflow_abort292, label %b.new.buf.len2291

b.nogrow2277:                                     ; preds = %b.app.new.len270
  br label %b.grow_done278

b.grow_done278:                                   ; preds = %b.nogrow2277, %b.new.buf.len2291
  %b.app.data299 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load238, i32 0, i32 1
  %b.app.data300 = load ptr, ptr %b.app.data299, align 8
  %b.app.dst301 = getelementptr i8, ptr %b.app.data300, i64 %b.app.cur.len266
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst301, ptr align 1 %view.data264, i64 %view.len263, i1 false)
  %b.app.nul302 = getelementptr i8, ptr %b.app.data300, i64 %sum268
  store i8 0, ptr %b.app.nul302, align 1
  %b.len.gep303 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load238, i32 0, i32 0
  store i64 %sum268, ptr %b.len.gep303, align 8
  br label %loop.exit.101

b.new.buf.len2291:                                ; preds = %abort.dead293, %b.grow2276
  %arena.cur294 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2295 = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 %sum289)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2295, ptr align 1 %b.cur.data2287, i64 %b.cur.len2285, i1 false)
  %b.grow2.nul296 = getelementptr i8, ptr %b.new.buf2295, i64 %b.cur.len2285
  store i8 0, ptr %b.grow2.nul296, align 1
  %b.new.data2.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load238, i32 0, i32 1
  store ptr %b.new.buf2295, ptr %b.new.data2.gep297, align 8
  %b.new.cap2.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load238, i32 0, i32 2
  store i64 %b.new.cap283, ptr %b.new.cap2.gep298, align 8
  br label %b.grow_done278

str_overflow_abort292:                            ; preds = %b.grow2276
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead293:                                    ; No predecessors!
  br label %b.new.buf.len2291

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data306, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data306, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data306, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len305, 1
  %arena.cur307 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data306, i64 %b.freeze.len305, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len305
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.101
  %b.freeze.data308 = phi ptr [ %b.freeze.data306, %loop.exit.101 ], [ %b.freeze.data306, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur309 = load ptr, ptr @dva_active_arena_tls, align 8
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
  br label %choice.exit19
}

define { i1, i64 } @"str::parse_int"(ptr %0) #0 {
entry:
  %var.d238 = alloca ptr, align 8
  %var._237 = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var._196 = alloca i64, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
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
  store i64 %str.len.query3, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %str_ok
  %var.load5 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 0, %s.read.len7
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp eq i64 %s.byte.val, 45
  store i1 %cmptmp9, ptr %var.neg, align 1
  %var.load10 = load i1, ptr %var.neg, align 1
  br i1 %var.load10, label %or.102.then, label %or.102.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

or.102.then:                                      ; preds = %idx_ok
  br label %or.102.exit

or.102.else:                                      ; preds = %idx_ok
  %var.load11 = load ptr, ptr %var.s, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  br i1 false, label %idx_oob19, label %idx_big_check17

or.102.exit:                                      ; preds = %idx_ok18, %or.102.then
  %or.102.phi = phi i1 [ %var.load10, %or.102.then ], [ %cmptmp25, %idx_ok18 ]
  store i1 %or.102.phi, ptr %var.has_sign, align 1
  %var.load26 = load i1, ptr %var.has_sign, align 1
  br i1 %var.load26, label %choice.then27, label %choice.else

idx_big_check17:                                  ; preds = %or.102.else
  %idx.big20 = icmp sge i64 0, %s.read.len14
  br i1 %idx.big20, label %idx_oob19, label %idx_ok18

idx_ok18:                                         ; preds = %abort.dead21, %idx_big_check17
  %s.byte.gep22 = getelementptr i8, ptr %s.read.data16, i64 0
  %s.byte23 = load i8, ptr %s.byte.gep22, align 1
  %s.byte.val24 = zext i8 %s.byte23 to i64
  %cmptmp25 = icmp eq i64 %s.byte.val24, 43
  br label %or.102.exit

idx_oob19:                                        ; preds = %idx_big_check17, %or.102.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %idx_ok18

choice.then27:                                    ; preds = %or.102.exit
  br label %choice.exit28

choice.else:                                      ; preds = %or.102.exit
  br label %choice.exit28

choice.exit28:                                    ; preds = %choice.else, %choice.then27
  %choice.res = phi i64 [ 1, %choice.then27 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.start, align 8
  %var.load29 = load i64, ptr %var.start, align 8
  %var.load30 = load i64, ptr %var.len, align 8
  %cmptmp31 = icmp sge i64 %var.load29, %var.load30
  br i1 %cmptmp31, label %choice.then32, label %choice.exit33

choice.then32:                                    ; preds = %choice.exit28
  ret { i1, i64 } zeroinitializer

choice.exit33:                                    ; preds = %ret.dead34, %choice.exit28
  %var.load35 = load ptr, ptr %var.s, align 8
  %s.read.len36 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %s.read.len37 = load i64, ptr %s.read.len36, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %s.read.data39 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data39, align 8
  %var.load41 = load i64, ptr %var.start, align 8
  %var.load42 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load41, 0
  %rel.start = add i64 %s.read.len38, %var.load41
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load41
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len38
  %final.start = select i1 %start.gt.len, i64 %s.read.len38, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load42, 0
  %rel.end = add i64 %s.read.len38, %var.load42
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load42
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len38
  %final.end = select i1 %end.gt.len, i64 %s.read.len38, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data40, i64 %final.start
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.body, align 8
  %var.load44 = load ptr, ptr %var.body, align 8
  %str.len.query45 = getelementptr inbounds { i64, ptr }, ptr %var.load44, i32 0, i32 0
  %str.len.query46 = load i64, ptr %str.len.query45, align 8
  %str.len.query47 = and i64 %str.len.query46, 281474976710655
  %str.tag48 = lshr i64 %str.len.query46, 48
  %tag.immortal50 = icmp eq i64 %str.tag48, 0
  %active.gen51 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current52 = icmp eq i64 %str.tag48, %active.gen51
  %tag.fast.ok53 = or i1 %tag.immortal50, %tag.current52
  br i1 %tag.fast.ok53, label %str_ok49, label %tag.slow_check54

ret.dead34:                                       ; No predecessors!
  br label %choice.exit33

str_ok49:                                         ; preds = %tag.slow_check54, %choice.exit33
  store i64 %str.len.query47, ptr %var.lbody, align 8
  %var.load55 = load i64, ptr %var.lbody, align 8
  %cmptmp56 = icmp sgt i64 %var.load55, 2
  br i1 %cmptmp56, label %and.103.then, label %and.103.else

tag.slow_check54:                                 ; preds = %choice.exit33
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag48)
  br label %str_ok49

and.103.then:                                     ; preds = %str_ok49
  %var.load57 = load ptr, ptr %var.body, align 8
  %s.read.len58 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %s.read.len59 = load i64, ptr %s.read.len58, align 8
  %s.read.len60 = and i64 %s.read.len59, 281474976710655
  %s.read.data61 = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %s.read.data62 = load ptr, ptr %s.read.data61, align 8
  br i1 false, label %idx_oob65, label %idx_big_check63

and.103.else:                                     ; preds = %str_ok49
  br label %and.103.exit

and.103.exit:                                     ; preds = %and.103.else, %idx_ok64
  %and.103.phi = phi i1 [ %cmptmp71, %idx_ok64 ], [ %cmptmp56, %and.103.else ]
  br i1 %and.103.phi, label %and.104.then, label %and.104.else

idx_big_check63:                                  ; preds = %and.103.then
  %idx.big66 = icmp sge i64 0, %s.read.len60
  br i1 %idx.big66, label %idx_oob65, label %idx_ok64

idx_ok64:                                         ; preds = %abort.dead67, %idx_big_check63
  %s.byte.gep68 = getelementptr i8, ptr %s.read.data62, i64 0
  %s.byte69 = load i8, ptr %s.byte.gep68, align 1
  %s.byte.val70 = zext i8 %s.byte69 to i64
  %cmptmp71 = icmp eq i64 %s.byte.val70, 48
  br label %and.103.exit

idx_oob65:                                        ; preds = %idx_big_check63, %and.103.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead67:                                     ; No predecessors!
  br label %idx_ok64

and.104.then:                                     ; preds = %and.103.exit
  %var.load72 = load ptr, ptr %var.body, align 8
  %s.read.len73 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 0
  %s.read.len74 = load i64, ptr %s.read.len73, align 8
  %s.read.len75 = and i64 %s.read.len74, 281474976710655
  %s.read.data76 = getelementptr inbounds { i64, ptr }, ptr %var.load72, i32 0, i32 1
  %s.read.data77 = load ptr, ptr %s.read.data76, align 8
  br i1 false, label %idx_oob80, label %idx_big_check78

and.104.else:                                     ; preds = %and.103.exit
  br label %and.104.exit

and.104.exit:                                     ; preds = %and.104.else, %choice.exit86
  %and.104.phi = phi i1 [ %choice.res88, %choice.exit86 ], [ %and.103.phi, %and.104.else ]
  store i1 %and.104.phi, ptr %var.is_hex_pfx, align 1
  %var.load89 = load i64, ptr %var.lbody, align 8
  %cmptmp90 = icmp sgt i64 %var.load89, 2
  br i1 %cmptmp90, label %and.105.then, label %and.105.else

idx_big_check78:                                  ; preds = %and.104.then
  %idx.big81 = icmp sge i64 1, %s.read.len75
  br i1 %idx.big81, label %idx_oob80, label %idx_ok79

idx_ok79:                                         ; preds = %abort.dead82, %idx_big_check78
  %s.byte.gep83 = getelementptr i8, ptr %s.read.data77, i64 1
  %s.byte84 = load i8, ptr %s.byte.gep83, align 1
  %s.byte.val85 = zext i8 %s.byte84 to i64
  %val.match = icmp eq i64 %s.byte.val85, 120
  %val.match87 = icmp eq i64 %s.byte.val85, 88
  %case.or = or i1 %val.match, %val.match87
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob80:                                        ; preds = %idx_big_check78, %and.104.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %idx_ok79

choice.exit86:                                    ; preds = %choice.next, %choice.case
  %choice.res88 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.104.exit

choice.case:                                      ; preds = %idx_ok79
  br label %choice.exit86

choice.next:                                      ; preds = %idx_ok79
  br label %choice.exit86

and.105.then:                                     ; preds = %and.104.exit
  %var.load91 = load ptr, ptr %var.body, align 8
  %s.read.len92 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 0
  %s.read.len93 = load i64, ptr %s.read.len92, align 8
  %s.read.len94 = and i64 %s.read.len93, 281474976710655
  %s.read.data95 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 1
  %s.read.data96 = load ptr, ptr %s.read.data95, align 8
  br i1 false, label %idx_oob99, label %idx_big_check97

and.105.else:                                     ; preds = %and.104.exit
  br label %and.105.exit

and.105.exit:                                     ; preds = %and.105.else, %idx_ok98
  %and.105.phi = phi i1 [ %cmptmp105, %idx_ok98 ], [ %cmptmp90, %and.105.else ]
  br i1 %and.105.phi, label %and.106.then, label %and.106.else

idx_big_check97:                                  ; preds = %and.105.then
  %idx.big100 = icmp sge i64 0, %s.read.len94
  br i1 %idx.big100, label %idx_oob99, label %idx_ok98

idx_ok98:                                         ; preds = %abort.dead101, %idx_big_check97
  %s.byte.gep102 = getelementptr i8, ptr %s.read.data96, i64 0
  %s.byte103 = load i8, ptr %s.byte.gep102, align 1
  %s.byte.val104 = zext i8 %s.byte103 to i64
  %cmptmp105 = icmp eq i64 %s.byte.val104, 48
  br label %and.105.exit

idx_oob99:                                        ; preds = %idx_big_check97, %and.105.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead101:                                    ; No predecessors!
  br label %idx_ok98

and.106.then:                                     ; preds = %and.105.exit
  %var.load106 = load ptr, ptr %var.body, align 8
  %s.read.len107 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 0
  %s.read.len108 = load i64, ptr %s.read.len107, align 8
  %s.read.len109 = and i64 %s.read.len108, 281474976710655
  %s.read.data110 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 1
  %s.read.data111 = load ptr, ptr %s.read.data110, align 8
  br i1 false, label %idx_oob114, label %idx_big_check112

and.106.else:                                     ; preds = %and.105.exit
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %choice.exit120
  %and.106.phi = phi i1 [ %choice.res126, %choice.exit120 ], [ %and.105.phi, %and.106.else ]
  store i1 %and.106.phi, ptr %var.is_bin_pfx, align 1
  %var.load127 = load i1, ptr %var.is_hex_pfx, align 1
  br i1 %var.load127, label %choice.then128, label %choice.else129

idx_big_check112:                                 ; preds = %and.106.then
  %idx.big115 = icmp sge i64 1, %s.read.len109
  br i1 %idx.big115, label %idx_oob114, label %idx_ok113

idx_ok113:                                        ; preds = %abort.dead116, %idx_big_check112
  %s.byte.gep117 = getelementptr i8, ptr %s.read.data111, i64 1
  %s.byte118 = load i8, ptr %s.byte.gep117, align 1
  %s.byte.val119 = zext i8 %s.byte118 to i64
  %val.match123 = icmp eq i64 %s.byte.val119, 98
  %val.match124 = icmp eq i64 %s.byte.val119, 66
  %case.or125 = or i1 %val.match123, %val.match124
  br i1 %case.or125, label %choice.case121, label %choice.next122

idx_oob114:                                       ; preds = %idx_big_check112, %and.106.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %idx_ok113

choice.exit120:                                   ; preds = %choice.next122, %choice.case121
  %choice.res126 = phi i1 [ true, %choice.case121 ], [ false, %choice.next122 ]
  br label %and.106.exit

choice.case121:                                   ; preds = %idx_ok113
  br label %choice.exit120

choice.next122:                                   ; preds = %idx_ok113
  br label %choice.exit120

choice.then128:                                   ; preds = %and.106.exit
  %var.load131 = load ptr, ptr %var.body, align 8
  %s.read.len132 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 0
  %s.read.len133 = load i64, ptr %s.read.len132, align 8
  %s.read.len134 = and i64 %s.read.len133, 281474976710655
  %s.read.data135 = getelementptr inbounds { i64, ptr }, ptr %var.load131, i32 0, i32 1
  %s.read.data136 = load ptr, ptr %s.read.data135, align 8
  %var.load137 = load i64, ptr %var.lbody, align 8
  %rel.start138 = add i64 %s.read.len134, 2
  %norm.start139 = select i1 false, i64 %rel.start138, i64 2
  %start.lt.0140 = icmp slt i64 %norm.start139, 0
  %c.start.0141 = select i1 %start.lt.0140, i64 0, i64 %norm.start139
  %start.gt.len142 = icmp sgt i64 %c.start.0141, %s.read.len134
  %final.start143 = select i1 %start.gt.len142, i64 %s.read.len134, i64 %c.start.0141
  %end.is_neg144 = icmp slt i64 %var.load137, 0
  %rel.end145 = add i64 %s.read.len134, %var.load137
  %norm.end146 = select i1 %end.is_neg144, i64 %rel.end145, i64 %var.load137
  %end.lt.0147 = icmp slt i64 %norm.end146, 0
  %c.end.0148 = select i1 %end.lt.0147, i64 0, i64 %norm.end146
  %end.gt.len149 = icmp sgt i64 %c.end.0148, %s.read.len134
  %final.end150 = select i1 %end.gt.len149, i64 %s.read.len134, i64 %c.end.0148
  %view.empty151 = icmp sle i64 %final.end150, %final.start143
  %view.len.sub152 = sub i64 %final.end150, %final.start143
  %view.len153 = select i1 %view.empty151, i64 0, i64 %view.len.sub152
  %view.data154 = getelementptr i8, ptr %s.read.data136, i64 %final.start143
  %arena.cur155 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 16)
  %str.build.len.gep157 = getelementptr inbounds { i64, ptr }, ptr %str.view156, i32 0, i32 0
  store i64 %view.len153, ptr %str.build.len.gep157, align 8
  %str.build.data.gep158 = getelementptr inbounds { i64, ptr }, ptr %str.view156, i32 0, i32 1
  store ptr %view.data154, ptr %str.build.data.gep158, align 8
  %call.res159 = call ptr @"str::to_hex"(ptr %str.view156)
  %niche.ne.null = icmp ne ptr %call.res159, null
  br i1 %niche.ne.null, label %choice.then160, label %choice.else161

choice.else129:                                   ; preds = %and.106.exit
  %var.load191 = load i1, ptr %var.is_bin_pfx, align 1
  br i1 %var.load191, label %choice.then192, label %choice.else193

choice.exit130:                                   ; preds = %choice.exit194, %choice.exit162
  %choice.res272 = phi { i1, i64 } [ %choice.res190, %choice.exit162 ], [ %choice.res271, %choice.exit194 ]
  ret { i1, i64 } %choice.res272

choice.then160:                                   ; preds = %choice.then128
  store ptr %call.res159, ptr %var._, align 8
  store ptr %call.res159, ptr %var.d, align 8
  %var.load163 = load ptr, ptr %var.d, align 8
  %fld.gep = getelementptr inbounds { i64, ptr }, ptr %var.load163, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query164 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query165 = load i64, ptr %str.len.query164, align 8
  %str.len.query166 = and i64 %str.len.query165, 281474976710655
  %str.tag167 = lshr i64 %str.len.query165, 48
  %tag.immortal169 = icmp eq i64 %str.tag167, 0
  %active.gen170 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current171 = icmp eq i64 %str.tag167, %active.gen170
  %tag.fast.ok172 = or i1 %tag.immortal169, %tag.current171
  br i1 %tag.fast.ok172, label %str_ok168, label %tag.slow_check173

choice.else161:                                   ; preds = %choice.then128
  br label %choice.exit162

choice.exit162:                                   ; preds = %choice.else161, %choice.exit177
  %choice.res190 = phi { i1, i64 } [ %choice.res189, %choice.exit177 ], [ zeroinitializer, %choice.else161 ]
  br label %choice.exit130

str_ok168:                                        ; preds = %tag.slow_check173, %choice.then160
  %cmptmp174 = icmp eq i64 %str.len.query166, 0
  br i1 %cmptmp174, label %choice.then175, label %choice.else176

tag.slow_check173:                                ; preds = %choice.then160
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag167)
  br label %str_ok168

choice.then175:                                   ; preds = %str_ok168
  %var.load178 = load i1, ptr %var.neg, align 1
  br i1 %var.load178, label %choice.then179, label %choice.else180

choice.else176:                                   ; preds = %str_ok168
  br label %choice.exit177

choice.exit177:                                   ; preds = %choice.else176, %choice.exit181
  %choice.res189 = phi { i1, i64 } [ %ram.pay, %choice.exit181 ], [ zeroinitializer, %choice.else176 ]
  br label %choice.exit162

choice.then179:                                   ; preds = %choice.then175
  %var.load182 = load ptr, ptr %var.d, align 8
  %fld.gep183 = getelementptr inbounds { i64, ptr }, ptr %var.load182, i32 0, i32 0
  %fld.load184 = load i64, ptr %fld.gep183, align 8
  %negtmp = sub i64 0, %fld.load184
  br label %choice.exit181

choice.else180:                                   ; preds = %choice.then175
  %var.load185 = load ptr, ptr %var.d, align 8
  %fld.gep186 = getelementptr inbounds { i64, ptr }, ptr %var.load185, i32 0, i32 0
  %fld.load187 = load i64, ptr %fld.gep186, align 8
  br label %choice.exit181

choice.exit181:                                   ; preds = %choice.else180, %choice.then179
  %choice.res188 = phi i64 [ %negtmp, %choice.then179 ], [ %fld.load187, %choice.else180 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res188, 1
  br label %choice.exit177

choice.then192:                                   ; preds = %choice.else129
  store i64 0, ptr %"var.val'", align 8
  %var.load195 = load i64, ptr %var.lbody, align 8
  store i64 2, ptr %loop.idx.107, align 8
  br label %loop.header.107

choice.else193:                                   ; preds = %choice.else129
  %var.load231 = load ptr, ptr %var.body, align 8
  %call.res232 = call ptr @"str::to_int"(ptr %var.load231)
  %niche.ne.null233 = icmp ne ptr %call.res232, null
  br i1 %niche.ne.null233, label %choice.then234, label %choice.else235

choice.exit194:                                   ; preds = %choice.exit236, %choice.exit225
  %choice.res271 = phi { i1, i64 } [ %ram.pay230, %choice.exit225 ], [ %choice.res270, %choice.exit236 ]
  br label %choice.exit130

loop.header.107:                                  ; preds = %loop.latch.107, %choice.then192
  %counter.load = load i64, ptr %loop.idx.107, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load195
  br i1 %loop.cond, label %loop.body.107, label %loop.exit.nat.107

loop.body.107:                                    ; preds = %loop.header.107
  %loop.rel.i = sub i64 %counter.load, 2
  store i64 1, ptr %loop.step.107, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._196, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load197 = load ptr, ptr %var.body, align 8
  %s.read.len198 = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 0
  %s.read.len199 = load i64, ptr %s.read.len198, align 8
  %s.read.len200 = and i64 %s.read.len199, 281474976710655
  %s.read.data201 = getelementptr inbounds { i64, ptr }, ptr %var.load197, i32 0, i32 1
  %s.read.data202 = load ptr, ptr %s.read.data201, align 8
  %var.load203 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load203, 0
  br i1 %idx.neg, label %idx_oob206, label %idx_big_check204

loop.exit.nat.107:                                ; preds = %loop.header.107
  br label %loop.exit.107

loop.latch.107:                                   ; preds = %choice.exit218
  %step.val = load i64, ptr %loop.step.107, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.exit.107:                                    ; preds = %loop.exit.nat.107
  %var.load222 = load i1, ptr %var.neg, align 1
  br i1 %var.load222, label %choice.then223, label %choice.else224

idx_big_check204:                                 ; preds = %loop.body.107
  %idx.big207 = icmp sge i64 %var.load203, %s.read.len200
  br i1 %idx.big207, label %idx_oob206, label %idx_ok205

idx_ok205:                                        ; preds = %abort.dead208, %idx_big_check204
  %s.byte.gep209 = getelementptr i8, ptr %s.read.data202, i64 %var.load203
  %s.byte210 = load i8, ptr %s.byte.gep209, align 1
  %s.byte.val211 = zext i8 %s.byte210 to i64
  store i64 %s.byte.val211, ptr %var.ch, align 8
  %var.load212 = load i64, ptr %var.ch, align 8
  %cmptmp213 = icmp eq i64 %var.load212, 48
  br i1 %cmptmp213, label %or.108.then, label %or.108.else

idx_oob206:                                       ; preds = %idx_big_check204, %loop.body.107
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead208:                                    ; No predecessors!
  br label %idx_ok205

or.108.then:                                      ; preds = %idx_ok205
  br label %or.108.exit

or.108.else:                                      ; preds = %idx_ok205
  %var.load214 = load i64, ptr %var.ch, align 8
  %cmptmp215 = icmp eq i64 %var.load214, 49
  br label %or.108.exit

or.108.exit:                                      ; preds = %or.108.else, %or.108.then
  %or.108.phi = phi i1 [ %cmptmp213, %or.108.then ], [ %cmptmp215, %or.108.else ]
  br i1 %or.108.phi, label %choice.then216, label %choice.else217

choice.then216:                                   ; preds = %or.108.exit
  %var.load219 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load219, 2
  %var.load220 = load i64, ptr %var.ch, align 8
  %subtmp = sub i64 %var.load220, 48
  %addtmp = add i64 %multmp, %subtmp
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %choice.exit218

choice.else217:                                   ; preds = %or.108.exit
  ret { i1, i64 } zeroinitializer

choice.exit218:                                   ; preds = %ret.dead221, %choice.then216
  br label %loop.latch.107

ret.dead221:                                      ; No predecessors!
  br label %choice.exit218

choice.then223:                                   ; preds = %loop.exit.107
  %var.load226 = load i64, ptr %"var.val'", align 8
  %negtmp227 = sub i64 0, %var.load226
  br label %choice.exit225

choice.else224:                                   ; preds = %loop.exit.107
  %var.load228 = load i64, ptr %"var.val'", align 8
  br label %choice.exit225

choice.exit225:                                   ; preds = %choice.else224, %choice.then223
  %choice.res229 = phi i64 [ %negtmp227, %choice.then223 ], [ %var.load228, %choice.else224 ]
  %ram.pay230 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res229, 1
  br label %choice.exit194

choice.then234:                                   ; preds = %choice.else193
  store ptr %call.res232, ptr %var._237, align 8
  store ptr %call.res232, ptr %var.d238, align 8
  %var.load239 = load ptr, ptr %var.d238, align 8
  %fld.gep240 = getelementptr inbounds { i64, ptr }, ptr %var.load239, i32 0, i32 1
  %fld.load241 = load ptr, ptr %fld.gep240, align 8
  %str.len.query242 = getelementptr inbounds { i64, ptr }, ptr %fld.load241, i32 0, i32 0
  %str.len.query243 = load i64, ptr %str.len.query242, align 8
  %str.len.query244 = and i64 %str.len.query243, 281474976710655
  %str.tag245 = lshr i64 %str.len.query243, 48
  %tag.immortal247 = icmp eq i64 %str.tag245, 0
  %active.gen248 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current249 = icmp eq i64 %str.tag245, %active.gen248
  %tag.fast.ok250 = or i1 %tag.immortal247, %tag.current249
  br i1 %tag.fast.ok250, label %str_ok246, label %tag.slow_check251

choice.else235:                                   ; preds = %choice.else193
  br label %choice.exit236

choice.exit236:                                   ; preds = %choice.else235, %choice.exit255
  %choice.res270 = phi { i1, i64 } [ %choice.res269, %choice.exit255 ], [ zeroinitializer, %choice.else235 ]
  br label %choice.exit194

str_ok246:                                        ; preds = %tag.slow_check251, %choice.then234
  %cmptmp252 = icmp eq i64 %str.len.query244, 0
  br i1 %cmptmp252, label %choice.then253, label %choice.else254

tag.slow_check251:                                ; preds = %choice.then234
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag245)
  br label %str_ok246

choice.then253:                                   ; preds = %str_ok246
  %var.load256 = load i1, ptr %var.neg, align 1
  br i1 %var.load256, label %choice.then257, label %choice.else258

choice.else254:                                   ; preds = %str_ok246
  br label %choice.exit255

choice.exit255:                                   ; preds = %choice.else254, %choice.exit259
  %choice.res269 = phi { i1, i64 } [ %ram.pay268, %choice.exit259 ], [ zeroinitializer, %choice.else254 ]
  br label %choice.exit236

choice.then257:                                   ; preds = %choice.then253
  %var.load260 = load ptr, ptr %var.d238, align 8
  %fld.gep261 = getelementptr inbounds { i64, ptr }, ptr %var.load260, i32 0, i32 0
  %fld.load262 = load i64, ptr %fld.gep261, align 8
  %negtmp263 = sub i64 0, %fld.load262
  br label %choice.exit259

choice.else258:                                   ; preds = %choice.then253
  %var.load264 = load ptr, ptr %var.d238, align 8
  %fld.gep265 = getelementptr inbounds { i64, ptr }, ptr %var.load264, i32 0, i32 0
  %fld.load266 = load i64, ptr %fld.gep265, align 8
  br label %choice.exit259

choice.exit259:                                   ; preds = %choice.else258, %choice.then257
  %choice.res267 = phi i64 [ %negtmp263, %choice.then257 ], [ %fld.load266, %choice.else258 ]
  %ram.pay268 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res267, 1
  br label %choice.exit255
}

define { i1, i64 } @"str::parse_float"(ptr %0) #0 {
entry:
  %var.pow10 = alloca double, align 8
  %var._243 = alloca i64, align 8
  %var._i242 = alloca i64, align 8
  %loop.step.118 = alloca i64, align 8
  %loop.idx.118 = alloca i64, align 8
  %"var.exp_digits'" = alloca i64, align 8
  %"var.exp_val'" = alloca i64, align 8
  %var.exp_neg = alloca i1, align 1
  %"var.res'" = alloca double, align 8
  %var._102 = alloca i64, align 8
  %var._i101 = alloca i64, align 8
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
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
  store i64 %str.len.query3, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %str_ok
  store i64 0, ptr %"var.i'", align 8
  %var.load5 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  br i1 false, label %idx_oob, label %idx_big_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_big_check:                                    ; preds = %choice.exit
  %idx.big = icmp sge i64 0, %s.read.len7
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp eq i64 %s.byte.val, 45
  store i1 %cmptmp9, ptr %var.neg, align 1
  %var.load10 = load i1, ptr %var.neg, align 1
  br i1 %var.load10, label %or.110.then, label %or.110.else

idx_oob:                                          ; preds = %idx_big_check, %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

or.110.then:                                      ; preds = %idx_ok
  br label %or.110.exit

or.110.else:                                      ; preds = %idx_ok
  %var.load11 = load ptr, ptr %var.s, align 8
  %s.read.len12 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len12, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data15 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data15, align 8
  br i1 false, label %idx_oob19, label %idx_big_check17

or.110.exit:                                      ; preds = %idx_ok18, %or.110.then
  %or.110.phi = phi i1 [ %var.load10, %or.110.then ], [ %cmptmp25, %idx_ok18 ]
  br i1 %or.110.phi, label %choice.then26, label %choice.exit27

idx_big_check17:                                  ; preds = %or.110.else
  %idx.big20 = icmp sge i64 0, %s.read.len14
  br i1 %idx.big20, label %idx_oob19, label %idx_ok18

idx_ok18:                                         ; preds = %abort.dead21, %idx_big_check17
  %s.byte.gep22 = getelementptr i8, ptr %s.read.data16, i64 0
  %s.byte23 = load i8, ptr %s.byte.gep22, align 1
  %s.byte.val24 = zext i8 %s.byte23 to i64
  %cmptmp25 = icmp eq i64 %s.byte.val24, 43
  br label %or.110.exit

idx_oob19:                                        ; preds = %idx_big_check17, %or.110.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead21:                                     ; No predecessors!
  br label %idx_ok18

choice.then26:                                    ; preds = %or.110.exit
  store i64 1, ptr %"var.i'", align 8
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.then26, %or.110.exit
  %var.load28 = load i64, ptr %"var.i'", align 8
  %var.load29 = load i64, ptr %var.len, align 8
  %cmptmp30 = icmp sge i64 %var.load28, %var.load29
  br i1 %cmptmp30, label %choice.then31, label %choice.exit32

choice.then31:                                    ; preds = %choice.exit27
  ret { i1, i64 } zeroinitializer

choice.exit32:                                    ; preds = %ret.dead33, %choice.exit27
  store double 0.000000e+00, ptr %"var.int_val'", align 8
  store i64 0, ptr %"var.digits'", align 8
  store i64 0, ptr %loop.idx.111, align 8
  br label %loop.header.111

ret.dead33:                                       ; No predecessors!
  br label %choice.exit32

loop.header.111:                                  ; preds = %loop.latch.111, %choice.exit32
  %counter.load = load i64, ptr %loop.idx.111, align 8
  br label %loop.body.111

loop.body.111:                                    ; preds = %loop.header.111
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.111, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load34 = load i64, ptr %"var.i'", align 8
  %var.load35 = load i64, ptr %var.len, align 8
  %cmptmp36 = icmp slt i64 %var.load34, %var.load35
  br i1 %cmptmp36, label %and.112.then, label %and.112.else

loop.exit.nat.111:                                ; No predecessors!
  br label %loop.exit.111

loop.latch.111:                                   ; preds = %choice.exit54
  %step.val = load i64, ptr %loop.step.111, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.111, align 8
  br label %loop.header.111

loop.exit.111:                                    ; preds = %choice.else, %loop.exit.nat.111
  store double 0.000000e+00, ptr %"var.frac_val'", align 8
  store double 1.000000e+00, ptr %"var.frac_scale'", align 8
  %var.load75 = load i64, ptr %"var.i'", align 8
  %var.load76 = load i64, ptr %var.len, align 8
  %cmptmp77 = icmp slt i64 %var.load75, %var.load76
  br i1 %cmptmp77, label %and.113.then, label %and.113.else

and.112.then:                                     ; preds = %loop.body.111
  %var.load37 = load ptr, ptr %var.s, align 8
  %s.read.len38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %s.read.len39 = load i64, ptr %s.read.len38, align 8
  %s.read.len40 = and i64 %s.read.len39, 281474976710655
  %s.read.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %s.read.data42 = load ptr, ptr %s.read.data41, align 8
  %var.load43 = load i64, ptr %"var.i'", align 8
  %idx.neg = icmp slt i64 %var.load43, 0
  br i1 %idx.neg, label %idx_oob46, label %idx_big_check44

and.112.else:                                     ; preds = %loop.body.111
  br label %and.112.exit

and.112.exit:                                     ; preds = %and.112.else, %idx_ok45
  %and.112.phi = phi i1 [ %call.res52, %idx_ok45 ], [ %cmptmp36, %and.112.else ]
  br i1 %and.112.phi, label %choice.then53, label %choice.else

idx_big_check44:                                  ; preds = %and.112.then
  %idx.big47 = icmp sge i64 %var.load43, %s.read.len40
  br i1 %idx.big47, label %idx_oob46, label %idx_ok45

idx_ok45:                                         ; preds = %abort.dead48, %idx_big_check44
  %s.byte.gep49 = getelementptr i8, ptr %s.read.data42, i64 %var.load43
  %s.byte50 = load i8, ptr %s.byte.gep49, align 1
  %s.byte.val51 = zext i8 %s.byte50 to i64
  %call.res52 = call i1 @"str::is_digit"(i64 %s.byte.val51)
  br label %and.112.exit

idx_oob46:                                        ; preds = %idx_big_check44, %and.112.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead48:                                     ; No predecessors!
  br label %idx_ok45

choice.then53:                                    ; preds = %and.112.exit
  %var.load55 = load double, ptr %"var.int_val'", align 8
  %fmultmp = fmul double %var.load55, 1.000000e+01
  %var.load56 = load ptr, ptr %var.s, align 8
  %s.read.len57 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %s.read.len58 = load i64, ptr %s.read.len57, align 8
  %s.read.len59 = and i64 %s.read.len58, 281474976710655
  %s.read.data60 = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %s.read.data61 = load ptr, ptr %s.read.data60, align 8
  %var.load62 = load i64, ptr %"var.i'", align 8
  %idx.neg63 = icmp slt i64 %var.load62, 0
  br i1 %idx.neg63, label %idx_oob66, label %idx_big_check64

choice.else:                                      ; preds = %and.112.exit
  br label %loop.exit.111

choice.exit54:                                    ; preds = %idx_ok65
  br label %loop.latch.111

idx_big_check64:                                  ; preds = %choice.then53
  %idx.big67 = icmp sge i64 %var.load62, %s.read.len59
  br i1 %idx.big67, label %idx_oob66, label %idx_ok65

idx_ok65:                                         ; preds = %abort.dead68, %idx_big_check64
  %s.byte.gep69 = getelementptr i8, ptr %s.read.data61, i64 %var.load62
  %s.byte70 = load i8, ptr %s.byte.gep69, align 1
  %s.byte.val71 = zext i8 %s.byte70 to i64
  %subtmp = sub i64 %s.byte.val71, 48
  %cast.sitofp = sitofp i64 %subtmp to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.int_val'", align 8
  %var.load72 = load i64, ptr %"var.digits'", align 8
  %addtmp = add i64 %var.load72, 1
  store i64 %addtmp, ptr %"var.digits'", align 8
  %var.load73 = load i64, ptr %"var.i'", align 8
  %addtmp74 = add i64 %var.load73, 1
  store i64 %addtmp74, ptr %"var.i'", align 8
  br label %choice.exit54

idx_oob66:                                        ; preds = %idx_big_check64, %choice.then53
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead68:                                     ; No predecessors!
  br label %idx_ok65

and.113.then:                                     ; preds = %loop.exit.111
  %var.load78 = load ptr, ptr %var.s, align 8
  %s.read.len79 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 0
  %s.read.len80 = load i64, ptr %s.read.len79, align 8
  %s.read.len81 = and i64 %s.read.len80, 281474976710655
  %s.read.data82 = getelementptr inbounds { i64, ptr }, ptr %var.load78, i32 0, i32 1
  %s.read.data83 = load ptr, ptr %s.read.data82, align 8
  %var.load84 = load i64, ptr %"var.i'", align 8
  %idx.neg85 = icmp slt i64 %var.load84, 0
  br i1 %idx.neg85, label %idx_oob88, label %idx_big_check86

and.113.else:                                     ; preds = %loop.exit.111
  br label %and.113.exit

and.113.exit:                                     ; preds = %and.113.else, %idx_ok87
  %and.113.phi = phi i1 [ %cmptmp94, %idx_ok87 ], [ %cmptmp77, %and.113.else ]
  br i1 %and.113.phi, label %choice.then95, label %choice.exit96

idx_big_check86:                                  ; preds = %and.113.then
  %idx.big89 = icmp sge i64 %var.load84, %s.read.len81
  br i1 %idx.big89, label %idx_oob88, label %idx_ok87

idx_ok87:                                         ; preds = %abort.dead90, %idx_big_check86
  %s.byte.gep91 = getelementptr i8, ptr %s.read.data83, i64 %var.load84
  %s.byte92 = load i8, ptr %s.byte.gep91, align 1
  %s.byte.val93 = zext i8 %s.byte92 to i64
  %cmptmp94 = icmp eq i64 %s.byte.val93, 46
  br label %and.113.exit

idx_oob88:                                        ; preds = %idx_big_check86, %and.113.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead90:                                     ; No predecessors!
  br label %idx_ok87

choice.then95:                                    ; preds = %and.113.exit
  %var.load97 = load i64, ptr %"var.i'", align 8
  %addtmp98 = add i64 %var.load97, 1
  store i64 %addtmp98, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.114, align 8
  br label %loop.header.114

choice.exit96:                                    ; preds = %loop.exit.114, %and.113.exit
  %var.load155 = load i64, ptr %"var.digits'", align 8
  %cmptmp156 = icmp eq i64 %var.load155, 0
  br i1 %cmptmp156, label %choice.then157, label %choice.exit158

loop.header.114:                                  ; preds = %loop.latch.114, %choice.then95
  %counter.load99 = load i64, ptr %loop.idx.114, align 8
  br label %loop.body.114

loop.body.114:                                    ; preds = %loop.header.114
  %loop.rel.i100 = sub i64 %counter.load99, 0
  store i64 1, ptr %loop.step.114, align 8
  store i64 %loop.rel.i100, ptr %var._i101, align 8
  store i64 %counter.load99, ptr %var._102, align 8
  %var.load103 = load i64, ptr %"var.i'", align 8
  %var.load104 = load i64, ptr %var.len, align 8
  %cmptmp105 = icmp slt i64 %var.load103, %var.load104
  br i1 %cmptmp105, label %and.115.then, label %and.115.else

loop.exit.nat.114:                                ; No predecessors!
  br label %loop.exit.114

loop.latch.114:                                   ; preds = %choice.exit125
  %step.val153 = load i64, ptr %loop.step.114, align 8
  %loop.next154 = add i64 %counter.load99, %step.val153
  store i64 %loop.next154, ptr %loop.idx.114, align 8
  br label %loop.header.114

loop.exit.114:                                    ; preds = %choice.else124, %loop.exit.nat.114
  br label %choice.exit96

and.115.then:                                     ; preds = %loop.body.114
  %var.load106 = load ptr, ptr %var.s, align 8
  %s.read.len107 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 0
  %s.read.len108 = load i64, ptr %s.read.len107, align 8
  %s.read.len109 = and i64 %s.read.len108, 281474976710655
  %s.read.data110 = getelementptr inbounds { i64, ptr }, ptr %var.load106, i32 0, i32 1
  %s.read.data111 = load ptr, ptr %s.read.data110, align 8
  %var.load112 = load i64, ptr %"var.i'", align 8
  %idx.neg113 = icmp slt i64 %var.load112, 0
  br i1 %idx.neg113, label %idx_oob116, label %idx_big_check114

and.115.else:                                     ; preds = %loop.body.114
  br label %and.115.exit

and.115.exit:                                     ; preds = %and.115.else, %idx_ok115
  %and.115.phi = phi i1 [ %call.res122, %idx_ok115 ], [ %cmptmp105, %and.115.else ]
  br i1 %and.115.phi, label %choice.then123, label %choice.else124

idx_big_check114:                                 ; preds = %and.115.then
  %idx.big117 = icmp sge i64 %var.load112, %s.read.len109
  br i1 %idx.big117, label %idx_oob116, label %idx_ok115

idx_ok115:                                        ; preds = %abort.dead118, %idx_big_check114
  %s.byte.gep119 = getelementptr i8, ptr %s.read.data111, i64 %var.load112
  %s.byte120 = load i8, ptr %s.byte.gep119, align 1
  %s.byte.val121 = zext i8 %s.byte120 to i64
  %call.res122 = call i1 @"str::is_digit"(i64 %s.byte.val121)
  br label %and.115.exit

idx_oob116:                                       ; preds = %idx_big_check114, %and.115.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead118:                                    ; No predecessors!
  br label %idx_ok115

choice.then123:                                   ; preds = %and.115.exit
  %var.load126 = load double, ptr %"var.frac_val'", align 8
  %fmultmp127 = fmul double %var.load126, 1.000000e+01
  %var.load128 = load ptr, ptr %var.s, align 8
  %s.read.len129 = getelementptr inbounds { i64, ptr }, ptr %var.load128, i32 0, i32 0
  %s.read.len130 = load i64, ptr %s.read.len129, align 8
  %s.read.len131 = and i64 %s.read.len130, 281474976710655
  %s.read.data132 = getelementptr inbounds { i64, ptr }, ptr %var.load128, i32 0, i32 1
  %s.read.data133 = load ptr, ptr %s.read.data132, align 8
  %var.load134 = load i64, ptr %"var.i'", align 8
  %idx.neg135 = icmp slt i64 %var.load134, 0
  br i1 %idx.neg135, label %idx_oob138, label %idx_big_check136

choice.else124:                                   ; preds = %and.115.exit
  br label %loop.exit.114

choice.exit125:                                   ; preds = %idx_ok137
  br label %loop.latch.114

idx_big_check136:                                 ; preds = %choice.then123
  %idx.big139 = icmp sge i64 %var.load134, %s.read.len131
  br i1 %idx.big139, label %idx_oob138, label %idx_ok137

idx_ok137:                                        ; preds = %abort.dead140, %idx_big_check136
  %s.byte.gep141 = getelementptr i8, ptr %s.read.data133, i64 %var.load134
  %s.byte142 = load i8, ptr %s.byte.gep141, align 1
  %s.byte.val143 = zext i8 %s.byte142 to i64
  %subtmp144 = sub i64 %s.byte.val143, 48
  %cast.sitofp145 = sitofp i64 %subtmp144 to double
  %faddtmp146 = fadd double %fmultmp127, %cast.sitofp145
  store double %faddtmp146, ptr %"var.frac_val'", align 8
  %var.load147 = load double, ptr %"var.frac_scale'", align 8
  %fmultmp148 = fmul double %var.load147, 1.000000e+01
  store double %fmultmp148, ptr %"var.frac_scale'", align 8
  %var.load149 = load i64, ptr %"var.digits'", align 8
  %addtmp150 = add i64 %var.load149, 1
  store i64 %addtmp150, ptr %"var.digits'", align 8
  %var.load151 = load i64, ptr %"var.i'", align 8
  %addtmp152 = add i64 %var.load151, 1
  store i64 %addtmp152, ptr %"var.i'", align 8
  br label %choice.exit125

idx_oob138:                                       ; preds = %idx_big_check136, %choice.then123
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead140:                                    ; No predecessors!
  br label %idx_ok137

choice.then157:                                   ; preds = %choice.exit96
  ret { i1, i64 } zeroinitializer

choice.exit158:                                   ; preds = %ret.dead159, %choice.exit96
  %var.load160 = load double, ptr %"var.int_val'", align 8
  %var.load161 = load double, ptr %"var.frac_val'", align 8
  %var.load162 = load double, ptr %"var.frac_scale'", align 8
  %fdivtmp = fdiv double %var.load161, %var.load162
  %faddtmp163 = fadd double %var.load160, %fdivtmp
  store double %faddtmp163, ptr %"var.res'", align 8
  %var.load164 = load i64, ptr %"var.i'", align 8
  %var.load165 = load i64, ptr %var.len, align 8
  %cmptmp166 = icmp slt i64 %var.load164, %var.load165
  br i1 %cmptmp166, label %and.116.then, label %and.116.else

ret.dead159:                                      ; No predecessors!
  br label %choice.exit158

and.116.then:                                     ; preds = %choice.exit158
  %var.load167 = load ptr, ptr %var.s, align 8
  %s.read.len168 = getelementptr inbounds { i64, ptr }, ptr %var.load167, i32 0, i32 0
  %s.read.len169 = load i64, ptr %s.read.len168, align 8
  %s.read.len170 = and i64 %s.read.len169, 281474976710655
  %s.read.data171 = getelementptr inbounds { i64, ptr }, ptr %var.load167, i32 0, i32 1
  %s.read.data172 = load ptr, ptr %s.read.data171, align 8
  %var.load173 = load i64, ptr %"var.i'", align 8
  %idx.neg174 = icmp slt i64 %var.load173, 0
  br i1 %idx.neg174, label %idx_oob177, label %idx_big_check175

and.116.else:                                     ; preds = %choice.exit158
  br label %and.116.exit

and.116.exit:                                     ; preds = %and.116.else, %choice.exit183
  %and.116.phi = phi i1 [ %choice.res, %choice.exit183 ], [ %cmptmp166, %and.116.else ]
  br i1 %and.116.phi, label %choice.then185, label %choice.exit186

idx_big_check175:                                 ; preds = %and.116.then
  %idx.big178 = icmp sge i64 %var.load173, %s.read.len170
  br i1 %idx.big178, label %idx_oob177, label %idx_ok176

idx_ok176:                                        ; preds = %abort.dead179, %idx_big_check175
  %s.byte.gep180 = getelementptr i8, ptr %s.read.data172, i64 %var.load173
  %s.byte181 = load i8, ptr %s.byte.gep180, align 1
  %s.byte.val182 = zext i8 %s.byte181 to i64
  %val.match = icmp eq i64 %s.byte.val182, 101
  %val.match184 = icmp eq i64 %s.byte.val182, 69
  %case.or = or i1 %val.match, %val.match184
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob177:                                       ; preds = %idx_big_check175, %and.116.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead179:                                    ; No predecessors!
  br label %idx_ok176

choice.exit183:                                   ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.116.exit

choice.case:                                      ; preds = %idx_ok176
  br label %choice.exit183

choice.next:                                      ; preds = %idx_ok176
  br label %choice.exit183

choice.then185:                                   ; preds = %and.116.exit
  %var.load187 = load i64, ptr %"var.i'", align 8
  %addtmp188 = add i64 %var.load187, 1
  store i64 %addtmp188, ptr %"var.i'", align 8
  %var.load189 = load i64, ptr %"var.i'", align 8
  %var.load190 = load i64, ptr %var.len, align 8
  %cmptmp191 = icmp sge i64 %var.load189, %var.load190
  br i1 %cmptmp191, label %choice.then192, label %choice.exit193

choice.exit186:                                   ; preds = %choice.exit300, %and.116.exit
  %var.load308 = load i64, ptr %"var.i'", align 8
  %var.load309 = load i64, ptr %var.len, align 8
  %cmptmp310 = icmp ne i64 %var.load308, %var.load309
  br i1 %cmptmp310, label %choice.then311, label %choice.else312

choice.then192:                                   ; preds = %choice.then185
  ret { i1, i64 } zeroinitializer

choice.exit193:                                   ; preds = %ret.dead194, %choice.then185
  %var.load195 = load ptr, ptr %var.s, align 8
  %s.read.len196 = getelementptr inbounds { i64, ptr }, ptr %var.load195, i32 0, i32 0
  %s.read.len197 = load i64, ptr %s.read.len196, align 8
  %s.read.len198 = and i64 %s.read.len197, 281474976710655
  %s.read.data199 = getelementptr inbounds { i64, ptr }, ptr %var.load195, i32 0, i32 1
  %s.read.data200 = load ptr, ptr %s.read.data199, align 8
  %var.load201 = load i64, ptr %"var.i'", align 8
  %idx.neg202 = icmp slt i64 %var.load201, 0
  br i1 %idx.neg202, label %idx_oob205, label %idx_big_check203

ret.dead194:                                      ; No predecessors!
  br label %choice.exit193

idx_big_check203:                                 ; preds = %choice.exit193
  %idx.big206 = icmp sge i64 %var.load201, %s.read.len198
  br i1 %idx.big206, label %idx_oob205, label %idx_ok204

idx_ok204:                                        ; preds = %abort.dead207, %idx_big_check203
  %s.byte.gep208 = getelementptr i8, ptr %s.read.data200, i64 %var.load201
  %s.byte209 = load i8, ptr %s.byte.gep208, align 1
  %s.byte.val210 = zext i8 %s.byte209 to i64
  %cmptmp211 = icmp eq i64 %s.byte.val210, 45
  store i1 %cmptmp211, ptr %var.exp_neg, align 1
  %var.load212 = load i1, ptr %var.exp_neg, align 1
  br i1 %var.load212, label %or.117.then, label %or.117.else

idx_oob205:                                       ; preds = %idx_big_check203, %choice.exit193
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead207:                                    ; No predecessors!
  br label %idx_ok204

or.117.then:                                      ; preds = %idx_ok204
  br label %or.117.exit

or.117.else:                                      ; preds = %idx_ok204
  %var.load213 = load ptr, ptr %var.s, align 8
  %s.read.len214 = getelementptr inbounds { i64, ptr }, ptr %var.load213, i32 0, i32 0
  %s.read.len215 = load i64, ptr %s.read.len214, align 8
  %s.read.len216 = and i64 %s.read.len215, 281474976710655
  %s.read.data217 = getelementptr inbounds { i64, ptr }, ptr %var.load213, i32 0, i32 1
  %s.read.data218 = load ptr, ptr %s.read.data217, align 8
  %var.load219 = load i64, ptr %"var.i'", align 8
  %idx.neg220 = icmp slt i64 %var.load219, 0
  br i1 %idx.neg220, label %idx_oob223, label %idx_big_check221

or.117.exit:                                      ; preds = %idx_ok222, %or.117.then
  %or.117.phi = phi i1 [ %var.load212, %or.117.then ], [ %cmptmp229, %idx_ok222 ]
  br i1 %or.117.phi, label %choice.then230, label %choice.exit231

idx_big_check221:                                 ; preds = %or.117.else
  %idx.big224 = icmp sge i64 %var.load219, %s.read.len216
  br i1 %idx.big224, label %idx_oob223, label %idx_ok222

idx_ok222:                                        ; preds = %abort.dead225, %idx_big_check221
  %s.byte.gep226 = getelementptr i8, ptr %s.read.data218, i64 %var.load219
  %s.byte227 = load i8, ptr %s.byte.gep226, align 1
  %s.byte.val228 = zext i8 %s.byte227 to i64
  %cmptmp229 = icmp eq i64 %s.byte.val228, 43
  br label %or.117.exit

idx_oob223:                                       ; preds = %idx_big_check221, %or.117.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead225:                                    ; No predecessors!
  br label %idx_ok222

choice.then230:                                   ; preds = %or.117.exit
  %var.load232 = load i64, ptr %"var.i'", align 8
  %addtmp233 = add i64 %var.load232, 1
  store i64 %addtmp233, ptr %"var.i'", align 8
  br label %choice.exit231

choice.exit231:                                   ; preds = %choice.then230, %or.117.exit
  %var.load234 = load i64, ptr %"var.i'", align 8
  %var.load235 = load i64, ptr %var.len, align 8
  %cmptmp236 = icmp sge i64 %var.load234, %var.load235
  br i1 %cmptmp236, label %choice.then237, label %choice.exit238

choice.then237:                                   ; preds = %choice.exit231
  ret { i1, i64 } zeroinitializer

choice.exit238:                                   ; preds = %ret.dead239, %choice.exit231
  store i64 0, ptr %"var.exp_val'", align 8
  store i64 0, ptr %"var.exp_digits'", align 8
  store i64 0, ptr %loop.idx.118, align 8
  br label %loop.header.118

ret.dead239:                                      ; No predecessors!
  br label %choice.exit238

loop.header.118:                                  ; preds = %loop.latch.118, %choice.exit238
  %counter.load240 = load i64, ptr %loop.idx.118, align 8
  br label %loop.body.118

loop.body.118:                                    ; preds = %loop.header.118
  %loop.rel.i241 = sub i64 %counter.load240, 0
  store i64 1, ptr %loop.step.118, align 8
  store i64 %loop.rel.i241, ptr %var._i242, align 8
  store i64 %counter.load240, ptr %var._243, align 8
  %var.load244 = load i64, ptr %"var.i'", align 8
  %var.load245 = load i64, ptr %var.len, align 8
  %cmptmp246 = icmp slt i64 %var.load244, %var.load245
  br i1 %cmptmp246, label %and.119.then, label %and.119.else

loop.exit.nat.118:                                ; No predecessors!
  br label %loop.exit.118

loop.latch.118:                                   ; preds = %choice.exit266
  %step.val290 = load i64, ptr %loop.step.118, align 8
  %loop.next291 = add i64 %counter.load240, %step.val290
  store i64 %loop.next291, ptr %loop.idx.118, align 8
  br label %loop.header.118

loop.exit.118:                                    ; preds = %choice.else265, %loop.exit.nat.118
  %var.load292 = load i64, ptr %"var.exp_digits'", align 8
  %cmptmp293 = icmp eq i64 %var.load292, 0
  br i1 %cmptmp293, label %choice.then294, label %choice.exit295

and.119.then:                                     ; preds = %loop.body.118
  %var.load247 = load ptr, ptr %var.s, align 8
  %s.read.len248 = getelementptr inbounds { i64, ptr }, ptr %var.load247, i32 0, i32 0
  %s.read.len249 = load i64, ptr %s.read.len248, align 8
  %s.read.len250 = and i64 %s.read.len249, 281474976710655
  %s.read.data251 = getelementptr inbounds { i64, ptr }, ptr %var.load247, i32 0, i32 1
  %s.read.data252 = load ptr, ptr %s.read.data251, align 8
  %var.load253 = load i64, ptr %"var.i'", align 8
  %idx.neg254 = icmp slt i64 %var.load253, 0
  br i1 %idx.neg254, label %idx_oob257, label %idx_big_check255

and.119.else:                                     ; preds = %loop.body.118
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %idx_ok256
  %and.119.phi = phi i1 [ %call.res263, %idx_ok256 ], [ %cmptmp246, %and.119.else ]
  br i1 %and.119.phi, label %choice.then264, label %choice.else265

idx_big_check255:                                 ; preds = %and.119.then
  %idx.big258 = icmp sge i64 %var.load253, %s.read.len250
  br i1 %idx.big258, label %idx_oob257, label %idx_ok256

idx_ok256:                                        ; preds = %abort.dead259, %idx_big_check255
  %s.byte.gep260 = getelementptr i8, ptr %s.read.data252, i64 %var.load253
  %s.byte261 = load i8, ptr %s.byte.gep260, align 1
  %s.byte.val262 = zext i8 %s.byte261 to i64
  %call.res263 = call i1 @"str::is_digit"(i64 %s.byte.val262)
  br label %and.119.exit

idx_oob257:                                       ; preds = %idx_big_check255, %and.119.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead259:                                    ; No predecessors!
  br label %idx_ok256

choice.then264:                                   ; preds = %and.119.exit
  %var.load267 = load i64, ptr %"var.exp_val'", align 8
  %multmp = mul i64 %var.load267, 10
  %var.load268 = load ptr, ptr %var.s, align 8
  %s.read.len269 = getelementptr inbounds { i64, ptr }, ptr %var.load268, i32 0, i32 0
  %s.read.len270 = load i64, ptr %s.read.len269, align 8
  %s.read.len271 = and i64 %s.read.len270, 281474976710655
  %s.read.data272 = getelementptr inbounds { i64, ptr }, ptr %var.load268, i32 0, i32 1
  %s.read.data273 = load ptr, ptr %s.read.data272, align 8
  %var.load274 = load i64, ptr %"var.i'", align 8
  %idx.neg275 = icmp slt i64 %var.load274, 0
  br i1 %idx.neg275, label %idx_oob278, label %idx_big_check276

choice.else265:                                   ; preds = %and.119.exit
  br label %loop.exit.118

choice.exit266:                                   ; preds = %idx_ok277
  br label %loop.latch.118

idx_big_check276:                                 ; preds = %choice.then264
  %idx.big279 = icmp sge i64 %var.load274, %s.read.len271
  br i1 %idx.big279, label %idx_oob278, label %idx_ok277

idx_ok277:                                        ; preds = %abort.dead280, %idx_big_check276
  %s.byte.gep281 = getelementptr i8, ptr %s.read.data273, i64 %var.load274
  %s.byte282 = load i8, ptr %s.byte.gep281, align 1
  %s.byte.val283 = zext i8 %s.byte282 to i64
  %subtmp284 = sub i64 %s.byte.val283, 48
  %addtmp285 = add i64 %multmp, %subtmp284
  store i64 %addtmp285, ptr %"var.exp_val'", align 8
  %var.load286 = load i64, ptr %"var.exp_digits'", align 8
  %addtmp287 = add i64 %var.load286, 1
  store i64 %addtmp287, ptr %"var.exp_digits'", align 8
  %var.load288 = load i64, ptr %"var.i'", align 8
  %addtmp289 = add i64 %var.load288, 1
  store i64 %addtmp289, ptr %"var.i'", align 8
  br label %choice.exit266

idx_oob278:                                       ; preds = %idx_big_check276, %choice.then264
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead280:                                    ; No predecessors!
  br label %idx_ok277

choice.then294:                                   ; preds = %loop.exit.118
  ret { i1, i64 } zeroinitializer

choice.exit295:                                   ; preds = %ret.dead296, %loop.exit.118
  %var.load297 = load i1, ptr %var.exp_neg, align 1
  br i1 %var.load297, label %choice.then298, label %choice.else299

ret.dead296:                                      ; No predecessors!
  br label %choice.exit295

choice.then298:                                   ; preds = %choice.exit295
  %var.load301 = load i64, ptr %"var.exp_val'", align 8
  %negtmp = sub i64 0, %var.load301
  br label %choice.exit300

choice.else299:                                   ; preds = %choice.exit295
  %var.load302 = load i64, ptr %"var.exp_val'", align 8
  br label %choice.exit300

choice.exit300:                                   ; preds = %choice.else299, %choice.then298
  %choice.res303 = phi i64 [ %negtmp, %choice.then298 ], [ %var.load302, %choice.else299 ]
  %cast.sitofp304 = sitofp i64 %choice.res303 to double
  %pow = call double @llvm.pow.f64(double 1.000000e+01, double %cast.sitofp304)
  store double %pow, ptr %var.pow10, align 8
  %var.load305 = load double, ptr %"var.res'", align 8
  %var.load306 = load double, ptr %var.pow10, align 8
  %fmultmp307 = fmul double %var.load305, %var.load306
  store double %fmultmp307, ptr %"var.res'", align 8
  br label %choice.exit186

choice.then311:                                   ; preds = %choice.exit186
  br label %choice.exit313

choice.else312:                                   ; preds = %choice.exit186
  %var.load314 = load i1, ptr %var.neg, align 1
  br i1 %var.load314, label %choice.then315, label %choice.else316

choice.exit313:                                   ; preds = %choice.exit317, %choice.then311
  %choice.res321 = phi { i1, i64 } [ zeroinitializer, %choice.then311 ], [ %ram.pay, %choice.exit317 ]
  ret { i1, i64 } %choice.res321

choice.then315:                                   ; preds = %choice.else312
  %var.load318 = load double, ptr %"var.res'", align 8
  %fnegtmp = fneg double %var.load318
  br label %choice.exit317

choice.else316:                                   ; preds = %choice.else312
  %var.load319 = load double, ptr %"var.res'", align 8
  br label %choice.exit317

choice.exit317:                                   ; preds = %choice.else316, %choice.then315
  %choice.res320 = phi double [ %fnegtmp, %choice.then315 ], [ %var.load319, %choice.else316 ]
  %f.to.i64 = bitcast double %choice.res320 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %choice.exit313
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #1

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noinline "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
