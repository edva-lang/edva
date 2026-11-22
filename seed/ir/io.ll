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
@null_addr_cast = internal unnamed_addr constant [40 x i8] c"E4015: cannot construct Addr from zero\0A\00"
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
  %cap = load i64, ptr %0, align 8
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

common.ret:                                       ; preds = %slow, %bump
  %common.ret.op = phi ptr [ %result, %bump ], [ %result.slow, %slow ]
  ret ptr %common.ret.op

bump:                                             ; preds = %entry
  %chunks = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 3
  %last = sub i64 %nc, 1
  %slot = getelementptr [16384 x ptr], ptr %chunks, i64 0, i64 %last
  %chunk = load ptr, ptr %slot, align 8
  %result = getelementptr i8, ptr %chunk, i64 %off
  %next = add i64 %off, %aligned
  store i64 %next, ptr %off.ptr, align 8
  br label %common.ret

slow:                                             ; preds = %entry
  %result.slow = call ptr @dva_arena_alloc_slow(ptr %0, i64 %1)
  br label %common.ret
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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 4097)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4096, ptr %b.cap.gep, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, i64, i1 }, ptr null, i32 1) to i64))
  store i64 %0, ptr %rec.alloc, align 8
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
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
}

define ptr @"io::reader_with_cap"(i64 %0, i64 %1) #3 {
entry:
  %cmptmp = icmp sgt i64 %1, 0
  %. = select i1 %cmptmp, i64 %1, i64 4096
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %., i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

b.buf.len4:                                       ; preds = %entry
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %., ptr %b.cap.gep, align 8
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, i64, i64, i1 }, ptr null, i32 1) to i64))
  store i64 %0, ptr %rec.alloc, align 8
  %rec.fld8 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %builder.new, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %., ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %rec.alloc, i32 0, i32 5
  store i1 false, ptr %rec.fld12, align 1
  ret ptr %rec.alloc

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define i64 @"io::reader_err"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i1 @"io::reader_eof"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 5
  %fld.load = load i1, ptr %fld.gep, align 1
  ret i1 %fld.load
}

define i1 @"io::reader_would_block"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %val.match = icmp eq i64 %fld.load, 11
  %. = select i1 %val.match, i1 true, i1 false
  ret i1 %.
}

define i1 @"io::reader_has_err"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  %fld.load = load i64, ptr %fld.gep, align 8
  %cmptmp = icmp ne i64 %fld.load, 0
  ret i1 %cmptmp
}

define void @"io::reader_clear"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  store i64 0, ptr %fld.gep, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 5
  store i1 false, ptr %fld.gep2, align 1
  ret void
}

define i64 @"io::write"(i64 %0, ptr %1) #3 {
entry:
  %str.len.query1 = load i64, ptr %1, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %val.match = icmp eq i64 %str.len.query2, 0
  br i1 %val.match, label %common.ret, label %loop.header.90

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

common.ret:                                       ; preds = %choice.next19, %choice.else, %loop.header.90, %str_ok
  %common.ret.op = phi i64 [ 0, %str_ok ], [ %"var.off'.0", %loop.header.90 ], [ %".var.off'.0", %choice.else ], [ %"var.off'.0", %choice.next19 ]
  ret i64 %common.ret.op

loop.header.90:                                   ; preds = %str_ok, %loop.latch.90
  %"var.off'.0" = phi i64 [ %"var.off'.1", %loop.latch.90 ], [ 0, %str_ok ]
  %loop.idx.90.0 = phi i64 [ %loop.next, %loop.latch.90 ], [ 0, %str_ok ]
  %cmptmp = icmp sge i64 %"var.off'.0", %str.len.query2
  br i1 %cmptmp, label %common.ret, label %choice.exit6

loop.latch.90:                                    ; preds = %choice.case18, %choice.next35
  %"var.off'.1" = phi i64 [ %addtmp39, %choice.next35 ], [ %"var.off'.0", %choice.case18 ]
  %loop.next = add i64 %loop.idx.90.0, 1
  br label %loop.header.90

choice.exit6:                                     ; preds = %loop.header.90
  %subtmp = sub i64 %str.len.query2, %"var.off'.0"
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %s.ptr10 = load ptr, ptr %s.ptr, align 8
  %ptr.int.l = ptrtoint ptr %s.ptr10 to i64
  %addtmp = add i64 %ptr.int.l, %"var.off'.0"
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %choice.exit6
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %choice.exit6
  %call.res = call ptr @"io::#clean_addr"(ptr %ptr.res)
  %addr.ffi.int = ptrtoint ptr %call.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %0 to i32
  %call.res15 = call i64 @write(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %subtmp)
  %cmptmp20 = icmp slt i64 %call.res15, 0
  br i1 %cmptmp20, label %choice.case18, label %choice.next19

choice.case18:                                    ; preds = %addr.present
  %call.res21 = call i64 @"libc::errno"()
  %cmptmp23 = icmp eq i64 %call.res21, 4
  br i1 %cmptmp23, label %loop.latch.90, label %choice.else

choice.next19:                                    ; preds = %addr.present
  %val.match36 = icmp eq i64 %call.res15, 0
  br i1 %val.match36, label %common.ret, label %choice.next35

choice.else:                                      ; preds = %choice.case18
  %cmptmp27 = icmp eq i64 %"var.off'.0", 0
  %".var.off'.0" = select i1 %cmptmp27, i64 -1, i64 %"var.off'.0"
  br label %common.ret

choice.next35:                                    ; preds = %choice.next19
  %addtmp39 = add i64 %"var.off'.0", %call.res15
  br label %loop.latch.90
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
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_null_addr_cast() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @null_addr_cast, i64 39)
  call void @exit(i32 1)
  unreachable
}

define internal ptr @"io::#clean_addr"(ptr %0) #3 {
entry:
  %ptrmask = call ptr @llvm.ptrmask.p0.i64(ptr %0, i64 281474976710655)
  %addr.is.null = icmp eq ptr %ptrmask, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %entry
  ret ptr %ptrmask
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #0

declare i64 @"libc::errno"() #3

define internal { i64, ptr } @"io::#show_rune"(i32 %0) #3 {
entry:
  %call.res = call { i64, ptr } @"utf::encode_rune"(i32 %0)
  %call.res.fca.0.extract = extractvalue { i64, ptr } %call.res, 0
  %call.res.fca.1.extract = extractvalue { i64, ptr } %call.res, 1
  ret { i64, ptr } %call.res
}

declare { i64, ptr } @"utf::encode_rune"(i32) #3

define internal i64 @"io::#writev_all"(i64 %0, ptr %1, ptr %2) #3 {
entry:
  %str.len.query1 = load i64, ptr %1, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %str.len.query5 = load i64, ptr %2, align 8
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
  %addtmp = add i64 %str.len.query2, %str.len.query6
  %val.match = icmp eq i64 %addtmp, 0
  br i1 %val.match, label %common.ret, label %loop.header.91

tag.slow_check13:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

common.ret:                                       ; preds = %choice.else100, %choice.exit107, %choice.else48, %choice.exit54, %loop.header.91, %str_ok8
  %common.ret.op = phi i64 [ 0, %str_ok8 ], [ %"var.off'.0", %loop.header.91 ], [ %".var.off'.0", %choice.exit54 ], [ %"var.off'.0", %choice.else48 ], [ %".var.off'.0144", %choice.exit107 ], [ %"var.off'.0", %choice.else100 ]
  ret i64 %common.ret.op

loop.header.91:                                   ; preds = %str_ok8, %loop.latch.91
  %"var.off'.0" = phi i64 [ %"var.off'.1", %loop.latch.91 ], [ 0, %str_ok8 ]
  %loop.idx.91.0 = phi i64 [ %loop.next, %loop.latch.91 ], [ 0, %str_ok8 ]
  %cmptmp = icmp sge i64 %"var.off'.0", %addtmp
  br i1 %cmptmp, label %common.ret, label %choice.exit19

loop.latch.91:                                    ; preds = %choice.then99, %choice.then47, %choice.next64, %choice.next117
  %"var.off'.1" = phi i64 [ %addtmp68, %choice.next64 ], [ %addtmp121, %choice.next117 ], [ %"var.off'.0", %choice.then47 ], [ %"var.off'.0", %choice.then99 ]
  %loop.next = add i64 %loop.idx.91.0, 1
  br label %loop.header.91

choice.exit19:                                    ; preds = %loop.header.91
  %cmptmp22 = icmp slt i64 %"var.off'.0", %str.len.query2
  br i1 %cmptmp22, label %choice.then23, label %choice.else

choice.then23:                                    ; preds = %choice.exit19
  %subtmp = sub i64 %str.len.query2, %"var.off'.0"
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %s.ptr28 = load ptr, ptr %s.ptr, align 8
  %ptr.int.l = ptrtoint ptr %s.ptr28 to i64
  %addtmp30 = add i64 %ptr.int.l, %"var.off'.0"
  %ptr.res = inttoptr i64 %addtmp30 to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

choice.else:                                      ; preds = %choice.exit19
  %subtmp71 = sub i64 %"var.off'.0", %str.len.query2
  %subtmp74 = sub i64 %str.len.query6, %subtmp71
  %s.ptr76 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %s.ptr77 = load ptr, ptr %s.ptr76, align 8
  %ptr.int.l79 = ptrtoint ptr %s.ptr77 to i64
  %addtmp80 = add i64 %ptr.int.l79, %subtmp71
  %ptr.res81 = inttoptr i64 %addtmp80 to ptr
  %addr.is.null84 = icmp eq ptr %ptr.res81, null
  br i1 %addr.is.null84, label %addr.null82, label %addr.present83

addr.null:                                        ; preds = %choice.then23
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %choice.then23
  %call.res = call ptr @"io::#clean_addr"(ptr %ptr.res)
  %s.ptr32 = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %s.ptr33 = load ptr, ptr %s.ptr32, align 8
  %call.res34 = call ptr @"io::#clean_addr"(ptr %s.ptr33)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i64, ptr, i64 }, ptr null, i32 1) to i64))
  store ptr %call.res, ptr %rec.alloc, align 8
  %rec.fld39 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %subtmp, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res34, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 %str.len.query6, ptr %rec.fld41, align 8
  %addr.ffi.int = ptrtoint ptr %rec.alloc to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %0 to i32
  %call.res44 = call i64 @writev(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 2)
  %cmptmp46 = icmp slt i64 %call.res44, 0
  br i1 %cmptmp46, label %choice.then47, label %choice.else48

choice.then47:                                    ; preds = %addr.present
  %call.res50 = call i64 @"libc::errno"()
  %cmptmp52 = icmp eq i64 %call.res50, 4
  br i1 %cmptmp52, label %loop.latch.91, label %choice.exit54

choice.else48:                                    ; preds = %addr.present
  %val.match65 = icmp eq i64 %call.res44, 0
  br i1 %val.match65, label %common.ret, label %choice.next64

choice.exit54:                                    ; preds = %choice.then47
  %cmptmp56 = icmp eq i64 %"var.off'.0", 0
  %".var.off'.0" = select i1 %cmptmp56, i64 -1, i64 %"var.off'.0"
  br label %common.ret

choice.next64:                                    ; preds = %choice.else48
  %addtmp68 = add i64 %"var.off'.0", %call.res44
  br label %loop.latch.91

addr.null82:                                      ; preds = %choice.else
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present83:                                   ; preds = %choice.else
  %call.res86 = call ptr @"io::#clean_addr"(ptr %ptr.res81)
  %addr.ffi.int90 = ptrtoint ptr %call.res86 to i64
  %addr.ffi.masked91 = and i64 %addr.ffi.int90, 281474976710655
  %addr.ffi.clean92 = inttoptr i64 %addr.ffi.masked91 to ptr
  %coerce.trunc94 = trunc i64 %0 to i32
  %call.res95 = call i64 @write(i32 %coerce.trunc94, ptr %addr.ffi.clean92, i64 %subtmp74)
  %cmptmp98 = icmp slt i64 %call.res95, 0
  br i1 %cmptmp98, label %choice.then99, label %choice.else100

choice.then99:                                    ; preds = %addr.present83
  %call.res102 = call i64 @"libc::errno"()
  %cmptmp105 = icmp eq i64 %call.res102, 4
  br i1 %cmptmp105, label %loop.latch.91, label %choice.exit107

choice.else100:                                   ; preds = %addr.present83
  %val.match118 = icmp eq i64 %call.res95, 0
  br i1 %val.match118, label %common.ret, label %choice.next117

choice.exit107:                                   ; preds = %choice.then99
  %cmptmp109 = icmp eq i64 %"var.off'.0", 0
  %".var.off'.0144" = select i1 %cmptmp109, i64 -1, i64 %"var.off'.0"
  br label %common.ret

choice.next117:                                   ; preds = %choice.else100
  %addtmp121 = add i64 %"var.off'.0", %call.res95
  br label %loop.latch.91
}

define internal i64 @"io::#refill"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 2
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %cmptmp = icmp sgt i64 %fld.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %b.len5 = load i64, ptr %fld.load, align 8
  %subtmp = sub i64 %b.len5, %fld.load3
  %cmptmp10 = icmp sgt i64 %subtmp, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

choice.exit:                                      ; preds = %choice.exit12, %entry
  %fld.gep46 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 3
  %fld.load47 = load i64, ptr %fld.gep46, align 8
  %cmptmp48 = icmp sgt i64 %fld.load47, 0
  %fld.load47. = select i1 %cmptmp48, i64 %fld.load47, i64 4096
  %b.len57 = load i64, ptr %fld.load, align 8
  %subtmp58 = sub i64 %fld.load47., %b.len57
  %cmptmp60 = icmp sle i64 %subtmp58, 0
  br i1 %cmptmp60, label %choice.exit63, label %loop.header.92

choice.then11:                                    ; preds = %choice.then
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %b.ptr14 = load ptr, ptr %b.ptr, align 8
  %1 = icmp eq ptr %b.ptr14, null
  br i1 %1, label %b.detached, label %b.writable

choice.exit12:                                    ; preds = %addr_ok35, %choice.then
  call void @"mem::truncate"(ptr %fld.load, i64 %subtmp)
  store i64 0, ptr %fld.gep2, align 8
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
  %addtmp = add i64 %addr.tagged, %fld.load3
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %b.writable
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %b.writable
  %raw.clean.int = and i64 %addr.tagged, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %addr.tagged, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %tag.current = icmp eq i64 %addr.tag, %addr.tag.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %addr.present
  %raw.clean.int32 = and i64 %addtmp, 281474976710655
  %raw.clean.ptr33 = inttoptr i64 %raw.clean.int32 to ptr
  %addr.tag34 = lshr i64 %addtmp, 48
  %tag.immortal36 = icmp eq i64 %addr.tag34, 0
  %active.gen37 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current38 = icmp eq i64 %addr.tag34, %active.gen37
  %tag.fast.ok39 = or i1 %tag.immortal36, %tag.current38
  br i1 %tag.fast.ok39, label %addr_ok35, label %tag.slow_check40

tag.slow_check:                                   ; preds = %addr.present
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok35:                                        ; preds = %tag.slow_check40, %addr_ok
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr33, i64 %subtmp, i1 false)
  br label %choice.exit12

tag.slow_check40:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag34)
  br label %addr_ok35

choice.exit63:                                    ; preds = %choice.exit82, %choice.then89, %choice.else90, %choice.exit
  %choice.res100 = phi i64 [ 0, %choice.exit ], [ %call.res, %choice.exit82 ], [ 0, %choice.then89 ], [ %call.res, %choice.else90 ]
  ret i64 %choice.res100

loop.header.92:                                   ; preds = %choice.exit, %choice.then75
  %loop.idx.92.0 = phi i64 [ %loop.next, %choice.then75 ], [ 0, %choice.exit ]
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 8)
  store ptr %0, ptr %env.alloc, align 8
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  store ptr @"$anon_fn.95", ptr %clo.alloc, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res = call i64 @"mem::write_tail"(ptr %fld.load, i64 %subtmp58, ptr %clo.alloc)
  %cmptmp68 = icmp slt i64 %call.res, 0
  br i1 %cmptmp68, label %choice.then69, label %choice.else70

choice.then69:                                    ; preds = %loop.header.92
  %call.res72 = call i64 @"libc::errno"()
  switch i64 %call.res72, label %choice.else81 [
    i64 4, label %choice.then75
    i64 11, label %choice.exit82
  ]

choice.else70:                                    ; preds = %loop.header.92
  %cmptmp88 = icmp eq i64 %call.res, 0
  br i1 %cmptmp88, label %choice.then89, label %choice.else90

choice.then75:                                    ; preds = %choice.then69
  %loop.next = add i64 %loop.idx.92.0, 1
  br label %loop.header.92

choice.else81:                                    ; preds = %choice.then69
  br label %choice.exit82

choice.exit82:                                    ; preds = %choice.then69, %choice.else81
  %choice.res84 = phi i64 [ %call.res72, %choice.else81 ], [ 11, %choice.then69 ]
  %fld.gep85 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  store i64 %choice.res84, ptr %fld.gep85, align 8
  br label %choice.exit63

choice.then89:                                    ; preds = %choice.else70
  %fld.gep93 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 5
  store i1 true, ptr %fld.gep93, align 1
  %fld.gep95 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  store i64 0, ptr %fld.gep95, align 8
  br label %choice.exit63

choice.else90:                                    ; preds = %choice.else70
  %fld.gep97 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  store i64 0, ptr %fld.gep97, align 8
  br label %choice.exit63
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
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
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_addr_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

declare void @"mem::truncate"(ptr, i64) #3

define internal i64 @"$anon_fn.95"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %var.load = load ptr, ptr %0, align 8
  %fld.load = load i64, ptr %var.load, align 8
  %addr.ffi.int = ptrtoint ptr %1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %fld.load to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %2)
  ret i64 %call.res
}

declare i64 @"mem::write_tail"(ptr, i64, ptr) #3

define void @"io::outs"(ptr %0) #3 {
entry:
  %var.load = load i64, ptr @"var.io::STDOUT", align 8
  %call.res = call i64 @"io::#writev_all"(i64 %var.load, ptr %0, ptr @str.0.struct)
  ret void
}

define void @"io::errs"(ptr %0) #3 {
entry:
  %var.load = load i64, ptr @"var.io::STDERR", align 8
  %call.res = call i64 @"io::#writev_all"(i64 %var.load, ptr %0, ptr @str.0.struct)
  ret void
}

define { i64, ptr } @"io::read"(ptr %0, i64 %1) #3 {
entry:
  %cmptmp = icmp sle i64 %1, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %choice.exit8, %entry, %b.freeze.done
  %common.ret.op = phi { i64, ptr } [ %ret.niche.val, %b.freeze.done ], [ zeroinitializer, %entry ], [ zeroinitializer, %choice.exit8 ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %entry
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.gep3 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 1
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %b.len5 = load i64, ptr %fld.load4, align 8
  %cmptmp6 = icmp sge i64 %fld.load, %b.len5
  br i1 %cmptmp6, label %choice.then7, label %choice.exit8

choice.then7:                                     ; preds = %choice.exit
  %call.res = call i64 @"io::#refill"(ptr %0)
  br label %choice.exit8

choice.exit8:                                     ; preds = %choice.then7, %choice.exit
  %fld.load12 = load i64, ptr %fld.gep, align 8
  %fld.load15 = load ptr, ptr %fld.gep3, align 8
  %b.len17 = load i64, ptr %fld.load15, align 8
  %cmptmp18 = icmp sge i64 %fld.load12, %b.len17
  br i1 %cmptmp18, label %common.ret, label %choice.exit20

choice.exit20:                                    ; preds = %choice.exit8
  %fld.load24 = load ptr, ptr %fld.gep3, align 8
  %b.len26 = load i64, ptr %fld.load24, align 8
  %fld.load29 = load i64, ptr %fld.gep, align 8
  %subtmp = sub i64 %b.len26, %fld.load29
  %cmptmp32 = icmp slt i64 %subtmp, %1
  %subtmp. = select i1 %cmptmp32, i64 %subtmp, i64 %1
  %cap.neg = icmp slt i64 %subtmp., 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %subtmp.
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len38

b.buf.len38:                                      ; preds = %choice.exit20
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  %fld.load41 = load ptr, ptr %fld.gep3, align 8
  %b.read.len42 = load i64, ptr %fld.load41, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load41, i32 0, i32 1
  %b.read.data43 = load ptr, ptr %b.read.data, align 8
  %fld.load46 = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load46, %subtmp.
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
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 0, i64 %view.len)
  %sum52 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf53 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf53, label %str_overflow_abort55, label %b.app.new.len54

str_overflow_abort:                               ; preds = %choice.exit20
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len54:                                  ; preds = %b.buf.len38
  %b.need.grow = icmp slt i64 %cap.safe, %sum52
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort55:                             ; preds = %b.buf.len38
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len54
  %b.cap2 = mul i64 %cap.safe, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum52
  %b.new.cap = select i1 %b.cap.need, i64 %sum52, i64 %b.cap.grow
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum60 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf61 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf61, label %str_overflow_abort63, label %b.new.buf.len262

b.grow_done:                                      ; preds = %b.app.new.len54, %b.new.buf.len262
  %builder.new.salloc.sroa.6.0 = phi ptr [ %b.new.buf2, %b.new.buf.len262 ], [ %b.buf, %b.app.new.len54 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %builder.new.salloc.sroa.6.0, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %builder.new.salloc.sroa.6.0, i64 %sum52
  store i8 0, ptr %b.app.nul, align 1
  %fld.load71 = load i64, ptr %fld.gep, align 8
  %addtmp73 = add i64 %fld.load71, %subtmp.
  store i64 %addtmp73, ptr %fld.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.new.buf.len262:                                 ; preds = %b.grow2
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 %sum60)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.buf, i64 0, i1 false)
  store i8 0, ptr %b.new.buf2, align 1
  br label %b.grow_done

str_overflow_abort63:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check:                                   ; preds = %b.grow_done
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %builder.new.salloc.sroa.6.0, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %builder.new.salloc.sroa.6.0, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %builder.new.salloc.sroa.6.0, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %sum52, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %builder.new.salloc.sroa.6.0, i64 %sum52, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %sum52
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.grow_done
  %b.freeze.data79 = phi ptr [ %builder.new.salloc.sroa.6.0, %b.grow_done ], [ %builder.new.salloc.sroa.6.0, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur80 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur80, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum52, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data79, ptr %str.build.data.gep, align 8
  %ret.niche.val = load { i64, ptr }, ptr %builder.freeze, align 8
  br label %common.ret
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define { i64, ptr } @"io::read_all"(ptr %0, i64 %1) #3 {
entry:
  %cmptmp = icmp sle i64 %1, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %loop.exit.94, %entry, %b.freeze.done
  %common.ret.op = phi { i64, ptr } [ %ret.niche.val, %b.freeze.done ], [ zeroinitializer, %entry ], [ zeroinitializer, %loop.exit.94 ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %1, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %1
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

b.buf.len2:                                       ; preds = %choice.exit
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %b.len5 = load i64, ptr %fld.load, align 8
  %fld.gep7 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 2
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %subtmp = sub i64 %b.len5, %fld.load8
  %cmptmp10 = icmp sgt i64 %subtmp, 0
  br i1 %cmptmp10, label %choice.then11, label %choice.exit12

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then11:                                    ; preds = %b.buf.len2
  %cmptmp15 = icmp slt i64 %subtmp, %1
  %subtmp. = select i1 %cmptmp15, i64 %subtmp, i64 %1
  %fld.load22 = load ptr, ptr %fld.gep, align 8
  %b.read.len23 = load i64, ptr %fld.load22, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load22, i32 0, i32 1
  %b.read.data24 = load ptr, ptr %b.read.data, align 8
  %fld.load27 = load i64, ptr %fld.gep7, align 8
  %addtmp = add i64 %fld.load27, %subtmp.
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
  %b.app.cur.len32 = load i64, ptr %builder.new, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len32, i64 %view.len)
  %sum33 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf34 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf34, label %str_overflow_abort36, label %b.app.new.len35

choice.exit12:                                    ; preds = %b.grow_done, %b.buf.len2
  br label %loop.header.94

b.app.new.len35:                                  ; preds = %choice.then11
  %b.cap38 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow = icmp slt i64 %b.cap38, %sum33
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort36:                             ; preds = %choice.then11
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len35
  %b.cap2 = mul i64 %b.cap38, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum33
  %b.new.cap = select i1 %b.cap.need, i64 %sum33, i64 %b.cap.grow
  %b.cur.len239 = load i64, ptr %builder.new, align 8
  %b.cur.data240 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum41 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf42 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf42, label %str_overflow_abort44, label %b.new.buf.len243

b.grow_done:                                      ; preds = %b.app.new.len35, %b.new.buf.len243
  %b.app.data47 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data47, i64 %b.app.cur.len32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data47, i64 %sum33
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum33, ptr %builder.new, align 8
  %fld.load52 = load i64, ptr %fld.gep7, align 8
  %addtmp54 = add i64 %fld.load52, %subtmp.
  store i64 %addtmp54, ptr %fld.gep7, align 8
  br label %choice.exit12

b.new.buf.len243:                                 ; preds = %b.grow2
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 %sum41)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data240, i64 %b.cur.len239, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len239
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.grow_done

str_overflow_abort44:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.94:                                   ; preds = %loop.latch.94, %choice.exit12
  %loop.idx.94.0 = phi i64 [ 0, %choice.exit12 ], [ %loop.next, %loop.latch.94 ]
  %b.len59 = load i64, ptr %builder.new, align 8
  %subtmp60 = sub i64 %1, %b.len59
  %cmptmp62 = icmp sle i64 %subtmp60, 0
  br i1 %cmptmp62, label %loop.exit.94, label %choice.exit64

loop.latch.94:                                    ; preds = %choice.then80, %choice.else100
  %loop.next = add i64 %loop.idx.94.0, 1
  br label %loop.header.94

loop.exit.94:                                     ; preds = %loop.header.94, %choice.then99, %choice.exit93
  %b.len110 = load i64, ptr %builder.new, align 8
  %cmptmp111 = icmp eq i64 %b.len110, 0
  br i1 %cmptmp111, label %common.ret, label %choice.exit113

choice.exit64:                                    ; preds = %loop.header.94
  %cmptmp67 = icmp slt i64 %subtmp60, 4096
  %subtmp60. = select i1 %cmptmp67, i64 %subtmp60, i64 4096
  %arena.cur76 = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur76, i64 8)
  store ptr %0, ptr %env.alloc, align 8
  %arena.cur77 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 16)
  store ptr @"$anon_fn.101", ptr %clo.alloc, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res = call i64 @"mem::write_tail"(ptr %builder.new, i64 %subtmp60., ptr %clo.alloc)
  %cmptmp79 = icmp slt i64 %call.res, 0
  br i1 %cmptmp79, label %choice.then80, label %choice.else81

choice.then80:                                    ; preds = %choice.exit64
  %call.res83 = call i64 @"libc::errno"()
  switch i64 %call.res83, label %choice.else92 [
    i64 4, label %loop.latch.94
    i64 11, label %choice.exit93
  ]

choice.else81:                                    ; preds = %choice.exit64
  %cmptmp98 = icmp eq i64 %call.res, 0
  br i1 %cmptmp98, label %choice.then99, label %choice.else100

choice.else92:                                    ; preds = %choice.then80
  br label %choice.exit93

choice.exit93:                                    ; preds = %choice.then80, %choice.else92
  %choice.res95 = phi i64 [ %call.res83, %choice.else92 ], [ 11, %choice.then80 ]
  %fld.gep96 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  store i64 %choice.res95, ptr %fld.gep96, align 8
  br label %loop.exit.94

choice.then99:                                    ; preds = %choice.else81
  %fld.gep103 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 5
  store i1 true, ptr %fld.gep103, align 1
  %fld.gep105 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  store i64 0, ptr %fld.gep105, align 8
  br label %loop.exit.94

choice.else100:                                   ; preds = %choice.else81
  %fld.gep107 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 4
  store i64 0, ptr %fld.gep107, align 8
  br label %loop.latch.94

choice.exit113:                                   ; preds = %loop.exit.94
  %b.freeze.len116 = load i64, ptr %builder.new, align 8
  %b.freeze.data117 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %choice.exit113
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data117, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data117, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data117, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len116, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data117, i64 %b.freeze.len116, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len116
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.exit113
  %b.freeze.data119 = phi ptr [ %b.freeze.data117, %choice.exit113 ], [ %b.freeze.data117, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur120 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur120, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len116, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data119, ptr %str.build.data.gep, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.niche.val = load { i64, ptr }, ptr %builder.freeze, align 8
  br label %common.ret
}

define internal i64 @"$anon_fn.101"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %var.load = load ptr, ptr %0, align 8
  %fld.load = load i64, ptr %var.load, align 8
  %addr.ffi.int = ptrtoint ptr %1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %fld.load to i32
  %call.res = call i64 @read(i32 %coerce.trunc, ptr %addr.ffi.clean, i64 %2)
  ret i64 %call.res
}

define { i1, i64 } @"io::read_byte"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 1
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %b.len4 = load i64, ptr %fld.load3, align 8
  %cmptmp = icmp sge i64 %fld.load, %b.len4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res = call i64 @"io::#refill"(ptr %0)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  %fld.load8 = load i64, ptr %fld.gep, align 8
  %fld.load11 = load ptr, ptr %fld.gep2, align 8
  %b.len13 = load i64, ptr %fld.load11, align 8
  %cmptmp14 = icmp sge i64 %fld.load8, %b.len13
  br i1 %cmptmp14, label %common.ret, label %choice.exit16

common.ret:                                       ; preds = %choice.exit, %idx_ok
  %common.ret.op = phi { i1, i64 } [ %ram.pay, %idx_ok ], [ zeroinitializer, %choice.exit ]
  ret { i1, i64 } %common.ret.op

choice.exit16:                                    ; preds = %choice.exit
  %fld.load19 = load ptr, ptr %fld.gep2, align 8
  %b.read.len20 = load i64, ptr %fld.load19, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load19, i32 0, i32 1
  %b.read.data21 = load ptr, ptr %b.read.data, align 8
  %fld.load24 = load i64, ptr %fld.gep, align 8
  %idx.oob = icmp uge i64 %fld.load24, %b.read.len20
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %choice.exit16
  %s.byte.gep = getelementptr i8, ptr %b.read.data21, i64 %fld.load24
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %fld.load28 = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load28, 1
  store i64 %addtmp, ptr %fld.gep, align 8
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %s.byte.val, 1
  br label %common.ret

idx_oob:                                          ; preds = %choice.exit16
  call void @dva_abort_str_oob_msg()
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable
}

define { i64, ptr } @"io::read_until"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %cmptmp = icmp sle i64 %2, 0
  br i1 %cmptmp, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %2, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len2

choice.exit:                                      ; preds = %b.freeze.done361, %choice.then15, %entry
  %choice.res393 = phi ptr [ null, %entry ], [ %builder.freeze383, %b.freeze.done361 ], [ null, %choice.then15 ]
  %ret.niche.nn394 = icmp ne ptr %choice.res393, null
  br i1 %ret.niche.nn394, label %ret.niche.load395, label %common.ret

b.buf.len2:                                       ; preds = %choice.else
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 %sum)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %2, ptr %b.cap.gep, align 8
  br label %loop.header.96

str_overflow_abort:                               ; preds = %choice.else
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.96:                                   ; preds = %choice.exit255, %b.buf.len2
  %loop.idx.96.0 = phi i64 [ 0, %b.buf.len2 ], [ %loop.next342, %choice.exit255 ]
  %fld.gep = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 2
  %fld.load = load i64, ptr %fld.gep, align 8
  %fld.gep6 = getelementptr inbounds { i64, ptr, i64, i64, i64, i1 }, ptr %0, i32 0, i32 1
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %b.len8 = load i64, ptr %fld.load7, align 8
  %cmptmp9 = icmp sge i64 %fld.load, %b.len8
  br i1 %cmptmp9, label %choice.then10, label %choice.exit11

choice.then10:                                    ; preds = %loop.header.96
  %call.res = call i64 @"io::#refill"(ptr %0)
  %cmptmp14 = icmp sle i64 %call.res, 0
  br i1 %cmptmp14, label %choice.then15, label %choice.exit11

choice.exit11:                                    ; preds = %choice.then10, %loop.header.96
  %b.len20 = load i64, ptr %builder.new, align 8
  %subtmp = sub i64 %2, %b.len20
  %cmptmp22 = icmp sle i64 %subtmp, 0
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

choice.then15:                                    ; preds = %choice.then10
  %b.len345 = load i64, ptr %builder.new, align 8
  %cmptmp346 = icmp sgt i64 %b.len345, 0
  br i1 %cmptmp346, label %choice.then347, label %choice.exit

choice.then23:                                    ; preds = %choice.exit11
  %b.freeze.data27 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

choice.exit24:                                    ; preds = %choice.exit11
  %fld.load33 = load ptr, ptr %fld.gep6, align 8
  %b.len35 = load i64, ptr %fld.load33, align 8
  %fld.load38 = load i64, ptr %fld.gep, align 8
  %subtmp39 = sub i64 %b.len35, %fld.load38
  %cmptmp42 = icmp slt i64 %subtmp39, %subtmp
  %subtmp39.subtmp = select i1 %cmptmp42, i64 %subtmp39, i64 %subtmp
  br label %loop.header.97

b.freeze.check:                                   ; preds = %choice.then23
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data27, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data27, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data27, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.len20, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data27, i64 %b.len20, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.len20
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %choice.then23
  %b.freeze.data29 = phi ptr [ %b.freeze.data27, %choice.then23 ], [ %b.freeze.data27, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.len20, %str.tag.shift
  store i64 %str.tagged.len, ptr %builder.freeze, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data29, ptr %str.build.data.gep, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.niche.val = load { i64, ptr }, ptr %builder.freeze, align 8
  br label %common.ret

common.ret:                                       ; preds = %choice.exit, %ret.niche.load395, %b.freeze.done304, %b.freeze.done128, %b.freeze.done
  %common.ret.op = phi { i64, ptr } [ %ret.niche.val, %b.freeze.done ], [ %ret.niche.val162, %b.freeze.done128 ], [ %ret.niche.val338, %b.freeze.done304 ], [ %ret.niche.val397, %ret.niche.load395 ], [ zeroinitializer, %choice.exit ]
  ret { i64, ptr } %common.ret.op

loop.header.97:                                   ; preds = %choice.exit66, %choice.exit24
  %loop.idx.97.0 = phi i64 [ 0, %choice.exit24 ], [ %loop.next, %choice.exit66 ]
  %loop.cond = icmp slt i64 %loop.idx.97.0, %subtmp39.subtmp
  br i1 %loop.cond, label %loop.body.97, label %loop.exit.97

loop.body.97:                                     ; preds = %loop.header.97
  %fld.load55 = load ptr, ptr %fld.gep6, align 8
  %b.read.len56 = load i64, ptr %fld.load55, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load55, i32 0, i32 1
  %b.read.data57 = load ptr, ptr %b.read.data, align 8
  %fld.load60 = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %fld.load60, %loop.idx.97.0
  %idx.oob = icmp uge i64 %addtmp, %b.read.len56
  br i1 %idx.oob, label %idx_oob, label %idx_ok

loop.exit.97:                                     ; preds = %idx_ok, %loop.header.97
  %"var.found_idx'.0" = phi i64 [ -1, %loop.header.97 ], [ %loop.idx.97.0, %idx_ok ]
  %cmptmp69 = icmp sge i64 %"var.found_idx'.0", 0
  br i1 %cmptmp69, label %choice.then70, label %choice.else71

idx_ok:                                           ; preds = %loop.body.97
  %s.byte.gep = getelementptr i8, ptr %b.read.data57, i64 %addtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp64 = icmp eq i64 %s.byte.val, %1
  br i1 %cmptmp64, label %loop.exit.97, label %choice.exit66

idx_oob:                                          ; preds = %loop.body.97
  call void @dva_abort_str_oob_msg()
  unreachable

choice.exit66:                                    ; preds = %idx_ok
  %loop.next = add i64 %loop.idx.97.0, 1
  br label %loop.header.97

choice.then70:                                    ; preds = %loop.exit.97
  %cmptmp74 = icmp sgt i64 %"var.found_idx'.0", 0
  br i1 %cmptmp74, label %choice.then75, label %choice.exit76

choice.else71:                                    ; preds = %loop.exit.97
  %cmptmp166 = icmp sgt i64 %subtmp39.subtmp, 0
  br i1 %cmptmp166, label %choice.then167, label %choice.exit168

choice.then75:                                    ; preds = %choice.then70
  %fld.load79 = load ptr, ptr %fld.gep6, align 8
  %b.read.len81 = load i64, ptr %fld.load79, align 8
  %b.read.data82 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load79, i32 0, i32 1
  %b.read.data83 = load ptr, ptr %b.read.data82, align 8
  %fld.load86 = load i64, ptr %fld.gep, align 8
  %addtmp91 = add i64 %fld.load86, %"var.found_idx'.0"
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
  %b.app.cur.len92 = load i64, ptr %builder.new, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len92, i64 %view.len)
  %sum93 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf94 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf94, label %str_overflow_abort96, label %b.app.new.len95

choice.exit76:                                    ; preds = %b.grow_done, %choice.then70
  %fld.load112 = load i64, ptr %fld.gep, align 8
  %addtmp114 = add i64 %fld.load112, %"var.found_idx'.0"
  %addtmp115 = add i64 %addtmp114, 1
  store i64 %addtmp115, ptr %fld.gep, align 8
  %b.freeze.len119 = load i64, ptr %builder.new, align 8
  %b.freeze.data121 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena122 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep123 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 1
  %b.freeze.nc124 = load i64, ptr %b.freeze.nc.gep123, align 8
  %b.freeze.has.chunk125 = icmp sgt i64 %b.freeze.nc124, 0
  br i1 %b.freeze.has.chunk125, label %b.freeze.check126, label %b.freeze.done128

b.app.new.len95:                                  ; preds = %choice.then75
  %b.cap98 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow = icmp slt i64 %b.cap98, %sum93
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort96:                             ; preds = %choice.then75
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len95
  %b.cap2 = mul i64 %b.cap98, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum93
  %b.new.cap = select i1 %b.cap.need, i64 %sum93, i64 %b.cap.grow
  %b.cur.len299 = load i64, ptr %builder.new, align 8
  %b.cur.data2100 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum101 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf102 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf102, label %str_overflow_abort104, label %b.new.buf.len2103

b.grow_done:                                      ; preds = %b.app.new.len95, %b.new.buf.len2103
  %b.app.data107 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data107, i64 %b.app.cur.len92
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 %view.data, i64 %view.len, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data107, i64 %sum93
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum93, ptr %builder.new, align 8
  br label %choice.exit76

b.new.buf.len2103:                                ; preds = %b.grow2
  %arena.cur106 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 %sum101)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data2100, i64 %b.cur.len299, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len299
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.grow_done

str_overflow_abort104:                            ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.freeze.check126:                                ; preds = %choice.exit76
  %b.freeze.last.idx129 = sub i64 %b.freeze.nc124, 1
  %b.freeze.chunks.gep130 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 3
  %b.freeze.chunk.slot131 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep130, i64 0, i64 %b.freeze.last.idx129
  %b.freeze.last.chunk132 = load ptr, ptr %b.freeze.chunk.slot131, align 8
  %b.freeze.off.gep133 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena122, i32 0, i32 2
  %b.freeze.off134 = load i64, ptr %b.freeze.off.gep133, align 8
  %b.freeze.bump135 = getelementptr i8, ptr %b.freeze.last.chunk132, i64 %b.freeze.off134
  %b.freeze.cap137 = load i64, ptr %b.freeze.arena122, align 8
  %b.freeze.chunk.end138 = getelementptr i8, ptr %b.freeze.last.chunk132, i64 %b.freeze.cap137
  %b.freeze.ge.chunk139 = icmp uge ptr %b.freeze.data121, %b.freeze.last.chunk132
  %b.freeze.lt.end140 = icmp ult ptr %b.freeze.data121, %b.freeze.chunk.end138
  %b.freeze.in.chunk141 = and i1 %b.freeze.ge.chunk139, %b.freeze.lt.end140
  %b.freeze.ge.bump142 = icmp uge ptr %b.freeze.data121, %b.freeze.bump135
  %b.freeze.reaped143 = and i1 %b.freeze.in.chunk141, %b.freeze.ge.bump142
  br i1 %b.freeze.reaped143, label %b.freeze.copy127, label %b.freeze.done128

b.freeze.copy127:                                 ; preds = %b.freeze.check126
  %b.freeze.alen144 = add i64 %b.freeze.len119, 1
  %b.freeze.fresh146 = call ptr @dva_arena_alloc(ptr %b.freeze.arena122, i64 %b.freeze.alen144)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh146, ptr align 1 %b.freeze.data121, i64 %b.freeze.len119, i1 false)
  %b.freeze.nul147 = getelementptr i8, ptr %b.freeze.fresh146, i64 %b.freeze.len119
  store i8 0, ptr %b.freeze.nul147, align 1
  br label %b.freeze.done128

b.freeze.done128:                                 ; preds = %b.freeze.copy127, %b.freeze.check126, %choice.exit76
  %b.freeze.data148 = phi ptr [ %b.freeze.data121, %choice.exit76 ], [ %b.freeze.data121, %b.freeze.check126 ], [ %b.freeze.fresh146, %b.freeze.copy127 ]
  %arena.cur149 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze150 = call ptr @dva_arena_alloc(ptr %arena.cur149, i64 16)
  %str.tag.gen152 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift153 = shl i64 %str.tag.gen152, 48
  %str.tagged.len154 = or i64 %b.freeze.len119, %str.tag.shift153
  store i64 %str.tagged.len154, ptr %builder.freeze150, align 8
  %str.build.data.gep155 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze150, i32 0, i32 1
  store ptr %b.freeze.data148, ptr %str.build.data.gep155, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.niche.val162 = load { i64, ptr }, ptr %builder.freeze150, align 8
  br label %common.ret

choice.then167:                                   ; preds = %choice.else71
  %fld.load172 = load ptr, ptr %fld.gep6, align 8
  %b.read.len174 = load i64, ptr %fld.load172, align 8
  %b.read.data175 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load172, i32 0, i32 1
  %b.read.data176 = load ptr, ptr %b.read.data175, align 8
  %fld.load179 = load i64, ptr %fld.gep, align 8
  %addtmp184 = add i64 %fld.load179, %subtmp39.subtmp
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
  %b.app.cur.len204 = load i64, ptr %builder.new, align 8
  %b.app.new.len205 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len204, i64 %view.len201)
  %sum206 = extractvalue { i64, i1 } %b.app.new.len205, 0
  %ovf207 = extractvalue { i64, i1 } %b.app.new.len205, 1
  br i1 %ovf207, label %str_overflow_abort209, label %b.app.new.len208

choice.exit168:                                   ; preds = %b.grow_done216, %choice.else71
  %fld.load245 = load i64, ptr %fld.gep, align 8
  %addtmp247 = add i64 %fld.load245, %subtmp39.subtmp
  store i64 %addtmp247, ptr %fld.gep, align 8
  %b.len251 = load i64, ptr %builder.new, align 8
  %cmptmp253 = icmp sge i64 %b.len251, %2
  br i1 %cmptmp253, label %choice.then254, label %choice.exit255

b.app.new.len208:                                 ; preds = %choice.then167
  %b.cap212 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow213 = icmp slt i64 %b.cap212, %sum206
  br i1 %b.need.grow213, label %b.grow2214, label %b.grow_done216

str_overflow_abort209:                            ; preds = %choice.then167
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2214:                                       ; preds = %b.app.new.len208
  %b.cap2217 = mul i64 %b.cap212, 2
  %b.cap.small218 = icmp slt i64 %b.cap2217, 16
  %b.cap.grow219 = select i1 %b.cap.small218, i64 16, i64 %b.cap2217
  %b.cap.need220 = icmp slt i64 %b.cap.grow219, %sum206
  %b.new.cap221 = select i1 %b.cap.need220, i64 %sum206, i64 %b.cap.grow219
  %b.cur.len2223 = load i64, ptr %builder.new, align 8
  %b.cur.data2225 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2226 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap221, i64 1)
  %sum227 = extractvalue { i64, i1 } %b.new.buf.len2226, 0
  %ovf228 = extractvalue { i64, i1 } %b.new.buf.len2226, 1
  br i1 %ovf228, label %str_overflow_abort230, label %b.new.buf.len2229

b.grow_done216:                                   ; preds = %b.app.new.len208, %b.new.buf.len2229
  %b.app.data238 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst239 = getelementptr i8, ptr %b.app.data238, i64 %b.app.cur.len204
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst239, ptr align 1 %view.data202, i64 %view.len201, i1 false)
  %b.app.nul240 = getelementptr i8, ptr %b.app.data238, i64 %sum206
  store i8 0, ptr %b.app.nul240, align 1
  store i64 %sum206, ptr %builder.new, align 8
  br label %choice.exit168

b.new.buf.len2229:                                ; preds = %b.grow2214
  %arena.cur232 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 %sum227)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2233, ptr align 1 %b.cur.data2225, i64 %b.cur.len2223, i1 false)
  %b.grow2.nul234 = getelementptr i8, ptr %b.new.buf2233, i64 %b.cur.len2223
  store i8 0, ptr %b.grow2.nul234, align 1
  store ptr %b.new.buf2233, ptr %b.data.gep, align 8
  store i64 %b.new.cap221, ptr %b.cap.gep, align 8
  br label %b.grow_done216

str_overflow_abort230:                            ; preds = %b.grow2214
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then254:                                   ; preds = %choice.exit168
  %fld.load261 = load ptr, ptr %fld.gep6, align 8
  %b.len263 = load i64, ptr %fld.load261, align 8
  %cmptmp264 = icmp slt i64 %addtmp247, %b.len263
  br i1 %cmptmp264, label %and.98.then, label %choice.exit286

choice.exit255:                                   ; preds = %choice.exit168
  %loop.next342 = add i64 %loop.idx.96.0, 1
  br label %loop.header.96

and.98.then:                                      ; preds = %choice.then254
  %b.read.data270 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load261, i32 0, i32 1
  %b.read.data271 = load ptr, ptr %b.read.data270, align 8
  %idx.oob275 = icmp uge i64 %addtmp247, %b.len263
  br i1 %idx.oob275, label %idx_oob277, label %idx_ok276

idx_ok276:                                        ; preds = %and.98.then
  %s.byte.gep279 = getelementptr i8, ptr %b.read.data271, i64 %addtmp247
  %s.byte280 = load i8, ptr %s.byte.gep279, align 1
  %s.byte.val281 = zext i8 %s.byte280 to i64
  %cmptmp283 = icmp eq i64 %s.byte.val281, %1
  br i1 %cmptmp283, label %choice.then285, label %choice.exit286

idx_oob277:                                       ; preds = %and.98.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then285:                                   ; preds = %idx_ok276
  %fld.load290 = load i64, ptr %fld.gep, align 8
  %addtmp291 = add i64 %fld.load290, 1
  store i64 %addtmp291, ptr %fld.gep, align 8
  br label %choice.exit286

choice.exit286:                                   ; preds = %choice.then254, %choice.then285, %idx_ok276
  %b.freeze.len295 = load i64, ptr %builder.new, align 8
  %b.freeze.data297 = load ptr, ptr %b.data.gep, align 8
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
  %b.freeze.cap313 = load i64, ptr %b.freeze.arena298, align 8
  %b.freeze.chunk.end314 = getelementptr i8, ptr %b.freeze.last.chunk308, i64 %b.freeze.cap313
  %b.freeze.ge.chunk315 = icmp uge ptr %b.freeze.data297, %b.freeze.last.chunk308
  %b.freeze.lt.end316 = icmp ult ptr %b.freeze.data297, %b.freeze.chunk.end314
  %b.freeze.in.chunk317 = and i1 %b.freeze.ge.chunk315, %b.freeze.lt.end316
  %b.freeze.ge.bump318 = icmp uge ptr %b.freeze.data297, %b.freeze.bump311
  %b.freeze.reaped319 = and i1 %b.freeze.in.chunk317, %b.freeze.ge.bump318
  br i1 %b.freeze.reaped319, label %b.freeze.copy303, label %b.freeze.done304

b.freeze.copy303:                                 ; preds = %b.freeze.check302
  %b.freeze.alen320 = add i64 %b.freeze.len295, 1
  %b.freeze.fresh322 = call ptr @dva_arena_alloc(ptr %b.freeze.arena298, i64 %b.freeze.alen320)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh322, ptr align 1 %b.freeze.data297, i64 %b.freeze.len295, i1 false)
  %b.freeze.nul323 = getelementptr i8, ptr %b.freeze.fresh322, i64 %b.freeze.len295
  store i8 0, ptr %b.freeze.nul323, align 1
  br label %b.freeze.done304

b.freeze.done304:                                 ; preds = %b.freeze.copy303, %b.freeze.check302, %choice.exit286
  %b.freeze.data324 = phi ptr [ %b.freeze.data297, %choice.exit286 ], [ %b.freeze.data297, %b.freeze.check302 ], [ %b.freeze.fresh322, %b.freeze.copy303 ]
  %arena.cur325 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze326 = call ptr @dva_arena_alloc(ptr %arena.cur325, i64 16)
  %str.tag.gen328 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift329 = shl i64 %str.tag.gen328, 48
  %str.tagged.len330 = or i64 %b.freeze.len295, %str.tag.shift329
  store i64 %str.tagged.len330, ptr %builder.freeze326, align 8
  %str.build.data.gep331 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze326, i32 0, i32 1
  store ptr %b.freeze.data324, ptr %str.build.data.gep331, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  %ret.niche.val338 = load { i64, ptr }, ptr %builder.freeze326, align 8
  br label %common.ret

choice.then347:                                   ; preds = %choice.then15
  %b.freeze.data354 = load ptr, ptr %b.data.gep, align 8
  %b.freeze.arena355 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep356 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena355, i32 0, i32 1
  %b.freeze.nc357 = load i64, ptr %b.freeze.nc.gep356, align 8
  %b.freeze.has.chunk358 = icmp sgt i64 %b.freeze.nc357, 0
  br i1 %b.freeze.has.chunk358, label %b.freeze.check359, label %b.freeze.done361

b.freeze.check359:                                ; preds = %choice.then347
  %b.freeze.last.idx362 = sub i64 %b.freeze.nc357, 1
  %b.freeze.chunks.gep363 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena355, i32 0, i32 3
  %b.freeze.chunk.slot364 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep363, i64 0, i64 %b.freeze.last.idx362
  %b.freeze.last.chunk365 = load ptr, ptr %b.freeze.chunk.slot364, align 8
  %b.freeze.off.gep366 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena355, i32 0, i32 2
  %b.freeze.off367 = load i64, ptr %b.freeze.off.gep366, align 8
  %b.freeze.bump368 = getelementptr i8, ptr %b.freeze.last.chunk365, i64 %b.freeze.off367
  %b.freeze.cap370 = load i64, ptr %b.freeze.arena355, align 8
  %b.freeze.chunk.end371 = getelementptr i8, ptr %b.freeze.last.chunk365, i64 %b.freeze.cap370
  %b.freeze.ge.chunk372 = icmp uge ptr %b.freeze.data354, %b.freeze.last.chunk365
  %b.freeze.lt.end373 = icmp ult ptr %b.freeze.data354, %b.freeze.chunk.end371
  %b.freeze.in.chunk374 = and i1 %b.freeze.ge.chunk372, %b.freeze.lt.end373
  %b.freeze.ge.bump375 = icmp uge ptr %b.freeze.data354, %b.freeze.bump368
  %b.freeze.reaped376 = and i1 %b.freeze.in.chunk374, %b.freeze.ge.bump375
  br i1 %b.freeze.reaped376, label %b.freeze.copy360, label %b.freeze.done361

b.freeze.copy360:                                 ; preds = %b.freeze.check359
  %b.freeze.alen377 = add i64 %b.len345, 1
  %b.freeze.fresh379 = call ptr @dva_arena_alloc(ptr %b.freeze.arena355, i64 %b.freeze.alen377)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh379, ptr align 1 %b.freeze.data354, i64 %b.len345, i1 false)
  %b.freeze.nul380 = getelementptr i8, ptr %b.freeze.fresh379, i64 %b.len345
  store i8 0, ptr %b.freeze.nul380, align 1
  br label %b.freeze.done361

b.freeze.done361:                                 ; preds = %b.freeze.copy360, %b.freeze.check359, %choice.then347
  %b.freeze.data381 = phi ptr [ %b.freeze.data354, %choice.then347 ], [ %b.freeze.data354, %b.freeze.check359 ], [ %b.freeze.fresh379, %b.freeze.copy360 ]
  %arena.cur382 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze383 = call ptr @dva_arena_alloc(ptr %arena.cur382, i64 16)
  %str.tag.gen385 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift386 = shl i64 %str.tag.gen385, 48
  %str.tagged.len387 = or i64 %b.len345, %str.tag.shift386
  store i64 %str.tagged.len387, ptr %builder.freeze383, align 8
  %str.build.data.gep388 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze383, i32 0, i32 1
  store ptr %b.freeze.data381, ptr %str.build.data.gep388, align 8
  store i64 0, ptr %builder.new, align 8
  store ptr null, ptr %b.data.gep, align 8
  store i64 0, ptr %b.cap.gep, align 8
  br label %choice.exit

ret.niche.load395:                                ; preds = %choice.exit
  %ret.niche.val397 = load { i64, ptr }, ptr %choice.res393, align 8
  br label %common.ret
}

define { i64, ptr } @"io::read_line"(ptr %0, i64 %1) #3 {
entry:
  %call.res = call { i64, ptr } @"io::read_until"(ptr %0, i64 10, i64 %1)
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
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %ret.niche.done
  %str.len.query4 = load i64, ptr %ret.niche.ptr, align 8
  %str.len.query5 = and i64 %str.len.query4, 281474976710655
  %str.tag = lshr i64 %str.len.query4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.then13, %str_ok, %idx_ok, %ret.niche.done
  %choice.res27 = phi ptr [ null, %ret.niche.done ], [ %str.view, %choice.then13 ], [ %ret.niche.ptr, %str_ok ], [ %ret.niche.ptr, %idx_ok ]
  %ret.niche.nn = icmp ne ptr %choice.res27, null
  br i1 %ret.niche.nn, label %ret.niche.load, label %ret.niche.merge

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %cmptmp = icmp sgt i64 %str.len.query5, 0
  br i1 %cmptmp, label %and.99.then, label %choice.exit

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

and.99.then:                                      ; preds = %str_ok
  %s.read.len8 = load i64, ptr %ret.niche.ptr, align 8
  %s.read.len9 = and i64 %s.read.len8, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr, i32 0, i32 1
  %s.read.data10 = load ptr, ptr %s.read.data, align 8
  %subtmp = sub i64 %str.len.query5, 1
  %idx.oob = icmp uge i64 %subtmp, %s.read.len9
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %and.99.then
  %s.byte.gep = getelementptr i8, ptr %s.read.data10, i64 %subtmp
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp12 = icmp eq i64 %s.byte.val, 13
  br i1 %cmptmp12, label %choice.then13, label %choice.exit

idx_oob:                                          ; preds = %and.99.then
  call void @dva_abort_str_oob_msg()
  unreachable

choice.then13:                                    ; preds = %idx_ok
  %subtmp17 = sub i64 %str.len.query5, 1
  %s.read.len20 = load i64, ptr %ret.niche.ptr, align 8
  %s.read.len21 = and i64 %s.read.len20, 281474976710655
  %s.read.data22 = getelementptr inbounds { i64, ptr }, ptr %ret.niche.ptr, i32 0, i32 1
  %s.read.data23 = load ptr, ptr %s.read.data22, align 8
  %end.is_neg = icmp slt i64 %subtmp17, 0
  %rel.end = add i64 %s.read.len21, %subtmp17
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %subtmp17
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len21
  %final.end = select i1 %end.gt.len, i64 %s.read.len21, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %view.len, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %s.read.data23, ptr %str.build.data.gep, align 8
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
