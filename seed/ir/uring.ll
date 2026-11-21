; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
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
@detached_builder = internal unnamed_addr constant [93 x i8] c"E4013: Builder buffer was detached by freeze. Append data or create a new Builder before &b\0A\00"
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
  %p.to.i64 = ptrtoint ptr %rec.alloc188 to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64, 1
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

define ptr @"uring::reap"(ptr %0) #3 {
entry:
  %var.c = alloca ptr, align 8
  %var._3 = alloca ptr, align 8
  %var.opt = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var._ = alloca i64, align 8
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
  store i64 %counter.load, ptr %var._, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %var.fd428 = alloca i64, align 8
  %var.prev = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.nb = alloca i64, align 8
  %var.idx = alloca i64, align 8
  %var.cqe = alloca ptr, align 8
  %var._i103 = alloca i64, align 8
  %var._102 = alloca i64, align 8
  %loop.step.36 = alloca i64, align 8
  %loop.idx.36 = alloca i64, align 8
  %var.fd = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var._ = alloca i64, align 8
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
  store i64 %counter.load, ptr %var._, align 8
  store i64 %counter.load, ptr %var.i, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
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
  %2 = icmp eq ptr %b.ptr93, null
  br i1 %2, label %b.detached, label %b.writable

choice.exit89:                                    ; preds = %b.writable, %unwrap.pos.35
  br label %loop.latch.34

b.detached:                                       ; preds = %choice.then88
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %choice.then88
  %var.load95 = load i64, ptr %var.i, align 8
  %multmp96 = mul i64 %var.load95, 4096
  %ptr.int.l = ptrtoint ptr %b.ptr93 to i64
  %addtmp = add i64 %ptr.int.l, %multmp96
  %ptr.res = inttoptr i64 %addtmp to ptr
  %var.load97 = load i64, ptr %var.i, align 8
  %call.res = call i1 @"uring::prep_pipe_read"(ptr %var.load90, i64 %var.load91, ptr %ptr.res, i64 4096, i64 %var.load97)
  %var.load98 = load i64, ptr %"var.active'", align 8
  %addtmp99 = add i64 %var.load98, 1
  store i64 %addtmp99, ptr %"var.active'", align 8
  br label %choice.exit89

abort.dead94:                                     ; No predecessors!
  unreachable

loop.header.36:                                   ; preds = %loop.latch.36, %loop.exit.34
  %counter.load100 = load i64, ptr %loop.idx.36, align 8
  br label %loop.body.36

loop.body.36:                                     ; preds = %loop.header.36
  %loop.rel.i101 = sub i64 %counter.load100, 0
  store i64 1, ptr %loop.step.36, align 8
  store i64 %counter.load100, ptr %var._102, align 8
  store i64 %loop.rel.i101, ptr %var._i103, align 8
  %var.load104 = load i64, ptr %"var.active'", align 8
  %cmptmp105 = icmp sle i64 %var.load104, 0
  br i1 %cmptmp105, label %choice.then106, label %choice.exit107

loop.exit.nat.36:                                 ; No predecessors!
  br label %loop.exit.36

loop.latch.36:                                    ; preds = %choice.exit119
  %step.val445 = load i64, ptr %loop.step.36, align 8
  %loop.next446 = add i64 %counter.load100, %step.val445
  store i64 %loop.next446, ptr %loop.idx.36, align 8
  br label %loop.header.36

loop.exit.36:                                     ; preds = %choice.then106, %loop.exit.nat.36
  %var.load447 = load ptr, ptr %"var.outs'", align 8
  %a.load448 = load ptr, ptr %"var.outs'", align 8
  %a.null449 = icmp eq ptr %a.load448, null
  br i1 %a.null449, label %a.create450, label %a.after451

choice.then106:                                   ; preds = %loop.body.36
  br label %loop.exit.36

choice.exit107:                                   ; preds = %loop.body.36
  %var.load108 = load ptr, ptr %var.ring, align 8
  %call.res109 = call i64 @"uring::submit"(ptr %var.load108)
  %var.load110 = load ptr, ptr %var.ring, align 8
  %call.res111 = call { i1, i64 } @"uring::wait_cqe"(ptr %var.load110)
  %prop.is_pos = extractvalue { i1, i64 } %call.res111, 0
  br i1 %prop.is_pos, label %prop.pos.37, label %prop.ret.37

prop.pos.37:                                      ; preds = %choice.exit107
  %prop.pay.pos = extractvalue { i1, i64 } %call.res111, 1
  %pay.ptr = inttoptr i64 %prop.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.cqe, align 8
  %var.load112 = load ptr, ptr %var.cqe, align 8
  %fld.gep = getelementptr inbounds { i64, i64, i64 }, ptr %var.load112, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  store i64 %fld.load, ptr %var.idx, align 8
  %var.load113 = load i64, ptr %var.idx, align 8
  %cmptmp114 = icmp sge i64 %var.load113, 0
  br i1 %cmptmp114, label %and.38.then, label %and.38.else

prop.ret.37:                                      ; preds = %choice.exit107
  ret { i1, i64 } %call.res111

and.38.then:                                      ; preds = %prop.pos.37
  %var.load115 = load i64, ptr %var.idx, align 8
  %var.load116 = load i64, ptr %var.n, align 8
  %cmptmp117 = icmp slt i64 %var.load115, %var.load116
  br label %and.38.exit

and.38.else:                                      ; preds = %prop.pos.37
  br label %and.38.exit

and.38.exit:                                      ; preds = %and.38.else, %and.38.then
  %and.38.phi = phi i1 [ %cmptmp117, %and.38.then ], [ %cmptmp114, %and.38.else ]
  br i1 %and.38.phi, label %choice.then118, label %choice.exit119

choice.then118:                                   ; preds = %and.38.exit
  %var.load120 = load ptr, ptr %var.cqe, align 8
  %fld.gep121 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load120, i32 0, i32 1
  %fld.load122 = load i64, ptr %fld.gep121, align 8
  %cmptmp123 = icmp sgt i64 %fld.load122, 0
  br i1 %cmptmp123, label %choice.then124, label %choice.else

choice.exit119:                                   ; preds = %choice.exit125, %and.38.exit
  br label %loop.latch.36

choice.then124:                                   ; preds = %choice.then118
  %var.load126 = load ptr, ptr %var.cqe, align 8
  %fld.gep127 = getelementptr inbounds { i64, i64, i64 }, ptr %var.load126, i32 0, i32 1
  %fld.load128 = load i64, ptr %fld.gep127, align 8
  store i64 %fld.load128, ptr %var.nb, align 8
  %var.load129 = load i64, ptr %var.nb, align 8
  %addtmp130 = add i64 %var.load129, 1
  %arena.cur131 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new132 = call ptr @dva_arena_alloc(ptr %arena.cur131, i64 24)
  %cap.neg133 = icmp slt i64 %addtmp130, 0
  %cap.safe134 = select i1 %cap.neg133, i64 0, i64 %addtmp130
  %b.data.gep135 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new132, i32 0, i32 1
  %b.len.gep136 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new132, i32 0, i32 0
  %b.cap.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new132, i32 0, i32 2
  %b.buf.len138 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cap.safe134, i64 1)
  %sum139 = extractvalue { i64, i1 } %b.buf.len138, 0
  %ovf140 = extractvalue { i64, i1 } %b.buf.len138, 1
  br i1 %ovf140, label %str_overflow_abort142, label %b.buf.len141

choice.else:                                      ; preds = %choice.then118
  %var.load444 = load i64, ptr %"var.active'", align 8
  %subtmp = sub i64 %var.load444, 1
  store i64 %subtmp, ptr %"var.active'", align 8
  br label %choice.exit125

choice.exit125:                                   ; preds = %choice.else, %b.writable435
  br label %choice.exit119

b.buf.len141:                                     ; preds = %abort.dead143, %choice.then124
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 %sum139)
  %b.nul0146 = getelementptr i8, ptr %b.buf145, i64 0
  store i8 0, ptr %b.nul0146, align 1
  store i64 0, ptr %b.len.gep136, align 8
  store ptr %b.buf145, ptr %b.data.gep135, align 8
  store i64 %cap.safe134, ptr %b.cap.gep137, align 8
  store ptr %builder.new132, ptr %var.b, align 8
  %var.load147 = load ptr, ptr %var.b, align 8
  %b.ptr148 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load147, i32 0, i32 1
  %b.ptr149 = load ptr, ptr %b.ptr148, align 8
  %3 = icmp eq ptr %b.ptr149, null
  br i1 %3, label %b.detached150, label %b.writable151

str_overflow_abort142:                            ; preds = %choice.then124
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead143:                                    ; No predecessors!
  br label %b.buf.len141

b.detached150:                                    ; preds = %b.buf.len141
  call void @dva_abort_detached_builder()
  unreachable

b.writable151:                                    ; preds = %b.buf.len141
  %var.load153 = load ptr, ptr %var.scratch, align 8
  %b.ptr154 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load153, i32 0, i32 1
  %b.ptr155 = load ptr, ptr %b.ptr154, align 8
  %4 = icmp eq ptr %b.ptr155, null
  br i1 %4, label %b.detached156, label %b.writable157

abort.dead152:                                    ; No predecessors!
  unreachable

b.detached156:                                    ; preds = %b.writable151
  call void @dva_abort_detached_builder()
  unreachable

b.writable157:                                    ; preds = %b.writable151
  %var.load159 = load i64, ptr %var.idx, align 8
  %multmp160 = mul i64 %var.load159, 4096
  %ptr.int.l161 = ptrtoint ptr %b.ptr155 to i64
  %addtmp162 = add i64 %ptr.int.l161, %multmp160
  %ptr.res163 = inttoptr i64 %addtmp162 to ptr
  %var.load164 = load i64, ptr %var.nb, align 8
  %raw.int = ptrtoint ptr %b.ptr149 to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.int165 = ptrtoint ptr %ptr.res163 to i64
  %raw.clean.int166 = and i64 %raw.int165, 281474976710655
  %raw.clean.ptr167 = inttoptr i64 %raw.clean.int166 to ptr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %raw.clean.ptr, ptr align 1 %raw.clean.ptr167, i64 %var.load164, i1 false)
  %var.load168 = load ptr, ptr %var.b, align 8
  %b.ptr169 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load168, i32 0, i32 1
  %b.ptr170 = load ptr, ptr %b.ptr169, align 8
  %5 = icmp eq ptr %b.ptr170, null
  br i1 %5, label %b.detached171, label %b.writable172

abort.dead158:                                    ; No predecessors!
  unreachable

b.detached171:                                    ; preds = %b.writable157
  call void @dva_abort_detached_builder()
  unreachable

b.writable172:                                    ; preds = %b.writable157
  %var.load174 = load i64, ptr %var.nb, align 8
  %ptr.int.l175 = ptrtoint ptr %b.ptr170 to i64
  %addtmp176 = add i64 %ptr.int.l175, %var.load174
  %ptr.res177 = inttoptr i64 %addtmp176 to ptr
  %raw.int178 = ptrtoint ptr %ptr.res177 to i64
  %raw.clean.int179 = and i64 %raw.int178, 281474976710655
  %raw.clean.ptr180 = inttoptr i64 %raw.clean.int179 to ptr
  store i8 0, ptr %raw.clean.ptr180, align 1
  %var.load181 = load i64, ptr %var.nb, align 8
  %b.load = load ptr, ptr %var.b, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap182 = load i64, ptr %b.cap, align 8
  %b.len.neg = icmp slt i64 %var.load181, 0
  br i1 %b.len.neg, label %b.len_oob, label %b.len_big_check

abort.dead173:                                    ; No predecessors!
  unreachable

b.len_big_check:                                  ; preds = %b.writable172
  %b.len.big = icmp sgt i64 %var.load181, %b.cap182
  br i1 %b.len.big, label %b.len_oob, label %b.len_ok

b.len_ok:                                         ; preds = %abort.dead183, %b.len_big_check
  %b.len.gep184 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %var.load181, ptr %b.len.gep184, align 8
  %var.load185 = load ptr, ptr %"var.outs'", align 8
  %a.load186 = load ptr, ptr %"var.outs'", align 8
  %a.null187 = icmp eq ptr %a.load186, null
  br i1 %a.null187, label %a.create188, label %a.after189

b.len_oob:                                        ; preds = %b.len_big_check, %b.writable172
  call void @dva_abort_builder_len_oob_msg()
  unreachable

abort.dead183:                                    ; No predecessors!
  br label %b.len_ok

a.create188:                                      ; preds = %b.len_ok
  %arena.cur190 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create191 = call ptr @dva_arena_alloc(ptr %arena.cur190, i64 24)
  %arena.cur192 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf193 = call ptr @dva_arena_alloc(ptr %arena.cur192, i64 128)
  %a.len.gep194 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create191, i32 0, i32 0
  store i64 0, ptr %a.len.gep194, align 8
  %a.data.gep195 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create191, i32 0, i32 1
  store ptr %a.buf193, ptr %a.data.gep195, align 8
  %a.cap.gep196 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create191, i32 0, i32 2
  store i64 16, ptr %a.cap.gep196, align 8
  store ptr %a.create191, ptr %"var.outs'", align 8
  br label %a.after189

a.after189:                                       ; preds = %a.create188, %b.len_ok
  %a.load2197 = load ptr, ptr %"var.outs'", align 8
  %var.load198 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull199 = icmp ne ptr %a.load2197, null
  br i1 %a.rd.nonnull199, label %a.rd.check200, label %a.rd.err.null202

a.rd.check200:                                    ; preds = %a.after189
  %a.rd.len205 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2197, i32 0, i32 0
  %a.rd.len206 = load i64, ptr %a.rd.len205, align 8
  %a.rd.ge0207 = icmp sge i64 %var.load198, 0
  %a.rd.lt208 = icmp slt i64 %var.load198, %a.rd.len206
  %a.rd.bounds209 = and i1 %a.rd.ge0207, %a.rd.lt208
  br i1 %a.rd.bounds209, label %a.rd.ok201, label %a.rd.err.oob203

a.rd.ok201:                                       ; preds = %a.rd.check200
  %a.rd.data210 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2197, i32 0, i32 1
  %a.rd.data211 = load ptr, ptr %a.rd.data210, align 8
  %a.rd.elem.gep212 = getelementptr i64, ptr %a.rd.data211, i64 %var.load198
  %a.rd.elem213 = load i64, ptr %a.rd.elem.gep212, align 8
  br label %a.rd.done204

a.rd.err.null202:                                 ; preds = %a.after189
  %arena.cur214 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc215 = call ptr @dva_arena_alloc(ptr %arena.cur214, i64 56)
  %err.code.gep216 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 0
  store i64 4011, ptr %err.code.gep216, align 8
  %err.msg.gep217 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep217, align 8
  %err.file.gep218 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep218, align 8
  %err.line.gep219 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 3
  store i64 393, ptr %err.line.gep219, align 8
  %err.col.gep220 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 4
  store i64 39, ptr %err.col.gep220, align 8
  %err.ctx.gep221 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc215, i32 0, i32 5
  %err.ctx0.gep222 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep221, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep222, align 8
  %err.ctx1.gep223 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep221, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep223, align 8
  %err.p2i224 = ptrtoint ptr %err.alloc215 to i64
  br label %a.rd.done204

a.rd.err.oob203:                                  ; preds = %a.rd.check200
  %arena.cur225 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc226 = call ptr @dva_arena_alloc(ptr %arena.cur225, i64 56)
  %err.code.gep227 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc226, i32 0, i32 0
  store i64 4011, ptr %err.code.gep227, align 8
  %err.msg.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc226, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep228, align 8
  %err.file.gep229 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc226, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep229, align 8
  %err.line.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc226, i32 0, i32 3
  store i64 393, ptr %err.line.gep230, align 8
  %err.col.gep231 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc226, i32 0, i32 4
  store i64 39, ptr %err.col.gep231, align 8
  %err.ctx.gep232 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc226, i32 0, i32 5
  %err.ctx0.gep233 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep232, i32 0, i32 0
  store i64 %var.load198, ptr %err.ctx0.gep233, align 8
  %err.ctx1.gep234 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep232, i32 0, i32 1
  store i64 %a.rd.len206, ptr %err.ctx1.gep234, align 8
  %err.p2i235 = ptrtoint ptr %err.alloc226 to i64
  br label %a.rd.done204

a.rd.done204:                                     ; preds = %a.rd.err.oob203, %a.rd.err.null202, %a.rd.ok201
  %a.rd.tag236 = phi i1 [ true, %a.rd.ok201 ], [ false, %a.rd.err.null202 ], [ false, %a.rd.err.oob203 ]
  %a.rd.pay237 = phi i64 [ %a.rd.elem213, %a.rd.ok201 ], [ %err.p2i224, %a.rd.err.null202 ], [ %err.p2i235, %a.rd.err.oob203 ]
  %ram.tag238 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag236, 0
  %ram.pay239 = insertvalue { i1, i64 } %ram.tag238, i64 %a.rd.pay237, 1
  %unwrap.is_pos240 = extractvalue { i1, i64 } %ram.pay239, 0
  br i1 %unwrap.is_pos240, label %unwrap.pos.39, label %unwrap.abort.39

unwrap.pos.39:                                    ; preds = %a.rd.done204
  %unwrap.pay.pos272 = extractvalue { i1, i64 } %ram.pay239, 1
  %pay.ptr273 = inttoptr i64 %unwrap.pay.pos272 to ptr
  store ptr %pay.ptr273, ptr %var.prev, align 8
  %var.load274 = load ptr, ptr %"var.outs'", align 8
  %a.load275 = load ptr, ptr %"var.outs'", align 8
  %a.null276 = icmp eq ptr %a.load275, null
  br i1 %a.null276, label %a.create277, label %a.after278

unwrap.abort.39:                                  ; preds = %a.rd.done204
  %unwrap.pay.abort241 = extractvalue { i1, i64 } %ram.pay239, 1
  %err.ptr242 = inttoptr i64 %unwrap.pay.abort241 to ptr
  %err.code.gep243 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr242, i32 0, i32 0
  %err.code244 = load i64, ptr %err.code.gep243, align 8
  %err.msg.gep245 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr242, i32 0, i32 1
  %err.msg.struct246 = load ptr, ptr %err.msg.gep245, align 8
  %err.file.gep247 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr242, i32 0, i32 2
  %err.file.struct248 = load ptr, ptr %err.file.gep247, align 8
  %err.line.gep249 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr242, i32 0, i32 3
  %err.line250 = load i64, ptr %err.line.gep249, align 8
  %err.col.gep251 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr242, i32 0, i32 4
  %err.col252 = load i64, ptr %err.col.gep251, align 8
  %err.msg.len253 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct246, i32 0, i32 0
  %err.msg.len254 = load i64, ptr %err.msg.len253, align 8
  %err.msg.len255 = and i64 %err.msg.len254, 281474976710655
  %err.msg.len32256 = trunc i64 %err.msg.len255 to i32
  %err.msg.data257 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct246, i32 0, i32 1
  %err.msg.data258 = load ptr, ptr %err.msg.data257, align 8
  %err.file.len259 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct248, i32 0, i32 0
  %err.file.len260 = load i64, ptr %err.file.len259, align 8
  %err.file.len261 = and i64 %err.file.len260, 281474976710655
  %err.file.len32262 = trunc i64 %err.file.len261 to i32
  %err.file.data263 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct248, i32 0, i32 1
  %err.file.data264 = load ptr, ptr %err.file.data263, align 8
  %err.thread.rec265 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread266 = icmp ne ptr %err.thread.rec265, null
  br i1 %err.is.thread266, label %err.thread267, label %err.normal268

err.thread267:                                    ; preds = %unwrap.abort.39
  %err.haserr.gep269 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec265, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep269, align 8
  %err.err.gep270 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec265, i32 0, i32 7
  store ptr %err.ptr242, ptr %err.err.gep270, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal268:                                    ; preds = %unwrap.abort.39
  %err.panic.printf271 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code244, i32 %err.msg.len32256, ptr %err.msg.data258, i32 %err.file.len32262, ptr %err.file.data264, i64 %err.line250, i64 %err.col252)
  call void @exit(i32 1)
  unreachable

a.create277:                                      ; preds = %unwrap.pos.39
  %arena.cur279 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create280 = call ptr @dva_arena_alloc(ptr %arena.cur279, i64 24)
  %arena.cur281 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 128)
  %a.len.gep283 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create280, i32 0, i32 0
  store i64 0, ptr %a.len.gep283, align 8
  %a.data.gep284 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create280, i32 0, i32 1
  store ptr %a.buf282, ptr %a.data.gep284, align 8
  %a.cap.gep285 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create280, i32 0, i32 2
  store i64 16, ptr %a.cap.gep285, align 8
  store ptr %a.create280, ptr %"var.outs'", align 8
  br label %a.after278

a.after278:                                       ; preds = %a.create277, %unwrap.pos.39
  %a.load2286 = load ptr, ptr %"var.outs'", align 8
  %var.load287 = load i64, ptr %var.idx, align 8
  %var.load288 = load ptr, ptr %var.prev, align 8
  %var.load289 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 0
  %b.freeze.len290 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 1
  %b.freeze.data291 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after278
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
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data291, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data291, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data291, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len290, 1
  %arena.cur292 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur292, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data291, i64 %b.freeze.len290, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len290
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after278
  %b.freeze.data293 = phi ptr [ %b.freeze.data291, %a.after278 ], [ %b.freeze.data291, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur294 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur294, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len290, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data293, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load289, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %concat.lhs = getelementptr inbounds { i64, ptr }, ptr %var.load288, i32 0, i32 0
  %concat.lhs295 = load i64, ptr %concat.lhs, align 8
  %concat.lhs296 = and i64 %concat.lhs295, 281474976710655
  %concat.lhs297 = getelementptr inbounds { i64, ptr }, ptr %var.load288, i32 0, i32 1
  %concat.lhs298 = load ptr, ptr %concat.lhs297, align 8
  %concat.rhs = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  %concat.rhs299 = load i64, ptr %concat.rhs, align 8
  %concat.rhs300 = and i64 %concat.rhs299, 281474976710655
  %concat.rhs301 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  %concat.rhs302 = load ptr, ptr %concat.rhs301, align 8
  %concat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %concat.lhs296, i64 %concat.rhs300)
  %sum303 = extractvalue { i64, i1 } %concat.sum.len, 0
  %ovf304 = extractvalue { i64, i1 } %concat.sum.len, 1
  br i1 %ovf304, label %str_overflow_abort306, label %concat.sum.len305

concat.sum.len305:                                ; preds = %abort.dead307, %b.freeze.done
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum303, i64 1)
  %sum308 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf309 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf309, label %str_overflow_abort311, label %concat.tot.len310

str_overflow_abort306:                            ; preds = %b.freeze.done
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead307:                                    ; No predecessors!
  br label %concat.sum.len305

concat.tot.len310:                                ; preds = %abort.dead312, %concat.sum.len305
  %arena.cur313 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur313, i64 %sum308)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %concat.lhs298, i64 %concat.lhs296, i1 false)
  %concat.mid = getelementptr i8, ptr %concat.buf, i64 %concat.lhs296
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.mid, ptr align 1 %concat.rhs302, i64 %concat.rhs300, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum303
  store i8 0, ptr %concat.nul, align 1
  %arena.cur314 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 16)
  %str.build.len.gep315 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 0
  store i64 %sum303, ptr %str.build.len.gep315, align 8
  %str.build.data.gep316 = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep316, align 8
  %slot.p2i = ptrtoint ptr %concat.str to i64
  %a.wr.nonnull = icmp ne ptr %a.load2286, null
  br i1 %a.wr.nonnull, label %a.wr.check, label %a.wr.err.null

str_overflow_abort311:                            ; preds = %concat.sum.len305
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead312:                                    ; No predecessors!
  br label %concat.tot.len310

a.wr.check:                                       ; preds = %concat.tot.len310
  %a.wr.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2286, i32 0, i32 0
  %a.wr.len317 = load i64, ptr %a.wr.len, align 8
  %a.wr.ge0 = icmp sge i64 %var.load287, 0
  %a.wr.lt = icmp slt i64 %var.load287, %a.wr.len317
  %a.wr.bounds = and i1 %a.wr.ge0, %a.wr.lt
  br i1 %a.wr.bounds, label %a.wr.ok, label %a.wr.err.oob

a.wr.ok:                                          ; preds = %a.wr.check
  %a.wr.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2286, i32 0, i32 1
  %a.wr.data318 = load ptr, ptr %a.wr.data, align 8
  %a.elem.gep319 = getelementptr i64, ptr %a.wr.data318, i64 %var.load287
  store i64 %slot.p2i, ptr %a.elem.gep319, align 8
  br label %a.wr.done

a.wr.err.null:                                    ; preds = %concat.tot.len310
  %arena.cur320 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc321 = call ptr @dva_arena_alloc(ptr %arena.cur320, i64 56)
  %err.code.gep322 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 0
  store i64 4011, ptr %err.code.gep322, align 8
  %err.msg.gep323 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep323, align 8
  %err.file.gep324 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep324, align 8
  %err.line.gep325 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 3
  store i64 0, ptr %err.line.gep325, align 8
  %err.col.gep326 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 4
  store i64 0, ptr %err.col.gep326, align 8
  %err.ctx.gep327 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc321, i32 0, i32 5
  %err.ctx0.gep328 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep327, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep328, align 8
  %err.ctx1.gep329 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep327, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep329, align 8
  br label %a.wr.done

a.wr.err.oob:                                     ; preds = %a.wr.check
  %arena.cur330 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 56)
  %err.code.gep332 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 0
  store i64 4011, ptr %err.code.gep332, align 8
  %err.msg.gep333 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep333, align 8
  %err.file.gep334 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep334, align 8
  %err.line.gep335 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 3
  store i64 0, ptr %err.line.gep335, align 8
  %err.col.gep336 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 4
  store i64 0, ptr %err.col.gep336, align 8
  %err.ctx.gep337 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc331, i32 0, i32 5
  %err.ctx0.gep338 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep337, i32 0, i32 0
  store i64 %var.load287, ptr %err.ctx0.gep338, align 8
  %err.ctx1.gep339 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep337, i32 0, i32 1
  store i64 %a.wr.len317, ptr %err.ctx1.gep339, align 8
  br label %a.wr.done

a.wr.done:                                        ; preds = %a.wr.err.oob, %a.wr.err.null, %a.wr.ok
  %a.wr.niche = phi ptr [ null, %a.wr.ok ], [ %err.alloc321, %a.wr.err.null ], [ %err.alloc331, %a.wr.err.oob ]
  %var.load340 = load ptr, ptr %var.fds, align 8
  %a.load341 = load ptr, ptr %var.fds, align 8
  %a.null342 = icmp eq ptr %a.load341, null
  br i1 %a.null342, label %a.create343, label %a.after344

a.create343:                                      ; preds = %a.wr.done
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
  store ptr %a.create346, ptr %var.fds, align 8
  br label %a.after344

a.after344:                                       ; preds = %a.create343, %a.wr.done
  %a.load2352 = load ptr, ptr %var.fds, align 8
  %var.load353 = load i64, ptr %var.idx, align 8
  %a.rd.nonnull354 = icmp ne ptr %a.load2352, null
  br i1 %a.rd.nonnull354, label %a.rd.check355, label %a.rd.err.null357

a.rd.check355:                                    ; preds = %a.after344
  %a.rd.len360 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2352, i32 0, i32 0
  %a.rd.len361 = load i64, ptr %a.rd.len360, align 8
  %a.rd.ge0362 = icmp sge i64 %var.load353, 0
  %a.rd.lt363 = icmp slt i64 %var.load353, %a.rd.len361
  %a.rd.bounds364 = and i1 %a.rd.ge0362, %a.rd.lt363
  br i1 %a.rd.bounds364, label %a.rd.ok356, label %a.rd.err.oob358

a.rd.ok356:                                       ; preds = %a.rd.check355
  %a.rd.data365 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2352, i32 0, i32 1
  %a.rd.data366 = load ptr, ptr %a.rd.data365, align 8
  %a.rd.elem.gep367 = getelementptr i64, ptr %a.rd.data366, i64 %var.load353
  %a.rd.elem368 = load i64, ptr %a.rd.elem.gep367, align 8
  br label %a.rd.done359

a.rd.err.null357:                                 ; preds = %a.after344
  %arena.cur369 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc370 = call ptr @dva_arena_alloc(ptr %arena.cur369, i64 56)
  %err.code.gep371 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 0
  store i64 4011, ptr %err.code.gep371, align 8
  %err.msg.gep372 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 1
  store ptr @str.7.struct, ptr %err.msg.gep372, align 8
  %err.file.gep373 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep373, align 8
  %err.line.gep374 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 3
  store i64 395, ptr %err.line.gep374, align 8
  %err.col.gep375 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 4
  store i64 35, ptr %err.col.gep375, align 8
  %err.ctx.gep376 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc370, i32 0, i32 5
  %err.ctx0.gep377 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep376, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep377, align 8
  %err.ctx1.gep378 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep376, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep378, align 8
  %err.p2i379 = ptrtoint ptr %err.alloc370 to i64
  br label %a.rd.done359

a.rd.err.oob358:                                  ; preds = %a.rd.check355
  %arena.cur380 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc381 = call ptr @dva_arena_alloc(ptr %arena.cur380, i64 56)
  %err.code.gep382 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc381, i32 0, i32 0
  store i64 4011, ptr %err.code.gep382, align 8
  %err.msg.gep383 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc381, i32 0, i32 1
  store ptr @str.9.struct, ptr %err.msg.gep383, align 8
  %err.file.gep384 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc381, i32 0, i32 2
  store ptr @str.8.struct, ptr %err.file.gep384, align 8
  %err.line.gep385 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc381, i32 0, i32 3
  store i64 395, ptr %err.line.gep385, align 8
  %err.col.gep386 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc381, i32 0, i32 4
  store i64 35, ptr %err.col.gep386, align 8
  %err.ctx.gep387 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc381, i32 0, i32 5
  %err.ctx0.gep388 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep387, i32 0, i32 0
  store i64 %var.load353, ptr %err.ctx0.gep388, align 8
  %err.ctx1.gep389 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep387, i32 0, i32 1
  store i64 %a.rd.len361, ptr %err.ctx1.gep389, align 8
  %err.p2i390 = ptrtoint ptr %err.alloc381 to i64
  br label %a.rd.done359

a.rd.done359:                                     ; preds = %a.rd.err.oob358, %a.rd.err.null357, %a.rd.ok356
  %a.rd.tag391 = phi i1 [ true, %a.rd.ok356 ], [ false, %a.rd.err.null357 ], [ false, %a.rd.err.oob358 ]
  %a.rd.pay392 = phi i64 [ %a.rd.elem368, %a.rd.ok356 ], [ %err.p2i379, %a.rd.err.null357 ], [ %err.p2i390, %a.rd.err.oob358 ]
  %ram.tag393 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag391, 0
  %ram.pay394 = insertvalue { i1, i64 } %ram.tag393, i64 %a.rd.pay392, 1
  %unwrap.is_pos395 = extractvalue { i1, i64 } %ram.pay394, 0
  br i1 %unwrap.is_pos395, label %unwrap.pos.40, label %unwrap.abort.40

unwrap.pos.40:                                    ; preds = %a.rd.done359
  %unwrap.pay.pos427 = extractvalue { i1, i64 } %ram.pay394, 1
  store i64 %unwrap.pay.pos427, ptr %var.fd428, align 8
  %var.load429 = load ptr, ptr %var.ring, align 8
  %var.load430 = load i64, ptr %var.fd428, align 8
  %var.load431 = load ptr, ptr %var.scratch, align 8
  %b.ptr432 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load431, i32 0, i32 1
  %b.ptr433 = load ptr, ptr %b.ptr432, align 8
  %6 = icmp eq ptr %b.ptr433, null
  br i1 %6, label %b.detached434, label %b.writable435

unwrap.abort.40:                                  ; preds = %a.rd.done359
  %unwrap.pay.abort396 = extractvalue { i1, i64 } %ram.pay394, 1
  %err.ptr397 = inttoptr i64 %unwrap.pay.abort396 to ptr
  %err.code.gep398 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr397, i32 0, i32 0
  %err.code399 = load i64, ptr %err.code.gep398, align 8
  %err.msg.gep400 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr397, i32 0, i32 1
  %err.msg.struct401 = load ptr, ptr %err.msg.gep400, align 8
  %err.file.gep402 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr397, i32 0, i32 2
  %err.file.struct403 = load ptr, ptr %err.file.gep402, align 8
  %err.line.gep404 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr397, i32 0, i32 3
  %err.line405 = load i64, ptr %err.line.gep404, align 8
  %err.col.gep406 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr397, i32 0, i32 4
  %err.col407 = load i64, ptr %err.col.gep406, align 8
  %err.msg.len408 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct401, i32 0, i32 0
  %err.msg.len409 = load i64, ptr %err.msg.len408, align 8
  %err.msg.len410 = and i64 %err.msg.len409, 281474976710655
  %err.msg.len32411 = trunc i64 %err.msg.len410 to i32
  %err.msg.data412 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct401, i32 0, i32 1
  %err.msg.data413 = load ptr, ptr %err.msg.data412, align 8
  %err.file.len414 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct403, i32 0, i32 0
  %err.file.len415 = load i64, ptr %err.file.len414, align 8
  %err.file.len416 = and i64 %err.file.len415, 281474976710655
  %err.file.len32417 = trunc i64 %err.file.len416 to i32
  %err.file.data418 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct403, i32 0, i32 1
  %err.file.data419 = load ptr, ptr %err.file.data418, align 8
  %err.thread.rec420 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread421 = icmp ne ptr %err.thread.rec420, null
  br i1 %err.is.thread421, label %err.thread422, label %err.normal423

err.thread422:                                    ; preds = %unwrap.abort.40
  %err.haserr.gep424 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec420, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep424, align 8
  %err.err.gep425 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec420, i32 0, i32 7
  store ptr %err.ptr397, ptr %err.err.gep425, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal423:                                    ; preds = %unwrap.abort.40
  %err.panic.printf426 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code399, i32 %err.msg.len32411, ptr %err.msg.data413, i32 %err.file.len32417, ptr %err.file.data419, i64 %err.line405, i64 %err.col407)
  call void @exit(i32 1)
  unreachable

b.detached434:                                    ; preds = %unwrap.pos.40
  call void @dva_abort_detached_builder()
  unreachable

b.writable435:                                    ; preds = %unwrap.pos.40
  %var.load437 = load i64, ptr %var.idx, align 8
  %multmp438 = mul i64 %var.load437, 4096
  %ptr.int.l439 = ptrtoint ptr %b.ptr433 to i64
  %addtmp440 = add i64 %ptr.int.l439, %multmp438
  %ptr.res441 = inttoptr i64 %addtmp440 to ptr
  %var.load442 = load i64, ptr %var.idx, align 8
  %call.res443 = call i1 @"uring::prep_pipe_read"(ptr %var.load429, i64 %var.load430, ptr %ptr.res441, i64 4096, i64 %var.load442)
  br label %choice.exit125

abort.dead436:                                    ; No predecessors!
  unreachable

a.create450:                                      ; preds = %loop.exit.36
  %arena.cur452 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create453 = call ptr @dva_arena_alloc(ptr %arena.cur452, i64 24)
  %arena.cur454 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf455 = call ptr @dva_arena_alloc(ptr %arena.cur454, i64 128)
  %a.len.gep456 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 0
  store i64 0, ptr %a.len.gep456, align 8
  %a.data.gep457 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 1
  store ptr %a.buf455, ptr %a.data.gep457, align 8
  %a.cap.gep458 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create453, i32 0, i32 2
  store i64 16, ptr %a.cap.gep458, align 8
  store ptr %a.create453, ptr %"var.outs'", align 8
  br label %a.after451

a.after451:                                       ; preds = %a.create450, %loop.exit.36
  %a.load2459 = load ptr, ptr %"var.outs'", align 8
  %p.to.i64460 = ptrtoint ptr %a.load2459 to i64
  %ram.pay461 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %p.to.i64460, 1
  ret { i1, i64 } %ram.pay461
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

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

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
