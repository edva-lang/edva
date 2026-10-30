; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"ascii::is_ascii", ptr null }
@"var.ascii::is_ascii" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"ascii::is_digit", ptr null }
@"var.ascii::is_digit" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"ascii::is_upper", ptr null }
@"var.ascii::is_upper" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"ascii::is_lower", ptr null }
@"var.ascii::is_lower" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"ascii::is_alpha", ptr null }
@"var.ascii::is_alpha" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"ascii::is_alnum", ptr null }
@"var.ascii::is_alnum" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"ascii::is_hex", ptr null }
@"var.ascii::is_hex" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"ascii::to_lower", ptr null }
@"var.ascii::to_lower" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"ascii::to_upper", ptr null }
@"var.ascii::to_upper" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"ascii::hex_value", ptr null }
@"var.ascii::hex_value" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"ascii::hex_digit_lower", ptr null }
@"var.ascii::hex_digit_lower" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"ascii::hex_digit_upper", ptr null }
@"var.ascii::hex_digit_upper" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"ascii::hex_char_lower", ptr null }
@"var.ascii::hex_char_lower" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"ascii::hex_char_upper", ptr null }
@"var.ascii::hex_char_upper" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_ascii, ptr null }]

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

define internal void @__dva_global_init_ascii() #1 {
entry:
  store ptr @clo.const, ptr @"var.ascii::is_ascii", align 8
  store ptr @clo.const.1, ptr @"var.ascii::is_digit", align 8
  store ptr @clo.const.2, ptr @"var.ascii::is_upper", align 8
  store ptr @clo.const.3, ptr @"var.ascii::is_lower", align 8
  store ptr @clo.const.4, ptr @"var.ascii::is_alpha", align 8
  store ptr @clo.const.5, ptr @"var.ascii::is_alnum", align 8
  store ptr @clo.const.6, ptr @"var.ascii::is_hex", align 8
  store ptr @clo.const.7, ptr @"var.ascii::to_lower", align 8
  store ptr @clo.const.8, ptr @"var.ascii::to_upper", align 8
  store ptr @clo.const.9, ptr @"var.ascii::hex_value", align 8
  store ptr @clo.const.10, ptr @"var.ascii::hex_digit_lower", align 8
  store ptr @clo.const.11, ptr @"var.ascii::hex_digit_upper", align 8
  store ptr @clo.const.12, ptr @"var.ascii::hex_char_lower", align 8
  store ptr @clo.const.13, ptr @"var.ascii::hex_char_upper", align 8
  ret void
}

define i1 @"ascii::is_ascii"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.0.then, label %and.0.else

and.0.then:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 127
  br label %and.0.exit

and.0.else:                                       ; preds = %entry
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %and.0.then
  %and.0.phi = phi i1 [ %cmptmp2, %and.0.then ], [ %cmptmp, %and.0.else ]
  ret i1 %and.0.phi
}

define i1 @"ascii::is_digit"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load, 48
  br i1 %cmptmp, label %and.1.then, label %and.1.else

and.1.then:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 57
  br label %and.1.exit

and.1.else:                                       ; preds = %entry
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %and.1.then
  %and.1.phi = phi i1 [ %cmptmp2, %and.1.then ], [ %cmptmp, %and.1.else ]
  ret i1 %and.1.phi
}

define i1 @"ascii::is_upper"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load, 65
  br i1 %cmptmp, label %and.2.then, label %and.2.else

and.2.then:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 90
  br label %and.2.exit

and.2.else:                                       ; preds = %entry
  br label %and.2.exit

and.2.exit:                                       ; preds = %and.2.else, %and.2.then
  %and.2.phi = phi i1 [ %cmptmp2, %and.2.then ], [ %cmptmp, %and.2.else ]
  ret i1 %and.2.phi
}

define i1 @"ascii::is_lower"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load, 97
  br i1 %cmptmp, label %and.3.then, label %and.3.else

and.3.then:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 122
  br label %and.3.exit

and.3.else:                                       ; preds = %entry
  br label %and.3.exit

and.3.exit:                                       ; preds = %and.3.else, %and.3.then
  %and.3.phi = phi i1 [ %cmptmp2, %and.3.then ], [ %cmptmp, %and.3.else ]
  ret i1 %and.3.phi
}

define i1 @"ascii::is_alpha"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_upper"(i64 %var.load)
  br i1 %call.res, label %or.4.then, label %or.4.else

or.4.then:                                        ; preds = %entry
  br label %or.4.exit

or.4.else:                                        ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %call.res2 = call i1 @"ascii::is_lower"(i64 %var.load1)
  br label %or.4.exit

or.4.exit:                                        ; preds = %or.4.else, %or.4.then
  %or.4.phi = phi i1 [ %call.res, %or.4.then ], [ %call.res2, %or.4.else ]
  ret i1 %or.4.phi
}

define i1 @"ascii::is_alnum"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_digit"(i64 %var.load)
  br i1 %call.res, label %or.5.then, label %or.5.else

or.5.then:                                        ; preds = %entry
  br label %or.5.exit

or.5.else:                                        ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %call.res2 = call i1 @"ascii::is_alpha"(i64 %var.load1)
  br label %or.5.exit

or.5.exit:                                        ; preds = %or.5.else, %or.5.then
  %or.5.phi = phi i1 [ %call.res, %or.5.then ], [ %call.res2, %or.5.else ]
  ret i1 %or.5.phi
}

define i1 @"ascii::is_hex"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_digit"(i64 %var.load)
  br i1 %call.res, label %or.6.then, label %or.6.else

or.6.then:                                        ; preds = %entry
  br label %or.6.exit

or.6.else:                                        ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load1, 65
  br i1 %cmptmp, label %and.7.then, label %and.7.else

or.6.exit:                                        ; preds = %and.7.exit, %or.6.then
  %or.6.phi = phi i1 [ %call.res, %or.6.then ], [ %and.7.phi, %and.7.exit ]
  br i1 %or.6.phi, label %or.8.then, label %or.8.else

and.7.then:                                       ; preds = %or.6.else
  %var.load2 = load i64, ptr %var.c, align 8
  %cmptmp3 = icmp sle i64 %var.load2, 70
  br label %and.7.exit

and.7.else:                                       ; preds = %or.6.else
  br label %and.7.exit

and.7.exit:                                       ; preds = %and.7.else, %and.7.then
  %and.7.phi = phi i1 [ %cmptmp3, %and.7.then ], [ %cmptmp, %and.7.else ]
  br label %or.6.exit

or.8.then:                                        ; preds = %or.6.exit
  br label %or.8.exit

or.8.else:                                        ; preds = %or.6.exit
  %var.load4 = load i64, ptr %var.c, align 8
  %cmptmp5 = icmp sge i64 %var.load4, 97
  br i1 %cmptmp5, label %and.9.then, label %and.9.else

or.8.exit:                                        ; preds = %and.9.exit, %or.8.then
  %or.8.phi = phi i1 [ %or.6.phi, %or.8.then ], [ %and.9.phi, %and.9.exit ]
  ret i1 %or.8.phi

and.9.then:                                       ; preds = %or.8.else
  %var.load6 = load i64, ptr %var.c, align 8
  %cmptmp7 = icmp sle i64 %var.load6, 102
  br label %and.9.exit

and.9.else:                                       ; preds = %or.8.else
  br label %and.9.exit

and.9.exit:                                       ; preds = %and.9.else, %and.9.then
  %and.9.phi = phi i1 [ %cmptmp7, %and.9.then ], [ %cmptmp5, %and.9.else ]
  br label %or.8.exit
}

define i64 @"ascii::to_lower"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_upper"(i64 %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %addtmp = add i64 %var.load1, 32
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.c, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ %var.load2, %choice.else ]
  ret i64 %choice.res
}

define i64 @"ascii::to_upper"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_lower"(i64 %var.load)
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load1, 32
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.c, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %subtmp, %choice.then ], [ %var.load2, %choice.else ]
  ret i64 %choice.res
}

define { i1, i64 } @"ascii::hex_value"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load, 48
  br i1 %cmptmp, label %and.10.then, label %and.10.else

and.10.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 57
  br label %and.10.exit

and.10.else:                                      ; preds = %entry
  br label %and.10.exit

and.10.exit:                                      ; preds = %and.10.else, %and.10.then
  %and.10.phi = phi i1 [ %cmptmp2, %and.10.then ], [ %cmptmp, %and.10.else ]
  br i1 %and.10.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.10.exit
  %var.load3 = load i64, ptr %var.c, align 8
  %subtmp = sub i64 %var.load3, 48
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp, 1
  br label %choice.exit

choice.else:                                      ; preds = %and.10.exit
  %var.load4 = load i64, ptr %var.c, align 8
  %cmptmp5 = icmp sge i64 %var.load4, 65
  br i1 %cmptmp5, label %and.11.then, label %and.11.else

choice.exit:                                      ; preds = %choice.exit10, %choice.then
  %choice.res25 = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %choice.res24, %choice.exit10 ]
  ret { i1, i64 } %choice.res25

and.11.then:                                      ; preds = %choice.else
  %var.load6 = load i64, ptr %var.c, align 8
  %cmptmp7 = icmp sle i64 %var.load6, 70
  br label %and.11.exit

and.11.else:                                      ; preds = %choice.else
  br label %and.11.exit

and.11.exit:                                      ; preds = %and.11.else, %and.11.then
  %and.11.phi = phi i1 [ %cmptmp7, %and.11.then ], [ %cmptmp5, %and.11.else ]
  br i1 %and.11.phi, label %choice.then8, label %choice.else9

choice.then8:                                     ; preds = %and.11.exit
  %var.load11 = load i64, ptr %var.c, align 8
  %subtmp12 = sub i64 %var.load11, 55
  %ram.pay13 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp12, 1
  br label %choice.exit10

choice.else9:                                     ; preds = %and.11.exit
  %var.load14 = load i64, ptr %var.c, align 8
  %cmptmp15 = icmp sge i64 %var.load14, 97
  br i1 %cmptmp15, label %and.12.then, label %and.12.else

choice.exit10:                                    ; preds = %choice.exit20, %choice.then8
  %choice.res24 = phi { i1, i64 } [ %ram.pay13, %choice.then8 ], [ %choice.res, %choice.exit20 ]
  br label %choice.exit

and.12.then:                                      ; preds = %choice.else9
  %var.load16 = load i64, ptr %var.c, align 8
  %cmptmp17 = icmp sle i64 %var.load16, 102
  br label %and.12.exit

and.12.else:                                      ; preds = %choice.else9
  br label %and.12.exit

and.12.exit:                                      ; preds = %and.12.else, %and.12.then
  %and.12.phi = phi i1 [ %cmptmp17, %and.12.then ], [ %cmptmp15, %and.12.else ]
  br i1 %and.12.phi, label %choice.then18, label %choice.else19

choice.then18:                                    ; preds = %and.12.exit
  %var.load21 = load i64, ptr %var.c, align 8
  %subtmp22 = sub i64 %var.load21, 87
  %ram.pay23 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %subtmp22, 1
  br label %choice.exit20

choice.else19:                                    ; preds = %and.12.exit
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.else19, %choice.then18
  %choice.res = phi { i1, i64 } [ %ram.pay23, %choice.then18 ], [ zeroinitializer, %choice.else19 ]
  br label %choice.exit10
}

define { i1, i64 } @"ascii::hex_digit_lower"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.13.then, label %and.13.else

and.13.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 15
  br label %and.13.exit

and.13.else:                                      ; preds = %entry
  br label %and.13.exit

and.13.exit:                                      ; preds = %and.13.else, %and.13.then
  %and.13.phi = phi i1 [ %cmptmp2, %and.13.then ], [ %cmptmp, %and.13.else ]
  br i1 %and.13.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.13.exit
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp4 = icmp slt i64 %var.load3, 10
  br i1 %cmptmp4, label %choice.then5, label %choice.else6

choice.else:                                      ; preds = %and.13.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit7
  %choice.res11 = phi { i1, i64 } [ %ram.pay, %choice.exit7 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res11

choice.then5:                                     ; preds = %choice.then
  %var.load8 = load i64, ptr %var.n, align 8
  %addtmp = add i64 48, %var.load8
  br label %choice.exit7

choice.else6:                                     ; preds = %choice.then
  %var.load9 = load i64, ptr %var.n, align 8
  %addtmp10 = add i64 87, %var.load9
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else6, %choice.then5
  %choice.res = phi i64 [ %addtmp, %choice.then5 ], [ %addtmp10, %choice.else6 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res, 1
  br label %choice.exit
}

define { i1, i64 } @"ascii::hex_digit_upper"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load, 0
  br i1 %cmptmp, label %and.14.then, label %and.14.else

and.14.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 15
  br label %and.14.exit

and.14.else:                                      ; preds = %entry
  br label %and.14.exit

and.14.exit:                                      ; preds = %and.14.else, %and.14.then
  %and.14.phi = phi i1 [ %cmptmp2, %and.14.then ], [ %cmptmp, %and.14.else ]
  br i1 %and.14.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.14.exit
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp4 = icmp slt i64 %var.load3, 10
  br i1 %cmptmp4, label %choice.then5, label %choice.else6

choice.else:                                      ; preds = %and.14.exit
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit7
  %choice.res11 = phi { i1, i64 } [ %ram.pay, %choice.exit7 ], [ zeroinitializer, %choice.else ]
  ret { i1, i64 } %choice.res11

choice.then5:                                     ; preds = %choice.then
  %var.load8 = load i64, ptr %var.n, align 8
  %addtmp = add i64 48, %var.load8
  br label %choice.exit7

choice.else6:                                     ; preds = %choice.then
  %var.load9 = load i64, ptr %var.n, align 8
  %addtmp10 = add i64 55, %var.load9
  br label %choice.exit7

choice.exit7:                                     ; preds = %choice.else6, %choice.then5
  %choice.res = phi i64 [ %addtmp, %choice.then5 ], [ %addtmp10, %choice.else6 ]
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %choice.res, 1
  br label %choice.exit
}

define i64 @"ascii::hex_char_lower"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 10
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %addtmp = add i64 48, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  %addtmp3 = add i64 87, %var.load2
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ %addtmp3, %choice.else ]
  ret i64 %choice.res
}

define i64 @"ascii::hex_char_upper"(i64 %0) #1 {
entry:
  %var.n = alloca i64, align 8
  store i64 %0, ptr %var.n, align 8
  %var.load = load i64, ptr %var.n, align 8
  %cmptmp = icmp slt i64 %var.load, 10
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.n, align 8
  %addtmp = add i64 48, %var.load1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.n, align 8
  %addtmp3 = add i64 55, %var.load2
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %addtmp, %choice.then ], [ %addtmp3, %choice.else ]
  ret i64 %choice.res
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
