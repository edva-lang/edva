; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
@dva_active_gen_tls = external thread_local global i64
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
@dva_thread_rec = external thread_local global ptr
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
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
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

declare ptr @dva_arena_current() #0

declare ptr @dva_arena_set_current(ptr) #0

declare noalias ptr @malloc(i64) #0

declare void @free(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

declare void @dva_arena_init(ptr, i64) #0

declare noalias ptr @dva_arena_alloc(ptr, i64) #0

declare void @dva_arena_destroy(ptr) #0

declare i64 @dva_arena_save(ptr) #0

declare void @dva_arena_restore(ptr, i64) #0

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

declare void @dva_arena_adopt(ptr, ptr) #0

declare i64 @dva_hash_string(ptr, i64)

declare ptr @dva_cov_map_ptr()

declare void @dva_cov_trace(i64)

declare void @__sanitizer_cov_trace_pc_guard(ptr)

declare void @__sanitizer_cov_trace_pc_guard_init(ptr, ptr)

define internal void @__dva_global_init_event() #0 {
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

declare i64 @write(i32, ptr, i64)

declare i64 @writev(i32, ptr, i64)

declare i32 @ioctl(i32, i64, i64, ...)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

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

declare i64 @strlen(ptr) #0

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

define { i1, i64 } @"event::new"() #0 {
entry:
  %call.res = call { i1, i64 } @"event::new_with_cap"(i64 64)
  ret { i1, i64 } %call.res
}

define { i1, i64 } @"event::new_with_cap"(i64 %0) #0 {
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
  %arena.cur = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  %arena.cur4 = call ptr @dva_arena_current()
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

define i1 @"event::add"(ptr %0, i64 %1, i64 %2, i64 %3) #0 {
entry:
  %var.e = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %a.len.query5 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.21, align 8
  br label %loop.header.21

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.21:                                   ; preds = %loop.latch.21, %choice.exit
  %counter.load = load i64, ptr %loop.idx.21, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query5
  br i1 %loop.cond, label %loop.body.21, label %loop.exit.nat.21

loop.body.21:                                     ; preds = %loop.header.21
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.21, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load6 = load ptr, ptr %var.p, align 8
  %fld.gep7 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load6, i32 0, i32 3
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load8, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.21:                                 ; preds = %loop.header.21
  br label %loop.exit.21

loop.latch.21:                                    ; preds = %choice.exit49
  %step.val = load i64, ptr %loop.step.21, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.21, align 8
  br label %loop.header.21

loop.exit.21:                                     ; preds = %loop.exit.nat.21
  %var.load51 = load i1, ptr %"var.dup'", align 1
  br i1 %var.load51, label %choice.then52, label %choice.exit53

a.rd.check:                                       ; preds = %loop.body.21
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load8, i32 0, i32 0
  %a.rd.len10 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load9, 0
  %a.rd.lt = icmp slt i64 %var.load9, %a.rd.len10
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load8, i32 0, i32 1
  %a.rd.data11 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data11, i64 %var.load9
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.21
  %arena.cur = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
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
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur12 = call ptr @dva_arena_current()
  %err.alloc13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 56)
  %err.code.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 0
  store i64 4011, ptr %err.code.gep14, align 8
  %err.msg.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep15, align 8
  %err.file.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep16, align 8
  %err.line.gep17 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 3
  store i64 0, ptr %err.line.gep17, align 8
  %err.col.gep18 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 4
  store i64 0, ptr %err.col.gep18, align 8
  %err.ctx.gep19 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc13, i32 0, i32 5
  %err.ctx0.gep20 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 0
  store i64 %var.load9, ptr %err.ctx0.gep20, align 8
  %err.ctx1.gep21 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep19, i32 0, i32 1
  store i64 %a.rd.len10, ptr %err.ctx1.gep21, align 8
  %err.p2i22 = ptrtoint ptr %err.alloc13 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i22, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.22, label %unwrap.abort.22

unwrap.pos.22:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.e, align 8
  %var.load35 = load ptr, ptr %var.e, align 8
  %fld.gep36 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load35, i32 0, i32 0
  %fld.load37 = load i64, ptr %fld.gep36, align 8
  %var.load38 = load i64, ptr %var.fd, align 8
  %cmptmp39 = icmp eq i64 %fld.load37, %var.load38
  br i1 %cmptmp39, label %choice.then40, label %choice.exit41

unwrap.abort.22:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep23 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep23, align 8
  %err.msg.gep24 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep24, align 8
  %err.file.gep25 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep25, align 8
  %err.line.gep26 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep26, align 8
  %err.col.gep27 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep27, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len28 = load i64, ptr %err.msg.len, align 8
  %err.msg.len29 = and i64 %err.msg.len28, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len29 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data30 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len31 = load i64, ptr %err.file.len, align 8
  %err.file.len32 = and i64 %err.file.len31, 281474976710655
  %err.file.len3233 = trunc i64 %err.file.len32 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data34 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.22
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.22
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data30, i32 %err.file.len3233, ptr %err.file.data34, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then40:                                    ; preds = %unwrap.pos.22
  store i1 true, ptr %"var.dup'", align 1
  br label %choice.exit41

choice.exit41:                                    ; preds = %choice.then40, %unwrap.pos.22
  %var.load42 = load ptr, ptr %var.e, align 8
  %fld.gep43 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load42, i32 0, i32 0
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  %cmptmp45 = icmp slt i64 %fld.load44, 0
  br i1 %cmptmp45, label %and.23.then, label %and.23.else

and.23.then:                                      ; preds = %choice.exit41
  %var.load46 = load i64, ptr %"var.free_slot'", align 8
  %cmptmp47 = icmp slt i64 %var.load46, 0
  br label %and.23.exit

and.23.else:                                      ; preds = %choice.exit41
  br label %and.23.exit

and.23.exit:                                      ; preds = %and.23.else, %and.23.then
  %and.23.phi = phi i1 [ %cmptmp47, %and.23.then ], [ %cmptmp45, %and.23.else ]
  br i1 %and.23.phi, label %choice.then48, label %choice.exit49

choice.then48:                                    ; preds = %and.23.exit
  %var.load50 = load i64, ptr %var.i, align 8
  store i64 %var.load50, ptr %"var.free_slot'", align 8
  br label %choice.exit49

choice.exit49:                                    ; preds = %choice.then48, %and.23.exit
  br label %loop.latch.21

choice.then52:                                    ; preds = %loop.exit.21
  ret i1 false

choice.exit53:                                    ; preds = %ret.dead54, %loop.exit.21
  %var.load55 = load i64, ptr %"var.free_slot'", align 8
  %cmptmp56 = icmp sge i64 %var.load55, 0
  br i1 %cmptmp56, label %choice.then57, label %choice.else

ret.dead54:                                       ; No predecessors!
  br label %choice.exit53

choice.then57:                                    ; preds = %choice.exit53
  %var.load59 = load ptr, ptr %var.p, align 8
  %fld.gep60 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load59, i32 0, i32 3
  %fld.load61 = load ptr, ptr %fld.gep60, align 8
  %var.load62 = load i64, ptr %"var.free_slot'", align 8
  %var.load63 = load i64, ptr %var.fd, align 8
  %var.load64 = load i64, ptr %var.mask, align 8
  %var.load65 = load i64, ptr %var.user_data, align 8
  %arena.cur66 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load63, ptr %rec.fld, align 8
  %rec.fld67 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load64, ptr %rec.fld67, align 8
  %rec.fld68 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load65, ptr %rec.fld68, align 8
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  %a.wr.nonnull = icmp ne ptr %fld.load61, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

choice.else:                                      ; preds = %choice.exit53
  %var.load91 = load ptr, ptr %var.p, align 8
  %fld.gep92 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load91, i32 0, i32 3
  %fld.load93 = load ptr, ptr %fld.gep92, align 8
  %a.len.query94 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load93, i32 0, i32 0
  %a.len.query95 = load i64, ptr %a.len.query94, align 8
  %var.load96 = load ptr, ptr %var.p, align 8
  %fld.gep97 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load96, i32 0, i32 2
  %fld.load98 = load i64, ptr %fld.gep97, align 8
  %cmptmp99 = icmp slt i64 %a.len.query95, %fld.load98
  br i1 %cmptmp99, label %choice.then100, label %choice.else101

choice.exit58:                                    ; preds = %choice.exit102, %a.wr.done
  %choice.res119 = phi i1 [ true, %a.wr.done ], [ %choice.res, %choice.exit102 ]
  ret i1 %choice.res119

a.wr.check:                                       ; preds = %choice.then57
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load61, i32 0, i32 0
  %a.wr.len69 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load62, 0
  %a.wr.lt = icmp slt i64 %var.load62, %a.wr.len69
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load61, i32 0, i32 1
  %a.wr.data70 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep = getelementptr i64, ptr %a.wr.data70, i64 %var.load62
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %choice.then57
  %arena.cur71 = call ptr @dva_arena_current()
  %err.alloc72 = call ptr @dva_arena_alloc(ptr %arena.cur71, i64 56)
  %err.code.gep73 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 0
  store i64 4011, ptr %err.code.gep73, align 8
  %err.msg.gep74 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep74, align 8
  %err.file.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep75, align 8
  %err.line.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 3
  store i64 0, ptr %err.line.gep76, align 8
  %err.col.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 4
  store i64 0, ptr %err.col.gep77, align 8
  %err.ctx.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc72, i32 0, i32 5
  %err.ctx0.gep79 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep78, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep79, align 8
  %err.ctx1.gep80 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep78, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep80, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur81 = call ptr @dva_arena_current()
  %err.alloc82 = call ptr @dva_arena_alloc(ptr %arena.cur81, i64 56)
  %err.code.gep83 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 0
  store i64 4011, ptr %err.code.gep83, align 8
  %err.msg.gep84 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep84, align 8
  %err.file.gep85 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep85, align 8
  %err.line.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 3
  store i64 0, ptr %err.line.gep86, align 8
  %err.col.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 4
  store i64 0, ptr %err.col.gep87, align 8
  %err.ctx.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc82, i32 0, i32 5
  %err.ctx0.gep89 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep88, i32 0, i32 0
  store i64 %var.load62, ptr %err.ctx0.gep89, align 8
  %err.ctx1.gep90 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep88, i32 0, i32 1
  store i64 %a.wr.len69, ptr %err.ctx1.gep90, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc72, %a.wr.err.null ], [ %err.alloc82, %a.wr.err.oob ]
  br label %choice.exit58

choice.then100:                                   ; preds = %choice.else
  %var.load103 = load ptr, ptr %var.p, align 8
  %var.load104 = load i64, ptr %var.fd, align 8
  %var.load105 = load i64, ptr %var.mask, align 8
  %var.load106 = load i64, ptr %var.user_data, align 8
  %arena.cur107 = call ptr @dva_arena_current()
  %rec.alloc108 = call ptr @dva_arena_alloc(ptr %arena.cur107, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld109 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc108, i32 0, i32 0
  store i64 %var.load104, ptr %rec.fld109, align 8
  %rec.fld110 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc108, i32 0, i32 1
  store i64 %var.load105, ptr %rec.fld110, align 8
  %rec.fld111 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc108, i32 0, i32 2
  store i64 %var.load106, ptr %rec.fld111, align 8
  %fld.gep112 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load103, i32 0, i32 3
  %a.fld.load = load ptr, ptr %fld.gep112, align 8
  br label %a.check

choice.else101:                                   ; preds = %choice.else
  br label %choice.exit102

choice.exit102:                                   ; preds = %choice.else101, %a.store
  %choice.res = phi i1 [ true, %a.store ], [ false, %choice.else101 ]
  br label %choice.exit58

a.check:                                          ; preds = %choice.then100
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.len113 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 2
  %a.cap114 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len113, %a.cap114
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.fld.load)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 1
  %a.cur.data115 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  %a.cur.len116 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep117 = getelementptr i64, ptr %a.cur.data115, i64 %a.cur.len116
  %slot.p2i118 = ptrtoint ptr %rec.alloc108 to i64
  store i64 %slot.p2i118, ptr %a.elem.gep117, align 8
  %a.next.len = add i64 %a.cur.len116, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.fld.load, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit102
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define internal void @dva_array_grow(ptr %0) #0 {
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
  %1 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %a.cap25

a.grow.bytes8:                                    ; preds = %abort.dead10, %a.cap25
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
  unreachable

abort.dead10:                                     ; No predecessors!
  br label %a.grow.bytes8
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

define i1 @"event::add_fd"(ptr %0, i64 %1, i64 %2) #0 {
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

define i1 @"event::mod"(ptr %0, i64 %1, i64 %2, i64 %3) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.25 = alloca i64, align 8
  %loop.idx.25 = alloca i64, align 8
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
  br i1 %fld.load, label %or.24.then, label %or.24.else

or.24.then:                                       ; preds = %entry
  br label %or.24.exit

or.24.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.24.exit

or.24.exit:                                       ; preds = %or.24.else, %or.24.then
  %or.24.phi = phi i1 [ %fld.load, %or.24.then ], [ %cmptmp, %or.24.else ]
  br i1 %or.24.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.24.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.24.exit
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %arr.cycle.len5 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.25, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.25

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.25:                                   ; preds = %loop.latch.25, %choice.exit
  %counter.load = load i64, ptr %loop.idx.25, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.25, label %loop.exit.nat.25

loop.body.25:                                     ; preds = %loop.header.25
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.25, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load7 = load ptr, ptr %var.e, align 8
  %fld.gep8 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %var.load10 = load i64, ptr %var.fd, align 8
  %cmptmp11 = icmp eq i64 %fld.load9, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

loop.exit.nat.25:                                 ; preds = %loop.header.25
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.25

loop.latch.25:                                    ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.25, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.25, align 8
  br label %loop.header.25

loop.exit.25:                                     ; preds = %loop.exit.nat.25
  ret i1 false

choice.then12:                                    ; preds = %loop.body.25
  %var.load14 = load ptr, ptr %var.p, align 8
  %fld.gep15 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load14, i32 0, i32 3
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %var.load18 = load i64, ptr %var.fd, align 8
  %var.load19 = load i64, ptr %var.mask, align 8
  %var.load20 = load i64, ptr %var.user_data, align 8
  %arena.cur = call ptr @dva_arena_current()
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

choice.exit13:                                    ; preds = %ret.dead36, %loop.body.25
  br label %loop.latch.25

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
  %arena.cur25 = call ptr @dva_arena_current()
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
  %arena.cur26 = call ptr @dva_arena_current()
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

define i1 @"event::mod_fd"(ptr %0, i64 %1, i64 %2) #0 {
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

define i1 @"event::del"(ptr %0, i64 %1) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.27 = alloca i64, align 8
  %loop.idx.27 = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %or.26.then, label %or.26.else

or.26.then:                                       ; preds = %entry
  br label %or.26.exit

or.26.else:                                       ; preds = %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load1, 0
  br label %or.26.exit

or.26.exit:                                       ; preds = %or.26.else, %or.26.then
  %or.26.phi = phi i1 [ %fld.load, %or.26.then ], [ %cmptmp, %or.26.else ]
  br i1 %or.26.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %or.26.exit
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %or.26.exit
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load2, i32 0, i32 3
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 0
  %arr.cycle.len5 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load4, i32 0, i32 1
  %arr.cycle.data6 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.27, align 8
  store i64 0, ptr %var.i, align 8
  br label %loop.header.27

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.27:                                   ; preds = %loop.latch.27, %choice.exit
  %counter.load = load i64, ptr %loop.idx.27, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len5
  br i1 %loop.cond, label %loop.body.27, label %loop.exit.nat.27

loop.body.27:                                     ; preds = %loop.header.27
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.27, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data6, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load7 = load ptr, ptr %var.e, align 8
  %fld.gep8 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load7, i32 0, i32 0
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %var.load10 = load i64, ptr %var.fd, align 8
  %cmptmp11 = icmp eq i64 %fld.load9, %var.load10
  br i1 %cmptmp11, label %choice.then12, label %choice.exit13

loop.exit.nat.27:                                 ; preds = %loop.header.27
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.27

loop.latch.27:                                    ; preds = %choice.exit13
  %step.val = load i64, ptr %loop.step.27, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.27, align 8
  br label %loop.header.27

loop.exit.27:                                     ; preds = %loop.exit.nat.27
  ret i1 false

choice.then12:                                    ; preds = %loop.body.27
  %var.load14 = load ptr, ptr %var.p, align 8
  %fld.gep15 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load14, i32 0, i32 3
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %var.load17 = load i64, ptr %var.i, align 8
  %arena.cur = call ptr @dva_arena_current()
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

choice.exit13:                                    ; preds = %ret.dead33, %loop.body.27
  br label %loop.latch.27

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
  %arena.cur22 = call ptr @dva_arena_current()
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
  %arena.cur23 = call ptr @dva_arena_current()
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

define ptr @"event::wait"(ptr %0, i64 %1) #0 {
entry:
  %var.ev_mask = alloca i64, align 8
  %var.ev = alloca ptr, align 8
  %var.slot = alloca i64, align 8
  %var.rev = alloca i64, align 8
  %var._197 = alloca i64, align 8
  %var._i196 = alloca i64, align 8
  %var.k192 = alloca i64, align 8
  %loop.step.31 = alloca i64, align 8
  %loop.idx.31 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.pmask = alloca i64, align 8
  %var.emask = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
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

b.buf.len14:                                      ; preds = %abort.dead, %choice.exit
  %arena.cur15 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.pfds, align 8
  %arena.cur16 = call ptr @dva_arena_current()
  %a.new17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = call ptr @dva_arena_current()
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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 0
  %a.len.query26 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len14

loop.header.29:                                   ; preds = %loop.latch.29, %b.buf.len14
  %counter.load = load i64, ptr %loop.idx.29, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query26
  br i1 %loop.cond, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load27 = load ptr, ptr %var.p, align 8
  %fld.gep28 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load27, i32 0, i32 3
  %fld.load29 = load ptr, ptr %fld.gep28, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load29, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit60
  %step.val = load i64, ptr %loop.step.29, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  %var.load168 = load ptr, ptr %var.pfds, align 8
  %b.ptr169 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load168, i32 0, i32 1
  %b.ptr170 = load ptr, ptr %b.ptr169, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr170 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load171 = load i64, ptr %"var.nfds'", align 8
  %var.load172 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @poll(ptr %addr.ffi.clean, i64 %var.load171, i64 %var.load172)
  store i64 %call.res, ptr %var.n, align 8
  %var.load173 = load i64, ptr %var.n, align 8
  %cmptmp174 = icmp sle i64 %var.load173, 0
  br i1 %cmptmp174, label %choice.then175, label %choice.exit176

a.rd.check:                                       ; preds = %loop.body.29
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load29, i32 0, i32 0
  %a.rd.len31 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load30, 0
  %a.rd.lt = icmp slt i64 %var.load30, %a.rd.len31
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load29, i32 0, i32 1
  %a.rd.data32 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data32, i64 %var.load30
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.29
  %arena.cur33 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 56)
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
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur34 = call ptr @dva_arena_current()
  %err.alloc35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 56)
  %err.code.gep36 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 0
  store i64 4011, ptr %err.code.gep36, align 8
  %err.msg.gep37 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep37, align 8
  %err.file.gep38 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep38, align 8
  %err.line.gep39 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 3
  store i64 0, ptr %err.line.gep39, align 8
  %err.col.gep40 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 4
  store i64 0, ptr %err.col.gep40, align 8
  %err.ctx.gep41 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc35, i32 0, i32 5
  %err.ctx0.gep42 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep41, i32 0, i32 0
  store i64 %var.load30, ptr %err.ctx0.gep42, align 8
  %err.ctx1.gep43 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep41, i32 0, i32 1
  store i64 %a.rd.len31, ptr %err.ctx1.gep43, align 8
  %err.p2i44 = ptrtoint ptr %err.alloc35 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i44, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.30, label %unwrap.abort.30

unwrap.pos.30:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.e, align 8
  %var.load56 = load ptr, ptr %var.e, align 8
  %fld.gep57 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load56, i32 0, i32 0
  %fld.load58 = load i64, ptr %fld.gep57, align 8
  %cmptmp = icmp sge i64 %fld.load58, 0
  br i1 %cmptmp, label %choice.then59, label %choice.exit60

unwrap.abort.30:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep45, align 8
  %err.msg.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep46, align 8
  %err.file.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep47, align 8
  %err.line.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep48, align 8
  %err.col.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep49, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len50 = load i64, ptr %err.msg.len, align 8
  %err.msg.len51 = and i64 %err.msg.len50, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len51 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data52 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len53 = load i64, ptr %err.file.len, align 8
  %err.file.len54 = and i64 %err.file.len53, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len54 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data55 = load ptr, ptr %err.file.data, align 8
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
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data52, i32 %err.file.len32, ptr %err.file.data55, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then59:                                    ; preds = %unwrap.pos.30
  %var.load61 = load ptr, ptr %var.e, align 8
  %fld.gep62 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load61, i32 0, i32 1
  %fld.load63 = load i64, ptr %fld.gep62, align 8
  store i64 %fld.load63, ptr %var.emask, align 8
  %var.load64 = load i64, ptr %var.emask, align 8
  %var.load65 = load i64, ptr @"var.event::READ", align 8
  %bandtmp = and i64 %var.load64, %var.load65
  %cmptmp66 = icmp ne i64 %bandtmp, 0
  br i1 %cmptmp66, label %choice.then67, label %choice.else

choice.exit60:                                    ; preds = %a.store, %unwrap.pos.30
  br label %loop.latch.29

choice.then67:                                    ; preds = %choice.then59
  br label %choice.exit68

choice.else:                                      ; preds = %choice.then59
  br label %choice.exit68

choice.exit68:                                    ; preds = %choice.else, %choice.then67
  %choice.res = phi i64 [ 1, %choice.then67 ], [ 0, %choice.else ]
  %var.load69 = load i64, ptr %var.emask, align 8
  %var.load70 = load i64, ptr @"var.event::WRITE", align 8
  %bandtmp71 = and i64 %var.load69, %var.load70
  %cmptmp72 = icmp ne i64 %bandtmp71, 0
  br i1 %cmptmp72, label %choice.then73, label %choice.else74

choice.then73:                                    ; preds = %choice.exit68
  br label %choice.exit75

choice.else74:                                    ; preds = %choice.exit68
  br label %choice.exit75

choice.exit75:                                    ; preds = %choice.else74, %choice.then73
  %choice.res76 = phi i64 [ 4, %choice.then73 ], [ 0, %choice.else74 ]
  %bortmp = or i64 %choice.res, %choice.res76
  %var.load77 = load i64, ptr %var.emask, align 8
  %var.load78 = load i64, ptr @"var.event::PRI", align 8
  %bandtmp79 = and i64 %var.load77, %var.load78
  %cmptmp80 = icmp ne i64 %bandtmp79, 0
  br i1 %cmptmp80, label %choice.then81, label %choice.else82

choice.then81:                                    ; preds = %choice.exit75
  br label %choice.exit83

choice.else82:                                    ; preds = %choice.exit75
  br label %choice.exit83

choice.exit83:                                    ; preds = %choice.else82, %choice.then81
  %choice.res84 = phi i64 [ 2, %choice.then81 ], [ 0, %choice.else82 ]
  %bortmp85 = or i64 %bortmp, %choice.res84
  store i64 %bortmp85, ptr %var.pmask, align 8
  %var.load86 = load i64, ptr %"var.nfds'", align 8
  store i64 %var.load86, ptr %var.k, align 8
  %var.load87 = load ptr, ptr %var.pfds, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load87, i32 0, i32 1
  %b.ptr88 = load ptr, ptr %b.ptr, align 8
  %var.load89 = load i64, ptr %var.k, align 8
  %multmp90 = mul i64 %var.load89, 8
  %ptr.int.l = ptrtoint ptr %b.ptr88 to i64
  %addtmp = add i64 %ptr.int.l, %multmp90
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load91 = load ptr, ptr %var.e, align 8
  %fld.gep92 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load91, i32 0, i32 0
  %fld.load93 = load i64, ptr %fld.gep92, align 8
  %coerce.trunc = trunc i64 %fld.load93 to i32
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead95, %tag.slow_check, %tag.gen_check, %choice.exit83
  store i32 %coerce.trunc, ptr %raw.clean.ptr, align 4
  %var.load96 = load ptr, ptr %var.pfds, align 8
  %b.ptr97 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load96, i32 0, i32 1
  %b.ptr98 = load ptr, ptr %b.ptr97, align 8
  %var.load99 = load i64, ptr %var.k, align 8
  %multmp100 = mul i64 %var.load99, 8
  %ptr.int.l101 = ptrtoint ptr %b.ptr98 to i64
  %addtmp102 = add i64 %ptr.int.l101, %multmp100
  %ptr.res103 = inttoptr i64 %addtmp102 to ptr
  %ptr.int.l104 = ptrtoint ptr %ptr.res103 to i64
  %addtmp105 = add i64 %ptr.int.l104, 4
  %ptr.res106 = inttoptr i64 %addtmp105 to ptr
  %var.load107 = load i64, ptr %var.pmask, align 8
  %coerce.trunc108 = trunc i64 %var.load107 to i16
  %raw.int109 = ptrtoint ptr %ptr.res106 to i64
  %raw.clean.int110 = and i64 %raw.int109, 281474976710655
  %raw.clean.ptr111 = inttoptr i64 %raw.clean.int110 to ptr
  %addr.tag112 = lshr i64 %raw.int109, 48
  %tag.immortal114 = icmp eq i64 %addr.tag112, 0
  br i1 %tag.immortal114, label %addr_ok113, label %tag.gen_check115

tag.gen_check:                                    ; preds = %choice.exit83
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur94 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur94, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead95:                                     ; No predecessors!
  br label %addr_ok

addr_ok113:                                       ; preds = %abort.dead122, %tag.slow_check116, %tag.gen_check115, %addr_ok
  store i16 %coerce.trunc108, ptr %raw.clean.ptr111, align 2
  %var.load123 = load ptr, ptr %var.pfds, align 8
  %b.ptr124 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load123, i32 0, i32 1
  %b.ptr125 = load ptr, ptr %b.ptr124, align 8
  %var.load126 = load i64, ptr %var.k, align 8
  %multmp127 = mul i64 %var.load126, 8
  %ptr.int.l128 = ptrtoint ptr %b.ptr125 to i64
  %addtmp129 = add i64 %ptr.int.l128, %multmp127
  %ptr.res130 = inttoptr i64 %addtmp129 to ptr
  %ptr.int.l131 = ptrtoint ptr %ptr.res130 to i64
  %addtmp132 = add i64 %ptr.int.l131, 6
  %ptr.res133 = inttoptr i64 %addtmp132 to ptr
  %raw.int134 = ptrtoint ptr %ptr.res133 to i64
  %raw.clean.int135 = and i64 %raw.int134, 281474976710655
  %raw.clean.ptr136 = inttoptr i64 %raw.clean.int135 to ptr
  %addr.tag137 = lshr i64 %raw.int134, 48
  %tag.immortal139 = icmp eq i64 %addr.tag137, 0
  br i1 %tag.immortal139, label %addr_ok138, label %tag.gen_check140

tag.gen_check115:                                 ; preds = %addr_ok
  %active.gen118 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok119 = icmp eq i64 %addr.tag112, %active.gen118
  br i1 %tag.fast.ok119, label %addr_ok113, label %tag.slow_check116

tag.slow_check116:                                ; preds = %tag.gen_check115
  %arena.cur120 = call ptr @dva_arena_current()
  %tag.valid121 = call i1 @dva_arena_validate_tag(ptr %arena.cur120, i64 %addr.tag112)
  br i1 %tag.valid121, label %addr_ok113, label %tag.stale117

tag.stale117:                                     ; preds = %tag.slow_check116
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead122:                                    ; No predecessors!
  br label %addr_ok113

addr_ok138:                                       ; preds = %abort.dead147, %tag.slow_check141, %tag.gen_check140, %addr_ok113
  store i16 0, ptr %raw.clean.ptr136, align 2
  %var.load148 = load i64, ptr %var.i, align 8
  %a.load149 = load ptr, ptr %var.idxs, align 8
  %a.null150 = icmp eq ptr %a.load149, null
  br i1 %a.null150, label %a.create151, label %a.after152

tag.gen_check140:                                 ; preds = %addr_ok113
  %active.gen143 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok144 = icmp eq i64 %addr.tag137, %active.gen143
  br i1 %tag.fast.ok144, label %addr_ok138, label %tag.slow_check141

tag.slow_check141:                                ; preds = %tag.gen_check140
  %arena.cur145 = call ptr @dva_arena_current()
  %tag.valid146 = call i1 @dva_arena_validate_tag(ptr %arena.cur145, i64 %addr.tag137)
  br i1 %tag.valid146, label %addr_ok138, label %tag.stale142

tag.stale142:                                     ; preds = %tag.slow_check141
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead147:                                    ; No predecessors!
  br label %addr_ok138

a.create151:                                      ; preds = %addr_ok138
  %arena.cur153 = call ptr @dva_arena_current()
  %a.create154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 24)
  %arena.cur155 = call ptr @dva_arena_current()
  %a.buf156 = call ptr @dva_arena_alloc(ptr %arena.cur155, i64 128)
  %a.len.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create154, i32 0, i32 0
  store i64 0, ptr %a.len.gep157, align 8
  %a.data.gep158 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create154, i32 0, i32 1
  store ptr %a.buf156, ptr %a.data.gep158, align 8
  %a.cap.gep159 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create154, i32 0, i32 2
  store i64 16, ptr %a.cap.gep159, align 8
  store ptr %a.create154, ptr %var.idxs, align 8
  br label %a.after152

a.after152:                                       ; preds = %a.create151, %addr_ok138
  %a.load2160 = load ptr, ptr %var.idxs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after152
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 0
  %a.len161 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 2
  %a.cap162 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len161, %a.cap162
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2160)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 1
  %a.cur.data163 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 0
  %a.cur.len164 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data163, i64 %a.cur.len164
  store i64 %var.load148, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len164, 1
  %b.len.gep165 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2160, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep165, align 8
  %var.load166 = load i64, ptr %"var.nfds'", align 8
  %addtmp167 = add i64 %var.load166, 1
  store i64 %addtmp167, ptr %"var.nfds'", align 8
  br label %choice.exit60

choice.then175:                                   ; preds = %loop.exit.29
  %var.load177 = load ptr, ptr %"var.res'", align 8
  %a.load178 = load ptr, ptr %"var.res'", align 8
  %a.null179 = icmp eq ptr %a.load178, null
  br i1 %a.null179, label %a.create180, label %a.after181

choice.exit176:                                   ; preds = %ret.dead190, %loop.exit.29
  %var.load191 = load i64, ptr %"var.nfds'", align 8
  store i64 0, ptr %loop.idx.31, align 8
  br label %loop.header.31

a.create180:                                      ; preds = %choice.then175
  %arena.cur182 = call ptr @dva_arena_current()
  %a.create183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 24)
  %arena.cur184 = call ptr @dva_arena_current()
  %a.buf185 = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 128)
  %a.len.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 0
  store i64 0, ptr %a.len.gep186, align 8
  %a.data.gep187 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 1
  store ptr %a.buf185, ptr %a.data.gep187, align 8
  %a.cap.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create183, i32 0, i32 2
  store i64 16, ptr %a.cap.gep188, align 8
  store ptr %a.create183, ptr %"var.res'", align 8
  br label %a.after181

a.after181:                                       ; preds = %a.create180, %choice.then175
  %a.load2189 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2189

ret.dead190:                                      ; No predecessors!
  br label %choice.exit176

loop.header.31:                                   ; preds = %loop.latch.31, %choice.exit176
  %counter.load193 = load i64, ptr %loop.idx.31, align 8
  %loop.cond194 = icmp slt i64 %counter.load193, %var.load191
  br i1 %loop.cond194, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i195 = sub i64 %counter.load193, 0
  store i64 1, ptr %loop.step.31, align 8
  store i64 %loop.rel.i195, ptr %var._i196, align 8
  store i64 %counter.load193, ptr %var._197, align 8
  store i64 %counter.load193, ptr %var.k192, align 8
  %var.load198 = load ptr, ptr %var.pfds, align 8
  %b.ptr199 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load198, i32 0, i32 1
  %b.ptr200 = load ptr, ptr %b.ptr199, align 8
  %var.load201 = load i64, ptr %var.k192, align 8
  %multmp202 = mul i64 %var.load201, 8
  %ptr.int.l203 = ptrtoint ptr %b.ptr200 to i64
  %addtmp204 = add i64 %ptr.int.l203, %multmp202
  %ptr.res205 = inttoptr i64 %addtmp204 to ptr
  %ptr.int.l206 = ptrtoint ptr %ptr.res205 to i64
  %addtmp207 = add i64 %ptr.int.l206, 6
  %ptr.res208 = inttoptr i64 %addtmp207 to ptr
  %raw.int209 = ptrtoint ptr %ptr.res208 to i64
  %raw.clean.int210 = and i64 %raw.int209, 281474976710655
  %raw.clean.ptr211 = inttoptr i64 %raw.clean.int210 to ptr
  %addr.tag212 = lshr i64 %raw.int209, 48
  %tag.immortal214 = icmp eq i64 %addr.tag212, 0
  br i1 %tag.immortal214, label %addr_ok213, label %tag.gen_check215

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit227
  %step.val476 = load i64, ptr %loop.step.31, align 8
  %loop.next477 = add i64 %counter.load193, %step.val476
  store i64 %loop.next477, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %loop.exit.nat.31
  %var.load478 = load ptr, ptr %"var.res'", align 8
  %a.load479 = load ptr, ptr %"var.res'", align 8
  %a.null480 = icmp eq ptr %a.load479, null
  br i1 %a.null480, label %a.create481, label %a.after482

addr_ok213:                                       ; preds = %abort.dead222, %tag.slow_check216, %tag.gen_check215, %loop.body.31
  %raw.load = load volatile i16, ptr %raw.clean.ptr211, align 2
  %coerce.sext = sext i16 %raw.load to i64
  %bandtmp223 = and i64 %coerce.sext, 65535
  store i64 %bandtmp223, ptr %var.rev, align 8
  %var.load224 = load i64, ptr %var.rev, align 8
  %cmptmp225 = icmp ne i64 %var.load224, 0
  br i1 %cmptmp225, label %choice.then226, label %choice.exit227

tag.gen_check215:                                 ; preds = %loop.body.31
  %active.gen218 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok219 = icmp eq i64 %addr.tag212, %active.gen218
  br i1 %tag.fast.ok219, label %addr_ok213, label %tag.slow_check216

tag.slow_check216:                                ; preds = %tag.gen_check215
  %arena.cur220 = call ptr @dva_arena_current()
  %tag.valid221 = call i1 @dva_arena_validate_tag(ptr %arena.cur220, i64 %addr.tag212)
  br i1 %tag.valid221, label %addr_ok213, label %tag.stale217

tag.stale217:                                     ; preds = %tag.slow_check216
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead222:                                    ; No predecessors!
  br label %addr_ok213

choice.then226:                                   ; preds = %addr_ok213
  %var.load228 = load ptr, ptr %var.idxs, align 8
  %a.load229 = load ptr, ptr %var.idxs, align 8
  %a.null230 = icmp eq ptr %a.load229, null
  br i1 %a.null230, label %a.create231, label %a.after232

choice.exit227:                                   ; preds = %a.store463, %addr_ok213
  br label %loop.latch.31

a.create231:                                      ; preds = %choice.then226
  %arena.cur233 = call ptr @dva_arena_current()
  %a.create234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 24)
  %arena.cur235 = call ptr @dva_arena_current()
  %a.buf236 = call ptr @dva_arena_alloc(ptr %arena.cur235, i64 128)
  %a.len.gep237 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create234, i32 0, i32 0
  store i64 0, ptr %a.len.gep237, align 8
  %a.data.gep238 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create234, i32 0, i32 1
  store ptr %a.buf236, ptr %a.data.gep238, align 8
  %a.cap.gep239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create234, i32 0, i32 2
  store i64 16, ptr %a.cap.gep239, align 8
  store ptr %a.create234, ptr %var.idxs, align 8
  br label %a.after232

a.after232:                                       ; preds = %a.create231, %choice.then226
  %a.load2240 = load ptr, ptr %var.idxs, align 8
  %var.load241 = load i64, ptr %var.k192, align 8
  %a.rd.nonnull242 = icmp ne ptr %a.load2240, null
  br i1 %a.rd.nonnull242, label %a.rd.check243, label %a.rd.err.null245

a.rd.check243:                                    ; preds = %a.after232
  %a.rd.len248 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2240, i32 0, i32 0
  %a.rd.len249 = load i64, ptr %a.rd.len248, align 8
  %a.rd.ge0250 = icmp sge i64 %var.load241, 0
  %a.rd.lt251 = icmp slt i64 %var.load241, %a.rd.len249
  %a.rd.bounds252 = and i1 %a.rd.ge0250, %a.rd.lt251
  br i1 %a.rd.bounds252, label %a.rd.ok244, label %a.rd.err.oob246

a.rd.ok244:                                       ; preds = %a.rd.check243
  %a.rd.data253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2240, i32 0, i32 1
  %a.rd.data254 = load ptr, ptr %a.rd.data253, align 8
  %a.rd.elem.gep255 = getelementptr i64, ptr %a.rd.data254, i64 %var.load241
  %a.rd.elem256 = load i64, ptr %a.rd.elem.gep255, align 8
  br label %a.rd.done247

a.rd.err.null245:                                 ; preds = %a.after232
  %arena.cur257 = call ptr @dva_arena_current()
  %err.alloc258 = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 56)
  %err.code.gep259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 0
  store i64 4011, ptr %err.code.gep259, align 8
  %err.msg.gep260 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep260, align 8
  %err.file.gep261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep261, align 8
  %err.line.gep262 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 3
  store i64 142, ptr %err.line.gep262, align 8
  %err.col.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 4
  store i64 30, ptr %err.col.gep263, align 8
  %err.ctx.gep264 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc258, i32 0, i32 5
  %err.ctx0.gep265 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep264, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep265, align 8
  %err.ctx1.gep266 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep264, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep266, align 8
  %err.p2i267 = ptrtoint ptr %err.alloc258 to i64
  br label %a.rd.done247

a.rd.err.oob246:                                  ; preds = %a.rd.check243
  %arena.cur268 = call ptr @dva_arena_current()
  %err.alloc269 = call ptr @dva_arena_alloc(ptr %arena.cur268, i64 56)
  %err.code.gep270 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 0
  store i64 4011, ptr %err.code.gep270, align 8
  %err.msg.gep271 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep271, align 8
  %err.file.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep272, align 8
  %err.line.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 3
  store i64 142, ptr %err.line.gep273, align 8
  %err.col.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 4
  store i64 30, ptr %err.col.gep274, align 8
  %err.ctx.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc269, i32 0, i32 5
  %err.ctx0.gep276 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep275, i32 0, i32 0
  store i64 %var.load241, ptr %err.ctx0.gep276, align 8
  %err.ctx1.gep277 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep275, i32 0, i32 1
  store i64 %a.rd.len249, ptr %err.ctx1.gep277, align 8
  %err.p2i278 = ptrtoint ptr %err.alloc269 to i64
  br label %a.rd.done247

a.rd.done247:                                     ; preds = %a.rd.err.oob246, %a.rd.err.null245, %a.rd.ok244
  %a.rd.tag279 = phi i1 [ true, %a.rd.ok244 ], [ false, %a.rd.err.null245 ], [ false, %a.rd.err.oob246 ]
  %a.rd.pay280 = phi i64 [ %a.rd.elem256, %a.rd.ok244 ], [ %err.p2i267, %a.rd.err.null245 ], [ %err.p2i278, %a.rd.err.oob246 ]
  %ram.tag281 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag279, 0
  %ram.pay282 = insertvalue { i1, i64 } %ram.tag281, i64 %a.rd.pay280, 1
  %unwrap.is_pos283 = extractvalue { i1, i64 } %ram.pay282, 0
  br i1 %unwrap.is_pos283, label %unwrap.pos.32, label %unwrap.abort.32

unwrap.pos.32:                                    ; preds = %a.rd.done247
  %unwrap.pay.pos315 = extractvalue { i1, i64 } %ram.pay282, 1
  store i64 %unwrap.pay.pos315, ptr %var.slot, align 8
  %var.load316 = load ptr, ptr %var.p, align 8
  %fld.gep317 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load316, i32 0, i32 3
  %fld.load318 = load ptr, ptr %fld.gep317, align 8
  %var.load319 = load i64, ptr %var.slot, align 8
  %a.rd.nonnull320 = icmp ne ptr %fld.load318, null
  br i1 %a.rd.nonnull320, label %a.rd.check321, label %a.rd.err.null323

unwrap.abort.32:                                  ; preds = %a.rd.done247
  %unwrap.pay.abort284 = extractvalue { i1, i64 } %ram.pay282, 1
  %err.ptr285 = inttoptr i64 %unwrap.pay.abort284 to ptr
  %err.code.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr285, i32 0, i32 0
  %err.code287 = load i64, ptr %err.code.gep286, align 8
  %err.msg.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr285, i32 0, i32 1
  %err.msg.struct289 = load ptr, ptr %err.msg.gep288, align 8
  %err.file.gep290 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr285, i32 0, i32 2
  %err.file.struct291 = load ptr, ptr %err.file.gep290, align 8
  %err.line.gep292 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr285, i32 0, i32 3
  %err.line293 = load i64, ptr %err.line.gep292, align 8
  %err.col.gep294 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr285, i32 0, i32 4
  %err.col295 = load i64, ptr %err.col.gep294, align 8
  %err.msg.len296 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct289, i32 0, i32 0
  %err.msg.len297 = load i64, ptr %err.msg.len296, align 8
  %err.msg.len298 = and i64 %err.msg.len297, 281474976710655
  %err.msg.len32299 = trunc i64 %err.msg.len298 to i32
  %err.msg.data300 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct289, i32 0, i32 1
  %err.msg.data301 = load ptr, ptr %err.msg.data300, align 8
  %err.file.len302 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct291, i32 0, i32 0
  %err.file.len303 = load i64, ptr %err.file.len302, align 8
  %err.file.len304 = and i64 %err.file.len303, 281474976710655
  %err.file.len32305 = trunc i64 %err.file.len304 to i32
  %err.file.data306 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct291, i32 0, i32 1
  %err.file.data307 = load ptr, ptr %err.file.data306, align 8
  %err.thread.rec308 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread309 = icmp ne ptr %err.thread.rec308, null
  br i1 %err.is.thread309, label %err.thread310, label %err.normal311

err.thread310:                                    ; preds = %unwrap.abort.32
  %err.haserr.gep312 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec308, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep312, align 8
  %err.err.gep313 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec308, i32 0, i32 7
  store ptr %err.ptr285, ptr %err.err.gep313, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal311:                                    ; preds = %unwrap.abort.32
  %err.panic.printf314 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code287, i32 %err.msg.len32299, ptr %err.msg.data301, i32 %err.file.len32305, ptr %err.file.data307, i64 %err.line293, i64 %err.col295)
  call void @exit(i32 1)
  unreachable

a.rd.check321:                                    ; preds = %unwrap.pos.32
  %a.rd.len326 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load318, i32 0, i32 0
  %a.rd.len327 = load i64, ptr %a.rd.len326, align 8
  %a.rd.ge0328 = icmp sge i64 %var.load319, 0
  %a.rd.lt329 = icmp slt i64 %var.load319, %a.rd.len327
  %a.rd.bounds330 = and i1 %a.rd.ge0328, %a.rd.lt329
  br i1 %a.rd.bounds330, label %a.rd.ok322, label %a.rd.err.oob324

a.rd.ok322:                                       ; preds = %a.rd.check321
  %a.rd.data331 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load318, i32 0, i32 1
  %a.rd.data332 = load ptr, ptr %a.rd.data331, align 8
  %a.rd.elem.gep333 = getelementptr i64, ptr %a.rd.data332, i64 %var.load319
  %a.rd.elem334 = load i64, ptr %a.rd.elem.gep333, align 8
  br label %a.rd.done325

a.rd.err.null323:                                 ; preds = %unwrap.pos.32
  %arena.cur335 = call ptr @dva_arena_current()
  %err.alloc336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 56)
  %err.code.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 0
  store i64 4011, ptr %err.code.gep337, align 8
  %err.msg.gep338 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep338, align 8
  %err.file.gep339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep339, align 8
  %err.line.gep340 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 3
  store i64 0, ptr %err.line.gep340, align 8
  %err.col.gep341 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 4
  store i64 0, ptr %err.col.gep341, align 8
  %err.ctx.gep342 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc336, i32 0, i32 5
  %err.ctx0.gep343 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep342, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep343, align 8
  %err.ctx1.gep344 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep342, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep344, align 8
  %err.p2i345 = ptrtoint ptr %err.alloc336 to i64
  br label %a.rd.done325

a.rd.err.oob324:                                  ; preds = %a.rd.check321
  %arena.cur346 = call ptr @dva_arena_current()
  %err.alloc347 = call ptr @dva_arena_alloc(ptr %arena.cur346, i64 56)
  %err.code.gep348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 0
  store i64 4011, ptr %err.code.gep348, align 8
  %err.msg.gep349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep349, align 8
  %err.file.gep350 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep350, align 8
  %err.line.gep351 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 3
  store i64 0, ptr %err.line.gep351, align 8
  %err.col.gep352 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 4
  store i64 0, ptr %err.col.gep352, align 8
  %err.ctx.gep353 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc347, i32 0, i32 5
  %err.ctx0.gep354 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep353, i32 0, i32 0
  store i64 %var.load319, ptr %err.ctx0.gep354, align 8
  %err.ctx1.gep355 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep353, i32 0, i32 1
  store i64 %a.rd.len327, ptr %err.ctx1.gep355, align 8
  %err.p2i356 = ptrtoint ptr %err.alloc347 to i64
  br label %a.rd.done325

a.rd.done325:                                     ; preds = %a.rd.err.oob324, %a.rd.err.null323, %a.rd.ok322
  %a.rd.tag357 = phi i1 [ true, %a.rd.ok322 ], [ false, %a.rd.err.null323 ], [ false, %a.rd.err.oob324 ]
  %a.rd.pay358 = phi i64 [ %a.rd.elem334, %a.rd.ok322 ], [ %err.p2i345, %a.rd.err.null323 ], [ %err.p2i356, %a.rd.err.oob324 ]
  %ram.tag359 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag357, 0
  %ram.pay360 = insertvalue { i1, i64 } %ram.tag359, i64 %a.rd.pay358, 1
  %unwrap.is_pos361 = extractvalue { i1, i64 } %ram.pay360, 0
  br i1 %unwrap.is_pos361, label %unwrap.pos.33, label %unwrap.abort.33

unwrap.pos.33:                                    ; preds = %a.rd.done325
  %unwrap.pay.pos393 = extractvalue { i1, i64 } %ram.pay360, 1
  %pay.ptr394 = inttoptr i64 %unwrap.pay.pos393 to ptr
  store ptr %pay.ptr394, ptr %var.ev, align 8
  %var.load395 = load i64, ptr %var.rev, align 8
  %bandtmp396 = and i64 %var.load395, 1
  %cmptmp397 = icmp ne i64 %bandtmp396, 0
  br i1 %cmptmp397, label %choice.then398, label %choice.else399

unwrap.abort.33:                                  ; preds = %a.rd.done325
  %unwrap.pay.abort362 = extractvalue { i1, i64 } %ram.pay360, 1
  %err.ptr363 = inttoptr i64 %unwrap.pay.abort362 to ptr
  %err.code.gep364 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr363, i32 0, i32 0
  %err.code365 = load i64, ptr %err.code.gep364, align 8
  %err.msg.gep366 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr363, i32 0, i32 1
  %err.msg.struct367 = load ptr, ptr %err.msg.gep366, align 8
  %err.file.gep368 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr363, i32 0, i32 2
  %err.file.struct369 = load ptr, ptr %err.file.gep368, align 8
  %err.line.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr363, i32 0, i32 3
  %err.line371 = load i64, ptr %err.line.gep370, align 8
  %err.col.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr363, i32 0, i32 4
  %err.col373 = load i64, ptr %err.col.gep372, align 8
  %err.msg.len374 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct367, i32 0, i32 0
  %err.msg.len375 = load i64, ptr %err.msg.len374, align 8
  %err.msg.len376 = and i64 %err.msg.len375, 281474976710655
  %err.msg.len32377 = trunc i64 %err.msg.len376 to i32
  %err.msg.data378 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct367, i32 0, i32 1
  %err.msg.data379 = load ptr, ptr %err.msg.data378, align 8
  %err.file.len380 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct369, i32 0, i32 0
  %err.file.len381 = load i64, ptr %err.file.len380, align 8
  %err.file.len382 = and i64 %err.file.len381, 281474976710655
  %err.file.len32383 = trunc i64 %err.file.len382 to i32
  %err.file.data384 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct369, i32 0, i32 1
  %err.file.data385 = load ptr, ptr %err.file.data384, align 8
  %err.thread.rec386 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread387 = icmp ne ptr %err.thread.rec386, null
  br i1 %err.is.thread387, label %err.thread388, label %err.normal389

err.thread388:                                    ; preds = %unwrap.abort.33
  %err.haserr.gep390 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec386, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep390, align 8
  %err.err.gep391 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec386, i32 0, i32 7
  store ptr %err.ptr363, ptr %err.err.gep391, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal389:                                    ; preds = %unwrap.abort.33
  %err.panic.printf392 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code365, i32 %err.msg.len32377, ptr %err.msg.data379, i32 %err.file.len32383, ptr %err.file.data385, i64 %err.line371, i64 %err.col373)
  call void @exit(i32 1)
  unreachable

choice.then398:                                   ; preds = %unwrap.pos.33
  %var.load401 = load i64, ptr @"var.event::READ", align 8
  br label %choice.exit400

choice.else399:                                   ; preds = %unwrap.pos.33
  br label %choice.exit400

choice.exit400:                                   ; preds = %choice.else399, %choice.then398
  %choice.res402 = phi i64 [ %var.load401, %choice.then398 ], [ 0, %choice.else399 ]
  %var.load403 = load i64, ptr %var.rev, align 8
  %bandtmp404 = and i64 %var.load403, 4
  %cmptmp405 = icmp ne i64 %bandtmp404, 0
  br i1 %cmptmp405, label %choice.then406, label %choice.else407

choice.then406:                                   ; preds = %choice.exit400
  %var.load409 = load i64, ptr @"var.event::WRITE", align 8
  br label %choice.exit408

choice.else407:                                   ; preds = %choice.exit400
  br label %choice.exit408

choice.exit408:                                   ; preds = %choice.else407, %choice.then406
  %choice.res410 = phi i64 [ %var.load409, %choice.then406 ], [ 0, %choice.else407 ]
  %bortmp411 = or i64 %choice.res402, %choice.res410
  %var.load412 = load i64, ptr %var.rev, align 8
  %bandtmp413 = and i64 %var.load412, 2
  %cmptmp414 = icmp ne i64 %bandtmp413, 0
  br i1 %cmptmp414, label %choice.then415, label %choice.else416

choice.then415:                                   ; preds = %choice.exit408
  %var.load418 = load i64, ptr @"var.event::PRI", align 8
  br label %choice.exit417

choice.else416:                                   ; preds = %choice.exit408
  br label %choice.exit417

choice.exit417:                                   ; preds = %choice.else416, %choice.then415
  %choice.res419 = phi i64 [ %var.load418, %choice.then415 ], [ 0, %choice.else416 ]
  %bortmp420 = or i64 %bortmp411, %choice.res419
  %var.load421 = load i64, ptr %var.rev, align 8
  %bandtmp422 = and i64 %var.load421, 8
  %cmptmp423 = icmp ne i64 %bandtmp422, 0
  br i1 %cmptmp423, label %choice.then424, label %choice.else425

choice.then424:                                   ; preds = %choice.exit417
  %var.load427 = load i64, ptr @"var.event::ERR", align 8
  br label %choice.exit426

choice.else425:                                   ; preds = %choice.exit417
  br label %choice.exit426

choice.exit426:                                   ; preds = %choice.else425, %choice.then424
  %choice.res428 = phi i64 [ %var.load427, %choice.then424 ], [ 0, %choice.else425 ]
  %bortmp429 = or i64 %bortmp420, %choice.res428
  %var.load430 = load i64, ptr %var.rev, align 8
  %bandtmp431 = and i64 %var.load430, 16
  %cmptmp432 = icmp ne i64 %bandtmp431, 0
  br i1 %cmptmp432, label %choice.then433, label %choice.else434

choice.then433:                                   ; preds = %choice.exit426
  %var.load436 = load i64, ptr @"var.event::HUP", align 8
  br label %choice.exit435

choice.else434:                                   ; preds = %choice.exit426
  br label %choice.exit435

choice.exit435:                                   ; preds = %choice.else434, %choice.then433
  %choice.res437 = phi i64 [ %var.load436, %choice.then433 ], [ 0, %choice.else434 ]
  %bortmp438 = or i64 %bortmp429, %choice.res437
  store i64 %bortmp438, ptr %var.ev_mask, align 8
  %var.load439 = load ptr, ptr %var.ev, align 8
  %fld.gep440 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load439, i32 0, i32 0
  %fld.load441 = load i64, ptr %fld.gep440, align 8
  %var.load442 = load i64, ptr %var.ev_mask, align 8
  %var.load443 = load ptr, ptr %var.ev, align 8
  %fld.gep444 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load443, i32 0, i32 2
  %fld.load445 = load i64, ptr %fld.gep444, align 8
  %arena.cur446 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur446, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %fld.load441, ptr %rec.fld, align 8
  %rec.fld447 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load442, ptr %rec.fld447, align 8
  %rec.fld448 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load445, ptr %rec.fld448, align 8
  %a.load449 = load ptr, ptr %"var.res'", align 8
  %a.null450 = icmp eq ptr %a.load449, null
  br i1 %a.null450, label %a.create451, label %a.after452

a.create451:                                      ; preds = %choice.exit435
  %arena.cur453 = call ptr @dva_arena_current()
  %a.create454 = call ptr @dva_arena_alloc(ptr %arena.cur453, i64 24)
  %arena.cur455 = call ptr @dva_arena_current()
  %a.buf456 = call ptr @dva_arena_alloc(ptr %arena.cur455, i64 128)
  %a.len.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 0
  store i64 0, ptr %a.len.gep457, align 8
  %a.data.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 1
  store ptr %a.buf456, ptr %a.data.gep458, align 8
  %a.cap.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 2
  store i64 16, ptr %a.cap.gep459, align 8
  store ptr %a.create454, ptr %"var.res'", align 8
  br label %a.after452

a.after452:                                       ; preds = %a.create451, %choice.exit435
  %a.load2460 = load ptr, ptr %"var.res'", align 8
  br label %a.check461

a.check461:                                       ; preds = %a.after452
  %a.len464 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2460, i32 0, i32 0
  %a.len465 = load i64, ptr %a.len464, align 8
  %a.cap466 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2460, i32 0, i32 2
  %a.cap467 = load i64, ptr %a.cap466, align 8
  %a.needs.grow468 = icmp eq i64 %a.len465, %a.cap467
  br i1 %a.needs.grow468, label %a.grow462, label %a.store463

a.grow462:                                        ; preds = %a.check461
  call void @dva_array_grow(ptr %a.load2460)
  br label %a.store463

a.store463:                                       ; preds = %a.grow462, %a.check461
  %a.cur.data469 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2460, i32 0, i32 1
  %a.cur.data470 = load ptr, ptr %a.cur.data469, align 8
  %a.cur.len471 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2460, i32 0, i32 0
  %a.cur.len472 = load i64, ptr %a.cur.len471, align 8
  %a.elem.gep473 = getelementptr i64, ptr %a.cur.data470, i64 %a.cur.len472
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep473, align 8
  %a.next.len474 = add i64 %a.cur.len472, 1
  %b.len.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2460, i32 0, i32 0
  store i64 %a.next.len474, ptr %b.len.gep475, align 8
  br label %choice.exit227

a.create481:                                      ; preds = %loop.exit.31
  %arena.cur483 = call ptr @dva_arena_current()
  %a.create484 = call ptr @dva_arena_alloc(ptr %arena.cur483, i64 24)
  %arena.cur485 = call ptr @dva_arena_current()
  %a.buf486 = call ptr @dva_arena_alloc(ptr %arena.cur485, i64 128)
  %a.len.gep487 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create484, i32 0, i32 0
  store i64 0, ptr %a.len.gep487, align 8
  %a.data.gep488 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create484, i32 0, i32 1
  store ptr %a.buf486, ptr %a.data.gep488, align 8
  %a.cap.gep489 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create484, i32 0, i32 2
  store i64 16, ptr %a.cap.gep489, align 8
  store ptr %a.create484, ptr %"var.res'", align 8
  br label %a.after482

a.after482:                                       ; preds = %a.create481, %loop.exit.31
  %a.load2490 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2490
}

define void @"event::close"(ptr %0) #0 {
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

define i1 @"event::is_read"(ptr %0) #0 {
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

define i1 @"event::is_write"(ptr %0) #0 {
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

define i1 @"event::is_err"(ptr %0) #0 {
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

define i1 @"event::is_hup"(ptr %0) #0 {
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

define i1 @"event::poll_in"(i64 %0, i64 %1) #0 {
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

declare i1 @"sys::poll_in"(i64, i64) #0

define i1 @"event::poll_out"(i64 %0, i64 %1) #0 {
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

declare i1 @"sys::poll_out"(i64, i64) #0

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
