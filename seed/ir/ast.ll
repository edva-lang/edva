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
@clo.const = internal constant { ptr, ptr } { ptr @"ast::mk_rfield_type", ptr null }
@"var.ast::mk_rfield_type" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"ast::mk_rfield_type_default", ptr null }
@"var.ast::mk_rfield_type_default" = global ptr null
@"var.ast::cell_var_names" = global ptr null
@str.0 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.0 }
@str.1 = internal unnamed_addr constant [8 x i8] c"ast.dva\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.1 }
@str.2 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.2 }
@str.3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.3 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"ast::has_cell_name_at", ptr null }
@"var.ast::has_cell_name_at" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"ast::has_cell_name", ptr null }
@"var.ast::has_cell_name" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"ast::cell_var_add", ptr null }
@"var.ast::cell_var_add" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"ast::is_cell_var", ptr null }
@"var.ast::is_cell_var" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"ast::cell_var_reset", ptr null }
@"var.ast::cell_var_reset" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"ast::str_has_sub_at", ptr null }
@"var.ast::str_has_sub_at" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"ast::str_has_sub", ptr null }
@"var.ast::str_has_sub" = global ptr null
@str.4 = internal unnamed_addr constant [7 x i8] c"darwin\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.4 }
@str.5 = internal unnamed_addr constant [7 x i8] c"macosx\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.5 }
@str.6 = internal unnamed_addr constant [6 x i8] c"apple\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.6 }
@str.7 = internal unnamed_addr constant [6 x i8] c"linux\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.7 }
@str.8 = internal unnamed_addr constant [8 x i8] c"windows\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.8 }
@str.9 = internal unnamed_addr constant [5 x i8] c"msvc\00"
@str.9.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.9 }
@str.10 = internal unnamed_addr constant [6 x i8] c"mingw\00"
@str.10.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.10 }
@str.11 = internal unnamed_addr constant [8 x i8] c"freebsd\00"
@str.11.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.11 }
@str.12 = internal unnamed_addr constant [8 x i8] c"openbsd\00"
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.12 }
@str.13 = internal unnamed_addr constant [7 x i8] c"netbsd\00"
@str.13.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.13 }
@str.14 = internal unnamed_addr constant [5 x i8] c"wasi\00"
@str.14.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.14 }
@str.15 = internal unnamed_addr constant [5 x i8] c"wasm\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.15 }
@str.16 = internal unnamed_addr constant [8 x i8] c"unknown\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.16 }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"ast::triple_os", ptr null }
@"var.ast::triple_os" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.10 = internal constant { ptr, ptr } { ptr @"ast::triple_first_seg_at", ptr null }
@"var.ast::triple_first_seg_at" = global ptr null
@str.17 = internal unnamed_addr constant [6 x i8] c"arm64\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.17 }
@str.18 = internal unnamed_addr constant [8 x i8] c"aarch64\00"
@str.18.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.18 }
@str.19 = internal unnamed_addr constant [7 x i8] c"x86_64\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.19 }
@str.20 = internal unnamed_addr constant [6 x i8] c"amd64\00"
@str.20.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.20 }
@str.21 = internal unnamed_addr constant [5 x i8] c"i386\00"
@str.21.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.21 }
@str.22 = internal unnamed_addr constant [5 x i8] c"i486\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.22 }
@str.23 = internal unnamed_addr constant [5 x i8] c"i586\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.23 }
@str.24 = internal unnamed_addr constant [5 x i8] c"i686\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.24 }
@str.25 = internal unnamed_addr constant [4 x i8] c"x86\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.25 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"ast::triple_arch", ptr null }
@"var.ast::triple_arch" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_ast, ptr null }]

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

define internal void @__dva_global_init_ast() #0 {
entry:
  store ptr @clo.const, ptr @"var.ast::mk_rfield_type", align 8
  store ptr @clo.const.1, ptr @"var.ast::mk_rfield_type_default", align 8
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
  store ptr %a.new, ptr @"var.ast::cell_var_names", align 8
  store ptr @clo.const.2, ptr @"var.ast::has_cell_name_at", align 8
  store ptr @clo.const.3, ptr @"var.ast::has_cell_name", align 8
  store ptr @clo.const.4, ptr @"var.ast::cell_var_add", align 8
  store ptr @clo.const.5, ptr @"var.ast::is_cell_var", align 8
  store ptr @clo.const.6, ptr @"var.ast::cell_var_reset", align 8
  store ptr @clo.const.7, ptr @"var.ast::str_has_sub_at", align 8
  store ptr @clo.const.8, ptr @"var.ast::str_has_sub", align 8
  store ptr @clo.const.9, ptr @"var.ast::triple_os", align 8
  store ptr @clo.const.10, ptr @"var.ast::triple_first_seg_at", align 8
  store ptr @clo.const.11, ptr @"var.ast::triple_arch", align 8
  ret void
}

define ptr @"ast::mk_rfield_type"(ptr %0, ptr %1, ptr %2) #0 {
entry:
  %var.ti = alloca ptr, align 8
  %var.vt = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.vt, align 8
  store ptr %2, ptr %var.ti, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load ptr, ptr %var.vt, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i64 0, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load2, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld7, align 1
  %rec.fld8 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %enum.alloc, ptr %rec.fld8, align 8
  ret ptr %rec.alloc
}

define ptr @"ast::mk_rfield_type_default"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %var.def_expr = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.vt = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.vt, align 8
  store ptr %2, ptr %var.ti, align 8
  store ptr %3, ptr %var.def_expr, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load ptr, ptr %var.vt, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %var.load3 = load ptr, ptr %var.def_expr, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load2, ptr %rec.fld5, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 3
  store i1 true, ptr %rec.fld6, align 1
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %var.load3, ptr %rec.fld7, align 8
  ret ptr %rec.alloc
}

define i1 @"ast::has_cell_name_at"(ptr %0, ptr %1, i64 %2, i64 %3) #0 {
entry:
  %var.v = alloca ptr, align 8
  %var._27 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  %var.arr = alloca ptr, align 8
  store ptr %0, ptr %var.arr, align 8
  store ptr %1, ptr %var.s, align 8
  store i64 %2, ptr %var.i, align 8
  store i64 %3, ptr %var.n, align 8
  %var.load = load i64, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.n, align 8
  %cmptmp = icmp eq i64 %var.load, %var.load1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.arr, align 8
  %a.load = load ptr, ptr %var.arr, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %choice.exit45, %choice.then
  %choice.res63 = phi i1 [ false, %choice.then ], [ %choice.res62, %choice.exit45 ]
  ret i1 %choice.res63

a.create:                                         ; preds = %choice.else
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create3, ptr %var.arr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.else
  %a.load2 = load ptr, ptr %var.arr, align 8
  %var.load5 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len6 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load5, 0
  %a.rd.lt = icmp slt i64 %var.load5, %a.rd.len6
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data7 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data7, i64 %var.load5
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 254, ptr %err.line.gep, align 8
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
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 56)
  %err.code.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 0
  store i64 4011, ptr %err.code.gep11, align 8
  %err.msg.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep12, align 8
  %err.file.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep13, align 8
  %err.line.gep14 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 3
  store i64 254, ptr %err.line.gep14, align 8
  %err.col.gep15 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 4
  store i64 21, ptr %err.col.gep15, align 8
  %err.ctx.gep16 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc10, i32 0, i32 5
  %err.ctx0.gep17 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 0
  store i64 %var.load5, ptr %err.ctx0.gep17, align 8
  %err.ctx1.gep18 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep16, i32 0, i32 1
  store i64 %a.rd.len6, ptr %err.ctx1.gep18, align 8
  %err.p2i19 = ptrtoint ptr %err.alloc10 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i19, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag20 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag20, label %choice.then21, label %choice.else22

choice.then21:                                    ; preds = %a.rd.done
  %ram.pay24 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay24 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  br label %choice.exit23

choice.else22:                                    ; preds = %a.rd.done
  %ram.pay25 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr26 = inttoptr i64 %ram.pay25 to ptr
  store ptr %pay.ptr26, ptr %var._27, align 8
  br label %choice.exit23

choice.exit23:                                    ; preds = %choice.else22, %choice.then21
  %choice.res = phi ptr [ %pay.ptr, %choice.then21 ], [ @str.3.struct, %choice.else22 ]
  store ptr %choice.res, ptr %var.v, align 8
  %var.load28 = load ptr, ptr %var.v, align 8
  %var.load29 = load ptr, ptr %var.s, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 0
  %eq.lhs.len30 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len31 = and i64 %eq.lhs.len30, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len30, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %choice.exit23
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %eq.rhs.len32 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len33 = and i64 %eq.rhs.len32, 281474976710655
  %str.tag34 = lshr i64 %eq.rhs.len32, 48
  %tag.immortal36 = icmp eq i64 %str.tag34, 0
  %active.gen37 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current38 = icmp eq i64 %str.tag34, %active.gen37
  %tag.fast.ok39 = or i1 %tag.immortal36, %tag.current38
  br i1 %tag.fast.ok39, label %str_ok35, label %tag.slow_check40

tag.slow_check:                                   ; preds = %choice.exit23
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok35:                                         ; preds = %tag.slow_check40, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len31, %eq.rhs.len33
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check40:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag34)
  br label %str_ok35

str.eq.then:                                      ; preds = %str_ok35
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data41 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %eq.rhs.data42 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data41, ptr %eq.rhs.data42, i64 %eq.lhs.len31)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok35
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then43, label %choice.else44

choice.then43:                                    ; preds = %str.eq.merge
  br label %choice.exit45

choice.else44:                                    ; preds = %str.eq.merge
  %var.load46 = load ptr, ptr %var.arr, align 8
  %a.load47 = load ptr, ptr %var.arr, align 8
  %a.null48 = icmp eq ptr %a.load47, null
  br i1 %a.null48, label %a.create49, label %a.after50

choice.exit45:                                    ; preds = %a.after50, %choice.then43
  %choice.res62 = phi i1 [ true, %choice.then43 ], [ %call.res, %a.after50 ]
  br label %choice.exit

a.create49:                                       ; preds = %choice.else44
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
  store ptr %a.create52, ptr %var.arr, align 8
  br label %a.after50

a.after50:                                        ; preds = %a.create49, %choice.else44
  %a.load258 = load ptr, ptr %var.arr, align 8
  %var.load59 = load ptr, ptr %var.s, align 8
  %var.load60 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load60, 1
  %var.load61 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"ast::has_cell_name_at"(ptr %a.load258, ptr %var.load59, i64 %addtmp, i64 %var.load61)
  br label %choice.exit45
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #4 {
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

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

declare i32 @memcmp(ptr, ptr, i64) #0

define i1 @"ast::has_cell_name"(ptr %0, ptr %1) #0 {
entry:
  %var.s = alloca ptr, align 8
  %var.arr = alloca ptr, align 8
  store ptr %0, ptr %var.arr, align 8
  store ptr %1, ptr %var.s, align 8
  %var.load = load ptr, ptr %var.arr, align 8
  %a.load = load ptr, ptr %var.arr, align 8
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
  store ptr %a.create1, ptr %var.arr, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.arr, align 8
  %var.load3 = load ptr, ptr %var.s, align 8
  %var.load4 = load ptr, ptr %var.arr, align 8
  %a.load5 = load ptr, ptr %var.arr, align 8
  %a.null6 = icmp eq ptr %a.load5, null
  br i1 %a.null6, label %a.create7, label %a.after8

a.create7:                                        ; preds = %a.after
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 128)
  %a.len.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 0
  store i64 0, ptr %a.len.gep13, align 8
  %a.data.gep14 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 1
  store ptr %a.buf12, ptr %a.data.gep14, align 8
  %a.cap.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create10, i32 0, i32 2
  store i64 16, ptr %a.cap.gep15, align 8
  store ptr %a.create10, ptr %var.arr, align 8
  br label %a.after8

a.after8:                                         ; preds = %a.create7, %a.after
  %a.load216 = load ptr, ptr %var.arr, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load216, i32 0, i32 0
  %a.len.query17 = load i64, ptr %a.len.query, align 8
  %call.res = call i1 @"ast::has_cell_name_at"(ptr %a.load2, ptr %var.load3, i64 0, i64 %a.len.query17)
  ret i1 %call.res
}

define void @"ast::cell_var_add"(ptr %0) #0 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr @"var.ast::cell_var_names", align 8
  %a.load = load ptr, ptr @"var.ast::cell_var_names", align 8
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
  store ptr %a.create1, ptr @"var.ast::cell_var_names", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.ast::cell_var_names", align 8
  %var.load3 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"ast::has_cell_name"(ptr %a.load2, ptr %var.load3)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %a.after
  %var.load4 = load ptr, ptr %var.name, align 8
  %copy.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %copy.len5 = load i64, ptr %copy.len, align 8
  %copy.len6 = and i64 %copy.len5, 281474976710655
  %str.tag = lshr i64 %copy.len5, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %a.store, %a.after
  ret void

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %copy.len7 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %copy.len8 = load ptr, ptr %copy.len7, align 8
  %copy.alen = add i64 %copy.len6, 1
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 %copy.alen)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len8, i64 %copy.len6, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 %copy.len6
  store i8 0, ptr %copy.nul, align 1
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 16)
  %str.copy.len.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 0
  store i64 %copy.len6, ptr %str.copy.len.gep, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %a.load11 = load ptr, ptr @"var.ast::cell_var_names", align 8
  %a.null12 = icmp eq ptr %a.load11, null
  br i1 %a.null12, label %a.create13, label %a.after14

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

a.create13:                                       ; preds = %str_ok
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 24)
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 128)
  %a.len.gep19 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 0
  store i64 0, ptr %a.len.gep19, align 8
  %a.data.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 1
  store ptr %a.buf18, ptr %a.data.gep20, align 8
  %a.cap.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create16, i32 0, i32 2
  store i64 16, ptr %a.cap.gep21, align 8
  store ptr %a.create16, ptr @"var.ast::cell_var_names", align 8
  br label %a.after14

a.after14:                                        ; preds = %a.create13, %str_ok
  %a.load222 = load ptr, ptr @"var.ast::cell_var_names", align 8
  br label %a.check

a.check:                                          ; preds = %a.after14
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %a.len23 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 2
  %a.cap24 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len23, %a.cap24
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load222)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 1
  %a.cur.data25 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  %a.cur.len26 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data25, i64 %a.cur.len26
  %slot.p2i = ptrtoint ptr %copy.str to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len26, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load222, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

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
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define i1 @"ast::is_cell_var"(ptr %0) #0 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr @"var.ast::cell_var_names", align 8
  %a.load = load ptr, ptr @"var.ast::cell_var_names", align 8
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
  store ptr %a.create1, ptr @"var.ast::cell_var_names", align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr @"var.ast::cell_var_names", align 8
  %var.load3 = load ptr, ptr %var.name, align 8
  %call.res = call i1 @"ast::has_cell_name"(ptr %a.load2, ptr %var.load3)
  ret i1 %call.res
}

define void @"ast::cell_var_reset"() #0 {
entry:
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
  store ptr %a.new, ptr @"var.ast::cell_var_names", align 8
  ret void
}

define i1 @"ast::str_has_sub_at"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #0 {
entry:
  %var.m = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.sub = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.sub, align 8
  store i64 %2, ptr %var.i, align 8
  store i64 %3, ptr %var.n, align 8
  store i64 %4, ptr %var.m, align 8
  %var.load = load i64, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.m, align 8
  %addtmp = add i64 %var.load, %var.load1
  %var.load2 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sgt i64 %addtmp, %var.load2
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.s, align 8
  %s.chk.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.chk.len4 = load i64, ptr %s.chk.len, align 8
  %s.chk.len5 = and i64 %s.chk.len4, 281474976710655
  %str.tag = lshr i64 %s.chk.len4, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.exit27, %choice.then
  %choice.res34 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit27 ]
  ret i1 %choice.res34

str_ok:                                           ; preds = %tag.slow_check, %choice.else
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len6 = load i64, ptr %s.read.len, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %var.load10 = load i64, ptr %var.i, align 8
  %var.load11 = load i64, ptr %var.m, align 8
  %addtmp12 = add i64 %var.load10, %var.load11
  %start.is_neg = icmp slt i64 %var.load9, 0
  %rel.start = add i64 %s.read.len7, %var.load9
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load9
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len7
  %final.start = select i1 %start.gt.len, i64 %s.read.len7, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp12, 0
  %rel.end = add i64 %s.read.len7, %addtmp12
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp12
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len7
  %final.end = select i1 %end.gt.len, i64 %s.read.len7, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data8, i64 %final.start
  %var.load13 = load ptr, ptr %var.sub, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %cmp.str14 = load i64, ptr %cmp.str, align 8
  %cmp.str15 = and i64 %cmp.str14, 281474976710655
  %str.tag16 = lshr i64 %cmp.str14, 48
  %tag.immortal18 = icmp eq i64 %str.tag16, 0
  %active.gen19 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current20 = icmp eq i64 %str.tag16, %active.gen19
  %tag.fast.ok21 = or i1 %tag.immortal18, %tag.current20
  br i1 %tag.fast.ok21, label %str_ok17, label %tag.slow_check22

tag.slow_check:                                   ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok17:                                         ; preds = %tag.slow_check22, %str_ok
  %cmp.str23 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %cmp.str24 = load ptr, ptr %cmp.str23, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str15
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check22:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag16)
  br label %str_ok17

str.eq.then:                                      ; preds = %str_ok17
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str24, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok17
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then25, label %choice.else26

choice.then25:                                    ; preds = %str.eq.merge
  br label %choice.exit27

choice.else26:                                    ; preds = %str.eq.merge
  %var.load28 = load ptr, ptr %var.s, align 8
  %var.load29 = load ptr, ptr %var.sub, align 8
  %var.load30 = load i64, ptr %var.i, align 8
  %addtmp31 = add i64 %var.load30, 1
  %var.load32 = load i64, ptr %var.n, align 8
  %var.load33 = load i64, ptr %var.m, align 8
  %call.res = call i1 @"ast::str_has_sub_at"(ptr %var.load28, ptr %var.load29, i64 %addtmp31, i64 %var.load32, i64 %var.load33)
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.else26, %choice.then25
  %choice.res = phi i1 [ true, %choice.then25 ], [ %call.res, %choice.else26 ]
  br label %choice.exit
}

define i1 @"ast::str_has_sub"(ptr %0, ptr %1) #0 {
entry:
  %var.m = alloca i64, align 8
  %var.sub = alloca ptr, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store ptr %1, ptr %var.sub, align 8
  %var.load = load ptr, ptr %var.sub, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  %str.tag = lshr i64 %str.len.query1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  store i64 %str.len.query2, ptr %var.m, align 8
  %var.load3 = load i64, ptr %var.m, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.then:                                      ; preds = %str_ok
  br label %choice.exit

choice.else:                                      ; preds = %str_ok
  %var.load4 = load ptr, ptr %var.s, align 8
  %var.load5 = load ptr, ptr %var.sub, align 8
  %var.load6 = load ptr, ptr %var.s, align 8
  %str.len.query7 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %str.len.query8 = load i64, ptr %str.len.query7, align 8
  %str.len.query9 = and i64 %str.len.query8, 281474976710655
  %str.tag10 = lshr i64 %str.len.query8, 48
  %tag.immortal12 = icmp eq i64 %str.tag10, 0
  %active.gen13 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current14 = icmp eq i64 %str.tag10, %active.gen13
  %tag.fast.ok15 = or i1 %tag.immortal12, %tag.current14
  br i1 %tag.fast.ok15, label %str_ok11, label %tag.slow_check16

choice.exit:                                      ; preds = %str_ok11, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %call.res, %str_ok11 ]
  ret i1 %choice.res

str_ok11:                                         ; preds = %tag.slow_check16, %choice.else
  %var.load17 = load i64, ptr %var.m, align 8
  %call.res = call i1 @"ast::str_has_sub_at"(ptr %var.load4, ptr %var.load5, i64 0, i64 %str.len.query9, i64 %var.load17)
  br label %choice.exit

tag.slow_check16:                                 ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag10)
  br label %str_ok11
}

define { i64, ptr } @"ast::triple_os"(ptr %0) #0 {
entry:
  %var.triple = alloca ptr, align 8
  store ptr %0, ptr %var.triple, align 8
  %var.load = load ptr, ptr %var.triple, align 8
  %call.res = call i1 @"ast::str_has_sub"(ptr %var.load, ptr @str.4.struct)
  br i1 %call.res, label %or.12.then, label %or.12.else

or.12.then:                                       ; preds = %entry
  br label %or.12.exit

or.12.else:                                       ; preds = %entry
  %var.load1 = load ptr, ptr %var.triple, align 8
  %call.res2 = call i1 @"ast::str_has_sub"(ptr %var.load1, ptr @str.5.struct)
  br label %or.12.exit

or.12.exit:                                       ; preds = %or.12.else, %or.12.then
  %or.12.phi = phi i1 [ %call.res, %or.12.then ], [ %call.res2, %or.12.else ]
  br i1 %or.12.phi, label %or.13.then, label %or.13.else

or.13.then:                                       ; preds = %or.12.exit
  br label %or.13.exit

or.13.else:                                       ; preds = %or.12.exit
  %var.load3 = load ptr, ptr %var.triple, align 8
  %call.res4 = call i1 @"ast::str_has_sub"(ptr %var.load3, ptr @str.6.struct)
  br label %or.13.exit

or.13.exit:                                       ; preds = %or.13.else, %or.13.then
  %or.13.phi = phi i1 [ %or.12.phi, %or.13.then ], [ %call.res4, %or.13.else ]
  br i1 %or.13.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %or.13.exit
  br label %choice.exit

choice.else:                                      ; preds = %or.13.exit
  %var.load5 = load ptr, ptr %var.triple, align 8
  %call.res6 = call i1 @"ast::str_has_sub"(ptr %var.load5, ptr @str.7.struct)
  br i1 %call.res6, label %choice.then7, label %choice.else8

choice.exit:                                      ; preds = %choice.exit9, %choice.then
  %choice.res50 = phi ptr [ @str.4.struct, %choice.then ], [ %choice.res49, %choice.exit9 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res50, align 8
  ret { i64, ptr } %ret.pack

choice.then7:                                     ; preds = %choice.else
  br label %choice.exit9

choice.else8:                                     ; preds = %choice.else
  %var.load10 = load ptr, ptr %var.triple, align 8
  %call.res11 = call i1 @"ast::str_has_sub"(ptr %var.load10, ptr @str.8.struct)
  br i1 %call.res11, label %or.14.then, label %or.14.else

choice.exit9:                                     ; preds = %choice.exit18, %choice.then7
  %choice.res49 = phi ptr [ @str.7.struct, %choice.then7 ], [ %choice.res48, %choice.exit18 ]
  br label %choice.exit

or.14.then:                                       ; preds = %choice.else8
  br label %or.14.exit

or.14.else:                                       ; preds = %choice.else8
  %var.load12 = load ptr, ptr %var.triple, align 8
  %call.res13 = call i1 @"ast::str_has_sub"(ptr %var.load12, ptr @str.9.struct)
  br label %or.14.exit

or.14.exit:                                       ; preds = %or.14.else, %or.14.then
  %or.14.phi = phi i1 [ %call.res11, %or.14.then ], [ %call.res13, %or.14.else ]
  br i1 %or.14.phi, label %or.15.then, label %or.15.else

or.15.then:                                       ; preds = %or.14.exit
  br label %or.15.exit

or.15.else:                                       ; preds = %or.14.exit
  %var.load14 = load ptr, ptr %var.triple, align 8
  %call.res15 = call i1 @"ast::str_has_sub"(ptr %var.load14, ptr @str.10.struct)
  br label %or.15.exit

or.15.exit:                                       ; preds = %or.15.else, %or.15.then
  %or.15.phi = phi i1 [ %or.14.phi, %or.15.then ], [ %call.res15, %or.15.else ]
  br i1 %or.15.phi, label %choice.then16, label %choice.else17

choice.then16:                                    ; preds = %or.15.exit
  br label %choice.exit18

choice.else17:                                    ; preds = %or.15.exit
  %var.load19 = load ptr, ptr %var.triple, align 8
  %call.res20 = call i1 @"ast::str_has_sub"(ptr %var.load19, ptr @str.11.struct)
  br i1 %call.res20, label %choice.then21, label %choice.else22

choice.exit18:                                    ; preds = %choice.exit23, %choice.then16
  %choice.res48 = phi ptr [ @str.8.struct, %choice.then16 ], [ %choice.res47, %choice.exit23 ]
  br label %choice.exit9

choice.then21:                                    ; preds = %choice.else17
  br label %choice.exit23

choice.else22:                                    ; preds = %choice.else17
  %var.load24 = load ptr, ptr %var.triple, align 8
  %call.res25 = call i1 @"ast::str_has_sub"(ptr %var.load24, ptr @str.12.struct)
  br i1 %call.res25, label %choice.then26, label %choice.else27

choice.exit23:                                    ; preds = %choice.exit28, %choice.then21
  %choice.res47 = phi ptr [ @str.11.struct, %choice.then21 ], [ %choice.res46, %choice.exit28 ]
  br label %choice.exit18

choice.then26:                                    ; preds = %choice.else22
  br label %choice.exit28

choice.else27:                                    ; preds = %choice.else22
  %var.load29 = load ptr, ptr %var.triple, align 8
  %call.res30 = call i1 @"ast::str_has_sub"(ptr %var.load29, ptr @str.13.struct)
  br i1 %call.res30, label %choice.then31, label %choice.else32

choice.exit28:                                    ; preds = %choice.exit33, %choice.then26
  %choice.res46 = phi ptr [ @str.12.struct, %choice.then26 ], [ %choice.res45, %choice.exit33 ]
  br label %choice.exit23

choice.then31:                                    ; preds = %choice.else27
  br label %choice.exit33

choice.else32:                                    ; preds = %choice.else27
  %var.load34 = load ptr, ptr %var.triple, align 8
  %call.res35 = call i1 @"ast::str_has_sub"(ptr %var.load34, ptr @str.14.struct)
  br i1 %call.res35, label %choice.then36, label %choice.else37

choice.exit33:                                    ; preds = %choice.exit38, %choice.then31
  %choice.res45 = phi ptr [ @str.13.struct, %choice.then31 ], [ %choice.res44, %choice.exit38 ]
  br label %choice.exit28

choice.then36:                                    ; preds = %choice.else32
  br label %choice.exit38

choice.else37:                                    ; preds = %choice.else32
  %var.load39 = load ptr, ptr %var.triple, align 8
  %call.res40 = call i1 @"ast::str_has_sub"(ptr %var.load39, ptr @str.15.struct)
  br i1 %call.res40, label %choice.then41, label %choice.else42

choice.exit38:                                    ; preds = %choice.exit43, %choice.then36
  %choice.res44 = phi ptr [ @str.14.struct, %choice.then36 ], [ %choice.res, %choice.exit43 ]
  br label %choice.exit33

choice.then41:                                    ; preds = %choice.else37
  br label %choice.exit43

choice.else42:                                    ; preds = %choice.else37
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res = phi ptr [ @str.15.struct, %choice.then41 ], [ @str.16.struct, %choice.else42 ]
  br label %choice.exit38
}

define { i64, ptr } @"ast::triple_first_seg_at"(ptr %0, i64 %1, i64 %2) #0 {
entry:
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  store i64 %2, ptr %var.n, align 8
  %var.load = load i64, ptr %var.i, align 8
  %var.load1 = load i64, ptr %var.n, align 8
  %cmptmp = icmp eq i64 %var.load, %var.load1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load2 = load ptr, ptr %var.s, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load3 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %var.load7 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load7, %s.read.len5
  br i1 %idx.oob, label %idx_oob, label %idx_ok

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res23 = phi ptr [ %var.load2, %choice.then ], [ %choice.res, %choice.exit11 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res23, align 8
  ret { i64, ptr } %ret.pack

idx_ok:                                           ; preds = %abort.dead, %choice.else
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %var.load7
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp8 = icmp eq i64 %s.byte.val, 45
  br i1 %cmptmp8, label %choice.then9, label %choice.else10

idx_oob:                                          ; preds = %choice.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then9:                                     ; preds = %idx_ok
  %var.load12 = load ptr, ptr %var.s, align 8
  %s.read.len13 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %s.read.len14 = load i64, ptr %s.read.len13, align 8
  %s.read.len15 = and i64 %s.read.len14, 281474976710655
  %s.read.data16 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 1
  %s.read.data17 = load ptr, ptr %s.read.data16, align 8
  %var.load18 = load i64, ptr %var.i, align 8
  %rel.start = add i64 %s.read.len15, 0
  %norm.start = select i1 false, i64 %rel.start, i64 0
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len15
  %final.start = select i1 %start.gt.len, i64 %s.read.len15, i64 %c.start.0
  %end.is_neg = icmp slt i64 %var.load18, 0
  %rel.end = add i64 %s.read.len15, %var.load18
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %var.load18
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len15
  %final.end = select i1 %end.gt.len, i64 %s.read.len15, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data17, i64 %final.start
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 0
  store i64 %view.len, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit11

choice.else10:                                    ; preds = %idx_ok
  %var.load19 = load ptr, ptr %var.s, align 8
  %var.load20 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load20, 1
  %var.load21 = load i64, ptr %var.n, align 8
  %call.res = call { i64, ptr } @"ast::triple_first_seg_at"(ptr %var.load19, i64 %addtmp, i64 %var.load21)
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %choice.then9
  %choice.res = phi ptr [ %str.view, %choice.then9 ], [ %ret.ub.alloc, %choice.else10 ]
  br label %choice.exit
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, ptr } @"ast::triple_arch"(ptr %0) #0 {
entry:
  %var.seg = alloca ptr, align 8
  %var.triple = alloca ptr, align 8
  store ptr %0, ptr %var.triple, align 8
  %var.load = load ptr, ptr %var.triple, align 8
  %var.load1 = load ptr, ptr %var.triple, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %str.tag = lshr i64 %str.len.query2, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %call.res = call { i64, ptr } @"ast::triple_first_seg_at"(ptr %var.load, i64 0, i64 %str.len.query3)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.seg, align 8
  %var.load4 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %str.tag7 = lshr i64 %eq.lhs.len5, 48
  %tag.immortal9 = icmp eq i64 %str.tag7, 0
  %active.gen10 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current11 = icmp eq i64 %str.tag7, %active.gen10
  %tag.fast.ok12 = or i1 %tag.immortal9, %tag.current11
  br i1 %tag.fast.ok12, label %str_ok8, label %tag.slow_check13

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

choice.exit:                                      ; preds = %choice.next179, %choice.case178, %choice.case85, %choice.case38, %choice.case
  %choice.res = phi ptr [ @str.18.struct, %choice.case ], [ @str.19.struct, %choice.case38 ], [ @str.25.struct, %choice.case85 ], [ @str.16.struct, %choice.case178 ], [ %var.load202, %choice.next179 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %str.eq.merge31
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge31
  %eq.lhs.len40 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len41 = load i64, ptr %eq.lhs.len40, align 8
  %eq.lhs.len42 = and i64 %eq.lhs.len41, 281474976710655
  %str.tag43 = lshr i64 %eq.lhs.len41, 48
  %tag.immortal45 = icmp eq i64 %str.tag43, 0
  %active.gen46 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current47 = icmp eq i64 %str.tag43, %active.gen46
  %tag.fast.ok48 = or i1 %tag.immortal45, %tag.current47
  br i1 %tag.fast.ok48, label %str_ok44, label %tag.slow_check49

str_ok8:                                          ; preds = %tag.slow_check13, %str_ok
  %eq.rhs.len = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len14 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len14
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check13:                                 ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag7)
  br label %str_ok8

str.eq.then:                                      ; preds = %str_ok8
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok8
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len16 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len17 = load i64, ptr %eq.lhs.len16, align 8
  %eq.lhs.len18 = and i64 %eq.lhs.len17, 281474976710655
  %str.tag19 = lshr i64 %eq.lhs.len17, 48
  %tag.immortal21 = icmp eq i64 %str.tag19, 0
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current23 = icmp eq i64 %str.tag19, %active.gen22
  %tag.fast.ok24 = or i1 %tag.immortal21, %tag.current23
  br i1 %tag.fast.ok24, label %str_ok20, label %tag.slow_check25

str_ok20:                                         ; preds = %tag.slow_check25, %str.eq.merge
  %eq.rhs.len26 = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len27 = and i64 %eq.rhs.len26, 281474976710655
  %eq.len28 = icmp eq i64 %eq.lhs.len18, %eq.rhs.len27
  br i1 %eq.len28, label %str.eq.then29, label %str.eq.else30

tag.slow_check25:                                 ; preds = %str.eq.merge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag19)
  br label %str_ok20

str.eq.then29:                                    ; preds = %str_ok20
  %eq.lhs.data32 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data33 = load ptr, ptr %eq.lhs.data32, align 8
  %eq.rhs.data34 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp35 = call i32 @memcmp(ptr %eq.lhs.data33, ptr %eq.rhs.data34, i64 %eq.lhs.len18)
  %eq.cmp.zero36 = icmp eq i32 %eq.memcmp35, 0
  br label %str.eq.merge31

str.eq.else30:                                    ; preds = %str_ok20
  br label %str.eq.merge31

str.eq.merge31:                                   ; preds = %str.eq.else30, %str.eq.then29
  %str.eq.result37 = phi i1 [ %eq.cmp.zero36, %str.eq.then29 ], [ false, %str.eq.else30 ]
  %case.or = or i1 %str.eq.result, %str.eq.result37
  br i1 %case.or, label %choice.case, label %choice.next

choice.case38:                                    ; preds = %str.eq.merge77
  br label %choice.exit

choice.next39:                                    ; preds = %str.eq.merge77
  %eq.lhs.len87 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len88 = load i64, ptr %eq.lhs.len87, align 8
  %eq.lhs.len89 = and i64 %eq.lhs.len88, 281474976710655
  %str.tag90 = lshr i64 %eq.lhs.len88, 48
  %tag.immortal92 = icmp eq i64 %str.tag90, 0
  %active.gen93 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current94 = icmp eq i64 %str.tag90, %active.gen93
  %tag.fast.ok95 = or i1 %tag.immortal92, %tag.current94
  br i1 %tag.fast.ok95, label %str_ok91, label %tag.slow_check96

str_ok44:                                         ; preds = %tag.slow_check49, %choice.next
  %eq.rhs.len50 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len51 = and i64 %eq.rhs.len50, 281474976710655
  %eq.len52 = icmp eq i64 %eq.lhs.len42, %eq.rhs.len51
  br i1 %eq.len52, label %str.eq.then53, label %str.eq.else54

tag.slow_check49:                                 ; preds = %choice.next
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag43)
  br label %str_ok44

str.eq.then53:                                    ; preds = %str_ok44
  %eq.lhs.data56 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data57 = load ptr, ptr %eq.lhs.data56, align 8
  %eq.rhs.data58 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp59 = call i32 @memcmp(ptr %eq.lhs.data57, ptr %eq.rhs.data58, i64 %eq.lhs.len42)
  %eq.cmp.zero60 = icmp eq i32 %eq.memcmp59, 0
  br label %str.eq.merge55

str.eq.else54:                                    ; preds = %str_ok44
  br label %str.eq.merge55

str.eq.merge55:                                   ; preds = %str.eq.else54, %str.eq.then53
  %str.eq.result61 = phi i1 [ %eq.cmp.zero60, %str.eq.then53 ], [ false, %str.eq.else54 ]
  %eq.lhs.len62 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len63 = load i64, ptr %eq.lhs.len62, align 8
  %eq.lhs.len64 = and i64 %eq.lhs.len63, 281474976710655
  %str.tag65 = lshr i64 %eq.lhs.len63, 48
  %tag.immortal67 = icmp eq i64 %str.tag65, 0
  %active.gen68 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current69 = icmp eq i64 %str.tag65, %active.gen68
  %tag.fast.ok70 = or i1 %tag.immortal67, %tag.current69
  br i1 %tag.fast.ok70, label %str_ok66, label %tag.slow_check71

str_ok66:                                         ; preds = %tag.slow_check71, %str.eq.merge55
  %eq.rhs.len72 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len73 = and i64 %eq.rhs.len72, 281474976710655
  %eq.len74 = icmp eq i64 %eq.lhs.len64, %eq.rhs.len73
  br i1 %eq.len74, label %str.eq.then75, label %str.eq.else76

tag.slow_check71:                                 ; preds = %str.eq.merge55
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag65)
  br label %str_ok66

str.eq.then75:                                    ; preds = %str_ok66
  %eq.lhs.data78 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data79 = load ptr, ptr %eq.lhs.data78, align 8
  %eq.rhs.data80 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp81 = call i32 @memcmp(ptr %eq.lhs.data79, ptr %eq.rhs.data80, i64 %eq.lhs.len64)
  %eq.cmp.zero82 = icmp eq i32 %eq.memcmp81, 0
  br label %str.eq.merge77

str.eq.else76:                                    ; preds = %str_ok66
  br label %str.eq.merge77

str.eq.merge77:                                   ; preds = %str.eq.else76, %str.eq.then75
  %str.eq.result83 = phi i1 [ %eq.cmp.zero82, %str.eq.then75 ], [ false, %str.eq.else76 ]
  %case.or84 = or i1 %str.eq.result61, %str.eq.result83
  br i1 %case.or84, label %choice.case38, label %choice.next39

choice.case85:                                    ; preds = %str.eq.merge170
  br label %choice.exit

choice.next86:                                    ; preds = %str.eq.merge170
  %eq.lhs.len180 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len181 = load i64, ptr %eq.lhs.len180, align 8
  %eq.lhs.len182 = and i64 %eq.lhs.len181, 281474976710655
  %str.tag183 = lshr i64 %eq.lhs.len181, 48
  %tag.immortal185 = icmp eq i64 %str.tag183, 0
  %active.gen186 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current187 = icmp eq i64 %str.tag183, %active.gen186
  %tag.fast.ok188 = or i1 %tag.immortal185, %tag.current187
  br i1 %tag.fast.ok188, label %str_ok184, label %tag.slow_check189

str_ok91:                                         ; preds = %tag.slow_check96, %choice.next39
  %eq.rhs.len97 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len98 = and i64 %eq.rhs.len97, 281474976710655
  %eq.len99 = icmp eq i64 %eq.lhs.len89, %eq.rhs.len98
  br i1 %eq.len99, label %str.eq.then100, label %str.eq.else101

tag.slow_check96:                                 ; preds = %choice.next39
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag90)
  br label %str_ok91

str.eq.then100:                                   ; preds = %str_ok91
  %eq.lhs.data103 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data104 = load ptr, ptr %eq.lhs.data103, align 8
  %eq.rhs.data105 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp106 = call i32 @memcmp(ptr %eq.lhs.data104, ptr %eq.rhs.data105, i64 %eq.lhs.len89)
  %eq.cmp.zero107 = icmp eq i32 %eq.memcmp106, 0
  br label %str.eq.merge102

str.eq.else101:                                   ; preds = %str_ok91
  br label %str.eq.merge102

str.eq.merge102:                                  ; preds = %str.eq.else101, %str.eq.then100
  %str.eq.result108 = phi i1 [ %eq.cmp.zero107, %str.eq.then100 ], [ false, %str.eq.else101 ]
  %eq.lhs.len109 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len110 = load i64, ptr %eq.lhs.len109, align 8
  %eq.lhs.len111 = and i64 %eq.lhs.len110, 281474976710655
  %str.tag112 = lshr i64 %eq.lhs.len110, 48
  %tag.immortal114 = icmp eq i64 %str.tag112, 0
  %active.gen115 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current116 = icmp eq i64 %str.tag112, %active.gen115
  %tag.fast.ok117 = or i1 %tag.immortal114, %tag.current116
  br i1 %tag.fast.ok117, label %str_ok113, label %tag.slow_check118

str_ok113:                                        ; preds = %tag.slow_check118, %str.eq.merge102
  %eq.rhs.len119 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len120 = and i64 %eq.rhs.len119, 281474976710655
  %eq.len121 = icmp eq i64 %eq.lhs.len111, %eq.rhs.len120
  br i1 %eq.len121, label %str.eq.then122, label %str.eq.else123

tag.slow_check118:                                ; preds = %str.eq.merge102
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag112)
  br label %str_ok113

str.eq.then122:                                   ; preds = %str_ok113
  %eq.lhs.data125 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data126 = load ptr, ptr %eq.lhs.data125, align 8
  %eq.rhs.data127 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp128 = call i32 @memcmp(ptr %eq.lhs.data126, ptr %eq.rhs.data127, i64 %eq.lhs.len111)
  %eq.cmp.zero129 = icmp eq i32 %eq.memcmp128, 0
  br label %str.eq.merge124

str.eq.else123:                                   ; preds = %str_ok113
  br label %str.eq.merge124

str.eq.merge124:                                  ; preds = %str.eq.else123, %str.eq.then122
  %str.eq.result130 = phi i1 [ %eq.cmp.zero129, %str.eq.then122 ], [ false, %str.eq.else123 ]
  %case.or131 = or i1 %str.eq.result108, %str.eq.result130
  %eq.lhs.len132 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len133 = load i64, ptr %eq.lhs.len132, align 8
  %eq.lhs.len134 = and i64 %eq.lhs.len133, 281474976710655
  %str.tag135 = lshr i64 %eq.lhs.len133, 48
  %tag.immortal137 = icmp eq i64 %str.tag135, 0
  %active.gen138 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current139 = icmp eq i64 %str.tag135, %active.gen138
  %tag.fast.ok140 = or i1 %tag.immortal137, %tag.current139
  br i1 %tag.fast.ok140, label %str_ok136, label %tag.slow_check141

str_ok136:                                        ; preds = %tag.slow_check141, %str.eq.merge124
  %eq.rhs.len142 = load i64, ptr @str.23.struct, align 8
  %eq.rhs.len143 = and i64 %eq.rhs.len142, 281474976710655
  %eq.len144 = icmp eq i64 %eq.lhs.len134, %eq.rhs.len143
  br i1 %eq.len144, label %str.eq.then145, label %str.eq.else146

tag.slow_check141:                                ; preds = %str.eq.merge124
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag135)
  br label %str_ok136

str.eq.then145:                                   ; preds = %str_ok136
  %eq.lhs.data148 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data149 = load ptr, ptr %eq.lhs.data148, align 8
  %eq.rhs.data150 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %eq.memcmp151 = call i32 @memcmp(ptr %eq.lhs.data149, ptr %eq.rhs.data150, i64 %eq.lhs.len134)
  %eq.cmp.zero152 = icmp eq i32 %eq.memcmp151, 0
  br label %str.eq.merge147

str.eq.else146:                                   ; preds = %str_ok136
  br label %str.eq.merge147

str.eq.merge147:                                  ; preds = %str.eq.else146, %str.eq.then145
  %str.eq.result153 = phi i1 [ %eq.cmp.zero152, %str.eq.then145 ], [ false, %str.eq.else146 ]
  %case.or154 = or i1 %case.or131, %str.eq.result153
  %eq.lhs.len155 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len156 = load i64, ptr %eq.lhs.len155, align 8
  %eq.lhs.len157 = and i64 %eq.lhs.len156, 281474976710655
  %str.tag158 = lshr i64 %eq.lhs.len156, 48
  %tag.immortal160 = icmp eq i64 %str.tag158, 0
  %active.gen161 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current162 = icmp eq i64 %str.tag158, %active.gen161
  %tag.fast.ok163 = or i1 %tag.immortal160, %tag.current162
  br i1 %tag.fast.ok163, label %str_ok159, label %tag.slow_check164

str_ok159:                                        ; preds = %tag.slow_check164, %str.eq.merge147
  %eq.rhs.len165 = load i64, ptr @str.24.struct, align 8
  %eq.rhs.len166 = and i64 %eq.rhs.len165, 281474976710655
  %eq.len167 = icmp eq i64 %eq.lhs.len157, %eq.rhs.len166
  br i1 %eq.len167, label %str.eq.then168, label %str.eq.else169

tag.slow_check164:                                ; preds = %str.eq.merge147
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag158)
  br label %str_ok159

str.eq.then168:                                   ; preds = %str_ok159
  %eq.lhs.data171 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data172 = load ptr, ptr %eq.lhs.data171, align 8
  %eq.rhs.data173 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
  %eq.memcmp174 = call i32 @memcmp(ptr %eq.lhs.data172, ptr %eq.rhs.data173, i64 %eq.lhs.len157)
  %eq.cmp.zero175 = icmp eq i32 %eq.memcmp174, 0
  br label %str.eq.merge170

str.eq.else169:                                   ; preds = %str_ok159
  br label %str.eq.merge170

str.eq.merge170:                                  ; preds = %str.eq.else169, %str.eq.then168
  %str.eq.result176 = phi i1 [ %eq.cmp.zero175, %str.eq.then168 ], [ false, %str.eq.else169 ]
  %case.or177 = or i1 %case.or154, %str.eq.result176
  br i1 %case.or177, label %choice.case85, label %choice.next86

choice.case178:                                   ; preds = %str.eq.merge195
  br label %choice.exit

choice.next179:                                   ; preds = %str.eq.merge195
  %var.load202 = load ptr, ptr %var.seg, align 8
  br label %choice.exit

str_ok184:                                        ; preds = %tag.slow_check189, %choice.next86
  %eq.rhs.len190 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len191 = and i64 %eq.rhs.len190, 281474976710655
  %eq.len192 = icmp eq i64 %eq.lhs.len182, %eq.rhs.len191
  br i1 %eq.len192, label %str.eq.then193, label %str.eq.else194

tag.slow_check189:                                ; preds = %choice.next86
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag183)
  br label %str_ok184

str.eq.then193:                                   ; preds = %str_ok184
  %eq.lhs.data196 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data197 = load ptr, ptr %eq.lhs.data196, align 8
  %eq.rhs.data198 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp199 = call i32 @memcmp(ptr %eq.lhs.data197, ptr %eq.rhs.data198, i64 %eq.lhs.len182)
  %eq.cmp.zero200 = icmp eq i32 %eq.memcmp199, 0
  br label %str.eq.merge195

str.eq.else194:                                   ; preds = %str_ok184
  br label %str.eq.merge195

str.eq.merge195:                                  ; preds = %str.eq.else194, %str.eq.then193
  %str.eq.result201 = phi i1 [ %eq.cmp.zero200, %str.eq.then193 ], [ false, %str.eq.else194 ]
  br i1 %str.eq.result201, label %choice.case178, label %choice.next179
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noinline "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
