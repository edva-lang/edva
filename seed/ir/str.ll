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
@clo.const = internal constant { ptr, ptr } { ptr @"str::is_digit", ptr null }
@"var.str::is_digit" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"str::is_alpha", ptr null }
@"var.str::is_alpha" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"str::is_alnum", ptr null }
@"var.str::is_alnum" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"str::is_ws", ptr null }
@"var.str::is_ws" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"str::is_hex", ptr null }
@"var.str::is_hex" = global ptr null
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const.5 = internal constant { ptr, ptr } { ptr @"str::from_byte", ptr null }
@"var.str::from_byte" = global ptr null
@str.0 = internal unnamed_addr constant [2 x i8] c"0\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.6 = internal constant { ptr, ptr } { ptr @"str::from_int", ptr null }
@"var.str::from_int" = global ptr null
@str.1 = internal unnamed_addr constant [3 x i8] c"0.\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.1 }
@str.2 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.2 }
@str.3 = internal unnamed_addr constant [2 x i8] c"e\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.3 }
@clo.const.7 = internal constant { ptr, ptr } { ptr @"str::from_float", ptr null }
@"var.str::from_float" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"str::cmp", ptr null }
@"var.str::cmp" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"str::lt", ptr null }
@"var.str::lt" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"str::to_int", ptr null }
@"var.str::to_int" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"str::to_hex", ptr null }
@"var.str::to_hex" = global ptr null
@str.4 = internal unnamed_addr constant [4 x i8] c"0x0\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.4 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"str::hex_to_str", ptr null }
@"var.str::hex_to_str" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_str, ptr null }]

declare i32 @printf(ptr, ...)

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @strlen(ptr)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_str() #1 {
entry:
  store ptr @clo.const, ptr @"var.str::is_digit", align 8
  store ptr @clo.const.1, ptr @"var.str::is_alpha", align 8
  store ptr @clo.const.2, ptr @"var.str::is_alnum", align 8
  store ptr @clo.const.3, ptr @"var.str::is_ws", align 8
  store ptr @clo.const.4, ptr @"var.str::is_hex", align 8
  store ptr @clo.const.5, ptr @"var.str::from_byte", align 8
  store ptr @clo.const.6, ptr @"var.str::from_int", align 8
  store ptr @clo.const.7, ptr @"var.str::from_float", align 8
  store ptr @clo.const.8, ptr @"var.str::cmp", align 8
  store ptr @clo.const.9, ptr @"var.str::lt", align 8
  store ptr @clo.const.10, ptr @"var.str::to_int", align 8
  store ptr @clo.const.11, ptr @"var.str::to_hex", align 8
  store ptr @clo.const.12, ptr @"var.str::hex_to_str", align 8
  ret void
}

define i1 @"str::is_digit"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load, 48
  br i1 %cmptmp, label %and.0.then, label %and.0.else

and.0.then:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 57
  br label %and.0.exit

and.0.else:                                       ; preds = %entry
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %and.0.then
  %and.0.phi = phi i1 [ %cmptmp2, %and.0.then ], [ %cmptmp, %and.0.else ]
  ret i1 %and.0.phi
}

define i1 @"str::is_alpha"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load, 97
  br i1 %cmptmp, label %and.1.then, label %and.1.else

and.1.then:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 122
  br label %and.1.exit

and.1.else:                                       ; preds = %entry
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %and.1.then
  %and.1.phi = phi i1 [ %cmptmp2, %and.1.then ], [ %cmptmp, %and.1.else ]
  br i1 %and.1.phi, label %or.2.then, label %or.2.else

or.2.then:                                        ; preds = %and.1.exit
  br label %or.2.exit

or.2.else:                                        ; preds = %and.1.exit
  %var.load3 = load i64, ptr %var.c, align 8
  %cmptmp4 = icmp sge i64 %var.load3, 65
  br i1 %cmptmp4, label %and.3.then, label %and.3.else

or.2.exit:                                        ; preds = %and.3.exit, %or.2.then
  %or.2.phi = phi i1 [ %and.1.phi, %or.2.then ], [ %and.3.phi, %and.3.exit ]
  ret i1 %or.2.phi

and.3.then:                                       ; preds = %or.2.else
  %var.load5 = load i64, ptr %var.c, align 8
  %cmptmp6 = icmp sle i64 %var.load5, 90
  br label %and.3.exit

and.3.else:                                       ; preds = %or.2.else
  br label %and.3.exit

and.3.exit:                                       ; preds = %and.3.else, %and.3.then
  %and.3.phi = phi i1 [ %cmptmp6, %and.3.then ], [ %cmptmp4, %and.3.else ]
  br label %or.2.exit
}

define i1 @"str::is_alnum"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"str::is_digit"(i64 %var.load)
  br i1 %call.res, label %or.4.then, label %or.4.else

or.4.then:                                        ; preds = %entry
  br label %or.4.exit

or.4.else:                                        ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %call.res2 = call i1 @"str::is_alpha"(i64 %var.load1)
  br label %or.4.exit

or.4.exit:                                        ; preds = %or.4.else, %or.4.then
  %or.4.phi = phi i1 [ %call.res, %or.4.then ], [ %call.res2, %or.4.else ]
  ret i1 %or.4.phi
}

define i1 @"str::is_ws"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp eq i64 %var.load, 32
  br i1 %cmptmp, label %or.5.then, label %or.5.else

or.5.then:                                        ; preds = %entry
  br label %or.5.exit

or.5.else:                                        ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp eq i64 %var.load1, 9
  br label %or.5.exit

or.5.exit:                                        ; preds = %or.5.else, %or.5.then
  %or.5.phi = phi i1 [ %cmptmp, %or.5.then ], [ %cmptmp2, %or.5.else ]
  br i1 %or.5.phi, label %or.6.then, label %or.6.else

or.6.then:                                        ; preds = %or.5.exit
  br label %or.6.exit

or.6.else:                                        ; preds = %or.5.exit
  %var.load3 = load i64, ptr %var.c, align 8
  %cmptmp4 = icmp eq i64 %var.load3, 10
  br label %or.6.exit

or.6.exit:                                        ; preds = %or.6.else, %or.6.then
  %or.6.phi = phi i1 [ %or.5.phi, %or.6.then ], [ %cmptmp4, %or.6.else ]
  br i1 %or.6.phi, label %or.7.then, label %or.7.else

or.7.then:                                        ; preds = %or.6.exit
  br label %or.7.exit

or.7.else:                                        ; preds = %or.6.exit
  %var.load5 = load i64, ptr %var.c, align 8
  %cmptmp6 = icmp eq i64 %var.load5, 13
  br label %or.7.exit

or.7.exit:                                        ; preds = %or.7.else, %or.7.then
  %or.7.phi = phi i1 [ %or.6.phi, %or.7.then ], [ %cmptmp6, %or.7.else ]
  ret i1 %or.7.phi
}

define i1 @"str::is_hex"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp sge i64 %var.load, 48
  br i1 %cmptmp, label %and.8.then, label %and.8.else

and.8.then:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp sle i64 %var.load1, 57
  br label %and.8.exit

and.8.else:                                       ; preds = %entry
  br label %and.8.exit

and.8.exit:                                       ; preds = %and.8.else, %and.8.then
  %and.8.phi = phi i1 [ %cmptmp2, %and.8.then ], [ %cmptmp, %and.8.else ]
  br i1 %and.8.phi, label %or.9.then, label %or.9.else

or.9.then:                                        ; preds = %and.8.exit
  br label %or.9.exit

or.9.else:                                        ; preds = %and.8.exit
  %var.load3 = load i64, ptr %var.c, align 8
  %cmptmp4 = icmp sge i64 %var.load3, 97
  br i1 %cmptmp4, label %and.10.then, label %and.10.else

or.9.exit:                                        ; preds = %and.10.exit, %or.9.then
  %or.9.phi = phi i1 [ %and.8.phi, %or.9.then ], [ %and.10.phi, %and.10.exit ]
  br i1 %or.9.phi, label %or.11.then, label %or.11.else

and.10.then:                                      ; preds = %or.9.else
  %var.load5 = load i64, ptr %var.c, align 8
  %cmptmp6 = icmp sle i64 %var.load5, 102
  br label %and.10.exit

and.10.else:                                      ; preds = %or.9.else
  br label %and.10.exit

and.10.exit:                                      ; preds = %and.10.else, %and.10.then
  %and.10.phi = phi i1 [ %cmptmp6, %and.10.then ], [ %cmptmp4, %and.10.else ]
  br label %or.9.exit

or.11.then:                                       ; preds = %or.9.exit
  br label %or.11.exit

or.11.else:                                       ; preds = %or.9.exit
  %var.load7 = load i64, ptr %var.c, align 8
  %cmptmp8 = icmp sge i64 %var.load7, 65
  br i1 %cmptmp8, label %and.12.then, label %and.12.else

or.11.exit:                                       ; preds = %and.12.exit, %or.11.then
  %or.11.phi = phi i1 [ %or.9.phi, %or.11.then ], [ %and.12.phi, %and.12.exit ]
  ret i1 %or.11.phi

and.12.then:                                      ; preds = %or.11.else
  %var.load9 = load i64, ptr %var.c, align 8
  %cmptmp10 = icmp sle i64 %var.load9, 70
  br label %and.12.exit

and.12.else:                                      ; preds = %or.11.else
  br label %and.12.exit

and.12.exit:                                      ; preds = %and.12.else, %and.12.then
  %and.12.phi = phi i1 [ %cmptmp10, %and.12.then ], [ %cmptmp8, %and.12.else ]
  br label %or.11.exit
}

define ptr @"str::from_byte"(i64 %0) #1 {
entry:
  %var.out = alloca ptr, align 8
  %var.b = alloca i64, align 8
  store i64 %0, ptr %var.b, align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 1, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %str_overflow_abort, %entry
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 1, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  %var.load = load i64, ptr %var.b, align 8
  %b.load = load ptr, ptr %var.out, align 8
  %var.load3 = load i64, ptr %var.b, align 8
  %b.b.ge0 = icmp sge i64 %var.load3, 0
  %b.b.le255 = icmp sle i64 %var.load3, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len1
  %b.byte.i8 = trunc i64 %var.load3 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len4 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap5 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data6 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len4, %b.cap5
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len1
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap5, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum7 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf8 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf8, label %str_overflow_abort10, label %b.new.buf.len9

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len9
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
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len9:                                   ; preds = %str_overflow_abort10, %b.grow
  %arena.cur11 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %sum7)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data6, i64 %b.len4, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len4
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort10:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len9

b.freeze.check:                                   ; preds = %b.push_done
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data17, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data17, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data17, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur18 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 %b.freeze.len16)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data17, i64 %b.freeze.len16, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.push_done
  %b.freeze.data19 = phi ptr [ %b.freeze.data17, %b.push_done ], [ %b.freeze.data17, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur20 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len16, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data19, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"str::from_int"(i64 %0) #1 {
entry:
  %var._92 = alloca i64, align 8
  %var._i91 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.15 = alloca i64, align 8
  %loop.idx.15 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.13 = alloca i64, align 8
  %loop.idx.13 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.v = alloca i64, align 8
  store i64 %0, ptr %var.v, align 8
  %var.load = load i64, ptr %var.v, align 8
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
  ret ptr @str.0.struct

choice.next:                                      ; preds = %entry
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len1:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.v, align 8
  %cmptmp = icmp slt i64 %var.load3, 0
  br i1 %cmptmp, label %choice.case5, label %choice.next6

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

choice.exit4:                                     ; preds = %choice.next6, %choice.case5
  %choice.res = phi i64 [ %subtmp, %choice.case5 ], [ %var.load8, %choice.next6 ]
  store i64 %choice.res, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.13, align 8
  br label %loop.header.13

choice.case5:                                     ; preds = %b.buf.len1
  %var.load7 = load i64, ptr %var.v, align 8
  %subtmp = sub i64 0, %var.load7
  br label %choice.exit4

choice.next6:                                     ; preds = %b.buf.len1
  %var.load8 = load i64, ptr %var.v, align 8
  br label %choice.exit4

loop.header.13:                                   ; preds = %loop.latch.13, %choice.exit4
  %counter.load = load i64, ptr %loop.idx.13, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.13, label %loop.exit.nat.13

loop.body.13:                                     ; preds = %loop.header.13
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.13, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load9 = load i64, ptr %"var.n'", align 8
  %cmptmp13 = icmp sgt i64 %var.load9, 0
  br i1 %cmptmp13, label %choice.case11, label %choice.next12

loop.exit.nat.13:                                 ; preds = %loop.header.13
  br label %loop.exit.13

loop.latch.13:                                    ; preds = %choice.exit10
  %step.val = load i64, ptr %loop.step.13, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.13, align 8
  br label %loop.header.13

loop.exit.13:                                     ; preds = %choice.next12, %loop.exit.nat.13
  %var.load42 = load i64, ptr %var.v, align 8
  %cmptmp43 = icmp slt i64 %var.load42, 0
  br i1 %cmptmp43, label %choice.then, label %choice.exit44

choice.exit10:                                    ; preds = %div.ok40
  br label %loop.latch.13

choice.case11:                                    ; preds = %loop.body.13
  %var.load14 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next12:                                    ; preds = %loop.body.13
  br label %loop.exit.13

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case11
  %div.is.min = icmp eq i64 %var.load14, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.case11
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %var.load14, 10
  %addtmp = add i64 48, %modtmp
  %b.load = load ptr, ptr %var.b, align 8
  %var.load15 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort17, label %div.not_zero16

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero16:                                   ; preds = %div.zero_abort17, %div.ok
  %div.is.min18 = icmp eq i64 %var.load15, -9223372036854775808
  %div.is.ovf19 = and i1 %div.is.min18, false
  br i1 %div.is.ovf19, label %div.ovf_abort21, label %div.ok20

div.zero_abort17:                                 ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero16

div.ok20:                                         ; preds = %div.ovf_abort21, %div.not_zero16
  %modtmp22 = srem i64 %var.load15, 10
  %addtmp23 = add i64 48, %modtmp22
  %b.b.ge0 = icmp sge i64 %addtmp23, 0
  %b.b.le255 = icmp sle i64 %addtmp23, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.ovf_abort21:                                  ; preds = %div.not_zero16
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok20

b.byte_ok:                                        ; preds = %b.byte_err, %div.ok20
  %b.byte.i8 = trunc i64 %addtmp23 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len24 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap25 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data26 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len24, %b.cap25
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.ok20
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %b.cur.data32 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len33 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data32, i64 %b.cur.len33
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len33, 1
  %b.nul = getelementptr i8, ptr %b.cur.data32, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep34, align 8
  %var.load35 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort37, label %div.not_zero36

b.new.buf.len29:                                  ; preds = %str_overflow_abort30, %b.grow
  %arena.cur31 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %sum27)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data26, i64 %b.len24, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len24
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort30:                             ; preds = %b.grow
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len29

div.not_zero36:                                   ; preds = %div.zero_abort37, %b.push_done
  %div.is.min38 = icmp eq i64 %var.load35, -9223372036854775808
  %div.is.ovf39 = and i1 %div.is.min38, false
  br i1 %div.is.ovf39, label %div.ovf_abort41, label %div.ok40

div.zero_abort37:                                 ; preds = %b.push_done
  %8 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero36

div.ok40:                                         ; preds = %div.ovf_abort41, %div.not_zero36
  %divtmp = sdiv i64 %var.load35, 10
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit10

div.ovf_abort41:                                  ; preds = %div.not_zero36
  %9 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok40

choice.then:                                      ; preds = %loop.exit.13
  %b.load45 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 0
  %b.rn.cur.len46 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len46, i64 1)
  %sum47 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf48 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf48, label %str_overflow_abort50, label %b.rn.new.len49

choice.exit44:                                    ; preds = %br.done.14, %loop.exit.13
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

b.rn.new.len49:                                   ; preds = %str_overflow_abort50, %choice.then
  %b.cap51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 2
  %b.cap52 = load i64, ptr %b.cap51, align 8
  %b.need.grow = icmp slt i64 %b.cap52, %sum47
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort50:                             ; preds = %choice.then
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len49

b.grow2:                                          ; preds = %b.rn.new.len49
  %b.cap253 = mul i64 %b.cap52, 2
  %b.cap.small54 = icmp slt i64 %b.cap253, 16
  %b.cap.grow = select i1 %b.cap.small54, i64 16, i64 %b.cap253
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum47
  %b.new.cap55 = select i1 %b.cap.need, i64 %sum47, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 0
  %b.cur.len256 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 1
  %b.cur.data257 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap55, i64 1)
  %sum58 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf59 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf59, label %str_overflow_abort61, label %b.new.buf.len260

b.nogrow2:                                        ; preds = %b.rn.new.len49
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len260
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 1
  %b.rn.data63 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data63, i64 %b.rn.cur.len46
  br i1 true, label %br.b1.14, label %br.c2.14

b.new.buf.len260:                                 ; preds = %str_overflow_abort61, %b.grow2
  %arena.cur62 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 %sum58)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data257, i64 %b.cur.len256, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len256
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 2
  store i64 %b.new.cap55, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort61:                             ; preds = %b.grow2
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len260

br.b1.14:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.14

br.c2.14:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.14, label %br.c3.14

br.b2.14:                                         ; preds = %br.c2.14
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.14

br.c3.14:                                         ; preds = %br.c2.14
  br i1 true, label %br.b3.14, label %br.b4.14

br.b3.14:                                         ; preds = %br.c3.14
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.14

br.b4.14:                                         ; preds = %br.c3.14
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.14

br.done.14:                                       ; preds = %br.b4.14, %br.b3.14, %br.b2.14, %br.b1.14
  %br.nul = getelementptr i8, ptr %b.rn.data63, i64 %sum47
  store i8 0, ptr %br.nul, align 1
  %b.len.gep64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load45, i32 0, i32 0
  store i64 %sum47, ptr %b.len.gep64, align 8
  br label %choice.exit44

b.freeze.check:                                   ; preds = %choice.exit44
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
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
  %arena.cur68 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %b.freeze.len66)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data67, i64 %b.freeze.len66, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit44
  %b.freeze.data69 = phi ptr [ %b.freeze.data67, %choice.exit44 ], [ %b.freeze.data67, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
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
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur71 = call ptr @dva_arena_current()
  %builder.new72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 24)
  %b.data.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new72, i32 0, i32 1
  %b.len.gep74 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new72, i32 0, i32 0
  %b.cap.gep75 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new72, i32 0, i32 2
  %b.buf.len76 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum77 = extractvalue { i64, i1 } %b.buf.len76, 0
  %ovf78 = extractvalue { i64, i1 } %b.buf.len76, 1
  br i1 %ovf78, label %str_overflow_abort80, label %b.buf.len79

b.buf.len79:                                      ; preds = %str_overflow_abort80, %b.freeze.done
  %arena.cur81 = call ptr @dva_arena_current()
  %b.buf82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 %sum77)
  %b.nul083 = getelementptr i8, ptr %b.buf82, i64 0
  store i8 0, ptr %b.nul083, align 1
  store i64 0, ptr %b.len.gep74, align 8
  store ptr %b.buf82, ptr %b.data.gep73, align 8
  store i64 32, ptr %b.cap.gep75, align 8
  store ptr %builder.new72, ptr %var.out, align 8
  %var.load84 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load84, i32 0, i32 0
  %str.len.query85 = load i64, ptr %str.len.query, align 8
  %str.len.query86 = and i64 %str.len.query85, 281474976710655
  %str.tag = lshr i64 %str.len.query85, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort80:                             ; preds = %b.freeze.done
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len79

str_gen_check:                                    ; preds = %b.buf.len79
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len79
  store i64 0, ptr %loop.idx.15, align 8
  br label %loop.header.15

str_stale:                                        ; preds = %str_gen_check
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.15:                                   ; preds = %loop.latch.15, %str_ok
  %counter.load88 = load i64, ptr %loop.idx.15, align 8
  %loop.cond89 = icmp slt i64 %counter.load88, %str.len.query86
  br i1 %loop.cond89, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i90 = sub i64 %counter.load88, 0
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i90, ptr %var._i91, align 8
  store i64 %counter.load88, ptr %var._92, align 8
  store i64 %counter.load88, ptr %var.i, align 8
  %var.load93 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load93, i32 0, i32 0
  %s.read.len94 = load i64, ptr %s.read.len, align 8
  %s.read.len95 = and i64 %s.read.len94, 281474976710655
  %str.tag96 = lshr i64 %s.read.len94, 48
  %str.immortal97 = icmp eq i64 %str.tag96, 0
  br i1 %str.immortal97, label %str_ok99, label %str_gen_check98

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %b.push_done169
  %step.val191 = load i64, ptr %loop.step.15, align 8
  %loop.next192 = add i64 %counter.load88, %step.val191
  store i64 %loop.next192, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  %var.load193 = load ptr, ptr %var.out, align 8
  %b.freeze.len194 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load193, i32 0, i32 0
  %b.freeze.len195 = load i64, ptr %b.freeze.len194, align 8
  %b.freeze.data196 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load193, i32 0, i32 1
  %b.freeze.data197 = load ptr, ptr %b.freeze.data196, align 8
  %b.freeze.arena198 = call ptr @dva_arena_current()
  %b.freeze.nc.gep199 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena198, i32 0, i32 1
  %b.freeze.nc200 = load i64, ptr %b.freeze.nc.gep199, align 8
  %b.freeze.has.chunk201 = icmp sgt i64 %b.freeze.nc200, 0
  br i1 %b.freeze.has.chunk201, label %b.freeze.check202, label %b.freeze.done204

str_gen_check98:                                  ; preds = %loop.body.15
  %arena.cur101 = call ptr @dva_arena_current()
  %tag.valid102 = call i1 @dva_arena_validate_tag(ptr %arena.cur101, i64 %str.tag96)
  br i1 %tag.valid102, label %str_ok99, label %str_stale100

str_ok99:                                         ; preds = %str_stale100, %str_gen_check98, %loop.body.15
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load93, i32 0, i32 1
  %s.read.data103 = load ptr, ptr %s.read.data, align 8
  %var.load104 = load ptr, ptr %var.s, align 8
  %str.len.query105 = getelementptr inbounds { i64, ptr }, ptr %var.load104, i32 0, i32 0
  %str.len.query106 = load i64, ptr %str.len.query105, align 8
  %str.len.query107 = and i64 %str.len.query106, 281474976710655
  %str.tag108 = lshr i64 %str.len.query106, 48
  %str.immortal109 = icmp eq i64 %str.tag108, 0
  br i1 %str.immortal109, label %str_ok111, label %str_gen_check110

str_stale100:                                     ; preds = %str_gen_check98
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok99

str_gen_check110:                                 ; preds = %str_ok99
  %arena.cur113 = call ptr @dva_arena_current()
  %tag.valid114 = call i1 @dva_arena_validate_tag(ptr %arena.cur113, i64 %str.tag108)
  br i1 %tag.valid114, label %str_ok111, label %str_stale112

str_ok111:                                        ; preds = %str_stale112, %str_gen_check110, %str_ok99
  %subtmp115 = sub i64 %str.len.query107, 1
  %var.load116 = load i64, ptr %var.i, align 8
  %subtmp117 = sub i64 %subtmp115, %var.load116
  %idx.neg = icmp slt i64 %subtmp117, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale112:                                     ; preds = %str_gen_check110
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok111

idx_big_check:                                    ; preds = %str_ok111
  %idx.big = icmp sge i64 %subtmp117, %s.read.len95
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data103, i64 %subtmp117
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load118 = load ptr, ptr %var.out, align 8
  %var.load119 = load ptr, ptr %var.s, align 8
  %s.read.len120 = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 0
  %s.read.len121 = load i64, ptr %s.read.len120, align 8
  %s.read.len122 = and i64 %s.read.len121, 281474976710655
  %str.tag123 = lshr i64 %s.read.len121, 48
  %str.immortal124 = icmp eq i64 %str.tag123, 0
  br i1 %str.immortal124, label %str_ok126, label %str_gen_check125

idx_oob:                                          ; preds = %idx_big_check, %str_ok111
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check125:                                 ; preds = %idx_ok
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %str.tag123)
  br i1 %tag.valid129, label %str_ok126, label %str_stale127

str_ok126:                                        ; preds = %str_stale127, %str_gen_check125, %idx_ok
  %s.read.data130 = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 1
  %s.read.data131 = load ptr, ptr %s.read.data130, align 8
  %var.load132 = load ptr, ptr %var.s, align 8
  %str.len.query133 = getelementptr inbounds { i64, ptr }, ptr %var.load132, i32 0, i32 0
  %str.len.query134 = load i64, ptr %str.len.query133, align 8
  %str.len.query135 = and i64 %str.len.query134, 281474976710655
  %str.tag136 = lshr i64 %str.len.query134, 48
  %str.immortal137 = icmp eq i64 %str.tag136, 0
  br i1 %str.immortal137, label %str_ok139, label %str_gen_check138

str_stale127:                                     ; preds = %str_gen_check125
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok126

str_gen_check138:                                 ; preds = %str_ok126
  %arena.cur141 = call ptr @dva_arena_current()
  %tag.valid142 = call i1 @dva_arena_validate_tag(ptr %arena.cur141, i64 %str.tag136)
  br i1 %tag.valid142, label %str_ok139, label %str_stale140

str_ok139:                                        ; preds = %str_stale140, %str_gen_check138, %str_ok126
  %subtmp143 = sub i64 %str.len.query135, 1
  %var.load144 = load i64, ptr %var.i, align 8
  %subtmp145 = sub i64 %subtmp143, %var.load144
  %idx.neg146 = icmp slt i64 %subtmp145, 0
  br i1 %idx.neg146, label %idx_oob149, label %idx_big_check147

str_stale140:                                     ; preds = %str_gen_check138
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok139

idx_big_check147:                                 ; preds = %str_ok139
  %idx.big150 = icmp sge i64 %subtmp145, %s.read.len122
  br i1 %idx.big150, label %idx_oob149, label %idx_ok148

idx_ok148:                                        ; preds = %idx_oob149, %idx_big_check147
  %s.byte.gep151 = getelementptr i8, ptr %s.read.data131, i64 %subtmp145
  %s.byte152 = load i8, ptr %s.byte.gep151, align 1
  %s.byte.val153 = zext i8 %s.byte152 to i64
  %b.b.ge0154 = icmp sge i64 %s.byte.val153, 0
  %b.b.le255155 = icmp sle i64 %s.byte.val153, 255
  %b.byte.range156 = and i1 %b.b.ge0154, %b.b.le255155
  br i1 %b.byte.range156, label %b.byte_ok157, label %b.byte_err158

idx_oob149:                                       ; preds = %idx_big_check147, %str_ok139
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok148

b.byte_ok157:                                     ; preds = %b.byte_err158, %idx_ok148
  %b.byte.i8159 = trunc i64 %s.byte.val153 to i8
  %b.len160 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 0
  %b.len161 = load i64, ptr %b.len160, align 8
  %b.cap162 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 2
  %b.cap163 = load i64, ptr %b.cap162, align 8
  %b.data164 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 1
  %b.data165 = load ptr, ptr %b.data164, align 8
  %b.needs.grow166 = icmp eq i64 %b.len161, %b.cap163
  br i1 %b.needs.grow166, label %b.grow167, label %b.nogrow168

b.byte_err158:                                    ; preds = %idx_ok148
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok157

b.grow167:                                        ; preds = %b.byte_ok157
  %b.cap2170 = mul i64 %b.cap163, 2
  %b.cap.small171 = icmp slt i64 %b.cap2170, 16
  %b.new.cap172 = select i1 %b.cap.small171, i64 16, i64 %b.cap2170
  %b.new.buf.len173 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap172, i64 1)
  %sum174 = extractvalue { i64, i1 } %b.new.buf.len173, 0
  %ovf175 = extractvalue { i64, i1 } %b.new.buf.len173, 1
  br i1 %ovf175, label %str_overflow_abort177, label %b.new.buf.len176

b.nogrow168:                                      ; preds = %b.byte_ok157
  br label %b.push_done169

b.push_done169:                                   ; preds = %b.nogrow168, %b.new.buf.len176
  %b.cur.data183 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 1
  %b.cur.data184 = load ptr, ptr %b.cur.data183, align 8
  %b.cur.len185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 0
  %b.cur.len186 = load i64, ptr %b.cur.len185, align 8
  %b.byte.gep187 = getelementptr i8, ptr %b.cur.data184, i64 %b.cur.len186
  store i8 %b.byte.i8159, ptr %b.byte.gep187, align 1
  %b.next.len188 = add i64 %b.cur.len186, 1
  %b.nul189 = getelementptr i8, ptr %b.cur.data184, i64 %b.next.len188
  store i8 0, ptr %b.nul189, align 1
  %b.len.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 0
  store i64 %b.next.len188, ptr %b.len.gep190, align 8
  br label %loop.latch.15

b.new.buf.len176:                                 ; preds = %str_overflow_abort177, %b.grow167
  %arena.cur178 = call ptr @dva_arena_current()
  %b.new.buf179 = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 %sum174)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf179, ptr align 1 %b.data165, i64 %b.len161, i1 false)
  %b.grow.nul180 = getelementptr i8, ptr %b.new.buf179, i64 %b.len161
  store i8 0, ptr %b.grow.nul180, align 1
  %b.new.data.gep181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 1
  store ptr %b.new.buf179, ptr %b.new.data.gep181, align 8
  %b.new.cap.gep182 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 2
  store i64 %b.new.cap172, ptr %b.new.cap.gep182, align 8
  br label %b.push_done169

str_overflow_abort177:                            ; preds = %b.grow167
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len176

b.freeze.check202:                                ; preds = %loop.exit.15
  %b.freeze.last.idx205 = sub i64 %b.freeze.nc200, 1
  %b.freeze.chunks.gep206 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena198, i32 0, i32 3
  %b.freeze.chunk.slot207 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep206, i64 0, i64 %b.freeze.last.idx205
  %b.freeze.last.chunk208 = load ptr, ptr %b.freeze.chunk.slot207, align 8
  %b.freeze.off.gep209 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena198, i32 0, i32 2
  %b.freeze.off210 = load i64, ptr %b.freeze.off.gep209, align 8
  %b.freeze.bump211 = getelementptr i8, ptr %b.freeze.last.chunk208, i64 %b.freeze.off210
  %b.freeze.cap.gep212 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena198, i32 0, i32 0
  %b.freeze.cap213 = load i64, ptr %b.freeze.cap.gep212, align 8
  %b.freeze.chunk.end214 = getelementptr i8, ptr %b.freeze.last.chunk208, i64 %b.freeze.cap213
  %b.freeze.ge.chunk215 = icmp uge ptr %b.freeze.data197, %b.freeze.last.chunk208
  %b.freeze.lt.end216 = icmp ult ptr %b.freeze.data197, %b.freeze.chunk.end214
  %b.freeze.in.chunk217 = and i1 %b.freeze.ge.chunk215, %b.freeze.lt.end216
  %b.freeze.ge.bump218 = icmp uge ptr %b.freeze.data197, %b.freeze.bump211
  %b.freeze.reaped219 = and i1 %b.freeze.in.chunk217, %b.freeze.ge.bump218
  br i1 %b.freeze.reaped219, label %b.freeze.copy203, label %b.freeze.done204

b.freeze.copy203:                                 ; preds = %b.freeze.check202
  %arena.cur220 = call ptr @dva_arena_current()
  %b.freeze.fresh221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 %b.freeze.len195)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh221, ptr align 1 %b.freeze.data197, i64 %b.freeze.len195, i1 false)
  br label %b.freeze.done204

b.freeze.done204:                                 ; preds = %b.freeze.copy203, %b.freeze.check202, %loop.exit.15
  %b.freeze.data222 = phi ptr [ %b.freeze.data197, %loop.exit.15 ], [ %b.freeze.data197, %b.freeze.check202 ], [ %b.freeze.fresh221, %b.freeze.copy203 ]
  %arena.cur223 = call ptr @dva_arena_current()
  %builder.freeze224 = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 16)
  %str.build.len.gep225 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze224, i32 0, i32 0
  store i64 %b.freeze.len195, ptr %str.build.len.gep225, align 8
  %str.build.data.gep226 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze224, i32 0, i32 1
  store ptr %b.freeze.data222, ptr %str.build.data.gep226, align 8
  %b.freeze.rst.len227 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load193, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len227, align 8
  %b.freeze.rst.data228 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load193, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data228, align 8
  %b.freeze.rst.cap229 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load193, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap229, align 8
  ret ptr %builder.freeze224
}

define ptr @"str::from_float"(double %0) #1 {
entry:
  %var.es = alloca ptr, align 8
  %var.mant = alloca ptr, align 8
  %var._883 = alloca i64, align 8
  %var._i882 = alloca i64, align 8
  %loop.step.30 = alloca i64, align 8
  %loop.idx.30 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._747 = alloca i64, align 8
  %var._i746 = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
  %var._696 = alloca i64, align 8
  %var._i695 = alloca i64, align 8
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
  %var._563 = alloca i64, align 8
  %var._i562 = alloca i64, align 8
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
  %var._425 = alloca i64, align 8
  %var._i424 = alloca i64, align 8
  %loop.step.24 = alloca i64, align 8
  %loop.idx.24 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._328 = alloca i64, align 8
  %var._i327 = alloca i64, align 8
  %loop.step.23 = alloca i64, align 8
  %loop.idx.23 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.ms = alloca ptr, align 8
  %var._116 = alloca i64, align 8
  %var._i115 = alloca i64, align 8
  %loop.step.19 = alloca i64, align 8
  %loop.idx.19 = alloca i64, align 8
  %"var.m'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.d = alloca i64, align 8
  %var._53 = alloca i64, align 8
  %var._i52 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %var.ds = alloca ptr, align 8
  %"var.f'" = alloca double, align 8
  %var.ip = alloca i64, align 8
  %var._19 = alloca i64, align 8
  %var._i18 = alloca i64, align 8
  %loop.step.17 = alloca i64, align 8
  %loop.idx.17 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.16 = alloca i64, align 8
  %loop.idx.16 = alloca i64, align 8
  %"var.e'" = alloca i64, align 8
  %"var.x'" = alloca double, align 8
  %var.a = alloca double, align 8
  %var.neg = alloca i1, align 1
  %var.v = alloca double, align 8
  store double %0, ptr %var.v, align 8
  %var.load = load double, ptr %var.v, align 8
  %fcmptmp = fcmp olt double %var.load, 0.000000e+00
  store i1 %fcmptmp, ptr %var.neg, align 1
  %var.load1 = load i1, ptr %var.neg, align 1
  br i1 %var.load1, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load double, ptr %var.v, align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load2
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load double, ptr %var.v, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi double [ %fsubtmp, %choice.then ], [ %var.load3, %choice.else ]
  store double %choice.res, ptr %var.a, align 8
  %var.load4 = load double, ptr %var.a, align 8
  %fcmptmp5 = fcmp oeq double %var.load4, 0.000000e+00
  br i1 %fcmptmp5, label %choice.then6, label %choice.exit7

choice.then6:                                     ; preds = %choice.exit
  ret ptr @str.0.struct

choice.exit7:                                     ; preds = %ret.dead, %choice.exit
  %var.load8 = load double, ptr %var.a, align 8
  store double %var.load8, ptr %"var.x'", align 8
  store i64 0, ptr %"var.e'", align 8
  store i64 0, ptr %loop.idx.16, align 8
  br label %loop.header.16

ret.dead:                                         ; No predecessors!
  br label %choice.exit7

loop.header.16:                                   ; preds = %loop.latch.16, %choice.exit7
  %counter.load = load i64, ptr %loop.idx.16, align 8
  br label %loop.body.16

loop.body.16:                                     ; preds = %loop.header.16
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.16, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load9 = load double, ptr %"var.x'", align 8
  %fcmptmp10 = fcmp oge double %var.load9, 1.000000e+01
  br i1 %fcmptmp10, label %choice.then11, label %choice.else12

loop.exit.nat.16:                                 ; No predecessors!
  br label %loop.exit.16

loop.latch.16:                                    ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.16, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.16, align 8
  br label %loop.header.16

loop.exit.16:                                     ; preds = %choice.else12, %loop.exit.nat.16
  store i64 0, ptr %loop.idx.17, align 8
  br label %loop.header.17

choice.then11:                                    ; preds = %loop.body.16
  %var.load14 = load double, ptr %"var.x'", align 8
  %fdivtmp = fdiv double %var.load14, 1.000000e+01
  store double %fdivtmp, ptr %"var.x'", align 8
  %var.load15 = load i64, ptr %"var.e'", align 8
  %addtmp = add i64 %var.load15, 1
  store i64 %addtmp, ptr %"var.e'", align 8
  br label %choice.exit13

choice.else12:                                    ; preds = %loop.body.16
  br label %loop.exit.16

choice.exit13:                                    ; preds = %choice.then11
  br label %loop.latch.16

loop.header.17:                                   ; preds = %loop.latch.17, %loop.exit.16
  %counter.load16 = load i64, ptr %loop.idx.17, align 8
  br label %loop.body.17

loop.body.17:                                     ; preds = %loop.header.17
  %loop.rel.i17 = sub i64 %counter.load16, 0
  store i64 1, ptr %loop.step.17, align 8
  store i64 %loop.rel.i17, ptr %var._i18, align 8
  store i64 %counter.load16, ptr %var._19, align 8
  %var.load20 = load double, ptr %"var.x'", align 8
  %fcmptmp21 = fcmp olt double %var.load20, 1.000000e+00
  br i1 %fcmptmp21, label %choice.then22, label %choice.else23

loop.exit.nat.17:                                 ; No predecessors!
  br label %loop.exit.17

loop.latch.17:                                    ; preds = %choice.exit24
  %step.val27 = load i64, ptr %loop.step.17, align 8
  %loop.next28 = add i64 %counter.load16, %step.val27
  store i64 %loop.next28, ptr %loop.idx.17, align 8
  br label %loop.header.17

loop.exit.17:                                     ; preds = %choice.else23, %loop.exit.nat.17
  %var.load29 = load double, ptr %"var.x'", align 8
  %cast.fptosi = fptosi double %var.load29 to i64
  store i64 %cast.fptosi, ptr %var.ip, align 8
  %var.load30 = load double, ptr %"var.x'", align 8
  %var.load31 = load i64, ptr %var.ip, align 8
  %cast.sitofp = sitofp i64 %var.load31 to double
  %fsubtmp32 = fsub double %var.load30, %cast.sitofp
  store double %fsubtmp32, ptr %"var.f'", align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len33

choice.then22:                                    ; preds = %loop.body.17
  %var.load25 = load double, ptr %"var.x'", align 8
  %fmultmp = fmul double %var.load25, 1.000000e+01
  store double %fmultmp, ptr %"var.x'", align 8
  %var.load26 = load i64, ptr %"var.e'", align 8
  %subtmp = sub i64 %var.load26, 1
  store i64 %subtmp, ptr %"var.e'", align 8
  br label %choice.exit24

choice.else23:                                    ; preds = %loop.body.17
  br label %loop.exit.17

choice.exit24:                                    ; preds = %choice.then22
  br label %loop.latch.17

b.buf.len33:                                      ; preds = %str_overflow_abort, %loop.exit.17
  %arena.cur34 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.ds, align 8
  %var.load35 = load i64, ptr %var.ip, align 8
  %addtmp36 = add i64 48, %var.load35
  %b.load = load ptr, ptr %var.ds, align 8
  %var.load37 = load i64, ptr %var.ip, align 8
  %addtmp38 = add i64 48, %var.load37
  %b.b.ge0 = icmp sge i64 %addtmp38, 0
  %b.b.le255 = icmp sle i64 %addtmp38, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %loop.exit.17
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len33

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len33
  %b.byte.i8 = trunc i64 %addtmp38 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len39 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap40 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data41 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len39, %b.cap40
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len33
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap40, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum42 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf43 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf43, label %str_overflow_abort45, label %b.new.buf.len44

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len44
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data47 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len48 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data47, i64 %b.cur.len48
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len48, 1
  %b.nul = getelementptr i8, ptr %b.cur.data47, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep49, align 8
  store i64 0, ptr %loop.idx.18, align 8
  br label %loop.header.18

b.new.buf.len44:                                  ; preds = %str_overflow_abort45, %b.grow
  %arena.cur46 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum42)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data41, i64 %b.len39, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len39
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort45:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len44

loop.header.18:                                   ; preds = %loop.latch.18, %b.push_done
  %counter.load50 = load i64, ptr %loop.idx.18, align 8
  %loop.cond = icmp slt i64 %counter.load50, 6
  br i1 %loop.cond, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i51 = sub i64 %counter.load50, 0
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i51, ptr %var._i52, align 8
  store i64 %counter.load50, ptr %var._53, align 8
  store i64 %counter.load50, ptr %var.i, align 8
  %var.load54 = load double, ptr %"var.f'", align 8
  %fmultmp55 = fmul double %var.load54, 1.000000e+01
  store double %fmultmp55, ptr %"var.f'", align 8
  %var.load56 = load double, ptr %"var.f'", align 8
  %cast.fptosi57 = fptosi double %var.load56 to i64
  store i64 %cast.fptosi57, ptr %var.d, align 8
  %var.load58 = load i64, ptr %var.d, align 8
  %addtmp59 = add i64 48, %var.load58
  %b.load60 = load ptr, ptr %var.ds, align 8
  %var.load61 = load i64, ptr %var.d, align 8
  %addtmp62 = add i64 48, %var.load61
  %b.b.ge063 = icmp sge i64 %addtmp62, 0
  %b.b.le25564 = icmp sle i64 %addtmp62, 255
  %b.byte.range65 = and i1 %b.b.ge063, %b.b.le25564
  br i1 %b.byte.range65, label %b.byte_ok66, label %b.byte_err67

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %b.push_done78
  %step.val104 = load i64, ptr %loop.step.18, align 8
  %loop.next105 = add i64 %counter.load50, %step.val104
  store i64 %loop.next105, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  %var.load106 = load ptr, ptr %var.ds, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 0
  %b.freeze.len107 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 1
  %b.freeze.data108 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok66:                                      ; preds = %b.byte_err67, %loop.body.18
  %b.byte.i868 = trunc i64 %addtmp62 to i8
  %b.len69 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 0
  %b.len70 = load i64, ptr %b.len69, align 8
  %b.cap71 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 2
  %b.cap72 = load i64, ptr %b.cap71, align 8
  %b.data73 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 1
  %b.data74 = load ptr, ptr %b.data73, align 8
  %b.needs.grow75 = icmp eq i64 %b.len70, %b.cap72
  br i1 %b.needs.grow75, label %b.grow76, label %b.nogrow77

b.byte_err67:                                     ; preds = %loop.body.18
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok66

b.grow76:                                         ; preds = %b.byte_ok66
  %b.cap279 = mul i64 %b.cap72, 2
  %b.cap.small80 = icmp slt i64 %b.cap279, 16
  %b.new.cap81 = select i1 %b.cap.small80, i64 16, i64 %b.cap279
  %b.new.buf.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap81, i64 1)
  %sum83 = extractvalue { i64, i1 } %b.new.buf.len82, 0
  %ovf84 = extractvalue { i64, i1 } %b.new.buf.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %b.new.buf.len85

b.nogrow77:                                       ; preds = %b.byte_ok66
  br label %b.push_done78

b.push_done78:                                    ; preds = %b.nogrow77, %b.new.buf.len85
  %b.cur.data92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 1
  %b.cur.data93 = load ptr, ptr %b.cur.data92, align 8
  %b.cur.len94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 0
  %b.cur.len95 = load i64, ptr %b.cur.len94, align 8
  %b.byte.gep96 = getelementptr i8, ptr %b.cur.data93, i64 %b.cur.len95
  store i8 %b.byte.i868, ptr %b.byte.gep96, align 1
  %b.next.len97 = add i64 %b.cur.len95, 1
  %b.nul98 = getelementptr i8, ptr %b.cur.data93, i64 %b.next.len97
  store i8 0, ptr %b.nul98, align 1
  %b.len.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 0
  store i64 %b.next.len97, ptr %b.len.gep99, align 8
  %var.load100 = load double, ptr %"var.f'", align 8
  %var.load101 = load i64, ptr %var.d, align 8
  %cast.sitofp102 = sitofp i64 %var.load101 to double
  %fsubtmp103 = fsub double %var.load100, %cast.sitofp102
  store double %fsubtmp103, ptr %"var.f'", align 8
  br label %loop.latch.18

b.new.buf.len85:                                  ; preds = %str_overflow_abort86, %b.grow76
  %arena.cur87 = call ptr @dva_arena_current()
  %b.new.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %sum83)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf88, ptr align 1 %b.data74, i64 %b.len70, i1 false)
  %b.grow.nul89 = getelementptr i8, ptr %b.new.buf88, i64 %b.len70
  store i8 0, ptr %b.grow.nul89, align 1
  %b.new.data.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 1
  store ptr %b.new.buf88, ptr %b.new.data.gep90, align 8
  %b.new.cap.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load60, i32 0, i32 2
  store i64 %b.new.cap81, ptr %b.new.cap.gep91, align 8
  br label %b.push_done78

str_overflow_abort86:                             ; preds = %b.grow76
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len85

b.freeze.check:                                   ; preds = %loop.exit.18
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data108, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data108, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data108, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur109 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur109, i64 %b.freeze.len107)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data108, i64 %b.freeze.len107, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.18
  %b.freeze.data110 = phi ptr [ %b.freeze.data108, %loop.exit.18 ], [ %b.freeze.data108, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur111 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len107, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data110, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load106, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  store i64 0, ptr %"var.m'", align 8
  store i64 0, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.header.19:                                   ; preds = %loop.latch.19, %b.freeze.done
  %counter.load112 = load i64, ptr %loop.idx.19, align 8
  %loop.cond113 = icmp slt i64 %counter.load112, 6
  br i1 %loop.cond113, label %loop.body.19, label %loop.exit.nat.19

loop.body.19:                                     ; preds = %loop.header.19
  %loop.rel.i114 = sub i64 %counter.load112, 0
  store i64 1, ptr %loop.step.19, align 8
  store i64 %loop.rel.i114, ptr %var._i115, align 8
  store i64 %counter.load112, ptr %var._116, align 8
  store i64 %counter.load112, ptr %var.i, align 8
  %var.load117 = load i64, ptr %"var.m'", align 8
  %multmp = mul i64 %var.load117, 10
  %var.load118 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 0
  %s.read.len119 = load i64, ptr %s.read.len, align 8
  %s.read.len120 = and i64 %s.read.len119, 281474976710655
  %str.tag = lshr i64 %s.read.len119, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.19:                                 ; preds = %loop.header.19
  br label %loop.exit.19

loop.latch.19:                                    ; preds = %idx_ok
  %step.val126 = load i64, ptr %loop.step.19, align 8
  %loop.next127 = add i64 %counter.load112, %step.val126
  store i64 %loop.next127, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %loop.exit.nat.19
  %var.load128 = load ptr, ptr %var.s, align 8
  %s.read.len129 = getelementptr inbounds { i64, ptr }, ptr %var.load128, i32 0, i32 0
  %s.read.len130 = load i64, ptr %s.read.len129, align 8
  %s.read.len131 = and i64 %s.read.len130, 281474976710655
  %str.tag132 = lshr i64 %s.read.len130, 48
  %str.immortal133 = icmp eq i64 %str.tag132, 0
  br i1 %str.immortal133, label %str_ok135, label %str_gen_check134

str_gen_check:                                    ; preds = %loop.body.19
  %arena.cur121 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur121, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.19
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %s.read.data122 = load ptr, ptr %s.read.data, align 8
  %var.load123 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load123, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load123, %s.read.len120
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data122, i64 %var.load123
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp124 = sub i64 %s.byte.val, 48
  %addtmp125 = add i64 %multmp, %subtmp124
  store i64 %addtmp125, ptr %"var.m'", align 8
  br label %loop.latch.19

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check134:                                 ; preds = %loop.exit.19
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %str.tag132)
  br i1 %tag.valid138, label %str_ok135, label %str_stale136

str_ok135:                                        ; preds = %str_stale136, %str_gen_check134, %loop.exit.19
  %s.read.data139 = getelementptr inbounds { i64, ptr }, ptr %var.load128, i32 0, i32 1
  %s.read.data140 = load ptr, ptr %s.read.data139, align 8
  br i1 false, label %idx_oob143, label %idx_big_check141

str_stale136:                                     ; preds = %str_gen_check134
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok135

idx_big_check141:                                 ; preds = %str_ok135
  %idx.big144 = icmp sge i64 6, %s.read.len131
  br i1 %idx.big144, label %idx_oob143, label %idx_ok142

idx_ok142:                                        ; preds = %idx_oob143, %idx_big_check141
  %s.byte.gep145 = getelementptr i8, ptr %s.read.data140, i64 6
  %s.byte146 = load i8, ptr %s.byte.gep145, align 1
  %s.byte.val147 = zext i8 %s.byte146 to i64
  %cmptmp = icmp sge i64 %s.byte.val147, 53
  br i1 %cmptmp, label %choice.then148, label %choice.exit149

idx_oob143:                                       ; preds = %idx_big_check141, %str_ok135
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok142

choice.then148:                                   ; preds = %idx_ok142
  %var.load150 = load i64, ptr %"var.m'", align 8
  %addtmp151 = add i64 %var.load150, 1
  store i64 %addtmp151, ptr %"var.m'", align 8
  br label %choice.exit149

choice.exit149:                                   ; preds = %choice.then148, %idx_ok142
  %var.load152 = load i64, ptr %"var.m'", align 8
  %cmptmp153 = icmp eq i64 %var.load152, 1000000
  br i1 %cmptmp153, label %choice.then154, label %choice.exit155

choice.then154:                                   ; preds = %choice.exit149
  store i64 100000, ptr %"var.m'", align 8
  %var.load156 = load i64, ptr %"var.e'", align 8
  %addtmp157 = add i64 %var.load156, 1
  store i64 %addtmp157, ptr %"var.e'", align 8
  br label %choice.exit155

choice.exit155:                                   ; preds = %choice.then154, %choice.exit149
  %var.load158 = load i64, ptr %"var.m'", align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load158)
  store ptr %call.res, ptr %var.ms, align 8
  %arena.cur159 = call ptr @dva_arena_current()
  %builder.new160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 24)
  %b.data.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new160, i32 0, i32 1
  %b.len.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new160, i32 0, i32 0
  %b.cap.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new160, i32 0, i32 2
  %b.buf.len164 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum165 = extractvalue { i64, i1 } %b.buf.len164, 0
  %ovf166 = extractvalue { i64, i1 } %b.buf.len164, 1
  br i1 %ovf166, label %str_overflow_abort168, label %b.buf.len167

b.buf.len167:                                     ; preds = %str_overflow_abort168, %choice.exit155
  %arena.cur169 = call ptr @dva_arena_current()
  %b.buf170 = call ptr @dva_arena_alloc(ptr %arena.cur169, i64 %sum165)
  %b.nul0171 = getelementptr i8, ptr %b.buf170, i64 0
  store i8 0, ptr %b.nul0171, align 1
  store i64 0, ptr %b.len.gep162, align 8
  store ptr %b.buf170, ptr %b.data.gep161, align 8
  store i64 32, ptr %b.cap.gep163, align 8
  store ptr %builder.new160, ptr %var.b, align 8
  %var.load172 = load i1, ptr %var.neg, align 1
  br i1 %var.load172, label %choice.then173, label %choice.exit174

str_overflow_abort168:                            ; preds = %choice.exit155
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len167

choice.then173:                                   ; preds = %b.buf.len167
  %b.load175 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 0
  %b.rn.cur.len176 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len176, i64 1)
  %sum177 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf178 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf178, label %str_overflow_abort180, label %b.rn.new.len179

choice.exit174:                                   ; preds = %br.done.20, %b.buf.len167
  %var.load195 = load i64, ptr %"var.e'", align 8
  %cmptmp196 = icmp slt i64 %var.load195, -4
  br i1 %cmptmp196, label %or.21.then, label %or.21.else

b.rn.new.len179:                                  ; preds = %str_overflow_abort180, %choice.then173
  %b.cap181 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 2
  %b.cap182 = load i64, ptr %b.cap181, align 8
  %b.need.grow = icmp slt i64 %b.cap182, %sum177
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort180:                            ; preds = %choice.then173
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len179

b.grow2:                                          ; preds = %b.rn.new.len179
  %b.cap2183 = mul i64 %b.cap182, 2
  %b.cap.small184 = icmp slt i64 %b.cap2183, 16
  %b.cap.grow = select i1 %b.cap.small184, i64 16, i64 %b.cap2183
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum177
  %b.new.cap185 = select i1 %b.cap.need, i64 %sum177, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 0
  %b.cur.len2186 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 1
  %b.cur.data2187 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap185, i64 1)
  %sum188 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf189 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf189, label %str_overflow_abort191, label %b.new.buf.len2190

b.nogrow2:                                        ; preds = %b.rn.new.len179
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2190
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 1
  %b.rn.data193 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data193, i64 %b.rn.cur.len176
  br i1 true, label %br.b1.20, label %br.c2.20

b.new.buf.len2190:                                ; preds = %str_overflow_abort191, %b.grow2
  %arena.cur192 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 %sum188)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2187, i64 %b.cur.len2186, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2186
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 2
  store i64 %b.new.cap185, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort191:                            ; preds = %b.grow2
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2190

br.b1.20:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.20

br.c2.20:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.20, label %br.c3.20

br.b2.20:                                         ; preds = %br.c2.20
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.20

br.c3.20:                                         ; preds = %br.c2.20
  br i1 true, label %br.b3.20, label %br.b4.20

br.b3.20:                                         ; preds = %br.c3.20
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.20

br.b4.20:                                         ; preds = %br.c3.20
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.20

br.done.20:                                       ; preds = %br.b4.20, %br.b3.20, %br.b2.20, %br.b1.20
  %br.nul = getelementptr i8, ptr %b.rn.data193, i64 %sum177
  store i8 0, ptr %br.nul, align 1
  %b.len.gep194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load175, i32 0, i32 0
  store i64 %sum177, ptr %b.len.gep194, align 8
  br label %choice.exit174

or.21.then:                                       ; preds = %choice.exit174
  br label %or.21.exit

or.21.else:                                       ; preds = %choice.exit174
  %var.load197 = load i64, ptr %"var.e'", align 8
  %cmptmp198 = icmp sge i64 %var.load197, 6
  br label %or.21.exit

or.21.exit:                                       ; preds = %or.21.else, %or.21.then
  %or.21.phi = phi i1 [ %cmptmp196, %or.21.then ], [ %cmptmp198, %or.21.else ]
  br i1 %or.21.phi, label %choice.then199, label %choice.else200

choice.then199:                                   ; preds = %or.21.exit
  %var.load202 = load ptr, ptr %var.ms, align 8
  %s.read.len203 = getelementptr inbounds { i64, ptr }, ptr %var.load202, i32 0, i32 0
  %s.read.len204 = load i64, ptr %s.read.len203, align 8
  %s.read.len205 = and i64 %s.read.len204, 281474976710655
  %str.tag206 = lshr i64 %s.read.len204, 48
  %str.immortal207 = icmp eq i64 %str.tag206, 0
  br i1 %str.immortal207, label %str_ok209, label %str_gen_check208

choice.else200:                                   ; preds = %or.21.exit
  %var.load413 = load i64, ptr %"var.e'", align 8
  %cmptmp414 = icmp sge i64 %var.load413, 0
  br i1 %cmptmp414, label %choice.then415, label %choice.else416

choice.exit201:                                   ; preds = %choice.exit417, %loop.exit.23
  %var.load832 = load ptr, ptr %var.b, align 8
  %b.freeze.len833 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load832, i32 0, i32 0
  %b.freeze.len834 = load i64, ptr %b.freeze.len833, align 8
  %b.freeze.data835 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load832, i32 0, i32 1
  %b.freeze.data836 = load ptr, ptr %b.freeze.data835, align 8
  %b.freeze.arena837 = call ptr @dva_arena_current()
  %b.freeze.nc.gep838 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena837, i32 0, i32 1
  %b.freeze.nc839 = load i64, ptr %b.freeze.nc.gep838, align 8
  %b.freeze.has.chunk840 = icmp sgt i64 %b.freeze.nc839, 0
  br i1 %b.freeze.has.chunk840, label %b.freeze.check841, label %b.freeze.done843

str_gen_check208:                                 ; preds = %choice.then199
  %arena.cur211 = call ptr @dva_arena_current()
  %tag.valid212 = call i1 @dva_arena_validate_tag(ptr %arena.cur211, i64 %str.tag206)
  br i1 %tag.valid212, label %str_ok209, label %str_stale210

str_ok209:                                        ; preds = %str_stale210, %str_gen_check208, %choice.then199
  %s.read.data213 = getelementptr inbounds { i64, ptr }, ptr %var.load202, i32 0, i32 1
  %s.read.data214 = load ptr, ptr %s.read.data213, align 8
  br i1 false, label %idx_oob217, label %idx_big_check215

str_stale210:                                     ; preds = %str_gen_check208
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok209

idx_big_check215:                                 ; preds = %str_ok209
  %idx.big218 = icmp sge i64 0, %s.read.len205
  br i1 %idx.big218, label %idx_oob217, label %idx_ok216

idx_ok216:                                        ; preds = %idx_oob217, %idx_big_check215
  %s.byte.gep219 = getelementptr i8, ptr %s.read.data214, i64 0
  %s.byte220 = load i8, ptr %s.byte.gep219, align 1
  %s.byte.val221 = zext i8 %s.byte220 to i64
  %b.load222 = load ptr, ptr %var.b, align 8
  %var.load223 = load ptr, ptr %var.ms, align 8
  %s.read.len224 = getelementptr inbounds { i64, ptr }, ptr %var.load223, i32 0, i32 0
  %s.read.len225 = load i64, ptr %s.read.len224, align 8
  %s.read.len226 = and i64 %s.read.len225, 281474976710655
  %str.tag227 = lshr i64 %s.read.len225, 48
  %str.immortal228 = icmp eq i64 %str.tag227, 0
  br i1 %str.immortal228, label %str_ok230, label %str_gen_check229

idx_oob217:                                       ; preds = %idx_big_check215, %str_ok209
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok216

str_gen_check229:                                 ; preds = %idx_ok216
  %arena.cur232 = call ptr @dva_arena_current()
  %tag.valid233 = call i1 @dva_arena_validate_tag(ptr %arena.cur232, i64 %str.tag227)
  br i1 %tag.valid233, label %str_ok230, label %str_stale231

str_ok230:                                        ; preds = %str_stale231, %str_gen_check229, %idx_ok216
  %s.read.data234 = getelementptr inbounds { i64, ptr }, ptr %var.load223, i32 0, i32 1
  %s.read.data235 = load ptr, ptr %s.read.data234, align 8
  br i1 false, label %idx_oob238, label %idx_big_check236

str_stale231:                                     ; preds = %str_gen_check229
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok230

idx_big_check236:                                 ; preds = %str_ok230
  %idx.big239 = icmp sge i64 0, %s.read.len226
  br i1 %idx.big239, label %idx_oob238, label %idx_ok237

idx_ok237:                                        ; preds = %idx_oob238, %idx_big_check236
  %s.byte.gep240 = getelementptr i8, ptr %s.read.data235, i64 0
  %s.byte241 = load i8, ptr %s.byte.gep240, align 1
  %s.byte.val242 = zext i8 %s.byte241 to i64
  %b.b.ge0243 = icmp sge i64 %s.byte.val242, 0
  %b.b.le255244 = icmp sle i64 %s.byte.val242, 255
  %b.byte.range245 = and i1 %b.b.ge0243, %b.b.le255244
  br i1 %b.byte.range245, label %b.byte_ok246, label %b.byte_err247

idx_oob238:                                       ; preds = %idx_big_check236, %str_ok230
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok237

b.byte_ok246:                                     ; preds = %b.byte_err247, %idx_ok237
  %b.byte.i8248 = trunc i64 %s.byte.val242 to i8
  %b.len249 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 0
  %b.len250 = load i64, ptr %b.len249, align 8
  %b.cap251 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 2
  %b.cap252 = load i64, ptr %b.cap251, align 8
  %b.data253 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 1
  %b.data254 = load ptr, ptr %b.data253, align 8
  %b.needs.grow255 = icmp eq i64 %b.len250, %b.cap252
  br i1 %b.needs.grow255, label %b.grow256, label %b.nogrow257

b.byte_err247:                                    ; preds = %idx_ok237
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok246

b.grow256:                                        ; preds = %b.byte_ok246
  %b.cap2259 = mul i64 %b.cap252, 2
  %b.cap.small260 = icmp slt i64 %b.cap2259, 16
  %b.new.cap261 = select i1 %b.cap.small260, i64 16, i64 %b.cap2259
  %b.new.buf.len262 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap261, i64 1)
  %sum263 = extractvalue { i64, i1 } %b.new.buf.len262, 0
  %ovf264 = extractvalue { i64, i1 } %b.new.buf.len262, 1
  br i1 %ovf264, label %str_overflow_abort266, label %b.new.buf.len265

b.nogrow257:                                      ; preds = %b.byte_ok246
  br label %b.push_done258

b.push_done258:                                   ; preds = %b.nogrow257, %b.new.buf.len265
  %b.cur.data272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 1
  %b.cur.data273 = load ptr, ptr %b.cur.data272, align 8
  %b.cur.len274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 0
  %b.cur.len275 = load i64, ptr %b.cur.len274, align 8
  %b.byte.gep276 = getelementptr i8, ptr %b.cur.data273, i64 %b.cur.len275
  store i8 %b.byte.i8248, ptr %b.byte.gep276, align 1
  %b.next.len277 = add i64 %b.cur.len275, 1
  %b.nul278 = getelementptr i8, ptr %b.cur.data273, i64 %b.next.len277
  store i8 0, ptr %b.nul278, align 1
  %b.len.gep279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 0
  store i64 %b.next.len277, ptr %b.len.gep279, align 8
  %b.load280 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 0
  %b.rn.cur.len282 = load i64, ptr %b.rn.cur.len281, align 8
  %b.rn.new.len283 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len282, i64 1)
  %sum284 = extractvalue { i64, i1 } %b.rn.new.len283, 0
  %ovf285 = extractvalue { i64, i1 } %b.rn.new.len283, 1
  br i1 %ovf285, label %str_overflow_abort287, label %b.rn.new.len286

b.new.buf.len265:                                 ; preds = %str_overflow_abort266, %b.grow256
  %arena.cur267 = call ptr @dva_arena_current()
  %b.new.buf268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 %sum263)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf268, ptr align 1 %b.data254, i64 %b.len250, i1 false)
  %b.grow.nul269 = getelementptr i8, ptr %b.new.buf268, i64 %b.len250
  store i8 0, ptr %b.grow.nul269, align 1
  %b.new.data.gep270 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 1
  store ptr %b.new.buf268, ptr %b.new.data.gep270, align 8
  %b.new.cap.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load222, i32 0, i32 2
  store i64 %b.new.cap261, ptr %b.new.cap.gep271, align 8
  br label %b.push_done258

str_overflow_abort266:                            ; preds = %b.grow256
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len265

b.rn.new.len286:                                  ; preds = %str_overflow_abort287, %b.push_done258
  %b.cap288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 2
  %b.cap289 = load i64, ptr %b.cap288, align 8
  %b.need.grow290 = icmp slt i64 %b.cap289, %sum284
  br i1 %b.need.grow290, label %b.grow2291, label %b.nogrow2292

str_overflow_abort287:                            ; preds = %b.push_done258
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len286

b.grow2291:                                       ; preds = %b.rn.new.len286
  %b.cap2294 = mul i64 %b.cap289, 2
  %b.cap.small295 = icmp slt i64 %b.cap2294, 16
  %b.cap.grow296 = select i1 %b.cap.small295, i64 16, i64 %b.cap2294
  %b.cap.need297 = icmp slt i64 %b.cap.grow296, %sum284
  %b.new.cap298 = select i1 %b.cap.need297, i64 %sum284, i64 %b.cap.grow296
  %b.cur.len2299 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 0
  %b.cur.len2300 = load i64, ptr %b.cur.len2299, align 8
  %b.cur.data2301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 1
  %b.cur.data2302 = load ptr, ptr %b.cur.data2301, align 8
  %b.new.buf.len2303 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap298, i64 1)
  %sum304 = extractvalue { i64, i1 } %b.new.buf.len2303, 0
  %ovf305 = extractvalue { i64, i1 } %b.new.buf.len2303, 1
  br i1 %ovf305, label %str_overflow_abort307, label %b.new.buf.len2306

b.nogrow2292:                                     ; preds = %b.rn.new.len286
  br label %b.grow_done293

b.grow_done293:                                   ; preds = %b.nogrow2292, %b.new.buf.len2306
  %b.rn.data313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 1
  %b.rn.data314 = load ptr, ptr %b.rn.data313, align 8
  %b.rn.dst315 = getelementptr i8, ptr %b.rn.data314, i64 %b.rn.cur.len282
  br i1 true, label %br.b1.22, label %br.c2.22

b.new.buf.len2306:                                ; preds = %str_overflow_abort307, %b.grow2291
  %arena.cur308 = call ptr @dva_arena_current()
  %b.new.buf2309 = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 %sum304)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2309, ptr align 1 %b.cur.data2302, i64 %b.cur.len2300, i1 false)
  %b.grow2.nul310 = getelementptr i8, ptr %b.new.buf2309, i64 %b.cur.len2300
  store i8 0, ptr %b.grow2.nul310, align 1
  %b.new.data2.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 1
  store ptr %b.new.buf2309, ptr %b.new.data2.gep311, align 8
  %b.new.cap2.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 2
  store i64 %b.new.cap298, ptr %b.new.cap2.gep312, align 8
  br label %b.grow_done293

str_overflow_abort307:                            ; preds = %b.grow2291
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2306

br.b1.22:                                         ; preds = %b.grow_done293
  store i8 46, ptr %b.rn.dst315, align 1
  br label %br.done.22

br.c2.22:                                         ; preds = %b.grow_done293
  br i1 true, label %br.b2.22, label %br.c3.22

br.b2.22:                                         ; preds = %br.c2.22
  store i8 -64, ptr %b.rn.dst315, align 1
  %br.dst1316 = getelementptr i8, ptr %b.rn.dst315, i64 1
  store i8 -82, ptr %br.dst1316, align 1
  br label %br.done.22

br.c3.22:                                         ; preds = %br.c2.22
  br i1 true, label %br.b3.22, label %br.b4.22

br.b3.22:                                         ; preds = %br.c3.22
  store i8 -32, ptr %b.rn.dst315, align 1
  %br.dst1.3317 = getelementptr i8, ptr %b.rn.dst315, i64 1
  store i8 -128, ptr %br.dst1.3317, align 1
  %br.dst2.3318 = getelementptr i8, ptr %b.rn.dst315, i64 2
  store i8 -82, ptr %br.dst2.3318, align 1
  br label %br.done.22

br.b4.22:                                         ; preds = %br.c3.22
  store i8 -16, ptr %b.rn.dst315, align 1
  %br.dst1.4319 = getelementptr i8, ptr %b.rn.dst315, i64 1
  store i8 -128, ptr %br.dst1.4319, align 1
  %br.dst2.4320 = getelementptr i8, ptr %b.rn.dst315, i64 2
  store i8 -128, ptr %br.dst2.4320, align 1
  %br.dst3.4321 = getelementptr i8, ptr %b.rn.dst315, i64 3
  store i8 -82, ptr %br.dst3.4321, align 1
  br label %br.done.22

br.done.22:                                       ; preds = %br.b4.22, %br.b3.22, %br.b2.22, %br.b1.22
  %br.nul322 = getelementptr i8, ptr %b.rn.data314, i64 %sum284
  store i8 0, ptr %br.nul322, align 1
  %b.len.gep323 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load280, i32 0, i32 0
  store i64 %sum284, ptr %b.len.gep323, align 8
  store i64 1, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.header.23:                                   ; preds = %loop.latch.23, %br.done.22
  %counter.load324 = load i64, ptr %loop.idx.23, align 8
  %loop.cond325 = icmp slt i64 %counter.load324, 6
  br i1 %loop.cond325, label %loop.body.23, label %loop.exit.nat.23

loop.body.23:                                     ; preds = %loop.header.23
  %loop.rel.i326 = sub i64 %counter.load324, 1
  store i64 1, ptr %loop.step.23, align 8
  store i64 %loop.rel.i326, ptr %var._i327, align 8
  store i64 %counter.load324, ptr %var._328, align 8
  store i64 %counter.load324, ptr %var.i, align 8
  %var.load329 = load ptr, ptr %var.ms, align 8
  %s.read.len330 = getelementptr inbounds { i64, ptr }, ptr %var.load329, i32 0, i32 0
  %s.read.len331 = load i64, ptr %s.read.len330, align 8
  %s.read.len332 = and i64 %s.read.len331, 281474976710655
  %str.tag333 = lshr i64 %s.read.len331, 48
  %str.immortal334 = icmp eq i64 %str.tag333, 0
  br i1 %str.immortal334, label %str_ok336, label %str_gen_check335

loop.exit.nat.23:                                 ; preds = %loop.header.23
  br label %loop.exit.23

loop.latch.23:                                    ; preds = %b.push_done389
  %step.val411 = load i64, ptr %loop.step.23, align 8
  %loop.next412 = add i64 %counter.load324, %step.val411
  store i64 %loop.next412, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.exit.23:                                     ; preds = %loop.exit.nat.23
  br label %choice.exit201

str_gen_check335:                                 ; preds = %loop.body.23
  %arena.cur338 = call ptr @dva_arena_current()
  %tag.valid339 = call i1 @dva_arena_validate_tag(ptr %arena.cur338, i64 %str.tag333)
  br i1 %tag.valid339, label %str_ok336, label %str_stale337

str_ok336:                                        ; preds = %str_stale337, %str_gen_check335, %loop.body.23
  %s.read.data340 = getelementptr inbounds { i64, ptr }, ptr %var.load329, i32 0, i32 1
  %s.read.data341 = load ptr, ptr %s.read.data340, align 8
  %var.load342 = load i64, ptr %var.i, align 8
  %idx.neg343 = icmp slt i64 %var.load342, 0
  br i1 %idx.neg343, label %idx_oob346, label %idx_big_check344

str_stale337:                                     ; preds = %str_gen_check335
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok336

idx_big_check344:                                 ; preds = %str_ok336
  %idx.big347 = icmp sge i64 %var.load342, %s.read.len332
  br i1 %idx.big347, label %idx_oob346, label %idx_ok345

idx_ok345:                                        ; preds = %idx_oob346, %idx_big_check344
  %s.byte.gep348 = getelementptr i8, ptr %s.read.data341, i64 %var.load342
  %s.byte349 = load i8, ptr %s.byte.gep348, align 1
  %s.byte.val350 = zext i8 %s.byte349 to i64
  %b.load351 = load ptr, ptr %var.b, align 8
  %var.load352 = load ptr, ptr %var.ms, align 8
  %s.read.len353 = getelementptr inbounds { i64, ptr }, ptr %var.load352, i32 0, i32 0
  %s.read.len354 = load i64, ptr %s.read.len353, align 8
  %s.read.len355 = and i64 %s.read.len354, 281474976710655
  %str.tag356 = lshr i64 %s.read.len354, 48
  %str.immortal357 = icmp eq i64 %str.tag356, 0
  br i1 %str.immortal357, label %str_ok359, label %str_gen_check358

idx_oob346:                                       ; preds = %idx_big_check344, %str_ok336
  %22 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok345

str_gen_check358:                                 ; preds = %idx_ok345
  %arena.cur361 = call ptr @dva_arena_current()
  %tag.valid362 = call i1 @dva_arena_validate_tag(ptr %arena.cur361, i64 %str.tag356)
  br i1 %tag.valid362, label %str_ok359, label %str_stale360

str_ok359:                                        ; preds = %str_stale360, %str_gen_check358, %idx_ok345
  %s.read.data363 = getelementptr inbounds { i64, ptr }, ptr %var.load352, i32 0, i32 1
  %s.read.data364 = load ptr, ptr %s.read.data363, align 8
  %var.load365 = load i64, ptr %var.i, align 8
  %idx.neg366 = icmp slt i64 %var.load365, 0
  br i1 %idx.neg366, label %idx_oob369, label %idx_big_check367

str_stale360:                                     ; preds = %str_gen_check358
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok359

idx_big_check367:                                 ; preds = %str_ok359
  %idx.big370 = icmp sge i64 %var.load365, %s.read.len355
  br i1 %idx.big370, label %idx_oob369, label %idx_ok368

idx_ok368:                                        ; preds = %idx_oob369, %idx_big_check367
  %s.byte.gep371 = getelementptr i8, ptr %s.read.data364, i64 %var.load365
  %s.byte372 = load i8, ptr %s.byte.gep371, align 1
  %s.byte.val373 = zext i8 %s.byte372 to i64
  %b.b.ge0374 = icmp sge i64 %s.byte.val373, 0
  %b.b.le255375 = icmp sle i64 %s.byte.val373, 255
  %b.byte.range376 = and i1 %b.b.ge0374, %b.b.le255375
  br i1 %b.byte.range376, label %b.byte_ok377, label %b.byte_err378

idx_oob369:                                       ; preds = %idx_big_check367, %str_ok359
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok368

b.byte_ok377:                                     ; preds = %b.byte_err378, %idx_ok368
  %b.byte.i8379 = trunc i64 %s.byte.val373 to i8
  %b.len380 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 0
  %b.len381 = load i64, ptr %b.len380, align 8
  %b.cap382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 2
  %b.cap383 = load i64, ptr %b.cap382, align 8
  %b.data384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 1
  %b.data385 = load ptr, ptr %b.data384, align 8
  %b.needs.grow386 = icmp eq i64 %b.len381, %b.cap383
  br i1 %b.needs.grow386, label %b.grow387, label %b.nogrow388

b.byte_err378:                                    ; preds = %idx_ok368
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok377

b.grow387:                                        ; preds = %b.byte_ok377
  %b.cap2390 = mul i64 %b.cap383, 2
  %b.cap.small391 = icmp slt i64 %b.cap2390, 16
  %b.new.cap392 = select i1 %b.cap.small391, i64 16, i64 %b.cap2390
  %b.new.buf.len393 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap392, i64 1)
  %sum394 = extractvalue { i64, i1 } %b.new.buf.len393, 0
  %ovf395 = extractvalue { i64, i1 } %b.new.buf.len393, 1
  br i1 %ovf395, label %str_overflow_abort397, label %b.new.buf.len396

b.nogrow388:                                      ; preds = %b.byte_ok377
  br label %b.push_done389

b.push_done389:                                   ; preds = %b.nogrow388, %b.new.buf.len396
  %b.cur.data403 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 1
  %b.cur.data404 = load ptr, ptr %b.cur.data403, align 8
  %b.cur.len405 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 0
  %b.cur.len406 = load i64, ptr %b.cur.len405, align 8
  %b.byte.gep407 = getelementptr i8, ptr %b.cur.data404, i64 %b.cur.len406
  store i8 %b.byte.i8379, ptr %b.byte.gep407, align 1
  %b.next.len408 = add i64 %b.cur.len406, 1
  %b.nul409 = getelementptr i8, ptr %b.cur.data404, i64 %b.next.len408
  store i8 0, ptr %b.nul409, align 1
  %b.len.gep410 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 0
  store i64 %b.next.len408, ptr %b.len.gep410, align 8
  br label %loop.latch.23

b.new.buf.len396:                                 ; preds = %str_overflow_abort397, %b.grow387
  %arena.cur398 = call ptr @dva_arena_current()
  %b.new.buf399 = call ptr @dva_arena_alloc(ptr %arena.cur398, i64 %sum394)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf399, ptr align 1 %b.data385, i64 %b.len381, i1 false)
  %b.grow.nul400 = getelementptr i8, ptr %b.new.buf399, i64 %b.len381
  store i8 0, ptr %b.grow.nul400, align 1
  %b.new.data.gep401 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 1
  store ptr %b.new.buf399, ptr %b.new.data.gep401, align 8
  %b.new.cap.gep402 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load351, i32 0, i32 2
  store i64 %b.new.cap392, ptr %b.new.cap.gep402, align 8
  br label %b.push_done389

str_overflow_abort397:                            ; preds = %b.grow387
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len396

choice.then415:                                   ; preds = %choice.else200
  %var.load418 = load i64, ptr %"var.e'", align 8
  %addtmp419 = add i64 %var.load418, 1
  store i64 %addtmp419, ptr %var.en, align 8
  %var.load420 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.24, align 8
  br label %loop.header.24

choice.else416:                                   ; preds = %choice.else200
  %b.load648 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.1.struct, align 8
  %app.str.len649 = and i64 %app.str.len, 281474976710655
  %str.tag650 = lshr i64 %app.str.len, 48
  %str.immortal651 = icmp eq i64 %str.tag650, 0
  br i1 %str.immortal651, label %str_ok653, label %str_gen_check652

choice.exit417:                                   ; preds = %loop.exit.29, %choice.exit513
  br label %choice.exit201

loop.header.24:                                   ; preds = %loop.latch.24, %choice.then415
  %counter.load421 = load i64, ptr %loop.idx.24, align 8
  %loop.cond422 = icmp slt i64 %counter.load421, %var.load420
  br i1 %loop.cond422, label %loop.body.24, label %loop.exit.nat.24

loop.body.24:                                     ; preds = %loop.header.24
  %loop.rel.i423 = sub i64 %counter.load421, 0
  store i64 1, ptr %loop.step.24, align 8
  store i64 %loop.rel.i423, ptr %var._i424, align 8
  store i64 %counter.load421, ptr %var._425, align 8
  store i64 %counter.load421, ptr %var.i, align 8
  %var.load426 = load ptr, ptr %var.ms, align 8
  %s.read.len427 = getelementptr inbounds { i64, ptr }, ptr %var.load426, i32 0, i32 0
  %s.read.len428 = load i64, ptr %s.read.len427, align 8
  %s.read.len429 = and i64 %s.read.len428, 281474976710655
  %str.tag430 = lshr i64 %s.read.len428, 48
  %str.immortal431 = icmp eq i64 %str.tag430, 0
  br i1 %str.immortal431, label %str_ok433, label %str_gen_check432

loop.exit.nat.24:                                 ; preds = %loop.header.24
  br label %loop.exit.24

loop.latch.24:                                    ; preds = %b.push_done486
  %step.val508 = load i64, ptr %loop.step.24, align 8
  %loop.next509 = add i64 %counter.load421, %step.val508
  store i64 %loop.next509, ptr %loop.idx.24, align 8
  br label %loop.header.24

loop.exit.24:                                     ; preds = %loop.exit.nat.24
  %var.load510 = load i64, ptr %var.en, align 8
  %cmptmp511 = icmp slt i64 %var.load510, 6
  br i1 %cmptmp511, label %choice.then512, label %choice.exit513

str_gen_check432:                                 ; preds = %loop.body.24
  %arena.cur435 = call ptr @dva_arena_current()
  %tag.valid436 = call i1 @dva_arena_validate_tag(ptr %arena.cur435, i64 %str.tag430)
  br i1 %tag.valid436, label %str_ok433, label %str_stale434

str_ok433:                                        ; preds = %str_stale434, %str_gen_check432, %loop.body.24
  %s.read.data437 = getelementptr inbounds { i64, ptr }, ptr %var.load426, i32 0, i32 1
  %s.read.data438 = load ptr, ptr %s.read.data437, align 8
  %var.load439 = load i64, ptr %var.i, align 8
  %idx.neg440 = icmp slt i64 %var.load439, 0
  br i1 %idx.neg440, label %idx_oob443, label %idx_big_check441

str_stale434:                                     ; preds = %str_gen_check432
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok433

idx_big_check441:                                 ; preds = %str_ok433
  %idx.big444 = icmp sge i64 %var.load439, %s.read.len429
  br i1 %idx.big444, label %idx_oob443, label %idx_ok442

idx_ok442:                                        ; preds = %idx_oob443, %idx_big_check441
  %s.byte.gep445 = getelementptr i8, ptr %s.read.data438, i64 %var.load439
  %s.byte446 = load i8, ptr %s.byte.gep445, align 1
  %s.byte.val447 = zext i8 %s.byte446 to i64
  %b.load448 = load ptr, ptr %var.b, align 8
  %var.load449 = load ptr, ptr %var.ms, align 8
  %s.read.len450 = getelementptr inbounds { i64, ptr }, ptr %var.load449, i32 0, i32 0
  %s.read.len451 = load i64, ptr %s.read.len450, align 8
  %s.read.len452 = and i64 %s.read.len451, 281474976710655
  %str.tag453 = lshr i64 %s.read.len451, 48
  %str.immortal454 = icmp eq i64 %str.tag453, 0
  br i1 %str.immortal454, label %str_ok456, label %str_gen_check455

idx_oob443:                                       ; preds = %idx_big_check441, %str_ok433
  %28 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok442

str_gen_check455:                                 ; preds = %idx_ok442
  %arena.cur458 = call ptr @dva_arena_current()
  %tag.valid459 = call i1 @dva_arena_validate_tag(ptr %arena.cur458, i64 %str.tag453)
  br i1 %tag.valid459, label %str_ok456, label %str_stale457

str_ok456:                                        ; preds = %str_stale457, %str_gen_check455, %idx_ok442
  %s.read.data460 = getelementptr inbounds { i64, ptr }, ptr %var.load449, i32 0, i32 1
  %s.read.data461 = load ptr, ptr %s.read.data460, align 8
  %var.load462 = load i64, ptr %var.i, align 8
  %idx.neg463 = icmp slt i64 %var.load462, 0
  br i1 %idx.neg463, label %idx_oob466, label %idx_big_check464

str_stale457:                                     ; preds = %str_gen_check455
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok456

idx_big_check464:                                 ; preds = %str_ok456
  %idx.big467 = icmp sge i64 %var.load462, %s.read.len452
  br i1 %idx.big467, label %idx_oob466, label %idx_ok465

idx_ok465:                                        ; preds = %idx_oob466, %idx_big_check464
  %s.byte.gep468 = getelementptr i8, ptr %s.read.data461, i64 %var.load462
  %s.byte469 = load i8, ptr %s.byte.gep468, align 1
  %s.byte.val470 = zext i8 %s.byte469 to i64
  %b.b.ge0471 = icmp sge i64 %s.byte.val470, 0
  %b.b.le255472 = icmp sle i64 %s.byte.val470, 255
  %b.byte.range473 = and i1 %b.b.ge0471, %b.b.le255472
  br i1 %b.byte.range473, label %b.byte_ok474, label %b.byte_err475

idx_oob466:                                       ; preds = %idx_big_check464, %str_ok456
  %30 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok465

b.byte_ok474:                                     ; preds = %b.byte_err475, %idx_ok465
  %b.byte.i8476 = trunc i64 %s.byte.val470 to i8
  %b.len477 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load448, i32 0, i32 0
  %b.len478 = load i64, ptr %b.len477, align 8
  %b.cap479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load448, i32 0, i32 2
  %b.cap480 = load i64, ptr %b.cap479, align 8
  %b.data481 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load448, i32 0, i32 1
  %b.data482 = load ptr, ptr %b.data481, align 8
  %b.needs.grow483 = icmp eq i64 %b.len478, %b.cap480
  br i1 %b.needs.grow483, label %b.grow484, label %b.nogrow485

b.byte_err475:                                    ; preds = %idx_ok465
  %31 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok474

b.grow484:                                        ; preds = %b.byte_ok474
  %b.cap2487 = mul i64 %b.cap480, 2
  %b.cap.small488 = icmp slt i64 %b.cap2487, 16
  %b.new.cap489 = select i1 %b.cap.small488, i64 16, i64 %b.cap2487
  %b.new.buf.len490 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap489, i64 1)
  %sum491 = extractvalue { i64, i1 } %b.new.buf.len490, 0
  %ovf492 = extractvalue { i64, i1 } %b.new.buf.len490, 1
  br i1 %ovf492, label %str_overflow_abort494, label %b.new.buf.len493

b.nogrow485:                                      ; preds = %b.byte_ok474
  br label %b.push_done486

b.push_done486:                                   ; preds = %b.nogrow485, %b.new.buf.len493
  %b.cur.data500 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load448, i32 0, i32 1
  %b.cur.data501 = load ptr, ptr %b.cur.data500, align 8
  %b.cur.len502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load448, i32 0, i32 0
  %b.cur.len503 = load i64, ptr %b.cur.len502, align 8
  %b.byte.gep504 = getelementptr i8, ptr %b.cur.data501, i64 %b.cur.len503
  store i8 %b.byte.i8476, ptr %b.byte.gep504, align 1
  %b.next.len505 = add i64 %b.cur.len503, 1
  %b.nul506 = getelementptr i8, ptr %b.cur.data501, i64 %b.next.len505
  store i8 0, ptr %b.nul506, align 1
  %b.len.gep507 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load448, i32 0, i32 0
  store i64 %b.next.len505, ptr %b.len.gep507, align 8
  br label %loop.latch.24

b.new.buf.len493:                                 ; preds = %str_overflow_abort494, %b.grow484
  %arena.cur495 = call ptr @dva_arena_current()
  %b.new.buf496 = call ptr @dva_arena_alloc(ptr %arena.cur495, i64 %sum491)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf496, ptr align 1 %b.data482, i64 %b.len478, i1 false)
  %b.grow.nul497 = getelementptr i8, ptr %b.new.buf496, i64 %b.len478
  store i8 0, ptr %b.grow.nul497, align 1
  %b.new.data.gep498 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load448, i32 0, i32 1
  store ptr %b.new.buf496, ptr %b.new.data.gep498, align 8
  %b.new.cap.gep499 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load448, i32 0, i32 2
  store i64 %b.new.cap489, ptr %b.new.cap.gep499, align 8
  br label %b.push_done486

str_overflow_abort494:                            ; preds = %b.grow484
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len493

choice.then512:                                   ; preds = %loop.exit.24
  %b.load514 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load514, i32 0, i32 0
  %b.rn.cur.len516 = load i64, ptr %b.rn.cur.len515, align 8
  %b.rn.new.len517 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len516, i64 1)
  %sum518 = extractvalue { i64, i1 } %b.rn.new.len517, 0
  %ovf519 = extractvalue { i64, i1 } %b.rn.new.len517, 1
  br i1 %ovf519, label %str_overflow_abort521, label %b.rn.new.len520

choice.exit513:                                   ; preds = %loop.exit.26, %loop.exit.24
  br label %choice.exit417

b.rn.new.len520:                                  ; preds = %str_overflow_abort521, %choice.then512
  %b.cap522 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load514, i32 0, i32 2
  %b.cap523 = load i64, ptr %b.cap522, align 8
  %b.need.grow524 = icmp slt i64 %b.cap523, %sum518
  br i1 %b.need.grow524, label %b.grow2525, label %b.nogrow2526

str_overflow_abort521:                            ; preds = %choice.then512
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len520

b.grow2525:                                       ; preds = %b.rn.new.len520
  %b.cap2528 = mul i64 %b.cap523, 2
  %b.cap.small529 = icmp slt i64 %b.cap2528, 16
  %b.cap.grow530 = select i1 %b.cap.small529, i64 16, i64 %b.cap2528
  %b.cap.need531 = icmp slt i64 %b.cap.grow530, %sum518
  %b.new.cap532 = select i1 %b.cap.need531, i64 %sum518, i64 %b.cap.grow530
  %b.cur.len2533 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load514, i32 0, i32 0
  %b.cur.len2534 = load i64, ptr %b.cur.len2533, align 8
  %b.cur.data2535 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load514, i32 0, i32 1
  %b.cur.data2536 = load ptr, ptr %b.cur.data2535, align 8
  %b.new.buf.len2537 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap532, i64 1)
  %sum538 = extractvalue { i64, i1 } %b.new.buf.len2537, 0
  %ovf539 = extractvalue { i64, i1 } %b.new.buf.len2537, 1
  br i1 %ovf539, label %str_overflow_abort541, label %b.new.buf.len2540

b.nogrow2526:                                     ; preds = %b.rn.new.len520
  br label %b.grow_done527

b.grow_done527:                                   ; preds = %b.nogrow2526, %b.new.buf.len2540
  %b.rn.data547 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load514, i32 0, i32 1
  %b.rn.data548 = load ptr, ptr %b.rn.data547, align 8
  %b.rn.dst549 = getelementptr i8, ptr %b.rn.data548, i64 %b.rn.cur.len516
  br i1 true, label %br.b1.25, label %br.c2.25

b.new.buf.len2540:                                ; preds = %str_overflow_abort541, %b.grow2525
  %arena.cur542 = call ptr @dva_arena_current()
  %b.new.buf2543 = call ptr @dva_arena_alloc(ptr %arena.cur542, i64 %sum538)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2543, ptr align 1 %b.cur.data2536, i64 %b.cur.len2534, i1 false)
  %b.grow2.nul544 = getelementptr i8, ptr %b.new.buf2543, i64 %b.cur.len2534
  store i8 0, ptr %b.grow2.nul544, align 1
  %b.new.data2.gep545 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load514, i32 0, i32 1
  store ptr %b.new.buf2543, ptr %b.new.data2.gep545, align 8
  %b.new.cap2.gep546 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load514, i32 0, i32 2
  store i64 %b.new.cap532, ptr %b.new.cap2.gep546, align 8
  br label %b.grow_done527

str_overflow_abort541:                            ; preds = %b.grow2525
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2540

br.b1.25:                                         ; preds = %b.grow_done527
  store i8 46, ptr %b.rn.dst549, align 1
  br label %br.done.25

br.c2.25:                                         ; preds = %b.grow_done527
  br i1 true, label %br.b2.25, label %br.c3.25

br.b2.25:                                         ; preds = %br.c2.25
  store i8 -64, ptr %b.rn.dst549, align 1
  %br.dst1550 = getelementptr i8, ptr %b.rn.dst549, i64 1
  store i8 -82, ptr %br.dst1550, align 1
  br label %br.done.25

br.c3.25:                                         ; preds = %br.c2.25
  br i1 true, label %br.b3.25, label %br.b4.25

br.b3.25:                                         ; preds = %br.c3.25
  store i8 -32, ptr %b.rn.dst549, align 1
  %br.dst1.3551 = getelementptr i8, ptr %b.rn.dst549, i64 1
  store i8 -128, ptr %br.dst1.3551, align 1
  %br.dst2.3552 = getelementptr i8, ptr %b.rn.dst549, i64 2
  store i8 -82, ptr %br.dst2.3552, align 1
  br label %br.done.25

br.b4.25:                                         ; preds = %br.c3.25
  store i8 -16, ptr %b.rn.dst549, align 1
  %br.dst1.4553 = getelementptr i8, ptr %b.rn.dst549, i64 1
  store i8 -128, ptr %br.dst1.4553, align 1
  %br.dst2.4554 = getelementptr i8, ptr %b.rn.dst549, i64 2
  store i8 -128, ptr %br.dst2.4554, align 1
  %br.dst3.4555 = getelementptr i8, ptr %b.rn.dst549, i64 3
  store i8 -82, ptr %br.dst3.4555, align 1
  br label %br.done.25

br.done.25:                                       ; preds = %br.b4.25, %br.b3.25, %br.b2.25, %br.b1.25
  %br.nul556 = getelementptr i8, ptr %b.rn.data548, i64 %sum518
  store i8 0, ptr %br.nul556, align 1
  %b.len.gep557 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load514, i32 0, i32 0
  store i64 %sum518, ptr %b.len.gep557, align 8
  %var.load558 = load i64, ptr %var.en, align 8
  store i64 %var.load558, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.header.26:                                   ; preds = %loop.latch.26, %br.done.25
  %counter.load559 = load i64, ptr %loop.idx.26, align 8
  %loop.cond560 = icmp slt i64 %counter.load559, 6
  br i1 %loop.cond560, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i561 = sub i64 %counter.load559, %var.load558
  store i64 1, ptr %loop.step.26, align 8
  store i64 %loop.rel.i561, ptr %var._i562, align 8
  store i64 %counter.load559, ptr %var._563, align 8
  store i64 %counter.load559, ptr %var.i, align 8
  %var.load564 = load ptr, ptr %var.ms, align 8
  %s.read.len565 = getelementptr inbounds { i64, ptr }, ptr %var.load564, i32 0, i32 0
  %s.read.len566 = load i64, ptr %s.read.len565, align 8
  %s.read.len567 = and i64 %s.read.len566, 281474976710655
  %str.tag568 = lshr i64 %s.read.len566, 48
  %str.immortal569 = icmp eq i64 %str.tag568, 0
  br i1 %str.immortal569, label %str_ok571, label %str_gen_check570

loop.exit.nat.26:                                 ; preds = %loop.header.26
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %b.push_done624
  %step.val646 = load i64, ptr %loop.step.26, align 8
  %loop.next647 = add i64 %counter.load559, %step.val646
  store i64 %loop.next647, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %loop.exit.nat.26
  br label %choice.exit513

str_gen_check570:                                 ; preds = %loop.body.26
  %arena.cur573 = call ptr @dva_arena_current()
  %tag.valid574 = call i1 @dva_arena_validate_tag(ptr %arena.cur573, i64 %str.tag568)
  br i1 %tag.valid574, label %str_ok571, label %str_stale572

str_ok571:                                        ; preds = %str_stale572, %str_gen_check570, %loop.body.26
  %s.read.data575 = getelementptr inbounds { i64, ptr }, ptr %var.load564, i32 0, i32 1
  %s.read.data576 = load ptr, ptr %s.read.data575, align 8
  %var.load577 = load i64, ptr %var.i, align 8
  %idx.neg578 = icmp slt i64 %var.load577, 0
  br i1 %idx.neg578, label %idx_oob581, label %idx_big_check579

str_stale572:                                     ; preds = %str_gen_check570
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok571

idx_big_check579:                                 ; preds = %str_ok571
  %idx.big582 = icmp sge i64 %var.load577, %s.read.len567
  br i1 %idx.big582, label %idx_oob581, label %idx_ok580

idx_ok580:                                        ; preds = %idx_oob581, %idx_big_check579
  %s.byte.gep583 = getelementptr i8, ptr %s.read.data576, i64 %var.load577
  %s.byte584 = load i8, ptr %s.byte.gep583, align 1
  %s.byte.val585 = zext i8 %s.byte584 to i64
  %b.load586 = load ptr, ptr %var.b, align 8
  %var.load587 = load ptr, ptr %var.ms, align 8
  %s.read.len588 = getelementptr inbounds { i64, ptr }, ptr %var.load587, i32 0, i32 0
  %s.read.len589 = load i64, ptr %s.read.len588, align 8
  %s.read.len590 = and i64 %s.read.len589, 281474976710655
  %str.tag591 = lshr i64 %s.read.len589, 48
  %str.immortal592 = icmp eq i64 %str.tag591, 0
  br i1 %str.immortal592, label %str_ok594, label %str_gen_check593

idx_oob581:                                       ; preds = %idx_big_check579, %str_ok571
  %36 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok580

str_gen_check593:                                 ; preds = %idx_ok580
  %arena.cur596 = call ptr @dva_arena_current()
  %tag.valid597 = call i1 @dva_arena_validate_tag(ptr %arena.cur596, i64 %str.tag591)
  br i1 %tag.valid597, label %str_ok594, label %str_stale595

str_ok594:                                        ; preds = %str_stale595, %str_gen_check593, %idx_ok580
  %s.read.data598 = getelementptr inbounds { i64, ptr }, ptr %var.load587, i32 0, i32 1
  %s.read.data599 = load ptr, ptr %s.read.data598, align 8
  %var.load600 = load i64, ptr %var.i, align 8
  %idx.neg601 = icmp slt i64 %var.load600, 0
  br i1 %idx.neg601, label %idx_oob604, label %idx_big_check602

str_stale595:                                     ; preds = %str_gen_check593
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok594

idx_big_check602:                                 ; preds = %str_ok594
  %idx.big605 = icmp sge i64 %var.load600, %s.read.len590
  br i1 %idx.big605, label %idx_oob604, label %idx_ok603

idx_ok603:                                        ; preds = %idx_oob604, %idx_big_check602
  %s.byte.gep606 = getelementptr i8, ptr %s.read.data599, i64 %var.load600
  %s.byte607 = load i8, ptr %s.byte.gep606, align 1
  %s.byte.val608 = zext i8 %s.byte607 to i64
  %b.b.ge0609 = icmp sge i64 %s.byte.val608, 0
  %b.b.le255610 = icmp sle i64 %s.byte.val608, 255
  %b.byte.range611 = and i1 %b.b.ge0609, %b.b.le255610
  br i1 %b.byte.range611, label %b.byte_ok612, label %b.byte_err613

idx_oob604:                                       ; preds = %idx_big_check602, %str_ok594
  %38 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok603

b.byte_ok612:                                     ; preds = %b.byte_err613, %idx_ok603
  %b.byte.i8614 = trunc i64 %s.byte.val608 to i8
  %b.len615 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load586, i32 0, i32 0
  %b.len616 = load i64, ptr %b.len615, align 8
  %b.cap617 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load586, i32 0, i32 2
  %b.cap618 = load i64, ptr %b.cap617, align 8
  %b.data619 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load586, i32 0, i32 1
  %b.data620 = load ptr, ptr %b.data619, align 8
  %b.needs.grow621 = icmp eq i64 %b.len616, %b.cap618
  br i1 %b.needs.grow621, label %b.grow622, label %b.nogrow623

b.byte_err613:                                    ; preds = %idx_ok603
  %39 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok612

b.grow622:                                        ; preds = %b.byte_ok612
  %b.cap2625 = mul i64 %b.cap618, 2
  %b.cap.small626 = icmp slt i64 %b.cap2625, 16
  %b.new.cap627 = select i1 %b.cap.small626, i64 16, i64 %b.cap2625
  %b.new.buf.len628 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap627, i64 1)
  %sum629 = extractvalue { i64, i1 } %b.new.buf.len628, 0
  %ovf630 = extractvalue { i64, i1 } %b.new.buf.len628, 1
  br i1 %ovf630, label %str_overflow_abort632, label %b.new.buf.len631

b.nogrow623:                                      ; preds = %b.byte_ok612
  br label %b.push_done624

b.push_done624:                                   ; preds = %b.nogrow623, %b.new.buf.len631
  %b.cur.data638 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load586, i32 0, i32 1
  %b.cur.data639 = load ptr, ptr %b.cur.data638, align 8
  %b.cur.len640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load586, i32 0, i32 0
  %b.cur.len641 = load i64, ptr %b.cur.len640, align 8
  %b.byte.gep642 = getelementptr i8, ptr %b.cur.data639, i64 %b.cur.len641
  store i8 %b.byte.i8614, ptr %b.byte.gep642, align 1
  %b.next.len643 = add i64 %b.cur.len641, 1
  %b.nul644 = getelementptr i8, ptr %b.cur.data639, i64 %b.next.len643
  store i8 0, ptr %b.nul644, align 1
  %b.len.gep645 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load586, i32 0, i32 0
  store i64 %b.next.len643, ptr %b.len.gep645, align 8
  br label %loop.latch.26

b.new.buf.len631:                                 ; preds = %str_overflow_abort632, %b.grow622
  %arena.cur633 = call ptr @dva_arena_current()
  %b.new.buf634 = call ptr @dva_arena_alloc(ptr %arena.cur633, i64 %sum629)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf634, ptr align 1 %b.data620, i64 %b.len616, i1 false)
  %b.grow.nul635 = getelementptr i8, ptr %b.new.buf634, i64 %b.len616
  store i8 0, ptr %b.grow.nul635, align 1
  %b.new.data.gep636 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load586, i32 0, i32 1
  store ptr %b.new.buf634, ptr %b.new.data.gep636, align 8
  %b.new.cap.gep637 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load586, i32 0, i32 2
  store i64 %b.new.cap627, ptr %b.new.cap.gep637, align 8
  br label %b.push_done624

str_overflow_abort632:                            ; preds = %b.grow622
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len631

str_gen_check652:                                 ; preds = %choice.else416
  %arena.cur655 = call ptr @dva_arena_current()
  %tag.valid656 = call i1 @dva_arena_validate_tag(ptr %arena.cur655, i64 %str.tag650)
  br i1 %tag.valid656, label %str_ok653, label %str_stale654

str_ok653:                                        ; preds = %str_stale654, %str_gen_check652, %choice.else416
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load648, i32 0, i32 0
  %b.app.cur.len657 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len657, i64 %app.str.len649)
  %sum658 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf659 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf659, label %str_overflow_abort661, label %b.app.new.len660

str_stale654:                                     ; preds = %str_gen_check652
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok653

b.app.new.len660:                                 ; preds = %str_overflow_abort661, %str_ok653
  %b.cap662 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load648, i32 0, i32 2
  %b.cap663 = load i64, ptr %b.cap662, align 8
  %b.need.grow664 = icmp slt i64 %b.cap663, %sum658
  br i1 %b.need.grow664, label %b.grow2665, label %b.nogrow2666

str_overflow_abort661:                            ; preds = %str_ok653
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len660

b.grow2665:                                       ; preds = %b.app.new.len660
  %b.cap2668 = mul i64 %b.cap663, 2
  %b.cap.small669 = icmp slt i64 %b.cap2668, 16
  %b.cap.grow670 = select i1 %b.cap.small669, i64 16, i64 %b.cap2668
  %b.cap.need671 = icmp slt i64 %b.cap.grow670, %sum658
  %b.new.cap672 = select i1 %b.cap.need671, i64 %sum658, i64 %b.cap.grow670
  %b.cur.len2673 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load648, i32 0, i32 0
  %b.cur.len2674 = load i64, ptr %b.cur.len2673, align 8
  %b.cur.data2675 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load648, i32 0, i32 1
  %b.cur.data2676 = load ptr, ptr %b.cur.data2675, align 8
  %b.new.buf.len2677 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap672, i64 1)
  %sum678 = extractvalue { i64, i1 } %b.new.buf.len2677, 0
  %ovf679 = extractvalue { i64, i1 } %b.new.buf.len2677, 1
  br i1 %ovf679, label %str_overflow_abort681, label %b.new.buf.len2680

b.nogrow2666:                                     ; preds = %b.app.new.len660
  br label %b.grow_done667

b.grow_done667:                                   ; preds = %b.nogrow2666, %b.new.buf.len2680
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load648, i32 0, i32 1
  %b.app.data687 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data687, i64 %b.app.cur.len657
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len649, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data687, i64 %sum658
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep688 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load648, i32 0, i32 0
  store i64 %sum658, ptr %b.len.gep688, align 8
  %var.load689 = load i64, ptr %"var.e'", align 8
  %subtmp690 = sub i64 0, %var.load689
  %subtmp691 = sub i64 %subtmp690, 1
  store i64 0, ptr %loop.idx.27, align 8
  br label %loop.header.27

b.new.buf.len2680:                                ; preds = %str_overflow_abort681, %b.grow2665
  %arena.cur682 = call ptr @dva_arena_current()
  %b.new.buf2683 = call ptr @dva_arena_alloc(ptr %arena.cur682, i64 %sum678)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2683, ptr align 1 %b.cur.data2676, i64 %b.cur.len2674, i1 false)
  %b.grow2.nul684 = getelementptr i8, ptr %b.new.buf2683, i64 %b.cur.len2674
  store i8 0, ptr %b.grow2.nul684, align 1
  %b.new.data2.gep685 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load648, i32 0, i32 1
  store ptr %b.new.buf2683, ptr %b.new.data2.gep685, align 8
  %b.new.cap2.gep686 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load648, i32 0, i32 2
  store i64 %b.new.cap672, ptr %b.new.cap2.gep686, align 8
  br label %b.grow_done667

str_overflow_abort681:                            ; preds = %b.grow2665
  %43 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2680

loop.header.27:                                   ; preds = %loop.latch.27, %b.grow_done667
  %counter.load692 = load i64, ptr %loop.idx.27, align 8
  %loop.cond693 = icmp slt i64 %counter.load692, %subtmp691
  br i1 %loop.cond693, label %loop.body.27, label %loop.exit.nat.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i694 = sub i64 %counter.load692, 0
  store i64 1, ptr %loop.step.27, align 8
  store i64 %loop.rel.i694, ptr %var._i695, align 8
  store i64 %counter.load692, ptr %var._696, align 8
  store i64 %counter.load692, ptr %var.i, align 8
  %b.load697 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len698 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 0
  %b.rn.cur.len699 = load i64, ptr %b.rn.cur.len698, align 8
  %b.rn.new.len700 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len699, i64 1)
  %sum701 = extractvalue { i64, i1 } %b.rn.new.len700, 0
  %ovf702 = extractvalue { i64, i1 } %b.rn.new.len700, 1
  br i1 %ovf702, label %str_overflow_abort704, label %b.rn.new.len703

loop.exit.nat.27:                                 ; preds = %loop.header.27
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %br.done.28
  %step.val741 = load i64, ptr %loop.step.27, align 8
  %loop.next742 = add i64 %counter.load692, %step.val741
  store i64 %loop.next742, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %loop.exit.nat.27
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

b.rn.new.len703:                                  ; preds = %str_overflow_abort704, %loop.body.27
  %b.cap705 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 2
  %b.cap706 = load i64, ptr %b.cap705, align 8
  %b.need.grow707 = icmp slt i64 %b.cap706, %sum701
  br i1 %b.need.grow707, label %b.grow2708, label %b.nogrow2709

str_overflow_abort704:                            ; preds = %loop.body.27
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len703

b.grow2708:                                       ; preds = %b.rn.new.len703
  %b.cap2711 = mul i64 %b.cap706, 2
  %b.cap.small712 = icmp slt i64 %b.cap2711, 16
  %b.cap.grow713 = select i1 %b.cap.small712, i64 16, i64 %b.cap2711
  %b.cap.need714 = icmp slt i64 %b.cap.grow713, %sum701
  %b.new.cap715 = select i1 %b.cap.need714, i64 %sum701, i64 %b.cap.grow713
  %b.cur.len2716 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 0
  %b.cur.len2717 = load i64, ptr %b.cur.len2716, align 8
  %b.cur.data2718 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 1
  %b.cur.data2719 = load ptr, ptr %b.cur.data2718, align 8
  %b.new.buf.len2720 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap715, i64 1)
  %sum721 = extractvalue { i64, i1 } %b.new.buf.len2720, 0
  %ovf722 = extractvalue { i64, i1 } %b.new.buf.len2720, 1
  br i1 %ovf722, label %str_overflow_abort724, label %b.new.buf.len2723

b.nogrow2709:                                     ; preds = %b.rn.new.len703
  br label %b.grow_done710

b.grow_done710:                                   ; preds = %b.nogrow2709, %b.new.buf.len2723
  %b.rn.data730 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 1
  %b.rn.data731 = load ptr, ptr %b.rn.data730, align 8
  %b.rn.dst732 = getelementptr i8, ptr %b.rn.data731, i64 %b.rn.cur.len699
  br i1 true, label %br.b1.28, label %br.c2.28

b.new.buf.len2723:                                ; preds = %str_overflow_abort724, %b.grow2708
  %arena.cur725 = call ptr @dva_arena_current()
  %b.new.buf2726 = call ptr @dva_arena_alloc(ptr %arena.cur725, i64 %sum721)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2726, ptr align 1 %b.cur.data2719, i64 %b.cur.len2717, i1 false)
  %b.grow2.nul727 = getelementptr i8, ptr %b.new.buf2726, i64 %b.cur.len2717
  store i8 0, ptr %b.grow2.nul727, align 1
  %b.new.data2.gep728 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 1
  store ptr %b.new.buf2726, ptr %b.new.data2.gep728, align 8
  %b.new.cap2.gep729 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 2
  store i64 %b.new.cap715, ptr %b.new.cap2.gep729, align 8
  br label %b.grow_done710

str_overflow_abort724:                            ; preds = %b.grow2708
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2723

br.b1.28:                                         ; preds = %b.grow_done710
  store i8 48, ptr %b.rn.dst732, align 1
  br label %br.done.28

br.c2.28:                                         ; preds = %b.grow_done710
  br i1 true, label %br.b2.28, label %br.c3.28

br.b2.28:                                         ; preds = %br.c2.28
  store i8 -64, ptr %b.rn.dst732, align 1
  %br.dst1733 = getelementptr i8, ptr %b.rn.dst732, i64 1
  store i8 -80, ptr %br.dst1733, align 1
  br label %br.done.28

br.c3.28:                                         ; preds = %br.c2.28
  br i1 true, label %br.b3.28, label %br.b4.28

br.b3.28:                                         ; preds = %br.c3.28
  store i8 -32, ptr %b.rn.dst732, align 1
  %br.dst1.3734 = getelementptr i8, ptr %b.rn.dst732, i64 1
  store i8 -128, ptr %br.dst1.3734, align 1
  %br.dst2.3735 = getelementptr i8, ptr %b.rn.dst732, i64 2
  store i8 -80, ptr %br.dst2.3735, align 1
  br label %br.done.28

br.b4.28:                                         ; preds = %br.c3.28
  store i8 -16, ptr %b.rn.dst732, align 1
  %br.dst1.4736 = getelementptr i8, ptr %b.rn.dst732, i64 1
  store i8 -128, ptr %br.dst1.4736, align 1
  %br.dst2.4737 = getelementptr i8, ptr %b.rn.dst732, i64 2
  store i8 -128, ptr %br.dst2.4737, align 1
  %br.dst3.4738 = getelementptr i8, ptr %b.rn.dst732, i64 3
  store i8 -80, ptr %br.dst3.4738, align 1
  br label %br.done.28

br.done.28:                                       ; preds = %br.b4.28, %br.b3.28, %br.b2.28, %br.b1.28
  %br.nul739 = getelementptr i8, ptr %b.rn.data731, i64 %sum701
  store i8 0, ptr %br.nul739, align 1
  %b.len.gep740 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load697, i32 0, i32 0
  store i64 %sum701, ptr %b.len.gep740, align 8
  br label %loop.latch.27

loop.header.29:                                   ; preds = %loop.latch.29, %loop.exit.27
  %counter.load743 = load i64, ptr %loop.idx.29, align 8
  %loop.cond744 = icmp slt i64 %counter.load743, 6
  br i1 %loop.cond744, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i745 = sub i64 %counter.load743, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i745, ptr %var._i746, align 8
  store i64 %counter.load743, ptr %var._747, align 8
  store i64 %counter.load743, ptr %var.i, align 8
  %var.load748 = load ptr, ptr %var.ms, align 8
  %s.read.len749 = getelementptr inbounds { i64, ptr }, ptr %var.load748, i32 0, i32 0
  %s.read.len750 = load i64, ptr %s.read.len749, align 8
  %s.read.len751 = and i64 %s.read.len750, 281474976710655
  %str.tag752 = lshr i64 %s.read.len750, 48
  %str.immortal753 = icmp eq i64 %str.tag752, 0
  br i1 %str.immortal753, label %str_ok755, label %str_gen_check754

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %b.push_done808
  %step.val830 = load i64, ptr %loop.step.29, align 8
  %loop.next831 = add i64 %counter.load743, %step.val830
  store i64 %loop.next831, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  br label %choice.exit417

str_gen_check754:                                 ; preds = %loop.body.29
  %arena.cur757 = call ptr @dva_arena_current()
  %tag.valid758 = call i1 @dva_arena_validate_tag(ptr %arena.cur757, i64 %str.tag752)
  br i1 %tag.valid758, label %str_ok755, label %str_stale756

str_ok755:                                        ; preds = %str_stale756, %str_gen_check754, %loop.body.29
  %s.read.data759 = getelementptr inbounds { i64, ptr }, ptr %var.load748, i32 0, i32 1
  %s.read.data760 = load ptr, ptr %s.read.data759, align 8
  %var.load761 = load i64, ptr %var.i, align 8
  %idx.neg762 = icmp slt i64 %var.load761, 0
  br i1 %idx.neg762, label %idx_oob765, label %idx_big_check763

str_stale756:                                     ; preds = %str_gen_check754
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok755

idx_big_check763:                                 ; preds = %str_ok755
  %idx.big766 = icmp sge i64 %var.load761, %s.read.len751
  br i1 %idx.big766, label %idx_oob765, label %idx_ok764

idx_ok764:                                        ; preds = %idx_oob765, %idx_big_check763
  %s.byte.gep767 = getelementptr i8, ptr %s.read.data760, i64 %var.load761
  %s.byte768 = load i8, ptr %s.byte.gep767, align 1
  %s.byte.val769 = zext i8 %s.byte768 to i64
  %b.load770 = load ptr, ptr %var.b, align 8
  %var.load771 = load ptr, ptr %var.ms, align 8
  %s.read.len772 = getelementptr inbounds { i64, ptr }, ptr %var.load771, i32 0, i32 0
  %s.read.len773 = load i64, ptr %s.read.len772, align 8
  %s.read.len774 = and i64 %s.read.len773, 281474976710655
  %str.tag775 = lshr i64 %s.read.len773, 48
  %str.immortal776 = icmp eq i64 %str.tag775, 0
  br i1 %str.immortal776, label %str_ok778, label %str_gen_check777

idx_oob765:                                       ; preds = %idx_big_check763, %str_ok755
  %47 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok764

str_gen_check777:                                 ; preds = %idx_ok764
  %arena.cur780 = call ptr @dva_arena_current()
  %tag.valid781 = call i1 @dva_arena_validate_tag(ptr %arena.cur780, i64 %str.tag775)
  br i1 %tag.valid781, label %str_ok778, label %str_stale779

str_ok778:                                        ; preds = %str_stale779, %str_gen_check777, %idx_ok764
  %s.read.data782 = getelementptr inbounds { i64, ptr }, ptr %var.load771, i32 0, i32 1
  %s.read.data783 = load ptr, ptr %s.read.data782, align 8
  %var.load784 = load i64, ptr %var.i, align 8
  %idx.neg785 = icmp slt i64 %var.load784, 0
  br i1 %idx.neg785, label %idx_oob788, label %idx_big_check786

str_stale779:                                     ; preds = %str_gen_check777
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok778

idx_big_check786:                                 ; preds = %str_ok778
  %idx.big789 = icmp sge i64 %var.load784, %s.read.len774
  br i1 %idx.big789, label %idx_oob788, label %idx_ok787

idx_ok787:                                        ; preds = %idx_oob788, %idx_big_check786
  %s.byte.gep790 = getelementptr i8, ptr %s.read.data783, i64 %var.load784
  %s.byte791 = load i8, ptr %s.byte.gep790, align 1
  %s.byte.val792 = zext i8 %s.byte791 to i64
  %b.b.ge0793 = icmp sge i64 %s.byte.val792, 0
  %b.b.le255794 = icmp sle i64 %s.byte.val792, 255
  %b.byte.range795 = and i1 %b.b.ge0793, %b.b.le255794
  br i1 %b.byte.range795, label %b.byte_ok796, label %b.byte_err797

idx_oob788:                                       ; preds = %idx_big_check786, %str_ok778
  %49 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok787

b.byte_ok796:                                     ; preds = %b.byte_err797, %idx_ok787
  %b.byte.i8798 = trunc i64 %s.byte.val792 to i8
  %b.len799 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load770, i32 0, i32 0
  %b.len800 = load i64, ptr %b.len799, align 8
  %b.cap801 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load770, i32 0, i32 2
  %b.cap802 = load i64, ptr %b.cap801, align 8
  %b.data803 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load770, i32 0, i32 1
  %b.data804 = load ptr, ptr %b.data803, align 8
  %b.needs.grow805 = icmp eq i64 %b.len800, %b.cap802
  br i1 %b.needs.grow805, label %b.grow806, label %b.nogrow807

b.byte_err797:                                    ; preds = %idx_ok787
  %50 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok796

b.grow806:                                        ; preds = %b.byte_ok796
  %b.cap2809 = mul i64 %b.cap802, 2
  %b.cap.small810 = icmp slt i64 %b.cap2809, 16
  %b.new.cap811 = select i1 %b.cap.small810, i64 16, i64 %b.cap2809
  %b.new.buf.len812 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap811, i64 1)
  %sum813 = extractvalue { i64, i1 } %b.new.buf.len812, 0
  %ovf814 = extractvalue { i64, i1 } %b.new.buf.len812, 1
  br i1 %ovf814, label %str_overflow_abort816, label %b.new.buf.len815

b.nogrow807:                                      ; preds = %b.byte_ok796
  br label %b.push_done808

b.push_done808:                                   ; preds = %b.nogrow807, %b.new.buf.len815
  %b.cur.data822 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load770, i32 0, i32 1
  %b.cur.data823 = load ptr, ptr %b.cur.data822, align 8
  %b.cur.len824 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load770, i32 0, i32 0
  %b.cur.len825 = load i64, ptr %b.cur.len824, align 8
  %b.byte.gep826 = getelementptr i8, ptr %b.cur.data823, i64 %b.cur.len825
  store i8 %b.byte.i8798, ptr %b.byte.gep826, align 1
  %b.next.len827 = add i64 %b.cur.len825, 1
  %b.nul828 = getelementptr i8, ptr %b.cur.data823, i64 %b.next.len827
  store i8 0, ptr %b.nul828, align 1
  %b.len.gep829 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load770, i32 0, i32 0
  store i64 %b.next.len827, ptr %b.len.gep829, align 8
  br label %loop.latch.29

b.new.buf.len815:                                 ; preds = %str_overflow_abort816, %b.grow806
  %arena.cur817 = call ptr @dva_arena_current()
  %b.new.buf818 = call ptr @dva_arena_alloc(ptr %arena.cur817, i64 %sum813)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf818, ptr align 1 %b.data804, i64 %b.len800, i1 false)
  %b.grow.nul819 = getelementptr i8, ptr %b.new.buf818, i64 %b.len800
  store i8 0, ptr %b.grow.nul819, align 1
  %b.new.data.gep820 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load770, i32 0, i32 1
  store ptr %b.new.buf818, ptr %b.new.data.gep820, align 8
  %b.new.cap.gep821 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load770, i32 0, i32 2
  store i64 %b.new.cap811, ptr %b.new.cap.gep821, align 8
  br label %b.push_done808

str_overflow_abort816:                            ; preds = %b.grow806
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len815

b.freeze.check841:                                ; preds = %choice.exit201
  %b.freeze.last.idx844 = sub i64 %b.freeze.nc839, 1
  %b.freeze.chunks.gep845 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena837, i32 0, i32 3
  %b.freeze.chunk.slot846 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep845, i64 0, i64 %b.freeze.last.idx844
  %b.freeze.last.chunk847 = load ptr, ptr %b.freeze.chunk.slot846, align 8
  %b.freeze.off.gep848 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena837, i32 0, i32 2
  %b.freeze.off849 = load i64, ptr %b.freeze.off.gep848, align 8
  %b.freeze.bump850 = getelementptr i8, ptr %b.freeze.last.chunk847, i64 %b.freeze.off849
  %b.freeze.cap.gep851 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena837, i32 0, i32 0
  %b.freeze.cap852 = load i64, ptr %b.freeze.cap.gep851, align 8
  %b.freeze.chunk.end853 = getelementptr i8, ptr %b.freeze.last.chunk847, i64 %b.freeze.cap852
  %b.freeze.ge.chunk854 = icmp uge ptr %b.freeze.data836, %b.freeze.last.chunk847
  %b.freeze.lt.end855 = icmp ult ptr %b.freeze.data836, %b.freeze.chunk.end853
  %b.freeze.in.chunk856 = and i1 %b.freeze.ge.chunk854, %b.freeze.lt.end855
  %b.freeze.ge.bump857 = icmp uge ptr %b.freeze.data836, %b.freeze.bump850
  %b.freeze.reaped858 = and i1 %b.freeze.in.chunk856, %b.freeze.ge.bump857
  br i1 %b.freeze.reaped858, label %b.freeze.copy842, label %b.freeze.done843

b.freeze.copy842:                                 ; preds = %b.freeze.check841
  %arena.cur859 = call ptr @dva_arena_current()
  %b.freeze.fresh860 = call ptr @dva_arena_alloc(ptr %arena.cur859, i64 %b.freeze.len834)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh860, ptr align 1 %b.freeze.data836, i64 %b.freeze.len834, i1 false)
  br label %b.freeze.done843

b.freeze.done843:                                 ; preds = %b.freeze.copy842, %b.freeze.check841, %choice.exit201
  %b.freeze.data861 = phi ptr [ %b.freeze.data836, %choice.exit201 ], [ %b.freeze.data836, %b.freeze.check841 ], [ %b.freeze.fresh860, %b.freeze.copy842 ]
  %arena.cur862 = call ptr @dva_arena_current()
  %builder.freeze863 = call ptr @dva_arena_alloc(ptr %arena.cur862, i64 16)
  %str.build.len.gep864 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze863, i32 0, i32 0
  store i64 %b.freeze.len834, ptr %str.build.len.gep864, align 8
  %str.build.data.gep865 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze863, i32 0, i32 1
  store ptr %b.freeze.data861, ptr %str.build.data.gep865, align 8
  %b.freeze.rst.len866 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load832, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len866, align 8
  %b.freeze.rst.data867 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load832, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data867, align 8
  %b.freeze.rst.cap868 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load832, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap868, align 8
  store ptr %builder.freeze863, ptr %var.full, align 8
  %var.load869 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load869, i32 0, i32 0
  %str.len.query870 = load i64, ptr %str.len.query, align 8
  %str.len.query871 = and i64 %str.len.query870, 281474976710655
  %str.tag872 = lshr i64 %str.len.query870, 48
  %str.immortal873 = icmp eq i64 %str.tag872, 0
  br i1 %str.immortal873, label %str_ok875, label %str_gen_check874

str_gen_check874:                                 ; preds = %b.freeze.done843
  %arena.cur877 = call ptr @dva_arena_current()
  %tag.valid878 = call i1 @dva_arena_validate_tag(ptr %arena.cur877, i64 %str.tag872)
  br i1 %tag.valid878, label %str_ok875, label %str_stale876

str_ok875:                                        ; preds = %str_stale876, %str_gen_check874, %b.freeze.done843
  store i64 %str.len.query871, ptr %var.len, align 8
  %var.load879 = load i64, ptr %var.len, align 8
  store i64 %var.load879, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.30, align 8
  br label %loop.header.30

str_stale876:                                     ; preds = %str_gen_check874
  %52 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok875

loop.header.30:                                   ; preds = %loop.latch.30, %str_ok875
  %counter.load880 = load i64, ptr %loop.idx.30, align 8
  br label %loop.body.30

loop.body.30:                                     ; preds = %loop.header.30
  %loop.rel.i881 = sub i64 %counter.load880, 0
  store i64 1, ptr %loop.step.30, align 8
  store i64 %loop.rel.i881, ptr %var._i882, align 8
  store i64 %counter.load880, ptr %var._883, align 8
  %var.load884 = load i64, ptr %"var.end'", align 8
  %cmptmp885 = icmp sgt i64 %var.load884, 0
  br i1 %cmptmp885, label %and.31.then, label %and.31.else

loop.exit.nat.30:                                 ; No predecessors!
  br label %loop.exit.30

loop.latch.30:                                    ; preds = %choice.exit912
  %step.val915 = load i64, ptr %loop.step.30, align 8
  %loop.next916 = add i64 %counter.load880, %step.val915
  store i64 %loop.next916, ptr %loop.idx.30, align 8
  br label %loop.header.30

loop.exit.30:                                     ; preds = %choice.else911, %loop.exit.nat.30
  %var.load917 = load i64, ptr %"var.end'", align 8
  %cmptmp918 = icmp sgt i64 %var.load917, 0
  br i1 %cmptmp918, label %and.32.then, label %and.32.else

and.31.then:                                      ; preds = %loop.body.30
  %var.load886 = load ptr, ptr %var.full, align 8
  %s.read.len887 = getelementptr inbounds { i64, ptr }, ptr %var.load886, i32 0, i32 0
  %s.read.len888 = load i64, ptr %s.read.len887, align 8
  %s.read.len889 = and i64 %s.read.len888, 281474976710655
  %str.tag890 = lshr i64 %s.read.len888, 48
  %str.immortal891 = icmp eq i64 %str.tag890, 0
  br i1 %str.immortal891, label %str_ok893, label %str_gen_check892

and.31.else:                                      ; preds = %loop.body.30
  br label %and.31.exit

and.31.exit:                                      ; preds = %and.31.else, %idx_ok903
  %and.31.phi = phi i1 [ %cmptmp909, %idx_ok903 ], [ %cmptmp885, %and.31.else ]
  br i1 %and.31.phi, label %choice.then910, label %choice.else911

str_gen_check892:                                 ; preds = %and.31.then
  %arena.cur895 = call ptr @dva_arena_current()
  %tag.valid896 = call i1 @dva_arena_validate_tag(ptr %arena.cur895, i64 %str.tag890)
  br i1 %tag.valid896, label %str_ok893, label %str_stale894

str_ok893:                                        ; preds = %str_stale894, %str_gen_check892, %and.31.then
  %s.read.data897 = getelementptr inbounds { i64, ptr }, ptr %var.load886, i32 0, i32 1
  %s.read.data898 = load ptr, ptr %s.read.data897, align 8
  %var.load899 = load i64, ptr %"var.end'", align 8
  %subtmp900 = sub i64 %var.load899, 1
  %idx.neg901 = icmp slt i64 %subtmp900, 0
  br i1 %idx.neg901, label %idx_oob904, label %idx_big_check902

str_stale894:                                     ; preds = %str_gen_check892
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok893

idx_big_check902:                                 ; preds = %str_ok893
  %idx.big905 = icmp sge i64 %subtmp900, %s.read.len889
  br i1 %idx.big905, label %idx_oob904, label %idx_ok903

idx_ok903:                                        ; preds = %idx_oob904, %idx_big_check902
  %s.byte.gep906 = getelementptr i8, ptr %s.read.data898, i64 %subtmp900
  %s.byte907 = load i8, ptr %s.byte.gep906, align 1
  %s.byte.val908 = zext i8 %s.byte907 to i64
  %cmptmp909 = icmp eq i64 %s.byte.val908, 48
  br label %and.31.exit

idx_oob904:                                       ; preds = %idx_big_check902, %str_ok893
  %54 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok903

choice.then910:                                   ; preds = %and.31.exit
  %var.load913 = load i64, ptr %"var.end'", align 8
  %subtmp914 = sub i64 %var.load913, 1
  store i64 %subtmp914, ptr %"var.end'", align 8
  br label %choice.exit912

choice.else911:                                   ; preds = %and.31.exit
  br label %loop.exit.30

choice.exit912:                                   ; preds = %choice.then910
  br label %loop.latch.30

and.32.then:                                      ; preds = %loop.exit.30
  %var.load919 = load ptr, ptr %var.full, align 8
  %s.read.len920 = getelementptr inbounds { i64, ptr }, ptr %var.load919, i32 0, i32 0
  %s.read.len921 = load i64, ptr %s.read.len920, align 8
  %s.read.len922 = and i64 %s.read.len921, 281474976710655
  %str.tag923 = lshr i64 %s.read.len921, 48
  %str.immortal924 = icmp eq i64 %str.tag923, 0
  br i1 %str.immortal924, label %str_ok926, label %str_gen_check925

and.32.else:                                      ; preds = %loop.exit.30
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %idx_ok936
  %and.32.phi = phi i1 [ %cmptmp942, %idx_ok936 ], [ %cmptmp918, %and.32.else ]
  br i1 %and.32.phi, label %choice.then943, label %choice.exit944

str_gen_check925:                                 ; preds = %and.32.then
  %arena.cur928 = call ptr @dva_arena_current()
  %tag.valid929 = call i1 @dva_arena_validate_tag(ptr %arena.cur928, i64 %str.tag923)
  br i1 %tag.valid929, label %str_ok926, label %str_stale927

str_ok926:                                        ; preds = %str_stale927, %str_gen_check925, %and.32.then
  %s.read.data930 = getelementptr inbounds { i64, ptr }, ptr %var.load919, i32 0, i32 1
  %s.read.data931 = load ptr, ptr %s.read.data930, align 8
  %var.load932 = load i64, ptr %"var.end'", align 8
  %subtmp933 = sub i64 %var.load932, 1
  %idx.neg934 = icmp slt i64 %subtmp933, 0
  br i1 %idx.neg934, label %idx_oob937, label %idx_big_check935

str_stale927:                                     ; preds = %str_gen_check925
  %55 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok926

idx_big_check935:                                 ; preds = %str_ok926
  %idx.big938 = icmp sge i64 %subtmp933, %s.read.len922
  br i1 %idx.big938, label %idx_oob937, label %idx_ok936

idx_ok936:                                        ; preds = %idx_oob937, %idx_big_check935
  %s.byte.gep939 = getelementptr i8, ptr %s.read.data931, i64 %subtmp933
  %s.byte940 = load i8, ptr %s.byte.gep939, align 1
  %s.byte.val941 = zext i8 %s.byte940 to i64
  %cmptmp942 = icmp eq i64 %s.byte.val941, 46
  br label %and.32.exit

idx_oob937:                                       ; preds = %idx_big_check935, %str_ok926
  %56 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok936

choice.then943:                                   ; preds = %and.32.exit
  %var.load945 = load i64, ptr %"var.end'", align 8
  %subtmp946 = sub i64 %var.load945, 1
  store i64 %subtmp946, ptr %"var.end'", align 8
  br label %choice.exit944

choice.exit944:                                   ; preds = %choice.then943, %and.32.exit
  %var.load947 = load ptr, ptr %var.full, align 8
  %s.read.len948 = getelementptr inbounds { i64, ptr }, ptr %var.load947, i32 0, i32 0
  %s.read.len949 = load i64, ptr %s.read.len948, align 8
  %s.read.len950 = and i64 %s.read.len949, 281474976710655
  %str.tag951 = lshr i64 %s.read.len949, 48
  %str.immortal952 = icmp eq i64 %str.tag951, 0
  br i1 %str.immortal952, label %str_ok954, label %str_gen_check953

str_gen_check953:                                 ; preds = %choice.exit944
  %arena.cur956 = call ptr @dva_arena_current()
  %tag.valid957 = call i1 @dva_arena_validate_tag(ptr %arena.cur956, i64 %str.tag951)
  br i1 %tag.valid957, label %str_ok954, label %str_stale955

str_ok954:                                        ; preds = %str_stale955, %str_gen_check953, %choice.exit944
  %s.read.data958 = getelementptr inbounds { i64, ptr }, ptr %var.load947, i32 0, i32 1
  %s.read.data959 = load ptr, ptr %s.read.data958, align 8
  %var.load960 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len950, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len950
  %final.start = select i1 %start.gt.len, i64 %s.read.len950, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load960, 0
  %rel.end = add i64 %s.read.len950, %var.load960
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load960
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len950
  %final.end = select i1 %end.gt.len, i64 %s.read.len950, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data959, i64 %final.start
  %arena.cur961 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur961, i64 16)
  %str.build.len.gep962 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep962, align 8
  %str.build.data.gep963 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep963, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load964 = load i64, ptr %"var.e'", align 8
  %cmptmp965 = icmp slt i64 %var.load964, 0
  br i1 %cmptmp965, label %choice.then966, label %choice.else967

str_stale955:                                     ; preds = %str_gen_check953
  %57 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok954

choice.then966:                                   ; preds = %str_ok954
  %var.load969 = load i64, ptr %"var.e'", align 8
  %subtmp970 = sub i64 0, %var.load969
  %call.res971 = call ptr @"str::from_int"(i64 %subtmp970)
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs972 = and i64 %concat.lhs, 281474976710655
  %str.tag973 = lshr i64 %concat.lhs, 48
  %str.immortal974 = icmp eq i64 %str.tag973, 0
  br i1 %str.immortal974, label %str_ok976, label %str_gen_check975

choice.else967:                                   ; preds = %str_ok954
  %var.load1004 = load i64, ptr %"var.e'", align 8
  %call.res1005 = call ptr @"str::from_int"(i64 %var.load1004)
  br label %choice.exit968

choice.exit968:                                   ; preds = %choice.else967, %concat.tot.len998
  %choice.res1006 = phi ptr [ %concat.str, %concat.tot.len998 ], [ %call.res1005, %choice.else967 ]
  store ptr %choice.res1006, ptr %var.es, align 8
  %var.load1007 = load i64, ptr %"var.e'", align 8
  %cmptmp1008 = icmp slt i64 %var.load1007, -4
  br i1 %cmptmp1008, label %or.33.then, label %or.33.else

str_gen_check975:                                 ; preds = %choice.then966
  %arena.cur978 = call ptr @dva_arena_current()
  %tag.valid979 = call i1 @dva_arena_validate_tag(ptr %arena.cur978, i64 %str.tag973)
  br i1 %tag.valid979, label %str_ok976, label %str_stale977

str_ok976:                                        ; preds = %str_stale977, %str_gen_check975, %choice.then966
  %concat.lhs980 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res971, i32 0, i32 0
  %concat.rhs981 = load i64, ptr %concat.rhs, align 8
  %concat.rhs982 = and i64 %concat.rhs981, 281474976710655
  %str.tag983 = lshr i64 %concat.rhs981, 48
  %str.immortal984 = icmp eq i64 %str.tag983, 0
  br i1 %str.immortal984, label %str_ok986, label %str_gen_check985

str_stale977:                                     ; preds = %str_gen_check975
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok976

str_gen_check985:                                 ; preds = %str_ok976
  %arena.cur988 = call ptr @dva_arena_current()
  %tag.valid989 = call i1 @dva_arena_validate_tag(ptr %arena.cur988, i64 %str.tag983)
  br i1 %tag.valid989, label %str_ok986, label %str_stale987

str_ok986:                                        ; preds = %str_stale987, %str_gen_check985, %str_ok976
  %concat.rhs990 = getelementptr inbounds { i64, ptr }, ptr %call.res971, i32 0, i32 1
  %concat.rhs991 = load ptr, ptr %concat.rhs990, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs972, i64 %concat.rhs982)
  %sum992 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf993 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf993, label %str_overflow_abort995, label %concat.sum.len994

str_stale987:                                     ; preds = %str_gen_check985
  %59 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok986

concat.sum.len994:                                ; preds = %str_overflow_abort995, %str_ok986
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum992, i64 1)
  %sum996 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf997 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf997, label %str_overflow_abort999, label %concat.tot.len998

str_overflow_abort995:                            ; preds = %str_ok986
  %60 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len994

concat.tot.len998:                                ; preds = %str_overflow_abort999, %concat.sum.len994
  %arena.cur1000 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur1000, i64 %sum996)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs980, i64 %concat.lhs972, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs972
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs991, i64 %concat.rhs982, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum992
  store i8 0, ptr %concat.nul, align 1
  %arena.cur1001 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur1001, i64 16)
  %str.build.len.gep1002 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum992, ptr %str.build.len.gep1002, align 8
  %str.build.data.gep1003 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep1003, align 8
  br label %choice.exit968

str_overflow_abort999:                            ; preds = %concat.sum.len994
  %61 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len998

or.33.then:                                       ; preds = %choice.exit968
  br label %or.33.exit

or.33.else:                                       ; preds = %choice.exit968
  %var.load1009 = load i64, ptr %"var.e'", align 8
  %cmptmp1010 = icmp sge i64 %var.load1009, 6
  br label %or.33.exit

or.33.exit:                                       ; preds = %or.33.else, %or.33.then
  %or.33.phi = phi i1 [ %cmptmp1008, %or.33.then ], [ %cmptmp1010, %or.33.else ]
  br i1 %or.33.phi, label %choice.then1011, label %choice.else1012

choice.then1011:                                  ; preds = %or.33.exit
  %var.load1014 = load ptr, ptr %var.mant, align 8
  %concat.lhs1015 = getelementptr inbounds { i64, ptr }, ptr %var.load1014, i32 0, i32 0
  %concat.lhs1016 = load i64, ptr %concat.lhs1015, align 8
  %concat.lhs1017 = and i64 %concat.lhs1016, 281474976710655
  %str.tag1018 = lshr i64 %concat.lhs1016, 48
  %str.immortal1019 = icmp eq i64 %str.tag1018, 0
  br i1 %str.immortal1019, label %str_ok1021, label %str_gen_check1020

choice.else1012:                                  ; preds = %or.33.exit
  %var.load1098 = load ptr, ptr %var.mant, align 8
  br label %choice.exit1013

choice.exit1013:                                  ; preds = %choice.else1012, %concat.tot.len1088
  %choice.res1099 = phi ptr [ %concat.str1095, %concat.tot.len1088 ], [ %var.load1098, %choice.else1012 ]
  ret ptr %choice.res1099

str_gen_check1020:                                ; preds = %choice.then1011
  %arena.cur1023 = call ptr @dva_arena_current()
  %tag.valid1024 = call i1 @dva_arena_validate_tag(ptr %arena.cur1023, i64 %str.tag1018)
  br i1 %tag.valid1024, label %str_ok1021, label %str_stale1022

str_ok1021:                                       ; preds = %str_stale1022, %str_gen_check1020, %choice.then1011
  %concat.lhs1025 = getelementptr inbounds { i64, ptr }, ptr %var.load1014, i32 0, i32 1
  %concat.lhs1026 = load ptr, ptr %concat.lhs1025, align 8
  %concat.rhs1027 = load i64, ptr @str.3.struct, align 8
  %concat.rhs1028 = and i64 %concat.rhs1027, 281474976710655
  %str.tag1029 = lshr i64 %concat.rhs1027, 48
  %str.immortal1030 = icmp eq i64 %str.tag1029, 0
  br i1 %str.immortal1030, label %str_ok1032, label %str_gen_check1031

str_stale1022:                                    ; preds = %str_gen_check1020
  %62 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1021

str_gen_check1031:                                ; preds = %str_ok1021
  %arena.cur1034 = call ptr @dva_arena_current()
  %tag.valid1035 = call i1 @dva_arena_validate_tag(ptr %arena.cur1034, i64 %str.tag1029)
  br i1 %tag.valid1035, label %str_ok1032, label %str_stale1033

str_ok1032:                                       ; preds = %str_stale1033, %str_gen_check1031, %str_ok1021
  %concat.rhs1036 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %concat.sum.len1037 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1017, i64 %concat.rhs1028)
  %sum1038 = extractvalue { i64, i1 } %concat.sum.len1037, 0
  %ovf1039 = extractvalue { i64, i1 } %concat.sum.len1037, 1
  br i1 %ovf1039, label %str_overflow_abort1041, label %concat.sum.len1040

str_stale1033:                                    ; preds = %str_gen_check1031
  %63 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1032

concat.sum.len1040:                               ; preds = %str_overflow_abort1041, %str_ok1032
  %concat.tot.len1042 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1038, i64 1)
  %sum1043 = extractvalue { i64, i1 } %concat.tot.len1042, 0
  %ovf1044 = extractvalue { i64, i1 } %concat.tot.len1042, 1
  br i1 %ovf1044, label %str_overflow_abort1046, label %concat.tot.len1045

str_overflow_abort1041:                           ; preds = %str_ok1032
  %64 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1040

concat.tot.len1045:                               ; preds = %str_overflow_abort1046, %concat.sum.len1040
  %arena.cur1047 = call ptr @dva_arena_current()
  %concat.buf1048 = call ptr @dva_arena_alloc(ptr %arena.cur1047, i64 %sum1043)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1048, ptr align 1 %concat.lhs1026, i64 %concat.lhs1017, i1 false)
  %concat.mid1049 = getelementptr i8, ptr %concat.buf1048, i64 %concat.lhs1017
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1049, ptr align 1 %concat.rhs1036, i64 %concat.rhs1028, i1 false)
  %concat.nul1050 = getelementptr i8, ptr %concat.buf1048, i64 %sum1038
  store i8 0, ptr %concat.nul1050, align 1
  %arena.cur1051 = call ptr @dva_arena_current()
  %concat.str1052 = call ptr @dva_arena_alloc(ptr %arena.cur1051, i64 16)
  %str.build.len.gep1053 = getelementptr inbounds { i64, ptr }, ptr %concat.str1052, i32 0, i32 0
  store i64 %sum1038, ptr %str.build.len.gep1053, align 8
  %str.build.data.gep1054 = getelementptr inbounds { i64, ptr }, ptr %concat.str1052, i32 0, i32 1
  store ptr %concat.buf1048, ptr %str.build.data.gep1054, align 8
  %var.load1055 = load ptr, ptr %var.es, align 8
  %concat.lhs1056 = getelementptr inbounds { i64, ptr }, ptr %concat.str1052, i32 0, i32 0
  %concat.lhs1057 = load i64, ptr %concat.lhs1056, align 8
  %concat.lhs1058 = and i64 %concat.lhs1057, 281474976710655
  %str.tag1059 = lshr i64 %concat.lhs1057, 48
  %str.immortal1060 = icmp eq i64 %str.tag1059, 0
  br i1 %str.immortal1060, label %str_ok1062, label %str_gen_check1061

str_overflow_abort1046:                           ; preds = %concat.sum.len1040
  %65 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1045

str_gen_check1061:                                ; preds = %concat.tot.len1045
  %arena.cur1064 = call ptr @dva_arena_current()
  %tag.valid1065 = call i1 @dva_arena_validate_tag(ptr %arena.cur1064, i64 %str.tag1059)
  br i1 %tag.valid1065, label %str_ok1062, label %str_stale1063

str_ok1062:                                       ; preds = %str_stale1063, %str_gen_check1061, %concat.tot.len1045
  %concat.lhs1066 = getelementptr inbounds { i64, ptr }, ptr %concat.str1052, i32 0, i32 1
  %concat.lhs1067 = load ptr, ptr %concat.lhs1066, align 8
  %concat.rhs1068 = getelementptr inbounds { i64, ptr }, ptr %var.load1055, i32 0, i32 0
  %concat.rhs1069 = load i64, ptr %concat.rhs1068, align 8
  %concat.rhs1070 = and i64 %concat.rhs1069, 281474976710655
  %str.tag1071 = lshr i64 %concat.rhs1069, 48
  %str.immortal1072 = icmp eq i64 %str.tag1071, 0
  br i1 %str.immortal1072, label %str_ok1074, label %str_gen_check1073

str_stale1063:                                    ; preds = %str_gen_check1061
  %66 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1062

str_gen_check1073:                                ; preds = %str_ok1062
  %arena.cur1076 = call ptr @dva_arena_current()
  %tag.valid1077 = call i1 @dva_arena_validate_tag(ptr %arena.cur1076, i64 %str.tag1071)
  br i1 %tag.valid1077, label %str_ok1074, label %str_stale1075

str_ok1074:                                       ; preds = %str_stale1075, %str_gen_check1073, %str_ok1062
  %concat.rhs1078 = getelementptr inbounds { i64, ptr }, ptr %var.load1055, i32 0, i32 1
  %concat.rhs1079 = load ptr, ptr %concat.rhs1078, align 8
  %concat.sum.len1080 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1058, i64 %concat.rhs1070)
  %sum1081 = extractvalue { i64, i1 } %concat.sum.len1080, 0
  %ovf1082 = extractvalue { i64, i1 } %concat.sum.len1080, 1
  br i1 %ovf1082, label %str_overflow_abort1084, label %concat.sum.len1083

str_stale1075:                                    ; preds = %str_gen_check1073
  %67 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1074

concat.sum.len1083:                               ; preds = %str_overflow_abort1084, %str_ok1074
  %concat.tot.len1085 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1081, i64 1)
  %sum1086 = extractvalue { i64, i1 } %concat.tot.len1085, 0
  %ovf1087 = extractvalue { i64, i1 } %concat.tot.len1085, 1
  br i1 %ovf1087, label %str_overflow_abort1089, label %concat.tot.len1088

str_overflow_abort1084:                           ; preds = %str_ok1074
  %68 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1083

concat.tot.len1088:                               ; preds = %str_overflow_abort1089, %concat.sum.len1083
  %arena.cur1090 = call ptr @dva_arena_current()
  %concat.buf1091 = call ptr @dva_arena_alloc(ptr %arena.cur1090, i64 %sum1086)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1091, ptr align 1 %concat.lhs1067, i64 %concat.lhs1058, i1 false)
  %concat.mid1092 = getelementptr i8, ptr %concat.buf1091, i64 %concat.lhs1058
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1092, ptr align 1 %concat.rhs1079, i64 %concat.rhs1070, i1 false)
  %concat.nul1093 = getelementptr i8, ptr %concat.buf1091, i64 %sum1081
  store i8 0, ptr %concat.nul1093, align 1
  %arena.cur1094 = call ptr @dva_arena_current()
  %concat.str1095 = call ptr @dva_arena_alloc(ptr %arena.cur1094, i64 16)
  %str.build.len.gep1096 = getelementptr inbounds { i64, ptr }, ptr %concat.str1095, i32 0, i32 0
  store i64 %sum1081, ptr %str.build.len.gep1096, align 8
  %str.build.data.gep1097 = getelementptr inbounds { i64, ptr }, ptr %concat.str1095, i32 0, i32 1
  store ptr %concat.buf1091, ptr %str.build.data.gep1097, align 8
  br label %choice.exit1013

str_overflow_abort1089:                           ; preds = %concat.sum.len1083
  %69 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1088
}

define i64 @"str::cmp"(ptr %0, ptr %1) #1 {
entry:
  %var.cb = alloca i64, align 8
  %var.ca = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.34 = alloca i64, align 8
  %loop.idx.34 = alloca i64, align 8
  %"var.r'" = alloca i64, align 8
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
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.la, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %str.immortal8 = icmp eq i64 %str.tag7, 0
  br i1 %str.immortal8, label %str_ok10, label %str_gen_check9

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check9:                                   ; preds = %str_ok
  %arena.cur12 = call ptr @dva_arena_current()
  %tag.valid13 = call i1 @dva_arena_validate_tag(ptr %arena.cur12, i64 %str.tag7)
  br i1 %tag.valid13, label %str_ok10, label %str_stale11

str_ok10:                                         ; preds = %str_stale11, %str_gen_check9, %str_ok
  store i64 %str.len.query6, ptr %var.lb, align 8
  %var.load14 = load i64, ptr %var.la, align 8
  %var.load15 = load i64, ptr %var.lb, align 8
  %cmptmp = icmp slt i64 %var.load14, %var.load15
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale11:                                      ; preds = %str_gen_check9
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok10

choice.then:                                      ; preds = %str_ok10
  %var.load16 = load i64, ptr %var.la, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok10
  %var.load17 = load i64, ptr %var.lb, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load16, %choice.then ], [ %var.load17, %choice.else ]
  store i64 %choice.res, ptr %var.n, align 8
  store i64 0, ptr %"var.r'", align 8
  %var.load18 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.34, align 8
  br label %loop.header.34

loop.header.34:                                   ; preds = %loop.latch.34, %choice.exit
  %counter.load = load i64, ptr %loop.idx.34, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load18
  br i1 %loop.cond, label %loop.body.34, label %loop.exit.nat.34

loop.body.34:                                     ; preds = %loop.header.34
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.34, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load19 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %str.tag22 = lshr i64 %s.read.len20, 48
  %str.immortal23 = icmp eq i64 %str.tag22, 0
  br i1 %str.immortal23, label %str_ok25, label %str_gen_check24

loop.exit.nat.34:                                 ; preds = %loop.header.34
  br label %loop.exit.34

loop.latch.34:                                    ; preds = %choice.exit57
  %step.val = load i64, ptr %loop.step.34, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.34, align 8
  br label %loop.header.34

loop.exit.34:                                     ; preds = %choice.exit63, %loop.exit.nat.34
  %var.load65 = load i64, ptr %"var.r'", align 8
  %cmptmp66 = icmp ne i64 %var.load65, 0
  br i1 %cmptmp66, label %choice.then67, label %choice.else68

str_gen_check24:                                  ; preds = %loop.body.34
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %loop.body.34
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load19, i32 0, i32 1
  %s.read.data29 = load ptr, ptr %s.read.data, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load30, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale26:                                      ; preds = %str_gen_check24
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok25

idx_big_check:                                    ; preds = %str_ok25
  %idx.big = icmp sge i64 %var.load30, %s.read.len21
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data29, i64 %var.load30
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ca, align 8
  %var.load31 = load ptr, ptr %var.b, align 8
  %s.read.len32 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 0
  %s.read.len33 = load i64, ptr %s.read.len32, align 8
  %s.read.len34 = and i64 %s.read.len33, 281474976710655
  %str.tag35 = lshr i64 %s.read.len33, 48
  %str.immortal36 = icmp eq i64 %str.tag35, 0
  br i1 %str.immortal36, label %str_ok38, label %str_gen_check37

idx_oob:                                          ; preds = %idx_big_check, %str_ok25
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check37:                                  ; preds = %idx_ok
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid41 = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %str.tag35)
  br i1 %tag.valid41, label %str_ok38, label %str_stale39

str_ok38:                                         ; preds = %str_stale39, %str_gen_check37, %idx_ok
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %var.load44 = load i64, ptr %var.i, align 8
  %idx.neg45 = icmp slt i64 %var.load44, 0
  br i1 %idx.neg45, label %idx_oob48, label %idx_big_check46

str_stale39:                                      ; preds = %str_gen_check37
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok38

idx_big_check46:                                  ; preds = %str_ok38
  %idx.big49 = icmp sge i64 %var.load44, %s.read.len34
  br i1 %idx.big49, label %idx_oob48, label %idx_ok47

idx_ok47:                                         ; preds = %idx_oob48, %idx_big_check46
  %s.byte.gep50 = getelementptr i8, ptr %s.read.data43, i64 %var.load44
  %s.byte51 = load i8, ptr %s.byte.gep50, align 1
  %s.byte.val52 = zext i8 %s.byte51 to i64
  store i64 %s.byte.val52, ptr %var.cb, align 8
  %var.load53 = load i64, ptr %var.ca, align 8
  %var.load54 = load i64, ptr %var.cb, align 8
  %cmptmp55 = icmp ne i64 %var.load53, %var.load54
  br i1 %cmptmp55, label %choice.then56, label %choice.exit57

idx_oob48:                                        ; preds = %idx_big_check46, %str_ok38
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok47

choice.then56:                                    ; preds = %idx_ok47
  %var.load58 = load i64, ptr %var.ca, align 8
  %var.load59 = load i64, ptr %var.cb, align 8
  %cmptmp60 = icmp slt i64 %var.load58, %var.load59
  br i1 %cmptmp60, label %choice.then61, label %choice.else62

choice.exit57:                                    ; preds = %idx_ok47
  br label %loop.latch.34

choice.then61:                                    ; preds = %choice.then56
  br label %choice.exit63

choice.else62:                                    ; preds = %choice.then56
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else62, %choice.then61
  %choice.res64 = phi i64 [ -1, %choice.then61 ], [ 1, %choice.else62 ]
  store i64 %choice.res64, ptr %"var.r'", align 8
  br label %loop.exit.34

choice.then67:                                    ; preds = %loop.exit.34
  %var.load70 = load i64, ptr %"var.r'", align 8
  br label %choice.exit69

choice.else68:                                    ; preds = %loop.exit.34
  %var.load71 = load i64, ptr %var.la, align 8
  %var.load72 = load i64, ptr %var.lb, align 8
  %cmptmp73 = icmp eq i64 %var.load71, %var.load72
  br i1 %cmptmp73, label %choice.then74, label %choice.else75

choice.exit69:                                    ; preds = %choice.exit76, %choice.then67
  %choice.res85 = phi i64 [ %var.load70, %choice.then67 ], [ %choice.res84, %choice.exit76 ]
  ret i64 %choice.res85

choice.then74:                                    ; preds = %choice.else68
  br label %choice.exit76

choice.else75:                                    ; preds = %choice.else68
  %var.load77 = load i64, ptr %var.la, align 8
  %var.load78 = load i64, ptr %var.lb, align 8
  %cmptmp79 = icmp slt i64 %var.load77, %var.load78
  br i1 %cmptmp79, label %choice.then80, label %choice.else81

choice.exit76:                                    ; preds = %choice.exit82, %choice.then74
  %choice.res84 = phi i64 [ 0, %choice.then74 ], [ %choice.res83, %choice.exit82 ]
  br label %choice.exit69

choice.then80:                                    ; preds = %choice.else75
  br label %choice.exit82

choice.else81:                                    ; preds = %choice.else75
  br label %choice.exit82

choice.exit82:                                    ; preds = %choice.else81, %choice.then80
  %choice.res83 = phi i64 [ -1, %choice.then80 ], [ 1, %choice.else81 ]
  br label %choice.exit76
}

define i1 @"str::lt"(ptr %0, ptr %1) #1 {
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

define ptr @"str::to_int"(ptr %0) #1 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.b = alloca i64, align 8
  %loop.step.35 = alloca i64, align 8
  %loop.idx.35 = alloca i64, align 8
  %"var.val'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.val'", align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %str.tag = lshr i64 %str.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.35, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.35

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.35:                                   ; preds = %loop.latch.35, %str_ok
  %counter.load = load i64, ptr %loop.idx.35, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.35, label %loop.exit.nat.35

loop.body.35:                                     ; preds = %loop.header.35
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.35, align 8
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

loop.exit.nat.35:                                 ; preds = %loop.header.35
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.35

loop.latch.35:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.35, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.35, align 8
  br label %loop.header.35

loop.exit.35:                                     ; preds = %choice.then, %loop.exit.nat.35
  %var.load7 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load7, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.35
  br label %loop.exit.35

choice.exit:                                      ; preds = %loop.body.35
  %var.load5 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load5, 10
  %var.load6 = load i64, ptr %var.b, align 8
  %subtmp = sub i64 %var.load6, 48
  %addtmp = add i64 %multmp, %subtmp
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %loop.latch.35

choice.exit8:                                     ; preds = %choice.next, %ret.dead
  %var.load9 = load i64, ptr %"var.val'", align 8
  %var.load10 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

choice.case:                                      ; preds = %loop.exit.35
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

choice.next:                                      ; preds = %loop.exit.35
  br label %choice.exit8

ret.dead:                                         ; No predecessors!
  br label %choice.exit8

str_gen_check15:                                  ; preds = %choice.exit8
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag13)
  br i1 %tag.valid19, label %str_ok16, label %str_stale17

str_ok16:                                         ; preds = %str_stale17, %str_gen_check15, %choice.exit8
  %s.read.data20 = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 1
  %s.read.data21 = load ptr, ptr %s.read.data20, align 8
  %var.load22 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load22, 0
  %rel.start = add i64 %s.read.len12, %var.load22
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load22
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
  %view.data = getelementptr i8, ptr %s.read.data21, i64 %final.start
  %arena.cur23 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur24 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load9, ptr %rec.fld, align 8
  %rec.fld25 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld25, align 8
  ret ptr %rec.alloc

str_stale17:                                      ; preds = %str_gen_check15
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok16
}

define ptr @"str::to_hex"(ptr %0) #1 {
entry:
  %var.digit = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.b = alloca i64, align 8
  %loop.step.36 = alloca i64, align 8
  %loop.idx.36 = alloca i64, align 8
  %"var.val'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 0, ptr %"var.val'", align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len1 = load i64, ptr %str.len, align 8
  %str.len2 = and i64 %str.len1, 281474976710655
  %str.tag = lshr i64 %str.len1, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data3 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.36, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.36

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.36:                                   ; preds = %loop.latch.36, %str_ok
  %counter.load = load i64, ptr %loop.idx.36, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.36, label %loop.exit.nat.36

loop.body.36:                                     ; preds = %loop.header.36
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.36, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data3, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.b, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load4 = load i64, ptr %var.b, align 8
  %call.res = call i1 @"str::is_hex"(i64 %var.load4)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

loop.exit.nat.36:                                 ; preds = %loop.header.36
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.36

loop.latch.36:                                    ; preds = %choice.exit8
  %step.val = load i64, ptr %loop.step.36, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %choice.then, %loop.exit.nat.36
  %var.load25 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load25, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.36
  br label %loop.exit.36

choice.exit:                                      ; preds = %loop.body.36
  %var.load5 = load i64, ptr %var.b, align 8
  %call.res6 = call i1 @"str::is_digit"(i64 %var.load5)
  br i1 %call.res6, label %choice.then7, label %choice.else

choice.then7:                                     ; preds = %choice.exit
  %var.load9 = load i64, ptr %var.b, align 8
  %subtmp = sub i64 %var.load9, 48
  br label %choice.exit8

choice.else:                                      ; preds = %choice.exit
  %var.load10 = load i64, ptr %var.b, align 8
  %cmptmp = icmp sge i64 %var.load10, 65
  br i1 %cmptmp, label %and.37.then, label %and.37.else

choice.exit8:                                     ; preds = %choice.exit15, %choice.then7
  %choice.res21 = phi i64 [ %subtmp, %choice.then7 ], [ %choice.res, %choice.exit15 ]
  store i64 %choice.res21, ptr %var.digit, align 8
  %var.load22 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load22, 16
  %var.load23 = load i64, ptr %var.digit, align 8
  %addtmp24 = add i64 %multmp, %var.load23
  store i64 %addtmp24, ptr %"var.val'", align 8
  br label %loop.latch.36

and.37.then:                                      ; preds = %choice.else
  %var.load11 = load i64, ptr %var.b, align 8
  %cmptmp12 = icmp sle i64 %var.load11, 70
  br label %and.37.exit

and.37.else:                                      ; preds = %choice.else
  br label %and.37.exit

and.37.exit:                                      ; preds = %and.37.else, %and.37.then
  %and.37.phi = phi i1 [ %cmptmp12, %and.37.then ], [ %cmptmp, %and.37.else ]
  br i1 %and.37.phi, label %choice.then13, label %choice.else14

choice.then13:                                    ; preds = %and.37.exit
  %var.load16 = load i64, ptr %var.b, align 8
  %subtmp17 = sub i64 %var.load16, 65
  %addtmp = add i64 %subtmp17, 10
  br label %choice.exit15

choice.else14:                                    ; preds = %and.37.exit
  %var.load18 = load i64, ptr %var.b, align 8
  %subtmp19 = sub i64 %var.load18, 97
  %addtmp20 = add i64 %subtmp19, 10
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res = phi i64 [ %addtmp, %choice.then13 ], [ %addtmp20, %choice.else14 ]
  br label %choice.exit8

choice.exit26:                                    ; preds = %choice.next, %ret.dead
  %var.load27 = load i64, ptr %"var.val'", align 8
  %var.load28 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %s.read.len29 = load i64, ptr %s.read.len, align 8
  %s.read.len30 = and i64 %s.read.len29, 281474976710655
  %str.tag31 = lshr i64 %s.read.len29, 48
  %str.immortal32 = icmp eq i64 %str.tag31, 0
  br i1 %str.immortal32, label %str_ok34, label %str_gen_check33

choice.case:                                      ; preds = %loop.exit.36
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

choice.next:                                      ; preds = %loop.exit.36
  br label %choice.exit26

ret.dead:                                         ; No predecessors!
  br label %choice.exit26

str_gen_check33:                                  ; preds = %choice.exit26
  %arena.cur36 = call ptr @dva_arena_current()
  %tag.valid37 = call i1 @dva_arena_validate_tag(ptr %arena.cur36, i64 %str.tag31)
  br i1 %tag.valid37, label %str_ok34, label %str_stale35

str_ok34:                                         ; preds = %str_stale35, %str_gen_check33, %choice.exit26
  %s.read.data38 = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %s.read.data39 = load ptr, ptr %s.read.data38, align 8
  %var.load40 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load40, 0
  %rel.start = add i64 %s.read.len30, %var.load40
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load40
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len30
  %final.start = select i1 %start.gt.len, i64 %s.read.len30, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len30, 0
  %rel.end = add i64 %s.read.len30, %s.read.len30
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len30
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len30
  %final.end = select i1 %end.gt.len, i64 %s.read.len30, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data39, i64 %final.start
  %arena.cur41 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur42 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load27, ptr %rec.fld, align 8
  %rec.fld43 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld43, align 8
  ret ptr %rec.alloc

str_stale35:                                      ; preds = %str_gen_check33
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok34
}

define ptr @"str::hex_to_str"(i64 %0) #1 {
entry:
  %var._128 = alloca i64, align 8
  %var._i127 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.41 = alloca i64, align 8
  %loop.idx.41 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var.digit = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.38 = alloca i64, align 8
  %loop.idx.38 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
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
  ret ptr @str.4.struct

choice.next:                                      ; preds = %entry
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len1:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur2 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load3 = load i64, ptr %var.val, align 8
  store i64 %var.load3, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.38, align 8
  br label %loop.header.38

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

loop.header.38:                                   ; preds = %loop.latch.38, %b.buf.len1
  %counter.load = load i64, ptr %loop.idx.38, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.38, label %loop.exit.nat.38

loop.body.38:                                     ; preds = %loop.header.38
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.38, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.n'", align 8
  %cmptmp = icmp sgt i64 %var.load4, 0
  br i1 %cmptmp, label %choice.case6, label %choice.next7

loop.exit.nat.38:                                 ; preds = %loop.header.38
  br label %loop.exit.38

loop.latch.38:                                    ; preds = %choice.exit5
  %step.val = load i64, ptr %loop.step.38, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.38, align 8
  br label %loop.header.38

loop.exit.38:                                     ; preds = %choice.next7, %loop.exit.nat.38
  %b.load37 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 0
  %b.rn.cur.len38 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len38, i64 1)
  %sum39 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf40 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf40, label %str_overflow_abort42, label %b.rn.new.len41

choice.exit5:                                     ; preds = %div.ok35
  br label %loop.latch.38

choice.case6:                                     ; preds = %loop.body.38
  %var.load8 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next7:                                     ; preds = %loop.body.38
  br label %loop.exit.38

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case6
  %div.is.min = icmp eq i64 %var.load8, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.case6
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %var.load8, 16
  store i64 %modtmp, ptr %var.digit, align 8
  %var.load9 = load i64, ptr %var.digit, align 8
  %cmptmp13 = icmp slt i64 %var.load9, 10
  br i1 %cmptmp13, label %choice.case11, label %choice.next12

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

choice.exit10:                                    ; preds = %choice.next12, %choice.case11
  %choice.res = phi i64 [ %addtmp, %choice.case11 ], [ %addtmp16, %choice.next12 ]
  store i64 %choice.res, ptr %var.ch, align 8
  %var.load17 = load i64, ptr %var.ch, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load18 = load i64, ptr %var.ch, align 8
  %b.b.ge0 = icmp sge i64 %var.load18, 0
  %b.b.le255 = icmp sle i64 %var.load18, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.case11:                                    ; preds = %div.ok
  %var.load14 = load i64, ptr %var.digit, align 8
  %addtmp = add i64 48, %var.load14
  br label %choice.exit10

choice.next12:                                    ; preds = %div.ok
  %var.load15 = load i64, ptr %var.digit, align 8
  %subtmp = sub i64 %var.load15, 10
  %addtmp16 = add i64 65, %subtmp
  br label %choice.exit10

b.byte_ok:                                        ; preds = %b.byte_err, %choice.exit10
  %b.byte.i8 = trunc i64 %var.load18 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len19 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap20 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data21 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len19, %b.cap20
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.exit10
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %b.cur.data27 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len28 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data27, i64 %b.cur.len28
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len28, 1
  %b.nul = getelementptr i8, ptr %b.cur.data27, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep29 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep29, align 8
  %var.load30 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort32, label %div.not_zero31

b.new.buf.len24:                                  ; preds = %str_overflow_abort25, %b.grow
  %arena.cur26 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %sum22)
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
  br label %b.new.buf.len24

div.not_zero31:                                   ; preds = %div.zero_abort32, %b.push_done
  %div.is.min33 = icmp eq i64 %var.load30, -9223372036854775808
  %div.is.ovf34 = and i1 %div.is.min33, false
  br i1 %div.is.ovf34, label %div.ovf_abort36, label %div.ok35

div.zero_abort32:                                 ; preds = %b.push_done
  %6 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero31

div.ok35:                                         ; preds = %div.ovf_abort36, %div.not_zero31
  %divtmp = sdiv i64 %var.load30, 16
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit5

div.ovf_abort36:                                  ; preds = %div.not_zero31
  %7 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok35

b.rn.new.len41:                                   ; preds = %str_overflow_abort42, %loop.exit.38
  %b.cap43 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 2
  %b.cap44 = load i64, ptr %b.cap43, align 8
  %b.need.grow = icmp slt i64 %b.cap44, %sum39
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort42:                             ; preds = %loop.exit.38
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len41

b.grow2:                                          ; preds = %b.rn.new.len41
  %b.cap245 = mul i64 %b.cap44, 2
  %b.cap.small46 = icmp slt i64 %b.cap245, 16
  %b.cap.grow = select i1 %b.cap.small46, i64 16, i64 %b.cap245
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum39
  %b.new.cap47 = select i1 %b.cap.need, i64 %sum39, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 0
  %b.cur.len248 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 1
  %b.cur.data249 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap47, i64 1)
  %sum50 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf51 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf51, label %str_overflow_abort53, label %b.new.buf.len252

b.nogrow2:                                        ; preds = %b.rn.new.len41
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len252
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 1
  %b.rn.data55 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data55, i64 %b.rn.cur.len38
  br i1 true, label %br.b1.39, label %br.c2.39

b.new.buf.len252:                                 ; preds = %str_overflow_abort53, %b.grow2
  %arena.cur54 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 %sum50)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data249, i64 %b.cur.len248, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len248
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 2
  store i64 %b.new.cap47, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort53:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len252

br.b1.39:                                         ; preds = %b.grow_done
  store i8 120, ptr %b.rn.dst, align 1
  br label %br.done.39

br.c2.39:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.39, label %br.c3.39

br.b2.39:                                         ; preds = %br.c2.39
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -72, ptr %br.dst1, align 1
  br label %br.done.39

br.c3.39:                                         ; preds = %br.c2.39
  br i1 true, label %br.b3.39, label %br.b4.39

br.b3.39:                                         ; preds = %br.c3.39
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -72, ptr %br.dst2.3, align 1
  br label %br.done.39

br.b4.39:                                         ; preds = %br.c3.39
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -72, ptr %br.dst3.4, align 1
  br label %br.done.39

br.done.39:                                       ; preds = %br.b4.39, %br.b3.39, %br.b2.39, %br.b1.39
  %br.nul = getelementptr i8, ptr %b.rn.data55, i64 %sum39
  store i8 0, ptr %br.nul, align 1
  %b.len.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load37, i32 0, i32 0
  store i64 %sum39, ptr %b.len.gep56, align 8
  %b.load57 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load57, i32 0, i32 0
  %b.rn.cur.len59 = load i64, ptr %b.rn.cur.len58, align 8
  %b.rn.new.len60 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len59, i64 1)
  %sum61 = extractvalue { i64, i1 } %b.rn.new.len60, 0
  %ovf62 = extractvalue { i64, i1 } %b.rn.new.len60, 1
  br i1 %ovf62, label %str_overflow_abort64, label %b.rn.new.len63

b.rn.new.len63:                                   ; preds = %str_overflow_abort64, %br.done.39
  %b.cap65 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load57, i32 0, i32 2
  %b.cap66 = load i64, ptr %b.cap65, align 8
  %b.need.grow67 = icmp slt i64 %b.cap66, %sum61
  br i1 %b.need.grow67, label %b.grow268, label %b.nogrow269

str_overflow_abort64:                             ; preds = %br.done.39
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len63

b.grow268:                                        ; preds = %b.rn.new.len63
  %b.cap271 = mul i64 %b.cap66, 2
  %b.cap.small72 = icmp slt i64 %b.cap271, 16
  %b.cap.grow73 = select i1 %b.cap.small72, i64 16, i64 %b.cap271
  %b.cap.need74 = icmp slt i64 %b.cap.grow73, %sum61
  %b.new.cap75 = select i1 %b.cap.need74, i64 %sum61, i64 %b.cap.grow73
  %b.cur.len276 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load57, i32 0, i32 0
  %b.cur.len277 = load i64, ptr %b.cur.len276, align 8
  %b.cur.data278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load57, i32 0, i32 1
  %b.cur.data279 = load ptr, ptr %b.cur.data278, align 8
  %b.new.buf.len280 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap75, i64 1)
  %sum81 = extractvalue { i64, i1 } %b.new.buf.len280, 0
  %ovf82 = extractvalue { i64, i1 } %b.new.buf.len280, 1
  br i1 %ovf82, label %str_overflow_abort84, label %b.new.buf.len283

b.nogrow269:                                      ; preds = %b.rn.new.len63
  br label %b.grow_done70

b.grow_done70:                                    ; preds = %b.nogrow269, %b.new.buf.len283
  %b.rn.data90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load57, i32 0, i32 1
  %b.rn.data91 = load ptr, ptr %b.rn.data90, align 8
  %b.rn.dst92 = getelementptr i8, ptr %b.rn.data91, i64 %b.rn.cur.len59
  br i1 true, label %br.b1.40, label %br.c2.40

b.new.buf.len283:                                 ; preds = %str_overflow_abort84, %b.grow268
  %arena.cur85 = call ptr @dva_arena_current()
  %b.new.buf286 = call ptr @dva_arena_alloc(ptr %arena.cur85, i64 %sum81)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf286, ptr align 1 %b.cur.data279, i64 %b.cur.len277, i1 false)
  %b.grow2.nul87 = getelementptr i8, ptr %b.new.buf286, i64 %b.cur.len277
  store i8 0, ptr %b.grow2.nul87, align 1
  %b.new.data2.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load57, i32 0, i32 1
  store ptr %b.new.buf286, ptr %b.new.data2.gep88, align 8
  %b.new.cap2.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load57, i32 0, i32 2
  store i64 %b.new.cap75, ptr %b.new.cap2.gep89, align 8
  br label %b.grow_done70

str_overflow_abort84:                             ; preds = %b.grow268
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len283

br.b1.40:                                         ; preds = %b.grow_done70
  store i8 48, ptr %b.rn.dst92, align 1
  br label %br.done.40

br.c2.40:                                         ; preds = %b.grow_done70
  br i1 true, label %br.b2.40, label %br.c3.40

br.b2.40:                                         ; preds = %br.c2.40
  store i8 -64, ptr %b.rn.dst92, align 1
  %br.dst193 = getelementptr i8, ptr %b.rn.dst92, i64 1
  store i8 -80, ptr %br.dst193, align 1
  br label %br.done.40

br.c3.40:                                         ; preds = %br.c2.40
  br i1 true, label %br.b3.40, label %br.b4.40

br.b3.40:                                         ; preds = %br.c3.40
  store i8 -32, ptr %b.rn.dst92, align 1
  %br.dst1.394 = getelementptr i8, ptr %b.rn.dst92, i64 1
  store i8 -128, ptr %br.dst1.394, align 1
  %br.dst2.395 = getelementptr i8, ptr %b.rn.dst92, i64 2
  store i8 -80, ptr %br.dst2.395, align 1
  br label %br.done.40

br.b4.40:                                         ; preds = %br.c3.40
  store i8 -16, ptr %b.rn.dst92, align 1
  %br.dst1.496 = getelementptr i8, ptr %b.rn.dst92, i64 1
  store i8 -128, ptr %br.dst1.496, align 1
  %br.dst2.497 = getelementptr i8, ptr %b.rn.dst92, i64 2
  store i8 -128, ptr %br.dst2.497, align 1
  %br.dst3.498 = getelementptr i8, ptr %b.rn.dst92, i64 3
  store i8 -80, ptr %br.dst3.498, align 1
  br label %br.done.40

br.done.40:                                       ; preds = %br.b4.40, %br.b3.40, %br.b2.40, %br.b1.40
  %br.nul99 = getelementptr i8, ptr %b.rn.data91, i64 %sum61
  store i8 0, ptr %br.nul99, align 1
  %b.len.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load57, i32 0, i32 0
  store i64 %sum61, ptr %b.len.gep100, align 8
  %var.load101 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 0
  %b.freeze.len102 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 1
  %b.freeze.data103 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.40
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data103, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data103, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data103, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur104 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 %b.freeze.len102)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data103, i64 %b.freeze.len102, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.40
  %b.freeze.data105 = phi ptr [ %b.freeze.data103, %br.done.40 ], [ %b.freeze.data103, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur106 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len102, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data105, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load101, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur107 = call ptr @dva_arena_current()
  %builder.new108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 24)
  %b.data.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new108, i32 0, i32 1
  %b.len.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new108, i32 0, i32 0
  %b.cap.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new108, i32 0, i32 2
  %b.buf.len112 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum113 = extractvalue { i64, i1 } %b.buf.len112, 0
  %ovf114 = extractvalue { i64, i1 } %b.buf.len112, 1
  br i1 %ovf114, label %str_overflow_abort116, label %b.buf.len115

b.buf.len115:                                     ; preds = %str_overflow_abort116, %b.freeze.done
  %arena.cur117 = call ptr @dva_arena_current()
  %b.buf118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 %sum113)
  %b.nul0119 = getelementptr i8, ptr %b.buf118, i64 0
  store i8 0, ptr %b.nul0119, align 1
  store i64 0, ptr %b.len.gep110, align 8
  store ptr %b.buf118, ptr %b.data.gep109, align 8
  store i64 32, ptr %b.cap.gep111, align 8
  store ptr %builder.new108, ptr %var.out, align 8
  %var.load120 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load120, i32 0, i32 0
  %str.len.query121 = load i64, ptr %str.len.query, align 8
  %str.len.query122 = and i64 %str.len.query121, 281474976710655
  %str.tag = lshr i64 %str.len.query121, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort116:                            ; preds = %b.freeze.done
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len115

str_gen_check:                                    ; preds = %b.buf.len115
  %arena.cur123 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur123, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len115
  store i64 0, ptr %loop.idx.41, align 8
  br label %loop.header.41

str_stale:                                        ; preds = %str_gen_check
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.41:                                   ; preds = %loop.latch.41, %str_ok
  %counter.load124 = load i64, ptr %loop.idx.41, align 8
  %loop.cond125 = icmp slt i64 %counter.load124, %str.len.query122
  br i1 %loop.cond125, label %loop.body.41, label %loop.exit.nat.41

loop.body.41:                                     ; preds = %loop.header.41
  %loop.rel.i126 = sub i64 %counter.load124, 0
  store i64 1, ptr %loop.step.41, align 8
  store i64 %loop.rel.i126, ptr %var._i127, align 8
  store i64 %counter.load124, ptr %var._128, align 8
  store i64 %counter.load124, ptr %var.i, align 8
  %var.load129 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load129, i32 0, i32 0
  %s.read.len130 = load i64, ptr %s.read.len, align 8
  %s.read.len131 = and i64 %s.read.len130, 281474976710655
  %str.tag132 = lshr i64 %s.read.len130, 48
  %str.immortal133 = icmp eq i64 %str.tag132, 0
  br i1 %str.immortal133, label %str_ok135, label %str_gen_check134

loop.exit.nat.41:                                 ; preds = %loop.header.41
  br label %loop.exit.41

loop.latch.41:                                    ; preds = %b.push_done205
  %step.val227 = load i64, ptr %loop.step.41, align 8
  %loop.next228 = add i64 %counter.load124, %step.val227
  store i64 %loop.next228, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.exit.41:                                     ; preds = %loop.exit.nat.41
  %var.load229 = load ptr, ptr %var.out, align 8
  %b.freeze.len230 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 0
  %b.freeze.len231 = load i64, ptr %b.freeze.len230, align 8
  %b.freeze.data232 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 1
  %b.freeze.data233 = load ptr, ptr %b.freeze.data232, align 8
  %b.freeze.arena234 = call ptr @dva_arena_current()
  %b.freeze.nc.gep235 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena234, i32 0, i32 1
  %b.freeze.nc236 = load i64, ptr %b.freeze.nc.gep235, align 8
  %b.freeze.has.chunk237 = icmp sgt i64 %b.freeze.nc236, 0
  br i1 %b.freeze.has.chunk237, label %b.freeze.check238, label %b.freeze.done240

str_gen_check134:                                 ; preds = %loop.body.41
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %str.tag132)
  br i1 %tag.valid138, label %str_ok135, label %str_stale136

str_ok135:                                        ; preds = %str_stale136, %str_gen_check134, %loop.body.41
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load129, i32 0, i32 1
  %s.read.data139 = load ptr, ptr %s.read.data, align 8
  %var.load140 = load ptr, ptr %var.s, align 8
  %str.len.query141 = getelementptr inbounds { i64, ptr }, ptr %var.load140, i32 0, i32 0
  %str.len.query142 = load i64, ptr %str.len.query141, align 8
  %str.len.query143 = and i64 %str.len.query142, 281474976710655
  %str.tag144 = lshr i64 %str.len.query142, 48
  %str.immortal145 = icmp eq i64 %str.tag144, 0
  br i1 %str.immortal145, label %str_ok147, label %str_gen_check146

str_stale136:                                     ; preds = %str_gen_check134
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok135

str_gen_check146:                                 ; preds = %str_ok135
  %arena.cur149 = call ptr @dva_arena_current()
  %tag.valid150 = call i1 @dva_arena_validate_tag(ptr %arena.cur149, i64 %str.tag144)
  br i1 %tag.valid150, label %str_ok147, label %str_stale148

str_ok147:                                        ; preds = %str_stale148, %str_gen_check146, %str_ok135
  %subtmp151 = sub i64 %str.len.query143, 1
  %var.load152 = load i64, ptr %var.i, align 8
  %subtmp153 = sub i64 %subtmp151, %var.load152
  %idx.neg = icmp slt i64 %subtmp153, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale148:                                     ; preds = %str_gen_check146
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok147

idx_big_check:                                    ; preds = %str_ok147
  %idx.big = icmp sge i64 %subtmp153, %s.read.len131
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data139, i64 %subtmp153
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load154 = load ptr, ptr %var.out, align 8
  %var.load155 = load ptr, ptr %var.s, align 8
  %s.read.len156 = getelementptr inbounds { i64, ptr }, ptr %var.load155, i32 0, i32 0
  %s.read.len157 = load i64, ptr %s.read.len156, align 8
  %s.read.len158 = and i64 %s.read.len157, 281474976710655
  %str.tag159 = lshr i64 %s.read.len157, 48
  %str.immortal160 = icmp eq i64 %str.tag159, 0
  br i1 %str.immortal160, label %str_ok162, label %str_gen_check161

idx_oob:                                          ; preds = %idx_big_check, %str_ok147
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check161:                                 ; preds = %idx_ok
  %arena.cur164 = call ptr @dva_arena_current()
  %tag.valid165 = call i1 @dva_arena_validate_tag(ptr %arena.cur164, i64 %str.tag159)
  br i1 %tag.valid165, label %str_ok162, label %str_stale163

str_ok162:                                        ; preds = %str_stale163, %str_gen_check161, %idx_ok
  %s.read.data166 = getelementptr inbounds { i64, ptr }, ptr %var.load155, i32 0, i32 1
  %s.read.data167 = load ptr, ptr %s.read.data166, align 8
  %var.load168 = load ptr, ptr %var.s, align 8
  %str.len.query169 = getelementptr inbounds { i64, ptr }, ptr %var.load168, i32 0, i32 0
  %str.len.query170 = load i64, ptr %str.len.query169, align 8
  %str.len.query171 = and i64 %str.len.query170, 281474976710655
  %str.tag172 = lshr i64 %str.len.query170, 48
  %str.immortal173 = icmp eq i64 %str.tag172, 0
  br i1 %str.immortal173, label %str_ok175, label %str_gen_check174

str_stale163:                                     ; preds = %str_gen_check161
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok162

str_gen_check174:                                 ; preds = %str_ok162
  %arena.cur177 = call ptr @dva_arena_current()
  %tag.valid178 = call i1 @dva_arena_validate_tag(ptr %arena.cur177, i64 %str.tag172)
  br i1 %tag.valid178, label %str_ok175, label %str_stale176

str_ok175:                                        ; preds = %str_stale176, %str_gen_check174, %str_ok162
  %subtmp179 = sub i64 %str.len.query171, 1
  %var.load180 = load i64, ptr %var.i, align 8
  %subtmp181 = sub i64 %subtmp179, %var.load180
  %idx.neg182 = icmp slt i64 %subtmp181, 0
  br i1 %idx.neg182, label %idx_oob185, label %idx_big_check183

str_stale176:                                     ; preds = %str_gen_check174
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok175

idx_big_check183:                                 ; preds = %str_ok175
  %idx.big186 = icmp sge i64 %subtmp181, %s.read.len158
  br i1 %idx.big186, label %idx_oob185, label %idx_ok184

idx_ok184:                                        ; preds = %idx_oob185, %idx_big_check183
  %s.byte.gep187 = getelementptr i8, ptr %s.read.data167, i64 %subtmp181
  %s.byte188 = load i8, ptr %s.byte.gep187, align 1
  %s.byte.val189 = zext i8 %s.byte188 to i64
  %b.b.ge0190 = icmp sge i64 %s.byte.val189, 0
  %b.b.le255191 = icmp sle i64 %s.byte.val189, 255
  %b.byte.range192 = and i1 %b.b.ge0190, %b.b.le255191
  br i1 %b.byte.range192, label %b.byte_ok193, label %b.byte_err194

idx_oob185:                                       ; preds = %idx_big_check183, %str_ok175
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok184

b.byte_ok193:                                     ; preds = %b.byte_err194, %idx_ok184
  %b.byte.i8195 = trunc i64 %s.byte.val189 to i8
  %b.len196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 0
  %b.len197 = load i64, ptr %b.len196, align 8
  %b.cap198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 2
  %b.cap199 = load i64, ptr %b.cap198, align 8
  %b.data200 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 1
  %b.data201 = load ptr, ptr %b.data200, align 8
  %b.needs.grow202 = icmp eq i64 %b.len197, %b.cap199
  br i1 %b.needs.grow202, label %b.grow203, label %b.nogrow204

b.byte_err194:                                    ; preds = %idx_ok184
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok193

b.grow203:                                        ; preds = %b.byte_ok193
  %b.cap2206 = mul i64 %b.cap199, 2
  %b.cap.small207 = icmp slt i64 %b.cap2206, 16
  %b.new.cap208 = select i1 %b.cap.small207, i64 16, i64 %b.cap2206
  %b.new.buf.len209 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap208, i64 1)
  %sum210 = extractvalue { i64, i1 } %b.new.buf.len209, 0
  %ovf211 = extractvalue { i64, i1 } %b.new.buf.len209, 1
  br i1 %ovf211, label %str_overflow_abort213, label %b.new.buf.len212

b.nogrow204:                                      ; preds = %b.byte_ok193
  br label %b.push_done205

b.push_done205:                                   ; preds = %b.nogrow204, %b.new.buf.len212
  %b.cur.data219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 1
  %b.cur.data220 = load ptr, ptr %b.cur.data219, align 8
  %b.cur.len221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 0
  %b.cur.len222 = load i64, ptr %b.cur.len221, align 8
  %b.byte.gep223 = getelementptr i8, ptr %b.cur.data220, i64 %b.cur.len222
  store i8 %b.byte.i8195, ptr %b.byte.gep223, align 1
  %b.next.len224 = add i64 %b.cur.len222, 1
  %b.nul225 = getelementptr i8, ptr %b.cur.data220, i64 %b.next.len224
  store i8 0, ptr %b.nul225, align 1
  %b.len.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 0
  store i64 %b.next.len224, ptr %b.len.gep226, align 8
  br label %loop.latch.41

b.new.buf.len212:                                 ; preds = %str_overflow_abort213, %b.grow203
  %arena.cur214 = call ptr @dva_arena_current()
  %b.new.buf215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 %sum210)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf215, ptr align 1 %b.data201, i64 %b.len197, i1 false)
  %b.grow.nul216 = getelementptr i8, ptr %b.new.buf215, i64 %b.len197
  store i8 0, ptr %b.grow.nul216, align 1
  %b.new.data.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 1
  store ptr %b.new.buf215, ptr %b.new.data.gep217, align 8
  %b.new.cap.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load154, i32 0, i32 2
  store i64 %b.new.cap208, ptr %b.new.cap.gep218, align 8
  br label %b.push_done205

str_overflow_abort213:                            ; preds = %b.grow203
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len212

b.freeze.check238:                                ; preds = %loop.exit.41
  %b.freeze.last.idx241 = sub i64 %b.freeze.nc236, 1
  %b.freeze.chunks.gep242 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena234, i32 0, i32 3
  %b.freeze.chunk.slot243 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep242, i64 0, i64 %b.freeze.last.idx241
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
  %arena.cur256 = call ptr @dva_arena_current()
  %b.freeze.fresh257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 %b.freeze.len231)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh257, ptr align 1 %b.freeze.data233, i64 %b.freeze.len231, i1 false)
  br label %b.freeze.done240

b.freeze.done240:                                 ; preds = %b.freeze.copy239, %b.freeze.check238, %loop.exit.41
  %b.freeze.data258 = phi ptr [ %b.freeze.data233, %loop.exit.41 ], [ %b.freeze.data233, %b.freeze.check238 ], [ %b.freeze.fresh257, %b.freeze.copy239 ]
  %arena.cur259 = call ptr @dva_arena_current()
  %builder.freeze260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 16)
  %str.build.len.gep261 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze260, i32 0, i32 0
  store i64 %b.freeze.len231, ptr %str.build.len.gep261, align 8
  %str.build.data.gep262 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze260, i32 0, i32 1
  store ptr %b.freeze.data258, ptr %str.build.data.gep262, align 8
  %b.freeze.rst.len263 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len263, align 8
  %b.freeze.rst.data264 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data264, align 8
  %b.freeze.rst.cap265 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load229, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap265, align 8
  ret ptr %builder.freeze260
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
