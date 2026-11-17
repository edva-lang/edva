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
  %tag.immortal = icmp eq i64 %addr.tag, 0
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit
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

tag.gen_check:                                    ; preds = %choice.exit
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur40 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur40, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
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
  br i1 %tag.immortal18, label %addr_ok17, label %tag.gen_check19

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %8 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok17:                                        ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %addr_ok
  %raw.load27 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load27, ptr %var.tail, align 4
  %var.load28 = load i32, ptr %var.tail, align 4
  %var.load29 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load28, %var.load29
  %coerce.zext = zext i32 %subtmp to i64
  store i64 %coerce.zext, ptr %var.used, align 8
  %var.load30 = load i64, ptr %var.used, align 8
  %var.load31 = load ptr, ptr %var.ring, align 8
  %fld.gep32 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load31, i32 0, i32 15
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %cmptmp = icmp sge i64 %var.load30, %fld.load33
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.gen_check19:                                  ; preds = %addr_ok
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %addr.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %addr_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %addr.tag16)
  br i1 %tag.valid25, label %addr_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %9 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %addr_ok17

choice.then:                                      ; preds = %addr_ok17
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %addr_ok17
  %var.load34 = load ptr, ptr %var.ring, align 8
  %fld.gep35 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load34, i32 0, i32 1
  %fld.load36 = load ptr, ptr %fld.gep35, align 8
  %var.load37 = load ptr, ptr %var.ring, align 8
  %fld.gep38 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load37, i32 0, i32 9
  %fld.load39 = load i64, ptr %fld.gep38, align 8
  %ptr.int.l40 = ptrtoint ptr %fld.load36 to i64
  %addtmp41 = add i64 %ptr.int.l40, %fld.load39
  %ptr.res42 = inttoptr i64 %addtmp41 to ptr
  %raw.int43 = ptrtoint ptr %ptr.res42 to i64
  %raw.clean.int44 = and i64 %raw.int43, 281474976710655
  %raw.clean.ptr45 = inttoptr i64 %raw.clean.int44 to ptr
  %addr.tag46 = lshr i64 %raw.int43, 48
  %tag.immortal48 = icmp eq i64 %addr.tag46, 0
  br i1 %tag.immortal48, label %addr_ok47, label %tag.gen_check49

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr_ok47:                                        ; preds = %abort.dead56, %tag.slow_check50, %tag.gen_check49, %choice.exit
  %raw.load57 = load volatile i32, ptr %raw.clean.ptr45, align 4
  store i32 %raw.load57, ptr %var.mask, align 4
  %var.load58 = load i32, ptr %var.tail, align 4
  %var.load59 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load58, %var.load59
  %coerce.zext60 = zext i32 %bandtmp to i64
  store i64 %coerce.zext60, ptr %var.idx, align 8
  %var.load61 = load ptr, ptr %var.ring, align 8
  %fld.gep62 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load61, i32 0, i32 3
  %fld.load63 = load ptr, ptr %fld.gep62, align 8
  %var.load64 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load64, 64
  %ptr.int.l65 = ptrtoint ptr %fld.load63 to i64
  %addtmp66 = add i64 %ptr.int.l65, %multmp
  %ptr.res67 = inttoptr i64 %addtmp66 to ptr
  store ptr %ptr.res67, ptr %var.sqe_dest, align 8
  %var.load68 = load i64, ptr %var.op, align 8
  %var.load69 = load i64, ptr @"var.uring::OP_ASYNC_CANCEL", align 8
  %cmptmp70 = icmp eq i64 %var.load68, %var.load69
  br i1 %cmptmp70, label %choice.then71, label %choice.else

tag.gen_check49:                                  ; preds = %choice.exit
  %active.gen52 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok53 = icmp eq i64 %addr.tag46, %active.gen52
  br i1 %tag.fast.ok53, label %addr_ok47, label %tag.slow_check50

tag.slow_check50:                                 ; preds = %tag.gen_check49
  %arena.cur54 = call ptr @dva_arena_current()
  %tag.valid55 = call i1 @dva_arena_validate_tag(ptr %arena.cur54, i64 %addr.tag46)
  br i1 %tag.valid55, label %addr_ok47, label %tag.stale51

tag.stale51:                                      ; preds = %tag.slow_check50
  %10 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead56:                                     ; No predecessors!
  br label %addr_ok47

choice.then71:                                    ; preds = %addr_ok47
  %var.load73 = load ptr, ptr %var.addr, align 8
  br label %choice.exit72

choice.else:                                      ; preds = %addr_ok47
  %var.load74 = load ptr, ptr %var.addr, align 8
  %ptrmask = call ptr @llvm.ptrmask.p0.i64(ptr %var.load74, i64 281474976710655)
  br label %choice.exit72

choice.exit72:                                    ; preds = %choice.else, %choice.then71
  %choice.res = phi ptr [ %var.load73, %choice.then71 ], [ %ptrmask, %choice.else ]
  store ptr %choice.res, ptr %var.target_addr, align 8
  %var.load75 = load ptr, ptr %var.sqe_dest, align 8
  %raw.int76 = ptrtoint ptr %var.load75 to i64
  %raw.clean.int77 = and i64 %raw.int76, 281474976710655
  %raw.clean.ptr78 = inttoptr i64 %raw.clean.int77 to ptr
  %addr.tag79 = lshr i64 %raw.int76, 48
  %tag.immortal81 = icmp eq i64 %addr.tag79, 0
  br i1 %tag.immortal81, label %addr_ok80, label %tag.gen_check82

addr_ok80:                                        ; preds = %abort.dead89, %tag.slow_check83, %tag.gen_check82, %choice.exit72
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr78, i8 0, i64 64, i1 false)
  %var.load90 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l91 = ptrtoint ptr %var.load90 to i64
  %addtmp92 = add i64 %ptr.int.l91, 0
  %ptr.res93 = inttoptr i64 %addtmp92 to ptr
  %var.load94 = load i64, ptr %var.op, align 8
  %coerce.trunc = trunc i64 %var.load94 to i8
  %raw.int95 = ptrtoint ptr %ptr.res93 to i64
  %raw.clean.int96 = and i64 %raw.int95, 281474976710655
  %raw.clean.ptr97 = inttoptr i64 %raw.clean.int96 to ptr
  %addr.tag98 = lshr i64 %raw.int95, 48
  %tag.immortal100 = icmp eq i64 %addr.tag98, 0
  br i1 %tag.immortal100, label %addr_ok99, label %tag.gen_check101

tag.gen_check82:                                  ; preds = %choice.exit72
  %active.gen85 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok86 = icmp eq i64 %addr.tag79, %active.gen85
  br i1 %tag.fast.ok86, label %addr_ok80, label %tag.slow_check83

tag.slow_check83:                                 ; preds = %tag.gen_check82
  %arena.cur87 = call ptr @dva_arena_current()
  %tag.valid88 = call i1 @dva_arena_validate_tag(ptr %arena.cur87, i64 %addr.tag79)
  br i1 %tag.valid88, label %addr_ok80, label %tag.stale84

tag.stale84:                                      ; preds = %tag.slow_check83
  %11 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead89:                                     ; No predecessors!
  br label %addr_ok80

addr_ok99:                                        ; preds = %abort.dead108, %tag.slow_check102, %tag.gen_check101, %addr_ok80
  store i8 %coerce.trunc, ptr %raw.clean.ptr97, align 1
  %var.load109 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l110 = ptrtoint ptr %var.load109 to i64
  %addtmp111 = add i64 %ptr.int.l110, 4
  %ptr.res112 = inttoptr i64 %addtmp111 to ptr
  %var.load113 = load i64, ptr %var.fd, align 8
  %coerce.trunc114 = trunc i64 %var.load113 to i32
  %raw.int115 = ptrtoint ptr %ptr.res112 to i64
  %raw.clean.int116 = and i64 %raw.int115, 281474976710655
  %raw.clean.ptr117 = inttoptr i64 %raw.clean.int116 to ptr
  %addr.tag118 = lshr i64 %raw.int115, 48
  %tag.immortal120 = icmp eq i64 %addr.tag118, 0
  br i1 %tag.immortal120, label %addr_ok119, label %tag.gen_check121

tag.gen_check101:                                 ; preds = %addr_ok80
  %active.gen104 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok105 = icmp eq i64 %addr.tag98, %active.gen104
  br i1 %tag.fast.ok105, label %addr_ok99, label %tag.slow_check102

tag.slow_check102:                                ; preds = %tag.gen_check101
  %arena.cur106 = call ptr @dva_arena_current()
  %tag.valid107 = call i1 @dva_arena_validate_tag(ptr %arena.cur106, i64 %addr.tag98)
  br i1 %tag.valid107, label %addr_ok99, label %tag.stale103

tag.stale103:                                     ; preds = %tag.slow_check102
  %12 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead108:                                    ; No predecessors!
  br label %addr_ok99

addr_ok119:                                       ; preds = %abort.dead128, %tag.slow_check122, %tag.gen_check121, %addr_ok99
  store i32 %coerce.trunc114, ptr %raw.clean.ptr117, align 4
  %var.load129 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l130 = ptrtoint ptr %var.load129 to i64
  %addtmp131 = add i64 %ptr.int.l130, 8
  %ptr.res132 = inttoptr i64 %addtmp131 to ptr
  %var.load133 = load i64, ptr %var.off, align 8
  %raw.int134 = ptrtoint ptr %ptr.res132 to i64
  %raw.clean.int135 = and i64 %raw.int134, 281474976710655
  %raw.clean.ptr136 = inttoptr i64 %raw.clean.int135 to ptr
  %addr.tag137 = lshr i64 %raw.int134, 48
  %tag.immortal139 = icmp eq i64 %addr.tag137, 0
  br i1 %tag.immortal139, label %addr_ok138, label %tag.gen_check140

tag.gen_check121:                                 ; preds = %addr_ok99
  %active.gen124 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok125 = icmp eq i64 %addr.tag118, %active.gen124
  br i1 %tag.fast.ok125, label %addr_ok119, label %tag.slow_check122

tag.slow_check122:                                ; preds = %tag.gen_check121
  %arena.cur126 = call ptr @dva_arena_current()
  %tag.valid127 = call i1 @dva_arena_validate_tag(ptr %arena.cur126, i64 %addr.tag118)
  br i1 %tag.valid127, label %addr_ok119, label %tag.stale123

tag.stale123:                                     ; preds = %tag.slow_check122
  %13 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %addr_ok119

addr_ok138:                                       ; preds = %abort.dead147, %tag.slow_check141, %tag.gen_check140, %addr_ok119
  store i64 %var.load133, ptr %raw.clean.ptr136, align 8
  %var.load148 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l149 = ptrtoint ptr %var.load148 to i64
  %addtmp150 = add i64 %ptr.int.l149, 16
  %ptr.res151 = inttoptr i64 %addtmp150 to ptr
  %var.load152 = load ptr, ptr %var.target_addr, align 8
  %raw.int153 = ptrtoint ptr %ptr.res151 to i64
  %raw.clean.int154 = and i64 %raw.int153, 281474976710655
  %raw.clean.ptr155 = inttoptr i64 %raw.clean.int154 to ptr
  %addr.tag156 = lshr i64 %raw.int153, 48
  %tag.immortal158 = icmp eq i64 %addr.tag156, 0
  br i1 %tag.immortal158, label %addr_ok157, label %tag.gen_check159

tag.gen_check140:                                 ; preds = %addr_ok119
  %active.gen143 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok144 = icmp eq i64 %addr.tag137, %active.gen143
  br i1 %tag.fast.ok144, label %addr_ok138, label %tag.slow_check141

tag.slow_check141:                                ; preds = %tag.gen_check140
  %arena.cur145 = call ptr @dva_arena_current()
  %tag.valid146 = call i1 @dva_arena_validate_tag(ptr %arena.cur145, i64 %addr.tag137)
  br i1 %tag.valid146, label %addr_ok138, label %tag.stale142

tag.stale142:                                     ; preds = %tag.slow_check141
  %14 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead147:                                    ; No predecessors!
  br label %addr_ok138

addr_ok157:                                       ; preds = %abort.dead166, %tag.slow_check160, %tag.gen_check159, %addr_ok138
  store ptr %var.load152, ptr %raw.clean.ptr155, align 8
  %var.load167 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l168 = ptrtoint ptr %var.load167 to i64
  %addtmp169 = add i64 %ptr.int.l168, 24
  %ptr.res170 = inttoptr i64 %addtmp169 to ptr
  %var.load171 = load i64, ptr %var.len, align 8
  %coerce.trunc172 = trunc i64 %var.load171 to i32
  %raw.int173 = ptrtoint ptr %ptr.res170 to i64
  %raw.clean.int174 = and i64 %raw.int173, 281474976710655
  %raw.clean.ptr175 = inttoptr i64 %raw.clean.int174 to ptr
  %addr.tag176 = lshr i64 %raw.int173, 48
  %tag.immortal178 = icmp eq i64 %addr.tag176, 0
  br i1 %tag.immortal178, label %addr_ok177, label %tag.gen_check179

tag.gen_check159:                                 ; preds = %addr_ok138
  %active.gen162 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok163 = icmp eq i64 %addr.tag156, %active.gen162
  br i1 %tag.fast.ok163, label %addr_ok157, label %tag.slow_check160

tag.slow_check160:                                ; preds = %tag.gen_check159
  %arena.cur164 = call ptr @dva_arena_current()
  %tag.valid165 = call i1 @dva_arena_validate_tag(ptr %arena.cur164, i64 %addr.tag156)
  br i1 %tag.valid165, label %addr_ok157, label %tag.stale161

tag.stale161:                                     ; preds = %tag.slow_check160
  %15 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead166:                                    ; No predecessors!
  br label %addr_ok157

addr_ok177:                                       ; preds = %abort.dead186, %tag.slow_check180, %tag.gen_check179, %addr_ok157
  store i32 %coerce.trunc172, ptr %raw.clean.ptr175, align 4
  %var.load187 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l188 = ptrtoint ptr %var.load187 to i64
  %addtmp189 = add i64 %ptr.int.l188, 28
  %ptr.res190 = inttoptr i64 %addtmp189 to ptr
  %var.load191 = load i64, ptr %var.op_flags, align 8
  %coerce.trunc192 = trunc i64 %var.load191 to i32
  %raw.int193 = ptrtoint ptr %ptr.res190 to i64
  %raw.clean.int194 = and i64 %raw.int193, 281474976710655
  %raw.clean.ptr195 = inttoptr i64 %raw.clean.int194 to ptr
  %addr.tag196 = lshr i64 %raw.int193, 48
  %tag.immortal198 = icmp eq i64 %addr.tag196, 0
  br i1 %tag.immortal198, label %addr_ok197, label %tag.gen_check199

tag.gen_check179:                                 ; preds = %addr_ok157
  %active.gen182 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok183 = icmp eq i64 %addr.tag176, %active.gen182
  br i1 %tag.fast.ok183, label %addr_ok177, label %tag.slow_check180

tag.slow_check180:                                ; preds = %tag.gen_check179
  %arena.cur184 = call ptr @dva_arena_current()
  %tag.valid185 = call i1 @dva_arena_validate_tag(ptr %arena.cur184, i64 %addr.tag176)
  br i1 %tag.valid185, label %addr_ok177, label %tag.stale181

tag.stale181:                                     ; preds = %tag.slow_check180
  %16 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead186:                                    ; No predecessors!
  br label %addr_ok177

addr_ok197:                                       ; preds = %abort.dead206, %tag.slow_check200, %tag.gen_check199, %addr_ok177
  store i32 %coerce.trunc192, ptr %raw.clean.ptr195, align 4
  %var.load207 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l208 = ptrtoint ptr %var.load207 to i64
  %addtmp209 = add i64 %ptr.int.l208, 32
  %ptr.res210 = inttoptr i64 %addtmp209 to ptr
  %var.load211 = load i64, ptr %var.user_data, align 8
  %raw.int212 = ptrtoint ptr %ptr.res210 to i64
  %raw.clean.int213 = and i64 %raw.int212, 281474976710655
  %raw.clean.ptr214 = inttoptr i64 %raw.clean.int213 to ptr
  %addr.tag215 = lshr i64 %raw.int212, 48
  %tag.immortal217 = icmp eq i64 %addr.tag215, 0
  br i1 %tag.immortal217, label %addr_ok216, label %tag.gen_check218

tag.gen_check199:                                 ; preds = %addr_ok177
  %active.gen202 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok203 = icmp eq i64 %addr.tag196, %active.gen202
  br i1 %tag.fast.ok203, label %addr_ok197, label %tag.slow_check200

tag.slow_check200:                                ; preds = %tag.gen_check199
  %arena.cur204 = call ptr @dva_arena_current()
  %tag.valid205 = call i1 @dva_arena_validate_tag(ptr %arena.cur204, i64 %addr.tag196)
  br i1 %tag.valid205, label %addr_ok197, label %tag.stale201

tag.stale201:                                     ; preds = %tag.slow_check200
  %17 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead206:                                    ; No predecessors!
  br label %addr_ok197

addr_ok216:                                       ; preds = %abort.dead225, %tag.slow_check219, %tag.gen_check218, %addr_ok197
  store i64 %var.load211, ptr %raw.clean.ptr214, align 8
  %var.load226 = load ptr, ptr %var.ring, align 8
  %fld.gep227 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load226, i32 0, i32 1
  %fld.load228 = load ptr, ptr %fld.gep227, align 8
  %var.load229 = load ptr, ptr %var.ring, align 8
  %fld.gep230 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load229, i32 0, i32 10
  %fld.load231 = load i64, ptr %fld.gep230, align 8
  %ptr.int.l232 = ptrtoint ptr %fld.load228 to i64
  %addtmp233 = add i64 %ptr.int.l232, %fld.load231
  %ptr.res234 = inttoptr i64 %addtmp233 to ptr
  %var.load235 = load i64, ptr %var.idx, align 8
  %multmp236 = mul i64 %var.load235, 4
  %ptr.int.l237 = ptrtoint ptr %ptr.res234 to i64
  %addtmp238 = add i64 %ptr.int.l237, %multmp236
  %ptr.res239 = inttoptr i64 %addtmp238 to ptr
  %var.load240 = load i64, ptr %var.idx, align 8
  %coerce.trunc241 = trunc i64 %var.load240 to i32
  %raw.int242 = ptrtoint ptr %ptr.res239 to i64
  %raw.clean.int243 = and i64 %raw.int242, 281474976710655
  %raw.clean.ptr244 = inttoptr i64 %raw.clean.int243 to ptr
  %addr.tag245 = lshr i64 %raw.int242, 48
  %tag.immortal247 = icmp eq i64 %addr.tag245, 0
  br i1 %tag.immortal247, label %addr_ok246, label %tag.gen_check248

tag.gen_check218:                                 ; preds = %addr_ok197
  %active.gen221 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok222 = icmp eq i64 %addr.tag215, %active.gen221
  br i1 %tag.fast.ok222, label %addr_ok216, label %tag.slow_check219

tag.slow_check219:                                ; preds = %tag.gen_check218
  %arena.cur223 = call ptr @dva_arena_current()
  %tag.valid224 = call i1 @dva_arena_validate_tag(ptr %arena.cur223, i64 %addr.tag215)
  br i1 %tag.valid224, label %addr_ok216, label %tag.stale220

tag.stale220:                                     ; preds = %tag.slow_check219
  %18 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead225:                                    ; No predecessors!
  br label %addr_ok216

addr_ok246:                                       ; preds = %abort.dead255, %tag.slow_check249, %tag.gen_check248, %addr_ok216
  store i32 %coerce.trunc241, ptr %raw.clean.ptr244, align 4
  %var.load256 = load ptr, ptr %var.ring, align 8
  %fld.gep257 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load256, i32 0, i32 1
  %fld.load258 = load ptr, ptr %fld.gep257, align 8
  %var.load259 = load ptr, ptr %var.ring, align 8
  %fld.gep260 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load259, i32 0, i32 8
  %fld.load261 = load i64, ptr %fld.gep260, align 8
  %ptr.int.l262 = ptrtoint ptr %fld.load258 to i64
  %addtmp263 = add i64 %ptr.int.l262, %fld.load261
  %ptr.res264 = inttoptr i64 %addtmp263 to ptr
  %var.load265 = load i32, ptr %var.tail, align 4
  %addtmp266 = add i32 %var.load265, 1
  %raw.int267 = ptrtoint ptr %ptr.res264 to i64
  %raw.clean.int268 = and i64 %raw.int267, 281474976710655
  %raw.clean.ptr269 = inttoptr i64 %raw.clean.int268 to ptr
  %addr.tag270 = lshr i64 %raw.int267, 48
  %tag.immortal272 = icmp eq i64 %addr.tag270, 0
  br i1 %tag.immortal272, label %addr_ok271, label %tag.gen_check273

tag.gen_check248:                                 ; preds = %addr_ok216
  %active.gen251 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok252 = icmp eq i64 %addr.tag245, %active.gen251
  br i1 %tag.fast.ok252, label %addr_ok246, label %tag.slow_check249

tag.slow_check249:                                ; preds = %tag.gen_check248
  %arena.cur253 = call ptr @dva_arena_current()
  %tag.valid254 = call i1 @dva_arena_validate_tag(ptr %arena.cur253, i64 %addr.tag245)
  br i1 %tag.valid254, label %addr_ok246, label %tag.stale250

tag.stale250:                                     ; preds = %tag.slow_check249
  %19 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead255:                                    ; No predecessors!
  br label %addr_ok246

addr_ok271:                                       ; preds = %abort.dead280, %tag.slow_check274, %tag.gen_check273, %addr_ok246
  store i32 %addtmp266, ptr %raw.clean.ptr269, align 4
  ret i1 true

tag.gen_check273:                                 ; preds = %addr_ok246
  %active.gen276 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok277 = icmp eq i64 %addr.tag270, %active.gen276
  br i1 %tag.fast.ok277, label %addr_ok271, label %tag.slow_check274

tag.slow_check274:                                ; preds = %tag.gen_check273
  %arena.cur278 = call ptr @dva_arena_current()
  %tag.valid279 = call i1 @dva_arena_validate_tag(ptr %arena.cur278, i64 %addr.tag270)
  br i1 %tag.valid279, label %addr_ok271, label %tag.stale275

tag.stale275:                                     ; preds = %tag.slow_check274
  %20 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead280:                                    ; No predecessors!
  br label %addr_ok271
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

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
  %divtmp = sdiv i64 %var.load3, 1000
  %raw.int = ptrtoint ptr %var.load2 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %addr.tag = lshr i64 %raw.int, 48
  %tag.immortal = icmp eq i64 %addr.tag, 0
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit
  store i64 %divtmp, ptr %raw.clean.ptr, align 8
  %var.load4 = load ptr, ptr %var.ts_ptr, align 8
  %ptr.int.l = ptrtoint ptr %var.load4 to i64
  %addtmp = add i64 %ptr.int.l, 8
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load5 = load i64, ptr %var.ms, align 8
  %modtmp = srem i64 %var.load5, 1000
  %multmp = mul i64 %modtmp, 1000000
  %raw.int6 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int7 = and i64 %raw.int6, 281474976710655
  %raw.clean.ptr8 = inttoptr i64 %raw.clean.int7 to ptr
  %addr.tag9 = lshr i64 %raw.int6, 48
  %tag.immortal11 = icmp eq i64 %addr.tag9, 0
  br i1 %tag.immortal11, label %addr_ok10, label %tag.gen_check12

tag.gen_check:                                    ; preds = %choice.exit
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok10:                                        ; preds = %abort.dead19, %tag.slow_check13, %tag.gen_check12, %addr_ok
  store i64 %multmp, ptr %raw.clean.ptr8, align 8
  %var.load20 = load ptr, ptr %var.ring, align 8
  %var.load21 = load ptr, ptr %var.ts_ptr, align 8
  %var.load22 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_timeout"(ptr %var.load20, ptr %var.load21, i64 0, i64 0, i64 %var.load22)
  ret i1 %call.res

tag.gen_check12:                                  ; preds = %addr_ok
  %active.gen15 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok16 = icmp eq i64 %addr.tag9, %active.gen15
  br i1 %tag.fast.ok16, label %addr_ok10, label %tag.slow_check13

tag.slow_check13:                                 ; preds = %tag.gen_check12
  %arena.cur17 = call ptr @dva_arena_current()
  %tag.valid18 = call i1 @dva_arena_validate_tag(ptr %arena.cur17, i64 %addr.tag9)
  br i1 %tag.valid18, label %addr_ok10, label %tag.stale14

tag.stale14:                                      ; preds = %tag.slow_check13
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead19:                                     ; No predecessors!
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
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
  br i1 %tag.immortal18, label %addr_ok17, label %tag.gen_check19

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok17:                                        ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %addr_ok
  %raw.load27 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load27, ptr %var.tail, align 4
  %var.load28 = load i32, ptr %var.tail, align 4
  %var.load29 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load28, %var.load29
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.used, align 8
  %var.load30 = load ptr, ptr %var.ring, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load30, i32 0, i32 15
  %fld.load32 = load i64, ptr %fld.gep31, align 8
  %var.load33 = load i64, ptr %var.used, align 8
  %subtmp34 = sub i64 %fld.load32, %var.load33
  ret i64 %subtmp34

tag.gen_check19:                                  ; preds = %addr_ok
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %addr.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %addr_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %addr.tag16)
  br i1 %tag.valid25, label %addr_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
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
  br i1 %tag.immortal18, label %addr_ok17, label %tag.gen_check19

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok17:                                        ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %addr_ok
  %raw.load27 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load27, ptr %var.tail, align 4
  %var.load28 = load i32, ptr %var.tail, align 4
  %var.load29 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load28, %var.load29
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  ret i64 %bandtmp

tag.gen_check19:                                  ; preds = %addr_ok
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %addr.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %addr_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %addr.tag16)
  br i1 %tag.valid25, label %addr_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
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
  br i1 %tag.immortal18, label %addr_ok17, label %tag.gen_check19

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok17:                                        ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %addr_ok
  %raw.load27 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load27, ptr %var.tail, align 4
  %var.load28 = load i32, ptr %var.tail, align 4
  %var.load29 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load28, %var.load29
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.to_submit, align 8
  %var.load30 = load i64, ptr %var.wait_nr, align 8
  %cmptmp = icmp sgt i64 %var.load30, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check19:                                  ; preds = %addr_ok
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %addr.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %addr_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %addr.tag16)
  br i1 %tag.valid25, label %addr_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %addr_ok17

choice.then:                                      ; preds = %addr_ok17
  %var.load31 = load i64, ptr @"var.uring::IORING_ENTER_GETEVENTS", align 8
  br label %choice.exit

choice.else:                                      ; preds = %addr_ok17
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load31, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.flags, align 8
  %var.load32 = load i64, ptr @"var.uring::SYS_IO_URING_ENTER", align 8
  %var.load33 = load ptr, ptr %var.ring, align 8
  %fld.gep34 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load33, i32 0, i32 0
  %fld.load35 = load i64, ptr %fld.gep34, align 8
  %cast.int2ptr = inttoptr i64 %fld.load35 to ptr
  %addr.ffi.int = ptrtoint ptr %cast.int2ptr to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load36 = load i64, ptr %var.to_submit, align 8
  %cast.int2ptr37 = inttoptr i64 %var.load36 to ptr
  %addr.ffi.int38 = ptrtoint ptr %cast.int2ptr37 to i64
  %addr.ffi.masked39 = and i64 %addr.ffi.int38, 281474976710655
  %addr.ffi.clean40 = inttoptr i64 %addr.ffi.masked39 to ptr
  %var.load41 = load i64, ptr %var.wait_nr, align 8
  %cast.int2ptr42 = inttoptr i64 %var.load41 to ptr
  %addr.ffi.int43 = ptrtoint ptr %cast.int2ptr42 to i64
  %addr.ffi.masked44 = and i64 %addr.ffi.int43, 281474976710655
  %addr.ffi.clean45 = inttoptr i64 %addr.ffi.masked44 to ptr
  %var.load46 = load i64, ptr %var.flags, align 8
  %cast.int2ptr47 = inttoptr i64 %var.load46 to ptr
  %addr.ffi.int48 = ptrtoint ptr %cast.int2ptr47 to i64
  %addr.ffi.masked49 = and i64 %addr.ffi.int48, 281474976710655
  %addr.ffi.clean50 = inttoptr i64 %addr.ffi.masked49 to ptr
  %var.load51 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int52 = ptrtoint ptr %var.load51 to i64
  %addr.ffi.masked53 = and i64 %addr.ffi.int52, 281474976710655
  %addr.ffi.clean54 = inttoptr i64 %addr.ffi.masked53 to ptr
  %var.load55 = load ptr, ptr @"var.sys::addr_null", align 8
  %addr.ffi.int56 = ptrtoint ptr %var.load55 to i64
  %addr.ffi.masked57 = and i64 %addr.ffi.int56, 281474976710655
  %addr.ffi.clean58 = inttoptr i64 %addr.ffi.masked57 to ptr
  %call.res = call i64 @syscall(i64 %var.load32, ptr %addr.ffi.clean, ptr %addr.ffi.clean40, ptr %addr.ffi.clean45, ptr %addr.ffi.clean50, ptr %addr.ffi.clean54, ptr %addr.ffi.clean58)
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

addr_ok:                                          ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
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
  br i1 %tag.immortal18, label %addr_ok17, label %tag.gen_check19

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %addr_ok

addr_ok17:                                        ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %addr_ok
  %raw.load27 = load volatile i32, ptr %raw.clean.ptr15, align 4
  store i32 %raw.load27, ptr %var.tail, align 4
  %var.load28 = load i32, ptr %var.head, align 4
  %var.load29 = load i32, ptr %var.tail, align 4
  %coerce.zext = zext i32 %var.load28 to i64
  %coerce.zext30 = zext i32 %var.load29 to i64
  %cmptmp = icmp ne i64 %coerce.zext, %coerce.zext30
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check19:                                  ; preds = %addr_ok
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %addr.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %addr_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %addr.tag16)
  br i1 %tag.valid25, label %addr_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %2 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %addr_ok17

choice.then:                                      ; preds = %addr_ok17
  %var.load31 = load ptr, ptr %var.ring, align 8
  %fld.gep32 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load31, i32 0, i32 5
  %fld.load33 = load ptr, ptr %fld.gep32, align 8
  %var.load34 = load ptr, ptr %var.ring, align 8
  %fld.gep35 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load34, i32 0, i32 13
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %ptr.int.l37 = ptrtoint ptr %fld.load33 to i64
  %addtmp38 = add i64 %ptr.int.l37, %fld.load36
  %ptr.res39 = inttoptr i64 %addtmp38 to ptr
  %raw.int40 = ptrtoint ptr %ptr.res39 to i64
  %raw.clean.int41 = and i64 %raw.int40, 281474976710655
  %raw.clean.ptr42 = inttoptr i64 %raw.clean.int41 to ptr
  %addr.tag43 = lshr i64 %raw.int40, 48
  %tag.immortal45 = icmp eq i64 %addr.tag43, 0
  br i1 %tag.immortal45, label %addr_ok44, label %tag.gen_check46

choice.else:                                      ; preds = %addr_ok17
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr_ok144
  %choice.res = phi ptr [ %var.load154, %addr_ok144 ], [ null, %choice.else ]
  ret ptr %choice.res

addr_ok44:                                        ; preds = %abort.dead53, %tag.slow_check47, %tag.gen_check46, %choice.then
  %raw.load54 = load volatile i32, ptr %raw.clean.ptr42, align 4
  store i32 %raw.load54, ptr %var.mask, align 4
  %var.load55 = load i32, ptr %var.head, align 4
  %var.load56 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load55, %var.load56
  %coerce.zext57 = zext i32 %bandtmp to i64
  store i64 %coerce.zext57, ptr %var.idx, align 8
  %var.load58 = load ptr, ptr %var.ring, align 8
  %fld.gep59 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load58, i32 0, i32 5
  %fld.load60 = load ptr, ptr %fld.gep59, align 8
  %var.load61 = load ptr, ptr %var.ring, align 8
  %fld.gep62 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load61, i32 0, i32 14
  %fld.load63 = load i64, ptr %fld.gep62, align 8
  %ptr.int.l64 = ptrtoint ptr %fld.load60 to i64
  %addtmp65 = add i64 %ptr.int.l64, %fld.load63
  %ptr.res66 = inttoptr i64 %addtmp65 to ptr
  %var.load67 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load67, 16
  %ptr.int.l68 = ptrtoint ptr %ptr.res66 to i64
  %addtmp69 = add i64 %ptr.int.l68, %multmp
  %ptr.res70 = inttoptr i64 %addtmp69 to ptr
  store ptr %ptr.res70, ptr %var.cqe_ptr, align 8
  %var.load71 = load ptr, ptr %var.cqe_ptr, align 8
  %raw.int72 = ptrtoint ptr %var.load71 to i64
  %raw.clean.int73 = and i64 %raw.int72, 281474976710655
  %raw.clean.ptr74 = inttoptr i64 %raw.clean.int73 to ptr
  %addr.tag75 = lshr i64 %raw.int72, 48
  %tag.immortal77 = icmp eq i64 %addr.tag75, 0
  br i1 %tag.immortal77, label %addr_ok76, label %tag.gen_check78

tag.gen_check46:                                  ; preds = %choice.then
  %active.gen49 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok50 = icmp eq i64 %addr.tag43, %active.gen49
  br i1 %tag.fast.ok50, label %addr_ok44, label %tag.slow_check47

tag.slow_check47:                                 ; preds = %tag.gen_check46
  %arena.cur51 = call ptr @dva_arena_current()
  %tag.valid52 = call i1 @dva_arena_validate_tag(ptr %arena.cur51, i64 %addr.tag43)
  br i1 %tag.valid52, label %addr_ok44, label %tag.stale48

tag.stale48:                                      ; preds = %tag.slow_check47
  %3 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead53:                                     ; No predecessors!
  br label %addr_ok44

addr_ok76:                                        ; preds = %abort.dead85, %tag.slow_check79, %tag.gen_check78, %addr_ok44
  %raw.load86 = load volatile i64, ptr %raw.clean.ptr74, align 8
  %var.load87 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l88 = ptrtoint ptr %var.load87 to i64
  %addtmp89 = add i64 %ptr.int.l88, 8
  %ptr.res90 = inttoptr i64 %addtmp89 to ptr
  %raw.int91 = ptrtoint ptr %ptr.res90 to i64
  %raw.clean.int92 = and i64 %raw.int91, 281474976710655
  %raw.clean.ptr93 = inttoptr i64 %raw.clean.int92 to ptr
  %addr.tag94 = lshr i64 %raw.int91, 48
  %tag.immortal96 = icmp eq i64 %addr.tag94, 0
  br i1 %tag.immortal96, label %addr_ok95, label %tag.gen_check97

tag.gen_check78:                                  ; preds = %addr_ok44
  %active.gen81 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok82 = icmp eq i64 %addr.tag75, %active.gen81
  br i1 %tag.fast.ok82, label %addr_ok76, label %tag.slow_check79

tag.slow_check79:                                 ; preds = %tag.gen_check78
  %arena.cur83 = call ptr @dva_arena_current()
  %tag.valid84 = call i1 @dva_arena_validate_tag(ptr %arena.cur83, i64 %addr.tag75)
  br i1 %tag.valid84, label %addr_ok76, label %tag.stale80

tag.stale80:                                      ; preds = %tag.slow_check79
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead85:                                     ; No predecessors!
  br label %addr_ok76

addr_ok95:                                        ; preds = %abort.dead104, %tag.slow_check98, %tag.gen_check97, %addr_ok76
  %raw.load105 = load volatile i32, ptr %raw.clean.ptr93, align 4
  %coerce.sext = sext i32 %raw.load105 to i64
  %var.load106 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l107 = ptrtoint ptr %var.load106 to i64
  %addtmp108 = add i64 %ptr.int.l107, 12
  %ptr.res109 = inttoptr i64 %addtmp108 to ptr
  %raw.int110 = ptrtoint ptr %ptr.res109 to i64
  %raw.clean.int111 = and i64 %raw.int110, 281474976710655
  %raw.clean.ptr112 = inttoptr i64 %raw.clean.int111 to ptr
  %addr.tag113 = lshr i64 %raw.int110, 48
  %tag.immortal115 = icmp eq i64 %addr.tag113, 0
  br i1 %tag.immortal115, label %addr_ok114, label %tag.gen_check116

tag.gen_check97:                                  ; preds = %addr_ok76
  %active.gen100 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok101 = icmp eq i64 %addr.tag94, %active.gen100
  br i1 %tag.fast.ok101, label %addr_ok95, label %tag.slow_check98

tag.slow_check98:                                 ; preds = %tag.gen_check97
  %arena.cur102 = call ptr @dva_arena_current()
  %tag.valid103 = call i1 @dva_arena_validate_tag(ptr %arena.cur102, i64 %addr.tag94)
  br i1 %tag.valid103, label %addr_ok95, label %tag.stale99

tag.stale99:                                      ; preds = %tag.slow_check98
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead104:                                    ; No predecessors!
  br label %addr_ok95

addr_ok114:                                       ; preds = %abort.dead123, %tag.slow_check117, %tag.gen_check116, %addr_ok95
  %raw.load124 = load volatile i32, ptr %raw.clean.ptr112, align 4
  %coerce.zext125 = zext i32 %raw.load124 to i64
  %arena.cur126 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur126, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %raw.load86, ptr %rec.fld, align 8
  %rec.fld127 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %coerce.sext, ptr %rec.fld127, align 8
  %rec.fld128 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %coerce.zext125, ptr %rec.fld128, align 8
  store ptr %rec.alloc, ptr %var.cqe, align 8
  %var.load129 = load ptr, ptr %var.ring, align 8
  %fld.gep130 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load129, i32 0, i32 5
  %fld.load131 = load ptr, ptr %fld.gep130, align 8
  %var.load132 = load ptr, ptr %var.ring, align 8
  %fld.gep133 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load132, i32 0, i32 11
  %fld.load134 = load i64, ptr %fld.gep133, align 8
  %ptr.int.l135 = ptrtoint ptr %fld.load131 to i64
  %addtmp136 = add i64 %ptr.int.l135, %fld.load134
  %ptr.res137 = inttoptr i64 %addtmp136 to ptr
  %var.load138 = load i32, ptr %var.head, align 4
  %addtmp139 = add i32 %var.load138, 1
  %raw.int140 = ptrtoint ptr %ptr.res137 to i64
  %raw.clean.int141 = and i64 %raw.int140, 281474976710655
  %raw.clean.ptr142 = inttoptr i64 %raw.clean.int141 to ptr
  %addr.tag143 = lshr i64 %raw.int140, 48
  %tag.immortal145 = icmp eq i64 %addr.tag143, 0
  br i1 %tag.immortal145, label %addr_ok144, label %tag.gen_check146

tag.gen_check116:                                 ; preds = %addr_ok95
  %active.gen119 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok120 = icmp eq i64 %addr.tag113, %active.gen119
  br i1 %tag.fast.ok120, label %addr_ok114, label %tag.slow_check117

tag.slow_check117:                                ; preds = %tag.gen_check116
  %arena.cur121 = call ptr @dva_arena_current()
  %tag.valid122 = call i1 @dva_arena_validate_tag(ptr %arena.cur121, i64 %addr.tag113)
  br i1 %tag.valid122, label %addr_ok114, label %tag.stale118

tag.stale118:                                     ; preds = %tag.slow_check117
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead123:                                    ; No predecessors!
  br label %addr_ok114

addr_ok144:                                       ; preds = %abort.dead153, %tag.slow_check147, %tag.gen_check146, %addr_ok114
  store i32 %addtmp139, ptr %raw.clean.ptr142, align 4
  %var.load154 = load ptr, ptr %var.cqe, align 8
  br label %choice.exit

tag.gen_check146:                                 ; preds = %addr_ok114
  %active.gen149 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok150 = icmp eq i64 %addr.tag143, %active.gen149
  br i1 %tag.fast.ok150, label %addr_ok144, label %tag.slow_check147

tag.slow_check147:                                ; preds = %tag.gen_check146
  %arena.cur151 = call ptr @dva_arena_current()
  %tag.valid152 = call i1 @dva_arena_validate_tag(ptr %arena.cur151, i64 %addr.tag143)
  br i1 %tag.valid152, label %addr_ok144, label %tag.stale148

tag.stale148:                                     ; preds = %tag.slow_check147
  %7 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead153:                                    ; No predecessors!
  br label %addr_ok144
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

a.create19:                                       ; preds = %loop.exit.32
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

define { i1, i64 } @"uring::drain_pipes"(ptr %0, ptr %1) #0 {
entry:
  %var.fd442 = alloca i64, align 8
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

b.buf.len26:                                      ; preds = %abort.dead, %choice.exit
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
  store i64 0, ptr %loop.idx.34, align 8
  br label %loop.header.34

str_overflow_abort:                               ; preds = %choice.exit
  %2 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
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
  %step.val456 = load i64, ptr %loop.step.36, align 8
  %loop.next457 = add i64 %counter.load99, %step.val456
  store i64 %loop.next457, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %choice.then105, %loop.exit.nat.36
  %var.load458 = load ptr, ptr %"var.outs'", align 8
  %a.load459 = load ptr, ptr %"var.outs'", align 8
  %a.null460 = icmp eq ptr %a.load459, null
  br i1 %a.null460, label %a.create461, label %a.after462

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
  %arena.cur130 = call ptr @dva_arena_current()
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
  %var.load455 = load i64, ptr %"var.active'", align 8
  %subtmp = sub i64 %var.load455, 1
  store i64 %subtmp, ptr %"var.active'", align 8
  br label %choice.exit124

choice.exit124:                                   ; preds = %choice.else, %unwrap.pos.40
  br label %choice.exit118

b.buf.len140:                                     ; preds = %abort.dead142, %choice.then123
  %arena.cur143 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %addr_ok, label %tag.gen_check

str_overflow_abort141:                            ; preds = %choice.then123
  %3 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead142:                                    ; No predecessors!
  br label %b.buf.len140

addr_ok:                                          ; preds = %abort.dead159, %tag.slow_check, %tag.gen_check, %b.buf.len140
  %raw.int160 = ptrtoint ptr %ptr.res156 to i64
  %raw.clean.int161 = and i64 %raw.int160, 281474976710655
  %raw.clean.ptr162 = inttoptr i64 %raw.clean.int161 to ptr
  %addr.tag163 = lshr i64 %raw.int160, 48
  %tag.immortal165 = icmp eq i64 %addr.tag163, 0
  br i1 %tag.immortal165, label %addr_ok164, label %tag.gen_check166

tag.gen_check:                                    ; preds = %b.buf.len140
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %addr.tag, %active.gen
  br i1 %tag.fast.ok, label %addr_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur158 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur158, i64 %addr.tag)
  br i1 %tag.valid, label %addr_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead159:                                    ; No predecessors!
  br label %addr_ok

addr_ok164:                                       ; preds = %abort.dead173, %tag.slow_check167, %tag.gen_check166, %addr_ok
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr162, i64 %var.load157, i1 false)
  %var.load174 = load ptr, ptr %var.b, align 8
  %b.ptr175 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load174, i32 0, i32 1
  %b.ptr176 = load ptr, ptr %b.ptr175, align 8
  %var.load177 = load i64, ptr %var.nb, align 8
  %ptr.int.l178 = ptrtoint ptr %b.ptr176 to i64
  %addtmp179 = add i64 %ptr.int.l178, %var.load177
  %ptr.res180 = inttoptr i64 %addtmp179 to ptr
  %raw.int181 = ptrtoint ptr %ptr.res180 to i64
  %raw.clean.int182 = and i64 %raw.int181, 281474976710655
  %raw.clean.ptr183 = inttoptr i64 %raw.clean.int182 to ptr
  %addr.tag184 = lshr i64 %raw.int181, 48
  %tag.immortal186 = icmp eq i64 %addr.tag184, 0
  br i1 %tag.immortal186, label %addr_ok185, label %tag.gen_check187

tag.gen_check166:                                 ; preds = %addr_ok
  %active.gen169 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok170 = icmp eq i64 %addr.tag163, %active.gen169
  br i1 %tag.fast.ok170, label %addr_ok164, label %tag.slow_check167

tag.slow_check167:                                ; preds = %tag.gen_check166
  %arena.cur171 = call ptr @dva_arena_current()
  %tag.valid172 = call i1 @dva_arena_validate_tag(ptr %arena.cur171, i64 %addr.tag163)
  br i1 %tag.valid172, label %addr_ok164, label %tag.stale168

tag.stale168:                                     ; preds = %tag.slow_check167
  %5 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead173:                                    ; No predecessors!
  br label %addr_ok164

addr_ok185:                                       ; preds = %abort.dead194, %tag.slow_check188, %tag.gen_check187, %addr_ok164
  store i8 0, ptr %raw.clean.ptr183, align 1
  %var.load195 = load i64, ptr %var.nb, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap196 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load195, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

tag.gen_check187:                                 ; preds = %addr_ok164
  %active.gen190 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok191 = icmp eq i64 %addr.tag184, %active.gen190
  br i1 %tag.fast.ok191, label %addr_ok185, label %tag.slow_check188

tag.slow_check188:                                ; preds = %tag.gen_check187
  %arena.cur192 = call ptr @dva_arena_current()
  %tag.valid193 = call i1 @dva_arena_validate_tag(ptr %arena.cur192, i64 %addr.tag184)
  br i1 %tag.valid193, label %addr_ok185, label %tag.stale189

tag.stale189:                                     ; preds = %tag.slow_check188
  %6 = call i64 @write(i32 2, ptr @stale_addr_msg, i64 50)
  call void @exit(i32 1)
  unreachable

abort.dead194:                                    ; No predecessors!
  br label %addr_ok185

b.len_big_check:                                  ; preds = %addr_ok185
  %b.len.big = icmp sgt i64 %var.load195, %b.cap196
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead197, %b.len_big_check
  %b.len.gep198 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load195, ptr %b.len.gep198, align 8
  %var.load199 = load ptr, ptr %"var.outs'", align 8
  %a.load200 = load ptr, ptr %"var.outs'", align 8
  %a.null201 = icmp eq ptr %a.load200, null
  br i1 %a.null201, label %a.create202, label %a.after203

b.len_oob:                                        ; preds = %b.len_big_check, %addr_ok185
  %7 = call i64 @write(i32 2, ptr @builder_len_oob_msg, i64 47)
  call void @exit(i32 1)
  unreachable

abort.dead197:                                    ; No predecessors!
  br label %b.len_ok

a.create202:                                      ; preds = %b.len_ok
  %arena.cur204 = call ptr @dva_arena_current()
  %a.create205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 24)
  %arena.cur206 = call ptr @dva_arena_current()
  %a.buf207 = call ptr @dva_arena_alloc(ptr %arena.cur206, i64 128)
  %a.len.gep208 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 0
  store i64 0, ptr %a.len.gep208, align 8
  %a.data.gep209 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 1
  store ptr %a.buf207, ptr %a.data.gep209, align 8
  %a.cap.gep210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create205, i32 0, i32 2
  store i64 16, ptr %a.cap.gep210, align 8
  store ptr %a.create205, ptr %"var.outs'", align 8
  br label %a.after203

a.after203:                                       ; preds = %a.create202, %b.len_ok
  %a.load2211 = load ptr, ptr %"var.outs'", align 8
  %var.load212 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull213 = icmp ne ptr %a.load2211, null
  br i1 %a.rd.nonnull213, label %a.rd.check214, label %a.rd.err.null216

a.rd.check214:                                    ; preds = %a.after203
  %a.rd.len219 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2211, i32 0, i32 0
  %a.rd.len220 = load i64, ptr %a.rd.len219, align 8
  %a.rd.ge0221 = icmp sge i64 %var.load212, 0
  %a.rd.lt222 = icmp slt i64 %var.load212, %a.rd.len220
  %a.rd.bounds223 = and i1 %a.rd.ge0221, %a.rd.lt222
  br i1 %a.rd.bounds223, label %a.rd.ok215, label %a.rd.err.oob217

a.rd.ok215:                                       ; preds = %a.rd.check214
  %a.rd.data224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2211, i32 0, i32 1
  %a.rd.data225 = load ptr, ptr %a.rd.data224, align 8
  %a.rd.elem.gep226 = getelementptr i64, ptr %a.rd.data225, i64 %var.load212
  %a.rd.elem227 = load i64, ptr %a.rd.elem.gep226, align 8
  br label %a.rd.done218

a.rd.err.null216:                                 ; preds = %a.after203
  %arena.cur228 = call ptr @dva_arena_current()
  %err.alloc229 = call ptr @dva_arena_alloc(ptr %arena.cur228, i64 56)
  %err.code.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc229, i32 0, i32 0
  store i64 4011, ptr %err.code.gep230, align 8
  %err.msg.gep231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc229, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep231, align 8
  %err.file.gep232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc229, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep232, align 8
  %err.line.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc229, i32 0, i32 3
  store i64 393, ptr %err.line.gep233, align 8
  %err.col.gep234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc229, i32 0, i32 4
  store i64 39, ptr %err.col.gep234, align 8
  %err.ctx.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc229, i32 0, i32 5
  %err.ctx0.gep236 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep235, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep236, align 8
  %err.ctx1.gep237 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep235, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep237, align 8
  %err.p2i238 = ptrtoint ptr %err.alloc229 to i64
  br label %a.rd.done218

a.rd.err.oob217:                                  ; preds = %a.rd.check214
  %arena.cur239 = call ptr @dva_arena_current()
  %err.alloc240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 56)
  %err.code.gep241 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc240, i32 0, i32 0
  store i64 4011, ptr %err.code.gep241, align 8
  %err.msg.gep242 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc240, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep242, align 8
  %err.file.gep243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc240, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep243, align 8
  %err.line.gep244 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc240, i32 0, i32 3
  store i64 393, ptr %err.line.gep244, align 8
  %err.col.gep245 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc240, i32 0, i32 4
  store i64 39, ptr %err.col.gep245, align 8
  %err.ctx.gep246 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc240, i32 0, i32 5
  %err.ctx0.gep247 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep246, i32 0, i32 0
  store i64 %var.load212, ptr %err.ctx0.gep247, align 8
  %err.ctx1.gep248 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep246, i32 0, i32 1
  store i64 %a.rd.len220, ptr %err.ctx1.gep248, align 8
  %err.p2i249 = ptrtoint ptr %err.alloc240 to i64
  br label %a.rd.done218

a.rd.done218:                                     ; preds = %a.rd.err.oob217, %a.rd.err.null216, %a.rd.ok215
  %a.rd.tag250 = phi i1 [ true, %a.rd.ok215 ], [ false, %a.rd.err.null216 ], [ false, %a.rd.err.oob217 ]
  %a.rd.pay251 = phi i64 [ %a.rd.elem227, %a.rd.ok215 ], [ %err.p2i238, %a.rd.err.null216 ], [ %err.p2i249, %a.rd.err.oob217 ]
  %ram.tag252 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag250, 0
  %ram.pay253 = insertvalue { i1, i64 } %ram.tag252, i64 %a.rd.pay251, 1
  %unwrap.is_pos254 = extractvalue { i1, i64 } %ram.pay253, 0
  br i1 %unwrap.is_pos254, label %unwrap.pos.39, label %unwrap.abort.39

unwrap.pos.39:                                    ; preds = %a.rd.done218
  %unwrap.pay.pos286 = extractvalue { i1, i64 } %ram.pay253, 1
  %pay.ptr287 = inttoptr i64 %unwrap.pay.pos286 to ptr
  store ptr %pay.ptr287, ptr %var.prev, align 8
  %var.load288 = load ptr, ptr %"var.outs'", align 8
  %a.load289 = load ptr, ptr %"var.outs'", align 8
  %a.null290 = icmp eq ptr %a.load289, null
  br i1 %a.null290, label %a.create291, label %a.after292

unwrap.abort.39:                                  ; preds = %a.rd.done218
  %unwrap.pay.abort255 = extractvalue { i1, i64 } %ram.pay253, 1
  %err.ptr256 = inttoptr i64 %unwrap.pay.abort255 to ptr
  %err.code.gep257 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr256, i32 0, i32 0
  %err.code258 = load i64, ptr %err.code.gep257, align 8
  %err.msg.gep259 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr256, i32 0, i32 1
  %err.msg.struct260 = load ptr, ptr %err.msg.gep259, align 8
  %err.file.gep261 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr256, i32 0, i32 2
  %err.file.struct262 = load ptr, ptr %err.file.gep261, align 8
  %err.line.gep263 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr256, i32 0, i32 3
  %err.line264 = load i64, ptr %err.line.gep263, align 8
  %err.col.gep265 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr256, i32 0, i32 4
  %err.col266 = load i64, ptr %err.col.gep265, align 8
  %err.msg.len267 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct260, i32 0, i32 0
  %err.msg.len268 = load i64, ptr %err.msg.len267, align 8
  %err.msg.len269 = and i64 %err.msg.len268, 281474976710655
  %err.msg.len32270 = trunc i64 %err.msg.len269 to i32
  %err.msg.data271 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct260, i32 0, i32 1
  %err.msg.data272 = load ptr, ptr %err.msg.data271, align 8
  %err.file.len273 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct262, i32 0, i32 0
  %err.file.len274 = load i64, ptr %err.file.len273, align 8
  %err.file.len275 = and i64 %err.file.len274, 281474976710655
  %err.file.len32276 = trunc i64 %err.file.len275 to i32
  %err.file.data277 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct262, i32 0, i32 1
  %err.file.data278 = load ptr, ptr %err.file.data277, align 8
  %err.thread.rec279 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread280 = icmp ne ptr %err.thread.rec279, null
  br i1 %err.is.thread280, label %err.thread281, label %err.normal282

err.thread281:                                    ; preds = %unwrap.abort.39
  %err.haserr.gep283 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec279, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep283, align 8
  %err.err.gep284 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec279, i32 0, i32 7
  store ptr %err.ptr256, ptr %err.err.gep284, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal282:                                    ; preds = %unwrap.abort.39
  %err.panic.printf285 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code258, i32 %err.msg.len32270, ptr %err.msg.data272, i32 %err.file.len32276, ptr %err.file.data278, i64 %err.line264, i64 %err.col266)
  call void @exit(i32 1)
  unreachable

a.create291:                                      ; preds = %unwrap.pos.39
  %arena.cur293 = call ptr @dva_arena_current()
  %a.create294 = call ptr @dva_arena_alloc(ptr %arena.cur293, i64 24)
  %arena.cur295 = call ptr @dva_arena_current()
  %a.buf296 = call ptr @dva_arena_alloc(ptr %arena.cur295, i64 128)
  %a.len.gep297 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 0
  store i64 0, ptr %a.len.gep297, align 8
  %a.data.gep298 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 1
  store ptr %a.buf296, ptr %a.data.gep298, align 8
  %a.cap.gep299 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create294, i32 0, i32 2
  store i64 16, ptr %a.cap.gep299, align 8
  store ptr %a.create294, ptr %"var.outs'", align 8
  br label %a.after292

a.after292:                                       ; preds = %a.create291, %unwrap.pos.39
  %a.load2300 = load ptr, ptr %"var.outs'", align 8
  %var.load301 = load i64, ptr %var.idx, align 8
  %var.load302 = load ptr, ptr %var.prev, align 8
  %var.load303 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load303, i32 0, i32 0
  %b.freeze.len304 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load303, i32 0, i32 1
  %b.freeze.data305 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = call ptr @dva_arena_current()
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after292
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data305, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data305, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data305, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len304, 1
  %arena.cur306 = call ptr @dva_arena_current()
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur306, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data305, i64 %b.freeze.len304, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len304
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after292
  %b.freeze.data307 = phi ptr [ %b.freeze.data305, %a.after292 ], [ %b.freeze.data305, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur308 = call ptr @dva_arena_current()
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur308, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len304, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data307, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load303, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load303, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load303, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load302, i32 0, i32 0
  %concat.lhs309 = load i64, ptr %concat.lhs, align 8
  %concat.lhs310 = and i64 %concat.lhs309, 281474976710655
  %concat.lhs311 = getelementptr inbounds { i64, ptr }, ptr %var.load302, i32 0, i32 1
  %concat.lhs312 = load ptr, ptr %concat.lhs311, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %concat.rhs313 = load i64, ptr %concat.rhs, align 8
  %concat.rhs314 = and i64 %concat.rhs313, 281474976710655
  %concat.rhs315 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %concat.rhs316 = load ptr, ptr %concat.rhs315, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs310, i64 %concat.rhs314)
  %sum317 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf318 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf318, label %str_overflow_abort320, label %concat.sum.len319

concat.sum.len319:                                ; preds = %abort.dead321, %b.freeze.done
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum317, i64 1)
  %sum322 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf323 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf323, label %str_overflow_abort325, label %concat.tot.len324

str_overflow_abort320:                            ; preds = %b.freeze.done
  %8 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead321:                                    ; No predecessors!
  br label %concat.sum.len319

concat.tot.len324:                                ; preds = %abort.dead326, %concat.sum.len319
  %arena.cur327 = call ptr @dva_arena_current()
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur327, i64 %sum322)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs312, i64 %concat.lhs310, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs310
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs316, i64 %concat.rhs314, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum317
  store i8 0, ptr %concat.nul, align 1
  %arena.cur328 = call ptr @dva_arena_current()
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur328, i64 16)
  %str.build.len.gep329 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum317, ptr %str.build.len.gep329, align 8
  %str.build.data.gep330 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep330, align 8
  %slot.p2i = ptrtoint ptr %concat.str to i64
  %a.wr.nonnull = icmp ne ptr %a.load2300, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

str_overflow_abort325:                            ; preds = %concat.sum.len319
  %9 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead326:                                    ; No predecessors!
  br label %concat.tot.len324

a.wr.check:                                       ; preds = %concat.tot.len324
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2300, i32 0, i32 0
  %a.wr.len331 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load301, 0
  %a.wr.lt = icmp slt i64 %var.load301, %a.wr.len331
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2300, i32 0, i32 1
  %a.wr.data332 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep333 = getelementptr i64, ptr %a.wr.data332, i64 %var.load301
  store i64 %slot.p2i, ptr %a.elem.gep333, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %concat.tot.len324
  %arena.cur334 = call ptr @dva_arena_current()
  %err.alloc335 = call ptr @dva_arena_alloc(ptr %arena.cur334, i64 56)
  %err.code.gep336 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 0
  store i64 4011, ptr %err.code.gep336, align 8
  %err.msg.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep337, align 8
  %err.file.gep338 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep338, align 8
  %err.line.gep339 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 3
  store i64 0, ptr %err.line.gep339, align 8
  %err.col.gep340 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 4
  store i64 0, ptr %err.col.gep340, align 8
  %err.ctx.gep341 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc335, i32 0, i32 5
  %err.ctx0.gep342 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep341, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep342, align 8
  %err.ctx1.gep343 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep341, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep343, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur344 = call ptr @dva_arena_current()
  %err.alloc345 = call ptr @dva_arena_alloc(ptr %arena.cur344, i64 56)
  %err.code.gep346 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 0
  store i64 4011, ptr %err.code.gep346, align 8
  %err.msg.gep347 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep347, align 8
  %err.file.gep348 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep348, align 8
  %err.line.gep349 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 3
  store i64 0, ptr %err.line.gep349, align 8
  %err.col.gep350 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 4
  store i64 0, ptr %err.col.gep350, align 8
  %err.ctx.gep351 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc345, i32 0, i32 5
  %err.ctx0.gep352 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep351, i32 0, i32 0
  store i64 %var.load301, ptr %err.ctx0.gep352, align 8
  %err.ctx1.gep353 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep351, i32 0, i32 1
  store i64 %a.wr.len331, ptr %err.ctx1.gep353, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc335, %a.wr.err.null ], [ %err.alloc345, %a.wr.err.oob ]
  %var.load354 = load ptr, ptr %var.fds, align 8
  %a.load355 = load ptr, ptr %var.fds, align 8
  %a.null356 = icmp eq ptr %a.load355, null
  br i1 %a.null356, label %a.create357, label %a.after358

a.create357:                                      ; preds = %a.wr.done
  %arena.cur359 = call ptr @dva_arena_current()
  %a.create360 = call ptr @dva_arena_alloc(ptr %arena.cur359, i64 24)
  %arena.cur361 = call ptr @dva_arena_current()
  %a.buf362 = call ptr @dva_arena_alloc(ptr %arena.cur361, i64 128)
  %a.len.gep363 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create360, i32 0, i32 0
  store i64 0, ptr %a.len.gep363, align 8
  %a.data.gep364 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create360, i32 0, i32 1
  store ptr %a.buf362, ptr %a.data.gep364, align 8
  %a.cap.gep365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create360, i32 0, i32 2
  store i64 16, ptr %a.cap.gep365, align 8
  store ptr %a.create360, ptr %var.fds, align 8
  br label %a.after358

a.after358:                                       ; preds = %a.create357, %a.wr.done
  %a.load2366 = load ptr, ptr %var.fds, align 8
  %var.load367 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull368 = icmp ne ptr %a.load2366, null
  br i1 %a.rd.nonnull368, label %a.rd.check369, label %a.rd.err.null371

a.rd.check369:                                    ; preds = %a.after358
  %a.rd.len374 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2366, i32 0, i32 0
  %a.rd.len375 = load i64, ptr %a.rd.len374, align 8
  %a.rd.ge0376 = icmp sge i64 %var.load367, 0
  %a.rd.lt377 = icmp slt i64 %var.load367, %a.rd.len375
  %a.rd.bounds378 = and i1 %a.rd.ge0376, %a.rd.lt377
  br i1 %a.rd.bounds378, label %a.rd.ok370, label %a.rd.err.oob372

a.rd.ok370:                                       ; preds = %a.rd.check369
  %a.rd.data379 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2366, i32 0, i32 1
  %a.rd.data380 = load ptr, ptr %a.rd.data379, align 8
  %a.rd.elem.gep381 = getelementptr i64, ptr %a.rd.data380, i64 %var.load367
  %a.rd.elem382 = load i64, ptr %a.rd.elem.gep381, align 8
  br label %a.rd.done373

a.rd.err.null371:                                 ; preds = %a.after358
  %arena.cur383 = call ptr @dva_arena_current()
  %err.alloc384 = call ptr @dva_arena_alloc(ptr %arena.cur383, i64 56)
  %err.code.gep385 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 0
  store i64 4011, ptr %err.code.gep385, align 8
  %err.msg.gep386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep386, align 8
  %err.file.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep387, align 8
  %err.line.gep388 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 3
  store i64 395, ptr %err.line.gep388, align 8
  %err.col.gep389 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 4
  store i64 35, ptr %err.col.gep389, align 8
  %err.ctx.gep390 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc384, i32 0, i32 5
  %err.ctx0.gep391 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep390, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep391, align 8
  %err.ctx1.gep392 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep390, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep392, align 8
  %err.p2i393 = ptrtoint ptr %err.alloc384 to i64
  br label %a.rd.done373

a.rd.err.oob372:                                  ; preds = %a.rd.check369
  %arena.cur394 = call ptr @dva_arena_current()
  %err.alloc395 = call ptr @dva_arena_alloc(ptr %arena.cur394, i64 56)
  %err.code.gep396 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 0
  store i64 4011, ptr %err.code.gep396, align 8
  %err.msg.gep397 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep397, align 8
  %err.file.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep398, align 8
  %err.line.gep399 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 3
  store i64 395, ptr %err.line.gep399, align 8
  %err.col.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 4
  store i64 35, ptr %err.col.gep400, align 8
  %err.ctx.gep401 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc395, i32 0, i32 5
  %err.ctx0.gep402 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep401, i32 0, i32 0
  store i64 %var.load367, ptr %err.ctx0.gep402, align 8
  %err.ctx1.gep403 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep401, i32 0, i32 1
  store i64 %a.rd.len375, ptr %err.ctx1.gep403, align 8
  %err.p2i404 = ptrtoint ptr %err.alloc395 to i64
  br label %a.rd.done373

a.rd.done373:                                     ; preds = %a.rd.err.oob372, %a.rd.err.null371, %a.rd.ok370
  %a.rd.tag405 = phi i1 [ true, %a.rd.ok370 ], [ false, %a.rd.err.null371 ], [ false, %a.rd.err.oob372 ]
  %a.rd.pay406 = phi i64 [ %a.rd.elem382, %a.rd.ok370 ], [ %err.p2i393, %a.rd.err.null371 ], [ %err.p2i404, %a.rd.err.oob372 ]
  %ram.tag407 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag405, 0
  %ram.pay408 = insertvalue { i1, i64 } %ram.tag407, i64 %a.rd.pay406, 1
  %unwrap.is_pos409 = extractvalue { i1, i64 } %ram.pay408, 0
  br i1 %unwrap.is_pos409, label %unwrap.pos.40, label %unwrap.abort.40

unwrap.pos.40:                                    ; preds = %a.rd.done373
  %unwrap.pay.pos441 = extractvalue { i1, i64 } %ram.pay408, 1
  store i64 %unwrap.pay.pos441, ptr %var.fd442, align 8
  %var.load443 = load ptr, ptr %var.ring, align 8
  %var.load444 = load i64, ptr %var.fd442, align 8
  %var.load445 = load ptr, ptr %var.scratch, align 8
  %b.ptr446 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load445, i32 0, i32 1
  %b.ptr447 = load ptr, ptr %b.ptr446, align 8
  %var.load448 = load i64, ptr %var.idx, align 8
  %multmp449 = mul i64 %var.load448, 4096
  %ptr.int.l450 = ptrtoint ptr %b.ptr447 to i64
  %addtmp451 = add i64 %ptr.int.l450, %multmp449
  %ptr.res452 = inttoptr i64 %addtmp451 to ptr
  %var.load453 = load i64, ptr %var.idx, align 8
  %call.res454 = call i1 @"uring::prep_pipe_read"(ptr %var.load443, i64 %var.load444, ptr %ptr.res452, i64 4096, i64 %var.load453)
  br label %choice.exit124

unwrap.abort.40:                                  ; preds = %a.rd.done373
  %unwrap.pay.abort410 = extractvalue { i1, i64 } %ram.pay408, 1
  %err.ptr411 = inttoptr i64 %unwrap.pay.abort410 to ptr
  %err.code.gep412 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr411, i32 0, i32 0
  %err.code413 = load i64, ptr %err.code.gep412, align 8
  %err.msg.gep414 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr411, i32 0, i32 1
  %err.msg.struct415 = load ptr, ptr %err.msg.gep414, align 8
  %err.file.gep416 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr411, i32 0, i32 2
  %err.file.struct417 = load ptr, ptr %err.file.gep416, align 8
  %err.line.gep418 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr411, i32 0, i32 3
  %err.line419 = load i64, ptr %err.line.gep418, align 8
  %err.col.gep420 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr411, i32 0, i32 4
  %err.col421 = load i64, ptr %err.col.gep420, align 8
  %err.msg.len422 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct415, i32 0, i32 0
  %err.msg.len423 = load i64, ptr %err.msg.len422, align 8
  %err.msg.len424 = and i64 %err.msg.len423, 281474976710655
  %err.msg.len32425 = trunc i64 %err.msg.len424 to i32
  %err.msg.data426 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct415, i32 0, i32 1
  %err.msg.data427 = load ptr, ptr %err.msg.data426, align 8
  %err.file.len428 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct417, i32 0, i32 0
  %err.file.len429 = load i64, ptr %err.file.len428, align 8
  %err.file.len430 = and i64 %err.file.len429, 281474976710655
  %err.file.len32431 = trunc i64 %err.file.len430 to i32
  %err.file.data432 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct417, i32 0, i32 1
  %err.file.data433 = load ptr, ptr %err.file.data432, align 8
  %err.thread.rec434 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread435 = icmp ne ptr %err.thread.rec434, null
  br i1 %err.is.thread435, label %err.thread436, label %err.normal437

err.thread436:                                    ; preds = %unwrap.abort.40
  %err.haserr.gep438 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec434, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep438, align 8
  %err.err.gep439 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec434, i32 0, i32 7
  store ptr %err.ptr411, ptr %err.err.gep439, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal437:                                    ; preds = %unwrap.abort.40
  %err.panic.printf440 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code413, i32 %err.msg.len32425, ptr %err.msg.data427, i32 %err.file.len32431, ptr %err.file.data433, i64 %err.line419, i64 %err.col421)
  call void @exit(i32 1)
  unreachable

a.create461:                                      ; preds = %loop.exit.36
  %arena.cur463 = call ptr @dva_arena_current()
  %a.create464 = call ptr @dva_arena_alloc(ptr %arena.cur463, i64 24)
  %arena.cur465 = call ptr @dva_arena_current()
  %a.buf466 = call ptr @dva_arena_alloc(ptr %arena.cur465, i64 128)
  %a.len.gep467 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create464, i32 0, i32 0
  store i64 0, ptr %a.len.gep467, align 8
  %a.data.gep468 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create464, i32 0, i32 1
  store ptr %a.buf466, ptr %a.data.gep468, align 8
  %a.cap.gep469 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create464, i32 0, i32 2
  store i64 16, ptr %a.cap.gep469, align 8
  store ptr %a.create464, ptr %"var.outs'", align 8
  br label %a.after462

a.after462:                                       ; preds = %a.create461, %loop.exit.36
  %a.load2470 = load ptr, ptr %"var.outs'", align 8
  %p.to.i64471 = ptrtoint ptr %a.load2470 to i64
  %ram.pay472 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64471, 1
  ret { i1, i64 } %ram.pay472
}

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

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
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
