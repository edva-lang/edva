; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@dva_arena_base_tls = external thread_local global ptr
@dva_active_gen_tls = external thread_local global i64
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
@dva_active_arena_tls = external thread_local global ptr
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

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #2 {
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
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #3

declare void @dva_arena_destroy(ptr) #0

declare i64 @dva_arena_save(ptr) #0

declare void @dva_arena_restore(ptr, i64) #0

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #3

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
declare void @exit(i32) #4

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
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur71 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur81 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur107 = load ptr, ptr @dva_active_arena_tls, align 8
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
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

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

define ptr @"event::wait"(ptr %0, i64 %1) #0 {
entry:
  %var.ev_mask = alloca i64, align 8
  %var.ev = alloca ptr, align 8
  %var.slot = alloca i64, align 8
  %var.rev = alloca i64, align 8
  %var._187 = alloca i64, align 8
  %var._i186 = alloca i64, align 8
  %var.k182 = alloca i64, align 8
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
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load25, i32 0, i32 0
  %a.len.query26 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
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
  %var.load158 = load ptr, ptr %var.pfds, align 8
  %b.ptr159 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load158, i32 0, i32 1
  %b.ptr160 = load ptr, ptr %b.ptr159, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr160 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load161 = load i64, ptr %"var.nfds'", align 8
  %var.load162 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @poll(ptr %addr.ffi.clean, i64 %var.load161, i64 %var.load162)
  store i64 %call.res, ptr %var.n, align 8
  %var.load163 = load i64, ptr %var.n, align 8
  %cmptmp164 = icmp sle i64 %var.load163, 0
  br i1 %cmptmp164, label %choice.then165, label %choice.exit166

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
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
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
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %choice.exit83
  store i32 %coerce.trunc, ptr %raw.clean.ptr, align 4
  %var.load94 = load ptr, ptr %var.pfds, align 8
  %b.ptr95 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load94, i32 0, i32 1
  %b.ptr96 = load ptr, ptr %b.ptr95, align 8
  %var.load97 = load i64, ptr %var.k, align 8
  %multmp98 = mul i64 %var.load97, 8
  %ptr.int.l99 = ptrtoint ptr %b.ptr96 to i64
  %addtmp100 = add i64 %ptr.int.l99, %multmp98
  %ptr.res101 = inttoptr i64 %addtmp100 to ptr
  %ptr.int.l102 = ptrtoint ptr %ptr.res101 to i64
  %addtmp103 = add i64 %ptr.int.l102, 4
  %ptr.res104 = inttoptr i64 %addtmp103 to ptr
  %var.load105 = load i64, ptr %var.pmask, align 8
  %coerce.trunc106 = trunc i64 %var.load105 to i16
  %raw.int107 = ptrtoint ptr %ptr.res104 to i64
  %raw.clean.int108 = and i64 %raw.int107, 281474976710655
  %raw.clean.ptr109 = inttoptr i64 %raw.clean.int108 to ptr
  %addr.tag110 = lshr i64 %raw.int107, 48
  %tag.immortal112 = icmp eq i64 %addr.tag110, 0
  %active.gen113 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current114 = icmp eq i64 %addr.tag110, %active.gen113
  %tag.fast.ok115 = or i1 %tag.immortal112, %tag.current114
  br i1 %tag.fast.ok115, label %addr_ok111, label %tag.slow_check116

tag.slow_check:                                   ; preds = %choice.exit83
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok111:                                       ; preds = %tag.slow_check116, %addr_ok
  store i16 %coerce.trunc106, ptr %raw.clean.ptr109, align 2
  %var.load117 = load ptr, ptr %var.pfds, align 8
  %b.ptr118 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load117, i32 0, i32 1
  %b.ptr119 = load ptr, ptr %b.ptr118, align 8
  %var.load120 = load i64, ptr %var.k, align 8
  %multmp121 = mul i64 %var.load120, 8
  %ptr.int.l122 = ptrtoint ptr %b.ptr119 to i64
  %addtmp123 = add i64 %ptr.int.l122, %multmp121
  %ptr.res124 = inttoptr i64 %addtmp123 to ptr
  %ptr.int.l125 = ptrtoint ptr %ptr.res124 to i64
  %addtmp126 = add i64 %ptr.int.l125, 6
  %ptr.res127 = inttoptr i64 %addtmp126 to ptr
  %raw.int128 = ptrtoint ptr %ptr.res127 to i64
  %raw.clean.int129 = and i64 %raw.int128, 281474976710655
  %raw.clean.ptr130 = inttoptr i64 %raw.clean.int129 to ptr
  %addr.tag131 = lshr i64 %raw.int128, 48
  %tag.immortal133 = icmp eq i64 %addr.tag131, 0
  %active.gen134 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current135 = icmp eq i64 %addr.tag131, %active.gen134
  %tag.fast.ok136 = or i1 %tag.immortal133, %tag.current135
  br i1 %tag.fast.ok136, label %addr_ok132, label %tag.slow_check137

tag.slow_check116:                                ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag110)
  br label %addr_ok111

addr_ok132:                                       ; preds = %tag.slow_check137, %addr_ok111
  store i16 0, ptr %raw.clean.ptr130, align 2
  %var.load138 = load i64, ptr %var.i, align 8
  %a.load139 = load ptr, ptr %var.idxs, align 8
  %a.null140 = icmp eq ptr %a.load139, null
  br i1 %a.null140, label %a.create141, label %a.after142

tag.slow_check137:                                ; preds = %addr_ok111
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag131)
  br label %addr_ok132

a.create141:                                      ; preds = %addr_ok132
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 24)
  %arena.cur145 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf146 = call ptr @dva_arena_alloc(ptr %arena.cur145, i64 128)
  %a.len.gep147 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 0
  store i64 0, ptr %a.len.gep147, align 8
  %a.data.gep148 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 1
  store ptr %a.buf146, ptr %a.data.gep148, align 8
  %a.cap.gep149 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create144, i32 0, i32 2
  store i64 16, ptr %a.cap.gep149, align 8
  store ptr %a.create144, ptr %var.idxs, align 8
  br label %a.after142

a.after142:                                       ; preds = %a.create141, %addr_ok132
  %a.load2150 = load ptr, ptr %var.idxs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after142
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2150, i32 0, i32 0
  %a.len151 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2150, i32 0, i32 2
  %a.cap152 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len151, %a.cap152
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2150)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2150, i32 0, i32 1
  %a.cur.data153 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2150, i32 0, i32 0
  %a.cur.len154 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data153, i64 %a.cur.len154
  store i64 %var.load138, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len154, 1
  %b.len.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2150, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep155, align 8
  %var.load156 = load i64, ptr %"var.nfds'", align 8
  %addtmp157 = add i64 %var.load156, 1
  store i64 %addtmp157, ptr %"var.nfds'", align 8
  br label %choice.exit60

choice.then165:                                   ; preds = %loop.exit.29
  %var.load167 = load ptr, ptr %"var.res'", align 8
  %a.load168 = load ptr, ptr %"var.res'", align 8
  %a.null169 = icmp eq ptr %a.load168, null
  br i1 %a.null169, label %a.create170, label %a.after171

choice.exit166:                                   ; preds = %ret.dead180, %loop.exit.29
  %var.load181 = load i64, ptr %"var.nfds'", align 8
  store i64 0, ptr %loop.idx.31, align 8
  br label %loop.header.31

a.create170:                                      ; preds = %choice.then165
  %arena.cur172 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 24)
  %arena.cur174 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf175 = call ptr @dva_arena_alloc(ptr %arena.cur174, i64 128)
  %a.len.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create173, i32 0, i32 0
  store i64 0, ptr %a.len.gep176, align 8
  %a.data.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create173, i32 0, i32 1
  store ptr %a.buf175, ptr %a.data.gep177, align 8
  %a.cap.gep178 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create173, i32 0, i32 2
  store i64 16, ptr %a.cap.gep178, align 8
  store ptr %a.create173, ptr %"var.res'", align 8
  br label %a.after171

a.after171:                                       ; preds = %a.create170, %choice.then165
  %a.load2179 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2179

ret.dead180:                                      ; No predecessors!
  br label %choice.exit166

loop.header.31:                                   ; preds = %loop.latch.31, %choice.exit166
  %counter.load183 = load i64, ptr %loop.idx.31, align 8
  %loop.cond184 = icmp slt i64 %counter.load183, %var.load181
  br i1 %loop.cond184, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i185 = sub i64 %counter.load183, 0
  store i64 1, ptr %loop.step.31, align 8
  store i64 %loop.rel.i185, ptr %var._i186, align 8
  store i64 %counter.load183, ptr %var._187, align 8
  store i64 %counter.load183, ptr %var.k182, align 8
  %var.load188 = load ptr, ptr %var.pfds, align 8
  %b.ptr189 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load188, i32 0, i32 1
  %b.ptr190 = load ptr, ptr %b.ptr189, align 8
  %var.load191 = load i64, ptr %var.k182, align 8
  %multmp192 = mul i64 %var.load191, 8
  %ptr.int.l193 = ptrtoint ptr %b.ptr190 to i64
  %addtmp194 = add i64 %ptr.int.l193, %multmp192
  %ptr.res195 = inttoptr i64 %addtmp194 to ptr
  %ptr.int.l196 = ptrtoint ptr %ptr.res195 to i64
  %addtmp197 = add i64 %ptr.int.l196, 6
  %ptr.res198 = inttoptr i64 %addtmp197 to ptr
  %raw.int199 = ptrtoint ptr %ptr.res198 to i64
  %raw.clean.int200 = and i64 %raw.int199, 281474976710655
  %raw.clean.ptr201 = inttoptr i64 %raw.clean.int200 to ptr
  %addr.tag202 = lshr i64 %raw.int199, 48
  %tag.immortal204 = icmp eq i64 %addr.tag202, 0
  %active.gen205 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current206 = icmp eq i64 %addr.tag202, %active.gen205
  %tag.fast.ok207 = or i1 %tag.immortal204, %tag.current206
  br i1 %tag.fast.ok207, label %addr_ok203, label %tag.slow_check208

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit213
  %step.val462 = load i64, ptr %loop.step.31, align 8
  %loop.next463 = add i64 %counter.load183, %step.val462
  store i64 %loop.next463, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %loop.exit.nat.31
  %var.load464 = load ptr, ptr %"var.res'", align 8
  %a.load465 = load ptr, ptr %"var.res'", align 8
  %a.null466 = icmp eq ptr %a.load465, null
  br i1 %a.null466, label %a.create467, label %a.after468

addr_ok203:                                       ; preds = %tag.slow_check208, %loop.body.31
  %raw.load = load volatile i16, ptr %raw.clean.ptr201, align 2
  %coerce.sext = sext i16 %raw.load to i64
  %bandtmp209 = and i64 %coerce.sext, 65535
  store i64 %bandtmp209, ptr %var.rev, align 8
  %var.load210 = load i64, ptr %var.rev, align 8
  %cmptmp211 = icmp ne i64 %var.load210, 0
  br i1 %cmptmp211, label %choice.then212, label %choice.exit213

tag.slow_check208:                                ; preds = %loop.body.31
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag202)
  br label %addr_ok203

choice.then212:                                   ; preds = %addr_ok203
  %var.load214 = load ptr, ptr %var.idxs, align 8
  %a.load215 = load ptr, ptr %var.idxs, align 8
  %a.null216 = icmp eq ptr %a.load215, null
  br i1 %a.null216, label %a.create217, label %a.after218

choice.exit213:                                   ; preds = %a.store449, %addr_ok203
  br label %loop.latch.31

a.create217:                                      ; preds = %choice.then212
  %arena.cur219 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create220 = call ptr @dva_arena_alloc(ptr %arena.cur219, i64 24)
  %arena.cur221 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf222 = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 128)
  %a.len.gep223 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create220, i32 0, i32 0
  store i64 0, ptr %a.len.gep223, align 8
  %a.data.gep224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create220, i32 0, i32 1
  store ptr %a.buf222, ptr %a.data.gep224, align 8
  %a.cap.gep225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create220, i32 0, i32 2
  store i64 16, ptr %a.cap.gep225, align 8
  store ptr %a.create220, ptr %var.idxs, align 8
  br label %a.after218

a.after218:                                       ; preds = %a.create217, %choice.then212
  %a.load2226 = load ptr, ptr %var.idxs, align 8
  %var.load227 = load i64, ptr %var.k182, align 8
  %a.rd.nonnull228 = icmp ne ptr %a.load2226, null
  br i1 %a.rd.nonnull228, label %a.rd.check229, label %a.rd.err.null231

a.rd.check229:                                    ; preds = %a.after218
  %a.rd.len234 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2226, i32 0, i32 0
  %a.rd.len235 = load i64, ptr %a.rd.len234, align 8
  %a.rd.ge0236 = icmp sge i64 %var.load227, 0
  %a.rd.lt237 = icmp slt i64 %var.load227, %a.rd.len235
  %a.rd.bounds238 = and i1 %a.rd.ge0236, %a.rd.lt237
  br i1 %a.rd.bounds238, label %a.rd.ok230, label %a.rd.err.oob232

a.rd.ok230:                                       ; preds = %a.rd.check229
  %a.rd.data239 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2226, i32 0, i32 1
  %a.rd.data240 = load ptr, ptr %a.rd.data239, align 8
  %a.rd.elem.gep241 = getelementptr i64, ptr %a.rd.data240, i64 %var.load227
  %a.rd.elem242 = load i64, ptr %a.rd.elem.gep241, align 8
  br label %a.rd.done233

a.rd.err.null231:                                 ; preds = %a.after218
  %arena.cur243 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc244 = call ptr @dva_arena_alloc(ptr %arena.cur243, i64 56)
  %err.code.gep245 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc244, i32 0, i32 0
  store i64 4011, ptr %err.code.gep245, align 8
  %err.msg.gep246 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc244, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep246, align 8
  %err.file.gep247 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc244, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep247, align 8
  %err.line.gep248 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc244, i32 0, i32 3
  store i64 142, ptr %err.line.gep248, align 8
  %err.col.gep249 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc244, i32 0, i32 4
  store i64 30, ptr %err.col.gep249, align 8
  %err.ctx.gep250 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc244, i32 0, i32 5
  %err.ctx0.gep251 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep250, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep251, align 8
  %err.ctx1.gep252 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep250, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep252, align 8
  %err.p2i253 = ptrtoint ptr %err.alloc244 to i64
  br label %a.rd.done233

a.rd.err.oob232:                                  ; preds = %a.rd.check229
  %arena.cur254 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 56)
  %err.code.gep256 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc255, i32 0, i32 0
  store i64 4011, ptr %err.code.gep256, align 8
  %err.msg.gep257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc255, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep257, align 8
  %err.file.gep258 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc255, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep258, align 8
  %err.line.gep259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc255, i32 0, i32 3
  store i64 142, ptr %err.line.gep259, align 8
  %err.col.gep260 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc255, i32 0, i32 4
  store i64 30, ptr %err.col.gep260, align 8
  %err.ctx.gep261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc255, i32 0, i32 5
  %err.ctx0.gep262 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep261, i32 0, i32 0
  store i64 %var.load227, ptr %err.ctx0.gep262, align 8
  %err.ctx1.gep263 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep261, i32 0, i32 1
  store i64 %a.rd.len235, ptr %err.ctx1.gep263, align 8
  %err.p2i264 = ptrtoint ptr %err.alloc255 to i64
  br label %a.rd.done233

a.rd.done233:                                     ; preds = %a.rd.err.oob232, %a.rd.err.null231, %a.rd.ok230
  %a.rd.tag265 = phi i1 [ true, %a.rd.ok230 ], [ false, %a.rd.err.null231 ], [ false, %a.rd.err.oob232 ]
  %a.rd.pay266 = phi i64 [ %a.rd.elem242, %a.rd.ok230 ], [ %err.p2i253, %a.rd.err.null231 ], [ %err.p2i264, %a.rd.err.oob232 ]
  %ram.tag267 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag265, 0
  %ram.pay268 = insertvalue { i1, i64 } %ram.tag267, i64 %a.rd.pay266, 1
  %unwrap.is_pos269 = extractvalue { i1, i64 } %ram.pay268, 0
  br i1 %unwrap.is_pos269, label %unwrap.pos.32, label %unwrap.abort.32

unwrap.pos.32:                                    ; preds = %a.rd.done233
  %unwrap.pay.pos301 = extractvalue { i1, i64 } %ram.pay268, 1
  store i64 %unwrap.pay.pos301, ptr %var.slot, align 8
  %var.load302 = load ptr, ptr %var.p, align 8
  %fld.gep303 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load302, i32 0, i32 3
  %fld.load304 = load ptr, ptr %fld.gep303, align 8
  %var.load305 = load i64, ptr %var.slot, align 8
  %a.rd.nonnull306 = icmp ne ptr %fld.load304, null
  br i1 %a.rd.nonnull306, label %a.rd.check307, label %a.rd.err.null309

unwrap.abort.32:                                  ; preds = %a.rd.done233
  %unwrap.pay.abort270 = extractvalue { i1, i64 } %ram.pay268, 1
  %err.ptr271 = inttoptr i64 %unwrap.pay.abort270 to ptr
  %err.code.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr271, i32 0, i32 0
  %err.code273 = load i64, ptr %err.code.gep272, align 8
  %err.msg.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr271, i32 0, i32 1
  %err.msg.struct275 = load ptr, ptr %err.msg.gep274, align 8
  %err.file.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr271, i32 0, i32 2
  %err.file.struct277 = load ptr, ptr %err.file.gep276, align 8
  %err.line.gep278 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr271, i32 0, i32 3
  %err.line279 = load i64, ptr %err.line.gep278, align 8
  %err.col.gep280 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr271, i32 0, i32 4
  %err.col281 = load i64, ptr %err.col.gep280, align 8
  %err.msg.len282 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct275, i32 0, i32 0
  %err.msg.len283 = load i64, ptr %err.msg.len282, align 8
  %err.msg.len284 = and i64 %err.msg.len283, 281474976710655
  %err.msg.len32285 = trunc i64 %err.msg.len284 to i32
  %err.msg.data286 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct275, i32 0, i32 1
  %err.msg.data287 = load ptr, ptr %err.msg.data286, align 8
  %err.file.len288 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct277, i32 0, i32 0
  %err.file.len289 = load i64, ptr %err.file.len288, align 8
  %err.file.len290 = and i64 %err.file.len289, 281474976710655
  %err.file.len32291 = trunc i64 %err.file.len290 to i32
  %err.file.data292 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct277, i32 0, i32 1
  %err.file.data293 = load ptr, ptr %err.file.data292, align 8
  %err.thread.rec294 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread295 = icmp ne ptr %err.thread.rec294, null
  br i1 %err.is.thread295, label %err.thread296, label %err.normal297

err.thread296:                                    ; preds = %unwrap.abort.32
  %err.haserr.gep298 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec294, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep298, align 8
  %err.err.gep299 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec294, i32 0, i32 7
  store ptr %err.ptr271, ptr %err.err.gep299, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal297:                                    ; preds = %unwrap.abort.32
  %err.panic.printf300 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code273, i32 %err.msg.len32285, ptr %err.msg.data287, i32 %err.file.len32291, ptr %err.file.data293, i64 %err.line279, i64 %err.col281)
  call void @exit(i32 1)
  unreachable

a.rd.check307:                                    ; preds = %unwrap.pos.32
  %a.rd.len312 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load304, i32 0, i32 0
  %a.rd.len313 = load i64, ptr %a.rd.len312, align 8
  %a.rd.ge0314 = icmp sge i64 %var.load305, 0
  %a.rd.lt315 = icmp slt i64 %var.load305, %a.rd.len313
  %a.rd.bounds316 = and i1 %a.rd.ge0314, %a.rd.lt315
  br i1 %a.rd.bounds316, label %a.rd.ok308, label %a.rd.err.oob310

a.rd.ok308:                                       ; preds = %a.rd.check307
  %a.rd.data317 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load304, i32 0, i32 1
  %a.rd.data318 = load ptr, ptr %a.rd.data317, align 8
  %a.rd.elem.gep319 = getelementptr i64, ptr %a.rd.data318, i64 %var.load305
  %a.rd.elem320 = load i64, ptr %a.rd.elem.gep319, align 8
  br label %a.rd.done311

a.rd.err.null309:                                 ; preds = %unwrap.pos.32
  %arena.cur321 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc322 = call ptr @dva_arena_alloc(ptr %arena.cur321, i64 56)
  %err.code.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 0
  store i64 4011, ptr %err.code.gep323, align 8
  %err.msg.gep324 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep324, align 8
  %err.file.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep325, align 8
  %err.line.gep326 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 3
  store i64 0, ptr %err.line.gep326, align 8
  %err.col.gep327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 4
  store i64 0, ptr %err.col.gep327, align 8
  %err.ctx.gep328 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc322, i32 0, i32 5
  %err.ctx0.gep329 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep328, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep329, align 8
  %err.ctx1.gep330 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep328, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep330, align 8
  %err.p2i331 = ptrtoint ptr %err.alloc322 to i64
  br label %a.rd.done311

a.rd.err.oob310:                                  ; preds = %a.rd.check307
  %arena.cur332 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc333 = call ptr @dva_arena_alloc(ptr %arena.cur332, i64 56)
  %err.code.gep334 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc333, i32 0, i32 0
  store i64 4011, ptr %err.code.gep334, align 8
  %err.msg.gep335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc333, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep335, align 8
  %err.file.gep336 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc333, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep336, align 8
  %err.line.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc333, i32 0, i32 3
  store i64 0, ptr %err.line.gep337, align 8
  %err.col.gep338 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc333, i32 0, i32 4
  store i64 0, ptr %err.col.gep338, align 8
  %err.ctx.gep339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc333, i32 0, i32 5
  %err.ctx0.gep340 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep339, i32 0, i32 0
  store i64 %var.load305, ptr %err.ctx0.gep340, align 8
  %err.ctx1.gep341 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep339, i32 0, i32 1
  store i64 %a.rd.len313, ptr %err.ctx1.gep341, align 8
  %err.p2i342 = ptrtoint ptr %err.alloc333 to i64
  br label %a.rd.done311

a.rd.done311:                                     ; preds = %a.rd.err.oob310, %a.rd.err.null309, %a.rd.ok308
  %a.rd.tag343 = phi i1 [ true, %a.rd.ok308 ], [ false, %a.rd.err.null309 ], [ false, %a.rd.err.oob310 ]
  %a.rd.pay344 = phi i64 [ %a.rd.elem320, %a.rd.ok308 ], [ %err.p2i331, %a.rd.err.null309 ], [ %err.p2i342, %a.rd.err.oob310 ]
  %ram.tag345 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag343, 0
  %ram.pay346 = insertvalue { i1, i64 } %ram.tag345, i64 %a.rd.pay344, 1
  %unwrap.is_pos347 = extractvalue { i1, i64 } %ram.pay346, 0
  br i1 %unwrap.is_pos347, label %unwrap.pos.33, label %unwrap.abort.33

unwrap.pos.33:                                    ; preds = %a.rd.done311
  %unwrap.pay.pos379 = extractvalue { i1, i64 } %ram.pay346, 1
  %pay.ptr380 = inttoptr i64 %unwrap.pay.pos379 to ptr
  store ptr %pay.ptr380, ptr %var.ev, align 8
  %var.load381 = load i64, ptr %var.rev, align 8
  %bandtmp382 = and i64 %var.load381, 1
  %cmptmp383 = icmp ne i64 %bandtmp382, 0
  br i1 %cmptmp383, label %choice.then384, label %choice.else385

unwrap.abort.33:                                  ; preds = %a.rd.done311
  %unwrap.pay.abort348 = extractvalue { i1, i64 } %ram.pay346, 1
  %err.ptr349 = inttoptr i64 %unwrap.pay.abort348 to ptr
  %err.code.gep350 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr349, i32 0, i32 0
  %err.code351 = load i64, ptr %err.code.gep350, align 8
  %err.msg.gep352 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr349, i32 0, i32 1
  %err.msg.struct353 = load ptr, ptr %err.msg.gep352, align 8
  %err.file.gep354 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr349, i32 0, i32 2
  %err.file.struct355 = load ptr, ptr %err.file.gep354, align 8
  %err.line.gep356 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr349, i32 0, i32 3
  %err.line357 = load i64, ptr %err.line.gep356, align 8
  %err.col.gep358 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr349, i32 0, i32 4
  %err.col359 = load i64, ptr %err.col.gep358, align 8
  %err.msg.len360 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct353, i32 0, i32 0
  %err.msg.len361 = load i64, ptr %err.msg.len360, align 8
  %err.msg.len362 = and i64 %err.msg.len361, 281474976710655
  %err.msg.len32363 = trunc i64 %err.msg.len362 to i32
  %err.msg.data364 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct353, i32 0, i32 1
  %err.msg.data365 = load ptr, ptr %err.msg.data364, align 8
  %err.file.len366 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct355, i32 0, i32 0
  %err.file.len367 = load i64, ptr %err.file.len366, align 8
  %err.file.len368 = and i64 %err.file.len367, 281474976710655
  %err.file.len32369 = trunc i64 %err.file.len368 to i32
  %err.file.data370 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct355, i32 0, i32 1
  %err.file.data371 = load ptr, ptr %err.file.data370, align 8
  %err.thread.rec372 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread373 = icmp ne ptr %err.thread.rec372, null
  br i1 %err.is.thread373, label %err.thread374, label %err.normal375

err.thread374:                                    ; preds = %unwrap.abort.33
  %err.haserr.gep376 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec372, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep376, align 8
  %err.err.gep377 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec372, i32 0, i32 7
  store ptr %err.ptr349, ptr %err.err.gep377, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal375:                                    ; preds = %unwrap.abort.33
  %err.panic.printf378 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code351, i32 %err.msg.len32363, ptr %err.msg.data365, i32 %err.file.len32369, ptr %err.file.data371, i64 %err.line357, i64 %err.col359)
  call void @exit(i32 1)
  unreachable

choice.then384:                                   ; preds = %unwrap.pos.33
  %var.load387 = load i64, ptr @"var.event::READ", align 8
  br label %choice.exit386

choice.else385:                                   ; preds = %unwrap.pos.33
  br label %choice.exit386

choice.exit386:                                   ; preds = %choice.else385, %choice.then384
  %choice.res388 = phi i64 [ %var.load387, %choice.then384 ], [ 0, %choice.else385 ]
  %var.load389 = load i64, ptr %var.rev, align 8
  %bandtmp390 = and i64 %var.load389, 4
  %cmptmp391 = icmp ne i64 %bandtmp390, 0
  br i1 %cmptmp391, label %choice.then392, label %choice.else393

choice.then392:                                   ; preds = %choice.exit386
  %var.load395 = load i64, ptr @"var.event::WRITE", align 8
  br label %choice.exit394

choice.else393:                                   ; preds = %choice.exit386
  br label %choice.exit394

choice.exit394:                                   ; preds = %choice.else393, %choice.then392
  %choice.res396 = phi i64 [ %var.load395, %choice.then392 ], [ 0, %choice.else393 ]
  %bortmp397 = or i64 %choice.res388, %choice.res396
  %var.load398 = load i64, ptr %var.rev, align 8
  %bandtmp399 = and i64 %var.load398, 2
  %cmptmp400 = icmp ne i64 %bandtmp399, 0
  br i1 %cmptmp400, label %choice.then401, label %choice.else402

choice.then401:                                   ; preds = %choice.exit394
  %var.load404 = load i64, ptr @"var.event::PRI", align 8
  br label %choice.exit403

choice.else402:                                   ; preds = %choice.exit394
  br label %choice.exit403

choice.exit403:                                   ; preds = %choice.else402, %choice.then401
  %choice.res405 = phi i64 [ %var.load404, %choice.then401 ], [ 0, %choice.else402 ]
  %bortmp406 = or i64 %bortmp397, %choice.res405
  %var.load407 = load i64, ptr %var.rev, align 8
  %bandtmp408 = and i64 %var.load407, 8
  %cmptmp409 = icmp ne i64 %bandtmp408, 0
  br i1 %cmptmp409, label %choice.then410, label %choice.else411

choice.then410:                                   ; preds = %choice.exit403
  %var.load413 = load i64, ptr @"var.event::ERR", align 8
  br label %choice.exit412

choice.else411:                                   ; preds = %choice.exit403
  br label %choice.exit412

choice.exit412:                                   ; preds = %choice.else411, %choice.then410
  %choice.res414 = phi i64 [ %var.load413, %choice.then410 ], [ 0, %choice.else411 ]
  %bortmp415 = or i64 %bortmp406, %choice.res414
  %var.load416 = load i64, ptr %var.rev, align 8
  %bandtmp417 = and i64 %var.load416, 16
  %cmptmp418 = icmp ne i64 %bandtmp417, 0
  br i1 %cmptmp418, label %choice.then419, label %choice.else420

choice.then419:                                   ; preds = %choice.exit412
  %var.load422 = load i64, ptr @"var.event::HUP", align 8
  br label %choice.exit421

choice.else420:                                   ; preds = %choice.exit412
  br label %choice.exit421

choice.exit421:                                   ; preds = %choice.else420, %choice.then419
  %choice.res423 = phi i64 [ %var.load422, %choice.then419 ], [ 0, %choice.else420 ]
  %bortmp424 = or i64 %bortmp415, %choice.res423
  store i64 %bortmp424, ptr %var.ev_mask, align 8
  %var.load425 = load ptr, ptr %var.ev, align 8
  %fld.gep426 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load425, i32 0, i32 0
  %fld.load427 = load i64, ptr %fld.gep426, align 8
  %var.load428 = load i64, ptr %var.ev_mask, align 8
  %var.load429 = load ptr, ptr %var.ev, align 8
  %fld.gep430 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load429, i32 0, i32 2
  %fld.load431 = load i64, ptr %fld.gep430, align 8
  %arena.cur432 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur432, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %fld.load427, ptr %rec.fld, align 8
  %rec.fld433 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load428, ptr %rec.fld433, align 8
  %rec.fld434 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load431, ptr %rec.fld434, align 8
  %a.load435 = load ptr, ptr %"var.res'", align 8
  %a.null436 = icmp eq ptr %a.load435, null
  br i1 %a.null436, label %a.create437, label %a.after438

a.create437:                                      ; preds = %choice.exit421
  %arena.cur439 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create440 = call ptr @dva_arena_alloc(ptr %arena.cur439, i64 24)
  %arena.cur441 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf442 = call ptr @dva_arena_alloc(ptr %arena.cur441, i64 128)
  %a.len.gep443 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create440, i32 0, i32 0
  store i64 0, ptr %a.len.gep443, align 8
  %a.data.gep444 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create440, i32 0, i32 1
  store ptr %a.buf442, ptr %a.data.gep444, align 8
  %a.cap.gep445 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create440, i32 0, i32 2
  store i64 16, ptr %a.cap.gep445, align 8
  store ptr %a.create440, ptr %"var.res'", align 8
  br label %a.after438

a.after438:                                       ; preds = %a.create437, %choice.exit421
  %a.load2446 = load ptr, ptr %"var.res'", align 8
  br label %a.check447

a.check447:                                       ; preds = %a.after438
  %a.len450 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2446, i32 0, i32 0
  %a.len451 = load i64, ptr %a.len450, align 8
  %a.cap452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2446, i32 0, i32 2
  %a.cap453 = load i64, ptr %a.cap452, align 8
  %a.needs.grow454 = icmp eq i64 %a.len451, %a.cap453
  br i1 %a.needs.grow454, label %a.grow448, label %a.store449

a.grow448:                                        ; preds = %a.check447
  call void @dva_array_grow(ptr %a.load2446)
  br label %a.store449

a.store449:                                       ; preds = %a.grow448, %a.check447
  %a.cur.data455 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2446, i32 0, i32 1
  %a.cur.data456 = load ptr, ptr %a.cur.data455, align 8
  %a.cur.len457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2446, i32 0, i32 0
  %a.cur.len458 = load i64, ptr %a.cur.len457, align 8
  %a.elem.gep459 = getelementptr i64, ptr %a.cur.data456, i64 %a.cur.len458
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep459, align 8
  %a.next.len460 = add i64 %a.cur.len458, 1
  %b.len.gep461 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2446, i32 0, i32 0
  store i64 %a.next.len460, ptr %b.len.gep461, align 8
  br label %choice.exit213

a.create467:                                      ; preds = %loop.exit.31
  %arena.cur469 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create470 = call ptr @dva_arena_alloc(ptr %arena.cur469, i64 24)
  %arena.cur471 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf472 = call ptr @dva_arena_alloc(ptr %arena.cur471, i64 128)
  %a.len.gep473 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 0
  store i64 0, ptr %a.len.gep473, align 8
  %a.data.gep474 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 1
  store ptr %a.buf472, ptr %a.data.gep474, align 8
  %a.cap.gep475 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create470, i32 0, i32 2
  store i64 16, ptr %a.cap.gep475, align 8
  store ptr %a.create470, ptr %"var.res'", align 8
  br label %a.after468

a.after468:                                       ; preds = %a.create467, %loop.exit.31
  %a.load2476 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2476
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

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_addr_msg(i64 %0) #7 {
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
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline "nounwind" }
