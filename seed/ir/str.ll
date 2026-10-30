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
@str.1 = internal unnamed_addr constant [21 x i8] c"-9223372036854775808\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 20, ptr @str.1 }
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.6 = internal constant { ptr, ptr } { ptr @"str::from_int", ptr null }
@"var.str::from_int" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"str::from_u64", ptr null }
@"var.str::from_u64" = global ptr null
@str.2 = internal unnamed_addr constant [4 x i8] c"nan\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.2 }
@str.3 = internal unnamed_addr constant [4 x i8] c"inf\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.3 }
@str.4 = internal unnamed_addr constant [5 x i8] c"-inf\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.4 }
@str.5 = internal unnamed_addr constant [3 x i8] c"-0\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.5 }
@str.6 = internal unnamed_addr constant [3 x i8] c"0.\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.6 }
@str.7 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.7 }
@str.8 = internal unnamed_addr constant [2 x i8] c"e\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.8 }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"str::from_float", ptr null }
@"var.str::from_float" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"str::cmp", ptr null }
@"var.str::cmp" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"str::lt", ptr null }
@"var.str::lt" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"str::to_int", ptr null }
@"var.str::to_int" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"str::to_hex", ptr null }
@"var.str::to_hex" = global ptr null
@str.9 = internal unnamed_addr constant [4 x i8] c"0x0\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.9 }
@clo.const.13 = internal constant { ptr, ptr } { ptr @"str::hex_to_str", ptr null }
@"var.str::hex_to_str" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_str, ptr null }]

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

define internal void @__dva_global_init_str() #1 {
entry:
  store ptr @clo.const, ptr @"var.str::is_digit", align 8
  store ptr @clo.const.1, ptr @"var.str::is_alpha", align 8
  store ptr @clo.const.2, ptr @"var.str::is_alnum", align 8
  store ptr @clo.const.3, ptr @"var.str::is_ws", align 8
  store ptr @clo.const.4, ptr @"var.str::is_hex", align 8
  store ptr @clo.const.5, ptr @"var.str::from_byte", align 8
  store ptr @clo.const.6, ptr @"var.str::from_int", align 8
  store ptr @clo.const.7, ptr @"var.str::from_u64", align 8
  store ptr @clo.const.8, ptr @"var.str::from_float", align 8
  store ptr @clo.const.9, ptr @"var.str::cmp", align 8
  store ptr @clo.const.10, ptr @"var.str::lt", align 8
  store ptr @clo.const.11, ptr @"var.str::to_int", align 8
  store ptr @clo.const.12, ptr @"var.str::to_hex", align 8
  store ptr @clo.const.13, ptr @"var.str::hex_to_str", align 8
  ret void
}

define i1 @"str::is_digit"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_digit"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_digit"(i64) #1

define i1 @"str::is_alpha"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_alpha"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_alpha"(i64) #1

define i1 @"str::is_alnum"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_alnum"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_alnum"(i64) #1

define i1 @"str::is_ws"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %cmptmp = icmp eq i64 %var.load, 32
  br i1 %cmptmp, label %or.0.then, label %or.0.else

or.0.then:                                        ; preds = %entry
  br label %or.0.exit

or.0.else:                                        ; preds = %entry
  %var.load1 = load i64, ptr %var.c, align 8
  %cmptmp2 = icmp eq i64 %var.load1, 9
  br label %or.0.exit

or.0.exit:                                        ; preds = %or.0.else, %or.0.then
  %or.0.phi = phi i1 [ %cmptmp, %or.0.then ], [ %cmptmp2, %or.0.else ]
  br i1 %or.0.phi, label %or.1.then, label %or.1.else

or.1.then:                                        ; preds = %or.0.exit
  br label %or.1.exit

or.1.else:                                        ; preds = %or.0.exit
  %var.load3 = load i64, ptr %var.c, align 8
  %cmptmp4 = icmp eq i64 %var.load3, 10
  br label %or.1.exit

or.1.exit:                                        ; preds = %or.1.else, %or.1.then
  %or.1.phi = phi i1 [ %or.0.phi, %or.1.then ], [ %cmptmp4, %or.1.else ]
  br i1 %or.1.phi, label %or.2.then, label %or.2.else

or.2.then:                                        ; preds = %or.1.exit
  br label %or.2.exit

or.2.else:                                        ; preds = %or.1.exit
  %var.load5 = load i64, ptr %var.c, align 8
  %cmptmp6 = icmp eq i64 %var.load5, 13
  br label %or.2.exit

or.2.exit:                                        ; preds = %or.2.else, %or.2.then
  %or.2.phi = phi i1 [ %or.1.phi, %or.2.then ], [ %cmptmp6, %or.2.else ]
  ret i1 %or.2.phi
}

define i1 @"str::is_hex"(i64 %0) #1 {
entry:
  %var.c = alloca i64, align 8
  store i64 %0, ptr %var.c, align 8
  %var.load = load i64, ptr %var.c, align 8
  %call.res = call i1 @"ascii::is_hex"(i64 %var.load)
  ret i1 %call.res
}

declare i1 @"ascii::is_hex"(i64) #1

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
  %b.load = load ptr, ptr %var.out, align 8
  %var.load = load i64, ptr %var.b, align 8
  %b.b.ge0 = icmp sge i64 %var.load, 0
  %b.b.le255 = icmp sle i64 %var.load, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len1
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
  %b.cur.data11 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len12 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data11, i64 %b.cur.len12
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len12, 1
  %b.nul = getelementptr i8, ptr %b.cur.data11, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep13, align 8
  %var.load14 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 0
  %b.freeze.len15 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 1
  %b.freeze.data16 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len8:                                   ; preds = %str_overflow_abort9, %b.grow
  %arena.cur10 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %sum6)
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
  br label %b.new.buf.len8

b.freeze.check:                                   ; preds = %b.push_done
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data16, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data16, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data16, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len15, 1
  %arena.cur17 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data16, i64 %b.freeze.len15, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len15
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.push_done
  %b.freeze.data18 = phi ptr [ %b.freeze.data16, %b.push_done ], [ %b.freeze.data16, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur19 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len15, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data18, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load14, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  ret ptr %builder.freeze
}

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #2

define ptr @"str::from_int"(i64 %0) #1 {
entry:
  %var._88 = alloca i64, align 8
  %var._i87 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.5 = alloca i64, align 8
  %loop.idx.5 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.3 = alloca i64, align 8
  %loop.idx.3 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.v = alloca i64, align 8
  store i64 %0, ptr %var.v, align 8
  %var.load = load i64, ptr %var.v, align 8
  %val.match = icmp eq i64 %var.load, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %ret.dead
  %var.load1 = load i64, ptr %var.v, align 8
  %cmptmp = icmp eq i64 %var.load1, -9223372036854775808
  br i1 %cmptmp, label %choice.then, label %choice.exit2

choice.case:                                      ; preds = %entry
  ret ptr @str.0.struct

choice.next:                                      ; preds = %entry
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then:                                      ; preds = %choice.exit
  ret ptr @str.1.struct

choice.exit2:                                     ; preds = %ret.dead3, %choice.exit
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

ret.dead3:                                        ; No predecessors!
  br label %choice.exit2

b.buf.len4:                                       ; preds = %str_overflow_abort, %choice.exit2
  %arena.cur5 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load6 = load i64, ptr %var.v, align 8
  %cmptmp10 = icmp slt i64 %var.load6, 0
  br i1 %cmptmp10, label %choice.case8, label %choice.next9

str_overflow_abort:                               ; preds = %choice.exit2
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len4

choice.exit7:                                     ; preds = %choice.next9, %choice.case8
  %choice.res = phi i64 [ %subtmp, %choice.case8 ], [ %var.load12, %choice.next9 ]
  store i64 %choice.res, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.3, align 8
  br label %loop.header.3

choice.case8:                                     ; preds = %b.buf.len4
  %var.load11 = load i64, ptr %var.v, align 8
  %subtmp = sub i64 0, %var.load11
  br label %choice.exit7

choice.next9:                                     ; preds = %b.buf.len4
  %var.load12 = load i64, ptr %var.v, align 8
  br label %choice.exit7

loop.header.3:                                    ; preds = %loop.latch.3, %choice.exit7
  %counter.load = load i64, ptr %loop.idx.3, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.3, label %loop.exit.nat.3

loop.body.3:                                      ; preds = %loop.header.3
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.3, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load13 = load i64, ptr %"var.n'", align 8
  %cmptmp17 = icmp sgt i64 %var.load13, 0
  br i1 %cmptmp17, label %choice.case15, label %choice.next16

loop.exit.nat.3:                                  ; preds = %loop.header.3
  br label %loop.exit.3

loop.latch.3:                                     ; preds = %choice.exit14
  %step.val = load i64, ptr %loop.step.3, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.3, align 8
  br label %loop.header.3

loop.exit.3:                                      ; preds = %choice.next16, %loop.exit.nat.3
  %var.load37 = load i64, ptr %var.v, align 8
  %cmptmp38 = icmp slt i64 %var.load37, 0
  br i1 %cmptmp38, label %choice.then39, label %choice.exit40

choice.exit14:                                    ; preds = %div.ok35
  br label %loop.latch.3

choice.case15:                                    ; preds = %loop.body.3
  %b.load = load ptr, ptr %var.b, align 8
  %var.load18 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next16:                                    ; preds = %loop.body.3
  br label %loop.exit.3

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case15
  %div.is.min = icmp eq i64 %var.load18, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.case15
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %modtmp = srem i64 %var.load18, 10
  %coerce.trunc = trunc i64 %modtmp to i32
  %addtmp = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

b.byte_ok:                                        ; preds = %b.byte_err, %div.ok
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len19 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap20 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data21 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len19, %b.cap20
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.ok
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
  %divtmp = sdiv i64 %var.load30, 10
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit14

div.ovf_abort36:                                  ; preds = %div.not_zero31
  %7 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok35

choice.then39:                                    ; preds = %loop.exit.3
  %b.load41 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 0
  %b.rn.cur.len42 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len42, i64 1)
  %sum43 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf44 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf44, label %str_overflow_abort46, label %b.rn.new.len45

choice.exit40:                                    ; preds = %br.done.4, %loop.exit.3
  %var.load61 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 0
  %b.freeze.len62 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 1
  %b.freeze.data63 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len45:                                   ; preds = %str_overflow_abort46, %choice.then39
  %b.cap47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 2
  %b.cap48 = load i64, ptr %b.cap47, align 8
  %b.need.grow = icmp slt i64 %b.cap48, %sum43
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort46:                             ; preds = %choice.then39
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len45

b.grow2:                                          ; preds = %b.rn.new.len45
  %b.cap249 = mul i64 %b.cap48, 2
  %b.cap.small50 = icmp slt i64 %b.cap249, 16
  %b.cap.grow = select i1 %b.cap.small50, i64 16, i64 %b.cap249
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum43
  %b.new.cap51 = select i1 %b.cap.need, i64 %sum43, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 0
  %b.cur.len252 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 1
  %b.cur.data253 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap51, i64 1)
  %sum54 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf55 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf55, label %str_overflow_abort57, label %b.new.buf.len256

b.nogrow2:                                        ; preds = %b.rn.new.len45
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len256
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 1
  %b.rn.data59 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data59, i64 %b.rn.cur.len42
  br i1 true, label %br.b1.4, label %br.c2.4

b.new.buf.len256:                                 ; preds = %str_overflow_abort57, %b.grow2
  %arena.cur58 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data253, i64 %b.cur.len252, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len252
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 2
  store i64 %b.new.cap51, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort57:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len256

br.b1.4:                                          ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.4

br.c2.4:                                          ; preds = %b.grow_done
  br i1 true, label %br.b2.4, label %br.c3.4

br.b2.4:                                          ; preds = %br.c2.4
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.4

br.c3.4:                                          ; preds = %br.c2.4
  br i1 true, label %br.b3.4, label %br.b4.4

br.b3.4:                                          ; preds = %br.c3.4
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.4

br.b4.4:                                          ; preds = %br.c3.4
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.4

br.done.4:                                        ; preds = %br.b4.4, %br.b3.4, %br.b2.4, %br.b1.4
  %br.nul = getelementptr i8, ptr %b.rn.data59, i64 %sum43
  store i8 0, ptr %br.nul, align 1
  %b.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load41, i32 0, i32 0
  store i64 %sum43, ptr %b.len.gep60, align 8
  br label %choice.exit40

b.freeze.check:                                   ; preds = %choice.exit40
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data63, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data63, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data63, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len62, 1
  %arena.cur64 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur64, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data63, i64 %b.freeze.len62, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len62
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit40
  %b.freeze.data65 = phi ptr [ %b.freeze.data63, %choice.exit40 ], [ %b.freeze.data63, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur66 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len62, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data65, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load61, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur67 = call ptr @dva_arena_current()
  %builder.new68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 24)
  %b.data.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new68, i32 0, i32 1
  %b.len.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new68, i32 0, i32 0
  %b.cap.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new68, i32 0, i32 2
  %b.buf.len72 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum73 = extractvalue { i64, i1 } %b.buf.len72, 0
  %ovf74 = extractvalue { i64, i1 } %b.buf.len72, 1
  br i1 %ovf74, label %str_overflow_abort76, label %b.buf.len75

b.buf.len75:                                      ; preds = %str_overflow_abort76, %b.freeze.done
  %arena.cur77 = call ptr @dva_arena_current()
  %b.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum73)
  %b.nul079 = getelementptr i8, ptr %b.buf78, i64 0
  store i8 0, ptr %b.nul079, align 1
  store i64 0, ptr %b.len.gep70, align 8
  store ptr %b.buf78, ptr %b.data.gep69, align 8
  store i64 32, ptr %b.cap.gep71, align 8
  store ptr %builder.new68, ptr %var.out, align 8
  %var.load80 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load80, i32 0, i32 0
  %str.len.query81 = load i64, ptr %str.len.query, align 8
  %str.len.query82 = and i64 %str.len.query81, 281474976710655
  %str.tag = lshr i64 %str.len.query81, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort76:                             ; preds = %b.freeze.done
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len75

str_gen_check:                                    ; preds = %b.buf.len75
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len75
  store i64 0, ptr %loop.idx.5, align 8
  br label %loop.header.5

str_stale:                                        ; preds = %str_gen_check
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.5:                                    ; preds = %loop.latch.5, %str_ok
  %counter.load84 = load i64, ptr %loop.idx.5, align 8
  %loop.cond85 = icmp slt i64 %counter.load84, %str.len.query82
  br i1 %loop.cond85, label %loop.body.5, label %loop.exit.nat.5

loop.body.5:                                      ; preds = %loop.header.5
  %loop.rel.i86 = sub i64 %counter.load84, 0
  store i64 1, ptr %loop.step.5, align 8
  store i64 %loop.rel.i86, ptr %var._i87, align 8
  store i64 %counter.load84, ptr %var._88, align 8
  store i64 %counter.load84, ptr %var.i, align 8
  %b.load89 = load ptr, ptr %var.out, align 8
  %var.load90 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 0
  %s.read.len91 = load i64, ptr %s.read.len, align 8
  %s.read.len92 = and i64 %s.read.len91, 281474976710655
  %str.tag93 = lshr i64 %s.read.len91, 48
  %str.immortal94 = icmp eq i64 %str.tag93, 0
  br i1 %str.immortal94, label %str_ok96, label %str_gen_check95

loop.exit.nat.5:                                  ; preds = %loop.header.5
  br label %loop.exit.5

loop.latch.5:                                     ; preds = %b.push_done130
  %step.val152 = load i64, ptr %loop.step.5, align 8
  %loop.next153 = add i64 %counter.load84, %step.val152
  store i64 %loop.next153, ptr %loop.idx.5, align 8
  br label %loop.header.5

loop.exit.5:                                      ; preds = %loop.exit.nat.5
  %var.load154 = load ptr, ptr %var.out, align 8
  %b.freeze.len155 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load154, i32 0, i32 0
  %b.freeze.len156 = load i64, ptr %b.freeze.len155, align 8
  %b.freeze.data157 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load154, i32 0, i32 1
  %b.freeze.data158 = load ptr, ptr %b.freeze.data157, align 8
  %b.freeze.arena159 = call ptr @dva_arena_current()
  %b.freeze.nc.gep160 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena159, i32 0, i32 1
  %b.freeze.nc161 = load i64, ptr %b.freeze.nc.gep160, align 8
  %b.freeze.has.chunk162 = icmp sgt i64 %b.freeze.nc161, 0
  br i1 %b.freeze.has.chunk162, label %b.freeze.check163, label %b.freeze.done165

str_gen_check95:                                  ; preds = %loop.body.5
  %arena.cur98 = call ptr @dva_arena_current()
  %tag.valid99 = call i1 @dva_arena_validate_tag(ptr %arena.cur98, i64 %str.tag93)
  br i1 %tag.valid99, label %str_ok96, label %str_stale97

str_ok96:                                         ; preds = %str_stale97, %str_gen_check95, %loop.body.5
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 1
  %s.read.data100 = load ptr, ptr %s.read.data, align 8
  %var.load101 = load ptr, ptr %var.s, align 8
  %str.len.query102 = getelementptr inbounds { i64, ptr }, ptr %var.load101, i32 0, i32 0
  %str.len.query103 = load i64, ptr %str.len.query102, align 8
  %str.len.query104 = and i64 %str.len.query103, 281474976710655
  %str.tag105 = lshr i64 %str.len.query103, 48
  %str.immortal106 = icmp eq i64 %str.tag105, 0
  br i1 %str.immortal106, label %str_ok108, label %str_gen_check107

str_stale97:                                      ; preds = %str_gen_check95
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok96

str_gen_check107:                                 ; preds = %str_ok96
  %arena.cur110 = call ptr @dva_arena_current()
  %tag.valid111 = call i1 @dva_arena_validate_tag(ptr %arena.cur110, i64 %str.tag105)
  br i1 %tag.valid111, label %str_ok108, label %str_stale109

str_ok108:                                        ; preds = %str_stale109, %str_gen_check107, %str_ok96
  %subtmp112 = sub i64 %str.len.query104, 1
  %var.load113 = load i64, ptr %var.i, align 8
  %subtmp114 = sub i64 %subtmp112, %var.load113
  %idx.neg = icmp slt i64 %subtmp114, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale109:                                     ; preds = %str_gen_check107
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok108

idx_big_check:                                    ; preds = %str_ok108
  %idx.big = icmp sge i64 %subtmp114, %s.read.len92
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data100, i64 %subtmp114
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0115 = icmp sge i64 %s.byte.val, 0
  %b.b.le255116 = icmp sle i64 %s.byte.val, 255
  %b.byte.range117 = and i1 %b.b.ge0115, %b.b.le255116
  br i1 %b.byte.range117, label %b.byte_ok118, label %b.byte_err119

idx_oob:                                          ; preds = %idx_big_check, %str_ok108
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

b.byte_ok118:                                     ; preds = %b.byte_err119, %idx_ok
  %b.byte.i8120 = trunc i64 %s.byte.val to i8
  %b.len121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 0
  %b.len122 = load i64, ptr %b.len121, align 8
  %b.cap123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 2
  %b.cap124 = load i64, ptr %b.cap123, align 8
  %b.data125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 1
  %b.data126 = load ptr, ptr %b.data125, align 8
  %b.needs.grow127 = icmp eq i64 %b.len122, %b.cap124
  br i1 %b.needs.grow127, label %b.grow128, label %b.nogrow129

b.byte_err119:                                    ; preds = %idx_ok
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok118

b.grow128:                                        ; preds = %b.byte_ok118
  %b.cap2131 = mul i64 %b.cap124, 2
  %b.cap.small132 = icmp slt i64 %b.cap2131, 16
  %b.new.cap133 = select i1 %b.cap.small132, i64 16, i64 %b.cap2131
  %b.new.buf.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap133, i64 1)
  %sum135 = extractvalue { i64, i1 } %b.new.buf.len134, 0
  %ovf136 = extractvalue { i64, i1 } %b.new.buf.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %b.new.buf.len137

b.nogrow129:                                      ; preds = %b.byte_ok118
  br label %b.push_done130

b.push_done130:                                   ; preds = %b.nogrow129, %b.new.buf.len137
  %b.cur.data144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 1
  %b.cur.data145 = load ptr, ptr %b.cur.data144, align 8
  %b.cur.len146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 0
  %b.cur.len147 = load i64, ptr %b.cur.len146, align 8
  %b.byte.gep148 = getelementptr i8, ptr %b.cur.data145, i64 %b.cur.len147
  store i8 %b.byte.i8120, ptr %b.byte.gep148, align 1
  %b.next.len149 = add i64 %b.cur.len147, 1
  %b.nul150 = getelementptr i8, ptr %b.cur.data145, i64 %b.next.len149
  store i8 0, ptr %b.nul150, align 1
  %b.len.gep151 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 0
  store i64 %b.next.len149, ptr %b.len.gep151, align 8
  br label %loop.latch.5

b.new.buf.len137:                                 ; preds = %str_overflow_abort138, %b.grow128
  %arena.cur139 = call ptr @dva_arena_current()
  %b.new.buf140 = call ptr @dva_arena_alloc(ptr %arena.cur139, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf140, ptr align 1 %b.data126, i64 %b.len122, i1 false)
  %b.grow.nul141 = getelementptr i8, ptr %b.new.buf140, i64 %b.len122
  store i8 0, ptr %b.grow.nul141, align 1
  %b.new.data.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 1
  store ptr %b.new.buf140, ptr %b.new.data.gep142, align 8
  %b.new.cap.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load89, i32 0, i32 2
  store i64 %b.new.cap133, ptr %b.new.cap.gep143, align 8
  br label %b.push_done130

str_overflow_abort138:                            ; preds = %b.grow128
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len137

b.freeze.check163:                                ; preds = %loop.exit.5
  %b.freeze.last.idx166 = sub i64 %b.freeze.nc161, 1
  %b.freeze.chunks.gep167 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena159, i32 0, i32 3
  %b.freeze.chunk.slot168 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep167, i64 0, i64 %b.freeze.last.idx166
  %b.freeze.last.chunk169 = load ptr, ptr %b.freeze.chunk.slot168, align 8
  %b.freeze.off.gep170 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena159, i32 0, i32 2
  %b.freeze.off171 = load i64, ptr %b.freeze.off.gep170, align 8
  %b.freeze.bump172 = getelementptr i8, ptr %b.freeze.last.chunk169, i64 %b.freeze.off171
  %b.freeze.cap.gep173 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena159, i32 0, i32 0
  %b.freeze.cap174 = load i64, ptr %b.freeze.cap.gep173, align 8
  %b.freeze.chunk.end175 = getelementptr i8, ptr %b.freeze.last.chunk169, i64 %b.freeze.cap174
  %b.freeze.ge.chunk176 = icmp uge ptr %b.freeze.data158, %b.freeze.last.chunk169
  %b.freeze.lt.end177 = icmp ult ptr %b.freeze.data158, %b.freeze.chunk.end175
  %b.freeze.in.chunk178 = and i1 %b.freeze.ge.chunk176, %b.freeze.lt.end177
  %b.freeze.ge.bump179 = icmp uge ptr %b.freeze.data158, %b.freeze.bump172
  %b.freeze.reaped180 = and i1 %b.freeze.in.chunk178, %b.freeze.ge.bump179
  br i1 %b.freeze.reaped180, label %b.freeze.copy164, label %b.freeze.done165

b.freeze.copy164:                                 ; preds = %b.freeze.check163
  %b.freeze.alen181 = add i64 %b.freeze.len156, 1
  %arena.cur182 = call ptr @dva_arena_current()
  %b.freeze.fresh183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 %b.freeze.alen181)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh183, ptr align 1 %b.freeze.data158, i64 %b.freeze.len156, i1 false)
  %b.freeze.nul184 = getelementptr i8, ptr %b.freeze.fresh183, i64 %b.freeze.len156
  store i8 0, ptr %b.freeze.nul184, align 1
  br label %b.freeze.done165

b.freeze.done165:                                 ; preds = %b.freeze.copy164, %b.freeze.check163, %loop.exit.5
  %b.freeze.data185 = phi ptr [ %b.freeze.data158, %loop.exit.5 ], [ %b.freeze.data158, %b.freeze.check163 ], [ %b.freeze.fresh183, %b.freeze.copy164 ]
  %arena.cur186 = call ptr @dva_arena_current()
  %builder.freeze187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 16)
  %str.build.len.gep188 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze187, i32 0, i32 0
  store i64 %b.freeze.len156, ptr %str.build.len.gep188, align 8
  %str.build.data.gep189 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze187, i32 0, i32 1
  store ptr %b.freeze.data185, ptr %str.build.data.gep189, align 8
  %b.freeze.rst.len190 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load154, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len190, align 8
  %b.freeze.rst.data191 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load154, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data191, align 8
  %b.freeze.rst.cap192 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load154, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap192, align 8
  ret ptr %builder.freeze187
}

define ptr @"str::from_u64"(i64 %0) #1 {
entry:
  %var._50 = alloca i64, align 8
  %var._i49 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.7 = alloca i64, align 8
  %loop.idx.7 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.6 = alloca i64, align 8
  %loop.idx.6 = alloca i64, align 8
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
  store i64 %var.load3, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.6, align 8
  br label %loop.header.6

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

loop.header.6:                                    ; preds = %loop.latch.6, %b.buf.len1
  %counter.load = load i64, ptr %loop.idx.6, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.6, label %loop.exit.nat.6

loop.body.6:                                      ; preds = %loop.header.6
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.6, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.n'", align 8
  %cmptmp = icmp ugt i64 %var.load4, 0
  br i1 %cmptmp, label %choice.case6, label %choice.next7

loop.exit.nat.6:                                  ; preds = %loop.header.6
  br label %loop.exit.6

loop.latch.6:                                     ; preds = %choice.exit5
  %step.val = load i64, ptr %loop.step.6, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.6, align 8
  br label %loop.header.6

loop.exit.6:                                      ; preds = %choice.next7, %loop.exit.nat.6
  %var.load23 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 0
  %b.freeze.len24 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 1
  %b.freeze.data25 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit5:                                     ; preds = %div.not_zero21
  br label %loop.latch.6

choice.case6:                                     ; preds = %loop.body.6
  %b.load = load ptr, ptr %var.b, align 8
  %var.load8 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next7:                                     ; preds = %loop.body.6
  br label %loop.exit.6

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case6
  %modtmp = urem i64 %var.load8, 10
  %coerce.trunc = trunc i64 %modtmp to i32
  %addtmp = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.zero_abort:                                   ; preds = %choice.case6
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

b.byte_ok:                                        ; preds = %b.byte_err, %div.not_zero
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len9 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap10 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data11 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len9, %b.cap10
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap10, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum12 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf13 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf13, label %str_overflow_abort15, label %b.new.buf.len14

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len14
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data17 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len18 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data17, i64 %b.cur.len18
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len18, 1
  %b.nul = getelementptr i8, ptr %b.cur.data17, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep19, align 8
  %var.load20 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort22, label %div.not_zero21

b.new.buf.len14:                                  ; preds = %str_overflow_abort15, %b.grow
  %arena.cur16 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 %sum12)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data11, i64 %b.len9, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len9
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort15:                             ; preds = %b.grow
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len14

div.not_zero21:                                   ; preds = %div.zero_abort22, %b.push_done
  %divtmp = udiv i64 %var.load20, 10
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit5

div.zero_abort22:                                 ; preds = %b.push_done
  %5 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero21

b.freeze.check:                                   ; preds = %loop.exit.6
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data25, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data25, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data25, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len24, 1
  %arena.cur26 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data25, i64 %b.freeze.len24, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len24
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.6
  %b.freeze.data27 = phi ptr [ %b.freeze.data25, %loop.exit.6 ], [ %b.freeze.data25, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur28 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len24, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data27, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load23, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur29 = call ptr @dva_arena_current()
  %builder.new30 = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 24)
  %b.data.gep31 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new30, i32 0, i32 1
  %b.len.gep32 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new30, i32 0, i32 0
  %b.cap.gep33 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new30, i32 0, i32 2
  %b.buf.len34 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum35 = extractvalue { i64, i1 } %b.buf.len34, 0
  %ovf36 = extractvalue { i64, i1 } %b.buf.len34, 1
  br i1 %ovf36, label %str_overflow_abort38, label %b.buf.len37

b.buf.len37:                                      ; preds = %str_overflow_abort38, %b.freeze.done
  %arena.cur39 = call ptr @dva_arena_current()
  %b.buf40 = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 %sum35)
  %b.nul041 = getelementptr i8, ptr %b.buf40, i64 0
  store i8 0, ptr %b.nul041, align 1
  store i64 0, ptr %b.len.gep32, align 8
  store ptr %b.buf40, ptr %b.data.gep31, align 8
  store i64 32, ptr %b.cap.gep33, align 8
  store ptr %builder.new30, ptr %var.out, align 8
  %var.load42 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load42, i32 0, i32 0
  %str.len.query43 = load i64, ptr %str.len.query, align 8
  %str.len.query44 = and i64 %str.len.query43, 281474976710655
  %str.tag = lshr i64 %str.len.query43, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort38:                             ; preds = %b.freeze.done
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len37

str_gen_check:                                    ; preds = %b.buf.len37
  %arena.cur45 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur45, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len37
  store i64 0, ptr %loop.idx.7, align 8
  br label %loop.header.7

str_stale:                                        ; preds = %str_gen_check
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.7:                                    ; preds = %loop.latch.7, %str_ok
  %counter.load46 = load i64, ptr %loop.idx.7, align 8
  %loop.cond47 = icmp slt i64 %counter.load46, %str.len.query44
  br i1 %loop.cond47, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i48 = sub i64 %counter.load46, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i48, ptr %var._i49, align 8
  store i64 %counter.load46, ptr %var._50, align 8
  store i64 %counter.load46, ptr %var.i, align 8
  %b.load51 = load ptr, ptr %var.out, align 8
  %var.load52 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 0
  %s.read.len53 = load i64, ptr %s.read.len, align 8
  %s.read.len54 = and i64 %s.read.len53, 281474976710655
  %str.tag55 = lshr i64 %s.read.len53, 48
  %str.immortal56 = icmp eq i64 %str.tag55, 0
  br i1 %str.immortal56, label %str_ok58, label %str_gen_check57

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %b.push_done91
  %step.val113 = load i64, ptr %loop.step.7, align 8
  %loop.next114 = add i64 %counter.load46, %step.val113
  store i64 %loop.next114, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  %var.load115 = load ptr, ptr %var.out, align 8
  %b.freeze.len116 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 0
  %b.freeze.len117 = load i64, ptr %b.freeze.len116, align 8
  %b.freeze.data118 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 1
  %b.freeze.data119 = load ptr, ptr %b.freeze.data118, align 8
  %b.freeze.arena120 = call ptr @dva_arena_current()
  %b.freeze.nc.gep121 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena120, i32 0, i32 1
  %b.freeze.nc122 = load i64, ptr %b.freeze.nc.gep121, align 8
  %b.freeze.has.chunk123 = icmp sgt i64 %b.freeze.nc122, 0
  br i1 %b.freeze.has.chunk123, label %b.freeze.check124, label %b.freeze.done126

str_gen_check57:                                  ; preds = %loop.body.7
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag55)
  br i1 %tag.valid61, label %str_ok58, label %str_stale59

str_ok58:                                         ; preds = %str_stale59, %str_gen_check57, %loop.body.7
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load52, i32 0, i32 1
  %s.read.data62 = load ptr, ptr %s.read.data, align 8
  %var.load63 = load ptr, ptr %var.s, align 8
  %str.len.query64 = getelementptr inbounds { i64, ptr }, ptr %var.load63, i32 0, i32 0
  %str.len.query65 = load i64, ptr %str.len.query64, align 8
  %str.len.query66 = and i64 %str.len.query65, 281474976710655
  %str.tag67 = lshr i64 %str.len.query65, 48
  %str.immortal68 = icmp eq i64 %str.tag67, 0
  br i1 %str.immortal68, label %str_ok70, label %str_gen_check69

str_stale59:                                      ; preds = %str_gen_check57
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok58

str_gen_check69:                                  ; preds = %str_ok58
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %str.tag67)
  br i1 %tag.valid73, label %str_ok70, label %str_stale71

str_ok70:                                         ; preds = %str_stale71, %str_gen_check69, %str_ok58
  %subtmp = sub i64 %str.len.query66, 1
  %var.load74 = load i64, ptr %var.i, align 8
  %subtmp75 = sub i64 %subtmp, %var.load74
  %idx.neg = icmp slt i64 %subtmp75, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale71:                                      ; preds = %str_gen_check69
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok70

idx_big_check:                                    ; preds = %str_ok70
  %idx.big = icmp sge i64 %subtmp75, %s.read.len54
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data62, i64 %subtmp75
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge076 = icmp sge i64 %s.byte.val, 0
  %b.b.le25577 = icmp sle i64 %s.byte.val, 255
  %b.byte.range78 = and i1 %b.b.ge076, %b.b.le25577
  br i1 %b.byte.range78, label %b.byte_ok79, label %b.byte_err80

idx_oob:                                          ; preds = %idx_big_check, %str_ok70
  %10 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

b.byte_ok79:                                      ; preds = %b.byte_err80, %idx_ok
  %b.byte.i881 = trunc i64 %s.byte.val to i8
  %b.len82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.len83 = load i64, ptr %b.len82, align 8
  %b.cap84 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  %b.cap85 = load i64, ptr %b.cap84, align 8
  %b.data86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.data87 = load ptr, ptr %b.data86, align 8
  %b.needs.grow88 = icmp eq i64 %b.len83, %b.cap85
  br i1 %b.needs.grow88, label %b.grow89, label %b.nogrow90

b.byte_err80:                                     ; preds = %idx_ok
  %11 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok79

b.grow89:                                         ; preds = %b.byte_ok79
  %b.cap292 = mul i64 %b.cap85, 2
  %b.cap.small93 = icmp slt i64 %b.cap292, 16
  %b.new.cap94 = select i1 %b.cap.small93, i64 16, i64 %b.cap292
  %b.new.buf.len95 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap94, i64 1)
  %sum96 = extractvalue { i64, i1 } %b.new.buf.len95, 0
  %ovf97 = extractvalue { i64, i1 } %b.new.buf.len95, 1
  br i1 %ovf97, label %str_overflow_abort99, label %b.new.buf.len98

b.nogrow90:                                       ; preds = %b.byte_ok79
  br label %b.push_done91

b.push_done91:                                    ; preds = %b.nogrow90, %b.new.buf.len98
  %b.cur.data105 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.cur.data106 = load ptr, ptr %b.cur.data105, align 8
  %b.cur.len107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.cur.len108 = load i64, ptr %b.cur.len107, align 8
  %b.byte.gep109 = getelementptr i8, ptr %b.cur.data106, i64 %b.cur.len108
  store i8 %b.byte.i881, ptr %b.byte.gep109, align 1
  %b.next.len110 = add i64 %b.cur.len108, 1
  %b.nul111 = getelementptr i8, ptr %b.cur.data106, i64 %b.next.len110
  store i8 0, ptr %b.nul111, align 1
  %b.len.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  store i64 %b.next.len110, ptr %b.len.gep112, align 8
  br label %loop.latch.7

b.new.buf.len98:                                  ; preds = %str_overflow_abort99, %b.grow89
  %arena.cur100 = call ptr @dva_arena_current()
  %b.new.buf101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 %sum96)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf101, ptr align 1 %b.data87, i64 %b.len83, i1 false)
  %b.grow.nul102 = getelementptr i8, ptr %b.new.buf101, i64 %b.len83
  store i8 0, ptr %b.grow.nul102, align 1
  %b.new.data.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  store ptr %b.new.buf101, ptr %b.new.data.gep103, align 8
  %b.new.cap.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  store i64 %b.new.cap94, ptr %b.new.cap.gep104, align 8
  br label %b.push_done91

str_overflow_abort99:                             ; preds = %b.grow89
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len98

b.freeze.check124:                                ; preds = %loop.exit.7
  %b.freeze.last.idx127 = sub i64 %b.freeze.nc122, 1
  %b.freeze.chunks.gep128 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena120, i32 0, i32 3
  %b.freeze.chunk.slot129 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep128, i64 0, i64 %b.freeze.last.idx127
  %b.freeze.last.chunk130 = load ptr, ptr %b.freeze.chunk.slot129, align 8
  %b.freeze.off.gep131 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena120, i32 0, i32 2
  %b.freeze.off132 = load i64, ptr %b.freeze.off.gep131, align 8
  %b.freeze.bump133 = getelementptr i8, ptr %b.freeze.last.chunk130, i64 %b.freeze.off132
  %b.freeze.cap.gep134 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena120, i32 0, i32 0
  %b.freeze.cap135 = load i64, ptr %b.freeze.cap.gep134, align 8
  %b.freeze.chunk.end136 = getelementptr i8, ptr %b.freeze.last.chunk130, i64 %b.freeze.cap135
  %b.freeze.ge.chunk137 = icmp uge ptr %b.freeze.data119, %b.freeze.last.chunk130
  %b.freeze.lt.end138 = icmp ult ptr %b.freeze.data119, %b.freeze.chunk.end136
  %b.freeze.in.chunk139 = and i1 %b.freeze.ge.chunk137, %b.freeze.lt.end138
  %b.freeze.ge.bump140 = icmp uge ptr %b.freeze.data119, %b.freeze.bump133
  %b.freeze.reaped141 = and i1 %b.freeze.in.chunk139, %b.freeze.ge.bump140
  br i1 %b.freeze.reaped141, label %b.freeze.copy125, label %b.freeze.done126

b.freeze.copy125:                                 ; preds = %b.freeze.check124
  %b.freeze.alen142 = add i64 %b.freeze.len117, 1
  %arena.cur143 = call ptr @dva_arena_current()
  %b.freeze.fresh144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 %b.freeze.alen142)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh144, ptr align 1 %b.freeze.data119, i64 %b.freeze.len117, i1 false)
  %b.freeze.nul145 = getelementptr i8, ptr %b.freeze.fresh144, i64 %b.freeze.len117
  store i8 0, ptr %b.freeze.nul145, align 1
  br label %b.freeze.done126

b.freeze.done126:                                 ; preds = %b.freeze.copy125, %b.freeze.check124, %loop.exit.7
  %b.freeze.data146 = phi ptr [ %b.freeze.data119, %loop.exit.7 ], [ %b.freeze.data119, %b.freeze.check124 ], [ %b.freeze.fresh144, %b.freeze.copy125 ]
  %arena.cur147 = call ptr @dva_arena_current()
  %builder.freeze148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 16)
  %str.build.len.gep149 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze148, i32 0, i32 0
  store i64 %b.freeze.len117, ptr %str.build.len.gep149, align 8
  %str.build.data.gep150 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze148, i32 0, i32 1
  store ptr %b.freeze.data146, ptr %str.build.data.gep150, align 8
  %b.freeze.rst.len151 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len151, align 8
  %b.freeze.rst.data152 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data152, align 8
  %b.freeze.rst.cap153 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap153, align 8
  ret ptr %builder.freeze148
}

define ptr @"str::from_float"(double %0) #1 {
entry:
  %var.es = alloca ptr, align 8
  %var.mant = alloca ptr, align 8
  %var._848 = alloca i64, align 8
  %var._i847 = alloca i64, align 8
  %loop.step.23 = alloca i64, align 8
  %loop.idx.23 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var._800 = alloca i64, align 8
  %var._i799 = alloca i64, align 8
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
  %"var.dot_pos'" = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._684 = alloca i64, align 8
  %var._i683 = alloca i64, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
  %var._633 = alloca i64, align 8
  %var._i632 = alloca i64, align 8
  %loop.step.19 = alloca i64, align 8
  %loop.idx.19 = alloca i64, align 8
  %var._522 = alloca i64, align 8
  %var._i521 = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %var._406 = alloca i64, align 8
  %var._i405 = alloca i64, align 8
  %loop.step.16 = alloca i64, align 8
  %loop.idx.16 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._331 = alloca i64, align 8
  %var._i330 = alloca i64, align 8
  %loop.step.15 = alloca i64, align 8
  %loop.idx.15 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.ms = alloca ptr, align 8
  %var._139 = alloca i64, align 8
  %var._i138 = alloca i64, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %"var.m'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.d = alloca i64, align 8
  %var._76 = alloca i64, align 8
  %var._i75 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.ds = alloca ptr, align 8
  %"var.f'" = alloca double, align 8
  %var.ip = alloca i64, align 8
  %var._44 = alloca i64, align 8
  %var._i43 = alloca i64, align 8
  %loop.step.9 = alloca i64, align 8
  %loop.idx.9 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.8 = alloca i64, align 8
  %loop.idx.8 = alloca i64, align 8
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
  ret ptr @str.2.struct

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load2 = load double, ptr %var.v, align 8
  %var.load3 = load double, ptr @"var.const::max_f64", align 8
  %fcmptmp4 = fcmp ogt double %var.load2, %var.load3
  br i1 %fcmptmp4, label %choice.then5, label %choice.exit6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then5:                                     ; preds = %choice.exit
  ret ptr @str.3.struct

choice.exit6:                                     ; preds = %ret.dead7, %choice.exit
  %var.load8 = load double, ptr %var.v, align 8
  %var.load9 = load double, ptr @"var.const::max_f64", align 8
  %fnegtmp = fneg double %var.load9
  %fcmptmp10 = fcmp olt double %var.load8, %fnegtmp
  br i1 %fcmptmp10, label %choice.then11, label %choice.exit12

ret.dead7:                                        ; No predecessors!
  br label %choice.exit6

choice.then11:                                    ; preds = %choice.exit6
  ret ptr @str.4.struct

choice.exit12:                                    ; preds = %ret.dead13, %choice.exit6
  %var.load14 = load double, ptr %var.v, align 8
  %fcmptmp15 = fcmp olt double %var.load14, 0.000000e+00
  store i1 %fcmptmp15, ptr %var.neg, align 1
  %var.load16 = load i1, ptr %var.neg, align 1
  br i1 %var.load16, label %choice.then17, label %choice.else

ret.dead13:                                       ; No predecessors!
  br label %choice.exit12

choice.then17:                                    ; preds = %choice.exit12
  %var.load19 = load double, ptr %var.v, align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load19
  br label %choice.exit18

choice.else:                                      ; preds = %choice.exit12
  %var.load20 = load double, ptr %var.v, align 8
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else, %choice.then17
  %choice.res = phi double [ %fsubtmp, %choice.then17 ], [ %var.load20, %choice.else ]
  store double %choice.res, ptr %var.a, align 8
  %var.load21 = load double, ptr %var.a, align 8
  %fcmptmp22 = fcmp oeq double %var.load21, 0.000000e+00
  br i1 %fcmptmp22, label %choice.then23, label %choice.exit24

choice.then23:                                    ; preds = %choice.exit18
  %var.load25 = load double, ptr %var.v, align 8
  %fdivtmp = fdiv double 1.000000e+00, %var.load25
  %fcmptmp26 = fcmp olt double %fdivtmp, 0.000000e+00
  br i1 %fcmptmp26, label %choice.then27, label %choice.else28

choice.exit24:                                    ; preds = %ret.dead31, %choice.exit18
  %var.load32 = load double, ptr %var.a, align 8
  store double %var.load32, ptr %"var.x'", align 8
  store i64 0, ptr %"var.e'", align 8
  store i64 0, ptr %loop.idx.8, align 8
  br label %loop.header.8

choice.then27:                                    ; preds = %choice.then23
  br label %choice.exit29

choice.else28:                                    ; preds = %choice.then23
  br label %choice.exit29

choice.exit29:                                    ; preds = %choice.else28, %choice.then27
  %choice.res30 = phi ptr [ @str.5.struct, %choice.then27 ], [ @str.0.struct, %choice.else28 ]
  ret ptr %choice.res30

ret.dead31:                                       ; No predecessors!
  br label %choice.exit24

loop.header.8:                                    ; preds = %loop.latch.8, %choice.exit24
  %counter.load = load i64, ptr %loop.idx.8, align 8
  br label %loop.body.8

loop.body.8:                                      ; preds = %loop.header.8
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.8, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load33 = load double, ptr %"var.x'", align 8
  %fcmptmp34 = fcmp oge double %var.load33, 1.000000e+01
  br i1 %fcmptmp34, label %choice.then35, label %choice.else36

loop.exit.nat.8:                                  ; No predecessors!
  br label %loop.exit.8

loop.latch.8:                                     ; preds = %choice.exit37
  %step.val = load i64, ptr %loop.step.8, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.exit.8:                                      ; preds = %choice.else36, %loop.exit.nat.8
  store i64 0, ptr %loop.idx.9, align 8
  br label %loop.header.9

choice.then35:                                    ; preds = %loop.body.8
  %var.load38 = load double, ptr %"var.x'", align 8
  %fdivtmp39 = fdiv double %var.load38, 1.000000e+01
  store double %fdivtmp39, ptr %"var.x'", align 8
  %var.load40 = load i64, ptr %"var.e'", align 8
  %addtmp = add i64 %var.load40, 1
  store i64 %addtmp, ptr %"var.e'", align 8
  br label %choice.exit37

choice.else36:                                    ; preds = %loop.body.8
  br label %loop.exit.8

choice.exit37:                                    ; preds = %choice.then35
  br label %loop.latch.8

loop.header.9:                                    ; preds = %loop.latch.9, %loop.exit.8
  %counter.load41 = load i64, ptr %loop.idx.9, align 8
  br label %loop.body.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i42 = sub i64 %counter.load41, 0
  store i64 1, ptr %loop.step.9, align 8
  store i64 %loop.rel.i42, ptr %var._i43, align 8
  store i64 %counter.load41, ptr %var._44, align 8
  %var.load45 = load double, ptr %"var.x'", align 8
  %fcmptmp46 = fcmp olt double %var.load45, 1.000000e+00
  br i1 %fcmptmp46, label %choice.then47, label %choice.else48

loop.exit.nat.9:                                  ; No predecessors!
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %choice.exit49
  %step.val52 = load i64, ptr %loop.step.9, align 8
  %loop.next53 = add i64 %counter.load41, %step.val52
  store i64 %loop.next53, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %choice.else48, %loop.exit.nat.9
  %var.load54 = load double, ptr %"var.x'", align 8
  %cast.fptosi = fptosi double %var.load54 to i64
  store i64 %cast.fptosi, ptr %var.ip, align 8
  %var.load55 = load double, ptr %"var.x'", align 8
  %var.load56 = load i64, ptr %var.ip, align 8
  %cast.sitofp = sitofp i64 %var.load56 to double
  %fsubtmp57 = fsub double %var.load55, %cast.sitofp
  store double %fsubtmp57, ptr %"var.f'", align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len58

choice.then47:                                    ; preds = %loop.body.9
  %var.load50 = load double, ptr %"var.x'", align 8
  %fmultmp = fmul double %var.load50, 1.000000e+01
  store double %fmultmp, ptr %"var.x'", align 8
  %var.load51 = load i64, ptr %"var.e'", align 8
  %subtmp = sub i64 %var.load51, 1
  store i64 %subtmp, ptr %"var.e'", align 8
  br label %choice.exit49

choice.else48:                                    ; preds = %loop.body.9
  br label %loop.exit.9

choice.exit49:                                    ; preds = %choice.then47
  br label %loop.latch.9

b.buf.len58:                                      ; preds = %str_overflow_abort, %loop.exit.9
  %arena.cur59 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.ds, align 8
  %b.load = load ptr, ptr %var.ds, align 8
  %var.load60 = load i64, ptr %var.ip, align 8
  %coerce.trunc = trunc i64 %var.load60 to i32
  %addtmp61 = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp61 to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %loop.exit.9
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len58

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len58
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len62 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap63 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data64 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len62, %b.cap63
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len58
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap63, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum65 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf66 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf66, label %str_overflow_abort68, label %b.new.buf.len67

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len67
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data70 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len71 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data70, i64 %b.cur.len71
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len71, 1
  %b.nul = getelementptr i8, ptr %b.cur.data70, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep72, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

b.new.buf.len67:                                  ; preds = %str_overflow_abort68, %b.grow
  %arena.cur69 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 %sum65)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data64, i64 %b.len62, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len62
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort68:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len67

loop.header.10:                                   ; preds = %loop.latch.10, %b.push_done
  %counter.load73 = load i64, ptr %loop.idx.10, align 8
  %loop.cond = icmp slt i64 %counter.load73, 6
  br i1 %loop.cond, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i74 = sub i64 %counter.load73, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i74, ptr %var._i75, align 8
  store i64 %counter.load73, ptr %var._76, align 8
  store i64 %counter.load73, ptr %var.i, align 8
  %var.load77 = load double, ptr %"var.f'", align 8
  %fmultmp78 = fmul double %var.load77, 1.000000e+01
  store double %fmultmp78, ptr %"var.f'", align 8
  %var.load79 = load double, ptr %"var.f'", align 8
  %cast.fptosi80 = fptosi double %var.load79 to i64
  store i64 %cast.fptosi80, ptr %var.d, align 8
  %b.load81 = load ptr, ptr %var.ds, align 8
  %var.load82 = load i64, ptr %var.d, align 8
  %coerce.trunc83 = trunc i64 %var.load82 to i32
  %addtmp84 = add i32 48, %coerce.trunc83
  %b.byte.zext85 = zext i32 %addtmp84 to i64
  %b.b.ge086 = icmp sge i64 %b.byte.zext85, 0
  %b.b.le25587 = icmp sle i64 %b.byte.zext85, 255
  %b.byte.range88 = and i1 %b.b.ge086, %b.b.le25587
  br i1 %b.byte.range88, label %b.byte_ok89, label %b.byte_err90

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %b.push_done101
  %step.val127 = load i64, ptr %loop.step.10, align 8
  %loop.next128 = add i64 %counter.load73, %step.val127
  store i64 %loop.next128, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  %var.load129 = load ptr, ptr %var.ds, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 0
  %b.freeze.len130 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 1
  %b.freeze.data131 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok89:                                      ; preds = %b.byte_err90, %loop.body.10
  %b.byte.i891 = trunc i64 %b.byte.zext85 to i8
  %b.len92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.len93 = load i64, ptr %b.len92, align 8
  %b.cap94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  %b.cap95 = load i64, ptr %b.cap94, align 8
  %b.data96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.data97 = load ptr, ptr %b.data96, align 8
  %b.needs.grow98 = icmp eq i64 %b.len93, %b.cap95
  br i1 %b.needs.grow98, label %b.grow99, label %b.nogrow100

b.byte_err90:                                     ; preds = %loop.body.10
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok89

b.grow99:                                         ; preds = %b.byte_ok89
  %b.cap2102 = mul i64 %b.cap95, 2
  %b.cap.small103 = icmp slt i64 %b.cap2102, 16
  %b.new.cap104 = select i1 %b.cap.small103, i64 16, i64 %b.cap2102
  %b.new.buf.len105 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap104, i64 1)
  %sum106 = extractvalue { i64, i1 } %b.new.buf.len105, 0
  %ovf107 = extractvalue { i64, i1 } %b.new.buf.len105, 1
  br i1 %ovf107, label %str_overflow_abort109, label %b.new.buf.len108

b.nogrow100:                                      ; preds = %b.byte_ok89
  br label %b.push_done101

b.push_done101:                                   ; preds = %b.nogrow100, %b.new.buf.len108
  %b.cur.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.cur.data116 = load ptr, ptr %b.cur.data115, align 8
  %b.cur.len117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.cur.len118 = load i64, ptr %b.cur.len117, align 8
  %b.byte.gep119 = getelementptr i8, ptr %b.cur.data116, i64 %b.cur.len118
  store i8 %b.byte.i891, ptr %b.byte.gep119, align 1
  %b.next.len120 = add i64 %b.cur.len118, 1
  %b.nul121 = getelementptr i8, ptr %b.cur.data116, i64 %b.next.len120
  store i8 0, ptr %b.nul121, align 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  store i64 %b.next.len120, ptr %b.len.gep122, align 8
  %var.load123 = load double, ptr %"var.f'", align 8
  %var.load124 = load i64, ptr %var.d, align 8
  %cast.sitofp125 = sitofp i64 %var.load124 to double
  %fsubtmp126 = fsub double %var.load123, %cast.sitofp125
  store double %fsubtmp126, ptr %"var.f'", align 8
  br label %loop.latch.10

b.new.buf.len108:                                 ; preds = %str_overflow_abort109, %b.grow99
  %arena.cur110 = call ptr @dva_arena_current()
  %b.new.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %sum106)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf111, ptr align 1 %b.data97, i64 %b.len93, i1 false)
  %b.grow.nul112 = getelementptr i8, ptr %b.new.buf111, i64 %b.len93
  store i8 0, ptr %b.grow.nul112, align 1
  %b.new.data.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  store ptr %b.new.buf111, ptr %b.new.data.gep113, align 8
  %b.new.cap.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  store i64 %b.new.cap104, ptr %b.new.cap.gep114, align 8
  br label %b.push_done101

str_overflow_abort109:                            ; preds = %b.grow99
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len108

b.freeze.check:                                   ; preds = %loop.exit.10
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data131, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data131, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data131, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len130, 1
  %arena.cur132 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data131, i64 %b.freeze.len130, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len130
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.10
  %b.freeze.data133 = phi ptr [ %b.freeze.data131, %loop.exit.10 ], [ %b.freeze.data131, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur134 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len130, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data133, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load129, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  store i64 0, ptr %"var.m'", align 8
  store i64 0, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.header.11:                                   ; preds = %loop.latch.11, %b.freeze.done
  %counter.load135 = load i64, ptr %loop.idx.11, align 8
  %loop.cond136 = icmp slt i64 %counter.load135, 6
  br i1 %loop.cond136, label %loop.body.11, label %loop.exit.nat.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i137 = sub i64 %counter.load135, 0
  store i64 1, ptr %loop.step.11, align 8
  store i64 %loop.rel.i137, ptr %var._i138, align 8
  store i64 %counter.load135, ptr %var._139, align 8
  store i64 %counter.load135, ptr %var.i, align 8
  %var.load140 = load i64, ptr %"var.m'", align 8
  %multmp = mul i64 %var.load140, 10
  %var.load141 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 0
  %s.read.len142 = load i64, ptr %s.read.len, align 8
  %s.read.len143 = and i64 %s.read.len142, 281474976710655
  %str.tag = lshr i64 %s.read.len142, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.11:                                 ; preds = %loop.header.11
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %idx_ok
  %step.val149 = load i64, ptr %loop.step.11, align 8
  %loop.next150 = add i64 %counter.load135, %step.val149
  store i64 %loop.next150, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %loop.exit.nat.11
  %var.load151 = load ptr, ptr %var.s, align 8
  %s.read.len152 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 0
  %s.read.len153 = load i64, ptr %s.read.len152, align 8
  %s.read.len154 = and i64 %s.read.len153, 281474976710655
  %str.tag155 = lshr i64 %s.read.len153, 48
  %str.immortal156 = icmp eq i64 %str.tag155, 0
  br i1 %str.immortal156, label %str_ok158, label %str_gen_check157

str_gen_check:                                    ; preds = %loop.body.11
  %arena.cur144 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur144, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.11
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load141, i32 0, i32 1
  %s.read.data145 = load ptr, ptr %s.read.data, align 8
  %var.load146 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load146, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load146, %s.read.len143
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data145, i64 %var.load146
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp147 = sub i64 %s.byte.val, 48
  %addtmp148 = add i64 %multmp, %subtmp147
  store i64 %addtmp148, ptr %"var.m'", align 8
  br label %loop.latch.11

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check157:                                 ; preds = %loop.exit.11
  %arena.cur160 = call ptr @dva_arena_current()
  %tag.valid161 = call i1 @dva_arena_validate_tag(ptr %arena.cur160, i64 %str.tag155)
  br i1 %tag.valid161, label %str_ok158, label %str_stale159

str_ok158:                                        ; preds = %str_stale159, %str_gen_check157, %loop.exit.11
  %s.read.data162 = getelementptr inbounds { i64, ptr }, ptr %var.load151, i32 0, i32 1
  %s.read.data163 = load ptr, ptr %s.read.data162, align 8
  br i1 false, label %idx_oob166, label %idx_big_check164

str_stale159:                                     ; preds = %str_gen_check157
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok158

idx_big_check164:                                 ; preds = %str_ok158
  %idx.big167 = icmp sge i64 6, %s.read.len154
  br i1 %idx.big167, label %idx_oob166, label %idx_ok165

idx_ok165:                                        ; preds = %idx_oob166, %idx_big_check164
  %s.byte.gep168 = getelementptr i8, ptr %s.read.data163, i64 6
  %s.byte169 = load i8, ptr %s.byte.gep168, align 1
  %s.byte.val170 = zext i8 %s.byte169 to i64
  %cmptmp = icmp sge i64 %s.byte.val170, 53
  br i1 %cmptmp, label %choice.then171, label %choice.exit172

idx_oob166:                                       ; preds = %idx_big_check164, %str_ok158
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok165

choice.then171:                                   ; preds = %idx_ok165
  %var.load173 = load i64, ptr %"var.m'", align 8
  %addtmp174 = add i64 %var.load173, 1
  store i64 %addtmp174, ptr %"var.m'", align 8
  br label %choice.exit172

choice.exit172:                                   ; preds = %choice.then171, %idx_ok165
  %var.load175 = load i64, ptr %"var.m'", align 8
  %cmptmp176 = icmp eq i64 %var.load175, 1000000
  br i1 %cmptmp176, label %choice.then177, label %choice.exit178

choice.then177:                                   ; preds = %choice.exit172
  store i64 100000, ptr %"var.m'", align 8
  %var.load179 = load i64, ptr %"var.e'", align 8
  %addtmp180 = add i64 %var.load179, 1
  store i64 %addtmp180, ptr %"var.e'", align 8
  br label %choice.exit178

choice.exit178:                                   ; preds = %choice.then177, %choice.exit172
  %var.load181 = load i64, ptr %"var.m'", align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load181)
  store ptr %call.res, ptr %var.ms, align 8
  %arena.cur182 = call ptr @dva_arena_current()
  %builder.new183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 24)
  %b.data.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new183, i32 0, i32 1
  %b.len.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new183, i32 0, i32 0
  %b.cap.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new183, i32 0, i32 2
  %b.buf.len187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum188 = extractvalue { i64, i1 } %b.buf.len187, 0
  %ovf189 = extractvalue { i64, i1 } %b.buf.len187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %b.buf.len190

b.buf.len190:                                     ; preds = %str_overflow_abort191, %choice.exit178
  %arena.cur192 = call ptr @dva_arena_current()
  %b.buf193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 %sum188)
  %b.nul0194 = getelementptr i8, ptr %b.buf193, i64 0
  store i8 0, ptr %b.nul0194, align 1
  store i64 0, ptr %b.len.gep185, align 8
  store ptr %b.buf193, ptr %b.data.gep184, align 8
  store i64 32, ptr %b.cap.gep186, align 8
  store ptr %builder.new183, ptr %var.b, align 8
  %var.load195 = load i1, ptr %var.neg, align 1
  br i1 %var.load195, label %choice.then196, label %choice.exit197

str_overflow_abort191:                            ; preds = %choice.exit178
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len190

choice.then196:                                   ; preds = %b.buf.len190
  %b.load198 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  %b.rn.cur.len199 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len199, i64 1)
  %sum200 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf201 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf201, label %str_overflow_abort203, label %b.rn.new.len202

choice.exit197:                                   ; preds = %br.done.12, %b.buf.len190
  %var.load218 = load i64, ptr %"var.e'", align 8
  %cmptmp219 = icmp slt i64 %var.load218, -4
  br i1 %cmptmp219, label %or.13.then, label %or.13.else

b.rn.new.len202:                                  ; preds = %str_overflow_abort203, %choice.then196
  %b.cap204 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 2
  %b.cap205 = load i64, ptr %b.cap204, align 8
  %b.need.grow = icmp slt i64 %b.cap205, %sum200
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort203:                            ; preds = %choice.then196
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len202

b.grow2:                                          ; preds = %b.rn.new.len202
  %b.cap2206 = mul i64 %b.cap205, 2
  %b.cap.small207 = icmp slt i64 %b.cap2206, 16
  %b.cap.grow = select i1 %b.cap.small207, i64 16, i64 %b.cap2206
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum200
  %b.new.cap208 = select i1 %b.cap.need, i64 %sum200, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  %b.cur.len2209 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 1
  %b.cur.data2210 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap208, i64 1)
  %sum211 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf212 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf212, label %str_overflow_abort214, label %b.new.buf.len2213

b.nogrow2:                                        ; preds = %b.rn.new.len202
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2213
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 1
  %b.rn.data216 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data216, i64 %b.rn.cur.len199
  br i1 true, label %br.b1.12, label %br.c2.12

b.new.buf.len2213:                                ; preds = %str_overflow_abort214, %b.grow2
  %arena.cur215 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 %sum211)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2210, i64 %b.cur.len2209, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2209
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 2
  store i64 %b.new.cap208, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort214:                            ; preds = %b.grow2
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2213

br.b1.12:                                         ; preds = %b.grow_done
  store i8 45, ptr %b.rn.dst, align 1
  br label %br.done.12

br.c2.12:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.12, label %br.c3.12

br.b2.12:                                         ; preds = %br.c2.12
  store i8 -64, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -83, ptr %br.dst1, align 1
  br label %br.done.12

br.c3.12:                                         ; preds = %br.c2.12
  br i1 true, label %br.b3.12, label %br.b4.12

br.b3.12:                                         ; preds = %br.c3.12
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -83, ptr %br.dst2.3, align 1
  br label %br.done.12

br.b4.12:                                         ; preds = %br.c3.12
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -128, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -83, ptr %br.dst3.4, align 1
  br label %br.done.12

br.done.12:                                       ; preds = %br.b4.12, %br.b3.12, %br.b2.12, %br.b1.12
  %br.nul = getelementptr i8, ptr %b.rn.data216, i64 %sum200
  store i8 0, ptr %br.nul, align 1
  %b.len.gep217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load198, i32 0, i32 0
  store i64 %sum200, ptr %b.len.gep217, align 8
  br label %choice.exit197

or.13.then:                                       ; preds = %choice.exit197
  br label %or.13.exit

or.13.else:                                       ; preds = %choice.exit197
  %var.load220 = load i64, ptr %"var.e'", align 8
  %cmptmp221 = icmp sge i64 %var.load220, 6
  br label %or.13.exit

or.13.exit:                                       ; preds = %or.13.else, %or.13.then
  %or.13.phi = phi i1 [ %cmptmp219, %or.13.then ], [ %cmptmp221, %or.13.else ]
  br i1 %or.13.phi, label %choice.then222, label %choice.else223

choice.then222:                                   ; preds = %or.13.exit
  %b.load225 = load ptr, ptr %var.b, align 8
  %var.load226 = load ptr, ptr %var.ms, align 8
  %s.read.len227 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 0
  %s.read.len228 = load i64, ptr %s.read.len227, align 8
  %s.read.len229 = and i64 %s.read.len228, 281474976710655
  %str.tag230 = lshr i64 %s.read.len228, 48
  %str.immortal231 = icmp eq i64 %str.tag230, 0
  br i1 %str.immortal231, label %str_ok233, label %str_gen_check232

choice.else223:                                   ; preds = %or.13.exit
  %var.load394 = load i64, ptr %"var.e'", align 8
  %cmptmp395 = icmp sge i64 %var.load394, 0
  br i1 %cmptmp395, label %choice.then396, label %choice.else397

choice.exit224:                                   ; preds = %choice.exit398, %loop.exit.15
  %var.load747 = load ptr, ptr %var.b, align 8
  %b.freeze.len748 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 0
  %b.freeze.len749 = load i64, ptr %b.freeze.len748, align 8
  %b.freeze.data750 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 1
  %b.freeze.data751 = load ptr, ptr %b.freeze.data750, align 8
  %b.freeze.arena752 = call ptr @dva_arena_current()
  %b.freeze.nc.gep753 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena752, i32 0, i32 1
  %b.freeze.nc754 = load i64, ptr %b.freeze.nc.gep753, align 8
  %b.freeze.has.chunk755 = icmp sgt i64 %b.freeze.nc754, 0
  br i1 %b.freeze.has.chunk755, label %b.freeze.check756, label %b.freeze.done758

str_gen_check232:                                 ; preds = %choice.then222
  %arena.cur235 = call ptr @dva_arena_current()
  %tag.valid236 = call i1 @dva_arena_validate_tag(ptr %arena.cur235, i64 %str.tag230)
  br i1 %tag.valid236, label %str_ok233, label %str_stale234

str_ok233:                                        ; preds = %str_stale234, %str_gen_check232, %choice.then222
  %s.read.data237 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 1
  %s.read.data238 = load ptr, ptr %s.read.data237, align 8
  br i1 false, label %idx_oob241, label %idx_big_check239

str_stale234:                                     ; preds = %str_gen_check232
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok233

idx_big_check239:                                 ; preds = %str_ok233
  %idx.big242 = icmp sge i64 0, %s.read.len229
  br i1 %idx.big242, label %idx_oob241, label %idx_ok240

idx_ok240:                                        ; preds = %idx_oob241, %idx_big_check239
  %s.byte.gep243 = getelementptr i8, ptr %s.read.data238, i64 0
  %s.byte244 = load i8, ptr %s.byte.gep243, align 1
  %s.byte.val245 = zext i8 %s.byte244 to i64
  %b.b.ge0246 = icmp sge i64 %s.byte.val245, 0
  %b.b.le255247 = icmp sle i64 %s.byte.val245, 255
  %b.byte.range248 = and i1 %b.b.ge0246, %b.b.le255247
  br i1 %b.byte.range248, label %b.byte_ok249, label %b.byte_err250

idx_oob241:                                       ; preds = %idx_big_check239, %str_ok233
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok240

b.byte_ok249:                                     ; preds = %b.byte_err250, %idx_ok240
  %b.byte.i8251 = trunc i64 %s.byte.val245 to i8
  %b.len252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 0
  %b.len253 = load i64, ptr %b.len252, align 8
  %b.cap254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 2
  %b.cap255 = load i64, ptr %b.cap254, align 8
  %b.data256 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 1
  %b.data257 = load ptr, ptr %b.data256, align 8
  %b.needs.grow258 = icmp eq i64 %b.len253, %b.cap255
  br i1 %b.needs.grow258, label %b.grow259, label %b.nogrow260

b.byte_err250:                                    ; preds = %idx_ok240
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok249

b.grow259:                                        ; preds = %b.byte_ok249
  %b.cap2262 = mul i64 %b.cap255, 2
  %b.cap.small263 = icmp slt i64 %b.cap2262, 16
  %b.new.cap264 = select i1 %b.cap.small263, i64 16, i64 %b.cap2262
  %b.new.buf.len265 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap264, i64 1)
  %sum266 = extractvalue { i64, i1 } %b.new.buf.len265, 0
  %ovf267 = extractvalue { i64, i1 } %b.new.buf.len265, 1
  br i1 %ovf267, label %str_overflow_abort269, label %b.new.buf.len268

b.nogrow260:                                      ; preds = %b.byte_ok249
  br label %b.push_done261

b.push_done261:                                   ; preds = %b.nogrow260, %b.new.buf.len268
  %b.cur.data275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 1
  %b.cur.data276 = load ptr, ptr %b.cur.data275, align 8
  %b.cur.len277 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 0
  %b.cur.len278 = load i64, ptr %b.cur.len277, align 8
  %b.byte.gep279 = getelementptr i8, ptr %b.cur.data276, i64 %b.cur.len278
  store i8 %b.byte.i8251, ptr %b.byte.gep279, align 1
  %b.next.len280 = add i64 %b.cur.len278, 1
  %b.nul281 = getelementptr i8, ptr %b.cur.data276, i64 %b.next.len280
  store i8 0, ptr %b.nul281, align 1
  %b.len.gep282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 0
  store i64 %b.next.len280, ptr %b.len.gep282, align 8
  %b.load283 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  %b.rn.cur.len285 = load i64, ptr %b.rn.cur.len284, align 8
  %b.rn.new.len286 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len285, i64 1)
  %sum287 = extractvalue { i64, i1 } %b.rn.new.len286, 0
  %ovf288 = extractvalue { i64, i1 } %b.rn.new.len286, 1
  br i1 %ovf288, label %str_overflow_abort290, label %b.rn.new.len289

b.new.buf.len268:                                 ; preds = %str_overflow_abort269, %b.grow259
  %arena.cur270 = call ptr @dva_arena_current()
  %b.new.buf271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 %sum266)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf271, ptr align 1 %b.data257, i64 %b.len253, i1 false)
  %b.grow.nul272 = getelementptr i8, ptr %b.new.buf271, i64 %b.len253
  store i8 0, ptr %b.grow.nul272, align 1
  %b.new.data.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 1
  store ptr %b.new.buf271, ptr %b.new.data.gep273, align 8
  %b.new.cap.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load225, i32 0, i32 2
  store i64 %b.new.cap264, ptr %b.new.cap.gep274, align 8
  br label %b.push_done261

str_overflow_abort269:                            ; preds = %b.grow259
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len268

b.rn.new.len289:                                  ; preds = %str_overflow_abort290, %b.push_done261
  %b.cap291 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 2
  %b.cap292 = load i64, ptr %b.cap291, align 8
  %b.need.grow293 = icmp slt i64 %b.cap292, %sum287
  br i1 %b.need.grow293, label %b.grow2294, label %b.nogrow2295

str_overflow_abort290:                            ; preds = %b.push_done261
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len289

b.grow2294:                                       ; preds = %b.rn.new.len289
  %b.cap2297 = mul i64 %b.cap292, 2
  %b.cap.small298 = icmp slt i64 %b.cap2297, 16
  %b.cap.grow299 = select i1 %b.cap.small298, i64 16, i64 %b.cap2297
  %b.cap.need300 = icmp slt i64 %b.cap.grow299, %sum287
  %b.new.cap301 = select i1 %b.cap.need300, i64 %sum287, i64 %b.cap.grow299
  %b.cur.len2302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  %b.cur.len2303 = load i64, ptr %b.cur.len2302, align 8
  %b.cur.data2304 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 1
  %b.cur.data2305 = load ptr, ptr %b.cur.data2304, align 8
  %b.new.buf.len2306 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap301, i64 1)
  %sum307 = extractvalue { i64, i1 } %b.new.buf.len2306, 0
  %ovf308 = extractvalue { i64, i1 } %b.new.buf.len2306, 1
  br i1 %ovf308, label %str_overflow_abort310, label %b.new.buf.len2309

b.nogrow2295:                                     ; preds = %b.rn.new.len289
  br label %b.grow_done296

b.grow_done296:                                   ; preds = %b.nogrow2295, %b.new.buf.len2309
  %b.rn.data316 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 1
  %b.rn.data317 = load ptr, ptr %b.rn.data316, align 8
  %b.rn.dst318 = getelementptr i8, ptr %b.rn.data317, i64 %b.rn.cur.len285
  br i1 true, label %br.b1.14, label %br.c2.14

b.new.buf.len2309:                                ; preds = %str_overflow_abort310, %b.grow2294
  %arena.cur311 = call ptr @dva_arena_current()
  %b.new.buf2312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 %sum307)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2312, ptr align 1 %b.cur.data2305, i64 %b.cur.len2303, i1 false)
  %b.grow2.nul313 = getelementptr i8, ptr %b.new.buf2312, i64 %b.cur.len2303
  store i8 0, ptr %b.grow2.nul313, align 1
  %b.new.data2.gep314 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 1
  store ptr %b.new.buf2312, ptr %b.new.data2.gep314, align 8
  %b.new.cap2.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 2
  store i64 %b.new.cap301, ptr %b.new.cap2.gep315, align 8
  br label %b.grow_done296

str_overflow_abort310:                            ; preds = %b.grow2294
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2309

br.b1.14:                                         ; preds = %b.grow_done296
  store i8 46, ptr %b.rn.dst318, align 1
  br label %br.done.14

br.c2.14:                                         ; preds = %b.grow_done296
  br i1 true, label %br.b2.14, label %br.c3.14

br.b2.14:                                         ; preds = %br.c2.14
  store i8 -64, ptr %b.rn.dst318, align 1
  %br.dst1319 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -82, ptr %br.dst1319, align 1
  br label %br.done.14

br.c3.14:                                         ; preds = %br.c2.14
  br i1 true, label %br.b3.14, label %br.b4.14

br.b3.14:                                         ; preds = %br.c3.14
  store i8 -32, ptr %b.rn.dst318, align 1
  %br.dst1.3320 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -128, ptr %br.dst1.3320, align 1
  %br.dst2.3321 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -82, ptr %br.dst2.3321, align 1
  br label %br.done.14

br.b4.14:                                         ; preds = %br.c3.14
  store i8 -16, ptr %b.rn.dst318, align 1
  %br.dst1.4322 = getelementptr i8, ptr %b.rn.dst318, i64 1
  store i8 -128, ptr %br.dst1.4322, align 1
  %br.dst2.4323 = getelementptr i8, ptr %b.rn.dst318, i64 2
  store i8 -128, ptr %br.dst2.4323, align 1
  %br.dst3.4324 = getelementptr i8, ptr %b.rn.dst318, i64 3
  store i8 -82, ptr %br.dst3.4324, align 1
  br label %br.done.14

br.done.14:                                       ; preds = %br.b4.14, %br.b3.14, %br.b2.14, %br.b1.14
  %br.nul325 = getelementptr i8, ptr %b.rn.data317, i64 %sum287
  store i8 0, ptr %br.nul325, align 1
  %b.len.gep326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load283, i32 0, i32 0
  store i64 %sum287, ptr %b.len.gep326, align 8
  store i64 1, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.header.15:                                   ; preds = %loop.latch.15, %br.done.14
  %counter.load327 = load i64, ptr %loop.idx.15, align 8
  %loop.cond328 = icmp slt i64 %counter.load327, 6
  br i1 %loop.cond328, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i329 = sub i64 %counter.load327, 1
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i329, ptr %var._i330, align 8
  store i64 %counter.load327, ptr %var._331, align 8
  store i64 %counter.load327, ptr %var.i, align 8
  %b.load332 = load ptr, ptr %var.b, align 8
  %var.load333 = load ptr, ptr %var.ms, align 8
  %s.read.len334 = getelementptr inbounds { i64, ptr }, ptr %var.load333, i32 0, i32 0
  %s.read.len335 = load i64, ptr %s.read.len334, align 8
  %s.read.len336 = and i64 %s.read.len335, 281474976710655
  %str.tag337 = lshr i64 %s.read.len335, 48
  %str.immortal338 = icmp eq i64 %str.tag337, 0
  br i1 %str.immortal338, label %str_ok340, label %str_gen_check339

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %b.push_done370
  %step.val392 = load i64, ptr %loop.step.15, align 8
  %loop.next393 = add i64 %counter.load327, %step.val392
  store i64 %loop.next393, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  br label %choice.exit224

str_gen_check339:                                 ; preds = %loop.body.15
  %arena.cur342 = call ptr @dva_arena_current()
  %tag.valid343 = call i1 @dva_arena_validate_tag(ptr %arena.cur342, i64 %str.tag337)
  br i1 %tag.valid343, label %str_ok340, label %str_stale341

str_ok340:                                        ; preds = %str_stale341, %str_gen_check339, %loop.body.15
  %s.read.data344 = getelementptr inbounds { i64, ptr }, ptr %var.load333, i32 0, i32 1
  %s.read.data345 = load ptr, ptr %s.read.data344, align 8
  %var.load346 = load i64, ptr %var.i, align 8
  %idx.neg347 = icmp slt i64 %var.load346, 0
  br i1 %idx.neg347, label %idx_oob350, label %idx_big_check348

str_stale341:                                     ; preds = %str_gen_check339
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok340

idx_big_check348:                                 ; preds = %str_ok340
  %idx.big351 = icmp sge i64 %var.load346, %s.read.len336
  br i1 %idx.big351, label %idx_oob350, label %idx_ok349

idx_ok349:                                        ; preds = %idx_oob350, %idx_big_check348
  %s.byte.gep352 = getelementptr i8, ptr %s.read.data345, i64 %var.load346
  %s.byte353 = load i8, ptr %s.byte.gep352, align 1
  %s.byte.val354 = zext i8 %s.byte353 to i64
  %b.b.ge0355 = icmp sge i64 %s.byte.val354, 0
  %b.b.le255356 = icmp sle i64 %s.byte.val354, 255
  %b.byte.range357 = and i1 %b.b.ge0355, %b.b.le255356
  br i1 %b.byte.range357, label %b.byte_ok358, label %b.byte_err359

idx_oob350:                                       ; preds = %idx_big_check348, %str_ok340
  %20 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok349

b.byte_ok358:                                     ; preds = %b.byte_err359, %idx_ok349
  %b.byte.i8360 = trunc i64 %s.byte.val354 to i8
  %b.len361 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 0
  %b.len362 = load i64, ptr %b.len361, align 8
  %b.cap363 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 2
  %b.cap364 = load i64, ptr %b.cap363, align 8
  %b.data365 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 1
  %b.data366 = load ptr, ptr %b.data365, align 8
  %b.needs.grow367 = icmp eq i64 %b.len362, %b.cap364
  br i1 %b.needs.grow367, label %b.grow368, label %b.nogrow369

b.byte_err359:                                    ; preds = %idx_ok349
  %21 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok358

b.grow368:                                        ; preds = %b.byte_ok358
  %b.cap2371 = mul i64 %b.cap364, 2
  %b.cap.small372 = icmp slt i64 %b.cap2371, 16
  %b.new.cap373 = select i1 %b.cap.small372, i64 16, i64 %b.cap2371
  %b.new.buf.len374 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap373, i64 1)
  %sum375 = extractvalue { i64, i1 } %b.new.buf.len374, 0
  %ovf376 = extractvalue { i64, i1 } %b.new.buf.len374, 1
  br i1 %ovf376, label %str_overflow_abort378, label %b.new.buf.len377

b.nogrow369:                                      ; preds = %b.byte_ok358
  br label %b.push_done370

b.push_done370:                                   ; preds = %b.nogrow369, %b.new.buf.len377
  %b.cur.data384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 1
  %b.cur.data385 = load ptr, ptr %b.cur.data384, align 8
  %b.cur.len386 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 0
  %b.cur.len387 = load i64, ptr %b.cur.len386, align 8
  %b.byte.gep388 = getelementptr i8, ptr %b.cur.data385, i64 %b.cur.len387
  store i8 %b.byte.i8360, ptr %b.byte.gep388, align 1
  %b.next.len389 = add i64 %b.cur.len387, 1
  %b.nul390 = getelementptr i8, ptr %b.cur.data385, i64 %b.next.len389
  store i8 0, ptr %b.nul390, align 1
  %b.len.gep391 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 0
  store i64 %b.next.len389, ptr %b.len.gep391, align 8
  br label %loop.latch.15

b.new.buf.len377:                                 ; preds = %str_overflow_abort378, %b.grow368
  %arena.cur379 = call ptr @dva_arena_current()
  %b.new.buf380 = call ptr @dva_arena_alloc(ptr %arena.cur379, i64 %sum375)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf380, ptr align 1 %b.data366, i64 %b.len362, i1 false)
  %b.grow.nul381 = getelementptr i8, ptr %b.new.buf380, i64 %b.len362
  store i8 0, ptr %b.grow.nul381, align 1
  %b.new.data.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 1
  store ptr %b.new.buf380, ptr %b.new.data.gep382, align 8
  %b.new.cap.gep383 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load332, i32 0, i32 2
  store i64 %b.new.cap373, ptr %b.new.cap.gep383, align 8
  br label %b.push_done370

str_overflow_abort378:                            ; preds = %b.grow368
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len377

choice.then396:                                   ; preds = %choice.else223
  %var.load399 = load i64, ptr %"var.e'", align 8
  %addtmp400 = add i64 %var.load399, 1
  store i64 %addtmp400, ptr %var.en, align 8
  %var.load401 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.16, align 8
  br label %loop.header.16

choice.else397:                                   ; preds = %choice.else223
  %b.load585 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.6.struct, align 8
  %app.str.len586 = and i64 %app.str.len, 281474976710655
  %str.tag587 = lshr i64 %app.str.len, 48
  %str.immortal588 = icmp eq i64 %str.tag587, 0
  br i1 %str.immortal588, label %str_ok590, label %str_gen_check589

choice.exit398:                                   ; preds = %loop.exit.21, %choice.exit472
  br label %choice.exit224

loop.header.16:                                   ; preds = %loop.latch.16, %choice.then396
  %counter.load402 = load i64, ptr %loop.idx.16, align 8
  %loop.cond403 = icmp slt i64 %counter.load402, %var.load401
  br i1 %loop.cond403, label %loop.body.16, label %loop.exit.nat.16

loop.body.16:                                     ; preds = %loop.header.16
  %loop.rel.i404 = sub i64 %counter.load402, 0
  store i64 1, ptr %loop.step.16, align 8
  store i64 %loop.rel.i404, ptr %var._i405, align 8
  store i64 %counter.load402, ptr %var._406, align 8
  store i64 %counter.load402, ptr %var.i, align 8
  %b.load407 = load ptr, ptr %var.b, align 8
  %var.load408 = load ptr, ptr %var.ms, align 8
  %s.read.len409 = getelementptr inbounds { i64, ptr }, ptr %var.load408, i32 0, i32 0
  %s.read.len410 = load i64, ptr %s.read.len409, align 8
  %s.read.len411 = and i64 %s.read.len410, 281474976710655
  %str.tag412 = lshr i64 %s.read.len410, 48
  %str.immortal413 = icmp eq i64 %str.tag412, 0
  br i1 %str.immortal413, label %str_ok415, label %str_gen_check414

loop.exit.nat.16:                                 ; preds = %loop.header.16
  br label %loop.exit.16

loop.latch.16:                                    ; preds = %b.push_done445
  %step.val467 = load i64, ptr %loop.step.16, align 8
  %loop.next468 = add i64 %counter.load402, %step.val467
  store i64 %loop.next468, ptr %loop.idx.16, align 8
  br label %loop.header.16

loop.exit.16:                                     ; preds = %loop.exit.nat.16
  %var.load469 = load i64, ptr %var.en, align 8
  %cmptmp470 = icmp slt i64 %var.load469, 6
  br i1 %cmptmp470, label %choice.then471, label %choice.exit472

str_gen_check414:                                 ; preds = %loop.body.16
  %arena.cur417 = call ptr @dva_arena_current()
  %tag.valid418 = call i1 @dva_arena_validate_tag(ptr %arena.cur417, i64 %str.tag412)
  br i1 %tag.valid418, label %str_ok415, label %str_stale416

str_ok415:                                        ; preds = %str_stale416, %str_gen_check414, %loop.body.16
  %s.read.data419 = getelementptr inbounds { i64, ptr }, ptr %var.load408, i32 0, i32 1
  %s.read.data420 = load ptr, ptr %s.read.data419, align 8
  %var.load421 = load i64, ptr %var.i, align 8
  %idx.neg422 = icmp slt i64 %var.load421, 0
  br i1 %idx.neg422, label %idx_oob425, label %idx_big_check423

str_stale416:                                     ; preds = %str_gen_check414
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok415

idx_big_check423:                                 ; preds = %str_ok415
  %idx.big426 = icmp sge i64 %var.load421, %s.read.len411
  br i1 %idx.big426, label %idx_oob425, label %idx_ok424

idx_ok424:                                        ; preds = %idx_oob425, %idx_big_check423
  %s.byte.gep427 = getelementptr i8, ptr %s.read.data420, i64 %var.load421
  %s.byte428 = load i8, ptr %s.byte.gep427, align 1
  %s.byte.val429 = zext i8 %s.byte428 to i64
  %b.b.ge0430 = icmp sge i64 %s.byte.val429, 0
  %b.b.le255431 = icmp sle i64 %s.byte.val429, 255
  %b.byte.range432 = and i1 %b.b.ge0430, %b.b.le255431
  br i1 %b.byte.range432, label %b.byte_ok433, label %b.byte_err434

idx_oob425:                                       ; preds = %idx_big_check423, %str_ok415
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok424

b.byte_ok433:                                     ; preds = %b.byte_err434, %idx_ok424
  %b.byte.i8435 = trunc i64 %s.byte.val429 to i8
  %b.len436 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 0
  %b.len437 = load i64, ptr %b.len436, align 8
  %b.cap438 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 2
  %b.cap439 = load i64, ptr %b.cap438, align 8
  %b.data440 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 1
  %b.data441 = load ptr, ptr %b.data440, align 8
  %b.needs.grow442 = icmp eq i64 %b.len437, %b.cap439
  br i1 %b.needs.grow442, label %b.grow443, label %b.nogrow444

b.byte_err434:                                    ; preds = %idx_ok424
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok433

b.grow443:                                        ; preds = %b.byte_ok433
  %b.cap2446 = mul i64 %b.cap439, 2
  %b.cap.small447 = icmp slt i64 %b.cap2446, 16
  %b.new.cap448 = select i1 %b.cap.small447, i64 16, i64 %b.cap2446
  %b.new.buf.len449 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap448, i64 1)
  %sum450 = extractvalue { i64, i1 } %b.new.buf.len449, 0
  %ovf451 = extractvalue { i64, i1 } %b.new.buf.len449, 1
  br i1 %ovf451, label %str_overflow_abort453, label %b.new.buf.len452

b.nogrow444:                                      ; preds = %b.byte_ok433
  br label %b.push_done445

b.push_done445:                                   ; preds = %b.nogrow444, %b.new.buf.len452
  %b.cur.data459 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 1
  %b.cur.data460 = load ptr, ptr %b.cur.data459, align 8
  %b.cur.len461 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 0
  %b.cur.len462 = load i64, ptr %b.cur.len461, align 8
  %b.byte.gep463 = getelementptr i8, ptr %b.cur.data460, i64 %b.cur.len462
  store i8 %b.byte.i8435, ptr %b.byte.gep463, align 1
  %b.next.len464 = add i64 %b.cur.len462, 1
  %b.nul465 = getelementptr i8, ptr %b.cur.data460, i64 %b.next.len464
  store i8 0, ptr %b.nul465, align 1
  %b.len.gep466 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 0
  store i64 %b.next.len464, ptr %b.len.gep466, align 8
  br label %loop.latch.16

b.new.buf.len452:                                 ; preds = %str_overflow_abort453, %b.grow443
  %arena.cur454 = call ptr @dva_arena_current()
  %b.new.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 %sum450)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf455, ptr align 1 %b.data441, i64 %b.len437, i1 false)
  %b.grow.nul456 = getelementptr i8, ptr %b.new.buf455, i64 %b.len437
  store i8 0, ptr %b.grow.nul456, align 1
  %b.new.data.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 1
  store ptr %b.new.buf455, ptr %b.new.data.gep457, align 8
  %b.new.cap.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load407, i32 0, i32 2
  store i64 %b.new.cap448, ptr %b.new.cap.gep458, align 8
  br label %b.push_done445

str_overflow_abort453:                            ; preds = %b.grow443
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len452

choice.then471:                                   ; preds = %loop.exit.16
  %b.load473 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len474 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 0
  %b.rn.cur.len475 = load i64, ptr %b.rn.cur.len474, align 8
  %b.rn.new.len476 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len475, i64 1)
  %sum477 = extractvalue { i64, i1 } %b.rn.new.len476, 0
  %ovf478 = extractvalue { i64, i1 } %b.rn.new.len476, 1
  br i1 %ovf478, label %str_overflow_abort480, label %b.rn.new.len479

choice.exit472:                                   ; preds = %loop.exit.18, %loop.exit.16
  br label %choice.exit398

b.rn.new.len479:                                  ; preds = %str_overflow_abort480, %choice.then471
  %b.cap481 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 2
  %b.cap482 = load i64, ptr %b.cap481, align 8
  %b.need.grow483 = icmp slt i64 %b.cap482, %sum477
  br i1 %b.need.grow483, label %b.grow2484, label %b.nogrow2485

str_overflow_abort480:                            ; preds = %choice.then471
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len479

b.grow2484:                                       ; preds = %b.rn.new.len479
  %b.cap2487 = mul i64 %b.cap482, 2
  %b.cap.small488 = icmp slt i64 %b.cap2487, 16
  %b.cap.grow489 = select i1 %b.cap.small488, i64 16, i64 %b.cap2487
  %b.cap.need490 = icmp slt i64 %b.cap.grow489, %sum477
  %b.new.cap491 = select i1 %b.cap.need490, i64 %sum477, i64 %b.cap.grow489
  %b.cur.len2492 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 0
  %b.cur.len2493 = load i64, ptr %b.cur.len2492, align 8
  %b.cur.data2494 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 1
  %b.cur.data2495 = load ptr, ptr %b.cur.data2494, align 8
  %b.new.buf.len2496 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap491, i64 1)
  %sum497 = extractvalue { i64, i1 } %b.new.buf.len2496, 0
  %ovf498 = extractvalue { i64, i1 } %b.new.buf.len2496, 1
  br i1 %ovf498, label %str_overflow_abort500, label %b.new.buf.len2499

b.nogrow2485:                                     ; preds = %b.rn.new.len479
  br label %b.grow_done486

b.grow_done486:                                   ; preds = %b.nogrow2485, %b.new.buf.len2499
  %b.rn.data506 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 1
  %b.rn.data507 = load ptr, ptr %b.rn.data506, align 8
  %b.rn.dst508 = getelementptr i8, ptr %b.rn.data507, i64 %b.rn.cur.len475
  br i1 true, label %br.b1.17, label %br.c2.17

b.new.buf.len2499:                                ; preds = %str_overflow_abort500, %b.grow2484
  %arena.cur501 = call ptr @dva_arena_current()
  %b.new.buf2502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 %sum497)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2502, ptr align 1 %b.cur.data2495, i64 %b.cur.len2493, i1 false)
  %b.grow2.nul503 = getelementptr i8, ptr %b.new.buf2502, i64 %b.cur.len2493
  store i8 0, ptr %b.grow2.nul503, align 1
  %b.new.data2.gep504 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 1
  store ptr %b.new.buf2502, ptr %b.new.data2.gep504, align 8
  %b.new.cap2.gep505 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 2
  store i64 %b.new.cap491, ptr %b.new.cap2.gep505, align 8
  br label %b.grow_done486

str_overflow_abort500:                            ; preds = %b.grow2484
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2499

br.b1.17:                                         ; preds = %b.grow_done486
  store i8 46, ptr %b.rn.dst508, align 1
  br label %br.done.17

br.c2.17:                                         ; preds = %b.grow_done486
  br i1 true, label %br.b2.17, label %br.c3.17

br.b2.17:                                         ; preds = %br.c2.17
  store i8 -64, ptr %b.rn.dst508, align 1
  %br.dst1509 = getelementptr i8, ptr %b.rn.dst508, i64 1
  store i8 -82, ptr %br.dst1509, align 1
  br label %br.done.17

br.c3.17:                                         ; preds = %br.c2.17
  br i1 true, label %br.b3.17, label %br.b4.17

br.b3.17:                                         ; preds = %br.c3.17
  store i8 -32, ptr %b.rn.dst508, align 1
  %br.dst1.3510 = getelementptr i8, ptr %b.rn.dst508, i64 1
  store i8 -128, ptr %br.dst1.3510, align 1
  %br.dst2.3511 = getelementptr i8, ptr %b.rn.dst508, i64 2
  store i8 -82, ptr %br.dst2.3511, align 1
  br label %br.done.17

br.b4.17:                                         ; preds = %br.c3.17
  store i8 -16, ptr %b.rn.dst508, align 1
  %br.dst1.4512 = getelementptr i8, ptr %b.rn.dst508, i64 1
  store i8 -128, ptr %br.dst1.4512, align 1
  %br.dst2.4513 = getelementptr i8, ptr %b.rn.dst508, i64 2
  store i8 -128, ptr %br.dst2.4513, align 1
  %br.dst3.4514 = getelementptr i8, ptr %b.rn.dst508, i64 3
  store i8 -82, ptr %br.dst3.4514, align 1
  br label %br.done.17

br.done.17:                                       ; preds = %br.b4.17, %br.b3.17, %br.b2.17, %br.b1.17
  %br.nul515 = getelementptr i8, ptr %b.rn.data507, i64 %sum477
  store i8 0, ptr %br.nul515, align 1
  %b.len.gep516 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load473, i32 0, i32 0
  store i64 %sum477, ptr %b.len.gep516, align 8
  %var.load517 = load i64, ptr %var.en, align 8
  store i64 %var.load517, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.header.18:                                   ; preds = %loop.latch.18, %br.done.17
  %counter.load518 = load i64, ptr %loop.idx.18, align 8
  %loop.cond519 = icmp slt i64 %counter.load518, 6
  br i1 %loop.cond519, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i520 = sub i64 %counter.load518, %var.load517
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i520, ptr %var._i521, align 8
  store i64 %counter.load518, ptr %var._522, align 8
  store i64 %counter.load518, ptr %var.i, align 8
  %b.load523 = load ptr, ptr %var.b, align 8
  %var.load524 = load ptr, ptr %var.ms, align 8
  %s.read.len525 = getelementptr inbounds { i64, ptr }, ptr %var.load524, i32 0, i32 0
  %s.read.len526 = load i64, ptr %s.read.len525, align 8
  %s.read.len527 = and i64 %s.read.len526, 281474976710655
  %str.tag528 = lshr i64 %s.read.len526, 48
  %str.immortal529 = icmp eq i64 %str.tag528, 0
  br i1 %str.immortal529, label %str_ok531, label %str_gen_check530

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %b.push_done561
  %step.val583 = load i64, ptr %loop.step.18, align 8
  %loop.next584 = add i64 %counter.load518, %step.val583
  store i64 %loop.next584, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  br label %choice.exit472

str_gen_check530:                                 ; preds = %loop.body.18
  %arena.cur533 = call ptr @dva_arena_current()
  %tag.valid534 = call i1 @dva_arena_validate_tag(ptr %arena.cur533, i64 %str.tag528)
  br i1 %tag.valid534, label %str_ok531, label %str_stale532

str_ok531:                                        ; preds = %str_stale532, %str_gen_check530, %loop.body.18
  %s.read.data535 = getelementptr inbounds { i64, ptr }, ptr %var.load524, i32 0, i32 1
  %s.read.data536 = load ptr, ptr %s.read.data535, align 8
  %var.load537 = load i64, ptr %var.i, align 8
  %idx.neg538 = icmp slt i64 %var.load537, 0
  br i1 %idx.neg538, label %idx_oob541, label %idx_big_check539

str_stale532:                                     ; preds = %str_gen_check530
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok531

idx_big_check539:                                 ; preds = %str_ok531
  %idx.big542 = icmp sge i64 %var.load537, %s.read.len527
  br i1 %idx.big542, label %idx_oob541, label %idx_ok540

idx_ok540:                                        ; preds = %idx_oob541, %idx_big_check539
  %s.byte.gep543 = getelementptr i8, ptr %s.read.data536, i64 %var.load537
  %s.byte544 = load i8, ptr %s.byte.gep543, align 1
  %s.byte.val545 = zext i8 %s.byte544 to i64
  %b.b.ge0546 = icmp sge i64 %s.byte.val545, 0
  %b.b.le255547 = icmp sle i64 %s.byte.val545, 255
  %b.byte.range548 = and i1 %b.b.ge0546, %b.b.le255547
  br i1 %b.byte.range548, label %b.byte_ok549, label %b.byte_err550

idx_oob541:                                       ; preds = %idx_big_check539, %str_ok531
  %30 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok540

b.byte_ok549:                                     ; preds = %b.byte_err550, %idx_ok540
  %b.byte.i8551 = trunc i64 %s.byte.val545 to i8
  %b.len552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 0
  %b.len553 = load i64, ptr %b.len552, align 8
  %b.cap554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 2
  %b.cap555 = load i64, ptr %b.cap554, align 8
  %b.data556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 1
  %b.data557 = load ptr, ptr %b.data556, align 8
  %b.needs.grow558 = icmp eq i64 %b.len553, %b.cap555
  br i1 %b.needs.grow558, label %b.grow559, label %b.nogrow560

b.byte_err550:                                    ; preds = %idx_ok540
  %31 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok549

b.grow559:                                        ; preds = %b.byte_ok549
  %b.cap2562 = mul i64 %b.cap555, 2
  %b.cap.small563 = icmp slt i64 %b.cap2562, 16
  %b.new.cap564 = select i1 %b.cap.small563, i64 16, i64 %b.cap2562
  %b.new.buf.len565 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap564, i64 1)
  %sum566 = extractvalue { i64, i1 } %b.new.buf.len565, 0
  %ovf567 = extractvalue { i64, i1 } %b.new.buf.len565, 1
  br i1 %ovf567, label %str_overflow_abort569, label %b.new.buf.len568

b.nogrow560:                                      ; preds = %b.byte_ok549
  br label %b.push_done561

b.push_done561:                                   ; preds = %b.nogrow560, %b.new.buf.len568
  %b.cur.data575 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 1
  %b.cur.data576 = load ptr, ptr %b.cur.data575, align 8
  %b.cur.len577 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 0
  %b.cur.len578 = load i64, ptr %b.cur.len577, align 8
  %b.byte.gep579 = getelementptr i8, ptr %b.cur.data576, i64 %b.cur.len578
  store i8 %b.byte.i8551, ptr %b.byte.gep579, align 1
  %b.next.len580 = add i64 %b.cur.len578, 1
  %b.nul581 = getelementptr i8, ptr %b.cur.data576, i64 %b.next.len580
  store i8 0, ptr %b.nul581, align 1
  %b.len.gep582 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 0
  store i64 %b.next.len580, ptr %b.len.gep582, align 8
  br label %loop.latch.18

b.new.buf.len568:                                 ; preds = %str_overflow_abort569, %b.grow559
  %arena.cur570 = call ptr @dva_arena_current()
  %b.new.buf571 = call ptr @dva_arena_alloc(ptr %arena.cur570, i64 %sum566)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf571, ptr align 1 %b.data557, i64 %b.len553, i1 false)
  %b.grow.nul572 = getelementptr i8, ptr %b.new.buf571, i64 %b.len553
  store i8 0, ptr %b.grow.nul572, align 1
  %b.new.data.gep573 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 1
  store ptr %b.new.buf571, ptr %b.new.data.gep573, align 8
  %b.new.cap.gep574 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load523, i32 0, i32 2
  store i64 %b.new.cap564, ptr %b.new.cap.gep574, align 8
  br label %b.push_done561

str_overflow_abort569:                            ; preds = %b.grow559
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len568

str_gen_check589:                                 ; preds = %choice.else397
  %arena.cur592 = call ptr @dva_arena_current()
  %tag.valid593 = call i1 @dva_arena_validate_tag(ptr %arena.cur592, i64 %str.tag587)
  br i1 %tag.valid593, label %str_ok590, label %str_stale591

str_ok590:                                        ; preds = %str_stale591, %str_gen_check589, %choice.else397
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 0
  %b.app.cur.len594 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len594, i64 %app.str.len586)
  %sum595 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf596 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf596, label %str_overflow_abort598, label %b.app.new.len597

str_stale591:                                     ; preds = %str_gen_check589
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok590

b.app.new.len597:                                 ; preds = %str_overflow_abort598, %str_ok590
  %b.cap599 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 2
  %b.cap600 = load i64, ptr %b.cap599, align 8
  %b.need.grow601 = icmp slt i64 %b.cap600, %sum595
  br i1 %b.need.grow601, label %b.grow2602, label %b.nogrow2603

str_overflow_abort598:                            ; preds = %str_ok590
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len597

b.grow2602:                                       ; preds = %b.app.new.len597
  %b.cap2605 = mul i64 %b.cap600, 2
  %b.cap.small606 = icmp slt i64 %b.cap2605, 16
  %b.cap.grow607 = select i1 %b.cap.small606, i64 16, i64 %b.cap2605
  %b.cap.need608 = icmp slt i64 %b.cap.grow607, %sum595
  %b.new.cap609 = select i1 %b.cap.need608, i64 %sum595, i64 %b.cap.grow607
  %b.cur.len2610 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 0
  %b.cur.len2611 = load i64, ptr %b.cur.len2610, align 8
  %b.cur.data2612 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 1
  %b.cur.data2613 = load ptr, ptr %b.cur.data2612, align 8
  %b.new.buf.len2614 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap609, i64 1)
  %sum615 = extractvalue { i64, i1 } %b.new.buf.len2614, 0
  %ovf616 = extractvalue { i64, i1 } %b.new.buf.len2614, 1
  br i1 %ovf616, label %str_overflow_abort618, label %b.new.buf.len2617

b.nogrow2603:                                     ; preds = %b.app.new.len597
  br label %b.grow_done604

b.grow_done604:                                   ; preds = %b.nogrow2603, %b.new.buf.len2617
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 1
  %b.app.data624 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data624, i64 %b.app.cur.len594
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len586, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data624, i64 %sum595
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep625 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 0
  store i64 %sum595, ptr %b.len.gep625, align 8
  %var.load626 = load i64, ptr %"var.e'", align 8
  %subtmp627 = sub i64 0, %var.load626
  %subtmp628 = sub i64 %subtmp627, 1
  store i64 0, ptr %loop.idx.19, align 8
  br label %loop.header.19

b.new.buf.len2617:                                ; preds = %str_overflow_abort618, %b.grow2602
  %arena.cur619 = call ptr @dva_arena_current()
  %b.new.buf2620 = call ptr @dva_arena_alloc(ptr %arena.cur619, i64 %sum615)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2620, ptr align 1 %b.cur.data2613, i64 %b.cur.len2611, i1 false)
  %b.grow2.nul621 = getelementptr i8, ptr %b.new.buf2620, i64 %b.cur.len2611
  store i8 0, ptr %b.grow2.nul621, align 1
  %b.new.data2.gep622 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 1
  store ptr %b.new.buf2620, ptr %b.new.data2.gep622, align 8
  %b.new.cap2.gep623 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load585, i32 0, i32 2
  store i64 %b.new.cap609, ptr %b.new.cap2.gep623, align 8
  br label %b.grow_done604

str_overflow_abort618:                            ; preds = %b.grow2602
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2617

loop.header.19:                                   ; preds = %loop.latch.19, %b.grow_done604
  %counter.load629 = load i64, ptr %loop.idx.19, align 8
  %loop.cond630 = icmp slt i64 %counter.load629, %subtmp628
  br i1 %loop.cond630, label %loop.body.19, label %loop.exit.nat.19

loop.body.19:                                     ; preds = %loop.header.19
  %loop.rel.i631 = sub i64 %counter.load629, 0
  store i64 1, ptr %loop.step.19, align 8
  store i64 %loop.rel.i631, ptr %var._i632, align 8
  store i64 %counter.load629, ptr %var._633, align 8
  store i64 %counter.load629, ptr %var.i, align 8
  %b.load634 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len635 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 0
  %b.rn.cur.len636 = load i64, ptr %b.rn.cur.len635, align 8
  %b.rn.new.len637 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len636, i64 1)
  %sum638 = extractvalue { i64, i1 } %b.rn.new.len637, 0
  %ovf639 = extractvalue { i64, i1 } %b.rn.new.len637, 1
  br i1 %ovf639, label %str_overflow_abort641, label %b.rn.new.len640

loop.exit.nat.19:                                 ; preds = %loop.header.19
  br label %loop.exit.19

loop.latch.19:                                    ; preds = %br.done.20
  %step.val678 = load i64, ptr %loop.step.19, align 8
  %loop.next679 = add i64 %counter.load629, %step.val678
  store i64 %loop.next679, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %loop.exit.nat.19
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

b.rn.new.len640:                                  ; preds = %str_overflow_abort641, %loop.body.19
  %b.cap642 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 2
  %b.cap643 = load i64, ptr %b.cap642, align 8
  %b.need.grow644 = icmp slt i64 %b.cap643, %sum638
  br i1 %b.need.grow644, label %b.grow2645, label %b.nogrow2646

str_overflow_abort641:                            ; preds = %loop.body.19
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len640

b.grow2645:                                       ; preds = %b.rn.new.len640
  %b.cap2648 = mul i64 %b.cap643, 2
  %b.cap.small649 = icmp slt i64 %b.cap2648, 16
  %b.cap.grow650 = select i1 %b.cap.small649, i64 16, i64 %b.cap2648
  %b.cap.need651 = icmp slt i64 %b.cap.grow650, %sum638
  %b.new.cap652 = select i1 %b.cap.need651, i64 %sum638, i64 %b.cap.grow650
  %b.cur.len2653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 0
  %b.cur.len2654 = load i64, ptr %b.cur.len2653, align 8
  %b.cur.data2655 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 1
  %b.cur.data2656 = load ptr, ptr %b.cur.data2655, align 8
  %b.new.buf.len2657 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap652, i64 1)
  %sum658 = extractvalue { i64, i1 } %b.new.buf.len2657, 0
  %ovf659 = extractvalue { i64, i1 } %b.new.buf.len2657, 1
  br i1 %ovf659, label %str_overflow_abort661, label %b.new.buf.len2660

b.nogrow2646:                                     ; preds = %b.rn.new.len640
  br label %b.grow_done647

b.grow_done647:                                   ; preds = %b.nogrow2646, %b.new.buf.len2660
  %b.rn.data667 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 1
  %b.rn.data668 = load ptr, ptr %b.rn.data667, align 8
  %b.rn.dst669 = getelementptr i8, ptr %b.rn.data668, i64 %b.rn.cur.len636
  br i1 true, label %br.b1.20, label %br.c2.20

b.new.buf.len2660:                                ; preds = %str_overflow_abort661, %b.grow2645
  %arena.cur662 = call ptr @dva_arena_current()
  %b.new.buf2663 = call ptr @dva_arena_alloc(ptr %arena.cur662, i64 %sum658)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2663, ptr align 1 %b.cur.data2656, i64 %b.cur.len2654, i1 false)
  %b.grow2.nul664 = getelementptr i8, ptr %b.new.buf2663, i64 %b.cur.len2654
  store i8 0, ptr %b.grow2.nul664, align 1
  %b.new.data2.gep665 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 1
  store ptr %b.new.buf2663, ptr %b.new.data2.gep665, align 8
  %b.new.cap2.gep666 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 2
  store i64 %b.new.cap652, ptr %b.new.cap2.gep666, align 8
  br label %b.grow_done647

str_overflow_abort661:                            ; preds = %b.grow2645
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2660

br.b1.20:                                         ; preds = %b.grow_done647
  store i8 48, ptr %b.rn.dst669, align 1
  br label %br.done.20

br.c2.20:                                         ; preds = %b.grow_done647
  br i1 true, label %br.b2.20, label %br.c3.20

br.b2.20:                                         ; preds = %br.c2.20
  store i8 -64, ptr %b.rn.dst669, align 1
  %br.dst1670 = getelementptr i8, ptr %b.rn.dst669, i64 1
  store i8 -80, ptr %br.dst1670, align 1
  br label %br.done.20

br.c3.20:                                         ; preds = %br.c2.20
  br i1 true, label %br.b3.20, label %br.b4.20

br.b3.20:                                         ; preds = %br.c3.20
  store i8 -32, ptr %b.rn.dst669, align 1
  %br.dst1.3671 = getelementptr i8, ptr %b.rn.dst669, i64 1
  store i8 -128, ptr %br.dst1.3671, align 1
  %br.dst2.3672 = getelementptr i8, ptr %b.rn.dst669, i64 2
  store i8 -80, ptr %br.dst2.3672, align 1
  br label %br.done.20

br.b4.20:                                         ; preds = %br.c3.20
  store i8 -16, ptr %b.rn.dst669, align 1
  %br.dst1.4673 = getelementptr i8, ptr %b.rn.dst669, i64 1
  store i8 -128, ptr %br.dst1.4673, align 1
  %br.dst2.4674 = getelementptr i8, ptr %b.rn.dst669, i64 2
  store i8 -128, ptr %br.dst2.4674, align 1
  %br.dst3.4675 = getelementptr i8, ptr %b.rn.dst669, i64 3
  store i8 -80, ptr %br.dst3.4675, align 1
  br label %br.done.20

br.done.20:                                       ; preds = %br.b4.20, %br.b3.20, %br.b2.20, %br.b1.20
  %br.nul676 = getelementptr i8, ptr %b.rn.data668, i64 %sum638
  store i8 0, ptr %br.nul676, align 1
  %b.len.gep677 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load634, i32 0, i32 0
  store i64 %sum638, ptr %b.len.gep677, align 8
  br label %loop.latch.19

loop.header.21:                                   ; preds = %loop.latch.21, %loop.exit.19
  %counter.load680 = load i64, ptr %loop.idx.21, align 8
  %loop.cond681 = icmp slt i64 %counter.load680, 6
  br i1 %loop.cond681, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i682 = sub i64 %counter.load680, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i682, ptr %var._i683, align 8
  store i64 %counter.load680, ptr %var._684, align 8
  store i64 %counter.load680, ptr %var.i, align 8
  %b.load685 = load ptr, ptr %var.b, align 8
  %var.load686 = load ptr, ptr %var.ms, align 8
  %s.read.len687 = getelementptr inbounds { i64, ptr }, ptr %var.load686, i32 0, i32 0
  %s.read.len688 = load i64, ptr %s.read.len687, align 8
  %s.read.len689 = and i64 %s.read.len688, 281474976710655
  %str.tag690 = lshr i64 %s.read.len688, 48
  %str.immortal691 = icmp eq i64 %str.tag690, 0
  br i1 %str.immortal691, label %str_ok693, label %str_gen_check692

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %b.push_done723
  %step.val745 = load i64, ptr %loop.step.21, align 8
  %loop.next746 = add i64 %counter.load680, %step.val745
  store i64 %loop.next746, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  br label %choice.exit398

str_gen_check692:                                 ; preds = %loop.body.21
  %arena.cur695 = call ptr @dva_arena_current()
  %tag.valid696 = call i1 @dva_arena_validate_tag(ptr %arena.cur695, i64 %str.tag690)
  br i1 %tag.valid696, label %str_ok693, label %str_stale694

str_ok693:                                        ; preds = %str_stale694, %str_gen_check692, %loop.body.21
  %s.read.data697 = getelementptr inbounds { i64, ptr }, ptr %var.load686, i32 0, i32 1
  %s.read.data698 = load ptr, ptr %s.read.data697, align 8
  %var.load699 = load i64, ptr %var.i, align 8
  %idx.neg700 = icmp slt i64 %var.load699, 0
  br i1 %idx.neg700, label %idx_oob703, label %idx_big_check701

str_stale694:                                     ; preds = %str_gen_check692
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok693

idx_big_check701:                                 ; preds = %str_ok693
  %idx.big704 = icmp sge i64 %var.load699, %s.read.len689
  br i1 %idx.big704, label %idx_oob703, label %idx_ok702

idx_ok702:                                        ; preds = %idx_oob703, %idx_big_check701
  %s.byte.gep705 = getelementptr i8, ptr %s.read.data698, i64 %var.load699
  %s.byte706 = load i8, ptr %s.byte.gep705, align 1
  %s.byte.val707 = zext i8 %s.byte706 to i64
  %b.b.ge0708 = icmp sge i64 %s.byte.val707, 0
  %b.b.le255709 = icmp sle i64 %s.byte.val707, 255
  %b.byte.range710 = and i1 %b.b.ge0708, %b.b.le255709
  br i1 %b.byte.range710, label %b.byte_ok711, label %b.byte_err712

idx_oob703:                                       ; preds = %idx_big_check701, %str_ok693
  %39 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok702

b.byte_ok711:                                     ; preds = %b.byte_err712, %idx_ok702
  %b.byte.i8713 = trunc i64 %s.byte.val707 to i8
  %b.len714 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 0
  %b.len715 = load i64, ptr %b.len714, align 8
  %b.cap716 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 2
  %b.cap717 = load i64, ptr %b.cap716, align 8
  %b.data718 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 1
  %b.data719 = load ptr, ptr %b.data718, align 8
  %b.needs.grow720 = icmp eq i64 %b.len715, %b.cap717
  br i1 %b.needs.grow720, label %b.grow721, label %b.nogrow722

b.byte_err712:                                    ; preds = %idx_ok702
  %40 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok711

b.grow721:                                        ; preds = %b.byte_ok711
  %b.cap2724 = mul i64 %b.cap717, 2
  %b.cap.small725 = icmp slt i64 %b.cap2724, 16
  %b.new.cap726 = select i1 %b.cap.small725, i64 16, i64 %b.cap2724
  %b.new.buf.len727 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap726, i64 1)
  %sum728 = extractvalue { i64, i1 } %b.new.buf.len727, 0
  %ovf729 = extractvalue { i64, i1 } %b.new.buf.len727, 1
  br i1 %ovf729, label %str_overflow_abort731, label %b.new.buf.len730

b.nogrow722:                                      ; preds = %b.byte_ok711
  br label %b.push_done723

b.push_done723:                                   ; preds = %b.nogrow722, %b.new.buf.len730
  %b.cur.data737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 1
  %b.cur.data738 = load ptr, ptr %b.cur.data737, align 8
  %b.cur.len739 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 0
  %b.cur.len740 = load i64, ptr %b.cur.len739, align 8
  %b.byte.gep741 = getelementptr i8, ptr %b.cur.data738, i64 %b.cur.len740
  store i8 %b.byte.i8713, ptr %b.byte.gep741, align 1
  %b.next.len742 = add i64 %b.cur.len740, 1
  %b.nul743 = getelementptr i8, ptr %b.cur.data738, i64 %b.next.len742
  store i8 0, ptr %b.nul743, align 1
  %b.len.gep744 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 0
  store i64 %b.next.len742, ptr %b.len.gep744, align 8
  br label %loop.latch.21

b.new.buf.len730:                                 ; preds = %str_overflow_abort731, %b.grow721
  %arena.cur732 = call ptr @dva_arena_current()
  %b.new.buf733 = call ptr @dva_arena_alloc(ptr %arena.cur732, i64 %sum728)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf733, ptr align 1 %b.data719, i64 %b.len715, i1 false)
  %b.grow.nul734 = getelementptr i8, ptr %b.new.buf733, i64 %b.len715
  store i8 0, ptr %b.grow.nul734, align 1
  %b.new.data.gep735 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 1
  store ptr %b.new.buf733, ptr %b.new.data.gep735, align 8
  %b.new.cap.gep736 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load685, i32 0, i32 2
  store i64 %b.new.cap726, ptr %b.new.cap.gep736, align 8
  br label %b.push_done723

str_overflow_abort731:                            ; preds = %b.grow721
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len730

b.freeze.check756:                                ; preds = %choice.exit224
  %b.freeze.last.idx759 = sub i64 %b.freeze.nc754, 1
  %b.freeze.chunks.gep760 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena752, i32 0, i32 3
  %b.freeze.chunk.slot761 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep760, i64 0, i64 %b.freeze.last.idx759
  %b.freeze.last.chunk762 = load ptr, ptr %b.freeze.chunk.slot761, align 8
  %b.freeze.off.gep763 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena752, i32 0, i32 2
  %b.freeze.off764 = load i64, ptr %b.freeze.off.gep763, align 8
  %b.freeze.bump765 = getelementptr i8, ptr %b.freeze.last.chunk762, i64 %b.freeze.off764
  %b.freeze.cap.gep766 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena752, i32 0, i32 0
  %b.freeze.cap767 = load i64, ptr %b.freeze.cap.gep766, align 8
  %b.freeze.chunk.end768 = getelementptr i8, ptr %b.freeze.last.chunk762, i64 %b.freeze.cap767
  %b.freeze.ge.chunk769 = icmp uge ptr %b.freeze.data751, %b.freeze.last.chunk762
  %b.freeze.lt.end770 = icmp ult ptr %b.freeze.data751, %b.freeze.chunk.end768
  %b.freeze.in.chunk771 = and i1 %b.freeze.ge.chunk769, %b.freeze.lt.end770
  %b.freeze.ge.bump772 = icmp uge ptr %b.freeze.data751, %b.freeze.bump765
  %b.freeze.reaped773 = and i1 %b.freeze.in.chunk771, %b.freeze.ge.bump772
  br i1 %b.freeze.reaped773, label %b.freeze.copy757, label %b.freeze.done758

b.freeze.copy757:                                 ; preds = %b.freeze.check756
  %b.freeze.alen774 = add i64 %b.freeze.len749, 1
  %arena.cur775 = call ptr @dva_arena_current()
  %b.freeze.fresh776 = call ptr @dva_arena_alloc(ptr %arena.cur775, i64 %b.freeze.alen774)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh776, ptr align 1 %b.freeze.data751, i64 %b.freeze.len749, i1 false)
  %b.freeze.nul777 = getelementptr i8, ptr %b.freeze.fresh776, i64 %b.freeze.len749
  store i8 0, ptr %b.freeze.nul777, align 1
  br label %b.freeze.done758

b.freeze.done758:                                 ; preds = %b.freeze.copy757, %b.freeze.check756, %choice.exit224
  %b.freeze.data778 = phi ptr [ %b.freeze.data751, %choice.exit224 ], [ %b.freeze.data751, %b.freeze.check756 ], [ %b.freeze.fresh776, %b.freeze.copy757 ]
  %arena.cur779 = call ptr @dva_arena_current()
  %builder.freeze780 = call ptr @dva_arena_alloc(ptr %arena.cur779, i64 16)
  %str.build.len.gep781 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze780, i32 0, i32 0
  store i64 %b.freeze.len749, ptr %str.build.len.gep781, align 8
  %str.build.data.gep782 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze780, i32 0, i32 1
  store ptr %b.freeze.data778, ptr %str.build.data.gep782, align 8
  %b.freeze.rst.len783 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len783, align 8
  %b.freeze.rst.data784 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data784, align 8
  %b.freeze.rst.cap785 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load747, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap785, align 8
  store ptr %builder.freeze780, ptr %var.full, align 8
  store i64 -1, ptr %"var.dot_pos'", align 8
  %var.load786 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load786, i32 0, i32 0
  %str.len.query787 = load i64, ptr %str.len.query, align 8
  %str.len.query788 = and i64 %str.len.query787, 281474976710655
  %str.tag789 = lshr i64 %str.len.query787, 48
  %str.immortal790 = icmp eq i64 %str.tag789, 0
  br i1 %str.immortal790, label %str_ok792, label %str_gen_check791

str_gen_check791:                                 ; preds = %b.freeze.done758
  %arena.cur794 = call ptr @dva_arena_current()
  %tag.valid795 = call i1 @dva_arena_validate_tag(ptr %arena.cur794, i64 %str.tag789)
  br i1 %tag.valid795, label %str_ok792, label %str_stale793

str_ok792:                                        ; preds = %str_stale793, %str_gen_check791, %b.freeze.done758
  store i64 0, ptr %loop.idx.22, align 8
  br label %loop.header.22

str_stale793:                                     ; preds = %str_gen_check791
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok792

loop.header.22:                                   ; preds = %loop.latch.22, %str_ok792
  %counter.load796 = load i64, ptr %loop.idx.22, align 8
  %loop.cond797 = icmp slt i64 %counter.load796, %str.len.query788
  br i1 %loop.cond797, label %loop.body.22, label %loop.exit.nat.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i798 = sub i64 %counter.load796, 0
  store i64 1, ptr %loop.step.22, align 8
  store i64 %loop.rel.i798, ptr %var._i799, align 8
  store i64 %counter.load796, ptr %var._800, align 8
  store i64 %counter.load796, ptr %var.i, align 8
  %var.load801 = load ptr, ptr %var.full, align 8
  %s.read.len802 = getelementptr inbounds { i64, ptr }, ptr %var.load801, i32 0, i32 0
  %s.read.len803 = load i64, ptr %s.read.len802, align 8
  %s.read.len804 = and i64 %s.read.len803, 281474976710655
  %str.tag805 = lshr i64 %s.read.len803, 48
  %str.immortal806 = icmp eq i64 %str.tag805, 0
  br i1 %str.immortal806, label %str_ok808, label %str_gen_check807

loop.exit.nat.22:                                 ; preds = %loop.header.22
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %choice.exit825
  %step.val827 = load i64, ptr %loop.step.22, align 8
  %loop.next828 = add i64 %counter.load796, %step.val827
  store i64 %loop.next828, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %loop.exit.nat.22
  %var.load829 = load ptr, ptr %var.full, align 8
  %str.len.query830 = getelementptr inbounds { i64, ptr }, ptr %var.load829, i32 0, i32 0
  %str.len.query831 = load i64, ptr %str.len.query830, align 8
  %str.len.query832 = and i64 %str.len.query831, 281474976710655
  %str.tag833 = lshr i64 %str.len.query831, 48
  %str.immortal834 = icmp eq i64 %str.tag833, 0
  br i1 %str.immortal834, label %str_ok836, label %str_gen_check835

str_gen_check807:                                 ; preds = %loop.body.22
  %arena.cur810 = call ptr @dva_arena_current()
  %tag.valid811 = call i1 @dva_arena_validate_tag(ptr %arena.cur810, i64 %str.tag805)
  br i1 %tag.valid811, label %str_ok808, label %str_stale809

str_ok808:                                        ; preds = %str_stale809, %str_gen_check807, %loop.body.22
  %s.read.data812 = getelementptr inbounds { i64, ptr }, ptr %var.load801, i32 0, i32 1
  %s.read.data813 = load ptr, ptr %s.read.data812, align 8
  %var.load814 = load i64, ptr %var.i, align 8
  %idx.neg815 = icmp slt i64 %var.load814, 0
  br i1 %idx.neg815, label %idx_oob818, label %idx_big_check816

str_stale809:                                     ; preds = %str_gen_check807
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok808

idx_big_check816:                                 ; preds = %str_ok808
  %idx.big819 = icmp sge i64 %var.load814, %s.read.len804
  br i1 %idx.big819, label %idx_oob818, label %idx_ok817

idx_ok817:                                        ; preds = %idx_oob818, %idx_big_check816
  %s.byte.gep820 = getelementptr i8, ptr %s.read.data813, i64 %var.load814
  %s.byte821 = load i8, ptr %s.byte.gep820, align 1
  %s.byte.val822 = zext i8 %s.byte821 to i64
  %cmptmp823 = icmp eq i64 %s.byte.val822, 46
  br i1 %cmptmp823, label %choice.then824, label %choice.exit825

idx_oob818:                                       ; preds = %idx_big_check816, %str_ok808
  %44 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok817

choice.then824:                                   ; preds = %idx_ok817
  %var.load826 = load i64, ptr %var.i, align 8
  store i64 %var.load826, ptr %"var.dot_pos'", align 8
  br label %choice.exit825

choice.exit825:                                   ; preds = %choice.then824, %idx_ok817
  br label %loop.latch.22

str_gen_check835:                                 ; preds = %loop.exit.22
  %arena.cur838 = call ptr @dva_arena_current()
  %tag.valid839 = call i1 @dva_arena_validate_tag(ptr %arena.cur838, i64 %str.tag833)
  br i1 %tag.valid839, label %str_ok836, label %str_stale837

str_ok836:                                        ; preds = %str_stale837, %str_gen_check835, %loop.exit.22
  store i64 %str.len.query832, ptr %var.len, align 8
  %var.load840 = load i64, ptr %var.len, align 8
  store i64 %var.load840, ptr %"var.end'", align 8
  %var.load841 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp842 = icmp sge i64 %var.load841, 0
  br i1 %cmptmp842, label %choice.then843, label %choice.exit844

str_stale837:                                     ; preds = %str_gen_check835
  %45 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok836

choice.then843:                                   ; preds = %str_ok836
  store i64 0, ptr %loop.idx.23, align 8
  br label %loop.header.23

choice.exit844:                                   ; preds = %choice.exit889, %str_ok836
  %var.load891 = load ptr, ptr %var.full, align 8
  %s.read.len892 = getelementptr inbounds { i64, ptr }, ptr %var.load891, i32 0, i32 0
  %s.read.len893 = load i64, ptr %s.read.len892, align 8
  %s.read.len894 = and i64 %s.read.len893, 281474976710655
  %str.tag895 = lshr i64 %s.read.len893, 48
  %str.immortal896 = icmp eq i64 %str.tag895, 0
  br i1 %str.immortal896, label %str_ok898, label %str_gen_check897

loop.header.23:                                   ; preds = %loop.latch.23, %choice.then843
  %counter.load845 = load i64, ptr %loop.idx.23, align 8
  br label %loop.body.23

loop.body.23:                                     ; preds = %loop.header.23
  %loop.rel.i846 = sub i64 %counter.load845, 0
  store i64 1, ptr %loop.step.23, align 8
  store i64 %loop.rel.i846, ptr %var._i847, align 8
  store i64 %counter.load845, ptr %var._848, align 8
  %var.load849 = load i64, ptr %"var.end'", align 8
  %subtmp850 = sub i64 %var.load849, 1
  %var.load851 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp852 = icmp sgt i64 %subtmp850, %var.load851
  br i1 %cmptmp852, label %and.24.then, label %and.24.else

loop.exit.nat.23:                                 ; No predecessors!
  br label %loop.exit.23

loop.latch.23:                                    ; preds = %choice.exit879
  %step.val882 = load i64, ptr %loop.step.23, align 8
  %loop.next883 = add i64 %counter.load845, %step.val882
  store i64 %loop.next883, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.exit.23:                                     ; preds = %choice.else878, %loop.exit.nat.23
  %var.load884 = load i64, ptr %"var.end'", align 8
  %subtmp885 = sub i64 %var.load884, 1
  %var.load886 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp887 = icmp eq i64 %subtmp885, %var.load886
  br i1 %cmptmp887, label %choice.then888, label %choice.exit889

and.24.then:                                      ; preds = %loop.body.23
  %var.load853 = load ptr, ptr %var.full, align 8
  %s.read.len854 = getelementptr inbounds { i64, ptr }, ptr %var.load853, i32 0, i32 0
  %s.read.len855 = load i64, ptr %s.read.len854, align 8
  %s.read.len856 = and i64 %s.read.len855, 281474976710655
  %str.tag857 = lshr i64 %s.read.len855, 48
  %str.immortal858 = icmp eq i64 %str.tag857, 0
  br i1 %str.immortal858, label %str_ok860, label %str_gen_check859

and.24.else:                                      ; preds = %loop.body.23
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %idx_ok870
  %and.24.phi = phi i1 [ %cmptmp876, %idx_ok870 ], [ %cmptmp852, %and.24.else ]
  br i1 %and.24.phi, label %choice.then877, label %choice.else878

str_gen_check859:                                 ; preds = %and.24.then
  %arena.cur862 = call ptr @dva_arena_current()
  %tag.valid863 = call i1 @dva_arena_validate_tag(ptr %arena.cur862, i64 %str.tag857)
  br i1 %tag.valid863, label %str_ok860, label %str_stale861

str_ok860:                                        ; preds = %str_stale861, %str_gen_check859, %and.24.then
  %s.read.data864 = getelementptr inbounds { i64, ptr }, ptr %var.load853, i32 0, i32 1
  %s.read.data865 = load ptr, ptr %s.read.data864, align 8
  %var.load866 = load i64, ptr %"var.end'", align 8
  %subtmp867 = sub i64 %var.load866, 1
  %idx.neg868 = icmp slt i64 %subtmp867, 0
  br i1 %idx.neg868, label %idx_oob871, label %idx_big_check869

str_stale861:                                     ; preds = %str_gen_check859
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok860

idx_big_check869:                                 ; preds = %str_ok860
  %idx.big872 = icmp sge i64 %subtmp867, %s.read.len856
  br i1 %idx.big872, label %idx_oob871, label %idx_ok870

idx_ok870:                                        ; preds = %idx_oob871, %idx_big_check869
  %s.byte.gep873 = getelementptr i8, ptr %s.read.data865, i64 %subtmp867
  %s.byte874 = load i8, ptr %s.byte.gep873, align 1
  %s.byte.val875 = zext i8 %s.byte874 to i64
  %cmptmp876 = icmp eq i64 %s.byte.val875, 48
  br label %and.24.exit

idx_oob871:                                       ; preds = %idx_big_check869, %str_ok860
  %47 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok870

choice.then877:                                   ; preds = %and.24.exit
  %var.load880 = load i64, ptr %"var.end'", align 8
  %subtmp881 = sub i64 %var.load880, 1
  store i64 %subtmp881, ptr %"var.end'", align 8
  br label %choice.exit879

choice.else878:                                   ; preds = %and.24.exit
  br label %loop.exit.23

choice.exit879:                                   ; preds = %choice.then877
  br label %loop.latch.23

choice.then888:                                   ; preds = %loop.exit.23
  %var.load890 = load i64, ptr %"var.dot_pos'", align 8
  store i64 %var.load890, ptr %"var.end'", align 8
  br label %choice.exit889

choice.exit889:                                   ; preds = %choice.then888, %loop.exit.23
  br label %choice.exit844

str_gen_check897:                                 ; preds = %choice.exit844
  %arena.cur900 = call ptr @dva_arena_current()
  %tag.valid901 = call i1 @dva_arena_validate_tag(ptr %arena.cur900, i64 %str.tag895)
  br i1 %tag.valid901, label %str_ok898, label %str_stale899

str_ok898:                                        ; preds = %str_stale899, %str_gen_check897, %choice.exit844
  %s.read.data902 = getelementptr inbounds { i64, ptr }, ptr %var.load891, i32 0, i32 1
  %s.read.data903 = load ptr, ptr %s.read.data902, align 8
  %var.load904 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len894, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len894
  %final.start = select i1 %start.gt.len, i64 %s.read.len894, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load904, 0
  %rel.end = add i64 %s.read.len894, %var.load904
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load904
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len894
  %final.end = select i1 %end.gt.len, i64 %s.read.len894, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data903, i64 %final.start
  %arena.cur905 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur905, i64 16)
  %str.build.len.gep906 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep906, align 8
  %str.build.data.gep907 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep907, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load908 = load i64, ptr %"var.e'", align 8
  %cmptmp909 = icmp slt i64 %var.load908, 0
  br i1 %cmptmp909, label %choice.then910, label %choice.else911

str_stale899:                                     ; preds = %str_gen_check897
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok898

choice.then910:                                   ; preds = %str_ok898
  %var.load913 = load i64, ptr %"var.e'", align 8
  %subtmp914 = sub i64 0, %var.load913
  %call.res915 = call ptr @"str::from_int"(i64 %subtmp914)
  %concat.lhs = load i64, ptr @str.7.struct, align 8
  %concat.lhs916 = and i64 %concat.lhs, 281474976710655
  %str.tag917 = lshr i64 %concat.lhs, 48
  %str.immortal918 = icmp eq i64 %str.tag917, 0
  br i1 %str.immortal918, label %str_ok920, label %str_gen_check919

choice.else911:                                   ; preds = %str_ok898
  %var.load948 = load i64, ptr %"var.e'", align 8
  %call.res949 = call ptr @"str::from_int"(i64 %var.load948)
  br label %choice.exit912

choice.exit912:                                   ; preds = %choice.else911, %concat.tot.len942
  %choice.res950 = phi ptr [ %concat.str, %concat.tot.len942 ], [ %call.res949, %choice.else911 ]
  store ptr %choice.res950, ptr %var.es, align 8
  %var.load951 = load i64, ptr %"var.e'", align 8
  %cmptmp952 = icmp slt i64 %var.load951, -4
  br i1 %cmptmp952, label %or.25.then, label %or.25.else

str_gen_check919:                                 ; preds = %choice.then910
  %arena.cur922 = call ptr @dva_arena_current()
  %tag.valid923 = call i1 @dva_arena_validate_tag(ptr %arena.cur922, i64 %str.tag917)
  br i1 %tag.valid923, label %str_ok920, label %str_stale921

str_ok920:                                        ; preds = %str_stale921, %str_gen_check919, %choice.then910
  %concat.lhs924 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res915, i32 0, i32 0
  %concat.rhs925 = load i64, ptr %concat.rhs, align 8
  %concat.rhs926 = and i64 %concat.rhs925, 281474976710655
  %str.tag927 = lshr i64 %concat.rhs925, 48
  %str.immortal928 = icmp eq i64 %str.tag927, 0
  br i1 %str.immortal928, label %str_ok930, label %str_gen_check929

str_stale921:                                     ; preds = %str_gen_check919
  %49 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok920

str_gen_check929:                                 ; preds = %str_ok920
  %arena.cur932 = call ptr @dva_arena_current()
  %tag.valid933 = call i1 @dva_arena_validate_tag(ptr %arena.cur932, i64 %str.tag927)
  br i1 %tag.valid933, label %str_ok930, label %str_stale931

str_ok930:                                        ; preds = %str_stale931, %str_gen_check929, %str_ok920
  %concat.rhs934 = getelementptr inbounds { i64, ptr }, ptr %call.res915, i32 0, i32 1
  %concat.rhs935 = load ptr, ptr %concat.rhs934, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs916, i64 %concat.rhs926)
  %sum936 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf937 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf937, label %str_overflow_abort939, label %concat.sum.len938

str_stale931:                                     ; preds = %str_gen_check929
  %50 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok930

concat.sum.len938:                                ; preds = %str_overflow_abort939, %str_ok930
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum936, i64 1)
  %sum940 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf941 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf941, label %str_overflow_abort943, label %concat.tot.len942

str_overflow_abort939:                            ; preds = %str_ok930
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len938

concat.tot.len942:                                ; preds = %str_overflow_abort943, %concat.sum.len938
  %arena.cur944 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur944, i64 %sum940)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs924, i64 %concat.lhs916, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs916
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs935, i64 %concat.rhs926, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum936
  store i8 0, ptr %concat.nul, align 1
  %arena.cur945 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur945, i64 16)
  %str.build.len.gep946 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum936, ptr %str.build.len.gep946, align 8
  %str.build.data.gep947 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep947, align 8
  br label %choice.exit912

str_overflow_abort943:                            ; preds = %concat.sum.len938
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len942

or.25.then:                                       ; preds = %choice.exit912
  br label %or.25.exit

or.25.else:                                       ; preds = %choice.exit912
  %var.load953 = load i64, ptr %"var.e'", align 8
  %cmptmp954 = icmp sge i64 %var.load953, 6
  br label %or.25.exit

or.25.exit:                                       ; preds = %or.25.else, %or.25.then
  %or.25.phi = phi i1 [ %cmptmp952, %or.25.then ], [ %cmptmp954, %or.25.else ]
  br i1 %or.25.phi, label %choice.then955, label %choice.else956

choice.then955:                                   ; preds = %or.25.exit
  %var.load958 = load ptr, ptr %var.mant, align 8
  %concat.lhs959 = getelementptr inbounds { i64, ptr }, ptr %var.load958, i32 0, i32 0
  %concat.lhs960 = load i64, ptr %concat.lhs959, align 8
  %concat.lhs961 = and i64 %concat.lhs960, 281474976710655
  %str.tag962 = lshr i64 %concat.lhs960, 48
  %str.immortal963 = icmp eq i64 %str.tag962, 0
  br i1 %str.immortal963, label %str_ok965, label %str_gen_check964

choice.else956:                                   ; preds = %or.25.exit
  %var.load1042 = load ptr, ptr %var.mant, align 8
  br label %choice.exit957

choice.exit957:                                   ; preds = %choice.else956, %concat.tot.len1032
  %choice.res1043 = phi ptr [ %concat.str1039, %concat.tot.len1032 ], [ %var.load1042, %choice.else956 ]
  ret ptr %choice.res1043

str_gen_check964:                                 ; preds = %choice.then955
  %arena.cur967 = call ptr @dva_arena_current()
  %tag.valid968 = call i1 @dva_arena_validate_tag(ptr %arena.cur967, i64 %str.tag962)
  br i1 %tag.valid968, label %str_ok965, label %str_stale966

str_ok965:                                        ; preds = %str_stale966, %str_gen_check964, %choice.then955
  %concat.lhs969 = getelementptr inbounds { i64, ptr }, ptr %var.load958, i32 0, i32 1
  %concat.lhs970 = load ptr, ptr %concat.lhs969, align 8
  %concat.rhs971 = load i64, ptr @str.8.struct, align 8
  %concat.rhs972 = and i64 %concat.rhs971, 281474976710655
  %str.tag973 = lshr i64 %concat.rhs971, 48
  %str.immortal974 = icmp eq i64 %str.tag973, 0
  br i1 %str.immortal974, label %str_ok976, label %str_gen_check975

str_stale966:                                     ; preds = %str_gen_check964
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok965

str_gen_check975:                                 ; preds = %str_ok965
  %arena.cur978 = call ptr @dva_arena_current()
  %tag.valid979 = call i1 @dva_arena_validate_tag(ptr %arena.cur978, i64 %str.tag973)
  br i1 %tag.valid979, label %str_ok976, label %str_stale977

str_ok976:                                        ; preds = %str_stale977, %str_gen_check975, %str_ok965
  %concat.rhs980 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len981 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs961, i64 %concat.rhs972)
  %sum982 = extractvalue { i64, i1 } %concat.sum.len981, 0
  %ovf983 = extractvalue { i64, i1 } %concat.sum.len981, 1
  br i1 %ovf983, label %str_overflow_abort985, label %concat.sum.len984

str_stale977:                                     ; preds = %str_gen_check975
  %54 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok976

concat.sum.len984:                                ; preds = %str_overflow_abort985, %str_ok976
  %concat.tot.len986 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum982, i64 1)
  %sum987 = extractvalue { i64, i1 } %concat.tot.len986, 0
  %ovf988 = extractvalue { i64, i1 } %concat.tot.len986, 1
  br i1 %ovf988, label %str_overflow_abort990, label %concat.tot.len989

str_overflow_abort985:                            ; preds = %str_ok976
  %55 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len984

concat.tot.len989:                                ; preds = %str_overflow_abort990, %concat.sum.len984
  %arena.cur991 = call ptr @dva_arena_current()
  %concat.buf992 = call ptr @dva_arena_alloc(ptr %arena.cur991, i64 %sum987)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf992, ptr align 1 %concat.lhs970, i64 %concat.lhs961, i1 false)
  %concat.mid993 = getelementptr i8, ptr %concat.buf992, i64 %concat.lhs961
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid993, ptr align 1 %concat.rhs980, i64 %concat.rhs972, i1 false)
  %concat.nul994 = getelementptr i8, ptr %concat.buf992, i64 %sum982
  store i8 0, ptr %concat.nul994, align 1
  %arena.cur995 = call ptr @dva_arena_current()
  %concat.str996 = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 16)
  %str.build.len.gep997 = getelementptr inbounds { i64, ptr }, ptr %concat.str996, i32 0, i32 0
  store i64 %sum982, ptr %str.build.len.gep997, align 8
  %str.build.data.gep998 = getelementptr inbounds { i64, ptr }, ptr %concat.str996, i32 0, i32 1
  store ptr %concat.buf992, ptr %str.build.data.gep998, align 8
  %var.load999 = load ptr, ptr %var.es, align 8
  %concat.lhs1000 = getelementptr inbounds { i64, ptr }, ptr %concat.str996, i32 0, i32 0
  %concat.lhs1001 = load i64, ptr %concat.lhs1000, align 8
  %concat.lhs1002 = and i64 %concat.lhs1001, 281474976710655
  %str.tag1003 = lshr i64 %concat.lhs1001, 48
  %str.immortal1004 = icmp eq i64 %str.tag1003, 0
  br i1 %str.immortal1004, label %str_ok1006, label %str_gen_check1005

str_overflow_abort990:                            ; preds = %concat.sum.len984
  %56 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len989

str_gen_check1005:                                ; preds = %concat.tot.len989
  %arena.cur1008 = call ptr @dva_arena_current()
  %tag.valid1009 = call i1 @dva_arena_validate_tag(ptr %arena.cur1008, i64 %str.tag1003)
  br i1 %tag.valid1009, label %str_ok1006, label %str_stale1007

str_ok1006:                                       ; preds = %str_stale1007, %str_gen_check1005, %concat.tot.len989
  %concat.lhs1010 = getelementptr inbounds { i64, ptr }, ptr %concat.str996, i32 0, i32 1
  %concat.lhs1011 = load ptr, ptr %concat.lhs1010, align 8
  %concat.rhs1012 = getelementptr inbounds { i64, ptr }, ptr %var.load999, i32 0, i32 0
  %concat.rhs1013 = load i64, ptr %concat.rhs1012, align 8
  %concat.rhs1014 = and i64 %concat.rhs1013, 281474976710655
  %str.tag1015 = lshr i64 %concat.rhs1013, 48
  %str.immortal1016 = icmp eq i64 %str.tag1015, 0
  br i1 %str.immortal1016, label %str_ok1018, label %str_gen_check1017

str_stale1007:                                    ; preds = %str_gen_check1005
  %57 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1006

str_gen_check1017:                                ; preds = %str_ok1006
  %arena.cur1020 = call ptr @dva_arena_current()
  %tag.valid1021 = call i1 @dva_arena_validate_tag(ptr %arena.cur1020, i64 %str.tag1015)
  br i1 %tag.valid1021, label %str_ok1018, label %str_stale1019

str_ok1018:                                       ; preds = %str_stale1019, %str_gen_check1017, %str_ok1006
  %concat.rhs1022 = getelementptr inbounds { i64, ptr }, ptr %var.load999, i32 0, i32 1
  %concat.rhs1023 = load ptr, ptr %concat.rhs1022, align 8
  %concat.sum.len1024 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1002, i64 %concat.rhs1014)
  %sum1025 = extractvalue { i64, i1 } %concat.sum.len1024, 0
  %ovf1026 = extractvalue { i64, i1 } %concat.sum.len1024, 1
  br i1 %ovf1026, label %str_overflow_abort1028, label %concat.sum.len1027

str_stale1019:                                    ; preds = %str_gen_check1017
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1018

concat.sum.len1027:                               ; preds = %str_overflow_abort1028, %str_ok1018
  %concat.tot.len1029 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1025, i64 1)
  %sum1030 = extractvalue { i64, i1 } %concat.tot.len1029, 0
  %ovf1031 = extractvalue { i64, i1 } %concat.tot.len1029, 1
  br i1 %ovf1031, label %str_overflow_abort1033, label %concat.tot.len1032

str_overflow_abort1028:                           ; preds = %str_ok1018
  %59 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1027

concat.tot.len1032:                               ; preds = %str_overflow_abort1033, %concat.sum.len1027
  %arena.cur1034 = call ptr @dva_arena_current()
  %concat.buf1035 = call ptr @dva_arena_alloc(ptr %arena.cur1034, i64 %sum1030)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1035, ptr align 1 %concat.lhs1011, i64 %concat.lhs1002, i1 false)
  %concat.mid1036 = getelementptr i8, ptr %concat.buf1035, i64 %concat.lhs1002
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1036, ptr align 1 %concat.rhs1023, i64 %concat.rhs1014, i1 false)
  %concat.nul1037 = getelementptr i8, ptr %concat.buf1035, i64 %sum1025
  store i8 0, ptr %concat.nul1037, align 1
  %arena.cur1038 = call ptr @dva_arena_current()
  %concat.str1039 = call ptr @dva_arena_alloc(ptr %arena.cur1038, i64 16)
  %str.build.len.gep1040 = getelementptr inbounds { i64, ptr }, ptr %concat.str1039, i32 0, i32 0
  store i64 %sum1025, ptr %str.build.len.gep1040, align 8
  %str.build.data.gep1041 = getelementptr inbounds { i64, ptr }, ptr %concat.str1039, i32 0, i32 1
  store ptr %concat.buf1035, ptr %str.build.data.gep1041, align 8
  br label %choice.exit957

str_overflow_abort1033:                           ; preds = %concat.sum.len1027
  %60 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1032
}

define i64 @"str::cmp"(ptr %0, ptr %1) #1 {
entry:
  %var.cb = alloca i64, align 8
  %var.ca = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.header.26:                                   ; preds = %loop.latch.26, %choice.exit
  %counter.load = load i64, ptr %loop.idx.26, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load18
  br i1 %loop.cond, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.26, align 8
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

loop.exit.nat.26:                                 ; preds = %loop.header.26
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %choice.exit57
  %step.val = load i64, ptr %loop.step.26, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %choice.exit63, %loop.exit.nat.26
  %var.load65 = load i64, ptr %"var.r'", align 8
  %cmptmp66 = icmp ne i64 %var.load65, 0
  br i1 %cmptmp66, label %choice.then67, label %choice.else68

str_gen_check24:                                  ; preds = %loop.body.26
  %arena.cur27 = call ptr @dva_arena_current()
  %tag.valid28 = call i1 @dva_arena_validate_tag(ptr %arena.cur27, i64 %str.tag22)
  br i1 %tag.valid28, label %str_ok25, label %str_stale26

str_ok25:                                         ; preds = %str_stale26, %str_gen_check24, %loop.body.26
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
  br label %loop.latch.26

choice.then61:                                    ; preds = %choice.then56
  br label %choice.exit63

choice.else62:                                    ; preds = %choice.then56
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else62, %choice.then61
  %choice.res64 = phi i64 [ -1, %choice.then61 ], [ 1, %choice.else62 ]
  store i64 %choice.res64, ptr %"var.r'", align 8
  br label %loop.exit.26

choice.then67:                                    ; preds = %loop.exit.26
  %var.load70 = load i64, ptr %"var.r'", align 8
  br label %choice.exit69

choice.else68:                                    ; preds = %loop.exit.26
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
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.27, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.27

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.27:                                   ; preds = %loop.latch.27, %str_ok
  %counter.load = load i64, ptr %loop.idx.27, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.27, label %loop.exit.nat.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.27, align 8
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

loop.exit.nat.27:                                 ; preds = %loop.header.27
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.27, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %choice.then, %loop.exit.nat.27
  %var.load7 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load7, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.27
  br label %loop.exit.27

choice.exit:                                      ; preds = %loop.body.27
  %var.load5 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load5, 10
  %var.load6 = load i64, ptr %var.b, align 8
  %subtmp = sub i64 %var.load6, 48
  %addtmp = add i64 %multmp, %subtmp
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %loop.latch.27

choice.exit8:                                     ; preds = %choice.next, %ret.dead
  %var.load9 = load i64, ptr %"var.val'", align 8
  %var.load10 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load10, i32 0, i32 0
  %s.read.len11 = load i64, ptr %s.read.len, align 8
  %s.read.len12 = and i64 %s.read.len11, 281474976710655
  %str.tag13 = lshr i64 %s.read.len11, 48
  %str.immortal14 = icmp eq i64 %str.tag13, 0
  br i1 %str.immortal14, label %str_ok16, label %str_gen_check15

choice.case:                                      ; preds = %loop.exit.27
  ret ptr null

choice.next:                                      ; preds = %loop.exit.27
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
  %var.d = alloca i64, align 8
  %var._5 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.b = alloca i64, align 8
  %loop.step.28 = alloca i64, align 8
  %loop.idx.28 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.28, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.28

str_stale:                                        ; preds = %str_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.28:                                   ; preds = %loop.latch.28, %str_ok
  %counter.load = load i64, ptr %loop.idx.28, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len2
  br i1 %loop.cond, label %loop.body.28, label %loop.exit.nat.28

loop.body.28:                                     ; preds = %loop.header.28
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.28, align 8
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

loop.exit.nat.28:                                 ; preds = %loop.header.28
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.28

loop.latch.28:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.28, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.28, align 8
  br label %loop.header.28

loop.exit.28:                                     ; preds = %choice.else, %loop.exit.nat.28
  %var.load8 = load i64, ptr %var.i, align 8
  %val.match = icmp eq i64 %var.load8, 0
  br i1 %val.match, label %choice.case, label %choice.next

choice.then:                                      ; preds = %loop.body.28
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  store i64 %ram.pay, ptr %var._5, align 8
  store i64 %ram.pay, ptr %var.d, align 8
  %var.load6 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load6, 16
  %var.load7 = load i64, ptr %var.d, align 8
  %addtmp = add i64 %multmp, %var.load7
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %choice.exit

choice.else:                                      ; preds = %loop.body.28
  br label %loop.exit.28

choice.exit:                                      ; preds = %choice.then
  br label %loop.latch.28

choice.exit9:                                     ; preds = %choice.next, %ret.dead
  %var.load10 = load i64, ptr %"var.val'", align 8
  %var.load11 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %s.read.len12 = load i64, ptr %s.read.len, align 8
  %s.read.len13 = and i64 %s.read.len12, 281474976710655
  %str.tag14 = lshr i64 %s.read.len12, 48
  %str.immortal15 = icmp eq i64 %str.tag14, 0
  br i1 %str.immortal15, label %str_ok17, label %str_gen_check16

choice.case:                                      ; preds = %loop.exit.28
  ret ptr null

choice.next:                                      ; preds = %loop.exit.28
  br label %choice.exit9

ret.dead:                                         ; No predecessors!
  br label %choice.exit9

str_gen_check16:                                  ; preds = %choice.exit9
  %arena.cur19 = call ptr @dva_arena_current()
  %tag.valid20 = call i1 @dva_arena_validate_tag(ptr %arena.cur19, i64 %str.tag14)
  br i1 %tag.valid20, label %str_ok17, label %str_stale18

str_ok17:                                         ; preds = %str_stale18, %str_gen_check16, %choice.exit9
  %s.read.data21 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %s.read.data22 = load ptr, ptr %s.read.data21, align 8
  %var.load23 = load i64, ptr %var.i, align 8
  %start.is_neg = icmp slt i64 %var.load23, 0
  %rel.start = add i64 %s.read.len13, %var.load23
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load23
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
  %view.data = getelementptr i8, ptr %s.read.data22, i64 %final.start
  %arena.cur24 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur24, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  %arena.cur25 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 ptrtoint (ptr getelementptr ({ i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load10, ptr %rec.fld, align 8
  %rec.fld26 = getelementptr inbounds { i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %str.view, ptr %rec.fld26, align 8
  ret ptr %rec.alloc

str_stale18:                                      ; preds = %str_gen_check16
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok17
}

declare { i1, i64 } @"ascii::hex_value"(i64) #1

define ptr @"str::hex_to_str"(i64 %0) #1 {
entry:
  %var._166 = alloca i64, align 8
  %var._i165 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.33 = alloca i64, align 8
  %loop.idx.33 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var.digit = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
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
  ret ptr @str.9.struct

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
  %cmptmp = icmp slt i64 %var.load3, 0
  store i1 %cmptmp, ptr %var.neg, align 1
  %var.load4 = load i1, ptr %var.neg, align 1
  br i1 %var.load4, label %choice.then, label %choice.else

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.header.29:                                   ; preds = %loop.latch.29, %choice.exit5
  %counter.load = load i64, ptr %loop.idx.29, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load8 = load i64, ptr %"var.n'", align 8
  %cmptmp12 = icmp ugt i64 %var.load8, 0
  br i1 %cmptmp12, label %choice.case10, label %choice.next11

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit9
  %step.val = load i64, ptr %loop.step.29, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %choice.next11, %loop.exit.nat.29
  %b.load28 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.rn.cur.len29 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len29, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf31 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.rn.new.len32

choice.exit9:                                     ; preds = %b.push_done
  br label %loop.latch.29

choice.case10:                                    ; preds = %loop.body.29
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

choice.next11:                                    ; preds = %loop.body.29
  br label %loop.exit.29

b.byte_ok:                                        ; preds = %b.byte_err, %choice.case10
  %b.byte.i8 = trunc i64 %var.load15 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len16 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap17 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data18 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len16, %b.cap17
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case10
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %b.cur.data24 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len25 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data24, i64 %b.cur.len25
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len25, 1
  %b.nul = getelementptr i8, ptr %b.cur.data24, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep26, align 8
  %var.load27 = load i64, ptr %"var.n'", align 8
  %shrtmp = lshr i64 %var.load27, 4
  store i64 %shrtmp, ptr %"var.n'", align 8
  br label %choice.exit9

b.new.buf.len21:                                  ; preds = %str_overflow_abort22, %b.grow
  %arena.cur23 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 %sum19)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data18, i64 %b.len16, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len16
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort22:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len21

b.rn.new.len32:                                   ; preds = %str_overflow_abort33, %loop.exit.29
  %b.cap34 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  %b.cap35 = load i64, ptr %b.cap34, align 8
  %b.need.grow = icmp slt i64 %b.cap35, %sum30
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort33:                             ; preds = %loop.exit.29
  %4 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len32

b.grow2:                                          ; preds = %b.rn.new.len32
  %b.cap236 = mul i64 %b.cap35, 2
  %b.cap.small37 = icmp slt i64 %b.cap236, 16
  %b.cap.grow = select i1 %b.cap.small37, i64 16, i64 %b.cap236
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum30
  %b.new.cap38 = select i1 %b.cap.need, i64 %sum30, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  %b.cur.len239 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.cur.data240 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap38, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len243

b.nogrow2:                                        ; preds = %b.rn.new.len32
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len243
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  %b.rn.data46 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data46, i64 %b.rn.cur.len29
  br i1 true, label %br.b1.30, label %br.c2.30

b.new.buf.len243:                                 ; preds = %str_overflow_abort44, %b.grow2
  %arena.cur45 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data240, i64 %b.cur.len239, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len239
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 2
  store i64 %b.new.cap38, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort44:                             ; preds = %b.grow2
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len243

br.b1.30:                                         ; preds = %b.grow_done
  store i8 120, ptr %b.rn.dst, align 1
  br label %br.done.30

br.c2.30:                                         ; preds = %b.grow_done
  br i1 true, label %br.b2.30, label %br.c3.30

br.b2.30:                                         ; preds = %br.c2.30
  store i8 -63, ptr %b.rn.dst, align 1
  %br.dst1 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -72, ptr %br.dst1, align 1
  br label %br.done.30

br.c3.30:                                         ; preds = %br.c2.30
  br i1 true, label %br.b3.30, label %br.b4.30

br.b3.30:                                         ; preds = %br.c3.30
  store i8 -32, ptr %b.rn.dst, align 1
  %br.dst1.3 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -127, ptr %br.dst1.3, align 1
  %br.dst2.3 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -72, ptr %br.dst2.3, align 1
  br label %br.done.30

br.b4.30:                                         ; preds = %br.c3.30
  store i8 -16, ptr %b.rn.dst, align 1
  %br.dst1.4 = getelementptr i8, ptr %b.rn.dst, i64 1
  store i8 -128, ptr %br.dst1.4, align 1
  %br.dst2.4 = getelementptr i8, ptr %b.rn.dst, i64 2
  store i8 -127, ptr %br.dst2.4, align 1
  %br.dst3.4 = getelementptr i8, ptr %b.rn.dst, i64 3
  store i8 -72, ptr %br.dst3.4, align 1
  br label %br.done.30

br.done.30:                                       ; preds = %br.b4.30, %br.b3.30, %br.b2.30, %br.b1.30
  %br.nul = getelementptr i8, ptr %b.rn.data46, i64 %sum30
  store i8 0, ptr %br.nul, align 1
  %b.len.gep47 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load28, i32 0, i32 0
  store i64 %sum30, ptr %b.len.gep47, align 8
  %b.load48 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  %b.rn.cur.len50 = load i64, ptr %b.rn.cur.len49, align 8
  %b.rn.new.len51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len50, i64 1)
  %sum52 = extractvalue { i64, i1 } %b.rn.new.len51, 0
  %ovf53 = extractvalue { i64, i1 } %b.rn.new.len51, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.rn.new.len54

b.rn.new.len54:                                   ; preds = %str_overflow_abort55, %br.done.30
  %b.cap56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 2
  %b.cap57 = load i64, ptr %b.cap56, align 8
  %b.need.grow58 = icmp slt i64 %b.cap57, %sum52
  br i1 %b.need.grow58, label %b.grow259, label %b.nogrow260

str_overflow_abort55:                             ; preds = %br.done.30
  %6 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len54

b.grow259:                                        ; preds = %b.rn.new.len54
  %b.cap262 = mul i64 %b.cap57, 2
  %b.cap.small63 = icmp slt i64 %b.cap262, 16
  %b.cap.grow64 = select i1 %b.cap.small63, i64 16, i64 %b.cap262
  %b.cap.need65 = icmp slt i64 %b.cap.grow64, %sum52
  %b.new.cap66 = select i1 %b.cap.need65, i64 %sum52, i64 %b.cap.grow64
  %b.cur.len267 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  %b.cur.len268 = load i64, ptr %b.cur.len267, align 8
  %b.cur.data269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  %b.cur.data270 = load ptr, ptr %b.cur.data269, align 8
  %b.new.buf.len271 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap66, i64 1)
  %sum72 = extractvalue { i64, i1 } %b.new.buf.len271, 0
  %ovf73 = extractvalue { i64, i1 } %b.new.buf.len271, 1
  br i1 %ovf73, label %str_overflow_abort75, label %b.new.buf.len274

b.nogrow260:                                      ; preds = %b.rn.new.len54
  br label %b.grow_done61

b.grow_done61:                                    ; preds = %b.nogrow260, %b.new.buf.len274
  %b.rn.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  %b.rn.data82 = load ptr, ptr %b.rn.data81, align 8
  %b.rn.dst83 = getelementptr i8, ptr %b.rn.data82, i64 %b.rn.cur.len50
  br i1 true, label %br.b1.31, label %br.c2.31

b.new.buf.len274:                                 ; preds = %str_overflow_abort75, %b.grow259
  %arena.cur76 = call ptr @dva_arena_current()
  %b.new.buf277 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 %sum72)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf277, ptr align 1 %b.cur.data270, i64 %b.cur.len268, i1 false)
  %b.grow2.nul78 = getelementptr i8, ptr %b.new.buf277, i64 %b.cur.len268
  store i8 0, ptr %b.grow2.nul78, align 1
  %b.new.data2.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 1
  store ptr %b.new.buf277, ptr %b.new.data2.gep79, align 8
  %b.new.cap2.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 2
  store i64 %b.new.cap66, ptr %b.new.cap2.gep80, align 8
  br label %b.grow_done61

str_overflow_abort75:                             ; preds = %b.grow259
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len274

br.b1.31:                                         ; preds = %b.grow_done61
  store i8 48, ptr %b.rn.dst83, align 1
  br label %br.done.31

br.c2.31:                                         ; preds = %b.grow_done61
  br i1 true, label %br.b2.31, label %br.c3.31

br.b2.31:                                         ; preds = %br.c2.31
  store i8 -64, ptr %b.rn.dst83, align 1
  %br.dst184 = getelementptr i8, ptr %b.rn.dst83, i64 1
  store i8 -80, ptr %br.dst184, align 1
  br label %br.done.31

br.c3.31:                                         ; preds = %br.c2.31
  br i1 true, label %br.b3.31, label %br.b4.31

br.b3.31:                                         ; preds = %br.c3.31
  store i8 -32, ptr %b.rn.dst83, align 1
  %br.dst1.385 = getelementptr i8, ptr %b.rn.dst83, i64 1
  store i8 -128, ptr %br.dst1.385, align 1
  %br.dst2.386 = getelementptr i8, ptr %b.rn.dst83, i64 2
  store i8 -80, ptr %br.dst2.386, align 1
  br label %br.done.31

br.b4.31:                                         ; preds = %br.c3.31
  store i8 -16, ptr %b.rn.dst83, align 1
  %br.dst1.487 = getelementptr i8, ptr %b.rn.dst83, i64 1
  store i8 -128, ptr %br.dst1.487, align 1
  %br.dst2.488 = getelementptr i8, ptr %b.rn.dst83, i64 2
  store i8 -128, ptr %br.dst2.488, align 1
  %br.dst3.489 = getelementptr i8, ptr %b.rn.dst83, i64 3
  store i8 -80, ptr %br.dst3.489, align 1
  br label %br.done.31

br.done.31:                                       ; preds = %br.b4.31, %br.b3.31, %br.b2.31, %br.b1.31
  %br.nul90 = getelementptr i8, ptr %b.rn.data82, i64 %sum52
  store i8 0, ptr %br.nul90, align 1
  %b.len.gep91 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load48, i32 0, i32 0
  store i64 %sum52, ptr %b.len.gep91, align 8
  %var.load92 = load i1, ptr %var.neg, align 1
  br i1 %var.load92, label %choice.then93, label %choice.exit94

choice.then93:                                    ; preds = %br.done.31
  %b.load95 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 0
  %b.rn.cur.len97 = load i64, ptr %b.rn.cur.len96, align 8
  %b.rn.new.len98 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len97, i64 1)
  %sum99 = extractvalue { i64, i1 } %b.rn.new.len98, 0
  %ovf100 = extractvalue { i64, i1 } %b.rn.new.len98, 1
  br i1 %ovf100, label %str_overflow_abort102, label %b.rn.new.len101

choice.exit94:                                    ; preds = %br.done.32, %br.done.31
  %var.load139 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 0
  %b.freeze.len140 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 1
  %b.freeze.data141 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len101:                                  ; preds = %str_overflow_abort102, %choice.then93
  %b.cap103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 2
  %b.cap104 = load i64, ptr %b.cap103, align 8
  %b.need.grow105 = icmp slt i64 %b.cap104, %sum99
  br i1 %b.need.grow105, label %b.grow2106, label %b.nogrow2107

str_overflow_abort102:                            ; preds = %choice.then93
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len101

b.grow2106:                                       ; preds = %b.rn.new.len101
  %b.cap2109 = mul i64 %b.cap104, 2
  %b.cap.small110 = icmp slt i64 %b.cap2109, 16
  %b.cap.grow111 = select i1 %b.cap.small110, i64 16, i64 %b.cap2109
  %b.cap.need112 = icmp slt i64 %b.cap.grow111, %sum99
  %b.new.cap113 = select i1 %b.cap.need112, i64 %sum99, i64 %b.cap.grow111
  %b.cur.len2114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 0
  %b.cur.len2115 = load i64, ptr %b.cur.len2114, align 8
  %b.cur.data2116 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 1
  %b.cur.data2117 = load ptr, ptr %b.cur.data2116, align 8
  %b.new.buf.len2118 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap113, i64 1)
  %sum119 = extractvalue { i64, i1 } %b.new.buf.len2118, 0
  %ovf120 = extractvalue { i64, i1 } %b.new.buf.len2118, 1
  br i1 %ovf120, label %str_overflow_abort122, label %b.new.buf.len2121

b.nogrow2107:                                     ; preds = %b.rn.new.len101
  br label %b.grow_done108

b.grow_done108:                                   ; preds = %b.nogrow2107, %b.new.buf.len2121
  %b.rn.data128 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 1
  %b.rn.data129 = load ptr, ptr %b.rn.data128, align 8
  %b.rn.dst130 = getelementptr i8, ptr %b.rn.data129, i64 %b.rn.cur.len97
  br i1 true, label %br.b1.32, label %br.c2.32

b.new.buf.len2121:                                ; preds = %str_overflow_abort122, %b.grow2106
  %arena.cur123 = call ptr @dva_arena_current()
  %b.new.buf2124 = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 %sum119)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2124, ptr align 1 %b.cur.data2117, i64 %b.cur.len2115, i1 false)
  %b.grow2.nul125 = getelementptr i8, ptr %b.new.buf2124, i64 %b.cur.len2115
  store i8 0, ptr %b.grow2.nul125, align 1
  %b.new.data2.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 1
  store ptr %b.new.buf2124, ptr %b.new.data2.gep126, align 8
  %b.new.cap2.gep127 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 2
  store i64 %b.new.cap113, ptr %b.new.cap2.gep127, align 8
  br label %b.grow_done108

str_overflow_abort122:                            ; preds = %b.grow2106
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2121

br.b1.32:                                         ; preds = %b.grow_done108
  store i8 45, ptr %b.rn.dst130, align 1
  br label %br.done.32

br.c2.32:                                         ; preds = %b.grow_done108
  br i1 true, label %br.b2.32, label %br.c3.32

br.b2.32:                                         ; preds = %br.c2.32
  store i8 -64, ptr %b.rn.dst130, align 1
  %br.dst1131 = getelementptr i8, ptr %b.rn.dst130, i64 1
  store i8 -83, ptr %br.dst1131, align 1
  br label %br.done.32

br.c3.32:                                         ; preds = %br.c2.32
  br i1 true, label %br.b3.32, label %br.b4.32

br.b3.32:                                         ; preds = %br.c3.32
  store i8 -32, ptr %b.rn.dst130, align 1
  %br.dst1.3132 = getelementptr i8, ptr %b.rn.dst130, i64 1
  store i8 -128, ptr %br.dst1.3132, align 1
  %br.dst2.3133 = getelementptr i8, ptr %b.rn.dst130, i64 2
  store i8 -83, ptr %br.dst2.3133, align 1
  br label %br.done.32

br.b4.32:                                         ; preds = %br.c3.32
  store i8 -16, ptr %b.rn.dst130, align 1
  %br.dst1.4134 = getelementptr i8, ptr %b.rn.dst130, i64 1
  store i8 -128, ptr %br.dst1.4134, align 1
  %br.dst2.4135 = getelementptr i8, ptr %b.rn.dst130, i64 2
  store i8 -128, ptr %br.dst2.4135, align 1
  %br.dst3.4136 = getelementptr i8, ptr %b.rn.dst130, i64 3
  store i8 -83, ptr %br.dst3.4136, align 1
  br label %br.done.32

br.done.32:                                       ; preds = %br.b4.32, %br.b3.32, %br.b2.32, %br.b1.32
  %br.nul137 = getelementptr i8, ptr %b.rn.data129, i64 %sum99
  store i8 0, ptr %br.nul137, align 1
  %b.len.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load95, i32 0, i32 0
  store i64 %sum99, ptr %b.len.gep138, align 8
  br label %choice.exit94

b.freeze.check:                                   ; preds = %choice.exit94
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data141, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data141, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data141, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len140, 1
  %arena.cur142 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data141, i64 %b.freeze.len140, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len140
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit94
  %b.freeze.data143 = phi ptr [ %b.freeze.data141, %choice.exit94 ], [ %b.freeze.data141, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur144 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len140, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data143, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load139, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur145 = call ptr @dva_arena_current()
  %builder.new146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 24)
  %b.data.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new146, i32 0, i32 1
  %b.len.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new146, i32 0, i32 0
  %b.cap.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new146, i32 0, i32 2
  %b.buf.len150 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum151 = extractvalue { i64, i1 } %b.buf.len150, 0
  %ovf152 = extractvalue { i64, i1 } %b.buf.len150, 1
  br i1 %ovf152, label %str_overflow_abort154, label %b.buf.len153

b.buf.len153:                                     ; preds = %str_overflow_abort154, %b.freeze.done
  %arena.cur155 = call ptr @dva_arena_current()
  %b.buf156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 %sum151)
  %b.nul0157 = getelementptr i8, ptr %b.buf156, i64 0
  store i8 0, ptr %b.nul0157, align 1
  store i64 0, ptr %b.len.gep148, align 8
  store ptr %b.buf156, ptr %b.data.gep147, align 8
  store i64 32, ptr %b.cap.gep149, align 8
  store ptr %builder.new146, ptr %var.out, align 8
  %var.load158 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load158, i32 0, i32 0
  %str.len.query159 = load i64, ptr %str.len.query, align 8
  %str.len.query160 = and i64 %str.len.query159, 281474976710655
  %str.tag = lshr i64 %str.len.query159, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort154:                            ; preds = %b.freeze.done
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len153

str_gen_check:                                    ; preds = %b.buf.len153
  %arena.cur161 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur161, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len153
  store i64 0, ptr %loop.idx.33, align 8
  br label %loop.header.33

str_stale:                                        ; preds = %str_gen_check
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.33:                                   ; preds = %loop.latch.33, %str_ok
  %counter.load162 = load i64, ptr %loop.idx.33, align 8
  %loop.cond163 = icmp slt i64 %counter.load162, %str.len.query160
  br i1 %loop.cond163, label %loop.body.33, label %loop.exit.nat.33

loop.body.33:                                     ; preds = %loop.header.33
  %loop.rel.i164 = sub i64 %counter.load162, 0
  store i64 1, ptr %loop.step.33, align 8
  store i64 %loop.rel.i164, ptr %var._i165, align 8
  store i64 %counter.load162, ptr %var._166, align 8
  store i64 %counter.load162, ptr %var.i, align 8
  %b.load167 = load ptr, ptr %var.out, align 8
  %var.load168 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load168, i32 0, i32 0
  %s.read.len169 = load i64, ptr %s.read.len, align 8
  %s.read.len170 = and i64 %s.read.len169, 281474976710655
  %str.tag171 = lshr i64 %s.read.len169, 48
  %str.immortal172 = icmp eq i64 %str.tag171, 0
  br i1 %str.immortal172, label %str_ok174, label %str_gen_check173

loop.exit.nat.33:                                 ; preds = %loop.header.33
  br label %loop.exit.33

loop.latch.33:                                    ; preds = %b.push_done208
  %step.val230 = load i64, ptr %loop.step.33, align 8
  %loop.next231 = add i64 %counter.load162, %step.val230
  store i64 %loop.next231, ptr %loop.idx.33, align 8
  br label %loop.header.33

loop.exit.33:                                     ; preds = %loop.exit.nat.33
  %var.load232 = load ptr, ptr %var.out, align 8
  %b.freeze.len233 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 0
  %b.freeze.len234 = load i64, ptr %b.freeze.len233, align 8
  %b.freeze.data235 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 1
  %b.freeze.data236 = load ptr, ptr %b.freeze.data235, align 8
  %b.freeze.arena237 = call ptr @dva_arena_current()
  %b.freeze.nc.gep238 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena237, i32 0, i32 1
  %b.freeze.nc239 = load i64, ptr %b.freeze.nc.gep238, align 8
  %b.freeze.has.chunk240 = icmp sgt i64 %b.freeze.nc239, 0
  br i1 %b.freeze.has.chunk240, label %b.freeze.check241, label %b.freeze.done243

str_gen_check173:                                 ; preds = %loop.body.33
  %arena.cur176 = call ptr @dva_arena_current()
  %tag.valid177 = call i1 @dva_arena_validate_tag(ptr %arena.cur176, i64 %str.tag171)
  br i1 %tag.valid177, label %str_ok174, label %str_stale175

str_ok174:                                        ; preds = %str_stale175, %str_gen_check173, %loop.body.33
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load168, i32 0, i32 1
  %s.read.data178 = load ptr, ptr %s.read.data, align 8
  %var.load179 = load ptr, ptr %var.s, align 8
  %str.len.query180 = getelementptr inbounds { i64, ptr }, ptr %var.load179, i32 0, i32 0
  %str.len.query181 = load i64, ptr %str.len.query180, align 8
  %str.len.query182 = and i64 %str.len.query181, 281474976710655
  %str.tag183 = lshr i64 %str.len.query181, 48
  %str.immortal184 = icmp eq i64 %str.tag183, 0
  br i1 %str.immortal184, label %str_ok186, label %str_gen_check185

str_stale175:                                     ; preds = %str_gen_check173
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok174

str_gen_check185:                                 ; preds = %str_ok174
  %arena.cur188 = call ptr @dva_arena_current()
  %tag.valid189 = call i1 @dva_arena_validate_tag(ptr %arena.cur188, i64 %str.tag183)
  br i1 %tag.valid189, label %str_ok186, label %str_stale187

str_ok186:                                        ; preds = %str_stale187, %str_gen_check185, %str_ok174
  %subtmp190 = sub i64 %str.len.query182, 1
  %var.load191 = load i64, ptr %var.i, align 8
  %subtmp192 = sub i64 %subtmp190, %var.load191
  %idx.neg = icmp slt i64 %subtmp192, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale187:                                     ; preds = %str_gen_check185
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok186

idx_big_check:                                    ; preds = %str_ok186
  %idx.big = icmp sge i64 %subtmp192, %s.read.len170
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data178, i64 %subtmp192
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.b.ge0193 = icmp sge i64 %s.byte.val, 0
  %b.b.le255194 = icmp sle i64 %s.byte.val, 255
  %b.byte.range195 = and i1 %b.b.ge0193, %b.b.le255194
  br i1 %b.byte.range195, label %b.byte_ok196, label %b.byte_err197

idx_oob:                                          ; preds = %idx_big_check, %str_ok186
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

b.byte_ok196:                                     ; preds = %b.byte_err197, %idx_ok
  %b.byte.i8198 = trunc i64 %s.byte.val to i8
  %b.len199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 0
  %b.len200 = load i64, ptr %b.len199, align 8
  %b.cap201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 2
  %b.cap202 = load i64, ptr %b.cap201, align 8
  %b.data203 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 1
  %b.data204 = load ptr, ptr %b.data203, align 8
  %b.needs.grow205 = icmp eq i64 %b.len200, %b.cap202
  br i1 %b.needs.grow205, label %b.grow206, label %b.nogrow207

b.byte_err197:                                    ; preds = %idx_ok
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok196

b.grow206:                                        ; preds = %b.byte_ok196
  %b.cap2209 = mul i64 %b.cap202, 2
  %b.cap.small210 = icmp slt i64 %b.cap2209, 16
  %b.new.cap211 = select i1 %b.cap.small210, i64 16, i64 %b.cap2209
  %b.new.buf.len212 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap211, i64 1)
  %sum213 = extractvalue { i64, i1 } %b.new.buf.len212, 0
  %ovf214 = extractvalue { i64, i1 } %b.new.buf.len212, 1
  br i1 %ovf214, label %str_overflow_abort216, label %b.new.buf.len215

b.nogrow207:                                      ; preds = %b.byte_ok196
  br label %b.push_done208

b.push_done208:                                   ; preds = %b.nogrow207, %b.new.buf.len215
  %b.cur.data222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 1
  %b.cur.data223 = load ptr, ptr %b.cur.data222, align 8
  %b.cur.len224 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 0
  %b.cur.len225 = load i64, ptr %b.cur.len224, align 8
  %b.byte.gep226 = getelementptr i8, ptr %b.cur.data223, i64 %b.cur.len225
  store i8 %b.byte.i8198, ptr %b.byte.gep226, align 1
  %b.next.len227 = add i64 %b.cur.len225, 1
  %b.nul228 = getelementptr i8, ptr %b.cur.data223, i64 %b.next.len227
  store i8 0, ptr %b.nul228, align 1
  %b.len.gep229 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 0
  store i64 %b.next.len227, ptr %b.len.gep229, align 8
  br label %loop.latch.33

b.new.buf.len215:                                 ; preds = %str_overflow_abort216, %b.grow206
  %arena.cur217 = call ptr @dva_arena_current()
  %b.new.buf218 = call ptr @dva_arena_alloc(ptr %arena.cur217, i64 %sum213)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf218, ptr align 1 %b.data204, i64 %b.len200, i1 false)
  %b.grow.nul219 = getelementptr i8, ptr %b.new.buf218, i64 %b.len200
  store i8 0, ptr %b.grow.nul219, align 1
  %b.new.data.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 1
  store ptr %b.new.buf218, ptr %b.new.data.gep220, align 8
  %b.new.cap.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load167, i32 0, i32 2
  store i64 %b.new.cap211, ptr %b.new.cap.gep221, align 8
  br label %b.push_done208

str_overflow_abort216:                            ; preds = %b.grow206
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len215

b.freeze.check241:                                ; preds = %loop.exit.33
  %b.freeze.last.idx244 = sub i64 %b.freeze.nc239, 1
  %b.freeze.chunks.gep245 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena237, i32 0, i32 3
  %b.freeze.chunk.slot246 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep245, i64 0, i64 %b.freeze.last.idx244
  %b.freeze.last.chunk247 = load ptr, ptr %b.freeze.chunk.slot246, align 8
  %b.freeze.off.gep248 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena237, i32 0, i32 2
  %b.freeze.off249 = load i64, ptr %b.freeze.off.gep248, align 8
  %b.freeze.bump250 = getelementptr i8, ptr %b.freeze.last.chunk247, i64 %b.freeze.off249
  %b.freeze.cap.gep251 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena237, i32 0, i32 0
  %b.freeze.cap252 = load i64, ptr %b.freeze.cap.gep251, align 8
  %b.freeze.chunk.end253 = getelementptr i8, ptr %b.freeze.last.chunk247, i64 %b.freeze.cap252
  %b.freeze.ge.chunk254 = icmp uge ptr %b.freeze.data236, %b.freeze.last.chunk247
  %b.freeze.lt.end255 = icmp ult ptr %b.freeze.data236, %b.freeze.chunk.end253
  %b.freeze.in.chunk256 = and i1 %b.freeze.ge.chunk254, %b.freeze.lt.end255
  %b.freeze.ge.bump257 = icmp uge ptr %b.freeze.data236, %b.freeze.bump250
  %b.freeze.reaped258 = and i1 %b.freeze.in.chunk256, %b.freeze.ge.bump257
  br i1 %b.freeze.reaped258, label %b.freeze.copy242, label %b.freeze.done243

b.freeze.copy242:                                 ; preds = %b.freeze.check241
  %b.freeze.alen259 = add i64 %b.freeze.len234, 1
  %arena.cur260 = call ptr @dva_arena_current()
  %b.freeze.fresh261 = call ptr @dva_arena_alloc(ptr %arena.cur260, i64 %b.freeze.alen259)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh261, ptr align 1 %b.freeze.data236, i64 %b.freeze.len234, i1 false)
  %b.freeze.nul262 = getelementptr i8, ptr %b.freeze.fresh261, i64 %b.freeze.len234
  store i8 0, ptr %b.freeze.nul262, align 1
  br label %b.freeze.done243

b.freeze.done243:                                 ; preds = %b.freeze.copy242, %b.freeze.check241, %loop.exit.33
  %b.freeze.data263 = phi ptr [ %b.freeze.data236, %loop.exit.33 ], [ %b.freeze.data236, %b.freeze.check241 ], [ %b.freeze.fresh261, %b.freeze.copy242 ]
  %arena.cur264 = call ptr @dva_arena_current()
  %builder.freeze265 = call ptr @dva_arena_alloc(ptr %arena.cur264, i64 16)
  %str.build.len.gep266 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze265, i32 0, i32 0
  store i64 %b.freeze.len234, ptr %str.build.len.gep266, align 8
  %str.build.data.gep267 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze265, i32 0, i32 1
  store ptr %b.freeze.data263, ptr %str.build.data.gep267, align 8
  %b.freeze.rst.len268 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len268, align 8
  %b.freeze.rst.data269 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data269, align 8
  %b.freeze.rst.cap270 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load232, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap270, align 8
  ret ptr %builder.freeze265
}

declare i64 @"ascii::hex_char_upper"(i64) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
