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
@"var.uring::SYS_IO_URING_SETUP" = global i64 425
@"var.uring::SYS_IO_URING_ENTER" = global i64 426
@"var.uring::SYS_IO_URING_REGISTER" = global i64 427
@"var.uring::IORING_SETUP_IOPOLL" = global i64 1
@"var.uring::IORING_SETUP_SQPOLL" = global i64 2
@"var.uring::IORING_SETUP_SQ_AFF" = global i64 4
@"var.uring::IORING_SETUP_CQSIZE" = global i64 8
@"var.uring::IORING_SETUP_CLAMP" = global i64 16
@"var.uring::IORING_SETUP_ATTACH_WQ" = global i64 32
@"var.uring::IORING_SETUP_R_DISABLED" = global i64 64
@"var.uring::IORING_SETUP_SUBMIT_ALL" = global i64 128
@"var.uring::IORING_ENTER_GETEVENTS" = global i64 1
@"var.uring::IORING_ENTER_SQ_WAKEUP" = global i64 2
@"var.uring::IORING_ENTER_SQ_WAIT" = global i64 4
@"var.uring::IORING_ENTER_EXT_ARG" = global i64 8
@"var.uring::IORING_ENTER_REGISTERED_RING" = global i64 16
@"var.uring::IORING_OFF_SQ_RING" = global i64 0
@"var.uring::IORING_OFF_CQ_RING" = global i64 134217728
@"var.uring::IORING_OFF_SQES" = global i64 268435456
@"var.uring::OP_NOP" = global i64 0
@"var.uring::OP_READV" = global i64 1
@"var.uring::OP_WRITEV" = global i64 2
@"var.uring::OP_FSYNC" = global i64 3
@"var.uring::OP_POLL_ADD" = global i64 6
@"var.uring::OP_POLL_REMOVE" = global i64 7
@"var.uring::OP_TIMEOUT" = global i64 11
@"var.uring::OP_TIMEOUT_REMOVE" = global i64 12
@"var.uring::OP_ACCEPT" = global i64 13
@"var.uring::OP_ASYNC_CANCEL" = global i64 14
@"var.uring::OP_CONNECT" = global i64 16
@"var.uring::OP_CLOSE" = global i64 19
@"var.uring::OP_READ" = global i64 22
@"var.uring::OP_WRITE" = global i64 23
@"var.uring::OP_SEND" = global i64 26
@"var.uring::OP_RECV" = global i64 27
@"var.uring::OP_SHUTDOWN" = global i64 34
@"var.uring::PROT_READ" = global i64 1
@"var.uring::PROT_WRITE" = global i64 2
@"var.uring::MAP_SHARED" = global i64 1
@"var.uring::MAP_POPULATE" = global i64 32768
@str.0 = internal unnamed_addr constant [22 x i8] c"io_uring_setup failed\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.0 }
@stale_addr_msg = internal unnamed_addr constant [51 x i8] c"E4011: stale Addr dereference after arena restore\0A\00"
@str.1 = internal unnamed_addr constant [20 x i8] c"mmap SQ ring failed\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 19, ptr @str.1 }
@str.2 = internal unnamed_addr constant [22 x i8] c"mmap SQE array failed\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.2 }
@str.3 = internal unnamed_addr constant [20 x i8] c"mmap CQ ring failed\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 19, ptr @str.3 }
@clo.const = internal constant { ptr, ptr } { ptr @"uring::new", ptr null }
@"var.uring::new" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"uring::prep_sqe_flags", ptr null }
@clo.const.2 = internal constant { ptr, ptr } { ptr @"uring::prep_sqe", ptr null }
@"var.uring::prep_sqe" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"uring::prep_nop", ptr null }
@"var.uring::prep_nop" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"uring::prep_read", ptr null }
@"var.uring::prep_read" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"uring::prep_read_at", ptr null }
@"var.uring::prep_read_at" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"uring::prep_write", ptr null }
@"var.uring::prep_write" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"uring::prep_write_at", ptr null }
@"var.uring::prep_write_at" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"uring::prep_pipe_read", ptr null }
@"var.uring::prep_pipe_read" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"uring::prep_pipe_write", ptr null }
@"var.uring::prep_pipe_write" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"uring::prep_close", ptr null }
@"var.uring::prep_close" = global ptr null
@"var.uring::prep_sqe_flags" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"uring::prep_recv", ptr null }
@"var.uring::prep_recv" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"uring::prep_send", ptr null }
@"var.uring::prep_send" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"uring::prep_accept", ptr null }
@"var.uring::prep_accept" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"uring::prep_cancel", ptr null }
@"var.uring::prep_cancel" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"uring::prep_timeout", ptr null }
@"var.uring::prep_timeout" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"uring::prep_timeout_ms", ptr null }
@"var.uring::prep_timeout_ms" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"uring::prep_poll_add", ptr null }
@"var.uring::prep_poll_add" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"uring::sq_space", ptr null }
@"var.uring::sq_space" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"uring::cq_ready", ptr null }
@"var.uring::cq_ready" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"uring::submit_and_wait", ptr null }
@"var.uring::submit_and_wait" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"uring::submit", ptr null }
@"var.uring::submit" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"uring::peek_cqe", ptr null }
@"var.uring::peek_cqe" = global ptr null
@str.4 = internal unnamed_addr constant [22 x i8] c"io_uring_enter failed\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 21, ptr @str.4 }
@str.5 = internal unnamed_addr constant [19 x i8] c"no cqe after enter\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 18, ptr @str.5 }
@clo.const.23 = internal constant { ptr, ptr } { ptr @"uring::wait_cqe", ptr null }
@"var.uring::wait_cqe" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.24 = internal constant { ptr, ptr } { ptr @"uring::reap", ptr null }
@"var.uring::reap" = global ptr null
@str.6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.6 }
@str.7 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.7 }
@str.8 = internal unnamed_addr constant [10 x i8] c"uring.dva\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.8 }
@str.9 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.9 }
@dva_thread_rec = external thread_local global ptr
@clo.const.25 = internal constant { ptr, ptr } { ptr @"uring::drain_pipes", ptr null }
@"var.uring::drain_pipes" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"uring::close", ptr null }
@"var.uring::close" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_uring, ptr null }]

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

define internal void @__dva_global_init_uring() #0 {
entry:
  store i64 425, ptr @"var.uring::SYS_IO_URING_SETUP", align 8
  store i64 426, ptr @"var.uring::SYS_IO_URING_ENTER", align 8
  store i64 427, ptr @"var.uring::SYS_IO_URING_REGISTER", align 8
  store i64 1, ptr @"var.uring::IORING_SETUP_IOPOLL", align 8
  store i64 2, ptr @"var.uring::IORING_SETUP_SQPOLL", align 8
  store i64 4, ptr @"var.uring::IORING_SETUP_SQ_AFF", align 8
  store i64 8, ptr @"var.uring::IORING_SETUP_CQSIZE", align 8
  store i64 16, ptr @"var.uring::IORING_SETUP_CLAMP", align 8
  store i64 32, ptr @"var.uring::IORING_SETUP_ATTACH_WQ", align 8
  store i64 64, ptr @"var.uring::IORING_SETUP_R_DISABLED", align 8
  store i64 128, ptr @"var.uring::IORING_SETUP_SUBMIT_ALL", align 8
  store i64 1, ptr @"var.uring::IORING_ENTER_GETEVENTS", align 8
  store i64 2, ptr @"var.uring::IORING_ENTER_SQ_WAKEUP", align 8
  store i64 4, ptr @"var.uring::IORING_ENTER_SQ_WAIT", align 8
  store i64 8, ptr @"var.uring::IORING_ENTER_EXT_ARG", align 8
  store i64 16, ptr @"var.uring::IORING_ENTER_REGISTERED_RING", align 8
  store i64 0, ptr @"var.uring::IORING_OFF_SQ_RING", align 8
  store i64 134217728, ptr @"var.uring::IORING_OFF_CQ_RING", align 8
  store i64 268435456, ptr @"var.uring::IORING_OFF_SQES", align 8
  store i64 0, ptr @"var.uring::OP_NOP", align 8
  store i64 1, ptr @"var.uring::OP_READV", align 8
  store i64 2, ptr @"var.uring::OP_WRITEV", align 8
  store i64 3, ptr @"var.uring::OP_FSYNC", align 8
  store i64 6, ptr @"var.uring::OP_POLL_ADD", align 8
  store i64 7, ptr @"var.uring::OP_POLL_REMOVE", align 8
  store i64 11, ptr @"var.uring::OP_TIMEOUT", align 8
  store i64 12, ptr @"var.uring::OP_TIMEOUT_REMOVE", align 8
  store i64 13, ptr @"var.uring::OP_ACCEPT", align 8
  store i64 14, ptr @"var.uring::OP_ASYNC_CANCEL", align 8
  store i64 16, ptr @"var.uring::OP_CONNECT", align 8
  store i64 19, ptr @"var.uring::OP_CLOSE", align 8
  store i64 22, ptr @"var.uring::OP_READ", align 8
  store i64 23, ptr @"var.uring::OP_WRITE", align 8
  store i64 26, ptr @"var.uring::OP_SEND", align 8
  store i64 27, ptr @"var.uring::OP_RECV", align 8
  store i64 34, ptr @"var.uring::OP_SHUTDOWN", align 8
  store i64 1, ptr @"var.uring::PROT_READ", align 8
  store i64 2, ptr @"var.uring::PROT_WRITE", align 8
  store i64 1, ptr @"var.uring::MAP_SHARED", align 8
  store i64 32768, ptr @"var.uring::MAP_POPULATE", align 8
  store ptr @clo.const, ptr @"var.uring::new", align 8
  store ptr @clo.const.2, ptr @"var.uring::prep_sqe", align 8
  store ptr @clo.const.3, ptr @"var.uring::prep_nop", align 8
  store ptr @clo.const.4, ptr @"var.uring::prep_read", align 8
  store ptr @clo.const.5, ptr @"var.uring::prep_read_at", align 8
  store ptr @clo.const.6, ptr @"var.uring::prep_write", align 8
  store ptr @clo.const.7, ptr @"var.uring::prep_write_at", align 8
  store ptr @clo.const.8, ptr @"var.uring::prep_pipe_read", align 8
  store ptr @clo.const.9, ptr @"var.uring::prep_pipe_write", align 8
  store ptr @clo.const.10, ptr @"var.uring::prep_close", align 8
  store ptr @clo.const.1, ptr @"var.uring::prep_sqe_flags", align 8
  store ptr @clo.const.11, ptr @"var.uring::prep_recv", align 8
  store ptr @clo.const.12, ptr @"var.uring::prep_send", align 8
  store ptr @clo.const.13, ptr @"var.uring::prep_accept", align 8
  store ptr @clo.const.14, ptr @"var.uring::prep_cancel", align 8
  store ptr @clo.const.15, ptr @"var.uring::prep_timeout", align 8
  store ptr @clo.const.16, ptr @"var.uring::prep_timeout_ms", align 8
  store ptr @clo.const.17, ptr @"var.uring::prep_poll_add", align 8
  store ptr @clo.const.18, ptr @"var.uring::sq_space", align 8
  store ptr @clo.const.19, ptr @"var.uring::cq_ready", align 8
  store ptr @clo.const.20, ptr @"var.uring::submit_and_wait", align 8
  store ptr @clo.const.21, ptr @"var.uring::submit", align 8
  store ptr @clo.const.22, ptr @"var.uring::peek_cqe", align 8
  store ptr @clo.const.23, ptr @"var.uring::wait_cqe", align 8
  store ptr @clo.const.24, ptr @"var.uring::reap", align 8
  store ptr @clo.const.25, ptr @"var.uring::drain_pipes", align 8
  store ptr @clo.const.26, ptr @"var.uring::close", align 8
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

define { i1, i64 } @"uring::new"(i64 %0) #0 {
entry:
  %var.cq_ptr = alloca ptr, align 8
  %var.cq_sz = alloca i64, align 8
  %var.sqes_ptr = alloca ptr, align 8
  %var.sqes_sz = alloca i64, align 8
  %var.sq_ptr = alloca ptr, align 8
  %var.sq_sz = alloca i64, align 8
  %var.cq_entries = alloca i64, align 8
  %var.sq_entries = alloca i64, align 8
  %var.params = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.paddr = alloca ptr, align 8
  %var.pbuf = alloca ptr, align 8
  %var.entries = alloca i64, align 8
  store i64 %0, ptr %var.entries, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 0, ptr %rec.fld1, align 8
  %rec.fld2 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  store i64 0, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 0, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 0, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 6
  store i64 0, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 7
  store i64 0, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 8
  store i64 0, ptr %rec.fld8, align 8
  %rec.fld9 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 9
  store i64 0, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 10
  store i64 0, ptr %rec.fld10, align 8
  %rec.fld11 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 11
  store i64 0, ptr %rec.fld11, align 8
  %rec.fld12 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 12
  store i64 0, ptr %rec.fld12, align 8
  %rec.fld13 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 13
  store i64 0, ptr %rec.fld13, align 8
  %rec.fld14 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 14
  store i64 0, ptr %rec.fld14, align 8
  %rec.fld15 = getelementptr inbounds { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 15
  store i64 0, ptr %rec.fld15, align 8
  store ptr %rec.alloc, ptr %var.pbuf, align 8
  %var.load = load ptr, ptr %var.pbuf, align 8
  store ptr %var.load, ptr %var.paddr, align 8
  %var.load16 = load i64, ptr @"var.uring::SYS_IO_URING_SETUP", align 8
  %var.load17 = load i64, ptr %var.entries, align 8
  %cast.int2ptr = inttoptr i64 %var.load17 to ptr
  %addr.ffi.int = ptrtoint ptr %cast.int2ptr to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load18 = load ptr, ptr %var.paddr, align 8
  %addr.ffi.int19 = ptrtoint ptr %var.load18 to i64
  %addr.ffi.masked20 = and i64 %addr.ffi.int19, 281474976710655
  %addr.ffi.clean21 = inttoptr i64 %addr.ffi.masked20 to ptr
  %var.load22 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int23 = ptrtoint ptr %var.load22 to i64
  %addr.ffi.masked24 = and i64 %addr.ffi.int23, 281474976710655
  %addr.ffi.clean25 = inttoptr i64 %addr.ffi.masked24 to ptr
  %var.load26 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int27 = ptrtoint ptr %var.load26 to i64
  %addr.ffi.masked28 = and i64 %addr.ffi.int27, 281474976710655
  %addr.ffi.clean29 = inttoptr i64 %addr.ffi.masked28 to ptr
  %var.load30 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int31 = ptrtoint ptr %var.load30 to i64
  %addr.ffi.masked32 = and i64 %addr.ffi.int31, 281474976710655
  %addr.ffi.clean33 = inttoptr i64 %addr.ffi.masked32 to ptr
  %var.load34 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int35 = ptrtoint ptr %var.load34 to i64
  %addr.ffi.masked36 = and i64 %addr.ffi.int35, 281474976710655
  %addr.ffi.clean37 = inttoptr i64 %addr.ffi.masked36 to ptr
  %call.res = call i64 @syscall(i64 %var.load16, ptr %addr.ffi.clean, ptr %addr.ffi.clean21, ptr %addr.ffi.clean25, ptr %addr.ffi.clean29, ptr %addr.ffi.clean33, ptr %addr.ffi.clean37)
  store i64 %call.res, ptr %var.fd, align 8
  %var.load38 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load38, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.0.struct to i64) }

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load39 = load ptr, ptr %var.paddr, align 8
  %raw.int = ptrtoint ptr %var.load39 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_ok:                                          ; preds = %tag.slow_check, %choice.exit
  store ptr %raw.clean.ptr, ptr %var.params, align 8
  %var.load40 = load ptr, ptr %var.params, align 8
  %fld.gep = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load40, i32 0, i32 0
  %fld.load = load i32, ptr %fld.gep, align 4
  %coerce.zext = zext i32 %fld.load to i64
  store i64 %coerce.zext, ptr %var.sq_entries, align 8
  %var.load41 = load ptr, ptr %var.params, align 8
  %fld.gep42 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load41, i32 0, i32 1
  %fld.load43 = load i32, ptr %fld.gep42, align 4
  %coerce.zext44 = zext i32 %fld.load43 to i64
  store i64 %coerce.zext44, ptr %var.cq_entries, align 8
  %var.load45 = load ptr, ptr %var.params, align 8
  %fld.gep46 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load45, i32 0, i32 16
  %fld.load47 = load i32, ptr %fld.gep46, align 4
  %coerce.zext48 = zext i32 %fld.load47 to i64
  %var.load49 = load i64, ptr %var.sq_entries, align 8
  %multmp = mul i64 %var.load49, 4
  %addtmp = add i64 %coerce.zext48, %multmp
  store i64 %addtmp, ptr %var.sq_sz, align 8
  %var.load50 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int51 = ptrtoint ptr %var.load50 to i64
  %addr.ffi.masked52 = and i64 %addr.ffi.int51, 281474976710655
  %addr.ffi.clean53 = inttoptr i64 %addr.ffi.masked52 to ptr
  %var.load54 = load i64, ptr %var.sq_sz, align 8
  %var.load55 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load56 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp = or i64 %var.load55, %var.load56
  %var.load57 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load58 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp59 = or i64 %var.load57, %var.load58
  %var.load60 = load i64, ptr %var.fd, align 8
  %var.load61 = load i64, ptr @"var.uring::IORING_OFF_SQ_RING", align 8
  %coerce.trunc = trunc i64 %var.load60 to i32
  %call.res62 = call ptr @mmap(ptr %addr.ffi.clean53, i64 %var.load54, i64 %bortmp, i64 %bortmp59, i32 %coerce.trunc, i64 %var.load61)
  store ptr %call.res62, ptr %var.sq_ptr, align 8
  %var.load63 = load ptr, ptr %var.sq_ptr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load63 to i64
  %cmptmp64 = icmp eq i64 %coerce.ptr2int, -1
  br i1 %cmptmp64, label %choice.then65, label %choice.exit66

tag.slow_check:                                   ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

choice.then65:                                    ; preds = %addr_ok
  %var.load67 = load i64, ptr %var.fd, align 8
  %coerce.trunc68 = trunc i64 %var.load67 to i32
  %call.res69 = call i32 @close(i32 %coerce.trunc68)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.1.struct to i64) }

choice.exit66:                                    ; preds = %ret.dead70, %addr_ok
  %var.load71 = load i64, ptr %var.sq_entries, align 8
  %multmp72 = mul i64 %var.load71, 64
  store i64 %multmp72, ptr %var.sqes_sz, align 8
  %var.load73 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int74 = ptrtoint ptr %var.load73 to i64
  %addr.ffi.masked75 = and i64 %addr.ffi.int74, 281474976710655
  %addr.ffi.clean76 = inttoptr i64 %addr.ffi.masked75 to ptr
  %var.load77 = load i64, ptr %var.sqes_sz, align 8
  %var.load78 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load79 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp80 = or i64 %var.load78, %var.load79
  %var.load81 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load82 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp83 = or i64 %var.load81, %var.load82
  %var.load84 = load i64, ptr %var.fd, align 8
  %var.load85 = load i64, ptr @"var.uring::IORING_OFF_SQES", align 8
  %coerce.trunc86 = trunc i64 %var.load84 to i32
  %call.res87 = call ptr @mmap(ptr %addr.ffi.clean76, i64 %var.load77, i64 %bortmp80, i64 %bortmp83, i32 %coerce.trunc86, i64 %var.load85)
  store ptr %call.res87, ptr %var.sqes_ptr, align 8
  %var.load88 = load ptr, ptr %var.sqes_ptr, align 8
  %coerce.ptr2int89 = ptrtoint ptr %var.load88 to i64
  %cmptmp90 = icmp eq i64 %coerce.ptr2int89, -1
  br i1 %cmptmp90, label %choice.then91, label %choice.exit92

ret.dead70:                                       ; No predecessors!
  br label %choice.exit66

choice.then91:                                    ; preds = %choice.exit66
  %var.load93 = load ptr, ptr %var.sq_ptr, align 8
  %addr.ffi.int94 = ptrtoint ptr %var.load93 to i64
  %addr.ffi.masked95 = and i64 %addr.ffi.int94, 281474976710655
  %addr.ffi.clean96 = inttoptr i64 %addr.ffi.masked95 to ptr
  %var.load97 = load i64, ptr %var.sq_sz, align 8
  %call.res98 = call i64 @munmap(ptr %addr.ffi.clean96, i64 %var.load97)
  %var.load99 = load i64, ptr %var.fd, align 8
  %coerce.trunc100 = trunc i64 %var.load99 to i32
  %call.res101 = call i32 @close(i32 %coerce.trunc100)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.2.struct to i64) }

choice.exit92:                                    ; preds = %ret.dead102, %choice.exit66
  %var.load103 = load ptr, ptr %var.params, align 8
  %fld.gep104 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load103, i32 0, i32 25
  %fld.load105 = load i32, ptr %fld.gep104, align 4
  %coerce.zext106 = zext i32 %fld.load105 to i64
  %var.load107 = load i64, ptr %var.cq_entries, align 8
  %multmp108 = mul i64 %var.load107, 16
  %addtmp109 = add i64 %coerce.zext106, %multmp108
  store i64 %addtmp109, ptr %var.cq_sz, align 8
  %var.load110 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int111 = ptrtoint ptr %var.load110 to i64
  %addr.ffi.masked112 = and i64 %addr.ffi.int111, 281474976710655
  %addr.ffi.clean113 = inttoptr i64 %addr.ffi.masked112 to ptr
  %var.load114 = load i64, ptr %var.cq_sz, align 8
  %var.load115 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load116 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp117 = or i64 %var.load115, %var.load116
  %var.load118 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load119 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp120 = or i64 %var.load118, %var.load119
  %var.load121 = load i64, ptr %var.fd, align 8
  %var.load122 = load i64, ptr @"var.uring::IORING_OFF_CQ_RING", align 8
  %coerce.trunc123 = trunc i64 %var.load121 to i32
  %call.res124 = call ptr @mmap(ptr %addr.ffi.clean113, i64 %var.load114, i64 %bortmp117, i64 %bortmp120, i32 %coerce.trunc123, i64 %var.load122)
  store ptr %call.res124, ptr %var.cq_ptr, align 8
  %var.load125 = load ptr, ptr %var.cq_ptr, align 8
  %coerce.ptr2int126 = ptrtoint ptr %var.load125 to i64
  %cmptmp127 = icmp eq i64 %coerce.ptr2int126, -1
  br i1 %cmptmp127, label %choice.then128, label %choice.exit129

ret.dead102:                                      ; No predecessors!
  br label %choice.exit92

choice.then128:                                   ; preds = %choice.exit92
  %var.load130 = load ptr, ptr %var.sqes_ptr, align 8
  %addr.ffi.int131 = ptrtoint ptr %var.load130 to i64
  %addr.ffi.masked132 = and i64 %addr.ffi.int131, 281474976710655
  %addr.ffi.clean133 = inttoptr i64 %addr.ffi.masked132 to ptr
  %var.load134 = load i64, ptr %var.sqes_sz, align 8
  %call.res135 = call i64 @munmap(ptr %addr.ffi.clean133, i64 %var.load134)
  %var.load136 = load ptr, ptr %var.sq_ptr, align 8
  %addr.ffi.int137 = ptrtoint ptr %var.load136 to i64
  %addr.ffi.masked138 = and i64 %addr.ffi.int137, 281474976710655
  %addr.ffi.clean139 = inttoptr i64 %addr.ffi.masked138 to ptr
  %var.load140 = load i64, ptr %var.sq_sz, align 8
  %call.res141 = call i64 @munmap(ptr %addr.ffi.clean139, i64 %var.load140)
  %var.load142 = load i64, ptr %var.fd, align 8
  %coerce.trunc143 = trunc i64 %var.load142 to i32
  %call.res144 = call i32 @close(i32 %coerce.trunc143)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.3.struct to i64) }

choice.exit129:                                   ; preds = %ret.dead145, %choice.exit92
  %var.load146 = load i64, ptr %var.fd, align 8
  %var.load147 = load ptr, ptr %var.sq_ptr, align 8
  %var.load148 = load i64, ptr %var.sq_sz, align 8
  %var.load149 = load ptr, ptr %var.sqes_ptr, align 8
  %var.load150 = load i64, ptr %var.sqes_sz, align 8
  %var.load151 = load ptr, ptr %var.cq_ptr, align 8
  %var.load152 = load i64, ptr %var.cq_sz, align 8
  %var.load153 = load ptr, ptr %var.params, align 8
  %fld.gep154 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load153, i32 0, i32 10
  %fld.load155 = load i32, ptr %fld.gep154, align 4
  %coerce.zext156 = zext i32 %fld.load155 to i64
  %var.load157 = load ptr, ptr %var.params, align 8
  %fld.gep158 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load157, i32 0, i32 11
  %fld.load159 = load i32, ptr %fld.gep158, align 4
  %coerce.zext160 = zext i32 %fld.load159 to i64
  %var.load161 = load ptr, ptr %var.params, align 8
  %fld.gep162 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load161, i32 0, i32 12
  %fld.load163 = load i32, ptr %fld.gep162, align 4
  %coerce.zext164 = zext i32 %fld.load163 to i64
  %var.load165 = load ptr, ptr %var.params, align 8
  %fld.gep166 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load165, i32 0, i32 16
  %fld.load167 = load i32, ptr %fld.gep166, align 4
  %coerce.zext168 = zext i32 %fld.load167 to i64
  %var.load169 = load ptr, ptr %var.params, align 8
  %fld.gep170 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load169, i32 0, i32 20
  %fld.load171 = load i32, ptr %fld.gep170, align 4
  %coerce.zext172 = zext i32 %fld.load171 to i64
  %var.load173 = load ptr, ptr %var.params, align 8
  %fld.gep174 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load173, i32 0, i32 21
  %fld.load175 = load i32, ptr %fld.gep174, align 4
  %coerce.zext176 = zext i32 %fld.load175 to i64
  %var.load177 = load ptr, ptr %var.params, align 8
  %fld.gep178 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load177, i32 0, i32 22
  %fld.load179 = load i32, ptr %fld.gep178, align 4
  %coerce.zext180 = zext i32 %fld.load179 to i64
  %var.load181 = load ptr, ptr %var.params, align 8
  %fld.gep182 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load181, i32 0, i32 25
  %fld.load183 = load i32, ptr %fld.gep182, align 4
  %coerce.zext184 = zext i32 %fld.load183 to i64
  %var.load185 = load i64, ptr %var.sq_entries, align 8
  %var.load186 = load i64, ptr %var.cq_entries, align 8
  %arena.cur187 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc188 = call ptr @dva_arena_alloc(ptr %arena.cur187, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld189 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 0
  store i64 %var.load146, ptr %rec.fld189, align 8
  %rec.fld190 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 1
  store ptr %var.load147, ptr %rec.fld190, align 8
  %rec.fld191 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 2
  store i64 %var.load148, ptr %rec.fld191, align 8
  %rec.fld192 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 3
  store ptr %var.load149, ptr %rec.fld192, align 8
  %rec.fld193 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 4
  store i64 %var.load150, ptr %rec.fld193, align 8
  %rec.fld194 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 5
  store ptr %var.load151, ptr %rec.fld194, align 8
  %rec.fld195 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 6
  store i64 %var.load152, ptr %rec.fld195, align 8
  %rec.fld196 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 7
  store i64 %coerce.zext156, ptr %rec.fld196, align 8
  %rec.fld197 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 8
  store i64 %coerce.zext160, ptr %rec.fld197, align 8
  %rec.fld198 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 9
  store i64 %coerce.zext164, ptr %rec.fld198, align 8
  %rec.fld199 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 10
  store i64 %coerce.zext168, ptr %rec.fld199, align 8
  %rec.fld200 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 11
  store i64 %coerce.zext172, ptr %rec.fld200, align 8
  %rec.fld201 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 12
  store i64 %coerce.zext176, ptr %rec.fld201, align 8
  %rec.fld202 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 13
  store i64 %coerce.zext180, ptr %rec.fld202, align 8
  %rec.fld203 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 14
  store i64 %coerce.zext184, ptr %rec.fld203, align 8
  %rec.fld204 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 15
  store i64 %var.load185, ptr %rec.fld204, align 8
  %rec.fld205 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc188, i32 0, i32 16
  store i64 %var.load186, ptr %rec.fld205, align 8
  %p.to.i64 = ptrtoint ptr %rec.alloc188 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead145:                                      ; No predecessors!
  br label %choice.exit129
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_addr_msg(i64 %0) #5 {
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
define internal void @dva_abort_stale_addr_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i1 @"uring::prep_sqe"(ptr %0, i64 %1, i64 %2, i64 %3, ptr %4, i64 %5, i64 %6) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  %var.off = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.op = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.op, align 8
  store i64 %2, ptr %var.fd, align 8
  store i64 %3, ptr %var.off, align 8
  store ptr %4, ptr %var.addr, align 8
  store i64 %5, ptr %var.len, align 8
  store i64 %6, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr %var.op, align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load i64, ptr %var.off, align 8
  %var.load4 = load ptr, ptr %var.addr, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %var.load4, i64 %var.load5, i64 0, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_sqe_flags"(ptr %0, i64 %1, i64 %2, i64 %3, ptr %4, i64 %5, i64 %6, i64 %7) #0 {
entry:
  %var.target_addr = alloca ptr, align 8
  %var.sqe_dest = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.mask = alloca i32, align 4
  %var.used = alloca i64, align 8
  %var.tail = alloca i32, align 4
  %var.head = alloca i32, align 4
  %var.user_data = alloca i64, align 8
  %var.op_flags = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.addr = alloca ptr, align 8
  %var.off = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.op = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.op, align 8
  store i64 %2, ptr %var.fd, align 8
  store i64 %3, ptr %var.off, align 8
  store ptr %4, ptr %var.addr, align 8
  store i64 %5, ptr %var.len, align 8
  store i64 %6, ptr %var.op_flags, align 8
  store i64 %7, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, %fld.load3
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.head, align 4
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.ring, align 8
  %fld.gep8 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %ptr.int.l10 = ptrtoint ptr %fld.load6 to i64
  %addtmp11 = add i64 %ptr.int.l10, %fld.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %raw.int13 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %tag.immortal18 = icmp eq i64 %addr.tag16, 0
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current20 = icmp eq i64 %addr.tag16, %active.gen19
  %tag.fast.ok21 = or i1 %tag.immortal18, %tag.current20
  br i1 %tag.fast.ok21, label %addr_ok17, label %tag.slow_check22

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok17:                                        ; preds = %tag.slow_check22, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.tail, align 4
  %var.load25 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load24, %var.load25
  %coerce.zext = zext i32 %subtmp to i64
  store i64 %coerce.zext, ptr %var.used, align 8
  %var.load26 = load i64, ptr %var.used, align 8
  %var.load27 = load ptr, ptr %var.ring, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load27, i32 0, i32 15
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %cmptmp = icmp sge i64 %var.load26, %fld.load29
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check22:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag16)
  br label %addr_ok17

choice.then:                                      ; preds = %addr_ok17
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %addr_ok17
  %var.load30 = load ptr, ptr %var.ring, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load30, i32 0, i32 1
  %fld.load32 = load ptr, ptr %fld.gep31, align 8
  %var.load33 = load ptr, ptr %var.ring, align 8
  %fld.gep34 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load33, i32 0, i32 9
  %fld.load35 = load i64, ptr %fld.gep34, align 8
  %ptr.int.l36 = ptrtoint ptr %fld.load32 to i64
  %addtmp37 = add i64 %ptr.int.l36, %fld.load35
  %ptr.res38 = inttoptr i64 %addtmp37 to ptr
  %raw.int39 = ptrtoint ptr %ptr.res38 to i64
  %raw.clean.int40 = and i64 %raw.int39, 281474976710655
  %raw.clean.ptr41 = inttoptr i64 %raw.clean.int40 to ptr
  %addr.tag42 = lshr i64 %raw.int39, 48
  %tag.immortal44 = icmp eq i64 %addr.tag42, 0
  %active.gen45 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current46 = icmp eq i64 %addr.tag42, %active.gen45
  %tag.fast.ok47 = or i1 %tag.immortal44, %tag.current46
  br i1 %tag.fast.ok47, label %addr_ok43, label %tag.slow_check48

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_ok43:                                        ; preds = %tag.slow_check48, %choice.exit
  %raw.load49 = load volatile i32, ptr %raw.clean.ptr41, align 4
  store i32 %raw.load49, ptr %var.mask, align 4
  %var.load50 = load i32, ptr %var.tail, align 4
  %var.load51 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load50, %var.load51
  %coerce.zext52 = zext i32 %bandtmp to i64
  store i64 %coerce.zext52, ptr %var.idx, align 8
  %var.load53 = load ptr, ptr %var.ring, align 8
  %fld.gep54 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load53, i32 0, i32 3
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %var.load56 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load56, 64
  %ptr.int.l57 = ptrtoint ptr %fld.load55 to i64
  %addtmp58 = add i64 %ptr.int.l57, %multmp
  %ptr.res59 = inttoptr i64 %addtmp58 to ptr
  store ptr %ptr.res59, ptr %var.sqe_dest, align 8
  %var.load60 = load i64, ptr %var.op, align 8
  %var.load61 = load i64, ptr @"var.uring::OP_ASYNC_CANCEL", align 8
  %cmptmp62 = icmp eq i64 %var.load60, %var.load61
  br i1 %cmptmp62, label %choice.then63, label %choice.else

tag.slow_check48:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag42)
  br label %addr_ok43

choice.then63:                                    ; preds = %addr_ok43
  %var.load65 = load ptr, ptr %var.addr, align 8
  br label %choice.exit64

choice.else:                                      ; preds = %addr_ok43
  %var.load66 = load ptr, ptr %var.addr, align 8
  %ptrmask = call ptr @llvm.ptrmask.p0.i64(ptr %var.load66, i64 281474976710655)
  br label %choice.exit64

choice.exit64:                                    ; preds = %choice.else, %choice.then63
  %choice.res = phi ptr [ %var.load65, %choice.then63 ], [ %ptrmask, %choice.else ]
  store ptr %choice.res, ptr %var.target_addr, align 8
  %var.load67 = load ptr, ptr %var.sqe_dest, align 8
  %raw.int68 = ptrtoint ptr %var.load67 to i64
  %raw.clean.int69 = and i64 %raw.int68, 281474976710655
  %raw.clean.ptr70 = inttoptr i64 %raw.clean.int69 to ptr
  %addr.tag71 = lshr i64 %raw.int68, 48
  %tag.immortal73 = icmp eq i64 %addr.tag71, 0
  %active.gen74 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current75 = icmp eq i64 %addr.tag71, %active.gen74
  %tag.fast.ok76 = or i1 %tag.immortal73, %tag.current75
  br i1 %tag.fast.ok76, label %addr_ok72, label %tag.slow_check77

addr_ok72:                                        ; preds = %tag.slow_check77, %choice.exit64
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr70, i8 0, i64 64, i1 false)
  %var.load78 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l79 = ptrtoint ptr %var.load78 to i64
  %addtmp80 = add i64 %ptr.int.l79, 0
  %ptr.res81 = inttoptr i64 %addtmp80 to ptr
  %var.load82 = load i64, ptr %var.op, align 8
  %coerce.trunc = trunc i64 %var.load82 to i8
  %raw.int83 = ptrtoint ptr %ptr.res81 to i64
  %raw.clean.int84 = and i64 %raw.int83, 281474976710655
  %raw.clean.ptr85 = inttoptr i64 %raw.clean.int84 to ptr
  %addr.tag86 = lshr i64 %raw.int83, 48
  %tag.immortal88 = icmp eq i64 %addr.tag86, 0
  %active.gen89 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current90 = icmp eq i64 %addr.tag86, %active.gen89
  %tag.fast.ok91 = or i1 %tag.immortal88, %tag.current90
  br i1 %tag.fast.ok91, label %addr_ok87, label %tag.slow_check92

tag.slow_check77:                                 ; preds = %choice.exit64
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag71)
  br label %addr_ok72

addr_ok87:                                        ; preds = %tag.slow_check92, %addr_ok72
  store i8 %coerce.trunc, ptr %raw.clean.ptr85, align 1
  %var.load93 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l94 = ptrtoint ptr %var.load93 to i64
  %addtmp95 = add i64 %ptr.int.l94, 4
  %ptr.res96 = inttoptr i64 %addtmp95 to ptr
  %var.load97 = load i64, ptr %var.fd, align 8
  %coerce.trunc98 = trunc i64 %var.load97 to i32
  %raw.int99 = ptrtoint ptr %ptr.res96 to i64
  %raw.clean.int100 = and i64 %raw.int99, 281474976710655
  %raw.clean.ptr101 = inttoptr i64 %raw.clean.int100 to ptr
  %addr.tag102 = lshr i64 %raw.int99, 48
  %tag.immortal104 = icmp eq i64 %addr.tag102, 0
  %active.gen105 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current106 = icmp eq i64 %addr.tag102, %active.gen105
  %tag.fast.ok107 = or i1 %tag.immortal104, %tag.current106
  br i1 %tag.fast.ok107, label %addr_ok103, label %tag.slow_check108

tag.slow_check92:                                 ; preds = %addr_ok72
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag86)
  br label %addr_ok87

addr_ok103:                                       ; preds = %tag.slow_check108, %addr_ok87
  store i32 %coerce.trunc98, ptr %raw.clean.ptr101, align 4
  %var.load109 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l110 = ptrtoint ptr %var.load109 to i64
  %addtmp111 = add i64 %ptr.int.l110, 8
  %ptr.res112 = inttoptr i64 %addtmp111 to ptr
  %var.load113 = load i64, ptr %var.off, align 8
  %raw.int114 = ptrtoint ptr %ptr.res112 to i64
  %raw.clean.int115 = and i64 %raw.int114, 281474976710655
  %raw.clean.ptr116 = inttoptr i64 %raw.clean.int115 to ptr
  %addr.tag117 = lshr i64 %raw.int114, 48
  %tag.immortal119 = icmp eq i64 %addr.tag117, 0
  %active.gen120 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current121 = icmp eq i64 %addr.tag117, %active.gen120
  %tag.fast.ok122 = or i1 %tag.immortal119, %tag.current121
  br i1 %tag.fast.ok122, label %addr_ok118, label %tag.slow_check123

tag.slow_check108:                                ; preds = %addr_ok87
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag102)
  br label %addr_ok103

addr_ok118:                                       ; preds = %tag.slow_check123, %addr_ok103
  store i64 %var.load113, ptr %raw.clean.ptr116, align 8
  %var.load124 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l125 = ptrtoint ptr %var.load124 to i64
  %addtmp126 = add i64 %ptr.int.l125, 16
  %ptr.res127 = inttoptr i64 %addtmp126 to ptr
  %var.load128 = load ptr, ptr %var.target_addr, align 8
  %raw.int129 = ptrtoint ptr %ptr.res127 to i64
  %raw.clean.int130 = and i64 %raw.int129, 281474976710655
  %raw.clean.ptr131 = inttoptr i64 %raw.clean.int130 to ptr
  %addr.tag132 = lshr i64 %raw.int129, 48
  %tag.immortal134 = icmp eq i64 %addr.tag132, 0
  %active.gen135 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current136 = icmp eq i64 %addr.tag132, %active.gen135
  %tag.fast.ok137 = or i1 %tag.immortal134, %tag.current136
  br i1 %tag.fast.ok137, label %addr_ok133, label %tag.slow_check138

tag.slow_check123:                                ; preds = %addr_ok103
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag117)
  br label %addr_ok118

addr_ok133:                                       ; preds = %tag.slow_check138, %addr_ok118
  store ptr %var.load128, ptr %raw.clean.ptr131, align 8
  %var.load139 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l140 = ptrtoint ptr %var.load139 to i64
  %addtmp141 = add i64 %ptr.int.l140, 24
  %ptr.res142 = inttoptr i64 %addtmp141 to ptr
  %var.load143 = load i64, ptr %var.len, align 8
  %coerce.trunc144 = trunc i64 %var.load143 to i32
  %raw.int145 = ptrtoint ptr %ptr.res142 to i64
  %raw.clean.int146 = and i64 %raw.int145, 281474976710655
  %raw.clean.ptr147 = inttoptr i64 %raw.clean.int146 to ptr
  %addr.tag148 = lshr i64 %raw.int145, 48
  %tag.immortal150 = icmp eq i64 %addr.tag148, 0
  %active.gen151 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current152 = icmp eq i64 %addr.tag148, %active.gen151
  %tag.fast.ok153 = or i1 %tag.immortal150, %tag.current152
  br i1 %tag.fast.ok153, label %addr_ok149, label %tag.slow_check154

tag.slow_check138:                                ; preds = %addr_ok118
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag132)
  br label %addr_ok133

addr_ok149:                                       ; preds = %tag.slow_check154, %addr_ok133
  store i32 %coerce.trunc144, ptr %raw.clean.ptr147, align 4
  %var.load155 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l156 = ptrtoint ptr %var.load155 to i64
  %addtmp157 = add i64 %ptr.int.l156, 28
  %ptr.res158 = inttoptr i64 %addtmp157 to ptr
  %var.load159 = load i64, ptr %var.op_flags, align 8
  %coerce.trunc160 = trunc i64 %var.load159 to i32
  %raw.int161 = ptrtoint ptr %ptr.res158 to i64
  %raw.clean.int162 = and i64 %raw.int161, 281474976710655
  %raw.clean.ptr163 = inttoptr i64 %raw.clean.int162 to ptr
  %addr.tag164 = lshr i64 %raw.int161, 48
  %tag.immortal166 = icmp eq i64 %addr.tag164, 0
  %active.gen167 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current168 = icmp eq i64 %addr.tag164, %active.gen167
  %tag.fast.ok169 = or i1 %tag.immortal166, %tag.current168
  br i1 %tag.fast.ok169, label %addr_ok165, label %tag.slow_check170

tag.slow_check154:                                ; preds = %addr_ok133
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag148)
  br label %addr_ok149

addr_ok165:                                       ; preds = %tag.slow_check170, %addr_ok149
  store i32 %coerce.trunc160, ptr %raw.clean.ptr163, align 4
  %var.load171 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l172 = ptrtoint ptr %var.load171 to i64
  %addtmp173 = add i64 %ptr.int.l172, 32
  %ptr.res174 = inttoptr i64 %addtmp173 to ptr
  %var.load175 = load i64, ptr %var.user_data, align 8
  %raw.int176 = ptrtoint ptr %ptr.res174 to i64
  %raw.clean.int177 = and i64 %raw.int176, 281474976710655
  %raw.clean.ptr178 = inttoptr i64 %raw.clean.int177 to ptr
  %addr.tag179 = lshr i64 %raw.int176, 48
  %tag.immortal181 = icmp eq i64 %addr.tag179, 0
  %active.gen182 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current183 = icmp eq i64 %addr.tag179, %active.gen182
  %tag.fast.ok184 = or i1 %tag.immortal181, %tag.current183
  br i1 %tag.fast.ok184, label %addr_ok180, label %tag.slow_check185

tag.slow_check170:                                ; preds = %addr_ok149
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag164)
  br label %addr_ok165

addr_ok180:                                       ; preds = %tag.slow_check185, %addr_ok165
  store i64 %var.load175, ptr %raw.clean.ptr178, align 8
  %var.load186 = load ptr, ptr %var.ring, align 8
  %fld.gep187 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load186, i32 0, i32 1
  %fld.load188 = load ptr, ptr %fld.gep187, align 8
  %var.load189 = load ptr, ptr %var.ring, align 8
  %fld.gep190 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load189, i32 0, i32 10
  %fld.load191 = load i64, ptr %fld.gep190, align 8
  %ptr.int.l192 = ptrtoint ptr %fld.load188 to i64
  %addtmp193 = add i64 %ptr.int.l192, %fld.load191
  %ptr.res194 = inttoptr i64 %addtmp193 to ptr
  %var.load195 = load i64, ptr %var.idx, align 8
  %multmp196 = mul i64 %var.load195, 4
  %ptr.int.l197 = ptrtoint ptr %ptr.res194 to i64
  %addtmp198 = add i64 %ptr.int.l197, %multmp196
  %ptr.res199 = inttoptr i64 %addtmp198 to ptr
  %var.load200 = load i64, ptr %var.idx, align 8
  %coerce.trunc201 = trunc i64 %var.load200 to i32
  %raw.int202 = ptrtoint ptr %ptr.res199 to i64
  %raw.clean.int203 = and i64 %raw.int202, 281474976710655
  %raw.clean.ptr204 = inttoptr i64 %raw.clean.int203 to ptr
  %addr.tag205 = lshr i64 %raw.int202, 48
  %tag.immortal207 = icmp eq i64 %addr.tag205, 0
  %active.gen208 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current209 = icmp eq i64 %addr.tag205, %active.gen208
  %tag.fast.ok210 = or i1 %tag.immortal207, %tag.current209
  br i1 %tag.fast.ok210, label %addr_ok206, label %tag.slow_check211

tag.slow_check185:                                ; preds = %addr_ok165
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag179)
  br label %addr_ok180

addr_ok206:                                       ; preds = %tag.slow_check211, %addr_ok180
  store i32 %coerce.trunc201, ptr %raw.clean.ptr204, align 4
  %var.load212 = load ptr, ptr %var.ring, align 8
  %fld.gep213 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load212, i32 0, i32 1
  %fld.load214 = load ptr, ptr %fld.gep213, align 8
  %var.load215 = load ptr, ptr %var.ring, align 8
  %fld.gep216 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load215, i32 0, i32 8
  %fld.load217 = load i64, ptr %fld.gep216, align 8
  %ptr.int.l218 = ptrtoint ptr %fld.load214 to i64
  %addtmp219 = add i64 %ptr.int.l218, %fld.load217
  %ptr.res220 = inttoptr i64 %addtmp219 to ptr
  %var.load221 = load i32, ptr %var.tail, align 4
  %addtmp222 = add i32 %var.load221, 1
  %raw.int223 = ptrtoint ptr %ptr.res220 to i64
  %raw.clean.int224 = and i64 %raw.int223, 281474976710655
  %raw.clean.ptr225 = inttoptr i64 %raw.clean.int224 to ptr
  %addr.tag226 = lshr i64 %raw.int223, 48
  %tag.immortal228 = icmp eq i64 %addr.tag226, 0
  %active.gen229 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current230 = icmp eq i64 %addr.tag226, %active.gen229
  %tag.fast.ok231 = or i1 %tag.immortal228, %tag.current230
  br i1 %tag.fast.ok231, label %addr_ok227, label %tag.slow_check232

tag.slow_check211:                                ; preds = %addr_ok180
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag205)
  br label %addr_ok206

addr_ok227:                                       ; preds = %tag.slow_check232, %addr_ok206
  store i32 %addtmp222, ptr %raw.clean.ptr225, align 4
  ret i1 true

tag.slow_check232:                                ; preds = %addr_ok206
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag226)
  br label %addr_ok227
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

define i1 @"uring::prep_nop"(ptr %0, i64 %1) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_NOP", align 8
  %var.load2 = load ptr, ptr @"var.sys::addr_null", align 8
  %var.load3 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 0, i64 0, ptr %var.load2, i64 0, i64 %var.load3)
  ret i1 %call.res
}

define i1 @"uring::prep_read"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_READ", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 -1, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_read_at"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.off, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_READ", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load i64, ptr %var.off, align 8
  %var.load4 = load ptr, ptr %var.buf, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_write"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_WRITE", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 -1, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_write_at"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.off = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.off, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_WRITE", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load i64, ptr %var.off, align 8
  %var.load4 = load ptr, ptr %var.buf, align 8
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_pipe_read"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_READ", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_pipe_write"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_WRITE", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_close"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_CLOSE", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr @"var.sys::addr_null", align 8
  %var.load4 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 0, i64 %var.load4)
  ret i1 %call.res
}

define i1 @"uring::prep_recv"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.flags = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.flags, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_RECV", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_send"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.flags = alloca i64, align 8
  %var.len = alloca i64, align 8
  %var.buf = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.buf, align 8
  store i64 %3, ptr %var.len, align 8
  store i64 %4, ptr %var.flags, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_SEND", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.buf, align 8
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_accept"(ptr %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.flags = alloca i64, align 8
  %var.addrlen_ptr = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store ptr %2, ptr %var.addr, align 8
  store ptr %3, ptr %var.addrlen_ptr, align 8
  store i64 %4, ptr %var.flags, align 8
  store i64 %5, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_ACCEPT", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr %var.addrlen_ptr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load3 to i64
  %var.load4 = load ptr, ptr %var.addr, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %coerce.ptr2int, ptr %var.load4, i64 0, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_cancel"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.target_user_data = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.target_user_data, align 8
  store i64 %2, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_ASYNC_CANCEL", align 8
  %var.load2 = load i64, ptr %var.target_user_data, align 8
  %cast.int2ptr = inttoptr i64 %var.load2 to ptr
  %var.load3 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 -1, i64 0, ptr %cast.int2ptr, i64 0, i64 0, i64 %var.load3)
  ret i1 %call.res
}

define i1 @"uring::prep_timeout"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.flags = alloca i64, align 8
  %var.count = alloca i64, align 8
  %var.ts_ptr = alloca ptr, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store ptr %1, ptr %var.ts_ptr, align 8
  store i64 %2, ptr %var.count, align 8
  store i64 %3, ptr %var.flags, align 8
  store i64 %4, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_TIMEOUT", align 8
  %var.load2 = load i64, ptr %var.count, align 8
  %var.load3 = load ptr, ptr %var.ts_ptr, align 8
  %var.load4 = load i64, ptr %var.flags, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 -1, i64 %var.load2, ptr %var.load3, i64 1, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_timeout_ms"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
entry:
  %var.ms = alloca i64, align 8
  %var.user_data = alloca i64, align 8
  %var.timeout_ms = alloca i64, align 8
  %var.ts_ptr = alloca ptr, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store ptr %1, ptr %var.ts_ptr, align 8
  store i64 %2, ptr %var.timeout_ms, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load i64, ptr %var.timeout_ms, align 8
  %cmptmp = icmp slt i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.timeout_ms, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 0, %choice.then ], [ %var.load1, %choice.else ]
  store i64 %choice.res, ptr %var.ms, align 8
  %var.load2 = load ptr, ptr %var.ts_ptr, align 8
  %var.load3 = load i64, ptr %var.ms, align 8
  %divtmp = udiv i64 %var.load3, 1000
  %raw.int = ptrtoint ptr %var.load2 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %choice.exit
  store i64 %divtmp, ptr %raw.clean.ptr, align 8
  %var.load4 = load ptr, ptr %var.ts_ptr, align 8
  %ptr.int.l = ptrtoint ptr %var.load4 to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load5 = load i64, ptr %var.ms, align 8
  %modtmp = urem i64 %var.load5, 1000
  %multmp = mul i64 %modtmp, 1000000
  %raw.int6 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int7 = and i64 %raw.int6, 281474976710655
  %raw.clean.ptr8 = inttoptr i64 %raw.clean.int7 to ptr
  %addr.tag9 = lshr i64 %raw.int6, 48
  %tag.immortal11 = icmp eq i64 %addr.tag9, 0
  %active.gen12 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current13 = icmp eq i64 %addr.tag9, %active.gen12
  %tag.fast.ok14 = or i1 %tag.immortal11, %tag.current13
  br i1 %tag.fast.ok14, label %addr_ok10, label %tag.slow_check15

tag.slow_check:                                   ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok10:                                        ; preds = %tag.slow_check15, %addr_ok
  store i64 %multmp, ptr %raw.clean.ptr8, align 8
  %var.load16 = load ptr, ptr %var.ring, align 8
  %var.load17 = load ptr, ptr %var.ts_ptr, align 8
  %var.load18 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_timeout"(ptr %var.load16, ptr %var.load17, i64 0, i64 0, i64 %var.load18)
  ret i1 %call.res

tag.slow_check15:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag9)
  br label %addr_ok10
}

define i1 @"uring::prep_poll_add"(ptr %0, i64 %1, i64 %2, i64 %3) #0 {
entry:
  %var.user_data = alloca i64, align 8
  %var.poll_mask = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.fd, align 8
  store i64 %2, ptr %var.poll_mask, align 8
  store i64 %3, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_POLL_ADD", align 8
  %var.load2 = load i64, ptr %var.fd, align 8
  %var.load3 = load ptr, ptr @"var.sys::addr_null", align 8
  %var.load4 = load i64, ptr %var.poll_mask, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 0, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i64 @"uring::sq_space"(ptr %0) #0 {
entry:
  %var.used = alloca i64, align 8
  %var.tail = alloca i32, align 4
  %var.head = alloca i32, align 4
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, %fld.load3
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.head, align 4
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.ring, align 8
  %fld.gep8 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %ptr.int.l10 = ptrtoint ptr %fld.load6 to i64
  %addtmp11 = add i64 %ptr.int.l10, %fld.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %raw.int13 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %tag.immortal18 = icmp eq i64 %addr.tag16, 0
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current20 = icmp eq i64 %addr.tag16, %active.gen19
  %tag.fast.ok21 = or i1 %tag.immortal18, %tag.current20
  br i1 %tag.fast.ok21, label %addr_ok17, label %tag.slow_check22

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok17:                                        ; preds = %tag.slow_check22, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.tail, align 4
  %var.load25 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load24, %var.load25
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.used, align 8
  %var.load26 = load ptr, ptr %var.ring, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load26, i32 0, i32 15
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %var.load29 = load i64, ptr %var.used, align 8
  %subtmp30 = sub i64 %fld.load28, %var.load29
  ret i64 %subtmp30

tag.slow_check22:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag16)
  br label %addr_ok17
}

define i64 @"uring::cq_ready"(ptr %0) #0 {
entry:
  %var.tail = alloca i32, align 4
  %var.head = alloca i32, align 4
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 11
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, %fld.load3
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.head, align 4
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 5
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.ring, align 8
  %fld.gep8 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 12
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %ptr.int.l10 = ptrtoint ptr %fld.load6 to i64
  %addtmp11 = add i64 %ptr.int.l10, %fld.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %raw.int13 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %tag.immortal18 = icmp eq i64 %addr.tag16, 0
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current20 = icmp eq i64 %addr.tag16, %active.gen19
  %tag.fast.ok21 = or i1 %tag.immortal18, %tag.current20
  br i1 %tag.fast.ok21, label %addr_ok17, label %tag.slow_check22

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok17:                                        ; preds = %tag.slow_check22, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.tail, align 4
  %var.load25 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load24, %var.load25
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  ret i64 %bandtmp

tag.slow_check22:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag16)
  br label %addr_ok17
}

define i64 @"uring::submit_and_wait"(ptr %0, i64 %1) #0 {
entry:
  %var.flags = alloca i64, align 8
  %var.to_submit = alloca i64, align 8
  %var.tail = alloca i32, align 4
  %var.head = alloca i32, align 4
  %var.wait_nr = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.wait_nr, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 7
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, %fld.load3
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.head, align 4
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 1
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.ring, align 8
  %fld.gep8 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 8
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %ptr.int.l10 = ptrtoint ptr %fld.load6 to i64
  %addtmp11 = add i64 %ptr.int.l10, %fld.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %raw.int13 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %tag.immortal18 = icmp eq i64 %addr.tag16, 0
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current20 = icmp eq i64 %addr.tag16, %active.gen19
  %tag.fast.ok21 = or i1 %tag.immortal18, %tag.current20
  br i1 %tag.fast.ok21, label %addr_ok17, label %tag.slow_check22

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok17:                                        ; preds = %tag.slow_check22, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.tail, align 4
  %var.load25 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load24, %var.load25
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.to_submit, align 8
  %var.load26 = load i64, ptr %var.wait_nr, align 8
  %cmptmp = icmp sgt i64 %var.load26, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check22:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag16)
  br label %addr_ok17

choice.then:                                      ; preds = %addr_ok17
  %var.load27 = load i64, ptr @"var.uring::IORING_ENTER_GETEVENTS", align 8
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok17
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load27, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.flags, align 8
  %var.load28 = load i64, ptr @"var.uring::SYS_IO_URING_ENTER", align 8
  %var.load29 = load ptr, ptr %var.ring, align 8
  %fld.gep30 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load29, i32 0, i32 0
  %fld.load31 = load i64, ptr %fld.gep30, align 8
  %cast.int2ptr = inttoptr i64 %fld.load31 to ptr
  %addr.ffi.int = ptrtoint ptr %cast.int2ptr to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load32 = load i64, ptr %var.to_submit, align 8
  %cast.int2ptr33 = inttoptr i64 %var.load32 to ptr
  %addr.ffi.int34 = ptrtoint ptr %cast.int2ptr33 to i64
  %addr.ffi.masked35 = and i64 %addr.ffi.int34, 281474976710655
  %addr.ffi.clean36 = inttoptr i64 %addr.ffi.masked35 to ptr
  %var.load37 = load i64, ptr %var.wait_nr, align 8
  %cast.int2ptr38 = inttoptr i64 %var.load37 to ptr
  %addr.ffi.int39 = ptrtoint ptr %cast.int2ptr38 to i64
  %addr.ffi.masked40 = and i64 %addr.ffi.int39, 281474976710655
  %addr.ffi.clean41 = inttoptr i64 %addr.ffi.masked40 to ptr
  %var.load42 = load i64, ptr %var.flags, align 8
  %cast.int2ptr43 = inttoptr i64 %var.load42 to ptr
  %addr.ffi.int44 = ptrtoint ptr %cast.int2ptr43 to i64
  %addr.ffi.masked45 = and i64 %addr.ffi.int44, 281474976710655
  %addr.ffi.clean46 = inttoptr i64 %addr.ffi.masked45 to ptr
  %var.load47 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int48 = ptrtoint ptr %var.load47 to i64
  %addr.ffi.masked49 = and i64 %addr.ffi.int48, 281474976710655
  %addr.ffi.clean50 = inttoptr i64 %addr.ffi.masked49 to ptr
  %var.load51 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int52 = ptrtoint ptr %var.load51 to i64
  %addr.ffi.masked53 = and i64 %addr.ffi.int52, 281474976710655
  %addr.ffi.clean54 = inttoptr i64 %addr.ffi.masked53 to ptr
  %call.res = call i64 @syscall(i64 %var.load28, ptr %addr.ffi.clean, ptr %addr.ffi.clean36, ptr %addr.ffi.clean41, ptr %addr.ffi.clean46, ptr %addr.ffi.clean50, ptr %addr.ffi.clean54)
  ret i64 %call.res
}

define i64 @"uring::submit"(ptr %0) #0 {
entry:
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call i64 @"uring::submit_and_wait"(ptr %var.load, i64 0)
  ret i64 %call.res
}

define ptr @"uring::peek_cqe"(ptr %0) #0 {
entry:
  %var.cqe = alloca ptr, align 8
  %var.cqe_ptr = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.mask = alloca i32, align 4
  %var.tail = alloca i32, align 4
  %var.head = alloca i32, align 4
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 11
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %ptr.int.l = ptrtoint ptr %fld.load to i64
  %addtmp = add i64 %ptr.int.l, %fld.load3
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

addr_ok:                                          ; preds = %tag.slow_check, %entry
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  store i32 %raw.load, ptr %var.head, align 4
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 5
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %var.load7 = load ptr, ptr %var.ring, align 8
  %fld.gep8 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load7, i32 0, i32 12
  %fld.load9 = load i64, ptr %fld.gep8, align 8
  %ptr.int.l10 = ptrtoint ptr %fld.load6 to i64
  %addtmp11 = add i64 %ptr.int.l10, %fld.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %raw.int13 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int14 = and i64 %raw.int13, 281474976710655
  %raw.clean.ptr15 = inttoptr i64 %raw.clean.int14 to ptr
  %addr.tag16 = lshr i64 %raw.int13, 48
  %tag.immortal18 = icmp eq i64 %addr.tag16, 0
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current20 = icmp eq i64 %addr.tag16, %active.gen19
  %tag.fast.ok21 = or i1 %tag.immortal18, %tag.current20
  br i1 %tag.fast.ok21, label %addr_ok17, label %tag.slow_check22

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok17:                                        ; preds = %tag.slow_check22, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.head, align 4
  %var.load25 = load i32, ptr %var.tail, align 4
  %coerce.zext = zext i32 %var.load24 to i64
  %coerce.zext26 = zext i32 %var.load25 to i64
  %cmptmp = icmp ne i64 %coerce.zext, %coerce.zext26
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check22:                                 ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag16)
  br label %addr_ok17

choice.then:                                      ; preds = %addr_ok17
  %var.load27 = load ptr, ptr %var.ring, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load27, i32 0, i32 5
  %fld.load29 = load ptr, ptr %fld.gep28, align 8
  %var.load30 = load ptr, ptr %var.ring, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load30, i32 0, i32 13
  %fld.load32 = load i64, ptr %fld.gep31, align 8
  %ptr.int.l33 = ptrtoint ptr %fld.load29 to i64
  %addtmp34 = add i64 %ptr.int.l33, %fld.load32
  %ptr.res35 = inttoptr i64 %addtmp34 to ptr
  %raw.int36 = ptrtoint ptr %ptr.res35 to i64
  %raw.clean.int37 = and i64 %raw.int36, 281474976710655
  %raw.clean.ptr38 = inttoptr i64 %raw.clean.int37 to ptr
  %addr.tag39 = lshr i64 %raw.int36, 48
  %tag.immortal41 = icmp eq i64 %addr.tag39, 0
  %active.gen42 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current43 = icmp eq i64 %addr.tag39, %active.gen42
  %tag.fast.ok44 = or i1 %tag.immortal41, %tag.current43
  br i1 %tag.fast.ok44, label %addr_ok40, label %tag.slow_check45

choice.else:                                      ; preds = %addr_ok17
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok123
  %choice.res = phi ptr [ %var.load129, %addr_ok123 ], [ null, %choice.else ]
  ret ptr %choice.res

addr_ok40:                                        ; preds = %tag.slow_check45, %choice.then
  %raw.load46 = load volatile i32, ptr %raw.clean.ptr38, align 4
  store i32 %raw.load46, ptr %var.mask, align 4
  %var.load47 = load i32, ptr %var.head, align 4
  %var.load48 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load47, %var.load48
  %coerce.zext49 = zext i32 %bandtmp to i64
  store i64 %coerce.zext49, ptr %var.idx, align 8
  %var.load50 = load ptr, ptr %var.ring, align 8
  %fld.gep51 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load50, i32 0, i32 5
  %fld.load52 = load ptr, ptr %fld.gep51, align 8
  %var.load53 = load ptr, ptr %var.ring, align 8
  %fld.gep54 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load53, i32 0, i32 14
  %fld.load55 = load i64, ptr %fld.gep54, align 8
  %ptr.int.l56 = ptrtoint ptr %fld.load52 to i64
  %addtmp57 = add i64 %ptr.int.l56, %fld.load55
  %ptr.res58 = inttoptr i64 %addtmp57 to ptr
  %var.load59 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load59, 16
  %ptr.int.l60 = ptrtoint ptr %ptr.res58 to i64
  %addtmp61 = add i64 %ptr.int.l60, %multmp
  %ptr.res62 = inttoptr i64 %addtmp61 to ptr
  store ptr %ptr.res62, ptr %var.cqe_ptr, align 8
  %var.load63 = load ptr, ptr %var.cqe_ptr, align 8
  %raw.int64 = ptrtoint ptr %var.load63 to i64
  %raw.clean.int65 = and i64 %raw.int64, 281474976710655
  %raw.clean.ptr66 = inttoptr i64 %raw.clean.int65 to ptr
  %addr.tag67 = lshr i64 %raw.int64, 48
  %tag.immortal69 = icmp eq i64 %addr.tag67, 0
  %active.gen70 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current71 = icmp eq i64 %addr.tag67, %active.gen70
  %tag.fast.ok72 = or i1 %tag.immortal69, %tag.current71
  br i1 %tag.fast.ok72, label %addr_ok68, label %tag.slow_check73

tag.slow_check45:                                 ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag39)
  br label %addr_ok40

addr_ok68:                                        ; preds = %tag.slow_check73, %addr_ok40
  %raw.load74 = load volatile i64, ptr %raw.clean.ptr66, align 8
  %var.load75 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l76 = ptrtoint ptr %var.load75 to i64
  %addtmp77 = add i64 %ptr.int.l76, 8
  %ptr.res78 = inttoptr i64 %addtmp77 to ptr
  %raw.int79 = ptrtoint ptr %ptr.res78 to i64
  %raw.clean.int80 = and i64 %raw.int79, 281474976710655
  %raw.clean.ptr81 = inttoptr i64 %raw.clean.int80 to ptr
  %addr.tag82 = lshr i64 %raw.int79, 48
  %tag.immortal84 = icmp eq i64 %addr.tag82, 0
  %active.gen85 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current86 = icmp eq i64 %addr.tag82, %active.gen85
  %tag.fast.ok87 = or i1 %tag.immortal84, %tag.current86
  br i1 %tag.fast.ok87, label %addr_ok83, label %tag.slow_check88

tag.slow_check73:                                 ; preds = %addr_ok40
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag67)
  br label %addr_ok68

addr_ok83:                                        ; preds = %tag.slow_check88, %addr_ok68
  %raw.load89 = load volatile i32, ptr %raw.clean.ptr81, align 4
  %coerce.sext = sext i32 %raw.load89 to i64
  %var.load90 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l91 = ptrtoint ptr %var.load90 to i64
  %addtmp92 = add i64 %ptr.int.l91, 12
  %ptr.res93 = inttoptr i64 %addtmp92 to ptr
  %raw.int94 = ptrtoint ptr %ptr.res93 to i64
  %raw.clean.int95 = and i64 %raw.int94, 281474976710655
  %raw.clean.ptr96 = inttoptr i64 %raw.clean.int95 to ptr
  %addr.tag97 = lshr i64 %raw.int94, 48
  %tag.immortal99 = icmp eq i64 %addr.tag97, 0
  %active.gen100 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current101 = icmp eq i64 %addr.tag97, %active.gen100
  %tag.fast.ok102 = or i1 %tag.immortal99, %tag.current101
  br i1 %tag.fast.ok102, label %addr_ok98, label %tag.slow_check103

tag.slow_check88:                                 ; preds = %addr_ok68
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag82)
  br label %addr_ok83

addr_ok98:                                        ; preds = %tag.slow_check103, %addr_ok83
  %raw.load104 = load volatile i32, ptr %raw.clean.ptr96, align 4
  %coerce.zext105 = zext i32 %raw.load104 to i64
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %raw.load74, ptr %rec.fld, align 8
  %rec.fld106 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %coerce.sext, ptr %rec.fld106, align 8
  %rec.fld107 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %coerce.zext105, ptr %rec.fld107, align 8
  store ptr %rec.alloc, ptr %var.cqe, align 8
  %var.load108 = load ptr, ptr %var.ring, align 8
  %fld.gep109 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load108, i32 0, i32 5
  %fld.load110 = load ptr, ptr %fld.gep109, align 8
  %var.load111 = load ptr, ptr %var.ring, align 8
  %fld.gep112 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load111, i32 0, i32 11
  %fld.load113 = load i64, ptr %fld.gep112, align 8
  %ptr.int.l114 = ptrtoint ptr %fld.load110 to i64
  %addtmp115 = add i64 %ptr.int.l114, %fld.load113
  %ptr.res116 = inttoptr i64 %addtmp115 to ptr
  %var.load117 = load i32, ptr %var.head, align 4
  %addtmp118 = add i32 %var.load117, 1
  %raw.int119 = ptrtoint ptr %ptr.res116 to i64
  %raw.clean.int120 = and i64 %raw.int119, 281474976710655
  %raw.clean.ptr121 = inttoptr i64 %raw.clean.int120 to ptr
  %addr.tag122 = lshr i64 %raw.int119, 48
  %tag.immortal124 = icmp eq i64 %addr.tag122, 0
  %active.gen125 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current126 = icmp eq i64 %addr.tag122, %active.gen125
  %tag.fast.ok127 = or i1 %tag.immortal124, %tag.current126
  br i1 %tag.fast.ok127, label %addr_ok123, label %tag.slow_check128

tag.slow_check103:                                ; preds = %addr_ok83
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag97)
  br label %addr_ok98

addr_ok123:                                       ; preds = %tag.slow_check128, %addr_ok98
  store i32 %addtmp118, ptr %raw.clean.ptr121, align 4
  %var.load129 = load ptr, ptr %var.cqe, align 8
  br label %choice.exit

tag.slow_check128:                                ; preds = %addr_ok98
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag122)
  br label %addr_ok123
}

define { i1, i64 } @"uring::wait_cqe"(ptr %0) #0 {
entry:
  %var.cqe2 = alloca ptr, align 8
  %var._16 = alloca ptr, align 8
  %var.c2 = alloca ptr, align 8
  %var.ret = alloca i64, align 8
  %var.cqe = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.cqe_opt = alloca ptr, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call ptr @"uring::peek_cqe"(ptr %var.load)
  store ptr %call.res, ptr %var.cqe_opt, align 8
  %var.load1 = load ptr, ptr %var.cqe_opt, align 8
  %niche.ne.null = icmp ne ptr %var.load1, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load1, ptr %var._, align 8
  store ptr %var.load1, ptr %var.cqe, align 8
  %var.load2 = load ptr, ptr %var.cqe, align 8
  %p.to.i64 = ptrtoint ptr %var.load2 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.ring, align 8
  %call.res4 = call i64 @"uring::submit_and_wait"(ptr %var.load3, i64 1)
  store i64 %call.res4, ptr %var.ret, align 8
  %var.load5 = load i64, ptr %var.ret, align 8
  %cmptmp = icmp slt i64 %var.load5, 0
  br i1 %cmptmp, label %choice.then6, label %choice.else7

choice.exit:                                      ; preds = %choice.exit8, %choice.then
  %choice.res21 = phi { i1, i64 } [ %ram.pay, %choice.then ], [ %choice.res20, %choice.exit8 ]
  ret { i1, i64 } %choice.res21

choice.then6:                                     ; preds = %choice.else
  br label %choice.exit8

choice.else7:                                     ; preds = %choice.else
  %var.load9 = load ptr, ptr %var.ring, align 8
  %call.res10 = call ptr @"uring::peek_cqe"(ptr %var.load9)
  store ptr %call.res10, ptr %var.c2, align 8
  %var.load11 = load ptr, ptr %var.c2, align 8
  %niche.ne.null12 = icmp ne ptr %var.load11, null
  br i1 %niche.ne.null12, label %choice.then13, label %choice.else14

choice.exit8:                                     ; preds = %choice.exit15, %choice.then6
  %choice.res20 = phi { i1, i64 } [ { i1 false, i64 ptrtoint (ptr @str.4.struct to i64) }, %choice.then6 ], [ %choice.res, %choice.exit15 ]
  br label %choice.exit

choice.then13:                                    ; preds = %choice.else7
  store ptr %var.load11, ptr %var._16, align 8
  store ptr %var.load11, ptr %var.cqe2, align 8
  %var.load17 = load ptr, ptr %var.cqe2, align 8
  %p.to.i6418 = ptrtoint ptr %var.load17 to i64
  %ram.pay19 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i6418, 1
  br label %choice.exit15

choice.else14:                                    ; preds = %choice.else7
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res = phi { i1, i64 } [ %ram.pay19, %choice.then13 ], [ { i1 false, i64 ptrtoint (ptr @str.5.struct to i64) }, %choice.else14 ]
  br label %choice.exit8
}

define ptr @"uring::reap"(ptr %0) #0 {
entry:
  %var.c = alloca ptr, align 8
  %var._3 = alloca ptr, align 8
  %var.opt = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.32 = alloca i64, align 8
  %loop.idx.32 = alloca i64, align 8
  %"var.cqes'" = alloca ptr, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
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
  store ptr %a.new, ptr %"var.cqes'", align 8
  store i64 0, ptr %loop.idx.32, align 8
  br label %loop.header.32

loop.header.32:                                   ; preds = %loop.latch.32, %entry
  %counter.load = load i64, ptr %loop.idx.32, align 8
  br label %loop.body.32

loop.body.32:                                     ; preds = %loop.header.32
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.32, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call ptr @"uring::peek_cqe"(ptr %var.load)
  store ptr %call.res, ptr %var.opt, align 8
  %var.load2 = load ptr, ptr %var.opt, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

loop.exit.nat.32:                                 ; No predecessors!
  br label %loop.exit.32

loop.latch.32:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.32, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.32, align 8
  br label %loop.header.32

loop.exit.32:                                     ; preds = %choice.else, %loop.exit.nat.32
  %var.load16 = load ptr, ptr %"var.cqes'", align 8
  %a.load17 = load ptr, ptr %"var.cqes'", align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

choice.then:                                      ; preds = %loop.body.32
  store ptr %var.load2, ptr %var._3, align 8
  store ptr %var.load2, ptr %var.c, align 8
  %var.load4 = load ptr, ptr %var.c, align 8
  %a.load = load ptr, ptr %"var.cqes'", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %loop.body.32
  br label %loop.exit.32

choice.exit:                                      ; preds = %a.store
  br label %loop.latch.32

a.create:                                         ; preds = %choice.then
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep9, align 8
  %a.data.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf8, ptr %a.data.gep10, align 8
  %a.cap.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep11, align 8
  store ptr %a.create6, ptr %"var.cqes'", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %"var.cqes'", align 8
  br label %a.check

a.check:                                          ; preds = %a.after
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len12 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 2
  %a.cap13 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len12, %a.cap13
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.cur.data14 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.cur.len15 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data14, i64 %a.cur.len15
  %slot.p2i = ptrtoint ptr %var.load4 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len15, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

a.create19:                                       ; preds = %loop.exit.32
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  %a.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 0
  store i64 0, ptr %a.len.gep25, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  store ptr %a.create22, ptr %"var.cqes'", align 8
  br label %a.after20

a.after20:                                        ; preds = %a.create19, %loop.exit.32
  %a.load228 = load ptr, ptr %"var.cqes'", align 8
  ret ptr %a.load228
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
define internal void @dva_abort_arr_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

define { i1, i64 } @"uring::drain_pipes"(ptr %0, ptr %1) #0 {
entry:
  %var.fd432 = alloca i64, align 8
  %var.prev = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.nb = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.cqe = alloca ptr, align 8
  %var._102 = alloca i64, align 8
  %var._i101 = alloca i64, align 8
  %loop.step.36 = alloca i64, align 8
  %loop.idx.36 = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.34 = alloca i64, align 8
  %loop.idx.34 = alloca i64, align 8
  %"var.active'" = alloca i64, align 8
  %var.scratch = alloca ptr, align 8
  %"var.outs'" = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.fds = alloca ptr, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store ptr %1, ptr %var.fds, align 8
  %var.load = load ptr, ptr %var.fds, align 8
  %a.load = load ptr, ptr %var.fds, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create1, ptr %var.fds, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.fds, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query3 = load i64, ptr %a.len.query, align 8
  store i64 %a.len.query3, ptr %var.n, align 8
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep7, align 8
  %a.data.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf6, ptr %a.data.gep8, align 8
  %a.cap.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep9, align 8
  store ptr %a.new, ptr %"var.outs'", align 8
  %var.load10 = load i64, ptr %var.n, align 8
  %cmptmp = icmp eq i64 %var.load10, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after
  %var.load11 = load ptr, ptr %"var.outs'", align 8
  %a.load12 = load ptr, ptr %"var.outs'", align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

choice.exit:                                      ; preds = %ret.dead, %a.after
  %var.load24 = load i64, ptr %var.n, align 8
  %multmp = mul i64 %var.load24, 4096
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 24)
  %cap.neg = icmp slt i64 %multmp, 0
  %cap.safe = select i1 %cap.neg, i64 0, i64 %multmp
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len26

a.create14:                                       ; preds = %choice.then
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.create17, ptr %"var.outs'", align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %choice.then
  %a.load223 = load ptr, ptr %"var.outs'", align 8
  %p.to.i64 = ptrtoint ptr %a.load223 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead:                                         ; No predecessors!
  br label %choice.exit

b.buf.len26:                                      ; preds = %abort.dead, %choice.exit
  %arena.cur27 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.scratch, align 8
  store i64 0, ptr %"var.active'", align 8
  %var.load28 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.34, align 8
  br label %loop.header.34

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len26

loop.header.34:                                   ; preds = %loop.latch.34, %b.buf.len26
  %counter.load = load i64, ptr %loop.idx.34, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load28
  br i1 %loop.cond, label %loop.body.34, label %loop.exit.nat.34

loop.body.34:                                     ; preds = %loop.header.34
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.34, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %a.load29 = load ptr, ptr %"var.outs'", align 8
  %a.null30 = icmp eq ptr %a.load29, null
  br i1 %a.null30, label %a.create31, label %a.after32

loop.exit.nat.34:                                 ; preds = %loop.header.34
  br label %loop.exit.34

loop.latch.34:                                    ; preds = %choice.exit89
  %step.val = load i64, ptr %loop.step.34, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.34, align 8
  br label %loop.header.34

loop.exit.34:                                     ; preds = %loop.exit.nat.34
  store i64 0, ptr %loop.idx.36, align 8
  br label %loop.header.36

a.create31:                                       ; preds = %loop.body.34
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 24)
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 128)
  %a.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 0
  store i64 0, ptr %a.len.gep37, align 8
  %a.data.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 1
  store ptr %a.buf36, ptr %a.data.gep38, align 8
  %a.cap.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 2
  store i64 16, ptr %a.cap.gep39, align 8
  store ptr %a.create34, ptr %"var.outs'", align 8
  br label %a.after32

a.after32:                                        ; preds = %a.create31, %loop.body.34
  %a.load240 = load ptr, ptr %"var.outs'", align 8
  br label %a.check

a.check:                                          ; preds = %a.after32
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  %a.len41 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 2
  %a.cap42 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len41, %a.cap42
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load240)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 1
  %a.cur.data43 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  %a.cur.len44 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data43, i64 %a.cur.len44
  store i64 ptrtoint (ptr @str.6.struct to i64), ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len44, 1
  %b.len.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep45, align 8
  %var.load46 = load ptr, ptr %var.fds, align 8
  %a.load47 = load ptr, ptr %var.fds, align 8
  %a.null48 = icmp eq ptr %a.load47, null
  br i1 %a.null48, label %a.create49, label %a.after50

a.create49:                                       ; preds = %a.store
  %arena.cur51 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 24)
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 128)
  %a.len.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 0
  store i64 0, ptr %a.len.gep55, align 8
  %a.data.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 1
  store ptr %a.buf54, ptr %a.data.gep56, align 8
  %a.cap.gep57 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create52, i32 0, i32 2
  store i64 16, ptr %a.cap.gep57, align 8
  store ptr %a.create52, ptr %var.fds, align 8
  br label %a.after50

a.after50:                                        ; preds = %a.create49, %a.store
  %a.load258 = load ptr, ptr %var.fds, align 8
  %var.load59 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load258, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after50
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 0
  %a.rd.len60 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load59, 0
  %a.rd.lt = icmp slt i64 %var.load59, %a.rd.len60
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load258, i32 0, i32 1
  %a.rd.data61 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data61, i64 %var.load59
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after50
  %arena.cur62 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur62, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 374, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 21, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur63 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc64 = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 56)
  %err.code.gep65 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 0
  store i64 4011, ptr %err.code.gep65, align 8
  %err.msg.gep66 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep66, align 8
  %err.file.gep67 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep67, align 8
  %err.line.gep68 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 3
  store i64 374, ptr %err.line.gep68, align 8
  %err.col.gep69 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 4
  store i64 21, ptr %err.col.gep69, align 8
  %err.ctx.gep70 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc64, i32 0, i32 5
  %err.ctx0.gep71 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep70, i32 0, i32 0
  store i64 %var.load59, ptr %err.ctx0.gep71, align 8
  %err.ctx1.gep72 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep70, i32 0, i32 1
  store i64 %a.rd.len60, ptr %err.ctx1.gep72, align 8
  %err.p2i73 = ptrtoint ptr %err.alloc64 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i73, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay74 = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay74, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.35, label %unwrap.abort.35

unwrap.pos.35:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay74, 1
  store i64 %unwrap.pay.pos, ptr %var.fd, align 8
  %var.load86 = load i64, ptr %var.fd, align 8
  %cmptmp87 = icmp sge i64 %var.load86, 0
  br i1 %cmptmp87, label %choice.then88, label %choice.exit89

unwrap.abort.35:                                  ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay74, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep75 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep75, align 8
  %err.msg.gep76 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep76, align 8
  %err.file.gep77 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep77, align 8
  %err.line.gep78 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep78, align 8
  %err.col.gep79 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep79, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len80 = load i64, ptr %err.msg.len, align 8
  %err.msg.len81 = and i64 %err.msg.len80, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len81 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data82 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len83 = load i64, ptr %err.file.len, align 8
  %err.file.len84 = and i64 %err.file.len83, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len84 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data85 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.35
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.35
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data82, i32 %err.file.len32, ptr %err.file.data85, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then88:                                    ; preds = %unwrap.pos.35
  %var.load90 = load ptr, ptr %var.ring, align 8
  %var.load91 = load i64, ptr %var.fd, align 8
  %var.load92 = load ptr, ptr %var.scratch, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load92, i32 0, i32 1
  %b.ptr93 = load ptr, ptr %b.ptr, align 8
  %var.load94 = load i64, ptr %var.i, align 8
  %multmp95 = mul i64 %var.load94, 4096
  %ptr.int.l = ptrtoint ptr %b.ptr93 to i64
  %addtmp = add i64 %ptr.int.l, %multmp95
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load96 = load i64, ptr %var.i, align 8
  %call.res = call i1 @"uring::prep_pipe_read"(ptr %var.load90, i64 %var.load91, ptr %ptr.res, i64 4096, i64 %var.load96)
  %var.load97 = load i64, ptr %"var.active'", align 8
  %addtmp98 = add i64 %var.load97, 1
  store i64 %addtmp98, ptr %"var.active'", align 8
  br label %choice.exit89

choice.exit89:                                    ; preds = %choice.then88, %unwrap.pos.35
  br label %loop.latch.34

loop.header.36:                                   ; preds = %loop.latch.36, %loop.exit.34
  %counter.load99 = load i64, ptr %loop.idx.36, align 8
  br label %loop.body.36

loop.body.36:                                     ; preds = %loop.header.36
  %loop.rel.i100 = sub i64 %counter.load99, 0
  store i64 1, ptr %loop.step.36, align 8
  store i64 %loop.rel.i100, ptr %var._i101, align 8
  store i64 %counter.load99, ptr %var._102, align 8
  %var.load103 = load i64, ptr %"var.active'", align 8
  %cmptmp104 = icmp sle i64 %var.load103, 0
  br i1 %cmptmp104, label %choice.then105, label %choice.exit106

loop.exit.nat.36:                                 ; No predecessors!
  br label %loop.exit.36

loop.latch.36:                                    ; preds = %choice.exit118
  %step.val446 = load i64, ptr %loop.step.36, align 8
  %loop.next447 = add i64 %counter.load99, %step.val446
  store i64 %loop.next447, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %choice.then105, %loop.exit.nat.36
  %var.load448 = load ptr, ptr %"var.outs'", align 8
  %a.load449 = load ptr, ptr %"var.outs'", align 8
  %a.null450 = icmp eq ptr %a.load449, null
  br i1 %a.null450, label %a.create451, label %a.after452

choice.then105:                                   ; preds = %loop.body.36
  br label %loop.exit.36

choice.exit106:                                   ; preds = %loop.body.36
  %var.load107 = load ptr, ptr %var.ring, align 8
  %call.res108 = call i64 @"uring::submit"(ptr %var.load107)
  %var.load109 = load ptr, ptr %var.ring, align 8
  %call.res110 = call { i1, i64 } @"uring::wait_cqe"(ptr %var.load109)
  %prop.is_pos = extractvalue { i1, i64 } %call.res110, 0
  br i1 %prop.is_pos, label %prop.pos.37, label %prop.ret.37

prop.pos.37:                                      ; preds = %choice.exit106
  %prop.pay.pos = extractvalue { i1, i64 } %call.res110, 1
  %pay.ptr = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.cqe, align 8
  %var.load111 = load ptr, ptr %var.cqe, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load111, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.idx, align 8
  %var.load112 = load i64, ptr %var.idx, align 8
  %cmptmp113 = icmp sge i64 %var.load112, 0
  br i1 %cmptmp113, label %and.38.then, label %and.38.else

prop.ret.37:                                      ; preds = %choice.exit106
  ret { i1, i64 } %call.res110

and.38.then:                                      ; preds = %prop.pos.37
  %var.load114 = load i64, ptr %var.idx, align 8
  %var.load115 = load i64, ptr %var.n, align 8
  %cmptmp116 = icmp slt i64 %var.load114, %var.load115
  br label %and.38.exit

and.38.else:                                      ; preds = %prop.pos.37
  br label %and.38.exit

and.38.exit:                                      ; preds = %and.38.else, %and.38.then
  %and.38.phi = phi i1 [ %cmptmp116, %and.38.then ], [ %cmptmp113, %and.38.else ]
  br i1 %and.38.phi, label %choice.then117, label %choice.exit118

choice.then117:                                   ; preds = %and.38.exit
  %var.load119 = load ptr, ptr %var.cqe, align 8
  %fld.gep120 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load119, i32 0, i32 1
  %fld.load121 = load i64, ptr %fld.gep120, align 8
  %cmptmp122 = icmp sgt i64 %fld.load121, 0
  br i1 %cmptmp122, label %choice.then123, label %choice.else

choice.exit118:                                   ; preds = %choice.exit124, %and.38.exit
  br label %loop.latch.36

choice.then123:                                   ; preds = %choice.then117
  %var.load125 = load ptr, ptr %var.cqe, align 8
  %fld.gep126 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load125, i32 0, i32 1
  %fld.load127 = load i64, ptr %fld.gep126, align 8
  store i64 %fld.load127, ptr %var.nb, align 8
  %var.load128 = load i64, ptr %var.nb, align 8
  %addtmp129 = add i64 %var.load128, 1
  %arena.cur130 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new131 = call ptr @dva_arena_alloc(ptr %arena.cur130, i64 24)
  %cap.neg132 = icmp slt i64 %addtmp129, 0
  %cap.safe133 = select i1 %cap.neg132, i64 0, i64 %addtmp129
  %b.data.gep134 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new131, i32 0, i32 1
  %b.len.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new131, i32 0, i32 0
  %b.cap.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new131, i32 0, i32 2
  %b.buf.len137 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe133, i64 1)
  %sum138 = extractvalue { i64, i1 } %b.buf.len137, 0
  %ovf139 = extractvalue { i64, i1 } %b.buf.len137, 1
  br i1 %ovf139, label %str_overflow_abort141, label %b.buf.len140

choice.else:                                      ; preds = %choice.then117
  %var.load445 = load i64, ptr %"var.active'", align 8
  %subtmp = sub i64 %var.load445, 1
  store i64 %subtmp, ptr %"var.active'", align 8
  br label %choice.exit124

choice.exit124:                                   ; preds = %choice.else, %unwrap.pos.40
  br label %choice.exit118

b.buf.len140:                                     ; preds = %abort.dead142, %choice.then123
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 %sum138)
  %b.nul0145 = getelementptr i8, ptr %b.buf144, i64 0
  store i8 0, ptr %b.nul0145, align 1
  store i64 0, ptr %b.len.gep135, align 8
  store ptr %b.buf144, ptr %b.data.gep134, align 8
  store i64 %cap.safe133, ptr %b.cap.gep136, align 8
  store ptr %builder.new131, ptr %var.b, align 8
  %var.load146 = load ptr, ptr %var.b, align 8
  %b.ptr147 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load146, i32 0, i32 1
  %b.ptr148 = load ptr, ptr %b.ptr147, align 8
  %var.load149 = load ptr, ptr %var.scratch, align 8
  %b.ptr150 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load149, i32 0, i32 1
  %b.ptr151 = load ptr, ptr %b.ptr150, align 8
  %var.load152 = load i64, ptr %var.idx, align 8
  %multmp153 = mul i64 %var.load152, 4096
  %ptr.int.l154 = ptrtoint ptr %b.ptr151 to i64
  %addtmp155 = add i64 %ptr.int.l154, %multmp153
  %ptr.res156 = inttoptr i64 %addtmp155 to ptr
  %var.load157 = load i64, ptr %var.nb, align 8
  %raw.int = ptrtoint ptr %b.ptr148 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %addr.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

str_overflow_abort141:                            ; preds = %choice.then123
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead142:                                    ; No predecessors!
  br label %b.buf.len140

addr_ok:                                          ; preds = %tag.slow_check, %b.buf.len140
  %raw.int158 = ptrtoint ptr %ptr.res156 to i64
  %raw.clean.int159 = and i64 %raw.int158, 281474976710655
  %raw.clean.ptr160 = inttoptr i64 %raw.clean.int159 to ptr
  %addr.tag161 = lshr i64 %raw.int158, 48
  %tag.immortal163 = icmp eq i64 %addr.tag161, 0
  %active.gen164 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current165 = icmp eq i64 %addr.tag161, %active.gen164
  %tag.fast.ok166 = or i1 %tag.immortal163, %tag.current165
  br i1 %tag.fast.ok166, label %addr_ok162, label %tag.slow_check167

tag.slow_check:                                   ; preds = %b.buf.len140
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag)
  br label %addr_ok

addr_ok162:                                       ; preds = %tag.slow_check167, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr160, i64 %var.load157, i1 false)
  %var.load168 = load ptr, ptr %var.b, align 8
  %b.ptr169 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load168, i32 0, i32 1
  %b.ptr170 = load ptr, ptr %b.ptr169, align 8
  %var.load171 = load i64, ptr %var.nb, align 8
  %ptr.int.l172 = ptrtoint ptr %b.ptr170 to i64
  %addtmp173 = add i64 %ptr.int.l172, %var.load171
  %ptr.res174 = inttoptr i64 %addtmp173 to ptr
  %raw.int175 = ptrtoint ptr %ptr.res174 to i64
  %raw.clean.int176 = and i64 %raw.int175, 281474976710655
  %raw.clean.ptr177 = inttoptr i64 %raw.clean.int176 to ptr
  %addr.tag178 = lshr i64 %raw.int175, 48
  %tag.immortal180 = icmp eq i64 %addr.tag178, 0
  %active.gen181 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current182 = icmp eq i64 %addr.tag178, %active.gen181
  %tag.fast.ok183 = or i1 %tag.immortal180, %tag.current182
  br i1 %tag.fast.ok183, label %addr_ok179, label %tag.slow_check184

tag.slow_check167:                                ; preds = %addr_ok
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag161)
  br label %addr_ok162

addr_ok179:                                       ; preds = %tag.slow_check184, %addr_ok162
  store i8 0, ptr %raw.clean.ptr177, align 1
  %var.load185 = load i64, ptr %var.nb, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap186 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load185, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

tag.slow_check184:                                ; preds = %addr_ok162
  call void @dva_validate_tag_or_abort_stale_addr_msg(i64 %addr.tag178)
  br label %addr_ok179

b.len_big_check:                                  ; preds = %addr_ok179
  %b.len.big = icmp sgt i64 %var.load185, %b.cap186
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead187, %b.len_big_check
  %b.len.gep188 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load185, ptr %b.len.gep188, align 8
  %var.load189 = load ptr, ptr %"var.outs'", align 8
  %a.load190 = load ptr, ptr %"var.outs'", align 8
  %a.null191 = icmp eq ptr %a.load190, null
  br i1 %a.null191, label %a.create192, label %a.after193

b.len_oob:                                        ; preds = %b.len_big_check, %addr_ok179
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead187:                                    ; No predecessors!
  br label %b.len_ok

a.create192:                                      ; preds = %b.len_ok
  %arena.cur194 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create195 = call ptr @dva_arena_alloc(ptr %arena.cur194, i64 24)
  %arena.cur196 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf197 = call ptr @dva_arena_alloc(ptr %arena.cur196, i64 128)
  %a.len.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create195, i32 0, i32 0
  store i64 0, ptr %a.len.gep198, align 8
  %a.data.gep199 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create195, i32 0, i32 1
  store ptr %a.buf197, ptr %a.data.gep199, align 8
  %a.cap.gep200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create195, i32 0, i32 2
  store i64 16, ptr %a.cap.gep200, align 8
  store ptr %a.create195, ptr %"var.outs'", align 8
  br label %a.after193

a.after193:                                       ; preds = %a.create192, %b.len_ok
  %a.load2201 = load ptr, ptr %"var.outs'", align 8
  %var.load202 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull203 = icmp ne ptr %a.load2201, null
  br i1 %a.rd.nonnull203, label %a.rd.check204, label %a.rd.err.null206

a.rd.check204:                                    ; preds = %a.after193
  %a.rd.len209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2201, i32 0, i32 0
  %a.rd.len210 = load i64, ptr %a.rd.len209, align 8
  %a.rd.ge0211 = icmp sge i64 %var.load202, 0
  %a.rd.lt212 = icmp slt i64 %var.load202, %a.rd.len210
  %a.rd.bounds213 = and i1 %a.rd.ge0211, %a.rd.lt212
  br i1 %a.rd.bounds213, label %a.rd.ok205, label %a.rd.err.oob207

a.rd.ok205:                                       ; preds = %a.rd.check204
  %a.rd.data214 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2201, i32 0, i32 1
  %a.rd.data215 = load ptr, ptr %a.rd.data214, align 8
  %a.rd.elem.gep216 = getelementptr i64, ptr %a.rd.data215, i64 %var.load202
  %a.rd.elem217 = load i64, ptr %a.rd.elem.gep216, align 8
  br label %a.rd.done208

a.rd.err.null206:                                 ; preds = %a.after193
  %arena.cur218 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 56)
  %err.code.gep220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 0
  store i64 4011, ptr %err.code.gep220, align 8
  %err.msg.gep221 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep221, align 8
  %err.file.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep222, align 8
  %err.line.gep223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 3
  store i64 393, ptr %err.line.gep223, align 8
  %err.col.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 4
  store i64 39, ptr %err.col.gep224, align 8
  %err.ctx.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc219, i32 0, i32 5
  %err.ctx0.gep226 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep225, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep226, align 8
  %err.ctx1.gep227 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep225, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep227, align 8
  %err.p2i228 = ptrtoint ptr %err.alloc219 to i64
  br label %a.rd.done208

a.rd.err.oob207:                                  ; preds = %a.rd.check204
  %arena.cur229 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc230 = call ptr @dva_arena_alloc(ptr %arena.cur229, i64 56)
  %err.code.gep231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc230, i32 0, i32 0
  store i64 4011, ptr %err.code.gep231, align 8
  %err.msg.gep232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc230, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep232, align 8
  %err.file.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc230, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep233, align 8
  %err.line.gep234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc230, i32 0, i32 3
  store i64 393, ptr %err.line.gep234, align 8
  %err.col.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc230, i32 0, i32 4
  store i64 39, ptr %err.col.gep235, align 8
  %err.ctx.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc230, i32 0, i32 5
  %err.ctx0.gep237 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep236, i32 0, i32 0
  store i64 %var.load202, ptr %err.ctx0.gep237, align 8
  %err.ctx1.gep238 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep236, i32 0, i32 1
  store i64 %a.rd.len210, ptr %err.ctx1.gep238, align 8
  %err.p2i239 = ptrtoint ptr %err.alloc230 to i64
  br label %a.rd.done208

a.rd.done208:                                     ; preds = %a.rd.err.oob207, %a.rd.err.null206, %a.rd.ok205
  %a.rd.tag240 = phi i1 [ true, %a.rd.ok205 ], [ false, %a.rd.err.null206 ], [ false, %a.rd.err.oob207 ]
  %a.rd.pay241 = phi i64 [ %a.rd.elem217, %a.rd.ok205 ], [ %err.p2i228, %a.rd.err.null206 ], [ %err.p2i239, %a.rd.err.oob207 ]
  %ram.tag242 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag240, 0
  %ram.pay243 = insertvalue { i1, i64 } %ram.tag242, i64 %a.rd.pay241, 1
  %unwrap.is_pos244 = extractvalue { i1, i64 } %ram.pay243, 0
  br i1 %unwrap.is_pos244, label %unwrap.pos.39, label %unwrap.abort.39

unwrap.pos.39:                                    ; preds = %a.rd.done208
  %unwrap.pay.pos276 = extractvalue { i1, i64 } %ram.pay243, 1
  %pay.ptr277 = inttoptr i64 %unwrap.pay.pos276 to ptr
  store ptr %pay.ptr277, ptr %var.prev, align 8
  %var.load278 = load ptr, ptr %"var.outs'", align 8
  %a.load279 = load ptr, ptr %"var.outs'", align 8
  %a.null280 = icmp eq ptr %a.load279, null
  br i1 %a.null280, label %a.create281, label %a.after282

unwrap.abort.39:                                  ; preds = %a.rd.done208
  %unwrap.pay.abort245 = extractvalue { i1, i64 } %ram.pay243, 1
  %err.ptr246 = inttoptr i64 %unwrap.pay.abort245 to ptr
  %err.code.gep247 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr246, i32 0, i32 0
  %err.code248 = load i64, ptr %err.code.gep247, align 8
  %err.msg.gep249 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr246, i32 0, i32 1
  %err.msg.struct250 = load ptr, ptr %err.msg.gep249, align 8
  %err.file.gep251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr246, i32 0, i32 2
  %err.file.struct252 = load ptr, ptr %err.file.gep251, align 8
  %err.line.gep253 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr246, i32 0, i32 3
  %err.line254 = load i64, ptr %err.line.gep253, align 8
  %err.col.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr246, i32 0, i32 4
  %err.col256 = load i64, ptr %err.col.gep255, align 8
  %err.msg.len257 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct250, i32 0, i32 0
  %err.msg.len258 = load i64, ptr %err.msg.len257, align 8
  %err.msg.len259 = and i64 %err.msg.len258, 281474976710655
  %err.msg.len32260 = trunc i64 %err.msg.len259 to i32
  %err.msg.data261 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct250, i32 0, i32 1
  %err.msg.data262 = load ptr, ptr %err.msg.data261, align 8
  %err.file.len263 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct252, i32 0, i32 0
  %err.file.len264 = load i64, ptr %err.file.len263, align 8
  %err.file.len265 = and i64 %err.file.len264, 281474976710655
  %err.file.len32266 = trunc i64 %err.file.len265 to i32
  %err.file.data267 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct252, i32 0, i32 1
  %err.file.data268 = load ptr, ptr %err.file.data267, align 8
  %err.thread.rec269 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread270 = icmp ne ptr %err.thread.rec269, null
  br i1 %err.is.thread270, label %err.thread271, label %err.normal272

err.thread271:                                    ; preds = %unwrap.abort.39
  %err.haserr.gep273 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec269, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep273, align 8
  %err.err.gep274 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec269, i32 0, i32 7
  store ptr %err.ptr246, ptr %err.err.gep274, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal272:                                    ; preds = %unwrap.abort.39
  %err.panic.printf275 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code248, i32 %err.msg.len32260, ptr %err.msg.data262, i32 %err.file.len32266, ptr %err.file.data268, i64 %err.line254, i64 %err.col256)
  call void @exit(i32 1)
  unreachable

a.create281:                                      ; preds = %unwrap.pos.39
  %arena.cur283 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create284 = call ptr @dva_arena_alloc(ptr %arena.cur283, i64 24)
  %arena.cur285 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf286 = call ptr @dva_arena_alloc(ptr %arena.cur285, i64 128)
  %a.len.gep287 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create284, i32 0, i32 0
  store i64 0, ptr %a.len.gep287, align 8
  %a.data.gep288 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create284, i32 0, i32 1
  store ptr %a.buf286, ptr %a.data.gep288, align 8
  %a.cap.gep289 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create284, i32 0, i32 2
  store i64 16, ptr %a.cap.gep289, align 8
  store ptr %a.create284, ptr %"var.outs'", align 8
  br label %a.after282

a.after282:                                       ; preds = %a.create281, %unwrap.pos.39
  %a.load2290 = load ptr, ptr %"var.outs'", align 8
  %var.load291 = load i64, ptr %var.idx, align 8
  %var.load292 = load ptr, ptr %var.prev, align 8
  %var.load293 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 0
  %b.freeze.len294 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 1
  %b.freeze.data295 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after282
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data295, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data295, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data295, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len294, 1
  %arena.cur296 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur296, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data295, i64 %b.freeze.len294, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len294
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after282
  %b.freeze.data297 = phi ptr [ %b.freeze.data295, %a.after282 ], [ %b.freeze.data295, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur298 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur298, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len294, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data297, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load293, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load292, i32 0, i32 0
  %concat.lhs299 = load i64, ptr %concat.lhs, align 8
  %concat.lhs300 = and i64 %concat.lhs299, 281474976710655
  %concat.lhs301 = getelementptr inbounds { i64, ptr }, ptr %var.load292, i32 0, i32 1
  %concat.lhs302 = load ptr, ptr %concat.lhs301, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %concat.rhs303 = load i64, ptr %concat.rhs, align 8
  %concat.rhs304 = and i64 %concat.rhs303, 281474976710655
  %concat.rhs305 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %concat.rhs306 = load ptr, ptr %concat.rhs305, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs300, i64 %concat.rhs304)
  %sum307 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf308 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf308, label %str_overflow_abort310, label %concat.sum.len309

concat.sum.len309:                                ; preds = %abort.dead311, %b.freeze.done
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum307, i64 1)
  %sum312 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf313 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf313, label %str_overflow_abort315, label %concat.tot.len314

str_overflow_abort310:                            ; preds = %b.freeze.done
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead311:                                    ; No predecessors!
  br label %concat.sum.len309

concat.tot.len314:                                ; preds = %abort.dead316, %concat.sum.len309
  %arena.cur317 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur317, i64 %sum312)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs302, i64 %concat.lhs300, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs300
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs306, i64 %concat.rhs304, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum307
  store i8 0, ptr %concat.nul, align 1
  %arena.cur318 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 16)
  %str.build.len.gep319 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum307, ptr %str.build.len.gep319, align 8
  %str.build.data.gep320 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep320, align 8
  %slot.p2i = ptrtoint ptr %concat.str to i64
  %a.wr.nonnull = icmp ne ptr %a.load2290, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

str_overflow_abort315:                            ; preds = %concat.sum.len309
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead316:                                    ; No predecessors!
  br label %concat.tot.len314

a.wr.check:                                       ; preds = %concat.tot.len314
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2290, i32 0, i32 0
  %a.wr.len321 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load291, 0
  %a.wr.lt = icmp slt i64 %var.load291, %a.wr.len321
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2290, i32 0, i32 1
  %a.wr.data322 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep323 = getelementptr i64, ptr %a.wr.data322, i64 %var.load291
  store i64 %slot.p2i, ptr %a.elem.gep323, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %concat.tot.len314
  %arena.cur324 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc325 = call ptr @dva_arena_alloc(ptr %arena.cur324, i64 56)
  %err.code.gep326 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc325, i32 0, i32 0
  store i64 4011, ptr %err.code.gep326, align 8
  %err.msg.gep327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc325, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep327, align 8
  %err.file.gep328 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc325, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep328, align 8
  %err.line.gep329 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc325, i32 0, i32 3
  store i64 0, ptr %err.line.gep329, align 8
  %err.col.gep330 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc325, i32 0, i32 4
  store i64 0, ptr %err.col.gep330, align 8
  %err.ctx.gep331 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc325, i32 0, i32 5
  %err.ctx0.gep332 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep331, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep332, align 8
  %err.ctx1.gep333 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep331, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep333, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur334 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc335 = call ptr @dva_arena_alloc(ptr %arena.cur334, i64 56)
  %err.code.gep336 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 0
  store i64 4011, ptr %err.code.gep336, align 8
  %err.msg.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep337, align 8
  %err.file.gep338 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep338, align 8
  %err.line.gep339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 3
  store i64 0, ptr %err.line.gep339, align 8
  %err.col.gep340 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 4
  store i64 0, ptr %err.col.gep340, align 8
  %err.ctx.gep341 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 5
  %err.ctx0.gep342 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep341, i32 0, i32 0
  store i64 %var.load291, ptr %err.ctx0.gep342, align 8
  %err.ctx1.gep343 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep341, i32 0, i32 1
  store i64 %a.wr.len321, ptr %err.ctx1.gep343, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc325, %a.wr.err.null ], [ %err.alloc335, %a.wr.err.oob ]
  %var.load344 = load ptr, ptr %var.fds, align 8
  %a.load345 = load ptr, ptr %var.fds, align 8
  %a.null346 = icmp eq ptr %a.load345, null
  br i1 %a.null346, label %a.create347, label %a.after348

a.create347:                                      ; preds = %a.wr.done
  %arena.cur349 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create350 = call ptr @dva_arena_alloc(ptr %arena.cur349, i64 24)
  %arena.cur351 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 128)
  %a.len.gep353 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create350, i32 0, i32 0
  store i64 0, ptr %a.len.gep353, align 8
  %a.data.gep354 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create350, i32 0, i32 1
  store ptr %a.buf352, ptr %a.data.gep354, align 8
  %a.cap.gep355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create350, i32 0, i32 2
  store i64 16, ptr %a.cap.gep355, align 8
  store ptr %a.create350, ptr %var.fds, align 8
  br label %a.after348

a.after348:                                       ; preds = %a.create347, %a.wr.done
  %a.load2356 = load ptr, ptr %var.fds, align 8
  %var.load357 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull358 = icmp ne ptr %a.load2356, null
  br i1 %a.rd.nonnull358, label %a.rd.check359, label %a.rd.err.null361

a.rd.check359:                                    ; preds = %a.after348
  %a.rd.len364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2356, i32 0, i32 0
  %a.rd.len365 = load i64, ptr %a.rd.len364, align 8
  %a.rd.ge0366 = icmp sge i64 %var.load357, 0
  %a.rd.lt367 = icmp slt i64 %var.load357, %a.rd.len365
  %a.rd.bounds368 = and i1 %a.rd.ge0366, %a.rd.lt367
  br i1 %a.rd.bounds368, label %a.rd.ok360, label %a.rd.err.oob362

a.rd.ok360:                                       ; preds = %a.rd.check359
  %a.rd.data369 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2356, i32 0, i32 1
  %a.rd.data370 = load ptr, ptr %a.rd.data369, align 8
  %a.rd.elem.gep371 = getelementptr i64, ptr %a.rd.data370, i64 %var.load357
  %a.rd.elem372 = load i64, ptr %a.rd.elem.gep371, align 8
  br label %a.rd.done363

a.rd.err.null361:                                 ; preds = %a.after348
  %arena.cur373 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc374 = call ptr @dva_arena_alloc(ptr %arena.cur373, i64 56)
  %err.code.gep375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc374, i32 0, i32 0
  store i64 4011, ptr %err.code.gep375, align 8
  %err.msg.gep376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc374, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep376, align 8
  %err.file.gep377 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc374, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep377, align 8
  %err.line.gep378 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc374, i32 0, i32 3
  store i64 395, ptr %err.line.gep378, align 8
  %err.col.gep379 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc374, i32 0, i32 4
  store i64 35, ptr %err.col.gep379, align 8
  %err.ctx.gep380 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc374, i32 0, i32 5
  %err.ctx0.gep381 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep380, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep381, align 8
  %err.ctx1.gep382 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep380, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep382, align 8
  %err.p2i383 = ptrtoint ptr %err.alloc374 to i64
  br label %a.rd.done363

a.rd.err.oob362:                                  ; preds = %a.rd.check359
  %arena.cur384 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc385 = call ptr @dva_arena_alloc(ptr %arena.cur384, i64 56)
  %err.code.gep386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 0
  store i64 4011, ptr %err.code.gep386, align 8
  %err.msg.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep387, align 8
  %err.file.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep388, align 8
  %err.line.gep389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 3
  store i64 395, ptr %err.line.gep389, align 8
  %err.col.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 4
  store i64 35, ptr %err.col.gep390, align 8
  %err.ctx.gep391 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc385, i32 0, i32 5
  %err.ctx0.gep392 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep391, i32 0, i32 0
  store i64 %var.load357, ptr %err.ctx0.gep392, align 8
  %err.ctx1.gep393 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep391, i32 0, i32 1
  store i64 %a.rd.len365, ptr %err.ctx1.gep393, align 8
  %err.p2i394 = ptrtoint ptr %err.alloc385 to i64
  br label %a.rd.done363

a.rd.done363:                                     ; preds = %a.rd.err.oob362, %a.rd.err.null361, %a.rd.ok360
  %a.rd.tag395 = phi i1 [ true, %a.rd.ok360 ], [ false, %a.rd.err.null361 ], [ false, %a.rd.err.oob362 ]
  %a.rd.pay396 = phi i64 [ %a.rd.elem372, %a.rd.ok360 ], [ %err.p2i383, %a.rd.err.null361 ], [ %err.p2i394, %a.rd.err.oob362 ]
  %ram.tag397 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag395, 0
  %ram.pay398 = insertvalue { i1, i64 } %ram.tag397, i64 %a.rd.pay396, 1
  %unwrap.is_pos399 = extractvalue { i1, i64 } %ram.pay398, 0
  br i1 %unwrap.is_pos399, label %unwrap.pos.40, label %unwrap.abort.40

unwrap.pos.40:                                    ; preds = %a.rd.done363
  %unwrap.pay.pos431 = extractvalue { i1, i64 } %ram.pay398, 1
  store i64 %unwrap.pay.pos431, ptr %var.fd432, align 8
  %var.load433 = load ptr, ptr %var.ring, align 8
  %var.load434 = load i64, ptr %var.fd432, align 8
  %var.load435 = load ptr, ptr %var.scratch, align 8
  %b.ptr436 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load435, i32 0, i32 1
  %b.ptr437 = load ptr, ptr %b.ptr436, align 8
  %var.load438 = load i64, ptr %var.idx, align 8
  %multmp439 = mul i64 %var.load438, 4096
  %ptr.int.l440 = ptrtoint ptr %b.ptr437 to i64
  %addtmp441 = add i64 %ptr.int.l440, %multmp439
  %ptr.res442 = inttoptr i64 %addtmp441 to ptr
  %var.load443 = load i64, ptr %var.idx, align 8
  %call.res444 = call i1 @"uring::prep_pipe_read"(ptr %var.load433, i64 %var.load434, ptr %ptr.res442, i64 4096, i64 %var.load443)
  br label %choice.exit124

unwrap.abort.40:                                  ; preds = %a.rd.done363
  %unwrap.pay.abort400 = extractvalue { i1, i64 } %ram.pay398, 1
  %err.ptr401 = inttoptr i64 %unwrap.pay.abort400 to ptr
  %err.code.gep402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr401, i32 0, i32 0
  %err.code403 = load i64, ptr %err.code.gep402, align 8
  %err.msg.gep404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr401, i32 0, i32 1
  %err.msg.struct405 = load ptr, ptr %err.msg.gep404, align 8
  %err.file.gep406 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr401, i32 0, i32 2
  %err.file.struct407 = load ptr, ptr %err.file.gep406, align 8
  %err.line.gep408 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr401, i32 0, i32 3
  %err.line409 = load i64, ptr %err.line.gep408, align 8
  %err.col.gep410 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr401, i32 0, i32 4
  %err.col411 = load i64, ptr %err.col.gep410, align 8
  %err.msg.len412 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct405, i32 0, i32 0
  %err.msg.len413 = load i64, ptr %err.msg.len412, align 8
  %err.msg.len414 = and i64 %err.msg.len413, 281474976710655
  %err.msg.len32415 = trunc i64 %err.msg.len414 to i32
  %err.msg.data416 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct405, i32 0, i32 1
  %err.msg.data417 = load ptr, ptr %err.msg.data416, align 8
  %err.file.len418 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct407, i32 0, i32 0
  %err.file.len419 = load i64, ptr %err.file.len418, align 8
  %err.file.len420 = and i64 %err.file.len419, 281474976710655
  %err.file.len32421 = trunc i64 %err.file.len420 to i32
  %err.file.data422 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct407, i32 0, i32 1
  %err.file.data423 = load ptr, ptr %err.file.data422, align 8
  %err.thread.rec424 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread425 = icmp ne ptr %err.thread.rec424, null
  br i1 %err.is.thread425, label %err.thread426, label %err.normal427

err.thread426:                                    ; preds = %unwrap.abort.40
  %err.haserr.gep428 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec424, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep428, align 8
  %err.err.gep429 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec424, i32 0, i32 7
  store ptr %err.ptr401, ptr %err.err.gep429, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal427:                                    ; preds = %unwrap.abort.40
  %err.panic.printf430 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code403, i32 %err.msg.len32415, ptr %err.msg.data417, i32 %err.file.len32421, ptr %err.file.data423, i64 %err.line409, i64 %err.col411)
  call void @exit(i32 1)
  unreachable

a.create451:                                      ; preds = %loop.exit.36
  %arena.cur453 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create454 = call ptr @dva_arena_alloc(ptr %arena.cur453, i64 24)
  %arena.cur455 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf456 = call ptr @dva_arena_alloc(ptr %arena.cur455, i64 128)
  %a.len.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 0
  store i64 0, ptr %a.len.gep457, align 8
  %a.data.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 1
  store ptr %a.buf456, ptr %a.data.gep458, align 8
  %a.cap.gep459 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create454, i32 0, i32 2
  store i64 16, ptr %a.cap.gep459, align 8
  store ptr %a.create454, ptr %"var.outs'", align 8
  br label %a.after452

a.after452:                                       ; preds = %a.create451, %loop.exit.36
  %a.load2460 = load ptr, ptr %"var.outs'", align 8
  %p.to.i64461 = ptrtoint ptr %a.load2460 to i64
  %ram.pay462 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64461, 1
  ret { i1, i64 } %ram.pay462
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #6 {
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_builder_len_oob_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

define void @"uring::close"(ptr %0) #0 {
entry:
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %fld.gep = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load1 = load ptr, ptr %var.ring, align 8
  %fld.gep2 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load i64, ptr %fld.gep2, align 8
  %call.res = call i64 @munmap(ptr %addr.ffi.clean, i64 %fld.load3)
  %var.load4 = load ptr, ptr %var.ring, align 8
  %fld.gep5 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load4, i32 0, i32 3
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %addr.ffi.int7 = ptrtoint ptr %fld.load6 to i64
  %addr.ffi.masked8 = and i64 %addr.ffi.int7, 281474976710655
  %addr.ffi.clean9 = inttoptr i64 %addr.ffi.masked8 to ptr
  %var.load10 = load ptr, ptr %var.ring, align 8
  %fld.gep11 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load10, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %call.res13 = call i64 @munmap(ptr %addr.ffi.clean9, i64 %fld.load12)
  %var.load14 = load ptr, ptr %var.ring, align 8
  %fld.gep15 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load14, i32 0, i32 5
  %fld.load16 = load ptr, ptr %fld.gep15, align 8
  %addr.ffi.int17 = ptrtoint ptr %fld.load16 to i64
  %addr.ffi.masked18 = and i64 %addr.ffi.int17, 281474976710655
  %addr.ffi.clean19 = inttoptr i64 %addr.ffi.masked18 to ptr
  %var.load20 = load ptr, ptr %var.ring, align 8
  %fld.gep21 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load20, i32 0, i32 6
  %fld.load22 = load i64, ptr %fld.gep21, align 8
  %call.res23 = call i64 @munmap(ptr %addr.ffi.clean19, i64 %fld.load22)
  %var.load24 = load ptr, ptr %var.ring, align 8
  %fld.gep25 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load24, i32 0, i32 0
  %fld.load26 = load i64, ptr %fld.gep25, align 8
  %coerce.trunc = trunc i64 %fld.load26 to i32
  %call.res27 = call i32 @close(i32 %coerce.trunc)
  ret void
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline "nounwind" }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
