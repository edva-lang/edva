; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin24.6.0"

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
  %var._98 = alloca i64, align 8
  %var._i97 = alloca i64, align 8
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
  %var.load47 = load i64, ptr %var.v, align 8
  %cmptmp48 = icmp slt i64 %var.load47, 0
  br i1 %cmptmp48, label %choice.then49, label %choice.exit50

choice.exit14:                                    ; preds = %div.ok45
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
  %coerce.trunc = trunc i64 %modtmp to i32
  %addtmp = add i32 48, %coerce.trunc
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
  %coerce.trunc27 = trunc i64 %modtmp26 to i32
  %addtmp28 = add i32 48, %coerce.trunc27
  %b.byte.zext = zext i32 %addtmp28 to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.ovf_abort25:                                  ; preds = %div.not_zero20
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok24

b.byte_ok:                                        ; preds = %b.byte_err, %div.ok24
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len29 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap30 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data31 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len29, %b.cap30
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.ok24
  %6 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap30, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum32 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf33 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf33, label %str_overflow_abort35, label %b.new.buf.len34

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len34
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data37 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len38 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data37, i64 %b.cur.len38
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len38, 1
  %b.nul = getelementptr i8, ptr %b.cur.data37, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep39, align 8
  %var.load40 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort42, label %div.not_zero41

b.new.buf.len34:                                  ; preds = %str_overflow_abort35, %b.grow
  %arena.cur36 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 %sum32)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data31, i64 %b.len29, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len29
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort35:                             ; preds = %b.grow
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len34

div.not_zero41:                                   ; preds = %div.zero_abort42, %b.push_done
  %div.is.min43 = icmp eq i64 %var.load40, -9223372036854775808
  %div.is.ovf44 = and i1 %div.is.min43, false
  br i1 %div.is.ovf44, label %div.ovf_abort46, label %div.ok45

div.zero_abort42:                                 ; preds = %b.push_done
  %8 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero41

div.ok45:                                         ; preds = %div.ovf_abort46, %div.not_zero41
  %divtmp = sdiv i64 %var.load40, 10
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit14

div.ovf_abort46:                                  ; preds = %div.not_zero41
  %9 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok45

choice.then49:                                    ; preds = %loop.exit.3
  %b.load51 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.rn.cur.len52 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len52, i64 1)
  %sum53 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf54 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf54, label %str_overflow_abort56, label %b.rn.new.len55

choice.exit50:                                    ; preds = %br.done.4, %loop.exit.3
  %var.load71 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 0
  %b.freeze.len72 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 1
  %b.freeze.data73 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.rn.new.len55:                                   ; preds = %str_overflow_abort56, %choice.then49
  %b.cap57 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  %b.cap58 = load i64, ptr %b.cap57, align 8
  %b.need.grow = icmp slt i64 %b.cap58, %sum53
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort56:                             ; preds = %choice.then49
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len55

b.grow2:                                          ; preds = %b.rn.new.len55
  %b.cap259 = mul i64 %b.cap58, 2
  %b.cap.small60 = icmp slt i64 %b.cap259, 16
  %b.cap.grow = select i1 %b.cap.small60, i64 16, i64 %b.cap259
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum53
  %b.new.cap61 = select i1 %b.cap.need, i64 %sum53, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  %b.cur.len262 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.cur.data263 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap61, i64 1)
  %sum64 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf65 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf65, label %str_overflow_abort67, label %b.new.buf.len266

b.nogrow2:                                        ; preds = %b.rn.new.len55
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len266
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  %b.rn.data69 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data69, i64 %b.rn.cur.len52
  br i1 true, label %br.b1.4, label %br.c2.4

b.new.buf.len266:                                 ; preds = %str_overflow_abort67, %b.grow2
  %arena.cur68 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 %sum64)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data263, i64 %b.cur.len262, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len262
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 2
  store i64 %b.new.cap61, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort67:                             ; preds = %b.grow2
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len266

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
  %br.nul = getelementptr i8, ptr %b.rn.data69, i64 %sum53
  store i8 0, ptr %br.nul, align 1
  %b.len.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load51, i32 0, i32 0
  store i64 %sum53, ptr %b.len.gep70, align 8
  br label %choice.exit50

b.freeze.check:                                   ; preds = %choice.exit50
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data73, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data73, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data73, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur74 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur74, i64 %b.freeze.len72)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data73, i64 %b.freeze.len72, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit50
  %b.freeze.data75 = phi ptr [ %b.freeze.data73, %choice.exit50 ], [ %b.freeze.data73, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur76 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len72, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data75, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load71, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur77 = call ptr @dva_arena_current()
  %builder.new78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 24)
  %b.data.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new78, i32 0, i32 1
  %b.len.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new78, i32 0, i32 0
  %b.cap.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new78, i32 0, i32 2
  %b.buf.len82 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum83 = extractvalue { i64, i1 } %b.buf.len82, 0
  %ovf84 = extractvalue { i64, i1 } %b.buf.len82, 1
  br i1 %ovf84, label %str_overflow_abort86, label %b.buf.len85

b.buf.len85:                                      ; preds = %str_overflow_abort86, %b.freeze.done
  %arena.cur87 = call ptr @dva_arena_current()
  %b.buf88 = call ptr @dva_arena_alloc(ptr %arena.cur87, i64 %sum83)
  %b.nul089 = getelementptr i8, ptr %b.buf88, i64 0
  store i8 0, ptr %b.nul089, align 1
  store i64 0, ptr %b.len.gep80, align 8
  store ptr %b.buf88, ptr %b.data.gep79, align 8
  store i64 32, ptr %b.cap.gep81, align 8
  store ptr %builder.new78, ptr %var.out, align 8
  %var.load90 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load90, i32 0, i32 0
  %str.len.query91 = load i64, ptr %str.len.query, align 8
  %str.len.query92 = and i64 %str.len.query91, 281474976710655
  %str.tag = lshr i64 %str.len.query91, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort86:                             ; preds = %b.freeze.done
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len85

str_gen_check:                                    ; preds = %b.buf.len85
  %arena.cur93 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur93, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len85
  store i64 0, ptr %loop.idx.5, align 8
  br label %loop.header.5

str_stale:                                        ; preds = %str_gen_check
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.5:                                    ; preds = %loop.latch.5, %str_ok
  %counter.load94 = load i64, ptr %loop.idx.5, align 8
  %loop.cond95 = icmp slt i64 %counter.load94, %str.len.query92
  br i1 %loop.cond95, label %loop.body.5, label %loop.exit.nat.5

loop.body.5:                                      ; preds = %loop.header.5
  %loop.rel.i96 = sub i64 %counter.load94, 0
  store i64 1, ptr %loop.step.5, align 8
  store i64 %loop.rel.i96, ptr %var._i97, align 8
  store i64 %counter.load94, ptr %var._98, align 8
  store i64 %counter.load94, ptr %var.i, align 8
  %var.load99 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load99, i32 0, i32 0
  %s.read.len100 = load i64, ptr %s.read.len, align 8
  %s.read.len101 = and i64 %s.read.len100, 281474976710655
  %str.tag102 = lshr i64 %s.read.len100, 48
  %str.immortal103 = icmp eq i64 %str.tag102, 0
  br i1 %str.immortal103, label %str_ok105, label %str_gen_check104

loop.exit.nat.5:                                  ; preds = %loop.header.5
  br label %loop.exit.5

loop.latch.5:                                     ; preds = %b.push_done175
  %step.val197 = load i64, ptr %loop.step.5, align 8
  %loop.next198 = add i64 %counter.load94, %step.val197
  store i64 %loop.next198, ptr %loop.idx.5, align 8
  br label %loop.header.5

loop.exit.5:                                      ; preds = %loop.exit.nat.5
  %var.load199 = load ptr, ptr %var.out, align 8
  %b.freeze.len200 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load199, i32 0, i32 0
  %b.freeze.len201 = load i64, ptr %b.freeze.len200, align 8
  %b.freeze.data202 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load199, i32 0, i32 1
  %b.freeze.data203 = load ptr, ptr %b.freeze.data202, align 8
  %b.freeze.arena204 = call ptr @dva_arena_current()
  %b.freeze.nc.gep205 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena204, i32 0, i32 1
  %b.freeze.nc206 = load i64, ptr %b.freeze.nc.gep205, align 8
  %b.freeze.has.chunk207 = icmp sgt i64 %b.freeze.nc206, 0
  br i1 %b.freeze.has.chunk207, label %b.freeze.check208, label %b.freeze.done210

str_gen_check104:                                 ; preds = %loop.body.5
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %str.tag102)
  br i1 %tag.valid108, label %str_ok105, label %str_stale106

str_ok105:                                        ; preds = %str_stale106, %str_gen_check104, %loop.body.5
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load99, i32 0, i32 1
  %s.read.data109 = load ptr, ptr %s.read.data, align 8
  %var.load110 = load ptr, ptr %var.s, align 8
  %str.len.query111 = getelementptr inbounds { i64, ptr }, ptr %var.load110, i32 0, i32 0
  %str.len.query112 = load i64, ptr %str.len.query111, align 8
  %str.len.query113 = and i64 %str.len.query112, 281474976710655
  %str.tag114 = lshr i64 %str.len.query112, 48
  %str.immortal115 = icmp eq i64 %str.tag114, 0
  br i1 %str.immortal115, label %str_ok117, label %str_gen_check116

str_stale106:                                     ; preds = %str_gen_check104
  %14 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok105

str_gen_check116:                                 ; preds = %str_ok105
  %arena.cur119 = call ptr @dva_arena_current()
  %tag.valid120 = call i1 @dva_arena_validate_tag(ptr %arena.cur119, i64 %str.tag114)
  br i1 %tag.valid120, label %str_ok117, label %str_stale118

str_ok117:                                        ; preds = %str_stale118, %str_gen_check116, %str_ok105
  %subtmp121 = sub i64 %str.len.query113, 1
  %var.load122 = load i64, ptr %var.i, align 8
  %subtmp123 = sub i64 %subtmp121, %var.load122
  %idx.neg = icmp slt i64 %subtmp123, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale118:                                     ; preds = %str_gen_check116
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok117

idx_big_check:                                    ; preds = %str_ok117
  %idx.big = icmp sge i64 %subtmp123, %s.read.len101
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data109, i64 %subtmp123
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load124 = load ptr, ptr %var.out, align 8
  %var.load125 = load ptr, ptr %var.s, align 8
  %s.read.len126 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %s.read.len127 = load i64, ptr %s.read.len126, align 8
  %s.read.len128 = and i64 %s.read.len127, 281474976710655
  %str.tag129 = lshr i64 %s.read.len127, 48
  %str.immortal130 = icmp eq i64 %str.tag129, 0
  br i1 %str.immortal130, label %str_ok132, label %str_gen_check131

idx_oob:                                          ; preds = %idx_big_check, %str_ok117
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check131:                                 ; preds = %idx_ok
  %arena.cur134 = call ptr @dva_arena_current()
  %tag.valid135 = call i1 @dva_arena_validate_tag(ptr %arena.cur134, i64 %str.tag129)
  br i1 %tag.valid135, label %str_ok132, label %str_stale133

str_ok132:                                        ; preds = %str_stale133, %str_gen_check131, %idx_ok
  %s.read.data136 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 1
  %s.read.data137 = load ptr, ptr %s.read.data136, align 8
  %var.load138 = load ptr, ptr %var.s, align 8
  %str.len.query139 = getelementptr inbounds { i64, ptr }, ptr %var.load138, i32 0, i32 0
  %str.len.query140 = load i64, ptr %str.len.query139, align 8
  %str.len.query141 = and i64 %str.len.query140, 281474976710655
  %str.tag142 = lshr i64 %str.len.query140, 48
  %str.immortal143 = icmp eq i64 %str.tag142, 0
  br i1 %str.immortal143, label %str_ok145, label %str_gen_check144

str_stale133:                                     ; preds = %str_gen_check131
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok132

str_gen_check144:                                 ; preds = %str_ok132
  %arena.cur147 = call ptr @dva_arena_current()
  %tag.valid148 = call i1 @dva_arena_validate_tag(ptr %arena.cur147, i64 %str.tag142)
  br i1 %tag.valid148, label %str_ok145, label %str_stale146

str_ok145:                                        ; preds = %str_stale146, %str_gen_check144, %str_ok132
  %subtmp149 = sub i64 %str.len.query141, 1
  %var.load150 = load i64, ptr %var.i, align 8
  %subtmp151 = sub i64 %subtmp149, %var.load150
  %idx.neg152 = icmp slt i64 %subtmp151, 0
  br i1 %idx.neg152, label %idx_oob155, label %idx_big_check153

str_stale146:                                     ; preds = %str_gen_check144
  %18 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok145

idx_big_check153:                                 ; preds = %str_ok145
  %idx.big156 = icmp sge i64 %subtmp151, %s.read.len128
  br i1 %idx.big156, label %idx_oob155, label %idx_ok154

idx_ok154:                                        ; preds = %idx_oob155, %idx_big_check153
  %s.byte.gep157 = getelementptr i8, ptr %s.read.data137, i64 %subtmp151
  %s.byte158 = load i8, ptr %s.byte.gep157, align 1
  %s.byte.val159 = zext i8 %s.byte158 to i64
  %b.b.ge0160 = icmp sge i64 %s.byte.val159, 0
  %b.b.le255161 = icmp sle i64 %s.byte.val159, 255
  %b.byte.range162 = and i1 %b.b.ge0160, %b.b.le255161
  br i1 %b.byte.range162, label %b.byte_ok163, label %b.byte_err164

idx_oob155:                                       ; preds = %idx_big_check153, %str_ok145
  %19 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok154

b.byte_ok163:                                     ; preds = %b.byte_err164, %idx_ok154
  %b.byte.i8165 = trunc i64 %s.byte.val159 to i8
  %b.len166 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  %b.len167 = load i64, ptr %b.len166, align 8
  %b.cap168 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 2
  %b.cap169 = load i64, ptr %b.cap168, align 8
  %b.data170 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  %b.data171 = load ptr, ptr %b.data170, align 8
  %b.needs.grow172 = icmp eq i64 %b.len167, %b.cap169
  br i1 %b.needs.grow172, label %b.grow173, label %b.nogrow174

b.byte_err164:                                    ; preds = %idx_ok154
  %20 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok163

b.grow173:                                        ; preds = %b.byte_ok163
  %b.cap2176 = mul i64 %b.cap169, 2
  %b.cap.small177 = icmp slt i64 %b.cap2176, 16
  %b.new.cap178 = select i1 %b.cap.small177, i64 16, i64 %b.cap2176
  %b.new.buf.len179 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap178, i64 1)
  %sum180 = extractvalue { i64, i1 } %b.new.buf.len179, 0
  %ovf181 = extractvalue { i64, i1 } %b.new.buf.len179, 1
  br i1 %ovf181, label %str_overflow_abort183, label %b.new.buf.len182

b.nogrow174:                                      ; preds = %b.byte_ok163
  br label %b.push_done175

b.push_done175:                                   ; preds = %b.nogrow174, %b.new.buf.len182
  %b.cur.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  %b.cur.data190 = load ptr, ptr %b.cur.data189, align 8
  %b.cur.len191 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  %b.cur.len192 = load i64, ptr %b.cur.len191, align 8
  %b.byte.gep193 = getelementptr i8, ptr %b.cur.data190, i64 %b.cur.len192
  store i8 %b.byte.i8165, ptr %b.byte.gep193, align 1
  %b.next.len194 = add i64 %b.cur.len192, 1
  %b.nul195 = getelementptr i8, ptr %b.cur.data190, i64 %b.next.len194
  store i8 0, ptr %b.nul195, align 1
  %b.len.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 0
  store i64 %b.next.len194, ptr %b.len.gep196, align 8
  br label %loop.latch.5

b.new.buf.len182:                                 ; preds = %str_overflow_abort183, %b.grow173
  %arena.cur184 = call ptr @dva_arena_current()
  %b.new.buf185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 %sum180)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf185, ptr align 1 %b.data171, i64 %b.len167, i1 false)
  %b.grow.nul186 = getelementptr i8, ptr %b.new.buf185, i64 %b.len167
  store i8 0, ptr %b.grow.nul186, align 1
  %b.new.data.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 1
  store ptr %b.new.buf185, ptr %b.new.data.gep187, align 8
  %b.new.cap.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load124, i32 0, i32 2
  store i64 %b.new.cap178, ptr %b.new.cap.gep188, align 8
  br label %b.push_done175

str_overflow_abort183:                            ; preds = %b.grow173
  %21 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len182

b.freeze.check208:                                ; preds = %loop.exit.5
  %b.freeze.last.idx211 = sub i64 %b.freeze.nc206, 1
  %b.freeze.chunks.gep212 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena204, i32 0, i32 3
  %b.freeze.chunk.slot213 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep212, i64 0, i64 %b.freeze.last.idx211
  %b.freeze.last.chunk214 = load ptr, ptr %b.freeze.chunk.slot213, align 8
  %b.freeze.off.gep215 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena204, i32 0, i32 2
  %b.freeze.off216 = load i64, ptr %b.freeze.off.gep215, align 8
  %b.freeze.bump217 = getelementptr i8, ptr %b.freeze.last.chunk214, i64 %b.freeze.off216
  %b.freeze.cap.gep218 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena204, i32 0, i32 0
  %b.freeze.cap219 = load i64, ptr %b.freeze.cap.gep218, align 8
  %b.freeze.chunk.end220 = getelementptr i8, ptr %b.freeze.last.chunk214, i64 %b.freeze.cap219
  %b.freeze.ge.chunk221 = icmp uge ptr %b.freeze.data203, %b.freeze.last.chunk214
  %b.freeze.lt.end222 = icmp ult ptr %b.freeze.data203, %b.freeze.chunk.end220
  %b.freeze.in.chunk223 = and i1 %b.freeze.ge.chunk221, %b.freeze.lt.end222
  %b.freeze.ge.bump224 = icmp uge ptr %b.freeze.data203, %b.freeze.bump217
  %b.freeze.reaped225 = and i1 %b.freeze.in.chunk223, %b.freeze.ge.bump224
  br i1 %b.freeze.reaped225, label %b.freeze.copy209, label %b.freeze.done210

b.freeze.copy209:                                 ; preds = %b.freeze.check208
  %arena.cur226 = call ptr @dva_arena_current()
  %b.freeze.fresh227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 %b.freeze.len201)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh227, ptr align 1 %b.freeze.data203, i64 %b.freeze.len201, i1 false)
  br label %b.freeze.done210

b.freeze.done210:                                 ; preds = %b.freeze.copy209, %b.freeze.check208, %loop.exit.5
  %b.freeze.data228 = phi ptr [ %b.freeze.data203, %loop.exit.5 ], [ %b.freeze.data203, %b.freeze.check208 ], [ %b.freeze.fresh227, %b.freeze.copy209 ]
  %arena.cur229 = call ptr @dva_arena_current()
  %builder.freeze230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 16)
  %str.build.len.gep231 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze230, i32 0, i32 0
  store i64 %b.freeze.len201, ptr %str.build.len.gep231, align 8
  %str.build.data.gep232 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze230, i32 0, i32 1
  store ptr %b.freeze.data228, ptr %str.build.data.gep232, align 8
  %b.freeze.rst.len233 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load199, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len233, align 8
  %b.freeze.rst.data234 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load199, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data234, align 8
  %b.freeze.rst.cap235 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load199, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap235, align 8
  ret ptr %builder.freeze230
}

define ptr @"str::from_u64"(i64 %0) #1 {
entry:
  %var._56 = alloca i64, align 8
  %var._i55 = alloca i64, align 8
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
  %var.load29 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 0
  %b.freeze.len30 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load29, i32 0, i32 1
  %b.freeze.data31 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit5:                                     ; preds = %div.not_zero27
  br label %loop.latch.6

choice.case6:                                     ; preds = %loop.body.6
  %var.load8 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort, label %div.not_zero

choice.next7:                                     ; preds = %loop.body.6
  br label %loop.exit.6

div.not_zero:                                     ; preds = %div.zero_abort, %choice.case6
  %modtmp = urem i64 %var.load8, 10
  %coerce.trunc = trunc i64 %modtmp to i32
  %addtmp = add i32 48, %coerce.trunc
  %b.load = load ptr, ptr %var.b, align 8
  %var.load9 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort11, label %div.not_zero10

div.zero_abort:                                   ; preds = %choice.case6
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.not_zero10:                                   ; preds = %div.zero_abort11, %div.not_zero
  %modtmp12 = urem i64 %var.load9, 10
  %coerce.trunc13 = trunc i64 %modtmp12 to i32
  %addtmp14 = add i32 48, %coerce.trunc13
  %b.byte.zext = zext i32 %addtmp14 to i64
  %b.b.ge0 = icmp sge i64 %b.byte.zext, 0
  %b.b.le255 = icmp sle i64 %b.byte.zext, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

div.zero_abort11:                                 ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero10

b.byte_ok:                                        ; preds = %b.byte_err, %div.not_zero10
  %b.byte.i8 = trunc i64 %b.byte.zext to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len15 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap16 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data17 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len15, %b.cap16
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %div.not_zero10
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap16, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum18 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf19 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf19, label %str_overflow_abort21, label %b.new.buf.len20

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len20
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
  %var.load26 = load i64, ptr %"var.n'", align 8
  br i1 false, label %div.zero_abort28, label %div.not_zero27

b.new.buf.len20:                                  ; preds = %str_overflow_abort21, %b.grow
  %arena.cur22 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 %sum18)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data17, i64 %b.len15, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len15
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort21:                             ; preds = %b.grow
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len20

div.not_zero27:                                   ; preds = %div.zero_abort28, %b.push_done
  %divtmp = udiv i64 %var.load26, 10
  store i64 %divtmp, ptr %"var.n'", align 8
  br label %choice.exit5

div.zero_abort28:                                 ; preds = %b.push_done
  %6 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero27

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data31, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data31, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data31, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur32 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %b.freeze.len30)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data31, i64 %b.freeze.len30, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.6
  %b.freeze.data33 = phi ptr [ %b.freeze.data31, %loop.exit.6 ], [ %b.freeze.data31, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur34 = call ptr @dva_arena_current()
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
  store ptr %builder.freeze, ptr %var.s, align 8
  %arena.cur35 = call ptr @dva_arena_current()
  %builder.new36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 24)
  %b.data.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new36, i32 0, i32 1
  %b.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new36, i32 0, i32 0
  %b.cap.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new36, i32 0, i32 2
  %b.buf.len40 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.buf.len40, 0
  %ovf42 = extractvalue { i64, i1 } %b.buf.len40, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.buf.len43

b.buf.len43:                                      ; preds = %str_overflow_abort44, %b.freeze.done
  %arena.cur45 = call ptr @dva_arena_current()
  %b.buf46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 %sum41)
  %b.nul047 = getelementptr i8, ptr %b.buf46, i64 0
  store i8 0, ptr %b.nul047, align 1
  store i64 0, ptr %b.len.gep38, align 8
  store ptr %b.buf46, ptr %b.data.gep37, align 8
  store i64 32, ptr %b.cap.gep39, align 8
  store ptr %builder.new36, ptr %var.out, align 8
  %var.load48 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load48, i32 0, i32 0
  %str.len.query49 = load i64, ptr %str.len.query, align 8
  %str.len.query50 = and i64 %str.len.query49, 281474976710655
  %str.tag = lshr i64 %str.len.query49, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_overflow_abort44:                             ; preds = %b.freeze.done
  %7 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len43

str_gen_check:                                    ; preds = %b.buf.len43
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %b.buf.len43
  store i64 0, ptr %loop.idx.7, align 8
  br label %loop.header.7

str_stale:                                        ; preds = %str_gen_check
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

loop.header.7:                                    ; preds = %loop.latch.7, %str_ok
  %counter.load52 = load i64, ptr %loop.idx.7, align 8
  %loop.cond53 = icmp slt i64 %counter.load52, %str.len.query50
  br i1 %loop.cond53, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i54 = sub i64 %counter.load52, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i54, ptr %var._i55, align 8
  store i64 %counter.load52, ptr %var._56, align 8
  store i64 %counter.load52, ptr %var.i, align 8
  %var.load57 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 0
  %s.read.len58 = load i64, ptr %s.read.len, align 8
  %s.read.len59 = and i64 %s.read.len58, 281474976710655
  %str.tag60 = lshr i64 %s.read.len58, 48
  %str.immortal61 = icmp eq i64 %str.tag60, 0
  br i1 %str.immortal61, label %str_ok63, label %str_gen_check62

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %b.push_done132
  %step.val154 = load i64, ptr %loop.step.7, align 8
  %loop.next155 = add i64 %counter.load52, %step.val154
  store i64 %loop.next155, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  %var.load156 = load ptr, ptr %var.out, align 8
  %b.freeze.len157 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 0
  %b.freeze.len158 = load i64, ptr %b.freeze.len157, align 8
  %b.freeze.data159 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 1
  %b.freeze.data160 = load ptr, ptr %b.freeze.data159, align 8
  %b.freeze.arena161 = call ptr @dva_arena_current()
  %b.freeze.nc.gep162 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena161, i32 0, i32 1
  %b.freeze.nc163 = load i64, ptr %b.freeze.nc.gep162, align 8
  %b.freeze.has.chunk164 = icmp sgt i64 %b.freeze.nc163, 0
  br i1 %b.freeze.has.chunk164, label %b.freeze.check165, label %b.freeze.done167

str_gen_check62:                                  ; preds = %loop.body.7
  %arena.cur65 = call ptr @dva_arena_current()
  %tag.valid66 = call i1 @dva_arena_validate_tag(ptr %arena.cur65, i64 %str.tag60)
  br i1 %tag.valid66, label %str_ok63, label %str_stale64

str_ok63:                                         ; preds = %str_stale64, %str_gen_check62, %loop.body.7
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load57, i32 0, i32 1
  %s.read.data67 = load ptr, ptr %s.read.data, align 8
  %var.load68 = load ptr, ptr %var.s, align 8
  %str.len.query69 = getelementptr inbounds { i64, ptr }, ptr %var.load68, i32 0, i32 0
  %str.len.query70 = load i64, ptr %str.len.query69, align 8
  %str.len.query71 = and i64 %str.len.query70, 281474976710655
  %str.tag72 = lshr i64 %str.len.query70, 48
  %str.immortal73 = icmp eq i64 %str.tag72, 0
  br i1 %str.immortal73, label %str_ok75, label %str_gen_check74

str_stale64:                                      ; preds = %str_gen_check62
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok63

str_gen_check74:                                  ; preds = %str_ok63
  %arena.cur77 = call ptr @dva_arena_current()
  %tag.valid78 = call i1 @dva_arena_validate_tag(ptr %arena.cur77, i64 %str.tag72)
  br i1 %tag.valid78, label %str_ok75, label %str_stale76

str_ok75:                                         ; preds = %str_stale76, %str_gen_check74, %str_ok63
  %subtmp = sub i64 %str.len.query71, 1
  %var.load79 = load i64, ptr %var.i, align 8
  %subtmp80 = sub i64 %subtmp, %var.load79
  %idx.neg = icmp slt i64 %subtmp80, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale76:                                      ; preds = %str_gen_check74
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok75

idx_big_check:                                    ; preds = %str_ok75
  %idx.big = icmp sge i64 %subtmp80, %s.read.len59
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data67, i64 %subtmp80
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %b.load81 = load ptr, ptr %var.out, align 8
  %var.load82 = load ptr, ptr %var.s, align 8
  %s.read.len83 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 0
  %s.read.len84 = load i64, ptr %s.read.len83, align 8
  %s.read.len85 = and i64 %s.read.len84, 281474976710655
  %str.tag86 = lshr i64 %s.read.len84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

idx_oob:                                          ; preds = %idx_big_check, %str_ok75
  %11 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check88:                                  ; preds = %idx_ok
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %str.tag86)
  br i1 %tag.valid92, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %idx_ok
  %s.read.data93 = getelementptr inbounds { i64, ptr }, ptr %var.load82, i32 0, i32 1
  %s.read.data94 = load ptr, ptr %s.read.data93, align 8
  %var.load95 = load ptr, ptr %var.s, align 8
  %str.len.query96 = getelementptr inbounds { i64, ptr }, ptr %var.load95, i32 0, i32 0
  %str.len.query97 = load i64, ptr %str.len.query96, align 8
  %str.len.query98 = and i64 %str.len.query97, 281474976710655
  %str.tag99 = lshr i64 %str.len.query97, 48
  %str.immortal100 = icmp eq i64 %str.tag99, 0
  br i1 %str.immortal100, label %str_ok102, label %str_gen_check101

str_stale90:                                      ; preds = %str_gen_check88
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

str_gen_check101:                                 ; preds = %str_ok89
  %arena.cur104 = call ptr @dva_arena_current()
  %tag.valid105 = call i1 @dva_arena_validate_tag(ptr %arena.cur104, i64 %str.tag99)
  br i1 %tag.valid105, label %str_ok102, label %str_stale103

str_ok102:                                        ; preds = %str_stale103, %str_gen_check101, %str_ok89
  %subtmp106 = sub i64 %str.len.query98, 1
  %var.load107 = load i64, ptr %var.i, align 8
  %subtmp108 = sub i64 %subtmp106, %var.load107
  %idx.neg109 = icmp slt i64 %subtmp108, 0
  br i1 %idx.neg109, label %idx_oob112, label %idx_big_check110

str_stale103:                                     ; preds = %str_gen_check101
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok102

idx_big_check110:                                 ; preds = %str_ok102
  %idx.big113 = icmp sge i64 %subtmp108, %s.read.len85
  br i1 %idx.big113, label %idx_oob112, label %idx_ok111

idx_ok111:                                        ; preds = %idx_oob112, %idx_big_check110
  %s.byte.gep114 = getelementptr i8, ptr %s.read.data94, i64 %subtmp108
  %s.byte115 = load i8, ptr %s.byte.gep114, align 1
  %s.byte.val116 = zext i8 %s.byte115 to i64
  %b.b.ge0117 = icmp sge i64 %s.byte.val116, 0
  %b.b.le255118 = icmp sle i64 %s.byte.val116, 255
  %b.byte.range119 = and i1 %b.b.ge0117, %b.b.le255118
  br i1 %b.byte.range119, label %b.byte_ok120, label %b.byte_err121

idx_oob112:                                       ; preds = %idx_big_check110, %str_ok102
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok111

b.byte_ok120:                                     ; preds = %b.byte_err121, %idx_ok111
  %b.byte.i8122 = trunc i64 %s.byte.val116 to i8
  %b.len123 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.len124 = load i64, ptr %b.len123, align 8
  %b.cap125 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  %b.cap126 = load i64, ptr %b.cap125, align 8
  %b.data127 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.data128 = load ptr, ptr %b.data127, align 8
  %b.needs.grow129 = icmp eq i64 %b.len124, %b.cap126
  br i1 %b.needs.grow129, label %b.grow130, label %b.nogrow131

b.byte_err121:                                    ; preds = %idx_ok111
  %15 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok120

b.grow130:                                        ; preds = %b.byte_ok120
  %b.cap2133 = mul i64 %b.cap126, 2
  %b.cap.small134 = icmp slt i64 %b.cap2133, 16
  %b.new.cap135 = select i1 %b.cap.small134, i64 16, i64 %b.cap2133
  %b.new.buf.len136 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap135, i64 1)
  %sum137 = extractvalue { i64, i1 } %b.new.buf.len136, 0
  %ovf138 = extractvalue { i64, i1 } %b.new.buf.len136, 1
  br i1 %ovf138, label %str_overflow_abort140, label %b.new.buf.len139

b.nogrow131:                                      ; preds = %b.byte_ok120
  br label %b.push_done132

b.push_done132:                                   ; preds = %b.nogrow131, %b.new.buf.len139
  %b.cur.data146 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  %b.cur.data147 = load ptr, ptr %b.cur.data146, align 8
  %b.cur.len148 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  %b.cur.len149 = load i64, ptr %b.cur.len148, align 8
  %b.byte.gep150 = getelementptr i8, ptr %b.cur.data147, i64 %b.cur.len149
  store i8 %b.byte.i8122, ptr %b.byte.gep150, align 1
  %b.next.len151 = add i64 %b.cur.len149, 1
  %b.nul152 = getelementptr i8, ptr %b.cur.data147, i64 %b.next.len151
  store i8 0, ptr %b.nul152, align 1
  %b.len.gep153 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 0
  store i64 %b.next.len151, ptr %b.len.gep153, align 8
  br label %loop.latch.7

b.new.buf.len139:                                 ; preds = %str_overflow_abort140, %b.grow130
  %arena.cur141 = call ptr @dva_arena_current()
  %b.new.buf142 = call ptr @dva_arena_alloc(ptr %arena.cur141, i64 %sum137)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf142, ptr align 1 %b.data128, i64 %b.len124, i1 false)
  %b.grow.nul143 = getelementptr i8, ptr %b.new.buf142, i64 %b.len124
  store i8 0, ptr %b.grow.nul143, align 1
  %b.new.data.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 1
  store ptr %b.new.buf142, ptr %b.new.data.gep144, align 8
  %b.new.cap.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load81, i32 0, i32 2
  store i64 %b.new.cap135, ptr %b.new.cap.gep145, align 8
  br label %b.push_done132

str_overflow_abort140:                            ; preds = %b.grow130
  %16 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len139

b.freeze.check165:                                ; preds = %loop.exit.7
  %b.freeze.last.idx168 = sub i64 %b.freeze.nc163, 1
  %b.freeze.chunks.gep169 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena161, i32 0, i32 3
  %b.freeze.chunk.slot170 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep169, i64 0, i64 %b.freeze.last.idx168
  %b.freeze.last.chunk171 = load ptr, ptr %b.freeze.chunk.slot170, align 8
  %b.freeze.off.gep172 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena161, i32 0, i32 2
  %b.freeze.off173 = load i64, ptr %b.freeze.off.gep172, align 8
  %b.freeze.bump174 = getelementptr i8, ptr %b.freeze.last.chunk171, i64 %b.freeze.off173
  %b.freeze.cap.gep175 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena161, i32 0, i32 0
  %b.freeze.cap176 = load i64, ptr %b.freeze.cap.gep175, align 8
  %b.freeze.chunk.end177 = getelementptr i8, ptr %b.freeze.last.chunk171, i64 %b.freeze.cap176
  %b.freeze.ge.chunk178 = icmp uge ptr %b.freeze.data160, %b.freeze.last.chunk171
  %b.freeze.lt.end179 = icmp ult ptr %b.freeze.data160, %b.freeze.chunk.end177
  %b.freeze.in.chunk180 = and i1 %b.freeze.ge.chunk178, %b.freeze.lt.end179
  %b.freeze.ge.bump181 = icmp uge ptr %b.freeze.data160, %b.freeze.bump174
  %b.freeze.reaped182 = and i1 %b.freeze.in.chunk180, %b.freeze.ge.bump181
  br i1 %b.freeze.reaped182, label %b.freeze.copy166, label %b.freeze.done167

b.freeze.copy166:                                 ; preds = %b.freeze.check165
  %arena.cur183 = call ptr @dva_arena_current()
  %b.freeze.fresh184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 %b.freeze.len158)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh184, ptr align 1 %b.freeze.data160, i64 %b.freeze.len158, i1 false)
  br label %b.freeze.done167

b.freeze.done167:                                 ; preds = %b.freeze.copy166, %b.freeze.check165, %loop.exit.7
  %b.freeze.data185 = phi ptr [ %b.freeze.data160, %loop.exit.7 ], [ %b.freeze.data160, %b.freeze.check165 ], [ %b.freeze.fresh184, %b.freeze.copy166 ]
  %arena.cur186 = call ptr @dva_arena_current()
  %builder.freeze187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 16)
  %str.build.len.gep188 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze187, i32 0, i32 0
  store i64 %b.freeze.len158, ptr %str.build.len.gep188, align 8
  %str.build.data.gep189 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze187, i32 0, i32 1
  store ptr %b.freeze.data185, ptr %str.build.data.gep189, align 8
  %b.freeze.rst.len190 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len190, align 8
  %b.freeze.rst.data191 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data191, align 8
  %b.freeze.rst.cap192 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap192, align 8
  ret ptr %builder.freeze187
}

define ptr @"str::from_float"(double %0) #1 {
entry:
  %var.es = alloca ptr, align 8
  %var.mant = alloca ptr, align 8
  %var._958 = alloca i64, align 8
  %var._i957 = alloca i64, align 8
  %loop.step.23 = alloca i64, align 8
  %loop.idx.23 = alloca i64, align 8
  %"var.end'" = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var._910 = alloca i64, align 8
  %var._i909 = alloca i64, align 8
  %loop.step.22 = alloca i64, align 8
  %loop.idx.22 = alloca i64, align 8
  %"var.dot_pos'" = alloca i64, align 8
  %var.full = alloca ptr, align 8
  %var._774 = alloca i64, align 8
  %var._i773 = alloca i64, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
  %var._723 = alloca i64, align 8
  %var._i722 = alloca i64, align 8
  %loop.step.19 = alloca i64, align 8
  %loop.idx.19 = alloca i64, align 8
  %var._590 = alloca i64, align 8
  %var._i589 = alloca i64, align 8
  %loop.step.18 = alloca i64, align 8
  %loop.idx.18 = alloca i64, align 8
  %var._452 = alloca i64, align 8
  %var._i451 = alloca i64, align 8
  %loop.step.16 = alloca i64, align 8
  %loop.idx.16 = alloca i64, align 8
  %var.en = alloca i64, align 8
  %var._355 = alloca i64, align 8
  %var._i354 = alloca i64, align 8
  %loop.step.15 = alloca i64, align 8
  %loop.idx.15 = alloca i64, align 8
  %var.b = alloca ptr, align 8
  %var.ms = alloca ptr, align 8
  %var._143 = alloca i64, align 8
  %var._i142 = alloca i64, align 8
  %loop.step.11 = alloca i64, align 8
  %loop.idx.11 = alloca i64, align 8
  %"var.m'" = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.d = alloca i64, align 8
  %var._77 = alloca i64, align 8
  %var._i76 = alloca i64, align 8
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
  %coerce.trunc = trunc i64 %var.load58 to i32
  %addtmp59 = add i32 48, %coerce.trunc
  %b.load = load ptr, ptr %var.ds, align 8
  %var.load60 = load i64, ptr %var.ip, align 8
  %coerce.trunc61 = trunc i64 %var.load60 to i32
  %addtmp62 = add i32 48, %coerce.trunc61
  %b.byte.zext = zext i32 %addtmp62 to i64
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
  %b.len63 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap64 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data65 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len63, %b.cap64
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %b.buf.len56
  %2 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap64, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum66 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf67 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf67, label %str_overflow_abort69, label %b.new.buf.len68

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len68
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data71 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len72 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data71, i64 %b.cur.len72
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len72, 1
  %b.nul = getelementptr i8, ptr %b.cur.data71, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep73, align 8
  store i64 0, ptr %loop.idx.10, align 8
  br label %loop.header.10

b.new.buf.len68:                                  ; preds = %str_overflow_abort69, %b.grow
  %arena.cur70 = call ptr @dva_arena_current()
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 %sum66)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data65, i64 %b.len63, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len63
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort69:                             ; preds = %b.grow
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len68

loop.header.10:                                   ; preds = %loop.latch.10, %b.push_done
  %counter.load74 = load i64, ptr %loop.idx.10, align 8
  %loop.cond = icmp slt i64 %counter.load74, 6
  br i1 %loop.cond, label %loop.body.10, label %loop.exit.nat.10

loop.body.10:                                     ; preds = %loop.header.10
  %loop.rel.i75 = sub i64 %counter.load74, 0
  store i64 1, ptr %loop.step.10, align 8
  store i64 %loop.rel.i75, ptr %var._i76, align 8
  store i64 %counter.load74, ptr %var._77, align 8
  store i64 %counter.load74, ptr %var.i, align 8
  %var.load78 = load double, ptr %"var.f'", align 8
  %fmultmp79 = fmul double %var.load78, 1.000000e+01
  store double %fmultmp79, ptr %"var.f'", align 8
  %var.load80 = load double, ptr %"var.f'", align 8
  %cast.fptosi81 = fptosi double %var.load80 to i64
  store i64 %cast.fptosi81, ptr %var.d, align 8
  %var.load82 = load i64, ptr %var.d, align 8
  %coerce.trunc83 = trunc i64 %var.load82 to i32
  %addtmp84 = add i32 48, %coerce.trunc83
  %b.load85 = load ptr, ptr %var.ds, align 8
  %var.load86 = load i64, ptr %var.d, align 8
  %coerce.trunc87 = trunc i64 %var.load86 to i32
  %addtmp88 = add i32 48, %coerce.trunc87
  %b.byte.zext89 = zext i32 %addtmp88 to i64
  %b.b.ge090 = icmp sge i64 %b.byte.zext89, 0
  %b.b.le25591 = icmp sle i64 %b.byte.zext89, 255
  %b.byte.range92 = and i1 %b.b.ge090, %b.b.le25591
  br i1 %b.byte.range92, label %b.byte_ok93, label %b.byte_err94

loop.exit.nat.10:                                 ; preds = %loop.header.10
  br label %loop.exit.10

loop.latch.10:                                    ; preds = %b.push_done105
  %step.val131 = load i64, ptr %loop.step.10, align 8
  %loop.next132 = add i64 %counter.load74, %step.val131
  store i64 %loop.next132, ptr %loop.idx.10, align 8
  br label %loop.header.10

loop.exit.10:                                     ; preds = %loop.exit.nat.10
  %var.load133 = load ptr, ptr %var.ds, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load133, i32 0, i32 0
  %b.freeze.len134 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load133, i32 0, i32 1
  %b.freeze.data135 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.byte_ok93:                                      ; preds = %b.byte_err94, %loop.body.10
  %b.byte.i895 = trunc i64 %b.byte.zext89 to i8
  %b.len96 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 0
  %b.len97 = load i64, ptr %b.len96, align 8
  %b.cap98 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 2
  %b.cap99 = load i64, ptr %b.cap98, align 8
  %b.data100 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 1
  %b.data101 = load ptr, ptr %b.data100, align 8
  %b.needs.grow102 = icmp eq i64 %b.len97, %b.cap99
  br i1 %b.needs.grow102, label %b.grow103, label %b.nogrow104

b.byte_err94:                                     ; preds = %loop.body.10
  %4 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok93

b.grow103:                                        ; preds = %b.byte_ok93
  %b.cap2106 = mul i64 %b.cap99, 2
  %b.cap.small107 = icmp slt i64 %b.cap2106, 16
  %b.new.cap108 = select i1 %b.cap.small107, i64 16, i64 %b.cap2106
  %b.new.buf.len109 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap108, i64 1)
  %sum110 = extractvalue { i64, i1 } %b.new.buf.len109, 0
  %ovf111 = extractvalue { i64, i1 } %b.new.buf.len109, 1
  br i1 %ovf111, label %str_overflow_abort113, label %b.new.buf.len112

b.nogrow104:                                      ; preds = %b.byte_ok93
  br label %b.push_done105

b.push_done105:                                   ; preds = %b.nogrow104, %b.new.buf.len112
  %b.cur.data119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 1
  %b.cur.data120 = load ptr, ptr %b.cur.data119, align 8
  %b.cur.len121 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 0
  %b.cur.len122 = load i64, ptr %b.cur.len121, align 8
  %b.byte.gep123 = getelementptr i8, ptr %b.cur.data120, i64 %b.cur.len122
  store i8 %b.byte.i895, ptr %b.byte.gep123, align 1
  %b.next.len124 = add i64 %b.cur.len122, 1
  %b.nul125 = getelementptr i8, ptr %b.cur.data120, i64 %b.next.len124
  store i8 0, ptr %b.nul125, align 1
  %b.len.gep126 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 0
  store i64 %b.next.len124, ptr %b.len.gep126, align 8
  %var.load127 = load double, ptr %"var.f'", align 8
  %var.load128 = load i64, ptr %var.d, align 8
  %cast.sitofp129 = sitofp i64 %var.load128 to double
  %fsubtmp130 = fsub double %var.load127, %cast.sitofp129
  store double %fsubtmp130, ptr %"var.f'", align 8
  br label %loop.latch.10

b.new.buf.len112:                                 ; preds = %str_overflow_abort113, %b.grow103
  %arena.cur114 = call ptr @dva_arena_current()
  %b.new.buf115 = call ptr @dva_arena_alloc(ptr %arena.cur114, i64 %sum110)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf115, ptr align 1 %b.data101, i64 %b.len97, i1 false)
  %b.grow.nul116 = getelementptr i8, ptr %b.new.buf115, i64 %b.len97
  store i8 0, ptr %b.grow.nul116, align 1
  %b.new.data.gep117 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 1
  store ptr %b.new.buf115, ptr %b.new.data.gep117, align 8
  %b.new.cap.gep118 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load85, i32 0, i32 2
  store i64 %b.new.cap108, ptr %b.new.cap.gep118, align 8
  br label %b.push_done105

str_overflow_abort113:                            ; preds = %b.grow103
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len112

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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data135, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data135, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data135, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %arena.cur136 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 %b.freeze.len134)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data135, i64 %b.freeze.len134, i1 false)
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %loop.exit.10
  %b.freeze.data137 = phi ptr [ %b.freeze.data135, %loop.exit.10 ], [ %b.freeze.data135, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur138 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len134, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data137, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load133, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load133, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load133, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  store ptr %builder.freeze, ptr %var.s, align 8
  store i64 0, ptr %"var.m'", align 8
  store i64 0, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.header.11:                                   ; preds = %loop.latch.11, %b.freeze.done
  %counter.load139 = load i64, ptr %loop.idx.11, align 8
  %loop.cond140 = icmp slt i64 %counter.load139, 6
  br i1 %loop.cond140, label %loop.body.11, label %loop.exit.nat.11

loop.body.11:                                     ; preds = %loop.header.11
  %loop.rel.i141 = sub i64 %counter.load139, 0
  store i64 1, ptr %loop.step.11, align 8
  store i64 %loop.rel.i141, ptr %var._i142, align 8
  store i64 %counter.load139, ptr %var._143, align 8
  store i64 %counter.load139, ptr %var.i, align 8
  %var.load144 = load i64, ptr %"var.m'", align 8
  %multmp = mul i64 %var.load144, 10
  %var.load145 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 0
  %s.read.len146 = load i64, ptr %s.read.len, align 8
  %s.read.len147 = and i64 %s.read.len146, 281474976710655
  %str.tag = lshr i64 %s.read.len146, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

loop.exit.nat.11:                                 ; preds = %loop.header.11
  br label %loop.exit.11

loop.latch.11:                                    ; preds = %idx_ok
  %step.val153 = load i64, ptr %loop.step.11, align 8
  %loop.next154 = add i64 %counter.load139, %step.val153
  store i64 %loop.next154, ptr %loop.idx.11, align 8
  br label %loop.header.11

loop.exit.11:                                     ; preds = %loop.exit.nat.11
  %var.load155 = load ptr, ptr %var.s, align 8
  %s.read.len156 = getelementptr inbounds { i64, ptr }, ptr %var.load155, i32 0, i32 0
  %s.read.len157 = load i64, ptr %s.read.len156, align 8
  %s.read.len158 = and i64 %s.read.len157, 281474976710655
  %str.tag159 = lshr i64 %s.read.len157, 48
  %str.immortal160 = icmp eq i64 %str.tag159, 0
  br i1 %str.immortal160, label %str_ok162, label %str_gen_check161

str_gen_check:                                    ; preds = %loop.body.11
  %arena.cur148 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur148, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %loop.body.11
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load145, i32 0, i32 1
  %s.read.data149 = load ptr, ptr %s.read.data, align 8
  %var.load150 = load i64, ptr %var.i, align 8
  %idx.neg = icmp slt i64 %var.load150, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

str_stale:                                        ; preds = %str_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

idx_big_check:                                    ; preds = %str_ok
  %idx.big = icmp sge i64 %var.load150, %s.read.len147
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %idx_oob, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data149, i64 %var.load150
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %subtmp151 = sub i64 %s.byte.val, 48
  %addtmp152 = add i64 %multmp, %subtmp151
  store i64 %addtmp152, ptr %"var.m'", align 8
  br label %loop.latch.11

idx_oob:                                          ; preds = %idx_big_check, %str_ok
  %7 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok

str_gen_check161:                                 ; preds = %loop.exit.11
  %arena.cur164 = call ptr @dva_arena_current()
  %tag.valid165 = call i1 @dva_arena_validate_tag(ptr %arena.cur164, i64 %str.tag159)
  br i1 %tag.valid165, label %str_ok162, label %str_stale163

str_ok162:                                        ; preds = %str_stale163, %str_gen_check161, %loop.exit.11
  %s.read.data166 = getelementptr inbounds { i64, ptr }, ptr %var.load155, i32 0, i32 1
  %s.read.data167 = load ptr, ptr %s.read.data166, align 8
  br i1 false, label %idx_oob170, label %idx_big_check168

str_stale163:                                     ; preds = %str_gen_check161
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok162

idx_big_check168:                                 ; preds = %str_ok162
  %idx.big171 = icmp sge i64 6, %s.read.len158
  br i1 %idx.big171, label %idx_oob170, label %idx_ok169

idx_ok169:                                        ; preds = %idx_oob170, %idx_big_check168
  %s.byte.gep172 = getelementptr i8, ptr %s.read.data167, i64 6
  %s.byte173 = load i8, ptr %s.byte.gep172, align 1
  %s.byte.val174 = zext i8 %s.byte173 to i64
  %cmptmp = icmp sge i64 %s.byte.val174, 53
  br i1 %cmptmp, label %choice.then175, label %choice.exit176

idx_oob170:                                       ; preds = %idx_big_check168, %str_ok162
  %9 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok169

choice.then175:                                   ; preds = %idx_ok169
  %var.load177 = load i64, ptr %"var.m'", align 8
  %addtmp178 = add i64 %var.load177, 1
  store i64 %addtmp178, ptr %"var.m'", align 8
  br label %choice.exit176

choice.exit176:                                   ; preds = %choice.then175, %idx_ok169
  %var.load179 = load i64, ptr %"var.m'", align 8
  %cmptmp180 = icmp eq i64 %var.load179, 1000000
  br i1 %cmptmp180, label %choice.then181, label %choice.exit182

choice.then181:                                   ; preds = %choice.exit176
  store i64 100000, ptr %"var.m'", align 8
  %var.load183 = load i64, ptr %"var.e'", align 8
  %addtmp184 = add i64 %var.load183, 1
  store i64 %addtmp184, ptr %"var.e'", align 8
  br label %choice.exit182

choice.exit182:                                   ; preds = %choice.then181, %choice.exit176
  %var.load185 = load i64, ptr %"var.m'", align 8
  %call.res = call ptr @"str::from_int"(i64 %var.load185)
  store ptr %call.res, ptr %var.ms, align 8
  %arena.cur186 = call ptr @dva_arena_current()
  %builder.new187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 24)
  %b.data.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new187, i32 0, i32 1
  %b.len.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new187, i32 0, i32 0
  %b.cap.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new187, i32 0, i32 2
  %b.buf.len191 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 32, i64 1)
  %sum192 = extractvalue { i64, i1 } %b.buf.len191, 0
  %ovf193 = extractvalue { i64, i1 } %b.buf.len191, 1
  br i1 %ovf193, label %str_overflow_abort195, label %b.buf.len194

b.buf.len194:                                     ; preds = %str_overflow_abort195, %choice.exit182
  %arena.cur196 = call ptr @dva_arena_current()
  %b.buf197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 %sum192)
  %b.nul0198 = getelementptr i8, ptr %b.buf197, i64 0
  store i8 0, ptr %b.nul0198, align 1
  store i64 0, ptr %b.len.gep189, align 8
  store ptr %b.buf197, ptr %b.data.gep188, align 8
  store i64 32, ptr %b.cap.gep190, align 8
  store ptr %builder.new187, ptr %var.b, align 8
  %var.load199 = load i1, ptr %var.neg, align 1
  br i1 %var.load199, label %choice.then200, label %choice.exit201

str_overflow_abort195:                            ; preds = %choice.exit182
  %10 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len194

choice.then200:                                   ; preds = %b.buf.len194
  %b.load202 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 0
  %b.rn.cur.len203 = load i64, ptr %b.rn.cur.len, align 8
  %b.rn.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len203, i64 1)
  %sum204 = extractvalue { i64, i1 } %b.rn.new.len, 0
  %ovf205 = extractvalue { i64, i1 } %b.rn.new.len, 1
  br i1 %ovf205, label %str_overflow_abort207, label %b.rn.new.len206

choice.exit201:                                   ; preds = %br.done.12, %b.buf.len194
  %var.load222 = load i64, ptr %"var.e'", align 8
  %cmptmp223 = icmp slt i64 %var.load222, -4
  br i1 %cmptmp223, label %or.13.then, label %or.13.else

b.rn.new.len206:                                  ; preds = %str_overflow_abort207, %choice.then200
  %b.cap208 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 2
  %b.cap209 = load i64, ptr %b.cap208, align 8
  %b.need.grow = icmp slt i64 %b.cap209, %sum204
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort207:                            ; preds = %choice.then200
  %11 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len206

b.grow2:                                          ; preds = %b.rn.new.len206
  %b.cap2210 = mul i64 %b.cap209, 2
  %b.cap.small211 = icmp slt i64 %b.cap2210, 16
  %b.cap.grow = select i1 %b.cap.small211, i64 16, i64 %b.cap2210
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum204
  %b.new.cap212 = select i1 %b.cap.need, i64 %sum204, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 0
  %b.cur.len2213 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 1
  %b.cur.data2214 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap212, i64 1)
  %sum215 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf216 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf216, label %str_overflow_abort218, label %b.new.buf.len2217

b.nogrow2:                                        ; preds = %b.rn.new.len206
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2217
  %b.rn.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 1
  %b.rn.data220 = load ptr, ptr %b.rn.data, align 8
  %b.rn.dst = getelementptr i8, ptr %b.rn.data220, i64 %b.rn.cur.len203
  br i1 true, label %br.b1.12, label %br.c2.12

b.new.buf.len2217:                                ; preds = %str_overflow_abort218, %b.grow2
  %arena.cur219 = call ptr @dva_arena_current()
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 %sum215)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2214, i64 %b.cur.len2213, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len2213
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 2
  store i64 %b.new.cap212, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort218:                            ; preds = %b.grow2
  %12 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2217

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
  %br.nul = getelementptr i8, ptr %b.rn.data220, i64 %sum204
  store i8 0, ptr %br.nul, align 1
  %b.len.gep221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load202, i32 0, i32 0
  store i64 %sum204, ptr %b.len.gep221, align 8
  br label %choice.exit201

or.13.then:                                       ; preds = %choice.exit201
  br label %or.13.exit

or.13.else:                                       ; preds = %choice.exit201
  %var.load224 = load i64, ptr %"var.e'", align 8
  %cmptmp225 = icmp sge i64 %var.load224, 6
  br label %or.13.exit

or.13.exit:                                       ; preds = %or.13.else, %or.13.then
  %or.13.phi = phi i1 [ %cmptmp223, %or.13.then ], [ %cmptmp225, %or.13.else ]
  br i1 %or.13.phi, label %choice.then226, label %choice.else227

choice.then226:                                   ; preds = %or.13.exit
  %var.load229 = load ptr, ptr %var.ms, align 8
  %s.read.len230 = getelementptr inbounds { i64, ptr }, ptr %var.load229, i32 0, i32 0
  %s.read.len231 = load i64, ptr %s.read.len230, align 8
  %s.read.len232 = and i64 %s.read.len231, 281474976710655
  %str.tag233 = lshr i64 %s.read.len231, 48
  %str.immortal234 = icmp eq i64 %str.tag233, 0
  br i1 %str.immortal234, label %str_ok236, label %str_gen_check235

choice.else227:                                   ; preds = %or.13.exit
  %var.load440 = load i64, ptr %"var.e'", align 8
  %cmptmp441 = icmp sge i64 %var.load440, 0
  br i1 %cmptmp441, label %choice.then442, label %choice.else443

choice.exit228:                                   ; preds = %choice.exit444, %loop.exit.15
  %var.load859 = load ptr, ptr %var.b, align 8
  %b.freeze.len860 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load859, i32 0, i32 0
  %b.freeze.len861 = load i64, ptr %b.freeze.len860, align 8
  %b.freeze.data862 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load859, i32 0, i32 1
  %b.freeze.data863 = load ptr, ptr %b.freeze.data862, align 8
  %b.freeze.arena864 = call ptr @dva_arena_current()
  %b.freeze.nc.gep865 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena864, i32 0, i32 1
  %b.freeze.nc866 = load i64, ptr %b.freeze.nc.gep865, align 8
  %b.freeze.has.chunk867 = icmp sgt i64 %b.freeze.nc866, 0
  br i1 %b.freeze.has.chunk867, label %b.freeze.check868, label %b.freeze.done870

str_gen_check235:                                 ; preds = %choice.then226
  %arena.cur238 = call ptr @dva_arena_current()
  %tag.valid239 = call i1 @dva_arena_validate_tag(ptr %arena.cur238, i64 %str.tag233)
  br i1 %tag.valid239, label %str_ok236, label %str_stale237

str_ok236:                                        ; preds = %str_stale237, %str_gen_check235, %choice.then226
  %s.read.data240 = getelementptr inbounds { i64, ptr }, ptr %var.load229, i32 0, i32 1
  %s.read.data241 = load ptr, ptr %s.read.data240, align 8
  br i1 false, label %idx_oob244, label %idx_big_check242

str_stale237:                                     ; preds = %str_gen_check235
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok236

idx_big_check242:                                 ; preds = %str_ok236
  %idx.big245 = icmp sge i64 0, %s.read.len232
  br i1 %idx.big245, label %idx_oob244, label %idx_ok243

idx_ok243:                                        ; preds = %idx_oob244, %idx_big_check242
  %s.byte.gep246 = getelementptr i8, ptr %s.read.data241, i64 0
  %s.byte247 = load i8, ptr %s.byte.gep246, align 1
  %s.byte.val248 = zext i8 %s.byte247 to i64
  %b.load249 = load ptr, ptr %var.b, align 8
  %var.load250 = load ptr, ptr %var.ms, align 8
  %s.read.len251 = getelementptr inbounds { i64, ptr }, ptr %var.load250, i32 0, i32 0
  %s.read.len252 = load i64, ptr %s.read.len251, align 8
  %s.read.len253 = and i64 %s.read.len252, 281474976710655
  %str.tag254 = lshr i64 %s.read.len252, 48
  %str.immortal255 = icmp eq i64 %str.tag254, 0
  br i1 %str.immortal255, label %str_ok257, label %str_gen_check256

idx_oob244:                                       ; preds = %idx_big_check242, %str_ok236
  %14 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok243

str_gen_check256:                                 ; preds = %idx_ok243
  %arena.cur259 = call ptr @dva_arena_current()
  %tag.valid260 = call i1 @dva_arena_validate_tag(ptr %arena.cur259, i64 %str.tag254)
  br i1 %tag.valid260, label %str_ok257, label %str_stale258

str_ok257:                                        ; preds = %str_stale258, %str_gen_check256, %idx_ok243
  %s.read.data261 = getelementptr inbounds { i64, ptr }, ptr %var.load250, i32 0, i32 1
  %s.read.data262 = load ptr, ptr %s.read.data261, align 8
  br i1 false, label %idx_oob265, label %idx_big_check263

str_stale258:                                     ; preds = %str_gen_check256
  %15 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok257

idx_big_check263:                                 ; preds = %str_ok257
  %idx.big266 = icmp sge i64 0, %s.read.len253
  br i1 %idx.big266, label %idx_oob265, label %idx_ok264

idx_ok264:                                        ; preds = %idx_oob265, %idx_big_check263
  %s.byte.gep267 = getelementptr i8, ptr %s.read.data262, i64 0
  %s.byte268 = load i8, ptr %s.byte.gep267, align 1
  %s.byte.val269 = zext i8 %s.byte268 to i64
  %b.b.ge0270 = icmp sge i64 %s.byte.val269, 0
  %b.b.le255271 = icmp sle i64 %s.byte.val269, 255
  %b.byte.range272 = and i1 %b.b.ge0270, %b.b.le255271
  br i1 %b.byte.range272, label %b.byte_ok273, label %b.byte_err274

idx_oob265:                                       ; preds = %idx_big_check263, %str_ok257
  %16 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok264

b.byte_ok273:                                     ; preds = %b.byte_err274, %idx_ok264
  %b.byte.i8275 = trunc i64 %s.byte.val269 to i8
  %b.len276 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 0
  %b.len277 = load i64, ptr %b.len276, align 8
  %b.cap278 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 2
  %b.cap279 = load i64, ptr %b.cap278, align 8
  %b.data280 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 1
  %b.data281 = load ptr, ptr %b.data280, align 8
  %b.needs.grow282 = icmp eq i64 %b.len277, %b.cap279
  br i1 %b.needs.grow282, label %b.grow283, label %b.nogrow284

b.byte_err274:                                    ; preds = %idx_ok264
  %17 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok273

b.grow283:                                        ; preds = %b.byte_ok273
  %b.cap2286 = mul i64 %b.cap279, 2
  %b.cap.small287 = icmp slt i64 %b.cap2286, 16
  %b.new.cap288 = select i1 %b.cap.small287, i64 16, i64 %b.cap2286
  %b.new.buf.len289 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap288, i64 1)
  %sum290 = extractvalue { i64, i1 } %b.new.buf.len289, 0
  %ovf291 = extractvalue { i64, i1 } %b.new.buf.len289, 1
  br i1 %ovf291, label %str_overflow_abort293, label %b.new.buf.len292

b.nogrow284:                                      ; preds = %b.byte_ok273
  br label %b.push_done285

b.push_done285:                                   ; preds = %b.nogrow284, %b.new.buf.len292
  %b.cur.data299 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 1
  %b.cur.data300 = load ptr, ptr %b.cur.data299, align 8
  %b.cur.len301 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 0
  %b.cur.len302 = load i64, ptr %b.cur.len301, align 8
  %b.byte.gep303 = getelementptr i8, ptr %b.cur.data300, i64 %b.cur.len302
  store i8 %b.byte.i8275, ptr %b.byte.gep303, align 1
  %b.next.len304 = add i64 %b.cur.len302, 1
  %b.nul305 = getelementptr i8, ptr %b.cur.data300, i64 %b.next.len304
  store i8 0, ptr %b.nul305, align 1
  %b.len.gep306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 0
  store i64 %b.next.len304, ptr %b.len.gep306, align 8
  %b.load307 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 0
  %b.rn.cur.len309 = load i64, ptr %b.rn.cur.len308, align 8
  %b.rn.new.len310 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len309, i64 1)
  %sum311 = extractvalue { i64, i1 } %b.rn.new.len310, 0
  %ovf312 = extractvalue { i64, i1 } %b.rn.new.len310, 1
  br i1 %ovf312, label %str_overflow_abort314, label %b.rn.new.len313

b.new.buf.len292:                                 ; preds = %str_overflow_abort293, %b.grow283
  %arena.cur294 = call ptr @dva_arena_current()
  %b.new.buf295 = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 %sum290)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf295, ptr align 1 %b.data281, i64 %b.len277, i1 false)
  %b.grow.nul296 = getelementptr i8, ptr %b.new.buf295, i64 %b.len277
  store i8 0, ptr %b.grow.nul296, align 1
  %b.new.data.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 1
  store ptr %b.new.buf295, ptr %b.new.data.gep297, align 8
  %b.new.cap.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load249, i32 0, i32 2
  store i64 %b.new.cap288, ptr %b.new.cap.gep298, align 8
  br label %b.push_done285

str_overflow_abort293:                            ; preds = %b.grow283
  %18 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len292

b.rn.new.len313:                                  ; preds = %str_overflow_abort314, %b.push_done285
  %b.cap315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 2
  %b.cap316 = load i64, ptr %b.cap315, align 8
  %b.need.grow317 = icmp slt i64 %b.cap316, %sum311
  br i1 %b.need.grow317, label %b.grow2318, label %b.nogrow2319

str_overflow_abort314:                            ; preds = %b.push_done285
  %19 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len313

b.grow2318:                                       ; preds = %b.rn.new.len313
  %b.cap2321 = mul i64 %b.cap316, 2
  %b.cap.small322 = icmp slt i64 %b.cap2321, 16
  %b.cap.grow323 = select i1 %b.cap.small322, i64 16, i64 %b.cap2321
  %b.cap.need324 = icmp slt i64 %b.cap.grow323, %sum311
  %b.new.cap325 = select i1 %b.cap.need324, i64 %sum311, i64 %b.cap.grow323
  %b.cur.len2326 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 0
  %b.cur.len2327 = load i64, ptr %b.cur.len2326, align 8
  %b.cur.data2328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 1
  %b.cur.data2329 = load ptr, ptr %b.cur.data2328, align 8
  %b.new.buf.len2330 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap325, i64 1)
  %sum331 = extractvalue { i64, i1 } %b.new.buf.len2330, 0
  %ovf332 = extractvalue { i64, i1 } %b.new.buf.len2330, 1
  br i1 %ovf332, label %str_overflow_abort334, label %b.new.buf.len2333

b.nogrow2319:                                     ; preds = %b.rn.new.len313
  br label %b.grow_done320

b.grow_done320:                                   ; preds = %b.nogrow2319, %b.new.buf.len2333
  %b.rn.data340 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 1
  %b.rn.data341 = load ptr, ptr %b.rn.data340, align 8
  %b.rn.dst342 = getelementptr i8, ptr %b.rn.data341, i64 %b.rn.cur.len309
  br i1 true, label %br.b1.14, label %br.c2.14

b.new.buf.len2333:                                ; preds = %str_overflow_abort334, %b.grow2318
  %arena.cur335 = call ptr @dva_arena_current()
  %b.new.buf2336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 %sum331)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2336, ptr align 1 %b.cur.data2329, i64 %b.cur.len2327, i1 false)
  %b.grow2.nul337 = getelementptr i8, ptr %b.new.buf2336, i64 %b.cur.len2327
  store i8 0, ptr %b.grow2.nul337, align 1
  %b.new.data2.gep338 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 1
  store ptr %b.new.buf2336, ptr %b.new.data2.gep338, align 8
  %b.new.cap2.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 2
  store i64 %b.new.cap325, ptr %b.new.cap2.gep339, align 8
  br label %b.grow_done320

str_overflow_abort334:                            ; preds = %b.grow2318
  %20 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2333

br.b1.14:                                         ; preds = %b.grow_done320
  store i8 46, ptr %b.rn.dst342, align 1
  br label %br.done.14

br.c2.14:                                         ; preds = %b.grow_done320
  br i1 true, label %br.b2.14, label %br.c3.14

br.b2.14:                                         ; preds = %br.c2.14
  store i8 -64, ptr %b.rn.dst342, align 1
  %br.dst1343 = getelementptr i8, ptr %b.rn.dst342, i64 1
  store i8 -82, ptr %br.dst1343, align 1
  br label %br.done.14

br.c3.14:                                         ; preds = %br.c2.14
  br i1 true, label %br.b3.14, label %br.b4.14

br.b3.14:                                         ; preds = %br.c3.14
  store i8 -32, ptr %b.rn.dst342, align 1
  %br.dst1.3344 = getelementptr i8, ptr %b.rn.dst342, i64 1
  store i8 -128, ptr %br.dst1.3344, align 1
  %br.dst2.3345 = getelementptr i8, ptr %b.rn.dst342, i64 2
  store i8 -82, ptr %br.dst2.3345, align 1
  br label %br.done.14

br.b4.14:                                         ; preds = %br.c3.14
  store i8 -16, ptr %b.rn.dst342, align 1
  %br.dst1.4346 = getelementptr i8, ptr %b.rn.dst342, i64 1
  store i8 -128, ptr %br.dst1.4346, align 1
  %br.dst2.4347 = getelementptr i8, ptr %b.rn.dst342, i64 2
  store i8 -128, ptr %br.dst2.4347, align 1
  %br.dst3.4348 = getelementptr i8, ptr %b.rn.dst342, i64 3
  store i8 -82, ptr %br.dst3.4348, align 1
  br label %br.done.14

br.done.14:                                       ; preds = %br.b4.14, %br.b3.14, %br.b2.14, %br.b1.14
  %br.nul349 = getelementptr i8, ptr %b.rn.data341, i64 %sum311
  store i8 0, ptr %br.nul349, align 1
  %b.len.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load307, i32 0, i32 0
  store i64 %sum311, ptr %b.len.gep350, align 8
  store i64 1, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.header.15:                                   ; preds = %loop.latch.15, %br.done.14
  %counter.load351 = load i64, ptr %loop.idx.15, align 8
  %loop.cond352 = icmp slt i64 %counter.load351, 6
  br i1 %loop.cond352, label %loop.body.15, label %loop.exit.nat.15

loop.body.15:                                     ; preds = %loop.header.15
  %loop.rel.i353 = sub i64 %counter.load351, 1
  store i64 1, ptr %loop.step.15, align 8
  store i64 %loop.rel.i353, ptr %var._i354, align 8
  store i64 %counter.load351, ptr %var._355, align 8
  store i64 %counter.load351, ptr %var.i, align 8
  %var.load356 = load ptr, ptr %var.ms, align 8
  %s.read.len357 = getelementptr inbounds { i64, ptr }, ptr %var.load356, i32 0, i32 0
  %s.read.len358 = load i64, ptr %s.read.len357, align 8
  %s.read.len359 = and i64 %s.read.len358, 281474976710655
  %str.tag360 = lshr i64 %s.read.len358, 48
  %str.immortal361 = icmp eq i64 %str.tag360, 0
  br i1 %str.immortal361, label %str_ok363, label %str_gen_check362

loop.exit.nat.15:                                 ; preds = %loop.header.15
  br label %loop.exit.15

loop.latch.15:                                    ; preds = %b.push_done416
  %step.val438 = load i64, ptr %loop.step.15, align 8
  %loop.next439 = add i64 %counter.load351, %step.val438
  store i64 %loop.next439, ptr %loop.idx.15, align 8
  br label %loop.header.15

loop.exit.15:                                     ; preds = %loop.exit.nat.15
  br label %choice.exit228

str_gen_check362:                                 ; preds = %loop.body.15
  %arena.cur365 = call ptr @dva_arena_current()
  %tag.valid366 = call i1 @dva_arena_validate_tag(ptr %arena.cur365, i64 %str.tag360)
  br i1 %tag.valid366, label %str_ok363, label %str_stale364

str_ok363:                                        ; preds = %str_stale364, %str_gen_check362, %loop.body.15
  %s.read.data367 = getelementptr inbounds { i64, ptr }, ptr %var.load356, i32 0, i32 1
  %s.read.data368 = load ptr, ptr %s.read.data367, align 8
  %var.load369 = load i64, ptr %var.i, align 8
  %idx.neg370 = icmp slt i64 %var.load369, 0
  br i1 %idx.neg370, label %idx_oob373, label %idx_big_check371

str_stale364:                                     ; preds = %str_gen_check362
  %21 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok363

idx_big_check371:                                 ; preds = %str_ok363
  %idx.big374 = icmp sge i64 %var.load369, %s.read.len359
  br i1 %idx.big374, label %idx_oob373, label %idx_ok372

idx_ok372:                                        ; preds = %idx_oob373, %idx_big_check371
  %s.byte.gep375 = getelementptr i8, ptr %s.read.data368, i64 %var.load369
  %s.byte376 = load i8, ptr %s.byte.gep375, align 1
  %s.byte.val377 = zext i8 %s.byte376 to i64
  %b.load378 = load ptr, ptr %var.b, align 8
  %var.load379 = load ptr, ptr %var.ms, align 8
  %s.read.len380 = getelementptr inbounds { i64, ptr }, ptr %var.load379, i32 0, i32 0
  %s.read.len381 = load i64, ptr %s.read.len380, align 8
  %s.read.len382 = and i64 %s.read.len381, 281474976710655
  %str.tag383 = lshr i64 %s.read.len381, 48
  %str.immortal384 = icmp eq i64 %str.tag383, 0
  br i1 %str.immortal384, label %str_ok386, label %str_gen_check385

idx_oob373:                                       ; preds = %idx_big_check371, %str_ok363
  %22 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok372

str_gen_check385:                                 ; preds = %idx_ok372
  %arena.cur388 = call ptr @dva_arena_current()
  %tag.valid389 = call i1 @dva_arena_validate_tag(ptr %arena.cur388, i64 %str.tag383)
  br i1 %tag.valid389, label %str_ok386, label %str_stale387

str_ok386:                                        ; preds = %str_stale387, %str_gen_check385, %idx_ok372
  %s.read.data390 = getelementptr inbounds { i64, ptr }, ptr %var.load379, i32 0, i32 1
  %s.read.data391 = load ptr, ptr %s.read.data390, align 8
  %var.load392 = load i64, ptr %var.i, align 8
  %idx.neg393 = icmp slt i64 %var.load392, 0
  br i1 %idx.neg393, label %idx_oob396, label %idx_big_check394

str_stale387:                                     ; preds = %str_gen_check385
  %23 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok386

idx_big_check394:                                 ; preds = %str_ok386
  %idx.big397 = icmp sge i64 %var.load392, %s.read.len382
  br i1 %idx.big397, label %idx_oob396, label %idx_ok395

idx_ok395:                                        ; preds = %idx_oob396, %idx_big_check394
  %s.byte.gep398 = getelementptr i8, ptr %s.read.data391, i64 %var.load392
  %s.byte399 = load i8, ptr %s.byte.gep398, align 1
  %s.byte.val400 = zext i8 %s.byte399 to i64
  %b.b.ge0401 = icmp sge i64 %s.byte.val400, 0
  %b.b.le255402 = icmp sle i64 %s.byte.val400, 255
  %b.byte.range403 = and i1 %b.b.ge0401, %b.b.le255402
  br i1 %b.byte.range403, label %b.byte_ok404, label %b.byte_err405

idx_oob396:                                       ; preds = %idx_big_check394, %str_ok386
  %24 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok395

b.byte_ok404:                                     ; preds = %b.byte_err405, %idx_ok395
  %b.byte.i8406 = trunc i64 %s.byte.val400 to i8
  %b.len407 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 0
  %b.len408 = load i64, ptr %b.len407, align 8
  %b.cap409 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 2
  %b.cap410 = load i64, ptr %b.cap409, align 8
  %b.data411 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 1
  %b.data412 = load ptr, ptr %b.data411, align 8
  %b.needs.grow413 = icmp eq i64 %b.len408, %b.cap410
  br i1 %b.needs.grow413, label %b.grow414, label %b.nogrow415

b.byte_err405:                                    ; preds = %idx_ok395
  %25 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok404

b.grow414:                                        ; preds = %b.byte_ok404
  %b.cap2417 = mul i64 %b.cap410, 2
  %b.cap.small418 = icmp slt i64 %b.cap2417, 16
  %b.new.cap419 = select i1 %b.cap.small418, i64 16, i64 %b.cap2417
  %b.new.buf.len420 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap419, i64 1)
  %sum421 = extractvalue { i64, i1 } %b.new.buf.len420, 0
  %ovf422 = extractvalue { i64, i1 } %b.new.buf.len420, 1
  br i1 %ovf422, label %str_overflow_abort424, label %b.new.buf.len423

b.nogrow415:                                      ; preds = %b.byte_ok404
  br label %b.push_done416

b.push_done416:                                   ; preds = %b.nogrow415, %b.new.buf.len423
  %b.cur.data430 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 1
  %b.cur.data431 = load ptr, ptr %b.cur.data430, align 8
  %b.cur.len432 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 0
  %b.cur.len433 = load i64, ptr %b.cur.len432, align 8
  %b.byte.gep434 = getelementptr i8, ptr %b.cur.data431, i64 %b.cur.len433
  store i8 %b.byte.i8406, ptr %b.byte.gep434, align 1
  %b.next.len435 = add i64 %b.cur.len433, 1
  %b.nul436 = getelementptr i8, ptr %b.cur.data431, i64 %b.next.len435
  store i8 0, ptr %b.nul436, align 1
  %b.len.gep437 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 0
  store i64 %b.next.len435, ptr %b.len.gep437, align 8
  br label %loop.latch.15

b.new.buf.len423:                                 ; preds = %str_overflow_abort424, %b.grow414
  %arena.cur425 = call ptr @dva_arena_current()
  %b.new.buf426 = call ptr @dva_arena_alloc(ptr %arena.cur425, i64 %sum421)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf426, ptr align 1 %b.data412, i64 %b.len408, i1 false)
  %b.grow.nul427 = getelementptr i8, ptr %b.new.buf426, i64 %b.len408
  store i8 0, ptr %b.grow.nul427, align 1
  %b.new.data.gep428 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 1
  store ptr %b.new.buf426, ptr %b.new.data.gep428, align 8
  %b.new.cap.gep429 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load378, i32 0, i32 2
  store i64 %b.new.cap419, ptr %b.new.cap.gep429, align 8
  br label %b.push_done416

str_overflow_abort424:                            ; preds = %b.grow414
  %26 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len423

choice.then442:                                   ; preds = %choice.else227
  %var.load445 = load i64, ptr %"var.e'", align 8
  %addtmp446 = add i64 %var.load445, 1
  store i64 %addtmp446, ptr %var.en, align 8
  %var.load447 = load i64, ptr %var.en, align 8
  store i64 0, ptr %loop.idx.16, align 8
  br label %loop.header.16

choice.else443:                                   ; preds = %choice.else227
  %b.load675 = load ptr, ptr %var.b, align 8
  %app.str.len = load i64, ptr @str.6.struct, align 8
  %app.str.len676 = and i64 %app.str.len, 281474976710655
  %str.tag677 = lshr i64 %app.str.len, 48
  %str.immortal678 = icmp eq i64 %str.tag677, 0
  br i1 %str.immortal678, label %str_ok680, label %str_gen_check679

choice.exit444:                                   ; preds = %loop.exit.21, %choice.exit540
  br label %choice.exit228

loop.header.16:                                   ; preds = %loop.latch.16, %choice.then442
  %counter.load448 = load i64, ptr %loop.idx.16, align 8
  %loop.cond449 = icmp slt i64 %counter.load448, %var.load447
  br i1 %loop.cond449, label %loop.body.16, label %loop.exit.nat.16

loop.body.16:                                     ; preds = %loop.header.16
  %loop.rel.i450 = sub i64 %counter.load448, 0
  store i64 1, ptr %loop.step.16, align 8
  store i64 %loop.rel.i450, ptr %var._i451, align 8
  store i64 %counter.load448, ptr %var._452, align 8
  store i64 %counter.load448, ptr %var.i, align 8
  %var.load453 = load ptr, ptr %var.ms, align 8
  %s.read.len454 = getelementptr inbounds { i64, ptr }, ptr %var.load453, i32 0, i32 0
  %s.read.len455 = load i64, ptr %s.read.len454, align 8
  %s.read.len456 = and i64 %s.read.len455, 281474976710655
  %str.tag457 = lshr i64 %s.read.len455, 48
  %str.immortal458 = icmp eq i64 %str.tag457, 0
  br i1 %str.immortal458, label %str_ok460, label %str_gen_check459

loop.exit.nat.16:                                 ; preds = %loop.header.16
  br label %loop.exit.16

loop.latch.16:                                    ; preds = %b.push_done513
  %step.val535 = load i64, ptr %loop.step.16, align 8
  %loop.next536 = add i64 %counter.load448, %step.val535
  store i64 %loop.next536, ptr %loop.idx.16, align 8
  br label %loop.header.16

loop.exit.16:                                     ; preds = %loop.exit.nat.16
  %var.load537 = load i64, ptr %var.en, align 8
  %cmptmp538 = icmp slt i64 %var.load537, 6
  br i1 %cmptmp538, label %choice.then539, label %choice.exit540

str_gen_check459:                                 ; preds = %loop.body.16
  %arena.cur462 = call ptr @dva_arena_current()
  %tag.valid463 = call i1 @dva_arena_validate_tag(ptr %arena.cur462, i64 %str.tag457)
  br i1 %tag.valid463, label %str_ok460, label %str_stale461

str_ok460:                                        ; preds = %str_stale461, %str_gen_check459, %loop.body.16
  %s.read.data464 = getelementptr inbounds { i64, ptr }, ptr %var.load453, i32 0, i32 1
  %s.read.data465 = load ptr, ptr %s.read.data464, align 8
  %var.load466 = load i64, ptr %var.i, align 8
  %idx.neg467 = icmp slt i64 %var.load466, 0
  br i1 %idx.neg467, label %idx_oob470, label %idx_big_check468

str_stale461:                                     ; preds = %str_gen_check459
  %27 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok460

idx_big_check468:                                 ; preds = %str_ok460
  %idx.big471 = icmp sge i64 %var.load466, %s.read.len456
  br i1 %idx.big471, label %idx_oob470, label %idx_ok469

idx_ok469:                                        ; preds = %idx_oob470, %idx_big_check468
  %s.byte.gep472 = getelementptr i8, ptr %s.read.data465, i64 %var.load466
  %s.byte473 = load i8, ptr %s.byte.gep472, align 1
  %s.byte.val474 = zext i8 %s.byte473 to i64
  %b.load475 = load ptr, ptr %var.b, align 8
  %var.load476 = load ptr, ptr %var.ms, align 8
  %s.read.len477 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 0
  %s.read.len478 = load i64, ptr %s.read.len477, align 8
  %s.read.len479 = and i64 %s.read.len478, 281474976710655
  %str.tag480 = lshr i64 %s.read.len478, 48
  %str.immortal481 = icmp eq i64 %str.tag480, 0
  br i1 %str.immortal481, label %str_ok483, label %str_gen_check482

idx_oob470:                                       ; preds = %idx_big_check468, %str_ok460
  %28 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok469

str_gen_check482:                                 ; preds = %idx_ok469
  %arena.cur485 = call ptr @dva_arena_current()
  %tag.valid486 = call i1 @dva_arena_validate_tag(ptr %arena.cur485, i64 %str.tag480)
  br i1 %tag.valid486, label %str_ok483, label %str_stale484

str_ok483:                                        ; preds = %str_stale484, %str_gen_check482, %idx_ok469
  %s.read.data487 = getelementptr inbounds { i64, ptr }, ptr %var.load476, i32 0, i32 1
  %s.read.data488 = load ptr, ptr %s.read.data487, align 8
  %var.load489 = load i64, ptr %var.i, align 8
  %idx.neg490 = icmp slt i64 %var.load489, 0
  br i1 %idx.neg490, label %idx_oob493, label %idx_big_check491

str_stale484:                                     ; preds = %str_gen_check482
  %29 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok483

idx_big_check491:                                 ; preds = %str_ok483
  %idx.big494 = icmp sge i64 %var.load489, %s.read.len479
  br i1 %idx.big494, label %idx_oob493, label %idx_ok492

idx_ok492:                                        ; preds = %idx_oob493, %idx_big_check491
  %s.byte.gep495 = getelementptr i8, ptr %s.read.data488, i64 %var.load489
  %s.byte496 = load i8, ptr %s.byte.gep495, align 1
  %s.byte.val497 = zext i8 %s.byte496 to i64
  %b.b.ge0498 = icmp sge i64 %s.byte.val497, 0
  %b.b.le255499 = icmp sle i64 %s.byte.val497, 255
  %b.byte.range500 = and i1 %b.b.ge0498, %b.b.le255499
  br i1 %b.byte.range500, label %b.byte_ok501, label %b.byte_err502

idx_oob493:                                       ; preds = %idx_big_check491, %str_ok483
  %30 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok492

b.byte_ok501:                                     ; preds = %b.byte_err502, %idx_ok492
  %b.byte.i8503 = trunc i64 %s.byte.val497 to i8
  %b.len504 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 0
  %b.len505 = load i64, ptr %b.len504, align 8
  %b.cap506 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 2
  %b.cap507 = load i64, ptr %b.cap506, align 8
  %b.data508 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 1
  %b.data509 = load ptr, ptr %b.data508, align 8
  %b.needs.grow510 = icmp eq i64 %b.len505, %b.cap507
  br i1 %b.needs.grow510, label %b.grow511, label %b.nogrow512

b.byte_err502:                                    ; preds = %idx_ok492
  %31 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok501

b.grow511:                                        ; preds = %b.byte_ok501
  %b.cap2514 = mul i64 %b.cap507, 2
  %b.cap.small515 = icmp slt i64 %b.cap2514, 16
  %b.new.cap516 = select i1 %b.cap.small515, i64 16, i64 %b.cap2514
  %b.new.buf.len517 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap516, i64 1)
  %sum518 = extractvalue { i64, i1 } %b.new.buf.len517, 0
  %ovf519 = extractvalue { i64, i1 } %b.new.buf.len517, 1
  br i1 %ovf519, label %str_overflow_abort521, label %b.new.buf.len520

b.nogrow512:                                      ; preds = %b.byte_ok501
  br label %b.push_done513

b.push_done513:                                   ; preds = %b.nogrow512, %b.new.buf.len520
  %b.cur.data527 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 1
  %b.cur.data528 = load ptr, ptr %b.cur.data527, align 8
  %b.cur.len529 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 0
  %b.cur.len530 = load i64, ptr %b.cur.len529, align 8
  %b.byte.gep531 = getelementptr i8, ptr %b.cur.data528, i64 %b.cur.len530
  store i8 %b.byte.i8503, ptr %b.byte.gep531, align 1
  %b.next.len532 = add i64 %b.cur.len530, 1
  %b.nul533 = getelementptr i8, ptr %b.cur.data528, i64 %b.next.len532
  store i8 0, ptr %b.nul533, align 1
  %b.len.gep534 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 0
  store i64 %b.next.len532, ptr %b.len.gep534, align 8
  br label %loop.latch.16

b.new.buf.len520:                                 ; preds = %str_overflow_abort521, %b.grow511
  %arena.cur522 = call ptr @dva_arena_current()
  %b.new.buf523 = call ptr @dva_arena_alloc(ptr %arena.cur522, i64 %sum518)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf523, ptr align 1 %b.data509, i64 %b.len505, i1 false)
  %b.grow.nul524 = getelementptr i8, ptr %b.new.buf523, i64 %b.len505
  store i8 0, ptr %b.grow.nul524, align 1
  %b.new.data.gep525 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 1
  store ptr %b.new.buf523, ptr %b.new.data.gep525, align 8
  %b.new.cap.gep526 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load475, i32 0, i32 2
  store i64 %b.new.cap516, ptr %b.new.cap.gep526, align 8
  br label %b.push_done513

str_overflow_abort521:                            ; preds = %b.grow511
  %32 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len520

choice.then539:                                   ; preds = %loop.exit.16
  %b.load541 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len542 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load541, i32 0, i32 0
  %b.rn.cur.len543 = load i64, ptr %b.rn.cur.len542, align 8
  %b.rn.new.len544 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len543, i64 1)
  %sum545 = extractvalue { i64, i1 } %b.rn.new.len544, 0
  %ovf546 = extractvalue { i64, i1 } %b.rn.new.len544, 1
  br i1 %ovf546, label %str_overflow_abort548, label %b.rn.new.len547

choice.exit540:                                   ; preds = %loop.exit.18, %loop.exit.16
  br label %choice.exit444

b.rn.new.len547:                                  ; preds = %str_overflow_abort548, %choice.then539
  %b.cap549 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load541, i32 0, i32 2
  %b.cap550 = load i64, ptr %b.cap549, align 8
  %b.need.grow551 = icmp slt i64 %b.cap550, %sum545
  br i1 %b.need.grow551, label %b.grow2552, label %b.nogrow2553

str_overflow_abort548:                            ; preds = %choice.then539
  %33 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len547

b.grow2552:                                       ; preds = %b.rn.new.len547
  %b.cap2555 = mul i64 %b.cap550, 2
  %b.cap.small556 = icmp slt i64 %b.cap2555, 16
  %b.cap.grow557 = select i1 %b.cap.small556, i64 16, i64 %b.cap2555
  %b.cap.need558 = icmp slt i64 %b.cap.grow557, %sum545
  %b.new.cap559 = select i1 %b.cap.need558, i64 %sum545, i64 %b.cap.grow557
  %b.cur.len2560 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load541, i32 0, i32 0
  %b.cur.len2561 = load i64, ptr %b.cur.len2560, align 8
  %b.cur.data2562 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load541, i32 0, i32 1
  %b.cur.data2563 = load ptr, ptr %b.cur.data2562, align 8
  %b.new.buf.len2564 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap559, i64 1)
  %sum565 = extractvalue { i64, i1 } %b.new.buf.len2564, 0
  %ovf566 = extractvalue { i64, i1 } %b.new.buf.len2564, 1
  br i1 %ovf566, label %str_overflow_abort568, label %b.new.buf.len2567

b.nogrow2553:                                     ; preds = %b.rn.new.len547
  br label %b.grow_done554

b.grow_done554:                                   ; preds = %b.nogrow2553, %b.new.buf.len2567
  %b.rn.data574 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load541, i32 0, i32 1
  %b.rn.data575 = load ptr, ptr %b.rn.data574, align 8
  %b.rn.dst576 = getelementptr i8, ptr %b.rn.data575, i64 %b.rn.cur.len543
  br i1 true, label %br.b1.17, label %br.c2.17

b.new.buf.len2567:                                ; preds = %str_overflow_abort568, %b.grow2552
  %arena.cur569 = call ptr @dva_arena_current()
  %b.new.buf2570 = call ptr @dva_arena_alloc(ptr %arena.cur569, i64 %sum565)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2570, ptr align 1 %b.cur.data2563, i64 %b.cur.len2561, i1 false)
  %b.grow2.nul571 = getelementptr i8, ptr %b.new.buf2570, i64 %b.cur.len2561
  store i8 0, ptr %b.grow2.nul571, align 1
  %b.new.data2.gep572 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load541, i32 0, i32 1
  store ptr %b.new.buf2570, ptr %b.new.data2.gep572, align 8
  %b.new.cap2.gep573 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load541, i32 0, i32 2
  store i64 %b.new.cap559, ptr %b.new.cap2.gep573, align 8
  br label %b.grow_done554

str_overflow_abort568:                            ; preds = %b.grow2552
  %34 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2567

br.b1.17:                                         ; preds = %b.grow_done554
  store i8 46, ptr %b.rn.dst576, align 1
  br label %br.done.17

br.c2.17:                                         ; preds = %b.grow_done554
  br i1 true, label %br.b2.17, label %br.c3.17

br.b2.17:                                         ; preds = %br.c2.17
  store i8 -64, ptr %b.rn.dst576, align 1
  %br.dst1577 = getelementptr i8, ptr %b.rn.dst576, i64 1
  store i8 -82, ptr %br.dst1577, align 1
  br label %br.done.17

br.c3.17:                                         ; preds = %br.c2.17
  br i1 true, label %br.b3.17, label %br.b4.17

br.b3.17:                                         ; preds = %br.c3.17
  store i8 -32, ptr %b.rn.dst576, align 1
  %br.dst1.3578 = getelementptr i8, ptr %b.rn.dst576, i64 1
  store i8 -128, ptr %br.dst1.3578, align 1
  %br.dst2.3579 = getelementptr i8, ptr %b.rn.dst576, i64 2
  store i8 -82, ptr %br.dst2.3579, align 1
  br label %br.done.17

br.b4.17:                                         ; preds = %br.c3.17
  store i8 -16, ptr %b.rn.dst576, align 1
  %br.dst1.4580 = getelementptr i8, ptr %b.rn.dst576, i64 1
  store i8 -128, ptr %br.dst1.4580, align 1
  %br.dst2.4581 = getelementptr i8, ptr %b.rn.dst576, i64 2
  store i8 -128, ptr %br.dst2.4581, align 1
  %br.dst3.4582 = getelementptr i8, ptr %b.rn.dst576, i64 3
  store i8 -82, ptr %br.dst3.4582, align 1
  br label %br.done.17

br.done.17:                                       ; preds = %br.b4.17, %br.b3.17, %br.b2.17, %br.b1.17
  %br.nul583 = getelementptr i8, ptr %b.rn.data575, i64 %sum545
  store i8 0, ptr %br.nul583, align 1
  %b.len.gep584 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load541, i32 0, i32 0
  store i64 %sum545, ptr %b.len.gep584, align 8
  %var.load585 = load i64, ptr %var.en, align 8
  store i64 %var.load585, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.header.18:                                   ; preds = %loop.latch.18, %br.done.17
  %counter.load586 = load i64, ptr %loop.idx.18, align 8
  %loop.cond587 = icmp slt i64 %counter.load586, 6
  br i1 %loop.cond587, label %loop.body.18, label %loop.exit.nat.18

loop.body.18:                                     ; preds = %loop.header.18
  %loop.rel.i588 = sub i64 %counter.load586, %var.load585
  store i64 1, ptr %loop.step.18, align 8
  store i64 %loop.rel.i588, ptr %var._i589, align 8
  store i64 %counter.load586, ptr %var._590, align 8
  store i64 %counter.load586, ptr %var.i, align 8
  %var.load591 = load ptr, ptr %var.ms, align 8
  %s.read.len592 = getelementptr inbounds { i64, ptr }, ptr %var.load591, i32 0, i32 0
  %s.read.len593 = load i64, ptr %s.read.len592, align 8
  %s.read.len594 = and i64 %s.read.len593, 281474976710655
  %str.tag595 = lshr i64 %s.read.len593, 48
  %str.immortal596 = icmp eq i64 %str.tag595, 0
  br i1 %str.immortal596, label %str_ok598, label %str_gen_check597

loop.exit.nat.18:                                 ; preds = %loop.header.18
  br label %loop.exit.18

loop.latch.18:                                    ; preds = %b.push_done651
  %step.val673 = load i64, ptr %loop.step.18, align 8
  %loop.next674 = add i64 %counter.load586, %step.val673
  store i64 %loop.next674, ptr %loop.idx.18, align 8
  br label %loop.header.18

loop.exit.18:                                     ; preds = %loop.exit.nat.18
  br label %choice.exit540

str_gen_check597:                                 ; preds = %loop.body.18
  %arena.cur600 = call ptr @dva_arena_current()
  %tag.valid601 = call i1 @dva_arena_validate_tag(ptr %arena.cur600, i64 %str.tag595)
  br i1 %tag.valid601, label %str_ok598, label %str_stale599

str_ok598:                                        ; preds = %str_stale599, %str_gen_check597, %loop.body.18
  %s.read.data602 = getelementptr inbounds { i64, ptr }, ptr %var.load591, i32 0, i32 1
  %s.read.data603 = load ptr, ptr %s.read.data602, align 8
  %var.load604 = load i64, ptr %var.i, align 8
  %idx.neg605 = icmp slt i64 %var.load604, 0
  br i1 %idx.neg605, label %idx_oob608, label %idx_big_check606

str_stale599:                                     ; preds = %str_gen_check597
  %35 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok598

idx_big_check606:                                 ; preds = %str_ok598
  %idx.big609 = icmp sge i64 %var.load604, %s.read.len594
  br i1 %idx.big609, label %idx_oob608, label %idx_ok607

idx_ok607:                                        ; preds = %idx_oob608, %idx_big_check606
  %s.byte.gep610 = getelementptr i8, ptr %s.read.data603, i64 %var.load604
  %s.byte611 = load i8, ptr %s.byte.gep610, align 1
  %s.byte.val612 = zext i8 %s.byte611 to i64
  %b.load613 = load ptr, ptr %var.b, align 8
  %var.load614 = load ptr, ptr %var.ms, align 8
  %s.read.len615 = getelementptr inbounds { i64, ptr }, ptr %var.load614, i32 0, i32 0
  %s.read.len616 = load i64, ptr %s.read.len615, align 8
  %s.read.len617 = and i64 %s.read.len616, 281474976710655
  %str.tag618 = lshr i64 %s.read.len616, 48
  %str.immortal619 = icmp eq i64 %str.tag618, 0
  br i1 %str.immortal619, label %str_ok621, label %str_gen_check620

idx_oob608:                                       ; preds = %idx_big_check606, %str_ok598
  %36 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok607

str_gen_check620:                                 ; preds = %idx_ok607
  %arena.cur623 = call ptr @dva_arena_current()
  %tag.valid624 = call i1 @dva_arena_validate_tag(ptr %arena.cur623, i64 %str.tag618)
  br i1 %tag.valid624, label %str_ok621, label %str_stale622

str_ok621:                                        ; preds = %str_stale622, %str_gen_check620, %idx_ok607
  %s.read.data625 = getelementptr inbounds { i64, ptr }, ptr %var.load614, i32 0, i32 1
  %s.read.data626 = load ptr, ptr %s.read.data625, align 8
  %var.load627 = load i64, ptr %var.i, align 8
  %idx.neg628 = icmp slt i64 %var.load627, 0
  br i1 %idx.neg628, label %idx_oob631, label %idx_big_check629

str_stale622:                                     ; preds = %str_gen_check620
  %37 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok621

idx_big_check629:                                 ; preds = %str_ok621
  %idx.big632 = icmp sge i64 %var.load627, %s.read.len617
  br i1 %idx.big632, label %idx_oob631, label %idx_ok630

idx_ok630:                                        ; preds = %idx_oob631, %idx_big_check629
  %s.byte.gep633 = getelementptr i8, ptr %s.read.data626, i64 %var.load627
  %s.byte634 = load i8, ptr %s.byte.gep633, align 1
  %s.byte.val635 = zext i8 %s.byte634 to i64
  %b.b.ge0636 = icmp sge i64 %s.byte.val635, 0
  %b.b.le255637 = icmp sle i64 %s.byte.val635, 255
  %b.byte.range638 = and i1 %b.b.ge0636, %b.b.le255637
  br i1 %b.byte.range638, label %b.byte_ok639, label %b.byte_err640

idx_oob631:                                       ; preds = %idx_big_check629, %str_ok621
  %38 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok630

b.byte_ok639:                                     ; preds = %b.byte_err640, %idx_ok630
  %b.byte.i8641 = trunc i64 %s.byte.val635 to i8
  %b.len642 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load613, i32 0, i32 0
  %b.len643 = load i64, ptr %b.len642, align 8
  %b.cap644 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load613, i32 0, i32 2
  %b.cap645 = load i64, ptr %b.cap644, align 8
  %b.data646 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load613, i32 0, i32 1
  %b.data647 = load ptr, ptr %b.data646, align 8
  %b.needs.grow648 = icmp eq i64 %b.len643, %b.cap645
  br i1 %b.needs.grow648, label %b.grow649, label %b.nogrow650

b.byte_err640:                                    ; preds = %idx_ok630
  %39 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok639

b.grow649:                                        ; preds = %b.byte_ok639
  %b.cap2652 = mul i64 %b.cap645, 2
  %b.cap.small653 = icmp slt i64 %b.cap2652, 16
  %b.new.cap654 = select i1 %b.cap.small653, i64 16, i64 %b.cap2652
  %b.new.buf.len655 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap654, i64 1)
  %sum656 = extractvalue { i64, i1 } %b.new.buf.len655, 0
  %ovf657 = extractvalue { i64, i1 } %b.new.buf.len655, 1
  br i1 %ovf657, label %str_overflow_abort659, label %b.new.buf.len658

b.nogrow650:                                      ; preds = %b.byte_ok639
  br label %b.push_done651

b.push_done651:                                   ; preds = %b.nogrow650, %b.new.buf.len658
  %b.cur.data665 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load613, i32 0, i32 1
  %b.cur.data666 = load ptr, ptr %b.cur.data665, align 8
  %b.cur.len667 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load613, i32 0, i32 0
  %b.cur.len668 = load i64, ptr %b.cur.len667, align 8
  %b.byte.gep669 = getelementptr i8, ptr %b.cur.data666, i64 %b.cur.len668
  store i8 %b.byte.i8641, ptr %b.byte.gep669, align 1
  %b.next.len670 = add i64 %b.cur.len668, 1
  %b.nul671 = getelementptr i8, ptr %b.cur.data666, i64 %b.next.len670
  store i8 0, ptr %b.nul671, align 1
  %b.len.gep672 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load613, i32 0, i32 0
  store i64 %b.next.len670, ptr %b.len.gep672, align 8
  br label %loop.latch.18

b.new.buf.len658:                                 ; preds = %str_overflow_abort659, %b.grow649
  %arena.cur660 = call ptr @dva_arena_current()
  %b.new.buf661 = call ptr @dva_arena_alloc(ptr %arena.cur660, i64 %sum656)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf661, ptr align 1 %b.data647, i64 %b.len643, i1 false)
  %b.grow.nul662 = getelementptr i8, ptr %b.new.buf661, i64 %b.len643
  store i8 0, ptr %b.grow.nul662, align 1
  %b.new.data.gep663 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load613, i32 0, i32 1
  store ptr %b.new.buf661, ptr %b.new.data.gep663, align 8
  %b.new.cap.gep664 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load613, i32 0, i32 2
  store i64 %b.new.cap654, ptr %b.new.cap.gep664, align 8
  br label %b.push_done651

str_overflow_abort659:                            ; preds = %b.grow649
  %40 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len658

str_gen_check679:                                 ; preds = %choice.else443
  %arena.cur682 = call ptr @dva_arena_current()
  %tag.valid683 = call i1 @dva_arena_validate_tag(ptr %arena.cur682, i64 %str.tag677)
  br i1 %tag.valid683, label %str_ok680, label %str_stale681

str_ok680:                                        ; preds = %str_stale681, %str_gen_check679, %choice.else443
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 0
  %b.app.cur.len684 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len684, i64 %app.str.len676)
  %sum685 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf686 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf686, label %str_overflow_abort688, label %b.app.new.len687

str_stale681:                                     ; preds = %str_gen_check679
  %41 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok680

b.app.new.len687:                                 ; preds = %str_overflow_abort688, %str_ok680
  %b.cap689 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 2
  %b.cap690 = load i64, ptr %b.cap689, align 8
  %b.need.grow691 = icmp slt i64 %b.cap690, %sum685
  br i1 %b.need.grow691, label %b.grow2692, label %b.nogrow2693

str_overflow_abort688:                            ; preds = %str_ok680
  %42 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.app.new.len687

b.grow2692:                                       ; preds = %b.app.new.len687
  %b.cap2695 = mul i64 %b.cap690, 2
  %b.cap.small696 = icmp slt i64 %b.cap2695, 16
  %b.cap.grow697 = select i1 %b.cap.small696, i64 16, i64 %b.cap2695
  %b.cap.need698 = icmp slt i64 %b.cap.grow697, %sum685
  %b.new.cap699 = select i1 %b.cap.need698, i64 %sum685, i64 %b.cap.grow697
  %b.cur.len2700 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 0
  %b.cur.len2701 = load i64, ptr %b.cur.len2700, align 8
  %b.cur.data2702 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 1
  %b.cur.data2703 = load ptr, ptr %b.cur.data2702, align 8
  %b.new.buf.len2704 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap699, i64 1)
  %sum705 = extractvalue { i64, i1 } %b.new.buf.len2704, 0
  %ovf706 = extractvalue { i64, i1 } %b.new.buf.len2704, 1
  br i1 %ovf706, label %str_overflow_abort708, label %b.new.buf.len2707

b.nogrow2693:                                     ; preds = %b.app.new.len687
  br label %b.grow_done694

b.grow_done694:                                   ; preds = %b.nogrow2693, %b.new.buf.len2707
  %app.str.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 1
  %b.app.data714 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data714, i64 %b.app.cur.len684
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %app.str.data, i64 %app.str.len676, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data714, i64 %sum685
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep715 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 0
  store i64 %sum685, ptr %b.len.gep715, align 8
  %var.load716 = load i64, ptr %"var.e'", align 8
  %subtmp717 = sub i64 0, %var.load716
  %subtmp718 = sub i64 %subtmp717, 1
  store i64 0, ptr %loop.idx.19, align 8
  br label %loop.header.19

b.new.buf.len2707:                                ; preds = %str_overflow_abort708, %b.grow2692
  %arena.cur709 = call ptr @dva_arena_current()
  %b.new.buf2710 = call ptr @dva_arena_alloc(ptr %arena.cur709, i64 %sum705)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2710, ptr align 1 %b.cur.data2703, i64 %b.cur.len2701, i1 false)
  %b.grow2.nul711 = getelementptr i8, ptr %b.new.buf2710, i64 %b.cur.len2701
  store i8 0, ptr %b.grow2.nul711, align 1
  %b.new.data2.gep712 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 1
  store ptr %b.new.buf2710, ptr %b.new.data2.gep712, align 8
  %b.new.cap2.gep713 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load675, i32 0, i32 2
  store i64 %b.new.cap699, ptr %b.new.cap2.gep713, align 8
  br label %b.grow_done694

str_overflow_abort708:                            ; preds = %b.grow2692
  %43 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2707

loop.header.19:                                   ; preds = %loop.latch.19, %b.grow_done694
  %counter.load719 = load i64, ptr %loop.idx.19, align 8
  %loop.cond720 = icmp slt i64 %counter.load719, %subtmp718
  br i1 %loop.cond720, label %loop.body.19, label %loop.exit.nat.19

loop.body.19:                                     ; preds = %loop.header.19
  %loop.rel.i721 = sub i64 %counter.load719, 0
  store i64 1, ptr %loop.step.19, align 8
  store i64 %loop.rel.i721, ptr %var._i722, align 8
  store i64 %counter.load719, ptr %var._723, align 8
  store i64 %counter.load719, ptr %var.i, align 8
  %b.load724 = load ptr, ptr %var.b, align 8
  %b.rn.cur.len725 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load724, i32 0, i32 0
  %b.rn.cur.len726 = load i64, ptr %b.rn.cur.len725, align 8
  %b.rn.new.len727 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.rn.cur.len726, i64 1)
  %sum728 = extractvalue { i64, i1 } %b.rn.new.len727, 0
  %ovf729 = extractvalue { i64, i1 } %b.rn.new.len727, 1
  br i1 %ovf729, label %str_overflow_abort731, label %b.rn.new.len730

loop.exit.nat.19:                                 ; preds = %loop.header.19
  br label %loop.exit.19

loop.latch.19:                                    ; preds = %br.done.20
  %step.val768 = load i64, ptr %loop.step.19, align 8
  %loop.next769 = add i64 %counter.load719, %step.val768
  store i64 %loop.next769, ptr %loop.idx.19, align 8
  br label %loop.header.19

loop.exit.19:                                     ; preds = %loop.exit.nat.19
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

b.rn.new.len730:                                  ; preds = %str_overflow_abort731, %loop.body.19
  %b.cap732 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load724, i32 0, i32 2
  %b.cap733 = load i64, ptr %b.cap732, align 8
  %b.need.grow734 = icmp slt i64 %b.cap733, %sum728
  br i1 %b.need.grow734, label %b.grow2735, label %b.nogrow2736

str_overflow_abort731:                            ; preds = %loop.body.19
  %44 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.rn.new.len730

b.grow2735:                                       ; preds = %b.rn.new.len730
  %b.cap2738 = mul i64 %b.cap733, 2
  %b.cap.small739 = icmp slt i64 %b.cap2738, 16
  %b.cap.grow740 = select i1 %b.cap.small739, i64 16, i64 %b.cap2738
  %b.cap.need741 = icmp slt i64 %b.cap.grow740, %sum728
  %b.new.cap742 = select i1 %b.cap.need741, i64 %sum728, i64 %b.cap.grow740
  %b.cur.len2743 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load724, i32 0, i32 0
  %b.cur.len2744 = load i64, ptr %b.cur.len2743, align 8
  %b.cur.data2745 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load724, i32 0, i32 1
  %b.cur.data2746 = load ptr, ptr %b.cur.data2745, align 8
  %b.new.buf.len2747 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap742, i64 1)
  %sum748 = extractvalue { i64, i1 } %b.new.buf.len2747, 0
  %ovf749 = extractvalue { i64, i1 } %b.new.buf.len2747, 1
  br i1 %ovf749, label %str_overflow_abort751, label %b.new.buf.len2750

b.nogrow2736:                                     ; preds = %b.rn.new.len730
  br label %b.grow_done737

b.grow_done737:                                   ; preds = %b.nogrow2736, %b.new.buf.len2750
  %b.rn.data757 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load724, i32 0, i32 1
  %b.rn.data758 = load ptr, ptr %b.rn.data757, align 8
  %b.rn.dst759 = getelementptr i8, ptr %b.rn.data758, i64 %b.rn.cur.len726
  br i1 true, label %br.b1.20, label %br.c2.20

b.new.buf.len2750:                                ; preds = %str_overflow_abort751, %b.grow2735
  %arena.cur752 = call ptr @dva_arena_current()
  %b.new.buf2753 = call ptr @dva_arena_alloc(ptr %arena.cur752, i64 %sum748)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2753, ptr align 1 %b.cur.data2746, i64 %b.cur.len2744, i1 false)
  %b.grow2.nul754 = getelementptr i8, ptr %b.new.buf2753, i64 %b.cur.len2744
  store i8 0, ptr %b.grow2.nul754, align 1
  %b.new.data2.gep755 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load724, i32 0, i32 1
  store ptr %b.new.buf2753, ptr %b.new.data2.gep755, align 8
  %b.new.cap2.gep756 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load724, i32 0, i32 2
  store i64 %b.new.cap742, ptr %b.new.cap2.gep756, align 8
  br label %b.grow_done737

str_overflow_abort751:                            ; preds = %b.grow2735
  %45 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len2750

br.b1.20:                                         ; preds = %b.grow_done737
  store i8 48, ptr %b.rn.dst759, align 1
  br label %br.done.20

br.c2.20:                                         ; preds = %b.grow_done737
  br i1 true, label %br.b2.20, label %br.c3.20

br.b2.20:                                         ; preds = %br.c2.20
  store i8 -64, ptr %b.rn.dst759, align 1
  %br.dst1760 = getelementptr i8, ptr %b.rn.dst759, i64 1
  store i8 -80, ptr %br.dst1760, align 1
  br label %br.done.20

br.c3.20:                                         ; preds = %br.c2.20
  br i1 true, label %br.b3.20, label %br.b4.20

br.b3.20:                                         ; preds = %br.c3.20
  store i8 -32, ptr %b.rn.dst759, align 1
  %br.dst1.3761 = getelementptr i8, ptr %b.rn.dst759, i64 1
  store i8 -128, ptr %br.dst1.3761, align 1
  %br.dst2.3762 = getelementptr i8, ptr %b.rn.dst759, i64 2
  store i8 -80, ptr %br.dst2.3762, align 1
  br label %br.done.20

br.b4.20:                                         ; preds = %br.c3.20
  store i8 -16, ptr %b.rn.dst759, align 1
  %br.dst1.4763 = getelementptr i8, ptr %b.rn.dst759, i64 1
  store i8 -128, ptr %br.dst1.4763, align 1
  %br.dst2.4764 = getelementptr i8, ptr %b.rn.dst759, i64 2
  store i8 -128, ptr %br.dst2.4764, align 1
  %br.dst3.4765 = getelementptr i8, ptr %b.rn.dst759, i64 3
  store i8 -80, ptr %br.dst3.4765, align 1
  br label %br.done.20

br.done.20:                                       ; preds = %br.b4.20, %br.b3.20, %br.b2.20, %br.b1.20
  %br.nul766 = getelementptr i8, ptr %b.rn.data758, i64 %sum728
  store i8 0, ptr %br.nul766, align 1
  %b.len.gep767 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load724, i32 0, i32 0
  store i64 %sum728, ptr %b.len.gep767, align 8
  br label %loop.latch.19

loop.header.21:                                   ; preds = %loop.latch.21, %loop.exit.19
  %counter.load770 = load i64, ptr %loop.idx.21, align 8
  %loop.cond771 = icmp slt i64 %counter.load770, 6
  br i1 %loop.cond771, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i772 = sub i64 %counter.load770, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i772, ptr %var._i773, align 8
  store i64 %counter.load770, ptr %var._774, align 8
  store i64 %counter.load770, ptr %var.i, align 8
  %var.load775 = load ptr, ptr %var.ms, align 8
  %s.read.len776 = getelementptr inbounds { i64, ptr }, ptr %var.load775, i32 0, i32 0
  %s.read.len777 = load i64, ptr %s.read.len776, align 8
  %s.read.len778 = and i64 %s.read.len777, 281474976710655
  %str.tag779 = lshr i64 %s.read.len777, 48
  %str.immortal780 = icmp eq i64 %str.tag779, 0
  br i1 %str.immortal780, label %str_ok782, label %str_gen_check781

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %b.push_done835
  %step.val857 = load i64, ptr %loop.step.21, align 8
  %loop.next858 = add i64 %counter.load770, %step.val857
  store i64 %loop.next858, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  br label %choice.exit444

str_gen_check781:                                 ; preds = %loop.body.21
  %arena.cur784 = call ptr @dva_arena_current()
  %tag.valid785 = call i1 @dva_arena_validate_tag(ptr %arena.cur784, i64 %str.tag779)
  br i1 %tag.valid785, label %str_ok782, label %str_stale783

str_ok782:                                        ; preds = %str_stale783, %str_gen_check781, %loop.body.21
  %s.read.data786 = getelementptr inbounds { i64, ptr }, ptr %var.load775, i32 0, i32 1
  %s.read.data787 = load ptr, ptr %s.read.data786, align 8
  %var.load788 = load i64, ptr %var.i, align 8
  %idx.neg789 = icmp slt i64 %var.load788, 0
  br i1 %idx.neg789, label %idx_oob792, label %idx_big_check790

str_stale783:                                     ; preds = %str_gen_check781
  %46 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok782

idx_big_check790:                                 ; preds = %str_ok782
  %idx.big793 = icmp sge i64 %var.load788, %s.read.len778
  br i1 %idx.big793, label %idx_oob792, label %idx_ok791

idx_ok791:                                        ; preds = %idx_oob792, %idx_big_check790
  %s.byte.gep794 = getelementptr i8, ptr %s.read.data787, i64 %var.load788
  %s.byte795 = load i8, ptr %s.byte.gep794, align 1
  %s.byte.val796 = zext i8 %s.byte795 to i64
  %b.load797 = load ptr, ptr %var.b, align 8
  %var.load798 = load ptr, ptr %var.ms, align 8
  %s.read.len799 = getelementptr inbounds { i64, ptr }, ptr %var.load798, i32 0, i32 0
  %s.read.len800 = load i64, ptr %s.read.len799, align 8
  %s.read.len801 = and i64 %s.read.len800, 281474976710655
  %str.tag802 = lshr i64 %s.read.len800, 48
  %str.immortal803 = icmp eq i64 %str.tag802, 0
  br i1 %str.immortal803, label %str_ok805, label %str_gen_check804

idx_oob792:                                       ; preds = %idx_big_check790, %str_ok782
  %47 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok791

str_gen_check804:                                 ; preds = %idx_ok791
  %arena.cur807 = call ptr @dva_arena_current()
  %tag.valid808 = call i1 @dva_arena_validate_tag(ptr %arena.cur807, i64 %str.tag802)
  br i1 %tag.valid808, label %str_ok805, label %str_stale806

str_ok805:                                        ; preds = %str_stale806, %str_gen_check804, %idx_ok791
  %s.read.data809 = getelementptr inbounds { i64, ptr }, ptr %var.load798, i32 0, i32 1
  %s.read.data810 = load ptr, ptr %s.read.data809, align 8
  %var.load811 = load i64, ptr %var.i, align 8
  %idx.neg812 = icmp slt i64 %var.load811, 0
  br i1 %idx.neg812, label %idx_oob815, label %idx_big_check813

str_stale806:                                     ; preds = %str_gen_check804
  %48 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok805

idx_big_check813:                                 ; preds = %str_ok805
  %idx.big816 = icmp sge i64 %var.load811, %s.read.len801
  br i1 %idx.big816, label %idx_oob815, label %idx_ok814

idx_ok814:                                        ; preds = %idx_oob815, %idx_big_check813
  %s.byte.gep817 = getelementptr i8, ptr %s.read.data810, i64 %var.load811
  %s.byte818 = load i8, ptr %s.byte.gep817, align 1
  %s.byte.val819 = zext i8 %s.byte818 to i64
  %b.b.ge0820 = icmp sge i64 %s.byte.val819, 0
  %b.b.le255821 = icmp sle i64 %s.byte.val819, 255
  %b.byte.range822 = and i1 %b.b.ge0820, %b.b.le255821
  br i1 %b.byte.range822, label %b.byte_ok823, label %b.byte_err824

idx_oob815:                                       ; preds = %idx_big_check813, %str_ok805
  %49 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok814

b.byte_ok823:                                     ; preds = %b.byte_err824, %idx_ok814
  %b.byte.i8825 = trunc i64 %s.byte.val819 to i8
  %b.len826 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load797, i32 0, i32 0
  %b.len827 = load i64, ptr %b.len826, align 8
  %b.cap828 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load797, i32 0, i32 2
  %b.cap829 = load i64, ptr %b.cap828, align 8
  %b.data830 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load797, i32 0, i32 1
  %b.data831 = load ptr, ptr %b.data830, align 8
  %b.needs.grow832 = icmp eq i64 %b.len827, %b.cap829
  br i1 %b.needs.grow832, label %b.grow833, label %b.nogrow834

b.byte_err824:                                    ; preds = %idx_ok814
  %50 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  br label %b.byte_ok823

b.grow833:                                        ; preds = %b.byte_ok823
  %b.cap2836 = mul i64 %b.cap829, 2
  %b.cap.small837 = icmp slt i64 %b.cap2836, 16
  %b.new.cap838 = select i1 %b.cap.small837, i64 16, i64 %b.cap2836
  %b.new.buf.len839 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap838, i64 1)
  %sum840 = extractvalue { i64, i1 } %b.new.buf.len839, 0
  %ovf841 = extractvalue { i64, i1 } %b.new.buf.len839, 1
  br i1 %ovf841, label %str_overflow_abort843, label %b.new.buf.len842

b.nogrow834:                                      ; preds = %b.byte_ok823
  br label %b.push_done835

b.push_done835:                                   ; preds = %b.nogrow834, %b.new.buf.len842
  %b.cur.data849 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load797, i32 0, i32 1
  %b.cur.data850 = load ptr, ptr %b.cur.data849, align 8
  %b.cur.len851 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load797, i32 0, i32 0
  %b.cur.len852 = load i64, ptr %b.cur.len851, align 8
  %b.byte.gep853 = getelementptr i8, ptr %b.cur.data850, i64 %b.cur.len852
  store i8 %b.byte.i8825, ptr %b.byte.gep853, align 1
  %b.next.len854 = add i64 %b.cur.len852, 1
  %b.nul855 = getelementptr i8, ptr %b.cur.data850, i64 %b.next.len854
  store i8 0, ptr %b.nul855, align 1
  %b.len.gep856 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load797, i32 0, i32 0
  store i64 %b.next.len854, ptr %b.len.gep856, align 8
  br label %loop.latch.21

b.new.buf.len842:                                 ; preds = %str_overflow_abort843, %b.grow833
  %arena.cur844 = call ptr @dva_arena_current()
  %b.new.buf845 = call ptr @dva_arena_alloc(ptr %arena.cur844, i64 %sum840)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf845, ptr align 1 %b.data831, i64 %b.len827, i1 false)
  %b.grow.nul846 = getelementptr i8, ptr %b.new.buf845, i64 %b.len827
  store i8 0, ptr %b.grow.nul846, align 1
  %b.new.data.gep847 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load797, i32 0, i32 1
  store ptr %b.new.buf845, ptr %b.new.data.gep847, align 8
  %b.new.cap.gep848 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load797, i32 0, i32 2
  store i64 %b.new.cap838, ptr %b.new.cap.gep848, align 8
  br label %b.push_done835

str_overflow_abort843:                            ; preds = %b.grow833
  %51 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.new.buf.len842

b.freeze.check868:                                ; preds = %choice.exit228
  %b.freeze.last.idx871 = sub i64 %b.freeze.nc866, 1
  %b.freeze.chunks.gep872 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena864, i32 0, i32 3
  %b.freeze.chunk.slot873 = getelementptr [4096 x ptr], ptr %b.freeze.chunks.gep872, i64 0, i64 %b.freeze.last.idx871
  %b.freeze.last.chunk874 = load ptr, ptr %b.freeze.chunk.slot873, align 8
  %b.freeze.off.gep875 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena864, i32 0, i32 2
  %b.freeze.off876 = load i64, ptr %b.freeze.off.gep875, align 8
  %b.freeze.bump877 = getelementptr i8, ptr %b.freeze.last.chunk874, i64 %b.freeze.off876
  %b.freeze.cap.gep878 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena864, i32 0, i32 0
  %b.freeze.cap879 = load i64, ptr %b.freeze.cap.gep878, align 8
  %b.freeze.chunk.end880 = getelementptr i8, ptr %b.freeze.last.chunk874, i64 %b.freeze.cap879
  %b.freeze.ge.chunk881 = icmp uge ptr %b.freeze.data863, %b.freeze.last.chunk874
  %b.freeze.lt.end882 = icmp ult ptr %b.freeze.data863, %b.freeze.chunk.end880
  %b.freeze.in.chunk883 = and i1 %b.freeze.ge.chunk881, %b.freeze.lt.end882
  %b.freeze.ge.bump884 = icmp uge ptr %b.freeze.data863, %b.freeze.bump877
  %b.freeze.reaped885 = and i1 %b.freeze.in.chunk883, %b.freeze.ge.bump884
  br i1 %b.freeze.reaped885, label %b.freeze.copy869, label %b.freeze.done870

b.freeze.copy869:                                 ; preds = %b.freeze.check868
  %arena.cur886 = call ptr @dva_arena_current()
  %b.freeze.fresh887 = call ptr @dva_arena_alloc(ptr %arena.cur886, i64 %b.freeze.len861)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh887, ptr align 1 %b.freeze.data863, i64 %b.freeze.len861, i1 false)
  br label %b.freeze.done870

b.freeze.done870:                                 ; preds = %b.freeze.copy869, %b.freeze.check868, %choice.exit228
  %b.freeze.data888 = phi ptr [ %b.freeze.data863, %choice.exit228 ], [ %b.freeze.data863, %b.freeze.check868 ], [ %b.freeze.fresh887, %b.freeze.copy869 ]
  %arena.cur889 = call ptr @dva_arena_current()
  %builder.freeze890 = call ptr @dva_arena_alloc(ptr %arena.cur889, i64 16)
  %str.build.len.gep891 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze890, i32 0, i32 0
  store i64 %b.freeze.len861, ptr %str.build.len.gep891, align 8
  %str.build.data.gep892 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze890, i32 0, i32 1
  store ptr %b.freeze.data888, ptr %str.build.data.gep892, align 8
  %b.freeze.rst.len893 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load859, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len893, align 8
  %b.freeze.rst.data894 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load859, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data894, align 8
  %b.freeze.rst.cap895 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load859, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap895, align 8
  store ptr %builder.freeze890, ptr %var.full, align 8
  store i64 -1, ptr %"var.dot_pos'", align 8
  %var.load896 = load ptr, ptr %var.full, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load896, i32 0, i32 0
  %str.len.query897 = load i64, ptr %str.len.query, align 8
  %str.len.query898 = and i64 %str.len.query897, 281474976710655
  %str.tag899 = lshr i64 %str.len.query897, 48
  %str.immortal900 = icmp eq i64 %str.tag899, 0
  br i1 %str.immortal900, label %str_ok902, label %str_gen_check901

str_gen_check901:                                 ; preds = %b.freeze.done870
  %arena.cur904 = call ptr @dva_arena_current()
  %tag.valid905 = call i1 @dva_arena_validate_tag(ptr %arena.cur904, i64 %str.tag899)
  br i1 %tag.valid905, label %str_ok902, label %str_stale903

str_ok902:                                        ; preds = %str_stale903, %str_gen_check901, %b.freeze.done870
  store i64 0, ptr %loop.idx.22, align 8
  br label %loop.header.22

str_stale903:                                     ; preds = %str_gen_check901
  %52 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok902

loop.header.22:                                   ; preds = %loop.latch.22, %str_ok902
  %counter.load906 = load i64, ptr %loop.idx.22, align 8
  %loop.cond907 = icmp slt i64 %counter.load906, %str.len.query898
  br i1 %loop.cond907, label %loop.body.22, label %loop.exit.nat.22

loop.body.22:                                     ; preds = %loop.header.22
  %loop.rel.i908 = sub i64 %counter.load906, 0
  store i64 1, ptr %loop.step.22, align 8
  store i64 %loop.rel.i908, ptr %var._i909, align 8
  store i64 %counter.load906, ptr %var._910, align 8
  store i64 %counter.load906, ptr %var.i, align 8
  %var.load911 = load ptr, ptr %var.full, align 8
  %s.read.len912 = getelementptr inbounds { i64, ptr }, ptr %var.load911, i32 0, i32 0
  %s.read.len913 = load i64, ptr %s.read.len912, align 8
  %s.read.len914 = and i64 %s.read.len913, 281474976710655
  %str.tag915 = lshr i64 %s.read.len913, 48
  %str.immortal916 = icmp eq i64 %str.tag915, 0
  br i1 %str.immortal916, label %str_ok918, label %str_gen_check917

loop.exit.nat.22:                                 ; preds = %loop.header.22
  br label %loop.exit.22

loop.latch.22:                                    ; preds = %choice.exit935
  %step.val937 = load i64, ptr %loop.step.22, align 8
  %loop.next938 = add i64 %counter.load906, %step.val937
  store i64 %loop.next938, ptr %loop.idx.22, align 8
  br label %loop.header.22

loop.exit.22:                                     ; preds = %loop.exit.nat.22
  %var.load939 = load ptr, ptr %var.full, align 8
  %str.len.query940 = getelementptr inbounds { i64, ptr }, ptr %var.load939, i32 0, i32 0
  %str.len.query941 = load i64, ptr %str.len.query940, align 8
  %str.len.query942 = and i64 %str.len.query941, 281474976710655
  %str.tag943 = lshr i64 %str.len.query941, 48
  %str.immortal944 = icmp eq i64 %str.tag943, 0
  br i1 %str.immortal944, label %str_ok946, label %str_gen_check945

str_gen_check917:                                 ; preds = %loop.body.22
  %arena.cur920 = call ptr @dva_arena_current()
  %tag.valid921 = call i1 @dva_arena_validate_tag(ptr %arena.cur920, i64 %str.tag915)
  br i1 %tag.valid921, label %str_ok918, label %str_stale919

str_ok918:                                        ; preds = %str_stale919, %str_gen_check917, %loop.body.22
  %s.read.data922 = getelementptr inbounds { i64, ptr }, ptr %var.load911, i32 0, i32 1
  %s.read.data923 = load ptr, ptr %s.read.data922, align 8
  %var.load924 = load i64, ptr %var.i, align 8
  %idx.neg925 = icmp slt i64 %var.load924, 0
  br i1 %idx.neg925, label %idx_oob928, label %idx_big_check926

str_stale919:                                     ; preds = %str_gen_check917
  %53 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok918

idx_big_check926:                                 ; preds = %str_ok918
  %idx.big929 = icmp sge i64 %var.load924, %s.read.len914
  br i1 %idx.big929, label %idx_oob928, label %idx_ok927

idx_ok927:                                        ; preds = %idx_oob928, %idx_big_check926
  %s.byte.gep930 = getelementptr i8, ptr %s.read.data923, i64 %var.load924
  %s.byte931 = load i8, ptr %s.byte.gep930, align 1
  %s.byte.val932 = zext i8 %s.byte931 to i64
  %cmptmp933 = icmp eq i64 %s.byte.val932, 46
  br i1 %cmptmp933, label %choice.then934, label %choice.exit935

idx_oob928:                                       ; preds = %idx_big_check926, %str_ok918
  %54 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok927

choice.then934:                                   ; preds = %idx_ok927
  %var.load936 = load i64, ptr %var.i, align 8
  store i64 %var.load936, ptr %"var.dot_pos'", align 8
  br label %choice.exit935

choice.exit935:                                   ; preds = %choice.then934, %idx_ok927
  br label %loop.latch.22

str_gen_check945:                                 ; preds = %loop.exit.22
  %arena.cur948 = call ptr @dva_arena_current()
  %tag.valid949 = call i1 @dva_arena_validate_tag(ptr %arena.cur948, i64 %str.tag943)
  br i1 %tag.valid949, label %str_ok946, label %str_stale947

str_ok946:                                        ; preds = %str_stale947, %str_gen_check945, %loop.exit.22
  store i64 %str.len.query942, ptr %var.len, align 8
  %var.load950 = load i64, ptr %var.len, align 8
  store i64 %var.load950, ptr %"var.end'", align 8
  %var.load951 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp952 = icmp sge i64 %var.load951, 0
  br i1 %cmptmp952, label %choice.then953, label %choice.exit954

str_stale947:                                     ; preds = %str_gen_check945
  %55 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok946

choice.then953:                                   ; preds = %str_ok946
  store i64 0, ptr %loop.idx.23, align 8
  br label %loop.header.23

choice.exit954:                                   ; preds = %choice.exit999, %str_ok946
  %var.load1001 = load ptr, ptr %var.full, align 8
  %s.read.len1002 = getelementptr inbounds { i64, ptr }, ptr %var.load1001, i32 0, i32 0
  %s.read.len1003 = load i64, ptr %s.read.len1002, align 8
  %s.read.len1004 = and i64 %s.read.len1003, 281474976710655
  %str.tag1005 = lshr i64 %s.read.len1003, 48
  %str.immortal1006 = icmp eq i64 %str.tag1005, 0
  br i1 %str.immortal1006, label %str_ok1008, label %str_gen_check1007

loop.header.23:                                   ; preds = %loop.latch.23, %choice.then953
  %counter.load955 = load i64, ptr %loop.idx.23, align 8
  br label %loop.body.23

loop.body.23:                                     ; preds = %loop.header.23
  %loop.rel.i956 = sub i64 %counter.load955, 0
  store i64 1, ptr %loop.step.23, align 8
  store i64 %loop.rel.i956, ptr %var._i957, align 8
  store i64 %counter.load955, ptr %var._958, align 8
  %var.load959 = load i64, ptr %"var.end'", align 8
  %subtmp960 = sub i64 %var.load959, 1
  %var.load961 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp962 = icmp sgt i64 %subtmp960, %var.load961
  br i1 %cmptmp962, label %and.24.then, label %and.24.else

loop.exit.nat.23:                                 ; No predecessors!
  br label %loop.exit.23

loop.latch.23:                                    ; preds = %choice.exit989
  %step.val992 = load i64, ptr %loop.step.23, align 8
  %loop.next993 = add i64 %counter.load955, %step.val992
  store i64 %loop.next993, ptr %loop.idx.23, align 8
  br label %loop.header.23

loop.exit.23:                                     ; preds = %choice.else988, %loop.exit.nat.23
  %var.load994 = load i64, ptr %"var.end'", align 8
  %subtmp995 = sub i64 %var.load994, 1
  %var.load996 = load i64, ptr %"var.dot_pos'", align 8
  %cmptmp997 = icmp eq i64 %subtmp995, %var.load996
  br i1 %cmptmp997, label %choice.then998, label %choice.exit999

and.24.then:                                      ; preds = %loop.body.23
  %var.load963 = load ptr, ptr %var.full, align 8
  %s.read.len964 = getelementptr inbounds { i64, ptr }, ptr %var.load963, i32 0, i32 0
  %s.read.len965 = load i64, ptr %s.read.len964, align 8
  %s.read.len966 = and i64 %s.read.len965, 281474976710655
  %str.tag967 = lshr i64 %s.read.len965, 48
  %str.immortal968 = icmp eq i64 %str.tag967, 0
  br i1 %str.immortal968, label %str_ok970, label %str_gen_check969

and.24.else:                                      ; preds = %loop.body.23
  br label %and.24.exit

and.24.exit:                                      ; preds = %and.24.else, %idx_ok980
  %and.24.phi = phi i1 [ %cmptmp986, %idx_ok980 ], [ %cmptmp962, %and.24.else ]
  br i1 %and.24.phi, label %choice.then987, label %choice.else988

str_gen_check969:                                 ; preds = %and.24.then
  %arena.cur972 = call ptr @dva_arena_current()
  %tag.valid973 = call i1 @dva_arena_validate_tag(ptr %arena.cur972, i64 %str.tag967)
  br i1 %tag.valid973, label %str_ok970, label %str_stale971

str_ok970:                                        ; preds = %str_stale971, %str_gen_check969, %and.24.then
  %s.read.data974 = getelementptr inbounds { i64, ptr }, ptr %var.load963, i32 0, i32 1
  %s.read.data975 = load ptr, ptr %s.read.data974, align 8
  %var.load976 = load i64, ptr %"var.end'", align 8
  %subtmp977 = sub i64 %var.load976, 1
  %idx.neg978 = icmp slt i64 %subtmp977, 0
  br i1 %idx.neg978, label %idx_oob981, label %idx_big_check979

str_stale971:                                     ; preds = %str_gen_check969
  %56 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok970

idx_big_check979:                                 ; preds = %str_ok970
  %idx.big982 = icmp sge i64 %subtmp977, %s.read.len966
  br i1 %idx.big982, label %idx_oob981, label %idx_ok980

idx_ok980:                                        ; preds = %idx_oob981, %idx_big_check979
  %s.byte.gep983 = getelementptr i8, ptr %s.read.data975, i64 %subtmp977
  %s.byte984 = load i8, ptr %s.byte.gep983, align 1
  %s.byte.val985 = zext i8 %s.byte984 to i64
  %cmptmp986 = icmp eq i64 %s.byte.val985, 48
  br label %and.24.exit

idx_oob981:                                       ; preds = %idx_big_check979, %str_ok970
  %57 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  br label %idx_ok980

choice.then987:                                   ; preds = %and.24.exit
  %var.load990 = load i64, ptr %"var.end'", align 8
  %subtmp991 = sub i64 %var.load990, 1
  store i64 %subtmp991, ptr %"var.end'", align 8
  br label %choice.exit989

choice.else988:                                   ; preds = %and.24.exit
  br label %loop.exit.23

choice.exit989:                                   ; preds = %choice.then987
  br label %loop.latch.23

choice.then998:                                   ; preds = %loop.exit.23
  %var.load1000 = load i64, ptr %"var.dot_pos'", align 8
  store i64 %var.load1000, ptr %"var.end'", align 8
  br label %choice.exit999

choice.exit999:                                   ; preds = %choice.then998, %loop.exit.23
  br label %choice.exit954

str_gen_check1007:                                ; preds = %choice.exit954
  %arena.cur1010 = call ptr @dva_arena_current()
  %tag.valid1011 = call i1 @dva_arena_validate_tag(ptr %arena.cur1010, i64 %str.tag1005)
  br i1 %tag.valid1011, label %str_ok1008, label %str_stale1009

str_ok1008:                                       ; preds = %str_stale1009, %str_gen_check1007, %choice.exit954
  %s.read.data1012 = getelementptr inbounds { i64, ptr }, ptr %var.load1001, i32 0, i32 1
  %s.read.data1013 = load ptr, ptr %s.read.data1012, align 8
  %var.load1014 = load i64, ptr %"var.end'", align 8
  %rel.start = add i64 %s.read.len1004, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len1004
  %final.start = select i1 %start.gt.len, i64 %s.read.len1004, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load1014, 0
  %rel.end = add i64 %s.read.len1004, %var.load1014
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load1014
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len1004
  %final.end = select i1 %end.gt.len, i64 %s.read.len1004, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data1013, i64 %final.start
  %arena.cur1015 = call ptr @dva_arena_current()
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur1015, i64 16)
  %str.build.len.gep1016 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep1016, align 8
  %str.build.data.gep1017 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep1017, align 8
  store ptr %str.view, ptr %var.mant, align 8
  %var.load1018 = load i64, ptr %"var.e'", align 8
  %cmptmp1019 = icmp slt i64 %var.load1018, 0
  br i1 %cmptmp1019, label %choice.then1020, label %choice.else1021

str_stale1009:                                    ; preds = %str_gen_check1007
  %58 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1008

choice.then1020:                                  ; preds = %str_ok1008
  %var.load1023 = load i64, ptr %"var.e'", align 8
  %subtmp1024 = sub i64 0, %var.load1023
  %call.res1025 = call ptr @"str::from_int"(i64 %subtmp1024)
  %concat.lhs = load i64, ptr @str.7.struct, align 8
  %concat.lhs1026 = and i64 %concat.lhs, 281474976710655
  %str.tag1027 = lshr i64 %concat.lhs, 48
  %str.immortal1028 = icmp eq i64 %str.tag1027, 0
  br i1 %str.immortal1028, label %str_ok1030, label %str_gen_check1029

choice.else1021:                                  ; preds = %str_ok1008
  %var.load1058 = load i64, ptr %"var.e'", align 8
  %call.res1059 = call ptr @"str::from_int"(i64 %var.load1058)
  br label %choice.exit1022

choice.exit1022:                                  ; preds = %choice.else1021, %concat.tot.len1052
  %choice.res1060 = phi ptr [ %concat.str, %concat.tot.len1052 ], [ %call.res1059, %choice.else1021 ]
  store ptr %choice.res1060, ptr %var.es, align 8
  %var.load1061 = load i64, ptr %"var.e'", align 8
  %cmptmp1062 = icmp slt i64 %var.load1061, -4
  br i1 %cmptmp1062, label %or.25.then, label %or.25.else

str_gen_check1029:                                ; preds = %choice.then1020
  %arena.cur1032 = call ptr @dva_arena_current()
  %tag.valid1033 = call i1 @dva_arena_validate_tag(ptr %arena.cur1032, i64 %str.tag1027)
  br i1 %tag.valid1033, label %str_ok1030, label %str_stale1031

str_ok1030:                                       ; preds = %str_stale1031, %str_gen_check1029, %choice.then1020
  %concat.lhs1034 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %call.res1025, i32 0, i32 0
  %concat.rhs1035 = load i64, ptr %concat.rhs, align 8
  %concat.rhs1036 = and i64 %concat.rhs1035, 281474976710655
  %str.tag1037 = lshr i64 %concat.rhs1035, 48
  %str.immortal1038 = icmp eq i64 %str.tag1037, 0
  br i1 %str.immortal1038, label %str_ok1040, label %str_gen_check1039

str_stale1031:                                    ; preds = %str_gen_check1029
  %59 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1030

str_gen_check1039:                                ; preds = %str_ok1030
  %arena.cur1042 = call ptr @dva_arena_current()
  %tag.valid1043 = call i1 @dva_arena_validate_tag(ptr %arena.cur1042, i64 %str.tag1037)
  br i1 %tag.valid1043, label %str_ok1040, label %str_stale1041

str_ok1040:                                       ; preds = %str_stale1041, %str_gen_check1039, %str_ok1030
  %concat.rhs1044 = getelementptr inbounds { i64, ptr }, ptr %call.res1025, i32 0, i32 1
  %concat.rhs1045 = load ptr, ptr %concat.rhs1044, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1026, i64 %concat.rhs1036)
  %sum1046 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf1047 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf1047, label %str_overflow_abort1049, label %concat.sum.len1048

str_stale1041:                                    ; preds = %str_gen_check1039
  %60 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1040

concat.sum.len1048:                               ; preds = %str_overflow_abort1049, %str_ok1040
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1046, i64 1)
  %sum1050 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf1051 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf1051, label %str_overflow_abort1053, label %concat.tot.len1052

str_overflow_abort1049:                           ; preds = %str_ok1040
  %61 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1048

concat.tot.len1052:                               ; preds = %str_overflow_abort1053, %concat.sum.len1048
  %arena.cur1054 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur1054, i64 %sum1050)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs1034, i64 %concat.lhs1026, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs1026
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs1045, i64 %concat.rhs1036, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum1046
  store i8 0, ptr %concat.nul, align 1
  %arena.cur1055 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur1055, i64 16)
  %str.build.len.gep1056 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum1046, ptr %str.build.len.gep1056, align 8
  %str.build.data.gep1057 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep1057, align 8
  br label %choice.exit1022

str_overflow_abort1053:                           ; preds = %concat.sum.len1048
  %62 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1052

or.25.then:                                       ; preds = %choice.exit1022
  br label %or.25.exit

or.25.else:                                       ; preds = %choice.exit1022
  %var.load1063 = load i64, ptr %"var.e'", align 8
  %cmptmp1064 = icmp sge i64 %var.load1063, 6
  br label %or.25.exit

or.25.exit:                                       ; preds = %or.25.else, %or.25.then
  %or.25.phi = phi i1 [ %cmptmp1062, %or.25.then ], [ %cmptmp1064, %or.25.else ]
  br i1 %or.25.phi, label %choice.then1065, label %choice.else1066

choice.then1065:                                  ; preds = %or.25.exit
  %var.load1068 = load ptr, ptr %var.mant, align 8
  %concat.lhs1069 = getelementptr inbounds { i64, ptr }, ptr %var.load1068, i32 0, i32 0
  %concat.lhs1070 = load i64, ptr %concat.lhs1069, align 8
  %concat.lhs1071 = and i64 %concat.lhs1070, 281474976710655
  %str.tag1072 = lshr i64 %concat.lhs1070, 48
  %str.immortal1073 = icmp eq i64 %str.tag1072, 0
  br i1 %str.immortal1073, label %str_ok1075, label %str_gen_check1074

choice.else1066:                                  ; preds = %or.25.exit
  %var.load1152 = load ptr, ptr %var.mant, align 8
  br label %choice.exit1067

choice.exit1067:                                  ; preds = %choice.else1066, %concat.tot.len1142
  %choice.res1153 = phi ptr [ %concat.str1149, %concat.tot.len1142 ], [ %var.load1152, %choice.else1066 ]
  ret ptr %choice.res1153

str_gen_check1074:                                ; preds = %choice.then1065
  %arena.cur1077 = call ptr @dva_arena_current()
  %tag.valid1078 = call i1 @dva_arena_validate_tag(ptr %arena.cur1077, i64 %str.tag1072)
  br i1 %tag.valid1078, label %str_ok1075, label %str_stale1076

str_ok1075:                                       ; preds = %str_stale1076, %str_gen_check1074, %choice.then1065
  %concat.lhs1079 = getelementptr inbounds { i64, ptr }, ptr %var.load1068, i32 0, i32 1
  %concat.lhs1080 = load ptr, ptr %concat.lhs1079, align 8
  %concat.rhs1081 = load i64, ptr @str.8.struct, align 8
  %concat.rhs1082 = and i64 %concat.rhs1081, 281474976710655
  %str.tag1083 = lshr i64 %concat.rhs1081, 48
  %str.immortal1084 = icmp eq i64 %str.tag1083, 0
  br i1 %str.immortal1084, label %str_ok1086, label %str_gen_check1085

str_stale1076:                                    ; preds = %str_gen_check1074
  %63 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1075

str_gen_check1085:                                ; preds = %str_ok1075
  %arena.cur1088 = call ptr @dva_arena_current()
  %tag.valid1089 = call i1 @dva_arena_validate_tag(ptr %arena.cur1088, i64 %str.tag1083)
  br i1 %tag.valid1089, label %str_ok1086, label %str_stale1087

str_ok1086:                                       ; preds = %str_stale1087, %str_gen_check1085, %str_ok1075
  %concat.rhs1090 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %concat.sum.len1091 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1071, i64 %concat.rhs1082)
  %sum1092 = extractvalue { i64, i1 } %concat.sum.len1091, 0
  %ovf1093 = extractvalue { i64, i1 } %concat.sum.len1091, 1
  br i1 %ovf1093, label %str_overflow_abort1095, label %concat.sum.len1094

str_stale1087:                                    ; preds = %str_gen_check1085
  %64 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1086

concat.sum.len1094:                               ; preds = %str_overflow_abort1095, %str_ok1086
  %concat.tot.len1096 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1092, i64 1)
  %sum1097 = extractvalue { i64, i1 } %concat.tot.len1096, 0
  %ovf1098 = extractvalue { i64, i1 } %concat.tot.len1096, 1
  br i1 %ovf1098, label %str_overflow_abort1100, label %concat.tot.len1099

str_overflow_abort1095:                           ; preds = %str_ok1086
  %65 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1094

concat.tot.len1099:                               ; preds = %str_overflow_abort1100, %concat.sum.len1094
  %arena.cur1101 = call ptr @dva_arena_current()
  %concat.buf1102 = call ptr @dva_arena_alloc(ptr %arena.cur1101, i64 %sum1097)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1102, ptr align 1 %concat.lhs1080, i64 %concat.lhs1071, i1 false)
  %concat.mid1103 = getelementptr i8, ptr %concat.buf1102, i64 %concat.lhs1071
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1103, ptr align 1 %concat.rhs1090, i64 %concat.rhs1082, i1 false)
  %concat.nul1104 = getelementptr i8, ptr %concat.buf1102, i64 %sum1092
  store i8 0, ptr %concat.nul1104, align 1
  %arena.cur1105 = call ptr @dva_arena_current()
  %concat.str1106 = call ptr @dva_arena_alloc(ptr %arena.cur1105, i64 16)
  %str.build.len.gep1107 = getelementptr inbounds { i64, ptr }, ptr %concat.str1106, i32 0, i32 0
  store i64 %sum1092, ptr %str.build.len.gep1107, align 8
  %str.build.data.gep1108 = getelementptr inbounds { i64, ptr }, ptr %concat.str1106, i32 0, i32 1
  store ptr %concat.buf1102, ptr %str.build.data.gep1108, align 8
  %var.load1109 = load ptr, ptr %var.es, align 8
  %concat.lhs1110 = getelementptr inbounds { i64, ptr }, ptr %concat.str1106, i32 0, i32 0
  %concat.lhs1111 = load i64, ptr %concat.lhs1110, align 8
  %concat.lhs1112 = and i64 %concat.lhs1111, 281474976710655
  %str.tag1113 = lshr i64 %concat.lhs1111, 48
  %str.immortal1114 = icmp eq i64 %str.tag1113, 0
  br i1 %str.immortal1114, label %str_ok1116, label %str_gen_check1115

str_overflow_abort1100:                           ; preds = %concat.sum.len1094
  %66 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1099

str_gen_check1115:                                ; preds = %concat.tot.len1099
  %arena.cur1118 = call ptr @dva_arena_current()
  %tag.valid1119 = call i1 @dva_arena_validate_tag(ptr %arena.cur1118, i64 %str.tag1113)
  br i1 %tag.valid1119, label %str_ok1116, label %str_stale1117

str_ok1116:                                       ; preds = %str_stale1117, %str_gen_check1115, %concat.tot.len1099
  %concat.lhs1120 = getelementptr inbounds { i64, ptr }, ptr %concat.str1106, i32 0, i32 1
  %concat.lhs1121 = load ptr, ptr %concat.lhs1120, align 8
  %concat.rhs1122 = getelementptr inbounds { i64, ptr }, ptr %var.load1109, i32 0, i32 0
  %concat.rhs1123 = load i64, ptr %concat.rhs1122, align 8
  %concat.rhs1124 = and i64 %concat.rhs1123, 281474976710655
  %str.tag1125 = lshr i64 %concat.rhs1123, 48
  %str.immortal1126 = icmp eq i64 %str.tag1125, 0
  br i1 %str.immortal1126, label %str_ok1128, label %str_gen_check1127

str_stale1117:                                    ; preds = %str_gen_check1115
  %67 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1116

str_gen_check1127:                                ; preds = %str_ok1116
  %arena.cur1130 = call ptr @dva_arena_current()
  %tag.valid1131 = call i1 @dva_arena_validate_tag(ptr %arena.cur1130, i64 %str.tag1125)
  br i1 %tag.valid1131, label %str_ok1128, label %str_stale1129

str_ok1128:                                       ; preds = %str_stale1129, %str_gen_check1127, %str_ok1116
  %concat.rhs1132 = getelementptr inbounds { i64, ptr }, ptr %var.load1109, i32 0, i32 1
  %concat.rhs1133 = load ptr, ptr %concat.rhs1132, align 8
  %concat.sum.len1134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs1112, i64 %concat.rhs1124)
  %sum1135 = extractvalue { i64, i1 } %concat.sum.len1134, 0
  %ovf1136 = extractvalue { i64, i1 } %concat.sum.len1134, 1
  br i1 %ovf1136, label %str_overflow_abort1138, label %concat.sum.len1137

str_stale1129:                                    ; preds = %str_gen_check1127
  %68 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok1128

concat.sum.len1137:                               ; preds = %str_overflow_abort1138, %str_ok1128
  %concat.tot.len1139 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1135, i64 1)
  %sum1140 = extractvalue { i64, i1 } %concat.tot.len1139, 0
  %ovf1141 = extractvalue { i64, i1 } %concat.tot.len1139, 1
  br i1 %ovf1141, label %str_overflow_abort1143, label %concat.tot.len1142

str_overflow_abort1138:                           ; preds = %str_ok1128
  %69 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len1137

concat.tot.len1142:                               ; preds = %str_overflow_abort1143, %concat.sum.len1137
  %arena.cur1144 = call ptr @dva_arena_current()
  %concat.buf1145 = call ptr @dva_arena_alloc(ptr %arena.cur1144, i64 %sum1140)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1145, ptr align 1 %concat.lhs1121, i64 %concat.lhs1112, i1 false)
  %concat.mid1146 = getelementptr i8, ptr %concat.buf1145, i64 %concat.lhs1112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid1146, ptr align 1 %concat.rhs1133, i64 %concat.rhs1124, i1 false)
  %concat.nul1147 = getelementptr i8, ptr %concat.buf1145, i64 %sum1135
  store i8 0, ptr %concat.nul1147, align 1
  %arena.cur1148 = call ptr @dva_arena_current()
  %concat.str1149 = call ptr @dva_arena_alloc(ptr %arena.cur1148, i64 16)
  %str.build.len.gep1150 = getelementptr inbounds { i64, ptr }, ptr %concat.str1149, i32 0, i32 0
  store i64 %sum1135, ptr %str.build.len.gep1150, align 8
  %str.build.data.gep1151 = getelementptr inbounds { i64, ptr }, ptr %concat.str1149, i32 0, i32 1
  store ptr %concat.buf1145, ptr %str.build.data.gep1151, align 8
  br label %choice.exit1067

str_overflow_abort1143:                           ; preds = %concat.sum.len1137
  %70 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len1142
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
