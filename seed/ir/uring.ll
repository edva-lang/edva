; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
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
  %ptr.to.i64 = ptrtoint ptr %rec.alloc188 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  ret { i1, i64 } %ram.pay

ret.dead145:                                      ; No predecessors!
  br label %choice.exit129
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
declare ptr @llvm.ptrmask.p0.i64(ptr, i64) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

define i1 @"uring::prep_nop"(ptr %0, i64 %1) #3 {
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
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 -1, ptr %var.load3, i64 %var.load4, i64 %var.load5)
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
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %var.load4, i64 %var.load5, i64 %var.load6)
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
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 -1, ptr %var.load3, i64 %var.load4, i64 %var.load5)
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
  %var.load5 = load i64, ptr %var.len, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 %var.load3, ptr %var.load4, i64 %var.load5, i64 %var.load6)
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
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5)
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
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5)
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
  %var.load3 = load ptr, ptr @"var.sys::addr_null", align 8
  %var.load4 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 0, i64 %var.load4)
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
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5, i64 %var.load6)
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
  %var.load4 = load i64, ptr %var.len, align 8
  %var.load5 = load i64, ptr %var.flags, align 8
  %var.load6 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 %var.load4, i64 %var.load5, i64 %var.load6)
  ret i1 %call.res
}

define i1 @"uring::prep_accept"(ptr %0, i64 %1, ptr %2, ptr %3, i64 %4, i64 %5) #3 {
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
  %var.load4 = load i64, ptr %var.flags, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 -1, i64 %var.load2, ptr %var.load3, i64 1, i64 %var.load4, i64 %var.load5)
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
  %var.load3 = load ptr, ptr @"var.sys::addr_null", align 8
  %var.load4 = load i64, ptr %var.poll_mask, align 8
  %var.load5 = load i64, ptr %var.user_data, align 8
  %call.res = call i1 @"uring::prep_sqe_flags"(ptr %var.load, i64 %var.load1, i64 %var.load2, i64 0, ptr %var.load3, i64 0, i64 %var.load4, i64 %var.load5)
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
  %loop.step.64 = alloca i64, align 8
  %loop.idx.64 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.header.64:                                   ; preds = %loop.latch.64, %entry
  %counter.load = load i64, ptr %loop.idx.64, align 8
  br label %loop.body.64

loop.body.64:                                     ; preds = %loop.header.64
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.64, align 8
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load = load ptr, ptr %var.ring, align 8
  %call.res = call ptr @"uring::peek_cqe"(ptr %var.load)
  store ptr %call.res, ptr %var.opt, align 8
  %var.load2 = load ptr, ptr %var.opt, align 8
  %niche.ne.null = icmp ne ptr %var.load2, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

loop.exit.nat.64:                                 ; No predecessors!
  br label %loop.exit.64

loop.latch.64:                                    ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.64, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.64, align 8
  br label %loop.header.64

loop.exit.64:                                     ; preds = %choice.else, %loop.exit.nat.64
  %var.load16 = load ptr, ptr %"var.cqes'", align 8
  %a.load17 = load ptr, ptr %"var.cqes'", align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

choice.then:                                      ; preds = %loop.body.64
  store ptr %var.load2, ptr %var._3, align 8
  store ptr %var.load2, ptr %var.c, align 8
  %var.load4 = load ptr, ptr %var.c, align 8
  %a.load = load ptr, ptr %"var.cqes'", align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.else:                                      ; preds = %loop.body.64
  br label %loop.exit.64

choice.exit:                                      ; preds = %a.store
  br label %loop.latch.64

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

a.create19:                                       ; preds = %loop.exit.64
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

a.after20:                                        ; preds = %a.create19, %loop.exit.64
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

define { i1, i64 } @"uring::drain_pipes"(ptr %0, ptr %1) #3 {
entry:
  %var.fd306 = alloca i64, align 8
  %var._304 = alloca ptr, align 8
  %var._301 = alloca i64, align 8
  %var.prev = alloca ptr, align 8
  %var._164 = alloca ptr, align 8
  %var._161 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.nb = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.cqe = alloca ptr, align 8
  %var._i77 = alloca i64, align 8
  %var._76 = alloca i64, align 8
  %loop.step.67 = alloca i64, align 8
  %loop.idx.67 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var._ = alloca i64, align 8
  %loop.step.66 = alloca i64, align 8
  %loop.idx.66 = alloca i64, align 8
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
  store i64 0, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.header.66:                                   ; preds = %loop.latch.66, %a.after32
  %counter.load = load i64, ptr %loop.idx.66, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len41
  br i1 %loop.cond, label %loop.body.66, label %loop.exit.nat.66

loop.body.66:                                     ; preds = %loop.header.66
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.66, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data42, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  store i64 %arr.elem.raw, ptr %var._, align 8
  store i64 %arr.elem.raw, ptr %var.fd, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %loop.rel.i, ptr %var.i, align 8
  %a.load43 = load ptr, ptr %"var.outs'", align 8
  %a.null44 = icmp eq ptr %a.load43, null
  br i1 %a.null44, label %a.create45, label %a.after46

loop.exit.nat.66:                                 ; preds = %loop.header.66
  br label %loop.exit.66

loop.latch.66:                                    ; preds = %choice.exit63
  %step.val = load i64, ptr %loop.step.66, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.66, align 8
  br label %loop.header.66

loop.exit.66:                                     ; preds = %loop.exit.nat.66
  store i64 0, ptr %loop.idx.67, align 8
  br label %loop.header.67

a.create45:                                       ; preds = %loop.body.66
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

a.after46:                                        ; preds = %a.create45, %loop.body.66
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

choice.exit63:                                    ; preds = %b.writable, %a.store
  br label %loop.latch.66

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
  %var.load71 = load i64, ptr %var.i, align 8
  %call.res = call i1 @"uring::prep_pipe_read"(ptr %var.load64, i64 %var.load65, ptr %ptr.res, i64 4096, i64 %var.load71)
  %var.load72 = load i64, ptr %"var.active'", align 8
  %addtmp73 = add i64 %var.load72, 1
  store i64 %addtmp73, ptr %"var.active'", align 8
  br label %choice.exit63

abort.dead68:                                     ; No predecessors!
  unreachable

loop.header.67:                                   ; preds = %loop.latch.67, %loop.exit.66
  %counter.load74 = load i64, ptr %loop.idx.67, align 8
  br label %loop.body.67

loop.body.67:                                     ; preds = %loop.header.67
  %loop.rel.i75 = sub i64 %counter.load74, 0
  store i64 1, ptr %loop.step.67, align 8
  store i64 %counter.load74, ptr %var._76, align 8
  store i64 %loop.rel.i75, ptr %var._i77, align 8
  %var.load78 = load i64, ptr %"var.active'", align 8
  %cmptmp79 = icmp sle i64 %var.load78, 0
  br i1 %cmptmp79, label %choice.then80, label %choice.exit81

loop.exit.nat.67:                                 ; No predecessors!
  br label %loop.exit.67

loop.latch.67:                                    ; preds = %choice.exit93
  %step.val333 = load i64, ptr %loop.step.67, align 8
  %loop.next334 = add i64 %counter.load74, %step.val333
  store i64 %loop.next334, ptr %loop.idx.67, align 8
  br label %loop.header.67

loop.exit.67:                                     ; preds = %choice.then80, %loop.exit.nat.67
  %var.load335 = load ptr, ptr %"var.outs'", align 8
  %a.load336 = load ptr, ptr %"var.outs'", align 8
  %a.null337 = icmp eq ptr %a.load336, null
  br i1 %a.null337, label %a.create338, label %a.after339

choice.then80:                                    ; preds = %loop.body.67
  br label %loop.exit.67

choice.exit81:                                    ; preds = %loop.body.67
  %var.load82 = load ptr, ptr %var.ring, align 8
  %call.res83 = call i64 @"uring::submit"(ptr %var.load82)
  %var.load84 = load ptr, ptr %var.ring, align 8
  %call.res85 = call { i1, i64 } @"uring::wait_cqe"(ptr %var.load84)
  %prop.is_pos = extractvalue { i1, i64 } %call.res85, 0
  br i1 %prop.is_pos, label %prop.pos.68, label %prop.ret.68

prop.pos.68:                                      ; preds = %choice.exit81
  %prop.pay.pos = extractvalue { i1, i64 } %call.res85, 1
  %pay.ptr = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.cqe, align 8
  %var.load86 = load ptr, ptr %var.cqe, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load86, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.idx, align 8
  %var.load87 = load i64, ptr %var.idx, align 8
  %cmptmp88 = icmp sge i64 %var.load87, 0
  br i1 %cmptmp88, label %and.69.then, label %and.69.else

prop.ret.68:                                      ; preds = %choice.exit81
  ret { i1, i64 } %call.res85

and.69.then:                                      ; preds = %prop.pos.68
  %var.load89 = load i64, ptr %var.idx, align 8
  %var.load90 = load i64, ptr %var.n, align 8
  %cmptmp91 = icmp slt i64 %var.load89, %var.load90
  br label %and.69.exit

and.69.else:                                      ; preds = %prop.pos.68
  br label %and.69.exit

and.69.exit:                                      ; preds = %and.69.else, %and.69.then
  %and.69.phi = phi i1 [ %cmptmp91, %and.69.then ], [ %cmptmp88, %and.69.else ]
  br i1 %and.69.phi, label %choice.then92, label %choice.exit93

choice.then92:                                    ; preds = %and.69.exit
  %var.load94 = load ptr, ptr %var.cqe, align 8
  %fld.gep95 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load94, i32 0, i32 1
  %fld.load96 = load i64, ptr %fld.gep95, align 8
  %cmptmp97 = icmp sgt i64 %fld.load96, 0
  br i1 %cmptmp97, label %choice.then98, label %choice.else

choice.exit93:                                    ; preds = %choice.exit99, %and.69.exit
  br label %loop.latch.67

choice.then98:                                    ; preds = %choice.then92
  %var.load100 = load ptr, ptr %var.cqe, align 8
  %fld.gep101 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load100, i32 0, i32 1
  %fld.load102 = load i64, ptr %fld.gep101, align 8
  store i64 %fld.load102, ptr %var.nb, align 8
  %var.load103 = load i64, ptr %var.nb, align 8
  %arena.cur104 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new105 = call ptr @dva_arena_alloc(ptr %arena.cur104, i64 24)
  %cap.neg106 = icmp slt i64 %var.load103, 0
  %cap.safe107 = select i1 %cap.neg106, i64 0, i64 %var.load103
  %b.data.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new105, i32 0, i32 1
  %b.len.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new105, i32 0, i32 0
  %b.cap.gep110 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new105, i32 0, i32 2
  %b.buf.len111 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe107, i64 1)
  %sum112 = extractvalue { i64, i1 } %b.buf.len111, 0
  %ovf113 = extractvalue { i64, i1 } %b.buf.len111, 1
  br i1 %ovf113, label %str_overflow_abort115, label %b.buf.len114

choice.else:                                      ; preds = %choice.then92
  %var.load332 = load i64, ptr %"var.active'", align 8
  %subtmp = sub i64 %var.load332, 1
  store i64 %subtmp, ptr %"var.active'", align 8
  br label %choice.exit99

choice.exit99:                                    ; preds = %choice.else, %b.writable318
  br label %choice.exit93

b.buf.len114:                                     ; preds = %abort.dead116, %choice.then98
  %arena.cur117 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf118 = call ptr @dva_arena_alloc(ptr %arena.cur117, i64 %sum112)
  %b.nul0119 = getelementptr i8, ptr %b.buf118, i64 0
  store i8 0, ptr %b.nul0119, align 1
  store i64 0, ptr %b.len.gep109, align 8
  store ptr %b.buf118, ptr %b.data.gep108, align 8
  store i64 %cap.safe107, ptr %b.cap.gep110, align 8
  store ptr %builder.new105, ptr %var.b, align 8
  %var.load120 = load ptr, ptr %var.b, align 8
  %var.load121 = load i64, ptr %var.nb, align 8
  %load.scratch = load ptr, ptr %var.scratch, align 8
  %load.idx = load i64, ptr %var.idx, align 8
  %arena.cur122 = load ptr, ptr @dva_active_arena_tls, align 8
  %env.alloc = call ptr @dva_arena_alloc(ptr %arena.cur122, i64 16)
  %env.store.gep = getelementptr inbounds { ptr, i64 }, ptr %env.alloc, i32 0, i32 0
  store ptr %load.scratch, ptr %env.store.gep, align 8
  %env.store.gep123 = getelementptr inbounds { ptr, i64 }, ptr %env.alloc, i32 0, i32 1
  store i64 %load.idx, ptr %env.store.gep123, align 8
  %arena.cur124 = load ptr, ptr @dva_active_arena_tls, align 8
  %clo.alloc = call ptr @dva_arena_alloc(ptr %arena.cur124, i64 16)
  %clo.fn.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 0
  store ptr @"$anon_fn.104", ptr %clo.fn.gep, align 8
  %clo.env.gep = getelementptr inbounds { ptr, ptr }, ptr %clo.alloc, i32 0, i32 1
  store ptr %env.alloc, ptr %clo.env.gep, align 8
  %call.res125 = call i64 @"mem::write_tail"(ptr %var.load120, i64 %var.load121, ptr %clo.alloc)
  %var.load126 = load ptr, ptr %"var.outs'", align 8
  %a.load127 = load ptr, ptr %"var.outs'", align 8
  %a.null128 = icmp eq ptr %a.load127, null
  br i1 %a.null128, label %a.create129, label %a.after130

str_overflow_abort115:                            ; preds = %choice.then98
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead116:                                    ; No predecessors!
  br label %b.buf.len114

a.create129:                                      ; preds = %b.buf.len114
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 24)
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 128)
  %a.len.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create132, i32 0, i32 0
  store i64 0, ptr %a.len.gep135, align 8
  %a.data.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create132, i32 0, i32 1
  store ptr %a.buf134, ptr %a.data.gep136, align 8
  %a.cap.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create132, i32 0, i32 2
  store i64 16, ptr %a.cap.gep137, align 8
  store ptr %a.create132, ptr %"var.outs'", align 8
  br label %a.after130

a.after130:                                       ; preds = %a.create129, %b.buf.len114
  %a.load2138 = load ptr, ptr %"var.outs'", align 8
  %var.load139 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2138, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after130
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2138, i32 0, i32 0
  %a.rd.len140 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load139, 0
  %a.rd.lt = icmp slt i64 %var.load139, %a.rd.len140
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2138, i32 0, i32 1
  %a.rd.data141 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data141, i64 %var.load139
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after130
  %arena.cur142 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur142, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 394, ptr %err.line.gep, align 8
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
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc144 = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 56)
  %err.code.gep145 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 0
  store i64 4011, ptr %err.code.gep145, align 8
  %err.msg.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep146, align 8
  %err.file.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep147, align 8
  %err.line.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 3
  store i64 394, ptr %err.line.gep148, align 8
  %err.col.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 4
  store i64 40, ptr %err.col.gep149, align 8
  %err.ctx.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc144, i32 0, i32 5
  %err.ctx0.gep151 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 0
  store i64 %var.load139, ptr %err.ctx0.gep151, align 8
  %err.ctx1.gep152 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep150, i32 0, i32 1
  store i64 %a.rd.len140, ptr %err.ctx1.gep152, align 8
  %err.p2i153 = ptrtoint ptr %err.alloc144 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i153, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay154 = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag155 = extractvalue { i1, i64 } %ram.pay154, 0
  br i1 %ram.tag155, label %choice.then156, label %choice.else157

choice.then156:                                   ; preds = %a.rd.done
  %ram.pay159 = extractvalue { i1, i64 } %ram.pay154, 1
  %pay.ptr160 = inttoptr i64 %ram.pay159 to ptr
  store ptr %pay.ptr160, ptr %var._161, align 8
  br label %choice.exit158

choice.else157:                                   ; preds = %a.rd.done
  %ram.pay162 = extractvalue { i1, i64 } %ram.pay154, 1
  %pay.ptr163 = inttoptr i64 %ram.pay162 to ptr
  store ptr %pay.ptr163, ptr %var._164, align 8
  br label %choice.exit158

choice.exit158:                                   ; preds = %choice.else157, %choice.then156
  %choice.res = phi ptr [ %pay.ptr160, %choice.then156 ], [ @str.6.struct, %choice.else157 ]
  store ptr %choice.res, ptr %var.prev, align 8
  %var.load165 = load ptr, ptr %"var.outs'", align 8
  %a.load166 = load ptr, ptr %"var.outs'", align 8
  %a.null167 = icmp eq ptr %a.load166, null
  br i1 %a.null167, label %a.create168, label %a.after169

a.create168:                                      ; preds = %choice.exit158
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
  store ptr %a.create171, ptr %"var.outs'", align 8
  br label %a.after169

a.after169:                                       ; preds = %a.create168, %choice.exit158
  %a.load2177 = load ptr, ptr %"var.outs'", align 8
  %var.load178 = load i64, ptr %var.idx, align 8
  %var.load179 = load ptr, ptr %var.prev, align 8
  %var.load180 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 0
  %b.freeze.len181 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 1
  %b.freeze.data182 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after169
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data182, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data182, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data182, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len181, 1
  %arena.cur183 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data182, i64 %b.freeze.len181, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len181
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after169
  %b.freeze.data184 = phi ptr [ %b.freeze.data182, %a.after169 ], [ %b.freeze.data182, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur185 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur185, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %b.freeze.len181, %str.tag.shift
  store i64 %str.tagged.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data184, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load180, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load179, i32 0, i32 0
  %concat.lhs186 = load i64, ptr %concat.lhs, align 8
  %concat.lhs187 = and i64 %concat.lhs186, 281474976710655
  %str.tag = lshr i64 %concat.lhs186, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %b.freeze.done
  %concat.lhs188 = getelementptr inbounds { i64, ptr }, ptr %var.load179, i32 0, i32 1
  %concat.lhs189 = load ptr, ptr %concat.lhs188, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %concat.rhs190 = load i64, ptr %concat.rhs, align 8
  %concat.rhs191 = and i64 %concat.rhs190, 281474976710655
  %str.tag192 = lshr i64 %concat.rhs190, 48
  %tag.immortal194 = icmp eq i64 %str.tag192, 0
  %active.gen195 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current196 = icmp eq i64 %str.tag192, %active.gen195
  %tag.fast.ok197 = or i1 %tag.immortal194, %tag.current196
  br i1 %tag.fast.ok197, label %str_ok193, label %tag.slow_check198

tag.slow_check:                                   ; preds = %b.freeze.done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok193:                                        ; preds = %tag.slow_check198, %str_ok
  %concat.rhs199 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %concat.rhs200 = load ptr, ptr %concat.rhs199, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs187, i64 %concat.rhs191)
  %sum201 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf202 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf202, label %str_overflow_abort204, label %concat.sum.len203

tag.slow_check198:                                ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag192)
  br label %str_ok193

concat.sum.len203:                                ; preds = %abort.dead205, %str_ok193
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum201, i64 1)
  %sum206 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf207 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf207, label %str_overflow_abort209, label %concat.tot.len208

str_overflow_abort204:                            ; preds = %str_ok193
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead205:                                    ; No predecessors!
  br label %concat.sum.len203

concat.tot.len208:                                ; preds = %abort.dead210, %concat.sum.len203
  %arena.cur211 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 %sum206)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs189, i64 %concat.lhs187, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs187
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs200, i64 %concat.rhs191, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum201
  store i8 0, ptr %concat.nul, align 1
  %arena.cur212 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur212, i64 16)
  %str.build.len.gep213 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  %str.tag.gen214 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift215 = shl i64 %str.tag.gen214, 48
  %str.tagged.len216 = or i64 %sum201, %str.tag.shift215
  store i64 %str.tagged.len216, ptr %str.build.len.gep213, align 8
  %str.build.data.gep217 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep217, align 8
  %slot.p2i = ptrtoint ptr %concat.str to i64
  %a.wr.nonnull = icmp ne ptr %a.load2177, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

str_overflow_abort209:                            ; preds = %concat.sum.len203
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead210:                                    ; No predecessors!
  br label %concat.tot.len208

a.wr.check:                                       ; preds = %concat.tot.len208
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 0
  %a.wr.len218 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load178, 0
  %a.wr.lt = icmp slt i64 %var.load178, %a.wr.len218
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2177, i32 0, i32 1
  %a.wr.data219 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep220 = getelementptr i64, ptr %a.wr.data219, i64 %var.load178
  store i64 %slot.p2i, ptr %a.elem.gep220, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %concat.tot.len208
  %arena.cur221 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc222 = call ptr @dva_arena_alloc(ptr %arena.cur221, i64 56)
  %err.code.gep223 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 0
  store i64 4011, ptr %err.code.gep223, align 8
  %err.msg.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep224, align 8
  %err.file.gep225 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep225, align 8
  %err.line.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 3
  store i64 0, ptr %err.line.gep226, align 8
  %err.col.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 4
  store i64 0, ptr %err.col.gep227, align 8
  %err.ctx.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc222, i32 0, i32 5
  %err.ctx0.gep229 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep228, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep229, align 8
  %err.ctx1.gep230 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep228, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep230, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur231 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc232 = call ptr @dva_arena_alloc(ptr %arena.cur231, i64 56)
  %err.code.gep233 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 0
  store i64 4011, ptr %err.code.gep233, align 8
  %err.msg.gep234 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep234, align 8
  %err.file.gep235 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep235, align 8
  %err.line.gep236 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 3
  store i64 0, ptr %err.line.gep236, align 8
  %err.col.gep237 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 4
  store i64 0, ptr %err.col.gep237, align 8
  %err.ctx.gep238 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc232, i32 0, i32 5
  %err.ctx0.gep239 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep238, i32 0, i32 0
  store i64 %var.load178, ptr %err.ctx0.gep239, align 8
  %err.ctx1.gep240 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep238, i32 0, i32 1
  store i64 %a.wr.len218, ptr %err.ctx1.gep240, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc222, %a.wr.err.null ], [ %err.alloc232, %a.wr.err.oob ]
  %var.load241 = load ptr, ptr %var.fds, align 8
  %a.load242 = load ptr, ptr %var.fds, align 8
  %a.null243 = icmp eq ptr %a.load242, null
  br i1 %a.null243, label %a.create244, label %a.after245

a.create244:                                      ; preds = %a.wr.done
  %arena.cur246 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create247 = call ptr @dva_arena_alloc(ptr %arena.cur246, i64 24)
  %arena.cur248 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf249 = call ptr @dva_arena_alloc(ptr %arena.cur248, i64 128)
  %a.len.gep250 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create247, i32 0, i32 0
  store i64 0, ptr %a.len.gep250, align 8
  %a.data.gep251 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create247, i32 0, i32 1
  store ptr %a.buf249, ptr %a.data.gep251, align 8
  %a.cap.gep252 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create247, i32 0, i32 2
  store i64 16, ptr %a.cap.gep252, align 8
  store ptr %a.create247, ptr %var.fds, align 8
  br label %a.after245

a.after245:                                       ; preds = %a.create244, %a.wr.done
  %a.load2253 = load ptr, ptr %var.fds, align 8
  %var.load254 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull255 = icmp ne ptr %a.load2253, null
  br i1 %a.rd.nonnull255, label %a.rd.check256, label %a.rd.err.null258

a.rd.check256:                                    ; preds = %a.after245
  %a.rd.len261 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2253, i32 0, i32 0
  %a.rd.len262 = load i64, ptr %a.rd.len261, align 8
  %a.rd.ge0263 = icmp sge i64 %var.load254, 0
  %a.rd.lt264 = icmp slt i64 %var.load254, %a.rd.len262
  %a.rd.bounds265 = and i1 %a.rd.ge0263, %a.rd.lt264
  br i1 %a.rd.bounds265, label %a.rd.ok257, label %a.rd.err.oob259

a.rd.ok257:                                       ; preds = %a.rd.check256
  %a.rd.data266 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2253, i32 0, i32 1
  %a.rd.data267 = load ptr, ptr %a.rd.data266, align 8
  %a.rd.elem.gep268 = getelementptr i64, ptr %a.rd.data267, i64 %var.load254
  %a.rd.elem269 = load i64, ptr %a.rd.elem.gep268, align 8
  br label %a.rd.done260

a.rd.err.null258:                                 ; preds = %a.after245
  %arena.cur270 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc271 = call ptr @dva_arena_alloc(ptr %arena.cur270, i64 56)
  %err.code.gep272 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc271, i32 0, i32 0
  store i64 4011, ptr %err.code.gep272, align 8
  %err.msg.gep273 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc271, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep273, align 8
  %err.file.gep274 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc271, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep274, align 8
  %err.line.gep275 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc271, i32 0, i32 3
  store i64 396, ptr %err.line.gep275, align 8
  %err.col.gep276 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc271, i32 0, i32 4
  store i64 36, ptr %err.col.gep276, align 8
  %err.ctx.gep277 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc271, i32 0, i32 5
  %err.ctx0.gep278 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep277, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep278, align 8
  %err.ctx1.gep279 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep277, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep279, align 8
  %err.p2i280 = ptrtoint ptr %err.alloc271 to i64
  br label %a.rd.done260

a.rd.err.oob259:                                  ; preds = %a.rd.check256
  %arena.cur281 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 56)
  %err.code.gep283 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 0
  store i64 4011, ptr %err.code.gep283, align 8
  %err.msg.gep284 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep284, align 8
  %err.file.gep285 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep285, align 8
  %err.line.gep286 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 3
  store i64 396, ptr %err.line.gep286, align 8
  %err.col.gep287 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 4
  store i64 36, ptr %err.col.gep287, align 8
  %err.ctx.gep288 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc282, i32 0, i32 5
  %err.ctx0.gep289 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep288, i32 0, i32 0
  store i64 %var.load254, ptr %err.ctx0.gep289, align 8
  %err.ctx1.gep290 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep288, i32 0, i32 1
  store i64 %a.rd.len262, ptr %err.ctx1.gep290, align 8
  %err.p2i291 = ptrtoint ptr %err.alloc282 to i64
  br label %a.rd.done260

a.rd.done260:                                     ; preds = %a.rd.err.oob259, %a.rd.err.null258, %a.rd.ok257
  %a.rd.tag292 = phi i1 [ true, %a.rd.ok257 ], [ false, %a.rd.err.null258 ], [ false, %a.rd.err.oob259 ]
  %a.rd.pay293 = phi i64 [ %a.rd.elem269, %a.rd.ok257 ], [ %err.p2i280, %a.rd.err.null258 ], [ %err.p2i291, %a.rd.err.oob259 ]
  %ram.tag294 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag292, 0
  %ram.pay295 = insertvalue { i1, i64 } %ram.tag294, i64 %a.rd.pay293, 1
  %ram.tag296 = extractvalue { i1, i64 } %ram.pay295, 0
  br i1 %ram.tag296, label %choice.then297, label %choice.else298

choice.then297:                                   ; preds = %a.rd.done260
  %ram.pay300 = extractvalue { i1, i64 } %ram.pay295, 1
  store i64 %ram.pay300, ptr %var._301, align 8
  br label %choice.exit299

choice.else298:                                   ; preds = %a.rd.done260
  %ram.pay302 = extractvalue { i1, i64 } %ram.pay295, 1
  %pay.ptr303 = inttoptr i64 %ram.pay302 to ptr
  store ptr %pay.ptr303, ptr %var._304, align 8
  br label %choice.exit299

choice.exit299:                                   ; preds = %choice.else298, %choice.then297
  %choice.res305 = phi i64 [ %ram.pay300, %choice.then297 ], [ -1, %choice.else298 ]
  store i64 %choice.res305, ptr %var.fd306, align 8
  %var.load307 = load i64, ptr %var.fd306, align 8
  %cmptmp308 = icmp slt i64 %var.load307, 0
  br i1 %cmptmp308, label %choice.then309, label %choice.exit310

choice.then309:                                   ; preds = %choice.exit299
  ret { i1, i64 } { i1 false, i64 ptrtoint (ptr @str.10.struct to i64) }

choice.exit310:                                   ; preds = %ret.dead311, %choice.exit299
  %var.load312 = load ptr, ptr %var.ring, align 8
  %var.load313 = load i64, ptr %var.fd306, align 8
  %var.load314 = load ptr, ptr %var.scratch, align 8
  %b.ptr315 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load314, i32 0, i32 1
  %b.ptr316 = load ptr, ptr %b.ptr315, align 8
  %3 = icmp eq ptr %b.ptr316, null
  br i1 %3, label %b.detached317, label %b.writable318

ret.dead311:                                      ; No predecessors!
  br label %choice.exit310

b.detached317:                                    ; preds = %choice.exit310
  call void @dva_abort_detached_builder()
  unreachable

b.writable318:                                    ; preds = %choice.exit310
  %addr.tag.int320 = ptrtoint ptr %b.ptr316 to i64
  %addr.tag.gen321 = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift322 = shl i64 %addr.tag.gen321, 48
  %addr.tagged323 = or i64 %addr.tag.int320, %addr.tag.shift322
  %addr.tagged.ptr324 = inttoptr i64 %addr.tagged323 to ptr
  %var.load325 = load i64, ptr %var.idx, align 8
  %multmp326 = mul i64 %var.load325, 4096
  %ptr.int.l327 = ptrtoint ptr %addr.tagged.ptr324 to i64
  %addtmp328 = add i64 %ptr.int.l327, %multmp326
  %ptr.res329 = inttoptr i64 %addtmp328 to ptr
  %var.load330 = load i64, ptr %var.idx, align 8
  %call.res331 = call i1 @"uring::prep_pipe_read"(ptr %var.load312, i64 %var.load313, ptr %ptr.res329, i64 4096, i64 %var.load330)
  br label %choice.exit99

abort.dead319:                                    ; No predecessors!
  unreachable

a.create338:                                      ; preds = %loop.exit.67
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
  store ptr %a.create341, ptr %"var.outs'", align 8
  br label %a.after339

a.after339:                                       ; preds = %a.create338, %loop.exit.67
  %a.load2347 = load ptr, ptr %"var.outs'", align 8
  %ptr.to.i64348 = ptrtoint ptr %a.load2347 to i64
  %ram.pay349 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64348, 1
  ret { i1, i64 } %ram.pay349
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

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal i64 @"$anon_fn.104"(ptr %0, ptr %1, i64 %2) #3 {
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
  %var.load5 = load i64, ptr %var.avail, align 8
  %raw.int = ptrtoint ptr %var.load to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.int6 = ptrtoint ptr %ptr.res to i64
  %raw.clean.int7 = and i64 %raw.int6, 281474976710655
  %raw.clean.ptr8 = inttoptr i64 %raw.clean.int7 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr8, i64 %var.load5, i1 false)
  %var.load9 = load i64, ptr %var.avail, align 8
  ret i64 %var.load9

abort.dead:                                       ; No predecessors!
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
define internal void @dva_abort_stale_str_msg() #6 {
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
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noinline "nounwind" }
