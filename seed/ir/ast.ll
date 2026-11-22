; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_arena_tls = external thread_local global ptr
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

define internal void @__dva_global_init_ast() #2 {
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

define ptr @"ast::mk_rfield_type"(ptr %0, ptr %1, ptr %2) #2 {
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

define ptr @"ast::mk_rfield_type_default"(ptr %0, ptr %1, ptr %2, ptr %3) #2 {
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

define i1 @"ast::has_cell_name_at"(ptr %0, ptr %1, i64 %2, i64 %3) #2 {
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

choice.exit:                                      ; preds = %choice.exit38, %choice.then
  %choice.res56 = phi i1 [ false, %choice.then ], [ %choice.res55, %choice.exit38 ]
  ret i1 %choice.res56

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
  store i64 257, ptr %err.line.gep, align 8
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
  store i64 257, ptr %err.line.gep14, align 8
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
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %eq.rhs.len32 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len33 = and i64 %eq.rhs.len32, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len31, %eq.rhs.len33
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str.eq.then:                                      ; preds = %choice.exit23
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data34 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %eq.rhs.data35 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data34, ptr %eq.rhs.data35, i64 %eq.lhs.len31)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.exit23
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then36, label %choice.else37

choice.then36:                                    ; preds = %str.eq.merge
  br label %choice.exit38

choice.else37:                                    ; preds = %str.eq.merge
  %var.load39 = load ptr, ptr %var.arr, align 8
  %a.load40 = load ptr, ptr %var.arr, align 8
  %a.null41 = icmp eq ptr %a.load40, null
  br i1 %a.null41, label %a.create42, label %a.after43

choice.exit38:                                    ; preds = %a.after43, %choice.then36
  %choice.res55 = phi i1 [ true, %choice.then36 ], [ %call.res, %a.after43 ]
  br label %choice.exit

a.create42:                                       ; preds = %choice.else37
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 24)
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 128)
  %a.len.gep48 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 0
  store i64 0, ptr %a.len.gep48, align 8
  %a.data.gep49 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 1
  store ptr %a.buf47, ptr %a.data.gep49, align 8
  %a.cap.gep50 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create45, i32 0, i32 2
  store i64 16, ptr %a.cap.gep50, align 8
  store ptr %a.create45, ptr %var.arr, align 8
  br label %a.after43

a.after43:                                        ; preds = %a.create42, %choice.else37
  %a.load251 = load ptr, ptr %var.arr, align 8
  %var.load52 = load ptr, ptr %var.s, align 8
  %var.load53 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load53, 1
  %var.load54 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"ast::has_cell_name_at"(ptr %a.load251, ptr %var.load52, i64 %addtmp, i64 %var.load54)
  br label %choice.exit38
}

declare i32 @memcmp(ptr, ptr, i64) #2

define i1 @"ast::has_cell_name"(ptr %0, ptr %1) #2 {
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

define void @"ast::cell_var_add"(ptr %0) #2 {
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

choice.exit:                                      ; preds = %a.store, %a.after
  ret void

a.create13:                                       ; preds = %choice.then
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

a.after14:                                        ; preds = %a.create13, %choice.then
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

define internal void @dva_array_grow(ptr %0) #2 {
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
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #6

define i1 @"ast::is_cell_var"(ptr %0) #2 {
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

define void @"ast::cell_var_reset"() #2 {
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

define i1 @"ast::str_has_sub_at"(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4) #2 {
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
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %s.read.len4 = load i64, ptr %s.read.len, align 8
  %s.read.len5 = and i64 %s.read.len4, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 1
  %s.read.data6 = load ptr, ptr %s.read.data, align 8
  %var.load7 = load i64, ptr %var.i, align 8
  %var.load8 = load i64, ptr %var.i, align 8
  %var.load9 = load i64, ptr %var.m, align 8
  %addtmp10 = add i64 %var.load8, %var.load9
  %start.is_neg = icmp slt i64 %var.load7, 0
  %rel.start = add i64 %s.read.len5, %var.load7
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %var.load7
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len5
  %final.start = select i1 %start.gt.len, i64 %s.read.len5, i64 %c.start.0
  %end.is_neg = icmp slt i64 %addtmp10, 0
  %rel.end = add i64 %s.read.len5, %addtmp10
  %norm.end = select i1 %end.is_neg, i64 %rel.end, i64 %addtmp10
  %end.lt.0 = icmp slt i64 %norm.end, 0
  %c.end.0 = select i1 %end.lt.0, i64 0, i64 %norm.end
  %end.gt.len = icmp sgt i64 %c.end.0, %s.read.len5
  %final.end = select i1 %end.gt.len, i64 %s.read.len5, i64 %c.end.0
  %view.empty = icmp sle i64 %final.end, %final.start
  %view.len.sub = sub i64 %final.end, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data6, i64 %final.start
  %var.load11 = load ptr, ptr %var.sub, align 8
  %cmp.str = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 0
  %cmp.str12 = load i64, ptr %cmp.str, align 8
  %cmp.str13 = and i64 %cmp.str12, 281474976710655
  %cmp.str14 = getelementptr inbounds { i64, ptr }, ptr %var.load11, i32 0, i32 1
  %cmp.str15 = load ptr, ptr %cmp.str14, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str13
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.exit:                                      ; preds = %choice.exit18, %choice.then
  %choice.res25 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit18 ]
  ret i1 %choice.res25

str.eq.then:                                      ; preds = %choice.else
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str15, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.else
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then16, label %choice.else17

choice.then16:                                    ; preds = %str.eq.merge
  br label %choice.exit18

choice.else17:                                    ; preds = %str.eq.merge
  %var.load19 = load ptr, ptr %var.s, align 8
  %var.load20 = load ptr, ptr %var.sub, align 8
  %var.load21 = load i64, ptr %var.i, align 8
  %addtmp22 = add i64 %var.load21, 1
  %var.load23 = load i64, ptr %var.n, align 8
  %var.load24 = load i64, ptr %var.m, align 8
  %call.res = call i1 @"ast::str_has_sub_at"(ptr %var.load19, ptr %var.load20, i64 %addtmp22, i64 %var.load23, i64 %var.load24)
  br label %choice.exit18

choice.exit18:                                    ; preds = %choice.else17, %choice.then16
  %choice.res = phi i1 [ true, %choice.then16 ], [ %call.res, %choice.else17 ]
  br label %choice.exit
}

define i1 @"ast::str_has_sub"(ptr %0, ptr %1) #2 {
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
  store i64 %str.len.query2, ptr %var.m, align 8
  %var.load3 = load i64, ptr %var.m, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load4 = load ptr, ptr %var.s, align 8
  %var.load5 = load ptr, ptr %var.sub, align 8
  %var.load6 = load ptr, ptr %var.s, align 8
  %str.len.query7 = getelementptr inbounds { i64, ptr }, ptr %var.load6, i32 0, i32 0
  %str.len.query8 = load i64, ptr %str.len.query7, align 8
  %str.len.query9 = and i64 %str.len.query8, 281474976710655
  %var.load10 = load i64, ptr %var.m, align 8
  %call.res = call i1 @"ast::str_has_sub_at"(ptr %var.load4, ptr %var.load5, i64 0, i64 %str.len.query9, i64 %var.load10)
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %call.res, %choice.else ]
  ret i1 %choice.res
}

define { i64, ptr } @"ast::triple_os"(ptr %0) #2 {
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

define { i64, ptr } @"ast::triple_first_seg_at"(ptr %0, i64 %1, i64 %2) #2 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %str.view = alloca { i64, ptr }, align 8
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
  %choice.res22 = phi ptr [ %var.load2, %choice.then ], [ %choice.res, %choice.exit11 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res22, align 8
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
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %choice.then9
  %choice.res = phi ptr [ %str.view, %choice.then9 ], [ %ret.ub.salloc, %choice.else10 ]
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

define { i64, ptr } @"ast::triple_arch"(ptr %0) #2 {
entry:
  %var.seg = alloca ptr, align 8
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.triple = alloca ptr, align 8
  store ptr %0, ptr %var.triple, align 8
  %var.load = load ptr, ptr %var.triple, align 8
  %var.load1 = load ptr, ptr %var.triple, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %str.len.query2 = load i64, ptr %str.len.query, align 8
  %str.len.query3 = and i64 %str.len.query2, 281474976710655
  %call.res = call { i64, ptr } @"ast::triple_first_seg_at"(ptr %var.load, i64 0, i64 %str.len.query3)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  store ptr %ret.ub.salloc, ptr %var.seg, align 8
  %var.load4 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len5 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len6 = and i64 %eq.lhs.len5, 281474976710655
  %eq.rhs.len = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len7 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len6, %eq.rhs.len7
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.exit:                                      ; preds = %choice.next123, %choice.case122, %choice.case57, %choice.case24, %choice.case
  %choice.res = phi ptr [ @str.18.struct, %choice.case ], [ @str.19.struct, %choice.case24 ], [ @str.25.struct, %choice.case57 ], [ @str.16.struct, %choice.case122 ], [ %var.load139, %choice.next123 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %str.eq.merge17
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge17
  %eq.lhs.len26 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len27 = load i64, ptr %eq.lhs.len26, align 8
  %eq.lhs.len28 = and i64 %eq.lhs.len27, 281474976710655
  %eq.rhs.len29 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len30 = and i64 %eq.rhs.len29, 281474976710655
  %eq.len31 = icmp eq i64 %eq.lhs.len28, %eq.rhs.len30
  br i1 %eq.len31, label %str.eq.then32, label %str.eq.else33

str.eq.then:                                      ; preds = %entry
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data8 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data8, ptr %eq.rhs.data, i64 %eq.lhs.len6)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %entry
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len9 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len10 = load i64, ptr %eq.lhs.len9, align 8
  %eq.lhs.len11 = and i64 %eq.lhs.len10, 281474976710655
  %eq.rhs.len12 = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len13 = and i64 %eq.rhs.len12, 281474976710655
  %eq.len14 = icmp eq i64 %eq.lhs.len11, %eq.rhs.len13
  br i1 %eq.len14, label %str.eq.then15, label %str.eq.else16

str.eq.then15:                                    ; preds = %str.eq.merge
  %eq.lhs.data18 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data19 = load ptr, ptr %eq.lhs.data18, align 8
  %eq.rhs.data20 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp21 = call i32 @memcmp(ptr %eq.lhs.data19, ptr %eq.rhs.data20, i64 %eq.lhs.len11)
  %eq.cmp.zero22 = icmp eq i32 %eq.memcmp21, 0
  br label %str.eq.merge17

str.eq.else16:                                    ; preds = %str.eq.merge
  br label %str.eq.merge17

str.eq.merge17:                                   ; preds = %str.eq.else16, %str.eq.then15
  %str.eq.result23 = phi i1 [ %eq.cmp.zero22, %str.eq.then15 ], [ false, %str.eq.else16 ]
  %case.or = or i1 %str.eq.result, %str.eq.result23
  br i1 %case.or, label %choice.case, label %choice.next

choice.case24:                                    ; preds = %str.eq.merge49
  br label %choice.exit

choice.next25:                                    ; preds = %str.eq.merge49
  %eq.lhs.len59 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len60 = load i64, ptr %eq.lhs.len59, align 8
  %eq.lhs.len61 = and i64 %eq.lhs.len60, 281474976710655
  %eq.rhs.len62 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len63 = and i64 %eq.rhs.len62, 281474976710655
  %eq.len64 = icmp eq i64 %eq.lhs.len61, %eq.rhs.len63
  br i1 %eq.len64, label %str.eq.then65, label %str.eq.else66

str.eq.then32:                                    ; preds = %choice.next
  %eq.lhs.data35 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data36 = load ptr, ptr %eq.lhs.data35, align 8
  %eq.rhs.data37 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp38 = call i32 @memcmp(ptr %eq.lhs.data36, ptr %eq.rhs.data37, i64 %eq.lhs.len28)
  %eq.cmp.zero39 = icmp eq i32 %eq.memcmp38, 0
  br label %str.eq.merge34

str.eq.else33:                                    ; preds = %choice.next
  br label %str.eq.merge34

str.eq.merge34:                                   ; preds = %str.eq.else33, %str.eq.then32
  %str.eq.result40 = phi i1 [ %eq.cmp.zero39, %str.eq.then32 ], [ false, %str.eq.else33 ]
  %eq.lhs.len41 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len42 = load i64, ptr %eq.lhs.len41, align 8
  %eq.lhs.len43 = and i64 %eq.lhs.len42, 281474976710655
  %eq.rhs.len44 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len45 = and i64 %eq.rhs.len44, 281474976710655
  %eq.len46 = icmp eq i64 %eq.lhs.len43, %eq.rhs.len45
  br i1 %eq.len46, label %str.eq.then47, label %str.eq.else48

str.eq.then47:                                    ; preds = %str.eq.merge34
  %eq.lhs.data50 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data51 = load ptr, ptr %eq.lhs.data50, align 8
  %eq.rhs.data52 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp53 = call i32 @memcmp(ptr %eq.lhs.data51, ptr %eq.rhs.data52, i64 %eq.lhs.len43)
  %eq.cmp.zero54 = icmp eq i32 %eq.memcmp53, 0
  br label %str.eq.merge49

str.eq.else48:                                    ; preds = %str.eq.merge34
  br label %str.eq.merge49

str.eq.merge49:                                   ; preds = %str.eq.else48, %str.eq.then47
  %str.eq.result55 = phi i1 [ %eq.cmp.zero54, %str.eq.then47 ], [ false, %str.eq.else48 ]
  %case.or56 = or i1 %str.eq.result40, %str.eq.result55
  br i1 %case.or56, label %choice.case24, label %choice.next25

choice.case57:                                    ; preds = %str.eq.merge114
  br label %choice.exit

choice.next58:                                    ; preds = %str.eq.merge114
  %eq.lhs.len124 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len125 = load i64, ptr %eq.lhs.len124, align 8
  %eq.lhs.len126 = and i64 %eq.lhs.len125, 281474976710655
  %eq.rhs.len127 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len128 = and i64 %eq.rhs.len127, 281474976710655
  %eq.len129 = icmp eq i64 %eq.lhs.len126, %eq.rhs.len128
  br i1 %eq.len129, label %str.eq.then130, label %str.eq.else131

str.eq.then65:                                    ; preds = %choice.next25
  %eq.lhs.data68 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data69 = load ptr, ptr %eq.lhs.data68, align 8
  %eq.rhs.data70 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp71 = call i32 @memcmp(ptr %eq.lhs.data69, ptr %eq.rhs.data70, i64 %eq.lhs.len61)
  %eq.cmp.zero72 = icmp eq i32 %eq.memcmp71, 0
  br label %str.eq.merge67

str.eq.else66:                                    ; preds = %choice.next25
  br label %str.eq.merge67

str.eq.merge67:                                   ; preds = %str.eq.else66, %str.eq.then65
  %str.eq.result73 = phi i1 [ %eq.cmp.zero72, %str.eq.then65 ], [ false, %str.eq.else66 ]
  %eq.lhs.len74 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len75 = load i64, ptr %eq.lhs.len74, align 8
  %eq.lhs.len76 = and i64 %eq.lhs.len75, 281474976710655
  %eq.rhs.len77 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len78 = and i64 %eq.rhs.len77, 281474976710655
  %eq.len79 = icmp eq i64 %eq.lhs.len76, %eq.rhs.len78
  br i1 %eq.len79, label %str.eq.then80, label %str.eq.else81

str.eq.then80:                                    ; preds = %str.eq.merge67
  %eq.lhs.data83 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data84 = load ptr, ptr %eq.lhs.data83, align 8
  %eq.rhs.data85 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp86 = call i32 @memcmp(ptr %eq.lhs.data84, ptr %eq.rhs.data85, i64 %eq.lhs.len76)
  %eq.cmp.zero87 = icmp eq i32 %eq.memcmp86, 0
  br label %str.eq.merge82

str.eq.else81:                                    ; preds = %str.eq.merge67
  br label %str.eq.merge82

str.eq.merge82:                                   ; preds = %str.eq.else81, %str.eq.then80
  %str.eq.result88 = phi i1 [ %eq.cmp.zero87, %str.eq.then80 ], [ false, %str.eq.else81 ]
  %case.or89 = or i1 %str.eq.result73, %str.eq.result88
  %eq.lhs.len90 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len91 = load i64, ptr %eq.lhs.len90, align 8
  %eq.lhs.len92 = and i64 %eq.lhs.len91, 281474976710655
  %eq.rhs.len93 = load i64, ptr @str.23.struct, align 8
  %eq.rhs.len94 = and i64 %eq.rhs.len93, 281474976710655
  %eq.len95 = icmp eq i64 %eq.lhs.len92, %eq.rhs.len94
  br i1 %eq.len95, label %str.eq.then96, label %str.eq.else97

str.eq.then96:                                    ; preds = %str.eq.merge82
  %eq.lhs.data99 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data100 = load ptr, ptr %eq.lhs.data99, align 8
  %eq.rhs.data101 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %eq.memcmp102 = call i32 @memcmp(ptr %eq.lhs.data100, ptr %eq.rhs.data101, i64 %eq.lhs.len92)
  %eq.cmp.zero103 = icmp eq i32 %eq.memcmp102, 0
  br label %str.eq.merge98

str.eq.else97:                                    ; preds = %str.eq.merge82
  br label %str.eq.merge98

str.eq.merge98:                                   ; preds = %str.eq.else97, %str.eq.then96
  %str.eq.result104 = phi i1 [ %eq.cmp.zero103, %str.eq.then96 ], [ false, %str.eq.else97 ]
  %case.or105 = or i1 %case.or89, %str.eq.result104
  %eq.lhs.len106 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 0
  %eq.lhs.len107 = load i64, ptr %eq.lhs.len106, align 8
  %eq.lhs.len108 = and i64 %eq.lhs.len107, 281474976710655
  %eq.rhs.len109 = load i64, ptr @str.24.struct, align 8
  %eq.rhs.len110 = and i64 %eq.rhs.len109, 281474976710655
  %eq.len111 = icmp eq i64 %eq.lhs.len108, %eq.rhs.len110
  br i1 %eq.len111, label %str.eq.then112, label %str.eq.else113

str.eq.then112:                                   ; preds = %str.eq.merge98
  %eq.lhs.data115 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data116 = load ptr, ptr %eq.lhs.data115, align 8
  %eq.rhs.data117 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
  %eq.memcmp118 = call i32 @memcmp(ptr %eq.lhs.data116, ptr %eq.rhs.data117, i64 %eq.lhs.len108)
  %eq.cmp.zero119 = icmp eq i32 %eq.memcmp118, 0
  br label %str.eq.merge114

str.eq.else113:                                   ; preds = %str.eq.merge98
  br label %str.eq.merge114

str.eq.merge114:                                  ; preds = %str.eq.else113, %str.eq.then112
  %str.eq.result120 = phi i1 [ %eq.cmp.zero119, %str.eq.then112 ], [ false, %str.eq.else113 ]
  %case.or121 = or i1 %case.or105, %str.eq.result120
  br i1 %case.or121, label %choice.case57, label %choice.next58

choice.case122:                                   ; preds = %str.eq.merge132
  br label %choice.exit

choice.next123:                                   ; preds = %str.eq.merge132
  %var.load139 = load ptr, ptr %var.seg, align 8
  br label %choice.exit

str.eq.then130:                                   ; preds = %choice.next58
  %eq.lhs.data133 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %eq.lhs.data134 = load ptr, ptr %eq.lhs.data133, align 8
  %eq.rhs.data135 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp136 = call i32 @memcmp(ptr %eq.lhs.data134, ptr %eq.rhs.data135, i64 %eq.lhs.len126)
  %eq.cmp.zero137 = icmp eq i32 %eq.memcmp136, 0
  br label %str.eq.merge132

str.eq.else131:                                   ; preds = %choice.next58
  br label %str.eq.merge132

str.eq.merge132:                                  ; preds = %str.eq.else131, %str.eq.then130
  %str.eq.result138 = phi i1 [ %eq.cmp.zero137, %str.eq.then130 ], [ false, %str.eq.else131 ]
  br i1 %str.eq.result138, label %choice.case122, label %choice.next123
}

attributes #0 = { alwaysinline "nounwind" }
attributes #1 = { noinline "nounwind" }
attributes #2 = { "nounwind" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { cold noreturn "nounwind" }
