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
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.e = alloca ptr, align 8
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
  store i64 0, ptr %var.i, align 8
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

loop.exit.nat.21:                                 ; preds = %loop.header.21
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
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
  store i64 0, ptr %var.i, align 8
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

loop.exit.nat.24:                                 ; preds = %loop.header.24
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
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
  store i64 0, ptr %var.i, align 8
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

loop.exit.nat.26:                                 ; preds = %loop.header.26
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
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

define ptr @"event::wait"(ptr %0, i64 %1) #0 {
entry:
  %var.ev_mask = alloca i64, align 8
  %var.ev = alloca ptr, align 8
  %var.slot = alloca i64, align 8
  %var.rev = alloca i64, align 8
  %var._145 = alloca i64, align 8
  %var._i144 = alloca i64, align 8
  %var.k140 = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.k = alloca i64, align 8
  %var.pmask = alloca i64, align 8
  %var.emask = alloca i64, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.e = alloca ptr, align 8
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
  store i64 0, ptr %var.i, align 8
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
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %var.load28 = load ptr, ptr %var.e, align 8
  %fld.gep29 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load28, i32 0, i32 0
  %fld.load30 = load i64, ptr %fld.gep29, align 8
  %cmptmp = icmp sge i64 %fld.load30, 0
  br i1 %cmptmp, label %choice.then31, label %choice.exit32

loop.exit.nat.28:                                 ; preds = %loop.header.28
  %loop.rel.end = sub i64 %counter.load, 0
  store i64 %loop.rel.end, ptr %var.i, align 8
  br label %loop.exit.28

loop.latch.28:                                    ; preds = %choice.exit32
  %step.val = load i64, ptr %loop.step.28, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.28, align 8
  br label %loop.header.28

loop.exit.28:                                     ; preds = %loop.exit.nat.28
  %var.load116 = load ptr, ptr %var.pfds, align 8
  %b.ptr117 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load116, i32 0, i32 1
  %b.ptr118 = load ptr, ptr %b.ptr117, align 8
  %addr.ffi.int = ptrtoint ptr %b.ptr118 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load119 = load i64, ptr %"var.nfds'", align 8
  %var.load120 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @poll(ptr %addr.ffi.clean, i64 %var.load119, i64 %var.load120)
  store i64 %call.res, ptr %var.n, align 8
  %var.load121 = load i64, ptr %var.n, align 8
  %cmptmp122 = icmp sle i64 %var.load121, 0
  br i1 %cmptmp122, label %choice.then123, label %choice.exit124

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
  %var.load61 = load i64, ptr %var.k, align 8
  %multmp62 = mul i64 %var.load61, 8
  %ptr.int.l = ptrtoint ptr %b.ptr60 to i64
  %addtmp = add i64 %ptr.int.l, %multmp62
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load63 = load ptr, ptr %var.e, align 8
  %fld.gep64 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load63, i32 0, i32 0
  %fld.load65 = load i64, ptr %fld.gep64, align 8
  %coerce.trunc = trunc i64 %fld.load65 to i32
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  store i32 %coerce.trunc, ptr %raw.clean.ptr, align 4
  %var.load66 = load ptr, ptr %var.pfds, align 8
  %b.ptr67 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load66, i32 0, i32 1
  %b.ptr68 = load ptr, ptr %b.ptr67, align 8
  %var.load69 = load i64, ptr %var.k, align 8
  %multmp70 = mul i64 %var.load69, 8
  %ptr.int.l71 = ptrtoint ptr %b.ptr68 to i64
  %addtmp72 = add i64 %ptr.int.l71, %multmp70
  %ptr.res73 = inttoptr i64 %addtmp72 to ptr
  %ptr.int.l74 = ptrtoint ptr %ptr.res73 to i64
  %addtmp75 = add i64 %ptr.int.l74, 4
  %ptr.res76 = inttoptr i64 %addtmp75 to ptr
  %var.load77 = load i64, ptr %var.pmask, align 8
  %coerce.trunc78 = trunc i64 %var.load77 to i16
  %raw.int79 = ptrtoint ptr %ptr.res76 to i64
  %raw.clean.int80 = and i64 %raw.int79, 281474976710655
  %raw.clean.ptr81 = inttoptr i64 %raw.clean.int80 to ptr
  store i16 %coerce.trunc78, ptr %raw.clean.ptr81, align 2
  %var.load82 = load ptr, ptr %var.pfds, align 8
  %b.ptr83 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load82, i32 0, i32 1
  %b.ptr84 = load ptr, ptr %b.ptr83, align 8
  %var.load85 = load i64, ptr %var.k, align 8
  %multmp86 = mul i64 %var.load85, 8
  %ptr.int.l87 = ptrtoint ptr %b.ptr84 to i64
  %addtmp88 = add i64 %ptr.int.l87, %multmp86
  %ptr.res89 = inttoptr i64 %addtmp88 to ptr
  %ptr.int.l90 = ptrtoint ptr %ptr.res89 to i64
  %addtmp91 = add i64 %ptr.int.l90, 6
  %ptr.res92 = inttoptr i64 %addtmp91 to ptr
  %raw.int93 = ptrtoint ptr %ptr.res92 to i64
  %raw.clean.int94 = and i64 %raw.int93, 281474976710655
  %raw.clean.ptr95 = inttoptr i64 %raw.clean.int94 to ptr
  store i16 0, ptr %raw.clean.ptr95, align 2
  %var.load96 = load i64, ptr %var.i, align 8
  %a.load97 = load ptr, ptr %var.idxs, align 8
  %a.null98 = icmp eq ptr %a.load97, null
  br i1 %a.null98, label %a.create99, label %a.after100

a.create99:                                       ; preds = %choice.exit55
  %arena.cur101 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create102 = call ptr @dva_arena_alloc(ptr %arena.cur101, i64 24)
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 128)
  %a.len.gep105 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 0
  store i64 0, ptr %a.len.gep105, align 8
  %a.data.gep106 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 1
  store ptr %a.buf104, ptr %a.data.gep106, align 8
  %a.cap.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create102, i32 0, i32 2
  store i64 16, ptr %a.cap.gep107, align 8
  store ptr %a.create102, ptr %var.idxs, align 8
  br label %a.after100

a.after100:                                       ; preds = %a.create99, %choice.exit55
  %a.load2108 = load ptr, ptr %var.idxs, align 8
  br label %a.check

a.check:                                          ; preds = %a.after100
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 0
  %a.len109 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 2
  %a.cap110 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len109, %a.cap110
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2108)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 1
  %a.cur.data111 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 0
  %a.cur.len112 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data111, i64 %a.cur.len112
  store i64 %var.load96, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len112, 1
  %b.len.gep113 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2108, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep113, align 8
  %var.load114 = load i64, ptr %"var.nfds'", align 8
  %addtmp115 = add i64 %var.load114, 1
  store i64 %addtmp115, ptr %"var.nfds'", align 8
  br label %choice.exit32

choice.then123:                                   ; preds = %loop.exit.28
  %var.load125 = load ptr, ptr %"var.res'", align 8
  %a.load126 = load ptr, ptr %"var.res'", align 8
  %a.null127 = icmp eq ptr %a.load126, null
  br i1 %a.null127, label %a.create128, label %a.after129

choice.exit124:                                   ; preds = %ret.dead138, %loop.exit.28
  %var.load139 = load i64, ptr %"var.nfds'", align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

a.create128:                                      ; preds = %choice.then123
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 24)
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 128)
  %a.len.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 0
  store i64 0, ptr %a.len.gep134, align 8
  %a.data.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 1
  store ptr %a.buf133, ptr %a.data.gep135, align 8
  %a.cap.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create131, i32 0, i32 2
  store i64 16, ptr %a.cap.gep136, align 8
  store ptr %a.create131, ptr %"var.res'", align 8
  br label %a.after129

a.after129:                                       ; preds = %a.create128, %choice.then123
  %a.load2137 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2137

ret.dead138:                                      ; No predecessors!
  br label %choice.exit124

loop.header.29:                                   ; preds = %loop.latch.29, %choice.exit124
  %counter.load141 = load i64, ptr %loop.idx.29, align 8
  %loop.cond142 = icmp slt i64 %counter.load141, %var.load139
  br i1 %loop.cond142, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i143 = sub i64 %counter.load141, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i143, ptr %var._i144, align 8
  store i64 %counter.load141, ptr %var._145, align 8
  store i64 %counter.load141, ptr %var.k140, align 8
  %var.load146 = load ptr, ptr %var.pfds, align 8
  %b.ptr147 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load146, i32 0, i32 1
  %b.ptr148 = load ptr, ptr %b.ptr147, align 8
  %var.load149 = load i64, ptr %var.k140, align 8
  %multmp150 = mul i64 %var.load149, 8
  %ptr.int.l151 = ptrtoint ptr %b.ptr148 to i64
  %addtmp152 = add i64 %ptr.int.l151, %multmp150
  %ptr.res153 = inttoptr i64 %addtmp152 to ptr
  %ptr.int.l154 = ptrtoint ptr %ptr.res153 to i64
  %addtmp155 = add i64 %ptr.int.l154, 6
  %ptr.res156 = inttoptr i64 %addtmp155 to ptr
  %raw.int157 = ptrtoint ptr %ptr.res156 to i64
  %raw.clean.int158 = and i64 %raw.int157, 281474976710655
  %raw.clean.ptr159 = inttoptr i64 %raw.clean.int158 to ptr
  %raw.load = load volatile i16, ptr %raw.clean.ptr159, align 2
  %coerce.sext = sext i16 %raw.load to i64
  %bandtmp160 = and i64 %coerce.sext, 65535
  store i64 %bandtmp160, ptr %var.rev, align 8
  %var.load161 = load i64, ptr %var.rev, align 8
  %cmptmp162 = icmp ne i64 %var.load161, 0
  br i1 %cmptmp162, label %choice.then163, label %choice.exit164

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit164
  %step.val363 = load i64, ptr %loop.step.29, align 8
  %loop.next364 = add i64 %counter.load141, %step.val363
  store i64 %loop.next364, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  %var.load365 = load ptr, ptr %"var.res'", align 8
  %a.load366 = load ptr, ptr %"var.res'", align 8
  %a.null367 = icmp eq ptr %a.load366, null
  br i1 %a.null367, label %a.create368, label %a.after369

choice.then163:                                   ; preds = %loop.body.29
  %var.load165 = load ptr, ptr %var.idxs, align 8
  %a.load166 = load ptr, ptr %var.idxs, align 8
  %a.null167 = icmp eq ptr %a.load166, null
  br i1 %a.null167, label %a.create168, label %a.after169

choice.exit164:                                   ; preds = %a.store350, %loop.body.29
  br label %loop.latch.29

a.create168:                                      ; preds = %choice.then163
  %arena.cur170 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create171 = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 24)
  %arena.cur172 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf173 = call ptr @dva_arena_alloc(ptr %arena.cur172, i64 128)
  %a.len.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 0
  store i64 0, ptr %a.len.gep174, align 8
  %a.data.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 1
  store ptr %a.buf173, ptr %a.data.gep175, align 8
  %a.cap.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create171, i32 0, i32 2
  store i64 16, ptr %a.cap.gep176, align 8
  store ptr %a.create171, ptr %var.idxs, align 8
  br label %a.after169

a.after169:                                       ; preds = %a.create168, %choice.then163
  %a.load2177 = load ptr, ptr %var.idxs, align 8
  %var.load178 = load i64, ptr %var.k140, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2177, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after169
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 0
  %a.rd.len179 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load178, 0
  %a.rd.lt = icmp slt i64 %var.load178, %a.rd.len179
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 1
  %a.rd.data180 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data180, i64 %var.load178
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after169
  %arena.cur181 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur181, i64 56)
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
  %arena.cur182 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 56)
  %err.code.gep184 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 0
  store i64 4011, ptr %err.code.gep184, align 8
  %err.msg.gep185 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep185, align 8
  %err.file.gep186 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep186, align 8
  %err.line.gep187 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 3
  store i64 140, ptr %err.line.gep187, align 8
  %err.col.gep188 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 4
  store i64 30, ptr %err.col.gep188, align 8
  %err.ctx.gep189 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc183, i32 0, i32 5
  %err.ctx0.gep190 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep189, i32 0, i32 0
  store i64 %var.load178, ptr %err.ctx0.gep190, align 8
  %err.ctx1.gep191 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep189, i32 0, i32 1
  store i64 %a.rd.len179, ptr %err.ctx1.gep191, align 8
  %err.p2i192 = ptrtoint ptr %err.alloc183 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i192, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.30, label %unwrap.abort.30

unwrap.pos.30:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  store i64 %unwrap.pay.pos, ptr %var.slot, align 8
  %var.load204 = load ptr, ptr %var.p, align 8
  %fld.gep205 = getelementptr inbounds { i64, i1, i64, ptr }, ptr %var.load204, i32 0, i32 3
  %fld.load206 = load ptr, ptr %fld.gep205, align 8
  %var.load207 = load i64, ptr %var.slot, align 8
  %a.rd.nonnull208 = icmp ne ptr %fld.load206, null
  br i1 %a.rd.nonnull208, label %a.rd.check209, label %a.rd.err.null211

unwrap.abort.30:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep193 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep193, align 8
  %err.msg.gep194 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep194, align 8
  %err.file.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep195, align 8
  %err.line.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep196, align 8
  %err.col.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep197, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len198 = load i64, ptr %err.msg.len, align 8
  %err.msg.len199 = and i64 %err.msg.len198, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len199 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data200 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len201 = load i64, ptr %err.file.len, align 8
  %err.file.len202 = and i64 %err.file.len201, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len202 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data203 = load ptr, ptr %err.file.data, align 8
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
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data200, i32 %err.file.len32, ptr %err.file.data203, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.rd.check209:                                    ; preds = %unwrap.pos.30
  %a.rd.len214 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load206, i32 0, i32 0
  %a.rd.len215 = load i64, ptr %a.rd.len214, align 8
  %a.rd.ge0216 = icmp sge i64 %var.load207, 0
  %a.rd.lt217 = icmp slt i64 %var.load207, %a.rd.len215
  %a.rd.bounds218 = and i1 %a.rd.ge0216, %a.rd.lt217
  br i1 %a.rd.bounds218, label %a.rd.ok210, label %a.rd.err.oob212

a.rd.ok210:                                       ; preds = %a.rd.check209
  %a.rd.data219 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load206, i32 0, i32 1
  %a.rd.data220 = load ptr, ptr %a.rd.data219, align 8
  %a.rd.elem.gep221 = getelementptr i64, ptr %a.rd.data220, i64 %var.load207
  %a.rd.elem222 = load i64, ptr %a.rd.elem.gep221, align 8
  br label %a.rd.done213

a.rd.err.null211:                                 ; preds = %unwrap.pos.30
  %arena.cur223 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc224 = call ptr @dva_arena_alloc(ptr %arena.cur223, i64 56)
  %err.code.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 0
  store i64 4011, ptr %err.code.gep225, align 8
  %err.msg.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep226, align 8
  %err.file.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep227, align 8
  %err.line.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 3
  store i64 0, ptr %err.line.gep228, align 8
  %err.col.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 4
  store i64 0, ptr %err.col.gep229, align 8
  %err.ctx.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc224, i32 0, i32 5
  %err.ctx0.gep231 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep230, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep231, align 8
  %err.ctx1.gep232 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep230, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep232, align 8
  %err.p2i233 = ptrtoint ptr %err.alloc224 to i64
  br label %a.rd.done213

a.rd.err.oob212:                                  ; preds = %a.rd.check209
  %arena.cur234 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc235 = call ptr @dva_arena_alloc(ptr %arena.cur234, i64 56)
  %err.code.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc235, i32 0, i32 0
  store i64 4011, ptr %err.code.gep236, align 8
  %err.msg.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc235, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep237, align 8
  %err.file.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc235, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep238, align 8
  %err.line.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc235, i32 0, i32 3
  store i64 0, ptr %err.line.gep239, align 8
  %err.col.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc235, i32 0, i32 4
  store i64 0, ptr %err.col.gep240, align 8
  %err.ctx.gep241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc235, i32 0, i32 5
  %err.ctx0.gep242 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep241, i32 0, i32 0
  store i64 %var.load207, ptr %err.ctx0.gep242, align 8
  %err.ctx1.gep243 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep241, i32 0, i32 1
  store i64 %a.rd.len215, ptr %err.ctx1.gep243, align 8
  %err.p2i244 = ptrtoint ptr %err.alloc235 to i64
  br label %a.rd.done213

a.rd.done213:                                     ; preds = %a.rd.err.oob212, %a.rd.err.null211, %a.rd.ok210
  %a.rd.tag245 = phi i1 [ true, %a.rd.ok210 ], [ false, %a.rd.err.null211 ], [ false, %a.rd.err.oob212 ]
  %a.rd.pay246 = phi i64 [ %a.rd.elem222, %a.rd.ok210 ], [ %err.p2i233, %a.rd.err.null211 ], [ %err.p2i244, %a.rd.err.oob212 ]
  %ram.tag247 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag245, 0
  %ram.pay248 = insertvalue { i1, i64 } %ram.tag247, i64 %a.rd.pay246, 1
  %unwrap.is_pos249 = extractvalue { i1, i64 } %ram.pay248, 0
  br i1 %unwrap.is_pos249, label %unwrap.pos.31, label %unwrap.abort.31

unwrap.pos.31:                                    ; preds = %a.rd.done213
  %unwrap.pay.pos281 = extractvalue { i1, i64 } %ram.pay248, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos281 to ptr
  store ptr %pay.ptr, ptr %var.ev, align 8
  %var.load282 = load i64, ptr %var.rev, align 8
  %bandtmp283 = and i64 %var.load282, 1
  %cmptmp284 = icmp ne i64 %bandtmp283, 0
  br i1 %cmptmp284, label %choice.then285, label %choice.else286

unwrap.abort.31:                                  ; preds = %a.rd.done213
  %unwrap.pay.abort250 = extractvalue { i1, i64 } %ram.pay248, 1
  %err.ptr251 = inttoptr i64 %unwrap.pay.abort250 to ptr
  %err.code.gep252 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr251, i32 0, i32 0
  %err.code253 = load i64, ptr %err.code.gep252, align 8
  %err.msg.gep254 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr251, i32 0, i32 1
  %err.msg.struct255 = load ptr, ptr %err.msg.gep254, align 8
  %err.file.gep256 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr251, i32 0, i32 2
  %err.file.struct257 = load ptr, ptr %err.file.gep256, align 8
  %err.line.gep258 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr251, i32 0, i32 3
  %err.line259 = load i64, ptr %err.line.gep258, align 8
  %err.col.gep260 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr251, i32 0, i32 4
  %err.col261 = load i64, ptr %err.col.gep260, align 8
  %err.msg.len262 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct255, i32 0, i32 0
  %err.msg.len263 = load i64, ptr %err.msg.len262, align 8
  %err.msg.len264 = and i64 %err.msg.len263, 281474976710655
  %err.msg.len32265 = trunc i64 %err.msg.len264 to i32
  %err.msg.data266 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct255, i32 0, i32 1
  %err.msg.data267 = load ptr, ptr %err.msg.data266, align 8
  %err.file.len268 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct257, i32 0, i32 0
  %err.file.len269 = load i64, ptr %err.file.len268, align 8
  %err.file.len270 = and i64 %err.file.len269, 281474976710655
  %err.file.len32271 = trunc i64 %err.file.len270 to i32
  %err.file.data272 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct257, i32 0, i32 1
  %err.file.data273 = load ptr, ptr %err.file.data272, align 8
  %err.thread.rec274 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread275 = icmp ne ptr %err.thread.rec274, null
  br i1 %err.is.thread275, label %err.thread276, label %err.normal277

err.thread276:                                    ; preds = %unwrap.abort.31
  %err.haserr.gep278 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec274, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep278, align 8
  %err.err.gep279 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec274, i32 0, i32 7
  store ptr %err.ptr251, ptr %err.err.gep279, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal277:                                    ; preds = %unwrap.abort.31
  %err.panic.printf280 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code253, i32 %err.msg.len32265, ptr %err.msg.data267, i32 %err.file.len32271, ptr %err.file.data273, i64 %err.line259, i64 %err.col261)
  call void @exit(i32 1)
  unreachable

choice.then285:                                   ; preds = %unwrap.pos.31
  %var.load288 = load i64, ptr @"var.event::READ", align 8
  br label %choice.exit287

choice.else286:                                   ; preds = %unwrap.pos.31
  br label %choice.exit287

choice.exit287:                                   ; preds = %choice.else286, %choice.then285
  %choice.res289 = phi i64 [ %var.load288, %choice.then285 ], [ 0, %choice.else286 ]
  %var.load290 = load i64, ptr %var.rev, align 8
  %bandtmp291 = and i64 %var.load290, 4
  %cmptmp292 = icmp ne i64 %bandtmp291, 0
  br i1 %cmptmp292, label %choice.then293, label %choice.else294

choice.then293:                                   ; preds = %choice.exit287
  %var.load296 = load i64, ptr @"var.event::WRITE", align 8
  br label %choice.exit295

choice.else294:                                   ; preds = %choice.exit287
  br label %choice.exit295

choice.exit295:                                   ; preds = %choice.else294, %choice.then293
  %choice.res297 = phi i64 [ %var.load296, %choice.then293 ], [ 0, %choice.else294 ]
  %bortmp298 = or i64 %choice.res289, %choice.res297
  %var.load299 = load i64, ptr %var.rev, align 8
  %bandtmp300 = and i64 %var.load299, 2
  %cmptmp301 = icmp ne i64 %bandtmp300, 0
  br i1 %cmptmp301, label %choice.then302, label %choice.else303

choice.then302:                                   ; preds = %choice.exit295
  %var.load305 = load i64, ptr @"var.event::PRI", align 8
  br label %choice.exit304

choice.else303:                                   ; preds = %choice.exit295
  br label %choice.exit304

choice.exit304:                                   ; preds = %choice.else303, %choice.then302
  %choice.res306 = phi i64 [ %var.load305, %choice.then302 ], [ 0, %choice.else303 ]
  %bortmp307 = or i64 %bortmp298, %choice.res306
  %var.load308 = load i64, ptr %var.rev, align 8
  %bandtmp309 = and i64 %var.load308, 8
  %cmptmp310 = icmp ne i64 %bandtmp309, 0
  br i1 %cmptmp310, label %choice.then311, label %choice.else312

choice.then311:                                   ; preds = %choice.exit304
  %var.load314 = load i64, ptr @"var.event::ERR", align 8
  br label %choice.exit313

choice.else312:                                   ; preds = %choice.exit304
  br label %choice.exit313

choice.exit313:                                   ; preds = %choice.else312, %choice.then311
  %choice.res315 = phi i64 [ %var.load314, %choice.then311 ], [ 0, %choice.else312 ]
  %bortmp316 = or i64 %bortmp307, %choice.res315
  %var.load317 = load i64, ptr %var.rev, align 8
  %bandtmp318 = and i64 %var.load317, 16
  %cmptmp319 = icmp ne i64 %bandtmp318, 0
  br i1 %cmptmp319, label %choice.then320, label %choice.else321

choice.then320:                                   ; preds = %choice.exit313
  %var.load323 = load i64, ptr @"var.event::HUP", align 8
  br label %choice.exit322

choice.else321:                                   ; preds = %choice.exit313
  br label %choice.exit322

choice.exit322:                                   ; preds = %choice.else321, %choice.then320
  %choice.res324 = phi i64 [ %var.load323, %choice.then320 ], [ 0, %choice.else321 ]
  %bortmp325 = or i64 %bortmp316, %choice.res324
  store i64 %bortmp325, ptr %var.ev_mask, align 8
  %var.load326 = load ptr, ptr %var.ev, align 8
  %fld.gep327 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load326, i32 0, i32 0
  %fld.load328 = load i64, ptr %fld.gep327, align 8
  %var.load329 = load i64, ptr %var.ev_mask, align 8
  %var.load330 = load ptr, ptr %var.ev, align 8
  %fld.gep331 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load330, i32 0, i32 2
  %fld.load332 = load i64, ptr %fld.gep331, align 8
  %arena.cur333 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur333, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %fld.load328, ptr %rec.fld, align 8
  %rec.fld334 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load329, ptr %rec.fld334, align 8
  %rec.fld335 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %fld.load332, ptr %rec.fld335, align 8
  %a.load336 = load ptr, ptr %"var.res'", align 8
  %a.null337 = icmp eq ptr %a.load336, null
  br i1 %a.null337, label %a.create338, label %a.after339

a.create338:                                      ; preds = %choice.exit322
  %arena.cur340 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create341 = call ptr @dva_arena_alloc(ptr %arena.cur340, i64 24)
  %arena.cur342 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf343 = call ptr @dva_arena_alloc(ptr %arena.cur342, i64 128)
  %a.len.gep344 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create341, i32 0, i32 0
  store i64 0, ptr %a.len.gep344, align 8
  %a.data.gep345 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create341, i32 0, i32 1
  store ptr %a.buf343, ptr %a.data.gep345, align 8
  %a.cap.gep346 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create341, i32 0, i32 2
  store i64 16, ptr %a.cap.gep346, align 8
  store ptr %a.create341, ptr %"var.res'", align 8
  br label %a.after339

a.after339:                                       ; preds = %a.create338, %choice.exit322
  %a.load2347 = load ptr, ptr %"var.res'", align 8
  br label %a.check348

a.check348:                                       ; preds = %a.after339
  %a.len351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2347, i32 0, i32 0
  %a.len352 = load i64, ptr %a.len351, align 8
  %a.cap353 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2347, i32 0, i32 2
  %a.cap354 = load i64, ptr %a.cap353, align 8
  %a.needs.grow355 = icmp eq i64 %a.len352, %a.cap354
  br i1 %a.needs.grow355, label %a.grow349, label %a.store350

a.grow349:                                        ; preds = %a.check348
  call void @dva_array_grow(ptr %a.load2347)
  br label %a.store350

a.store350:                                       ; preds = %a.grow349, %a.check348
  %a.cur.data356 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2347, i32 0, i32 1
  %a.cur.data357 = load ptr, ptr %a.cur.data356, align 8
  %a.cur.len358 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2347, i32 0, i32 0
  %a.cur.len359 = load i64, ptr %a.cur.len358, align 8
  %a.elem.gep360 = getelementptr i64, ptr %a.cur.data357, i64 %a.cur.len359
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep360, align 8
  %a.next.len361 = add i64 %a.cur.len359, 1
  %b.len.gep362 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2347, i32 0, i32 0
  store i64 %a.next.len361, ptr %b.len.gep362, align 8
  br label %choice.exit164

a.create368:                                      ; preds = %loop.exit.29
  %arena.cur370 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create371 = call ptr @dva_arena_alloc(ptr %arena.cur370, i64 24)
  %arena.cur372 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf373 = call ptr @dva_arena_alloc(ptr %arena.cur372, i64 128)
  %a.len.gep374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create371, i32 0, i32 0
  store i64 0, ptr %a.len.gep374, align 8
  %a.data.gep375 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create371, i32 0, i32 1
  store ptr %a.buf373, ptr %a.data.gep375, align 8
  %a.cap.gep376 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create371, i32 0, i32 2
  store i64 16, ptr %a.cap.gep376, align 8
  store ptr %a.create371, ptr %"var.res'", align 8
  br label %a.after369

a.after369:                                       ; preds = %a.create368, %loop.exit.29
  %a.load2377 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2377
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

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

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
