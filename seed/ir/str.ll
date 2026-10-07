; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
  ret ptr %builder.freeze233
}

define ptr @"str::from_float"(double %0) #1 {
entry:
  %var.es = alloca ptr, align 8
  %var.mant = alloca ptr, align 8
  %var._910 = alloca i64, align 8
  %var._i909 = alloca i64, align 8
  %loop.step.30 = alloca i64, align 8
  %loop.idx.30 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._768 = alloca i64, align 8
  %var._i767 = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
  %var._717 = alloca i64, align 8
  %var._i716 = alloca i64, align 8
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
  %var._578 = alloca i64, align 8
  %var._i577 = alloca i64, align 8
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
  %var._436 = alloca i64, align 8
  %var._i435 = alloca i64, align 8
  %loop.step.24 = alloca i64, align 8
  %loop.idx.24 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._335 = alloca i64, align 8
  %var._i334 = alloca i64, align 8
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
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 1
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
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena, i32 0, i32 0
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
  %step.val127 = load i64, ptr %loop.step.19, align 8
  %loop.next128 = add i64 %counter.load112, %step.val127
  store i64 %loop.next128, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %loop.exit.nat.19
  %var.load129 = load ptr, ptr %var.s, align 8
  %s.read.len130 = getelementptr inbounds { i64, ptr }, ptr %var.load129, i32 0, i32 0
  %s.read.len131 = load i64, ptr %s.read.len130, align 8
  %s.read.len132 = and i64 %s.read.len131, 281474976710655
  %str.tag133 = lshr i64 %s.read.len131, 48
  %str.immortal134 = icmp eq i64 %str.tag133, 0
  br i1 %str.immortal134, label %str_ok136, label %str_gen_check135

str_gen_check:                                    ; preds = %loop.body.19
  %arena.gen = call ptr @dva_arena_current()
  %arena.gen121 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen, i32 0, i32 4
  %arena.gen122 = load i64, ptr %arena.gen121, align 8
  %str.tag.match = icmp eq i64 %str.tag, %arena.gen122
  br i1 %str.tag.match, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.19
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load118, i32 0, i32 1
  %s.read.data123 = load ptr, ptr %s.read.data, align 8
  %var.load124 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load124, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load124, %s.read.len120
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data123, i64 %var.load124
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp125 = sub i64 %s.byte.val, 48
  %addtmp126 = add i64 %multmp, %subtmp125
  store i64 %addtmp126, ptr %"var.m'", align 8
  br label %loop.latch.19

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check135:                                 ; preds = %loop.exit.19
  %arena.gen138 = call ptr @dva_arena_current()
  %arena.gen139 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen138, i32 0, i32 4
  %arena.gen140 = load i64, ptr %arena.gen139, align 8
  %str.tag.match141 = icmp eq i64 %str.tag133, %arena.gen140
  br i1 %str.tag.match141, label %str_ok136, label %str_stale137

str_ok136:                                        ; preds = %str_stale137, %str_gen_check135, %loop.exit.19
  %s.read.data142 = getelementptr inbounds { i64, ptr }, ptr %var.load129, i32 0, i32 1
  %s.read.data143 = load ptr, ptr %s.read.data142, align 8
  br i1 false, label %idx_oob146, label %idx_big_check144

str_stale137:                                     ; preds = %str_gen_check135
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok136

idx_big_check144:                                 ; preds = %str_ok136
  %idx.big147 = icmp sge i64 6, %s.read.len132
  br i1 %idx.big147, label %idx_oob146, label %idx_ok145

idx_ok145:                                        ; preds = %idx_oob146, %idx_big_check144
  %s.byte.gep148 = getelementptr i8, ptr %s.read.data143, i64 6
  %s.byte149 = load i8, ptr %s.byte.gep148, align 1
  %s.byte.val150 = zext i8 %s.byte149 to i64
  %cmptmp = icmp sge i64 %s.byte.val150, 53
  br i1 %cmptmp, label %choice.then151, label %choice.exit152

idx_oob146:                                       ; preds = %idx_big_check144, %str_ok136
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok145

choice.then151:                                   ; preds = %idx_ok145
  %var.load153 = load i64, ptr %"var.m'", align 8
  %addtmp154 = add i64 %var.load153, 1
  store i64 %addtmp154, ptr %"var.m'", align 8
  br label %choice.exit152

choice.exit152:                                   ; preds = %choice.then151, %idx_ok145
  %var.load155 = load i64, ptr %"var.m'", align 8
  %cmptmp156 = icmp eq i64 %var.load155, 1000000
  br i1 %cmptmp156, label %choice.then157, label %choice.exit158

choice.then157:                                   ; preds = %choice.exit152
  store i64 100000, ptr %"var.m'", align 8
  %var.load159 = load i64, ptr %"var.e'", align 8
  %addtmp160 = add i64 %var.load159, 1
  store i64 %addtmp160, ptr %"var.e'", align 8
  br label %choice.exit158

choice.exit158:                                   ; preds = %choice.then157, %choice.exit152
  %var.load161 = load i64, ptr %"var.m'", align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load161)
  store ptr %call.res, ptr %var.ms, align 8
  %arena.cur162 = call ptr @dva_arena_current()
  %builder.new163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 24)
  %b.data.gep164 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new163, i32 0, i32 1
  %b.len.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new163, i32 0, i32 0
  %b.cap.gep166 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new163, i32 0, i32 2
  %b.buf.len167 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum168 = extractvalue { i64, i1 } %b.buf.len167, 0
  %ovf169 = extractvalue { i64, i1 } %b.buf.len167, 1
  br i1 %ovf169, label %str_overflow_abort171, label %b.buf.len170

b.buf.len170:                                     ; preds = %str_overflow_abort171, %choice.exit158
  %arena.cur172 = call ptr @dva_arena_current()
  %b.buf173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 %sum168)
  %b.nul0174 = getelementptr i8, ptr %b.buf173, i64 0
  store i8 0, ptr %b.nul0174, align 1
  store i64 0, ptr %b.len.gep165, align 8
  store ptr %b.buf173, ptr %b.data.gep164, align 8
  store i64 32, ptr %b.cap.gep166, align 8
  store ptr %builder.new163, ptr %var.b, align 8
  %var.load175 = load i1, ptr %var.neg, align 1
  br i1 %var.load175, label %choice.then176, label %choice.exit177

str_overflow_abort171:                            ; preds = %choice.exit158
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len170

choice.then176:                                   ; preds = %b.buf.len170
  %b.load178 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  %b.rn.cur.len179 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len179, i64 1)
  %sum180 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf181 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf181, label %str_overflow_abort183, label %b.rn.new.len182

choice.exit177:                                   ; preds = %br.done.20, %b.buf.len170
  %var.load198 = load i64, ptr %"var.e'", align 8
  %cmptmp199 = icmp slt i64 %var.load198, -4
  br i1 %cmptmp199, label %or.21.then, label %or.21.else

b.rn.new.len182:                                  ; preds = %str_overflow_abort183, %choice.then176
  %b.cap184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 2
  %b.cap185 = load i64, ptr %b.cap184, align 8
  %b.need.grow = icmp slt i64 %b.cap185, %sum180
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort183:                            ; preds = %choice.then176
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len182

b.grow2:                                          ; preds = %b.rn.new.len182
  %b.cap2186 = mul i64 %b.cap185, 2
  %b.cap.small187 = icmp slt i64 %b.cap2186, 16
  %b.cap.grow = select i1 %b.cap.small187, i64 16, i64 %b.cap2186
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum180
  %b.new.cap188 = select i1 %b.cap.need, i64 %sum180, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  %b.cur.len2189 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 1
  %b.cur.data2190 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap188, i64 1)
  %sum191 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf192 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf192, label %str_overflow_abort194, label %b.new.buf.len2193

b.nogrow2:                                        ; preds = %b.rn.new.len182
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2193
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 1
  %b.rn.data196 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data196, i64 %b.rn.cur.len179
  br i1 true, label %br.b1.20, label %br.c2.20

b.new.buf.len2193:                                ; preds = %str_overflow_abort194, %b.grow2
  %arena.cur195 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 %sum191)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2190, i64 %b.cur.len2189, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2189
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 2
  store i64 %b.new.cap188, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort194:                            ; preds = %b.grow2
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2193

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
  %br.nul = getelementptr i8, ptr %b.rn.data196, i64 %sum180
  store i8 0, ptr %br.nul, align 1
  %b.len.gep197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load178, i32 0, i32 0
  store i64 %sum180, ptr %b.len.gep197, align 8
  br label %choice.exit177

or.21.then:                                       ; preds = %choice.exit177
  br label %or.21.exit

or.21.else:                                       ; preds = %choice.exit177
  %var.load200 = load i64, ptr %"var.e'", align 8
  %cmptmp201 = icmp sge i64 %var.load200, 6
  br label %or.21.exit

or.21.exit:                                       ; preds = %or.21.else, %or.21.then
  %or.21.phi = phi i1 [ %cmptmp199, %or.21.then ], [ %cmptmp201, %or.21.else ]
  br i1 %or.21.phi, label %choice.then202, label %choice.else203

choice.then202:                                   ; preds = %or.21.exit
  %var.load205 = load ptr, ptr %var.ms, align 8
  %s.read.len206 = getelementptr inbounds { i64, ptr }, ptr %var.load205, i32 0, i32 0
  %s.read.len207 = load i64, ptr %s.read.len206, align 8
  %s.read.len208 = and i64 %s.read.len207, 281474976710655
  %str.tag209 = lshr i64 %s.read.len207, 48
  %str.immortal210 = icmp eq i64 %str.tag209, 0
  br i1 %str.immortal210, label %str_ok212, label %str_gen_check211

choice.else203:                                   ; preds = %or.21.exit
  %var.load424 = load i64, ptr %"var.e'", align 8
  %cmptmp425 = icmp sge i64 %var.load424, 0
  br i1 %cmptmp425, label %choice.then426, label %choice.else427

choice.exit204:                                   ; preds = %choice.exit428, %loop.exit.23
  %var.load857 = load ptr, ptr %var.b, align 8
  %b.freeze.len858 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load857, i32 0, i32 0
  %b.freeze.len859 = load i64, ptr %b.freeze.len858, align 8
  %b.freeze.data860 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load857, i32 0, i32 1
  %b.freeze.data861 = load ptr, ptr %b.freeze.data860, align 8
  %b.freeze.arena862 = call ptr @dva_arena_current()
  %b.freeze.nc.gep863 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena862, i32 0, i32 1
  %b.freeze.nc864 = load i64, ptr %b.freeze.nc.gep863, align 8
  %b.freeze.has.chunk865 = icmp sgt i64 %b.freeze.nc864, 0
  br i1 %b.freeze.has.chunk865, label %b.freeze.check866, label %b.freeze.done868

str_gen_check211:                                 ; preds = %choice.then202
  %arena.gen214 = call ptr @dva_arena_current()
  %arena.gen215 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen214, i32 0, i32 4
  %arena.gen216 = load i64, ptr %arena.gen215, align 8
  %str.tag.match217 = icmp eq i64 %str.tag209, %arena.gen216
  br i1 %str.tag.match217, label %str_ok212, label %str_stale213

str_ok212:                                        ; preds = %str_stale213, %str_gen_check211, %choice.then202
  %s.read.data218 = getelementptr inbounds { i64, ptr }, ptr %var.load205, i32 0, i32 1
  %s.read.data219 = load ptr, ptr %s.read.data218, align 8
  br i1 false, label %idx_oob222, label %idx_big_check220

str_stale213:                                     ; preds = %str_gen_check211
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok212

idx_big_check220:                                 ; preds = %str_ok212
  %idx.big223 = icmp sge i64 0, %s.read.len208
  br i1 %idx.big223, label %idx_oob222, label %idx_ok221

idx_ok221:                                        ; preds = %idx_oob222, %idx_big_check220
  %s.byte.gep224 = getelementptr i8, ptr %s.read.data219, i64 0
  %s.byte225 = load i8, ptr %s.byte.gep224, align 1
  %s.byte.val226 = zext i8 %s.byte225 to i64
  %b.load227 = load ptr, ptr %var.b, align 8
  %var.load228 = load ptr, ptr %var.ms, align 8
  %s.read.len229 = getelementptr inbounds { i64, ptr }, ptr %var.load228, i32 0, i32 0
  %s.read.len230 = load i64, ptr %s.read.len229, align 8
  %s.read.len231 = and i64 %s.read.len230, 281474976710655
  %str.tag232 = lshr i64 %s.read.len230, 48
  %str.immortal233 = icmp eq i64 %str.tag232, 0
  br i1 %str.immortal233, label %str_ok235, label %str_gen_check234

idx_oob222:                                       ; preds = %idx_big_check220, %str_ok212
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok221

str_gen_check234:                                 ; preds = %idx_ok221
  %arena.gen237 = call ptr @dva_arena_current()
  %arena.gen238 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen237, i32 0, i32 4
  %arena.gen239 = load i64, ptr %arena.gen238, align 8
  %str.tag.match240 = icmp eq i64 %str.tag232, %arena.gen239
  br i1 %str.tag.match240, label %str_ok235, label %str_stale236

str_ok235:                                        ; preds = %str_stale236, %str_gen_check234, %idx_ok221
  %s.read.data241 = getelementptr inbounds { i64, ptr }, ptr %var.load228, i32 0, i32 1
  %s.read.data242 = load ptr, ptr %s.read.data241, align 8
  br i1 false, label %idx_oob245, label %idx_big_check243

str_stale236:                                     ; preds = %str_gen_check234
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok235

idx_big_check243:                                 ; preds = %str_ok235
  %idx.big246 = icmp sge i64 0, %s.read.len231
  br i1 %idx.big246, label %idx_oob245, label %idx_ok244

idx_ok244:                                        ; preds = %idx_oob245, %idx_big_check243
  %s.byte.gep247 = getelementptr i8, ptr %s.read.data242, i64 0
  %s.byte248 = load i8, ptr %s.byte.gep247, align 1
  %s.byte.val249 = zext i8 %s.byte248 to i64
  %b.b.ge0250 = icmp sge i64 %s.byte.val249, 0
  %b.b.le255251 = icmp sle i64 %s.byte.val249, 255
  %b.byte.range252 = and i1 %b.b.ge0250, %b.b.le255251
  br i1 %b.byte.range252, label %b.byte_ok253, label %b.byte_err254

idx_oob245:                                       ; preds = %idx_big_check243, %str_ok235
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok244

b.byte_ok253:                                     ; preds = %b.byte_err254, %idx_ok244
  %b.byte.i8255 = trunc i64 %s.byte.val249 to i8
  %b.len256 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 0
  %b.len257 = load i64, ptr %b.len256, align 8
  %b.cap258 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 2
  %b.cap259 = load i64, ptr %b.cap258, align 8
  %b.data260 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 1
  %b.data261 = load ptr, ptr %b.data260, align 8
  %b.needs.grow262 = icmp eq i64 %b.len257, %b.cap259
  br i1 %b.needs.grow262, label %b.grow263, label %b.nogrow264

b.byte_err254:                                    ; preds = %idx_ok244
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok253

b.grow263:                                        ; preds = %b.byte_ok253
  %b.cap2266 = mul i64 %b.cap259, 2
  %b.cap.small267 = icmp slt i64 %b.cap2266, 16
  %b.new.cap268 = select i1 %b.cap.small267, i64 16, i64 %b.cap2266
  %b.new.buf.len269 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap268, i64 1)
  %sum270 = extractvalue { i64, i1 } %b.new.buf.len269, 0
  %ovf271 = extractvalue { i64, i1 } %b.new.buf.len269, 1
  br i1 %ovf271, label %str_overflow_abort273, label %b.new.buf.len272

b.nogrow264:                                      ; preds = %b.byte_ok253
  br label %b.push_done265

b.push_done265:                                   ; preds = %b.nogrow264, %b.new.buf.len272
  %b.cur.data279 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 1
  %b.cur.data280 = load ptr, ptr %b.cur.data279, align 8
  %b.cur.len281 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 0
  %b.cur.len282 = load i64, ptr %b.cur.len281, align 8
  %b.byte.gep283 = getelementptr i8, ptr %b.cur.data280, i64 %b.cur.len282
  store i8 %b.byte.i8255, ptr %b.byte.gep283, align 1
  %b.next.len284 = add i64 %b.cur.len282, 1
  %b.nul285 = getelementptr i8, ptr %b.cur.data280, i64 %b.next.len284
  store i8 0, ptr %b.nul285, align 1
  %b.len.gep286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 0
  store i64 %b.next.len284, ptr %b.len.gep286, align 8
  %b.load287 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  %b.rn.cur.len289 = load i64, ptr %b.rn.cur.len288, align 8
  %b.rn.new.len290 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len289, i64 1)
  %sum291 = extractvalue { i64, i1 } %b.rn.new.len290, 0
  %ovf292 = extractvalue { i64, i1 } %b.rn.new.len290, 1
  br i1 %ovf292, label %str_overflow_abort294, label %b.rn.new.len293

b.new.buf.len272:                                 ; preds = %str_overflow_abort273, %b.grow263
  %arena.cur274 = call ptr @dva_arena_current()
  %b.new.buf275 = call ptr @dva_arena_alloc(ptr %arena.cur274, i64 %sum270)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf275, ptr align 1 %b.data261, i64 %b.len257, i1 false)
  %b.grow.nul276 = getelementptr i8, ptr %b.new.buf275, i64 %b.len257
  store i8 0, ptr %b.grow.nul276, align 1
  %b.new.data.gep277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 1
  store ptr %b.new.buf275, ptr %b.new.data.gep277, align 8
  %b.new.cap.gep278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load227, i32 0, i32 2
  store i64 %b.new.cap268, ptr %b.new.cap.gep278, align 8
  br label %b.push_done265

str_overflow_abort273:                            ; preds = %b.grow263
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len272

b.rn.new.len293:                                  ; preds = %str_overflow_abort294, %b.push_done265
  %b.cap295 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 2
  %b.cap296 = load i64, ptr %b.cap295, align 8
  %b.need.grow297 = icmp slt i64 %b.cap296, %sum291
  br i1 %b.need.grow297, label %b.grow2298, label %b.nogrow2299

str_overflow_abort294:                            ; preds = %b.push_done265
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len293

b.grow2298:                                       ; preds = %b.rn.new.len293
  %b.cap2301 = mul i64 %b.cap296, 2
  %b.cap.small302 = icmp slt i64 %b.cap2301, 16
  %b.cap.grow303 = select i1 %b.cap.small302, i64 16, i64 %b.cap2301
  %b.cap.need304 = icmp slt i64 %b.cap.grow303, %sum291
  %b.new.cap305 = select i1 %b.cap.need304, i64 %sum291, i64 %b.cap.grow303
  %b.cur.len2306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  %b.cur.len2307 = load i64, ptr %b.cur.len2306, align 8
  %b.cur.data2308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  %b.cur.data2309 = load ptr, ptr %b.cur.data2308, align 8
  %b.new.buf.len2310 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap305, i64 1)
  %sum311 = extractvalue { i64, i1 } %b.new.buf.len2310, 0
  %ovf312 = extractvalue { i64, i1 } %b.new.buf.len2310, 1
  br i1 %ovf312, label %str_overflow_abort314, label %b.new.buf.len2313

b.nogrow2299:                                     ; preds = %b.rn.new.len293
  br label %b.grow_done300

b.grow_done300:                                   ; preds = %b.nogrow2299, %b.new.buf.len2313
  %b.rn.data320 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  %b.rn.data321 = load ptr, ptr %b.rn.data320, align 8
  %b.rn.dst322 = getelementptr i8, ptr %b.rn.data321, i64 %b.rn.cur.len289
  br i1 true, label %br.b1.22, label %br.c2.22

b.new.buf.len2313:                                ; preds = %str_overflow_abort314, %b.grow2298
  %arena.cur315 = call ptr @dva_arena_current()
  %b.new.buf2316 = call ptr @dva_arena_alloc(ptr %arena.cur315, i64 %sum311)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2316, ptr align 1 %b.cur.data2309, i64 %b.cur.len2307, i1 false)
  %b.grow2.nul317 = getelementptr i8, ptr %b.new.buf2316, i64 %b.cur.len2307
  store i8 0, ptr %b.grow2.nul317, align 1
  %b.new.data2.gep318 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 1
  store ptr %b.new.buf2316, ptr %b.new.data2.gep318, align 8
  %b.new.cap2.gep319 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 2
  store i64 %b.new.cap305, ptr %b.new.cap2.gep319, align 8
  br label %b.grow_done300

str_overflow_abort314:                            ; preds = %b.grow2298
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2313

br.b1.22:                                         ; preds = %b.grow_done300
  store i8 46, ptr %b.rn.dst322, align 1
  br label %br.done.22

br.c2.22:                                         ; preds = %b.grow_done300
  br i1 true, label %br.b2.22, label %br.c3.22

br.b2.22:                                         ; preds = %br.c2.22
  store i8 -64, ptr %b.rn.dst322, align 1
  %br.dst1323 = getelementptr i8, ptr %b.rn.dst322, i64 1
  store i8 -82, ptr %br.dst1323, align 1
  br label %br.done.22

br.c3.22:                                         ; preds = %br.c2.22
  br i1 true, label %br.b3.22, label %br.b4.22

br.b3.22:                                         ; preds = %br.c3.22
  store i8 -32, ptr %b.rn.dst322, align 1
  %br.dst1.3324 = getelementptr i8, ptr %b.rn.dst322, i64 1
  store i8 -128, ptr %br.dst1.3324, align 1
  %br.dst2.3325 = getelementptr i8, ptr %b.rn.dst322, i64 2
  store i8 -82, ptr %br.dst2.3325, align 1
  br label %br.done.22

br.b4.22:                                         ; preds = %br.c3.22
  store i8 -16, ptr %b.rn.dst322, align 1
  %br.dst1.4326 = getelementptr i8, ptr %b.rn.dst322, i64 1
  store i8 -128, ptr %br.dst1.4326, align 1
  %br.dst2.4327 = getelementptr i8, ptr %b.rn.dst322, i64 2
  store i8 -128, ptr %br.dst2.4327, align 1
  %br.dst3.4328 = getelementptr i8, ptr %b.rn.dst322, i64 3
  store i8 -82, ptr %br.dst3.4328, align 1
  br label %br.done.22

br.done.22:                                       ; preds = %br.b4.22, %br.b3.22, %br.b2.22, %br.b1.22
  %br.nul329 = getelementptr i8, ptr %b.rn.data321, i64 %sum291
  store i8 0, ptr %br.nul329, align 1
  %b.len.gep330 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load287, i32 0, i32 0
  store i64 %sum291, ptr %b.len.gep330, align 8
  store i64 1, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.header.23:                                   ; preds = %loop.latch.23, %br.done.22
  %counter.load331 = load i64, ptr %loop.idx.23, align 8
  %loop.cond332 = icmp slt i64 %counter.load331, 6
  br i1 %loop.cond332, label %loop.body.23, label %loop.exit.nat.23

loop.body.23:                                     ; preds = %loop.header.23
  %loop.rel.i333 = sub i64 %counter.load331, 1
  store i64 1, ptr %loop.step.23, align 8
  store i64 %loop.rel.i333, ptr %var._i334, align 8
  store i64 %counter.load331, ptr %var._335, align 8
  store i64 %counter.load331, ptr %var.i, align 8
  %var.load336 = load ptr, ptr %var.ms, align 8
  %s.read.len337 = getelementptr inbounds { i64, ptr }, ptr %var.load336, i32 0, i32 0
  %s.read.len338 = load i64, ptr %s.read.len337, align 8
  %s.read.len339 = and i64 %s.read.len338, 281474976710655
  %str.tag340 = lshr i64 %s.read.len338, 48
  %str.immortal341 = icmp eq i64 %str.tag340, 0
  br i1 %str.immortal341, label %str_ok343, label %str_gen_check342

loop.exit.nat.23:                                 ; preds = %loop.header.23
  br label %loop.exit.23

loop.latch.23:                                    ; preds = %b.push_done400
  %step.val422 = load i64, ptr %loop.step.23, align 8
  %loop.next423 = add i64 %counter.load331, %step.val422
  store i64 %loop.next423, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.exit.23:                                     ; preds = %loop.exit.nat.23
  br label %choice.exit204

str_gen_check342:                                 ; preds = %loop.body.23
  %arena.gen345 = call ptr @dva_arena_current()
  %arena.gen346 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen345, i32 0, i32 4
  %arena.gen347 = load i64, ptr %arena.gen346, align 8
  %str.tag.match348 = icmp eq i64 %str.tag340, %arena.gen347
  br i1 %str.tag.match348, label %str_ok343, label %str_stale344

str_ok343:                                        ; preds = %str_stale344, %str_gen_check342, %loop.body.23
  %s.read.data349 = getelementptr inbounds { i64, ptr }, ptr %var.load336, i32 0, i32 1
  %s.read.data350 = load ptr, ptr %s.read.data349, align 8
  %var.load351 = load i64, ptr %var.i, align 8
  %idx.neg352 = icmp slt i64 %var.load351, 0
  br i1 %idx.neg352, label %idx_oob355, label %idx_big_check353

str_stale344:                                     ; preds = %str_gen_check342
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok343

idx_big_check353:                                 ; preds = %str_ok343
  %idx.big356 = icmp sge i64 %var.load351, %s.read.len339
  br i1 %idx.big356, label %idx_oob355, label %idx_ok354

idx_ok354:                                        ; preds = %idx_oob355, %idx_big_check353
  %s.byte.gep357 = getelementptr i8, ptr %s.read.data350, i64 %var.load351
  %s.byte358 = load i8, ptr %s.byte.gep357, align 1
  %s.byte.val359 = zext i8 %s.byte358 to i64
  %b.load360 = load ptr, ptr %var.b, align 8
  %var.load361 = load ptr, ptr %var.ms, align 8
  %s.read.len362 = getelementptr inbounds { i64, ptr }, ptr %var.load361, i32 0, i32 0
  %s.read.len363 = load i64, ptr %s.read.len362, align 8
  %s.read.len364 = and i64 %s.read.len363, 281474976710655
  %str.tag365 = lshr i64 %s.read.len363, 48
  %str.immortal366 = icmp eq i64 %str.tag365, 0
  br i1 %str.immortal366, label %str_ok368, label %str_gen_check367

idx_oob355:                                       ; preds = %idx_big_check353, %str_ok343
  %22 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok354

str_gen_check367:                                 ; preds = %idx_ok354
  %arena.gen370 = call ptr @dva_arena_current()
  %arena.gen371 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen370, i32 0, i32 4
  %arena.gen372 = load i64, ptr %arena.gen371, align 8
  %str.tag.match373 = icmp eq i64 %str.tag365, %arena.gen372
  br i1 %str.tag.match373, label %str_ok368, label %str_stale369

str_ok368:                                        ; preds = %str_stale369, %str_gen_check367, %idx_ok354
  %s.read.data374 = getelementptr inbounds { i64, ptr }, ptr %var.load361, i32 0, i32 1
  %s.read.data375 = load ptr, ptr %s.read.data374, align 8
  %var.load376 = load i64, ptr %var.i, align 8
  %idx.neg377 = icmp slt i64 %var.load376, 0
  br i1 %idx.neg377, label %idx_oob380, label %idx_big_check378

str_stale369:                                     ; preds = %str_gen_check367
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok368

idx_big_check378:                                 ; preds = %str_ok368
  %idx.big381 = icmp sge i64 %var.load376, %s.read.len364
  br i1 %idx.big381, label %idx_oob380, label %idx_ok379

idx_ok379:                                        ; preds = %idx_oob380, %idx_big_check378
  %s.byte.gep382 = getelementptr i8, ptr %s.read.data375, i64 %var.load376
  %s.byte383 = load i8, ptr %s.byte.gep382, align 1
  %s.byte.val384 = zext i8 %s.byte383 to i64
  %b.b.ge0385 = icmp sge i64 %s.byte.val384, 0
  %b.b.le255386 = icmp sle i64 %s.byte.val384, 255
  %b.byte.range387 = and i1 %b.b.ge0385, %b.b.le255386
  br i1 %b.byte.range387, label %b.byte_ok388, label %b.byte_err389

idx_oob380:                                       ; preds = %idx_big_check378, %str_ok368
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok379

b.byte_ok388:                                     ; preds = %b.byte_err389, %idx_ok379
  %b.byte.i8390 = trunc i64 %s.byte.val384 to i8
  %b.len391 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 0
  %b.len392 = load i64, ptr %b.len391, align 8
  %b.cap393 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 2
  %b.cap394 = load i64, ptr %b.cap393, align 8
  %b.data395 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 1
  %b.data396 = load ptr, ptr %b.data395, align 8
  %b.needs.grow397 = icmp eq i64 %b.len392, %b.cap394
  br i1 %b.needs.grow397, label %b.grow398, label %b.nogrow399

b.byte_err389:                                    ; preds = %idx_ok379
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok388

b.grow398:                                        ; preds = %b.byte_ok388
  %b.cap2401 = mul i64 %b.cap394, 2
  %b.cap.small402 = icmp slt i64 %b.cap2401, 16
  %b.new.cap403 = select i1 %b.cap.small402, i64 16, i64 %b.cap2401
  %b.new.buf.len404 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap403, i64 1)
  %sum405 = extractvalue { i64, i1 } %b.new.buf.len404, 0
  %ovf406 = extractvalue { i64, i1 } %b.new.buf.len404, 1
  br i1 %ovf406, label %str_overflow_abort408, label %b.new.buf.len407

b.nogrow399:                                      ; preds = %b.byte_ok388
  br label %b.push_done400

b.push_done400:                                   ; preds = %b.nogrow399, %b.new.buf.len407
  %b.cur.data414 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 1
  %b.cur.data415 = load ptr, ptr %b.cur.data414, align 8
  %b.cur.len416 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 0
  %b.cur.len417 = load i64, ptr %b.cur.len416, align 8
  %b.byte.gep418 = getelementptr i8, ptr %b.cur.data415, i64 %b.cur.len417
  store i8 %b.byte.i8390, ptr %b.byte.gep418, align 1
  %b.next.len419 = add i64 %b.cur.len417, 1
  %b.nul420 = getelementptr i8, ptr %b.cur.data415, i64 %b.next.len419
  store i8 0, ptr %b.nul420, align 1
  %b.len.gep421 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 0
  store i64 %b.next.len419, ptr %b.len.gep421, align 8
  br label %loop.latch.23

b.new.buf.len407:                                 ; preds = %str_overflow_abort408, %b.grow398
  %arena.cur409 = call ptr @dva_arena_current()
  %b.new.buf410 = call ptr @dva_arena_alloc(ptr %arena.cur409, i64 %sum405)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf410, ptr align 1 %b.data396, i64 %b.len392, i1 false)
  %b.grow.nul411 = getelementptr i8, ptr %b.new.buf410, i64 %b.len392
  store i8 0, ptr %b.grow.nul411, align 1
  %b.new.data.gep412 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 1
  store ptr %b.new.buf410, ptr %b.new.data.gep412, align 8
  %b.new.cap.gep413 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 2
  store i64 %b.new.cap403, ptr %b.new.cap.gep413, align 8
  br label %b.push_done400

str_overflow_abort408:                            ; preds = %b.grow398
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len407

choice.then426:                                   ; preds = %choice.else203
  %var.load429 = load i64, ptr %"var.e'", align 8
  %addtmp430 = add i64 %var.load429, 1
  store i64 %addtmp430, ptr %var.en, align 8
  %var.load431 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.24, align 8
  br label %loop.header.24

choice.else427:                                   ; preds = %choice.else203
  %b.load667 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.1.struct, align 8
  %app.str.len668 = and i64 %app.str.len, 281474976710655
  %str.tag669 = lshr i64 %app.str.len, 48
  %str.immortal670 = icmp eq i64 %str.tag669, 0
  br i1 %str.immortal670, label %str_ok672, label %str_gen_check671

choice.exit428:                                   ; preds = %loop.exit.29, %choice.exit528
  br label %choice.exit204

loop.header.24:                                   ; preds = %loop.latch.24, %choice.then426
  %counter.load432 = load i64, ptr %loop.idx.24, align 8
  %loop.cond433 = icmp slt i64 %counter.load432, %var.load431
  br i1 %loop.cond433, label %loop.body.24, label %loop.exit.nat.24

loop.body.24:                                     ; preds = %loop.header.24
  %loop.rel.i434 = sub i64 %counter.load432, 0
  store i64 1, ptr %loop.step.24, align 8
  store i64 %loop.rel.i434, ptr %var._i435, align 8
  store i64 %counter.load432, ptr %var._436, align 8
  store i64 %counter.load432, ptr %var.i, align 8
  %var.load437 = load ptr, ptr %var.ms, align 8
  %s.read.len438 = getelementptr inbounds { i64, ptr }, ptr %var.load437, i32 0, i32 0
  %s.read.len439 = load i64, ptr %s.read.len438, align 8
  %s.read.len440 = and i64 %s.read.len439, 281474976710655
  %str.tag441 = lshr i64 %s.read.len439, 48
  %str.immortal442 = icmp eq i64 %str.tag441, 0
  br i1 %str.immortal442, label %str_ok444, label %str_gen_check443

loop.exit.nat.24:                                 ; preds = %loop.header.24
  br label %loop.exit.24

loop.latch.24:                                    ; preds = %b.push_done501
  %step.val523 = load i64, ptr %loop.step.24, align 8
  %loop.next524 = add i64 %counter.load432, %step.val523
  store i64 %loop.next524, ptr %loop.idx.24, align 8
  br label %loop.header.24

loop.exit.24:                                     ; preds = %loop.exit.nat.24
  %var.load525 = load i64, ptr %var.en, align 8
  %cmptmp526 = icmp slt i64 %var.load525, 6
  br i1 %cmptmp526, label %choice.then527, label %choice.exit528

str_gen_check443:                                 ; preds = %loop.body.24
  %arena.gen446 = call ptr @dva_arena_current()
  %arena.gen447 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen446, i32 0, i32 4
  %arena.gen448 = load i64, ptr %arena.gen447, align 8
  %str.tag.match449 = icmp eq i64 %str.tag441, %arena.gen448
  br i1 %str.tag.match449, label %str_ok444, label %str_stale445

str_ok444:                                        ; preds = %str_stale445, %str_gen_check443, %loop.body.24
  %s.read.data450 = getelementptr inbounds { i64, ptr }, ptr %var.load437, i32 0, i32 1
  %s.read.data451 = load ptr, ptr %s.read.data450, align 8
  %var.load452 = load i64, ptr %var.i, align 8
  %idx.neg453 = icmp slt i64 %var.load452, 0
  br i1 %idx.neg453, label %idx_oob456, label %idx_big_check454

str_stale445:                                     ; preds = %str_gen_check443
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok444

idx_big_check454:                                 ; preds = %str_ok444
  %idx.big457 = icmp sge i64 %var.load452, %s.read.len440
  br i1 %idx.big457, label %idx_oob456, label %idx_ok455

idx_ok455:                                        ; preds = %idx_oob456, %idx_big_check454
  %s.byte.gep458 = getelementptr i8, ptr %s.read.data451, i64 %var.load452
  %s.byte459 = load i8, ptr %s.byte.gep458, align 1
  %s.byte.val460 = zext i8 %s.byte459 to i64
  %b.load461 = load ptr, ptr %var.b, align 8
  %var.load462 = load ptr, ptr %var.ms, align 8
  %s.read.len463 = getelementptr inbounds { i64, ptr }, ptr %var.load462, i32 0, i32 0
  %s.read.len464 = load i64, ptr %s.read.len463, align 8
  %s.read.len465 = and i64 %s.read.len464, 281474976710655
  %str.tag466 = lshr i64 %s.read.len464, 48
  %str.immortal467 = icmp eq i64 %str.tag466, 0
  br i1 %str.immortal467, label %str_ok469, label %str_gen_check468

idx_oob456:                                       ; preds = %idx_big_check454, %str_ok444
  %28 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok455

str_gen_check468:                                 ; preds = %idx_ok455
  %arena.gen471 = call ptr @dva_arena_current()
  %arena.gen472 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen471, i32 0, i32 4
  %arena.gen473 = load i64, ptr %arena.gen472, align 8
  %str.tag.match474 = icmp eq i64 %str.tag466, %arena.gen473
  br i1 %str.tag.match474, label %str_ok469, label %str_stale470

str_ok469:                                        ; preds = %str_stale470, %str_gen_check468, %idx_ok455
  %s.read.data475 = getelementptr inbounds { i64, ptr }, ptr %var.load462, i32 0, i32 1
  %s.read.data476 = load ptr, ptr %s.read.data475, align 8
  %var.load477 = load i64, ptr %var.i, align 8
  %idx.neg478 = icmp slt i64 %var.load477, 0
  br i1 %idx.neg478, label %idx_oob481, label %idx_big_check479

str_stale470:                                     ; preds = %str_gen_check468
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok469

idx_big_check479:                                 ; preds = %str_ok469
  %idx.big482 = icmp sge i64 %var.load477, %s.read.len465
  br i1 %idx.big482, label %idx_oob481, label %idx_ok480

idx_ok480:                                        ; preds = %idx_oob481, %idx_big_check479
  %s.byte.gep483 = getelementptr i8, ptr %s.read.data476, i64 %var.load477
  %s.byte484 = load i8, ptr %s.byte.gep483, align 1
  %s.byte.val485 = zext i8 %s.byte484 to i64
  %b.b.ge0486 = icmp sge i64 %s.byte.val485, 0
  %b.b.le255487 = icmp sle i64 %s.byte.val485, 255
  %b.byte.range488 = and i1 %b.b.ge0486, %b.b.le255487
  br i1 %b.byte.range488, label %b.byte_ok489, label %b.byte_err490

idx_oob481:                                       ; preds = %idx_big_check479, %str_ok469
  %30 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok480

b.byte_ok489:                                     ; preds = %b.byte_err490, %idx_ok480
  %b.byte.i8491 = trunc i64 %s.byte.val485 to i8
  %b.len492 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load461, i32 0, i32 0
  %b.len493 = load i64, ptr %b.len492, align 8
  %b.cap494 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load461, i32 0, i32 2
  %b.cap495 = load i64, ptr %b.cap494, align 8
  %b.data496 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load461, i32 0, i32 1
  %b.data497 = load ptr, ptr %b.data496, align 8
  %b.needs.grow498 = icmp eq i64 %b.len493, %b.cap495
  br i1 %b.needs.grow498, label %b.grow499, label %b.nogrow500

b.byte_err490:                                    ; preds = %idx_ok480
  %31 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok489

b.grow499:                                        ; preds = %b.byte_ok489
  %b.cap2502 = mul i64 %b.cap495, 2
  %b.cap.small503 = icmp slt i64 %b.cap2502, 16
  %b.new.cap504 = select i1 %b.cap.small503, i64 16, i64 %b.cap2502
  %b.new.buf.len505 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap504, i64 1)
  %sum506 = extractvalue { i64, i1 } %b.new.buf.len505, 0
  %ovf507 = extractvalue { i64, i1 } %b.new.buf.len505, 1
  br i1 %ovf507, label %str_overflow_abort509, label %b.new.buf.len508

b.nogrow500:                                      ; preds = %b.byte_ok489
  br label %b.push_done501

b.push_done501:                                   ; preds = %b.nogrow500, %b.new.buf.len508
  %b.cur.data515 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load461, i32 0, i32 1
  %b.cur.data516 = load ptr, ptr %b.cur.data515, align 8
  %b.cur.len517 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load461, i32 0, i32 0
  %b.cur.len518 = load i64, ptr %b.cur.len517, align 8
  %b.byte.gep519 = getelementptr i8, ptr %b.cur.data516, i64 %b.cur.len518
  store i8 %b.byte.i8491, ptr %b.byte.gep519, align 1
  %b.next.len520 = add i64 %b.cur.len518, 1
  %b.nul521 = getelementptr i8, ptr %b.cur.data516, i64 %b.next.len520
  store i8 0, ptr %b.nul521, align 1
  %b.len.gep522 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load461, i32 0, i32 0
  store i64 %b.next.len520, ptr %b.len.gep522, align 8
  br label %loop.latch.24

b.new.buf.len508:                                 ; preds = %str_overflow_abort509, %b.grow499
  %arena.cur510 = call ptr @dva_arena_current()
  %b.new.buf511 = call ptr @dva_arena_alloc(ptr %arena.cur510, i64 %sum506)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf511, ptr align 1 %b.data497, i64 %b.len493, i1 false)
  %b.grow.nul512 = getelementptr i8, ptr %b.new.buf511, i64 %b.len493
  store i8 0, ptr %b.grow.nul512, align 1
  %b.new.data.gep513 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load461, i32 0, i32 1
  store ptr %b.new.buf511, ptr %b.new.data.gep513, align 8
  %b.new.cap.gep514 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load461, i32 0, i32 2
  store i64 %b.new.cap504, ptr %b.new.cap.gep514, align 8
  br label %b.push_done501

str_overflow_abort509:                            ; preds = %b.grow499
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len508

choice.then527:                                   ; preds = %loop.exit.24
  %b.load529 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 0
  %b.rn.cur.len531 = load i64, ptr %b.rn.cur.len530, align 8
  %b.rn.new.len532 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len531, i64 1)
  %sum533 = extractvalue { i64, i1 } %b.rn.new.len532, 0
  %ovf534 = extractvalue { i64, i1 } %b.rn.new.len532, 1
  br i1 %ovf534, label %str_overflow_abort536, label %b.rn.new.len535

choice.exit528:                                   ; preds = %loop.exit.26, %loop.exit.24
  br label %choice.exit428

b.rn.new.len535:                                  ; preds = %str_overflow_abort536, %choice.then527
  %b.cap537 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 2
  %b.cap538 = load i64, ptr %b.cap537, align 8
  %b.need.grow539 = icmp slt i64 %b.cap538, %sum533
  br i1 %b.need.grow539, label %b.grow2540, label %b.nogrow2541

str_overflow_abort536:                            ; preds = %choice.then527
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len535

b.grow2540:                                       ; preds = %b.rn.new.len535
  %b.cap2543 = mul i64 %b.cap538, 2
  %b.cap.small544 = icmp slt i64 %b.cap2543, 16
  %b.cap.grow545 = select i1 %b.cap.small544, i64 16, i64 %b.cap2543
  %b.cap.need546 = icmp slt i64 %b.cap.grow545, %sum533
  %b.new.cap547 = select i1 %b.cap.need546, i64 %sum533, i64 %b.cap.grow545
  %b.cur.len2548 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 0
  %b.cur.len2549 = load i64, ptr %b.cur.len2548, align 8
  %b.cur.data2550 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 1
  %b.cur.data2551 = load ptr, ptr %b.cur.data2550, align 8
  %b.new.buf.len2552 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap547, i64 1)
  %sum553 = extractvalue { i64, i1 } %b.new.buf.len2552, 0
  %ovf554 = extractvalue { i64, i1 } %b.new.buf.len2552, 1
  br i1 %ovf554, label %str_overflow_abort556, label %b.new.buf.len2555

b.nogrow2541:                                     ; preds = %b.rn.new.len535
  br label %b.grow_done542

b.grow_done542:                                   ; preds = %b.nogrow2541, %b.new.buf.len2555
  %b.rn.data562 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 1
  %b.rn.data563 = load ptr, ptr %b.rn.data562, align 8
  %b.rn.dst564 = getelementptr i8, ptr %b.rn.data563, i64 %b.rn.cur.len531
  br i1 true, label %br.b1.25, label %br.c2.25

b.new.buf.len2555:                                ; preds = %str_overflow_abort556, %b.grow2540
  %arena.cur557 = call ptr @dva_arena_current()
  %b.new.buf2558 = call ptr @dva_arena_alloc(ptr %arena.cur557, i64 %sum553)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2558, ptr align 1 %b.cur.data2551, i64 %b.cur.len2549, i1 false)
  %b.grow2.nul559 = getelementptr i8, ptr %b.new.buf2558, i64 %b.cur.len2549
  store i8 0, ptr %b.grow2.nul559, align 1
  %b.new.data2.gep560 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 1
  store ptr %b.new.buf2558, ptr %b.new.data2.gep560, align 8
  %b.new.cap2.gep561 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 2
  store i64 %b.new.cap547, ptr %b.new.cap2.gep561, align 8
  br label %b.grow_done542

str_overflow_abort556:                            ; preds = %b.grow2540
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2555

br.b1.25:                                         ; preds = %b.grow_done542
  store i8 46, ptr %b.rn.dst564, align 1
  br label %br.done.25

br.c2.25:                                         ; preds = %b.grow_done542
  br i1 true, label %br.b2.25, label %br.c3.25

br.b2.25:                                         ; preds = %br.c2.25
  store i8 -64, ptr %b.rn.dst564, align 1
  %br.dst1565 = getelementptr i8, ptr %b.rn.dst564, i64 1
  store i8 -82, ptr %br.dst1565, align 1
  br label %br.done.25

br.c3.25:                                         ; preds = %br.c2.25
  br i1 true, label %br.b3.25, label %br.b4.25

br.b3.25:                                         ; preds = %br.c3.25
  store i8 -32, ptr %b.rn.dst564, align 1
  %br.dst1.3566 = getelementptr i8, ptr %b.rn.dst564, i64 1
  store i8 -128, ptr %br.dst1.3566, align 1
  %br.dst2.3567 = getelementptr i8, ptr %b.rn.dst564, i64 2
  store i8 -82, ptr %br.dst2.3567, align 1
  br label %br.done.25

br.b4.25:                                         ; preds = %br.c3.25
  store i8 -16, ptr %b.rn.dst564, align 1
  %br.dst1.4568 = getelementptr i8, ptr %b.rn.dst564, i64 1
  store i8 -128, ptr %br.dst1.4568, align 1
  %br.dst2.4569 = getelementptr i8, ptr %b.rn.dst564, i64 2
  store i8 -128, ptr %br.dst2.4569, align 1
  %br.dst3.4570 = getelementptr i8, ptr %b.rn.dst564, i64 3
  store i8 -82, ptr %br.dst3.4570, align 1
  br label %br.done.25

br.done.25:                                       ; preds = %br.b4.25, %br.b3.25, %br.b2.25, %br.b1.25
  %br.nul571 = getelementptr i8, ptr %b.rn.data563, i64 %sum533
  store i8 0, ptr %br.nul571, align 1
  %b.len.gep572 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load529, i32 0, i32 0
  store i64 %sum533, ptr %b.len.gep572, align 8
  %var.load573 = load i64, ptr %var.en, align 8
  store i64 %var.load573, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.header.26:                                   ; preds = %loop.latch.26, %br.done.25
  %counter.load574 = load i64, ptr %loop.idx.26, align 8
  %loop.cond575 = icmp slt i64 %counter.load574, 6
  br i1 %loop.cond575, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i576 = sub i64 %counter.load574, %var.load573
  store i64 1, ptr %loop.step.26, align 8
  store i64 %loop.rel.i576, ptr %var._i577, align 8
  store i64 %counter.load574, ptr %var._578, align 8
  store i64 %counter.load574, ptr %var.i, align 8
  %var.load579 = load ptr, ptr %var.ms, align 8
  %s.read.len580 = getelementptr inbounds { i64, ptr }, ptr %var.load579, i32 0, i32 0
  %s.read.len581 = load i64, ptr %s.read.len580, align 8
  %s.read.len582 = and i64 %s.read.len581, 281474976710655
  %str.tag583 = lshr i64 %s.read.len581, 48
  %str.immortal584 = icmp eq i64 %str.tag583, 0
  br i1 %str.immortal584, label %str_ok586, label %str_gen_check585

loop.exit.nat.26:                                 ; preds = %loop.header.26
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %b.push_done643
  %step.val665 = load i64, ptr %loop.step.26, align 8
  %loop.next666 = add i64 %counter.load574, %step.val665
  store i64 %loop.next666, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %loop.exit.nat.26
  br label %choice.exit528

str_gen_check585:                                 ; preds = %loop.body.26
  %arena.gen588 = call ptr @dva_arena_current()
  %arena.gen589 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen588, i32 0, i32 4
  %arena.gen590 = load i64, ptr %arena.gen589, align 8
  %str.tag.match591 = icmp eq i64 %str.tag583, %arena.gen590
  br i1 %str.tag.match591, label %str_ok586, label %str_stale587

str_ok586:                                        ; preds = %str_stale587, %str_gen_check585, %loop.body.26
  %s.read.data592 = getelementptr inbounds { i64, ptr }, ptr %var.load579, i32 0, i32 1
  %s.read.data593 = load ptr, ptr %s.read.data592, align 8
  %var.load594 = load i64, ptr %var.i, align 8
  %idx.neg595 = icmp slt i64 %var.load594, 0
  br i1 %idx.neg595, label %idx_oob598, label %idx_big_check596

str_stale587:                                     ; preds = %str_gen_check585
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok586

idx_big_check596:                                 ; preds = %str_ok586
  %idx.big599 = icmp sge i64 %var.load594, %s.read.len582
  br i1 %idx.big599, label %idx_oob598, label %idx_ok597

idx_ok597:                                        ; preds = %idx_oob598, %idx_big_check596
  %s.byte.gep600 = getelementptr i8, ptr %s.read.data593, i64 %var.load594
  %s.byte601 = load i8, ptr %s.byte.gep600, align 1
  %s.byte.val602 = zext i8 %s.byte601 to i64
  %b.load603 = load ptr, ptr %var.b, align 8
  %var.load604 = load ptr, ptr %var.ms, align 8
  %s.read.len605 = getelementptr inbounds { i64, ptr }, ptr %var.load604, i32 0, i32 0
  %s.read.len606 = load i64, ptr %s.read.len605, align 8
  %s.read.len607 = and i64 %s.read.len606, 281474976710655
  %str.tag608 = lshr i64 %s.read.len606, 48
  %str.immortal609 = icmp eq i64 %str.tag608, 0
  br i1 %str.immortal609, label %str_ok611, label %str_gen_check610

idx_oob598:                                       ; preds = %idx_big_check596, %str_ok586
  %36 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok597

str_gen_check610:                                 ; preds = %idx_ok597
  %arena.gen613 = call ptr @dva_arena_current()
  %arena.gen614 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen613, i32 0, i32 4
  %arena.gen615 = load i64, ptr %arena.gen614, align 8
  %str.tag.match616 = icmp eq i64 %str.tag608, %arena.gen615
  br i1 %str.tag.match616, label %str_ok611, label %str_stale612

str_ok611:                                        ; preds = %str_stale612, %str_gen_check610, %idx_ok597
  %s.read.data617 = getelementptr inbounds { i64, ptr }, ptr %var.load604, i32 0, i32 1
  %s.read.data618 = load ptr, ptr %s.read.data617, align 8
  %var.load619 = load i64, ptr %var.i, align 8
  %idx.neg620 = icmp slt i64 %var.load619, 0
  br i1 %idx.neg620, label %idx_oob623, label %idx_big_check621

str_stale612:                                     ; preds = %str_gen_check610
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok611

idx_big_check621:                                 ; preds = %str_ok611
  %idx.big624 = icmp sge i64 %var.load619, %s.read.len607
  br i1 %idx.big624, label %idx_oob623, label %idx_ok622

idx_ok622:                                        ; preds = %idx_oob623, %idx_big_check621
  %s.byte.gep625 = getelementptr i8, ptr %s.read.data618, i64 %var.load619
  %s.byte626 = load i8, ptr %s.byte.gep625, align 1
  %s.byte.val627 = zext i8 %s.byte626 to i64
  %b.b.ge0628 = icmp sge i64 %s.byte.val627, 0
  %b.b.le255629 = icmp sle i64 %s.byte.val627, 255
  %b.byte.range630 = and i1 %b.b.ge0628, %b.b.le255629
  br i1 %b.byte.range630, label %b.byte_ok631, label %b.byte_err632

idx_oob623:                                       ; preds = %idx_big_check621, %str_ok611
  %38 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok622

b.byte_ok631:                                     ; preds = %b.byte_err632, %idx_ok622
  %b.byte.i8633 = trunc i64 %s.byte.val627 to i8
  %b.len634 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load603, i32 0, i32 0
  %b.len635 = load i64, ptr %b.len634, align 8
  %b.cap636 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load603, i32 0, i32 2
  %b.cap637 = load i64, ptr %b.cap636, align 8
  %b.data638 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load603, i32 0, i32 1
  %b.data639 = load ptr, ptr %b.data638, align 8
  %b.needs.grow640 = icmp eq i64 %b.len635, %b.cap637
  br i1 %b.needs.grow640, label %b.grow641, label %b.nogrow642

b.byte_err632:                                    ; preds = %idx_ok622
  %39 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok631

b.grow641:                                        ; preds = %b.byte_ok631
  %b.cap2644 = mul i64 %b.cap637, 2
  %b.cap.small645 = icmp slt i64 %b.cap2644, 16
  %b.new.cap646 = select i1 %b.cap.small645, i64 16, i64 %b.cap2644
  %b.new.buf.len647 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap646, i64 1)
  %sum648 = extractvalue { i64, i1 } %b.new.buf.len647, 0
  %ovf649 = extractvalue { i64, i1 } %b.new.buf.len647, 1
  br i1 %ovf649, label %str_overflow_abort651, label %b.new.buf.len650

b.nogrow642:                                      ; preds = %b.byte_ok631
  br label %b.push_done643

b.push_done643:                                   ; preds = %b.nogrow642, %b.new.buf.len650
  %b.cur.data657 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load603, i32 0, i32 1
  %b.cur.data658 = load ptr, ptr %b.cur.data657, align 8
  %b.cur.len659 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load603, i32 0, i32 0
  %b.cur.len660 = load i64, ptr %b.cur.len659, align 8
  %b.byte.gep661 = getelementptr i8, ptr %b.cur.data658, i64 %b.cur.len660
  store i8 %b.byte.i8633, ptr %b.byte.gep661, align 1
  %b.next.len662 = add i64 %b.cur.len660, 1
  %b.nul663 = getelementptr i8, ptr %b.cur.data658, i64 %b.next.len662
  store i8 0, ptr %b.nul663, align 1
  %b.len.gep664 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load603, i32 0, i32 0
  store i64 %b.next.len662, ptr %b.len.gep664, align 8
  br label %loop.latch.26

b.new.buf.len650:                                 ; preds = %str_overflow_abort651, %b.grow641
  %arena.cur652 = call ptr @dva_arena_current()
  %b.new.buf653 = call ptr @dva_arena_alloc(ptr %arena.cur652, i64 %sum648)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf653, ptr align 1 %b.data639, i64 %b.len635, i1 false)
  %b.grow.nul654 = getelementptr i8, ptr %b.new.buf653, i64 %b.len635
  store i8 0, ptr %b.grow.nul654, align 1
  %b.new.data.gep655 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load603, i32 0, i32 1
  store ptr %b.new.buf653, ptr %b.new.data.gep655, align 8
  %b.new.cap.gep656 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load603, i32 0, i32 2
  store i64 %b.new.cap646, ptr %b.new.cap.gep656, align 8
  br label %b.push_done643

str_overflow_abort651:                            ; preds = %b.grow641
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len650

str_gen_check671:                                 ; preds = %choice.else427
  %arena.gen674 = call ptr @dva_arena_current()
  %arena.gen675 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen674, i32 0, i32 4
  %arena.gen676 = load i64, ptr %arena.gen675, align 8
  %str.tag.match677 = icmp eq i64 %str.tag669, %arena.gen676
  br i1 %str.tag.match677, label %str_ok672, label %str_stale673

str_ok672:                                        ; preds = %str_stale673, %str_gen_check671, %choice.else427
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 0
  %b.app.cur.len678 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len678, i64 %app.str.len668)
  %sum679 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf680 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf680, label %str_overflow_abort682, label %b.app.new.len681

str_stale673:                                     ; preds = %str_gen_check671
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok672

b.app.new.len681:                                 ; preds = %str_overflow_abort682, %str_ok672
  %b.cap683 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 2
  %b.cap684 = load i64, ptr %b.cap683, align 8
  %b.need.grow685 = icmp slt i64 %b.cap684, %sum679
  br i1 %b.need.grow685, label %b.grow2686, label %b.nogrow2687

str_overflow_abort682:                            ; preds = %str_ok672
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len681

b.grow2686:                                       ; preds = %b.app.new.len681
  %b.cap2689 = mul i64 %b.cap684, 2
  %b.cap.small690 = icmp slt i64 %b.cap2689, 16
  %b.cap.grow691 = select i1 %b.cap.small690, i64 16, i64 %b.cap2689
  %b.cap.need692 = icmp slt i64 %b.cap.grow691, %sum679
  %b.new.cap693 = select i1 %b.cap.need692, i64 %sum679, i64 %b.cap.grow691
  %b.cur.len2694 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 0
  %b.cur.len2695 = load i64, ptr %b.cur.len2694, align 8
  %b.cur.data2696 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 1
  %b.cur.data2697 = load ptr, ptr %b.cur.data2696, align 8
  %b.new.buf.len2698 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap693, i64 1)
  %sum699 = extractvalue { i64, i1 } %b.new.buf.len2698, 0
  %ovf700 = extractvalue { i64, i1 } %b.new.buf.len2698, 1
  br i1 %ovf700, label %str_overflow_abort702, label %b.new.buf.len2701

b.nogrow2687:                                     ; preds = %b.app.new.len681
  br label %b.grow_done688

b.grow_done688:                                   ; preds = %b.nogrow2687, %b.new.buf.len2701
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 1
  %b.app.data708 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data708, i64 %b.app.cur.len678
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len668, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data708, i64 %sum679
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep709 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 0
  store i64 %sum679, ptr %b.len.gep709, align 8
  %var.load710 = load i64, ptr %"var.e'", align 8
  %subtmp711 = sub i64 0, %var.load710
  %subtmp712 = sub i64 %subtmp711, 1
  store i64 0, ptr %loop.idx.27, align 8
  br label %loop.header.27

b.new.buf.len2701:                                ; preds = %str_overflow_abort702, %b.grow2686
  %arena.cur703 = call ptr @dva_arena_current()
  %b.new.buf2704 = call ptr @dva_arena_alloc(ptr %arena.cur703, i64 %sum699)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2704, ptr align 1 %b.cur.data2697, i64 %b.cur.len2695, i1 false)
  %b.grow2.nul705 = getelementptr i8, ptr %b.new.buf2704, i64 %b.cur.len2695
  store i8 0, ptr %b.grow2.nul705, align 1
  %b.new.data2.gep706 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 1
  store ptr %b.new.buf2704, ptr %b.new.data2.gep706, align 8
  %b.new.cap2.gep707 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load667, i32 0, i32 2
  store i64 %b.new.cap693, ptr %b.new.cap2.gep707, align 8
  br label %b.grow_done688

str_overflow_abort702:                            ; preds = %b.grow2686
  %43 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2701

loop.header.27:                                   ; preds = %loop.latch.27, %b.grow_done688
  %counter.load713 = load i64, ptr %loop.idx.27, align 8
  %loop.cond714 = icmp slt i64 %counter.load713, %subtmp712
  br i1 %loop.cond714, label %loop.body.27, label %loop.exit.nat.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i715 = sub i64 %counter.load713, 0
  store i64 1, ptr %loop.step.27, align 8
  store i64 %loop.rel.i715, ptr %var._i716, align 8
  store i64 %counter.load713, ptr %var._717, align 8
  store i64 %counter.load713, ptr %var.i, align 8
  %b.load718 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len719 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load718, i32 0, i32 0
  %b.rn.cur.len720 = load i64, ptr %b.rn.cur.len719, align 8
  %b.rn.new.len721 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len720, i64 1)
  %sum722 = extractvalue { i64, i1 } %b.rn.new.len721, 0
  %ovf723 = extractvalue { i64, i1 } %b.rn.new.len721, 1
  br i1 %ovf723, label %str_overflow_abort725, label %b.rn.new.len724

loop.exit.nat.27:                                 ; preds = %loop.header.27
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %br.done.28
  %step.val762 = load i64, ptr %loop.step.27, align 8
  %loop.next763 = add i64 %counter.load713, %step.val762
  store i64 %loop.next763, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %loop.exit.nat.27
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

b.rn.new.len724:                                  ; preds = %str_overflow_abort725, %loop.body.27
  %b.cap726 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load718, i32 0, i32 2
  %b.cap727 = load i64, ptr %b.cap726, align 8
  %b.need.grow728 = icmp slt i64 %b.cap727, %sum722
  br i1 %b.need.grow728, label %b.grow2729, label %b.nogrow2730

str_overflow_abort725:                            ; preds = %loop.body.27
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len724

b.grow2729:                                       ; preds = %b.rn.new.len724
  %b.cap2732 = mul i64 %b.cap727, 2
  %b.cap.small733 = icmp slt i64 %b.cap2732, 16
  %b.cap.grow734 = select i1 %b.cap.small733, i64 16, i64 %b.cap2732
  %b.cap.need735 = icmp slt i64 %b.cap.grow734, %sum722
  %b.new.cap736 = select i1 %b.cap.need735, i64 %sum722, i64 %b.cap.grow734
  %b.cur.len2737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load718, i32 0, i32 0
  %b.cur.len2738 = load i64, ptr %b.cur.len2737, align 8
  %b.cur.data2739 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load718, i32 0, i32 1
  %b.cur.data2740 = load ptr, ptr %b.cur.data2739, align 8
  %b.new.buf.len2741 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap736, i64 1)
  %sum742 = extractvalue { i64, i1 } %b.new.buf.len2741, 0
  %ovf743 = extractvalue { i64, i1 } %b.new.buf.len2741, 1
  br i1 %ovf743, label %str_overflow_abort745, label %b.new.buf.len2744

b.nogrow2730:                                     ; preds = %b.rn.new.len724
  br label %b.grow_done731

b.grow_done731:                                   ; preds = %b.nogrow2730, %b.new.buf.len2744
  %b.rn.data751 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load718, i32 0, i32 1
  %b.rn.data752 = load ptr, ptr %b.rn.data751, align 8
  %b.rn.dst753 = getelementptr i8, ptr %b.rn.data752, i64 %b.rn.cur.len720
  br i1 true, label %br.b1.28, label %br.c2.28

b.new.buf.len2744:                                ; preds = %str_overflow_abort745, %b.grow2729
  %arena.cur746 = call ptr @dva_arena_current()
  %b.new.buf2747 = call ptr @dva_arena_alloc(ptr %arena.cur746, i64 %sum742)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2747, ptr align 1 %b.cur.data2740, i64 %b.cur.len2738, i1 false)
  %b.grow2.nul748 = getelementptr i8, ptr %b.new.buf2747, i64 %b.cur.len2738
  store i8 0, ptr %b.grow2.nul748, align 1
  %b.new.data2.gep749 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load718, i32 0, i32 1
  store ptr %b.new.buf2747, ptr %b.new.data2.gep749, align 8
  %b.new.cap2.gep750 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load718, i32 0, i32 2
  store i64 %b.new.cap736, ptr %b.new.cap2.gep750, align 8
  br label %b.grow_done731

str_overflow_abort745:                            ; preds = %b.grow2729
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2744

br.b1.28:                                         ; preds = %b.grow_done731
  store i8 48, ptr %b.rn.dst753, align 1
  br label %br.done.28

br.c2.28:                                         ; preds = %b.grow_done731
  br i1 true, label %br.b2.28, label %br.c3.28

br.b2.28:                                         ; preds = %br.c2.28
  store i8 -64, ptr %b.rn.dst753, align 1
  %br.dst1754 = getelementptr i8, ptr %b.rn.dst753, i64 1
  store i8 -80, ptr %br.dst1754, align 1
  br label %br.done.28

br.c3.28:                                         ; preds = %br.c2.28
  br i1 true, label %br.b3.28, label %br.b4.28

br.b3.28:                                         ; preds = %br.c3.28
  store i8 -32, ptr %b.rn.dst753, align 1
  %br.dst1.3755 = getelementptr i8, ptr %b.rn.dst753, i64 1
  store i8 -128, ptr %br.dst1.3755, align 1
  %br.dst2.3756 = getelementptr i8, ptr %b.rn.dst753, i64 2
  store i8 -80, ptr %br.dst2.3756, align 1
  br label %br.done.28

br.b4.28:                                         ; preds = %br.c3.28
  store i8 -16, ptr %b.rn.dst753, align 1
  %br.dst1.4757 = getelementptr i8, ptr %b.rn.dst753, i64 1
  store i8 -128, ptr %br.dst1.4757, align 1
  %br.dst2.4758 = getelementptr i8, ptr %b.rn.dst753, i64 2
  store i8 -128, ptr %br.dst2.4758, align 1
  %br.dst3.4759 = getelementptr i8, ptr %b.rn.dst753, i64 3
  store i8 -80, ptr %br.dst3.4759, align 1
  br label %br.done.28

br.done.28:                                       ; preds = %br.b4.28, %br.b3.28, %br.b2.28, %br.b1.28
  %br.nul760 = getelementptr i8, ptr %b.rn.data752, i64 %sum722
  store i8 0, ptr %br.nul760, align 1
  %b.len.gep761 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load718, i32 0, i32 0
  store i64 %sum722, ptr %b.len.gep761, align 8
  br label %loop.latch.27

loop.header.29:                                   ; preds = %loop.latch.29, %loop.exit.27
  %counter.load764 = load i64, ptr %loop.idx.29, align 8
  %loop.cond765 = icmp slt i64 %counter.load764, 6
  br i1 %loop.cond765, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i766 = sub i64 %counter.load764, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i766, ptr %var._i767, align 8
  store i64 %counter.load764, ptr %var._768, align 8
  store i64 %counter.load764, ptr %var.i, align 8
  %var.load769 = load ptr, ptr %var.ms, align 8
  %s.read.len770 = getelementptr inbounds { i64, ptr }, ptr %var.load769, i32 0, i32 0
  %s.read.len771 = load i64, ptr %s.read.len770, align 8
  %s.read.len772 = and i64 %s.read.len771, 281474976710655
  %str.tag773 = lshr i64 %s.read.len771, 48
  %str.immortal774 = icmp eq i64 %str.tag773, 0
  br i1 %str.immortal774, label %str_ok776, label %str_gen_check775

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %b.push_done833
  %step.val855 = load i64, ptr %loop.step.29, align 8
  %loop.next856 = add i64 %counter.load764, %step.val855
  store i64 %loop.next856, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  br label %choice.exit428

str_gen_check775:                                 ; preds = %loop.body.29
  %arena.gen778 = call ptr @dva_arena_current()
  %arena.gen779 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen778, i32 0, i32 4
  %arena.gen780 = load i64, ptr %arena.gen779, align 8
  %str.tag.match781 = icmp eq i64 %str.tag773, %arena.gen780
  br i1 %str.tag.match781, label %str_ok776, label %str_stale777

str_ok776:                                        ; preds = %str_stale777, %str_gen_check775, %loop.body.29
  %s.read.data782 = getelementptr inbounds { i64, ptr }, ptr %var.load769, i32 0, i32 1
  %s.read.data783 = load ptr, ptr %s.read.data782, align 8
  %var.load784 = load i64, ptr %var.i, align 8
  %idx.neg785 = icmp slt i64 %var.load784, 0
  br i1 %idx.neg785, label %idx_oob788, label %idx_big_check786

str_stale777:                                     ; preds = %str_gen_check775
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok776

idx_big_check786:                                 ; preds = %str_ok776
  %idx.big789 = icmp sge i64 %var.load784, %s.read.len772
  br i1 %idx.big789, label %idx_oob788, label %idx_ok787

idx_ok787:                                        ; preds = %idx_oob788, %idx_big_check786
  %s.byte.gep790 = getelementptr i8, ptr %s.read.data783, i64 %var.load784
  %s.byte791 = load i8, ptr %s.byte.gep790, align 1
  %s.byte.val792 = zext i8 %s.byte791 to i64
  %b.load793 = load ptr, ptr %var.b, align 8
  %var.load794 = load ptr, ptr %var.ms, align 8
  %s.read.len795 = getelementptr inbounds { i64, ptr }, ptr %var.load794, i32 0, i32 0
  %s.read.len796 = load i64, ptr %s.read.len795, align 8
  %s.read.len797 = and i64 %s.read.len796, 281474976710655
  %str.tag798 = lshr i64 %s.read.len796, 48
  %str.immortal799 = icmp eq i64 %str.tag798, 0
  br i1 %str.immortal799, label %str_ok801, label %str_gen_check800

idx_oob788:                                       ; preds = %idx_big_check786, %str_ok776
  %47 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok787

str_gen_check800:                                 ; preds = %idx_ok787
  %arena.gen803 = call ptr @dva_arena_current()
  %arena.gen804 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen803, i32 0, i32 4
  %arena.gen805 = load i64, ptr %arena.gen804, align 8
  %str.tag.match806 = icmp eq i64 %str.tag798, %arena.gen805
  br i1 %str.tag.match806, label %str_ok801, label %str_stale802

str_ok801:                                        ; preds = %str_stale802, %str_gen_check800, %idx_ok787
  %s.read.data807 = getelementptr inbounds { i64, ptr }, ptr %var.load794, i32 0, i32 1
  %s.read.data808 = load ptr, ptr %s.read.data807, align 8
  %var.load809 = load i64, ptr %var.i, align 8
  %idx.neg810 = icmp slt i64 %var.load809, 0
  br i1 %idx.neg810, label %idx_oob813, label %idx_big_check811

str_stale802:                                     ; preds = %str_gen_check800
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok801

idx_big_check811:                                 ; preds = %str_ok801
  %idx.big814 = icmp sge i64 %var.load809, %s.read.len797
  br i1 %idx.big814, label %idx_oob813, label %idx_ok812

idx_ok812:                                        ; preds = %idx_oob813, %idx_big_check811
  %s.byte.gep815 = getelementptr i8, ptr %s.read.data808, i64 %var.load809
  %s.byte816 = load i8, ptr %s.byte.gep815, align 1
  %s.byte.val817 = zext i8 %s.byte816 to i64
  %b.b.ge0818 = icmp sge i64 %s.byte.val817, 0
  %b.b.le255819 = icmp sle i64 %s.byte.val817, 255
  %b.byte.range820 = and i1 %b.b.ge0818, %b.b.le255819
  br i1 %b.byte.range820, label %b.byte_ok821, label %b.byte_err822

idx_oob813:                                       ; preds = %idx_big_check811, %str_ok801
  %49 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok812

b.byte_ok821:                                     ; preds = %b.byte_err822, %idx_ok812
  %b.byte.i8823 = trunc i64 %s.byte.val817 to i8
  %b.len824 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 0
  %b.len825 = load i64, ptr %b.len824, align 8
  %b.cap826 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 2
  %b.cap827 = load i64, ptr %b.cap826, align 8
  %b.data828 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 1
  %b.data829 = load ptr, ptr %b.data828, align 8
  %b.needs.grow830 = icmp eq i64 %b.len825, %b.cap827
  br i1 %b.needs.grow830, label %b.grow831, label %b.nogrow832

b.byte_err822:                                    ; preds = %idx_ok812
  %50 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok821

b.grow831:                                        ; preds = %b.byte_ok821
  %b.cap2834 = mul i64 %b.cap827, 2
  %b.cap.small835 = icmp slt i64 %b.cap2834, 16
  %b.new.cap836 = select i1 %b.cap.small835, i64 16, i64 %b.cap2834
  %b.new.buf.len837 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap836, i64 1)
  %sum838 = extractvalue { i64, i1 } %b.new.buf.len837, 0
  %ovf839 = extractvalue { i64, i1 } %b.new.buf.len837, 1
  br i1 %ovf839, label %str_overflow_abort841, label %b.new.buf.len840

b.nogrow832:                                      ; preds = %b.byte_ok821
  br label %b.push_done833

b.push_done833:                                   ; preds = %b.nogrow832, %b.new.buf.len840
  %b.cur.data847 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 1
  %b.cur.data848 = load ptr, ptr %b.cur.data847, align 8
  %b.cur.len849 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 0
  %b.cur.len850 = load i64, ptr %b.cur.len849, align 8
  %b.byte.gep851 = getelementptr i8, ptr %b.cur.data848, i64 %b.cur.len850
  store i8 %b.byte.i8823, ptr %b.byte.gep851, align 1
  %b.next.len852 = add i64 %b.cur.len850, 1
  %b.nul853 = getelementptr i8, ptr %b.cur.data848, i64 %b.next.len852
  store i8 0, ptr %b.nul853, align 1
  %b.len.gep854 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 0
  store i64 %b.next.len852, ptr %b.len.gep854, align 8
  br label %loop.latch.29

b.new.buf.len840:                                 ; preds = %str_overflow_abort841, %b.grow831
  %arena.cur842 = call ptr @dva_arena_current()
  %b.new.buf843 = call ptr @dva_arena_alloc(ptr %arena.cur842, i64 %sum838)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf843, ptr align 1 %b.data829, i64 %b.len825, i1 false)
  %b.grow.nul844 = getelementptr i8, ptr %b.new.buf843, i64 %b.len825
  store i8 0, ptr %b.grow.nul844, align 1
  %b.new.data.gep845 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 1
  store ptr %b.new.buf843, ptr %b.new.data.gep845, align 8
  %b.new.cap.gep846 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 2
  store i64 %b.new.cap836, ptr %b.new.cap.gep846, align 8
  br label %b.push_done833

str_overflow_abort841:                            ; preds = %b.grow831
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len840

b.freeze.check866:                                ; preds = %choice.exit204
  %b.freeze.last.idx869 = sub i64 %b.freeze.nc864, 1
  %b.freeze.chunks.gep870 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena862, i32 0, i32 3
  %b.freeze.chunk.slot871 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep870, i64 0, i64 %b.freeze.last.idx869
  %b.freeze.last.chunk872 = load ptr, ptr %b.freeze.chunk.slot871, align 8
  %b.freeze.off.gep873 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena862, i32 0, i32 2
  %b.freeze.off874 = load i64, ptr %b.freeze.off.gep873, align 8
  %b.freeze.bump875 = getelementptr i8, ptr %b.freeze.last.chunk872, i64 %b.freeze.off874
  %b.freeze.cap.gep876 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %b.freeze.arena862, i32 0, i32 0
  %b.freeze.cap877 = load i64, ptr %b.freeze.cap.gep876, align 8
  %b.freeze.chunk.end878 = getelementptr i8, ptr %b.freeze.last.chunk872, i64 %b.freeze.cap877
  %b.freeze.ge.chunk879 = icmp uge ptr %b.freeze.data861, %b.freeze.last.chunk872
  %b.freeze.lt.end880 = icmp ult ptr %b.freeze.data861, %b.freeze.chunk.end878
  %b.freeze.in.chunk881 = and i1 %b.freeze.ge.chunk879, %b.freeze.lt.end880
  %b.freeze.ge.bump882 = icmp uge ptr %b.freeze.data861, %b.freeze.bump875
  %b.freeze.reaped883 = and i1 %b.freeze.in.chunk881, %b.freeze.ge.bump882
  br i1 %b.freeze.reaped883, label %b.freeze.copy867, label %b.freeze.done868

b.freeze.copy867:                                 ; preds = %b.freeze.check866
  %arena.cur884 = call ptr @dva_arena_current()
  %b.freeze.fresh885 = call ptr @dva_arena_alloc(ptr %arena.cur884, i64 %b.freeze.len859)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh885, ptr align 1 %b.freeze.data861, i64 %b.freeze.len859, i1 false)
  br label %b.freeze.done868

b.freeze.done868:                                 ; preds = %b.freeze.copy867, %b.freeze.check866, %choice.exit204
  %b.freeze.data886 = phi ptr [ %b.freeze.data861, %choice.exit204 ], [ %b.freeze.data861, %b.freeze.check866 ], [ %b.freeze.fresh885, %b.freeze.copy867 ]
  %arena.cur887 = call ptr @dva_arena_current()
  %builder.freeze888 = call ptr @dva_arena_alloc(ptr %arena.cur887, i64 16)
  %str.build.len.gep889 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze888, i32 0, i32 0
  store i64 %b.freeze.len859, ptr %str.build.len.gep889, align 8
  %str.build.data.gep890 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze888, i32 0, i32 1
  store ptr %b.freeze.data886, ptr %str.build.data.gep890, align 8
  %b.freeze.rst.len891 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load857, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len891, align 8
  %b.freeze.rst.data892 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load857, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data892, align 8
  %b.freeze.rst.cap893 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load857, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap893, align 8
  store ptr %builder.freeze888, ptr %var.full, align 8
  %var.load894 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load894, i32 0, i32 0
  %str.len.query895 = load i64, ptr %str.len.query, align 8
  %str.len.query896 = and i64 %str.len.query895, 281474976710655
  %str.tag897 = lshr i64 %str.len.query895, 48
  %str.immortal898 = icmp eq i64 %str.tag897, 0
  br i1 %str.immortal898, label %str_ok900, label %str_gen_check899

str_gen_check899:                                 ; preds = %b.freeze.done868
  %arena.gen902 = call ptr @dva_arena_current()
  %arena.gen903 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen902, i32 0, i32 4
  %arena.gen904 = load i64, ptr %arena.gen903, align 8
  %str.tag.match905 = icmp eq i64 %str.tag897, %arena.gen904
  br i1 %str.tag.match905, label %str_ok900, label %str_stale901

str_ok900:                                        ; preds = %str_stale901, %str_gen_check899, %b.freeze.done868
  store i64 %str.len.query896, ptr %var.len, align 8
  %var.load906 = load i64, ptr %var.len, align 8
  store i64 %var.load906, ptr %"var.end'", align 8
  store i64 0, ptr %loop.idx.30, align 8
  br label %loop.header.30

str_stale901:                                     ; preds = %str_gen_check899
  %52 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok900

loop.header.30:                                   ; preds = %loop.latch.30, %str_ok900
  %counter.load907 = load i64, ptr %loop.idx.30, align 8
  br label %loop.body.30

loop.body.30:                                     ; preds = %loop.header.30
  %loop.rel.i908 = sub i64 %counter.load907, 0
  store i64 1, ptr %loop.step.30, align 8
  store i64 %loop.rel.i908, ptr %var._i909, align 8
  store i64 %counter.load907, ptr %var._910, align 8
  %var.load911 = load i64, ptr %"var.end'", align 8
  %cmptmp912 = icmp sgt i64 %var.load911, 0
  br i1 %cmptmp912, label %and.31.then, label %and.31.else

loop.exit.nat.30:                                 ; No predecessors!
  br label %loop.exit.30

loop.latch.30:                                    ; preds = %choice.exit941
  %step.val944 = load i64, ptr %loop.step.30, align 8
  %loop.next945 = add i64 %counter.load907, %step.val944
  store i64 %loop.next945, ptr %loop.idx.30, align 8
  br label %loop.header.30

loop.exit.30:                                     ; preds = %choice.else940, %loop.exit.nat.30
  %var.load946 = load i64, ptr %"var.end'", align 8
  %cmptmp947 = icmp sgt i64 %var.load946, 0
  br i1 %cmptmp947, label %and.32.then, label %and.32.else

and.31.then:                                      ; preds = %loop.body.30
  %var.load913 = load ptr, ptr %var.full, align 8
  %s.read.len914 = getelementptr inbounds { i64, ptr }, ptr %var.load913, i32 0, i32 0
  %s.read.len915 = load i64, ptr %s.read.len914, align 8
  %s.read.len916 = and i64 %s.read.len915, 281474976710655
  %str.tag917 = lshr i64 %s.read.len915, 48
  %str.immortal918 = icmp eq i64 %str.tag917, 0
  br i1 %str.immortal918, label %str_ok920, label %str_gen_check919

and.31.else:                                      ; preds = %loop.body.30
  br label %and.31.exit

and.31.exit:                                      ; preds = %and.31.else, %idx_ok932
  %and.31.phi = phi i1 [ %cmptmp938, %idx_ok932 ], [ %cmptmp912, %and.31.else ]
  br i1 %and.31.phi, label %choice.then939, label %choice.else940

str_gen_check919:                                 ; preds = %and.31.then
  %arena.gen922 = call ptr @dva_arena_current()
  %arena.gen923 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen922, i32 0, i32 4
  %arena.gen924 = load i64, ptr %arena.gen923, align 8
  %str.tag.match925 = icmp eq i64 %str.tag917, %arena.gen924
  br i1 %str.tag.match925, label %str_ok920, label %str_stale921

str_ok920:                                        ; preds = %str_stale921, %str_gen_check919, %and.31.then
  %s.read.data926 = getelementptr inbounds { i64, ptr }, ptr %var.load913, i32 0, i32 1
  %s.read.data927 = load ptr, ptr %s.read.data926, align 8
  %var.load928 = load i64, ptr %"var.end'", align 8
  %subtmp929 = sub i64 %var.load928, 1
  %idx.neg930 = icmp slt i64 %subtmp929, 0
  br i1 %idx.neg930, label %idx_oob933, label %idx_big_check931

str_stale921:                                     ; preds = %str_gen_check919
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok920

idx_big_check931:                                 ; preds = %str_ok920
  %idx.big934 = icmp sge i64 %subtmp929, %s.read.len916
  br i1 %idx.big934, label %idx_oob933, label %idx_ok932

idx_ok932:                                        ; preds = %idx_oob933, %idx_big_check931
  %s.byte.gep935 = getelementptr i8, ptr %s.read.data927, i64 %subtmp929
  %s.byte936 = load i8, ptr %s.byte.gep935, align 1
  %s.byte.val937 = zext i8 %s.byte936 to i64
  %cmptmp938 = icmp eq i64 %s.byte.val937, 48
  br label %and.31.exit

idx_oob933:                                       ; preds = %idx_big_check931, %str_ok920
  %54 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok932

choice.then939:                                   ; preds = %and.31.exit
  %var.load942 = load i64, ptr %"var.end'", align 8
  %subtmp943 = sub i64 %var.load942, 1
  store i64 %subtmp943, ptr %"var.end'", align 8
  br label %choice.exit941

choice.else940:                                   ; preds = %and.31.exit
  br label %loop.exit.30

choice.exit941:                                   ; preds = %choice.then939
  br label %loop.latch.30

and.32.then:                                      ; preds = %loop.exit.30
  %var.load948 = load ptr, ptr %var.full, align 8
  %s.read.len949 = getelementptr inbounds { i64, ptr }, ptr %var.load948, i32 0, i32 0
  %s.read.len950 = load i64, ptr %s.read.len949, align 8
  %s.read.len951 = and i64 %s.read.len950, 281474976710655
  %str.tag952 = lshr i64 %s.read.len950, 48
  %str.immortal953 = icmp eq i64 %str.tag952, 0
  br i1 %str.immortal953, label %str_ok955, label %str_gen_check954

and.32.else:                                      ; preds = %loop.exit.30
  br label %and.32.exit

and.32.exit:                                      ; preds = %and.32.else, %idx_ok967
  %and.32.phi = phi i1 [ %cmptmp973, %idx_ok967 ], [ %cmptmp947, %and.32.else ]
  br i1 %and.32.phi, label %choice.then974, label %choice.exit975

str_gen_check954:                                 ; preds = %and.32.then
  %arena.gen957 = call ptr @dva_arena_current()
  %arena.gen958 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen957, i32 0, i32 4
  %arena.gen959 = load i64, ptr %arena.gen958, align 8
  %str.tag.match960 = icmp eq i64 %str.tag952, %arena.gen959
  br i1 %str.tag.match960, label %str_ok955, label %str_stale956

str_ok955:                                        ; preds = %str_stale956, %str_gen_check954, %and.32.then
  %s.read.data961 = getelementptr inbounds { i64, ptr }, ptr %var.load948, i32 0, i32 1
  %s.read.data962 = load ptr, ptr %s.read.data961, align 8
  %var.load963 = load i64, ptr %"var.end'", align 8
  %subtmp964 = sub i64 %var.load963, 1
  %idx.neg965 = icmp slt i64 %subtmp964, 0
  br i1 %idx.neg965, label %idx_oob968, label %idx_big_check966

str_stale956:                                     ; preds = %str_gen_check954
  %55 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok955

idx_big_check966:                                 ; preds = %str_ok955
  %idx.big969 = icmp sge i64 %subtmp964, %s.read.len951
  br i1 %idx.big969, label %idx_oob968, label %idx_ok967

idx_ok967:                                        ; preds = %idx_oob968, %idx_big_check966
  %s.byte.gep970 = getelementptr i8, ptr %s.read.data962, i64 %subtmp964
  %s.byte971 = load i8, ptr %s.byte.gep970, align 1
  %s.byte.val972 = zext i8 %s.byte971 to i64
  %cmptmp973 = icmp eq i64 %s.byte.val972, 46
  br label %and.32.exit

idx_oob968:                                       ; preds = %idx_big_check966, %str_ok955
  %56 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok967

choice.then974:                                   ; preds = %and.32.exit
  %var.load976 = load i64, ptr %"var.end'", align 8
  %subtmp977 = sub i64 %var.load976, 1
  store i64 %subtmp977, ptr %"var.end'", align 8
  br label %choice.exit975

choice.exit975:                                   ; preds = %choice.then974, %and.32.exit
  %var.load978 = load ptr, ptr %var.full, align 8
  %s.read.len979 = getelementptr inbounds { i64, ptr }, ptr %var.load978, i32 0, i32 0
  %s.read.len980 = load i64, ptr %s.read.len979, align 8
  %s.read.len981 = and i64 %s.read.len980, 281474976710655
  %str.tag982 = lshr i64 %s.read.len980, 48
  %str.immortal983 = icmp eq i64 %str.tag982, 0
  br i1 %str.immortal983, label %str_ok985, label %str_gen_check984

str_gen_check984:                                 ; preds = %choice.exit975
  %arena.gen987 = call ptr @dva_arena_current()
  %arena.gen988 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen987, i32 0, i32 4
  %arena.gen989 = load i64, ptr %arena.gen988, align 8
  %str.tag.match990 = icmp eq i64 %str.tag982, %arena.gen989
  br i1 %str.tag.match990, label %str_ok985, label %str_stale986

str_ok985:                                        ; preds = %str_stale986, %str_gen_check984, %choice.exit975
  %s.read.data991 = getelementptr inbounds { i64, ptr }, ptr %var.load978, i32 0, i32 1
  %s.read.data992 = load ptr, ptr %s.read.data991, align 8
  %var.load993 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len981, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len981
  %final.start = select i1 %start.gt.len, i64 %s.read.len981, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load993, 0
  %rel.end = add i64 %s.read.len981, %var.load993
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load993
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len981
  %final.end = select i1 %end.gt.len, i64 %s.read.len981, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data992, i64 %final.start
  %arena.cur994 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur994, i64 16)
  %str.build.len.gep995 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep995, align 8
  %str.build.data.gep996 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep996, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load997 = load i64, ptr %"var.e'", align 8
  %cmptmp998 = icmp slt i64 %var.load997, 0
  br i1 %cmptmp998, label %choice.then999, label %choice.else1000

str_stale986:                                     ; preds = %str_gen_check984
  %57 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok985

choice.then999:                                   ; preds = %str_ok985
  %var.load1002 = load i64, ptr %"var.e'", align 8
  %subtmp1003 = sub i64 0, %var.load1002
  %call.res1004 = call ptr @"str::from_int"(i64 %subtmp1003)
  %concat.lhs = load i64, ptr @str.2.struct, align 8
  %concat.lhs1005 = and i64 %concat.lhs, 281474976710655
  %str.tag1006 = lshr i64 %concat.lhs, 48
  %str.immortal1007 = icmp eq i64 %str.tag1006, 0
  br i1 %str.immortal1007, label %str_ok1009, label %str_gen_check1008

choice.else1000:                                  ; preds = %str_ok985
  %var.load1041 = load i64, ptr %"var.e'", align 8
  %call.res1042 = call ptr @"str::from_int"(i64 %var.load1041)
  br label %choice.exit1001

choice.exit1001:                                  ; preds = %choice.else1000, %concat.tot.len1035
  %choice.res1043 = phi ptr [ %concat.str, %concat.tot.len1035 ], [ %call.res1042, %choice.else1000 ]
  store ptr %choice.res1043, ptr %var.es, align 8
  %var.load1044 = load i64, ptr %"var.e'", align 8
  %cmptmp1045 = icmp slt i64 %var.load1044, -4
  br i1 %cmptmp1045, label %or.33.then, label %or.33.else

str_gen_check1008:                                ; preds = %choice.then999
  %arena.gen1011 = call ptr @dva_arena_current()
  %arena.gen1012 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1011, i32 0, i32 4
  %arena.gen1013 = load i64, ptr %arena.gen1012, align 8
  %str.tag.match1014 = icmp eq i64 %str.tag1006, %arena.gen1013
  br i1 %str.tag.match1014, label %str_ok1009, label %str_stale1010

str_ok1009:                                       ; preds = %str_stale1010, %str_gen_check1008, %choice.then999
  %concat.lhs1015 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res1004, i32 0, i32 0
  %concat.rhs1016 = load i64, ptr %concat.rhs, align 8
  %concat.rhs1017 = and i64 %concat.rhs1016, 281474976710655
  %str.tag1018 = lshr i64 %concat.rhs1016, 48
  %str.immortal1019 = icmp eq i64 %str.tag1018, 0
  br i1 %str.immortal1019, label %str_ok1021, label %str_gen_check1020

str_stale1010:                                    ; preds = %str_gen_check1008
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1009

str_gen_check1020:                                ; preds = %str_ok1009
  %arena.gen1023 = call ptr @dva_arena_current()
  %arena.gen1024 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1023, i32 0, i32 4
  %arena.gen1025 = load i64, ptr %arena.gen1024, align 8
  %str.tag.match1026 = icmp eq i64 %str.tag1018, %arena.gen1025
  br i1 %str.tag.match1026, label %str_ok1021, label %str_stale1022

str_ok1021:                                       ; preds = %str_stale1022, %str_gen_check1020, %str_ok1009
  %concat.rhs1027 = getelementptr inbounds { i64, ptr }, ptr %call.res1004, i32 0, i32 1
  %concat.rhs1028 = load ptr, ptr %concat.rhs1027, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1005, i64 %concat.rhs1017)
  %sum1029 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf1030 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf1030, label %str_overflow_abort1032, label %concat.sum.len1031

str_stale1022:                                    ; preds = %str_gen_check1020
  %59 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1021

concat.sum.len1031:                               ; preds = %str_overflow_abort1032, %str_ok1021
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1029, i64 1)
  %sum1033 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf1034 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf1034, label %str_overflow_abort1036, label %concat.tot.len1035

str_overflow_abort1032:                           ; preds = %str_ok1021
  %60 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1031

concat.tot.len1035:                               ; preds = %str_overflow_abort1036, %concat.sum.len1031
  %arena.cur1037 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur1037, i64 %sum1033)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs1015, i64 %concat.lhs1005, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1005
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs1028, i64 %concat.rhs1017, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum1029
  store i8 0, ptr %concat.nul, align 1
  %arena.cur1038 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 16)
  %str.build.len.gep1039 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum1029, ptr %str.build.len.gep1039, align 8
  %str.build.data.gep1040 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep1040, align 8
  br label %choice.exit1001

str_overflow_abort1036:                           ; preds = %concat.sum.len1031
  %61 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1035

or.33.then:                                       ; preds = %choice.exit1001
  br label %or.33.exit

or.33.else:                                       ; preds = %choice.exit1001
  %var.load1046 = load i64, ptr %"var.e'", align 8
  %cmptmp1047 = icmp sge i64 %var.load1046, 6
  br label %or.33.exit

or.33.exit:                                       ; preds = %or.33.else, %or.33.then
  %or.33.phi = phi i1 [ %cmptmp1045, %or.33.then ], [ %cmptmp1047, %or.33.else ]
  br i1 %or.33.phi, label %choice.then1048, label %choice.else1049

choice.then1048:                                  ; preds = %or.33.exit
  %var.load1051 = load ptr, ptr %var.mant, align 8
  %concat.lhs1052 = getelementptr inbounds { i64, ptr }, ptr %var.load1051, i32 0, i32 0
  %concat.lhs1053 = load i64, ptr %concat.lhs1052, align 8
  %concat.lhs1054 = and i64 %concat.lhs1053, 281474976710655
  %str.tag1055 = lshr i64 %concat.lhs1053, 48
  %str.immortal1056 = icmp eq i64 %str.tag1055, 0
  br i1 %str.immortal1056, label %str_ok1058, label %str_gen_check1057

choice.else1049:                                  ; preds = %or.33.exit
  %var.load1143 = load ptr, ptr %var.mant, align 8
  br label %choice.exit1050

choice.exit1050:                                  ; preds = %choice.else1049, %concat.tot.len1133
  %choice.res1144 = phi ptr [ %concat.str1140, %concat.tot.len1133 ], [ %var.load1143, %choice.else1049 ]
  ret ptr %choice.res1144

str_gen_check1057:                                ; preds = %choice.then1048
  %arena.gen1060 = call ptr @dva_arena_current()
  %arena.gen1061 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1060, i32 0, i32 4
  %arena.gen1062 = load i64, ptr %arena.gen1061, align 8
  %str.tag.match1063 = icmp eq i64 %str.tag1055, %arena.gen1062
  br i1 %str.tag.match1063, label %str_ok1058, label %str_stale1059

str_ok1058:                                       ; preds = %str_stale1059, %str_gen_check1057, %choice.then1048
  %concat.lhs1064 = getelementptr inbounds { i64, ptr }, ptr %var.load1051, i32 0, i32 1
  %concat.lhs1065 = load ptr, ptr %concat.lhs1064, align 8
  %concat.rhs1066 = load i64, ptr @str.3.struct, align 8
  %concat.rhs1067 = and i64 %concat.rhs1066, 281474976710655
  %str.tag1068 = lshr i64 %concat.rhs1066, 48
  %str.immortal1069 = icmp eq i64 %str.tag1068, 0
  br i1 %str.immortal1069, label %str_ok1071, label %str_gen_check1070

str_stale1059:                                    ; preds = %str_gen_check1057
  %62 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1058

str_gen_check1070:                                ; preds = %str_ok1058
  %arena.gen1073 = call ptr @dva_arena_current()
  %arena.gen1074 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1073, i32 0, i32 4
  %arena.gen1075 = load i64, ptr %arena.gen1074, align 8
  %str.tag.match1076 = icmp eq i64 %str.tag1068, %arena.gen1075
  br i1 %str.tag.match1076, label %str_ok1071, label %str_stale1072

str_ok1071:                                       ; preds = %str_stale1072, %str_gen_check1070, %str_ok1058
  %concat.rhs1077 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %concat.sum.len1078 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1054, i64 %concat.rhs1067)
  %sum1079 = extractvalue { i64, i1 } %concat.sum.len1078, 0
  %ovf1080 = extractvalue { i64, i1 } %concat.sum.len1078, 1
  br i1 %ovf1080, label %str_overflow_abort1082, label %concat.sum.len1081

str_stale1072:                                    ; preds = %str_gen_check1070
  %63 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1071

concat.sum.len1081:                               ; preds = %str_overflow_abort1082, %str_ok1071
  %concat.tot.len1083 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1079, i64 1)
  %sum1084 = extractvalue { i64, i1 } %concat.tot.len1083, 0
  %ovf1085 = extractvalue { i64, i1 } %concat.tot.len1083, 1
  br i1 %ovf1085, label %str_overflow_abort1087, label %concat.tot.len1086

str_overflow_abort1082:                           ; preds = %str_ok1071
  %64 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1081

concat.tot.len1086:                               ; preds = %str_overflow_abort1087, %concat.sum.len1081
  %arena.cur1088 = call ptr @dva_arena_current()
  %concat.buf1089 = call ptr @dva_arena_alloc(ptr %arena.cur1088, i64 %sum1084)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1089, ptr align 1 %concat.lhs1065, i64 %concat.lhs1054, i1 false)
  %concat.mid1090 = getelementptr i8, ptr %concat.buf1089, i64 %concat.lhs1054
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1090, ptr align 1 %concat.rhs1077, i64 %concat.rhs1067, i1 false)
  %concat.nul1091 = getelementptr i8, ptr %concat.buf1089, i64 %sum1079
  store i8 0, ptr %concat.nul1091, align 1
  %arena.cur1092 = call ptr @dva_arena_current()
  %concat.str1093 = call ptr @dva_arena_alloc(ptr %arena.cur1092, i64 16)
  %str.build.len.gep1094 = getelementptr inbounds { i64, ptr }, ptr %concat.str1093, i32 0, i32 0
  store i64 %sum1079, ptr %str.build.len.gep1094, align 8
  %str.build.data.gep1095 = getelementptr inbounds { i64, ptr }, ptr %concat.str1093, i32 0, i32 1
  store ptr %concat.buf1089, ptr %str.build.data.gep1095, align 8
  %var.load1096 = load ptr, ptr %var.es, align 8
  %concat.lhs1097 = getelementptr inbounds { i64, ptr }, ptr %concat.str1093, i32 0, i32 0
  %concat.lhs1098 = load i64, ptr %concat.lhs1097, align 8
  %concat.lhs1099 = and i64 %concat.lhs1098, 281474976710655
  %str.tag1100 = lshr i64 %concat.lhs1098, 48
  %str.immortal1101 = icmp eq i64 %str.tag1100, 0
  br i1 %str.immortal1101, label %str_ok1103, label %str_gen_check1102

str_overflow_abort1087:                           ; preds = %concat.sum.len1081
  %65 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1086

str_gen_check1102:                                ; preds = %concat.tot.len1086
  %arena.gen1105 = call ptr @dva_arena_current()
  %arena.gen1106 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1105, i32 0, i32 4
  %arena.gen1107 = load i64, ptr %arena.gen1106, align 8
  %str.tag.match1108 = icmp eq i64 %str.tag1100, %arena.gen1107
  br i1 %str.tag.match1108, label %str_ok1103, label %str_stale1104

str_ok1103:                                       ; preds = %str_stale1104, %str_gen_check1102, %concat.tot.len1086
  %concat.lhs1109 = getelementptr inbounds { i64, ptr }, ptr %concat.str1093, i32 0, i32 1
  %concat.lhs1110 = load ptr, ptr %concat.lhs1109, align 8
  %concat.rhs1111 = getelementptr inbounds { i64, ptr }, ptr %var.load1096, i32 0, i32 0
  %concat.rhs1112 = load i64, ptr %concat.rhs1111, align 8
  %concat.rhs1113 = and i64 %concat.rhs1112, 281474976710655
  %str.tag1114 = lshr i64 %concat.rhs1112, 48
  %str.immortal1115 = icmp eq i64 %str.tag1114, 0
  br i1 %str.immortal1115, label %str_ok1117, label %str_gen_check1116

str_stale1104:                                    ; preds = %str_gen_check1102
  %66 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1103

str_gen_check1116:                                ; preds = %str_ok1103
  %arena.gen1119 = call ptr @dva_arena_current()
  %arena.gen1120 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen1119, i32 0, i32 4
  %arena.gen1121 = load i64, ptr %arena.gen1120, align 8
  %str.tag.match1122 = icmp eq i64 %str.tag1114, %arena.gen1121
  br i1 %str.tag.match1122, label %str_ok1117, label %str_stale1118

str_ok1117:                                       ; preds = %str_stale1118, %str_gen_check1116, %str_ok1103
  %concat.rhs1123 = getelementptr inbounds { i64, ptr }, ptr %var.load1096, i32 0, i32 1
  %concat.rhs1124 = load ptr, ptr %concat.rhs1123, align 8
  %concat.sum.len1125 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1099, i64 %concat.rhs1113)
  %sum1126 = extractvalue { i64, i1 } %concat.sum.len1125, 0
  %ovf1127 = extractvalue { i64, i1 } %concat.sum.len1125, 1
  br i1 %ovf1127, label %str_overflow_abort1129, label %concat.sum.len1128

str_stale1118:                                    ; preds = %str_gen_check1116
  %67 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1117

concat.sum.len1128:                               ; preds = %str_overflow_abort1129, %str_ok1117
  %concat.tot.len1130 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1126, i64 1)
  %sum1131 = extractvalue { i64, i1 } %concat.tot.len1130, 0
  %ovf1132 = extractvalue { i64, i1 } %concat.tot.len1130, 1
  br i1 %ovf1132, label %str_overflow_abort1134, label %concat.tot.len1133

str_overflow_abort1129:                           ; preds = %str_ok1117
  %68 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1128

concat.tot.len1133:                               ; preds = %str_overflow_abort1134, %concat.sum.len1128
  %arena.cur1135 = call ptr @dva_arena_current()
  %concat.buf1136 = call ptr @dva_arena_alloc(ptr %arena.cur1135, i64 %sum1131)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1136, ptr align 1 %concat.lhs1110, i64 %concat.lhs1099, i1 false)
  %concat.mid1137 = getelementptr i8, ptr %concat.buf1136, i64 %concat.lhs1099
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1137, ptr align 1 %concat.rhs1124, i64 %concat.rhs1113, i1 false)
  %concat.nul1138 = getelementptr i8, ptr %concat.buf1136, i64 %sum1126
  store i8 0, ptr %concat.nul1138, align 1
  %arena.cur1139 = call ptr @dva_arena_current()
  %concat.str1140 = call ptr @dva_arena_alloc(ptr %arena.cur1139, i64 16)
  %str.build.len.gep1141 = getelementptr inbounds { i64, ptr }, ptr %concat.str1140, i32 0, i32 0
  store i64 %sum1126, ptr %str.build.len.gep1141, align 8
  %str.build.data.gep1142 = getelementptr inbounds { i64, ptr }, ptr %concat.str1140, i32 0, i32 1
  store ptr %concat.buf1136, ptr %str.build.data.gep1142, align 8
  br label %choice.exit1050

str_overflow_abort1134:                           ; preds = %concat.sum.len1128
  %69 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1133
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

choice.exit10:                                    ; preds = %choice.next, %ret.dead
  %var.load11 = load i64, ptr %"var.val'", align 8
  %var.load12 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %s.read.len13 = load i64, ptr %s.read.len, align 8
  %s.read.len14 = and i64 %s.read.len13, 281474976710655
  %str.tag15 = lshr i64 %s.read.len13, 48
  %str.immortal16 = icmp eq i64 %str.tag15, 0
  br i1 %str.immortal16, label %str_ok18, label %str_gen_check17

choice.case:                                      ; preds = %loop.exit.35
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

choice.next:                                      ; preds = %loop.exit.35
  br label %choice.exit10

ret.dead:                                         ; No predecessors!
  br label %choice.exit10

str_gen_check17:                                  ; preds = %choice.exit10
  %arena.gen20 = call ptr @dva_arena_current()
  %arena.gen21 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen20, i32 0, i32 4
  %arena.gen22 = load i64, ptr %arena.gen21, align 8
  %str.tag.match23 = icmp eq i64 %str.tag15, %arena.gen22
  br i1 %str.tag.match23, label %str_ok18, label %str_stale19

str_ok18:                                         ; preds = %str_stale19, %str_gen_check17, %choice.exit10
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
  ret ptr %rec.alloc

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

choice.exit28:                                    ; preds = %choice.next, %ret.dead
  %var.load29 = load i64, ptr %"var.val'", align 8
  %var.load30 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load30, i32 0, i32 0
  %s.read.len31 = load i64, ptr %s.read.len, align 8
  %s.read.len32 = and i64 %s.read.len31, 281474976710655
  %str.tag33 = lshr i64 %s.read.len31, 48
  %str.immortal34 = icmp eq i64 %str.tag33, 0
  br i1 %str.immortal34, label %str_ok36, label %str_gen_check35

choice.case:                                      ; preds = %loop.exit.36
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

choice.next:                                      ; preds = %loop.exit.36
  br label %choice.exit28

ret.dead:                                         ; No predecessors!
  br label %choice.exit28

str_gen_check35:                                  ; preds = %choice.exit28
  %arena.gen38 = call ptr @dva_arena_current()
  %arena.gen39 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64 }, ptr %arena.gen38, i32 0, i32 4
  %arena.gen40 = load i64, ptr %arena.gen39, align 8
  %str.tag.match41 = icmp eq i64 %str.tag33, %arena.gen40
  br i1 %str.tag.match41, label %str_ok36, label %str_stale37

str_ok36:                                         ; preds = %str_stale37, %str_gen_check35, %choice.exit28
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
  ret ptr %rec.alloc

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
  ret ptr %builder.freeze269
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
