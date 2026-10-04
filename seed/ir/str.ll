; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64 }
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
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
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
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
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
  %var._93 = alloca i64, align 8
  %var._i92 = alloca i64, align 8
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

choice.exit:                                      ; preds = %b.freeze.done213, %choice.case
  %choice.res239 = phi ptr [ @str.0.struct, %choice.case ], [ %builder.freeze233, %b.freeze.done213 ]
  ret ptr %choice.res239

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %str_overflow_abort, %choice.next
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

str_overflow_abort:                               ; preds = %choice.next
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
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
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
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen87 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen88 = load i64, ptr %arena.gen87, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen88
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len79
  store i64 0, ptr %loop.idx.15, align 8
  br label %loop.header.15

str_stale:                                        ; preds = %str_gen_check
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.15:                                   ; preds = %loop.latch.15, %str_ok
  %counter.load89 = load i64, ptr %loop.idx.15, align 8
  %loop.cond90 = icmp slt i64 %counter.load89, %str.len.query86
  br i1 %loop.cond90, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i91 = sub i64 %counter.load89, 0
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i91, ptr %var._i92, align 8
  store i64 %counter.load89, ptr %var._93, align 8
  store i64 %counter.load89, ptr %var.i, align 8
  %var.load94 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %s.read.len95 = load i64, ptr %s.read.len, align 8
  %s.read.len96 = and i64 %s.read.len95, 281474976710655
  %str.tag97 = lshr i64 %s.read.len95, 48
  %str.immortal98 = icmp eq i64 %str.tag97, 0
  br i1 %str.immortal98, label %str_ok100, label %str_gen_check99

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %b.push_done178
  %step.val200 = load i64, ptr %loop.step.15, align 8
  %loop.next201 = add i64 %counter.load89, %step.val200
  store i64 %loop.next201, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  %var.load202 = load ptr, ptr %var.out, align 8
  %b.freeze.len203 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load202, i32 0, i32 0
  %b.freeze.len204 = load i64, ptr %b.freeze.len203, align 8
  %b.freeze.data205 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load202, i32 0, i32 1
  %b.freeze.data206 = load ptr, ptr %b.freeze.data205, align 8
  %b.freeze.arena207 = call ptr @dva_arena_current()
  %b.freeze.nc.gep208 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena207, i32 0, i32 1
  %b.freeze.nc209 = load i64, ptr %b.freeze.nc.gep208, align 8
  %b.freeze.has.chunk210 = icmp sgt i64 %b.freeze.nc209, 0
  br i1 %b.freeze.has.chunk210, label %b.freeze.check211, label %b.freeze.done213

str_gen_check99:                                  ; preds = %loop.body.15
  %arena.gen102 = call ptr @dva_arena_current()
  %arena.gen103 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen102, i32 0, i32 4
  %arena.gen104 = load i64, ptr %arena.gen103, align 8
  %str.tag.match105 = icmp eq i64 %str.tag97, %arena.gen104
  br i1 %str.tag.match105, label %str_ok100, label %str_stale101

str_ok100:                                        ; preds = %str_stale101, %str_gen_check99, %loop.body.15
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 1
  %s.read.data106 = load ptr, ptr %s.read.data, align 8
  %var.load107 = load ptr, ptr %var.s, align 8
  %str.len.query108 = getelementptr inbounds { i64, ptr }, ptr %var.load107, i32 0, i32 0
  %str.len.query109 = load i64, ptr %str.len.query108, align 8
  %str.len.query110 = and i64 %str.len.query109, 281474976710655
  %str.tag111 = lshr i64 %str.len.query109, 48
  %str.immortal112 = icmp eq i64 %str.tag111, 0
  br i1 %str.immortal112, label %str_ok114, label %str_gen_check113

str_stale101:                                     ; preds = %str_gen_check99
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok100

str_gen_check113:                                 ; preds = %str_ok100
  %arena.gen116 = call ptr @dva_arena_current()
  %arena.gen117 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen116, i32 0, i32 4
  %arena.gen118 = load i64, ptr %arena.gen117, align 8
  %str.tag.match119 = icmp eq i64 %str.tag111, %arena.gen118
  br i1 %str.tag.match119, label %str_ok114, label %str_stale115

str_ok114:                                        ; preds = %str_stale115, %str_gen_check113, %str_ok100
  %subtmp120 = sub i64 %str.len.query110, 1
  %var.load121 = load i64, ptr %var.i, align 8
  %subtmp122 = sub i64 %subtmp120, %var.load121
  %idx.neg = icmp slt i64 %subtmp122, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale115:                                     ; preds = %str_gen_check113
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok114

idx_big_check:                                    ; preds = %str_ok114
  %idx.big = icmp sge i64 %subtmp122, %s.read.len96
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data106, i64 %subtmp122
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load123 = load ptr, ptr %var.out, align 8
  %var.load124 = load ptr, ptr %var.s, align 8
  %s.read.len125 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 0
  %s.read.len126 = load i64, ptr %s.read.len125, align 8
  %s.read.len127 = and i64 %s.read.len126, 281474976710655
  %str.tag128 = lshr i64 %s.read.len126, 48
  %str.immortal129 = icmp eq i64 %str.tag128, 0
  br i1 %str.immortal129, label %str_ok131, label %str_gen_check130

idx_oob:                                          ; preds = %idx_big_check, %str_ok114
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check130:                                 ; preds = %idx_ok
  %arena.gen133 = call ptr @dva_arena_current()
  %arena.gen134 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen133, i32 0, i32 4
  %arena.gen135 = load i64, ptr %arena.gen134, align 8
  %str.tag.match136 = icmp eq i64 %str.tag128, %arena.gen135
  br i1 %str.tag.match136, label %str_ok131, label %str_stale132

str_ok131:                                        ; preds = %str_stale132, %str_gen_check130, %idx_ok
  %s.read.data137 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 1
  %s.read.data138 = load ptr, ptr %s.read.data137, align 8
  %var.load139 = load ptr, ptr %var.s, align 8
  %str.len.query140 = getelementptr inbounds { i64, ptr }, ptr %var.load139, i32 0, i32 0
  %str.len.query141 = load i64, ptr %str.len.query140, align 8
  %str.len.query142 = and i64 %str.len.query141, 281474976710655
  %str.tag143 = lshr i64 %str.len.query141, 48
  %str.immortal144 = icmp eq i64 %str.tag143, 0
  br i1 %str.immortal144, label %str_ok146, label %str_gen_check145

str_stale132:                                     ; preds = %str_gen_check130
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok131

str_gen_check145:                                 ; preds = %str_ok131
  %arena.gen148 = call ptr @dva_arena_current()
  %arena.gen149 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen148, i32 0, i32 4
  %arena.gen150 = load i64, ptr %arena.gen149, align 8
  %str.tag.match151 = icmp eq i64 %str.tag143, %arena.gen150
  br i1 %str.tag.match151, label %str_ok146, label %str_stale147

str_ok146:                                        ; preds = %str_stale147, %str_gen_check145, %str_ok131
  %subtmp152 = sub i64 %str.len.query142, 1
  %var.load153 = load i64, ptr %var.i, align 8
  %subtmp154 = sub i64 %subtmp152, %var.load153
  %idx.neg155 = icmp slt i64 %subtmp154, 0
  br i1 %idx.neg155, label %idx_oob158, label %idx_big_check156

str_stale147:                                     ; preds = %str_gen_check145
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok146

idx_big_check156:                                 ; preds = %str_ok146
  %idx.big159 = icmp sge i64 %subtmp154, %s.read.len127
  br i1 %idx.big159, label %idx_oob158, label %idx_ok157

idx_ok157:                                        ; preds = %idx_oob158, %idx_big_check156
  %s.byte.gep160 = getelementptr i8, ptr %s.read.data138, i64 %subtmp154
  %s.byte161 = load i8, ptr %s.byte.gep160, align 1
  %s.byte.val162 = zext i8 %s.byte161 to i64
  %b.b.ge0163 = icmp sge i64 %s.byte.val162, 0
  %b.b.le255164 = icmp sle i64 %s.byte.val162, 255
  %b.byte.range165 = and i1 %b.b.ge0163, %b.b.le255164
  br i1 %b.byte.range165, label %b.byte_ok166, label %b.byte_err167

idx_oob158:                                       ; preds = %idx_big_check156, %str_ok146
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok157

b.byte_ok166:                                     ; preds = %b.byte_err167, %idx_ok157
  %b.byte.i8168 = trunc i64 %s.byte.val162 to i8
  %b.len169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 0
  %b.len170 = load i64, ptr %b.len169, align 8
  %b.cap171 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 2
  %b.cap172 = load i64, ptr %b.cap171, align 8
  %b.data173 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 1
  %b.data174 = load ptr, ptr %b.data173, align 8
  %b.needs.grow175 = icmp eq i64 %b.len170, %b.cap172
  br i1 %b.needs.grow175, label %b.grow176, label %b.nogrow177

b.byte_err167:                                    ; preds = %idx_ok157
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok166

b.grow176:                                        ; preds = %b.byte_ok166
  %b.cap2179 = mul i64 %b.cap172, 2
  %b.cap.small180 = icmp slt i64 %b.cap2179, 16
  %b.new.cap181 = select i1 %b.cap.small180, i64 16, i64 %b.cap2179
  %b.new.buf.len182 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap181, i64 1)
  %sum183 = extractvalue { i64, i1 } %b.new.buf.len182, 0
  %ovf184 = extractvalue { i64, i1 } %b.new.buf.len182, 1
  br i1 %ovf184, label %str_overflow_abort186, label %b.new.buf.len185

b.nogrow177:                                      ; preds = %b.byte_ok166
  br label %b.push_done178

b.push_done178:                                   ; preds = %b.nogrow177, %b.new.buf.len185
  %b.cur.data192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 1
  %b.cur.data193 = load ptr, ptr %b.cur.data192, align 8
  %b.cur.len194 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 0
  %b.cur.len195 = load i64, ptr %b.cur.len194, align 8
  %b.byte.gep196 = getelementptr i8, ptr %b.cur.data193, i64 %b.cur.len195
  store i8 %b.byte.i8168, ptr %b.byte.gep196, align 1
  %b.next.len197 = add i64 %b.cur.len195, 1
  %b.nul198 = getelementptr i8, ptr %b.cur.data193, i64 %b.next.len197
  store i8 0, ptr %b.nul198, align 1
  %b.len.gep199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 0
  store i64 %b.next.len197, ptr %b.len.gep199, align 8
  br label %loop.latch.15

b.new.buf.len185:                                 ; preds = %str_overflow_abort186, %b.grow176
  %arena.cur187 = call ptr @dva_arena_current()
  %b.new.buf188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 %sum183)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf188, ptr align 1 %b.data174, i64 %b.len170, i1 false)
  %b.grow.nul189 = getelementptr i8, ptr %b.new.buf188, i64 %b.len170
  store i8 0, ptr %b.grow.nul189, align 1
  %b.new.data.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 1
  store ptr %b.new.buf188, ptr %b.new.data.gep190, align 8
  %b.new.cap.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 2
  store i64 %b.new.cap181, ptr %b.new.cap.gep191, align 8
  br label %b.push_done178

str_overflow_abort186:                            ; preds = %b.grow176
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len185

b.freeze.check211:                                ; preds = %loop.exit.15
  %b.freeze.last.idx214 = sub i64 %b.freeze.nc209, 1
  %b.freeze.chunks.gep215 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena207, i32 0, i32 3
  %b.freeze.chunk.slot216 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep215, i64 0, i64 %b.freeze.last.idx214
  %b.freeze.last.chunk217 = load ptr, ptr %b.freeze.chunk.slot216, align 8
  %b.freeze.off.gep218 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena207, i32 0, i32 2
  %b.freeze.off219 = load i64, ptr %b.freeze.off.gep218, align 8
  %b.freeze.bump220 = getelementptr i8, ptr %b.freeze.last.chunk217, i64 %b.freeze.off219
  %b.freeze.cap.gep221 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena207, i32 0, i32 0
  %b.freeze.cap222 = load i64, ptr %b.freeze.cap.gep221, align 8
  %b.freeze.chunk.end223 = getelementptr i8, ptr %b.freeze.last.chunk217, i64 %b.freeze.cap222
  %b.freeze.ge.chunk224 = icmp uge ptr %b.freeze.data206, %b.freeze.last.chunk217
  %b.freeze.lt.end225 = icmp ult ptr %b.freeze.data206, %b.freeze.chunk.end223
  %b.freeze.in.chunk226 = and i1 %b.freeze.ge.chunk224, %b.freeze.lt.end225
  %b.freeze.ge.bump227 = icmp uge ptr %b.freeze.data206, %b.freeze.bump220
  %b.freeze.reaped228 = and i1 %b.freeze.in.chunk226, %b.freeze.ge.bump227
  br i1 %b.freeze.reaped228, label %b.freeze.copy212, label %b.freeze.done213

b.freeze.copy212:                                 ; preds = %b.freeze.check211
  %arena.cur229 = call ptr @dva_arena_current()
  %b.freeze.fresh230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 %b.freeze.len204)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh230, ptr align 1 %b.freeze.data206, i64 %b.freeze.len204, i1 false)
  br label %b.freeze.done213

b.freeze.done213:                                 ; preds = %b.freeze.copy212, %b.freeze.check211, %loop.exit.15
  %b.freeze.data231 = phi ptr [ %b.freeze.data206, %loop.exit.15 ], [ %b.freeze.data206, %b.freeze.check211 ], [ %b.freeze.fresh230, %b.freeze.copy212 ]
  %arena.cur232 = call ptr @dva_arena_current()
  %builder.freeze233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 16)
  %str.build.len.gep234 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze233, i32 0, i32 0
  store i64 %b.freeze.len204, ptr %str.build.len.gep234, align 8
  %str.build.data.gep235 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze233, i32 0, i32 1
  store ptr %b.freeze.data231, ptr %str.build.data.gep235, align 8
  %b.freeze.rst.len236 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load202, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len236, align 8
  %b.freeze.rst.data237 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load202, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data237, align 8
  %b.freeze.rst.cap238 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load202, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap238, align 8
  br label %choice.exit
}

define ptr @"str::from_float"(double %0) #1 {
entry:
  %var.es = alloca ptr, align 8
  %var.mant = alloca ptr, align 8
  %var._911 = alloca i64, align 8
  %var._i910 = alloca i64, align 8
  %loop.step.30 = alloca i64, align 8
  %loop.idx.30 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._769 = alloca i64, align 8
  %var._i768 = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
  %var._718 = alloca i64, align 8
  %var._i717 = alloca i64, align 8
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
  %var._579 = alloca i64, align 8
  %var._i578 = alloca i64, align 8
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
  %var._437 = alloca i64, align 8
  %var._i436 = alloca i64, align 8
  %loop.step.24 = alloca i64, align 8
  %loop.idx.24 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._336 = alloca i64, align 8
  %var._i335 = alloca i64, align 8
  %loop.step.23 = alloca i64, align 8
  %loop.idx.23 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.ms = alloca ptr, align 8
  %var._117 = alloca i64, align 8
  %var._i116 = alloca i64, align 8
  %loop.step.19 = alloca i64, align 8
  %loop.idx.19 = alloca i64, align 8
  %"var.m'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.d = alloca i64, align 8
  %var._54 = alloca i64, align 8
  %var._i53 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %var.ds = alloca ptr, align 8
  %"var.f'" = alloca double, align 8
  %var.ip = alloca i64, align 8
  %var._20 = alloca i64, align 8
  %var._i19 = alloca i64, align 8
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
  br i1 %fcmptmp5, label %choice.then6, label %choice.else7

choice.then6:                                     ; preds = %choice.exit
  br label %choice.exit8

choice.else7:                                     ; preds = %choice.exit
  %var.load9 = load double, ptr %var.a, align 8
  store double %var.load9, ptr %"var.x'", align 8
  store i64 0, ptr %"var.e'", align 8
  store i64 0, ptr %loop.idx.16, align 8
  br label %loop.header.16

choice.exit8:                                     ; preds = %choice.exit1051, %choice.then6
  %choice.res1146 = phi ptr [ @str.0.struct, %choice.then6 ], [ %choice.res1145, %choice.exit1051 ]
  ret ptr %choice.res1146

loop.header.16:                                   ; preds = %loop.latch.16, %choice.else7
  %counter.load = load i64, ptr %loop.idx.16, align 8
  br label %loop.body.16

loop.body.16:                                     ; preds = %loop.header.16
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.16, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load10 = load double, ptr %"var.x'", align 8
  %fcmptmp11 = fcmp oge double %var.load10, 1.000000e+01
  br i1 %fcmptmp11, label %choice.then12, label %choice.else13

loop.exit.nat.16:                                 ; No predecessors!
  br label %loop.exit.16

loop.latch.16:                                    ; preds = %choice.exit14
  %step.val = load i64, ptr %loop.step.16, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.16, align 8
  br label %loop.header.16

loop.exit.16:                                     ; preds = %choice.else13, %loop.exit.nat.16
  store i64 0, ptr %loop.idx.17, align 8
  br label %loop.header.17

choice.then12:                                    ; preds = %loop.body.16
  %var.load15 = load double, ptr %"var.x'", align 8
  %fdivtmp = fdiv double %var.load15, 1.000000e+01
  store double %fdivtmp, ptr %"var.x'", align 8
  %var.load16 = load i64, ptr %"var.e'", align 8
  %addtmp = add i64 %var.load16, 1
  store i64 %addtmp, ptr %"var.e'", align 8
  br label %choice.exit14

choice.else13:                                    ; preds = %loop.body.16
  br label %loop.exit.16

choice.exit14:                                    ; preds = %choice.then12
  br label %loop.latch.16

loop.header.17:                                   ; preds = %loop.latch.17, %loop.exit.16
  %counter.load17 = load i64, ptr %loop.idx.17, align 8
  br label %loop.body.17

loop.body.17:                                     ; preds = %loop.header.17
  %loop.rel.i18 = sub i64 %counter.load17, 0
  store i64 1, ptr %loop.step.17, align 8
  store i64 %loop.rel.i18, ptr %var._i19, align 8
  store i64 %counter.load17, ptr %var._20, align 8
  %var.load21 = load double, ptr %"var.x'", align 8
  %fcmptmp22 = fcmp olt double %var.load21, 1.000000e+00
  br i1 %fcmptmp22, label %choice.then23, label %choice.else24

loop.exit.nat.17:                                 ; No predecessors!
  br label %loop.exit.17

loop.latch.17:                                    ; preds = %choice.exit25
  %step.val28 = load i64, ptr %loop.step.17, align 8
  %loop.next29 = add i64 %counter.load17, %step.val28
  store i64 %loop.next29, ptr %loop.idx.17, align 8
  br label %loop.header.17

loop.exit.17:                                     ; preds = %choice.else24, %loop.exit.nat.17
  %var.load30 = load double, ptr %"var.x'", align 8
  %cast.fptosi = fptosi double %var.load30 to i64
  store i64 %cast.fptosi, ptr %var.ip, align 8
  %var.load31 = load double, ptr %"var.x'", align 8
  %var.load32 = load i64, ptr %var.ip, align 8
  %cast.sitofp = sitofp i64 %var.load32 to double
  %fsubtmp33 = fsub double %var.load31, %cast.sitofp
  store double %fsubtmp33, ptr %"var.f'", align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len34

choice.then23:                                    ; preds = %loop.body.17
  %var.load26 = load double, ptr %"var.x'", align 8
  %fmultmp = fmul double %var.load26, 1.000000e+01
  store double %fmultmp, ptr %"var.x'", align 8
  %var.load27 = load i64, ptr %"var.e'", align 8
  %subtmp = sub i64 %var.load27, 1
  store i64 %subtmp, ptr %"var.e'", align 8
  br label %choice.exit25

choice.else24:                                    ; preds = %loop.body.17
  br label %loop.exit.17

choice.exit25:                                    ; preds = %choice.then23
  br label %loop.latch.17

b.buf.len34:                                      ; preds = %str_overflow_abort, %loop.exit.17
  %arena.cur35 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.ds, align 8
  %var.load36 = load i64, ptr %var.ip, align 8
  %addtmp37 = add i64 48, %var.load36
  %b.load = load ptr, ptr %var.ds, align 8
  %var.load38 = load i64, ptr %var.ip, align 8
  %addtmp39 = add i64 48, %var.load38
  %b.b.ge0 = icmp sge i64 %addtmp39, 0
  %b.b.le255 = icmp sle i64 %addtmp39, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %loop.exit.17
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len34

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len34
  %b.byte.i8 = trunc i64 %addtmp39 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len40 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap41 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data42 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len40, %b.cap41
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len34
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap41, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum43 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf44 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf44, label %str_overflow_abort46, label %b.new.buf.len45

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len45
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data48 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len49 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data48, i64 %b.cur.len49
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len49, 1
  %b.nul = getelementptr i8, ptr %b.cur.data48, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep50, align 8
  store i64 0, ptr %loop.idx.18, align 8
  br label %loop.header.18

b.new.buf.len45:                                  ; preds = %str_overflow_abort46, %b.grow
  %arena.cur47 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data42, i64 %b.len40, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len40
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort46:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len45

loop.header.18:                                   ; preds = %loop.latch.18, %b.push_done
  %counter.load51 = load i64, ptr %loop.idx.18, align 8
  %loop.cond = icmp slt i64 %counter.load51, 6
  br i1 %loop.cond, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i52 = sub i64 %counter.load51, 0
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i52, ptr %var._i53, align 8
  store i64 %counter.load51, ptr %var._54, align 8
  store i64 %counter.load51, ptr %var.i, align 8
  %var.load55 = load double, ptr %"var.f'", align 8
  %fmultmp56 = fmul double %var.load55, 1.000000e+01
  store double %fmultmp56, ptr %"var.f'", align 8
  %var.load57 = load double, ptr %"var.f'", align 8
  %cast.fptosi58 = fptosi double %var.load57 to i64
  store i64 %cast.fptosi58, ptr %var.d, align 8
  %var.load59 = load i64, ptr %var.d, align 8
  %addtmp60 = add i64 48, %var.load59
  %b.load61 = load ptr, ptr %var.ds, align 8
  %var.load62 = load i64, ptr %var.d, align 8
  %addtmp63 = add i64 48, %var.load62
  %b.b.ge064 = icmp sge i64 %addtmp63, 0
  %b.b.le25565 = icmp sle i64 %addtmp63, 255
  %b.byte.range66 = and i1 %b.b.ge064, %b.b.le25565
  br i1 %b.byte.range66, label %b.byte_ok67, label %b.byte_err68

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %b.push_done79
  %step.val105 = load i64, ptr %loop.step.18, align 8
  %loop.next106 = add i64 %counter.load51, %step.val105
  store i64 %loop.next106, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  %var.load107 = load ptr, ptr %var.ds, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load107, i32 0, i32 0
  %b.freeze.len108 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load107, i32 0, i32 1
  %b.freeze.data109 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok67:                                      ; preds = %b.byte_err68, %loop.body.18
  %b.byte.i869 = trunc i64 %addtmp63 to i8
  %b.len70 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load61, i32 0, i32 0
  %b.len71 = load i64, ptr %b.len70, align 8
  %b.cap72 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load61, i32 0, i32 2
  %b.cap73 = load i64, ptr %b.cap72, align 8
  %b.data74 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load61, i32 0, i32 1
  %b.data75 = load ptr, ptr %b.data74, align 8
  %b.needs.grow76 = icmp eq i64 %b.len71, %b.cap73
  br i1 %b.needs.grow76, label %b.grow77, label %b.nogrow78

b.byte_err68:                                     ; preds = %loop.body.18
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok67

b.grow77:                                         ; preds = %b.byte_ok67
  %b.cap280 = mul i64 %b.cap73, 2
  %b.cap.small81 = icmp slt i64 %b.cap280, 16
  %b.new.cap82 = select i1 %b.cap.small81, i64 16, i64 %b.cap280
  %b.new.buf.len83 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap82, i64 1)
  %sum84 = extractvalue { i64, i1 } %b.new.buf.len83, 0
  %ovf85 = extractvalue { i64, i1 } %b.new.buf.len83, 1
  br i1 %ovf85, label %str_overflow_abort87, label %b.new.buf.len86

b.nogrow78:                                       ; preds = %b.byte_ok67
  br label %b.push_done79

b.push_done79:                                    ; preds = %b.nogrow78, %b.new.buf.len86
  %b.cur.data93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load61, i32 0, i32 1
  %b.cur.data94 = load ptr, ptr %b.cur.data93, align 8
  %b.cur.len95 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load61, i32 0, i32 0
  %b.cur.len96 = load i64, ptr %b.cur.len95, align 8
  %b.byte.gep97 = getelementptr i8, ptr %b.cur.data94, i64 %b.cur.len96
  store i8 %b.byte.i869, ptr %b.byte.gep97, align 1
  %b.next.len98 = add i64 %b.cur.len96, 1
  %b.nul99 = getelementptr i8, ptr %b.cur.data94, i64 %b.next.len98
  store i8 0, ptr %b.nul99, align 1
  %b.len.gep100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load61, i32 0, i32 0
  store i64 %b.next.len98, ptr %b.len.gep100, align 8
  %var.load101 = load double, ptr %"var.f'", align 8
  %var.load102 = load i64, ptr %var.d, align 8
  %cast.sitofp103 = sitofp i64 %var.load102 to double
  %fsubtmp104 = fsub double %var.load101, %cast.sitofp103
  store double %fsubtmp104, ptr %"var.f'", align 8
  br label %loop.latch.18

b.new.buf.len86:                                  ; preds = %str_overflow_abort87, %b.grow77
  %arena.cur88 = call ptr @dva_arena_current()
  %b.new.buf89 = call ptr @dva_arena_alloc(ptr %arena.cur88, i64 %sum84)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf89, ptr align 1 %b.data75, i64 %b.len71, i1 false)
  %b.grow.nul90 = getelementptr i8, ptr %b.new.buf89, i64 %b.len71
  store i8 0, ptr %b.grow.nul90, align 1
  %b.new.data.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load61, i32 0, i32 1
  store ptr %b.new.buf89, ptr %b.new.data.gep91, align 8
  %b.new.cap.gep92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load61, i32 0, i32 2
  store i64 %b.new.cap82, ptr %b.new.cap.gep92, align 8
  br label %b.push_done79

str_overflow_abort87:                             ; preds = %b.grow77
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len86

b.freeze.check:                                   ; preds = %loop.exit.18
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data109, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data109, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data109, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur110 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %b.freeze.len108)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data109, i64 %b.freeze.len108, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.18
  %b.freeze.data111 = phi ptr [ %b.freeze.data109, %loop.exit.18 ], [ %b.freeze.data109, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur112 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len108, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data111, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load107, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load107, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load107, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  store i64 0, ptr %"var.m'", align 8
  store i64 0, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.header.19:                                   ; preds = %loop.latch.19, %b.freeze.done
  %counter.load113 = load i64, ptr %loop.idx.19, align 8
  %loop.cond114 = icmp slt i64 %counter.load113, 6
  br i1 %loop.cond114, label %loop.body.19, label %loop.exit.nat.19

loop.body.19:                                     ; preds = %loop.header.19
  %loop.rel.i115 = sub i64 %counter.load113, 0
  store i64 1, ptr %loop.step.19, align 8
  store i64 %loop.rel.i115, ptr %var._i116, align 8
  store i64 %counter.load113, ptr %var._117, align 8
  store i64 %counter.load113, ptr %var.i, align 8
  %var.load118 = load i64, ptr %"var.m'", align 8
  %multmp = mul i64 %var.load118, 10
  %var.load119 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 0
  %s.read.len120 = load i64, ptr %s.read.len, align 8
  %s.read.len121 = and i64 %s.read.len120, 281474976710655
  %str.tag = lshr i64 %s.read.len120, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.19:                                 ; preds = %loop.header.19
  br label %loop.exit.19

loop.latch.19:                                    ; preds = %idx_ok
  %step.val128 = load i64, ptr %loop.step.19, align 8
  %loop.next129 = add i64 %counter.load113, %step.val128
  store i64 %loop.next129, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %loop.exit.nat.19
  %var.load130 = load ptr, ptr %var.s, align 8
  %s.read.len131 = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 0
  %s.read.len132 = load i64, ptr %s.read.len131, align 8
  %s.read.len133 = and i64 %s.read.len132, 281474976710655
  %str.tag134 = lshr i64 %s.read.len132, 48
  %str.immortal135 = icmp eq i64 %str.tag134, 0
  br i1 %str.immortal135, label %str_ok137, label %str_gen_check136

str_gen_check:                                    ; preds = %loop.body.19
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen122 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen123 = load i64, ptr %arena.gen122, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen123
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.19
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load119, i32 0, i32 1
  %s.read.data124 = load ptr, ptr %s.read.data, align 8
  %var.load125 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load125, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load125, %s.read.len121
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data124, i64 %var.load125
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp126 = sub i64 %s.byte.val, 48
  %addtmp127 = add i64 %multmp, %subtmp126
  store i64 %addtmp127, ptr %"var.m'", align 8
  br label %loop.latch.19

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check136:                                 ; preds = %loop.exit.19
  %arena.gen139 = call ptr @dva_arena_current()
  %arena.gen140 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen139, i32 0, i32 4
  %arena.gen141 = load i64, ptr %arena.gen140, align 8
  %str.tag.match142 = icmp eq i64 %str.tag134, %arena.gen141
  br i1 %str.tag.match142, label %str_ok137, label %str_stale138

str_ok137:                                        ; preds = %str_stale138, %str_gen_check136, %loop.exit.19
  %s.read.data143 = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 1
  %s.read.data144 = load ptr, ptr %s.read.data143, align 8
  br i1 false, label %idx_oob147, label %idx_big_check145

str_stale138:                                     ; preds = %str_gen_check136
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok137

idx_big_check145:                                 ; preds = %str_ok137
  %idx.big148 = icmp sge i64 6, %s.read.len133
  br i1 %idx.big148, label %idx_oob147, label %idx_ok146

idx_ok146:                                        ; preds = %idx_oob147, %idx_big_check145
  %s.byte.gep149 = getelementptr i8, ptr %s.read.data144, i64 6
  %s.byte150 = load i8, ptr %s.byte.gep149, align 1
  %s.byte.val151 = zext i8 %s.byte150 to i64
  %cmptmp = icmp sge i64 %s.byte.val151, 53
  br i1 %cmptmp, label %choice.then152, label %choice.exit153

idx_oob147:                                       ; preds = %idx_big_check145, %str_ok137
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok146

choice.then152:                                   ; preds = %idx_ok146
  %var.load154 = load i64, ptr %"var.m'", align 8
  %addtmp155 = add i64 %var.load154, 1
  store i64 %addtmp155, ptr %"var.m'", align 8
  br label %choice.exit153

choice.exit153:                                   ; preds = %choice.then152, %idx_ok146
  %var.load156 = load i64, ptr %"var.m'", align 8
  %cmptmp157 = icmp eq i64 %var.load156, 1000000
  br i1 %cmptmp157, label %choice.then158, label %choice.exit159

choice.then158:                                   ; preds = %choice.exit153
  store i64 100000, ptr %"var.m'", align 8
  %var.load160 = load i64, ptr %"var.e'", align 8
  %addtmp161 = add i64 %var.load160, 1
  store i64 %addtmp161, ptr %"var.e'", align 8
  br label %choice.exit159

choice.exit159:                                   ; preds = %choice.then158, %choice.exit153
  %var.load162 = load i64, ptr %"var.m'", align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load162)
  store ptr %call.res, ptr %var.ms, align 8
  %arena.cur163 = call ptr @dva_arena_current()
  %builder.new164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 24)
  %b.data.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new164, i32 0, i32 1
  %b.len.gep166 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new164, i32 0, i32 0
  %b.cap.gep167 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new164, i32 0, i32 2
  %b.buf.len168 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum169 = extractvalue { i64, i1 } %b.buf.len168, 0
  %ovf170 = extractvalue { i64, i1 } %b.buf.len168, 1
  br i1 %ovf170, label %str_overflow_abort172, label %b.buf.len171

b.buf.len171:                                     ; preds = %str_overflow_abort172, %choice.exit159
  %arena.cur173 = call ptr @dva_arena_current()
  %b.buf174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 %sum169)
  %b.nul0175 = getelementptr i8, ptr %b.buf174, i64 0
  store i8 0, ptr %b.nul0175, align 1
  store i64 0, ptr %b.len.gep166, align 8
  store ptr %b.buf174, ptr %b.data.gep165, align 8
  store i64 32, ptr %b.cap.gep167, align 8
  store ptr %builder.new164, ptr %var.b, align 8
  %var.load176 = load i1, ptr %var.neg, align 1
  br i1 %var.load176, label %choice.then177, label %choice.exit178

str_overflow_abort172:                            ; preds = %choice.exit159
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len171

choice.then177:                                   ; preds = %b.buf.len171
  %b.load179 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 0
  %b.rn.cur.len180 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len180, i64 1)
  %sum181 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf182 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf182, label %str_overflow_abort184, label %b.rn.new.len183

choice.exit178:                                   ; preds = %br.done.20, %b.buf.len171
  %var.load199 = load i64, ptr %"var.e'", align 8
  %cmptmp200 = icmp slt i64 %var.load199, -4
  br i1 %cmptmp200, label %or.21.then, label %or.21.else

b.rn.new.len183:                                  ; preds = %str_overflow_abort184, %choice.then177
  %b.cap185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 2
  %b.cap186 = load i64, ptr %b.cap185, align 8
  %b.need.grow = icmp slt i64 %b.cap186, %sum181
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort184:                            ; preds = %choice.then177
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len183

b.grow2:                                          ; preds = %b.rn.new.len183
  %b.cap2187 = mul i64 %b.cap186, 2
  %b.cap.small188 = icmp slt i64 %b.cap2187, 16
  %b.cap.grow = select i1 %b.cap.small188, i64 16, i64 %b.cap2187
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum181
  %b.new.cap189 = select i1 %b.cap.need, i64 %sum181, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 0
  %b.cur.len2190 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 1
  %b.cur.data2191 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap189, i64 1)
  %sum192 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf193 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf193, label %str_overflow_abort195, label %b.new.buf.len2194

b.nogrow2:                                        ; preds = %b.rn.new.len183
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2194
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 1
  %b.rn.data197 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data197, i64 %b.rn.cur.len180
  br i1 true, label %br.b1.20, label %br.c2.20

b.new.buf.len2194:                                ; preds = %str_overflow_abort195, %b.grow2
  %arena.cur196 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 %sum192)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2191, i64 %b.cur.len2190, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2190
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 2
  store i64 %b.new.cap189, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort195:                            ; preds = %b.grow2
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2194

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
  %br.nul = getelementptr i8, ptr %b.rn.data197, i64 %sum181
  store i8 0, ptr %br.nul, align 1
  %b.len.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load179, i32 0, i32 0
  store i64 %sum181, ptr %b.len.gep198, align 8
  br label %choice.exit178

or.21.then:                                       ; preds = %choice.exit178
  br label %or.21.exit

or.21.else:                                       ; preds = %choice.exit178
  %var.load201 = load i64, ptr %"var.e'", align 8
  %cmptmp202 = icmp sge i64 %var.load201, 6
  br label %or.21.exit

or.21.exit:                                       ; preds = %or.21.else, %or.21.then
  %or.21.phi = phi i1 [ %cmptmp200, %or.21.then ], [ %cmptmp202, %or.21.else ]
  br i1 %or.21.phi, label %choice.then203, label %choice.else204

choice.then203:                                   ; preds = %or.21.exit
  %var.load206 = load ptr, ptr %var.ms, align 8
  %s.read.len207 = getelementptr inbounds { i64, ptr }, ptr %var.load206, i32 0, i32 0
  %s.read.len208 = load i64, ptr %s.read.len207, align 8
  %s.read.len209 = and i64 %s.read.len208, 281474976710655
  %str.tag210 = lshr i64 %s.read.len208, 48
  %str.immortal211 = icmp eq i64 %str.tag210, 0
  br i1 %str.immortal211, label %str_ok213, label %str_gen_check212

choice.else204:                                   ; preds = %or.21.exit
  %var.load425 = load i64, ptr %"var.e'", align 8
  %cmptmp426 = icmp sge i64 %var.load425, 0
  br i1 %cmptmp426, label %choice.then427, label %choice.else428

choice.exit205:                                   ; preds = %choice.exit429, %loop.exit.23
  %var.load858 = load ptr, ptr %var.b, align 8
  %b.freeze.len859 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load858, i32 0, i32 0
  %b.freeze.len860 = load i64, ptr %b.freeze.len859, align 8
  %b.freeze.data861 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load858, i32 0, i32 1
  %b.freeze.data862 = load ptr, ptr %b.freeze.data861, align 8
  %b.freeze.arena863 = call ptr @dva_arena_current()
  %b.freeze.nc.gep864 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena863, i32 0, i32 1
  %b.freeze.nc865 = load i64, ptr %b.freeze.nc.gep864, align 8
  %b.freeze.has.chunk866 = icmp sgt i64 %b.freeze.nc865, 0
  br i1 %b.freeze.has.chunk866, label %b.freeze.check867, label %b.freeze.done869

str_gen_check212:                                 ; preds = %choice.then203
  %arena.gen215 = call ptr @dva_arena_current()
  %arena.gen216 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen215, i32 0, i32 4
  %arena.gen217 = load i64, ptr %arena.gen216, align 8
  %str.tag.match218 = icmp eq i64 %str.tag210, %arena.gen217
  br i1 %str.tag.match218, label %str_ok213, label %str_stale214

str_ok213:                                        ; preds = %str_stale214, %str_gen_check212, %choice.then203
  %s.read.data219 = getelementptr inbounds { i64, ptr }, ptr %var.load206, i32 0, i32 1
  %s.read.data220 = load ptr, ptr %s.read.data219, align 8
  br i1 false, label %idx_oob223, label %idx_big_check221

str_stale214:                                     ; preds = %str_gen_check212
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok213

idx_big_check221:                                 ; preds = %str_ok213
  %idx.big224 = icmp sge i64 0, %s.read.len209
  br i1 %idx.big224, label %idx_oob223, label %idx_ok222

idx_ok222:                                        ; preds = %idx_oob223, %idx_big_check221
  %s.byte.gep225 = getelementptr i8, ptr %s.read.data220, i64 0
  %s.byte226 = load i8, ptr %s.byte.gep225, align 1
  %s.byte.val227 = zext i8 %s.byte226 to i64
  %b.load228 = load ptr, ptr %var.b, align 8
  %var.load229 = load ptr, ptr %var.ms, align 8
  %s.read.len230 = getelementptr inbounds { i64, ptr }, ptr %var.load229, i32 0, i32 0
  %s.read.len231 = load i64, ptr %s.read.len230, align 8
  %s.read.len232 = and i64 %s.read.len231, 281474976710655
  %str.tag233 = lshr i64 %s.read.len231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

idx_oob223:                                       ; preds = %idx_big_check221, %str_ok213
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok222

str_gen_check235:                                 ; preds = %idx_ok222
  %arena.gen238 = call ptr @dva_arena_current()
  %arena.gen239 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen238, i32 0, i32 4
  %arena.gen240 = load i64, ptr %arena.gen239, align 8
  %str.tag.match241 = icmp eq i64 %str.tag233, %arena.gen240
  br i1 %str.tag.match241, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %idx_ok222
  %s.read.data242 = getelementptr inbounds { i64, ptr }, ptr %var.load229, i32 0, i32 1
  %s.read.data243 = load ptr, ptr %s.read.data242, align 8
  br i1 false, label %idx_oob246, label %idx_big_check244

str_stale237:                                     ; preds = %str_gen_check235
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

idx_big_check244:                                 ; preds = %str_ok236
  %idx.big247 = icmp sge i64 0, %s.read.len232
  br i1 %idx.big247, label %idx_oob246, label %idx_ok245

idx_ok245:                                        ; preds = %idx_oob246, %idx_big_check244
  %s.byte.gep248 = getelementptr i8, ptr %s.read.data243, i64 0
  %s.byte249 = load i8, ptr %s.byte.gep248, align 1
  %s.byte.val250 = zext i8 %s.byte249 to i64
  %b.b.ge0251 = icmp sge i64 %s.byte.val250, 0
  %b.b.le255252 = icmp sle i64 %s.byte.val250, 255
  %b.byte.range253 = and i1 %b.b.ge0251, %b.b.le255252
  br i1 %b.byte.range253, label %b.byte_ok254, label %b.byte_err255

idx_oob246:                                       ; preds = %idx_big_check244, %str_ok236
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok245

b.byte_ok254:                                     ; preds = %b.byte_err255, %idx_ok245
  %b.byte.i8256 = trunc i64 %s.byte.val250 to i8
  %b.len257 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load228, i32 0, i32 0
  %b.len258 = load i64, ptr %b.len257, align 8
  %b.cap259 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load228, i32 0, i32 2
  %b.cap260 = load i64, ptr %b.cap259, align 8
  %b.data261 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load228, i32 0, i32 1
  %b.data262 = load ptr, ptr %b.data261, align 8
  %b.needs.grow263 = icmp eq i64 %b.len258, %b.cap260
  br i1 %b.needs.grow263, label %b.grow264, label %b.nogrow265

b.byte_err255:                                    ; preds = %idx_ok245
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok254

b.grow264:                                        ; preds = %b.byte_ok254
  %b.cap2267 = mul i64 %b.cap260, 2
  %b.cap.small268 = icmp slt i64 %b.cap2267, 16
  %b.new.cap269 = select i1 %b.cap.small268, i64 16, i64 %b.cap2267
  %b.new.buf.len270 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap269, i64 1)
  %sum271 = extractvalue { i64, i1 } %b.new.buf.len270, 0
  %ovf272 = extractvalue { i64, i1 } %b.new.buf.len270, 1
  br i1 %ovf272, label %str_overflow_abort274, label %b.new.buf.len273

b.nogrow265:                                      ; preds = %b.byte_ok254
  br label %b.push_done266

b.push_done266:                                   ; preds = %b.nogrow265, %b.new.buf.len273
  %b.cur.data280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load228, i32 0, i32 1
  %b.cur.data281 = load ptr, ptr %b.cur.data280, align 8
  %b.cur.len282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load228, i32 0, i32 0
  %b.cur.len283 = load i64, ptr %b.cur.len282, align 8
  %b.byte.gep284 = getelementptr i8, ptr %b.cur.data281, i64 %b.cur.len283
  store i8 %b.byte.i8256, ptr %b.byte.gep284, align 1
  %b.next.len285 = add i64 %b.cur.len283, 1
  %b.nul286 = getelementptr i8, ptr %b.cur.data281, i64 %b.next.len285
  store i8 0, ptr %b.nul286, align 1
  %b.len.gep287 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load228, i32 0, i32 0
  store i64 %b.next.len285, ptr %b.len.gep287, align 8
  %b.load288 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 0
  %b.rn.cur.len290 = load i64, ptr %b.rn.cur.len289, align 8
  %b.rn.new.len291 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len290, i64 1)
  %sum292 = extractvalue { i64, i1 } %b.rn.new.len291, 0
  %ovf293 = extractvalue { i64, i1 } %b.rn.new.len291, 1
  br i1 %ovf293, label %str_overflow_abort295, label %b.rn.new.len294

b.new.buf.len273:                                 ; preds = %str_overflow_abort274, %b.grow264
  %arena.cur275 = call ptr @dva_arena_current()
  %b.new.buf276 = call ptr @dva_arena_alloc(ptr %arena.cur275, i64 %sum271)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf276, ptr align 1 %b.data262, i64 %b.len258, i1 false)
  %b.grow.nul277 = getelementptr i8, ptr %b.new.buf276, i64 %b.len258
  store i8 0, ptr %b.grow.nul277, align 1
  %b.new.data.gep278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load228, i32 0, i32 1
  store ptr %b.new.buf276, ptr %b.new.data.gep278, align 8
  %b.new.cap.gep279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load228, i32 0, i32 2
  store i64 %b.new.cap269, ptr %b.new.cap.gep279, align 8
  br label %b.push_done266

str_overflow_abort274:                            ; preds = %b.grow264
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len273

b.rn.new.len294:                                  ; preds = %str_overflow_abort295, %b.push_done266
  %b.cap296 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 2
  %b.cap297 = load i64, ptr %b.cap296, align 8
  %b.need.grow298 = icmp slt i64 %b.cap297, %sum292
  br i1 %b.need.grow298, label %b.grow2299, label %b.nogrow2300

str_overflow_abort295:                            ; preds = %b.push_done266
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len294

b.grow2299:                                       ; preds = %b.rn.new.len294
  %b.cap2302 = mul i64 %b.cap297, 2
  %b.cap.small303 = icmp slt i64 %b.cap2302, 16
  %b.cap.grow304 = select i1 %b.cap.small303, i64 16, i64 %b.cap2302
  %b.cap.need305 = icmp slt i64 %b.cap.grow304, %sum292
  %b.new.cap306 = select i1 %b.cap.need305, i64 %sum292, i64 %b.cap.grow304
  %b.cur.len2307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 0
  %b.cur.len2308 = load i64, ptr %b.cur.len2307, align 8
  %b.cur.data2309 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 1
  %b.cur.data2310 = load ptr, ptr %b.cur.data2309, align 8
  %b.new.buf.len2311 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap306, i64 1)
  %sum312 = extractvalue { i64, i1 } %b.new.buf.len2311, 0
  %ovf313 = extractvalue { i64, i1 } %b.new.buf.len2311, 1
  br i1 %ovf313, label %str_overflow_abort315, label %b.new.buf.len2314

b.nogrow2300:                                     ; preds = %b.rn.new.len294
  br label %b.grow_done301

b.grow_done301:                                   ; preds = %b.nogrow2300, %b.new.buf.len2314
  %b.rn.data321 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 1
  %b.rn.data322 = load ptr, ptr %b.rn.data321, align 8
  %b.rn.dst323 = getelementptr i8, ptr %b.rn.data322, i64 %b.rn.cur.len290
  br i1 true, label %br.b1.22, label %br.c2.22

b.new.buf.len2314:                                ; preds = %str_overflow_abort315, %b.grow2299
  %arena.cur316 = call ptr @dva_arena_current()
  %b.new.buf2317 = call ptr @dva_arena_alloc(ptr %arena.cur316, i64 %sum312)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2317, ptr align 1 %b.cur.data2310, i64 %b.cur.len2308, i1 false)
  %b.grow2.nul318 = getelementptr i8, ptr %b.new.buf2317, i64 %b.cur.len2308
  store i8 0, ptr %b.grow2.nul318, align 1
  %b.new.data2.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 1
  store ptr %b.new.buf2317, ptr %b.new.data2.gep319, align 8
  %b.new.cap2.gep320 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 2
  store i64 %b.new.cap306, ptr %b.new.cap2.gep320, align 8
  br label %b.grow_done301

str_overflow_abort315:                            ; preds = %b.grow2299
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2314

br.b1.22:                                         ; preds = %b.grow_done301
  store i8 46, ptr %b.rn.dst323, align 1
  br label %br.done.22

br.c2.22:                                         ; preds = %b.grow_done301
  br i1 true, label %br.b2.22, label %br.c3.22

br.b2.22:                                         ; preds = %br.c2.22
  store i8 -64, ptr %b.rn.dst323, align 1
  %br.dst1324 = getelementptr i8, ptr %b.rn.dst323, i64 1
  store i8 -82, ptr %br.dst1324, align 1
  br label %br.done.22

br.c3.22:                                         ; preds = %br.c2.22
  br i1 true, label %br.b3.22, label %br.b4.22

br.b3.22:                                         ; preds = %br.c3.22
  store i8 -32, ptr %b.rn.dst323, align 1
  %br.dst1.3325 = getelementptr i8, ptr %b.rn.dst323, i64 1
  store i8 -128, ptr %br.dst1.3325, align 1
  %br.dst2.3326 = getelementptr i8, ptr %b.rn.dst323, i64 2
  store i8 -82, ptr %br.dst2.3326, align 1
  br label %br.done.22

br.b4.22:                                         ; preds = %br.c3.22
  store i8 -16, ptr %b.rn.dst323, align 1
  %br.dst1.4327 = getelementptr i8, ptr %b.rn.dst323, i64 1
  store i8 -128, ptr %br.dst1.4327, align 1
  %br.dst2.4328 = getelementptr i8, ptr %b.rn.dst323, i64 2
  store i8 -128, ptr %br.dst2.4328, align 1
  %br.dst3.4329 = getelementptr i8, ptr %b.rn.dst323, i64 3
  store i8 -82, ptr %br.dst3.4329, align 1
  br label %br.done.22

br.done.22:                                       ; preds = %br.b4.22, %br.b3.22, %br.b2.22, %br.b1.22
  %br.nul330 = getelementptr i8, ptr %b.rn.data322, i64 %sum292
  store i8 0, ptr %br.nul330, align 1
  %b.len.gep331 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load288, i32 0, i32 0
  store i64 %sum292, ptr %b.len.gep331, align 8
  store i64 1, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.header.23:                                   ; preds = %loop.latch.23, %br.done.22
  %counter.load332 = load i64, ptr %loop.idx.23, align 8
  %loop.cond333 = icmp slt i64 %counter.load332, 6
  br i1 %loop.cond333, label %loop.body.23, label %loop.exit.nat.23

loop.body.23:                                     ; preds = %loop.header.23
  %loop.rel.i334 = sub i64 %counter.load332, 1
  store i64 1, ptr %loop.step.23, align 8
  store i64 %loop.rel.i334, ptr %var._i335, align 8
  store i64 %counter.load332, ptr %var._336, align 8
  store i64 %counter.load332, ptr %var.i, align 8
  %var.load337 = load ptr, ptr %var.ms, align 8
  %s.read.len338 = getelementptr inbounds { i64, ptr }, ptr %var.load337, i32 0, i32 0
  %s.read.len339 = load i64, ptr %s.read.len338, align 8
  %s.read.len340 = and i64 %s.read.len339, 281474976710655
  %str.tag341 = lshr i64 %s.read.len339, 48
  %str.immortal342 = icmp eq i64 %str.tag341, 0
  br i1 %str.immortal342, label %str_ok344, label %str_gen_check343

loop.exit.nat.23:                                 ; preds = %loop.header.23
  br label %loop.exit.23

loop.latch.23:                                    ; preds = %b.push_done401
  %step.val423 = load i64, ptr %loop.step.23, align 8
  %loop.next424 = add i64 %counter.load332, %step.val423
  store i64 %loop.next424, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.exit.23:                                     ; preds = %loop.exit.nat.23
  br label %choice.exit205

str_gen_check343:                                 ; preds = %loop.body.23
  %arena.gen346 = call ptr @dva_arena_current()
  %arena.gen347 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen346, i32 0, i32 4
  %arena.gen348 = load i64, ptr %arena.gen347, align 8
  %str.tag.match349 = icmp eq i64 %str.tag341, %arena.gen348
  br i1 %str.tag.match349, label %str_ok344, label %str_stale345

str_ok344:                                        ; preds = %str_stale345, %str_gen_check343, %loop.body.23
  %s.read.data350 = getelementptr inbounds { i64, ptr }, ptr %var.load337, i32 0, i32 1
  %s.read.data351 = load ptr, ptr %s.read.data350, align 8
  %var.load352 = load i64, ptr %var.i, align 8
  %idx.neg353 = icmp slt i64 %var.load352, 0
  br i1 %idx.neg353, label %idx_oob356, label %idx_big_check354

str_stale345:                                     ; preds = %str_gen_check343
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok344

idx_big_check354:                                 ; preds = %str_ok344
  %idx.big357 = icmp sge i64 %var.load352, %s.read.len340
  br i1 %idx.big357, label %idx_oob356, label %idx_ok355

idx_ok355:                                        ; preds = %idx_oob356, %idx_big_check354
  %s.byte.gep358 = getelementptr i8, ptr %s.read.data351, i64 %var.load352
  %s.byte359 = load i8, ptr %s.byte.gep358, align 1
  %s.byte.val360 = zext i8 %s.byte359 to i64
  %b.load361 = load ptr, ptr %var.b, align 8
  %var.load362 = load ptr, ptr %var.ms, align 8
  %s.read.len363 = getelementptr inbounds { i64, ptr }, ptr %var.load362, i32 0, i32 0
  %s.read.len364 = load i64, ptr %s.read.len363, align 8
  %s.read.len365 = and i64 %s.read.len364, 281474976710655
  %str.tag366 = lshr i64 %s.read.len364, 48
  %str.immortal367 = icmp eq i64 %str.tag366, 0
  br i1 %str.immortal367, label %str_ok369, label %str_gen_check368

idx_oob356:                                       ; preds = %idx_big_check354, %str_ok344
  %22 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok355

str_gen_check368:                                 ; preds = %idx_ok355
  %arena.gen371 = call ptr @dva_arena_current()
  %arena.gen372 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen371, i32 0, i32 4
  %arena.gen373 = load i64, ptr %arena.gen372, align 8
  %str.tag.match374 = icmp eq i64 %str.tag366, %arena.gen373
  br i1 %str.tag.match374, label %str_ok369, label %str_stale370

str_ok369:                                        ; preds = %str_stale370, %str_gen_check368, %idx_ok355
  %s.read.data375 = getelementptr inbounds { i64, ptr }, ptr %var.load362, i32 0, i32 1
  %s.read.data376 = load ptr, ptr %s.read.data375, align 8
  %var.load377 = load i64, ptr %var.i, align 8
  %idx.neg378 = icmp slt i64 %var.load377, 0
  br i1 %idx.neg378, label %idx_oob381, label %idx_big_check379

str_stale370:                                     ; preds = %str_gen_check368
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok369

idx_big_check379:                                 ; preds = %str_ok369
  %idx.big382 = icmp sge i64 %var.load377, %s.read.len365
  br i1 %idx.big382, label %idx_oob381, label %idx_ok380

idx_ok380:                                        ; preds = %idx_oob381, %idx_big_check379
  %s.byte.gep383 = getelementptr i8, ptr %s.read.data376, i64 %var.load377
  %s.byte384 = load i8, ptr %s.byte.gep383, align 1
  %s.byte.val385 = zext i8 %s.byte384 to i64
  %b.b.ge0386 = icmp sge i64 %s.byte.val385, 0
  %b.b.le255387 = icmp sle i64 %s.byte.val385, 255
  %b.byte.range388 = and i1 %b.b.ge0386, %b.b.le255387
  br i1 %b.byte.range388, label %b.byte_ok389, label %b.byte_err390

idx_oob381:                                       ; preds = %idx_big_check379, %str_ok369
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok380

b.byte_ok389:                                     ; preds = %b.byte_err390, %idx_ok380
  %b.byte.i8391 = trunc i64 %s.byte.val385 to i8
  %b.len392 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load361, i32 0, i32 0
  %b.len393 = load i64, ptr %b.len392, align 8
  %b.cap394 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load361, i32 0, i32 2
  %b.cap395 = load i64, ptr %b.cap394, align 8
  %b.data396 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load361, i32 0, i32 1
  %b.data397 = load ptr, ptr %b.data396, align 8
  %b.needs.grow398 = icmp eq i64 %b.len393, %b.cap395
  br i1 %b.needs.grow398, label %b.grow399, label %b.nogrow400

b.byte_err390:                                    ; preds = %idx_ok380
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok389

b.grow399:                                        ; preds = %b.byte_ok389
  %b.cap2402 = mul i64 %b.cap395, 2
  %b.cap.small403 = icmp slt i64 %b.cap2402, 16
  %b.new.cap404 = select i1 %b.cap.small403, i64 16, i64 %b.cap2402
  %b.new.buf.len405 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap404, i64 1)
  %sum406 = extractvalue { i64, i1 } %b.new.buf.len405, 0
  %ovf407 = extractvalue { i64, i1 } %b.new.buf.len405, 1
  br i1 %ovf407, label %str_overflow_abort409, label %b.new.buf.len408

b.nogrow400:                                      ; preds = %b.byte_ok389
  br label %b.push_done401

b.push_done401:                                   ; preds = %b.nogrow400, %b.new.buf.len408
  %b.cur.data415 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load361, i32 0, i32 1
  %b.cur.data416 = load ptr, ptr %b.cur.data415, align 8
  %b.cur.len417 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load361, i32 0, i32 0
  %b.cur.len418 = load i64, ptr %b.cur.len417, align 8
  %b.byte.gep419 = getelementptr i8, ptr %b.cur.data416, i64 %b.cur.len418
  store i8 %b.byte.i8391, ptr %b.byte.gep419, align 1
  %b.next.len420 = add i64 %b.cur.len418, 1
  %b.nul421 = getelementptr i8, ptr %b.cur.data416, i64 %b.next.len420
  store i8 0, ptr %b.nul421, align 1
  %b.len.gep422 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load361, i32 0, i32 0
  store i64 %b.next.len420, ptr %b.len.gep422, align 8
  br label %loop.latch.23

b.new.buf.len408:                                 ; preds = %str_overflow_abort409, %b.grow399
  %arena.cur410 = call ptr @dva_arena_current()
  %b.new.buf411 = call ptr @dva_arena_alloc(ptr %arena.cur410, i64 %sum406)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf411, ptr align 1 %b.data397, i64 %b.len393, i1 false)
  %b.grow.nul412 = getelementptr i8, ptr %b.new.buf411, i64 %b.len393
  store i8 0, ptr %b.grow.nul412, align 1
  %b.new.data.gep413 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load361, i32 0, i32 1
  store ptr %b.new.buf411, ptr %b.new.data.gep413, align 8
  %b.new.cap.gep414 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load361, i32 0, i32 2
  store i64 %b.new.cap404, ptr %b.new.cap.gep414, align 8
  br label %b.push_done401

str_overflow_abort409:                            ; preds = %b.grow399
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len408

choice.then427:                                   ; preds = %choice.else204
  %var.load430 = load i64, ptr %"var.e'", align 8
  %addtmp431 = add i64 %var.load430, 1
  store i64 %addtmp431, ptr %var.en, align 8
  %var.load432 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.24, align 8
  br label %loop.header.24

choice.else428:                                   ; preds = %choice.else204
  %b.load668 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.1.struct, align 8
  %app.str.len669 = and i64 %app.str.len, 281474976710655
  %str.tag670 = lshr i64 %app.str.len, 48
  %str.immortal671 = icmp eq i64 %str.tag670, 0
  br i1 %str.immortal671, label %str_ok673, label %str_gen_check672

choice.exit429:                                   ; preds = %loop.exit.29, %choice.exit529
  br label %choice.exit205

loop.header.24:                                   ; preds = %loop.latch.24, %choice.then427
  %counter.load433 = load i64, ptr %loop.idx.24, align 8
  %loop.cond434 = icmp slt i64 %counter.load433, %var.load432
  br i1 %loop.cond434, label %loop.body.24, label %loop.exit.nat.24

loop.body.24:                                     ; preds = %loop.header.24
  %loop.rel.i435 = sub i64 %counter.load433, 0
  store i64 1, ptr %loop.step.24, align 8
  store i64 %loop.rel.i435, ptr %var._i436, align 8
  store i64 %counter.load433, ptr %var._437, align 8
  store i64 %counter.load433, ptr %var.i, align 8
  %var.load438 = load ptr, ptr %var.ms, align 8
  %s.read.len439 = getelementptr inbounds { i64, ptr }, ptr %var.load438, i32 0, i32 0
  %s.read.len440 = load i64, ptr %s.read.len439, align 8
  %s.read.len441 = and i64 %s.read.len440, 281474976710655
  %str.tag442 = lshr i64 %s.read.len440, 48
  %str.immortal443 = icmp eq i64 %str.tag442, 0
  br i1 %str.immortal443, label %str_ok445, label %str_gen_check444

loop.exit.nat.24:                                 ; preds = %loop.header.24
  br label %loop.exit.24

loop.latch.24:                                    ; preds = %b.push_done502
  %step.val524 = load i64, ptr %loop.step.24, align 8
  %loop.next525 = add i64 %counter.load433, %step.val524
  store i64 %loop.next525, ptr %loop.idx.24, align 8
  br label %loop.header.24

loop.exit.24:                                     ; preds = %loop.exit.nat.24
  %var.load526 = load i64, ptr %var.en, align 8
  %cmptmp527 = icmp slt i64 %var.load526, 6
  br i1 %cmptmp527, label %choice.then528, label %choice.exit529

str_gen_check444:                                 ; preds = %loop.body.24
  %arena.gen447 = call ptr @dva_arena_current()
  %arena.gen448 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen447, i32 0, i32 4
  %arena.gen449 = load i64, ptr %arena.gen448, align 8
  %str.tag.match450 = icmp eq i64 %str.tag442, %arena.gen449
  br i1 %str.tag.match450, label %str_ok445, label %str_stale446

str_ok445:                                        ; preds = %str_stale446, %str_gen_check444, %loop.body.24
  %s.read.data451 = getelementptr inbounds { i64, ptr }, ptr %var.load438, i32 0, i32 1
  %s.read.data452 = load ptr, ptr %s.read.data451, align 8
  %var.load453 = load i64, ptr %var.i, align 8
  %idx.neg454 = icmp slt i64 %var.load453, 0
  br i1 %idx.neg454, label %idx_oob457, label %idx_big_check455

str_stale446:                                     ; preds = %str_gen_check444
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok445

idx_big_check455:                                 ; preds = %str_ok445
  %idx.big458 = icmp sge i64 %var.load453, %s.read.len441
  br i1 %idx.big458, label %idx_oob457, label %idx_ok456

idx_ok456:                                        ; preds = %idx_oob457, %idx_big_check455
  %s.byte.gep459 = getelementptr i8, ptr %s.read.data452, i64 %var.load453
  %s.byte460 = load i8, ptr %s.byte.gep459, align 1
  %s.byte.val461 = zext i8 %s.byte460 to i64
  %b.load462 = load ptr, ptr %var.b, align 8
  %var.load463 = load ptr, ptr %var.ms, align 8
  %s.read.len464 = getelementptr inbounds { i64, ptr }, ptr %var.load463, i32 0, i32 0
  %s.read.len465 = load i64, ptr %s.read.len464, align 8
  %s.read.len466 = and i64 %s.read.len465, 281474976710655
  %str.tag467 = lshr i64 %s.read.len465, 48
  %str.immortal468 = icmp eq i64 %str.tag467, 0
  br i1 %str.immortal468, label %str_ok470, label %str_gen_check469

idx_oob457:                                       ; preds = %idx_big_check455, %str_ok445
  %28 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok456

str_gen_check469:                                 ; preds = %idx_ok456
  %arena.gen472 = call ptr @dva_arena_current()
  %arena.gen473 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen472, i32 0, i32 4
  %arena.gen474 = load i64, ptr %arena.gen473, align 8
  %str.tag.match475 = icmp eq i64 %str.tag467, %arena.gen474
  br i1 %str.tag.match475, label %str_ok470, label %str_stale471

str_ok470:                                        ; preds = %str_stale471, %str_gen_check469, %idx_ok456
  %s.read.data476 = getelementptr inbounds { i64, ptr }, ptr %var.load463, i32 0, i32 1
  %s.read.data477 = load ptr, ptr %s.read.data476, align 8
  %var.load478 = load i64, ptr %var.i, align 8
  %idx.neg479 = icmp slt i64 %var.load478, 0
  br i1 %idx.neg479, label %idx_oob482, label %idx_big_check480

str_stale471:                                     ; preds = %str_gen_check469
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok470

idx_big_check480:                                 ; preds = %str_ok470
  %idx.big483 = icmp sge i64 %var.load478, %s.read.len466
  br i1 %idx.big483, label %idx_oob482, label %idx_ok481

idx_ok481:                                        ; preds = %idx_oob482, %idx_big_check480
  %s.byte.gep484 = getelementptr i8, ptr %s.read.data477, i64 %var.load478
  %s.byte485 = load i8, ptr %s.byte.gep484, align 1
  %s.byte.val486 = zext i8 %s.byte485 to i64
  %b.b.ge0487 = icmp sge i64 %s.byte.val486, 0
  %b.b.le255488 = icmp sle i64 %s.byte.val486, 255
  %b.byte.range489 = and i1 %b.b.ge0487, %b.b.le255488
  br i1 %b.byte.range489, label %b.byte_ok490, label %b.byte_err491

idx_oob482:                                       ; preds = %idx_big_check480, %str_ok470
  %30 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok481

b.byte_ok490:                                     ; preds = %b.byte_err491, %idx_ok481
  %b.byte.i8492 = trunc i64 %s.byte.val486 to i8
  %b.len493 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 0
  %b.len494 = load i64, ptr %b.len493, align 8
  %b.cap495 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 2
  %b.cap496 = load i64, ptr %b.cap495, align 8
  %b.data497 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 1
  %b.data498 = load ptr, ptr %b.data497, align 8
  %b.needs.grow499 = icmp eq i64 %b.len494, %b.cap496
  br i1 %b.needs.grow499, label %b.grow500, label %b.nogrow501

b.byte_err491:                                    ; preds = %idx_ok481
  %31 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok490

b.grow500:                                        ; preds = %b.byte_ok490
  %b.cap2503 = mul i64 %b.cap496, 2
  %b.cap.small504 = icmp slt i64 %b.cap2503, 16
  %b.new.cap505 = select i1 %b.cap.small504, i64 16, i64 %b.cap2503
  %b.new.buf.len506 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap505, i64 1)
  %sum507 = extractvalue { i64, i1 } %b.new.buf.len506, 0
  %ovf508 = extractvalue { i64, i1 } %b.new.buf.len506, 1
  br i1 %ovf508, label %str_overflow_abort510, label %b.new.buf.len509

b.nogrow501:                                      ; preds = %b.byte_ok490
  br label %b.push_done502

b.push_done502:                                   ; preds = %b.nogrow501, %b.new.buf.len509
  %b.cur.data516 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 1
  %b.cur.data517 = load ptr, ptr %b.cur.data516, align 8
  %b.cur.len518 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 0
  %b.cur.len519 = load i64, ptr %b.cur.len518, align 8
  %b.byte.gep520 = getelementptr i8, ptr %b.cur.data517, i64 %b.cur.len519
  store i8 %b.byte.i8492, ptr %b.byte.gep520, align 1
  %b.next.len521 = add i64 %b.cur.len519, 1
  %b.nul522 = getelementptr i8, ptr %b.cur.data517, i64 %b.next.len521
  store i8 0, ptr %b.nul522, align 1
  %b.len.gep523 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 0
  store i64 %b.next.len521, ptr %b.len.gep523, align 8
  br label %loop.latch.24

b.new.buf.len509:                                 ; preds = %str_overflow_abort510, %b.grow500
  %arena.cur511 = call ptr @dva_arena_current()
  %b.new.buf512 = call ptr @dva_arena_alloc(ptr %arena.cur511, i64 %sum507)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf512, ptr align 1 %b.data498, i64 %b.len494, i1 false)
  %b.grow.nul513 = getelementptr i8, ptr %b.new.buf512, i64 %b.len494
  store i8 0, ptr %b.grow.nul513, align 1
  %b.new.data.gep514 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 1
  store ptr %b.new.buf512, ptr %b.new.data.gep514, align 8
  %b.new.cap.gep515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load462, i32 0, i32 2
  store i64 %b.new.cap505, ptr %b.new.cap.gep515, align 8
  br label %b.push_done502

str_overflow_abort510:                            ; preds = %b.grow500
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len509

choice.then528:                                   ; preds = %loop.exit.24
  %b.load530 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len531 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 0
  %b.rn.cur.len532 = load i64, ptr %b.rn.cur.len531, align 8
  %b.rn.new.len533 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len532, i64 1)
  %sum534 = extractvalue { i64, i1 } %b.rn.new.len533, 0
  %ovf535 = extractvalue { i64, i1 } %b.rn.new.len533, 1
  br i1 %ovf535, label %str_overflow_abort537, label %b.rn.new.len536

choice.exit529:                                   ; preds = %loop.exit.26, %loop.exit.24
  br label %choice.exit429

b.rn.new.len536:                                  ; preds = %str_overflow_abort537, %choice.then528
  %b.cap538 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 2
  %b.cap539 = load i64, ptr %b.cap538, align 8
  %b.need.grow540 = icmp slt i64 %b.cap539, %sum534
  br i1 %b.need.grow540, label %b.grow2541, label %b.nogrow2542

str_overflow_abort537:                            ; preds = %choice.then528
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len536

b.grow2541:                                       ; preds = %b.rn.new.len536
  %b.cap2544 = mul i64 %b.cap539, 2
  %b.cap.small545 = icmp slt i64 %b.cap2544, 16
  %b.cap.grow546 = select i1 %b.cap.small545, i64 16, i64 %b.cap2544
  %b.cap.need547 = icmp slt i64 %b.cap.grow546, %sum534
  %b.new.cap548 = select i1 %b.cap.need547, i64 %sum534, i64 %b.cap.grow546
  %b.cur.len2549 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 0
  %b.cur.len2550 = load i64, ptr %b.cur.len2549, align 8
  %b.cur.data2551 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 1
  %b.cur.data2552 = load ptr, ptr %b.cur.data2551, align 8
  %b.new.buf.len2553 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap548, i64 1)
  %sum554 = extractvalue { i64, i1 } %b.new.buf.len2553, 0
  %ovf555 = extractvalue { i64, i1 } %b.new.buf.len2553, 1
  br i1 %ovf555, label %str_overflow_abort557, label %b.new.buf.len2556

b.nogrow2542:                                     ; preds = %b.rn.new.len536
  br label %b.grow_done543

b.grow_done543:                                   ; preds = %b.nogrow2542, %b.new.buf.len2556
  %b.rn.data563 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 1
  %b.rn.data564 = load ptr, ptr %b.rn.data563, align 8
  %b.rn.dst565 = getelementptr i8, ptr %b.rn.data564, i64 %b.rn.cur.len532
  br i1 true, label %br.b1.25, label %br.c2.25

b.new.buf.len2556:                                ; preds = %str_overflow_abort557, %b.grow2541
  %arena.cur558 = call ptr @dva_arena_current()
  %b.new.buf2559 = call ptr @dva_arena_alloc(ptr %arena.cur558, i64 %sum554)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2559, ptr align 1 %b.cur.data2552, i64 %b.cur.len2550, i1 false)
  %b.grow2.nul560 = getelementptr i8, ptr %b.new.buf2559, i64 %b.cur.len2550
  store i8 0, ptr %b.grow2.nul560, align 1
  %b.new.data2.gep561 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 1
  store ptr %b.new.buf2559, ptr %b.new.data2.gep561, align 8
  %b.new.cap2.gep562 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 2
  store i64 %b.new.cap548, ptr %b.new.cap2.gep562, align 8
  br label %b.grow_done543

str_overflow_abort557:                            ; preds = %b.grow2541
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2556

br.b1.25:                                         ; preds = %b.grow_done543
  store i8 46, ptr %b.rn.dst565, align 1
  br label %br.done.25

br.c2.25:                                         ; preds = %b.grow_done543
  br i1 true, label %br.b2.25, label %br.c3.25

br.b2.25:                                         ; preds = %br.c2.25
  store i8 -64, ptr %b.rn.dst565, align 1
  %br.dst1566 = getelementptr i8, ptr %b.rn.dst565, i64 1
  store i8 -82, ptr %br.dst1566, align 1
  br label %br.done.25

br.c3.25:                                         ; preds = %br.c2.25
  br i1 true, label %br.b3.25, label %br.b4.25

br.b3.25:                                         ; preds = %br.c3.25
  store i8 -32, ptr %b.rn.dst565, align 1
  %br.dst1.3567 = getelementptr i8, ptr %b.rn.dst565, i64 1
  store i8 -128, ptr %br.dst1.3567, align 1
  %br.dst2.3568 = getelementptr i8, ptr %b.rn.dst565, i64 2
  store i8 -82, ptr %br.dst2.3568, align 1
  br label %br.done.25

br.b4.25:                                         ; preds = %br.c3.25
  store i8 -16, ptr %b.rn.dst565, align 1
  %br.dst1.4569 = getelementptr i8, ptr %b.rn.dst565, i64 1
  store i8 -128, ptr %br.dst1.4569, align 1
  %br.dst2.4570 = getelementptr i8, ptr %b.rn.dst565, i64 2
  store i8 -128, ptr %br.dst2.4570, align 1
  %br.dst3.4571 = getelementptr i8, ptr %b.rn.dst565, i64 3
  store i8 -82, ptr %br.dst3.4571, align 1
  br label %br.done.25

br.done.25:                                       ; preds = %br.b4.25, %br.b3.25, %br.b2.25, %br.b1.25
  %br.nul572 = getelementptr i8, ptr %b.rn.data564, i64 %sum534
  store i8 0, ptr %br.nul572, align 1
  %b.len.gep573 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load530, i32 0, i32 0
  store i64 %sum534, ptr %b.len.gep573, align 8
  %var.load574 = load i64, ptr %var.en, align 8
  store i64 %var.load574, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.header.26:                                   ; preds = %loop.latch.26, %br.done.25
  %counter.load575 = load i64, ptr %loop.idx.26, align 8
  %loop.cond576 = icmp slt i64 %counter.load575, 6
  br i1 %loop.cond576, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i577 = sub i64 %counter.load575, %var.load574
  store i64 1, ptr %loop.step.26, align 8
  store i64 %loop.rel.i577, ptr %var._i578, align 8
  store i64 %counter.load575, ptr %var._579, align 8
  store i64 %counter.load575, ptr %var.i, align 8
  %var.load580 = load ptr, ptr %var.ms, align 8
  %s.read.len581 = getelementptr inbounds { i64, ptr }, ptr %var.load580, i32 0, i32 0
  %s.read.len582 = load i64, ptr %s.read.len581, align 8
  %s.read.len583 = and i64 %s.read.len582, 281474976710655
  %str.tag584 = lshr i64 %s.read.len582, 48
  %str.immortal585 = icmp eq i64 %str.tag584, 0
  br i1 %str.immortal585, label %str_ok587, label %str_gen_check586

loop.exit.nat.26:                                 ; preds = %loop.header.26
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %b.push_done644
  %step.val666 = load i64, ptr %loop.step.26, align 8
  %loop.next667 = add i64 %counter.load575, %step.val666
  store i64 %loop.next667, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %loop.exit.nat.26
  br label %choice.exit529

str_gen_check586:                                 ; preds = %loop.body.26
  %arena.gen589 = call ptr @dva_arena_current()
  %arena.gen590 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen589, i32 0, i32 4
  %arena.gen591 = load i64, ptr %arena.gen590, align 8
  %str.tag.match592 = icmp eq i64 %str.tag584, %arena.gen591
  br i1 %str.tag.match592, label %str_ok587, label %str_stale588

str_ok587:                                        ; preds = %str_stale588, %str_gen_check586, %loop.body.26
  %s.read.data593 = getelementptr inbounds { i64, ptr }, ptr %var.load580, i32 0, i32 1
  %s.read.data594 = load ptr, ptr %s.read.data593, align 8
  %var.load595 = load i64, ptr %var.i, align 8
  %idx.neg596 = icmp slt i64 %var.load595, 0
  br i1 %idx.neg596, label %idx_oob599, label %idx_big_check597

str_stale588:                                     ; preds = %str_gen_check586
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok587

idx_big_check597:                                 ; preds = %str_ok587
  %idx.big600 = icmp sge i64 %var.load595, %s.read.len583
  br i1 %idx.big600, label %idx_oob599, label %idx_ok598

idx_ok598:                                        ; preds = %idx_oob599, %idx_big_check597
  %s.byte.gep601 = getelementptr i8, ptr %s.read.data594, i64 %var.load595
  %s.byte602 = load i8, ptr %s.byte.gep601, align 1
  %s.byte.val603 = zext i8 %s.byte602 to i64
  %b.load604 = load ptr, ptr %var.b, align 8
  %var.load605 = load ptr, ptr %var.ms, align 8
  %s.read.len606 = getelementptr inbounds { i64, ptr }, ptr %var.load605, i32 0, i32 0
  %s.read.len607 = load i64, ptr %s.read.len606, align 8
  %s.read.len608 = and i64 %s.read.len607, 281474976710655
  %str.tag609 = lshr i64 %s.read.len607, 48
  %str.immortal610 = icmp eq i64 %str.tag609, 0
  br i1 %str.immortal610, label %str_ok612, label %str_gen_check611

idx_oob599:                                       ; preds = %idx_big_check597, %str_ok587
  %36 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok598

str_gen_check611:                                 ; preds = %idx_ok598
  %arena.gen614 = call ptr @dva_arena_current()
  %arena.gen615 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen614, i32 0, i32 4
  %arena.gen616 = load i64, ptr %arena.gen615, align 8
  %str.tag.match617 = icmp eq i64 %str.tag609, %arena.gen616
  br i1 %str.tag.match617, label %str_ok612, label %str_stale613

str_ok612:                                        ; preds = %str_stale613, %str_gen_check611, %idx_ok598
  %s.read.data618 = getelementptr inbounds { i64, ptr }, ptr %var.load605, i32 0, i32 1
  %s.read.data619 = load ptr, ptr %s.read.data618, align 8
  %var.load620 = load i64, ptr %var.i, align 8
  %idx.neg621 = icmp slt i64 %var.load620, 0
  br i1 %idx.neg621, label %idx_oob624, label %idx_big_check622

str_stale613:                                     ; preds = %str_gen_check611
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok612

idx_big_check622:                                 ; preds = %str_ok612
  %idx.big625 = icmp sge i64 %var.load620, %s.read.len608
  br i1 %idx.big625, label %idx_oob624, label %idx_ok623

idx_ok623:                                        ; preds = %idx_oob624, %idx_big_check622
  %s.byte.gep626 = getelementptr i8, ptr %s.read.data619, i64 %var.load620
  %s.byte627 = load i8, ptr %s.byte.gep626, align 1
  %s.byte.val628 = zext i8 %s.byte627 to i64
  %b.b.ge0629 = icmp sge i64 %s.byte.val628, 0
  %b.b.le255630 = icmp sle i64 %s.byte.val628, 255
  %b.byte.range631 = and i1 %b.b.ge0629, %b.b.le255630
  br i1 %b.byte.range631, label %b.byte_ok632, label %b.byte_err633

idx_oob624:                                       ; preds = %idx_big_check622, %str_ok612
  %38 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok623

b.byte_ok632:                                     ; preds = %b.byte_err633, %idx_ok623
  %b.byte.i8634 = trunc i64 %s.byte.val628 to i8
  %b.len635 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 0
  %b.len636 = load i64, ptr %b.len635, align 8
  %b.cap637 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 2
  %b.cap638 = load i64, ptr %b.cap637, align 8
  %b.data639 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 1
  %b.data640 = load ptr, ptr %b.data639, align 8
  %b.needs.grow641 = icmp eq i64 %b.len636, %b.cap638
  br i1 %b.needs.grow641, label %b.grow642, label %b.nogrow643

b.byte_err633:                                    ; preds = %idx_ok623
  %39 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok632

b.grow642:                                        ; preds = %b.byte_ok632
  %b.cap2645 = mul i64 %b.cap638, 2
  %b.cap.small646 = icmp slt i64 %b.cap2645, 16
  %b.new.cap647 = select i1 %b.cap.small646, i64 16, i64 %b.cap2645
  %b.new.buf.len648 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap647, i64 1)
  %sum649 = extractvalue { i64, i1 } %b.new.buf.len648, 0
  %ovf650 = extractvalue { i64, i1 } %b.new.buf.len648, 1
  br i1 %ovf650, label %str_overflow_abort652, label %b.new.buf.len651

b.nogrow643:                                      ; preds = %b.byte_ok632
  br label %b.push_done644

b.push_done644:                                   ; preds = %b.nogrow643, %b.new.buf.len651
  %b.cur.data658 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 1
  %b.cur.data659 = load ptr, ptr %b.cur.data658, align 8
  %b.cur.len660 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 0
  %b.cur.len661 = load i64, ptr %b.cur.len660, align 8
  %b.byte.gep662 = getelementptr i8, ptr %b.cur.data659, i64 %b.cur.len661
  store i8 %b.byte.i8634, ptr %b.byte.gep662, align 1
  %b.next.len663 = add i64 %b.cur.len661, 1
  %b.nul664 = getelementptr i8, ptr %b.cur.data659, i64 %b.next.len663
  store i8 0, ptr %b.nul664, align 1
  %b.len.gep665 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 0
  store i64 %b.next.len663, ptr %b.len.gep665, align 8
  br label %loop.latch.26

b.new.buf.len651:                                 ; preds = %str_overflow_abort652, %b.grow642
  %arena.cur653 = call ptr @dva_arena_current()
  %b.new.buf654 = call ptr @dva_arena_alloc(ptr %arena.cur653, i64 %sum649)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf654, ptr align 1 %b.data640, i64 %b.len636, i1 false)
  %b.grow.nul655 = getelementptr i8, ptr %b.new.buf654, i64 %b.len636
  store i8 0, ptr %b.grow.nul655, align 1
  %b.new.data.gep656 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 1
  store ptr %b.new.buf654, ptr %b.new.data.gep656, align 8
  %b.new.cap.gep657 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load604, i32 0, i32 2
  store i64 %b.new.cap647, ptr %b.new.cap.gep657, align 8
  br label %b.push_done644

str_overflow_abort652:                            ; preds = %b.grow642
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len651

str_gen_check672:                                 ; preds = %choice.else428
  %arena.gen675 = call ptr @dva_arena_current()
  %arena.gen676 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen675, i32 0, i32 4
  %arena.gen677 = load i64, ptr %arena.gen676, align 8
  %str.tag.match678 = icmp eq i64 %str.tag670, %arena.gen677
  br i1 %str.tag.match678, label %str_ok673, label %str_stale674

str_ok673:                                        ; preds = %str_stale674, %str_gen_check672, %choice.else428
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load668, i32 0, i32 0
  %b.app.cur.len679 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len679, i64 %app.str.len669)
  %sum680 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf681 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf681, label %str_overflow_abort683, label %b.app.new.len682

str_stale674:                                     ; preds = %str_gen_check672
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok673

b.app.new.len682:                                 ; preds = %str_overflow_abort683, %str_ok673
  %b.cap684 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load668, i32 0, i32 2
  %b.cap685 = load i64, ptr %b.cap684, align 8
  %b.need.grow686 = icmp slt i64 %b.cap685, %sum680
  br i1 %b.need.grow686, label %b.grow2687, label %b.nogrow2688

str_overflow_abort683:                            ; preds = %str_ok673
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len682

b.grow2687:                                       ; preds = %b.app.new.len682
  %b.cap2690 = mul i64 %b.cap685, 2
  %b.cap.small691 = icmp slt i64 %b.cap2690, 16
  %b.cap.grow692 = select i1 %b.cap.small691, i64 16, i64 %b.cap2690
  %b.cap.need693 = icmp slt i64 %b.cap.grow692, %sum680
  %b.new.cap694 = select i1 %b.cap.need693, i64 %sum680, i64 %b.cap.grow692
  %b.cur.len2695 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load668, i32 0, i32 0
  %b.cur.len2696 = load i64, ptr %b.cur.len2695, align 8
  %b.cur.data2697 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load668, i32 0, i32 1
  %b.cur.data2698 = load ptr, ptr %b.cur.data2697, align 8
  %b.new.buf.len2699 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap694, i64 1)
  %sum700 = extractvalue { i64, i1 } %b.new.buf.len2699, 0
  %ovf701 = extractvalue { i64, i1 } %b.new.buf.len2699, 1
  br i1 %ovf701, label %str_overflow_abort703, label %b.new.buf.len2702

b.nogrow2688:                                     ; preds = %b.app.new.len682
  br label %b.grow_done689

b.grow_done689:                                   ; preds = %b.nogrow2688, %b.new.buf.len2702
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load668, i32 0, i32 1
  %b.app.data709 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data709, i64 %b.app.cur.len679
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len669, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data709, i64 %sum680
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep710 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load668, i32 0, i32 0
  store i64 %sum680, ptr %b.len.gep710, align 8
  %var.load711 = load i64, ptr %"var.e'", align 8
  %subtmp712 = sub i64 0, %var.load711
  %subtmp713 = sub i64 %subtmp712, 1
  store i64 0, ptr %loop.idx.27, align 8
  br label %loop.header.27

b.new.buf.len2702:                                ; preds = %str_overflow_abort703, %b.grow2687
  %arena.cur704 = call ptr @dva_arena_current()
  %b.new.buf2705 = call ptr @dva_arena_alloc(ptr %arena.cur704, i64 %sum700)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2705, ptr align 1 %b.cur.data2698, i64 %b.cur.len2696, i1 false)
  %b.grow2.nul706 = getelementptr i8, ptr %b.new.buf2705, i64 %b.cur.len2696
  store i8 0, ptr %b.grow2.nul706, align 1
  %b.new.data2.gep707 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load668, i32 0, i32 1
  store ptr %b.new.buf2705, ptr %b.new.data2.gep707, align 8
  %b.new.cap2.gep708 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load668, i32 0, i32 2
  store i64 %b.new.cap694, ptr %b.new.cap2.gep708, align 8
  br label %b.grow_done689

str_overflow_abort703:                            ; preds = %b.grow2687
  %43 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2702

loop.header.27:                                   ; preds = %loop.latch.27, %b.grow_done689
  %counter.load714 = load i64, ptr %loop.idx.27, align 8
  %loop.cond715 = icmp slt i64 %counter.load714, %subtmp713
  br i1 %loop.cond715, label %loop.body.27, label %loop.exit.nat.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i716 = sub i64 %counter.load714, 0
  store i64 1, ptr %loop.step.27, align 8
  store i64 %loop.rel.i716, ptr %var._i717, align 8
  store i64 %counter.load714, ptr %var._718, align 8
  store i64 %counter.load714, ptr %var.i, align 8
  %b.load719 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len720 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load719, i32 0, i32 0
  %b.rn.cur.len721 = load i64, ptr %b.rn.cur.len720, align 8
  %b.rn.new.len722 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len721, i64 1)
  %sum723 = extractvalue { i64, i1 } %b.rn.new.len722, 0
  %ovf724 = extractvalue { i64, i1 } %b.rn.new.len722, 1
  br i1 %ovf724, label %str_overflow_abort726, label %b.rn.new.len725

loop.exit.nat.27:                                 ; preds = %loop.header.27
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %br.done.28
  %step.val763 = load i64, ptr %loop.step.27, align 8
  %loop.next764 = add i64 %counter.load714, %step.val763
  store i64 %loop.next764, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %loop.exit.nat.27
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

b.rn.new.len725:                                  ; preds = %str_overflow_abort726, %loop.body.27
  %b.cap727 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load719, i32 0, i32 2
  %b.cap728 = load i64, ptr %b.cap727, align 8
  %b.need.grow729 = icmp slt i64 %b.cap728, %sum723
  br i1 %b.need.grow729, label %b.grow2730, label %b.nogrow2731

str_overflow_abort726:                            ; preds = %loop.body.27
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len725

b.grow2730:                                       ; preds = %b.rn.new.len725
  %b.cap2733 = mul i64 %b.cap728, 2
  %b.cap.small734 = icmp slt i64 %b.cap2733, 16
  %b.cap.grow735 = select i1 %b.cap.small734, i64 16, i64 %b.cap2733
  %b.cap.need736 = icmp slt i64 %b.cap.grow735, %sum723
  %b.new.cap737 = select i1 %b.cap.need736, i64 %sum723, i64 %b.cap.grow735
  %b.cur.len2738 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load719, i32 0, i32 0
  %b.cur.len2739 = load i64, ptr %b.cur.len2738, align 8
  %b.cur.data2740 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load719, i32 0, i32 1
  %b.cur.data2741 = load ptr, ptr %b.cur.data2740, align 8
  %b.new.buf.len2742 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap737, i64 1)
  %sum743 = extractvalue { i64, i1 } %b.new.buf.len2742, 0
  %ovf744 = extractvalue { i64, i1 } %b.new.buf.len2742, 1
  br i1 %ovf744, label %str_overflow_abort746, label %b.new.buf.len2745

b.nogrow2731:                                     ; preds = %b.rn.new.len725
  br label %b.grow_done732

b.grow_done732:                                   ; preds = %b.nogrow2731, %b.new.buf.len2745
  %b.rn.data752 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load719, i32 0, i32 1
  %b.rn.data753 = load ptr, ptr %b.rn.data752, align 8
  %b.rn.dst754 = getelementptr i8, ptr %b.rn.data753, i64 %b.rn.cur.len721
  br i1 true, label %br.b1.28, label %br.c2.28

b.new.buf.len2745:                                ; preds = %str_overflow_abort746, %b.grow2730
  %arena.cur747 = call ptr @dva_arena_current()
  %b.new.buf2748 = call ptr @dva_arena_alloc(ptr %arena.cur747, i64 %sum743)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2748, ptr align 1 %b.cur.data2741, i64 %b.cur.len2739, i1 false)
  %b.grow2.nul749 = getelementptr i8, ptr %b.new.buf2748, i64 %b.cur.len2739
  store i8 0, ptr %b.grow2.nul749, align 1
  %b.new.data2.gep750 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load719, i32 0, i32 1
  store ptr %b.new.buf2748, ptr %b.new.data2.gep750, align 8
  %b.new.cap2.gep751 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load719, i32 0, i32 2
  store i64 %b.new.cap737, ptr %b.new.cap2.gep751, align 8
  br label %b.grow_done732

str_overflow_abort746:                            ; preds = %b.grow2730
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2745

br.b1.28:                                         ; preds = %b.grow_done732
  store i8 48, ptr %b.rn.dst754, align 1
  br label %br.done.28

br.c2.28:                                         ; preds = %b.grow_done732
  br i1 true, label %br.b2.28, label %br.c3.28

br.b2.28:                                         ; preds = %br.c2.28
  store i8 -64, ptr %b.rn.dst754, align 1
  %br.dst1755 = getelementptr i8, ptr %b.rn.dst754, i64 1
  store i8 -80, ptr %br.dst1755, align 1
  br label %br.done.28

br.c3.28:                                         ; preds = %br.c2.28
  br i1 true, label %br.b3.28, label %br.b4.28

br.b3.28:                                         ; preds = %br.c3.28
  store i8 -32, ptr %b.rn.dst754, align 1
  %br.dst1.3756 = getelementptr i8, ptr %b.rn.dst754, i64 1
  store i8 -128, ptr %br.dst1.3756, align 1
  %br.dst2.3757 = getelementptr i8, ptr %b.rn.dst754, i64 2
  store i8 -80, ptr %br.dst2.3757, align 1
  br label %br.done.28

br.b4.28:                                         ; preds = %br.c3.28
  store i8 -16, ptr %b.rn.dst754, align 1
  %br.dst1.4758 = getelementptr i8, ptr %b.rn.dst754, i64 1
  store i8 -128, ptr %br.dst1.4758, align 1
  %br.dst2.4759 = getelementptr i8, ptr %b.rn.dst754, i64 2
  store i8 -128, ptr %br.dst2.4759, align 1
  %br.dst3.4760 = getelementptr i8, ptr %b.rn.dst754, i64 3
  store i8 -80, ptr %br.dst3.4760, align 1
  br label %br.done.28

br.done.28:                                       ; preds = %br.b4.28, %br.b3.28, %br.b2.28, %br.b1.28
  %br.nul761 = getelementptr i8, ptr %b.rn.data753, i64 %sum723
  store i8 0, ptr %br.nul761, align 1
  %b.len.gep762 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load719, i32 0, i32 0
  store i64 %sum723, ptr %b.len.gep762, align 8
  br label %loop.latch.27

loop.header.29:                                   ; preds = %loop.latch.29, %loop.exit.27
  %counter.load765 = load i64, ptr %loop.idx.29, align 8
  %loop.cond766 = icmp slt i64 %counter.load765, 6
  br i1 %loop.cond766, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i767 = sub i64 %counter.load765, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i767, ptr %var._i768, align 8
  store i64 %counter.load765, ptr %var._769, align 8
  store i64 %counter.load765, ptr %var.i, align 8
  %var.load770 = load ptr, ptr %var.ms, align 8
  %s.read.len771 = getelementptr inbounds { i64, ptr }, ptr %var.load770, i32 0, i32 0
  %s.read.len772 = load i64, ptr %s.read.len771, align 8
  %s.read.len773 = and i64 %s.read.len772, 281474976710655
  %str.tag774 = lshr i64 %s.read.len772, 48
  %str.immortal775 = icmp eq i64 %str.tag774, 0
  br i1 %str.immortal775, label %str_ok777, label %str_gen_check776

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %b.push_done834
  %step.val856 = load i64, ptr %loop.step.29, align 8
  %loop.next857 = add i64 %counter.load765, %step.val856
  store i64 %loop.next857, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  br label %choice.exit429

str_gen_check776:                                 ; preds = %loop.body.29
  %arena.gen779 = call ptr @dva_arena_current()
  %arena.gen780 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen779, i32 0, i32 4
  %arena.gen781 = load i64, ptr %arena.gen780, align 8
  %str.tag.match782 = icmp eq i64 %str.tag774, %arena.gen781
  br i1 %str.tag.match782, label %str_ok777, label %str_stale778

str_ok777:                                        ; preds = %str_stale778, %str_gen_check776, %loop.body.29
  %s.read.data783 = getelementptr inbounds { i64, ptr }, ptr %var.load770, i32 0, i32 1
  %s.read.data784 = load ptr, ptr %s.read.data783, align 8
  %var.load785 = load i64, ptr %var.i, align 8
  %idx.neg786 = icmp slt i64 %var.load785, 0
  br i1 %idx.neg786, label %idx_oob789, label %idx_big_check787

str_stale778:                                     ; preds = %str_gen_check776
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok777

idx_big_check787:                                 ; preds = %str_ok777
  %idx.big790 = icmp sge i64 %var.load785, %s.read.len773
  br i1 %idx.big790, label %idx_oob789, label %idx_ok788

idx_ok788:                                        ; preds = %idx_oob789, %idx_big_check787
  %s.byte.gep791 = getelementptr i8, ptr %s.read.data784, i64 %var.load785
  %s.byte792 = load i8, ptr %s.byte.gep791, align 1
  %s.byte.val793 = zext i8 %s.byte792 to i64
  %b.load794 = load ptr, ptr %var.b, align 8
  %var.load795 = load ptr, ptr %var.ms, align 8
  %s.read.len796 = getelementptr inbounds { i64, ptr }, ptr %var.load795, i32 0, i32 0
  %s.read.len797 = load i64, ptr %s.read.len796, align 8
  %s.read.len798 = and i64 %s.read.len797, 281474976710655
  %str.tag799 = lshr i64 %s.read.len797, 48
  %str.immortal800 = icmp eq i64 %str.tag799, 0
  br i1 %str.immortal800, label %str_ok802, label %str_gen_check801

idx_oob789:                                       ; preds = %idx_big_check787, %str_ok777
  %47 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok788

str_gen_check801:                                 ; preds = %idx_ok788
  %arena.gen804 = call ptr @dva_arena_current()
  %arena.gen805 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen804, i32 0, i32 4
  %arena.gen806 = load i64, ptr %arena.gen805, align 8
  %str.tag.match807 = icmp eq i64 %str.tag799, %arena.gen806
  br i1 %str.tag.match807, label %str_ok802, label %str_stale803

str_ok802:                                        ; preds = %str_stale803, %str_gen_check801, %idx_ok788
  %s.read.data808 = getelementptr inbounds { i64, ptr }, ptr %var.load795, i32 0, i32 1
  %s.read.data809 = load ptr, ptr %s.read.data808, align 8
  %var.load810 = load i64, ptr %var.i, align 8
  %idx.neg811 = icmp slt i64 %var.load810, 0
  br i1 %idx.neg811, label %idx_oob814, label %idx_big_check812

str_stale803:                                     ; preds = %str_gen_check801
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok802

idx_big_check812:                                 ; preds = %str_ok802
  %idx.big815 = icmp sge i64 %var.load810, %s.read.len798
  br i1 %idx.big815, label %idx_oob814, label %idx_ok813

idx_ok813:                                        ; preds = %idx_oob814, %idx_big_check812
  %s.byte.gep816 = getelementptr i8, ptr %s.read.data809, i64 %var.load810
  %s.byte817 = load i8, ptr %s.byte.gep816, align 1
  %s.byte.val818 = zext i8 %s.byte817 to i64
  %b.b.ge0819 = icmp sge i64 %s.byte.val818, 0
  %b.b.le255820 = icmp sle i64 %s.byte.val818, 255
  %b.byte.range821 = and i1 %b.b.ge0819, %b.b.le255820
  br i1 %b.byte.range821, label %b.byte_ok822, label %b.byte_err823

idx_oob814:                                       ; preds = %idx_big_check812, %str_ok802
  %49 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok813

b.byte_ok822:                                     ; preds = %b.byte_err823, %idx_ok813
  %b.byte.i8824 = trunc i64 %s.byte.val818 to i8
  %b.len825 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load794, i32 0, i32 0
  %b.len826 = load i64, ptr %b.len825, align 8
  %b.cap827 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load794, i32 0, i32 2
  %b.cap828 = load i64, ptr %b.cap827, align 8
  %b.data829 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load794, i32 0, i32 1
  %b.data830 = load ptr, ptr %b.data829, align 8
  %b.needs.grow831 = icmp eq i64 %b.len826, %b.cap828
  br i1 %b.needs.grow831, label %b.grow832, label %b.nogrow833

b.byte_err823:                                    ; preds = %idx_ok813
  %50 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok822

b.grow832:                                        ; preds = %b.byte_ok822
  %b.cap2835 = mul i64 %b.cap828, 2
  %b.cap.small836 = icmp slt i64 %b.cap2835, 16
  %b.new.cap837 = select i1 %b.cap.small836, i64 16, i64 %b.cap2835
  %b.new.buf.len838 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap837, i64 1)
  %sum839 = extractvalue { i64, i1 } %b.new.buf.len838, 0
  %ovf840 = extractvalue { i64, i1 } %b.new.buf.len838, 1
  br i1 %ovf840, label %str_overflow_abort842, label %b.new.buf.len841

b.nogrow833:                                      ; preds = %b.byte_ok822
  br label %b.push_done834

b.push_done834:                                   ; preds = %b.nogrow833, %b.new.buf.len841
  %b.cur.data848 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load794, i32 0, i32 1
  %b.cur.data849 = load ptr, ptr %b.cur.data848, align 8
  %b.cur.len850 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load794, i32 0, i32 0
  %b.cur.len851 = load i64, ptr %b.cur.len850, align 8
  %b.byte.gep852 = getelementptr i8, ptr %b.cur.data849, i64 %b.cur.len851
  store i8 %b.byte.i8824, ptr %b.byte.gep852, align 1
  %b.next.len853 = add i64 %b.cur.len851, 1
  %b.nul854 = getelementptr i8, ptr %b.cur.data849, i64 %b.next.len853
  store i8 0, ptr %b.nul854, align 1
  %b.len.gep855 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load794, i32 0, i32 0
  store i64 %b.next.len853, ptr %b.len.gep855, align 8
  br label %loop.latch.29

b.new.buf.len841:                                 ; preds = %str_overflow_abort842, %b.grow832
  %arena.cur843 = call ptr @dva_arena_current()
  %b.new.buf844 = call ptr @dva_arena_alloc(ptr %arena.cur843, i64 %sum839)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf844, ptr align 1 %b.data830, i64 %b.len826, i1 false)
  %b.grow.nul845 = getelementptr i8, ptr %b.new.buf844, i64 %b.len826
  store i8 0, ptr %b.grow.nul845, align 1
  %b.new.data.gep846 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load794, i32 0, i32 1
  store ptr %b.new.buf844, ptr %b.new.data.gep846, align 8
  %b.new.cap.gep847 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load794, i32 0, i32 2
  store i64 %b.new.cap837, ptr %b.new.cap.gep847, align 8
  br label %b.push_done834

str_overflow_abort842:                            ; preds = %b.grow832
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len841

b.freeze.check867:                                ; preds = %choice.exit205
  %b.freeze.last.idx870 = sub i64 %b.freeze.nc865, 1
  %b.freeze.chunks.gep871 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena863, i32 0, i32 3
  %b.freeze.chunk.slot872 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep871, i64 0, i64 %b.freeze.last.idx870
  %b.freeze.last.chunk873 = load ptr, ptr %b.freeze.chunk.slot872, align 8
  %b.freeze.off.gep874 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena863, i32 0, i32 2
  %b.freeze.off875 = load i64, ptr %b.freeze.off.gep874, align 8
  %b.freeze.bump876 = getelementptr i8, ptr %b.freeze.last.chunk873, i64 %b.freeze.off875
  %b.freeze.cap.gep877 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena863, i32 0, i32 0
  %b.freeze.cap878 = load i64, ptr %b.freeze.cap.gep877, align 8
  %b.freeze.chunk.end879 = getelementptr i8, ptr %b.freeze.last.chunk873, i64 %b.freeze.cap878
  %b.freeze.ge.chunk880 = icmp uge ptr %b.freeze.data862, %b.freeze.last.chunk873
  %b.freeze.lt.end881 = icmp ult ptr %b.freeze.data862, %b.freeze.chunk.end879
  %b.freeze.in.chunk882 = and i1 %b.freeze.ge.chunk880, %b.freeze.lt.end881
  %b.freeze.ge.bump883 = icmp uge ptr %b.freeze.data862, %b.freeze.bump876
  %b.freeze.reaped884 = and i1 %b.freeze.in.chunk882, %b.freeze.ge.bump883
  br i1 %b.freeze.reaped884, label %b.freeze.copy868, label %b.freeze.done869

b.freeze.copy868:                                 ; preds = %b.freeze.check867
  %arena.cur885 = call ptr @dva_arena_current()
  %b.freeze.fresh886 = call ptr @dva_arena_alloc(ptr %arena.cur885, i64 %b.freeze.len860)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh886, ptr align 1 %b.freeze.data862, i64 %b.freeze.len860, i1 false)
  br label %b.freeze.done869

b.freeze.done869:                                 ; preds = %b.freeze.copy868, %b.freeze.check867, %choice.exit205
  %b.freeze.data887 = phi ptr [ %b.freeze.data862, %choice.exit205 ], [ %b.freeze.data862, %b.freeze.check867 ], [ %b.freeze.fresh886, %b.freeze.copy868 ]
  %arena.cur888 = call ptr @dva_arena_current()
  %builder.freeze889 = call ptr @dva_arena_alloc(ptr %arena.cur888, i64 16)
  %str.build.len.gep890 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze889, i32 0, i32 0
  store i64 %b.freeze.len860, ptr %str.build.len.gep890, align 8
  %str.build.data.gep891 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze889, i32 0, i32 1
  store ptr %b.freeze.data887, ptr %str.build.data.gep891, align 8
  %b.freeze.rst.len892 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load858, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len892, align 8
  %b.freeze.rst.data893 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load858, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data893, align 8
  %b.freeze.rst.cap894 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load858, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap894, align 8
  store ptr %builder.freeze889, ptr %var.full, align 8
  %var.load895 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load895, i32 0, i32 0
  %str.len.query896 = load i64, ptr %str.len.query, align 8
  %str.len.query897 = and i64 %str.len.query896, 281474976710655
  %str.tag898 = lshr i64 %str.len.query896, 48
  %str.immortal899 = icmp eq i64 %str.tag898, 0
  br i1 %str.immortal899, label %str_ok901, label %str_gen_check900

str_gen_check900:                                 ; preds = %b.freeze.done869
  %arena.gen903 = call ptr @dva_arena_current()
  %arena.gen904 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen903, i32 0, i32 4
  %arena.gen905 = load i64, ptr %arena.gen904, align 8
  %str.tag.match906 = icmp eq i64 %str.tag898, %arena.gen905
  br i1 %str.tag.match906, label %str_ok901, label %str_stale902

str_ok901:                                        ; preds = %str_stale902, %str_gen_check900, %b.freeze.done869
  store i64 %str.len.query897, ptr %var.len, align 8
  %var.load907 = load i64, ptr %var.len, align 8
  store i64 %var.load907, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.30, align 8
  br label %loop.header.30

str_stale902:                                     ; preds = %str_gen_check900
  %52 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok901

loop.header.30:                                   ; preds = %loop.latch.30, %str_ok901
  %counter.load908 = load i64, ptr %loop.idx.30, align 8
  br label %loop.body.30

loop.body.30:                                     ; preds = %loop.header.30
  %loop.rel.i909 = sub i64 %counter.load908, 0
  store i64 1, ptr %loop.step.30, align 8
  store i64 %loop.rel.i909, ptr %var._i910, align 8
  store i64 %counter.load908, ptr %var._911, align 8
  %var.load912 = load i64, ptr %"var.end'", align 8
  %cmptmp913 = icmp sgt i64 %var.load912, 0
  br i1 %cmptmp913, label %and.31.then, label %and.31.else

loop.exit.nat.30:                                 ; No predecessors!
  br label %loop.exit.30

loop.latch.30:                                    ; preds = %choice.exit942
  %step.val945 = load i64, ptr %loop.step.30, align 8
  %loop.next946 = add i64 %counter.load908, %step.val945
  store i64 %loop.next946, ptr %loop.idx.30, align 8
  br label %loop.header.30

loop.exit.30:                                     ; preds = %choice.else941, %loop.exit.nat.30
  %var.load947 = load i64, ptr %"var.end'", align 8
  %cmptmp948 = icmp sgt i64 %var.load947, 0
  br i1 %cmptmp948, label %and.32.then, label %and.32.else

and.31.then:                                      ; preds = %loop.body.30
  %var.load914 = load ptr, ptr %var.full, align 8
  %s.read.len915 = getelementptr inbounds { i64, ptr }, ptr %var.load914, i32 0, i32 0
  %s.read.len916 = load i64, ptr %s.read.len915, align 8
  %s.read.len917 = and i64 %s.read.len916, 281474976710655
  %str.tag918 = lshr i64 %s.read.len916, 48
  %str.immortal919 = icmp eq i64 %str.tag918, 0
  br i1 %str.immortal919, label %str_ok921, label %str_gen_check920

and.31.else:                                      ; preds = %loop.body.30
  br label %and.31.exit

and.31.exit:                                      ; preds = %and.31.else, %idx_ok933
  %and.31.phi = phi i1 [ %cmptmp939, %idx_ok933 ], [ %cmptmp913, %and.31.else ]
  br i1 %and.31.phi, label %choice.then940, label %choice.else941

str_gen_check920:                                 ; preds = %and.31.then
  %arena.gen923 = call ptr @dva_arena_current()
  %arena.gen924 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen923, i32 0, i32 4
  %arena.gen925 = load i64, ptr %arena.gen924, align 8
  %str.tag.match926 = icmp eq i64 %str.tag918, %arena.gen925
  br i1 %str.tag.match926, label %str_ok921, label %str_stale922

str_ok921:                                        ; preds = %str_stale922, %str_gen_check920, %and.31.then
  %s.read.data927 = getelementptr inbounds { i64, ptr }, ptr %var.load914, i32 0, i32 1
  %s.read.data928 = load ptr, ptr %s.read.data927, align 8
  %var.load929 = load i64, ptr %"var.end'", align 8
  %subtmp930 = sub i64 %var.load929, 1
  %idx.neg931 = icmp slt i64 %subtmp930, 0
  br i1 %idx.neg931, label %idx_oob934, label %idx_big_check932

str_stale922:                                     ; preds = %str_gen_check920
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok921

idx_big_check932:                                 ; preds = %str_ok921
  %idx.big935 = icmp sge i64 %subtmp930, %s.read.len917
  br i1 %idx.big935, label %idx_oob934, label %idx_ok933

idx_ok933:                                        ; preds = %idx_oob934, %idx_big_check932
  %s.byte.gep936 = getelementptr i8, ptr %s.read.data928, i64 %subtmp930
  %s.byte937 = load i8, ptr %s.byte.gep936, align 1
  %s.byte.val938 = zext i8 %s.byte937 to i64
  %cmptmp939 = icmp eq i64 %s.byte.val938, 48
  br label %and.31.exit

idx_oob934:                                       ; preds = %idx_big_check932, %str_ok921
  %54 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok933

choice.then940:                                   ; preds = %and.31.exit
  %var.load943 = load i64, ptr %"var.end'", align 8
  %subtmp944 = sub i64 %var.load943, 1
  store i64 %subtmp944, ptr %"var.end'", align 8
  br label %choice.exit942

choice.else941:                                   ; preds = %and.31.exit
  br label %loop.exit.30

choice.exit942:                                   ; preds = %choice.then940
  br label %loop.latch.30

and.32.then:                                      ; preds = %loop.exit.30
  %var.load949 = load ptr, ptr %var.full, align 8
  %s.read.len950 = getelementptr inbounds { i64, ptr }, ptr %var.load949, i32 0, i32 0
  %s.read.len951 = load i64, ptr %s.read.len950, align 8
  %s.read.len952 = and i64 %s.read.len951, 281474976710655
  %str.tag953 = lshr i64 %s.read.len951, 48
  %str.immortal954 = icmp eq i64 %str.tag953, 0
  br i1 %str.immortal954, label %str_ok956, label %str_gen_check955

and.32.else:                                      ; preds = %loop.exit.30
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %idx_ok968
  %and.32.phi = phi i1 [ %cmptmp974, %idx_ok968 ], [ %cmptmp948, %and.32.else ]
  br i1 %and.32.phi, label %choice.then975, label %choice.exit976

str_gen_check955:                                 ; preds = %and.32.then
  %arena.gen958 = call ptr @dva_arena_current()
  %arena.gen959 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen958, i32 0, i32 4
  %arena.gen960 = load i64, ptr %arena.gen959, align 8
  %str.tag.match961 = icmp eq i64 %str.tag953, %arena.gen960
  br i1 %str.tag.match961, label %str_ok956, label %str_stale957

str_ok956:                                        ; preds = %str_stale957, %str_gen_check955, %and.32.then
  %s.read.data962 = getelementptr inbounds { i64, ptr }, ptr %var.load949, i32 0, i32 1
  %s.read.data963 = load ptr, ptr %s.read.data962, align 8
  %var.load964 = load i64, ptr %"var.end'", align 8
  %subtmp965 = sub i64 %var.load964, 1
  %idx.neg966 = icmp slt i64 %subtmp965, 0
  br i1 %idx.neg966, label %idx_oob969, label %idx_big_check967

str_stale957:                                     ; preds = %str_gen_check955
  %55 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok956

idx_big_check967:                                 ; preds = %str_ok956
  %idx.big970 = icmp sge i64 %subtmp965, %s.read.len952
  br i1 %idx.big970, label %idx_oob969, label %idx_ok968

idx_ok968:                                        ; preds = %idx_oob969, %idx_big_check967
  %s.byte.gep971 = getelementptr i8, ptr %s.read.data963, i64 %subtmp965
  %s.byte972 = load i8, ptr %s.byte.gep971, align 1
  %s.byte.val973 = zext i8 %s.byte972 to i64
  %cmptmp974 = icmp eq i64 %s.byte.val973, 46
  br label %and.32.exit

idx_oob969:                                       ; preds = %idx_big_check967, %str_ok956
  %56 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok968

choice.then975:                                   ; preds = %and.32.exit
  %var.load977 = load i64, ptr %"var.end'", align 8
  %subtmp978 = sub i64 %var.load977, 1
  store i64 %subtmp978, ptr %"var.end'", align 8
  br label %choice.exit976

choice.exit976:                                   ; preds = %choice.then975, %and.32.exit
  %var.load979 = load ptr, ptr %var.full, align 8
  %s.read.len980 = getelementptr inbounds { i64, ptr }, ptr %var.load979, i32 0, i32 0
  %s.read.len981 = load i64, ptr %s.read.len980, align 8
  %s.read.len982 = and i64 %s.read.len981, 281474976710655
  %str.tag983 = lshr i64 %s.read.len981, 48
  %str.immortal984 = icmp eq i64 %str.tag983, 0
  br i1 %str.immortal984, label %str_ok986, label %str_gen_check985

str_gen_check985:                                 ; preds = %choice.exit976
  %arena.gen988 = call ptr @dva_arena_current()
  %arena.gen989 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen988, i32 0, i32 4
  %arena.gen990 = load i64, ptr %arena.gen989, align 8
  %str.tag.match991 = icmp eq i64 %str.tag983, %arena.gen990
  br i1 %str.tag.match991, label %str_ok986, label %str_stale987

str_ok986:                                        ; preds = %str_stale987, %str_gen_check985, %choice.exit976
  %s.read.data992 = getelementptr inbounds { i64, ptr }, ptr %var.load979, i32 0, i32 1
  %s.read.data993 = load ptr, ptr %s.read.data992, align 8
  %var.load994 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len982, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len982
  %final.start = select i1 %start.gt.len, i64 %s.read.len982, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load994, 0
  %rel.end = add i64 %s.read.len982, %var.load994
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load994
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len982
  %final.end = select i1 %end.gt.len, i64 %s.read.len982, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data993, i64 %final.start
  %arena.cur995 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 16)
  %str.build.len.gep996 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep996, align 8
  %str.build.data.gep997 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep997, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load998 = load i64, ptr %"var.e'", align 8
  %cmptmp999 = icmp slt i64 %var.load998, 0
  br i1 %cmptmp999, label %choice.then1000, label %choice.else1001

str_stale987:                                     ; preds = %str_gen_check985
  %57 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok986

choice.then1000:                                  ; preds = %str_ok986
  %var.load1003 = load i64, ptr %"var.e'", align 8
  %subtmp1004 = sub i64 0, %var.load1003
  %call.res1005 = call ptr @"str::from_int"(i64 %subtmp1004)
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs1006 = and i64 %concat.lhs, 281474976710655
  %str.tag1007 = lshr i64 %concat.lhs, 48
  %str.immortal1008 = icmp eq i64 %str.tag1007, 0
  br i1 %str.immortal1008, label %str_ok1010, label %str_gen_check1009

choice.else1001:                                  ; preds = %str_ok986
  %var.load1042 = load i64, ptr %"var.e'", align 8
  %call.res1043 = call ptr @"str::from_int"(i64 %var.load1042)
  br label %choice.exit1002

choice.exit1002:                                  ; preds = %choice.else1001, %concat.tot.len1036
  %choice.res1044 = phi ptr [ %concat.str, %concat.tot.len1036 ], [ %call.res1043, %choice.else1001 ]
  store ptr %choice.res1044, ptr %var.es, align 8
  %var.load1045 = load i64, ptr %"var.e'", align 8
  %cmptmp1046 = icmp slt i64 %var.load1045, -4
  br i1 %cmptmp1046, label %or.33.then, label %or.33.else

str_gen_check1009:                                ; preds = %choice.then1000
  %arena.gen1012 = call ptr @dva_arena_current()
  %arena.gen1013 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1012, i32 0, i32 4
  %arena.gen1014 = load i64, ptr %arena.gen1013, align 8
  %str.tag.match1015 = icmp eq i64 %str.tag1007, %arena.gen1014
  br i1 %str.tag.match1015, label %str_ok1010, label %str_stale1011

str_ok1010:                                       ; preds = %str_stale1011, %str_gen_check1009, %choice.then1000
  %concat.lhs1016 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res1005, i32 0, i32 0
  %concat.rhs1017 = load i64, ptr %concat.rhs, align 8
  %concat.rhs1018 = and i64 %concat.rhs1017, 281474976710655
  %str.tag1019 = lshr i64 %concat.rhs1017, 48
  %str.immortal1020 = icmp eq i64 %str.tag1019, 0
  br i1 %str.immortal1020, label %str_ok1022, label %str_gen_check1021

str_stale1011:                                    ; preds = %str_gen_check1009
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1010

str_gen_check1021:                                ; preds = %str_ok1010
  %arena.gen1024 = call ptr @dva_arena_current()
  %arena.gen1025 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1024, i32 0, i32 4
  %arena.gen1026 = load i64, ptr %arena.gen1025, align 8
  %str.tag.match1027 = icmp eq i64 %str.tag1019, %arena.gen1026
  br i1 %str.tag.match1027, label %str_ok1022, label %str_stale1023

str_ok1022:                                       ; preds = %str_stale1023, %str_gen_check1021, %str_ok1010
  %concat.rhs1028 = getelementptr inbounds { i64, ptr }, ptr %call.res1005, i32 0, i32 1
  %concat.rhs1029 = load ptr, ptr %concat.rhs1028, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1006, i64 %concat.rhs1018)
  %sum1030 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf1031 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf1031, label %str_overflow_abort1033, label %concat.sum.len1032

str_stale1023:                                    ; preds = %str_gen_check1021
  %59 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1022

concat.sum.len1032:                               ; preds = %str_overflow_abort1033, %str_ok1022
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1030, i64 1)
  %sum1034 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf1035 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf1035, label %str_overflow_abort1037, label %concat.tot.len1036

str_overflow_abort1033:                           ; preds = %str_ok1022
  %60 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1032

concat.tot.len1036:                               ; preds = %str_overflow_abort1037, %concat.sum.len1032
  %arena.cur1038 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 %sum1034)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs1016, i64 %concat.lhs1006, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1006
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs1029, i64 %concat.rhs1018, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum1030
  store i8 0, ptr %concat.nul, align 1
  %arena.cur1039 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur1039, i64 16)
  %str.build.len.gep1040 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum1030, ptr %str.build.len.gep1040, align 8
  %str.build.data.gep1041 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep1041, align 8
  br label %choice.exit1002

str_overflow_abort1037:                           ; preds = %concat.sum.len1032
  %61 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1036

or.33.then:                                       ; preds = %choice.exit1002
  br label %or.33.exit

or.33.else:                                       ; preds = %choice.exit1002
  %var.load1047 = load i64, ptr %"var.e'", align 8
  %cmptmp1048 = icmp sge i64 %var.load1047, 6
  br label %or.33.exit

or.33.exit:                                       ; preds = %or.33.else, %or.33.then
  %or.33.phi = phi i1 [ %cmptmp1046, %or.33.then ], [ %cmptmp1048, %or.33.else ]
  br i1 %or.33.phi, label %choice.then1049, label %choice.else1050

choice.then1049:                                  ; preds = %or.33.exit
  %var.load1052 = load ptr, ptr %var.mant, align 8
  %concat.lhs1053 = getelementptr inbounds { i64, ptr }, ptr %var.load1052, i32 0, i32 0
  %concat.lhs1054 = load i64, ptr %concat.lhs1053, align 8
  %concat.lhs1055 = and i64 %concat.lhs1054, 281474976710655
  %str.tag1056 = lshr i64 %concat.lhs1054, 48
  %str.immortal1057 = icmp eq i64 %str.tag1056, 0
  br i1 %str.immortal1057, label %str_ok1059, label %str_gen_check1058

choice.else1050:                                  ; preds = %or.33.exit
  %var.load1144 = load ptr, ptr %var.mant, align 8
  br label %choice.exit1051

choice.exit1051:                                  ; preds = %choice.else1050, %concat.tot.len1134
  %choice.res1145 = phi ptr [ %concat.str1141, %concat.tot.len1134 ], [ %var.load1144, %choice.else1050 ]
  br label %choice.exit8

str_gen_check1058:                                ; preds = %choice.then1049
  %arena.gen1061 = call ptr @dva_arena_current()
  %arena.gen1062 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1061, i32 0, i32 4
  %arena.gen1063 = load i64, ptr %arena.gen1062, align 8
  %str.tag.match1064 = icmp eq i64 %str.tag1056, %arena.gen1063
  br i1 %str.tag.match1064, label %str_ok1059, label %str_stale1060

str_ok1059:                                       ; preds = %str_stale1060, %str_gen_check1058, %choice.then1049
  %concat.lhs1065 = getelementptr inbounds { i64, ptr }, ptr %var.load1052, i32 0, i32 1
  %concat.lhs1066 = load ptr, ptr %concat.lhs1065, align 8
  %concat.rhs1067 = load i64, ptr @str.3.struct, align 8
  %concat.rhs1068 = and i64 %concat.rhs1067, 281474976710655
  %str.tag1069 = lshr i64 %concat.rhs1067, 48
  %str.immortal1070 = icmp eq i64 %str.tag1069, 0
  br i1 %str.immortal1070, label %str_ok1072, label %str_gen_check1071

str_stale1060:                                    ; preds = %str_gen_check1058
  %62 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1059

str_gen_check1071:                                ; preds = %str_ok1059
  %arena.gen1074 = call ptr @dva_arena_current()
  %arena.gen1075 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1074, i32 0, i32 4
  %arena.gen1076 = load i64, ptr %arena.gen1075, align 8
  %str.tag.match1077 = icmp eq i64 %str.tag1069, %arena.gen1076
  br i1 %str.tag.match1077, label %str_ok1072, label %str_stale1073

str_ok1072:                                       ; preds = %str_stale1073, %str_gen_check1071, %str_ok1059
  %concat.rhs1078 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %concat.sum.len1079 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1055, i64 %concat.rhs1068)
  %sum1080 = extractvalue { i64, i1 } %concat.sum.len1079, 0
  %ovf1081 = extractvalue { i64, i1 } %concat.sum.len1079, 1
  br i1 %ovf1081, label %str_overflow_abort1083, label %concat.sum.len1082

str_stale1073:                                    ; preds = %str_gen_check1071
  %63 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1072

concat.sum.len1082:                               ; preds = %str_overflow_abort1083, %str_ok1072
  %concat.tot.len1084 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1080, i64 1)
  %sum1085 = extractvalue { i64, i1 } %concat.tot.len1084, 0
  %ovf1086 = extractvalue { i64, i1 } %concat.tot.len1084, 1
  br i1 %ovf1086, label %str_overflow_abort1088, label %concat.tot.len1087

str_overflow_abort1083:                           ; preds = %str_ok1072
  %64 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1082

concat.tot.len1087:                               ; preds = %str_overflow_abort1088, %concat.sum.len1082
  %arena.cur1089 = call ptr @dva_arena_current()
  %concat.buf1090 = call ptr @dva_arena_alloc(ptr %arena.cur1089, i64 %sum1085)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1090, ptr align 1 %concat.lhs1066, i64 %concat.lhs1055, i1 false)
  %concat.mid1091 = getelementptr i8, ptr %concat.buf1090, i64 %concat.lhs1055
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1091, ptr align 1 %concat.rhs1078, i64 %concat.rhs1068, i1 false)
  %concat.nul1092 = getelementptr i8, ptr %concat.buf1090, i64 %sum1080
  store i8 0, ptr %concat.nul1092, align 1
  %arena.cur1093 = call ptr @dva_arena_current()
  %concat.str1094 = call ptr @dva_arena_alloc(ptr %arena.cur1093, i64 16)
  %str.build.len.gep1095 = getelementptr inbounds { i64, ptr }, ptr %concat.str1094, i32 0, i32 0
  store i64 %sum1080, ptr %str.build.len.gep1095, align 8
  %str.build.data.gep1096 = getelementptr inbounds { i64, ptr }, ptr %concat.str1094, i32 0, i32 1
  store ptr %concat.buf1090, ptr %str.build.data.gep1096, align 8
  %var.load1097 = load ptr, ptr %var.es, align 8
  %concat.lhs1098 = getelementptr inbounds { i64, ptr }, ptr %concat.str1094, i32 0, i32 0
  %concat.lhs1099 = load i64, ptr %concat.lhs1098, align 8
  %concat.lhs1100 = and i64 %concat.lhs1099, 281474976710655
  %str.tag1101 = lshr i64 %concat.lhs1099, 48
  %str.immortal1102 = icmp eq i64 %str.tag1101, 0
  br i1 %str.immortal1102, label %str_ok1104, label %str_gen_check1103

str_overflow_abort1088:                           ; preds = %concat.sum.len1082
  %65 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1087

str_gen_check1103:                                ; preds = %concat.tot.len1087
  %arena.gen1106 = call ptr @dva_arena_current()
  %arena.gen1107 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1106, i32 0, i32 4
  %arena.gen1108 = load i64, ptr %arena.gen1107, align 8
  %str.tag.match1109 = icmp eq i64 %str.tag1101, %arena.gen1108
  br i1 %str.tag.match1109, label %str_ok1104, label %str_stale1105

str_ok1104:                                       ; preds = %str_stale1105, %str_gen_check1103, %concat.tot.len1087
  %concat.lhs1110 = getelementptr inbounds { i64, ptr }, ptr %concat.str1094, i32 0, i32 1
  %concat.lhs1111 = load ptr, ptr %concat.lhs1110, align 8
  %concat.rhs1112 = getelementptr inbounds { i64, ptr }, ptr %var.load1097, i32 0, i32 0
  %concat.rhs1113 = load i64, ptr %concat.rhs1112, align 8
  %concat.rhs1114 = and i64 %concat.rhs1113, 281474976710655
  %str.tag1115 = lshr i64 %concat.rhs1113, 48
  %str.immortal1116 = icmp eq i64 %str.tag1115, 0
  br i1 %str.immortal1116, label %str_ok1118, label %str_gen_check1117

str_stale1105:                                    ; preds = %str_gen_check1103
  %66 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1104

str_gen_check1117:                                ; preds = %str_ok1104
  %arena.gen1120 = call ptr @dva_arena_current()
  %arena.gen1121 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1120, i32 0, i32 4
  %arena.gen1122 = load i64, ptr %arena.gen1121, align 8
  %str.tag.match1123 = icmp eq i64 %str.tag1115, %arena.gen1122
  br i1 %str.tag.match1123, label %str_ok1118, label %str_stale1119

str_ok1118:                                       ; preds = %str_stale1119, %str_gen_check1117, %str_ok1104
  %concat.rhs1124 = getelementptr inbounds { i64, ptr }, ptr %var.load1097, i32 0, i32 1
  %concat.rhs1125 = load ptr, ptr %concat.rhs1124, align 8
  %concat.sum.len1126 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1100, i64 %concat.rhs1114)
  %sum1127 = extractvalue { i64, i1 } %concat.sum.len1126, 0
  %ovf1128 = extractvalue { i64, i1 } %concat.sum.len1126, 1
  br i1 %ovf1128, label %str_overflow_abort1130, label %concat.sum.len1129

str_stale1119:                                    ; preds = %str_gen_check1117
  %67 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1118

concat.sum.len1129:                               ; preds = %str_overflow_abort1130, %str_ok1118
  %concat.tot.len1131 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1127, i64 1)
  %sum1132 = extractvalue { i64, i1 } %concat.tot.len1131, 0
  %ovf1133 = extractvalue { i64, i1 } %concat.tot.len1131, 1
  br i1 %ovf1133, label %str_overflow_abort1135, label %concat.tot.len1134

str_overflow_abort1130:                           ; preds = %str_ok1118
  %68 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1129

concat.tot.len1134:                               ; preds = %str_overflow_abort1135, %concat.sum.len1129
  %arena.cur1136 = call ptr @dva_arena_current()
  %concat.buf1137 = call ptr @dva_arena_alloc(ptr %arena.cur1136, i64 %sum1132)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1137, ptr align 1 %concat.lhs1111, i64 %concat.lhs1100, i1 false)
  %concat.mid1138 = getelementptr i8, ptr %concat.buf1137, i64 %concat.lhs1100
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1138, ptr align 1 %concat.rhs1125, i64 %concat.rhs1114, i1 false)
  %concat.nul1139 = getelementptr i8, ptr %concat.buf1137, i64 %sum1127
  store i8 0, ptr %concat.nul1139, align 1
  %arena.cur1140 = call ptr @dva_arena_current()
  %concat.str1141 = call ptr @dva_arena_alloc(ptr %arena.cur1140, i64 16)
  %str.build.len.gep1142 = getelementptr inbounds { i64, ptr }, ptr %concat.str1141, i32 0, i32 0
  store i64 %sum1127, ptr %str.build.len.gep1142, align 8
  %str.build.data.gep1143 = getelementptr inbounds { i64, ptr }, ptr %concat.str1141, i32 0, i32 1
  store ptr %concat.buf1137, ptr %str.build.data.gep1143, align 8
  br label %choice.exit1051

str_overflow_abort1135:                           ; preds = %concat.sum.len1129
  %69 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1134
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  store i64 %str.len.query2, ptr %var.la, align 8
  %var.load5 = load ptr, ptr %var.b, align 8
  %str.len.query6 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %str.len.query7 = load i64, ptr %str.len.query6, align 8
  %str.len.query8 = and i64 %str.len.query7, 281474976710655
  %str.tag9 = lshr i64 %str.len.query7, 48
  %str.immortal10 = icmp eq i64 %str.tag9, 0
  br i1 %str.immortal10, label %str_ok12, label %str_gen_check11

str_stale:                                        ; preds = %str_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check11:                                  ; preds = %str_ok
  %arena.gen14 = call ptr @dva_arena_current()
  %arena.gen15 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen14, i32 0, i32 4
  %arena.gen16 = load i64, ptr %arena.gen15, align 8
  %str.tag.match17 = icmp eq i64 %str.tag9, %arena.gen16
  br i1 %str.tag.match17, label %str_ok12, label %str_stale13

str_ok12:                                         ; preds = %str_stale13, %str_gen_check11, %str_ok
  store i64 %str.len.query8, ptr %var.lb, align 8
  %var.load18 = load i64, ptr %var.la, align 8
  %var.load19 = load i64, ptr %var.lb, align 8
  %cmptmp = icmp slt i64 %var.load18, %var.load19
  br i1 %cmptmp, label %choice.then, label %choice.else

str_stale13:                                      ; preds = %str_gen_check11
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok12

choice.then:                                      ; preds = %str_ok12
  %var.load20 = load i64, ptr %var.la, align 8
  br label %choice.exit

choice.else:                                      ; preds = %str_ok12
  %var.load21 = load i64, ptr %var.lb, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load20, %choice.then ], [ %var.load21, %choice.else ]
  store i64 %choice.res, ptr %var.n, align 8
  store i64 0, ptr %"var.r'", align 8
  %var.load22 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.34, align 8
  br label %loop.header.34

loop.header.34:                                   ; preds = %loop.latch.34, %choice.exit
  %counter.load = load i64, ptr %loop.idx.34, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load22
  br i1 %loop.cond, label %loop.body.34, label %loop.exit.nat.34

loop.body.34:                                     ; preds = %loop.header.34
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.34, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load23 = load ptr, ptr %var.a, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 0
  %s.read.len24 = load i64, ptr %s.read.len, align 8
  %s.read.len25 = and i64 %s.read.len24, 281474976710655
  %str.tag26 = lshr i64 %s.read.len24, 48
  %str.immortal27 = icmp eq i64 %str.tag26, 0
  br i1 %str.immortal27, label %str_ok29, label %str_gen_check28

loop.exit.nat.34:                                 ; preds = %loop.header.34
  br label %loop.exit.34

loop.latch.34:                                    ; preds = %choice.exit65
  %step.val = load i64, ptr %loop.step.34, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.34, align 8
  br label %loop.header.34

loop.exit.34:                                     ; preds = %choice.exit71, %loop.exit.nat.34
  %var.load73 = load i64, ptr %"var.r'", align 8
  %cmptmp74 = icmp ne i64 %var.load73, 0
  br i1 %cmptmp74, label %choice.then75, label %choice.else76

str_gen_check28:                                  ; preds = %loop.body.34
  %arena.gen31 = call ptr @dva_arena_current()
  %arena.gen32 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen31, i32 0, i32 4
  %arena.gen33 = load i64, ptr %arena.gen32, align 8
  %str.tag.match34 = icmp eq i64 %str.tag26, %arena.gen33
  br i1 %str.tag.match34, label %str_ok29, label %str_stale30

str_ok29:                                         ; preds = %str_stale30, %str_gen_check28, %loop.body.34
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load23, i32 0, i32 1
  %s.read.data35 = load ptr, ptr %s.read.data, align 8
  %var.load36 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load36, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale30:                                      ; preds = %str_gen_check28
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok29

idx_big_check:                                    ; preds = %str_ok29
  %idx.big = icmp sge i64 %var.load36, %s.read.len25
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data35, i64 %var.load36
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.ca, align 8
  %var.load37 = load ptr, ptr %var.b, align 8
  %s.read.len38 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 0
  %s.read.len39 = load i64, ptr %s.read.len38, align 8
  %s.read.len40 = and i64 %s.read.len39, 281474976710655
  %str.tag41 = lshr i64 %s.read.len39, 48
  %str.immortal42 = icmp eq i64 %str.tag41, 0
  br i1 %str.immortal42, label %str_ok44, label %str_gen_check43

idx_oob:                                          ; preds = %idx_big_check, %str_ok29
  %5 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check43:                                  ; preds = %idx_ok
  %arena.gen46 = call ptr @dva_arena_current()
  %arena.gen47 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen46, i32 0, i32 4
  %arena.gen48 = load i64, ptr %arena.gen47, align 8
  %str.tag.match49 = icmp eq i64 %str.tag41, %arena.gen48
  br i1 %str.tag.match49, label %str_ok44, label %str_stale45

str_ok44:                                         ; preds = %str_stale45, %str_gen_check43, %idx_ok
  %s.read.data50 = getelementptr inbounds { i64, ptr }, ptr %var.load37, i32 0, i32 1
  %s.read.data51 = load ptr, ptr %s.read.data50, align 8
  %var.load52 = load i64, ptr %var.i, align 8
  %idx.neg53 = icmp slt i64 %var.load52, 0
  br i1 %idx.neg53, label %idx_oob56, label %idx_big_check54

str_stale45:                                      ; preds = %str_gen_check43
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok44

idx_big_check54:                                  ; preds = %str_ok44
  %idx.big57 = icmp sge i64 %var.load52, %s.read.len40
  br i1 %idx.big57, label %idx_oob56, label %idx_ok55

idx_ok55:                                         ; preds = %idx_oob56, %idx_big_check54
  %s.byte.gep58 = getelementptr i8, ptr %s.read.data51, i64 %var.load52
  %s.byte59 = load i8, ptr %s.byte.gep58, align 1
  %s.byte.val60 = zext i8 %s.byte59 to i64
  store i64 %s.byte.val60, ptr %var.cb, align 8
  %var.load61 = load i64, ptr %var.ca, align 8
  %var.load62 = load i64, ptr %var.cb, align 8
  %cmptmp63 = icmp ne i64 %var.load61, %var.load62
  br i1 %cmptmp63, label %choice.then64, label %choice.exit65

idx_oob56:                                        ; preds = %idx_big_check54, %str_ok44
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok55

choice.then64:                                    ; preds = %idx_ok55
  %var.load66 = load i64, ptr %var.ca, align 8
  %var.load67 = load i64, ptr %var.cb, align 8
  %cmptmp68 = icmp slt i64 %var.load66, %var.load67
  br i1 %cmptmp68, label %choice.then69, label %choice.else70

choice.exit65:                                    ; preds = %idx_ok55
  br label %loop.latch.34

choice.then69:                                    ; preds = %choice.then64
  br label %choice.exit71

choice.else70:                                    ; preds = %choice.then64
  br label %choice.exit71

choice.exit71:                                    ; preds = %choice.else70, %choice.then69
  %choice.res72 = phi i64 [ -1, %choice.then69 ], [ 1, %choice.else70 ]
  store i64 %choice.res72, ptr %"var.r'", align 8
  br label %loop.exit.34

choice.then75:                                    ; preds = %loop.exit.34
  %var.load78 = load i64, ptr %"var.r'", align 8
  br label %choice.exit77

choice.else76:                                    ; preds = %loop.exit.34
  %var.load79 = load i64, ptr %var.la, align 8
  %var.load80 = load i64, ptr %var.lb, align 8
  %cmptmp81 = icmp eq i64 %var.load79, %var.load80
  br i1 %cmptmp81, label %choice.then82, label %choice.else83

choice.exit77:                                    ; preds = %choice.exit84, %choice.then75
  %choice.res93 = phi i64 [ %var.load78, %choice.then75 ], [ %choice.res92, %choice.exit84 ]
  ret i64 %choice.res93

choice.then82:                                    ; preds = %choice.else76
  br label %choice.exit84

choice.else83:                                    ; preds = %choice.else76
  %var.load85 = load i64, ptr %var.la, align 8
  %var.load86 = load i64, ptr %var.lb, align 8
  %cmptmp87 = icmp slt i64 %var.load85, %var.load86
  br i1 %cmptmp87, label %choice.then88, label %choice.else89

choice.exit84:                                    ; preds = %choice.exit90, %choice.then82
  %choice.res92 = phi i64 [ 0, %choice.then82 ], [ %choice.res91, %choice.exit90 ]
  br label %choice.exit77

choice.then88:                                    ; preds = %choice.else83
  br label %choice.exit90

choice.else89:                                    ; preds = %choice.else83
  br label %choice.exit90

choice.exit90:                                    ; preds = %choice.else89, %choice.then88
  %choice.res91 = phi i64 [ -1, %choice.then88 ], [ 1, %choice.else89 ]
  br label %choice.exit84
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
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
  %s.byte.gep = getelementptr i8, ptr %s.read.data5, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.b, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load6 = load i64, ptr %var.b, align 8
  %call.res = call i1 @"str::is_digit"(i64 %var.load6)
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
  %var.load9 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load9, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.35
  br label %loop.exit.35

choice.exit:                                      ; preds = %loop.body.35
  %var.load7 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load7, 10
  %var.load8 = load i64, ptr %var.b, align 8
  %subtmp = sub i64 %var.load8, 48
  %addtmp = add i64 %multmp, %subtmp
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %loop.latch.35

choice.exit10:                                    ; preds = %str_ok18, %choice.case
  %choice.res = phi ptr [ null, %choice.case ], [ %rec.alloc, %str_ok18 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %loop.exit.35
  br label %choice.exit10

choice.next:                                      ; preds = %loop.exit.35
  %var.load11 = load i64, ptr %"var.val'", align 8
  %var.load12 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %str.tag15 = lshr i64 %s.read.len13, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

str_gen_check17:                                  ; preds = %choice.next
  %arena.gen20 = call ptr @dva_arena_current()
  %arena.gen21 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen20, i32 0, i32 4
  %arena.gen22 = load i64, ptr %arena.gen21, align 8
  %str.tag.match23 = icmp eq i64 %str.tag15, %arena.gen22
  br i1 %str.tag.match23, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %choice.next
  %s.read.data24 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %s.read.data25 = load ptr, ptr %s.read.data24, align 8
  %var.load26 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load26, 0
  %rel.start = add i64 %s.read.len14, %var.load26
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load26
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len14
  %final.start = select i1 %start.gt.len, i64 %s.read.len14, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len14, 0
  %rel.end = add i64 %s.read.len14, %s.read.len14
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len14
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len14
  %final.end = select i1 %end.gt.len, i64 %s.read.len14, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data25, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur27 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load11, ptr %rec.fld, align 8
  %rec.fld28 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld28, align 8
  br label %choice.exit10

str_stale19:                                      ; preds = %str_gen_check17
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok18
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen3 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen4 = load i64, ptr %arena.gen3, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen4
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %s.read.data5 = load ptr, ptr %s.read.data, align 8
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
  %s.byte.gep = getelementptr i8, ptr %s.read.data5, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.b, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load6 = load i64, ptr %var.b, align 8
  %call.res = call i1 @"str::is_hex"(i64 %var.load6)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

loop.exit.nat.36:                                 ; preds = %loop.header.36
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.36

loop.latch.36:                                    ; preds = %choice.exit10
  %step.val = load i64, ptr %loop.step.36, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %choice.then, %loop.exit.nat.36
  %var.load27 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load27, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.36
  br label %loop.exit.36

choice.exit:                                      ; preds = %loop.body.36
  %var.load7 = load i64, ptr %var.b, align 8
  %call.res8 = call i1 @"str::is_digit"(i64 %var.load7)
  br i1 %call.res8, label %choice.then9, label %choice.else

choice.then9:                                     ; preds = %choice.exit
  %var.load11 = load i64, ptr %var.b, align 8
  %subtmp = sub i64 %var.load11, 48
  br label %choice.exit10

choice.else:                                      ; preds = %choice.exit
  %var.load12 = load i64, ptr %var.b, align 8
  %cmptmp = icmp sge i64 %var.load12, 65
  br i1 %cmptmp, label %and.37.then, label %and.37.else

choice.exit10:                                    ; preds = %choice.exit17, %choice.then9
  %choice.res23 = phi i64 [ %subtmp, %choice.then9 ], [ %choice.res, %choice.exit17 ]
  store i64 %choice.res23, ptr %var.digit, align 8
  %var.load24 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load24, 16
  %var.load25 = load i64, ptr %var.digit, align 8
  %addtmp26 = add i64 %multmp, %var.load25
  store i64 %addtmp26, ptr %"var.val'", align 8
  br label %loop.latch.36

and.37.then:                                      ; preds = %choice.else
  %var.load13 = load i64, ptr %var.b, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 70
  br label %and.37.exit

and.37.else:                                      ; preds = %choice.else
  br label %and.37.exit

and.37.exit:                                      ; preds = %and.37.else, %and.37.then
  %and.37.phi = phi i1 [ %cmptmp14, %and.37.then ], [ %cmptmp, %and.37.else ]
  br i1 %and.37.phi, label %choice.then15, label %choice.else16

choice.then15:                                    ; preds = %and.37.exit
  %var.load18 = load i64, ptr %var.b, align 8
  %subtmp19 = sub i64 %var.load18, 65
  %addtmp = add i64 %subtmp19, 10
  br label %choice.exit17

choice.else16:                                    ; preds = %and.37.exit
  %var.load20 = load i64, ptr %var.b, align 8
  %subtmp21 = sub i64 %var.load20, 97
  %addtmp22 = add i64 %subtmp21, 10
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else16, %choice.then15
  %choice.res = phi i64 [ %addtmp, %choice.then15 ], [ %addtmp22, %choice.else16 ]
  br label %choice.exit10

choice.exit28:                                    ; preds = %str_ok36, %choice.case
  %choice.res47 = phi ptr [ null, %choice.case ], [ %rec.alloc, %str_ok36 ]
  ret ptr %choice.res47

choice.case:                                      ; preds = %loop.exit.36
  br label %choice.exit28

choice.next:                                      ; preds = %loop.exit.36
  %var.load29 = load i64, ptr %"var.val'", align 8
  %var.load30 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %str.tag33 = lshr i64 %s.read.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

str_gen_check35:                                  ; preds = %choice.next
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %choice.next
  %s.read.data42 = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 1
  %s.read.data43 = load ptr, ptr %s.read.data42, align 8
  %var.load44 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load44, 0
  %rel.start = add i64 %s.read.len32, %var.load44
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load44
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len32
  %final.start = select i1 %start.gt.len, i64 %s.read.len32, i64 %c.start.0
  %end.is_neg = icmp slt i64 %s.read.len32, 0
  %rel.end = add i64 %s.read.len32, %s.read.len32
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %s.read.len32
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len32
  %final.end = select i1 %end.gt.len, i64 %s.read.len32, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data43, i64 %final.start
  %arena.cur = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur45 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load29, ptr %rec.fld, align 8
  %rec.fld46 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld46, align 8
  br label %choice.exit28

str_stale37:                                      ; preds = %str_gen_check35
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok36
}

define ptr @"str::hex_to_str"(i64 %0) #1 {
entry:
  %var._129 = alloca i64, align 8
  %var._i128 = alloca i64, align 8
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

choice.exit:                                      ; preds = %b.freeze.done249, %choice.case
  %choice.res275 = phi ptr [ @str.4.struct, %choice.case ], [ %builder.freeze269, %b.freeze.done249 ]
  ret ptr %choice.res275

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %str_overflow_abort, %choice.next
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

str_overflow_abort:                               ; preds = %choice.next
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
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.40
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
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
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen123 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen124 = load i64, ptr %arena.gen123, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen124
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len115
  store i64 0, ptr %loop.idx.41, align 8
  br label %loop.header.41

str_stale:                                        ; preds = %str_gen_check
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.41:                                   ; preds = %loop.latch.41, %str_ok
  %counter.load125 = load i64, ptr %loop.idx.41, align 8
  %loop.cond126 = icmp slt i64 %counter.load125, %str.len.query122
  br i1 %loop.cond126, label %loop.body.41, label %loop.exit.nat.41

loop.body.41:                                     ; preds = %loop.header.41
  %loop.rel.i127 = sub i64 %counter.load125, 0
  store i64 1, ptr %loop.step.41, align 8
  store i64 %loop.rel.i127, ptr %var._i128, align 8
  store i64 %counter.load125, ptr %var._129, align 8
  store i64 %counter.load125, ptr %var.i, align 8
  %var.load130 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 0
  %s.read.len131 = load i64, ptr %s.read.len, align 8
  %s.read.len132 = and i64 %s.read.len131, 281474976710655
  %str.tag133 = lshr i64 %s.read.len131, 48
  %str.immortal134 = icmp eq i64 %str.tag133, 0
  br i1 %str.immortal134, label %str_ok136, label %str_gen_check135

loop.exit.nat.41:                                 ; preds = %loop.header.41
  br label %loop.exit.41

loop.latch.41:                                    ; preds = %b.push_done214
  %step.val236 = load i64, ptr %loop.step.41, align 8
  %loop.next237 = add i64 %counter.load125, %step.val236
  store i64 %loop.next237, ptr %loop.idx.41, align 8
  br label %loop.header.41

loop.exit.41:                                     ; preds = %loop.exit.nat.41
  %var.load238 = load ptr, ptr %var.out, align 8
  %b.freeze.len239 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load238, i32 0, i32 0
  %b.freeze.len240 = load i64, ptr %b.freeze.len239, align 8
  %b.freeze.data241 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load238, i32 0, i32 1
  %b.freeze.data242 = load ptr, ptr %b.freeze.data241, align 8
  %b.freeze.arena243 = call ptr @dva_arena_current()
  %b.freeze.nc.gep244 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena243, i32 0, i32 1
  %b.freeze.nc245 = load i64, ptr %b.freeze.nc.gep244, align 8
  %b.freeze.has.chunk246 = icmp sgt i64 %b.freeze.nc245, 0
  br i1 %b.freeze.has.chunk246, label %b.freeze.check247, label %b.freeze.done249

str_gen_check135:                                 ; preds = %loop.body.41
  %arena.gen138 = call ptr @dva_arena_current()
  %arena.gen139 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen138, i32 0, i32 4
  %arena.gen140 = load i64, ptr %arena.gen139, align 8
  %str.tag.match141 = icmp eq i64 %str.tag133, %arena.gen140
  br i1 %str.tag.match141, label %str_ok136, label %str_stale137

str_ok136:                                        ; preds = %str_stale137, %str_gen_check135, %loop.body.41
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load130, i32 0, i32 1
  %s.read.data142 = load ptr, ptr %s.read.data, align 8
  %var.load143 = load ptr, ptr %var.s, align 8
  %str.len.query144 = getelementptr inbounds { i64, ptr }, ptr %var.load143, i32 0, i32 0
  %str.len.query145 = load i64, ptr %str.len.query144, align 8
  %str.len.query146 = and i64 %str.len.query145, 281474976710655
  %str.tag147 = lshr i64 %str.len.query145, 48
  %str.immortal148 = icmp eq i64 %str.tag147, 0
  br i1 %str.immortal148, label %str_ok150, label %str_gen_check149

str_stale137:                                     ; preds = %str_gen_check135
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok136

str_gen_check149:                                 ; preds = %str_ok136
  %arena.gen152 = call ptr @dva_arena_current()
  %arena.gen153 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen152, i32 0, i32 4
  %arena.gen154 = load i64, ptr %arena.gen153, align 8
  %str.tag.match155 = icmp eq i64 %str.tag147, %arena.gen154
  br i1 %str.tag.match155, label %str_ok150, label %str_stale151

str_ok150:                                        ; preds = %str_stale151, %str_gen_check149, %str_ok136
  %subtmp156 = sub i64 %str.len.query146, 1
  %var.load157 = load i64, ptr %var.i, align 8
  %subtmp158 = sub i64 %subtmp156, %var.load157
  %idx.neg = icmp slt i64 %subtmp158, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale151:                                     ; preds = %str_gen_check149
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok150

idx_big_check:                                    ; preds = %str_ok150
  %idx.big = icmp sge i64 %subtmp158, %s.read.len132
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data142, i64 %subtmp158
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load159 = load ptr, ptr %var.out, align 8
  %var.load160 = load ptr, ptr %var.s, align 8
  %s.read.len161 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 0
  %s.read.len162 = load i64, ptr %s.read.len161, align 8
  %s.read.len163 = and i64 %s.read.len162, 281474976710655
  %str.tag164 = lshr i64 %s.read.len162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

idx_oob:                                          ; preds = %idx_big_check, %str_ok150
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check166:                                 ; preds = %idx_ok
  %arena.gen169 = call ptr @dva_arena_current()
  %arena.gen170 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen169, i32 0, i32 4
  %arena.gen171 = load i64, ptr %arena.gen170, align 8
  %str.tag.match172 = icmp eq i64 %str.tag164, %arena.gen171
  br i1 %str.tag.match172, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %idx_ok
  %s.read.data173 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 1
  %s.read.data174 = load ptr, ptr %s.read.data173, align 8
  %var.load175 = load ptr, ptr %var.s, align 8
  %str.len.query176 = getelementptr inbounds { i64, ptr }, ptr %var.load175, i32 0, i32 0
  %str.len.query177 = load i64, ptr %str.len.query176, align 8
  %str.len.query178 = and i64 %str.len.query177, 281474976710655
  %str.tag179 = lshr i64 %str.len.query177, 48
  %str.immortal180 = icmp eq i64 %str.tag179, 0
  br i1 %str.immortal180, label %str_ok182, label %str_gen_check181

str_stale168:                                     ; preds = %str_gen_check166
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

str_gen_check181:                                 ; preds = %str_ok167
  %arena.gen184 = call ptr @dva_arena_current()
  %arena.gen185 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen184, i32 0, i32 4
  %arena.gen186 = load i64, ptr %arena.gen185, align 8
  %str.tag.match187 = icmp eq i64 %str.tag179, %arena.gen186
  br i1 %str.tag.match187, label %str_ok182, label %str_stale183

str_ok182:                                        ; preds = %str_stale183, %str_gen_check181, %str_ok167
  %subtmp188 = sub i64 %str.len.query178, 1
  %var.load189 = load i64, ptr %var.i, align 8
  %subtmp190 = sub i64 %subtmp188, %var.load189
  %idx.neg191 = icmp slt i64 %subtmp190, 0
  br i1 %idx.neg191, label %idx_oob194, label %idx_big_check192

str_stale183:                                     ; preds = %str_gen_check181
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok182

idx_big_check192:                                 ; preds = %str_ok182
  %idx.big195 = icmp sge i64 %subtmp190, %s.read.len163
  br i1 %idx.big195, label %idx_oob194, label %idx_ok193

idx_ok193:                                        ; preds = %idx_oob194, %idx_big_check192
  %s.byte.gep196 = getelementptr i8, ptr %s.read.data174, i64 %subtmp190
  %s.byte197 = load i8, ptr %s.byte.gep196, align 1
  %s.byte.val198 = zext i8 %s.byte197 to i64
  %b.b.ge0199 = icmp sge i64 %s.byte.val198, 0
  %b.b.le255200 = icmp sle i64 %s.byte.val198, 255
  %b.byte.range201 = and i1 %b.b.ge0199, %b.b.le255200
  br i1 %b.byte.range201, label %b.byte_ok202, label %b.byte_err203

idx_oob194:                                       ; preds = %idx_big_check192, %str_ok182
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok193

b.byte_ok202:                                     ; preds = %b.byte_err203, %idx_ok193
  %b.byte.i8204 = trunc i64 %s.byte.val198 to i8
  %b.len205 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load159, i32 0, i32 0
  %b.len206 = load i64, ptr %b.len205, align 8
  %b.cap207 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load159, i32 0, i32 2
  %b.cap208 = load i64, ptr %b.cap207, align 8
  %b.data209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load159, i32 0, i32 1
  %b.data210 = load ptr, ptr %b.data209, align 8
  %b.needs.grow211 = icmp eq i64 %b.len206, %b.cap208
  br i1 %b.needs.grow211, label %b.grow212, label %b.nogrow213

b.byte_err203:                                    ; preds = %idx_ok193
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok202

b.grow212:                                        ; preds = %b.byte_ok202
  %b.cap2215 = mul i64 %b.cap208, 2
  %b.cap.small216 = icmp slt i64 %b.cap2215, 16
  %b.new.cap217 = select i1 %b.cap.small216, i64 16, i64 %b.cap2215
  %b.new.buf.len218 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap217, i64 1)
  %sum219 = extractvalue { i64, i1 } %b.new.buf.len218, 0
  %ovf220 = extractvalue { i64, i1 } %b.new.buf.len218, 1
  br i1 %ovf220, label %str_overflow_abort222, label %b.new.buf.len221

b.nogrow213:                                      ; preds = %b.byte_ok202
  br label %b.push_done214

b.push_done214:                                   ; preds = %b.nogrow213, %b.new.buf.len221
  %b.cur.data228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load159, i32 0, i32 1
  %b.cur.data229 = load ptr, ptr %b.cur.data228, align 8
  %b.cur.len230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load159, i32 0, i32 0
  %b.cur.len231 = load i64, ptr %b.cur.len230, align 8
  %b.byte.gep232 = getelementptr i8, ptr %b.cur.data229, i64 %b.cur.len231
  store i8 %b.byte.i8204, ptr %b.byte.gep232, align 1
  %b.next.len233 = add i64 %b.cur.len231, 1
  %b.nul234 = getelementptr i8, ptr %b.cur.data229, i64 %b.next.len233
  store i8 0, ptr %b.nul234, align 1
  %b.len.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load159, i32 0, i32 0
  store i64 %b.next.len233, ptr %b.len.gep235, align 8
  br label %loop.latch.41

b.new.buf.len221:                                 ; preds = %str_overflow_abort222, %b.grow212
  %arena.cur223 = call ptr @dva_arena_current()
  %b.new.buf224 = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 %sum219)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf224, ptr align 1 %b.data210, i64 %b.len206, i1 false)
  %b.grow.nul225 = getelementptr i8, ptr %b.new.buf224, i64 %b.len206
  store i8 0, ptr %b.grow.nul225, align 1
  %b.new.data.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load159, i32 0, i32 1
  store ptr %b.new.buf224, ptr %b.new.data.gep226, align 8
  %b.new.cap.gep227 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load159, i32 0, i32 2
  store i64 %b.new.cap217, ptr %b.new.cap.gep227, align 8
  br label %b.push_done214

str_overflow_abort222:                            ; preds = %b.grow212
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len221

b.freeze.check247:                                ; preds = %loop.exit.41
  %b.freeze.last.idx250 = sub i64 %b.freeze.nc245, 1
  %b.freeze.chunks.gep251 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena243, i32 0, i32 3
  %b.freeze.chunk.slot252 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep251, i64 0, i64 %b.freeze.last.idx250
  %b.freeze.last.chunk253 = load ptr, ptr %b.freeze.chunk.slot252, align 8
  %b.freeze.off.gep254 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena243, i32 0, i32 2
  %b.freeze.off255 = load i64, ptr %b.freeze.off.gep254, align 8
  %b.freeze.bump256 = getelementptr i8, ptr %b.freeze.last.chunk253, i64 %b.freeze.off255
  %b.freeze.cap.gep257 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena243, i32 0, i32 0
  %b.freeze.cap258 = load i64, ptr %b.freeze.cap.gep257, align 8
  %b.freeze.chunk.end259 = getelementptr i8, ptr %b.freeze.last.chunk253, i64 %b.freeze.cap258
  %b.freeze.ge.chunk260 = icmp uge ptr %b.freeze.data242, %b.freeze.last.chunk253
  %b.freeze.lt.end261 = icmp ult ptr %b.freeze.data242, %b.freeze.chunk.end259
  %b.freeze.in.chunk262 = and i1 %b.freeze.ge.chunk260, %b.freeze.lt.end261
  %b.freeze.ge.bump263 = icmp uge ptr %b.freeze.data242, %b.freeze.bump256
  %b.freeze.reaped264 = and i1 %b.freeze.in.chunk262, %b.freeze.ge.bump263
  br i1 %b.freeze.reaped264, label %b.freeze.copy248, label %b.freeze.done249

b.freeze.copy248:                                 ; preds = %b.freeze.check247
  %arena.cur265 = call ptr @dva_arena_current()
  %b.freeze.fresh266 = call ptr @dva_arena_alloc(ptr %arena.cur265, i64 %b.freeze.len240)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh266, ptr align 1 %b.freeze.data242, i64 %b.freeze.len240, i1 false)
  br label %b.freeze.done249

b.freeze.done249:                                 ; preds = %b.freeze.copy248, %b.freeze.check247, %loop.exit.41
  %b.freeze.data267 = phi ptr [ %b.freeze.data242, %loop.exit.41 ], [ %b.freeze.data242, %b.freeze.check247 ], [ %b.freeze.fresh266, %b.freeze.copy248 ]
  %arena.cur268 = call ptr @dva_arena_current()
  %builder.freeze269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 16)
  %str.build.len.gep270 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze269, i32 0, i32 0
  store i64 %b.freeze.len240, ptr %str.build.len.gep270, align 8
  %str.build.data.gep271 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze269, i32 0, i32 1
  store ptr %b.freeze.data267, ptr %str.build.data.gep271, align 8
  %b.freeze.rst.len272 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load238, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len272, align 8
  %b.freeze.rst.data273 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load238, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data273, align 8
  %b.freeze.rst.cap274 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load238, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap274, align 8
  br label %choice.exit
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
