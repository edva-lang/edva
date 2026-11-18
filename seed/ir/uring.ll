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

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then65:                                    ; preds = %choice.exit
  %var.load67 = load i64, ptr %var.fd, align 8
  %coerce.trunc68 = trunc i64 %var.load67 to i32
  %call.res69 = call i32 @close(i32 %coerce.trunc68)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.1.struct to i64) }

choice.exit66:                                    ; preds = %ret.dead70, %choice.exit
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
  %raw.load16 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load16, ptr %var.tail, align 4
  %var.load17 = load i32, ptr %var.tail, align 4
  %var.load18 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load17, %var.load18
  %coerce.zext = zext i32 %subtmp to i64
  store i64 %coerce.zext, ptr %var.used, align 8
  %var.load19 = load i64, ptr %var.used, align 8
  %var.load20 = load ptr, ptr %var.ring, align 8
  %fld.gep21 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load20, i32 0, i32 15
  %fld.load22 = load i64, ptr %fld.gep21, align 8
  %cmptmp = icmp sge i64 %var.load19, %fld.load22
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load23 = load ptr, ptr %var.ring, align 8
  %fld.gep24 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %var.load26 = load ptr, ptr %var.ring, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load26, i32 0, i32 9
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %ptr.int.l29 = ptrtoint ptr %fld.load25 to i64
  %addtmp30 = add i64 %ptr.int.l29, %fld.load28
  %ptr.res31 = inttoptr i64 %addtmp30 to ptr
  %raw.int32 = ptrtoint ptr %ptr.res31 to i64
  %raw.clean.int33 = and i64 %raw.int32, 281474976710655
  %raw.clean.ptr34 = inttoptr i64 %raw.clean.int33 to ptr
  %raw.load35 = load volatile i32, ptr %raw.clean.ptr34, align 4
  store i32 %raw.load35, ptr %var.mask, align 4
  %var.load36 = load i32, ptr %var.tail, align 4
  %var.load37 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load36, %var.load37
  %coerce.zext38 = zext i32 %bandtmp to i64
  store i64 %coerce.zext38, ptr %var.idx, align 8
  %var.load39 = load ptr, ptr %var.ring, align 8
  %fld.gep40 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load39, i32 0, i32 3
  %fld.load41 = load ptr, ptr %fld.gep40, align 8
  %var.load42 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load42, 64
  %ptr.int.l43 = ptrtoint ptr %fld.load41 to i64
  %addtmp44 = add i64 %ptr.int.l43, %multmp
  %ptr.res45 = inttoptr i64 %addtmp44 to ptr
  store ptr %ptr.res45, ptr %var.sqe_dest, align 8
  %var.load46 = load i64, ptr %var.op, align 8
  %var.load47 = load i64, ptr @"var.uring::OP_ASYNC_CANCEL", align 8
  %cmptmp48 = icmp eq i64 %var.load46, %var.load47
  br i1 %cmptmp48, label %choice.then49, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then49:                                    ; preds = %choice.exit
  %var.load51 = load ptr, ptr %var.addr, align 8
  br label %choice.exit50

choice.else:                                      ; preds = %choice.exit
  %var.load52 = load ptr, ptr %var.addr, align 8
  %ptrmask = call ptr @llvm.ptrmask.p0.i64(ptr %var.load52, i64 281474976710655)
  br label %choice.exit50

choice.exit50:                                    ; preds = %choice.else, %choice.then49
  %choice.res = phi ptr [ %var.load51, %choice.then49 ], [ %ptrmask, %choice.else ]
  store ptr %choice.res, ptr %var.target_addr, align 8
  %var.load53 = load ptr, ptr %var.sqe_dest, align 8
  %raw.int54 = ptrtoint ptr %var.load53 to i64
  %raw.clean.int55 = and i64 %raw.int54, 281474976710655
  %raw.clean.ptr56 = inttoptr i64 %raw.clean.int55 to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr56, i8 0, i64 64, i1 false)
  %var.load57 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l58 = ptrtoint ptr %var.load57 to i64
  %addtmp59 = add i64 %ptr.int.l58, 0
  %ptr.res60 = inttoptr i64 %addtmp59 to ptr
  %var.load61 = load i64, ptr %var.op, align 8
  %coerce.trunc = trunc i64 %var.load61 to i8
  %raw.int62 = ptrtoint ptr %ptr.res60 to i64
  %raw.clean.int63 = and i64 %raw.int62, 281474976710655
  %raw.clean.ptr64 = inttoptr i64 %raw.clean.int63 to ptr
  store i8 %coerce.trunc, ptr %raw.clean.ptr64, align 1
  %var.load65 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l66 = ptrtoint ptr %var.load65 to i64
  %addtmp67 = add i64 %ptr.int.l66, 4
  %ptr.res68 = inttoptr i64 %addtmp67 to ptr
  %var.load69 = load i64, ptr %var.fd, align 8
  %coerce.trunc70 = trunc i64 %var.load69 to i32
  %raw.int71 = ptrtoint ptr %ptr.res68 to i64
  %raw.clean.int72 = and i64 %raw.int71, 281474976710655
  %raw.clean.ptr73 = inttoptr i64 %raw.clean.int72 to ptr
  store i32 %coerce.trunc70, ptr %raw.clean.ptr73, align 4
  %var.load74 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l75 = ptrtoint ptr %var.load74 to i64
  %addtmp76 = add i64 %ptr.int.l75, 8
  %ptr.res77 = inttoptr i64 %addtmp76 to ptr
  %var.load78 = load i64, ptr %var.off, align 8
  %raw.int79 = ptrtoint ptr %ptr.res77 to i64
  %raw.clean.int80 = and i64 %raw.int79, 281474976710655
  %raw.clean.ptr81 = inttoptr i64 %raw.clean.int80 to ptr
  store i64 %var.load78, ptr %raw.clean.ptr81, align 8
  %var.load82 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l83 = ptrtoint ptr %var.load82 to i64
  %addtmp84 = add i64 %ptr.int.l83, 16
  %ptr.res85 = inttoptr i64 %addtmp84 to ptr
  %var.load86 = load ptr, ptr %var.target_addr, align 8
  %raw.int87 = ptrtoint ptr %ptr.res85 to i64
  %raw.clean.int88 = and i64 %raw.int87, 281474976710655
  %raw.clean.ptr89 = inttoptr i64 %raw.clean.int88 to ptr
  store ptr %var.load86, ptr %raw.clean.ptr89, align 8
  %var.load90 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l91 = ptrtoint ptr %var.load90 to i64
  %addtmp92 = add i64 %ptr.int.l91, 24
  %ptr.res93 = inttoptr i64 %addtmp92 to ptr
  %var.load94 = load i64, ptr %var.len, align 8
  %coerce.trunc95 = trunc i64 %var.load94 to i32
  %raw.int96 = ptrtoint ptr %ptr.res93 to i64
  %raw.clean.int97 = and i64 %raw.int96, 281474976710655
  %raw.clean.ptr98 = inttoptr i64 %raw.clean.int97 to ptr
  store i32 %coerce.trunc95, ptr %raw.clean.ptr98, align 4
  %var.load99 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l100 = ptrtoint ptr %var.load99 to i64
  %addtmp101 = add i64 %ptr.int.l100, 28
  %ptr.res102 = inttoptr i64 %addtmp101 to ptr
  %var.load103 = load i64, ptr %var.op_flags, align 8
  %coerce.trunc104 = trunc i64 %var.load103 to i32
  %raw.int105 = ptrtoint ptr %ptr.res102 to i64
  %raw.clean.int106 = and i64 %raw.int105, 281474976710655
  %raw.clean.ptr107 = inttoptr i64 %raw.clean.int106 to ptr
  store i32 %coerce.trunc104, ptr %raw.clean.ptr107, align 4
  %var.load108 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l109 = ptrtoint ptr %var.load108 to i64
  %addtmp110 = add i64 %ptr.int.l109, 32
  %ptr.res111 = inttoptr i64 %addtmp110 to ptr
  %var.load112 = load i64, ptr %var.user_data, align 8
  %raw.int113 = ptrtoint ptr %ptr.res111 to i64
  %raw.clean.int114 = and i64 %raw.int113, 281474976710655
  %raw.clean.ptr115 = inttoptr i64 %raw.clean.int114 to ptr
  store i64 %var.load112, ptr %raw.clean.ptr115, align 8
  %var.load116 = load ptr, ptr %var.ring, align 8
  %fld.gep117 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load116, i32 0, i32 1
  %fld.load118 = load ptr, ptr %fld.gep117, align 8
  %var.load119 = load ptr, ptr %var.ring, align 8
  %fld.gep120 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load119, i32 0, i32 10
  %fld.load121 = load i64, ptr %fld.gep120, align 8
  %ptr.int.l122 = ptrtoint ptr %fld.load118 to i64
  %addtmp123 = add i64 %ptr.int.l122, %fld.load121
  %ptr.res124 = inttoptr i64 %addtmp123 to ptr
  %var.load125 = load i64, ptr %var.idx, align 8
  %multmp126 = mul i64 %var.load125, 4
  %ptr.int.l127 = ptrtoint ptr %ptr.res124 to i64
  %addtmp128 = add i64 %ptr.int.l127, %multmp126
  %ptr.res129 = inttoptr i64 %addtmp128 to ptr
  %var.load130 = load i64, ptr %var.idx, align 8
  %coerce.trunc131 = trunc i64 %var.load130 to i32
  %raw.int132 = ptrtoint ptr %ptr.res129 to i64
  %raw.clean.int133 = and i64 %raw.int132, 281474976710655
  %raw.clean.ptr134 = inttoptr i64 %raw.clean.int133 to ptr
  store i32 %coerce.trunc131, ptr %raw.clean.ptr134, align 4
  %var.load135 = load ptr, ptr %var.ring, align 8
  %fld.gep136 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load135, i32 0, i32 1
  %fld.load137 = load ptr, ptr %fld.gep136, align 8
  %var.load138 = load ptr, ptr %var.ring, align 8
  %fld.gep139 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load138, i32 0, i32 8
  %fld.load140 = load i64, ptr %fld.gep139, align 8
  %ptr.int.l141 = ptrtoint ptr %fld.load137 to i64
  %addtmp142 = add i64 %ptr.int.l141, %fld.load140
  %ptr.res143 = inttoptr i64 %addtmp142 to ptr
  %var.load144 = load i32, ptr %var.tail, align 4
  %addtmp145 = add i32 %var.load144, 1
  %raw.int146 = ptrtoint ptr %ptr.res143 to i64
  %raw.clean.int147 = and i64 %raw.int146, 281474976710655
  %raw.clean.ptr148 = inttoptr i64 %raw.clean.int147 to ptr
  store i32 %addtmp145, ptr %raw.clean.ptr148, align 4
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

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
  store i64 %multmp, ptr %raw.clean.ptr8, align 8
  %var.load9 = load ptr, ptr %var.ring, align 8
  %var.load10 = load ptr, ptr %var.ts_ptr, align 8
  %var.load11 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_timeout"(ptr %var.load9, ptr %var.load10, i64 0, i64 0, i64 %var.load11)
  ret i1 %call.res
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
  %raw.load16 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load16, ptr %var.tail, align 4
  %var.load17 = load i32, ptr %var.tail, align 4
  %var.load18 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load17, %var.load18
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.used, align 8
  %var.load19 = load ptr, ptr %var.ring, align 8
  %fld.gep20 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load19, i32 0, i32 15
  %fld.load21 = load i64, ptr %fld.gep20, align 8
  %var.load22 = load i64, ptr %var.used, align 8
  %subtmp23 = sub i64 %fld.load21, %var.load22
  ret i64 %subtmp23
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
  %raw.load16 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load16, ptr %var.tail, align 4
  %var.load17 = load i32, ptr %var.tail, align 4
  %var.load18 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load17, %var.load18
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  ret i64 %bandtmp
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
  %raw.load16 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load16, ptr %var.tail, align 4
  %var.load17 = load i32, ptr %var.tail, align 4
  %var.load18 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load17, %var.load18
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.to_submit, align 8
  %var.load19 = load i64, ptr %var.wait_nr, align 8
  %cmptmp = icmp sgt i64 %var.load19, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load20 = load i64, ptr @"var.uring::IORING_ENTER_GETEVENTS", align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load20, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.flags, align 8
  %var.load21 = load i64, ptr @"var.uring::SYS_IO_URING_ENTER", align 8
  %var.load22 = load ptr, ptr %var.ring, align 8
  %fld.gep23 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load22, i32 0, i32 0
  %fld.load24 = load i64, ptr %fld.gep23, align 8
  %cast.int2ptr = inttoptr i64 %fld.load24 to ptr
  %addr.ffi.int = ptrtoint ptr %cast.int2ptr to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load25 = load i64, ptr %var.to_submit, align 8
  %cast.int2ptr26 = inttoptr i64 %var.load25 to ptr
  %addr.ffi.int27 = ptrtoint ptr %cast.int2ptr26 to i64
  %addr.ffi.masked28 = and i64 %addr.ffi.int27, 281474976710655
  %addr.ffi.clean29 = inttoptr i64 %addr.ffi.masked28 to ptr
  %var.load30 = load i64, ptr %var.wait_nr, align 8
  %cast.int2ptr31 = inttoptr i64 %var.load30 to ptr
  %addr.ffi.int32 = ptrtoint ptr %cast.int2ptr31 to i64
  %addr.ffi.masked33 = and i64 %addr.ffi.int32, 281474976710655
  %addr.ffi.clean34 = inttoptr i64 %addr.ffi.masked33 to ptr
  %var.load35 = load i64, ptr %var.flags, align 8
  %cast.int2ptr36 = inttoptr i64 %var.load35 to ptr
  %addr.ffi.int37 = ptrtoint ptr %cast.int2ptr36 to i64
  %addr.ffi.masked38 = and i64 %addr.ffi.int37, 281474976710655
  %addr.ffi.clean39 = inttoptr i64 %addr.ffi.masked38 to ptr
  %var.load40 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int41 = ptrtoint ptr %var.load40 to i64
  %addr.ffi.masked42 = and i64 %addr.ffi.int41, 281474976710655
  %addr.ffi.clean43 = inttoptr i64 %addr.ffi.masked42 to ptr
  %var.load44 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int45 = ptrtoint ptr %var.load44 to i64
  %addr.ffi.masked46 = and i64 %addr.ffi.int45, 281474976710655
  %addr.ffi.clean47 = inttoptr i64 %addr.ffi.masked46 to ptr
  %call.res = call i64 @syscall(i64 %var.load21, ptr %addr.ffi.clean, ptr %addr.ffi.clean29, ptr %addr.ffi.clean34, ptr %addr.ffi.clean39, ptr %addr.ffi.clean43, ptr %addr.ffi.clean47)
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
  %raw.load16 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load16, ptr %var.tail, align 4
  %var.load17 = load i32, ptr %var.head, align 4
  %var.load18 = load i32, ptr %var.tail, align 4
  %coerce.zext = zext i32 %var.load17 to i64
  %coerce.zext19 = zext i32 %var.load18 to i64
  %cmptmp = icmp ne i64 %coerce.zext, %coerce.zext19
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load20 = load ptr, ptr %var.ring, align 8
  %fld.gep21 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load20, i32 0, i32 5
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %var.load23 = load ptr, ptr %var.ring, align 8
  %fld.gep24 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load23, i32 0, i32 13
  %fld.load25 = load i64, ptr %fld.gep24, align 8
  %ptr.int.l26 = ptrtoint ptr %fld.load22 to i64
  %addtmp27 = add i64 %ptr.int.l26, %fld.load25
  %ptr.res28 = inttoptr i64 %addtmp27 to ptr
  %raw.int29 = ptrtoint ptr %ptr.res28 to i64
  %raw.clean.int30 = and i64 %raw.int29, 281474976710655
  %raw.clean.ptr31 = inttoptr i64 %raw.clean.int30 to ptr
  %raw.load32 = load volatile i32, ptr %raw.clean.ptr31, align 4
  store i32 %raw.load32, ptr %var.mask, align 4
  %var.load33 = load i32, ptr %var.head, align 4
  %var.load34 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load33, %var.load34
  %coerce.zext35 = zext i32 %bandtmp to i64
  store i64 %coerce.zext35, ptr %var.idx, align 8
  %var.load36 = load ptr, ptr %var.ring, align 8
  %fld.gep37 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load36, i32 0, i32 5
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  %var.load39 = load ptr, ptr %var.ring, align 8
  %fld.gep40 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load39, i32 0, i32 14
  %fld.load41 = load i64, ptr %fld.gep40, align 8
  %ptr.int.l42 = ptrtoint ptr %fld.load38 to i64
  %addtmp43 = add i64 %ptr.int.l42, %fld.load41
  %ptr.res44 = inttoptr i64 %addtmp43 to ptr
  %var.load45 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load45, 16
  %ptr.int.l46 = ptrtoint ptr %ptr.res44 to i64
  %addtmp47 = add i64 %ptr.int.l46, %multmp
  %ptr.res48 = inttoptr i64 %addtmp47 to ptr
  store ptr %ptr.res48, ptr %var.cqe_ptr, align 8
  %var.load49 = load ptr, ptr %var.cqe_ptr, align 8
  %raw.int50 = ptrtoint ptr %var.load49 to i64
  %raw.clean.int51 = and i64 %raw.int50, 281474976710655
  %raw.clean.ptr52 = inttoptr i64 %raw.clean.int51 to ptr
  %raw.load53 = load volatile i64, ptr %raw.clean.ptr52, align 8
  %var.load54 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l55 = ptrtoint ptr %var.load54 to i64
  %addtmp56 = add i64 %ptr.int.l55, 8
  %ptr.res57 = inttoptr i64 %addtmp56 to ptr
  %raw.int58 = ptrtoint ptr %ptr.res57 to i64
  %raw.clean.int59 = and i64 %raw.int58, 281474976710655
  %raw.clean.ptr60 = inttoptr i64 %raw.clean.int59 to ptr
  %raw.load61 = load volatile i32, ptr %raw.clean.ptr60, align 4
  %coerce.sext = sext i32 %raw.load61 to i64
  %var.load62 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l63 = ptrtoint ptr %var.load62 to i64
  %addtmp64 = add i64 %ptr.int.l63, 12
  %ptr.res65 = inttoptr i64 %addtmp64 to ptr
  %raw.int66 = ptrtoint ptr %ptr.res65 to i64
  %raw.clean.int67 = and i64 %raw.int66, 281474976710655
  %raw.clean.ptr68 = inttoptr i64 %raw.clean.int67 to ptr
  %raw.load69 = load volatile i32, ptr %raw.clean.ptr68, align 4
  %coerce.zext70 = zext i32 %raw.load69 to i64
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %raw.load53, ptr %rec.fld, align 8
  %rec.fld71 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %coerce.sext, ptr %rec.fld71, align 8
  %rec.fld72 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %coerce.zext70, ptr %rec.fld72, align 8
  store ptr %rec.alloc, ptr %var.cqe, align 8
  %var.load73 = load ptr, ptr %var.ring, align 8
  %fld.gep74 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load73, i32 0, i32 5
  %fld.load75 = load ptr, ptr %fld.gep74, align 8
  %var.load76 = load ptr, ptr %var.ring, align 8
  %fld.gep77 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load76, i32 0, i32 11
  %fld.load78 = load i64, ptr %fld.gep77, align 8
  %ptr.int.l79 = ptrtoint ptr %fld.load75 to i64
  %addtmp80 = add i64 %ptr.int.l79, %fld.load78
  %ptr.res81 = inttoptr i64 %addtmp80 to ptr
  %var.load82 = load i32, ptr %var.head, align 4
  %addtmp83 = add i32 %var.load82, 1
  %raw.int84 = ptrtoint ptr %ptr.res81 to i64
  %raw.clean.int85 = and i64 %raw.int84, 281474976710655
  %raw.clean.ptr86 = inttoptr i64 %raw.clean.int85 to ptr
  store i32 %addtmp83, ptr %raw.clean.ptr86, align 4
  %var.load87 = load ptr, ptr %var.cqe, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %var.load87, %choice.then ], [ null, %choice.else ]
  ret ptr %choice.res
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define { i1, i64 } @"uring::drain_pipes"(ptr %0, ptr %1) #0 {
entry:
  %var.fd418 = alloca i64, align 8
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
  %step.val432 = load i64, ptr %loop.step.36, align 8
  %loop.next433 = add i64 %counter.load99, %step.val432
  store i64 %loop.next433, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %choice.then105, %loop.exit.nat.36
  %var.load434 = load ptr, ptr %"var.outs'", align 8
  %a.load435 = load ptr, ptr %"var.outs'", align 8
  %a.null436 = icmp eq ptr %a.load435, null
  br i1 %a.null436, label %a.create437, label %a.after438

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
  %var.load431 = load i64, ptr %"var.active'", align 8
  %subtmp = sub i64 %var.load431, 1
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
  %raw.int158 = ptrtoint ptr %ptr.res156 to i64
  %raw.clean.int159 = and i64 %raw.int158, 281474976710655
  %raw.clean.ptr160 = inttoptr i64 %raw.clean.int159 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr160, i64 %var.load157, i1 false)
  %var.load161 = load ptr, ptr %var.b, align 8
  %b.ptr162 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load161, i32 0, i32 1
  %b.ptr163 = load ptr, ptr %b.ptr162, align 8
  %var.load164 = load i64, ptr %var.nb, align 8
  %ptr.int.l165 = ptrtoint ptr %b.ptr163 to i64
  %addtmp166 = add i64 %ptr.int.l165, %var.load164
  %ptr.res167 = inttoptr i64 %addtmp166 to ptr
  %raw.int168 = ptrtoint ptr %ptr.res167 to i64
  %raw.clean.int169 = and i64 %raw.int168, 281474976710655
  %raw.clean.ptr170 = inttoptr i64 %raw.clean.int169 to ptr
  store i8 0, ptr %raw.clean.ptr170, align 1
  %var.load171 = load i64, ptr %var.nb, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap172 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load171, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

str_overflow_abort141:                            ; preds = %choice.then123
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead142:                                    ; No predecessors!
  br label %b.buf.len140

b.len_big_check:                                  ; preds = %b.buf.len140
  %b.len.big = icmp sgt i64 %var.load171, %b.cap172
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead173, %b.len_big_check
  %b.len.gep174 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load171, ptr %b.len.gep174, align 8
  %var.load175 = load ptr, ptr %"var.outs'", align 8
  %a.load176 = load ptr, ptr %"var.outs'", align 8
  %a.null177 = icmp eq ptr %a.load176, null
  br i1 %a.null177, label %a.create178, label %a.after179

b.len_oob:                                        ; preds = %b.len_big_check, %b.buf.len140
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead173:                                    ; No predecessors!
  br label %b.len_ok

a.create178:                                      ; preds = %b.len_ok
  %arena.cur180 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create181 = call ptr @dva_arena_alloc(ptr %arena.cur180, i64 24)
  %arena.cur182 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf183 = call ptr @dva_arena_alloc(ptr %arena.cur182, i64 128)
  %a.len.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create181, i32 0, i32 0
  store i64 0, ptr %a.len.gep184, align 8
  %a.data.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create181, i32 0, i32 1
  store ptr %a.buf183, ptr %a.data.gep185, align 8
  %a.cap.gep186 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create181, i32 0, i32 2
  store i64 16, ptr %a.cap.gep186, align 8
  store ptr %a.create181, ptr %"var.outs'", align 8
  br label %a.after179

a.after179:                                       ; preds = %a.create178, %b.len_ok
  %a.load2187 = load ptr, ptr %"var.outs'", align 8
  %var.load188 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull189 = icmp ne ptr %a.load2187, null
  br i1 %a.rd.nonnull189, label %a.rd.check190, label %a.rd.err.null192

a.rd.check190:                                    ; preds = %a.after179
  %a.rd.len195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2187, i32 0, i32 0
  %a.rd.len196 = load i64, ptr %a.rd.len195, align 8
  %a.rd.ge0197 = icmp sge i64 %var.load188, 0
  %a.rd.lt198 = icmp slt i64 %var.load188, %a.rd.len196
  %a.rd.bounds199 = and i1 %a.rd.ge0197, %a.rd.lt198
  br i1 %a.rd.bounds199, label %a.rd.ok191, label %a.rd.err.oob193

a.rd.ok191:                                       ; preds = %a.rd.check190
  %a.rd.data200 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2187, i32 0, i32 1
  %a.rd.data201 = load ptr, ptr %a.rd.data200, align 8
  %a.rd.elem.gep202 = getelementptr i64, ptr %a.rd.data201, i64 %var.load188
  %a.rd.elem203 = load i64, ptr %a.rd.elem.gep202, align 8
  br label %a.rd.done194

a.rd.err.null192:                                 ; preds = %a.after179
  %arena.cur204 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 56)
  %err.code.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 0
  store i64 4011, ptr %err.code.gep206, align 8
  %err.msg.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep207, align 8
  %err.file.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep208, align 8
  %err.line.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 3
  store i64 393, ptr %err.line.gep209, align 8
  %err.col.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 4
  store i64 39, ptr %err.col.gep210, align 8
  %err.ctx.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 5
  %err.ctx0.gep212 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep212, align 8
  %err.ctx1.gep213 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep213, align 8
  %err.p2i214 = ptrtoint ptr %err.alloc205 to i64
  br label %a.rd.done194

a.rd.err.oob193:                                  ; preds = %a.rd.check190
  %arena.cur215 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc216 = call ptr @dva_arena_alloc(ptr %arena.cur215, i64 56)
  %err.code.gep217 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc216, i32 0, i32 0
  store i64 4011, ptr %err.code.gep217, align 8
  %err.msg.gep218 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc216, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep218, align 8
  %err.file.gep219 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc216, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep219, align 8
  %err.line.gep220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc216, i32 0, i32 3
  store i64 393, ptr %err.line.gep220, align 8
  %err.col.gep221 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc216, i32 0, i32 4
  store i64 39, ptr %err.col.gep221, align 8
  %err.ctx.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc216, i32 0, i32 5
  %err.ctx0.gep223 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep222, i32 0, i32 0
  store i64 %var.load188, ptr %err.ctx0.gep223, align 8
  %err.ctx1.gep224 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep222, i32 0, i32 1
  store i64 %a.rd.len196, ptr %err.ctx1.gep224, align 8
  %err.p2i225 = ptrtoint ptr %err.alloc216 to i64
  br label %a.rd.done194

a.rd.done194:                                     ; preds = %a.rd.err.oob193, %a.rd.err.null192, %a.rd.ok191
  %a.rd.tag226 = phi i1 [ true, %a.rd.ok191 ], [ false, %a.rd.err.null192 ], [ false, %a.rd.err.oob193 ]
  %a.rd.pay227 = phi i64 [ %a.rd.elem203, %a.rd.ok191 ], [ %err.p2i214, %a.rd.err.null192 ], [ %err.p2i225, %a.rd.err.oob193 ]
  %ram.tag228 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag226, 0
  %ram.pay229 = insertvalue { i1, i64 } %ram.tag228, i64 %a.rd.pay227, 1
  %unwrap.is_pos230 = extractvalue { i1, i64 } %ram.pay229, 0
  br i1 %unwrap.is_pos230, label %unwrap.pos.39, label %unwrap.abort.39

unwrap.pos.39:                                    ; preds = %a.rd.done194
  %unwrap.pay.pos262 = extractvalue { i1, i64 } %ram.pay229, 1
  %pay.ptr263 = inttoptr i64 %unwrap.pay.pos262 to ptr
  store ptr %pay.ptr263, ptr %var.prev, align 8
  %var.load264 = load ptr, ptr %"var.outs'", align 8
  %a.load265 = load ptr, ptr %"var.outs'", align 8
  %a.null266 = icmp eq ptr %a.load265, null
  br i1 %a.null266, label %a.create267, label %a.after268

unwrap.abort.39:                                  ; preds = %a.rd.done194
  %unwrap.pay.abort231 = extractvalue { i1, i64 } %ram.pay229, 1
  %err.ptr232 = inttoptr i64 %unwrap.pay.abort231 to ptr
  %err.code.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr232, i32 0, i32 0
  %err.code234 = load i64, ptr %err.code.gep233, align 8
  %err.msg.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr232, i32 0, i32 1
  %err.msg.struct236 = load ptr, ptr %err.msg.gep235, align 8
  %err.file.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr232, i32 0, i32 2
  %err.file.struct238 = load ptr, ptr %err.file.gep237, align 8
  %err.line.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr232, i32 0, i32 3
  %err.line240 = load i64, ptr %err.line.gep239, align 8
  %err.col.gep241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr232, i32 0, i32 4
  %err.col242 = load i64, ptr %err.col.gep241, align 8
  %err.msg.len243 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct236, i32 0, i32 0
  %err.msg.len244 = load i64, ptr %err.msg.len243, align 8
  %err.msg.len245 = and i64 %err.msg.len244, 281474976710655
  %err.msg.len32246 = trunc i64 %err.msg.len245 to i32
  %err.msg.data247 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct236, i32 0, i32 1
  %err.msg.data248 = load ptr, ptr %err.msg.data247, align 8
  %err.file.len249 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct238, i32 0, i32 0
  %err.file.len250 = load i64, ptr %err.file.len249, align 8
  %err.file.len251 = and i64 %err.file.len250, 281474976710655
  %err.file.len32252 = trunc i64 %err.file.len251 to i32
  %err.file.data253 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct238, i32 0, i32 1
  %err.file.data254 = load ptr, ptr %err.file.data253, align 8
  %err.thread.rec255 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread256 = icmp ne ptr %err.thread.rec255, null
  br i1 %err.is.thread256, label %err.thread257, label %err.normal258

err.thread257:                                    ; preds = %unwrap.abort.39
  %err.haserr.gep259 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec255, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep259, align 8
  %err.err.gep260 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec255, i32 0, i32 7
  store ptr %err.ptr232, ptr %err.err.gep260, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal258:                                    ; preds = %unwrap.abort.39
  %err.panic.printf261 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code234, i32 %err.msg.len32246, ptr %err.msg.data248, i32 %err.file.len32252, ptr %err.file.data254, i64 %err.line240, i64 %err.col242)
  call void @exit(i32 1)
  unreachable

a.create267:                                      ; preds = %unwrap.pos.39
  %arena.cur269 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create270 = call ptr @dva_arena_alloc(ptr %arena.cur269, i64 24)
  %arena.cur271 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 128)
  %a.len.gep273 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create270, i32 0, i32 0
  store i64 0, ptr %a.len.gep273, align 8
  %a.data.gep274 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create270, i32 0, i32 1
  store ptr %a.buf272, ptr %a.data.gep274, align 8
  %a.cap.gep275 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create270, i32 0, i32 2
  store i64 16, ptr %a.cap.gep275, align 8
  store ptr %a.create270, ptr %"var.outs'", align 8
  br label %a.after268

a.after268:                                       ; preds = %a.create267, %unwrap.pos.39
  %a.load2276 = load ptr, ptr %"var.outs'", align 8
  %var.load277 = load i64, ptr %var.idx, align 8
  %var.load278 = load ptr, ptr %var.prev, align 8
  %var.load279 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load279, i32 0, i32 0
  %b.freeze.len280 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load279, i32 0, i32 1
  %b.freeze.data281 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after268
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data281, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data281, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data281, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len280, 1
  %arena.cur282 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur282, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data281, i64 %b.freeze.len280, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len280
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after268
  %b.freeze.data283 = phi ptr [ %b.freeze.data281, %a.after268 ], [ %b.freeze.data281, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur284 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur284, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len280, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data283, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load279, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load279, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load279, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load278, i32 0, i32 0
  %concat.lhs285 = load i64, ptr %concat.lhs, align 8
  %concat.lhs286 = and i64 %concat.lhs285, 281474976710655
  %concat.lhs287 = getelementptr inbounds { i64, ptr }, ptr %var.load278, i32 0, i32 1
  %concat.lhs288 = load ptr, ptr %concat.lhs287, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %concat.rhs289 = load i64, ptr %concat.rhs, align 8
  %concat.rhs290 = and i64 %concat.rhs289, 281474976710655
  %concat.rhs291 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %concat.rhs292 = load ptr, ptr %concat.rhs291, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs286, i64 %concat.rhs290)
  %sum293 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf294 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf294, label %str_overflow_abort296, label %concat.sum.len295

concat.sum.len295:                                ; preds = %abort.dead297, %b.freeze.done
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum293, i64 1)
  %sum298 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf299 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf299, label %str_overflow_abort301, label %concat.tot.len300

str_overflow_abort296:                            ; preds = %b.freeze.done
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead297:                                    ; No predecessors!
  br label %concat.sum.len295

concat.tot.len300:                                ; preds = %abort.dead302, %concat.sum.len295
  %arena.cur303 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur303, i64 %sum298)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs288, i64 %concat.lhs286, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs286
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs292, i64 %concat.rhs290, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum293
  store i8 0, ptr %concat.nul, align 1
  %arena.cur304 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur304, i64 16)
  %str.build.len.gep305 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum293, ptr %str.build.len.gep305, align 8
  %str.build.data.gep306 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep306, align 8
  %slot.p2i = ptrtoint ptr %concat.str to i64
  %a.wr.nonnull = icmp ne ptr %a.load2276, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

str_overflow_abort301:                            ; preds = %concat.sum.len295
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead302:                                    ; No predecessors!
  br label %concat.tot.len300

a.wr.check:                                       ; preds = %concat.tot.len300
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2276, i32 0, i32 0
  %a.wr.len307 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load277, 0
  %a.wr.lt = icmp slt i64 %var.load277, %a.wr.len307
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2276, i32 0, i32 1
  %a.wr.data308 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep309 = getelementptr i64, ptr %a.wr.data308, i64 %var.load277
  store i64 %slot.p2i, ptr %a.elem.gep309, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %concat.tot.len300
  %arena.cur310 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc311 = call ptr @dva_arena_alloc(ptr %arena.cur310, i64 56)
  %err.code.gep312 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc311, i32 0, i32 0
  store i64 4011, ptr %err.code.gep312, align 8
  %err.msg.gep313 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc311, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep313, align 8
  %err.file.gep314 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc311, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep314, align 8
  %err.line.gep315 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc311, i32 0, i32 3
  store i64 0, ptr %err.line.gep315, align 8
  %err.col.gep316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc311, i32 0, i32 4
  store i64 0, ptr %err.col.gep316, align 8
  %err.ctx.gep317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc311, i32 0, i32 5
  %err.ctx0.gep318 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep317, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep318, align 8
  %err.ctx1.gep319 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep317, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep319, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur320 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 56)
  %err.code.gep322 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 0
  store i64 4011, ptr %err.code.gep322, align 8
  %err.msg.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep323, align 8
  %err.file.gep324 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep324, align 8
  %err.line.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 3
  store i64 0, ptr %err.line.gep325, align 8
  %err.col.gep326 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 4
  store i64 0, ptr %err.col.gep326, align 8
  %err.ctx.gep327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 5
  %err.ctx0.gep328 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep327, i32 0, i32 0
  store i64 %var.load277, ptr %err.ctx0.gep328, align 8
  %err.ctx1.gep329 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep327, i32 0, i32 1
  store i64 %a.wr.len307, ptr %err.ctx1.gep329, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc311, %a.wr.err.null ], [ %err.alloc321, %a.wr.err.oob ]
  %var.load330 = load ptr, ptr %var.fds, align 8
  %a.load331 = load ptr, ptr %var.fds, align 8
  %a.null332 = icmp eq ptr %a.load331, null
  br i1 %a.null332, label %a.create333, label %a.after334

a.create333:                                      ; preds = %a.wr.done
  %arena.cur335 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create336 = call ptr @dva_arena_alloc(ptr %arena.cur335, i64 24)
  %arena.cur337 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 128)
  %a.len.gep339 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create336, i32 0, i32 0
  store i64 0, ptr %a.len.gep339, align 8
  %a.data.gep340 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create336, i32 0, i32 1
  store ptr %a.buf338, ptr %a.data.gep340, align 8
  %a.cap.gep341 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create336, i32 0, i32 2
  store i64 16, ptr %a.cap.gep341, align 8
  store ptr %a.create336, ptr %var.fds, align 8
  br label %a.after334

a.after334:                                       ; preds = %a.create333, %a.wr.done
  %a.load2342 = load ptr, ptr %var.fds, align 8
  %var.load343 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull344 = icmp ne ptr %a.load2342, null
  br i1 %a.rd.nonnull344, label %a.rd.check345, label %a.rd.err.null347

a.rd.check345:                                    ; preds = %a.after334
  %a.rd.len350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2342, i32 0, i32 0
  %a.rd.len351 = load i64, ptr %a.rd.len350, align 8
  %a.rd.ge0352 = icmp sge i64 %var.load343, 0
  %a.rd.lt353 = icmp slt i64 %var.load343, %a.rd.len351
  %a.rd.bounds354 = and i1 %a.rd.ge0352, %a.rd.lt353
  br i1 %a.rd.bounds354, label %a.rd.ok346, label %a.rd.err.oob348

a.rd.ok346:                                       ; preds = %a.rd.check345
  %a.rd.data355 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2342, i32 0, i32 1
  %a.rd.data356 = load ptr, ptr %a.rd.data355, align 8
  %a.rd.elem.gep357 = getelementptr i64, ptr %a.rd.data356, i64 %var.load343
  %a.rd.elem358 = load i64, ptr %a.rd.elem.gep357, align 8
  br label %a.rd.done349

a.rd.err.null347:                                 ; preds = %a.after334
  %arena.cur359 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc360 = call ptr @dva_arena_alloc(ptr %arena.cur359, i64 56)
  %err.code.gep361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 0
  store i64 4011, ptr %err.code.gep361, align 8
  %err.msg.gep362 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep362, align 8
  %err.file.gep363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep363, align 8
  %err.line.gep364 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 3
  store i64 395, ptr %err.line.gep364, align 8
  %err.col.gep365 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 4
  store i64 35, ptr %err.col.gep365, align 8
  %err.ctx.gep366 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc360, i32 0, i32 5
  %err.ctx0.gep367 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep366, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep367, align 8
  %err.ctx1.gep368 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep366, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep368, align 8
  %err.p2i369 = ptrtoint ptr %err.alloc360 to i64
  br label %a.rd.done349

a.rd.err.oob348:                                  ; preds = %a.rd.check345
  %arena.cur370 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc371 = call ptr @dva_arena_alloc(ptr %arena.cur370, i64 56)
  %err.code.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc371, i32 0, i32 0
  store i64 4011, ptr %err.code.gep372, align 8
  %err.msg.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc371, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep373, align 8
  %err.file.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc371, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep374, align 8
  %err.line.gep375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc371, i32 0, i32 3
  store i64 395, ptr %err.line.gep375, align 8
  %err.col.gep376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc371, i32 0, i32 4
  store i64 35, ptr %err.col.gep376, align 8
  %err.ctx.gep377 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc371, i32 0, i32 5
  %err.ctx0.gep378 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep377, i32 0, i32 0
  store i64 %var.load343, ptr %err.ctx0.gep378, align 8
  %err.ctx1.gep379 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep377, i32 0, i32 1
  store i64 %a.rd.len351, ptr %err.ctx1.gep379, align 8
  %err.p2i380 = ptrtoint ptr %err.alloc371 to i64
  br label %a.rd.done349

a.rd.done349:                                     ; preds = %a.rd.err.oob348, %a.rd.err.null347, %a.rd.ok346
  %a.rd.tag381 = phi i1 [ true, %a.rd.ok346 ], [ false, %a.rd.err.null347 ], [ false, %a.rd.err.oob348 ]
  %a.rd.pay382 = phi i64 [ %a.rd.elem358, %a.rd.ok346 ], [ %err.p2i369, %a.rd.err.null347 ], [ %err.p2i380, %a.rd.err.oob348 ]
  %ram.tag383 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag381, 0
  %ram.pay384 = insertvalue { i1, i64 } %ram.tag383, i64 %a.rd.pay382, 1
  %unwrap.is_pos385 = extractvalue { i1, i64 } %ram.pay384, 0
  br i1 %unwrap.is_pos385, label %unwrap.pos.40, label %unwrap.abort.40

unwrap.pos.40:                                    ; preds = %a.rd.done349
  %unwrap.pay.pos417 = extractvalue { i1, i64 } %ram.pay384, 1
  store i64 %unwrap.pay.pos417, ptr %var.fd418, align 8
  %var.load419 = load ptr, ptr %var.ring, align 8
  %var.load420 = load i64, ptr %var.fd418, align 8
  %var.load421 = load ptr, ptr %var.scratch, align 8
  %b.ptr422 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load421, i32 0, i32 1
  %b.ptr423 = load ptr, ptr %b.ptr422, align 8
  %var.load424 = load i64, ptr %var.idx, align 8
  %multmp425 = mul i64 %var.load424, 4096
  %ptr.int.l426 = ptrtoint ptr %b.ptr423 to i64
  %addtmp427 = add i64 %ptr.int.l426, %multmp425
  %ptr.res428 = inttoptr i64 %addtmp427 to ptr
  %var.load429 = load i64, ptr %var.idx, align 8
  %call.res430 = call i1 @"uring::prep_pipe_read"(ptr %var.load419, i64 %var.load420, ptr %ptr.res428, i64 4096, i64 %var.load429)
  br label %choice.exit124

unwrap.abort.40:                                  ; preds = %a.rd.done349
  %unwrap.pay.abort386 = extractvalue { i1, i64 } %ram.pay384, 1
  %err.ptr387 = inttoptr i64 %unwrap.pay.abort386 to ptr
  %err.code.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr387, i32 0, i32 0
  %err.code389 = load i64, ptr %err.code.gep388, align 8
  %err.msg.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr387, i32 0, i32 1
  %err.msg.struct391 = load ptr, ptr %err.msg.gep390, align 8
  %err.file.gep392 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr387, i32 0, i32 2
  %err.file.struct393 = load ptr, ptr %err.file.gep392, align 8
  %err.line.gep394 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr387, i32 0, i32 3
  %err.line395 = load i64, ptr %err.line.gep394, align 8
  %err.col.gep396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr387, i32 0, i32 4
  %err.col397 = load i64, ptr %err.col.gep396, align 8
  %err.msg.len398 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct391, i32 0, i32 0
  %err.msg.len399 = load i64, ptr %err.msg.len398, align 8
  %err.msg.len400 = and i64 %err.msg.len399, 281474976710655
  %err.msg.len32401 = trunc i64 %err.msg.len400 to i32
  %err.msg.data402 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct391, i32 0, i32 1
  %err.msg.data403 = load ptr, ptr %err.msg.data402, align 8
  %err.file.len404 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct393, i32 0, i32 0
  %err.file.len405 = load i64, ptr %err.file.len404, align 8
  %err.file.len406 = and i64 %err.file.len405, 281474976710655
  %err.file.len32407 = trunc i64 %err.file.len406 to i32
  %err.file.data408 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct393, i32 0, i32 1
  %err.file.data409 = load ptr, ptr %err.file.data408, align 8
  %err.thread.rec410 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread411 = icmp ne ptr %err.thread.rec410, null
  br i1 %err.is.thread411, label %err.thread412, label %err.normal413

err.thread412:                                    ; preds = %unwrap.abort.40
  %err.haserr.gep414 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec410, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep414, align 8
  %err.err.gep415 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec410, i32 0, i32 7
  store ptr %err.ptr387, ptr %err.err.gep415, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal413:                                    ; preds = %unwrap.abort.40
  %err.panic.printf416 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code389, i32 %err.msg.len32401, ptr %err.msg.data403, i32 %err.file.len32407, ptr %err.file.data409, i64 %err.line395, i64 %err.col397)
  call void @exit(i32 1)
  unreachable

a.create437:                                      ; preds = %loop.exit.36
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
  store ptr %a.create440, ptr %"var.outs'", align 8
  br label %a.after438

a.after438:                                       ; preds = %a.create437, %loop.exit.36
  %a.load2446 = load ptr, ptr %"var.outs'", align 8
  %p.to.i64447 = ptrtoint ptr %a.load2446 to i64
  %ram.pay448 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64447, 1
  ret { i1, i64 } %ram.pay448
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
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

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
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
