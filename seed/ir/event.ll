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
@sys_argc_global = external global i64
@sys_argv_global = external global ptr
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@"var.event::READ" = global i64 0
@"var.event::WRITE" = global i64 0
@"var.event::PRI" = global i64 0
@"var.event::ERR" = global i64 0
@"var.event::HUP" = global i64 0
@"var.event::RDHUP" = global i64 0
@"var.event::CTL_ADD" = global i64 0
@"var.event::CTL_DEL" = global i64 0
@"var.event::CTL_MOD" = global i64 0
@clo.const = internal constant { ptr, ptr } { ptr @"event::new_with_cap", ptr null }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"event::new", ptr null }
@"var.event::new" = global ptr null
@"var.event::new_with_cap" = global ptr null
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
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
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
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

define internal void @__dva_global_init_event() #1 {
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

declare i32 @open(ptr, i32)

declare i64 @creat(ptr, i64)

declare i32 @close(i32)

declare i64 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @waitpid(i64, ptr, i64)

declare i64 @read(i32, ptr, i64)

declare i64 @lseek(i32, i64, i64)

declare i64 @writev(i32, ptr, i64)

declare i32 @ioctl(i32, i64, i64, ...)

declare i64 @htons(i64)

declare i64 @htonl(i64)

declare i64 @ntohs(i64)

declare i64 @ntohl(i64)

declare i64 @inet_addr(ptr)

declare i64 @socket(i64, i64, i64)

declare i64 @connect(i64, ptr, i64)

declare i64 @bind(i64, ptr, i64)

declare i64 @listen(i64, i64)

declare i64 @accept(i64, ptr, ptr)

declare i64 @send(i64, ptr, i64, i32)

declare i64 @recv(i64, ptr, i64, i32)

declare i64 @sendto(i64, ptr, i64, i32, ptr, i64)

declare i64 @recvfrom(i64, ptr, i64, i32, ptr, ptr)

declare i64 @setsockopt(i64, i64, i64, ptr, i64)

declare i64 @getsockopt(i64, i64, i64, ptr, ptr)

declare i64 @getpeername(i64, ptr, ptr)

declare i64 @getsockname(i64, ptr, ptr)

declare i64 @shutdown(i64, i64)

declare i64 @fcntl(i32, i64, i64)

declare i64 @getaddrinfo(ptr, ptr, ptr, ptr)

declare void @freeaddrinfo(ptr)

declare i64 @getifaddrs(ptr)

declare void @freeifaddrs(ptr)

declare ptr @memset(ptr, i64, i64)

declare i64 @atoi(ptr)

declare ptr @opendir(ptr)

declare ptr @readdir(ptr)

declare i64 @closedir(ptr)

declare i64 @strcmp(ptr, ptr)

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @memmove(ptr, ptr, i64)

declare i64 @stat(ptr, ptr)

declare i64 @fstat(i32, ptr)

declare i64 @rename(ptr, ptr)

declare i64 @unlink(ptr)

declare i64 @pipe(ptr)

declare ptr @__errno_location()

declare ptr @mmap(ptr, i64, i64, i64, i32, i64)

declare i64 @munmap(ptr, i64)

declare i64 @syscall(i64, ptr, ptr, ptr, ptr, ptr, ptr)

declare ptr @dlopen(ptr, i32)

declare ptr @dlsym(ptr, ptr)

declare i64 @dlclose(ptr)

declare ptr @dlerror()

declare i64 @system(ptr)

declare ptr @realpath(ptr, ptr)

declare i64 @isatty(i32)

declare i64 @tcgetattr(i32, ptr)

declare i64 @tcsetattr(i32, i64, ptr)

declare void @cfmakeraw(ptr)

declare i64 @poll(ptr, i64, i64)

declare i64 @epoll_create1(i32)

declare i64 @epoll_ctl(i64, i64, i32, ptr)

declare i64 @epoll_wait(i64, ptr, i64, i64)

declare i64 @time(ptr)

declare ptr @signal(i64, ptr)

declare i64 @raise(i64)

declare i64 @getrlimit(i64, ptr)

declare i64 @setrlimit(i64, ptr)

declare i64 @uname(ptr)

define { i1, i64 } @"event::new"() #1 {
entry:
  %call.res = call { i1, i64 } @"event::new_with_cap"(i64 64)
  ret { i1, i64 } %call.res
}

define { i1, i64 } @"event::new_with_cap"(i64 %0) #1 {
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
  %var.load3 = load i64, ptr %var.cap, align 8
  %multmp = mul i64 %var.load3, 24
  %arena.cur = call ptr @dva_arena_current()
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %cap.neg = icmp slt i64 %multmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %multmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len4

b.buf.len4:                                       ; preds = %str_overflow_abort, %choice.exit
  %arena.cur5 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  %arena.cur6 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ i64, i1, i64, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i1 false, ptr %rec.fld7, align 1
  %rec.fld8 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load2, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 3
  store ptr %builder.new, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld10, align 8
  %p.to.i64 = ptrtoint ptr %rec.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

str_overflow_abort:                               ; preds = %choice.exit
  %1 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len4
}

define i1 @"event::add"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.slot = alloca i64, align 8
  %var.s = alloca i64, align 8
  %var.efd = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.1 = alloca i64, align 8
  %loop.idx.1 = alloca i64, align 8
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
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.0.then, label %or.0.else

or.0.then:                                        ; preds = %entry
  br label %or.0.exit

or.0.else:                                        ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.0.exit

or.0.exit:                                        ; preds = %or.0.else, %or.0.then
  %or.0.phi = phi i1 [ %fld.load, %or.0.then ], [ %cmptmp, %or.0.else ]
  br i1 %or.0.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.0.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.0.exit
  store i1 false, ptr %"var.dup'", align 1
  store i64 -1, ptr %"var.free_slot'", align 8
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load2, i32 0, i32 4
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  store i64 0, ptr %loop.idx.1, align 8
  br label %loop.header.1

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.1:                                    ; preds = %loop.latch.1, %choice.exit
  %counter.load = load i64, ptr %loop.idx.1, align 8
  %loop.cond = icmp slt i64 %counter.load, %fld.load4
  br i1 %loop.cond, label %loop.body.1, label %loop.exit.nat.1

loop.body.1:                                      ; preds = %loop.header.1
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.1, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load5 = load ptr, ptr %var.p, align 8
  %fld.gep6 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load5, i32 0, i32 3
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load7, i32 0, i32 1
  %b.ptr8 = load ptr, ptr %b.ptr, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %multmp = mul i64 %var.load9, 24
  %ptr.int.l = ptrtoint ptr %b.ptr8 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.1:                                  ; preds = %loop.header.1
  br label %loop.exit.1

loop.latch.1:                                     ; preds = %choice.exit20
  %step.val = load i64, ptr %loop.step.1, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.1, align 8
  br label %loop.header.1

loop.exit.1:                                      ; preds = %loop.exit.nat.1
  %var.load22 = load i1, ptr %"var.dup'", align 1
  br i1 %var.load22, label %choice.then23, label %choice.exit24

addr_gen_check:                                   ; preds = %loop.body.1
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.1
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.efd, align 8
  %var.load10 = load i64, ptr %var.efd, align 8
  %var.load11 = load i64, ptr %var.fd, align 8
  %cmptmp12 = icmp eq i64 %var.load10, %var.load11
  br i1 %cmptmp12, label %choice.then13, label %choice.exit14

addr_stale:                                       ; preds = %addr_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then13:                                    ; preds = %addr_ok
  store i1 true, ptr %"var.dup'", align 1
  br label %choice.exit14

choice.exit14:                                    ; preds = %choice.then13, %addr_ok
  %var.load15 = load i64, ptr %var.efd, align 8
  %cmptmp16 = icmp slt i64 %var.load15, 0
  br i1 %cmptmp16, label %and.2.then, label %and.2.else

and.2.then:                                       ; preds = %choice.exit14
  %var.load17 = load i64, ptr %"var.free_slot'", align 8
  %cmptmp18 = icmp slt i64 %var.load17, 0
  br label %and.2.exit

and.2.else:                                       ; preds = %choice.exit14
  br label %and.2.exit

and.2.exit:                                       ; preds = %and.2.else, %and.2.then
  %and.2.phi = phi i1 [ %cmptmp18, %and.2.then ], [ %cmptmp16, %and.2.else ]
  br i1 %and.2.phi, label %choice.then19, label %choice.exit20

choice.then19:                                    ; preds = %and.2.exit
  %var.load21 = load i64, ptr %var.i, align 8
  store i64 %var.load21, ptr %"var.free_slot'", align 8
  br label %choice.exit20

choice.exit20:                                    ; preds = %choice.then19, %and.2.exit
  br label %loop.latch.1

choice.then23:                                    ; preds = %loop.exit.1
  ret i1 false

choice.exit24:                                    ; preds = %ret.dead25, %loop.exit.1
  %var.load26 = load i64, ptr %"var.free_slot'", align 8
  %cmptmp27 = icmp sge i64 %var.load26, 0
  br i1 %cmptmp27, label %choice.then28, label %choice.else

ret.dead25:                                       ; No predecessors!
  br label %choice.exit24

choice.then28:                                    ; preds = %choice.exit24
  %var.load30 = load i64, ptr %"var.free_slot'", align 8
  br label %choice.exit29

choice.else:                                      ; preds = %choice.exit24
  %var.load31 = load ptr, ptr %var.p, align 8
  %fld.gep32 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load31, i32 0, i32 4
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %var.load34 = load ptr, ptr %var.p, align 8
  %fld.gep35 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load34, i32 0, i32 2
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %cmptmp37 = icmp slt i64 %fld.load33, %fld.load36
  br i1 %cmptmp37, label %choice.then38, label %choice.else39

choice.exit29:                                    ; preds = %choice.exit40, %choice.then28
  %choice.res51 = phi i64 [ %var.load30, %choice.then28 ], [ %choice.res, %choice.exit40 ]
  store i64 %choice.res51, ptr %var.slot, align 8
  %var.load52 = load i64, ptr %var.slot, align 8
  %cmptmp53 = icmp slt i64 %var.load52, 0
  br i1 %cmptmp53, label %choice.then54, label %choice.exit55

choice.then38:                                    ; preds = %choice.else
  %var.load41 = load ptr, ptr %var.p, align 8
  %fld.gep42 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load41, i32 0, i32 4
  %fld.load43 = load i64, ptr %fld.gep42, align 8
  store i64 %fld.load43, ptr %var.s, align 8
  %var.load44 = load ptr, ptr %var.p, align 8
  %var.load45 = load ptr, ptr %var.p, align 8
  %fld.gep46 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load45, i32 0, i32 4
  %fld.load47 = load i64, ptr %fld.gep46, align 8
  %addtmp48 = add i64 %fld.load47, 1
  %fld.gep49 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load44, i32 0, i32 4
  store i64 %addtmp48, ptr %fld.gep49, align 8
  %var.load50 = load i64, ptr %var.s, align 8
  br label %choice.exit40

choice.else39:                                    ; preds = %choice.else
  br label %choice.exit40

choice.exit40:                                    ; preds = %choice.else39, %choice.then38
  %choice.res = phi i64 [ %var.load50, %choice.then38 ], [ -1, %choice.else39 ]
  br label %choice.exit29

choice.then54:                                    ; preds = %choice.exit29
  ret i1 false

choice.exit55:                                    ; preds = %ret.dead56, %choice.exit29
  %var.load57 = load ptr, ptr %var.p, align 8
  %fld.gep58 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load57, i32 0, i32 3
  %fld.load59 = load ptr, ptr %fld.gep58, align 8
  %b.ptr60 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load59, i32 0, i32 1
  %b.ptr61 = load ptr, ptr %b.ptr60, align 8
  %var.load62 = load i64, ptr %var.slot, align 8
  %multmp63 = mul i64 %var.load62, 24
  %ptr.int.l64 = ptrtoint ptr %b.ptr61 to i64
  %addtmp65 = add i64 %ptr.int.l64, %multmp63
  %ptr.res66 = inttoptr i64 %addtmp65 to ptr
  %var.load67 = load i64, ptr %var.fd, align 8
  %raw.int68 = ptrtoint ptr %ptr.res66 to i64
  %raw.clean.int69 = and i64 %raw.int68, 281474976710655
  %raw.clean.ptr70 = inttoptr i64 %raw.clean.int69 to ptr
  %addr.tag71 = lshr i64 %raw.int68, 48
  %addr.immortal72 = icmp eq i64 %addr.tag71, 0
  br i1 %addr.immortal72, label %addr_ok74, label %addr_gen_check73

ret.dead56:                                       ; No predecessors!
  br label %choice.exit55

addr_gen_check73:                                 ; preds = %choice.exit55
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %addr.tag71)
  br i1 %tag.valid77, label %addr_ok74, label %addr_stale75

addr_ok74:                                        ; preds = %addr_stale75, %addr_gen_check73, %choice.exit55
  store i64 %var.load67, ptr %raw.clean.ptr70, align 8
  %var.load78 = load ptr, ptr %var.p, align 8
  %fld.gep79 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load78, i32 0, i32 3
  %fld.load80 = load ptr, ptr %fld.gep79, align 8
  %b.ptr81 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load80, i32 0, i32 1
  %b.ptr82 = load ptr, ptr %b.ptr81, align 8
  %var.load83 = load i64, ptr %var.slot, align 8
  %multmp84 = mul i64 %var.load83, 24
  %ptr.int.l85 = ptrtoint ptr %b.ptr82 to i64
  %addtmp86 = add i64 %ptr.int.l85, %multmp84
  %ptr.res87 = inttoptr i64 %addtmp86 to ptr
  %ptr.int.l88 = ptrtoint ptr %ptr.res87 to i64
  %addtmp89 = add i64 %ptr.int.l88, 8
  %ptr.res90 = inttoptr i64 %addtmp89 to ptr
  %var.load91 = load i64, ptr %var.mask, align 8
  %raw.int92 = ptrtoint ptr %ptr.res90 to i64
  %raw.clean.int93 = and i64 %raw.int92, 281474976710655
  %raw.clean.ptr94 = inttoptr i64 %raw.clean.int93 to ptr
  %addr.tag95 = lshr i64 %raw.int92, 48
  %addr.immortal96 = icmp eq i64 %addr.tag95, 0
  br i1 %addr.immortal96, label %addr_ok98, label %addr_gen_check97

addr_stale75:                                     ; preds = %addr_gen_check73
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok74

addr_gen_check97:                                 ; preds = %addr_ok74
  %arena.cur100 = call ptr @dva_arena_current()
  %tag.valid101 = call i1 @dva_arena_validate_tag(ptr %arena.cur100, i64 %addr.tag95)
  br i1 %tag.valid101, label %addr_ok98, label %addr_stale99

addr_ok98:                                        ; preds = %addr_stale99, %addr_gen_check97, %addr_ok74
  store i64 %var.load91, ptr %raw.clean.ptr94, align 8
  %var.load102 = load ptr, ptr %var.p, align 8
  %fld.gep103 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load102, i32 0, i32 3
  %fld.load104 = load ptr, ptr %fld.gep103, align 8
  %b.ptr105 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load104, i32 0, i32 1
  %b.ptr106 = load ptr, ptr %b.ptr105, align 8
  %var.load107 = load i64, ptr %var.slot, align 8
  %multmp108 = mul i64 %var.load107, 24
  %ptr.int.l109 = ptrtoint ptr %b.ptr106 to i64
  %addtmp110 = add i64 %ptr.int.l109, %multmp108
  %ptr.res111 = inttoptr i64 %addtmp110 to ptr
  %ptr.int.l112 = ptrtoint ptr %ptr.res111 to i64
  %addtmp113 = add i64 %ptr.int.l112, 16
  %ptr.res114 = inttoptr i64 %addtmp113 to ptr
  %var.load115 = load i64, ptr %var.user_data, align 8
  %raw.int116 = ptrtoint ptr %ptr.res114 to i64
  %raw.clean.int117 = and i64 %raw.int116, 281474976710655
  %raw.clean.ptr118 = inttoptr i64 %raw.clean.int117 to ptr
  %addr.tag119 = lshr i64 %raw.int116, 48
  %addr.immortal120 = icmp eq i64 %addr.tag119, 0
  br i1 %addr.immortal120, label %addr_ok122, label %addr_gen_check121

addr_stale99:                                     ; preds = %addr_gen_check97
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok98

addr_gen_check121:                                ; preds = %addr_ok98
  %arena.cur124 = call ptr @dva_arena_current()
  %tag.valid125 = call i1 @dva_arena_validate_tag(ptr %arena.cur124, i64 %addr.tag119)
  br i1 %tag.valid125, label %addr_ok122, label %addr_stale123

addr_ok122:                                       ; preds = %addr_stale123, %addr_gen_check121, %addr_ok98
  store i64 %var.load115, ptr %raw.clean.ptr118, align 8
  ret i1 true

addr_stale123:                                    ; preds = %addr_gen_check121
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok122
}

define i1 @"event::add_fd"(ptr %0, i64 %1, i64 %2) #1 {
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

define i1 @"event::mod"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.efd = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.4 = alloca i64, align 8
  %loop.idx.4 = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.user_data = alloca i64, align 8
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.3.then, label %or.3.else

or.3.then:                                        ; preds = %entry
  br label %or.3.exit

or.3.else:                                        ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.3.exit

or.3.exit:                                        ; preds = %or.3.else, %or.3.then
  %or.3.phi = phi i1 [ %fld.load, %or.3.then ], [ %cmptmp, %or.3.else ]
  br i1 %or.3.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.3.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.3.exit
  store i1 false, ptr %"var.found'", align 1
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load2, i32 0, i32 4
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  store i64 0, ptr %loop.idx.4, align 8
  br label %loop.header.4

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.4:                                    ; preds = %loop.latch.4, %choice.exit
  %counter.load = load i64, ptr %loop.idx.4, align 8
  %loop.cond = icmp slt i64 %counter.load, %fld.load4
  br i1 %loop.cond, label %loop.body.4, label %loop.exit.nat.4

loop.body.4:                                      ; preds = %loop.header.4
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.4, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load5 = load ptr, ptr %var.p, align 8
  %fld.gep6 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load5, i32 0, i32 3
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load7, i32 0, i32 1
  %b.ptr8 = load ptr, ptr %b.ptr, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %multmp = mul i64 %var.load9, 24
  %ptr.int.l = ptrtoint ptr %b.ptr8 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.4:                                  ; preds = %loop.header.4
  br label %loop.exit.4

loop.latch.4:                                     ; preds = %choice.exit14
  %step.val = load i64, ptr %loop.step.4, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.4, align 8
  br label %loop.header.4

loop.exit.4:                                      ; preds = %addr_ok59, %loop.exit.nat.4
  %var.load63 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load63

addr_gen_check:                                   ; preds = %loop.body.4
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.4
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.efd, align 8
  %var.load10 = load i64, ptr %var.efd, align 8
  %var.load11 = load i64, ptr %var.fd, align 8
  %cmptmp12 = icmp eq i64 %var.load10, %var.load11
  br i1 %cmptmp12, label %choice.then13, label %choice.exit14

addr_stale:                                       ; preds = %addr_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then13:                                    ; preds = %addr_ok
  %var.load15 = load ptr, ptr %var.p, align 8
  %fld.gep16 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load15, i32 0, i32 3
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %b.ptr18 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load17, i32 0, i32 1
  %b.ptr19 = load ptr, ptr %b.ptr18, align 8
  %var.load20 = load i64, ptr %var.i, align 8
  %multmp21 = mul i64 %var.load20, 24
  %ptr.int.l22 = ptrtoint ptr %b.ptr19 to i64
  %addtmp23 = add i64 %ptr.int.l22, %multmp21
  %ptr.res24 = inttoptr i64 %addtmp23 to ptr
  %ptr.int.l25 = ptrtoint ptr %ptr.res24 to i64
  %addtmp26 = add i64 %ptr.int.l25, 8
  %ptr.res27 = inttoptr i64 %addtmp26 to ptr
  %var.load28 = load i64, ptr %var.mask, align 8
  %raw.int29 = ptrtoint ptr %ptr.res27 to i64
  %raw.clean.int30 = and i64 %raw.int29, 281474976710655
  %raw.clean.ptr31 = inttoptr i64 %raw.clean.int30 to ptr
  %addr.tag32 = lshr i64 %raw.int29, 48
  %addr.immortal33 = icmp eq i64 %addr.tag32, 0
  br i1 %addr.immortal33, label %addr_ok35, label %addr_gen_check34

choice.exit14:                                    ; preds = %addr_ok
  br label %loop.latch.4

addr_gen_check34:                                 ; preds = %choice.then13
  %arena.cur37 = call ptr @dva_arena_current()
  %tag.valid38 = call i1 @dva_arena_validate_tag(ptr %arena.cur37, i64 %addr.tag32)
  br i1 %tag.valid38, label %addr_ok35, label %addr_stale36

addr_ok35:                                        ; preds = %addr_stale36, %addr_gen_check34, %choice.then13
  store i64 %var.load28, ptr %raw.clean.ptr31, align 8
  %var.load39 = load ptr, ptr %var.p, align 8
  %fld.gep40 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load39, i32 0, i32 3
  %fld.load41 = load ptr, ptr %fld.gep40, align 8
  %b.ptr42 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load41, i32 0, i32 1
  %b.ptr43 = load ptr, ptr %b.ptr42, align 8
  %var.load44 = load i64, ptr %var.i, align 8
  %multmp45 = mul i64 %var.load44, 24
  %ptr.int.l46 = ptrtoint ptr %b.ptr43 to i64
  %addtmp47 = add i64 %ptr.int.l46, %multmp45
  %ptr.res48 = inttoptr i64 %addtmp47 to ptr
  %ptr.int.l49 = ptrtoint ptr %ptr.res48 to i64
  %addtmp50 = add i64 %ptr.int.l49, 16
  %ptr.res51 = inttoptr i64 %addtmp50 to ptr
  %var.load52 = load i64, ptr %var.user_data, align 8
  %raw.int53 = ptrtoint ptr %ptr.res51 to i64
  %raw.clean.int54 = and i64 %raw.int53, 281474976710655
  %raw.clean.ptr55 = inttoptr i64 %raw.clean.int54 to ptr
  %addr.tag56 = lshr i64 %raw.int53, 48
  %addr.immortal57 = icmp eq i64 %addr.tag56, 0
  br i1 %addr.immortal57, label %addr_ok59, label %addr_gen_check58

addr_stale36:                                     ; preds = %addr_gen_check34
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok35

addr_gen_check58:                                 ; preds = %addr_ok35
  %arena.cur61 = call ptr @dva_arena_current()
  %tag.valid62 = call i1 @dva_arena_validate_tag(ptr %arena.cur61, i64 %addr.tag56)
  br i1 %tag.valid62, label %addr_ok59, label %addr_stale60

addr_ok59:                                        ; preds = %addr_stale60, %addr_gen_check58, %addr_ok35
  store i64 %var.load52, ptr %raw.clean.ptr55, align 8
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.4

addr_stale60:                                     ; preds = %addr_gen_check58
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok59
}

define i1 @"event::mod_fd"(ptr %0, i64 %1, i64 %2) #1 {
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

define i1 @"event::del"(ptr %0, i64 %1) #1 {
entry:
  %var.efd = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.6 = alloca i64, align 8
  %loop.idx.6 = alloca i64, align 8
  %"var.found'" = alloca i1, align 1
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.5.then, label %or.5.else

or.5.then:                                        ; preds = %entry
  br label %or.5.exit

or.5.else:                                        ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.5.exit

or.5.exit:                                        ; preds = %or.5.else, %or.5.then
  %or.5.phi = phi i1 [ %fld.load, %or.5.then ], [ %cmptmp, %or.5.else ]
  br i1 %or.5.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.5.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.5.exit
  store i1 false, ptr %"var.found'", align 1
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load2, i32 0, i32 4
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  store i64 0, ptr %loop.idx.6, align 8
  br label %loop.header.6

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.6:                                    ; preds = %loop.latch.6, %choice.exit
  %counter.load = load i64, ptr %loop.idx.6, align 8
  %loop.cond = icmp slt i64 %counter.load, %fld.load4
  br i1 %loop.cond, label %loop.body.6, label %loop.exit.nat.6

loop.body.6:                                      ; preds = %loop.header.6
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.6, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load5 = load ptr, ptr %var.p, align 8
  %fld.gep6 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load5, i32 0, i32 3
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load7, i32 0, i32 1
  %b.ptr8 = load ptr, ptr %b.ptr, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %multmp = mul i64 %var.load9, 24
  %ptr.int.l = ptrtoint ptr %b.ptr8 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.6:                                  ; preds = %loop.header.6
  br label %loop.exit.6

loop.latch.6:                                     ; preds = %choice.exit14
  %step.val = load i64, ptr %loop.step.6, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.6, align 8
  br label %loop.header.6

loop.exit.6:                                      ; preds = %addr_ok31, %loop.exit.nat.6
  %var.load35 = load i1, ptr %"var.found'", align 1
  ret i1 %var.load35

addr_gen_check:                                   ; preds = %loop.body.6
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.6
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.efd, align 8
  %var.load10 = load i64, ptr %var.efd, align 8
  %var.load11 = load i64, ptr %var.fd, align 8
  %cmptmp12 = icmp eq i64 %var.load10, %var.load11
  br i1 %cmptmp12, label %choice.then13, label %choice.exit14

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then13:                                    ; preds = %addr_ok
  %var.load15 = load ptr, ptr %var.p, align 8
  %fld.gep16 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load15, i32 0, i32 3
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %b.ptr18 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load17, i32 0, i32 1
  %b.ptr19 = load ptr, ptr %b.ptr18, align 8
  %var.load20 = load i64, ptr %var.i, align 8
  %multmp21 = mul i64 %var.load20, 24
  %ptr.int.l22 = ptrtoint ptr %b.ptr19 to i64
  %addtmp23 = add i64 %ptr.int.l22, %multmp21
  %ptr.res24 = inttoptr i64 %addtmp23 to ptr
  %raw.int25 = ptrtoint ptr %ptr.res24 to i64
  %raw.clean.int26 = and i64 %raw.int25, 281474976710655
  %raw.clean.ptr27 = inttoptr i64 %raw.clean.int26 to ptr
  %addr.tag28 = lshr i64 %raw.int25, 48
  %addr.immortal29 = icmp eq i64 %addr.tag28, 0
  br i1 %addr.immortal29, label %addr_ok31, label %addr_gen_check30

choice.exit14:                                    ; preds = %addr_ok
  br label %loop.latch.6

addr_gen_check30:                                 ; preds = %choice.then13
  %arena.cur33 = call ptr @dva_arena_current()
  %tag.valid34 = call i1 @dva_arena_validate_tag(ptr %arena.cur33, i64 %addr.tag28)
  br i1 %tag.valid34, label %addr_ok31, label %addr_stale32

addr_ok31:                                        ; preds = %addr_stale32, %addr_gen_check30, %choice.then13
  store i64 -1, ptr %raw.clean.ptr27, align 8
  store i1 true, ptr %"var.found'", align 1
  br label %loop.exit.6

addr_stale32:                                     ; preds = %addr_gen_check30
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok31
}

define ptr @"event::wait"(ptr %0, i64 %1) #1 {
entry:
  %var.ev_mask = alloca i64, align 8
  %var.ev_udata = alloca i64, align 8
  %var.ev_fd = alloca i64, align 8
  %var.slot = alloca i64, align 8
  %var.rev = alloca i64, align 8
  %var._208 = alloca i64, align 8
  %var._i207 = alloca i64, align 8
  %var.k203 = alloca i64, align 8
  %loop.step.8 = alloca i64, align 8
  %loop.idx.8 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.pmask = alloca i64, align 8
  %var.emask = alloca i64, align 8
  %var.efd = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.7 = alloca i64, align 8
  %loop.idx.7 = alloca i64, align 8
  %"var.nfds'" = alloca i64, align 8
  %var.idxs = alloca ptr, align 8
  %var.pfds = alloca ptr, align 8
  %"var.res'" = alloca ptr, align 8
  %var.timeout_ms = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.timeout_ms, align 8
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur1 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %"var.res'", align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %"var.res'", align 8
  %a.load = load ptr, ptr %"var.res'", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load10 = load ptr, ptr %var.p, align 8
  %fld.gep11 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %multmp = mul i64 %fld.load12, 8
  %arena.cur13 = call ptr @dva_arena_current()
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
  %arena.cur3 = call ptr @dva_arena_current()
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
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

b.buf.len14:                                      ; preds = %str_overflow_abort, %choice.exit
  %arena.cur15 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.pfds, align 8
  %var.load16 = load ptr, ptr %var.p, align 8
  %fld.gep17 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load16, i32 0, i32 2
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %multmp19 = mul i64 %fld.load18, 8
  %arena.cur20 = call ptr @dva_arena_current()
  %builder.new21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 24)
  %cap.neg22 = icmp slt i64 %multmp19, 0
  %cap.safe23 = select i1 %cap.neg22, i64 0, i64 %multmp19
  %b.data.gep24 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new21, i32 0, i32 1
  %b.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new21, i32 0, i32 0
  %b.cap.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new21, i32 0, i32 2
  %b.buf.len27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe23, i64 1)
  %sum28 = extractvalue { i64, i1 } %b.buf.len27, 0
  %ovf29 = extractvalue { i64, i1 } %b.buf.len27, 1
  br i1 %ovf29, label %str_overflow_abort31, label %b.buf.len30

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len14

b.buf.len30:                                      ; preds = %str_overflow_abort31, %b.buf.len14
  %arena.cur32 = call ptr @dva_arena_current()
  %b.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 %sum28)
  %b.nul034 = getelementptr i8, ptr %b.buf33, i64 0
  store i8 0, ptr %b.nul034, align 1
  store i64 0, ptr %b.len.gep25, align 8
  store ptr %b.buf33, ptr %b.data.gep24, align 8
  store i64 %cap.safe23, ptr %b.cap.gep26, align 8
  store ptr %builder.new21, ptr %var.idxs, align 8
  store i64 0, ptr %"var.nfds'", align 8
  %var.load35 = load ptr, ptr %var.p, align 8
  %fld.gep36 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load35, i32 0, i32 4
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  store i64 0, ptr %loop.idx.7, align 8
  br label %loop.header.7

str_overflow_abort31:                             ; preds = %b.buf.len14
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len30

loop.header.7:                                    ; preds = %loop.latch.7, %b.buf.len30
  %counter.load = load i64, ptr %loop.idx.7, align 8
  %loop.cond = icmp slt i64 %counter.load, %fld.load37
  br i1 %loop.cond, label %loop.body.7, label %loop.exit.nat.7

loop.body.7:                                      ; preds = %loop.header.7
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.7, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load38 = load ptr, ptr %var.p, align 8
  %fld.gep39 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load38, i32 0, i32 3
  %fld.load40 = load ptr, ptr %fld.gep39, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load40, i32 0, i32 1
  %b.ptr41 = load ptr, ptr %b.ptr, align 8
  %var.load42 = load i64, ptr %var.i, align 8
  %multmp43 = mul i64 %var.load42, 24
  %ptr.int.l = ptrtoint ptr %b.ptr41 to i64
  %addtmp = add i64 %ptr.int.l, %multmp43
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.7:                                  ; preds = %loop.header.7
  br label %loop.exit.7

loop.latch.7:                                     ; preds = %choice.exit47
  %step.val = load i64, ptr %loop.step.7, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.7, align 8
  br label %loop.header.7

loop.exit.7:                                      ; preds = %loop.exit.nat.7
  %var.load179 = load ptr, ptr %var.pfds, align 8
  %b.ptr180 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load179, i32 0, i32 1
  %b.ptr181 = load ptr, ptr %b.ptr180, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr181 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load182 = load i64, ptr %"var.nfds'", align 8
  %var.load183 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @poll(ptr %addr.ffi.clean, i64 %var.load182, i64 %var.load183)
  store i64 %call.res, ptr %var.n, align 8
  %var.load184 = load i64, ptr %var.n, align 8
  %cmptmp185 = icmp sle i64 %var.load184, 0
  br i1 %cmptmp185, label %choice.then186, label %choice.exit187

addr_gen_check:                                   ; preds = %loop.body.7
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.7
  %raw.load = load volatile i64, ptr %raw.clean.ptr, align 8
  store i64 %raw.load, ptr %var.efd, align 8
  %var.load45 = load i64, ptr %var.efd, align 8
  %cmptmp = icmp sge i64 %var.load45, 0
  br i1 %cmptmp, label %choice.then46, label %choice.exit47

addr_stale:                                       ; preds = %addr_gen_check
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then46:                                    ; preds = %addr_ok
  %var.load48 = load ptr, ptr %var.p, align 8
  %fld.gep49 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load48, i32 0, i32 3
  %fld.load50 = load ptr, ptr %fld.gep49, align 8
  %b.ptr51 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load50, i32 0, i32 1
  %b.ptr52 = load ptr, ptr %b.ptr51, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %multmp54 = mul i64 %var.load53, 24
  %ptr.int.l55 = ptrtoint ptr %b.ptr52 to i64
  %addtmp56 = add i64 %ptr.int.l55, %multmp54
  %ptr.res57 = inttoptr i64 %addtmp56 to ptr
  %ptr.int.l58 = ptrtoint ptr %ptr.res57 to i64
  %addtmp59 = add i64 %ptr.int.l58, 8
  %ptr.res60 = inttoptr i64 %addtmp59 to ptr
  %raw.int61 = ptrtoint ptr %ptr.res60 to i64
  %raw.clean.int62 = and i64 %raw.int61, 281474976710655
  %raw.clean.ptr63 = inttoptr i64 %raw.clean.int62 to ptr
  %addr.tag64 = lshr i64 %raw.int61, 48
  %addr.immortal65 = icmp eq i64 %addr.tag64, 0
  br i1 %addr.immortal65, label %addr_ok67, label %addr_gen_check66

choice.exit47:                                    ; preds = %addr_ok173, %addr_ok
  br label %loop.latch.7

addr_gen_check66:                                 ; preds = %choice.then46
  %arena.cur69 = call ptr @dva_arena_current()
  %tag.valid70 = call i1 @dva_arena_validate_tag(ptr %arena.cur69, i64 %addr.tag64)
  br i1 %tag.valid70, label %addr_ok67, label %addr_stale68

addr_ok67:                                        ; preds = %addr_stale68, %addr_gen_check66, %choice.then46
  %raw.load71 = load volatile i64, ptr %raw.clean.ptr63, align 8
  store i64 %raw.load71, ptr %var.emask, align 8
  %var.load72 = load i64, ptr %var.emask, align 8
  %var.load73 = load i64, ptr @"var.event::READ", align 8
  %bandtmp = and i64 %var.load72, %var.load73
  %cmptmp74 = icmp ne i64 %bandtmp, 0
  br i1 %cmptmp74, label %choice.then75, label %choice.else

addr_stale68:                                     ; preds = %addr_gen_check66
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok67

choice.then75:                                    ; preds = %addr_ok67
  br label %choice.exit76

choice.else:                                      ; preds = %addr_ok67
  br label %choice.exit76

choice.exit76:                                    ; preds = %choice.else, %choice.then75
  %choice.res = phi i64 [ 1, %choice.then75 ], [ 0, %choice.else ]
  %var.load77 = load i64, ptr %var.emask, align 8
  %var.load78 = load i64, ptr @"var.event::WRITE", align 8
  %bandtmp79 = and i64 %var.load77, %var.load78
  %cmptmp80 = icmp ne i64 %bandtmp79, 0
  br i1 %cmptmp80, label %choice.then81, label %choice.else82

choice.then81:                                    ; preds = %choice.exit76
  br label %choice.exit83

choice.else82:                                    ; preds = %choice.exit76
  br label %choice.exit83

choice.exit83:                                    ; preds = %choice.else82, %choice.then81
  %choice.res84 = phi i64 [ 4, %choice.then81 ], [ 0, %choice.else82 ]
  %bortmp = or i64 %choice.res, %choice.res84
  %var.load85 = load i64, ptr %var.emask, align 8
  %var.load86 = load i64, ptr @"var.event::PRI", align 8
  %bandtmp87 = and i64 %var.load85, %var.load86
  %cmptmp88 = icmp ne i64 %bandtmp87, 0
  br i1 %cmptmp88, label %choice.then89, label %choice.else90

choice.then89:                                    ; preds = %choice.exit83
  br label %choice.exit91

choice.else90:                                    ; preds = %choice.exit83
  br label %choice.exit91

choice.exit91:                                    ; preds = %choice.else90, %choice.then89
  %choice.res92 = phi i64 [ 2, %choice.then89 ], [ 0, %choice.else90 ]
  %bortmp93 = or i64 %bortmp, %choice.res92
  store i64 %bortmp93, ptr %var.pmask, align 8
  %var.load94 = load i64, ptr %"var.nfds'", align 8
  store i64 %var.load94, ptr %var.k, align 8
  %var.load95 = load ptr, ptr %var.pfds, align 8
  %b.ptr96 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load95, i32 0, i32 1
  %b.ptr97 = load ptr, ptr %b.ptr96, align 8
  %var.load98 = load i64, ptr %var.k, align 8
  %multmp99 = mul i64 %var.load98, 8
  %ptr.int.l100 = ptrtoint ptr %b.ptr97 to i64
  %addtmp101 = add i64 %ptr.int.l100, %multmp99
  %ptr.res102 = inttoptr i64 %addtmp101 to ptr
  %var.load103 = load i64, ptr %var.efd, align 8
  %coerce.trunc = trunc i64 %var.load103 to i32
  %raw.int104 = ptrtoint ptr %ptr.res102 to i64
  %raw.clean.int105 = and i64 %raw.int104, 281474976710655
  %raw.clean.ptr106 = inttoptr i64 %raw.clean.int105 to ptr
  %addr.tag107 = lshr i64 %raw.int104, 48
  %addr.immortal108 = icmp eq i64 %addr.tag107, 0
  br i1 %addr.immortal108, label %addr_ok110, label %addr_gen_check109

addr_gen_check109:                                ; preds = %choice.exit91
  %arena.cur112 = call ptr @dva_arena_current()
  %tag.valid113 = call i1 @dva_arena_validate_tag(ptr %arena.cur112, i64 %addr.tag107)
  br i1 %tag.valid113, label %addr_ok110, label %addr_stale111

addr_ok110:                                       ; preds = %addr_stale111, %addr_gen_check109, %choice.exit91
  store i32 %coerce.trunc, ptr %raw.clean.ptr106, align 4
  %var.load114 = load ptr, ptr %var.pfds, align 8
  %b.ptr115 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load114, i32 0, i32 1
  %b.ptr116 = load ptr, ptr %b.ptr115, align 8
  %var.load117 = load i64, ptr %var.k, align 8
  %multmp118 = mul i64 %var.load117, 8
  %ptr.int.l119 = ptrtoint ptr %b.ptr116 to i64
  %addtmp120 = add i64 %ptr.int.l119, %multmp118
  %ptr.res121 = inttoptr i64 %addtmp120 to ptr
  %ptr.int.l122 = ptrtoint ptr %ptr.res121 to i64
  %addtmp123 = add i64 %ptr.int.l122, 4
  %ptr.res124 = inttoptr i64 %addtmp123 to ptr
  %var.load125 = load i64, ptr %var.pmask, align 8
  %coerce.trunc126 = trunc i64 %var.load125 to i16
  %raw.int127 = ptrtoint ptr %ptr.res124 to i64
  %raw.clean.int128 = and i64 %raw.int127, 281474976710655
  %raw.clean.ptr129 = inttoptr i64 %raw.clean.int128 to ptr
  %addr.tag130 = lshr i64 %raw.int127, 48
  %addr.immortal131 = icmp eq i64 %addr.tag130, 0
  br i1 %addr.immortal131, label %addr_ok133, label %addr_gen_check132

addr_stale111:                                    ; preds = %addr_gen_check109
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok110

addr_gen_check132:                                ; preds = %addr_ok110
  %arena.cur135 = call ptr @dva_arena_current()
  %tag.valid136 = call i1 @dva_arena_validate_tag(ptr %arena.cur135, i64 %addr.tag130)
  br i1 %tag.valid136, label %addr_ok133, label %addr_stale134

addr_ok133:                                       ; preds = %addr_stale134, %addr_gen_check132, %addr_ok110
  store i16 %coerce.trunc126, ptr %raw.clean.ptr129, align 2
  %var.load137 = load ptr, ptr %var.pfds, align 8
  %b.ptr138 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load137, i32 0, i32 1
  %b.ptr139 = load ptr, ptr %b.ptr138, align 8
  %var.load140 = load i64, ptr %var.k, align 8
  %multmp141 = mul i64 %var.load140, 8
  %ptr.int.l142 = ptrtoint ptr %b.ptr139 to i64
  %addtmp143 = add i64 %ptr.int.l142, %multmp141
  %ptr.res144 = inttoptr i64 %addtmp143 to ptr
  %ptr.int.l145 = ptrtoint ptr %ptr.res144 to i64
  %addtmp146 = add i64 %ptr.int.l145, 6
  %ptr.res147 = inttoptr i64 %addtmp146 to ptr
  %raw.int148 = ptrtoint ptr %ptr.res147 to i64
  %raw.clean.int149 = and i64 %raw.int148, 281474976710655
  %raw.clean.ptr150 = inttoptr i64 %raw.clean.int149 to ptr
  %addr.tag151 = lshr i64 %raw.int148, 48
  %addr.immortal152 = icmp eq i64 %addr.tag151, 0
  br i1 %addr.immortal152, label %addr_ok154, label %addr_gen_check153

addr_stale134:                                    ; preds = %addr_gen_check132
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok133

addr_gen_check153:                                ; preds = %addr_ok133
  %arena.cur156 = call ptr @dva_arena_current()
  %tag.valid157 = call i1 @dva_arena_validate_tag(ptr %arena.cur156, i64 %addr.tag151)
  br i1 %tag.valid157, label %addr_ok154, label %addr_stale155

addr_ok154:                                       ; preds = %addr_stale155, %addr_gen_check153, %addr_ok133
  store i16 0, ptr %raw.clean.ptr150, align 2
  %var.load158 = load ptr, ptr %var.idxs, align 8
  %b.ptr159 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load158, i32 0, i32 1
  %b.ptr160 = load ptr, ptr %b.ptr159, align 8
  %var.load161 = load i64, ptr %var.k, align 8
  %multmp162 = mul i64 %var.load161, 8
  %ptr.int.l163 = ptrtoint ptr %b.ptr160 to i64
  %addtmp164 = add i64 %ptr.int.l163, %multmp162
  %ptr.res165 = inttoptr i64 %addtmp164 to ptr
  %var.load166 = load i64, ptr %var.i, align 8
  %raw.int167 = ptrtoint ptr %ptr.res165 to i64
  %raw.clean.int168 = and i64 %raw.int167, 281474976710655
  %raw.clean.ptr169 = inttoptr i64 %raw.clean.int168 to ptr
  %addr.tag170 = lshr i64 %raw.int167, 48
  %addr.immortal171 = icmp eq i64 %addr.tag170, 0
  br i1 %addr.immortal171, label %addr_ok173, label %addr_gen_check172

addr_stale155:                                    ; preds = %addr_gen_check153
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok154

addr_gen_check172:                                ; preds = %addr_ok154
  %arena.cur175 = call ptr @dva_arena_current()
  %tag.valid176 = call i1 @dva_arena_validate_tag(ptr %arena.cur175, i64 %addr.tag170)
  br i1 %tag.valid176, label %addr_ok173, label %addr_stale174

addr_ok173:                                       ; preds = %addr_stale174, %addr_gen_check172, %addr_ok154
  store i64 %var.load166, ptr %raw.clean.ptr169, align 8
  %var.load177 = load i64, ptr %"var.nfds'", align 8
  %addtmp178 = add i64 %var.load177, 1
  store i64 %addtmp178, ptr %"var.nfds'", align 8
  br label %choice.exit47

addr_stale174:                                    ; preds = %addr_gen_check172
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok173

choice.then186:                                   ; preds = %loop.exit.7
  %var.load188 = load ptr, ptr %"var.res'", align 8
  %a.load189 = load ptr, ptr %"var.res'", align 8
  %a.null190 = icmp eq ptr %a.load189, null
  br i1 %a.null190, label %a.create191, label %a.after192

choice.exit187:                                   ; preds = %ret.dead201, %loop.exit.7
  %var.load202 = load i64, ptr %"var.nfds'", align 8
  store i64 0, ptr %loop.idx.8, align 8
  br label %loop.header.8

a.create191:                                      ; preds = %choice.then186
  %arena.cur193 = call ptr @dva_arena_current()
  %a.create194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 24)
  %arena.cur195 = call ptr @dva_arena_current()
  %a.buf196 = call ptr @dva_arena_alloc(ptr %arena.cur195, i64 128)
  %a.len.gep197 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create194, i32 0, i32 0
  store i64 0, ptr %a.len.gep197, align 8
  %a.data.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create194, i32 0, i32 1
  store ptr %a.buf196, ptr %a.data.gep198, align 8
  %a.cap.gep199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create194, i32 0, i32 2
  store i64 16, ptr %a.cap.gep199, align 8
  store ptr %a.create194, ptr %"var.res'", align 8
  br label %a.after192

a.after192:                                       ; preds = %a.create191, %choice.then186
  %a.load2200 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2200

ret.dead201:                                      ; No predecessors!
  br label %choice.exit187

loop.header.8:                                    ; preds = %loop.latch.8, %choice.exit187
  %counter.load204 = load i64, ptr %loop.idx.8, align 8
  %loop.cond205 = icmp slt i64 %counter.load204, %var.load202
  br i1 %loop.cond205, label %loop.body.8, label %loop.exit.nat.8

loop.body.8:                                      ; preds = %loop.header.8
  %loop.rel.i206 = sub i64 %counter.load204, 0
  store i64 1, ptr %loop.step.8, align 8
  store i64 %loop.rel.i206, ptr %var._i207, align 8
  store i64 %counter.load204, ptr %var._208, align 8
  store i64 %counter.load204, ptr %var.k203, align 8
  %var.load209 = load ptr, ptr %var.pfds, align 8
  %b.ptr210 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load209, i32 0, i32 1
  %b.ptr211 = load ptr, ptr %b.ptr210, align 8
  %var.load212 = load i64, ptr %var.k203, align 8
  %multmp213 = mul i64 %var.load212, 8
  %ptr.int.l214 = ptrtoint ptr %b.ptr211 to i64
  %addtmp215 = add i64 %ptr.int.l214, %multmp213
  %ptr.res216 = inttoptr i64 %addtmp215 to ptr
  %ptr.int.l217 = ptrtoint ptr %ptr.res216 to i64
  %addtmp218 = add i64 %ptr.int.l217, 6
  %ptr.res219 = inttoptr i64 %addtmp218 to ptr
  %raw.int220 = ptrtoint ptr %ptr.res219 to i64
  %raw.clean.int221 = and i64 %raw.int220, 281474976710655
  %raw.clean.ptr222 = inttoptr i64 %raw.clean.int221 to ptr
  %addr.tag223 = lshr i64 %raw.int220, 48
  %addr.immortal224 = icmp eq i64 %addr.tag223, 0
  br i1 %addr.immortal224, label %addr_ok226, label %addr_gen_check225

loop.exit.nat.8:                                  ; preds = %loop.header.8
  br label %loop.exit.8

loop.latch.8:                                     ; preds = %choice.exit235
  %step.val367 = load i64, ptr %loop.step.8, align 8
  %loop.next368 = add i64 %counter.load204, %step.val367
  store i64 %loop.next368, ptr %loop.idx.8, align 8
  br label %loop.header.8

loop.exit.8:                                      ; preds = %loop.exit.nat.8
  %var.load369 = load ptr, ptr %"var.res'", align 8
  %a.load370 = load ptr, ptr %"var.res'", align 8
  %a.null371 = icmp eq ptr %a.load370, null
  br i1 %a.null371, label %a.create372, label %a.after373

addr_gen_check225:                                ; preds = %loop.body.8
  %arena.cur228 = call ptr @dva_arena_current()
  %tag.valid229 = call i1 @dva_arena_validate_tag(ptr %arena.cur228, i64 %addr.tag223)
  br i1 %tag.valid229, label %addr_ok226, label %addr_stale227

addr_ok226:                                       ; preds = %addr_stale227, %addr_gen_check225, %loop.body.8
  %raw.load230 = load volatile i16, ptr %raw.clean.ptr222, align 2
  %coerce.sext = sext i16 %raw.load230 to i64
  %bandtmp231 = and i64 %coerce.sext, 65535
  store i64 %bandtmp231, ptr %var.rev, align 8
  %var.load232 = load i64, ptr %var.rev, align 8
  %cmptmp233 = icmp ne i64 %var.load232, 0
  br i1 %cmptmp233, label %choice.then234, label %choice.exit235

addr_stale227:                                    ; preds = %addr_gen_check225
  %10 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok226

choice.then234:                                   ; preds = %addr_ok226
  %var.load236 = load ptr, ptr %var.idxs, align 8
  %b.ptr237 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load236, i32 0, i32 1
  %b.ptr238 = load ptr, ptr %b.ptr237, align 8
  %var.load239 = load i64, ptr %var.k203, align 8
  %multmp240 = mul i64 %var.load239, 8
  %ptr.int.l241 = ptrtoint ptr %b.ptr238 to i64
  %addtmp242 = add i64 %ptr.int.l241, %multmp240
  %ptr.res243 = inttoptr i64 %addtmp242 to ptr
  %raw.int244 = ptrtoint ptr %ptr.res243 to i64
  %raw.clean.int245 = and i64 %raw.int244, 281474976710655
  %raw.clean.ptr246 = inttoptr i64 %raw.clean.int245 to ptr
  %addr.tag247 = lshr i64 %raw.int244, 48
  %addr.immortal248 = icmp eq i64 %addr.tag247, 0
  br i1 %addr.immortal248, label %addr_ok250, label %addr_gen_check249

choice.exit235:                                   ; preds = %a.store, %addr_ok226
  br label %loop.latch.8

addr_gen_check249:                                ; preds = %choice.then234
  %arena.cur252 = call ptr @dva_arena_current()
  %tag.valid253 = call i1 @dva_arena_validate_tag(ptr %arena.cur252, i64 %addr.tag247)
  br i1 %tag.valid253, label %addr_ok250, label %addr_stale251

addr_ok250:                                       ; preds = %addr_stale251, %addr_gen_check249, %choice.then234
  %raw.load254 = load volatile i64, ptr %raw.clean.ptr246, align 8
  store i64 %raw.load254, ptr %var.slot, align 8
  %var.load255 = load ptr, ptr %var.p, align 8
  %fld.gep256 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load255, i32 0, i32 3
  %fld.load257 = load ptr, ptr %fld.gep256, align 8
  %b.ptr258 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load257, i32 0, i32 1
  %b.ptr259 = load ptr, ptr %b.ptr258, align 8
  %var.load260 = load i64, ptr %var.slot, align 8
  %multmp261 = mul i64 %var.load260, 24
  %ptr.int.l262 = ptrtoint ptr %b.ptr259 to i64
  %addtmp263 = add i64 %ptr.int.l262, %multmp261
  %ptr.res264 = inttoptr i64 %addtmp263 to ptr
  %raw.int265 = ptrtoint ptr %ptr.res264 to i64
  %raw.clean.int266 = and i64 %raw.int265, 281474976710655
  %raw.clean.ptr267 = inttoptr i64 %raw.clean.int266 to ptr
  %addr.tag268 = lshr i64 %raw.int265, 48
  %addr.immortal269 = icmp eq i64 %addr.tag268, 0
  br i1 %addr.immortal269, label %addr_ok271, label %addr_gen_check270

addr_stale251:                                    ; preds = %addr_gen_check249
  %11 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok250

addr_gen_check270:                                ; preds = %addr_ok250
  %arena.cur273 = call ptr @dva_arena_current()
  %tag.valid274 = call i1 @dva_arena_validate_tag(ptr %arena.cur273, i64 %addr.tag268)
  br i1 %tag.valid274, label %addr_ok271, label %addr_stale272

addr_ok271:                                       ; preds = %addr_stale272, %addr_gen_check270, %addr_ok250
  %raw.load275 = load volatile i64, ptr %raw.clean.ptr267, align 8
  store i64 %raw.load275, ptr %var.ev_fd, align 8
  %var.load276 = load ptr, ptr %var.p, align 8
  %fld.gep277 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load276, i32 0, i32 3
  %fld.load278 = load ptr, ptr %fld.gep277, align 8
  %b.ptr279 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load278, i32 0, i32 1
  %b.ptr280 = load ptr, ptr %b.ptr279, align 8
  %var.load281 = load i64, ptr %var.slot, align 8
  %multmp282 = mul i64 %var.load281, 24
  %ptr.int.l283 = ptrtoint ptr %b.ptr280 to i64
  %addtmp284 = add i64 %ptr.int.l283, %multmp282
  %ptr.res285 = inttoptr i64 %addtmp284 to ptr
  %ptr.int.l286 = ptrtoint ptr %ptr.res285 to i64
  %addtmp287 = add i64 %ptr.int.l286, 16
  %ptr.res288 = inttoptr i64 %addtmp287 to ptr
  %raw.int289 = ptrtoint ptr %ptr.res288 to i64
  %raw.clean.int290 = and i64 %raw.int289, 281474976710655
  %raw.clean.ptr291 = inttoptr i64 %raw.clean.int290 to ptr
  %addr.tag292 = lshr i64 %raw.int289, 48
  %addr.immortal293 = icmp eq i64 %addr.tag292, 0
  br i1 %addr.immortal293, label %addr_ok295, label %addr_gen_check294

addr_stale272:                                    ; preds = %addr_gen_check270
  %12 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok271

addr_gen_check294:                                ; preds = %addr_ok271
  %arena.cur297 = call ptr @dva_arena_current()
  %tag.valid298 = call i1 @dva_arena_validate_tag(ptr %arena.cur297, i64 %addr.tag292)
  br i1 %tag.valid298, label %addr_ok295, label %addr_stale296

addr_ok295:                                       ; preds = %addr_stale296, %addr_gen_check294, %addr_ok271
  %raw.load299 = load volatile i64, ptr %raw.clean.ptr291, align 8
  store i64 %raw.load299, ptr %var.ev_udata, align 8
  %var.load300 = load i64, ptr %var.rev, align 8
  %bandtmp301 = and i64 %var.load300, 1
  %cmptmp302 = icmp ne i64 %bandtmp301, 0
  br i1 %cmptmp302, label %choice.then303, label %choice.else304

addr_stale296:                                    ; preds = %addr_gen_check294
  %13 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok295

choice.then303:                                   ; preds = %addr_ok295
  %var.load306 = load i64, ptr @"var.event::READ", align 8
  br label %choice.exit305

choice.else304:                                   ; preds = %addr_ok295
  br label %choice.exit305

choice.exit305:                                   ; preds = %choice.else304, %choice.then303
  %choice.res307 = phi i64 [ %var.load306, %choice.then303 ], [ 0, %choice.else304 ]
  %var.load308 = load i64, ptr %var.rev, align 8
  %bandtmp309 = and i64 %var.load308, 4
  %cmptmp310 = icmp ne i64 %bandtmp309, 0
  br i1 %cmptmp310, label %choice.then311, label %choice.else312

choice.then311:                                   ; preds = %choice.exit305
  %var.load314 = load i64, ptr @"var.event::WRITE", align 8
  br label %choice.exit313

choice.else312:                                   ; preds = %choice.exit305
  br label %choice.exit313

choice.exit313:                                   ; preds = %choice.else312, %choice.then311
  %choice.res315 = phi i64 [ %var.load314, %choice.then311 ], [ 0, %choice.else312 ]
  %bortmp316 = or i64 %choice.res307, %choice.res315
  %var.load317 = load i64, ptr %var.rev, align 8
  %bandtmp318 = and i64 %var.load317, 2
  %cmptmp319 = icmp ne i64 %bandtmp318, 0
  br i1 %cmptmp319, label %choice.then320, label %choice.else321

choice.then320:                                   ; preds = %choice.exit313
  %var.load323 = load i64, ptr @"var.event::PRI", align 8
  br label %choice.exit322

choice.else321:                                   ; preds = %choice.exit313
  br label %choice.exit322

choice.exit322:                                   ; preds = %choice.else321, %choice.then320
  %choice.res324 = phi i64 [ %var.load323, %choice.then320 ], [ 0, %choice.else321 ]
  %bortmp325 = or i64 %bortmp316, %choice.res324
  %var.load326 = load i64, ptr %var.rev, align 8
  %bandtmp327 = and i64 %var.load326, 8
  %cmptmp328 = icmp ne i64 %bandtmp327, 0
  br i1 %cmptmp328, label %choice.then329, label %choice.else330

choice.then329:                                   ; preds = %choice.exit322
  %var.load332 = load i64, ptr @"var.event::ERR", align 8
  br label %choice.exit331

choice.else330:                                   ; preds = %choice.exit322
  br label %choice.exit331

choice.exit331:                                   ; preds = %choice.else330, %choice.then329
  %choice.res333 = phi i64 [ %var.load332, %choice.then329 ], [ 0, %choice.else330 ]
  %bortmp334 = or i64 %bortmp325, %choice.res333
  %var.load335 = load i64, ptr %var.rev, align 8
  %bandtmp336 = and i64 %var.load335, 16
  %cmptmp337 = icmp ne i64 %bandtmp336, 0
  br i1 %cmptmp337, label %choice.then338, label %choice.else339

choice.then338:                                   ; preds = %choice.exit331
  %var.load341 = load i64, ptr @"var.event::HUP", align 8
  br label %choice.exit340

choice.else339:                                   ; preds = %choice.exit331
  br label %choice.exit340

choice.exit340:                                   ; preds = %choice.else339, %choice.then338
  %choice.res342 = phi i64 [ %var.load341, %choice.then338 ], [ 0, %choice.else339 ]
  %bortmp343 = or i64 %bortmp334, %choice.res342
  store i64 %bortmp343, ptr %var.ev_mask, align 8
  %var.load344 = load i64, ptr %var.ev_fd, align 8
  %var.load345 = load i64, ptr %var.ev_mask, align 8
  %var.load346 = load i64, ptr %var.ev_udata, align 8
  %arena.cur347 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load344, ptr %rec.fld, align 8
  %rec.fld348 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load345, ptr %rec.fld348, align 8
  %rec.fld349 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load346, ptr %rec.fld349, align 8
  %a.load350 = load ptr, ptr %"var.res'", align 8
  %a.null351 = icmp eq ptr %a.load350, null
  br i1 %a.null351, label %a.create352, label %a.after353

a.create352:                                      ; preds = %choice.exit340
  %arena.cur354 = call ptr @dva_arena_current()
  %a.create355 = call ptr @dva_arena_alloc(ptr %arena.cur354, i64 24)
  %arena.cur356 = call ptr @dva_arena_current()
  %a.buf357 = call ptr @dva_arena_alloc(ptr %arena.cur356, i64 128)
  %a.len.gep358 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create355, i32 0, i32 0
  store i64 0, ptr %a.len.gep358, align 8
  %a.data.gep359 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create355, i32 0, i32 1
  store ptr %a.buf357, ptr %a.data.gep359, align 8
  %a.cap.gep360 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create355, i32 0, i32 2
  store i64 16, ptr %a.cap.gep360, align 8
  store ptr %a.create355, ptr %"var.res'", align 8
  br label %a.after353

a.after353:                                       ; preds = %a.create352, %choice.exit340
  %a.load2361 = load ptr, ptr %"var.res'", align 8
  br label %a.check

a.check:                                          ; preds = %a.after353
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2361, i32 0, i32 0
  %a.len362 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2361, i32 0, i32 2
  %a.cap363 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len362, %a.cap363
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2361)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2361, i32 0, i32 1
  %a.cur.data364 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2361, i32 0, i32 0
  %a.cur.len365 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data364, i64 %a.cur.len365
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len365, 1
  %b.len.gep366 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2361, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep366, align 8
  br label %choice.exit235

a.create372:                                      ; preds = %loop.exit.8
  %arena.cur374 = call ptr @dva_arena_current()
  %a.create375 = call ptr @dva_arena_alloc(ptr %arena.cur374, i64 24)
  %arena.cur376 = call ptr @dva_arena_current()
  %a.buf377 = call ptr @dva_arena_alloc(ptr %arena.cur376, i64 128)
  %a.len.gep378 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create375, i32 0, i32 0
  store i64 0, ptr %a.len.gep378, align 8
  %a.data.gep379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create375, i32 0, i32 1
  store ptr %a.buf377, ptr %a.data.gep379, align 8
  %a.cap.gep380 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create375, i32 0, i32 2
  store i64 16, ptr %a.cap.gep380, align 8
  store ptr %a.create375, ptr %"var.res'", align 8
  br label %a.after373

a.after373:                                       ; preds = %a.create372, %loop.exit.8
  %a.load2381 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2381
}

define internal void @dva_array_grow(ptr %0) #1 {
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

a.cap25:                                          ; preds = %arr_overflow_abort, %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %arr_overflow_abort9, %a.cap25
  %arena.cur = call ptr @dva_arena_current()
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  %a.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %a.new.buf, ptr %a.new.data.gep, align 8
  %a.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  store i64 %a.new.cap, ptr %a.new.cap.gep, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  %2 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

define void @"event::close"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %nottmp = xor i1 %fld.load, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %fld.gep2 = getelementptr inbounds { i64, i1, i64, ptr, i64 }, ptr %var.load1, i32 0, i32 1
  store i1 true, ptr %fld.gep2, align 1
  br label %choice.exit

choice.exit:                                      ; preds = %choice.then, %entry
  ret void
}

define i1 @"event::is_read"(ptr %0) #1 {
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

define i1 @"event::is_write"(ptr %0) #1 {
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

define i1 @"event::is_err"(ptr %0) #1 {
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

define i1 @"event::is_hup"(ptr %0) #1 {
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

define i1 @"event::poll_in"(i64 %0, i64 %1) #1 {
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

declare i1 @"sys::poll_in"(i64, i64) #1

define i1 @"event::poll_out"(i64 %0, i64 %1) #1 {
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

declare i1 @"sys::poll_out"(i64, i64) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
