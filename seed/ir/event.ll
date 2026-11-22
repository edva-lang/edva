; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@"var.event::READ" = global i64 1
@"var.event::WRITE" = global i64 2
@"var.event::PRI" = global i64 4
@"var.event::ERR" = global i64 8
@"var.event::HUP" = global i64 16
@"var.event::RDHUP" = global i64 8192
@"var.event::CTL_ADD" = global i64 1
@"var.event::CTL_DEL" = global i64 2
@"var.event::CTL_MOD" = global i64 3
@clo.const = internal constant { ptr, ptr } { ptr @"event::new_with_cap", ptr null }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"event::new", ptr null }
@"var.event::new" = global ptr null
@"var.event::new_with_cap" = global ptr null
@str.0 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.0 }
@str.1 = internal unnamed_addr constant [10 x i8] c"event.dva\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.1 }
@str.2 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.2 }
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"event::add", ptr null }
@"var.event::add" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"event::add_fd", ptr null }
@"var.event::add_fd" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"event::mod", ptr null }
@"var.event::mod" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"event::mod_fd", ptr null }
@"var.event::mod_fd" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"event::del", ptr null }
@"var.event::del" = global ptr null
@detached_builder = internal unnamed_addr constant [93 x i8] c"E4013: Builder buffer was detached by freeze. Append data or create a new Builder before &b\0A\00"
@null_addr_cast = internal unnamed_addr constant [40 x i8] c"E4015: cannot construct Addr from zero\0A\00"
@expect.reason.66 = internal unnamed_addr constant [22 x i8] c"expect: missing idxs\0A\00"
@dva_thread_rec = external thread_local global ptr
@expect.reason.68 = internal unnamed_addr constant [25 x i8] c"expect: missing entries\0A\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"event::wait", ptr null }
@"var.event::wait" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"event::close", ptr null }
@"var.event::close" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"event::is_read", ptr null }
@"var.event::is_read" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"event::is_write", ptr null }
@"var.event::is_write" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"event::is_err", ptr null }
@"var.event::is_err" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"event::is_hup", ptr null }
@"var.event::is_hup" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"event::poll_in", ptr null }
@"var.event::poll_in" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"event::poll_out", ptr null }
@"var.event::poll_out" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_event, ptr null }]

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

define internal void @__dva_global_init_event() #3 {
entry:
  store i64 1, ptr @"var.event::READ", align 8
  store i64 2, ptr @"var.event::WRITE", align 8
  store i64 4, ptr @"var.event::PRI", align 8
  store i64 8, ptr @"var.event::ERR", align 8
  store i64 16, ptr @"var.event::HUP", align 8
  store i64 8192, ptr @"var.event::RDHUP", align 8
  store i64 1, ptr @"var.event::CTL_ADD", align 8
  store i64 2, ptr @"var.event::CTL_DEL", align 8
  store i64 3, ptr @"var.event::CTL_MOD", align 8
  store ptr @clo.const.1, ptr @"var.event::new", align 8
  store ptr @clo.const, ptr @"var.event::new_with_cap", align 8
  store ptr @clo.const.2, ptr @"var.event::add", align 8
  store ptr @clo.const.3, ptr @"var.event::add_fd", align 8
  store ptr @clo.const.4, ptr @"var.event::mod", align 8
  store ptr @clo.const.5, ptr @"var.event::mod_fd", align 8
  store ptr @clo.const.6, ptr @"var.event::del", align 8
  store ptr @clo.const.7, ptr @"var.event::wait", align 8
  store ptr @clo.const.8, ptr @"var.event::close", align 8
  store ptr @clo.const.9, ptr @"var.event::is_read", align 8
  store ptr @clo.const.10, ptr @"var.event::is_write", align 8
  store ptr @clo.const.11, ptr @"var.event::is_err", align 8
  store ptr @clo.const.12, ptr @"var.event::is_hup", align 8
  store ptr @clo.const.13, ptr @"var.event::poll_in", align 8
  store ptr @clo.const.14, ptr @"var.event::poll_out", align 8
  ret void
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

declare i64 @poll(ptr, i64, i64)

define { i1, i64 } @"event::new"() #3 {
entry:
  %call.res = call { i1, i64 } @"event::new_with_cap"(i64 64)
  ret { i1, i64 } %call.res
}

define { i1, i64 } @"event::new_with_cap"(i64 %0) #3 {
entry:
  %var.cap = alloca i64, align 8
  %var.max_ev = alloca i64, align 8
  store i64 %0, ptr %var.max_ev, align 8
  %var.load = load i64, ptr %var.max_ev, align 8
  %cmptmp = icmp sgt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.max_ev, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load1, %choice.then ], [ 64, %choice.else ]
  store i64 %choice.res, ptr %var.cap, align 8
  %var.load2 = load i64, ptr %var.cap, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ i64, i1, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i1, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i1 false, ptr %rec.fld5, align 1
  %rec.fld6 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load2, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %rec.alloc, i32 0, i32 3
  store ptr %a.new, ptr %rec.fld7, align 8
  %ptr.to.i64 = ptrtoint ptr %rec.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  ret { i1, i64 } %ram.pay
}

define i1 @"event::add"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.56 = alloca i64, align 8
  %loop.idx.56 = alloca i64, align 8
  %"var.free_slot'" = alloca i64, align 8
  %"var.dup'" = alloca i1, align 1
  %var.user_data = alloca i64, align 8
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.55.then, label %or.55.else

or.55.then:                                       ; preds = %entry
  br label %or.55.exit

or.55.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.55.exit

or.55.exit:                                       ; preds = %or.55.else, %or.55.then
  %or.55.phi = phi i1 [ %fld.load, %or.55.then ], [ %cmptmp, %or.55.else ]
  br i1 %or.55.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.55.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.55.exit
  store i1 false, ptr %"var.dup'", align 1
  store i64 -1, ptr %"var.free_slot'", align 8
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %arr.cycle.len5 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.56, align 8
  br label %loop.header.56

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.56:                                   ; preds = %loop.latch.56, %choice.exit
  %counter.load = load i64, ptr %loop.idx.56, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.56, label %loop.exit.nat.56

loop.body.56:                                     ; preds = %loop.header.56
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.56, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load7 = load ptr, ptr %var.e, align 8
  %fld.gep8 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %var.load10 = load i64, ptr %var.fd, align 8
  %cmptmp11 = icmp eq i64 %fld.load9, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

loop.exit.nat.56:                                 ; preds = %loop.header.56
  br label %loop.exit.56

loop.latch.56:                                    ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.56, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.56, align 8
  br label %loop.header.56

loop.exit.56:                                     ; preds = %loop.exit.nat.56
  %var.load23 = load i1, ptr %"var.dup'", align 1
  br i1 %var.load23, label %choice.then24, label %choice.exit25

choice.then12:                                    ; preds = %loop.body.56
  store i1 true, ptr %"var.dup'", align 1
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.then12, %loop.body.56
  %var.load14 = load ptr, ptr %var.e, align 8
  %fld.gep15 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load i64, ptr %fld.gep15, align 8
  %cmptmp17 = icmp slt i64 %fld.load16, 0
  br i1 %cmptmp17, label %and.57.then, label %and.57.else

and.57.then:                                      ; preds = %choice.exit13
  %var.load18 = load i64, ptr %"var.free_slot'", align 8
  %cmptmp19 = icmp slt i64 %var.load18, 0
  br label %and.57.exit

and.57.else:                                      ; preds = %choice.exit13
  br label %and.57.exit

and.57.exit:                                      ; preds = %and.57.else, %and.57.then
  %and.57.phi = phi i1 [ %cmptmp19, %and.57.then ], [ %cmptmp17, %and.57.else ]
  br i1 %and.57.phi, label %choice.then20, label %choice.exit21

choice.then20:                                    ; preds = %and.57.exit
  %var.load22 = load i64, ptr %var.i, align 8
  store i64 %var.load22, ptr %"var.free_slot'", align 8
  br label %choice.exit21

choice.exit21:                                    ; preds = %choice.then20, %and.57.exit
  br label %loop.latch.56

choice.then24:                                    ; preds = %loop.exit.56
  ret i1 false

choice.exit25:                                    ; preds = %ret.dead26, %loop.exit.56
  %var.load27 = load i64, ptr %"var.free_slot'", align 8
  %cmptmp28 = icmp sge i64 %var.load27, 0
  br i1 %cmptmp28, label %choice.then29, label %choice.else

ret.dead26:                                       ; No predecessors!
  br label %choice.exit25

choice.then29:                                    ; preds = %choice.exit25
  %var.load31 = load ptr, ptr %var.p, align 8
  %fld.gep32 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load31, i32 0, i32 3
  %fld.load33 = load ptr, ptr %fld.gep32, align 8
  %var.load34 = load i64, ptr %"var.free_slot'", align 8
  %var.load35 = load i64, ptr %var.fd, align 8
  %var.load36 = load i64, ptr %var.mask, align 8
  %var.load37 = load i64, ptr %var.user_data, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load35, ptr %rec.fld, align 8
  %rec.fld38 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load36, ptr %rec.fld38, align 8
  %rec.fld39 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load37, ptr %rec.fld39, align 8
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  %a.wr.nonnull = icmp ne ptr %fld.load33, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

choice.else:                                      ; preds = %choice.exit25
  %var.load53 = load ptr, ptr %var.p, align 8
  %fld.gep54 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load53, i32 0, i32 3
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load55, i32 0, i32 0
  %a.len.query56 = load i64, ptr %a.len.query, align 8
  %var.load57 = load ptr, ptr %var.p, align 8
  %fld.gep58 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load57, i32 0, i32 2
  %fld.load59 = load i64, ptr %fld.gep58, align 8
  %cmptmp60 = icmp slt i64 %a.len.query56, %fld.load59
  br i1 %cmptmp60, label %choice.then61, label %choice.else62

choice.exit30:                                    ; preds = %choice.exit63, %a.wr.done
  %choice.res80 = phi i1 [ true, %a.wr.done ], [ %choice.res, %choice.exit63 ]
  ret i1 %choice.res80

a.wr.check:                                       ; preds = %choice.then29
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load33, i32 0, i32 0
  %a.wr.len40 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load34, 0
  %a.wr.lt = icmp slt i64 %var.load34, %a.wr.len40
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load33, i32 0, i32 1
  %a.wr.data41 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data41, i64 %var.load34
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %choice.then29
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 56)
  %err.code.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 0
  store i64 4011, ptr %err.code.gep45, align 8
  %err.msg.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep46, align 8
  %err.file.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep47, align 8
  %err.line.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 3
  store i64 0, ptr %err.line.gep48, align 8
  %err.col.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 4
  store i64 0, ptr %err.col.gep49, align 8
  %err.ctx.gep50 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc44, i32 0, i32 5
  %err.ctx0.gep51 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep50, i32 0, i32 0
  store i64 %var.load34, ptr %err.ctx0.gep51, align 8
  %err.ctx1.gep52 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep50, i32 0, i32 1
  store i64 %a.wr.len40, ptr %err.ctx1.gep52, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc, %a.wr.err.null ], [ %err.alloc44, %a.wr.err.oob ]
  br label %choice.exit30

choice.then61:                                    ; preds = %choice.else
  %var.load64 = load ptr, ptr %var.p, align 8
  %var.load65 = load i64, ptr %var.fd, align 8
  %var.load66 = load i64, ptr %var.mask, align 8
  %var.load67 = load i64, ptr %var.user_data, align 8
  %arena.cur68 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc69 = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld70 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc69, i32 0, i32 0
  store i64 %var.load65, ptr %rec.fld70, align 8
  %rec.fld71 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc69, i32 0, i32 1
  store i64 %var.load66, ptr %rec.fld71, align 8
  %rec.fld72 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc69, i32 0, i32 2
  store i64 %var.load67, ptr %rec.fld72, align 8
  %fld.gep73 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load64, i32 0, i32 3
  %a.fld.load = load ptr, ptr %fld.gep73, align 8
  br label %a.check

choice.else62:                                    ; preds = %choice.else
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else62, %a.store
  %choice.res = phi i1 [ true, %a.store ], [ false, %choice.else62 ]
  br label %choice.exit30

a.check:                                          ; preds = %choice.then61
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len74 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap75 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len74, %a.cap75
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data76 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len77 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep78 = getelementptr i64, ptr %a.cur.data76, i64 %a.cur.len77
  %slot.p2i79 = ptrtoint ptr %rec.alloc69 to i64
  store i64 %slot.p2i79, ptr %a.elem.gep78, align 8
  %a.next.len = add i64 %a.cur.len77, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit63
}

define internal void @dva_array_grow(ptr %0) #3 {
entry:
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 0
  %a.len1 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %abort.dead, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %abort.dead10, %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define i1 @"event::add_fd"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.fd, align 8
  %var.load2 = load i64, ptr %var.mask, align 8
  %var.load3 = load i64, ptr %var.fd, align 8
  %call.res = call i1 @"event::add"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3)
  ret i1 %call.res
}

define i1 @"event::mod"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.59 = alloca i64, align 8
  %loop.idx.59 = alloca i64, align 8
  %var.user_data = alloca i64, align 8
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.58.then, label %or.58.else

or.58.then:                                       ; preds = %entry
  br label %or.58.exit

or.58.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.58.exit

or.58.exit:                                       ; preds = %or.58.else, %or.58.then
  %or.58.phi = phi i1 [ %fld.load, %or.58.then ], [ %cmptmp, %or.58.else ]
  br i1 %or.58.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.58.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.58.exit
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %arr.cycle.len5 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.59:                                   ; preds = %loop.latch.59, %choice.exit
  %counter.load = load i64, ptr %loop.idx.59, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.59, label %loop.exit.nat.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load7 = load ptr, ptr %var.e, align 8
  %fld.gep8 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %var.load10 = load i64, ptr %var.fd, align 8
  %cmptmp11 = icmp eq i64 %fld.load9, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

loop.exit.nat.59:                                 ; preds = %loop.header.59
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %loop.exit.nat.59
  ret i1 false

choice.then12:                                    ; preds = %loop.body.59
  %var.load14 = load ptr, ptr %var.p, align 8
  %fld.gep15 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load14, i32 0, i32 3
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %var.load18 = load i64, ptr %var.fd, align 8
  %var.load19 = load i64, ptr %var.mask, align 8
  %var.load20 = load i64, ptr %var.user_data, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load18, ptr %rec.fld, align 8
  %rec.fld21 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load19, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load20, ptr %rec.fld22, align 8
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  %a.wr.nonnull = icmp ne ptr %fld.load16, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

choice.exit13:                                    ; preds = %ret.dead36, %loop.body.59
  br label %loop.latch.59

a.wr.check:                                       ; preds = %choice.then12
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load16, i32 0, i32 0
  %a.wr.len23 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load17, 0
  %a.wr.lt = icmp slt i64 %var.load17, %a.wr.len23
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load16, i32 0, i32 1
  %a.wr.data24 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data24, i64 %var.load17
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %choice.then12
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc27 = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 56)
  %err.code.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc27, i32 0, i32 0
  store i64 4011, ptr %err.code.gep28, align 8
  %err.msg.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc27, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep29, align 8
  %err.file.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc27, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep30, align 8
  %err.line.gep31 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc27, i32 0, i32 3
  store i64 0, ptr %err.line.gep31, align 8
  %err.col.gep32 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc27, i32 0, i32 4
  store i64 0, ptr %err.col.gep32, align 8
  %err.ctx.gep33 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc27, i32 0, i32 5
  %err.ctx0.gep34 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep33, i32 0, i32 0
  store i64 %var.load17, ptr %err.ctx0.gep34, align 8
  %err.ctx1.gep35 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep33, i32 0, i32 1
  store i64 %a.wr.len23, ptr %err.ctx1.gep35, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc, %a.wr.err.null ], [ %err.alloc27, %a.wr.err.oob ]
  ret i1 true

ret.dead36:                                       ; No predecessors!
  br label %choice.exit13
}

define i1 @"event::mod_fd"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.fd, align 8
  %var.load2 = load i64, ptr %var.mask, align 8
  %var.load3 = load i64, ptr %var.fd, align 8
  %call.res = call i1 @"event::mod"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3)
  ret i1 %call.res
}

define i1 @"event::del"(ptr %0, i64 %1) #3 {
entry:
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.61 = alloca i64, align 8
  %loop.idx.61 = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.60.then, label %or.60.else

or.60.then:                                       ; preds = %entry
  br label %or.60.exit

or.60.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.60.exit

or.60.exit:                                       ; preds = %or.60.else, %or.60.then
  %or.60.phi = phi i1 [ %fld.load, %or.60.then ], [ %cmptmp, %or.60.else ]
  br i1 %or.60.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.60.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.60.exit
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %arr.cycle.len5 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.61, align 8
  br label %loop.header.61

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.61:                                   ; preds = %loop.latch.61, %choice.exit
  %counter.load = load i64, ptr %loop.idx.61, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.61, label %loop.exit.nat.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.61, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load7 = load ptr, ptr %var.e, align 8
  %fld.gep8 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %var.load10 = load i64, ptr %var.fd, align 8
  %cmptmp11 = icmp eq i64 %fld.load9, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

loop.exit.nat.61:                                 ; preds = %loop.header.61
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.61, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %loop.exit.nat.61
  ret i1 false

choice.then12:                                    ; preds = %loop.body.61
  %var.load14 = load ptr, ptr %var.p, align 8
  %fld.gep15 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load14, i32 0, i32 3
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 -1, ptr %rec.fld, align 8
  %rec.fld18 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld18, align 8
  %rec.fld19 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld19, align 8
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  %a.wr.nonnull = icmp ne ptr %fld.load16, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

choice.exit13:                                    ; preds = %ret.dead33, %loop.body.61
  br label %loop.latch.61

a.wr.check:                                       ; preds = %choice.then12
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load16, i32 0, i32 0
  %a.wr.len20 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load17, 0
  %a.wr.lt = icmp slt i64 %var.load17, %a.wr.len20
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load16, i32 0, i32 1
  %a.wr.data21 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data21, i64 %var.load17
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %choice.then12
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 56)
  %err.code.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc24, i32 0, i32 0
  store i64 4011, ptr %err.code.gep25, align 8
  %err.msg.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc24, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep26, align 8
  %err.file.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc24, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep27, align 8
  %err.line.gep28 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc24, i32 0, i32 3
  store i64 0, ptr %err.line.gep28, align 8
  %err.col.gep29 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc24, i32 0, i32 4
  store i64 0, ptr %err.col.gep29, align 8
  %err.ctx.gep30 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc24, i32 0, i32 5
  %err.ctx0.gep31 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep30, i32 0, i32 0
  store i64 %var.load17, ptr %err.ctx0.gep31, align 8
  %err.ctx1.gep32 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep30, i32 0, i32 1
  store i64 %a.wr.len20, ptr %err.ctx1.gep32, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc, %a.wr.err.null ], [ %err.alloc24, %a.wr.err.oob ]
  ret i1 true

ret.dead33:                                       ; No predecessors!
  br label %choice.exit13
}

define ptr @"event::wait"(ptr %0, i64 %1) #3 {
entry:
  %var.ev_mask = alloca i64, align 8
  %var.ev = alloca ptr, align 8
  %var.slot = alloca i64, align 8
  %var.rev = alloca i64, align 8
  %var._i172 = alloca i64, align 8
  %var.k171 = alloca i64, align 8
  %var._170 = alloca i64, align 8
  %loop.step.64 = alloca i64, align 8
  %loop.idx.64 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.pmask = alloca i64, align 8
  %var.emask = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.63 = alloca i64, align 8
  %loop.idx.63 = alloca i64, align 8
  %"var.nfds'" = alloca i64, align 8
  %var.idxs = alloca ptr, align 8
  %var.pfds = alloca ptr, align 8
  %"var.res'" = alloca ptr, align 8
  %var.timeout_ms = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.timeout_ms, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %"var.res'", align 8
  %a.load = load ptr, ptr %"var.res'", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load10 = load ptr, ptr %var.p, align 8
  %fld.gep11 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %multmp = mul i64 %fld.load12, 8
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 24)
  %cap.neg = icmp slt i64 %multmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %multmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len14

a.create:                                         ; preds = %choice.then
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep7, align 8
  %a.data.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf6, ptr %a.data.gep8, align 8
  %a.cap.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep9, align 8
  store ptr %a.create4, ptr %"var.res'", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len14:                                      ; preds = %abort.dead, %choice.exit
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.pfds, align 8
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.new17, ptr %var.idxs, align 8
  store i64 0, ptr %"var.nfds'", align 8
  %var.load23 = load ptr, ptr %var.p, align 8
  %fld.gep24 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load23, i32 0, i32 3
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 0
  %arr.cycle.len26 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 1
  %arr.cycle.data27 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.63, align 8
  br label %loop.header.63

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len14

loop.header.63:                                   ; preds = %loop.latch.63, %b.buf.len14
  %counter.load = load i64, ptr %loop.idx.63, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len26
  br i1 %loop.cond, label %loop.body.63, label %loop.exit.nat.63

loop.body.63:                                     ; preds = %loop.header.63
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.63, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data27, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load28 = load ptr, ptr %var.e, align 8
  %fld.gep29 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load28, i32 0, i32 0
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %cmptmp = icmp sge i64 %fld.load30, 0
  br i1 %cmptmp, label %choice.then31, label %choice.exit32

loop.exit.nat.63:                                 ; preds = %loop.header.63
  br label %loop.exit.63

loop.latch.63:                                    ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.63, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.63, align 8
  br label %loop.header.63

loop.exit.63:                                     ; preds = %loop.exit.nat.63
  %var.load140 = load ptr, ptr %var.pfds, align 8
  %b.ptr141 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load140, i32 0, i32 1
  %b.ptr142 = load ptr, ptr %b.ptr141, align 8
  %2 = icmp eq ptr %b.ptr142, null
  br i1 %2, label %b.detached143, label %b.writable144

choice.then31:                                    ; preds = %loop.body.63
  %var.load33 = load ptr, ptr %var.e, align 8
  %fld.gep34 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load33, i32 0, i32 1
  %fld.load35 = load i64, ptr %fld.gep34, align 8
  store i64 %fld.load35, ptr %var.emask, align 8
  %var.load36 = load i64, ptr %var.emask, align 8
  %var.load37 = load i64, ptr @"var.event::READ", align 8
  %bandtmp = and i64 %var.load36, %var.load37
  %cmptmp38 = icmp ne i64 %bandtmp, 0
  br i1 %cmptmp38, label %choice.then39, label %choice.else

choice.exit32:                                    ; preds = %a.store, %loop.body.63
  br label %loop.latch.63

choice.then39:                                    ; preds = %choice.then31
  br label %choice.exit40

choice.else:                                      ; preds = %choice.then31
  br label %choice.exit40

choice.exit40:                                    ; preds = %choice.else, %choice.then39
  %choice.res = phi i64 [ 1, %choice.then39 ], [ 0, %choice.else ]
  %var.load41 = load i64, ptr %var.emask, align 8
  %var.load42 = load i64, ptr @"var.event::WRITE", align 8
  %bandtmp43 = and i64 %var.load41, %var.load42
  %cmptmp44 = icmp ne i64 %bandtmp43, 0
  br i1 %cmptmp44, label %choice.then45, label %choice.else46

choice.then45:                                    ; preds = %choice.exit40
  br label %choice.exit47

choice.else46:                                    ; preds = %choice.exit40
  br label %choice.exit47

choice.exit47:                                    ; preds = %choice.else46, %choice.then45
  %choice.res48 = phi i64 [ 4, %choice.then45 ], [ 0, %choice.else46 ]
  %bortmp = or i64 %choice.res, %choice.res48
  %var.load49 = load i64, ptr %var.emask, align 8
  %var.load50 = load i64, ptr @"var.event::PRI", align 8
  %bandtmp51 = and i64 %var.load49, %var.load50
  %cmptmp52 = icmp ne i64 %bandtmp51, 0
  br i1 %cmptmp52, label %choice.then53, label %choice.else54

choice.then53:                                    ; preds = %choice.exit47
  br label %choice.exit55

choice.else54:                                    ; preds = %choice.exit47
  br label %choice.exit55

choice.exit55:                                    ; preds = %choice.else54, %choice.then53
  %choice.res56 = phi i64 [ 2, %choice.then53 ], [ 0, %choice.else54 ]
  %bortmp57 = or i64 %bortmp, %choice.res56
  store i64 %bortmp57, ptr %var.pmask, align 8
  %var.load58 = load i64, ptr %"var.nfds'", align 8
  store i64 %var.load58, ptr %var.k, align 8
  %var.load59 = load ptr, ptr %var.pfds, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load59, i32 0, i32 1
  %b.ptr60 = load ptr, ptr %b.ptr, align 8
  %3 = icmp eq ptr %b.ptr60, null
  br i1 %3, label %b.detached, label %b.writable

b.detached:                                       ; preds = %choice.exit55
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %choice.exit55
  %var.load62 = load i64, ptr %var.k, align 8
  %multmp63 = mul i64 %var.load62, 8
  %ptr.int.l = ptrtoint ptr %b.ptr60 to i64
  %addtmp = add i64 %ptr.int.l, %multmp63
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

abort.dead61:                                     ; No predecessors!
  unreachable

addr.null:                                        ; preds = %b.writable
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %b.writable
  %var.load65 = load ptr, ptr %var.e, align 8
  %fld.gep66 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load65, i32 0, i32 0
  %fld.load67 = load i64, ptr %fld.gep66, align 8
  %coerce.trunc = trunc i64 %fld.load67 to i32
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  store i32 %coerce.trunc, ptr %raw.clean.ptr, align 4
  %var.load68 = load ptr, ptr %var.pfds, align 8
  %b.ptr69 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load68, i32 0, i32 1
  %b.ptr70 = load ptr, ptr %b.ptr69, align 8
  %4 = icmp eq ptr %b.ptr70, null
  br i1 %4, label %b.detached71, label %b.writable72

abort.dead64:                                     ; No predecessors!
  unreachable

b.detached71:                                     ; preds = %addr.present
  call void @dva_abort_detached_builder()
  unreachable

b.writable72:                                     ; preds = %addr.present
  %var.load74 = load i64, ptr %var.k, align 8
  %multmp75 = mul i64 %var.load74, 8
  %ptr.int.l76 = ptrtoint ptr %b.ptr70 to i64
  %addtmp77 = add i64 %ptr.int.l76, %multmp75
  %ptr.res78 = inttoptr i64 %addtmp77 to ptr
  %addr.is.null81 = icmp eq ptr %ptr.res78, null
  br i1 %addr.is.null81, label %addr.null79, label %addr.present80

abort.dead73:                                     ; No predecessors!
  unreachable

addr.null79:                                      ; preds = %b.writable72
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present80:                                   ; preds = %b.writable72
  %ptr.int.l83 = ptrtoint ptr %ptr.res78 to i64
  %addtmp84 = add i64 %ptr.int.l83, 4
  %ptr.res85 = inttoptr i64 %addtmp84 to ptr
  %addr.is.null88 = icmp eq ptr %ptr.res85, null
  br i1 %addr.is.null88, label %addr.null86, label %addr.present87

abort.dead82:                                     ; No predecessors!
  unreachable

addr.null86:                                      ; preds = %addr.present80
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present87:                                   ; preds = %addr.present80
  %var.load90 = load i64, ptr %var.pmask, align 8
  %coerce.trunc91 = trunc i64 %var.load90 to i16
  %raw.int92 = ptrtoint ptr %ptr.res85 to i64
  %raw.clean.int93 = and i64 %raw.int92, 281474976710655
  %raw.clean.ptr94 = inttoptr i64 %raw.clean.int93 to ptr
  store i16 %coerce.trunc91, ptr %raw.clean.ptr94, align 2
  %var.load95 = load ptr, ptr %var.pfds, align 8
  %b.ptr96 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load95, i32 0, i32 1
  %b.ptr97 = load ptr, ptr %b.ptr96, align 8
  %5 = icmp eq ptr %b.ptr97, null
  br i1 %5, label %b.detached98, label %b.writable99

abort.dead89:                                     ; No predecessors!
  unreachable

b.detached98:                                     ; preds = %addr.present87
  call void @dva_abort_detached_builder()
  unreachable

b.writable99:                                     ; preds = %addr.present87
  %var.load101 = load i64, ptr %var.k, align 8
  %multmp102 = mul i64 %var.load101, 8
  %ptr.int.l103 = ptrtoint ptr %b.ptr97 to i64
  %addtmp104 = add i64 %ptr.int.l103, %multmp102
  %ptr.res105 = inttoptr i64 %addtmp104 to ptr
  %addr.is.null108 = icmp eq ptr %ptr.res105, null
  br i1 %addr.is.null108, label %addr.null106, label %addr.present107

abort.dead100:                                    ; No predecessors!
  unreachable

addr.null106:                                     ; preds = %b.writable99
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present107:                                  ; preds = %b.writable99
  %ptr.int.l110 = ptrtoint ptr %ptr.res105 to i64
  %addtmp111 = add i64 %ptr.int.l110, 6
  %ptr.res112 = inttoptr i64 %addtmp111 to ptr
  %addr.is.null115 = icmp eq ptr %ptr.res112, null
  br i1 %addr.is.null115, label %addr.null113, label %addr.present114

abort.dead109:                                    ; No predecessors!
  unreachable

addr.null113:                                     ; preds = %addr.present107
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present114:                                  ; preds = %addr.present107
  %raw.int117 = ptrtoint ptr %ptr.res112 to i64
  %raw.clean.int118 = and i64 %raw.int117, 281474976710655
  %raw.clean.ptr119 = inttoptr i64 %raw.clean.int118 to ptr
  store i16 0, ptr %raw.clean.ptr119, align 2
  %var.load120 = load i64, ptr %var.i, align 8
  %a.load121 = load ptr, ptr %var.idxs, align 8
  %a.null122 = icmp eq ptr %a.load121, null
  br i1 %a.null122, label %a.create123, label %a.after124

abort.dead116:                                    ; No predecessors!
  unreachable

a.create123:                                      ; preds = %addr.present114
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create126 = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 24)
  %arena.cur127 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf128 = call ptr @dva_arena_alloc(ptr %arena.cur127, i64 128)
  %a.len.gep129 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 0
  store i64 0, ptr %a.len.gep129, align 8
  %a.data.gep130 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 1
  store ptr %a.buf128, ptr %a.data.gep130, align 8
  %a.cap.gep131 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create126, i32 0, i32 2
  store i64 16, ptr %a.cap.gep131, align 8
  store ptr %a.create126, ptr %var.idxs, align 8
  br label %a.after124

a.after124:                                       ; preds = %a.create123, %addr.present114
  %a.load2132 = load ptr, ptr %var.idxs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after124
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 0
  %a.len133 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 2
  %a.cap134 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len133, %a.cap134
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2132)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 1
  %a.cur.data135 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 0
  %a.cur.len136 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data135, i64 %a.cur.len136
  store i64 %var.load120, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len136, 1
  %b.len.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2132, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep137, align 8
  %var.load138 = load i64, ptr %"var.nfds'", align 8
  %addtmp139 = add i64 %var.load138, 1
  store i64 %addtmp139, ptr %"var.nfds'", align 8
  br label %choice.exit32

b.detached143:                                    ; preds = %loop.exit.63
  call void @dva_abort_detached_builder()
  unreachable

b.writable144:                                    ; preds = %loop.exit.63
  %addr.ffi.int = ptrtoint ptr %b.ptr142 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load146 = load i64, ptr %"var.nfds'", align 8
  %var.load147 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @poll(ptr %addr.ffi.clean, i64 %var.load146, i64 %var.load147)
  store i64 %call.res, ptr %var.n, align 8
  %var.load148 = load i64, ptr %var.n, align 8
  %cmptmp149 = icmp sle i64 %var.load148, 0
  br i1 %cmptmp149, label %choice.then150, label %choice.exit151

abort.dead145:                                    ; No predecessors!
  unreachable

choice.then150:                                   ; preds = %b.writable144
  %var.load152 = load ptr, ptr %"var.res'", align 8
  %a.load153 = load ptr, ptr %"var.res'", align 8
  %a.null154 = icmp eq ptr %a.load153, null
  br i1 %a.null154, label %a.create155, label %a.after156

choice.exit151:                                   ; preds = %ret.dead165, %b.writable144
  %var.load166 = load i64, ptr %"var.nfds'", align 8
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

a.create155:                                      ; preds = %choice.then150
  %arena.cur157 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create158 = call ptr @dva_arena_alloc(ptr %arena.cur157, i64 24)
  %arena.cur159 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf160 = call ptr @dva_arena_alloc(ptr %arena.cur159, i64 128)
  %a.len.gep161 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 0
  store i64 0, ptr %a.len.gep161, align 8
  %a.data.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 1
  store ptr %a.buf160, ptr %a.data.gep162, align 8
  %a.cap.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create158, i32 0, i32 2
  store i64 16, ptr %a.cap.gep163, align 8
  store ptr %a.create158, ptr %"var.res'", align 8
  br label %a.after156

a.after156:                                       ; preds = %a.create155, %choice.then150
  %a.load2164 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2164

ret.dead165:                                      ; No predecessors!
  br label %choice.exit151

loop.header.64:                                   ; preds = %loop.latch.64, %choice.exit151
  %counter.load167 = load i64, ptr %loop.idx.64, align 8
  %loop.cond168 = icmp slt i64 %counter.load167, %var.load166
  br i1 %loop.cond168, label %loop.body.64, label %loop.exit.nat.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i169 = sub i64 %counter.load167, 0
  store i64 1, ptr %loop.step.64, align 8
  store i64 %counter.load167, ptr %var._170, align 8
  store i64 %counter.load167, ptr %var.k171, align 8
  store i64 %loop.rel.i169, ptr %var._i172, align 8
  %var.load173 = load ptr, ptr %var.pfds, align 8
  %b.ptr174 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load173, i32 0, i32 1
  %b.ptr175 = load ptr, ptr %b.ptr174, align 8
  %6 = icmp eq ptr %b.ptr175, null
  br i1 %6, label %b.detached176, label %b.writable177

loop.exit.nat.64:                                 ; preds = %loop.header.64
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %choice.exit202
  %step.val401 = load i64, ptr %loop.step.64, align 8
  %loop.next402 = add i64 %counter.load167, %step.val401
  store i64 %loop.next402, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %loop.exit.nat.64
  %var.load403 = load ptr, ptr %"var.res'", align 8
  %a.load404 = load ptr, ptr %"var.res'", align 8
  %a.null405 = icmp eq ptr %a.load404, null
  br i1 %a.null405, label %a.create406, label %a.after407

b.detached176:                                    ; preds = %loop.body.64
  call void @dva_abort_detached_builder()
  unreachable

b.writable177:                                    ; preds = %loop.body.64
  %var.load179 = load i64, ptr %var.k171, align 8
  %multmp180 = mul i64 %var.load179, 8
  %ptr.int.l181 = ptrtoint ptr %b.ptr175 to i64
  %addtmp182 = add i64 %ptr.int.l181, %multmp180
  %ptr.res183 = inttoptr i64 %addtmp182 to ptr
  %addr.is.null186 = icmp eq ptr %ptr.res183, null
  br i1 %addr.is.null186, label %addr.null184, label %addr.present185

abort.dead178:                                    ; No predecessors!
  unreachable

addr.null184:                                     ; preds = %b.writable177
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present185:                                  ; preds = %b.writable177
  %ptr.int.l188 = ptrtoint ptr %ptr.res183 to i64
  %addtmp189 = add i64 %ptr.int.l188, 6
  %ptr.res190 = inttoptr i64 %addtmp189 to ptr
  %addr.is.null193 = icmp eq ptr %ptr.res190, null
  br i1 %addr.is.null193, label %addr.null191, label %addr.present192

abort.dead187:                                    ; No predecessors!
  unreachable

addr.null191:                                     ; preds = %addr.present185
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present192:                                  ; preds = %addr.present185
  %raw.int195 = ptrtoint ptr %ptr.res190 to i64
  %raw.clean.int196 = and i64 %raw.int195, 281474976710655
  %raw.clean.ptr197 = inttoptr i64 %raw.clean.int196 to ptr
  %raw.load = load volatile i16, ptr %raw.clean.ptr197, align 2
  %coerce.sext = sext i16 %raw.load to i64
  %bandtmp198 = and i64 %coerce.sext, 65535
  store i64 %bandtmp198, ptr %var.rev, align 8
  %var.load199 = load i64, ptr %var.rev, align 8
  %cmptmp200 = icmp ne i64 %var.load199, 0
  br i1 %cmptmp200, label %choice.then201, label %choice.exit202

abort.dead194:                                    ; No predecessors!
  unreachable

choice.then201:                                   ; preds = %addr.present192
  %var.load203 = load ptr, ptr %var.idxs, align 8
  %a.load204 = load ptr, ptr %var.idxs, align 8
  %a.null205 = icmp eq ptr %a.load204, null
  br i1 %a.null205, label %a.create206, label %a.after207

choice.exit202:                                   ; preds = %a.store388, %addr.present192
  br label %loop.latch.64

a.create206:                                      ; preds = %choice.then201
  %arena.cur208 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create209 = call ptr @dva_arena_alloc(ptr %arena.cur208, i64 24)
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 128)
  %a.len.gep212 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create209, i32 0, i32 0
  store i64 0, ptr %a.len.gep212, align 8
  %a.data.gep213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create209, i32 0, i32 1
  store ptr %a.buf211, ptr %a.data.gep213, align 8
  %a.cap.gep214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create209, i32 0, i32 2
  store i64 16, ptr %a.cap.gep214, align 8
  store ptr %a.create209, ptr %var.idxs, align 8
  br label %a.after207

a.after207:                                       ; preds = %a.create206, %choice.then201
  %a.load2215 = load ptr, ptr %var.idxs, align 8
  %var.load216 = load i64, ptr %var.k171, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2215, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after207
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2215, i32 0, i32 0
  %a.rd.len217 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load216, 0
  %a.rd.lt = icmp slt i64 %var.load216, %a.rd.len217
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2215, i32 0, i32 1
  %a.rd.data218 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data218, i64 %var.load216
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after207
  %arena.cur219 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 140, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 30, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur220 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 56)
  %err.code.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 0
  store i64 4011, ptr %err.code.gep222, align 8
  %err.msg.gep223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep223, align 8
  %err.file.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep224, align 8
  %err.line.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 3
  store i64 140, ptr %err.line.gep225, align 8
  %err.col.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 4
  store i64 30, ptr %err.col.gep226, align 8
  %err.ctx.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc221, i32 0, i32 5
  %err.ctx0.gep228 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep227, i32 0, i32 0
  store i64 %var.load216, ptr %err.ctx0.gep228, align 8
  %err.ctx1.gep229 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep227, i32 0, i32 1
  store i64 %a.rd.len217, ptr %err.ctx1.gep229, align 8
  %err.p2i230 = ptrtoint ptr %err.alloc221 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i230, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.65, label %unwrap.abort.65

unwrap.pos.65:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.slot, align 8
  %var.load242 = load ptr, ptr %var.p, align 8
  %fld.gep243 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load242, i32 0, i32 3
  %fld.load244 = load ptr, ptr %fld.gep243, align 8
  %var.load245 = load i64, ptr %var.slot, align 8
  %a.rd.nonnull246 = icmp ne ptr %fld.load244, null
  br i1 %a.rd.nonnull246, label %a.rd.check247, label %a.rd.err.null249

unwrap.abort.65:                                  ; preds = %a.rd.done
  %7 = call i64 @write(i32 2, ptr @expect.reason.66, i64 21)
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep231, align 8
  %err.msg.gep232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep232, align 8
  %err.file.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep233, align 8
  %err.line.gep234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep234, align 8
  %err.col.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep235, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len236 = load i64, ptr %err.msg.len, align 8
  %err.msg.len237 = and i64 %err.msg.len236, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len237 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data238 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len239 = load i64, ptr %err.file.len, align 8
  %err.file.len240 = and i64 %err.file.len239, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len240 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data241 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.65
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.65
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data238, i32 %err.file.len32, ptr %err.file.data241, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.rd.check247:                                    ; preds = %unwrap.pos.65
  %a.rd.len252 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load244, i32 0, i32 0
  %a.rd.len253 = load i64, ptr %a.rd.len252, align 8
  %a.rd.ge0254 = icmp sge i64 %var.load245, 0
  %a.rd.lt255 = icmp slt i64 %var.load245, %a.rd.len253
  %a.rd.bounds256 = and i1 %a.rd.ge0254, %a.rd.lt255
  br i1 %a.rd.bounds256, label %a.rd.ok248, label %a.rd.err.oob250

a.rd.ok248:                                       ; preds = %a.rd.check247
  %a.rd.data257 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load244, i32 0, i32 1
  %a.rd.data258 = load ptr, ptr %a.rd.data257, align 8
  %a.rd.elem.gep259 = getelementptr i64, ptr %a.rd.data258, i64 %var.load245
  %a.rd.elem260 = load i64, ptr %a.rd.elem.gep259, align 8
  br label %a.rd.done251

a.rd.err.null249:                                 ; preds = %unwrap.pos.65
  %arena.cur261 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 56)
  %err.code.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 0
  store i64 4011, ptr %err.code.gep263, align 8
  %err.msg.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep264, align 8
  %err.file.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep265, align 8
  %err.line.gep266 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 3
  store i64 0, ptr %err.line.gep266, align 8
  %err.col.gep267 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 4
  store i64 0, ptr %err.col.gep267, align 8
  %err.ctx.gep268 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc262, i32 0, i32 5
  %err.ctx0.gep269 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep268, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep269, align 8
  %err.ctx1.gep270 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep268, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep270, align 8
  %err.p2i271 = ptrtoint ptr %err.alloc262 to i64
  br label %a.rd.done251

a.rd.err.oob250:                                  ; preds = %a.rd.check247
  %arena.cur272 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc273 = call ptr @dva_arena_alloc(ptr %arena.cur272, i64 56)
  %err.code.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 0
  store i64 4011, ptr %err.code.gep274, align 8
  %err.msg.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep275, align 8
  %err.file.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep276, align 8
  %err.line.gep277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 3
  store i64 0, ptr %err.line.gep277, align 8
  %err.col.gep278 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 4
  store i64 0, ptr %err.col.gep278, align 8
  %err.ctx.gep279 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc273, i32 0, i32 5
  %err.ctx0.gep280 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep279, i32 0, i32 0
  store i64 %var.load245, ptr %err.ctx0.gep280, align 8
  %err.ctx1.gep281 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep279, i32 0, i32 1
  store i64 %a.rd.len253, ptr %err.ctx1.gep281, align 8
  %err.p2i282 = ptrtoint ptr %err.alloc273 to i64
  br label %a.rd.done251

a.rd.done251:                                     ; preds = %a.rd.err.oob250, %a.rd.err.null249, %a.rd.ok248
  %a.rd.tag283 = phi i1 [ true, %a.rd.ok248 ], [ false, %a.rd.err.null249 ], [ false, %a.rd.err.oob250 ]
  %a.rd.pay284 = phi i64 [ %a.rd.elem260, %a.rd.ok248 ], [ %err.p2i271, %a.rd.err.null249 ], [ %err.p2i282, %a.rd.err.oob250 ]
  %ram.tag285 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag283, 0
  %ram.pay286 = insertvalue { i1, i64 } %ram.tag285, i64 %a.rd.pay284, 1
  %unwrap.is_pos287 = extractvalue { i1, i64 } %ram.pay286, 0
  br i1 %unwrap.is_pos287, label %unwrap.pos.67, label %unwrap.abort.67

unwrap.pos.67:                                    ; preds = %a.rd.done251
  %unwrap.pay.pos319 = extractvalue { i1, i64 } %ram.pay286, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos319 to ptr
  store ptr %pay.ptr, ptr %var.ev, align 8
  %var.load320 = load i64, ptr %var.rev, align 8
  %bandtmp321 = and i64 %var.load320, 1
  %cmptmp322 = icmp ne i64 %bandtmp321, 0
  br i1 %cmptmp322, label %choice.then323, label %choice.else324

unwrap.abort.67:                                  ; preds = %a.rd.done251
  %8 = call i64 @write(i32 2, ptr @expect.reason.68, i64 24)
  %unwrap.pay.abort288 = extractvalue { i1, i64 } %ram.pay286, 1
  %err.ptr289 = inttoptr i64 %unwrap.pay.abort288 to ptr
  %err.code.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr289, i32 0, i32 0
  %err.code291 = load i64, ptr %err.code.gep290, align 8
  %err.msg.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr289, i32 0, i32 1
  %err.msg.struct293 = load ptr, ptr %err.msg.gep292, align 8
  %err.file.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr289, i32 0, i32 2
  %err.file.struct295 = load ptr, ptr %err.file.gep294, align 8
  %err.line.gep296 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr289, i32 0, i32 3
  %err.line297 = load i64, ptr %err.line.gep296, align 8
  %err.col.gep298 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr289, i32 0, i32 4
  %err.col299 = load i64, ptr %err.col.gep298, align 8
  %err.msg.len300 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct293, i32 0, i32 0
  %err.msg.len301 = load i64, ptr %err.msg.len300, align 8
  %err.msg.len302 = and i64 %err.msg.len301, 281474976710655
  %err.msg.len32303 = trunc i64 %err.msg.len302 to i32
  %err.msg.data304 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct293, i32 0, i32 1
  %err.msg.data305 = load ptr, ptr %err.msg.data304, align 8
  %err.file.len306 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct295, i32 0, i32 0
  %err.file.len307 = load i64, ptr %err.file.len306, align 8
  %err.file.len308 = and i64 %err.file.len307, 281474976710655
  %err.file.len32309 = trunc i64 %err.file.len308 to i32
  %err.file.data310 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct295, i32 0, i32 1
  %err.file.data311 = load ptr, ptr %err.file.data310, align 8
  %err.thread.rec312 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread313 = icmp ne ptr %err.thread.rec312, null
  br i1 %err.is.thread313, label %err.thread314, label %err.normal315

err.thread314:                                    ; preds = %unwrap.abort.67
  %err.haserr.gep316 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec312, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep316, align 8
  %err.err.gep317 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec312, i32 0, i32 7
  store ptr %err.ptr289, ptr %err.err.gep317, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal315:                                    ; preds = %unwrap.abort.67
  %err.panic.printf318 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code291, i32 %err.msg.len32303, ptr %err.msg.data305, i32 %err.file.len32309, ptr %err.file.data311, i64 %err.line297, i64 %err.col299)
  call void @exit(i32 1)
  unreachable

choice.then323:                                   ; preds = %unwrap.pos.67
  %var.load326 = load i64, ptr @"var.event::READ", align 8
  br label %choice.exit325

choice.else324:                                   ; preds = %unwrap.pos.67
  br label %choice.exit325

choice.exit325:                                   ; preds = %choice.else324, %choice.then323
  %choice.res327 = phi i64 [ %var.load326, %choice.then323 ], [ 0, %choice.else324 ]
  %var.load328 = load i64, ptr %var.rev, align 8
  %bandtmp329 = and i64 %var.load328, 4
  %cmptmp330 = icmp ne i64 %bandtmp329, 0
  br i1 %cmptmp330, label %choice.then331, label %choice.else332

choice.then331:                                   ; preds = %choice.exit325
  %var.load334 = load i64, ptr @"var.event::WRITE", align 8
  br label %choice.exit333

choice.else332:                                   ; preds = %choice.exit325
  br label %choice.exit333

choice.exit333:                                   ; preds = %choice.else332, %choice.then331
  %choice.res335 = phi i64 [ %var.load334, %choice.then331 ], [ 0, %choice.else332 ]
  %bortmp336 = or i64 %choice.res327, %choice.res335
  %var.load337 = load i64, ptr %var.rev, align 8
  %bandtmp338 = and i64 %var.load337, 2
  %cmptmp339 = icmp ne i64 %bandtmp338, 0
  br i1 %cmptmp339, label %choice.then340, label %choice.else341

choice.then340:                                   ; preds = %choice.exit333
  %var.load343 = load i64, ptr @"var.event::PRI", align 8
  br label %choice.exit342

choice.else341:                                   ; preds = %choice.exit333
  br label %choice.exit342

choice.exit342:                                   ; preds = %choice.else341, %choice.then340
  %choice.res344 = phi i64 [ %var.load343, %choice.then340 ], [ 0, %choice.else341 ]
  %bortmp345 = or i64 %bortmp336, %choice.res344
  %var.load346 = load i64, ptr %var.rev, align 8
  %bandtmp347 = and i64 %var.load346, 8
  %cmptmp348 = icmp ne i64 %bandtmp347, 0
  br i1 %cmptmp348, label %choice.then349, label %choice.else350

choice.then349:                                   ; preds = %choice.exit342
  %var.load352 = load i64, ptr @"var.event::ERR", align 8
  br label %choice.exit351

choice.else350:                                   ; preds = %choice.exit342
  br label %choice.exit351

choice.exit351:                                   ; preds = %choice.else350, %choice.then349
  %choice.res353 = phi i64 [ %var.load352, %choice.then349 ], [ 0, %choice.else350 ]
  %bortmp354 = or i64 %bortmp345, %choice.res353
  %var.load355 = load i64, ptr %var.rev, align 8
  %bandtmp356 = and i64 %var.load355, 16
  %cmptmp357 = icmp ne i64 %bandtmp356, 0
  br i1 %cmptmp357, label %choice.then358, label %choice.else359

choice.then358:                                   ; preds = %choice.exit351
  %var.load361 = load i64, ptr @"var.event::HUP", align 8
  br label %choice.exit360

choice.else359:                                   ; preds = %choice.exit351
  br label %choice.exit360

choice.exit360:                                   ; preds = %choice.else359, %choice.then358
  %choice.res362 = phi i64 [ %var.load361, %choice.then358 ], [ 0, %choice.else359 ]
  %bortmp363 = or i64 %bortmp354, %choice.res362
  store i64 %bortmp363, ptr %var.ev_mask, align 8
  %var.load364 = load ptr, ptr %var.ev, align 8
  %fld.gep365 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load364, i32 0, i32 0
  %fld.load366 = load i64, ptr %fld.gep365, align 8
  %var.load367 = load i64, ptr %var.ev_mask, align 8
  %var.load368 = load ptr, ptr %var.ev, align 8
  %fld.gep369 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load368, i32 0, i32 2
  %fld.load370 = load i64, ptr %fld.gep369, align 8
  %arena.cur371 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur371, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %fld.load366, ptr %rec.fld, align 8
  %rec.fld372 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load367, ptr %rec.fld372, align 8
  %rec.fld373 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load370, ptr %rec.fld373, align 8
  %a.load374 = load ptr, ptr %"var.res'", align 8
  %a.null375 = icmp eq ptr %a.load374, null
  br i1 %a.null375, label %a.create376, label %a.after377

a.create376:                                      ; preds = %choice.exit360
  %arena.cur378 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create379 = call ptr @dva_arena_alloc(ptr %arena.cur378, i64 24)
  %arena.cur380 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf381 = call ptr @dva_arena_alloc(ptr %arena.cur380, i64 128)
  %a.len.gep382 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create379, i32 0, i32 0
  store i64 0, ptr %a.len.gep382, align 8
  %a.data.gep383 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create379, i32 0, i32 1
  store ptr %a.buf381, ptr %a.data.gep383, align 8
  %a.cap.gep384 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create379, i32 0, i32 2
  store i64 16, ptr %a.cap.gep384, align 8
  store ptr %a.create379, ptr %"var.res'", align 8
  br label %a.after377

a.after377:                                       ; preds = %a.create376, %choice.exit360
  %a.load2385 = load ptr, ptr %"var.res'", align 8
  br label %a.check386

a.check386:                                       ; preds = %a.after377
  %a.len389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2385, i32 0, i32 0
  %a.len390 = load i64, ptr %a.len389, align 8
  %a.cap391 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2385, i32 0, i32 2
  %a.cap392 = load i64, ptr %a.cap391, align 8
  %a.needs.grow393 = icmp eq i64 %a.len390, %a.cap392
  br i1 %a.needs.grow393, label %a.grow387, label %a.store388

a.grow387:                                        ; preds = %a.check386
  call void @dva_array_grow(ptr %a.load2385)
  br label %a.store388

a.store388:                                       ; preds = %a.grow387, %a.check386
  %a.cur.data394 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2385, i32 0, i32 1
  %a.cur.data395 = load ptr, ptr %a.cur.data394, align 8
  %a.cur.len396 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2385, i32 0, i32 0
  %a.cur.len397 = load i64, ptr %a.cur.len396, align 8
  %a.elem.gep398 = getelementptr i64, ptr %a.cur.data395, i64 %a.cur.len397
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep398, align 8
  %a.next.len399 = add i64 %a.cur.len397, 1
  %b.len.gep400 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2385, i32 0, i32 0
  store i64 %a.next.len399, ptr %b.len.gep400, align 8
  br label %choice.exit202

a.create406:                                      ; preds = %loop.exit.64
  %arena.cur408 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create409 = call ptr @dva_arena_alloc(ptr %arena.cur408, i64 24)
  %arena.cur410 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf411 = call ptr @dva_arena_alloc(ptr %arena.cur410, i64 128)
  %a.len.gep412 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create409, i32 0, i32 0
  store i64 0, ptr %a.len.gep412, align 8
  %a.data.gep413 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create409, i32 0, i32 1
  store ptr %a.buf411, ptr %a.data.gep413, align 8
  %a.cap.gep414 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create409, i32 0, i32 2
  store i64 16, ptr %a.cap.gep414, align 8
  store ptr %a.create409, ptr %"var.res'", align 8
  br label %a.after407

a.after407:                                       ; preds = %a.create406, %loop.exit.64
  %a.load2415 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2415
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_null_addr_cast() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @null_addr_cast, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define void @"event::close"(ptr %0) #3 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %nottmp = xor i1 %fld.load, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %fld.gep2 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load1, i32 0, i32 1
  store i1 true, ptr %fld.gep2, align 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  ret void
}

define i1 @"event::is_read"(ptr %0) #3 {
entry:
  %var.ev = alloca ptr, align 8
  store ptr %0, ptr %var.ev, align 8
  %var.load = load ptr, ptr %var.ev, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr @"var.event::READ", align 8
  %bandtmp = and i64 %fld.load, %var.load1
  %cmptmp = icmp ne i64 %bandtmp, 0
  ret i1 %cmptmp
}

define i1 @"event::is_write"(ptr %0) #3 {
entry:
  %var.ev = alloca ptr, align 8
  store ptr %0, ptr %var.ev, align 8
  %var.load = load ptr, ptr %var.ev, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr @"var.event::WRITE", align 8
  %bandtmp = and i64 %fld.load, %var.load1
  %cmptmp = icmp ne i64 %bandtmp, 0
  ret i1 %cmptmp
}

define i1 @"event::is_err"(ptr %0) #3 {
entry:
  %var.ev = alloca ptr, align 8
  store ptr %0, ptr %var.ev, align 8
  %var.load = load ptr, ptr %var.ev, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr @"var.event::ERR", align 8
  %bandtmp = and i64 %fld.load, %var.load1
  %cmptmp = icmp ne i64 %bandtmp, 0
  ret i1 %cmptmp
}

define i1 @"event::is_hup"(ptr %0) #3 {
entry:
  %var.ev = alloca ptr, align 8
  store ptr %0, ptr %var.ev, align 8
  %var.load = load ptr, ptr %var.ev, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %var.load1 = load i64, ptr @"var.event::HUP", align 8
  %var.load2 = load i64, ptr @"var.event::RDHUP", align 8
  %bortmp = or i64 %var.load1, %var.load2
  %bandtmp = and i64 %fld.load, %bortmp
  %cmptmp = icmp ne i64 %bandtmp, 0
  ret i1 %cmptmp
}

define i1 @"event::poll_in"(i64 %0, i64 %1) #3 {
entry:
  %var.timeout_ms = alloca i64, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store i64 %1, ptr %var.timeout_ms, align 8
  %var.load = load i64, ptr %var.fd, align 8
  %var.load1 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i1 @"sys::poll_in"(i64 %var.load, i64 %var.load1)
  ret i1 %call.res
}

declare i1 @"sys::poll_in"(i64, i64) #3

define i1 @"event::poll_out"(i64 %0, i64 %1) #3 {
entry:
  %var.timeout_ms = alloca i64, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store i64 %1, ptr %var.timeout_ms, align 8
  %var.load = load i64, ptr %var.fd, align 8
  %var.load1 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i1 @"sys::poll_out"(i64 %var.load, i64 %var.load1)
  ret i1 %call.res
}

declare i1 @"sys::poll_out"(i64, i64) #3

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
