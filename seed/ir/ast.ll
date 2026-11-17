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

define internal void @__dva_global_init_ast() #0 {
entry:
  store ptr @clo.const, ptr @"var.ast::mk_rfield_type", align 8
  store ptr @clo.const.1, ptr @"var.ast::mk_rfield_type_default", align 8
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
  %arena.cur = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur3 = call ptr @dva_arena_current()
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i64 0, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep, align 8
  %arena.cur4 = call ptr @dva_arena_current()
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
  %arena.cur = call ptr @dva_arena_current()
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

choice.exit:                                      ; preds = %choice.exit50, %choice.then
  %choice.res68 = phi i1 [ false, %choice.then ], [ %choice.res67, %choice.exit50 ]
  ret i1 %choice.res68

a.create:                                         ; preds = %choice.else
  %arena.cur = call ptr @dva_arena_current()
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur4 = call ptr @dva_arena_current()
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
  %arena.cur8 = call ptr @dva_arena_current()
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
  %arena.cur9 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.exit23
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 0
  %eq.rhs.len33 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len34 = and i64 %eq.rhs.len33, 281474976710655
  %str.tag35 = lshr i64 %eq.rhs.len33, 48
  %tag.immortal37 = icmp eq i64 %str.tag35, 0
  br i1 %tag.immortal37, label %str_ok36, label %tag.gen_check38

tag.gen_check:                                    ; preds = %choice.exit23
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok36:                                         ; preds = %abort.dead45, %tag.slow_check39, %tag.gen_check38, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len31, %eq.rhs.len34
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check38:                                  ; preds = %str_ok
  %active.gen41 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok42 = icmp eq i64 %str.tag35, %active.gen41
  br i1 %tag.fast.ok42, label %str_ok36, label %tag.slow_check39

tag.slow_check39:                                 ; preds = %tag.gen_check38
  %arena.cur43 = call ptr @dva_arena_current()
  %tag.valid44 = call i1 @dva_arena_validate_tag(ptr %arena.cur43, i64 %str.tag35)
  br i1 %tag.valid44, label %str_ok36, label %tag.stale40

tag.stale40:                                      ; preds = %tag.slow_check39
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead45:                                     ; No predecessors!
  br label %str_ok36

str.eq.then:                                      ; preds = %str_ok36
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load28, i32 0, i32 1
  %eq.lhs.data46 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load29, i32 0, i32 1
  %eq.rhs.data47 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data46, ptr %eq.rhs.data47, i64 %eq.lhs.len31)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok36
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then48, label %choice.else49

choice.then48:                                    ; preds = %str.eq.merge
  br label %choice.exit50

choice.else49:                                    ; preds = %str.eq.merge
  %var.load51 = load ptr, ptr %var.arr, align 8
  %a.load52 = load ptr, ptr %var.arr, align 8
  %a.null53 = icmp eq ptr %a.load52, null
  br i1 %a.null53, label %a.create54, label %a.after55

choice.exit50:                                    ; preds = %a.after55, %choice.then48
  %choice.res67 = phi i1 [ true, %choice.then48 ], [ %call.res, %a.after55 ]
  br label %choice.exit

a.create54:                                       ; preds = %choice.else49
  %arena.cur56 = call ptr @dva_arena_current()
  %a.create57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 24)
  %arena.cur58 = call ptr @dva_arena_current()
  %a.buf59 = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 128)
  %a.len.gep60 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 0
  store i64 0, ptr %a.len.gep60, align 8
  %a.data.gep61 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 1
  store ptr %a.buf59, ptr %a.data.gep61, align 8
  %a.cap.gep62 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create57, i32 0, i32 2
  store i64 16, ptr %a.cap.gep62, align 8
  store ptr %a.create57, ptr %var.arr, align 8
  br label %a.after55

a.after55:                                        ; preds = %a.create54, %choice.else49
  %a.load263 = load ptr, ptr %var.arr, align 8
  %var.load64 = load ptr, ptr %var.s, align 8
  %var.load65 = load i64, ptr %var.i, align 8
  %addtmp = add i64 %var.load65, 1
  %var.load66 = load i64, ptr %var.n, align 8
  %call.res = call i1 @"ast::has_cell_name_at"(ptr %a.load263, ptr %var.load64, i64 %addtmp, i64 %var.load66)
  br label %choice.exit50
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #3

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
  %arena.cur9 = call ptr @dva_arena_current()
  %a.create10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 24)
  %arena.cur11 = call ptr @dva_arena_current()
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %a.store, %a.after
  ret void

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.then
  %copy.len8 = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %copy.len9 = load ptr, ptr %copy.len8, align 8
  %copy.alen = add i64 %copy.len6, 1
  %arena.cur10 = call ptr @dva_arena_current()
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 %copy.alen)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 %copy.len9, i64 %copy.len6, i1 false)
  %copy.nul = getelementptr i8, ptr %copy.buf, i64 %copy.len6
  store i8 0, ptr %copy.nul, align 1
  %arena.cur11 = call ptr @dva_arena_current()
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 16)
  %str.copy.len.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 0
  store i64 %copy.len6, ptr %str.copy.len.gep, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %a.load12 = load ptr, ptr @"var.ast::cell_var_names", align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

tag.gen_check:                                    ; preds = %choice.then
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur7 = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur7, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

a.create14:                                       ; preds = %str_ok
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
  store ptr %a.create17, ptr @"var.ast::cell_var_names", align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %str_ok
  %a.load223 = load ptr, ptr @"var.ast::cell_var_names", align 8
  br label %a.check

a.check:                                          ; preds = %a.after15
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  %a.len24 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 2
  %a.cap25 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len24, %a.cap25
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load223)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 1
  %a.cur.data26 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  %a.cur.len27 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data26, i64 %a.cur.len27
  %slot.p2i = ptrtoint ptr %copy.str to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len27, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %choice.exit
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

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

define i1 @"ast::is_cell_var"(ptr %0) #0 {
entry:
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  %var.load = load ptr, ptr @"var.ast::cell_var_names", align 8
  %a.load = load ptr, ptr @"var.ast::cell_var_names", align 8
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

choice.exit:                                      ; preds = %choice.exit31, %choice.then
  %choice.res38 = phi i1 [ false, %choice.then ], [ %choice.res, %choice.exit31 ]
  ret i1 %choice.res38

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %choice.else
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
  br i1 %tag.immortal18, label %str_ok17, label %tag.gen_check19

tag.gen_check:                                    ; preds = %choice.else
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

str_ok17:                                         ; preds = %abort.dead26, %tag.slow_check20, %tag.gen_check19, %str_ok
  %cmp.str27 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %cmp.str28 = load ptr, ptr %cmp.str27, align 8
  %eq.len = icmp eq i64 %view.len, %cmp.str15
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check19:                                  ; preds = %str_ok
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok23 = icmp eq i64 %str.tag16, %active.gen22
  br i1 %tag.fast.ok23, label %str_ok17, label %tag.slow_check20

tag.slow_check20:                                 ; preds = %tag.gen_check19
  %arena.cur24 = call ptr @dva_arena_current()
  %tag.valid25 = call i1 @dva_arena_validate_tag(ptr %arena.cur24, i64 %str.tag16)
  br i1 %tag.valid25, label %str_ok17, label %tag.stale21

tag.stale21:                                      ; preds = %tag.slow_check20
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead26:                                     ; No predecessors!
  br label %str_ok17

str.eq.then:                                      ; preds = %str_ok17
  %eq.memcmp = call i32 @memcmp(ptr %view.data, ptr %cmp.str28, i64 %view.len)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok17
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then29, label %choice.else30

choice.then29:                                    ; preds = %str.eq.merge
  br label %choice.exit31

choice.else30:                                    ; preds = %str.eq.merge
  %var.load32 = load ptr, ptr %var.s, align 8
  %var.load33 = load ptr, ptr %var.sub, align 8
  %var.load34 = load i64, ptr %var.i, align 8
  %addtmp35 = add i64 %var.load34, 1
  %var.load36 = load i64, ptr %var.n, align 8
  %var.load37 = load i64, ptr %var.m, align 8
  %call.res = call i1 @"ast::str_has_sub_at"(ptr %var.load32, ptr %var.load33, i64 %addtmp35, i64 %var.load36, i64 %var.load37)
  br label %choice.exit31

choice.exit31:                                    ; preds = %choice.else30, %choice.then29
  %choice.res = phi i1 [ true, %choice.then29 ], [ %call.res, %choice.else30 ]
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  store i64 %str.len.query2, ptr %var.m, align 8
  %var.load3 = load i64, ptr %var.m, align 8
  %cmptmp = icmp eq i64 %var.load3, 0
  br i1 %cmptmp, label %choice.then, label %choice.else

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
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
  br i1 %tag.immortal12, label %str_ok11, label %tag.gen_check13

choice.exit:                                      ; preds = %str_ok11, %choice.then
  %choice.res = phi i1 [ true, %choice.then ], [ %call.res, %str_ok11 ]
  ret i1 %choice.res

str_ok11:                                         ; preds = %abort.dead20, %tag.slow_check14, %tag.gen_check13, %choice.else
  %var.load21 = load i64, ptr %var.m, align 8
  %call.res = call i1 @"ast::str_has_sub_at"(ptr %var.load4, ptr %var.load5, i64 0, i64 %str.len.query9, i64 %var.load21)
  br label %choice.exit

tag.gen_check13:                                  ; preds = %choice.else
  %active.gen16 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok17 = icmp eq i64 %str.tag10, %active.gen16
  br i1 %tag.fast.ok17, label %str_ok11, label %tag.slow_check14

tag.slow_check14:                                 ; preds = %tag.gen_check13
  %arena.cur18 = call ptr @dva_arena_current()
  %tag.valid19 = call i1 @dva_arena_validate_tag(ptr %arena.cur18, i64 %str.tag10)
  br i1 %tag.valid19, label %str_ok11, label %tag.stale15

tag.stale15:                                      ; preds = %tag.slow_check14
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead20:                                     ; No predecessors!
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
  %idx.neg = icmp slt i64 %var.load7, 0
  br i1 %idx.neg, label %idx_oob, label %idx_big_check

choice.exit:                                      ; preds = %choice.exit11, %choice.then
  %choice.res23 = phi ptr [ %var.load2, %choice.then ], [ %choice.res, %choice.exit11 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res23, align 8
  ret { i64, ptr } %ret.pack

idx_big_check:                                    ; preds = %choice.else
  %idx.big = icmp sge i64 %var.load7, %s.read.len5
  br i1 %idx.big, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %idx_big_check
  %s.byte.gep = getelementptr i8, ptr %s.read.data6, i64 %var.load7
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %cmptmp8 = icmp eq i64 %s.byte.val, 45
  br i1 %cmptmp8, label %choice.then9, label %choice.else10

idx_oob:                                          ; preds = %idx_big_check, %choice.else
  %3 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
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
  %arena.cur = call ptr @dva_arena_current()
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
  %arena.cur22 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  br label %choice.exit11

choice.exit11:                                    ; preds = %choice.else10, %choice.then9
  %choice.res = phi ptr [ %str.view, %choice.then9 ], [ %ret.ub.alloc, %choice.else10 ]
  br label %choice.exit
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
  br i1 %tag.immortal, label %str_ok, label %tag.gen_check

str_ok:                                           ; preds = %abort.dead, %tag.slow_check, %tag.gen_check, %entry
  %call.res = call { i64, ptr } @"ast::triple_first_seg_at"(ptr %var.load, i64 0, i64 %str.len.query3)
  %arena.cur4 = call ptr @dva_arena_current()
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  store ptr %ret.ub.alloc, ptr %var.seg, align 8
  %var.load5 = load ptr, ptr %var.seg, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %str.tag8 = lshr i64 %eq.lhs.len6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  br i1 %tag.immortal10, label %str_ok9, label %tag.gen_check11

tag.gen_check:                                    ; preds = %entry
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok = icmp eq i64 %str.tag, %active.gen
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

tag.slow_check:                                   ; preds = %tag.gen_check
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %tag.stale

tag.stale:                                        ; preds = %tag.slow_check
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  br label %str_ok

choice.exit:                                      ; preds = %choice.next212, %choice.case211, %choice.case102, %choice.case47, %choice.case
  %choice.res = phi ptr [ @str.18.struct, %choice.case ], [ @str.19.struct, %choice.case47 ], [ @str.25.struct, %choice.case102 ], [ @str.16.struct, %choice.case211 ], [ %var.load239, %choice.next212 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack

choice.case:                                      ; preds = %str.eq.merge40
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge40
  %eq.lhs.len49 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len50 = load i64, ptr %eq.lhs.len49, align 8
  %eq.lhs.len51 = and i64 %eq.lhs.len50, 281474976710655
  %str.tag52 = lshr i64 %eq.lhs.len50, 48
  %tag.immortal54 = icmp eq i64 %str.tag52, 0
  br i1 %tag.immortal54, label %str_ok53, label %tag.gen_check55

str_ok9:                                          ; preds = %abort.dead18, %tag.slow_check12, %tag.gen_check11, %str_ok
  %eq.rhs.len = load i64, ptr @str.17.struct, align 8
  %eq.rhs.len19 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len7, %eq.rhs.len19
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.gen_check11:                                  ; preds = %str_ok
  %active.gen14 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok15 = icmp eq i64 %str.tag8, %active.gen14
  br i1 %tag.fast.ok15, label %str_ok9, label %tag.slow_check12

tag.slow_check12:                                 ; preds = %tag.gen_check11
  %arena.cur16 = call ptr @dva_arena_current()
  %tag.valid17 = call i1 @dva_arena_validate_tag(ptr %arena.cur16, i64 %str.tag8)
  br i1 %tag.valid17, label %str_ok9, label %tag.stale13

tag.stale13:                                      ; preds = %tag.slow_check12
  %2 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead18:                                     ; No predecessors!
  br label %str_ok9

str.eq.then:                                      ; preds = %str_ok9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data20 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.17.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data20, ptr %eq.rhs.data, i64 %eq.lhs.len7)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len21 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len22 = load i64, ptr %eq.lhs.len21, align 8
  %eq.lhs.len23 = and i64 %eq.lhs.len22, 281474976710655
  %str.tag24 = lshr i64 %eq.lhs.len22, 48
  %tag.immortal26 = icmp eq i64 %str.tag24, 0
  br i1 %tag.immortal26, label %str_ok25, label %tag.gen_check27

str_ok25:                                         ; preds = %abort.dead34, %tag.slow_check28, %tag.gen_check27, %str.eq.merge
  %eq.rhs.len35 = load i64, ptr @str.18.struct, align 8
  %eq.rhs.len36 = and i64 %eq.rhs.len35, 281474976710655
  %eq.len37 = icmp eq i64 %eq.lhs.len23, %eq.rhs.len36
  br i1 %eq.len37, label %str.eq.then38, label %str.eq.else39

tag.gen_check27:                                  ; preds = %str.eq.merge
  %active.gen30 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok31 = icmp eq i64 %str.tag24, %active.gen30
  br i1 %tag.fast.ok31, label %str_ok25, label %tag.slow_check28

tag.slow_check28:                                 ; preds = %tag.gen_check27
  %arena.cur32 = call ptr @dva_arena_current()
  %tag.valid33 = call i1 @dva_arena_validate_tag(ptr %arena.cur32, i64 %str.tag24)
  br i1 %tag.valid33, label %str_ok25, label %tag.stale29

tag.stale29:                                      ; preds = %tag.slow_check28
  %3 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead34:                                     ; No predecessors!
  br label %str_ok25

str.eq.then38:                                    ; preds = %str_ok25
  %eq.lhs.data41 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data42 = load ptr, ptr %eq.lhs.data41, align 8
  %eq.rhs.data43 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.18.struct, i32 0, i32 1), align 8
  %eq.memcmp44 = call i32 @memcmp(ptr %eq.lhs.data42, ptr %eq.rhs.data43, i64 %eq.lhs.len23)
  %eq.cmp.zero45 = icmp eq i32 %eq.memcmp44, 0
  br label %str.eq.merge40

str.eq.else39:                                    ; preds = %str_ok25
  br label %str.eq.merge40

str.eq.merge40:                                   ; preds = %str.eq.else39, %str.eq.then38
  %str.eq.result46 = phi i1 [ %eq.cmp.zero45, %str.eq.then38 ], [ false, %str.eq.else39 ]
  %case.or = or i1 %str.eq.result, %str.eq.result46
  br i1 %case.or, label %choice.case, label %choice.next

choice.case47:                                    ; preds = %str.eq.merge94
  br label %choice.exit

choice.next48:                                    ; preds = %str.eq.merge94
  %eq.lhs.len104 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len105 = load i64, ptr %eq.lhs.len104, align 8
  %eq.lhs.len106 = and i64 %eq.lhs.len105, 281474976710655
  %str.tag107 = lshr i64 %eq.lhs.len105, 48
  %tag.immortal109 = icmp eq i64 %str.tag107, 0
  br i1 %tag.immortal109, label %str_ok108, label %tag.gen_check110

str_ok53:                                         ; preds = %abort.dead62, %tag.slow_check56, %tag.gen_check55, %choice.next
  %eq.rhs.len63 = load i64, ptr @str.19.struct, align 8
  %eq.rhs.len64 = and i64 %eq.rhs.len63, 281474976710655
  %eq.len65 = icmp eq i64 %eq.lhs.len51, %eq.rhs.len64
  br i1 %eq.len65, label %str.eq.then66, label %str.eq.else67

tag.gen_check55:                                  ; preds = %choice.next
  %active.gen58 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok59 = icmp eq i64 %str.tag52, %active.gen58
  br i1 %tag.fast.ok59, label %str_ok53, label %tag.slow_check56

tag.slow_check56:                                 ; preds = %tag.gen_check55
  %arena.cur60 = call ptr @dva_arena_current()
  %tag.valid61 = call i1 @dva_arena_validate_tag(ptr %arena.cur60, i64 %str.tag52)
  br i1 %tag.valid61, label %str_ok53, label %tag.stale57

tag.stale57:                                      ; preds = %tag.slow_check56
  %4 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %str_ok53

str.eq.then66:                                    ; preds = %str_ok53
  %eq.lhs.data69 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data70 = load ptr, ptr %eq.lhs.data69, align 8
  %eq.rhs.data71 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.19.struct, i32 0, i32 1), align 8
  %eq.memcmp72 = call i32 @memcmp(ptr %eq.lhs.data70, ptr %eq.rhs.data71, i64 %eq.lhs.len51)
  %eq.cmp.zero73 = icmp eq i32 %eq.memcmp72, 0
  br label %str.eq.merge68

str.eq.else67:                                    ; preds = %str_ok53
  br label %str.eq.merge68

str.eq.merge68:                                   ; preds = %str.eq.else67, %str.eq.then66
  %str.eq.result74 = phi i1 [ %eq.cmp.zero73, %str.eq.then66 ], [ false, %str.eq.else67 ]
  %eq.lhs.len75 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len76 = load i64, ptr %eq.lhs.len75, align 8
  %eq.lhs.len77 = and i64 %eq.lhs.len76, 281474976710655
  %str.tag78 = lshr i64 %eq.lhs.len76, 48
  %tag.immortal80 = icmp eq i64 %str.tag78, 0
  br i1 %tag.immortal80, label %str_ok79, label %tag.gen_check81

str_ok79:                                         ; preds = %abort.dead88, %tag.slow_check82, %tag.gen_check81, %str.eq.merge68
  %eq.rhs.len89 = load i64, ptr @str.20.struct, align 8
  %eq.rhs.len90 = and i64 %eq.rhs.len89, 281474976710655
  %eq.len91 = icmp eq i64 %eq.lhs.len77, %eq.rhs.len90
  br i1 %eq.len91, label %str.eq.then92, label %str.eq.else93

tag.gen_check81:                                  ; preds = %str.eq.merge68
  %active.gen84 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok85 = icmp eq i64 %str.tag78, %active.gen84
  br i1 %tag.fast.ok85, label %str_ok79, label %tag.slow_check82

tag.slow_check82:                                 ; preds = %tag.gen_check81
  %arena.cur86 = call ptr @dva_arena_current()
  %tag.valid87 = call i1 @dva_arena_validate_tag(ptr %arena.cur86, i64 %str.tag78)
  br i1 %tag.valid87, label %str_ok79, label %tag.stale83

tag.stale83:                                      ; preds = %tag.slow_check82
  %5 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead88:                                     ; No predecessors!
  br label %str_ok79

str.eq.then92:                                    ; preds = %str_ok79
  %eq.lhs.data95 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data96 = load ptr, ptr %eq.lhs.data95, align 8
  %eq.rhs.data97 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.20.struct, i32 0, i32 1), align 8
  %eq.memcmp98 = call i32 @memcmp(ptr %eq.lhs.data96, ptr %eq.rhs.data97, i64 %eq.lhs.len77)
  %eq.cmp.zero99 = icmp eq i32 %eq.memcmp98, 0
  br label %str.eq.merge94

str.eq.else93:                                    ; preds = %str_ok79
  br label %str.eq.merge94

str.eq.merge94:                                   ; preds = %str.eq.else93, %str.eq.then92
  %str.eq.result100 = phi i1 [ %eq.cmp.zero99, %str.eq.then92 ], [ false, %str.eq.else93 ]
  %case.or101 = or i1 %str.eq.result74, %str.eq.result100
  br i1 %case.or101, label %choice.case47, label %choice.next48

choice.case102:                                   ; preds = %str.eq.merge203
  br label %choice.exit

choice.next103:                                   ; preds = %str.eq.merge203
  %eq.lhs.len213 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len214 = load i64, ptr %eq.lhs.len213, align 8
  %eq.lhs.len215 = and i64 %eq.lhs.len214, 281474976710655
  %str.tag216 = lshr i64 %eq.lhs.len214, 48
  %tag.immortal218 = icmp eq i64 %str.tag216, 0
  br i1 %tag.immortal218, label %str_ok217, label %tag.gen_check219

str_ok108:                                        ; preds = %abort.dead117, %tag.slow_check111, %tag.gen_check110, %choice.next48
  %eq.rhs.len118 = load i64, ptr @str.21.struct, align 8
  %eq.rhs.len119 = and i64 %eq.rhs.len118, 281474976710655
  %eq.len120 = icmp eq i64 %eq.lhs.len106, %eq.rhs.len119
  br i1 %eq.len120, label %str.eq.then121, label %str.eq.else122

tag.gen_check110:                                 ; preds = %choice.next48
  %active.gen113 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok114 = icmp eq i64 %str.tag107, %active.gen113
  br i1 %tag.fast.ok114, label %str_ok108, label %tag.slow_check111

tag.slow_check111:                                ; preds = %tag.gen_check110
  %arena.cur115 = call ptr @dva_arena_current()
  %tag.valid116 = call i1 @dva_arena_validate_tag(ptr %arena.cur115, i64 %str.tag107)
  br i1 %tag.valid116, label %str_ok108, label %tag.stale112

tag.stale112:                                     ; preds = %tag.slow_check111
  %6 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead117:                                    ; No predecessors!
  br label %str_ok108

str.eq.then121:                                   ; preds = %str_ok108
  %eq.lhs.data124 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data125 = load ptr, ptr %eq.lhs.data124, align 8
  %eq.rhs.data126 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.21.struct, i32 0, i32 1), align 8
  %eq.memcmp127 = call i32 @memcmp(ptr %eq.lhs.data125, ptr %eq.rhs.data126, i64 %eq.lhs.len106)
  %eq.cmp.zero128 = icmp eq i32 %eq.memcmp127, 0
  br label %str.eq.merge123

str.eq.else122:                                   ; preds = %str_ok108
  br label %str.eq.merge123

str.eq.merge123:                                  ; preds = %str.eq.else122, %str.eq.then121
  %str.eq.result129 = phi i1 [ %eq.cmp.zero128, %str.eq.then121 ], [ false, %str.eq.else122 ]
  %eq.lhs.len130 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len131 = load i64, ptr %eq.lhs.len130, align 8
  %eq.lhs.len132 = and i64 %eq.lhs.len131, 281474976710655
  %str.tag133 = lshr i64 %eq.lhs.len131, 48
  %tag.immortal135 = icmp eq i64 %str.tag133, 0
  br i1 %tag.immortal135, label %str_ok134, label %tag.gen_check136

str_ok134:                                        ; preds = %abort.dead143, %tag.slow_check137, %tag.gen_check136, %str.eq.merge123
  %eq.rhs.len144 = load i64, ptr @str.22.struct, align 8
  %eq.rhs.len145 = and i64 %eq.rhs.len144, 281474976710655
  %eq.len146 = icmp eq i64 %eq.lhs.len132, %eq.rhs.len145
  br i1 %eq.len146, label %str.eq.then147, label %str.eq.else148

tag.gen_check136:                                 ; preds = %str.eq.merge123
  %active.gen139 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok140 = icmp eq i64 %str.tag133, %active.gen139
  br i1 %tag.fast.ok140, label %str_ok134, label %tag.slow_check137

tag.slow_check137:                                ; preds = %tag.gen_check136
  %arena.cur141 = call ptr @dva_arena_current()
  %tag.valid142 = call i1 @dva_arena_validate_tag(ptr %arena.cur141, i64 %str.tag133)
  br i1 %tag.valid142, label %str_ok134, label %tag.stale138

tag.stale138:                                     ; preds = %tag.slow_check137
  %7 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead143:                                    ; No predecessors!
  br label %str_ok134

str.eq.then147:                                   ; preds = %str_ok134
  %eq.lhs.data150 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data151 = load ptr, ptr %eq.lhs.data150, align 8
  %eq.rhs.data152 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.22.struct, i32 0, i32 1), align 8
  %eq.memcmp153 = call i32 @memcmp(ptr %eq.lhs.data151, ptr %eq.rhs.data152, i64 %eq.lhs.len132)
  %eq.cmp.zero154 = icmp eq i32 %eq.memcmp153, 0
  br label %str.eq.merge149

str.eq.else148:                                   ; preds = %str_ok134
  br label %str.eq.merge149

str.eq.merge149:                                  ; preds = %str.eq.else148, %str.eq.then147
  %str.eq.result155 = phi i1 [ %eq.cmp.zero154, %str.eq.then147 ], [ false, %str.eq.else148 ]
  %case.or156 = or i1 %str.eq.result129, %str.eq.result155
  %eq.lhs.len157 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len158 = load i64, ptr %eq.lhs.len157, align 8
  %eq.lhs.len159 = and i64 %eq.lhs.len158, 281474976710655
  %str.tag160 = lshr i64 %eq.lhs.len158, 48
  %tag.immortal162 = icmp eq i64 %str.tag160, 0
  br i1 %tag.immortal162, label %str_ok161, label %tag.gen_check163

str_ok161:                                        ; preds = %abort.dead170, %tag.slow_check164, %tag.gen_check163, %str.eq.merge149
  %eq.rhs.len171 = load i64, ptr @str.23.struct, align 8
  %eq.rhs.len172 = and i64 %eq.rhs.len171, 281474976710655
  %eq.len173 = icmp eq i64 %eq.lhs.len159, %eq.rhs.len172
  br i1 %eq.len173, label %str.eq.then174, label %str.eq.else175

tag.gen_check163:                                 ; preds = %str.eq.merge149
  %active.gen166 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok167 = icmp eq i64 %str.tag160, %active.gen166
  br i1 %tag.fast.ok167, label %str_ok161, label %tag.slow_check164

tag.slow_check164:                                ; preds = %tag.gen_check163
  %arena.cur168 = call ptr @dva_arena_current()
  %tag.valid169 = call i1 @dva_arena_validate_tag(ptr %arena.cur168, i64 %str.tag160)
  br i1 %tag.valid169, label %str_ok161, label %tag.stale165

tag.stale165:                                     ; preds = %tag.slow_check164
  %8 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead170:                                    ; No predecessors!
  br label %str_ok161

str.eq.then174:                                   ; preds = %str_ok161
  %eq.lhs.data177 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data178 = load ptr, ptr %eq.lhs.data177, align 8
  %eq.rhs.data179 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.23.struct, i32 0, i32 1), align 8
  %eq.memcmp180 = call i32 @memcmp(ptr %eq.lhs.data178, ptr %eq.rhs.data179, i64 %eq.lhs.len159)
  %eq.cmp.zero181 = icmp eq i32 %eq.memcmp180, 0
  br label %str.eq.merge176

str.eq.else175:                                   ; preds = %str_ok161
  br label %str.eq.merge176

str.eq.merge176:                                  ; preds = %str.eq.else175, %str.eq.then174
  %str.eq.result182 = phi i1 [ %eq.cmp.zero181, %str.eq.then174 ], [ false, %str.eq.else175 ]
  %case.or183 = or i1 %case.or156, %str.eq.result182
  %eq.lhs.len184 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %eq.lhs.len185 = load i64, ptr %eq.lhs.len184, align 8
  %eq.lhs.len186 = and i64 %eq.lhs.len185, 281474976710655
  %str.tag187 = lshr i64 %eq.lhs.len185, 48
  %tag.immortal189 = icmp eq i64 %str.tag187, 0
  br i1 %tag.immortal189, label %str_ok188, label %tag.gen_check190

str_ok188:                                        ; preds = %abort.dead197, %tag.slow_check191, %tag.gen_check190, %str.eq.merge176
  %eq.rhs.len198 = load i64, ptr @str.24.struct, align 8
  %eq.rhs.len199 = and i64 %eq.rhs.len198, 281474976710655
  %eq.len200 = icmp eq i64 %eq.lhs.len186, %eq.rhs.len199
  br i1 %eq.len200, label %str.eq.then201, label %str.eq.else202

tag.gen_check190:                                 ; preds = %str.eq.merge176
  %active.gen193 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok194 = icmp eq i64 %str.tag187, %active.gen193
  br i1 %tag.fast.ok194, label %str_ok188, label %tag.slow_check191

tag.slow_check191:                                ; preds = %tag.gen_check190
  %arena.cur195 = call ptr @dva_arena_current()
  %tag.valid196 = call i1 @dva_arena_validate_tag(ptr %arena.cur195, i64 %str.tag187)
  br i1 %tag.valid196, label %str_ok188, label %tag.stale192

tag.stale192:                                     ; preds = %tag.slow_check191
  %9 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead197:                                    ; No predecessors!
  br label %str_ok188

str.eq.then201:                                   ; preds = %str_ok188
  %eq.lhs.data204 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data205 = load ptr, ptr %eq.lhs.data204, align 8
  %eq.rhs.data206 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.24.struct, i32 0, i32 1), align 8
  %eq.memcmp207 = call i32 @memcmp(ptr %eq.lhs.data205, ptr %eq.rhs.data206, i64 %eq.lhs.len186)
  %eq.cmp.zero208 = icmp eq i32 %eq.memcmp207, 0
  br label %str.eq.merge203

str.eq.else202:                                   ; preds = %str_ok188
  br label %str.eq.merge203

str.eq.merge203:                                  ; preds = %str.eq.else202, %str.eq.then201
  %str.eq.result209 = phi i1 [ %eq.cmp.zero208, %str.eq.then201 ], [ false, %str.eq.else202 ]
  %case.or210 = or i1 %case.or183, %str.eq.result209
  br i1 %case.or210, label %choice.case102, label %choice.next103

choice.case211:                                   ; preds = %str.eq.merge232
  br label %choice.exit

choice.next212:                                   ; preds = %str.eq.merge232
  %var.load239 = load ptr, ptr %var.seg, align 8
  br label %choice.exit

str_ok217:                                        ; preds = %abort.dead226, %tag.slow_check220, %tag.gen_check219, %choice.next103
  %eq.rhs.len227 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len228 = and i64 %eq.rhs.len227, 281474976710655
  %eq.len229 = icmp eq i64 %eq.lhs.len215, %eq.rhs.len228
  br i1 %eq.len229, label %str.eq.then230, label %str.eq.else231

tag.gen_check219:                                 ; preds = %choice.next103
  %active.gen222 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.fast.ok223 = icmp eq i64 %str.tag216, %active.gen222
  br i1 %tag.fast.ok223, label %str_ok217, label %tag.slow_check220

tag.slow_check220:                                ; preds = %tag.gen_check219
  %arena.cur224 = call ptr @dva_arena_current()
  %tag.valid225 = call i1 @dva_arena_validate_tag(ptr %arena.cur224, i64 %str.tag216)
  br i1 %tag.valid225, label %str_ok217, label %tag.stale221

tag.stale221:                                     ; preds = %tag.slow_check220
  %10 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead226:                                    ; No predecessors!
  br label %str_ok217

str.eq.then230:                                   ; preds = %str_ok217
  %eq.lhs.data233 = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 1
  %eq.lhs.data234 = load ptr, ptr %eq.lhs.data233, align 8
  %eq.rhs.data235 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp236 = call i32 @memcmp(ptr %eq.lhs.data234, ptr %eq.rhs.data235, i64 %eq.lhs.len215)
  %eq.cmp.zero237 = icmp eq i32 %eq.memcmp236, 0
  br label %str.eq.merge232

str.eq.else231:                                   ; preds = %str_ok217
  br label %str.eq.merge232

str.eq.merge232:                                  ; preds = %str.eq.else231, %str.eq.then230
  %str.eq.result238 = phi i1 [ %eq.cmp.zero237, %str.eq.then230 ], [ false, %str.eq.else231 ]
  br i1 %str.eq.result238, label %choice.case211, label %choice.next212
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noinline "nounwind" }
attributes #3 = { cold noreturn "nounwind" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
