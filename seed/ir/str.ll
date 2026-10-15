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
  %var._97 = alloca i64, align 8
  %var._i96 = alloca i64, align 8
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
  %var.load46 = load i64, ptr %var.v, align 8
  %cmptmp47 = icmp slt i64 %var.load46, 0
  br i1 %cmptmp47, label %choice.then48, label %choice.exit49

choice.exit14:                                    ; preds = %div.ok44
  br label %loop.latch.3

choice.case15:                                    ; preds = %loop.body.3
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
  %addtmp = add i64 48, %modtmp
  %b.load = load ptr, ptr %var.b, align 8
  %var.load19 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort21, label %div.not_zero20

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

div.not_zero20:                                   ; preds = %div.zero_abort21, %div.ok
  %div.is.min22 = icmp eq i64 %var.load19, -9223372036854775808
  %div.is.ovf23 = and i1 %div.is.min22, false
  br i1 %div.is.ovf23, label %div.ovf_abort25, label %div.ok24

div.zero_abort21:                                 ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero20

div.ok24:                                         ; preds = %div.ovf_abort25, %div.not_zero20
  %modtmp26 = srem i64 %var.load19, 10
  %addtmp27 = add i64 48, %modtmp26
  %b.b.ge0 = icmp sge i64 %addtmp27, 0
  %b.b.le255 = icmp sle i64 %addtmp27, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.ovf_abort25:                                  ; preds = %div.not_zero20
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok24

b.byte_ok:                                        ; preds = %b.byte_err, %div.ok24
  %b.byte.i8 = trunc i64 %addtmp27 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len28 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap29 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data30 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len28, %b.cap29
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.ok24
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap29, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum31 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf32 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf32, label %str_overflow_abort34, label %b.new.buf.len33

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len33
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data36 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len37 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data36, i64 %b.cur.len37
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len37, 1
  %b.nul = getelementptr i8, ptr %b.cur.data36, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep38, align 8
  %var.load39 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort41, label %div.not_zero40

b.new.buf.len33:                                  ; preds = %str_overflow_abort34, %b.grow
  %arena.cur35 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 %sum31)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data30, i64 %b.len28, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len28
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort34:                             ; preds = %b.grow
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len33

div.not_zero40:                                   ; preds = %div.zero_abort41, %b.push_done
  %div.is.min42 = icmp eq i64 %var.load39, -9223372036854775808
  %div.is.ovf43 = and i1 %div.is.min42, false
  br i1 %div.is.ovf43, label %div.ovf_abort45, label %div.ok44

div.zero_abort41:                                 ; preds = %b.push_done
  %8 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero40

div.ok44:                                         ; preds = %div.ovf_abort45, %div.not_zero40
  %divtmp = sdiv i64 %var.load39, 10
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit14

div.ovf_abort45:                                  ; preds = %div.not_zero40
  %9 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok44

choice.then48:                                    ; preds = %loop.exit.3
  %b.load50 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  %b.rn.cur.len51 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len51, i64 1)
  %sum52 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf53 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.rn.new.len54

choice.exit49:                                    ; preds = %br.done.4, %loop.exit.3
  %var.load70 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load70, i32 0, i32 0
  %b.freeze.len71 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load70, i32 0, i32 1
  %b.freeze.data72 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len54:                                   ; preds = %str_overflow_abort55, %choice.then48
  %b.cap56 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 2
  %b.cap57 = load i64, ptr %b.cap56, align 8
  %b.need.grow = icmp slt i64 %b.cap57, %sum52
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort55:                             ; preds = %choice.then48
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len54

b.grow2:                                          ; preds = %b.rn.new.len54
  %b.cap258 = mul i64 %b.cap57, 2
  %b.cap.small59 = icmp slt i64 %b.cap258, 16
  %b.cap.grow = select i1 %b.cap.small59, i64 16, i64 %b.cap258
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum52
  %b.new.cap60 = select i1 %b.cap.need, i64 %sum52, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  %b.cur.len261 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  %b.cur.data262 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap60, i64 1)
  %sum63 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf64 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf64, label %str_overflow_abort66, label %b.new.buf.len265

b.nogrow2:                                        ; preds = %b.rn.new.len54
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len265
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  %b.rn.data68 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data68, i64 %b.rn.cur.len51
  br i1 true, label %br.b1.4, label %br.c2.4

b.new.buf.len265:                                 ; preds = %str_overflow_abort66, %b.grow2
  %arena.cur67 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 %sum63)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data262, i64 %b.cur.len261, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len261
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 2
  store i64 %b.new.cap60, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort66:                             ; preds = %b.grow2
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len265

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
  %br.nul = getelementptr i8, ptr %b.rn.data68, i64 %sum52
  store i8 0, ptr %br.nul, align 1
  %b.len.gep69 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  store i64 %sum52, ptr %b.len.gep69, align 8
  br label %choice.exit49

b.freeze.check:                                   ; preds = %choice.exit49
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data72, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data72, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data72, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur73 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 %b.freeze.len71)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data72, i64 %b.freeze.len71, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit49
  %b.freeze.data74 = phi ptr [ %b.freeze.data72, %choice.exit49 ], [ %b.freeze.data72, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur75 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len71, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data74, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load70, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load70, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load70, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur76 = call ptr @dva_arena_current()
  %builder.new77 = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 24)
  %b.data.gep78 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new77, i32 0, i32 1
  %b.len.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new77, i32 0, i32 0
  %b.cap.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new77, i32 0, i32 2
  %b.buf.len81 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum82 = extractvalue { i64, i1 } %b.buf.len81, 0
  %ovf83 = extractvalue { i64, i1 } %b.buf.len81, 1
  br i1 %ovf83, label %str_overflow_abort85, label %b.buf.len84

b.buf.len84:                                      ; preds = %str_overflow_abort85, %b.freeze.done
  %arena.cur86 = call ptr @dva_arena_current()
  %b.buf87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 %sum82)
  %b.nul088 = getelementptr i8, ptr %b.buf87, i64 0
  store i8 0, ptr %b.nul088, align 1
  store i64 0, ptr %b.len.gep79, align 8
  store ptr %b.buf87, ptr %b.data.gep78, align 8
  store i64 32, ptr %b.cap.gep80, align 8
  store ptr %builder.new77, ptr %var.out, align 8
  %var.load89 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load89, i32 0, i32 0
  %str.len.query90 = load i64, ptr %str.len.query, align 8
  %str.len.query91 = and i64 %str.len.query90, 281474976710655
  %str.tag = lshr i64 %str.len.query90, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort85:                             ; preds = %b.freeze.done
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len84

str_gen_check:                                    ; preds = %b.buf.len84
  %arena.cur92 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur92, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len84
  store i64 0, ptr %loop.idx.5, align 8
  br label %loop.header.5

str_stale:                                        ; preds = %str_gen_check
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.5:                                    ; preds = %loop.latch.5, %str_ok
  %counter.load93 = load i64, ptr %loop.idx.5, align 8
  %loop.cond94 = icmp slt i64 %counter.load93, %str.len.query91
  br i1 %loop.cond94, label %loop.body.5, label %loop.exit.nat.5

loop.body.5:                                      ; preds = %loop.header.5
  %loop.rel.i95 = sub i64 %counter.load93, 0
  store i64 1, ptr %loop.step.5, align 8
  store i64 %loop.rel.i95, ptr %var._i96, align 8
  store i64 %counter.load93, ptr %var._97, align 8
  store i64 %counter.load93, ptr %var.i, align 8
  %var.load98 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 0
  %s.read.len99 = load i64, ptr %s.read.len, align 8
  %s.read.len100 = and i64 %s.read.len99, 281474976710655
  %str.tag101 = lshr i64 %s.read.len99, 48
  %str.immortal102 = icmp eq i64 %str.tag101, 0
  br i1 %str.immortal102, label %str_ok104, label %str_gen_check103

loop.exit.nat.5:                                  ; preds = %loop.header.5
  br label %loop.exit.5

loop.latch.5:                                     ; preds = %b.push_done174
  %step.val196 = load i64, ptr %loop.step.5, align 8
  %loop.next197 = add i64 %counter.load93, %step.val196
  store i64 %loop.next197, ptr %loop.idx.5, align 8
  br label %loop.header.5

loop.exit.5:                                      ; preds = %loop.exit.nat.5
  %var.load198 = load ptr, ptr %var.out, align 8
  %b.freeze.len199 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load198, i32 0, i32 0
  %b.freeze.len200 = load i64, ptr %b.freeze.len199, align 8
  %b.freeze.data201 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load198, i32 0, i32 1
  %b.freeze.data202 = load ptr, ptr %b.freeze.data201, align 8
  %b.freeze.arena203 = call ptr @dva_arena_current()
  %b.freeze.nc.gep204 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena203, i32 0, i32 1
  %b.freeze.nc205 = load i64, ptr %b.freeze.nc.gep204, align 8
  %b.freeze.has.chunk206 = icmp sgt i64 %b.freeze.nc205, 0
  br i1 %b.freeze.has.chunk206, label %b.freeze.check207, label %b.freeze.done209

str_gen_check103:                                 ; preds = %loop.body.5
  %arena.cur106 = call ptr @dva_arena_current()
  %tag.valid107 = call i1 @dva_arena_validate_tag(ptr %arena.cur106, i64 %str.tag101)
  br i1 %tag.valid107, label %str_ok104, label %str_stale105

str_ok104:                                        ; preds = %str_stale105, %str_gen_check103, %loop.body.5
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load98, i32 0, i32 1
  %s.read.data108 = load ptr, ptr %s.read.data, align 8
  %var.load109 = load ptr, ptr %var.s, align 8
  %str.len.query110 = getelementptr inbounds { i64, ptr }, ptr %var.load109, i32 0, i32 0
  %str.len.query111 = load i64, ptr %str.len.query110, align 8
  %str.len.query112 = and i64 %str.len.query111, 281474976710655
  %str.tag113 = lshr i64 %str.len.query111, 48
  %str.immortal114 = icmp eq i64 %str.tag113, 0
  br i1 %str.immortal114, label %str_ok116, label %str_gen_check115

str_stale105:                                     ; preds = %str_gen_check103
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok104

str_gen_check115:                                 ; preds = %str_ok104
  %arena.cur118 = call ptr @dva_arena_current()
  %tag.valid119 = call i1 @dva_arena_validate_tag(ptr %arena.cur118, i64 %str.tag113)
  br i1 %tag.valid119, label %str_ok116, label %str_stale117

str_ok116:                                        ; preds = %str_stale117, %str_gen_check115, %str_ok104
  %subtmp120 = sub i64 %str.len.query112, 1
  %var.load121 = load i64, ptr %var.i, align 8
  %subtmp122 = sub i64 %subtmp120, %var.load121
  %idx.neg = icmp slt i64 %subtmp122, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale117:                                     ; preds = %str_gen_check115
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok116

idx_big_check:                                    ; preds = %str_ok116
  %idx.big = icmp sge i64 %subtmp122, %s.read.len100
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data108, i64 %subtmp122
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

idx_oob:                                          ; preds = %idx_big_check, %str_ok116
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check130:                                 ; preds = %idx_ok
  %arena.cur133 = call ptr @dva_arena_current()
  %tag.valid134 = call i1 @dva_arena_validate_tag(ptr %arena.cur133, i64 %str.tag128)
  br i1 %tag.valid134, label %str_ok131, label %str_stale132

str_ok131:                                        ; preds = %str_stale132, %str_gen_check130, %idx_ok
  %s.read.data135 = getelementptr inbounds { i64, ptr }, ptr %var.load124, i32 0, i32 1
  %s.read.data136 = load ptr, ptr %s.read.data135, align 8
  %var.load137 = load ptr, ptr %var.s, align 8
  %str.len.query138 = getelementptr inbounds { i64, ptr }, ptr %var.load137, i32 0, i32 0
  %str.len.query139 = load i64, ptr %str.len.query138, align 8
  %str.len.query140 = and i64 %str.len.query139, 281474976710655
  %str.tag141 = lshr i64 %str.len.query139, 48
  %str.immortal142 = icmp eq i64 %str.tag141, 0
  br i1 %str.immortal142, label %str_ok144, label %str_gen_check143

str_stale132:                                     ; preds = %str_gen_check130
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok131

str_gen_check143:                                 ; preds = %str_ok131
  %arena.cur146 = call ptr @dva_arena_current()
  %tag.valid147 = call i1 @dva_arena_validate_tag(ptr %arena.cur146, i64 %str.tag141)
  br i1 %tag.valid147, label %str_ok144, label %str_stale145

str_ok144:                                        ; preds = %str_stale145, %str_gen_check143, %str_ok131
  %subtmp148 = sub i64 %str.len.query140, 1
  %var.load149 = load i64, ptr %var.i, align 8
  %subtmp150 = sub i64 %subtmp148, %var.load149
  %idx.neg151 = icmp slt i64 %subtmp150, 0
  br i1 %idx.neg151, label %idx_oob154, label %idx_big_check152

str_stale145:                                     ; preds = %str_gen_check143
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok144

idx_big_check152:                                 ; preds = %str_ok144
  %idx.big155 = icmp sge i64 %subtmp150, %s.read.len127
  br i1 %idx.big155, label %idx_oob154, label %idx_ok153

idx_ok153:                                        ; preds = %idx_oob154, %idx_big_check152
  %s.byte.gep156 = getelementptr i8, ptr %s.read.data136, i64 %subtmp150
  %s.byte157 = load i8, ptr %s.byte.gep156, align 1
  %s.byte.val158 = zext i8 %s.byte157 to i64
  %b.b.ge0159 = icmp sge i64 %s.byte.val158, 0
  %b.b.le255160 = icmp sle i64 %s.byte.val158, 255
  %b.byte.range161 = and i1 %b.b.ge0159, %b.b.le255160
  br i1 %b.byte.range161, label %b.byte_ok162, label %b.byte_err163

idx_oob154:                                       ; preds = %idx_big_check152, %str_ok144
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok153

b.byte_ok162:                                     ; preds = %b.byte_err163, %idx_ok153
  %b.byte.i8164 = trunc i64 %s.byte.val158 to i8
  %b.len165 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 0
  %b.len166 = load i64, ptr %b.len165, align 8
  %b.cap167 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 2
  %b.cap168 = load i64, ptr %b.cap167, align 8
  %b.data169 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 1
  %b.data170 = load ptr, ptr %b.data169, align 8
  %b.needs.grow171 = icmp eq i64 %b.len166, %b.cap168
  br i1 %b.needs.grow171, label %b.grow172, label %b.nogrow173

b.byte_err163:                                    ; preds = %idx_ok153
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok162

b.grow172:                                        ; preds = %b.byte_ok162
  %b.cap2175 = mul i64 %b.cap168, 2
  %b.cap.small176 = icmp slt i64 %b.cap2175, 16
  %b.new.cap177 = select i1 %b.cap.small176, i64 16, i64 %b.cap2175
  %b.new.buf.len178 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap177, i64 1)
  %sum179 = extractvalue { i64, i1 } %b.new.buf.len178, 0
  %ovf180 = extractvalue { i64, i1 } %b.new.buf.len178, 1
  br i1 %ovf180, label %str_overflow_abort182, label %b.new.buf.len181

b.nogrow173:                                      ; preds = %b.byte_ok162
  br label %b.push_done174

b.push_done174:                                   ; preds = %b.nogrow173, %b.new.buf.len181
  %b.cur.data188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 1
  %b.cur.data189 = load ptr, ptr %b.cur.data188, align 8
  %b.cur.len190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 0
  %b.cur.len191 = load i64, ptr %b.cur.len190, align 8
  %b.byte.gep192 = getelementptr i8, ptr %b.cur.data189, i64 %b.cur.len191
  store i8 %b.byte.i8164, ptr %b.byte.gep192, align 1
  %b.next.len193 = add i64 %b.cur.len191, 1
  %b.nul194 = getelementptr i8, ptr %b.cur.data189, i64 %b.next.len193
  store i8 0, ptr %b.nul194, align 1
  %b.len.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 0
  store i64 %b.next.len193, ptr %b.len.gep195, align 8
  br label %loop.latch.5

b.new.buf.len181:                                 ; preds = %str_overflow_abort182, %b.grow172
  %arena.cur183 = call ptr @dva_arena_current()
  %b.new.buf184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 %sum179)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf184, ptr align 1 %b.data170, i64 %b.len166, i1 false)
  %b.grow.nul185 = getelementptr i8, ptr %b.new.buf184, i64 %b.len166
  store i8 0, ptr %b.grow.nul185, align 1
  %b.new.data.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 1
  store ptr %b.new.buf184, ptr %b.new.data.gep186, align 8
  %b.new.cap.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load123, i32 0, i32 2
  store i64 %b.new.cap177, ptr %b.new.cap.gep187, align 8
  br label %b.push_done174

str_overflow_abort182:                            ; preds = %b.grow172
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len181

b.freeze.check207:                                ; preds = %loop.exit.5
  %b.freeze.last.idx210 = sub i64 %b.freeze.nc205, 1
  %b.freeze.chunks.gep211 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena203, i32 0, i32 3
  %b.freeze.chunk.slot212 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep211, i64 0, i64 %b.freeze.last.idx210
  %b.freeze.last.chunk213 = load ptr, ptr %b.freeze.chunk.slot212, align 8
  %b.freeze.off.gep214 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena203, i32 0, i32 2
  %b.freeze.off215 = load i64, ptr %b.freeze.off.gep214, align 8
  %b.freeze.bump216 = getelementptr i8, ptr %b.freeze.last.chunk213, i64 %b.freeze.off215
  %b.freeze.cap.gep217 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena203, i32 0, i32 0
  %b.freeze.cap218 = load i64, ptr %b.freeze.cap.gep217, align 8
  %b.freeze.chunk.end219 = getelementptr i8, ptr %b.freeze.last.chunk213, i64 %b.freeze.cap218
  %b.freeze.ge.chunk220 = icmp uge ptr %b.freeze.data202, %b.freeze.last.chunk213
  %b.freeze.lt.end221 = icmp ult ptr %b.freeze.data202, %b.freeze.chunk.end219
  %b.freeze.in.chunk222 = and i1 %b.freeze.ge.chunk220, %b.freeze.lt.end221
  %b.freeze.ge.bump223 = icmp uge ptr %b.freeze.data202, %b.freeze.bump216
  %b.freeze.reaped224 = and i1 %b.freeze.in.chunk222, %b.freeze.ge.bump223
  br i1 %b.freeze.reaped224, label %b.freeze.copy208, label %b.freeze.done209

b.freeze.copy208:                                 ; preds = %b.freeze.check207
  %arena.cur225 = call ptr @dva_arena_current()
  %b.freeze.fresh226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 %b.freeze.len200)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh226, ptr align 1 %b.freeze.data202, i64 %b.freeze.len200, i1 false)
  br label %b.freeze.done209

b.freeze.done209:                                 ; preds = %b.freeze.copy208, %b.freeze.check207, %loop.exit.5
  %b.freeze.data227 = phi ptr [ %b.freeze.data202, %loop.exit.5 ], [ %b.freeze.data202, %b.freeze.check207 ], [ %b.freeze.fresh226, %b.freeze.copy208 ]
  %arena.cur228 = call ptr @dva_arena_current()
  %builder.freeze229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 16)
  %str.build.len.gep230 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze229, i32 0, i32 0
  store i64 %b.freeze.len200, ptr %str.build.len.gep230, align 8
  %str.build.data.gep231 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze229, i32 0, i32 1
  store ptr %b.freeze.data227, ptr %str.build.data.gep231, align 8
  %b.freeze.rst.len232 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load198, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len232, align 8
  %b.freeze.rst.data233 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load198, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data233, align 8
  %b.freeze.rst.cap234 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load198, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap234, align 8
  ret ptr %builder.freeze229
}

define ptr @"str::from_u64"(i64 %0) #1 {
entry:
  %var._55 = alloca i64, align 8
  %var._i54 = alloca i64, align 8
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
  %var.load28 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 0
  %b.freeze.len29 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 1
  %b.freeze.data30 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit5:                                     ; preds = %div.not_zero26
  br label %loop.latch.6

choice.case6:                                     ; preds = %loop.body.6
  %var.load8 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next7:                                     ; preds = %loop.body.6
  br label %loop.exit.6

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case6
  %modtmp = urem i64 %var.load8, 10
  %addtmp = add i64 48, %modtmp
  %b.load = load ptr, ptr %var.b, align 8
  %var.load9 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort11, label %div.not_zero10

div.zero_abort:                                   ; preds = %choice.case6
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.not_zero10:                                   ; preds = %div.zero_abort11, %div.not_zero
  %modtmp12 = urem i64 %var.load9, 10
  %addtmp13 = add i64 48, %modtmp12
  %b.b.ge0 = icmp sge i64 %addtmp13, 0
  %b.b.le255 = icmp sle i64 %addtmp13, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.zero_abort11:                                 ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero10

b.byte_ok:                                        ; preds = %b.byte_err, %div.not_zero10
  %b.byte.i8 = trunc i64 %addtmp13 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len14 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap15 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data16 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len14, %b.cap15
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.not_zero10
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
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
  %var.load25 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort27, label %div.not_zero26

b.new.buf.len19:                                  ; preds = %str_overflow_abort20, %b.grow
  %arena.cur21 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 %sum17)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data16, i64 %b.len14, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len14
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort20:                             ; preds = %b.grow
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len19

div.not_zero26:                                   ; preds = %div.zero_abort27, %b.push_done
  %divtmp = udiv i64 %var.load25, 10
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit5

div.zero_abort27:                                 ; preds = %b.push_done
  %6 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero26

b.freeze.check:                                   ; preds = %loop.exit.6
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data30, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data30, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data30, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur31 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 %b.freeze.len29)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data30, i64 %b.freeze.len29, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.6
  %b.freeze.data32 = phi ptr [ %b.freeze.data30, %loop.exit.6 ], [ %b.freeze.data30, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur33 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len29, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data32, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load28, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur34 = call ptr @dva_arena_current()
  %builder.new35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %b.data.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new35, i32 0, i32 1
  %b.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new35, i32 0, i32 0
  %b.cap.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new35, i32 0, i32 2
  %b.buf.len39 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum40 = extractvalue { i64, i1 } %b.buf.len39, 0
  %ovf41 = extractvalue { i64, i1 } %b.buf.len39, 1
  br i1 %ovf41, label %str_overflow_abort43, label %b.buf.len42

b.buf.len42:                                      ; preds = %str_overflow_abort43, %b.freeze.done
  %arena.cur44 = call ptr @dva_arena_current()
  %b.buf45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 %sum40)
  %b.nul046 = getelementptr i8, ptr %b.buf45, i64 0
  store i8 0, ptr %b.nul046, align 1
  store i64 0, ptr %b.len.gep37, align 8
  store ptr %b.buf45, ptr %b.data.gep36, align 8
  store i64 32, ptr %b.cap.gep38, align 8
  store ptr %builder.new35, ptr %var.out, align 8
  %var.load47 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load47, i32 0, i32 0
  %str.len.query48 = load i64, ptr %str.len.query, align 8
  %str.len.query49 = and i64 %str.len.query48, 281474976710655
  %str.tag = lshr i64 %str.len.query48, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort43:                             ; preds = %b.freeze.done
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len42

str_gen_check:                                    ; preds = %b.buf.len42
  %arena.cur50 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur50, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len42
  store i64 0, ptr %loop.idx.7, align 8
  br label %loop.header.7

str_stale:                                        ; preds = %str_gen_check
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.7:                                    ; preds = %loop.latch.7, %str_ok
  %counter.load51 = load i64, ptr %loop.idx.7, align 8
  %loop.cond52 = icmp slt i64 %counter.load51, %str.len.query49
  br i1 %loop.cond52, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i53 = sub i64 %counter.load51, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i53, ptr %var._i54, align 8
  store i64 %counter.load51, ptr %var._55, align 8
  store i64 %counter.load51, ptr %var.i, align 8
  %var.load56 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 0
  %s.read.len57 = load i64, ptr %s.read.len, align 8
  %s.read.len58 = and i64 %s.read.len57, 281474976710655
  %str.tag59 = lshr i64 %s.read.len57, 48
  %str.immortal60 = icmp eq i64 %str.tag59, 0
  br i1 %str.immortal60, label %str_ok62, label %str_gen_check61

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %b.push_done131
  %step.val153 = load i64, ptr %loop.step.7, align 8
  %loop.next154 = add i64 %counter.load51, %step.val153
  store i64 %loop.next154, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  %var.load155 = load ptr, ptr %var.out, align 8
  %b.freeze.len156 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 0
  %b.freeze.len157 = load i64, ptr %b.freeze.len156, align 8
  %b.freeze.data158 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 1
  %b.freeze.data159 = load ptr, ptr %b.freeze.data158, align 8
  %b.freeze.arena160 = call ptr @dva_arena_current()
  %b.freeze.nc.gep161 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena160, i32 0, i32 1
  %b.freeze.nc162 = load i64, ptr %b.freeze.nc.gep161, align 8
  %b.freeze.has.chunk163 = icmp sgt i64 %b.freeze.nc162, 0
  br i1 %b.freeze.has.chunk163, label %b.freeze.check164, label %b.freeze.done166

str_gen_check61:                                  ; preds = %loop.body.7
  %arena.cur64 = call ptr @dva_arena_current()
  %tag.valid65 = call i1 @dva_arena_validate_tag(ptr %arena.cur64, i64 %str.tag59)
  br i1 %tag.valid65, label %str_ok62, label %str_stale63

str_ok62:                                         ; preds = %str_stale63, %str_gen_check61, %loop.body.7
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load56, i32 0, i32 1
  %s.read.data66 = load ptr, ptr %s.read.data, align 8
  %var.load67 = load ptr, ptr %var.s, align 8
  %str.len.query68 = getelementptr inbounds { i64, ptr }, ptr %var.load67, i32 0, i32 0
  %str.len.query69 = load i64, ptr %str.len.query68, align 8
  %str.len.query70 = and i64 %str.len.query69, 281474976710655
  %str.tag71 = lshr i64 %str.len.query69, 48
  %str.immortal72 = icmp eq i64 %str.tag71, 0
  br i1 %str.immortal72, label %str_ok74, label %str_gen_check73

str_stale63:                                      ; preds = %str_gen_check61
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok62

str_gen_check73:                                  ; preds = %str_ok62
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %str.tag71)
  br i1 %tag.valid77, label %str_ok74, label %str_stale75

str_ok74:                                         ; preds = %str_stale75, %str_gen_check73, %str_ok62
  %subtmp = sub i64 %str.len.query70, 1
  %var.load78 = load i64, ptr %var.i, align 8
  %subtmp79 = sub i64 %subtmp, %var.load78
  %idx.neg = icmp slt i64 %subtmp79, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale75:                                      ; preds = %str_gen_check73
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok74

idx_big_check:                                    ; preds = %str_ok74
  %idx.big = icmp sge i64 %subtmp79, %s.read.len58
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data66, i64 %subtmp79
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load80 = load ptr, ptr %var.out, align 8
  %var.load81 = load ptr, ptr %var.s, align 8
  %s.read.len82 = getelementptr inbounds { i64, ptr }, ptr %var.load81, i32 0, i32 0
  %s.read.len83 = load i64, ptr %s.read.len82, align 8
  %s.read.len84 = and i64 %s.read.len83, 281474976710655
  %str.tag85 = lshr i64 %s.read.len83, 48
  %str.immortal86 = icmp eq i64 %str.tag85, 0
  br i1 %str.immortal86, label %str_ok88, label %str_gen_check87

idx_oob:                                          ; preds = %idx_big_check, %str_ok74
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check87:                                  ; preds = %idx_ok
  %arena.cur90 = call ptr @dva_arena_current()
  %tag.valid91 = call i1 @dva_arena_validate_tag(ptr %arena.cur90, i64 %str.tag85)
  br i1 %tag.valid91, label %str_ok88, label %str_stale89

str_ok88:                                         ; preds = %str_stale89, %str_gen_check87, %idx_ok
  %s.read.data92 = getelementptr inbounds { i64, ptr }, ptr %var.load81, i32 0, i32 1
  %s.read.data93 = load ptr, ptr %s.read.data92, align 8
  %var.load94 = load ptr, ptr %var.s, align 8
  %str.len.query95 = getelementptr inbounds { i64, ptr }, ptr %var.load94, i32 0, i32 0
  %str.len.query96 = load i64, ptr %str.len.query95, align 8
  %str.len.query97 = and i64 %str.len.query96, 281474976710655
  %str.tag98 = lshr i64 %str.len.query96, 48
  %str.immortal99 = icmp eq i64 %str.tag98, 0
  br i1 %str.immortal99, label %str_ok101, label %str_gen_check100

str_stale89:                                      ; preds = %str_gen_check87
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok88

str_gen_check100:                                 ; preds = %str_ok88
  %arena.cur103 = call ptr @dva_arena_current()
  %tag.valid104 = call i1 @dva_arena_validate_tag(ptr %arena.cur103, i64 %str.tag98)
  br i1 %tag.valid104, label %str_ok101, label %str_stale102

str_ok101:                                        ; preds = %str_stale102, %str_gen_check100, %str_ok88
  %subtmp105 = sub i64 %str.len.query97, 1
  %var.load106 = load i64, ptr %var.i, align 8
  %subtmp107 = sub i64 %subtmp105, %var.load106
  %idx.neg108 = icmp slt i64 %subtmp107, 0
  br i1 %idx.neg108, label %idx_oob111, label %idx_big_check109

str_stale102:                                     ; preds = %str_gen_check100
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok101

idx_big_check109:                                 ; preds = %str_ok101
  %idx.big112 = icmp sge i64 %subtmp107, %s.read.len84
  br i1 %idx.big112, label %idx_oob111, label %idx_ok110

idx_ok110:                                        ; preds = %idx_oob111, %idx_big_check109
  %s.byte.gep113 = getelementptr i8, ptr %s.read.data93, i64 %subtmp107
  %s.byte114 = load i8, ptr %s.byte.gep113, align 1
  %s.byte.val115 = zext i8 %s.byte114 to i64
  %b.b.ge0116 = icmp sge i64 %s.byte.val115, 0
  %b.b.le255117 = icmp sle i64 %s.byte.val115, 255
  %b.byte.range118 = and i1 %b.b.ge0116, %b.b.le255117
  br i1 %b.byte.range118, label %b.byte_ok119, label %b.byte_err120

idx_oob111:                                       ; preds = %idx_big_check109, %str_ok101
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok110

b.byte_ok119:                                     ; preds = %b.byte_err120, %idx_ok110
  %b.byte.i8121 = trunc i64 %s.byte.val115 to i8
  %b.len122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 0
  %b.len123 = load i64, ptr %b.len122, align 8
  %b.cap124 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 2
  %b.cap125 = load i64, ptr %b.cap124, align 8
  %b.data126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 1
  %b.data127 = load ptr, ptr %b.data126, align 8
  %b.needs.grow128 = icmp eq i64 %b.len123, %b.cap125
  br i1 %b.needs.grow128, label %b.grow129, label %b.nogrow130

b.byte_err120:                                    ; preds = %idx_ok110
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok119

b.grow129:                                        ; preds = %b.byte_ok119
  %b.cap2132 = mul i64 %b.cap125, 2
  %b.cap.small133 = icmp slt i64 %b.cap2132, 16
  %b.new.cap134 = select i1 %b.cap.small133, i64 16, i64 %b.cap2132
  %b.new.buf.len135 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap134, i64 1)
  %sum136 = extractvalue { i64, i1 } %b.new.buf.len135, 0
  %ovf137 = extractvalue { i64, i1 } %b.new.buf.len135, 1
  br i1 %ovf137, label %str_overflow_abort139, label %b.new.buf.len138

b.nogrow130:                                      ; preds = %b.byte_ok119
  br label %b.push_done131

b.push_done131:                                   ; preds = %b.nogrow130, %b.new.buf.len138
  %b.cur.data145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 1
  %b.cur.data146 = load ptr, ptr %b.cur.data145, align 8
  %b.cur.len147 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 0
  %b.cur.len148 = load i64, ptr %b.cur.len147, align 8
  %b.byte.gep149 = getelementptr i8, ptr %b.cur.data146, i64 %b.cur.len148
  store i8 %b.byte.i8121, ptr %b.byte.gep149, align 1
  %b.next.len150 = add i64 %b.cur.len148, 1
  %b.nul151 = getelementptr i8, ptr %b.cur.data146, i64 %b.next.len150
  store i8 0, ptr %b.nul151, align 1
  %b.len.gep152 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 0
  store i64 %b.next.len150, ptr %b.len.gep152, align 8
  br label %loop.latch.7

b.new.buf.len138:                                 ; preds = %str_overflow_abort139, %b.grow129
  %arena.cur140 = call ptr @dva_arena_current()
  %b.new.buf141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 %sum136)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf141, ptr align 1 %b.data127, i64 %b.len123, i1 false)
  %b.grow.nul142 = getelementptr i8, ptr %b.new.buf141, i64 %b.len123
  store i8 0, ptr %b.grow.nul142, align 1
  %b.new.data.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 1
  store ptr %b.new.buf141, ptr %b.new.data.gep143, align 8
  %b.new.cap.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load80, i32 0, i32 2
  store i64 %b.new.cap134, ptr %b.new.cap.gep144, align 8
  br label %b.push_done131

str_overflow_abort139:                            ; preds = %b.grow129
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len138

b.freeze.check164:                                ; preds = %loop.exit.7
  %b.freeze.last.idx167 = sub i64 %b.freeze.nc162, 1
  %b.freeze.chunks.gep168 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena160, i32 0, i32 3
  %b.freeze.chunk.slot169 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep168, i64 0, i64 %b.freeze.last.idx167
  %b.freeze.last.chunk170 = load ptr, ptr %b.freeze.chunk.slot169, align 8
  %b.freeze.off.gep171 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena160, i32 0, i32 2
  %b.freeze.off172 = load i64, ptr %b.freeze.off.gep171, align 8
  %b.freeze.bump173 = getelementptr i8, ptr %b.freeze.last.chunk170, i64 %b.freeze.off172
  %b.freeze.cap.gep174 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena160, i32 0, i32 0
  %b.freeze.cap175 = load i64, ptr %b.freeze.cap.gep174, align 8
  %b.freeze.chunk.end176 = getelementptr i8, ptr %b.freeze.last.chunk170, i64 %b.freeze.cap175
  %b.freeze.ge.chunk177 = icmp uge ptr %b.freeze.data159, %b.freeze.last.chunk170
  %b.freeze.lt.end178 = icmp ult ptr %b.freeze.data159, %b.freeze.chunk.end176
  %b.freeze.in.chunk179 = and i1 %b.freeze.ge.chunk177, %b.freeze.lt.end178
  %b.freeze.ge.bump180 = icmp uge ptr %b.freeze.data159, %b.freeze.bump173
  %b.freeze.reaped181 = and i1 %b.freeze.in.chunk179, %b.freeze.ge.bump180
  br i1 %b.freeze.reaped181, label %b.freeze.copy165, label %b.freeze.done166

b.freeze.copy165:                                 ; preds = %b.freeze.check164
  %arena.cur182 = call ptr @dva_arena_current()
  %b.freeze.fresh183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 %b.freeze.len157)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh183, ptr align 1 %b.freeze.data159, i64 %b.freeze.len157, i1 false)
  br label %b.freeze.done166

b.freeze.done166:                                 ; preds = %b.freeze.copy165, %b.freeze.check164, %loop.exit.7
  %b.freeze.data184 = phi ptr [ %b.freeze.data159, %loop.exit.7 ], [ %b.freeze.data159, %b.freeze.check164 ], [ %b.freeze.fresh183, %b.freeze.copy165 ]
  %arena.cur185 = call ptr @dva_arena_current()
  %builder.freeze186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 16)
  %str.build.len.gep187 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze186, i32 0, i32 0
  store i64 %b.freeze.len157, ptr %str.build.len.gep187, align 8
  %str.build.data.gep188 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze186, i32 0, i32 1
  store ptr %b.freeze.data184, ptr %str.build.data.gep188, align 8
  %b.freeze.rst.len189 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len189, align 8
  %b.freeze.rst.data190 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data190, align 8
  %b.freeze.rst.cap191 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load155, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap191, align 8
  ret ptr %builder.freeze186
}

define ptr @"str::from_float"(double %0) #1 {
entry:
  %var.es = alloca ptr, align 8
  %var.mant = alloca ptr, align 8
  %var._954 = alloca i64, align 8
  %var._i953 = alloca i64, align 8
  %loop.step.23 = alloca i64, align 8
  %loop.idx.23 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var._906 = alloca i64, align 8
  %var._i905 = alloca i64, align 8
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
  %"var.dot_pos'" = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._770 = alloca i64, align 8
  %var._i769 = alloca i64, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
  %var._719 = alloca i64, align 8
  %var._i718 = alloca i64, align 8
  %loop.step.19 = alloca i64, align 8
  %loop.idx.19 = alloca i64, align 8
  %var._586 = alloca i64, align 8
  %var._i585 = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %var._448 = alloca i64, align 8
  %var._i447 = alloca i64, align 8
  %loop.step.16 = alloca i64, align 8
  %loop.idx.16 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._351 = alloca i64, align 8
  %var._i350 = alloca i64, align 8
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
  %var.load58 = load i64, ptr %var.ip, align 8
  %addtmp59 = add i64 48, %var.load58
  %b.load = load ptr, ptr %var.ds, align 8
  %var.load60 = load i64, ptr %var.ip, align 8
  %addtmp61 = add i64 48, %var.load60
  %b.b.ge0 = icmp sge i64 %addtmp61, 0
  %b.b.le255 = icmp sle i64 %addtmp61, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

str_overflow_abort:                               ; preds = %loop.exit.9
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len56

b.byte_ok:                                        ; preds = %b.byte_err, %b.buf.len56
  %b.byte.i8 = trunc i64 %addtmp61 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len62 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap63 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data64 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len62, %b.cap63
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len56
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
  %var.load81 = load i64, ptr %var.d, align 8
  %addtmp82 = add i64 48, %var.load81
  %b.load83 = load ptr, ptr %var.ds, align 8
  %var.load84 = load i64, ptr %var.d, align 8
  %addtmp85 = add i64 48, %var.load84
  %b.b.ge086 = icmp sge i64 %addtmp85, 0
  %b.b.le25587 = icmp sle i64 %addtmp85, 255
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
  %b.byte.i891 = trunc i64 %addtmp85 to i8
  %b.len92 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load83, i32 0, i32 0
  %b.len93 = load i64, ptr %b.len92, align 8
  %b.cap94 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load83, i32 0, i32 2
  %b.cap95 = load i64, ptr %b.cap94, align 8
  %b.data96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load83, i32 0, i32 1
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
  %b.cur.data115 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load83, i32 0, i32 1
  %b.cur.data116 = load ptr, ptr %b.cur.data115, align 8
  %b.cur.len117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load83, i32 0, i32 0
  %b.cur.len118 = load i64, ptr %b.cur.len117, align 8
  %b.byte.gep119 = getelementptr i8, ptr %b.cur.data116, i64 %b.cur.len118
  store i8 %b.byte.i891, ptr %b.byte.gep119, align 1
  %b.next.len120 = add i64 %b.cur.len118, 1
  %b.nul121 = getelementptr i8, ptr %b.cur.data116, i64 %b.next.len120
  store i8 0, ptr %b.nul121, align 1
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load83, i32 0, i32 0
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
  %b.new.data.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load83, i32 0, i32 1
  store ptr %b.new.buf111, ptr %b.new.data.gep113, align 8
  %b.new.cap.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load83, i32 0, i32 2
  store i64 %b.new.cap104, ptr %b.new.cap.gep114, align 8
  br label %b.push_done101

str_overflow_abort109:                            ; preds = %b.grow99
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len108

b.freeze.check:                                   ; preds = %loop.exit.10
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data131, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data131, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data131, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur132 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 %b.freeze.len130)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data131, i64 %b.freeze.len130, i1 false)
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
  %var.load225 = load ptr, ptr %var.ms, align 8
  %s.read.len226 = getelementptr inbounds { i64, ptr }, ptr %var.load225, i32 0, i32 0
  %s.read.len227 = load i64, ptr %s.read.len226, align 8
  %s.read.len228 = and i64 %s.read.len227, 281474976710655
  %str.tag229 = lshr i64 %s.read.len227, 48
  %str.immortal230 = icmp eq i64 %str.tag229, 0
  br i1 %str.immortal230, label %str_ok232, label %str_gen_check231

choice.else223:                                   ; preds = %or.13.exit
  %var.load436 = load i64, ptr %"var.e'", align 8
  %cmptmp437 = icmp sge i64 %var.load436, 0
  br i1 %cmptmp437, label %choice.then438, label %choice.else439

choice.exit224:                                   ; preds = %choice.exit440, %loop.exit.15
  %var.load855 = load ptr, ptr %var.b, align 8
  %b.freeze.len856 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load855, i32 0, i32 0
  %b.freeze.len857 = load i64, ptr %b.freeze.len856, align 8
  %b.freeze.data858 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load855, i32 0, i32 1
  %b.freeze.data859 = load ptr, ptr %b.freeze.data858, align 8
  %b.freeze.arena860 = call ptr @dva_arena_current()
  %b.freeze.nc.gep861 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena860, i32 0, i32 1
  %b.freeze.nc862 = load i64, ptr %b.freeze.nc.gep861, align 8
  %b.freeze.has.chunk863 = icmp sgt i64 %b.freeze.nc862, 0
  br i1 %b.freeze.has.chunk863, label %b.freeze.check864, label %b.freeze.done866

str_gen_check231:                                 ; preds = %choice.then222
  %arena.cur234 = call ptr @dva_arena_current()
  %tag.valid235 = call i1 @dva_arena_validate_tag(ptr %arena.cur234, i64 %str.tag229)
  br i1 %tag.valid235, label %str_ok232, label %str_stale233

str_ok232:                                        ; preds = %str_stale233, %str_gen_check231, %choice.then222
  %s.read.data236 = getelementptr inbounds { i64, ptr }, ptr %var.load225, i32 0, i32 1
  %s.read.data237 = load ptr, ptr %s.read.data236, align 8
  br i1 false, label %idx_oob240, label %idx_big_check238

str_stale233:                                     ; preds = %str_gen_check231
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok232

idx_big_check238:                                 ; preds = %str_ok232
  %idx.big241 = icmp sge i64 0, %s.read.len228
  br i1 %idx.big241, label %idx_oob240, label %idx_ok239

idx_ok239:                                        ; preds = %idx_oob240, %idx_big_check238
  %s.byte.gep242 = getelementptr i8, ptr %s.read.data237, i64 0
  %s.byte243 = load i8, ptr %s.byte.gep242, align 1
  %s.byte.val244 = zext i8 %s.byte243 to i64
  %b.load245 = load ptr, ptr %var.b, align 8
  %var.load246 = load ptr, ptr %var.ms, align 8
  %s.read.len247 = getelementptr inbounds { i64, ptr }, ptr %var.load246, i32 0, i32 0
  %s.read.len248 = load i64, ptr %s.read.len247, align 8
  %s.read.len249 = and i64 %s.read.len248, 281474976710655
  %str.tag250 = lshr i64 %s.read.len248, 48
  %str.immortal251 = icmp eq i64 %str.tag250, 0
  br i1 %str.immortal251, label %str_ok253, label %str_gen_check252

idx_oob240:                                       ; preds = %idx_big_check238, %str_ok232
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok239

str_gen_check252:                                 ; preds = %idx_ok239
  %arena.cur255 = call ptr @dva_arena_current()
  %tag.valid256 = call i1 @dva_arena_validate_tag(ptr %arena.cur255, i64 %str.tag250)
  br i1 %tag.valid256, label %str_ok253, label %str_stale254

str_ok253:                                        ; preds = %str_stale254, %str_gen_check252, %idx_ok239
  %s.read.data257 = getelementptr inbounds { i64, ptr }, ptr %var.load246, i32 0, i32 1
  %s.read.data258 = load ptr, ptr %s.read.data257, align 8
  br i1 false, label %idx_oob261, label %idx_big_check259

str_stale254:                                     ; preds = %str_gen_check252
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok253

idx_big_check259:                                 ; preds = %str_ok253
  %idx.big262 = icmp sge i64 0, %s.read.len249
  br i1 %idx.big262, label %idx_oob261, label %idx_ok260

idx_ok260:                                        ; preds = %idx_oob261, %idx_big_check259
  %s.byte.gep263 = getelementptr i8, ptr %s.read.data258, i64 0
  %s.byte264 = load i8, ptr %s.byte.gep263, align 1
  %s.byte.val265 = zext i8 %s.byte264 to i64
  %b.b.ge0266 = icmp sge i64 %s.byte.val265, 0
  %b.b.le255267 = icmp sle i64 %s.byte.val265, 255
  %b.byte.range268 = and i1 %b.b.ge0266, %b.b.le255267
  br i1 %b.byte.range268, label %b.byte_ok269, label %b.byte_err270

idx_oob261:                                       ; preds = %idx_big_check259, %str_ok253
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok260

b.byte_ok269:                                     ; preds = %b.byte_err270, %idx_ok260
  %b.byte.i8271 = trunc i64 %s.byte.val265 to i8
  %b.len272 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 0
  %b.len273 = load i64, ptr %b.len272, align 8
  %b.cap274 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 2
  %b.cap275 = load i64, ptr %b.cap274, align 8
  %b.data276 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 1
  %b.data277 = load ptr, ptr %b.data276, align 8
  %b.needs.grow278 = icmp eq i64 %b.len273, %b.cap275
  br i1 %b.needs.grow278, label %b.grow279, label %b.nogrow280

b.byte_err270:                                    ; preds = %idx_ok260
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok269

b.grow279:                                        ; preds = %b.byte_ok269
  %b.cap2282 = mul i64 %b.cap275, 2
  %b.cap.small283 = icmp slt i64 %b.cap2282, 16
  %b.new.cap284 = select i1 %b.cap.small283, i64 16, i64 %b.cap2282
  %b.new.buf.len285 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap284, i64 1)
  %sum286 = extractvalue { i64, i1 } %b.new.buf.len285, 0
  %ovf287 = extractvalue { i64, i1 } %b.new.buf.len285, 1
  br i1 %ovf287, label %str_overflow_abort289, label %b.new.buf.len288

b.nogrow280:                                      ; preds = %b.byte_ok269
  br label %b.push_done281

b.push_done281:                                   ; preds = %b.nogrow280, %b.new.buf.len288
  %b.cur.data295 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 1
  %b.cur.data296 = load ptr, ptr %b.cur.data295, align 8
  %b.cur.len297 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 0
  %b.cur.len298 = load i64, ptr %b.cur.len297, align 8
  %b.byte.gep299 = getelementptr i8, ptr %b.cur.data296, i64 %b.cur.len298
  store i8 %b.byte.i8271, ptr %b.byte.gep299, align 1
  %b.next.len300 = add i64 %b.cur.len298, 1
  %b.nul301 = getelementptr i8, ptr %b.cur.data296, i64 %b.next.len300
  store i8 0, ptr %b.nul301, align 1
  %b.len.gep302 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 0
  store i64 %b.next.len300, ptr %b.len.gep302, align 8
  %b.load303 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len304 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load303, i32 0, i32 0
  %b.rn.cur.len305 = load i64, ptr %b.rn.cur.len304, align 8
  %b.rn.new.len306 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len305, i64 1)
  %sum307 = extractvalue { i64, i1 } %b.rn.new.len306, 0
  %ovf308 = extractvalue { i64, i1 } %b.rn.new.len306, 1
  br i1 %ovf308, label %str_overflow_abort310, label %b.rn.new.len309

b.new.buf.len288:                                 ; preds = %str_overflow_abort289, %b.grow279
  %arena.cur290 = call ptr @dva_arena_current()
  %b.new.buf291 = call ptr @dva_arena_alloc(ptr %arena.cur290, i64 %sum286)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf291, ptr align 1 %b.data277, i64 %b.len273, i1 false)
  %b.grow.nul292 = getelementptr i8, ptr %b.new.buf291, i64 %b.len273
  store i8 0, ptr %b.grow.nul292, align 1
  %b.new.data.gep293 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 1
  store ptr %b.new.buf291, ptr %b.new.data.gep293, align 8
  %b.new.cap.gep294 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load245, i32 0, i32 2
  store i64 %b.new.cap284, ptr %b.new.cap.gep294, align 8
  br label %b.push_done281

str_overflow_abort289:                            ; preds = %b.grow279
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len288

b.rn.new.len309:                                  ; preds = %str_overflow_abort310, %b.push_done281
  %b.cap311 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load303, i32 0, i32 2
  %b.cap312 = load i64, ptr %b.cap311, align 8
  %b.need.grow313 = icmp slt i64 %b.cap312, %sum307
  br i1 %b.need.grow313, label %b.grow2314, label %b.nogrow2315

str_overflow_abort310:                            ; preds = %b.push_done281
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len309

b.grow2314:                                       ; preds = %b.rn.new.len309
  %b.cap2317 = mul i64 %b.cap312, 2
  %b.cap.small318 = icmp slt i64 %b.cap2317, 16
  %b.cap.grow319 = select i1 %b.cap.small318, i64 16, i64 %b.cap2317
  %b.cap.need320 = icmp slt i64 %b.cap.grow319, %sum307
  %b.new.cap321 = select i1 %b.cap.need320, i64 %sum307, i64 %b.cap.grow319
  %b.cur.len2322 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load303, i32 0, i32 0
  %b.cur.len2323 = load i64, ptr %b.cur.len2322, align 8
  %b.cur.data2324 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load303, i32 0, i32 1
  %b.cur.data2325 = load ptr, ptr %b.cur.data2324, align 8
  %b.new.buf.len2326 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap321, i64 1)
  %sum327 = extractvalue { i64, i1 } %b.new.buf.len2326, 0
  %ovf328 = extractvalue { i64, i1 } %b.new.buf.len2326, 1
  br i1 %ovf328, label %str_overflow_abort330, label %b.new.buf.len2329

b.nogrow2315:                                     ; preds = %b.rn.new.len309
  br label %b.grow_done316

b.grow_done316:                                   ; preds = %b.nogrow2315, %b.new.buf.len2329
  %b.rn.data336 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load303, i32 0, i32 1
  %b.rn.data337 = load ptr, ptr %b.rn.data336, align 8
  %b.rn.dst338 = getelementptr i8, ptr %b.rn.data337, i64 %b.rn.cur.len305
  br i1 true, label %br.b1.14, label %br.c2.14

b.new.buf.len2329:                                ; preds = %str_overflow_abort330, %b.grow2314
  %arena.cur331 = call ptr @dva_arena_current()
  %b.new.buf2332 = call ptr @dva_arena_alloc(ptr %arena.cur331, i64 %sum327)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2332, ptr align 1 %b.cur.data2325, i64 %b.cur.len2323, i1 false)
  %b.grow2.nul333 = getelementptr i8, ptr %b.new.buf2332, i64 %b.cur.len2323
  store i8 0, ptr %b.grow2.nul333, align 1
  %b.new.data2.gep334 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load303, i32 0, i32 1
  store ptr %b.new.buf2332, ptr %b.new.data2.gep334, align 8
  %b.new.cap2.gep335 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load303, i32 0, i32 2
  store i64 %b.new.cap321, ptr %b.new.cap2.gep335, align 8
  br label %b.grow_done316

str_overflow_abort330:                            ; preds = %b.grow2314
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2329

br.b1.14:                                         ; preds = %b.grow_done316
  store i8 46, ptr %b.rn.dst338, align 1
  br label %br.done.14

br.c2.14:                                         ; preds = %b.grow_done316
  br i1 true, label %br.b2.14, label %br.c3.14

br.b2.14:                                         ; preds = %br.c2.14
  store i8 -64, ptr %b.rn.dst338, align 1
  %br.dst1339 = getelementptr i8, ptr %b.rn.dst338, i64 1
  store i8 -82, ptr %br.dst1339, align 1
  br label %br.done.14

br.c3.14:                                         ; preds = %br.c2.14
  br i1 true, label %br.b3.14, label %br.b4.14

br.b3.14:                                         ; preds = %br.c3.14
  store i8 -32, ptr %b.rn.dst338, align 1
  %br.dst1.3340 = getelementptr i8, ptr %b.rn.dst338, i64 1
  store i8 -128, ptr %br.dst1.3340, align 1
  %br.dst2.3341 = getelementptr i8, ptr %b.rn.dst338, i64 2
  store i8 -82, ptr %br.dst2.3341, align 1
  br label %br.done.14

br.b4.14:                                         ; preds = %br.c3.14
  store i8 -16, ptr %b.rn.dst338, align 1
  %br.dst1.4342 = getelementptr i8, ptr %b.rn.dst338, i64 1
  store i8 -128, ptr %br.dst1.4342, align 1
  %br.dst2.4343 = getelementptr i8, ptr %b.rn.dst338, i64 2
  store i8 -128, ptr %br.dst2.4343, align 1
  %br.dst3.4344 = getelementptr i8, ptr %b.rn.dst338, i64 3
  store i8 -82, ptr %br.dst3.4344, align 1
  br label %br.done.14

br.done.14:                                       ; preds = %br.b4.14, %br.b3.14, %br.b2.14, %br.b1.14
  %br.nul345 = getelementptr i8, ptr %b.rn.data337, i64 %sum307
  store i8 0, ptr %br.nul345, align 1
  %b.len.gep346 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load303, i32 0, i32 0
  store i64 %sum307, ptr %b.len.gep346, align 8
  store i64 1, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.header.15:                                   ; preds = %loop.latch.15, %br.done.14
  %counter.load347 = load i64, ptr %loop.idx.15, align 8
  %loop.cond348 = icmp slt i64 %counter.load347, 6
  br i1 %loop.cond348, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i349 = sub i64 %counter.load347, 1
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i349, ptr %var._i350, align 8
  store i64 %counter.load347, ptr %var._351, align 8
  store i64 %counter.load347, ptr %var.i, align 8
  %var.load352 = load ptr, ptr %var.ms, align 8
  %s.read.len353 = getelementptr inbounds { i64, ptr }, ptr %var.load352, i32 0, i32 0
  %s.read.len354 = load i64, ptr %s.read.len353, align 8
  %s.read.len355 = and i64 %s.read.len354, 281474976710655
  %str.tag356 = lshr i64 %s.read.len354, 48
  %str.immortal357 = icmp eq i64 %str.tag356, 0
  br i1 %str.immortal357, label %str_ok359, label %str_gen_check358

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %b.push_done412
  %step.val434 = load i64, ptr %loop.step.15, align 8
  %loop.next435 = add i64 %counter.load347, %step.val434
  store i64 %loop.next435, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  br label %choice.exit224

str_gen_check358:                                 ; preds = %loop.body.15
  %arena.cur361 = call ptr @dva_arena_current()
  %tag.valid362 = call i1 @dva_arena_validate_tag(ptr %arena.cur361, i64 %str.tag356)
  br i1 %tag.valid362, label %str_ok359, label %str_stale360

str_ok359:                                        ; preds = %str_stale360, %str_gen_check358, %loop.body.15
  %s.read.data363 = getelementptr inbounds { i64, ptr }, ptr %var.load352, i32 0, i32 1
  %s.read.data364 = load ptr, ptr %s.read.data363, align 8
  %var.load365 = load i64, ptr %var.i, align 8
  %idx.neg366 = icmp slt i64 %var.load365, 0
  br i1 %idx.neg366, label %idx_oob369, label %idx_big_check367

str_stale360:                                     ; preds = %str_gen_check358
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok359

idx_big_check367:                                 ; preds = %str_ok359
  %idx.big370 = icmp sge i64 %var.load365, %s.read.len355
  br i1 %idx.big370, label %idx_oob369, label %idx_ok368

idx_ok368:                                        ; preds = %idx_oob369, %idx_big_check367
  %s.byte.gep371 = getelementptr i8, ptr %s.read.data364, i64 %var.load365
  %s.byte372 = load i8, ptr %s.byte.gep371, align 1
  %s.byte.val373 = zext i8 %s.byte372 to i64
  %b.load374 = load ptr, ptr %var.b, align 8
  %var.load375 = load ptr, ptr %var.ms, align 8
  %s.read.len376 = getelementptr inbounds { i64, ptr }, ptr %var.load375, i32 0, i32 0
  %s.read.len377 = load i64, ptr %s.read.len376, align 8
  %s.read.len378 = and i64 %s.read.len377, 281474976710655
  %str.tag379 = lshr i64 %s.read.len377, 48
  %str.immortal380 = icmp eq i64 %str.tag379, 0
  br i1 %str.immortal380, label %str_ok382, label %str_gen_check381

idx_oob369:                                       ; preds = %idx_big_check367, %str_ok359
  %22 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok368

str_gen_check381:                                 ; preds = %idx_ok368
  %arena.cur384 = call ptr @dva_arena_current()
  %tag.valid385 = call i1 @dva_arena_validate_tag(ptr %arena.cur384, i64 %str.tag379)
  br i1 %tag.valid385, label %str_ok382, label %str_stale383

str_ok382:                                        ; preds = %str_stale383, %str_gen_check381, %idx_ok368
  %s.read.data386 = getelementptr inbounds { i64, ptr }, ptr %var.load375, i32 0, i32 1
  %s.read.data387 = load ptr, ptr %s.read.data386, align 8
  %var.load388 = load i64, ptr %var.i, align 8
  %idx.neg389 = icmp slt i64 %var.load388, 0
  br i1 %idx.neg389, label %idx_oob392, label %idx_big_check390

str_stale383:                                     ; preds = %str_gen_check381
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok382

idx_big_check390:                                 ; preds = %str_ok382
  %idx.big393 = icmp sge i64 %var.load388, %s.read.len378
  br i1 %idx.big393, label %idx_oob392, label %idx_ok391

idx_ok391:                                        ; preds = %idx_oob392, %idx_big_check390
  %s.byte.gep394 = getelementptr i8, ptr %s.read.data387, i64 %var.load388
  %s.byte395 = load i8, ptr %s.byte.gep394, align 1
  %s.byte.val396 = zext i8 %s.byte395 to i64
  %b.b.ge0397 = icmp sge i64 %s.byte.val396, 0
  %b.b.le255398 = icmp sle i64 %s.byte.val396, 255
  %b.byte.range399 = and i1 %b.b.ge0397, %b.b.le255398
  br i1 %b.byte.range399, label %b.byte_ok400, label %b.byte_err401

idx_oob392:                                       ; preds = %idx_big_check390, %str_ok382
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok391

b.byte_ok400:                                     ; preds = %b.byte_err401, %idx_ok391
  %b.byte.i8402 = trunc i64 %s.byte.val396 to i8
  %b.len403 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 0
  %b.len404 = load i64, ptr %b.len403, align 8
  %b.cap405 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 2
  %b.cap406 = load i64, ptr %b.cap405, align 8
  %b.data407 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 1
  %b.data408 = load ptr, ptr %b.data407, align 8
  %b.needs.grow409 = icmp eq i64 %b.len404, %b.cap406
  br i1 %b.needs.grow409, label %b.grow410, label %b.nogrow411

b.byte_err401:                                    ; preds = %idx_ok391
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok400

b.grow410:                                        ; preds = %b.byte_ok400
  %b.cap2413 = mul i64 %b.cap406, 2
  %b.cap.small414 = icmp slt i64 %b.cap2413, 16
  %b.new.cap415 = select i1 %b.cap.small414, i64 16, i64 %b.cap2413
  %b.new.buf.len416 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap415, i64 1)
  %sum417 = extractvalue { i64, i1 } %b.new.buf.len416, 0
  %ovf418 = extractvalue { i64, i1 } %b.new.buf.len416, 1
  br i1 %ovf418, label %str_overflow_abort420, label %b.new.buf.len419

b.nogrow411:                                      ; preds = %b.byte_ok400
  br label %b.push_done412

b.push_done412:                                   ; preds = %b.nogrow411, %b.new.buf.len419
  %b.cur.data426 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 1
  %b.cur.data427 = load ptr, ptr %b.cur.data426, align 8
  %b.cur.len428 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 0
  %b.cur.len429 = load i64, ptr %b.cur.len428, align 8
  %b.byte.gep430 = getelementptr i8, ptr %b.cur.data427, i64 %b.cur.len429
  store i8 %b.byte.i8402, ptr %b.byte.gep430, align 1
  %b.next.len431 = add i64 %b.cur.len429, 1
  %b.nul432 = getelementptr i8, ptr %b.cur.data427, i64 %b.next.len431
  store i8 0, ptr %b.nul432, align 1
  %b.len.gep433 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 0
  store i64 %b.next.len431, ptr %b.len.gep433, align 8
  br label %loop.latch.15

b.new.buf.len419:                                 ; preds = %str_overflow_abort420, %b.grow410
  %arena.cur421 = call ptr @dva_arena_current()
  %b.new.buf422 = call ptr @dva_arena_alloc(ptr %arena.cur421, i64 %sum417)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf422, ptr align 1 %b.data408, i64 %b.len404, i1 false)
  %b.grow.nul423 = getelementptr i8, ptr %b.new.buf422, i64 %b.len404
  store i8 0, ptr %b.grow.nul423, align 1
  %b.new.data.gep424 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 1
  store ptr %b.new.buf422, ptr %b.new.data.gep424, align 8
  %b.new.cap.gep425 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load374, i32 0, i32 2
  store i64 %b.new.cap415, ptr %b.new.cap.gep425, align 8
  br label %b.push_done412

str_overflow_abort420:                            ; preds = %b.grow410
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len419

choice.then438:                                   ; preds = %choice.else223
  %var.load441 = load i64, ptr %"var.e'", align 8
  %addtmp442 = add i64 %var.load441, 1
  store i64 %addtmp442, ptr %var.en, align 8
  %var.load443 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.16, align 8
  br label %loop.header.16

choice.else439:                                   ; preds = %choice.else223
  %b.load671 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.6.struct, align 8
  %app.str.len672 = and i64 %app.str.len, 281474976710655
  %str.tag673 = lshr i64 %app.str.len, 48
  %str.immortal674 = icmp eq i64 %str.tag673, 0
  br i1 %str.immortal674, label %str_ok676, label %str_gen_check675

choice.exit440:                                   ; preds = %loop.exit.21, %choice.exit536
  br label %choice.exit224

loop.header.16:                                   ; preds = %loop.latch.16, %choice.then438
  %counter.load444 = load i64, ptr %loop.idx.16, align 8
  %loop.cond445 = icmp slt i64 %counter.load444, %var.load443
  br i1 %loop.cond445, label %loop.body.16, label %loop.exit.nat.16

loop.body.16:                                     ; preds = %loop.header.16
  %loop.rel.i446 = sub i64 %counter.load444, 0
  store i64 1, ptr %loop.step.16, align 8
  store i64 %loop.rel.i446, ptr %var._i447, align 8
  store i64 %counter.load444, ptr %var._448, align 8
  store i64 %counter.load444, ptr %var.i, align 8
  %var.load449 = load ptr, ptr %var.ms, align 8
  %s.read.len450 = getelementptr inbounds { i64, ptr }, ptr %var.load449, i32 0, i32 0
  %s.read.len451 = load i64, ptr %s.read.len450, align 8
  %s.read.len452 = and i64 %s.read.len451, 281474976710655
  %str.tag453 = lshr i64 %s.read.len451, 48
  %str.immortal454 = icmp eq i64 %str.tag453, 0
  br i1 %str.immortal454, label %str_ok456, label %str_gen_check455

loop.exit.nat.16:                                 ; preds = %loop.header.16
  br label %loop.exit.16

loop.latch.16:                                    ; preds = %b.push_done509
  %step.val531 = load i64, ptr %loop.step.16, align 8
  %loop.next532 = add i64 %counter.load444, %step.val531
  store i64 %loop.next532, ptr %loop.idx.16, align 8
  br label %loop.header.16

loop.exit.16:                                     ; preds = %loop.exit.nat.16
  %var.load533 = load i64, ptr %var.en, align 8
  %cmptmp534 = icmp slt i64 %var.load533, 6
  br i1 %cmptmp534, label %choice.then535, label %choice.exit536

str_gen_check455:                                 ; preds = %loop.body.16
  %arena.cur458 = call ptr @dva_arena_current()
  %tag.valid459 = call i1 @dva_arena_validate_tag(ptr %arena.cur458, i64 %str.tag453)
  br i1 %tag.valid459, label %str_ok456, label %str_stale457

str_ok456:                                        ; preds = %str_stale457, %str_gen_check455, %loop.body.16
  %s.read.data460 = getelementptr inbounds { i64, ptr }, ptr %var.load449, i32 0, i32 1
  %s.read.data461 = load ptr, ptr %s.read.data460, align 8
  %var.load462 = load i64, ptr %var.i, align 8
  %idx.neg463 = icmp slt i64 %var.load462, 0
  br i1 %idx.neg463, label %idx_oob466, label %idx_big_check464

str_stale457:                                     ; preds = %str_gen_check455
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok456

idx_big_check464:                                 ; preds = %str_ok456
  %idx.big467 = icmp sge i64 %var.load462, %s.read.len452
  br i1 %idx.big467, label %idx_oob466, label %idx_ok465

idx_ok465:                                        ; preds = %idx_oob466, %idx_big_check464
  %s.byte.gep468 = getelementptr i8, ptr %s.read.data461, i64 %var.load462
  %s.byte469 = load i8, ptr %s.byte.gep468, align 1
  %s.byte.val470 = zext i8 %s.byte469 to i64
  %b.load471 = load ptr, ptr %var.b, align 8
  %var.load472 = load ptr, ptr %var.ms, align 8
  %s.read.len473 = getelementptr inbounds { i64, ptr }, ptr %var.load472, i32 0, i32 0
  %s.read.len474 = load i64, ptr %s.read.len473, align 8
  %s.read.len475 = and i64 %s.read.len474, 281474976710655
  %str.tag476 = lshr i64 %s.read.len474, 48
  %str.immortal477 = icmp eq i64 %str.tag476, 0
  br i1 %str.immortal477, label %str_ok479, label %str_gen_check478

idx_oob466:                                       ; preds = %idx_big_check464, %str_ok456
  %28 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok465

str_gen_check478:                                 ; preds = %idx_ok465
  %arena.cur481 = call ptr @dva_arena_current()
  %tag.valid482 = call i1 @dva_arena_validate_tag(ptr %arena.cur481, i64 %str.tag476)
  br i1 %tag.valid482, label %str_ok479, label %str_stale480

str_ok479:                                        ; preds = %str_stale480, %str_gen_check478, %idx_ok465
  %s.read.data483 = getelementptr inbounds { i64, ptr }, ptr %var.load472, i32 0, i32 1
  %s.read.data484 = load ptr, ptr %s.read.data483, align 8
  %var.load485 = load i64, ptr %var.i, align 8
  %idx.neg486 = icmp slt i64 %var.load485, 0
  br i1 %idx.neg486, label %idx_oob489, label %idx_big_check487

str_stale480:                                     ; preds = %str_gen_check478
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok479

idx_big_check487:                                 ; preds = %str_ok479
  %idx.big490 = icmp sge i64 %var.load485, %s.read.len475
  br i1 %idx.big490, label %idx_oob489, label %idx_ok488

idx_ok488:                                        ; preds = %idx_oob489, %idx_big_check487
  %s.byte.gep491 = getelementptr i8, ptr %s.read.data484, i64 %var.load485
  %s.byte492 = load i8, ptr %s.byte.gep491, align 1
  %s.byte.val493 = zext i8 %s.byte492 to i64
  %b.b.ge0494 = icmp sge i64 %s.byte.val493, 0
  %b.b.le255495 = icmp sle i64 %s.byte.val493, 255
  %b.byte.range496 = and i1 %b.b.ge0494, %b.b.le255495
  br i1 %b.byte.range496, label %b.byte_ok497, label %b.byte_err498

idx_oob489:                                       ; preds = %idx_big_check487, %str_ok479
  %30 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok488

b.byte_ok497:                                     ; preds = %b.byte_err498, %idx_ok488
  %b.byte.i8499 = trunc i64 %s.byte.val493 to i8
  %b.len500 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 0
  %b.len501 = load i64, ptr %b.len500, align 8
  %b.cap502 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 2
  %b.cap503 = load i64, ptr %b.cap502, align 8
  %b.data504 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 1
  %b.data505 = load ptr, ptr %b.data504, align 8
  %b.needs.grow506 = icmp eq i64 %b.len501, %b.cap503
  br i1 %b.needs.grow506, label %b.grow507, label %b.nogrow508

b.byte_err498:                                    ; preds = %idx_ok488
  %31 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok497

b.grow507:                                        ; preds = %b.byte_ok497
  %b.cap2510 = mul i64 %b.cap503, 2
  %b.cap.small511 = icmp slt i64 %b.cap2510, 16
  %b.new.cap512 = select i1 %b.cap.small511, i64 16, i64 %b.cap2510
  %b.new.buf.len513 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap512, i64 1)
  %sum514 = extractvalue { i64, i1 } %b.new.buf.len513, 0
  %ovf515 = extractvalue { i64, i1 } %b.new.buf.len513, 1
  br i1 %ovf515, label %str_overflow_abort517, label %b.new.buf.len516

b.nogrow508:                                      ; preds = %b.byte_ok497
  br label %b.push_done509

b.push_done509:                                   ; preds = %b.nogrow508, %b.new.buf.len516
  %b.cur.data523 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 1
  %b.cur.data524 = load ptr, ptr %b.cur.data523, align 8
  %b.cur.len525 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 0
  %b.cur.len526 = load i64, ptr %b.cur.len525, align 8
  %b.byte.gep527 = getelementptr i8, ptr %b.cur.data524, i64 %b.cur.len526
  store i8 %b.byte.i8499, ptr %b.byte.gep527, align 1
  %b.next.len528 = add i64 %b.cur.len526, 1
  %b.nul529 = getelementptr i8, ptr %b.cur.data524, i64 %b.next.len528
  store i8 0, ptr %b.nul529, align 1
  %b.len.gep530 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 0
  store i64 %b.next.len528, ptr %b.len.gep530, align 8
  br label %loop.latch.16

b.new.buf.len516:                                 ; preds = %str_overflow_abort517, %b.grow507
  %arena.cur518 = call ptr @dva_arena_current()
  %b.new.buf519 = call ptr @dva_arena_alloc(ptr %arena.cur518, i64 %sum514)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf519, ptr align 1 %b.data505, i64 %b.len501, i1 false)
  %b.grow.nul520 = getelementptr i8, ptr %b.new.buf519, i64 %b.len501
  store i8 0, ptr %b.grow.nul520, align 1
  %b.new.data.gep521 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 1
  store ptr %b.new.buf519, ptr %b.new.data.gep521, align 8
  %b.new.cap.gep522 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load471, i32 0, i32 2
  store i64 %b.new.cap512, ptr %b.new.cap.gep522, align 8
  br label %b.push_done509

str_overflow_abort517:                            ; preds = %b.grow507
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len516

choice.then535:                                   ; preds = %loop.exit.16
  %b.load537 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len538 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 0
  %b.rn.cur.len539 = load i64, ptr %b.rn.cur.len538, align 8
  %b.rn.new.len540 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len539, i64 1)
  %sum541 = extractvalue { i64, i1 } %b.rn.new.len540, 0
  %ovf542 = extractvalue { i64, i1 } %b.rn.new.len540, 1
  br i1 %ovf542, label %str_overflow_abort544, label %b.rn.new.len543

choice.exit536:                                   ; preds = %loop.exit.18, %loop.exit.16
  br label %choice.exit440

b.rn.new.len543:                                  ; preds = %str_overflow_abort544, %choice.then535
  %b.cap545 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 2
  %b.cap546 = load i64, ptr %b.cap545, align 8
  %b.need.grow547 = icmp slt i64 %b.cap546, %sum541
  br i1 %b.need.grow547, label %b.grow2548, label %b.nogrow2549

str_overflow_abort544:                            ; preds = %choice.then535
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len543

b.grow2548:                                       ; preds = %b.rn.new.len543
  %b.cap2551 = mul i64 %b.cap546, 2
  %b.cap.small552 = icmp slt i64 %b.cap2551, 16
  %b.cap.grow553 = select i1 %b.cap.small552, i64 16, i64 %b.cap2551
  %b.cap.need554 = icmp slt i64 %b.cap.grow553, %sum541
  %b.new.cap555 = select i1 %b.cap.need554, i64 %sum541, i64 %b.cap.grow553
  %b.cur.len2556 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 0
  %b.cur.len2557 = load i64, ptr %b.cur.len2556, align 8
  %b.cur.data2558 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 1
  %b.cur.data2559 = load ptr, ptr %b.cur.data2558, align 8
  %b.new.buf.len2560 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap555, i64 1)
  %sum561 = extractvalue { i64, i1 } %b.new.buf.len2560, 0
  %ovf562 = extractvalue { i64, i1 } %b.new.buf.len2560, 1
  br i1 %ovf562, label %str_overflow_abort564, label %b.new.buf.len2563

b.nogrow2549:                                     ; preds = %b.rn.new.len543
  br label %b.grow_done550

b.grow_done550:                                   ; preds = %b.nogrow2549, %b.new.buf.len2563
  %b.rn.data570 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 1
  %b.rn.data571 = load ptr, ptr %b.rn.data570, align 8
  %b.rn.dst572 = getelementptr i8, ptr %b.rn.data571, i64 %b.rn.cur.len539
  br i1 true, label %br.b1.17, label %br.c2.17

b.new.buf.len2563:                                ; preds = %str_overflow_abort564, %b.grow2548
  %arena.cur565 = call ptr @dva_arena_current()
  %b.new.buf2566 = call ptr @dva_arena_alloc(ptr %arena.cur565, i64 %sum561)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2566, ptr align 1 %b.cur.data2559, i64 %b.cur.len2557, i1 false)
  %b.grow2.nul567 = getelementptr i8, ptr %b.new.buf2566, i64 %b.cur.len2557
  store i8 0, ptr %b.grow2.nul567, align 1
  %b.new.data2.gep568 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 1
  store ptr %b.new.buf2566, ptr %b.new.data2.gep568, align 8
  %b.new.cap2.gep569 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 2
  store i64 %b.new.cap555, ptr %b.new.cap2.gep569, align 8
  br label %b.grow_done550

str_overflow_abort564:                            ; preds = %b.grow2548
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2563

br.b1.17:                                         ; preds = %b.grow_done550
  store i8 46, ptr %b.rn.dst572, align 1
  br label %br.done.17

br.c2.17:                                         ; preds = %b.grow_done550
  br i1 true, label %br.b2.17, label %br.c3.17

br.b2.17:                                         ; preds = %br.c2.17
  store i8 -64, ptr %b.rn.dst572, align 1
  %br.dst1573 = getelementptr i8, ptr %b.rn.dst572, i64 1
  store i8 -82, ptr %br.dst1573, align 1
  br label %br.done.17

br.c3.17:                                         ; preds = %br.c2.17
  br i1 true, label %br.b3.17, label %br.b4.17

br.b3.17:                                         ; preds = %br.c3.17
  store i8 -32, ptr %b.rn.dst572, align 1
  %br.dst1.3574 = getelementptr i8, ptr %b.rn.dst572, i64 1
  store i8 -128, ptr %br.dst1.3574, align 1
  %br.dst2.3575 = getelementptr i8, ptr %b.rn.dst572, i64 2
  store i8 -82, ptr %br.dst2.3575, align 1
  br label %br.done.17

br.b4.17:                                         ; preds = %br.c3.17
  store i8 -16, ptr %b.rn.dst572, align 1
  %br.dst1.4576 = getelementptr i8, ptr %b.rn.dst572, i64 1
  store i8 -128, ptr %br.dst1.4576, align 1
  %br.dst2.4577 = getelementptr i8, ptr %b.rn.dst572, i64 2
  store i8 -128, ptr %br.dst2.4577, align 1
  %br.dst3.4578 = getelementptr i8, ptr %b.rn.dst572, i64 3
  store i8 -82, ptr %br.dst3.4578, align 1
  br label %br.done.17

br.done.17:                                       ; preds = %br.b4.17, %br.b3.17, %br.b2.17, %br.b1.17
  %br.nul579 = getelementptr i8, ptr %b.rn.data571, i64 %sum541
  store i8 0, ptr %br.nul579, align 1
  %b.len.gep580 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load537, i32 0, i32 0
  store i64 %sum541, ptr %b.len.gep580, align 8
  %var.load581 = load i64, ptr %var.en, align 8
  store i64 %var.load581, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.header.18:                                   ; preds = %loop.latch.18, %br.done.17
  %counter.load582 = load i64, ptr %loop.idx.18, align 8
  %loop.cond583 = icmp slt i64 %counter.load582, 6
  br i1 %loop.cond583, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i584 = sub i64 %counter.load582, %var.load581
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i584, ptr %var._i585, align 8
  store i64 %counter.load582, ptr %var._586, align 8
  store i64 %counter.load582, ptr %var.i, align 8
  %var.load587 = load ptr, ptr %var.ms, align 8
  %s.read.len588 = getelementptr inbounds { i64, ptr }, ptr %var.load587, i32 0, i32 0
  %s.read.len589 = load i64, ptr %s.read.len588, align 8
  %s.read.len590 = and i64 %s.read.len589, 281474976710655
  %str.tag591 = lshr i64 %s.read.len589, 48
  %str.immortal592 = icmp eq i64 %str.tag591, 0
  br i1 %str.immortal592, label %str_ok594, label %str_gen_check593

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %b.push_done647
  %step.val669 = load i64, ptr %loop.step.18, align 8
  %loop.next670 = add i64 %counter.load582, %step.val669
  store i64 %loop.next670, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  br label %choice.exit536

str_gen_check593:                                 ; preds = %loop.body.18
  %arena.cur596 = call ptr @dva_arena_current()
  %tag.valid597 = call i1 @dva_arena_validate_tag(ptr %arena.cur596, i64 %str.tag591)
  br i1 %tag.valid597, label %str_ok594, label %str_stale595

str_ok594:                                        ; preds = %str_stale595, %str_gen_check593, %loop.body.18
  %s.read.data598 = getelementptr inbounds { i64, ptr }, ptr %var.load587, i32 0, i32 1
  %s.read.data599 = load ptr, ptr %s.read.data598, align 8
  %var.load600 = load i64, ptr %var.i, align 8
  %idx.neg601 = icmp slt i64 %var.load600, 0
  br i1 %idx.neg601, label %idx_oob604, label %idx_big_check602

str_stale595:                                     ; preds = %str_gen_check593
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok594

idx_big_check602:                                 ; preds = %str_ok594
  %idx.big605 = icmp sge i64 %var.load600, %s.read.len590
  br i1 %idx.big605, label %idx_oob604, label %idx_ok603

idx_ok603:                                        ; preds = %idx_oob604, %idx_big_check602
  %s.byte.gep606 = getelementptr i8, ptr %s.read.data599, i64 %var.load600
  %s.byte607 = load i8, ptr %s.byte.gep606, align 1
  %s.byte.val608 = zext i8 %s.byte607 to i64
  %b.load609 = load ptr, ptr %var.b, align 8
  %var.load610 = load ptr, ptr %var.ms, align 8
  %s.read.len611 = getelementptr inbounds { i64, ptr }, ptr %var.load610, i32 0, i32 0
  %s.read.len612 = load i64, ptr %s.read.len611, align 8
  %s.read.len613 = and i64 %s.read.len612, 281474976710655
  %str.tag614 = lshr i64 %s.read.len612, 48
  %str.immortal615 = icmp eq i64 %str.tag614, 0
  br i1 %str.immortal615, label %str_ok617, label %str_gen_check616

idx_oob604:                                       ; preds = %idx_big_check602, %str_ok594
  %36 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok603

str_gen_check616:                                 ; preds = %idx_ok603
  %arena.cur619 = call ptr @dva_arena_current()
  %tag.valid620 = call i1 @dva_arena_validate_tag(ptr %arena.cur619, i64 %str.tag614)
  br i1 %tag.valid620, label %str_ok617, label %str_stale618

str_ok617:                                        ; preds = %str_stale618, %str_gen_check616, %idx_ok603
  %s.read.data621 = getelementptr inbounds { i64, ptr }, ptr %var.load610, i32 0, i32 1
  %s.read.data622 = load ptr, ptr %s.read.data621, align 8
  %var.load623 = load i64, ptr %var.i, align 8
  %idx.neg624 = icmp slt i64 %var.load623, 0
  br i1 %idx.neg624, label %idx_oob627, label %idx_big_check625

str_stale618:                                     ; preds = %str_gen_check616
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok617

idx_big_check625:                                 ; preds = %str_ok617
  %idx.big628 = icmp sge i64 %var.load623, %s.read.len613
  br i1 %idx.big628, label %idx_oob627, label %idx_ok626

idx_ok626:                                        ; preds = %idx_oob627, %idx_big_check625
  %s.byte.gep629 = getelementptr i8, ptr %s.read.data622, i64 %var.load623
  %s.byte630 = load i8, ptr %s.byte.gep629, align 1
  %s.byte.val631 = zext i8 %s.byte630 to i64
  %b.b.ge0632 = icmp sge i64 %s.byte.val631, 0
  %b.b.le255633 = icmp sle i64 %s.byte.val631, 255
  %b.byte.range634 = and i1 %b.b.ge0632, %b.b.le255633
  br i1 %b.byte.range634, label %b.byte_ok635, label %b.byte_err636

idx_oob627:                                       ; preds = %idx_big_check625, %str_ok617
  %38 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok626

b.byte_ok635:                                     ; preds = %b.byte_err636, %idx_ok626
  %b.byte.i8637 = trunc i64 %s.byte.val631 to i8
  %b.len638 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 0
  %b.len639 = load i64, ptr %b.len638, align 8
  %b.cap640 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 2
  %b.cap641 = load i64, ptr %b.cap640, align 8
  %b.data642 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 1
  %b.data643 = load ptr, ptr %b.data642, align 8
  %b.needs.grow644 = icmp eq i64 %b.len639, %b.cap641
  br i1 %b.needs.grow644, label %b.grow645, label %b.nogrow646

b.byte_err636:                                    ; preds = %idx_ok626
  %39 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok635

b.grow645:                                        ; preds = %b.byte_ok635
  %b.cap2648 = mul i64 %b.cap641, 2
  %b.cap.small649 = icmp slt i64 %b.cap2648, 16
  %b.new.cap650 = select i1 %b.cap.small649, i64 16, i64 %b.cap2648
  %b.new.buf.len651 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap650, i64 1)
  %sum652 = extractvalue { i64, i1 } %b.new.buf.len651, 0
  %ovf653 = extractvalue { i64, i1 } %b.new.buf.len651, 1
  br i1 %ovf653, label %str_overflow_abort655, label %b.new.buf.len654

b.nogrow646:                                      ; preds = %b.byte_ok635
  br label %b.push_done647

b.push_done647:                                   ; preds = %b.nogrow646, %b.new.buf.len654
  %b.cur.data661 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 1
  %b.cur.data662 = load ptr, ptr %b.cur.data661, align 8
  %b.cur.len663 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 0
  %b.cur.len664 = load i64, ptr %b.cur.len663, align 8
  %b.byte.gep665 = getelementptr i8, ptr %b.cur.data662, i64 %b.cur.len664
  store i8 %b.byte.i8637, ptr %b.byte.gep665, align 1
  %b.next.len666 = add i64 %b.cur.len664, 1
  %b.nul667 = getelementptr i8, ptr %b.cur.data662, i64 %b.next.len666
  store i8 0, ptr %b.nul667, align 1
  %b.len.gep668 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 0
  store i64 %b.next.len666, ptr %b.len.gep668, align 8
  br label %loop.latch.18

b.new.buf.len654:                                 ; preds = %str_overflow_abort655, %b.grow645
  %arena.cur656 = call ptr @dva_arena_current()
  %b.new.buf657 = call ptr @dva_arena_alloc(ptr %arena.cur656, i64 %sum652)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf657, ptr align 1 %b.data643, i64 %b.len639, i1 false)
  %b.grow.nul658 = getelementptr i8, ptr %b.new.buf657, i64 %b.len639
  store i8 0, ptr %b.grow.nul658, align 1
  %b.new.data.gep659 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 1
  store ptr %b.new.buf657, ptr %b.new.data.gep659, align 8
  %b.new.cap.gep660 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load609, i32 0, i32 2
  store i64 %b.new.cap650, ptr %b.new.cap.gep660, align 8
  br label %b.push_done647

str_overflow_abort655:                            ; preds = %b.grow645
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len654

str_gen_check675:                                 ; preds = %choice.else439
  %arena.cur678 = call ptr @dva_arena_current()
  %tag.valid679 = call i1 @dva_arena_validate_tag(ptr %arena.cur678, i64 %str.tag673)
  br i1 %tag.valid679, label %str_ok676, label %str_stale677

str_ok676:                                        ; preds = %str_stale677, %str_gen_check675, %choice.else439
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load671, i32 0, i32 0
  %b.app.cur.len680 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len680, i64 %app.str.len672)
  %sum681 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf682 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf682, label %str_overflow_abort684, label %b.app.new.len683

str_stale677:                                     ; preds = %str_gen_check675
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok676

b.app.new.len683:                                 ; preds = %str_overflow_abort684, %str_ok676
  %b.cap685 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load671, i32 0, i32 2
  %b.cap686 = load i64, ptr %b.cap685, align 8
  %b.need.grow687 = icmp slt i64 %b.cap686, %sum681
  br i1 %b.need.grow687, label %b.grow2688, label %b.nogrow2689

str_overflow_abort684:                            ; preds = %str_ok676
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len683

b.grow2688:                                       ; preds = %b.app.new.len683
  %b.cap2691 = mul i64 %b.cap686, 2
  %b.cap.small692 = icmp slt i64 %b.cap2691, 16
  %b.cap.grow693 = select i1 %b.cap.small692, i64 16, i64 %b.cap2691
  %b.cap.need694 = icmp slt i64 %b.cap.grow693, %sum681
  %b.new.cap695 = select i1 %b.cap.need694, i64 %sum681, i64 %b.cap.grow693
  %b.cur.len2696 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load671, i32 0, i32 0
  %b.cur.len2697 = load i64, ptr %b.cur.len2696, align 8
  %b.cur.data2698 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load671, i32 0, i32 1
  %b.cur.data2699 = load ptr, ptr %b.cur.data2698, align 8
  %b.new.buf.len2700 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap695, i64 1)
  %sum701 = extractvalue { i64, i1 } %b.new.buf.len2700, 0
  %ovf702 = extractvalue { i64, i1 } %b.new.buf.len2700, 1
  br i1 %ovf702, label %str_overflow_abort704, label %b.new.buf.len2703

b.nogrow2689:                                     ; preds = %b.app.new.len683
  br label %b.grow_done690

b.grow_done690:                                   ; preds = %b.nogrow2689, %b.new.buf.len2703
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load671, i32 0, i32 1
  %b.app.data710 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data710, i64 %b.app.cur.len680
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len672, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data710, i64 %sum681
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep711 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load671, i32 0, i32 0
  store i64 %sum681, ptr %b.len.gep711, align 8
  %var.load712 = load i64, ptr %"var.e'", align 8
  %subtmp713 = sub i64 0, %var.load712
  %subtmp714 = sub i64 %subtmp713, 1
  store i64 0, ptr %loop.idx.19, align 8
  br label %loop.header.19

b.new.buf.len2703:                                ; preds = %str_overflow_abort704, %b.grow2688
  %arena.cur705 = call ptr @dva_arena_current()
  %b.new.buf2706 = call ptr @dva_arena_alloc(ptr %arena.cur705, i64 %sum701)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2706, ptr align 1 %b.cur.data2699, i64 %b.cur.len2697, i1 false)
  %b.grow2.nul707 = getelementptr i8, ptr %b.new.buf2706, i64 %b.cur.len2697
  store i8 0, ptr %b.grow2.nul707, align 1
  %b.new.data2.gep708 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load671, i32 0, i32 1
  store ptr %b.new.buf2706, ptr %b.new.data2.gep708, align 8
  %b.new.cap2.gep709 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load671, i32 0, i32 2
  store i64 %b.new.cap695, ptr %b.new.cap2.gep709, align 8
  br label %b.grow_done690

str_overflow_abort704:                            ; preds = %b.grow2688
  %43 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2703

loop.header.19:                                   ; preds = %loop.latch.19, %b.grow_done690
  %counter.load715 = load i64, ptr %loop.idx.19, align 8
  %loop.cond716 = icmp slt i64 %counter.load715, %subtmp714
  br i1 %loop.cond716, label %loop.body.19, label %loop.exit.nat.19

loop.body.19:                                     ; preds = %loop.header.19
  %loop.rel.i717 = sub i64 %counter.load715, 0
  store i64 1, ptr %loop.step.19, align 8
  store i64 %loop.rel.i717, ptr %var._i718, align 8
  store i64 %counter.load715, ptr %var._719, align 8
  store i64 %counter.load715, ptr %var.i, align 8
  %b.load720 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len721 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load720, i32 0, i32 0
  %b.rn.cur.len722 = load i64, ptr %b.rn.cur.len721, align 8
  %b.rn.new.len723 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len722, i64 1)
  %sum724 = extractvalue { i64, i1 } %b.rn.new.len723, 0
  %ovf725 = extractvalue { i64, i1 } %b.rn.new.len723, 1
  br i1 %ovf725, label %str_overflow_abort727, label %b.rn.new.len726

loop.exit.nat.19:                                 ; preds = %loop.header.19
  br label %loop.exit.19

loop.latch.19:                                    ; preds = %br.done.20
  %step.val764 = load i64, ptr %loop.step.19, align 8
  %loop.next765 = add i64 %counter.load715, %step.val764
  store i64 %loop.next765, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %loop.exit.nat.19
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

b.rn.new.len726:                                  ; preds = %str_overflow_abort727, %loop.body.19
  %b.cap728 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load720, i32 0, i32 2
  %b.cap729 = load i64, ptr %b.cap728, align 8
  %b.need.grow730 = icmp slt i64 %b.cap729, %sum724
  br i1 %b.need.grow730, label %b.grow2731, label %b.nogrow2732

str_overflow_abort727:                            ; preds = %loop.body.19
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len726

b.grow2731:                                       ; preds = %b.rn.new.len726
  %b.cap2734 = mul i64 %b.cap729, 2
  %b.cap.small735 = icmp slt i64 %b.cap2734, 16
  %b.cap.grow736 = select i1 %b.cap.small735, i64 16, i64 %b.cap2734
  %b.cap.need737 = icmp slt i64 %b.cap.grow736, %sum724
  %b.new.cap738 = select i1 %b.cap.need737, i64 %sum724, i64 %b.cap.grow736
  %b.cur.len2739 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load720, i32 0, i32 0
  %b.cur.len2740 = load i64, ptr %b.cur.len2739, align 8
  %b.cur.data2741 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load720, i32 0, i32 1
  %b.cur.data2742 = load ptr, ptr %b.cur.data2741, align 8
  %b.new.buf.len2743 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap738, i64 1)
  %sum744 = extractvalue { i64, i1 } %b.new.buf.len2743, 0
  %ovf745 = extractvalue { i64, i1 } %b.new.buf.len2743, 1
  br i1 %ovf745, label %str_overflow_abort747, label %b.new.buf.len2746

b.nogrow2732:                                     ; preds = %b.rn.new.len726
  br label %b.grow_done733

b.grow_done733:                                   ; preds = %b.nogrow2732, %b.new.buf.len2746
  %b.rn.data753 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load720, i32 0, i32 1
  %b.rn.data754 = load ptr, ptr %b.rn.data753, align 8
  %b.rn.dst755 = getelementptr i8, ptr %b.rn.data754, i64 %b.rn.cur.len722
  br i1 true, label %br.b1.20, label %br.c2.20

b.new.buf.len2746:                                ; preds = %str_overflow_abort747, %b.grow2731
  %arena.cur748 = call ptr @dva_arena_current()
  %b.new.buf2749 = call ptr @dva_arena_alloc(ptr %arena.cur748, i64 %sum744)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2749, ptr align 1 %b.cur.data2742, i64 %b.cur.len2740, i1 false)
  %b.grow2.nul750 = getelementptr i8, ptr %b.new.buf2749, i64 %b.cur.len2740
  store i8 0, ptr %b.grow2.nul750, align 1
  %b.new.data2.gep751 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load720, i32 0, i32 1
  store ptr %b.new.buf2749, ptr %b.new.data2.gep751, align 8
  %b.new.cap2.gep752 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load720, i32 0, i32 2
  store i64 %b.new.cap738, ptr %b.new.cap2.gep752, align 8
  br label %b.grow_done733

str_overflow_abort747:                            ; preds = %b.grow2731
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2746

br.b1.20:                                         ; preds = %b.grow_done733
  store i8 48, ptr %b.rn.dst755, align 1
  br label %br.done.20

br.c2.20:                                         ; preds = %b.grow_done733
  br i1 true, label %br.b2.20, label %br.c3.20

br.b2.20:                                         ; preds = %br.c2.20
  store i8 -64, ptr %b.rn.dst755, align 1
  %br.dst1756 = getelementptr i8, ptr %b.rn.dst755, i64 1
  store i8 -80, ptr %br.dst1756, align 1
  br label %br.done.20

br.c3.20:                                         ; preds = %br.c2.20
  br i1 true, label %br.b3.20, label %br.b4.20

br.b3.20:                                         ; preds = %br.c3.20
  store i8 -32, ptr %b.rn.dst755, align 1
  %br.dst1.3757 = getelementptr i8, ptr %b.rn.dst755, i64 1
  store i8 -128, ptr %br.dst1.3757, align 1
  %br.dst2.3758 = getelementptr i8, ptr %b.rn.dst755, i64 2
  store i8 -80, ptr %br.dst2.3758, align 1
  br label %br.done.20

br.b4.20:                                         ; preds = %br.c3.20
  store i8 -16, ptr %b.rn.dst755, align 1
  %br.dst1.4759 = getelementptr i8, ptr %b.rn.dst755, i64 1
  store i8 -128, ptr %br.dst1.4759, align 1
  %br.dst2.4760 = getelementptr i8, ptr %b.rn.dst755, i64 2
  store i8 -128, ptr %br.dst2.4760, align 1
  %br.dst3.4761 = getelementptr i8, ptr %b.rn.dst755, i64 3
  store i8 -80, ptr %br.dst3.4761, align 1
  br label %br.done.20

br.done.20:                                       ; preds = %br.b4.20, %br.b3.20, %br.b2.20, %br.b1.20
  %br.nul762 = getelementptr i8, ptr %b.rn.data754, i64 %sum724
  store i8 0, ptr %br.nul762, align 1
  %b.len.gep763 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load720, i32 0, i32 0
  store i64 %sum724, ptr %b.len.gep763, align 8
  br label %loop.latch.19

loop.header.21:                                   ; preds = %loop.latch.21, %loop.exit.19
  %counter.load766 = load i64, ptr %loop.idx.21, align 8
  %loop.cond767 = icmp slt i64 %counter.load766, 6
  br i1 %loop.cond767, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i768 = sub i64 %counter.load766, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i768, ptr %var._i769, align 8
  store i64 %counter.load766, ptr %var._770, align 8
  store i64 %counter.load766, ptr %var.i, align 8
  %var.load771 = load ptr, ptr %var.ms, align 8
  %s.read.len772 = getelementptr inbounds { i64, ptr }, ptr %var.load771, i32 0, i32 0
  %s.read.len773 = load i64, ptr %s.read.len772, align 8
  %s.read.len774 = and i64 %s.read.len773, 281474976710655
  %str.tag775 = lshr i64 %s.read.len773, 48
  %str.immortal776 = icmp eq i64 %str.tag775, 0
  br i1 %str.immortal776, label %str_ok778, label %str_gen_check777

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %b.push_done831
  %step.val853 = load i64, ptr %loop.step.21, align 8
  %loop.next854 = add i64 %counter.load766, %step.val853
  store i64 %loop.next854, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  br label %choice.exit440

str_gen_check777:                                 ; preds = %loop.body.21
  %arena.cur780 = call ptr @dva_arena_current()
  %tag.valid781 = call i1 @dva_arena_validate_tag(ptr %arena.cur780, i64 %str.tag775)
  br i1 %tag.valid781, label %str_ok778, label %str_stale779

str_ok778:                                        ; preds = %str_stale779, %str_gen_check777, %loop.body.21
  %s.read.data782 = getelementptr inbounds { i64, ptr }, ptr %var.load771, i32 0, i32 1
  %s.read.data783 = load ptr, ptr %s.read.data782, align 8
  %var.load784 = load i64, ptr %var.i, align 8
  %idx.neg785 = icmp slt i64 %var.load784, 0
  br i1 %idx.neg785, label %idx_oob788, label %idx_big_check786

str_stale779:                                     ; preds = %str_gen_check777
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok778

idx_big_check786:                                 ; preds = %str_ok778
  %idx.big789 = icmp sge i64 %var.load784, %s.read.len774
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

idx_oob788:                                       ; preds = %idx_big_check786, %str_ok778
  %47 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok787

str_gen_check800:                                 ; preds = %idx_ok787
  %arena.cur803 = call ptr @dva_arena_current()
  %tag.valid804 = call i1 @dva_arena_validate_tag(ptr %arena.cur803, i64 %str.tag798)
  br i1 %tag.valid804, label %str_ok801, label %str_stale802

str_ok801:                                        ; preds = %str_stale802, %str_gen_check800, %idx_ok787
  %s.read.data805 = getelementptr inbounds { i64, ptr }, ptr %var.load794, i32 0, i32 1
  %s.read.data806 = load ptr, ptr %s.read.data805, align 8
  %var.load807 = load i64, ptr %var.i, align 8
  %idx.neg808 = icmp slt i64 %var.load807, 0
  br i1 %idx.neg808, label %idx_oob811, label %idx_big_check809

str_stale802:                                     ; preds = %str_gen_check800
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok801

idx_big_check809:                                 ; preds = %str_ok801
  %idx.big812 = icmp sge i64 %var.load807, %s.read.len797
  br i1 %idx.big812, label %idx_oob811, label %idx_ok810

idx_ok810:                                        ; preds = %idx_oob811, %idx_big_check809
  %s.byte.gep813 = getelementptr i8, ptr %s.read.data806, i64 %var.load807
  %s.byte814 = load i8, ptr %s.byte.gep813, align 1
  %s.byte.val815 = zext i8 %s.byte814 to i64
  %b.b.ge0816 = icmp sge i64 %s.byte.val815, 0
  %b.b.le255817 = icmp sle i64 %s.byte.val815, 255
  %b.byte.range818 = and i1 %b.b.ge0816, %b.b.le255817
  br i1 %b.byte.range818, label %b.byte_ok819, label %b.byte_err820

idx_oob811:                                       ; preds = %idx_big_check809, %str_ok801
  %49 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok810

b.byte_ok819:                                     ; preds = %b.byte_err820, %idx_ok810
  %b.byte.i8821 = trunc i64 %s.byte.val815 to i8
  %b.len822 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 0
  %b.len823 = load i64, ptr %b.len822, align 8
  %b.cap824 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 2
  %b.cap825 = load i64, ptr %b.cap824, align 8
  %b.data826 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 1
  %b.data827 = load ptr, ptr %b.data826, align 8
  %b.needs.grow828 = icmp eq i64 %b.len823, %b.cap825
  br i1 %b.needs.grow828, label %b.grow829, label %b.nogrow830

b.byte_err820:                                    ; preds = %idx_ok810
  %50 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok819

b.grow829:                                        ; preds = %b.byte_ok819
  %b.cap2832 = mul i64 %b.cap825, 2
  %b.cap.small833 = icmp slt i64 %b.cap2832, 16
  %b.new.cap834 = select i1 %b.cap.small833, i64 16, i64 %b.cap2832
  %b.new.buf.len835 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap834, i64 1)
  %sum836 = extractvalue { i64, i1 } %b.new.buf.len835, 0
  %ovf837 = extractvalue { i64, i1 } %b.new.buf.len835, 1
  br i1 %ovf837, label %str_overflow_abort839, label %b.new.buf.len838

b.nogrow830:                                      ; preds = %b.byte_ok819
  br label %b.push_done831

b.push_done831:                                   ; preds = %b.nogrow830, %b.new.buf.len838
  %b.cur.data845 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 1
  %b.cur.data846 = load ptr, ptr %b.cur.data845, align 8
  %b.cur.len847 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 0
  %b.cur.len848 = load i64, ptr %b.cur.len847, align 8
  %b.byte.gep849 = getelementptr i8, ptr %b.cur.data846, i64 %b.cur.len848
  store i8 %b.byte.i8821, ptr %b.byte.gep849, align 1
  %b.next.len850 = add i64 %b.cur.len848, 1
  %b.nul851 = getelementptr i8, ptr %b.cur.data846, i64 %b.next.len850
  store i8 0, ptr %b.nul851, align 1
  %b.len.gep852 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 0
  store i64 %b.next.len850, ptr %b.len.gep852, align 8
  br label %loop.latch.21

b.new.buf.len838:                                 ; preds = %str_overflow_abort839, %b.grow829
  %arena.cur840 = call ptr @dva_arena_current()
  %b.new.buf841 = call ptr @dva_arena_alloc(ptr %arena.cur840, i64 %sum836)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf841, ptr align 1 %b.data827, i64 %b.len823, i1 false)
  %b.grow.nul842 = getelementptr i8, ptr %b.new.buf841, i64 %b.len823
  store i8 0, ptr %b.grow.nul842, align 1
  %b.new.data.gep843 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 1
  store ptr %b.new.buf841, ptr %b.new.data.gep843, align 8
  %b.new.cap.gep844 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load793, i32 0, i32 2
  store i64 %b.new.cap834, ptr %b.new.cap.gep844, align 8
  br label %b.push_done831

str_overflow_abort839:                            ; preds = %b.grow829
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len838

b.freeze.check864:                                ; preds = %choice.exit224
  %b.freeze.last.idx867 = sub i64 %b.freeze.nc862, 1
  %b.freeze.chunks.gep868 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena860, i32 0, i32 3
  %b.freeze.chunk.slot869 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep868, i64 0, i64 %b.freeze.last.idx867
  %b.freeze.last.chunk870 = load ptr, ptr %b.freeze.chunk.slot869, align 8
  %b.freeze.off.gep871 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena860, i32 0, i32 2
  %b.freeze.off872 = load i64, ptr %b.freeze.off.gep871, align 8
  %b.freeze.bump873 = getelementptr i8, ptr %b.freeze.last.chunk870, i64 %b.freeze.off872
  %b.freeze.cap.gep874 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena860, i32 0, i32 0
  %b.freeze.cap875 = load i64, ptr %b.freeze.cap.gep874, align 8
  %b.freeze.chunk.end876 = getelementptr i8, ptr %b.freeze.last.chunk870, i64 %b.freeze.cap875
  %b.freeze.ge.chunk877 = icmp uge ptr %b.freeze.data859, %b.freeze.last.chunk870
  %b.freeze.lt.end878 = icmp ult ptr %b.freeze.data859, %b.freeze.chunk.end876
  %b.freeze.in.chunk879 = and i1 %b.freeze.ge.chunk877, %b.freeze.lt.end878
  %b.freeze.ge.bump880 = icmp uge ptr %b.freeze.data859, %b.freeze.bump873
  %b.freeze.reaped881 = and i1 %b.freeze.in.chunk879, %b.freeze.ge.bump880
  br i1 %b.freeze.reaped881, label %b.freeze.copy865, label %b.freeze.done866

b.freeze.copy865:                                 ; preds = %b.freeze.check864
  %arena.cur882 = call ptr @dva_arena_current()
  %b.freeze.fresh883 = call ptr @dva_arena_alloc(ptr %arena.cur882, i64 %b.freeze.len857)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh883, ptr align 1 %b.freeze.data859, i64 %b.freeze.len857, i1 false)
  br label %b.freeze.done866

b.freeze.done866:                                 ; preds = %b.freeze.copy865, %b.freeze.check864, %choice.exit224
  %b.freeze.data884 = phi ptr [ %b.freeze.data859, %choice.exit224 ], [ %b.freeze.data859, %b.freeze.check864 ], [ %b.freeze.fresh883, %b.freeze.copy865 ]
  %arena.cur885 = call ptr @dva_arena_current()
  %builder.freeze886 = call ptr @dva_arena_alloc(ptr %arena.cur885, i64 16)
  %str.build.len.gep887 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze886, i32 0, i32 0
  store i64 %b.freeze.len857, ptr %str.build.len.gep887, align 8
  %str.build.data.gep888 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze886, i32 0, i32 1
  store ptr %b.freeze.data884, ptr %str.build.data.gep888, align 8
  %b.freeze.rst.len889 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load855, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len889, align 8
  %b.freeze.rst.data890 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load855, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data890, align 8
  %b.freeze.rst.cap891 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load855, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap891, align 8
  store ptr %builder.freeze886, ptr %var.full, align 8
  store i64 -1, ptr %"var.dot_pos'", align 8
  %var.load892 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load892, i32 0, i32 0
  %str.len.query893 = load i64, ptr %str.len.query, align 8
  %str.len.query894 = and i64 %str.len.query893, 281474976710655
  %str.tag895 = lshr i64 %str.len.query893, 48
  %str.immortal896 = icmp eq i64 %str.tag895, 0
  br i1 %str.immortal896, label %str_ok898, label %str_gen_check897

str_gen_check897:                                 ; preds = %b.freeze.done866
  %arena.cur900 = call ptr @dva_arena_current()
  %tag.valid901 = call i1 @dva_arena_validate_tag(ptr %arena.cur900, i64 %str.tag895)
  br i1 %tag.valid901, label %str_ok898, label %str_stale899

str_ok898:                                        ; preds = %str_stale899, %str_gen_check897, %b.freeze.done866
  store i64 0, ptr %loop.idx.22, align 8
  br label %loop.header.22

str_stale899:                                     ; preds = %str_gen_check897
  %52 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok898

loop.header.22:                                   ; preds = %loop.latch.22, %str_ok898
  %counter.load902 = load i64, ptr %loop.idx.22, align 8
  %loop.cond903 = icmp slt i64 %counter.load902, %str.len.query894
  br i1 %loop.cond903, label %loop.body.22, label %loop.exit.nat.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i904 = sub i64 %counter.load902, 0
  store i64 1, ptr %loop.step.22, align 8
  store i64 %loop.rel.i904, ptr %var._i905, align 8
  store i64 %counter.load902, ptr %var._906, align 8
  store i64 %counter.load902, ptr %var.i, align 8
  %var.load907 = load ptr, ptr %var.full, align 8
  %s.read.len908 = getelementptr inbounds { i64, ptr }, ptr %var.load907, i32 0, i32 0
  %s.read.len909 = load i64, ptr %s.read.len908, align 8
  %s.read.len910 = and i64 %s.read.len909, 281474976710655
  %str.tag911 = lshr i64 %s.read.len909, 48
  %str.immortal912 = icmp eq i64 %str.tag911, 0
  br i1 %str.immortal912, label %str_ok914, label %str_gen_check913

loop.exit.nat.22:                                 ; preds = %loop.header.22
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %choice.exit931
  %step.val933 = load i64, ptr %loop.step.22, align 8
  %loop.next934 = add i64 %counter.load902, %step.val933
  store i64 %loop.next934, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %loop.exit.nat.22
  %var.load935 = load ptr, ptr %var.full, align 8
  %str.len.query936 = getelementptr inbounds { i64, ptr }, ptr %var.load935, i32 0, i32 0
  %str.len.query937 = load i64, ptr %str.len.query936, align 8
  %str.len.query938 = and i64 %str.len.query937, 281474976710655
  %str.tag939 = lshr i64 %str.len.query937, 48
  %str.immortal940 = icmp eq i64 %str.tag939, 0
  br i1 %str.immortal940, label %str_ok942, label %str_gen_check941

str_gen_check913:                                 ; preds = %loop.body.22
  %arena.cur916 = call ptr @dva_arena_current()
  %tag.valid917 = call i1 @dva_arena_validate_tag(ptr %arena.cur916, i64 %str.tag911)
  br i1 %tag.valid917, label %str_ok914, label %str_stale915

str_ok914:                                        ; preds = %str_stale915, %str_gen_check913, %loop.body.22
  %s.read.data918 = getelementptr inbounds { i64, ptr }, ptr %var.load907, i32 0, i32 1
  %s.read.data919 = load ptr, ptr %s.read.data918, align 8
  %var.load920 = load i64, ptr %var.i, align 8
  %idx.neg921 = icmp slt i64 %var.load920, 0
  br i1 %idx.neg921, label %idx_oob924, label %idx_big_check922

str_stale915:                                     ; preds = %str_gen_check913
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok914

idx_big_check922:                                 ; preds = %str_ok914
  %idx.big925 = icmp sge i64 %var.load920, %s.read.len910
  br i1 %idx.big925, label %idx_oob924, label %idx_ok923

idx_ok923:                                        ; preds = %idx_oob924, %idx_big_check922
  %s.byte.gep926 = getelementptr i8, ptr %s.read.data919, i64 %var.load920
  %s.byte927 = load i8, ptr %s.byte.gep926, align 1
  %s.byte.val928 = zext i8 %s.byte927 to i64
  %cmptmp929 = icmp eq i64 %s.byte.val928, 46
  br i1 %cmptmp929, label %choice.then930, label %choice.exit931

idx_oob924:                                       ; preds = %idx_big_check922, %str_ok914
  %54 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok923

choice.then930:                                   ; preds = %idx_ok923
  %var.load932 = load i64, ptr %var.i, align 8
  store i64 %var.load932, ptr %"var.dot_pos'", align 8
  br label %choice.exit931

choice.exit931:                                   ; preds = %choice.then930, %idx_ok923
  br label %loop.latch.22

str_gen_check941:                                 ; preds = %loop.exit.22
  %arena.cur944 = call ptr @dva_arena_current()
  %tag.valid945 = call i1 @dva_arena_validate_tag(ptr %arena.cur944, i64 %str.tag939)
  br i1 %tag.valid945, label %str_ok942, label %str_stale943

str_ok942:                                        ; preds = %str_stale943, %str_gen_check941, %loop.exit.22
  store i64 %str.len.query938, ptr %var.len, align 8
  %var.load946 = load i64, ptr %var.len, align 8
  store i64 %var.load946, ptr %"var.end'", align 8
  %var.load947 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp948 = icmp sge i64 %var.load947, 0
  br i1 %cmptmp948, label %choice.then949, label %choice.exit950

str_stale943:                                     ; preds = %str_gen_check941
  %55 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok942

choice.then949:                                   ; preds = %str_ok942
  store i64 0, ptr %loop.idx.23, align 8
  br label %loop.header.23

choice.exit950:                                   ; preds = %choice.exit995, %str_ok942
  %var.load997 = load ptr, ptr %var.full, align 8
  %s.read.len998 = getelementptr inbounds { i64, ptr }, ptr %var.load997, i32 0, i32 0
  %s.read.len999 = load i64, ptr %s.read.len998, align 8
  %s.read.len1000 = and i64 %s.read.len999, 281474976710655
  %str.tag1001 = lshr i64 %s.read.len999, 48
  %str.immortal1002 = icmp eq i64 %str.tag1001, 0
  br i1 %str.immortal1002, label %str_ok1004, label %str_gen_check1003

loop.header.23:                                   ; preds = %loop.latch.23, %choice.then949
  %counter.load951 = load i64, ptr %loop.idx.23, align 8
  br label %loop.body.23

loop.body.23:                                     ; preds = %loop.header.23
  %loop.rel.i952 = sub i64 %counter.load951, 0
  store i64 1, ptr %loop.step.23, align 8
  store i64 %loop.rel.i952, ptr %var._i953, align 8
  store i64 %counter.load951, ptr %var._954, align 8
  %var.load955 = load i64, ptr %"var.end'", align 8
  %subtmp956 = sub i64 %var.load955, 1
  %var.load957 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp958 = icmp sgt i64 %subtmp956, %var.load957
  br i1 %cmptmp958, label %and.24.then, label %and.24.else

loop.exit.nat.23:                                 ; No predecessors!
  br label %loop.exit.23

loop.latch.23:                                    ; preds = %choice.exit985
  %step.val988 = load i64, ptr %loop.step.23, align 8
  %loop.next989 = add i64 %counter.load951, %step.val988
  store i64 %loop.next989, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.exit.23:                                     ; preds = %choice.else984, %loop.exit.nat.23
  %var.load990 = load i64, ptr %"var.end'", align 8
  %subtmp991 = sub i64 %var.load990, 1
  %var.load992 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp993 = icmp eq i64 %subtmp991, %var.load992
  br i1 %cmptmp993, label %choice.then994, label %choice.exit995

and.24.then:                                      ; preds = %loop.body.23
  %var.load959 = load ptr, ptr %var.full, align 8
  %s.read.len960 = getelementptr inbounds { i64, ptr }, ptr %var.load959, i32 0, i32 0
  %s.read.len961 = load i64, ptr %s.read.len960, align 8
  %s.read.len962 = and i64 %s.read.len961, 281474976710655
  %str.tag963 = lshr i64 %s.read.len961, 48
  %str.immortal964 = icmp eq i64 %str.tag963, 0
  br i1 %str.immortal964, label %str_ok966, label %str_gen_check965

and.24.else:                                      ; preds = %loop.body.23
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %idx_ok976
  %and.24.phi = phi i1 [ %cmptmp982, %idx_ok976 ], [ %cmptmp958, %and.24.else ]
  br i1 %and.24.phi, label %choice.then983, label %choice.else984

str_gen_check965:                                 ; preds = %and.24.then
  %arena.cur968 = call ptr @dva_arena_current()
  %tag.valid969 = call i1 @dva_arena_validate_tag(ptr %arena.cur968, i64 %str.tag963)
  br i1 %tag.valid969, label %str_ok966, label %str_stale967

str_ok966:                                        ; preds = %str_stale967, %str_gen_check965, %and.24.then
  %s.read.data970 = getelementptr inbounds { i64, ptr }, ptr %var.load959, i32 0, i32 1
  %s.read.data971 = load ptr, ptr %s.read.data970, align 8
  %var.load972 = load i64, ptr %"var.end'", align 8
  %subtmp973 = sub i64 %var.load972, 1
  %idx.neg974 = icmp slt i64 %subtmp973, 0
  br i1 %idx.neg974, label %idx_oob977, label %idx_big_check975

str_stale967:                                     ; preds = %str_gen_check965
  %56 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok966

idx_big_check975:                                 ; preds = %str_ok966
  %idx.big978 = icmp sge i64 %subtmp973, %s.read.len962
  br i1 %idx.big978, label %idx_oob977, label %idx_ok976

idx_ok976:                                        ; preds = %idx_oob977, %idx_big_check975
  %s.byte.gep979 = getelementptr i8, ptr %s.read.data971, i64 %subtmp973
  %s.byte980 = load i8, ptr %s.byte.gep979, align 1
  %s.byte.val981 = zext i8 %s.byte980 to i64
  %cmptmp982 = icmp eq i64 %s.byte.val981, 48
  br label %and.24.exit

idx_oob977:                                       ; preds = %idx_big_check975, %str_ok966
  %57 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok976

choice.then983:                                   ; preds = %and.24.exit
  %var.load986 = load i64, ptr %"var.end'", align 8
  %subtmp987 = sub i64 %var.load986, 1
  store i64 %subtmp987, ptr %"var.end'", align 8
  br label %choice.exit985

choice.else984:                                   ; preds = %and.24.exit
  br label %loop.exit.23

choice.exit985:                                   ; preds = %choice.then983
  br label %loop.latch.23

choice.then994:                                   ; preds = %loop.exit.23
  %var.load996 = load i64, ptr %"var.dot_pos'", align 8
  store i64 %var.load996, ptr %"var.end'", align 8
  br label %choice.exit995

choice.exit995:                                   ; preds = %choice.then994, %loop.exit.23
  br label %choice.exit950

str_gen_check1003:                                ; preds = %choice.exit950
  %arena.cur1006 = call ptr @dva_arena_current()
  %tag.valid1007 = call i1 @dva_arena_validate_tag(ptr %arena.cur1006, i64 %str.tag1001)
  br i1 %tag.valid1007, label %str_ok1004, label %str_stale1005

str_ok1004:                                       ; preds = %str_stale1005, %str_gen_check1003, %choice.exit950
  %s.read.data1008 = getelementptr inbounds { i64, ptr }, ptr %var.load997, i32 0, i32 1
  %s.read.data1009 = load ptr, ptr %s.read.data1008, align 8
  %var.load1010 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len1000, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len1000
  %final.start = select i1 %start.gt.len, i64 %s.read.len1000, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load1010, 0
  %rel.end = add i64 %s.read.len1000, %var.load1010
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load1010
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len1000
  %final.end = select i1 %end.gt.len, i64 %s.read.len1000, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data1009, i64 %final.start
  %arena.cur1011 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur1011, i64 16)
  %str.build.len.gep1012 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep1012, align 8
  %str.build.data.gep1013 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep1013, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load1014 = load i64, ptr %"var.e'", align 8
  %cmptmp1015 = icmp slt i64 %var.load1014, 0
  br i1 %cmptmp1015, label %choice.then1016, label %choice.else1017

str_stale1005:                                    ; preds = %str_gen_check1003
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1004

choice.then1016:                                  ; preds = %str_ok1004
  %var.load1019 = load i64, ptr %"var.e'", align 8
  %subtmp1020 = sub i64 0, %var.load1019
  %call.res1021 = call ptr @"str::from_int"(i64 %subtmp1020)
  %concat.lhs = load i64, ptr @str.7.struct, align 8
  %concat.lhs1022 = and i64 %concat.lhs, 281474976710655
  %str.tag1023 = lshr i64 %concat.lhs, 48
  %str.immortal1024 = icmp eq i64 %str.tag1023, 0
  br i1 %str.immortal1024, label %str_ok1026, label %str_gen_check1025

choice.else1017:                                  ; preds = %str_ok1004
  %var.load1054 = load i64, ptr %"var.e'", align 8
  %call.res1055 = call ptr @"str::from_int"(i64 %var.load1054)
  br label %choice.exit1018

choice.exit1018:                                  ; preds = %choice.else1017, %concat.tot.len1048
  %choice.res1056 = phi ptr [ %concat.str, %concat.tot.len1048 ], [ %call.res1055, %choice.else1017 ]
  store ptr %choice.res1056, ptr %var.es, align 8
  %var.load1057 = load i64, ptr %"var.e'", align 8
  %cmptmp1058 = icmp slt i64 %var.load1057, -4
  br i1 %cmptmp1058, label %or.25.then, label %or.25.else

str_gen_check1025:                                ; preds = %choice.then1016
  %arena.cur1028 = call ptr @dva_arena_current()
  %tag.valid1029 = call i1 @dva_arena_validate_tag(ptr %arena.cur1028, i64 %str.tag1023)
  br i1 %tag.valid1029, label %str_ok1026, label %str_stale1027

str_ok1026:                                       ; preds = %str_stale1027, %str_gen_check1025, %choice.then1016
  %concat.lhs1030 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res1021, i32 0, i32 0
  %concat.rhs1031 = load i64, ptr %concat.rhs, align 8
  %concat.rhs1032 = and i64 %concat.rhs1031, 281474976710655
  %str.tag1033 = lshr i64 %concat.rhs1031, 48
  %str.immortal1034 = icmp eq i64 %str.tag1033, 0
  br i1 %str.immortal1034, label %str_ok1036, label %str_gen_check1035

str_stale1027:                                    ; preds = %str_gen_check1025
  %59 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1026

str_gen_check1035:                                ; preds = %str_ok1026
  %arena.cur1038 = call ptr @dva_arena_current()
  %tag.valid1039 = call i1 @dva_arena_validate_tag(ptr %arena.cur1038, i64 %str.tag1033)
  br i1 %tag.valid1039, label %str_ok1036, label %str_stale1037

str_ok1036:                                       ; preds = %str_stale1037, %str_gen_check1035, %str_ok1026
  %concat.rhs1040 = getelementptr inbounds { i64, ptr }, ptr %call.res1021, i32 0, i32 1
  %concat.rhs1041 = load ptr, ptr %concat.rhs1040, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1022, i64 %concat.rhs1032)
  %sum1042 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf1043 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf1043, label %str_overflow_abort1045, label %concat.sum.len1044

str_stale1037:                                    ; preds = %str_gen_check1035
  %60 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1036

concat.sum.len1044:                               ; preds = %str_overflow_abort1045, %str_ok1036
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1042, i64 1)
  %sum1046 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf1047 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf1047, label %str_overflow_abort1049, label %concat.tot.len1048

str_overflow_abort1045:                           ; preds = %str_ok1036
  %61 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1044

concat.tot.len1048:                               ; preds = %str_overflow_abort1049, %concat.sum.len1044
  %arena.cur1050 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur1050, i64 %sum1046)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs1030, i64 %concat.lhs1022, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1022
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs1041, i64 %concat.rhs1032, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum1042
  store i8 0, ptr %concat.nul, align 1
  %arena.cur1051 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur1051, i64 16)
  %str.build.len.gep1052 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum1042, ptr %str.build.len.gep1052, align 8
  %str.build.data.gep1053 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep1053, align 8
  br label %choice.exit1018

str_overflow_abort1049:                           ; preds = %concat.sum.len1044
  %62 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1048

or.25.then:                                       ; preds = %choice.exit1018
  br label %or.25.exit

or.25.else:                                       ; preds = %choice.exit1018
  %var.load1059 = load i64, ptr %"var.e'", align 8
  %cmptmp1060 = icmp sge i64 %var.load1059, 6
  br label %or.25.exit

or.25.exit:                                       ; preds = %or.25.else, %or.25.then
  %or.25.phi = phi i1 [ %cmptmp1058, %or.25.then ], [ %cmptmp1060, %or.25.else ]
  br i1 %or.25.phi, label %choice.then1061, label %choice.else1062

choice.then1061:                                  ; preds = %or.25.exit
  %var.load1064 = load ptr, ptr %var.mant, align 8
  %concat.lhs1065 = getelementptr inbounds { i64, ptr }, ptr %var.load1064, i32 0, i32 0
  %concat.lhs1066 = load i64, ptr %concat.lhs1065, align 8
  %concat.lhs1067 = and i64 %concat.lhs1066, 281474976710655
  %str.tag1068 = lshr i64 %concat.lhs1066, 48
  %str.immortal1069 = icmp eq i64 %str.tag1068, 0
  br i1 %str.immortal1069, label %str_ok1071, label %str_gen_check1070

choice.else1062:                                  ; preds = %or.25.exit
  %var.load1148 = load ptr, ptr %var.mant, align 8
  br label %choice.exit1063

choice.exit1063:                                  ; preds = %choice.else1062, %concat.tot.len1138
  %choice.res1149 = phi ptr [ %concat.str1145, %concat.tot.len1138 ], [ %var.load1148, %choice.else1062 ]
  ret ptr %choice.res1149

str_gen_check1070:                                ; preds = %choice.then1061
  %arena.cur1073 = call ptr @dva_arena_current()
  %tag.valid1074 = call i1 @dva_arena_validate_tag(ptr %arena.cur1073, i64 %str.tag1068)
  br i1 %tag.valid1074, label %str_ok1071, label %str_stale1072

str_ok1071:                                       ; preds = %str_stale1072, %str_gen_check1070, %choice.then1061
  %concat.lhs1075 = getelementptr inbounds { i64, ptr }, ptr %var.load1064, i32 0, i32 1
  %concat.lhs1076 = load ptr, ptr %concat.lhs1075, align 8
  %concat.rhs1077 = load i64, ptr @str.8.struct, align 8
  %concat.rhs1078 = and i64 %concat.rhs1077, 281474976710655
  %str.tag1079 = lshr i64 %concat.rhs1077, 48
  %str.immortal1080 = icmp eq i64 %str.tag1079, 0
  br i1 %str.immortal1080, label %str_ok1082, label %str_gen_check1081

str_stale1072:                                    ; preds = %str_gen_check1070
  %63 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1071

str_gen_check1081:                                ; preds = %str_ok1071
  %arena.cur1084 = call ptr @dva_arena_current()
  %tag.valid1085 = call i1 @dva_arena_validate_tag(ptr %arena.cur1084, i64 %str.tag1079)
  br i1 %tag.valid1085, label %str_ok1082, label %str_stale1083

str_ok1082:                                       ; preds = %str_stale1083, %str_gen_check1081, %str_ok1071
  %concat.rhs1086 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len1087 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1067, i64 %concat.rhs1078)
  %sum1088 = extractvalue { i64, i1 } %concat.sum.len1087, 0
  %ovf1089 = extractvalue { i64, i1 } %concat.sum.len1087, 1
  br i1 %ovf1089, label %str_overflow_abort1091, label %concat.sum.len1090

str_stale1083:                                    ; preds = %str_gen_check1081
  %64 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1082

concat.sum.len1090:                               ; preds = %str_overflow_abort1091, %str_ok1082
  %concat.tot.len1092 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1088, i64 1)
  %sum1093 = extractvalue { i64, i1 } %concat.tot.len1092, 0
  %ovf1094 = extractvalue { i64, i1 } %concat.tot.len1092, 1
  br i1 %ovf1094, label %str_overflow_abort1096, label %concat.tot.len1095

str_overflow_abort1091:                           ; preds = %str_ok1082
  %65 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1090

concat.tot.len1095:                               ; preds = %str_overflow_abort1096, %concat.sum.len1090
  %arena.cur1097 = call ptr @dva_arena_current()
  %concat.buf1098 = call ptr @dva_arena_alloc(ptr %arena.cur1097, i64 %sum1093)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1098, ptr align 1 %concat.lhs1076, i64 %concat.lhs1067, i1 false)
  %concat.mid1099 = getelementptr i8, ptr %concat.buf1098, i64 %concat.lhs1067
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1099, ptr align 1 %concat.rhs1086, i64 %concat.rhs1078, i1 false)
  %concat.nul1100 = getelementptr i8, ptr %concat.buf1098, i64 %sum1088
  store i8 0, ptr %concat.nul1100, align 1
  %arena.cur1101 = call ptr @dva_arena_current()
  %concat.str1102 = call ptr @dva_arena_alloc(ptr %arena.cur1101, i64 16)
  %str.build.len.gep1103 = getelementptr inbounds { i64, ptr }, ptr %concat.str1102, i32 0, i32 0
  store i64 %sum1088, ptr %str.build.len.gep1103, align 8
  %str.build.data.gep1104 = getelementptr inbounds { i64, ptr }, ptr %concat.str1102, i32 0, i32 1
  store ptr %concat.buf1098, ptr %str.build.data.gep1104, align 8
  %var.load1105 = load ptr, ptr %var.es, align 8
  %concat.lhs1106 = getelementptr inbounds { i64, ptr }, ptr %concat.str1102, i32 0, i32 0
  %concat.lhs1107 = load i64, ptr %concat.lhs1106, align 8
  %concat.lhs1108 = and i64 %concat.lhs1107, 281474976710655
  %str.tag1109 = lshr i64 %concat.lhs1107, 48
  %str.immortal1110 = icmp eq i64 %str.tag1109, 0
  br i1 %str.immortal1110, label %str_ok1112, label %str_gen_check1111

str_overflow_abort1096:                           ; preds = %concat.sum.len1090
  %66 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1095

str_gen_check1111:                                ; preds = %concat.tot.len1095
  %arena.cur1114 = call ptr @dva_arena_current()
  %tag.valid1115 = call i1 @dva_arena_validate_tag(ptr %arena.cur1114, i64 %str.tag1109)
  br i1 %tag.valid1115, label %str_ok1112, label %str_stale1113

str_ok1112:                                       ; preds = %str_stale1113, %str_gen_check1111, %concat.tot.len1095
  %concat.lhs1116 = getelementptr inbounds { i64, ptr }, ptr %concat.str1102, i32 0, i32 1
  %concat.lhs1117 = load ptr, ptr %concat.lhs1116, align 8
  %concat.rhs1118 = getelementptr inbounds { i64, ptr }, ptr %var.load1105, i32 0, i32 0
  %concat.rhs1119 = load i64, ptr %concat.rhs1118, align 8
  %concat.rhs1120 = and i64 %concat.rhs1119, 281474976710655
  %str.tag1121 = lshr i64 %concat.rhs1119, 48
  %str.immortal1122 = icmp eq i64 %str.tag1121, 0
  br i1 %str.immortal1122, label %str_ok1124, label %str_gen_check1123

str_stale1113:                                    ; preds = %str_gen_check1111
  %67 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1112

str_gen_check1123:                                ; preds = %str_ok1112
  %arena.cur1126 = call ptr @dva_arena_current()
  %tag.valid1127 = call i1 @dva_arena_validate_tag(ptr %arena.cur1126, i64 %str.tag1121)
  br i1 %tag.valid1127, label %str_ok1124, label %str_stale1125

str_ok1124:                                       ; preds = %str_stale1125, %str_gen_check1123, %str_ok1112
  %concat.rhs1128 = getelementptr inbounds { i64, ptr }, ptr %var.load1105, i32 0, i32 1
  %concat.rhs1129 = load ptr, ptr %concat.rhs1128, align 8
  %concat.sum.len1130 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1108, i64 %concat.rhs1120)
  %sum1131 = extractvalue { i64, i1 } %concat.sum.len1130, 0
  %ovf1132 = extractvalue { i64, i1 } %concat.sum.len1130, 1
  br i1 %ovf1132, label %str_overflow_abort1134, label %concat.sum.len1133

str_stale1125:                                    ; preds = %str_gen_check1123
  %68 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1124

concat.sum.len1133:                               ; preds = %str_overflow_abort1134, %str_ok1124
  %concat.tot.len1135 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1131, i64 1)
  %sum1136 = extractvalue { i64, i1 } %concat.tot.len1135, 0
  %ovf1137 = extractvalue { i64, i1 } %concat.tot.len1135, 1
  br i1 %ovf1137, label %str_overflow_abort1139, label %concat.tot.len1138

str_overflow_abort1134:                           ; preds = %str_ok1124
  %69 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1133

concat.tot.len1138:                               ; preds = %str_overflow_abort1139, %concat.sum.len1133
  %arena.cur1140 = call ptr @dva_arena_current()
  %concat.buf1141 = call ptr @dva_arena_alloc(ptr %arena.cur1140, i64 %sum1136)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1141, ptr align 1 %concat.lhs1117, i64 %concat.lhs1108, i1 false)
  %concat.mid1142 = getelementptr i8, ptr %concat.buf1141, i64 %concat.lhs1108
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1142, ptr align 1 %concat.rhs1129, i64 %concat.rhs1120, i1 false)
  %concat.nul1143 = getelementptr i8, ptr %concat.buf1141, i64 %sum1131
  store i8 0, ptr %concat.nul1143, align 1
  %arena.cur1144 = call ptr @dva_arena_current()
  %concat.str1145 = call ptr @dva_arena_alloc(ptr %arena.cur1144, i64 16)
  %str.build.len.gep1146 = getelementptr inbounds { i64, ptr }, ptr %concat.str1145, i32 0, i32 0
  store i64 %sum1131, ptr %str.build.len.gep1146, align 8
  %str.build.data.gep1147 = getelementptr inbounds { i64, ptr }, ptr %concat.str1145, i32 0, i32 1
  store ptr %concat.buf1141, ptr %str.build.data.gep1147, align 8
  br label %choice.exit1063

str_overflow_abort1139:                           ; preds = %concat.sum.len1133
  %70 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1138
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
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

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
  %var._5 = alloca ptr, align 8
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
  %call.res = call ptr @"ascii::hex_value"(i64 %var.load4)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.eq.one = icmp eq i64 %tag.id, 1
  %tag.eq.two = icmp eq i64 %tag.id, 2
  %is.pos = or i1 %tag.eq.one, %tag.eq.two
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %call.res, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  br i1 %is.pos, label %choice.then, label %choice.else

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
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.else:                                      ; preds = %loop.body.28
  br label %loop.exit.28

choice.exit:                                      ; preds = %pay.int.merge
  br label %loop.latch.28

pay.int.load:                                     ; preds = %choice.then
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.then
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %pay.int.nullbb ]
  store i64 %pay.int.phi, ptr %var._5, align 8
  store i64 %pay.int.phi, ptr %var.d, align 8
  %var.load6 = load i64, ptr %"var.val'", align 8
  %multmp = mul i64 %var.load6, 16
  %var.load7 = load i64, ptr %var.d, align 8
  %addtmp = add i64 %multmp, %var.load7
  store i64 %addtmp, ptr %"var.val'", align 8
  br label %choice.exit

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
  %tag = load i64, ptr null, align 8
  %is_pos = icmp ne i64 %tag, 0
  %pay.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr null, i32 0, i32 1), align 8
  %ret.niche = select i1 %is_pos, ptr %pay.ptr, ptr null
  ret ptr %ret.niche

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

declare ptr @"ascii::hex_value"(i64) #1

define ptr @"str::hex_to_str"(i64 %0) #1 {
entry:
  %var._121 = alloca i64, align 8
  %var._i120 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.32 = alloca i64, align 8
  %loop.idx.32 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  %var.ch = alloca i64, align 8
  %var.digit = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
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
  store i64 %var.load3, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len1

loop.header.29:                                   ; preds = %loop.latch.29, %b.buf.len1
  %counter.load = load i64, ptr %loop.idx.29, align 8
  %loop.cond = icmp slt i64 %counter.load, 32
  br i1 %loop.cond, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load4 = load i64, ptr %"var.n'", align 8
  %cmptmp = icmp sgt i64 %var.load4, 0
  br i1 %cmptmp, label %choice.case6, label %choice.next7

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit5
  %step.val = load i64, ptr %loop.step.29, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %choice.next7, %loop.exit.nat.29
  %b.load30 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 0
  %b.rn.cur.len31 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len31, i64 1)
  %sum32 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf33 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %b.rn.new.len34

choice.exit5:                                     ; preds = %div.ok28
  br label %loop.latch.29

choice.case6:                                     ; preds = %loop.body.29
  %var.load8 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next7:                                     ; preds = %loop.body.29
  br label %loop.exit.29

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
  %call.res = call i64 @"ascii::hex_char_upper"(i64 %var.load9)
  store i64 %call.res, ptr %var.ch, align 8
  %var.load10 = load i64, ptr %var.ch, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %var.load11 = load i64, ptr %var.ch, align 8
  %b.b.ge0 = icmp sge i64 %var.load11, 0
  %b.b.le255 = icmp sle i64 %var.load11, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

b.byte_ok:                                        ; preds = %b.byte_err, %div.ok
  %b.byte.i8 = trunc i64 %var.load11 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len12 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap13 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data14 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len12, %b.cap13
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.ok
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap13, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum15 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf16 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %b.new.buf.len17

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len17
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data20 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len21 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data20, i64 %b.cur.len21
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len21, 1
  %b.nul = getelementptr i8, ptr %b.cur.data20, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep22, align 8
  %var.load23 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort25, label %div.not_zero24

b.new.buf.len17:                                  ; preds = %str_overflow_abort18, %b.grow
  %arena.cur19 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data14, i64 %b.len12, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len12
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort18:                             ; preds = %b.grow
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len17

div.not_zero24:                                   ; preds = %div.zero_abort25, %b.push_done
  %div.is.min26 = icmp eq i64 %var.load23, -9223372036854775808
  %div.is.ovf27 = and i1 %div.is.min26, false
  br i1 %div.is.ovf27, label %div.ovf_abort29, label %div.ok28

div.zero_abort25:                                 ; preds = %b.push_done
  %6 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero24

div.ok28:                                         ; preds = %div.ovf_abort29, %div.not_zero24
  %divtmp = sdiv i64 %var.load23, 16
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit5

div.ovf_abort29:                                  ; preds = %div.not_zero24
  %7 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok28

b.rn.new.len34:                                   ; preds = %str_overflow_abort35, %loop.exit.29
  %b.cap36 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 2
  %b.cap37 = load i64, ptr %b.cap36, align 8
  %b.need.grow = icmp slt i64 %b.cap37, %sum32
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort35:                             ; preds = %loop.exit.29
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len34

b.grow2:                                          ; preds = %b.rn.new.len34
  %b.cap238 = mul i64 %b.cap37, 2
  %b.cap.small39 = icmp slt i64 %b.cap238, 16
  %b.cap.grow = select i1 %b.cap.small39, i64 16, i64 %b.cap238
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum32
  %b.new.cap40 = select i1 %b.cap.need, i64 %sum32, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 0
  %b.cur.len241 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 1
  %b.cur.data242 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap40, i64 1)
  %sum43 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf44 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf44, label %str_overflow_abort46, label %b.new.buf.len245

b.nogrow2:                                        ; preds = %b.rn.new.len34
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len245
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 1
  %b.rn.data48 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data48, i64 %b.rn.cur.len31
  br i1 true, label %br.b1.30, label %br.c2.30

b.new.buf.len245:                                 ; preds = %str_overflow_abort46, %b.grow2
  %arena.cur47 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 %sum43)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data242, i64 %b.cur.len241, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len241
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 2
  store i64 %b.new.cap40, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort46:                             ; preds = %b.grow2
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len245

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
  %br.nul = getelementptr i8, ptr %b.rn.data48, i64 %sum32
  store i8 0, ptr %br.nul, align 1
  %b.len.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load30, i32 0, i32 0
  store i64 %sum32, ptr %b.len.gep49, align 8
  %b.load50 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len51 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  %b.rn.cur.len52 = load i64, ptr %b.rn.cur.len51, align 8
  %b.rn.new.len53 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len52, i64 1)
  %sum54 = extractvalue { i64, i1 } %b.rn.new.len53, 0
  %ovf55 = extractvalue { i64, i1 } %b.rn.new.len53, 1
  br i1 %ovf55, label %str_overflow_abort57, label %b.rn.new.len56

b.rn.new.len56:                                   ; preds = %str_overflow_abort57, %br.done.30
  %b.cap58 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 2
  %b.cap59 = load i64, ptr %b.cap58, align 8
  %b.need.grow60 = icmp slt i64 %b.cap59, %sum54
  br i1 %b.need.grow60, label %b.grow261, label %b.nogrow262

str_overflow_abort57:                             ; preds = %br.done.30
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len56

b.grow261:                                        ; preds = %b.rn.new.len56
  %b.cap264 = mul i64 %b.cap59, 2
  %b.cap.small65 = icmp slt i64 %b.cap264, 16
  %b.cap.grow66 = select i1 %b.cap.small65, i64 16, i64 %b.cap264
  %b.cap.need67 = icmp slt i64 %b.cap.grow66, %sum54
  %b.new.cap68 = select i1 %b.cap.need67, i64 %sum54, i64 %b.cap.grow66
  %b.cur.len269 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  %b.cur.len270 = load i64, ptr %b.cur.len269, align 8
  %b.cur.data271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  %b.cur.data272 = load ptr, ptr %b.cur.data271, align 8
  %b.new.buf.len273 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap68, i64 1)
  %sum74 = extractvalue { i64, i1 } %b.new.buf.len273, 0
  %ovf75 = extractvalue { i64, i1 } %b.new.buf.len273, 1
  br i1 %ovf75, label %str_overflow_abort77, label %b.new.buf.len276

b.nogrow262:                                      ; preds = %b.rn.new.len56
  br label %b.grow_done63

b.grow_done63:                                    ; preds = %b.nogrow262, %b.new.buf.len276
  %b.rn.data83 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  %b.rn.data84 = load ptr, ptr %b.rn.data83, align 8
  %b.rn.dst85 = getelementptr i8, ptr %b.rn.data84, i64 %b.rn.cur.len52
  br i1 true, label %br.b1.31, label %br.c2.31

b.new.buf.len276:                                 ; preds = %str_overflow_abort77, %b.grow261
  %arena.cur78 = call ptr @dva_arena_current()
  %b.new.buf279 = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %sum74)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf279, ptr align 1 %b.cur.data272, i64 %b.cur.len270, i1 false)
  %b.grow2.nul80 = getelementptr i8, ptr %b.new.buf279, i64 %b.cur.len270
  store i8 0, ptr %b.grow2.nul80, align 1
  %b.new.data2.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 1
  store ptr %b.new.buf279, ptr %b.new.data2.gep81, align 8
  %b.new.cap2.gep82 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 2
  store i64 %b.new.cap68, ptr %b.new.cap2.gep82, align 8
  br label %b.grow_done63

str_overflow_abort77:                             ; preds = %b.grow261
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len276

br.b1.31:                                         ; preds = %b.grow_done63
  store i8 48, ptr %b.rn.dst85, align 1
  br label %br.done.31

br.c2.31:                                         ; preds = %b.grow_done63
  br i1 true, label %br.b2.31, label %br.c3.31

br.b2.31:                                         ; preds = %br.c2.31
  store i8 -64, ptr %b.rn.dst85, align 1
  %br.dst186 = getelementptr i8, ptr %b.rn.dst85, i64 1
  store i8 -80, ptr %br.dst186, align 1
  br label %br.done.31

br.c3.31:                                         ; preds = %br.c2.31
  br i1 true, label %br.b3.31, label %br.b4.31

br.b3.31:                                         ; preds = %br.c3.31
  store i8 -32, ptr %b.rn.dst85, align 1
  %br.dst1.387 = getelementptr i8, ptr %b.rn.dst85, i64 1
  store i8 -128, ptr %br.dst1.387, align 1
  %br.dst2.388 = getelementptr i8, ptr %b.rn.dst85, i64 2
  store i8 -80, ptr %br.dst2.388, align 1
  br label %br.done.31

br.b4.31:                                         ; preds = %br.c3.31
  store i8 -16, ptr %b.rn.dst85, align 1
  %br.dst1.489 = getelementptr i8, ptr %b.rn.dst85, i64 1
  store i8 -128, ptr %br.dst1.489, align 1
  %br.dst2.490 = getelementptr i8, ptr %b.rn.dst85, i64 2
  store i8 -128, ptr %br.dst2.490, align 1
  %br.dst3.491 = getelementptr i8, ptr %b.rn.dst85, i64 3
  store i8 -80, ptr %br.dst3.491, align 1
  br label %br.done.31

br.done.31:                                       ; preds = %br.b4.31, %br.b3.31, %br.b2.31, %br.b1.31
  %br.nul92 = getelementptr i8, ptr %b.rn.data84, i64 %sum54
  store i8 0, ptr %br.nul92, align 1
  %b.len.gep93 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load50, i32 0, i32 0
  store i64 %sum54, ptr %b.len.gep93, align 8
  %var.load94 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 0
  %b.freeze.len95 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 1
  %b.freeze.data96 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %br.done.31
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data96, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data96, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data96, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur97 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 %b.freeze.len95)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data96, i64 %b.freeze.len95, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %br.done.31
  %b.freeze.data98 = phi ptr [ %b.freeze.data96, %br.done.31 ], [ %b.freeze.data96, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur99 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur99, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len95, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data98, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur100 = call ptr @dva_arena_current()
  %builder.new101 = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 24)
  %b.data.gep102 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new101, i32 0, i32 1
  %b.len.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new101, i32 0, i32 0
  %b.cap.gep104 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new101, i32 0, i32 2
  %b.buf.len105 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum106 = extractvalue { i64, i1 } %b.buf.len105, 0
  %ovf107 = extractvalue { i64, i1 } %b.buf.len105, 1
  br i1 %ovf107, label %str_overflow_abort109, label %b.buf.len108

b.buf.len108:                                     ; preds = %str_overflow_abort109, %b.freeze.done
  %arena.cur110 = call ptr @dva_arena_current()
  %b.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %sum106)
  %b.nul0112 = getelementptr i8, ptr %b.buf111, i64 0
  store i8 0, ptr %b.nul0112, align 1
  store i64 0, ptr %b.len.gep103, align 8
  store ptr %b.buf111, ptr %b.data.gep102, align 8
  store i64 32, ptr %b.cap.gep104, align 8
  store ptr %builder.new101, ptr %var.out, align 8
  %var.load113 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load113, i32 0, i32 0
  %str.len.query114 = load i64, ptr %str.len.query, align 8
  %str.len.query115 = and i64 %str.len.query114, 281474976710655
  %str.tag = lshr i64 %str.len.query114, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort109:                            ; preds = %b.freeze.done
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len108

str_gen_check:                                    ; preds = %b.buf.len108
  %arena.cur116 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur116, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len108
  store i64 0, ptr %loop.idx.32, align 8
  br label %loop.header.32

str_stale:                                        ; preds = %str_gen_check
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.32:                                   ; preds = %loop.latch.32, %str_ok
  %counter.load117 = load i64, ptr %loop.idx.32, align 8
  %loop.cond118 = icmp slt i64 %counter.load117, %str.len.query115
  br i1 %loop.cond118, label %loop.body.32, label %loop.exit.nat.32

loop.body.32:                                     ; preds = %loop.header.32
  %loop.rel.i119 = sub i64 %counter.load117, 0
  store i64 1, ptr %loop.step.32, align 8
  store i64 %loop.rel.i119, ptr %var._i120, align 8
  store i64 %counter.load117, ptr %var._121, align 8
  store i64 %counter.load117, ptr %var.i, align 8
  %var.load122 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 0
  %s.read.len123 = load i64, ptr %s.read.len, align 8
  %s.read.len124 = and i64 %s.read.len123, 281474976710655
  %str.tag125 = lshr i64 %s.read.len123, 48
  %str.immortal126 = icmp eq i64 %str.tag125, 0
  br i1 %str.immortal126, label %str_ok128, label %str_gen_check127

loop.exit.nat.32:                                 ; preds = %loop.header.32
  br label %loop.exit.32

loop.latch.32:                                    ; preds = %b.push_done197
  %step.val219 = load i64, ptr %loop.step.32, align 8
  %loop.next220 = add i64 %counter.load117, %step.val219
  store i64 %loop.next220, ptr %loop.idx.32, align 8
  br label %loop.header.32

loop.exit.32:                                     ; preds = %loop.exit.nat.32
  %var.load221 = load ptr, ptr %var.out, align 8
  %b.freeze.len222 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load221, i32 0, i32 0
  %b.freeze.len223 = load i64, ptr %b.freeze.len222, align 8
  %b.freeze.data224 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load221, i32 0, i32 1
  %b.freeze.data225 = load ptr, ptr %b.freeze.data224, align 8
  %b.freeze.arena226 = call ptr @dva_arena_current()
  %b.freeze.nc.gep227 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena226, i32 0, i32 1
  %b.freeze.nc228 = load i64, ptr %b.freeze.nc.gep227, align 8
  %b.freeze.has.chunk229 = icmp sgt i64 %b.freeze.nc228, 0
  br i1 %b.freeze.has.chunk229, label %b.freeze.check230, label %b.freeze.done232

str_gen_check127:                                 ; preds = %loop.body.32
  %arena.cur130 = call ptr @dva_arena_current()
  %tag.valid131 = call i1 @dva_arena_validate_tag(ptr %arena.cur130, i64 %str.tag125)
  br i1 %tag.valid131, label %str_ok128, label %str_stale129

str_ok128:                                        ; preds = %str_stale129, %str_gen_check127, %loop.body.32
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load122, i32 0, i32 1
  %s.read.data132 = load ptr, ptr %s.read.data, align 8
  %var.load133 = load ptr, ptr %var.s, align 8
  %str.len.query134 = getelementptr inbounds { i64, ptr }, ptr %var.load133, i32 0, i32 0
  %str.len.query135 = load i64, ptr %str.len.query134, align 8
  %str.len.query136 = and i64 %str.len.query135, 281474976710655
  %str.tag137 = lshr i64 %str.len.query135, 48
  %str.immortal138 = icmp eq i64 %str.tag137, 0
  br i1 %str.immortal138, label %str_ok140, label %str_gen_check139

str_stale129:                                     ; preds = %str_gen_check127
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok128

str_gen_check139:                                 ; preds = %str_ok128
  %arena.cur142 = call ptr @dva_arena_current()
  %tag.valid143 = call i1 @dva_arena_validate_tag(ptr %arena.cur142, i64 %str.tag137)
  br i1 %tag.valid143, label %str_ok140, label %str_stale141

str_ok140:                                        ; preds = %str_stale141, %str_gen_check139, %str_ok128
  %subtmp = sub i64 %str.len.query136, 1
  %var.load144 = load i64, ptr %var.i, align 8
  %subtmp145 = sub i64 %subtmp, %var.load144
  %idx.neg = icmp slt i64 %subtmp145, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale141:                                     ; preds = %str_gen_check139
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok140

idx_big_check:                                    ; preds = %str_ok140
  %idx.big = icmp sge i64 %subtmp145, %s.read.len124
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data132, i64 %subtmp145
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load146 = load ptr, ptr %var.out, align 8
  %var.load147 = load ptr, ptr %var.s, align 8
  %s.read.len148 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 0
  %s.read.len149 = load i64, ptr %s.read.len148, align 8
  %s.read.len150 = and i64 %s.read.len149, 281474976710655
  %str.tag151 = lshr i64 %s.read.len149, 48
  %str.immortal152 = icmp eq i64 %str.tag151, 0
  br i1 %str.immortal152, label %str_ok154, label %str_gen_check153

idx_oob:                                          ; preds = %idx_big_check, %str_ok140
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check153:                                 ; preds = %idx_ok
  %arena.cur156 = call ptr @dva_arena_current()
  %tag.valid157 = call i1 @dva_arena_validate_tag(ptr %arena.cur156, i64 %str.tag151)
  br i1 %tag.valid157, label %str_ok154, label %str_stale155

str_ok154:                                        ; preds = %str_stale155, %str_gen_check153, %idx_ok
  %s.read.data158 = getelementptr inbounds { i64, ptr }, ptr %var.load147, i32 0, i32 1
  %s.read.data159 = load ptr, ptr %s.read.data158, align 8
  %var.load160 = load ptr, ptr %var.s, align 8
  %str.len.query161 = getelementptr inbounds { i64, ptr }, ptr %var.load160, i32 0, i32 0
  %str.len.query162 = load i64, ptr %str.len.query161, align 8
  %str.len.query163 = and i64 %str.len.query162, 281474976710655
  %str.tag164 = lshr i64 %str.len.query162, 48
  %str.immortal165 = icmp eq i64 %str.tag164, 0
  br i1 %str.immortal165, label %str_ok167, label %str_gen_check166

str_stale155:                                     ; preds = %str_gen_check153
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok154

str_gen_check166:                                 ; preds = %str_ok154
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %str.tag164)
  br i1 %tag.valid170, label %str_ok167, label %str_stale168

str_ok167:                                        ; preds = %str_stale168, %str_gen_check166, %str_ok154
  %subtmp171 = sub i64 %str.len.query163, 1
  %var.load172 = load i64, ptr %var.i, align 8
  %subtmp173 = sub i64 %subtmp171, %var.load172
  %idx.neg174 = icmp slt i64 %subtmp173, 0
  br i1 %idx.neg174, label %idx_oob177, label %idx_big_check175

str_stale168:                                     ; preds = %str_gen_check166
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok167

idx_big_check175:                                 ; preds = %str_ok167
  %idx.big178 = icmp sge i64 %subtmp173, %s.read.len150
  br i1 %idx.big178, label %idx_oob177, label %idx_ok176

idx_ok176:                                        ; preds = %idx_oob177, %idx_big_check175
  %s.byte.gep179 = getelementptr i8, ptr %s.read.data159, i64 %subtmp173
  %s.byte180 = load i8, ptr %s.byte.gep179, align 1
  %s.byte.val181 = zext i8 %s.byte180 to i64
  %b.b.ge0182 = icmp sge i64 %s.byte.val181, 0
  %b.b.le255183 = icmp sle i64 %s.byte.val181, 255
  %b.byte.range184 = and i1 %b.b.ge0182, %b.b.le255183
  br i1 %b.byte.range184, label %b.byte_ok185, label %b.byte_err186

idx_oob177:                                       ; preds = %idx_big_check175, %str_ok167
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok176

b.byte_ok185:                                     ; preds = %b.byte_err186, %idx_ok176
  %b.byte.i8187 = trunc i64 %s.byte.val181 to i8
  %b.len188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 0
  %b.len189 = load i64, ptr %b.len188, align 8
  %b.cap190 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 2
  %b.cap191 = load i64, ptr %b.cap190, align 8
  %b.data192 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 1
  %b.data193 = load ptr, ptr %b.data192, align 8
  %b.needs.grow194 = icmp eq i64 %b.len189, %b.cap191
  br i1 %b.needs.grow194, label %b.grow195, label %b.nogrow196

b.byte_err186:                                    ; preds = %idx_ok176
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok185

b.grow195:                                        ; preds = %b.byte_ok185
  %b.cap2198 = mul i64 %b.cap191, 2
  %b.cap.small199 = icmp slt i64 %b.cap2198, 16
  %b.new.cap200 = select i1 %b.cap.small199, i64 16, i64 %b.cap2198
  %b.new.buf.len201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap200, i64 1)
  %sum202 = extractvalue { i64, i1 } %b.new.buf.len201, 0
  %ovf203 = extractvalue { i64, i1 } %b.new.buf.len201, 1
  br i1 %ovf203, label %str_overflow_abort205, label %b.new.buf.len204

b.nogrow196:                                      ; preds = %b.byte_ok185
  br label %b.push_done197

b.push_done197:                                   ; preds = %b.nogrow196, %b.new.buf.len204
  %b.cur.data211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 1
  %b.cur.data212 = load ptr, ptr %b.cur.data211, align 8
  %b.cur.len213 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 0
  %b.cur.len214 = load i64, ptr %b.cur.len213, align 8
  %b.byte.gep215 = getelementptr i8, ptr %b.cur.data212, i64 %b.cur.len214
  store i8 %b.byte.i8187, ptr %b.byte.gep215, align 1
  %b.next.len216 = add i64 %b.cur.len214, 1
  %b.nul217 = getelementptr i8, ptr %b.cur.data212, i64 %b.next.len216
  store i8 0, ptr %b.nul217, align 1
  %b.len.gep218 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 0
  store i64 %b.next.len216, ptr %b.len.gep218, align 8
  br label %loop.latch.32

b.new.buf.len204:                                 ; preds = %str_overflow_abort205, %b.grow195
  %arena.cur206 = call ptr @dva_arena_current()
  %b.new.buf207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 %sum202)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf207, ptr align 1 %b.data193, i64 %b.len189, i1 false)
  %b.grow.nul208 = getelementptr i8, ptr %b.new.buf207, i64 %b.len189
  store i8 0, ptr %b.grow.nul208, align 1
  %b.new.data.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 1
  store ptr %b.new.buf207, ptr %b.new.data.gep209, align 8
  %b.new.cap.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load146, i32 0, i32 2
  store i64 %b.new.cap200, ptr %b.new.cap.gep210, align 8
  br label %b.push_done197

str_overflow_abort205:                            ; preds = %b.grow195
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len204

b.freeze.check230:                                ; preds = %loop.exit.32
  %b.freeze.last.idx233 = sub i64 %b.freeze.nc228, 1
  %b.freeze.chunks.gep234 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena226, i32 0, i32 3
  %b.freeze.chunk.slot235 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep234, i64 0, i64 %b.freeze.last.idx233
  %b.freeze.last.chunk236 = load ptr, ptr %b.freeze.chunk.slot235, align 8
  %b.freeze.off.gep237 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena226, i32 0, i32 2
  %b.freeze.off238 = load i64, ptr %b.freeze.off.gep237, align 8
  %b.freeze.bump239 = getelementptr i8, ptr %b.freeze.last.chunk236, i64 %b.freeze.off238
  %b.freeze.cap.gep240 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena226, i32 0, i32 0
  %b.freeze.cap241 = load i64, ptr %b.freeze.cap.gep240, align 8
  %b.freeze.chunk.end242 = getelementptr i8, ptr %b.freeze.last.chunk236, i64 %b.freeze.cap241
  %b.freeze.ge.chunk243 = icmp uge ptr %b.freeze.data225, %b.freeze.last.chunk236
  %b.freeze.lt.end244 = icmp ult ptr %b.freeze.data225, %b.freeze.chunk.end242
  %b.freeze.in.chunk245 = and i1 %b.freeze.ge.chunk243, %b.freeze.lt.end244
  %b.freeze.ge.bump246 = icmp uge ptr %b.freeze.data225, %b.freeze.bump239
  %b.freeze.reaped247 = and i1 %b.freeze.in.chunk245, %b.freeze.ge.bump246
  br i1 %b.freeze.reaped247, label %b.freeze.copy231, label %b.freeze.done232

b.freeze.copy231:                                 ; preds = %b.freeze.check230
  %arena.cur248 = call ptr @dva_arena_current()
  %b.freeze.fresh249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 %b.freeze.len223)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh249, ptr align 1 %b.freeze.data225, i64 %b.freeze.len223, i1 false)
  br label %b.freeze.done232

b.freeze.done232:                                 ; preds = %b.freeze.copy231, %b.freeze.check230, %loop.exit.32
  %b.freeze.data250 = phi ptr [ %b.freeze.data225, %loop.exit.32 ], [ %b.freeze.data225, %b.freeze.check230 ], [ %b.freeze.fresh249, %b.freeze.copy231 ]
  %arena.cur251 = call ptr @dva_arena_current()
  %builder.freeze252 = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 16)
  %str.build.len.gep253 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze252, i32 0, i32 0
  store i64 %b.freeze.len223, ptr %str.build.len.gep253, align 8
  %str.build.data.gep254 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze252, i32 0, i32 1
  store ptr %b.freeze.data250, ptr %str.build.data.gep254, align 8
  %b.freeze.rst.len255 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load221, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len255, align 8
  %b.freeze.rst.data256 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load221, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data256, align 8
  %b.freeze.rst.cap257 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load221, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap257, align 8
  ret ptr %builder.freeze252
}

declare i64 @"ascii::hex_char_upper"(i64) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
