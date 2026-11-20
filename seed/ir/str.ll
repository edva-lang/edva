; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@"var.const::max_f64" = external global double
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
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
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

define internal void @__dva_global_init_str() #3 {
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

declare ptr @memchr(ptr, i64, i64) #3

define internal i64 @"str::#find_byte_from"(ptr %0, i64 %1, i64 %2) #3 {
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
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load i64, ptr %var.start, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
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

define i1 @"str::is_digit"(i64 %0) #3 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_digit"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_digit"(i64) #3

define i1 @"str::is_alpha"(i64 %0) #3 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_alpha"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_alpha"(i64) #3

define i1 @"str::is_alnum"(i64 %0) #3 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_alnum"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_alnum"(i64) #3

; Function Attrs: inlinehint
define i1 @"str::is_ws"(i64 %0) #4 {
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

define i1 @"str::is_hex"(i64 %0) #3 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_hex"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_hex"(i64) #3

define { i64, ptr } @"str::from_byte"(i64 %0) #3 {
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

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

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

define { i64, ptr } @"str::from_int"(i64 %0) #3 {
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

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #3 {
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

define { i64, ptr } @"str::from_u64"(i64 %0) #3 {
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

define { i64, ptr } @"str::from_float"(double %0) #3 {
entry:
  %concat.str873 = alloca { i64, ptr }, align 8
  %var.es = alloca ptr, align 8
  %ret.ub.salloc827 = alloca { i64, ptr }, align 8
  %concat.str = alloca { i64, ptr }, align 8
  %cat.ibuf = alloca [24 x i8], align 1
  %var.mant = alloca ptr, align 8
  %str.view = alloca { i64, ptr }, align 8
  %var._760 = alloca i64, align 8
  %var._i759 = alloca i64, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var._741 = alloca i64, align 8
  %var._i740 = alloca i64, align 8
  %var.ch_ = alloca i64, align 8
  %loop.step.55 = alloca i64, align 8
  %loop.idx.55 = alloca i64, align 8
  %"var.dot_pos'" = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._660 = alloca i64, align 8
  %var._i659 = alloca i64, align 8
  %loop.step.54 = alloca i64, align 8
  %loop.idx.54 = alloca i64, align 8
  %var._607 = alloca i64, align 8
  %var._i606 = alloca i64, align 8
  %loop.step.52 = alloca i64, align 8
  %loop.idx.52 = alloca i64, align 8
  %var._507 = alloca i64, align 8
  %var._i506 = alloca i64, align 8
  %loop.step.51 = alloca i64, align 8
  %loop.idx.51 = alloca i64, align 8
  %var._395 = alloca i64, align 8
  %var._i394 = alloca i64, align 8
  %loop.step.49 = alloca i64, align 8
  %loop.idx.49 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._326 = alloca i64, align 8
  %var._i325 = alloca i64, align 8
  %loop.step.48 = alloca i64, align 8
  %loop.idx.48 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc178 = alloca { i64, ptr, i64 }, align 8
  %var.ms = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var._142 = alloca i64, align 8
  %var._i141 = alloca i64, align 8
  %loop.step.44 = alloca i64, align 8
  %loop.idx.44 = alloca i64, align 8
  %"var.m'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.d = alloca i64, align 8
  %var._80 = alloca i64, align 8
  %var._i79 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.43 = alloca i64, align 8
  %loop.idx.43 = alloca i64, align 8
  %var.ds = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
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
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.ds, align 8
  %b.load = load ptr, ptr %var.ds, align 8
  %var.load62 = load i64, ptr %var.ip, align 8
  %coerce.trunc = trunc i64 %var.load62 to i32
  %addtmp63 = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp63 to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %loop.exit.42
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len61

b.byte_ok:                                        ; preds = %abort.dead64, %b.buf.len61
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len65 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap66 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data67 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len65, %b.cap66
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len61
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap66, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum68 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf69 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf69, label %str_overflow_abort71, label %b.new.buf.len70

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len70
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data74 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len75 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data74, i64 %b.cur.len75
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len75, 1
  %b.nul = getelementptr i8, ptr %b.cur.data74, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep76 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep76, align 8
  store i64 0, ptr %loop.idx.43, align 8
  br label %loop.header.43

b.new.buf.len70:                                  ; preds = %abort.dead72, %b.grow
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 %sum68)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data67, i64 %b.len65, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len65
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort71:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead72:                                     ; No predecessors!
  br label %b.new.buf.len70

loop.header.43:                                   ; preds = %loop.latch.43, %b.push_done
  %counter.load77 = load i64, ptr %loop.idx.43, align 8
  %loop.cond = icmp slt i64 %counter.load77, 6
  br i1 %loop.cond, label %loop.body.43, label %loop.exit.nat.43

loop.body.43:                                     ; preds = %loop.header.43
  %loop.rel.i78 = sub i64 %counter.load77, 0
  store i64 1, ptr %loop.step.43, align 8
  store i64 %loop.rel.i78, ptr %var._i79, align 8
  store i64 %counter.load77, ptr %var._80, align 8
  store i64 %counter.load77, ptr %var.i, align 8
  %var.load81 = load double, ptr %"var.f'", align 8
  %fmultmp82 = fmul double %var.load81, 1.000000e+01
  store double %fmultmp82, ptr %"var.f'", align 8
  %var.load83 = load double, ptr %"var.f'", align 8
  %cast.fptosi84 = fptosi double %var.load83 to i64
  store i64 %cast.fptosi84, ptr %var.d, align 8
  %b.load85 = load ptr, ptr %var.ds, align 8
  %var.load86 = load i64, ptr %var.d, align 8
  %coerce.trunc87 = trunc i64 %var.load86 to i32
  %addtmp88 = add i32 48, %coerce.trunc87
  %b.byte.zext89 = zext i32 %addtmp88 to i64
  %b.b.ge090 = icmp sge i64 %b.byte.zext89, 0
  %b.b.le25591 = icmp sle i64 %b.byte.zext89, 255
  %b.byte.range92 = and i1 %b.b.ge090, %b.b.le25591
  br i1 %b.byte.range92, label %b.byte_ok93, label %b.byte_err94

loop.exit.nat.43:                                 ; preds = %loop.header.43
  br label %loop.exit.43

loop.latch.43:                                    ; preds = %b.push_done106
  %step.val133 = load i64, ptr %loop.step.43, align 8
  %loop.next134 = add i64 %counter.load77, %step.val133
  store i64 %loop.next134, ptr %loop.idx.43, align 8
  br label %loop.header.43

loop.exit.43:                                     ; preds = %loop.exit.nat.43
  %var.load135 = load ptr, ptr %var.ds, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load135, i32 0, i32 0
  %b.freeze.len136 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load135, i32 0, i32 1
  %b.freeze.data137 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len136, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data137, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load135, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load135, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load135, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  store i64 0, ptr %"var.m'", align 8
  store i64 0, ptr %loop.idx.44, align 8
  br label %loop.header.44

b.byte_ok93:                                      ; preds = %abort.dead95, %loop.body.43
  %b.byte.i896 = trunc i64 %b.byte.zext89 to i8
  %b.len97 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 0
  %b.len98 = load i64, ptr %b.len97, align 8
  %b.cap99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 2
  %b.cap100 = load i64, ptr %b.cap99, align 8
  %b.data101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 1
  %b.data102 = load ptr, ptr %b.data101, align 8
  %b.needs.grow103 = icmp eq i64 %b.len98, %b.cap100
  br i1 %b.needs.grow103, label %b.grow104, label %b.nogrow105

b.byte_err94:                                     ; preds = %loop.body.43
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %b.byte_ok93

b.grow104:                                        ; preds = %b.byte_ok93
  %b.cap2107 = mul i64 %b.cap100, 2
  %b.cap.small108 = icmp slt i64 %b.cap2107, 16
  %b.new.cap109 = select i1 %b.cap.small108, i64 16, i64 %b.cap2107
  %b.new.buf.len110 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap109, i64 1)
  %sum111 = extractvalue { i64, i1 } %b.new.buf.len110, 0
  %ovf112 = extractvalue { i64, i1 } %b.new.buf.len110, 1
  br i1 %ovf112, label %str_overflow_abort114, label %b.new.buf.len113

b.nogrow105:                                      ; preds = %b.byte_ok93
  br label %b.push_done106

b.push_done106:                                   ; preds = %b.nogrow105, %b.new.buf.len113
  %b.cur.data121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 1
  %b.cur.data122 = load ptr, ptr %b.cur.data121, align 8
  %b.cur.len123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 0
  %b.cur.len124 = load i64, ptr %b.cur.len123, align 8
  %b.byte.gep125 = getelementptr i8, ptr %b.cur.data122, i64 %b.cur.len124
  store i8 %b.byte.i896, ptr %b.byte.gep125, align 1
  %b.next.len126 = add i64 %b.cur.len124, 1
  %b.nul127 = getelementptr i8, ptr %b.cur.data122, i64 %b.next.len126
  store i8 0, ptr %b.nul127, align 1
  %b.len.gep128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 0
  store i64 %b.next.len126, ptr %b.len.gep128, align 8
  %var.load129 = load double, ptr %"var.f'", align 8
  %var.load130 = load i64, ptr %var.d, align 8
  %cast.sitofp131 = sitofp i64 %var.load130 to double
  %fsubtmp132 = fsub double %var.load129, %cast.sitofp131
  store double %fsubtmp132, ptr %"var.f'", align 8
  br label %loop.latch.43

b.new.buf.len113:                                 ; preds = %abort.dead115, %b.grow104
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 %sum111)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf117, ptr align 1 %b.data102, i64 %b.len98, i1 false)
  %b.grow.nul118 = getelementptr i8, ptr %b.new.buf117, i64 %b.len98
  store i8 0, ptr %b.grow.nul118, align 1
  %b.new.data.gep119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 1
  store ptr %b.new.buf117, ptr %b.new.data.gep119, align 8
  %b.new.cap.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 2
  store i64 %b.new.cap109, ptr %b.new.cap.gep120, align 8
  br label %b.push_done106

str_overflow_abort114:                            ; preds = %b.grow104
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead115:                                    ; No predecessors!
  br label %b.new.buf.len113

loop.header.44:                                   ; preds = %loop.latch.44, %loop.exit.43
  %counter.load138 = load i64, ptr %loop.idx.44, align 8
  %loop.cond139 = icmp slt i64 %counter.load138, 6
  br i1 %loop.cond139, label %loop.body.44, label %loop.exit.nat.44

loop.body.44:                                     ; preds = %loop.header.44
  %loop.rel.i140 = sub i64 %counter.load138, 0
  store i64 1, ptr %loop.step.44, align 8
  store i64 %loop.rel.i140, ptr %var._i141, align 8
  store i64 %counter.load138, ptr %var._142, align 8
  store i64 %counter.load138, ptr %var.i, align 8
  %var.load143 = load i64, ptr %"var.m'", align 8
  %multmp = mul i64 %var.load143, 10
  %var.load144 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 0
  %s.read.len145 = load i64, ptr %s.read.len, align 8
  %s.read.len146 = and i64 %s.read.len145, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load144, i32 0, i32 1
  %s.read.data147 = load ptr, ptr %s.read.data, align 8
  %var.load148 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load148, %s.read.len146
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.44:                                 ; preds = %loop.header.44
  br label %loop.exit.44

loop.latch.44:                                    ; preds = %idx_ok
  %step.val152 = load i64, ptr %loop.step.44, align 8
  %loop.next153 = add i64 %counter.load138, %step.val152
  store i64 %loop.next153, ptr %loop.idx.44, align 8
  br label %loop.header.44

loop.exit.44:                                     ; preds = %loop.exit.nat.44
  %var.load154 = load ptr, ptr %var.s, align 8
  %s.read.len155 = getelementptr inbounds { i64, ptr }, ptr %var.load154, i32 0, i32 0
  %s.read.len156 = load i64, ptr %s.read.len155, align 8
  %s.read.len157 = and i64 %s.read.len156, 281474976710655
  %s.read.data158 = getelementptr inbounds { i64, ptr }, ptr %var.load154, i32 0, i32 1
  %s.read.data159 = load ptr, ptr %s.read.data158, align 8
  %idx.oob160 = icmp uge i64 6, %s.read.len157
  br i1 %idx.oob160, label %idx_oob162, label %idx_ok161

idx_ok:                                           ; preds = %abort.dead149, %loop.body.44
  %s.byte.gep = getelementptr i8, ptr %s.read.data147, i64 %var.load148
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp150 = sub i64 %s.byte.val, 48
  %addtmp151 = add i64 %multmp, %subtmp150
  store i64 %addtmp151, ptr %"var.m'", align 8
  br label %loop.latch.44

idx_oob:                                          ; preds = %loop.body.44
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead149:                                    ; No predecessors!
  br label %idx_ok

idx_ok161:                                        ; preds = %abort.dead163, %loop.exit.44
  %s.byte.gep164 = getelementptr i8, ptr %s.read.data159, i64 6
  %s.byte165 = load i8, ptr %s.byte.gep164, align 1
  %s.byte.val166 = zext i8 %s.byte165 to i64
  %cmptmp = icmp sge i64 %s.byte.val166, 53
  br i1 %cmptmp, label %choice.then167, label %choice.exit168

idx_oob162:                                       ; preds = %loop.exit.44
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %idx_ok161

choice.then167:                                   ; preds = %idx_ok161
  %var.load169 = load i64, ptr %"var.m'", align 8
  %addtmp170 = add i64 %var.load169, 1
  store i64 %addtmp170, ptr %"var.m'", align 8
  br label %choice.exit168

choice.exit168:                                   ; preds = %choice.then167, %idx_ok161
  %var.load171 = load i64, ptr %"var.m'", align 8
  %cmptmp172 = icmp eq i64 %var.load171, 1000000
  br i1 %cmptmp172, label %choice.then173, label %choice.exit174

choice.then173:                                   ; preds = %choice.exit168
  store i64 100000, ptr %"var.m'", align 8
  %var.load175 = load i64, ptr %"var.e'", align 8
  %addtmp176 = add i64 %var.load175, 1
  store i64 %addtmp176, ptr %"var.e'", align 8
  br label %choice.exit174

choice.exit174:                                   ; preds = %choice.then173, %choice.exit168
  %var.load177 = load i64, ptr %"var.m'", align 8
  %call.res = call { i64, ptr } @"str::from_int"(i64 %var.load177)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.ms, align 8
  %b.data.gep179 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc178, i32 0, i32 1
  %b.len.gep180 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc178, i32 0, i32 0
  %b.cap.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc178, i32 0, i32 2
  %b.buf.len182 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum183 = extractvalue { i64, i1 } %b.buf.len182, 0
  %ovf184 = extractvalue { i64, i1 } %b.buf.len182, 1
  br i1 %ovf184, label %str_overflow_abort186, label %b.buf.len185

b.buf.len185:                                     ; preds = %abort.dead187, %choice.exit174
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 %sum183)
  %b.nul0190 = getelementptr i8, ptr %b.buf189, i64 0
  store i8 0, ptr %b.nul0190, align 1
  store i64 0, ptr %b.len.gep180, align 8
  store ptr %b.buf189, ptr %b.data.gep179, align 8
  store i64 32, ptr %b.cap.gep181, align 8
  store ptr %builder.new.salloc178, ptr %var.b, align 8
  %var.load191 = load i1, ptr %var.neg, align 1
  br i1 %var.load191, label %choice.then192, label %choice.exit193

str_overflow_abort186:                            ; preds = %choice.exit174
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead187:                                    ; No predecessors!
  br label %b.buf.len185

choice.then192:                                   ; preds = %b.buf.len185
  %b.load194 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 0
  %b.rn.cur.len195 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len195, i64 1)
  %sum196 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf197 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf197, label %str_overflow_abort199, label %b.rn.new.len198

choice.exit193:                                   ; preds = %br.done.45, %b.buf.len185
  %var.load216 = load i64, ptr %"var.e'", align 8
  %cmptmp217 = icmp slt i64 %var.load216, -4
  br i1 %cmptmp217, label %or.46.then, label %or.46.else

b.rn.new.len198:                                  ; preds = %abort.dead200, %choice.then192
  %b.cap201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 2
  %b.cap202 = load i64, ptr %b.cap201, align 8
  %b.need.grow = icmp slt i64 %b.cap202, %sum196
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort199:                            ; preds = %choice.then192
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead200:                                    ; No predecessors!
  br label %b.rn.new.len198

b.grow2:                                          ; preds = %b.rn.new.len198
  %b.cap2203 = mul i64 %b.cap202, 2
  %b.cap.small204 = icmp slt i64 %b.cap2203, 16
  %b.cap.grow = select i1 %b.cap.small204, i64 16, i64 %b.cap2203
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum196
  %b.new.cap205 = select i1 %b.cap.need, i64 %sum196, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 0
  %b.cur.len2206 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 1
  %b.cur.data2207 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap205, i64 1)
  %sum208 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf209 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf209, label %str_overflow_abort211, label %b.new.buf.len2210

b.nogrow2:                                        ; preds = %b.rn.new.len198
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2210
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 1
  %b.rn.data214 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data214, i64 %b.rn.cur.len195
  br i1 true, label %br.b1.45, label %br.c2.45

b.new.buf.len2210:                                ; preds = %abort.dead212, %b.grow2
  %arena.cur213 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %sum208)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2207, i64 %b.cur.len2206, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2206
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 2
  store i64 %b.new.cap205, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort211:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead212:                                    ; No predecessors!
  br label %b.new.buf.len2210

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
  %br.nul = getelementptr i8, ptr %b.rn.data214, i64 %sum196
  store i8 0, ptr %br.nul, align 1
  %b.len.gep215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load194, i32 0, i32 0
  store i64 %sum196, ptr %b.len.gep215, align 8
  br label %choice.exit193

or.46.then:                                       ; preds = %choice.exit193
  br label %or.46.exit

or.46.else:                                       ; preds = %choice.exit193
  %var.load218 = load i64, ptr %"var.e'", align 8
  %cmptmp219 = icmp sge i64 %var.load218, 6
  br label %or.46.exit

or.46.exit:                                       ; preds = %or.46.else, %or.46.then
  %or.46.phi = phi i1 [ %cmptmp217, %or.46.then ], [ %cmptmp219, %or.46.else ]
  br i1 %or.46.phi, label %choice.then220, label %choice.else221

choice.then220:                                   ; preds = %or.46.exit
  %b.load223 = load ptr, ptr %var.b, align 8
  %var.load224 = load ptr, ptr %var.ms, align 8
  %s.read.len225 = getelementptr inbounds { i64, ptr }, ptr %var.load224, i32 0, i32 0
  %s.read.len226 = load i64, ptr %s.read.len225, align 8
  %s.read.len227 = and i64 %s.read.len226, 281474976710655
  %s.read.data228 = getelementptr inbounds { i64, ptr }, ptr %var.load224, i32 0, i32 1
  %s.read.data229 = load ptr, ptr %s.read.data228, align 8
  %idx.oob230 = icmp uge i64 0, %s.read.len227
  br i1 %idx.oob230, label %idx_oob232, label %idx_ok231

choice.else221:                                   ; preds = %or.46.exit
  %var.load383 = load i64, ptr %"var.e'", align 8
  %cmptmp384 = icmp sge i64 %var.load383, 0
  br i1 %cmptmp384, label %choice.then385, label %choice.else386

choice.exit222:                                   ; preds = %choice.exit387, %loop.exit.48
  %var.load717 = load ptr, ptr %var.b, align 8
  %b.freeze.len718 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load717, i32 0, i32 0
  %b.freeze.len719 = load i64, ptr %b.freeze.len718, align 8
  %b.freeze.data720 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load717, i32 0, i32 1
  %b.freeze.data721 = load ptr, ptr %b.freeze.data720, align 8
  %arena.cur722 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze723 = call ptr @dva_arena_alloc(ptr %arena.cur722, i64 16)
  %str.build.len.gep724 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze723, i32 0, i32 0
  store i64 %b.freeze.len719, ptr %str.build.len.gep724, align 8
  %str.build.data.gep725 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze723, i32 0, i32 1
  store ptr %b.freeze.data721, ptr %str.build.data.gep725, align 8
  %b.freeze.rst.len726 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load717, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len726, align 8
  %b.freeze.rst.data727 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load717, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data727, align 8
  %b.freeze.rst.cap728 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load717, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap728, align 8
  store ptr %builder.freeze723, ptr %var.full, align 8
  store i64 -1, ptr %"var.dot_pos'", align 8
  %var.load729 = load ptr, ptr %var.full, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load729, i32 0, i32 0
  %str.len730 = load i64, ptr %str.len, align 8
  %str.len731 = and i64 %str.len730, 281474976710655
  %s.read.data732 = getelementptr inbounds { i64, ptr }, ptr %var.load729, i32 0, i32 1
  %s.read.data733 = load ptr, ptr %s.read.data732, align 8
  store i64 0, ptr %loop.idx.55, align 8
  br label %loop.header.55

idx_ok231:                                        ; preds = %abort.dead233, %choice.then220
  %s.byte.gep234 = getelementptr i8, ptr %s.read.data229, i64 0
  %s.byte235 = load i8, ptr %s.byte.gep234, align 1
  %s.byte.val236 = zext i8 %s.byte235 to i64
  %b.b.ge0237 = icmp sge i64 %s.byte.val236, 0
  %b.b.le255238 = icmp sle i64 %s.byte.val236, 255
  %b.byte.range239 = and i1 %b.b.ge0237, %b.b.le255238
  br i1 %b.byte.range239, label %b.byte_ok240, label %b.byte_err241

idx_oob232:                                       ; preds = %choice.then220
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead233:                                    ; No predecessors!
  br label %idx_ok231

b.byte_ok240:                                     ; preds = %abort.dead242, %idx_ok231
  %b.byte.i8243 = trunc i64 %s.byte.val236 to i8
  %b.len244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 0
  %b.len245 = load i64, ptr %b.len244, align 8
  %b.cap246 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 2
  %b.cap247 = load i64, ptr %b.cap246, align 8
  %b.data248 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 1
  %b.data249 = load ptr, ptr %b.data248, align 8
  %b.needs.grow250 = icmp eq i64 %b.len245, %b.cap247
  br i1 %b.needs.grow250, label %b.grow251, label %b.nogrow252

b.byte_err241:                                    ; preds = %idx_ok231
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead242:                                    ; No predecessors!
  br label %b.byte_ok240

b.grow251:                                        ; preds = %b.byte_ok240
  %b.cap2254 = mul i64 %b.cap247, 2
  %b.cap.small255 = icmp slt i64 %b.cap2254, 16
  %b.new.cap256 = select i1 %b.cap.small255, i64 16, i64 %b.cap2254
  %b.new.buf.len257 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap256, i64 1)
  %sum258 = extractvalue { i64, i1 } %b.new.buf.len257, 0
  %ovf259 = extractvalue { i64, i1 } %b.new.buf.len257, 1
  br i1 %ovf259, label %str_overflow_abort261, label %b.new.buf.len260

b.nogrow252:                                      ; preds = %b.byte_ok240
  br label %b.push_done253

b.push_done253:                                   ; preds = %b.nogrow252, %b.new.buf.len260
  %b.cur.data268 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 1
  %b.cur.data269 = load ptr, ptr %b.cur.data268, align 8
  %b.cur.len270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 0
  %b.cur.len271 = load i64, ptr %b.cur.len270, align 8
  %b.byte.gep272 = getelementptr i8, ptr %b.cur.data269, i64 %b.cur.len271
  store i8 %b.byte.i8243, ptr %b.byte.gep272, align 1
  %b.next.len273 = add i64 %b.cur.len271, 1
  %b.nul274 = getelementptr i8, ptr %b.cur.data269, i64 %b.next.len273
  store i8 0, ptr %b.nul274, align 1
  %b.len.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 0
  store i64 %b.next.len273, ptr %b.len.gep275, align 8
  %b.load276 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 0
  %b.rn.cur.len278 = load i64, ptr %b.rn.cur.len277, align 8
  %b.rn.new.len279 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len278, i64 1)
  %sum280 = extractvalue { i64, i1 } %b.rn.new.len279, 0
  %ovf281 = extractvalue { i64, i1 } %b.rn.new.len279, 1
  br i1 %ovf281, label %str_overflow_abort283, label %b.rn.new.len282

b.new.buf.len260:                                 ; preds = %abort.dead262, %b.grow251
  %arena.cur263 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf264 = call ptr @dva_arena_alloc(ptr %arena.cur263, i64 %sum258)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf264, ptr align 1 %b.data249, i64 %b.len245, i1 false)
  %b.grow.nul265 = getelementptr i8, ptr %b.new.buf264, i64 %b.len245
  store i8 0, ptr %b.grow.nul265, align 1
  %b.new.data.gep266 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 1
  store ptr %b.new.buf264, ptr %b.new.data.gep266, align 8
  %b.new.cap.gep267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 2
  store i64 %b.new.cap256, ptr %b.new.cap.gep267, align 8
  br label %b.push_done253

str_overflow_abort261:                            ; preds = %b.grow251
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead262:                                    ; No predecessors!
  br label %b.new.buf.len260

b.rn.new.len282:                                  ; preds = %abort.dead284, %b.push_done253
  %b.cap285 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 2
  %b.cap286 = load i64, ptr %b.cap285, align 8
  %b.need.grow287 = icmp slt i64 %b.cap286, %sum280
  br i1 %b.need.grow287, label %b.grow2288, label %b.nogrow2289

str_overflow_abort283:                            ; preds = %b.push_done253
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead284:                                    ; No predecessors!
  br label %b.rn.new.len282

b.grow2288:                                       ; preds = %b.rn.new.len282
  %b.cap2291 = mul i64 %b.cap286, 2
  %b.cap.small292 = icmp slt i64 %b.cap2291, 16
  %b.cap.grow293 = select i1 %b.cap.small292, i64 16, i64 %b.cap2291
  %b.cap.need294 = icmp slt i64 %b.cap.grow293, %sum280
  %b.new.cap295 = select i1 %b.cap.need294, i64 %sum280, i64 %b.cap.grow293
  %b.cur.len2296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 0
  %b.cur.len2297 = load i64, ptr %b.cur.len2296, align 8
  %b.cur.data2298 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 1
  %b.cur.data2299 = load ptr, ptr %b.cur.data2298, align 8
  %b.new.buf.len2300 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap295, i64 1)
  %sum301 = extractvalue { i64, i1 } %b.new.buf.len2300, 0
  %ovf302 = extractvalue { i64, i1 } %b.new.buf.len2300, 1
  br i1 %ovf302, label %str_overflow_abort304, label %b.new.buf.len2303

b.nogrow2289:                                     ; preds = %b.rn.new.len282
  br label %b.grow_done290

b.grow_done290:                                   ; preds = %b.nogrow2289, %b.new.buf.len2303
  %b.rn.data311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 1
  %b.rn.data312 = load ptr, ptr %b.rn.data311, align 8
  %b.rn.dst313 = getelementptr i8, ptr %b.rn.data312, i64 %b.rn.cur.len278
  br i1 true, label %br.b1.47, label %br.c2.47

b.new.buf.len2303:                                ; preds = %abort.dead305, %b.grow2288
  %arena.cur306 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2307 = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 %sum301)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2307, ptr align 1 %b.cur.data2299, i64 %b.cur.len2297, i1 false)
  %b.grow2.nul308 = getelementptr i8, ptr %b.new.buf2307, i64 %b.cur.len2297
  store i8 0, ptr %b.grow2.nul308, align 1
  %b.new.data2.gep309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 1
  store ptr %b.new.buf2307, ptr %b.new.data2.gep309, align 8
  %b.new.cap2.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 2
  store i64 %b.new.cap295, ptr %b.new.cap2.gep310, align 8
  br label %b.grow_done290

str_overflow_abort304:                            ; preds = %b.grow2288
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead305:                                    ; No predecessors!
  br label %b.new.buf.len2303

br.b1.47:                                         ; preds = %b.grow_done290
  store i8 46, ptr %b.rn.dst313, align 1
  br label %br.done.47

br.c2.47:                                         ; preds = %b.grow_done290
  br i1 true, label %br.b2.47, label %br.c3.47

br.b2.47:                                         ; preds = %br.c2.47
  store i8 -64, ptr %b.rn.dst313, align 1
  %br.dst1314 = getelementptr i8, ptr %b.rn.dst313, i64 1
  store i8 -82, ptr %br.dst1314, align 1
  br label %br.done.47

br.c3.47:                                         ; preds = %br.c2.47
  br i1 true, label %br.b3.47, label %br.b4.47

br.b3.47:                                         ; preds = %br.c3.47
  store i8 -32, ptr %b.rn.dst313, align 1
  %br.dst1.3315 = getelementptr i8, ptr %b.rn.dst313, i64 1
  store i8 -128, ptr %br.dst1.3315, align 1
  %br.dst2.3316 = getelementptr i8, ptr %b.rn.dst313, i64 2
  store i8 -82, ptr %br.dst2.3316, align 1
  br label %br.done.47

br.b4.47:                                         ; preds = %br.c3.47
  store i8 -16, ptr %b.rn.dst313, align 1
  %br.dst1.4317 = getelementptr i8, ptr %b.rn.dst313, i64 1
  store i8 -128, ptr %br.dst1.4317, align 1
  %br.dst2.4318 = getelementptr i8, ptr %b.rn.dst313, i64 2
  store i8 -128, ptr %br.dst2.4318, align 1
  %br.dst3.4319 = getelementptr i8, ptr %b.rn.dst313, i64 3
  store i8 -82, ptr %br.dst3.4319, align 1
  br label %br.done.47

br.done.47:                                       ; preds = %br.b4.47, %br.b3.47, %br.b2.47, %br.b1.47
  %br.nul320 = getelementptr i8, ptr %b.rn.data312, i64 %sum280
  store i8 0, ptr %br.nul320, align 1
  %b.len.gep321 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load276, i32 0, i32 0
  store i64 %sum280, ptr %b.len.gep321, align 8
  store i64 1, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.header.48:                                   ; preds = %loop.latch.48, %br.done.47
  %counter.load322 = load i64, ptr %loop.idx.48, align 8
  %loop.cond323 = icmp slt i64 %counter.load322, 6
  br i1 %loop.cond323, label %loop.body.48, label %loop.exit.nat.48

loop.body.48:                                     ; preds = %loop.header.48
  %loop.rel.i324 = sub i64 %counter.load322, 1
  store i64 1, ptr %loop.step.48, align 8
  store i64 %loop.rel.i324, ptr %var._i325, align 8
  store i64 %counter.load322, ptr %var._326, align 8
  store i64 %counter.load322, ptr %var.i, align 8
  %b.load327 = load ptr, ptr %var.b, align 8
  %var.load328 = load ptr, ptr %var.ms, align 8
  %s.read.len329 = getelementptr inbounds { i64, ptr }, ptr %var.load328, i32 0, i32 0
  %s.read.len330 = load i64, ptr %s.read.len329, align 8
  %s.read.len331 = and i64 %s.read.len330, 281474976710655
  %s.read.data332 = getelementptr inbounds { i64, ptr }, ptr %var.load328, i32 0, i32 1
  %s.read.data333 = load ptr, ptr %s.read.data332, align 8
  %var.load334 = load i64, ptr %var.i, align 8
  %idx.oob335 = icmp uge i64 %var.load334, %s.read.len331
  br i1 %idx.oob335, label %idx_oob337, label %idx_ok336

loop.exit.nat.48:                                 ; preds = %loop.header.48
  br label %loop.exit.48

loop.latch.48:                                    ; preds = %b.push_done358
  %step.val381 = load i64, ptr %loop.step.48, align 8
  %loop.next382 = add i64 %counter.load322, %step.val381
  store i64 %loop.next382, ptr %loop.idx.48, align 8
  br label %loop.header.48

loop.exit.48:                                     ; preds = %loop.exit.nat.48
  br label %choice.exit222

idx_ok336:                                        ; preds = %abort.dead338, %loop.body.48
  %s.byte.gep339 = getelementptr i8, ptr %s.read.data333, i64 %var.load334
  %s.byte340 = load i8, ptr %s.byte.gep339, align 1
  %s.byte.val341 = zext i8 %s.byte340 to i64
  %b.b.ge0342 = icmp sge i64 %s.byte.val341, 0
  %b.b.le255343 = icmp sle i64 %s.byte.val341, 255
  %b.byte.range344 = and i1 %b.b.ge0342, %b.b.le255343
  br i1 %b.byte.range344, label %b.byte_ok345, label %b.byte_err346

idx_oob337:                                       ; preds = %loop.body.48
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead338:                                    ; No predecessors!
  br label %idx_ok336

b.byte_ok345:                                     ; preds = %abort.dead347, %idx_ok336
  %b.byte.i8348 = trunc i64 %s.byte.val341 to i8
  %b.len349 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 0
  %b.len350 = load i64, ptr %b.len349, align 8
  %b.cap351 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 2
  %b.cap352 = load i64, ptr %b.cap351, align 8
  %b.data353 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 1
  %b.data354 = load ptr, ptr %b.data353, align 8
  %b.needs.grow355 = icmp eq i64 %b.len350, %b.cap352
  br i1 %b.needs.grow355, label %b.grow356, label %b.nogrow357

b.byte_err346:                                    ; preds = %idx_ok336
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead347:                                    ; No predecessors!
  br label %b.byte_ok345

b.grow356:                                        ; preds = %b.byte_ok345
  %b.cap2359 = mul i64 %b.cap352, 2
  %b.cap.small360 = icmp slt i64 %b.cap2359, 16
  %b.new.cap361 = select i1 %b.cap.small360, i64 16, i64 %b.cap2359
  %b.new.buf.len362 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap361, i64 1)
  %sum363 = extractvalue { i64, i1 } %b.new.buf.len362, 0
  %ovf364 = extractvalue { i64, i1 } %b.new.buf.len362, 1
  br i1 %ovf364, label %str_overflow_abort366, label %b.new.buf.len365

b.nogrow357:                                      ; preds = %b.byte_ok345
  br label %b.push_done358

b.push_done358:                                   ; preds = %b.nogrow357, %b.new.buf.len365
  %b.cur.data373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 1
  %b.cur.data374 = load ptr, ptr %b.cur.data373, align 8
  %b.cur.len375 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 0
  %b.cur.len376 = load i64, ptr %b.cur.len375, align 8
  %b.byte.gep377 = getelementptr i8, ptr %b.cur.data374, i64 %b.cur.len376
  store i8 %b.byte.i8348, ptr %b.byte.gep377, align 1
  %b.next.len378 = add i64 %b.cur.len376, 1
  %b.nul379 = getelementptr i8, ptr %b.cur.data374, i64 %b.next.len378
  store i8 0, ptr %b.nul379, align 1
  %b.len.gep380 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 0
  store i64 %b.next.len378, ptr %b.len.gep380, align 8
  br label %loop.latch.48

b.new.buf.len365:                                 ; preds = %abort.dead367, %b.grow356
  %arena.cur368 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf369 = call ptr @dva_arena_alloc(ptr %arena.cur368, i64 %sum363)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf369, ptr align 1 %b.data354, i64 %b.len350, i1 false)
  %b.grow.nul370 = getelementptr i8, ptr %b.new.buf369, i64 %b.len350
  store i8 0, ptr %b.grow.nul370, align 1
  %b.new.data.gep371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 1
  store ptr %b.new.buf369, ptr %b.new.data.gep371, align 8
  %b.new.cap.gep372 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load327, i32 0, i32 2
  store i64 %b.new.cap361, ptr %b.new.cap.gep372, align 8
  br label %b.push_done358

str_overflow_abort366:                            ; preds = %b.grow356
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead367:                                    ; No predecessors!
  br label %b.new.buf.len365

choice.then385:                                   ; preds = %choice.else221
  %var.load388 = load i64, ptr %"var.e'", align 8
  %addtmp389 = add i64 %var.load388, 1
  store i64 %addtmp389, ptr %var.en, align 8
  %var.load390 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.49, align 8
  br label %loop.header.49

choice.else386:                                   ; preds = %choice.else221
  %b.load564 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.5.struct, align 8
  %app.str.len565 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load564, i32 0, i32 0
  %b.app.cur.len566 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len566, i64 %app.str.len565)
  %sum567 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf568 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf568, label %str_overflow_abort570, label %b.app.new.len569

choice.exit387:                                   ; preds = %loop.exit.54, %choice.exit455
  br label %choice.exit222

loop.header.49:                                   ; preds = %loop.latch.49, %choice.then385
  %counter.load391 = load i64, ptr %loop.idx.49, align 8
  %loop.cond392 = icmp slt i64 %counter.load391, %var.load390
  br i1 %loop.cond392, label %loop.body.49, label %loop.exit.nat.49

loop.body.49:                                     ; preds = %loop.header.49
  %loop.rel.i393 = sub i64 %counter.load391, 0
  store i64 1, ptr %loop.step.49, align 8
  store i64 %loop.rel.i393, ptr %var._i394, align 8
  store i64 %counter.load391, ptr %var._395, align 8
  store i64 %counter.load391, ptr %var.i, align 8
  %b.load396 = load ptr, ptr %var.b, align 8
  %var.load397 = load ptr, ptr %var.ms, align 8
  %s.read.len398 = getelementptr inbounds { i64, ptr }, ptr %var.load397, i32 0, i32 0
  %s.read.len399 = load i64, ptr %s.read.len398, align 8
  %s.read.len400 = and i64 %s.read.len399, 281474976710655
  %s.read.data401 = getelementptr inbounds { i64, ptr }, ptr %var.load397, i32 0, i32 1
  %s.read.data402 = load ptr, ptr %s.read.data401, align 8
  %var.load403 = load i64, ptr %var.i, align 8
  %idx.oob404 = icmp uge i64 %var.load403, %s.read.len400
  br i1 %idx.oob404, label %idx_oob406, label %idx_ok405

loop.exit.nat.49:                                 ; preds = %loop.header.49
  br label %loop.exit.49

loop.latch.49:                                    ; preds = %b.push_done427
  %step.val450 = load i64, ptr %loop.step.49, align 8
  %loop.next451 = add i64 %counter.load391, %step.val450
  store i64 %loop.next451, ptr %loop.idx.49, align 8
  br label %loop.header.49

loop.exit.49:                                     ; preds = %loop.exit.nat.49
  %var.load452 = load i64, ptr %var.en, align 8
  %cmptmp453 = icmp slt i64 %var.load452, 6
  br i1 %cmptmp453, label %choice.then454, label %choice.exit455

idx_ok405:                                        ; preds = %abort.dead407, %loop.body.49
  %s.byte.gep408 = getelementptr i8, ptr %s.read.data402, i64 %var.load403
  %s.byte409 = load i8, ptr %s.byte.gep408, align 1
  %s.byte.val410 = zext i8 %s.byte409 to i64
  %b.b.ge0411 = icmp sge i64 %s.byte.val410, 0
  %b.b.le255412 = icmp sle i64 %s.byte.val410, 255
  %b.byte.range413 = and i1 %b.b.ge0411, %b.b.le255412
  br i1 %b.byte.range413, label %b.byte_ok414, label %b.byte_err415

idx_oob406:                                       ; preds = %loop.body.49
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead407:                                    ; No predecessors!
  br label %idx_ok405

b.byte_ok414:                                     ; preds = %abort.dead416, %idx_ok405
  %b.byte.i8417 = trunc i64 %s.byte.val410 to i8
  %b.len418 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load396, i32 0, i32 0
  %b.len419 = load i64, ptr %b.len418, align 8
  %b.cap420 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load396, i32 0, i32 2
  %b.cap421 = load i64, ptr %b.cap420, align 8
  %b.data422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load396, i32 0, i32 1
  %b.data423 = load ptr, ptr %b.data422, align 8
  %b.needs.grow424 = icmp eq i64 %b.len419, %b.cap421
  br i1 %b.needs.grow424, label %b.grow425, label %b.nogrow426

b.byte_err415:                                    ; preds = %idx_ok405
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead416:                                    ; No predecessors!
  br label %b.byte_ok414

b.grow425:                                        ; preds = %b.byte_ok414
  %b.cap2428 = mul i64 %b.cap421, 2
  %b.cap.small429 = icmp slt i64 %b.cap2428, 16
  %b.new.cap430 = select i1 %b.cap.small429, i64 16, i64 %b.cap2428
  %b.new.buf.len431 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap430, i64 1)
  %sum432 = extractvalue { i64, i1 } %b.new.buf.len431, 0
  %ovf433 = extractvalue { i64, i1 } %b.new.buf.len431, 1
  br i1 %ovf433, label %str_overflow_abort435, label %b.new.buf.len434

b.nogrow426:                                      ; preds = %b.byte_ok414
  br label %b.push_done427

b.push_done427:                                   ; preds = %b.nogrow426, %b.new.buf.len434
  %b.cur.data442 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load396, i32 0, i32 1
  %b.cur.data443 = load ptr, ptr %b.cur.data442, align 8
  %b.cur.len444 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load396, i32 0, i32 0
  %b.cur.len445 = load i64, ptr %b.cur.len444, align 8
  %b.byte.gep446 = getelementptr i8, ptr %b.cur.data443, i64 %b.cur.len445
  store i8 %b.byte.i8417, ptr %b.byte.gep446, align 1
  %b.next.len447 = add i64 %b.cur.len445, 1
  %b.nul448 = getelementptr i8, ptr %b.cur.data443, i64 %b.next.len447
  store i8 0, ptr %b.nul448, align 1
  %b.len.gep449 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load396, i32 0, i32 0
  store i64 %b.next.len447, ptr %b.len.gep449, align 8
  br label %loop.latch.49

b.new.buf.len434:                                 ; preds = %abort.dead436, %b.grow425
  %arena.cur437 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf438 = call ptr @dva_arena_alloc(ptr %arena.cur437, i64 %sum432)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf438, ptr align 1 %b.data423, i64 %b.len419, i1 false)
  %b.grow.nul439 = getelementptr i8, ptr %b.new.buf438, i64 %b.len419
  store i8 0, ptr %b.grow.nul439, align 1
  %b.new.data.gep440 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load396, i32 0, i32 1
  store ptr %b.new.buf438, ptr %b.new.data.gep440, align 8
  %b.new.cap.gep441 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load396, i32 0, i32 2
  store i64 %b.new.cap430, ptr %b.new.cap.gep441, align 8
  br label %b.push_done427

str_overflow_abort435:                            ; preds = %b.grow425
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead436:                                    ; No predecessors!
  br label %b.new.buf.len434

choice.then454:                                   ; preds = %loop.exit.49
  %b.load456 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load456, i32 0, i32 0
  %b.rn.cur.len458 = load i64, ptr %b.rn.cur.len457, align 8
  %b.rn.new.len459 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len458, i64 1)
  %sum460 = extractvalue { i64, i1 } %b.rn.new.len459, 0
  %ovf461 = extractvalue { i64, i1 } %b.rn.new.len459, 1
  br i1 %ovf461, label %str_overflow_abort463, label %b.rn.new.len462

choice.exit455:                                   ; preds = %loop.exit.51, %loop.exit.49
  br label %choice.exit387

b.rn.new.len462:                                  ; preds = %abort.dead464, %choice.then454
  %b.cap465 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load456, i32 0, i32 2
  %b.cap466 = load i64, ptr %b.cap465, align 8
  %b.need.grow467 = icmp slt i64 %b.cap466, %sum460
  br i1 %b.need.grow467, label %b.grow2468, label %b.nogrow2469

str_overflow_abort463:                            ; preds = %choice.then454
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead464:                                    ; No predecessors!
  br label %b.rn.new.len462

b.grow2468:                                       ; preds = %b.rn.new.len462
  %b.cap2471 = mul i64 %b.cap466, 2
  %b.cap.small472 = icmp slt i64 %b.cap2471, 16
  %b.cap.grow473 = select i1 %b.cap.small472, i64 16, i64 %b.cap2471
  %b.cap.need474 = icmp slt i64 %b.cap.grow473, %sum460
  %b.new.cap475 = select i1 %b.cap.need474, i64 %sum460, i64 %b.cap.grow473
  %b.cur.len2476 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load456, i32 0, i32 0
  %b.cur.len2477 = load i64, ptr %b.cur.len2476, align 8
  %b.cur.data2478 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load456, i32 0, i32 1
  %b.cur.data2479 = load ptr, ptr %b.cur.data2478, align 8
  %b.new.buf.len2480 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap475, i64 1)
  %sum481 = extractvalue { i64, i1 } %b.new.buf.len2480, 0
  %ovf482 = extractvalue { i64, i1 } %b.new.buf.len2480, 1
  br i1 %ovf482, label %str_overflow_abort484, label %b.new.buf.len2483

b.nogrow2469:                                     ; preds = %b.rn.new.len462
  br label %b.grow_done470

b.grow_done470:                                   ; preds = %b.nogrow2469, %b.new.buf.len2483
  %b.rn.data491 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load456, i32 0, i32 1
  %b.rn.data492 = load ptr, ptr %b.rn.data491, align 8
  %b.rn.dst493 = getelementptr i8, ptr %b.rn.data492, i64 %b.rn.cur.len458
  br i1 true, label %br.b1.50, label %br.c2.50

b.new.buf.len2483:                                ; preds = %abort.dead485, %b.grow2468
  %arena.cur486 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2487 = call ptr @dva_arena_alloc(ptr %arena.cur486, i64 %sum481)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2487, ptr align 1 %b.cur.data2479, i64 %b.cur.len2477, i1 false)
  %b.grow2.nul488 = getelementptr i8, ptr %b.new.buf2487, i64 %b.cur.len2477
  store i8 0, ptr %b.grow2.nul488, align 1
  %b.new.data2.gep489 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load456, i32 0, i32 1
  store ptr %b.new.buf2487, ptr %b.new.data2.gep489, align 8
  %b.new.cap2.gep490 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load456, i32 0, i32 2
  store i64 %b.new.cap475, ptr %b.new.cap2.gep490, align 8
  br label %b.grow_done470

str_overflow_abort484:                            ; preds = %b.grow2468
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead485:                                    ; No predecessors!
  br label %b.new.buf.len2483

br.b1.50:                                         ; preds = %b.grow_done470
  store i8 46, ptr %b.rn.dst493, align 1
  br label %br.done.50

br.c2.50:                                         ; preds = %b.grow_done470
  br i1 true, label %br.b2.50, label %br.c3.50

br.b2.50:                                         ; preds = %br.c2.50
  store i8 -64, ptr %b.rn.dst493, align 1
  %br.dst1494 = getelementptr i8, ptr %b.rn.dst493, i64 1
  store i8 -82, ptr %br.dst1494, align 1
  br label %br.done.50

br.c3.50:                                         ; preds = %br.c2.50
  br i1 true, label %br.b3.50, label %br.b4.50

br.b3.50:                                         ; preds = %br.c3.50
  store i8 -32, ptr %b.rn.dst493, align 1
  %br.dst1.3495 = getelementptr i8, ptr %b.rn.dst493, i64 1
  store i8 -128, ptr %br.dst1.3495, align 1
  %br.dst2.3496 = getelementptr i8, ptr %b.rn.dst493, i64 2
  store i8 -82, ptr %br.dst2.3496, align 1
  br label %br.done.50

br.b4.50:                                         ; preds = %br.c3.50
  store i8 -16, ptr %b.rn.dst493, align 1
  %br.dst1.4497 = getelementptr i8, ptr %b.rn.dst493, i64 1
  store i8 -128, ptr %br.dst1.4497, align 1
  %br.dst2.4498 = getelementptr i8, ptr %b.rn.dst493, i64 2
  store i8 -128, ptr %br.dst2.4498, align 1
  %br.dst3.4499 = getelementptr i8, ptr %b.rn.dst493, i64 3
  store i8 -82, ptr %br.dst3.4499, align 1
  br label %br.done.50

br.done.50:                                       ; preds = %br.b4.50, %br.b3.50, %br.b2.50, %br.b1.50
  %br.nul500 = getelementptr i8, ptr %b.rn.data492, i64 %sum460
  store i8 0, ptr %br.nul500, align 1
  %b.len.gep501 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load456, i32 0, i32 0
  store i64 %sum460, ptr %b.len.gep501, align 8
  %var.load502 = load i64, ptr %var.en, align 8
  store i64 %var.load502, ptr %loop.idx.51, align 8
  br label %loop.header.51

loop.header.51:                                   ; preds = %loop.latch.51, %br.done.50
  %counter.load503 = load i64, ptr %loop.idx.51, align 8
  %loop.cond504 = icmp slt i64 %counter.load503, 6
  br i1 %loop.cond504, label %loop.body.51, label %loop.exit.nat.51

loop.body.51:                                     ; preds = %loop.header.51
  %loop.rel.i505 = sub i64 %counter.load503, %var.load502
  store i64 1, ptr %loop.step.51, align 8
  store i64 %loop.rel.i505, ptr %var._i506, align 8
  store i64 %counter.load503, ptr %var._507, align 8
  store i64 %counter.load503, ptr %var.i, align 8
  %b.load508 = load ptr, ptr %var.b, align 8
  %var.load509 = load ptr, ptr %var.ms, align 8
  %s.read.len510 = getelementptr inbounds { i64, ptr }, ptr %var.load509, i32 0, i32 0
  %s.read.len511 = load i64, ptr %s.read.len510, align 8
  %s.read.len512 = and i64 %s.read.len511, 281474976710655
  %s.read.data513 = getelementptr inbounds { i64, ptr }, ptr %var.load509, i32 0, i32 1
  %s.read.data514 = load ptr, ptr %s.read.data513, align 8
  %var.load515 = load i64, ptr %var.i, align 8
  %idx.oob516 = icmp uge i64 %var.load515, %s.read.len512
  br i1 %idx.oob516, label %idx_oob518, label %idx_ok517

loop.exit.nat.51:                                 ; preds = %loop.header.51
  br label %loop.exit.51

loop.latch.51:                                    ; preds = %b.push_done539
  %step.val562 = load i64, ptr %loop.step.51, align 8
  %loop.next563 = add i64 %counter.load503, %step.val562
  store i64 %loop.next563, ptr %loop.idx.51, align 8
  br label %loop.header.51

loop.exit.51:                                     ; preds = %loop.exit.nat.51
  br label %choice.exit455

idx_ok517:                                        ; preds = %abort.dead519, %loop.body.51
  %s.byte.gep520 = getelementptr i8, ptr %s.read.data514, i64 %var.load515
  %s.byte521 = load i8, ptr %s.byte.gep520, align 1
  %s.byte.val522 = zext i8 %s.byte521 to i64
  %b.b.ge0523 = icmp sge i64 %s.byte.val522, 0
  %b.b.le255524 = icmp sle i64 %s.byte.val522, 255
  %b.byte.range525 = and i1 %b.b.ge0523, %b.b.le255524
  br i1 %b.byte.range525, label %b.byte_ok526, label %b.byte_err527

idx_oob518:                                       ; preds = %loop.body.51
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead519:                                    ; No predecessors!
  br label %idx_ok517

b.byte_ok526:                                     ; preds = %abort.dead528, %idx_ok517
  %b.byte.i8529 = trunc i64 %s.byte.val522 to i8
  %b.len530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 0
  %b.len531 = load i64, ptr %b.len530, align 8
  %b.cap532 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 2
  %b.cap533 = load i64, ptr %b.cap532, align 8
  %b.data534 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 1
  %b.data535 = load ptr, ptr %b.data534, align 8
  %b.needs.grow536 = icmp eq i64 %b.len531, %b.cap533
  br i1 %b.needs.grow536, label %b.grow537, label %b.nogrow538

b.byte_err527:                                    ; preds = %idx_ok517
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead528:                                    ; No predecessors!
  br label %b.byte_ok526

b.grow537:                                        ; preds = %b.byte_ok526
  %b.cap2540 = mul i64 %b.cap533, 2
  %b.cap.small541 = icmp slt i64 %b.cap2540, 16
  %b.new.cap542 = select i1 %b.cap.small541, i64 16, i64 %b.cap2540
  %b.new.buf.len543 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap542, i64 1)
  %sum544 = extractvalue { i64, i1 } %b.new.buf.len543, 0
  %ovf545 = extractvalue { i64, i1 } %b.new.buf.len543, 1
  br i1 %ovf545, label %str_overflow_abort547, label %b.new.buf.len546

b.nogrow538:                                      ; preds = %b.byte_ok526
  br label %b.push_done539

b.push_done539:                                   ; preds = %b.nogrow538, %b.new.buf.len546
  %b.cur.data554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 1
  %b.cur.data555 = load ptr, ptr %b.cur.data554, align 8
  %b.cur.len556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 0
  %b.cur.len557 = load i64, ptr %b.cur.len556, align 8
  %b.byte.gep558 = getelementptr i8, ptr %b.cur.data555, i64 %b.cur.len557
  store i8 %b.byte.i8529, ptr %b.byte.gep558, align 1
  %b.next.len559 = add i64 %b.cur.len557, 1
  %b.nul560 = getelementptr i8, ptr %b.cur.data555, i64 %b.next.len559
  store i8 0, ptr %b.nul560, align 1
  %b.len.gep561 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 0
  store i64 %b.next.len559, ptr %b.len.gep561, align 8
  br label %loop.latch.51

b.new.buf.len546:                                 ; preds = %abort.dead548, %b.grow537
  %arena.cur549 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf550 = call ptr @dva_arena_alloc(ptr %arena.cur549, i64 %sum544)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf550, ptr align 1 %b.data535, i64 %b.len531, i1 false)
  %b.grow.nul551 = getelementptr i8, ptr %b.new.buf550, i64 %b.len531
  store i8 0, ptr %b.grow.nul551, align 1
  %b.new.data.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 1
  store ptr %b.new.buf550, ptr %b.new.data.gep552, align 8
  %b.new.cap.gep553 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load508, i32 0, i32 2
  store i64 %b.new.cap542, ptr %b.new.cap.gep553, align 8
  br label %b.push_done539

str_overflow_abort547:                            ; preds = %b.grow537
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead548:                                    ; No predecessors!
  br label %b.new.buf.len546

b.app.new.len569:                                 ; preds = %abort.dead571, %choice.else386
  %b.cap572 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load564, i32 0, i32 2
  %b.cap573 = load i64, ptr %b.cap572, align 8
  %b.need.grow574 = icmp slt i64 %b.cap573, %sum567
  br i1 %b.need.grow574, label %b.grow2575, label %b.nogrow2576

str_overflow_abort570:                            ; preds = %choice.else386
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead571:                                    ; No predecessors!
  br label %b.app.new.len569

b.grow2575:                                       ; preds = %b.app.new.len569
  %b.cap2578 = mul i64 %b.cap573, 2
  %b.cap.small579 = icmp slt i64 %b.cap2578, 16
  %b.cap.grow580 = select i1 %b.cap.small579, i64 16, i64 %b.cap2578
  %b.cap.need581 = icmp slt i64 %b.cap.grow580, %sum567
  %b.new.cap582 = select i1 %b.cap.need581, i64 %sum567, i64 %b.cap.grow580
  %b.cur.len2583 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load564, i32 0, i32 0
  %b.cur.len2584 = load i64, ptr %b.cur.len2583, align 8
  %b.cur.data2585 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load564, i32 0, i32 1
  %b.cur.data2586 = load ptr, ptr %b.cur.data2585, align 8
  %b.new.buf.len2587 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap582, i64 1)
  %sum588 = extractvalue { i64, i1 } %b.new.buf.len2587, 0
  %ovf589 = extractvalue { i64, i1 } %b.new.buf.len2587, 1
  br i1 %ovf589, label %str_overflow_abort591, label %b.new.buf.len2590

b.nogrow2576:                                     ; preds = %b.app.new.len569
  br label %b.grow_done577

b.grow_done577:                                   ; preds = %b.nogrow2576, %b.new.buf.len2590
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load564, i32 0, i32 1
  %b.app.data598 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data598, i64 %b.app.cur.len566
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len565, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data598, i64 %sum567
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep599 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load564, i32 0, i32 0
  store i64 %sum567, ptr %b.len.gep599, align 8
  %var.load600 = load i64, ptr %"var.e'", align 8
  %subtmp601 = sub i64 0, %var.load600
  %subtmp602 = sub i64 %subtmp601, 1
  store i64 0, ptr %loop.idx.52, align 8
  br label %loop.header.52

b.new.buf.len2590:                                ; preds = %abort.dead592, %b.grow2575
  %arena.cur593 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2594 = call ptr @dva_arena_alloc(ptr %arena.cur593, i64 %sum588)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2594, ptr align 1 %b.cur.data2586, i64 %b.cur.len2584, i1 false)
  %b.grow2.nul595 = getelementptr i8, ptr %b.new.buf2594, i64 %b.cur.len2584
  store i8 0, ptr %b.grow2.nul595, align 1
  %b.new.data2.gep596 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load564, i32 0, i32 1
  store ptr %b.new.buf2594, ptr %b.new.data2.gep596, align 8
  %b.new.cap2.gep597 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load564, i32 0, i32 2
  store i64 %b.new.cap582, ptr %b.new.cap2.gep597, align 8
  br label %b.grow_done577

str_overflow_abort591:                            ; preds = %b.grow2575
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead592:                                    ; No predecessors!
  br label %b.new.buf.len2590

loop.header.52:                                   ; preds = %loop.latch.52, %b.grow_done577
  %counter.load603 = load i64, ptr %loop.idx.52, align 8
  %loop.cond604 = icmp slt i64 %counter.load603, %subtmp602
  br i1 %loop.cond604, label %loop.body.52, label %loop.exit.nat.52

loop.body.52:                                     ; preds = %loop.header.52
  %loop.rel.i605 = sub i64 %counter.load603, 0
  store i64 1, ptr %loop.step.52, align 8
  store i64 %loop.rel.i605, ptr %var._i606, align 8
  store i64 %counter.load603, ptr %var._607, align 8
  store i64 %counter.load603, ptr %var.i, align 8
  %b.load608 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len609 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load608, i32 0, i32 0
  %b.rn.cur.len610 = load i64, ptr %b.rn.cur.len609, align 8
  %b.rn.new.len611 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len610, i64 1)
  %sum612 = extractvalue { i64, i1 } %b.rn.new.len611, 0
  %ovf613 = extractvalue { i64, i1 } %b.rn.new.len611, 1
  br i1 %ovf613, label %str_overflow_abort615, label %b.rn.new.len614

loop.exit.nat.52:                                 ; preds = %loop.header.52
  br label %loop.exit.52

loop.latch.52:                                    ; preds = %br.done.53
  %step.val654 = load i64, ptr %loop.step.52, align 8
  %loop.next655 = add i64 %counter.load603, %step.val654
  store i64 %loop.next655, ptr %loop.idx.52, align 8
  br label %loop.header.52

loop.exit.52:                                     ; preds = %loop.exit.nat.52
  store i64 0, ptr %loop.idx.54, align 8
  br label %loop.header.54

b.rn.new.len614:                                  ; preds = %abort.dead616, %loop.body.52
  %b.cap617 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load608, i32 0, i32 2
  %b.cap618 = load i64, ptr %b.cap617, align 8
  %b.need.grow619 = icmp slt i64 %b.cap618, %sum612
  br i1 %b.need.grow619, label %b.grow2620, label %b.nogrow2621

str_overflow_abort615:                            ; preds = %loop.body.52
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead616:                                    ; No predecessors!
  br label %b.rn.new.len614

b.grow2620:                                       ; preds = %b.rn.new.len614
  %b.cap2623 = mul i64 %b.cap618, 2
  %b.cap.small624 = icmp slt i64 %b.cap2623, 16
  %b.cap.grow625 = select i1 %b.cap.small624, i64 16, i64 %b.cap2623
  %b.cap.need626 = icmp slt i64 %b.cap.grow625, %sum612
  %b.new.cap627 = select i1 %b.cap.need626, i64 %sum612, i64 %b.cap.grow625
  %b.cur.len2628 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load608, i32 0, i32 0
  %b.cur.len2629 = load i64, ptr %b.cur.len2628, align 8
  %b.cur.data2630 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load608, i32 0, i32 1
  %b.cur.data2631 = load ptr, ptr %b.cur.data2630, align 8
  %b.new.buf.len2632 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap627, i64 1)
  %sum633 = extractvalue { i64, i1 } %b.new.buf.len2632, 0
  %ovf634 = extractvalue { i64, i1 } %b.new.buf.len2632, 1
  br i1 %ovf634, label %str_overflow_abort636, label %b.new.buf.len2635

b.nogrow2621:                                     ; preds = %b.rn.new.len614
  br label %b.grow_done622

b.grow_done622:                                   ; preds = %b.nogrow2621, %b.new.buf.len2635
  %b.rn.data643 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load608, i32 0, i32 1
  %b.rn.data644 = load ptr, ptr %b.rn.data643, align 8
  %b.rn.dst645 = getelementptr i8, ptr %b.rn.data644, i64 %b.rn.cur.len610
  br i1 true, label %br.b1.53, label %br.c2.53

b.new.buf.len2635:                                ; preds = %abort.dead637, %b.grow2620
  %arena.cur638 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2639 = call ptr @dva_arena_alloc(ptr %arena.cur638, i64 %sum633)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2639, ptr align 1 %b.cur.data2631, i64 %b.cur.len2629, i1 false)
  %b.grow2.nul640 = getelementptr i8, ptr %b.new.buf2639, i64 %b.cur.len2629
  store i8 0, ptr %b.grow2.nul640, align 1
  %b.new.data2.gep641 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load608, i32 0, i32 1
  store ptr %b.new.buf2639, ptr %b.new.data2.gep641, align 8
  %b.new.cap2.gep642 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load608, i32 0, i32 2
  store i64 %b.new.cap627, ptr %b.new.cap2.gep642, align 8
  br label %b.grow_done622

str_overflow_abort636:                            ; preds = %b.grow2620
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead637:                                    ; No predecessors!
  br label %b.new.buf.len2635

br.b1.53:                                         ; preds = %b.grow_done622
  store i8 48, ptr %b.rn.dst645, align 1
  br label %br.done.53

br.c2.53:                                         ; preds = %b.grow_done622
  br i1 true, label %br.b2.53, label %br.c3.53

br.b2.53:                                         ; preds = %br.c2.53
  store i8 -64, ptr %b.rn.dst645, align 1
  %br.dst1646 = getelementptr i8, ptr %b.rn.dst645, i64 1
  store i8 -80, ptr %br.dst1646, align 1
  br label %br.done.53

br.c3.53:                                         ; preds = %br.c2.53
  br i1 true, label %br.b3.53, label %br.b4.53

br.b3.53:                                         ; preds = %br.c3.53
  store i8 -32, ptr %b.rn.dst645, align 1
  %br.dst1.3647 = getelementptr i8, ptr %b.rn.dst645, i64 1
  store i8 -128, ptr %br.dst1.3647, align 1
  %br.dst2.3648 = getelementptr i8, ptr %b.rn.dst645, i64 2
  store i8 -80, ptr %br.dst2.3648, align 1
  br label %br.done.53

br.b4.53:                                         ; preds = %br.c3.53
  store i8 -16, ptr %b.rn.dst645, align 1
  %br.dst1.4649 = getelementptr i8, ptr %b.rn.dst645, i64 1
  store i8 -128, ptr %br.dst1.4649, align 1
  %br.dst2.4650 = getelementptr i8, ptr %b.rn.dst645, i64 2
  store i8 -128, ptr %br.dst2.4650, align 1
  %br.dst3.4651 = getelementptr i8, ptr %b.rn.dst645, i64 3
  store i8 -80, ptr %br.dst3.4651, align 1
  br label %br.done.53

br.done.53:                                       ; preds = %br.b4.53, %br.b3.53, %br.b2.53, %br.b1.53
  %br.nul652 = getelementptr i8, ptr %b.rn.data644, i64 %sum612
  store i8 0, ptr %br.nul652, align 1
  %b.len.gep653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load608, i32 0, i32 0
  store i64 %sum612, ptr %b.len.gep653, align 8
  br label %loop.latch.52

loop.header.54:                                   ; preds = %loop.latch.54, %loop.exit.52
  %counter.load656 = load i64, ptr %loop.idx.54, align 8
  %loop.cond657 = icmp slt i64 %counter.load656, 6
  br i1 %loop.cond657, label %loop.body.54, label %loop.exit.nat.54

loop.body.54:                                     ; preds = %loop.header.54
  %loop.rel.i658 = sub i64 %counter.load656, 0
  store i64 1, ptr %loop.step.54, align 8
  store i64 %loop.rel.i658, ptr %var._i659, align 8
  store i64 %counter.load656, ptr %var._660, align 8
  store i64 %counter.load656, ptr %var.i, align 8
  %b.load661 = load ptr, ptr %var.b, align 8
  %var.load662 = load ptr, ptr %var.ms, align 8
  %s.read.len663 = getelementptr inbounds { i64, ptr }, ptr %var.load662, i32 0, i32 0
  %s.read.len664 = load i64, ptr %s.read.len663, align 8
  %s.read.len665 = and i64 %s.read.len664, 281474976710655
  %s.read.data666 = getelementptr inbounds { i64, ptr }, ptr %var.load662, i32 0, i32 1
  %s.read.data667 = load ptr, ptr %s.read.data666, align 8
  %var.load668 = load i64, ptr %var.i, align 8
  %idx.oob669 = icmp uge i64 %var.load668, %s.read.len665
  br i1 %idx.oob669, label %idx_oob671, label %idx_ok670

loop.exit.nat.54:                                 ; preds = %loop.header.54
  br label %loop.exit.54

loop.latch.54:                                    ; preds = %b.push_done692
  %step.val715 = load i64, ptr %loop.step.54, align 8
  %loop.next716 = add i64 %counter.load656, %step.val715
  store i64 %loop.next716, ptr %loop.idx.54, align 8
  br label %loop.header.54

loop.exit.54:                                     ; preds = %loop.exit.nat.54
  br label %choice.exit387

idx_ok670:                                        ; preds = %abort.dead672, %loop.body.54
  %s.byte.gep673 = getelementptr i8, ptr %s.read.data667, i64 %var.load668
  %s.byte674 = load i8, ptr %s.byte.gep673, align 1
  %s.byte.val675 = zext i8 %s.byte674 to i64
  %b.b.ge0676 = icmp sge i64 %s.byte.val675, 0
  %b.b.le255677 = icmp sle i64 %s.byte.val675, 255
  %b.byte.range678 = and i1 %b.b.ge0676, %b.b.le255677
  br i1 %b.byte.range678, label %b.byte_ok679, label %b.byte_err680

idx_oob671:                                       ; preds = %loop.body.54
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead672:                                    ; No predecessors!
  br label %idx_ok670

b.byte_ok679:                                     ; preds = %abort.dead681, %idx_ok670
  %b.byte.i8682 = trunc i64 %s.byte.val675 to i8
  %b.len683 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load661, i32 0, i32 0
  %b.len684 = load i64, ptr %b.len683, align 8
  %b.cap685 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load661, i32 0, i32 2
  %b.cap686 = load i64, ptr %b.cap685, align 8
  %b.data687 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load661, i32 0, i32 1
  %b.data688 = load ptr, ptr %b.data687, align 8
  %b.needs.grow689 = icmp eq i64 %b.len684, %b.cap686
  br i1 %b.needs.grow689, label %b.grow690, label %b.nogrow691

b.byte_err680:                                    ; preds = %idx_ok670
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead681:                                    ; No predecessors!
  br label %b.byte_ok679

b.grow690:                                        ; preds = %b.byte_ok679
  %b.cap2693 = mul i64 %b.cap686, 2
  %b.cap.small694 = icmp slt i64 %b.cap2693, 16
  %b.new.cap695 = select i1 %b.cap.small694, i64 16, i64 %b.cap2693
  %b.new.buf.len696 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap695, i64 1)
  %sum697 = extractvalue { i64, i1 } %b.new.buf.len696, 0
  %ovf698 = extractvalue { i64, i1 } %b.new.buf.len696, 1
  br i1 %ovf698, label %str_overflow_abort700, label %b.new.buf.len699

b.nogrow691:                                      ; preds = %b.byte_ok679
  br label %b.push_done692

b.push_done692:                                   ; preds = %b.nogrow691, %b.new.buf.len699
  %b.cur.data707 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load661, i32 0, i32 1
  %b.cur.data708 = load ptr, ptr %b.cur.data707, align 8
  %b.cur.len709 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load661, i32 0, i32 0
  %b.cur.len710 = load i64, ptr %b.cur.len709, align 8
  %b.byte.gep711 = getelementptr i8, ptr %b.cur.data708, i64 %b.cur.len710
  store i8 %b.byte.i8682, ptr %b.byte.gep711, align 1
  %b.next.len712 = add i64 %b.cur.len710, 1
  %b.nul713 = getelementptr i8, ptr %b.cur.data708, i64 %b.next.len712
  store i8 0, ptr %b.nul713, align 1
  %b.len.gep714 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load661, i32 0, i32 0
  store i64 %b.next.len712, ptr %b.len.gep714, align 8
  br label %loop.latch.54

b.new.buf.len699:                                 ; preds = %abort.dead701, %b.grow690
  %arena.cur702 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf703 = call ptr @dva_arena_alloc(ptr %arena.cur702, i64 %sum697)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf703, ptr align 1 %b.data688, i64 %b.len684, i1 false)
  %b.grow.nul704 = getelementptr i8, ptr %b.new.buf703, i64 %b.len684
  store i8 0, ptr %b.grow.nul704, align 1
  %b.new.data.gep705 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load661, i32 0, i32 1
  store ptr %b.new.buf703, ptr %b.new.data.gep705, align 8
  %b.new.cap.gep706 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load661, i32 0, i32 2
  store i64 %b.new.cap695, ptr %b.new.cap.gep706, align 8
  br label %b.push_done692

str_overflow_abort700:                            ; preds = %b.grow690
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead701:                                    ; No predecessors!
  br label %b.new.buf.len699

loop.header.55:                                   ; preds = %loop.latch.55, %choice.exit222
  %counter.load734 = load i64, ptr %loop.idx.55, align 8
  %loop.cond735 = icmp slt i64 %counter.load734, %str.len731
  br i1 %loop.cond735, label %loop.body.55, label %loop.exit.nat.55

loop.body.55:                                     ; preds = %loop.header.55
  %loop.rel.i736 = sub i64 %counter.load734, 0
  store i64 1, ptr %loop.step.55, align 8
  %s.byte.gep737 = getelementptr i8, ptr %s.read.data733, i64 %counter.load734
  %s.byte738 = load i8, ptr %s.byte.gep737, align 1
  %s.byte.val739 = zext i8 %s.byte738 to i64
  store i64 %loop.rel.i736, ptr %var._i740, align 8
  store i64 %s.byte.val739, ptr %var._741, align 8
  store i64 %s.byte.val739, ptr %var.ch_, align 8
  store i64 %loop.rel.i736, ptr %var.i, align 8
  %var.load742 = load i64, ptr %var.ch_, align 8
  %cmptmp743 = icmp eq i64 %var.load742, 46
  br i1 %cmptmp743, label %choice.then744, label %choice.exit745

loop.exit.nat.55:                                 ; preds = %loop.header.55
  %loop.rel.end = sub i64 %counter.load734, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.55

loop.latch.55:                                    ; preds = %choice.exit745
  %step.val747 = load i64, ptr %loop.step.55, align 8
  %loop.next748 = add i64 %counter.load734, %step.val747
  store i64 %loop.next748, ptr %loop.idx.55, align 8
  br label %loop.header.55

loop.exit.55:                                     ; preds = %loop.exit.nat.55
  %var.load749 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load749, i32 0, i32 0
  %str.len.query750 = load i64, ptr %str.len.query, align 8
  %str.len.query751 = and i64 %str.len.query750, 281474976710655
  store i64 %str.len.query751, ptr %var.len, align 8
  %var.load752 = load i64, ptr %var.len, align 8
  store i64 %var.load752, ptr %"var.end'", align 8
  %var.load753 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp754 = icmp sge i64 %var.load753, 0
  br i1 %cmptmp754, label %choice.then755, label %choice.exit756

choice.then744:                                   ; preds = %loop.body.55
  %var.load746 = load i64, ptr %var.i, align 8
  store i64 %var.load746, ptr %"var.dot_pos'", align 8
  br label %choice.exit745

choice.exit745:                                   ; preds = %choice.then744, %loop.body.55
  br label %loop.latch.55

choice.then755:                                   ; preds = %loop.exit.55
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

choice.exit756:                                   ; preds = %choice.exit793, %loop.exit.55
  %var.load795 = load ptr, ptr %var.full, align 8
  %s.read.len796 = getelementptr inbounds { i64, ptr }, ptr %var.load795, i32 0, i32 0
  %s.read.len797 = load i64, ptr %s.read.len796, align 8
  %s.read.len798 = and i64 %s.read.len797, 281474976710655
  %s.read.data799 = getelementptr inbounds { i64, ptr }, ptr %var.load795, i32 0, i32 1
  %s.read.data800 = load ptr, ptr %s.read.data799, align 8
  %var.load801 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len798, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len798
  %final.start = select i1 %start.gt.len, i64 %s.read.len798, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load801, 0
  %rel.end = add i64 %s.read.len798, %var.load801
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load801
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len798
  %final.end = select i1 %end.gt.len, i64 %s.read.len798, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data800, i64 %final.start
  %str.build.len.gep802 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep802, align 8
  %str.build.data.gep803 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep803, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load804 = load i64, ptr %"var.e'", align 8
  %cmptmp805 = icmp slt i64 %var.load804, 0
  br i1 %cmptmp805, label %choice.then806, label %choice.else807

loop.header.56:                                   ; preds = %loop.latch.56, %choice.then755
  %counter.load757 = load i64, ptr %loop.idx.56, align 8
  br label %loop.body.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i758 = sub i64 %counter.load757, 0
  store i64 1, ptr %loop.step.56, align 8
  store i64 %loop.rel.i758, ptr %var._i759, align 8
  store i64 %counter.load757, ptr %var._760, align 8
  %var.load761 = load i64, ptr %"var.end'", align 8
  %subtmp762 = sub i64 %var.load761, 1
  %var.load763 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp764 = icmp sgt i64 %subtmp762, %var.load763
  br i1 %cmptmp764, label %and.57.then, label %and.57.else

loop.exit.nat.56:                                 ; No predecessors!
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit783
  %step.val786 = load i64, ptr %loop.step.56, align 8
  %loop.next787 = add i64 %counter.load757, %step.val786
  store i64 %loop.next787, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %choice.else782, %loop.exit.nat.56
  %var.load788 = load i64, ptr %"var.end'", align 8
  %subtmp789 = sub i64 %var.load788, 1
  %var.load790 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp791 = icmp eq i64 %subtmp789, %var.load790
  br i1 %cmptmp791, label %choice.then792, label %choice.exit793

and.57.then:                                      ; preds = %loop.body.56
  %var.load765 = load ptr, ptr %var.full, align 8
  %s.read.len766 = getelementptr inbounds { i64, ptr }, ptr %var.load765, i32 0, i32 0
  %s.read.len767 = load i64, ptr %s.read.len766, align 8
  %s.read.len768 = and i64 %s.read.len767, 281474976710655
  %s.read.data769 = getelementptr inbounds { i64, ptr }, ptr %var.load765, i32 0, i32 1
  %s.read.data770 = load ptr, ptr %s.read.data769, align 8
  %var.load771 = load i64, ptr %"var.end'", align 8
  %subtmp772 = sub i64 %var.load771, 1
  %idx.oob773 = icmp uge i64 %subtmp772, %s.read.len768
  br i1 %idx.oob773, label %idx_oob775, label %idx_ok774

and.57.else:                                      ; preds = %loop.body.56
  br label %and.57.exit

and.57.exit:                                      ; preds = %and.57.else, %idx_ok774
  %and.57.phi = phi i1 [ %cmptmp780, %idx_ok774 ], [ %cmptmp764, %and.57.else ]
  br i1 %and.57.phi, label %choice.then781, label %choice.else782

idx_ok774:                                        ; preds = %abort.dead776, %and.57.then
  %s.byte.gep777 = getelementptr i8, ptr %s.read.data770, i64 %subtmp772
  %s.byte778 = load i8, ptr %s.byte.gep777, align 1
  %s.byte.val779 = zext i8 %s.byte778 to i64
  %cmptmp780 = icmp eq i64 %s.byte.val779, 48
  br label %and.57.exit

idx_oob775:                                       ; preds = %and.57.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead776:                                    ; No predecessors!
  br label %idx_ok774

choice.then781:                                   ; preds = %and.57.exit
  %var.load784 = load i64, ptr %"var.end'", align 8
  %subtmp785 = sub i64 %var.load784, 1
  store i64 %subtmp785, ptr %"var.end'", align 8
  br label %choice.exit783

choice.else782:                                   ; preds = %and.57.exit
  br label %loop.exit.56

choice.exit783:                                   ; preds = %choice.then781
  br label %loop.latch.56

choice.then792:                                   ; preds = %loop.exit.56
  %var.load794 = load i64, ptr %"var.dot_pos'", align 8
  store i64 %var.load794, ptr %"var.end'", align 8
  br label %choice.exit793

choice.exit793:                                   ; preds = %choice.then792, %loop.exit.56
  br label %choice.exit756

choice.then806:                                   ; preds = %choice.exit756
  %cat.lit.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %var.load809 = load i64, ptr %"var.e'", align 8
  %subtmp810 = sub i64 0, %var.load809
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %subtmp810, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 %cat.ilen)
  %sum811 = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf812 = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf812, label %str_overflow_abort814, label %cat.sum.len813

choice.else807:                                   ; preds = %choice.exit756
  %var.load825 = load i64, ptr %"var.e'", align 8
  %call.res826 = call { i64, ptr } @"str::from_int"(i64 %var.load825)
  store { i64, ptr } %call.res826, ptr %ret.ub.salloc827, align 8
  br label %choice.exit808

choice.exit808:                                   ; preds = %choice.else807, %concat.tot.len818
  %choice.res828 = phi ptr [ %concat.str, %concat.tot.len818 ], [ %ret.ub.salloc827, %choice.else807 ]
  store ptr %choice.res828, ptr %var.es, align 8
  %var.load829 = load i64, ptr %"var.e'", align 8
  %cmptmp830 = icmp slt i64 %var.load829, -4
  br i1 %cmptmp830, label %or.58.then, label %or.58.else

cat.sum.len813:                                   ; preds = %abort.dead815, %choice.then806
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum811, i64 1)
  %sum816 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf817 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf817, label %str_overflow_abort819, label %concat.tot.len818

str_overflow_abort814:                            ; preds = %choice.then806
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead815:                                    ; No predecessors!
  br label %cat.sum.len813

concat.tot.len818:                                ; preds = %abort.dead820, %cat.sum.len813
  %arena.cur821 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur821, i64 %sum816)
  %cat.dst = getelementptr i8, ptr %concat.buf, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst, ptr align 1 %cat.lit.data, i64 1, i1 false)
  %cat.dst822 = getelementptr i8, ptr %concat.buf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst822, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum811
  store i8 0, ptr %concat.nul, align 1
  %str.build.len.gep823 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum811, ptr %str.build.len.gep823, align 8
  %str.build.data.gep824 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep824, align 8
  br label %choice.exit808

str_overflow_abort819:                            ; preds = %cat.sum.len813
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead820:                                    ; No predecessors!
  br label %concat.tot.len818

or.58.then:                                       ; preds = %choice.exit808
  br label %or.58.exit

or.58.else:                                       ; preds = %choice.exit808
  %var.load831 = load i64, ptr %"var.e'", align 8
  %cmptmp832 = icmp sge i64 %var.load831, 6
  br label %or.58.exit

or.58.exit:                                       ; preds = %or.58.else, %or.58.then
  %or.58.phi = phi i1 [ %cmptmp830, %or.58.then ], [ %cmptmp832, %or.58.else ]
  br i1 %or.58.phi, label %choice.then833, label %choice.else834

choice.then833:                                   ; preds = %or.58.exit
  %var.load836 = load ptr, ptr %var.mant, align 8
  %cat.seg = getelementptr inbounds { i64, ptr }, ptr %var.load836, i32 0, i32 0
  %cat.seg837 = load i64, ptr %cat.seg, align 8
  %cat.seg838 = and i64 %cat.seg837, 281474976710655
  %cat.seg839 = getelementptr inbounds { i64, ptr }, ptr %var.load836, i32 0, i32 1
  %cat.seg840 = load ptr, ptr %cat.seg839, align 8
  %cat.lit.data841 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %var.load842 = load ptr, ptr %var.es, align 8
  %cat.seg843 = getelementptr inbounds { i64, ptr }, ptr %var.load842, i32 0, i32 0
  %cat.seg844 = load i64, ptr %cat.seg843, align 8
  %cat.seg845 = and i64 %cat.seg844, 281474976710655
  %cat.seg846 = getelementptr inbounds { i64, ptr }, ptr %var.load842, i32 0, i32 1
  %cat.seg847 = load ptr, ptr %cat.seg846, align 8
  %cat.sum.len848 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg838, i64 1)
  %sum849 = extractvalue { i64, i1 } %cat.sum.len848, 0
  %ovf850 = extractvalue { i64, i1 } %cat.sum.len848, 1
  br i1 %ovf850, label %str_overflow_abort852, label %cat.sum.len851

choice.else834:                                   ; preds = %or.58.exit
  %var.load876 = load ptr, ptr %var.mant, align 8
  br label %choice.exit835

choice.exit835:                                   ; preds = %choice.else834, %concat.tot.len863
  %choice.res877 = phi ptr [ %concat.str873, %concat.tot.len863 ], [ %var.load876, %choice.else834 ]
  %ret.pack878 = load { i64, ptr }, ptr %choice.res877, align 8
  ret { i64, ptr } %ret.pack878

cat.sum.len851:                                   ; preds = %abort.dead853, %choice.then833
  %cat.sum.len854 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum849, i64 %cat.seg845)
  %sum855 = extractvalue { i64, i1 } %cat.sum.len854, 0
  %ovf856 = extractvalue { i64, i1 } %cat.sum.len854, 1
  br i1 %ovf856, label %str_overflow_abort858, label %cat.sum.len857

str_overflow_abort852:                            ; preds = %choice.then833
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead853:                                    ; No predecessors!
  br label %cat.sum.len851

cat.sum.len857:                                   ; preds = %abort.dead859, %cat.sum.len851
  %concat.tot.len860 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum855, i64 1)
  %sum861 = extractvalue { i64, i1 } %concat.tot.len860, 0
  %ovf862 = extractvalue { i64, i1 } %concat.tot.len860, 1
  br i1 %ovf862, label %str_overflow_abort864, label %concat.tot.len863

str_overflow_abort858:                            ; preds = %cat.sum.len851
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead859:                                    ; No predecessors!
  br label %cat.sum.len857

concat.tot.len863:                                ; preds = %abort.dead865, %cat.sum.len857
  %arena.cur866 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf867 = call ptr @dva_arena_alloc(ptr %arena.cur866, i64 %sum861)
  %cat.dst868 = getelementptr i8, ptr %concat.buf867, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst868, ptr align 1 %cat.seg840, i64 %cat.seg838, i1 false)
  %cat.off = add i64 0, %cat.seg838
  %cat.dst869 = getelementptr i8, ptr %concat.buf867, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst869, ptr align 1 %cat.lit.data841, i64 1, i1 false)
  %cat.off870 = add i64 %cat.off, 1
  %cat.dst871 = getelementptr i8, ptr %concat.buf867, i64 %cat.off870
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst871, ptr align 1 %cat.seg847, i64 %cat.seg845, i1 false)
  %concat.nul872 = getelementptr i8, ptr %concat.buf867, i64 %sum855
  store i8 0, ptr %concat.nul872, align 1
  %str.build.len.gep874 = getelementptr inbounds { i64, ptr }, ptr %concat.str873, i32 0, i32 0
  store i64 %sum855, ptr %str.build.len.gep874, align 8
  %str.build.data.gep875 = getelementptr inbounds { i64, ptr }, ptr %concat.str873, i32 0, i32 1
  store ptr %concat.buf867, ptr %str.build.data.gep875, align 8
  br label %choice.exit835

str_overflow_abort864:                            ; preds = %cat.sum.len857
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead865:                                    ; No predecessors!
  br label %concat.tot.len863
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i64 @"str::cmp"(ptr %0, ptr %1) #3 {
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
  store i64 %str.len.query2, ptr %var.la, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  store i64 %str.len.query6, ptr %var.lb, align 8
  %var.load7 = load i64, ptr %var.la, align 8
  %var.load8 = load i64, ptr %var.lb, align 8
  %cmptmp = icmp slt i64 %var.load7, %var.load8
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load9 = load i64, ptr %var.la, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load10 = load i64, ptr %var.lb, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load9, %choice.then ], [ %var.load10, %choice.else ]
  store i64 %choice.res, ptr %var.n, align 8
  %var.load11 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit
  %counter.load = load i64, ptr %loop.idx.59, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load11
  br i1 %loop.cond, label %loop.body.59, label %loop.exit.nat.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load12 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %s.read.data15 = load ptr, ptr %s.read.data, align 8
  %var.load16 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load16, %s.read.len14
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit35
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  %var.load43 = load i64, ptr %var.la, align 8
  %var.load44 = load i64, ptr %var.lb, align 8
  %cmptmp45 = icmp eq i64 %var.load43, %var.load44
  br i1 %cmptmp45, label %choice.then46, label %choice.else47

idx_ok:                                           ; preds = %abort.dead, %loop.body.59
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ca, align 8
  %var.load17 = load ptr, ptr %var.b, align 8
  %s.read.len18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len19 = load i64, ptr %s.read.len18, align 8
  %s.read.len20 = and i64 %s.read.len19, 281474976710655
  %s.read.data21 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data21, align 8
  %var.load23 = load i64, ptr %var.i, align 8
  %idx.oob24 = icmp uge i64 %var.load23, %s.read.len20
  br i1 %idx.oob24, label %idx_oob26, label %idx_ok25

idx_oob:                                          ; preds = %loop.body.59
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

idx_ok25:                                         ; preds = %abort.dead27, %idx_ok
  %s.byte.gep28 = getelementptr i8, ptr %s.read.data22, i64 %var.load23
  %s.byte29 = load i8, ptr %s.byte.gep28, align 1
  %s.byte.val30 = zext i8 %s.byte29 to i64
  store i64 %s.byte.val30, ptr %var.cb, align 8
  %var.load31 = load i64, ptr %var.ca, align 8
  %var.load32 = load i64, ptr %var.cb, align 8
  %cmptmp33 = icmp ne i64 %var.load31, %var.load32
  br i1 %cmptmp33, label %choice.then34, label %choice.exit35

idx_oob26:                                        ; preds = %idx_ok
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %idx_ok25

choice.then34:                                    ; preds = %idx_ok25
  %var.load36 = load i64, ptr %var.ca, align 8
  %var.load37 = load i64, ptr %var.cb, align 8
  %cmptmp38 = icmp slt i64 %var.load36, %var.load37
  br i1 %cmptmp38, label %choice.then39, label %choice.else40

choice.exit35:                                    ; preds = %ret.dead, %idx_ok25
  br label %loop.latch.59

choice.then39:                                    ; preds = %choice.then34
  br label %choice.exit41

choice.else40:                                    ; preds = %choice.then34
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.else40, %choice.then39
  %choice.res42 = phi i64 [ -1, %choice.then39 ], [ 1, %choice.else40 ]
  ret i64 %choice.res42

ret.dead:                                         ; No predecessors!
  br label %choice.exit35

choice.then46:                                    ; preds = %loop.exit.59
  br label %choice.exit48

choice.else47:                                    ; preds = %loop.exit.59
  %var.load49 = load i64, ptr %var.la, align 8
  %var.load50 = load i64, ptr %var.lb, align 8
  %cmptmp51 = icmp slt i64 %var.load49, %var.load50
  br i1 %cmptmp51, label %choice.then52, label %choice.else53

choice.exit48:                                    ; preds = %choice.exit54, %choice.then46
  %choice.res56 = phi i64 [ 0, %choice.then46 ], [ %choice.res55, %choice.exit54 ]
  ret i64 %choice.res56

choice.then52:                                    ; preds = %choice.else47
  br label %choice.exit54

choice.else53:                                    ; preds = %choice.else47
  br label %choice.exit54

choice.exit54:                                    ; preds = %choice.else53, %choice.then52
  %choice.res55 = phi i64 [ -1, %choice.then52 ], [ 1, %choice.else53 ]
  br label %choice.exit48
}

define i1 @"str::lt"(ptr %0, ptr %1) #3 {
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

define ptr @"str::to_int"(ptr %0) #3 {
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
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.60, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.60

loop.header.60:                                   ; preds = %loop.latch.60, %entry
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

define ptr @"str::to_hex"(ptr %0) #3 {
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
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.61, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.61

loop.header.61:                                   ; preds = %loop.latch.61, %entry
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

declare { i1, i64 } @"ascii::hex_value"(i64) #3

define { i64, ptr } @"str::hex_to_str"(i64 %0) #3 {
entry:
  %builder.freeze229 = alloca { i64, ptr }, align 8
  %var._169 = alloca i64, align 8
  %var._i168 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.66 = alloca i64, align 8
  %loop.idx.66 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %builder.new.salloc149 = alloca { i64, ptr, i64 }, align 8
  %var.s = alloca ptr, align 8
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.ch = alloca i64, align 8
  %var.digit = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.neg = alloca i1, align 1
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.val = alloca i64, align 8
  store i64 %0, ptr %var.val, align 8
  %var.load = load i64, ptr %var.val, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %ret.dead
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load2 = load i64, ptr %var.val, align 8
  %cmptmp = icmp slt i64 %var.load2, 0
  store i1 %cmptmp, ptr %var.neg, align 1
  %var.load3 = load i1, ptr %var.neg, align 1
  br i1 %var.load3, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

choice.then:                                      ; preds = %b.buf.len1
  %var.load5 = load i64, ptr %var.val, align 8
  %subtmp = sub i64 0, %var.load5
  br label %choice.exit4

choice.else:                                      ; preds = %b.buf.len1
  %var.load6 = load i64, ptr %var.val, align 8
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ %var.load6, %choice.else ]
  store i64 %choice.res, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.header.62:                                   ; preds = %loop.latch.62, %choice.exit4
  %counter.load = load i64, ptr %loop.idx.62, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.62, label %loop.exit.nat.62

loop.body.62:                                     ; preds = %loop.header.62
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.62, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load7 = load i64, ptr %"var.n'", align 8
  %cmptmp11 = icmp ugt i64 %var.load7, 0
  br i1 %cmptmp11, label %choice.case9, label %choice.next10

loop.exit.nat.62:                                 ; preds = %loop.header.62
  br label %loop.exit.62

loop.latch.62:                                    ; preds = %choice.exit8
  %step.val = load i64, ptr %loop.step.62, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.exit.62:                                     ; preds = %choice.next10, %loop.exit.nat.62
  %b.load29 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  %b.rn.cur.len30 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len30, i64 1)
  %sum31 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf32 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf32, label %str_overflow_abort34, label %b.rn.new.len33

choice.exit8:                                     ; preds = %b.push_done
  br label %loop.latch.62

choice.case9:                                     ; preds = %loop.body.62
  %var.load12 = load i64, ptr %"var.n'", align 8
  %bandtmp = and i64 %var.load12, 15
  store i64 %bandtmp, ptr %var.digit, align 8
  %var.load13 = load i64, ptr %var.digit, align 8
  %call.res = call i64 @"ascii::hex_char_upper"(i64 %var.load13)
  store i64 %call.res, ptr %var.ch, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load14 = load i64, ptr %var.ch, align 8
  %b.b.ge0 = icmp sge i64 %var.load14, 0
  %b.b.le255 = icmp sle i64 %var.load14, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.next10:                                    ; preds = %loop.body.62
  br label %loop.exit.62

b.byte_ok:                                        ; preds = %abort.dead15, %choice.case9
  %b.byte.i8 = trunc i64 %var.load14 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len16 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data18 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len16, %b.cap17
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case9
  call void @dva_abort_b_byte_msg()
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
  %var.load28 = load i64, ptr %"var.n'", align 8
  %shrtmp = lshr i64 %var.load28, 4
  store i64 %shrtmp, ptr %"var.n'", align 8
  br label %choice.exit8

b.new.buf.len21:                                  ; preds = %abort.dead23, %b.grow
  %arena.cur24 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead23:                                     ; No predecessors!
  br label %b.new.buf.len21

b.rn.new.len33:                                   ; preds = %abort.dead35, %loop.exit.62
  %b.cap36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap36, align 8
  %b.need.grow = icmp slt i64 %b.cap37, %sum31
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort34:                             ; preds = %loop.exit.62
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %b.rn.new.len33

b.grow2:                                          ; preds = %b.rn.new.len33
  %b.cap238 = mul i64 %b.cap37, 2
  %b.cap.small39 = icmp slt i64 %b.cap238, 16
  %b.cap.grow = select i1 %b.cap.small39, i64 16, i64 %b.cap238
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum31
  %b.new.cap40 = select i1 %b.cap.need, i64 %sum31, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  %b.cur.len241 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  %b.cur.data242 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap40, i64 1)
  %sum43 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf44 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf44, label %str_overflow_abort46, label %b.new.buf.len245

b.nogrow2:                                        ; preds = %b.rn.new.len33
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len245
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  %b.rn.data49 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data49, i64 %b.rn.cur.len30
  br i1 true, label %br.b1.63, label %br.c2.63

b.new.buf.len245:                                 ; preds = %abort.dead47, %b.grow2
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data242, i64 %b.cur.len241, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len241
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 2
  store i64 %b.new.cap40, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort46:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %b.new.buf.len245

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
  %br.nul = getelementptr i8, ptr %b.rn.data49, i64 %sum31
  store i8 0, ptr %br.nul, align 1
  %b.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load29, i32 0, i32 0
  store i64 %sum31, ptr %b.len.gep50, align 8
  %b.load51 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len52 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.rn.cur.len53 = load i64, ptr %b.rn.cur.len52, align 8
  %b.rn.new.len54 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len53, i64 1)
  %sum55 = extractvalue { i64, i1 } %b.rn.new.len54, 0
  %ovf56 = extractvalue { i64, i1 } %b.rn.new.len54, 1
  br i1 %ovf56, label %str_overflow_abort58, label %b.rn.new.len57

b.rn.new.len57:                                   ; preds = %abort.dead59, %br.done.63
  %b.cap60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  %b.cap61 = load i64, ptr %b.cap60, align 8
  %b.need.grow62 = icmp slt i64 %b.cap61, %sum55
  br i1 %b.need.grow62, label %b.grow263, label %b.nogrow264

str_overflow_abort58:                             ; preds = %br.done.63
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead59:                                     ; No predecessors!
  br label %b.rn.new.len57

b.grow263:                                        ; preds = %b.rn.new.len57
  %b.cap266 = mul i64 %b.cap61, 2
  %b.cap.small67 = icmp slt i64 %b.cap266, 16
  %b.cap.grow68 = select i1 %b.cap.small67, i64 16, i64 %b.cap266
  %b.cap.need69 = icmp slt i64 %b.cap.grow68, %sum55
  %b.new.cap70 = select i1 %b.cap.need69, i64 %sum55, i64 %b.cap.grow68
  %b.cur.len271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.cur.len272 = load i64, ptr %b.cur.len271, align 8
  %b.cur.data273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.cur.data274 = load ptr, ptr %b.cur.data273, align 8
  %b.new.buf.len275 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap70, i64 1)
  %sum76 = extractvalue { i64, i1 } %b.new.buf.len275, 0
  %ovf77 = extractvalue { i64, i1 } %b.new.buf.len275, 1
  br i1 %ovf77, label %str_overflow_abort79, label %b.new.buf.len278

b.nogrow264:                                      ; preds = %b.rn.new.len57
  br label %b.grow_done65

b.grow_done65:                                    ; preds = %b.nogrow264, %b.new.buf.len278
  %b.rn.data86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.rn.data87 = load ptr, ptr %b.rn.data86, align 8
  %b.rn.dst88 = getelementptr i8, ptr %b.rn.data87, i64 %b.rn.cur.len53
  br i1 true, label %br.b1.64, label %br.c2.64

b.new.buf.len278:                                 ; preds = %abort.dead80, %b.grow263
  %arena.cur81 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf282 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 %sum76)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf282, ptr align 1 %b.cur.data274, i64 %b.cur.len272, i1 false)
  %b.grow2.nul83 = getelementptr i8, ptr %b.new.buf282, i64 %b.cur.len272
  store i8 0, ptr %b.grow2.nul83, align 1
  %b.new.data2.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  store ptr %b.new.buf282, ptr %b.new.data2.gep84, align 8
  %b.new.cap2.gep85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  store i64 %b.new.cap70, ptr %b.new.cap2.gep85, align 8
  br label %b.grow_done65

str_overflow_abort79:                             ; preds = %b.grow263
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead80:                                     ; No predecessors!
  br label %b.new.buf.len278

br.b1.64:                                         ; preds = %b.grow_done65
  store i8 48, ptr %b.rn.dst88, align 1
  br label %br.done.64

br.c2.64:                                         ; preds = %b.grow_done65
  br i1 true, label %br.b2.64, label %br.c3.64

br.b2.64:                                         ; preds = %br.c2.64
  store i8 -64, ptr %b.rn.dst88, align 1
  %br.dst189 = getelementptr i8, ptr %b.rn.dst88, i64 1
  store i8 -80, ptr %br.dst189, align 1
  br label %br.done.64

br.c3.64:                                         ; preds = %br.c2.64
  br i1 true, label %br.b3.64, label %br.b4.64

br.b3.64:                                         ; preds = %br.c3.64
  store i8 -32, ptr %b.rn.dst88, align 1
  %br.dst1.390 = getelementptr i8, ptr %b.rn.dst88, i64 1
  store i8 -128, ptr %br.dst1.390, align 1
  %br.dst2.391 = getelementptr i8, ptr %b.rn.dst88, i64 2
  store i8 -80, ptr %br.dst2.391, align 1
  br label %br.done.64

br.b4.64:                                         ; preds = %br.c3.64
  store i8 -16, ptr %b.rn.dst88, align 1
  %br.dst1.492 = getelementptr i8, ptr %b.rn.dst88, i64 1
  store i8 -128, ptr %br.dst1.492, align 1
  %br.dst2.493 = getelementptr i8, ptr %b.rn.dst88, i64 2
  store i8 -128, ptr %br.dst2.493, align 1
  %br.dst3.494 = getelementptr i8, ptr %b.rn.dst88, i64 3
  store i8 -80, ptr %br.dst3.494, align 1
  br label %br.done.64

br.done.64:                                       ; preds = %br.b4.64, %br.b3.64, %br.b2.64, %br.b1.64
  %br.nul95 = getelementptr i8, ptr %b.rn.data87, i64 %sum55
  store i8 0, ptr %br.nul95, align 1
  %b.len.gep96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  store i64 %sum55, ptr %b.len.gep96, align 8
  %var.load97 = load i1, ptr %var.neg, align 1
  br i1 %var.load97, label %choice.then98, label %choice.exit99

choice.then98:                                    ; preds = %br.done.64
  %b.load100 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len101 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 0
  %b.rn.cur.len102 = load i64, ptr %b.rn.cur.len101, align 8
  %b.rn.new.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len102, i64 1)
  %sum104 = extractvalue { i64, i1 } %b.rn.new.len103, 0
  %ovf105 = extractvalue { i64, i1 } %b.rn.new.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.rn.new.len106

choice.exit99:                                    ; preds = %br.done.65, %br.done.64
  %var.load146 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load146, i32 0, i32 0
  %b.freeze.len147 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load146, i32 0, i32 1
  %b.freeze.data148 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len147, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data148, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load146, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load146, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load146, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %b.data.gep150 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc149, i32 0, i32 1
  %b.len.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc149, i32 0, i32 0
  %b.cap.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc149, i32 0, i32 2
  %b.buf.len153 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum154 = extractvalue { i64, i1 } %b.buf.len153, 0
  %ovf155 = extractvalue { i64, i1 } %b.buf.len153, 1
  br i1 %ovf155, label %str_overflow_abort157, label %b.buf.len156

b.rn.new.len106:                                  ; preds = %abort.dead108, %choice.then98
  %b.cap109 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 2
  %b.cap110 = load i64, ptr %b.cap109, align 8
  %b.need.grow111 = icmp slt i64 %b.cap110, %sum104
  br i1 %b.need.grow111, label %b.grow2112, label %b.nogrow2113

str_overflow_abort107:                            ; preds = %choice.then98
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead108:                                    ; No predecessors!
  br label %b.rn.new.len106

b.grow2112:                                       ; preds = %b.rn.new.len106
  %b.cap2115 = mul i64 %b.cap110, 2
  %b.cap.small116 = icmp slt i64 %b.cap2115, 16
  %b.cap.grow117 = select i1 %b.cap.small116, i64 16, i64 %b.cap2115
  %b.cap.need118 = icmp slt i64 %b.cap.grow117, %sum104
  %b.new.cap119 = select i1 %b.cap.need118, i64 %sum104, i64 %b.cap.grow117
  %b.cur.len2120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 0
  %b.cur.len2121 = load i64, ptr %b.cur.len2120, align 8
  %b.cur.data2122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 1
  %b.cur.data2123 = load ptr, ptr %b.cur.data2122, align 8
  %b.new.buf.len2124 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap119, i64 1)
  %sum125 = extractvalue { i64, i1 } %b.new.buf.len2124, 0
  %ovf126 = extractvalue { i64, i1 } %b.new.buf.len2124, 1
  br i1 %ovf126, label %str_overflow_abort128, label %b.new.buf.len2127

b.nogrow2113:                                     ; preds = %b.rn.new.len106
  br label %b.grow_done114

b.grow_done114:                                   ; preds = %b.nogrow2113, %b.new.buf.len2127
  %b.rn.data135 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 1
  %b.rn.data136 = load ptr, ptr %b.rn.data135, align 8
  %b.rn.dst137 = getelementptr i8, ptr %b.rn.data136, i64 %b.rn.cur.len102
  br i1 true, label %br.b1.65, label %br.c2.65

b.new.buf.len2127:                                ; preds = %abort.dead129, %b.grow2112
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 %sum125)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2131, ptr align 1 %b.cur.data2123, i64 %b.cur.len2121, i1 false)
  %b.grow2.nul132 = getelementptr i8, ptr %b.new.buf2131, i64 %b.cur.len2121
  store i8 0, ptr %b.grow2.nul132, align 1
  %b.new.data2.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 1
  store ptr %b.new.buf2131, ptr %b.new.data2.gep133, align 8
  %b.new.cap2.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 2
  store i64 %b.new.cap119, ptr %b.new.cap2.gep134, align 8
  br label %b.grow_done114

str_overflow_abort128:                            ; preds = %b.grow2112
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead129:                                    ; No predecessors!
  br label %b.new.buf.len2127

br.b1.65:                                         ; preds = %b.grow_done114
  store i8 45, ptr %b.rn.dst137, align 1
  br label %br.done.65

br.c2.65:                                         ; preds = %b.grow_done114
  br i1 true, label %br.b2.65, label %br.c3.65

br.b2.65:                                         ; preds = %br.c2.65
  store i8 -64, ptr %b.rn.dst137, align 1
  %br.dst1138 = getelementptr i8, ptr %b.rn.dst137, i64 1
  store i8 -83, ptr %br.dst1138, align 1
  br label %br.done.65

br.c3.65:                                         ; preds = %br.c2.65
  br i1 true, label %br.b3.65, label %br.b4.65

br.b3.65:                                         ; preds = %br.c3.65
  store i8 -32, ptr %b.rn.dst137, align 1
  %br.dst1.3139 = getelementptr i8, ptr %b.rn.dst137, i64 1
  store i8 -128, ptr %br.dst1.3139, align 1
  %br.dst2.3140 = getelementptr i8, ptr %b.rn.dst137, i64 2
  store i8 -83, ptr %br.dst2.3140, align 1
  br label %br.done.65

br.b4.65:                                         ; preds = %br.c3.65
  store i8 -16, ptr %b.rn.dst137, align 1
  %br.dst1.4141 = getelementptr i8, ptr %b.rn.dst137, i64 1
  store i8 -128, ptr %br.dst1.4141, align 1
  %br.dst2.4142 = getelementptr i8, ptr %b.rn.dst137, i64 2
  store i8 -128, ptr %br.dst2.4142, align 1
  %br.dst3.4143 = getelementptr i8, ptr %b.rn.dst137, i64 3
  store i8 -83, ptr %br.dst3.4143, align 1
  br label %br.done.65

br.done.65:                                       ; preds = %br.b4.65, %br.b3.65, %br.b2.65, %br.b1.65
  %br.nul144 = getelementptr i8, ptr %b.rn.data136, i64 %sum104
  store i8 0, ptr %br.nul144, align 1
  %b.len.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load100, i32 0, i32 0
  store i64 %sum104, ptr %b.len.gep145, align 8
  br label %choice.exit99

b.buf.len156:                                     ; preds = %abort.dead158, %choice.exit99
  %arena.cur159 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 %sum154)
  %b.nul0161 = getelementptr i8, ptr %b.buf160, i64 0
  store i8 0, ptr %b.nul0161, align 1
  store i64 0, ptr %b.len.gep151, align 8
  store ptr %b.buf160, ptr %b.data.gep150, align 8
  store i64 32, ptr %b.cap.gep152, align 8
  store ptr %builder.new.salloc149, ptr %var.out, align 8
  %var.load162 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 0
  %str.len.query163 = load i64, ptr %str.len.query, align 8
  %str.len.query164 = and i64 %str.len.query163, 281474976710655
  store i64 0, ptr %loop.idx.66, align 8
  br label %loop.header.66

str_overflow_abort157:                            ; preds = %choice.exit99
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead158:                                    ; No predecessors!
  br label %b.buf.len156

loop.header.66:                                   ; preds = %loop.latch.66, %b.buf.len156
  %counter.load165 = load i64, ptr %loop.idx.66, align 8
  %loop.cond166 = icmp slt i64 %counter.load165, %str.len.query164
  br i1 %loop.cond166, label %loop.body.66, label %loop.exit.nat.66

loop.body.66:                                     ; preds = %loop.header.66
  %loop.rel.i167 = sub i64 %counter.load165, 0
  store i64 1, ptr %loop.step.66, align 8
  store i64 %loop.rel.i167, ptr %var._i168, align 8
  store i64 %counter.load165, ptr %var._169, align 8
  store i64 %counter.load165, ptr %var.i, align 8
  %b.load170 = load ptr, ptr %var.out, align 8
  %var.load171 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load171, i32 0, i32 0
  %s.read.len172 = load i64, ptr %s.read.len, align 8
  %s.read.len173 = and i64 %s.read.len172, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load171, i32 0, i32 1
  %s.read.data174 = load ptr, ptr %s.read.data, align 8
  %var.load175 = load ptr, ptr %var.s, align 8
  %str.len.query176 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 0
  %str.len.query177 = load i64, ptr %str.len.query176, align 8
  %str.len.query178 = and i64 %str.len.query177, 281474976710655
  %subtmp179 = sub i64 %str.len.query178, 1
  %var.load180 = load i64, ptr %var.i, align 8
  %subtmp181 = sub i64 %subtmp179, %var.load180
  %idx.oob = icmp uge i64 %subtmp181, %s.read.len173
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.66:                                 ; preds = %loop.header.66
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %b.push_done199
  %step.val222 = load i64, ptr %loop.step.66, align 8
  %loop.next223 = add i64 %counter.load165, %step.val222
  store i64 %loop.next223, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %loop.exit.nat.66
  %var.load224 = load ptr, ptr %var.out, align 8
  %b.freeze.len225 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load224, i32 0, i32 0
  %b.freeze.len226 = load i64, ptr %b.freeze.len225, align 8
  %b.freeze.data227 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load224, i32 0, i32 1
  %b.freeze.data228 = load ptr, ptr %b.freeze.data227, align 8
  %str.build.len.gep230 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze229, i32 0, i32 0
  store i64 %b.freeze.len226, ptr %str.build.len.gep230, align 8
  %str.build.data.gep231 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze229, i32 0, i32 1
  store ptr %b.freeze.data228, ptr %str.build.data.gep231, align 8
  %b.freeze.rst.len232 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load224, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len232, align 8
  %b.freeze.rst.data233 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load224, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data233, align 8
  %b.freeze.rst.cap234 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load224, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap234, align 8
  %ret.pack235 = load { i64, ptr }, ptr %builder.freeze229, align 8
  ret { i64, ptr } %ret.pack235

idx_ok:                                           ; preds = %abort.dead182, %loop.body.66
  %s.byte.gep = getelementptr i8, ptr %s.read.data174, i64 %subtmp181
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0183 = icmp sge i64 %s.byte.val, 0
  %b.b.le255184 = icmp sle i64 %s.byte.val, 255
  %b.byte.range185 = and i1 %b.b.ge0183, %b.b.le255184
  br i1 %b.byte.range185, label %b.byte_ok186, label %b.byte_err187

idx_oob:                                          ; preds = %loop.body.66
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead182:                                    ; No predecessors!
  br label %idx_ok

b.byte_ok186:                                     ; preds = %abort.dead188, %idx_ok
  %b.byte.i8189 = trunc i64 %s.byte.val to i8
  %b.len190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 0
  %b.len191 = load i64, ptr %b.len190, align 8
  %b.cap192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 2
  %b.cap193 = load i64, ptr %b.cap192, align 8
  %b.data194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 1
  %b.data195 = load ptr, ptr %b.data194, align 8
  %b.needs.grow196 = icmp eq i64 %b.len191, %b.cap193
  br i1 %b.needs.grow196, label %b.grow197, label %b.nogrow198

b.byte_err187:                                    ; preds = %idx_ok
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead188:                                    ; No predecessors!
  br label %b.byte_ok186

b.grow197:                                        ; preds = %b.byte_ok186
  %b.cap2200 = mul i64 %b.cap193, 2
  %b.cap.small201 = icmp slt i64 %b.cap2200, 16
  %b.new.cap202 = select i1 %b.cap.small201, i64 16, i64 %b.cap2200
  %b.new.buf.len203 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap202, i64 1)
  %sum204 = extractvalue { i64, i1 } %b.new.buf.len203, 0
  %ovf205 = extractvalue { i64, i1 } %b.new.buf.len203, 1
  br i1 %ovf205, label %str_overflow_abort207, label %b.new.buf.len206

b.nogrow198:                                      ; preds = %b.byte_ok186
  br label %b.push_done199

b.push_done199:                                   ; preds = %b.nogrow198, %b.new.buf.len206
  %b.cur.data214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 1
  %b.cur.data215 = load ptr, ptr %b.cur.data214, align 8
  %b.cur.len216 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 0
  %b.cur.len217 = load i64, ptr %b.cur.len216, align 8
  %b.byte.gep218 = getelementptr i8, ptr %b.cur.data215, i64 %b.cur.len217
  store i8 %b.byte.i8189, ptr %b.byte.gep218, align 1
  %b.next.len219 = add i64 %b.cur.len217, 1
  %b.nul220 = getelementptr i8, ptr %b.cur.data215, i64 %b.next.len219
  store i8 0, ptr %b.nul220, align 1
  %b.len.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 0
  store i64 %b.next.len219, ptr %b.len.gep221, align 8
  br label %loop.latch.66

b.new.buf.len206:                                 ; preds = %abort.dead208, %b.grow197
  %arena.cur209 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf210 = call ptr @dva_arena_alloc(ptr %arena.cur209, i64 %sum204)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf210, ptr align 1 %b.data195, i64 %b.len191, i1 false)
  %b.grow.nul211 = getelementptr i8, ptr %b.new.buf210, i64 %b.len191
  store i8 0, ptr %b.grow.nul211, align 1
  %b.new.data.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 1
  store ptr %b.new.buf210, ptr %b.new.data.gep212, align 8
  %b.new.cap.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load170, i32 0, i32 2
  store i64 %b.new.cap202, ptr %b.new.cap.gep213, align 8
  br label %b.push_done199

str_overflow_abort207:                            ; preds = %b.grow197
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead208:                                    ; No predecessors!
  br label %b.new.buf.len206
}

declare i64 @"ascii::hex_char_upper"(i64) #3

; Function Attrs: inlinehint
define i1 @"str::is_empty"(ptr %0) #4 {
entry:
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %cmptmp = icmp eq i64 %str.len.query2, 0
  ret i1 %cmptmp
}

; Function Attrs: inlinehint
define i1 @"str::is_blank"(ptr %0) #4 {
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
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.67, align 8
  br label %loop.header.67

loop.header.67:                                   ; preds = %loop.latch.67, %entry
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

; Function Attrs: inlinehint
define i1 @"str::starts_with"(ptr %0, ptr %1) #4 {
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
  store i64 %str.len.query2, ptr %var.lp, align 8
  %var.load3 = load i64, ptr %var.lp, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.s, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  %var.load8 = load i64, ptr %var.lp, align 8
  %cmptmp9 = icmp sge i64 %str.len.query7, %var.load8
  br i1 %cmptmp9, label %and.68.then, label %and.68.else

choice.exit:                                      ; preds = %and.68.exit, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %and.68.phi, %and.68.exit ]
  ret i1 %choice.res

and.68.then:                                      ; preds = %choice.else
  %var.load10 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.lp, align 8
  %rel.start = add i64 %s.read.len12, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len12
  %final.start = select i1 %start.gt.len, i64 %s.read.len12, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load14, 0
  %rel.end = add i64 %s.read.len12, %var.load14
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load14
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len12
  %final.end = select i1 %end.gt.len, i64 %s.read.len12, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data13, i64 %final.start
  %var.load15 = load ptr, ptr %var.prefix, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 0
  %cmp.str16 = load i64, ptr %cmp.str, align 8
  %cmp.str17 = and i64 %cmp.str16, 281474976710655
  %cmp.str18 = getelementptr inbounds { i64, ptr }, ptr %var.load15, i32 0, i32 1
  %cmp.str19 = load ptr, ptr %cmp.str18, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str17
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.68.else:                                      ; preds = %choice.else
  br label %and.68.exit

and.68.exit:                                      ; preds = %and.68.else, %str.eq.merge
  %and.68.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp9, %and.68.else ]
  br label %choice.exit

str.eq.then:                                      ; preds = %and.68.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str19, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.68.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.68.exit
}

declare i32 @memcmp(ptr, ptr, i64) #3

; Function Attrs: inlinehint
define i1 @"str::ends_with"(ptr %0, ptr %1) #4 {
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
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.suffix, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  store i64 %str.len.query6, ptr %var.lf, align 8
  %var.load7 = load i64, ptr %var.lf, align 8
  %cmptmp = icmp eq i64 %var.load7, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load8 = load i64, ptr %var.ls, align 8
  %var.load9 = load i64, ptr %var.lf, align 8
  %cmptmp10 = icmp sge i64 %var.load8, %var.load9
  br i1 %cmptmp10, label %and.69.then, label %and.69.else

choice.exit:                                      ; preds = %and.69.exit, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %and.69.phi, %and.69.exit ]
  ret i1 %choice.res

and.69.then:                                      ; preds = %choice.else
  %var.load11 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data14 = load ptr, ptr %s.read.data, align 8
  %var.load15 = load i64, ptr %var.ls, align 8
  %var.load16 = load i64, ptr %var.lf, align 8
  %subtmp = sub i64 %var.load15, %var.load16
  %var.load17 = load i64, ptr %var.ls, align 8
  %start.is_neg = icmp slt i64 %subtmp, 0
  %rel.start = add i64 %s.read.len13, %subtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %subtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len13
  %final.start = select i1 %start.gt.len, i64 %s.read.len13, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load17, 0
  %rel.end = add i64 %s.read.len13, %var.load17
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load17
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len13
  %final.end = select i1 %end.gt.len, i64 %s.read.len13, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data14, i64 %final.start
  %var.load18 = load ptr, ptr %var.suffix, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %cmp.str19 = load i64, ptr %cmp.str, align 8
  %cmp.str20 = and i64 %cmp.str19, 281474976710655
  %cmp.str21 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %cmp.str22 = load ptr, ptr %cmp.str21, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str20
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.69.else:                                      ; preds = %choice.else
  br label %and.69.exit

and.69.exit:                                      ; preds = %and.69.else, %str.eq.merge
  %and.69.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp10, %and.69.else ]
  br label %choice.exit

str.eq.then:                                      ; preds = %and.69.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str22, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.69.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.69.exit
}

; Function Attrs: inlinehint
define { i1, i64 } @"str::find_from"(ptr %0, ptr %1, i64 %2) #4 {
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
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.needle, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  store i64 %str.len.query6, ptr %var.ln, align 8
  %var.load7 = load i64, ptr %var.start, align 8
  %cmptmp = icmp slt i64 %var.load7, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load8 = load i64, ptr %var.start, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load8, %choice.else ]
  store i64 %choice.res, ptr %var.st, align 8
  %var.load9 = load i64, ptr %var.ln, align 8
  %cmptmp10 = icmp eq i64 %var.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.else12

choice.then11:                                    ; preds = %choice.exit
  %var.load14 = load i64, ptr %var.st, align 8
  %var.load15 = load i64, ptr %var.ls, align 8
  %cmptmp16 = icmp sle i64 %var.load14, %var.load15
  br i1 %cmptmp16, label %choice.then17, label %choice.else18

choice.else12:                                    ; preds = %choice.exit
  %var.load22 = load i64, ptr %var.st, align 8
  %var.load23 = load i64, ptr %var.ln, align 8
  %addtmp = add i64 %var.load22, %var.load23
  %var.load24 = load i64, ptr %var.ls, align 8
  %cmptmp25 = icmp sgt i64 %addtmp, %var.load24
  br i1 %cmptmp25, label %choice.then26, label %choice.else27

choice.exit13:                                    ; preds = %choice.exit28, %choice.exit19
  %choice.res157 = phi { i1, i64 } [ %choice.res21, %choice.exit19 ], [ %choice.res156, %choice.exit28 ]
  ret { i1, i64 } %choice.res157

choice.then17:                                    ; preds = %choice.then11
  %var.load20 = load i64, ptr %var.st, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load20, 1
  br label %choice.exit19

choice.else18:                                    ; preds = %choice.then11
  br label %choice.exit19

choice.exit19:                                    ; preds = %choice.else18, %choice.then17
  %choice.res21 = phi { i1, i64 } [ %ram.pay, %choice.then17 ], [ zeroinitializer, %choice.else18 ]
  br label %choice.exit13

choice.then26:                                    ; preds = %choice.else12
  br label %choice.exit28

choice.else27:                                    ; preds = %choice.else12
  %var.load29 = load i64, ptr %var.ln, align 8
  %cmptmp30 = icmp eq i64 %var.load29, 1
  br i1 %cmptmp30, label %choice.then31, label %choice.else32

choice.exit28:                                    ; preds = %choice.exit33, %choice.then26
  %choice.res156 = phi { i1, i64 } [ zeroinitializer, %choice.then26 ], [ %choice.res155, %choice.exit33 ]
  br label %choice.exit13

choice.then31:                                    ; preds = %choice.else27
  %var.load34 = load ptr, ptr %var.s, align 8
  %var.load35 = load ptr, ptr %var.needle, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %s.read.len36 = load i64, ptr %s.read.len, align 8
  %s.read.len37 = and i64 %s.read.len36, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %s.read.data38 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len37
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.else32:                                    ; preds = %choice.else27
  %var.load48 = load i64, ptr %var.ls, align 8
  %var.load49 = load i64, ptr %var.ln, align 8
  %subtmp = sub i64 %var.load48, %var.load49
  store i64 %subtmp, ptr %var.limit, align 8
  %var.load50 = load ptr, ptr %var.needle, align 8
  %s.read.len51 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %s.read.len52 = load i64, ptr %s.read.len51, align 8
  %s.read.len53 = and i64 %s.read.len52, 281474976710655
  %s.read.data54 = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %s.read.data55 = load ptr, ptr %s.read.data54, align 8
  %idx.oob56 = icmp uge i64 0, %s.read.len53
  br i1 %idx.oob56, label %idx_oob58, label %idx_ok57

choice.exit33:                                    ; preds = %loop.exit.70, %choice.exit44
  %choice.res155 = phi { i1, i64 } [ %choice.res47, %choice.exit44 ], [ zeroinitializer, %loop.exit.70 ]
  br label %choice.exit28

idx_ok:                                           ; preds = %abort.dead, %choice.then31
  %s.byte.gep = getelementptr i8, ptr %s.read.data38, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load39 = load i64, ptr %var.st, align 8
  %call.res = call i64 @"str::#find_byte_from"(ptr %var.load34, i64 %s.byte.val, i64 %var.load39)
  store i64 %call.res, ptr %var.pos, align 8
  %var.load40 = load i64, ptr %var.pos, align 8
  %cmptmp41 = icmp slt i64 %var.load40, 0
  br i1 %cmptmp41, label %choice.then42, label %choice.else43

idx_oob:                                          ; preds = %choice.then31
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then42:                                    ; preds = %idx_ok
  br label %choice.exit44

choice.else43:                                    ; preds = %idx_ok
  %var.load45 = load i64, ptr %var.pos, align 8
  %ram.pay46 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load45, 1
  br label %choice.exit44

choice.exit44:                                    ; preds = %choice.else43, %choice.then42
  %choice.res47 = phi { i1, i64 } [ zeroinitializer, %choice.then42 ], [ %ram.pay46, %choice.else43 ]
  br label %choice.exit33

idx_ok57:                                         ; preds = %abort.dead59, %choice.else32
  %s.byte.gep60 = getelementptr i8, ptr %s.read.data55, i64 0
  %s.byte61 = load i8, ptr %s.byte.gep60, align 1
  %s.byte.val62 = zext i8 %s.byte61 to i64
  store i64 %s.byte.val62, ptr %var.first_b, align 8
  %var.load63 = load ptr, ptr %var.needle, align 8
  %s.read.len64 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 0
  %s.read.len65 = load i64, ptr %s.read.len64, align 8
  %s.read.len66 = and i64 %s.read.len65, 281474976710655
  %s.read.data67 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 1
  %s.read.data68 = load ptr, ptr %s.read.data67, align 8
  %var.load69 = load i64, ptr %var.ln, align 8
  %subtmp70 = sub i64 %var.load69, 1
  %idx.oob71 = icmp uge i64 %subtmp70, %s.read.len66
  br i1 %idx.oob71, label %idx_oob73, label %idx_ok72

idx_oob58:                                        ; preds = %choice.else32
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead59:                                     ; No predecessors!
  br label %idx_ok57

idx_ok72:                                         ; preds = %abort.dead74, %idx_ok57
  %s.byte.gep75 = getelementptr i8, ptr %s.read.data68, i64 %subtmp70
  %s.byte76 = load i8, ptr %s.byte.gep75, align 1
  %s.byte.val77 = zext i8 %s.byte76 to i64
  store i64 %s.byte.val77, ptr %var.last_b, align 8
  %var.load78 = load i64, ptr %var.st, align 8
  store i64 %var.load78, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.70, align 8
  br label %loop.header.70

idx_oob73:                                        ; preds = %idx_ok57
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %idx_ok72

loop.header.70:                                   ; preds = %loop.latch.70, %idx_ok72
  %counter.load = load i64, ptr %loop.idx.70, align 8
  br label %loop.body.70

loop.body.70:                                     ; preds = %loop.header.70
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.70, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load79 = load ptr, ptr %var.s, align 8
  %var.load80 = load i64, ptr %var.first_b, align 8
  %var.load81 = load i64, ptr %"var.pos'", align 8
  %call.res82 = call i64 @"str::#find_byte_from"(ptr %var.load79, i64 %var.load80, i64 %var.load81)
  store i64 %call.res82, ptr %var.hit, align 8
  %var.load83 = load i64, ptr %var.hit, align 8
  %cmptmp84 = icmp slt i64 %var.load83, 0
  br i1 %cmptmp84, label %or.71.then, label %or.71.else

loop.exit.nat.70:                                 ; No predecessors!
  br label %loop.exit.70

loop.latch.70:                                    ; preds = %choice.exit149
  %step.val = load i64, ptr %loop.step.70, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.70, align 8
  br label %loop.header.70

loop.exit.70:                                     ; preds = %loop.exit.nat.70
  br label %choice.exit33

or.71.then:                                       ; preds = %loop.body.70
  br label %or.71.exit

or.71.else:                                       ; preds = %loop.body.70
  %var.load85 = load i64, ptr %var.hit, align 8
  %var.load86 = load i64, ptr %var.limit, align 8
  %cmptmp87 = icmp sgt i64 %var.load85, %var.load86
  br label %or.71.exit

or.71.exit:                                       ; preds = %or.71.else, %or.71.then
  %or.71.phi = phi i1 [ %cmptmp84, %or.71.then ], [ %cmptmp87, %or.71.else ]
  br i1 %or.71.phi, label %choice.then88, label %choice.exit89

choice.then88:                                    ; preds = %or.71.exit
  ret { i1, i64 } zeroinitializer

choice.exit89:                                    ; preds = %ret.dead, %or.71.exit
  %var.load90 = load ptr, ptr %var.s, align 8
  %s.read.len91 = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 0
  %s.read.len92 = load i64, ptr %s.read.len91, align 8
  %s.read.len93 = and i64 %s.read.len92, 281474976710655
  %s.read.data94 = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 1
  %s.read.data95 = load ptr, ptr %s.read.data94, align 8
  %var.load96 = load i64, ptr %var.hit, align 8
  %var.load97 = load i64, ptr %var.ln, align 8
  %addtmp98 = add i64 %var.load96, %var.load97
  %subtmp99 = sub i64 %addtmp98, 1
  %idx.oob100 = icmp uge i64 %subtmp99, %s.read.len93
  br i1 %idx.oob100, label %idx_oob102, label %idx_ok101

ret.dead:                                         ; No predecessors!
  br label %choice.exit89

idx_ok101:                                        ; preds = %abort.dead103, %choice.exit89
  %s.byte.gep104 = getelementptr i8, ptr %s.read.data95, i64 %subtmp99
  %s.byte105 = load i8, ptr %s.byte.gep104, align 1
  %s.byte.val106 = zext i8 %s.byte105 to i64
  %var.load107 = load i64, ptr %var.last_b, align 8
  %cmptmp108 = icmp eq i64 %s.byte.val106, %var.load107
  br i1 %cmptmp108, label %and.72.then, label %and.72.else

idx_oob102:                                       ; preds = %choice.exit89
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %idx_ok101

and.72.then:                                      ; preds = %idx_ok101
  %var.load109 = load i64, ptr %var.ln, align 8
  %cmptmp110 = icmp eq i64 %var.load109, 2
  br i1 %cmptmp110, label %or.73.then, label %or.73.else

and.72.else:                                      ; preds = %idx_ok101
  br label %and.72.exit

and.72.exit:                                      ; preds = %and.72.else, %or.73.exit
  %and.72.phi = phi i1 [ %or.73.phi, %or.73.exit ], [ %cmptmp108, %and.72.else ]
  br i1 %and.72.phi, label %choice.then148, label %choice.exit149

or.73.then:                                       ; preds = %and.72.then
  br label %or.73.exit

or.73.else:                                       ; preds = %and.72.then
  %var.load111 = load ptr, ptr %var.s, align 8
  %s.read.len112 = getelementptr inbounds { i64, ptr }, ptr %var.load111, i32 0, i32 0
  %s.read.len113 = load i64, ptr %s.read.len112, align 8
  %s.read.len114 = and i64 %s.read.len113, 281474976710655
  %s.read.data115 = getelementptr inbounds { i64, ptr }, ptr %var.load111, i32 0, i32 1
  %s.read.data116 = load ptr, ptr %s.read.data115, align 8
  %var.load117 = load i64, ptr %var.hit, align 8
  %addtmp118 = add i64 %var.load117, 1
  %var.load119 = load i64, ptr %var.hit, align 8
  %var.load120 = load i64, ptr %var.ln, align 8
  %addtmp121 = add i64 %var.load119, %var.load120
  %subtmp122 = sub i64 %addtmp121, 1
  %start.is_neg = icmp slt i64 %addtmp118, 0
  %rel.start = add i64 %s.read.len114, %addtmp118
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp118
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len114
  %final.start = select i1 %start.gt.len, i64 %s.read.len114, i64 %c.start.0
  %end.is_neg = icmp slt i64 %subtmp122, 0
  %rel.end = add i64 %s.read.len114, %subtmp122
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp122
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len114
  %final.end = select i1 %end.gt.len, i64 %s.read.len114, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data116, i64 %final.start
  %var.load123 = load ptr, ptr %var.needle, align 8
  %s.read.len124 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 0
  %s.read.len125 = load i64, ptr %s.read.len124, align 8
  %s.read.len126 = and i64 %s.read.len125, 281474976710655
  %s.read.data127 = getelementptr inbounds { i64, ptr }, ptr %var.load123, i32 0, i32 1
  %s.read.data128 = load ptr, ptr %s.read.data127, align 8
  %var.load129 = load i64, ptr %var.ln, align 8
  %subtmp130 = sub i64 %var.load129, 1
  %rel.start131 = add i64 %s.read.len126, 1
  %norm.start132 = select i1 false, i64 %rel.start131, i64 1
  %start.lt.0133 = icmp slt i64 %norm.start132, 0
  %c.start.0134 = select i1 %start.lt.0133, i64 0, i64 %norm.start132
  %start.gt.len135 = icmp sgt i64 %c.start.0134, %s.read.len126
  %final.start136 = select i1 %start.gt.len135, i64 %s.read.len126, i64 %c.start.0134
  %end.is_neg137 = icmp slt i64 %subtmp130, 0
  %rel.end138 = add i64 %s.read.len126, %subtmp130
  %norm.end139 = select i1 %end.is_neg137, i64 %rel.end138, i64 %subtmp130
  %end.lt.0140 = icmp slt i64 %norm.end139, 0
  %c.end.0141 = select i1 %end.lt.0140, i64 0, i64 %norm.end139
  %end.gt.len142 = icmp sgt i64 %c.end.0141, %s.read.len126
  %final.end143 = select i1 %end.gt.len142, i64 %s.read.len126, i64 %c.end.0141
  %view.empty144 = icmp sle i64 %final.end143, %final.start136
  %view.len.sub145 = sub i64 %final.end143, %final.start136
  %view.len146 = select i1 %view.empty144, i64 0, i64 %view.len.sub145
  %view.data147 = getelementptr i8, ptr %s.read.data128, i64 %final.start136
  %eq.len = icmp eq i64 %view.len, %view.len146
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

or.73.exit:                                       ; preds = %str.eq.merge, %or.73.then
  %or.73.phi = phi i1 [ %cmptmp110, %or.73.then ], [ %str.eq.result, %str.eq.merge ]
  br label %and.72.exit

str.eq.then:                                      ; preds = %or.73.else
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %view.data147, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %or.73.else
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %or.73.exit

choice.then148:                                   ; preds = %and.72.exit
  %var.load150 = load i64, ptr %var.hit, align 8
  %ram.pay151 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load150, 1
  ret { i1, i64 } %ram.pay151

choice.exit149:                                   ; preds = %ret.dead152, %and.72.exit
  %var.load153 = load i64, ptr %var.hit, align 8
  %addtmp154 = add i64 %var.load153, 1
  store i64 %addtmp154, ptr %"var.pos'", align 8
  br label %loop.latch.70

ret.dead152:                                      ; No predecessors!
  br label %choice.exit149
}

; Function Attrs: inlinehint
define { i1, i64 } @"str::find"(ptr %0, ptr %1) #4 {
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

; Function Attrs: inlinehint
define { i1, i64 } @"str::rfind"(ptr %0, ptr %1) #4 {
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
  store i64 %str.len.query2, ptr %var.ls, align 8
  %var.load3 = load ptr, ptr %var.needle, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  store i64 %str.len.query6, ptr %var.ln, align 8
  %var.load7 = load i64, ptr %var.ln, align 8
  %cmptmp = icmp eq i64 %var.load7, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load8 = load i64, ptr %var.ls, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load8, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load9 = load i64, ptr %var.ln, align 8
  %var.load10 = load i64, ptr %var.ls, align 8
  %cmptmp11 = icmp sgt i64 %var.load9, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.else13

choice.exit:                                      ; preds = %choice.exit14, %choice.then
  %choice.res62 = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %choice.res, %choice.exit14 ]
  ret { i1, i64 } %choice.res62

choice.then12:                                    ; preds = %choice.else
  br label %choice.exit14

choice.else13:                                    ; preds = %choice.else
  %var.load15 = load i64, ptr %var.ls, align 8
  %var.load16 = load i64, ptr %var.ln, align 8
  %subtmp = sub i64 %var.load15, %var.load16
  %addtmp = add i64 %subtmp, 1
  store i64 %addtmp, ptr %var.span, align 8
  %var.load17 = load ptr, ptr %var.needle, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %s.read.len18 = load i64, ptr %s.read.len, align 8
  %s.read.len19 = and i64 %s.read.len18, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %s.read.data20 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len19
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.exit14:                                    ; preds = %loop.exit.74, %choice.then12
  %choice.res = phi { i1, i64 } [ zeroinitializer, %choice.then12 ], [ zeroinitializer, %loop.exit.74 ]
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.else13
  %s.byte.gep = getelementptr i8, ptr %s.read.data20, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.first_b, align 8
  %var.load21 = load i64, ptr %var.span, align 8
  store i64 0, ptr %loop.idx.74, align 8
  br label %loop.header.74

idx_oob:                                          ; preds = %choice.else13
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

loop.header.74:                                   ; preds = %loop.latch.74, %idx_ok
  %counter.load = load i64, ptr %loop.idx.74, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load21
  br i1 %loop.cond, label %loop.body.74, label %loop.exit.nat.74

loop.body.74:                                     ; preds = %loop.header.74
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.74, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.k, align 8
  %var.load22 = load i64, ptr %var.ls, align 8
  %var.load23 = load i64, ptr %var.ln, align 8
  %subtmp24 = sub i64 %var.load22, %var.load23
  %var.load25 = load i64, ptr %var.k, align 8
  %subtmp26 = sub i64 %subtmp24, %var.load25
  store i64 %subtmp26, ptr %var.i, align 8
  %var.load27 = load ptr, ptr %var.s, align 8
  %s.read.len28 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len28, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %s.read.data31 = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data32 = load ptr, ptr %s.read.data31, align 8
  %var.load33 = load i64, ptr %var.i, align 8
  %idx.oob34 = icmp uge i64 %var.load33, %s.read.len30
  br i1 %idx.oob34, label %idx_oob36, label %idx_ok35

loop.exit.nat.74:                                 ; preds = %loop.header.74
  br label %loop.exit.74

loop.latch.74:                                    ; preds = %choice.exit59
  %step.val = load i64, ptr %loop.step.74, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.74, align 8
  br label %loop.header.74

loop.exit.74:                                     ; preds = %loop.exit.nat.74
  br label %choice.exit14

idx_ok35:                                         ; preds = %abort.dead37, %loop.body.74
  %s.byte.gep38 = getelementptr i8, ptr %s.read.data32, i64 %var.load33
  %s.byte39 = load i8, ptr %s.byte.gep38, align 1
  %s.byte.val40 = zext i8 %s.byte39 to i64
  %var.load41 = load i64, ptr %var.first_b, align 8
  %cmptmp42 = icmp eq i64 %s.byte.val40, %var.load41
  br i1 %cmptmp42, label %and.75.then, label %and.75.else

idx_oob36:                                        ; preds = %loop.body.74
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %idx_ok35

and.75.then:                                      ; preds = %idx_ok35
  %var.load43 = load ptr, ptr %var.s, align 8
  %s.read.len44 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 0
  %s.read.len45 = load i64, ptr %s.read.len44, align 8
  %s.read.len46 = and i64 %s.read.len45, 281474976710655
  %s.read.data47 = getelementptr inbounds { i64, ptr }, ptr %var.load43, i32 0, i32 1
  %s.read.data48 = load ptr, ptr %s.read.data47, align 8
  %var.load49 = load i64, ptr %var.i, align 8
  %var.load50 = load i64, ptr %var.i, align 8
  %var.load51 = load i64, ptr %var.ln, align 8
  %addtmp52 = add i64 %var.load50, %var.load51
  %start.is_neg = icmp slt i64 %var.load49, 0
  %rel.start = add i64 %s.read.len46, %var.load49
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load49
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
  %var.load53 = load ptr, ptr %var.needle, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 0
  %cmp.str54 = load i64, ptr %cmp.str, align 8
  %cmp.str55 = and i64 %cmp.str54, 281474976710655
  %cmp.str56 = getelementptr inbounds { i64, ptr }, ptr %var.load53, i32 0, i32 1
  %cmp.str57 = load ptr, ptr %cmp.str56, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str55
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.75.else:                                      ; preds = %idx_ok35
  br label %and.75.exit

and.75.exit:                                      ; preds = %and.75.else, %str.eq.merge
  %and.75.phi = phi i1 [ %str.eq.result, %str.eq.merge ], [ %cmptmp42, %and.75.else ]
  br i1 %and.75.phi, label %choice.then58, label %choice.exit59

str.eq.then:                                      ; preds = %and.75.then
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str57, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.75.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br label %and.75.exit

choice.then58:                                    ; preds = %and.75.exit
  %var.load60 = load i64, ptr %var.i, align 8
  %ram.pay61 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load60, 1
  ret { i1, i64 } %ram.pay61

choice.exit59:                                    ; preds = %ret.dead, %and.75.exit
  br label %loop.latch.74

ret.dead:                                         ; No predecessors!
  br label %choice.exit59
}

; Function Attrs: inlinehint
define i1 @"str::contains"(ptr %0, ptr %1) #4 {
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

define i64 @"str::count"(ptr %0, ptr %1) #3 {
entry:
  %var.idx = alloca i64, align 8
  %var._20 = alloca i64, align 8
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
  store i64 %str.len.query2, ptr %var.ln, align 8
  %var.load3 = load i64, ptr %var.ln, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.s, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  store i64 %str.len.query7, ptr %var.ls, align 8
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.76, align 8
  br label %loop.header.76

choice.exit:                                      ; preds = %loop.exit.76, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load26, %loop.exit.76 ]
  ret i64 %choice.res

loop.header.76:                                   ; preds = %loop.latch.76, %choice.else
  %counter.load = load i64, ptr %loop.idx.76, align 8
  br label %loop.body.76

loop.body.76:                                     ; preds = %loop.header.76
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.76, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load8 = load i64, ptr %"var.pos'", align 8
  %var.load9 = load i64, ptr %var.ln, align 8
  %addtmp = add i64 %var.load8, %var.load9
  %var.load10 = load i64, ptr %var.ls, align 8
  %cmptmp11 = icmp sgt i64 %addtmp, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

loop.exit.nat.76:                                 ; No predecessors!
  br label %loop.exit.76

loop.latch.76:                                    ; preds = %choice.exit19
  %step.val = load i64, ptr %loop.step.76, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.76, align 8
  br label %loop.header.76

loop.exit.76:                                     ; preds = %choice.else18, %choice.then12, %loop.exit.nat.76
  %var.load26 = load i64, ptr %"var.n'", align 8
  br label %choice.exit

choice.then12:                                    ; preds = %loop.body.76
  br label %loop.exit.76

choice.exit13:                                    ; preds = %loop.body.76
  %var.load14 = load ptr, ptr %var.s, align 8
  %var.load15 = load ptr, ptr %var.needle, align 8
  %var.load16 = load i64, ptr %"var.pos'", align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load14, ptr %var.load15, i64 %var.load16)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then17, label %choice.else18

choice.then17:                                    ; preds = %choice.exit13
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._20, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load21 = load i64, ptr %"var.n'", align 8
  %addtmp22 = add i64 %var.load21, 1
  store i64 %addtmp22, ptr %"var.n'", align 8
  %var.load23 = load i64, ptr %var.idx, align 8
  %var.load24 = load i64, ptr %var.ln, align 8
  %addtmp25 = add i64 %var.load23, %var.load24
  store i64 %addtmp25, ptr %"var.pos'", align 8
  br label %choice.exit19

choice.else18:                                    ; preds = %choice.exit13
  br label %loop.exit.76

choice.exit19:                                    ; preds = %choice.then17
  br label %loop.latch.76
}

; Function Attrs: inlinehint
define { i64, ptr } @"str::trim_start"(ptr %0) #4 {
entry:
  %str.view = alloca { i64, ptr }, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  store i64 0, ptr %"var.i'", align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.77, align 8
  br label %loop.header.77

loop.header.77:                                   ; preds = %loop.latch.77, %entry
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
  %s.byte.gep = getelementptr i8, ptr %s.read.data7, i64 %var.load8
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then, label %choice.else

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

choice.then:                                      ; preds = %loop.body.77
  %var.load9 = load i64, ptr %var.k, align 8
  %addtmp = add i64 %var.load9, 1
  store i64 %addtmp, ptr %"var.i'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.77
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

; Function Attrs: inlinehint
define { i64, ptr } @"str::trim_end"(ptr %0) #4 {
entry:
  %str.view = alloca { i64, ptr }, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  store i64 %var.load3, ptr %"var.end'", align 8
  %var.load4 = load i64, ptr %var.len, align 8
  store i64 0, ptr %loop.idx.78, align 8
  br label %loop.header.78

loop.header.78:                                   ; preds = %loop.latch.78, %entry
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
  %idx.oob = icmp uge i64 %var.load12, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

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

idx_ok:                                           ; preds = %abort.dead, %loop.body.78
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br i1 %call.res, label %choice.then, label %choice.else

idx_oob:                                          ; preds = %loop.body.78
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

; Function Attrs: inlinehint
define { i64, ptr } @"str::trim"(ptr %0) #4 {
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

define { i64, ptr } @"str::trim_prefix"(ptr %0, ptr %1) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
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
  %var.load9 = load ptr, ptr %var.s, align 8
  %str.len.query10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load13 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ %var.load13, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define { i64, ptr } @"str::trim_suffix"(ptr %0, ptr %1) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
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
  %var.load9 = load ptr, ptr %var.suffix, align 8
  %str.len.query10 = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %str.len.query11 = load i64, ptr %str.len.query10, align 8
  %str.len.query12 = and i64 %str.len.query11, 281474976710655
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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load13 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ %var.load13, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: inlinehint
define ptr @"str::split_once"(ptr %0, ptr %1) #4 {
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
  %addtmp = add i64 %var.load13, %str.len.query16
  %var.load17 = load ptr, ptr %var.s, align 8
  %str.len.query18 = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %str.len.query19 = load i64, ptr %str.len.query18, align 8
  %str.len.query20 = and i64 %str.len.query19, 281474976710655
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start21 = add i64 %s.read.len10, %addtmp
  %norm.start22 = select i1 %start.is_neg, i64 %rel.start21, i64 %addtmp
  %start.lt.023 = icmp slt i64 %norm.start22, 0
  %c.start.024 = select i1 %start.lt.023, i64 0, i64 %norm.start22
  %start.gt.len25 = icmp sgt i64 %c.start.024, %s.read.len10
  %final.start26 = select i1 %start.gt.len25, i64 %s.read.len10, i64 %c.start.024
  %end.is_neg27 = icmp slt i64 %str.len.query20, 0
  %rel.end28 = add i64 %s.read.len10, %str.len.query20
  %norm.end29 = select i1 %end.is_neg27, i64 %rel.end28, i64 %str.len.query20
  %end.lt.030 = icmp slt i64 %norm.end29, 0
  %c.end.031 = select i1 %end.lt.030, i64 0, i64 %norm.end29
  %end.gt.len32 = icmp sgt i64 %c.end.031, %s.read.len10
  %final.end33 = select i1 %end.gt.len32, i64 %s.read.len10, i64 %c.end.031
  %view.empty34 = icmp sle i64 %final.end33, %final.start26
  %view.len.sub35 = sub i64 %final.end33, %final.start26
  %view.len36 = select i1 %view.empty34, i64 0, i64 %view.len.sub35
  %view.data37 = getelementptr i8, ptr %s.read.data12, i64 %final.start26
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  %str.build.len.gep40 = getelementptr inbounds { i64, ptr }, ptr %str.view39, i32 0, i32 0
  store i64 %view.len36, ptr %str.build.len.gep40, align 8
  %str.build.data.gep41 = getelementptr inbounds { i64, ptr }, ptr %str.view39, i32 0, i32 1
  store ptr %view.data37, ptr %str.build.data.gep41, align 8
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %str.view, ptr %rec.fld, align 8
  %rec.fld43 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view39, ptr %rec.fld43, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %rec.alloc, %choice.then ], [ null, %choice.else ]
  ret ptr %choice.res
}

define ptr @"str::split"(ptr %0, ptr %1) #3 {
entry:
  %var.idx = alloca i64, align 8
  %var._51 = alloca i64, align 8
  %var._44 = alloca i64, align 8
  %var._i43 = alloca i64, align 8
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
  store i64 %str.len.query3, ptr %var.ls, align 8
  %var.load4 = load ptr, ptr %var.sep, align 8
  %str.len.query5 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %str.len.query6 = load i64, ptr %str.len.query5, align 8
  %str.len.query7 = and i64 %str.len.query6, 281474976710655
  store i64 %str.len.query7, ptr %var.lsep, align 8
  %var.load8 = load i64, ptr %var.lsep, align 8
  %cmptmp = icmp eq i64 %var.load8, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load9 = load i64, ptr %var.ls, align 8
  store i64 0, ptr %loop.idx.80, align 8
  br label %loop.header.80

choice.else:                                      ; preds = %entry
  store i64 0, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.81, align 8
  br label %loop.header.81

choice.exit:                                      ; preds = %a.after177, %a.after32
  %choice.res = phi ptr [ %a.load240, %a.after32 ], [ %a.load2185, %a.after177 ]
  ret ptr %choice.res

loop.header.80:                                   ; preds = %loop.latch.80, %choice.then
  %counter.load = load i64, ptr %loop.idx.80, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load9
  br i1 %loop.cond, label %loop.body.80, label %loop.exit.nat.80

loop.body.80:                                     ; preds = %loop.header.80
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.80, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load10 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data13 = load ptr, ptr %s.read.data, align 8
  %var.load14 = load i64, ptr %var.i, align 8
  %var.load15 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load15, 1
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
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 16)
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
  %var.load28 = load ptr, ptr %var.out, align 8
  %a.load29 = load ptr, ptr %var.out, align 8
  %a.null30 = icmp eq ptr %a.load29, null
  br i1 %a.null30, label %a.create31, label %a.after32

a.create:                                         ; preds = %loop.body.80
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.create18, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.body.80
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len24 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap25 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len24, %a.cap25
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data26 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len27 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data26, i64 %a.cur.len27
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len27, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.80

a.create31:                                       ; preds = %loop.exit.80
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 24)
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 128)
  %a.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 0
  store i64 0, ptr %a.len.gep37, align 8
  %a.data.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 1
  store ptr %a.buf36, ptr %a.data.gep38, align 8
  %a.cap.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 2
  store i64 16, ptr %a.cap.gep39, align 8
  store ptr %a.create34, ptr %var.out, align 8
  br label %a.after32

a.after32:                                        ; preds = %a.create31, %loop.exit.80
  %a.load240 = load ptr, ptr %var.out, align 8
  br label %choice.exit

loop.header.81:                                   ; preds = %loop.latch.81, %choice.else
  %counter.load41 = load i64, ptr %loop.idx.81, align 8
  br label %loop.body.81

loop.body.81:                                     ; preds = %loop.header.81
  %loop.rel.i42 = sub i64 %counter.load41, 0
  store i64 1, ptr %loop.step.81, align 8
  store i64 %loop.rel.i42, ptr %var._i43, align 8
  store i64 %counter.load41, ptr %var._44, align 8
  %var.load45 = load ptr, ptr %var.s, align 8
  %var.load46 = load ptr, ptr %var.sep, align 8
  %var.load47 = load i64, ptr %"var.pos'", align 8
  %call.res = call { i1, i64 } @"str::find_from"(ptr %var.load45, ptr %var.load46, i64 %var.load47)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then48, label %choice.else49

loop.exit.nat.81:                                 ; No predecessors!
  br label %loop.exit.81

loop.latch.81:                                    ; preds = %choice.exit50
  %step.val171 = load i64, ptr %loop.step.81, align 8
  %loop.next172 = add i64 %counter.load41, %step.val171
  store i64 %loop.next172, ptr %loop.idx.81, align 8
  br label %loop.header.81

loop.exit.81:                                     ; preds = %a.store157, %loop.exit.nat.81
  %var.load173 = load ptr, ptr %var.out, align 8
  %a.load174 = load ptr, ptr %var.out, align 8
  %a.null175 = icmp eq ptr %a.load174, null
  br i1 %a.null175, label %a.create176, label %a.after177

choice.then48:                                    ; preds = %loop.body.81
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._51, align 8
  store i64 %ram.pay, ptr %var.idx, align 8
  %var.load52 = load ptr, ptr %var.s, align 8
  %s.read.len53 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %s.read.len54 = load i64, ptr %s.read.len53, align 8
  %s.read.len55 = and i64 %s.read.len54, 281474976710655
  %s.read.data56 = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %s.read.data57 = load ptr, ptr %s.read.data56, align 8
  %var.load58 = load i64, ptr %"var.pos'", align 8
  %var.load59 = load i64, ptr %var.idx, align 8
  %start.is_neg60 = icmp slt i64 %var.load58, 0
  %rel.start61 = add i64 %s.read.len55, %var.load58
  %norm.start62 = select i1 %start.is_neg60, i64 %rel.start61, i64 %var.load58
  %start.lt.063 = icmp slt i64 %norm.start62, 0
  %c.start.064 = select i1 %start.lt.063, i64 0, i64 %norm.start62
  %start.gt.len65 = icmp sgt i64 %c.start.064, %s.read.len55
  %final.start66 = select i1 %start.gt.len65, i64 %s.read.len55, i64 %c.start.064
  %end.is_neg67 = icmp slt i64 %var.load59, 0
  %rel.end68 = add i64 %s.read.len55, %var.load59
  %norm.end69 = select i1 %end.is_neg67, i64 %rel.end68, i64 %var.load59
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
  %str.build.len.gep80 = getelementptr inbounds { i64, ptr }, ptr %str.view79, i32 0, i32 0
  store i64 %view.len76, ptr %str.build.len.gep80, align 8
  %str.build.data.gep81 = getelementptr inbounds { i64, ptr }, ptr %str.view79, i32 0, i32 1
  store ptr %view.data77, ptr %str.build.data.gep81, align 8
  %a.load82 = load ptr, ptr %var.out, align 8
  %a.null83 = icmp eq ptr %a.load82, null
  br i1 %a.null83, label %a.create84, label %a.after85

choice.else49:                                    ; preds = %loop.body.81
  %var.load113 = load ptr, ptr %var.s, align 8
  %s.read.len114 = getelementptr inbounds { i64, ptr }, ptr %var.load113, i32 0, i32 0
  %s.read.len115 = load i64, ptr %s.read.len114, align 8
  %s.read.len116 = and i64 %s.read.len115, 281474976710655
  %s.read.data117 = getelementptr inbounds { i64, ptr }, ptr %var.load113, i32 0, i32 1
  %s.read.data118 = load ptr, ptr %s.read.data117, align 8
  %var.load119 = load i64, ptr %"var.pos'", align 8
  %var.load120 = load i64, ptr %var.ls, align 8
  %start.is_neg121 = icmp slt i64 %var.load119, 0
  %rel.start122 = add i64 %s.read.len116, %var.load119
  %norm.start123 = select i1 %start.is_neg121, i64 %rel.start122, i64 %var.load119
  %start.lt.0124 = icmp slt i64 %norm.start123, 0
  %c.start.0125 = select i1 %start.lt.0124, i64 0, i64 %norm.start123
  %start.gt.len126 = icmp sgt i64 %c.start.0125, %s.read.len116
  %final.start127 = select i1 %start.gt.len126, i64 %s.read.len116, i64 %c.start.0125
  %end.is_neg128 = icmp slt i64 %var.load120, 0
  %rel.end129 = add i64 %s.read.len116, %var.load120
  %norm.end130 = select i1 %end.is_neg128, i64 %rel.end129, i64 %var.load120
  %end.lt.0131 = icmp slt i64 %norm.end130, 0
  %c.end.0132 = select i1 %end.lt.0131, i64 0, i64 %norm.end130
  %end.gt.len133 = icmp sgt i64 %c.end.0132, %s.read.len116
  %final.end134 = select i1 %end.gt.len133, i64 %s.read.len116, i64 %c.end.0132
  %view.empty135 = icmp sle i64 %final.end134, %final.start127
  %view.len.sub136 = sub i64 %final.end134, %final.start127
  %view.len137 = select i1 %view.empty135, i64 0, i64 %view.len.sub136
  %view.data138 = getelementptr i8, ptr %s.read.data118, i64 %final.start127
  %arena.cur139 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 16)
  %str.build.len.gep141 = getelementptr inbounds { i64, ptr }, ptr %str.view140, i32 0, i32 0
  store i64 %view.len137, ptr %str.build.len.gep141, align 8
  %str.build.data.gep142 = getelementptr inbounds { i64, ptr }, ptr %str.view140, i32 0, i32 1
  store ptr %view.data138, ptr %str.build.data.gep142, align 8
  %a.load143 = load ptr, ptr %var.out, align 8
  %a.null144 = icmp eq ptr %a.load143, null
  br i1 %a.null144, label %a.create145, label %a.after146

choice.exit50:                                    ; preds = %a.store96
  br label %loop.latch.81

a.create84:                                       ; preds = %choice.then48
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 24)
  %arena.cur88 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 128)
  %a.len.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create87, i32 0, i32 0
  store i64 0, ptr %a.len.gep90, align 8
  %a.data.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create87, i32 0, i32 1
  store ptr %a.buf89, ptr %a.data.gep91, align 8
  %a.cap.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create87, i32 0, i32 2
  store i64 16, ptr %a.cap.gep92, align 8
  store ptr %a.create87, ptr %var.out, align 8
  br label %a.after85

a.after85:                                        ; preds = %a.create84, %choice.then48
  %a.load293 = load ptr, ptr %var.out, align 8
  br label %a.check94

a.check94:                                        ; preds = %a.after85
  %a.len97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load293, i32 0, i32 0
  %a.len98 = load i64, ptr %a.len97, align 8
  %a.cap99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load293, i32 0, i32 2
  %a.cap100 = load i64, ptr %a.cap99, align 8
  %a.needs.grow101 = icmp eq i64 %a.len98, %a.cap100
  br i1 %a.needs.grow101, label %a.grow95, label %a.store96

a.grow95:                                         ; preds = %a.check94
  call void @dva_array_grow(ptr %a.load293)
  br label %a.store96

a.store96:                                        ; preds = %a.grow95, %a.check94
  %a.cur.data102 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load293, i32 0, i32 1
  %a.cur.data103 = load ptr, ptr %a.cur.data102, align 8
  %a.cur.len104 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load293, i32 0, i32 0
  %a.cur.len105 = load i64, ptr %a.cur.len104, align 8
  %a.elem.gep106 = getelementptr i64, ptr %a.cur.data103, i64 %a.cur.len105
  %slot.p2i107 = ptrtoint ptr %str.view79 to i64
  store i64 %slot.p2i107, ptr %a.elem.gep106, align 8
  %a.next.len108 = add i64 %a.cur.len105, 1
  %b.len.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load293, i32 0, i32 0
  store i64 %a.next.len108, ptr %b.len.gep109, align 8
  %var.load110 = load i64, ptr %var.idx, align 8
  %var.load111 = load i64, ptr %var.lsep, align 8
  %addtmp112 = add i64 %var.load110, %var.load111
  store i64 %addtmp112, ptr %"var.pos'", align 8
  br label %choice.exit50

a.create145:                                      ; preds = %choice.else49
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 24)
  %arena.cur149 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 128)
  %a.len.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 0
  store i64 0, ptr %a.len.gep151, align 8
  %a.data.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 1
  store ptr %a.buf150, ptr %a.data.gep152, align 8
  %a.cap.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create148, i32 0, i32 2
  store i64 16, ptr %a.cap.gep153, align 8
  store ptr %a.create148, ptr %var.out, align 8
  br label %a.after146

a.after146:                                       ; preds = %a.create145, %choice.else49
  %a.load2154 = load ptr, ptr %var.out, align 8
  br label %a.check155

a.check155:                                       ; preds = %a.after146
  %a.len158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2154, i32 0, i32 0
  %a.len159 = load i64, ptr %a.len158, align 8
  %a.cap160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2154, i32 0, i32 2
  %a.cap161 = load i64, ptr %a.cap160, align 8
  %a.needs.grow162 = icmp eq i64 %a.len159, %a.cap161
  br i1 %a.needs.grow162, label %a.grow156, label %a.store157

a.grow156:                                        ; preds = %a.check155
  call void @dva_array_grow(ptr %a.load2154)
  br label %a.store157

a.store157:                                       ; preds = %a.grow156, %a.check155
  %a.cur.data163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2154, i32 0, i32 1
  %a.cur.data164 = load ptr, ptr %a.cur.data163, align 8
  %a.cur.len165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2154, i32 0, i32 0
  %a.cur.len166 = load i64, ptr %a.cur.len165, align 8
  %a.elem.gep167 = getelementptr i64, ptr %a.cur.data164, i64 %a.cur.len166
  %slot.p2i168 = ptrtoint ptr %str.view140 to i64
  store i64 %slot.p2i168, ptr %a.elem.gep167, align 8
  %a.next.len169 = add i64 %a.cur.len166, 1
  %b.len.gep170 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2154, i32 0, i32 0
  store i64 %a.next.len169, ptr %b.len.gep170, align 8
  br label %loop.exit.81

a.create176:                                      ; preds = %loop.exit.81
  %arena.cur178 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create179 = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 24)
  %arena.cur180 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 128)
  %a.len.gep182 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create179, i32 0, i32 0
  store i64 0, ptr %a.len.gep182, align 8
  %a.data.gep183 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create179, i32 0, i32 1
  store ptr %a.buf181, ptr %a.data.gep183, align 8
  %a.cap.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create179, i32 0, i32 2
  store i64 16, ptr %a.cap.gep184, align 8
  store ptr %a.create179, ptr %var.out, align 8
  br label %a.after177

a.after177:                                       ; preds = %a.create176, %loop.exit.81
  %a.load2185 = load ptr, ptr %var.out, align 8
  br label %choice.exit
}

define internal void @dva_array_grow(ptr %0) #3 {
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
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define ptr @"str::lines"(ptr %0) #3 {
entry:
  %var.end90 = alloca i64, align 8
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
  store i64 %str.len.query3, ptr %var.ls, align 8
  %var.load4 = load i64, ptr %var.ls, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.out, align 8
  %a.load = load ptr, ptr %var.out, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %entry
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
  %var.load150 = load ptr, ptr %var.out, align 8
  %a.load151 = load ptr, ptr %var.out, align 8
  %a.null152 = icmp eq ptr %a.load151, null
  br i1 %a.null152, label %a.create153, label %a.after154

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

choice.exit23:                                    ; preds = %a.store135
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
  %idx.oob = icmp uge i64 %subtmp, %s.read.len29
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.83.else:                                      ; preds = %choice.then22
  br label %and.83.exit

and.83.exit:                                      ; preds = %and.83.else, %idx_ok
  %and.83.phi = phi i1 [ %cmptmp32, %idx_ok ], [ %cmptmp26, %and.83.else ]
  br i1 %and.83.phi, label %choice.then33, label %choice.else34

idx_ok:                                           ; preds = %abort.dead, %and.83.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data30, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp32 = icmp eq i64 %s.byte.val, 13
  br label %and.83.exit

idx_oob:                                          ; preds = %and.83.then
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
  %idx.oob75 = icmp uge i64 %subtmp74, %s.read.len70
  br i1 %idx.oob75, label %idx_oob77, label %idx_ok76

and.84.else:                                      ; preds = %choice.else
  br label %and.84.exit

and.84.exit:                                      ; preds = %and.84.else, %idx_ok76
  %and.84.phi = phi i1 [ %cmptmp82, %idx_ok76 ], [ %cmptmp66, %and.84.else ]
  br i1 %and.84.phi, label %choice.then83, label %choice.else84

idx_ok76:                                         ; preds = %abort.dead78, %and.84.then
  %s.byte.gep79 = getelementptr i8, ptr %s.read.data72, i64 %subtmp74
  %s.byte80 = load i8, ptr %s.byte.gep79, align 1
  %s.byte.val81 = zext i8 %s.byte80 to i64
  %cmptmp82 = icmp eq i64 %s.byte.val81, 13
  br label %and.84.exit

idx_oob77:                                        ; preds = %and.84.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead78:                                     ; No predecessors!
  br label %idx_ok76

choice.then83:                                    ; preds = %and.84.exit
  %var.load86 = load i64, ptr %var.pos, align 8
  %subtmp87 = sub i64 %var.load86, 1
  br label %choice.exit85

choice.else84:                                    ; preds = %and.84.exit
  %var.load88 = load i64, ptr %var.pos, align 8
  br label %choice.exit85

choice.exit85:                                    ; preds = %choice.else84, %choice.then83
  %choice.res89 = phi i64 [ %subtmp87, %choice.then83 ], [ %var.load88, %choice.else84 ]
  store i64 %choice.res89, ptr %var.end90, align 8
  %var.load91 = load ptr, ptr %var.s, align 8
  %s.read.len92 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 0
  %s.read.len93 = load i64, ptr %s.read.len92, align 8
  %s.read.len94 = and i64 %s.read.len93, 281474976710655
  %s.read.data95 = getelementptr inbounds { i64, ptr }, ptr %var.load91, i32 0, i32 1
  %s.read.data96 = load ptr, ptr %s.read.data95, align 8
  %var.load97 = load i64, ptr %"var.start'", align 8
  %var.load98 = load i64, ptr %var.end90, align 8
  %start.is_neg99 = icmp slt i64 %var.load97, 0
  %rel.start100 = add i64 %s.read.len94, %var.load97
  %norm.start101 = select i1 %start.is_neg99, i64 %rel.start100, i64 %var.load97
  %start.lt.0102 = icmp slt i64 %norm.start101, 0
  %c.start.0103 = select i1 %start.lt.0102, i64 0, i64 %norm.start101
  %start.gt.len104 = icmp sgt i64 %c.start.0103, %s.read.len94
  %final.start105 = select i1 %start.gt.len104, i64 %s.read.len94, i64 %c.start.0103
  %end.is_neg106 = icmp slt i64 %var.load98, 0
  %rel.end107 = add i64 %s.read.len94, %var.load98
  %norm.end108 = select i1 %end.is_neg106, i64 %rel.end107, i64 %var.load98
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
  %str.build.len.gep119 = getelementptr inbounds { i64, ptr }, ptr %str.view118, i32 0, i32 0
  store i64 %view.len115, ptr %str.build.len.gep119, align 8
  %str.build.data.gep120 = getelementptr inbounds { i64, ptr }, ptr %str.view118, i32 0, i32 1
  store ptr %view.data116, ptr %str.build.data.gep120, align 8
  %a.load121 = load ptr, ptr %var.out, align 8
  %a.null122 = icmp eq ptr %a.load121, null
  br i1 %a.null122, label %a.create123, label %a.after124

a.create123:                                      ; preds = %choice.exit85
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 24)
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 128)
  %a.len.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 0
  store i64 0, ptr %a.len.gep129, align 8
  %a.data.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 1
  store ptr %a.buf128, ptr %a.data.gep130, align 8
  %a.cap.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 2
  store i64 16, ptr %a.cap.gep131, align 8
  store ptr %a.create126, ptr %var.out, align 8
  br label %a.after124

a.after124:                                       ; preds = %a.create123, %choice.exit85
  %a.load2132 = load ptr, ptr %var.out, align 8
  br label %a.check133

a.check133:                                       ; preds = %a.after124
  %a.len136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 0
  %a.len137 = load i64, ptr %a.len136, align 8
  %a.cap138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 2
  %a.cap139 = load i64, ptr %a.cap138, align 8
  %a.needs.grow140 = icmp eq i64 %a.len137, %a.cap139
  br i1 %a.needs.grow140, label %a.grow134, label %a.store135

a.grow134:                                        ; preds = %a.check133
  call void @dva_array_grow(ptr %a.load2132)
  br label %a.store135

a.store135:                                       ; preds = %a.grow134, %a.check133
  %a.cur.data141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 1
  %a.cur.data142 = load ptr, ptr %a.cur.data141, align 8
  %a.cur.len143 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 0
  %a.cur.len144 = load i64, ptr %a.cur.len143, align 8
  %a.elem.gep145 = getelementptr i64, ptr %a.cur.data142, i64 %a.cur.len144
  %slot.p2i146 = ptrtoint ptr %str.view118 to i64
  store i64 %slot.p2i146, ptr %a.elem.gep145, align 8
  %a.next.len147 = add i64 %a.cur.len144, 1
  %b.len.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 0
  store i64 %a.next.len147, ptr %b.len.gep148, align 8
  %var.load149 = load i64, ptr %var.pos, align 8
  %addtmp = add i64 %var.load149, 1
  store i64 %addtmp, ptr %"var.start'", align 8
  br label %choice.exit23

a.create153:                                      ; preds = %loop.exit.82
  %arena.cur155 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 24)
  %arena.cur157 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 128)
  %a.len.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 0
  store i64 0, ptr %a.len.gep159, align 8
  %a.data.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 1
  store ptr %a.buf158, ptr %a.data.gep160, align 8
  %a.cap.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create156, i32 0, i32 2
  store i64 16, ptr %a.cap.gep161, align 8
  store ptr %a.create156, ptr %var.out, align 8
  br label %a.after154

a.after154:                                       ; preds = %a.create153, %loop.exit.82
  %a.load2162 = load ptr, ptr %var.out, align 8
  ret ptr %a.load2162
}

define ptr @"str::words"(ptr %0) #3 {
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
  store i64 %str.len.query3, ptr %var.ls, align 8
  store i64 0, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.header.85:                                   ; preds = %loop.latch.85, %entry
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
  %step.val78 = load i64, ptr %loop.step.85, align 8
  %loop.next79 = add i64 %counter.load, %step.val78
  store i64 %loop.next79, ptr %loop.idx.85, align 8
  br label %loop.header.85

loop.exit.85:                                     ; preds = %choice.then24, %choice.then, %loop.exit.nat.85
  %var.load80 = load ptr, ptr %var.out, align 8
  %a.load81 = load ptr, ptr %var.out, align 8
  %a.null82 = icmp eq ptr %a.load81, null
  br i1 %a.null82, label %a.create83, label %a.after84

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
  %idx.oob = icmp uge i64 %var.load17, %s.read.len15
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.87.else:                                      ; preds = %loop.body.86
  br label %and.87.exit

and.87.exit:                                      ; preds = %and.87.else, %idx_ok
  %and.87.phi = phi i1 [ %call.res, %idx_ok ], [ %cmptmp12, %and.87.else ]
  br i1 %and.87.phi, label %choice.then18, label %choice.else

idx_ok:                                           ; preds = %abort.dead, %and.87.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data16, i64 %var.load17
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i1 @"str::is_ws"(i64 %s.byte.val)
  br label %and.87.exit

idx_oob:                                          ; preds = %and.87.then
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

loop.latch.88:                                    ; preds = %choice.exit53
  %step.val56 = load i64, ptr %loop.step.88, align 8
  %loop.next57 = add i64 %counter.load29, %step.val56
  store i64 %loop.next57, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %choice.else52, %loop.exit.nat.88
  store i64 %cycle.prev.u27, ptr %var._, align 8
  store i64 %cycle.prev.i28, ptr %var._i, align 8
  %var.load58 = load ptr, ptr %var.s, align 8
  %s.read.len59 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 0
  %s.read.len60 = load i64, ptr %s.read.len59, align 8
  %s.read.len61 = and i64 %s.read.len60, 281474976710655
  %s.read.data62 = getelementptr inbounds { i64, ptr }, ptr %var.load58, i32 0, i32 1
  %s.read.data63 = load ptr, ptr %s.read.data62, align 8
  %var.load64 = load i64, ptr %var.start, align 8
  %var.load65 = load i64, ptr %"var.i'", align 8
  %start.is_neg = icmp slt i64 %var.load64, 0
  %rel.start = add i64 %s.read.len61, %var.load64
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load64
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len61
  %final.start = select i1 %start.gt.len, i64 %s.read.len61, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load65, 0
  %rel.end = add i64 %s.read.len61, %var.load65
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load65
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len61
  %final.end = select i1 %end.gt.len, i64 %s.read.len61, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data63, i64 %final.start
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
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
  %idx.oob43 = icmp uge i64 %var.load42, %s.read.len39
  br i1 %idx.oob43, label %idx_oob45, label %idx_ok44

and.89.else:                                      ; preds = %loop.body.88
  br label %and.89.exit

and.89.exit:                                      ; preds = %and.89.else, %idx_ok44
  %and.89.phi = phi i1 [ %nottmp, %idx_ok44 ], [ %cmptmp35, %and.89.else ]
  br i1 %and.89.phi, label %choice.then51, label %choice.else52

idx_ok44:                                         ; preds = %abort.dead46, %and.89.then
  %s.byte.gep47 = getelementptr i8, ptr %s.read.data41, i64 %var.load42
  %s.byte48 = load i8, ptr %s.byte.gep47, align 1
  %s.byte.val49 = zext i8 %s.byte48 to i64
  %call.res50 = call i1 @"str::is_ws"(i64 %s.byte.val49)
  %nottmp = xor i1 %call.res50, true
  br label %and.89.exit

idx_oob45:                                        ; preds = %and.89.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %idx_ok44

choice.then51:                                    ; preds = %and.89.exit
  %var.load54 = load i64, ptr %"var.i'", align 8
  %addtmp55 = add i64 %var.load54, 1
  store i64 %addtmp55, ptr %"var.i'", align 8
  br label %choice.exit53

choice.else52:                                    ; preds = %and.89.exit
  br label %loop.exit.88

choice.exit53:                                    ; preds = %choice.then51
  br label %loop.latch.88

a.create:                                         ; preds = %loop.exit.88
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 24)
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 128)
  %a.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 0
  store i64 0, ptr %a.len.gep71, align 8
  %a.data.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 1
  store ptr %a.buf70, ptr %a.data.gep72, align 8
  %a.cap.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 2
  store i64 16, ptr %a.cap.gep73, align 8
  store ptr %a.create68, ptr %var.out, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %loop.exit.88
  %a.load2 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len74 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap75 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len74, %a.cap75
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data76 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len77 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data76, i64 %a.cur.len77
  %slot.p2i = ptrtoint ptr %str.view to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len77, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.85

a.create83:                                       ; preds = %loop.exit.85
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 24)
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 128)
  %a.len.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create86, i32 0, i32 0
  store i64 0, ptr %a.len.gep89, align 8
  %a.data.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create86, i32 0, i32 1
  store ptr %a.buf88, ptr %a.data.gep90, align 8
  %a.cap.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create86, i32 0, i32 2
  store i64 16, ptr %a.cap.gep91, align 8
  store ptr %a.create86, ptr %var.out, align 8
  br label %a.after84

a.after84:                                        ; preds = %a.create83, %loop.exit.85
  %a.load292 = load ptr, ptr %var.out, align 8
  ret ptr %a.load292
}

define { i64, ptr } @"str::join"(ptr %0, ptr %1) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._104 = alloca ptr, align 8
  %var._i103 = alloca i64, align 8
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

choice.exit8:                                     ; preds = %ret.dead48, %choice.exit
  %var.load49 = load ptr, ptr %var.sep, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load49, i32 0, i32 0
  %str.len.query50 = load i64, ptr %str.len.query, align 8
  %str.len.query51 = and i64 %str.len.query50, 281474976710655
  store i64 %str.len.query51, ptr %var.lsep, align 8
  %var.load52 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load52, 1
  %var.load53 = load i64, ptr %var.lsep, align 8
  %multmp = mul i64 %subtmp, %var.load53
  store i64 %multmp, ptr %var._fold_acc_240, align 8
  %var.load54 = load ptr, ptr %var.parts, align 8
  %a.load55 = load ptr, ptr %var.parts, align 8
  %a.null56 = icmp eq ptr %a.load55, null
  br i1 %a.null56, label %a.create57, label %a.after58

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
  %ret.pack47 = load { i64, ptr }, ptr %pay.ptr, align 8
  ret { i64, ptr } %ret.pack47

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
  %err.msg.len32 = trunc i64 %err.msg.len42 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data43 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len44 = load i64, ptr %err.file.len, align 8
  %err.file.len45 = and i64 %err.file.len44, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len45 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data46 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.90
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.90
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data43, i32 %err.file.len32, ptr %err.file.data46, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

ret.dead48:                                       ; No predecessors!
  br label %choice.exit8

a.create57:                                       ; preds = %choice.exit8
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
  store ptr %a.create60, ptr %var.parts, align 8
  br label %a.after58

a.after58:                                        ; preds = %a.create57, %choice.exit8
  %a.load266 = load ptr, ptr %var.parts, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load266, i32 0, i32 0
  %arr.cycle.len67 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load266, i32 0, i32 1
  %arr.cycle.data68 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.91, align 8
  br label %loop.header.91

loop.header.91:                                   ; preds = %loop.latch.91, %a.after58
  %counter.load = load i64, ptr %loop.idx.91, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len67
  br i1 %loop.cond, label %loop.body.91, label %loop.exit.nat.91

loop.body.91:                                     ; preds = %loop.header.91
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.91, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data68, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.p, align 8
  %var.load69 = load i64, ptr %var._fold_acc_240, align 8
  store i64 %var.load69, ptr %var.acc, align 8
  %var.load70 = load i64, ptr %var.acc, align 8
  %var.load71 = load ptr, ptr %var.p, align 8
  %str.len.query72 = getelementptr inbounds { i64, ptr }, ptr %var.load71, i32 0, i32 0
  %str.len.query73 = load i64, ptr %str.len.query72, align 8
  %str.len.query74 = and i64 %str.len.query73, 281474976710655
  %addtmp = add i64 %var.load70, %str.len.query74
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
  %var.load75 = load i64, ptr %var._fold_acc_240, align 8
  store i64 %var.load75, ptr %var.total, align 8
  %var.load76 = load i64, ptr %var.total, align 8
  %addtmp77 = add i64 %var.load76, 1
  %cap.neg = icmp slt i64 %addtmp77, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp77
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len78

b.buf.len78:                                      ; preds = %abort.dead, %loop.exit.91
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load80 = load ptr, ptr %var.parts, align 8
  %a.load81 = load ptr, ptr %var.parts, align 8
  %a.null82 = icmp eq ptr %a.load81, null
  br i1 %a.null82, label %a.create83, label %a.after84

str_overflow_abort:                               ; preds = %loop.exit.91
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len78

a.create83:                                       ; preds = %b.buf.len78
  %arena.cur85 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create86 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 24)
  %arena.cur87 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 128)
  %a.len.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create86, i32 0, i32 0
  store i64 0, ptr %a.len.gep89, align 8
  %a.data.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create86, i32 0, i32 1
  store ptr %a.buf88, ptr %a.data.gep90, align 8
  %a.cap.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create86, i32 0, i32 2
  store i64 16, ptr %a.cap.gep91, align 8
  store ptr %a.create86, ptr %var.parts, align 8
  br label %a.after84

a.after84:                                        ; preds = %a.create83, %b.buf.len78
  %a.load292 = load ptr, ptr %var.parts, align 8
  %arr.cycle.len93 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load292, i32 0, i32 0
  %arr.cycle.len94 = load i64, ptr %arr.cycle.len93, align 8
  %arr.cycle.data95 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load292, i32 0, i32 1
  %arr.cycle.data96 = load ptr, ptr %arr.cycle.data95, align 8
  store i64 0, ptr %loop.idx.92, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.92

loop.header.92:                                   ; preds = %loop.latch.92, %a.after84
  %counter.load97 = load i64, ptr %loop.idx.92, align 8
  %loop.cond98 = icmp slt i64 %counter.load97, %arr.cycle.len94
  br i1 %loop.cond98, label %loop.body.92, label %loop.exit.nat.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i99 = sub i64 %counter.load97, 0
  store i64 1, ptr %loop.step.92, align 8
  %arr.elem.gep100 = getelementptr i64, ptr %arr.cycle.data96, i64 %counter.load97
  %arr.elem.raw101 = load i64, ptr %arr.elem.gep100, align 8
  %slot.i2p102 = inttoptr i64 %arr.elem.raw101 to ptr
  store i64 %loop.rel.i99, ptr %var._i103, align 8
  store ptr %slot.i2p102, ptr %var._104, align 8
  store ptr %slot.i2p102, ptr %var.p, align 8
  store i64 %loop.rel.i99, ptr %var.i, align 8
  %var.load105 = load i64, ptr %var.i, align 8
  %cmptmp106 = icmp sgt i64 %var.load105, 0
  br i1 %cmptmp106, label %and.93.then, label %and.93.else

loop.exit.nat.92:                                 ; preds = %loop.header.92
  %loop.rel.end = sub i64 %counter.load97, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %b.grow_done152
  %step.val178 = load i64, ptr %loop.step.92, align 8
  %loop.next179 = add i64 %counter.load97, %step.val178
  store i64 %loop.next179, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %loop.exit.nat.92
  %var.load180 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 0
  %b.freeze.len181 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 1
  %b.freeze.data182 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len181, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data182, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack183 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack183

and.93.then:                                      ; preds = %loop.body.92
  %var.load107 = load i64, ptr %var.lsep, align 8
  %cmptmp108 = icmp sgt i64 %var.load107, 0
  br label %and.93.exit

and.93.else:                                      ; preds = %loop.body.92
  br label %and.93.exit

and.93.exit:                                      ; preds = %and.93.else, %and.93.then
  %and.93.phi = phi i1 [ %cmptmp108, %and.93.then ], [ %cmptmp106, %and.93.else ]
  br i1 %and.93.phi, label %choice.then109, label %choice.exit110

choice.then109:                                   ; preds = %and.93.exit
  %b.load = load ptr, ptr %var.b, align 8
  %var.load111 = load ptr, ptr %var.sep, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load111, i32 0, i32 0
  %app.str.len112 = load i64, ptr %app.str.len, align 8
  %app.str.len113 = and i64 %app.str.len112, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load111, i32 0, i32 1
  %app.str.data114 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len115 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len115, i64 %app.str.len113)
  %sum116 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf117 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf117, label %str_overflow_abort119, label %b.app.new.len118

choice.exit110:                                   ; preds = %b.grow_done, %and.93.exit
  %b.load132 = load ptr, ptr %var.b, align 8
  %var.load133 = load ptr, ptr %var.p, align 8
  %app.str.len134 = getelementptr inbounds { i64, ptr }, ptr %var.load133, i32 0, i32 0
  %app.str.len135 = load i64, ptr %app.str.len134, align 8
  %app.str.len136 = and i64 %app.str.len135, 281474976710655
  %app.str.data137 = getelementptr inbounds { i64, ptr }, ptr %var.load133, i32 0, i32 1
  %app.str.data138 = load ptr, ptr %app.str.data137, align 8
  %b.app.cur.len139 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 0
  %b.app.cur.len140 = load i64, ptr %b.app.cur.len139, align 8
  %b.app.new.len141 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len140, i64 %app.str.len136)
  %sum142 = extractvalue { i64, i1 } %b.app.new.len141, 0
  %ovf143 = extractvalue { i64, i1 } %b.app.new.len141, 1
  br i1 %ovf143, label %str_overflow_abort145, label %b.app.new.len144

b.app.new.len118:                                 ; preds = %abort.dead120, %choice.then109
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap121 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap121, %sum116
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort119:                            ; preds = %choice.then109
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead120:                                    ; No predecessors!
  br label %b.app.new.len118

b.grow2:                                          ; preds = %b.app.new.len118
  %b.cap2 = mul i64 %b.cap121, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum116
  %b.new.cap = select i1 %b.cap.need, i64 %sum116, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len2122 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2123 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf125 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.new.buf.len2126

b.nogrow2:                                        ; preds = %b.app.new.len118
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2126
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data130 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data130, i64 %b.app.cur.len115
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data114, i64 %app.str.len113, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data130, i64 %sum116
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum116, ptr %b.len.gep131, align 8
  br label %choice.exit110

b.new.buf.len2126:                                ; preds = %abort.dead128, %b.grow2
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2123, i64 %b.cur.len2122, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2122
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort127:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %b.new.buf.len2126

b.app.new.len144:                                 ; preds = %abort.dead146, %choice.exit110
  %b.cap147 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 2
  %b.cap148 = load i64, ptr %b.cap147, align 8
  %b.need.grow149 = icmp slt i64 %b.cap148, %sum142
  br i1 %b.need.grow149, label %b.grow2150, label %b.nogrow2151

str_overflow_abort145:                            ; preds = %choice.exit110
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead146:                                    ; No predecessors!
  br label %b.app.new.len144

b.grow2150:                                       ; preds = %b.app.new.len144
  %b.cap2153 = mul i64 %b.cap148, 2
  %b.cap.small154 = icmp slt i64 %b.cap2153, 16
  %b.cap.grow155 = select i1 %b.cap.small154, i64 16, i64 %b.cap2153
  %b.cap.need156 = icmp slt i64 %b.cap.grow155, %sum142
  %b.new.cap157 = select i1 %b.cap.need156, i64 %sum142, i64 %b.cap.grow155
  %b.cur.len2158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 0
  %b.cur.len2159 = load i64, ptr %b.cur.len2158, align 8
  %b.cur.data2160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 1
  %b.cur.data2161 = load ptr, ptr %b.cur.data2160, align 8
  %b.new.buf.len2162 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap157, i64 1)
  %sum163 = extractvalue { i64, i1 } %b.new.buf.len2162, 0
  %ovf164 = extractvalue { i64, i1 } %b.new.buf.len2162, 1
  br i1 %ovf164, label %str_overflow_abort166, label %b.new.buf.len2165

b.nogrow2151:                                     ; preds = %b.app.new.len144
  br label %b.grow_done152

b.grow_done152:                                   ; preds = %b.nogrow2151, %b.new.buf.len2165
  %b.app.data173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 1
  %b.app.data174 = load ptr, ptr %b.app.data173, align 8
  %b.app.dst175 = getelementptr i8, ptr %b.app.data174, i64 %b.app.cur.len140
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst175, ptr align 1 %app.str.data138, i64 %app.str.len136, i1 false)
  %b.app.nul176 = getelementptr i8, ptr %b.app.data174, i64 %sum142
  store i8 0, ptr %b.app.nul176, align 1
  %b.len.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 0
  store i64 %sum142, ptr %b.len.gep177, align 8
  br label %loop.latch.92

b.new.buf.len2165:                                ; preds = %abort.dead167, %b.grow2150
  %arena.cur168 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2169 = call ptr @dva_arena_alloc(ptr %arena.cur168, i64 %sum163)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2169, ptr align 1 %b.cur.data2161, i64 %b.cur.len2159, i1 false)
  %b.grow2.nul170 = getelementptr i8, ptr %b.new.buf2169, i64 %b.cur.len2159
  store i8 0, ptr %b.grow2.nul170, align 1
  %b.new.data2.gep171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 1
  store ptr %b.new.buf2169, ptr %b.new.data2.gep171, align 8
  %b.new.cap2.gep172 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load132, i32 0, i32 2
  store i64 %b.new.cap157, ptr %b.new.cap2.gep172, align 8
  br label %b.grow_done152

str_overflow_abort166:                            ; preds = %b.grow2150
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead167:                                    ; No predecessors!
  br label %b.new.buf.len2165
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define { i64, ptr } @"str::lower"(ptr %0) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.width = alloca i64, align 8
  %var.cp = alloca i64, align 8
  %var._dp_1 = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, i64 }, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.9.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
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
  %var.load99 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load99, i32 0, i32 0
  %b.freeze.len100 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load99, i32 0, i32 1
  %b.freeze.data101 = load ptr, ptr %b.freeze.data, align 8
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
  %idx.oob = icmp uge i64 %var.load16, %s.read.len14
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead17, %choice.exit11
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load18 = load i64, ptr %var.b0, align 8
  %cmptmp19 = icmp slt i64 %var.load18, 128
  br i1 %cmptmp19, label %choice.then20, label %choice.else

idx_oob:                                          ; preds = %choice.exit11
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
  store { i64, i64 } %call.res40, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var._dp_1, align 8
  %var.load41 = load ptr, ptr %var._dp_1, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load41, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cp, align 8
  %var.load42 = load ptr, ptr %var._dp_1, align 8
  %fld.gep43 = getelementptr inbounds { i64, i64 }, ptr %var.load42, i32 0, i32 1
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  store i64 %fld.load44, ptr %var.width, align 8
  %var.load45 = load i64, ptr %var.cp, align 8
  %cmptmp46 = icmp slt i64 %var.load45, 0
  br i1 %cmptmp46, label %choice.then47, label %choice.else48

choice.exit21:                                    ; preds = %choice.exit49, %b.push_done
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

choice.then47:                                    ; preds = %choice.else
  %b.load50 = load ptr, ptr %var.b, align 8
  %var.load51 = load i64, ptr %var.b0, align 8
  %b.b.ge052 = icmp sge i64 %var.load51, 0
  %b.b.le25553 = icmp sle i64 %var.load51, 255
  %b.byte.range54 = and i1 %b.b.ge052, %b.b.le25553
  br i1 %b.byte.range54, label %b.byte_ok55, label %b.byte_err56

choice.else48:                                    ; preds = %choice.else
  %var.load93 = load ptr, ptr %var.b, align 8
  %var.load94 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load94 to i32
  %call.res95 = call i32 @"unicode::to_lower"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %var.load93, i32 %call.res95)
  %var.load96 = load i64, ptr %"var.i'", align 8
  %var.load97 = load i64, ptr %var.width, align 8
  %addtmp98 = add i64 %var.load96, %var.load97
  store i64 %addtmp98, ptr %"var.i'", align 8
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.else48, %b.push_done68
  br label %choice.exit21

b.byte_ok55:                                      ; preds = %abort.dead57, %choice.then47
  %b.byte.i858 = trunc i64 %var.load51 to i8
  %b.len59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  %b.len60 = load i64, ptr %b.len59, align 8
  %b.cap61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 2
  %b.cap62 = load i64, ptr %b.cap61, align 8
  %b.data63 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  %b.data64 = load ptr, ptr %b.data63, align 8
  %b.needs.grow65 = icmp eq i64 %b.len60, %b.cap62
  br i1 %b.needs.grow65, label %b.grow66, label %b.nogrow67

b.byte_err56:                                     ; preds = %choice.then47
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %b.byte_ok55

b.grow66:                                         ; preds = %b.byte_ok55
  %b.cap269 = mul i64 %b.cap62, 2
  %b.cap.small70 = icmp slt i64 %b.cap269, 16
  %b.new.cap71 = select i1 %b.cap.small70, i64 16, i64 %b.cap269
  %b.new.buf.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap71, i64 1)
  %sum73 = extractvalue { i64, i1 } %b.new.buf.len72, 0
  %ovf74 = extractvalue { i64, i1 } %b.new.buf.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %b.new.buf.len75

b.nogrow67:                                       ; preds = %b.byte_ok55
  br label %b.push_done68

b.push_done68:                                    ; preds = %b.nogrow67, %b.new.buf.len75
  %b.cur.data83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  %b.cur.data84 = load ptr, ptr %b.cur.data83, align 8
  %b.cur.len85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  %b.cur.len86 = load i64, ptr %b.cur.len85, align 8
  %b.byte.gep87 = getelementptr i8, ptr %b.cur.data84, i64 %b.cur.len86
  store i8 %b.byte.i858, ptr %b.byte.gep87, align 1
  %b.next.len88 = add i64 %b.cur.len86, 1
  %b.nul89 = getelementptr i8, ptr %b.cur.data84, i64 %b.next.len88
  store i8 0, ptr %b.nul89, align 1
  %b.len.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  store i64 %b.next.len88, ptr %b.len.gep90, align 8
  %var.load91 = load i64, ptr %"var.i'", align 8
  %addtmp92 = add i64 %var.load91, 1
  store i64 %addtmp92, ptr %"var.i'", align 8
  br label %choice.exit49

b.new.buf.len75:                                  ; preds = %abort.dead77, %b.grow66
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %sum73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf79, ptr align 1 %b.data64, i64 %b.len60, i1 false)
  %b.grow.nul80 = getelementptr i8, ptr %b.new.buf79, i64 %b.len60
  store i8 0, ptr %b.grow.nul80, align 1
  %b.new.data.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  store ptr %b.new.buf79, ptr %b.new.data.gep81, align 8
  %b.new.cap.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 2
  store i64 %b.new.cap71, ptr %b.new.cap.gep82, align 8
  br label %b.push_done68

str_overflow_abort76:                             ; preds = %b.grow66
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead77:                                     ; No predecessors!
  br label %b.new.buf.len75

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data101, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data101, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data101, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len100, 1
  %arena.cur102 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur102, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data101, i64 %b.freeze.len100, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len100
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.94
  %b.freeze.data103 = phi ptr [ %b.freeze.data101, %loop.exit.94 ], [ %b.freeze.data101, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len100, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data103, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load99, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load99, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load99, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack104 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack104
}

declare i64 @"ascii::to_lower"(i64) #3

declare { i64, i64 } @"utf::decode_str_at"(ptr, i64) #3

declare i32 @"unicode::to_lower"(i32) #3

declare void @"utf::append_rune"(ptr, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"str::upper"(ptr %0) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.width = alloca i64, align 8
  %var.cp = alloca i64, align 8
  %var._dp_2 = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, i64 }, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %ret.pack = load { i64, ptr }, ptr @str.9.struct, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
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
  %var.load127 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load127, i32 0, i32 0
  %b.freeze.len128 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load127, i32 0, i32 1
  %b.freeze.data129 = load ptr, ptr %b.freeze.data, align 8
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
  %idx.oob = icmp uge i64 %var.load16, %s.read.len14
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead17, %choice.exit11
  %s.byte.gep = getelementptr i8, ptr %s.read.data15, i64 %var.load16
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load18 = load i64, ptr %var.b0, align 8
  %cmptmp19 = icmp slt i64 %var.load18, 128
  br i1 %cmptmp19, label %choice.then20, label %choice.else

idx_oob:                                          ; preds = %choice.exit11
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
  store { i64, i64 } %call.res40, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var._dp_2, align 8
  %var.load41 = load ptr, ptr %var._dp_2, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load41, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.cp, align 8
  %var.load42 = load ptr, ptr %var._dp_2, align 8
  %fld.gep43 = getelementptr inbounds { i64, i64 }, ptr %var.load42, i32 0, i32 1
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  store i64 %fld.load44, ptr %var.width, align 8
  %var.load45 = load i64, ptr %var.cp, align 8
  %cmptmp46 = icmp slt i64 %var.load45, 0
  br i1 %cmptmp46, label %choice.then47, label %choice.else48

choice.exit21:                                    ; preds = %choice.exit49, %b.push_done
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

choice.then47:                                    ; preds = %choice.else
  %b.load50 = load ptr, ptr %var.b, align 8
  %var.load51 = load i64, ptr %var.b0, align 8
  %b.b.ge052 = icmp sge i64 %var.load51, 0
  %b.b.le25553 = icmp sle i64 %var.load51, 255
  %b.byte.range54 = and i1 %b.b.ge052, %b.b.le25553
  br i1 %b.byte.range54, label %b.byte_ok55, label %b.byte_err56

choice.else48:                                    ; preds = %choice.else
  %var.load93 = load i64, ptr %var.cp, align 8
  %cmptmp94 = icmp eq i64 %var.load93, 223
  br i1 %cmptmp94, label %choice.then95, label %choice.else96

choice.exit49:                                    ; preds = %choice.exit97, %b.push_done68
  br label %choice.exit21

b.byte_ok55:                                      ; preds = %abort.dead57, %choice.then47
  %b.byte.i858 = trunc i64 %var.load51 to i8
  %b.len59 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  %b.len60 = load i64, ptr %b.len59, align 8
  %b.cap61 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 2
  %b.cap62 = load i64, ptr %b.cap61, align 8
  %b.data63 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  %b.data64 = load ptr, ptr %b.data63, align 8
  %b.needs.grow65 = icmp eq i64 %b.len60, %b.cap62
  br i1 %b.needs.grow65, label %b.grow66, label %b.nogrow67

b.byte_err56:                                     ; preds = %choice.then47
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %b.byte_ok55

b.grow66:                                         ; preds = %b.byte_ok55
  %b.cap269 = mul i64 %b.cap62, 2
  %b.cap.small70 = icmp slt i64 %b.cap269, 16
  %b.new.cap71 = select i1 %b.cap.small70, i64 16, i64 %b.cap269
  %b.new.buf.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap71, i64 1)
  %sum73 = extractvalue { i64, i1 } %b.new.buf.len72, 0
  %ovf74 = extractvalue { i64, i1 } %b.new.buf.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %b.new.buf.len75

b.nogrow67:                                       ; preds = %b.byte_ok55
  br label %b.push_done68

b.push_done68:                                    ; preds = %b.nogrow67, %b.new.buf.len75
  %b.cur.data83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  %b.cur.data84 = load ptr, ptr %b.cur.data83, align 8
  %b.cur.len85 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  %b.cur.len86 = load i64, ptr %b.cur.len85, align 8
  %b.byte.gep87 = getelementptr i8, ptr %b.cur.data84, i64 %b.cur.len86
  store i8 %b.byte.i858, ptr %b.byte.gep87, align 1
  %b.next.len88 = add i64 %b.cur.len86, 1
  %b.nul89 = getelementptr i8, ptr %b.cur.data84, i64 %b.next.len88
  store i8 0, ptr %b.nul89, align 1
  %b.len.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  store i64 %b.next.len88, ptr %b.len.gep90, align 8
  %var.load91 = load i64, ptr %"var.i'", align 8
  %addtmp92 = add i64 %var.load91, 1
  store i64 %addtmp92, ptr %"var.i'", align 8
  br label %choice.exit49

b.new.buf.len75:                                  ; preds = %abort.dead77, %b.grow66
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf79 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %sum73)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf79, ptr align 1 %b.data64, i64 %b.len60, i1 false)
  %b.grow.nul80 = getelementptr i8, ptr %b.new.buf79, i64 %b.len60
  store i8 0, ptr %b.grow.nul80, align 1
  %b.new.data.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  store ptr %b.new.buf79, ptr %b.new.data.gep81, align 8
  %b.new.cap.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 2
  store i64 %b.new.cap71, ptr %b.new.cap.gep82, align 8
  br label %b.push_done68

str_overflow_abort76:                             ; preds = %b.grow66
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead77:                                     ; No predecessors!
  br label %b.new.buf.len75

choice.then95:                                    ; preds = %choice.else48
  %b.load98 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.13.struct, align 8
  %app.str.len99 = and i64 %app.str.len, 281474976710655
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.13.struct, i32 0, i32 1), align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 0
  %b.app.cur.len100 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len100, i64 %app.str.len99)
  %sum101 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf102 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf102, label %str_overflow_abort104, label %b.app.new.len103

choice.else96:                                    ; preds = %choice.else48
  %var.load121 = load ptr, ptr %var.b, align 8
  %var.load122 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load122 to i32
  %call.res123 = call i32 @"unicode::to_upper"(i32 %coerce.trunc)
  call void @"utf::append_rune"(ptr %var.load121, i32 %call.res123)
  br label %choice.exit97

choice.exit97:                                    ; preds = %choice.else96, %b.grow_done
  %var.load124 = load i64, ptr %"var.i'", align 8
  %var.load125 = load i64, ptr %var.width, align 8
  %addtmp126 = add i64 %var.load124, %var.load125
  store i64 %addtmp126, ptr %"var.i'", align 8
  br label %choice.exit49

b.app.new.len103:                                 ; preds = %abort.dead105, %choice.then95
  %b.cap106 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 2
  %b.cap107 = load i64, ptr %b.cap106, align 8
  %b.need.grow = icmp slt i64 %b.cap107, %sum101
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort104:                            ; preds = %choice.then95
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead105:                                    ; No predecessors!
  br label %b.app.new.len103

b.grow2:                                          ; preds = %b.app.new.len103
  %b.cap2108 = mul i64 %b.cap107, 2
  %b.cap.small109 = icmp slt i64 %b.cap2108, 16
  %b.cap.grow = select i1 %b.cap.small109, i64 16, i64 %b.cap2108
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum101
  %b.new.cap110 = select i1 %b.cap.need, i64 %sum101, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 0
  %b.cur.len2111 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 1
  %b.cur.data2112 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap110, i64 1)
  %sum113 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf114 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf114, label %str_overflow_abort116, label %b.new.buf.len2115

b.nogrow2:                                        ; preds = %b.app.new.len103
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2115
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 1
  %b.app.data119 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data119, i64 %b.app.cur.len100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len99, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data119, i64 %sum101
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 0
  store i64 %sum101, ptr %b.len.gep120, align 8
  br label %choice.exit97

b.new.buf.len2115:                                ; preds = %abort.dead117, %b.grow2
  %arena.cur118 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 %sum113)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2112, i64 %b.cur.len2111, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2111
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load98, i32 0, i32 2
  store i64 %b.new.cap110, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort116:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead117:                                    ; No predecessors!
  br label %b.new.buf.len2115

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data129, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data129, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data129, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len128, 1
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data129, i64 %b.freeze.len128, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len128
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.95
  %b.freeze.data131 = phi ptr [ %b.freeze.data129, %loop.exit.95 ], [ %b.freeze.data129, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len128, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data131, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load127, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load127, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load127, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack132 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack132
}

declare i64 @"ascii::to_upper"(i64) #3

declare i32 @"unicode::to_upper"(i32) #3

define { i64, ptr } @"str::repeat"(ptr %0, i64 %1) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.97 = alloca i64, align 8
  %loop.idx.97 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.len = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.n, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load3, 0
  br i1 %cmptmp, label %or.96.then, label %or.96.else

or.96.then:                                       ; preds = %entry
  br label %or.96.exit

or.96.else:                                       ; preds = %entry
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
  %cap.neg = icmp slt i64 %multmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %multmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len15

ret.dead12:                                       ; No predecessors!
  br label %choice.exit9

b.buf.len15:                                      ; preds = %abort.dead, %choice.exit9
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load16 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.97, align 8
  br label %loop.header.97

str_overflow_abort:                               ; preds = %choice.exit9
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len15

loop.header.97:                                   ; preds = %loop.latch.97, %b.buf.len15
  %counter.load = load i64, ptr %loop.idx.97, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load16
  br i1 %loop.cond, label %loop.body.97, label %loop.exit.nat.97

loop.body.97:                                     ; preds = %loop.header.97
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.97, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load17 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 0
  %app.str.len18 = load i64, ptr %app.str.len, align 8
  %app.str.len19 = and i64 %app.str.len18, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load17, i32 0, i32 1
  %app.str.data20 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len21 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len21, i64 %app.str.len19)
  %sum22 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf23 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf23, label %str_overflow_abort25, label %b.app.new.len24

loop.exit.nat.97:                                 ; preds = %loop.header.97
  br label %loop.exit.97

loop.latch.97:                                    ; preds = %b.grow_done
  %step.val = load i64, ptr %loop.step.97, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.97, align 8
  br label %loop.header.97

loop.exit.97:                                     ; preds = %loop.exit.nat.97
  %var.load38 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load38, i32 0, i32 0
  %b.freeze.len39 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load38, i32 0, i32 1
  %b.freeze.data40 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len39, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data40, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load38, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load38, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load38, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack41 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack41

b.app.new.len24:                                  ; preds = %abort.dead26, %loop.body.97
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap27 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap27, %sum22
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort25:                             ; preds = %loop.body.97
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %b.app.new.len24

b.grow2:                                          ; preds = %b.app.new.len24
  %b.cap2 = mul i64 %b.cap27, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum22
  %b.new.cap = select i1 %b.cap.need, i64 %sum22, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len228 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data229 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf31 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.new.buf.len232

b.nogrow2:                                        ; preds = %b.app.new.len24
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len232
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data36 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data36, i64 %b.app.cur.len21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data20, i64 %app.str.len19, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data36, i64 %sum22
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum22, ptr %b.len.gep37, align 8
  br label %loop.latch.97

b.new.buf.len232:                                 ; preds = %abort.dead34, %b.grow2
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 %sum30)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data229, i64 %b.cur.len228, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len228
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort33:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %b.new.buf.len232
}

define { i64, ptr } @"str::pad_left"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.98 = alloca i64, align 8
  %loop.idx.98 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.width, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load5, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load6 = load i64, ptr %var.width, align 8
  %var.load7 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load6, %var.load7
  store i64 %subtmp, ptr %var.pad_n, align 8
  %var.load8 = load i64, ptr %var.width, align 8
  %cap.neg = icmp slt i64 %var.load8, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len9:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load10 = load i64, ptr %var.pad_n, align 8
  store i64 0, ptr %loop.idx.98, align 8
  br label %loop.header.98

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len9

loop.header.98:                                   ; preds = %loop.latch.98, %b.buf.len9
  %counter.load = load i64, ptr %loop.idx.98, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load10
  br i1 %loop.cond, label %loop.body.98, label %loop.exit.nat.98

loop.body.98:                                     ; preds = %loop.header.98
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.98, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load11 = load i64, ptr %var.pad_byte, align 8
  %b.b.ge0 = icmp sge i64 %var.load11, 0
  %b.b.le255 = icmp sle i64 %var.load11, 255
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
  %b.load25 = load ptr, ptr %var.b, align 8
  %var.load26 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 0
  %app.str.len27 = load i64, ptr %app.str.len, align 8
  %app.str.len28 = and i64 %app.str.len27, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load26, i32 0, i32 1
  %app.str.data29 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 0
  %b.app.cur.len30 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len30, i64 %app.str.len28)
  %sum31 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf32 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf32, label %str_overflow_abort34, label %b.app.new.len33

b.byte_ok:                                        ; preds = %abort.dead12, %loop.body.98
  %b.byte.i8 = trunc i64 %var.load11 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len13 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap14 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data15 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len13, %b.cap14
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %loop.body.98
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead12:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap14, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum16 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf17 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf17, label %str_overflow_abort19, label %b.new.buf.len18

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len18
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data22 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len23 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data22, i64 %b.cur.len23
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len23, 1
  %b.nul = getelementptr i8, ptr %b.cur.data22, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep24, align 8
  br label %loop.latch.98

b.new.buf.len18:                                  ; preds = %abort.dead20, %b.grow
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum16)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data15, i64 %b.len13, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len13
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort19:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %b.new.buf.len18

b.app.new.len33:                                  ; preds = %abort.dead35, %loop.exit.98
  %b.cap36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap36, align 8
  %b.need.grow = icmp slt i64 %b.cap37, %sum31
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort34:                             ; preds = %loop.exit.98
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead35:                                     ; No predecessors!
  br label %b.app.new.len33

b.grow2:                                          ; preds = %b.app.new.len33
  %b.cap238 = mul i64 %b.cap37, 2
  %b.cap.small39 = icmp slt i64 %b.cap238, 16
  %b.cap.grow = select i1 %b.cap.small39, i64 16, i64 %b.cap238
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum31
  %b.new.cap40 = select i1 %b.cap.need, i64 %sum31, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 0
  %b.cur.len241 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 1
  %b.cur.data242 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap40, i64 1)
  %sum43 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf44 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf44, label %str_overflow_abort46, label %b.new.buf.len245

b.nogrow2:                                        ; preds = %b.app.new.len33
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len245
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 1
  %b.app.data49 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data49, i64 %b.app.cur.len30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data29, i64 %app.str.len28, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data49, i64 %sum31
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 0
  store i64 %sum31, ptr %b.len.gep50, align 8
  %var.load51 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 0
  %b.freeze.len52 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 1
  %b.freeze.data53 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len52, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data53, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack54 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack54

b.new.buf.len245:                                 ; preds = %abort.dead47, %b.grow2
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 %sum43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data242, i64 %b.cur.len241, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len241
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load25, i32 0, i32 2
  store i64 %b.new.cap40, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort46:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead47:                                     ; No predecessors!
  br label %b.new.buf.len245
}

define { i64, ptr } @"str::pad_right"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.99 = alloca i64, align 8
  %loop.idx.99 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.width, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load5, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load6 = load i64, ptr %var.width, align 8
  %var.load7 = load i64, ptr %var.len, align 8
  %subtmp = sub i64 %var.load6, %var.load7
  store i64 %subtmp, ptr %var.pad_n, align 8
  %var.load8 = load i64, ptr %var.width, align 8
  %cap.neg = icmp slt i64 %var.load8, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load8
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len9

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len9:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load10 = load ptr, ptr %var.s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %app.str.len11 = load i64, ptr %app.str.len, align 8
  %app.str.len12 = and i64 %app.str.len11, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %app.str.data13 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len14 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len14, i64 %app.str.len12)
  %sum15 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf16 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %b.app.new.len17

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len9

b.app.new.len17:                                  ; preds = %abort.dead19, %b.buf.len9
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap20 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap20, %sum15
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort18:                             ; preds = %b.buf.len9
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead19:                                     ; No predecessors!
  br label %b.app.new.len17

b.grow2:                                          ; preds = %b.app.new.len17
  %b.cap2 = mul i64 %b.cap20, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum15
  %b.new.cap = select i1 %b.cap.need, i64 %sum15, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len221 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data222 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum23 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf24 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf24, label %str_overflow_abort26, label %b.new.buf.len225

b.nogrow2:                                        ; preds = %b.app.new.len17
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len225
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data29 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data29, i64 %b.app.cur.len14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data13, i64 %app.str.len12, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data29, i64 %sum15
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep30 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum15, ptr %b.len.gep30, align 8
  %var.load31 = load i64, ptr %var.pad_n, align 8
  store i64 0, ptr %loop.idx.99, align 8
  br label %loop.header.99

b.new.buf.len225:                                 ; preds = %abort.dead27, %b.grow2
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %sum23)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data222, i64 %b.cur.len221, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len221
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort26:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead27:                                     ; No predecessors!
  br label %b.new.buf.len225

loop.header.99:                                   ; preds = %loop.latch.99, %b.grow_done
  %counter.load = load i64, ptr %loop.idx.99, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load31
  br i1 %loop.cond, label %loop.body.99, label %loop.exit.nat.99

loop.body.99:                                     ; preds = %loop.header.99
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.99, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %b.load32 = load ptr, ptr %var.b, align 8
  %var.load33 = load i64, ptr %var.pad_byte, align 8
  %b.b.ge0 = icmp sge i64 %var.load33, 0
  %b.b.le255 = icmp sle i64 %var.load33, 255
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
  %var.load51 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 0
  %b.freeze.len52 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 1
  %b.freeze.data53 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len52, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data53, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load51, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack54 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack54

b.byte_ok:                                        ; preds = %abort.dead34, %loop.body.99
  %b.byte.i8 = trunc i64 %var.load33 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load32, i32 0, i32 0
  %b.len35 = load i64, ptr %b.len, align 8
  %b.cap36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load32, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap36, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load32, i32 0, i32 1
  %b.data38 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len35, %b.cap37
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %loop.body.99
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap239 = mul i64 %b.cap37, 2
  %b.cap.small40 = icmp slt i64 %b.cap239, 16
  %b.new.cap41 = select i1 %b.cap.small40, i64 16, i64 %b.cap239
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap41, i64 1)
  %sum42 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf43 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %b.new.buf.len44

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len44
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load32, i32 0, i32 1
  %b.cur.data48 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load32, i32 0, i32 0
  %b.cur.len49 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data48, i64 %b.cur.len49
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len49, 1
  %b.nul = getelementptr i8, ptr %b.cur.data48, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load32, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep50, align 8
  br label %loop.latch.99

b.new.buf.len44:                                  ; preds = %abort.dead46, %b.grow
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data38, i64 %b.len35, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len35
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load32, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load32, i32 0, i32 2
  store i64 %b.new.cap41, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort45:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %b.new.buf.len44
}

define { i64, ptr } @"str::reverse"(ptr %0) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
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
  store i64 %str.len.query2, ptr %var.len, align 8
  %var.load3 = load i64, ptr %var.len, align 8
  %cmptmp = icmp sle i64 %var.load3, 1
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load4, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
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
  %idx.oob = icmp uge i64 %subtmp14, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

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
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len30, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data31, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack32 = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack32

idx_ok:                                           ; preds = %abort.dead15, %loop.body.100
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %subtmp14
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0 = icmp sge i64 %s.byte.val, 0
  %b.b.le255 = icmp sle i64 %s.byte.val, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

idx_oob:                                          ; preds = %loop.body.100
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
}

define { i64, ptr } @"str::replace_first"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
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
  %cmptmp = icmp eq i64 %str.len.query2, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load3, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
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
  store i64 %str.len.query11, ptr %var.ls, align 8
  %var.load12 = load ptr, ptr %var.old, align 8
  %str.len.query13 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %str.len.query14 = load i64, ptr %str.len.query13, align 8
  %str.len.query15 = and i64 %str.len.query14, 281474976710655
  store i64 %str.len.query15, ptr %var.lo, align 8
  %var.load16 = load i64, ptr %var.ls, align 8
  %var.load17 = load i64, ptr %var.lo, align 8
  %subtmp = sub i64 %var.load16, %var.load17
  %var.load18 = load ptr, ptr %var.new_s, align 8
  %str.len.query19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %str.len.query20 = load i64, ptr %str.len.query19, align 8
  %str.len.query21 = and i64 %str.len.query20, 281474976710655
  %addtmp = add i64 %subtmp, %str.len.query21
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len22

choice.else:                                      ; preds = %choice.exit
  %var.load169 = load ptr, ptr %var.s, align 8
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else, %choice.exit100
  %choice.res = phi ptr [ %builder.freeze, %choice.exit100 ], [ %var.load169, %choice.else ]
  %ret.pack170 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack170

b.buf.len22:                                      ; preds = %abort.dead, %choice.then6
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load23 = load i64, ptr %var.idx, align 8
  %cmptmp24 = icmp sgt i64 %var.load23, 0
  br i1 %cmptmp24, label %choice.then25, label %choice.exit26

str_overflow_abort:                               ; preds = %choice.then6
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len22

choice.then25:                                    ; preds = %b.buf.len22
  %b.load = load ptr, ptr %var.b, align 8
  %var.load27 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %s.read.len28 = load i64, ptr %s.read.len, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  %var.load31 = load i64, ptr %var.idx, align 8
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

choice.exit26:                                    ; preds = %b.grow_done, %b.buf.len22
  %b.load49 = load ptr, ptr %var.b, align 8
  %var.load50 = load ptr, ptr %var.new_s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 0
  %app.str.len51 = load i64, ptr %app.str.len, align 8
  %app.str.len52 = and i64 %app.str.len51, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load50, i32 0, i32 1
  %app.str.data53 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 0
  %b.app.cur.len55 = load i64, ptr %b.app.cur.len54, align 8
  %b.app.new.len56 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len55, i64 %app.str.len52)
  %sum57 = extractvalue { i64, i1 } %b.app.new.len56, 0
  %ovf58 = extractvalue { i64, i1 } %b.app.new.len56, 1
  br i1 %ovf58, label %str_overflow_abort60, label %b.app.new.len59

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

b.app.new.len59:                                  ; preds = %abort.dead61, %choice.exit26
  %b.cap62 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 2
  %b.cap63 = load i64, ptr %b.cap62, align 8
  %b.need.grow64 = icmp slt i64 %b.cap63, %sum57
  br i1 %b.need.grow64, label %b.grow265, label %b.nogrow266

str_overflow_abort60:                             ; preds = %choice.exit26
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %b.app.new.len59

b.grow265:                                        ; preds = %b.app.new.len59
  %b.cap268 = mul i64 %b.cap63, 2
  %b.cap.small69 = icmp slt i64 %b.cap268, 16
  %b.cap.grow70 = select i1 %b.cap.small69, i64 16, i64 %b.cap268
  %b.cap.need71 = icmp slt i64 %b.cap.grow70, %sum57
  %b.new.cap72 = select i1 %b.cap.need71, i64 %sum57, i64 %b.cap.grow70
  %b.cur.len273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 0
  %b.cur.len274 = load i64, ptr %b.cur.len273, align 8
  %b.cur.data275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 1
  %b.cur.data276 = load ptr, ptr %b.cur.data275, align 8
  %b.new.buf.len277 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap72, i64 1)
  %sum78 = extractvalue { i64, i1 } %b.new.buf.len277, 0
  %ovf79 = extractvalue { i64, i1 } %b.new.buf.len277, 1
  br i1 %ovf79, label %str_overflow_abort81, label %b.new.buf.len280

b.nogrow266:                                      ; preds = %b.app.new.len59
  br label %b.grow_done67

b.grow_done67:                                    ; preds = %b.nogrow266, %b.new.buf.len280
  %b.app.data88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 1
  %b.app.data89 = load ptr, ptr %b.app.data88, align 8
  %b.app.dst90 = getelementptr i8, ptr %b.app.data89, i64 %b.app.cur.len55
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst90, ptr align 1 %app.str.data53, i64 %app.str.len52, i1 false)
  %b.app.nul91 = getelementptr i8, ptr %b.app.data89, i64 %sum57
  store i8 0, ptr %b.app.nul91, align 1
  %b.len.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 0
  store i64 %sum57, ptr %b.len.gep92, align 8
  %var.load93 = load i64, ptr %var.idx, align 8
  %var.load94 = load i64, ptr %var.lo, align 8
  %addtmp95 = add i64 %var.load93, %var.load94
  store i64 %addtmp95, ptr %var.after, align 8
  %var.load96 = load i64, ptr %var.after, align 8
  %var.load97 = load i64, ptr %var.ls, align 8
  %cmptmp98 = icmp slt i64 %var.load96, %var.load97
  br i1 %cmptmp98, label %choice.then99, label %choice.exit100

b.new.buf.len280:                                 ; preds = %abort.dead82, %b.grow265
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf284 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 %sum78)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf284, ptr align 1 %b.cur.data276, i64 %b.cur.len274, i1 false)
  %b.grow2.nul85 = getelementptr i8, ptr %b.new.buf284, i64 %b.cur.len274
  store i8 0, ptr %b.grow2.nul85, align 1
  %b.new.data2.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 1
  store ptr %b.new.buf284, ptr %b.new.data2.gep86, align 8
  %b.new.cap2.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load49, i32 0, i32 2
  store i64 %b.new.cap72, ptr %b.new.cap2.gep87, align 8
  br label %b.grow_done67

str_overflow_abort81:                             ; preds = %b.grow265
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %b.new.buf.len280

choice.then99:                                    ; preds = %b.grow_done67
  %b.load101 = load ptr, ptr %var.b, align 8
  %var.load102 = load ptr, ptr %var.s, align 8
  %s.read.len103 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 0
  %s.read.len104 = load i64, ptr %s.read.len103, align 8
  %s.read.len105 = and i64 %s.read.len104, 281474976710655
  %s.read.data106 = getelementptr inbounds { i64, ptr }, ptr %var.load102, i32 0, i32 1
  %s.read.data107 = load ptr, ptr %s.read.data106, align 8
  %var.load108 = load i64, ptr %var.after, align 8
  %var.load109 = load i64, ptr %var.ls, align 8
  %start.is_neg = icmp slt i64 %var.load108, 0
  %rel.start110 = add i64 %s.read.len105, %var.load108
  %norm.start111 = select i1 %start.is_neg, i64 %rel.start110, i64 %var.load108
  %start.lt.0112 = icmp slt i64 %norm.start111, 0
  %c.start.0113 = select i1 %start.lt.0112, i64 0, i64 %norm.start111
  %start.gt.len114 = icmp sgt i64 %c.start.0113, %s.read.len105
  %final.start115 = select i1 %start.gt.len114, i64 %s.read.len105, i64 %c.start.0113
  %end.is_neg116 = icmp slt i64 %var.load109, 0
  %rel.end117 = add i64 %s.read.len105, %var.load109
  %norm.end118 = select i1 %end.is_neg116, i64 %rel.end117, i64 %var.load109
  %end.lt.0119 = icmp slt i64 %norm.end118, 0
  %c.end.0120 = select i1 %end.lt.0119, i64 0, i64 %norm.end118
  %end.gt.len121 = icmp sgt i64 %c.end.0120, %s.read.len105
  %final.end122 = select i1 %end.gt.len121, i64 %s.read.len105, i64 %c.end.0120
  %view.empty123 = icmp sle i64 %final.end122, %final.start115
  %view.len.sub124 = sub i64 %final.end122, %final.start115
  %view.len125 = select i1 %view.empty123, i64 0, i64 %view.len.sub124
  %view.data126 = getelementptr i8, ptr %s.read.data107, i64 %final.start115
  %b.app.cur.len127 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  %b.app.cur.len128 = load i64, ptr %b.app.cur.len127, align 8
  %b.app.new.len129 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len128, i64 %view.len125)
  %sum130 = extractvalue { i64, i1 } %b.app.new.len129, 0
  %ovf131 = extractvalue { i64, i1 } %b.app.new.len129, 1
  br i1 %ovf131, label %str_overflow_abort133, label %b.app.new.len132

choice.exit100:                                   ; preds = %b.grow_done140, %b.grow_done67
  %var.load166 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load166, i32 0, i32 0
  %b.freeze.len167 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load166, i32 0, i32 1
  %b.freeze.data168 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len167, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data168, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load166, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load166, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load166, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit7

b.app.new.len132:                                 ; preds = %abort.dead134, %choice.then99
  %b.cap135 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 2
  %b.cap136 = load i64, ptr %b.cap135, align 8
  %b.need.grow137 = icmp slt i64 %b.cap136, %sum130
  br i1 %b.need.grow137, label %b.grow2138, label %b.nogrow2139

str_overflow_abort133:                            ; preds = %choice.then99
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead134:                                    ; No predecessors!
  br label %b.app.new.len132

b.grow2138:                                       ; preds = %b.app.new.len132
  %b.cap2141 = mul i64 %b.cap136, 2
  %b.cap.small142 = icmp slt i64 %b.cap2141, 16
  %b.cap.grow143 = select i1 %b.cap.small142, i64 16, i64 %b.cap2141
  %b.cap.need144 = icmp slt i64 %b.cap.grow143, %sum130
  %b.new.cap145 = select i1 %b.cap.need144, i64 %sum130, i64 %b.cap.grow143
  %b.cur.len2146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  %b.cur.len2147 = load i64, ptr %b.cur.len2146, align 8
  %b.cur.data2148 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 1
  %b.cur.data2149 = load ptr, ptr %b.cur.data2148, align 8
  %b.new.buf.len2150 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap145, i64 1)
  %sum151 = extractvalue { i64, i1 } %b.new.buf.len2150, 0
  %ovf152 = extractvalue { i64, i1 } %b.new.buf.len2150, 1
  br i1 %ovf152, label %str_overflow_abort154, label %b.new.buf.len2153

b.nogrow2139:                                     ; preds = %b.app.new.len132
  br label %b.grow_done140

b.grow_done140:                                   ; preds = %b.nogrow2139, %b.new.buf.len2153
  %b.app.data161 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 1
  %b.app.data162 = load ptr, ptr %b.app.data161, align 8
  %b.app.dst163 = getelementptr i8, ptr %b.app.data162, i64 %b.app.cur.len128
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst163, ptr align 1 %view.data126, i64 %view.len125, i1 false)
  %b.app.nul164 = getelementptr i8, ptr %b.app.data162, i64 %sum130
  store i8 0, ptr %b.app.nul164, align 1
  %b.len.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 0
  store i64 %sum130, ptr %b.len.gep165, align 8
  br label %choice.exit100

b.new.buf.len2153:                                ; preds = %abort.dead155, %b.grow2138
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 %sum151)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2157, ptr align 1 %b.cur.data2149, i64 %b.cur.len2147, i1 false)
  %b.grow2.nul158 = getelementptr i8, ptr %b.new.buf2157, i64 %b.cur.len2147
  store i8 0, ptr %b.grow2.nul158, align 1
  %b.new.data2.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 1
  store ptr %b.new.buf2157, ptr %b.new.data2.gep159, align 8
  %b.new.cap2.gep160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load101, i32 0, i32 2
  store i64 %b.new.cap145, ptr %b.new.cap2.gep160, align 8
  br label %b.grow_done140

str_overflow_abort154:                            ; preds = %b.grow2138
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead155:                                    ; No predecessors!
  br label %b.new.buf.len2153
}

define { i64, ptr } @"str::replace"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.idx = alloca i64, align 8
  %var._103 = alloca i64, align 8
  %var._88 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.101 = alloca i64, align 8
  %loop.idx.101 = alloca i64, align 8
  %"var.pos'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
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
  store i64 %str.len.query2, ptr %var.lo, align 8
  %var.load3 = load i64, ptr %var.lo, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.s, align 8
  %ret.pack = load { i64, ptr }, ptr %var.load4, align 8
  ret { i64, ptr } %ret.pack

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load5 = load ptr, ptr %var.s, align 8
  %str.len.query6 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query6, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  store i64 %str.len.query8, ptr %var.ls, align 8
  %var.load9 = load ptr, ptr %var.s, align 8
  %var.load10 = load ptr, ptr %var.old, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %var.load9, ptr %var.load10)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  br i1 %ram.tag, label %choice.then11, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then11:                                    ; preds = %choice.exit
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._, align 8
  store i64 %ram.pay, ptr %var.first_idx, align 8
  %var.load13 = load i64, ptr %var.ls, align 8
  %addtmp = add i64 %var.load13, 16
  %cap.neg = icmp slt i64 %addtmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %addtmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len14

choice.else:                                      ; preds = %choice.exit
  %var.load292 = load ptr, ptr %var.s, align 8
  br label %choice.exit12

choice.exit12:                                    ; preds = %choice.else, %loop.exit.101
  %choice.res = phi ptr [ %builder.freeze, %loop.exit.101 ], [ %var.load292, %choice.else ]
  %ret.pack293 = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack293

b.buf.len14:                                      ; preds = %abort.dead, %choice.then11
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.b, align 8
  %var.load15 = load i64, ptr %var.first_idx, align 8
  %cmptmp16 = icmp sgt i64 %var.load15, 0
  br i1 %cmptmp16, label %choice.then17, label %choice.exit18

str_overflow_abort:                               ; preds = %choice.then11
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len14

choice.then17:                                    ; preds = %b.buf.len14
  %b.load = load ptr, ptr %var.b, align 8
  %var.load19 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data, align 8
  %var.load23 = load i64, ptr %var.first_idx, align 8
  %rel.start = add i64 %s.read.len21, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len21
  %final.start = select i1 %start.gt.len, i64 %s.read.len21, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load23, 0
  %rel.end = add i64 %s.read.len21, %var.load23
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load23
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len21
  %final.end = select i1 %end.gt.len, i64 %s.read.len21, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data22, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len24 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len24, i64 %view.len)
  %sum25 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf26 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf26, label %str_overflow_abort28, label %b.app.new.len27

choice.exit18:                                    ; preds = %b.grow_done, %b.buf.len14
  %b.load41 = load ptr, ptr %var.b, align 8
  %var.load42 = load ptr, ptr %var.new_s, align 8
  %app.str.len = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %app.str.len43 = load i64, ptr %app.str.len, align 8
  %app.str.len44 = and i64 %app.str.len43, 281474976710655
  %app.str.data = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 1
  %app.str.data45 = load ptr, ptr %app.str.data, align 8
  %b.app.cur.len46 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 0
  %b.app.cur.len47 = load i64, ptr %b.app.cur.len46, align 8
  %b.app.new.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len47, i64 %app.str.len44)
  %sum49 = extractvalue { i64, i1 } %b.app.new.len48, 0
  %ovf50 = extractvalue { i64, i1 } %b.app.new.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %b.app.new.len51

b.app.new.len27:                                  ; preds = %abort.dead29, %choice.then17
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap30 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap30, %sum25
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort28:                             ; preds = %choice.then17
  call void @dva_abort_str_overflow_msg()
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data39, i64 %sum25
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum25, ptr %b.len.gep40, align 8
  br label %choice.exit18

b.new.buf.len235:                                 ; preds = %abort.dead37, %b.grow2
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
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
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead37:                                     ; No predecessors!
  br label %b.new.buf.len235

b.app.new.len51:                                  ; preds = %abort.dead53, %choice.exit18
  %b.cap54 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 2
  %b.cap55 = load i64, ptr %b.cap54, align 8
  %b.need.grow56 = icmp slt i64 %b.cap55, %sum49
  br i1 %b.need.grow56, label %b.grow257, label %b.nogrow258

str_overflow_abort52:                             ; preds = %choice.exit18
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %b.app.new.len51

b.grow257:                                        ; preds = %b.app.new.len51
  %b.cap260 = mul i64 %b.cap55, 2
  %b.cap.small61 = icmp slt i64 %b.cap260, 16
  %b.cap.grow62 = select i1 %b.cap.small61, i64 16, i64 %b.cap260
  %b.cap.need63 = icmp slt i64 %b.cap.grow62, %sum49
  %b.new.cap64 = select i1 %b.cap.need63, i64 %sum49, i64 %b.cap.grow62
  %b.cur.len265 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 0
  %b.cur.len266 = load i64, ptr %b.cur.len265, align 8
  %b.cur.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 1
  %b.cur.data268 = load ptr, ptr %b.cur.data267, align 8
  %b.new.buf.len269 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap64, i64 1)
  %sum70 = extractvalue { i64, i1 } %b.new.buf.len269, 0
  %ovf71 = extractvalue { i64, i1 } %b.new.buf.len269, 1
  br i1 %ovf71, label %str_overflow_abort73, label %b.new.buf.len272

b.nogrow258:                                      ; preds = %b.app.new.len51
  br label %b.grow_done59

b.grow_done59:                                    ; preds = %b.nogrow258, %b.new.buf.len272
  %b.app.data80 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 1
  %b.app.data81 = load ptr, ptr %b.app.data80, align 8
  %b.app.dst82 = getelementptr i8, ptr %b.app.data81, i64 %b.app.cur.len47
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst82, ptr align 1 %app.str.data45, i64 %app.str.len44, i1 false)
  %b.app.nul83 = getelementptr i8, ptr %b.app.data81, i64 %sum49
  store i8 0, ptr %b.app.nul83, align 1
  %b.len.gep84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 0
  store i64 %sum49, ptr %b.len.gep84, align 8
  %var.load85 = load i64, ptr %var.first_idx, align 8
  %var.load86 = load i64, ptr %var.lo, align 8
  %addtmp87 = add i64 %var.load85, %var.load86
  store i64 %addtmp87, ptr %"var.pos'", align 8
  store i64 0, ptr %loop.idx.101, align 8
  %cycle.prev.u = load i64, ptr %var._, align 8
  br label %loop.header.101

b.new.buf.len272:                                 ; preds = %abort.dead74, %b.grow257
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf276 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 %sum70)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf276, ptr align 1 %b.cur.data268, i64 %b.cur.len266, i1 false)
  %b.grow2.nul77 = getelementptr i8, ptr %b.new.buf276, i64 %b.cur.len266
  store i8 0, ptr %b.grow2.nul77, align 1
  %b.new.data2.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 1
  store ptr %b.new.buf276, ptr %b.new.data2.gep78, align 8
  %b.new.cap2.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 2
  store i64 %b.new.cap64, ptr %b.new.cap2.gep79, align 8
  br label %b.grow_done59

str_overflow_abort73:                             ; preds = %b.grow257
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead74:                                     ; No predecessors!
  br label %b.new.buf.len272

loop.header.101:                                  ; preds = %loop.latch.101, %b.grow_done59
  %counter.load = load i64, ptr %loop.idx.101, align 8
  br label %loop.body.101

loop.body.101:                                    ; preds = %loop.header.101
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.101, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._88, align 8
  %var.load89 = load i64, ptr %"var.pos'", align 8
  %var.load90 = load i64, ptr %var.ls, align 8
  %cmptmp91 = icmp sge i64 %var.load89, %var.load90
  br i1 %cmptmp91, label %choice.then92, label %choice.exit93

loop.exit.nat.101:                                ; No predecessors!
  br label %loop.exit.101

loop.latch.101:                                   ; preds = %choice.exit101
  %step.val = load i64, ptr %loop.step.101, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.101, align 8
  br label %loop.header.101

loop.exit.101:                                    ; preds = %b.grow_done263, %choice.then92, %loop.exit.nat.101
  store i64 %cycle.prev.u, ptr %var._, align 8
  %var.load289 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 0
  %b.freeze.len290 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 1
  %b.freeze.data291 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len290, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data291, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  br label %choice.exit12

choice.then92:                                    ; preds = %loop.body.101
  br label %loop.exit.101

choice.exit93:                                    ; preds = %loop.body.101
  %var.load94 = load ptr, ptr %var.s, align 8
  %var.load95 = load ptr, ptr %var.old, align 8
  %var.load96 = load i64, ptr %"var.pos'", align 8
  %call.res97 = call { i1, i64 } @"str::find_from"(ptr %var.load94, ptr %var.load95, i64 %var.load96)
  %ram.tag98 = extractvalue { i1, i64 } %call.res97, 0
  br i1 %ram.tag98, label %choice.then99, label %choice.else100

choice.then99:                                    ; preds = %choice.exit93
  %ram.pay102 = extractvalue { i1, i64 } %call.res97, 1
  store i64 %ram.pay102, ptr %var._103, align 8
  store i64 %ram.pay102, ptr %var.idx, align 8
  %var.load104 = load i64, ptr %var.idx, align 8
  %var.load105 = load i64, ptr %"var.pos'", align 8
  %cmptmp106 = icmp sgt i64 %var.load104, %var.load105
  br i1 %cmptmp106, label %choice.then107, label %choice.exit108

choice.else100:                                   ; preds = %choice.exit93
  %b.load223 = load ptr, ptr %var.b, align 8
  %var.load224 = load ptr, ptr %var.s, align 8
  %s.read.len225 = getelementptr inbounds { i64, ptr }, ptr %var.load224, i32 0, i32 0
  %s.read.len226 = load i64, ptr %s.read.len225, align 8
  %s.read.len227 = and i64 %s.read.len226, 281474976710655
  %s.read.data228 = getelementptr inbounds { i64, ptr }, ptr %var.load224, i32 0, i32 1
  %s.read.data229 = load ptr, ptr %s.read.data228, align 8
  %var.load230 = load i64, ptr %"var.pos'", align 8
  %var.load231 = load i64, ptr %var.ls, align 8
  %start.is_neg232 = icmp slt i64 %var.load230, 0
  %rel.start233 = add i64 %s.read.len227, %var.load230
  %norm.start234 = select i1 %start.is_neg232, i64 %rel.start233, i64 %var.load230
  %start.lt.0235 = icmp slt i64 %norm.start234, 0
  %c.start.0236 = select i1 %start.lt.0235, i64 0, i64 %norm.start234
  %start.gt.len237 = icmp sgt i64 %c.start.0236, %s.read.len227
  %final.start238 = select i1 %start.gt.len237, i64 %s.read.len227, i64 %c.start.0236
  %end.is_neg239 = icmp slt i64 %var.load231, 0
  %rel.end240 = add i64 %s.read.len227, %var.load231
  %norm.end241 = select i1 %end.is_neg239, i64 %rel.end240, i64 %var.load231
  %end.lt.0242 = icmp slt i64 %norm.end241, 0
  %c.end.0243 = select i1 %end.lt.0242, i64 0, i64 %norm.end241
  %end.gt.len244 = icmp sgt i64 %c.end.0243, %s.read.len227
  %final.end245 = select i1 %end.gt.len244, i64 %s.read.len227, i64 %c.end.0243
  %view.empty246 = icmp sle i64 %final.end245, %final.start238
  %view.len.sub247 = sub i64 %final.end245, %final.start238
  %view.len248 = select i1 %view.empty246, i64 0, i64 %view.len.sub247
  %view.data249 = getelementptr i8, ptr %s.read.data229, i64 %final.start238
  %b.app.cur.len250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 0
  %b.app.cur.len251 = load i64, ptr %b.app.cur.len250, align 8
  %b.app.new.len252 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len251, i64 %view.len248)
  %sum253 = extractvalue { i64, i1 } %b.app.new.len252, 0
  %ovf254 = extractvalue { i64, i1 } %b.app.new.len252, 1
  br i1 %ovf254, label %str_overflow_abort256, label %b.app.new.len255

choice.exit101:                                   ; preds = %b.grow_done194
  br label %loop.latch.101

choice.then107:                                   ; preds = %choice.then99
  %b.load109 = load ptr, ptr %var.b, align 8
  %var.load110 = load ptr, ptr %var.s, align 8
  %s.read.len111 = getelementptr inbounds { i64, ptr }, ptr %var.load110, i32 0, i32 0
  %s.read.len112 = load i64, ptr %s.read.len111, align 8
  %s.read.len113 = and i64 %s.read.len112, 281474976710655
  %s.read.data114 = getelementptr inbounds { i64, ptr }, ptr %var.load110, i32 0, i32 1
  %s.read.data115 = load ptr, ptr %s.read.data114, align 8
  %var.load116 = load i64, ptr %"var.pos'", align 8
  %var.load117 = load i64, ptr %var.idx, align 8
  %start.is_neg = icmp slt i64 %var.load116, 0
  %rel.start118 = add i64 %s.read.len113, %var.load116
  %norm.start119 = select i1 %start.is_neg, i64 %rel.start118, i64 %var.load116
  %start.lt.0120 = icmp slt i64 %norm.start119, 0
  %c.start.0121 = select i1 %start.lt.0120, i64 0, i64 %norm.start119
  %start.gt.len122 = icmp sgt i64 %c.start.0121, %s.read.len113
  %final.start123 = select i1 %start.gt.len122, i64 %s.read.len113, i64 %c.start.0121
  %end.is_neg124 = icmp slt i64 %var.load117, 0
  %rel.end125 = add i64 %s.read.len113, %var.load117
  %norm.end126 = select i1 %end.is_neg124, i64 %rel.end125, i64 %var.load117
  %end.lt.0127 = icmp slt i64 %norm.end126, 0
  %c.end.0128 = select i1 %end.lt.0127, i64 0, i64 %norm.end126
  %end.gt.len129 = icmp sgt i64 %c.end.0128, %s.read.len113
  %final.end130 = select i1 %end.gt.len129, i64 %s.read.len113, i64 %c.end.0128
  %view.empty131 = icmp sle i64 %final.end130, %final.start123
  %view.len.sub132 = sub i64 %final.end130, %final.start123
  %view.len133 = select i1 %view.empty131, i64 0, i64 %view.len.sub132
  %view.data134 = getelementptr i8, ptr %s.read.data115, i64 %final.start123
  %b.app.cur.len135 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load109, i32 0, i32 0
  %b.app.cur.len136 = load i64, ptr %b.app.cur.len135, align 8
  %b.app.new.len137 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len136, i64 %view.len133)
  %sum138 = extractvalue { i64, i1 } %b.app.new.len137, 0
  %ovf139 = extractvalue { i64, i1 } %b.app.new.len137, 1
  br i1 %ovf139, label %str_overflow_abort141, label %b.app.new.len140

choice.exit108:                                   ; preds = %b.grow_done148, %choice.then99
  %b.load174 = load ptr, ptr %var.b, align 8
  %var.load175 = load ptr, ptr %var.new_s, align 8
  %app.str.len176 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 0
  %app.str.len177 = load i64, ptr %app.str.len176, align 8
  %app.str.len178 = and i64 %app.str.len177, 281474976710655
  %app.str.data179 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 1
  %app.str.data180 = load ptr, ptr %app.str.data179, align 8
  %b.app.cur.len181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load174, i32 0, i32 0
  %b.app.cur.len182 = load i64, ptr %b.app.cur.len181, align 8
  %b.app.new.len183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len182, i64 %app.str.len178)
  %sum184 = extractvalue { i64, i1 } %b.app.new.len183, 0
  %ovf185 = extractvalue { i64, i1 } %b.app.new.len183, 1
  br i1 %ovf185, label %str_overflow_abort187, label %b.app.new.len186

b.app.new.len140:                                 ; preds = %abort.dead142, %choice.then107
  %b.cap143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load109, i32 0, i32 2
  %b.cap144 = load i64, ptr %b.cap143, align 8
  %b.need.grow145 = icmp slt i64 %b.cap144, %sum138
  br i1 %b.need.grow145, label %b.grow2146, label %b.nogrow2147

str_overflow_abort141:                            ; preds = %choice.then107
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead142:                                    ; No predecessors!
  br label %b.app.new.len140

b.grow2146:                                       ; preds = %b.app.new.len140
  %b.cap2149 = mul i64 %b.cap144, 2
  %b.cap.small150 = icmp slt i64 %b.cap2149, 16
  %b.cap.grow151 = select i1 %b.cap.small150, i64 16, i64 %b.cap2149
  %b.cap.need152 = icmp slt i64 %b.cap.grow151, %sum138
  %b.new.cap153 = select i1 %b.cap.need152, i64 %sum138, i64 %b.cap.grow151
  %b.cur.len2154 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load109, i32 0, i32 0
  %b.cur.len2155 = load i64, ptr %b.cur.len2154, align 8
  %b.cur.data2156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load109, i32 0, i32 1
  %b.cur.data2157 = load ptr, ptr %b.cur.data2156, align 8
  %b.new.buf.len2158 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap153, i64 1)
  %sum159 = extractvalue { i64, i1 } %b.new.buf.len2158, 0
  %ovf160 = extractvalue { i64, i1 } %b.new.buf.len2158, 1
  br i1 %ovf160, label %str_overflow_abort162, label %b.new.buf.len2161

b.nogrow2147:                                     ; preds = %b.app.new.len140
  br label %b.grow_done148

b.grow_done148:                                   ; preds = %b.nogrow2147, %b.new.buf.len2161
  %b.app.data169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load109, i32 0, i32 1
  %b.app.data170 = load ptr, ptr %b.app.data169, align 8
  %b.app.dst171 = getelementptr i8, ptr %b.app.data170, i64 %b.app.cur.len136
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst171, ptr align 1 %view.data134, i64 %view.len133, i1 false)
  %b.app.nul172 = getelementptr i8, ptr %b.app.data170, i64 %sum138
  store i8 0, ptr %b.app.nul172, align 1
  %b.len.gep173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load109, i32 0, i32 0
  store i64 %sum138, ptr %b.len.gep173, align 8
  br label %choice.exit108

b.new.buf.len2161:                                ; preds = %abort.dead163, %b.grow2146
  %arena.cur164 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2165 = call ptr @dva_arena_alloc(ptr %arena.cur164, i64 %sum159)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2165, ptr align 1 %b.cur.data2157, i64 %b.cur.len2155, i1 false)
  %b.grow2.nul166 = getelementptr i8, ptr %b.new.buf2165, i64 %b.cur.len2155
  store i8 0, ptr %b.grow2.nul166, align 1
  %b.new.data2.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load109, i32 0, i32 1
  store ptr %b.new.buf2165, ptr %b.new.data2.gep167, align 8
  %b.new.cap2.gep168 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load109, i32 0, i32 2
  store i64 %b.new.cap153, ptr %b.new.cap2.gep168, align 8
  br label %b.grow_done148

str_overflow_abort162:                            ; preds = %b.grow2146
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead163:                                    ; No predecessors!
  br label %b.new.buf.len2161

b.app.new.len186:                                 ; preds = %abort.dead188, %choice.exit108
  %b.cap189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load174, i32 0, i32 2
  %b.cap190 = load i64, ptr %b.cap189, align 8
  %b.need.grow191 = icmp slt i64 %b.cap190, %sum184
  br i1 %b.need.grow191, label %b.grow2192, label %b.nogrow2193

str_overflow_abort187:                            ; preds = %choice.exit108
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead188:                                    ; No predecessors!
  br label %b.app.new.len186

b.grow2192:                                       ; preds = %b.app.new.len186
  %b.cap2195 = mul i64 %b.cap190, 2
  %b.cap.small196 = icmp slt i64 %b.cap2195, 16
  %b.cap.grow197 = select i1 %b.cap.small196, i64 16, i64 %b.cap2195
  %b.cap.need198 = icmp slt i64 %b.cap.grow197, %sum184
  %b.new.cap199 = select i1 %b.cap.need198, i64 %sum184, i64 %b.cap.grow197
  %b.cur.len2200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load174, i32 0, i32 0
  %b.cur.len2201 = load i64, ptr %b.cur.len2200, align 8
  %b.cur.data2202 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load174, i32 0, i32 1
  %b.cur.data2203 = load ptr, ptr %b.cur.data2202, align 8
  %b.new.buf.len2204 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap199, i64 1)
  %sum205 = extractvalue { i64, i1 } %b.new.buf.len2204, 0
  %ovf206 = extractvalue { i64, i1 } %b.new.buf.len2204, 1
  br i1 %ovf206, label %str_overflow_abort208, label %b.new.buf.len2207

b.nogrow2193:                                     ; preds = %b.app.new.len186
  br label %b.grow_done194

b.grow_done194:                                   ; preds = %b.nogrow2193, %b.new.buf.len2207
  %b.app.data215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load174, i32 0, i32 1
  %b.app.data216 = load ptr, ptr %b.app.data215, align 8
  %b.app.dst217 = getelementptr i8, ptr %b.app.data216, i64 %b.app.cur.len182
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst217, ptr align 1 %app.str.data180, i64 %app.str.len178, i1 false)
  %b.app.nul218 = getelementptr i8, ptr %b.app.data216, i64 %sum184
  store i8 0, ptr %b.app.nul218, align 1
  %b.len.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load174, i32 0, i32 0
  store i64 %sum184, ptr %b.len.gep219, align 8
  %var.load220 = load i64, ptr %var.idx, align 8
  %var.load221 = load i64, ptr %var.lo, align 8
  %addtmp222 = add i64 %var.load220, %var.load221
  store i64 %addtmp222, ptr %"var.pos'", align 8
  br label %choice.exit101

b.new.buf.len2207:                                ; preds = %abort.dead209, %b.grow2192
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 %sum205)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2211, ptr align 1 %b.cur.data2203, i64 %b.cur.len2201, i1 false)
  %b.grow2.nul212 = getelementptr i8, ptr %b.new.buf2211, i64 %b.cur.len2201
  store i8 0, ptr %b.grow2.nul212, align 1
  %b.new.data2.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load174, i32 0, i32 1
  store ptr %b.new.buf2211, ptr %b.new.data2.gep213, align 8
  %b.new.cap2.gep214 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load174, i32 0, i32 2
  store i64 %b.new.cap199, ptr %b.new.cap2.gep214, align 8
  br label %b.grow_done194

str_overflow_abort208:                            ; preds = %b.grow2192
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead209:                                    ; No predecessors!
  br label %b.new.buf.len2207

b.app.new.len255:                                 ; preds = %abort.dead257, %choice.else100
  %b.cap258 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 2
  %b.cap259 = load i64, ptr %b.cap258, align 8
  %b.need.grow260 = icmp slt i64 %b.cap259, %sum253
  br i1 %b.need.grow260, label %b.grow2261, label %b.nogrow2262

str_overflow_abort256:                            ; preds = %choice.else100
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead257:                                    ; No predecessors!
  br label %b.app.new.len255

b.grow2261:                                       ; preds = %b.app.new.len255
  %b.cap2264 = mul i64 %b.cap259, 2
  %b.cap.small265 = icmp slt i64 %b.cap2264, 16
  %b.cap.grow266 = select i1 %b.cap.small265, i64 16, i64 %b.cap2264
  %b.cap.need267 = icmp slt i64 %b.cap.grow266, %sum253
  %b.new.cap268 = select i1 %b.cap.need267, i64 %sum253, i64 %b.cap.grow266
  %b.cur.len2269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 0
  %b.cur.len2270 = load i64, ptr %b.cur.len2269, align 8
  %b.cur.data2271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 1
  %b.cur.data2272 = load ptr, ptr %b.cur.data2271, align 8
  %b.new.buf.len2273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap268, i64 1)
  %sum274 = extractvalue { i64, i1 } %b.new.buf.len2273, 0
  %ovf275 = extractvalue { i64, i1 } %b.new.buf.len2273, 1
  br i1 %ovf275, label %str_overflow_abort277, label %b.new.buf.len2276

b.nogrow2262:                                     ; preds = %b.app.new.len255
  br label %b.grow_done263

b.grow_done263:                                   ; preds = %b.nogrow2262, %b.new.buf.len2276
  %b.app.data284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 1
  %b.app.data285 = load ptr, ptr %b.app.data284, align 8
  %b.app.dst286 = getelementptr i8, ptr %b.app.data285, i64 %b.app.cur.len251
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst286, ptr align 1 %view.data249, i64 %view.len248, i1 false)
  %b.app.nul287 = getelementptr i8, ptr %b.app.data285, i64 %sum253
  store i8 0, ptr %b.app.nul287, align 1
  %b.len.gep288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 0
  store i64 %sum253, ptr %b.len.gep288, align 8
  br label %loop.exit.101

b.new.buf.len2276:                                ; preds = %abort.dead278, %b.grow2261
  %arena.cur279 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 %sum274)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2280, ptr align 1 %b.cur.data2272, i64 %b.cur.len2270, i1 false)
  %b.grow2.nul281 = getelementptr i8, ptr %b.new.buf2280, i64 %b.cur.len2270
  store i8 0, ptr %b.grow2.nul281, align 1
  %b.new.data2.gep282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 1
  store ptr %b.new.buf2280, ptr %b.new.data2.gep282, align 8
  %b.new.cap2.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 2
  store i64 %b.new.cap268, ptr %b.new.cap2.gep283, align 8
  br label %b.grow_done263

str_overflow_abort277:                            ; preds = %b.grow2261
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead278:                                    ; No predecessors!
  br label %b.new.buf.len2276
}

define { i1, i64 } @"str::parse_int"(ptr %0) #3 {
entry:
  %var.d217 = alloca ptr, align 8
  %var._216 = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var._176 = alloca i64, align 8
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
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %call.res = call { i64, ptr } @"str::trim"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  store i64 %str.len.query3, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load5 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len7
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp eq i64 %s.byte.val, 45
  store i1 %cmptmp9, ptr %var.neg, align 1
  %var.load10 = load i1, ptr %var.neg, align 1
  br i1 %var.load10, label %or.102.then, label %or.102.else

idx_oob:                                          ; preds = %choice.exit
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
  %idx.oob17 = icmp uge i64 0, %s.read.len14
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

or.102.exit:                                      ; preds = %idx_ok18, %or.102.then
  %or.102.phi = phi i1 [ %var.load10, %or.102.then ], [ %cmptmp24, %idx_ok18 ]
  store i1 %or.102.phi, ptr %var.has_sign, align 1
  %var.load25 = load i1, ptr %var.has_sign, align 1
  br i1 %var.load25, label %choice.then26, label %choice.else

idx_ok18:                                         ; preds = %abort.dead20, %or.102.else
  %s.byte.gep21 = getelementptr i8, ptr %s.read.data16, i64 0
  %s.byte22 = load i8, ptr %s.byte.gep21, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 43
  br label %or.102.exit

idx_oob19:                                        ; preds = %or.102.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

choice.then26:                                    ; preds = %or.102.exit
  br label %choice.exit27

choice.else:                                      ; preds = %or.102.exit
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.else, %choice.then26
  %choice.res = phi i64 [ 1, %choice.then26 ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.start, align 8
  %var.load28 = load i64, ptr %var.start, align 8
  %var.load29 = load i64, ptr %var.len, align 8
  %cmptmp30 = icmp sge i64 %var.load28, %var.load29
  br i1 %cmptmp30, label %choice.then31, label %choice.exit32

choice.then31:                                    ; preds = %choice.exit27
  ret { i1, i64 } zeroinitializer

choice.exit32:                                    ; preds = %ret.dead33, %choice.exit27
  %var.load34 = load ptr, ptr %var.s, align 8
  %s.read.len35 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 0
  %s.read.len36 = load i64, ptr %s.read.len35, align 8
  %s.read.len37 = and i64 %s.read.len36, 281474976710655
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load34, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %var.start, align 8
  %var.load41 = load i64, ptr %var.len, align 8
  %start.is_neg = icmp slt i64 %var.load40, 0
  %rel.start = add i64 %s.read.len37, %var.load40
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load40
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
  %view.data = getelementptr i8, ptr %s.read.data39, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  store ptr %str.view, ptr %var.body, align 8
  %var.load42 = load ptr, ptr %var.body, align 8
  %str.len.query43 = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %str.len.query44 = load i64, ptr %str.len.query43, align 8
  %str.len.query45 = and i64 %str.len.query44, 281474976710655
  store i64 %str.len.query45, ptr %var.lbody, align 8
  %var.load46 = load i64, ptr %var.lbody, align 8
  %cmptmp47 = icmp sgt i64 %var.load46, 2
  br i1 %cmptmp47, label %and.103.then, label %and.103.else

ret.dead33:                                       ; No predecessors!
  br label %choice.exit32

and.103.then:                                     ; preds = %choice.exit32
  %var.load48 = load ptr, ptr %var.body, align 8
  %s.read.len49 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %s.read.len50 = load i64, ptr %s.read.len49, align 8
  %s.read.len51 = and i64 %s.read.len50, 281474976710655
  %s.read.data52 = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 1
  %s.read.data53 = load ptr, ptr %s.read.data52, align 8
  %idx.oob54 = icmp uge i64 0, %s.read.len51
  br i1 %idx.oob54, label %idx_oob56, label %idx_ok55

and.103.else:                                     ; preds = %choice.exit32
  br label %and.103.exit

and.103.exit:                                     ; preds = %and.103.else, %idx_ok55
  %and.103.phi = phi i1 [ %cmptmp61, %idx_ok55 ], [ %cmptmp47, %and.103.else ]
  br i1 %and.103.phi, label %and.104.then, label %and.104.else

idx_ok55:                                         ; preds = %abort.dead57, %and.103.then
  %s.byte.gep58 = getelementptr i8, ptr %s.read.data53, i64 0
  %s.byte59 = load i8, ptr %s.byte.gep58, align 1
  %s.byte.val60 = zext i8 %s.byte59 to i64
  %cmptmp61 = icmp eq i64 %s.byte.val60, 48
  br label %and.103.exit

idx_oob56:                                        ; preds = %and.103.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead57:                                     ; No predecessors!
  br label %idx_ok55

and.104.then:                                     ; preds = %and.103.exit
  %var.load62 = load ptr, ptr %var.body, align 8
  %s.read.len63 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 0
  %s.read.len64 = load i64, ptr %s.read.len63, align 8
  %s.read.len65 = and i64 %s.read.len64, 281474976710655
  %s.read.data66 = getelementptr inbounds { i64, ptr }, ptr %var.load62, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data66, align 8
  %idx.oob68 = icmp uge i64 1, %s.read.len65
  br i1 %idx.oob68, label %idx_oob70, label %idx_ok69

and.104.else:                                     ; preds = %and.103.exit
  br label %and.104.exit

and.104.exit:                                     ; preds = %and.104.else, %choice.exit75
  %and.104.phi = phi i1 [ %choice.res77, %choice.exit75 ], [ %and.103.phi, %and.104.else ]
  store i1 %and.104.phi, ptr %var.is_hex_pfx, align 1
  %var.load78 = load i64, ptr %var.lbody, align 8
  %cmptmp79 = icmp sgt i64 %var.load78, 2
  br i1 %cmptmp79, label %and.105.then, label %and.105.else

idx_ok69:                                         ; preds = %abort.dead71, %and.104.then
  %s.byte.gep72 = getelementptr i8, ptr %s.read.data67, i64 1
  %s.byte73 = load i8, ptr %s.byte.gep72, align 1
  %s.byte.val74 = zext i8 %s.byte73 to i64
  %val.match = icmp eq i64 %s.byte.val74, 120
  %val.match76 = icmp eq i64 %s.byte.val74, 88
  %case.or = or i1 %val.match, %val.match76
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob70:                                        ; preds = %and.104.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead71:                                     ; No predecessors!
  br label %idx_ok69

choice.exit75:                                    ; preds = %choice.next, %choice.case
  %choice.res77 = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.104.exit

choice.case:                                      ; preds = %idx_ok69
  br label %choice.exit75

choice.next:                                      ; preds = %idx_ok69
  br label %choice.exit75

and.105.then:                                     ; preds = %and.104.exit
  %var.load80 = load ptr, ptr %var.body, align 8
  %s.read.len81 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 0
  %s.read.len82 = load i64, ptr %s.read.len81, align 8
  %s.read.len83 = and i64 %s.read.len82, 281474976710655
  %s.read.data84 = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 1
  %s.read.data85 = load ptr, ptr %s.read.data84, align 8
  %idx.oob86 = icmp uge i64 0, %s.read.len83
  br i1 %idx.oob86, label %idx_oob88, label %idx_ok87

and.105.else:                                     ; preds = %and.104.exit
  br label %and.105.exit

and.105.exit:                                     ; preds = %and.105.else, %idx_ok87
  %and.105.phi = phi i1 [ %cmptmp93, %idx_ok87 ], [ %cmptmp79, %and.105.else ]
  br i1 %and.105.phi, label %and.106.then, label %and.106.else

idx_ok87:                                         ; preds = %abort.dead89, %and.105.then
  %s.byte.gep90 = getelementptr i8, ptr %s.read.data85, i64 0
  %s.byte91 = load i8, ptr %s.byte.gep90, align 1
  %s.byte.val92 = zext i8 %s.byte91 to i64
  %cmptmp93 = icmp eq i64 %s.byte.val92, 48
  br label %and.105.exit

idx_oob88:                                        ; preds = %and.105.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead89:                                     ; No predecessors!
  br label %idx_ok87

and.106.then:                                     ; preds = %and.105.exit
  %var.load94 = load ptr, ptr %var.body, align 8
  %s.read.len95 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %s.read.len96 = load i64, ptr %s.read.len95, align 8
  %s.read.len97 = and i64 %s.read.len96, 281474976710655
  %s.read.data98 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 1
  %s.read.data99 = load ptr, ptr %s.read.data98, align 8
  %idx.oob100 = icmp uge i64 1, %s.read.len97
  br i1 %idx.oob100, label %idx_oob102, label %idx_ok101

and.106.else:                                     ; preds = %and.105.exit
  br label %and.106.exit

and.106.exit:                                     ; preds = %and.106.else, %choice.exit107
  %and.106.phi = phi i1 [ %choice.res113, %choice.exit107 ], [ %and.105.phi, %and.106.else ]
  store i1 %and.106.phi, ptr %var.is_bin_pfx, align 1
  %var.load114 = load i1, ptr %var.is_hex_pfx, align 1
  br i1 %var.load114, label %choice.then115, label %choice.else116

idx_ok101:                                        ; preds = %abort.dead103, %and.106.then
  %s.byte.gep104 = getelementptr i8, ptr %s.read.data99, i64 1
  %s.byte105 = load i8, ptr %s.byte.gep104, align 1
  %s.byte.val106 = zext i8 %s.byte105 to i64
  %val.match110 = icmp eq i64 %s.byte.val106, 98
  %val.match111 = icmp eq i64 %s.byte.val106, 66
  %case.or112 = or i1 %val.match110, %val.match111
  br i1 %case.or112, label %choice.case108, label %choice.next109

idx_oob102:                                       ; preds = %and.106.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead103:                                    ; No predecessors!
  br label %idx_ok101

choice.exit107:                                   ; preds = %choice.next109, %choice.case108
  %choice.res113 = phi i1 [ true, %choice.case108 ], [ false, %choice.next109 ]
  br label %and.106.exit

choice.case108:                                   ; preds = %idx_ok101
  br label %choice.exit107

choice.next109:                                   ; preds = %idx_ok101
  br label %choice.exit107

choice.then115:                                   ; preds = %and.106.exit
  %var.load118 = load ptr, ptr %var.body, align 8
  %s.read.len119 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %s.read.len120 = load i64, ptr %s.read.len119, align 8
  %s.read.len121 = and i64 %s.read.len120, 281474976710655
  %s.read.data122 = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %s.read.data123 = load ptr, ptr %s.read.data122, align 8
  %var.load124 = load i64, ptr %var.lbody, align 8
  %rel.start125 = add i64 %s.read.len121, 2
  %norm.start126 = select i1 false, i64 %rel.start125, i64 2
  %start.lt.0127 = icmp slt i64 %norm.start126, 0
  %c.start.0128 = select i1 %start.lt.0127, i64 0, i64 %norm.start126
  %start.gt.len129 = icmp sgt i64 %c.start.0128, %s.read.len121
  %final.start130 = select i1 %start.gt.len129, i64 %s.read.len121, i64 %c.start.0128
  %end.is_neg131 = icmp slt i64 %var.load124, 0
  %rel.end132 = add i64 %s.read.len121, %var.load124
  %norm.end133 = select i1 %end.is_neg131, i64 %rel.end132, i64 %var.load124
  %end.lt.0134 = icmp slt i64 %norm.end133, 0
  %c.end.0135 = select i1 %end.lt.0134, i64 0, i64 %norm.end133
  %end.gt.len136 = icmp sgt i64 %c.end.0135, %s.read.len121
  %final.end137 = select i1 %end.gt.len136, i64 %s.read.len121, i64 %c.end.0135
  %view.empty138 = icmp sle i64 %final.end137, %final.start130
  %view.len.sub139 = sub i64 %final.end137, %final.start130
  %view.len140 = select i1 %view.empty138, i64 0, i64 %view.len.sub139
  %view.data141 = getelementptr i8, ptr %s.read.data123, i64 %final.start130
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 16)
  %str.build.len.gep144 = getelementptr inbounds { i64, ptr }, ptr %str.view143, i32 0, i32 0
  store i64 %view.len140, ptr %str.build.len.gep144, align 8
  %str.build.data.gep145 = getelementptr inbounds { i64, ptr }, ptr %str.view143, i32 0, i32 1
  store ptr %view.data141, ptr %str.build.data.gep145, align 8
  %call.res146 = call ptr @"str::to_hex"(ptr %str.view143)
  %niche.ne.null = icmp ne ptr %call.res146, null
  br i1 %niche.ne.null, label %choice.then147, label %choice.else148

choice.else116:                                   ; preds = %and.106.exit
  %var.load171 = load i1, ptr %var.is_bin_pfx, align 1
  br i1 %var.load171, label %choice.then172, label %choice.else173

choice.exit117:                                   ; preds = %choice.exit174, %choice.exit149
  %choice.res244 = phi { i1, i64 } [ %choice.res170, %choice.exit149 ], [ %choice.res243, %choice.exit174 ]
  ret { i1, i64 } %choice.res244

choice.then147:                                   ; preds = %choice.then115
  store ptr %call.res146, ptr %var._, align 8
  store ptr %call.res146, ptr %var.d, align 8
  %var.load150 = load ptr, ptr %var.d, align 8
  %fld.gep = getelementptr inbounds { i64, ptr }, ptr %var.load150, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %str.len.query151 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %str.len.query152 = load i64, ptr %str.len.query151, align 8
  %str.len.query153 = and i64 %str.len.query152, 281474976710655
  %cmptmp154 = icmp eq i64 %str.len.query153, 0
  br i1 %cmptmp154, label %choice.then155, label %choice.else156

choice.else148:                                   ; preds = %choice.then115
  br label %choice.exit149

choice.exit149:                                   ; preds = %choice.else148, %choice.exit157
  %choice.res170 = phi { i1, i64 } [ %choice.res169, %choice.exit157 ], [ zeroinitializer, %choice.else148 ]
  br label %choice.exit117

choice.then155:                                   ; preds = %choice.then147
  %var.load158 = load i1, ptr %var.neg, align 1
  br i1 %var.load158, label %choice.then159, label %choice.else160

choice.else156:                                   ; preds = %choice.then147
  br label %choice.exit157

choice.exit157:                                   ; preds = %choice.else156, %choice.exit161
  %choice.res169 = phi { i1, i64 } [ %ram.pay, %choice.exit161 ], [ zeroinitializer, %choice.else156 ]
  br label %choice.exit149

choice.then159:                                   ; preds = %choice.then155
  %var.load162 = load ptr, ptr %var.d, align 8
  %fld.gep163 = getelementptr inbounds { i64, ptr }, ptr %var.load162, i32 0, i32 0
  %fld.load164 = load i64, ptr %fld.gep163, align 8
  %negtmp = sub i64 0, %fld.load164
  br label %choice.exit161

choice.else160:                                   ; preds = %choice.then155
  %var.load165 = load ptr, ptr %var.d, align 8
  %fld.gep166 = getelementptr inbounds { i64, ptr }, ptr %var.load165, i32 0, i32 0
  %fld.load167 = load i64, ptr %fld.gep166, align 8
  br label %choice.exit161

choice.exit161:                                   ; preds = %choice.else160, %choice.then159
  %choice.res168 = phi i64 [ %negtmp, %choice.then159 ], [ %fld.load167, %choice.else160 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res168, 1
  br label %choice.exit157

choice.then172:                                   ; preds = %choice.else116
  store i64 0, ptr %"var.val'", align 8
  %var.load175 = load i64, ptr %var.lbody, align 8
  store i64 2, ptr %loop.idx.107, align 8
  br label %loop.header.107

choice.else173:                                   ; preds = %choice.else116
  %var.load210 = load ptr, ptr %var.body, align 8
  %call.res211 = call ptr @"str::to_int"(ptr %var.load210)
  %niche.ne.null212 = icmp ne ptr %call.res211, null
  br i1 %niche.ne.null212, label %choice.then213, label %choice.else214

choice.exit174:                                   ; preds = %choice.exit215, %choice.exit204
  %choice.res243 = phi { i1, i64 } [ %ram.pay209, %choice.exit204 ], [ %choice.res242, %choice.exit215 ]
  br label %choice.exit117

loop.header.107:                                  ; preds = %loop.latch.107, %choice.then172
  %counter.load = load i64, ptr %loop.idx.107, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load175
  br i1 %loop.cond, label %loop.body.107, label %loop.exit.nat.107

loop.body.107:                                    ; preds = %loop.header.107
  %loop.rel.i = sub i64 %counter.load, 2
  store i64 1, ptr %loop.step.107, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._176, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load177 = load ptr, ptr %var.body, align 8
  %s.read.len178 = getelementptr inbounds { i64, ptr }, ptr %var.load177, i32 0, i32 0
  %s.read.len179 = load i64, ptr %s.read.len178, align 8
  %s.read.len180 = and i64 %s.read.len179, 281474976710655
  %s.read.data181 = getelementptr inbounds { i64, ptr }, ptr %var.load177, i32 0, i32 1
  %s.read.data182 = load ptr, ptr %s.read.data181, align 8
  %var.load183 = load i64, ptr %var.i, align 8
  %idx.oob184 = icmp uge i64 %var.load183, %s.read.len180
  br i1 %idx.oob184, label %idx_oob186, label %idx_ok185

loop.exit.nat.107:                                ; preds = %loop.header.107
  br label %loop.exit.107

loop.latch.107:                                   ; preds = %choice.exit197
  %step.val = load i64, ptr %loop.step.107, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.107, align 8
  br label %loop.header.107

loop.exit.107:                                    ; preds = %loop.exit.nat.107
  %var.load201 = load i1, ptr %var.neg, align 1
  br i1 %var.load201, label %choice.then202, label %choice.else203

idx_ok185:                                        ; preds = %abort.dead187, %loop.body.107
  %s.byte.gep188 = getelementptr i8, ptr %s.read.data182, i64 %var.load183
  %s.byte189 = load i8, ptr %s.byte.gep188, align 1
  %s.byte.val190 = zext i8 %s.byte189 to i64
  store i64 %s.byte.val190, ptr %var.ch, align 8
  %var.load191 = load i64, ptr %var.ch, align 8
  %cmptmp192 = icmp eq i64 %var.load191, 48
  br i1 %cmptmp192, label %or.108.then, label %or.108.else

idx_oob186:                                       ; preds = %loop.body.107
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead187:                                    ; No predecessors!
  br label %idx_ok185

or.108.then:                                      ; preds = %idx_ok185
  br label %or.108.exit

or.108.else:                                      ; preds = %idx_ok185
  %var.load193 = load i64, ptr %var.ch, align 8
  %cmptmp194 = icmp eq i64 %var.load193, 49
  br label %or.108.exit

or.108.exit:                                      ; preds = %or.108.else, %or.108.then
  %or.108.phi = phi i1 [ %cmptmp192, %or.108.then ], [ %cmptmp194, %or.108.else ]
  br i1 %or.108.phi, label %choice.then195, label %choice.else196

choice.then195:                                   ; preds = %or.108.exit
  %var.load198 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load198, 2
  %var.load199 = load i64, ptr %var.ch, align 8
  %subtmp = sub i64 %var.load199, 48
  %addtmp = add i64 %multmp, %subtmp
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %choice.exit197

choice.else196:                                   ; preds = %or.108.exit
  ret { i1, i64 } zeroinitializer

choice.exit197:                                   ; preds = %ret.dead200, %choice.then195
  br label %loop.latch.107

ret.dead200:                                      ; No predecessors!
  br label %choice.exit197

choice.then202:                                   ; preds = %loop.exit.107
  %var.load205 = load i64, ptr %"var.val'", align 8
  %negtmp206 = sub i64 0, %var.load205
  br label %choice.exit204

choice.else203:                                   ; preds = %loop.exit.107
  %var.load207 = load i64, ptr %"var.val'", align 8
  br label %choice.exit204

choice.exit204:                                   ; preds = %choice.else203, %choice.then202
  %choice.res208 = phi i64 [ %negtmp206, %choice.then202 ], [ %var.load207, %choice.else203 ]
  %ram.pay209 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res208, 1
  br label %choice.exit174

choice.then213:                                   ; preds = %choice.else173
  store ptr %call.res211, ptr %var._216, align 8
  store ptr %call.res211, ptr %var.d217, align 8
  %var.load218 = load ptr, ptr %var.d217, align 8
  %fld.gep219 = getelementptr inbounds { i64, ptr }, ptr %var.load218, i32 0, i32 1
  %fld.load220 = load ptr, ptr %fld.gep219, align 8
  %str.len.query221 = getelementptr inbounds { i64, ptr }, ptr %fld.load220, i32 0, i32 0
  %str.len.query222 = load i64, ptr %str.len.query221, align 8
  %str.len.query223 = and i64 %str.len.query222, 281474976710655
  %cmptmp224 = icmp eq i64 %str.len.query223, 0
  br i1 %cmptmp224, label %choice.then225, label %choice.else226

choice.else214:                                   ; preds = %choice.else173
  br label %choice.exit215

choice.exit215:                                   ; preds = %choice.else214, %choice.exit227
  %choice.res242 = phi { i1, i64 } [ %choice.res241, %choice.exit227 ], [ zeroinitializer, %choice.else214 ]
  br label %choice.exit174

choice.then225:                                   ; preds = %choice.then213
  %var.load228 = load i1, ptr %var.neg, align 1
  br i1 %var.load228, label %choice.then229, label %choice.else230

choice.else226:                                   ; preds = %choice.then213
  br label %choice.exit227

choice.exit227:                                   ; preds = %choice.else226, %choice.exit231
  %choice.res241 = phi { i1, i64 } [ %ram.pay240, %choice.exit231 ], [ zeroinitializer, %choice.else226 ]
  br label %choice.exit215

choice.then229:                                   ; preds = %choice.then225
  %var.load232 = load ptr, ptr %var.d217, align 8
  %fld.gep233 = getelementptr inbounds { i64, ptr }, ptr %var.load232, i32 0, i32 0
  %fld.load234 = load i64, ptr %fld.gep233, align 8
  %negtmp235 = sub i64 0, %fld.load234
  br label %choice.exit231

choice.else230:                                   ; preds = %choice.then225
  %var.load236 = load ptr, ptr %var.d217, align 8
  %fld.gep237 = getelementptr inbounds { i64, ptr }, ptr %var.load236, i32 0, i32 0
  %fld.load238 = load i64, ptr %fld.gep237, align 8
  br label %choice.exit231

choice.exit231:                                   ; preds = %choice.else230, %choice.then229
  %choice.res239 = phi i64 [ %negtmp235, %choice.then229 ], [ %fld.load238, %choice.else230 ]
  %ram.pay240 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res239, 1
  br label %choice.exit227
}

define { i1, i64 } @"str::parse_float"(ptr %0) #3 {
entry:
  %var.pow10 = alloca double, align 8
  %var._227 = alloca i64, align 8
  %var._i226 = alloca i64, align 8
  %loop.step.118 = alloca i64, align 8
  %loop.idx.118 = alloca i64, align 8
  %"var.exp_digits'" = alloca i64, align 8
  %"var.exp_val'" = alloca i64, align 8
  %var.exp_neg = alloca i1, align 1
  %"var.res'" = alloca double, align 8
  %var._96 = alloca i64, align 8
  %var._i95 = alloca i64, align 8
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
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.raw = alloca ptr, align 8
  store ptr %0, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %call.res = call { i64, ptr } @"str::trim"(ptr %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.s, align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  store i64 %str.len.query3, ptr %var.len, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %cmptmp = icmp eq i64 %var.load4, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  store i64 0, ptr %"var.i'", align 8
  %var.load5 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  %idx.oob = icmp uge i64 0, %s.read.len7
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit

idx_ok:                                           ; preds = %abort.dead, %choice.exit
  %s.byte.gep = getelementptr i8, ptr %s.read.data8, i64 0
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp9 = icmp eq i64 %s.byte.val, 45
  store i1 %cmptmp9, ptr %var.neg, align 1
  %var.load10 = load i1, ptr %var.neg, align 1
  br i1 %var.load10, label %or.110.then, label %or.110.else

idx_oob:                                          ; preds = %choice.exit
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
  %idx.oob17 = icmp uge i64 0, %s.read.len14
  br i1 %idx.oob17, label %idx_oob19, label %idx_ok18

or.110.exit:                                      ; preds = %idx_ok18, %or.110.then
  %or.110.phi = phi i1 [ %var.load10, %or.110.then ], [ %cmptmp24, %idx_ok18 ]
  br i1 %or.110.phi, label %choice.then25, label %choice.exit26

idx_ok18:                                         ; preds = %abort.dead20, %or.110.else
  %s.byte.gep21 = getelementptr i8, ptr %s.read.data16, i64 0
  %s.byte22 = load i8, ptr %s.byte.gep21, align 1
  %s.byte.val23 = zext i8 %s.byte22 to i64
  %cmptmp24 = icmp eq i64 %s.byte.val23, 43
  br label %or.110.exit

idx_oob19:                                        ; preds = %or.110.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %idx_ok18

choice.then25:                                    ; preds = %or.110.exit
  store i64 1, ptr %"var.i'", align 8
  br label %choice.exit26

choice.exit26:                                    ; preds = %choice.then25, %or.110.exit
  %var.load27 = load i64, ptr %"var.i'", align 8
  %var.load28 = load i64, ptr %var.len, align 8
  %cmptmp29 = icmp sge i64 %var.load27, %var.load28
  br i1 %cmptmp29, label %choice.then30, label %choice.exit31

choice.then30:                                    ; preds = %choice.exit26
  ret { i1, i64 } zeroinitializer

choice.exit31:                                    ; preds = %ret.dead32, %choice.exit26
  store double 0.000000e+00, ptr %"var.int_val'", align 8
  store i64 0, ptr %"var.digits'", align 8
  store i64 0, ptr %loop.idx.111, align 8
  br label %loop.header.111

ret.dead32:                                       ; No predecessors!
  br label %choice.exit31

loop.header.111:                                  ; preds = %loop.latch.111, %choice.exit31
  %counter.load = load i64, ptr %loop.idx.111, align 8
  br label %loop.body.111

loop.body.111:                                    ; preds = %loop.header.111
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.111, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load33 = load i64, ptr %"var.i'", align 8
  %var.load34 = load i64, ptr %var.len, align 8
  %cmptmp35 = icmp slt i64 %var.load33, %var.load34
  br i1 %cmptmp35, label %and.112.then, label %and.112.else

loop.exit.nat.111:                                ; No predecessors!
  br label %loop.exit.111

loop.latch.111:                                   ; preds = %choice.exit52
  %step.val = load i64, ptr %loop.step.111, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.111, align 8
  br label %loop.header.111

loop.exit.111:                                    ; preds = %choice.else, %loop.exit.nat.111
  store double 0.000000e+00, ptr %"var.frac_val'", align 8
  store double 1.000000e+00, ptr %"var.frac_scale'", align 8
  %var.load71 = load i64, ptr %"var.i'", align 8
  %var.load72 = load i64, ptr %var.len, align 8
  %cmptmp73 = icmp slt i64 %var.load71, %var.load72
  br i1 %cmptmp73, label %and.113.then, label %and.113.else

and.112.then:                                     ; preds = %loop.body.111
  %var.load36 = load ptr, ptr %var.s, align 8
  %s.read.len37 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 0
  %s.read.len38 = load i64, ptr %s.read.len37, align 8
  %s.read.len39 = and i64 %s.read.len38, 281474976710655
  %s.read.data40 = getelementptr inbounds { i64, ptr }, ptr %var.load36, i32 0, i32 1
  %s.read.data41 = load ptr, ptr %s.read.data40, align 8
  %var.load42 = load i64, ptr %"var.i'", align 8
  %idx.oob43 = icmp uge i64 %var.load42, %s.read.len39
  br i1 %idx.oob43, label %idx_oob45, label %idx_ok44

and.112.else:                                     ; preds = %loop.body.111
  br label %and.112.exit

and.112.exit:                                     ; preds = %and.112.else, %idx_ok44
  %and.112.phi = phi i1 [ %call.res50, %idx_ok44 ], [ %cmptmp35, %and.112.else ]
  br i1 %and.112.phi, label %choice.then51, label %choice.else

idx_ok44:                                         ; preds = %abort.dead46, %and.112.then
  %s.byte.gep47 = getelementptr i8, ptr %s.read.data41, i64 %var.load42
  %s.byte48 = load i8, ptr %s.byte.gep47, align 1
  %s.byte.val49 = zext i8 %s.byte48 to i64
  %call.res50 = call i1 @"str::is_digit"(i64 %s.byte.val49)
  br label %and.112.exit

idx_oob45:                                        ; preds = %and.112.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %idx_ok44

choice.then51:                                    ; preds = %and.112.exit
  %var.load53 = load double, ptr %"var.int_val'", align 8
  %fmultmp = fmul double %var.load53, 1.000000e+01
  %var.load54 = load ptr, ptr %var.s, align 8
  %s.read.len55 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 0
  %s.read.len56 = load i64, ptr %s.read.len55, align 8
  %s.read.len57 = and i64 %s.read.len56, 281474976710655
  %s.read.data58 = getelementptr inbounds { i64, ptr }, ptr %var.load54, i32 0, i32 1
  %s.read.data59 = load ptr, ptr %s.read.data58, align 8
  %var.load60 = load i64, ptr %"var.i'", align 8
  %idx.oob61 = icmp uge i64 %var.load60, %s.read.len57
  br i1 %idx.oob61, label %idx_oob63, label %idx_ok62

choice.else:                                      ; preds = %and.112.exit
  br label %loop.exit.111

choice.exit52:                                    ; preds = %idx_ok62
  br label %loop.latch.111

idx_ok62:                                         ; preds = %abort.dead64, %choice.then51
  %s.byte.gep65 = getelementptr i8, ptr %s.read.data59, i64 %var.load60
  %s.byte66 = load i8, ptr %s.byte.gep65, align 1
  %s.byte.val67 = zext i8 %s.byte66 to i64
  %subtmp = sub i64 %s.byte.val67, 48
  %cast.sitofp = sitofp i64 %subtmp to double
  %faddtmp = fadd double %fmultmp, %cast.sitofp
  store double %faddtmp, ptr %"var.int_val'", align 8
  %var.load68 = load i64, ptr %"var.digits'", align 8
  %addtmp = add i64 %var.load68, 1
  store i64 %addtmp, ptr %"var.digits'", align 8
  %var.load69 = load i64, ptr %"var.i'", align 8
  %addtmp70 = add i64 %var.load69, 1
  store i64 %addtmp70, ptr %"var.i'", align 8
  br label %choice.exit52

idx_oob63:                                        ; preds = %choice.then51
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %idx_ok62

and.113.then:                                     ; preds = %loop.exit.111
  %var.load74 = load ptr, ptr %var.s, align 8
  %s.read.len75 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 0
  %s.read.len76 = load i64, ptr %s.read.len75, align 8
  %s.read.len77 = and i64 %s.read.len76, 281474976710655
  %s.read.data78 = getelementptr inbounds { i64, ptr }, ptr %var.load74, i32 0, i32 1
  %s.read.data79 = load ptr, ptr %s.read.data78, align 8
  %var.load80 = load i64, ptr %"var.i'", align 8
  %idx.oob81 = icmp uge i64 %var.load80, %s.read.len77
  br i1 %idx.oob81, label %idx_oob83, label %idx_ok82

and.113.else:                                     ; preds = %loop.exit.111
  br label %and.113.exit

and.113.exit:                                     ; preds = %and.113.else, %idx_ok82
  %and.113.phi = phi i1 [ %cmptmp88, %idx_ok82 ], [ %cmptmp73, %and.113.else ]
  br i1 %and.113.phi, label %choice.then89, label %choice.exit90

idx_ok82:                                         ; preds = %abort.dead84, %and.113.then
  %s.byte.gep85 = getelementptr i8, ptr %s.read.data79, i64 %var.load80
  %s.byte86 = load i8, ptr %s.byte.gep85, align 1
  %s.byte.val87 = zext i8 %s.byte86 to i64
  %cmptmp88 = icmp eq i64 %s.byte.val87, 46
  br label %and.113.exit

idx_oob83:                                        ; preds = %and.113.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead84:                                     ; No predecessors!
  br label %idx_ok82

choice.then89:                                    ; preds = %and.113.exit
  %var.load91 = load i64, ptr %"var.i'", align 8
  %addtmp92 = add i64 %var.load91, 1
  store i64 %addtmp92, ptr %"var.i'", align 8
  store i64 0, ptr %loop.idx.114, align 8
  br label %loop.header.114

choice.exit90:                                    ; preds = %loop.exit.114, %and.113.exit
  %var.load145 = load i64, ptr %"var.digits'", align 8
  %cmptmp146 = icmp eq i64 %var.load145, 0
  br i1 %cmptmp146, label %choice.then147, label %choice.exit148

loop.header.114:                                  ; preds = %loop.latch.114, %choice.then89
  %counter.load93 = load i64, ptr %loop.idx.114, align 8
  br label %loop.body.114

loop.body.114:                                    ; preds = %loop.header.114
  %loop.rel.i94 = sub i64 %counter.load93, 0
  store i64 1, ptr %loop.step.114, align 8
  store i64 %loop.rel.i94, ptr %var._i95, align 8
  store i64 %counter.load93, ptr %var._96, align 8
  %var.load97 = load i64, ptr %"var.i'", align 8
  %var.load98 = load i64, ptr %var.len, align 8
  %cmptmp99 = icmp slt i64 %var.load97, %var.load98
  br i1 %cmptmp99, label %and.115.then, label %and.115.else

loop.exit.nat.114:                                ; No predecessors!
  br label %loop.exit.114

loop.latch.114:                                   ; preds = %choice.exit117
  %step.val143 = load i64, ptr %loop.step.114, align 8
  %loop.next144 = add i64 %counter.load93, %step.val143
  store i64 %loop.next144, ptr %loop.idx.114, align 8
  br label %loop.header.114

loop.exit.114:                                    ; preds = %choice.else116, %loop.exit.nat.114
  br label %choice.exit90

and.115.then:                                     ; preds = %loop.body.114
  %var.load100 = load ptr, ptr %var.s, align 8
  %s.read.len101 = getelementptr inbounds { i64, ptr }, ptr %var.load100, i32 0, i32 0
  %s.read.len102 = load i64, ptr %s.read.len101, align 8
  %s.read.len103 = and i64 %s.read.len102, 281474976710655
  %s.read.data104 = getelementptr inbounds { i64, ptr }, ptr %var.load100, i32 0, i32 1
  %s.read.data105 = load ptr, ptr %s.read.data104, align 8
  %var.load106 = load i64, ptr %"var.i'", align 8
  %idx.oob107 = icmp uge i64 %var.load106, %s.read.len103
  br i1 %idx.oob107, label %idx_oob109, label %idx_ok108

and.115.else:                                     ; preds = %loop.body.114
  br label %and.115.exit

and.115.exit:                                     ; preds = %and.115.else, %idx_ok108
  %and.115.phi = phi i1 [ %call.res114, %idx_ok108 ], [ %cmptmp99, %and.115.else ]
  br i1 %and.115.phi, label %choice.then115, label %choice.else116

idx_ok108:                                        ; preds = %abort.dead110, %and.115.then
  %s.byte.gep111 = getelementptr i8, ptr %s.read.data105, i64 %var.load106
  %s.byte112 = load i8, ptr %s.byte.gep111, align 1
  %s.byte.val113 = zext i8 %s.byte112 to i64
  %call.res114 = call i1 @"str::is_digit"(i64 %s.byte.val113)
  br label %and.115.exit

idx_oob109:                                       ; preds = %and.115.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead110:                                    ; No predecessors!
  br label %idx_ok108

choice.then115:                                   ; preds = %and.115.exit
  %var.load118 = load double, ptr %"var.frac_val'", align 8
  %fmultmp119 = fmul double %var.load118, 1.000000e+01
  %var.load120 = load ptr, ptr %var.s, align 8
  %s.read.len121 = getelementptr inbounds { i64, ptr }, ptr %var.load120, i32 0, i32 0
  %s.read.len122 = load i64, ptr %s.read.len121, align 8
  %s.read.len123 = and i64 %s.read.len122, 281474976710655
  %s.read.data124 = getelementptr inbounds { i64, ptr }, ptr %var.load120, i32 0, i32 1
  %s.read.data125 = load ptr, ptr %s.read.data124, align 8
  %var.load126 = load i64, ptr %"var.i'", align 8
  %idx.oob127 = icmp uge i64 %var.load126, %s.read.len123
  br i1 %idx.oob127, label %idx_oob129, label %idx_ok128

choice.else116:                                   ; preds = %and.115.exit
  br label %loop.exit.114

choice.exit117:                                   ; preds = %idx_ok128
  br label %loop.latch.114

idx_ok128:                                        ; preds = %abort.dead130, %choice.then115
  %s.byte.gep131 = getelementptr i8, ptr %s.read.data125, i64 %var.load126
  %s.byte132 = load i8, ptr %s.byte.gep131, align 1
  %s.byte.val133 = zext i8 %s.byte132 to i64
  %subtmp134 = sub i64 %s.byte.val133, 48
  %cast.sitofp135 = sitofp i64 %subtmp134 to double
  %faddtmp136 = fadd double %fmultmp119, %cast.sitofp135
  store double %faddtmp136, ptr %"var.frac_val'", align 8
  %var.load137 = load double, ptr %"var.frac_scale'", align 8
  %fmultmp138 = fmul double %var.load137, 1.000000e+01
  store double %fmultmp138, ptr %"var.frac_scale'", align 8
  %var.load139 = load i64, ptr %"var.digits'", align 8
  %addtmp140 = add i64 %var.load139, 1
  store i64 %addtmp140, ptr %"var.digits'", align 8
  %var.load141 = load i64, ptr %"var.i'", align 8
  %addtmp142 = add i64 %var.load141, 1
  store i64 %addtmp142, ptr %"var.i'", align 8
  br label %choice.exit117

idx_oob129:                                       ; preds = %choice.then115
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead130:                                    ; No predecessors!
  br label %idx_ok128

choice.then147:                                   ; preds = %choice.exit90
  ret { i1, i64 } zeroinitializer

choice.exit148:                                   ; preds = %ret.dead149, %choice.exit90
  %var.load150 = load double, ptr %"var.int_val'", align 8
  %var.load151 = load double, ptr %"var.frac_val'", align 8
  %var.load152 = load double, ptr %"var.frac_scale'", align 8
  %fdivtmp = fdiv double %var.load151, %var.load152
  %faddtmp153 = fadd double %var.load150, %fdivtmp
  store double %faddtmp153, ptr %"var.res'", align 8
  %var.load154 = load i64, ptr %"var.i'", align 8
  %var.load155 = load i64, ptr %var.len, align 8
  %cmptmp156 = icmp slt i64 %var.load154, %var.load155
  br i1 %cmptmp156, label %and.116.then, label %and.116.else

ret.dead149:                                      ; No predecessors!
  br label %choice.exit148

and.116.then:                                     ; preds = %choice.exit148
  %var.load157 = load ptr, ptr %var.s, align 8
  %s.read.len158 = getelementptr inbounds { i64, ptr }, ptr %var.load157, i32 0, i32 0
  %s.read.len159 = load i64, ptr %s.read.len158, align 8
  %s.read.len160 = and i64 %s.read.len159, 281474976710655
  %s.read.data161 = getelementptr inbounds { i64, ptr }, ptr %var.load157, i32 0, i32 1
  %s.read.data162 = load ptr, ptr %s.read.data161, align 8
  %var.load163 = load i64, ptr %"var.i'", align 8
  %idx.oob164 = icmp uge i64 %var.load163, %s.read.len160
  br i1 %idx.oob164, label %idx_oob166, label %idx_ok165

and.116.else:                                     ; preds = %choice.exit148
  br label %and.116.exit

and.116.exit:                                     ; preds = %and.116.else, %choice.exit171
  %and.116.phi = phi i1 [ %choice.res, %choice.exit171 ], [ %cmptmp156, %and.116.else ]
  br i1 %and.116.phi, label %choice.then173, label %choice.exit174

idx_ok165:                                        ; preds = %abort.dead167, %and.116.then
  %s.byte.gep168 = getelementptr i8, ptr %s.read.data162, i64 %var.load163
  %s.byte169 = load i8, ptr %s.byte.gep168, align 1
  %s.byte.val170 = zext i8 %s.byte169 to i64
  %val.match = icmp eq i64 %s.byte.val170, 101
  %val.match172 = icmp eq i64 %s.byte.val170, 69
  %case.or = or i1 %val.match, %val.match172
  br i1 %case.or, label %choice.case, label %choice.next

idx_oob166:                                       ; preds = %and.116.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead167:                                    ; No predecessors!
  br label %idx_ok165

choice.exit171:                                   ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.116.exit

choice.case:                                      ; preds = %idx_ok165
  br label %choice.exit171

choice.next:                                      ; preds = %idx_ok165
  br label %choice.exit171

choice.then173:                                   ; preds = %and.116.exit
  %var.load175 = load i64, ptr %"var.i'", align 8
  %addtmp176 = add i64 %var.load175, 1
  store i64 %addtmp176, ptr %"var.i'", align 8
  %var.load177 = load i64, ptr %"var.i'", align 8
  %var.load178 = load i64, ptr %var.len, align 8
  %cmptmp179 = icmp sge i64 %var.load177, %var.load178
  br i1 %cmptmp179, label %choice.then180, label %choice.exit181

choice.exit174:                                   ; preds = %choice.exit280, %and.116.exit
  %var.load288 = load i64, ptr %"var.i'", align 8
  %var.load289 = load i64, ptr %var.len, align 8
  %cmptmp290 = icmp ne i64 %var.load288, %var.load289
  br i1 %cmptmp290, label %choice.then291, label %choice.else292

choice.then180:                                   ; preds = %choice.then173
  ret { i1, i64 } zeroinitializer

choice.exit181:                                   ; preds = %ret.dead182, %choice.then173
  %var.load183 = load ptr, ptr %var.s, align 8
  %s.read.len184 = getelementptr inbounds { i64, ptr }, ptr %var.load183, i32 0, i32 0
  %s.read.len185 = load i64, ptr %s.read.len184, align 8
  %s.read.len186 = and i64 %s.read.len185, 281474976710655
  %s.read.data187 = getelementptr inbounds { i64, ptr }, ptr %var.load183, i32 0, i32 1
  %s.read.data188 = load ptr, ptr %s.read.data187, align 8
  %var.load189 = load i64, ptr %"var.i'", align 8
  %idx.oob190 = icmp uge i64 %var.load189, %s.read.len186
  br i1 %idx.oob190, label %idx_oob192, label %idx_ok191

ret.dead182:                                      ; No predecessors!
  br label %choice.exit181

idx_ok191:                                        ; preds = %abort.dead193, %choice.exit181
  %s.byte.gep194 = getelementptr i8, ptr %s.read.data188, i64 %var.load189
  %s.byte195 = load i8, ptr %s.byte.gep194, align 1
  %s.byte.val196 = zext i8 %s.byte195 to i64
  %cmptmp197 = icmp eq i64 %s.byte.val196, 45
  store i1 %cmptmp197, ptr %var.exp_neg, align 1
  %var.load198 = load i1, ptr %var.exp_neg, align 1
  br i1 %var.load198, label %or.117.then, label %or.117.else

idx_oob192:                                       ; preds = %choice.exit181
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead193:                                    ; No predecessors!
  br label %idx_ok191

or.117.then:                                      ; preds = %idx_ok191
  br label %or.117.exit

or.117.else:                                      ; preds = %idx_ok191
  %var.load199 = load ptr, ptr %var.s, align 8
  %s.read.len200 = getelementptr inbounds { i64, ptr }, ptr %var.load199, i32 0, i32 0
  %s.read.len201 = load i64, ptr %s.read.len200, align 8
  %s.read.len202 = and i64 %s.read.len201, 281474976710655
  %s.read.data203 = getelementptr inbounds { i64, ptr }, ptr %var.load199, i32 0, i32 1
  %s.read.data204 = load ptr, ptr %s.read.data203, align 8
  %var.load205 = load i64, ptr %"var.i'", align 8
  %idx.oob206 = icmp uge i64 %var.load205, %s.read.len202
  br i1 %idx.oob206, label %idx_oob208, label %idx_ok207

or.117.exit:                                      ; preds = %idx_ok207, %or.117.then
  %or.117.phi = phi i1 [ %var.load198, %or.117.then ], [ %cmptmp213, %idx_ok207 ]
  br i1 %or.117.phi, label %choice.then214, label %choice.exit215

idx_ok207:                                        ; preds = %abort.dead209, %or.117.else
  %s.byte.gep210 = getelementptr i8, ptr %s.read.data204, i64 %var.load205
  %s.byte211 = load i8, ptr %s.byte.gep210, align 1
  %s.byte.val212 = zext i8 %s.byte211 to i64
  %cmptmp213 = icmp eq i64 %s.byte.val212, 43
  br label %or.117.exit

idx_oob208:                                       ; preds = %or.117.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead209:                                    ; No predecessors!
  br label %idx_ok207

choice.then214:                                   ; preds = %or.117.exit
  %var.load216 = load i64, ptr %"var.i'", align 8
  %addtmp217 = add i64 %var.load216, 1
  store i64 %addtmp217, ptr %"var.i'", align 8
  br label %choice.exit215

choice.exit215:                                   ; preds = %choice.then214, %or.117.exit
  %var.load218 = load i64, ptr %"var.i'", align 8
  %var.load219 = load i64, ptr %var.len, align 8
  %cmptmp220 = icmp sge i64 %var.load218, %var.load219
  br i1 %cmptmp220, label %choice.then221, label %choice.exit222

choice.then221:                                   ; preds = %choice.exit215
  ret { i1, i64 } zeroinitializer

choice.exit222:                                   ; preds = %ret.dead223, %choice.exit215
  store i64 0, ptr %"var.exp_val'", align 8
  store i64 0, ptr %"var.exp_digits'", align 8
  store i64 0, ptr %loop.idx.118, align 8
  br label %loop.header.118

ret.dead223:                                      ; No predecessors!
  br label %choice.exit222

loop.header.118:                                  ; preds = %loop.latch.118, %choice.exit222
  %counter.load224 = load i64, ptr %loop.idx.118, align 8
  br label %loop.body.118

loop.body.118:                                    ; preds = %loop.header.118
  %loop.rel.i225 = sub i64 %counter.load224, 0
  store i64 1, ptr %loop.step.118, align 8
  store i64 %loop.rel.i225, ptr %var._i226, align 8
  store i64 %counter.load224, ptr %var._227, align 8
  %var.load228 = load i64, ptr %"var.i'", align 8
  %var.load229 = load i64, ptr %var.len, align 8
  %cmptmp230 = icmp slt i64 %var.load228, %var.load229
  br i1 %cmptmp230, label %and.119.then, label %and.119.else

loop.exit.nat.118:                                ; No predecessors!
  br label %loop.exit.118

loop.latch.118:                                   ; preds = %choice.exit248
  %step.val270 = load i64, ptr %loop.step.118, align 8
  %loop.next271 = add i64 %counter.load224, %step.val270
  store i64 %loop.next271, ptr %loop.idx.118, align 8
  br label %loop.header.118

loop.exit.118:                                    ; preds = %choice.else247, %loop.exit.nat.118
  %var.load272 = load i64, ptr %"var.exp_digits'", align 8
  %cmptmp273 = icmp eq i64 %var.load272, 0
  br i1 %cmptmp273, label %choice.then274, label %choice.exit275

and.119.then:                                     ; preds = %loop.body.118
  %var.load231 = load ptr, ptr %var.s, align 8
  %s.read.len232 = getelementptr inbounds { i64, ptr }, ptr %var.load231, i32 0, i32 0
  %s.read.len233 = load i64, ptr %s.read.len232, align 8
  %s.read.len234 = and i64 %s.read.len233, 281474976710655
  %s.read.data235 = getelementptr inbounds { i64, ptr }, ptr %var.load231, i32 0, i32 1
  %s.read.data236 = load ptr, ptr %s.read.data235, align 8
  %var.load237 = load i64, ptr %"var.i'", align 8
  %idx.oob238 = icmp uge i64 %var.load237, %s.read.len234
  br i1 %idx.oob238, label %idx_oob240, label %idx_ok239

and.119.else:                                     ; preds = %loop.body.118
  br label %and.119.exit

and.119.exit:                                     ; preds = %and.119.else, %idx_ok239
  %and.119.phi = phi i1 [ %call.res245, %idx_ok239 ], [ %cmptmp230, %and.119.else ]
  br i1 %and.119.phi, label %choice.then246, label %choice.else247

idx_ok239:                                        ; preds = %abort.dead241, %and.119.then
  %s.byte.gep242 = getelementptr i8, ptr %s.read.data236, i64 %var.load237
  %s.byte243 = load i8, ptr %s.byte.gep242, align 1
  %s.byte.val244 = zext i8 %s.byte243 to i64
  %call.res245 = call i1 @"str::is_digit"(i64 %s.byte.val244)
  br label %and.119.exit

idx_oob240:                                       ; preds = %and.119.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead241:                                    ; No predecessors!
  br label %idx_ok239

choice.then246:                                   ; preds = %and.119.exit
  %var.load249 = load i64, ptr %"var.exp_val'", align 8
  %multmp = mul i64 %var.load249, 10
  %var.load250 = load ptr, ptr %var.s, align 8
  %s.read.len251 = getelementptr inbounds { i64, ptr }, ptr %var.load250, i32 0, i32 0
  %s.read.len252 = load i64, ptr %s.read.len251, align 8
  %s.read.len253 = and i64 %s.read.len252, 281474976710655
  %s.read.data254 = getelementptr inbounds { i64, ptr }, ptr %var.load250, i32 0, i32 1
  %s.read.data255 = load ptr, ptr %s.read.data254, align 8
  %var.load256 = load i64, ptr %"var.i'", align 8
  %idx.oob257 = icmp uge i64 %var.load256, %s.read.len253
  br i1 %idx.oob257, label %idx_oob259, label %idx_ok258

choice.else247:                                   ; preds = %and.119.exit
  br label %loop.exit.118

choice.exit248:                                   ; preds = %idx_ok258
  br label %loop.latch.118

idx_ok258:                                        ; preds = %abort.dead260, %choice.then246
  %s.byte.gep261 = getelementptr i8, ptr %s.read.data255, i64 %var.load256
  %s.byte262 = load i8, ptr %s.byte.gep261, align 1
  %s.byte.val263 = zext i8 %s.byte262 to i64
  %subtmp264 = sub i64 %s.byte.val263, 48
  %addtmp265 = add i64 %multmp, %subtmp264
  store i64 %addtmp265, ptr %"var.exp_val'", align 8
  %var.load266 = load i64, ptr %"var.exp_digits'", align 8
  %addtmp267 = add i64 %var.load266, 1
  store i64 %addtmp267, ptr %"var.exp_digits'", align 8
  %var.load268 = load i64, ptr %"var.i'", align 8
  %addtmp269 = add i64 %var.load268, 1
  store i64 %addtmp269, ptr %"var.i'", align 8
  br label %choice.exit248

idx_oob259:                                       ; preds = %choice.then246
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead260:                                    ; No predecessors!
  br label %idx_ok258

choice.then274:                                   ; preds = %loop.exit.118
  ret { i1, i64 } zeroinitializer

choice.exit275:                                   ; preds = %ret.dead276, %loop.exit.118
  %var.load277 = load i1, ptr %var.exp_neg, align 1
  br i1 %var.load277, label %choice.then278, label %choice.else279

ret.dead276:                                      ; No predecessors!
  br label %choice.exit275

choice.then278:                                   ; preds = %choice.exit275
  %var.load281 = load i64, ptr %"var.exp_val'", align 8
  %negtmp = sub i64 0, %var.load281
  br label %choice.exit280

choice.else279:                                   ; preds = %choice.exit275
  %var.load282 = load i64, ptr %"var.exp_val'", align 8
  br label %choice.exit280

choice.exit280:                                   ; preds = %choice.else279, %choice.then278
  %choice.res283 = phi i64 [ %negtmp, %choice.then278 ], [ %var.load282, %choice.else279 ]
  %cast.sitofp284 = sitofp i64 %choice.res283 to double
  %pow = call double @llvm.pow.f64(double 1.000000e+01, double %cast.sitofp284)
  store double %pow, ptr %var.pow10, align 8
  %var.load285 = load double, ptr %"var.res'", align 8
  %var.load286 = load double, ptr %var.pow10, align 8
  %fmultmp287 = fmul double %var.load285, %var.load286
  store double %fmultmp287, ptr %"var.res'", align 8
  br label %choice.exit174

choice.then291:                                   ; preds = %choice.exit174
  br label %choice.exit293

choice.else292:                                   ; preds = %choice.exit174
  %var.load294 = load i1, ptr %var.neg, align 1
  br i1 %var.load294, label %choice.then295, label %choice.else296

choice.exit293:                                   ; preds = %choice.exit297, %choice.then291
  %choice.res301 = phi { i1, i64 } [ zeroinitializer, %choice.then291 ], [ %ram.pay, %choice.exit297 ]
  ret { i1, i64 } %choice.res301

choice.then295:                                   ; preds = %choice.else292
  %var.load298 = load double, ptr %"var.res'", align 8
  %fnegtmp = fneg double %var.load298
  br label %choice.exit297

choice.else296:                                   ; preds = %choice.else292
  %var.load299 = load double, ptr %"var.res'", align 8
  br label %choice.exit297

choice.exit297:                                   ; preds = %choice.else296, %choice.then295
  %choice.res300 = phi double [ %fnegtmp, %choice.then295 ], [ %var.load299, %choice.else296 ]
  %f.to.i64 = bitcast double %choice.res300 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %f.to.i64, 1
  br label %choice.exit293
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
