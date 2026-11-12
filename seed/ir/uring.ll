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
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
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
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@dva_thread_rec = external thread_local global ptr
@clo.const.25 = internal constant { ptr, ptr } { ptr @"uring::drain_pipes", ptr null }
@"var.uring::drain_pipes" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"uring::close", ptr null }
@"var.uring::close" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_uring, ptr null }]

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_uring() #1 {
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

declare void @exit(i32)

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

declare i64 @strlen(ptr)

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

define { i1, i64 } @"uring::new"(i64 %0) #1 {
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
  %arena.cur = call ptr @dva_arena_current()
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
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_gen_check:                                   ; preds = %choice.exit
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %choice.exit
  store ptr %raw.clean.ptr, ptr %var.params, align 8
  %var.load41 = load ptr, ptr %var.params, align 8
  %fld.gep = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load41, i32 0, i32 0
  %fld.load = load i32, ptr %fld.gep, align 4
  %coerce.zext = zext i32 %fld.load to i64
  store i64 %coerce.zext, ptr %var.sq_entries, align 8
  %var.load42 = load ptr, ptr %var.params, align 8
  %fld.gep43 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load42, i32 0, i32 1
  %fld.load44 = load i32, ptr %fld.gep43, align 4
  %coerce.zext45 = zext i32 %fld.load44 to i64
  store i64 %coerce.zext45, ptr %var.cq_entries, align 8
  %var.load46 = load ptr, ptr %var.params, align 8
  %fld.gep47 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load46, i32 0, i32 16
  %fld.load48 = load i32, ptr %fld.gep47, align 4
  %coerce.zext49 = zext i32 %fld.load48 to i64
  %var.load50 = load i64, ptr %var.sq_entries, align 8
  %multmp = mul i64 %var.load50, 4
  %addtmp = add i64 %coerce.zext49, %multmp
  store i64 %addtmp, ptr %var.sq_sz, align 8
  %var.load51 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int52 = ptrtoint ptr %var.load51 to i64
  %addr.ffi.masked53 = and i64 %addr.ffi.int52, 281474976710655
  %addr.ffi.clean54 = inttoptr i64 %addr.ffi.masked53 to ptr
  %var.load55 = load i64, ptr %var.sq_sz, align 8
  %var.load56 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load57 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp = or i64 %var.load56, %var.load57
  %var.load58 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load59 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp60 = or i64 %var.load58, %var.load59
  %var.load61 = load i64, ptr %var.fd, align 8
  %var.load62 = load i64, ptr @"var.uring::IORING_OFF_SQ_RING", align 8
  %coerce.trunc = trunc i64 %var.load61 to i32
  %call.res63 = call ptr @mmap(ptr %addr.ffi.clean54, i64 %var.load55, i64 %bortmp, i64 %bortmp60, i32 %coerce.trunc, i64 %var.load62)
  store ptr %call.res63, ptr %var.sq_ptr, align 8
  %var.load64 = load ptr, ptr %var.sq_ptr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load64 to i64
  %cmptmp65 = icmp eq i64 %coerce.ptr2int, -1
  br i1 %cmptmp65, label %choice.then66, label %choice.exit67

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

choice.then66:                                    ; preds = %addr_ok
  %var.load68 = load i64, ptr %var.fd, align 8
  %coerce.trunc69 = trunc i64 %var.load68 to i32
  %call.res70 = call i32 @close(i32 %coerce.trunc69)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.1.struct to i64) }

choice.exit67:                                    ; preds = %ret.dead71, %addr_ok
  %var.load72 = load i64, ptr %var.sq_entries, align 8
  %multmp73 = mul i64 %var.load72, 64
  store i64 %multmp73, ptr %var.sqes_sz, align 8
  %var.load74 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int75 = ptrtoint ptr %var.load74 to i64
  %addr.ffi.masked76 = and i64 %addr.ffi.int75, 281474976710655
  %addr.ffi.clean77 = inttoptr i64 %addr.ffi.masked76 to ptr
  %var.load78 = load i64, ptr %var.sqes_sz, align 8
  %var.load79 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load80 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp81 = or i64 %var.load79, %var.load80
  %var.load82 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load83 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp84 = or i64 %var.load82, %var.load83
  %var.load85 = load i64, ptr %var.fd, align 8
  %var.load86 = load i64, ptr @"var.uring::IORING_OFF_SQES", align 8
  %coerce.trunc87 = trunc i64 %var.load85 to i32
  %call.res88 = call ptr @mmap(ptr %addr.ffi.clean77, i64 %var.load78, i64 %bortmp81, i64 %bortmp84, i32 %coerce.trunc87, i64 %var.load86)
  store ptr %call.res88, ptr %var.sqes_ptr, align 8
  %var.load89 = load ptr, ptr %var.sqes_ptr, align 8
  %coerce.ptr2int90 = ptrtoint ptr %var.load89 to i64
  %cmptmp91 = icmp eq i64 %coerce.ptr2int90, -1
  br i1 %cmptmp91, label %choice.then92, label %choice.exit93

ret.dead71:                                       ; No predecessors!
  br label %choice.exit67

choice.then92:                                    ; preds = %choice.exit67
  %var.load94 = load ptr, ptr %var.sq_ptr, align 8
  %addr.ffi.int95 = ptrtoint ptr %var.load94 to i64
  %addr.ffi.masked96 = and i64 %addr.ffi.int95, 281474976710655
  %addr.ffi.clean97 = inttoptr i64 %addr.ffi.masked96 to ptr
  %var.load98 = load i64, ptr %var.sq_sz, align 8
  %call.res99 = call i64 @munmap(ptr %addr.ffi.clean97, i64 %var.load98)
  %var.load100 = load i64, ptr %var.fd, align 8
  %coerce.trunc101 = trunc i64 %var.load100 to i32
  %call.res102 = call i32 @close(i32 %coerce.trunc101)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.2.struct to i64) }

choice.exit93:                                    ; preds = %ret.dead103, %choice.exit67
  %var.load104 = load ptr, ptr %var.params, align 8
  %fld.gep105 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load104, i32 0, i32 25
  %fld.load106 = load i32, ptr %fld.gep105, align 4
  %coerce.zext107 = zext i32 %fld.load106 to i64
  %var.load108 = load i64, ptr %var.cq_entries, align 8
  %multmp109 = mul i64 %var.load108, 16
  %addtmp110 = add i64 %coerce.zext107, %multmp109
  store i64 %addtmp110, ptr %var.cq_sz, align 8
  %var.load111 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int112 = ptrtoint ptr %var.load111 to i64
  %addr.ffi.masked113 = and i64 %addr.ffi.int112, 281474976710655
  %addr.ffi.clean114 = inttoptr i64 %addr.ffi.masked113 to ptr
  %var.load115 = load i64, ptr %var.cq_sz, align 8
  %var.load116 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load117 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp118 = or i64 %var.load116, %var.load117
  %var.load119 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load120 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp121 = or i64 %var.load119, %var.load120
  %var.load122 = load i64, ptr %var.fd, align 8
  %var.load123 = load i64, ptr @"var.uring::IORING_OFF_CQ_RING", align 8
  %coerce.trunc124 = trunc i64 %var.load122 to i32
  %call.res125 = call ptr @mmap(ptr %addr.ffi.clean114, i64 %var.load115, i64 %bortmp118, i64 %bortmp121, i32 %coerce.trunc124, i64 %var.load123)
  store ptr %call.res125, ptr %var.cq_ptr, align 8
  %var.load126 = load ptr, ptr %var.cq_ptr, align 8
  %coerce.ptr2int127 = ptrtoint ptr %var.load126 to i64
  %cmptmp128 = icmp eq i64 %coerce.ptr2int127, -1
  br i1 %cmptmp128, label %choice.then129, label %choice.exit130

ret.dead103:                                      ; No predecessors!
  br label %choice.exit93

choice.then129:                                   ; preds = %choice.exit93
  %var.load131 = load ptr, ptr %var.sqes_ptr, align 8
  %addr.ffi.int132 = ptrtoint ptr %var.load131 to i64
  %addr.ffi.masked133 = and i64 %addr.ffi.int132, 281474976710655
  %addr.ffi.clean134 = inttoptr i64 %addr.ffi.masked133 to ptr
  %var.load135 = load i64, ptr %var.sqes_sz, align 8
  %call.res136 = call i64 @munmap(ptr %addr.ffi.clean134, i64 %var.load135)
  %var.load137 = load ptr, ptr %var.sq_ptr, align 8
  %addr.ffi.int138 = ptrtoint ptr %var.load137 to i64
  %addr.ffi.masked139 = and i64 %addr.ffi.int138, 281474976710655
  %addr.ffi.clean140 = inttoptr i64 %addr.ffi.masked139 to ptr
  %var.load141 = load i64, ptr %var.sq_sz, align 8
  %call.res142 = call i64 @munmap(ptr %addr.ffi.clean140, i64 %var.load141)
  %var.load143 = load i64, ptr %var.fd, align 8
  %coerce.trunc144 = trunc i64 %var.load143 to i32
  %call.res145 = call i32 @close(i32 %coerce.trunc144)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.3.struct to i64) }

choice.exit130:                                   ; preds = %ret.dead146, %choice.exit93
  %var.load147 = load i64, ptr %var.fd, align 8
  %var.load148 = load ptr, ptr %var.sq_ptr, align 8
  %var.load149 = load i64, ptr %var.sq_sz, align 8
  %var.load150 = load ptr, ptr %var.sqes_ptr, align 8
  %var.load151 = load i64, ptr %var.sqes_sz, align 8
  %var.load152 = load ptr, ptr %var.cq_ptr, align 8
  %var.load153 = load i64, ptr %var.cq_sz, align 8
  %var.load154 = load ptr, ptr %var.params, align 8
  %fld.gep155 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load154, i32 0, i32 10
  %fld.load156 = load i32, ptr %fld.gep155, align 4
  %coerce.zext157 = zext i32 %fld.load156 to i64
  %var.load158 = load ptr, ptr %var.params, align 8
  %fld.gep159 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load158, i32 0, i32 11
  %fld.load160 = load i32, ptr %fld.gep159, align 4
  %coerce.zext161 = zext i32 %fld.load160 to i64
  %var.load162 = load ptr, ptr %var.params, align 8
  %fld.gep163 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load162, i32 0, i32 12
  %fld.load164 = load i32, ptr %fld.gep163, align 4
  %coerce.zext165 = zext i32 %fld.load164 to i64
  %var.load166 = load ptr, ptr %var.params, align 8
  %fld.gep167 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load166, i32 0, i32 16
  %fld.load168 = load i32, ptr %fld.gep167, align 4
  %coerce.zext169 = zext i32 %fld.load168 to i64
  %var.load170 = load ptr, ptr %var.params, align 8
  %fld.gep171 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load170, i32 0, i32 20
  %fld.load172 = load i32, ptr %fld.gep171, align 4
  %coerce.zext173 = zext i32 %fld.load172 to i64
  %var.load174 = load ptr, ptr %var.params, align 8
  %fld.gep175 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load174, i32 0, i32 21
  %fld.load176 = load i32, ptr %fld.gep175, align 4
  %coerce.zext177 = zext i32 %fld.load176 to i64
  %var.load178 = load ptr, ptr %var.params, align 8
  %fld.gep179 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load178, i32 0, i32 22
  %fld.load180 = load i32, ptr %fld.gep179, align 4
  %coerce.zext181 = zext i32 %fld.load180 to i64
  %var.load182 = load ptr, ptr %var.params, align 8
  %fld.gep183 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load182, i32 0, i32 25
  %fld.load184 = load i32, ptr %fld.gep183, align 4
  %coerce.zext185 = zext i32 %fld.load184 to i64
  %var.load186 = load i64, ptr %var.sq_entries, align 8
  %var.load187 = load i64, ptr %var.cq_entries, align 8
  %arena.cur188 = call ptr @dva_arena_current()
  %rec.alloc189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld190 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 0
  store i64 %var.load147, ptr %rec.fld190, align 8
  %rec.fld191 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 1
  store ptr %var.load148, ptr %rec.fld191, align 8
  %rec.fld192 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 2
  store i64 %var.load149, ptr %rec.fld192, align 8
  %rec.fld193 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 3
  store ptr %var.load150, ptr %rec.fld193, align 8
  %rec.fld194 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 4
  store i64 %var.load151, ptr %rec.fld194, align 8
  %rec.fld195 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 5
  store ptr %var.load152, ptr %rec.fld195, align 8
  %rec.fld196 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 6
  store i64 %var.load153, ptr %rec.fld196, align 8
  %rec.fld197 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 7
  store i64 %coerce.zext157, ptr %rec.fld197, align 8
  %rec.fld198 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 8
  store i64 %coerce.zext161, ptr %rec.fld198, align 8
  %rec.fld199 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 9
  store i64 %coerce.zext165, ptr %rec.fld199, align 8
  %rec.fld200 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 10
  store i64 %coerce.zext169, ptr %rec.fld200, align 8
  %rec.fld201 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 11
  store i64 %coerce.zext173, ptr %rec.fld201, align 8
  %rec.fld202 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 12
  store i64 %coerce.zext177, ptr %rec.fld202, align 8
  %rec.fld203 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 13
  store i64 %coerce.zext181, ptr %rec.fld203, align 8
  %rec.fld204 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 14
  store i64 %coerce.zext185, ptr %rec.fld204, align 8
  %rec.fld205 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 15
  store i64 %var.load186, ptr %rec.fld205, align 8
  %rec.fld206 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc189, i32 0, i32 16
  store i64 %var.load187, ptr %rec.fld206, align 8
  %p.to.i64 = ptrtoint ptr %rec.alloc189 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead146:                                      ; No predecessors!
  br label %choice.exit130
}

define i1 @"uring::prep_sqe"(ptr %0, i64 %1, i64 %2, i64 %3, ptr %4, i64 %5, i64 %6) #1 {
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

define i1 @"uring::prep_sqe_flags"(ptr %0, i64 %1, i64 %2, i64 %3, ptr %4, i64 %5, i64 %6, i64 %7) #1 {
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
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
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
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag16)
  br i1 %tag.valid22, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
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

addr_stale20:                                     ; preds = %addr_gen_check18
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19

choice.then:                                      ; preds = %addr_ok19
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %addr_ok19
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
  %addr.immortal43 = icmp eq i64 %addr.tag42, 0
  br i1 %addr.immortal43, label %addr_ok45, label %addr_gen_check44

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_gen_check44:                                 ; preds = %choice.exit
  %arena.cur47 = call ptr @dva_arena_current()
  %tag.valid48 = call i1 @dva_arena_validate_tag(ptr %arena.cur47, i64 %addr.tag42)
  br i1 %tag.valid48, label %addr_ok45, label %addr_stale46

addr_ok45:                                        ; preds = %addr_stale46, %addr_gen_check44, %choice.exit
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

addr_stale46:                                     ; preds = %addr_gen_check44
  %10 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok45

choice.then63:                                    ; preds = %addr_ok45
  %var.load65 = load ptr, ptr %var.addr, align 8
  br label %choice.exit64

choice.else:                                      ; preds = %addr_ok45
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
  %addr.immortal72 = icmp eq i64 %addr.tag71, 0
  br i1 %addr.immortal72, label %addr_ok74, label %addr_gen_check73

addr_gen_check73:                                 ; preds = %choice.exit64
  %arena.cur76 = call ptr @dva_arena_current()
  %tag.valid77 = call i1 @dva_arena_validate_tag(ptr %arena.cur76, i64 %addr.tag71)
  br i1 %tag.valid77, label %addr_ok74, label %addr_stale75

addr_ok74:                                        ; preds = %addr_stale75, %addr_gen_check73, %choice.exit64
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
  %addr.immortal87 = icmp eq i64 %addr.tag86, 0
  br i1 %addr.immortal87, label %addr_ok89, label %addr_gen_check88

addr_stale75:                                     ; preds = %addr_gen_check73
  %11 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok74

addr_gen_check88:                                 ; preds = %addr_ok74
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %addr.tag86)
  br i1 %tag.valid92, label %addr_ok89, label %addr_stale90

addr_ok89:                                        ; preds = %addr_stale90, %addr_gen_check88, %addr_ok74
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
  %addr.immortal103 = icmp eq i64 %addr.tag102, 0
  br i1 %addr.immortal103, label %addr_ok105, label %addr_gen_check104

addr_stale90:                                     ; preds = %addr_gen_check88
  %12 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok89

addr_gen_check104:                                ; preds = %addr_ok89
  %arena.cur107 = call ptr @dva_arena_current()
  %tag.valid108 = call i1 @dva_arena_validate_tag(ptr %arena.cur107, i64 %addr.tag102)
  br i1 %tag.valid108, label %addr_ok105, label %addr_stale106

addr_ok105:                                       ; preds = %addr_stale106, %addr_gen_check104, %addr_ok89
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
  %addr.immortal118 = icmp eq i64 %addr.tag117, 0
  br i1 %addr.immortal118, label %addr_ok120, label %addr_gen_check119

addr_stale106:                                    ; preds = %addr_gen_check104
  %13 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok105

addr_gen_check119:                                ; preds = %addr_ok105
  %arena.cur122 = call ptr @dva_arena_current()
  %tag.valid123 = call i1 @dva_arena_validate_tag(ptr %arena.cur122, i64 %addr.tag117)
  br i1 %tag.valid123, label %addr_ok120, label %addr_stale121

addr_ok120:                                       ; preds = %addr_stale121, %addr_gen_check119, %addr_ok105
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
  %addr.immortal133 = icmp eq i64 %addr.tag132, 0
  br i1 %addr.immortal133, label %addr_ok135, label %addr_gen_check134

addr_stale121:                                    ; preds = %addr_gen_check119
  %14 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok120

addr_gen_check134:                                ; preds = %addr_ok120
  %arena.cur137 = call ptr @dva_arena_current()
  %tag.valid138 = call i1 @dva_arena_validate_tag(ptr %arena.cur137, i64 %addr.tag132)
  br i1 %tag.valid138, label %addr_ok135, label %addr_stale136

addr_ok135:                                       ; preds = %addr_stale136, %addr_gen_check134, %addr_ok120
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
  %addr.immortal149 = icmp eq i64 %addr.tag148, 0
  br i1 %addr.immortal149, label %addr_ok151, label %addr_gen_check150

addr_stale136:                                    ; preds = %addr_gen_check134
  %15 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok135

addr_gen_check150:                                ; preds = %addr_ok135
  %arena.cur153 = call ptr @dva_arena_current()
  %tag.valid154 = call i1 @dva_arena_validate_tag(ptr %arena.cur153, i64 %addr.tag148)
  br i1 %tag.valid154, label %addr_ok151, label %addr_stale152

addr_ok151:                                       ; preds = %addr_stale152, %addr_gen_check150, %addr_ok135
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
  %addr.immortal165 = icmp eq i64 %addr.tag164, 0
  br i1 %addr.immortal165, label %addr_ok167, label %addr_gen_check166

addr_stale152:                                    ; preds = %addr_gen_check150
  %16 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok151

addr_gen_check166:                                ; preds = %addr_ok151
  %arena.cur169 = call ptr @dva_arena_current()
  %tag.valid170 = call i1 @dva_arena_validate_tag(ptr %arena.cur169, i64 %addr.tag164)
  br i1 %tag.valid170, label %addr_ok167, label %addr_stale168

addr_ok167:                                       ; preds = %addr_stale168, %addr_gen_check166, %addr_ok151
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
  %addr.immortal180 = icmp eq i64 %addr.tag179, 0
  br i1 %addr.immortal180, label %addr_ok182, label %addr_gen_check181

addr_stale168:                                    ; preds = %addr_gen_check166
  %17 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok167

addr_gen_check181:                                ; preds = %addr_ok167
  %arena.cur184 = call ptr @dva_arena_current()
  %tag.valid185 = call i1 @dva_arena_validate_tag(ptr %arena.cur184, i64 %addr.tag179)
  br i1 %tag.valid185, label %addr_ok182, label %addr_stale183

addr_ok182:                                       ; preds = %addr_stale183, %addr_gen_check181, %addr_ok167
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
  %addr.immortal206 = icmp eq i64 %addr.tag205, 0
  br i1 %addr.immortal206, label %addr_ok208, label %addr_gen_check207

addr_stale183:                                    ; preds = %addr_gen_check181
  %18 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok182

addr_gen_check207:                                ; preds = %addr_ok182
  %arena.cur210 = call ptr @dva_arena_current()
  %tag.valid211 = call i1 @dva_arena_validate_tag(ptr %arena.cur210, i64 %addr.tag205)
  br i1 %tag.valid211, label %addr_ok208, label %addr_stale209

addr_ok208:                                       ; preds = %addr_stale209, %addr_gen_check207, %addr_ok182
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
  %addr.immortal227 = icmp eq i64 %addr.tag226, 0
  br i1 %addr.immortal227, label %addr_ok229, label %addr_gen_check228

addr_stale209:                                    ; preds = %addr_gen_check207
  %19 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok208

addr_gen_check228:                                ; preds = %addr_ok208
  %arena.cur231 = call ptr @dva_arena_current()
  %tag.valid232 = call i1 @dva_arena_validate_tag(ptr %arena.cur231, i64 %addr.tag226)
  br i1 %tag.valid232, label %addr_ok229, label %addr_stale230

addr_ok229:                                       ; preds = %addr_stale230, %addr_gen_check228, %addr_ok208
  store i32 %addtmp222, ptr %raw.clean.ptr225, align 4
  ret i1 true

addr_stale230:                                    ; preds = %addr_gen_check228
  %20 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok229
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

define i1 @"uring::prep_nop"(ptr %0, i64 %1) #1 {
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

define i1 @"uring::prep_read"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #1 {
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

define i1 @"uring::prep_read_at"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #1 {
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

define i1 @"uring::prep_write"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #1 {
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

define i1 @"uring::prep_write_at"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #1 {
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

define i1 @"uring::prep_pipe_read"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #1 {
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

define i1 @"uring::prep_pipe_write"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #1 {
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

define i1 @"uring::prep_close"(ptr %0, i64 %1, i64 %2) #1 {
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

define i1 @"uring::prep_recv"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #1 {
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

define i1 @"uring::prep_send"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #1 {
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

define i1 @"uring::prep_accept"(ptr %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5) #1 {
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

define i1 @"uring::prep_cancel"(ptr %0, i64 %1, i64 %2) #1 {
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

define i1 @"uring::prep_timeout"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #1 {
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

define i1 @"uring::prep_timeout_ms"(ptr %0, ptr %1, i64 %2, i64 %3) #1 {
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
  br i1 false, label %div.zero_abort, label %div.not_zero

div.not_zero:                                     ; preds = %div.zero_abort, %choice.exit
  %div.is.min = icmp eq i64 %var.load3, -9223372036854775808
  %div.is.ovf = and i1 %div.is.min, false
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.exit
  %4 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %var.load3, 1000
  %raw.int = ptrtoint ptr %var.load2 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

div.ovf_abort:                                    ; preds = %div.not_zero
  %5 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok

addr_gen_check:                                   ; preds = %div.ok
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %div.ok
  store i64 %divtmp, ptr %raw.clean.ptr, align 8
  %var.load4 = load ptr, ptr %var.ts_ptr, align 8
  %ptr.int.l = ptrtoint ptr %var.load4 to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load5 = load i64, ptr %var.ms, align 8
  br i1 false, label %div.zero_abort7, label %div.not_zero6

addr_stale:                                       ; preds = %addr_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

div.not_zero6:                                    ; preds = %div.zero_abort7, %addr_ok
  %div.is.min8 = icmp eq i64 %var.load5, -9223372036854775808
  %div.is.ovf9 = and i1 %div.is.min8, false
  br i1 %div.is.ovf9, label %div.ovf_abort11, label %div.ok10

div.zero_abort7:                                  ; preds = %addr_ok
  %7 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero6

div.ok10:                                         ; preds = %div.ovf_abort11, %div.not_zero6
  %modtmp = srem i64 %var.load5, 1000
  %multmp = mul i64 %modtmp, 1000000
  %raw.int12 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int13 = and i64 %raw.int12, 281474976710655
  %raw.clean.ptr14 = inttoptr i64 %raw.clean.int13 to ptr
  %addr.tag15 = lshr i64 %raw.int12, 48
  %addr.immortal16 = icmp eq i64 %addr.tag15, 0
  br i1 %addr.immortal16, label %addr_ok18, label %addr_gen_check17

div.ovf_abort11:                                  ; preds = %div.not_zero6
  %8 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok10

addr_gen_check17:                                 ; preds = %div.ok10
  %arena.cur20 = call ptr @dva_arena_current()
  %tag.valid21 = call i1 @dva_arena_validate_tag(ptr %arena.cur20, i64 %addr.tag15)
  br i1 %tag.valid21, label %addr_ok18, label %addr_stale19

addr_ok18:                                        ; preds = %addr_stale19, %addr_gen_check17, %div.ok10
  store i64 %multmp, ptr %raw.clean.ptr14, align 8
  %var.load22 = load ptr, ptr %var.ring, align 8
  %var.load23 = load ptr, ptr %var.ts_ptr, align 8
  %var.load24 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_timeout"(ptr %var.load22, ptr %var.load23, i64 0, i64 0, i64 %var.load24)
  ret i1 %call.res

addr_stale19:                                     ; preds = %addr_gen_check17
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok18
}

define i1 @"uring::prep_poll_add"(ptr %0, i64 %1, i64 %2, i64 %3) #1 {
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

define i64 @"uring::sq_space"(ptr %0) #1 {
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
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
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
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag16)
  br i1 %tag.valid22, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
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

addr_stale20:                                     ; preds = %addr_gen_check18
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19
}

define i64 @"uring::cq_ready"(ptr %0) #1 {
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
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
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
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag16)
  br i1 %tag.valid22, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.tail, align 4
  %var.load25 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load24, %var.load25
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  ret i64 %bandtmp

addr_stale20:                                     ; preds = %addr_gen_check18
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19
}

define i64 @"uring::submit_and_wait"(ptr %0, i64 %1) #1 {
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
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
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
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag16)
  br i1 %tag.valid22, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
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

addr_stale20:                                     ; preds = %addr_gen_check18
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19

choice.then:                                      ; preds = %addr_ok19
  %var.load27 = load i64, ptr @"var.uring::IORING_ENTER_GETEVENTS", align 8
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok19
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

define i64 @"uring::submit"(ptr %0) #1 {
entry:
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call i64 @"uring::submit_and_wait"(ptr %var.load, i64 0)
  ret i64 %call.res
}

define ptr @"uring::peek_cqe"(ptr %0) #1 {
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
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

addr_gen_check:                                   ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %entry
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
  %addr.immortal17 = icmp eq i64 %addr.tag16, 0
  br i1 %addr.immortal17, label %addr_ok19, label %addr_gen_check18

addr_stale:                                       ; preds = %addr_gen_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check18:                                 ; preds = %addr_ok
  %arena.cur21 = call ptr @dva_arena_current()
  %tag.valid22 = call i1 @dva_arena_validate_tag(ptr %arena.cur21, i64 %addr.tag16)
  br i1 %tag.valid22, label %addr_ok19, label %addr_stale20

addr_ok19:                                        ; preds = %addr_stale20, %addr_gen_check18, %addr_ok
  %raw.load23 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load23, ptr %var.tail, align 4
  %var.load24 = load i32, ptr %var.head, align 4
  %var.load25 = load i32, ptr %var.tail, align 4
  %coerce.zext = zext i32 %var.load24 to i64
  %coerce.zext26 = zext i32 %var.load25 to i64
  %cmptmp = icmp ne i64 %coerce.zext, %coerce.zext26
  br i1 %cmptmp, label %choice.then, label %choice.else

addr_stale20:                                     ; preds = %addr_gen_check18
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok19

choice.then:                                      ; preds = %addr_ok19
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
  %addr.immortal40 = icmp eq i64 %addr.tag39, 0
  br i1 %addr.immortal40, label %addr_ok42, label %addr_gen_check41

choice.else:                                      ; preds = %addr_ok19
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok126
  %choice.res = phi ptr [ %var.load130, %addr_ok126 ], [ null, %choice.else ]
  ret ptr %choice.res

addr_gen_check41:                                 ; preds = %choice.then
  %arena.cur44 = call ptr @dva_arena_current()
  %tag.valid45 = call i1 @dva_arena_validate_tag(ptr %arena.cur44, i64 %addr.tag39)
  br i1 %tag.valid45, label %addr_ok42, label %addr_stale43

addr_ok42:                                        ; preds = %addr_stale43, %addr_gen_check41, %choice.then
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
  %addr.immortal68 = icmp eq i64 %addr.tag67, 0
  br i1 %addr.immortal68, label %addr_ok70, label %addr_gen_check69

addr_stale43:                                     ; preds = %addr_gen_check41
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok42

addr_gen_check69:                                 ; preds = %addr_ok42
  %arena.cur72 = call ptr @dva_arena_current()
  %tag.valid73 = call i1 @dva_arena_validate_tag(ptr %arena.cur72, i64 %addr.tag67)
  br i1 %tag.valid73, label %addr_ok70, label %addr_stale71

addr_ok70:                                        ; preds = %addr_stale71, %addr_gen_check69, %addr_ok42
  %raw.load74 = load volatile i64, ptr %raw.clean.ptr66, align 8
  %var.load75 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l76 = ptrtoint ptr %var.load75 to i64
  %addtmp77 = add i64 %ptr.int.l76, 8
  %ptr.res78 = inttoptr i64 %addtmp77 to ptr
  %raw.int79 = ptrtoint ptr %ptr.res78 to i64
  %raw.clean.int80 = and i64 %raw.int79, 281474976710655
  %raw.clean.ptr81 = inttoptr i64 %raw.clean.int80 to ptr
  %addr.tag82 = lshr i64 %raw.int79, 48
  %addr.immortal83 = icmp eq i64 %addr.tag82, 0
  br i1 %addr.immortal83, label %addr_ok85, label %addr_gen_check84

addr_stale71:                                     ; preds = %addr_gen_check69
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok70

addr_gen_check84:                                 ; preds = %addr_ok70
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid88 = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %addr.tag82)
  br i1 %tag.valid88, label %addr_ok85, label %addr_stale86

addr_ok85:                                        ; preds = %addr_stale86, %addr_gen_check84, %addr_ok70
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
  %addr.immortal98 = icmp eq i64 %addr.tag97, 0
  br i1 %addr.immortal98, label %addr_ok100, label %addr_gen_check99

addr_stale86:                                     ; preds = %addr_gen_check84
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok85

addr_gen_check99:                                 ; preds = %addr_ok85
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %addr.tag97)
  br i1 %tag.valid103, label %addr_ok100, label %addr_stale101

addr_ok100:                                       ; preds = %addr_stale101, %addr_gen_check99, %addr_ok85
  %raw.load104 = load volatile i32, ptr %raw.clean.ptr96, align 4
  %coerce.zext105 = zext i32 %raw.load104 to i64
  %arena.cur106 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur106, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %raw.load74, ptr %rec.fld, align 8
  %rec.fld107 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %coerce.sext, ptr %rec.fld107, align 8
  %rec.fld108 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %coerce.zext105, ptr %rec.fld108, align 8
  store ptr %rec.alloc, ptr %var.cqe, align 8
  %var.load109 = load ptr, ptr %var.ring, align 8
  %fld.gep110 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load109, i32 0, i32 5
  %fld.load111 = load ptr, ptr %fld.gep110, align 8
  %var.load112 = load ptr, ptr %var.ring, align 8
  %fld.gep113 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load112, i32 0, i32 11
  %fld.load114 = load i64, ptr %fld.gep113, align 8
  %ptr.int.l115 = ptrtoint ptr %fld.load111 to i64
  %addtmp116 = add i64 %ptr.int.l115, %fld.load114
  %ptr.res117 = inttoptr i64 %addtmp116 to ptr
  %var.load118 = load i32, ptr %var.head, align 4
  %addtmp119 = add i32 %var.load118, 1
  %raw.int120 = ptrtoint ptr %ptr.res117 to i64
  %raw.clean.int121 = and i64 %raw.int120, 281474976710655
  %raw.clean.ptr122 = inttoptr i64 %raw.clean.int121 to ptr
  %addr.tag123 = lshr i64 %raw.int120, 48
  %addr.immortal124 = icmp eq i64 %addr.tag123, 0
  br i1 %addr.immortal124, label %addr_ok126, label %addr_gen_check125

addr_stale101:                                    ; preds = %addr_gen_check99
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok100

addr_gen_check125:                                ; preds = %addr_ok100
  %arena.cur128 = call ptr @dva_arena_current()
  %tag.valid129 = call i1 @dva_arena_validate_tag(ptr %arena.cur128, i64 %addr.tag123)
  br i1 %tag.valid129, label %addr_ok126, label %addr_stale127

addr_ok126:                                       ; preds = %addr_stale127, %addr_gen_check125, %addr_ok100
  store i32 %addtmp119, ptr %raw.clean.ptr122, align 4
  %var.load130 = load ptr, ptr %var.cqe, align 8
  br label %choice.exit

addr_stale127:                                    ; preds = %addr_gen_check125
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok126
}

define { i1, i64 } @"uring::wait_cqe"(ptr %0) #1 {
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

define ptr @"uring::reap"(ptr %0) #1 {
entry:
  %var.c = alloca ptr, align 8
  %var._3 = alloca ptr, align 8
  %var.opt = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.28 = alloca i64, align 8
  %loop.idx.28 = alloca i64, align 8
  %"var.cqes'" = alloca ptr, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
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
  store ptr %a.new, ptr %"var.cqes'", align 8
  store i64 0, ptr %loop.idx.28, align 8
  br label %loop.header.28

loop.header.28:                                   ; preds = %loop.latch.28, %entry
  %counter.load = load i64, ptr %loop.idx.28, align 8
  br label %loop.body.28

loop.body.28:                                     ; preds = %loop.header.28
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.28, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call ptr @"uring::peek_cqe"(ptr %var.load)
  store ptr %call.res, ptr %var.opt, align 8
  %var.load2 = load ptr, ptr %var.opt, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

loop.exit.nat.28:                                 ; No predecessors!
  br label %loop.exit.28

loop.latch.28:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.28, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.28, align 8
  br label %loop.header.28

loop.exit.28:                                     ; preds = %choice.else, %loop.exit.nat.28
  %var.load16 = load ptr, ptr %"var.cqes'", align 8
  %a.load17 = load ptr, ptr %"var.cqes'", align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

choice.then:                                      ; preds = %loop.body.28
  store ptr %var.load2, ptr %var._3, align 8
  store ptr %var.load2, ptr %var.c, align 8
  %var.load4 = load ptr, ptr %var.c, align 8
  %a.load = load ptr, ptr %"var.cqes'", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %loop.body.28
  br label %loop.exit.28

choice.exit:                                      ; preds = %a.store
  br label %loop.latch.28

a.create:                                         ; preds = %choice.then
  %arena.cur5 = call ptr @dva_arena_current()
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = call ptr @dva_arena_current()
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

a.create19:                                       ; preds = %loop.exit.28
  %arena.cur21 = call ptr @dva_arena_current()
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = call ptr @dva_arena_current()
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  %a.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 0
  store i64 0, ptr %a.len.gep25, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  store ptr %a.create22, ptr %"var.cqes'", align 8
  br label %a.after20

a.after20:                                        ; preds = %a.create19, %loop.exit.28
  %a.load228 = load ptr, ptr %"var.cqes'", align 8
  ret ptr %a.load228
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

define { i1, i64 } @"uring::drain_pipes"(ptr %0, ptr %1) #1 {
entry:
  %var.fd480 = alloca i64, align 8
  %var.prev = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.nb = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.cqe = alloca ptr, align 8
  %var._110 = alloca i64, align 8
  %var._i109 = alloca i64, align 8
  %loop.step.31 = alloca i64, align 8
  %loop.idx.31 = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.29 = alloca i64, align 8
  %loop.idx.29 = alloca i64, align 8
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
  %arena.cur = call ptr @dva_arena_current()
  %a.create1 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = call ptr @dva_arena_current()
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
  %arena.cur4 = call ptr @dva_arena_current()
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 24)
  %arena.cur5 = call ptr @dva_arena_current()
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
  %arena.cur25 = call ptr @dva_arena_current()
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
  %arena.cur16 = call ptr @dva_arena_current()
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = call ptr @dva_arena_current()
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

b.buf.len26:                                      ; preds = %str_overflow_abort, %choice.exit
  %arena.cur27 = call ptr @dva_arena_current()
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur27, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 %cap.safe, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.scratch, align 8
  store i64 0, ptr %"var.active'", align 8
  %var.load28 = load i64, ptr %var.n, align 8
  store i64 0, ptr %loop.idx.29, align 8
  br label %loop.header.29

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len26

loop.header.29:                                   ; preds = %loop.latch.29, %b.buf.len26
  %counter.load = load i64, ptr %loop.idx.29, align 8
  %loop.cond = icmp slt i64 %counter.load, %var.load28
  br i1 %loop.cond, label %loop.body.29, label %loop.exit.nat.29

loop.body.29:                                     ; preds = %loop.header.29
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.29, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %a.load29 = load ptr, ptr %"var.outs'", align 8
  %a.null30 = icmp eq ptr %a.load29, null
  br i1 %a.null30, label %a.create31, label %a.after32

loop.exit.nat.29:                                 ; preds = %loop.header.29
  br label %loop.exit.29

loop.latch.29:                                    ; preds = %choice.exit97
  %step.val = load i64, ptr %loop.step.29, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.29, align 8
  br label %loop.header.29

loop.exit.29:                                     ; preds = %loop.exit.nat.29
  store i64 0, ptr %loop.idx.31, align 8
  br label %loop.header.31

a.create31:                                       ; preds = %loop.body.29
  %arena.cur33 = call ptr @dva_arena_current()
  %a.create34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 24)
  %arena.cur35 = call ptr @dva_arena_current()
  %a.buf36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 128)
  %a.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 0
  store i64 0, ptr %a.len.gep37, align 8
  %a.data.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 1
  store ptr %a.buf36, ptr %a.data.gep38, align 8
  %a.cap.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 2
  store i64 16, ptr %a.cap.gep39, align 8
  store ptr %a.create34, ptr %"var.outs'", align 8
  br label %a.after32

a.after32:                                        ; preds = %a.create31, %loop.body.29
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
  %arena.cur51 = call ptr @dva_arena_current()
  %a.create52 = call ptr @dva_arena_alloc(ptr %arena.cur51, i64 24)
  %arena.cur53 = call ptr @dva_arena_current()
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
  %arena.cur62 = call ptr @dva_arena_current()
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
  %arena.cur63 = call ptr @dva_arena_current()
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
  br i1 %unwrap.is_pos, label %unwrap.pos.30, label %unwrap.abort.30

unwrap.pos.30:                                    ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay74, 1
  store i64 %unwrap.pay.pos, ptr %var.fd, align 8
  %var.load94 = load i64, ptr %var.fd, align 8
  %cmptmp95 = icmp sge i64 %var.load94, 0
  br i1 %cmptmp95, label %choice.then96, label %choice.exit97

unwrap.abort.30:                                  ; preds = %a.rd.done
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
  %str.tag = lshr i64 %err.msg.len80, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %unwrap.abort.30
  %arena.cur82 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur82, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %unwrap.abort.30
  %err.msg.len32 = trunc i64 %err.msg.len81 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data83 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len84 = load i64, ptr %err.file.len, align 8
  %err.file.len85 = and i64 %err.file.len84, 281474976710655
  %str.tag86 = lshr i64 %err.file.len84, 48
  %str.immortal87 = icmp eq i64 %str.tag86, 0
  br i1 %str.immortal87, label %str_ok89, label %str_gen_check88

str_stale:                                        ; preds = %str_gen_check
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check88:                                  ; preds = %str_ok
  %arena.cur91 = call ptr @dva_arena_current()
  %tag.valid92 = call i1 @dva_arena_validate_tag(ptr %arena.cur91, i64 %str.tag86)
  br i1 %tag.valid92, label %str_ok89, label %str_stale90

str_ok89:                                         ; preds = %str_stale90, %str_gen_check88, %str_ok
  %err.file.len32 = trunc i64 %err.file.len85 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data93 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

str_stale90:                                      ; preds = %str_gen_check88
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok89

err.thread:                                       ; preds = %str_ok89
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok89
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data83, i32 %err.file.len32, ptr %err.file.data93, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then96:                                    ; preds = %unwrap.pos.30
  %var.load98 = load ptr, ptr %var.ring, align 8
  %var.load99 = load i64, ptr %var.fd, align 8
  %var.load100 = load ptr, ptr %var.scratch, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load100, i32 0, i32 1
  %b.ptr101 = load ptr, ptr %b.ptr, align 8
  %var.load102 = load i64, ptr %var.i, align 8
  %multmp103 = mul i64 %var.load102, 4096
  %ptr.int.l = ptrtoint ptr %b.ptr101 to i64
  %addtmp = add i64 %ptr.int.l, %multmp103
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load104 = load i64, ptr %var.i, align 8
  %call.res = call i1 @"uring::prep_pipe_read"(ptr %var.load98, i64 %var.load99, ptr %ptr.res, i64 4096, i64 %var.load104)
  %var.load105 = load i64, ptr %"var.active'", align 8
  %addtmp106 = add i64 %var.load105, 1
  store i64 %addtmp106, ptr %"var.active'", align 8
  br label %choice.exit97

choice.exit97:                                    ; preds = %choice.then96, %unwrap.pos.30
  br label %loop.latch.29

loop.header.31:                                   ; preds = %loop.latch.31, %loop.exit.29
  %counter.load107 = load i64, ptr %loop.idx.31, align 8
  br label %loop.body.31

loop.body.31:                                     ; preds = %loop.header.31
  %loop.rel.i108 = sub i64 %counter.load107, 0
  store i64 1, ptr %loop.step.31, align 8
  store i64 %loop.rel.i108, ptr %var._i109, align 8
  store i64 %counter.load107, ptr %var._110, align 8
  %var.load111 = load i64, ptr %"var.active'", align 8
  %cmptmp112 = icmp sle i64 %var.load111, 0
  br i1 %cmptmp112, label %choice.then113, label %choice.exit114

loop.exit.nat.31:                                 ; No predecessors!
  br label %loop.exit.31

loop.latch.31:                                    ; preds = %choice.exit126
  %step.val494 = load i64, ptr %loop.step.31, align 8
  %loop.next495 = add i64 %counter.load107, %step.val494
  store i64 %loop.next495, ptr %loop.idx.31, align 8
  br label %loop.header.31

loop.exit.31:                                     ; preds = %choice.then113, %loop.exit.nat.31
  %var.load496 = load ptr, ptr %"var.outs'", align 8
  %a.load497 = load ptr, ptr %"var.outs'", align 8
  %a.null498 = icmp eq ptr %a.load497, null
  br i1 %a.null498, label %a.create499, label %a.after500

choice.then113:                                   ; preds = %loop.body.31
  br label %loop.exit.31

choice.exit114:                                   ; preds = %loop.body.31
  %var.load115 = load ptr, ptr %var.ring, align 8
  %call.res116 = call i64 @"uring::submit"(ptr %var.load115)
  %var.load117 = load ptr, ptr %var.ring, align 8
  %call.res118 = call { i1, i64 } @"uring::wait_cqe"(ptr %var.load117)
  %prop.is_pos = extractvalue { i1, i64 } %call.res118, 0
  br i1 %prop.is_pos, label %prop.pos.32, label %prop.ret.32

prop.pos.32:                                      ; preds = %choice.exit114
  %prop.pay.pos = extractvalue { i1, i64 } %call.res118, 1
  %pay.ptr = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.cqe, align 8
  %var.load119 = load ptr, ptr %var.cqe, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load119, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.idx, align 8
  %var.load120 = load i64, ptr %var.idx, align 8
  %cmptmp121 = icmp sge i64 %var.load120, 0
  br i1 %cmptmp121, label %and.33.then, label %and.33.else

prop.ret.32:                                      ; preds = %choice.exit114
  ret { i1, i64 } %call.res118

and.33.then:                                      ; preds = %prop.pos.32
  %var.load122 = load i64, ptr %var.idx, align 8
  %var.load123 = load i64, ptr %var.n, align 8
  %cmptmp124 = icmp slt i64 %var.load122, %var.load123
  br label %and.33.exit

and.33.else:                                      ; preds = %prop.pos.32
  br label %and.33.exit

and.33.exit:                                      ; preds = %and.33.else, %and.33.then
  %and.33.phi = phi i1 [ %cmptmp124, %and.33.then ], [ %cmptmp121, %and.33.else ]
  br i1 %and.33.phi, label %choice.then125, label %choice.exit126

choice.then125:                                   ; preds = %and.33.exit
  %var.load127 = load ptr, ptr %var.cqe, align 8
  %fld.gep128 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load127, i32 0, i32 1
  %fld.load129 = load i64, ptr %fld.gep128, align 8
  %cmptmp130 = icmp sgt i64 %fld.load129, 0
  br i1 %cmptmp130, label %choice.then131, label %choice.else

choice.exit126:                                   ; preds = %choice.exit132, %and.33.exit
  br label %loop.latch.31

choice.then131:                                   ; preds = %choice.then125
  %var.load133 = load ptr, ptr %var.cqe, align 8
  %fld.gep134 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load133, i32 0, i32 1
  %fld.load135 = load i64, ptr %fld.gep134, align 8
  store i64 %fld.load135, ptr %var.nb, align 8
  %var.load136 = load i64, ptr %var.nb, align 8
  %addtmp137 = add i64 %var.load136, 1
  %arena.cur138 = call ptr @dva_arena_current()
  %builder.new139 = call ptr @dva_arena_alloc(ptr %arena.cur138, i64 24)
  %cap.neg140 = icmp slt i64 %addtmp137, 0
  %cap.safe141 = select i1 %cap.neg140, i64 0, i64 %addtmp137
  %b.data.gep142 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new139, i32 0, i32 1
  %b.len.gep143 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new139, i32 0, i32 0
  %b.cap.gep144 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new139, i32 0, i32 2
  %b.buf.len145 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe141, i64 1)
  %sum146 = extractvalue { i64, i1 } %b.buf.len145, 0
  %ovf147 = extractvalue { i64, i1 } %b.buf.len145, 1
  br i1 %ovf147, label %str_overflow_abort149, label %b.buf.len148

choice.else:                                      ; preds = %choice.then125
  %var.load493 = load i64, ptr %"var.active'", align 8
  %subtmp = sub i64 %var.load493, 1
  store i64 %subtmp, ptr %"var.active'", align 8
  br label %choice.exit132

choice.exit132:                                   ; preds = %choice.else, %unwrap.pos.35
  br label %choice.exit126

b.buf.len148:                                     ; preds = %str_overflow_abort149, %choice.then131
  %arena.cur150 = call ptr @dva_arena_current()
  %b.buf151 = call ptr @dva_arena_alloc(ptr %arena.cur150, i64 %sum146)
  %b.nul0152 = getelementptr i8, ptr %b.buf151, i64 0
  store i8 0, ptr %b.nul0152, align 1
  store i64 0, ptr %b.len.gep143, align 8
  store ptr %b.buf151, ptr %b.data.gep142, align 8
  store i64 %cap.safe141, ptr %b.cap.gep144, align 8
  store ptr %builder.new139, ptr %var.b, align 8
  %var.load153 = load ptr, ptr %var.b, align 8
  %b.ptr154 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load153, i32 0, i32 1
  %b.ptr155 = load ptr, ptr %b.ptr154, align 8
  %var.load156 = load ptr, ptr %var.scratch, align 8
  %b.ptr157 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load156, i32 0, i32 1
  %b.ptr158 = load ptr, ptr %b.ptr157, align 8
  %var.load159 = load i64, ptr %var.idx, align 8
  %multmp160 = mul i64 %var.load159, 4096
  %ptr.int.l161 = ptrtoint ptr %b.ptr158 to i64
  %addtmp162 = add i64 %ptr.int.l161, %multmp160
  %ptr.res163 = inttoptr i64 %addtmp162 to ptr
  %var.load164 = load i64, ptr %var.nb, align 8
  %raw.int = ptrtoint ptr %b.ptr155 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %addr.immortal = icmp eq i64 %addr.tag, 0
  br i1 %addr.immortal, label %addr_ok, label %addr_gen_check

str_overflow_abort149:                            ; preds = %choice.then131
  %5 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %b.buf.len148

addr_gen_check:                                   ; preds = %b.buf.len148
  %arena.cur165 = call ptr @dva_arena_current()
  %tag.valid166 = call i1 @dva_arena_validate_tag(ptr %arena.cur165, i64 %addr.tag)
  br i1 %tag.valid166, label %addr_ok, label %addr_stale

addr_ok:                                          ; preds = %addr_stale, %addr_gen_check, %b.buf.len148
  %raw.int167 = ptrtoint ptr %ptr.res163 to i64
  %raw.clean.int168 = and i64 %raw.int167, 281474976710655
  %raw.clean.ptr169 = inttoptr i64 %raw.clean.int168 to ptr
  %addr.tag170 = lshr i64 %raw.int167, 48
  %addr.immortal171 = icmp eq i64 %addr.tag170, 0
  br i1 %addr.immortal171, label %addr_ok173, label %addr_gen_check172

addr_stale:                                       ; preds = %addr_gen_check
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok

addr_gen_check172:                                ; preds = %addr_ok
  %arena.cur175 = call ptr @dva_arena_current()
  %tag.valid176 = call i1 @dva_arena_validate_tag(ptr %arena.cur175, i64 %addr.tag170)
  br i1 %tag.valid176, label %addr_ok173, label %addr_stale174

addr_ok173:                                       ; preds = %addr_stale174, %addr_gen_check172, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr169, i64 %var.load164, i1 false)
  %var.load177 = load ptr, ptr %var.b, align 8
  %b.ptr178 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load177, i32 0, i32 1
  %b.ptr179 = load ptr, ptr %b.ptr178, align 8
  %var.load180 = load i64, ptr %var.nb, align 8
  %ptr.int.l181 = ptrtoint ptr %b.ptr179 to i64
  %addtmp182 = add i64 %ptr.int.l181, %var.load180
  %ptr.res183 = inttoptr i64 %addtmp182 to ptr
  %raw.int184 = ptrtoint ptr %ptr.res183 to i64
  %raw.clean.int185 = and i64 %raw.int184, 281474976710655
  %raw.clean.ptr186 = inttoptr i64 %raw.clean.int185 to ptr
  %addr.tag187 = lshr i64 %raw.int184, 48
  %addr.immortal188 = icmp eq i64 %addr.tag187, 0
  br i1 %addr.immortal188, label %addr_ok190, label %addr_gen_check189

addr_stale174:                                    ; preds = %addr_gen_check172
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok173

addr_gen_check189:                                ; preds = %addr_ok173
  %arena.cur192 = call ptr @dva_arena_current()
  %tag.valid193 = call i1 @dva_arena_validate_tag(ptr %arena.cur192, i64 %addr.tag187)
  br i1 %tag.valid193, label %addr_ok190, label %addr_stale191

addr_ok190:                                       ; preds = %addr_stale191, %addr_gen_check189, %addr_ok173
  store i8 0, ptr %raw.clean.ptr186, align 1
  %var.load194 = load i64, ptr %var.nb, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap195 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load194, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

addr_stale191:                                    ; preds = %addr_gen_check189
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  br label %addr_ok190

b.len_big_check:                                  ; preds = %addr_ok190
  %b.len.big = icmp sgt i64 %var.load194, %b.cap195
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %b.len_oob, %b.len_big_check
  %b.len.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load194, ptr %b.len.gep196, align 8
  %var.load197 = load ptr, ptr %"var.outs'", align 8
  %a.load198 = load ptr, ptr %"var.outs'", align 8
  %a.null199 = icmp eq ptr %a.load198, null
  br i1 %a.null199, label %a.create200, label %a.after201

b.len_oob:                                        ; preds = %b.len_big_check, %addr_ok190
  %9 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  br label %b.len_ok

a.create200:                                      ; preds = %b.len_ok
  %arena.cur202 = call ptr @dva_arena_current()
  %a.create203 = call ptr @dva_arena_alloc(ptr %arena.cur202, i64 24)
  %arena.cur204 = call ptr @dva_arena_current()
  %a.buf205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 128)
  %a.len.gep206 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create203, i32 0, i32 0
  store i64 0, ptr %a.len.gep206, align 8
  %a.data.gep207 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create203, i32 0, i32 1
  store ptr %a.buf205, ptr %a.data.gep207, align 8
  %a.cap.gep208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create203, i32 0, i32 2
  store i64 16, ptr %a.cap.gep208, align 8
  store ptr %a.create203, ptr %"var.outs'", align 8
  br label %a.after201

a.after201:                                       ; preds = %a.create200, %b.len_ok
  %a.load2209 = load ptr, ptr %"var.outs'", align 8
  %var.load210 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull211 = icmp ne ptr %a.load2209, null
  br i1 %a.rd.nonnull211, label %a.rd.check212, label %a.rd.err.null214

a.rd.check212:                                    ; preds = %a.after201
  %a.rd.len217 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2209, i32 0, i32 0
  %a.rd.len218 = load i64, ptr %a.rd.len217, align 8
  %a.rd.ge0219 = icmp sge i64 %var.load210, 0
  %a.rd.lt220 = icmp slt i64 %var.load210, %a.rd.len218
  %a.rd.bounds221 = and i1 %a.rd.ge0219, %a.rd.lt220
  br i1 %a.rd.bounds221, label %a.rd.ok213, label %a.rd.err.oob215

a.rd.ok213:                                       ; preds = %a.rd.check212
  %a.rd.data222 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2209, i32 0, i32 1
  %a.rd.data223 = load ptr, ptr %a.rd.data222, align 8
  %a.rd.elem.gep224 = getelementptr i64, ptr %a.rd.data223, i64 %var.load210
  %a.rd.elem225 = load i64, ptr %a.rd.elem.gep224, align 8
  br label %a.rd.done216

a.rd.err.null214:                                 ; preds = %a.after201
  %arena.cur226 = call ptr @dva_arena_current()
  %err.alloc227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 56)
  %err.code.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc227, i32 0, i32 0
  store i64 4011, ptr %err.code.gep228, align 8
  %err.msg.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc227, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep229, align 8
  %err.file.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc227, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep230, align 8
  %err.line.gep231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc227, i32 0, i32 3
  store i64 393, ptr %err.line.gep231, align 8
  %err.col.gep232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc227, i32 0, i32 4
  store i64 39, ptr %err.col.gep232, align 8
  %err.ctx.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc227, i32 0, i32 5
  %err.ctx0.gep234 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep233, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep234, align 8
  %err.ctx1.gep235 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep233, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep235, align 8
  %err.p2i236 = ptrtoint ptr %err.alloc227 to i64
  br label %a.rd.done216

a.rd.err.oob215:                                  ; preds = %a.rd.check212
  %arena.cur237 = call ptr @dva_arena_current()
  %err.alloc238 = call ptr @dva_arena_alloc(ptr %arena.cur237, i64 56)
  %err.code.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc238, i32 0, i32 0
  store i64 4011, ptr %err.code.gep239, align 8
  %err.msg.gep240 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc238, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep240, align 8
  %err.file.gep241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc238, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep241, align 8
  %err.line.gep242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc238, i32 0, i32 3
  store i64 393, ptr %err.line.gep242, align 8
  %err.col.gep243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc238, i32 0, i32 4
  store i64 39, ptr %err.col.gep243, align 8
  %err.ctx.gep244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc238, i32 0, i32 5
  %err.ctx0.gep245 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep244, i32 0, i32 0
  store i64 %var.load210, ptr %err.ctx0.gep245, align 8
  %err.ctx1.gep246 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep244, i32 0, i32 1
  store i64 %a.rd.len218, ptr %err.ctx1.gep246, align 8
  %err.p2i247 = ptrtoint ptr %err.alloc238 to i64
  br label %a.rd.done216

a.rd.done216:                                     ; preds = %a.rd.err.oob215, %a.rd.err.null214, %a.rd.ok213
  %a.rd.tag248 = phi i1 [ true, %a.rd.ok213 ], [ false, %a.rd.err.null214 ], [ false, %a.rd.err.oob215 ]
  %a.rd.pay249 = phi i64 [ %a.rd.elem225, %a.rd.ok213 ], [ %err.p2i236, %a.rd.err.null214 ], [ %err.p2i247, %a.rd.err.oob215 ]
  %ram.tag250 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag248, 0
  %ram.pay251 = insertvalue { i1, i64 } %ram.tag250, i64 %a.rd.pay249, 1
  %unwrap.is_pos252 = extractvalue { i1, i64 } %ram.pay251, 0
  br i1 %unwrap.is_pos252, label %unwrap.pos.34, label %unwrap.abort.34

unwrap.pos.34:                                    ; preds = %a.rd.done216
  %unwrap.pay.pos298 = extractvalue { i1, i64 } %ram.pay251, 1
  %pay.ptr299 = inttoptr i64 %unwrap.pay.pos298 to ptr
  store ptr %pay.ptr299, ptr %var.prev, align 8
  %var.load300 = load ptr, ptr %"var.outs'", align 8
  %a.load301 = load ptr, ptr %"var.outs'", align 8
  %a.null302 = icmp eq ptr %a.load301, null
  br i1 %a.null302, label %a.create303, label %a.after304

unwrap.abort.34:                                  ; preds = %a.rd.done216
  %unwrap.pay.abort253 = extractvalue { i1, i64 } %ram.pay251, 1
  %err.ptr254 = inttoptr i64 %unwrap.pay.abort253 to ptr
  %err.code.gep255 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr254, i32 0, i32 0
  %err.code256 = load i64, ptr %err.code.gep255, align 8
  %err.msg.gep257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr254, i32 0, i32 1
  %err.msg.struct258 = load ptr, ptr %err.msg.gep257, align 8
  %err.file.gep259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr254, i32 0, i32 2
  %err.file.struct260 = load ptr, ptr %err.file.gep259, align 8
  %err.line.gep261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr254, i32 0, i32 3
  %err.line262 = load i64, ptr %err.line.gep261, align 8
  %err.col.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr254, i32 0, i32 4
  %err.col264 = load i64, ptr %err.col.gep263, align 8
  %err.msg.len265 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct258, i32 0, i32 0
  %err.msg.len266 = load i64, ptr %err.msg.len265, align 8
  %err.msg.len267 = and i64 %err.msg.len266, 281474976710655
  %str.tag268 = lshr i64 %err.msg.len266, 48
  %str.immortal269 = icmp eq i64 %str.tag268, 0
  br i1 %str.immortal269, label %str_ok271, label %str_gen_check270

str_gen_check270:                                 ; preds = %unwrap.abort.34
  %arena.cur273 = call ptr @dva_arena_current()
  %tag.valid274 = call i1 @dva_arena_validate_tag(ptr %arena.cur273, i64 %str.tag268)
  br i1 %tag.valid274, label %str_ok271, label %str_stale272

str_ok271:                                        ; preds = %str_stale272, %str_gen_check270, %unwrap.abort.34
  %err.msg.len32275 = trunc i64 %err.msg.len267 to i32
  %err.msg.data276 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct258, i32 0, i32 1
  %err.msg.data277 = load ptr, ptr %err.msg.data276, align 8
  %err.file.len278 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct260, i32 0, i32 0
  %err.file.len279 = load i64, ptr %err.file.len278, align 8
  %err.file.len280 = and i64 %err.file.len279, 281474976710655
  %str.tag281 = lshr i64 %err.file.len279, 48
  %str.immortal282 = icmp eq i64 %str.tag281, 0
  br i1 %str.immortal282, label %str_ok284, label %str_gen_check283

str_stale272:                                     ; preds = %str_gen_check270
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok271

str_gen_check283:                                 ; preds = %str_ok271
  %arena.cur286 = call ptr @dva_arena_current()
  %tag.valid287 = call i1 @dva_arena_validate_tag(ptr %arena.cur286, i64 %str.tag281)
  br i1 %tag.valid287, label %str_ok284, label %str_stale285

str_ok284:                                        ; preds = %str_stale285, %str_gen_check283, %str_ok271
  %err.file.len32288 = trunc i64 %err.file.len280 to i32
  %err.file.data289 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct260, i32 0, i32 1
  %err.file.data290 = load ptr, ptr %err.file.data289, align 8
  %err.thread.rec291 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread292 = icmp ne ptr %err.thread.rec291, null
  br i1 %err.is.thread292, label %err.thread293, label %err.normal294

str_stale285:                                     ; preds = %str_gen_check283
  %11 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok284

err.thread293:                                    ; preds = %str_ok284
  %err.haserr.gep295 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec291, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep295, align 8
  %err.err.gep296 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec291, i32 0, i32 7
  store ptr %err.ptr254, ptr %err.err.gep296, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal294:                                    ; preds = %str_ok284
  %err.panic.printf297 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code256, i32 %err.msg.len32275, ptr %err.msg.data277, i32 %err.file.len32288, ptr %err.file.data290, i64 %err.line262, i64 %err.col264)
  call void @exit(i32 1)
  unreachable

a.create303:                                      ; preds = %unwrap.pos.34
  %arena.cur305 = call ptr @dva_arena_current()
  %a.create306 = call ptr @dva_arena_alloc(ptr %arena.cur305, i64 24)
  %arena.cur307 = call ptr @dva_arena_current()
  %a.buf308 = call ptr @dva_arena_alloc(ptr %arena.cur307, i64 128)
  %a.len.gep309 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 0
  store i64 0, ptr %a.len.gep309, align 8
  %a.data.gep310 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 1
  store ptr %a.buf308, ptr %a.data.gep310, align 8
  %a.cap.gep311 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create306, i32 0, i32 2
  store i64 16, ptr %a.cap.gep311, align 8
  store ptr %a.create306, ptr %"var.outs'", align 8
  br label %a.after304

a.after304:                                       ; preds = %a.create303, %unwrap.pos.34
  %a.load2312 = load ptr, ptr %"var.outs'", align 8
  %var.load313 = load i64, ptr %var.idx, align 8
  %var.load314 = load ptr, ptr %var.prev, align 8
  %var.load315 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load315, i32 0, i32 0
  %b.freeze.len316 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load315, i32 0, i32 1
  %b.freeze.data317 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after304
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data317, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data317, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data317, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len316, 1
  %arena.cur318 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur318, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data317, i64 %b.freeze.len316, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len316
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after304
  %b.freeze.data319 = phi ptr [ %b.freeze.data317, %a.after304 ], [ %b.freeze.data317, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur320 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len316, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data319, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load315, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load315, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load315, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load314, i32 0, i32 0
  %concat.lhs321 = load i64, ptr %concat.lhs, align 8
  %concat.lhs322 = and i64 %concat.lhs321, 281474976710655
  %str.tag323 = lshr i64 %concat.lhs321, 48
  %str.immortal324 = icmp eq i64 %str.tag323, 0
  br i1 %str.immortal324, label %str_ok326, label %str_gen_check325

str_gen_check325:                                 ; preds = %b.freeze.done
  %arena.cur328 = call ptr @dva_arena_current()
  %tag.valid329 = call i1 @dva_arena_validate_tag(ptr %arena.cur328, i64 %str.tag323)
  br i1 %tag.valid329, label %str_ok326, label %str_stale327

str_ok326:                                        ; preds = %str_stale327, %str_gen_check325, %b.freeze.done
  %concat.lhs330 = getelementptr inbounds { i64, ptr }, ptr %var.load314, i32 0, i32 1
  %concat.lhs331 = load ptr, ptr %concat.lhs330, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %concat.rhs332 = load i64, ptr %concat.rhs, align 8
  %concat.rhs333 = and i64 %concat.rhs332, 281474976710655
  %str.tag334 = lshr i64 %concat.rhs332, 48
  %str.immortal335 = icmp eq i64 %str.tag334, 0
  br i1 %str.immortal335, label %str_ok337, label %str_gen_check336

str_stale327:                                     ; preds = %str_gen_check325
  %12 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok326

str_gen_check336:                                 ; preds = %str_ok326
  %arena.cur339 = call ptr @dva_arena_current()
  %tag.valid340 = call i1 @dva_arena_validate_tag(ptr %arena.cur339, i64 %str.tag334)
  br i1 %tag.valid340, label %str_ok337, label %str_stale338

str_ok337:                                        ; preds = %str_stale338, %str_gen_check336, %str_ok326
  %concat.rhs341 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %concat.rhs342 = load ptr, ptr %concat.rhs341, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs322, i64 %concat.rhs333)
  %sum343 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf344 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf344, label %str_overflow_abort346, label %concat.sum.len345

str_stale338:                                     ; preds = %str_gen_check336
  %13 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok337

concat.sum.len345:                                ; preds = %str_overflow_abort346, %str_ok337
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum343, i64 1)
  %sum347 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf348 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf348, label %str_overflow_abort350, label %concat.tot.len349

str_overflow_abort346:                            ; preds = %str_ok337
  %14 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.sum.len345

concat.tot.len349:                                ; preds = %str_overflow_abort350, %concat.sum.len345
  %arena.cur351 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 %sum347)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs331, i64 %concat.lhs322, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs322
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs342, i64 %concat.rhs333, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum343
  store i8 0, ptr %concat.nul, align 1
  %arena.cur352 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur352, i64 16)
  %str.build.len.gep353 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum343, ptr %str.build.len.gep353, align 8
  %str.build.data.gep354 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep354, align 8
  %slot.p2i = ptrtoint ptr %concat.str to i64
  %a.wr.nonnull = icmp ne ptr %a.load2312, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

str_overflow_abort350:                            ; preds = %concat.sum.len345
  %15 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  br label %concat.tot.len349

a.wr.check:                                       ; preds = %concat.tot.len349
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2312, i32 0, i32 0
  %a.wr.len355 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load313, 0
  %a.wr.lt = icmp slt i64 %var.load313, %a.wr.len355
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2312, i32 0, i32 1
  %a.wr.data356 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep357 = getelementptr i64, ptr %a.wr.data356, i64 %var.load313
  store i64 %slot.p2i, ptr %a.elem.gep357, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %concat.tot.len349
  %arena.cur358 = call ptr @dva_arena_current()
  %err.alloc359 = call ptr @dva_arena_alloc(ptr %arena.cur358, i64 56)
  %err.code.gep360 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 0
  store i64 4011, ptr %err.code.gep360, align 8
  %err.msg.gep361 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep361, align 8
  %err.file.gep362 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep362, align 8
  %err.line.gep363 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 3
  store i64 0, ptr %err.line.gep363, align 8
  %err.col.gep364 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 4
  store i64 0, ptr %err.col.gep364, align 8
  %err.ctx.gep365 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc359, i32 0, i32 5
  %err.ctx0.gep366 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep365, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep366, align 8
  %err.ctx1.gep367 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep365, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep367, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur368 = call ptr @dva_arena_current()
  %err.alloc369 = call ptr @dva_arena_alloc(ptr %arena.cur368, i64 56)
  %err.code.gep370 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 0
  store i64 4011, ptr %err.code.gep370, align 8
  %err.msg.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep371, align 8
  %err.file.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep372, align 8
  %err.line.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 3
  store i64 0, ptr %err.line.gep373, align 8
  %err.col.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 4
  store i64 0, ptr %err.col.gep374, align 8
  %err.ctx.gep375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc369, i32 0, i32 5
  %err.ctx0.gep376 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep375, i32 0, i32 0
  store i64 %var.load313, ptr %err.ctx0.gep376, align 8
  %err.ctx1.gep377 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep375, i32 0, i32 1
  store i64 %a.wr.len355, ptr %err.ctx1.gep377, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc359, %a.wr.err.null ], [ %err.alloc369, %a.wr.err.oob ]
  %var.load378 = load ptr, ptr %var.fds, align 8
  %a.load379 = load ptr, ptr %var.fds, align 8
  %a.null380 = icmp eq ptr %a.load379, null
  br i1 %a.null380, label %a.create381, label %a.after382

a.create381:                                      ; preds = %a.wr.done
  %arena.cur383 = call ptr @dva_arena_current()
  %a.create384 = call ptr @dva_arena_alloc(ptr %arena.cur383, i64 24)
  %arena.cur385 = call ptr @dva_arena_current()
  %a.buf386 = call ptr @dva_arena_alloc(ptr %arena.cur385, i64 128)
  %a.len.gep387 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create384, i32 0, i32 0
  store i64 0, ptr %a.len.gep387, align 8
  %a.data.gep388 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create384, i32 0, i32 1
  store ptr %a.buf386, ptr %a.data.gep388, align 8
  %a.cap.gep389 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create384, i32 0, i32 2
  store i64 16, ptr %a.cap.gep389, align 8
  store ptr %a.create384, ptr %var.fds, align 8
  br label %a.after382

a.after382:                                       ; preds = %a.create381, %a.wr.done
  %a.load2390 = load ptr, ptr %var.fds, align 8
  %var.load391 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull392 = icmp ne ptr %a.load2390, null
  br i1 %a.rd.nonnull392, label %a.rd.check393, label %a.rd.err.null395

a.rd.check393:                                    ; preds = %a.after382
  %a.rd.len398 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2390, i32 0, i32 0
  %a.rd.len399 = load i64, ptr %a.rd.len398, align 8
  %a.rd.ge0400 = icmp sge i64 %var.load391, 0
  %a.rd.lt401 = icmp slt i64 %var.load391, %a.rd.len399
  %a.rd.bounds402 = and i1 %a.rd.ge0400, %a.rd.lt401
  br i1 %a.rd.bounds402, label %a.rd.ok394, label %a.rd.err.oob396

a.rd.ok394:                                       ; preds = %a.rd.check393
  %a.rd.data403 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2390, i32 0, i32 1
  %a.rd.data404 = load ptr, ptr %a.rd.data403, align 8
  %a.rd.elem.gep405 = getelementptr i64, ptr %a.rd.data404, i64 %var.load391
  %a.rd.elem406 = load i64, ptr %a.rd.elem.gep405, align 8
  br label %a.rd.done397

a.rd.err.null395:                                 ; preds = %a.after382
  %arena.cur407 = call ptr @dva_arena_current()
  %err.alloc408 = call ptr @dva_arena_alloc(ptr %arena.cur407, i64 56)
  %err.code.gep409 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 0
  store i64 4011, ptr %err.code.gep409, align 8
  %err.msg.gep410 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep410, align 8
  %err.file.gep411 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep411, align 8
  %err.line.gep412 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 3
  store i64 395, ptr %err.line.gep412, align 8
  %err.col.gep413 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 4
  store i64 35, ptr %err.col.gep413, align 8
  %err.ctx.gep414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc408, i32 0, i32 5
  %err.ctx0.gep415 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep414, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep415, align 8
  %err.ctx1.gep416 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep414, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep416, align 8
  %err.p2i417 = ptrtoint ptr %err.alloc408 to i64
  br label %a.rd.done397

a.rd.err.oob396:                                  ; preds = %a.rd.check393
  %arena.cur418 = call ptr @dva_arena_current()
  %err.alloc419 = call ptr @dva_arena_alloc(ptr %arena.cur418, i64 56)
  %err.code.gep420 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc419, i32 0, i32 0
  store i64 4011, ptr %err.code.gep420, align 8
  %err.msg.gep421 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc419, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep421, align 8
  %err.file.gep422 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc419, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep422, align 8
  %err.line.gep423 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc419, i32 0, i32 3
  store i64 395, ptr %err.line.gep423, align 8
  %err.col.gep424 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc419, i32 0, i32 4
  store i64 35, ptr %err.col.gep424, align 8
  %err.ctx.gep425 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc419, i32 0, i32 5
  %err.ctx0.gep426 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep425, i32 0, i32 0
  store i64 %var.load391, ptr %err.ctx0.gep426, align 8
  %err.ctx1.gep427 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep425, i32 0, i32 1
  store i64 %a.rd.len399, ptr %err.ctx1.gep427, align 8
  %err.p2i428 = ptrtoint ptr %err.alloc419 to i64
  br label %a.rd.done397

a.rd.done397:                                     ; preds = %a.rd.err.oob396, %a.rd.err.null395, %a.rd.ok394
  %a.rd.tag429 = phi i1 [ true, %a.rd.ok394 ], [ false, %a.rd.err.null395 ], [ false, %a.rd.err.oob396 ]
  %a.rd.pay430 = phi i64 [ %a.rd.elem406, %a.rd.ok394 ], [ %err.p2i417, %a.rd.err.null395 ], [ %err.p2i428, %a.rd.err.oob396 ]
  %ram.tag431 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag429, 0
  %ram.pay432 = insertvalue { i1, i64 } %ram.tag431, i64 %a.rd.pay430, 1
  %unwrap.is_pos433 = extractvalue { i1, i64 } %ram.pay432, 0
  br i1 %unwrap.is_pos433, label %unwrap.pos.35, label %unwrap.abort.35

unwrap.pos.35:                                    ; preds = %a.rd.done397
  %unwrap.pay.pos479 = extractvalue { i1, i64 } %ram.pay432, 1
  store i64 %unwrap.pay.pos479, ptr %var.fd480, align 8
  %var.load481 = load ptr, ptr %var.ring, align 8
  %var.load482 = load i64, ptr %var.fd480, align 8
  %var.load483 = load ptr, ptr %var.scratch, align 8
  %b.ptr484 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load483, i32 0, i32 1
  %b.ptr485 = load ptr, ptr %b.ptr484, align 8
  %var.load486 = load i64, ptr %var.idx, align 8
  %multmp487 = mul i64 %var.load486, 4096
  %ptr.int.l488 = ptrtoint ptr %b.ptr485 to i64
  %addtmp489 = add i64 %ptr.int.l488, %multmp487
  %ptr.res490 = inttoptr i64 %addtmp489 to ptr
  %var.load491 = load i64, ptr %var.idx, align 8
  %call.res492 = call i1 @"uring::prep_pipe_read"(ptr %var.load481, i64 %var.load482, ptr %ptr.res490, i64 4096, i64 %var.load491)
  br label %choice.exit132

unwrap.abort.35:                                  ; preds = %a.rd.done397
  %unwrap.pay.abort434 = extractvalue { i1, i64 } %ram.pay432, 1
  %err.ptr435 = inttoptr i64 %unwrap.pay.abort434 to ptr
  %err.code.gep436 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr435, i32 0, i32 0
  %err.code437 = load i64, ptr %err.code.gep436, align 8
  %err.msg.gep438 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr435, i32 0, i32 1
  %err.msg.struct439 = load ptr, ptr %err.msg.gep438, align 8
  %err.file.gep440 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr435, i32 0, i32 2
  %err.file.struct441 = load ptr, ptr %err.file.gep440, align 8
  %err.line.gep442 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr435, i32 0, i32 3
  %err.line443 = load i64, ptr %err.line.gep442, align 8
  %err.col.gep444 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr435, i32 0, i32 4
  %err.col445 = load i64, ptr %err.col.gep444, align 8
  %err.msg.len446 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct439, i32 0, i32 0
  %err.msg.len447 = load i64, ptr %err.msg.len446, align 8
  %err.msg.len448 = and i64 %err.msg.len447, 281474976710655
  %str.tag449 = lshr i64 %err.msg.len447, 48
  %str.immortal450 = icmp eq i64 %str.tag449, 0
  br i1 %str.immortal450, label %str_ok452, label %str_gen_check451

str_gen_check451:                                 ; preds = %unwrap.abort.35
  %arena.cur454 = call ptr @dva_arena_current()
  %tag.valid455 = call i1 @dva_arena_validate_tag(ptr %arena.cur454, i64 %str.tag449)
  br i1 %tag.valid455, label %str_ok452, label %str_stale453

str_ok452:                                        ; preds = %str_stale453, %str_gen_check451, %unwrap.abort.35
  %err.msg.len32456 = trunc i64 %err.msg.len448 to i32
  %err.msg.data457 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct439, i32 0, i32 1
  %err.msg.data458 = load ptr, ptr %err.msg.data457, align 8
  %err.file.len459 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct441, i32 0, i32 0
  %err.file.len460 = load i64, ptr %err.file.len459, align 8
  %err.file.len461 = and i64 %err.file.len460, 281474976710655
  %str.tag462 = lshr i64 %err.file.len460, 48
  %str.immortal463 = icmp eq i64 %str.tag462, 0
  br i1 %str.immortal463, label %str_ok465, label %str_gen_check464

str_stale453:                                     ; preds = %str_gen_check451
  %16 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok452

str_gen_check464:                                 ; preds = %str_ok452
  %arena.cur467 = call ptr @dva_arena_current()
  %tag.valid468 = call i1 @dva_arena_validate_tag(ptr %arena.cur467, i64 %str.tag462)
  br i1 %tag.valid468, label %str_ok465, label %str_stale466

str_ok465:                                        ; preds = %str_stale466, %str_gen_check464, %str_ok452
  %err.file.len32469 = trunc i64 %err.file.len461 to i32
  %err.file.data470 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct441, i32 0, i32 1
  %err.file.data471 = load ptr, ptr %err.file.data470, align 8
  %err.thread.rec472 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread473 = icmp ne ptr %err.thread.rec472, null
  br i1 %err.is.thread473, label %err.thread474, label %err.normal475

str_stale466:                                     ; preds = %str_gen_check464
  %17 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok465

err.thread474:                                    ; preds = %str_ok465
  %err.haserr.gep476 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec472, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep476, align 8
  %err.err.gep477 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec472, i32 0, i32 7
  store ptr %err.ptr435, ptr %err.err.gep477, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal475:                                    ; preds = %str_ok465
  %err.panic.printf478 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code437, i32 %err.msg.len32456, ptr %err.msg.data458, i32 %err.file.len32469, ptr %err.file.data471, i64 %err.line443, i64 %err.col445)
  call void @exit(i32 1)
  unreachable

a.create499:                                      ; preds = %loop.exit.31
  %arena.cur501 = call ptr @dva_arena_current()
  %a.create502 = call ptr @dva_arena_alloc(ptr %arena.cur501, i64 24)
  %arena.cur503 = call ptr @dva_arena_current()
  %a.buf504 = call ptr @dva_arena_alloc(ptr %arena.cur503, i64 128)
  %a.len.gep505 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create502, i32 0, i32 0
  store i64 0, ptr %a.len.gep505, align 8
  %a.data.gep506 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create502, i32 0, i32 1
  store ptr %a.buf504, ptr %a.data.gep506, align 8
  %a.cap.gep507 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create502, i32 0, i32 2
  store i64 16, ptr %a.cap.gep507, align 8
  store ptr %a.create502, ptr %"var.outs'", align 8
  br label %a.after500

a.after500:                                       ; preds = %a.create499, %loop.exit.31
  %a.load2508 = load ptr, ptr %"var.outs'", align 8
  %p.to.i64509 = ptrtoint ptr %a.load2508 to i64
  %ram.pay510 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64509, 1
  ret { i1, i64 } %ram.pay510
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

define void @"uring::close"(ptr %0) #1 {
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

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
