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
  %var._173 = alloca i64, align 8
  %var._i172 = alloca i64, align 8
  %var.k168 = alloca i64, align 8
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
  %var.load144 = load ptr, ptr %var.pfds, align 8
  %b.ptr145 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load144, i32 0, i32 1
  %b.ptr146 = load ptr, ptr %b.ptr145, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr146 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load147 = load i64, ptr %"var.nfds'", align 8
  %var.load148 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @poll(ptr %addr.ffi.clean, i64 %var.load147, i64 %var.load148)
  store i64 %call.res, ptr %var.n, align 8
  %var.load149 = load i64, ptr %var.n, align 8
  %cmptmp150 = icmp sle i64 %var.load149, 0
  br i1 %cmptmp150, label %choice.then151, label %choice.exit152

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
  store i16 %coerce.trunc106, ptr %raw.clean.ptr109, align 2
  %var.load110 = load ptr, ptr %var.pfds, align 8
  %b.ptr111 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load110, i32 0, i32 1
  %b.ptr112 = load ptr, ptr %b.ptr111, align 8
  %var.load113 = load i64, ptr %var.k, align 8
  %multmp114 = mul i64 %var.load113, 8
  %ptr.int.l115 = ptrtoint ptr %b.ptr112 to i64
  %addtmp116 = add i64 %ptr.int.l115, %multmp114
  %ptr.res117 = inttoptr i64 %addtmp116 to ptr
  %ptr.int.l118 = ptrtoint ptr %ptr.res117 to i64
  %addtmp119 = add i64 %ptr.int.l118, 6
  %ptr.res120 = inttoptr i64 %addtmp119 to ptr
  %raw.int121 = ptrtoint ptr %ptr.res120 to i64
  %raw.clean.int122 = and i64 %raw.int121, 281474976710655
  %raw.clean.ptr123 = inttoptr i64 %raw.clean.int122 to ptr
  store i16 0, ptr %raw.clean.ptr123, align 2
  %var.load124 = load i64, ptr %var.i, align 8
  %a.load125 = load ptr, ptr %var.idxs, align 8
  %a.null126 = icmp eq ptr %a.load125, null
  br i1 %a.null126, label %a.create127, label %a.after128

a.create127:                                      ; preds = %choice.exit83
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 24)
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 128)
  %a.len.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 0
  store i64 0, ptr %a.len.gep133, align 8
  %a.data.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 1
  store ptr %a.buf132, ptr %a.data.gep134, align 8
  %a.cap.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create130, i32 0, i32 2
  store i64 16, ptr %a.cap.gep135, align 8
  store ptr %a.create130, ptr %var.idxs, align 8
  br label %a.after128

a.after128:                                       ; preds = %a.create127, %choice.exit83
  %a.load2136 = load ptr, ptr %var.idxs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after128
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 0
  %a.len137 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 2
  %a.cap138 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len137, %a.cap138
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2136)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 1
  %a.cur.data139 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 0
  %a.cur.len140 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data139, i64 %a.cur.len140
  store i64 %var.load124, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len140, 1
  %b.len.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2136, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep141, align 8
  %var.load142 = load i64, ptr %"var.nfds'", align 8
  %addtmp143 = add i64 %var.load142, 1
  store i64 %addtmp143, ptr %"var.nfds'", align 8
  br label %choice.exit60

choice.then151:                                   ; preds = %loop.exit.29
  %var.load153 = load ptr, ptr %"var.res'", align 8
  %a.load154 = load ptr, ptr %"var.res'", align 8
  %a.null155 = icmp eq ptr %a.load154, null
  br i1 %a.null155, label %a.create156, label %a.after157

choice.exit152:                                   ; preds = %ret.dead166, %loop.exit.29
  %var.load167 = load i64, ptr %"var.nfds'", align 8
  store i64 0, ptr %loop.idx.31, align 8
  br label %loop.header.31

a.create156:                                      ; preds = %choice.then151
  %arena.cur158 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create159 = call ptr @dva_arena_alloc(ptr %arena.cur158, i64 24)
  %arena.cur160 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf161 = call ptr @dva_arena_alloc(ptr %arena.cur160, i64 128)
  %a.len.gep162 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create159, i32 0, i32 0
  store i64 0, ptr %a.len.gep162, align 8
  %a.data.gep163 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create159, i32 0, i32 1
  store ptr %a.buf161, ptr %a.data.gep163, align 8
  %a.cap.gep164 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create159, i32 0, i32 2
  store i64 16, ptr %a.cap.gep164, align 8
  store ptr %a.create159, ptr %"var.res'", align 8
  br label %a.after157

a.after157:                                       ; preds = %a.create156, %choice.then151
  %a.load2165 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2165

ret.dead166:                                      ; No predecessors!
  br label %choice.exit152

loop.header.31:                                   ; preds = %loop.latch.31, %choice.exit152
  %counter.load169 = load i64, ptr %loop.idx.31, align 8
  %loop.cond170 = icmp slt i64 %counter.load169, %var.load167
  br i1 %loop.cond170, label %loop.body.31, label %loop.exit.nat.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i171 = sub i64 %counter.load169, 0
  store i64 1, ptr %loop.step.31, align 8
  store i64 %loop.rel.i171, ptr %var._i172, align 8
  store i64 %counter.load169, ptr %var._173, align 8
  store i64 %counter.load169, ptr %var.k168, align 8
  %var.load174 = load ptr, ptr %var.pfds, align 8
  %b.ptr175 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 1
  %b.ptr176 = load ptr, ptr %b.ptr175, align 8
  %var.load177 = load i64, ptr %var.k168, align 8
  %multmp178 = mul i64 %var.load177, 8
  %ptr.int.l179 = ptrtoint ptr %b.ptr176 to i64
  %addtmp180 = add i64 %ptr.int.l179, %multmp178
  %ptr.res181 = inttoptr i64 %addtmp180 to ptr
  %ptr.int.l182 = ptrtoint ptr %ptr.res181 to i64
  %addtmp183 = add i64 %ptr.int.l182, 6
  %ptr.res184 = inttoptr i64 %addtmp183 to ptr
  %raw.int185 = ptrtoint ptr %ptr.res184 to i64
  %raw.clean.int186 = and i64 %raw.int185, 281474976710655
  %raw.clean.ptr187 = inttoptr i64 %raw.clean.int186 to ptr
  %raw.load = load volatile i16, ptr %raw.clean.ptr187, align 2
  %coerce.sext = sext i16 %raw.load to i64
  %bandtmp188 = and i64 %coerce.sext, 65535
  store i64 %bandtmp188, ptr %var.rev, align 8
  %var.load189 = load i64, ptr %var.rev, align 8
  %cmptmp190 = icmp ne i64 %var.load189, 0
  br i1 %cmptmp190, label %choice.then191, label %choice.exit192

loop.exit.nat.31:                                 ; preds = %loop.header.31
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit192
  %step.val441 = load i64, ptr %loop.step.31, align 8
  %loop.next442 = add i64 %counter.load169, %step.val441
  store i64 %loop.next442, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %loop.exit.nat.31
  %var.load443 = load ptr, ptr %"var.res'", align 8
  %a.load444 = load ptr, ptr %"var.res'", align 8
  %a.null445 = icmp eq ptr %a.load444, null
  br i1 %a.null445, label %a.create446, label %a.after447

choice.then191:                                   ; preds = %loop.body.31
  %var.load193 = load ptr, ptr %var.idxs, align 8
  %a.load194 = load ptr, ptr %var.idxs, align 8
  %a.null195 = icmp eq ptr %a.load194, null
  br i1 %a.null195, label %a.create196, label %a.after197

choice.exit192:                                   ; preds = %a.store428, %loop.body.31
  br label %loop.latch.31

a.create196:                                      ; preds = %choice.then191
  %arena.cur198 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create199 = call ptr @dva_arena_alloc(ptr %arena.cur198, i64 24)
  %arena.cur200 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf201 = call ptr @dva_arena_alloc(ptr %arena.cur200, i64 128)
  %a.len.gep202 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 0
  store i64 0, ptr %a.len.gep202, align 8
  %a.data.gep203 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 1
  store ptr %a.buf201, ptr %a.data.gep203, align 8
  %a.cap.gep204 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create199, i32 0, i32 2
  store i64 16, ptr %a.cap.gep204, align 8
  store ptr %a.create199, ptr %var.idxs, align 8
  br label %a.after197

a.after197:                                       ; preds = %a.create196, %choice.then191
  %a.load2205 = load ptr, ptr %var.idxs, align 8
  %var.load206 = load i64, ptr %var.k168, align 8
  %a.rd.nonnull207 = icmp ne ptr %a.load2205, null
  br i1 %a.rd.nonnull207, label %a.rd.check208, label %a.rd.err.null210

a.rd.check208:                                    ; preds = %a.after197
  %a.rd.len213 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2205, i32 0, i32 0
  %a.rd.len214 = load i64, ptr %a.rd.len213, align 8
  %a.rd.ge0215 = icmp sge i64 %var.load206, 0
  %a.rd.lt216 = icmp slt i64 %var.load206, %a.rd.len214
  %a.rd.bounds217 = and i1 %a.rd.ge0215, %a.rd.lt216
  br i1 %a.rd.bounds217, label %a.rd.ok209, label %a.rd.err.oob211

a.rd.ok209:                                       ; preds = %a.rd.check208
  %a.rd.data218 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2205, i32 0, i32 1
  %a.rd.data219 = load ptr, ptr %a.rd.data218, align 8
  %a.rd.elem.gep220 = getelementptr i64, ptr %a.rd.data219, i64 %var.load206
  %a.rd.elem221 = load i64, ptr %a.rd.elem.gep220, align 8
  br label %a.rd.done212

a.rd.err.null210:                                 ; preds = %a.after197
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 56)
  %err.code.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 0
  store i64 4011, ptr %err.code.gep224, align 8
  %err.msg.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep225, align 8
  %err.file.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep226, align 8
  %err.line.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 3
  store i64 142, ptr %err.line.gep227, align 8
  %err.col.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 4
  store i64 30, ptr %err.col.gep228, align 8
  %err.ctx.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 5
  %err.ctx0.gep230 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep229, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep230, align 8
  %err.ctx1.gep231 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep229, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep231, align 8
  %err.p2i232 = ptrtoint ptr %err.alloc223 to i64
  br label %a.rd.done212

a.rd.err.oob211:                                  ; preds = %a.rd.check208
  %arena.cur233 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 56)
  %err.code.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 0
  store i64 4011, ptr %err.code.gep235, align 8
  %err.msg.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep236, align 8
  %err.file.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep237, align 8
  %err.line.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 3
  store i64 142, ptr %err.line.gep238, align 8
  %err.col.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 4
  store i64 30, ptr %err.col.gep239, align 8
  %err.ctx.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc234, i32 0, i32 5
  %err.ctx0.gep241 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep240, i32 0, i32 0
  store i64 %var.load206, ptr %err.ctx0.gep241, align 8
  %err.ctx1.gep242 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep240, i32 0, i32 1
  store i64 %a.rd.len214, ptr %err.ctx1.gep242, align 8
  %err.p2i243 = ptrtoint ptr %err.alloc234 to i64
  br label %a.rd.done212

a.rd.done212:                                     ; preds = %a.rd.err.oob211, %a.rd.err.null210, %a.rd.ok209
  %a.rd.tag244 = phi i1 [ true, %a.rd.ok209 ], [ false, %a.rd.err.null210 ], [ false, %a.rd.err.oob211 ]
  %a.rd.pay245 = phi i64 [ %a.rd.elem221, %a.rd.ok209 ], [ %err.p2i232, %a.rd.err.null210 ], [ %err.p2i243, %a.rd.err.oob211 ]
  %ram.tag246 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag244, 0
  %ram.pay247 = insertvalue { i1, i64 } %ram.tag246, i64 %a.rd.pay245, 1
  %unwrap.is_pos248 = extractvalue { i1, i64 } %ram.pay247, 0
  br i1 %unwrap.is_pos248, label %unwrap.pos.32, label %unwrap.abort.32

unwrap.pos.32:                                    ; preds = %a.rd.done212
  %unwrap.pay.pos280 = extractvalue { i1, i64 } %ram.pay247, 1
  store i64 %unwrap.pay.pos280, ptr %var.slot, align 8
  %var.load281 = load ptr, ptr %var.p, align 8
  %fld.gep282 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load281, i32 0, i32 3
  %fld.load283 = load ptr, ptr %fld.gep282, align 8
  %var.load284 = load i64, ptr %var.slot, align 8
  %a.rd.nonnull285 = icmp ne ptr %fld.load283, null
  br i1 %a.rd.nonnull285, label %a.rd.check286, label %a.rd.err.null288

unwrap.abort.32:                                  ; preds = %a.rd.done212
  %unwrap.pay.abort249 = extractvalue { i1, i64 } %ram.pay247, 1
  %err.ptr250 = inttoptr i64 %unwrap.pay.abort249 to ptr
  %err.code.gep251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr250, i32 0, i32 0
  %err.code252 = load i64, ptr %err.code.gep251, align 8
  %err.msg.gep253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr250, i32 0, i32 1
  %err.msg.struct254 = load ptr, ptr %err.msg.gep253, align 8
  %err.file.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr250, i32 0, i32 2
  %err.file.struct256 = load ptr, ptr %err.file.gep255, align 8
  %err.line.gep257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr250, i32 0, i32 3
  %err.line258 = load i64, ptr %err.line.gep257, align 8
  %err.col.gep259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr250, i32 0, i32 4
  %err.col260 = load i64, ptr %err.col.gep259, align 8
  %err.msg.len261 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct254, i32 0, i32 0
  %err.msg.len262 = load i64, ptr %err.msg.len261, align 8
  %err.msg.len263 = and i64 %err.msg.len262, 281474976710655
  %err.msg.len32264 = trunc i64 %err.msg.len263 to i32
  %err.msg.data265 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct254, i32 0, i32 1
  %err.msg.data266 = load ptr, ptr %err.msg.data265, align 8
  %err.file.len267 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct256, i32 0, i32 0
  %err.file.len268 = load i64, ptr %err.file.len267, align 8
  %err.file.len269 = and i64 %err.file.len268, 281474976710655
  %err.file.len32270 = trunc i64 %err.file.len269 to i32
  %err.file.data271 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct256, i32 0, i32 1
  %err.file.data272 = load ptr, ptr %err.file.data271, align 8
  %err.thread.rec273 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread274 = icmp ne ptr %err.thread.rec273, null
  br i1 %err.is.thread274, label %err.thread275, label %err.normal276

err.thread275:                                    ; preds = %unwrap.abort.32
  %err.haserr.gep277 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec273, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep277, align 8
  %err.err.gep278 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec273, i32 0, i32 7
  store ptr %err.ptr250, ptr %err.err.gep278, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal276:                                    ; preds = %unwrap.abort.32
  %err.panic.printf279 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code252, i32 %err.msg.len32264, ptr %err.msg.data266, i32 %err.file.len32270, ptr %err.file.data272, i64 %err.line258, i64 %err.col260)
  call void @exit(i32 1)
  unreachable

a.rd.check286:                                    ; preds = %unwrap.pos.32
  %a.rd.len291 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load283, i32 0, i32 0
  %a.rd.len292 = load i64, ptr %a.rd.len291, align 8
  %a.rd.ge0293 = icmp sge i64 %var.load284, 0
  %a.rd.lt294 = icmp slt i64 %var.load284, %a.rd.len292
  %a.rd.bounds295 = and i1 %a.rd.ge0293, %a.rd.lt294
  br i1 %a.rd.bounds295, label %a.rd.ok287, label %a.rd.err.oob289

a.rd.ok287:                                       ; preds = %a.rd.check286
  %a.rd.data296 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load283, i32 0, i32 1
  %a.rd.data297 = load ptr, ptr %a.rd.data296, align 8
  %a.rd.elem.gep298 = getelementptr i64, ptr %a.rd.data297, i64 %var.load284
  %a.rd.elem299 = load i64, ptr %a.rd.elem.gep298, align 8
  br label %a.rd.done290

a.rd.err.null288:                                 ; preds = %unwrap.pos.32
  %arena.cur300 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 56)
  %err.code.gep302 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 0
  store i64 4011, ptr %err.code.gep302, align 8
  %err.msg.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep303, align 8
  %err.file.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep304, align 8
  %err.line.gep305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 3
  store i64 0, ptr %err.line.gep305, align 8
  %err.col.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 4
  store i64 0, ptr %err.col.gep306, align 8
  %err.ctx.gep307 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 5
  %err.ctx0.gep308 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep307, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep308, align 8
  %err.ctx1.gep309 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep307, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep309, align 8
  %err.p2i310 = ptrtoint ptr %err.alloc301 to i64
  br label %a.rd.done290

a.rd.err.oob289:                                  ; preds = %a.rd.check286
  %arena.cur311 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc312 = call ptr @dva_arena_alloc(ptr %arena.cur311, i64 56)
  %err.code.gep313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 0
  store i64 4011, ptr %err.code.gep313, align 8
  %err.msg.gep314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep314, align 8
  %err.file.gep315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep315, align 8
  %err.line.gep316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 3
  store i64 0, ptr %err.line.gep316, align 8
  %err.col.gep317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 4
  store i64 0, ptr %err.col.gep317, align 8
  %err.ctx.gep318 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc312, i32 0, i32 5
  %err.ctx0.gep319 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep318, i32 0, i32 0
  store i64 %var.load284, ptr %err.ctx0.gep319, align 8
  %err.ctx1.gep320 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep318, i32 0, i32 1
  store i64 %a.rd.len292, ptr %err.ctx1.gep320, align 8
  %err.p2i321 = ptrtoint ptr %err.alloc312 to i64
  br label %a.rd.done290

a.rd.done290:                                     ; preds = %a.rd.err.oob289, %a.rd.err.null288, %a.rd.ok287
  %a.rd.tag322 = phi i1 [ true, %a.rd.ok287 ], [ false, %a.rd.err.null288 ], [ false, %a.rd.err.oob289 ]
  %a.rd.pay323 = phi i64 [ %a.rd.elem299, %a.rd.ok287 ], [ %err.p2i310, %a.rd.err.null288 ], [ %err.p2i321, %a.rd.err.oob289 ]
  %ram.tag324 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag322, 0
  %ram.pay325 = insertvalue { i1, i64 } %ram.tag324, i64 %a.rd.pay323, 1
  %unwrap.is_pos326 = extractvalue { i1, i64 } %ram.pay325, 0
  br i1 %unwrap.is_pos326, label %unwrap.pos.33, label %unwrap.abort.33

unwrap.pos.33:                                    ; preds = %a.rd.done290
  %unwrap.pay.pos358 = extractvalue { i1, i64 } %ram.pay325, 1
  %pay.ptr359 = inttoptr i64 %unwrap.pay.pos358 to ptr
  store ptr %pay.ptr359, ptr %var.ev, align 8
  %var.load360 = load i64, ptr %var.rev, align 8
  %bandtmp361 = and i64 %var.load360, 1
  %cmptmp362 = icmp ne i64 %bandtmp361, 0
  br i1 %cmptmp362, label %choice.then363, label %choice.else364

unwrap.abort.33:                                  ; preds = %a.rd.done290
  %unwrap.pay.abort327 = extractvalue { i1, i64 } %ram.pay325, 1
  %err.ptr328 = inttoptr i64 %unwrap.pay.abort327 to ptr
  %err.code.gep329 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr328, i32 0, i32 0
  %err.code330 = load i64, ptr %err.code.gep329, align 8
  %err.msg.gep331 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr328, i32 0, i32 1
  %err.msg.struct332 = load ptr, ptr %err.msg.gep331, align 8
  %err.file.gep333 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr328, i32 0, i32 2
  %err.file.struct334 = load ptr, ptr %err.file.gep333, align 8
  %err.line.gep335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr328, i32 0, i32 3
  %err.line336 = load i64, ptr %err.line.gep335, align 8
  %err.col.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr328, i32 0, i32 4
  %err.col338 = load i64, ptr %err.col.gep337, align 8
  %err.msg.len339 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct332, i32 0, i32 0
  %err.msg.len340 = load i64, ptr %err.msg.len339, align 8
  %err.msg.len341 = and i64 %err.msg.len340, 281474976710655
  %err.msg.len32342 = trunc i64 %err.msg.len341 to i32
  %err.msg.data343 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct332, i32 0, i32 1
  %err.msg.data344 = load ptr, ptr %err.msg.data343, align 8
  %err.file.len345 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct334, i32 0, i32 0
  %err.file.len346 = load i64, ptr %err.file.len345, align 8
  %err.file.len347 = and i64 %err.file.len346, 281474976710655
  %err.file.len32348 = trunc i64 %err.file.len347 to i32
  %err.file.data349 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct334, i32 0, i32 1
  %err.file.data350 = load ptr, ptr %err.file.data349, align 8
  %err.thread.rec351 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread352 = icmp ne ptr %err.thread.rec351, null
  br i1 %err.is.thread352, label %err.thread353, label %err.normal354

err.thread353:                                    ; preds = %unwrap.abort.33
  %err.haserr.gep355 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec351, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep355, align 8
  %err.err.gep356 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec351, i32 0, i32 7
  store ptr %err.ptr328, ptr %err.err.gep356, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal354:                                    ; preds = %unwrap.abort.33
  %err.panic.printf357 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code330, i32 %err.msg.len32342, ptr %err.msg.data344, i32 %err.file.len32348, ptr %err.file.data350, i64 %err.line336, i64 %err.col338)
  call void @exit(i32 1)
  unreachable

choice.then363:                                   ; preds = %unwrap.pos.33
  %var.load366 = load i64, ptr @"var.event::READ", align 8
  br label %choice.exit365

choice.else364:                                   ; preds = %unwrap.pos.33
  br label %choice.exit365

choice.exit365:                                   ; preds = %choice.else364, %choice.then363
  %choice.res367 = phi i64 [ %var.load366, %choice.then363 ], [ 0, %choice.else364 ]
  %var.load368 = load i64, ptr %var.rev, align 8
  %bandtmp369 = and i64 %var.load368, 4
  %cmptmp370 = icmp ne i64 %bandtmp369, 0
  br i1 %cmptmp370, label %choice.then371, label %choice.else372

choice.then371:                                   ; preds = %choice.exit365
  %var.load374 = load i64, ptr @"var.event::WRITE", align 8
  br label %choice.exit373

choice.else372:                                   ; preds = %choice.exit365
  br label %choice.exit373

choice.exit373:                                   ; preds = %choice.else372, %choice.then371
  %choice.res375 = phi i64 [ %var.load374, %choice.then371 ], [ 0, %choice.else372 ]
  %bortmp376 = or i64 %choice.res367, %choice.res375
  %var.load377 = load i64, ptr %var.rev, align 8
  %bandtmp378 = and i64 %var.load377, 2
  %cmptmp379 = icmp ne i64 %bandtmp378, 0
  br i1 %cmptmp379, label %choice.then380, label %choice.else381

choice.then380:                                   ; preds = %choice.exit373
  %var.load383 = load i64, ptr @"var.event::PRI", align 8
  br label %choice.exit382

choice.else381:                                   ; preds = %choice.exit373
  br label %choice.exit382

choice.exit382:                                   ; preds = %choice.else381, %choice.then380
  %choice.res384 = phi i64 [ %var.load383, %choice.then380 ], [ 0, %choice.else381 ]
  %bortmp385 = or i64 %bortmp376, %choice.res384
  %var.load386 = load i64, ptr %var.rev, align 8
  %bandtmp387 = and i64 %var.load386, 8
  %cmptmp388 = icmp ne i64 %bandtmp387, 0
  br i1 %cmptmp388, label %choice.then389, label %choice.else390

choice.then389:                                   ; preds = %choice.exit382
  %var.load392 = load i64, ptr @"var.event::ERR", align 8
  br label %choice.exit391

choice.else390:                                   ; preds = %choice.exit382
  br label %choice.exit391

choice.exit391:                                   ; preds = %choice.else390, %choice.then389
  %choice.res393 = phi i64 [ %var.load392, %choice.then389 ], [ 0, %choice.else390 ]
  %bortmp394 = or i64 %bortmp385, %choice.res393
  %var.load395 = load i64, ptr %var.rev, align 8
  %bandtmp396 = and i64 %var.load395, 16
  %cmptmp397 = icmp ne i64 %bandtmp396, 0
  br i1 %cmptmp397, label %choice.then398, label %choice.else399

choice.then398:                                   ; preds = %choice.exit391
  %var.load401 = load i64, ptr @"var.event::HUP", align 8
  br label %choice.exit400

choice.else399:                                   ; preds = %choice.exit391
  br label %choice.exit400

choice.exit400:                                   ; preds = %choice.else399, %choice.then398
  %choice.res402 = phi i64 [ %var.load401, %choice.then398 ], [ 0, %choice.else399 ]
  %bortmp403 = or i64 %bortmp394, %choice.res402
  store i64 %bortmp403, ptr %var.ev_mask, align 8
  %var.load404 = load ptr, ptr %var.ev, align 8
  %fld.gep405 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load404, i32 0, i32 0
  %fld.load406 = load i64, ptr %fld.gep405, align 8
  %var.load407 = load i64, ptr %var.ev_mask, align 8
  %var.load408 = load ptr, ptr %var.ev, align 8
  %fld.gep409 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load408, i32 0, i32 2
  %fld.load410 = load i64, ptr %fld.gep409, align 8
  %arena.cur411 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur411, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %fld.load406, ptr %rec.fld, align 8
  %rec.fld412 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load407, ptr %rec.fld412, align 8
  %rec.fld413 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load410, ptr %rec.fld413, align 8
  %a.load414 = load ptr, ptr %"var.res'", align 8
  %a.null415 = icmp eq ptr %a.load414, null
  br i1 %a.null415, label %a.create416, label %a.after417

a.create416:                                      ; preds = %choice.exit400
  %arena.cur418 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 24)
  %arena.cur420 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf421 = call ptr @dva_arena_alloc(ptr %arena.cur420, i64 128)
  %a.len.gep422 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create419, i32 0, i32 0
  store i64 0, ptr %a.len.gep422, align 8
  %a.data.gep423 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create419, i32 0, i32 1
  store ptr %a.buf421, ptr %a.data.gep423, align 8
  %a.cap.gep424 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create419, i32 0, i32 2
  store i64 16, ptr %a.cap.gep424, align 8
  store ptr %a.create419, ptr %"var.res'", align 8
  br label %a.after417

a.after417:                                       ; preds = %a.create416, %choice.exit400
  %a.load2425 = load ptr, ptr %"var.res'", align 8
  br label %a.check426

a.check426:                                       ; preds = %a.after417
  %a.len429 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 0
  %a.len430 = load i64, ptr %a.len429, align 8
  %a.cap431 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 2
  %a.cap432 = load i64, ptr %a.cap431, align 8
  %a.needs.grow433 = icmp eq i64 %a.len430, %a.cap432
  br i1 %a.needs.grow433, label %a.grow427, label %a.store428

a.grow427:                                        ; preds = %a.check426
  call void @dva_array_grow(ptr %a.load2425)
  br label %a.store428

a.store428:                                       ; preds = %a.grow427, %a.check426
  %a.cur.data434 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 1
  %a.cur.data435 = load ptr, ptr %a.cur.data434, align 8
  %a.cur.len436 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 0
  %a.cur.len437 = load i64, ptr %a.cur.len436, align 8
  %a.elem.gep438 = getelementptr i64, ptr %a.cur.data435, i64 %a.cur.len437
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep438, align 8
  %a.next.len439 = add i64 %a.cur.len437, 1
  %b.len.gep440 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2425, i32 0, i32 0
  store i64 %a.next.len439, ptr %b.len.gep440, align 8
  br label %choice.exit192

a.create446:                                      ; preds = %loop.exit.31
  %arena.cur448 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create449 = call ptr @dva_arena_alloc(ptr %arena.cur448, i64 24)
  %arena.cur450 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf451 = call ptr @dva_arena_alloc(ptr %arena.cur450, i64 128)
  %a.len.gep452 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create449, i32 0, i32 0
  store i64 0, ptr %a.len.gep452, align 8
  %a.data.gep453 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create449, i32 0, i32 1
  store ptr %a.buf451, ptr %a.data.gep453, align 8
  %a.cap.gep454 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create449, i32 0, i32 2
  store i64 16, ptr %a.cap.gep454, align 8
  store ptr %a.create449, ptr %"var.res'", align 8
  br label %a.after447

a.after447:                                       ; preds = %a.create446, %loop.exit.31
  %a.load2455 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2455
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
