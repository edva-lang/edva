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
@b_byte_msg = internal unnamed_addr constant [58 x i8] c"E4007: Builder append byte out of range (must be 0..255)\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"utf::append_rune", ptr null }
@"var.utf::append_rune" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"utf::append_codepoint", ptr null }
@"var.utf::append_codepoint" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"utf::encode_rune", ptr null }
@"var.utf::encode_rune" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"utf::encode_codepoint", ptr null }
@"var.utf::encode_codepoint" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"utf::seq_len", ptr null }
@"var.utf::seq_len" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"utf::decode_rune_addr", ptr null }
@"var.utf::decode_rune_addr" = global ptr null
@str_oob_msg = internal unnamed_addr constant [40 x i8] c"E4006: string byte index out of bounds\0A\00"
@clo.const.6 = internal constant { ptr, ptr } { ptr @"utf::decode_rune_builder", ptr null }
@"var.utf::decode_rune_builder" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"utf::decode_str_at", ptr null }
@"var.utf::decode_str_at" = global ptr null
@clo.const.8 = internal constant { ptr, ptr } { ptr @"utf::next_start", ptr null }
@"var.utf::next_start" = global ptr null
@clo.const.9 = internal constant { ptr, ptr } { ptr @"utf::prev_start", ptr null }
@"var.utf::prev_start" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_utf, ptr null }]

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

define internal void @__dva_global_init_utf() #0 {
entry:
  store ptr @clo.const, ptr @"var.utf::append_rune", align 8
  store ptr @clo.const.1, ptr @"var.utf::append_codepoint", align 8
  store ptr @clo.const.2, ptr @"var.utf::encode_rune", align 8
  store ptr @clo.const.3, ptr @"var.utf::encode_codepoint", align 8
  store ptr @clo.const.4, ptr @"var.utf::seq_len", align 8
  store ptr @clo.const.5, ptr @"var.utf::decode_rune_addr", align 8
  store ptr @clo.const.6, ptr @"var.utf::decode_rune_builder", align 8
  store ptr @clo.const.7, ptr @"var.utf::decode_str_at", align 8
  store ptr @clo.const.8, ptr @"var.utf::next_start", align 8
  store ptr @clo.const.9, ptr @"var.utf::prev_start", align 8
  ret void
}

define void @"utf::append_rune"(ptr %0, i32 %1) #0 {
entry:
  %var.cp = alloca i64, align 8
  %var.r = alloca i32, align 4
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i32 %1, ptr %var.r, align 4
  %var.load = load i32, ptr %var.r, align 4
  %coerce.sext = sext i32 %var.load to i64
  store i64 %coerce.sext, ptr %var.cp, align 8
  %var.load1 = load i64, ptr %var.cp, align 8
  %cmptmp = icmp slt i64 %var.load1, 128
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %b.push_done380, %b.push_done206, %b.push_done73, %b.push_done
  ret void

choice.case:                                      ; preds = %entry
  %b.load = load ptr, ptr %var.b, align 8
  %var.load2 = load i64, ptr %var.cp, align 8
  %b.b.ge0 = icmp sge i64 %var.load2, 0
  %b.b.le255 = icmp sle i64 %var.load2, 255
  %b.byte.range = and i1 %b.b.ge0, %b.b.le255
  br i1 %b.byte.range, label %b.byte_ok, label %b.byte_err

choice.next:                                      ; preds = %entry
  %cmptmp12 = icmp slt i64 %var.load1, 2048
  br i1 %cmptmp12, label %choice.case10, label %choice.next11

b.byte_ok:                                        ; preds = %abort.dead, %choice.case
  %b.byte.i8 = trunc i64 %var.load2 to i8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.len3 = load i64, ptr %b.len, align 8
  %b.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  %b.cap4 = load i64, ptr %b.cap, align 8
  %b.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.data5 = load ptr, ptr %b.data, align 8
  %b.needs.grow = icmp eq i64 %b.len3, %b.cap4
  br i1 %b.needs.grow, label %b.grow, label %b.nogrow

b.byte_err:                                       ; preds = %choice.case
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.byte_ok

b.grow:                                           ; preds = %b.byte_ok
  %b.cap2 = mul i64 %b.cap4, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.new.cap = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.new.buf.len6

b.nogrow:                                         ; preds = %b.byte_ok
  br label %b.push_done

b.push_done:                                      ; preds = %b.nogrow, %b.new.buf.len6
  %b.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  %b.cur.data8 = load ptr, ptr %b.cur.data, align 8
  %b.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  %b.cur.len9 = load i64, ptr %b.cur.len, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data8, i64 %b.cur.len9
  store i8 %b.byte.i8, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len9, 1
  %b.nul = getelementptr i8, ptr %b.cur.data8, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 0
  store i64 %b.next.len, ptr %b.len.gep, align 8
  br label %choice.exit

b.new.buf.len6:                                   ; preds = %abort.dead7, %b.grow
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data5, i64 %b.len3, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len3
  store i8 0, ptr %b.grow.nul, align 1
  %b.new.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 1
  store ptr %b.new.buf, ptr %b.new.data.gep, align 8
  %b.new.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load, i32 0, i32 2
  store i64 %b.new.cap, ptr %b.new.cap.gep, align 8
  br label %b.push_done

str_overflow_abort:                               ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead7:                                      ; No predecessors!
  br label %b.new.buf.len6

choice.case10:                                    ; preds = %choice.next
  %b.load13 = load ptr, ptr %var.b, align 8
  %var.load14 = load i64, ptr %var.cp, align 8
  %shrtmp = lshr i64 %var.load14, 6
  %bortmp = or i64 192, %shrtmp
  %b.b.ge015 = icmp sge i64 %bortmp, 0
  %b.b.le25516 = icmp sle i64 %bortmp, 255
  %b.byte.range17 = and i1 %b.b.ge015, %b.b.le25516
  br i1 %b.byte.range17, label %b.byte_ok18, label %b.byte_err19

choice.next11:                                    ; preds = %choice.next
  %cmptmp98 = icmp slt i64 %var.load1, 65536
  br i1 %cmptmp98, label %choice.case96, label %choice.next97

b.byte_ok18:                                      ; preds = %abort.dead20, %choice.case10
  %b.byte.i821 = trunc i64 %bortmp to i8
  %b.len22 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load13, i32 0, i32 0
  %b.len23 = load i64, ptr %b.len22, align 8
  %b.cap24 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load13, i32 0, i32 2
  %b.cap25 = load i64, ptr %b.cap24, align 8
  %b.data26 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load13, i32 0, i32 1
  %b.data27 = load ptr, ptr %b.data26, align 8
  %b.needs.grow28 = icmp eq i64 %b.len23, %b.cap25
  br i1 %b.needs.grow28, label %b.grow29, label %b.nogrow30

b.byte_err19:                                     ; preds = %choice.case10
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead20:                                     ; No predecessors!
  br label %b.byte_ok18

b.grow29:                                         ; preds = %b.byte_ok18
  %b.cap232 = mul i64 %b.cap25, 2
  %b.cap.small33 = icmp slt i64 %b.cap232, 16
  %b.new.cap34 = select i1 %b.cap.small33, i64 16, i64 %b.cap232
  %b.new.buf.len35 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap34, i64 1)
  %sum36 = extractvalue { i64, i1 } %b.new.buf.len35, 0
  %ovf37 = extractvalue { i64, i1 } %b.new.buf.len35, 1
  br i1 %ovf37, label %str_overflow_abort39, label %b.new.buf.len38

b.nogrow30:                                       ; preds = %b.byte_ok18
  br label %b.push_done31

b.push_done31:                                    ; preds = %b.nogrow30, %b.new.buf.len38
  %b.cur.data46 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load13, i32 0, i32 1
  %b.cur.data47 = load ptr, ptr %b.cur.data46, align 8
  %b.cur.len48 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load13, i32 0, i32 0
  %b.cur.len49 = load i64, ptr %b.cur.len48, align 8
  %b.byte.gep50 = getelementptr i8, ptr %b.cur.data47, i64 %b.cur.len49
  store i8 %b.byte.i821, ptr %b.byte.gep50, align 1
  %b.next.len51 = add i64 %b.cur.len49, 1
  %b.nul52 = getelementptr i8, ptr %b.cur.data47, i64 %b.next.len51
  store i8 0, ptr %b.nul52, align 1
  %b.len.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load13, i32 0, i32 0
  store i64 %b.next.len51, ptr %b.len.gep53, align 8
  %b.load54 = load ptr, ptr %var.b, align 8
  %var.load55 = load i64, ptr %var.cp, align 8
  %bandtmp = and i64 %var.load55, 63
  %bortmp56 = or i64 128, %bandtmp
  %b.b.ge057 = icmp sge i64 %bortmp56, 0
  %b.b.le25558 = icmp sle i64 %bortmp56, 255
  %b.byte.range59 = and i1 %b.b.ge057, %b.b.le25558
  br i1 %b.byte.range59, label %b.byte_ok60, label %b.byte_err61

b.new.buf.len38:                                  ; preds = %abort.dead40, %b.grow29
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 %sum36)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf42, ptr align 1 %b.data27, i64 %b.len23, i1 false)
  %b.grow.nul43 = getelementptr i8, ptr %b.new.buf42, i64 %b.len23
  store i8 0, ptr %b.grow.nul43, align 1
  %b.new.data.gep44 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load13, i32 0, i32 1
  store ptr %b.new.buf42, ptr %b.new.data.gep44, align 8
  %b.new.cap.gep45 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load13, i32 0, i32 2
  store i64 %b.new.cap34, ptr %b.new.cap.gep45, align 8
  br label %b.push_done31

str_overflow_abort39:                             ; preds = %b.grow29
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead40:                                     ; No predecessors!
  br label %b.new.buf.len38

b.byte_ok60:                                      ; preds = %abort.dead62, %b.push_done31
  %b.byte.i863 = trunc i64 %bortmp56 to i8
  %b.len64 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load54, i32 0, i32 0
  %b.len65 = load i64, ptr %b.len64, align 8
  %b.cap66 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load54, i32 0, i32 2
  %b.cap67 = load i64, ptr %b.cap66, align 8
  %b.data68 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load54, i32 0, i32 1
  %b.data69 = load ptr, ptr %b.data68, align 8
  %b.needs.grow70 = icmp eq i64 %b.len65, %b.cap67
  br i1 %b.needs.grow70, label %b.grow71, label %b.nogrow72

b.byte_err61:                                     ; preds = %b.push_done31
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %b.byte_ok60

b.grow71:                                         ; preds = %b.byte_ok60
  %b.cap274 = mul i64 %b.cap67, 2
  %b.cap.small75 = icmp slt i64 %b.cap274, 16
  %b.new.cap76 = select i1 %b.cap.small75, i64 16, i64 %b.cap274
  %b.new.buf.len77 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap76, i64 1)
  %sum78 = extractvalue { i64, i1 } %b.new.buf.len77, 0
  %ovf79 = extractvalue { i64, i1 } %b.new.buf.len77, 1
  br i1 %ovf79, label %str_overflow_abort81, label %b.new.buf.len80

b.nogrow72:                                       ; preds = %b.byte_ok60
  br label %b.push_done73

b.push_done73:                                    ; preds = %b.nogrow72, %b.new.buf.len80
  %b.cur.data88 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load54, i32 0, i32 1
  %b.cur.data89 = load ptr, ptr %b.cur.data88, align 8
  %b.cur.len90 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load54, i32 0, i32 0
  %b.cur.len91 = load i64, ptr %b.cur.len90, align 8
  %b.byte.gep92 = getelementptr i8, ptr %b.cur.data89, i64 %b.cur.len91
  store i8 %b.byte.i863, ptr %b.byte.gep92, align 1
  %b.next.len93 = add i64 %b.cur.len91, 1
  %b.nul94 = getelementptr i8, ptr %b.cur.data89, i64 %b.next.len93
  store i8 0, ptr %b.nul94, align 1
  %b.len.gep95 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load54, i32 0, i32 0
  store i64 %b.next.len93, ptr %b.len.gep95, align 8
  br label %choice.exit

b.new.buf.len80:                                  ; preds = %abort.dead82, %b.grow71
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 %sum78)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf84, ptr align 1 %b.data69, i64 %b.len65, i1 false)
  %b.grow.nul85 = getelementptr i8, ptr %b.new.buf84, i64 %b.len65
  store i8 0, ptr %b.grow.nul85, align 1
  %b.new.data.gep86 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load54, i32 0, i32 1
  store ptr %b.new.buf84, ptr %b.new.data.gep86, align 8
  %b.new.cap.gep87 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load54, i32 0, i32 2
  store i64 %b.new.cap76, ptr %b.new.cap.gep87, align 8
  br label %b.push_done73

str_overflow_abort81:                             ; preds = %b.grow71
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead82:                                     ; No predecessors!
  br label %b.new.buf.len80

choice.case96:                                    ; preds = %choice.next11
  %b.load99 = load ptr, ptr %var.b, align 8
  %var.load100 = load i64, ptr %var.cp, align 8
  %shrtmp101 = lshr i64 %var.load100, 12
  %bortmp102 = or i64 224, %shrtmp101
  %b.b.ge0103 = icmp sge i64 %bortmp102, 0
  %b.b.le255104 = icmp sle i64 %bortmp102, 255
  %b.byte.range105 = and i1 %b.b.ge0103, %b.b.le255104
  br i1 %b.byte.range105, label %b.byte_ok106, label %b.byte_err107

choice.next97:                                    ; preds = %choice.next11
  %b.load229 = load ptr, ptr %var.b, align 8
  %var.load230 = load i64, ptr %var.cp, align 8
  %shrtmp231 = lshr i64 %var.load230, 18
  %bortmp232 = or i64 240, %shrtmp231
  %b.b.ge0233 = icmp sge i64 %bortmp232, 0
  %b.b.le255234 = icmp sle i64 %bortmp232, 255
  %b.byte.range235 = and i1 %b.b.ge0233, %b.b.le255234
  br i1 %b.byte.range235, label %b.byte_ok236, label %b.byte_err237

b.byte_ok106:                                     ; preds = %abort.dead108, %choice.case96
  %b.byte.i8109 = trunc i64 %bortmp102 to i8
  %b.len110 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.len111 = load i64, ptr %b.len110, align 8
  %b.cap112 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  %b.cap113 = load i64, ptr %b.cap112, align 8
  %b.data114 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.data115 = load ptr, ptr %b.data114, align 8
  %b.needs.grow116 = icmp eq i64 %b.len111, %b.cap113
  br i1 %b.needs.grow116, label %b.grow117, label %b.nogrow118

b.byte_err107:                                    ; preds = %choice.case96
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead108:                                    ; No predecessors!
  br label %b.byte_ok106

b.grow117:                                        ; preds = %b.byte_ok106
  %b.cap2120 = mul i64 %b.cap113, 2
  %b.cap.small121 = icmp slt i64 %b.cap2120, 16
  %b.new.cap122 = select i1 %b.cap.small121, i64 16, i64 %b.cap2120
  %b.new.buf.len123 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap122, i64 1)
  %sum124 = extractvalue { i64, i1 } %b.new.buf.len123, 0
  %ovf125 = extractvalue { i64, i1 } %b.new.buf.len123, 1
  br i1 %ovf125, label %str_overflow_abort127, label %b.new.buf.len126

b.nogrow118:                                      ; preds = %b.byte_ok106
  br label %b.push_done119

b.push_done119:                                   ; preds = %b.nogrow118, %b.new.buf.len126
  %b.cur.data134 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  %b.cur.data135 = load ptr, ptr %b.cur.data134, align 8
  %b.cur.len136 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  %b.cur.len137 = load i64, ptr %b.cur.len136, align 8
  %b.byte.gep138 = getelementptr i8, ptr %b.cur.data135, i64 %b.cur.len137
  store i8 %b.byte.i8109, ptr %b.byte.gep138, align 1
  %b.next.len139 = add i64 %b.cur.len137, 1
  %b.nul140 = getelementptr i8, ptr %b.cur.data135, i64 %b.next.len139
  store i8 0, ptr %b.nul140, align 1
  %b.len.gep141 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 0
  store i64 %b.next.len139, ptr %b.len.gep141, align 8
  %b.load142 = load ptr, ptr %var.b, align 8
  %var.load143 = load i64, ptr %var.cp, align 8
  %shrtmp144 = lshr i64 %var.load143, 6
  %bandtmp145 = and i64 %shrtmp144, 63
  %bortmp146 = or i64 128, %bandtmp145
  %b.b.ge0147 = icmp sge i64 %bortmp146, 0
  %b.b.le255148 = icmp sle i64 %bortmp146, 255
  %b.byte.range149 = and i1 %b.b.ge0147, %b.b.le255148
  br i1 %b.byte.range149, label %b.byte_ok150, label %b.byte_err151

b.new.buf.len126:                                 ; preds = %abort.dead128, %b.grow117
  %arena.cur129 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf130 = call ptr @dva_arena_alloc(ptr %arena.cur129, i64 %sum124)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf130, ptr align 1 %b.data115, i64 %b.len111, i1 false)
  %b.grow.nul131 = getelementptr i8, ptr %b.new.buf130, i64 %b.len111
  store i8 0, ptr %b.grow.nul131, align 1
  %b.new.data.gep132 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 1
  store ptr %b.new.buf130, ptr %b.new.data.gep132, align 8
  %b.new.cap.gep133 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load99, i32 0, i32 2
  store i64 %b.new.cap122, ptr %b.new.cap.gep133, align 8
  br label %b.push_done119

str_overflow_abort127:                            ; preds = %b.grow117
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead128:                                    ; No predecessors!
  br label %b.new.buf.len126

b.byte_ok150:                                     ; preds = %abort.dead152, %b.push_done119
  %b.byte.i8153 = trunc i64 %bortmp146 to i8
  %b.len154 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 0
  %b.len155 = load i64, ptr %b.len154, align 8
  %b.cap156 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 2
  %b.cap157 = load i64, ptr %b.cap156, align 8
  %b.data158 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 1
  %b.data159 = load ptr, ptr %b.data158, align 8
  %b.needs.grow160 = icmp eq i64 %b.len155, %b.cap157
  br i1 %b.needs.grow160, label %b.grow161, label %b.nogrow162

b.byte_err151:                                    ; preds = %b.push_done119
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead152:                                    ; No predecessors!
  br label %b.byte_ok150

b.grow161:                                        ; preds = %b.byte_ok150
  %b.cap2164 = mul i64 %b.cap157, 2
  %b.cap.small165 = icmp slt i64 %b.cap2164, 16
  %b.new.cap166 = select i1 %b.cap.small165, i64 16, i64 %b.cap2164
  %b.new.buf.len167 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap166, i64 1)
  %sum168 = extractvalue { i64, i1 } %b.new.buf.len167, 0
  %ovf169 = extractvalue { i64, i1 } %b.new.buf.len167, 1
  br i1 %ovf169, label %str_overflow_abort171, label %b.new.buf.len170

b.nogrow162:                                      ; preds = %b.byte_ok150
  br label %b.push_done163

b.push_done163:                                   ; preds = %b.nogrow162, %b.new.buf.len170
  %b.cur.data178 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 1
  %b.cur.data179 = load ptr, ptr %b.cur.data178, align 8
  %b.cur.len180 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 0
  %b.cur.len181 = load i64, ptr %b.cur.len180, align 8
  %b.byte.gep182 = getelementptr i8, ptr %b.cur.data179, i64 %b.cur.len181
  store i8 %b.byte.i8153, ptr %b.byte.gep182, align 1
  %b.next.len183 = add i64 %b.cur.len181, 1
  %b.nul184 = getelementptr i8, ptr %b.cur.data179, i64 %b.next.len183
  store i8 0, ptr %b.nul184, align 1
  %b.len.gep185 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 0
  store i64 %b.next.len183, ptr %b.len.gep185, align 8
  %b.load186 = load ptr, ptr %var.b, align 8
  %var.load187 = load i64, ptr %var.cp, align 8
  %bandtmp188 = and i64 %var.load187, 63
  %bortmp189 = or i64 128, %bandtmp188
  %b.b.ge0190 = icmp sge i64 %bortmp189, 0
  %b.b.le255191 = icmp sle i64 %bortmp189, 255
  %b.byte.range192 = and i1 %b.b.ge0190, %b.b.le255191
  br i1 %b.byte.range192, label %b.byte_ok193, label %b.byte_err194

b.new.buf.len170:                                 ; preds = %abort.dead172, %b.grow161
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 %sum168)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf174, ptr align 1 %b.data159, i64 %b.len155, i1 false)
  %b.grow.nul175 = getelementptr i8, ptr %b.new.buf174, i64 %b.len155
  store i8 0, ptr %b.grow.nul175, align 1
  %b.new.data.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 1
  store ptr %b.new.buf174, ptr %b.new.data.gep176, align 8
  %b.new.cap.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load142, i32 0, i32 2
  store i64 %b.new.cap166, ptr %b.new.cap.gep177, align 8
  br label %b.push_done163

str_overflow_abort171:                            ; preds = %b.grow161
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead172:                                    ; No predecessors!
  br label %b.new.buf.len170

b.byte_ok193:                                     ; preds = %abort.dead195, %b.push_done163
  %b.byte.i8196 = trunc i64 %bortmp189 to i8
  %b.len197 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load186, i32 0, i32 0
  %b.len198 = load i64, ptr %b.len197, align 8
  %b.cap199 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load186, i32 0, i32 2
  %b.cap200 = load i64, ptr %b.cap199, align 8
  %b.data201 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load186, i32 0, i32 1
  %b.data202 = load ptr, ptr %b.data201, align 8
  %b.needs.grow203 = icmp eq i64 %b.len198, %b.cap200
  br i1 %b.needs.grow203, label %b.grow204, label %b.nogrow205

b.byte_err194:                                    ; preds = %b.push_done163
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead195:                                    ; No predecessors!
  br label %b.byte_ok193

b.grow204:                                        ; preds = %b.byte_ok193
  %b.cap2207 = mul i64 %b.cap200, 2
  %b.cap.small208 = icmp slt i64 %b.cap2207, 16
  %b.new.cap209 = select i1 %b.cap.small208, i64 16, i64 %b.cap2207
  %b.new.buf.len210 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap209, i64 1)
  %sum211 = extractvalue { i64, i1 } %b.new.buf.len210, 0
  %ovf212 = extractvalue { i64, i1 } %b.new.buf.len210, 1
  br i1 %ovf212, label %str_overflow_abort214, label %b.new.buf.len213

b.nogrow205:                                      ; preds = %b.byte_ok193
  br label %b.push_done206

b.push_done206:                                   ; preds = %b.nogrow205, %b.new.buf.len213
  %b.cur.data221 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load186, i32 0, i32 1
  %b.cur.data222 = load ptr, ptr %b.cur.data221, align 8
  %b.cur.len223 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load186, i32 0, i32 0
  %b.cur.len224 = load i64, ptr %b.cur.len223, align 8
  %b.byte.gep225 = getelementptr i8, ptr %b.cur.data222, i64 %b.cur.len224
  store i8 %b.byte.i8196, ptr %b.byte.gep225, align 1
  %b.next.len226 = add i64 %b.cur.len224, 1
  %b.nul227 = getelementptr i8, ptr %b.cur.data222, i64 %b.next.len226
  store i8 0, ptr %b.nul227, align 1
  %b.len.gep228 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load186, i32 0, i32 0
  store i64 %b.next.len226, ptr %b.len.gep228, align 8
  br label %choice.exit

b.new.buf.len213:                                 ; preds = %abort.dead215, %b.grow204
  %arena.cur216 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf217 = call ptr @dva_arena_alloc(ptr %arena.cur216, i64 %sum211)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf217, ptr align 1 %b.data202, i64 %b.len198, i1 false)
  %b.grow.nul218 = getelementptr i8, ptr %b.new.buf217, i64 %b.len198
  store i8 0, ptr %b.grow.nul218, align 1
  %b.new.data.gep219 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load186, i32 0, i32 1
  store ptr %b.new.buf217, ptr %b.new.data.gep219, align 8
  %b.new.cap.gep220 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load186, i32 0, i32 2
  store i64 %b.new.cap209, ptr %b.new.cap.gep220, align 8
  br label %b.push_done206

str_overflow_abort214:                            ; preds = %b.grow204
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead215:                                    ; No predecessors!
  br label %b.new.buf.len213

b.byte_ok236:                                     ; preds = %abort.dead238, %choice.next97
  %b.byte.i8239 = trunc i64 %bortmp232 to i8
  %b.len240 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load229, i32 0, i32 0
  %b.len241 = load i64, ptr %b.len240, align 8
  %b.cap242 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load229, i32 0, i32 2
  %b.cap243 = load i64, ptr %b.cap242, align 8
  %b.data244 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load229, i32 0, i32 1
  %b.data245 = load ptr, ptr %b.data244, align 8
  %b.needs.grow246 = icmp eq i64 %b.len241, %b.cap243
  br i1 %b.needs.grow246, label %b.grow247, label %b.nogrow248

b.byte_err237:                                    ; preds = %choice.next97
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead238:                                    ; No predecessors!
  br label %b.byte_ok236

b.grow247:                                        ; preds = %b.byte_ok236
  %b.cap2250 = mul i64 %b.cap243, 2
  %b.cap.small251 = icmp slt i64 %b.cap2250, 16
  %b.new.cap252 = select i1 %b.cap.small251, i64 16, i64 %b.cap2250
  %b.new.buf.len253 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap252, i64 1)
  %sum254 = extractvalue { i64, i1 } %b.new.buf.len253, 0
  %ovf255 = extractvalue { i64, i1 } %b.new.buf.len253, 1
  br i1 %ovf255, label %str_overflow_abort257, label %b.new.buf.len256

b.nogrow248:                                      ; preds = %b.byte_ok236
  br label %b.push_done249

b.push_done249:                                   ; preds = %b.nogrow248, %b.new.buf.len256
  %b.cur.data264 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load229, i32 0, i32 1
  %b.cur.data265 = load ptr, ptr %b.cur.data264, align 8
  %b.cur.len266 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load229, i32 0, i32 0
  %b.cur.len267 = load i64, ptr %b.cur.len266, align 8
  %b.byte.gep268 = getelementptr i8, ptr %b.cur.data265, i64 %b.cur.len267
  store i8 %b.byte.i8239, ptr %b.byte.gep268, align 1
  %b.next.len269 = add i64 %b.cur.len267, 1
  %b.nul270 = getelementptr i8, ptr %b.cur.data265, i64 %b.next.len269
  store i8 0, ptr %b.nul270, align 1
  %b.len.gep271 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load229, i32 0, i32 0
  store i64 %b.next.len269, ptr %b.len.gep271, align 8
  %b.load272 = load ptr, ptr %var.b, align 8
  %var.load273 = load i64, ptr %var.cp, align 8
  %shrtmp274 = lshr i64 %var.load273, 12
  %bandtmp275 = and i64 %shrtmp274, 63
  %bortmp276 = or i64 128, %bandtmp275
  %b.b.ge0277 = icmp sge i64 %bortmp276, 0
  %b.b.le255278 = icmp sle i64 %bortmp276, 255
  %b.byte.range279 = and i1 %b.b.ge0277, %b.b.le255278
  br i1 %b.byte.range279, label %b.byte_ok280, label %b.byte_err281

b.new.buf.len256:                                 ; preds = %abort.dead258, %b.grow247
  %arena.cur259 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf260 = call ptr @dva_arena_alloc(ptr %arena.cur259, i64 %sum254)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf260, ptr align 1 %b.data245, i64 %b.len241, i1 false)
  %b.grow.nul261 = getelementptr i8, ptr %b.new.buf260, i64 %b.len241
  store i8 0, ptr %b.grow.nul261, align 1
  %b.new.data.gep262 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load229, i32 0, i32 1
  store ptr %b.new.buf260, ptr %b.new.data.gep262, align 8
  %b.new.cap.gep263 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load229, i32 0, i32 2
  store i64 %b.new.cap252, ptr %b.new.cap.gep263, align 8
  br label %b.push_done249

str_overflow_abort257:                            ; preds = %b.grow247
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead258:                                    ; No predecessors!
  br label %b.new.buf.len256

b.byte_ok280:                                     ; preds = %abort.dead282, %b.push_done249
  %b.byte.i8283 = trunc i64 %bortmp276 to i8
  %b.len284 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 0
  %b.len285 = load i64, ptr %b.len284, align 8
  %b.cap286 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 2
  %b.cap287 = load i64, ptr %b.cap286, align 8
  %b.data288 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 1
  %b.data289 = load ptr, ptr %b.data288, align 8
  %b.needs.grow290 = icmp eq i64 %b.len285, %b.cap287
  br i1 %b.needs.grow290, label %b.grow291, label %b.nogrow292

b.byte_err281:                                    ; preds = %b.push_done249
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead282:                                    ; No predecessors!
  br label %b.byte_ok280

b.grow291:                                        ; preds = %b.byte_ok280
  %b.cap2294 = mul i64 %b.cap287, 2
  %b.cap.small295 = icmp slt i64 %b.cap2294, 16
  %b.new.cap296 = select i1 %b.cap.small295, i64 16, i64 %b.cap2294
  %b.new.buf.len297 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap296, i64 1)
  %sum298 = extractvalue { i64, i1 } %b.new.buf.len297, 0
  %ovf299 = extractvalue { i64, i1 } %b.new.buf.len297, 1
  br i1 %ovf299, label %str_overflow_abort301, label %b.new.buf.len300

b.nogrow292:                                      ; preds = %b.byte_ok280
  br label %b.push_done293

b.push_done293:                                   ; preds = %b.nogrow292, %b.new.buf.len300
  %b.cur.data308 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 1
  %b.cur.data309 = load ptr, ptr %b.cur.data308, align 8
  %b.cur.len310 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 0
  %b.cur.len311 = load i64, ptr %b.cur.len310, align 8
  %b.byte.gep312 = getelementptr i8, ptr %b.cur.data309, i64 %b.cur.len311
  store i8 %b.byte.i8283, ptr %b.byte.gep312, align 1
  %b.next.len313 = add i64 %b.cur.len311, 1
  %b.nul314 = getelementptr i8, ptr %b.cur.data309, i64 %b.next.len313
  store i8 0, ptr %b.nul314, align 1
  %b.len.gep315 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 0
  store i64 %b.next.len313, ptr %b.len.gep315, align 8
  %b.load316 = load ptr, ptr %var.b, align 8
  %var.load317 = load i64, ptr %var.cp, align 8
  %shrtmp318 = lshr i64 %var.load317, 6
  %bandtmp319 = and i64 %shrtmp318, 63
  %bortmp320 = or i64 128, %bandtmp319
  %b.b.ge0321 = icmp sge i64 %bortmp320, 0
  %b.b.le255322 = icmp sle i64 %bortmp320, 255
  %b.byte.range323 = and i1 %b.b.ge0321, %b.b.le255322
  br i1 %b.byte.range323, label %b.byte_ok324, label %b.byte_err325

b.new.buf.len300:                                 ; preds = %abort.dead302, %b.grow291
  %arena.cur303 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf304 = call ptr @dva_arena_alloc(ptr %arena.cur303, i64 %sum298)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf304, ptr align 1 %b.data289, i64 %b.len285, i1 false)
  %b.grow.nul305 = getelementptr i8, ptr %b.new.buf304, i64 %b.len285
  store i8 0, ptr %b.grow.nul305, align 1
  %b.new.data.gep306 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 1
  store ptr %b.new.buf304, ptr %b.new.data.gep306, align 8
  %b.new.cap.gep307 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load272, i32 0, i32 2
  store i64 %b.new.cap296, ptr %b.new.cap.gep307, align 8
  br label %b.push_done293

str_overflow_abort301:                            ; preds = %b.grow291
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead302:                                    ; No predecessors!
  br label %b.new.buf.len300

b.byte_ok324:                                     ; preds = %abort.dead326, %b.push_done293
  %b.byte.i8327 = trunc i64 %bortmp320 to i8
  %b.len328 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 0
  %b.len329 = load i64, ptr %b.len328, align 8
  %b.cap330 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 2
  %b.cap331 = load i64, ptr %b.cap330, align 8
  %b.data332 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 1
  %b.data333 = load ptr, ptr %b.data332, align 8
  %b.needs.grow334 = icmp eq i64 %b.len329, %b.cap331
  br i1 %b.needs.grow334, label %b.grow335, label %b.nogrow336

b.byte_err325:                                    ; preds = %b.push_done293
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead326:                                    ; No predecessors!
  br label %b.byte_ok324

b.grow335:                                        ; preds = %b.byte_ok324
  %b.cap2338 = mul i64 %b.cap331, 2
  %b.cap.small339 = icmp slt i64 %b.cap2338, 16
  %b.new.cap340 = select i1 %b.cap.small339, i64 16, i64 %b.cap2338
  %b.new.buf.len341 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap340, i64 1)
  %sum342 = extractvalue { i64, i1 } %b.new.buf.len341, 0
  %ovf343 = extractvalue { i64, i1 } %b.new.buf.len341, 1
  br i1 %ovf343, label %str_overflow_abort345, label %b.new.buf.len344

b.nogrow336:                                      ; preds = %b.byte_ok324
  br label %b.push_done337

b.push_done337:                                   ; preds = %b.nogrow336, %b.new.buf.len344
  %b.cur.data352 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 1
  %b.cur.data353 = load ptr, ptr %b.cur.data352, align 8
  %b.cur.len354 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 0
  %b.cur.len355 = load i64, ptr %b.cur.len354, align 8
  %b.byte.gep356 = getelementptr i8, ptr %b.cur.data353, i64 %b.cur.len355
  store i8 %b.byte.i8327, ptr %b.byte.gep356, align 1
  %b.next.len357 = add i64 %b.cur.len355, 1
  %b.nul358 = getelementptr i8, ptr %b.cur.data353, i64 %b.next.len357
  store i8 0, ptr %b.nul358, align 1
  %b.len.gep359 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 0
  store i64 %b.next.len357, ptr %b.len.gep359, align 8
  %b.load360 = load ptr, ptr %var.b, align 8
  %var.load361 = load i64, ptr %var.cp, align 8
  %bandtmp362 = and i64 %var.load361, 63
  %bortmp363 = or i64 128, %bandtmp362
  %b.b.ge0364 = icmp sge i64 %bortmp363, 0
  %b.b.le255365 = icmp sle i64 %bortmp363, 255
  %b.byte.range366 = and i1 %b.b.ge0364, %b.b.le255365
  br i1 %b.byte.range366, label %b.byte_ok367, label %b.byte_err368

b.new.buf.len344:                                 ; preds = %abort.dead346, %b.grow335
  %arena.cur347 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf348 = call ptr @dva_arena_alloc(ptr %arena.cur347, i64 %sum342)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf348, ptr align 1 %b.data333, i64 %b.len329, i1 false)
  %b.grow.nul349 = getelementptr i8, ptr %b.new.buf348, i64 %b.len329
  store i8 0, ptr %b.grow.nul349, align 1
  %b.new.data.gep350 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 1
  store ptr %b.new.buf348, ptr %b.new.data.gep350, align 8
  %b.new.cap.gep351 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load316, i32 0, i32 2
  store i64 %b.new.cap340, ptr %b.new.cap.gep351, align 8
  br label %b.push_done337

str_overflow_abort345:                            ; preds = %b.grow335
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead346:                                    ; No predecessors!
  br label %b.new.buf.len344

b.byte_ok367:                                     ; preds = %abort.dead369, %b.push_done337
  %b.byte.i8370 = trunc i64 %bortmp363 to i8
  %b.len371 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 0
  %b.len372 = load i64, ptr %b.len371, align 8
  %b.cap373 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 2
  %b.cap374 = load i64, ptr %b.cap373, align 8
  %b.data375 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 1
  %b.data376 = load ptr, ptr %b.data375, align 8
  %b.needs.grow377 = icmp eq i64 %b.len372, %b.cap374
  br i1 %b.needs.grow377, label %b.grow378, label %b.nogrow379

b.byte_err368:                                    ; preds = %b.push_done337
  call void @dva_abort_b_byte_msg()
  unreachable

abort.dead369:                                    ; No predecessors!
  br label %b.byte_ok367

b.grow378:                                        ; preds = %b.byte_ok367
  %b.cap2381 = mul i64 %b.cap374, 2
  %b.cap.small382 = icmp slt i64 %b.cap2381, 16
  %b.new.cap383 = select i1 %b.cap.small382, i64 16, i64 %b.cap2381
  %b.new.buf.len384 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap383, i64 1)
  %sum385 = extractvalue { i64, i1 } %b.new.buf.len384, 0
  %ovf386 = extractvalue { i64, i1 } %b.new.buf.len384, 1
  br i1 %ovf386, label %str_overflow_abort388, label %b.new.buf.len387

b.nogrow379:                                      ; preds = %b.byte_ok367
  br label %b.push_done380

b.push_done380:                                   ; preds = %b.nogrow379, %b.new.buf.len387
  %b.cur.data395 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 1
  %b.cur.data396 = load ptr, ptr %b.cur.data395, align 8
  %b.cur.len397 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 0
  %b.cur.len398 = load i64, ptr %b.cur.len397, align 8
  %b.byte.gep399 = getelementptr i8, ptr %b.cur.data396, i64 %b.cur.len398
  store i8 %b.byte.i8370, ptr %b.byte.gep399, align 1
  %b.next.len400 = add i64 %b.cur.len398, 1
  %b.nul401 = getelementptr i8, ptr %b.cur.data396, i64 %b.next.len400
  store i8 0, ptr %b.nul401, align 1
  %b.len.gep402 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 0
  store i64 %b.next.len400, ptr %b.len.gep402, align 8
  br label %choice.exit

b.new.buf.len387:                                 ; preds = %abort.dead389, %b.grow378
  %arena.cur390 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf391 = call ptr @dva_arena_alloc(ptr %arena.cur390, i64 %sum385)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf391, ptr align 1 %b.data376, i64 %b.len372, i1 false)
  %b.grow.nul392 = getelementptr i8, ptr %b.new.buf391, i64 %b.len372
  store i8 0, ptr %b.grow.nul392, align 1
  %b.new.data.gep393 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 1
  store ptr %b.new.buf391, ptr %b.new.data.gep393, align 8
  %b.new.cap.gep394 = getelementptr inbounds { i64, ptr, i64 }, ptr %b.load360, i32 0, i32 2
  store i64 %b.new.cap383, ptr %b.new.cap.gep394, align 8
  br label %b.push_done380

str_overflow_abort388:                            ; preds = %b.grow378
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead389:                                    ; No predecessors!
  br label %b.new.buf.len387
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_b_byte_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @b_byte_msg, i64 57)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #5

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

define void @"utf::append_codepoint"(ptr %0, i64 %1) #0 {
entry:
  %var.cp = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.cp, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load1 = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load1 to i32
  call void @"utf::append_rune"(ptr %var.load, i32 %coerce.trunc)
  ret void
}

define { i64, ptr } @"utf::encode_rune"(i32 %0) #0 {
entry:
  %builder.freeze = alloca { i64, ptr }, align 8
  %var.b = alloca ptr, align 8
  %var.r = alloca i32, align 4
  store i32 %0, ptr %var.r, align 4
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 0
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %b.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 4, i64 1)
  %sum = extractvalue { i64, i1 } %b.buf.len, 0
  %ovf = extractvalue { i64, i1 } %b.buf.len, 1
  br i1 %ovf, label %str_overflow_abort, label %b.buf.len1

b.buf.len1:                                       ; preds = %abort.dead, %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 %sum)
  %b.nul0 = getelementptr i8, ptr %b.buf, i64 0
  store i8 0, ptr %b.nul0, align 1
  store i64 0, ptr %b.len.gep, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 4, ptr %b.cap.gep, align 8
  store ptr %builder.new, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %var.load3 = load i32, ptr %var.r, align 4
  call void @"utf::append_rune"(ptr %var.load, i32 %var.load3)
  %var.load4 = load ptr, ptr %var.b, align 8
  %b.freeze.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  %b.freeze.len5 = load i64, ptr %b.freeze.len, align 8
  %b.freeze.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  %b.freeze.data6 = load ptr, ptr %b.freeze.data, align 8
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %b.buf.len1

b.freeze.check:                                   ; preds = %b.buf.len1
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 0
  %b.freeze.cap = load i64, ptr %b.freeze.cap.gep, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %b.freeze.data6, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %b.freeze.data6, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %b.freeze.data6, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %b.freeze.len5, 1
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %b.freeze.data6, i64 %b.freeze.len5, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %b.freeze.len5
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %b.buf.len1
  %b.freeze.data8 = phi ptr [ %b.freeze.data6, %b.buf.len1 ], [ %b.freeze.data6, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %str.build.len.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 0
  store i64 %b.freeze.len5, ptr %str.build.len.gep, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data8, ptr %str.build.data.gep, align 8
  %b.freeze.rst.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 0
  store i64 0, ptr %b.freeze.rst.len, align 8
  %b.freeze.rst.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 1
  store ptr null, ptr %b.freeze.rst.data, align 8
  %b.freeze.rst.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load4, i32 0, i32 2
  store i64 0, ptr %b.freeze.rst.cap, align 8
  %ret.pack = load { i64, ptr }, ptr %builder.freeze, align 8
  ret { i64, ptr } %ret.pack
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

define { i64, ptr } @"utf::encode_codepoint"(i64 %0) #0 {
entry:
  %ret.ub.salloc = alloca { i64, ptr }, align 8
  %var.cp = alloca i64, align 8
  store i64 %0, ptr %var.cp, align 8
  %var.load = load i64, ptr %var.cp, align 8
  %coerce.trunc = trunc i64 %var.load to i32
  %call.res = call { i64, ptr } @"utf::encode_rune"(i32 %coerce.trunc)
  store { i64, ptr } %call.res, ptr %ret.ub.salloc, align 8
  %ret.pack = load { i64, ptr }, ptr %ret.ub.salloc, align 8
  ret { i64, ptr } %ret.pack
}

define i64 @"utf::seq_len"(i64 %0) #0 {
entry:
  %var.b0 = alloca i64, align 8
  store i64 %0, ptr %var.b0, align 8
  %var.load = load i64, ptr %var.b0, align 8
  %cmptmp = icmp slt i64 %var.load, 128
  br i1 %cmptmp, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next5, %choice.case4, %choice.case1, %choice.case
  %choice.res = phi i64 [ 1, %choice.case ], [ 2, %choice.case1 ], [ 3, %choice.case4 ], [ 4, %choice.next5 ]
  ret i64 %choice.res

choice.case:                                      ; preds = %entry
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %cmptmp3 = icmp slt i64 %var.load, 224
  br i1 %cmptmp3, label %choice.case1, label %choice.next2

choice.case1:                                     ; preds = %choice.next
  br label %choice.exit

choice.next2:                                     ; preds = %choice.next
  %cmptmp6 = icmp slt i64 %var.load, 240
  br i1 %cmptmp6, label %choice.case4, label %choice.next5

choice.case4:                                     ; preds = %choice.next2
  br label %choice.exit

choice.next5:                                     ; preds = %choice.next2
  br label %choice.exit
}

define i32 @"utf::decode_rune_addr"(ptr %0, i64 %1) #0 {
entry:
  %var.c127 = alloca i64, align 8
  %var.b3 = alloca i64, align 8
  %var.b289 = alloca i64, align 8
  %var.c = alloca i64, align 8
  %var.b2 = alloca i64, align 8
  %var.b1 = alloca i64, align 8
  %"var.cp'" = alloca i64, align 8
  %var.b0 = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.p = alloca ptr, align 8
  store ptr %0, ptr %var.p, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load ptr, ptr %var.p, align 8
  %var.load1 = load i64, ptr %var.i, align 8
  %ptr.int.l = ptrtoint ptr %var.load to i64
  %addtmp = add i64 %ptr.int.l, %var.load1
  %ptr.res = inttoptr i64 %addtmp to ptr
  %raw.int = ptrtoint ptr %ptr.res to i64
  %raw.clean.int = and i64 %raw.int, 281474976710655
  %raw.clean.ptr = inttoptr i64 %raw.clean.int to ptr
  %raw.load = load volatile i8, ptr %raw.clean.ptr, align 1
  %coerce.zext = zext i8 %raw.load to i64
  store i64 %coerce.zext, ptr %var.b0, align 8
  %var.load2 = load i64, ptr %var.b0, align 8
  %cmptmp = icmp slt i64 %var.load2, 128
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load3 = load i64, ptr %var.b0, align 8
  %coerce.trunc = trunc i64 %var.load3 to i32
  ret i32 %coerce.trunc

choice.exit:                                      ; preds = %ret.dead, %entry
  store i64 65533, ptr %"var.cp'", align 8
  %var.load4 = load i64, ptr %var.b0, align 8
  %cmptmp6 = icmp sge i64 %var.load4, 194
  br i1 %cmptmp6, label %and.9.then, label %and.9.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit

choice.exit5:                                     ; preds = %choice.next, %choice.exit24
  %var.load138 = load i64, ptr %"var.cp'", align 8
  %coerce.trunc139 = trunc i64 %var.load138 to i32
  ret i32 %coerce.trunc139

choice.case:                                      ; preds = %and.9.exit
  %var.load8 = load ptr, ptr %var.p, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %ptr.int.l10 = ptrtoint ptr %var.load8 to i64
  %addtmp11 = add i64 %ptr.int.l10, %var.load9
  %ptr.res12 = inttoptr i64 %addtmp11 to ptr
  %ptr.int.l13 = ptrtoint ptr %ptr.res12 to i64
  %addtmp14 = add i64 %ptr.int.l13, 1
  %ptr.res15 = inttoptr i64 %addtmp14 to ptr
  %raw.int16 = ptrtoint ptr %ptr.res15 to i64
  %raw.clean.int17 = and i64 %raw.int16, 281474976710655
  %raw.clean.ptr18 = inttoptr i64 %raw.clean.int17 to ptr
  %raw.load19 = load volatile i8, ptr %raw.clean.ptr18, align 1
  %coerce.zext20 = zext i8 %raw.load19 to i64
  store i64 %coerce.zext20, ptr %var.b1, align 8
  %var.load21 = load i64, ptr %var.b1, align 8
  %bandtmp = and i64 %var.load21, 192
  %cmptmp22 = icmp eq i64 %bandtmp, 128
  br i1 %cmptmp22, label %choice.then23, label %choice.exit24

choice.next:                                      ; preds = %and.9.exit
  br label %choice.exit5

and.9.then:                                       ; preds = %choice.exit
  %cmptmp7 = icmp sle i64 %var.load4, 244
  br label %and.9.exit

and.9.else:                                       ; preds = %choice.exit
  br label %and.9.exit

and.9.exit:                                       ; preds = %and.9.else, %and.9.then
  %and.9.phi = phi i1 [ %cmptmp7, %and.9.then ], [ %cmptmp6, %and.9.else ]
  br i1 %and.9.phi, label %choice.case, label %choice.next

choice.then23:                                    ; preds = %choice.case
  %var.load25 = load i64, ptr %var.b0, align 8
  %cmptmp29 = icmp slt i64 %var.load25, 224
  br i1 %cmptmp29, label %choice.case27, label %choice.next28

choice.exit24:                                    ; preds = %choice.exit26, %choice.case
  br label %choice.exit5

choice.exit26:                                    ; preds = %choice.exit94, %choice.exit54, %choice.case27
  br label %choice.exit24

choice.case27:                                    ; preds = %choice.then23
  %var.load30 = load i64, ptr %var.b0, align 8
  %bandtmp31 = and i64 %var.load30, 31
  %shltmp = shl i64 %bandtmp31, 6
  %var.load32 = load i64, ptr %var.b1, align 8
  %bandtmp33 = and i64 %var.load32, 63
  %bortmp = or i64 %shltmp, %bandtmp33
  store i64 %bortmp, ptr %"var.cp'", align 8
  br label %choice.exit26

choice.next28:                                    ; preds = %choice.then23
  %cmptmp36 = icmp slt i64 %var.load25, 240
  br i1 %cmptmp36, label %choice.case34, label %choice.next35

choice.case34:                                    ; preds = %choice.next28
  %var.load37 = load ptr, ptr %var.p, align 8
  %var.load38 = load i64, ptr %var.i, align 8
  %ptr.int.l39 = ptrtoint ptr %var.load37 to i64
  %addtmp40 = add i64 %ptr.int.l39, %var.load38
  %ptr.res41 = inttoptr i64 %addtmp40 to ptr
  %ptr.int.l42 = ptrtoint ptr %ptr.res41 to i64
  %addtmp43 = add i64 %ptr.int.l42, 2
  %ptr.res44 = inttoptr i64 %addtmp43 to ptr
  %raw.int45 = ptrtoint ptr %ptr.res44 to i64
  %raw.clean.int46 = and i64 %raw.int45, 281474976710655
  %raw.clean.ptr47 = inttoptr i64 %raw.clean.int46 to ptr
  %raw.load48 = load volatile i8, ptr %raw.clean.ptr47, align 1
  %coerce.zext49 = zext i8 %raw.load48 to i64
  store i64 %coerce.zext49, ptr %var.b2, align 8
  %var.load50 = load i64, ptr %var.b2, align 8
  %bandtmp51 = and i64 %var.load50, 192
  %cmptmp52 = icmp eq i64 %bandtmp51, 128
  br i1 %cmptmp52, label %choice.then53, label %choice.exit54

choice.next35:                                    ; preds = %choice.next28
  %var.load76 = load ptr, ptr %var.p, align 8
  %var.load77 = load i64, ptr %var.i, align 8
  %ptr.int.l78 = ptrtoint ptr %var.load76 to i64
  %addtmp79 = add i64 %ptr.int.l78, %var.load77
  %ptr.res80 = inttoptr i64 %addtmp79 to ptr
  %ptr.int.l81 = ptrtoint ptr %ptr.res80 to i64
  %addtmp82 = add i64 %ptr.int.l81, 2
  %ptr.res83 = inttoptr i64 %addtmp82 to ptr
  %raw.int84 = ptrtoint ptr %ptr.res83 to i64
  %raw.clean.int85 = and i64 %raw.int84, 281474976710655
  %raw.clean.ptr86 = inttoptr i64 %raw.clean.int85 to ptr
  %raw.load87 = load volatile i8, ptr %raw.clean.ptr86, align 1
  %coerce.zext88 = zext i8 %raw.load87 to i64
  store i64 %coerce.zext88, ptr %var.b289, align 8
  %var.load90 = load i64, ptr %var.b289, align 8
  %bandtmp91 = and i64 %var.load90, 192
  %cmptmp92 = icmp eq i64 %bandtmp91, 128
  br i1 %cmptmp92, label %choice.then93, label %choice.exit94

choice.then53:                                    ; preds = %choice.case34
  %var.load55 = load i64, ptr %var.b0, align 8
  %bandtmp56 = and i64 %var.load55, 15
  %shltmp57 = shl i64 %bandtmp56, 12
  %var.load58 = load i64, ptr %var.b1, align 8
  %bandtmp59 = and i64 %var.load58, 63
  %shltmp60 = shl i64 %bandtmp59, 6
  %bortmp61 = or i64 %shltmp57, %shltmp60
  %var.load62 = load i64, ptr %var.b2, align 8
  %bandtmp63 = and i64 %var.load62, 63
  %bortmp64 = or i64 %bortmp61, %bandtmp63
  store i64 %bortmp64, ptr %var.c, align 8
  %var.load65 = load i64, ptr %var.c, align 8
  %cmptmp66 = icmp sge i64 %var.load65, 2048
  br i1 %cmptmp66, label %and.10.then, label %and.10.else

choice.exit54:                                    ; preds = %choice.exit74, %choice.case34
  br label %choice.exit26

and.10.then:                                      ; preds = %choice.then53
  %var.load67 = load i64, ptr %var.c, align 8
  %cmptmp71 = icmp sge i64 %var.load67, 55296
  br i1 %cmptmp71, label %and.11.then, label %and.11.else

and.10.else:                                      ; preds = %choice.then53
  br label %and.10.exit

and.10.exit:                                      ; preds = %and.10.else, %choice.exit68
  %and.10.phi = phi i1 [ %nottmp, %choice.exit68 ], [ %cmptmp66, %and.10.else ]
  br i1 %and.10.phi, label %choice.then73, label %choice.exit74

choice.exit68:                                    ; preds = %choice.next70, %choice.case69
  %choice.res = phi i1 [ true, %choice.case69 ], [ false, %choice.next70 ]
  %nottmp = xor i1 %choice.res, true
  br label %and.10.exit

choice.case69:                                    ; preds = %and.11.exit
  br label %choice.exit68

choice.next70:                                    ; preds = %and.11.exit
  br label %choice.exit68

and.11.then:                                      ; preds = %and.10.then
  %cmptmp72 = icmp sle i64 %var.load67, 57343
  br label %and.11.exit

and.11.else:                                      ; preds = %and.10.then
  br label %and.11.exit

and.11.exit:                                      ; preds = %and.11.else, %and.11.then
  %and.11.phi = phi i1 [ %cmptmp72, %and.11.then ], [ %cmptmp71, %and.11.else ]
  br i1 %and.11.phi, label %choice.case69, label %choice.next70

choice.then73:                                    ; preds = %and.10.exit
  %var.load75 = load i64, ptr %var.c, align 8
  store i64 %var.load75, ptr %"var.cp'", align 8
  br label %choice.exit74

choice.exit74:                                    ; preds = %choice.then73, %and.10.exit
  br label %choice.exit54

choice.then93:                                    ; preds = %choice.next35
  %var.load95 = load ptr, ptr %var.p, align 8
  %var.load96 = load i64, ptr %var.i, align 8
  %ptr.int.l97 = ptrtoint ptr %var.load95 to i64
  %addtmp98 = add i64 %ptr.int.l97, %var.load96
  %ptr.res99 = inttoptr i64 %addtmp98 to ptr
  %ptr.int.l100 = ptrtoint ptr %ptr.res99 to i64
  %addtmp101 = add i64 %ptr.int.l100, 3
  %ptr.res102 = inttoptr i64 %addtmp101 to ptr
  %raw.int103 = ptrtoint ptr %ptr.res102 to i64
  %raw.clean.int104 = and i64 %raw.int103, 281474976710655
  %raw.clean.ptr105 = inttoptr i64 %raw.clean.int104 to ptr
  %raw.load106 = load volatile i8, ptr %raw.clean.ptr105, align 1
  %coerce.zext107 = zext i8 %raw.load106 to i64
  store i64 %coerce.zext107, ptr %var.b3, align 8
  %var.load108 = load i64, ptr %var.b3, align 8
  %bandtmp109 = and i64 %var.load108, 192
  %cmptmp110 = icmp eq i64 %bandtmp109, 128
  br i1 %cmptmp110, label %choice.then111, label %choice.exit112

choice.exit94:                                    ; preds = %choice.exit112, %choice.next35
  br label %choice.exit26

choice.then111:                                   ; preds = %choice.then93
  %var.load113 = load i64, ptr %var.b0, align 8
  %bandtmp114 = and i64 %var.load113, 7
  %shltmp115 = shl i64 %bandtmp114, 18
  %var.load116 = load i64, ptr %var.b1, align 8
  %bandtmp117 = and i64 %var.load116, 63
  %shltmp118 = shl i64 %bandtmp117, 12
  %bortmp119 = or i64 %shltmp115, %shltmp118
  %var.load120 = load i64, ptr %var.b289, align 8
  %bandtmp121 = and i64 %var.load120, 63
  %shltmp122 = shl i64 %bandtmp121, 6
  %bortmp123 = or i64 %bortmp119, %shltmp122
  %var.load124 = load i64, ptr %var.b3, align 8
  %bandtmp125 = and i64 %var.load124, 63
  %bortmp126 = or i64 %bortmp123, %bandtmp125
  store i64 %bortmp126, ptr %var.c127, align 8
  %var.load128 = load i64, ptr %var.c127, align 8
  %cmptmp132 = icmp sge i64 %var.load128, 65536
  br i1 %cmptmp132, label %and.12.then, label %and.12.else

choice.exit112:                                   ; preds = %choice.exit136, %choice.then93
  br label %choice.exit94

choice.exit129:                                   ; preds = %choice.next131, %choice.case130
  %choice.res134 = phi i1 [ true, %choice.case130 ], [ false, %choice.next131 ]
  br i1 %choice.res134, label %choice.then135, label %choice.exit136

choice.case130:                                   ; preds = %and.12.exit
  br label %choice.exit129

choice.next131:                                   ; preds = %and.12.exit
  br label %choice.exit129

and.12.then:                                      ; preds = %choice.then111
  %cmptmp133 = icmp sle i64 %var.load128, 1114111
  br label %and.12.exit

and.12.else:                                      ; preds = %choice.then111
  br label %and.12.exit

and.12.exit:                                      ; preds = %and.12.else, %and.12.then
  %and.12.phi = phi i1 [ %cmptmp133, %and.12.then ], [ %cmptmp132, %and.12.else ]
  br i1 %and.12.phi, label %choice.case130, label %choice.next131

choice.then135:                                   ; preds = %choice.exit129
  %var.load137 = load i64, ptr %var.c127, align 8
  store i64 %var.load137, ptr %"var.cp'", align 8
  br label %choice.exit136

choice.exit136:                                   ; preds = %choice.then135, %choice.exit129
  br label %choice.exit112
}

define i32 @"utf::decode_rune_builder"(ptr %0, i64 %1) #0 {
entry:
  %var.need = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.b = alloca ptr, align 8
  store ptr %0, ptr %var.b, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load ptr, ptr %var.b, align 8
  %b.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load, i32 0, i32 0
  %b.len1 = load i64, ptr %b.len, align 8
  store i64 %b.len1, ptr %var.n, align 8
  %var.load2 = load i64, ptr %var.i, align 8
  %cmptmp = icmp sge i64 %var.load2, 0
  br i1 %cmptmp, label %and.13.then, label %and.13.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit5

choice.case:                                      ; preds = %and.13.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.13.exit
  br label %choice.exit

and.13.then:                                      ; preds = %entry
  %var.load3 = load i64, ptr %var.n, align 8
  %cmptmp4 = icmp slt i64 %var.load2, %var.load3
  br label %and.13.exit

and.13.else:                                      ; preds = %entry
  br label %and.13.exit

and.13.exit:                                      ; preds = %and.13.else, %and.13.then
  %and.13.phi = phi i1 [ %cmptmp4, %and.13.then ], [ %cmptmp, %and.13.else ]
  br i1 %and.13.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  ret i32 65533

choice.exit5:                                     ; preds = %ret.dead, %choice.exit
  %var.load6 = load ptr, ptr %var.b, align 8
  %b.read.len = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 0
  %b.read.len7 = load i64, ptr %b.read.len, align 8
  %b.read.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load6, i32 0, i32 1
  %b.read.data8 = load ptr, ptr %b.read.data, align 8
  %var.load9 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load9, %b.read.len7
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit5

idx_ok:                                           ; preds = %abort.dead, %choice.exit5
  %s.byte.gep = getelementptr i8, ptr %b.read.data8, i64 %var.load9
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %call.res = call i64 @"utf::seq_len"(i64 %s.byte.val)
  store i64 %call.res, ptr %var.need, align 8
  %var.load10 = load i64, ptr %var.i, align 8
  %var.load11 = load i64, ptr %var.need, align 8
  %addtmp = add i64 %var.load10, %var.load11
  %var.load12 = load i64, ptr %var.n, align 8
  %cmptmp13 = icmp sgt i64 %addtmp, %var.load12
  br i1 %cmptmp13, label %choice.then14, label %choice.exit15

idx_oob:                                          ; preds = %choice.exit5
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then14:                                    ; preds = %idx_ok
  ret i32 65533

choice.exit15:                                    ; preds = %ret.dead16, %idx_ok
  %var.load17 = load ptr, ptr %var.b, align 8
  %b.ptr = getelementptr inbounds { i64, ptr, i64 }, ptr %var.load17, i32 0, i32 1
  %b.ptr18 = load ptr, ptr %b.ptr, align 8
  %var.load19 = load i64, ptr %var.i, align 8
  %call.res20 = call i32 @"utf::decode_rune_addr"(ptr %b.ptr18, i64 %var.load19)
  ret i32 %call.res20

ret.dead16:                                       ; No predecessors!
  br label %choice.exit15
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_oob_msg() #4 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_oob_msg, i64 39)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define { i64, i64 } @"utf::decode_str_at"(ptr %0, i64 %1) #0 {
entry:
  %rec.salloc74 = alloca { i64, i64 }, align 8
  %rec.salloc69 = alloca { i64, i64 }, align 8
  %var.cp = alloca i64, align 8
  %rec.salloc20 = alloca { i64, i64 }, align 8
  %var.need = alloca i64, align 8
  %var.b0 = alloca i64, align 8
  %rec.salloc = alloca { i64, i64 }, align 8
  %var.n = alloca i64, align 8
  %var.i = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.i, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.i, align 8
  %cmptmp = icmp sge i64 %var.load3, 0
  br i1 %cmptmp, label %and.15.then, label %and.15.else

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit6

choice.case:                                      ; preds = %and.15.exit
  br label %choice.exit

choice.next:                                      ; preds = %and.15.exit
  br label %choice.exit

and.15.then:                                      ; preds = %entry
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp5 = icmp slt i64 %var.load3, %var.load4
  br label %and.15.exit

and.15.else:                                      ; preds = %entry
  br label %and.15.exit

and.15.exit:                                      ; preds = %and.15.else, %and.15.then
  %and.15.phi = phi i1 [ %cmptmp5, %and.15.then ], [ %cmptmp, %and.15.else ]
  br i1 %and.15.phi, label %choice.case, label %choice.next

choice.then:                                      ; preds = %choice.exit
  %rec.fld = getelementptr inbounds { i64, i64 }, ptr %rec.salloc, i32 0, i32 0
  store i64 -1, ptr %rec.fld, align 8
  %rec.fld7 = getelementptr inbounds { i64, i64 }, ptr %rec.salloc, i32 0, i32 1
  store i64 1, ptr %rec.fld7, align 8
  %ret.pack = load { i64, i64 }, ptr %rec.salloc, align 8
  ret { i64, i64 } %ret.pack

choice.exit6:                                     ; preds = %ret.dead, %choice.exit
  %var.load8 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 0
  %s.read.len9 = load i64, ptr %s.read.len, align 8
  %s.read.len10 = and i64 %s.read.len9, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load8, i32 0, i32 1
  %s.read.data11 = load ptr, ptr %s.read.data, align 8
  %var.load12 = load i64, ptr %var.i, align 8
  %idx.oob = icmp uge i64 %var.load12, %s.read.len10
  br i1 %idx.oob, label %idx_oob, label %idx_ok

ret.dead:                                         ; No predecessors!
  br label %choice.exit6

idx_ok:                                           ; preds = %abort.dead, %choice.exit6
  %s.byte.gep = getelementptr i8, ptr %s.read.data11, i64 %var.load12
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %s.byte.val, ptr %var.b0, align 8
  %var.load13 = load i64, ptr %var.b0, align 8
  %call.res = call i64 @"utf::seq_len"(i64 %var.load13)
  store i64 %call.res, ptr %var.need, align 8
  %var.load14 = load i64, ptr %var.i, align 8
  %var.load15 = load i64, ptr %var.need, align 8
  %addtmp = add i64 %var.load14, %var.load15
  %var.load16 = load i64, ptr %var.n, align 8
  %cmptmp17 = icmp sgt i64 %addtmp, %var.load16
  br i1 %cmptmp17, label %choice.then18, label %choice.exit19

idx_oob:                                          ; preds = %choice.exit6
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then18:                                    ; preds = %idx_ok
  %rec.fld21 = getelementptr inbounds { i64, i64 }, ptr %rec.salloc20, i32 0, i32 0
  store i64 -1, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { i64, i64 }, ptr %rec.salloc20, i32 0, i32 1
  store i64 1, ptr %rec.fld22, align 8
  %ret.pack23 = load { i64, i64 }, ptr %rec.salloc20, align 8
  ret { i64, i64 } %ret.pack23

choice.exit19:                                    ; preds = %ret.dead24, %idx_ok
  %var.load25 = load ptr, ptr %var.s, align 8
  %s.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load25, i32 0, i32 1
  %s.ptr26 = load ptr, ptr %s.ptr, align 8
  %var.load27 = load i64, ptr %var.i, align 8
  %call.res28 = call i32 @"utf::decode_rune_addr"(ptr %s.ptr26, i64 %var.load27)
  %coerce.sext = sext i32 %call.res28 to i64
  store i64 %coerce.sext, ptr %var.cp, align 8
  %var.load29 = load i64, ptr %var.cp, align 8
  %cmptmp30 = icmp eq i64 %var.load29, 65533
  br i1 %cmptmp30, label %and.16.then, label %and.16.else

ret.dead24:                                       ; No predecessors!
  br label %choice.exit19

and.16.then:                                      ; preds = %choice.exit19
  %var.load31 = load i64, ptr %var.need, align 8
  %cmptmp32 = icmp ne i64 %var.load31, 3
  br i1 %cmptmp32, label %or.17.then, label %or.17.else

and.16.else:                                      ; preds = %choice.exit19
  br label %and.16.exit

and.16.exit:                                      ; preds = %and.16.else, %or.19.exit
  %and.16.phi = phi i1 [ %or.19.phi, %or.19.exit ], [ %cmptmp30, %and.16.else ]
  br i1 %and.16.phi, label %choice.then67, label %choice.else

or.17.then:                                       ; preds = %and.16.then
  br label %or.17.exit

or.17.else:                                       ; preds = %and.16.then
  %var.load33 = load i64, ptr %var.b0, align 8
  %cmptmp34 = icmp ne i64 %var.load33, 239
  br label %or.17.exit

or.17.exit:                                       ; preds = %or.17.else, %or.17.then
  %or.17.phi = phi i1 [ %cmptmp32, %or.17.then ], [ %cmptmp34, %or.17.else ]
  br i1 %or.17.phi, label %or.18.then, label %or.18.else

or.18.then:                                       ; preds = %or.17.exit
  br label %or.18.exit

or.18.else:                                       ; preds = %or.17.exit
  %var.load35 = load ptr, ptr %var.s, align 8
  %s.read.len36 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 0
  %s.read.len37 = load i64, ptr %s.read.len36, align 8
  %s.read.len38 = and i64 %s.read.len37, 281474976710655
  %s.read.data39 = getelementptr inbounds { i64, ptr }, ptr %var.load35, i32 0, i32 1
  %s.read.data40 = load ptr, ptr %s.read.data39, align 8
  %var.load41 = load i64, ptr %var.i, align 8
  %addtmp42 = add i64 %var.load41, 1
  %idx.oob43 = icmp uge i64 %addtmp42, %s.read.len38
  br i1 %idx.oob43, label %idx_oob45, label %idx_ok44

or.18.exit:                                       ; preds = %idx_ok44, %or.18.then
  %or.18.phi = phi i1 [ %or.17.phi, %or.18.then ], [ %cmptmp50, %idx_ok44 ]
  br i1 %or.18.phi, label %or.19.then, label %or.19.else

idx_ok44:                                         ; preds = %abort.dead46, %or.18.else
  %s.byte.gep47 = getelementptr i8, ptr %s.read.data40, i64 %addtmp42
  %s.byte48 = load i8, ptr %s.byte.gep47, align 1
  %s.byte.val49 = zext i8 %s.byte48 to i64
  %cmptmp50 = icmp ne i64 %s.byte.val49, 191
  br label %or.18.exit

idx_oob45:                                        ; preds = %or.18.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead46:                                     ; No predecessors!
  br label %idx_ok44

or.19.then:                                       ; preds = %or.18.exit
  br label %or.19.exit

or.19.else:                                       ; preds = %or.18.exit
  %var.load51 = load ptr, ptr %var.s, align 8
  %s.read.len52 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 0
  %s.read.len53 = load i64, ptr %s.read.len52, align 8
  %s.read.len54 = and i64 %s.read.len53, 281474976710655
  %s.read.data55 = getelementptr inbounds { i64, ptr }, ptr %var.load51, i32 0, i32 1
  %s.read.data56 = load ptr, ptr %s.read.data55, align 8
  %var.load57 = load i64, ptr %var.i, align 8
  %addtmp58 = add i64 %var.load57, 2
  %idx.oob59 = icmp uge i64 %addtmp58, %s.read.len54
  br i1 %idx.oob59, label %idx_oob61, label %idx_ok60

or.19.exit:                                       ; preds = %idx_ok60, %or.19.then
  %or.19.phi = phi i1 [ %or.18.phi, %or.19.then ], [ %cmptmp66, %idx_ok60 ]
  br label %and.16.exit

idx_ok60:                                         ; preds = %abort.dead62, %or.19.else
  %s.byte.gep63 = getelementptr i8, ptr %s.read.data56, i64 %addtmp58
  %s.byte64 = load i8, ptr %s.byte.gep63, align 1
  %s.byte.val65 = zext i8 %s.byte64 to i64
  %cmptmp66 = icmp ne i64 %s.byte.val65, 189
  br label %or.19.exit

idx_oob61:                                        ; preds = %or.19.else
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead62:                                     ; No predecessors!
  br label %idx_ok60

choice.then67:                                    ; preds = %and.16.exit
  %rec.fld70 = getelementptr inbounds { i64, i64 }, ptr %rec.salloc69, i32 0, i32 0
  store i64 -1, ptr %rec.fld70, align 8
  %rec.fld71 = getelementptr inbounds { i64, i64 }, ptr %rec.salloc69, i32 0, i32 1
  store i64 1, ptr %rec.fld71, align 8
  br label %choice.exit68

choice.else:                                      ; preds = %and.16.exit
  %var.load72 = load i64, ptr %var.cp, align 8
  %var.load73 = load i64, ptr %var.need, align 8
  %rec.fld75 = getelementptr inbounds { i64, i64 }, ptr %rec.salloc74, i32 0, i32 0
  store i64 %var.load72, ptr %rec.fld75, align 8
  %rec.fld76 = getelementptr inbounds { i64, i64 }, ptr %rec.salloc74, i32 0, i32 1
  store i64 %var.load73, ptr %rec.fld76, align 8
  br label %choice.exit68

choice.exit68:                                    ; preds = %choice.else, %choice.then67
  %choice.res77 = phi ptr [ %rec.salloc69, %choice.then67 ], [ %rec.salloc74, %choice.else ]
  %ret.pack78 = load { i64, i64 }, ptr %choice.res77, align 8
  ret { i64, i64 } %ret.pack78
}

define i64 @"utf::next_start"(ptr %0, i64 %1) #0 {
entry:
  %ret.ub.salloc = alloca { i64, i64 }, align 8
  %var.n = alloca i64, align 8
  %var.pos = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.pos, align 8
  %var.load = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %str.len.query1 = load i64, ptr %str.len.query, align 8
  %str.len.query2 = and i64 %str.len.query1, 281474976710655
  store i64 %str.len.query2, ptr %var.n, align 8
  %var.load3 = load i64, ptr %var.pos, align 8
  %var.load4 = load i64, ptr %var.n, align 8
  %cmptmp = icmp sge i64 %var.load3, %var.load4
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load5 = load i64, ptr %var.n, align 8
  ret i64 %var.load5

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load6 = load i64, ptr %var.pos, align 8
  %var.load7 = load ptr, ptr %var.s, align 8
  %var.load8 = load i64, ptr %var.pos, align 8
  %max = call i64 @llvm.smax.i64(i64 %var.load8, i64 0)
  %call.res = call { i64, i64 } @"utf::decode_str_at"(ptr %var.load7, i64 %max)
  store { i64, i64 } %call.res, ptr %ret.ub.salloc, align 8
  %fld.gep = getelementptr inbounds { i64, i64 }, ptr %ret.ub.salloc, i32 0, i32 1
  %fld.load = load i64, ptr %fld.gep, align 8
  %addtmp = add i64 %var.load6, %fld.load
  ret i64 %addtmp

ret.dead:                                         ; No predecessors!
  br label %choice.exit
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #1

define i64 @"utf::prev_start"(ptr %0, i64 %1) #0 {
entry:
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %loop.step.20 = alloca i64, align 8
  %loop.idx.20 = alloca i64, align 8
  %"var.p'" = alloca i64, align 8
  %var.pos = alloca i64, align 8
  %var.s = alloca ptr, align 8
  store ptr %0, ptr %var.s, align 8
  store i64 %1, ptr %var.pos, align 8
  %var.load = load i64, ptr %var.pos, align 8
  %cmptmp = icmp sle i64 %var.load, 0
  br i1 %cmptmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  ret i64 0

choice.exit:                                      ; preds = %ret.dead, %entry
  %var.load1 = load i64, ptr %var.pos, align 8
  %var.load2 = load ptr, ptr %var.s, align 8
  %str.len.query = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 0
  %str.len.query3 = load i64, ptr %str.len.query, align 8
  %str.len.query4 = and i64 %str.len.query3, 281474976710655
  %min = call i64 @llvm.smin.i64(i64 %var.load1, i64 %str.len.query4)
  %subtmp = sub i64 %min, 1
  store i64 %subtmp, ptr %"var.p'", align 8
  store i64 0, ptr %loop.idx.20, align 8
  br label %loop.header.20

ret.dead:                                         ; No predecessors!
  br label %choice.exit

loop.header.20:                                   ; preds = %loop.latch.20, %choice.exit
  %counter.load = load i64, ptr %loop.idx.20, align 8
  %loop.cond = icmp slt i64 %counter.load, 3
  br i1 %loop.cond, label %loop.body.20, label %loop.exit.nat.20

loop.body.20:                                     ; preds = %loop.header.20
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.20, align 8
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %counter.load, ptr %var._, align 8
  %var.load5 = load i64, ptr %"var.p'", align 8
  %cmptmp6 = icmp sle i64 %var.load5, 0
  br i1 %cmptmp6, label %choice.then7, label %choice.exit8

loop.exit.nat.20:                                 ; preds = %loop.header.20
  br label %loop.exit.20

loop.latch.20:                                    ; preds = %choice.exit16
  %step.val = load i64, ptr %loop.step.20, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.20, align 8
  br label %loop.header.20

loop.exit.20:                                     ; preds = %choice.else, %choice.then7, %loop.exit.nat.20
  %var.load19 = load i64, ptr %"var.p'", align 8
  %max = call i64 @llvm.smax.i64(i64 0, i64 %var.load19)
  ret i64 %max

choice.then7:                                     ; preds = %loop.body.20
  br label %loop.exit.20

choice.exit8:                                     ; preds = %loop.body.20
  %var.load9 = load ptr, ptr %var.s, align 8
  %s.read.len = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 0
  %s.read.len10 = load i64, ptr %s.read.len, align 8
  %s.read.len11 = and i64 %s.read.len10, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load9, i32 0, i32 1
  %s.read.data12 = load ptr, ptr %s.read.data, align 8
  %var.load13 = load i64, ptr %"var.p'", align 8
  %idx.oob = icmp uge i64 %var.load13, %s.read.len11
  br i1 %idx.oob, label %idx_oob, label %idx_ok

idx_ok:                                           ; preds = %abort.dead, %choice.exit8
  %s.byte.gep = getelementptr i8, ptr %s.read.data12, i64 %var.load13
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  %bandtmp = and i64 %s.byte.val, 192
  %cmptmp14 = icmp eq i64 %bandtmp, 128
  br i1 %cmptmp14, label %choice.then15, label %choice.else

idx_oob:                                          ; preds = %choice.exit8
  call void @dva_abort_str_oob_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %idx_ok

choice.then15:                                    ; preds = %idx_ok
  %var.load17 = load i64, ptr %"var.p'", align 8
  %subtmp18 = sub i64 %var.load17, 1
  store i64 %subtmp18, ptr %"var.p'", align 8
  br label %choice.exit16

choice.else:                                      ; preds = %idx_ok
  br label %loop.exit.20

choice.exit16:                                    ; preds = %choice.then15
  br label %loop.latch.20
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noinline noreturn "nounwind" }
attributes #5 = { cold noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
