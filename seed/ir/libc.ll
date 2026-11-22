; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clo.const = internal constant { ptr, ptr } { ptr @"libc::errno", ptr null }
@"var.libc::errno" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"libc::waitpid_no_status", ptr null }
@"var.libc::waitpid_no_status" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"libc::poll_sleep", ptr null }
@"var.libc::poll_sleep" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_libc, ptr null }]

define internal void @__dva_global_init_libc() #0 {
entry:
  store ptr @clo.const, ptr @"var.libc::errno", align 8
  store ptr @clo.const.1, ptr @"var.libc::waitpid_no_status", align 8
  store ptr @clo.const.2, ptr @"var.libc::poll_sleep", align 8
  ret void
}

declare i64 @waitpid(i64, ptr, i64)

declare ptr @__errno_location()

declare i64 @poll(ptr, i64, i64)

define i64 @"libc::errno"() #0 {
entry:
  %call.res = call ptr @__errno_location()
  %raw.int = ptrtoint ptr %call.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i32, ptr %raw.clean.ptr, align 4
  %coerce.sext = sext i32 %raw.load to i64
  ret i64 %coerce.sext
}

define i64 @"libc::waitpid_no_status"(i64 %0, i64 %1) #0 {
entry:
  %var.options = alloca i64, align 8
  %var.pid = alloca i64, align 8
  store i64 %0, ptr %var.pid, align 8
  store i64 %1, ptr %var.options, align 8
  %var.load = load i64, ptr %var.pid, align 8
  %var.load1 = load i64, ptr %var.options, align 8
  %call.res = call i64 @waitpid(i64 %var.load, ptr null, i64 %var.load1)
  ret i64 %call.res
}

define i64 @"libc::poll_sleep"(i64 %0) #0 {
entry:
  %var.timeout = alloca i64, align 8
  store i64 %0, ptr %var.timeout, align 8
  %var.load = load i64, ptr %var.timeout, align 8
  %call.res = call i64 @poll(ptr null, i64 0, i64 %var.load)
  ret i64 %call.res
}

attributes #0 = { "nounwind" }
