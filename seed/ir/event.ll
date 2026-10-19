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
@str.0 = internal unnamed_addr constant [21 x i8] c"epoll_create1 failed\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 20, ptr @str.0 }
@clo.const = internal constant { ptr, ptr } { ptr @"event::new_with_cap", ptr null }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"event::new", ptr null }
@"var.event::new" = global ptr null
@"var.event::new_with_cap" = global ptr null
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

define { i1, i64 } @"event::new"() #1 {
entry:
  %call.res = call { i1, i64 } @"event::new_with_cap"(i64 64)
  ret { i1, i64 } %call.res
}

define { i1, i64 } @"event::new_with_cap"(i64 %0) #1 {
entry:
  %var.cap = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.max_ev = alloca i64, align 8
  store i64 %0, ptr %var.max_ev, align 8
  %call.res = call i64 @epoll_create1(i32 0)
  store i64 %call.res, ptr %var.fd, align 8
  %var.load = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.0.struct to i64) }

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.max_ev, align 8
  %cmptmp2 = icmp sgt i64 %var.load1, 0
  br i1 %cmptmp2, label %choice.then3, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then3:                                     ; preds = %choice.exit
  %var.load5 = load i64, ptr %var.max_ev, align 8
  br label %choice.exit4

choice.else:                                      ; preds = %choice.exit
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else, %choice.then3
  %choice.res = phi i64 [ %var.load5, %choice.then3 ], [ 64, %choice.else ]
  store i64 %choice.res, ptr %var.cap, align 8
  %var.load6 = load i64, ptr %var.fd, align 8
  %var.load7 = load i64, ptr %var.cap, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load6, ptr %rec.fld, align 8
  %rec.fld8 = getelementptr inbounds { i64, i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i1 false, ptr %rec.fld8, align 1
  %rec.fld9 = getelementptr inbounds { i64, i1, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load7, ptr %rec.fld9, align 8
  %p.to.i64 = ptrtoint ptr %rec.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay
}

define i1 @"event::add"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
entry:
  %var.rc = alloca i64, align 8
  %"var.ev'" = alloca ptr, align 8
  %var.packed_data = alloca i64, align 8
  %var.user_data = alloca i64, align 8
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %shltmp = shl i64 %var.load1, 32
  %var.load2 = load i64, ptr %var.user_data, align 8
  %bandtmp = and i64 %var.load2, 4294967295
  %bortmp = or i64 %shltmp, %bandtmp
  store i64 %bortmp, ptr %var.packed_data, align 8
  %var.load3 = load i64, ptr %var.mask, align 8
  %coerce.trunc = trunc i64 %var.load3 to i32
  %var.load4 = load i64, ptr %var.packed_data, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i32 %coerce.trunc, ptr %rec.fld, align 4
  %rec.fld5 = getelementptr inbounds <{ i32, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load4, ptr %rec.fld5, align 8
  store ptr %rec.alloc, ptr %"var.ev'", align 8
  %var.load6 = load ptr, ptr %var.p, align 8
  %fld.gep7 = getelementptr inbounds { i64, i1, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %var.load9 = load i64, ptr @"var.event::CTL_ADD", align 8
  %var.load10 = load i64, ptr %var.fd, align 8
  %var.load11 = load ptr, ptr %"var.ev'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load11 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc12 = trunc i64 %var.load10 to i32
  %call.res = call i64 @epoll_ctl(i64 %fld.load8, i64 %var.load9, i32 %coerce.trunc12, ptr %addr.ffi.clean)
  store i64 %call.res, ptr %var.rc, align 8
  %var.load13 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp eq i64 %var.load13, 0
  ret i1 %cmptmp

ret.dead:                                         ; No predecessors!
  br label %choice.exit
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
  %var.rc = alloca i64, align 8
  %"var.ev'" = alloca ptr, align 8
  %var.packed_data = alloca i64, align 8
  %var.user_data = alloca i64, align 8
  %var.mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.mask, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.fd, align 8
  %shltmp = shl i64 %var.load1, 32
  %var.load2 = load i64, ptr %var.user_data, align 8
  %bandtmp = and i64 %var.load2, 4294967295
  %bortmp = or i64 %shltmp, %bandtmp
  store i64 %bortmp, ptr %var.packed_data, align 8
  %var.load3 = load i64, ptr %var.mask, align 8
  %coerce.trunc = trunc i64 %var.load3 to i32
  %var.load4 = load i64, ptr %var.packed_data, align 8
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i32 %coerce.trunc, ptr %rec.fld, align 4
  %rec.fld5 = getelementptr inbounds <{ i32, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load4, ptr %rec.fld5, align 8
  store ptr %rec.alloc, ptr %"var.ev'", align 8
  %var.load6 = load ptr, ptr %var.p, align 8
  %fld.gep7 = getelementptr inbounds { i64, i1, i64 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %var.load9 = load i64, ptr @"var.event::CTL_MOD", align 8
  %var.load10 = load i64, ptr %var.fd, align 8
  %var.load11 = load ptr, ptr %"var.ev'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load11 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc12 = trunc i64 %var.load10 to i32
  %call.res = call i64 @epoll_ctl(i64 %fld.load8, i64 %var.load9, i32 %coerce.trunc12, ptr %addr.ffi.clean)
  store i64 %call.res, ptr %var.rc, align 8
  %var.load13 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp eq i64 %var.load13, 0
  ret i1 %cmptmp

ret.dead:                                         ; No predecessors!
  br label %choice.exit
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
  %var.rc = alloca i64, align 8
  %"var.dummy'" = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.fd, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %fld.gep = getelementptr inbounds { i64, i1, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
  %arena.cur = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr (<{ i32, i64 }>, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds <{ i32, i64 }>, ptr %rec.alloc, i32 0, i32 0
  store i32 0, ptr %rec.fld, align 4
  %rec.fld1 = getelementptr inbounds <{ i32, i64 }>, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  store ptr %rec.alloc, ptr %"var.dummy'", align 8
  %var.load2 = load ptr, ptr %var.p, align 8
  %fld.gep3 = getelementptr inbounds { i64, i1, i64 }, ptr %var.load2, i32 0, i32 0
  %fld.load4 = load i64, ptr %fld.gep3, align 8
  %var.load5 = load i64, ptr @"var.event::CTL_DEL", align 8
  %var.load6 = load i64, ptr %var.fd, align 8
  %var.load7 = load ptr, ptr %"var.dummy'", align 8
  %addr.ffi.int = ptrtoint ptr %var.load7 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %var.load6 to i32
  %call.res = call i64 @epoll_ctl(i64 %fld.load4, i64 %var.load5, i32 %coerce.trunc, ptr %addr.ffi.clean)
  store i64 %call.res, ptr %var.rc, align 8
  %var.load8 = load i64, ptr %var.rc, align 8
  %cmptmp = icmp eq i64 %var.load8, 0
  ret i1 %cmptmp

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

define ptr @"event::wait"(ptr %0, i64 %1) #1 {
entry:
  %var.ev_udata = alloca i64, align 8
  %var.ev_fd = alloca i64, align 8
  %var.ev_raw_data = alloca i64, align 8
  %var.ev_mask = alloca i64, align 8
  %var.ev_ptr = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.0 = alloca i64, align 8
  %loop.idx.0 = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.buf_ptr = alloca ptr, align 8
  %var.buf = alloca ptr, align 8
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
  %fld.gep = getelementptr inbounds { i64, i1, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  br i1 %fld.load, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %"var.res'", align 8
  %a.load = load ptr, ptr %"var.res'", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %a.after, %entry
  %var.load10 = load ptr, ptr %var.p, align 8
  %fld.gep11 = getelementptr inbounds { i64, i1, i64 }, ptr %var.load10, i32 0, i32 2
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %multmp = mul i64 %fld.load12, 12
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
  br label %choice.exit

b.buf.len14:                                      ; preds = %str_overflow_abort, %choice.exit
  %arena.cur15 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.buf, align 8
  %var.load16 = load ptr, ptr %var.buf, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load16, i32 0, i32 1
  %b.ptr17 = load ptr, ptr %b.ptr, align 8
  store ptr %b.ptr17, ptr %var.buf_ptr, align 8
  %var.load18 = load ptr, ptr %var.p, align 8
  %fld.gep19 = getelementptr inbounds { i64, i1, i64 }, ptr %var.load18, i32 0, i32 0
  %fld.load20 = load i64, ptr %fld.gep19, align 8
  %var.load21 = load ptr, ptr %var.buf_ptr, align 8
  %addr.ffi.int = ptrtoint ptr %var.load21 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load22 = load ptr, ptr %var.p, align 8
  %fld.gep23 = getelementptr inbounds { i64, i1, i64 }, ptr %var.load22, i32 0, i32 2
  %fld.load24 = load i64, ptr %fld.gep23, align 8
  %var.load25 = load i64, ptr %var.timeout_ms, align 8
  %call.res = call i64 @epoll_wait(i64 %fld.load20, ptr %addr.ffi.clean, i64 %fld.load24, i64 %var.load25)
  store i64 %call.res, ptr %var.n, align 8
  %var.load26 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sle i64 %var.load26, 0
  br i1 %cmptmp, label %choice.then27, label %choice.exit28

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len14

choice.then27:                                    ; preds = %b.buf.len14
  %var.load29 = load ptr, ptr %"var.res'", align 8
  %a.load30 = load ptr, ptr %"var.res'", align 8
  %a.null31 = icmp eq ptr %a.load30, null
  br i1 %a.null31, label %a.create32, label %a.after33

choice.exit28:                                    ; preds = %a.after33, %b.buf.len14
  %var.load42 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.0, align 8
  br label %loop.header.0

a.create32:                                       ; preds = %choice.then27
  %arena.cur34 = call ptr @dva_arena_current()
  %a.create35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %arena.cur36 = call ptr @dva_arena_current()
  %a.buf37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 128)
  %a.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 0
  store i64 0, ptr %a.len.gep38, align 8
  %a.data.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 1
  store ptr %a.buf37, ptr %a.data.gep39, align 8
  %a.cap.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 2
  store i64 16, ptr %a.cap.gep40, align 8
  store ptr %a.create35, ptr %"var.res'", align 8
  br label %a.after33

a.after33:                                        ; preds = %a.create32, %choice.then27
  %a.load241 = load ptr, ptr %"var.res'", align 8
  br label %choice.exit28

loop.header.0:                                    ; preds = %loop.latch.0, %choice.exit28
  %counter.load = load i64, ptr %loop.idx.0, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load42
  br i1 %loop.cond, label %loop.body.0, label %loop.exit.nat.0

loop.body.0:                                      ; preds = %loop.header.0
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.0, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load43 = load ptr, ptr %var.buf_ptr, align 8
  %var.load44 = load i64, ptr %var.i, align 8
  %multmp45 = mul i64 %var.load44, 12
  %ptr.int.l = ptrtoint ptr %var.load43 to i64
  %addtmp = add i64 %ptr.int.l, %multmp45
  %ptr.res = inttoptr i64 %addtmp to ptr
  store ptr %ptr.res, ptr %var.ev_ptr, align 8
  %var.load46 = load ptr, ptr %var.ev_ptr, align 8
  %raw.int = ptrtoint ptr %var.load46 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

loop.exit.nat.0:                                  ; preds = %loop.header.0
  br label %loop.exit.0

loop.latch.0:                                     ; preds = %a.store
  %step.val = load i64, ptr %loop.step.0, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.exit.0:                                      ; preds = %loop.exit.nat.0
  %var.load88 = load ptr, ptr %"var.res'", align 8
  %a.load89 = load ptr, ptr %"var.res'", align 8
  %a.null90 = icmp eq ptr %a.load89, null
  br i1 %a.null90, label %a.create91, label %a.after92

addr_gen_check:                                   ; preds = %loop.body.0
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %loop.body.0
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  %coerce.zext = zext i32 %raw.load to i64
  store i64 %coerce.zext, ptr %var.ev_mask, align 8
  %var.load48 = load ptr, ptr %var.ev_ptr, align 8
  %ptr.int.l49 = ptrtoint ptr %var.load48 to i64
  %addtmp50 = add i64 %ptr.int.l49, 4
  %ptr.res51 = inttoptr i64 %addtmp50 to ptr
  %raw.int52 = ptrtoint ptr %ptr.res51 to i64
  %raw.clean.int53 = and i64 %raw.int52, 281474976710655
  %raw.clean.ptr54 = inttoptr i64 %raw.clean.int53 to ptr
  %addr.tag55 = lshr i64 %raw.int52, 48
  %addr.immortal56 = icmp eq i64 %addr.tag55, 0
  br i1 %addr.immortal56, label %addr_ok58, label %addr_gen_check57

addr_stale:                                       ; preds = %addr_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check57:                                 ; preds = %addr_ok
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %addr.tag55)
  br i1 %tag.valid61, label %addr_ok58, label %addr_stale59

addr_ok58:                                        ; preds = %addr_stale59, %addr_gen_check57, %addr_ok
  %raw.load62 = load volatile i64, ptr %raw.clean.ptr54, align 8
  store i64 %raw.load62, ptr %var.ev_raw_data, align 8
  %var.load63 = load i64, ptr %var.ev_raw_data, align 8
  %shrtmp = lshr i64 %var.load63, 32
  store i64 %shrtmp, ptr %var.ev_fd, align 8
  %var.load64 = load i64, ptr %var.ev_raw_data, align 8
  %bandtmp = and i64 %var.load64, 4294967295
  store i64 %bandtmp, ptr %var.ev_udata, align 8
  %var.load65 = load i64, ptr %var.ev_fd, align 8
  %var.load66 = load i64, ptr %var.ev_mask, align 8
  %var.load67 = load i64, ptr %var.ev_udata, align 8
  %arena.cur68 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur68, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load65, ptr %rec.fld, align 8
  %rec.fld69 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load66, ptr %rec.fld69, align 8
  %rec.fld70 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load67, ptr %rec.fld70, align 8
  %a.load71 = load ptr, ptr %"var.res'", align 8
  %a.null72 = icmp eq ptr %a.load71, null
  br i1 %a.null72, label %a.create73, label %a.after74

addr_stale59:                                     ; preds = %addr_gen_check57
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok58

a.create73:                                       ; preds = %addr_ok58
  %arena.cur75 = call ptr @dva_arena_current()
  %a.create76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 24)
  %arena.cur77 = call ptr @dva_arena_current()
  %a.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 128)
  %a.len.gep79 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create76, i32 0, i32 0
  store i64 0, ptr %a.len.gep79, align 8
  %a.data.gep80 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create76, i32 0, i32 1
  store ptr %a.buf78, ptr %a.data.gep80, align 8
  %a.cap.gep81 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create76, i32 0, i32 2
  store i64 16, ptr %a.cap.gep81, align 8
  store ptr %a.create76, ptr %"var.res'", align 8
  br label %a.after74

a.after74:                                        ; preds = %a.create73, %addr_ok58
  %a.load282 = load ptr, ptr %"var.res'", align 8
  br label %a.check

a.check:                                          ; preds = %a.after74
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load282, i32 0, i32 0
  %a.len83 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load282, i32 0, i32 2
  %a.cap84 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len83, %a.cap84
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load282)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load282, i32 0, i32 1
  %a.cur.data85 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load282, i32 0, i32 0
  %a.cur.len86 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data85, i64 %a.cur.len86
  %slot.p2i = ptrtoint ptr %rec.alloc to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len86, 1
  %b.len.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load282, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep87, align 8
  br label %loop.latch.0

a.create91:                                       ; preds = %loop.exit.0
  %arena.cur93 = call ptr @dva_arena_current()
  %a.create94 = call ptr @dva_arena_alloc(ptr %arena.cur93, i64 24)
  %arena.cur95 = call ptr @dva_arena_current()
  %a.buf96 = call ptr @dva_arena_alloc(ptr %arena.cur95, i64 128)
  %a.len.gep97 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 0
  store i64 0, ptr %a.len.gep97, align 8
  %a.data.gep98 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 1
  store ptr %a.buf96, ptr %a.data.gep98, align 8
  %a.cap.gep99 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create94, i32 0, i32 2
  store i64 16, ptr %a.cap.gep99, align 8
  store ptr %a.create94, ptr %"var.res'", align 8
  br label %a.after92

a.after92:                                        ; preds = %a.create91, %loop.exit.0
  %a.load2100 = load ptr, ptr %"var.res'", align 8
  ret ptr %a.load2100
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
  %fld.gep = getelementptr inbounds { i64, i1, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %nottmp = xor i1 %fld.load, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load1 = load ptr, ptr %var.p, align 8
  %fld.gep2 = getelementptr inbounds { i64, i1, i64 }, ptr %var.load1, i32 0, i32 0
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %coerce.trunc = trunc i64 %fld.load3 to i32
  %call.res = call i32 @close(i32 %coerce.trunc)
  %var.load4 = load ptr, ptr %var.p, align 8
  %fld.gep5 = getelementptr inbounds { i64, i1, i64 }, ptr %var.load4, i32 0, i32 1
  store i1 true, ptr %fld.gep5, align 1
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
