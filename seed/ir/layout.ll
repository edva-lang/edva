; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64 }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@"var.ast::cell_var_names" = external global ptr
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"layout::align_up", ptr null }
@"var.layout::align_up" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"layout::compute_prim_layout", ptr null }
@"var.layout::compute_prim_layout" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"layout::is_niche_utype", ptr null }
@"var.layout::is_niche_utype" = global ptr null
@str.0 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.0 }
@str.1 = internal unnamed_addr constant [11 x i8] c"layout.dva\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 10, ptr @str.1 }
@str.2 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.2 }
@str.3 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.3 }
@clo.const.3 = internal constant { ptr, ptr } { ptr @"layout::compute_layout", ptr null }
@"var.layout::compute_layout" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_layout, ptr null }]

declare i32 @printf(ptr, ...)

declare ptr @dva_arena_current()

declare ptr @dva_arena_set_current(ptr)

declare ptr @malloc(i64)

declare void @free(ptr)

declare i64 @write(i32, ptr, i64)

declare void @exit(i32)

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

declare void @dva_arena_init(ptr, i64)

declare ptr @dva_arena_alloc(ptr, i64)

declare void @dva_arena_destroy(ptr)

declare i64 @dva_arena_save(ptr)

declare void @dva_arena_restore(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @strlen(ptr)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_layout() #1 {
entry:
  store ptr @clo.const, ptr @"var.layout::align_up", align 8
  store ptr @clo.const.1, ptr @"var.layout::compute_prim_layout", align 8
  store ptr @clo.const.2, ptr @"var.layout::is_niche_utype", align 8
  store ptr @clo.const.3, ptr @"var.layout::compute_layout", align 8
  ret void
}

define i64 @"layout::align_up"(i64 %0, i64 %1) #1 {
entry:
  %var.align = alloca i64, align 8
  %var.offset = alloca i64, align 8
  store i64 %0, ptr %var.offset, align 8
  store i64 %1, ptr %var.align, align 8
  %var.load = load i64, ptr %var.align, align 8
  %cmptmp = icmp sle i64 %var.load, 1
  br i1 %cmptmp, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  %var.load1 = load i64, ptr %var.offset, align 8
  br label %choice.exit

choice.else:                                      ; preds = %entry
  %var.load2 = load i64, ptr %var.offset, align 8
  %var.load3 = load i64, ptr %var.align, align 8
  %addtmp = add i64 %var.load2, %var.load3
  %subtmp = sub i64 %addtmp, 1
  %var.load4 = load i64, ptr %var.align, align 8
  %div.is.zero = icmp eq i64 %var.load4, 0
  br i1 %div.is.zero, label %div.zero_abort, label %div.not_zero

choice.exit:                                      ; preds = %div.ok, %choice.then
  %choice.res = phi i64 [ %var.load1, %choice.then ], [ %multmp, %div.ok ]
  ret i64 %choice.res

div.not_zero:                                     ; preds = %div.zero_abort, %choice.else
  %div.is.min = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load4, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.else
  %2 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  br label %div.not_zero

div.ok:                                           ; preds = %div.ovf_abort, %div.not_zero
  %divtmp = sdiv i64 %subtmp, %var.load4
  %var.load5 = load i64, ptr %var.align, align 8
  %multmp = mul i64 %divtmp, %var.load5
  br label %choice.exit

div.ovf_abort:                                    ; preds = %div.not_zero
  %3 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  br label %div.ok
}

define ptr @"layout::compute_prim_layout"(ptr %0) #1 {
entry:
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next98, %choice.case97, %choice.case91, %choice.case85, %choice.case79, %choice.case73, %choice.case67, %choice.case61, %choice.case55, %choice.case49, %choice.case43, %choice.case37, %choice.case31, %choice.case25, %choice.case19, %choice.case13, %choice.case7, %choice.case1, %choice.case
  %choice.res = phi ptr [ %call.res, %choice.case ], [ %call.res6, %choice.case1 ], [ %call.res12, %choice.case7 ], [ %call.res18, %choice.case13 ], [ %call.res24, %choice.case19 ], [ %call.res30, %choice.case25 ], [ %call.res36, %choice.case31 ], [ %call.res42, %choice.case37 ], [ %call.res48, %choice.case43 ], [ %call.res54, %choice.case49 ], [ %call.res60, %choice.case55 ], [ %call.res66, %choice.case61 ], [ %call.res72, %choice.case67 ], [ %call.res78, %choice.case73 ], [ %call.res84, %choice.case79 ], [ %call.res90, %choice.case85 ], [ %call.res96, %choice.case91 ], [ %call.res102, %choice.case97 ], [ %call.res103, %choice.next98 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %call.res = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep3 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id4 = load i64, ptr %tag.gep3, align 8
  %tag.match5 = icmp eq i64 %tag.id4, 1
  br i1 %tag.match5, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  %call.res6 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %tag.gep9 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id10 = load i64, ptr %tag.gep9, align 8
  %tag.match11 = icmp eq i64 %tag.id10, 2
  br i1 %tag.match11, label %choice.case7, label %choice.next8

choice.case7:                                     ; preds = %choice.next2
  %call.res12 = call ptr @"tast::layout_scalar"(i64 2, i64 2)
  br label %choice.exit

choice.next8:                                     ; preds = %choice.next2
  %tag.gep15 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id16 = load i64, ptr %tag.gep15, align 8
  %tag.match17 = icmp eq i64 %tag.id16, 3
  br i1 %tag.match17, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next8
  %call.res18 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit

choice.next14:                                    ; preds = %choice.next8
  %tag.gep21 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id22 = load i64, ptr %tag.gep21, align 8
  %tag.match23 = icmp eq i64 %tag.id22, 4
  br i1 %tag.match23, label %choice.case19, label %choice.next20

choice.case19:                                    ; preds = %choice.next14
  %call.res24 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit

choice.next20:                                    ; preds = %choice.next14
  %tag.gep27 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id28 = load i64, ptr %tag.gep27, align 8
  %tag.match29 = icmp eq i64 %tag.id28, 5
  br i1 %tag.match29, label %choice.case25, label %choice.next26

choice.case25:                                    ; preds = %choice.next20
  %call.res30 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit

choice.next26:                                    ; preds = %choice.next20
  %tag.gep33 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id34 = load i64, ptr %tag.gep33, align 8
  %tag.match35 = icmp eq i64 %tag.id34, 6
  br i1 %tag.match35, label %choice.case31, label %choice.next32

choice.case31:                                    ; preds = %choice.next26
  %call.res36 = call ptr @"tast::layout_scalar"(i64 2, i64 2)
  br label %choice.exit

choice.next32:                                    ; preds = %choice.next26
  %tag.gep39 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id40 = load i64, ptr %tag.gep39, align 8
  %tag.match41 = icmp eq i64 %tag.id40, 7
  br i1 %tag.match41, label %choice.case37, label %choice.next38

choice.case37:                                    ; preds = %choice.next32
  %call.res42 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit

choice.next38:                                    ; preds = %choice.next32
  %tag.gep45 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id46 = load i64, ptr %tag.gep45, align 8
  %tag.match47 = icmp eq i64 %tag.id46, 8
  br i1 %tag.match47, label %choice.case43, label %choice.next44

choice.case43:                                    ; preds = %choice.next38
  %call.res48 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit

choice.next44:                                    ; preds = %choice.next38
  %tag.gep51 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id52 = load i64, ptr %tag.gep51, align 8
  %tag.match53 = icmp eq i64 %tag.id52, 9
  br i1 %tag.match53, label %choice.case49, label %choice.next50

choice.case49:                                    ; preds = %choice.next44
  %call.res54 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit

choice.next50:                                    ; preds = %choice.next44
  %tag.gep57 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id58 = load i64, ptr %tag.gep57, align 8
  %tag.match59 = icmp eq i64 %tag.id58, 10
  br i1 %tag.match59, label %choice.case55, label %choice.next56

choice.case55:                                    ; preds = %choice.next50
  %call.res60 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit

choice.next56:                                    ; preds = %choice.next50
  %tag.gep63 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id64 = load i64, ptr %tag.gep63, align 8
  %tag.match65 = icmp eq i64 %tag.id64, 11
  br i1 %tag.match65, label %choice.case61, label %choice.next62

choice.case61:                                    ; preds = %choice.next56
  %call.res66 = call ptr @"tast::layout_scalar"(i64 16, i64 8)
  br label %choice.exit

choice.next62:                                    ; preds = %choice.next56
  %tag.gep69 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id70 = load i64, ptr %tag.gep69, align 8
  %tag.match71 = icmp eq i64 %tag.id70, 12
  br i1 %tag.match71, label %choice.case67, label %choice.next68

choice.case67:                                    ; preds = %choice.next62
  %call.res72 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit

choice.next68:                                    ; preds = %choice.next62
  %tag.gep75 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id76 = load i64, ptr %tag.gep75, align 8
  %tag.match77 = icmp eq i64 %tag.id76, 13
  br i1 %tag.match77, label %choice.case73, label %choice.next74

choice.case73:                                    ; preds = %choice.next68
  %call.res78 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit

choice.next74:                                    ; preds = %choice.next68
  %tag.gep81 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id82 = load i64, ptr %tag.gep81, align 8
  %tag.match83 = icmp eq i64 %tag.id82, 14
  br i1 %tag.match83, label %choice.case79, label %choice.next80

choice.case79:                                    ; preds = %choice.next74
  %call.res84 = call ptr @"tast::layout_void"()
  br label %choice.exit

choice.next80:                                    ; preds = %choice.next74
  %tag.gep87 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id88 = load i64, ptr %tag.gep87, align 8
  %tag.match89 = icmp eq i64 %tag.id88, 15
  br i1 %tag.match89, label %choice.case85, label %choice.next86

choice.case85:                                    ; preds = %choice.next80
  %call.res90 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit

choice.next86:                                    ; preds = %choice.next80
  %tag.gep93 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id94 = load i64, ptr %tag.gep93, align 8
  %tag.match95 = icmp eq i64 %tag.id94, 16
  br i1 %tag.match95, label %choice.case91, label %choice.next92

choice.case91:                                    ; preds = %choice.next86
  %call.res96 = call ptr @"tast::layout_scalar"(i64 24, i64 8)
  br label %choice.exit

choice.next92:                                    ; preds = %choice.next86
  %tag.gep99 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id100 = load i64, ptr %tag.gep99, align 8
  %tag.match101 = icmp eq i64 %tag.id100, 17
  br i1 %tag.match101, label %choice.case97, label %choice.next98

choice.case97:                                    ; preds = %choice.next92
  %call.res102 = call ptr @"tast::layout_aggregate"(i64 48, i64 8)
  br label %choice.exit

choice.next98:                                    ; preds = %choice.next92
  %call.res103 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit
}

declare ptr @"tast::layout_scalar"(i64, i64) #1

declare ptr @"tast::layout_void"() #1

declare ptr @"tast::layout_aggregate"(i64, i64) #1

define i1 @"layout::is_niche_utype"(ptr %0, ptr %1) #1 {
entry:
  %var.r = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.ut, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load1 = load ptr, ptr %var.ut, align 8
  %call.res = call ptr @"unify::canon"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.c, align 8
  %var.load2 = load ptr, ptr %var.c, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next11, %a.after, %choice.exit4
  %choice.res21 = phi i1 [ %choice.res, %choice.exit4 ], [ %cmptmp, %a.after ], [ false, %choice.next11 ]
  ret i1 %choice.res21

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 11
  br i1 %tag.match9, label %choice.case5, label %choice.next6

choice.next:                                      ; preds = %entry
  %tag.gep12 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id13 = load i64, ptr %tag.gep12, align 8
  %tag.match14 = icmp eq i64 %tag.id13, 3
  br i1 %tag.match14, label %choice.case10, label %choice.next11

choice.exit4:                                     ; preds = %choice.next6, %choice.case5
  %choice.res = phi i1 [ true, %choice.case5 ], [ false, %choice.next6 ]
  br label %choice.exit

choice.case5:                                     ; preds = %choice.case
  br label %choice.exit4

choice.next6:                                     ; preds = %choice.case
  br label %choice.exit4

choice.case10:                                    ; preds = %choice.next
  %pay.gep15 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr16 = load ptr, ptr %pay.gep15, align 8
  store ptr %payload.ptr16, ptr %var.r, align 8
  %var.load17 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next11:                                    ; preds = %choice.next
  br label %choice.exit

a.create:                                         ; preds = %choice.case10
  %arena.cur = call ptr @dva_arena_current()
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur19 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create18, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case10
  %a.load2 = load ptr, ptr %var.r, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query20 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query20, 0
  br label %choice.exit
}

declare ptr @"unify::canon"(ptr, ptr) #1

define ptr @"layout::compute_layout"(ptr %0, ptr %1) #1 {
entry:
  %var._215 = alloca ptr, align 8
  %var.e_align = alloca i64, align 8
  %var.elay = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._167 = alloca ptr, align 8
  %var.has_n = alloca i1, align 1
  %var.has_p = alloca i1, align 1
  %var.r106 = alloca ptr, align 8
  %var.total_size = alloca i64, align 8
  %var.f_align = alloca i64, align 8
  %var.flay = alloca ptr, align 8
  %var.f = alloca ptr, align 8
  %var._59 = alloca ptr, align 8
  %var._56 = alloca ptr, align 8
  %var._24 = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.i = alloca i64, align 8
  %loop.step.0 = alloca i64, align 8
  %loop.idx.0 = alloca i64, align 8
  %"var.max_align'" = alloca i64, align 8
  %"var.cur_off'" = alloca i64, align 8
  %var.r = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var.ut = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.ut, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load1 = load ptr, ptr %var.ut, align 8
  %call.res = call ptr @"unify::canon"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.c, align 8
  %var.load2 = load ptr, ptr %var.c, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next209, %choice.case208, %choice.exit187, %choice.case160, %choice.exit119, %loop.exit.0, %choice.case5, %choice.case
  %choice.res226 = phi ptr [ %call.res4, %choice.case ], [ %call.res12, %choice.case5 ], [ %call.res98, %loop.exit.0 ], [ %choice.res159, %choice.exit119 ], [ %call.res168, %choice.case160 ], [ %rec.alloc204, %choice.exit187 ], [ %rec.alloc221, %choice.case208 ], [ %call.res225, %choice.next209 ]
  ret ptr %choice.res226

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %call.res4 = call ptr @"layout::compute_prim_layout"(ptr %var.load3)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 2
  br i1 %tag.match9, label %choice.case5, label %choice.next6

choice.case5:                                     ; preds = %choice.next
  %pay.gep10 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr11 = load ptr, ptr %pay.gep10, align 8
  store ptr %payload.ptr11, ptr %var._, align 8
  %call.res12 = call ptr @"tast::layout_closure"()
  br label %choice.exit

choice.next6:                                     ; preds = %choice.next
  %tag.gep15 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id16 = load i64, ptr %tag.gep15, align 8
  %tag.match17 = icmp eq i64 %tag.id16, 3
  br i1 %tag.match17, label %choice.case13, label %choice.next14

choice.case13:                                    ; preds = %choice.next6
  %pay.gep18 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr19 = load ptr, ptr %pay.gep18, align 8
  store ptr %payload.ptr19, ptr %var.r, align 8
  store i64 0, ptr %"var.cur_off'", align 8
  store i64 1, ptr %"var.max_align'", align 8
  %var.load20 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next14:                                    ; preds = %choice.next6
  %tag.gep101 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id102 = load i64, ptr %tag.gep101, align 8
  %tag.match103 = icmp eq i64 %tag.id102, 4
  br i1 %tag.match103, label %choice.case99, label %choice.next100

a.create:                                         ; preds = %choice.case13
  %arena.cur = call ptr @dva_arena_current()
  %a.create21 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur22 = call ptr @dva_arena_current()
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur22, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create21, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create21, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case13
  %a.load2 = load ptr, ptr %var.r, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query23 = load i64, ptr %a.len.query, align 8
  store i64 0, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.header.0:                                    ; preds = %loop.latch.0, %a.after
  %counter.load = load i64, ptr %loop.idx.0, align 8
  %loop.cond = icmp slt i64 %counter.load, %a.len.query23
  br i1 %loop.cond, label %loop.body.0, label %loop.exit.nat.0

loop.body.0:                                      ; preds = %loop.header.0
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.0, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._24, align 8
  store i64 %counter.load, ptr %var.i, align 8
  %var.load25 = load ptr, ptr %var.r, align 8
  %a.load26 = load ptr, ptr %var.r, align 8
  %a.null27 = icmp eq ptr %a.load26, null
  br i1 %a.null27, label %a.create28, label %a.after29

loop.exit.nat.0:                                  ; preds = %loop.header.0
  br label %loop.exit.0

loop.latch.0:                                     ; preds = %choice.exit83
  %step.val = load i64, ptr %loop.step.0, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.0, align 8
  br label %loop.header.0

loop.exit.0:                                      ; preds = %loop.exit.nat.0
  %var.load93 = load i64, ptr %"var.cur_off'", align 8
  %var.load94 = load i64, ptr %"var.max_align'", align 8
  %call.res95 = call i64 @"layout::align_up"(i64 %var.load93, i64 %var.load94)
  store i64 %call.res95, ptr %var.total_size, align 8
  %var.load96 = load i64, ptr %var.total_size, align 8
  %var.load97 = load i64, ptr %"var.max_align'", align 8
  %call.res98 = call ptr @"tast::layout_aggregate"(i64 %var.load96, i64 %var.load97)
  br label %choice.exit

a.create28:                                       ; preds = %loop.body.0
  %arena.cur30 = call ptr @dva_arena_current()
  %a.create31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 24)
  %arena.cur32 = call ptr @dva_arena_current()
  %a.buf33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 128)
  %a.len.gep34 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 0
  store i64 0, ptr %a.len.gep34, align 8
  %a.data.gep35 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 1
  store ptr %a.buf33, ptr %a.data.gep35, align 8
  %a.cap.gep36 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create31, i32 0, i32 2
  store i64 16, ptr %a.cap.gep36, align 8
  store ptr %a.create31, ptr %var.r, align 8
  br label %a.after29

a.after29:                                        ; preds = %a.create28, %loop.body.0
  %a.load237 = load ptr, ptr %var.r, align 8
  %var.load38 = load i64, ptr %var.i, align 8
  %a.rd.nonnull = icmp ne ptr %a.load237, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after29
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 0
  %a.rd.len39 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load38, 0
  %a.rd.lt = icmp slt i64 %var.load38, %a.rd.len39
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load237, i32 0, i32 1
  %a.rd.data40 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data40, i64 %var.load38
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after29
  %arena.cur41 = call ptr @dva_arena_current()
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 59, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 22, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur42 = call ptr @dva_arena_current()
  %err.alloc43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 56)
  %err.code.gep44 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 0
  store i64 4011, ptr %err.code.gep44, align 8
  %err.msg.gep45 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 1
  store ptr @str.2.struct, ptr %err.msg.gep45, align 8
  %err.file.gep46 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep46, align 8
  %err.line.gep47 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 3
  store i64 59, ptr %err.line.gep47, align 8
  %err.col.gep48 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 4
  store i64 22, ptr %err.col.gep48, align 8
  %err.ctx.gep49 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc43, i32 0, i32 5
  %err.ctx0.gep50 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep49, i32 0, i32 0
  store i64 %var.load38, ptr %err.ctx0.gep50, align 8
  %err.ctx1.gep51 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep49, i32 0, i32 1
  store i64 %a.rd.len39, ptr %err.ctx1.gep51, align 8
  %err.p2i52 = ptrtoint ptr %err.alloc43 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i52, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %ram.tag53 = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %ram.tag53, label %choice.then, label %choice.else

choice.then:                                      ; preds = %a.rd.done
  %ram.pay55 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %ram.pay55 to ptr
  store ptr %pay.ptr, ptr %var._56, align 8
  br label %choice.exit54

choice.else:                                      ; preds = %a.rd.done
  %ram.pay57 = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr58 = inttoptr i64 %ram.pay57 to ptr
  store ptr %pay.ptr58, ptr %var._59, align 8
  %arena.cur60 = call ptr @dva_arena_current()
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 16)
  %tag.gep61 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 9, ptr %tag.gep61, align 8
  %pay.gep62 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep62, align 8
  %arena.cur63 = call ptr @dva_arena_current()
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur63, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 0
  store ptr @str.3.struct, ptr %rec.fld, align 8
  %rec.fld64 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %enum.alloc, ptr %rec.fld64, align 8
  br label %choice.exit54

choice.exit54:                                    ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %pay.ptr, %choice.then ], [ %rec.alloc, %choice.else ]
  store ptr %choice.res, ptr %var.f, align 8
  %var.load65 = load ptr, ptr %var.ctx, align 8
  %var.load66 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr }, ptr %var.load66, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res67 = call ptr @"layout::compute_layout"(ptr %var.load65, ptr %fld.load)
  store ptr %call.res67, ptr %var.flay, align 8
  %var.load68 = load ptr, ptr %var.flay, align 8
  %fld.gep69 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load68, i32 0, i32 1
  %fld.load70 = load i64, ptr %fld.gep69, align 8
  %cmptmp = icmp slt i64 %fld.load70, 1
  br i1 %cmptmp, label %choice.then71, label %choice.else72

choice.then71:                                    ; preds = %choice.exit54
  br label %choice.exit73

choice.else72:                                    ; preds = %choice.exit54
  %var.load74 = load ptr, ptr %var.flay, align 8
  %fld.gep75 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load74, i32 0, i32 1
  %fld.load76 = load i64, ptr %fld.gep75, align 8
  br label %choice.exit73

choice.exit73:                                    ; preds = %choice.else72, %choice.then71
  %choice.res77 = phi i64 [ 1, %choice.then71 ], [ %fld.load76, %choice.else72 ]
  store i64 %choice.res77, ptr %var.f_align, align 8
  %var.load78 = load i64, ptr %"var.max_align'", align 8
  %var.load79 = load i64, ptr %var.f_align, align 8
  %cmptmp80 = icmp slt i64 %var.load78, %var.load79
  br i1 %cmptmp80, label %choice.then81, label %choice.else82

choice.then81:                                    ; preds = %choice.exit73
  %var.load84 = load i64, ptr %var.f_align, align 8
  br label %choice.exit83

choice.else82:                                    ; preds = %choice.exit73
  %var.load85 = load i64, ptr %"var.max_align'", align 8
  br label %choice.exit83

choice.exit83:                                    ; preds = %choice.else82, %choice.then81
  %choice.res86 = phi i64 [ %var.load84, %choice.then81 ], [ %var.load85, %choice.else82 ]
  store i64 %choice.res86, ptr %"var.max_align'", align 8
  %var.load87 = load i64, ptr %"var.cur_off'", align 8
  %var.load88 = load i64, ptr %var.f_align, align 8
  %call.res89 = call i64 @"layout::align_up"(i64 %var.load87, i64 %var.load88)
  %var.load90 = load ptr, ptr %var.flay, align 8
  %fld.gep91 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load90, i32 0, i32 0
  %fld.load92 = load i64, ptr %fld.gep91, align 8
  %addtmp = add i64 %call.res89, %fld.load92
  store i64 %addtmp, ptr %"var.cur_off'", align 8
  br label %loop.latch.0

choice.case99:                                    ; preds = %choice.next14
  %pay.gep104 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr105 = load ptr, ptr %pay.gep104, align 8
  store ptr %payload.ptr105, ptr %var.r106, align 8
  %var.load107 = load ptr, ptr %var.r106, align 8
  %fld.gep108 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load107, i32 0, i32 0
  %fld.gep109 = getelementptr inbounds { i1, ptr }, ptr %fld.gep108, i32 0, i32 0
  %fld.load110 = load i1, ptr %fld.gep109, align 1
  store i1 %fld.load110, ptr %var.has_p, align 1
  %var.load111 = load ptr, ptr %var.r106, align 8
  %fld.gep112 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load111, i32 0, i32 1
  %fld.gep113 = getelementptr inbounds { i1, ptr }, ptr %fld.gep112, i32 0, i32 0
  %fld.load114 = load i1, ptr %fld.gep113, align 1
  store i1 %fld.load114, ptr %var.has_n, align 1
  %var.load115 = load i1, ptr %var.has_p, align 1
  br i1 %var.load115, label %and.1.then, label %and.1.else

choice.next100:                                   ; preds = %choice.next14
  %tag.gep162 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id163 = load i64, ptr %tag.gep162, align 8
  %tag.match164 = icmp eq i64 %tag.id163, 5
  br i1 %tag.match164, label %choice.case160, label %choice.next161

and.1.then:                                       ; preds = %choice.case99
  %var.load116 = load i1, ptr %var.has_n, align 1
  %nottmp = xor i1 %var.load116, true
  br label %and.1.exit

and.1.else:                                       ; preds = %choice.case99
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %and.1.then
  %and.1.phi = phi i1 [ %nottmp, %and.1.then ], [ %var.load115, %and.1.else ]
  br i1 %and.1.phi, label %choice.then117, label %choice.else118

choice.then117:                                   ; preds = %and.1.exit
  %var.load120 = load ptr, ptr %var.ctx, align 8
  %var.load121 = load ptr, ptr %var.r106, align 8
  %fld.gep122 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load121, i32 0, i32 0
  %fld.gep123 = getelementptr inbounds { i1, ptr }, ptr %fld.gep122, i32 0, i32 1
  %fld.load124 = load ptr, ptr %fld.gep123, align 8
  %call.res125 = call i1 @"layout::is_niche_utype"(ptr %var.load120, ptr %fld.load124)
  br i1 %call.res125, label %choice.then126, label %choice.else127

choice.else118:                                   ; preds = %and.1.exit
  %var.load132 = load i1, ptr %var.has_p, align 1
  %nottmp133 = xor i1 %var.load132, true
  br i1 %nottmp133, label %and.2.then, label %and.2.else

choice.exit119:                                   ; preds = %choice.exit137, %choice.exit128
  %choice.res159 = phi ptr [ %choice.res131, %choice.exit128 ], [ %choice.res158, %choice.exit137 ]
  br label %choice.exit

choice.then126:                                   ; preds = %choice.then117
  %call.res129 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit128

choice.else127:                                   ; preds = %choice.then117
  %call.res130 = call ptr @"tast::layout_ram"(i64 16, i64 8)
  br label %choice.exit128

choice.exit128:                                   ; preds = %choice.else127, %choice.then126
  %choice.res131 = phi ptr [ %call.res129, %choice.then126 ], [ %call.res130, %choice.else127 ]
  br label %choice.exit119

and.2.then:                                       ; preds = %choice.else118
  %var.load134 = load i1, ptr %var.has_n, align 1
  br label %and.2.exit

and.2.else:                                       ; preds = %choice.else118
  br label %and.2.exit

and.2.exit:                                       ; preds = %and.2.else, %and.2.then
  %and.2.phi = phi i1 [ %var.load134, %and.2.then ], [ %nottmp133, %and.2.else ]
  br i1 %and.2.phi, label %choice.then135, label %choice.else136

choice.then135:                                   ; preds = %and.2.exit
  %var.load138 = load ptr, ptr %var.ctx, align 8
  %var.load139 = load ptr, ptr %var.r106, align 8
  %fld.gep140 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load139, i32 0, i32 1
  %fld.gep141 = getelementptr inbounds { i1, ptr }, ptr %fld.gep140, i32 0, i32 1
  %fld.load142 = load ptr, ptr %fld.gep141, align 8
  %call.res143 = call i1 @"layout::is_niche_utype"(ptr %var.load138, ptr %fld.load142)
  br i1 %call.res143, label %choice.then144, label %choice.else145

choice.else136:                                   ; preds = %and.2.exit
  %var.load150 = load i1, ptr %var.has_p, align 1
  br i1 %var.load150, label %or.3.then, label %or.3.else

choice.exit137:                                   ; preds = %choice.exit154, %choice.exit146
  %choice.res158 = phi ptr [ %choice.res149, %choice.exit146 ], [ %choice.res157, %choice.exit154 ]
  br label %choice.exit119

choice.then144:                                   ; preds = %choice.then135
  %call.res147 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit146

choice.else145:                                   ; preds = %choice.then135
  %call.res148 = call ptr @"tast::layout_ram"(i64 16, i64 8)
  br label %choice.exit146

choice.exit146:                                   ; preds = %choice.else145, %choice.then144
  %choice.res149 = phi ptr [ %call.res147, %choice.then144 ], [ %call.res148, %choice.else145 ]
  br label %choice.exit137

or.3.then:                                        ; preds = %choice.else136
  br label %or.3.exit

or.3.else:                                        ; preds = %choice.else136
  %var.load151 = load i1, ptr %var.has_n, align 1
  br label %or.3.exit

or.3.exit:                                        ; preds = %or.3.else, %or.3.then
  %or.3.phi = phi i1 [ %var.load150, %or.3.then ], [ %var.load151, %or.3.else ]
  br i1 %or.3.phi, label %choice.then152, label %choice.else153

choice.then152:                                   ; preds = %or.3.exit
  %call.res155 = call ptr @"tast::layout_ram"(i64 16, i64 8)
  br label %choice.exit154

choice.else153:                                   ; preds = %or.3.exit
  %call.res156 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit154

choice.exit154:                                   ; preds = %choice.else153, %choice.then152
  %choice.res157 = phi ptr [ %call.res155, %choice.then152 ], [ %call.res156, %choice.else153 ]
  br label %choice.exit137

choice.case160:                                   ; preds = %choice.next100
  %pay.gep165 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr166 = load ptr, ptr %pay.gep165, align 8
  store ptr %payload.ptr166, ptr %var._167, align 8
  %call.res168 = call ptr @"tast::layout_aggregate"(i64 16, i64 8)
  br label %choice.exit

choice.next161:                                   ; preds = %choice.next100
  %tag.gep171 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id172 = load i64, ptr %tag.gep171, align 8
  %tag.match173 = icmp eq i64 %tag.id172, 6
  br i1 %tag.match173, label %choice.case169, label %choice.next170

choice.case169:                                   ; preds = %choice.next161
  %pay.gep174 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr175 = load ptr, ptr %pay.gep174, align 8
  store ptr %payload.ptr175, ptr %var.a, align 8
  %var.load176 = load ptr, ptr %var.ctx, align 8
  %var.load177 = load ptr, ptr %var.a, align 8
  %fld.gep178 = getelementptr inbounds { ptr, i64 }, ptr %var.load177, i32 0, i32 0
  %fld.load179 = load ptr, ptr %fld.gep178, align 8
  %call.res180 = call ptr @"layout::compute_layout"(ptr %var.load176, ptr %fld.load179)
  store ptr %call.res180, ptr %var.elay, align 8
  %var.load181 = load ptr, ptr %var.elay, align 8
  %fld.gep182 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load181, i32 0, i32 1
  %fld.load183 = load i64, ptr %fld.gep182, align 8
  %cmptmp184 = icmp slt i64 %fld.load183, 1
  br i1 %cmptmp184, label %choice.then185, label %choice.else186

choice.next170:                                   ; preds = %choice.next161
  %tag.gep210 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id211 = load i64, ptr %tag.gep210, align 8
  %tag.match212 = icmp eq i64 %tag.id211, 7
  br i1 %tag.match212, label %choice.case208, label %choice.next209

choice.then185:                                   ; preds = %choice.case169
  br label %choice.exit187

choice.else186:                                   ; preds = %choice.case169
  %var.load188 = load ptr, ptr %var.elay, align 8
  %fld.gep189 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load188, i32 0, i32 1
  %fld.load190 = load i64, ptr %fld.gep189, align 8
  br label %choice.exit187

choice.exit187:                                   ; preds = %choice.else186, %choice.then185
  %choice.res191 = phi i64 [ 1, %choice.then185 ], [ %fld.load190, %choice.else186 ]
  store i64 %choice.res191, ptr %var.e_align, align 8
  %var.load192 = load ptr, ptr %var.elay, align 8
  %fld.gep193 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load192, i32 0, i32 0
  %fld.load194 = load i64, ptr %fld.gep193, align 8
  %var.load195 = load ptr, ptr %var.a, align 8
  %fld.gep196 = getelementptr inbounds { ptr, i64 }, ptr %var.load195, i32 0, i32 1
  %fld.load197 = load i64, ptr %fld.gep196, align 8
  %multmp = mul i64 %fld.load194, %fld.load197
  %var.load198 = load i64, ptr %var.e_align, align 8
  %arena.cur199 = call ptr @dva_arena_current()
  %enum.alloc200 = call ptr @dva_arena_alloc(ptr %arena.cur199, i64 16)
  %tag.gep201 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc200, i32 0, i32 0
  store i64 5, ptr %tag.gep201, align 8
  %pay.gep202 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc200, i32 0, i32 1
  store ptr null, ptr %pay.gep202, align 8
  %arena.cur203 = call ptr @dva_arena_current()
  %rec.alloc204 = call ptr @dva_arena_alloc(ptr %arena.cur203, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld205 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc204, i32 0, i32 0
  store i64 %multmp, ptr %rec.fld205, align 8
  %rec.fld206 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc204, i32 0, i32 1
  store i64 %var.load198, ptr %rec.fld206, align 8
  %rec.fld207 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc204, i32 0, i32 2
  store ptr %enum.alloc200, ptr %rec.fld207, align 8
  br label %choice.exit

choice.case208:                                   ; preds = %choice.next170
  %pay.gep213 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr214 = load ptr, ptr %pay.gep213, align 8
  store ptr %payload.ptr214, ptr %var._215, align 8
  %arena.cur216 = call ptr @dva_arena_current()
  %enum.alloc217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 16)
  %tag.gep218 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc217, i32 0, i32 0
  store i64 4, ptr %tag.gep218, align 8
  %pay.gep219 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc217, i32 0, i32 1
  store ptr null, ptr %pay.gep219, align 8
  %arena.cur220 = call ptr @dva_arena_current()
  %rec.alloc221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld222 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc221, i32 0, i32 0
  store i64 16, ptr %rec.fld222, align 8
  %rec.fld223 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc221, i32 0, i32 1
  store i64 8, ptr %rec.fld223, align 8
  %rec.fld224 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc221, i32 0, i32 2
  store ptr %enum.alloc217, ptr %rec.fld224, align 8
  br label %choice.exit

choice.next209:                                   ; preds = %choice.next170
  %call.res225 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit
}

declare ptr @"tast::layout_closure"() #1

declare ptr @"tast::layout_ram"(i64, i64) #1

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
