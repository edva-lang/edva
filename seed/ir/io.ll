; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
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
@detached_builder = internal unnamed_addr constant [93 x i8] c"E4013: Builder buffer was detached by freeze. Append data or create a new Builder before &b\0A\00"
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
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
  %loop.step.88 = alloca i64, align 8
  %loop.idx.88 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.88, align 8
  br label %loop.header.88

choice.case:                                      ; preds = %str_ok
  ret i64 0

choice.next:                                      ; preds = %str_ok
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.88:                                   ; preds = %loop.latch.88, %choice.exit
  %counter.load = load i64, ptr %loop.idx.88, align 8
  br label %loop.body.88

loop.body.88:                                     ; preds = %loop.header.88
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.88, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load4 = load i64, ptr %"var.off'", align 8
  %var.load5 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load4, %var.load5
  br i1 %cmptmp, label %choice.then, label %choice.exit6

loop.exit.nat.88:                                 ; No predecessors!
  br label %loop.exit.88

loop.latch.88:                                    ; preds = %choice.exit17, %choice.then24
  %step.val = load i64, ptr %loop.step.88, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.88, align 8
  br label %loop.header.88

loop.exit.88:                                     ; preds = %choice.case34, %choice.else29, %choice.then, %loop.exit.nat.88
  %var.load40 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load40

choice.then:                                      ; preds = %loop.body.88
  br label %loop.exit.88

choice.exit6:                                     ; preds = %loop.body.88
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
  br label %loop.latch.88

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
  br label %loop.latch.88

choice.else:                                      ; preds = %choice.case18
  %var.load26 = load i64, ptr %"var.off'", align 8
  %cmptmp27 = icmp eq i64 %var.load26, 0
  br i1 %cmptmp27, label %choice.then28, label %choice.else29

choice.exit25:                                    ; preds = %choice.exit30
  br label %choice.exit17

choice.then28:                                    ; preds = %choice.else
  ret i64 -1

choice.else29:                                    ; preds = %choice.else
  br label %loop.exit.88

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
  br label %loop.exit.88

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
  %loop.step.89 = alloca i64, align 8
  %loop.idx.89 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.89, align 8
  br label %loop.header.89

choice.case:                                      ; preds = %str_ok8
  ret i64 0

choice.next:                                      ; preds = %str_ok8
  br label %choice.exit

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.89:                                   ; preds = %loop.latch.89, %choice.exit
  %counter.load = load i64, ptr %loop.idx.89, align 8
  br label %loop.body.89

loop.body.89:                                     ; preds = %loop.header.89
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.89, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load17 = load i64, ptr %"var.off'", align 8
  %var.load18 = load i64, ptr %var.total, align 8
  %cmptmp = icmp sge i64 %var.load17, %var.load18
  br i1 %cmptmp, label %choice.then, label %choice.exit19

loop.exit.nat.89:                                 ; No predecessors!
  br label %loop.exit.89

loop.latch.89:                                    ; preds = %choice.exit24, %choice.then102, %choice.then53
  %step.val = load i64, ptr %loop.step.89, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.89, align 8
  br label %loop.header.89

loop.exit.89:                                     ; preds = %choice.case112, %choice.else107, %choice.case63, %choice.else58, %choice.then, %loop.exit.nat.89
  %var.load118 = load i64, ptr %"var.off'", align 8
  ret i64 %var.load118

choice.then:                                      ; preds = %loop.body.89
  br label %loop.exit.89

choice.exit19:                                    ; preds = %loop.body.89
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
  br label %loop.latch.89

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
  br label %loop.latch.89

choice.exit54:                                    ; preds = %choice.then47
  %var.load55 = load i64, ptr %"var.off'", align 8
  %cmptmp56 = icmp eq i64 %var.load55, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.else58

choice.then57:                                    ; preds = %choice.exit54
  ret i64 -1

choice.else58:                                    ; preds = %choice.exit54
  br label %loop.exit.89

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
  br label %loop.exit.89

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
  br label %loop.latch.89

choice.exit103:                                   ; preds = %choice.then95
  %var.load104 = load i64, ptr %"var.off'", align 8
  %cmptmp105 = icmp eq i64 %var.load104, 0
  br i1 %cmptmp105, label %choice.then106, label %choice.else107

choice.then106:                                   ; preds = %choice.exit103
  ret i64 -1

choice.else107:                                   ; preds = %choice.exit103
  br label %loop.exit.89

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
  br label %loop.exit.89

choice.next113:                                   ; preds = %choice.else96
  br label %choice.exit111
}

define internal i64 @"io::#refill"(ptr %0) #3 {
entry:
  %var.errno_val = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.90 = alloca i64, align 8
  %loop.idx.90 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.exit12, %entry
  %var.load44 = load ptr, ptr %var.r, align 8
  %fld.gep45 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load44, i32 0, i32 3
  %fld.load46 = load i64, ptr %fld.gep45, align 8
  %cmptmp47 = icmp sgt i64 %fld.load46, 0
  br i1 %cmptmp47, label %choice.then48, label %choice.else

choice.then11:                                    ; preds = %choice.then
  %var.load13 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load13, i32 0, i32 1
  %b.ptr14 = load ptr, ptr %b.ptr, align 8
  %1 = icmp eq ptr %b.ptr14, null
  br i1 %1, label %b.detached, label %b.writable

choice.exit12:                                    ; preds = %addr_ok34, %choice.then
  %var.load40 = load ptr, ptr %var.buf, align 8
  %var.load41 = load i64, ptr %var.rem, align 8
  call void @"mem::truncate"(ptr %var.load40, i64 %var.load41)
  %var.load42 = load ptr, ptr %var.r, align 8
  %fld.gep43 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load42, i32 0, i32 2
  store i64 0, ptr %fld.gep43, align 8
  br label %choice.exit

b.detached:                                       ; preds = %choice.then11
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %choice.then11
  %addr.tag.int = ptrtoint ptr %b.ptr14 to i64
  %addr.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift = shl i64 %addr.tag.gen, 48
  %addr.tagged = or i64 %addr.tag.int, %addr.tag.shift
  %addr.tagged.ptr = inttoptr i64 %addr.tagged to ptr
  %var.load15 = load ptr, ptr %var.buf, align 8
  %b.ptr16 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load15, i32 0, i32 1
  %b.ptr17 = load ptr, ptr %b.ptr16, align 8
  %2 = icmp eq ptr %b.ptr17, null
  br i1 %2, label %b.detached18, label %b.writable19

abort.dead:                                       ; No predecessors!
  unreachable

b.detached18:                                     ; preds = %b.writable
  call void @dva_abort_detached_builder()
  unreachable

b.writable19:                                     ; preds = %b.writable
  %addr.tag.int21 = ptrtoint ptr %b.ptr17 to i64
  %addr.tag.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift23 = shl i64 %addr.tag.gen22, 48
  %addr.tagged24 = or i64 %addr.tag.int21, %addr.tag.shift23
  %addr.tagged.ptr25 = inttoptr i64 %addr.tagged24 to ptr
  %var.load26 = load ptr, ptr %var.r, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %ptr.int.l = ptrtoint ptr %addr.tagged.ptr25 to i64
  %addtmp = add i64 %ptr.int.l, %fld.load28
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load29 = load i64, ptr %var.rem, align 8
  %raw.int = ptrtoint ptr %addr.tagged.ptr to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

abort.dead20:                                     ; No predecessors!
  unreachable

addr_ok:                                          ; preds = %tag.slow_check, %b.writable19
  %raw.int30 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int31 = and i64 %raw.int30, 281474976710655
  %raw.clean.ptr32 = inttoptr i64 %raw.clean.int31 to ptr
  %addr.tag33 = lshr i64 %raw.int30, 48
  %tag.immortal35 = icmp eq i64 %addr.tag33, 0
  %active.gen36 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current37 = icmp eq i64 %addr.tag33, %active.gen36
  %tag.fast.ok38 = or i1 %tag.immortal35, %tag.current37
  br i1 %tag.fast.ok38, label %addr_ok34, label %tag.slow_check39

tag.slow_check:                                   ; preds = %b.writable19
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok34:                                        ; preds = %tag.slow_check39, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr32, i64 %var.load29, i1 false)
  br label %choice.exit12

tag.slow_check39:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag33)
  br label %addr_ok34

choice.then48:                                    ; preds = %choice.exit
  %var.load50 = load ptr, ptr %var.r, align 8
  %fld.gep51 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load50, i32 0, i32 3
  %fld.load52 = load i64, ptr %fld.gep51, align 8
  br label %choice.exit49

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.else, %choice.then48
  %choice.res = phi i64 [ %fld.load52, %choice.then48 ], [ 4096, %choice.else ]
  store i64 %choice.res, ptr %var.read_cap, align 8
  %var.load53 = load i64, ptr %var.read_cap, align 8
  %var.load54 = load ptr, ptr %var.buf, align 8
  %b.len55 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load54, i32 0, i32 0
  %b.len56 = load i64, ptr %b.len55, align 8
  %subtmp57 = sub i64 %var.load53, %b.len56
  store i64 %subtmp57, ptr %var.space, align 8
  %var.load58 = load i64, ptr %var.space, align 8
  %cmptmp59 = icmp sle i64 %var.load58, 0
  br i1 %cmptmp59, label %choice.then60, label %choice.else61

choice.then60:                                    ; preds = %choice.exit49
  br label %choice.exit62

choice.else61:                                    ; preds = %choice.exit49
  store i64 0, ptr %"var.n'", align 8
  store i64 0, ptr %loop.idx.90, align 8
  br label %loop.header.90

choice.exit62:                                    ; preds = %loop.exit.90, %choice.then60
  %choice.res99 = phi i64 [ 0, %choice.then60 ], [ %var.load98, %loop.exit.90 ]
  ret i64 %choice.res99

loop.header.90:                                   ; preds = %loop.latch.90, %choice.else61
  %counter.load = load i64, ptr %loop.idx.90, align 8
  br label %loop.body.90

loop.body.90:                                     ; preds = %loop.header.90
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.90, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load63 = load ptr, ptr %var.buf, align 8
  %var.load64 = load i64, ptr %var.space, align 8
  %load.r = load ptr, ptr %var.r, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 8)
  %env.store.gep = getelementptr inbounds { ptr }, ptr %env.alloc, i32 0, i32 0
  store ptr %load.r, ptr %env.store.gep, align 8
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 16)
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 0
  store ptr @"$anon_fn.93", ptr %clo.fn.gep, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res = call i64 @"mem::write_tail"(ptr %var.load63, i64 %var.load64, ptr %clo.alloc)
  store i64 %call.res, ptr %var.n, align 8
  %var.load66 = load i64, ptr %var.n, align 8
  %cmptmp67 = icmp slt i64 %var.load66, 0
  br i1 %cmptmp67, label %choice.then68, label %choice.else69

loop.exit.nat.90:                                 ; No predecessors!
  br label %loop.exit.90

loop.latch.90:                                    ; preds = %choice.exit70, %choice.then74
  %step.val = load i64, ptr %loop.step.90, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.90, align 8
  br label %loop.header.90

loop.exit.90:                                     ; preds = %choice.else89, %choice.then88, %choice.exit81, %loop.exit.nat.90
  %var.load98 = load i64, ptr %"var.n'", align 8
  br label %choice.exit62

choice.then68:                                    ; preds = %loop.body.90
  %call.res71 = call i64 @"libc::errno"()
  store i64 %call.res71, ptr %var.errno_val, align 8
  %var.load72 = load i64, ptr %var.errno_val, align 8
  %cmptmp73 = icmp eq i64 %var.load72, 4
  br i1 %cmptmp73, label %choice.then74, label %choice.exit75

choice.else69:                                    ; preds = %loop.body.90
  %var.load86 = load i64, ptr %var.n, align 8
  %cmptmp87 = icmp eq i64 %var.load86, 0
  br i1 %cmptmp87, label %choice.then88, label %choice.else89

choice.exit70:                                    ; preds = %choice.exit90
  br label %loop.latch.90

choice.then74:                                    ; preds = %choice.then68
  br label %loop.latch.90

choice.exit75:                                    ; preds = %choice.then68
  %var.load76 = load ptr, ptr %var.r, align 8
  %var.load77 = load i64, ptr %var.errno_val, align 8
  %cmptmp78 = icmp eq i64 %var.load77, 11
  br i1 %cmptmp78, label %choice.then79, label %choice.else80

choice.then79:                                    ; preds = %choice.exit75
  br label %choice.exit81

choice.else80:                                    ; preds = %choice.exit75
  %var.load82 = load i64, ptr %var.errno_val, align 8
  br label %choice.exit81

choice.exit81:                                    ; preds = %choice.else80, %choice.then79
  %choice.res83 = phi i64 [ 11, %choice.then79 ], [ %var.load82, %choice.else80 ]
  %fld.gep84 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load76, i32 0, i32 4
  store i64 %choice.res83, ptr %fld.gep84, align 8
  %var.load85 = load i64, ptr %var.n, align 8
  store i64 %var.load85, ptr %"var.n'", align 8
  br label %loop.exit.90

choice.then88:                                    ; preds = %choice.else69
  %var.load91 = load ptr, ptr %var.r, align 8
  %fld.gep92 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load91, i32 0, i32 5
  store i1 true, ptr %fld.gep92, align 1
  %var.load93 = load ptr, ptr %var.r, align 8
  %fld.gep94 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load93, i32 0, i32 4
  store i64 0, ptr %fld.gep94, align 8
  store i64 0, ptr %"var.n'", align 8
  br label %loop.exit.90

choice.else89:                                    ; preds = %choice.else69
  %var.load95 = load ptr, ptr %var.r, align 8
  %fld.gep96 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load95, i32 0, i32 4
  store i64 0, ptr %fld.gep96, align 8
  %var.load97 = load i64, ptr %var.n, align 8
  store i64 %var.load97, ptr %"var.n'", align 8
  br label %loop.exit.90

choice.exit90:                                    ; No predecessors!
  br label %choice.exit70
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_addr_msg(i64 %0) #6 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %0)
  br i1 %tag.valid, label %valid, label %stale

valid:                                            ; preds = %entry
  ret void

stale:                                            ; preds = %entry
  call void @dva_abort_stale_addr_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_addr_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

declare void @"mem::truncate"(ptr, i64) #3

define internal i64 @"$anon_fn.93"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %var.avail = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %env.gep = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.avail, align 8
  %var.load = load ptr, ptr %env.gep, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.dst, align 8
  %addr.ffi.int = ptrtoint ptr %var.load1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load2 = load i64, ptr %var.avail, align 8
  %coerce.trunc = trunc i64 %fld.load to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load2)
  ret i64 %call.res
}

declare i64 @"mem::write_tail"(ptr, i64, ptr) #3

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
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

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

b.freeze.check:                                   ; preds = %b.grow_done
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data77, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data77, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data77, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len76, 1
  %arena.cur78 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur78, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data77, i64 %b.freeze.len76, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len76
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data79 = phi ptr [ %b.freeze.data77, %b.grow_done ], [ %b.freeze.data77, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len76, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data79, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load75, i32 0, i32 2
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"io::read_all"(ptr %0, i64 %1) #3 {
entry:
  %var.errno_val = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.to_read = alloca i64, align 8
  %var.rem = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.92 = alloca i64, align 8
  %loop.idx.92 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.92, align 8
  br label %loop.header.92

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

loop.header.92:                                   ; preds = %loop.latch.92, %choice.exit12
  %counter.load = load i64, ptr %loop.idx.92, align 8
  br label %loop.body.92

loop.body.92:                                     ; preds = %loop.header.92
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.92, align 8
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

loop.exit.nat.92:                                 ; No predecessors!
  br label %loop.exit.92

loop.latch.92:                                    ; preds = %choice.exit82, %choice.then86
  %step.val = load i64, ptr %loop.step.92, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.92, align 8
  br label %loop.header.92

loop.exit.92:                                     ; preds = %choice.then99, %choice.exit93, %choice.then63, %loop.exit.nat.92
  %var.load108 = load ptr, ptr %var.res_b, align 8
  %b.len109 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load108, i32 0, i32 0
  %b.len110 = load i64, ptr %b.len109, align 8
  %cmptmp111 = icmp eq i64 %b.len110, 0
  br i1 %cmptmp111, label %choice.then112, label %choice.exit113

choice.then63:                                    ; preds = %loop.body.92
  br label %loop.exit.92

choice.exit64:                                    ; preds = %loop.body.92
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
  %var.load75 = load i64, ptr %var.to_read, align 8
  %load.r = load ptr, ptr %var.r, align 8
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 8)
  %env.store.gep = getelementptr inbounds { ptr }, ptr %env.alloc, i32 0, i32 0
  store ptr %load.r, ptr %env.store.gep, align 8
  %arena.cur77 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 16)
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 0
  store ptr @"$anon_fn.99", ptr %clo.fn.gep, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res = call i64 @"mem::write_tail"(ptr %var.load74, i64 %var.load75, ptr %clo.alloc)
  store i64 %call.res, ptr %var.n, align 8
  %var.load78 = load i64, ptr %var.n, align 8
  %cmptmp79 = icmp slt i64 %var.load78, 0
  br i1 %cmptmp79, label %choice.then80, label %choice.else81

choice.then80:                                    ; preds = %choice.exit70
  %call.res83 = call i64 @"libc::errno"()
  store i64 %call.res83, ptr %var.errno_val, align 8
  %var.load84 = load i64, ptr %var.errno_val, align 8
  %cmptmp85 = icmp eq i64 %var.load84, 4
  br i1 %cmptmp85, label %choice.then86, label %choice.exit87

choice.else81:                                    ; preds = %choice.exit70
  %var.load97 = load i64, ptr %var.n, align 8
  %cmptmp98 = icmp eq i64 %var.load97, 0
  br i1 %cmptmp98, label %choice.then99, label %choice.else100

choice.exit82:                                    ; preds = %choice.exit101
  br label %loop.latch.92

choice.then86:                                    ; preds = %choice.then80
  br label %loop.latch.92

choice.exit87:                                    ; preds = %choice.then80
  %var.load88 = load ptr, ptr %var.r, align 8
  %var.load89 = load i64, ptr %var.errno_val, align 8
  %cmptmp90 = icmp eq i64 %var.load89, 11
  br i1 %cmptmp90, label %choice.then91, label %choice.else92

choice.then91:                                    ; preds = %choice.exit87
  br label %choice.exit93

choice.else92:                                    ; preds = %choice.exit87
  %var.load94 = load i64, ptr %var.errno_val, align 8
  br label %choice.exit93

choice.exit93:                                    ; preds = %choice.else92, %choice.then91
  %choice.res95 = phi i64 [ 11, %choice.then91 ], [ %var.load94, %choice.else92 ]
  %fld.gep96 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load88, i32 0, i32 4
  store i64 %choice.res95, ptr %fld.gep96, align 8
  br label %loop.exit.92

choice.then99:                                    ; preds = %choice.else81
  %var.load102 = load ptr, ptr %var.r, align 8
  %fld.gep103 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load102, i32 0, i32 5
  store i1 true, ptr %fld.gep103, align 1
  %var.load104 = load ptr, ptr %var.r, align 8
  %fld.gep105 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load104, i32 0, i32 4
  store i64 0, ptr %fld.gep105, align 8
  br label %loop.exit.92

choice.else100:                                   ; preds = %choice.else81
  %var.load106 = load ptr, ptr %var.r, align 8
  %fld.gep107 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load106, i32 0, i32 4
  store i64 0, ptr %fld.gep107, align 8
  br label %choice.exit101

choice.exit101:                                   ; preds = %choice.else100
  br label %choice.exit82

choice.then112:                                   ; preds = %loop.exit.92
  ret { i64, ptr } zeroinitializer

choice.exit113:                                   ; preds = %ret.dead114, %loop.exit.92
  %var.load115 = load ptr, ptr %var.res_b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 0
  %b.freeze.len116 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 1
  %b.freeze.data117 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

ret.dead114:                                      ; No predecessors!
  br label %choice.exit113

b.freeze.check:                                   ; preds = %choice.exit113
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data117, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data117, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data117, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len116, 1
  %arena.cur118 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data117, i64 %b.freeze.len116, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len116
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit113
  %b.freeze.data119 = phi ptr [ %b.freeze.data117, %choice.exit113 ], [ %b.freeze.data117, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len116, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data119, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load115, i32 0, i32 2
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

define internal i64 @"$anon_fn.99"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %var.avail = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %env.gep = getelementptr inbounds { ptr }, ptr %0, i32 0, i32 0
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.avail, align 8
  %var.load = load ptr, ptr %env.gep, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.dst, align 8
  %addr.ffi.int = ptrtoint ptr %var.load1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load2 = load i64, ptr %var.avail, align 8
  %coerce.trunc = trunc i64 %fld.load to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %var.load2)
  ret i64 %call.res
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
  %var.has_delim = alloca i1, align 1
  %var._i52 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._51 = alloca i64, align 8
  %loop.step.95 = alloca i64, align 8
  %loop.idx.95 = alloca i64, align 8
  %"var.found_idx'" = alloca i64, align 8
  %var.scan_count = alloca i64, align 8
  %var.in_buf = alloca i64, align 8
  %var.rem_budget = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.94 = alloca i64, align 8
  %loop.idx.94 = alloca i64, align 8
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

choice.exit:                                      ; preds = %choice.exit349, %choice.then
  %choice.res393 = phi ptr [ null, %choice.then ], [ %choice.res392, %choice.exit349 ]
  %ret.niche.nn394 = icmp ne ptr %choice.res393, null
  br i1 %ret.niche.nn394, label %ret.niche.load395, label %ret.niche.merge396

b.buf.len2:                                       ; preds = %abort.dead, %choice.else
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.out, align 8
  store i64 0, ptr %loop.idx.94, align 8
  br label %loop.header.94

str_overflow_abort:                               ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len2

loop.header.94:                                   ; preds = %loop.latch.94, %b.buf.len2
  %counter.load = load i64, ptr %loop.idx.94, align 8
  br label %loop.body.94

loop.body.94:                                     ; preds = %loop.header.94
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.94, align 8
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

loop.exit.nat.94:                                 ; No predecessors!
  br label %loop.exit.94

loop.latch.94:                                    ; preds = %choice.exit72
  %step.val341 = load i64, ptr %loop.step.94, align 8
  %loop.next342 = add i64 %counter.load, %step.val341
  store i64 %loop.next342, ptr %loop.idx.94, align 8
  br label %loop.header.94

loop.exit.94:                                     ; preds = %choice.then15, %loop.exit.nat.94
  %var.load343 = load ptr, ptr %var.out, align 8
  %b.len344 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load343, i32 0, i32 0
  %b.len345 = load i64, ptr %b.len344, align 8
  %cmptmp346 = icmp sgt i64 %b.len345, 0
  br i1 %cmptmp346, label %choice.then347, label %choice.else348

choice.then10:                                    ; preds = %loop.body.94
  %var.load12 = load ptr, ptr %var.r, align 8
  %call.res = call i64 @"io::#refill"(ptr %var.load12)
  store i64 %call.res, ptr %var.n, align 8
  %var.load13 = load i64, ptr %var.n, align 8
  %cmptmp14 = icmp sle i64 %var.load13, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit16

choice.exit11:                                    ; preds = %choice.exit16, %loop.body.94
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
  br label %loop.exit.94

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
  %var.load31 = load ptr, ptr %var.r, align 8
  %fld.gep32 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load31, i32 0, i32 1
  %fld.load33 = load ptr, ptr %fld.gep32, align 8
  %b.len34 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load33, i32 0, i32 0
  %b.len35 = load i64, ptr %b.len34, align 8
  %var.load36 = load ptr, ptr %var.r, align 8
  %fld.gep37 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load36, i32 0, i32 2
  %fld.load38 = load i64, ptr %fld.gep37, align 8
  %subtmp39 = sub i64 %b.len35, %fld.load38
  store i64 %subtmp39, ptr %var.in_buf, align 8
  %var.load40 = load i64, ptr %var.in_buf, align 8
  %var.load41 = load i64, ptr %var.rem_budget, align 8
  %cmptmp42 = icmp slt i64 %var.load40, %var.load41
  br i1 %cmptmp42, label %choice.then43, label %choice.else44

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
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len26, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
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

choice.then43:                                    ; preds = %choice.exit24
  %var.load46 = load i64, ptr %var.in_buf, align 8
  br label %choice.exit45

choice.else44:                                    ; preds = %choice.exit24
  %var.load47 = load i64, ptr %var.rem_budget, align 8
  br label %choice.exit45

choice.exit45:                                    ; preds = %choice.else44, %choice.then43
  %choice.res = phi i64 [ %var.load46, %choice.then43 ], [ %var.load47, %choice.else44 ]
  store i64 %choice.res, ptr %var.scan_count, align 8
  store i64 -1, ptr %"var.found_idx'", align 8
  %var.load48 = load i64, ptr %var.scan_count, align 8
  store i64 0, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.header.95:                                   ; preds = %loop.latch.95, %choice.exit45
  %counter.load49 = load i64, ptr %loop.idx.95, align 8
  %loop.cond = icmp slt i64 %counter.load49, %var.load48
  br i1 %loop.cond, label %loop.body.95, label %loop.exit.nat.95

loop.body.95:                                     ; preds = %loop.header.95
  %loop.rel.i50 = sub i64 %counter.load49, 0
  store i64 1, ptr %loop.step.95, align 8
  store i64 %counter.load49, ptr %var._51, align 8
  store i64 %counter.load49, ptr %var.i, align 8
  store i64 %loop.rel.i50, ptr %var._i52, align 8
  %var.load53 = load ptr, ptr %var.r, align 8
  %fld.gep54 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load53, i32 0, i32 1
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load55, i32 0, i32 0
  %b.read.len56 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load55, i32 0, i32 1
  %b.read.data57 = load ptr, ptr %b.read.data, align 8
  %var.load58 = load ptr, ptr %var.r, align 8
  %fld.gep59 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load58, i32 0, i32 2
  %fld.load60 = load i64, ptr %fld.gep59, align 8
  %var.load61 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %fld.load60, %var.load61
  %idx.oob = icmp uge i64 %addtmp, %b.read.len56
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.nat.95:                                 ; preds = %loop.header.95
  br label %loop.exit.95

loop.latch.95:                                    ; preds = %choice.exit66
  %step.val = load i64, ptr %loop.step.95, align 8
  %loop.next = add i64 %counter.load49, %step.val
  store i64 %loop.next, ptr %loop.idx.95, align 8
  br label %loop.header.95

loop.exit.95:                                     ; preds = %choice.then65, %loop.exit.nat.95
  %var.load68 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp69 = icmp sge i64 %var.load68, 0
  br i1 %cmptmp69, label %choice.then70, label %choice.else71

idx_ok:                                           ; preds = %abort.dead62, %loop.body.95
  %s.byte.gep = getelementptr i8, ptr %b.read.data57, i64 %addtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %var.load63 = load i64, ptr %var.delim, align 8
  %cmptmp64 = icmp eq i64 %s.byte.val, %var.load63
  br i1 %cmptmp64, label %choice.then65, label %choice.exit66

idx_oob:                                          ; preds = %loop.body.95
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %idx_ok

choice.then65:                                    ; preds = %idx_ok
  %var.load67 = load i64, ptr %var.i, align 8
  store i64 %var.load67, ptr %"var.found_idx'", align 8
  br label %loop.exit.95

choice.exit66:                                    ; preds = %idx_ok
  br label %loop.latch.95

choice.then70:                                    ; preds = %loop.exit.95
  %var.load73 = load i64, ptr %"var.found_idx'", align 8
  %cmptmp74 = icmp sgt i64 %var.load73, 0
  br i1 %cmptmp74, label %choice.then75, label %choice.exit76

choice.else71:                                    ; preds = %loop.exit.95
  %var.load165 = load i64, ptr %var.scan_count, align 8
  %cmptmp166 = icmp sgt i64 %var.load165, 0
  br i1 %cmptmp166, label %choice.then167, label %choice.exit168

choice.exit72:                                    ; preds = %choice.exit255, %ret.dead164
  br label %loop.latch.94

choice.then75:                                    ; preds = %choice.then70
  %b.load = load ptr, ptr %var.out, align 8
  %var.load77 = load ptr, ptr %var.r, align 8
  %fld.gep78 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load77, i32 0, i32 1
  %fld.load79 = load ptr, ptr %fld.gep78, align 8
  %b.read.len80 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load79, i32 0, i32 0
  %b.read.len81 = load i64, ptr %b.read.len80, align 8
  %b.read.data82 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load79, i32 0, i32 1
  %b.read.data83 = load ptr, ptr %b.read.data82, align 8
  %var.load84 = load ptr, ptr %var.r, align 8
  %fld.gep85 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load84, i32 0, i32 2
  %fld.load86 = load i64, ptr %fld.gep85, align 8
  %var.load87 = load ptr, ptr %var.r, align 8
  %fld.gep88 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load87, i32 0, i32 2
  %fld.load89 = load i64, ptr %fld.gep88, align 8
  %var.load90 = load i64, ptr %"var.found_idx'", align 8
  %addtmp91 = add i64 %fld.load89, %var.load90
  %start.is_neg = icmp slt i64 %fld.load86, 0
  %rel.start = add i64 %b.read.len81, %fld.load86
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %fld.load86
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %b.read.len81
  %final.start = select i1 %start.gt.len, i64 %b.read.len81, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp91, 0
  %rel.end = add i64 %b.read.len81, %addtmp91
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp91
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %b.read.len81
  %final.end = select i1 %end.gt.len, i64 %b.read.len81, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %b.read.data83, i64 %final.start
  %b.app.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.app.cur.len92 = load i64, ptr %b.app.cur.len, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len92, i64 %view.len)
  %sum93 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf94 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf94, label %str_overflow_abort96, label %b.app.new.len95

choice.exit76:                                    ; preds = %b.grow_done, %choice.then70
  %var.load109 = load ptr, ptr %var.r, align 8
  %var.load110 = load ptr, ptr %var.r, align 8
  %fld.gep111 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load110, i32 0, i32 2
  %fld.load112 = load i64, ptr %fld.gep111, align 8
  %var.load113 = load i64, ptr %"var.found_idx'", align 8
  %addtmp114 = add i64 %fld.load112, %var.load113
  %addtmp115 = add i64 %addtmp114, 1
  %fld.gep116 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load109, i32 0, i32 2
  store i64 %addtmp115, ptr %fld.gep116, align 8
  %var.load117 = load ptr, ptr %var.out, align 8
  %b.freeze.len118 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 0
  %b.freeze.len119 = load i64, ptr %b.freeze.len118, align 8
  %b.freeze.data120 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 1
  %b.freeze.data121 = load ptr, ptr %b.freeze.data120, align 8
  %b.freeze.arena122 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep123 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 1
  %b.freeze.nc124 = load i64, ptr %b.freeze.nc.gep123, align 8
  %b.freeze.has.chunk125 = icmp sgt i64 %b.freeze.nc124, 0
  br i1 %b.freeze.has.chunk125, label %b.freeze.check126, label %b.freeze.done128

b.app.new.len95:                                  ; preds = %abort.dead97, %choice.then75
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap98 = load i64, ptr %b.cap, align 8
  %b.need.grow = icmp slt i64 %b.cap98, %sum93
  br i1 %b.need.grow, label %b.grow2, label %b.nogrow2

str_overflow_abort96:                             ; preds = %choice.then75
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead97:                                     ; No predecessors!
  br label %b.app.new.len95

b.grow2:                                          ; preds = %b.app.new.len95
  %b.cap2 = mul i64 %b.cap98, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum93
  %b.new.cap = select i1 %b.cap.need, i64 %sum93, i64 %b.cap.grow
  %b.cur.len2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len299 = load i64, ptr %b.cur.len2, align 8
  %b.cur.data2 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data2100 = load ptr, ptr %b.cur.data2, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum101 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf102 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf102, label %str_overflow_abort104, label %b.new.buf.len2103

b.nogrow2:                                        ; preds = %b.app.new.len95
  br label %b.grow_done

b.grow_done:                                      ; preds = %b.nogrow2, %b.new.buf.len2103
  %b.app.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.app.data107 = load ptr, ptr %b.app.data, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data107, i64 %b.app.cur.len92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data107, i64 %sum93
  store i8 0, ptr %b.app.nul, align 1
  %b.len.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %sum93, ptr %b.len.gep108, align 8
  br label %choice.exit76

b.new.buf.len2103:                                ; preds = %abort.dead105, %b.grow2
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 %sum101)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2100, i64 %b.cur.len299, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len299
  store i8 0, ptr %b.grow2.nul, align 1
  %b.new.data2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf2, ptr %b.new.data2.gep, align 8
  %b.new.cap2.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap2.gep, align 8
  br label %b.grow_done

str_overflow_abort104:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead105:                                    ; No predecessors!
  br label %b.new.buf.len2103

b.freeze.check126:                                ; preds = %choice.exit76
  %b.freeze.last.idx129 = sub i64 %b.freeze.nc124, 1
  %b.freeze.chunks.gep130 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 3
  %b.freeze.chunk.slot131 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep130, i64 0, i64 %b.freeze.last.idx129
  %b.freeze.last.chunk132 = load ptr, ptr %b.freeze.chunk.slot131, align 8
  %b.freeze.off.gep133 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 2
  %b.freeze.off134 = load i64, ptr %b.freeze.off.gep133, align 8
  %b.freeze.bump135 = getelementptr i8, ptr %b.freeze.last.chunk132, i64 %b.freeze.off134
  %b.freeze.cap.gep136 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 0
  %b.freeze.cap137 = load i64, ptr %b.freeze.cap.gep136, align 8
  %b.freeze.chunk.end138 = getelementptr i8, ptr %b.freeze.last.chunk132, i64 %b.freeze.cap137
  %b.freeze.ge.chunk139 = icmp uge ptr %b.freeze.data121, %b.freeze.last.chunk132
  %b.freeze.lt.end140 = icmp ult ptr %b.freeze.data121, %b.freeze.chunk.end138
  %b.freeze.in.chunk141 = and i1 %b.freeze.ge.chunk139, %b.freeze.lt.end140
  %b.freeze.ge.bump142 = icmp uge ptr %b.freeze.data121, %b.freeze.bump135
  %b.freeze.reaped143 = and i1 %b.freeze.in.chunk141, %b.freeze.ge.bump142
  br i1 %b.freeze.reaped143, label %b.freeze.copy127, label %b.freeze.done128

b.freeze.copy127:                                 ; preds = %b.freeze.check126
  %b.freeze.alen144 = add i64 %b.freeze.len119, 1
  %arena.cur145 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 %b.freeze.alen144)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh146, ptr align 1 %b.freeze.data121, i64 %b.freeze.len119, i1 false)
  %b.freeze.nul147 = getelementptr i8, ptr %b.freeze.fresh146, i64 %b.freeze.len119
  store i8 0, ptr %b.freeze.nul147, align 1
  br label %b.freeze.done128

b.freeze.done128:                                 ; preds = %b.freeze.copy127, %b.freeze.check126, %choice.exit76
  %b.freeze.data148 = phi ptr [ %b.freeze.data121, %choice.exit76 ], [ %b.freeze.data121, %b.freeze.check126 ], [ %b.freeze.fresh146, %b.freeze.copy127 ]
  %arena.cur149 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 16)
  %str.build.len.gep151 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze150, i32 0, i32 0
  %str.tag.gen152 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift153 = shl i64 %str.tag.gen152, 48
  %str.tagged.len154 = or i64 %b.freeze.len119, %str.tag.shift153
  store i64 %str.tagged.len154, ptr %str.build.len.gep151, align 8
  %str.build.data.gep155 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze150, i32 0, i32 1
  store ptr %b.freeze.data148, ptr %str.build.data.gep155, align 8
  %b.freeze.rst.len156 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len156, align 8
  %b.freeze.rst.data157 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data157, align 8
  %b.freeze.rst.cap158 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap158, align 8
  %ret.niche.nn159 = icmp ne ptr %builder.freeze150, null
  br i1 %ret.niche.nn159, label %ret.niche.load160, label %ret.niche.merge161

ret.niche.load160:                                ; preds = %b.freeze.done128
  %ret.niche.val162 = load { i64, ptr }, ptr %builder.freeze150, align 8
  br label %ret.niche.merge161

ret.niche.merge161:                               ; preds = %ret.niche.load160, %b.freeze.done128
  %ret.niche.pack163 = phi { i64, ptr } [ %ret.niche.val162, %ret.niche.load160 ], [ zeroinitializer, %b.freeze.done128 ]
  ret { i64, ptr } %ret.niche.pack163

ret.dead164:                                      ; No predecessors!
  br label %choice.exit72

choice.then167:                                   ; preds = %choice.else71
  %b.load169 = load ptr, ptr %var.out, align 8
  %var.load170 = load ptr, ptr %var.r, align 8
  %fld.gep171 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load170, i32 0, i32 1
  %fld.load172 = load ptr, ptr %fld.gep171, align 8
  %b.read.len173 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load172, i32 0, i32 0
  %b.read.len174 = load i64, ptr %b.read.len173, align 8
  %b.read.data175 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load172, i32 0, i32 1
  %b.read.data176 = load ptr, ptr %b.read.data175, align 8
  %var.load177 = load ptr, ptr %var.r, align 8
  %fld.gep178 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load177, i32 0, i32 2
  %fld.load179 = load i64, ptr %fld.gep178, align 8
  %var.load180 = load ptr, ptr %var.r, align 8
  %fld.gep181 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load180, i32 0, i32 2
  %fld.load182 = load i64, ptr %fld.gep181, align 8
  %var.load183 = load i64, ptr %var.scan_count, align 8
  %addtmp184 = add i64 %fld.load182, %var.load183
  %start.is_neg185 = icmp slt i64 %fld.load179, 0
  %rel.start186 = add i64 %b.read.len174, %fld.load179
  %norm.start187 = select i1 %start.is_neg185, i64 %rel.start186, i64 %fld.load179
  %start.lt.0188 = icmp slt i64 %norm.start187, 0
  %c.start.0189 = select i1 %start.lt.0188, i64 0, i64 %norm.start187
  %start.gt.len190 = icmp sgt i64 %c.start.0189, %b.read.len174
  %final.start191 = select i1 %start.gt.len190, i64 %b.read.len174, i64 %c.start.0189
  %end.is_neg192 = icmp slt i64 %addtmp184, 0
  %rel.end193 = add i64 %b.read.len174, %addtmp184
  %norm.end194 = select i1 %end.is_neg192, i64 %rel.end193, i64 %addtmp184
  %end.lt.0195 = icmp slt i64 %norm.end194, 0
  %c.end.0196 = select i1 %end.lt.0195, i64 0, i64 %norm.end194
  %end.gt.len197 = icmp sgt i64 %c.end.0196, %b.read.len174
  %final.end198 = select i1 %end.gt.len197, i64 %b.read.len174, i64 %c.end.0196
  %view.empty199 = icmp sle i64 %final.end198, %final.start191
  %view.len.sub200 = sub i64 %final.end198, %final.start191
  %view.len201 = select i1 %view.empty199, i64 0, i64 %view.len.sub200
  %view.data202 = getelementptr i8, ptr %b.read.data176, i64 %final.start191
  %b.app.cur.len203 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load169, i32 0, i32 0
  %b.app.cur.len204 = load i64, ptr %b.app.cur.len203, align 8
  %b.app.new.len205 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len204, i64 %view.len201)
  %sum206 = extractvalue { i64, i1 } %b.app.new.len205, 0
  %ovf207 = extractvalue { i64, i1 } %b.app.new.len205, 1
  br i1 %ovf207, label %str_overflow_abort209, label %b.app.new.len208

choice.exit168:                                   ; preds = %b.grow_done216, %choice.else71
  %var.load242 = load ptr, ptr %var.r, align 8
  %var.load243 = load ptr, ptr %var.r, align 8
  %fld.gep244 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load243, i32 0, i32 2
  %fld.load245 = load i64, ptr %fld.gep244, align 8
  %var.load246 = load i64, ptr %var.scan_count, align 8
  %addtmp247 = add i64 %fld.load245, %var.load246
  %fld.gep248 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load242, i32 0, i32 2
  store i64 %addtmp247, ptr %fld.gep248, align 8
  %var.load249 = load ptr, ptr %var.out, align 8
  %b.len250 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load249, i32 0, i32 0
  %b.len251 = load i64, ptr %b.len250, align 8
  %var.load252 = load i64, ptr %var.max, align 8
  %cmptmp253 = icmp sge i64 %b.len251, %var.load252
  br i1 %cmptmp253, label %choice.then254, label %choice.exit255

b.app.new.len208:                                 ; preds = %abort.dead210, %choice.then167
  %b.cap211 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load169, i32 0, i32 2
  %b.cap212 = load i64, ptr %b.cap211, align 8
  %b.need.grow213 = icmp slt i64 %b.cap212, %sum206
  br i1 %b.need.grow213, label %b.grow2214, label %b.nogrow2215

str_overflow_abort209:                            ; preds = %choice.then167
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead210:                                    ; No predecessors!
  br label %b.app.new.len208

b.grow2214:                                       ; preds = %b.app.new.len208
  %b.cap2217 = mul i64 %b.cap212, 2
  %b.cap.small218 = icmp slt i64 %b.cap2217, 16
  %b.cap.grow219 = select i1 %b.cap.small218, i64 16, i64 %b.cap2217
  %b.cap.need220 = icmp slt i64 %b.cap.grow219, %sum206
  %b.new.cap221 = select i1 %b.cap.need220, i64 %sum206, i64 %b.cap.grow219
  %b.cur.len2222 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load169, i32 0, i32 0
  %b.cur.len2223 = load i64, ptr %b.cur.len2222, align 8
  %b.cur.data2224 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load169, i32 0, i32 1
  %b.cur.data2225 = load ptr, ptr %b.cur.data2224, align 8
  %b.new.buf.len2226 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap221, i64 1)
  %sum227 = extractvalue { i64, i1 } %b.new.buf.len2226, 0
  %ovf228 = extractvalue { i64, i1 } %b.new.buf.len2226, 1
  br i1 %ovf228, label %str_overflow_abort230, label %b.new.buf.len2229

b.nogrow2215:                                     ; preds = %b.app.new.len208
  br label %b.grow_done216

b.grow_done216:                                   ; preds = %b.nogrow2215, %b.new.buf.len2229
  %b.app.data237 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load169, i32 0, i32 1
  %b.app.data238 = load ptr, ptr %b.app.data237, align 8
  %b.app.dst239 = getelementptr i8, ptr %b.app.data238, i64 %b.app.cur.len204
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst239, ptr align 1 %view.data202, i64 %view.len201, i1 false)
  %b.app.nul240 = getelementptr i8, ptr %b.app.data238, i64 %sum206
  store i8 0, ptr %b.app.nul240, align 1
  %b.len.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load169, i32 0, i32 0
  store i64 %sum206, ptr %b.len.gep241, align 8
  br label %choice.exit168

b.new.buf.len2229:                                ; preds = %abort.dead231, %b.grow2214
  %arena.cur232 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 %sum227)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2233, ptr align 1 %b.cur.data2225, i64 %b.cur.len2223, i1 false)
  %b.grow2.nul234 = getelementptr i8, ptr %b.new.buf2233, i64 %b.cur.len2223
  store i8 0, ptr %b.grow2.nul234, align 1
  %b.new.data2.gep235 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load169, i32 0, i32 1
  store ptr %b.new.buf2233, ptr %b.new.data2.gep235, align 8
  %b.new.cap2.gep236 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load169, i32 0, i32 2
  store i64 %b.new.cap221, ptr %b.new.cap2.gep236, align 8
  br label %b.grow_done216

str_overflow_abort230:                            ; preds = %b.grow2214
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead231:                                    ; No predecessors!
  br label %b.new.buf.len2229

choice.then254:                                   ; preds = %choice.exit168
  %var.load256 = load ptr, ptr %var.r, align 8
  %fld.gep257 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load256, i32 0, i32 2
  %fld.load258 = load i64, ptr %fld.gep257, align 8
  %var.load259 = load ptr, ptr %var.r, align 8
  %fld.gep260 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load259, i32 0, i32 1
  %fld.load261 = load ptr, ptr %fld.gep260, align 8
  %b.len262 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load261, i32 0, i32 0
  %b.len263 = load i64, ptr %b.len262, align 8
  %cmptmp264 = icmp slt i64 %fld.load258, %b.len263
  br i1 %cmptmp264, label %and.96.then, label %and.96.else

choice.exit255:                                   ; preds = %ret.dead340, %choice.exit168
  br label %choice.exit72

and.96.then:                                      ; preds = %choice.then254
  %var.load265 = load ptr, ptr %var.r, align 8
  %fld.gep266 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load265, i32 0, i32 1
  %fld.load267 = load ptr, ptr %fld.gep266, align 8
  %b.read.len268 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load267, i32 0, i32 0
  %b.read.len269 = load i64, ptr %b.read.len268, align 8
  %b.read.data270 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load267, i32 0, i32 1
  %b.read.data271 = load ptr, ptr %b.read.data270, align 8
  %var.load272 = load ptr, ptr %var.r, align 8
  %fld.gep273 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load272, i32 0, i32 2
  %fld.load274 = load i64, ptr %fld.gep273, align 8
  %idx.oob275 = icmp uge i64 %fld.load274, %b.read.len269
  br i1 %idx.oob275, label %idx_oob277, label %idx_ok276

and.96.else:                                      ; preds = %choice.then254
  br label %and.96.exit

and.96.exit:                                      ; preds = %and.96.else, %idx_ok276
  %and.96.phi = phi i1 [ %cmptmp283, %idx_ok276 ], [ %cmptmp264, %and.96.else ]
  store i1 %and.96.phi, ptr %var.has_delim, align 1
  %var.load284 = load i1, ptr %var.has_delim, align 1
  br i1 %var.load284, label %choice.then285, label %choice.exit286

idx_ok276:                                        ; preds = %abort.dead278, %and.96.then
  %s.byte.gep279 = getelementptr i8, ptr %b.read.data271, i64 %fld.load274
  %s.byte280 = load i8, ptr %s.byte.gep279, align 1
  %s.byte.val281 = zext i8 %s.byte280 to i64
  %var.load282 = load i64, ptr %var.delim, align 8
  %cmptmp283 = icmp eq i64 %s.byte.val281, %var.load282
  br label %and.96.exit

idx_oob277:                                       ; preds = %and.96.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead278:                                    ; No predecessors!
  br label %idx_ok276

choice.then285:                                   ; preds = %and.96.exit
  %var.load287 = load ptr, ptr %var.r, align 8
  %var.load288 = load ptr, ptr %var.r, align 8
  %fld.gep289 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load288, i32 0, i32 2
  %fld.load290 = load i64, ptr %fld.gep289, align 8
  %addtmp291 = add i64 %fld.load290, 1
  %fld.gep292 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %var.load287, i32 0, i32 2
  store i64 %addtmp291, ptr %fld.gep292, align 8
  br label %choice.exit286

choice.exit286:                                   ; preds = %choice.then285, %and.96.exit
  %var.load293 = load ptr, ptr %var.out, align 8
  %b.freeze.len294 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 0
  %b.freeze.len295 = load i64, ptr %b.freeze.len294, align 8
  %b.freeze.data296 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 1
  %b.freeze.data297 = load ptr, ptr %b.freeze.data296, align 8
  %b.freeze.arena298 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep299 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena298, i32 0, i32 1
  %b.freeze.nc300 = load i64, ptr %b.freeze.nc.gep299, align 8
  %b.freeze.has.chunk301 = icmp sgt i64 %b.freeze.nc300, 0
  br i1 %b.freeze.has.chunk301, label %b.freeze.check302, label %b.freeze.done304

b.freeze.check302:                                ; preds = %choice.exit286
  %b.freeze.last.idx305 = sub i64 %b.freeze.nc300, 1
  %b.freeze.chunks.gep306 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena298, i32 0, i32 3
  %b.freeze.chunk.slot307 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep306, i64 0, i64 %b.freeze.last.idx305
  %b.freeze.last.chunk308 = load ptr, ptr %b.freeze.chunk.slot307, align 8
  %b.freeze.off.gep309 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena298, i32 0, i32 2
  %b.freeze.off310 = load i64, ptr %b.freeze.off.gep309, align 8
  %b.freeze.bump311 = getelementptr i8, ptr %b.freeze.last.chunk308, i64 %b.freeze.off310
  %b.freeze.cap.gep312 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena298, i32 0, i32 0
  %b.freeze.cap313 = load i64, ptr %b.freeze.cap.gep312, align 8
  %b.freeze.chunk.end314 = getelementptr i8, ptr %b.freeze.last.chunk308, i64 %b.freeze.cap313
  %b.freeze.ge.chunk315 = icmp uge ptr %b.freeze.data297, %b.freeze.last.chunk308
  %b.freeze.lt.end316 = icmp ult ptr %b.freeze.data297, %b.freeze.chunk.end314
  %b.freeze.in.chunk317 = and i1 %b.freeze.ge.chunk315, %b.freeze.lt.end316
  %b.freeze.ge.bump318 = icmp uge ptr %b.freeze.data297, %b.freeze.bump311
  %b.freeze.reaped319 = and i1 %b.freeze.in.chunk317, %b.freeze.ge.bump318
  br i1 %b.freeze.reaped319, label %b.freeze.copy303, label %b.freeze.done304

b.freeze.copy303:                                 ; preds = %b.freeze.check302
  %b.freeze.alen320 = add i64 %b.freeze.len295, 1
  %arena.cur321 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 %b.freeze.alen320)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh322, ptr align 1 %b.freeze.data297, i64 %b.freeze.len295, i1 false)
  %b.freeze.nul323 = getelementptr i8, ptr %b.freeze.fresh322, i64 %b.freeze.len295
  store i8 0, ptr %b.freeze.nul323, align 1
  br label %b.freeze.done304

b.freeze.done304:                                 ; preds = %b.freeze.copy303, %b.freeze.check302, %choice.exit286
  %b.freeze.data324 = phi ptr [ %b.freeze.data297, %choice.exit286 ], [ %b.freeze.data297, %b.freeze.check302 ], [ %b.freeze.fresh322, %b.freeze.copy303 ]
  %arena.cur325 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze326 = call ptr @dva_arena_alloc(ptr %arena.cur325, i64 16)
  %str.build.len.gep327 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze326, i32 0, i32 0
  %str.tag.gen328 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift329 = shl i64 %str.tag.gen328, 48
  %str.tagged.len330 = or i64 %b.freeze.len295, %str.tag.shift329
  store i64 %str.tagged.len330, ptr %str.build.len.gep327, align 8
  %str.build.data.gep331 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze326, i32 0, i32 1
  store ptr %b.freeze.data324, ptr %str.build.data.gep331, align 8
  %b.freeze.rst.len332 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len332, align 8
  %b.freeze.rst.data333 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data333, align 8
  %b.freeze.rst.cap334 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap334, align 8
  %ret.niche.nn335 = icmp ne ptr %builder.freeze326, null
  br i1 %ret.niche.nn335, label %ret.niche.load336, label %ret.niche.merge337

ret.niche.load336:                                ; preds = %b.freeze.done304
  %ret.niche.val338 = load { i64, ptr }, ptr %builder.freeze326, align 8
  br label %ret.niche.merge337

ret.niche.merge337:                               ; preds = %ret.niche.load336, %b.freeze.done304
  %ret.niche.pack339 = phi { i64, ptr } [ %ret.niche.val338, %ret.niche.load336 ], [ zeroinitializer, %b.freeze.done304 ]
  ret { i64, ptr } %ret.niche.pack339

ret.dead340:                                      ; No predecessors!
  br label %choice.exit255

choice.then347:                                   ; preds = %loop.exit.94
  %var.load350 = load ptr, ptr %var.out, align 8
  %b.freeze.len351 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load350, i32 0, i32 0
  %b.freeze.len352 = load i64, ptr %b.freeze.len351, align 8
  %b.freeze.data353 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load350, i32 0, i32 1
  %b.freeze.data354 = load ptr, ptr %b.freeze.data353, align 8
  %b.freeze.arena355 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep356 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena355, i32 0, i32 1
  %b.freeze.nc357 = load i64, ptr %b.freeze.nc.gep356, align 8
  %b.freeze.has.chunk358 = icmp sgt i64 %b.freeze.nc357, 0
  br i1 %b.freeze.has.chunk358, label %b.freeze.check359, label %b.freeze.done361

choice.else348:                                   ; preds = %loop.exit.94
  br label %choice.exit349

choice.exit349:                                   ; preds = %choice.else348, %b.freeze.done361
  %choice.res392 = phi ptr [ %builder.freeze383, %b.freeze.done361 ], [ null, %choice.else348 ]
  br label %choice.exit

b.freeze.check359:                                ; preds = %choice.then347
  %b.freeze.last.idx362 = sub i64 %b.freeze.nc357, 1
  %b.freeze.chunks.gep363 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena355, i32 0, i32 3
  %b.freeze.chunk.slot364 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep363, i64 0, i64 %b.freeze.last.idx362
  %b.freeze.last.chunk365 = load ptr, ptr %b.freeze.chunk.slot364, align 8
  %b.freeze.off.gep366 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena355, i32 0, i32 2
  %b.freeze.off367 = load i64, ptr %b.freeze.off.gep366, align 8
  %b.freeze.bump368 = getelementptr i8, ptr %b.freeze.last.chunk365, i64 %b.freeze.off367
  %b.freeze.cap.gep369 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena355, i32 0, i32 0
  %b.freeze.cap370 = load i64, ptr %b.freeze.cap.gep369, align 8
  %b.freeze.chunk.end371 = getelementptr i8, ptr %b.freeze.last.chunk365, i64 %b.freeze.cap370
  %b.freeze.ge.chunk372 = icmp uge ptr %b.freeze.data354, %b.freeze.last.chunk365
  %b.freeze.lt.end373 = icmp ult ptr %b.freeze.data354, %b.freeze.chunk.end371
  %b.freeze.in.chunk374 = and i1 %b.freeze.ge.chunk372, %b.freeze.lt.end373
  %b.freeze.ge.bump375 = icmp uge ptr %b.freeze.data354, %b.freeze.bump368
  %b.freeze.reaped376 = and i1 %b.freeze.in.chunk374, %b.freeze.ge.bump375
  br i1 %b.freeze.reaped376, label %b.freeze.copy360, label %b.freeze.done361

b.freeze.copy360:                                 ; preds = %b.freeze.check359
  %b.freeze.alen377 = add i64 %b.freeze.len352, 1
  %arena.cur378 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh379 = call ptr @dva_arena_alloc(ptr %arena.cur378, i64 %b.freeze.alen377)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh379, ptr align 1 %b.freeze.data354, i64 %b.freeze.len352, i1 false)
  %b.freeze.nul380 = getelementptr i8, ptr %b.freeze.fresh379, i64 %b.freeze.len352
  store i8 0, ptr %b.freeze.nul380, align 1
  br label %b.freeze.done361

b.freeze.done361:                                 ; preds = %b.freeze.copy360, %b.freeze.check359, %choice.then347
  %b.freeze.data381 = phi ptr [ %b.freeze.data354, %choice.then347 ], [ %b.freeze.data354, %b.freeze.check359 ], [ %b.freeze.fresh379, %b.freeze.copy360 ]
  %arena.cur382 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze383 = call ptr @dva_arena_alloc(ptr %arena.cur382, i64 16)
  %str.build.len.gep384 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze383, i32 0, i32 0
  %str.tag.gen385 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift386 = shl i64 %str.tag.gen385, 48
  %str.tagged.len387 = or i64 %b.freeze.len352, %str.tag.shift386
  store i64 %str.tagged.len387, ptr %str.build.len.gep384, align 8
  %str.build.data.gep388 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze383, i32 0, i32 1
  store ptr %b.freeze.data381, ptr %str.build.data.gep388, align 8
  %b.freeze.rst.len389 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load350, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len389, align 8
  %b.freeze.rst.data390 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load350, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data390, align 8
  %b.freeze.rst.cap391 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load350, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap391, align 8
  br label %choice.exit349

ret.niche.load395:                                ; preds = %choice.exit
  %ret.niche.val397 = load { i64, ptr }, ptr %choice.res393, align 8
  br label %ret.niche.merge396

ret.niche.merge396:                               ; preds = %ret.niche.load395, %choice.exit
  %ret.niche.pack398 = phi { i64, ptr } [ %ret.niche.val397, %ret.niche.load395 ], [ zeroinitializer, %choice.exit ]
  ret { i64, ptr } %ret.niche.pack398
}

define { i64, ptr } @"io::read_line"(ptr %0, i64 %1) #3 {
entry:
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
  %choice.res27 = phi ptr [ %choice.res, %choice.exit15 ], [ null, %choice.else ]
  %ret.niche.nn = icmp ne ptr %choice.res27, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  store i64 %str.len.query5, ptr %var.n, align 8
  %var.load6 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %var.load6, 0
  br i1 %cmptmp, label %and.97.then, label %and.97.else

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.97.then:                                      ; preds = %str_ok
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

and.97.else:                                      ; preds = %str_ok
  br label %and.97.exit

and.97.exit:                                      ; preds = %and.97.else, %idx_ok
  %and.97.phi = phi i1 [ %cmptmp12, %idx_ok ], [ %cmptmp, %and.97.else ]
  br i1 %and.97.phi, label %choice.then13, label %choice.else14

idx_ok:                                           ; preds = %abort.dead, %and.97.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp12 = icmp eq i64 %s.byte.val, 13
  br label %and.97.exit

idx_oob:                                          ; preds = %and.97.then
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then13:                                    ; preds = %and.97.exit
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
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %view.len, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit15

choice.else14:                                    ; preds = %and.97.exit
  %var.load26 = load ptr, ptr %var.line, align 8
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res = phi ptr [ %str.view, %choice.then13 ], [ %var.load26, %choice.else14 ]
  br label %choice.exit

ret.niche.load:                                   ; preds = %choice.exit
  %ret.niche.val = load { i64, ptr }, ptr %choice.res27, align 8
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
