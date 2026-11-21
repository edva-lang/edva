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
@dva_thread_rec = external thread_local global ptr
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
  %p.to.i64 = ptrtoint ptr %rec.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay
}

define i1 @"event::add"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
entry:
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.21 = alloca i64, align 8
  %loop.idx.21 = alloca i64, align 8
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
  br i1 %fld.load, label %or.20.then, label %or.20.else

or.20.then:                                       ; preds = %entry
  br label %or.20.exit

or.20.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.20.exit

or.20.exit:                                       ; preds = %or.20.else, %or.20.then
  %or.20.phi = phi i1 [ %fld.load, %or.20.then ], [ %cmptmp, %or.20.else ]
  br i1 %or.20.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.20.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.20.exit
  store i1 false, ptr %"var.dup'", align 1
  store i64 -1, ptr %"var.free_slot'", align 8
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %arr.cycle.len5 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.21:                                   ; preds = %loop.latch.21, %choice.exit
  %counter.load = load i64, ptr %loop.idx.21, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.21, align 8
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

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %choice.exit21
  %step.val = load i64, ptr %loop.step.21, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  %var.load23 = load i1, ptr %"var.dup'", align 1
  br i1 %var.load23, label %choice.then24, label %choice.exit25

choice.then12:                                    ; preds = %loop.body.21
  store i1 true, ptr %"var.dup'", align 1
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.then12, %loop.body.21
  %var.load14 = load ptr, ptr %var.e, align 8
  %fld.gep15 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load14, i32 0, i32 0
  %fld.load16 = load i64, ptr %fld.gep15, align 8
  %cmptmp17 = icmp slt i64 %fld.load16, 0
  br i1 %cmptmp17, label %and.22.then, label %and.22.else

and.22.then:                                      ; preds = %choice.exit13
  %var.load18 = load i64, ptr %"var.free_slot'", align 8
  %cmptmp19 = icmp slt i64 %var.load18, 0
  br label %and.22.exit

and.22.else:                                      ; preds = %choice.exit13
  br label %and.22.exit

and.22.exit:                                      ; preds = %and.22.else, %and.22.then
  %and.22.phi = phi i1 [ %cmptmp19, %and.22.then ], [ %cmptmp17, %and.22.else ]
  br i1 %and.22.phi, label %choice.then20, label %choice.exit21

choice.then20:                                    ; preds = %and.22.exit
  %var.load22 = load i64, ptr %var.i, align 8
  store i64 %var.load22, ptr %"var.free_slot'", align 8
  br label %choice.exit21

choice.exit21:                                    ; preds = %choice.then20, %and.22.exit
  br label %loop.latch.21

choice.then24:                                    ; preds = %loop.exit.21
  ret i1 false

choice.exit25:                                    ; preds = %ret.dead26, %loop.exit.21
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
  %loop.step.24 = alloca i64, align 8
  %loop.idx.24 = alloca i64, align 8
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
  br i1 %fld.load, label %or.23.then, label %or.23.else

or.23.then:                                       ; preds = %entry
  br label %or.23.exit

or.23.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.23.exit

or.23.exit:                                       ; preds = %or.23.else, %or.23.then
  %or.23.phi = phi i1 [ %fld.load, %or.23.then ], [ %cmptmp, %or.23.else ]
  br i1 %or.23.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.23.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.23.exit
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %arr.cycle.len5 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.24, align 8
  br label %loop.header.24

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.24:                                   ; preds = %loop.latch.24, %choice.exit
  %counter.load = load i64, ptr %loop.idx.24, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.24, label %loop.exit.nat.24

loop.body.24:                                     ; preds = %loop.header.24
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.24, align 8
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

loop.exit.nat.24:                                 ; preds = %loop.header.24
  br label %loop.exit.24

loop.latch.24:                                    ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.24, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.24, align 8
  br label %loop.header.24

loop.exit.24:                                     ; preds = %loop.exit.nat.24
  ret i1 false

choice.then12:                                    ; preds = %loop.body.24
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

choice.exit13:                                    ; preds = %ret.dead36, %loop.body.24
  br label %loop.latch.24

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
  %loop.step.26 = alloca i64, align 8
  %loop.idx.26 = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.25.then, label %or.25.else

or.25.then:                                       ; preds = %entry
  br label %or.25.exit

or.25.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.25.exit

or.25.exit:                                       ; preds = %or.25.else, %or.25.then
  %or.25.phi = phi i1 [ %fld.load, %or.25.then ], [ %cmptmp, %or.25.else ]
  br i1 %or.25.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.25.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.25.exit
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %arr.cycle.len5 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.26, align 8
  br label %loop.header.26

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.26:                                   ; preds = %loop.latch.26, %choice.exit
  %counter.load = load i64, ptr %loop.idx.26, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.26, label %loop.exit.nat.26

loop.body.26:                                     ; preds = %loop.header.26
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.26, align 8
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

loop.exit.nat.26:                                 ; preds = %loop.header.26
  br label %loop.exit.26

loop.latch.26:                                    ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.26, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.26, align 8
  br label %loop.header.26

loop.exit.26:                                     ; preds = %loop.exit.nat.26
  ret i1 false

choice.then12:                                    ; preds = %loop.body.26
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

choice.exit13:                                    ; preds = %ret.dead33, %loop.body.26
  br label %loop.latch.26

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
  %var._i155 = alloca i64, align 8
  %var.k154 = alloca i64, align 8
  %var._153 = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.pmask = alloca i64, align 8
  %var.emask = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %loop.step.28 = alloca i64, align 8
  %loop.idx.28 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.28, align 8
  br label %loop.header.28

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len14

loop.header.28:                                   ; preds = %loop.latch.28, %b.buf.len14
  %counter.load = load i64, ptr %loop.idx.28, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len26
  br i1 %loop.cond, label %loop.body.28, label %loop.exit.nat.28

loop.body.28:                                     ; preds = %loop.header.28
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.28, align 8
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

loop.exit.nat.28:                                 ; preds = %loop.header.28
  br label %loop.exit.28

loop.latch.28:                                    ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.28, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.28, align 8
  br label %loop.header.28

loop.exit.28:                                     ; preds = %loop.exit.nat.28
  %var.load123 = load ptr, ptr %var.pfds, align 8
  %b.ptr124 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 1
  %b.ptr125 = load ptr, ptr %b.ptr124, align 8
  %2 = icmp eq ptr %b.ptr125, null
  br i1 %2, label %b.detached126, label %b.writable127

choice.then31:                                    ; preds = %loop.body.28
  %var.load33 = load ptr, ptr %var.e, align 8
  %fld.gep34 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load33, i32 0, i32 1
  %fld.load35 = load i64, ptr %fld.gep34, align 8
  store i64 %fld.load35, ptr %var.emask, align 8
  %var.load36 = load i64, ptr %var.emask, align 8
  %var.load37 = load i64, ptr @"var.event::READ", align 8
  %bandtmp = and i64 %var.load36, %var.load37
  %cmptmp38 = icmp ne i64 %bandtmp, 0
  br i1 %cmptmp38, label %choice.then39, label %choice.else

choice.exit32:                                    ; preds = %a.store, %loop.body.28
  br label %loop.latch.28

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
  %var.load64 = load ptr, ptr %var.e, align 8
  %fld.gep65 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load64, i32 0, i32 0
  %fld.load66 = load i64, ptr %fld.gep65, align 8
  %coerce.trunc = trunc i64 %fld.load66 to i32
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  store i32 %coerce.trunc, ptr %raw.clean.ptr, align 4
  %var.load67 = load ptr, ptr %var.pfds, align 8
  %b.ptr68 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load67, i32 0, i32 1
  %b.ptr69 = load ptr, ptr %b.ptr68, align 8
  %4 = icmp eq ptr %b.ptr69, null
  br i1 %4, label %b.detached70, label %b.writable71

abort.dead61:                                     ; No predecessors!
  unreachable

b.detached70:                                     ; preds = %b.writable
  call void @dva_abort_detached_builder()
  unreachable

b.writable71:                                     ; preds = %b.writable
  %var.load73 = load i64, ptr %var.k, align 8
  %multmp74 = mul i64 %var.load73, 8
  %ptr.int.l75 = ptrtoint ptr %b.ptr69 to i64
  %addtmp76 = add i64 %ptr.int.l75, %multmp74
  %ptr.res77 = inttoptr i64 %addtmp76 to ptr
  %ptr.int.l78 = ptrtoint ptr %ptr.res77 to i64
  %addtmp79 = add i64 %ptr.int.l78, 4
  %ptr.res80 = inttoptr i64 %addtmp79 to ptr
  %var.load81 = load i64, ptr %var.pmask, align 8
  %coerce.trunc82 = trunc i64 %var.load81 to i16
  %raw.int83 = ptrtoint ptr %ptr.res80 to i64
  %raw.clean.int84 = and i64 %raw.int83, 281474976710655
  %raw.clean.ptr85 = inttoptr i64 %raw.clean.int84 to ptr
  store i16 %coerce.trunc82, ptr %raw.clean.ptr85, align 2
  %var.load86 = load ptr, ptr %var.pfds, align 8
  %b.ptr87 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load86, i32 0, i32 1
  %b.ptr88 = load ptr, ptr %b.ptr87, align 8
  %5 = icmp eq ptr %b.ptr88, null
  br i1 %5, label %b.detached89, label %b.writable90

abort.dead72:                                     ; No predecessors!
  unreachable

b.detached89:                                     ; preds = %b.writable71
  call void @dva_abort_detached_builder()
  unreachable

b.writable90:                                     ; preds = %b.writable71
  %var.load92 = load i64, ptr %var.k, align 8
  %multmp93 = mul i64 %var.load92, 8
  %ptr.int.l94 = ptrtoint ptr %b.ptr88 to i64
  %addtmp95 = add i64 %ptr.int.l94, %multmp93
  %ptr.res96 = inttoptr i64 %addtmp95 to ptr
  %ptr.int.l97 = ptrtoint ptr %ptr.res96 to i64
  %addtmp98 = add i64 %ptr.int.l97, 6
  %ptr.res99 = inttoptr i64 %addtmp98 to ptr
  %raw.int100 = ptrtoint ptr %ptr.res99 to i64
  %raw.clean.int101 = and i64 %raw.int100, 281474976710655
  %raw.clean.ptr102 = inttoptr i64 %raw.clean.int101 to ptr
  store i16 0, ptr %raw.clean.ptr102, align 2
  %var.load103 = load i64, ptr %var.i, align 8
  %a.load104 = load ptr, ptr %var.idxs, align 8
  %a.null105 = icmp eq ptr %a.load104, null
  br i1 %a.null105, label %a.create106, label %a.after107

abort.dead91:                                     ; No predecessors!
  unreachable

a.create106:                                      ; preds = %b.writable90
  %arena.cur108 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create109 = call ptr @dva_arena_alloc(ptr %arena.cur108, i64 24)
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 128)
  %a.len.gep112 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 0
  store i64 0, ptr %a.len.gep112, align 8
  %a.data.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 1
  store ptr %a.buf111, ptr %a.data.gep113, align 8
  %a.cap.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create109, i32 0, i32 2
  store i64 16, ptr %a.cap.gep114, align 8
  store ptr %a.create109, ptr %var.idxs, align 8
  br label %a.after107

a.after107:                                       ; preds = %a.create106, %b.writable90
  %a.load2115 = load ptr, ptr %var.idxs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after107
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 0
  %a.len116 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 2
  %a.cap117 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len116, %a.cap117
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2115)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 1
  %a.cur.data118 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 0
  %a.cur.len119 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data118, i64 %a.cur.len119
  store i64 %var.load103, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len119, 1
  %b.len.gep120 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2115, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep120, align 8
  %var.load121 = load i64, ptr %"var.nfds'", align 8
  %addtmp122 = add i64 %var.load121, 1
  store i64 %addtmp122, ptr %"var.nfds'", align 8
  br label %choice.exit32

b.detached126:                                    ; preds = %loop.exit.28
  call void @dva_abort_detached_builder()
  unreachable

b.writable127:                                    ; preds = %loop.exit.28
  %addr.ffi.int = ptrtoint ptr %b.ptr125 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load129 = load i64, ptr %"var.nfds'", align 8
  %var.load130 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @poll(ptr %addr.ffi.clean, i64 %var.load129, i64 %var.load130)
  store i64 %call.res, ptr %var.n, align 8
  %var.load131 = load i64, ptr %var.n, align 8
  %cmptmp132 = icmp sle i64 %var.load131, 0
  br i1 %cmptmp132, label %choice.then133, label %choice.exit134

abort.dead128:                                    ; No predecessors!
  unreachable

choice.then133:                                   ; preds = %b.writable127
  %var.load135 = load ptr, ptr %"var.res'", align 8
  %a.load136 = load ptr, ptr %"var.res'", align 8
  %a.null137 = icmp eq ptr %a.load136, null
  br i1 %a.null137, label %a.create138, label %a.after139

choice.exit134:                                   ; preds = %ret.dead148, %b.writable127
  %var.load149 = load i64, ptr %"var.nfds'", align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

a.create138:                                      ; preds = %choice.then133
  %arena.cur140 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 24)
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf143 = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 128)
  %a.len.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 0
  store i64 0, ptr %a.len.gep144, align 8
  %a.data.gep145 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 1
  store ptr %a.buf143, ptr %a.data.gep145, align 8
  %a.cap.gep146 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create141, i32 0, i32 2
  store i64 16, ptr %a.cap.gep146, align 8
  store ptr %a.create141, ptr %"var.res'", align 8
  br label %a.after139

a.after139:                                       ; preds = %a.create138, %choice.then133
  %a.load2147 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2147

ret.dead148:                                      ; No predecessors!
  br label %choice.exit134

loop.header.29:                                   ; preds = %loop.latch.29, %choice.exit134
  %counter.load150 = load i64, ptr %loop.idx.29, align 8
  %loop.cond151 = icmp slt i64 %counter.load150, %var.load149
  br i1 %loop.cond151, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i152 = sub i64 %counter.load150, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %counter.load150, ptr %var._153, align 8
  store i64 %counter.load150, ptr %var.k154, align 8
  store i64 %loop.rel.i152, ptr %var._i155, align 8
  %var.load156 = load ptr, ptr %var.pfds, align 8
  %b.ptr157 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 1
  %b.ptr158 = load ptr, ptr %b.ptr157, align 8
  %6 = icmp eq ptr %b.ptr158, null
  br i1 %6, label %b.detached159, label %b.writable160

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit177
  %step.val376 = load i64, ptr %loop.step.29, align 8
  %loop.next377 = add i64 %counter.load150, %step.val376
  store i64 %loop.next377, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  %var.load378 = load ptr, ptr %"var.res'", align 8
  %a.load379 = load ptr, ptr %"var.res'", align 8
  %a.null380 = icmp eq ptr %a.load379, null
  br i1 %a.null380, label %a.create381, label %a.after382

b.detached159:                                    ; preds = %loop.body.29
  call void @dva_abort_detached_builder()
  unreachable

b.writable160:                                    ; preds = %loop.body.29
  %var.load162 = load i64, ptr %var.k154, align 8
  %multmp163 = mul i64 %var.load162, 8
  %ptr.int.l164 = ptrtoint ptr %b.ptr158 to i64
  %addtmp165 = add i64 %ptr.int.l164, %multmp163
  %ptr.res166 = inttoptr i64 %addtmp165 to ptr
  %ptr.int.l167 = ptrtoint ptr %ptr.res166 to i64
  %addtmp168 = add i64 %ptr.int.l167, 6
  %ptr.res169 = inttoptr i64 %addtmp168 to ptr
  %raw.int170 = ptrtoint ptr %ptr.res169 to i64
  %raw.clean.int171 = and i64 %raw.int170, 281474976710655
  %raw.clean.ptr172 = inttoptr i64 %raw.clean.int171 to ptr
  %raw.load = load volatile i16, ptr %raw.clean.ptr172, align 2
  %coerce.sext = sext i16 %raw.load to i64
  %bandtmp173 = and i64 %coerce.sext, 65535
  store i64 %bandtmp173, ptr %var.rev, align 8
  %var.load174 = load i64, ptr %var.rev, align 8
  %cmptmp175 = icmp ne i64 %var.load174, 0
  br i1 %cmptmp175, label %choice.then176, label %choice.exit177

abort.dead161:                                    ; No predecessors!
  unreachable

choice.then176:                                   ; preds = %b.writable160
  %var.load178 = load ptr, ptr %var.idxs, align 8
  %a.load179 = load ptr, ptr %var.idxs, align 8
  %a.null180 = icmp eq ptr %a.load179, null
  br i1 %a.null180, label %a.create181, label %a.after182

choice.exit177:                                   ; preds = %a.store363, %b.writable160
  br label %loop.latch.29

a.create181:                                      ; preds = %choice.then176
  %arena.cur183 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create184 = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 24)
  %arena.cur185 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf186 = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 128)
  %a.len.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create184, i32 0, i32 0
  store i64 0, ptr %a.len.gep187, align 8
  %a.data.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create184, i32 0, i32 1
  store ptr %a.buf186, ptr %a.data.gep188, align 8
  %a.cap.gep189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create184, i32 0, i32 2
  store i64 16, ptr %a.cap.gep189, align 8
  store ptr %a.create184, ptr %var.idxs, align 8
  br label %a.after182

a.after182:                                       ; preds = %a.create181, %choice.then176
  %a.load2190 = load ptr, ptr %var.idxs, align 8
  %var.load191 = load i64, ptr %var.k154, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2190, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after182
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2190, i32 0, i32 0
  %a.rd.len192 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load191, 0
  %a.rd.lt = icmp slt i64 %var.load191, %a.rd.len192
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2190, i32 0, i32 1
  %a.rd.data193 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data193, i64 %var.load191
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after182
  %arena.cur194 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur194, i64 56)
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
  %arena.cur195 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 56)
  %err.code.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 0
  store i64 4011, ptr %err.code.gep197, align 8
  %err.msg.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep198, align 8
  %err.file.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep199, align 8
  %err.line.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 3
  store i64 140, ptr %err.line.gep200, align 8
  %err.col.gep201 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 4
  store i64 30, ptr %err.col.gep201, align 8
  %err.ctx.gep202 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc196, i32 0, i32 5
  %err.ctx0.gep203 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep202, i32 0, i32 0
  store i64 %var.load191, ptr %err.ctx0.gep203, align 8
  %err.ctx1.gep204 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep202, i32 0, i32 1
  store i64 %a.rd.len192, ptr %err.ctx1.gep204, align 8
  %err.p2i205 = ptrtoint ptr %err.alloc196 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i205, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.30, label %unwrap.abort.30

unwrap.pos.30:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.slot, align 8
  %var.load217 = load ptr, ptr %var.p, align 8
  %fld.gep218 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load217, i32 0, i32 3
  %fld.load219 = load ptr, ptr %fld.gep218, align 8
  %var.load220 = load i64, ptr %var.slot, align 8
  %a.rd.nonnull221 = icmp ne ptr %fld.load219, null
  br i1 %a.rd.nonnull221, label %a.rd.check222, label %a.rd.err.null224

unwrap.abort.30:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep206, align 8
  %err.msg.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep207, align 8
  %err.file.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep208, align 8
  %err.line.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep209, align 8
  %err.col.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep210, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len211 = load i64, ptr %err.msg.len, align 8
  %err.msg.len212 = and i64 %err.msg.len211, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len212 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data213 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len214 = load i64, ptr %err.file.len, align 8
  %err.file.len215 = and i64 %err.file.len214, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len215 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data216 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.30
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.30
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data213, i32 %err.file.len32, ptr %err.file.data216, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.rd.check222:                                    ; preds = %unwrap.pos.30
  %a.rd.len227 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load219, i32 0, i32 0
  %a.rd.len228 = load i64, ptr %a.rd.len227, align 8
  %a.rd.ge0229 = icmp sge i64 %var.load220, 0
  %a.rd.lt230 = icmp slt i64 %var.load220, %a.rd.len228
  %a.rd.bounds231 = and i1 %a.rd.ge0229, %a.rd.lt230
  br i1 %a.rd.bounds231, label %a.rd.ok223, label %a.rd.err.oob225

a.rd.ok223:                                       ; preds = %a.rd.check222
  %a.rd.data232 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load219, i32 0, i32 1
  %a.rd.data233 = load ptr, ptr %a.rd.data232, align 8
  %a.rd.elem.gep234 = getelementptr i64, ptr %a.rd.data233, i64 %var.load220
  %a.rd.elem235 = load i64, ptr %a.rd.elem.gep234, align 8
  br label %a.rd.done226

a.rd.err.null224:                                 ; preds = %unwrap.pos.30
  %arena.cur236 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc237 = call ptr @dva_arena_alloc(ptr %arena.cur236, i64 56)
  %err.code.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc237, i32 0, i32 0
  store i64 4011, ptr %err.code.gep238, align 8
  %err.msg.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc237, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep239, align 8
  %err.file.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc237, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep240, align 8
  %err.line.gep241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc237, i32 0, i32 3
  store i64 0, ptr %err.line.gep241, align 8
  %err.col.gep242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc237, i32 0, i32 4
  store i64 0, ptr %err.col.gep242, align 8
  %err.ctx.gep243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc237, i32 0, i32 5
  %err.ctx0.gep244 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep243, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep244, align 8
  %err.ctx1.gep245 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep243, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep245, align 8
  %err.p2i246 = ptrtoint ptr %err.alloc237 to i64
  br label %a.rd.done226

a.rd.err.oob225:                                  ; preds = %a.rd.check222
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 56)
  %err.code.gep249 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc248, i32 0, i32 0
  store i64 4011, ptr %err.code.gep249, align 8
  %err.msg.gep250 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc248, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep250, align 8
  %err.file.gep251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc248, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep251, align 8
  %err.line.gep252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc248, i32 0, i32 3
  store i64 0, ptr %err.line.gep252, align 8
  %err.col.gep253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc248, i32 0, i32 4
  store i64 0, ptr %err.col.gep253, align 8
  %err.ctx.gep254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc248, i32 0, i32 5
  %err.ctx0.gep255 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep254, i32 0, i32 0
  store i64 %var.load220, ptr %err.ctx0.gep255, align 8
  %err.ctx1.gep256 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep254, i32 0, i32 1
  store i64 %a.rd.len228, ptr %err.ctx1.gep256, align 8
  %err.p2i257 = ptrtoint ptr %err.alloc248 to i64
  br label %a.rd.done226

a.rd.done226:                                     ; preds = %a.rd.err.oob225, %a.rd.err.null224, %a.rd.ok223
  %a.rd.tag258 = phi i1 [ true, %a.rd.ok223 ], [ false, %a.rd.err.null224 ], [ false, %a.rd.err.oob225 ]
  %a.rd.pay259 = phi i64 [ %a.rd.elem235, %a.rd.ok223 ], [ %err.p2i246, %a.rd.err.null224 ], [ %err.p2i257, %a.rd.err.oob225 ]
  %ram.tag260 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag258, 0
  %ram.pay261 = insertvalue { i1, i64 } %ram.tag260, i64 %a.rd.pay259, 1
  %unwrap.is_pos262 = extractvalue { i1, i64 } %ram.pay261, 0
  br i1 %unwrap.is_pos262, label %unwrap.pos.31, label %unwrap.abort.31

unwrap.pos.31:                                    ; preds = %a.rd.done226
  %unwrap.pay.pos294 = extractvalue { i1, i64 } %ram.pay261, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos294 to ptr
  store ptr %pay.ptr, ptr %var.ev, align 8
  %var.load295 = load i64, ptr %var.rev, align 8
  %bandtmp296 = and i64 %var.load295, 1
  %cmptmp297 = icmp ne i64 %bandtmp296, 0
  br i1 %cmptmp297, label %choice.then298, label %choice.else299

unwrap.abort.31:                                  ; preds = %a.rd.done226
  %unwrap.pay.abort263 = extractvalue { i1, i64 } %ram.pay261, 1
  %err.ptr264 = inttoptr i64 %unwrap.pay.abort263 to ptr
  %err.code.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr264, i32 0, i32 0
  %err.code266 = load i64, ptr %err.code.gep265, align 8
  %err.msg.gep267 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr264, i32 0, i32 1
  %err.msg.struct268 = load ptr, ptr %err.msg.gep267, align 8
  %err.file.gep269 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr264, i32 0, i32 2
  %err.file.struct270 = load ptr, ptr %err.file.gep269, align 8
  %err.line.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr264, i32 0, i32 3
  %err.line272 = load i64, ptr %err.line.gep271, align 8
  %err.col.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr264, i32 0, i32 4
  %err.col274 = load i64, ptr %err.col.gep273, align 8
  %err.msg.len275 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct268, i32 0, i32 0
  %err.msg.len276 = load i64, ptr %err.msg.len275, align 8
  %err.msg.len277 = and i64 %err.msg.len276, 281474976710655
  %err.msg.len32278 = trunc i64 %err.msg.len277 to i32
  %err.msg.data279 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct268, i32 0, i32 1
  %err.msg.data280 = load ptr, ptr %err.msg.data279, align 8
  %err.file.len281 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct270, i32 0, i32 0
  %err.file.len282 = load i64, ptr %err.file.len281, align 8
  %err.file.len283 = and i64 %err.file.len282, 281474976710655
  %err.file.len32284 = trunc i64 %err.file.len283 to i32
  %err.file.data285 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct270, i32 0, i32 1
  %err.file.data286 = load ptr, ptr %err.file.data285, align 8
  %err.thread.rec287 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread288 = icmp ne ptr %err.thread.rec287, null
  br i1 %err.is.thread288, label %err.thread289, label %err.normal290

err.thread289:                                    ; preds = %unwrap.abort.31
  %err.haserr.gep291 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec287, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep291, align 8
  %err.err.gep292 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec287, i32 0, i32 7
  store ptr %err.ptr264, ptr %err.err.gep292, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal290:                                    ; preds = %unwrap.abort.31
  %err.panic.printf293 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code266, i32 %err.msg.len32278, ptr %err.msg.data280, i32 %err.file.len32284, ptr %err.file.data286, i64 %err.line272, i64 %err.col274)
  call void @exit(i32 1)
  unreachable

choice.then298:                                   ; preds = %unwrap.pos.31
  %var.load301 = load i64, ptr @"var.event::READ", align 8
  br label %choice.exit300

choice.else299:                                   ; preds = %unwrap.pos.31
  br label %choice.exit300

choice.exit300:                                   ; preds = %choice.else299, %choice.then298
  %choice.res302 = phi i64 [ %var.load301, %choice.then298 ], [ 0, %choice.else299 ]
  %var.load303 = load i64, ptr %var.rev, align 8
  %bandtmp304 = and i64 %var.load303, 4
  %cmptmp305 = icmp ne i64 %bandtmp304, 0
  br i1 %cmptmp305, label %choice.then306, label %choice.else307

choice.then306:                                   ; preds = %choice.exit300
  %var.load309 = load i64, ptr @"var.event::WRITE", align 8
  br label %choice.exit308

choice.else307:                                   ; preds = %choice.exit300
  br label %choice.exit308

choice.exit308:                                   ; preds = %choice.else307, %choice.then306
  %choice.res310 = phi i64 [ %var.load309, %choice.then306 ], [ 0, %choice.else307 ]
  %bortmp311 = or i64 %choice.res302, %choice.res310
  %var.load312 = load i64, ptr %var.rev, align 8
  %bandtmp313 = and i64 %var.load312, 2
  %cmptmp314 = icmp ne i64 %bandtmp313, 0
  br i1 %cmptmp314, label %choice.then315, label %choice.else316

choice.then315:                                   ; preds = %choice.exit308
  %var.load318 = load i64, ptr @"var.event::PRI", align 8
  br label %choice.exit317

choice.else316:                                   ; preds = %choice.exit308
  br label %choice.exit317

choice.exit317:                                   ; preds = %choice.else316, %choice.then315
  %choice.res319 = phi i64 [ %var.load318, %choice.then315 ], [ 0, %choice.else316 ]
  %bortmp320 = or i64 %bortmp311, %choice.res319
  %var.load321 = load i64, ptr %var.rev, align 8
  %bandtmp322 = and i64 %var.load321, 8
  %cmptmp323 = icmp ne i64 %bandtmp322, 0
  br i1 %cmptmp323, label %choice.then324, label %choice.else325

choice.then324:                                   ; preds = %choice.exit317
  %var.load327 = load i64, ptr @"var.event::ERR", align 8
  br label %choice.exit326

choice.else325:                                   ; preds = %choice.exit317
  br label %choice.exit326

choice.exit326:                                   ; preds = %choice.else325, %choice.then324
  %choice.res328 = phi i64 [ %var.load327, %choice.then324 ], [ 0, %choice.else325 ]
  %bortmp329 = or i64 %bortmp320, %choice.res328
  %var.load330 = load i64, ptr %var.rev, align 8
  %bandtmp331 = and i64 %var.load330, 16
  %cmptmp332 = icmp ne i64 %bandtmp331, 0
  br i1 %cmptmp332, label %choice.then333, label %choice.else334

choice.then333:                                   ; preds = %choice.exit326
  %var.load336 = load i64, ptr @"var.event::HUP", align 8
  br label %choice.exit335

choice.else334:                                   ; preds = %choice.exit326
  br label %choice.exit335

choice.exit335:                                   ; preds = %choice.else334, %choice.then333
  %choice.res337 = phi i64 [ %var.load336, %choice.then333 ], [ 0, %choice.else334 ]
  %bortmp338 = or i64 %bortmp329, %choice.res337
  store i64 %bortmp338, ptr %var.ev_mask, align 8
  %var.load339 = load ptr, ptr %var.ev, align 8
  %fld.gep340 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load339, i32 0, i32 0
  %fld.load341 = load i64, ptr %fld.gep340, align 8
  %var.load342 = load i64, ptr %var.ev_mask, align 8
  %var.load343 = load ptr, ptr %var.ev, align 8
  %fld.gep344 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load343, i32 0, i32 2
  %fld.load345 = load i64, ptr %fld.gep344, align 8
  %arena.cur346 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %fld.load341, ptr %rec.fld, align 8
  %rec.fld347 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load342, ptr %rec.fld347, align 8
  %rec.fld348 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load345, ptr %rec.fld348, align 8
  %a.load349 = load ptr, ptr %"var.res'", align 8
  %a.null350 = icmp eq ptr %a.load349, null
  br i1 %a.null350, label %a.create351, label %a.after352

a.create351:                                      ; preds = %choice.exit335
  %arena.cur353 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create354 = call ptr @dva_arena_alloc(ptr %arena.cur353, i64 24)
  %arena.cur355 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf356 = call ptr @dva_arena_alloc(ptr %arena.cur355, i64 128)
  %a.len.gep357 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create354, i32 0, i32 0
  store i64 0, ptr %a.len.gep357, align 8
  %a.data.gep358 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create354, i32 0, i32 1
  store ptr %a.buf356, ptr %a.data.gep358, align 8
  %a.cap.gep359 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create354, i32 0, i32 2
  store i64 16, ptr %a.cap.gep359, align 8
  store ptr %a.create354, ptr %"var.res'", align 8
  br label %a.after352

a.after352:                                       ; preds = %a.create351, %choice.exit335
  %a.load2360 = load ptr, ptr %"var.res'", align 8
  br label %a.check361

a.check361:                                       ; preds = %a.after352
  %a.len364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 0
  %a.len365 = load i64, ptr %a.len364, align 8
  %a.cap366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 2
  %a.cap367 = load i64, ptr %a.cap366, align 8
  %a.needs.grow368 = icmp eq i64 %a.len365, %a.cap367
  br i1 %a.needs.grow368, label %a.grow362, label %a.store363

a.grow362:                                        ; preds = %a.check361
  call void @dva_array_grow(ptr %a.load2360)
  br label %a.store363

a.store363:                                       ; preds = %a.grow362, %a.check361
  %a.cur.data369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 1
  %a.cur.data370 = load ptr, ptr %a.cur.data369, align 8
  %a.cur.len371 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 0
  %a.cur.len372 = load i64, ptr %a.cur.len371, align 8
  %a.elem.gep373 = getelementptr i64, ptr %a.cur.data370, i64 %a.cur.len372
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep373, align 8
  %a.next.len374 = add i64 %a.cur.len372, 1
  %b.len.gep375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2360, i32 0, i32 0
  store i64 %a.next.len374, ptr %b.len.gep375, align 8
  br label %choice.exit177

a.create381:                                      ; preds = %loop.exit.29
  %arena.cur383 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create384 = call ptr @dva_arena_alloc(ptr %arena.cur383, i64 24)
  %arena.cur385 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 128)
  %a.len.gep387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create384, i32 0, i32 0
  store i64 0, ptr %a.len.gep387, align 8
  %a.data.gep388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create384, i32 0, i32 1
  store ptr %a.buf386, ptr %a.data.gep388, align 8
  %a.cap.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create384, i32 0, i32 2
  store i64 16, ptr %a.cap.gep389, align 8
  store ptr %a.create384, ptr %"var.res'", align 8
  br label %a.after382

a.after382:                                       ; preds = %a.create381, %loop.exit.29
  %a.load2390 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2390
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
