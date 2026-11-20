; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_arena_tls = external thread_local global ptr
@"var.types::cg_timings" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"codegen::default_codegen_opts", ptr null }
@"var.codegen::default_codegen_opts" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"codegen::decl_bare_name", ptr null }
@"var.codegen::decl_bare_name" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"codegen::codegen_typed_program_opts", ptr null }
@"var.codegen::codegen_typed_program_opts" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"codegen::last_analysis_ns", ptr null }
@"var.codegen::last_analysis_ns" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"codegen::last_ir_emit_ns", ptr null }
@"var.codegen::last_ir_emit_ns" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_codegen, ptr null }]

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #0 {
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
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #1

define internal void @__dva_global_init_codegen() #2 {
entry:
  store ptr @clo.const, ptr @"var.codegen::default_codegen_opts", align 8
  store ptr @clo.const.1, ptr @"var.codegen::decl_bare_name", align 8
  store ptr @clo.const.2, ptr @"var.codegen::codegen_typed_program_opts", align 8
  store ptr @clo.const.3, ptr @"var.codegen::last_analysis_ns", align 8
  store ptr @clo.const.4, ptr @"var.codegen::last_ir_emit_ns", align 8
  ret void
}

define ptr @"codegen::default_codegen_opts"() #2 {
entry:
  %call.res = call ptr @"types::default_codegen_opts"()
  ret ptr %call.res
}

declare ptr @"types::default_codegen_opts"() #2

define { i64, ptr } @"codegen::decl_bare_name"(ptr %0, i64 %1) #2 {
entry:
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %var.load1 = load i64, ptr %var.i, align 8
  %call.res = call { i64, ptr } @"types::decl_bare_name"(ptr %var.load, i64 %var.load1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.alloc, align 8
  ret { i64, ptr } %ret.pack
}

declare { i64, ptr } @"types::decl_bare_name"(ptr, i64) #2

define i64 @"codegen::codegen_typed_program_opts"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) #2 {
entry:
  %var.opts = alloca ptr, align 8
  %var.src_file = alloca ptr, align 8
  %var.exports = alloca ptr, align 8
  %var.out_path = alloca ptr, align 8
  %var.raw = alloca ptr, align 8
  %var.prog = alloca ptr, align 8
  store ptr %0, ptr %var.prog, align 8
  store ptr %1, ptr %var.raw, align 8
  store ptr %2, ptr %var.out_path, align 8
  store ptr %3, ptr %var.exports, align 8
  store ptr %4, ptr %var.src_file, align 8
  store ptr %5, ptr %var.opts, align 8
  %var.load = load ptr, ptr %var.prog, align 8
  %a.load = load ptr, ptr %var.prog, align 8
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
  store ptr %a.create1, ptr %var.prog, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.prog, align 8
  %var.load3 = load ptr, ptr %var.raw, align 8
  %var.load4 = load ptr, ptr %var.out_path, align 8
  %var.load5 = load ptr, ptr %var.exports, align 8
  %a.load6 = load ptr, ptr %var.exports, align 8
  %a.null7 = icmp eq ptr %a.load6, null
  br i1 %a.null7, label %a.create8, label %a.after9

a.create8:                                        ; preds = %a.after
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 24)
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  %a.len.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 0
  store i64 0, ptr %a.len.gep14, align 8
  %a.data.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 1
  store ptr %a.buf13, ptr %a.data.gep15, align 8
  %a.cap.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep16, align 8
  store ptr %a.create11, ptr %var.exports, align 8
  br label %a.after9

a.after9:                                         ; preds = %a.create8, %a.after
  %a.load217 = load ptr, ptr %var.exports, align 8
  %var.load18 = load ptr, ptr %var.src_file, align 8
  %var.load19 = load ptr, ptr %var.opts, align 8
  %call.res = call i64 @"main::codegen_typed_program_opts"(ptr %a.load2, ptr %var.load3, ptr %var.load4, ptr %a.load217, ptr %var.load18, ptr %var.load19)
  ret i64 %call.res
}

declare i64 @"main::codegen_typed_program_opts"(ptr, ptr, ptr, ptr, ptr, ptr) #2

define i64 @"codegen::last_analysis_ns"() #2 {
entry:
  %var.load = load ptr, ptr @"var.types::cg_timings", align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

define i64 @"codegen::last_ir_emit_ns"() #2 {
entry:
  %var.load = load ptr, ptr @"var.types::cg_timings", align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  ret i64 %fld.load
}

attributes #0 = { alwaysinline "nounwind" }
attributes #1 = { noinline "nounwind" }
attributes #2 = { "nounwind" }
