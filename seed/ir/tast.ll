; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_arena_tls = external thread_local global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"tast::layout_scalar", ptr null }
@"var.tast::layout_scalar" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"tast::layout_bitfield", ptr null }
@"var.tast::layout_bitfield" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"tast::layout_aggregate", ptr null }
@"var.tast::layout_aggregate" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"tast::layout_record", ptr null }
@"var.tast::layout_record" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"tast::layout_ram", ptr null }
@"var.tast::layout_ram" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"tast::layout_ram_flag", ptr null }
@"var.tast::layout_ram_flag" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"tast::layout_ram_niche_pos", ptr null }
@"var.tast::layout_ram_niche_pos" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"tast::layout_ram_niche_neg", ptr null }
@"var.tast::layout_ram_niche_neg" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"tast::layout_ram_unboxed", ptr null }
@"var.tast::layout_ram_unboxed" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"tast::layout_closure", ptr null }
@"var.tast::layout_closure" = global ptr null
@clo.const.10 = internal constant { ptr, ptr } { ptr @"tast::layout_void", ptr null }
@"var.tast::layout_void" = global ptr null
@clo.const.11 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_expr", ptr null }
@"var.tast::mk_typed_expr" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"tast::mk_lit_int", ptr null }
@"var.tast::mk_lit_int" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"tast::mk_lit_float", ptr null }
@"var.tast::mk_lit_float" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"tast::mk_lit_str", ptr null }
@"var.tast::mk_lit_str" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"tast::mk_lit_flag", ptr null }
@"var.tast::mk_lit_flag" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"tast::mk_lit_unit", ptr null }
@"var.tast::mk_lit_unit" = global ptr null
@clo.const.17 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_var", ptr null }
@"var.tast::mk_typed_var" = global ptr null
@clo.const.18 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_bin", ptr null }
@"var.tast::mk_typed_bin" = global ptr null
@clo.const.19 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_unary", ptr null }
@"var.tast::mk_typed_unary" = global ptr null
@clo.const.20 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_call", ptr null }
@"var.tast::mk_typed_call" = global ptr null
@clo.const.21 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_block", ptr null }
@"var.tast::mk_typed_block" = global ptr null
@clo.const.22 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_assign", ptr null }
@"var.tast::mk_typed_assign" = global ptr null
@clo.const.23 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_local_binding", ptr null }
@"var.tast::mk_typed_local_binding" = global ptr null
@str.0 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.0 }
@str.1 = internal unnamed_addr constant [9 x i8] c"tast.dva\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 8, ptr @str.1 }
@str.2 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.2 }
@str.3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.3 }
@clo.const.24 = internal constant { ptr, ptr } { ptr @"tast::block_binding_name", ptr null }
@"var.tast::block_binding_name" = global ptr null
@clo.const.25 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_member", ptr null }
@"var.tast::mk_typed_member" = global ptr null
@clo.const.26 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_cycle", ptr null }
@"var.tast::mk_typed_cycle" = global ptr null
@clo.const.27 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_copy", ptr null }
@"var.tast::mk_typed_copy" = global ptr null
@clo.const.28 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_builder_new", ptr null }
@"var.tast::mk_typed_builder_new" = global ptr null
@clo.const.29 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_cycle_jump", ptr null }
@"var.tast::mk_typed_cycle_jump" = global ptr null
@clo.const.30 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_raw_memory", ptr null }
@"var.tast::mk_typed_raw_memory" = global ptr null
@clo.const.31 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_ram_construct", ptr null }
@"var.tast::mk_typed_ram_construct" = global ptr null
@clo.const.32 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_enum_construct", ptr null }
@"var.tast::mk_typed_enum_construct" = global ptr null
@clo.const.33 = internal constant { ptr, ptr } { ptr @"tast::mk_typed_return", ptr null }
@"var.tast::mk_typed_return" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_tast, ptr null }]

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

define internal void @__dva_global_init_tast() #2 {
entry:
  store ptr @clo.const, ptr @"var.tast::layout_scalar", align 8
  store ptr @clo.const.1, ptr @"var.tast::layout_bitfield", align 8
  store ptr @clo.const.2, ptr @"var.tast::layout_aggregate", align 8
  store ptr @clo.const.3, ptr @"var.tast::layout_record", align 8
  store ptr @clo.const.4, ptr @"var.tast::layout_ram", align 8
  store ptr @clo.const.5, ptr @"var.tast::layout_ram_flag", align 8
  store ptr @clo.const.6, ptr @"var.tast::layout_ram_niche_pos", align 8
  store ptr @clo.const.7, ptr @"var.tast::layout_ram_niche_neg", align 8
  store ptr @clo.const.8, ptr @"var.tast::layout_ram_unboxed", align 8
  store ptr @clo.const.9, ptr @"var.tast::layout_closure", align 8
  store ptr @clo.const.10, ptr @"var.tast::layout_void", align 8
  store ptr @clo.const.11, ptr @"var.tast::mk_typed_expr", align 8
  store ptr @clo.const.12, ptr @"var.tast::mk_lit_int", align 8
  store ptr @clo.const.13, ptr @"var.tast::mk_lit_float", align 8
  store ptr @clo.const.14, ptr @"var.tast::mk_lit_str", align 8
  store ptr @clo.const.15, ptr @"var.tast::mk_lit_flag", align 8
  store ptr @clo.const.16, ptr @"var.tast::mk_lit_unit", align 8
  store ptr @clo.const.17, ptr @"var.tast::mk_typed_var", align 8
  store ptr @clo.const.18, ptr @"var.tast::mk_typed_bin", align 8
  store ptr @clo.const.19, ptr @"var.tast::mk_typed_unary", align 8
  store ptr @clo.const.20, ptr @"var.tast::mk_typed_call", align 8
  store ptr @clo.const.21, ptr @"var.tast::mk_typed_block", align 8
  store ptr @clo.const.22, ptr @"var.tast::mk_typed_assign", align 8
  store ptr @clo.const.23, ptr @"var.tast::mk_typed_local_binding", align 8
  store ptr @clo.const.24, ptr @"var.tast::block_binding_name", align 8
  store ptr @clo.const.25, ptr @"var.tast::mk_typed_member", align 8
  store ptr @clo.const.26, ptr @"var.tast::mk_typed_cycle", align 8
  store ptr @clo.const.27, ptr @"var.tast::mk_typed_copy", align 8
  store ptr @clo.const.28, ptr @"var.tast::mk_typed_builder_new", align 8
  store ptr @clo.const.29, ptr @"var.tast::mk_typed_cycle_jump", align 8
  store ptr @clo.const.30, ptr @"var.tast::mk_typed_raw_memory", align 8
  store ptr @clo.const.31, ptr @"var.tast::mk_typed_ram_construct", align 8
  store ptr @clo.const.32, ptr @"var.tast::mk_typed_enum_construct", align 8
  store ptr @clo.const.33, ptr @"var.tast::mk_typed_return", align 8
  ret void
}

define ptr @"tast::layout_scalar"(i64 %0, i64 %1) #2 {
entry:
  %var.align = alloca i64, align 8
  %var.size = alloca i64, align 8
  store i64 %0, ptr %var.size, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.size, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld4, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_bitfield"(i64 %0, i64 %1) #2 {
entry:
  %var.align = alloca i64, align 8
  %var.size = alloca i64, align 8
  store i64 %0, ptr %var.size, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.size, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 1, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld4, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_aggregate"(i64 %0, i64 %1) #2 {
entry:
  %var.align = alloca i64, align 8
  %var.size = alloca i64, align 8
  store i64 %0, ptr %var.size, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.size, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 2, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld4, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_record"(i64 %0, i64 %1) #2 {
entry:
  %var.align = alloca i64, align 8
  %var.size = alloca i64, align 8
  store i64 %0, ptr %var.size, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.size, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 3, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld4, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_ram"(i64 %0, i64 %1) #2 {
entry:
  %var.align = alloca i64, align 8
  %var.size = alloca i64, align 8
  store i64 %0, ptr %var.size, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.size, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 8, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld4, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_ram_flag"() #2 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 1, ptr %rec.fld, align 8
  %rec.fld2 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 1, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld3, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_ram_niche_pos"(i64 %0, i64 %1) #2 {
entry:
  %var.align = alloca i64, align 8
  %var.size = alloca i64, align 8
  store i64 %0, ptr %var.size, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.size, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 5, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld4, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_ram_niche_neg"(i64 %0, i64 %1) #2 {
entry:
  %var.align = alloca i64, align 8
  %var.size = alloca i64, align 8
  store i64 %0, ptr %var.size, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.size, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 6, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld4, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_ram_unboxed"(i64 %0, i64 %1) #2 {
entry:
  %var.align = alloca i64, align 8
  %var.size = alloca i64, align 8
  store i64 %0, ptr %var.size, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.size, align 8
  %var.load1 = load i64, ptr %var.align, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 7, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld3, align 8
  %rec.fld4 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld4, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_closure"() #2 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 12, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 16, ptr %rec.fld, align 8
  %rec.fld2 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 8, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld3, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::layout_void"() #2 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 13, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep, align 8
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 0, ptr %rec.fld, align 8
  %rec.fld2 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 1, ptr %rec.fld2, align 8
  %rec.fld3 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld3, align 8
  ret ptr %rec.alloc
}

define ptr @"tast::mk_typed_expr"(ptr %0, ptr %1, ptr %2, ptr %3, i64 %4, i64 %5) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.layout = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.kind = alloca ptr, align 8
  store ptr %0, ptr %var.kind, align 8
  store ptr %1, ptr %var.ut, align 8
  store ptr %2, ptr %var.ti, align 8
  store ptr %3, ptr %var.layout, align 8
  store i64 %4, ptr %var.line, align 8
  store i64 %5, ptr %var.col, align 8
  %var.load = load ptr, ptr %var.kind, align 8
  %var.load1 = load ptr, ptr %var.ut, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %var.load3 = load ptr, ptr %var.layout, align 8
  %var.load4 = load i64, ptr %var.line, align 8
  %var.load5 = load i64, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld6 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load2, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld8, ptr align 1 %var.load3, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld9 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %var.load4, ptr %rec.fld9, align 8
  %rec.fld10 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %var.load5, ptr %rec.fld10, align 8
  ret ptr %rec.alloc
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

define ptr @"tast::mk_lit_int"(i64 %0, i64 %1, i64 %2) #2 {
entry:
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.val = alloca i64, align 8
  store i64 %0, ptr %var.val, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %call.res = call ptr @"unify::prim_int"()
  store ptr %call.res, ptr %var.ut, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2 = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 0
  store i64 1, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  store ptr %enum.alloc2, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.ti, align 8
  %call.res5 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  store ptr %call.res5, ptr %var.lay, align 8
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 16)
  %tag.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 0
  store i64 0, ptr %tag.gep8, align 8
  %pay.gep9 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 1
  %var.load = load i64, ptr %var.val, align 8
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i64 %var.load, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep9, align 8
  %var.load11 = load ptr, ptr %var.ut, align 8
  %var.load12 = load ptr, ptr %var.ti, align 8
  %var.load13 = load ptr, ptr %var.lay, align 8
  %var.load14 = load i64, ptr %var.line, align 8
  %var.load15 = load i64, ptr %var.col, align 8
  %call.res16 = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc7, ptr %var.load11, ptr %var.load12, ptr %var.load13, i64 %var.load14, i64 %var.load15)
  ret ptr %call.res16
}

declare ptr @"unify::prim_int"() #2

define ptr @"tast::mk_lit_float"(double %0, i64 %1, i64 %2) #2 {
entry:
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.val = alloca double, align 8
  store double %0, ptr %var.val, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %call.res = call ptr @"unify::prim_float"()
  store ptr %call.res, ptr %var.ut, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2 = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 0
  store i64 11, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  store ptr %enum.alloc2, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.ti, align 8
  %call.res5 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  store ptr %call.res5, ptr %var.lay, align 8
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 16)
  %tag.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 0
  store i64 1, ptr %tag.gep8, align 8
  %pay.gep9 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 1
  %var.load = load double, ptr %var.val, align 8
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store double %var.load, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep9, align 8
  %var.load11 = load ptr, ptr %var.ut, align 8
  %var.load12 = load ptr, ptr %var.ti, align 8
  %var.load13 = load ptr, ptr %var.lay, align 8
  %var.load14 = load i64, ptr %var.line, align 8
  %var.load15 = load i64, ptr %var.col, align 8
  %call.res16 = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc7, ptr %var.load11, ptr %var.load12, ptr %var.load13, i64 %var.load14, i64 %var.load15)
  ret ptr %call.res16
}

declare ptr @"unify::prim_float"() #2

define ptr @"tast::mk_lit_str"(ptr %0, i64 %1, i64 %2) #2 {
entry:
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.val = alloca ptr, align 8
  store ptr %0, ptr %var.val, align 8
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %call.res = call ptr @"unify::prim_str"()
  store ptr %call.res, ptr %var.ut, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2 = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 0
  store i64 13, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  store ptr %enum.alloc2, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.ti, align 8
  %call.res5 = call ptr @"tast::layout_scalar"(i64 16, i64 8)
  store ptr %call.res5, ptr %var.lay, align 8
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 16)
  %tag.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 0
  store i64 2, ptr %tag.gep8, align 8
  %pay.gep9 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 1
  %var.load = load ptr, ptr %var.val, align 8
  store ptr %var.load, ptr %pay.gep9, align 8
  %var.load10 = load ptr, ptr %var.ut, align 8
  %var.load11 = load ptr, ptr %var.ti, align 8
  %var.load12 = load ptr, ptr %var.lay, align 8
  %var.load13 = load i64, ptr %var.line, align 8
  %var.load14 = load i64, ptr %var.col, align 8
  %call.res15 = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc7, ptr %var.load10, ptr %var.load11, ptr %var.load12, i64 %var.load13, i64 %var.load14)
  ret ptr %call.res15
}

declare ptr @"unify::prim_str"() #2

define ptr @"tast::mk_lit_flag"(i1 %0, i64 %1, i64 %2) #2 {
entry:
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.val = alloca i1, align 1
  store i1 %0, ptr %var.val, align 1
  store i64 %1, ptr %var.line, align 8
  store i64 %2, ptr %var.col, align 8
  %call.res = call ptr @"unify::prim_flag"()
  store ptr %call.res, ptr %var.ut, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2 = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 0
  store i64 26, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  store ptr %enum.alloc2, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.ti, align 8
  %call.res5 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  store ptr %call.res5, ptr %var.lay, align 8
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 16)
  %tag.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 0
  store i64 4, ptr %tag.gep8, align 8
  %pay.gep9 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 1
  %var.load = load i1, ptr %var.val, align 1
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i1 %var.load, ptr %enum.pay.alloc, align 1
  store ptr %enum.pay.alloc, ptr %pay.gep9, align 8
  %var.load11 = load ptr, ptr %var.ut, align 8
  %var.load12 = load ptr, ptr %var.ti, align 8
  %var.load13 = load ptr, ptr %var.lay, align 8
  %var.load14 = load i64, ptr %var.line, align 8
  %var.load15 = load i64, ptr %var.col, align 8
  %call.res16 = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc7, ptr %var.load11, ptr %var.load12, ptr %var.load13, i64 %var.load14, i64 %var.load15)
  ret ptr %call.res16
}

declare ptr @"unify::prim_flag"() #2

define ptr @"tast::mk_lit_unit"(i64 %0, i64 %1) #2 {
entry:
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  store i64 %0, ptr %var.line, align 8
  store i64 %1, ptr %var.col, align 8
  %call.res = call ptr @"unify::prim_unit"()
  store ptr %call.res, ptr %var.ut, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2 = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 0
  store i64 16, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  store ptr %enum.alloc2, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.ti, align 8
  %call.res5 = call ptr @"tast::layout_void"()
  store ptr %call.res5, ptr %var.lay, align 8
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 16)
  %tag.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 0
  store i64 5, ptr %tag.gep8, align 8
  %pay.gep9 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 1
  store ptr null, ptr %pay.gep9, align 8
  %var.load = load ptr, ptr %var.ut, align 8
  %var.load10 = load ptr, ptr %var.ti, align 8
  %var.load11 = load ptr, ptr %var.lay, align 8
  %var.load12 = load i64, ptr %var.line, align 8
  %var.load13 = load i64, ptr %var.col, align 8
  %call.res14 = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc7, ptr %var.load, ptr %var.load10, ptr %var.load11, i64 %var.load12, i64 %var.load13)
  ret ptr %call.res14
}

declare ptr @"unify::prim_unit"() #2

define ptr @"tast::mk_typed_var"(ptr %0, i64 %1, i1 %2, ptr %3, ptr %4, ptr %5, i64 %6, i64 %7) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.is_mut = alloca i1, align 1
  %var.depth = alloca i64, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i64 %1, ptr %var.depth, align 8
  store i1 %2, ptr %var.is_mut, align 1
  store ptr %3, ptr %var.ut, align 8
  store ptr %4, ptr %var.ti, align 8
  store ptr %5, ptr %var.lay, align 8
  store i64 %6, ptr %var.line, align 8
  store i64 %7, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 6, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load i64, ptr %var.depth, align 8
  %var.load2 = load i1, ptr %var.is_mut, align 1
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i64, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i64, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load1, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, i64, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load2, ptr %rec.fld5, align 1
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %var.load6 = load ptr, ptr %var.ut, align 8
  %var.load7 = load ptr, ptr %var.ti, align 8
  %var.load8 = load ptr, ptr %var.lay, align 8
  %var.load9 = load i64, ptr %var.line, align 8
  %var.load10 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load6, ptr %var.load7, ptr %var.load8, i64 %var.load9, i64 %var.load10)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_bin"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, i64 %6, i64 %7) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.rhs = alloca ptr, align 8
  %var.lhs = alloca ptr, align 8
  %var.op = alloca ptr, align 8
  store ptr %0, ptr %var.op, align 8
  store ptr %1, ptr %var.lhs, align 8
  store ptr %2, ptr %var.rhs, align 8
  store ptr %3, ptr %var.ut, align 8
  store ptr %4, ptr %var.ti, align 8
  store ptr %5, ptr %var.lay, align 8
  store i64 %6, ptr %var.line, align 8
  store i64 %7, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 7, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.op, align 8
  %var.load1 = load ptr, ptr %var.lhs, align 8
  %var.load2 = load ptr, ptr %var.rhs, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld4, ptr align 1 %var.load1, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld5 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld5, ptr align 1 %var.load2, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %var.load6 = load ptr, ptr %var.ut, align 8
  %var.load7 = load ptr, ptr %var.ti, align 8
  %var.load8 = load ptr, ptr %var.lay, align 8
  %var.load9 = load i64, ptr %var.line, align 8
  %var.load10 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load6, ptr %var.load7, ptr %var.load8, i64 %var.load9, i64 %var.load10)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_unary"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, i64 %5, i64 %6) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.operand = alloca ptr, align 8
  %var.op = alloca ptr, align 8
  store ptr %0, ptr %var.op, align 8
  store ptr %1, ptr %var.operand, align 8
  store ptr %2, ptr %var.ut, align 8
  store ptr %3, ptr %var.ti, align 8
  store ptr %4, ptr %var.lay, align 8
  store i64 %5, ptr %var.line, align 8
  store i64 %6, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 8, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.op, align 8
  %var.load1 = load ptr, ptr %var.operand, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld3, ptr align 1 %var.load1, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %var.load4 = load ptr, ptr %var.ut, align 8
  %var.load5 = load ptr, ptr %var.ti, align 8
  %var.load6 = load ptr, ptr %var.lay, align 8
  %var.load7 = load i64, ptr %var.line, align 8
  %var.load8 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load4, ptr %var.load5, ptr %var.load6, i64 %var.load7, i64 %var.load8)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_call"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5, i64 %6, i64 %7) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.args = alloca ptr, align 8
  %var.fn_target = alloca ptr, align 8
  %var.fn_name = alloca ptr, align 8
  store ptr %0, ptr %var.fn_name, align 8
  store ptr %1, ptr %var.fn_target, align 8
  store ptr %2, ptr %var.args, align 8
  store ptr %3, ptr %var.ut, align 8
  store ptr %4, ptr %var.ti, align 8
  store ptr %5, ptr %var.lay, align 8
  store i64 %6, ptr %var.line, align 8
  store i64 %7, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.fn_name, align 8
  %var.load1 = load ptr, ptr %var.fn_target, align 8
  %var.load2 = load ptr, ptr %var.args, align 8
  %a.load = load ptr, ptr %var.args, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create4 = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 24)
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create4, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create4, ptr %var.args, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.args, align 8
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld7, align 8
  %rec.fld8 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %a.load2, ptr %rec.fld8, align 8
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %var.load9 = load ptr, ptr %var.ut, align 8
  %var.load10 = load ptr, ptr %var.ti, align 8
  %var.load11 = load ptr, ptr %var.lay, align 8
  %var.load12 = load i64, ptr %var.line, align 8
  %var.load13 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load9, ptr %var.load10, ptr %var.load11, i64 %var.load12, i64 %var.load13)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_block"(ptr %0, ptr %1, ptr %2, ptr %3, i64 %4, i64 %5) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.exprs = alloca ptr, align 8
  store ptr %0, ptr %var.exprs, align 8
  store ptr %1, ptr %var.ut, align 8
  store ptr %2, ptr %var.ti, align 8
  store ptr %3, ptr %var.lay, align 8
  store i64 %4, ptr %var.line, align 8
  store i64 %5, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 17, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.exprs, align 8
  %a.load = load ptr, ptr %var.exprs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create2, ptr %var.exprs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.exprs, align 8
  store ptr %a.load2, ptr %pay.gep, align 8
  %var.load4 = load ptr, ptr %var.ut, align 8
  %var.load5 = load ptr, ptr %var.ti, align 8
  %var.load6 = load ptr, ptr %var.lay, align 8
  %var.load7 = load i64, ptr %var.line, align 8
  %var.load8 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load4, ptr %var.load5, ptr %var.load6, i64 %var.load7, i64 %var.load8)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_assign"(ptr %0, i1 %1, i1 %2, i1 %3, i1 %4, ptr %5, ptr %6, ptr %7, ptr %8, i64 %9, i64 %10) #2 {
entry:
  %var.as_tup = alloca ptr, align 8
  %var.c = alloca i64, align 8
  %var.l = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.val = alloca ptr, align 8
  %var.len = alloca i1, align 1
  %var.glob = alloca i1, align 1
  %var.cmp = alloca i1, align 1
  %var.mut = alloca i1, align 1
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store i1 %1, ptr %var.mut, align 1
  store i1 %2, ptr %var.cmp, align 1
  store i1 %3, ptr %var.glob, align 1
  store i1 %4, ptr %var.len, align 1
  store ptr %5, ptr %var.val, align 8
  store ptr %6, ptr %var.ut, align 8
  store ptr %7, ptr %var.ti, align 8
  store ptr %8, ptr %var.lay, align 8
  store i64 %9, ptr %var.l, align 8
  store i64 %10, ptr %var.c, align 8
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load i1, ptr %var.mut, align 1
  %var.load2 = load i1, ptr %var.cmp, align 1
  %var.load3 = load i1, ptr %var.glob, align 1
  %var.load4 = load i1, ptr %var.len, align 1
  %var.load5 = load ptr, ptr %var.val, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld6 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1, ptr %rec.fld6, align 1
  %rec.fld7 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i1 %var.load2, ptr %rec.fld7, align 1
  %rec.fld8 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load3, ptr %rec.fld8, align 1
  %rec.fld9 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i1 %var.load4, ptr %rec.fld9, align 1
  %rec.fld10 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld10, ptr align 1 %var.load5, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld11 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 false, ptr %rec.fld11, align 1
  store ptr %rec.alloc, ptr %var.as_tup, align 8
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 18, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load13 = load ptr, ptr %var.as_tup, align 8
  store ptr %var.load13, ptr %pay.gep, align 8
  %var.load14 = load ptr, ptr %var.ut, align 8
  %var.load15 = load ptr, ptr %var.ti, align 8
  %var.load16 = load ptr, ptr %var.lay, align 8
  %var.load17 = load i64, ptr %var.l, align 8
  %var.load18 = load i64, ptr %var.c, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load14, ptr %var.load15, ptr %var.load16, i64 %var.load17, i64 %var.load18)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_local_binding"(ptr %0, ptr %1) #2 {
entry:
  %var.__ctor_arg_107 = alloca ptr, align 8
  %var.unit = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.value, align 8
  %call.res = call ptr @"tast::mk_lit_unit"(i64 0, i64 0)
  store ptr %call.res, ptr %var.unit, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 18, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load ptr, ptr %var.value, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 false, ptr %rec.fld3, align 1
  %rec.fld4 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 2
  store i1 false, ptr %rec.fld4, align 1
  %rec.fld5 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld5, align 1
  %rec.fld6 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i1 false, ptr %rec.fld6, align 1
  %rec.fld7 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld7, ptr align 1 %var.load1, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld8 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 6
  store i1 true, ptr %rec.fld8, align 1
  store ptr %rec.alloc, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_107, align 8
  %var.load9 = load ptr, ptr %var.__ctor_arg_107, align 8
  %var.load10 = load ptr, ptr %var.unit, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load10, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load11 = load ptr, ptr %var.unit, align 8
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load11, i32 0, i32 2
  %fld.load13 = load ptr, ptr %fld.gep12, align 8
  %var.load14 = load ptr, ptr %var.unit, align 8
  %fld.gep15 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load14, i32 0, i32 3
  %var.load16 = load ptr, ptr %var.unit, align 8
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load16, i32 0, i32 4
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %var.load19 = load ptr, ptr %var.unit, align 8
  %fld.gep20 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load19, i32 0, i32 5
  %fld.load21 = load i64, ptr %fld.gep20, align 8
  %arena.cur22 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc23 = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld24 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc23, i32 0, i32 0
  store ptr %var.load9, ptr %rec.fld24, align 8
  %rec.fld25 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc23, i32 0, i32 1
  store ptr %fld.load, ptr %rec.fld25, align 8
  %rec.fld26 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc23, i32 0, i32 2
  store ptr %fld.load13, ptr %rec.fld26, align 8
  %rec.fld27 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc23, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld27, ptr align 1 %fld.gep15, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld28 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc23, i32 0, i32 4
  store i64 %fld.load18, ptr %rec.fld28, align 8
  %rec.fld29 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc23, i32 0, i32 5
  store i64 %fld.load21, ptr %rec.fld29, align 8
  ret ptr %rec.alloc23
}

define { i64, ptr } @"tast::block_binding_name"(ptr %0) #2 {
entry:
  %var._34 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._21 = alloca ptr, align 8
  %var.first = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.exprs = alloca ptr, align 8
  store ptr %0, ptr %var.exprs, align 8
  %var.load = load ptr, ptr %var.exprs, align 8
  %a.load = load ptr, ptr %var.exprs, align 8
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
  store ptr %a.create1, ptr %var.exprs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.exprs, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.rd.len3 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len3
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %a.rd.data4 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data4, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 263, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 12, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 56)
  %err.code.gep8 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 0
  store i64 4011, ptr %err.code.gep8, align 8
  %err.msg.gep9 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep9, align 8
  %err.file.gep10 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep10, align 8
  %err.line.gep11 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 3
  store i64 263, ptr %err.line.gep11, align 8
  %err.col.gep12 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 4
  store i64 12, ptr %err.col.gep12, align 8
  %err.ctx.gep13 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc7, i32 0, i32 5
  %err.ctx0.gep14 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep14, align 8
  %err.ctx1.gep15 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep13, i32 0, i32 1
  store i64 %a.rd.len3, ptr %err.ctx1.gep15, align 8
  %err.p2i16 = ptrtoint ptr %err.alloc7 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i16, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag17 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag17, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay18 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay18 to ptr
  store ptr %pay.ptr, ptr %var._, align 8
  store ptr %pay.ptr, ptr %var.first, align 8
  %var.load19 = load ptr, ptr %var.first, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load19, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 18
  br i1 %tag.match, label %choice.case, label %choice.next

choice.else:                                      ; preds = %a.rd.done
  %ram.pay32 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr33 = inttoptr i64 %ram.pay32 to ptr
  store ptr %pay.ptr33, ptr %var._34, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.exit20
  %choice.res35 = phi ptr [ %choice.res31, %choice.exit20 ], [ @str.3.struct, %choice.else ]
  %ret.pack = load { i64, ptr }, ptr %choice.res35, align 8
  ret { i64, ptr } %ret.pack

choice.exit20:                                    ; preds = %choice.next, %choice.exit27
  %choice.res31 = phi ptr [ %choice.res, %choice.exit27 ], [ @str.3.struct, %choice.next ]
  br label %choice.exit

choice.case:                                      ; preds = %choice.then
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._21, align 8
  store ptr %payload.ptr, ptr %var.a, align 8
  %var.load22 = load ptr, ptr %var.a, align 8
  %fld.gep23 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load22, i32 0, i32 6
  %fld.load24 = load i1, ptr %fld.gep23, align 1
  br i1 %fld.load24, label %choice.then25, label %choice.else26

choice.next:                                      ; preds = %choice.then
  br label %choice.exit20

choice.then25:                                    ; preds = %choice.case
  %var.load28 = load ptr, ptr %var.a, align 8
  %fld.gep29 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load28, i32 0, i32 0
  %fld.load30 = load ptr, ptr %fld.gep29, align 8
  br label %choice.exit27

choice.else26:                                    ; preds = %choice.case
  br label %choice.exit27

choice.exit27:                                    ; preds = %choice.else26, %choice.then25
  %choice.res = phi ptr [ %fld.load30, %choice.then25 ], [ @str.3.struct, %choice.else26 ]
  br label %choice.exit20
}

define ptr @"tast::mk_typed_member"(ptr %0, ptr %1, i64 %2, ptr %3, ptr %4, ptr %5, i64 %6, i64 %7) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.field_name = alloca ptr, align 8
  %var.target = alloca ptr, align 8
  store ptr %0, ptr %var.target, align 8
  store ptr %1, ptr %var.field_name, align 8
  store i64 %2, ptr %var.idx, align 8
  store ptr %3, ptr %var.ut, align 8
  store ptr %4, ptr %var.ti, align 8
  store ptr %5, ptr %var.lay, align 8
  store i64 %6, ptr %var.line, align 8
  store i64 %7, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 11, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.target, align 8
  %var.load1 = load ptr, ptr %var.field_name, align 8
  %var.load2 = load i64, ptr %var.idx, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %rec.alloc, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld, ptr align 1 %var.load, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld4 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 %var.load2, ptr %rec.fld5, align 8
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %var.load6 = load ptr, ptr %var.ut, align 8
  %var.load7 = load ptr, ptr %var.ti, align 8
  %var.load8 = load ptr, ptr %var.lay, align 8
  %var.load9 = load i64, ptr %var.line, align 8
  %var.load10 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load6, ptr %var.load7, ptr %var.load8, i64 %var.load9, i64 %var.load10)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_cycle"(ptr %0, ptr %1, ptr %2, i1 %3, ptr %4, ptr %5, ptr %6, i64 %7, i64 %8) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.is_rune = alloca i1, align 1
  %var.esc = alloca ptr, align 8
  %var.body_fn = alloca ptr, align 8
  %var.iterable = alloca ptr, align 8
  store ptr %0, ptr %var.iterable, align 8
  store ptr %1, ptr %var.body_fn, align 8
  store ptr %2, ptr %var.esc, align 8
  store i1 %3, ptr %var.is_rune, align 1
  store ptr %4, ptr %var.ut, align 8
  store ptr %5, ptr %var.ti, align 8
  store ptr %6, ptr %var.lay, align 8
  store i64 %7, ptr %var.line, align 8
  store i64 %8, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 19, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.iterable, align 8
  %var.load1 = load ptr, ptr %var.body_fn, align 8
  %var.load2 = load ptr, ptr %var.esc, align 8
  %var.load3 = load i1, ptr %var.is_rune, align 1
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld, ptr align 1 %var.load, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld5 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld5, ptr align 1 %var.load1, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld6 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load2, ptr %rec.fld6, align 8
  %rec.fld7 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %var.load3, ptr %rec.fld7, align 1
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %var.load8 = load ptr, ptr %var.ut, align 8
  %var.load9 = load ptr, ptr %var.ti, align 8
  %var.load10 = load ptr, ptr %var.lay, align 8
  %var.load11 = load i64, ptr %var.line, align 8
  %var.load12 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load8, ptr %var.load9, ptr %var.load10, i64 %var.load11, i64 %var.load12)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_copy"(ptr %0, ptr %1, ptr %2, ptr %3, i64 %4, i64 %5) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.expr = alloca ptr, align 8
  store ptr %0, ptr %var.expr, align 8
  store ptr %1, ptr %var.ut, align 8
  store ptr %2, ptr %var.ti, align 8
  store ptr %3, ptr %var.lay, align 8
  store i64 %4, ptr %var.line, align 8
  store i64 %5, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 25, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.expr, align 8
  store ptr %var.load, ptr %pay.gep, align 8
  %var.load1 = load ptr, ptr %var.ut, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %var.load3 = load ptr, ptr %var.lay, align 8
  %var.load4 = load i64, ptr %var.line, align 8
  %var.load5 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load1, ptr %var.load2, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_builder_new"(ptr %0, ptr %1, ptr %2, ptr %3, i64 %4, i64 %5) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.cap = alloca ptr, align 8
  store ptr %0, ptr %var.cap, align 8
  store ptr %1, ptr %var.ut, align 8
  store ptr %2, ptr %var.ti, align 8
  store ptr %3, ptr %var.lay, align 8
  store i64 %4, ptr %var.line, align 8
  store i64 %5, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 23, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.cap, align 8
  store ptr %var.load, ptr %pay.gep, align 8
  %var.load1 = load ptr, ptr %var.ut, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %var.load3 = load ptr, ptr %var.lay, align 8
  %var.load4 = load i64, ptr %var.line, align 8
  %var.load5 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load1, ptr %var.load2, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_cycle_jump"(i1 %0, i64 %1, i64 %2, i64 %3) #2 {
entry:
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.level = alloca i64, align 8
  %var.is_break = alloca i1, align 1
  store i1 %0, ptr %var.is_break, align 1
  store i64 %1, ptr %var.level, align 8
  store i64 %2, ptr %var.line, align 8
  store i64 %3, ptr %var.col, align 8
  %call.res = call ptr @"unify::prim_unit"()
  store ptr %call.res, ptr %var.ut, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %arena.cur1 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc2 = call ptr @dva_arena_alloc(ptr %arena.cur1, i64 16)
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 0
  store i64 16, ptr %tag.gep3, align 8
  %pay.gep4 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc2, i32 0, i32 1
  store ptr null, ptr %pay.gep4, align 8
  store ptr %enum.alloc2, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.ti, align 8
  %call.res5 = call ptr @"tast::layout_void"()
  store ptr %call.res5, ptr %var.lay, align 8
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 16)
  %tag.gep8 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 0
  store i64 20, ptr %tag.gep8, align 8
  %pay.gep9 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc7, i32 0, i32 1
  %var.load = load i1, ptr %var.is_break, align 1
  %var.load10 = load i64, ptr %var.level, align 8
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 ptrtoint (ptr getelementptr ({ i1, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i1, i64 }, ptr %rec.alloc, i32 0, i32 0
  store i1 %var.load, ptr %rec.fld, align 1
  %rec.fld12 = getelementptr inbounds { i1, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load10, ptr %rec.fld12, align 8
  store ptr %rec.alloc, ptr %pay.gep9, align 8
  %var.load13 = load ptr, ptr %var.ut, align 8
  %var.load14 = load ptr, ptr %var.ti, align 8
  %var.load15 = load ptr, ptr %var.lay, align 8
  %var.load16 = load i64, ptr %var.line, align 8
  %var.load17 = load i64, ptr %var.col, align 8
  %call.res18 = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc7, ptr %var.load13, ptr %var.load14, ptr %var.load15, i64 %var.load16, i64 %var.load17)
  ret ptr %call.res18
}

define ptr @"tast::mk_typed_raw_memory"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, i64 %5, i64 %6) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.vt = alloca ptr, align 8
  %var.addr = alloca ptr, align 8
  store ptr %0, ptr %var.addr, align 8
  store ptr %1, ptr %var.vt, align 8
  store ptr %2, ptr %var.ut, align 8
  store ptr %3, ptr %var.ti, align 8
  store ptr %4, ptr %var.lay, align 8
  store i64 %5, ptr %var.line, align 8
  store i64 %6, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 26, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.addr, align 8
  %var.load1 = load ptr, ptr %var.vt, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld, ptr align 1 %var.load, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld3 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld3, align 8
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %var.load4 = load ptr, ptr %var.ut, align 8
  %var.load5 = load ptr, ptr %var.ti, align 8
  %var.load6 = load ptr, ptr %var.lay, align 8
  %var.load7 = load i64, ptr %var.line, align 8
  %var.load8 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load4, ptr %var.load5, ptr %var.load6, i64 %var.load7, i64 %var.load8)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_ram_construct"(ptr %0, i1 %1, ptr %2, ptr %3, ptr %4, ptr %5, i64 %6, i64 %7) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.target_opt = alloca ptr, align 8
  %var.is_pos = alloca i1, align 1
  %var.rsh = alloca ptr, align 8
  store ptr %0, ptr %var.rsh, align 8
  store i1 %1, ptr %var.is_pos, align 1
  store ptr %2, ptr %var.target_opt, align 8
  store ptr %3, ptr %var.ut, align 8
  store ptr %4, ptr %var.ti, align 8
  store ptr %5, ptr %var.lay, align 8
  store i64 %6, ptr %var.line, align 8
  store i64 %7, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 21, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.rsh, align 8
  %var.load1 = load i1, ptr %var.is_pos, align 1
  %var.load2 = load ptr, ptr %var.target_opt, align 8
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i1 %var.load1, ptr %rec.fld4, align 1
  %rec.fld5 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %var.load2, ptr %rec.fld5, align 8
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %var.load6 = load ptr, ptr %var.ut, align 8
  %var.load7 = load ptr, ptr %var.ti, align 8
  %var.load8 = load ptr, ptr %var.lay, align 8
  %var.load9 = load i64, ptr %var.line, align 8
  %var.load10 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load6, ptr %var.load7, ptr %var.load8, i64 %var.load9, i64 %var.load10)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_enum_construct"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, i64 %5, i64 %6) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.target_opt = alloca ptr, align 8
  %var.name = alloca ptr, align 8
  store ptr %0, ptr %var.name, align 8
  store ptr %1, ptr %var.target_opt, align 8
  store ptr %2, ptr %var.ut, align 8
  store ptr %3, ptr %var.ti, align 8
  store ptr %4, ptr %var.lay, align 8
  store i64 %5, ptr %var.line, align 8
  store i64 %6, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 22, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.name, align 8
  %var.load1 = load ptr, ptr %var.target_opt, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load, ptr %rec.fld, align 8
  %rec.fld3 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %var.load1, ptr %rec.fld3, align 8
  store ptr %rec.alloc, ptr %pay.gep, align 8
  %var.load4 = load ptr, ptr %var.ut, align 8
  %var.load5 = load ptr, ptr %var.ti, align 8
  %var.load6 = load ptr, ptr %var.lay, align 8
  %var.load7 = load i64, ptr %var.line, align 8
  %var.load8 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load4, ptr %var.load5, ptr %var.load6, i64 %var.load7, i64 %var.load8)
  ret ptr %call.res
}

define ptr @"tast::mk_typed_return"(ptr %0, ptr %1, ptr %2, ptr %3, i64 %4, i64 %5) #2 {
entry:
  %var.col = alloca i64, align 8
  %var.line = alloca i64, align 8
  %var.lay = alloca ptr, align 8
  %var.ti = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.val_opt = alloca ptr, align 8
  store ptr %0, ptr %var.val_opt, align 8
  store ptr %1, ptr %var.ut, align 8
  store ptr %2, ptr %var.ti, align 8
  store ptr %3, ptr %var.lay, align 8
  store i64 %4, ptr %var.line, align 8
  store i64 %5, ptr %var.col, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 34, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.val_opt, align 8
  store ptr %var.load, ptr %pay.gep, align 8
  %var.load1 = load ptr, ptr %var.ut, align 8
  %var.load2 = load ptr, ptr %var.ti, align 8
  %var.load3 = load ptr, ptr %var.lay, align 8
  %var.load4 = load i64, ptr %var.line, align 8
  %var.load5 = load i64, ptr %var.col, align 8
  %call.res = call ptr @"tast::mk_typed_expr"(ptr %enum.alloc, ptr %var.load1, ptr %var.load2, ptr %var.load3, i64 %var.load4, i64 %var.load5)
  ret ptr %call.res
}

attributes #0 = { alwaysinline "nounwind" }
attributes #1 = { noinline "nounwind" }
attributes #2 = { "nounwind" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
