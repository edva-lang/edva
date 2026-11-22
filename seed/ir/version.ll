; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str.0 = internal unnamed_addr constant [20 x i8] c"1.6.3+5292898-dirty\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 19, ptr @str.0 }
@"var.version::VERSION" = global ptr null
@str.1 = internal unnamed_addr constant [14 x i8] c"5292898-dirty\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.1 }
@"var.version::COMMIT_HASH" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_version, ptr null }]

define internal void @__dva_global_init_version() #0 {
entry:
  store ptr @str.0.struct, ptr @"var.version::VERSION", align 8
  store ptr @str.1.struct, ptr @"var.version::COMMIT_HASH", align 8
  ret void
}

attributes #0 = { "nounwind" }
