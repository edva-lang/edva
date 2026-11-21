; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@"var.io::STDIN" = global i64 0
@"var.io::STDOUT" = global i64 1
@"var.io::STDERR" = global i64 2
@"var.io::EOF" = global i64 0
@"var.io::EINTR" = global i64 4
@"var.io::EBADF" = global i64 9
@"var.io::EAGAIN" = global i64 11
@"var.io::EWOULDBLOCK" = global i64 11
@clo.const = internal constant { ptr, ptr } { ptr @"io::reader", ptr null }
@"var.io::reader" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"io::reader_with_cap", ptr null }
@"var.io::reader_with_cap" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"io::reader_err", ptr null }
@"var.io::reader_err" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"io::reader_eof", ptr null }
@"var.io::reader_eof" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"io::reader_would_block", ptr null }
@"var.io::reader_would_block" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"io::reader_has_err", ptr null }
@"var.io::reader_has_err" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"io::reader_clear", ptr null }
@"var.io::reader_clear" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"io::#clean_addr", ptr null }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"io::write", ptr null }
@"var.io::write" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"io::#show_rune", ptr null }
@"var.io::#show_rune" = global ptr null
@"var.io::#clean_addr" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"io::#writev_all", ptr null }
@"var.io::#writev_all" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"io::#refill", ptr null }
@"var.io::#refill" = global ptr null
@str.0 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.0 }
@clo.const.12 = internal constant { ptr, ptr } { ptr @"io::outs", ptr null }
@"var.io::outs" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"io::errs", ptr null }
@"var.io::errs" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"io::read", ptr null }
@"var.io::read" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"io::read_all", ptr null }
@"var.io::read_all" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.16 = internal constant { ptr, ptr } { ptr @"io::read_byte", ptr null }
@"var.io::read_byte" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"io::read_until", ptr null }
@"var.io::read_until" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"io::read_line", ptr null }
@"var.io::read_line" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_io, ptr null }]

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

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

define internal void @__dva_global_init_io() #3 {
entry:
  store i64 0, ptr @"var.io::STDIN", align 8
  store i64 1, ptr @"var.io::STDOUT", align 8
  store i64 2, ptr @"var.io::STDERR", align 8
  store i64 0, ptr @"var.io::EOF", align 8
  store i64 4, ptr @"var.io::EINTR", align 8
  store i64 9, ptr @"var.io::EBADF", align 8
  store i64 11, ptr @"var.io::EAGAIN", align 8
  store i64 11, ptr @"var.io::EWOULDBLOCK", align 8
  store ptr @clo.const, ptr @"var.io::reader", align 8
  store ptr @clo.const.1, ptr @"var.io::reader_with_cap", align 8
  store ptr @clo.const.2, ptr @"var.io::reader_err", align 8
  store ptr @clo.const.3, ptr @"var.io::reader_eof", align 8
  store ptr @clo.const.4, ptr @"var.io::reader_would_block", align 8
  store ptr @clo.const.5, ptr @"var.io::reader_has_err", align 8
  store ptr @clo.const.6, ptr @"var.io::reader_clear", align 8
  store ptr @clo.const.8, ptr @"var.io::write", align 8
  store ptr @clo.const.9, ptr @"var.io::#show_rune", align 8
  store ptr @clo.const.7, ptr @"var.io::#clean_addr", align 8
  store ptr @clo.const.10, ptr @"var.io::#writev_all", align 8
  store ptr @clo.const.11, ptr @"var.io::#refill", align 8
  store ptr @clo.const.12, ptr @"var.io::outs", align 8
  store ptr @clo.const.13, ptr @"var.io::errs", align 8
  store ptr @clo.const.14, ptr @"var.io::read", align 8
  store ptr @clo.const.15, ptr @"var.io::read_all", align 8
  store ptr @clo.const.16, ptr @"var.io::read_byte", align 8
  store ptr @clo.const.17, ptr @"var.io::read_until", align 8
  store ptr @clo.const.18, ptr @"var.io::read_line", align 8
  ret void
}

declare i64 @read(i32, ptr, i64)

declare i64 @write(i32, ptr, i64)

declare i64 @writev(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

define ptr @"io::reader"(i64 %0) #3 {
entry:
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  %var.load = load i64, ptr %var.fd, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4096, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, i64, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %builder.new, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 4096, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld8, align 1
  ret ptr %rec.alloc

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1
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

define ptr @"io::reader_with_cap"(i64 %0, i64 %1) #3 {
entry:
  %var.c = alloca i64, align 8
  %var.cap = alloca i64, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store i64 %1, ptr %var.cap, align 8
  %var.load = load i64, ptr %var.cap, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.cap, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load1, %choice.then ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.c, align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load i64, ptr %var.c, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load3, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load3
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

b.buf.len4:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  %var.load6 = load i64, ptr %var.c, align 8
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, i64, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load2, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %builder.new, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load6, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld12, align 1
  ret ptr %rec.alloc

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len4
}

define i64 @"io::reader_err"(ptr %0) #3 {
entry:
  %var._acc_1 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_1, align 8
  %var.load = load ptr, ptr %var._acc_1, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i1 @"io::reader_eof"(ptr %0) #3 {
entry:
  %var._acc_2 = alloca ptr, align 8
  store ptr %0, ptr %var._acc_2, align 8
  %var.load = load ptr, ptr %var._acc_2, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 5
  %fld.load = load i1, ptr %fld.gep, align 1
  ret i1 %fld.load
}

define i1 @"io::reader_would_block"(ptr %0) #3 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %val.match = icmp eq i64 %fld.load, 11
  br i1 %val.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  br label %choice.exit
}

define i1 @"io::reader_has_err"(ptr %0) #3 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp ne i64 %fld.load, 0
  ret i1 %cmptmp
}

define void @"io::reader_clear"(ptr %0) #3 {
entry:
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 4
  store i64 0, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 5
  store i1 false, ptr %fld.gep2, align 1
  ret void
}

define i64 @"io::write"(i64 %0, ptr %1) #3 {
entry:
  %var.errno_val = alloca i64, align 8
  %var.w = alloca i64, align 8
  %var.buf_addr = alloca ptr, align 8
  %var.rem = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.58 = alloca i64, align 8
  %loop.idx.58 = alloca i64, align 8
  %"var.off'" = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store ptr %1, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.total, align 8
  %var.load3 = load i64, ptr %var.total, align 8
  %val.match = icmp eq i64 %var.load3, 0
  br i1 %val.match, label %choice.case, label %choice.next

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.exit:                                      ; preds = %choice.next, %ret.dead
  store i64 0, ptr %"var.off'", align 8
  store i64 0, ptr %loop.idx.58, align 8
  br label %loop.header.58

choice.case:                                      ; preds = %str_ok
  ret i64 0

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.58:                                   ; preds = %loop.latch.58, %choice.exit
  %counter.load = load i64, ptr %loop.idx.58, align 8
  br label %loop.body.58

loop.body.58:                                     ; preds = %loop.header.58
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.58, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load i64, ptr %"var.off'", align 8
  %var.load5 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit6

loop.exit.nat.58:                                 ; No predecessors!
  br label %loop.exit.58

loop.latch.58:                                    ; preds = %choice.exit17, %choice.then24
  %step.val = load i64, ptr %loop.step.58, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.58, align 8
  br label %loop.header.58

loop.exit.58:                                     ; preds = %choice.case34, %choice.else29, %choice.then, %loop.exit.nat.58
  %var.load40 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load40

choice.then:                                      ; preds = %loop.body.58
  br label %loop.exit.58

choice.exit6:                                     ; preds = %loop.body.58
  %var.load7 = load i64, ptr %var.total, align 8
  %var.load8 = load i64, ptr %"var.off'", align 8
  %subtmp = sub i64 %var.load7, %var.load8
  store i64 %subtmp, ptr %var.rem, align 8
  %var.load9 = load ptr, ptr %var.s, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.ptr10 = load ptr, ptr %s.ptr, align 8
  %var.load11 = load i64, ptr %"var.off'", align 8
  %ptr.int.l = ptrtoint ptr %s.ptr10 to i64
  %addtmp = add i64 %ptr.int.l, %var.load11
  %ptr.res = inttoptr i64 %addtmp to ptr
  %call.res = call ptr @"io::#clean_addr"(ptr %ptr.res)
  store ptr %call.res, ptr %var.buf_addr, align 8
  %var.load12 = load i64, ptr %var.fd, align 8
  %var.load13 = load ptr, ptr %var.buf_addr, align 8
  %addr.ffi.int = ptrtoint ptr %var.load13 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load14 = load i64, ptr %var.rem, align 8
  %coerce.trunc = trunc i64 %var.load12 to i32
  %call.res15 = call i64 @write(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load14)
  store i64 %call.res15, ptr %var.w, align 8
  %var.load16 = load i64, ptr %var.w, align 8
  %cmptmp20 = icmp slt i64 %var.load16, 0
  br i1 %cmptmp20, label %choice.case18, label %choice.next19

choice.exit17:                                    ; preds = %choice.exit33, %choice.exit25
  br label %loop.latch.58

choice.case18:                                    ; preds = %choice.exit6
  %call.res21 = call i64 @"libc::errno"()
  store i64 %call.res21, ptr %var.errno_val, align 8
  %var.load22 = load i64, ptr %var.errno_val, align 8
  %cmptmp23 = icmp eq i64 %var.load22, 4
  br i1 %cmptmp23, label %choice.then24, label %choice.else

choice.next19:                                    ; preds = %choice.exit6
  %var.load32 = load i64, ptr %var.w, align 8
  %val.match36 = icmp eq i64 %var.load32, 0
  br i1 %val.match36, label %choice.case34, label %choice.next35

choice.then24:                                    ; preds = %choice.case18
  br label %loop.latch.58

choice.else:                                      ; preds = %choice.case18
  %var.load26 = load i64, ptr %"var.off'", align 8
  %cmptmp27 = icmp eq i64 %var.load26, 0
  br i1 %cmptmp27, label %choice.then28, label %choice.else29

choice.exit25:                                    ; preds = %choice.exit30
  br label %choice.exit17

choice.then28:                                    ; preds = %choice.else
  ret i64 -1

choice.else29:                                    ; preds = %choice.else
  br label %loop.exit.58

choice.exit30:                                    ; preds = %ret.dead31
  br label %choice.exit25

ret.dead31:                                       ; No predecessors!
  br label %choice.exit30

choice.exit33:                                    ; preds = %choice.next35
  %var.load37 = load i64, ptr %"var.off'", align 8
  %var.load38 = load i64, ptr %var.w, align 8
  %addtmp39 = add i64 %var.load37, %var.load38
  store i64 %addtmp39, ptr %"var.off'", align 8
  br label %choice.exit17

choice.case34:                                    ; preds = %choice.next19
  br label %loop.exit.58

choice.next35:                                    ; preds = %choice.next19
  br label %choice.exit33
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #6 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %0)
  br i1 %tag.valid, label %valid, label %stale

valid:                                            ; preds = %entry
  ret void

stale:                                            ; preds = %entry
  call void @dva_abort_stale_str_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal ptr @"io::#clean_addr"(ptr %0) #3 {
entry:
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %ptrmask = call ptr @llvm.ptrmask.p0.i64(ptr %var.load, i64 281474976710655)
  ret ptr %ptrmask
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #0

declare i64 @"libc::errno"() #3

define internal { i64, ptr } @"io::#show_rune"(i32 %0) #3 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.r = alloca i32, align 4
  store i32 %0, ptr %var.r, align 4
  %var.load = load i32, ptr %var.r, align 4
  %call.res = call { i64, ptr } @"utf::encode_rune"(i32 %var.load)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"utf::encode_rune"(i32) #3

define internal i64 @"io::#writev_all"(i64 %0, ptr %1, ptr %2) #3 {
entry:
  %var.errno_val99 = alloca i64, align 8
  %var.w92 = alloca i64, align 8
  %var.p283 = alloca ptr, align 8
  %var.rem2 = alloca i64, align 8
  %var.off2 = alloca i64, align 8
  %var.errno_val = alloca i64, align 8
  %var.w = alloca i64, align 8
  %var.iov = alloca ptr, align 8
  %var.p2 = alloca ptr, align 8
  %var.p1 = alloca ptr, align 8
  %var.rem1 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.59 = alloca i64, align 8
  %loop.idx.59 = alloca i64, align 8
  %"var.off'" = alloca i64, align 8
  %var.total = alloca i64, align 8
  %var.len2 = alloca i64, align 8
  %var.len1 = alloca i64, align 8
  %var.s2 = alloca ptr, align 8
  %var.s1 = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store ptr %1, ptr %var.s1, align 8
  store ptr %2, ptr %var.s2, align 8
  %var.load = load ptr, ptr %var.s1, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.len1, align 8
  %var.load3 = load ptr, ptr %var.s2, align 8
  %str.len.query4 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query5 = load i64, ptr %str.len.query4, align 8
  %str.len.query6 = and i64 %str.len.query5, 281474976710655
  %str.tag7 = lshr i64 %str.len.query5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  %active.gen10 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current11 = icmp eq i64 %str.tag7, %active.gen10
  %tag.fast.ok12 = or i1 %tag.immortal9, %tag.current11
  br i1 %tag.fast.ok12, label %str_ok8, label %tag.slow_check13

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok8:                                          ; preds = %tag.slow_check13, %str_ok
  store i64 %str.len.query6, ptr %var.len2, align 8
  %var.load14 = load i64, ptr %var.len1, align 8
  %var.load15 = load i64, ptr %var.len2, align 8
  %addtmp = add i64 %var.load14, %var.load15
  store i64 %addtmp, ptr %var.total, align 8
  %var.load16 = load i64, ptr %var.total, align 8
  %val.match = icmp eq i64 %var.load16, 0
  br i1 %val.match, label %choice.case, label %choice.next

tag.slow_check13:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

choice.exit:                                      ; preds = %choice.next, %ret.dead
  store i64 0, ptr %"var.off'", align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

choice.case:                                      ; preds = %str_ok8
  ret i64 0

choice.next:                                      ; preds = %str_ok8
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit
  %counter.load = load i64, ptr %loop.idx.59, align 8
  br label %loop.body.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load17 = load i64, ptr %"var.off'", align 8
  %var.load18 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load17, %var.load18
  br i1 %cmptmp, label %choice.then, label %choice.exit19

loop.exit.nat.59:                                 ; No predecessors!
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit24, %choice.then102, %choice.then53
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %choice.case112, %choice.else107, %choice.case63, %choice.else58, %choice.then, %loop.exit.nat.59
  %var.load118 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load118

choice.then:                                      ; preds = %loop.body.59
  br label %loop.exit.59

choice.exit19:                                    ; preds = %loop.body.59
  %var.load20 = load i64, ptr %"var.off'", align 8
  %var.load21 = load i64, ptr %var.len1, align 8
  %cmptmp22 = icmp slt i64 %var.load20, %var.load21
  br i1 %cmptmp22, label %choice.then23, label %choice.else

choice.then23:                                    ; preds = %choice.exit19
  %var.load25 = load i64, ptr %var.len1, align 8
  %var.load26 = load i64, ptr %"var.off'", align 8
  %subtmp = sub i64 %var.load25, %var.load26
  store i64 %subtmp, ptr %var.rem1, align 8
  %var.load27 = load ptr, ptr %var.s1, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.ptr28 = load ptr, ptr %s.ptr, align 8
  %var.load29 = load i64, ptr %"var.off'", align 8
  %ptr.int.l = ptrtoint ptr %s.ptr28 to i64
  %addtmp30 = add i64 %ptr.int.l, %var.load29
  %ptr.res = inttoptr i64 %addtmp30 to ptr
  %call.res = call ptr @"io::#clean_addr"(ptr %ptr.res)
  store ptr %call.res, ptr %var.p1, align 8
  %var.load31 = load ptr, ptr %var.s2, align 8
  %s.ptr32 = getelementptr inbounds { i64, ptr }, ptr %var.load31, i32 0, i32 1
  %s.ptr33 = load ptr, ptr %s.ptr32, align 8
  %call.res34 = call ptr @"io::#clean_addr"(ptr %s.ptr33)
  store ptr %call.res34, ptr %var.p2, align 8
  %var.load35 = load ptr, ptr %var.p1, align 8
  %var.load36 = load i64, ptr %var.rem1, align 8
  %var.load37 = load ptr, ptr %var.p2, align 8
  %var.load38 = load i64, ptr %var.len2, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load35, ptr %rec.fld, align 8
  %rec.fld39 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load36, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load37, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %var.load38, ptr %rec.fld41, align 8
  store ptr %rec.alloc, ptr %var.iov, align 8
  %var.load42 = load i64, ptr %var.fd, align 8
  %var.load43 = load ptr, ptr %var.iov, align 8
  %addr.ffi.int = ptrtoint ptr %var.load43 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load42 to i32
  %call.res44 = call i64 @writev(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 2)
  store i64 %call.res44, ptr %var.w, align 8
  %var.load45 = load i64, ptr %var.w, align 8
  %cmptmp46 = icmp slt i64 %var.load45, 0
  br i1 %cmptmp46, label %choice.then47, label %choice.else48

choice.else:                                      ; preds = %choice.exit19
  %var.load69 = load i64, ptr %"var.off'", align 8
  %var.load70 = load i64, ptr %var.len1, align 8
  %subtmp71 = sub i64 %var.load69, %var.load70
  store i64 %subtmp71, ptr %var.off2, align 8
  %var.load72 = load i64, ptr %var.len2, align 8
  %var.load73 = load i64, ptr %var.off2, align 8
  %subtmp74 = sub i64 %var.load72, %var.load73
  store i64 %subtmp74, ptr %var.rem2, align 8
  %var.load75 = load ptr, ptr %var.s2, align 8
  %s.ptr76 = getelementptr inbounds { i64, ptr }, ptr %var.load75, i32 0, i32 1
  %s.ptr77 = load ptr, ptr %s.ptr76, align 8
  %var.load78 = load i64, ptr %var.off2, align 8
  %ptr.int.l79 = ptrtoint ptr %s.ptr77 to i64
  %addtmp80 = add i64 %ptr.int.l79, %var.load78
  %ptr.res81 = inttoptr i64 %addtmp80 to ptr
  %call.res82 = call ptr @"io::#clean_addr"(ptr %ptr.res81)
  store ptr %call.res82, ptr %var.p283, align 8
  %var.load84 = load i64, ptr %var.fd, align 8
  %var.load85 = load ptr, ptr %var.p283, align 8
  %addr.ffi.int86 = ptrtoint ptr %var.load85 to i64
  %addr.ffi.masked87 = and i64 %addr.ffi.int86, 281474976710655
  %addr.ffi.clean88 = inttoptr i64 %addr.ffi.masked87 to ptr
  %var.load89 = load i64, ptr %var.rem2, align 8
  %coerce.trunc90 = trunc i64 %var.load84 to i32
  %call.res91 = call i64 @write(i32 %coerce.trunc90, ptr %addr.ffi.clean88, i64 %var.load89)
  store i64 %call.res91, ptr %var.w92, align 8
  %var.load93 = load i64, ptr %var.w92, align 8
  %cmptmp94 = icmp slt i64 %var.load93, 0
  br i1 %cmptmp94, label %choice.then95, label %choice.else96

choice.exit24:                                    ; preds = %choice.exit97, %choice.exit49
  br label %loop.latch.59

choice.then47:                                    ; preds = %choice.then23
  %call.res50 = call i64 @"libc::errno"()
  store i64 %call.res50, ptr %var.errno_val, align 8
  %var.load51 = load i64, ptr %var.errno_val, align 8
  %cmptmp52 = icmp eq i64 %var.load51, 4
  br i1 %cmptmp52, label %choice.then53, label %choice.exit54

choice.else48:                                    ; preds = %choice.then23
  %var.load61 = load i64, ptr %var.w, align 8
  %val.match65 = icmp eq i64 %var.load61, 0
  br i1 %val.match65, label %choice.case63, label %choice.next64

choice.exit49:                                    ; preds = %choice.exit62, %choice.exit59
  br label %choice.exit24

choice.then53:                                    ; preds = %choice.then47
  br label %loop.latch.59

choice.exit54:                                    ; preds = %choice.then47
  %var.load55 = load i64, ptr %"var.off'", align 8
  %cmptmp56 = icmp eq i64 %var.load55, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.else58

choice.then57:                                    ; preds = %choice.exit54
  ret i64 -1

choice.else58:                                    ; preds = %choice.exit54
  br label %loop.exit.59

choice.exit59:                                    ; preds = %ret.dead60
  br label %choice.exit49

ret.dead60:                                       ; No predecessors!
  br label %choice.exit59

choice.exit62:                                    ; preds = %choice.next64
  %var.load66 = load i64, ptr %"var.off'", align 8
  %var.load67 = load i64, ptr %var.w, align 8
  %addtmp68 = add i64 %var.load66, %var.load67
  store i64 %addtmp68, ptr %"var.off'", align 8
  br label %choice.exit49

choice.case63:                                    ; preds = %choice.else48
  br label %loop.exit.59

choice.next64:                                    ; preds = %choice.else48
  br label %choice.exit62

choice.then95:                                    ; preds = %choice.else
  %call.res98 = call i64 @"libc::errno"()
  store i64 %call.res98, ptr %var.errno_val99, align 8
  %var.load100 = load i64, ptr %var.errno_val99, align 8
  %cmptmp101 = icmp eq i64 %var.load100, 4
  br i1 %cmptmp101, label %choice.then102, label %choice.exit103

choice.else96:                                    ; preds = %choice.else
  %var.load110 = load i64, ptr %var.w92, align 8
  %val.match114 = icmp eq i64 %var.load110, 0
  br i1 %val.match114, label %choice.case112, label %choice.next113

choice.exit97:                                    ; preds = %choice.exit111, %choice.exit108
  br label %choice.exit24

choice.then102:                                   ; preds = %choice.then95
  br label %loop.latch.59

choice.exit103:                                   ; preds = %choice.then95
  %var.load104 = load i64, ptr %"var.off'", align 8
  %cmptmp105 = icmp eq i64 %var.load104, 0
  br i1 %cmptmp105, label %choice.then106, label %choice.else107

choice.then106:                                   ; preds = %choice.exit103
  ret i64 -1

choice.else107:                                   ; preds = %choice.exit103
  br label %loop.exit.59

choice.exit108:                                   ; preds = %ret.dead109
  br label %choice.exit97

ret.dead109:                                      ; No predecessors!
  br label %choice.exit108

choice.exit111:                                   ; preds = %choice.next113
  %var.load115 = load i64, ptr %"var.off'", align 8
  %var.load116 = load i64, ptr %var.w92, align 8
  %addtmp117 = add i64 %var.load115, %var.load116
  store i64 %addtmp117, ptr %"var.off'", align 8
  br label %choice.exit97

choice.case112:                                   ; preds = %choice.else96
  br label %loop.exit.59

choice.next113:                                   ; preds = %choice.else96
  br label %choice.exit111
}

define internal i64 @"io::#refill"(ptr %0) #3 {
entry:
  %var.errno_val = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.60 = alloca i64, align 8
  %loop.idx.60 = alloca i64, align 8
  %"var.n'" = alloca i64, align 8
  %var.space = alloca i64, align 8
  %var.read_cap = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.buf, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %cmptmp = icmp sgt i64 %fld.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.buf, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %subtmp = sub i64 %b.len5, %fld.load8
  store i64 %subtmp, ptr %var.rem, align 8
  %var.load9 = load i64, ptr %var.rem, align 8
  %cmptmp10 = icmp sgt i64 %var.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

choice.exit:                                      ; preds = %b.len_ok, %entry
  %var.load29 = load ptr, ptr %var.r, align 8
  %fld.gep30 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load29, i32 0, i32 3
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %cmptmp32 = icmp sgt i64 %fld.load31, 0
  br i1 %cmptmp32, label %choice.then33, label %choice.else

choice.then11:                                    ; preds = %choice.then
  %var.load13 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 1
  %b.ptr14 = load ptr, ptr %b.ptr, align 8
  %var.load15 = load ptr, ptr %var.buf, align 8
  %b.ptr16 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  %b.ptr17 = load ptr, ptr %b.ptr16, align 8
  %var.load18 = load ptr, ptr %var.r, align 8
  %fld.gep19 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load18, i32 0, i32 2
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr17 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load20
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load21 = load i64, ptr %var.rem, align 8
  %raw.int = ptrtoint ptr %b.ptr14 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.int22 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int23 = and i64 %raw.int22, 281474976710655
  %raw.clean.ptr24 = inttoptr i64 %raw.clean.int23 to ptr
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr24, i64 %var.load21, i1 false)
  br label %choice.exit12

choice.exit12:                                    ; preds = %choice.then11, %choice.then
  %var.load25 = load i64, ptr %var.rem, align 8
  %b.load = load ptr, ptr %var.buf, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap26 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load25, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

b.len_big_check:                                  ; preds = %choice.exit12
  %b.len.big = icmp sgt i64 %var.load25, %b.cap26
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead, %b.len_big_check
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load25, ptr %b.len.gep, align 8
  %var.load27 = load ptr, ptr %var.r, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load27, i32 0, i32 2
  store i64 0, ptr %fld.gep28, align 8
  br label %choice.exit

b.len_oob:                                        ; preds = %b.len_big_check, %choice.exit12
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.len_ok

choice.then33:                                    ; preds = %choice.exit
  %var.load35 = load ptr, ptr %var.r, align 8
  %fld.gep36 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load35, i32 0, i32 3
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  br label %choice.exit34

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit34

choice.exit34:                                    ; preds = %choice.else, %choice.then33
  %choice.res = phi i64 [ %fld.load37, %choice.then33 ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.read_cap, align 8
  %var.load38 = load i64, ptr %var.read_cap, align 8
  %var.load39 = load ptr, ptr %var.buf, align 8
  %b.len40 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load39, i32 0, i32 0
  %b.len41 = load i64, ptr %b.len40, align 8
  %subtmp42 = sub i64 %var.load38, %b.len41
  store i64 %subtmp42, ptr %var.space, align 8
  %var.load43 = load i64, ptr %var.space, align 8
  %cmptmp44 = icmp sle i64 %var.load43, 0
  br i1 %cmptmp44, label %choice.then45, label %choice.else46

choice.then45:                                    ; preds = %choice.exit34
  br label %choice.exit47

choice.else46:                                    ; preds = %choice.exit34
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.60, align 8
  br label %loop.header.60

choice.exit47:                                    ; preds = %loop.exit.60, %choice.then45
  %choice.res108 = phi i64 [ 0, %choice.then45 ], [ %var.load107, %loop.exit.60 ]
  ret i64 %choice.res108

loop.header.60:                                   ; preds = %loop.latch.60, %choice.else46
  %counter.load = load i64, ptr %loop.idx.60, align 8
  br label %loop.body.60

loop.body.60:                                     ; preds = %loop.header.60
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.60, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load48 = load ptr, ptr %var.buf, align 8
  %b.len49 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load48, i32 0, i32 0
  %b.len50 = load i64, ptr %b.len49, align 8
  store i64 %b.len50, ptr %var.cur, align 8
  %var.load51 = load ptr, ptr %var.r, align 8
  %fld.gep52 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load51, i32 0, i32 0
  %fld.load53 = load i64, ptr %fld.gep52, align 8
  %var.load54 = load ptr, ptr %var.buf, align 8
  %b.ptr55 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load54, i32 0, i32 1
  %b.ptr56 = load ptr, ptr %b.ptr55, align 8
  %var.load57 = load i64, ptr %var.cur, align 8
  %ptr.int.l58 = ptrtoint ptr %b.ptr56 to i64
  %addtmp59 = add i64 %ptr.int.l58, %var.load57
  %ptr.res60 = inttoptr i64 %addtmp59 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res60 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load61 = load i64, ptr %var.space, align 8
  %coerce.trunc = trunc i64 %fld.load53 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load61)
  store i64 %call.res, ptr %var.n, align 8
  %var.load62 = load i64, ptr %var.n, align 8
  %cmptmp63 = icmp slt i64 %var.load62, 0
  br i1 %cmptmp63, label %choice.then64, label %choice.else65

loop.exit.nat.60:                                 ; No predecessors!
  br label %loop.exit.60

loop.latch.60:                                    ; preds = %choice.exit66, %choice.then70
  %step.val = load i64, ptr %loop.step.60, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.60, align 8
  br label %loop.header.60

loop.exit.60:                                     ; preds = %b.len_ok99, %choice.then84, %choice.exit77, %loop.exit.nat.60
  %var.load107 = load i64, ptr %"var.n'", align 8
  br label %choice.exit47

choice.then64:                                    ; preds = %loop.body.60
  %call.res67 = call i64 @"libc::errno"()
  store i64 %call.res67, ptr %var.errno_val, align 8
  %var.load68 = load i64, ptr %var.errno_val, align 8
  %cmptmp69 = icmp eq i64 %var.load68, 4
  br i1 %cmptmp69, label %choice.then70, label %choice.exit71

choice.else65:                                    ; preds = %loop.body.60
  %var.load82 = load i64, ptr %var.n, align 8
  %cmptmp83 = icmp eq i64 %var.load82, 0
  br i1 %cmptmp83, label %choice.then84, label %choice.else85

choice.exit66:                                    ; preds = %choice.exit86
  br label %loop.latch.60

choice.then70:                                    ; preds = %choice.then64
  br label %loop.latch.60

choice.exit71:                                    ; preds = %choice.then64
  %var.load72 = load ptr, ptr %var.r, align 8
  %var.load73 = load i64, ptr %var.errno_val, align 8
  %cmptmp74 = icmp eq i64 %var.load73, 11
  br i1 %cmptmp74, label %choice.then75, label %choice.else76

choice.then75:                                    ; preds = %choice.exit71
  br label %choice.exit77

choice.else76:                                    ; preds = %choice.exit71
  %var.load78 = load i64, ptr %var.errno_val, align 8
  br label %choice.exit77

choice.exit77:                                    ; preds = %choice.else76, %choice.then75
  %choice.res79 = phi i64 [ 11, %choice.then75 ], [ %var.load78, %choice.else76 ]
  %fld.gep80 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load72, i32 0, i32 4
  store i64 %choice.res79, ptr %fld.gep80, align 8
  %var.load81 = load i64, ptr %var.n, align 8
  store i64 %var.load81, ptr %"var.n'", align 8
  br label %loop.exit.60

choice.then84:                                    ; preds = %choice.else65
  %var.load87 = load ptr, ptr %var.r, align 8
  %fld.gep88 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load87, i32 0, i32 5
  store i1 true, ptr %fld.gep88, align 1
  %var.load89 = load ptr, ptr %var.r, align 8
  %fld.gep90 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load89, i32 0, i32 4
  store i64 0, ptr %fld.gep90, align 8
  store i64 0, ptr %"var.n'", align 8
  br label %loop.exit.60

choice.else85:                                    ; preds = %choice.else65
  %var.load91 = load i64, ptr %var.cur, align 8
  %var.load92 = load i64, ptr %var.n, align 8
  %addtmp93 = add i64 %var.load91, %var.load92
  %b.load94 = load ptr, ptr %var.buf, align 8
  %b.cap95 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 2
  %b.cap96 = load i64, ptr %b.cap95, align 8
  %b.len.neg97 = icmp slt i64 %addtmp93, 0
  br i1 %b.len.neg97, label %b.len_oob100, label %b.len_big_check98

choice.exit86:                                    ; No predecessors!
  br label %choice.exit66

b.len_big_check98:                                ; preds = %choice.else85
  %b.len.big101 = icmp sgt i64 %addtmp93, %b.cap96
  br i1 %b.len.big101, label %b.len_oob100, label %b.len_ok99

b.len_ok99:                                       ; preds = %abort.dead102, %b.len_big_check98
  %b.len.gep103 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load94, i32 0, i32 0
  store i64 %addtmp93, ptr %b.len.gep103, align 8
  %var.load104 = load ptr, ptr %var.r, align 8
  %fld.gep105 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load104, i32 0, i32 4
  store i64 0, ptr %fld.gep105, align 8
  %var.load106 = load i64, ptr %var.n, align 8
  store i64 %var.load106, ptr %"var.n'", align 8
  br label %loop.exit.60

b.len_oob100:                                     ; preds = %b.len_big_check98, %choice.else85
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead102:                                    ; No predecessors!
  br label %b.len_ok99
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_builder_len_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define void @"io::outs"(ptr %0) #3 {
entry:
  %var.nl = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr @str.0.struct, ptr %var.nl, align 8
  %var.load = load i64, ptr @"var.io::STDOUT", align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %var.load2 = load ptr, ptr %var.nl, align 8
  %call.res = call i64 @"io::#writev_all"(i64 %var.load, ptr %var.load1, ptr %var.load2)
  ret void
}

define void @"io::errs"(ptr %0) #3 {
entry:
  %var.nl = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr @str.0.struct, ptr %var.nl, align 8
  %var.load = load i64, ptr @"var.io::STDERR", align 8
  %var.load1 = load ptr, ptr %var.s, align 8
  %var.load2 = load ptr, ptr %var.nl, align 8
  %call.res = call i64 @"io::#writev_all"(i64 %var.load, ptr %var.load1, ptr %var.load2)
  ret void
}

define { i64, ptr } @"io::read"(ptr %0, i64 %1) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.res = alloca ptr, align 8
  %builder.new.salloc = alloca { i64, ptr, i64 }, align 8
  %var.take = alloca i64, align 8
  %var.avail = alloca i64, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i64, ptr } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load2 = load ptr, ptr %var.r, align 8
  %fld.gep3 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load2, i32 0, i32 1
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %cmptmp6 = icmp sge i64 %fld.load, %b.len5
  br i1 %cmptmp6, label %choice.then7, label %choice.exit8

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then7:                                     ; preds = %choice.exit
  %var.load9 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load9)
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.then7, %choice.exit
  %var.load10 = load ptr, ptr %var.r, align 8
  %fld.gep11 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %var.load13 = load ptr, ptr %var.r, align 8
  %fld.gep14 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load13, i32 0, i32 1
  %fld.load15 = load ptr, ptr %fld.gep14, align 8
  %b.len16 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load15, i32 0, i32 0
  %b.len17 = load i64, ptr %b.len16, align 8
  %cmptmp18 = icmp sge i64 %fld.load12, %b.len17
  br i1 %cmptmp18, label %choice.then19, label %choice.exit20

choice.then19:                                    ; preds = %choice.exit8
  ret { i64, ptr } zeroinitializer

choice.exit20:                                    ; preds = %ret.dead21, %choice.exit8
  %var.load22 = load ptr, ptr %var.r, align 8
  %fld.gep23 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load22, i32 0, i32 1
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %b.len25 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load24, i32 0, i32 0
  %b.len26 = load i64, ptr %b.len25, align 8
  %var.load27 = load ptr, ptr %var.r, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load27, i32 0, i32 2
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %subtmp = sub i64 %b.len26, %fld.load29
  store i64 %subtmp, ptr %var.avail, align 8
  %var.load30 = load i64, ptr %var.avail, align 8
  %var.load31 = load i64, ptr %var.max, align 8
  %cmptmp32 = icmp slt i64 %var.load30, %var.load31
  br i1 %cmptmp32, label %choice.then33, label %choice.else

ret.dead21:                                       ; No predecessors!
  br label %choice.exit20

choice.then33:                                    ; preds = %choice.exit20
  %var.load35 = load i64, ptr %var.avail, align 8
  br label %choice.exit34

choice.else:                                      ; preds = %choice.exit20
  %var.load36 = load i64, ptr %var.max, align 8
  br label %choice.exit34

choice.exit34:                                    ; preds = %choice.else, %choice.then33
  %choice.res = phi i64 [ %var.load35, %choice.then33 ], [ %var.load36, %choice.else ]
  store i64 %choice.res, ptr %var.take, align 8
  %var.load37 = load i64, ptr %var.take, align 8
  %cap.neg = icmp slt i64 %var.load37, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load37
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new.salloc, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len38

b.buf.len38:                                      ; preds = %abort.dead, %choice.exit34
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new.salloc, ptr %var.res, align 8
  %b.load = load ptr, ptr %var.res, align 8
  %var.load39 = load ptr, ptr %var.r, align 8
  %fld.gep40 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load39, i32 0, i32 1
  %fld.load41 = load ptr, ptr %fld.gep40, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load41, i32 0, i32 0
  %b.read.len42 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load41, i32 0, i32 1
  %b.read.data43 = load ptr, ptr %b.read.data, align 8
  %var.load44 = load ptr, ptr %var.r, align 8
  %fld.gep45 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load44, i32 0, i32 2
  %fld.load46 = load i64, ptr %fld.gep45, align 8
  %var.load47 = load ptr, ptr %var.r, align 8
  %fld.gep48 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load47, i32 0, i32 2
  %fld.load49 = load i64, ptr %fld.gep48, align 8
  %var.load50 = load i64, ptr %var.take, align 8
  %addtmp = add i64 %fld.load49, %var.load50
  %start.is_neg = icmp slt i64 %fld.load46, 0
  %rel.start = add i64 %b.read.len42, %fld.load46
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load46
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len42
  %final.start = select i1 %start.gt.len, i64 %b.read.len42, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %b.read.len42, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len42
  %final.end = select i1 %end.gt.len, i64 %b.read.len42, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data43, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len51 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len51, i64 %view.len)
  %sum52 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf53 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.app.new.len54

str_overflow_abort:                               ; preds = %choice.exit34
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len38

b.app.new.len54:                                  ; preds = %abort.dead56, %b.buf.len38
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap57 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap57, %sum52
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort55:                             ; preds = %b.buf.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %b.app.new.len54

b.grow2:                                          ; preds = %b.app.new.len54
  %b.cap2 = mul i64 %b.cap57, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum52
  %b.new.cap = select i1 %b.cap.need, i64 %sum52, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len258 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data259 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum60 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf61 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf61, label %str_overflow_abort63, label %b.new.buf.len262

b.nogrow2:                                        ; preds = %b.app.new.len54
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len262
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data66 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data66, i64 %b.app.cur.len51
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data66, i64 %sum52
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep67 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum52, ptr %b.len.gep67, align 8
  %var.load68 = load ptr, ptr %var.r, align 8
  %var.load69 = load ptr, ptr %var.r, align 8
  %fld.gep70 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load69, i32 0, i32 2
  %fld.load71 = load i64, ptr %fld.gep70, align 8
  %var.load72 = load i64, ptr %var.take, align 8
  %addtmp73 = add i64 %fld.load71, %var.load72
  %fld.gep74 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load68, i32 0, i32 2
  store i64 %addtmp73, ptr %fld.gep74, align 8
  %var.load75 = load ptr, ptr %var.res, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 0
  %b.freeze.len76 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 1
  %b.freeze.data77 = load ptr, ptr %b.freeze.data, align 8
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len76, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data77, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.niche.nn = icmp ne ptr %builder.freeze, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

b.new.buf.len262:                                 ; preds = %abort.dead64, %b.grow2
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum60)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data259, i64 %b.cur.len258, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len258
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort63:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead64:                                     ; No predecessors!
  br label %b.new.buf.len262

ret.niche.load:                                   ; preds = %b.grow_done
  %ret.niche.val = load { i64, ptr }, ptr %builder.freeze, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %b.grow_done
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %b.grow_done ]
  ret { i64, ptr } %ret.niche.pack
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"io::read_all"(ptr %0, i64 %1) #3 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.errno_val = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.cur = alloca i64, align 8
  %var.to_read = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
  %var.chunk = alloca i64, align 8
  %var.take = alloca i64, align 8
  %var.avail = alloca i64, align 8
  %var.res_b = alloca ptr, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i64, ptr } zeroinitializer

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.max, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load1
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len2:                                       ; preds = %abort.dead, %choice.exit
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.res_b, align 8
  %var.load4 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load4, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 0
  %b.len5 = load i64, ptr %b.len, align 8
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %subtmp = sub i64 %b.len5, %fld.load8
  store i64 %subtmp, ptr %var.avail, align 8
  %var.load9 = load i64, ptr %var.avail, align 8
  %cmptmp10 = icmp sgt i64 %var.load9, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

choice.then11:                                    ; preds = %b.buf.len2
  %var.load13 = load i64, ptr %var.avail, align 8
  %var.load14 = load i64, ptr %var.max, align 8
  %cmptmp15 = icmp slt i64 %var.load13, %var.load14
  br i1 %cmptmp15, label %choice.then16, label %choice.else

choice.exit12:                                    ; preds = %b.grow_done, %b.buf.len2
  store i64 4096, ptr %var.chunk, align 8
  store i64 0, ptr %loop.idx.62, align 8
  br label %loop.header.62

choice.then16:                                    ; preds = %choice.then11
  %var.load18 = load i64, ptr %var.avail, align 8
  br label %choice.exit17

choice.else:                                      ; preds = %choice.then11
  %var.load19 = load i64, ptr %var.max, align 8
  br label %choice.exit17

choice.exit17:                                    ; preds = %choice.else, %choice.then16
  %choice.res = phi i64 [ %var.load18, %choice.then16 ], [ %var.load19, %choice.else ]
  store i64 %choice.res, ptr %var.take, align 8
  %b.load = load ptr, ptr %var.res_b, align 8
  %var.load20 = load ptr, ptr %var.r, align 8
  %fld.gep21 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load20, i32 0, i32 1
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load22, i32 0, i32 0
  %b.read.len23 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load22, i32 0, i32 1
  %b.read.data24 = load ptr, ptr %b.read.data, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %fld.gep26 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 2
  %fld.load27 = load i64, ptr %fld.gep26, align 8
  %var.load28 = load ptr, ptr %var.r, align 8
  %fld.gep29 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load28, i32 0, i32 2
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %var.load31 = load i64, ptr %var.take, align 8
  %addtmp = add i64 %fld.load30, %var.load31
  %start.is_neg = icmp slt i64 %fld.load27, 0
  %rel.start = add i64 %b.read.len23, %fld.load27
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load27
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len23
  %final.start = select i1 %start.gt.len, i64 %b.read.len23, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp, 0
  %rel.end = add i64 %b.read.len23, %addtmp
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len23
  %final.end = select i1 %end.gt.len, i64 %b.read.len23, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data24, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len32 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len32, i64 %view.len)
  %sum33 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf34 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %b.app.new.len35

b.app.new.len35:                                  ; preds = %abort.dead37, %choice.exit17
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap38 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap38, %sum33
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort36:                             ; preds = %choice.exit17
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
  %var.load49 = load ptr, ptr %var.r, align 8
  %var.load50 = load ptr, ptr %var.r, align 8
  %fld.gep51 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load50, i32 0, i32 2
  %fld.load52 = load i64, ptr %fld.gep51, align 8
  %var.load53 = load i64, ptr %var.take, align 8
  %addtmp54 = add i64 %fld.load52, %var.load53
  %fld.gep55 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load49, i32 0, i32 2
  store i64 %addtmp54, ptr %fld.gep55, align 8
  br label %choice.exit12

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

loop.header.62:                                   ; preds = %loop.latch.62, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.62, align 8
  br label %loop.body.62

loop.body.62:                                     ; preds = %loop.header.62
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.62, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load56 = load i64, ptr %var.max, align 8
  %var.load57 = load ptr, ptr %var.res_b, align 8
  %b.len58 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load57, i32 0, i32 0
  %b.len59 = load i64, ptr %b.len58, align 8
  %subtmp60 = sub i64 %var.load56, %b.len59
  store i64 %subtmp60, ptr %var.rem, align 8
  %var.load61 = load i64, ptr %var.rem, align 8
  %cmptmp62 = icmp sle i64 %var.load61, 0
  br i1 %cmptmp62, label %choice.then63, label %choice.exit64

loop.exit.nat.62:                                 ; No predecessors!
  br label %loop.exit.62

loop.latch.62:                                    ; preds = %choice.exit89, %choice.then93
  %step.val = load i64, ptr %loop.step.62, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.exit.62:                                     ; preds = %choice.then106, %choice.exit100, %choice.then63, %loop.exit.nat.62
  %var.load123 = load ptr, ptr %var.res_b, align 8
  %b.len124 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 0
  %b.len125 = load i64, ptr %b.len124, align 8
  %cmptmp126 = icmp eq i64 %b.len125, 0
  br i1 %cmptmp126, label %choice.then127, label %choice.exit128

choice.then63:                                    ; preds = %loop.body.62
  br label %loop.exit.62

choice.exit64:                                    ; preds = %loop.body.62
  %var.load65 = load i64, ptr %var.rem, align 8
  %var.load66 = load i64, ptr %var.chunk, align 8
  %cmptmp67 = icmp slt i64 %var.load65, %var.load66
  br i1 %cmptmp67, label %choice.then68, label %choice.else69

choice.then68:                                    ; preds = %choice.exit64
  %var.load71 = load i64, ptr %var.rem, align 8
  br label %choice.exit70

choice.else69:                                    ; preds = %choice.exit64
  %var.load72 = load i64, ptr %var.chunk, align 8
  br label %choice.exit70

choice.exit70:                                    ; preds = %choice.else69, %choice.then68
  %choice.res73 = phi i64 [ %var.load71, %choice.then68 ], [ %var.load72, %choice.else69 ]
  store i64 %choice.res73, ptr %var.to_read, align 8
  %var.load74 = load ptr, ptr %var.res_b, align 8
  %b.len75 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load74, i32 0, i32 0
  %b.len76 = load i64, ptr %b.len75, align 8
  store i64 %b.len76, ptr %var.cur, align 8
  %var.load77 = load ptr, ptr %var.r, align 8
  %fld.gep78 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load77, i32 0, i32 0
  %fld.load79 = load i64, ptr %fld.gep78, align 8
  %var.load80 = load ptr, ptr %var.res_b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load80, i32 0, i32 1
  %b.ptr81 = load ptr, ptr %b.ptr, align 8
  %var.load82 = load i64, ptr %var.cur, align 8
  %ptr.int.l = ptrtoint ptr %b.ptr81 to i64
  %addtmp83 = add i64 %ptr.int.l, %var.load82
  %ptr.res = inttoptr i64 %addtmp83 to ptr
  %addr.ffi.int = ptrtoint ptr %ptr.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load84 = load i64, ptr %var.to_read, align 8
  %coerce.trunc = trunc i64 %fld.load79 to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load84)
  store i64 %call.res, ptr %var.n, align 8
  %var.load85 = load i64, ptr %var.n, align 8
  %cmptmp86 = icmp slt i64 %var.load85, 0
  br i1 %cmptmp86, label %choice.then87, label %choice.else88

choice.then87:                                    ; preds = %choice.exit70
  %call.res90 = call i64 @"libc::errno"()
  store i64 %call.res90, ptr %var.errno_val, align 8
  %var.load91 = load i64, ptr %var.errno_val, align 8
  %cmptmp92 = icmp eq i64 %var.load91, 4
  br i1 %cmptmp92, label %choice.then93, label %choice.exit94

choice.else88:                                    ; preds = %choice.exit70
  %var.load104 = load i64, ptr %var.n, align 8
  %cmptmp105 = icmp eq i64 %var.load104, 0
  br i1 %cmptmp105, label %choice.then106, label %choice.else107

choice.exit89:                                    ; preds = %choice.exit108
  br label %loop.latch.62

choice.then93:                                    ; preds = %choice.then87
  br label %loop.latch.62

choice.exit94:                                    ; preds = %choice.then87
  %var.load95 = load ptr, ptr %var.r, align 8
  %var.load96 = load i64, ptr %var.errno_val, align 8
  %cmptmp97 = icmp eq i64 %var.load96, 11
  br i1 %cmptmp97, label %choice.then98, label %choice.else99

choice.then98:                                    ; preds = %choice.exit94
  br label %choice.exit100

choice.else99:                                    ; preds = %choice.exit94
  %var.load101 = load i64, ptr %var.errno_val, align 8
  br label %choice.exit100

choice.exit100:                                   ; preds = %choice.else99, %choice.then98
  %choice.res102 = phi i64 [ 11, %choice.then98 ], [ %var.load101, %choice.else99 ]
  %fld.gep103 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load95, i32 0, i32 4
  store i64 %choice.res102, ptr %fld.gep103, align 8
  br label %loop.exit.62

choice.then106:                                   ; preds = %choice.else88
  %var.load109 = load ptr, ptr %var.r, align 8
  %fld.gep110 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load109, i32 0, i32 5
  store i1 true, ptr %fld.gep110, align 1
  %var.load111 = load ptr, ptr %var.r, align 8
  %fld.gep112 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load111, i32 0, i32 4
  store i64 0, ptr %fld.gep112, align 8
  br label %loop.exit.62

choice.else107:                                   ; preds = %choice.else88
  %var.load113 = load ptr, ptr %var.r, align 8
  %fld.gep114 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load113, i32 0, i32 4
  store i64 0, ptr %fld.gep114, align 8
  %var.load115 = load i64, ptr %var.cur, align 8
  %var.load116 = load i64, ptr %var.n, align 8
  %addtmp117 = add i64 %var.load115, %var.load116
  %b.load118 = load ptr, ptr %var.res_b, align 8
  %b.cap119 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 2
  %b.cap120 = load i64, ptr %b.cap119, align 8
  %b.len.neg = icmp slt i64 %addtmp117, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

choice.exit108:                                   ; preds = %b.len_ok
  br label %choice.exit89

b.len_big_check:                                  ; preds = %choice.else107
  %b.len.big = icmp sgt i64 %addtmp117, %b.cap120
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead121, %b.len_big_check
  %b.len.gep122 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load118, i32 0, i32 0
  store i64 %addtmp117, ptr %b.len.gep122, align 8
  br label %choice.exit108

b.len_oob:                                        ; preds = %b.len_big_check, %choice.else107
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead121:                                    ; No predecessors!
  br label %b.len_ok

choice.then127:                                   ; preds = %loop.exit.62
  ret { i64, ptr } zeroinitializer

choice.exit128:                                   ; preds = %ret.dead129, %loop.exit.62
  %var.load130 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 0
  %b.freeze.len131 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 1
  %b.freeze.data132 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead129:                                      ; No predecessors!
  br label %choice.exit128

b.freeze.check:                                   ; preds = %choice.exit128
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data132, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data132, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data132, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len131, 1
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data132, i64 %b.freeze.len131, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len131
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit128
  %b.freeze.data134 = phi ptr [ %b.freeze.data132, %choice.exit128 ], [ %b.freeze.data132, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len131, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data134, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load130, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.niche.nn = icmp ne ptr %builder.freeze, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

ret.niche.load:                                   ; preds = %b.freeze.done
  %ret.niche.val = load { i64, ptr }, ptr %builder.freeze, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %b.freeze.done
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %b.freeze.done ]
  ret { i64, ptr } %ret.niche.pack
}

define { i1, i64 } @"io::read_byte"(ptr %0) #3 {
entry:
  %var.b = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.r, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load1, i32 0, i32 1
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load3, i32 0, i32 0
  %b.len4 = load i64, ptr %b.len, align 8
  %cmptmp = icmp sge i64 %fld.load, %b.len4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load5 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load5)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  %var.load6 = load ptr, ptr %var.r, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %var.load9 = load ptr, ptr %var.r, align 8
  %fld.gep10 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load9, i32 0, i32 1
  %fld.load11 = load ptr, ptr %fld.gep10, align 8
  %b.len12 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load11, i32 0, i32 0
  %b.len13 = load i64, ptr %b.len12, align 8
  %cmptmp14 = icmp sge i64 %fld.load8, %b.len13
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.then15:                                    ; preds = %choice.exit
  ret { i1, i64 } zeroinitializer

choice.exit16:                                    ; preds = %ret.dead, %choice.exit
  %var.load17 = load ptr, ptr %var.r, align 8
  %fld.gep18 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load17, i32 0, i32 1
  %fld.load19 = load ptr, ptr %fld.gep18, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 0
  %b.read.len20 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 1
  %b.read.data21 = load ptr, ptr %b.read.data, align 8
  %var.load22 = load ptr, ptr %var.r, align 8
  %fld.gep23 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load22, i32 0, i32 2
  %fld.load24 = load i64, ptr %fld.gep23, align 8
  %idx.oob = icmp uge i64 %fld.load24, %b.read.len20
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit16

idx_ok:                                           ; preds = %abort.dead, %choice.exit16
  %s.byte.gep = getelementptr i8, ptr %b.read.data21, i64 %fld.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %var.load26 = load ptr, ptr %var.r, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %addtmp = add i64 %fld.load28, 1
  %fld.gep29 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load25, i32 0, i32 2
  store i64 %addtmp, ptr %fld.gep29, align 8
  %var.load30 = load i64, ptr %var.b, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %var.load30, 1
  ret { i1, i64 } %ram.pay

idx_oob:                                          ; preds = %choice.exit16
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok
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

define { i64, ptr } @"io::read_until"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %builder.freeze373 = alloca { i64, ptr }, align 8
  %builder.freeze320 = alloca { i64, ptr }, align 8
  %var.has_delim = alloca i1, align 1
  %builder.freeze148 = alloca { i64, ptr }, align 8
  %var._i51 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._50 = alloca i64, align 8
  %loop.step.65 = alloca i64, align 8
  %loop.idx.65 = alloca i64, align 8
  %"var.found_idx'" = alloca i64, align 8
  %var.scan_count = alloca i64, align 8
  %var.in_buf = alloca i64, align 8
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.rem_budget = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.64 = alloca i64, align 8
  %loop.idx.64 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.max = alloca i64, align 8
  %var.delim = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.delim, align 8
  store i64 %2, ptr %var.max, align 8
  %var.load = load i64, ptr %var.max, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.max, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %var.load1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %var.load1
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

choice.exit:                                      ; preds = %choice.exit340, %choice.then
  %choice.res380 = phi ptr [ null, %choice.then ], [ %choice.res379, %choice.exit340 ]
  %ret.niche.nn381 = icmp ne ptr %choice.res380, null
  br i1 %ret.niche.nn381, label %ret.niche.load382, label %ret.niche.merge383

b.buf.len2:                                       ; preds = %abort.dead, %choice.else
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

str_overflow_abort:                               ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

loop.header.64:                                   ; preds = %loop.latch.64, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.64, align 8
  br label %loop.body.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.64, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load ptr, ptr %var.r, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load4, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load5 = load ptr, ptr %var.r, align 8
  %fld.gep6 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load5, i32 0, i32 1
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load7, i32 0, i32 0
  %b.len8 = load i64, ptr %b.len, align 8
  %cmptmp9 = icmp sge i64 %fld.load, %b.len8
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

loop.exit.nat.64:                                 ; No predecessors!
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %choice.exit71
  %step.val332 = load i64, ptr %loop.step.64, align 8
  %loop.next333 = add i64 %counter.load, %step.val332
  store i64 %loop.next333, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %choice.then15, %loop.exit.nat.64
  %var.load334 = load ptr, ptr %var.out, align 8
  %b.len335 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load334, i32 0, i32 0
  %b.len336 = load i64, ptr %b.len335, align 8
  %cmptmp337 = icmp sgt i64 %b.len336, 0
  br i1 %cmptmp337, label %choice.then338, label %choice.else339

choice.then10:                                    ; preds = %loop.body.64
  %var.load12 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load12)
  store i64 %call.res, ptr %var.n, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.exit11:                                    ; preds = %choice.exit16, %loop.body.64
  %var.load17 = load i64, ptr %var.max, align 8
  %var.load18 = load ptr, ptr %var.out, align 8
  %b.len19 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load18, i32 0, i32 0
  %b.len20 = load i64, ptr %b.len19, align 8
  %subtmp = sub i64 %var.load17, %b.len20
  store i64 %subtmp, ptr %var.rem_budget, align 8
  %var.load21 = load i64, ptr %var.rem_budget, align 8
  %cmptmp22 = icmp sle i64 %var.load21, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

choice.then15:                                    ; preds = %choice.then10
  br label %loop.exit.64

choice.exit16:                                    ; preds = %choice.then10
  br label %choice.exit11

choice.then23:                                    ; preds = %choice.exit11
  %var.load25 = load ptr, ptr %var.out, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  %b.freeze.len26 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  %b.freeze.data27 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit24:                                    ; preds = %ret.dead, %choice.exit11
  %var.load30 = load ptr, ptr %var.r, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load30, i32 0, i32 1
  %fld.load32 = load ptr, ptr %fld.gep31, align 8
  %b.len33 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load32, i32 0, i32 0
  %b.len34 = load i64, ptr %b.len33, align 8
  %var.load35 = load ptr, ptr %var.r, align 8
  %fld.gep36 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load35, i32 0, i32 2
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %subtmp38 = sub i64 %b.len34, %fld.load37
  store i64 %subtmp38, ptr %var.in_buf, align 8
  %var.load39 = load i64, ptr %var.in_buf, align 8
  %var.load40 = load i64, ptr %var.rem_budget, align 8
  %cmptmp41 = icmp slt i64 %var.load39, %var.load40
  br i1 %cmptmp41, label %choice.then42, label %choice.else43

b.freeze.check:                                   ; preds = %choice.then23
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data27, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data27, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data27, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len26, 1
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data27, i64 %b.freeze.len26, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len26
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then23
  %b.freeze.data29 = phi ptr [ %b.freeze.data27, %choice.then23 ], [ %b.freeze.data27, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len26, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data29, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load25, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.niche.nn = icmp ne ptr %builder.freeze, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

ret.niche.load:                                   ; preds = %b.freeze.done
  %ret.niche.val = load { i64, ptr }, ptr %builder.freeze, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %b.freeze.done
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %b.freeze.done ]
  ret { i64, ptr } %ret.niche.pack

ret.dead:                                         ; No predecessors!
  br label %choice.exit24

choice.then42:                                    ; preds = %choice.exit24
  %var.load45 = load i64, ptr %var.in_buf, align 8
  br label %choice.exit44

choice.else43:                                    ; preds = %choice.exit24
  %var.load46 = load i64, ptr %var.rem_budget, align 8
  br label %choice.exit44

choice.exit44:                                    ; preds = %choice.else43, %choice.then42
  %choice.res = phi i64 [ %var.load45, %choice.then42 ], [ %var.load46, %choice.else43 ]
  store i64 %choice.res, ptr %var.scan_count, align 8
  store i64 -1, ptr %"var.found_idx'", align 8
  %var.load47 = load i64, ptr %var.scan_count, align 8
  store i64 0, ptr %loop.idx.65, align 8
  br label %loop.header.65

loop.header.65:                                   ; preds = %loop.latch.65, %choice.exit44
  %counter.load48 = load i64, ptr %loop.idx.65, align 8
  %loop.cond = icmp slt i64 %counter.load48, %var.load47
  br i1 %loop.cond, label %loop.body.65, label %loop.exit.nat.65

loop.body.65:                                     ; preds = %loop.header.65
  %loop.rel.i49 = sub i64 %counter.load48, 0
  store i64 1, ptr %loop.step.65, align 8
  store i64 %counter.load48, ptr %var._50, align 8
  store i64 %counter.load48, ptr %var.i, align 8
  store i64 %loop.rel.i49, ptr %var._i51, align 8
  %var.load52 = load ptr, ptr %var.r, align 8
  %fld.gep53 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load52, i32 0, i32 1
  %fld.load54 = load ptr, ptr %fld.gep53, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load54, i32 0, i32 0
  %b.read.len55 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load54, i32 0, i32 1
  %b.read.data56 = load ptr, ptr %b.read.data, align 8
  %var.load57 = load ptr, ptr %var.r, align 8
  %fld.gep58 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load57, i32 0, i32 2
  %fld.load59 = load i64, ptr %fld.gep58, align 8
  %var.load60 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %fld.load59, %var.load60
  %idx.oob = icmp uge i64 %addtmp, %b.read.len55
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.65:                                 ; preds = %loop.header.65
  br label %loop.exit.65

loop.latch.65:                                    ; preds = %choice.exit65
  %step.val = load i64, ptr %loop.step.65, align 8
  %loop.next = add i64 %counter.load48, %step.val
  store i64 %loop.next, ptr %loop.idx.65, align 8
  br label %loop.header.65

loop.exit.65:                                     ; preds = %choice.then64, %loop.exit.nat.65
  %var.load67 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp68 = icmp sge i64 %var.load67, 0
  br i1 %cmptmp68, label %choice.then69, label %choice.else70

idx_ok:                                           ; preds = %abort.dead61, %loop.body.65
  %s.byte.gep = getelementptr i8, ptr %b.read.data56, i64 %addtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load62 = load i64, ptr %var.delim, align 8
  %cmptmp63 = icmp eq i64 %s.byte.val, %var.load62
  br i1 %cmptmp63, label %choice.then64, label %choice.exit65

idx_oob:                                          ; preds = %loop.body.65
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead61:                                     ; No predecessors!
  br label %idx_ok

choice.then64:                                    ; preds = %idx_ok
  %var.load66 = load i64, ptr %var.i, align 8
  store i64 %var.load66, ptr %"var.found_idx'", align 8
  br label %loop.exit.65

choice.exit65:                                    ; preds = %idx_ok
  br label %loop.latch.65

choice.then69:                                    ; preds = %loop.exit.65
  %var.load72 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp73 = icmp sgt i64 %var.load72, 0
  br i1 %cmptmp73, label %choice.then74, label %choice.exit75

choice.else70:                                    ; preds = %loop.exit.65
  %var.load160 = load i64, ptr %var.scan_count, align 8
  %cmptmp161 = icmp sgt i64 %var.load160, 0
  br i1 %cmptmp161, label %choice.then162, label %choice.exit163

choice.exit71:                                    ; preds = %choice.exit250, %ret.dead159
  br label %loop.latch.64

choice.then74:                                    ; preds = %choice.then69
  %b.load = load ptr, ptr %var.out, align 8
  %var.load76 = load ptr, ptr %var.r, align 8
  %fld.gep77 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load76, i32 0, i32 1
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %b.read.len79 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 0
  %b.read.len80 = load i64, ptr %b.read.len79, align 8
  %b.read.data81 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 1
  %b.read.data82 = load ptr, ptr %b.read.data81, align 8
  %var.load83 = load ptr, ptr %var.r, align 8
  %fld.gep84 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load83, i32 0, i32 2
  %fld.load85 = load i64, ptr %fld.gep84, align 8
  %var.load86 = load ptr, ptr %var.r, align 8
  %fld.gep87 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load86, i32 0, i32 2
  %fld.load88 = load i64, ptr %fld.gep87, align 8
  %var.load89 = load i64, ptr %"var.found_idx'", align 8
  %addtmp90 = add i64 %fld.load88, %var.load89
  %start.is_neg = icmp slt i64 %fld.load85, 0
  %rel.start = add i64 %b.read.len80, %fld.load85
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load85
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len80
  %final.start = select i1 %start.gt.len, i64 %b.read.len80, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp90, 0
  %rel.end = add i64 %b.read.len80, %addtmp90
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp90
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len80
  %final.end = select i1 %end.gt.len, i64 %b.read.len80, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data82, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len91 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len91, i64 %view.len)
  %sum92 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf93 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf93, label %str_overflow_abort95, label %b.app.new.len94

choice.exit75:                                    ; preds = %b.grow_done, %choice.then69
  %var.load108 = load ptr, ptr %var.r, align 8
  %var.load109 = load ptr, ptr %var.r, align 8
  %fld.gep110 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load109, i32 0, i32 2
  %fld.load111 = load i64, ptr %fld.gep110, align 8
  %var.load112 = load i64, ptr %"var.found_idx'", align 8
  %addtmp113 = add i64 %fld.load111, %var.load112
  %addtmp114 = add i64 %addtmp113, 1
  %fld.gep115 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load108, i32 0, i32 2
  store i64 %addtmp114, ptr %fld.gep115, align 8
  %var.load116 = load ptr, ptr %var.out, align 8
  %b.freeze.len117 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 0
  %b.freeze.len118 = load i64, ptr %b.freeze.len117, align 8
  %b.freeze.data119 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 1
  %b.freeze.data120 = load ptr, ptr %b.freeze.data119, align 8
  %b.freeze.arena121 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep122 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena121, i32 0, i32 1
  %b.freeze.nc123 = load i64, ptr %b.freeze.nc.gep122, align 8
  %b.freeze.has.chunk124 = icmp sgt i64 %b.freeze.nc123, 0
  br i1 %b.freeze.has.chunk124, label %b.freeze.check125, label %b.freeze.done127

b.app.new.len94:                                  ; preds = %abort.dead96, %choice.then74
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap97 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap97, %sum92
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort95:                             ; preds = %choice.then74
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead96:                                     ; No predecessors!
  br label %b.app.new.len94

b.grow2:                                          ; preds = %b.app.new.len94
  %b.cap2 = mul i64 %b.cap97, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum92
  %b.new.cap = select i1 %b.cap.need, i64 %sum92, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len298 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data299 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum100 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf101 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf101, label %str_overflow_abort103, label %b.new.buf.len2102

b.nogrow2:                                        ; preds = %b.app.new.len94
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2102
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data106 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data106, i64 %b.app.cur.len91
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data106, i64 %sum92
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum92, ptr %b.len.gep107, align 8
  br label %choice.exit75

b.new.buf.len2102:                                ; preds = %abort.dead104, %b.grow2
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 %sum100)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data299, i64 %b.cur.len298, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len298
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort103:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead104:                                    ; No predecessors!
  br label %b.new.buf.len2102

b.freeze.check125:                                ; preds = %choice.exit75
  %b.freeze.last.idx128 = sub i64 %b.freeze.nc123, 1
  %b.freeze.chunks.gep129 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena121, i32 0, i32 3
  %b.freeze.chunk.slot130 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep129, i64 0, i64 %b.freeze.last.idx128
  %b.freeze.last.chunk131 = load ptr, ptr %b.freeze.chunk.slot130, align 8
  %b.freeze.off.gep132 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena121, i32 0, i32 2
  %b.freeze.off133 = load i64, ptr %b.freeze.off.gep132, align 8
  %b.freeze.bump134 = getelementptr i8, ptr %b.freeze.last.chunk131, i64 %b.freeze.off133
  %b.freeze.cap.gep135 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena121, i32 0, i32 0
  %b.freeze.cap136 = load i64, ptr %b.freeze.cap.gep135, align 8
  %b.freeze.chunk.end137 = getelementptr i8, ptr %b.freeze.last.chunk131, i64 %b.freeze.cap136
  %b.freeze.ge.chunk138 = icmp uge ptr %b.freeze.data120, %b.freeze.last.chunk131
  %b.freeze.lt.end139 = icmp ult ptr %b.freeze.data120, %b.freeze.chunk.end137
  %b.freeze.in.chunk140 = and i1 %b.freeze.ge.chunk138, %b.freeze.lt.end139
  %b.freeze.ge.bump141 = icmp uge ptr %b.freeze.data120, %b.freeze.bump134
  %b.freeze.reaped142 = and i1 %b.freeze.in.chunk140, %b.freeze.ge.bump141
  br i1 %b.freeze.reaped142, label %b.freeze.copy126, label %b.freeze.done127

b.freeze.copy126:                                 ; preds = %b.freeze.check125
  %b.freeze.alen143 = add i64 %b.freeze.len118, 1
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 %b.freeze.alen143)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh145, ptr align 1 %b.freeze.data120, i64 %b.freeze.len118, i1 false)
  %b.freeze.nul146 = getelementptr i8, ptr %b.freeze.fresh145, i64 %b.freeze.len118
  store i8 0, ptr %b.freeze.nul146, align 1
  br label %b.freeze.done127

b.freeze.done127:                                 ; preds = %b.freeze.copy126, %b.freeze.check125, %choice.exit75
  %b.freeze.data147 = phi ptr [ %b.freeze.data120, %choice.exit75 ], [ %b.freeze.data120, %b.freeze.check125 ], [ %b.freeze.fresh145, %b.freeze.copy126 ]
  %str.build.len.gep149 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze148, i32 0, i32 0
  store i64 %b.freeze.len118, ptr %str.build.len.gep149, align 8
  %str.build.data.gep150 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze148, i32 0, i32 1
  store ptr %b.freeze.data147, ptr %str.build.data.gep150, align 8
  %b.freeze.rst.len151 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len151, align 8
  %b.freeze.rst.data152 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data152, align 8
  %b.freeze.rst.cap153 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap153, align 8
  %ret.niche.nn154 = icmp ne ptr %builder.freeze148, null
  br i1 %ret.niche.nn154, label %ret.niche.load155, label %ret.niche.merge156

ret.niche.load155:                                ; preds = %b.freeze.done127
  %ret.niche.val157 = load { i64, ptr }, ptr %builder.freeze148, align 8
  br label %ret.niche.merge156

ret.niche.merge156:                               ; preds = %ret.niche.load155, %b.freeze.done127
  %ret.niche.pack158 = phi { i64, ptr } [ %ret.niche.val157, %ret.niche.load155 ], [ zeroinitializer, %b.freeze.done127 ]
  ret { i64, ptr } %ret.niche.pack158

ret.dead159:                                      ; No predecessors!
  br label %choice.exit71

choice.then162:                                   ; preds = %choice.else70
  %b.load164 = load ptr, ptr %var.out, align 8
  %var.load165 = load ptr, ptr %var.r, align 8
  %fld.gep166 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load165, i32 0, i32 1
  %fld.load167 = load ptr, ptr %fld.gep166, align 8
  %b.read.len168 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load167, i32 0, i32 0
  %b.read.len169 = load i64, ptr %b.read.len168, align 8
  %b.read.data170 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load167, i32 0, i32 1
  %b.read.data171 = load ptr, ptr %b.read.data170, align 8
  %var.load172 = load ptr, ptr %var.r, align 8
  %fld.gep173 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load172, i32 0, i32 2
  %fld.load174 = load i64, ptr %fld.gep173, align 8
  %var.load175 = load ptr, ptr %var.r, align 8
  %fld.gep176 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load175, i32 0, i32 2
  %fld.load177 = load i64, ptr %fld.gep176, align 8
  %var.load178 = load i64, ptr %var.scan_count, align 8
  %addtmp179 = add i64 %fld.load177, %var.load178
  %start.is_neg180 = icmp slt i64 %fld.load174, 0
  %rel.start181 = add i64 %b.read.len169, %fld.load174
  %norm.start182 = select i1 %start.is_neg180, i64 %rel.start181, i64 %fld.load174
  %start.lt.0183 = icmp slt i64 %norm.start182, 0
  %c.start.0184 = select i1 %start.lt.0183, i64 0, i64 %norm.start182
  %start.gt.len185 = icmp sgt i64 %c.start.0184, %b.read.len169
  %final.start186 = select i1 %start.gt.len185, i64 %b.read.len169, i64 %c.start.0184
  %end.is_neg187 = icmp slt i64 %addtmp179, 0
  %rel.end188 = add i64 %b.read.len169, %addtmp179
  %norm.end189 = select i1 %end.is_neg187, i64 %rel.end188, i64 %addtmp179
  %end.lt.0190 = icmp slt i64 %norm.end189, 0
  %c.end.0191 = select i1 %end.lt.0190, i64 0, i64 %norm.end189
  %end.gt.len192 = icmp sgt i64 %c.end.0191, %b.read.len169
  %final.end193 = select i1 %end.gt.len192, i64 %b.read.len169, i64 %c.end.0191
  %view.empty194 = icmp sle i64 %final.end193, %final.start186
  %view.len.sub195 = sub i64 %final.end193, %final.start186
  %view.len196 = select i1 %view.empty194, i64 0, i64 %view.len.sub195
  %view.data197 = getelementptr i8, ptr %b.read.data171, i64 %final.start186
  %b.app.cur.len198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load164, i32 0, i32 0
  %b.app.cur.len199 = load i64, ptr %b.app.cur.len198, align 8
  %b.app.new.len200 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len199, i64 %view.len196)
  %sum201 = extractvalue { i64, i1 } %b.app.new.len200, 0
  %ovf202 = extractvalue { i64, i1 } %b.app.new.len200, 1
  br i1 %ovf202, label %str_overflow_abort204, label %b.app.new.len203

choice.exit163:                                   ; preds = %b.grow_done211, %choice.else70
  %var.load237 = load ptr, ptr %var.r, align 8
  %var.load238 = load ptr, ptr %var.r, align 8
  %fld.gep239 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load238, i32 0, i32 2
  %fld.load240 = load i64, ptr %fld.gep239, align 8
  %var.load241 = load i64, ptr %var.scan_count, align 8
  %addtmp242 = add i64 %fld.load240, %var.load241
  %fld.gep243 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load237, i32 0, i32 2
  store i64 %addtmp242, ptr %fld.gep243, align 8
  %var.load244 = load ptr, ptr %var.out, align 8
  %b.len245 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load244, i32 0, i32 0
  %b.len246 = load i64, ptr %b.len245, align 8
  %var.load247 = load i64, ptr %var.max, align 8
  %cmptmp248 = icmp sge i64 %b.len246, %var.load247
  br i1 %cmptmp248, label %choice.then249, label %choice.exit250

b.app.new.len203:                                 ; preds = %abort.dead205, %choice.then162
  %b.cap206 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load164, i32 0, i32 2
  %b.cap207 = load i64, ptr %b.cap206, align 8
  %b.need.grow208 = icmp slt i64 %b.cap207, %sum201
  br i1 %b.need.grow208, label %b.grow2209, label %b.nogrow2210

str_overflow_abort204:                            ; preds = %choice.then162
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead205:                                    ; No predecessors!
  br label %b.app.new.len203

b.grow2209:                                       ; preds = %b.app.new.len203
  %b.cap2212 = mul i64 %b.cap207, 2
  %b.cap.small213 = icmp slt i64 %b.cap2212, 16
  %b.cap.grow214 = select i1 %b.cap.small213, i64 16, i64 %b.cap2212
  %b.cap.need215 = icmp slt i64 %b.cap.grow214, %sum201
  %b.new.cap216 = select i1 %b.cap.need215, i64 %sum201, i64 %b.cap.grow214
  %b.cur.len2217 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load164, i32 0, i32 0
  %b.cur.len2218 = load i64, ptr %b.cur.len2217, align 8
  %b.cur.data2219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load164, i32 0, i32 1
  %b.cur.data2220 = load ptr, ptr %b.cur.data2219, align 8
  %b.new.buf.len2221 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap216, i64 1)
  %sum222 = extractvalue { i64, i1 } %b.new.buf.len2221, 0
  %ovf223 = extractvalue { i64, i1 } %b.new.buf.len2221, 1
  br i1 %ovf223, label %str_overflow_abort225, label %b.new.buf.len2224

b.nogrow2210:                                     ; preds = %b.app.new.len203
  br label %b.grow_done211

b.grow_done211:                                   ; preds = %b.nogrow2210, %b.new.buf.len2224
  %b.app.data232 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load164, i32 0, i32 1
  %b.app.data233 = load ptr, ptr %b.app.data232, align 8
  %b.app.dst234 = getelementptr i8, ptr %b.app.data233, i64 %b.app.cur.len199
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst234, ptr align 1 %view.data197, i64 %view.len196, i1 false)
  %b.app.nul235 = getelementptr i8, ptr %b.app.data233, i64 %sum201
  store i8 0, ptr %b.app.nul235, align 1
  %b.len.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load164, i32 0, i32 0
  store i64 %sum201, ptr %b.len.gep236, align 8
  br label %choice.exit163

b.new.buf.len2224:                                ; preds = %abort.dead226, %b.grow2209
  %arena.cur227 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2228 = call ptr @dva_arena_alloc(ptr %arena.cur227, i64 %sum222)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2228, ptr align 1 %b.cur.data2220, i64 %b.cur.len2218, i1 false)
  %b.grow2.nul229 = getelementptr i8, ptr %b.new.buf2228, i64 %b.cur.len2218
  store i8 0, ptr %b.grow2.nul229, align 1
  %b.new.data2.gep230 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load164, i32 0, i32 1
  store ptr %b.new.buf2228, ptr %b.new.data2.gep230, align 8
  %b.new.cap2.gep231 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load164, i32 0, i32 2
  store i64 %b.new.cap216, ptr %b.new.cap2.gep231, align 8
  br label %b.grow_done211

str_overflow_abort225:                            ; preds = %b.grow2209
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead226:                                    ; No predecessors!
  br label %b.new.buf.len2224

choice.then249:                                   ; preds = %choice.exit163
  %var.load251 = load ptr, ptr %var.r, align 8
  %fld.gep252 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load251, i32 0, i32 2
  %fld.load253 = load i64, ptr %fld.gep252, align 8
  %var.load254 = load ptr, ptr %var.r, align 8
  %fld.gep255 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load254, i32 0, i32 1
  %fld.load256 = load ptr, ptr %fld.gep255, align 8
  %b.len257 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load256, i32 0, i32 0
  %b.len258 = load i64, ptr %b.len257, align 8
  %cmptmp259 = icmp slt i64 %fld.load253, %b.len258
  br i1 %cmptmp259, label %and.66.then, label %and.66.else

choice.exit250:                                   ; preds = %ret.dead331, %choice.exit163
  br label %choice.exit71

and.66.then:                                      ; preds = %choice.then249
  %var.load260 = load ptr, ptr %var.r, align 8
  %fld.gep261 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load260, i32 0, i32 1
  %fld.load262 = load ptr, ptr %fld.gep261, align 8
  %b.read.len263 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load262, i32 0, i32 0
  %b.read.len264 = load i64, ptr %b.read.len263, align 8
  %b.read.data265 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load262, i32 0, i32 1
  %b.read.data266 = load ptr, ptr %b.read.data265, align 8
  %var.load267 = load ptr, ptr %var.r, align 8
  %fld.gep268 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load267, i32 0, i32 2
  %fld.load269 = load i64, ptr %fld.gep268, align 8
  %idx.oob270 = icmp uge i64 %fld.load269, %b.read.len264
  br i1 %idx.oob270, label %idx_oob272, label %idx_ok271

and.66.else:                                      ; preds = %choice.then249
  br label %and.66.exit

and.66.exit:                                      ; preds = %and.66.else, %idx_ok271
  %and.66.phi = phi i1 [ %cmptmp278, %idx_ok271 ], [ %cmptmp259, %and.66.else ]
  store i1 %and.66.phi, ptr %var.has_delim, align 1
  %var.load279 = load i1, ptr %var.has_delim, align 1
  br i1 %var.load279, label %choice.then280, label %choice.exit281

idx_ok271:                                        ; preds = %abort.dead273, %and.66.then
  %s.byte.gep274 = getelementptr i8, ptr %b.read.data266, i64 %fld.load269
  %s.byte275 = load i8, ptr %s.byte.gep274, align 1
  %s.byte.val276 = zext i8 %s.byte275 to i64
  %var.load277 = load i64, ptr %var.delim, align 8
  %cmptmp278 = icmp eq i64 %s.byte.val276, %var.load277
  br label %and.66.exit

idx_oob272:                                       ; preds = %and.66.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead273:                                    ; No predecessors!
  br label %idx_ok271

choice.then280:                                   ; preds = %and.66.exit
  %var.load282 = load ptr, ptr %var.r, align 8
  %var.load283 = load ptr, ptr %var.r, align 8
  %fld.gep284 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load283, i32 0, i32 2
  %fld.load285 = load i64, ptr %fld.gep284, align 8
  %addtmp286 = add i64 %fld.load285, 1
  %fld.gep287 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load282, i32 0, i32 2
  store i64 %addtmp286, ptr %fld.gep287, align 8
  br label %choice.exit281

choice.exit281:                                   ; preds = %choice.then280, %and.66.exit
  %var.load288 = load ptr, ptr %var.out, align 8
  %b.freeze.len289 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load288, i32 0, i32 0
  %b.freeze.len290 = load i64, ptr %b.freeze.len289, align 8
  %b.freeze.data291 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load288, i32 0, i32 1
  %b.freeze.data292 = load ptr, ptr %b.freeze.data291, align 8
  %b.freeze.arena293 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep294 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena293, i32 0, i32 1
  %b.freeze.nc295 = load i64, ptr %b.freeze.nc.gep294, align 8
  %b.freeze.has.chunk296 = icmp sgt i64 %b.freeze.nc295, 0
  br i1 %b.freeze.has.chunk296, label %b.freeze.check297, label %b.freeze.done299

b.freeze.check297:                                ; preds = %choice.exit281
  %b.freeze.last.idx300 = sub i64 %b.freeze.nc295, 1
  %b.freeze.chunks.gep301 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena293, i32 0, i32 3
  %b.freeze.chunk.slot302 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep301, i64 0, i64 %b.freeze.last.idx300
  %b.freeze.last.chunk303 = load ptr, ptr %b.freeze.chunk.slot302, align 8
  %b.freeze.off.gep304 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena293, i32 0, i32 2
  %b.freeze.off305 = load i64, ptr %b.freeze.off.gep304, align 8
  %b.freeze.bump306 = getelementptr i8, ptr %b.freeze.last.chunk303, i64 %b.freeze.off305
  %b.freeze.cap.gep307 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena293, i32 0, i32 0
  %b.freeze.cap308 = load i64, ptr %b.freeze.cap.gep307, align 8
  %b.freeze.chunk.end309 = getelementptr i8, ptr %b.freeze.last.chunk303, i64 %b.freeze.cap308
  %b.freeze.ge.chunk310 = icmp uge ptr %b.freeze.data292, %b.freeze.last.chunk303
  %b.freeze.lt.end311 = icmp ult ptr %b.freeze.data292, %b.freeze.chunk.end309
  %b.freeze.in.chunk312 = and i1 %b.freeze.ge.chunk310, %b.freeze.lt.end311
  %b.freeze.ge.bump313 = icmp uge ptr %b.freeze.data292, %b.freeze.bump306
  %b.freeze.reaped314 = and i1 %b.freeze.in.chunk312, %b.freeze.ge.bump313
  br i1 %b.freeze.reaped314, label %b.freeze.copy298, label %b.freeze.done299

b.freeze.copy298:                                 ; preds = %b.freeze.check297
  %b.freeze.alen315 = add i64 %b.freeze.len290, 1
  %arena.cur316 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh317 = call ptr @dva_arena_alloc(ptr %arena.cur316, i64 %b.freeze.alen315)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh317, ptr align 1 %b.freeze.data292, i64 %b.freeze.len290, i1 false)
  %b.freeze.nul318 = getelementptr i8, ptr %b.freeze.fresh317, i64 %b.freeze.len290
  store i8 0, ptr %b.freeze.nul318, align 1
  br label %b.freeze.done299

b.freeze.done299:                                 ; preds = %b.freeze.copy298, %b.freeze.check297, %choice.exit281
  %b.freeze.data319 = phi ptr [ %b.freeze.data292, %choice.exit281 ], [ %b.freeze.data292, %b.freeze.check297 ], [ %b.freeze.fresh317, %b.freeze.copy298 ]
  %str.build.len.gep321 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze320, i32 0, i32 0
  store i64 %b.freeze.len290, ptr %str.build.len.gep321, align 8
  %str.build.data.gep322 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze320, i32 0, i32 1
  store ptr %b.freeze.data319, ptr %str.build.data.gep322, align 8
  %b.freeze.rst.len323 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load288, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len323, align 8
  %b.freeze.rst.data324 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load288, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data324, align 8
  %b.freeze.rst.cap325 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load288, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap325, align 8
  %ret.niche.nn326 = icmp ne ptr %builder.freeze320, null
  br i1 %ret.niche.nn326, label %ret.niche.load327, label %ret.niche.merge328

ret.niche.load327:                                ; preds = %b.freeze.done299
  %ret.niche.val329 = load { i64, ptr }, ptr %builder.freeze320, align 8
  br label %ret.niche.merge328

ret.niche.merge328:                               ; preds = %ret.niche.load327, %b.freeze.done299
  %ret.niche.pack330 = phi { i64, ptr } [ %ret.niche.val329, %ret.niche.load327 ], [ zeroinitializer, %b.freeze.done299 ]
  ret { i64, ptr } %ret.niche.pack330

ret.dead331:                                      ; No predecessors!
  br label %choice.exit250

choice.then338:                                   ; preds = %loop.exit.64
  %var.load341 = load ptr, ptr %var.out, align 8
  %b.freeze.len342 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load341, i32 0, i32 0
  %b.freeze.len343 = load i64, ptr %b.freeze.len342, align 8
  %b.freeze.data344 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load341, i32 0, i32 1
  %b.freeze.data345 = load ptr, ptr %b.freeze.data344, align 8
  %b.freeze.arena346 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep347 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena346, i32 0, i32 1
  %b.freeze.nc348 = load i64, ptr %b.freeze.nc.gep347, align 8
  %b.freeze.has.chunk349 = icmp sgt i64 %b.freeze.nc348, 0
  br i1 %b.freeze.has.chunk349, label %b.freeze.check350, label %b.freeze.done352

choice.else339:                                   ; preds = %loop.exit.64
  br label %choice.exit340

choice.exit340:                                   ; preds = %choice.else339, %b.freeze.done352
  %choice.res379 = phi ptr [ %builder.freeze373, %b.freeze.done352 ], [ null, %choice.else339 ]
  br label %choice.exit

b.freeze.check350:                                ; preds = %choice.then338
  %b.freeze.last.idx353 = sub i64 %b.freeze.nc348, 1
  %b.freeze.chunks.gep354 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena346, i32 0, i32 3
  %b.freeze.chunk.slot355 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep354, i64 0, i64 %b.freeze.last.idx353
  %b.freeze.last.chunk356 = load ptr, ptr %b.freeze.chunk.slot355, align 8
  %b.freeze.off.gep357 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena346, i32 0, i32 2
  %b.freeze.off358 = load i64, ptr %b.freeze.off.gep357, align 8
  %b.freeze.bump359 = getelementptr i8, ptr %b.freeze.last.chunk356, i64 %b.freeze.off358
  %b.freeze.cap.gep360 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena346, i32 0, i32 0
  %b.freeze.cap361 = load i64, ptr %b.freeze.cap.gep360, align 8
  %b.freeze.chunk.end362 = getelementptr i8, ptr %b.freeze.last.chunk356, i64 %b.freeze.cap361
  %b.freeze.ge.chunk363 = icmp uge ptr %b.freeze.data345, %b.freeze.last.chunk356
  %b.freeze.lt.end364 = icmp ult ptr %b.freeze.data345, %b.freeze.chunk.end362
  %b.freeze.in.chunk365 = and i1 %b.freeze.ge.chunk363, %b.freeze.lt.end364
  %b.freeze.ge.bump366 = icmp uge ptr %b.freeze.data345, %b.freeze.bump359
  %b.freeze.reaped367 = and i1 %b.freeze.in.chunk365, %b.freeze.ge.bump366
  br i1 %b.freeze.reaped367, label %b.freeze.copy351, label %b.freeze.done352

b.freeze.copy351:                                 ; preds = %b.freeze.check350
  %b.freeze.alen368 = add i64 %b.freeze.len343, 1
  %arena.cur369 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 %b.freeze.alen368)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh370, ptr align 1 %b.freeze.data345, i64 %b.freeze.len343, i1 false)
  %b.freeze.nul371 = getelementptr i8, ptr %b.freeze.fresh370, i64 %b.freeze.len343
  store i8 0, ptr %b.freeze.nul371, align 1
  br label %b.freeze.done352

b.freeze.done352:                                 ; preds = %b.freeze.copy351, %b.freeze.check350, %choice.then338
  %b.freeze.data372 = phi ptr [ %b.freeze.data345, %choice.then338 ], [ %b.freeze.data345, %b.freeze.check350 ], [ %b.freeze.fresh370, %b.freeze.copy351 ]
  %str.build.len.gep374 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze373, i32 0, i32 0
  store i64 %b.freeze.len343, ptr %str.build.len.gep374, align 8
  %str.build.data.gep375 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze373, i32 0, i32 1
  store ptr %b.freeze.data372, ptr %str.build.data.gep375, align 8
  %b.freeze.rst.len376 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load341, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len376, align 8
  %b.freeze.rst.data377 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load341, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data377, align 8
  %b.freeze.rst.cap378 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load341, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap378, align 8
  br label %choice.exit340

ret.niche.load382:                                ; preds = %choice.exit
  %ret.niche.val384 = load { i64, ptr }, ptr %choice.res380, align 8
  br label %ret.niche.merge383

ret.niche.merge383:                               ; preds = %ret.niche.load382, %choice.exit
  %ret.niche.pack385 = phi { i64, ptr } [ %ret.niche.val384, %ret.niche.load382 ], [ zeroinitializer, %choice.exit ]
  ret { i64, ptr } %ret.niche.pack385
}

define { i64, ptr } @"io::read_line"(ptr %0, i64 %1) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %var.end_idx = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.line = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.res = alloca ptr, align 8
  %var.max = alloca i64, align 8
  %var.r = alloca ptr, align 8
  store ptr %0, ptr %var.r, align 8
  store i64 %1, ptr %var.max, align 8
  %var.load = load ptr, ptr %var.r, align 8
  %var.load1 = load i64, ptr %var.max, align 8
  %call.res = call { i64, ptr } @"io::read_until"(ptr %var.load, i64 10, i64 %var.load1)
  %ret.niche.data = extractvalue { i64, ptr } %call.res, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

ret.niche.alloc:                                  ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %entry
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %entry ]
  store ptr %ret.niche.ptr, ptr %var.res, align 8
  %var.load2 = load ptr, ptr %var.res, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %ret.niche.done
  store ptr %var.load2, ptr %var._, align 8
  store ptr %var.load2, ptr %var.line, align 8
  %var.load3 = load ptr, ptr %var.line, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %str.len.query4 = load i64, ptr %str.len.query, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.else:                                      ; preds = %ret.niche.done
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit15
  %choice.res26 = phi ptr [ %choice.res, %choice.exit15 ], [ null, %choice.else ]
  %ret.niche.nn = icmp ne ptr %choice.res26, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  store i64 %str.len.query5, ptr %var.n, align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %var.load6, 0
  br i1 %cmptmp, label %and.67.then, label %and.67.else

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.67.then:                                      ; preds = %str_ok
  %var.load7 = load ptr, ptr %var.line, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 0
  %s.read.len8 = load i64, ptr %s.read.len, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load7, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %var.load11 = load i64, ptr %var.n, align 8
  %subtmp = sub i64 %var.load11, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

and.67.else:                                      ; preds = %str_ok
  br label %and.67.exit

and.67.exit:                                      ; preds = %and.67.else, %idx_ok
  %and.67.phi = phi i1 [ %cmptmp12, %idx_ok ], [ %cmptmp, %and.67.else ]
  br i1 %and.67.phi, label %choice.then13, label %choice.else14

idx_ok:                                           ; preds = %abort.dead, %and.67.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp12 = icmp eq i64 %s.byte.val, 13
  br label %and.67.exit

idx_oob:                                          ; preds = %and.67.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then13:                                    ; preds = %and.67.exit
  %var.load16 = load i64, ptr %var.n, align 8
  %subtmp17 = sub i64 %var.load16, 1
  store i64 %subtmp17, ptr %var.end_idx, align 8
  %var.load18 = load ptr, ptr %var.line, align 8
  %s.read.len19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %s.read.len20 = load i64, ptr %s.read.len19, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data22 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data22, align 8
  %var.load24 = load i64, ptr %var.end_idx, align 8
  %rel.start = add i64 %s.read.len21, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len21
  %final.start = select i1 %start.gt.len, i64 %s.read.len21, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load24, 0
  %rel.end = add i64 %s.read.len21, %var.load24
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load24
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len21
  %final.end = select i1 %end.gt.len, i64 %s.read.len21, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data23, i64 %final.start
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit15

choice.else14:                                    ; preds = %and.67.exit
  %var.load25 = load ptr, ptr %var.line, align 8
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res = phi ptr [ %str.view, %choice.then13 ], [ %var.load25, %choice.else14 ]
  br label %choice.exit

ret.niche.load:                                   ; preds = %choice.exit
  %ret.niche.val = load { i64, ptr }, ptr %choice.res26, align 8
  br label %ret.niche.merge

ret.niche.merge:                                  ; preds = %ret.niche.load, %choice.exit
  %ret.niche.pack = phi { i64, ptr } [ %ret.niche.val, %ret.niche.load ], [ zeroinitializer, %choice.exit ]
  ret { i64, ptr } %ret.niche.pack
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noinline "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
