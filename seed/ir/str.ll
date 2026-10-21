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
  %var._846 = alloca i64, align 8
  %var._i845 = alloca i64, align 8
  %loop.step.23 = alloca i64, align 8
  %loop.idx.23 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var._798 = alloca i64, align 8
  %var._i797 = alloca i64, align 8
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
  %"var.dot_pos'" = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._682 = alloca i64, align 8
  %var._i681 = alloca i64, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
  %var._631 = alloca i64, align 8
  %var._i630 = alloca i64, align 8
  %loop.step.19 = alloca i64, align 8
  %loop.idx.19 = alloca i64, align 8
  %var._520 = alloca i64, align 8
  %var._i519 = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %var._404 = alloca i64, align 8
  %var._i403 = alloca i64, align 8
  %loop.step.16 = alloca i64, align 8
  %loop.idx.16 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._329 = alloca i64, align 8
  %var._i328 = alloca i64, align 8
  %loop.step.15 = alloca i64, align 8
  %loop.idx.15 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.ms = alloca ptr, align 8
  %var._137 = alloca i64, align 8
  %var._i136 = alloca i64, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %"var.m'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.d = alloca i64, align 8
  %var._74 = alloca i64, align 8
  %var._i73 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.10 = alloca i64, align 8
  %loop.idx.10 = alloca i64, align 8
  %var.ds = alloca ptr, align 8
  %"var.f'" = alloca double, align 8
  %var.ip = alloca i64, align 8
  %var._42 = alloca i64, align 8
  %var._i41 = alloca i64, align 8
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
  %fcmptmp3 = fcmp ogt double %var.load2, 0x7FEFFFFFFFFFFFFC
  br i1 %fcmptmp3, label %choice.then4, label %choice.exit5

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then4:                                     ; preds = %choice.exit
  ret ptr @str.3.struct

choice.exit5:                                     ; preds = %ret.dead6, %choice.exit
  %var.load7 = load double, ptr %var.v, align 8
  %fcmptmp8 = fcmp olt double %var.load7, 0xFFEFFFFFFFFFFFFC
  br i1 %fcmptmp8, label %choice.then9, label %choice.exit10

ret.dead6:                                        ; No predecessors!
  br label %choice.exit5

choice.then9:                                     ; preds = %choice.exit5
  ret ptr @str.4.struct

choice.exit10:                                    ; preds = %ret.dead11, %choice.exit5
  %var.load12 = load double, ptr %var.v, align 8
  %fcmptmp13 = fcmp olt double %var.load12, 0.000000e+00
  store i1 %fcmptmp13, ptr %var.neg, align 1
  %var.load14 = load i1, ptr %var.neg, align 1
  br i1 %var.load14, label %choice.then15, label %choice.else

ret.dead11:                                       ; No predecessors!
  br label %choice.exit10

choice.then15:                                    ; preds = %choice.exit10
  %var.load17 = load double, ptr %var.v, align 8
  %fsubtmp = fsub double 0.000000e+00, %var.load17
  br label %choice.exit16

choice.else:                                      ; preds = %choice.exit10
  %var.load18 = load double, ptr %var.v, align 8
  br label %choice.exit16

choice.exit16:                                    ; preds = %choice.else, %choice.then15
  %choice.res = phi double [ %fsubtmp, %choice.then15 ], [ %var.load18, %choice.else ]
  store double %choice.res, ptr %var.a, align 8
  %var.load19 = load double, ptr %var.a, align 8
  %fcmptmp20 = fcmp oeq double %var.load19, 0.000000e+00
  br i1 %fcmptmp20, label %choice.then21, label %choice.exit22

choice.then21:                                    ; preds = %choice.exit16
  %var.load23 = load double, ptr %var.v, align 8
  %fdivtmp = fdiv double 1.000000e+00, %var.load23
  %fcmptmp24 = fcmp olt double %fdivtmp, 0.000000e+00
  br i1 %fcmptmp24, label %choice.then25, label %choice.else26

choice.exit22:                                    ; preds = %ret.dead29, %choice.exit16
  %var.load30 = load double, ptr %var.a, align 8
  store double %var.load30, ptr %"var.x'", align 8
  store i64 0, ptr %"var.e'", align 8
  store i64 0, ptr %loop.idx.8, align 8
  br label %loop.header.8

choice.then25:                                    ; preds = %choice.then21
  br label %choice.exit27

choice.else26:                                    ; preds = %choice.then21
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.else26, %choice.then25
  %choice.res28 = phi ptr [ @str.5.struct, %choice.then25 ], [ @str.0.struct, %choice.else26 ]
  ret ptr %choice.res28

ret.dead29:                                       ; No predecessors!
  br label %choice.exit22

loop.header.8:                                    ; preds = %loop.latch.8, %choice.exit22
  %counter.load = load i64, ptr %loop.idx.8, align 8
  br label %loop.body.8

loop.body.8:                                      ; preds = %loop.header.8
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.8, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load31 = load double, ptr %"var.x'", align 8
  %fcmptmp32 = fcmp oge double %var.load31, 1.000000e+01
  br i1 %fcmptmp32, label %choice.then33, label %choice.else34

loop.exit.nat.8:                                  ; No predecessors!
  br label %loop.exit.8

loop.latch.8:                                     ; preds = %choice.exit35
  %step.val = load i64, ptr %loop.step.8, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.exit.8:                                      ; preds = %choice.else34, %loop.exit.nat.8
  store i64 0, ptr %loop.idx.9, align 8
  br label %loop.header.9

choice.then33:                                    ; preds = %loop.body.8
  %var.load36 = load double, ptr %"var.x'", align 8
  %fdivtmp37 = fdiv double %var.load36, 1.000000e+01
  store double %fdivtmp37, ptr %"var.x'", align 8
  %var.load38 = load i64, ptr %"var.e'", align 8
  %addtmp = add i64 %var.load38, 1
  store i64 %addtmp, ptr %"var.e'", align 8
  br label %choice.exit35

choice.else34:                                    ; preds = %loop.body.8
  br label %loop.exit.8

choice.exit35:                                    ; preds = %choice.then33
  br label %loop.latch.8

loop.header.9:                                    ; preds = %loop.latch.9, %loop.exit.8
  %counter.load39 = load i64, ptr %loop.idx.9, align 8
  br label %loop.body.9

loop.body.9:                                      ; preds = %loop.header.9
  %loop.rel.i40 = sub i64 %counter.load39, 0
  store i64 1, ptr %loop.step.9, align 8
  store i64 %loop.rel.i40, ptr %var._i41, align 8
  store i64 %counter.load39, ptr %var._42, align 8
  %var.load43 = load double, ptr %"var.x'", align 8
  %fcmptmp44 = fcmp olt double %var.load43, 1.000000e+00
  br i1 %fcmptmp44, label %choice.then45, label %choice.else46

loop.exit.nat.9:                                  ; No predecessors!
  br label %loop.exit.9

loop.latch.9:                                     ; preds = %choice.exit47
  %step.val50 = load i64, ptr %loop.step.9, align 8
  %loop.next51 = add i64 %counter.load39, %step.val50
  store i64 %loop.next51, ptr %loop.idx.9, align 8
  br label %loop.header.9

loop.exit.9:                                      ; preds = %choice.else46, %loop.exit.nat.9
  %var.load52 = load double, ptr %"var.x'", align 8
  %cast.fptosi = fptosi double %var.load52 to i64
  store i64 %cast.fptosi, ptr %var.ip, align 8
  %var.load53 = load double, ptr %"var.x'", align 8
  %var.load54 = load i64, ptr %var.ip, align 8
  %cast.sitofp = sitofp i64 %var.load54 to double
  %fsubtmp55 = fsub double %var.load53, %cast.sitofp
  store double %fsubtmp55, ptr %"var.f'", align 8
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 16, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len56

choice.then45:                                    ; preds = %loop.body.9
  %var.load48 = load double, ptr %"var.x'", align 8
  %fmultmp = fmul double %var.load48, 1.000000e+01
  store double %fmultmp, ptr %"var.x'", align 8
  %var.load49 = load i64, ptr %"var.e'", align 8
  %subtmp = sub i64 %var.load49, 1
  store i64 %subtmp, ptr %"var.e'", align 8
  br label %choice.exit47

choice.else46:                                    ; preds = %loop.body.9
  br label %loop.exit.9

choice.exit47:                                    ; preds = %choice.then45
  br label %loop.latch.9

b.buf.len56:                                      ; preds = %str_overflow_abort, %loop.exit.9
  %arena.cur57 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 16, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.ds, align 8
  %b.load = load ptr, ptr %var.ds, align 8
  %var.load58 = load i64, ptr %var.ip, align 8
  %coerce.trunc = trunc i64 %var.load58 to i32
  %addtmp59 = add i32 48, %coerce.trunc
  %b.byte.zext = zext i32 %addtmp59 to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %loop.exit.9
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len56

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len56
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len60 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap61 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data62 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len60, %b.cap61
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len56
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap61, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum63 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf64 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf64, label %str_overflow_abort66, label %b.new.buf.len65

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len65
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data68 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len69 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data68, i64 %b.cur.len69
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len69, 1
  %b.nul = getelementptr i8, ptr %b.cur.data68, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep70, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

b.new.buf.len65:                                  ; preds = %str_overflow_abort66, %b.grow
  %arena.cur67 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 %sum63)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data62, i64 %b.len60, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len60
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort66:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len65

loop.header.10:                                   ; preds = %loop.latch.10, %b.push_done
  %counter.load71 = load i64, ptr %loop.idx.10, align 8
  %loop.cond = icmp slt i64 %counter.load71, 6
  br i1 %loop.cond, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i72 = sub i64 %counter.load71, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i72, ptr %var._i73, align 8
  store i64 %counter.load71, ptr %var._74, align 8
  store i64 %counter.load71, ptr %var.i, align 8
  %var.load75 = load double, ptr %"var.f'", align 8
  %fmultmp76 = fmul double %var.load75, 1.000000e+01
  store double %fmultmp76, ptr %"var.f'", align 8
  %var.load77 = load double, ptr %"var.f'", align 8
  %cast.fptosi78 = fptosi double %var.load77 to i64
  store i64 %cast.fptosi78, ptr %var.d, align 8
  %b.load79 = load ptr, ptr %var.ds, align 8
  %var.load80 = load i64, ptr %var.d, align 8
  %coerce.trunc81 = trunc i64 %var.load80 to i32
  %addtmp82 = add i32 48, %coerce.trunc81
  %b.byte.zext83 = zext i32 %addtmp82 to i64
  %b.b.ge084 = icmp sge i64 %b.byte.zext83, 0
  %b.b.le25585 = icmp sle i64 %b.byte.zext83, 255
  %b.byte.range86 = and i1 %b.b.ge084, %b.b.le25585
  br i1 %b.byte.range86, label %b.byte_ok87, label %b.byte_err88

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %b.push_done99
  %step.val125 = load i64, ptr %loop.step.10, align 8
  %loop.next126 = add i64 %counter.load71, %step.val125
  store i64 %loop.next126, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  %var.load127 = load ptr, ptr %var.ds, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load127, i32 0, i32 0
  %b.freeze.len128 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load127, i32 0, i32 1
  %b.freeze.data129 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok87:                                      ; preds = %b.byte_err88, %loop.body.10
  %b.byte.i889 = trunc i64 %b.byte.zext83 to i8
  %b.len90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load79, i32 0, i32 0
  %b.len91 = load i64, ptr %b.len90, align 8
  %b.cap92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load79, i32 0, i32 2
  %b.cap93 = load i64, ptr %b.cap92, align 8
  %b.data94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load79, i32 0, i32 1
  %b.data95 = load ptr, ptr %b.data94, align 8
  %b.needs.grow96 = icmp eq i64 %b.len91, %b.cap93
  br i1 %b.needs.grow96, label %b.grow97, label %b.nogrow98

b.byte_err88:                                     ; preds = %loop.body.10
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok87

b.grow97:                                         ; preds = %b.byte_ok87
  %b.cap2100 = mul i64 %b.cap93, 2
  %b.cap.small101 = icmp slt i64 %b.cap2100, 16
  %b.new.cap102 = select i1 %b.cap.small101, i64 16, i64 %b.cap2100
  %b.new.buf.len103 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap102, i64 1)
  %sum104 = extractvalue { i64, i1 } %b.new.buf.len103, 0
  %ovf105 = extractvalue { i64, i1 } %b.new.buf.len103, 1
  br i1 %ovf105, label %str_overflow_abort107, label %b.new.buf.len106

b.nogrow98:                                       ; preds = %b.byte_ok87
  br label %b.push_done99

b.push_done99:                                    ; preds = %b.nogrow98, %b.new.buf.len106
  %b.cur.data113 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load79, i32 0, i32 1
  %b.cur.data114 = load ptr, ptr %b.cur.data113, align 8
  %b.cur.len115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load79, i32 0, i32 0
  %b.cur.len116 = load i64, ptr %b.cur.len115, align 8
  %b.byte.gep117 = getelementptr i8, ptr %b.cur.data114, i64 %b.cur.len116
  store i8 %b.byte.i889, ptr %b.byte.gep117, align 1
  %b.next.len118 = add i64 %b.cur.len116, 1
  %b.nul119 = getelementptr i8, ptr %b.cur.data114, i64 %b.next.len118
  store i8 0, ptr %b.nul119, align 1
  %b.len.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load79, i32 0, i32 0
  store i64 %b.next.len118, ptr %b.len.gep120, align 8
  %var.load121 = load double, ptr %"var.f'", align 8
  %var.load122 = load i64, ptr %var.d, align 8
  %cast.sitofp123 = sitofp i64 %var.load122 to double
  %fsubtmp124 = fsub double %var.load121, %cast.sitofp123
  store double %fsubtmp124, ptr %"var.f'", align 8
  br label %loop.latch.10

b.new.buf.len106:                                 ; preds = %str_overflow_abort107, %b.grow97
  %arena.cur108 = call ptr @dva_arena_current()
  %b.new.buf109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 %sum104)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf109, ptr align 1 %b.data95, i64 %b.len91, i1 false)
  %b.grow.nul110 = getelementptr i8, ptr %b.new.buf109, i64 %b.len91
  store i8 0, ptr %b.grow.nul110, align 1
  %b.new.data.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load79, i32 0, i32 1
  store ptr %b.new.buf109, ptr %b.new.data.gep111, align 8
  %b.new.cap.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load79, i32 0, i32 2
  store i64 %b.new.cap102, ptr %b.new.cap.gep112, align 8
  br label %b.push_done99

str_overflow_abort107:                            ; preds = %b.grow97
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len106

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data129, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data129, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data129, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len128, 1
  %arena.cur130 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data129, i64 %b.freeze.len128, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len128
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.10
  %b.freeze.data131 = phi ptr [ %b.freeze.data129, %loop.exit.10 ], [ %b.freeze.data129, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur132 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 16)
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
  store ptr %builder.freeze, ptr %var.s, align 8
  store i64 0, ptr %"var.m'", align 8
  store i64 0, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.header.11:                                   ; preds = %loop.latch.11, %b.freeze.done
  %counter.load133 = load i64, ptr %loop.idx.11, align 8
  %loop.cond134 = icmp slt i64 %counter.load133, 6
  br i1 %loop.cond134, label %loop.body.11, label %loop.exit.nat.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i135 = sub i64 %counter.load133, 0
  store i64 1, ptr %loop.step.11, align 8
  store i64 %loop.rel.i135, ptr %var._i136, align 8
  store i64 %counter.load133, ptr %var._137, align 8
  store i64 %counter.load133, ptr %var.i, align 8
  %var.load138 = load i64, ptr %"var.m'", align 8
  %multmp = mul i64 %var.load138, 10
  %var.load139 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load139, i32 0, i32 0
  %s.read.len140 = load i64, ptr %s.read.len, align 8
  %s.read.len141 = and i64 %s.read.len140, 281474976710655
  %str.tag = lshr i64 %s.read.len140, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.11:                                 ; preds = %loop.header.11
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %idx_ok
  %step.val147 = load i64, ptr %loop.step.11, align 8
  %loop.next148 = add i64 %counter.load133, %step.val147
  store i64 %loop.next148, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %loop.exit.nat.11
  %var.load149 = load ptr, ptr %var.s, align 8
  %s.read.len150 = getelementptr inbounds { i64, ptr }, ptr %var.load149, i32 0, i32 0
  %s.read.len151 = load i64, ptr %s.read.len150, align 8
  %s.read.len152 = and i64 %s.read.len151, 281474976710655
  %str.tag153 = lshr i64 %s.read.len151, 48
  %str.immortal154 = icmp eq i64 %str.tag153, 0
  br i1 %str.immortal154, label %str_ok156, label %str_gen_check155

str_gen_check:                                    ; preds = %loop.body.11
  %arena.cur142 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur142, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.11
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load139, i32 0, i32 1
  %s.read.data143 = load ptr, ptr %s.read.data, align 8
  %var.load144 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load144, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load144, %s.read.len141
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data143, i64 %var.load144
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp145 = sub i64 %s.byte.val, 48
  %addtmp146 = add i64 %multmp, %subtmp145
  store i64 %addtmp146, ptr %"var.m'", align 8
  br label %loop.latch.11

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check155:                                 ; preds = %loop.exit.11
  %arena.cur158 = call ptr @dva_arena_current()
  %tag.valid159 = call i1 @dva_arena_validate_tag(ptr %arena.cur158, i64 %str.tag153)
  br i1 %tag.valid159, label %str_ok156, label %str_stale157

str_ok156:                                        ; preds = %str_stale157, %str_gen_check155, %loop.exit.11
  %s.read.data160 = getelementptr inbounds { i64, ptr }, ptr %var.load149, i32 0, i32 1
  %s.read.data161 = load ptr, ptr %s.read.data160, align 8
  br i1 false, label %idx_oob164, label %idx_big_check162

str_stale157:                                     ; preds = %str_gen_check155
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok156

idx_big_check162:                                 ; preds = %str_ok156
  %idx.big165 = icmp sge i64 6, %s.read.len152
  br i1 %idx.big165, label %idx_oob164, label %idx_ok163

idx_ok163:                                        ; preds = %idx_oob164, %idx_big_check162
  %s.byte.gep166 = getelementptr i8, ptr %s.read.data161, i64 6
  %s.byte167 = load i8, ptr %s.byte.gep166, align 1
  %s.byte.val168 = zext i8 %s.byte167 to i64
  %cmptmp = icmp sge i64 %s.byte.val168, 53
  br i1 %cmptmp, label %choice.then169, label %choice.exit170

idx_oob164:                                       ; preds = %idx_big_check162, %str_ok156
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok163

choice.then169:                                   ; preds = %idx_ok163
  %var.load171 = load i64, ptr %"var.m'", align 8
  %addtmp172 = add i64 %var.load171, 1
  store i64 %addtmp172, ptr %"var.m'", align 8
  br label %choice.exit170

choice.exit170:                                   ; preds = %choice.then169, %idx_ok163
  %var.load173 = load i64, ptr %"var.m'", align 8
  %cmptmp174 = icmp eq i64 %var.load173, 1000000
  br i1 %cmptmp174, label %choice.then175, label %choice.exit176

choice.then175:                                   ; preds = %choice.exit170
  store i64 100000, ptr %"var.m'", align 8
  %var.load177 = load i64, ptr %"var.e'", align 8
  %addtmp178 = add i64 %var.load177, 1
  store i64 %addtmp178, ptr %"var.e'", align 8
  br label %choice.exit176

choice.exit176:                                   ; preds = %choice.then175, %choice.exit170
  %var.load179 = load i64, ptr %"var.m'", align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load179)
  store ptr %call.res, ptr %var.ms, align 8
  %arena.cur180 = call ptr @dva_arena_current()
  %builder.new181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 24)
  %b.data.gep182 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new181, i32 0, i32 1
  %b.len.gep183 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new181, i32 0, i32 0
  %b.cap.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new181, i32 0, i32 2
  %b.buf.len185 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum186 = extractvalue { i64, i1 } %b.buf.len185, 0
  %ovf187 = extractvalue { i64, i1 } %b.buf.len185, 1
  br i1 %ovf187, label %str_overflow_abort189, label %b.buf.len188

b.buf.len188:                                     ; preds = %str_overflow_abort189, %choice.exit176
  %arena.cur190 = call ptr @dva_arena_current()
  %b.buf191 = call ptr @dva_arena_alloc(ptr %arena.cur190, i64 %sum186)
  %b.nul0192 = getelementptr i8, ptr %b.buf191, i64 0
  store i8 0, ptr %b.nul0192, align 1
  store i64 0, ptr %b.len.gep183, align 8
  store ptr %b.buf191, ptr %b.data.gep182, align 8
  store i64 32, ptr %b.cap.gep184, align 8
  store ptr %builder.new181, ptr %var.b, align 8
  %var.load193 = load i1, ptr %var.neg, align 1
  br i1 %var.load193, label %choice.then194, label %choice.exit195

str_overflow_abort189:                            ; preds = %choice.exit176
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len188

choice.then194:                                   ; preds = %b.buf.len188
  %b.load196 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load196, i32 0, i32 0
  %b.rn.cur.len197 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len197, i64 1)
  %sum198 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf199 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf199, label %str_overflow_abort201, label %b.rn.new.len200

choice.exit195:                                   ; preds = %br.done.12, %b.buf.len188
  %var.load216 = load i64, ptr %"var.e'", align 8
  %cmptmp217 = icmp slt i64 %var.load216, -4
  br i1 %cmptmp217, label %or.13.then, label %or.13.else

b.rn.new.len200:                                  ; preds = %str_overflow_abort201, %choice.then194
  %b.cap202 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load196, i32 0, i32 2
  %b.cap203 = load i64, ptr %b.cap202, align 8
  %b.need.grow = icmp slt i64 %b.cap203, %sum198
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort201:                            ; preds = %choice.then194
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len200

b.grow2:                                          ; preds = %b.rn.new.len200
  %b.cap2204 = mul i64 %b.cap203, 2
  %b.cap.small205 = icmp slt i64 %b.cap2204, 16
  %b.cap.grow = select i1 %b.cap.small205, i64 16, i64 %b.cap2204
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum198
  %b.new.cap206 = select i1 %b.cap.need, i64 %sum198, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load196, i32 0, i32 0
  %b.cur.len2207 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load196, i32 0, i32 1
  %b.cur.data2208 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap206, i64 1)
  %sum209 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf210 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf210, label %str_overflow_abort212, label %b.new.buf.len2211

b.nogrow2:                                        ; preds = %b.rn.new.len200
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2211
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load196, i32 0, i32 1
  %b.rn.data214 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data214, i64 %b.rn.cur.len197
  br i1 true, label %br.b1.12, label %br.c2.12

b.new.buf.len2211:                                ; preds = %str_overflow_abort212, %b.grow2
  %arena.cur213 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 %sum209)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2208, i64 %b.cur.len2207, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2207
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load196, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load196, i32 0, i32 2
  store i64 %b.new.cap206, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort212:                            ; preds = %b.grow2
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2211

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
  %br.nul = getelementptr i8, ptr %b.rn.data214, i64 %sum198
  store i8 0, ptr %br.nul, align 1
  %b.len.gep215 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load196, i32 0, i32 0
  store i64 %sum198, ptr %b.len.gep215, align 8
  br label %choice.exit195

or.13.then:                                       ; preds = %choice.exit195
  br label %or.13.exit

or.13.else:                                       ; preds = %choice.exit195
  %var.load218 = load i64, ptr %"var.e'", align 8
  %cmptmp219 = icmp sge i64 %var.load218, 6
  br label %or.13.exit

or.13.exit:                                       ; preds = %or.13.else, %or.13.then
  %or.13.phi = phi i1 [ %cmptmp217, %or.13.then ], [ %cmptmp219, %or.13.else ]
  br i1 %or.13.phi, label %choice.then220, label %choice.else221

choice.then220:                                   ; preds = %or.13.exit
  %b.load223 = load ptr, ptr %var.b, align 8
  %var.load224 = load ptr, ptr %var.ms, align 8
  %s.read.len225 = getelementptr inbounds { i64, ptr }, ptr %var.load224, i32 0, i32 0
  %s.read.len226 = load i64, ptr %s.read.len225, align 8
  %s.read.len227 = and i64 %s.read.len226, 281474976710655
  %str.tag228 = lshr i64 %s.read.len226, 48
  %str.immortal229 = icmp eq i64 %str.tag228, 0
  br i1 %str.immortal229, label %str_ok231, label %str_gen_check230

choice.else221:                                   ; preds = %or.13.exit
  %var.load392 = load i64, ptr %"var.e'", align 8
  %cmptmp393 = icmp sge i64 %var.load392, 0
  br i1 %cmptmp393, label %choice.then394, label %choice.else395

choice.exit222:                                   ; preds = %choice.exit396, %loop.exit.15
  %var.load745 = load ptr, ptr %var.b, align 8
  %b.freeze.len746 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load745, i32 0, i32 0
  %b.freeze.len747 = load i64, ptr %b.freeze.len746, align 8
  %b.freeze.data748 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load745, i32 0, i32 1
  %b.freeze.data749 = load ptr, ptr %b.freeze.data748, align 8
  %b.freeze.arena750 = call ptr @dva_arena_current()
  %b.freeze.nc.gep751 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena750, i32 0, i32 1
  %b.freeze.nc752 = load i64, ptr %b.freeze.nc.gep751, align 8
  %b.freeze.has.chunk753 = icmp sgt i64 %b.freeze.nc752, 0
  br i1 %b.freeze.has.chunk753, label %b.freeze.check754, label %b.freeze.done756

str_gen_check230:                                 ; preds = %choice.then220
  %arena.cur233 = call ptr @dva_arena_current()
  %tag.valid234 = call i1 @dva_arena_validate_tag(ptr %arena.cur233, i64 %str.tag228)
  br i1 %tag.valid234, label %str_ok231, label %str_stale232

str_ok231:                                        ; preds = %str_stale232, %str_gen_check230, %choice.then220
  %s.read.data235 = getelementptr inbounds { i64, ptr }, ptr %var.load224, i32 0, i32 1
  %s.read.data236 = load ptr, ptr %s.read.data235, align 8
  br i1 false, label %idx_oob239, label %idx_big_check237

str_stale232:                                     ; preds = %str_gen_check230
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok231

idx_big_check237:                                 ; preds = %str_ok231
  %idx.big240 = icmp sge i64 0, %s.read.len227
  br i1 %idx.big240, label %idx_oob239, label %idx_ok238

idx_ok238:                                        ; preds = %idx_oob239, %idx_big_check237
  %s.byte.gep241 = getelementptr i8, ptr %s.read.data236, i64 0
  %s.byte242 = load i8, ptr %s.byte.gep241, align 1
  %s.byte.val243 = zext i8 %s.byte242 to i64
  %b.b.ge0244 = icmp sge i64 %s.byte.val243, 0
  %b.b.le255245 = icmp sle i64 %s.byte.val243, 255
  %b.byte.range246 = and i1 %b.b.ge0244, %b.b.le255245
  br i1 %b.byte.range246, label %b.byte_ok247, label %b.byte_err248

idx_oob239:                                       ; preds = %idx_big_check237, %str_ok231
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok238

b.byte_ok247:                                     ; preds = %b.byte_err248, %idx_ok238
  %b.byte.i8249 = trunc i64 %s.byte.val243 to i8
  %b.len250 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 0
  %b.len251 = load i64, ptr %b.len250, align 8
  %b.cap252 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 2
  %b.cap253 = load i64, ptr %b.cap252, align 8
  %b.data254 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 1
  %b.data255 = load ptr, ptr %b.data254, align 8
  %b.needs.grow256 = icmp eq i64 %b.len251, %b.cap253
  br i1 %b.needs.grow256, label %b.grow257, label %b.nogrow258

b.byte_err248:                                    ; preds = %idx_ok238
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok247

b.grow257:                                        ; preds = %b.byte_ok247
  %b.cap2260 = mul i64 %b.cap253, 2
  %b.cap.small261 = icmp slt i64 %b.cap2260, 16
  %b.new.cap262 = select i1 %b.cap.small261, i64 16, i64 %b.cap2260
  %b.new.buf.len263 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap262, i64 1)
  %sum264 = extractvalue { i64, i1 } %b.new.buf.len263, 0
  %ovf265 = extractvalue { i64, i1 } %b.new.buf.len263, 1
  br i1 %ovf265, label %str_overflow_abort267, label %b.new.buf.len266

b.nogrow258:                                      ; preds = %b.byte_ok247
  br label %b.push_done259

b.push_done259:                                   ; preds = %b.nogrow258, %b.new.buf.len266
  %b.cur.data273 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 1
  %b.cur.data274 = load ptr, ptr %b.cur.data273, align 8
  %b.cur.len275 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 0
  %b.cur.len276 = load i64, ptr %b.cur.len275, align 8
  %b.byte.gep277 = getelementptr i8, ptr %b.cur.data274, i64 %b.cur.len276
  store i8 %b.byte.i8249, ptr %b.byte.gep277, align 1
  %b.next.len278 = add i64 %b.cur.len276, 1
  %b.nul279 = getelementptr i8, ptr %b.cur.data274, i64 %b.next.len278
  store i8 0, ptr %b.nul279, align 1
  %b.len.gep280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 0
  store i64 %b.next.len278, ptr %b.len.gep280, align 8
  %b.load281 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len282 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 0
  %b.rn.cur.len283 = load i64, ptr %b.rn.cur.len282, align 8
  %b.rn.new.len284 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len283, i64 1)
  %sum285 = extractvalue { i64, i1 } %b.rn.new.len284, 0
  %ovf286 = extractvalue { i64, i1 } %b.rn.new.len284, 1
  br i1 %ovf286, label %str_overflow_abort288, label %b.rn.new.len287

b.new.buf.len266:                                 ; preds = %str_overflow_abort267, %b.grow257
  %arena.cur268 = call ptr @dva_arena_current()
  %b.new.buf269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 %sum264)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf269, ptr align 1 %b.data255, i64 %b.len251, i1 false)
  %b.grow.nul270 = getelementptr i8, ptr %b.new.buf269, i64 %b.len251
  store i8 0, ptr %b.grow.nul270, align 1
  %b.new.data.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 1
  store ptr %b.new.buf269, ptr %b.new.data.gep271, align 8
  %b.new.cap.gep272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load223, i32 0, i32 2
  store i64 %b.new.cap262, ptr %b.new.cap.gep272, align 8
  br label %b.push_done259

str_overflow_abort267:                            ; preds = %b.grow257
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len266

b.rn.new.len287:                                  ; preds = %str_overflow_abort288, %b.push_done259
  %b.cap289 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 2
  %b.cap290 = load i64, ptr %b.cap289, align 8
  %b.need.grow291 = icmp slt i64 %b.cap290, %sum285
  br i1 %b.need.grow291, label %b.grow2292, label %b.nogrow2293

str_overflow_abort288:                            ; preds = %b.push_done259
  %17 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len287

b.grow2292:                                       ; preds = %b.rn.new.len287
  %b.cap2295 = mul i64 %b.cap290, 2
  %b.cap.small296 = icmp slt i64 %b.cap2295, 16
  %b.cap.grow297 = select i1 %b.cap.small296, i64 16, i64 %b.cap2295
  %b.cap.need298 = icmp slt i64 %b.cap.grow297, %sum285
  %b.new.cap299 = select i1 %b.cap.need298, i64 %sum285, i64 %b.cap.grow297
  %b.cur.len2300 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 0
  %b.cur.len2301 = load i64, ptr %b.cur.len2300, align 8
  %b.cur.data2302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 1
  %b.cur.data2303 = load ptr, ptr %b.cur.data2302, align 8
  %b.new.buf.len2304 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap299, i64 1)
  %sum305 = extractvalue { i64, i1 } %b.new.buf.len2304, 0
  %ovf306 = extractvalue { i64, i1 } %b.new.buf.len2304, 1
  br i1 %ovf306, label %str_overflow_abort308, label %b.new.buf.len2307

b.nogrow2293:                                     ; preds = %b.rn.new.len287
  br label %b.grow_done294

b.grow_done294:                                   ; preds = %b.nogrow2293, %b.new.buf.len2307
  %b.rn.data314 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 1
  %b.rn.data315 = load ptr, ptr %b.rn.data314, align 8
  %b.rn.dst316 = getelementptr i8, ptr %b.rn.data315, i64 %b.rn.cur.len283
  br i1 true, label %br.b1.14, label %br.c2.14

b.new.buf.len2307:                                ; preds = %str_overflow_abort308, %b.grow2292
  %arena.cur309 = call ptr @dva_arena_current()
  %b.new.buf2310 = call ptr @dva_arena_alloc(ptr %arena.cur309, i64 %sum305)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2310, ptr align 1 %b.cur.data2303, i64 %b.cur.len2301, i1 false)
  %b.grow2.nul311 = getelementptr i8, ptr %b.new.buf2310, i64 %b.cur.len2301
  store i8 0, ptr %b.grow2.nul311, align 1
  %b.new.data2.gep312 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 1
  store ptr %b.new.buf2310, ptr %b.new.data2.gep312, align 8
  %b.new.cap2.gep313 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 2
  store i64 %b.new.cap299, ptr %b.new.cap2.gep313, align 8
  br label %b.grow_done294

str_overflow_abort308:                            ; preds = %b.grow2292
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2307

br.b1.14:                                         ; preds = %b.grow_done294
  store i8 46, ptr %b.rn.dst316, align 1
  br label %br.done.14

br.c2.14:                                         ; preds = %b.grow_done294
  br i1 true, label %br.b2.14, label %br.c3.14

br.b2.14:                                         ; preds = %br.c2.14
  store i8 -64, ptr %b.rn.dst316, align 1
  %br.dst1317 = getelementptr i8, ptr %b.rn.dst316, i64 1
  store i8 -82, ptr %br.dst1317, align 1
  br label %br.done.14

br.c3.14:                                         ; preds = %br.c2.14
  br i1 true, label %br.b3.14, label %br.b4.14

br.b3.14:                                         ; preds = %br.c3.14
  store i8 -32, ptr %b.rn.dst316, align 1
  %br.dst1.3318 = getelementptr i8, ptr %b.rn.dst316, i64 1
  store i8 -128, ptr %br.dst1.3318, align 1
  %br.dst2.3319 = getelementptr i8, ptr %b.rn.dst316, i64 2
  store i8 -82, ptr %br.dst2.3319, align 1
  br label %br.done.14

br.b4.14:                                         ; preds = %br.c3.14
  store i8 -16, ptr %b.rn.dst316, align 1
  %br.dst1.4320 = getelementptr i8, ptr %b.rn.dst316, i64 1
  store i8 -128, ptr %br.dst1.4320, align 1
  %br.dst2.4321 = getelementptr i8, ptr %b.rn.dst316, i64 2
  store i8 -128, ptr %br.dst2.4321, align 1
  %br.dst3.4322 = getelementptr i8, ptr %b.rn.dst316, i64 3
  store i8 -82, ptr %br.dst3.4322, align 1
  br label %br.done.14

br.done.14:                                       ; preds = %br.b4.14, %br.b3.14, %br.b2.14, %br.b1.14
  %br.nul323 = getelementptr i8, ptr %b.rn.data315, i64 %sum285
  store i8 0, ptr %br.nul323, align 1
  %b.len.gep324 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load281, i32 0, i32 0
  store i64 %sum285, ptr %b.len.gep324, align 8
  store i64 1, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.header.15:                                   ; preds = %loop.latch.15, %br.done.14
  %counter.load325 = load i64, ptr %loop.idx.15, align 8
  %loop.cond326 = icmp slt i64 %counter.load325, 6
  br i1 %loop.cond326, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i327 = sub i64 %counter.load325, 1
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i327, ptr %var._i328, align 8
  store i64 %counter.load325, ptr %var._329, align 8
  store i64 %counter.load325, ptr %var.i, align 8
  %b.load330 = load ptr, ptr %var.b, align 8
  %var.load331 = load ptr, ptr %var.ms, align 8
  %s.read.len332 = getelementptr inbounds { i64, ptr }, ptr %var.load331, i32 0, i32 0
  %s.read.len333 = load i64, ptr %s.read.len332, align 8
  %s.read.len334 = and i64 %s.read.len333, 281474976710655
  %str.tag335 = lshr i64 %s.read.len333, 48
  %str.immortal336 = icmp eq i64 %str.tag335, 0
  br i1 %str.immortal336, label %str_ok338, label %str_gen_check337

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %b.push_done368
  %step.val390 = load i64, ptr %loop.step.15, align 8
  %loop.next391 = add i64 %counter.load325, %step.val390
  store i64 %loop.next391, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  br label %choice.exit222

str_gen_check337:                                 ; preds = %loop.body.15
  %arena.cur340 = call ptr @dva_arena_current()
  %tag.valid341 = call i1 @dva_arena_validate_tag(ptr %arena.cur340, i64 %str.tag335)
  br i1 %tag.valid341, label %str_ok338, label %str_stale339

str_ok338:                                        ; preds = %str_stale339, %str_gen_check337, %loop.body.15
  %s.read.data342 = getelementptr inbounds { i64, ptr }, ptr %var.load331, i32 0, i32 1
  %s.read.data343 = load ptr, ptr %s.read.data342, align 8
  %var.load344 = load i64, ptr %var.i, align 8
  %idx.neg345 = icmp slt i64 %var.load344, 0
  br i1 %idx.neg345, label %idx_oob348, label %idx_big_check346

str_stale339:                                     ; preds = %str_gen_check337
  %19 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok338

idx_big_check346:                                 ; preds = %str_ok338
  %idx.big349 = icmp sge i64 %var.load344, %s.read.len334
  br i1 %idx.big349, label %idx_oob348, label %idx_ok347

idx_ok347:                                        ; preds = %idx_oob348, %idx_big_check346
  %s.byte.gep350 = getelementptr i8, ptr %s.read.data343, i64 %var.load344
  %s.byte351 = load i8, ptr %s.byte.gep350, align 1
  %s.byte.val352 = zext i8 %s.byte351 to i64
  %b.b.ge0353 = icmp sge i64 %s.byte.val352, 0
  %b.b.le255354 = icmp sle i64 %s.byte.val352, 255
  %b.byte.range355 = and i1 %b.b.ge0353, %b.b.le255354
  br i1 %b.byte.range355, label %b.byte_ok356, label %b.byte_err357

idx_oob348:                                       ; preds = %idx_big_check346, %str_ok338
  %20 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok347

b.byte_ok356:                                     ; preds = %b.byte_err357, %idx_ok347
  %b.byte.i8358 = trunc i64 %s.byte.val352 to i8
  %b.len359 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load330, i32 0, i32 0
  %b.len360 = load i64, ptr %b.len359, align 8
  %b.cap361 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load330, i32 0, i32 2
  %b.cap362 = load i64, ptr %b.cap361, align 8
  %b.data363 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load330, i32 0, i32 1
  %b.data364 = load ptr, ptr %b.data363, align 8
  %b.needs.grow365 = icmp eq i64 %b.len360, %b.cap362
  br i1 %b.needs.grow365, label %b.grow366, label %b.nogrow367

b.byte_err357:                                    ; preds = %idx_ok347
  %21 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok356

b.grow366:                                        ; preds = %b.byte_ok356
  %b.cap2369 = mul i64 %b.cap362, 2
  %b.cap.small370 = icmp slt i64 %b.cap2369, 16
  %b.new.cap371 = select i1 %b.cap.small370, i64 16, i64 %b.cap2369
  %b.new.buf.len372 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap371, i64 1)
  %sum373 = extractvalue { i64, i1 } %b.new.buf.len372, 0
  %ovf374 = extractvalue { i64, i1 } %b.new.buf.len372, 1
  br i1 %ovf374, label %str_overflow_abort376, label %b.new.buf.len375

b.nogrow367:                                      ; preds = %b.byte_ok356
  br label %b.push_done368

b.push_done368:                                   ; preds = %b.nogrow367, %b.new.buf.len375
  %b.cur.data382 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load330, i32 0, i32 1
  %b.cur.data383 = load ptr, ptr %b.cur.data382, align 8
  %b.cur.len384 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load330, i32 0, i32 0
  %b.cur.len385 = load i64, ptr %b.cur.len384, align 8
  %b.byte.gep386 = getelementptr i8, ptr %b.cur.data383, i64 %b.cur.len385
  store i8 %b.byte.i8358, ptr %b.byte.gep386, align 1
  %b.next.len387 = add i64 %b.cur.len385, 1
  %b.nul388 = getelementptr i8, ptr %b.cur.data383, i64 %b.next.len387
  store i8 0, ptr %b.nul388, align 1
  %b.len.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load330, i32 0, i32 0
  store i64 %b.next.len387, ptr %b.len.gep389, align 8
  br label %loop.latch.15

b.new.buf.len375:                                 ; preds = %str_overflow_abort376, %b.grow366
  %arena.cur377 = call ptr @dva_arena_current()
  %b.new.buf378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 %sum373)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf378, ptr align 1 %b.data364, i64 %b.len360, i1 false)
  %b.grow.nul379 = getelementptr i8, ptr %b.new.buf378, i64 %b.len360
  store i8 0, ptr %b.grow.nul379, align 1
  %b.new.data.gep380 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load330, i32 0, i32 1
  store ptr %b.new.buf378, ptr %b.new.data.gep380, align 8
  %b.new.cap.gep381 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load330, i32 0, i32 2
  store i64 %b.new.cap371, ptr %b.new.cap.gep381, align 8
  br label %b.push_done368

str_overflow_abort376:                            ; preds = %b.grow366
  %22 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len375

choice.then394:                                   ; preds = %choice.else221
  %var.load397 = load i64, ptr %"var.e'", align 8
  %addtmp398 = add i64 %var.load397, 1
  store i64 %addtmp398, ptr %var.en, align 8
  %var.load399 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.16, align 8
  br label %loop.header.16

choice.else395:                                   ; preds = %choice.else221
  %b.load583 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.6.struct, align 8
  %app.str.len584 = and i64 %app.str.len, 281474976710655
  %str.tag585 = lshr i64 %app.str.len, 48
  %str.immortal586 = icmp eq i64 %str.tag585, 0
  br i1 %str.immortal586, label %str_ok588, label %str_gen_check587

choice.exit396:                                   ; preds = %loop.exit.21, %choice.exit470
  br label %choice.exit222

loop.header.16:                                   ; preds = %loop.latch.16, %choice.then394
  %counter.load400 = load i64, ptr %loop.idx.16, align 8
  %loop.cond401 = icmp slt i64 %counter.load400, %var.load399
  br i1 %loop.cond401, label %loop.body.16, label %loop.exit.nat.16

loop.body.16:                                     ; preds = %loop.header.16
  %loop.rel.i402 = sub i64 %counter.load400, 0
  store i64 1, ptr %loop.step.16, align 8
  store i64 %loop.rel.i402, ptr %var._i403, align 8
  store i64 %counter.load400, ptr %var._404, align 8
  store i64 %counter.load400, ptr %var.i, align 8
  %b.load405 = load ptr, ptr %var.b, align 8
  %var.load406 = load ptr, ptr %var.ms, align 8
  %s.read.len407 = getelementptr inbounds { i64, ptr }, ptr %var.load406, i32 0, i32 0
  %s.read.len408 = load i64, ptr %s.read.len407, align 8
  %s.read.len409 = and i64 %s.read.len408, 281474976710655
  %str.tag410 = lshr i64 %s.read.len408, 48
  %str.immortal411 = icmp eq i64 %str.tag410, 0
  br i1 %str.immortal411, label %str_ok413, label %str_gen_check412

loop.exit.nat.16:                                 ; preds = %loop.header.16
  br label %loop.exit.16

loop.latch.16:                                    ; preds = %b.push_done443
  %step.val465 = load i64, ptr %loop.step.16, align 8
  %loop.next466 = add i64 %counter.load400, %step.val465
  store i64 %loop.next466, ptr %loop.idx.16, align 8
  br label %loop.header.16

loop.exit.16:                                     ; preds = %loop.exit.nat.16
  %var.load467 = load i64, ptr %var.en, align 8
  %cmptmp468 = icmp slt i64 %var.load467, 6
  br i1 %cmptmp468, label %choice.then469, label %choice.exit470

str_gen_check412:                                 ; preds = %loop.body.16
  %arena.cur415 = call ptr @dva_arena_current()
  %tag.valid416 = call i1 @dva_arena_validate_tag(ptr %arena.cur415, i64 %str.tag410)
  br i1 %tag.valid416, label %str_ok413, label %str_stale414

str_ok413:                                        ; preds = %str_stale414, %str_gen_check412, %loop.body.16
  %s.read.data417 = getelementptr inbounds { i64, ptr }, ptr %var.load406, i32 0, i32 1
  %s.read.data418 = load ptr, ptr %s.read.data417, align 8
  %var.load419 = load i64, ptr %var.i, align 8
  %idx.neg420 = icmp slt i64 %var.load419, 0
  br i1 %idx.neg420, label %idx_oob423, label %idx_big_check421

str_stale414:                                     ; preds = %str_gen_check412
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok413

idx_big_check421:                                 ; preds = %str_ok413
  %idx.big424 = icmp sge i64 %var.load419, %s.read.len409
  br i1 %idx.big424, label %idx_oob423, label %idx_ok422

idx_ok422:                                        ; preds = %idx_oob423, %idx_big_check421
  %s.byte.gep425 = getelementptr i8, ptr %s.read.data418, i64 %var.load419
  %s.byte426 = load i8, ptr %s.byte.gep425, align 1
  %s.byte.val427 = zext i8 %s.byte426 to i64
  %b.b.ge0428 = icmp sge i64 %s.byte.val427, 0
  %b.b.le255429 = icmp sle i64 %s.byte.val427, 255
  %b.byte.range430 = and i1 %b.b.ge0428, %b.b.le255429
  br i1 %b.byte.range430, label %b.byte_ok431, label %b.byte_err432

idx_oob423:                                       ; preds = %idx_big_check421, %str_ok413
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok422

b.byte_ok431:                                     ; preds = %b.byte_err432, %idx_ok422
  %b.byte.i8433 = trunc i64 %s.byte.val427 to i8
  %b.len434 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 0
  %b.len435 = load i64, ptr %b.len434, align 8
  %b.cap436 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 2
  %b.cap437 = load i64, ptr %b.cap436, align 8
  %b.data438 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 1
  %b.data439 = load ptr, ptr %b.data438, align 8
  %b.needs.grow440 = icmp eq i64 %b.len435, %b.cap437
  br i1 %b.needs.grow440, label %b.grow441, label %b.nogrow442

b.byte_err432:                                    ; preds = %idx_ok422
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok431

b.grow441:                                        ; preds = %b.byte_ok431
  %b.cap2444 = mul i64 %b.cap437, 2
  %b.cap.small445 = icmp slt i64 %b.cap2444, 16
  %b.new.cap446 = select i1 %b.cap.small445, i64 16, i64 %b.cap2444
  %b.new.buf.len447 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap446, i64 1)
  %sum448 = extractvalue { i64, i1 } %b.new.buf.len447, 0
  %ovf449 = extractvalue { i64, i1 } %b.new.buf.len447, 1
  br i1 %ovf449, label %str_overflow_abort451, label %b.new.buf.len450

b.nogrow442:                                      ; preds = %b.byte_ok431
  br label %b.push_done443

b.push_done443:                                   ; preds = %b.nogrow442, %b.new.buf.len450
  %b.cur.data457 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 1
  %b.cur.data458 = load ptr, ptr %b.cur.data457, align 8
  %b.cur.len459 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 0
  %b.cur.len460 = load i64, ptr %b.cur.len459, align 8
  %b.byte.gep461 = getelementptr i8, ptr %b.cur.data458, i64 %b.cur.len460
  store i8 %b.byte.i8433, ptr %b.byte.gep461, align 1
  %b.next.len462 = add i64 %b.cur.len460, 1
  %b.nul463 = getelementptr i8, ptr %b.cur.data458, i64 %b.next.len462
  store i8 0, ptr %b.nul463, align 1
  %b.len.gep464 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 0
  store i64 %b.next.len462, ptr %b.len.gep464, align 8
  br label %loop.latch.16

b.new.buf.len450:                                 ; preds = %str_overflow_abort451, %b.grow441
  %arena.cur452 = call ptr @dva_arena_current()
  %b.new.buf453 = call ptr @dva_arena_alloc(ptr %arena.cur452, i64 %sum448)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf453, ptr align 1 %b.data439, i64 %b.len435, i1 false)
  %b.grow.nul454 = getelementptr i8, ptr %b.new.buf453, i64 %b.len435
  store i8 0, ptr %b.grow.nul454, align 1
  %b.new.data.gep455 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 1
  store ptr %b.new.buf453, ptr %b.new.data.gep455, align 8
  %b.new.cap.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load405, i32 0, i32 2
  store i64 %b.new.cap446, ptr %b.new.cap.gep456, align 8
  br label %b.push_done443

str_overflow_abort451:                            ; preds = %b.grow441
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len450

choice.then469:                                   ; preds = %loop.exit.16
  %b.load471 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len472 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 0
  %b.rn.cur.len473 = load i64, ptr %b.rn.cur.len472, align 8
  %b.rn.new.len474 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len473, i64 1)
  %sum475 = extractvalue { i64, i1 } %b.rn.new.len474, 0
  %ovf476 = extractvalue { i64, i1 } %b.rn.new.len474, 1
  br i1 %ovf476, label %str_overflow_abort478, label %b.rn.new.len477

choice.exit470:                                   ; preds = %loop.exit.18, %loop.exit.16
  br label %choice.exit396

b.rn.new.len477:                                  ; preds = %str_overflow_abort478, %choice.then469
  %b.cap479 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 2
  %b.cap480 = load i64, ptr %b.cap479, align 8
  %b.need.grow481 = icmp slt i64 %b.cap480, %sum475
  br i1 %b.need.grow481, label %b.grow2482, label %b.nogrow2483

str_overflow_abort478:                            ; preds = %choice.then469
  %27 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len477

b.grow2482:                                       ; preds = %b.rn.new.len477
  %b.cap2485 = mul i64 %b.cap480, 2
  %b.cap.small486 = icmp slt i64 %b.cap2485, 16
  %b.cap.grow487 = select i1 %b.cap.small486, i64 16, i64 %b.cap2485
  %b.cap.need488 = icmp slt i64 %b.cap.grow487, %sum475
  %b.new.cap489 = select i1 %b.cap.need488, i64 %sum475, i64 %b.cap.grow487
  %b.cur.len2490 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 0
  %b.cur.len2491 = load i64, ptr %b.cur.len2490, align 8
  %b.cur.data2492 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 1
  %b.cur.data2493 = load ptr, ptr %b.cur.data2492, align 8
  %b.new.buf.len2494 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap489, i64 1)
  %sum495 = extractvalue { i64, i1 } %b.new.buf.len2494, 0
  %ovf496 = extractvalue { i64, i1 } %b.new.buf.len2494, 1
  br i1 %ovf496, label %str_overflow_abort498, label %b.new.buf.len2497

b.nogrow2483:                                     ; preds = %b.rn.new.len477
  br label %b.grow_done484

b.grow_done484:                                   ; preds = %b.nogrow2483, %b.new.buf.len2497
  %b.rn.data504 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 1
  %b.rn.data505 = load ptr, ptr %b.rn.data504, align 8
  %b.rn.dst506 = getelementptr i8, ptr %b.rn.data505, i64 %b.rn.cur.len473
  br i1 true, label %br.b1.17, label %br.c2.17

b.new.buf.len2497:                                ; preds = %str_overflow_abort498, %b.grow2482
  %arena.cur499 = call ptr @dva_arena_current()
  %b.new.buf2500 = call ptr @dva_arena_alloc(ptr %arena.cur499, i64 %sum495)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2500, ptr align 1 %b.cur.data2493, i64 %b.cur.len2491, i1 false)
  %b.grow2.nul501 = getelementptr i8, ptr %b.new.buf2500, i64 %b.cur.len2491
  store i8 0, ptr %b.grow2.nul501, align 1
  %b.new.data2.gep502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 1
  store ptr %b.new.buf2500, ptr %b.new.data2.gep502, align 8
  %b.new.cap2.gep503 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 2
  store i64 %b.new.cap489, ptr %b.new.cap2.gep503, align 8
  br label %b.grow_done484

str_overflow_abort498:                            ; preds = %b.grow2482
  %28 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2497

br.b1.17:                                         ; preds = %b.grow_done484
  store i8 46, ptr %b.rn.dst506, align 1
  br label %br.done.17

br.c2.17:                                         ; preds = %b.grow_done484
  br i1 true, label %br.b2.17, label %br.c3.17

br.b2.17:                                         ; preds = %br.c2.17
  store i8 -64, ptr %b.rn.dst506, align 1
  %br.dst1507 = getelementptr i8, ptr %b.rn.dst506, i64 1
  store i8 -82, ptr %br.dst1507, align 1
  br label %br.done.17

br.c3.17:                                         ; preds = %br.c2.17
  br i1 true, label %br.b3.17, label %br.b4.17

br.b3.17:                                         ; preds = %br.c3.17
  store i8 -32, ptr %b.rn.dst506, align 1
  %br.dst1.3508 = getelementptr i8, ptr %b.rn.dst506, i64 1
  store i8 -128, ptr %br.dst1.3508, align 1
  %br.dst2.3509 = getelementptr i8, ptr %b.rn.dst506, i64 2
  store i8 -82, ptr %br.dst2.3509, align 1
  br label %br.done.17

br.b4.17:                                         ; preds = %br.c3.17
  store i8 -16, ptr %b.rn.dst506, align 1
  %br.dst1.4510 = getelementptr i8, ptr %b.rn.dst506, i64 1
  store i8 -128, ptr %br.dst1.4510, align 1
  %br.dst2.4511 = getelementptr i8, ptr %b.rn.dst506, i64 2
  store i8 -128, ptr %br.dst2.4511, align 1
  %br.dst3.4512 = getelementptr i8, ptr %b.rn.dst506, i64 3
  store i8 -82, ptr %br.dst3.4512, align 1
  br label %br.done.17

br.done.17:                                       ; preds = %br.b4.17, %br.b3.17, %br.b2.17, %br.b1.17
  %br.nul513 = getelementptr i8, ptr %b.rn.data505, i64 %sum475
  store i8 0, ptr %br.nul513, align 1
  %b.len.gep514 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 0
  store i64 %sum475, ptr %b.len.gep514, align 8
  %var.load515 = load i64, ptr %var.en, align 8
  store i64 %var.load515, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.header.18:                                   ; preds = %loop.latch.18, %br.done.17
  %counter.load516 = load i64, ptr %loop.idx.18, align 8
  %loop.cond517 = icmp slt i64 %counter.load516, 6
  br i1 %loop.cond517, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i518 = sub i64 %counter.load516, %var.load515
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i518, ptr %var._i519, align 8
  store i64 %counter.load516, ptr %var._520, align 8
  store i64 %counter.load516, ptr %var.i, align 8
  %b.load521 = load ptr, ptr %var.b, align 8
  %var.load522 = load ptr, ptr %var.ms, align 8
  %s.read.len523 = getelementptr inbounds { i64, ptr }, ptr %var.load522, i32 0, i32 0
  %s.read.len524 = load i64, ptr %s.read.len523, align 8
  %s.read.len525 = and i64 %s.read.len524, 281474976710655
  %str.tag526 = lshr i64 %s.read.len524, 48
  %str.immortal527 = icmp eq i64 %str.tag526, 0
  br i1 %str.immortal527, label %str_ok529, label %str_gen_check528

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %b.push_done559
  %step.val581 = load i64, ptr %loop.step.18, align 8
  %loop.next582 = add i64 %counter.load516, %step.val581
  store i64 %loop.next582, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  br label %choice.exit470

str_gen_check528:                                 ; preds = %loop.body.18
  %arena.cur531 = call ptr @dva_arena_current()
  %tag.valid532 = call i1 @dva_arena_validate_tag(ptr %arena.cur531, i64 %str.tag526)
  br i1 %tag.valid532, label %str_ok529, label %str_stale530

str_ok529:                                        ; preds = %str_stale530, %str_gen_check528, %loop.body.18
  %s.read.data533 = getelementptr inbounds { i64, ptr }, ptr %var.load522, i32 0, i32 1
  %s.read.data534 = load ptr, ptr %s.read.data533, align 8
  %var.load535 = load i64, ptr %var.i, align 8
  %idx.neg536 = icmp slt i64 %var.load535, 0
  br i1 %idx.neg536, label %idx_oob539, label %idx_big_check537

str_stale530:                                     ; preds = %str_gen_check528
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok529

idx_big_check537:                                 ; preds = %str_ok529
  %idx.big540 = icmp sge i64 %var.load535, %s.read.len525
  br i1 %idx.big540, label %idx_oob539, label %idx_ok538

idx_ok538:                                        ; preds = %idx_oob539, %idx_big_check537
  %s.byte.gep541 = getelementptr i8, ptr %s.read.data534, i64 %var.load535
  %s.byte542 = load i8, ptr %s.byte.gep541, align 1
  %s.byte.val543 = zext i8 %s.byte542 to i64
  %b.b.ge0544 = icmp sge i64 %s.byte.val543, 0
  %b.b.le255545 = icmp sle i64 %s.byte.val543, 255
  %b.byte.range546 = and i1 %b.b.ge0544, %b.b.le255545
  br i1 %b.byte.range546, label %b.byte_ok547, label %b.byte_err548

idx_oob539:                                       ; preds = %idx_big_check537, %str_ok529
  %30 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok538

b.byte_ok547:                                     ; preds = %b.byte_err548, %idx_ok538
  %b.byte.i8549 = trunc i64 %s.byte.val543 to i8
  %b.len550 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 0
  %b.len551 = load i64, ptr %b.len550, align 8
  %b.cap552 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 2
  %b.cap553 = load i64, ptr %b.cap552, align 8
  %b.data554 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 1
  %b.data555 = load ptr, ptr %b.data554, align 8
  %b.needs.grow556 = icmp eq i64 %b.len551, %b.cap553
  br i1 %b.needs.grow556, label %b.grow557, label %b.nogrow558

b.byte_err548:                                    ; preds = %idx_ok538
  %31 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok547

b.grow557:                                        ; preds = %b.byte_ok547
  %b.cap2560 = mul i64 %b.cap553, 2
  %b.cap.small561 = icmp slt i64 %b.cap2560, 16
  %b.new.cap562 = select i1 %b.cap.small561, i64 16, i64 %b.cap2560
  %b.new.buf.len563 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap562, i64 1)
  %sum564 = extractvalue { i64, i1 } %b.new.buf.len563, 0
  %ovf565 = extractvalue { i64, i1 } %b.new.buf.len563, 1
  br i1 %ovf565, label %str_overflow_abort567, label %b.new.buf.len566

b.nogrow558:                                      ; preds = %b.byte_ok547
  br label %b.push_done559

b.push_done559:                                   ; preds = %b.nogrow558, %b.new.buf.len566
  %b.cur.data573 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 1
  %b.cur.data574 = load ptr, ptr %b.cur.data573, align 8
  %b.cur.len575 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 0
  %b.cur.len576 = load i64, ptr %b.cur.len575, align 8
  %b.byte.gep577 = getelementptr i8, ptr %b.cur.data574, i64 %b.cur.len576
  store i8 %b.byte.i8549, ptr %b.byte.gep577, align 1
  %b.next.len578 = add i64 %b.cur.len576, 1
  %b.nul579 = getelementptr i8, ptr %b.cur.data574, i64 %b.next.len578
  store i8 0, ptr %b.nul579, align 1
  %b.len.gep580 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 0
  store i64 %b.next.len578, ptr %b.len.gep580, align 8
  br label %loop.latch.18

b.new.buf.len566:                                 ; preds = %str_overflow_abort567, %b.grow557
  %arena.cur568 = call ptr @dva_arena_current()
  %b.new.buf569 = call ptr @dva_arena_alloc(ptr %arena.cur568, i64 %sum564)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf569, ptr align 1 %b.data555, i64 %b.len551, i1 false)
  %b.grow.nul570 = getelementptr i8, ptr %b.new.buf569, i64 %b.len551
  store i8 0, ptr %b.grow.nul570, align 1
  %b.new.data.gep571 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 1
  store ptr %b.new.buf569, ptr %b.new.data.gep571, align 8
  %b.new.cap.gep572 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load521, i32 0, i32 2
  store i64 %b.new.cap562, ptr %b.new.cap.gep572, align 8
  br label %b.push_done559

str_overflow_abort567:                            ; preds = %b.grow557
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len566

str_gen_check587:                                 ; preds = %choice.else395
  %arena.cur590 = call ptr @dva_arena_current()
  %tag.valid591 = call i1 @dva_arena_validate_tag(ptr %arena.cur590, i64 %str.tag585)
  br i1 %tag.valid591, label %str_ok588, label %str_stale589

str_ok588:                                        ; preds = %str_stale589, %str_gen_check587, %choice.else395
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load583, i32 0, i32 0
  %b.app.cur.len592 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len592, i64 %app.str.len584)
  %sum593 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf594 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf594, label %str_overflow_abort596, label %b.app.new.len595

str_stale589:                                     ; preds = %str_gen_check587
  %33 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok588

b.app.new.len595:                                 ; preds = %str_overflow_abort596, %str_ok588
  %b.cap597 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load583, i32 0, i32 2
  %b.cap598 = load i64, ptr %b.cap597, align 8
  %b.need.grow599 = icmp slt i64 %b.cap598, %sum593
  br i1 %b.need.grow599, label %b.grow2600, label %b.nogrow2601

str_overflow_abort596:                            ; preds = %str_ok588
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len595

b.grow2600:                                       ; preds = %b.app.new.len595
  %b.cap2603 = mul i64 %b.cap598, 2
  %b.cap.small604 = icmp slt i64 %b.cap2603, 16
  %b.cap.grow605 = select i1 %b.cap.small604, i64 16, i64 %b.cap2603
  %b.cap.need606 = icmp slt i64 %b.cap.grow605, %sum593
  %b.new.cap607 = select i1 %b.cap.need606, i64 %sum593, i64 %b.cap.grow605
  %b.cur.len2608 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load583, i32 0, i32 0
  %b.cur.len2609 = load i64, ptr %b.cur.len2608, align 8
  %b.cur.data2610 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load583, i32 0, i32 1
  %b.cur.data2611 = load ptr, ptr %b.cur.data2610, align 8
  %b.new.buf.len2612 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap607, i64 1)
  %sum613 = extractvalue { i64, i1 } %b.new.buf.len2612, 0
  %ovf614 = extractvalue { i64, i1 } %b.new.buf.len2612, 1
  br i1 %ovf614, label %str_overflow_abort616, label %b.new.buf.len2615

b.nogrow2601:                                     ; preds = %b.app.new.len595
  br label %b.grow_done602

b.grow_done602:                                   ; preds = %b.nogrow2601, %b.new.buf.len2615
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load583, i32 0, i32 1
  %b.app.data622 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data622, i64 %b.app.cur.len592
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len584, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data622, i64 %sum593
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep623 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load583, i32 0, i32 0
  store i64 %sum593, ptr %b.len.gep623, align 8
  %var.load624 = load i64, ptr %"var.e'", align 8
  %subtmp625 = sub i64 0, %var.load624
  %subtmp626 = sub i64 %subtmp625, 1
  store i64 0, ptr %loop.idx.19, align 8
  br label %loop.header.19

b.new.buf.len2615:                                ; preds = %str_overflow_abort616, %b.grow2600
  %arena.cur617 = call ptr @dva_arena_current()
  %b.new.buf2618 = call ptr @dva_arena_alloc(ptr %arena.cur617, i64 %sum613)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2618, ptr align 1 %b.cur.data2611, i64 %b.cur.len2609, i1 false)
  %b.grow2.nul619 = getelementptr i8, ptr %b.new.buf2618, i64 %b.cur.len2609
  store i8 0, ptr %b.grow2.nul619, align 1
  %b.new.data2.gep620 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load583, i32 0, i32 1
  store ptr %b.new.buf2618, ptr %b.new.data2.gep620, align 8
  %b.new.cap2.gep621 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load583, i32 0, i32 2
  store i64 %b.new.cap607, ptr %b.new.cap2.gep621, align 8
  br label %b.grow_done602

str_overflow_abort616:                            ; preds = %b.grow2600
  %35 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2615

loop.header.19:                                   ; preds = %loop.latch.19, %b.grow_done602
  %counter.load627 = load i64, ptr %loop.idx.19, align 8
  %loop.cond628 = icmp slt i64 %counter.load627, %subtmp626
  br i1 %loop.cond628, label %loop.body.19, label %loop.exit.nat.19

loop.body.19:                                     ; preds = %loop.header.19
  %loop.rel.i629 = sub i64 %counter.load627, 0
  store i64 1, ptr %loop.step.19, align 8
  store i64 %loop.rel.i629, ptr %var._i630, align 8
  store i64 %counter.load627, ptr %var._631, align 8
  store i64 %counter.load627, ptr %var.i, align 8
  %b.load632 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len633 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 0
  %b.rn.cur.len634 = load i64, ptr %b.rn.cur.len633, align 8
  %b.rn.new.len635 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len634, i64 1)
  %sum636 = extractvalue { i64, i1 } %b.rn.new.len635, 0
  %ovf637 = extractvalue { i64, i1 } %b.rn.new.len635, 1
  br i1 %ovf637, label %str_overflow_abort639, label %b.rn.new.len638

loop.exit.nat.19:                                 ; preds = %loop.header.19
  br label %loop.exit.19

loop.latch.19:                                    ; preds = %br.done.20
  %step.val676 = load i64, ptr %loop.step.19, align 8
  %loop.next677 = add i64 %counter.load627, %step.val676
  store i64 %loop.next677, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %loop.exit.nat.19
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

b.rn.new.len638:                                  ; preds = %str_overflow_abort639, %loop.body.19
  %b.cap640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 2
  %b.cap641 = load i64, ptr %b.cap640, align 8
  %b.need.grow642 = icmp slt i64 %b.cap641, %sum636
  br i1 %b.need.grow642, label %b.grow2643, label %b.nogrow2644

str_overflow_abort639:                            ; preds = %loop.body.19
  %36 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len638

b.grow2643:                                       ; preds = %b.rn.new.len638
  %b.cap2646 = mul i64 %b.cap641, 2
  %b.cap.small647 = icmp slt i64 %b.cap2646, 16
  %b.cap.grow648 = select i1 %b.cap.small647, i64 16, i64 %b.cap2646
  %b.cap.need649 = icmp slt i64 %b.cap.grow648, %sum636
  %b.new.cap650 = select i1 %b.cap.need649, i64 %sum636, i64 %b.cap.grow648
  %b.cur.len2651 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 0
  %b.cur.len2652 = load i64, ptr %b.cur.len2651, align 8
  %b.cur.data2653 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 1
  %b.cur.data2654 = load ptr, ptr %b.cur.data2653, align 8
  %b.new.buf.len2655 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap650, i64 1)
  %sum656 = extractvalue { i64, i1 } %b.new.buf.len2655, 0
  %ovf657 = extractvalue { i64, i1 } %b.new.buf.len2655, 1
  br i1 %ovf657, label %str_overflow_abort659, label %b.new.buf.len2658

b.nogrow2644:                                     ; preds = %b.rn.new.len638
  br label %b.grow_done645

b.grow_done645:                                   ; preds = %b.nogrow2644, %b.new.buf.len2658
  %b.rn.data665 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 1
  %b.rn.data666 = load ptr, ptr %b.rn.data665, align 8
  %b.rn.dst667 = getelementptr i8, ptr %b.rn.data666, i64 %b.rn.cur.len634
  br i1 true, label %br.b1.20, label %br.c2.20

b.new.buf.len2658:                                ; preds = %str_overflow_abort659, %b.grow2643
  %arena.cur660 = call ptr @dva_arena_current()
  %b.new.buf2661 = call ptr @dva_arena_alloc(ptr %arena.cur660, i64 %sum656)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2661, ptr align 1 %b.cur.data2654, i64 %b.cur.len2652, i1 false)
  %b.grow2.nul662 = getelementptr i8, ptr %b.new.buf2661, i64 %b.cur.len2652
  store i8 0, ptr %b.grow2.nul662, align 1
  %b.new.data2.gep663 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 1
  store ptr %b.new.buf2661, ptr %b.new.data2.gep663, align 8
  %b.new.cap2.gep664 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 2
  store i64 %b.new.cap650, ptr %b.new.cap2.gep664, align 8
  br label %b.grow_done645

str_overflow_abort659:                            ; preds = %b.grow2643
  %37 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2658

br.b1.20:                                         ; preds = %b.grow_done645
  store i8 48, ptr %b.rn.dst667, align 1
  br label %br.done.20

br.c2.20:                                         ; preds = %b.grow_done645
  br i1 true, label %br.b2.20, label %br.c3.20

br.b2.20:                                         ; preds = %br.c2.20
  store i8 -64, ptr %b.rn.dst667, align 1
  %br.dst1668 = getelementptr i8, ptr %b.rn.dst667, i64 1
  store i8 -80, ptr %br.dst1668, align 1
  br label %br.done.20

br.c3.20:                                         ; preds = %br.c2.20
  br i1 true, label %br.b3.20, label %br.b4.20

br.b3.20:                                         ; preds = %br.c3.20
  store i8 -32, ptr %b.rn.dst667, align 1
  %br.dst1.3669 = getelementptr i8, ptr %b.rn.dst667, i64 1
  store i8 -128, ptr %br.dst1.3669, align 1
  %br.dst2.3670 = getelementptr i8, ptr %b.rn.dst667, i64 2
  store i8 -80, ptr %br.dst2.3670, align 1
  br label %br.done.20

br.b4.20:                                         ; preds = %br.c3.20
  store i8 -16, ptr %b.rn.dst667, align 1
  %br.dst1.4671 = getelementptr i8, ptr %b.rn.dst667, i64 1
  store i8 -128, ptr %br.dst1.4671, align 1
  %br.dst2.4672 = getelementptr i8, ptr %b.rn.dst667, i64 2
  store i8 -128, ptr %br.dst2.4672, align 1
  %br.dst3.4673 = getelementptr i8, ptr %b.rn.dst667, i64 3
  store i8 -80, ptr %br.dst3.4673, align 1
  br label %br.done.20

br.done.20:                                       ; preds = %br.b4.20, %br.b3.20, %br.b2.20, %br.b1.20
  %br.nul674 = getelementptr i8, ptr %b.rn.data666, i64 %sum636
  store i8 0, ptr %br.nul674, align 1
  %b.len.gep675 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load632, i32 0, i32 0
  store i64 %sum636, ptr %b.len.gep675, align 8
  br label %loop.latch.19

loop.header.21:                                   ; preds = %loop.latch.21, %loop.exit.19
  %counter.load678 = load i64, ptr %loop.idx.21, align 8
  %loop.cond679 = icmp slt i64 %counter.load678, 6
  br i1 %loop.cond679, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i680 = sub i64 %counter.load678, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i680, ptr %var._i681, align 8
  store i64 %counter.load678, ptr %var._682, align 8
  store i64 %counter.load678, ptr %var.i, align 8
  %b.load683 = load ptr, ptr %var.b, align 8
  %var.load684 = load ptr, ptr %var.ms, align 8
  %s.read.len685 = getelementptr inbounds { i64, ptr }, ptr %var.load684, i32 0, i32 0
  %s.read.len686 = load i64, ptr %s.read.len685, align 8
  %s.read.len687 = and i64 %s.read.len686, 281474976710655
  %str.tag688 = lshr i64 %s.read.len686, 48
  %str.immortal689 = icmp eq i64 %str.tag688, 0
  br i1 %str.immortal689, label %str_ok691, label %str_gen_check690

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %b.push_done721
  %step.val743 = load i64, ptr %loop.step.21, align 8
  %loop.next744 = add i64 %counter.load678, %step.val743
  store i64 %loop.next744, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  br label %choice.exit396

str_gen_check690:                                 ; preds = %loop.body.21
  %arena.cur693 = call ptr @dva_arena_current()
  %tag.valid694 = call i1 @dva_arena_validate_tag(ptr %arena.cur693, i64 %str.tag688)
  br i1 %tag.valid694, label %str_ok691, label %str_stale692

str_ok691:                                        ; preds = %str_stale692, %str_gen_check690, %loop.body.21
  %s.read.data695 = getelementptr inbounds { i64, ptr }, ptr %var.load684, i32 0, i32 1
  %s.read.data696 = load ptr, ptr %s.read.data695, align 8
  %var.load697 = load i64, ptr %var.i, align 8
  %idx.neg698 = icmp slt i64 %var.load697, 0
  br i1 %idx.neg698, label %idx_oob701, label %idx_big_check699

str_stale692:                                     ; preds = %str_gen_check690
  %38 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok691

idx_big_check699:                                 ; preds = %str_ok691
  %idx.big702 = icmp sge i64 %var.load697, %s.read.len687
  br i1 %idx.big702, label %idx_oob701, label %idx_ok700

idx_ok700:                                        ; preds = %idx_oob701, %idx_big_check699
  %s.byte.gep703 = getelementptr i8, ptr %s.read.data696, i64 %var.load697
  %s.byte704 = load i8, ptr %s.byte.gep703, align 1
  %s.byte.val705 = zext i8 %s.byte704 to i64
  %b.b.ge0706 = icmp sge i64 %s.byte.val705, 0
  %b.b.le255707 = icmp sle i64 %s.byte.val705, 255
  %b.byte.range708 = and i1 %b.b.ge0706, %b.b.le255707
  br i1 %b.byte.range708, label %b.byte_ok709, label %b.byte_err710

idx_oob701:                                       ; preds = %idx_big_check699, %str_ok691
  %39 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok700

b.byte_ok709:                                     ; preds = %b.byte_err710, %idx_ok700
  %b.byte.i8711 = trunc i64 %s.byte.val705 to i8
  %b.len712 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load683, i32 0, i32 0
  %b.len713 = load i64, ptr %b.len712, align 8
  %b.cap714 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load683, i32 0, i32 2
  %b.cap715 = load i64, ptr %b.cap714, align 8
  %b.data716 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load683, i32 0, i32 1
  %b.data717 = load ptr, ptr %b.data716, align 8
  %b.needs.grow718 = icmp eq i64 %b.len713, %b.cap715
  br i1 %b.needs.grow718, label %b.grow719, label %b.nogrow720

b.byte_err710:                                    ; preds = %idx_ok700
  %40 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok709

b.grow719:                                        ; preds = %b.byte_ok709
  %b.cap2722 = mul i64 %b.cap715, 2
  %b.cap.small723 = icmp slt i64 %b.cap2722, 16
  %b.new.cap724 = select i1 %b.cap.small723, i64 16, i64 %b.cap2722
  %b.new.buf.len725 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap724, i64 1)
  %sum726 = extractvalue { i64, i1 } %b.new.buf.len725, 0
  %ovf727 = extractvalue { i64, i1 } %b.new.buf.len725, 1
  br i1 %ovf727, label %str_overflow_abort729, label %b.new.buf.len728

b.nogrow720:                                      ; preds = %b.byte_ok709
  br label %b.push_done721

b.push_done721:                                   ; preds = %b.nogrow720, %b.new.buf.len728
  %b.cur.data735 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load683, i32 0, i32 1
  %b.cur.data736 = load ptr, ptr %b.cur.data735, align 8
  %b.cur.len737 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load683, i32 0, i32 0
  %b.cur.len738 = load i64, ptr %b.cur.len737, align 8
  %b.byte.gep739 = getelementptr i8, ptr %b.cur.data736, i64 %b.cur.len738
  store i8 %b.byte.i8711, ptr %b.byte.gep739, align 1
  %b.next.len740 = add i64 %b.cur.len738, 1
  %b.nul741 = getelementptr i8, ptr %b.cur.data736, i64 %b.next.len740
  store i8 0, ptr %b.nul741, align 1
  %b.len.gep742 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load683, i32 0, i32 0
  store i64 %b.next.len740, ptr %b.len.gep742, align 8
  br label %loop.latch.21

b.new.buf.len728:                                 ; preds = %str_overflow_abort729, %b.grow719
  %arena.cur730 = call ptr @dva_arena_current()
  %b.new.buf731 = call ptr @dva_arena_alloc(ptr %arena.cur730, i64 %sum726)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf731, ptr align 1 %b.data717, i64 %b.len713, i1 false)
  %b.grow.nul732 = getelementptr i8, ptr %b.new.buf731, i64 %b.len713
  store i8 0, ptr %b.grow.nul732, align 1
  %b.new.data.gep733 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load683, i32 0, i32 1
  store ptr %b.new.buf731, ptr %b.new.data.gep733, align 8
  %b.new.cap.gep734 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load683, i32 0, i32 2
  store i64 %b.new.cap724, ptr %b.new.cap.gep734, align 8
  br label %b.push_done721

str_overflow_abort729:                            ; preds = %b.grow719
  %41 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len728

b.freeze.check754:                                ; preds = %choice.exit222
  %b.freeze.last.idx757 = sub i64 %b.freeze.nc752, 1
  %b.freeze.chunks.gep758 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena750, i32 0, i32 3
  %b.freeze.chunk.slot759 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep758, i64 0, i64 %b.freeze.last.idx757
  %b.freeze.last.chunk760 = load ptr, ptr %b.freeze.chunk.slot759, align 8
  %b.freeze.off.gep761 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena750, i32 0, i32 2
  %b.freeze.off762 = load i64, ptr %b.freeze.off.gep761, align 8
  %b.freeze.bump763 = getelementptr i8, ptr %b.freeze.last.chunk760, i64 %b.freeze.off762
  %b.freeze.cap.gep764 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena750, i32 0, i32 0
  %b.freeze.cap765 = load i64, ptr %b.freeze.cap.gep764, align 8
  %b.freeze.chunk.end766 = getelementptr i8, ptr %b.freeze.last.chunk760, i64 %b.freeze.cap765
  %b.freeze.ge.chunk767 = icmp uge ptr %b.freeze.data749, %b.freeze.last.chunk760
  %b.freeze.lt.end768 = icmp ult ptr %b.freeze.data749, %b.freeze.chunk.end766
  %b.freeze.in.chunk769 = and i1 %b.freeze.ge.chunk767, %b.freeze.lt.end768
  %b.freeze.ge.bump770 = icmp uge ptr %b.freeze.data749, %b.freeze.bump763
  %b.freeze.reaped771 = and i1 %b.freeze.in.chunk769, %b.freeze.ge.bump770
  br i1 %b.freeze.reaped771, label %b.freeze.copy755, label %b.freeze.done756

b.freeze.copy755:                                 ; preds = %b.freeze.check754
  %b.freeze.alen772 = add i64 %b.freeze.len747, 1
  %arena.cur773 = call ptr @dva_arena_current()
  %b.freeze.fresh774 = call ptr @dva_arena_alloc(ptr %arena.cur773, i64 %b.freeze.alen772)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh774, ptr align 1 %b.freeze.data749, i64 %b.freeze.len747, i1 false)
  %b.freeze.nul775 = getelementptr i8, ptr %b.freeze.fresh774, i64 %b.freeze.len747
  store i8 0, ptr %b.freeze.nul775, align 1
  br label %b.freeze.done756

b.freeze.done756:                                 ; preds = %b.freeze.copy755, %b.freeze.check754, %choice.exit222
  %b.freeze.data776 = phi ptr [ %b.freeze.data749, %choice.exit222 ], [ %b.freeze.data749, %b.freeze.check754 ], [ %b.freeze.fresh774, %b.freeze.copy755 ]
  %arena.cur777 = call ptr @dva_arena_current()
  %builder.freeze778 = call ptr @dva_arena_alloc(ptr %arena.cur777, i64 16)
  %str.build.len.gep779 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze778, i32 0, i32 0
  store i64 %b.freeze.len747, ptr %str.build.len.gep779, align 8
  %str.build.data.gep780 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze778, i32 0, i32 1
  store ptr %b.freeze.data776, ptr %str.build.data.gep780, align 8
  %b.freeze.rst.len781 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load745, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len781, align 8
  %b.freeze.rst.data782 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load745, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data782, align 8
  %b.freeze.rst.cap783 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load745, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap783, align 8
  store ptr %builder.freeze778, ptr %var.full, align 8
  store i64 -1, ptr %"var.dot_pos'", align 8
  %var.load784 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load784, i32 0, i32 0
  %str.len.query785 = load i64, ptr %str.len.query, align 8
  %str.len.query786 = and i64 %str.len.query785, 281474976710655
  %str.tag787 = lshr i64 %str.len.query785, 48
  %str.immortal788 = icmp eq i64 %str.tag787, 0
  br i1 %str.immortal788, label %str_ok790, label %str_gen_check789

str_gen_check789:                                 ; preds = %b.freeze.done756
  %arena.cur792 = call ptr @dva_arena_current()
  %tag.valid793 = call i1 @dva_arena_validate_tag(ptr %arena.cur792, i64 %str.tag787)
  br i1 %tag.valid793, label %str_ok790, label %str_stale791

str_ok790:                                        ; preds = %str_stale791, %str_gen_check789, %b.freeze.done756
  store i64 0, ptr %loop.idx.22, align 8
  br label %loop.header.22

str_stale791:                                     ; preds = %str_gen_check789
  %42 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok790

loop.header.22:                                   ; preds = %loop.latch.22, %str_ok790
  %counter.load794 = load i64, ptr %loop.idx.22, align 8
  %loop.cond795 = icmp slt i64 %counter.load794, %str.len.query786
  br i1 %loop.cond795, label %loop.body.22, label %loop.exit.nat.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i796 = sub i64 %counter.load794, 0
  store i64 1, ptr %loop.step.22, align 8
  store i64 %loop.rel.i796, ptr %var._i797, align 8
  store i64 %counter.load794, ptr %var._798, align 8
  store i64 %counter.load794, ptr %var.i, align 8
  %var.load799 = load ptr, ptr %var.full, align 8
  %s.read.len800 = getelementptr inbounds { i64, ptr }, ptr %var.load799, i32 0, i32 0
  %s.read.len801 = load i64, ptr %s.read.len800, align 8
  %s.read.len802 = and i64 %s.read.len801, 281474976710655
  %str.tag803 = lshr i64 %s.read.len801, 48
  %str.immortal804 = icmp eq i64 %str.tag803, 0
  br i1 %str.immortal804, label %str_ok806, label %str_gen_check805

loop.exit.nat.22:                                 ; preds = %loop.header.22
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %choice.exit823
  %step.val825 = load i64, ptr %loop.step.22, align 8
  %loop.next826 = add i64 %counter.load794, %step.val825
  store i64 %loop.next826, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %loop.exit.nat.22
  %var.load827 = load ptr, ptr %var.full, align 8
  %str.len.query828 = getelementptr inbounds { i64, ptr }, ptr %var.load827, i32 0, i32 0
  %str.len.query829 = load i64, ptr %str.len.query828, align 8
  %str.len.query830 = and i64 %str.len.query829, 281474976710655
  %str.tag831 = lshr i64 %str.len.query829, 48
  %str.immortal832 = icmp eq i64 %str.tag831, 0
  br i1 %str.immortal832, label %str_ok834, label %str_gen_check833

str_gen_check805:                                 ; preds = %loop.body.22
  %arena.cur808 = call ptr @dva_arena_current()
  %tag.valid809 = call i1 @dva_arena_validate_tag(ptr %arena.cur808, i64 %str.tag803)
  br i1 %tag.valid809, label %str_ok806, label %str_stale807

str_ok806:                                        ; preds = %str_stale807, %str_gen_check805, %loop.body.22
  %s.read.data810 = getelementptr inbounds { i64, ptr }, ptr %var.load799, i32 0, i32 1
  %s.read.data811 = load ptr, ptr %s.read.data810, align 8
  %var.load812 = load i64, ptr %var.i, align 8
  %idx.neg813 = icmp slt i64 %var.load812, 0
  br i1 %idx.neg813, label %idx_oob816, label %idx_big_check814

str_stale807:                                     ; preds = %str_gen_check805
  %43 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok806

idx_big_check814:                                 ; preds = %str_ok806
  %idx.big817 = icmp sge i64 %var.load812, %s.read.len802
  br i1 %idx.big817, label %idx_oob816, label %idx_ok815

idx_ok815:                                        ; preds = %idx_oob816, %idx_big_check814
  %s.byte.gep818 = getelementptr i8, ptr %s.read.data811, i64 %var.load812
  %s.byte819 = load i8, ptr %s.byte.gep818, align 1
  %s.byte.val820 = zext i8 %s.byte819 to i64
  %cmptmp821 = icmp eq i64 %s.byte.val820, 46
  br i1 %cmptmp821, label %choice.then822, label %choice.exit823

idx_oob816:                                       ; preds = %idx_big_check814, %str_ok806
  %44 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok815

choice.then822:                                   ; preds = %idx_ok815
  %var.load824 = load i64, ptr %var.i, align 8
  store i64 %var.load824, ptr %"var.dot_pos'", align 8
  br label %choice.exit823

choice.exit823:                                   ; preds = %choice.then822, %idx_ok815
  br label %loop.latch.22

str_gen_check833:                                 ; preds = %loop.exit.22
  %arena.cur836 = call ptr @dva_arena_current()
  %tag.valid837 = call i1 @dva_arena_validate_tag(ptr %arena.cur836, i64 %str.tag831)
  br i1 %tag.valid837, label %str_ok834, label %str_stale835

str_ok834:                                        ; preds = %str_stale835, %str_gen_check833, %loop.exit.22
  store i64 %str.len.query830, ptr %var.len, align 8
  %var.load838 = load i64, ptr %var.len, align 8
  store i64 %var.load838, ptr %"var.end'", align 8
  %var.load839 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp840 = icmp sge i64 %var.load839, 0
  br i1 %cmptmp840, label %choice.then841, label %choice.exit842

str_stale835:                                     ; preds = %str_gen_check833
  %45 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok834

choice.then841:                                   ; preds = %str_ok834
  store i64 0, ptr %loop.idx.23, align 8
  br label %loop.header.23

choice.exit842:                                   ; preds = %choice.exit887, %str_ok834
  %var.load889 = load ptr, ptr %var.full, align 8
  %s.read.len890 = getelementptr inbounds { i64, ptr }, ptr %var.load889, i32 0, i32 0
  %s.read.len891 = load i64, ptr %s.read.len890, align 8
  %s.read.len892 = and i64 %s.read.len891, 281474976710655
  %str.tag893 = lshr i64 %s.read.len891, 48
  %str.immortal894 = icmp eq i64 %str.tag893, 0
  br i1 %str.immortal894, label %str_ok896, label %str_gen_check895

loop.header.23:                                   ; preds = %loop.latch.23, %choice.then841
  %counter.load843 = load i64, ptr %loop.idx.23, align 8
  br label %loop.body.23

loop.body.23:                                     ; preds = %loop.header.23
  %loop.rel.i844 = sub i64 %counter.load843, 0
  store i64 1, ptr %loop.step.23, align 8
  store i64 %loop.rel.i844, ptr %var._i845, align 8
  store i64 %counter.load843, ptr %var._846, align 8
  %var.load847 = load i64, ptr %"var.end'", align 8
  %subtmp848 = sub i64 %var.load847, 1
  %var.load849 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp850 = icmp sgt i64 %subtmp848, %var.load849
  br i1 %cmptmp850, label %and.24.then, label %and.24.else

loop.exit.nat.23:                                 ; No predecessors!
  br label %loop.exit.23

loop.latch.23:                                    ; preds = %choice.exit877
  %step.val880 = load i64, ptr %loop.step.23, align 8
  %loop.next881 = add i64 %counter.load843, %step.val880
  store i64 %loop.next881, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.exit.23:                                     ; preds = %choice.else876, %loop.exit.nat.23
  %var.load882 = load i64, ptr %"var.end'", align 8
  %subtmp883 = sub i64 %var.load882, 1
  %var.load884 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp885 = icmp eq i64 %subtmp883, %var.load884
  br i1 %cmptmp885, label %choice.then886, label %choice.exit887

and.24.then:                                      ; preds = %loop.body.23
  %var.load851 = load ptr, ptr %var.full, align 8
  %s.read.len852 = getelementptr inbounds { i64, ptr }, ptr %var.load851, i32 0, i32 0
  %s.read.len853 = load i64, ptr %s.read.len852, align 8
  %s.read.len854 = and i64 %s.read.len853, 281474976710655
  %str.tag855 = lshr i64 %s.read.len853, 48
  %str.immortal856 = icmp eq i64 %str.tag855, 0
  br i1 %str.immortal856, label %str_ok858, label %str_gen_check857

and.24.else:                                      ; preds = %loop.body.23
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %idx_ok868
  %and.24.phi = phi i1 [ %cmptmp874, %idx_ok868 ], [ %cmptmp850, %and.24.else ]
  br i1 %and.24.phi, label %choice.then875, label %choice.else876

str_gen_check857:                                 ; preds = %and.24.then
  %arena.cur860 = call ptr @dva_arena_current()
  %tag.valid861 = call i1 @dva_arena_validate_tag(ptr %arena.cur860, i64 %str.tag855)
  br i1 %tag.valid861, label %str_ok858, label %str_stale859

str_ok858:                                        ; preds = %str_stale859, %str_gen_check857, %and.24.then
  %s.read.data862 = getelementptr inbounds { i64, ptr }, ptr %var.load851, i32 0, i32 1
  %s.read.data863 = load ptr, ptr %s.read.data862, align 8
  %var.load864 = load i64, ptr %"var.end'", align 8
  %subtmp865 = sub i64 %var.load864, 1
  %idx.neg866 = icmp slt i64 %subtmp865, 0
  br i1 %idx.neg866, label %idx_oob869, label %idx_big_check867

str_stale859:                                     ; preds = %str_gen_check857
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok858

idx_big_check867:                                 ; preds = %str_ok858
  %idx.big870 = icmp sge i64 %subtmp865, %s.read.len854
  br i1 %idx.big870, label %idx_oob869, label %idx_ok868

idx_ok868:                                        ; preds = %idx_oob869, %idx_big_check867
  %s.byte.gep871 = getelementptr i8, ptr %s.read.data863, i64 %subtmp865
  %s.byte872 = load i8, ptr %s.byte.gep871, align 1
  %s.byte.val873 = zext i8 %s.byte872 to i64
  %cmptmp874 = icmp eq i64 %s.byte.val873, 48
  br label %and.24.exit

idx_oob869:                                       ; preds = %idx_big_check867, %str_ok858
  %47 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok868

choice.then875:                                   ; preds = %and.24.exit
  %var.load878 = load i64, ptr %"var.end'", align 8
  %subtmp879 = sub i64 %var.load878, 1
  store i64 %subtmp879, ptr %"var.end'", align 8
  br label %choice.exit877

choice.else876:                                   ; preds = %and.24.exit
  br label %loop.exit.23

choice.exit877:                                   ; preds = %choice.then875
  br label %loop.latch.23

choice.then886:                                   ; preds = %loop.exit.23
  %var.load888 = load i64, ptr %"var.dot_pos'", align 8
  store i64 %var.load888, ptr %"var.end'", align 8
  br label %choice.exit887

choice.exit887:                                   ; preds = %choice.then886, %loop.exit.23
  br label %choice.exit842

str_gen_check895:                                 ; preds = %choice.exit842
  %arena.cur898 = call ptr @dva_arena_current()
  %tag.valid899 = call i1 @dva_arena_validate_tag(ptr %arena.cur898, i64 %str.tag893)
  br i1 %tag.valid899, label %str_ok896, label %str_stale897

str_ok896:                                        ; preds = %str_stale897, %str_gen_check895, %choice.exit842
  %s.read.data900 = getelementptr inbounds { i64, ptr }, ptr %var.load889, i32 0, i32 1
  %s.read.data901 = load ptr, ptr %s.read.data900, align 8
  %var.load902 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len892, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len892
  %final.start = select i1 %start.gt.len, i64 %s.read.len892, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load902, 0
  %rel.end = add i64 %s.read.len892, %var.load902
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load902
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len892
  %final.end = select i1 %end.gt.len, i64 %s.read.len892, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data901, i64 %final.start
  %arena.cur903 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur903, i64 16)
  %str.build.len.gep904 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep904, align 8
  %str.build.data.gep905 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep905, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load906 = load i64, ptr %"var.e'", align 8
  %cmptmp907 = icmp slt i64 %var.load906, 0
  br i1 %cmptmp907, label %choice.then908, label %choice.else909

str_stale897:                                     ; preds = %str_gen_check895
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok896

choice.then908:                                   ; preds = %str_ok896
  %var.load911 = load i64, ptr %"var.e'", align 8
  %subtmp912 = sub i64 0, %var.load911
  %call.res913 = call ptr @"str::from_int"(i64 %subtmp912)
  %concat.lhs = load i64, ptr @str.7.struct, align 8
  %concat.lhs914 = and i64 %concat.lhs, 281474976710655
  %str.tag915 = lshr i64 %concat.lhs, 48
  %str.immortal916 = icmp eq i64 %str.tag915, 0
  br i1 %str.immortal916, label %str_ok918, label %str_gen_check917

choice.else909:                                   ; preds = %str_ok896
  %var.load946 = load i64, ptr %"var.e'", align 8
  %call.res947 = call ptr @"str::from_int"(i64 %var.load946)
  br label %choice.exit910

choice.exit910:                                   ; preds = %choice.else909, %concat.tot.len940
  %choice.res948 = phi ptr [ %concat.str, %concat.tot.len940 ], [ %call.res947, %choice.else909 ]
  store ptr %choice.res948, ptr %var.es, align 8
  %var.load949 = load i64, ptr %"var.e'", align 8
  %cmptmp950 = icmp slt i64 %var.load949, -4
  br i1 %cmptmp950, label %or.25.then, label %or.25.else

str_gen_check917:                                 ; preds = %choice.then908
  %arena.cur920 = call ptr @dva_arena_current()
  %tag.valid921 = call i1 @dva_arena_validate_tag(ptr %arena.cur920, i64 %str.tag915)
  br i1 %tag.valid921, label %str_ok918, label %str_stale919

str_ok918:                                        ; preds = %str_stale919, %str_gen_check917, %choice.then908
  %concat.lhs922 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res913, i32 0, i32 0
  %concat.rhs923 = load i64, ptr %concat.rhs, align 8
  %concat.rhs924 = and i64 %concat.rhs923, 281474976710655
  %str.tag925 = lshr i64 %concat.rhs923, 48
  %str.immortal926 = icmp eq i64 %str.tag925, 0
  br i1 %str.immortal926, label %str_ok928, label %str_gen_check927

str_stale919:                                     ; preds = %str_gen_check917
  %49 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok918

str_gen_check927:                                 ; preds = %str_ok918
  %arena.cur930 = call ptr @dva_arena_current()
  %tag.valid931 = call i1 @dva_arena_validate_tag(ptr %arena.cur930, i64 %str.tag925)
  br i1 %tag.valid931, label %str_ok928, label %str_stale929

str_ok928:                                        ; preds = %str_stale929, %str_gen_check927, %str_ok918
  %concat.rhs932 = getelementptr inbounds { i64, ptr }, ptr %call.res913, i32 0, i32 1
  %concat.rhs933 = load ptr, ptr %concat.rhs932, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs914, i64 %concat.rhs924)
  %sum934 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf935 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf935, label %str_overflow_abort937, label %concat.sum.len936

str_stale929:                                     ; preds = %str_gen_check927
  %50 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok928

concat.sum.len936:                                ; preds = %str_overflow_abort937, %str_ok928
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum934, i64 1)
  %sum938 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf939 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf939, label %str_overflow_abort941, label %concat.tot.len940

str_overflow_abort937:                            ; preds = %str_ok928
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len936

concat.tot.len940:                                ; preds = %str_overflow_abort941, %concat.sum.len936
  %arena.cur942 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur942, i64 %sum938)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs922, i64 %concat.lhs914, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs914
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs933, i64 %concat.rhs924, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum934
  store i8 0, ptr %concat.nul, align 1
  %arena.cur943 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur943, i64 16)
  %str.build.len.gep944 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum934, ptr %str.build.len.gep944, align 8
  %str.build.data.gep945 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep945, align 8
  br label %choice.exit910

str_overflow_abort941:                            ; preds = %concat.sum.len936
  %52 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len940

or.25.then:                                       ; preds = %choice.exit910
  br label %or.25.exit

or.25.else:                                       ; preds = %choice.exit910
  %var.load951 = load i64, ptr %"var.e'", align 8
  %cmptmp952 = icmp sge i64 %var.load951, 6
  br label %or.25.exit

or.25.exit:                                       ; preds = %or.25.else, %or.25.then
  %or.25.phi = phi i1 [ %cmptmp950, %or.25.then ], [ %cmptmp952, %or.25.else ]
  br i1 %or.25.phi, label %choice.then953, label %choice.else954

choice.then953:                                   ; preds = %or.25.exit
  %var.load956 = load ptr, ptr %var.mant, align 8
  %concat.lhs957 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 0
  %concat.lhs958 = load i64, ptr %concat.lhs957, align 8
  %concat.lhs959 = and i64 %concat.lhs958, 281474976710655
  %str.tag960 = lshr i64 %concat.lhs958, 48
  %str.immortal961 = icmp eq i64 %str.tag960, 0
  br i1 %str.immortal961, label %str_ok963, label %str_gen_check962

choice.else954:                                   ; preds = %or.25.exit
  %var.load1040 = load ptr, ptr %var.mant, align 8
  br label %choice.exit955

choice.exit955:                                   ; preds = %choice.else954, %concat.tot.len1030
  %choice.res1041 = phi ptr [ %concat.str1037, %concat.tot.len1030 ], [ %var.load1040, %choice.else954 ]
  ret ptr %choice.res1041

str_gen_check962:                                 ; preds = %choice.then953
  %arena.cur965 = call ptr @dva_arena_current()
  %tag.valid966 = call i1 @dva_arena_validate_tag(ptr %arena.cur965, i64 %str.tag960)
  br i1 %tag.valid966, label %str_ok963, label %str_stale964

str_ok963:                                        ; preds = %str_stale964, %str_gen_check962, %choice.then953
  %concat.lhs967 = getelementptr inbounds { i64, ptr }, ptr %var.load956, i32 0, i32 1
  %concat.lhs968 = load ptr, ptr %concat.lhs967, align 8
  %concat.rhs969 = load i64, ptr @str.8.struct, align 8
  %concat.rhs970 = and i64 %concat.rhs969, 281474976710655
  %str.tag971 = lshr i64 %concat.rhs969, 48
  %str.immortal972 = icmp eq i64 %str.tag971, 0
  br i1 %str.immortal972, label %str_ok974, label %str_gen_check973

str_stale964:                                     ; preds = %str_gen_check962
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok963

str_gen_check973:                                 ; preds = %str_ok963
  %arena.cur976 = call ptr @dva_arena_current()
  %tag.valid977 = call i1 @dva_arena_validate_tag(ptr %arena.cur976, i64 %str.tag971)
  br i1 %tag.valid977, label %str_ok974, label %str_stale975

str_ok974:                                        ; preds = %str_stale975, %str_gen_check973, %str_ok963
  %concat.rhs978 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len979 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs959, i64 %concat.rhs970)
  %sum980 = extractvalue { i64, i1 } %concat.sum.len979, 0
  %ovf981 = extractvalue { i64, i1 } %concat.sum.len979, 1
  br i1 %ovf981, label %str_overflow_abort983, label %concat.sum.len982

str_stale975:                                     ; preds = %str_gen_check973
  %54 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok974

concat.sum.len982:                                ; preds = %str_overflow_abort983, %str_ok974
  %concat.tot.len984 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum980, i64 1)
  %sum985 = extractvalue { i64, i1 } %concat.tot.len984, 0
  %ovf986 = extractvalue { i64, i1 } %concat.tot.len984, 1
  br i1 %ovf986, label %str_overflow_abort988, label %concat.tot.len987

str_overflow_abort983:                            ; preds = %str_ok974
  %55 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len982

concat.tot.len987:                                ; preds = %str_overflow_abort988, %concat.sum.len982
  %arena.cur989 = call ptr @dva_arena_current()
  %concat.buf990 = call ptr @dva_arena_alloc(ptr %arena.cur989, i64 %sum985)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf990, ptr align 1 %concat.lhs968, i64 %concat.lhs959, i1 false)
  %concat.mid991 = getelementptr i8, ptr %concat.buf990, i64 %concat.lhs959
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid991, ptr align 1 %concat.rhs978, i64 %concat.rhs970, i1 false)
  %concat.nul992 = getelementptr i8, ptr %concat.buf990, i64 %sum980
  store i8 0, ptr %concat.nul992, align 1
  %arena.cur993 = call ptr @dva_arena_current()
  %concat.str994 = call ptr @dva_arena_alloc(ptr %arena.cur993, i64 16)
  %str.build.len.gep995 = getelementptr inbounds { i64, ptr }, ptr %concat.str994, i32 0, i32 0
  store i64 %sum980, ptr %str.build.len.gep995, align 8
  %str.build.data.gep996 = getelementptr inbounds { i64, ptr }, ptr %concat.str994, i32 0, i32 1
  store ptr %concat.buf990, ptr %str.build.data.gep996, align 8
  %var.load997 = load ptr, ptr %var.es, align 8
  %concat.lhs998 = getelementptr inbounds { i64, ptr }, ptr %concat.str994, i32 0, i32 0
  %concat.lhs999 = load i64, ptr %concat.lhs998, align 8
  %concat.lhs1000 = and i64 %concat.lhs999, 281474976710655
  %str.tag1001 = lshr i64 %concat.lhs999, 48
  %str.immortal1002 = icmp eq i64 %str.tag1001, 0
  br i1 %str.immortal1002, label %str_ok1004, label %str_gen_check1003

str_overflow_abort988:                            ; preds = %concat.sum.len982
  %56 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len987

str_gen_check1003:                                ; preds = %concat.tot.len987
  %arena.cur1006 = call ptr @dva_arena_current()
  %tag.valid1007 = call i1 @dva_arena_validate_tag(ptr %arena.cur1006, i64 %str.tag1001)
  br i1 %tag.valid1007, label %str_ok1004, label %str_stale1005

str_ok1004:                                       ; preds = %str_stale1005, %str_gen_check1003, %concat.tot.len987
  %concat.lhs1008 = getelementptr inbounds { i64, ptr }, ptr %concat.str994, i32 0, i32 1
  %concat.lhs1009 = load ptr, ptr %concat.lhs1008, align 8
  %concat.rhs1010 = getelementptr inbounds { i64, ptr }, ptr %var.load997, i32 0, i32 0
  %concat.rhs1011 = load i64, ptr %concat.rhs1010, align 8
  %concat.rhs1012 = and i64 %concat.rhs1011, 281474976710655
  %str.tag1013 = lshr i64 %concat.rhs1011, 48
  %str.immortal1014 = icmp eq i64 %str.tag1013, 0
  br i1 %str.immortal1014, label %str_ok1016, label %str_gen_check1015

str_stale1005:                                    ; preds = %str_gen_check1003
  %57 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1004

str_gen_check1015:                                ; preds = %str_ok1004
  %arena.cur1018 = call ptr @dva_arena_current()
  %tag.valid1019 = call i1 @dva_arena_validate_tag(ptr %arena.cur1018, i64 %str.tag1013)
  br i1 %tag.valid1019, label %str_ok1016, label %str_stale1017

str_ok1016:                                       ; preds = %str_stale1017, %str_gen_check1015, %str_ok1004
  %concat.rhs1020 = getelementptr inbounds { i64, ptr }, ptr %var.load997, i32 0, i32 1
  %concat.rhs1021 = load ptr, ptr %concat.rhs1020, align 8
  %concat.sum.len1022 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1000, i64 %concat.rhs1012)
  %sum1023 = extractvalue { i64, i1 } %concat.sum.len1022, 0
  %ovf1024 = extractvalue { i64, i1 } %concat.sum.len1022, 1
  br i1 %ovf1024, label %str_overflow_abort1026, label %concat.sum.len1025

str_stale1017:                                    ; preds = %str_gen_check1015
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1016

concat.sum.len1025:                               ; preds = %str_overflow_abort1026, %str_ok1016
  %concat.tot.len1027 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1023, i64 1)
  %sum1028 = extractvalue { i64, i1 } %concat.tot.len1027, 0
  %ovf1029 = extractvalue { i64, i1 } %concat.tot.len1027, 1
  br i1 %ovf1029, label %str_overflow_abort1031, label %concat.tot.len1030

str_overflow_abort1026:                           ; preds = %str_ok1016
  %59 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1025

concat.tot.len1030:                               ; preds = %str_overflow_abort1031, %concat.sum.len1025
  %arena.cur1032 = call ptr @dva_arena_current()
  %concat.buf1033 = call ptr @dva_arena_alloc(ptr %arena.cur1032, i64 %sum1028)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1033, ptr align 1 %concat.lhs1009, i64 %concat.lhs1000, i1 false)
  %concat.mid1034 = getelementptr i8, ptr %concat.buf1033, i64 %concat.lhs1000
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1034, ptr align 1 %concat.rhs1021, i64 %concat.rhs1012, i1 false)
  %concat.nul1035 = getelementptr i8, ptr %concat.buf1033, i64 %sum1023
  store i8 0, ptr %concat.nul1035, align 1
  %arena.cur1036 = call ptr @dva_arena_current()
  %concat.str1037 = call ptr @dva_arena_alloc(ptr %arena.cur1036, i64 16)
  %str.build.len.gep1038 = getelementptr inbounds { i64, ptr }, ptr %concat.str1037, i32 0, i32 0
  store i64 %sum1023, ptr %str.build.len.gep1038, align 8
  %str.build.data.gep1039 = getelementptr inbounds { i64, ptr }, ptr %concat.str1037, i32 0, i32 1
  store ptr %concat.buf1033, ptr %str.build.data.gep1039, align 8
  br label %choice.exit955

str_overflow_abort1031:                           ; preds = %concat.sum.len1025
  %60 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1030
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
