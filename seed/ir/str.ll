; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@"var.const::max_f64" = external global double
@clo.const = internal constant { ptr, ptr } { ptr @"str::#load_search_word", ptr null }
@"var.str::#load_search_word" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.1 = internal constant { ptr, ptr } { ptr @"str::#find_byte_from", ptr null }
@"var.str::#find_byte_from" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"str::#find_substring_from", ptr null }
@"var.str::#find_substring_from" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"str::is_digit", ptr null }
@"var.str::is_digit" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"str::is_alpha", ptr null }
@"var.str::is_alpha" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"str::is_alnum", ptr null }
@"var.str::is_alnum" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"str::is_ws", ptr null }
@"var.str::is_ws" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"str::is_hex", ptr null }
@"var.str::is_hex" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"str::from_byte", ptr null }
@"var.str::from_byte" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"str::from_int", ptr null }
@"var.str::from_int" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"str::from_u64", ptr null }
@"var.str::from_u64" = global ptr null
@str.0 = internal unnamed_addr constant [4 x i8] c"nan\00"
@str.1 = internal unnamed_addr constant [4 x i8] c"inf\00"
@str.2 = internal unnamed_addr constant [5 x i8] c"-inf\00"
@str.3 = internal unnamed_addr constant [3 x i8] c"-0\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.3 }
@str.4 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.4 }
@str.5 = internal unnamed_addr constant [3 x i8] c"0.\00"
@str.6 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.7 = internal unnamed_addr constant [2 x i8] c"e\00"
@clo.const.11 = internal constant { ptr, ptr } { ptr @"str::from_float", ptr null }
@"var.str::from_float" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"str::cmp", ptr null }
@"var.str::cmp" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"str::lt", ptr null }
@"var.str::lt" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"str::to_int", ptr null }
@"var.str::to_int" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"str::to_hex", ptr null }
@"var.str::to_hex" = global ptr null
@str.8 = internal unnamed_addr constant [4 x i8] c"0x0\00"
@clo.const.16 = internal constant { ptr, ptr } { ptr @"str::hex_to_str", ptr null }
@"var.str::hex_to_str" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"str::is_empty", ptr null }
@"var.str::is_empty" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"str::is_blank", ptr null }
@"var.str::is_blank" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"str::starts_with", ptr null }
@"var.str::starts_with" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"str::ends_with", ptr null }
@"var.str::ends_with" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"str::find_from", ptr null }
@"var.str::find_from" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"str::find", ptr null }
@"var.str::find" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"str::rfind", ptr null }
@"var.str::rfind" = global ptr null
@clo.const.24 = internal constant { ptr, ptr } { ptr @"str::contains", ptr null }
@"var.str::contains" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"str::count", ptr null }
@"var.str::count" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"str::trim_start", ptr null }
@"var.str::trim_start" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"str::trim_end", ptr null }
@"var.str::trim_end" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"str::trim", ptr null }
@"var.str::trim" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"str::trim_prefix", ptr null }
@"var.str::trim_prefix" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"str::trim_suffix", ptr null }
@"var.str::trim_suffix" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"str::split_once", ptr null }
@"var.str::split_once" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.32 = internal constant { ptr, ptr } { ptr @"str::split", ptr null }
@"var.str::split" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"str::lines", ptr null }
@"var.str::lines" = global ptr null
@clo.const.34 = internal constant { ptr, ptr } { ptr @"str::words", ptr null }
@"var.str::words" = global ptr null
@str.9 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.11 = internal unnamed_addr constant [8 x i8] c"str.dva\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.11 }
@str.12 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.12 }
@dva_thread_rec = external thread_local global ptr
@clo.const.35 = internal constant { ptr, ptr } { ptr @"str::join", ptr null }
@"var.str::join" = global ptr null
@clo.const.36 = internal constant { ptr, ptr } { ptr @"str::lower", ptr null }
@"var.str::lower" = global ptr null
@str.13 = internal unnamed_addr constant [3 x i8] c"SS\00"
@clo.const.37 = internal constant { ptr, ptr } { ptr @"str::upper", ptr null }
@"var.str::upper" = global ptr null
@clo.const.38 = internal constant { ptr, ptr } { ptr @"str::repeat", ptr null }
@"var.str::repeat" = global ptr null
@clo.const.39 = internal constant { ptr, ptr } { ptr @"str::pad_left", ptr null }
@"var.str::pad_left" = global ptr null
@clo.const.40 = internal constant { ptr, ptr } { ptr @"str::pad_right", ptr null }
@"var.str::pad_right" = global ptr null
@clo.const.41 = internal constant { ptr, ptr } { ptr @"str::reverse", ptr null }
@"var.str::reverse" = global ptr null
@clo.const.42 = internal constant { ptr, ptr } { ptr @"str::replace_first", ptr null }
@"var.str::replace_first" = global ptr null
@clo.const.43 = internal constant { ptr, ptr } { ptr @"str::replace", ptr null }
@"var.str::replace" = global ptr null
@clo.const.44 = internal constant { ptr, ptr } { ptr @"str::parse_int", ptr null }
@"var.str::parse_int" = global ptr null
@clo.const.45 = internal constant { ptr, ptr } { ptr @"str::parse_float", ptr null }
@"var.str::parse_float" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_str, ptr null }]

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

define internal void @__dva_global_init_str() #3 {
entry:
  store ptr @clo.const, ptr @"var.str::#load_search_word", align 8
  store ptr @clo.const.1, ptr @"var.str::#find_byte_from", align 8
  store ptr @clo.const.2, ptr @"var.str::#find_substring_from", align 8
  store ptr @clo.const.3, ptr @"var.str::is_digit", align 8
  store ptr @clo.const.4, ptr @"var.str::is_alpha", align 8
  store ptr @clo.const.5, ptr @"var.str::is_alnum", align 8
  store ptr @clo.const.6, ptr @"var.str::is_ws", align 8
  store ptr @clo.const.7, ptr @"var.str::is_hex", align 8
  store ptr @clo.const.8, ptr @"var.str::from_byte", align 8
  store ptr @clo.const.9, ptr @"var.str::from_int", align 8
  store ptr @clo.const.10, ptr @"var.str::from_u64", align 8
  store ptr @clo.const.11, ptr @"var.str::from_float", align 8
  store ptr @clo.const.12, ptr @"var.str::cmp", align 8
  store ptr @clo.const.13, ptr @"var.str::lt", align 8
  store ptr @clo.const.14, ptr @"var.str::to_int", align 8
  store ptr @clo.const.15, ptr @"var.str::to_hex", align 8
  store ptr @clo.const.16, ptr @"var.str::hex_to_str", align 8
  store ptr @clo.const.17, ptr @"var.str::is_empty", align 8
  store ptr @clo.const.18, ptr @"var.str::is_blank", align 8
  store ptr @clo.const.19, ptr @"var.str::starts_with", align 8
  store ptr @clo.const.20, ptr @"var.str::ends_with", align 8
  store ptr @clo.const.21, ptr @"var.str::find_from", align 8
  store ptr @clo.const.22, ptr @"var.str::find", align 8
  store ptr @clo.const.23, ptr @"var.str::rfind", align 8
  store ptr @clo.const.24, ptr @"var.str::contains", align 8
  store ptr @clo.const.25, ptr @"var.str::count", align 8
  store ptr @clo.const.26, ptr @"var.str::trim_start", align 8
  store ptr @clo.const.27, ptr @"var.str::trim_end", align 8
  store ptr @clo.const.28, ptr @"var.str::trim", align 8
  store ptr @clo.const.29, ptr @"var.str::trim_prefix", align 8
  store ptr @clo.const.30, ptr @"var.str::trim_suffix", align 8
  store ptr @clo.const.31, ptr @"var.str::split_once", align 8
  store ptr @clo.const.32, ptr @"var.str::split", align 8
  store ptr @clo.const.33, ptr @"var.str::lines", align 8
  store ptr @clo.const.34, ptr @"var.str::words", align 8
  store ptr @clo.const.35, ptr @"var.str::join", align 8
  store ptr @clo.const.36, ptr @"var.str::lower", align 8
  store ptr @clo.const.37, ptr @"var.str::upper", align 8
  store ptr @clo.const.38, ptr @"var.str::repeat", align 8
  store ptr @clo.const.39, ptr @"var.str::pad_left", align 8
  store ptr @clo.const.40, ptr @"var.str::pad_right", align 8
  store ptr @clo.const.41, ptr @"var.str::reverse", align 8
  store ptr @clo.const.42, ptr @"var.str::replace_first", align 8
  store ptr @clo.const.43, ptr @"var.str::replace", align 8
  store ptr @clo.const.44, ptr @"var.str::parse_int", align 8
  store ptr @clo.const.45, ptr @"var.str::parse_float", align 8
  ret void
}

declare ptr @memchr(ptr, i64, i64) #3

; Function Attrs: inlinehint
define internal i64 @"str::#load_search_word"(ptr %0, i64 %1) #4 {
entry:
  %cmptmp = icmp slt i64 %1, 0
  br i1 %cmptmp, label %common.ret, label %or.41.else

or.41.else:                                       ; preds = %entry
  %str.len.query3 = load i64, ptr %0, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %subtmp = sub i64 %str.len.query4, 7
  %cmptmp5 = icmp sge i64 %1, %subtmp
  br i1 %cmptmp5, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %or.41.else, %entry, %choice.exit
  %common.ret.op = phi i64 [ %bortmp100, %choice.exit ], [ 0, %entry ], [ 0, %or.41.else ]
  ret i64 %common.ret.op

choice.exit:                                      ; preds = %or.41.else
  %s.read.len7 = load i64, ptr %0, align 8
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data9 = load ptr, ptr %s.read.data, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data9, i64 %1
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %addtmp = add i64 %1, 1
  %s.byte.gep18 = getelementptr i8, ptr %s.read.data9, i64 %addtmp
  %s.byte19 = load i8, ptr %s.byte.gep18, align 1
  %s.byte.val20 = zext i8 %s.byte19 to i64
  %shltmp = shl i64 %s.byte.val20, 8
  %bortmp = or i64 %s.byte.val, %shltmp
  %addtmp28 = add i64 %1, 2
  %s.byte.gep29 = getelementptr i8, ptr %s.read.data9, i64 %addtmp28
  %s.byte30 = load i8, ptr %s.byte.gep29, align 1
  %s.byte.val31 = zext i8 %s.byte30 to i64
  %shltmp32 = shl i64 %s.byte.val31, 16
  %bortmp33 = or i64 %bortmp, %shltmp32
  %addtmp41 = add i64 %1, 3
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data9, i64 %addtmp41
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %shltmp45 = shl i64 %s.byte.val44, 24
  %bortmp46 = or i64 %bortmp33, %shltmp45
  %addtmp54 = add i64 %1, 4
  %s.byte.gep55 = getelementptr i8, ptr %s.read.data9, i64 %addtmp54
  %s.byte56 = load i8, ptr %s.byte.gep55, align 1
  %s.byte.val57 = zext i8 %s.byte56 to i64
  %addtmp65 = add i64 %1, 5
  %s.byte.gep66 = getelementptr i8, ptr %s.read.data9, i64 %addtmp65
  %s.byte67 = load i8, ptr %s.byte.gep66, align 1
  %s.byte.val68 = zext i8 %s.byte67 to i64
  %shltmp69 = shl i64 %s.byte.val68, 8
  %bortmp70 = or i64 %s.byte.val57, %shltmp69
  %addtmp78 = add i64 %1, 6
  %s.byte.gep79 = getelementptr i8, ptr %s.read.data9, i64 %addtmp78
  %s.byte80 = load i8, ptr %s.byte.gep79, align 1
  %s.byte.val81 = zext i8 %s.byte80 to i64
  %shltmp82 = shl i64 %s.byte.val81, 16
  %bortmp83 = or i64 %bortmp70, %shltmp82
  %addtmp91 = add i64 %1, 7
  %s.byte.gep92 = getelementptr i8, ptr %s.read.data9, i64 %addtmp91
  %s.byte93 = load i8, ptr %s.byte.gep92, align 1
  %s.byte.val94 = zext i8 %s.byte93 to i64
  %shltmp95 = shl i64 %s.byte.val94, 24
  %bortmp96 = or i64 %bortmp83, %shltmp95
  %shltmp99 = shl i64 %bortmp96, 32
  %bortmp100 = or i64 %bortmp46, %shltmp99
  br label %common.ret
}

define internal i64 @"str::#find_byte_from"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %clamp.max = call i64 @llvm.smax.i64(i64 %2, i64 0)
  %clamp.min = call i64 @llvm.smin.i64(i64 %clamp.max, i64 %str.len.query2)
  %cmptmp = icmp sge i64 %clamp.min, %str.len.query2
  br i1 %cmptmp, label %common.ret, label %or.42.else

or.42.else:                                       ; preds = %entry
  %cmptmp8 = icmp sge i64 %1, 0
  %cmptmp9 = icmp slt i64 %1, 256
  %and.43.phi = select i1 %cmptmp8, i1 %cmptmp9, i1 false
  %choice.res = select i1 %and.43.phi, i1 true, i1 false
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %common.ret, label %choice.exit10

common.ret:                                       ; preds = %idx_ok, %loop.header.45, %or.42.else, %entry, %choice.exit16, %choice.then35
  %common.ret.op = phi i64 [ %addtmp, %choice.then35 ], [ %choice.res86, %choice.exit16 ], [ -1, %entry ], [ -1, %or.42.else ], [ -1, %loop.header.45 ], [ %"var.p'.1", %idx_ok ]
  ret i64 %common.ret.op

choice.exit10:                                    ; preds = %or.42.else
  %subtmp = sub i64 %str.len.query2, %clamp.min
  %cmptmp14 = icmp sle i64 %subtmp, 64
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.then15:                                    ; preds = %choice.exit10
  %multmp = mul i64 %1, 72340172838076673
  br label %loop.header.44

choice.exit16:                                    ; preds = %choice.exit10
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.ptr68 = load ptr, ptr %s.ptr, align 8
  %coerce.ptr2int = ptrtoint ptr %s.ptr68 to i64
  %bandtmp70 = and i64 %coerce.ptr2int, 281474976710655
  %addtmp73 = add i64 %coerce.ptr2int, %clamp.min
  %ptr.res = inttoptr i64 %addtmp73 to ptr
  %addr.ffi.masked = and i64 %addtmp73, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res76 = call ptr @memchr(ptr %addr.ffi.clean, i64 %1, i64 %subtmp)
  %ptr.int.l78 = ptrtoint ptr %call.res76 to i64
  %cmptmp79 = icmp eq i64 %ptr.int.l78, 0
  %subtmp85 = sub i64 %ptr.int.l78, %bandtmp70
  %choice.res86 = select i1 %cmptmp79, i64 -1, i64 %subtmp85
  br label %common.ret

loop.header.44:                                   ; preds = %choice.exit36, %choice.then15
  %"var.p'.0" = phi i64 [ %clamp.min, %choice.then15 ], [ %addtmp41, %choice.exit36 ]
  %loop.idx.44.0 = phi i64 [ 0, %choice.then15 ], [ %loop.next, %choice.exit36 ]
  %subtmp21 = sub i64 %str.len.query2, 7
  %cmptmp22 = icmp sge i64 %"var.p'.0", %subtmp21
  br i1 %cmptmp22, label %loop.header.45, label %choice.exit24

choice.exit24:                                    ; preds = %loop.header.44
  %call.res = call i64 @"str::#load_search_word"(ptr %0, i64 %"var.p'.0")
  %bxortmp = xor i64 %call.res, %multmp
  %subtmp30 = sub i64 %bxortmp, 72340172838076673
  %bitnottmp = xor i64 %bxortmp, -1
  %bandtmp = and i64 %subtmp30, %bitnottmp
  %bandtmp32 = and i64 %bandtmp, -9187201950435737472
  %cmptmp34 = icmp ne i64 %bandtmp32, 0
  br i1 %cmptmp34, label %choice.then35, label %choice.exit36

choice.then35:                                    ; preds = %choice.exit24
  %cttz = call i64 @llvm.cttz.i64(i64 %bandtmp32, i1 false)
  %shrtmp = lshr i64 %cttz, 3
  %addtmp = add i64 %"var.p'.0", %shrtmp
  br label %common.ret

choice.exit36:                                    ; preds = %choice.exit24
  %addtmp41 = add i64 %"var.p'.0", 8
  %loop.next = add i64 %loop.idx.44.0, 1
  br label %loop.header.44

loop.header.45:                                   ; preds = %loop.header.44, %choice.exit59
  %"var.p'.1" = phi i64 [ %addtmp63, %choice.exit59 ], [ %"var.p'.0", %loop.header.44 ]
  %loop.idx.45.0 = phi i64 [ %loop.next65, %choice.exit59 ], [ 0, %loop.header.44 ]
  %cmptmp48 = icmp sge i64 %"var.p'.1", %str.len.query2
  br i1 %cmptmp48, label %common.ret, label %choice.exit50

choice.exit50:                                    ; preds = %loop.header.45
  %s.read.len52 = load i64, ptr %0, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data54 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.p'.1", %s.read.len53
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit50
  %s.byte.gep = getelementptr i8, ptr %s.read.data54, i64 %"var.p'.1"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp57 = icmp eq i64 %s.byte.val, %1
  br i1 %cmptmp57, label %common.ret, label %choice.exit59

idx_oob:                                          ; preds = %choice.exit50
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit59:                                    ; preds = %idx_ok
  %addtmp63 = add i64 %"var.p'.1", 1
  %loop.next65 = add i64 %loop.idx.45.0, 1
  br label %loop.header.45
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

; Function Attrs: noinline
define internal { i1, i64 } @"str::#find_substring_from"(ptr %0, ptr %1, i64 %2, i64 %3) #2 {
entry:
  %str.len.query1 = load i64, ptr %1, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %str.len.query2
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %entry
  %s.byte = load i8, ptr %s.read.data6, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %s.read.len9 = load i64, ptr %1, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %subtmp = sub i64 %str.len.query2, 1
  %idx.oob14 = icmp uge i64 %subtmp, %s.read.len10
  br i1 %idx.oob14, label %idx_oob16, label %idx_ok15

idx_oob:                                          ; preds = %entry
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok15:                                         ; preds = %idx_ok
  %s.byte.gep18 = getelementptr i8, ptr %s.read.data12, i64 %subtmp
  %s.byte19 = load i8, ptr %s.byte.gep18, align 1
  %s.byte.val20 = zext i8 %s.byte19 to i64
  br label %loop.header.47

idx_oob16:                                        ; preds = %idx_ok
  call void @dva_abort_str_oob_msg()
  unreachable

loop.header.47:                                   ; preds = %choice.exit87, %idx_ok15
  %"var.pos'.0" = phi i64 [ %2, %idx_ok15 ], [ %addtmp91, %choice.exit87 ]
  %loop.idx.47.0 = phi i64 [ 0, %idx_ok15 ], [ %loop.next, %choice.exit87 ]
  %call.res = call i64 @"str::#find_byte_from"(ptr %0, i64 %s.byte.val, i64 %"var.pos'.0")
  %cmptmp = icmp slt i64 %call.res, 0
  %cmptmp28 = icmp sgt i64 %call.res, %3
  %or.48.phi = select i1 %cmptmp, i1 true, i1 %cmptmp28
  br i1 %or.48.phi, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %loop.header.47, %choice.then86
  %common.ret.op = phi { i1, i64 } [ %ram.pay, %choice.then86 ], [ zeroinitializer, %loop.header.47 ]
  ret { i1, i64 } %common.ret.op

choice.exit:                                      ; preds = %loop.header.47
  %s.read.len31 = load i64, ptr %0, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %s.read.data33 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data34 = load ptr, ptr %s.read.data33, align 8
  %addtmp = add i64 %call.res, %str.len.query2
  %subtmp37 = sub i64 %addtmp, 1
  %idx.oob38 = icmp uge i64 %subtmp37, %s.read.len32
  br i1 %idx.oob38, label %idx_oob40, label %idx_ok39

idx_ok39:                                         ; preds = %choice.exit
  %s.byte.gep42 = getelementptr i8, ptr %s.read.data34, i64 %subtmp37
  %s.byte43 = load i8, ptr %s.byte.gep42, align 1
  %s.byte.val44 = zext i8 %s.byte43 to i64
  %cmptmp46 = icmp eq i64 %s.byte.val44, %s.byte.val20
  br i1 %cmptmp46, label %and.49.then, label %choice.exit87

idx_oob40:                                        ; preds = %choice.exit
  call void @dva_abort_str_oob_msg()
  unreachable

and.49.then:                                      ; preds = %idx_ok39
  %cmptmp48 = icmp eq i64 %str.len.query2, 2
  br i1 %cmptmp48, label %choice.then86, label %or.50.else

or.50.else:                                       ; preds = %and.49.then
  %s.read.len51 = load i64, ptr %0, align 8
  %s.read.len52 = and i64 %s.read.len51, 281474976710655
  %s.read.data54 = load ptr, ptr %s.read.data33, align 8
  %addtmp56 = add i64 %call.res, 1
  %start.is_neg = icmp slt i64 %addtmp56, 0
  %rel.start = add i64 %s.read.len52, %addtmp56
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp56
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len52
  %final.start = select i1 %start.gt.len, i64 %s.read.len52, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp37, 0
  %rel.end = add i64 %s.read.len52, %subtmp37
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp37
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len52
  %final.end = select i1 %end.gt.len, i64 %s.read.len52, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data54, i64 %final.start
  %s.read.len63 = load i64, ptr %1, align 8
  %s.read.len64 = and i64 %s.read.len63, 281474976710655
  %s.read.data66 = load ptr, ptr %s.read.data, align 8
  %rel.start69 = add i64 %s.read.len64, 1
  %start.gt.len73 = icmp sgt i64 1, %s.read.len64
  %final.start74 = select i1 %start.gt.len73, i64 %s.read.len64, i64 1
  %end.is_neg75 = icmp slt i64 %subtmp, 0
  %rel.end76 = add i64 %s.read.len64, %subtmp
  %norm.end77 = select i1 %end.is_neg75, i64 %rel.end76, i64 %subtmp
  %end.lt.078 = icmp slt i64 %norm.end77, 0
  %c.end.079 = select i1 %end.lt.078, i64 0, i64 %norm.end77
  %end.gt.len80 = icmp sgt i64 %c.end.079, %s.read.len64
  %final.end81 = select i1 %end.gt.len80, i64 %s.read.len64, i64 %c.end.079
  %view.empty82 = icmp sle i64 %final.end81, %final.start74
  %view.len.sub83 = sub i64 %final.end81, %final.start74
  %view.len84 = select i1 %view.empty82, i64 0, i64 %view.len.sub83
  %view.data85 = getelementptr i8, ptr %s.read.data66, i64 %final.start74
  %eq.len = icmp eq i64 %view.len, %view.len84
  br i1 %eq.len, label %str.eq.then, label %choice.exit87

str.eq.then:                                      ; preds = %or.50.else
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %view.data85, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then86, label %choice.exit87

choice.then86:                                    ; preds = %and.49.then, %str.eq.then
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %call.res, 1
  br label %common.ret

choice.exit87:                                    ; preds = %or.50.else, %idx_ok39, %str.eq.then
  %addtmp91 = add i64 %call.res, 1
  %loop.next = add i64 %loop.idx.47.0, 1
  br label %loop.header.47
}

declare i32 @memcmp(ptr, ptr, i64) #3

define i1 @"str::is_digit"(i64 %0) #3 {
entry:
  %call.res = call i1 @"ascii::is_digit"(i64 %0)
  ret i1 %call.res
}

declare i1 @"ascii::is_digit"(i64) #3

define i1 @"str::is_alpha"(i64 %0) #3 {
entry:
  %call.res = call i1 @"ascii::is_alpha"(i64 %0)
  ret i1 %call.res
}

declare i1 @"ascii::is_alpha"(i64) #3

define i1 @"str::is_alnum"(i64 %0) #3 {
entry:
  %call.res = call i1 @"ascii::is_alnum"(i64 %0)
  ret i1 %call.res
}

declare i1 @"ascii::is_alnum"(i64) #3

; Function Attrs: inlinehint
define i1 @"str::is_ws"(i64 %0) #4 {
entry:
  switch i64 %0, label %choice.next [
    i64 32, label %choice.exit
    i64 13, label %choice.exit
    i64 10, label %choice.exit
    i64 9, label %choice.exit
  ]

choice.exit:                                      ; preds = %entry, %entry, %entry, %entry, %choice.next
  %choice.res = phi i1 [ false, %choice.next ], [ true, %entry ], [ true, %entry ], [ true, %entry ], [ true, %entry ]
  ret i1 %choice.res

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"str::is_hex"(i64 %0) #3 {
entry:
  %call.res = call i1 @"ascii::is_hex"(i64 %0)
  ret i1 %call.res
}

declare i1 @"ascii::is_hex"(i64) #3

define { i64, ptr } @"str::from_byte"(i64 %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 2)
  store i8 0, ptr %b.buf, align 1
  %b.b.ge0 = icmp sge i64 %0, 0
  %b.b.le255 = icmp sle i64 %0, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %entry
  %b.byte.i8 = trunc i64 %0 to i8
  store i8 %b.byte.i8, ptr %b.buf, align 1
  %b.nul = getelementptr i8, ptr %b.buf, i64 1
  store i8 0, ptr %b.nul, align 1
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %b.buf, 1
  ret { i64, ptr } %ret.pack.fca.1.insert

b.byte_err:                                       ; preds = %entry
  call void @dva_abort_b_byte_msg()
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"str::from_int"(i64 %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %to_str.n = call i64 @dva_fmt_i64_buf(ptr %to_str.buf, i64 %0, i1 false)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  store i64 %to_str.n, ptr %to_str.res, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %to_str.res, align 8
  ret { i64, ptr } %ret.pack
}

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #3 {
entry:
  %fmt.tmp = alloca [24 x i8], align 1
  %fmt.is.zero = icmp eq i64 %1, 0
  br i1 %fmt.is.zero, label %zero, label %nonzero

common.ret:                                       ; preds = %done, %zero
  %common.ret.op = phi i64 [ 1, %zero ], [ %fmt.tot, %done ]
  ret i64 %common.ret.op

zero:                                             ; preds = %entry
  store i8 48, ptr %0, align 1
  %fmt.z.nul = getelementptr i8, ptr %0, i64 1
  store i8 0, ptr %fmt.z.nul, align 1
  br label %common.ret

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
  %fmt.sidx = sub i64 %fmt.k, %fmt.i
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
  br label %common.ret
}

define { i64, ptr } @"str::from_u64"(i64 %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %to_str.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %to_str.n = call i64 @dva_fmt_i64_buf(ptr %to_str.buf, i64 %0, i1 true)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %to_str.res = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  store i64 %to_str.n, ptr %to_str.res, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %to_str.res, i32 0, i32 1
  store ptr %to_str.buf, ptr %str.build.data.gep, align 8
  %ret.pack = load { i64, ptr }, ptr %to_str.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"str::from_float"(double %0) #3 {
entry:
  %concat.str880 = alloca { i64, ptr }, align 8
  %concat.str880.sroa.gep913 = getelementptr inbounds { i64, ptr }, ptr %concat.str880, i32 0, i32 1
  %ret.ub.salloc834 = alloca { i64, ptr }, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %cat.ibuf = alloca [24 x i8], align 1
  %fcmptmp = fcmp une double %0, %0
  br i1 %fcmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %choice.exit6, %choice.exit, %entry, %choice.exit842, %choice.then25
  %common.ret.op = phi { i64, ptr } [ %ret.pack33, %choice.then25 ], [ %ret.pack885.fca.1.insert, %choice.exit842 ], [ { i64 3, ptr @str.0 }, %entry ], [ { i64 3, ptr @str.1 }, %choice.exit ], [ { i64 4, ptr @str.2 }, %choice.exit6 ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %entry
  %var.load3 = load double, ptr @"var.const::max_f64", align 8
  %fcmptmp4 = fcmp ogt double %0, %var.load3
  br i1 %fcmptmp4, label %common.ret, label %choice.exit6

choice.exit6:                                     ; preds = %choice.exit
  %var.load10 = load double, ptr @"var.const::max_f64", align 8
  %fnegtmp = fneg double %var.load10
  %fcmptmp11 = fcmp olt double %0, %fnegtmp
  br i1 %fcmptmp11, label %common.ret, label %choice.exit13

choice.exit13:                                    ; preds = %choice.exit6
  %fcmptmp17 = fcmp olt double %0, 0.000000e+00
  %fsubtmp = fsub double 0.000000e+00, %0
  %choice.res = select i1 %fcmptmp17, double %fsubtmp, double %0
  %fcmptmp24 = fcmp oeq double %choice.res, 0.000000e+00
  br i1 %fcmptmp24, label %choice.then25, label %loop.header.51

choice.then25:                                    ; preds = %choice.exit13
  %fdivtmp = fdiv double 1.000000e+00, %0
  %fcmptmp28 = fcmp olt double %fdivtmp, 0.000000e+00
  %str.3.struct.str.4.struct = select i1 %fcmptmp28, ptr @str.3.struct, ptr @str.4.struct
  %ret.pack33 = load { i64, ptr }, ptr %str.3.struct.str.4.struct, align 8
  br label %common.ret

loop.header.51:                                   ; preds = %choice.exit13, %choice.then38
  %loop.idx.51.0 = phi i64 [ %loop.next, %choice.then38 ], [ 0, %choice.exit13 ]
  %"var.e'.0" = phi i64 [ %addtmp, %choice.then38 ], [ 0, %choice.exit13 ]
  %"var.x'.0" = phi double [ %fdivtmp42, %choice.then38 ], [ %choice.res, %choice.exit13 ]
  %fcmptmp37 = fcmp oge double %"var.x'.0", 1.000000e+01
  br i1 %fcmptmp37, label %choice.then38, label %loop.header.52

choice.then38:                                    ; preds = %loop.header.51
  %fdivtmp42 = fdiv double %"var.x'.0", 1.000000e+01
  %addtmp = add i64 %"var.e'.0", 1
  %loop.next = add i64 %loop.idx.51.0, 1
  br label %loop.header.51

loop.header.52:                                   ; preds = %loop.header.51, %choice.then50
  %loop.idx.52.0 = phi i64 [ %loop.next56, %choice.then50 ], [ 0, %loop.header.51 ]
  %"var.e'.1" = phi i64 [ %subtmp, %choice.then50 ], [ %"var.e'.0", %loop.header.51 ]
  %"var.x'.1" = phi double [ %fmultmp, %choice.then50 ], [ %"var.x'.0", %loop.header.51 ]
  %fcmptmp49 = fcmp olt double %"var.x'.1", 1.000000e+00
  br i1 %fcmptmp49, label %choice.then50, label %choice.else51

choice.then50:                                    ; preds = %loop.header.52
  %fmultmp = fmul double %"var.x'.1", 1.000000e+01
  %subtmp = sub i64 %"var.e'.1", 1
  %loop.next56 = add i64 %loop.idx.52.0, 1
  br label %loop.header.52

choice.else51:                                    ; preds = %loop.header.52
  %cast.fptosi = fptosi double %"var.x'.1" to i64
  %cast.sitofp = sitofp i64 %cast.fptosi to double
  %fsubtmp60 = fsub double %"var.x'.1", %cast.sitofp
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 17)
  store i8 0, ptr %b.buf, align 1
  %coerce.trunc = trunc i64 %cast.fptosi to i32
  %addtmp63 = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp63 to i64
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  br i1 %b.b.le255, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %choice.else51
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  store i8 %b.byte.i8, ptr %b.buf, align 1
  %b.nul = getelementptr i8, ptr %b.buf, i64 1
  store i8 0, ptr %b.nul, align 1
  br label %loop.header.53

b.byte_err:                                       ; preds = %choice.else51
  call void @dva_abort_b_byte_msg()
  unreachable

loop.header.53:                                   ; preds = %b.push_done106, %b.byte_ok
  %builder.new.salloc.sroa.0.0 = phi i64 [ 1, %b.byte_ok ], [ %b.next.len126, %b.push_done106 ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.buf, %b.byte_ok ], [ %builder.new.salloc.sroa.9.2, %b.push_done106 ]
  %builder.new.salloc.sroa.18.1 = phi i64 [ 16, %b.byte_ok ], [ %builder.new.salloc.sroa.18.2, %b.push_done106 ]
  %loop.idx.53.0 = phi i64 [ 0, %b.byte_ok ], [ %loop.next134, %b.push_done106 ]
  %"var.f'.0" = phi double [ %fsubtmp60, %b.byte_ok ], [ %fsubtmp132, %b.push_done106 ]
  %loop.cond = icmp slt i64 %loop.idx.53.0, 6
  br i1 %loop.cond, label %loop.body.53, label %loop.header.54

loop.body.53:                                     ; preds = %loop.header.53
  %fmultmp82 = fmul double %"var.f'.0", 1.000000e+01
  %cast.fptosi84 = fptosi double %fmultmp82 to i64
  %coerce.trunc87 = trunc i64 %cast.fptosi84 to i32
  %addtmp88 = add i32 48, %coerce.trunc87
  %b.byte.zext89 = zext i32 %addtmp88 to i64
  %b.b.le25591 = icmp sle i64 %b.byte.zext89, 255
  br i1 %b.b.le25591, label %b.byte_ok93, label %b.byte_err94

b.byte_ok93:                                      ; preds = %loop.body.53
  %b.byte.i896 = trunc i64 %b.byte.zext89 to i8
  %b.needs.grow103 = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.18.1
  br i1 %b.needs.grow103, label %b.grow104, label %b.push_done106

b.byte_err94:                                     ; preds = %loop.body.53
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow104:                                        ; preds = %b.byte_ok93
  %b.cap2107 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small108 = icmp slt i64 %b.cap2107, 16
  %b.new.cap109 = select i1 %b.cap.small108, i64 16, i64 %b.cap2107
  %b.new.buf.len110 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap109, i64 1)
  %sum111 = extractvalue { i64, i1 } %b.new.buf.len110, 0
  %ovf112 = extractvalue { i64, i1 } %b.new.buf.len110, 1
  br i1 %ovf112, label %str_overflow_abort114, label %b.new.buf.len113

b.push_done106:                                   ; preds = %b.byte_ok93, %b.new.buf.len113
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf117, %b.new.buf.len113 ], [ %builder.new.salloc.sroa.9.1, %b.byte_ok93 ]
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap109, %b.new.buf.len113 ], [ %builder.new.salloc.sroa.18.1, %b.byte_ok93 ]
  %b.byte.gep125 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %builder.new.salloc.sroa.0.0
  store i8 %b.byte.i896, ptr %b.byte.gep125, align 1
  %b.next.len126 = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul127 = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %b.next.len126
  store i8 0, ptr %b.nul127, align 1
  %cast.sitofp131 = sitofp i64 %cast.fptosi84 to double
  %fsubtmp132 = fsub double %fmultmp82, %cast.sitofp131
  %loop.next134 = add i64 %loop.idx.53.0, 1
  br label %loop.header.53

b.new.buf.len113:                                 ; preds = %b.grow104
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 %sum111)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf117, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul118 = getelementptr i8, ptr %b.new.buf117, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul118, align 1
  br label %b.push_done106

str_overflow_abort114:                            ; preds = %b.grow104
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.54:                                   ; preds = %loop.header.53, %idx_ok
  %"var.m'.0" = phi i64 [ %addtmp152, %idx_ok ], [ 0, %loop.header.53 ]
  %loop.idx.54.0 = phi i64 [ %loop.next154, %idx_ok ], [ 0, %loop.header.53 ]
  %loop.cond139 = icmp slt i64 %loop.idx.54.0, 6
  br i1 %loop.cond139, label %loop.body.54, label %loop.exit.54

loop.body.54:                                     ; preds = %loop.header.54
  %multmp = mul i64 %"var.m'.0", 10
  %s.read.len147 = and i64 %builder.new.salloc.sroa.0.0, 281474976710655
  %idx.oob = icmp uge i64 %loop.idx.54.0, %s.read.len147
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.54:                                     ; preds = %loop.header.54
  %s.read.len158 = and i64 %builder.new.salloc.sroa.0.0, 281474976710655
  %idx.oob161 = icmp uge i64 6, %s.read.len158
  br i1 %idx.oob161, label %idx_oob163, label %idx_ok162

idx_ok:                                           ; preds = %loop.body.54
  %s.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %loop.idx.54.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp151 = sub i64 %s.byte.val, 48
  %addtmp152 = add i64 %multmp, %subtmp151
  %loop.next154 = add i64 %loop.idx.54.0, 1
  br label %loop.header.54

idx_oob:                                          ; preds = %loop.body.54
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok162:                                        ; preds = %loop.exit.54
  %s.byte.gep165 = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 6
  %s.byte166 = load i8, ptr %s.byte.gep165, align 1
  %s.byte.val167 = zext i8 %s.byte166 to i64
  %cmptmp = icmp sge i64 %s.byte.val167, 53
  %addtmp171 = add i64 %"var.m'.0", 1
  %spec.select = select i1 %cmptmp, i64 %addtmp171, i64 %"var.m'.0"
  %cmptmp173 = icmp eq i64 %spec.select, 1000000
  %addtmp177 = add i64 %"var.e'.1", 1
  %"var.m'.2" = select i1 %cmptmp173, i64 100000, i64 %spec.select
  %"var.e'.2" = select i1 %cmptmp173, i64 %addtmp177, i64 %"var.e'.1"
  %call.res = call { i64, ptr } @"str::from_int"(i64 %"var.m'.2")
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %arena.cur189 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf190 = call ptr @dva_arena_alloc(ptr %arena.cur189, i64 33)
  store i8 0, ptr %b.buf190, align 1
  br i1 %fcmptmp17, label %br.b1.55, label %choice.exit194

idx_oob163:                                       ; preds = %loop.exit.54
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit194:                                   ; preds = %br.b1.55, %idx_ok162
  %builder.new.salloc179.sroa.0.0 = phi i64 [ 1, %br.b1.55 ], [ 0, %idx_ok162 ]
  %cmptmp218 = icmp slt i64 %"var.e'.2", -4
  %cmptmp220 = icmp sge i64 %"var.e'.2", 6
  %or.56.phi = select i1 %cmptmp218, i1 true, i1 %cmptmp220
  br i1 %or.56.phi, label %choice.then221, label %choice.else222

br.b1.55:                                         ; preds = %idx_ok162
  store i8 45, ptr %b.buf190, align 1
  %br.nul = getelementptr i8, ptr %b.buf190, i64 1
  store i8 0, ptr %br.nul, align 1
  br label %choice.exit194

choice.then221:                                   ; preds = %choice.exit194
  %s.read.len228 = and i64 %call.res.fca.0.extract, 281474976710655
  %idx.oob231 = icmp uge i64 0, %s.read.len228
  br i1 %idx.oob231, label %idx_oob233, label %idx_ok232

choice.else222:                                   ; preds = %choice.exit194
  %cmptmp386 = icmp sge i64 %"var.e'.2", 0
  br i1 %cmptmp386, label %choice.then387, label %choice.else388

choice.exit223:                                   ; preds = %loop.header.64, %loop.header.61, %loop.exit.59, %loop.header.58
  %builder.new.salloc179.sroa.33.2 = phi ptr [ %builder.new.salloc179.sroa.33.5, %loop.header.58 ], [ %builder.new.salloc179.sroa.33.8, %loop.exit.59 ], [ %builder.new.salloc179.sroa.33.12, %loop.header.61 ], [ %builder.new.salloc179.sroa.33.17, %loop.header.64 ]
  %builder.new.salloc179.sroa.0.1 = phi i64 [ %builder.new.salloc179.sroa.0.2, %loop.header.58 ], [ %builder.new.salloc179.sroa.0.4, %loop.exit.59 ], [ %builder.new.salloc179.sroa.0.6, %loop.header.61 ], [ %builder.new.salloc179.sroa.0.8, %loop.header.64 ]
  %arena.cur728 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze729 = call ptr @dva_arena_alloc(ptr %arena.cur728, i64 16)
  store i64 %builder.new.salloc179.sroa.0.1, ptr %builder.freeze729, align 8
  %str.build.data.gep731 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze729, i32 0, i32 1
  store ptr %builder.new.salloc179.sroa.33.2, ptr %str.build.data.gep731, align 8
  %str.len736 = load i64, ptr %builder.freeze729, align 8
  %str.len737 = and i64 %str.len736, 281474976710655
  br label %loop.header.65

idx_ok232:                                        ; preds = %choice.then221
  %s.byte236 = load i8, ptr %call.res.fca.1.extract, align 1
  %s.byte.val237 = zext i8 %s.byte236 to i64
  %b.byte.gep273 = getelementptr i8, ptr %b.buf190, i64 %builder.new.salloc179.sroa.0.0
  store i8 %s.byte236, ptr %b.byte.gep273, align 1
  %b.next.len274 = add i64 %builder.new.salloc179.sroa.0.0, 1
  %b.nul275 = getelementptr i8, ptr %b.buf190, i64 %b.next.len274
  store i8 0, ptr %b.nul275, align 1
  %b.rn.new.len280 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.next.len274, i64 1)
  %sum281 = extractvalue { i64, i1 } %b.rn.new.len280, 0
  %ovf282 = extractvalue { i64, i1 } %b.rn.new.len280, 1
  br i1 %ovf282, label %str_overflow_abort284, label %b.rn.new.len283

idx_oob233:                                       ; preds = %choice.then221
  call void @dva_abort_str_oob_msg()
  unreachable

b.rn.new.len283:                                  ; preds = %idx_ok232
  %b.need.grow288 = icmp slt i64 32, %sum281
  br i1 %b.need.grow288, label %b.grow2289, label %b.grow_done291

str_overflow_abort284:                            ; preds = %idx_ok232
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2289:                                       ; preds = %b.rn.new.len283
  %b.cap2292 = mul i64 32, 2
  %b.cap.small293 = icmp slt i64 %b.cap2292, 16
  %b.cap.grow294 = select i1 %b.cap.small293, i64 16, i64 %b.cap2292
  %b.cap.need295 = icmp slt i64 %b.cap.grow294, %sum281
  %b.new.cap296 = select i1 %b.cap.need295, i64 %sum281, i64 %b.cap.grow294
  %b.new.buf.len2301 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap296, i64 1)
  %sum302 = extractvalue { i64, i1 } %b.new.buf.len2301, 0
  %ovf303 = extractvalue { i64, i1 } %b.new.buf.len2301, 1
  br i1 %ovf303, label %str_overflow_abort305, label %b.new.buf.len2304

b.grow_done291:                                   ; preds = %b.rn.new.len283, %b.new.buf.len2304
  %builder.new.salloc179.sroa.66.3 = phi i64 [ %b.new.cap296, %b.new.buf.len2304 ], [ 32, %b.rn.new.len283 ]
  %builder.new.salloc179.sroa.33.4 = phi ptr [ %b.new.buf2308, %b.new.buf.len2304 ], [ %b.buf190, %b.rn.new.len283 ]
  %b.rn.dst314 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.4, i64 %b.next.len274
  store i8 46, ptr %b.rn.dst314, align 1
  %br.nul321 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.4, i64 %sum281
  store i8 0, ptr %br.nul321, align 1
  br label %loop.header.58

b.new.buf.len2304:                                ; preds = %b.grow2289
  %arena.cur307 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2308 = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 %sum302)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2308, ptr align 1 %b.buf190, i64 %b.next.len274, i1 false)
  %b.grow2.nul309 = getelementptr i8, ptr %b.new.buf2308, i64 %b.next.len274
  store i8 0, ptr %b.grow2.nul309, align 1
  br label %b.grow_done291

str_overflow_abort305:                            ; preds = %b.grow2289
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.58:                                   ; preds = %b.push_done360, %b.grow_done291
  %builder.new.salloc179.sroa.66.4 = phi i64 [ %builder.new.salloc179.sroa.66.3, %b.grow_done291 ], [ %builder.new.salloc179.sroa.66.5, %b.push_done360 ]
  %builder.new.salloc179.sroa.33.5 = phi ptr [ %builder.new.salloc179.sroa.33.4, %b.grow_done291 ], [ %builder.new.salloc179.sroa.33.6, %b.push_done360 ]
  %builder.new.salloc179.sroa.0.2 = phi i64 [ %sum281, %b.grow_done291 ], [ %b.next.len380, %b.push_done360 ]
  %loop.idx.58.0 = phi i64 [ 1, %b.grow_done291 ], [ %loop.next384, %b.push_done360 ]
  %loop.cond324 = icmp slt i64 %loop.idx.58.0, 6
  br i1 %loop.cond324, label %loop.body.58, label %choice.exit223

loop.body.58:                                     ; preds = %loop.header.58
  %idx.oob337 = icmp uge i64 %loop.idx.58.0, %s.read.len228
  br i1 %idx.oob337, label %idx_oob339, label %idx_ok338

idx_ok338:                                        ; preds = %loop.body.58
  %s.byte.gep341 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %loop.idx.58.0
  %s.byte342 = load i8, ptr %s.byte.gep341, align 1
  %s.byte.val343 = zext i8 %s.byte342 to i64
  %b.needs.grow357 = icmp eq i64 %builder.new.salloc179.sroa.0.2, %builder.new.salloc179.sroa.66.4
  br i1 %b.needs.grow357, label %b.grow358, label %b.push_done360

idx_oob339:                                       ; preds = %loop.body.58
  call void @dva_abort_str_oob_msg()
  unreachable

b.grow358:                                        ; preds = %idx_ok338
  %b.cap2361 = mul i64 %builder.new.salloc179.sroa.66.4, 2
  %b.cap.small362 = icmp slt i64 %b.cap2361, 16
  %b.new.cap363 = select i1 %b.cap.small362, i64 16, i64 %b.cap2361
  %b.new.buf.len364 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap363, i64 1)
  %sum365 = extractvalue { i64, i1 } %b.new.buf.len364, 0
  %ovf366 = extractvalue { i64, i1 } %b.new.buf.len364, 1
  br i1 %ovf366, label %str_overflow_abort368, label %b.new.buf.len367

b.push_done360:                                   ; preds = %idx_ok338, %b.new.buf.len367
  %builder.new.salloc179.sroa.66.5 = phi i64 [ %b.new.cap363, %b.new.buf.len367 ], [ %builder.new.salloc179.sroa.66.4, %idx_ok338 ]
  %builder.new.salloc179.sroa.33.6 = phi ptr [ %b.new.buf371, %b.new.buf.len367 ], [ %builder.new.salloc179.sroa.33.5, %idx_ok338 ]
  %b.byte.gep379 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.6, i64 %builder.new.salloc179.sroa.0.2
  store i8 %s.byte342, ptr %b.byte.gep379, align 1
  %b.next.len380 = add i64 %builder.new.salloc179.sroa.0.2, 1
  %b.nul381 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.6, i64 %b.next.len380
  store i8 0, ptr %b.nul381, align 1
  %loop.next384 = add i64 %loop.idx.58.0, 1
  br label %loop.header.58

b.new.buf.len367:                                 ; preds = %b.grow358
  %arena.cur370 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf371 = call ptr @dva_arena_alloc(ptr %arena.cur370, i64 %sum365)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf371, ptr align 1 %builder.new.salloc179.sroa.33.5, i64 %builder.new.salloc179.sroa.0.2, i1 false)
  %b.grow.nul372 = getelementptr i8, ptr %b.new.buf371, i64 %builder.new.salloc179.sroa.0.2
  store i8 0, ptr %b.grow.nul372, align 1
  br label %b.push_done360

str_overflow_abort368:                            ; preds = %b.grow358
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then387:                                   ; preds = %choice.else222
  %addtmp391 = add i64 %"var.e'.2", 1
  br label %loop.header.59

choice.else388:                                   ; preds = %choice.else222
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc179.sroa.0.0, i64 2)
  %sum571 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf572 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf572, label %str_overflow_abort574, label %b.app.new.len573

loop.header.59:                                   ; preds = %b.push_done430, %choice.then387
  %builder.new.salloc179.sroa.66.6 = phi i64 [ 32, %choice.then387 ], [ %builder.new.salloc179.sroa.66.7, %b.push_done430 ]
  %builder.new.salloc179.sroa.33.8 = phi ptr [ %b.buf190, %choice.then387 ], [ %builder.new.salloc179.sroa.33.9, %b.push_done430 ]
  %builder.new.salloc179.sroa.0.4 = phi i64 [ %builder.new.salloc179.sroa.0.0, %choice.then387 ], [ %b.next.len450, %b.push_done430 ]
  %loop.idx.59.0 = phi i64 [ 0, %choice.then387 ], [ %loop.next454, %b.push_done430 ]
  %loop.cond394 = icmp slt i64 %loop.idx.59.0, %addtmp391
  br i1 %loop.cond394, label %loop.body.59, label %loop.exit.59

loop.body.59:                                     ; preds = %loop.header.59
  %s.read.len403 = and i64 %call.res.fca.0.extract, 281474976710655
  %idx.oob407 = icmp uge i64 %loop.idx.59.0, %s.read.len403
  br i1 %idx.oob407, label %idx_oob409, label %idx_ok408

loop.exit.59:                                     ; preds = %loop.header.59
  %cmptmp456 = icmp slt i64 %addtmp391, 6
  br i1 %cmptmp456, label %choice.then457, label %choice.exit223

idx_ok408:                                        ; preds = %loop.body.59
  %s.byte.gep411 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %loop.idx.59.0
  %s.byte412 = load i8, ptr %s.byte.gep411, align 1
  %s.byte.val413 = zext i8 %s.byte412 to i64
  %b.needs.grow427 = icmp eq i64 %builder.new.salloc179.sroa.0.4, %builder.new.salloc179.sroa.66.6
  br i1 %b.needs.grow427, label %b.grow428, label %b.push_done430

idx_oob409:                                       ; preds = %loop.body.59
  call void @dva_abort_str_oob_msg()
  unreachable

b.grow428:                                        ; preds = %idx_ok408
  %b.cap2431 = mul i64 %builder.new.salloc179.sroa.66.6, 2
  %b.cap.small432 = icmp slt i64 %b.cap2431, 16
  %b.new.cap433 = select i1 %b.cap.small432, i64 16, i64 %b.cap2431
  %b.new.buf.len434 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap433, i64 1)
  %sum435 = extractvalue { i64, i1 } %b.new.buf.len434, 0
  %ovf436 = extractvalue { i64, i1 } %b.new.buf.len434, 1
  br i1 %ovf436, label %str_overflow_abort438, label %b.new.buf.len437

b.push_done430:                                   ; preds = %idx_ok408, %b.new.buf.len437
  %builder.new.salloc179.sroa.66.7 = phi i64 [ %b.new.cap433, %b.new.buf.len437 ], [ %builder.new.salloc179.sroa.66.6, %idx_ok408 ]
  %builder.new.salloc179.sroa.33.9 = phi ptr [ %b.new.buf441, %b.new.buf.len437 ], [ %builder.new.salloc179.sroa.33.8, %idx_ok408 ]
  %b.byte.gep449 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.9, i64 %builder.new.salloc179.sroa.0.4
  store i8 %s.byte412, ptr %b.byte.gep449, align 1
  %b.next.len450 = add i64 %builder.new.salloc179.sroa.0.4, 1
  %b.nul451 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.9, i64 %b.next.len450
  store i8 0, ptr %b.nul451, align 1
  %loop.next454 = add i64 %loop.idx.59.0, 1
  br label %loop.header.59

b.new.buf.len437:                                 ; preds = %b.grow428
  %arena.cur440 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf441 = call ptr @dva_arena_alloc(ptr %arena.cur440, i64 %sum435)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf441, ptr align 1 %builder.new.salloc179.sroa.33.8, i64 %builder.new.salloc179.sroa.0.4, i1 false)
  %b.grow.nul442 = getelementptr i8, ptr %b.new.buf441, i64 %builder.new.salloc179.sroa.0.4
  store i8 0, ptr %b.grow.nul442, align 1
  br label %b.push_done430

str_overflow_abort438:                            ; preds = %b.grow428
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then457:                                   ; preds = %loop.exit.59
  %b.rn.new.len462 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc179.sroa.0.4, i64 1)
  %sum463 = extractvalue { i64, i1 } %b.rn.new.len462, 0
  %ovf464 = extractvalue { i64, i1 } %b.rn.new.len462, 1
  br i1 %ovf464, label %str_overflow_abort466, label %b.rn.new.len465

b.rn.new.len465:                                  ; preds = %choice.then457
  %b.need.grow470 = icmp slt i64 %builder.new.salloc179.sroa.66.6, %sum463
  br i1 %b.need.grow470, label %b.grow2471, label %b.grow_done473

str_overflow_abort466:                            ; preds = %choice.then457
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2471:                                       ; preds = %b.rn.new.len465
  %b.cap2474 = mul i64 %builder.new.salloc179.sroa.66.6, 2
  %b.cap.small475 = icmp slt i64 %b.cap2474, 16
  %b.cap.grow476 = select i1 %b.cap.small475, i64 16, i64 %b.cap2474
  %b.cap.need477 = icmp slt i64 %b.cap.grow476, %sum463
  %b.new.cap478 = select i1 %b.cap.need477, i64 %sum463, i64 %b.cap.grow476
  %b.new.buf.len2483 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap478, i64 1)
  %sum484 = extractvalue { i64, i1 } %b.new.buf.len2483, 0
  %ovf485 = extractvalue { i64, i1 } %b.new.buf.len2483, 1
  br i1 %ovf485, label %str_overflow_abort487, label %b.new.buf.len2486

b.grow_done473:                                   ; preds = %b.rn.new.len465, %b.new.buf.len2486
  %builder.new.salloc179.sroa.66.8 = phi i64 [ %b.new.cap478, %b.new.buf.len2486 ], [ %builder.new.salloc179.sroa.66.6, %b.rn.new.len465 ]
  %builder.new.salloc179.sroa.33.11 = phi ptr [ %b.new.buf2490, %b.new.buf.len2486 ], [ %builder.new.salloc179.sroa.33.8, %b.rn.new.len465 ]
  %b.rn.dst496 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.11, i64 %builder.new.salloc179.sroa.0.4
  store i8 46, ptr %b.rn.dst496, align 1
  %br.nul503 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.11, i64 %sum463
  store i8 0, ptr %br.nul503, align 1
  br label %loop.header.61

b.new.buf.len2486:                                ; preds = %b.grow2471
  %arena.cur489 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 %sum484)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2490, ptr align 1 %builder.new.salloc179.sroa.33.8, i64 %builder.new.salloc179.sroa.0.4, i1 false)
  %b.grow2.nul491 = getelementptr i8, ptr %b.new.buf2490, i64 %builder.new.salloc179.sroa.0.4
  store i8 0, ptr %b.grow2.nul491, align 1
  br label %b.grow_done473

str_overflow_abort487:                            ; preds = %b.grow2471
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.61:                                   ; preds = %b.push_done543, %b.grow_done473
  %builder.new.salloc179.sroa.66.9 = phi i64 [ %builder.new.salloc179.sroa.66.8, %b.grow_done473 ], [ %builder.new.salloc179.sroa.66.10, %b.push_done543 ]
  %builder.new.salloc179.sroa.33.12 = phi ptr [ %builder.new.salloc179.sroa.33.11, %b.grow_done473 ], [ %builder.new.salloc179.sroa.33.13, %b.push_done543 ]
  %builder.new.salloc179.sroa.0.6 = phi i64 [ %sum463, %b.grow_done473 ], [ %b.next.len563, %b.push_done543 ]
  %loop.idx.61.0 = phi i64 [ %addtmp391, %b.grow_done473 ], [ %loop.next567, %b.push_done543 ]
  %loop.cond507 = icmp slt i64 %loop.idx.61.0, 6
  br i1 %loop.cond507, label %loop.body.61, label %choice.exit223

loop.body.61:                                     ; preds = %loop.header.61
  %s.read.len516 = and i64 %call.res.fca.0.extract, 281474976710655
  %idx.oob520 = icmp uge i64 %loop.idx.61.0, %s.read.len516
  br i1 %idx.oob520, label %idx_oob522, label %idx_ok521

idx_ok521:                                        ; preds = %loop.body.61
  %s.byte.gep524 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %loop.idx.61.0
  %s.byte525 = load i8, ptr %s.byte.gep524, align 1
  %s.byte.val526 = zext i8 %s.byte525 to i64
  %b.needs.grow540 = icmp eq i64 %builder.new.salloc179.sroa.0.6, %builder.new.salloc179.sroa.66.9
  br i1 %b.needs.grow540, label %b.grow541, label %b.push_done543

idx_oob522:                                       ; preds = %loop.body.61
  call void @dva_abort_str_oob_msg()
  unreachable

b.grow541:                                        ; preds = %idx_ok521
  %b.cap2544 = mul i64 %builder.new.salloc179.sroa.66.9, 2
  %b.cap.small545 = icmp slt i64 %b.cap2544, 16
  %b.new.cap546 = select i1 %b.cap.small545, i64 16, i64 %b.cap2544
  %b.new.buf.len547 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap546, i64 1)
  %sum548 = extractvalue { i64, i1 } %b.new.buf.len547, 0
  %ovf549 = extractvalue { i64, i1 } %b.new.buf.len547, 1
  br i1 %ovf549, label %str_overflow_abort551, label %b.new.buf.len550

b.push_done543:                                   ; preds = %idx_ok521, %b.new.buf.len550
  %builder.new.salloc179.sroa.66.10 = phi i64 [ %b.new.cap546, %b.new.buf.len550 ], [ %builder.new.salloc179.sroa.66.9, %idx_ok521 ]
  %builder.new.salloc179.sroa.33.13 = phi ptr [ %b.new.buf554, %b.new.buf.len550 ], [ %builder.new.salloc179.sroa.33.12, %idx_ok521 ]
  %b.byte.gep562 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.13, i64 %builder.new.salloc179.sroa.0.6
  store i8 %s.byte525, ptr %b.byte.gep562, align 1
  %b.next.len563 = add i64 %builder.new.salloc179.sroa.0.6, 1
  %b.nul564 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.13, i64 %b.next.len563
  store i8 0, ptr %b.nul564, align 1
  %loop.next567 = add i64 %loop.idx.61.0, 1
  br label %loop.header.61

b.new.buf.len550:                                 ; preds = %b.grow541
  %arena.cur553 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf554 = call ptr @dva_arena_alloc(ptr %arena.cur553, i64 %sum548)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf554, ptr align 1 %builder.new.salloc179.sroa.33.12, i64 %builder.new.salloc179.sroa.0.6, i1 false)
  %b.grow.nul555 = getelementptr i8, ptr %b.new.buf554, i64 %builder.new.salloc179.sroa.0.6
  store i8 0, ptr %b.grow.nul555, align 1
  br label %b.push_done543

str_overflow_abort551:                            ; preds = %b.grow541
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len573:                                 ; preds = %choice.else388
  %b.need.grow578 = icmp slt i64 32, %sum571
  br i1 %b.need.grow578, label %b.grow2579, label %b.grow_done581

str_overflow_abort574:                            ; preds = %choice.else388
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2579:                                       ; preds = %b.app.new.len573
  %b.cap2582 = mul i64 32, 2
  %b.cap.small583 = icmp slt i64 %b.cap2582, 16
  %b.cap.grow584 = select i1 %b.cap.small583, i64 16, i64 %b.cap2582
  %b.cap.need585 = icmp slt i64 %b.cap.grow584, %sum571
  %b.new.cap586 = select i1 %b.cap.need585, i64 %sum571, i64 %b.cap.grow584
  %b.new.buf.len2591 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap586, i64 1)
  %sum592 = extractvalue { i64, i1 } %b.new.buf.len2591, 0
  %ovf593 = extractvalue { i64, i1 } %b.new.buf.len2591, 1
  br i1 %ovf593, label %str_overflow_abort595, label %b.new.buf.len2594

b.grow_done581:                                   ; preds = %b.app.new.len573, %b.new.buf.len2594
  %builder.new.salloc179.sroa.66.11 = phi i64 [ %b.new.cap586, %b.new.buf.len2594 ], [ 32, %b.app.new.len573 ]
  %builder.new.salloc179.sroa.33.14 = phi ptr [ %b.new.buf2598, %b.new.buf.len2594 ], [ %b.buf190, %b.app.new.len573 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc179.sroa.33.14, i64 %builder.new.salloc179.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 @str.5, i64 2, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc179.sroa.33.14, i64 %sum571
  store i8 0, ptr %b.app.nul, align 1
  %subtmp605 = sub i64 0, %"var.e'.2"
  %subtmp606 = sub i64 %subtmp605, 1
  br label %loop.header.62

b.new.buf.len2594:                                ; preds = %b.grow2579
  %arena.cur597 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2598 = call ptr @dva_arena_alloc(ptr %arena.cur597, i64 %sum592)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2598, ptr align 1 %b.buf190, i64 %builder.new.salloc179.sroa.0.0, i1 false)
  %b.grow2.nul599 = getelementptr i8, ptr %b.new.buf2598, i64 %builder.new.salloc179.sroa.0.0
  store i8 0, ptr %b.grow2.nul599, align 1
  br label %b.grow_done581

str_overflow_abort595:                            ; preds = %b.grow2579
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.62:                                   ; preds = %b.grow_done627, %b.grow_done581
  %builder.new.salloc179.sroa.66.12 = phi i64 [ %builder.new.salloc179.sroa.66.11, %b.grow_done581 ], [ %builder.new.salloc179.sroa.66.13, %b.grow_done627 ]
  %builder.new.salloc179.sroa.33.15 = phi ptr [ %builder.new.salloc179.sroa.33.14, %b.grow_done581 ], [ %builder.new.salloc179.sroa.33.16, %b.grow_done627 ]
  %builder.new.salloc179.sroa.0.7 = phi i64 [ %sum571, %b.grow_done581 ], [ %sum617, %b.grow_done627 ]
  %loop.idx.62.0 = phi i64 [ 0, %b.grow_done581 ], [ %loop.next660, %b.grow_done627 ]
  %loop.cond608 = icmp slt i64 %loop.idx.62.0, %subtmp606
  br i1 %loop.cond608, label %loop.body.62, label %loop.header.64

loop.body.62:                                     ; preds = %loop.header.62
  %b.rn.new.len616 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc179.sroa.0.7, i64 1)
  %sum617 = extractvalue { i64, i1 } %b.rn.new.len616, 0
  %ovf618 = extractvalue { i64, i1 } %b.rn.new.len616, 1
  br i1 %ovf618, label %str_overflow_abort620, label %b.rn.new.len619

b.rn.new.len619:                                  ; preds = %loop.body.62
  %b.need.grow624 = icmp slt i64 %builder.new.salloc179.sroa.66.12, %sum617
  br i1 %b.need.grow624, label %b.grow2625, label %b.grow_done627

str_overflow_abort620:                            ; preds = %loop.body.62
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2625:                                       ; preds = %b.rn.new.len619
  %b.cap2628 = mul i64 %builder.new.salloc179.sroa.66.12, 2
  %b.cap.small629 = icmp slt i64 %b.cap2628, 16
  %b.cap.grow630 = select i1 %b.cap.small629, i64 16, i64 %b.cap2628
  %b.cap.need631 = icmp slt i64 %b.cap.grow630, %sum617
  %b.new.cap632 = select i1 %b.cap.need631, i64 %sum617, i64 %b.cap.grow630
  %b.new.buf.len2637 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap632, i64 1)
  %sum638 = extractvalue { i64, i1 } %b.new.buf.len2637, 0
  %ovf639 = extractvalue { i64, i1 } %b.new.buf.len2637, 1
  br i1 %ovf639, label %str_overflow_abort641, label %b.new.buf.len2640

b.grow_done627:                                   ; preds = %b.rn.new.len619, %b.new.buf.len2640
  %builder.new.salloc179.sroa.66.13 = phi i64 [ %b.new.cap632, %b.new.buf.len2640 ], [ %builder.new.salloc179.sroa.66.12, %b.rn.new.len619 ]
  %builder.new.salloc179.sroa.33.16 = phi ptr [ %b.new.buf2644, %b.new.buf.len2640 ], [ %builder.new.salloc179.sroa.33.15, %b.rn.new.len619 ]
  %b.rn.dst650 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.16, i64 %builder.new.salloc179.sroa.0.7
  store i8 48, ptr %b.rn.dst650, align 1
  %br.nul657 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.16, i64 %sum617
  store i8 0, ptr %br.nul657, align 1
  %loop.next660 = add i64 %loop.idx.62.0, 1
  br label %loop.header.62

b.new.buf.len2640:                                ; preds = %b.grow2625
  %arena.cur643 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2644 = call ptr @dva_arena_alloc(ptr %arena.cur643, i64 %sum638)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2644, ptr align 1 %builder.new.salloc179.sroa.33.15, i64 %builder.new.salloc179.sroa.0.7, i1 false)
  %b.grow2.nul645 = getelementptr i8, ptr %b.new.buf2644, i64 %builder.new.salloc179.sroa.0.7
  store i8 0, ptr %b.grow2.nul645, align 1
  br label %b.grow_done627

str_overflow_abort641:                            ; preds = %b.grow2625
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.64:                                   ; preds = %loop.header.62, %b.push_done698
  %builder.new.salloc179.sroa.66.14 = phi i64 [ %builder.new.salloc179.sroa.66.15, %b.push_done698 ], [ %builder.new.salloc179.sroa.66.12, %loop.header.62 ]
  %builder.new.salloc179.sroa.33.17 = phi ptr [ %builder.new.salloc179.sroa.33.18, %b.push_done698 ], [ %builder.new.salloc179.sroa.33.15, %loop.header.62 ]
  %builder.new.salloc179.sroa.0.8 = phi i64 [ %b.next.len718, %b.push_done698 ], [ %builder.new.salloc179.sroa.0.7, %loop.header.62 ]
  %loop.idx.64.0 = phi i64 [ %loop.next722, %b.push_done698 ], [ 0, %loop.header.62 ]
  %loop.cond662 = icmp slt i64 %loop.idx.64.0, 6
  br i1 %loop.cond662, label %loop.body.64, label %choice.exit223

loop.body.64:                                     ; preds = %loop.header.64
  %s.read.len671 = and i64 %call.res.fca.0.extract, 281474976710655
  %idx.oob675 = icmp uge i64 %loop.idx.64.0, %s.read.len671
  br i1 %idx.oob675, label %idx_oob677, label %idx_ok676

idx_ok676:                                        ; preds = %loop.body.64
  %s.byte.gep679 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %loop.idx.64.0
  %s.byte680 = load i8, ptr %s.byte.gep679, align 1
  %s.byte.val681 = zext i8 %s.byte680 to i64
  %b.needs.grow695 = icmp eq i64 %builder.new.salloc179.sroa.0.8, %builder.new.salloc179.sroa.66.14
  br i1 %b.needs.grow695, label %b.grow696, label %b.push_done698

idx_oob677:                                       ; preds = %loop.body.64
  call void @dva_abort_str_oob_msg()
  unreachable

b.grow696:                                        ; preds = %idx_ok676
  %b.cap2699 = mul i64 %builder.new.salloc179.sroa.66.14, 2
  %b.cap.small700 = icmp slt i64 %b.cap2699, 16
  %b.new.cap701 = select i1 %b.cap.small700, i64 16, i64 %b.cap2699
  %b.new.buf.len702 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap701, i64 1)
  %sum703 = extractvalue { i64, i1 } %b.new.buf.len702, 0
  %ovf704 = extractvalue { i64, i1 } %b.new.buf.len702, 1
  br i1 %ovf704, label %str_overflow_abort706, label %b.new.buf.len705

b.push_done698:                                   ; preds = %idx_ok676, %b.new.buf.len705
  %builder.new.salloc179.sroa.66.15 = phi i64 [ %b.new.cap701, %b.new.buf.len705 ], [ %builder.new.salloc179.sroa.66.14, %idx_ok676 ]
  %builder.new.salloc179.sroa.33.18 = phi ptr [ %b.new.buf709, %b.new.buf.len705 ], [ %builder.new.salloc179.sroa.33.17, %idx_ok676 ]
  %b.byte.gep717 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.18, i64 %builder.new.salloc179.sroa.0.8
  store i8 %s.byte680, ptr %b.byte.gep717, align 1
  %b.next.len718 = add i64 %builder.new.salloc179.sroa.0.8, 1
  %b.nul719 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.18, i64 %b.next.len718
  store i8 0, ptr %b.nul719, align 1
  %loop.next722 = add i64 %loop.idx.64.0, 1
  br label %loop.header.64

b.new.buf.len705:                                 ; preds = %b.grow696
  %arena.cur708 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf709 = call ptr @dva_arena_alloc(ptr %arena.cur708, i64 %sum703)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf709, ptr align 1 %builder.new.salloc179.sroa.33.17, i64 %builder.new.salloc179.sroa.0.8, i1 false)
  %b.grow.nul710 = getelementptr i8, ptr %b.new.buf709, i64 %builder.new.salloc179.sroa.0.8
  store i8 0, ptr %b.grow.nul710, align 1
  br label %b.push_done698

str_overflow_abort706:                            ; preds = %b.grow696
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.65:                                   ; preds = %loop.body.65, %choice.exit223
  %"var.dot_pos'.0" = phi i64 [ -1, %choice.exit223 ], [ %spec.select955, %loop.body.65 ]
  %loop.idx.65.0 = phi i64 [ 0, %choice.exit223 ], [ %loop.next755, %loop.body.65 ]
  %loop.cond741 = icmp slt i64 %loop.idx.65.0, %str.len737
  br i1 %loop.cond741, label %loop.body.65, label %loop.exit.65

loop.body.65:                                     ; preds = %loop.header.65
  %s.byte.gep743 = getelementptr i8, ptr %builder.new.salloc179.sroa.33.2, i64 %loop.idx.65.0
  %s.byte744 = load i8, ptr %s.byte.gep743, align 1
  %s.byte.val745 = zext i8 %s.byte744 to i64
  %cmptmp750 = icmp eq i64 %s.byte.val745, 46
  %spec.select955 = select i1 %cmptmp750, i64 %loop.idx.65.0, i64 %"var.dot_pos'.0"
  %loop.next755 = add i64 %loop.idx.65.0, 1
  br label %loop.header.65

loop.exit.65:                                     ; preds = %loop.header.65
  %str.len.query757 = load i64, ptr %builder.freeze729, align 8
  %str.len.query758 = and i64 %str.len.query757, 281474976710655
  %cmptmp761 = icmp sge i64 %"var.dot_pos'.0", 0
  br i1 %cmptmp761, label %loop.header.66, label %choice.exit763

choice.exit763:                                   ; preds = %choice.else789, %loop.exit.65
  %"var.end'.0" = phi i64 [ %spec.select956, %choice.else789 ], [ %str.len.query758, %loop.exit.65 ]
  %s.read.len804 = load i64, ptr %builder.freeze729, align 8
  %s.read.len805 = and i64 %s.read.len804, 281474976710655
  %s.read.data807 = load ptr, ptr %str.build.data.gep731, align 8
  %end.is_neg = icmp slt i64 %"var.end'.0", 0
  %rel.end = add i64 %s.read.len805, %"var.end'.0"
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %"var.end'.0"
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len805
  %final.end = select i1 %end.gt.len, i64 %s.read.len805, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  %cmptmp812 = icmp slt i64 %"var.e'.2", 0
  br i1 %cmptmp812, label %choice.then813, label %choice.else814

loop.header.66:                                   ; preds = %loop.exit.65, %choice.exit790
  %"var.end'.1" = phi i64 [ %subtmp769, %choice.exit790 ], [ %str.len.query758, %loop.exit.65 ]
  %loop.idx.66.0 = phi i64 [ %loop.next794, %choice.exit790 ], [ 0, %loop.exit.65 ]
  %subtmp769 = sub i64 %"var.end'.1", 1
  %cmptmp771 = icmp sgt i64 %subtmp769, %"var.dot_pos'.0"
  br i1 %cmptmp771, label %and.67.then, label %choice.else789

and.67.then:                                      ; preds = %loop.header.66
  %s.read.len774 = load i64, ptr %builder.freeze729, align 8
  %s.read.len775 = and i64 %s.read.len774, 281474976710655
  %s.read.data777 = load ptr, ptr %str.build.data.gep731, align 8
  %idx.oob780 = icmp uge i64 %subtmp769, %s.read.len775
  br i1 %idx.oob780, label %idx_oob782, label %idx_ok781

idx_ok781:                                        ; preds = %and.67.then
  %s.byte.gep784 = getelementptr i8, ptr %s.read.data777, i64 %subtmp769
  %s.byte785 = load i8, ptr %s.byte.gep784, align 1
  %s.byte.val786 = zext i8 %s.byte785 to i64
  %cmptmp787 = icmp eq i64 %s.byte.val786, 48
  br i1 %cmptmp787, label %choice.exit790, label %choice.else789

idx_oob782:                                       ; preds = %and.67.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.else789:                                   ; preds = %loop.header.66, %idx_ok781
  %cmptmp798 = icmp eq i64 %subtmp769, %"var.dot_pos'.0"
  %spec.select956 = select i1 %cmptmp798, i64 %"var.dot_pos'.0", i64 %"var.end'.1"
  br label %choice.exit763

choice.exit790:                                   ; preds = %idx_ok781
  %loop.next794 = add i64 %loop.idx.66.0, 1
  br label %loop.header.66

choice.then813:                                   ; preds = %choice.exit763
  %subtmp817 = sub i64 0, %"var.e'.2"
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %subtmp817, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.ilen)
  %sum818 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf819 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf819, label %str_overflow_abort821, label %cat.sum.len820

choice.else814:                                   ; preds = %choice.exit763
  %call.res833 = call { i64, ptr } @"str::from_int"(i64 %"var.e'.2")
  %call.res833.fca.0.extract = extractvalue { i64, ptr } %call.res833, 0
  store i64 %call.res833.fca.0.extract, ptr %ret.ub.salloc834, align 8
  %call.res833.fca.1.extract = extractvalue { i64, ptr } %call.res833, 1
  %call.res833.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %ret.ub.salloc834, i32 0, i32 1
  store ptr %call.res833.fca.1.extract, ptr %call.res833.fca.1.gep, align 8
  br label %choice.exit815

choice.exit815:                                   ; preds = %choice.else814, %concat.tot.len825
  %choice.res835 = phi ptr [ %concat.str, %concat.tot.len825 ], [ %ret.ub.salloc834, %choice.else814 ]
  %cmptmp839 = icmp sge i64 %"var.e'.2", 6
  %or.68.phi = select i1 %cmptmp218, i1 true, i1 %cmptmp839
  br i1 %or.68.phi, label %choice.then840, label %choice.exit842

cat.sum.len820:                                   ; preds = %choice.then813
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum818, i64 1)
  %sum823 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf824 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf824, label %str_overflow_abort826, label %concat.tot.len825

str_overflow_abort821:                            ; preds = %choice.then813
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len825:                                ; preds = %cat.sum.len820
  %arena.cur828 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur828, i64 %sum823)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.6, i64 1, i1 false)
  %cat.dst829 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst829, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum818
  store i8 0, ptr %concat.nul, align 1
  store i64 %sum818, ptr %concat.str, align 8
  %str.build.data.gep831 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep831, align 8
  br label %choice.exit815

str_overflow_abort826:                            ; preds = %cat.sum.len820
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then840:                                   ; preds = %choice.exit815
  %cat.seg845 = and i64 %view.len, 281474976710655
  %cat.seg851 = load i64, ptr %choice.res835, align 8
  %cat.seg852 = and i64 %cat.seg851, 281474976710655
  %cat.seg853 = getelementptr inbounds { i64, ptr }, ptr %choice.res835, i32 0, i32 1
  %cat.seg854 = load ptr, ptr %cat.seg853, align 8
  %cat.sum.len855 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg845, i64 1)
  %sum856 = extractvalue { i64, i1 } %cat.sum.len855, 0
  %ovf857 = extractvalue { i64, i1 } %cat.sum.len855, 1
  br i1 %ovf857, label %str_overflow_abort859, label %cat.sum.len858

choice.exit842:                                   ; preds = %choice.exit815, %concat.tot.len870
  %choice.res884.sroa.phi.sroa.speculated = phi i64 [ %choice.res884.sroa.phi.sroa.speculate.load.concat.tot.len870, %concat.tot.len870 ], [ %view.len, %choice.exit815 ]
  %choice.res884.sroa.phi912.sroa.speculated = phi ptr [ %concat.buf874, %concat.tot.len870 ], [ %s.read.data807, %choice.exit815 ]
  %ret.pack885.fca.0.insert = insertvalue { i64, ptr } poison, i64 %choice.res884.sroa.phi.sroa.speculated, 0
  %ret.pack885.fca.1.insert = insertvalue { i64, ptr } %ret.pack885.fca.0.insert, ptr %choice.res884.sroa.phi912.sroa.speculated, 1
  br label %common.ret

cat.sum.len858:                                   ; preds = %choice.then840
  %cat.sum.len861 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum856, i64 %cat.seg852)
  %sum862 = extractvalue { i64, i1 } %cat.sum.len861, 0
  %ovf863 = extractvalue { i64, i1 } %cat.sum.len861, 1
  br i1 %ovf863, label %str_overflow_abort865, label %cat.sum.len864

str_overflow_abort859:                            ; preds = %choice.then840
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len864:                                   ; preds = %cat.sum.len858
  %concat.tot.len867 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum862, i64 1)
  %sum868 = extractvalue { i64, i1 } %concat.tot.len867, 0
  %ovf869 = extractvalue { i64, i1 } %concat.tot.len867, 1
  br i1 %ovf869, label %str_overflow_abort871, label %concat.tot.len870

str_overflow_abort865:                            ; preds = %cat.sum.len858
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len870:                                ; preds = %cat.sum.len864
  %arena.cur873 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf874 = call ptr @dva_arena_alloc(ptr %arena.cur873, i64 %sum868)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf874, ptr align 1 %s.read.data807, i64 %cat.seg845, i1 false)
  %cat.dst876 = getelementptr i8, ptr %concat.buf874, i64 %cat.seg845
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst876, ptr align 1 @str.7, i64 1, i1 false)
  %cat.off877 = add i64 %cat.seg845, 1
  %cat.dst878 = getelementptr i8, ptr %concat.buf874, i64 %cat.off877
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst878, ptr align 1 %cat.seg854, i64 %cat.seg852, i1 false)
  %concat.nul879 = getelementptr i8, ptr %concat.buf874, i64 %sum862
  store i8 0, ptr %concat.nul879, align 1
  store i64 %sum862, ptr %concat.str880, align 8
  store ptr %concat.buf874, ptr %concat.str880.sroa.gep913, align 8
  %choice.res884.sroa.phi.sroa.speculate.load.concat.tot.len870 = load i64, ptr %concat.str880, align 8
  br label %choice.exit842

str_overflow_abort871:                            ; preds = %cat.sum.len864
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define i64 @"str::cmp"(ptr %0, ptr %1) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.len.query5 = load i64, ptr %1, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %cmptmp = icmp slt i64 %str.len.query2, %str.len.query6
  %str.len.query2.str.len.query6 = select i1 %cmptmp, i64 %str.len.query2, i64 %str.len.query6
  br label %loop.header.69

loop.header.69:                                   ; preds = %choice.exit35, %entry
  %loop.idx.69.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit35 ]
  %loop.cond = icmp slt i64 %loop.idx.69.0, %str.len.query2.str.len.query6
  br i1 %loop.cond, label %loop.body.69, label %loop.exit.69

loop.body.69:                                     ; preds = %loop.header.69
  %s.read.len13 = load i64, ptr %0, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %loop.idx.69.0, %s.read.len14
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.69:                                     ; preds = %loop.header.69
  %cmptmp45 = icmp eq i64 %str.len.query2, %str.len.query6
  %.66 = select i1 %cmptmp, i64 -1, i64 1
  %spec.select = select i1 %cmptmp45, i64 0, i64 %.66
  br label %common.ret

idx_ok:                                           ; preds = %loop.body.69
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %loop.idx.69.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %s.read.len19 = load i64, ptr %1, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data21 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data21, align 8
  %idx.oob24 = icmp uge i64 %loop.idx.69.0, %s.read.len20
  br i1 %idx.oob24, label %idx_oob26, label %idx_ok25

idx_oob:                                          ; preds = %loop.body.69
  call void @dva_abort_str_oob_msg()
  unreachable

idx_ok25:                                         ; preds = %idx_ok
  %s.byte.gep28 = getelementptr i8, ptr %s.read.data22, i64 %loop.idx.69.0
  %s.byte29 = load i8, ptr %s.byte.gep28, align 1
  %s.byte.val30 = zext i8 %s.byte29 to i64
  %cmptmp33 = icmp ne i64 %s.byte.val, %s.byte.val30
  br i1 %cmptmp33, label %choice.then34, label %choice.exit35

idx_oob26:                                        ; preds = %idx_ok
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then34:                                    ; preds = %idx_ok25
  %cmptmp38 = icmp slt i64 %s.byte.val, %s.byte.val30
  %. = select i1 %cmptmp38, i64 -1, i64 1
  br label %common.ret

choice.exit35:                                    ; preds = %idx_ok25
  %loop.next = add i64 %loop.idx.69.0, 1
  br label %loop.header.69

common.ret:                                       ; preds = %loop.exit.69, %choice.then34
  %common.ret.op = phi i64 [ %., %choice.then34 ], [ %spec.select, %loop.exit.69 ]
  ret i64 %common.ret.op
}

define i1 @"str::lt"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call i64 @"str::cmp"(ptr %0, ptr %1)
  %cmptmp = icmp slt i64 %call.res, 0
  ret i1 %cmptmp
}

define ptr @"str::to_int"(ptr %0) #3 {
entry:
  %str.len1 = load i64, ptr %0, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  br label %loop.header.70

loop.header.70:                                   ; preds = %choice.exit, %entry
  %"var.consumed'.0" = phi i64 [ 0, %entry ], [ %addtmp8, %choice.exit ]
  %"var.val'.0" = phi i64 [ 0, %entry ], [ %addtmp, %choice.exit ]
  %loop.idx.70.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.70.0, %str.len2
  br i1 %loop.cond, label %loop.body.70, label %loop.exit.70

loop.body.70:                                     ; preds = %loop.header.70
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %loop.idx.70.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_digit"(i64 %s.byte.val)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %loop.exit.70, label %choice.exit

loop.exit.70:                                     ; preds = %loop.body.70, %loop.header.70
  %val.match = icmp eq i64 %"var.consumed'.0", 0
  br i1 %val.match, label %common.ret, label %choice.next

choice.exit:                                      ; preds = %loop.body.70
  %multmp = mul i64 %"var.val'.0", 10
  %subtmp = sub i64 %s.byte.val, 48
  %addtmp = add i64 %multmp, %subtmp
  %addtmp8 = add i64 %"var.consumed'.0", 1
  %loop.next = add i64 %loop.idx.70.0, 1
  br label %loop.header.70

common.ret:                                       ; preds = %loop.exit.70, %choice.next
  %common.ret.op = phi ptr [ %rec.alloc, %choice.next ], [ null, %loop.exit.70 ]
  ret ptr %common.ret.op

choice.next:                                      ; preds = %loop.exit.70
  %s.read.len13 = load i64, ptr %0, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %"var.consumed'.0", 0
  %rel.start = add i64 %s.read.len14, %"var.consumed'.0"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.consumed'.0"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len14
  %final.start = select i1 %start.gt.len, i64 %s.read.len14, i64 %c.start.0
  %rel.end = add i64 %s.read.len14, %s.read.len14
  %view.empty = icmp sle i64 %s.read.len14, %final.start
  %view.len.sub = sub i64 %s.read.len14, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data16, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  store i64 %"var.val'.0", ptr %rec.alloc, align 8
  %rec.fld19 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld19, align 8
  br label %common.ret
}

define ptr @"str::to_hex"(ptr %0) #3 {
entry:
  %str.len1 = load i64, ptr %0, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  br label %loop.header.71

loop.header.71:                                   ; preds = %choice.then, %entry
  %"var.consumed'.0" = phi i64 [ 0, %entry ], [ %addtmp9, %choice.then ]
  %"var.val'.0" = phi i64 [ 0, %entry ], [ %addtmp, %choice.then ]
  %loop.idx.71.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.then ]
  %loop.cond = icmp slt i64 %loop.idx.71.0, %str.len2
  br i1 %loop.cond, label %loop.body.71, label %loop.exit.71

loop.body.71:                                     ; preds = %loop.header.71
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %loop.idx.71.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call { i1, i64 } @"ascii::hex_value"(i64 %s.byte.val)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %loop.exit.71

loop.exit.71:                                     ; preds = %loop.body.71, %loop.header.71
  %val.match = icmp eq i64 %"var.consumed'.0", 0
  br i1 %val.match, label %common.ret, label %choice.next

choice.then:                                      ; preds = %loop.body.71
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %multmp = mul i64 %"var.val'.0", 16
  %addtmp = add i64 %multmp, %ram.pay
  %addtmp9 = add i64 %"var.consumed'.0", 1
  %loop.next = add i64 %loop.idx.71.0, 1
  br label %loop.header.71

common.ret:                                       ; preds = %loop.exit.71, %choice.next
  %common.ret.op = phi ptr [ %rec.alloc, %choice.next ], [ null, %loop.exit.71 ]
  ret ptr %common.ret.op

choice.next:                                      ; preds = %loop.exit.71
  %s.read.len14 = load i64, ptr %0, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data17 = load ptr, ptr %s.read.data, align 8
  %start.is_neg = icmp slt i64 %"var.consumed'.0", 0
  %rel.start = add i64 %s.read.len15, %"var.consumed'.0"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.consumed'.0"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len15
  %final.start = select i1 %start.gt.len, i64 %s.read.len15, i64 %c.start.0
  %rel.end = add i64 %s.read.len15, %s.read.len15
  %view.empty = icmp sle i64 %s.read.len15, %final.start
  %view.len.sub = sub i64 %s.read.len15, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data17, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  store i64 %"var.val'.0", ptr %rec.alloc, align 8
  %rec.fld20 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld20, align 8
  br label %common.ret
}

declare { i1, i64 } @"ascii::hex_value"(i64) #3

define { i64, ptr } @"str::hex_to_str"(i64 %0) #3 {
entry:
  %val.match = icmp eq i64 %0, 0
  br i1 %val.match, label %common.ret, label %b.buf.len1

common.ret:                                       ; preds = %entry, %loop.exit.76
  %common.ret.op = phi { i64, ptr } [ %ret.pack235.fca.1.insert, %loop.exit.76 ], [ { i64 3, ptr @str.8 }, %entry ]
  ret { i64, ptr } %common.ret.op

b.buf.len1:                                       ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 33)
  store i8 0, ptr %b.buf, align 1
  %cmptmp = icmp slt i64 %0, 0
  %subtmp = sub i64 0, %0
  %choice.res = select i1 %cmptmp, i64 %subtmp, i64 %0
  br label %loop.header.72

loop.header.72:                                   ; preds = %b.push_done, %b.buf.len1
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %b.buf.len1 ], [ %b.next.len, %b.push_done ]
  %builder.new.salloc.sroa.15.0 = phi ptr [ %b.buf, %b.buf.len1 ], [ %builder.new.salloc.sroa.15.1, %b.push_done ]
  %builder.new.salloc.sroa.30.0 = phi i64 [ 32, %b.buf.len1 ], [ %builder.new.salloc.sroa.30.1, %b.push_done ]
  %"var.n'.0" = phi i64 [ %choice.res, %b.buf.len1 ], [ %shrtmp, %b.push_done ]
  %loop.idx.72.0 = phi i64 [ 0, %b.buf.len1 ], [ %loop.next, %b.push_done ]
  %loop.cond = icmp slt i64 %loop.idx.72.0, 32
  %cmptmp11 = icmp ugt i64 %"var.n'.0", 0
  %or.cond = select i1 %loop.cond, i1 %cmptmp11, i1 false
  br i1 %or.cond, label %choice.case9, label %loop.exit.72

loop.exit.72:                                     ; preds = %loop.header.72
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 1)
  %sum31 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf32 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf32, label %str_overflow_abort34, label %b.rn.new.len33

choice.case9:                                     ; preds = %loop.header.72
  %bandtmp = and i64 %"var.n'.0", 15
  %call.res = call i64 @"ascii::hex_char_upper"(i64 %bandtmp)
  %b.b.ge0 = icmp sge i64 %call.res, 0
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

b.byte_ok:                                        ; preds = %choice.case9
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.needs.grow = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.30.0
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %choice.case9
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %builder.new.salloc.sroa.30.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum19 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf20 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf20, label %str_overflow_abort22, label %b.new.buf.len21

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len21
  %builder.new.salloc.sroa.15.1 = phi ptr [ %b.new.buf, %b.new.buf.len21 ], [ %builder.new.salloc.sroa.15.0, %b.byte_ok ]
  %builder.new.salloc.sroa.30.1 = phi i64 [ %b.new.cap, %b.new.buf.len21 ], [ %builder.new.salloc.sroa.30.0, %b.byte_ok ]
  %b.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.15.1, i64 %builder.new.salloc.sroa.0.0
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul = getelementptr i8, ptr %builder.new.salloc.sroa.15.1, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %shrtmp = lshr i64 %"var.n'.0", 4
  %loop.next = add i64 %loop.idx.72.0, 1
  br label %loop.header.72

b.new.buf.len21:                                  ; preds = %b.grow
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %builder.new.salloc.sroa.15.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul, align 1
  br label %b.push_done

str_overflow_abort22:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len33:                                   ; preds = %loop.exit.72
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.30.0, %sum31
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort34:                             ; preds = %loop.exit.72
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.rn.new.len33
  %b.cap238 = mul i64 %builder.new.salloc.sroa.30.0, 2
  %b.cap.small39 = icmp slt i64 %b.cap238, 16
  %b.cap.grow = select i1 %b.cap.small39, i64 16, i64 %b.cap238
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum31
  %b.new.cap40 = select i1 %b.cap.need, i64 %sum31, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap40, i64 1)
  %sum43 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf44 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf44, label %str_overflow_abort46, label %b.new.buf.len245

b.grow_done:                                      ; preds = %b.rn.new.len33, %b.new.buf.len245
  %builder.new.salloc.sroa.15.2 = phi ptr [ %b.new.buf2, %b.new.buf.len245 ], [ %builder.new.salloc.sroa.15.0, %b.rn.new.len33 ]
  %builder.new.salloc.sroa.30.2 = phi i64 [ %b.new.cap40, %b.new.buf.len245 ], [ %builder.new.salloc.sroa.30.0, %b.rn.new.len33 ]
  %b.rn.dst = getelementptr i8, ptr %builder.new.salloc.sroa.15.2, i64 %builder.new.salloc.sroa.0.0
  store i8 120, ptr %b.rn.dst, align 1
  %br.nul = getelementptr i8, ptr %builder.new.salloc.sroa.15.2, i64 %sum31
  store i8 0, ptr %br.nul, align 1
  %b.rn.new.len54 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum31, i64 1)
  %sum55 = extractvalue { i64, i1 } %b.rn.new.len54, 0
  %ovf56 = extractvalue { i64, i1 } %b.rn.new.len54, 1
  br i1 %ovf56, label %str_overflow_abort58, label %b.rn.new.len57

b.new.buf.len245:                                 ; preds = %b.grow2
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.15.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort46:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.rn.new.len57:                                   ; preds = %b.grow_done
  %b.need.grow62 = icmp slt i64 %builder.new.salloc.sroa.30.2, %sum55
  br i1 %b.need.grow62, label %b.grow263, label %b.grow_done65

str_overflow_abort58:                             ; preds = %b.grow_done
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow263:                                        ; preds = %b.rn.new.len57
  %b.cap266 = mul i64 %builder.new.salloc.sroa.30.2, 2
  %b.cap.small67 = icmp slt i64 %b.cap266, 16
  %b.cap.grow68 = select i1 %b.cap.small67, i64 16, i64 %b.cap266
  %b.cap.need69 = icmp slt i64 %b.cap.grow68, %sum55
  %b.new.cap70 = select i1 %b.cap.need69, i64 %sum55, i64 %b.cap.grow68
  %b.new.buf.len275 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap70, i64 1)
  %sum76 = extractvalue { i64, i1 } %b.new.buf.len275, 0
  %ovf77 = extractvalue { i64, i1 } %b.new.buf.len275, 1
  br i1 %ovf77, label %str_overflow_abort79, label %b.new.buf.len278

b.grow_done65:                                    ; preds = %b.rn.new.len57, %b.new.buf.len278
  %builder.new.salloc.sroa.15.3 = phi ptr [ %b.new.buf282, %b.new.buf.len278 ], [ %builder.new.salloc.sroa.15.2, %b.rn.new.len57 ]
  %builder.new.salloc.sroa.30.3 = phi i64 [ %b.new.cap70, %b.new.buf.len278 ], [ %builder.new.salloc.sroa.30.2, %b.rn.new.len57 ]
  %b.rn.dst88 = getelementptr i8, ptr %builder.new.salloc.sroa.15.3, i64 %sum31
  store i8 48, ptr %b.rn.dst88, align 1
  %br.nul95 = getelementptr i8, ptr %builder.new.salloc.sroa.15.3, i64 %sum55
  store i8 0, ptr %br.nul95, align 1
  br i1 %cmptmp, label %choice.then98, label %b.buf.len156

b.new.buf.len278:                                 ; preds = %b.grow263
  %arena.cur81 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf282 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 %sum76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf282, ptr align 1 %builder.new.salloc.sroa.15.2, i64 %sum31, i1 false)
  %b.grow2.nul83 = getelementptr i8, ptr %b.new.buf282, i64 %sum31
  store i8 0, ptr %b.grow2.nul83, align 1
  br label %b.grow_done65

str_overflow_abort79:                             ; preds = %b.grow263
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then98:                                    ; preds = %b.grow_done65
  %b.rn.new.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum55, i64 1)
  %sum104 = extractvalue { i64, i1 } %b.rn.new.len103, 0
  %ovf105 = extractvalue { i64, i1 } %b.rn.new.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.rn.new.len106

b.rn.new.len106:                                  ; preds = %choice.then98
  %b.need.grow111 = icmp slt i64 %builder.new.salloc.sroa.30.3, %sum104
  br i1 %b.need.grow111, label %b.grow2112, label %b.grow_done114

str_overflow_abort107:                            ; preds = %choice.then98
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2112:                                       ; preds = %b.rn.new.len106
  %b.cap2115 = mul i64 %builder.new.salloc.sroa.30.3, 2
  %b.cap.small116 = icmp slt i64 %b.cap2115, 16
  %b.cap.grow117 = select i1 %b.cap.small116, i64 16, i64 %b.cap2115
  %b.cap.need118 = icmp slt i64 %b.cap.grow117, %sum104
  %b.new.cap119 = select i1 %b.cap.need118, i64 %sum104, i64 %b.cap.grow117
  %b.new.buf.len2124 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap119, i64 1)
  %sum125 = extractvalue { i64, i1 } %b.new.buf.len2124, 0
  %ovf126 = extractvalue { i64, i1 } %b.new.buf.len2124, 1
  br i1 %ovf126, label %str_overflow_abort128, label %b.new.buf.len2127

b.grow_done114:                                   ; preds = %b.rn.new.len106, %b.new.buf.len2127
  %builder.new.salloc.sroa.15.5 = phi ptr [ %b.new.buf2131, %b.new.buf.len2127 ], [ %builder.new.salloc.sroa.15.3, %b.rn.new.len106 ]
  %b.rn.dst137 = getelementptr i8, ptr %builder.new.salloc.sroa.15.5, i64 %sum55
  store i8 45, ptr %b.rn.dst137, align 1
  %br.nul144 = getelementptr i8, ptr %builder.new.salloc.sroa.15.5, i64 %sum104
  store i8 0, ptr %br.nul144, align 1
  br label %b.buf.len156

b.new.buf.len2127:                                ; preds = %b.grow2112
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 %sum125)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2131, ptr align 1 %builder.new.salloc.sroa.15.3, i64 %sum55, i1 false)
  %b.grow2.nul132 = getelementptr i8, ptr %b.new.buf2131, i64 %sum55
  store i8 0, ptr %b.grow2.nul132, align 1
  br label %b.grow_done114

str_overflow_abort128:                            ; preds = %b.grow2112
  call void @dva_abort_str_overflow_msg()
  unreachable

b.buf.len156:                                     ; preds = %b.grow_done65, %b.grow_done114
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum104, %b.grow_done114 ], [ %sum55, %b.grow_done65 ]
  %builder.new.salloc.sroa.15.4 = phi ptr [ %builder.new.salloc.sroa.15.5, %b.grow_done114 ], [ %builder.new.salloc.sroa.15.3, %b.grow_done65 ]
  %arena.cur159 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 33)
  store i8 0, ptr %b.buf160, align 1
  %str.len.query164 = and i64 %builder.new.salloc.sroa.0.1, 281474976710655
  br label %loop.header.76

loop.header.76:                                   ; preds = %b.push_done199, %b.buf.len156
  %builder.new.salloc149.sroa.12.0 = phi i64 [ 32, %b.buf.len156 ], [ %builder.new.salloc149.sroa.12.1, %b.push_done199 ]
  %builder.new.salloc149.sroa.6.0 = phi ptr [ %b.buf160, %b.buf.len156 ], [ %builder.new.salloc149.sroa.6.1, %b.push_done199 ]
  %builder.new.salloc149.sroa.0.0 = phi i64 [ 0, %b.buf.len156 ], [ %b.next.len219, %b.push_done199 ]
  %loop.idx.76.0 = phi i64 [ 0, %b.buf.len156 ], [ %loop.next223, %b.push_done199 ]
  %loop.cond166 = icmp slt i64 %loop.idx.76.0, %str.len.query164
  br i1 %loop.cond166, label %loop.body.76, label %loop.exit.76

loop.body.76:                                     ; preds = %loop.header.76
  %subtmp179 = sub i64 %str.len.query164, 1
  %subtmp181 = sub i64 %subtmp179, %loop.idx.76.0
  %idx.oob = icmp uge i64 %subtmp181, %str.len.query164
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.76:                                     ; preds = %loop.header.76
  %ret.pack235.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc149.sroa.0.0, 0
  %ret.pack235.fca.1.insert = insertvalue { i64, ptr } %ret.pack235.fca.0.insert, ptr %builder.new.salloc149.sroa.6.0, 1
  br label %common.ret

idx_ok:                                           ; preds = %loop.body.76
  %s.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.15.4, i64 %subtmp181
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.needs.grow196 = icmp eq i64 %builder.new.salloc149.sroa.0.0, %builder.new.salloc149.sroa.12.0
  br i1 %b.needs.grow196, label %b.grow197, label %b.push_done199

idx_oob:                                          ; preds = %loop.body.76
  call void @dva_abort_str_oob_msg()
  unreachable

b.grow197:                                        ; preds = %idx_ok
  %b.cap2200 = mul i64 %builder.new.salloc149.sroa.12.0, 2
  %b.cap.small201 = icmp slt i64 %b.cap2200, 16
  %b.new.cap202 = select i1 %b.cap.small201, i64 16, i64 %b.cap2200
  %b.new.buf.len203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap202, i64 1)
  %sum204 = extractvalue { i64, i1 } %b.new.buf.len203, 0
  %ovf205 = extractvalue { i64, i1 } %b.new.buf.len203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %b.new.buf.len206

b.push_done199:                                   ; preds = %idx_ok, %b.new.buf.len206
  %builder.new.salloc149.sroa.12.1 = phi i64 [ %b.new.cap202, %b.new.buf.len206 ], [ %builder.new.salloc149.sroa.12.0, %idx_ok ]
  %builder.new.salloc149.sroa.6.1 = phi ptr [ %b.new.buf210, %b.new.buf.len206 ], [ %builder.new.salloc149.sroa.6.0, %idx_ok ]
  %b.byte.gep218 = getelementptr i8, ptr %builder.new.salloc149.sroa.6.1, i64 %builder.new.salloc149.sroa.0.0
  store i8 %s.byte, ptr %b.byte.gep218, align 1
  %b.next.len219 = add i64 %builder.new.salloc149.sroa.0.0, 1
  %b.nul220 = getelementptr i8, ptr %builder.new.salloc149.sroa.6.1, i64 %b.next.len219
  store i8 0, ptr %b.nul220, align 1
  %loop.next223 = add i64 %loop.idx.76.0, 1
  br label %loop.header.76

b.new.buf.len206:                                 ; preds = %b.grow197
  %arena.cur209 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 %sum204)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf210, ptr align 1 %builder.new.salloc149.sroa.6.0, i64 %builder.new.salloc149.sroa.0.0, i1 false)
  %b.grow.nul211 = getelementptr i8, ptr %b.new.buf210, i64 %builder.new.salloc149.sroa.0.0
  store i8 0, ptr %b.grow.nul211, align 1
  br label %b.push_done199

str_overflow_abort207:                            ; preds = %b.grow197
  call void @dva_abort_str_overflow_msg()
  unreachable
}

declare i64 @"ascii::hex_char_upper"(i64) #3

; Function Attrs: inlinehint
define i1 @"str::is_empty"(ptr %0) #4 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  ret i1 %cmptmp
}

; Function Attrs: inlinehint
define i1 @"str::is_blank"(ptr %0) #4 {
entry:
  %str.len1 = load i64, ptr %0, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  br label %loop.header.77

loop.header.77:                                   ; preds = %choice.exit, %entry
  %loop.idx.77.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.77.0, %str.len2
  br i1 %loop.cond, label %loop.body.77, label %common.ret

loop.body.77:                                     ; preds = %loop.header.77
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %loop.idx.77.0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %loop.body.77, %loop.header.77
  %common.ret.op = phi i1 [ true, %loop.header.77 ], [ false, %loop.body.77 ]
  ret i1 %common.ret.op

choice.exit:                                      ; preds = %loop.body.77
  %loop.next = add i64 %loop.idx.77.0, 1
  br label %loop.header.77
}

; Function Attrs: inlinehint
define i1 @"str::starts_with"(ptr %0, ptr %1) #4 {
entry:
  %str.len.query1 = load i64, ptr %1, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %entry
  %str.len.query6 = load i64, ptr %0, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %cmptmp9 = icmp sge i64 %str.len.query7, %str.len.query2
  br i1 %cmptmp9, label %and.78.then, label %choice.exit

choice.exit:                                      ; preds = %and.78.then, %choice.else, %entry
  %choice.res = phi i1 [ true, %entry ], [ %eq.cmp.zero, %and.78.then ], [ false, %choice.else ]
  ret i1 %choice.res

and.78.then:                                      ; preds = %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %rel.end = add i64 %str.len.query7, %str.len.query2
  %cmp.str18 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %cmp.str19 = load ptr, ptr %cmp.str18, align 8
  %eq.memcmp = call i32 @memcmp(ptr %s.read.data13, ptr %cmp.str19, i64 %str.len.query2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %choice.exit
}

; Function Attrs: inlinehint
define i1 @"str::ends_with"(ptr %0, ptr %1) #4 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.len.query5 = load i64, ptr %1, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query6, 0
  br i1 %cmptmp, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %entry
  %cmptmp10 = icmp sge i64 %str.len.query2, %str.len.query6
  br i1 %cmptmp10, label %and.79.then, label %choice.exit

choice.exit:                                      ; preds = %str.eq.then, %and.79.then, %choice.else, %entry
  %choice.res = phi i1 [ true, %entry ], [ false, %choice.else ], [ %eq.cmp.zero, %str.eq.then ], [ false, %and.79.then ]
  ret i1 %choice.res

and.79.then:                                      ; preds = %choice.else
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %subtmp = sub i64 %str.len.query2, %str.len.query6
  %start.is_neg = icmp slt i64 %subtmp, 0
  %rel.start = add i64 %str.len.query2, %subtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %str.len.query2
  %final.start = select i1 %start.gt.len, i64 %str.len.query2, i64 %c.start.0
  %rel.end = add i64 %str.len.query2, %str.len.query2
  %view.empty = icmp sle i64 %str.len.query2, %final.start
  %view.len.sub = sub i64 %str.len.query2, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %cmp.str21 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %cmp.str22 = load ptr, ptr %cmp.str21, align 8
  %eq.len = icmp eq i64 %view.len, %str.len.query6
  br i1 %eq.len, label %str.eq.then, label %choice.exit

str.eq.then:                                      ; preds = %and.79.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str22, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %choice.exit
}

; Function Attrs: inlinehint
define { i1, i64 } @"str::find_from"(ptr %0, ptr %1, i64 %2) #4 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.len.query5 = load i64, ptr %1, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %max = call i64 @llvm.smax.i64(i64 %2, i64 0)
  %cmptmp = icmp sgt i64 %max, %str.len.query2
  %subtmp = sub i64 %str.len.query2, %max
  %cmptmp13 = icmp sgt i64 %str.len.query6, %subtmp
  %or.80.phi = select i1 %cmptmp, i1 true, i1 %cmptmp13
  br i1 %or.80.phi, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %choice.case, %idx_ok, %choice.next18, %entry
  %common.ret.op = phi { i1, i64 } [ zeroinitializer, %entry ], [ %ram.pay, %choice.case ], [ %choice.res, %idx_ok ], [ %call.res38, %choice.next18 ]
  ret { i1, i64 } %common.ret.op

choice.exit:                                      ; preds = %entry
  switch i64 %str.len.query6, label %choice.next18 [
    i64 0, label %choice.case
    i64 1, label %choice.case17
  ]

choice.case:                                      ; preds = %choice.exit
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %max, 1
  br label %common.ret

choice.case17:                                    ; preds = %choice.exit
  %s.read.len22 = load i64, ptr %1, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %s.read.data24 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len23
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.next18:                                    ; preds = %choice.exit
  %subtmp37 = sub i64 %str.len.query2, %str.len.query6
  %call.res38 = call { i1, i64 } @"str::#find_substring_from"(ptr %0, ptr %1, i64 %max, i64 %subtmp37)
  br label %common.ret

idx_ok:                                           ; preds = %choice.case17
  %s.byte = load i8, ptr %s.read.data24, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i64 @"str::#find_byte_from"(ptr %0, i64 %s.byte.val, i64 %max)
  %cmptmp27 = icmp slt i64 %call.res, 0
  %ram.pay31 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %call.res, 1
  %choice.res = select i1 %cmptmp27, { i1, i64 } zeroinitializer, { i1, i64 } %ram.pay31
  br label %common.ret

idx_oob:                                          ; preds = %choice.case17
  call void @dva_abort_str_oob_msg()
  unreachable
}

; Function Attrs: inlinehint
define { i1, i64 } @"str::find"(ptr %0, ptr %1) #4 {
entry:
  %call.res = call { i1, i64 } @"str::find_from"(ptr %0, ptr %1, i64 0)
  ret { i1, i64 } %call.res
}

; Function Attrs: inlinehint
define { i1, i64 } @"str::rfind"(ptr %0, ptr %1) #4 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.len.query5 = load i64, ptr %1, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query6, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %str.len.query2, 1
  br label %common.ret

choice.else:                                      ; preds = %entry
  %cmptmp11 = icmp sgt i64 %str.len.query6, %str.len.query2
  br i1 %cmptmp11, label %common.ret, label %choice.else13

common.ret:                                       ; preds = %loop.header.81, %choice.else, %choice.then, %choice.then58
  %common.ret.op = phi { i1, i64 } [ %ram.pay61, %choice.then58 ], [ %ram.pay, %choice.then ], [ zeroinitializer, %choice.else ], [ zeroinitializer, %loop.header.81 ]
  ret { i1, i64 } %common.ret.op

choice.else13:                                    ; preds = %choice.else
  %subtmp = sub i64 %str.len.query2, %str.len.query6
  %addtmp = add i64 %subtmp, 1
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %s.byte = load i8, ptr %s.read.data20, align 1
  %s.byte.val = zext i8 %s.byte to i64
  br label %loop.header.81

loop.header.81:                                   ; preds = %choice.exit59, %choice.else13
  %loop.idx.81.0 = phi i64 [ 0, %choice.else13 ], [ %loop.next, %choice.exit59 ]
  %loop.cond = icmp slt i64 %loop.idx.81.0, %addtmp
  br i1 %loop.cond, label %loop.body.81, label %common.ret

loop.body.81:                                     ; preds = %loop.header.81
  %subtmp26 = sub i64 %subtmp, %loop.idx.81.0
  %s.read.len29 = load i64, ptr %0, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data31 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data32 = load ptr, ptr %s.read.data31, align 8
  %idx.oob34 = icmp uge i64 %subtmp26, %s.read.len30
  br i1 %idx.oob34, label %idx_oob36, label %idx_ok35

idx_ok35:                                         ; preds = %loop.body.81
  %s.byte.gep38 = getelementptr i8, ptr %s.read.data32, i64 %subtmp26
  %s.byte39 = load i8, ptr %s.byte.gep38, align 1
  %s.byte.val40 = zext i8 %s.byte39 to i64
  %cmptmp42 = icmp eq i64 %s.byte.val40, %s.byte.val
  br i1 %cmptmp42, label %and.82.then, label %choice.exit59

idx_oob36:                                        ; preds = %loop.body.81
  call void @dva_abort_str_oob_msg()
  unreachable

and.82.then:                                      ; preds = %idx_ok35
  %s.read.len45 = load i64, ptr %0, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %s.read.data48 = load ptr, ptr %s.read.data31, align 8
  %addtmp52 = add i64 %subtmp26, %str.len.query6
  %start.is_neg = icmp slt i64 %subtmp26, 0
  %rel.start = add i64 %s.read.len46, %subtmp26
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp26
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len46
  %final.start = select i1 %start.gt.len, i64 %s.read.len46, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp52, 0
  %rel.end = add i64 %s.read.len46, %addtmp52
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp52
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len46
  %final.end = select i1 %end.gt.len, i64 %s.read.len46, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data48, i64 %final.start
  %cmp.str54 = load i64, ptr %1, align 8
  %cmp.str55 = and i64 %cmp.str54, 281474976710655
  %cmp.str57 = load ptr, ptr %s.read.data, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str55
  br i1 %eq.len, label %str.eq.then, label %choice.exit59

str.eq.then:                                      ; preds = %and.82.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str57, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then58, label %choice.exit59

choice.then58:                                    ; preds = %str.eq.then
  %ram.pay61 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp26, 1
  br label %common.ret

choice.exit59:                                    ; preds = %and.82.then, %idx_ok35, %str.eq.then
  %loop.next = add i64 %loop.idx.81.0, 1
  br label %loop.header.81
}

; Function Attrs: inlinehint
define i1 @"str::contains"(ptr %0, ptr %1) #4 {
entry:
  %call.res = call { i1, i64 } @"str::find"(ptr %0, ptr %1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  ret i1 %ram.tag
}

define i64 @"str::count"(ptr %0, ptr %1) #3 {
entry:
  %str.len.query1 = load i64, ptr %1, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %entry
  %str.len.query6 = load i64, ptr %0, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  br label %loop.header.83

choice.exit:                                      ; preds = %choice.exit13, %loop.header.83, %entry
  %choice.res = phi i64 [ 0, %entry ], [ %"var.n'.0", %loop.header.83 ], [ %"var.n'.0", %choice.exit13 ]
  ret i64 %choice.res

loop.header.83:                                   ; preds = %choice.then17, %choice.else
  %"var.pos'.0" = phi i64 [ 0, %choice.else ], [ %addtmp25, %choice.then17 ]
  %"var.n'.0" = phi i64 [ 0, %choice.else ], [ %addtmp22, %choice.then17 ]
  %loop.idx.83.0 = phi i64 [ 0, %choice.else ], [ %loop.next, %choice.then17 ]
  %addtmp = add i64 %"var.pos'.0", %str.len.query2
  %cmptmp11 = icmp sgt i64 %addtmp, %str.len.query7
  br i1 %cmptmp11, label %choice.exit, label %choice.exit13

choice.exit13:                                    ; preds = %loop.header.83
  %call.res = call { i1, i64 } @"str::find_from"(ptr %0, ptr %1, i64 %"var.pos'.0")
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then17, label %choice.exit

choice.then17:                                    ; preds = %choice.exit13
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %addtmp22 = add i64 %"var.n'.0", 1
  %addtmp25 = add i64 %ram.pay, %str.len.query2
  %loop.next = add i64 %loop.idx.83.0, 1
  br label %loop.header.83
}

; Function Attrs: inlinehint
define { i64, ptr } @"str::trim_start"(ptr %0) #4 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  br label %loop.header.84

loop.header.84:                                   ; preds = %choice.then, %entry
  %"var.i'.0" = phi i64 [ 0, %entry ], [ %addtmp, %choice.then ]
  %loop.cond = icmp slt i64 %"var.i'.0", %str.len.query2
  br i1 %loop.cond, label %loop.body.84, label %loop.exit.84

loop.body.84:                                     ; preds = %loop.header.84
  %s.read.len5 = load i64, ptr %0, align 8
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data7 = load ptr, ptr %s.read.data, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %"var.i'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then, label %loop.exit.84

loop.exit.84:                                     ; preds = %loop.body.84, %loop.header.84
  %cmptmp = icmp eq i64 %"var.i'.0", 0
  br i1 %cmptmp, label %choice.exit13, label %choice.else12

choice.then:                                      ; preds = %loop.body.84
  %addtmp = add i64 %"var.i'.0", 1
  br label %loop.header.84

choice.else12:                                    ; preds = %loop.exit.84
  %s.read.len17 = load i64, ptr %0, align 8
  %s.read.len18 = and i64 %s.read.len17, 281474976710655
  %s.read.data19 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data19, align 8
  %start.is_neg = icmp slt i64 %"var.i'.0", 0
  %rel.start = add i64 %s.read.len18, %"var.i'.0"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.i'.0"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len18
  %final.start = select i1 %start.gt.len, i64 %s.read.len18, i64 %c.start.0
  %rel.end = add i64 %s.read.len18, %str.len.query2
  %end.gt.len = icmp sgt i64 %str.len.query2, %s.read.len18
  %final.end = select i1 %end.gt.len, i64 %s.read.len18, i64 %str.len.query2
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data20, i64 %final.start
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit13

choice.exit13:                                    ; preds = %loop.exit.84, %choice.else12
  %choice.res = phi ptr [ %str.view, %choice.else12 ], [ %0, %loop.exit.84 ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

; Function Attrs: inlinehint
define { i64, ptr } @"str::trim_end"(ptr %0) #4 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  br label %loop.header.85

loop.header.85:                                   ; preds = %choice.exit, %entry
  %"var.end'.0" = phi i64 [ %str.len.query2, %entry ], [ %subtmp7, %choice.exit ]
  %loop.idx.85.0 = phi i64 [ 0, %entry ], [ %loop.next, %choice.exit ]
  %loop.cond = icmp slt i64 %loop.idx.85.0, %str.len.query2
  br i1 %loop.cond, label %loop.body.85, label %loop.exit.85

loop.body.85:                                     ; preds = %loop.header.85
  %subtmp = sub i64 %str.len.query2, 1
  %subtmp7 = sub i64 %subtmp, %loop.idx.85.0
  %s.read.len9 = load i64, ptr %0, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %subtmp7, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.85:                                     ; preds = %idx_ok, %loop.header.85
  %cmptmp = icmp eq i64 %"var.end'.0", %str.len.query2
  br i1 %cmptmp, label %choice.exit18, label %choice.else17

idx_ok:                                           ; preds = %loop.body.85
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %subtmp7
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.exit, label %loop.exit.85

idx_oob:                                          ; preds = %loop.body.85
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit:                                      ; preds = %idx_ok
  %loop.next = add i64 %loop.idx.85.0, 1
  br label %loop.header.85

choice.else17:                                    ; preds = %loop.exit.85
  %s.read.len22 = load i64, ptr %0, align 8
  %s.read.len23 = and i64 %s.read.len22, 281474976710655
  %s.read.data24 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data24, align 8
  %end.is_neg = icmp slt i64 %"var.end'.0", 0
  %rel.end = add i64 %s.read.len23, %"var.end'.0"
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %"var.end'.0"
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len23
  %final.end = select i1 %end.gt.len, i64 %s.read.len23, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %s.read.data25, ptr %str.build.data.gep, align 8
  br label %choice.exit18

choice.exit18:                                    ; preds = %loop.exit.85, %choice.else17
  %choice.res = phi ptr [ %str.view, %choice.else17 ], [ %0, %loop.exit.85 ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

; Function Attrs: inlinehint
define { i64, ptr } @"str::trim"(ptr %0) #4 {
entry:
  %call.res = call { i64, ptr } @"str::trim_start"(ptr %0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %call.res1 = call { i64, ptr } @"str::trim_end"(ptr %ret.ub.alloc)
  %call.res1.fca.0.extract = extractvalue { i64, ptr } %call.res1, 0
  %call.res1.fca.1.extract = extractvalue { i64, ptr } %call.res1, 1
  ret { i64, ptr } %call.res1
}

define { i64, ptr } @"str::trim_prefix"(ptr %0, ptr %1) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %call.res = call i1 @"str::starts_with"(ptr %0, ptr %1)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %s.read.len3 = load i64, ptr %0, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %str.len.query7 = load i64, ptr %1, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %rel.start = add i64 %s.read.len4, %str.len.query8
  %start.gt.len = icmp sgt i64 %str.len.query8, %s.read.len4
  %final.start = select i1 %start.gt.len, i64 %s.read.len4, i64 %str.len.query8
  %rel.end = add i64 %s.read.len4, %s.read.len4
  %view.empty = icmp sle i64 %s.read.len4, %final.start
  %view.len.sub = sub i64 %s.read.len4, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data5, i64 %final.start
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ %0, %entry ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

define { i64, ptr } @"str::trim_suffix"(ptr %0, ptr %1) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %call.res = call i1 @"str::ends_with"(ptr %0, ptr %1)
  br i1 %call.res, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %s.read.len3 = load i64, ptr %0, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %str.len.query11 = load i64, ptr %1, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
  %subtmp = sub i64 %s.read.len4, %str.len.query12
  %end.is_neg = icmp slt i64 %subtmp, 0
  %rel.end = add i64 %s.read.len4, %subtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %s.read.data5, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ %0, %entry ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

; Function Attrs: inlinehint
define ptr @"str::split_once"(ptr %0, ptr %1) #4 {
entry:
  %call.res = call { i1, i64 } @"str::find"(ptr %0, ptr %1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %s.read.len3 = load i64, ptr %0, align 8
  %s.read.len4 = and i64 %s.read.len3, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
  %end.is_neg = icmp slt i64 %ram.pay, 0
  %rel.end = add i64 %s.read.len4, %ram.pay
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %ram.pay
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len4
  %final.end = select i1 %end.gt.len, i64 %s.read.len4, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %s.read.data5, ptr %str.build.data.gep, align 8
  %s.read.len9 = load i64, ptr %0, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %str.len.query15 = load i64, ptr %1, align 8
  %str.len.query16 = and i64 %str.len.query15, 281474976710655
  %addtmp = add i64 %ram.pay, %str.len.query16
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start21 = add i64 %s.read.len10, %addtmp
  %norm.start22 = select i1 %start.is_neg, i64 %rel.start21, i64 %addtmp
  %start.lt.023 = icmp slt i64 %norm.start22, 0
  %c.start.024 = select i1 %start.lt.023, i64 0, i64 %norm.start22
  %start.gt.len25 = icmp sgt i64 %c.start.024, %s.read.len10
  %final.start26 = select i1 %start.gt.len25, i64 %s.read.len10, i64 %c.start.024
  %rel.end28 = add i64 %s.read.len10, %s.read.len10
  %view.empty34 = icmp sle i64 %s.read.len10, %final.start26
  %view.len.sub35 = sub i64 %s.read.len10, %final.start26
  %view.len36 = select i1 %view.empty34, i64 0, i64 %view.len.sub35
  %view.data37 = getelementptr i8, ptr %s.read.data12, i64 %final.start26
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  store i64 %view.len36, ptr %str.view39, align 8
  %str.build.data.gep41 = getelementptr inbounds { i64, ptr }, ptr %str.view39, i32 0, i32 1
  store ptr %view.data37, ptr %str.build.data.gep41, align 8
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %str.view, ptr %rec.alloc, align 8
  %rec.fld43 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view39, ptr %rec.fld43, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res = phi ptr [ %rec.alloc, %choice.then ], [ null, %entry ]
  ret ptr %choice.res
}

define ptr @"str::split"(ptr %0, ptr %1) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %str.len.query2 = load i64, ptr %0, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.len.query6 = load i64, ptr %1, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query7, 0
  br i1 %cmptmp, label %loop.header.87, label %loop.header.88

choice.exit:                                      ; preds = %loop.header.87, %a.store157
  %choice.res = phi ptr [ %var.out.3, %a.store157 ], [ %var.out.0, %loop.header.87 ]
  ret ptr %choice.res

loop.header.87:                                   ; preds = %entry, %a.store
  %loop.idx.87.0 = phi i64 [ %addtmp, %a.store ], [ 0, %entry ]
  %var.out.0 = phi ptr [ %var.out.1, %a.store ], [ %a.new, %entry ]
  %loop.cond = icmp slt i64 %loop.idx.87.0, %str.len.query3
  br i1 %loop.cond, label %loop.body.87, label %choice.exit

loop.body.87:                                     ; preds = %loop.header.87
  %s.read.len11 = load i64, ptr %0, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %addtmp = add i64 %loop.idx.87.0, 1
  %start.is_neg = icmp slt i64 %loop.idx.87.0, 0
  %rel.start = add i64 %s.read.len12, %loop.idx.87.0
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %loop.idx.87.0
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
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.null = icmp eq ptr %var.out.0, null
  br i1 %a.null, label %a.create, label %a.check

a.create:                                         ; preds = %loop.body.87
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  store i64 0, ptr %a.create18, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  br label %a.check

a.check:                                          ; preds = %loop.body.87, %a.create
  %var.out.1 = phi ptr [ %a.create18, %a.create ], [ %var.out.0, %loop.body.87 ]
  %a.len24 = load i64, ptr %var.out.1, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.1, i32 0, i32 2
  %a.cap25 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len24, %a.cap25
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.out.1)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.1, i32 0, i32 1
  %a.cur.data26 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len27 = load i64, ptr %var.out.1, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data26, i64 %a.cur.len27
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len27, 1
  store i64 %a.next.len, ptr %var.out.1, align 8
  br label %loop.header.87

loop.header.88:                                   ; preds = %entry, %a.store96
  %var.out.3 = phi ptr [ %var.out.4, %a.store96 ], [ %a.new, %entry ]
  %"var.pos'.0" = phi i64 [ %addtmp112, %a.store96 ], [ 0, %entry ]
  %loop.idx.88.0 = phi i64 [ %loop.next172, %a.store96 ], [ 0, %entry ]
  %call.res = call { i1, i64 } @"str::find_from"(ptr %0, ptr %1, i64 %"var.pos'.0")
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then48, label %choice.else49

choice.then48:                                    ; preds = %loop.header.88
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %s.read.len54 = load i64, ptr %0, align 8
  %s.read.len55 = and i64 %s.read.len54, 281474976710655
  %s.read.data56 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data57 = load ptr, ptr %s.read.data56, align 8
  %start.is_neg60 = icmp slt i64 %"var.pos'.0", 0
  %rel.start61 = add i64 %s.read.len55, %"var.pos'.0"
  %norm.start62 = select i1 %start.is_neg60, i64 %rel.start61, i64 %"var.pos'.0"
  %start.lt.063 = icmp slt i64 %norm.start62, 0
  %c.start.064 = select i1 %start.lt.063, i64 0, i64 %norm.start62
  %start.gt.len65 = icmp sgt i64 %c.start.064, %s.read.len55
  %final.start66 = select i1 %start.gt.len65, i64 %s.read.len55, i64 %c.start.064
  %end.is_neg67 = icmp slt i64 %ram.pay, 0
  %rel.end68 = add i64 %s.read.len55, %ram.pay
  %norm.end69 = select i1 %end.is_neg67, i64 %rel.end68, i64 %ram.pay
  %end.lt.070 = icmp slt i64 %norm.end69, 0
  %c.end.071 = select i1 %end.lt.070, i64 0, i64 %norm.end69
  %end.gt.len72 = icmp sgt i64 %c.end.071, %s.read.len55
  %final.end73 = select i1 %end.gt.len72, i64 %s.read.len55, i64 %c.end.071
  %view.empty74 = icmp sle i64 %final.end73, %final.start66
  %view.len.sub75 = sub i64 %final.end73, %final.start66
  %view.len76 = select i1 %view.empty74, i64 0, i64 %view.len.sub75
  %view.data77 = getelementptr i8, ptr %s.read.data57, i64 %final.start66
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 16)
  store i64 %view.len76, ptr %str.view79, align 8
  %str.build.data.gep81 = getelementptr inbounds { i64, ptr }, ptr %str.view79, i32 0, i32 1
  store ptr %view.data77, ptr %str.build.data.gep81, align 8
  %a.null83 = icmp eq ptr %var.out.3, null
  br i1 %a.null83, label %a.create84, label %a.check94

choice.else49:                                    ; preds = %loop.header.88
  %s.read.len115 = load i64, ptr %0, align 8
  %s.read.len116 = and i64 %s.read.len115, 281474976710655
  %s.read.data117 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data118 = load ptr, ptr %s.read.data117, align 8
  %start.is_neg121 = icmp slt i64 %"var.pos'.0", 0
  %rel.start122 = add i64 %s.read.len116, %"var.pos'.0"
  %norm.start123 = select i1 %start.is_neg121, i64 %rel.start122, i64 %"var.pos'.0"
  %start.lt.0124 = icmp slt i64 %norm.start123, 0
  %c.start.0125 = select i1 %start.lt.0124, i64 0, i64 %norm.start123
  %start.gt.len126 = icmp sgt i64 %c.start.0125, %s.read.len116
  %final.start127 = select i1 %start.gt.len126, i64 %s.read.len116, i64 %c.start.0125
  %rel.end129 = add i64 %s.read.len116, %str.len.query3
  %end.gt.len133 = icmp sgt i64 %str.len.query3, %s.read.len116
  %final.end134 = select i1 %end.gt.len133, i64 %s.read.len116, i64 %str.len.query3
  %view.empty135 = icmp sle i64 %final.end134, %final.start127
  %view.len.sub136 = sub i64 %final.end134, %final.start127
  %view.len137 = select i1 %view.empty135, i64 0, i64 %view.len.sub136
  %view.data138 = getelementptr i8, ptr %s.read.data118, i64 %final.start127
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 16)
  store i64 %view.len137, ptr %str.view140, align 8
  %str.build.data.gep142 = getelementptr inbounds { i64, ptr }, ptr %str.view140, i32 0, i32 1
  store ptr %view.data138, ptr %str.build.data.gep142, align 8
  %a.len159 = load i64, ptr %var.out.3, align 8
  %a.cap160 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.3, i32 0, i32 2
  %a.cap161 = load i64, ptr %a.cap160, align 8
  %a.needs.grow162 = icmp eq i64 %a.len159, %a.cap161
  br i1 %a.needs.grow162, label %a.grow156, label %a.store157

a.create84:                                       ; preds = %choice.then48
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 24)
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 128)
  store i64 0, ptr %a.create87, align 8
  %a.data.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create87, i32 0, i32 1
  store ptr %a.buf89, ptr %a.data.gep91, align 8
  %a.cap.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create87, i32 0, i32 2
  store i64 16, ptr %a.cap.gep92, align 8
  br label %a.check94

a.check94:                                        ; preds = %choice.then48, %a.create84
  %var.out.4 = phi ptr [ %a.create87, %a.create84 ], [ %var.out.3, %choice.then48 ]
  %a.len98 = load i64, ptr %var.out.4, align 8
  %a.cap99 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.4, i32 0, i32 2
  %a.cap100 = load i64, ptr %a.cap99, align 8
  %a.needs.grow101 = icmp eq i64 %a.len98, %a.cap100
  br i1 %a.needs.grow101, label %a.grow95, label %a.store96

a.grow95:                                         ; preds = %a.check94
  call void @dva_array_grow(ptr %var.out.4)
  br label %a.store96

a.store96:                                        ; preds = %a.grow95, %a.check94
  %a.cur.data102 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.4, i32 0, i32 1
  %a.cur.data103 = load ptr, ptr %a.cur.data102, align 8
  %a.cur.len105 = load i64, ptr %var.out.4, align 8
  %a.elem.gep106 = getelementptr i64, ptr %a.cur.data103, i64 %a.cur.len105
  %slot.p2i107 = ptrtoint ptr %str.view79 to i64
  store i64 %slot.p2i107, ptr %a.elem.gep106, align 8
  %a.next.len108 = add i64 %a.cur.len105, 1
  store i64 %a.next.len108, ptr %var.out.4, align 8
  %addtmp112 = add i64 %ram.pay, %str.len.query7
  %loop.next172 = add i64 %loop.idx.88.0, 1
  br label %loop.header.88

a.grow156:                                        ; preds = %choice.else49
  call void @dva_array_grow(ptr %var.out.3)
  br label %a.store157

a.store157:                                       ; preds = %a.grow156, %choice.else49
  %a.cur.data163 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.3, i32 0, i32 1
  %a.cur.data164 = load ptr, ptr %a.cur.data163, align 8
  %a.cur.len166 = load i64, ptr %var.out.3, align 8
  %a.elem.gep167 = getelementptr i64, ptr %a.cur.data164, i64 %a.cur.len166
  %slot.p2i168 = ptrtoint ptr %str.view140 to i64
  store i64 %slot.p2i168, ptr %a.elem.gep167, align 8
  %a.next.len169 = add i64 %a.cur.len166, 1
  store i64 %a.next.len169, ptr %var.out.3, align 8
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
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable
}

define ptr @"str::lines"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %str.len.query2 = load i64, ptr %0, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query3, 0
  br i1 %cmptmp, label %common.ret, label %loop.header.89

common.ret:                                       ; preds = %loop.exit.89, %a.create153, %entry
  %common.ret.op = phi ptr [ %a.new, %entry ], [ %a.create156, %a.create153 ], [ %var.out.2, %loop.exit.89 ]
  ret ptr %common.ret.op

loop.header.89:                                   ; preds = %entry, %a.store135
  %"var.start'.0" = phi i64 [ %addtmp, %a.store135 ], [ 0, %entry ]
  %var.out.1 = phi ptr [ %var.out.4, %a.store135 ], [ %a.new, %entry ]
  %loop.idx.89.0 = phi i64 [ %loop.next, %a.store135 ], [ 0, %entry ]
  %cmptmp15 = icmp sge i64 %"var.start'.0", %str.len.query3
  br i1 %cmptmp15, label %loop.exit.89, label %choice.exit17

loop.exit.89:                                     ; preds = %loop.header.89, %a.store
  %var.out.2 = phi ptr [ %var.out.3, %a.store ], [ %var.out.1, %loop.header.89 ]
  %a.null152 = icmp eq ptr %var.out.2, null
  br i1 %a.null152, label %a.create153, label %common.ret

choice.exit17:                                    ; preds = %loop.header.89
  %call.res = call i64 @"str::#find_byte_from"(ptr %0, i64 10, i64 %"var.start'.0")
  %cmptmp21 = icmp slt i64 %call.res, 0
  br i1 %cmptmp21, label %choice.then22, label %choice.else

choice.then22:                                    ; preds = %choice.exit17
  %cmptmp26 = icmp sgt i64 %str.len.query3, %"var.start'.0"
  br i1 %cmptmp26, label %and.90.then, label %choice.exit35

choice.else:                                      ; preds = %choice.exit17
  %cmptmp66 = icmp sgt i64 %call.res, %"var.start'.0"
  br i1 %cmptmp66, label %and.91.then, label %choice.exit85

and.90.then:                                      ; preds = %choice.then22
  %s.read.len28 = load i64, ptr %0, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  %subtmp = sub i64 %str.len.query3, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len29
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.90.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data30, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp32 = icmp eq i64 %s.byte.val, 13
  %subtmp37 = sub i64 %str.len.query3, 1
  %spec.select = select i1 %cmptmp32, i64 %subtmp37, i64 %str.len.query3
  br label %choice.exit35

idx_oob:                                          ; preds = %and.90.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit35:                                    ; preds = %idx_ok, %choice.then22
  %choice.res = phi i64 [ %str.len.query3, %choice.then22 ], [ %spec.select, %idx_ok ]
  %s.read.len41 = load i64, ptr %0, align 8
  %s.read.len42 = and i64 %s.read.len41, 281474976710655
  %s.read.data43 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data44 = load ptr, ptr %s.read.data43, align 8
  %start.is_neg = icmp slt i64 %"var.start'.0", 0
  %rel.start = add i64 %s.read.len42, %"var.start'.0"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.start'.0"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len42
  %final.start = select i1 %start.gt.len, i64 %s.read.len42, i64 %c.start.0
  %end.is_neg = icmp slt i64 %choice.res, 0
  %rel.end = add i64 %s.read.len42, %choice.res
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %choice.res
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
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.null49 = icmp eq ptr %var.out.1, null
  br i1 %a.null49, label %a.create50, label %a.check

a.create50:                                       ; preds = %choice.exit35
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 24)
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf55 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 128)
  store i64 0, ptr %a.create53, align 8
  %a.data.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 1
  store ptr %a.buf55, ptr %a.data.gep57, align 8
  %a.cap.gep58 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create53, i32 0, i32 2
  store i64 16, ptr %a.cap.gep58, align 8
  br label %a.check

a.check:                                          ; preds = %choice.exit35, %a.create50
  %var.out.3 = phi ptr [ %a.create53, %a.create50 ], [ %var.out.1, %choice.exit35 ]
  %a.len60 = load i64, ptr %var.out.3, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.3, i32 0, i32 2
  %a.cap61 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len60, %a.cap61
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.out.3)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.3, i32 0, i32 1
  %a.cur.data62 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len63 = load i64, ptr %var.out.3, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data62, i64 %a.cur.len63
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len63, 1
  store i64 %a.next.len, ptr %var.out.3, align 8
  br label %loop.exit.89

and.91.then:                                      ; preds = %choice.else
  %s.read.len69 = load i64, ptr %0, align 8
  %s.read.len70 = and i64 %s.read.len69, 281474976710655
  %s.read.data71 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data72 = load ptr, ptr %s.read.data71, align 8
  %subtmp74 = sub i64 %call.res, 1
  %idx.oob75 = icmp uge i64 %subtmp74, %s.read.len70
  br i1 %idx.oob75, label %idx_oob77, label %idx_ok76

idx_ok76:                                         ; preds = %and.91.then
  %s.byte.gep79 = getelementptr i8, ptr %s.read.data72, i64 %subtmp74
  %s.byte80 = load i8, ptr %s.byte.gep79, align 1
  %s.byte.val81 = zext i8 %s.byte80 to i64
  %cmptmp82 = icmp eq i64 %s.byte.val81, 13
  %subtmp87 = sub i64 %call.res, 1
  %spec.select178 = select i1 %cmptmp82, i64 %subtmp87, i64 %call.res
  br label %choice.exit85

idx_oob77:                                        ; preds = %and.91.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit85:                                    ; preds = %idx_ok76, %choice.else
  %choice.res89 = phi i64 [ %call.res, %choice.else ], [ %spec.select178, %idx_ok76 ]
  %s.read.len93 = load i64, ptr %0, align 8
  %s.read.len94 = and i64 %s.read.len93, 281474976710655
  %s.read.data95 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data96 = load ptr, ptr %s.read.data95, align 8
  %start.is_neg99 = icmp slt i64 %"var.start'.0", 0
  %rel.start100 = add i64 %s.read.len94, %"var.start'.0"
  %norm.start101 = select i1 %start.is_neg99, i64 %rel.start100, i64 %"var.start'.0"
  %start.lt.0102 = icmp slt i64 %norm.start101, 0
  %c.start.0103 = select i1 %start.lt.0102, i64 0, i64 %norm.start101
  %start.gt.len104 = icmp sgt i64 %c.start.0103, %s.read.len94
  %final.start105 = select i1 %start.gt.len104, i64 %s.read.len94, i64 %c.start.0103
  %end.is_neg106 = icmp slt i64 %choice.res89, 0
  %rel.end107 = add i64 %s.read.len94, %choice.res89
  %norm.end108 = select i1 %end.is_neg106, i64 %rel.end107, i64 %choice.res89
  %end.lt.0109 = icmp slt i64 %norm.end108, 0
  %c.end.0110 = select i1 %end.lt.0109, i64 0, i64 %norm.end108
  %end.gt.len111 = icmp sgt i64 %c.end.0110, %s.read.len94
  %final.end112 = select i1 %end.gt.len111, i64 %s.read.len94, i64 %c.end.0110
  %view.empty113 = icmp sle i64 %final.end112, %final.start105
  %view.len.sub114 = sub i64 %final.end112, %final.start105
  %view.len115 = select i1 %view.empty113, i64 0, i64 %view.len.sub114
  %view.data116 = getelementptr i8, ptr %s.read.data96, i64 %final.start105
  %arena.cur117 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 16)
  store i64 %view.len115, ptr %str.view118, align 8
  %str.build.data.gep120 = getelementptr inbounds { i64, ptr }, ptr %str.view118, i32 0, i32 1
  store ptr %view.data116, ptr %str.build.data.gep120, align 8
  %a.null122 = icmp eq ptr %var.out.1, null
  br i1 %a.null122, label %a.create123, label %a.check133

a.create123:                                      ; preds = %choice.exit85
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 24)
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 128)
  store i64 0, ptr %a.create126, align 8
  %a.data.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 1
  store ptr %a.buf128, ptr %a.data.gep130, align 8
  %a.cap.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 2
  store i64 16, ptr %a.cap.gep131, align 8
  br label %a.check133

a.check133:                                       ; preds = %choice.exit85, %a.create123
  %var.out.4 = phi ptr [ %a.create126, %a.create123 ], [ %var.out.1, %choice.exit85 ]
  %a.len137 = load i64, ptr %var.out.4, align 8
  %a.cap138 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.4, i32 0, i32 2
  %a.cap139 = load i64, ptr %a.cap138, align 8
  %a.needs.grow140 = icmp eq i64 %a.len137, %a.cap139
  br i1 %a.needs.grow140, label %a.grow134, label %a.store135

a.grow134:                                        ; preds = %a.check133
  call void @dva_array_grow(ptr %var.out.4)
  br label %a.store135

a.store135:                                       ; preds = %a.grow134, %a.check133
  %a.cur.data141 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.4, i32 0, i32 1
  %a.cur.data142 = load ptr, ptr %a.cur.data141, align 8
  %a.cur.len144 = load i64, ptr %var.out.4, align 8
  %a.elem.gep145 = getelementptr i64, ptr %a.cur.data142, i64 %a.cur.len144
  %slot.p2i146 = ptrtoint ptr %str.view118 to i64
  store i64 %slot.p2i146, ptr %a.elem.gep145, align 8
  %a.next.len147 = add i64 %a.cur.len144, 1
  store i64 %a.next.len147, ptr %var.out.4, align 8
  %addtmp = add i64 %call.res, 1
  %loop.next = add i64 %loop.idx.89.0, 1
  br label %loop.header.89

a.create153:                                      ; preds = %loop.exit.89
  %arena.cur155 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 24)
  %arena.cur157 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 128)
  store i64 0, ptr %a.create156, align 8
  %a.data.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 1
  store ptr %a.buf158, ptr %a.data.gep160, align 8
  %a.cap.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 2
  store i64 16, ptr %a.cap.gep161, align 8
  br label %common.ret
}

define ptr @"str::words"(ptr %0) #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %str.len.query2 = load i64, ptr %0, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  br label %loop.header.92

loop.header.92:                                   ; preds = %a.store, %entry
  %loop.idx.92.0 = phi i64 [ 0, %entry ], [ %loop.next77, %a.store ]
  %"var.i'.0" = phi i64 [ 0, %entry ], [ %"var.i'.2", %a.store ]
  %var.out.0 = phi ptr [ %a.new, %entry ], [ %var.out.1, %a.store ]
  %cmptmp = icmp sge i64 %"var.i'.0", %str.len.query3
  br i1 %cmptmp, label %loop.exit.92, label %loop.header.93

loop.exit.92:                                     ; preds = %choice.else, %loop.header.92
  %a.null80 = icmp eq ptr %var.out.0, null
  br i1 %a.null80, label %a.create81, label %a.after82

loop.header.93:                                   ; preds = %loop.header.92, %choice.then18
  %"var.i'.1" = phi i64 [ %addtmp, %choice.then18 ], [ %"var.i'.0", %loop.header.92 ]
  %loop.idx.93.0 = phi i64 [ %loop.next, %choice.then18 ], [ 0, %loop.header.92 ]
  %cmptmp12 = icmp slt i64 %"var.i'.1", %str.len.query3
  br i1 %cmptmp12, label %and.94.then, label %choice.else

and.94.then:                                      ; preds = %loop.header.93
  %s.read.len14 = load i64, ptr %0, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data16 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.i'.1", %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.94.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %"var.i'.1"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then18, label %choice.else

idx_oob:                                          ; preds = %and.94.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then18:                                    ; preds = %idx_ok
  %addtmp = add i64 %"var.i'.1", 1
  %loop.next = add i64 %loop.idx.93.0, 1
  br label %loop.header.93

choice.else:                                      ; preds = %loop.header.93, %idx_ok
  %cmptmp23 = icmp sge i64 %"var.i'.1", %str.len.query3
  br i1 %cmptmp23, label %loop.exit.92, label %loop.header.95

loop.header.95:                                   ; preds = %choice.else, %choice.then49
  %"var.i'.2" = phi i64 [ %addtmp53, %choice.then49 ], [ %"var.i'.1", %choice.else ]
  %loop.idx.95.0 = phi i64 [ %loop.next55, %choice.then49 ], [ 0, %choice.else ]
  %cmptmp33 = icmp slt i64 %"var.i'.2", %str.len.query3
  br i1 %cmptmp33, label %and.96.then, label %choice.else50

and.96.then:                                      ; preds = %loop.header.95
  %s.read.len36 = load i64, ptr %0, align 8
  %s.read.len37 = and i64 %s.read.len36, 281474976710655
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %idx.oob41 = icmp uge i64 %"var.i'.2", %s.read.len37
  br i1 %idx.oob41, label %idx_oob43, label %idx_ok42

idx_ok42:                                         ; preds = %and.96.then
  %s.byte.gep45 = getelementptr i8, ptr %s.read.data39, i64 %"var.i'.2"
  %s.byte46 = load i8, ptr %s.byte.gep45, align 1
  %s.byte.val47 = zext i8 %s.byte46 to i64
  %call.res48 = call i1 @"str::is_ws"(i64 %s.byte.val47)
  %nottmp = xor i1 %call.res48, true
  br i1 %nottmp, label %choice.then49, label %choice.else50

idx_oob43:                                        ; preds = %and.96.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then49:                                    ; preds = %idx_ok42
  %addtmp53 = add i64 %"var.i'.2", 1
  %loop.next55 = add i64 %loop.idx.95.0, 1
  br label %loop.header.95

choice.else50:                                    ; preds = %loop.header.95, %idx_ok42
  %s.read.len58 = load i64, ptr %0, align 8
  %s.read.len59 = and i64 %s.read.len58, 281474976710655
  %s.read.data60 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data61 = load ptr, ptr %s.read.data60, align 8
  %start.is_neg = icmp slt i64 %"var.i'.1", 0
  %rel.start = add i64 %s.read.len59, %"var.i'.1"
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %"var.i'.1"
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len59
  %final.start = select i1 %start.gt.len, i64 %s.read.len59, i64 %c.start.0
  %end.is_neg = icmp slt i64 %"var.i'.2", 0
  %rel.end = add i64 %s.read.len59, %"var.i'.2"
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %"var.i'.2"
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len59
  %final.end = select i1 %end.gt.len, i64 %s.read.len59, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data61, i64 %final.start
  %arena.cur64 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %a.null = icmp eq ptr %var.out.0, null
  br i1 %a.null, label %a.create, label %a.check

a.create:                                         ; preds = %choice.else50
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 24)
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 128)
  store i64 0, ptr %a.create66, align 8
  %a.data.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 1
  store ptr %a.buf68, ptr %a.data.gep70, align 8
  %a.cap.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 2
  store i64 16, ptr %a.cap.gep71, align 8
  br label %a.check

a.check:                                          ; preds = %choice.else50, %a.create
  %var.out.1 = phi ptr [ %a.create66, %a.create ], [ %var.out.0, %choice.else50 ]
  %a.len72 = load i64, ptr %var.out.1, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.1, i32 0, i32 2
  %a.cap73 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len72, %a.cap73
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var.out.1)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.out.1, i32 0, i32 1
  %a.cur.data74 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len75 = load i64, ptr %var.out.1, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data74, i64 %a.cur.len75
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len75, 1
  store i64 %a.next.len, ptr %var.out.1, align 8
  %loop.next77 = add i64 %loop.idx.92.0, 1
  br label %loop.header.92

a.create81:                                       ; preds = %loop.exit.92
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 24)
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 128)
  store i64 0, ptr %a.create84, align 8
  %a.data.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create84, i32 0, i32 1
  store ptr %a.buf86, ptr %a.data.gep88, align 8
  %a.cap.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create84, i32 0, i32 2
  store i64 16, ptr %a.cap.gep89, align 8
  br label %a.after82

a.after82:                                        ; preds = %a.create81, %loop.exit.92
  %var.out.2 = phi ptr [ %a.create84, %a.create81 ], [ %var.out.0, %loop.exit.92 ]
  ret ptr %var.out.2
}

define { i64, ptr } @"str::join"(ptr %0, ptr %1) #3 {
entry:
  %a.null = icmp eq ptr %0, null
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
  %var.parts.0 = phi ptr [ %a.create1, %a.create ], [ %0, %entry ]
  %a.len.query3 = load i64, ptr %var.parts.0, align 8
  switch i64 %a.len.query3, label %choice.exit8 [
    i64 0, label %common.ret
    i64 1, label %a.rd.check
  ]

common.ret:                                       ; preds = %a.after, %loop.exit.99, %unwrap.pos.97
  %common.ret.op = phi { i64, ptr } [ %ret.pack47, %unwrap.pos.97 ], [ %ret.pack184.fca.1.insert, %loop.exit.99 ], [ { i64 0, ptr @str.9 }, %a.after ]
  ret { i64, ptr } %common.ret.op

choice.exit8:                                     ; preds = %a.after
  %str.len.query50 = load i64, ptr %1, align 8
  %str.len.query51 = and i64 %str.len.query50, 281474976710655
  %subtmp = sub i64 %a.len.query3, 1
  %multmp = mul i64 %subtmp, %str.len.query51
  %arr.cycle.len67 = load i64, ptr %var.parts.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.parts.0, i32 0, i32 1
  %arr.cycle.data68 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.98

a.rd.check:                                       ; preds = %a.after
  %a.rd.len22 = load i64, ptr %var.parts.0, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len22
  br i1 %a.rd.lt, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.parts.0, i32 0, i32 1
  %a.rd.data23 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem = load i64, ptr %a.rd.data23, align 8
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc26 = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 56)
  store i64 4011, ptr %err.alloc26, align 8
  %err.msg.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 1
  store ptr @str.12.struct, ptr %err.msg.gep28, align 8
  %err.file.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 2
  store ptr @str.11.struct, ptr %err.file.gep29, align 8
  %err.line.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 3
  store i64 477, ptr %err.line.gep30, align 8
  %err.col.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 4
  store i64 28, ptr %err.col.gep31, align 8
  %err.ctx.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc26, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep32, align 8
  %err.ctx1.gep34 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep32, i32 0, i32 1
  store i64 %a.rd.len22, ptr %err.ctx1.gep34, align 8
  %err.p2i35 = ptrtoint ptr %err.alloc26 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i35, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  br i1 %a.rd.tag, label %unwrap.pos.97, label %unwrap.abort.97

unwrap.pos.97:                                    ; preds = %a.rd.done
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %ret.pack47 = load { i64, ptr }, ptr %pay.ptr, align 8
  br label %common.ret

unwrap.abort.97:                                  ; preds = %a.rd.done
  %err.ptr = inttoptr i64 %a.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep37, align 8
  %err.file.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep38, align 8
  %err.line.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep39, align 8
  %err.col.gep40 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep40, align 8
  %err.msg.len41 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len42 = and i64 %err.msg.len41, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len42 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data43 = load ptr, ptr %err.msg.data, align 8
  %err.file.len44 = load i64, ptr %err.file.struct, align 8
  %err.file.len45 = and i64 %err.file.len44, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len45 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data46 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.97
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.97
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data43, i32 %err.file.len32, ptr %err.file.data46, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

loop.header.98:                                   ; preds = %loop.body.98, %choice.exit8
  %var._fold_acc_241.0 = phi i64 [ %multmp, %choice.exit8 ], [ %addtmp, %loop.body.98 ]
  %loop.idx.98.0 = phi i64 [ 0, %choice.exit8 ], [ %loop.next, %loop.body.98 ]
  %loop.cond = icmp slt i64 %loop.idx.98.0, %arr.cycle.len67
  br i1 %loop.cond, label %loop.body.98, label %loop.exit.98

loop.body.98:                                     ; preds = %loop.header.98
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data68, i64 %loop.idx.98.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %str.len.query73 = load i64, ptr %slot.i2p, align 8
  %str.len.query74 = and i64 %str.len.query73, 281474976710655
  %addtmp = add i64 %var._fold_acc_241.0, %str.len.query74
  %loop.next = add i64 %loop.idx.98.0, 1
  br label %loop.header.98

loop.exit.98:                                     ; preds = %loop.header.98
  %addtmp77 = add i64 %var._fold_acc_241.0, 1
  %cap.neg = icmp slt i64 %addtmp77, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp77
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len78

b.buf.len78:                                      ; preds = %loop.exit.98
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  %arr.cycle.len94 = load i64, ptr %var.parts.0, align 8
  %arr.cycle.data95 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.parts.0, i32 0, i32 1
  %arr.cycle.data96 = load ptr, ptr %arr.cycle.data95, align 8
  br label %loop.header.99

str_overflow_abort:                               ; preds = %loop.exit.98
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.99:                                   ; preds = %b.grow_done153, %b.buf.len78
  %builder.new.salloc.sroa.18.0 = phi i64 [ %cap.safe, %b.buf.len78 ], [ %builder.new.salloc.sroa.18.3, %b.grow_done153 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %b.buf.len78 ], [ %builder.new.salloc.sroa.9.3, %b.grow_done153 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %b.buf.len78 ], [ %sum143, %b.grow_done153 ]
  %loop.idx.99.0 = phi i64 [ 0, %b.buf.len78 ], [ %loop.next180, %b.grow_done153 ]
  %loop.cond98 = icmp slt i64 %loop.idx.99.0, %arr.cycle.len94
  br i1 %loop.cond98, label %loop.body.99, label %loop.exit.99

loop.body.99:                                     ; preds = %loop.header.99
  %arr.elem.gep100 = getelementptr i64, ptr %arr.cycle.data96, i64 %loop.idx.99.0
  %arr.elem.raw101 = load i64, ptr %arr.elem.gep100, align 8
  %slot.i2p102 = inttoptr i64 %arr.elem.raw101 to ptr
  %cmptmp107 = icmp sgt i64 %loop.idx.99.0, 0
  %cmptmp109 = icmp sgt i64 %str.len.query51, 0
  %and.100.phi = select i1 %cmptmp107, i1 %cmptmp109, i1 false
  br i1 %and.100.phi, label %choice.then110, label %choice.exit111

loop.exit.99:                                     ; preds = %loop.header.99
  %ret.pack184.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack184.fca.1.insert = insertvalue { i64, ptr } %ret.pack184.fca.0.insert, ptr %builder.new.salloc.sroa.9.0, 1
  br label %common.ret

choice.then110:                                   ; preds = %loop.body.99
  %app.str.len113 = load i64, ptr %1, align 8
  %app.str.len114 = and i64 %app.str.len113, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %app.str.data115 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len114)
  %sum117 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf118 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf118, label %str_overflow_abort120, label %b.app.new.len119

choice.exit111:                                   ; preds = %b.grow_done, %loop.body.99
  %builder.new.salloc.sroa.18.1 = phi i64 [ %builder.new.salloc.sroa.18.2, %b.grow_done ], [ %builder.new.salloc.sroa.18.0, %loop.body.99 ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %builder.new.salloc.sroa.9.2, %b.grow_done ], [ %builder.new.salloc.sroa.9.0, %loop.body.99 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum117, %b.grow_done ], [ %builder.new.salloc.sroa.0.0, %loop.body.99 ]
  %app.str.len136 = load i64, ptr %slot.i2p102, align 8
  %app.str.len137 = and i64 %app.str.len136, 281474976710655
  %app.str.data138 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p102, i32 0, i32 1
  %app.str.data139 = load ptr, ptr %app.str.data138, align 8
  %b.app.new.len142 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.1, i64 %app.str.len137)
  %sum143 = extractvalue { i64, i1 } %b.app.new.len142, 0
  %ovf144 = extractvalue { i64, i1 } %b.app.new.len142, 1
  br i1 %ovf144, label %str_overflow_abort146, label %b.app.new.len145

b.app.new.len119:                                 ; preds = %choice.then110
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum117
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort120:                            ; preds = %choice.then110
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len119
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum117
  %b.new.cap = select i1 %b.cap.need, i64 %sum117, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum125 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf126 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf126, label %str_overflow_abort128, label %b.new.buf.len2127

b.grow_done:                                      ; preds = %b.app.new.len119, %b.new.buf.len2127
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap, %b.new.buf.len2127 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len119 ]
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf2, %b.new.buf.len2127 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len119 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data115, i64 %app.str.len114, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum117
  store i8 0, ptr %b.app.nul, align 1
  br label %choice.exit111

b.new.buf.len2127:                                ; preds = %b.grow2
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 %sum125)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort128:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len145:                                 ; preds = %choice.exit111
  %b.need.grow150 = icmp slt i64 %builder.new.salloc.sroa.18.1, %sum143
  br i1 %b.need.grow150, label %b.grow2151, label %b.grow_done153

str_overflow_abort146:                            ; preds = %choice.exit111
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2151:                                       ; preds = %b.app.new.len145
  %b.cap2154 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small155 = icmp slt i64 %b.cap2154, 16
  %b.cap.grow156 = select i1 %b.cap.small155, i64 16, i64 %b.cap2154
  %b.cap.need157 = icmp slt i64 %b.cap.grow156, %sum143
  %b.new.cap158 = select i1 %b.cap.need157, i64 %sum143, i64 %b.cap.grow156
  %b.new.buf.len2163 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap158, i64 1)
  %sum164 = extractvalue { i64, i1 } %b.new.buf.len2163, 0
  %ovf165 = extractvalue { i64, i1 } %b.new.buf.len2163, 1
  br i1 %ovf165, label %str_overflow_abort167, label %b.new.buf.len2166

b.grow_done153:                                   ; preds = %b.app.new.len145, %b.new.buf.len2166
  %builder.new.salloc.sroa.18.3 = phi i64 [ %b.new.cap158, %b.new.buf.len2166 ], [ %builder.new.salloc.sroa.18.1, %b.app.new.len145 ]
  %builder.new.salloc.sroa.9.3 = phi ptr [ %b.new.buf2170, %b.new.buf.len2166 ], [ %builder.new.salloc.sroa.9.1, %b.app.new.len145 ]
  %b.app.dst176 = getelementptr i8, ptr %builder.new.salloc.sroa.9.3, i64 %builder.new.salloc.sroa.0.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst176, ptr align 1 %app.str.data139, i64 %app.str.len137, i1 false)
  %b.app.nul177 = getelementptr i8, ptr %builder.new.salloc.sroa.9.3, i64 %sum143
  store i8 0, ptr %b.app.nul177, align 1
  %loop.next180 = add i64 %loop.idx.99.0, 1
  br label %loop.header.99

b.new.buf.len2166:                                ; preds = %b.grow2151
  %arena.cur169 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 %sum164)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2170, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.1, i1 false)
  %b.grow2.nul171 = getelementptr i8, ptr %b.new.buf2170, i64 %builder.new.salloc.sroa.0.1
  store i8 0, ptr %b.grow2.nul171, align 1
  br label %b.grow_done153

str_overflow_abort167:                            ; preds = %b.grow2151
  call void @dva_abort_str_overflow_msg()
  unreachable
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define { i64, ptr } @"str::lower"(ptr %0) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %entry, %b.freeze.done
  %common.ret.op = phi { i64, ptr } [ %ret.pack104.fca.1.insert, %b.freeze.done ], [ { i64 0, ptr @str.9 }, %entry ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %entry
  %addtmp = add i64 %str.len.query2, 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %addtmp, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

b.buf.len5:                                       ; preds = %choice.exit
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %addtmp, ptr %b.cap.gep, align 8
  br label %loop.header.101

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.101:                                  ; preds = %choice.exit21, %b.buf.len5
  %"var.i'.0" = phi i64 [ 0, %b.buf.len5 ], [ %"var.i'.1", %choice.exit21 ]
  %loop.idx.101.0 = phi i64 [ 0, %b.buf.len5 ], [ %loop.next, %choice.exit21 ]
  %cmptmp9 = icmp sge i64 %"var.i'.0", %str.len.query2
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

choice.then10:                                    ; preds = %loop.header.101
  %b.freeze.len100 = load i64, ptr %builder.new, align 8
  %b.freeze.data101 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit11:                                    ; preds = %loop.header.101
  %s.read.len13 = load i64, ptr %0, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.i'.0", %s.read.len14
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit11
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %"var.i'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp slt i64 %s.byte.val, 128
  br i1 %cmptmp19, label %choice.then20, label %choice.else

idx_oob:                                          ; preds = %choice.exit11
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then20:                                    ; preds = %idx_ok
  %call.res = call i64 @"ascii::to_lower"(i64 %s.byte.val)
  %b.b.ge0 = icmp sge i64 %call.res, 0
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else:                                      ; preds = %idx_ok
  %call.res40 = call { i64, i64 } @"utf::decode_str_at"(ptr %0, i64 %"var.i'.0")
  %call.res40.fca.0.extract = extractvalue { i64, i64 } %call.res40, 0
  %call.res40.fca.1.extract = extractvalue { i64, i64 } %call.res40, 1
  %cmptmp46 = icmp slt i64 %call.res40.fca.0.extract, 0
  br i1 %cmptmp46, label %b.byte_ok55, label %choice.else48

choice.exit21:                                    ; preds = %b.push_done68, %choice.else48, %b.push_done
  %"var.i'.1" = phi i64 [ %addtmp37, %b.push_done ], [ %addtmp92, %b.push_done68 ], [ %addtmp98, %choice.else48 ]
  %loop.next = add i64 %loop.idx.101.0, 1
  br label %loop.header.101

b.byte_ok:                                        ; preds = %choice.then20
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.len24 = load i64, ptr %builder.new, align 8
  %b.cap25 = load i64, ptr %b.cap.gep, align 8
  %b.data26 = load ptr, ptr %b.data.gep, align 8
  %b.needs.grow = icmp eq i64 %b.len24, %b.cap25
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %choice.then20
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap25, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum27 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf28 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %b.new.buf.len29

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len29
  %b.cur.data33 = load ptr, ptr %b.data.gep, align 8
  %b.cur.len34 = load i64, ptr %builder.new, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data33, i64 %b.cur.len34
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len34, 1
  %b.nul = getelementptr i8, ptr %b.cur.data33, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  store i64 %b.next.len, ptr %builder.new, align 8
  %addtmp37 = add i64 %"var.i'.0", 1
  br label %choice.exit21

b.new.buf.len29:                                  ; preds = %b.grow
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %sum27)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data26, i64 %b.len24, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len24
  store i8 0, ptr %b.grow.nul, align 1
  store ptr %b.new.buf, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.push_done

str_overflow_abort30:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.else48:                                    ; preds = %choice.else
  %coerce.trunc = trunc i64 %call.res40.fca.0.extract to i32
  %call.res95 = call i32 @"unicode::to_lower"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %builder.new, i32 %call.res95)
  %addtmp98 = add i64 %"var.i'.0", %call.res40.fca.1.extract
  br label %choice.exit21

b.byte_ok55:                                      ; preds = %choice.else
  %b.len60 = load i64, ptr %builder.new, align 8
  %b.cap62 = load i64, ptr %b.cap.gep, align 8
  %b.data64 = load ptr, ptr %b.data.gep, align 8
  %b.needs.grow65 = icmp eq i64 %b.len60, %b.cap62
  br i1 %b.needs.grow65, label %b.grow66, label %b.push_done68

b.grow66:                                         ; preds = %b.byte_ok55
  %b.cap269 = mul i64 %b.cap62, 2
  %b.cap.small70 = icmp slt i64 %b.cap269, 16
  %b.new.cap71 = select i1 %b.cap.small70, i64 16, i64 %b.cap269
  %b.new.buf.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap71, i64 1)
  %sum73 = extractvalue { i64, i1 } %b.new.buf.len72, 0
  %ovf74 = extractvalue { i64, i1 } %b.new.buf.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %b.new.buf.len75

b.push_done68:                                    ; preds = %b.byte_ok55, %b.new.buf.len75
  %b.cur.data84 = load ptr, ptr %b.data.gep, align 8
  %b.cur.len86 = load i64, ptr %builder.new, align 8
  %b.byte.gep87 = getelementptr i8, ptr %b.cur.data84, i64 %b.cur.len86
  store i8 %s.byte, ptr %b.byte.gep87, align 1
  %b.next.len88 = add i64 %b.cur.len86, 1
  %b.nul89 = getelementptr i8, ptr %b.cur.data84, i64 %b.next.len88
  store i8 0, ptr %b.nul89, align 1
  store i64 %b.next.len88, ptr %builder.new, align 8
  %addtmp92 = add i64 %"var.i'.0", 1
  br label %choice.exit21

b.new.buf.len75:                                  ; preds = %b.grow66
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %sum73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf79, ptr align 1 %b.data64, i64 %b.len60, i1 false)
  %b.grow.nul80 = getelementptr i8, ptr %b.new.buf79, i64 %b.len60
  store i8 0, ptr %b.grow.nul80, align 1
  store ptr %b.new.buf79, ptr %b.data.gep, align 8
  store i64 %b.new.cap71, ptr %b.cap.gep, align 8
  br label %b.push_done68

str_overflow_abort76:                             ; preds = %b.grow66
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %choice.then10
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data101, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data101, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data101, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len100, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data101, i64 %b.freeze.len100, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len100
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then10
  %b.freeze.data103 = phi ptr [ %b.freeze.data101, %choice.then10 ], [ %b.freeze.data101, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.pack104.fca.0.insert = insertvalue { i64, ptr } poison, i64 %b.freeze.len100, 0
  %ret.pack104.fca.1.insert = insertvalue { i64, ptr } %ret.pack104.fca.0.insert, ptr %b.freeze.data103, 1
  br label %common.ret
}

declare i64 @"ascii::to_lower"(i64) #3

declare { i64, i64 } @"utf::decode_str_at"(ptr, i64) #3

declare i32 @"unicode::to_lower"(i32) #3

declare void @"utf::append_rune"(ptr, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"str::upper"(ptr %0) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %entry, %b.freeze.done
  %common.ret.op = phi { i64, ptr } [ %ret.pack132.fca.1.insert, %b.freeze.done ], [ { i64 0, ptr @str.9 }, %entry ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %entry
  %addtmp = add i64 %str.len.query2, 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %addtmp, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len5

b.buf.len5:                                       ; preds = %choice.exit
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %addtmp, ptr %b.cap.gep, align 8
  br label %loop.header.102

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.102:                                  ; preds = %choice.exit21, %b.buf.len5
  %"var.i'.0" = phi i64 [ 0, %b.buf.len5 ], [ %"var.i'.1", %choice.exit21 ]
  %loop.idx.102.0 = phi i64 [ 0, %b.buf.len5 ], [ %loop.next, %choice.exit21 ]
  %cmptmp9 = icmp sge i64 %"var.i'.0", %str.len.query2
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

choice.then10:                                    ; preds = %loop.header.102
  %b.freeze.len128 = load i64, ptr %builder.new, align 8
  %b.freeze.data129 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit11:                                    ; preds = %loop.header.102
  %s.read.len13 = load i64, ptr %0, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 %"var.i'.0", %s.read.len14
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit11
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %"var.i'.0"
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp19 = icmp slt i64 %s.byte.val, 128
  br i1 %cmptmp19, label %choice.then20, label %choice.else

idx_oob:                                          ; preds = %choice.exit11
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then20:                                    ; preds = %idx_ok
  %call.res = call i64 @"ascii::to_upper"(i64 %s.byte.val)
  %b.b.ge0 = icmp sge i64 %call.res, 0
  %b.b.le255 = icmp sle i64 %call.res, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.else:                                      ; preds = %idx_ok
  %call.res40 = call { i64, i64 } @"utf::decode_str_at"(ptr %0, i64 %"var.i'.0")
  %call.res40.fca.0.extract = extractvalue { i64, i64 } %call.res40, 0
  %call.res40.fca.1.extract = extractvalue { i64, i64 } %call.res40, 1
  %cmptmp46 = icmp slt i64 %call.res40.fca.0.extract, 0
  br i1 %cmptmp46, label %b.byte_ok55, label %choice.else48

choice.exit21:                                    ; preds = %b.push_done68, %choice.exit97, %b.push_done
  %"var.i'.1" = phi i64 [ %addtmp37, %b.push_done ], [ %addtmp92, %b.push_done68 ], [ %addtmp126, %choice.exit97 ]
  %loop.next = add i64 %loop.idx.102.0, 1
  br label %loop.header.102

b.byte_ok:                                        ; preds = %choice.then20
  %b.byte.i8 = trunc i64 %call.res to i8
  %b.len24 = load i64, ptr %builder.new, align 8
  %b.cap25 = load i64, ptr %b.cap.gep, align 8
  %b.data26 = load ptr, ptr %b.data.gep, align 8
  %b.needs.grow = icmp eq i64 %b.len24, %b.cap25
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %choice.then20
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap25, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum27 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf28 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf28, label %str_overflow_abort30, label %b.new.buf.len29

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len29
  %b.cur.data33 = load ptr, ptr %b.data.gep, align 8
  %b.cur.len34 = load i64, ptr %builder.new, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data33, i64 %b.cur.len34
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len34, 1
  %b.nul = getelementptr i8, ptr %b.cur.data33, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  store i64 %b.next.len, ptr %builder.new, align 8
  %addtmp37 = add i64 %"var.i'.0", 1
  br label %choice.exit21

b.new.buf.len29:                                  ; preds = %b.grow
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %sum27)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data26, i64 %b.len24, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len24
  store i8 0, ptr %b.grow.nul, align 1
  store ptr %b.new.buf, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.push_done

str_overflow_abort30:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.else48:                                    ; preds = %choice.else
  %cmptmp94 = icmp eq i64 %call.res40.fca.0.extract, 223
  br i1 %cmptmp94, label %choice.then95, label %choice.else96

b.byte_ok55:                                      ; preds = %choice.else
  %b.len60 = load i64, ptr %builder.new, align 8
  %b.cap62 = load i64, ptr %b.cap.gep, align 8
  %b.data64 = load ptr, ptr %b.data.gep, align 8
  %b.needs.grow65 = icmp eq i64 %b.len60, %b.cap62
  br i1 %b.needs.grow65, label %b.grow66, label %b.push_done68

b.grow66:                                         ; preds = %b.byte_ok55
  %b.cap269 = mul i64 %b.cap62, 2
  %b.cap.small70 = icmp slt i64 %b.cap269, 16
  %b.new.cap71 = select i1 %b.cap.small70, i64 16, i64 %b.cap269
  %b.new.buf.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap71, i64 1)
  %sum73 = extractvalue { i64, i1 } %b.new.buf.len72, 0
  %ovf74 = extractvalue { i64, i1 } %b.new.buf.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %b.new.buf.len75

b.push_done68:                                    ; preds = %b.byte_ok55, %b.new.buf.len75
  %b.cur.data84 = load ptr, ptr %b.data.gep, align 8
  %b.cur.len86 = load i64, ptr %builder.new, align 8
  %b.byte.gep87 = getelementptr i8, ptr %b.cur.data84, i64 %b.cur.len86
  store i8 %s.byte, ptr %b.byte.gep87, align 1
  %b.next.len88 = add i64 %b.cur.len86, 1
  %b.nul89 = getelementptr i8, ptr %b.cur.data84, i64 %b.next.len88
  store i8 0, ptr %b.nul89, align 1
  store i64 %b.next.len88, ptr %builder.new, align 8
  %addtmp92 = add i64 %"var.i'.0", 1
  br label %choice.exit21

b.new.buf.len75:                                  ; preds = %b.grow66
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %sum73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf79, ptr align 1 %b.data64, i64 %b.len60, i1 false)
  %b.grow.nul80 = getelementptr i8, ptr %b.new.buf79, i64 %b.len60
  store i8 0, ptr %b.grow.nul80, align 1
  store ptr %b.new.buf79, ptr %b.data.gep, align 8
  store i64 %b.new.cap71, ptr %b.cap.gep, align 8
  br label %b.push_done68

str_overflow_abort76:                             ; preds = %b.grow66
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then95:                                    ; preds = %choice.else48
  %b.app.cur.len100 = load i64, ptr %builder.new, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len100, i64 2)
  %sum101 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf102 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf102, label %str_overflow_abort104, label %b.app.new.len103

choice.else96:                                    ; preds = %choice.else48
  %coerce.trunc = trunc i64 %call.res40.fca.0.extract to i32
  %call.res123 = call i32 @"unicode::to_upper"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %builder.new, i32 %call.res123)
  br label %choice.exit97

choice.exit97:                                    ; preds = %choice.else96, %b.grow_done
  %addtmp126 = add i64 %"var.i'.0", %call.res40.fca.1.extract
  br label %choice.exit21

b.app.new.len103:                                 ; preds = %choice.then95
  %b.cap107 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow = icmp slt i64 %b.cap107, %sum101
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort104:                            ; preds = %choice.then95
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len103
  %b.cap2108 = mul i64 %b.cap107, 2
  %b.cap.small109 = icmp slt i64 %b.cap2108, 16
  %b.cap.grow = select i1 %b.cap.small109, i64 16, i64 %b.cap2108
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum101
  %b.new.cap110 = select i1 %b.cap.need, i64 %sum101, i64 %b.cap.grow
  %b.cur.len2111 = load i64, ptr %builder.new, align 8
  %b.cur.data2112 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap110, i64 1)
  %sum113 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf114 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf114, label %str_overflow_abort116, label %b.new.buf.len2115

b.grow_done:                                      ; preds = %b.app.new.len103, %b.new.buf.len2115
  %b.app.data119 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data119, i64 %b.app.cur.len100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 @str.13, i64 2, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data119, i64 %sum101
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum101, ptr %builder.new, align 8
  br label %choice.exit97

b.new.buf.len2115:                                ; preds = %b.grow2
  %arena.cur118 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 %sum113)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2112, i64 %b.cur.len2111, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2111
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap110, ptr %b.cap.gep, align 8
  br label %b.grow_done

str_overflow_abort116:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %choice.then10
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data129, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data129, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data129, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len128, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data129, i64 %b.freeze.len128, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len128
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then10
  %b.freeze.data131 = phi ptr [ %b.freeze.data129, %choice.then10 ], [ %b.freeze.data129, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.pack132.fca.0.insert = insertvalue { i64, ptr } poison, i64 %b.freeze.len128, 0
  %ret.pack132.fca.1.insert = insertvalue { i64, ptr } %ret.pack132.fca.0.insert, ptr %b.freeze.data131, 1
  br label %common.ret
}

declare i64 @"ascii::to_upper"(i64) #3

declare i32 @"unicode::to_upper"(i32) #3

define { i64, ptr } @"str::repeat"(ptr %0, i64 %1) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sle i64 %1, 0
  %cmptmp5 = icmp eq i64 %str.len.query2, 0
  %or.103.phi = select i1 %cmptmp, i1 true, i1 %cmptmp5
  br i1 %or.103.phi, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %entry, %loop.exit.104, %choice.then8
  %common.ret.op = phi { i64, ptr } [ %ret.pack11, %choice.then8 ], [ %ret.pack41.fca.1.insert, %loop.exit.104 ], [ { i64 0, ptr @str.9 }, %entry ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %entry
  %cmptmp7 = icmp eq i64 %1, 1
  br i1 %cmptmp7, label %choice.then8, label %choice.exit9

choice.then8:                                     ; preds = %choice.exit
  %ret.pack11 = load { i64, ptr }, ptr %0, align 8
  br label %common.ret

choice.exit9:                                     ; preds = %choice.exit
  %multmp = mul i64 %str.len.query2, %1
  %cap.neg = icmp slt i64 %multmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %multmp
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len15

b.buf.len15:                                      ; preds = %choice.exit9
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  br label %loop.header.104

str_overflow_abort:                               ; preds = %choice.exit9
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.104:                                  ; preds = %b.grow_done, %b.buf.len15
  %builder.new.salloc.sroa.12.0 = phi i64 [ %cap.safe, %b.buf.len15 ], [ %builder.new.salloc.sroa.12.1, %b.grow_done ]
  %builder.new.salloc.sroa.6.0 = phi ptr [ %b.buf, %b.buf.len15 ], [ %builder.new.salloc.sroa.6.1, %b.grow_done ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %b.buf.len15 ], [ %sum22, %b.grow_done ]
  %loop.idx.104.0 = phi i64 [ 0, %b.buf.len15 ], [ %loop.next, %b.grow_done ]
  %loop.cond = icmp slt i64 %loop.idx.104.0, %1
  br i1 %loop.cond, label %loop.body.104, label %loop.exit.104

loop.body.104:                                    ; preds = %loop.header.104
  %app.str.len18 = load i64, ptr %0, align 8
  %app.str.len19 = and i64 %app.str.len18, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %app.str.data20 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len19)
  %sum22 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf23 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf23, label %str_overflow_abort25, label %b.app.new.len24

loop.exit.104:                                    ; preds = %loop.header.104
  %ret.pack41.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack41.fca.1.insert = insertvalue { i64, ptr } %ret.pack41.fca.0.insert, ptr %builder.new.salloc.sroa.6.0, 1
  br label %common.ret

b.app.new.len24:                                  ; preds = %loop.body.104
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.12.0, %sum22
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort25:                             ; preds = %loop.body.104
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len24
  %b.cap2 = mul i64 %builder.new.salloc.sroa.12.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum22
  %b.new.cap = select i1 %b.cap.need, i64 %sum22, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf31 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.new.buf.len232

b.grow_done:                                      ; preds = %b.app.new.len24, %b.new.buf.len232
  %builder.new.salloc.sroa.12.1 = phi i64 [ %b.new.cap, %b.new.buf.len232 ], [ %builder.new.salloc.sroa.12.0, %b.app.new.len24 ]
  %builder.new.salloc.sroa.6.1 = phi ptr [ %b.new.buf2, %b.new.buf.len232 ], [ %builder.new.salloc.sroa.6.0, %b.app.new.len24 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.6.1, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data20, i64 %app.str.len19, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.6.1, i64 %sum22
  store i8 0, ptr %b.app.nul, align 1
  %loop.next = add i64 %loop.idx.104.0, 1
  br label %loop.header.104

b.new.buf.len232:                                 ; preds = %b.grow2
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 %sum30)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.6.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort33:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"str::pad_left"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query2, %1
  br i1 %cmptmp, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %b.grow_done, %choice.then
  %common.ret.op = phi { i64, ptr } [ %ret.pack, %choice.then ], [ %ret.pack54.fca.1.insert, %b.grow_done ]
  ret { i64, ptr } %common.ret.op

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr %0, align 8
  br label %common.ret

choice.exit:                                      ; preds = %entry
  %subtmp = sub i64 %1, %str.len.query2
  %cap.neg = icmp slt i64 %1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %1
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len9

b.buf.len9:                                       ; preds = %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  br label %loop.header.105

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.105:                                  ; preds = %b.push_done, %b.buf.len9
  %builder.new.salloc.sroa.18.0 = phi i64 [ %cap.safe, %b.buf.len9 ], [ %builder.new.salloc.sroa.18.1, %b.push_done ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.buf, %b.buf.len9 ], [ %builder.new.salloc.sroa.9.1, %b.push_done ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %b.buf.len9 ], [ %b.next.len, %b.push_done ]
  %loop.idx.105.0 = phi i64 [ 0, %b.buf.len9 ], [ %loop.next, %b.push_done ]
  %loop.cond = icmp slt i64 %loop.idx.105.0, %subtmp
  br i1 %loop.cond, label %loop.body.105, label %loop.exit.105

loop.body.105:                                    ; preds = %loop.header.105
  %b.b.ge0 = icmp sge i64 %2, 0
  %b.b.le255 = icmp sle i64 %2, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

loop.exit.105:                                    ; preds = %loop.header.105
  %app.str.len27 = load i64, ptr %0, align 8
  %app.str.len28 = and i64 %app.str.len27, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %app.str.data29 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len28)
  %sum31 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf32 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf32, label %str_overflow_abort34, label %b.app.new.len33

b.byte_ok:                                        ; preds = %loop.body.105
  %b.byte.i8 = trunc i64 %2 to i8
  %b.needs.grow = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.18.0
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %loop.body.105
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum16 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf17 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf17, label %str_overflow_abort19, label %b.new.buf.len18

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len18
  %builder.new.salloc.sroa.18.1 = phi i64 [ %b.new.cap, %b.new.buf.len18 ], [ %builder.new.salloc.sroa.18.0, %b.byte_ok ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %b.new.buf, %b.new.buf.len18 ], [ %builder.new.salloc.sroa.9.0, %b.byte_ok ]
  %b.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.1, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %loop.next = add i64 %loop.idx.105.0, 1
  br label %loop.header.105

b.new.buf.len18:                                  ; preds = %b.grow
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum16)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul, align 1
  br label %b.push_done

str_overflow_abort19:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len33:                                  ; preds = %loop.exit.105
  %b.need.grow = icmp slt i64 %builder.new.salloc.sroa.18.0, %sum31
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort34:                             ; preds = %loop.exit.105
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len33
  %b.cap238 = mul i64 %builder.new.salloc.sroa.18.0, 2
  %b.cap.small39 = icmp slt i64 %b.cap238, 16
  %b.cap.grow = select i1 %b.cap.small39, i64 16, i64 %b.cap238
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum31
  %b.new.cap40 = select i1 %b.cap.need, i64 %sum31, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap40, i64 1)
  %sum43 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf44 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf44, label %str_overflow_abort46, label %b.new.buf.len245

b.grow_done:                                      ; preds = %b.app.new.len33, %b.new.buf.len245
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf2, %b.new.buf.len245 ], [ %builder.new.salloc.sroa.9.0, %b.app.new.len33 ]
  %b.app.dst = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data29, i64 %app.str.len28, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %sum31
  store i8 0, ptr %b.app.nul, align 1
  %ret.pack54.fca.0.insert = insertvalue { i64, ptr } poison, i64 %sum31, 0
  %ret.pack54.fca.1.insert = insertvalue { i64, ptr } %ret.pack54.fca.0.insert, ptr %builder.new.salloc.sroa.9.2, 1
  br label %common.ret

b.new.buf.len245:                                 ; preds = %b.grow2
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %builder.new.salloc.sroa.9.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul, align 1
  br label %b.grow_done

str_overflow_abort46:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"str::pad_right"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sge i64 %str.len.query2, %1
  br i1 %cmptmp, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %loop.exit.106, %choice.then
  %common.ret.op = phi { i64, ptr } [ %ret.pack, %choice.then ], [ %ret.pack54.fca.1.insert, %loop.exit.106 ]
  ret { i64, ptr } %common.ret.op

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr %0, align 8
  br label %common.ret

choice.exit:                                      ; preds = %entry
  %subtmp = sub i64 %1, %str.len.query2
  %cap.neg = icmp slt i64 %1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %1
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len9

b.buf.len9:                                       ; preds = %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  %app.str.len11 = load i64, ptr %0, align 8
  %app.str.len12 = and i64 %app.str.len11, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %app.str.data13 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 0, i64 %app.str.len12)
  %sum15 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf16 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %b.app.new.len17

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len17:                                  ; preds = %b.buf.len9
  %b.need.grow = icmp slt i64 %cap.safe, %sum15
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort18:                             ; preds = %b.buf.len9
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len17
  %b.cap2 = mul i64 %cap.safe, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum15
  %b.new.cap = select i1 %b.cap.need, i64 %sum15, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum23 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf24 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf24, label %str_overflow_abort26, label %b.new.buf.len225

b.grow_done:                                      ; preds = %b.app.new.len17, %b.new.buf.len225
  %builder.new.salloc.sroa.18.0 = phi i64 [ %b.new.cap, %b.new.buf.len225 ], [ %cap.safe, %b.app.new.len17 ]
  %builder.new.salloc.sroa.9.0 = phi ptr [ %b.new.buf2, %b.new.buf.len225 ], [ %b.buf, %b.app.new.len17 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %builder.new.salloc.sroa.9.0, ptr align 1 %app.str.data13, i64 %app.str.len12, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.0, i64 %sum15
  store i8 0, ptr %b.app.nul, align 1
  br label %loop.header.106

b.new.buf.len225:                                 ; preds = %b.grow2
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %sum23)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.buf, i64 0, i1 false)
  store i8 0, ptr %b.new.buf2, align 1
  br label %b.grow_done

str_overflow_abort26:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.106:                                  ; preds = %b.push_done, %b.grow_done
  %builder.new.salloc.sroa.18.1 = phi i64 [ %builder.new.salloc.sroa.18.0, %b.grow_done ], [ %builder.new.salloc.sroa.18.2, %b.push_done ]
  %builder.new.salloc.sroa.9.1 = phi ptr [ %builder.new.salloc.sroa.9.0, %b.grow_done ], [ %builder.new.salloc.sroa.9.2, %b.push_done ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ %sum15, %b.grow_done ], [ %b.next.len, %b.push_done ]
  %loop.idx.106.0 = phi i64 [ 0, %b.grow_done ], [ %loop.next, %b.push_done ]
  %loop.cond = icmp slt i64 %loop.idx.106.0, %subtmp
  br i1 %loop.cond, label %loop.body.106, label %loop.exit.106

loop.body.106:                                    ; preds = %loop.header.106
  %b.b.ge0 = icmp sge i64 %2, 0
  %b.b.le255 = icmp sle i64 %2, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

loop.exit.106:                                    ; preds = %loop.header.106
  %ret.pack54.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack54.fca.1.insert = insertvalue { i64, ptr } %ret.pack54.fca.0.insert, ptr %builder.new.salloc.sroa.9.1, 1
  br label %common.ret

b.byte_ok:                                        ; preds = %loop.body.106
  %b.byte.i8 = trunc i64 %2 to i8
  %b.needs.grow = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.18.1
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.byte_err:                                       ; preds = %loop.body.106
  call void @dva_abort_b_byte_msg()
  unreachable

b.grow:                                           ; preds = %b.byte_ok
  %b.cap239 = mul i64 %builder.new.salloc.sroa.18.1, 2
  %b.cap.small40 = icmp slt i64 %b.cap239, 16
  %b.new.cap41 = select i1 %b.cap.small40, i64 16, i64 %b.cap239
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap41, i64 1)
  %sum42 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf43 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %b.new.buf.len44

b.push_done:                                      ; preds = %b.byte_ok, %b.new.buf.len44
  %builder.new.salloc.sroa.18.2 = phi i64 [ %b.new.cap41, %b.new.buf.len44 ], [ %builder.new.salloc.sroa.18.1, %b.byte_ok ]
  %builder.new.salloc.sroa.9.2 = phi ptr [ %b.new.buf, %b.new.buf.len44 ], [ %builder.new.salloc.sroa.9.1, %b.byte_ok ]
  %b.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %builder.new.salloc.sroa.0.0
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul = getelementptr i8, ptr %builder.new.salloc.sroa.9.2, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %loop.next = add i64 %loop.idx.106.0, 1
  br label %loop.header.106

b.new.buf.len44:                                  ; preds = %b.grow
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %builder.new.salloc.sroa.9.1, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul, align 1
  br label %b.push_done

str_overflow_abort45:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"str::reverse"(ptr %0) #3 {
entry:
  %str.len.query1 = load i64, ptr %0, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp sle i64 %str.len.query2, 1
  br i1 %cmptmp, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %loop.exit.107, %choice.then
  %common.ret.op = phi { i64, ptr } [ %ret.pack, %choice.then ], [ %ret.pack32.fca.1.insert, %loop.exit.107 ]
  ret { i64, ptr } %common.ret.op

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr %0, align 8
  br label %common.ret

choice.exit:                                      ; preds = %entry
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %str.len.query2, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len6

b.buf.len6:                                       ; preds = %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  br label %loop.header.107

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.107:                                  ; preds = %b.push_done, %b.buf.len6
  %builder.new.salloc.sroa.12.0 = phi i64 [ %str.len.query2, %b.buf.len6 ], [ %builder.new.salloc.sroa.12.1, %b.push_done ]
  %builder.new.salloc.sroa.6.0 = phi ptr [ %b.buf, %b.buf.len6 ], [ %builder.new.salloc.sroa.6.1, %b.push_done ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %b.buf.len6 ], [ %b.next.len, %b.push_done ]
  %loop.idx.107.0 = phi i64 [ 0, %b.buf.len6 ], [ %loop.next, %b.push_done ]
  %loop.cond = icmp slt i64 %loop.idx.107.0, %str.len.query2
  br i1 %loop.cond, label %loop.body.107, label %loop.exit.107

loop.body.107:                                    ; preds = %loop.header.107
  %s.read.len9 = load i64, ptr %0, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %subtmp = sub i64 %str.len.query2, 1
  %subtmp14 = sub i64 %subtmp, %loop.idx.107.0
  %idx.oob = icmp uge i64 %subtmp14, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.107:                                    ; preds = %loop.header.107
  %ret.pack32.fca.0.insert = insertvalue { i64, ptr } poison, i64 %builder.new.salloc.sroa.0.0, 0
  %ret.pack32.fca.1.insert = insertvalue { i64, ptr } %ret.pack32.fca.0.insert, ptr %builder.new.salloc.sroa.6.0, 1
  br label %common.ret

idx_ok:                                           ; preds = %loop.body.107
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %subtmp14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.needs.grow = icmp eq i64 %builder.new.salloc.sroa.0.0, %builder.new.salloc.sroa.12.0
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

idx_oob:                                          ; preds = %loop.body.107
  call void @dva_abort_str_oob_msg()
  unreachable

b.grow:                                           ; preds = %idx_ok
  %b.cap2 = mul i64 %builder.new.salloc.sroa.12.0, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum20 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf21 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf21, label %str_overflow_abort23, label %b.new.buf.len22

b.push_done:                                      ; preds = %idx_ok, %b.new.buf.len22
  %builder.new.salloc.sroa.12.1 = phi i64 [ %b.new.cap, %b.new.buf.len22 ], [ %builder.new.salloc.sroa.12.0, %idx_ok ]
  %builder.new.salloc.sroa.6.1 = phi ptr [ %b.new.buf, %b.new.buf.len22 ], [ %builder.new.salloc.sroa.6.0, %idx_ok ]
  %b.byte.gep = getelementptr i8, ptr %builder.new.salloc.sroa.6.1, i64 %builder.new.salloc.sroa.0.0
  store i8 %s.byte, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.nul = getelementptr i8, ptr %builder.new.salloc.sroa.6.1, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %loop.next = add i64 %loop.idx.107.0, 1
  br label %loop.header.107

b.new.buf.len22:                                  ; preds = %b.grow
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 %sum20)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %builder.new.salloc.sroa.6.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow.nul, align 1
  br label %b.push_done

str_overflow_abort23:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"str::replace_first"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %str.len.query1 = load i64, ptr %1, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %choice.exit7, %choice.then
  %common.ret.op = phi { i64, ptr } [ %ret.pack, %choice.then ], [ %ret.pack170.fca.1.insert, %choice.exit7 ]
  ret { i64, ptr } %common.ret.op

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr %0, align 8
  br label %common.ret

choice.exit:                                      ; preds = %entry
  %call.res = call { i1, i64 } @"str::find"(ptr %0, ptr %1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then6, label %choice.exit7

choice.then6:                                     ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %str.len.query10 = load i64, ptr %0, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %str.len.query14 = load i64, ptr %1, align 8
  %str.len.query15 = and i64 %str.len.query14, 281474976710655
  %subtmp = sub i64 %str.len.query11, %str.len.query15
  %str.len.query20 = load i64, ptr %2, align 8
  %str.len.query21 = and i64 %str.len.query20, 281474976710655
  %addtmp = add i64 %subtmp, %str.len.query21
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len22

choice.exit7:                                     ; preds = %choice.exit, %choice.exit100
  %choice.res = phi ptr [ %builder.freeze, %choice.exit100 ], [ %0, %choice.exit ]
  %ret.pack170.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack170.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack170.fca.0.load, 0
  %ret.pack170.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack170.fca.1.load = load ptr, ptr %ret.pack170.fca.1.gep, align 8
  %ret.pack170.fca.1.insert = insertvalue { i64, ptr } %ret.pack170.fca.0.insert, ptr %ret.pack170.fca.1.load, 1
  br label %common.ret

b.buf.len22:                                      ; preds = %choice.then6
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  %cmptmp24 = icmp sgt i64 %ram.pay, 0
  br i1 %cmptmp24, label %choice.then25, label %choice.exit26

str_overflow_abort:                               ; preds = %choice.then6
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then25:                                    ; preds = %b.buf.len22
  %s.read.len28 = load i64, ptr %0, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  %rel.end = add i64 %s.read.len29, %ram.pay
  %end.gt.len = icmp sgt i64 %ram.pay, %s.read.len29
  %final.end = select i1 %end.gt.len, i64 %s.read.len29, i64 %ram.pay
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 0, i64 %view.len)
  %sum33 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf34 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %b.app.new.len35

choice.exit26:                                    ; preds = %b.grow_done, %b.buf.len22
  %builder.new.salloc.sroa.24.0 = phi i64 [ %builder.new.salloc.sroa.24.1, %b.grow_done ], [ %cap.safe, %b.buf.len22 ]
  %builder.new.salloc.sroa.12.0 = phi ptr [ %builder.new.salloc.sroa.12.1, %b.grow_done ], [ %b.buf, %b.buf.len22 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ %sum33, %b.grow_done ], [ 0, %b.buf.len22 ]
  %app.str.len51 = load i64, ptr %2, align 8
  %app.str.len52 = and i64 %app.str.len51, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %app.str.data53 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len56 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len52)
  %sum57 = extractvalue { i64, i1 } %b.app.new.len56, 0
  %ovf58 = extractvalue { i64, i1 } %b.app.new.len56, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.app.new.len59

b.app.new.len35:                                  ; preds = %choice.then25
  %b.need.grow = icmp slt i64 %cap.safe, %sum33
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort36:                             ; preds = %choice.then25
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len35
  %b.cap2 = mul i64 %cap.safe, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum33
  %b.new.cap = select i1 %b.cap.need, i64 %sum33, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len243

b.grow_done:                                      ; preds = %b.app.new.len35, %b.new.buf.len243
  %builder.new.salloc.sroa.24.1 = phi i64 [ %b.new.cap, %b.new.buf.len243 ], [ %cap.safe, %b.app.new.len35 ]
  %builder.new.salloc.sroa.12.1 = phi ptr [ %b.new.buf2, %b.new.buf.len243 ], [ %b.buf, %b.app.new.len35 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %builder.new.salloc.sroa.12.1, ptr align 1 %s.read.data30, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.12.1, i64 %sum33
  store i8 0, ptr %b.app.nul, align 1
  br label %choice.exit26

b.new.buf.len243:                                 ; preds = %b.grow2
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.buf, i64 0, i1 false)
  store i8 0, ptr %b.new.buf2, align 1
  br label %b.grow_done

str_overflow_abort44:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len59:                                  ; preds = %choice.exit26
  %b.need.grow64 = icmp slt i64 %builder.new.salloc.sroa.24.0, %sum57
  br i1 %b.need.grow64, label %b.grow265, label %b.grow_done67

str_overflow_abort60:                             ; preds = %choice.exit26
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow265:                                        ; preds = %b.app.new.len59
  %b.cap268 = mul i64 %builder.new.salloc.sroa.24.0, 2
  %b.cap.small69 = icmp slt i64 %b.cap268, 16
  %b.cap.grow70 = select i1 %b.cap.small69, i64 16, i64 %b.cap268
  %b.cap.need71 = icmp slt i64 %b.cap.grow70, %sum57
  %b.new.cap72 = select i1 %b.cap.need71, i64 %sum57, i64 %b.cap.grow70
  %b.new.buf.len277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap72, i64 1)
  %sum78 = extractvalue { i64, i1 } %b.new.buf.len277, 0
  %ovf79 = extractvalue { i64, i1 } %b.new.buf.len277, 1
  br i1 %ovf79, label %str_overflow_abort81, label %b.new.buf.len280

b.grow_done67:                                    ; preds = %b.app.new.len59, %b.new.buf.len280
  %builder.new.salloc.sroa.24.2 = phi i64 [ %b.new.cap72, %b.new.buf.len280 ], [ %builder.new.salloc.sroa.24.0, %b.app.new.len59 ]
  %builder.new.salloc.sroa.12.2 = phi ptr [ %b.new.buf284, %b.new.buf.len280 ], [ %builder.new.salloc.sroa.12.0, %b.app.new.len59 ]
  %b.app.dst90 = getelementptr i8, ptr %builder.new.salloc.sroa.12.2, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst90, ptr align 1 %app.str.data53, i64 %app.str.len52, i1 false)
  %b.app.nul91 = getelementptr i8, ptr %builder.new.salloc.sroa.12.2, i64 %sum57
  store i8 0, ptr %b.app.nul91, align 1
  %addtmp95 = add i64 %ram.pay, %str.len.query15
  %cmptmp98 = icmp slt i64 %addtmp95, %str.len.query11
  br i1 %cmptmp98, label %choice.then99, label %choice.exit100

b.new.buf.len280:                                 ; preds = %b.grow265
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf284 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 %sum78)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf284, ptr align 1 %builder.new.salloc.sroa.12.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul85 = getelementptr i8, ptr %b.new.buf284, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul85, align 1
  br label %b.grow_done67

str_overflow_abort81:                             ; preds = %b.grow265
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then99:                                    ; preds = %b.grow_done67
  %s.read.len104 = load i64, ptr %0, align 8
  %s.read.len105 = and i64 %s.read.len104, 281474976710655
  %s.read.data106 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data107 = load ptr, ptr %s.read.data106, align 8
  %start.is_neg = icmp slt i64 %addtmp95, 0
  %rel.start110 = add i64 %s.read.len105, %addtmp95
  %norm.start111 = select i1 %start.is_neg, i64 %rel.start110, i64 %addtmp95
  %start.lt.0112 = icmp slt i64 %norm.start111, 0
  %c.start.0113 = select i1 %start.lt.0112, i64 0, i64 %norm.start111
  %start.gt.len114 = icmp sgt i64 %c.start.0113, %s.read.len105
  %final.start115 = select i1 %start.gt.len114, i64 %s.read.len105, i64 %c.start.0113
  %rel.end117 = add i64 %s.read.len105, %str.len.query11
  %end.gt.len121 = icmp sgt i64 %str.len.query11, %s.read.len105
  %final.end122 = select i1 %end.gt.len121, i64 %s.read.len105, i64 %str.len.query11
  %view.empty123 = icmp sle i64 %final.end122, %final.start115
  %view.len.sub124 = sub i64 %final.end122, %final.start115
  %view.len125 = select i1 %view.empty123, i64 0, i64 %view.len.sub124
  %view.data126 = getelementptr i8, ptr %s.read.data107, i64 %final.start115
  %b.app.new.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum57, i64 %view.len125)
  %sum130 = extractvalue { i64, i1 } %b.app.new.len129, 0
  %ovf131 = extractvalue { i64, i1 } %b.app.new.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %b.app.new.len132

choice.exit100:                                   ; preds = %b.grow_done140, %b.grow_done67
  %builder.new.salloc.sroa.12.3 = phi ptr [ %builder.new.salloc.sroa.12.4, %b.grow_done140 ], [ %builder.new.salloc.sroa.12.2, %b.grow_done67 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum130, %b.grow_done140 ], [ %sum57, %b.grow_done67 ]
  store i64 %builder.new.salloc.sroa.0.1, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %builder.new.salloc.sroa.12.3, ptr %str.build.data.gep, align 8
  br label %choice.exit7

b.app.new.len132:                                 ; preds = %choice.then99
  %b.need.grow137 = icmp slt i64 %builder.new.salloc.sroa.24.2, %sum130
  br i1 %b.need.grow137, label %b.grow2138, label %b.grow_done140

str_overflow_abort133:                            ; preds = %choice.then99
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2138:                                       ; preds = %b.app.new.len132
  %b.cap2141 = mul i64 %builder.new.salloc.sroa.24.2, 2
  %b.cap.small142 = icmp slt i64 %b.cap2141, 16
  %b.cap.grow143 = select i1 %b.cap.small142, i64 16, i64 %b.cap2141
  %b.cap.need144 = icmp slt i64 %b.cap.grow143, %sum130
  %b.new.cap145 = select i1 %b.cap.need144, i64 %sum130, i64 %b.cap.grow143
  %b.new.buf.len2150 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap145, i64 1)
  %sum151 = extractvalue { i64, i1 } %b.new.buf.len2150, 0
  %ovf152 = extractvalue { i64, i1 } %b.new.buf.len2150, 1
  br i1 %ovf152, label %str_overflow_abort154, label %b.new.buf.len2153

b.grow_done140:                                   ; preds = %b.app.new.len132, %b.new.buf.len2153
  %builder.new.salloc.sroa.12.4 = phi ptr [ %b.new.buf2157, %b.new.buf.len2153 ], [ %builder.new.salloc.sroa.12.2, %b.app.new.len132 ]
  %b.app.dst163 = getelementptr i8, ptr %builder.new.salloc.sroa.12.4, i64 %sum57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst163, ptr align 1 %view.data126, i64 %view.len125, i1 false)
  %b.app.nul164 = getelementptr i8, ptr %builder.new.salloc.sroa.12.4, i64 %sum130
  store i8 0, ptr %b.app.nul164, align 1
  br label %choice.exit100

b.new.buf.len2153:                                ; preds = %b.grow2138
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 %sum151)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2157, ptr align 1 %builder.new.salloc.sroa.12.2, i64 %sum57, i1 false)
  %b.grow2.nul158 = getelementptr i8, ptr %b.new.buf2157, i64 %sum57
  store i8 0, ptr %b.grow2.nul158, align 1
  br label %b.grow_done140

str_overflow_abort154:                            ; preds = %b.grow2138
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i64, ptr } @"str::replace"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %str.len.query1 = load i64, ptr %1, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %choice.exit12, %choice.then
  %common.ret.op = phi { i64, ptr } [ %ret.pack, %choice.then ], [ %ret.pack293.fca.1.insert, %choice.exit12 ]
  ret { i64, ptr } %common.ret.op

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr %0, align 8
  br label %common.ret

choice.exit:                                      ; preds = %entry
  %str.len.query7 = load i64, ptr %0, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %call.res = call { i1, i64 } @"str::find"(ptr %0, ptr %1)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then11, label %choice.exit12

choice.then11:                                    ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %addtmp = add i64 %str.len.query8, 16
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %addtmp, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len14

choice.exit12:                                    ; preds = %choice.exit, %loop.exit.108
  %choice.res = phi ptr [ %builder.freeze, %loop.exit.108 ], [ %0, %choice.exit ]
  %ret.pack293.fca.0.load = load i64, ptr %choice.res, align 8
  %ret.pack293.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack293.fca.0.load, 0
  %ret.pack293.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %ret.pack293.fca.1.load = load ptr, ptr %ret.pack293.fca.1.gep, align 8
  %ret.pack293.fca.1.insert = insertvalue { i64, ptr } %ret.pack293.fca.0.insert, ptr %ret.pack293.fca.1.load, 1
  br label %common.ret

b.buf.len14:                                      ; preds = %choice.then11
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  %cmptmp16 = icmp sgt i64 %ram.pay, 0
  br i1 %cmptmp16, label %choice.then17, label %choice.exit18

str_overflow_abort:                               ; preds = %choice.then11
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then17:                                    ; preds = %b.buf.len14
  %s.read.len20 = load i64, ptr %0, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %rel.end = add i64 %s.read.len21, %ram.pay
  %end.gt.len = icmp sgt i64 %ram.pay, %s.read.len21
  %final.end = select i1 %end.gt.len, i64 %s.read.len21, i64 %ram.pay
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 0, i64 %view.len)
  %sum25 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf26 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.app.new.len27

choice.exit18:                                    ; preds = %b.grow_done, %b.buf.len14
  %builder.new.salloc.sroa.36.0 = phi i64 [ %builder.new.salloc.sroa.36.1, %b.grow_done ], [ %addtmp, %b.buf.len14 ]
  %builder.new.salloc.sroa.18.0 = phi ptr [ %builder.new.salloc.sroa.18.1, %b.grow_done ], [ %b.buf, %b.buf.len14 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ %sum25, %b.grow_done ], [ 0, %b.buf.len14 ]
  %app.str.len43 = load i64, ptr %2, align 8
  %app.str.len44 = and i64 %app.str.len43, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %app.str.data45 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 %app.str.len44)
  %sum49 = extractvalue { i64, i1 } %b.app.new.len48, 0
  %ovf50 = extractvalue { i64, i1 } %b.app.new.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %b.app.new.len51

b.app.new.len27:                                  ; preds = %choice.then17
  %b.need.grow = icmp slt i64 %addtmp, %sum25
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort28:                             ; preds = %choice.then17
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len27
  %b.cap2 = mul i64 %addtmp, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum25
  %b.new.cap = select i1 %b.cap.need, i64 %sum25, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum33 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf34 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf34, label %str_overflow_abort36, label %b.new.buf.len235

b.grow_done:                                      ; preds = %b.app.new.len27, %b.new.buf.len235
  %builder.new.salloc.sroa.36.1 = phi i64 [ %b.new.cap, %b.new.buf.len235 ], [ %addtmp, %b.app.new.len27 ]
  %builder.new.salloc.sroa.18.1 = phi ptr [ %b.new.buf2, %b.new.buf.len235 ], [ %b.buf, %b.app.new.len27 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %builder.new.salloc.sroa.18.1, ptr align 1 %s.read.data22, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.18.1, i64 %sum25
  store i8 0, ptr %b.app.nul, align 1
  br label %choice.exit18

b.new.buf.len235:                                 ; preds = %b.grow2
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 %sum33)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.buf, i64 0, i1 false)
  store i8 0, ptr %b.new.buf2, align 1
  br label %b.grow_done

str_overflow_abort36:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len51:                                  ; preds = %choice.exit18
  %b.need.grow56 = icmp slt i64 %builder.new.salloc.sroa.36.0, %sum49
  br i1 %b.need.grow56, label %b.grow257, label %b.grow_done59

str_overflow_abort52:                             ; preds = %choice.exit18
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow257:                                        ; preds = %b.app.new.len51
  %b.cap260 = mul i64 %builder.new.salloc.sroa.36.0, 2
  %b.cap.small61 = icmp slt i64 %b.cap260, 16
  %b.cap.grow62 = select i1 %b.cap.small61, i64 16, i64 %b.cap260
  %b.cap.need63 = icmp slt i64 %b.cap.grow62, %sum49
  %b.new.cap64 = select i1 %b.cap.need63, i64 %sum49, i64 %b.cap.grow62
  %b.new.buf.len269 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap64, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.new.buf.len269, 0
  %ovf71 = extractvalue { i64, i1 } %b.new.buf.len269, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.new.buf.len272

b.grow_done59:                                    ; preds = %b.app.new.len51, %b.new.buf.len272
  %builder.new.salloc.sroa.36.2 = phi i64 [ %b.new.cap64, %b.new.buf.len272 ], [ %builder.new.salloc.sroa.36.0, %b.app.new.len51 ]
  %builder.new.salloc.sroa.18.2 = phi ptr [ %b.new.buf276, %b.new.buf.len272 ], [ %builder.new.salloc.sroa.18.0, %b.app.new.len51 ]
  %b.app.dst82 = getelementptr i8, ptr %builder.new.salloc.sroa.18.2, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst82, ptr align 1 %app.str.data45, i64 %app.str.len44, i1 false)
  %b.app.nul83 = getelementptr i8, ptr %builder.new.salloc.sroa.18.2, i64 %sum49
  store i8 0, ptr %b.app.nul83, align 1
  %addtmp87 = add i64 %ram.pay, %str.len.query2
  br label %loop.header.108

b.new.buf.len272:                                 ; preds = %b.grow257
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf276 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf276, ptr align 1 %builder.new.salloc.sroa.18.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul77 = getelementptr i8, ptr %b.new.buf276, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul77, align 1
  br label %b.grow_done59

str_overflow_abort73:                             ; preds = %b.grow257
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.108:                                  ; preds = %b.grow_done194, %b.grow_done59
  %builder.new.salloc.sroa.36.3 = phi i64 [ %builder.new.salloc.sroa.36.2, %b.grow_done59 ], [ %builder.new.salloc.sroa.36.6, %b.grow_done194 ]
  %builder.new.salloc.sroa.18.3 = phi ptr [ %builder.new.salloc.sroa.18.2, %b.grow_done59 ], [ %builder.new.salloc.sroa.18.7, %b.grow_done194 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum49, %b.grow_done59 ], [ %sum184, %b.grow_done194 ]
  %"var.pos'.0" = phi i64 [ %addtmp87, %b.grow_done59 ], [ %addtmp222, %b.grow_done194 ]
  %loop.idx.108.0 = phi i64 [ 0, %b.grow_done59 ], [ %loop.next, %b.grow_done194 ]
  %cmptmp91 = icmp sge i64 %"var.pos'.0", %str.len.query8
  br i1 %cmptmp91, label %loop.exit.108, label %choice.exit93

loop.exit.108:                                    ; preds = %loop.header.108, %b.grow_done263
  %builder.new.salloc.sroa.18.4 = phi ptr [ %builder.new.salloc.sroa.18.8, %b.grow_done263 ], [ %builder.new.salloc.sroa.18.3, %loop.header.108 ]
  %builder.new.salloc.sroa.0.2 = phi i64 [ %sum253, %b.grow_done263 ], [ %builder.new.salloc.sroa.0.1, %loop.header.108 ]
  store i64 %builder.new.salloc.sroa.0.2, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %builder.new.salloc.sroa.18.4, ptr %str.build.data.gep, align 8
  br label %choice.exit12

choice.exit93:                                    ; preds = %loop.header.108
  %call.res97 = call { i1, i64 } @"str::find_from"(ptr %0, ptr %1, i64 %"var.pos'.0")
  %ram.tag98 = extractvalue { i1, i64 } %call.res97, 0
  br i1 %ram.tag98, label %choice.then99, label %choice.else100

choice.then99:                                    ; preds = %choice.exit93
  %ram.pay102 = extractvalue { i1, i64 } %call.res97, 1
  %cmptmp106 = icmp sgt i64 %ram.pay102, %"var.pos'.0"
  br i1 %cmptmp106, label %choice.then107, label %choice.exit108

choice.else100:                                   ; preds = %choice.exit93
  %s.read.len226 = load i64, ptr %0, align 8
  %s.read.len227 = and i64 %s.read.len226, 281474976710655
  %s.read.data228 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data229 = load ptr, ptr %s.read.data228, align 8
  %start.is_neg232 = icmp slt i64 %"var.pos'.0", 0
  %rel.start233 = add i64 %s.read.len227, %"var.pos'.0"
  %norm.start234 = select i1 %start.is_neg232, i64 %rel.start233, i64 %"var.pos'.0"
  %start.lt.0235 = icmp slt i64 %norm.start234, 0
  %c.start.0236 = select i1 %start.lt.0235, i64 0, i64 %norm.start234
  %start.gt.len237 = icmp sgt i64 %c.start.0236, %s.read.len227
  %final.start238 = select i1 %start.gt.len237, i64 %s.read.len227, i64 %c.start.0236
  %rel.end240 = add i64 %s.read.len227, %str.len.query8
  %end.gt.len244 = icmp sgt i64 %str.len.query8, %s.read.len227
  %final.end245 = select i1 %end.gt.len244, i64 %s.read.len227, i64 %str.len.query8
  %view.empty246 = icmp sle i64 %final.end245, %final.start238
  %view.len.sub247 = sub i64 %final.end245, %final.start238
  %view.len248 = select i1 %view.empty246, i64 0, i64 %view.len.sub247
  %view.data249 = getelementptr i8, ptr %s.read.data229, i64 %final.start238
  %b.app.new.len252 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.1, i64 %view.len248)
  %sum253 = extractvalue { i64, i1 } %b.app.new.len252, 0
  %ovf254 = extractvalue { i64, i1 } %b.app.new.len252, 1
  br i1 %ovf254, label %str_overflow_abort256, label %b.app.new.len255

choice.then107:                                   ; preds = %choice.then99
  %s.read.len112 = load i64, ptr %0, align 8
  %s.read.len113 = and i64 %s.read.len112, 281474976710655
  %s.read.data114 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data115 = load ptr, ptr %s.read.data114, align 8
  %start.is_neg = icmp slt i64 %"var.pos'.0", 0
  %rel.start118 = add i64 %s.read.len113, %"var.pos'.0"
  %norm.start119 = select i1 %start.is_neg, i64 %rel.start118, i64 %"var.pos'.0"
  %start.lt.0120 = icmp slt i64 %norm.start119, 0
  %c.start.0121 = select i1 %start.lt.0120, i64 0, i64 %norm.start119
  %start.gt.len122 = icmp sgt i64 %c.start.0121, %s.read.len113
  %final.start123 = select i1 %start.gt.len122, i64 %s.read.len113, i64 %c.start.0121
  %end.is_neg124 = icmp slt i64 %ram.pay102, 0
  %rel.end125 = add i64 %s.read.len113, %ram.pay102
  %norm.end126 = select i1 %end.is_neg124, i64 %rel.end125, i64 %ram.pay102
  %end.lt.0127 = icmp slt i64 %norm.end126, 0
  %c.end.0128 = select i1 %end.lt.0127, i64 0, i64 %norm.end126
  %end.gt.len129 = icmp sgt i64 %c.end.0128, %s.read.len113
  %final.end130 = select i1 %end.gt.len129, i64 %s.read.len113, i64 %c.end.0128
  %view.empty131 = icmp sle i64 %final.end130, %final.start123
  %view.len.sub132 = sub i64 %final.end130, %final.start123
  %view.len133 = select i1 %view.empty131, i64 0, i64 %view.len.sub132
  %view.data134 = getelementptr i8, ptr %s.read.data115, i64 %final.start123
  %b.app.new.len137 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.1, i64 %view.len133)
  %sum138 = extractvalue { i64, i1 } %b.app.new.len137, 0
  %ovf139 = extractvalue { i64, i1 } %b.app.new.len137, 1
  br i1 %ovf139, label %str_overflow_abort141, label %b.app.new.len140

choice.exit108:                                   ; preds = %b.grow_done148, %choice.then99
  %builder.new.salloc.sroa.36.4 = phi i64 [ %builder.new.salloc.sroa.36.5, %b.grow_done148 ], [ %builder.new.salloc.sroa.36.3, %choice.then99 ]
  %builder.new.salloc.sroa.18.5 = phi ptr [ %builder.new.salloc.sroa.18.6, %b.grow_done148 ], [ %builder.new.salloc.sroa.18.3, %choice.then99 ]
  %builder.new.salloc.sroa.0.3 = phi i64 [ %sum138, %b.grow_done148 ], [ %builder.new.salloc.sroa.0.1, %choice.then99 ]
  %app.str.len177 = load i64, ptr %2, align 8
  %app.str.len178 = and i64 %app.str.len177, 281474976710655
  %app.str.data180 = load ptr, ptr %app.str.data, align 8
  %b.app.new.len183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.3, i64 %app.str.len178)
  %sum184 = extractvalue { i64, i1 } %b.app.new.len183, 0
  %ovf185 = extractvalue { i64, i1 } %b.app.new.len183, 1
  br i1 %ovf185, label %str_overflow_abort187, label %b.app.new.len186

b.app.new.len140:                                 ; preds = %choice.then107
  %b.need.grow145 = icmp slt i64 %builder.new.salloc.sroa.36.3, %sum138
  br i1 %b.need.grow145, label %b.grow2146, label %b.grow_done148

str_overflow_abort141:                            ; preds = %choice.then107
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2146:                                       ; preds = %b.app.new.len140
  %b.cap2149 = mul i64 %builder.new.salloc.sroa.36.3, 2
  %b.cap.small150 = icmp slt i64 %b.cap2149, 16
  %b.cap.grow151 = select i1 %b.cap.small150, i64 16, i64 %b.cap2149
  %b.cap.need152 = icmp slt i64 %b.cap.grow151, %sum138
  %b.new.cap153 = select i1 %b.cap.need152, i64 %sum138, i64 %b.cap.grow151
  %b.new.buf.len2158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap153, i64 1)
  %sum159 = extractvalue { i64, i1 } %b.new.buf.len2158, 0
  %ovf160 = extractvalue { i64, i1 } %b.new.buf.len2158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %b.new.buf.len2161

b.grow_done148:                                   ; preds = %b.app.new.len140, %b.new.buf.len2161
  %builder.new.salloc.sroa.36.5 = phi i64 [ %b.new.cap153, %b.new.buf.len2161 ], [ %builder.new.salloc.sroa.36.3, %b.app.new.len140 ]
  %builder.new.salloc.sroa.18.6 = phi ptr [ %b.new.buf2165, %b.new.buf.len2161 ], [ %builder.new.salloc.sroa.18.3, %b.app.new.len140 ]
  %b.app.dst171 = getelementptr i8, ptr %builder.new.salloc.sroa.18.6, i64 %builder.new.salloc.sroa.0.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst171, ptr align 1 %view.data134, i64 %view.len133, i1 false)
  %b.app.nul172 = getelementptr i8, ptr %builder.new.salloc.sroa.18.6, i64 %sum138
  store i8 0, ptr %b.app.nul172, align 1
  br label %choice.exit108

b.new.buf.len2161:                                ; preds = %b.grow2146
  %arena.cur164 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 %sum159)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2165, ptr align 1 %builder.new.salloc.sroa.18.3, i64 %builder.new.salloc.sroa.0.1, i1 false)
  %b.grow2.nul166 = getelementptr i8, ptr %b.new.buf2165, i64 %builder.new.salloc.sroa.0.1
  store i8 0, ptr %b.grow2.nul166, align 1
  br label %b.grow_done148

str_overflow_abort162:                            ; preds = %b.grow2146
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len186:                                 ; preds = %choice.exit108
  %b.need.grow191 = icmp slt i64 %builder.new.salloc.sroa.36.4, %sum184
  br i1 %b.need.grow191, label %b.grow2192, label %b.grow_done194

str_overflow_abort187:                            ; preds = %choice.exit108
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2192:                                       ; preds = %b.app.new.len186
  %b.cap2195 = mul i64 %builder.new.salloc.sroa.36.4, 2
  %b.cap.small196 = icmp slt i64 %b.cap2195, 16
  %b.cap.grow197 = select i1 %b.cap.small196, i64 16, i64 %b.cap2195
  %b.cap.need198 = icmp slt i64 %b.cap.grow197, %sum184
  %b.new.cap199 = select i1 %b.cap.need198, i64 %sum184, i64 %b.cap.grow197
  %b.new.buf.len2204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap199, i64 1)
  %sum205 = extractvalue { i64, i1 } %b.new.buf.len2204, 0
  %ovf206 = extractvalue { i64, i1 } %b.new.buf.len2204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %b.new.buf.len2207

b.grow_done194:                                   ; preds = %b.app.new.len186, %b.new.buf.len2207
  %builder.new.salloc.sroa.36.6 = phi i64 [ %b.new.cap199, %b.new.buf.len2207 ], [ %builder.new.salloc.sroa.36.4, %b.app.new.len186 ]
  %builder.new.salloc.sroa.18.7 = phi ptr [ %b.new.buf2211, %b.new.buf.len2207 ], [ %builder.new.salloc.sroa.18.5, %b.app.new.len186 ]
  %b.app.dst217 = getelementptr i8, ptr %builder.new.salloc.sroa.18.7, i64 %builder.new.salloc.sroa.0.3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst217, ptr align 1 %app.str.data180, i64 %app.str.len178, i1 false)
  %b.app.nul218 = getelementptr i8, ptr %builder.new.salloc.sroa.18.7, i64 %sum184
  store i8 0, ptr %b.app.nul218, align 1
  %addtmp222 = add i64 %ram.pay102, %str.len.query2
  %loop.next = add i64 %loop.idx.108.0, 1
  br label %loop.header.108

b.new.buf.len2207:                                ; preds = %b.grow2192
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 %sum205)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2211, ptr align 1 %builder.new.salloc.sroa.18.5, i64 %builder.new.salloc.sroa.0.3, i1 false)
  %b.grow2.nul212 = getelementptr i8, ptr %b.new.buf2211, i64 %builder.new.salloc.sroa.0.3
  store i8 0, ptr %b.grow2.nul212, align 1
  br label %b.grow_done194

str_overflow_abort208:                            ; preds = %b.grow2192
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len255:                                 ; preds = %choice.else100
  %b.need.grow260 = icmp slt i64 %builder.new.salloc.sroa.36.3, %sum253
  br i1 %b.need.grow260, label %b.grow2261, label %b.grow_done263

str_overflow_abort256:                            ; preds = %choice.else100
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2261:                                       ; preds = %b.app.new.len255
  %b.cap2264 = mul i64 %builder.new.salloc.sroa.36.3, 2
  %b.cap.small265 = icmp slt i64 %b.cap2264, 16
  %b.cap.grow266 = select i1 %b.cap.small265, i64 16, i64 %b.cap2264
  %b.cap.need267 = icmp slt i64 %b.cap.grow266, %sum253
  %b.new.cap268 = select i1 %b.cap.need267, i64 %sum253, i64 %b.cap.grow266
  %b.new.buf.len2273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap268, i64 1)
  %sum274 = extractvalue { i64, i1 } %b.new.buf.len2273, 0
  %ovf275 = extractvalue { i64, i1 } %b.new.buf.len2273, 1
  br i1 %ovf275, label %str_overflow_abort277, label %b.new.buf.len2276

b.grow_done263:                                   ; preds = %b.app.new.len255, %b.new.buf.len2276
  %builder.new.salloc.sroa.18.8 = phi ptr [ %b.new.buf2280, %b.new.buf.len2276 ], [ %builder.new.salloc.sroa.18.3, %b.app.new.len255 ]
  %b.app.dst286 = getelementptr i8, ptr %builder.new.salloc.sroa.18.8, i64 %builder.new.salloc.sroa.0.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst286, ptr align 1 %view.data249, i64 %view.len248, i1 false)
  %b.app.nul287 = getelementptr i8, ptr %builder.new.salloc.sroa.18.8, i64 %sum253
  store i8 0, ptr %b.app.nul287, align 1
  br label %loop.exit.108

b.new.buf.len2276:                                ; preds = %b.grow2261
  %arena.cur279 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 %sum274)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2280, ptr align 1 %builder.new.salloc.sroa.18.3, i64 %builder.new.salloc.sroa.0.1, i1 false)
  %b.grow2.nul281 = getelementptr i8, ptr %b.new.buf2280, i64 %builder.new.salloc.sroa.0.1
  store i8 0, ptr %b.grow2.nul281, align 1
  br label %b.grow_done263

str_overflow_abort277:                            ; preds = %b.grow2261
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define { i1, i64 } @"str::parse_int"(ptr %0) #3 {
entry:
  %call.res = call { i64, ptr } @"str::trim"(ptr %0)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %str.len.query3 = and i64 %call.res.fca.0.extract, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query3, 0
  br i1 %cmptmp, label %common.ret, label %idx_ok

common.ret:                                       ; preds = %idx_ok185, %choice.exit231, %choice.then213, %choice.else173, %loop.exit.114, %choice.exit161, %choice.then147, %choice.then115, %or.109.exit, %entry
  %common.ret.op = phi { i1, i64 } [ zeroinitializer, %entry ], [ zeroinitializer, %or.109.exit ], [ zeroinitializer, %choice.then115 ], [ %ram.pay, %choice.exit161 ], [ zeroinitializer, %choice.then147 ], [ %ram.pay209, %loop.exit.114 ], [ zeroinitializer, %idx_ok185 ], [ zeroinitializer, %choice.else173 ], [ %ram.pay240, %choice.exit231 ], [ zeroinitializer, %choice.then213 ]
  ret { i1, i64 } %common.ret.op

idx_ok:                                           ; preds = %entry
  %s.byte = load i8, ptr %call.res.fca.1.extract, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp eq i64 %s.byte.val, 45
  br i1 %cmptmp9, label %or.109.exit, label %idx_ok18

or.109.exit:                                      ; preds = %idx_ok, %idx_ok18
  %or.109.phi = phi i1 [ %cmptmp24, %idx_ok18 ], [ true, %idx_ok ]
  %. = select i1 %or.109.phi, i64 1, i64 0
  %cmptmp30 = icmp sge i64 %., %str.len.query3
  br i1 %cmptmp30, label %common.ret, label %choice.exit32

idx_ok18:                                         ; preds = %idx_ok
  %s.byte22 = load i8, ptr %call.res.fca.1.extract, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 43
  br label %or.109.exit

choice.exit32:                                    ; preds = %or.109.exit
  %rel.start = add i64 %str.len.query3, %.
  %start.gt.len = icmp sgt i64 %., %str.len.query3
  %final.start = select i1 %start.gt.len, i64 %str.len.query3, i64 %.
  %rel.end = add i64 %str.len.query3, %str.len.query3
  %view.empty = icmp sle i64 %str.len.query3, %final.start
  %view.len.sub = sub i64 %str.len.query3, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %call.res.fca.1.extract, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %str.len.query44 = load i64, ptr %str.view, align 8
  %str.len.query45 = and i64 %str.len.query44, 281474976710655
  %cmptmp47 = icmp sgt i64 %str.len.query45, 2
  br i1 %cmptmp47, label %idx_ok55, label %and.110.exit

and.110.exit:                                     ; preds = %choice.exit32, %idx_ok55
  %and.110.phi = phi i1 [ %cmptmp61, %idx_ok55 ], [ false, %choice.exit32 ]
  br i1 %and.110.phi, label %and.111.then, label %and.111.exit

idx_ok55:                                         ; preds = %choice.exit32
  %s.byte59 = load i8, ptr %view.data, align 1
  %s.byte.val60 = zext i8 %s.byte59 to i64
  %cmptmp61 = icmp eq i64 %s.byte.val60, 48
  br label %and.110.exit

and.111.then:                                     ; preds = %and.110.exit
  %s.read.len64 = load i64, ptr %str.view, align 8
  %s.read.len65 = and i64 %s.read.len64, 281474976710655
  %s.read.data67 = load ptr, ptr %str.build.data.gep, align 8
  %idx.oob68 = icmp uge i64 1, %s.read.len65
  br i1 %idx.oob68, label %idx_oob70, label %idx_ok69

and.111.exit:                                     ; preds = %idx_ok69, %and.110.exit
  %and.111.phi = phi i1 [ %and.110.phi, %and.110.exit ], [ %2, %idx_ok69 ]
  br i1 %cmptmp47, label %and.112.then, label %and.112.exit

idx_ok69:                                         ; preds = %and.111.then
  %s.byte.gep72 = getelementptr i8, ptr %s.read.data67, i64 1
  %s.byte73 = load i8, ptr %s.byte.gep72, align 1
  %s.byte.val74 = zext i8 %s.byte73 to i64
  %1 = sub i64 %s.byte.val74, 88
  %switch.and = and i64 %1, -33
  %switch.selectcmp = icmp eq i64 %switch.and, 0
  %2 = select i1 %switch.selectcmp, i1 true, i1 false
  br label %and.111.exit

idx_oob70:                                        ; preds = %and.111.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.112.then:                                     ; preds = %and.111.exit
  %s.read.len82 = load i64, ptr %str.view, align 8
  %s.read.len83 = and i64 %s.read.len82, 281474976710655
  %s.read.data85 = load ptr, ptr %str.build.data.gep, align 8
  %idx.oob86 = icmp uge i64 0, %s.read.len83
  br i1 %idx.oob86, label %idx_oob88, label %idx_ok87

and.112.exit:                                     ; preds = %and.111.exit, %idx_ok87
  %and.112.phi = phi i1 [ %cmptmp93, %idx_ok87 ], [ false, %and.111.exit ]
  br i1 %and.112.phi, label %and.113.then, label %and.113.exit

idx_ok87:                                         ; preds = %and.112.then
  %s.byte91 = load i8, ptr %s.read.data85, align 1
  %s.byte.val92 = zext i8 %s.byte91 to i64
  %cmptmp93 = icmp eq i64 %s.byte.val92, 48
  br label %and.112.exit

idx_oob88:                                        ; preds = %and.112.then
  call void @dva_abort_str_oob_msg()
  unreachable

and.113.then:                                     ; preds = %and.112.exit
  %s.read.len96 = load i64, ptr %str.view, align 8
  %s.read.len97 = and i64 %s.read.len96, 281474976710655
  %s.read.data99 = load ptr, ptr %str.build.data.gep, align 8
  %idx.oob100 = icmp uge i64 1, %s.read.len97
  br i1 %idx.oob100, label %idx_oob102, label %idx_ok101

and.113.exit:                                     ; preds = %idx_ok101, %and.112.exit
  %and.113.phi = phi i1 [ %and.112.phi, %and.112.exit ], [ %4, %idx_ok101 ]
  br i1 %and.111.phi, label %choice.then115, label %choice.else116

idx_ok101:                                        ; preds = %and.113.then
  %s.byte.gep104 = getelementptr i8, ptr %s.read.data99, i64 1
  %s.byte105 = load i8, ptr %s.byte.gep104, align 1
  %s.byte.val106 = zext i8 %s.byte105 to i64
  %3 = sub i64 %s.byte.val106, 66
  %switch.and258 = and i64 %3, -33
  %switch.selectcmp259 = icmp eq i64 %switch.and258, 0
  %4 = select i1 %switch.selectcmp259, i1 true, i1 false
  br label %and.113.exit

idx_oob102:                                       ; preds = %and.113.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then115:                                   ; preds = %and.113.exit
  %s.read.len120 = load i64, ptr %str.view, align 8
  %s.read.len121 = and i64 %s.read.len120, 281474976710655
  %s.read.data123 = load ptr, ptr %str.build.data.gep, align 8
  %rel.start125 = add i64 %s.read.len121, 2
  %start.gt.len129 = icmp sgt i64 2, %s.read.len121
  %final.start130 = select i1 %start.gt.len129, i64 %s.read.len121, i64 2
  %rel.end132 = add i64 %s.read.len121, %str.len.query45
  %end.gt.len136 = icmp sgt i64 %str.len.query45, %s.read.len121
  %final.end137 = select i1 %end.gt.len136, i64 %s.read.len121, i64 %str.len.query45
  %view.empty138 = icmp sle i64 %final.end137, %final.start130
  %view.len.sub139 = sub i64 %final.end137, %final.start130
  %view.len140 = select i1 %view.empty138, i64 0, i64 %view.len.sub139
  %view.data141 = getelementptr i8, ptr %s.read.data123, i64 %final.start130
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 16)
  store i64 %view.len140, ptr %str.view143, align 8
  %str.build.data.gep145 = getelementptr inbounds { i64, ptr }, ptr %str.view143, i32 0, i32 1
  store ptr %view.data141, ptr %str.build.data.gep145, align 8
  %call.res146 = call ptr @"str::to_hex"(ptr %str.view143)
  %niche.ne.null = icmp ne ptr %call.res146, null
  br i1 %niche.ne.null, label %choice.then147, label %common.ret

choice.else116:                                   ; preds = %and.113.exit
  br i1 %and.113.phi, label %loop.header.114, label %choice.else173

choice.then147:                                   ; preds = %choice.then115
  %fld.gep = getelementptr inbounds { i64, ptr }, ptr %call.res146, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query152 = load i64, ptr %fld.load, align 8
  %str.len.query153 = and i64 %str.len.query152, 281474976710655
  %cmptmp154 = icmp eq i64 %str.len.query153, 0
  br i1 %cmptmp154, label %choice.then155, label %common.ret

choice.then155:                                   ; preds = %choice.then147
  br i1 %cmptmp9, label %choice.then159, label %choice.else160

choice.then159:                                   ; preds = %choice.then155
  %fld.load164 = load i64, ptr %call.res146, align 8
  %negtmp = sub i64 0, %fld.load164
  br label %choice.exit161

choice.else160:                                   ; preds = %choice.then155
  %fld.load167 = load i64, ptr %call.res146, align 8
  br label %choice.exit161

choice.exit161:                                   ; preds = %choice.else160, %choice.then159
  %choice.res168 = phi i64 [ %negtmp, %choice.then159 ], [ %fld.load167, %choice.else160 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res168, 1
  br label %common.ret

choice.else173:                                   ; preds = %choice.else116
  %call.res211 = call ptr @"str::to_int"(ptr %str.view)
  %niche.ne.null212 = icmp ne ptr %call.res211, null
  br i1 %niche.ne.null212, label %choice.then213, label %common.ret

loop.header.114:                                  ; preds = %choice.else116, %choice.then195
  %"var.val'.0" = phi i64 [ %addtmp, %choice.then195 ], [ 0, %choice.else116 ]
  %loop.idx.114.0 = phi i64 [ %loop.next, %choice.then195 ], [ 2, %choice.else116 ]
  %loop.cond = icmp slt i64 %loop.idx.114.0, %str.len.query45
  br i1 %loop.cond, label %loop.body.114, label %loop.exit.114

loop.body.114:                                    ; preds = %loop.header.114
  %s.read.len179 = load i64, ptr %str.view, align 8
  %s.read.len180 = and i64 %s.read.len179, 281474976710655
  %s.read.data182 = load ptr, ptr %str.build.data.gep, align 8
  %idx.oob184 = icmp uge i64 %loop.idx.114.0, %s.read.len180
  br i1 %idx.oob184, label %idx_oob186, label %idx_ok185

loop.exit.114:                                    ; preds = %loop.header.114
  %negtmp206 = sub i64 0, %"var.val'.0"
  %choice.res208 = select i1 %cmptmp9, i64 %negtmp206, i64 %"var.val'.0"
  %ram.pay209 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res208, 1
  br label %common.ret

idx_ok185:                                        ; preds = %loop.body.114
  %s.byte.gep188 = getelementptr i8, ptr %s.read.data182, i64 %loop.idx.114.0
  %s.byte189 = load i8, ptr %s.byte.gep188, align 1
  %s.byte.val190 = zext i8 %s.byte189 to i64
  switch i64 %s.byte.val190, label %common.ret [
    i64 49, label %choice.then195
    i64 48, label %choice.then195
  ]

idx_oob186:                                       ; preds = %loop.body.114
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then195:                                   ; preds = %idx_ok185, %idx_ok185
  %multmp = mul i64 %"var.val'.0", 2
  %subtmp = sub i64 %s.byte.val190, 48
  %addtmp = add i64 %multmp, %subtmp
  %loop.next = add i64 %loop.idx.114.0, 1
  br label %loop.header.114

choice.then213:                                   ; preds = %choice.else173
  %fld.gep219 = getelementptr inbounds { i64, ptr }, ptr %call.res211, i32 0, i32 1
  %fld.load220 = load ptr, ptr %fld.gep219, align 8
  %str.len.query222 = load i64, ptr %fld.load220, align 8
  %str.len.query223 = and i64 %str.len.query222, 281474976710655
  %cmptmp224 = icmp eq i64 %str.len.query223, 0
  br i1 %cmptmp224, label %choice.then225, label %common.ret

choice.then225:                                   ; preds = %choice.then213
  br i1 %cmptmp9, label %choice.then229, label %choice.else230

choice.then229:                                   ; preds = %choice.then225
  %fld.load234 = load i64, ptr %call.res211, align 8
  %negtmp235 = sub i64 0, %fld.load234
  br label %choice.exit231

choice.else230:                                   ; preds = %choice.then225
  %fld.load238 = load i64, ptr %call.res211, align 8
  br label %choice.exit231

choice.exit231:                                   ; preds = %choice.else230, %choice.then229
  %choice.res239 = phi i64 [ %negtmp235, %choice.then229 ], [ %fld.load238, %choice.else230 ]
  %ram.pay240 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res239, 1
  br label %common.ret
}

define { i1, i64 } @"str::parse_float"(ptr %0) #3 {
entry:
  %call.res = call { i64, ptr } @"str::trim"(ptr %0)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  %str.len.query3 = and i64 %call.res.fca.0.extract, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query3, 0
  br i1 %cmptmp, label %common.ret, label %idx_ok

common.ret:                                       ; preds = %choice.else292, %choice.exit174, %choice.else247, %or.124.exit, %choice.then173, %choice.exit90, %or.117.exit, %entry
  %common.ret.op = phi { i1, i64 } [ zeroinitializer, %entry ], [ zeroinitializer, %or.117.exit ], [ zeroinitializer, %choice.exit90 ], [ zeroinitializer, %choice.then173 ], [ zeroinitializer, %or.124.exit ], [ zeroinitializer, %choice.else247 ], [ %ram.pay, %choice.else292 ], [ zeroinitializer, %choice.exit174 ]
  ret { i1, i64 } %common.ret.op

idx_ok:                                           ; preds = %entry
  %s.byte = load i8, ptr %call.res.fca.1.extract, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp eq i64 %s.byte.val, 45
  br i1 %cmptmp9, label %or.117.exit, label %idx_ok18

or.117.exit:                                      ; preds = %idx_ok, %idx_ok18
  %or.117.phi = phi i1 [ %cmptmp24, %idx_ok18 ], [ true, %idx_ok ]
  %spec.select = select i1 %or.117.phi, i64 1, i64 0
  %cmptmp29 = icmp sge i64 %spec.select, %str.len.query3
  br i1 %cmptmp29, label %common.ret, label %loop.header.118

idx_ok18:                                         ; preds = %idx_ok
  %s.byte22 = load i8, ptr %call.res.fca.1.extract, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 43
  br label %or.117.exit

loop.header.118:                                  ; preds = %or.117.exit, %idx_ok62
  %loop.idx.118.0 = phi i64 [ %loop.next, %idx_ok62 ], [ 0, %or.117.exit ]
  %"var.digits'.0" = phi i64 [ %addtmp, %idx_ok62 ], [ 0, %or.117.exit ]
  %"var.int_val'.0" = phi double [ %faddtmp, %idx_ok62 ], [ 0.000000e+00, %or.117.exit ]
  %"var.i'.1" = phi i64 [ %addtmp70, %idx_ok62 ], [ %spec.select, %or.117.exit ]
  %cmptmp35 = icmp slt i64 %"var.i'.1", %str.len.query3
  br i1 %cmptmp35, label %and.119.then, label %choice.exit90

and.119.then:                                     ; preds = %loop.header.118
  %idx.oob43 = icmp uge i64 %"var.i'.1", %str.len.query3
  br i1 %idx.oob43, label %idx_oob45, label %idx_ok44

idx_ok44:                                         ; preds = %and.119.then
  %s.byte.gep47 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.i'.1"
  %s.byte48 = load i8, ptr %s.byte.gep47, align 1
  %s.byte.val49 = zext i8 %s.byte48 to i64
  %call.res50 = call i1 @"str::is_digit"(i64 %s.byte.val49)
  br i1 %call.res50, label %choice.then51, label %choice.else

idx_oob45:                                        ; preds = %and.119.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then51:                                    ; preds = %idx_ok44
  %fmultmp = fmul double %"var.int_val'.0", 1.000000e+01
  %idx.oob61 = icmp uge i64 %"var.i'.1", %str.len.query3
  br i1 %idx.oob61, label %idx_oob63, label %idx_ok62

choice.else:                                      ; preds = %idx_ok44
  br i1 %cmptmp35, label %and.120.then, label %choice.exit90

idx_ok62:                                         ; preds = %choice.then51
  %s.byte.gep65 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.i'.1"
  %s.byte66 = load i8, ptr %s.byte.gep65, align 1
  %s.byte.val67 = zext i8 %s.byte66 to i64
  %subtmp = sub i64 %s.byte.val67, 48
  %cast.sitofp = sitofp i64 %subtmp to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  %addtmp = add i64 %"var.digits'.0", 1
  %addtmp70 = add i64 %"var.i'.1", 1
  %loop.next = add i64 %loop.idx.118.0, 1
  br label %loop.header.118

idx_oob63:                                        ; preds = %choice.then51
  call void @dva_abort_str_oob_msg()
  unreachable

and.120.then:                                     ; preds = %choice.else
  %idx.oob81 = icmp uge i64 %"var.i'.1", %str.len.query3
  br i1 %idx.oob81, label %idx_oob83, label %idx_ok82

idx_ok82:                                         ; preds = %and.120.then
  %s.byte.gep85 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.i'.1"
  %s.byte86 = load i8, ptr %s.byte.gep85, align 1
  %s.byte.val87 = zext i8 %s.byte86 to i64
  %cmptmp88 = icmp eq i64 %s.byte.val87, 46
  br i1 %cmptmp88, label %choice.then89, label %choice.exit90

idx_oob83:                                        ; preds = %and.120.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then89:                                    ; preds = %idx_ok82
  %addtmp92 = add i64 %"var.i'.1", 1
  br label %loop.header.121

choice.exit90:                                    ; preds = %idx_ok108, %loop.header.121, %loop.header.118, %choice.else, %idx_ok82
  %"var.frac_val'.0" = phi double [ 0.000000e+00, %idx_ok82 ], [ 0.000000e+00, %choice.else ], [ 0.000000e+00, %loop.header.118 ], [ %"var.frac_val'.1", %loop.header.121 ], [ %"var.frac_val'.1", %idx_ok108 ]
  %"var.frac_scale'.0" = phi double [ 1.000000e+00, %idx_ok82 ], [ 1.000000e+00, %choice.else ], [ 1.000000e+00, %loop.header.118 ], [ %"var.frac_scale'.1", %loop.header.121 ], [ %"var.frac_scale'.1", %idx_ok108 ]
  %"var.digits'.1" = phi i64 [ %"var.digits'.0", %idx_ok82 ], [ %"var.digits'.0", %choice.else ], [ %"var.digits'.0", %loop.header.118 ], [ %"var.digits'.2", %loop.header.121 ], [ %"var.digits'.2", %idx_ok108 ]
  %"var.i'.2" = phi i64 [ %"var.i'.1", %idx_ok82 ], [ %"var.i'.1", %choice.else ], [ %"var.i'.1", %loop.header.118 ], [ %"var.i'.3", %loop.header.121 ], [ %"var.i'.3", %idx_ok108 ]
  %cmptmp146 = icmp eq i64 %"var.digits'.1", 0
  br i1 %cmptmp146, label %common.ret, label %choice.exit148

loop.header.121:                                  ; preds = %idx_ok128, %choice.then89
  %"var.frac_val'.1" = phi double [ 0.000000e+00, %choice.then89 ], [ %faddtmp136, %idx_ok128 ]
  %"var.frac_scale'.1" = phi double [ 1.000000e+00, %choice.then89 ], [ %fmultmp138, %idx_ok128 ]
  %loop.idx.121.0 = phi i64 [ 0, %choice.then89 ], [ %loop.next144, %idx_ok128 ]
  %"var.digits'.2" = phi i64 [ %"var.digits'.0", %choice.then89 ], [ %addtmp140, %idx_ok128 ]
  %"var.i'.3" = phi i64 [ %addtmp92, %choice.then89 ], [ %addtmp142, %idx_ok128 ]
  %cmptmp99 = icmp slt i64 %"var.i'.3", %str.len.query3
  br i1 %cmptmp99, label %and.122.then, label %choice.exit90

and.122.then:                                     ; preds = %loop.header.121
  %idx.oob107 = icmp uge i64 %"var.i'.3", %str.len.query3
  br i1 %idx.oob107, label %idx_oob109, label %idx_ok108

idx_ok108:                                        ; preds = %and.122.then
  %s.byte.gep111 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.i'.3"
  %s.byte112 = load i8, ptr %s.byte.gep111, align 1
  %s.byte.val113 = zext i8 %s.byte112 to i64
  %call.res114 = call i1 @"str::is_digit"(i64 %s.byte.val113)
  br i1 %call.res114, label %choice.then115, label %choice.exit90

idx_oob109:                                       ; preds = %and.122.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then115:                                   ; preds = %idx_ok108
  %fmultmp119 = fmul double %"var.frac_val'.1", 1.000000e+01
  %idx.oob127 = icmp uge i64 %"var.i'.3", %str.len.query3
  br i1 %idx.oob127, label %idx_oob129, label %idx_ok128

idx_ok128:                                        ; preds = %choice.then115
  %s.byte.gep131 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.i'.3"
  %s.byte132 = load i8, ptr %s.byte.gep131, align 1
  %s.byte.val133 = zext i8 %s.byte132 to i64
  %subtmp134 = sub i64 %s.byte.val133, 48
  %cast.sitofp135 = sitofp i64 %subtmp134 to double
  %faddtmp136 = fadd double %fmultmp119, %cast.sitofp135
  %fmultmp138 = fmul double %"var.frac_scale'.1", 1.000000e+01
  %addtmp140 = add i64 %"var.digits'.2", 1
  %addtmp142 = add i64 %"var.i'.3", 1
  %loop.next144 = add i64 %loop.idx.121.0, 1
  br label %loop.header.121

idx_oob129:                                       ; preds = %choice.then115
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit148:                                   ; preds = %choice.exit90
  %fdivtmp = fdiv double %"var.frac_val'.0", %"var.frac_scale'.0"
  %faddtmp153 = fadd double %"var.int_val'.0", %fdivtmp
  %cmptmp156 = icmp slt i64 %"var.i'.2", %str.len.query3
  br i1 %cmptmp156, label %and.123.then, label %choice.exit174

and.123.then:                                     ; preds = %choice.exit148
  %idx.oob164 = icmp uge i64 %"var.i'.2", %str.len.query3
  br i1 %idx.oob164, label %idx_oob166, label %idx_ok165

idx_ok165:                                        ; preds = %and.123.then
  %s.byte.gep168 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.i'.2"
  %s.byte169 = load i8, ptr %s.byte.gep168, align 1
  %s.byte.val170 = zext i8 %s.byte169 to i64
  switch i64 %s.byte.val170, label %choice.exit174 [
    i64 101, label %choice.then173
    i64 69, label %choice.then173
  ]

idx_oob166:                                       ; preds = %and.123.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then173:                                   ; preds = %idx_ok165, %idx_ok165
  %addtmp176 = add i64 %"var.i'.2", 1
  %cmptmp179 = icmp sge i64 %addtmp176, %str.len.query3
  br i1 %cmptmp179, label %common.ret, label %choice.exit181

choice.exit174:                                   ; preds = %choice.exit148, %idx_ok165, %choice.exit275
  %"var.res'.0" = phi double [ %fmultmp287, %choice.exit275 ], [ %faddtmp153, %idx_ok165 ], [ %faddtmp153, %choice.exit148 ]
  %"var.i'.4" = phi i64 [ %"var.i'.6", %choice.exit275 ], [ %"var.i'.2", %idx_ok165 ], [ %"var.i'.2", %choice.exit148 ]
  %cmptmp290 = icmp ne i64 %"var.i'.4", %str.len.query3
  br i1 %cmptmp290, label %common.ret, label %choice.else292

choice.exit181:                                   ; preds = %choice.then173
  %idx.oob190 = icmp uge i64 %addtmp176, %str.len.query3
  br i1 %idx.oob190, label %idx_oob192, label %idx_ok191

idx_ok191:                                        ; preds = %choice.exit181
  %s.byte.gep194 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %addtmp176
  %s.byte195 = load i8, ptr %s.byte.gep194, align 1
  %s.byte.val196 = zext i8 %s.byte195 to i64
  %cmptmp197 = icmp eq i64 %s.byte.val196, 45
  br i1 %cmptmp197, label %or.124.exit, label %or.124.else

idx_oob192:                                       ; preds = %choice.exit181
  call void @dva_abort_str_oob_msg()
  unreachable

or.124.else:                                      ; preds = %idx_ok191
  br i1 %idx.oob190, label %idx_oob208, label %idx_ok207

or.124.exit:                                      ; preds = %idx_ok191, %idx_ok207
  %or.124.phi = phi i1 [ %cmptmp213, %idx_ok207 ], [ true, %idx_ok191 ]
  %addtmp217 = add i64 %addtmp176, 1
  %spec.select352 = select i1 %or.124.phi, i64 %addtmp217, i64 %addtmp176
  %cmptmp220 = icmp sge i64 %spec.select352, %str.len.query3
  br i1 %cmptmp220, label %common.ret, label %loop.header.125

idx_ok207:                                        ; preds = %or.124.else
  %s.byte211 = load i8, ptr %s.byte.gep194, align 1
  %s.byte.val212 = zext i8 %s.byte211 to i64
  %cmptmp213 = icmp eq i64 %s.byte.val212, 43
  br label %or.124.exit

idx_oob208:                                       ; preds = %or.124.else
  call void @dva_abort_str_oob_msg()
  unreachable

loop.header.125:                                  ; preds = %or.124.exit, %idx_ok258
  %"var.i'.6" = phi i64 [ %addtmp269, %idx_ok258 ], [ %spec.select352, %or.124.exit ]
  %"var.exp_val'.0" = phi i64 [ %addtmp265, %idx_ok258 ], [ 0, %or.124.exit ]
  %"var.exp_digits'.0" = phi i64 [ %addtmp267, %idx_ok258 ], [ 0, %or.124.exit ]
  %loop.idx.125.0 = phi i64 [ %loop.next271, %idx_ok258 ], [ 0, %or.124.exit ]
  %cmptmp230 = icmp slt i64 %"var.i'.6", %str.len.query3
  br i1 %cmptmp230, label %and.126.then, label %choice.else247

and.126.then:                                     ; preds = %loop.header.125
  %idx.oob238 = icmp uge i64 %"var.i'.6", %str.len.query3
  br i1 %idx.oob238, label %idx_oob240, label %idx_ok239

idx_ok239:                                        ; preds = %and.126.then
  %s.byte.gep242 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.i'.6"
  %s.byte243 = load i8, ptr %s.byte.gep242, align 1
  %s.byte.val244 = zext i8 %s.byte243 to i64
  %call.res245 = call i1 @"str::is_digit"(i64 %s.byte.val244)
  br i1 %call.res245, label %choice.then246, label %choice.else247

idx_oob240:                                       ; preds = %and.126.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then246:                                   ; preds = %idx_ok239
  %multmp = mul i64 %"var.exp_val'.0", 10
  %idx.oob257 = icmp uge i64 %"var.i'.6", %str.len.query3
  br i1 %idx.oob257, label %idx_oob259, label %idx_ok258

choice.else247:                                   ; preds = %loop.header.125, %idx_ok239
  %cmptmp273 = icmp eq i64 %"var.exp_digits'.0", 0
  br i1 %cmptmp273, label %common.ret, label %choice.exit275

idx_ok258:                                        ; preds = %choice.then246
  %s.byte.gep261 = getelementptr i8, ptr %call.res.fca.1.extract, i64 %"var.i'.6"
  %s.byte262 = load i8, ptr %s.byte.gep261, align 1
  %s.byte.val263 = zext i8 %s.byte262 to i64
  %subtmp264 = sub i64 %s.byte.val263, 48
  %addtmp265 = add i64 %multmp, %subtmp264
  %addtmp267 = add i64 %"var.exp_digits'.0", 1
  %addtmp269 = add i64 %"var.i'.6", 1
  %loop.next271 = add i64 %loop.idx.125.0, 1
  br label %loop.header.125

idx_oob259:                                       ; preds = %choice.then246
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit275:                                   ; preds = %choice.else247
  %negtmp = sub i64 0, %"var.exp_val'.0"
  %choice.res283 = select i1 %cmptmp197, i64 %negtmp, i64 %"var.exp_val'.0"
  %cast.sitofp284 = sitofp i64 %choice.res283 to double
  %pow = call double @llvm.pow.f64(double 1.000000e+01, double %cast.sitofp284)
  %fmultmp287 = fmul double %faddtmp153, %pow
  br label %choice.exit174

choice.else292:                                   ; preds = %choice.exit174
  %fnegtmp = fneg double %"var.res'.0"
  %choice.res300 = select i1 %cmptmp9, double %fnegtmp, double %"var.res'.0"
  %f.to.i64 = bitcast double %choice.res300 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { inlinehint "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
