; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clo.const = internal constant { ptr, ptr } { ptr @"libc::errno", ptr null }
@"var.libc::errno" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_libc, ptr null }]

define internal void @__dva_global_init_libc() #0 {
entry:
  store ptr @clo.const, ptr @"var.libc::errno", align 8
  ret void
}

declare ptr @__errno_location()

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

attributes #0 = { "nounwind" }
