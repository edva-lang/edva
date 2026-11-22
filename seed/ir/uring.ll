; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
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
@null_addr_cast = internal unnamed_addr constant [40 x i8] c"E4015: cannot construct Addr from zero\0A\00"
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
@detached_builder = internal unnamed_addr constant [93 x i8] c"E4013: Builder buffer was detached by freeze. Append data or create a new Builder before &b\0A\00"
@str.7 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.7 }
@str.8 = internal unnamed_addr constant [10 x i8] c"uring.dva\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.8 }
@str.9 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.9 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.10 = internal unnamed_addr constant [24 x i8] c"Missing pipe descriptor\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 23, ptr @str.10 }
@clo.const.25 = internal constant { ptr, ptr } { ptr @"uring::drain_pipes", ptr null }
@"var.uring::drain_pipes" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"uring::close", ptr null }
@"var.uring::close" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_uring, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
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
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

define internal void @__dva_global_init_uring() #3 {
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

declare i32 @close(i32)

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

declare ptr @mmap(ptr, i64, i64, i64, i32, i64)

declare i64 @munmap(ptr, i64)

declare i64 @syscall(i64, ptr, ptr, ptr, ptr, ptr, ptr)

define { i1, i64 } @"uring::new"(i64 %0) #3 {
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
  %var.load18 = load ptr, ptr %var.paddr, align 8
  %raw.int = ptrtoint ptr %var.load18 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %call.res = call i64 @syscall(i64 %var.load16, ptr %cast.int2ptr, ptr %raw.clean.ptr, ptr null, ptr null, ptr null, ptr null)
  store i64 %call.res, ptr %var.fd, align 8
  %var.load19 = load i64, ptr %var.fd, align 8
  %cmptmp = icmp slt i64 %var.load19, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.0.struct to i64) }

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load20 = load ptr, ptr %var.paddr, align 8
  %raw.int21 = ptrtoint ptr %var.load20 to i64
  %raw.clean.int22 = and i64 %raw.int21, 281474976710655
  %raw.clean.ptr23 = inttoptr i64 %raw.clean.int22 to ptr
  store ptr %raw.clean.ptr23, ptr %var.params, align 8
  %var.load24 = load ptr, ptr %var.params, align 8
  %fld.gep = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load24, i32 0, i32 0
  %fld.load = load i32, ptr %fld.gep, align 4
  %coerce.zext = zext i32 %fld.load to i64
  store i64 %coerce.zext, ptr %var.sq_entries, align 8
  %var.load25 = load ptr, ptr %var.params, align 8
  %fld.gep26 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load25, i32 0, i32 1
  %fld.load27 = load i32, ptr %fld.gep26, align 4
  %coerce.zext28 = zext i32 %fld.load27 to i64
  store i64 %coerce.zext28, ptr %var.cq_entries, align 8
  %var.load29 = load ptr, ptr %var.params, align 8
  %fld.gep30 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load29, i32 0, i32 16
  %fld.load31 = load i32, ptr %fld.gep30, align 4
  %coerce.zext32 = zext i32 %fld.load31 to i64
  %var.load33 = load i64, ptr %var.sq_entries, align 8
  %multmp = mul i64 %var.load33, 4
  %addtmp = add i64 %coerce.zext32, %multmp
  store i64 %addtmp, ptr %var.sq_sz, align 8
  %var.load34 = load i64, ptr %var.sq_sz, align 8
  %var.load35 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load36 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp = or i64 %var.load35, %var.load36
  %var.load37 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load38 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp39 = or i64 %var.load37, %var.load38
  %var.load40 = load i64, ptr %var.fd, align 8
  %var.load41 = load i64, ptr @"var.uring::IORING_OFF_SQ_RING", align 8
  %coerce.trunc = trunc i64 %var.load40 to i32
  %call.res42 = call ptr @mmap(ptr null, i64 %var.load34, i64 %bortmp, i64 %bortmp39, i32 %coerce.trunc, i64 %var.load41)
  store ptr %call.res42, ptr %var.sq_ptr, align 8
  %var.load43 = load ptr, ptr %var.sq_ptr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load43 to i64
  %cmptmp44 = icmp eq i64 %coerce.ptr2int, -1
  br i1 %cmptmp44, label %choice.then45, label %choice.exit46

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.then45:                                    ; preds = %choice.exit
  %var.load47 = load i64, ptr %var.fd, align 8
  %coerce.trunc48 = trunc i64 %var.load47 to i32
  %call.res49 = call i32 @close(i32 %coerce.trunc48)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.1.struct to i64) }

choice.exit46:                                    ; preds = %ret.dead50, %choice.exit
  %var.load51 = load i64, ptr %var.sq_entries, align 8
  %multmp52 = mul i64 %var.load51, 64
  store i64 %multmp52, ptr %var.sqes_sz, align 8
  %var.load53 = load i64, ptr %var.sqes_sz, align 8
  %var.load54 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load55 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp56 = or i64 %var.load54, %var.load55
  %var.load57 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load58 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp59 = or i64 %var.load57, %var.load58
  %var.load60 = load i64, ptr %var.fd, align 8
  %var.load61 = load i64, ptr @"var.uring::IORING_OFF_SQES", align 8
  %coerce.trunc62 = trunc i64 %var.load60 to i32
  %call.res63 = call ptr @mmap(ptr null, i64 %var.load53, i64 %bortmp56, i64 %bortmp59, i32 %coerce.trunc62, i64 %var.load61)
  store ptr %call.res63, ptr %var.sqes_ptr, align 8
  %var.load64 = load ptr, ptr %var.sqes_ptr, align 8
  %coerce.ptr2int65 = ptrtoint ptr %var.load64 to i64
  %cmptmp66 = icmp eq i64 %coerce.ptr2int65, -1
  br i1 %cmptmp66, label %choice.then67, label %choice.exit68

ret.dead50:                                       ; No predecessors!
  br label %choice.exit46

choice.then67:                                    ; preds = %choice.exit46
  %var.load69 = load ptr, ptr %var.sq_ptr, align 8
  %addr.ffi.int = ptrtoint ptr %var.load69 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load70 = load i64, ptr %var.sq_sz, align 8
  %call.res71 = call i64 @munmap(ptr %addr.ffi.clean, i64 %var.load70)
  %var.load72 = load i64, ptr %var.fd, align 8
  %coerce.trunc73 = trunc i64 %var.load72 to i32
  %call.res74 = call i32 @close(i32 %coerce.trunc73)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.2.struct to i64) }

choice.exit68:                                    ; preds = %ret.dead75, %choice.exit46
  %var.load76 = load ptr, ptr %var.params, align 8
  %fld.gep77 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load76, i32 0, i32 25
  %fld.load78 = load i32, ptr %fld.gep77, align 4
  %coerce.zext79 = zext i32 %fld.load78 to i64
  %var.load80 = load i64, ptr %var.cq_entries, align 8
  %multmp81 = mul i64 %var.load80, 16
  %addtmp82 = add i64 %coerce.zext79, %multmp81
  store i64 %addtmp82, ptr %var.cq_sz, align 8
  %var.load83 = load i64, ptr %var.cq_sz, align 8
  %var.load84 = load i64, ptr @"var.uring::PROT_READ", align 8
  %var.load85 = load i64, ptr @"var.uring::PROT_WRITE", align 8
  %bortmp86 = or i64 %var.load84, %var.load85
  %var.load87 = load i64, ptr @"var.uring::MAP_SHARED", align 8
  %var.load88 = load i64, ptr @"var.uring::MAP_POPULATE", align 8
  %bortmp89 = or i64 %var.load87, %var.load88
  %var.load90 = load i64, ptr %var.fd, align 8
  %var.load91 = load i64, ptr @"var.uring::IORING_OFF_CQ_RING", align 8
  %coerce.trunc92 = trunc i64 %var.load90 to i32
  %call.res93 = call ptr @mmap(ptr null, i64 %var.load83, i64 %bortmp86, i64 %bortmp89, i32 %coerce.trunc92, i64 %var.load91)
  store ptr %call.res93, ptr %var.cq_ptr, align 8
  %var.load94 = load ptr, ptr %var.cq_ptr, align 8
  %coerce.ptr2int95 = ptrtoint ptr %var.load94 to i64
  %cmptmp96 = icmp eq i64 %coerce.ptr2int95, -1
  br i1 %cmptmp96, label %choice.then97, label %choice.exit98

ret.dead75:                                       ; No predecessors!
  br label %choice.exit68

choice.then97:                                    ; preds = %choice.exit68
  %var.load99 = load ptr, ptr %var.sqes_ptr, align 8
  %addr.ffi.int100 = ptrtoint ptr %var.load99 to i64
  %addr.ffi.masked101 = and i64 %addr.ffi.int100, 281474976710655
  %addr.ffi.clean102 = inttoptr i64 %addr.ffi.masked101 to ptr
  %var.load103 = load i64, ptr %var.sqes_sz, align 8
  %call.res104 = call i64 @munmap(ptr %addr.ffi.clean102, i64 %var.load103)
  %var.load105 = load ptr, ptr %var.sq_ptr, align 8
  %addr.ffi.int106 = ptrtoint ptr %var.load105 to i64
  %addr.ffi.masked107 = and i64 %addr.ffi.int106, 281474976710655
  %addr.ffi.clean108 = inttoptr i64 %addr.ffi.masked107 to ptr
  %var.load109 = load i64, ptr %var.sq_sz, align 8
  %call.res110 = call i64 @munmap(ptr %addr.ffi.clean108, i64 %var.load109)
  %var.load111 = load i64, ptr %var.fd, align 8
  %coerce.trunc112 = trunc i64 %var.load111 to i32
  %call.res113 = call i32 @close(i32 %coerce.trunc112)
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.3.struct to i64) }

choice.exit98:                                    ; preds = %ret.dead114, %choice.exit68
  %var.load115 = load i64, ptr %var.fd, align 8
  %var.load116 = load ptr, ptr %var.sq_ptr, align 8
  %var.load117 = load i64, ptr %var.sq_sz, align 8
  %var.load118 = load ptr, ptr %var.sqes_ptr, align 8
  %var.load119 = load i64, ptr %var.sqes_sz, align 8
  %var.load120 = load ptr, ptr %var.cq_ptr, align 8
  %var.load121 = load i64, ptr %var.cq_sz, align 8
  %var.load122 = load ptr, ptr %var.params, align 8
  %fld.gep123 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load122, i32 0, i32 10
  %fld.load124 = load i32, ptr %fld.gep123, align 4
  %coerce.zext125 = zext i32 %fld.load124 to i64
  %var.load126 = load ptr, ptr %var.params, align 8
  %fld.gep127 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load126, i32 0, i32 11
  %fld.load128 = load i32, ptr %fld.gep127, align 4
  %coerce.zext129 = zext i32 %fld.load128 to i64
  %var.load130 = load ptr, ptr %var.params, align 8
  %fld.gep131 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load130, i32 0, i32 12
  %fld.load132 = load i32, ptr %fld.gep131, align 4
  %coerce.zext133 = zext i32 %fld.load132 to i64
  %var.load134 = load ptr, ptr %var.params, align 8
  %fld.gep135 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load134, i32 0, i32 16
  %fld.load136 = load i32, ptr %fld.gep135, align 4
  %coerce.zext137 = zext i32 %fld.load136 to i64
  %var.load138 = load ptr, ptr %var.params, align 8
  %fld.gep139 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load138, i32 0, i32 20
  %fld.load140 = load i32, ptr %fld.gep139, align 4
  %coerce.zext141 = zext i32 %fld.load140 to i64
  %var.load142 = load ptr, ptr %var.params, align 8
  %fld.gep143 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load142, i32 0, i32 21
  %fld.load144 = load i32, ptr %fld.gep143, align 4
  %coerce.zext145 = zext i32 %fld.load144 to i64
  %var.load146 = load ptr, ptr %var.params, align 8
  %fld.gep147 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load146, i32 0, i32 22
  %fld.load148 = load i32, ptr %fld.gep147, align 4
  %coerce.zext149 = zext i32 %fld.load148 to i64
  %var.load150 = load ptr, ptr %var.params, align 8
  %fld.gep151 = getelementptr inbounds <{ i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }>, ptr %var.load150, i32 0, i32 25
  %fld.load152 = load i32, ptr %fld.gep151, align 4
  %coerce.zext153 = zext i32 %fld.load152 to i64
  %var.load154 = load i64, ptr %var.sq_entries, align 8
  %var.load155 = load i64, ptr %var.cq_entries, align 8
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 ptrtoint (ptr getelementptr ({ i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld158 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 0
  store i64 %var.load115, ptr %rec.fld158, align 8
  %rec.fld159 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 1
  store ptr %var.load116, ptr %rec.fld159, align 8
  %rec.fld160 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 2
  store i64 %var.load117, ptr %rec.fld160, align 8
  %rec.fld161 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 3
  store ptr %var.load118, ptr %rec.fld161, align 8
  %rec.fld162 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 4
  store i64 %var.load119, ptr %rec.fld162, align 8
  %rec.fld163 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 5
  store ptr %var.load120, ptr %rec.fld163, align 8
  %rec.fld164 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 6
  store i64 %var.load121, ptr %rec.fld164, align 8
  %rec.fld165 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 7
  store i64 %coerce.zext125, ptr %rec.fld165, align 8
  %rec.fld166 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 8
  store i64 %coerce.zext129, ptr %rec.fld166, align 8
  %rec.fld167 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 9
  store i64 %coerce.zext133, ptr %rec.fld167, align 8
  %rec.fld168 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 10
  store i64 %coerce.zext137, ptr %rec.fld168, align 8
  %rec.fld169 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 11
  store i64 %coerce.zext141, ptr %rec.fld169, align 8
  %rec.fld170 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 12
  store i64 %coerce.zext145, ptr %rec.fld170, align 8
  %rec.fld171 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 13
  store i64 %coerce.zext149, ptr %rec.fld171, align 8
  %rec.fld172 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 14
  store i64 %coerce.zext153, ptr %rec.fld172, align 8
  %rec.fld173 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 15
  store i64 %var.load154, ptr %rec.fld173, align 8
  %rec.fld174 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %rec.alloc157, i32 0, i32 16
  store i64 %var.load155, ptr %rec.fld174, align 8
  %ptr.to.i64 = ptrtoint ptr %rec.alloc157 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead114:                                      ; No predecessors!
  br label %choice.exit98
}

define i1 @"uring::prep_sqe"(ptr %0, i64 %1, i64 %2, i64 %3, ptr %4, i64 %5, i64 %6) #3 {
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

define i1 @"uring::prep_sqe_flags"(ptr %0, i64 %1, i64 %2, i64 %3, ptr %4, i64 %5, i64 %6, i64 %7) #3 {
entry:
  %var.target_addr = alloca i64, align 8
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
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %entry
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
  %addr.is.null15 = icmp eq ptr %ptr.res12, null
  br i1 %addr.is.null15, label %addr.null13, label %addr.present14

abort.dead:                                       ; No predecessors!
  unreachable

addr.null13:                                      ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present14:                                   ; preds = %addr.present
  %raw.int17 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int18 = and i64 %raw.int17, 281474976710655
  %raw.clean.ptr19 = inttoptr i64 %raw.clean.int18 to ptr
  %raw.load20 = load volatile i32, ptr %raw.clean.ptr19, align 4
  store i32 %raw.load20, ptr %var.tail, align 4
  %var.load21 = load i32, ptr %var.tail, align 4
  %var.load22 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load21, %var.load22
  %coerce.zext = zext i32 %subtmp to i64
  store i64 %coerce.zext, ptr %var.used, align 8
  %var.load23 = load i64, ptr %var.used, align 8
  %var.load24 = load ptr, ptr %var.ring, align 8
  %fld.gep25 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load24, i32 0, i32 15
  %fld.load26 = load i64, ptr %fld.gep25, align 8
  %cmptmp = icmp sge i64 %var.load23, %fld.load26
  br i1 %cmptmp, label %choice.then, label %choice.exit

abort.dead16:                                     ; No predecessors!
  unreachable

choice.then:                                      ; preds = %addr.present14
  ret i1 false

choice.exit:                                      ; preds = %ret.dead, %addr.present14
  %var.load27 = load ptr, ptr %var.ring, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load27, i32 0, i32 1
  %fld.load29 = load ptr, ptr %fld.gep28, align 8
  %var.load30 = load ptr, ptr %var.ring, align 8
  %fld.gep31 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load30, i32 0, i32 9
  %fld.load32 = load i64, ptr %fld.gep31, align 8
  %ptr.int.l33 = ptrtoint ptr %fld.load29 to i64
  %addtmp34 = add i64 %ptr.int.l33, %fld.load32
  %ptr.res35 = inttoptr i64 %addtmp34 to ptr
  %addr.is.null38 = icmp eq ptr %ptr.res35, null
  br i1 %addr.is.null38, label %addr.null36, label %addr.present37

ret.dead:                                         ; No predecessors!
  br label %choice.exit

addr.null36:                                      ; preds = %choice.exit
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present37:                                   ; preds = %choice.exit
  %raw.int40 = ptrtoint ptr %ptr.res35 to i64
  %raw.clean.int41 = and i64 %raw.int40, 281474976710655
  %raw.clean.ptr42 = inttoptr i64 %raw.clean.int41 to ptr
  %raw.load43 = load volatile i32, ptr %raw.clean.ptr42, align 4
  store i32 %raw.load43, ptr %var.mask, align 4
  %var.load44 = load i32, ptr %var.tail, align 4
  %var.load45 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load44, %var.load45
  %coerce.zext46 = zext i32 %bandtmp to i64
  store i64 %coerce.zext46, ptr %var.idx, align 8
  %var.load47 = load ptr, ptr %var.ring, align 8
  %fld.gep48 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load47, i32 0, i32 3
  %fld.load49 = load ptr, ptr %fld.gep48, align 8
  %var.load50 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load50, 64
  %ptr.int.l51 = ptrtoint ptr %fld.load49 to i64
  %addtmp52 = add i64 %ptr.int.l51, %multmp
  %ptr.res53 = inttoptr i64 %addtmp52 to ptr
  %addr.is.null56 = icmp eq ptr %ptr.res53, null
  br i1 %addr.is.null56, label %addr.null54, label %addr.present55

abort.dead39:                                     ; No predecessors!
  unreachable

addr.null54:                                      ; preds = %addr.present37
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present55:                                   ; preds = %addr.present37
  store ptr %ptr.res53, ptr %var.sqe_dest, align 8
  %var.load58 = load i64, ptr %var.op, align 8
  %var.load59 = load i64, ptr @"var.uring::OP_ASYNC_CANCEL", align 8
  %cmptmp60 = icmp eq i64 %var.load58, %var.load59
  br i1 %cmptmp60, label %choice.then61, label %choice.else

abort.dead57:                                     ; No predecessors!
  unreachable

choice.then61:                                    ; preds = %addr.present55
  %var.load63 = load ptr, ptr %var.addr, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load63 to i64
  br label %choice.exit62

choice.else:                                      ; preds = %addr.present55
  %var.load64 = load ptr, ptr %var.addr, align 8
  %coerce.ptr2int65 = ptrtoint ptr %var.load64 to i64
  %bandtmp66 = and i64 %coerce.ptr2int65, 281474976710655
  br label %choice.exit62

choice.exit62:                                    ; preds = %choice.else, %choice.then61
  %choice.res = phi i64 [ %coerce.ptr2int, %choice.then61 ], [ %bandtmp66, %choice.else ]
  store i64 %choice.res, ptr %var.target_addr, align 8
  %var.load67 = load ptr, ptr %var.sqe_dest, align 8
  %raw.int68 = ptrtoint ptr %var.load67 to i64
  %raw.clean.int69 = and i64 %raw.int68, 281474976710655
  %raw.clean.ptr70 = inttoptr i64 %raw.clean.int69 to ptr
  call void @llvm.memset.p0.i64(ptr align 1 %raw.clean.ptr70, i8 0, i64 64, i1 false)
  %var.load71 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l72 = ptrtoint ptr %var.load71 to i64
  %addtmp73 = add i64 %ptr.int.l72, 0
  %ptr.res74 = inttoptr i64 %addtmp73 to ptr
  %addr.is.null77 = icmp eq ptr %ptr.res74, null
  br i1 %addr.is.null77, label %addr.null75, label %addr.present76

addr.null75:                                      ; preds = %choice.exit62
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present76:                                   ; preds = %choice.exit62
  %var.load79 = load i64, ptr %var.op, align 8
  %coerce.trunc = trunc i64 %var.load79 to i8
  %raw.int80 = ptrtoint ptr %ptr.res74 to i64
  %raw.clean.int81 = and i64 %raw.int80, 281474976710655
  %raw.clean.ptr82 = inttoptr i64 %raw.clean.int81 to ptr
  store i8 %coerce.trunc, ptr %raw.clean.ptr82, align 1
  %var.load83 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l84 = ptrtoint ptr %var.load83 to i64
  %addtmp85 = add i64 %ptr.int.l84, 4
  %ptr.res86 = inttoptr i64 %addtmp85 to ptr
  %addr.is.null89 = icmp eq ptr %ptr.res86, null
  br i1 %addr.is.null89, label %addr.null87, label %addr.present88

abort.dead78:                                     ; No predecessors!
  unreachable

addr.null87:                                      ; preds = %addr.present76
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present88:                                   ; preds = %addr.present76
  %var.load91 = load i64, ptr %var.fd, align 8
  %coerce.trunc92 = trunc i64 %var.load91 to i32
  %raw.int93 = ptrtoint ptr %ptr.res86 to i64
  %raw.clean.int94 = and i64 %raw.int93, 281474976710655
  %raw.clean.ptr95 = inttoptr i64 %raw.clean.int94 to ptr
  store i32 %coerce.trunc92, ptr %raw.clean.ptr95, align 4
  %var.load96 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l97 = ptrtoint ptr %var.load96 to i64
  %addtmp98 = add i64 %ptr.int.l97, 8
  %ptr.res99 = inttoptr i64 %addtmp98 to ptr
  %addr.is.null102 = icmp eq ptr %ptr.res99, null
  br i1 %addr.is.null102, label %addr.null100, label %addr.present101

abort.dead90:                                     ; No predecessors!
  unreachable

addr.null100:                                     ; preds = %addr.present88
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present101:                                  ; preds = %addr.present88
  %var.load104 = load i64, ptr %var.off, align 8
  %raw.int105 = ptrtoint ptr %ptr.res99 to i64
  %raw.clean.int106 = and i64 %raw.int105, 281474976710655
  %raw.clean.ptr107 = inttoptr i64 %raw.clean.int106 to ptr
  store i64 %var.load104, ptr %raw.clean.ptr107, align 8
  %var.load108 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l109 = ptrtoint ptr %var.load108 to i64
  %addtmp110 = add i64 %ptr.int.l109, 16
  %ptr.res111 = inttoptr i64 %addtmp110 to ptr
  %addr.is.null114 = icmp eq ptr %ptr.res111, null
  br i1 %addr.is.null114, label %addr.null112, label %addr.present113

abort.dead103:                                    ; No predecessors!
  unreachable

addr.null112:                                     ; preds = %addr.present101
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present113:                                  ; preds = %addr.present101
  %var.load116 = load i64, ptr %var.target_addr, align 8
  %raw.int117 = ptrtoint ptr %ptr.res111 to i64
  %raw.clean.int118 = and i64 %raw.int117, 281474976710655
  %raw.clean.ptr119 = inttoptr i64 %raw.clean.int118 to ptr
  store i64 %var.load116, ptr %raw.clean.ptr119, align 8
  %var.load120 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l121 = ptrtoint ptr %var.load120 to i64
  %addtmp122 = add i64 %ptr.int.l121, 24
  %ptr.res123 = inttoptr i64 %addtmp122 to ptr
  %addr.is.null126 = icmp eq ptr %ptr.res123, null
  br i1 %addr.is.null126, label %addr.null124, label %addr.present125

abort.dead115:                                    ; No predecessors!
  unreachable

addr.null124:                                     ; preds = %addr.present113
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present125:                                  ; preds = %addr.present113
  %var.load128 = load i64, ptr %var.len, align 8
  %coerce.trunc129 = trunc i64 %var.load128 to i32
  %raw.int130 = ptrtoint ptr %ptr.res123 to i64
  %raw.clean.int131 = and i64 %raw.int130, 281474976710655
  %raw.clean.ptr132 = inttoptr i64 %raw.clean.int131 to ptr
  store i32 %coerce.trunc129, ptr %raw.clean.ptr132, align 4
  %var.load133 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l134 = ptrtoint ptr %var.load133 to i64
  %addtmp135 = add i64 %ptr.int.l134, 28
  %ptr.res136 = inttoptr i64 %addtmp135 to ptr
  %addr.is.null139 = icmp eq ptr %ptr.res136, null
  br i1 %addr.is.null139, label %addr.null137, label %addr.present138

abort.dead127:                                    ; No predecessors!
  unreachable

addr.null137:                                     ; preds = %addr.present125
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present138:                                  ; preds = %addr.present125
  %var.load141 = load i64, ptr %var.op_flags, align 8
  %coerce.trunc142 = trunc i64 %var.load141 to i32
  %raw.int143 = ptrtoint ptr %ptr.res136 to i64
  %raw.clean.int144 = and i64 %raw.int143, 281474976710655
  %raw.clean.ptr145 = inttoptr i64 %raw.clean.int144 to ptr
  store i32 %coerce.trunc142, ptr %raw.clean.ptr145, align 4
  %var.load146 = load ptr, ptr %var.sqe_dest, align 8
  %ptr.int.l147 = ptrtoint ptr %var.load146 to i64
  %addtmp148 = add i64 %ptr.int.l147, 32
  %ptr.res149 = inttoptr i64 %addtmp148 to ptr
  %addr.is.null152 = icmp eq ptr %ptr.res149, null
  br i1 %addr.is.null152, label %addr.null150, label %addr.present151

abort.dead140:                                    ; No predecessors!
  unreachable

addr.null150:                                     ; preds = %addr.present138
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present151:                                  ; preds = %addr.present138
  %var.load154 = load i64, ptr %var.user_data, align 8
  %raw.int155 = ptrtoint ptr %ptr.res149 to i64
  %raw.clean.int156 = and i64 %raw.int155, 281474976710655
  %raw.clean.ptr157 = inttoptr i64 %raw.clean.int156 to ptr
  store i64 %var.load154, ptr %raw.clean.ptr157, align 8
  %var.load158 = load ptr, ptr %var.ring, align 8
  %fld.gep159 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load158, i32 0, i32 1
  %fld.load160 = load ptr, ptr %fld.gep159, align 8
  %var.load161 = load ptr, ptr %var.ring, align 8
  %fld.gep162 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load161, i32 0, i32 10
  %fld.load163 = load i64, ptr %fld.gep162, align 8
  %ptr.int.l164 = ptrtoint ptr %fld.load160 to i64
  %addtmp165 = add i64 %ptr.int.l164, %fld.load163
  %ptr.res166 = inttoptr i64 %addtmp165 to ptr
  %addr.is.null169 = icmp eq ptr %ptr.res166, null
  br i1 %addr.is.null169, label %addr.null167, label %addr.present168

abort.dead153:                                    ; No predecessors!
  unreachable

addr.null167:                                     ; preds = %addr.present151
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present168:                                  ; preds = %addr.present151
  %var.load171 = load i64, ptr %var.idx, align 8
  %multmp172 = mul i64 %var.load171, 4
  %ptr.int.l173 = ptrtoint ptr %ptr.res166 to i64
  %addtmp174 = add i64 %ptr.int.l173, %multmp172
  %ptr.res175 = inttoptr i64 %addtmp174 to ptr
  %addr.is.null178 = icmp eq ptr %ptr.res175, null
  br i1 %addr.is.null178, label %addr.null176, label %addr.present177

abort.dead170:                                    ; No predecessors!
  unreachable

addr.null176:                                     ; preds = %addr.present168
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present177:                                  ; preds = %addr.present168
  %var.load180 = load i64, ptr %var.idx, align 8
  %coerce.trunc181 = trunc i64 %var.load180 to i32
  %raw.int182 = ptrtoint ptr %ptr.res175 to i64
  %raw.clean.int183 = and i64 %raw.int182, 281474976710655
  %raw.clean.ptr184 = inttoptr i64 %raw.clean.int183 to ptr
  store i32 %coerce.trunc181, ptr %raw.clean.ptr184, align 4
  %var.load185 = load ptr, ptr %var.ring, align 8
  %fld.gep186 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load185, i32 0, i32 1
  %fld.load187 = load ptr, ptr %fld.gep186, align 8
  %var.load188 = load ptr, ptr %var.ring, align 8
  %fld.gep189 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load188, i32 0, i32 8
  %fld.load190 = load i64, ptr %fld.gep189, align 8
  %ptr.int.l191 = ptrtoint ptr %fld.load187 to i64
  %addtmp192 = add i64 %ptr.int.l191, %fld.load190
  %ptr.res193 = inttoptr i64 %addtmp192 to ptr
  %addr.is.null196 = icmp eq ptr %ptr.res193, null
  br i1 %addr.is.null196, label %addr.null194, label %addr.present195

abort.dead179:                                    ; No predecessors!
  unreachable

addr.null194:                                     ; preds = %addr.present177
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present195:                                  ; preds = %addr.present177
  %var.load198 = load i32, ptr %var.tail, align 4
  %addtmp199 = add i32 %var.load198, 1
  %raw.int200 = ptrtoint ptr %ptr.res193 to i64
  %raw.clean.int201 = and i64 %raw.int200, 281474976710655
  %raw.clean.ptr202 = inttoptr i64 %raw.clean.int201 to ptr
  store i32 %addtmp199, ptr %raw.clean.ptr202, align 4
  ret i1 true

abort.dead197:                                    ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_null_addr_cast() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @null_addr_cast, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

define i1 @"uring::prep_nop"(ptr %0, i64 %1) #3 {
entry:
  %var.user_data = alloca i64, align 8
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  store i64 %1, ptr %var.user_data, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %var.load1 = load i64, ptr @"var.uring::OP_NOP", align 8
  %var.load2 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 0, i64 0, ptr null, i64 0, i64 %var.load2)
  ret i1 %call.res
}

define i1 @"uring::prep_read"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #3 {
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
  %raw.int = ptrtoint ptr %var.load3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 -1, ptr %raw.clean.ptr, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_read_at"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #3 {
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
  %raw.int = ptrtoint ptr %var.load4 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %raw.clean.ptr, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_write"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #3 {
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
  %raw.int = ptrtoint ptr %var.load3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 -1, ptr %raw.clean.ptr, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_write_at"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #3 {
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
  %raw.int = ptrtoint ptr %var.load4 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %raw.clean.ptr, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_pipe_read"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #3 {
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
  %raw.int = ptrtoint ptr %var.load3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %raw.clean.ptr, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_pipe_write"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4) #3 {
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
  %raw.int = ptrtoint ptr %var.load3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %raw.clean.ptr, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_close"(ptr %0, i64 %1, i64 %2) #3 {
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
  %var.load3 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr null, i64 0, i64 %var.load3)
  ret i1 %call.res
}

define i1 @"uring::prep_recv"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #3 {
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
  %raw.int = ptrtoint ptr %var.load3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %raw.clean.ptr, i64 %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_send"(ptr %0, i64 %1, ptr %2, i64 %3, i64 %4, i64 %5) #3 {
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
  %raw.int = ptrtoint ptr %var.load3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %raw.clean.ptr, i64 %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_accept"(ptr %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5) #3 {
entry:
  %var.length_address = alloca i64, align 8
  %var.value8 = alloca ptr, align 8
  %var._7 = alloca ptr, align 8
  %var.address = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  %var._ = alloca ptr, align 8
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
  %var.load = load ptr, ptr %var.addr, align 8
  %niche.ne.null = icmp ne ptr %var.load, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load, ptr %var._, align 8
  store ptr %var.load, ptr %var.value, align 8
  %var.load1 = load ptr, ptr %var.value, align 8
  %raw.int = ptrtoint ptr %var.load1 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %raw.clean.ptr, %choice.then ], [ null, %choice.else ]
  store ptr %choice.res, ptr %var.address, align 8
  %var.load2 = load ptr, ptr %var.addrlen_ptr, align 8
  %niche.ne.null3 = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null3, label %choice.then4, label %choice.else5

choice.then4:                                     ; preds = %choice.exit
  store ptr %var.load2, ptr %var._7, align 8
  store ptr %var.load2, ptr %var.value8, align 8
  %var.load9 = load ptr, ptr %var.value8, align 8
  %coerce.ptr2int = ptrtoint ptr %var.load9 to i64
  br label %choice.exit6

choice.else5:                                     ; preds = %choice.exit
  br label %choice.exit6

choice.exit6:                                     ; preds = %choice.else5, %choice.then4
  %choice.res10 = phi i64 [ %coerce.ptr2int, %choice.then4 ], [ 0, %choice.else5 ]
  store i64 %choice.res10, ptr %var.length_address, align 8
  %var.load11 = load ptr, ptr %var.ring, align 8
  %var.load12 = load i64, ptr @"var.uring::OP_ACCEPT", align 8
  %var.load13 = load i64, ptr %var.fd, align 8
  %var.load14 = load i64, ptr %var.length_address, align 8
  %var.load15 = load ptr, ptr %var.address, align 8
  %var.load16 = load i64, ptr %var.flags, align 8
  %var.load17 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load11, i64 %var.load12, i64 %var.load13, i64 %var.load14, ptr %var.load15, i64 0, i64 %var.load16, i64 %var.load17)
  ret i1 %call.res
}

define i1 @"uring::prep_cancel"(ptr %0, i64 %1, i64 %2) #3 {
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

define i1 @"uring::prep_timeout"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #3 {
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
  %raw.int = ptrtoint ptr %var.load3 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %var.load4 = load i64, ptr %var.flags, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 -1, i64 %var.load2, ptr %raw.clean.ptr, i64 1, i64 %var.load4, i64 %var.load5)
  ret i1 %call.res
}

define i1 @"uring::prep_timeout_ms"(ptr %0, ptr %1, i64 %2, i64 %3) #3 {
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
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %choice.exit
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %choice.exit
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

abort.dead:                                       ; No predecessors!
  unreachable
}

define i1 @"uring::prep_poll_add"(ptr %0, i64 %1, i64 %2, i64 %3) #3 {
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
  %var.load3 = load i64, ptr %var.poll_mask, align 8
  %var.load4 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr null, i64 0, i64 %var.load3, i64 %var.load4)
  ret i1 %call.res
}

define i64 @"uring::sq_space"(ptr %0) #3 {
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
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %entry
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
  %addr.is.null15 = icmp eq ptr %ptr.res12, null
  br i1 %addr.is.null15, label %addr.null13, label %addr.present14

abort.dead:                                       ; No predecessors!
  unreachable

addr.null13:                                      ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present14:                                   ; preds = %addr.present
  %raw.int17 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int18 = and i64 %raw.int17, 281474976710655
  %raw.clean.ptr19 = inttoptr i64 %raw.clean.int18 to ptr
  %raw.load20 = load volatile i32, ptr %raw.clean.ptr19, align 4
  store i32 %raw.load20, ptr %var.tail, align 4
  %var.load21 = load i32, ptr %var.tail, align 4
  %var.load22 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load21, %var.load22
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.used, align 8
  %var.load23 = load ptr, ptr %var.ring, align 8
  %fld.gep24 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load23, i32 0, i32 15
  %fld.load25 = load i64, ptr %fld.gep24, align 8
  %var.load26 = load i64, ptr %var.used, align 8
  %subtmp27 = sub i64 %fld.load25, %var.load26
  ret i64 %subtmp27

abort.dead16:                                     ; No predecessors!
  unreachable
}

define i64 @"uring::cq_ready"(ptr %0) #3 {
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
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %entry
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
  %addr.is.null15 = icmp eq ptr %ptr.res12, null
  br i1 %addr.is.null15, label %addr.null13, label %addr.present14

abort.dead:                                       ; No predecessors!
  unreachable

addr.null13:                                      ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present14:                                   ; preds = %addr.present
  %raw.int17 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int18 = and i64 %raw.int17, 281474976710655
  %raw.clean.ptr19 = inttoptr i64 %raw.clean.int18 to ptr
  %raw.load20 = load volatile i32, ptr %raw.clean.ptr19, align 4
  store i32 %raw.load20, ptr %var.tail, align 4
  %var.load21 = load i32, ptr %var.tail, align 4
  %var.load22 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load21, %var.load22
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  ret i64 %bandtmp

abort.dead16:                                     ; No predecessors!
  unreachable
}

define i64 @"uring::submit_and_wait"(ptr %0, i64 %1) #3 {
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
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %entry
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
  %addr.is.null15 = icmp eq ptr %ptr.res12, null
  br i1 %addr.is.null15, label %addr.null13, label %addr.present14

abort.dead:                                       ; No predecessors!
  unreachable

addr.null13:                                      ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present14:                                   ; preds = %addr.present
  %raw.int17 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int18 = and i64 %raw.int17, 281474976710655
  %raw.clean.ptr19 = inttoptr i64 %raw.clean.int18 to ptr
  %raw.load20 = load volatile i32, ptr %raw.clean.ptr19, align 4
  store i32 %raw.load20, ptr %var.tail, align 4
  %var.load21 = load i32, ptr %var.tail, align 4
  %var.load22 = load i32, ptr %var.head, align 4
  %subtmp = sub i32 %var.load21, %var.load22
  %coerce.zext = zext i32 %subtmp to i64
  %bandtmp = and i64 %coerce.zext, 4294967295
  store i64 %bandtmp, ptr %var.to_submit, align 8
  %var.load23 = load i64, ptr %var.wait_nr, align 8
  %cmptmp = icmp sgt i64 %var.load23, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

abort.dead16:                                     ; No predecessors!
  unreachable

choice.then:                                      ; preds = %addr.present14
  %var.load24 = load i64, ptr @"var.uring::IORING_ENTER_GETEVENTS", align 8
  br label %choice.exit

choice.else:                                      ; preds = %addr.present14
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %var.load24, %choice.then ], [ 0, %choice.else ]
  store i64 %choice.res, ptr %var.flags, align 8
  %var.load25 = load i64, ptr @"var.uring::SYS_IO_URING_ENTER", align 8
  %var.load26 = load ptr, ptr %var.ring, align 8
  %fld.gep27 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load26, i32 0, i32 0
  %fld.load28 = load i64, ptr %fld.gep27, align 8
  %cast.int2ptr = inttoptr i64 %fld.load28 to ptr
  %var.load29 = load i64, ptr %var.to_submit, align 8
  %cast.int2ptr30 = inttoptr i64 %var.load29 to ptr
  %var.load31 = load i64, ptr %var.wait_nr, align 8
  %cast.int2ptr32 = inttoptr i64 %var.load31 to ptr
  %var.load33 = load i64, ptr %var.flags, align 8
  %cast.int2ptr34 = inttoptr i64 %var.load33 to ptr
  %call.res = call i64 @syscall(i64 %var.load25, ptr %cast.int2ptr, ptr %cast.int2ptr30, ptr %cast.int2ptr32, ptr %cast.int2ptr34, ptr null, ptr null)
  ret i64 %call.res
}

define i64 @"uring::submit"(ptr %0) #3 {
entry:
  %var.ring = alloca ptr, align 8
  store ptr %0, ptr %var.ring, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call i64 @"uring::submit_and_wait"(ptr %var.load, i64 0)
  ret i64 %call.res
}

define ptr @"uring::peek_cqe"(ptr %0) #3 {
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
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

addr.null:                                        ; preds = %entry
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %entry
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
  %addr.is.null15 = icmp eq ptr %ptr.res12, null
  br i1 %addr.is.null15, label %addr.null13, label %addr.present14

abort.dead:                                       ; No predecessors!
  unreachable

addr.null13:                                      ; preds = %addr.present
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present14:                                   ; preds = %addr.present
  %raw.int17 = ptrtoint ptr %ptr.res12 to i64
  %raw.clean.int18 = and i64 %raw.int17, 281474976710655
  %raw.clean.ptr19 = inttoptr i64 %raw.clean.int18 to ptr
  %raw.load20 = load volatile i32, ptr %raw.clean.ptr19, align 4
  store i32 %raw.load20, ptr %var.tail, align 4
  %var.load21 = load i32, ptr %var.head, align 4
  %var.load22 = load i32, ptr %var.tail, align 4
  %coerce.zext = zext i32 %var.load21 to i64
  %coerce.zext23 = zext i32 %var.load22 to i64
  %cmptmp = icmp ne i64 %coerce.zext, %coerce.zext23
  br i1 %cmptmp, label %choice.then, label %choice.else

abort.dead16:                                     ; No predecessors!
  unreachable

choice.then:                                      ; preds = %addr.present14
  %var.load24 = load ptr, ptr %var.ring, align 8
  %fld.gep25 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load24, i32 0, i32 5
  %fld.load26 = load ptr, ptr %fld.gep25, align 8
  %var.load27 = load ptr, ptr %var.ring, align 8
  %fld.gep28 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load27, i32 0, i32 13
  %fld.load29 = load i64, ptr %fld.gep28, align 8
  %ptr.int.l30 = ptrtoint ptr %fld.load26 to i64
  %addtmp31 = add i64 %ptr.int.l30, %fld.load29
  %ptr.res32 = inttoptr i64 %addtmp31 to ptr
  %addr.is.null35 = icmp eq ptr %ptr.res32, null
  br i1 %addr.is.null35, label %addr.null33, label %addr.present34

choice.else:                                      ; preds = %addr.present14
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %addr.present107
  %choice.res = phi ptr [ %var.load115, %addr.present107 ], [ null, %choice.else ]
  ret ptr %choice.res

addr.null33:                                      ; preds = %choice.then
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present34:                                   ; preds = %choice.then
  %raw.int37 = ptrtoint ptr %ptr.res32 to i64
  %raw.clean.int38 = and i64 %raw.int37, 281474976710655
  %raw.clean.ptr39 = inttoptr i64 %raw.clean.int38 to ptr
  %raw.load40 = load volatile i32, ptr %raw.clean.ptr39, align 4
  store i32 %raw.load40, ptr %var.mask, align 4
  %var.load41 = load i32, ptr %var.head, align 4
  %var.load42 = load i32, ptr %var.mask, align 4
  %bandtmp = and i32 %var.load41, %var.load42
  %coerce.zext43 = zext i32 %bandtmp to i64
  store i64 %coerce.zext43, ptr %var.idx, align 8
  %var.load44 = load ptr, ptr %var.ring, align 8
  %fld.gep45 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load44, i32 0, i32 5
  %fld.load46 = load ptr, ptr %fld.gep45, align 8
  %var.load47 = load ptr, ptr %var.ring, align 8
  %fld.gep48 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load47, i32 0, i32 14
  %fld.load49 = load i64, ptr %fld.gep48, align 8
  %ptr.int.l50 = ptrtoint ptr %fld.load46 to i64
  %addtmp51 = add i64 %ptr.int.l50, %fld.load49
  %ptr.res52 = inttoptr i64 %addtmp51 to ptr
  %addr.is.null55 = icmp eq ptr %ptr.res52, null
  br i1 %addr.is.null55, label %addr.null53, label %addr.present54

abort.dead36:                                     ; No predecessors!
  unreachable

addr.null53:                                      ; preds = %addr.present34
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present54:                                   ; preds = %addr.present34
  %var.load57 = load i64, ptr %var.idx, align 8
  %multmp = mul i64 %var.load57, 16
  %ptr.int.l58 = ptrtoint ptr %ptr.res52 to i64
  %addtmp59 = add i64 %ptr.int.l58, %multmp
  %ptr.res60 = inttoptr i64 %addtmp59 to ptr
  %addr.is.null63 = icmp eq ptr %ptr.res60, null
  br i1 %addr.is.null63, label %addr.null61, label %addr.present62

abort.dead56:                                     ; No predecessors!
  unreachable

addr.null61:                                      ; preds = %addr.present54
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present62:                                   ; preds = %addr.present54
  store ptr %ptr.res60, ptr %var.cqe_ptr, align 8
  %var.load65 = load ptr, ptr %var.cqe_ptr, align 8
  %raw.int66 = ptrtoint ptr %var.load65 to i64
  %raw.clean.int67 = and i64 %raw.int66, 281474976710655
  %raw.clean.ptr68 = inttoptr i64 %raw.clean.int67 to ptr
  %raw.load69 = load volatile i64, ptr %raw.clean.ptr68, align 8
  %var.load70 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l71 = ptrtoint ptr %var.load70 to i64
  %addtmp72 = add i64 %ptr.int.l71, 8
  %ptr.res73 = inttoptr i64 %addtmp72 to ptr
  %addr.is.null76 = icmp eq ptr %ptr.res73, null
  br i1 %addr.is.null76, label %addr.null74, label %addr.present75

abort.dead64:                                     ; No predecessors!
  unreachable

addr.null74:                                      ; preds = %addr.present62
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present75:                                   ; preds = %addr.present62
  %raw.int78 = ptrtoint ptr %ptr.res73 to i64
  %raw.clean.int79 = and i64 %raw.int78, 281474976710655
  %raw.clean.ptr80 = inttoptr i64 %raw.clean.int79 to ptr
  %raw.load81 = load volatile i32, ptr %raw.clean.ptr80, align 4
  %coerce.sext = sext i32 %raw.load81 to i64
  %var.load82 = load ptr, ptr %var.cqe_ptr, align 8
  %ptr.int.l83 = ptrtoint ptr %var.load82 to i64
  %addtmp84 = add i64 %ptr.int.l83, 12
  %ptr.res85 = inttoptr i64 %addtmp84 to ptr
  %addr.is.null88 = icmp eq ptr %ptr.res85, null
  br i1 %addr.is.null88, label %addr.null86, label %addr.present87

abort.dead77:                                     ; No predecessors!
  unreachable

addr.null86:                                      ; preds = %addr.present75
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present87:                                   ; preds = %addr.present75
  %raw.int90 = ptrtoint ptr %ptr.res85 to i64
  %raw.clean.int91 = and i64 %raw.int90, 281474976710655
  %raw.clean.ptr92 = inttoptr i64 %raw.clean.int91 to ptr
  %raw.load93 = load volatile i32, ptr %raw.clean.ptr92, align 4
  %coerce.zext94 = zext i32 %raw.load93 to i64
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ i64, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i64 %raw.load69, ptr %rec.fld, align 8
  %rec.fld95 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %coerce.sext, ptr %rec.fld95, align 8
  %rec.fld96 = getelementptr inbounds { i64, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %coerce.zext94, ptr %rec.fld96, align 8
  store ptr %rec.alloc, ptr %var.cqe, align 8
  %var.load97 = load ptr, ptr %var.ring, align 8
  %fld.gep98 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load97, i32 0, i32 5
  %fld.load99 = load ptr, ptr %fld.gep98, align 8
  %var.load100 = load ptr, ptr %var.ring, align 8
  %fld.gep101 = getelementptr inbounds { i64, ptr, i64, ptr, i64, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }, ptr %var.load100, i32 0, i32 11
  %fld.load102 = load i64, ptr %fld.gep101, align 8
  %ptr.int.l103 = ptrtoint ptr %fld.load99 to i64
  %addtmp104 = add i64 %ptr.int.l103, %fld.load102
  %ptr.res105 = inttoptr i64 %addtmp104 to ptr
  %addr.is.null108 = icmp eq ptr %ptr.res105, null
  br i1 %addr.is.null108, label %addr.null106, label %addr.present107

abort.dead89:                                     ; No predecessors!
  unreachable

addr.null106:                                     ; preds = %addr.present87
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present107:                                  ; preds = %addr.present87
  %var.load110 = load i32, ptr %var.head, align 4
  %addtmp111 = add i32 %var.load110, 1
  %raw.int112 = ptrtoint ptr %ptr.res105 to i64
  %raw.clean.int113 = and i64 %raw.int112, 281474976710655
  %raw.clean.ptr114 = inttoptr i64 %raw.clean.int113 to ptr
  store i32 %addtmp111, ptr %raw.clean.ptr114, align 4
  %var.load115 = load ptr, ptr %var.cqe, align 8
  br label %choice.exit

abort.dead109:                                    ; No predecessors!
  unreachable
}

define { i1, i64 } @"uring::wait_cqe"(ptr %0) #3 {
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
  %ptr.to.i64 = ptrtoint ptr %var.load2 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
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
  %ptr.to.i6418 = ptrtoint ptr %var.load17 to i64
  %ram.pay19 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i6418, 1
  br label %choice.exit15

choice.else14:                                    ; preds = %choice.else7
  br label %choice.exit15

choice.exit15:                                    ; preds = %choice.else14, %choice.then13
  %choice.res = phi { i1, i64 } [ %ram.pay19, %choice.then13 ], [ { i1 false, i64 ptrtoint (ptr @str.5.struct to i64) }, %choice.else14 ]
  br label %choice.exit8
}

define ptr @"uring::reap"(ptr %0) #3 {
entry:
  %var.c = alloca ptr, align 8
  %var._3 = alloca ptr, align 8
  %var.opt = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.59 = alloca i64, align 8
  %loop.idx.59 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.header.59:                                   ; preds = %loop.latch.59, %entry
  %counter.load = load i64, ptr %loop.idx.59, align 8
  br label %loop.body.59

loop.body.59:                                     ; preds = %loop.header.59
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.59, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call ptr @"uring::peek_cqe"(ptr %var.load)
  store ptr %call.res, ptr %var.opt, align 8
  %var.load2 = load ptr, ptr %var.opt, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

loop.exit.nat.59:                                 ; No predecessors!
  br label %loop.exit.59

loop.latch.59:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.59, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.59, align 8
  br label %loop.header.59

loop.exit.59:                                     ; preds = %choice.else, %loop.exit.nat.59
  %var.load16 = load ptr, ptr %"var.cqes'", align 8
  %a.load17 = load ptr, ptr %"var.cqes'", align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

choice.then:                                      ; preds = %loop.body.59
  store ptr %var.load2, ptr %var._3, align 8
  store ptr %var.load2, ptr %var.c, align 8
  %var.load4 = load ptr, ptr %var.c, align 8
  %a.load = load ptr, ptr %"var.cqes'", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %loop.body.59
  br label %loop.exit.59

choice.exit:                                      ; preds = %a.store
  br label %loop.latch.59

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

a.create19:                                       ; preds = %loop.exit.59
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

a.after20:                                        ; preds = %a.create19, %loop.exit.59
  %a.load228 = load ptr, ptr %"var.cqes'", align 8
  ret ptr %a.load228
}

define internal void @dva_array_grow(ptr %0) #3 {
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
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

define { i1, i64 } @"uring::drain_pipes"(ptr %0, ptr %1) #3 {
entry:
  %var.fd307 = alloca i64, align 8
  %var._305 = alloca ptr, align 8
  %var._302 = alloca i64, align 8
  %var.prev = alloca ptr, align 8
  %var._165 = alloca ptr, align 8
  %var._162 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.nb = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.cqe = alloca ptr, align 8
  %var._i78 = alloca i64, align 8
  %var._77 = alloca i64, align 8
  %loop.step.62 = alloca i64, align 8
  %loop.idx.62 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.61 = alloca i64, align 8
  %loop.idx.61 = alloca i64, align 8
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
  %ptr.to.i64 = ptrtoint ptr %a.load223 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
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
  %var.load28 = load ptr, ptr %var.fds, align 8
  %a.load29 = load ptr, ptr %var.fds, align 8
  %a.null30 = icmp eq ptr %a.load29, null
  br i1 %a.null30, label %a.create31, label %a.after32

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len26

a.create31:                                       ; preds = %b.buf.len26
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
  store ptr %a.create34, ptr %var.fds, align 8
  br label %a.after32

a.after32:                                        ; preds = %a.create31, %b.buf.len26
  %a.load240 = load ptr, ptr %var.fds, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  %arr.cycle.len41 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 1
  %arr.cycle.data42 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.header.61:                                   ; preds = %loop.latch.61, %a.after32
  %counter.load = load i64, ptr %loop.idx.61, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len41
  br i1 %loop.cond, label %loop.body.61, label %loop.exit.nat.61

loop.body.61:                                     ; preds = %loop.header.61
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.61, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data42, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  store i64 %arr.elem.raw, ptr %var._, align 8
  store i64 %arr.elem.raw, ptr %var.fd, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %a.load43 = load ptr, ptr %"var.outs'", align 8
  %a.null44 = icmp eq ptr %a.load43, null
  br i1 %a.null44, label %a.create45, label %a.after46

loop.exit.nat.61:                                 ; preds = %loop.header.61
  br label %loop.exit.61

loop.latch.61:                                    ; preds = %choice.exit63
  %step.val = load i64, ptr %loop.step.61, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.61, align 8
  br label %loop.header.61

loop.exit.61:                                     ; preds = %loop.exit.nat.61
  store i64 0, ptr %loop.idx.62, align 8
  br label %loop.header.62

a.create45:                                       ; preds = %loop.body.61
  %arena.cur47 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create48 = call ptr @dva_arena_alloc(ptr %arena.cur47, i64 24)
  %arena.cur49 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf50 = call ptr @dva_arena_alloc(ptr %arena.cur49, i64 128)
  %a.len.gep51 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 0
  store i64 0, ptr %a.len.gep51, align 8
  %a.data.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 1
  store ptr %a.buf50, ptr %a.data.gep52, align 8
  %a.cap.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create48, i32 0, i32 2
  store i64 16, ptr %a.cap.gep53, align 8
  store ptr %a.create48, ptr %"var.outs'", align 8
  br label %a.after46

a.after46:                                        ; preds = %a.create45, %loop.body.61
  %a.load254 = load ptr, ptr %"var.outs'", align 8
  br label %a.check

a.check:                                          ; preds = %a.after46
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load254, i32 0, i32 0
  %a.len55 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load254, i32 0, i32 2
  %a.cap56 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len55, %a.cap56
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load254)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load254, i32 0, i32 1
  %a.cur.data57 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load254, i32 0, i32 0
  %a.cur.len58 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data57, i64 %a.cur.len58
  store i64 ptrtoint (ptr @str.6.struct to i64), ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len58, 1
  %b.len.gep59 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load254, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep59, align 8
  %var.load60 = load i64, ptr %var.fd, align 8
  %cmptmp61 = icmp sge i64 %var.load60, 0
  br i1 %cmptmp61, label %choice.then62, label %choice.exit63

choice.then62:                                    ; preds = %a.store
  %var.load64 = load ptr, ptr %var.ring, align 8
  %var.load65 = load i64, ptr %var.fd, align 8
  %var.load66 = load ptr, ptr %var.scratch, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load66, i32 0, i32 1
  %b.ptr67 = load ptr, ptr %b.ptr, align 8
  %2 = icmp eq ptr %b.ptr67, null
  br i1 %2, label %b.detached, label %b.writable

choice.exit63:                                    ; preds = %addr.present, %a.store
  br label %loop.latch.61

b.detached:                                       ; preds = %choice.then62
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %choice.then62
  %addr.tag.int = ptrtoint ptr %b.ptr67 to i64
  %addr.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift = shl i64 %addr.tag.gen, 48
  %addr.tagged = or i64 %addr.tag.int, %addr.tag.shift
  %addr.tagged.ptr = inttoptr i64 %addr.tagged to ptr
  %var.load69 = load i64, ptr %var.i, align 8
  %multmp70 = mul i64 %var.load69, 4096
  %ptr.int.l = ptrtoint ptr %addr.tagged.ptr to i64
  %addtmp = add i64 %ptr.int.l, %multmp70
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

abort.dead68:                                     ; No predecessors!
  unreachable

addr.null:                                        ; preds = %b.writable
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %b.writable
  %var.load72 = load i64, ptr %var.i, align 8
  %call.res = call i1 @"uring::prep_pipe_read"(ptr %var.load64, i64 %var.load65, ptr %ptr.res, i64 4096, i64 %var.load72)
  %var.load73 = load i64, ptr %"var.active'", align 8
  %addtmp74 = add i64 %var.load73, 1
  store i64 %addtmp74, ptr %"var.active'", align 8
  br label %choice.exit63

abort.dead71:                                     ; No predecessors!
  unreachable

loop.header.62:                                   ; preds = %loop.latch.62, %loop.exit.61
  %counter.load75 = load i64, ptr %loop.idx.62, align 8
  br label %loop.body.62

loop.body.62:                                     ; preds = %loop.header.62
  %loop.rel.i76 = sub i64 %counter.load75, 0
  store i64 1, ptr %loop.step.62, align 8
  store i64 %counter.load75, ptr %var._77, align 8
  store i64 %loop.rel.i76, ptr %var._i78, align 8
  %var.load79 = load i64, ptr %"var.active'", align 8
  %cmptmp80 = icmp sle i64 %var.load79, 0
  br i1 %cmptmp80, label %choice.then81, label %choice.exit82

loop.exit.nat.62:                                 ; No predecessors!
  br label %loop.exit.62

loop.latch.62:                                    ; preds = %choice.exit94
  %step.val338 = load i64, ptr %loop.step.62, align 8
  %loop.next339 = add i64 %counter.load75, %step.val338
  store i64 %loop.next339, ptr %loop.idx.62, align 8
  br label %loop.header.62

loop.exit.62:                                     ; preds = %choice.then81, %loop.exit.nat.62
  %var.load340 = load ptr, ptr %"var.outs'", align 8
  %a.load341 = load ptr, ptr %"var.outs'", align 8
  %a.null342 = icmp eq ptr %a.load341, null
  br i1 %a.null342, label %a.create343, label %a.after344

choice.then81:                                    ; preds = %loop.body.62
  br label %loop.exit.62

choice.exit82:                                    ; preds = %loop.body.62
  %var.load83 = load ptr, ptr %var.ring, align 8
  %call.res84 = call i64 @"uring::submit"(ptr %var.load83)
  %var.load85 = load ptr, ptr %var.ring, align 8
  %call.res86 = call { i1, i64 } @"uring::wait_cqe"(ptr %var.load85)
  %prop.is_pos = extractvalue { i1, i64 } %call.res86, 0
  br i1 %prop.is_pos, label %prop.pos.63, label %prop.ret.63

prop.pos.63:                                      ; preds = %choice.exit82
  %prop.pay.pos = extractvalue { i1, i64 } %call.res86, 1
  %pay.ptr = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.cqe, align 8
  %var.load87 = load ptr, ptr %var.cqe, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load87, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.idx, align 8
  %var.load88 = load i64, ptr %var.idx, align 8
  %cmptmp89 = icmp sge i64 %var.load88, 0
  br i1 %cmptmp89, label %and.64.then, label %and.64.else

prop.ret.63:                                      ; preds = %choice.exit82
  ret { i1, i64 } %call.res86

and.64.then:                                      ; preds = %prop.pos.63
  %var.load90 = load i64, ptr %var.idx, align 8
  %var.load91 = load i64, ptr %var.n, align 8
  %cmptmp92 = icmp slt i64 %var.load90, %var.load91
  br label %and.64.exit

and.64.else:                                      ; preds = %prop.pos.63
  br label %and.64.exit

and.64.exit:                                      ; preds = %and.64.else, %and.64.then
  %and.64.phi = phi i1 [ %cmptmp92, %and.64.then ], [ %cmptmp89, %and.64.else ]
  br i1 %and.64.phi, label %choice.then93, label %choice.exit94

choice.then93:                                    ; preds = %and.64.exit
  %var.load95 = load ptr, ptr %var.cqe, align 8
  %fld.gep96 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load95, i32 0, i32 1
  %fld.load97 = load i64, ptr %fld.gep96, align 8
  %cmptmp98 = icmp sgt i64 %fld.load97, 0
  br i1 %cmptmp98, label %choice.then99, label %choice.else

choice.exit94:                                    ; preds = %choice.exit100, %and.64.exit
  br label %loop.latch.62

choice.then99:                                    ; preds = %choice.then93
  %var.load101 = load ptr, ptr %var.cqe, align 8
  %fld.gep102 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load101, i32 0, i32 1
  %fld.load103 = load i64, ptr %fld.gep102, align 8
  store i64 %fld.load103, ptr %var.nb, align 8
  %var.load104 = load i64, ptr %var.nb, align 8
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 24)
  %cap.neg107 = icmp slt i64 %var.load104, 0
  %cap.safe108 = select i1 %cap.neg107, i64 0, i64 %var.load104
  %b.data.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new106, i32 0, i32 1
  %b.len.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new106, i32 0, i32 0
  %b.cap.gep111 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new106, i32 0, i32 2
  %b.buf.len112 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe108, i64 1)
  %sum113 = extractvalue { i64, i1 } %b.buf.len112, 0
  %ovf114 = extractvalue { i64, i1 } %b.buf.len112, 1
  br i1 %ovf114, label %str_overflow_abort116, label %b.buf.len115

choice.else:                                      ; preds = %choice.then93
  %var.load337 = load i64, ptr %"var.active'", align 8
  %subtmp = sub i64 %var.load337, 1
  store i64 %subtmp, ptr %"var.active'", align 8
  br label %choice.exit100

choice.exit100:                                   ; preds = %choice.else, %addr.present332
  br label %choice.exit94

b.buf.len115:                                     ; preds = %abort.dead117, %choice.then99
  %arena.cur118 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf119 = call ptr @dva_arena_alloc(ptr %arena.cur118, i64 %sum113)
  %b.nul0120 = getelementptr i8, ptr %b.buf119, i64 0
  store i8 0, ptr %b.nul0120, align 1
  store i64 0, ptr %b.len.gep110, align 8
  store ptr %b.buf119, ptr %b.data.gep109, align 8
  store i64 %cap.safe108, ptr %b.cap.gep111, align 8
  store ptr %builder.new106, ptr %var.b, align 8
  %var.load121 = load ptr, ptr %var.b, align 8
  %var.load122 = load i64, ptr %var.nb, align 8
  %load.scratch = load ptr, ptr %var.scratch, align 8
  %load.idx = load i64, ptr %var.idx, align 8
  %arena.cur123 = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur123, i64 16)
  %env.store.gep = getelementptr inbounds { ptr, i64 }, ptr %env.alloc, i32 0, i32 0
  store ptr %load.scratch, ptr %env.store.gep, align 8
  %env.store.gep124 = getelementptr inbounds { ptr, i64 }, ptr %env.alloc, i32 0, i32 1
  store i64 %load.idx, ptr %env.store.gep124, align 8
  %arena.cur125 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur125, i64 16)
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 0
  store ptr @"$anon_fn.106", ptr %clo.fn.gep, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res126 = call i64 @"mem::write_tail"(ptr %var.load121, i64 %var.load122, ptr %clo.alloc)
  %var.load127 = load ptr, ptr %"var.outs'", align 8
  %a.load128 = load ptr, ptr %"var.outs'", align 8
  %a.null129 = icmp eq ptr %a.load128, null
  br i1 %a.null129, label %a.create130, label %a.after131

str_overflow_abort116:                            ; preds = %choice.then99
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead117:                                    ; No predecessors!
  br label %b.buf.len115

a.create130:                                      ; preds = %b.buf.len115
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 24)
  %arena.cur134 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf135 = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 128)
  %a.len.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create133, i32 0, i32 0
  store i64 0, ptr %a.len.gep136, align 8
  %a.data.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create133, i32 0, i32 1
  store ptr %a.buf135, ptr %a.data.gep137, align 8
  %a.cap.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create133, i32 0, i32 2
  store i64 16, ptr %a.cap.gep138, align 8
  store ptr %a.create133, ptr %"var.outs'", align 8
  br label %a.after131

a.after131:                                       ; preds = %a.create130, %b.buf.len115
  %a.load2139 = load ptr, ptr %"var.outs'", align 8
  %var.load140 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2139, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after131
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2139, i32 0, i32 0
  %a.rd.len141 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load140, 0
  %a.rd.lt = icmp slt i64 %var.load140, %a.rd.len141
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2139, i32 0, i32 1
  %a.rd.data142 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data142, i64 %var.load140
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after131
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 395, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 40, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 56)
  %err.code.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 0
  store i64 4011, ptr %err.code.gep146, align 8
  %err.msg.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep147, align 8
  %err.file.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep148, align 8
  %err.line.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 3
  store i64 395, ptr %err.line.gep149, align 8
  %err.col.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 4
  store i64 40, ptr %err.col.gep150, align 8
  %err.ctx.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 5
  %err.ctx0.gep152 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep151, i32 0, i32 0
  store i64 %var.load140, ptr %err.ctx0.gep152, align 8
  %err.ctx1.gep153 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep151, i32 0, i32 1
  store i64 %a.rd.len141, ptr %err.ctx1.gep153, align 8
  %err.p2i154 = ptrtoint ptr %err.alloc145 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i154, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay155 = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag156 = extractvalue { i1, i64 } %ram.pay155, 0
  br i1 %ram.tag156, label %choice.then157, label %choice.else158

choice.then157:                                   ; preds = %a.rd.done
  %ram.pay160 = extractvalue { i1, i64 } %ram.pay155, 1
  %pay.ptr161 = inttoptr i64 %ram.pay160 to ptr
  store ptr %pay.ptr161, ptr %var._162, align 8
  br label %choice.exit159

choice.else158:                                   ; preds = %a.rd.done
  %ram.pay163 = extractvalue { i1, i64 } %ram.pay155, 1
  %pay.ptr164 = inttoptr i64 %ram.pay163 to ptr
  store ptr %pay.ptr164, ptr %var._165, align 8
  br label %choice.exit159

choice.exit159:                                   ; preds = %choice.else158, %choice.then157
  %choice.res = phi ptr [ %pay.ptr161, %choice.then157 ], [ @str.6.struct, %choice.else158 ]
  store ptr %choice.res, ptr %var.prev, align 8
  %var.load166 = load ptr, ptr %"var.outs'", align 8
  %a.load167 = load ptr, ptr %"var.outs'", align 8
  %a.null168 = icmp eq ptr %a.load167, null
  br i1 %a.null168, label %a.create169, label %a.after170

a.create169:                                      ; preds = %choice.exit159
  %arena.cur171 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 24)
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 128)
  %a.len.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 0
  store i64 0, ptr %a.len.gep175, align 8
  %a.data.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 1
  store ptr %a.buf174, ptr %a.data.gep176, align 8
  %a.cap.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 2
  store i64 16, ptr %a.cap.gep177, align 8
  store ptr %a.create172, ptr %"var.outs'", align 8
  br label %a.after170

a.after170:                                       ; preds = %a.create169, %choice.exit159
  %a.load2178 = load ptr, ptr %"var.outs'", align 8
  %var.load179 = load i64, ptr %var.idx, align 8
  %var.load180 = load ptr, ptr %var.prev, align 8
  %var.load181 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load181, i32 0, i32 0
  %b.freeze.len182 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load181, i32 0, i32 1
  %b.freeze.data183 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after170
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data183, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data183, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data183, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len182, 1
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data183, i64 %b.freeze.len182, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len182
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after170
  %b.freeze.data185 = phi ptr [ %b.freeze.data183, %a.after170 ], [ %b.freeze.data183, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur186 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len182, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data185, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load181, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load181, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load181, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load180, i32 0, i32 0
  %concat.lhs187 = load i64, ptr %concat.lhs, align 8
  %concat.lhs188 = and i64 %concat.lhs187, 281474976710655
  %str.tag = lshr i64 %concat.lhs187, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %b.freeze.done
  %concat.lhs189 = getelementptr inbounds { i64, ptr }, ptr %var.load180, i32 0, i32 1
  %concat.lhs190 = load ptr, ptr %concat.lhs189, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %concat.rhs191 = load i64, ptr %concat.rhs, align 8
  %concat.rhs192 = and i64 %concat.rhs191, 281474976710655
  %str.tag193 = lshr i64 %concat.rhs191, 48
  %tag.immortal195 = icmp eq i64 %str.tag193, 0
  %active.gen196 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current197 = icmp eq i64 %str.tag193, %active.gen196
  %tag.fast.ok198 = or i1 %tag.immortal195, %tag.current197
  br i1 %tag.fast.ok198, label %str_ok194, label %tag.slow_check199

tag.slow_check:                                   ; preds = %b.freeze.done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok194:                                        ; preds = %tag.slow_check199, %str_ok
  %concat.rhs200 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %concat.rhs201 = load ptr, ptr %concat.rhs200, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs188, i64 %concat.rhs192)
  %sum202 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf203 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf203, label %str_overflow_abort205, label %concat.sum.len204

tag.slow_check199:                                ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag193)
  br label %str_ok194

concat.sum.len204:                                ; preds = %abort.dead206, %str_ok194
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum202, i64 1)
  %sum207 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf208 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf208, label %str_overflow_abort210, label %concat.tot.len209

str_overflow_abort205:                            ; preds = %str_ok194
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead206:                                    ; No predecessors!
  br label %concat.sum.len204

concat.tot.len209:                                ; preds = %abort.dead211, %concat.sum.len204
  %arena.cur212 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 %sum207)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs190, i64 %concat.lhs188, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs188
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs201, i64 %concat.rhs192, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum202
  store i8 0, ptr %concat.nul, align 1
  %arena.cur213 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur213, i64 16)
  %str.build.len.gep214 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %str.tag.gen215 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift216 = shl i64 %str.tag.gen215, 48
  %str.tagged.len217 = or i64 %sum202, %str.tag.shift216
  store i64 %str.tagged.len217, ptr %str.build.len.gep214, align 8
  %str.build.data.gep218 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep218, align 8
  %slot.p2i = ptrtoint ptr %concat.str to i64
  %a.wr.nonnull = icmp ne ptr %a.load2178, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

str_overflow_abort210:                            ; preds = %concat.sum.len204
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead211:                                    ; No predecessors!
  br label %concat.tot.len209

a.wr.check:                                       ; preds = %concat.tot.len209
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 0
  %a.wr.len219 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load179, 0
  %a.wr.lt = icmp slt i64 %var.load179, %a.wr.len219
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 1
  %a.wr.data220 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep221 = getelementptr i64, ptr %a.wr.data220, i64 %var.load179
  store i64 %slot.p2i, ptr %a.elem.gep221, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %concat.tot.len209
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 56)
  %err.code.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 0
  store i64 4011, ptr %err.code.gep224, align 8
  %err.msg.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep225, align 8
  %err.file.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep226, align 8
  %err.line.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 3
  store i64 0, ptr %err.line.gep227, align 8
  %err.col.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 4
  store i64 0, ptr %err.col.gep228, align 8
  %err.ctx.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc223, i32 0, i32 5
  %err.ctx0.gep230 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep229, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep230, align 8
  %err.ctx1.gep231 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep229, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep231, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur232 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc233 = call ptr @dva_arena_alloc(ptr %arena.cur232, i64 56)
  %err.code.gep234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 0
  store i64 4011, ptr %err.code.gep234, align 8
  %err.msg.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep235, align 8
  %err.file.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep236, align 8
  %err.line.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 3
  store i64 0, ptr %err.line.gep237, align 8
  %err.col.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 4
  store i64 0, ptr %err.col.gep238, align 8
  %err.ctx.gep239 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc233, i32 0, i32 5
  %err.ctx0.gep240 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep239, i32 0, i32 0
  store i64 %var.load179, ptr %err.ctx0.gep240, align 8
  %err.ctx1.gep241 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep239, i32 0, i32 1
  store i64 %a.wr.len219, ptr %err.ctx1.gep241, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc223, %a.wr.err.null ], [ %err.alloc233, %a.wr.err.oob ]
  %var.load242 = load ptr, ptr %var.fds, align 8
  %a.load243 = load ptr, ptr %var.fds, align 8
  %a.null244 = icmp eq ptr %a.load243, null
  br i1 %a.null244, label %a.create245, label %a.after246

a.create245:                                      ; preds = %a.wr.done
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 24)
  %arena.cur249 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf250 = call ptr @dva_arena_alloc(ptr %arena.cur249, i64 128)
  %a.len.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 0
  store i64 0, ptr %a.len.gep251, align 8
  %a.data.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 1
  store ptr %a.buf250, ptr %a.data.gep252, align 8
  %a.cap.gep253 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create248, i32 0, i32 2
  store i64 16, ptr %a.cap.gep253, align 8
  store ptr %a.create248, ptr %var.fds, align 8
  br label %a.after246

a.after246:                                       ; preds = %a.create245, %a.wr.done
  %a.load2254 = load ptr, ptr %var.fds, align 8
  %var.load255 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull256 = icmp ne ptr %a.load2254, null
  br i1 %a.rd.nonnull256, label %a.rd.check257, label %a.rd.err.null259

a.rd.check257:                                    ; preds = %a.after246
  %a.rd.len262 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2254, i32 0, i32 0
  %a.rd.len263 = load i64, ptr %a.rd.len262, align 8
  %a.rd.ge0264 = icmp sge i64 %var.load255, 0
  %a.rd.lt265 = icmp slt i64 %var.load255, %a.rd.len263
  %a.rd.bounds266 = and i1 %a.rd.ge0264, %a.rd.lt265
  br i1 %a.rd.bounds266, label %a.rd.ok258, label %a.rd.err.oob260

a.rd.ok258:                                       ; preds = %a.rd.check257
  %a.rd.data267 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2254, i32 0, i32 1
  %a.rd.data268 = load ptr, ptr %a.rd.data267, align 8
  %a.rd.elem.gep269 = getelementptr i64, ptr %a.rd.data268, i64 %var.load255
  %a.rd.elem270 = load i64, ptr %a.rd.elem.gep269, align 8
  br label %a.rd.done261

a.rd.err.null259:                                 ; preds = %a.after246
  %arena.cur271 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc272 = call ptr @dva_arena_alloc(ptr %arena.cur271, i64 56)
  %err.code.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 0
  store i64 4011, ptr %err.code.gep273, align 8
  %err.msg.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep274, align 8
  %err.file.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep275, align 8
  %err.line.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 3
  store i64 397, ptr %err.line.gep276, align 8
  %err.col.gep277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 4
  store i64 36, ptr %err.col.gep277, align 8
  %err.ctx.gep278 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc272, i32 0, i32 5
  %err.ctx0.gep279 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep278, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep279, align 8
  %err.ctx1.gep280 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep278, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep280, align 8
  %err.p2i281 = ptrtoint ptr %err.alloc272 to i64
  br label %a.rd.done261

a.rd.err.oob260:                                  ; preds = %a.rd.check257
  %arena.cur282 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc283 = call ptr @dva_arena_alloc(ptr %arena.cur282, i64 56)
  %err.code.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 0
  store i64 4011, ptr %err.code.gep284, align 8
  %err.msg.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep285, align 8
  %err.file.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep286, align 8
  %err.line.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 3
  store i64 397, ptr %err.line.gep287, align 8
  %err.col.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 4
  store i64 36, ptr %err.col.gep288, align 8
  %err.ctx.gep289 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc283, i32 0, i32 5
  %err.ctx0.gep290 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep289, i32 0, i32 0
  store i64 %var.load255, ptr %err.ctx0.gep290, align 8
  %err.ctx1.gep291 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep289, i32 0, i32 1
  store i64 %a.rd.len263, ptr %err.ctx1.gep291, align 8
  %err.p2i292 = ptrtoint ptr %err.alloc283 to i64
  br label %a.rd.done261

a.rd.done261:                                     ; preds = %a.rd.err.oob260, %a.rd.err.null259, %a.rd.ok258
  %a.rd.tag293 = phi i1 [ true, %a.rd.ok258 ], [ false, %a.rd.err.null259 ], [ false, %a.rd.err.oob260 ]
  %a.rd.pay294 = phi i64 [ %a.rd.elem270, %a.rd.ok258 ], [ %err.p2i281, %a.rd.err.null259 ], [ %err.p2i292, %a.rd.err.oob260 ]
  %ram.tag295 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag293, 0
  %ram.pay296 = insertvalue { i1, i64 } %ram.tag295, i64 %a.rd.pay294, 1
  %ram.tag297 = extractvalue { i1, i64 } %ram.pay296, 0
  br i1 %ram.tag297, label %choice.then298, label %choice.else299

choice.then298:                                   ; preds = %a.rd.done261
  %ram.pay301 = extractvalue { i1, i64 } %ram.pay296, 1
  store i64 %ram.pay301, ptr %var._302, align 8
  br label %choice.exit300

choice.else299:                                   ; preds = %a.rd.done261
  %ram.pay303 = extractvalue { i1, i64 } %ram.pay296, 1
  %pay.ptr304 = inttoptr i64 %ram.pay303 to ptr
  store ptr %pay.ptr304, ptr %var._305, align 8
  br label %choice.exit300

choice.exit300:                                   ; preds = %choice.else299, %choice.then298
  %choice.res306 = phi i64 [ %ram.pay301, %choice.then298 ], [ -1, %choice.else299 ]
  store i64 %choice.res306, ptr %var.fd307, align 8
  %var.load308 = load i64, ptr %var.fd307, align 8
  %cmptmp309 = icmp slt i64 %var.load308, 0
  br i1 %cmptmp309, label %choice.then310, label %choice.exit311

choice.then310:                                   ; preds = %choice.exit300
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.10.struct to i64) }

choice.exit311:                                   ; preds = %ret.dead312, %choice.exit300
  %var.load313 = load ptr, ptr %var.ring, align 8
  %var.load314 = load i64, ptr %var.fd307, align 8
  %var.load315 = load ptr, ptr %var.scratch, align 8
  %b.ptr316 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load315, i32 0, i32 1
  %b.ptr317 = load ptr, ptr %b.ptr316, align 8
  %3 = icmp eq ptr %b.ptr317, null
  br i1 %3, label %b.detached318, label %b.writable319

ret.dead312:                                      ; No predecessors!
  br label %choice.exit311

b.detached318:                                    ; preds = %choice.exit311
  call void @dva_abort_detached_builder()
  unreachable

b.writable319:                                    ; preds = %choice.exit311
  %addr.tag.int321 = ptrtoint ptr %b.ptr317 to i64
  %addr.tag.gen322 = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift323 = shl i64 %addr.tag.gen322, 48
  %addr.tagged324 = or i64 %addr.tag.int321, %addr.tag.shift323
  %addr.tagged.ptr325 = inttoptr i64 %addr.tagged324 to ptr
  %var.load326 = load i64, ptr %var.idx, align 8
  %multmp327 = mul i64 %var.load326, 4096
  %ptr.int.l328 = ptrtoint ptr %addr.tagged.ptr325 to i64
  %addtmp329 = add i64 %ptr.int.l328, %multmp327
  %ptr.res330 = inttoptr i64 %addtmp329 to ptr
  %addr.is.null333 = icmp eq ptr %ptr.res330, null
  br i1 %addr.is.null333, label %addr.null331, label %addr.present332

abort.dead320:                                    ; No predecessors!
  unreachable

addr.null331:                                     ; preds = %b.writable319
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present332:                                  ; preds = %b.writable319
  %var.load335 = load i64, ptr %var.idx, align 8
  %call.res336 = call i1 @"uring::prep_pipe_read"(ptr %var.load313, i64 %var.load314, ptr %ptr.res330, i64 4096, i64 %var.load335)
  br label %choice.exit100

abort.dead334:                                    ; No predecessors!
  unreachable

a.create343:                                      ; preds = %loop.exit.62
  %arena.cur345 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create346 = call ptr @dva_arena_alloc(ptr %arena.cur345, i64 24)
  %arena.cur347 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 128)
  %a.len.gep349 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 0
  store i64 0, ptr %a.len.gep349, align 8
  %a.data.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 1
  store ptr %a.buf348, ptr %a.data.gep350, align 8
  %a.cap.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create346, i32 0, i32 2
  store i64 16, ptr %a.cap.gep351, align 8
  store ptr %a.create346, ptr %"var.outs'", align 8
  br label %a.after344

a.after344:                                       ; preds = %a.create343, %loop.exit.62
  %a.load2352 = load ptr, ptr %"var.outs'", align 8
  %ptr.to.i64353 = ptrtoint ptr %a.load2352 to i64
  %ram.pay354 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64353, 1
  ret { i1, i64 } %ram.pay354
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal i64 @"$anon_fn.106"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %var.avail = alloca i64, align 8
  %var.dst = alloca ptr, align 8
  %env.gep = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 0
  %env.gep1 = getelementptr inbounds { ptr, i64 }, ptr %0, i32 0, i32 1
  store ptr %1, ptr %var.dst, align 8
  store i64 %2, ptr %var.avail, align 8
  %var.load = load ptr, ptr %var.dst, align 8
  %var.load2 = load ptr, ptr %env.gep, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load2, i32 0, i32 1
  %b.ptr3 = load ptr, ptr %b.ptr, align 8
  %3 = icmp eq ptr %b.ptr3, null
  br i1 %3, label %b.detached, label %b.writable

b.detached:                                       ; preds = %entry
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %entry
  %var.load4 = load i64, ptr %env.gep1, align 8
  %multmp = mul i64 %var.load4, 4096
  %ptr.int.l = ptrtoint ptr %b.ptr3 to i64
  %addtmp = add i64 %ptr.int.l, %multmp
  %ptr.res = inttoptr i64 %addtmp to ptr
  %addr.is.null = icmp eq ptr %ptr.res, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

abort.dead:                                       ; No predecessors!
  unreachable

addr.null:                                        ; preds = %b.writable
  call void @dva_abort_null_addr_cast()
  unreachable

addr.present:                                     ; preds = %b.writable
  %var.load6 = load i64, ptr %var.avail, align 8
  %raw.int = ptrtoint ptr %var.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.int7 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int8 = and i64 %raw.int7, 281474976710655
  %raw.clean.ptr9 = inttoptr i64 %raw.clean.int8 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr9, i64 %var.load6, i1 false)
  %var.load10 = load i64, ptr %var.avail, align 8
  ret i64 %var.load10

abort.dead5:                                      ; No predecessors!
  unreachable
}

declare i64 @"mem::write_tail"(ptr, i64, ptr) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #8 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %0)
  br i1 %tag.valid, label %valid, label %stale

valid:                                            ; preds = %entry
  ret void

stale:                                            ; preds = %entry
  call void @dva_abort_stale_str_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define void @"uring::close"(ptr %0) #3 {
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
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noinline "nounwind" }
