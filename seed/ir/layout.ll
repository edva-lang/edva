; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@"var.layout::target_triple" = global ptr null
@clo.const = internal constant { ptr, ptr } { ptr @"layout::set_target_triple", ptr null }
@"var.layout::set_target_triple" = global ptr null
@str.1 = internal unnamed_addr constant [7 x i8] c"wasm32\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.1 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.2 = internal unnamed_addr constant [5 x i8] c"wasm\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 4, ptr @str.2 }
@str.3 = internal unnamed_addr constant [4 x i8] c"x86\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.3 }
@str.4 = internal unnamed_addr constant [6 x i8] c"armv7\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.4 }
@str.5 = internal unnamed_addr constant [6 x i8] c"armv6\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.5 }
@str.6 = internal unnamed_addr constant [6 x i8] c"thumb\00"
@str.6.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.6 }
@str.7 = internal unnamed_addr constant [8 x i8] c"riscv32\00"
@str.7.struct = internal unnamed_addr constant { i64, ptr } { i64 7, ptr @str.7 }
@str.8 = internal unnamed_addr constant [4 x i8] c"arm\00"
@str.8.struct = internal unnamed_addr constant { i64, ptr } { i64 3, ptr @str.8 }
@clo.const.1 = internal constant { ptr, ptr } { ptr @"layout::is_32bit_triple", ptr null }
@"var.layout::is_32bit_triple" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"layout::is_32bit_target", ptr null }
@"var.layout::is_32bit_target" = global ptr null
@div_zero_msg = internal unnamed_addr constant [33 x i8] c"E4012: integer division by zero\0A\00"
@div_ovf_msg = internal unnamed_addr constant [56 x i8] c"E4013: signed integer division overflow (INT_MIN / -1)\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"layout::align_up", ptr null }
@"var.layout::align_up" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"layout::compute_prim_layout", ptr null }
@"var.layout::compute_prim_layout" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"layout::is_niche_utype", ptr null }
@"var.layout::is_niche_utype" = global ptr null
@clo.const.6 = internal constant { ptr, ptr } { ptr @"layout::classify_ram_layout", ptr null }
@"var.layout::classify_ram_layout" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"layout::compute_layout", ptr null }
@"var.layout::compute_layout" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_layout, ptr null }]

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

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #1

define internal void @__dva_global_init_layout() #2 {
entry:
  store ptr @str.0.struct, ptr @"var.layout::target_triple", align 8
  store ptr @clo.const, ptr @"var.layout::set_target_triple", align 8
  store ptr @clo.const.1, ptr @"var.layout::is_32bit_triple", align 8
  store ptr @clo.const.2, ptr @"var.layout::is_32bit_target", align 8
  store ptr @clo.const.3, ptr @"var.layout::align_up", align 8
  store ptr @clo.const.4, ptr @"var.layout::compute_prim_layout", align 8
  store ptr @clo.const.5, ptr @"var.layout::is_niche_utype", align 8
  store ptr @clo.const.6, ptr @"var.layout::classify_ram_layout", align 8
  store ptr @clo.const.7, ptr @"var.layout::compute_layout", align 8
  ret void
}

define void @"layout::set_target_triple"(ptr %0) #2 {
entry:
  %var.t = alloca ptr, align 8
  store ptr %0, ptr %var.t, align 8
  %var.load = load ptr, ptr %var.t, align 8
  store ptr %var.load, ptr @"var.layout::target_triple", align 8
  ret void
}

define i1 @"layout::is_32bit_triple"(ptr %0) #2 {
entry:
  %var.triple = alloca ptr, align 8
  store ptr %0, ptr %var.triple, align 8
  %var.load = load ptr, ptr %var.triple, align 8
  %call.res = call { i64, ptr } @"ast::triple_arch"(ptr %var.load)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len1 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  ret i1 %choice.res

choice.case:                                      ; preds = %str.eq.merge108
  br label %choice.exit

choice.next:                                      ; preds = %str.eq.merge108
  br label %choice.exit

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len3 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len2, %eq.rhs.len3
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr %eq.rhs.data, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %eq.lhs.len5 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len6 = load i64, ptr %eq.lhs.len5, align 8
  %eq.lhs.len7 = and i64 %eq.lhs.len6, 281474976710655
  %eq.rhs.len8 = load i64, ptr @str.2.struct, align 8
  %eq.rhs.len9 = and i64 %eq.rhs.len8, 281474976710655
  %eq.len10 = icmp eq i64 %eq.lhs.len7, %eq.rhs.len9
  br i1 %eq.len10, label %str.eq.then11, label %str.eq.else12

str.eq.then11:                                    ; preds = %str.eq.merge
  %eq.lhs.data14 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data15 = load ptr, ptr %eq.lhs.data14, align 8
  %eq.rhs.data16 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.2.struct, i32 0, i32 1), align 8
  %eq.memcmp17 = call i32 @memcmp(ptr %eq.lhs.data15, ptr %eq.rhs.data16, i64 %eq.lhs.len7)
  %eq.cmp.zero18 = icmp eq i32 %eq.memcmp17, 0
  br label %str.eq.merge13

str.eq.else12:                                    ; preds = %str.eq.merge
  br label %str.eq.merge13

str.eq.merge13:                                   ; preds = %str.eq.else12, %str.eq.then11
  %str.eq.result19 = phi i1 [ %eq.cmp.zero18, %str.eq.then11 ], [ false, %str.eq.else12 ]
  %case.or = or i1 %str.eq.result, %str.eq.result19
  %eq.lhs.len20 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len21 = load i64, ptr %eq.lhs.len20, align 8
  %eq.lhs.len22 = and i64 %eq.lhs.len21, 281474976710655
  %eq.rhs.len23 = load i64, ptr @str.3.struct, align 8
  %eq.rhs.len24 = and i64 %eq.rhs.len23, 281474976710655
  %eq.len25 = icmp eq i64 %eq.lhs.len22, %eq.rhs.len24
  br i1 %eq.len25, label %str.eq.then26, label %str.eq.else27

str.eq.then26:                                    ; preds = %str.eq.merge13
  %eq.lhs.data29 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data30 = load ptr, ptr %eq.lhs.data29, align 8
  %eq.rhs.data31 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.3.struct, i32 0, i32 1), align 8
  %eq.memcmp32 = call i32 @memcmp(ptr %eq.lhs.data30, ptr %eq.rhs.data31, i64 %eq.lhs.len22)
  %eq.cmp.zero33 = icmp eq i32 %eq.memcmp32, 0
  br label %str.eq.merge28

str.eq.else27:                                    ; preds = %str.eq.merge13
  br label %str.eq.merge28

str.eq.merge28:                                   ; preds = %str.eq.else27, %str.eq.then26
  %str.eq.result34 = phi i1 [ %eq.cmp.zero33, %str.eq.then26 ], [ false, %str.eq.else27 ]
  %case.or35 = or i1 %case.or, %str.eq.result34
  %eq.lhs.len36 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len37 = load i64, ptr %eq.lhs.len36, align 8
  %eq.lhs.len38 = and i64 %eq.lhs.len37, 281474976710655
  %eq.rhs.len39 = load i64, ptr @str.4.struct, align 8
  %eq.rhs.len40 = and i64 %eq.rhs.len39, 281474976710655
  %eq.len41 = icmp eq i64 %eq.lhs.len38, %eq.rhs.len40
  br i1 %eq.len41, label %str.eq.then42, label %str.eq.else43

str.eq.then42:                                    ; preds = %str.eq.merge28
  %eq.lhs.data45 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data46 = load ptr, ptr %eq.lhs.data45, align 8
  %eq.rhs.data47 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %eq.memcmp48 = call i32 @memcmp(ptr %eq.lhs.data46, ptr %eq.rhs.data47, i64 %eq.lhs.len38)
  %eq.cmp.zero49 = icmp eq i32 %eq.memcmp48, 0
  br label %str.eq.merge44

str.eq.else43:                                    ; preds = %str.eq.merge28
  br label %str.eq.merge44

str.eq.merge44:                                   ; preds = %str.eq.else43, %str.eq.then42
  %str.eq.result50 = phi i1 [ %eq.cmp.zero49, %str.eq.then42 ], [ false, %str.eq.else43 ]
  %case.or51 = or i1 %case.or35, %str.eq.result50
  %eq.lhs.len52 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len53 = load i64, ptr %eq.lhs.len52, align 8
  %eq.lhs.len54 = and i64 %eq.lhs.len53, 281474976710655
  %eq.rhs.len55 = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len56 = and i64 %eq.rhs.len55, 281474976710655
  %eq.len57 = icmp eq i64 %eq.lhs.len54, %eq.rhs.len56
  br i1 %eq.len57, label %str.eq.then58, label %str.eq.else59

str.eq.then58:                                    ; preds = %str.eq.merge44
  %eq.lhs.data61 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data62 = load ptr, ptr %eq.lhs.data61, align 8
  %eq.rhs.data63 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp64 = call i32 @memcmp(ptr %eq.lhs.data62, ptr %eq.rhs.data63, i64 %eq.lhs.len54)
  %eq.cmp.zero65 = icmp eq i32 %eq.memcmp64, 0
  br label %str.eq.merge60

str.eq.else59:                                    ; preds = %str.eq.merge44
  br label %str.eq.merge60

str.eq.merge60:                                   ; preds = %str.eq.else59, %str.eq.then58
  %str.eq.result66 = phi i1 [ %eq.cmp.zero65, %str.eq.then58 ], [ false, %str.eq.else59 ]
  %case.or67 = or i1 %case.or51, %str.eq.result66
  %eq.lhs.len68 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len69 = load i64, ptr %eq.lhs.len68, align 8
  %eq.lhs.len70 = and i64 %eq.lhs.len69, 281474976710655
  %eq.rhs.len71 = load i64, ptr @str.6.struct, align 8
  %eq.rhs.len72 = and i64 %eq.rhs.len71, 281474976710655
  %eq.len73 = icmp eq i64 %eq.lhs.len70, %eq.rhs.len72
  br i1 %eq.len73, label %str.eq.then74, label %str.eq.else75

str.eq.then74:                                    ; preds = %str.eq.merge60
  %eq.lhs.data77 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data78 = load ptr, ptr %eq.lhs.data77, align 8
  %eq.rhs.data79 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.6.struct, i32 0, i32 1), align 8
  %eq.memcmp80 = call i32 @memcmp(ptr %eq.lhs.data78, ptr %eq.rhs.data79, i64 %eq.lhs.len70)
  %eq.cmp.zero81 = icmp eq i32 %eq.memcmp80, 0
  br label %str.eq.merge76

str.eq.else75:                                    ; preds = %str.eq.merge60
  br label %str.eq.merge76

str.eq.merge76:                                   ; preds = %str.eq.else75, %str.eq.then74
  %str.eq.result82 = phi i1 [ %eq.cmp.zero81, %str.eq.then74 ], [ false, %str.eq.else75 ]
  %case.or83 = or i1 %case.or67, %str.eq.result82
  %eq.lhs.len84 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len85 = load i64, ptr %eq.lhs.len84, align 8
  %eq.lhs.len86 = and i64 %eq.lhs.len85, 281474976710655
  %eq.rhs.len87 = load i64, ptr @str.7.struct, align 8
  %eq.rhs.len88 = and i64 %eq.rhs.len87, 281474976710655
  %eq.len89 = icmp eq i64 %eq.lhs.len86, %eq.rhs.len88
  br i1 %eq.len89, label %str.eq.then90, label %str.eq.else91

str.eq.then90:                                    ; preds = %str.eq.merge76
  %eq.lhs.data93 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data94 = load ptr, ptr %eq.lhs.data93, align 8
  %eq.rhs.data95 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.7.struct, i32 0, i32 1), align 8
  %eq.memcmp96 = call i32 @memcmp(ptr %eq.lhs.data94, ptr %eq.rhs.data95, i64 %eq.lhs.len86)
  %eq.cmp.zero97 = icmp eq i32 %eq.memcmp96, 0
  br label %str.eq.merge92

str.eq.else91:                                    ; preds = %str.eq.merge76
  br label %str.eq.merge92

str.eq.merge92:                                   ; preds = %str.eq.else91, %str.eq.then90
  %str.eq.result98 = phi i1 [ %eq.cmp.zero97, %str.eq.then90 ], [ false, %str.eq.else91 ]
  %case.or99 = or i1 %case.or83, %str.eq.result98
  %eq.lhs.len100 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len101 = load i64, ptr %eq.lhs.len100, align 8
  %eq.lhs.len102 = and i64 %eq.lhs.len101, 281474976710655
  %eq.rhs.len103 = load i64, ptr @str.8.struct, align 8
  %eq.rhs.len104 = and i64 %eq.rhs.len103, 281474976710655
  %eq.len105 = icmp eq i64 %eq.lhs.len102, %eq.rhs.len104
  br i1 %eq.len105, label %str.eq.then106, label %str.eq.else107

str.eq.then106:                                   ; preds = %str.eq.merge92
  %eq.lhs.data109 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data110 = load ptr, ptr %eq.lhs.data109, align 8
  %eq.rhs.data111 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.8.struct, i32 0, i32 1), align 8
  %eq.memcmp112 = call i32 @memcmp(ptr %eq.lhs.data110, ptr %eq.rhs.data111, i64 %eq.lhs.len102)
  %eq.cmp.zero113 = icmp eq i32 %eq.memcmp112, 0
  br label %str.eq.merge108

str.eq.else107:                                   ; preds = %str.eq.merge92
  br label %str.eq.merge108

str.eq.merge108:                                  ; preds = %str.eq.else107, %str.eq.then106
  %str.eq.result114 = phi i1 [ %eq.cmp.zero113, %str.eq.then106 ], [ false, %str.eq.else107 ]
  %case.or115 = or i1 %case.or99, %str.eq.result114
  br i1 %case.or115, label %choice.case, label %choice.next
}

declare { i64, ptr } @"ast::triple_arch"(ptr) #2

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #3 {
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
define internal void @dva_abort_stale_str_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #5

declare i32 @memcmp(ptr, ptr, i64) #2

define i1 @"layout::is_32bit_target"() #2 {
entry:
  %var.load = load ptr, ptr @"var.layout::target_triple", align 8
  %call.res = call i1 @"layout::is_32bit_triple"(ptr %var.load)
  ret i1 %call.res
}

define i64 @"layout::align_up"(i64 %0, i64 %1) #2 {
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
  br i1 %div.is.zero, label %div.zero_abort, label %div.notzero

choice.exit:                                      ; preds = %div.ok, %choice.then
  %choice.res = phi i64 [ %var.load1, %choice.then ], [ %multmp, %div.ok ]
  ret i64 %choice.res

div.notzero:                                      ; preds = %abort.dead, %choice.else
  %div.is.min = icmp eq i64 %subtmp, -9223372036854775808
  %div.is.negone = icmp eq i64 %var.load4, -1
  %div.is.ovf = and i1 %div.is.min, %div.is.negone
  br i1 %div.is.ovf, label %div.ovf_abort, label %div.ok

div.zero_abort:                                   ; preds = %choice.else
  call void @dva_abort_div_zero_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %div.notzero

div.ok:                                           ; preds = %abort.dead5, %div.notzero
  %divtmp = sdiv i64 %subtmp, %var.load4
  %var.load6 = load i64, ptr %var.align, align 8
  %multmp = mul i64 %divtmp, %var.load6
  br label %choice.exit

div.ovf_abort:                                    ; preds = %div.notzero
  call void @dva_abort_div_ovf_msg()
  unreachable

abort.dead5:                                      ; No predecessors!
  br label %div.ok
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_zero_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_zero_msg, i64 32)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_div_ovf_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @div_ovf_msg, i64 55)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define ptr @"layout::compute_prim_layout"(ptr %0) #2 {
entry:
  %var.ptr_align = alloca i64, align 8
  %var.ptr_sz = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  %call.res = call i1 @"layout::is_32bit_target"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 4, %choice.then ], [ 8, %choice.else ]
  store i64 %choice.res, ptr %var.ptr_sz, align 8
  %call.res1 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res1, label %choice.then2, label %choice.else3

choice.then2:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.else3:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else3, %choice.then2
  %choice.res5 = phi i64 [ 4, %choice.then2 ], [ 8, %choice.else3 ]
  store i64 %choice.res5, ptr %var.ptr_align, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit6:                                     ; preds = %choice.next113, %choice.exit120, %choice.case103, %choice.case94, %choice.case88, %choice.case82, %choice.case76, %choice.case68, %choice.case62, %choice.case56, %choice.case50, %choice.case44, %choice.case38, %choice.case32, %choice.case26, %choice.case20, %choice.case14, %choice.case8, %choice.case
  %choice.res127 = phi ptr [ %call.res7, %choice.case ], [ %call.res13, %choice.case8 ], [ %call.res19, %choice.case14 ], [ %call.res25, %choice.case20 ], [ %call.res31, %choice.case26 ], [ %call.res37, %choice.case32 ], [ %call.res43, %choice.case38 ], [ %call.res49, %choice.case44 ], [ %call.res55, %choice.case50 ], [ %call.res61, %choice.case56 ], [ %call.res67, %choice.case62 ], [ %call.res75, %choice.case68 ], [ %call.res81, %choice.case76 ], [ %call.res87, %choice.case82 ], [ %call.res93, %choice.case88 ], [ %call.res102, %choice.case94 ], [ %call.res111, %choice.case103 ], [ %choice.res123, %choice.exit120 ], [ %call.res126, %choice.next113 ]
  ret ptr %choice.res127

choice.case:                                      ; preds = %choice.exit4
  %call.res7 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next:                                      ; preds = %choice.exit4
  %tag.gep10 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id11 = load i64, ptr %tag.gep10, align 8
  %tag.match12 = icmp eq i64 %tag.id11, 1
  br i1 %tag.match12, label %choice.case8, label %choice.next9

choice.case8:                                     ; preds = %choice.next
  %call.res13 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit6

choice.next9:                                     ; preds = %choice.next
  %tag.gep16 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id17 = load i64, ptr %tag.gep16, align 8
  %tag.match18 = icmp eq i64 %tag.id17, 2
  br i1 %tag.match18, label %choice.case14, label %choice.next15

choice.case14:                                    ; preds = %choice.next9
  %call.res19 = call ptr @"tast::layout_scalar"(i64 2, i64 2)
  br label %choice.exit6

choice.next15:                                    ; preds = %choice.next9
  %tag.gep22 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id23 = load i64, ptr %tag.gep22, align 8
  %tag.match24 = icmp eq i64 %tag.id23, 3
  br i1 %tag.match24, label %choice.case20, label %choice.next21

choice.case20:                                    ; preds = %choice.next15
  %call.res25 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next21:                                    ; preds = %choice.next15
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 4
  br i1 %tag.match30, label %choice.case26, label %choice.next27

choice.case26:                                    ; preds = %choice.next21
  %call.res31 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next27:                                    ; preds = %choice.next21
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id35 = load i64, ptr %tag.gep34, align 8
  %tag.match36 = icmp eq i64 %tag.id35, 5
  br i1 %tag.match36, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next27
  %call.res37 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit6

choice.next33:                                    ; preds = %choice.next27
  %tag.gep40 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id41 = load i64, ptr %tag.gep40, align 8
  %tag.match42 = icmp eq i64 %tag.id41, 6
  br i1 %tag.match42, label %choice.case38, label %choice.next39

choice.case38:                                    ; preds = %choice.next33
  %call.res43 = call ptr @"tast::layout_scalar"(i64 2, i64 2)
  br label %choice.exit6

choice.next39:                                    ; preds = %choice.next33
  %tag.gep46 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id47 = load i64, ptr %tag.gep46, align 8
  %tag.match48 = icmp eq i64 %tag.id47, 7
  br i1 %tag.match48, label %choice.case44, label %choice.next45

choice.case44:                                    ; preds = %choice.next39
  %call.res49 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next45:                                    ; preds = %choice.next39
  %tag.gep52 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id53 = load i64, ptr %tag.gep52, align 8
  %tag.match54 = icmp eq i64 %tag.id53, 8
  br i1 %tag.match54, label %choice.case50, label %choice.next51

choice.case50:                                    ; preds = %choice.next45
  %call.res55 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next51:                                    ; preds = %choice.next45
  %tag.gep58 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id59 = load i64, ptr %tag.gep58, align 8
  %tag.match60 = icmp eq i64 %tag.id59, 9
  br i1 %tag.match60, label %choice.case56, label %choice.next57

choice.case56:                                    ; preds = %choice.next51
  %call.res61 = call ptr @"tast::layout_scalar"(i64 8, i64 8)
  br label %choice.exit6

choice.next57:                                    ; preds = %choice.next51
  %tag.gep64 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id65 = load i64, ptr %tag.gep64, align 8
  %tag.match66 = icmp eq i64 %tag.id65, 10
  br i1 %tag.match66, label %choice.case62, label %choice.next63

choice.case62:                                    ; preds = %choice.next57
  %call.res67 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next63:                                    ; preds = %choice.next57
  %tag.gep70 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id71 = load i64, ptr %tag.gep70, align 8
  %tag.match72 = icmp eq i64 %tag.id71, 11
  br i1 %tag.match72, label %choice.case68, label %choice.next69

choice.case68:                                    ; preds = %choice.next63
  %var.load73 = load i64, ptr %var.ptr_sz, align 8
  %multmp = mul i64 %var.load73, 2
  %var.load74 = load i64, ptr %var.ptr_align, align 8
  %call.res75 = call ptr @"tast::layout_scalar"(i64 %multmp, i64 %var.load74)
  br label %choice.exit6

choice.next69:                                    ; preds = %choice.next63
  %tag.gep78 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id79 = load i64, ptr %tag.gep78, align 8
  %tag.match80 = icmp eq i64 %tag.id79, 12
  br i1 %tag.match80, label %choice.case76, label %choice.next77

choice.case76:                                    ; preds = %choice.next69
  %call.res81 = call ptr @"tast::layout_scalar"(i64 4, i64 4)
  br label %choice.exit6

choice.next77:                                    ; preds = %choice.next69
  %tag.gep84 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id85 = load i64, ptr %tag.gep84, align 8
  %tag.match86 = icmp eq i64 %tag.id85, 13
  br i1 %tag.match86, label %choice.case82, label %choice.next83

choice.case82:                                    ; preds = %choice.next77
  %call.res87 = call ptr @"tast::layout_scalar"(i64 1, i64 1)
  br label %choice.exit6

choice.next83:                                    ; preds = %choice.next77
  %tag.gep90 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id91 = load i64, ptr %tag.gep90, align 8
  %tag.match92 = icmp eq i64 %tag.id91, 14
  br i1 %tag.match92, label %choice.case88, label %choice.next89

choice.case88:                                    ; preds = %choice.next83
  %call.res93 = call ptr @"tast::layout_void"()
  br label %choice.exit6

choice.next89:                                    ; preds = %choice.next83
  %tag.gep96 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id97 = load i64, ptr %tag.gep96, align 8
  %tag.match98 = icmp eq i64 %tag.id97, 15
  %tag.match99 = icmp eq i64 %tag.id97, 16
  %tag.or = or i1 %tag.match98, %tag.match99
  br i1 %tag.or, label %choice.case94, label %choice.next95

choice.case94:                                    ; preds = %choice.next89
  %var.load100 = load i64, ptr %var.ptr_sz, align 8
  %var.load101 = load i64, ptr %var.ptr_align, align 8
  %call.res102 = call ptr @"tast::layout_scalar"(i64 %var.load100, i64 %var.load101)
  br label %choice.exit6

choice.next95:                                    ; preds = %choice.next89
  %tag.gep105 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id106 = load i64, ptr %tag.gep105, align 8
  %tag.match107 = icmp eq i64 %tag.id106, 17
  br i1 %tag.match107, label %choice.case103, label %choice.next104

choice.case103:                                   ; preds = %choice.next95
  %var.load108 = load i64, ptr %var.ptr_sz, align 8
  %multmp109 = mul i64 %var.load108, 3
  %var.load110 = load i64, ptr %var.ptr_align, align 8
  %call.res111 = call ptr @"tast::layout_scalar"(i64 %multmp109, i64 %var.load110)
  br label %choice.exit6

choice.next104:                                   ; preds = %choice.next95
  %tag.gep114 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id115 = load i64, ptr %tag.gep114, align 8
  %tag.match116 = icmp eq i64 %tag.id115, 18
  br i1 %tag.match116, label %choice.case112, label %choice.next113

choice.case112:                                   ; preds = %choice.next104
  %call.res117 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res117, label %choice.then118, label %choice.else119

choice.next113:                                   ; preds = %choice.next104
  %var.load124 = load i64, ptr %var.ptr_sz, align 8
  %var.load125 = load i64, ptr %var.ptr_align, align 8
  %call.res126 = call ptr @"tast::layout_scalar"(i64 %var.load124, i64 %var.load125)
  br label %choice.exit6

choice.then118:                                   ; preds = %choice.case112
  %call.res121 = call ptr @"tast::layout_aggregate"(i64 48, i64 8)
  br label %choice.exit120

choice.else119:                                   ; preds = %choice.case112
  %call.res122 = call ptr @"tast::layout_aggregate"(i64 56, i64 8)
  br label %choice.exit120

choice.exit120:                                   ; preds = %choice.else119, %choice.then118
  %choice.res123 = phi ptr [ %call.res121, %choice.then118 ], [ %call.res122, %choice.else119 ]
  br label %choice.exit6
}

declare ptr @"tast::layout_scalar"(i64, i64) #2

declare ptr @"tast::layout_void"() #2

declare ptr @"tast::layout_aggregate"(i64, i64) #2

define i1 @"layout::is_niche_utype"(ptr %0, ptr %1, i1 %2) #2 {
entry:
  %var.r = alloca ptr, align 8
  %var._27 = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var.positive = alloca i1, align 1
  %var.ut = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.ut, align 8
  store i1 %2, ptr %var.positive, align 1
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load1 = load ptr, ptr %var.ut, align 8
  %call.res = call ptr @"unify::canon"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.c, align 8
  %var.load2 = load ptr, ptr %var.c, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next21, %a.after, %or.149.exit
  %choice.res32 = phi i1 [ %or.149.phi, %or.149.exit ], [ %cmptmp, %a.after ], [ false, %choice.next21 ]
  ret i1 %choice.res32

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load3 = load ptr, ptr %var.p, align 8
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load3, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 11
  %tag.match10 = icmp eq i64 %tag.id8, 18
  %tag.or = or i1 %tag.match9, %tag.match10
  br i1 %tag.or, label %choice.case5, label %choice.next6

choice.next:                                      ; preds = %entry
  %tag.gep22 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %tag.id23 = load i64, ptr %tag.gep22, align 8
  %tag.match24 = icmp eq i64 %tag.id23, 3
  br i1 %tag.match24, label %choice.case20, label %choice.next21

choice.exit4:                                     ; preds = %choice.next6, %choice.case5
  %choice.res = phi i1 [ true, %choice.case5 ], [ false, %choice.next6 ]
  br i1 %choice.res, label %or.149.then, label %or.149.else

choice.case5:                                     ; preds = %choice.case
  br label %choice.exit4

choice.next6:                                     ; preds = %choice.case
  br label %choice.exit4

or.149.then:                                      ; preds = %choice.exit4
  br label %or.149.exit

or.149.else:                                      ; preds = %choice.exit4
  %var.load11 = load i1, ptr %var.positive, align 1
  br i1 %var.load11, label %and.150.then, label %and.150.else

or.149.exit:                                      ; preds = %and.150.exit, %or.149.then
  %or.149.phi = phi i1 [ %choice.res, %or.149.then ], [ %and.150.phi, %and.150.exit ]
  br label %choice.exit

and.150.then:                                     ; preds = %or.149.else
  %var.load12 = load ptr, ptr %var.p, align 8
  %tag.gep16 = getelementptr inbounds { i64, ptr }, ptr %var.load12, i32 0, i32 0
  %tag.id17 = load i64, ptr %tag.gep16, align 8
  %tag.match18 = icmp eq i64 %tag.id17, 15
  br i1 %tag.match18, label %choice.case14, label %choice.next15

and.150.else:                                     ; preds = %or.149.else
  br label %and.150.exit

and.150.exit:                                     ; preds = %and.150.else, %choice.exit13
  %and.150.phi = phi i1 [ %choice.res19, %choice.exit13 ], [ %var.load11, %and.150.else ]
  br label %or.149.exit

choice.exit13:                                    ; preds = %choice.next15, %choice.case14
  %choice.res19 = phi i1 [ true, %choice.case14 ], [ false, %choice.next15 ]
  br label %and.150.exit

choice.case14:                                    ; preds = %and.150.then
  br label %choice.exit13

choice.next15:                                    ; preds = %and.150.then
  br label %choice.exit13

choice.case20:                                    ; preds = %choice.next
  %pay.gep25 = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %payload.ptr26 = load ptr, ptr %pay.gep25, align 8
  store ptr %payload.ptr26, ptr %var._27, align 8
  store ptr %payload.ptr26, ptr %var.r, align 8
  %var.load28 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next21:                                    ; preds = %choice.next
  br label %choice.exit

a.create:                                         ; preds = %choice.case20
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create29 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create29, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create29, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case20
  %a.load2 = load ptr, ptr %var.r, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query31 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp sgt i64 %a.len.query31, 0
  br label %choice.exit
}

declare ptr @"unify::canon"(ptr, ptr) #2

define ptr @"layout::classify_ram_layout"(i1 %0, i1 %1, i1 %2, i1 %3) #2 {
entry:
  %var.ptr_align = alloca i64, align 8
  %var.ptr_sz = alloca i64, align 8
  %var.neg_is_niche = alloca i1, align 1
  %var.pos_is_niche = alloca i1, align 1
  %var.has_neg = alloca i1, align 1
  %var.has_pos = alloca i1, align 1
  store i1 %0, ptr %var.has_pos, align 1
  store i1 %1, ptr %var.has_neg, align 1
  store i1 %2, ptr %var.pos_is_niche, align 1
  store i1 %3, ptr %var.neg_is_niche, align 1
  %call.res = call i1 @"layout::is_32bit_target"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 4, %choice.then ], [ 8, %choice.else ]
  store i64 %choice.res, ptr %var.ptr_sz, align 8
  %call.res1 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res1, label %choice.then2, label %choice.else3

choice.then2:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.else3:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else3, %choice.then2
  %choice.res5 = phi i64 [ 4, %choice.then2 ], [ 8, %choice.else3 ]
  store i64 %choice.res5, ptr %var.ptr_align, align 8
  %var.load = load i1, ptr %var.has_pos, align 1
  br i1 %var.load, label %and.151.then, label %and.151.else

and.151.then:                                     ; preds = %choice.exit4
  %var.load6 = load i1, ptr %var.has_neg, align 1
  %nottmp = xor i1 %var.load6, true
  br label %and.151.exit

and.151.else:                                     ; preds = %choice.exit4
  br label %and.151.exit

and.151.exit:                                     ; preds = %and.151.else, %and.151.then
  %and.151.phi = phi i1 [ %nottmp, %and.151.then ], [ %var.load, %and.151.else ]
  br i1 %and.151.phi, label %choice.then7, label %choice.else8

choice.then7:                                     ; preds = %and.151.exit
  %var.load10 = load i1, ptr %var.pos_is_niche, align 1
  br i1 %var.load10, label %choice.then11, label %choice.else12

choice.else8:                                     ; preds = %and.151.exit
  %var.load21 = load i1, ptr %var.has_pos, align 1
  %nottmp22 = xor i1 %var.load21, true
  br i1 %nottmp22, label %and.152.then, label %and.152.else

choice.exit9:                                     ; preds = %choice.exit26, %choice.exit13
  %choice.res51 = phi ptr [ %choice.res20, %choice.exit13 ], [ %choice.res50, %choice.exit26 ]
  ret ptr %choice.res51

choice.then11:                                    ; preds = %choice.then7
  %var.load14 = load i64, ptr %var.ptr_sz, align 8
  %var.load15 = load i64, ptr %var.ptr_align, align 8
  %call.res16 = call ptr @"tast::layout_ram_niche_pos"(i64 %var.load14, i64 %var.load15)
  br label %choice.exit13

choice.else12:                                    ; preds = %choice.then7
  %var.load17 = load i64, ptr %var.ptr_sz, align 8
  %multmp = mul i64 %var.load17, 2
  %var.load18 = load i64, ptr %var.ptr_align, align 8
  %call.res19 = call ptr @"tast::layout_ram_unboxed"(i64 %multmp, i64 %var.load18)
  br label %choice.exit13

choice.exit13:                                    ; preds = %choice.else12, %choice.then11
  %choice.res20 = phi ptr [ %call.res16, %choice.then11 ], [ %call.res19, %choice.else12 ]
  br label %choice.exit9

and.152.then:                                     ; preds = %choice.else8
  %var.load23 = load i1, ptr %var.has_neg, align 1
  br label %and.152.exit

and.152.else:                                     ; preds = %choice.else8
  br label %and.152.exit

and.152.exit:                                     ; preds = %and.152.else, %and.152.then
  %and.152.phi = phi i1 [ %var.load23, %and.152.then ], [ %nottmp22, %and.152.else ]
  br i1 %and.152.phi, label %choice.then24, label %choice.else25

choice.then24:                                    ; preds = %and.152.exit
  %var.load27 = load i1, ptr %var.neg_is_niche, align 1
  br i1 %var.load27, label %choice.then28, label %choice.else29

choice.else25:                                    ; preds = %and.152.exit
  %var.load39 = load i1, ptr %var.has_pos, align 1
  br i1 %var.load39, label %or.153.then, label %or.153.else

choice.exit26:                                    ; preds = %choice.exit43, %choice.exit30
  %choice.res50 = phi ptr [ %choice.res38, %choice.exit30 ], [ %choice.res49, %choice.exit43 ]
  br label %choice.exit9

choice.then28:                                    ; preds = %choice.then24
  %var.load31 = load i64, ptr %var.ptr_sz, align 8
  %var.load32 = load i64, ptr %var.ptr_align, align 8
  %call.res33 = call ptr @"tast::layout_ram_niche_neg"(i64 %var.load31, i64 %var.load32)
  br label %choice.exit30

choice.else29:                                    ; preds = %choice.then24
  %var.load34 = load i64, ptr %var.ptr_sz, align 8
  %multmp35 = mul i64 %var.load34, 2
  %var.load36 = load i64, ptr %var.ptr_align, align 8
  %call.res37 = call ptr @"tast::layout_ram_unboxed"(i64 %multmp35, i64 %var.load36)
  br label %choice.exit30

choice.exit30:                                    ; preds = %choice.else29, %choice.then28
  %choice.res38 = phi ptr [ %call.res33, %choice.then28 ], [ %call.res37, %choice.else29 ]
  br label %choice.exit26

or.153.then:                                      ; preds = %choice.else25
  br label %or.153.exit

or.153.else:                                      ; preds = %choice.else25
  %var.load40 = load i1, ptr %var.has_neg, align 1
  br label %or.153.exit

or.153.exit:                                      ; preds = %or.153.else, %or.153.then
  %or.153.phi = phi i1 [ %var.load39, %or.153.then ], [ %var.load40, %or.153.else ]
  br i1 %or.153.phi, label %choice.then41, label %choice.else42

choice.then41:                                    ; preds = %or.153.exit
  %var.load44 = load i64, ptr %var.ptr_sz, align 8
  %multmp45 = mul i64 %var.load44, 2
  %var.load46 = load i64, ptr %var.ptr_align, align 8
  %call.res47 = call ptr @"tast::layout_ram_unboxed"(i64 %multmp45, i64 %var.load46)
  br label %choice.exit43

choice.else42:                                    ; preds = %or.153.exit
  %call.res48 = call ptr @"tast::layout_ram_flag"()
  br label %choice.exit43

choice.exit43:                                    ; preds = %choice.else42, %choice.then41
  %choice.res49 = phi ptr [ %call.res47, %choice.then41 ], [ %call.res48, %choice.else42 ]
  br label %choice.exit26
}

declare ptr @"tast::layout_ram_niche_pos"(i64, i64) #2

declare ptr @"tast::layout_ram_unboxed"(i64, i64) #2

declare ptr @"tast::layout_ram_niche_neg"(i64, i64) #2

declare ptr @"tast::layout_ram_flag"() #2

define ptr @"layout::compute_layout"(ptr %0, ptr %1) #2 {
entry:
  %var._148 = alloca ptr, align 8
  %var._128 = alloca ptr, align 8
  %var._108 = alloca ptr, align 8
  %var.r79 = alloca ptr, align 8
  %var._78 = alloca ptr, align 8
  %var.fin_size = alloca i64, align 8
  %var.total_size = alloca i64, align 8
  %var.f_align = alloca i64, align 8
  %var.flay = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %var._46 = alloca ptr, align 8
  %loop.step.154 = alloca i64, align 8
  %loop.idx.154 = alloca i64, align 8
  %"var.max_align'" = alloca i64, align 8
  %"var.cur_off'" = alloca i64, align 8
  %var.r = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var._24 = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var.min_rec_sz = alloca i64, align 8
  %var.ptr_align = alloca i64, align 8
  %var.ptr_sz = alloca i64, align 8
  %var.ut = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.ut, align 8
  %call.res = call i1 @"layout::is_32bit_target"()
  br i1 %call.res, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ 4, %choice.then ], [ 8, %choice.else ]
  store i64 %choice.res, ptr %var.ptr_sz, align 8
  %call.res1 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res1, label %choice.then2, label %choice.else3

choice.then2:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.else3:                                     ; preds = %choice.exit
  br label %choice.exit4

choice.exit4:                                     ; preds = %choice.else3, %choice.then2
  %choice.res5 = phi i64 [ 4, %choice.then2 ], [ 8, %choice.else3 ]
  store i64 %choice.res5, ptr %var.ptr_align, align 8
  %call.res6 = call i1 @"layout::is_32bit_target"()
  br i1 %call.res6, label %choice.then7, label %choice.else8

choice.then7:                                     ; preds = %choice.exit4
  br label %choice.exit9

choice.else8:                                     ; preds = %choice.exit4
  br label %choice.exit9

choice.exit9:                                     ; preds = %choice.else8, %choice.then7
  %choice.res10 = phi i64 [ 8, %choice.then7 ], [ 16, %choice.else8 ]
  store i64 %choice.res10, ptr %var.min_rec_sz, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load11 = load ptr, ptr %var.ut, align 8
  %call.res12 = call ptr @"unify::canon"(ptr %var.load, ptr %var.load11)
  store ptr %call.res12, ptr %var.c, align 8
  %var.load13 = load ptr, ptr %var.c, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit14:                                    ; preds = %choice.next142, %choice.case141, %choice.case121, %choice.case101, %choice.case71, %loop.exit.154, %choice.case17, %choice.case
  %choice.res164 = phi ptr [ %call.res16, %choice.case ], [ %rec.alloc, %choice.case17 ], [ %call.res70, %loop.exit.154 ], [ %call.res100, %choice.case71 ], [ %rec.alloc117, %choice.case101 ], [ %rec.alloc137, %choice.case121 ], [ %rec.alloc157, %choice.case141 ], [ %call.res163, %choice.next142 ]
  ret ptr %choice.res164

choice.case:                                      ; preds = %choice.exit9
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load15 = load ptr, ptr %var.p, align 8
  %call.res16 = call ptr @"layout::compute_prim_layout"(ptr %var.load15)
  br label %choice.exit14

choice.next:                                      ; preds = %choice.exit9
  %tag.gep19 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id20 = load i64, ptr %tag.gep19, align 8
  %tag.match21 = icmp eq i64 %tag.id20, 2
  br i1 %tag.match21, label %choice.case17, label %choice.next18

choice.case17:                                    ; preds = %choice.next
  %pay.gep22 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr23 = load ptr, ptr %pay.gep22, align 8
  store ptr %payload.ptr23, ptr %var._24, align 8
  %var.load25 = load i64, ptr %var.ptr_sz, align 8
  %multmp = mul i64 %var.load25, 2
  %var.load26 = load i64, ptr %var.ptr_align, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep27 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 12, ptr %tag.gep27, align 8
  %pay.gep28 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  store ptr null, ptr %pay.gep28, align 8
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 0
  store i64 %multmp, ptr %rec.fld, align 8
  %rec.fld30 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 1
  store i64 %var.load26, ptr %rec.fld30, align 8
  %rec.fld31 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %enum.alloc, ptr %rec.fld31, align 8
  br label %choice.exit14

choice.next18:                                    ; preds = %choice.next
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id35 = load i64, ptr %tag.gep34, align 8
  %tag.match36 = icmp eq i64 %tag.id35, 3
  br i1 %tag.match36, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next18
  %pay.gep37 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr38 = load ptr, ptr %pay.gep37, align 8
  store ptr %payload.ptr38, ptr %var._39, align 8
  store ptr %payload.ptr38, ptr %var.r, align 8
  store i64 0, ptr %"var.cur_off'", align 8
  store i64 1, ptr %"var.max_align'", align 8
  %var.load40 = load ptr, ptr %var.r, align 8
  %a.load = load ptr, ptr %var.r, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next33:                                    ; preds = %choice.next18
  %tag.gep73 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id74 = load i64, ptr %tag.gep73, align 8
  %tag.match75 = icmp eq i64 %tag.id74, 4
  br i1 %tag.match75, label %choice.case71, label %choice.next72

a.create:                                         ; preds = %choice.case32
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 24)
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create42, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create42, ptr %var.r, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case32
  %a.load2 = load ptr, ptr %var.r, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len44 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data45 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.154, align 8
  br label %loop.header.154

loop.header.154:                                  ; preds = %loop.latch.154, %a.after
  %counter.load = load i64, ptr %loop.idx.154, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len44
  br i1 %loop.cond, label %loop.body.154, label %loop.exit.nat.154

loop.body.154:                                    ; preds = %loop.header.154
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.154, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data45, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store ptr %slot.i2p, ptr %var._46, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  %var.load47 = load ptr, ptr %var.ctx, align 8
  %var.load48 = load ptr, ptr %var.f, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load48, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res49 = call ptr @"layout::compute_layout"(ptr %var.load47, ptr %fld.load)
  store ptr %call.res49, ptr %var.flay, align 8
  %var.load50 = load ptr, ptr %var.flay, align 8
  %fld.gep51 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load50, i32 0, i32 1
  %fld.load52 = load i64, ptr %fld.gep51, align 8
  %max = call i64 @llvm.smax.i64(i64 %fld.load52, i64 1)
  store i64 %max, ptr %var.f_align, align 8
  %var.load53 = load i64, ptr %"var.max_align'", align 8
  %var.load54 = load i64, ptr %var.f_align, align 8
  %max55 = call i64 @llvm.smax.i64(i64 %var.load53, i64 %var.load54)
  store i64 %max55, ptr %"var.max_align'", align 8
  %var.load56 = load i64, ptr %"var.cur_off'", align 8
  %var.load57 = load i64, ptr %var.f_align, align 8
  %call.res58 = call i64 @"layout::align_up"(i64 %var.load56, i64 %var.load57)
  %var.load59 = load ptr, ptr %var.flay, align 8
  %fld.gep60 = getelementptr inbounds { i64, i64, ptr }, ptr %var.load59, i32 0, i32 0
  %fld.load61 = load i64, ptr %fld.gep60, align 8
  %addtmp = add i64 %call.res58, %fld.load61
  store i64 %addtmp, ptr %"var.cur_off'", align 8
  br label %loop.latch.154

loop.exit.nat.154:                                ; preds = %loop.header.154
  br label %loop.exit.154

loop.latch.154:                                   ; preds = %loop.body.154
  %step.val = load i64, ptr %loop.step.154, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.154, align 8
  br label %loop.header.154

loop.exit.154:                                    ; preds = %loop.exit.nat.154
  %var.load62 = load i64, ptr %"var.cur_off'", align 8
  %var.load63 = load i64, ptr %"var.max_align'", align 8
  %call.res64 = call i64 @"layout::align_up"(i64 %var.load62, i64 %var.load63)
  store i64 %call.res64, ptr %var.total_size, align 8
  %var.load65 = load i64, ptr %var.total_size, align 8
  %var.load66 = load i64, ptr %var.min_rec_sz, align 8
  %max67 = call i64 @llvm.smax.i64(i64 %var.load65, i64 %var.load66)
  store i64 %max67, ptr %var.fin_size, align 8
  %var.load68 = load i64, ptr %var.fin_size, align 8
  %var.load69 = load i64, ptr %"var.max_align'", align 8
  %call.res70 = call ptr @"tast::layout_record"(i64 %var.load68, i64 %var.load69)
  br label %choice.exit14

choice.case71:                                    ; preds = %choice.next33
  %pay.gep76 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr77 = load ptr, ptr %pay.gep76, align 8
  store ptr %payload.ptr77, ptr %var._78, align 8
  store ptr %payload.ptr77, ptr %var.r79, align 8
  %var.load80 = load ptr, ptr %var.r79, align 8
  %fld.gep81 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load80, i32 0, i32 0
  %fld.gep82 = getelementptr inbounds { i1, ptr }, ptr %fld.gep81, i32 0, i32 0
  %fld.load83 = load i1, ptr %fld.gep82, align 1
  %var.load84 = load ptr, ptr %var.r79, align 8
  %fld.gep85 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load84, i32 0, i32 1
  %fld.gep86 = getelementptr inbounds { i1, ptr }, ptr %fld.gep85, i32 0, i32 0
  %fld.load87 = load i1, ptr %fld.gep86, align 1
  %var.load88 = load ptr, ptr %var.ctx, align 8
  %var.load89 = load ptr, ptr %var.r79, align 8
  %fld.gep90 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load89, i32 0, i32 0
  %fld.gep91 = getelementptr inbounds { i1, ptr }, ptr %fld.gep90, i32 0, i32 1
  %fld.load92 = load ptr, ptr %fld.gep91, align 8
  %call.res93 = call i1 @"layout::is_niche_utype"(ptr %var.load88, ptr %fld.load92, i1 true)
  %var.load94 = load ptr, ptr %var.ctx, align 8
  %var.load95 = load ptr, ptr %var.r79, align 8
  %fld.gep96 = getelementptr inbounds { { i1, ptr }, { i1, ptr } }, ptr %var.load95, i32 0, i32 1
  %fld.gep97 = getelementptr inbounds { i1, ptr }, ptr %fld.gep96, i32 0, i32 1
  %fld.load98 = load ptr, ptr %fld.gep97, align 8
  %call.res99 = call i1 @"layout::is_niche_utype"(ptr %var.load94, ptr %fld.load98, i1 false)
  %call.res100 = call ptr @"layout::classify_ram_layout"(i1 %fld.load83, i1 %fld.load87, i1 %call.res93, i1 %call.res99)
  br label %choice.exit14

choice.next72:                                    ; preds = %choice.next33
  %tag.gep103 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id104 = load i64, ptr %tag.gep103, align 8
  %tag.match105 = icmp eq i64 %tag.id104, 5
  br i1 %tag.match105, label %choice.case101, label %choice.next102

choice.case101:                                   ; preds = %choice.next72
  %pay.gep106 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr107 = load ptr, ptr %pay.gep106, align 8
  store ptr %payload.ptr107, ptr %var._108, align 8
  %var.load109 = load i64, ptr %var.ptr_sz, align 8
  %multmp110 = mul i64 %var.load109, 2
  %var.load111 = load i64, ptr %var.ptr_align, align 8
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 16)
  %tag.gep114 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc113, i32 0, i32 0
  store i64 9, ptr %tag.gep114, align 8
  %pay.gep115 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc113, i32 0, i32 1
  store ptr null, ptr %pay.gep115, align 8
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld118 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc117, i32 0, i32 0
  store i64 %multmp110, ptr %rec.fld118, align 8
  %rec.fld119 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc117, i32 0, i32 1
  store i64 %var.load111, ptr %rec.fld119, align 8
  %rec.fld120 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc117, i32 0, i32 2
  store ptr %enum.alloc113, ptr %rec.fld120, align 8
  br label %choice.exit14

choice.next102:                                   ; preds = %choice.next72
  %tag.gep123 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id124 = load i64, ptr %tag.gep123, align 8
  %tag.match125 = icmp eq i64 %tag.id124, 6
  br i1 %tag.match125, label %choice.case121, label %choice.next122

choice.case121:                                   ; preds = %choice.next102
  %pay.gep126 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr127 = load ptr, ptr %pay.gep126, align 8
  store ptr %payload.ptr127, ptr %var._128, align 8
  %var.load129 = load i64, ptr %var.ptr_sz, align 8
  %multmp130 = mul i64 %var.load129, 3
  %var.load131 = load i64, ptr %var.ptr_align, align 8
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 16)
  %tag.gep134 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 0
  store i64 11, ptr %tag.gep134, align 8
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 1
  store ptr null, ptr %pay.gep135, align 8
  %arena.cur136 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc137 = call ptr @dva_arena_alloc(ptr %arena.cur136, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld138 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc137, i32 0, i32 0
  store i64 %multmp130, ptr %rec.fld138, align 8
  %rec.fld139 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc137, i32 0, i32 1
  store i64 %var.load131, ptr %rec.fld139, align 8
  %rec.fld140 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc137, i32 0, i32 2
  store ptr %enum.alloc133, ptr %rec.fld140, align 8
  br label %choice.exit14

choice.next122:                                   ; preds = %choice.next102
  %tag.gep143 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %tag.id144 = load i64, ptr %tag.gep143, align 8
  %tag.match145 = icmp eq i64 %tag.id144, 7
  br i1 %tag.match145, label %choice.case141, label %choice.next142

choice.case141:                                   ; preds = %choice.next122
  %pay.gep146 = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 1
  %payload.ptr147 = load ptr, ptr %pay.gep146, align 8
  store ptr %payload.ptr147, ptr %var._148, align 8
  %var.load149 = load i64, ptr %var.ptr_sz, align 8
  %multmp150 = mul i64 %var.load149, 2
  %var.load151 = load i64, ptr %var.ptr_align, align 8
  %arena.cur152 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc153 = call ptr @dva_arena_alloc(ptr %arena.cur152, i64 16)
  %tag.gep154 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc153, i32 0, i32 0
  store i64 10, ptr %tag.gep154, align 8
  %pay.gep155 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc153, i32 0, i32 1
  store ptr null, ptr %pay.gep155, align 8
  %arena.cur156 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc157 = call ptr @dva_arena_alloc(ptr %arena.cur156, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld158 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc157, i32 0, i32 0
  store i64 %multmp150, ptr %rec.fld158, align 8
  %rec.fld159 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc157, i32 0, i32 1
  store i64 %var.load151, ptr %rec.fld159, align 8
  %rec.fld160 = getelementptr inbounds { i64, i64, ptr }, ptr %rec.alloc157, i32 0, i32 2
  store ptr %enum.alloc153, ptr %rec.fld160, align 8
  br label %choice.exit14

choice.next142:                                   ; preds = %choice.next122
  %var.load161 = load i64, ptr %var.ptr_sz, align 8
  %var.load162 = load i64, ptr %var.ptr_align, align 8
  %call.res163 = call ptr @"tast::layout_scalar"(i64 %var.load161, i64 %var.load162)
  br label %choice.exit14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

declare ptr @"tast::layout_record"(i64, i64) #2

attributes #0 = { alwaysinline "nounwind" }
attributes #1 = { noinline "nounwind" }
attributes #2 = { "nounwind" }
attributes #3 = { cold noinline "nounwind" }
attributes #4 = { cold noinline noreturn "nounwind" }
attributes #5 = { cold noreturn "nounwind" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
