; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@str.0 = internal unnamed_addr constant [25 x i8] c"/tmp/edva-backend.XXXXXX\00"
@detached_builder = internal unnamed_addr constant [93 x i8] c"E4013: Builder buffer was detached by freeze. Append data or create a new Builder before &b\0A\00"
@str.1 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.1 }
@clo.const = internal constant { ptr, ptr } { ptr @"backend_opt::#temp_file", ptr null }
@"var.backend_opt::#temp_file" = global ptr null
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@str.2 = internal unnamed_addr constant [3 x i8] c"( \00"
@str.3 = internal unnamed_addr constant [6 x i8] c" ) > \00"
@str.4 = internal unnamed_addr constant [13 x i8] c" 2>/dev/null\00"
@clo.const.1 = internal constant { ptr, ptr } { ptr @"backend_opt::#capture", ptr null }
@"var.backend_opt::#capture" = global ptr null
@str.5 = internal unnamed_addr constant [13 x i8] c"sha256sum < \00"
@clo.const.2 = internal constant { ptr, ptr } { ptr @"backend_opt::#digest", ptr null }
@"var.backend_opt::#digest" = global ptr null
@str.6 = internal unnamed_addr constant [10 x i8] c"--target=\00"
@str.7 = internal unnamed_addr constant [18 x i8] c"-print-prog-name=\00"
@str.8 = internal unnamed_addr constant [44 x i8] c"set -e\0Acc=$(command -v clang)\0Alink=$(clang \00"
@str.9 = internal unnamed_addr constant [2 x i8] c" \00"
@str.10 = internal unnamed_addr constant [79 x i8] c")\0Alink=$(command -v \22$link\22)\0Asha256sum -- \22$cc\22 \22$link\22\0Aclang --version\0Aclang \00"
@str.11 = internal unnamed_addr constant [22 x i8] c" -print-resource-dir\0A\00"
@str.12 = internal unnamed_addr constant [25 x i8] c"set -e\0Aresource=$(clang \00"
@str.13 = internal unnamed_addr constant [168 x i8] c" -print-resource-dir)\0Afind -L \22$resource/lib\22 -name 'libclang_rt.profile*.a' -type f | sort |\0A  while IFS= read -r archive; do sha256sum -- \22$archive\22 || exit 1; done\0A\00"
@str.14 = internal unnamed_addr constant [2 x i8] c"\0A\00"
@clo.const.3 = internal constant { ptr, ptr } { ptr @"backend_opt::#toolchain", ptr null }
@"var.backend_opt::#toolchain" = global ptr null
@str.15 = internal unnamed_addr constant [15 x i8] c"-fprofile-use=\00"
@str.15.struct = internal unnamed_addr constant { i64, ptr } { i64 14, ptr @str.15 }
@str.16 = internal unnamed_addr constant [21 x i8] c"-fprofile-instr-use=\00"
@str.16.struct = internal unnamed_addr constant { i64, ptr } { i64 20, ptr @str.16 }
@clo.const.4 = internal constant { ptr, ptr } { ptr @"backend_opt::#profile_flag", ptr null }
@"var.backend_opt::#profile_flag" = global ptr null
@str.17 = internal unnamed_addr constant [2 x i8] c"=\00"
@str.17.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.17 }
@clo.const.5 = internal constant { ptr, ptr } { ptr @"backend_opt::#flag_value", ptr null }
@"var.backend_opt::#flag_value" = global ptr null
@str.18 = internal unnamed_addr constant [3 x i8] c"ld\00"
@str.19 = internal unnamed_addr constant [35 x i8] c"Specify exactly one profile input.\00"
@str.19.struct = internal unnamed_addr constant { i64, ptr } { i64 34, ptr @str.19 }
@str.20 = internal unnamed_addr constant [14 x i8] c"-fprofile-use\00"
@str.21 = internal unnamed_addr constant [20 x i8] c"-fprofile-instr-use\00"
@str.22 = internal unnamed_addr constant [48 x i8] c"Specify the profile path as -fprofile-use=FILE.\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 47, ptr @str.22 }
@str.23 = internal unnamed_addr constant [19 x i8] c"-fprofile-generate\00"
@str.24 = internal unnamed_addr constant [20 x i8] c"-fprofile-generate=\00"
@str.24.struct = internal unnamed_addr constant { i64, ptr } { i64 19, ptr @str.24 }
@str.25 = internal unnamed_addr constant [6 x i8] c"-flto\00"
@str.26 = internal unnamed_addr constant [11 x i8] c"-flto=full\00"
@str.27 = internal unnamed_addr constant [11 x i8] c"-flto=thin\00"
@str.28 = internal unnamed_addr constant [10 x i8] c"-fuse-ld=\00"
@str.28.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.28 }
@str.29 = internal unnamed_addr constant [2 x i8] c"/\00"
@str.29.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.29 }
@str.30 = internal unnamed_addr constant [4 x i8] c"ld.\00"
@str.31 = internal unnamed_addr constant [11 x i8] c"--ld-path=\00"
@str.31.struct = internal unnamed_addr constant { i64, ptr } { i64 10, ptr @str.31 }
@str.32 = internal unnamed_addr constant [10 x i8] c"-fprofile\00"
@str.32.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.32 }
@str.33 = internal unnamed_addr constant [13 x i8] c"-fcs-profile\00"
@str.33.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.33 }
@str.34 = internal unnamed_addr constant [15 x i8] c"-fauto-profile\00"
@str.34.struct = internal unnamed_addr constant { i64, ptr } { i64 14, ptr @str.34 }
@str.35 = internal unnamed_addr constant [17 x i8] c"-fmemory-profile\00"
@str.35.struct = internal unnamed_addr constant { i64, ptr } { i64 16, ptr @str.35 }
@str.36 = internal unnamed_addr constant [2 x i8] c"@\00"
@str.36.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.36 }
@str.37 = internal unnamed_addr constant [3 x i8] c"-B\00"
@str.37.struct = internal unnamed_addr constant { i64, ptr } { i64 2, ptr @str.37 }
@str.38 = internal unnamed_addr constant [10 x i8] c"--sysroot\00"
@str.38.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.38 }
@str.39 = internal unnamed_addr constant [10 x i8] c"-isysroot\00"
@str.39.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.39 }
@str.40 = internal unnamed_addr constant [14 x i8] c"-resource-dir\00"
@str.40.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.40 }
@str.41 = internal unnamed_addr constant [16 x i8] c"--gcc-toolchain\00"
@str.41.struct = internal unnamed_addr constant { i64, ptr } { i64 15, ptr @str.41 }
@str.42 = internal unnamed_addr constant [60 x i8] c"Profile generation and profile use require separate builds.\00"
@str.42.struct = internal unnamed_addr constant { i64, ptr } { i64 59, ptr @str.42 }
@str.43 = internal unnamed_addr constant [7 x i8] c"wasm32\00"
@str.44 = internal unnamed_addr constant [7 x i8] c"wasm64\00"
@str.45 = internal unnamed_addr constant [5 x i8] c"wasm\00"
@str.46 = internal unnamed_addr constant [55 x i8] c"PGO and LTO flags are supported by the native backend.\00"
@str.46.struct = internal unnamed_addr constant { i64, ptr } { i64 54, ptr @str.46 }
@str.47 = internal unnamed_addr constant [80 x i8] c"Could not identify Clang and its linker. Check the toolchain or use --no-cache.\00"
@str.47.struct = internal unnamed_addr constant { i64, ptr } { i64 79, ptr @str.47 }
@str.48 = internal unnamed_addr constant [18 x i8] c"native-toolchain=\00"
@str.49 = internal unnamed_addr constant [2 x i8] c"-\00"
@str.49.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.49 }
@str.50 = internal unnamed_addr constant [31 x i8] c"Could not hash backend input '\00"
@str.51 = internal unnamed_addr constant [3 x i8] c"'.\00"
@str.52 = internal unnamed_addr constant [15 x i8] c"backend-input=\00"
@str.53 = internal unnamed_addr constant [18 x i8] c"/default.profdata\00"
@str.54 = internal unnamed_addr constant [10 x i8] c"Profile '\00"
@str.55 = internal unnamed_addr constant [75 x i8] c"' is missing or is not a file. Merge the training runs with llvm-profdata.\00"
@str.56 = internal unnamed_addr constant [47 x i8] c"Could not create a temporary profile snapshot.\00"
@str.56.struct = internal unnamed_addr constant { i64, ptr } { i64 46, ptr @str.56 }
@str.57 = internal unnamed_addr constant [7 x i8] c"cp -- \00"
@str.58 = internal unnamed_addr constant [25 x i8] c"Could not read profile '\00"
@str.59 = internal unnamed_addr constant [9 x i8] c"profile=\00"
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@str.60 = internal unnamed_addr constant [23 x i8] c"-Werror=backend-plugin\00"
@str.60.struct = internal unnamed_addr constant { i64, ptr } { i64 22, ptr @str.60 }
@str.61 = internal unnamed_addr constant [34 x i8] c"-Werror=profile-instr-out-of-date\00"
@str.61.struct = internal unnamed_addr constant { i64, ptr } { i64 33, ptr @str.61 }
@str.62 = internal unnamed_addr constant [33 x i8] c"-Werror=profile-instr-unprofiled\00"
@str.62.struct = internal unnamed_addr constant { i64, ptr } { i64 32, ptr @str.62 }
@clo.const.6 = internal constant { ptr, ptr } { ptr @"backend_opt::prepare", ptr null }
@"var.backend_opt::prepare" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_backend_opt, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: alwaysinline
define internal noalias ptr @dva_arena_alloc(ptr %0, i64 %1) #1 {
entry:
  %align.add = add i64 %1, 15
  %aligned = and i64 %align.add, -16
  %cap = load i64, ptr %0, align 8
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

common.ret:                                       ; preds = %slow, %bump
  %common.ret.op = phi ptr [ %result, %bump ], [ %result.slow, %slow ]
  ret ptr %common.ret.op

bump:                                             ; preds = %entry
  %chunks = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %0, i32 0, i32 3
  %last = sub i64 %nc, 1
  %slot = getelementptr [16384 x ptr], ptr %chunks, i64 0, i64 %last
  %chunk = load ptr, ptr %slot, align 8
  %result = getelementptr i8, ptr %chunk, i64 %off
  %next = add i64 %off, %aligned
  store i64 %next, ptr %off.ptr, align 8
  br label %common.ret

slow:                                             ; preds = %entry
  %result.slow = call ptr @dva_arena_alloc_slow(ptr %0, i64 %1)
  br label %common.ret
}

; Function Attrs: noinline
declare noalias ptr @dva_arena_alloc_slow(ptr, i64) #2

; Function Attrs: noinline
declare i1 @dva_arena_validate_tag(ptr, i64) #2

define internal void @__dva_global_init_backend_opt() #3 {
entry:
  store ptr @clo.const, ptr @"var.backend_opt::#temp_file", align 8
  store ptr @clo.const.1, ptr @"var.backend_opt::#capture", align 8
  store ptr @clo.const.2, ptr @"var.backend_opt::#digest", align 8
  store ptr @clo.const.3, ptr @"var.backend_opt::#toolchain", align 8
  store ptr @clo.const.4, ptr @"var.backend_opt::#profile_flag", align 8
  store ptr @clo.const.5, ptr @"var.backend_opt::#flag_value", align 8
  store ptr @clo.const.6, ptr @"var.backend_opt::prepare", align 8
  ret void
}

declare i32 @close(i32)

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

declare i64 @unlink(ptr)

declare i32 @mkstemp(ptr)

define internal { i64, ptr } @"backend_opt::#temp_file"() #3 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %b.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 1
  %b.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %builder.new, i32 0, i32 2
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 33)
  store i8 0, ptr %b.buf, align 1
  store i64 0, ptr %builder.new, align 8
  store ptr %b.buf, ptr %b.data.gep, align 8
  store i64 32, ptr %b.cap.gep, align 8
  %b.app.cur.len4 = load i64, ptr %builder.new, align 8
  %b.app.new.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.app.cur.len4, i64 24)
  %sum5 = extractvalue { i64, i1 } %b.app.new.len, 0
  %ovf6 = extractvalue { i64, i1 } %b.app.new.len, 1
  br i1 %ovf6, label %str_overflow_abort8, label %b.app.new.len7

b.app.new.len7:                                   ; preds = %entry
  %b.cap10 = load i64, ptr %b.cap.gep, align 8
  %b.need.grow = icmp slt i64 %b.cap10, %sum5
  br i1 %b.need.grow, label %b.grow2, label %b.grow_done

str_overflow_abort8:                              ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2:                                          ; preds = %b.app.new.len7
  %b.cap2 = mul i64 %b.cap10, 2
  %b.cap.small = icmp slt i64 %b.cap2, 16
  %b.cap.grow = select i1 %b.cap.small, i64 16, i64 %b.cap2
  %b.cap.need = icmp slt i64 %b.cap.grow, %sum5
  %b.new.cap = select i1 %b.cap.need, i64 %sum5, i64 %b.cap.grow
  %b.cur.len211 = load i64, ptr %builder.new, align 8
  %b.cur.data212 = load ptr, ptr %b.data.gep, align 8
  %b.new.buf.len2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap, i64 1)
  %sum13 = extractvalue { i64, i1 } %b.new.buf.len2, 0
  %ovf14 = extractvalue { i64, i1 } %b.new.buf.len2, 1
  br i1 %ovf14, label %str_overflow_abort16, label %b.new.buf.len215

b.grow_done:                                      ; preds = %b.app.new.len7, %b.new.buf.len215
  %b.app.data19 = load ptr, ptr %b.data.gep, align 8
  %b.app.dst = getelementptr i8, ptr %b.app.data19, i64 %b.app.cur.len4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst, ptr align 1 @str.0, i64 24, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.app.data19, i64 %sum5
  store i8 0, ptr %b.app.nul, align 1
  store i64 %sum5, ptr %builder.new, align 8
  %b.len23 = load i64, ptr %builder.new, align 8
  %b.cap25 = load i64, ptr %b.cap.gep, align 8
  %b.data26 = load ptr, ptr %b.data.gep, align 8
  %b.needs.grow = icmp eq i64 %b.len23, %b.cap25
  br i1 %b.needs.grow, label %b.grow, label %b.push_done

b.new.buf.len215:                                 ; preds = %b.grow2
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 %sum13)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2, ptr align 1 %b.cur.data212, i64 %b.cur.len211, i1 false)
  %b.grow2.nul = getelementptr i8, ptr %b.new.buf2, i64 %b.cur.len211
  store i8 0, ptr %b.grow2.nul, align 1
  store ptr %b.new.buf2, ptr %b.data.gep, align 8
  store i64 %b.new.cap, ptr %b.cap.gep, align 8
  br label %b.grow_done

str_overflow_abort16:                             ; preds = %b.grow2
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow:                                           ; preds = %b.grow_done
  %b.cap227 = mul i64 %b.cap25, 2
  %b.cap.small28 = icmp slt i64 %b.cap227, 16
  %b.new.cap29 = select i1 %b.cap.small28, i64 16, i64 %b.cap227
  %b.new.buf.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap29, i64 1)
  %sum30 = extractvalue { i64, i1 } %b.new.buf.len, 0
  %ovf31 = extractvalue { i64, i1 } %b.new.buf.len, 1
  br i1 %ovf31, label %str_overflow_abort33, label %b.new.buf.len32

b.push_done:                                      ; preds = %b.grow_done, %b.new.buf.len32
  %b.cur.data36 = load ptr, ptr %b.data.gep, align 8
  %b.cur.len37 = load i64, ptr %builder.new, align 8
  %b.byte.gep = getelementptr i8, ptr %b.cur.data36, i64 %b.cur.len37
  store i8 0, ptr %b.byte.gep, align 1
  %b.next.len = add i64 %b.cur.len37, 1
  %b.nul = getelementptr i8, ptr %b.cur.data36, i64 %b.next.len
  store i8 0, ptr %b.nul, align 1
  store i64 %b.next.len, ptr %builder.new, align 8
  %b.ptr39 = load ptr, ptr %b.data.gep, align 8
  %0 = icmp eq ptr %b.ptr39, null
  br i1 %0, label %b.detached, label %b.writable

b.new.buf.len32:                                  ; preds = %b.grow
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 %sum30)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf, ptr align 1 %b.data26, i64 %b.len23, i1 false)
  %b.grow.nul = getelementptr i8, ptr %b.new.buf, i64 %b.len23
  store i8 0, ptr %b.grow.nul, align 1
  store ptr %b.new.buf, ptr %b.data.gep, align 8
  store i64 %b.new.cap29, ptr %b.cap.gep, align 8
  br label %b.push_done

str_overflow_abort33:                             ; preds = %b.grow
  call void @dva_abort_str_overflow_msg()
  unreachable

b.detached:                                       ; preds = %b.push_done
  call void @dva_abort_detached_builder()
  unreachable

b.writable:                                       ; preds = %b.push_done
  %addr.tag.int = ptrtoint ptr %b.ptr39 to i64
  %addr.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift = shl i64 %addr.tag.gen, 48
  %addr.tagged = or i64 %addr.tag.int, %addr.tag.shift
  %addr.tagged.ptr = inttoptr i64 %addr.tagged to ptr
  %addr.ffi.masked = and i64 %addr.tagged, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call i32 @mkstemp(ptr %addr.ffi.clean)
  %coerce.sext = sext i32 %call.res to i64
  %cmptmp = icmp slt i64 %coerce.sext, 0
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %b.writable, %b.writable49
  %common.ret.op = phi { i64, ptr } [ %call.res56, %b.writable49 ], [ { i64 0, ptr @str.1 }, %b.writable ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %b.writable
  %call.res44 = call i32 @close(i32 %call.res)
  %b.ptr47 = load ptr, ptr %b.data.gep, align 8
  %1 = icmp eq ptr %b.ptr47, null
  br i1 %1, label %b.detached48, label %b.writable49

b.detached48:                                     ; preds = %choice.exit
  call void @dva_abort_detached_builder()
  unreachable

b.writable49:                                     ; preds = %choice.exit
  %addr.tag.int51 = ptrtoint ptr %b.ptr47 to i64
  %addr.tag.gen52 = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift53 = shl i64 %addr.tag.gen52, 48
  %addr.tagged54 = or i64 %addr.tag.int51, %addr.tag.shift53
  %addr.tagged.ptr55 = inttoptr i64 %addr.tagged54 to ptr
  %call.res56 = call { i64, ptr } @"sys::c_str"(ptr %addr.tagged.ptr55)
  %arena.cur57 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur57, i64 16)
  store { i64, ptr } %call.res56, ptr %ret.ub.alloc, align 8
  br label %common.ret
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_detached_builder() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @detached_builder, i64 92)
  call void @exit(i32 1)
  unreachable
}

declare { i64, ptr } @"sys::c_str"(ptr) #3

define internal { i64, ptr } @"backend_opt::#capture"(ptr %0) #3 {
entry:
  %call.res = call { i64, ptr } @"backend_opt::#temp_file"()
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %eq.lhs.len1 = load i64, ptr %ret.ub.alloc, align 8
  %eq.lhs.len2 = and i64 %eq.lhs.len1, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %eq.len = icmp eq i64 %eq.lhs.len2, 0
  br i1 %eq.len, label %str.eq.then, label %choice.exit

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data4 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data4, ptr @str.1, i64 %eq.lhs.len2)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %str.eq.then, %nulmerge
  %common.ret.op = phi { i64, ptr } [ %ret.pack104, %nulmerge ], [ { i64 0, ptr @str.1 }, %str.eq.then ]
  ret { i64, ptr } %common.ret.op

choice.exit:                                      ; preds = %str_ok, %str.eq.then
  %cat.seg6 = load i64, ptr %0, align 8
  %cat.seg7 = and i64 %cat.seg6, 281474976710655
  %str.tag8 = lshr i64 %cat.seg6, 48
  %tag.immortal10 = icmp eq i64 %str.tag8, 0
  %active.gen11 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current12 = icmp eq i64 %str.tag8, %active.gen11
  %tag.fast.ok13 = or i1 %tag.immortal10, %tag.current12
  br i1 %tag.fast.ok13, label %str_ok9, label %tag.slow_check14

str_ok9:                                          ; preds = %tag.slow_check14, %choice.exit
  %cat.seg15 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %cat.seg16 = load ptr, ptr %cat.seg15, align 8
  %call.res19 = call { i64, ptr } @"pkg::sq"(ptr %ret.ub.alloc)
  %arena.cur20 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc21 = call ptr @dva_arena_alloc(ptr %arena.cur20, i64 16)
  store { i64, ptr } %call.res19, ptr %ret.ub.alloc21, align 8
  %cat.seg23 = load i64, ptr %ret.ub.alloc21, align 8
  %cat.seg24 = and i64 %cat.seg23, 281474976710655
  %str.tag25 = lshr i64 %cat.seg23, 48
  %tag.immortal27 = icmp eq i64 %str.tag25, 0
  %active.gen28 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current29 = icmp eq i64 %str.tag25, %active.gen28
  %tag.fast.ok30 = or i1 %tag.immortal27, %tag.current29
  br i1 %tag.fast.ok30, label %str_ok26, label %tag.slow_check31

tag.slow_check14:                                 ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag8)
  br label %str_ok9

str_ok26:                                         ; preds = %tag.slow_check31, %str_ok9
  %cat.seg32 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc21, i32 0, i32 1
  %cat.seg33 = load ptr, ptr %cat.seg32, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 2, i64 %cat.seg7)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len35

tag.slow_check31:                                 ; preds = %str_ok9
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag25)
  br label %str_ok26

cat.sum.len35:                                    ; preds = %str_ok26
  %cat.sum.len36 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 5)
  %sum37 = extractvalue { i64, i1 } %cat.sum.len36, 0
  %ovf38 = extractvalue { i64, i1 } %cat.sum.len36, 1
  br i1 %ovf38, label %str_overflow_abort40, label %cat.sum.len39

str_overflow_abort:                               ; preds = %str_ok26
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len39:                                    ; preds = %cat.sum.len35
  %cat.sum.len42 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum37, i64 %cat.seg24)
  %sum43 = extractvalue { i64, i1 } %cat.sum.len42, 0
  %ovf44 = extractvalue { i64, i1 } %cat.sum.len42, 1
  br i1 %ovf44, label %str_overflow_abort46, label %cat.sum.len45

str_overflow_abort40:                             ; preds = %cat.sum.len35
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len45:                                    ; preds = %cat.sum.len39
  %cat.sum.len48 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum43, i64 12)
  %sum49 = extractvalue { i64, i1 } %cat.sum.len48, 0
  %ovf50 = extractvalue { i64, i1 } %cat.sum.len48, 1
  br i1 %ovf50, label %str_overflow_abort52, label %cat.sum.len51

str_overflow_abort46:                             ; preds = %cat.sum.len39
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len51:                                    ; preds = %cat.sum.len45
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum49, i64 1)
  %sum54 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf55 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf55, label %str_overflow_abort57, label %concat.tot.len56

str_overflow_abort52:                             ; preds = %cat.sum.len45
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len56:                                 ; preds = %cat.sum.len51
  %arena.cur59 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur59, i64 %sum54)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.2, i64 2, i1 false)
  %cat.dst60 = getelementptr i8, ptr %concat.buf, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst60, ptr align 1 %cat.seg16, i64 %cat.seg7, i1 false)
  %cat.off = add i64 2, %cat.seg7
  %cat.dst61 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst61, ptr align 1 @str.3, i64 5, i1 false)
  %cat.off62 = add i64 %cat.off, 5
  %cat.dst63 = getelementptr i8, ptr %concat.buf, i64 %cat.off62
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst63, ptr align 1 %cat.seg33, i64 %cat.seg24, i1 false)
  %cat.off64 = add i64 %cat.off62, %cat.seg24
  %cat.dst65 = getelementptr i8, ptr %concat.buf, i64 %cat.off64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst65, ptr align 1 @str.4, i64 12, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum49
  store i8 0, ptr %concat.nul, align 1
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum49, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res67 = call i64 @"pkg::sh"(ptr %concat.str)
  %cmptmp = icmp eq i64 %call.res67, 0
  br i1 %cmptmp, label %choice.then69, label %choice.exit70

str_overflow_abort57:                             ; preds = %cat.sum.len51
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then69:                                    ; preds = %concat.tot.len56
  %call.res72 = call { i64, ptr } @"fs::read_to_string"(ptr %ret.ub.alloc)
  %ret.niche.data = extractvalue { i64, ptr } %call.res72, 1
  %ret.niche.ok = icmp ne ptr %ret.niche.data, null
  br i1 %ret.niche.ok, label %ret.niche.alloc, label %ret.niche.done

choice.exit70:                                    ; preds = %concat.tot.len56, %ret.niche.done
  %choice.res81 = phi ptr [ %ret.ub.alloc80, %ret.niche.done ], [ @str.1.struct, %concat.tot.len56 ]
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %arg.str.ptr83 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr85 = load i64, ptr %ret.ub.alloc, align 8
  %arg.str.ptr86 = and i64 %arg.str.ptr85, 281474976710655
  %str.tag87 = lshr i64 %arg.str.ptr85, 48
  %tag.immortal89 = icmp eq i64 %str.tag87, 0
  %active.gen90 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current91 = icmp eq i64 %str.tag87, %active.gen90
  %tag.fast.ok92 = or i1 %tag.immortal89, %tag.current91
  br i1 %tag.fast.ok92, label %str_ok88, label %tag.slow_check93

ret.niche.alloc:                                  ; preds = %choice.then69
  %arena.cur73 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.niche.buf = call ptr @dva_arena_alloc(ptr %arena.cur73, i64 16)
  store { i64, ptr } %call.res72, ptr %ret.niche.buf, align 8
  br label %ret.niche.done

ret.niche.done:                                   ; preds = %ret.niche.alloc, %choice.then69
  %ret.niche.ptr = phi ptr [ %ret.niche.buf, %ret.niche.alloc ], [ null, %choice.then69 ]
  %niche.ne.null = icmp ne ptr %ret.niche.ptr, null
  %ret.niche.ptr.str.1.struct = select i1 %niche.ne.null, ptr %ret.niche.ptr, ptr @str.1.struct
  %call.res78 = call { i64, ptr } @"str::trim"(ptr %ret.niche.ptr.str.1.struct)
  %arena.cur79 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc80 = call ptr @dva_arena_alloc(ptr %arena.cur79, i64 16)
  store { i64, ptr } %call.res78, ptr %ret.ub.alloc80, align 8
  br label %choice.exit70

str_ok88:                                         ; preds = %tag.slow_check93, %choice.exit70
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr83, i64 %arg.str.ptr86
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

tag.slow_check93:                                 ; preds = %choice.exit70
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag87)
  br label %str_ok88

nulcopy:                                          ; preds = %str_ok88
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr86, i64 1)
  %sum95 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf96 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf96, label %str_overflow_abort98, label %nulcopy.len97

nulmerge:                                         ; preds = %str_ok88, %nulcopy.len97
  %arg.str.ptr101 = phi ptr [ %nulcopy.buf, %nulcopy.len97 ], [ %arg.str.ptr83, %str_ok88 ]
  %call.res102 = call i64 @unlink(ptr %arg.str.ptr101)
  %ret.pack104 = load { i64, ptr }, ptr %choice.res81, align 8
  br label %common.ret

nulcopy.len97:                                    ; preds = %nulcopy
  %arena.cur100 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur100, i64 %sum95)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr83, i64 %arg.str.ptr86, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr86
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort98:                             ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable
}

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #7 {
entry:
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %0)
  br i1 %tag.valid, label %valid, label %stale

valid:                                            ; preds = %entry
  ret void

stale:                                            ; preds = %entry
  call void @dva_abort_stale_str_msg()
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable
}

declare i32 @memcmp(ptr, ptr, i64) #3

declare { i64, ptr } @"pkg::sq"(ptr) #3

declare i64 @"pkg::sh"(ptr) #3

declare { i64, ptr } @"fs::read_to_string"(ptr) #3

declare { i64, ptr } @"str::trim"(ptr) #3

define internal { i64, ptr } @"backend_opt::#digest"(ptr %0) #3 {
entry:
  %call.res = call { i64, ptr } @"pkg::sq"(ptr %0)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %cat.seg1 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 12, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len5

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

cat.sum.len5:                                     ; preds = %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len8:                                  ; preds = %cat.sum.len5
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.5, i64 12, i1 false)
  %cat.dst12 = getelementptr i8, ptr %concat.buf, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst12, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res14 = call { i64, ptr } @"backend_opt::#capture"(ptr %concat.str)
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 16)
  store { i64, ptr } %call.res14, ptr %ret.ub.alloc16, align 8
  %str.len.query18 = load i64, ptr %ret.ub.alloc16, align 8
  %str.len.query19 = and i64 %str.len.query18, 281474976710655
  %str.tag20 = lshr i64 %str.len.query18, 48
  %tag.immortal22 = icmp eq i64 %str.tag20, 0
  %active.gen23 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current24 = icmp eq i64 %str.tag20, %active.gen23
  %tag.fast.ok25 = or i1 %tag.immortal22, %tag.current24
  br i1 %tag.fast.ok25, label %str_ok21, label %tag.slow_check26

str_overflow_abort9:                              ; preds = %cat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok21:                                         ; preds = %tag.slow_check26, %concat.tot.len8
  %cmptmp = icmp sge i64 %str.len.query19, 64
  br i1 %cmptmp, label %choice.then, label %choice.exit

tag.slow_check26:                                 ; preds = %concat.tot.len8
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag20)
  br label %str_ok21

choice.then:                                      ; preds = %str_ok21
  %s.read.len28 = load i64, ptr %ret.ub.alloc16, align 8
  %s.read.len29 = and i64 %s.read.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc16, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  %rel.end = add i64 %s.read.len29, 64
  %end.gt.len = icmp sgt i64 64, %s.read.len29
  %final.end = select i1 %end.gt.len, i64 %s.read.len29, i64 64
  %view.empty = icmp sle i64 %final.end, 0
  %view.len = select i1 %view.empty, i64 0, i64 %final.end
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %str.view = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 16)
  %str.tag.gen33 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift34 = shl i64 %str.tag.gen33, 48
  %str.tagged.len35 = or i64 %view.len, %str.tag.shift34
  store i64 %str.tagged.len35, ptr %str.view, align 8
  %str.build.data.gep36 = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %s.read.data30, ptr %str.build.data.gep36, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %str_ok21, %choice.then
  %choice.res = phi ptr [ %str.view, %choice.then ], [ @str.1.struct, %str_ok21 ]
  %ret.pack = load { i64, ptr }, ptr %choice.res, align 8
  ret { i64, ptr } %ret.pack
}

define internal { i64, ptr } @"backend_opt::#toolchain"(ptr %0, ptr %1, i1 %2) #3 {
entry:
  %cat.seg1 = load i64, ptr %0, align 8
  %cat.seg2 = and i64 %cat.seg1, 281474976710655
  %str.tag = lshr i64 %cat.seg1, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %cat.seg3 = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %cat.seg4 = load ptr, ptr %cat.seg3, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 9, i64 %cat.seg2)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len5

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

cat.sum.len5:                                     ; preds = %str_ok
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum6 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf7 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf7, label %str_overflow_abort9, label %concat.tot.len8

str_overflow_abort:                               ; preds = %str_ok
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len8:                                  ; preds = %cat.sum.len5
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum6)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.6, i64 9, i1 false)
  %cat.dst11 = getelementptr i8, ptr %concat.buf, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst11, ptr align 1 %cat.seg4, i64 %cat.seg2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %call.res = call { i64, ptr } @"pkg::sq"(ptr %concat.str)
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  store { i64, ptr } %call.res, ptr %ret.ub.alloc, align 8
  %cat.seg17 = load i64, ptr %1, align 8
  %cat.seg18 = and i64 %cat.seg17, 281474976710655
  %str.tag19 = lshr i64 %cat.seg17, 48
  %tag.immortal21 = icmp eq i64 %str.tag19, 0
  %active.gen22 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current23 = icmp eq i64 %str.tag19, %active.gen22
  %tag.fast.ok24 = or i1 %tag.immortal21, %tag.current23
  br i1 %tag.fast.ok24, label %str_ok20, label %tag.slow_check25

str_overflow_abort9:                              ; preds = %cat.sum.len5
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok20:                                         ; preds = %tag.slow_check25, %concat.tot.len8
  %cat.seg26 = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %cat.seg27 = load ptr, ptr %cat.seg26, align 8
  %cat.sum.len28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 17, i64 %cat.seg18)
  %sum29 = extractvalue { i64, i1 } %cat.sum.len28, 0
  %ovf30 = extractvalue { i64, i1 } %cat.sum.len28, 1
  br i1 %ovf30, label %str_overflow_abort32, label %cat.sum.len31

tag.slow_check25:                                 ; preds = %concat.tot.len8
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag19)
  br label %str_ok20

cat.sum.len31:                                    ; preds = %str_ok20
  %concat.tot.len34 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum29, i64 1)
  %sum35 = extractvalue { i64, i1 } %concat.tot.len34, 0
  %ovf36 = extractvalue { i64, i1 } %concat.tot.len34, 1
  br i1 %ovf36, label %str_overflow_abort38, label %concat.tot.len37

str_overflow_abort32:                             ; preds = %str_ok20
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len37:                                 ; preds = %cat.sum.len31
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf41 = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 %sum35)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf41, ptr align 1 @str.7, i64 17, i1 false)
  %cat.dst43 = getelementptr i8, ptr %concat.buf41, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst43, ptr align 1 %cat.seg27, i64 %cat.seg18, i1 false)
  %concat.nul44 = getelementptr i8, ptr %concat.buf41, i64 %sum29
  store i8 0, ptr %concat.nul44, align 1
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  %str.tag.gen48 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift49 = shl i64 %str.tag.gen48, 48
  %str.tagged.len50 = or i64 %sum29, %str.tag.shift49
  store i64 %str.tagged.len50, ptr %concat.str46, align 8
  %str.build.data.gep51 = getelementptr inbounds { i64, ptr }, ptr %concat.str46, i32 0, i32 1
  store ptr %concat.buf41, ptr %str.build.data.gep51, align 8
  %call.res52 = call { i64, ptr } @"pkg::sq"(ptr %concat.str46)
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 16)
  store { i64, ptr } %call.res52, ptr %ret.ub.alloc54, align 8
  %cat.seg58 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg59 = and i64 %cat.seg58, 281474976710655
  %str.tag60 = lshr i64 %cat.seg58, 48
  %tag.immortal62 = icmp eq i64 %str.tag60, 0
  %active.gen63 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current64 = icmp eq i64 %str.tag60, %active.gen63
  %tag.fast.ok65 = or i1 %tag.immortal62, %tag.current64
  br i1 %tag.fast.ok65, label %str_ok61, label %tag.slow_check66

str_overflow_abort38:                             ; preds = %cat.sum.len31
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok61:                                         ; preds = %tag.slow_check66, %concat.tot.len37
  %cat.seg67 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %cat.seg68 = load ptr, ptr %cat.seg67, align 8
  %cat.seg72 = load i64, ptr %ret.ub.alloc54, align 8
  %cat.seg73 = and i64 %cat.seg72, 281474976710655
  %str.tag74 = lshr i64 %cat.seg72, 48
  %tag.immortal76 = icmp eq i64 %str.tag74, 0
  %active.gen77 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current78 = icmp eq i64 %str.tag74, %active.gen77
  %tag.fast.ok79 = or i1 %tag.immortal76, %tag.current78
  br i1 %tag.fast.ok79, label %str_ok75, label %tag.slow_check80

tag.slow_check66:                                 ; preds = %concat.tot.len37
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag60)
  br label %str_ok61

str_ok75:                                         ; preds = %tag.slow_check80, %str_ok61
  %cat.seg81 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc54, i32 0, i32 1
  %cat.seg82 = load ptr, ptr %cat.seg81, align 8
  %cat.seg86 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg87 = and i64 %cat.seg86, 281474976710655
  %str.tag88 = lshr i64 %cat.seg86, 48
  %tag.immortal90 = icmp eq i64 %str.tag88, 0
  %active.gen91 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current92 = icmp eq i64 %str.tag88, %active.gen91
  %tag.fast.ok93 = or i1 %tag.immortal90, %tag.current92
  br i1 %tag.fast.ok93, label %str_ok89, label %tag.slow_check94

tag.slow_check80:                                 ; preds = %str_ok61
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag74)
  br label %str_ok75

str_ok89:                                         ; preds = %tag.slow_check94, %str_ok75
  %cat.seg96 = load ptr, ptr %cat.seg67, align 8
  %cat.sum.len98 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 43, i64 %cat.seg59)
  %sum99 = extractvalue { i64, i1 } %cat.sum.len98, 0
  %ovf100 = extractvalue { i64, i1 } %cat.sum.len98, 1
  br i1 %ovf100, label %str_overflow_abort102, label %cat.sum.len101

tag.slow_check94:                                 ; preds = %str_ok75
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag88)
  br label %str_ok89

cat.sum.len101:                                   ; preds = %str_ok89
  %cat.sum.len104 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum99, i64 1)
  %sum105 = extractvalue { i64, i1 } %cat.sum.len104, 0
  %ovf106 = extractvalue { i64, i1 } %cat.sum.len104, 1
  br i1 %ovf106, label %str_overflow_abort108, label %cat.sum.len107

str_overflow_abort102:                            ; preds = %str_ok89
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len107:                                   ; preds = %cat.sum.len101
  %cat.sum.len110 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum105, i64 %cat.seg73)
  %sum111 = extractvalue { i64, i1 } %cat.sum.len110, 0
  %ovf112 = extractvalue { i64, i1 } %cat.sum.len110, 1
  br i1 %ovf112, label %str_overflow_abort114, label %cat.sum.len113

str_overflow_abort108:                            ; preds = %cat.sum.len101
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len113:                                   ; preds = %cat.sum.len107
  %cat.sum.len116 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum111, i64 78)
  %sum117 = extractvalue { i64, i1 } %cat.sum.len116, 0
  %ovf118 = extractvalue { i64, i1 } %cat.sum.len116, 1
  br i1 %ovf118, label %str_overflow_abort120, label %cat.sum.len119

str_overflow_abort114:                            ; preds = %cat.sum.len107
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len119:                                   ; preds = %cat.sum.len113
  %cat.sum.len122 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum117, i64 %cat.seg87)
  %sum123 = extractvalue { i64, i1 } %cat.sum.len122, 0
  %ovf124 = extractvalue { i64, i1 } %cat.sum.len122, 1
  br i1 %ovf124, label %str_overflow_abort126, label %cat.sum.len125

str_overflow_abort120:                            ; preds = %cat.sum.len113
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len125:                                   ; preds = %cat.sum.len119
  %cat.sum.len128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum123, i64 21)
  %sum129 = extractvalue { i64, i1 } %cat.sum.len128, 0
  %ovf130 = extractvalue { i64, i1 } %cat.sum.len128, 1
  br i1 %ovf130, label %str_overflow_abort132, label %cat.sum.len131

str_overflow_abort126:                            ; preds = %cat.sum.len119
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len131:                                   ; preds = %cat.sum.len125
  %concat.tot.len134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum129, i64 1)
  %sum135 = extractvalue { i64, i1 } %concat.tot.len134, 0
  %ovf136 = extractvalue { i64, i1 } %concat.tot.len134, 1
  br i1 %ovf136, label %str_overflow_abort138, label %concat.tot.len137

str_overflow_abort132:                            ; preds = %cat.sum.len125
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len137:                                ; preds = %cat.sum.len131
  %arena.cur140 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 %sum135)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf141, ptr align 1 @str.8, i64 43, i1 false)
  %cat.dst143 = getelementptr i8, ptr %concat.buf141, i64 43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst143, ptr align 1 %cat.seg68, i64 %cat.seg59, i1 false)
  %cat.off = add i64 43, %cat.seg59
  %cat.dst144 = getelementptr i8, ptr %concat.buf141, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst144, ptr align 1 @str.9, i64 1, i1 false)
  %cat.off145 = add i64 %cat.off, 1
  %cat.dst146 = getelementptr i8, ptr %concat.buf141, i64 %cat.off145
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst146, ptr align 1 %cat.seg82, i64 %cat.seg73, i1 false)
  %cat.off147 = add i64 %cat.off145, %cat.seg73
  %cat.dst148 = getelementptr i8, ptr %concat.buf141, i64 %cat.off147
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst148, ptr align 1 @str.10, i64 78, i1 false)
  %cat.off149 = add i64 %cat.off147, 78
  %cat.dst150 = getelementptr i8, ptr %concat.buf141, i64 %cat.off149
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst150, ptr align 1 %cat.seg96, i64 %cat.seg87, i1 false)
  %cat.off151 = add i64 %cat.off149, %cat.seg87
  %cat.dst152 = getelementptr i8, ptr %concat.buf141, i64 %cat.off151
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst152, ptr align 1 @str.11, i64 21, i1 false)
  %concat.nul153 = getelementptr i8, ptr %concat.buf141, i64 %sum129
  store i8 0, ptr %concat.nul153, align 1
  %arena.cur154 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str155 = call ptr @dva_arena_alloc(ptr %arena.cur154, i64 16)
  %str.tag.gen157 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift158 = shl i64 %str.tag.gen157, 48
  %str.tagged.len159 = or i64 %sum129, %str.tag.shift158
  store i64 %str.tagged.len159, ptr %concat.str155, align 8
  %str.build.data.gep160 = getelementptr inbounds { i64, ptr }, ptr %concat.str155, i32 0, i32 1
  store ptr %concat.buf141, ptr %str.build.data.gep160, align 8
  %call.res161 = call { i64, ptr } @"backend_opt::#capture"(ptr %concat.str155)
  %arena.cur162 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc163 = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 16)
  store { i64, ptr } %call.res161, ptr %ret.ub.alloc163, align 8
  %eq.lhs.len165 = load i64, ptr %ret.ub.alloc163, align 8
  %eq.lhs.len166 = and i64 %eq.lhs.len165, 281474976710655
  %str.tag167 = lshr i64 %eq.lhs.len165, 48
  %tag.immortal169 = icmp eq i64 %str.tag167, 0
  %active.gen170 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current171 = icmp eq i64 %str.tag167, %active.gen170
  %tag.fast.ok172 = or i1 %tag.immortal169, %tag.current171
  br i1 %tag.fast.ok172, label %str_ok168, label %tag.slow_check173

str_overflow_abort138:                            ; preds = %cat.sum.len131
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok168:                                        ; preds = %tag.slow_check173, %concat.tot.len137
  %eq.len = icmp eq i64 %eq.lhs.len166, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check173:                                ; preds = %concat.tot.len137
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag167)
  br label %str_ok168

str.eq.then:                                      ; preds = %str_ok168
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc163, i32 0, i32 1
  %eq.lhs.data175 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data175, ptr @str.1, i64 %eq.lhs.len166)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok168, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok168 ]
  %nottmp = xor i1 %2, true
  %spec.select = select i1 %str.eq.result, i1 %str.eq.result, i1 %nottmp
  br i1 %spec.select, label %choice.then, label %choice.exit

common.ret:                                       ; preds = %concat.tot.len270, %choice.then
  %common.ret.op = phi { i64, ptr } [ %ret.pack, %choice.then ], [ %ret.pack288, %concat.tot.len270 ]
  ret { i64, ptr } %common.ret.op

choice.then:                                      ; preds = %str.eq.merge
  %ret.pack = load { i64, ptr }, ptr %ret.ub.alloc163, align 8
  br label %common.ret

choice.exit:                                      ; preds = %str.eq.merge
  %cat.seg181 = load i64, ptr %ret.ub.alloc, align 8
  %cat.seg182 = and i64 %cat.seg181, 281474976710655
  %str.tag183 = lshr i64 %cat.seg181, 48
  %tag.immortal185 = icmp eq i64 %str.tag183, 0
  %active.gen186 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current187 = icmp eq i64 %str.tag183, %active.gen186
  %tag.fast.ok188 = or i1 %tag.immortal185, %tag.current187
  br i1 %tag.fast.ok188, label %str_ok184, label %tag.slow_check189

str_ok184:                                        ; preds = %tag.slow_check189, %choice.exit
  %cat.seg191 = load ptr, ptr %cat.seg67, align 8
  %cat.sum.len193 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 24, i64 %cat.seg182)
  %sum194 = extractvalue { i64, i1 } %cat.sum.len193, 0
  %ovf195 = extractvalue { i64, i1 } %cat.sum.len193, 1
  br i1 %ovf195, label %str_overflow_abort197, label %cat.sum.len196

tag.slow_check189:                                ; preds = %choice.exit
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag183)
  br label %str_ok184

cat.sum.len196:                                   ; preds = %str_ok184
  %cat.sum.len199 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum194, i64 167)
  %sum200 = extractvalue { i64, i1 } %cat.sum.len199, 0
  %ovf201 = extractvalue { i64, i1 } %cat.sum.len199, 1
  br i1 %ovf201, label %str_overflow_abort203, label %cat.sum.len202

str_overflow_abort197:                            ; preds = %str_ok184
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len202:                                   ; preds = %cat.sum.len196
  %concat.tot.len205 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum200, i64 1)
  %sum206 = extractvalue { i64, i1 } %concat.tot.len205, 0
  %ovf207 = extractvalue { i64, i1 } %concat.tot.len205, 1
  br i1 %ovf207, label %str_overflow_abort209, label %concat.tot.len208

str_overflow_abort203:                            ; preds = %cat.sum.len196
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len208:                                ; preds = %cat.sum.len202
  %arena.cur211 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf212 = call ptr @dva_arena_alloc(ptr %arena.cur211, i64 %sum206)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf212, ptr align 1 @str.12, i64 24, i1 false)
  %cat.dst214 = getelementptr i8, ptr %concat.buf212, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst214, ptr align 1 %cat.seg191, i64 %cat.seg182, i1 false)
  %cat.off215 = add i64 24, %cat.seg182
  %cat.dst216 = getelementptr i8, ptr %concat.buf212, i64 %cat.off215
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst216, ptr align 1 @str.13, i64 167, i1 false)
  %concat.nul217 = getelementptr i8, ptr %concat.buf212, i64 %sum200
  store i8 0, ptr %concat.nul217, align 1
  %arena.cur218 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str219 = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 16)
  %str.tag.gen221 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift222 = shl i64 %str.tag.gen221, 48
  %str.tagged.len223 = or i64 %sum200, %str.tag.shift222
  store i64 %str.tagged.len223, ptr %concat.str219, align 8
  %str.build.data.gep224 = getelementptr inbounds { i64, ptr }, ptr %concat.str219, i32 0, i32 1
  store ptr %concat.buf212, ptr %str.build.data.gep224, align 8
  %call.res225 = call { i64, ptr } @"backend_opt::#capture"(ptr %concat.str219)
  %arena.cur226 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 16)
  store { i64, ptr } %call.res225, ptr %ret.ub.alloc227, align 8
  %cat.seg230 = load i64, ptr %ret.ub.alloc163, align 8
  %cat.seg231 = and i64 %cat.seg230, 281474976710655
  %str.tag232 = lshr i64 %cat.seg230, 48
  %tag.immortal234 = icmp eq i64 %str.tag232, 0
  %active.gen235 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current236 = icmp eq i64 %str.tag232, %active.gen235
  %tag.fast.ok237 = or i1 %tag.immortal234, %tag.current236
  br i1 %tag.fast.ok237, label %str_ok233, label %tag.slow_check238

str_overflow_abort209:                            ; preds = %cat.sum.len202
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok233:                                        ; preds = %tag.slow_check238, %concat.tot.len208
  %cat.seg239 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc163, i32 0, i32 1
  %cat.seg240 = load ptr, ptr %cat.seg239, align 8
  %cat.seg244 = load i64, ptr %ret.ub.alloc227, align 8
  %cat.seg245 = and i64 %cat.seg244, 281474976710655
  %str.tag246 = lshr i64 %cat.seg244, 48
  %tag.immortal248 = icmp eq i64 %str.tag246, 0
  %active.gen249 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current250 = icmp eq i64 %str.tag246, %active.gen249
  %tag.fast.ok251 = or i1 %tag.immortal248, %tag.current250
  br i1 %tag.fast.ok251, label %str_ok247, label %tag.slow_check252

tag.slow_check238:                                ; preds = %concat.tot.len208
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag232)
  br label %str_ok233

str_ok247:                                        ; preds = %tag.slow_check252, %str_ok233
  %cat.seg253 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc227, i32 0, i32 1
  %cat.seg254 = load ptr, ptr %cat.seg253, align 8
  %cat.sum.len255 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg231, i64 1)
  %sum256 = extractvalue { i64, i1 } %cat.sum.len255, 0
  %ovf257 = extractvalue { i64, i1 } %cat.sum.len255, 1
  br i1 %ovf257, label %str_overflow_abort259, label %cat.sum.len258

tag.slow_check252:                                ; preds = %str_ok233
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag246)
  br label %str_ok247

cat.sum.len258:                                   ; preds = %str_ok247
  %cat.sum.len261 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum256, i64 %cat.seg245)
  %sum262 = extractvalue { i64, i1 } %cat.sum.len261, 0
  %ovf263 = extractvalue { i64, i1 } %cat.sum.len261, 1
  br i1 %ovf263, label %str_overflow_abort265, label %cat.sum.len264

str_overflow_abort259:                            ; preds = %str_ok247
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len264:                                   ; preds = %cat.sum.len258
  %concat.tot.len267 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum262, i64 1)
  %sum268 = extractvalue { i64, i1 } %concat.tot.len267, 0
  %ovf269 = extractvalue { i64, i1 } %concat.tot.len267, 1
  br i1 %ovf269, label %str_overflow_abort271, label %concat.tot.len270

str_overflow_abort265:                            ; preds = %cat.sum.len258
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len270:                                ; preds = %cat.sum.len264
  %arena.cur273 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf274 = call ptr @dva_arena_alloc(ptr %arena.cur273, i64 %sum268)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf274, ptr align 1 %cat.seg240, i64 %cat.seg231, i1 false)
  %cat.dst277 = getelementptr i8, ptr %concat.buf274, i64 %cat.seg231
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst277, ptr align 1 @str.14, i64 1, i1 false)
  %cat.off278 = add i64 %cat.seg231, 1
  %cat.dst279 = getelementptr i8, ptr %concat.buf274, i64 %cat.off278
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst279, ptr align 1 %cat.seg254, i64 %cat.seg245, i1 false)
  %concat.nul280 = getelementptr i8, ptr %concat.buf274, i64 %sum262
  store i8 0, ptr %concat.nul280, align 1
  %arena.cur281 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str282 = call ptr @dva_arena_alloc(ptr %arena.cur281, i64 16)
  %str.tag.gen284 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift285 = shl i64 %str.tag.gen284, 48
  %str.tagged.len286 = or i64 %sum262, %str.tag.shift285
  store i64 %str.tagged.len286, ptr %concat.str282, align 8
  %str.build.data.gep287 = getelementptr inbounds { i64, ptr }, ptr %concat.str282, i32 0, i32 1
  store ptr %concat.buf274, ptr %str.build.data.gep287, align 8
  %ret.pack288 = load { i64, ptr }, ptr %concat.str282, align 8
  br label %common.ret

str_overflow_abort271:                            ; preds = %cat.sum.len264
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal i1 @"backend_opt::#profile_flag"(ptr %0) #3 {
entry:
  %call.res = call i1 @"str::starts_with"(ptr %0, ptr @str.15.struct)
  br i1 %call.res, label %or.239.exit, label %or.239.else

or.239.else:                                      ; preds = %entry
  %call.res2 = call i1 @"str::starts_with"(ptr %0, ptr @str.16.struct)
  br label %or.239.exit

or.239.exit:                                      ; preds = %entry, %or.239.else
  %or.239.phi = phi i1 [ %call.res2, %or.239.else ], [ %call.res, %entry ]
  ret i1 %or.239.phi
}

declare i1 @"str::starts_with"(ptr, ptr) #3

define internal { i64, ptr } @"backend_opt::#flag_value"(ptr %0) #3 {
entry:
  %str.view = alloca { i64, ptr }, align 8
  %call.res = call { i1, i64 } @"str::find"(ptr %0, ptr @str.17.struct)
  %ram.tag = extractvalue { i1, i64 } %call.res, 0
  %ram.pay = extractvalue { i1, i64 } %call.res, 1
  %choice.res = select i1 %ram.tag, i64 %ram.pay, i64 -1
  %cmptmp = icmp slt i64 %choice.res, 0
  br i1 %cmptmp, label %choice.exit4, label %choice.else3

choice.else3:                                     ; preds = %entry
  %s.read.len6 = load i64, ptr %0, align 8
  %s.read.len7 = and i64 %s.read.len6, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %0, i32 0, i32 1
  %s.read.data8 = load ptr, ptr %s.read.data, align 8
  %addtmp = add i64 %choice.res, 1
  %start.is_neg = icmp slt i64 %addtmp, 0
  %rel.start = add i64 %s.read.len7, %addtmp
  %norm.start = select i1 %start.is_neg, i64 %rel.start, i64 %addtmp
  %start.lt.0 = icmp slt i64 %norm.start, 0
  %c.start.0 = select i1 %start.lt.0, i64 0, i64 %norm.start
  %start.gt.len = icmp sgt i64 %c.start.0, %s.read.len7
  %final.start = select i1 %start.gt.len, i64 %s.read.len7, i64 %c.start.0
  %rel.end = add i64 %s.read.len7, %s.read.len7
  %view.empty = icmp sle i64 %s.read.len7, %final.start
  %view.len.sub = sub i64 %s.read.len7, %final.start
  %view.len = select i1 %view.empty, i64 0, i64 %view.len.sub
  %view.data = getelementptr i8, ptr %s.read.data8, i64 %final.start
  store i64 %view.len, ptr %str.view, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %str.view, i32 0, i32 1
  store ptr %view.data, ptr %str.build.data.gep, align 8
  br label %choice.exit4

choice.exit4:                                     ; preds = %entry, %choice.else3
  %choice.res10 = phi ptr [ %str.view, %choice.else3 ], [ @str.1.struct, %entry ]
  %ret.pack.fca.0.load = load i64, ptr %choice.res10, align 8
  %ret.pack.fca.0.insert = insertvalue { i64, ptr } poison, i64 %ret.pack.fca.0.load, 0
  %ret.pack.fca.1.gep = getelementptr inbounds { i64, ptr }, ptr %choice.res10, i32 0, i32 1
  %ret.pack.fca.1.load = load ptr, ptr %ret.pack.fca.1.gep, align 8
  %ret.pack.fca.1.insert = insertvalue { i64, ptr } %ret.pack.fca.0.insert, ptr %ret.pack.fca.1.load, 1
  ret { i64, ptr } %ret.pack.fca.1.insert
}

declare { i1, i64 } @"str::find"(ptr, ptr) #3

define { i1, i64 } @"backend_opt::prepare"(ptr %0, ptr %1, i1 %2, i1 %3) #3 {
entry:
  br i1 %2, label %or.241.exit, label %or.241.else

or.241.else:                                      ; preds = %entry
  %a.null = icmp eq ptr %0, null
  br i1 %a.null, label %a.create, label %a.after

or.241.exit:                                      ; preds = %entry, %a.after
  %var.flags.0 = phi ptr [ %var.flags.1, %a.after ], [ %0, %entry ]
  %or.241.phi = phi i1 [ %cmptmp, %a.after ], [ %2, %entry ]
  br i1 %or.241.phi, label %choice.then, label %choice.exit

a.create:                                         ; preds = %or.241.else
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create2 = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  store i64 0, ptr %a.create2, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create2, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %or.241.else
  %var.flags.1 = phi ptr [ %a.create2, %a.create ], [ %0, %or.241.else ]
  %a.len.query4 = load i64, ptr %var.flags.1, align 8
  %cmptmp = icmp eq i64 %a.len.query4, 0
  br label %or.241.exit

choice.then:                                      ; preds = %or.241.exit
  %a.null7 = icmp eq ptr %var.flags.0, null
  br i1 %a.null7, label %a.create8, label %a.after9

choice.exit:                                      ; preds = %or.241.exit
  %arena.cur25 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf = call ptr @dva_arena_alloc(ptr %arena.cur25, i64 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf, ptr align 1 @str.1, i64 0, i1 false)
  store i8 0, ptr %copy.buf, align 1
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 16)
  store i64 0, ptr %copy.str, align 8
  %str.copy.data.gep = getelementptr inbounds { i64, ptr }, ptr %copy.str, i32 0, i32 1
  store ptr %copy.buf, ptr %str.copy.data.gep, align 8
  %arena.cur31 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf32 = call ptr @dva_arena_alloc(ptr %arena.cur31, i64 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf32, ptr align 1 @str.1, i64 0, i1 false)
  store i8 0, ptr %copy.buf32, align 1
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 16)
  store i64 0, ptr %copy.str35, align 8
  %str.copy.data.gep37 = getelementptr inbounds { i64, ptr }, ptr %copy.str35, i32 0, i32 1
  store ptr %copy.buf32, ptr %str.copy.data.gep37, align 8
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 3)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf43, ptr align 1 @str.18, i64 2, i1 false)
  %copy.nul44 = getelementptr i8, ptr %copy.buf43, i64 2
  store i8 0, ptr %copy.nul44, align 1
  %arena.cur45 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str46 = call ptr @dva_arena_alloc(ptr %arena.cur45, i64 16)
  store i64 2, ptr %copy.str46, align 8
  %str.copy.data.gep48 = getelementptr inbounds { i64, ptr }, ptr %copy.str46, i32 0, i32 1
  store ptr %copy.buf43, ptr %str.copy.data.gep48, align 8
  %arena.cur53 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.buf54 = call ptr @dva_arena_alloc(ptr %arena.cur53, i64 1)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %copy.buf54, ptr align 1 @str.1, i64 0, i1 false)
  store i8 0, ptr %copy.buf54, align 1
  %arena.cur56 = load ptr, ptr @dva_active_arena_tls, align 8
  %copy.str57 = call ptr @dva_arena_alloc(ptr %arena.cur56, i64 16)
  store i64 0, ptr %copy.str57, align 8
  %str.copy.data.gep59 = getelementptr inbounds { i64, ptr }, ptr %copy.str57, i32 0, i32 1
  store ptr %copy.buf54, ptr %str.copy.data.gep59, align 8
  %a.null62 = icmp eq ptr %var.flags.0, null
  br i1 %a.null62, label %a.create63, label %a.after64

a.create8:                                        ; preds = %choice.then
  %arena.cur10 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create11 = call ptr @dva_arena_alloc(ptr %arena.cur10, i64 24)
  %arena.cur12 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf13 = call ptr @dva_arena_alloc(ptr %arena.cur12, i64 128)
  store i64 0, ptr %a.create11, align 8
  %a.data.gep15 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 1
  store ptr %a.buf13, ptr %a.data.gep15, align 8
  %a.cap.gep16 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create11, i32 0, i32 2
  store i64 16, ptr %a.cap.gep16, align 8
  br label %a.after9

common.ret:                                       ; preds = %str.eq.then1076, %str.eq.then472, %str.eq.merge400, %str.eq.merge303, %str.eq.merge122, %str.eq.merge, %b.freeze.done1651, %concat.tot.len1249, %concat.tot.len1039, %b.freeze.done, %concat.tot.len691, %a.after327, %a.after9
  %common.ret.op = phi { i1, i64 } [ %ram.pay, %a.after9 ], [ %ram.pay345, %a.after327 ], [ %ram.pay708, %concat.tot.len691 ], [ %ram.pay886, %b.freeze.done ], [ %ram.pay1057, %concat.tot.len1039 ], [ %ram.pay1267, %concat.tot.len1249 ], [ %ram.pay1692, %b.freeze.done1651 ], [ { i1 false, i64 ptrtoint (ptr @str.19.struct to i64) }, %str.eq.merge ], [ { i1 false, i64 ptrtoint (ptr @str.22.struct to i64) }, %str.eq.merge122 ], [ { i1 false, i64 ptrtoint (ptr @str.42.struct to i64) }, %str.eq.merge303 ], [ { i1 false, i64 ptrtoint (ptr @str.46.struct to i64) }, %str.eq.merge400 ], [ { i1 false, i64 ptrtoint (ptr @str.47.struct to i64) }, %str.eq.then472 ], [ { i1 false, i64 ptrtoint (ptr @str.56.struct to i64) }, %str.eq.then1076 ]
  ret { i1, i64 } %common.ret.op

a.after9:                                         ; preds = %a.create8, %choice.then
  %var.flags.2 = phi ptr [ %a.create11, %a.create8 ], [ %var.flags.0, %choice.then ]
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %var.flags.2, ptr %rec.alloc, align 8
  %rec.fld19 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %rec.fld19, align 8
  %rec.fld20 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %rec.fld20, align 8
  %rec.fld21 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 false, ptr %rec.fld21, align 1
  %rec.fld22 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc, i32 0, i32 4
  store i1 true, ptr %rec.fld22, align 1
  %ptr.to.i64 = ptrtoint ptr %rec.alloc to i64
  %ram.pay = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64, 1
  br label %common.ret

a.create63:                                       ; preds = %choice.exit
  %arena.cur65 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create66 = call ptr @dva_arena_alloc(ptr %arena.cur65, i64 24)
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 128)
  store i64 0, ptr %a.create66, align 8
  %a.data.gep70 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 1
  store ptr %a.buf68, ptr %a.data.gep70, align 8
  %a.cap.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create66, i32 0, i32 2
  store i64 16, ptr %a.cap.gep71, align 8
  br label %a.after64

a.after64:                                        ; preds = %a.create63, %choice.exit
  %var.flags.3 = phi ptr [ %a.create66, %a.create63 ], [ %var.flags.0, %choice.exit ]
  %arr.cycle.len73 = load i64, ptr %var.flags.3, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.flags.3, i32 0, i32 1
  %arr.cycle.data74 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.242

loop.header.242:                                  ; preds = %loop.latch.242, %a.after64
  %loop.idx.242.0 = phi i64 [ 0, %a.after64 ], [ %loop.next, %loop.latch.242 ]
  %"var.ld_path'.0" = phi ptr [ %copy.str57, %a.after64 ], [ %"var.ld_path'.1", %loop.latch.242 ]
  %"var.linker'.0" = phi ptr [ %copy.str46, %a.after64 ], [ %"var.linker'.1", %loop.latch.242 ]
  %"var.cacheable'.0" = phi i1 [ true, %a.after64 ], [ %"var.cacheable'.1", %loop.latch.242 ]
  %"var.lto'.0" = phi i1 [ false, %a.after64 ], [ %"var.lto'.1", %loop.latch.242 ]
  %"var.generate'.0" = phi i1 [ false, %a.after64 ], [ %"var.generate'.1", %loop.latch.242 ]
  %"var.profile'.0" = phi ptr [ %copy.str35, %a.after64 ], [ %"var.profile'.1", %loop.latch.242 ]
  %"var.mode'.0" = phi ptr [ %copy.str, %a.after64 ], [ %"var.mode'.1", %loop.latch.242 ]
  %loop.cond = icmp slt i64 %loop.idx.242.0, %arr.cycle.len73
  br i1 %loop.cond, label %loop.body.242, label %loop.exit.242

loop.body.242:                                    ; preds = %loop.header.242
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data74, i64 %loop.idx.242.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %call.res = call i1 @"backend_opt::#profile_flag"(ptr %slot.i2p)
  br i1 %call.res, label %choice.then76, label %choice.exit77

loop.latch.242:                                   ; preds = %or.243.exit, %or.251.exit, %choice.exit84
  %"var.ld_path'.1" = phi ptr [ %"var.ld_path'.0", %choice.exit84 ], [ %"var.ld_path'.2", %or.251.exit ], [ %"var.ld_path'.0", %or.243.exit ]
  %"var.linker'.1" = phi ptr [ %"var.linker'.0", %choice.exit84 ], [ %"var.linker'.2", %or.251.exit ], [ %"var.linker'.0", %or.243.exit ]
  %"var.cacheable'.1" = phi i1 [ %"var.cacheable'.0", %choice.exit84 ], [ %spec.select1722, %or.251.exit ], [ %"var.cacheable'.0", %or.243.exit ]
  %"var.lto'.1" = phi i1 [ %"var.lto'.0", %choice.exit84 ], [ %spec.select, %or.251.exit ], [ %"var.lto'.0", %or.243.exit ]
  %"var.generate'.1" = phi i1 [ %"var.generate'.0", %choice.exit84 ], [ %"var.generate'.0", %or.251.exit ], [ true, %or.243.exit ]
  %"var.profile'.1" = phi ptr [ %ret.ub.alloc, %choice.exit84 ], [ %"var.profile'.0", %or.251.exit ], [ %"var.profile'.0", %or.243.exit ]
  %"var.mode'.1" = phi ptr [ %slot.i2p, %choice.exit84 ], [ %"var.mode'.0", %or.251.exit ], [ %"var.mode'.0", %or.243.exit ]
  %loop.next = add i64 %loop.idx.242.0, 1
  br label %loop.header.242

loop.exit.242:                                    ; preds = %loop.header.242
  %eq.lhs.len289 = load i64, ptr %"var.mode'.0", align 8
  %eq.lhs.len290 = and i64 %eq.lhs.len289, 281474976710655
  %str.tag291 = lshr i64 %eq.lhs.len289, 48
  %tag.immortal293 = icmp eq i64 %str.tag291, 0
  %active.gen294 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current295 = icmp eq i64 %str.tag291, %active.gen294
  %tag.fast.ok296 = or i1 %tag.immortal293, %tag.current295
  br i1 %tag.fast.ok296, label %str_ok292, label %tag.slow_check297

choice.then76:                                    ; preds = %loop.body.242
  %eq.lhs.len79 = load i64, ptr %"var.mode'.0", align 8
  %eq.lhs.len80 = and i64 %eq.lhs.len79, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len79, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit77:                                    ; preds = %loop.body.242
  %eq.lhs.len93 = load i64, ptr %slot.i2p, align 8
  %eq.lhs.len94 = and i64 %eq.lhs.len93, 281474976710655
  %str.tag95 = lshr i64 %eq.lhs.len93, 48
  %tag.immortal97 = icmp eq i64 %str.tag95, 0
  %active.gen98 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current99 = icmp eq i64 %str.tag95, %active.gen98
  %tag.fast.ok100 = or i1 %tag.immortal97, %tag.current99
  br i1 %tag.fast.ok100, label %str_ok96, label %tag.slow_check101

str_ok:                                           ; preds = %tag.slow_check, %choice.then76
  %eq.len = icmp eq i64 %eq.lhs.len80, 0
  br i1 %eq.len, label %str.eq.then, label %str.eq.merge

tag.slow_check:                                   ; preds = %choice.then76
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %"var.mode'.0", i32 0, i32 1
  %eq.lhs.data82 = load ptr, ptr %eq.lhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data82, ptr @str.1, i64 %eq.lhs.len80)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str_ok, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str_ok ]
  %str.neq = xor i1 %str.eq.result, true
  br i1 %str.neq, label %common.ret, label %choice.exit84

choice.exit84:                                    ; preds = %str.eq.merge
  %call.res88 = call { i64, ptr } @"backend_opt::#flag_value"(ptr %slot.i2p)
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 16)
  store { i64, ptr } %call.res88, ptr %ret.ub.alloc, align 8
  br label %loop.latch.242

str_ok96:                                         ; preds = %tag.slow_check101, %choice.exit77
  %eq.len104 = icmp eq i64 %eq.lhs.len94, 13
  br i1 %eq.len104, label %str.eq.then105, label %str.eq.merge107

tag.slow_check101:                                ; preds = %choice.exit77
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag95)
  br label %str_ok96

str.eq.then105:                                   ; preds = %str_ok96
  %eq.lhs.data108 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %eq.lhs.data109 = load ptr, ptr %eq.lhs.data108, align 8
  %eq.memcmp111 = call i32 @memcmp(ptr %eq.lhs.data109, ptr @str.20, i64 %eq.lhs.len94)
  %eq.cmp.zero112 = icmp eq i32 %eq.memcmp111, 0
  br label %str.eq.merge107

str.eq.merge107:                                  ; preds = %str_ok96, %str.eq.then105
  %str.eq.result113 = phi i1 [ %eq.cmp.zero112, %str.eq.then105 ], [ false, %str_ok96 ]
  %eq.lhs.len115 = load i64, ptr %slot.i2p, align 8
  %eq.lhs.len116 = and i64 %eq.lhs.len115, 281474976710655
  %eq.len119 = icmp eq i64 %eq.lhs.len116, 19
  br i1 %eq.len119, label %str.eq.then120, label %str.eq.merge122

str.eq.then120:                                   ; preds = %str.eq.merge107
  %eq.lhs.data123 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %eq.lhs.data124 = load ptr, ptr %eq.lhs.data123, align 8
  %eq.memcmp126 = call i32 @memcmp(ptr %eq.lhs.data124, ptr @str.21, i64 %eq.lhs.len116)
  %eq.cmp.zero127 = icmp eq i32 %eq.memcmp126, 0
  br label %str.eq.merge122

str.eq.merge122:                                  ; preds = %str.eq.merge107, %str.eq.then120
  %str.eq.result128 = phi i1 [ %eq.cmp.zero127, %str.eq.then120 ], [ false, %str.eq.merge107 ]
  %case.or = or i1 %str.eq.result113, %str.eq.result128
  br i1 %case.or, label %common.ret, label %choice.exit130

choice.exit130:                                   ; preds = %str.eq.merge122
  %eq.lhs.len134 = load i64, ptr %slot.i2p, align 8
  %eq.lhs.len135 = and i64 %eq.lhs.len134, 281474976710655
  %str.tag136 = lshr i64 %eq.lhs.len134, 48
  %tag.immortal138 = icmp eq i64 %str.tag136, 0
  %active.gen139 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current140 = icmp eq i64 %str.tag136, %active.gen139
  %tag.fast.ok141 = or i1 %tag.immortal138, %tag.current140
  br i1 %tag.fast.ok141, label %str_ok137, label %tag.slow_check142

str_ok137:                                        ; preds = %tag.slow_check142, %choice.exit130
  %eq.len145 = icmp eq i64 %eq.lhs.len135, 18
  br i1 %eq.len145, label %str.eq.then146, label %str.eq.merge148

tag.slow_check142:                                ; preds = %choice.exit130
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag136)
  br label %str_ok137

str.eq.then146:                                   ; preds = %str_ok137
  %eq.lhs.data149 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %eq.lhs.data150 = load ptr, ptr %eq.lhs.data149, align 8
  %eq.memcmp152 = call i32 @memcmp(ptr %eq.lhs.data150, ptr @str.23, i64 %eq.lhs.len135)
  %eq.cmp.zero153 = icmp eq i32 %eq.memcmp152, 0
  br label %str.eq.merge148

str.eq.merge148:                                  ; preds = %str_ok137, %str.eq.then146
  %str.eq.result154 = phi i1 [ %eq.cmp.zero153, %str.eq.then146 ], [ false, %str_ok137 ]
  br i1 %str.eq.result154, label %or.243.exit, label %or.243.else

or.243.else:                                      ; preds = %str.eq.merge148
  %call.res156 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.24.struct)
  br label %or.243.exit

or.243.exit:                                      ; preds = %str.eq.merge148, %or.243.else
  %or.243.phi = phi i1 [ %call.res156, %or.243.else ], [ %str.eq.result154, %str.eq.merge148 ]
  br i1 %or.243.phi, label %loop.latch.242, label %choice.exit158

choice.exit158:                                   ; preds = %or.243.exit
  %eq.lhs.len164 = load i64, ptr %slot.i2p, align 8
  %eq.lhs.len165 = and i64 %eq.lhs.len164, 281474976710655
  %str.tag166 = lshr i64 %eq.lhs.len164, 48
  %tag.immortal168 = icmp eq i64 %str.tag166, 0
  %active.gen169 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current170 = icmp eq i64 %str.tag166, %active.gen169
  %tag.fast.ok171 = or i1 %tag.immortal168, %tag.current170
  br i1 %tag.fast.ok171, label %str_ok167, label %tag.slow_check172

str_ok167:                                        ; preds = %tag.slow_check172, %choice.exit158
  %eq.len175 = icmp eq i64 %eq.lhs.len165, 5
  br i1 %eq.len175, label %str.eq.then176, label %str.eq.merge178

tag.slow_check172:                                ; preds = %choice.exit158
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag166)
  br label %str_ok167

str.eq.then176:                                   ; preds = %str_ok167
  %eq.lhs.data179 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %eq.lhs.data180 = load ptr, ptr %eq.lhs.data179, align 8
  %eq.memcmp182 = call i32 @memcmp(ptr %eq.lhs.data180, ptr @str.25, i64 %eq.lhs.len165)
  %eq.cmp.zero183 = icmp eq i32 %eq.memcmp182, 0
  br label %str.eq.merge178

str.eq.merge178:                                  ; preds = %str_ok167, %str.eq.then176
  %str.eq.result184 = phi i1 [ %eq.cmp.zero183, %str.eq.then176 ], [ false, %str_ok167 ]
  %eq.lhs.len186 = load i64, ptr %slot.i2p, align 8
  %eq.lhs.len187 = and i64 %eq.lhs.len186, 281474976710655
  %eq.len190 = icmp eq i64 %eq.lhs.len187, 10
  br i1 %eq.len190, label %str.eq.then191, label %str.eq.merge193

str.eq.then191:                                   ; preds = %str.eq.merge178
  %eq.lhs.data194 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %eq.lhs.data195 = load ptr, ptr %eq.lhs.data194, align 8
  %eq.memcmp197 = call i32 @memcmp(ptr %eq.lhs.data195, ptr @str.26, i64 %eq.lhs.len187)
  %eq.cmp.zero198 = icmp eq i32 %eq.memcmp197, 0
  br label %str.eq.merge193

str.eq.merge193:                                  ; preds = %str.eq.merge178, %str.eq.then191
  %str.eq.result199 = phi i1 [ %eq.cmp.zero198, %str.eq.then191 ], [ false, %str.eq.merge178 ]
  %case.or200 = or i1 %str.eq.result184, %str.eq.result199
  %eq.lhs.len202 = load i64, ptr %slot.i2p, align 8
  %eq.lhs.len203 = and i64 %eq.lhs.len202, 281474976710655
  %eq.len206 = icmp eq i64 %eq.lhs.len203, 10
  br i1 %eq.len206, label %str.eq.then207, label %str.eq.merge209

str.eq.then207:                                   ; preds = %str.eq.merge193
  %eq.lhs.data210 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %eq.lhs.data211 = load ptr, ptr %eq.lhs.data210, align 8
  %eq.memcmp213 = call i32 @memcmp(ptr %eq.lhs.data211, ptr @str.27, i64 %eq.lhs.len203)
  %eq.cmp.zero214 = icmp eq i32 %eq.memcmp213, 0
  br label %str.eq.merge209

str.eq.merge209:                                  ; preds = %str.eq.merge193, %str.eq.then207
  %str.eq.result215 = phi i1 [ %eq.cmp.zero214, %str.eq.then207 ], [ false, %str.eq.merge193 ]
  %case.or216 = or i1 %case.or200, %str.eq.result215
  %spec.select1720 = select i1 %case.or216, i1 true, i1 false
  %spec.select = select i1 %spec.select1720, i1 true, i1 %"var.lto'.0"
  %call.res221 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.28.struct)
  br i1 %call.res221, label %choice.then222, label %choice.exit223

choice.then222:                                   ; preds = %str.eq.merge209
  %call.res225 = call { i64, ptr } @"backend_opt::#flag_value"(ptr %slot.i2p)
  %arena.cur226 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc227 = call ptr @dva_arena_alloc(ptr %arena.cur226, i64 16)
  store { i64, ptr } %call.res225, ptr %ret.ub.alloc227, align 8
  %call.res229 = call i1 @"str::contains"(ptr %ret.ub.alloc227, ptr @str.29.struct)
  br i1 %call.res229, label %choice.exit223, label %choice.else

choice.exit223:                                   ; preds = %concat.tot.len248, %choice.then222, %str.eq.merge209
  %"var.linker'.2" = phi ptr [ %"var.linker'.0", %str.eq.merge209 ], [ %concat.str, %concat.tot.len248 ], [ %ret.ub.alloc227, %choice.then222 ]
  %call.res256 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.31.struct)
  br i1 %call.res256, label %choice.then257, label %choice.exit258

choice.else:                                      ; preds = %choice.then222
  %cat.seg234 = load i64, ptr %ret.ub.alloc227, align 8
  %cat.seg235 = and i64 %cat.seg234, 281474976710655
  %str.tag236 = lshr i64 %cat.seg234, 48
  %tag.immortal238 = icmp eq i64 %str.tag236, 0
  %active.gen239 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current240 = icmp eq i64 %str.tag236, %active.gen239
  %tag.fast.ok241 = or i1 %tag.immortal238, %tag.current240
  br i1 %tag.fast.ok241, label %str_ok237, label %tag.slow_check242

str_ok237:                                        ; preds = %tag.slow_check242, %choice.else
  %cat.seg243 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc227, i32 0, i32 1
  %cat.seg244 = load ptr, ptr %cat.seg243, align 8
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 3, i64 %cat.seg235)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len245

tag.slow_check242:                                ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag236)
  br label %str_ok237

cat.sum.len245:                                   ; preds = %str_ok237
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum246 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf247 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf247, label %str_overflow_abort249, label %concat.tot.len248

str_overflow_abort:                               ; preds = %str_ok237
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len248:                                ; preds = %cat.sum.len245
  %arena.cur251 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur251, i64 %sum246)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.30, i64 3, i1 false)
  %cat.dst252 = getelementptr i8, ptr %concat.buf, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst252, ptr align 1 %cat.seg244, i64 %cat.seg235, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum
  store i8 0, ptr %concat.nul, align 1
  %arena.cur253 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur253, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  br label %choice.exit223

str_overflow_abort249:                            ; preds = %cat.sum.len245
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then257:                                   ; preds = %choice.exit223
  %call.res260 = call { i64, ptr } @"backend_opt::#flag_value"(ptr %slot.i2p)
  %arena.cur261 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc262 = call ptr @dva_arena_alloc(ptr %arena.cur261, i64 16)
  store { i64, ptr } %call.res260, ptr %ret.ub.alloc262, align 8
  br label %choice.exit258

choice.exit258:                                   ; preds = %choice.then257, %choice.exit223
  %"var.ld_path'.2" = phi ptr [ %ret.ub.alloc262, %choice.then257 ], [ %"var.ld_path'.0", %choice.exit223 ]
  %call.res264 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.32.struct)
  br i1 %call.res264, label %or.244.exit, label %or.244.else

or.244.else:                                      ; preds = %choice.exit258
  %call.res266 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.33.struct)
  br label %or.244.exit

or.244.exit:                                      ; preds = %choice.exit258, %or.244.else
  %or.244.phi = phi i1 [ %call.res266, %or.244.else ], [ %call.res264, %choice.exit258 ]
  br i1 %or.244.phi, label %or.245.exit, label %or.245.else

or.245.else:                                      ; preds = %or.244.exit
  %call.res268 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.34.struct)
  br label %or.245.exit

or.245.exit:                                      ; preds = %or.244.exit, %or.245.else
  %or.245.phi = phi i1 [ %call.res268, %or.245.else ], [ %or.244.phi, %or.244.exit ]
  br i1 %or.245.phi, label %or.246.exit, label %or.246.else

or.246.else:                                      ; preds = %or.245.exit
  %call.res270 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.35.struct)
  br label %or.246.exit

or.246.exit:                                      ; preds = %or.245.exit, %or.246.else
  %or.246.phi = phi i1 [ %call.res270, %or.246.else ], [ %or.245.phi, %or.245.exit ]
  %spec.select1721 = select i1 %or.246.phi, i1 false, i1 %"var.cacheable'.0"
  %call.res274 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.36.struct)
  br i1 %call.res274, label %or.247.exit, label %or.247.else

or.247.else:                                      ; preds = %or.246.exit
  %call.res276 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.37.struct)
  br label %or.247.exit

or.247.exit:                                      ; preds = %or.246.exit, %or.247.else
  %or.247.phi = phi i1 [ %call.res276, %or.247.else ], [ %call.res274, %or.246.exit ]
  br i1 %or.247.phi, label %or.248.exit, label %or.248.else

or.248.else:                                      ; preds = %or.247.exit
  %call.res278 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.38.struct)
  br label %or.248.exit

or.248.exit:                                      ; preds = %or.247.exit, %or.248.else
  %or.248.phi = phi i1 [ %call.res278, %or.248.else ], [ %or.247.phi, %or.247.exit ]
  br i1 %or.248.phi, label %or.249.exit, label %or.249.else

or.249.else:                                      ; preds = %or.248.exit
  %call.res280 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.39.struct)
  br label %or.249.exit

or.249.exit:                                      ; preds = %or.248.exit, %or.249.else
  %or.249.phi = phi i1 [ %call.res280, %or.249.else ], [ %or.248.phi, %or.248.exit ]
  br i1 %or.249.phi, label %or.250.exit, label %or.250.else

or.250.else:                                      ; preds = %or.249.exit
  %call.res282 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.40.struct)
  br label %or.250.exit

or.250.exit:                                      ; preds = %or.249.exit, %or.250.else
  %or.250.phi = phi i1 [ %call.res282, %or.250.else ], [ %or.249.phi, %or.249.exit ]
  br i1 %or.250.phi, label %or.251.exit, label %or.251.else

or.251.else:                                      ; preds = %or.250.exit
  %call.res284 = call i1 @"str::starts_with"(ptr %slot.i2p, ptr @str.41.struct)
  br label %or.251.exit

or.251.exit:                                      ; preds = %or.250.exit, %or.251.else
  %or.251.phi = phi i1 [ %call.res284, %or.251.else ], [ %or.250.phi, %or.250.exit ]
  %spec.select1722 = select i1 %or.251.phi, i1 false, i1 %spec.select1721
  br label %loop.latch.242

str_ok292:                                        ; preds = %tag.slow_check297, %loop.exit.242
  %eq.len300 = icmp eq i64 %eq.lhs.len290, 0
  br i1 %eq.len300, label %str.eq.then301, label %str.eq.merge303

tag.slow_check297:                                ; preds = %loop.exit.242
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag291)
  br label %str_ok292

str.eq.then301:                                   ; preds = %str_ok292
  %eq.lhs.data304 = getelementptr inbounds { i64, ptr }, ptr %"var.mode'.0", i32 0, i32 1
  %eq.lhs.data305 = load ptr, ptr %eq.lhs.data304, align 8
  %eq.memcmp307 = call i32 @memcmp(ptr %eq.lhs.data305, ptr @str.1, i64 %eq.lhs.len290)
  %eq.cmp.zero308 = icmp eq i32 %eq.memcmp307, 0
  br label %str.eq.merge303

str.eq.merge303:                                  ; preds = %str_ok292, %str.eq.then301
  %str.eq.result309 = phi i1 [ %eq.cmp.zero308, %str.eq.then301 ], [ false, %str_ok292 ]
  %str.neq310 = xor i1 %str.eq.result309, true
  %"var.generate'.0." = select i1 %str.neq310, i1 %"var.generate'.0", i1 false
  br i1 %"var.generate'.0.", label %common.ret, label %choice.exit314

choice.exit314:                                   ; preds = %str.eq.merge303
  %nottmp318 = xor i1 %"var.generate'.0", true
  %spec.select1723 = select i1 %str.eq.result309, i1 %nottmp318, i1 %str.eq.result309
  %nottmp320 = xor i1 %"var.lto'.0", true
  %spec.select1724 = select i1 %spec.select1723, i1 %nottmp320, i1 %spec.select1723
  br i1 %spec.select1724, label %a.after327, label %choice.exit322

choice.exit322:                                   ; preds = %choice.exit314
  %call.res348 = call { i64, ptr } @"ast::triple_arch"(ptr %1)
  %arena.cur349 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc350 = call ptr @dva_arena_alloc(ptr %arena.cur349, i64 16)
  store { i64, ptr } %call.res348, ptr %ret.ub.alloc350, align 8
  %eq.lhs.len355 = load i64, ptr %ret.ub.alloc350, align 8
  %eq.lhs.len356 = and i64 %eq.lhs.len355, 281474976710655
  %str.tag357 = lshr i64 %eq.lhs.len355, 48
  %tag.immortal359 = icmp eq i64 %str.tag357, 0
  %active.gen360 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current361 = icmp eq i64 %str.tag357, %active.gen360
  %tag.fast.ok362 = or i1 %tag.immortal359, %tag.current361
  br i1 %tag.fast.ok362, label %str_ok358, label %tag.slow_check363

a.after327:                                       ; preds = %choice.exit314
  %arena.cur337 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc338 = call ptr @dva_arena_alloc(ptr %arena.cur337, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %var.flags.3, ptr %rec.alloc338, align 8
  %rec.fld340 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc338, i32 0, i32 1
  store ptr @str.1.struct, ptr %rec.fld340, align 8
  %rec.fld341 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc338, i32 0, i32 2
  store ptr @str.1.struct, ptr %rec.fld341, align 8
  %rec.fld342 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc338, i32 0, i32 3
  store i1 false, ptr %rec.fld342, align 1
  %rec.fld343 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc338, i32 0, i32 4
  store i1 %"var.cacheable'.0", ptr %rec.fld343, align 1
  %ptr.to.i64344 = ptrtoint ptr %rec.alloc338 to i64
  %ram.pay345 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64344, 1
  br label %common.ret

str_ok358:                                        ; preds = %tag.slow_check363, %choice.exit322
  %eq.len366 = icmp eq i64 %eq.lhs.len356, 6
  br i1 %eq.len366, label %str.eq.then367, label %str.eq.merge369

tag.slow_check363:                                ; preds = %choice.exit322
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag357)
  br label %str_ok358

str.eq.then367:                                   ; preds = %str_ok358
  %eq.lhs.data370 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc350, i32 0, i32 1
  %eq.lhs.data371 = load ptr, ptr %eq.lhs.data370, align 8
  %eq.memcmp373 = call i32 @memcmp(ptr %eq.lhs.data371, ptr @str.43, i64 %eq.lhs.len356)
  %eq.cmp.zero374 = icmp eq i32 %eq.memcmp373, 0
  br label %str.eq.merge369

str.eq.merge369:                                  ; preds = %str_ok358, %str.eq.then367
  %str.eq.result375 = phi i1 [ %eq.cmp.zero374, %str.eq.then367 ], [ false, %str_ok358 ]
  %eq.lhs.len377 = load i64, ptr %ret.ub.alloc350, align 8
  %eq.lhs.len378 = and i64 %eq.lhs.len377, 281474976710655
  %eq.len381 = icmp eq i64 %eq.lhs.len378, 6
  br i1 %eq.len381, label %str.eq.then382, label %str.eq.merge384

str.eq.then382:                                   ; preds = %str.eq.merge369
  %eq.lhs.data385 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc350, i32 0, i32 1
  %eq.lhs.data386 = load ptr, ptr %eq.lhs.data385, align 8
  %eq.memcmp388 = call i32 @memcmp(ptr %eq.lhs.data386, ptr @str.44, i64 %eq.lhs.len378)
  %eq.cmp.zero389 = icmp eq i32 %eq.memcmp388, 0
  br label %str.eq.merge384

str.eq.merge384:                                  ; preds = %str.eq.merge369, %str.eq.then382
  %str.eq.result390 = phi i1 [ %eq.cmp.zero389, %str.eq.then382 ], [ false, %str.eq.merge369 ]
  %case.or391 = or i1 %str.eq.result375, %str.eq.result390
  %eq.lhs.len393 = load i64, ptr %ret.ub.alloc350, align 8
  %eq.lhs.len394 = and i64 %eq.lhs.len393, 281474976710655
  %eq.len397 = icmp eq i64 %eq.lhs.len394, 4
  br i1 %eq.len397, label %str.eq.then398, label %str.eq.merge400

str.eq.then398:                                   ; preds = %str.eq.merge384
  %eq.lhs.data401 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc350, i32 0, i32 1
  %eq.lhs.data402 = load ptr, ptr %eq.lhs.data401, align 8
  %eq.memcmp404 = call i32 @memcmp(ptr %eq.lhs.data402, ptr @str.45, i64 %eq.lhs.len394)
  %eq.cmp.zero405 = icmp eq i32 %eq.memcmp404, 0
  br label %str.eq.merge400

str.eq.merge400:                                  ; preds = %str.eq.merge384, %str.eq.then398
  %str.eq.result406 = phi i1 [ %eq.cmp.zero405, %str.eq.then398 ], [ false, %str.eq.merge384 ]
  %case.or407 = or i1 %case.or391, %str.eq.result406
  br i1 %case.or407, label %common.ret, label %b.buf.len414

b.buf.len414:                                     ; preds = %str.eq.merge400
  %arena.cur417 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.buf = call ptr @dva_arena_alloc(ptr %arena.cur417, i64 513)
  store i8 0, ptr %b.buf, align 1
  %"var.cacheable'.0." = select i1 %3, i1 %"var.cacheable'.0", i1 %3
  br i1 %"var.cacheable'.0.", label %choice.then420, label %choice.exit421

choice.then420:                                   ; preds = %b.buf.len414
  %eq.lhs.len424 = load i64, ptr %"var.ld_path'.0", align 8
  %eq.lhs.len425 = and i64 %eq.lhs.len424, 281474976710655
  %str.tag426 = lshr i64 %eq.lhs.len424, 48
  %tag.immortal428 = icmp eq i64 %str.tag426, 0
  %active.gen429 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current430 = icmp eq i64 %str.tag426, %active.gen429
  %tag.fast.ok431 = or i1 %tag.immortal428, %tag.current430
  br i1 %tag.fast.ok431, label %str_ok427, label %tag.slow_check432

choice.exit421:                                   ; preds = %loop.header.256, %b.buf.len414
  %builder.new.salloc.sroa.64.0 = phi i64 [ 512, %b.buf.len414 ], [ %builder.new.salloc.sroa.64.4, %loop.header.256 ]
  %builder.new.salloc.sroa.32.0 = phi ptr [ %b.buf, %b.buf.len414 ], [ %builder.new.salloc.sroa.32.4, %loop.header.256 ]
  %builder.new.salloc.sroa.0.0 = phi i64 [ 0, %b.buf.len414 ], [ %builder.new.salloc.sroa.0.1, %loop.header.256 ]
  %var.flags.5 = phi ptr [ %var.flags.3, %b.buf.len414 ], [ %var.flags.3, %loop.header.256 ]
  br i1 %str.eq.result309, label %a.after857, label %choice.exit852

str_ok427:                                        ; preds = %tag.slow_check432, %choice.then420
  %eq.len435 = icmp eq i64 %eq.lhs.len425, 0
  br i1 %eq.len435, label %str.eq.then436, label %str.eq.merge438

tag.slow_check432:                                ; preds = %choice.then420
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag426)
  br label %str_ok427

str.eq.then436:                                   ; preds = %str_ok427
  %eq.lhs.data439 = getelementptr inbounds { i64, ptr }, ptr %"var.ld_path'.0", i32 0, i32 1
  %eq.lhs.data440 = load ptr, ptr %eq.lhs.data439, align 8
  %eq.memcmp442 = call i32 @memcmp(ptr %eq.lhs.data440, ptr @str.1, i64 %eq.lhs.len425)
  %eq.cmp.zero443 = icmp eq i32 %eq.memcmp442, 0
  br label %str.eq.merge438

str.eq.merge438:                                  ; preds = %str_ok427, %str.eq.then436
  %str.eq.result444 = phi i1 [ %eq.cmp.zero443, %str.eq.then436 ], [ false, %str_ok427 ]
  %str.neq445 = xor i1 %str.eq.result444, true
  %"var.ld_path'.0.var.linker'.0" = select i1 %str.neq445, ptr %"var.ld_path'.0", ptr %"var.linker'.0"
  %call.res455 = call { i64, ptr } @"backend_opt::#toolchain"(ptr %1, ptr %"var.ld_path'.0.var.linker'.0", i1 %"var.generate'.0")
  %arena.cur456 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc457 = call ptr @dva_arena_alloc(ptr %arena.cur456, i64 16)
  store { i64, ptr } %call.res455, ptr %ret.ub.alloc457, align 8
  %eq.lhs.len460 = load i64, ptr %ret.ub.alloc457, align 8
  %eq.lhs.len461 = and i64 %eq.lhs.len460, 281474976710655
  %str.tag462 = lshr i64 %eq.lhs.len460, 48
  %tag.immortal464 = icmp eq i64 %str.tag462, 0
  %active.gen465 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current466 = icmp eq i64 %str.tag462, %active.gen465
  %tag.fast.ok467 = or i1 %tag.immortal464, %tag.current466
  br i1 %tag.fast.ok467, label %str_ok463, label %tag.slow_check468

str_ok463:                                        ; preds = %tag.slow_check468, %str.eq.merge438
  %eq.len471 = icmp eq i64 %eq.lhs.len461, 0
  br i1 %eq.len471, label %str.eq.then472, label %b.grow_done

tag.slow_check468:                                ; preds = %str.eq.merge438
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag462)
  br label %str_ok463

str.eq.then472:                                   ; preds = %str_ok463
  %eq.lhs.data475 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc457, i32 0, i32 1
  %eq.lhs.data476 = load ptr, ptr %eq.lhs.data475, align 8
  %eq.memcmp478 = call i32 @memcmp(ptr %eq.lhs.data476, ptr @str.1, i64 %eq.lhs.len461)
  %eq.cmp.zero479 = icmp eq i32 %eq.memcmp478, 0
  br i1 %eq.cmp.zero479, label %common.ret, label %b.grow_done

b.grow_done:                                      ; preds = %str.eq.then472, %str_ok463
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.buf, ptr align 1 @str.48, i64 17, i1 false)
  %b.app.nul = getelementptr i8, ptr %b.buf, i64 17
  store i8 0, ptr %b.app.nul, align 1
  %call.res503 = call { i64, ptr } @"pkg::hash_string"(ptr %ret.ub.alloc457)
  %arena.cur504 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc505 = call ptr @dva_arena_alloc(ptr %arena.cur504, i64 16)
  store { i64, ptr } %call.res503, ptr %ret.ub.alloc505, align 8
  %app.str.len507 = load i64, ptr %ret.ub.alloc505, align 8
  %app.str.len508 = and i64 %app.str.len507, 281474976710655
  %str.tag509 = lshr i64 %app.str.len507, 48
  %tag.immortal511 = icmp eq i64 %str.tag509, 0
  %active.gen512 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current513 = icmp eq i64 %str.tag509, %active.gen512
  %tag.fast.ok514 = or i1 %tag.immortal511, %tag.current513
  br i1 %tag.fast.ok514, label %str_ok510, label %tag.slow_check515

str_ok510:                                        ; preds = %tag.slow_check515, %b.grow_done
  %app.str.data516 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc505, i32 0, i32 1
  %app.str.data517 = load ptr, ptr %app.str.data516, align 8
  %b.app.new.len520 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 17, i64 %app.str.len508)
  %sum521 = extractvalue { i64, i1 } %b.app.new.len520, 0
  %ovf522 = extractvalue { i64, i1 } %b.app.new.len520, 1
  br i1 %ovf522, label %str_overflow_abort524, label %b.app.new.len523

tag.slow_check515:                                ; preds = %b.grow_done
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag509)
  br label %str_ok510

b.app.new.len523:                                 ; preds = %str_ok510
  %b.need.grow528 = icmp slt i64 512, %sum521
  br i1 %b.need.grow528, label %b.grow2529, label %b.grow_done531

str_overflow_abort524:                            ; preds = %str_ok510
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2529:                                       ; preds = %b.app.new.len523
  %b.cap2532 = mul i64 512, 2
  %b.cap.small533 = icmp slt i64 %b.cap2532, 16
  %b.cap.grow534 = select i1 %b.cap.small533, i64 16, i64 %b.cap2532
  %b.cap.need535 = icmp slt i64 %b.cap.grow534, %sum521
  %b.new.cap536 = select i1 %b.cap.need535, i64 %sum521, i64 %b.cap.grow534
  %b.new.buf.len2541 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap536, i64 1)
  %sum542 = extractvalue { i64, i1 } %b.new.buf.len2541, 0
  %ovf543 = extractvalue { i64, i1 } %b.new.buf.len2541, 1
  br i1 %ovf543, label %str_overflow_abort545, label %b.new.buf.len2544

b.grow_done531:                                   ; preds = %b.app.new.len523, %b.new.buf.len2544
  %builder.new.salloc.sroa.64.2 = phi i64 [ %b.new.cap536, %b.new.buf.len2544 ], [ 512, %b.app.new.len523 ]
  %builder.new.salloc.sroa.32.2 = phi ptr [ %b.new.buf2548, %b.new.buf.len2544 ], [ %b.buf, %b.app.new.len523 ]
  %b.app.dst554 = getelementptr i8, ptr %builder.new.salloc.sroa.32.2, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst554, ptr align 1 %app.str.data517, i64 %app.str.len508, i1 false)
  %b.app.nul555 = getelementptr i8, ptr %builder.new.salloc.sroa.32.2, i64 %sum521
  store i8 0, ptr %b.app.nul555, align 1
  %b.app.new.len562 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum521, i64 1)
  %sum563 = extractvalue { i64, i1 } %b.app.new.len562, 0
  %ovf564 = extractvalue { i64, i1 } %b.app.new.len562, 1
  br i1 %ovf564, label %str_overflow_abort566, label %b.app.new.len565

b.new.buf.len2544:                                ; preds = %b.grow2529
  %arena.cur547 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2548 = call ptr @dva_arena_alloc(ptr %arena.cur547, i64 %sum542)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2548, ptr align 1 %b.buf, i64 17, i1 false)
  %b.grow2.nul549 = getelementptr i8, ptr %b.new.buf2548, i64 17
  store i8 0, ptr %b.grow2.nul549, align 1
  br label %b.grow_done531

str_overflow_abort545:                            ; preds = %b.grow2529
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len565:                                 ; preds = %b.grow_done531
  %b.need.grow570 = icmp slt i64 %builder.new.salloc.sroa.64.2, %sum563
  br i1 %b.need.grow570, label %b.grow2571, label %b.grow_done573

str_overflow_abort566:                            ; preds = %b.grow_done531
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2571:                                       ; preds = %b.app.new.len565
  %b.cap2574 = mul i64 %builder.new.salloc.sroa.64.2, 2
  %b.cap.small575 = icmp slt i64 %b.cap2574, 16
  %b.cap.grow576 = select i1 %b.cap.small575, i64 16, i64 %b.cap2574
  %b.cap.need577 = icmp slt i64 %b.cap.grow576, %sum563
  %b.new.cap578 = select i1 %b.cap.need577, i64 %sum563, i64 %b.cap.grow576
  %b.new.buf.len2583 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap578, i64 1)
  %sum584 = extractvalue { i64, i1 } %b.new.buf.len2583, 0
  %ovf585 = extractvalue { i64, i1 } %b.new.buf.len2583, 1
  br i1 %ovf585, label %str_overflow_abort587, label %b.new.buf.len2586

b.grow_done573:                                   ; preds = %b.app.new.len565, %b.new.buf.len2586
  %builder.new.salloc.sroa.64.3 = phi i64 [ %b.new.cap578, %b.new.buf.len2586 ], [ %builder.new.salloc.sroa.64.2, %b.app.new.len565 ]
  %builder.new.salloc.sroa.32.3 = phi ptr [ %b.new.buf2590, %b.new.buf.len2586 ], [ %builder.new.salloc.sroa.32.2, %b.app.new.len565 ]
  %b.app.dst596 = getelementptr i8, ptr %builder.new.salloc.sroa.32.3, i64 %sum521
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst596, ptr align 1 @str.14, i64 1, i1 false)
  %b.app.nul597 = getelementptr i8, ptr %builder.new.salloc.sroa.32.3, i64 %sum563
  store i8 0, ptr %b.app.nul597, align 1
  %arr.cycle.len613 = load i64, ptr %var.flags.3, align 8
  %arr.cycle.data614 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.flags.3, i32 0, i32 1
  %arr.cycle.data615 = load ptr, ptr %arr.cycle.data614, align 8
  br label %loop.header.256

b.new.buf.len2586:                                ; preds = %b.grow2571
  %arena.cur589 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2590 = call ptr @dva_arena_alloc(ptr %arena.cur589, i64 %sum584)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2590, ptr align 1 %builder.new.salloc.sroa.32.2, i64 %sum521, i1 false)
  %b.grow2.nul591 = getelementptr i8, ptr %b.new.buf2590, i64 %sum521
  store i8 0, ptr %b.grow2.nul591, align 1
  br label %b.grow_done573

str_overflow_abort587:                            ; preds = %b.grow2571
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.256:                                  ; preds = %choice.exit631, %b.grow_done573
  %builder.new.salloc.sroa.64.4 = phi i64 [ %builder.new.salloc.sroa.64.3, %b.grow_done573 ], [ %builder.new.salloc.sroa.64.5, %choice.exit631 ]
  %builder.new.salloc.sroa.32.4 = phi ptr [ %builder.new.salloc.sroa.32.3, %b.grow_done573 ], [ %builder.new.salloc.sroa.32.5, %choice.exit631 ]
  %builder.new.salloc.sroa.0.1 = phi i64 [ %sum563, %b.grow_done573 ], [ %builder.new.salloc.sroa.0.2, %choice.exit631 ]
  %loop.idx.256.0 = phi i64 [ 0, %b.grow_done573 ], [ %loop.next848, %choice.exit631 ]
  %loop.cond617 = icmp slt i64 %loop.idx.256.0, %arr.cycle.len613
  br i1 %loop.cond617, label %loop.body.256, label %choice.exit421

loop.body.256:                                    ; preds = %loop.header.256
  %arr.elem.gep619 = getelementptr i64, ptr %arr.cycle.data615, i64 %loop.idx.256.0
  %arr.elem.raw620 = load i64, ptr %arr.elem.gep619, align 8
  %slot.i2p621 = inttoptr i64 %arr.elem.raw620 to ptr
  %call.res626 = call i1 @"str::starts_with"(ptr %slot.i2p621, ptr @str.49.struct)
  %nottmp627 = xor i1 %call.res626, true
  br i1 %nottmp627, label %and.257.then, label %choice.exit631

and.257.then:                                     ; preds = %loop.body.256
  %call.res629 = call i1 @"fs::is_file"(ptr %slot.i2p621)
  br i1 %call.res629, label %choice.then630, label %choice.exit631

choice.then630:                                   ; preds = %and.257.then
  %call.res633 = call { i64, ptr } @"backend_opt::#digest"(ptr %slot.i2p621)
  %arena.cur634 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc635 = call ptr @dva_arena_alloc(ptr %arena.cur634, i64 16)
  store { i64, ptr } %call.res633, ptr %ret.ub.alloc635, align 8
  %eq.lhs.len638 = load i64, ptr %ret.ub.alloc635, align 8
  %eq.lhs.len639 = and i64 %eq.lhs.len638, 281474976710655
  %str.tag640 = lshr i64 %eq.lhs.len638, 48
  %tag.immortal642 = icmp eq i64 %str.tag640, 0
  %active.gen643 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current644 = icmp eq i64 %str.tag640, %active.gen643
  %tag.fast.ok645 = or i1 %tag.immortal642, %tag.current644
  br i1 %tag.fast.ok645, label %str_ok641, label %tag.slow_check646

choice.exit631:                                   ; preds = %loop.body.256, %b.grow_done821, %and.257.then
  %builder.new.salloc.sroa.64.5 = phi i64 [ %builder.new.salloc.sroa.64.8, %b.grow_done821 ], [ %builder.new.salloc.sroa.64.4, %and.257.then ], [ %builder.new.salloc.sroa.64.4, %loop.body.256 ]
  %builder.new.salloc.sroa.32.5 = phi ptr [ %builder.new.salloc.sroa.32.8, %b.grow_done821 ], [ %builder.new.salloc.sroa.32.4, %and.257.then ], [ %builder.new.salloc.sroa.32.4, %loop.body.256 ]
  %builder.new.salloc.sroa.0.2 = phi i64 [ %sum811, %b.grow_done821 ], [ %builder.new.salloc.sroa.0.1, %and.257.then ], [ %builder.new.salloc.sroa.0.1, %loop.body.256 ]
  %loop.next848 = add i64 %loop.idx.256.0, 1
  br label %loop.header.256

str_ok641:                                        ; preds = %tag.slow_check646, %choice.then630
  %eq.len649 = icmp eq i64 %eq.lhs.len639, 0
  br i1 %eq.len649, label %str.eq.then650, label %choice.exit660

tag.slow_check646:                                ; preds = %choice.then630
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag640)
  br label %str_ok641

str.eq.then650:                                   ; preds = %str_ok641
  %eq.lhs.data653 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc635, i32 0, i32 1
  %eq.lhs.data654 = load ptr, ptr %eq.lhs.data653, align 8
  %eq.memcmp656 = call i32 @memcmp(ptr %eq.lhs.data654, ptr @str.1, i64 %eq.lhs.len639)
  %eq.cmp.zero657 = icmp eq i32 %eq.memcmp656, 0
  br i1 %eq.cmp.zero657, label %choice.then659, label %choice.exit660

choice.then659:                                   ; preds = %str.eq.then650
  %cat.seg664 = load i64, ptr %slot.i2p621, align 8
  %cat.seg665 = and i64 %cat.seg664, 281474976710655
  %str.tag666 = lshr i64 %cat.seg664, 48
  %tag.immortal668 = icmp eq i64 %str.tag666, 0
  %active.gen669 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current670 = icmp eq i64 %str.tag666, %active.gen669
  %tag.fast.ok671 = or i1 %tag.immortal668, %tag.current670
  br i1 %tag.fast.ok671, label %str_ok667, label %tag.slow_check672

choice.exit660:                                   ; preds = %str_ok641, %str.eq.then650
  %b.app.new.len716 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.1, i64 14)
  %sum717 = extractvalue { i64, i1 } %b.app.new.len716, 0
  %ovf718 = extractvalue { i64, i1 } %b.app.new.len716, 1
  br i1 %ovf718, label %str_overflow_abort720, label %b.app.new.len719

str_ok667:                                        ; preds = %tag.slow_check672, %choice.then659
  %cat.seg673 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p621, i32 0, i32 1
  %cat.seg674 = load ptr, ptr %cat.seg673, align 8
  %cat.sum.len676 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 30, i64 %cat.seg665)
  %sum677 = extractvalue { i64, i1 } %cat.sum.len676, 0
  %ovf678 = extractvalue { i64, i1 } %cat.sum.len676, 1
  br i1 %ovf678, label %str_overflow_abort680, label %cat.sum.len679

tag.slow_check672:                                ; preds = %choice.then659
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag666)
  br label %str_ok667

cat.sum.len679:                                   ; preds = %str_ok667
  %cat.sum.len682 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum677, i64 2)
  %sum683 = extractvalue { i64, i1 } %cat.sum.len682, 0
  %ovf684 = extractvalue { i64, i1 } %cat.sum.len682, 1
  br i1 %ovf684, label %str_overflow_abort686, label %cat.sum.len685

str_overflow_abort680:                            ; preds = %str_ok667
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len685:                                   ; preds = %cat.sum.len679
  %concat.tot.len688 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum683, i64 1)
  %sum689 = extractvalue { i64, i1 } %concat.tot.len688, 0
  %ovf690 = extractvalue { i64, i1 } %concat.tot.len688, 1
  br i1 %ovf690, label %str_overflow_abort692, label %concat.tot.len691

str_overflow_abort686:                            ; preds = %cat.sum.len679
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len691:                                ; preds = %cat.sum.len685
  %arena.cur694 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf695 = call ptr @dva_arena_alloc(ptr %arena.cur694, i64 %sum689)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf695, ptr align 1 @str.50, i64 30, i1 false)
  %cat.dst697 = getelementptr i8, ptr %concat.buf695, i64 30
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst697, ptr align 1 %cat.seg674, i64 %cat.seg665, i1 false)
  %cat.off = add i64 30, %cat.seg665
  %cat.dst698 = getelementptr i8, ptr %concat.buf695, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst698, ptr align 1 @str.51, i64 2, i1 false)
  %concat.nul699 = getelementptr i8, ptr %concat.buf695, i64 %sum683
  store i8 0, ptr %concat.nul699, align 1
  %arena.cur700 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str701 = call ptr @dva_arena_alloc(ptr %arena.cur700, i64 16)
  %str.tag.gen703 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift704 = shl i64 %str.tag.gen703, 48
  %str.tagged.len705 = or i64 %sum683, %str.tag.shift704
  store i64 %str.tagged.len705, ptr %concat.str701, align 8
  %str.build.data.gep706 = getelementptr inbounds { i64, ptr }, ptr %concat.str701, i32 0, i32 1
  store ptr %concat.buf695, ptr %str.build.data.gep706, align 8
  %ptr.to.i64707 = ptrtoint ptr %concat.str701 to i64
  %ram.pay708 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i64707, 1
  br label %common.ret

str_overflow_abort692:                            ; preds = %cat.sum.len685
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len719:                                 ; preds = %choice.exit660
  %b.need.grow724 = icmp slt i64 %builder.new.salloc.sroa.64.4, %sum717
  br i1 %b.need.grow724, label %b.grow2725, label %b.grow_done727

str_overflow_abort720:                            ; preds = %choice.exit660
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2725:                                       ; preds = %b.app.new.len719
  %b.cap2728 = mul i64 %builder.new.salloc.sroa.64.4, 2
  %b.cap.small729 = icmp slt i64 %b.cap2728, 16
  %b.cap.grow730 = select i1 %b.cap.small729, i64 16, i64 %b.cap2728
  %b.cap.need731 = icmp slt i64 %b.cap.grow730, %sum717
  %b.new.cap732 = select i1 %b.cap.need731, i64 %sum717, i64 %b.cap.grow730
  %b.new.buf.len2737 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap732, i64 1)
  %sum738 = extractvalue { i64, i1 } %b.new.buf.len2737, 0
  %ovf739 = extractvalue { i64, i1 } %b.new.buf.len2737, 1
  br i1 %ovf739, label %str_overflow_abort741, label %b.new.buf.len2740

b.grow_done727:                                   ; preds = %b.app.new.len719, %b.new.buf.len2740
  %builder.new.salloc.sroa.64.6 = phi i64 [ %b.new.cap732, %b.new.buf.len2740 ], [ %builder.new.salloc.sroa.64.4, %b.app.new.len719 ]
  %builder.new.salloc.sroa.32.6 = phi ptr [ %b.new.buf2744, %b.new.buf.len2740 ], [ %builder.new.salloc.sroa.32.4, %b.app.new.len719 ]
  %b.app.dst750 = getelementptr i8, ptr %builder.new.salloc.sroa.32.6, i64 %builder.new.salloc.sroa.0.1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst750, ptr align 1 @str.52, i64 14, i1 false)
  %b.app.nul751 = getelementptr i8, ptr %builder.new.salloc.sroa.32.6, i64 %sum717
  store i8 0, ptr %b.app.nul751, align 1
  %app.str.len755 = load i64, ptr %ret.ub.alloc635, align 8
  %app.str.len756 = and i64 %app.str.len755, 281474976710655
  %str.tag757 = lshr i64 %app.str.len755, 48
  %tag.immortal759 = icmp eq i64 %str.tag757, 0
  %active.gen760 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current761 = icmp eq i64 %str.tag757, %active.gen760
  %tag.fast.ok762 = or i1 %tag.immortal759, %tag.current761
  br i1 %tag.fast.ok762, label %str_ok758, label %tag.slow_check763

b.new.buf.len2740:                                ; preds = %b.grow2725
  %arena.cur743 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2744 = call ptr @dva_arena_alloc(ptr %arena.cur743, i64 %sum738)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2744, ptr align 1 %builder.new.salloc.sroa.32.4, i64 %builder.new.salloc.sroa.0.1, i1 false)
  %b.grow2.nul745 = getelementptr i8, ptr %b.new.buf2744, i64 %builder.new.salloc.sroa.0.1
  store i8 0, ptr %b.grow2.nul745, align 1
  br label %b.grow_done727

str_overflow_abort741:                            ; preds = %b.grow2725
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok758:                                        ; preds = %tag.slow_check763, %b.grow_done727
  %app.str.data764 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc635, i32 0, i32 1
  %app.str.data765 = load ptr, ptr %app.str.data764, align 8
  %b.app.new.len768 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum717, i64 %app.str.len756)
  %sum769 = extractvalue { i64, i1 } %b.app.new.len768, 0
  %ovf770 = extractvalue { i64, i1 } %b.app.new.len768, 1
  br i1 %ovf770, label %str_overflow_abort772, label %b.app.new.len771

tag.slow_check763:                                ; preds = %b.grow_done727
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag757)
  br label %str_ok758

b.app.new.len771:                                 ; preds = %str_ok758
  %b.need.grow776 = icmp slt i64 %builder.new.salloc.sroa.64.6, %sum769
  br i1 %b.need.grow776, label %b.grow2777, label %b.grow_done779

str_overflow_abort772:                            ; preds = %str_ok758
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2777:                                       ; preds = %b.app.new.len771
  %b.cap2780 = mul i64 %builder.new.salloc.sroa.64.6, 2
  %b.cap.small781 = icmp slt i64 %b.cap2780, 16
  %b.cap.grow782 = select i1 %b.cap.small781, i64 16, i64 %b.cap2780
  %b.cap.need783 = icmp slt i64 %b.cap.grow782, %sum769
  %b.new.cap784 = select i1 %b.cap.need783, i64 %sum769, i64 %b.cap.grow782
  %b.new.buf.len2789 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap784, i64 1)
  %sum790 = extractvalue { i64, i1 } %b.new.buf.len2789, 0
  %ovf791 = extractvalue { i64, i1 } %b.new.buf.len2789, 1
  br i1 %ovf791, label %str_overflow_abort793, label %b.new.buf.len2792

b.grow_done779:                                   ; preds = %b.app.new.len771, %b.new.buf.len2792
  %builder.new.salloc.sroa.64.7 = phi i64 [ %b.new.cap784, %b.new.buf.len2792 ], [ %builder.new.salloc.sroa.64.6, %b.app.new.len771 ]
  %builder.new.salloc.sroa.32.7 = phi ptr [ %b.new.buf2796, %b.new.buf.len2792 ], [ %builder.new.salloc.sroa.32.6, %b.app.new.len771 ]
  %b.app.dst802 = getelementptr i8, ptr %builder.new.salloc.sroa.32.7, i64 %sum717
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst802, ptr align 1 %app.str.data765, i64 %app.str.len756, i1 false)
  %b.app.nul803 = getelementptr i8, ptr %builder.new.salloc.sroa.32.7, i64 %sum769
  store i8 0, ptr %b.app.nul803, align 1
  %b.app.new.len810 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum769, i64 1)
  %sum811 = extractvalue { i64, i1 } %b.app.new.len810, 0
  %ovf812 = extractvalue { i64, i1 } %b.app.new.len810, 1
  br i1 %ovf812, label %str_overflow_abort814, label %b.app.new.len813

b.new.buf.len2792:                                ; preds = %b.grow2777
  %arena.cur795 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2796 = call ptr @dva_arena_alloc(ptr %arena.cur795, i64 %sum790)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2796, ptr align 1 %builder.new.salloc.sroa.32.6, i64 %sum717, i1 false)
  %b.grow2.nul797 = getelementptr i8, ptr %b.new.buf2796, i64 %sum717
  store i8 0, ptr %b.grow2.nul797, align 1
  br label %b.grow_done779

str_overflow_abort793:                            ; preds = %b.grow2777
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len813:                                 ; preds = %b.grow_done779
  %b.need.grow818 = icmp slt i64 %builder.new.salloc.sroa.64.7, %sum811
  br i1 %b.need.grow818, label %b.grow2819, label %b.grow_done821

str_overflow_abort814:                            ; preds = %b.grow_done779
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow2819:                                       ; preds = %b.app.new.len813
  %b.cap2822 = mul i64 %builder.new.salloc.sroa.64.7, 2
  %b.cap.small823 = icmp slt i64 %b.cap2822, 16
  %b.cap.grow824 = select i1 %b.cap.small823, i64 16, i64 %b.cap2822
  %b.cap.need825 = icmp slt i64 %b.cap.grow824, %sum811
  %b.new.cap826 = select i1 %b.cap.need825, i64 %sum811, i64 %b.cap.grow824
  %b.new.buf.len2831 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap826, i64 1)
  %sum832 = extractvalue { i64, i1 } %b.new.buf.len2831, 0
  %ovf833 = extractvalue { i64, i1 } %b.new.buf.len2831, 1
  br i1 %ovf833, label %str_overflow_abort835, label %b.new.buf.len2834

b.grow_done821:                                   ; preds = %b.app.new.len813, %b.new.buf.len2834
  %builder.new.salloc.sroa.64.8 = phi i64 [ %b.new.cap826, %b.new.buf.len2834 ], [ %builder.new.salloc.sroa.64.7, %b.app.new.len813 ]
  %builder.new.salloc.sroa.32.8 = phi ptr [ %b.new.buf2838, %b.new.buf.len2834 ], [ %builder.new.salloc.sroa.32.7, %b.app.new.len813 ]
  %b.app.dst844 = getelementptr i8, ptr %builder.new.salloc.sroa.32.8, i64 %sum769
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst844, ptr align 1 @str.14, i64 1, i1 false)
  %b.app.nul845 = getelementptr i8, ptr %builder.new.salloc.sroa.32.8, i64 %sum811
  store i8 0, ptr %b.app.nul845, align 1
  br label %choice.exit631

b.new.buf.len2834:                                ; preds = %b.grow2819
  %arena.cur837 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf2838 = call ptr @dva_arena_alloc(ptr %arena.cur837, i64 %sum832)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf2838, ptr align 1 %builder.new.salloc.sroa.32.7, i64 %sum769, i1 false)
  %b.grow2.nul839 = getelementptr i8, ptr %b.new.buf2838, i64 %sum769
  store i8 0, ptr %b.grow2.nul839, align 1
  br label %b.grow_done821

str_overflow_abort835:                            ; preds = %b.grow2819
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.exit852:                                   ; preds = %choice.exit421
  %cat.seg892 = load i64, ptr %"var.profile'.0", align 8
  %cat.seg893 = and i64 %cat.seg892, 281474976710655
  %str.tag894 = lshr i64 %cat.seg892, 48
  %tag.immortal896 = icmp eq i64 %str.tag894, 0
  %active.gen897 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current898 = icmp eq i64 %str.tag894, %active.gen897
  %tag.fast.ok899 = or i1 %tag.immortal896, %tag.current898
  br i1 %tag.fast.ok899, label %str_ok895, label %tag.slow_check900

a.after857:                                       ; preds = %choice.exit421
  %b.freeze.arena = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 1
  %b.freeze.nc = load i64, ptr %b.freeze.nc.gep, align 8
  %b.freeze.has.chunk = icmp sgt i64 %b.freeze.nc, 0
  br i1 %b.freeze.has.chunk, label %b.freeze.check, label %b.freeze.done

b.freeze.check:                                   ; preds = %a.after857
  %b.freeze.last.idx = sub i64 %b.freeze.nc, 1
  %b.freeze.chunks.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 3
  %b.freeze.chunk.slot = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep, i64 0, i64 %b.freeze.last.idx
  %b.freeze.last.chunk = load ptr, ptr %b.freeze.chunk.slot, align 8
  %b.freeze.off.gep = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena, i32 0, i32 2
  %b.freeze.off = load i64, ptr %b.freeze.off.gep, align 8
  %b.freeze.bump = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.off
  %b.freeze.cap = load i64, ptr %b.freeze.arena, align 8
  %b.freeze.chunk.end = getelementptr i8, ptr %b.freeze.last.chunk, i64 %b.freeze.cap
  %b.freeze.ge.chunk = icmp uge ptr %builder.new.salloc.sroa.32.0, %b.freeze.last.chunk
  %b.freeze.lt.end = icmp ult ptr %builder.new.salloc.sroa.32.0, %b.freeze.chunk.end
  %b.freeze.in.chunk = and i1 %b.freeze.ge.chunk, %b.freeze.lt.end
  %b.freeze.ge.bump = icmp uge ptr %builder.new.salloc.sroa.32.0, %b.freeze.bump
  %b.freeze.reaped = and i1 %b.freeze.in.chunk, %b.freeze.ge.bump
  br i1 %b.freeze.reaped, label %b.freeze.copy, label %b.freeze.done

b.freeze.copy:                                    ; preds = %b.freeze.check
  %b.freeze.alen = add i64 %builder.new.salloc.sroa.0.0, 1
  %b.freeze.fresh = call ptr @dva_arena_alloc(ptr %b.freeze.arena, i64 %b.freeze.alen)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh, ptr align 1 %builder.new.salloc.sroa.32.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.freeze.nul = getelementptr i8, ptr %b.freeze.fresh, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.freeze.nul, align 1
  br label %b.freeze.done

b.freeze.done:                                    ; preds = %b.freeze.copy, %b.freeze.check, %a.after857
  %b.freeze.data870 = phi ptr [ %builder.new.salloc.sroa.32.0, %a.after857 ], [ %builder.new.salloc.sroa.32.0, %b.freeze.check ], [ %b.freeze.fresh, %b.freeze.copy ]
  %arena.cur871 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze = call ptr @dva_arena_alloc(ptr %arena.cur871, i64 16)
  %str.tag.gen873 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift874 = shl i64 %str.tag.gen873, 48
  %str.tagged.len875 = or i64 %builder.new.salloc.sroa.0.0, %str.tag.shift874
  store i64 %str.tagged.len875, ptr %builder.freeze, align 8
  %str.build.data.gep876 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze, i32 0, i32 1
  store ptr %b.freeze.data870, ptr %str.build.data.gep876, align 8
  %arena.cur878 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc879 = call ptr @dva_arena_alloc(ptr %arena.cur878, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %var.flags.5, ptr %rec.alloc879, align 8
  %rec.fld881 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc879, i32 0, i32 1
  store ptr %builder.freeze, ptr %rec.fld881, align 8
  %rec.fld882 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc879, i32 0, i32 2
  store ptr @str.1.struct, ptr %rec.fld882, align 8
  %rec.fld883 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc879, i32 0, i32 3
  store i1 false, ptr %rec.fld883, align 1
  %rec.fld884 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc879, i32 0, i32 4
  store i1 %"var.cacheable'.0", ptr %rec.fld884, align 1
  %ptr.to.i64885 = ptrtoint ptr %rec.alloc879 to i64
  %ram.pay886 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i64885, 1
  br label %common.ret

str_ok895:                                        ; preds = %tag.slow_check900, %choice.exit852
  %cat.seg901 = getelementptr inbounds { i64, ptr }, ptr %"var.profile'.0", i32 0, i32 1
  %cat.seg902 = load ptr, ptr %cat.seg901, align 8
  %cat.sum.len903 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 14, i64 %cat.seg893)
  %sum904 = extractvalue { i64, i1 } %cat.sum.len903, 0
  %ovf905 = extractvalue { i64, i1 } %cat.sum.len903, 1
  br i1 %ovf905, label %str_overflow_abort907, label %cat.sum.len906

tag.slow_check900:                                ; preds = %choice.exit852
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag894)
  br label %str_ok895

cat.sum.len906:                                   ; preds = %str_ok895
  %concat.tot.len909 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum904, i64 1)
  %sum910 = extractvalue { i64, i1 } %concat.tot.len909, 0
  %ovf911 = extractvalue { i64, i1 } %concat.tot.len909, 1
  br i1 %ovf911, label %str_overflow_abort913, label %concat.tot.len912

str_overflow_abort907:                            ; preds = %str_ok895
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len912:                                ; preds = %cat.sum.len906
  %arena.cur915 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf916 = call ptr @dva_arena_alloc(ptr %arena.cur915, i64 %sum910)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf916, ptr align 1 @str.15, i64 14, i1 false)
  %cat.dst918 = getelementptr i8, ptr %concat.buf916, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst918, ptr align 1 %cat.seg902, i64 %cat.seg893, i1 false)
  %concat.nul919 = getelementptr i8, ptr %concat.buf916, i64 %sum904
  store i8 0, ptr %concat.nul919, align 1
  %arena.cur920 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str921 = call ptr @dva_arena_alloc(ptr %arena.cur920, i64 16)
  %str.tag.gen923 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift924 = shl i64 %str.tag.gen923, 48
  %str.tagged.len925 = or i64 %sum904, %str.tag.shift924
  store i64 %str.tagged.len925, ptr %concat.str921, align 8
  %str.build.data.gep926 = getelementptr inbounds { i64, ptr }, ptr %concat.str921, i32 0, i32 1
  store ptr %concat.buf916, ptr %str.build.data.gep926, align 8
  %eq.lhs.len928 = load i64, ptr %"var.mode'.0", align 8
  %eq.lhs.len929 = and i64 %eq.lhs.len928, 281474976710655
  %str.tag930 = lshr i64 %eq.lhs.len928, 48
  %tag.immortal932 = icmp eq i64 %str.tag930, 0
  %active.gen933 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current934 = icmp eq i64 %str.tag930, %active.gen933
  %tag.fast.ok935 = or i1 %tag.immortal932, %tag.current934
  br i1 %tag.fast.ok935, label %str_ok931, label %tag.slow_check936

str_overflow_abort913:                            ; preds = %cat.sum.len906
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok931:                                        ; preds = %tag.slow_check936, %concat.tot.len912
  %eq.rhs.len938 = load i64, ptr %concat.str921, align 8
  %eq.rhs.len939 = and i64 %eq.rhs.len938, 281474976710655
  %str.tag940 = lshr i64 %eq.rhs.len938, 48
  %tag.immortal942 = icmp eq i64 %str.tag940, 0
  %active.gen943 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current944 = icmp eq i64 %str.tag940, %active.gen943
  %tag.fast.ok945 = or i1 %tag.immortal942, %tag.current944
  br i1 %tag.fast.ok945, label %str_ok941, label %tag.slow_check946

tag.slow_check936:                                ; preds = %concat.tot.len912
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag930)
  br label %str_ok931

str_ok941:                                        ; preds = %tag.slow_check946, %str_ok931
  %eq.len947 = icmp eq i64 %eq.lhs.len929, %eq.rhs.len939
  br i1 %eq.len947, label %str.eq.then948, label %str.eq.merge950

tag.slow_check946:                                ; preds = %str_ok931
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag940)
  br label %str_ok941

str.eq.then948:                                   ; preds = %str_ok941
  %eq.lhs.data951 = getelementptr inbounds { i64, ptr }, ptr %"var.mode'.0", i32 0, i32 1
  %eq.lhs.data952 = load ptr, ptr %eq.lhs.data951, align 8
  %eq.rhs.data954 = load ptr, ptr %str.build.data.gep926, align 8
  %eq.memcmp955 = call i32 @memcmp(ptr %eq.lhs.data952, ptr %eq.rhs.data954, i64 %eq.lhs.len929)
  %eq.cmp.zero956 = icmp eq i32 %eq.memcmp955, 0
  br label %str.eq.merge950

str.eq.merge950:                                  ; preds = %str_ok941, %str.eq.then948
  %str.eq.result957 = phi i1 [ %eq.cmp.zero956, %str.eq.then948 ], [ false, %str_ok941 ]
  br i1 %str.eq.result957, label %and.258.then, label %and.258.exit

and.258.then:                                     ; preds = %str.eq.merge950
  %call.res959 = call i1 @"fs::is_dir"(ptr %"var.profile'.0")
  br label %and.258.exit

and.258.exit:                                     ; preds = %str.eq.merge950, %and.258.then
  %and.258.phi = phi i1 [ %call.res959, %and.258.then ], [ %str.eq.result957, %str.eq.merge950 ]
  br i1 %and.258.phi, label %choice.then960, label %choice.exit962

choice.then960:                                   ; preds = %and.258.exit
  %cat.seg965 = load i64, ptr %"var.profile'.0", align 8
  %cat.seg966 = and i64 %cat.seg965, 281474976710655
  %str.tag967 = lshr i64 %cat.seg965, 48
  %tag.immortal969 = icmp eq i64 %str.tag967, 0
  %active.gen970 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current971 = icmp eq i64 %str.tag967, %active.gen970
  %tag.fast.ok972 = or i1 %tag.immortal969, %tag.current971
  br i1 %tag.fast.ok972, label %str_ok968, label %tag.slow_check973

choice.exit962:                                   ; preds = %and.258.exit, %concat.tot.len986
  %choice.res1003 = phi ptr [ %concat.str996, %concat.tot.len986 ], [ %"var.profile'.0", %and.258.exit ]
  %call.res1005 = call i1 @"fs::is_file"(ptr %choice.res1003)
  %nottmp1006 = xor i1 %call.res1005, true
  br i1 %nottmp1006, label %choice.then1007, label %choice.exit1008

str_ok968:                                        ; preds = %tag.slow_check973, %choice.then960
  %cat.seg975 = load ptr, ptr %cat.seg901, align 8
  %cat.sum.len977 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.seg966, i64 17)
  %sum978 = extractvalue { i64, i1 } %cat.sum.len977, 0
  %ovf979 = extractvalue { i64, i1 } %cat.sum.len977, 1
  br i1 %ovf979, label %str_overflow_abort981, label %cat.sum.len980

tag.slow_check973:                                ; preds = %choice.then960
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag967)
  br label %str_ok968

cat.sum.len980:                                   ; preds = %str_ok968
  %concat.tot.len983 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum978, i64 1)
  %sum984 = extractvalue { i64, i1 } %concat.tot.len983, 0
  %ovf985 = extractvalue { i64, i1 } %concat.tot.len983, 1
  br i1 %ovf985, label %str_overflow_abort987, label %concat.tot.len986

str_overflow_abort981:                            ; preds = %str_ok968
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len986:                                ; preds = %cat.sum.len980
  %arena.cur989 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf990 = call ptr @dva_arena_alloc(ptr %arena.cur989, i64 %sum984)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf990, ptr align 1 %cat.seg975, i64 %cat.seg966, i1 false)
  %cat.dst993 = getelementptr i8, ptr %concat.buf990, i64 %cat.seg966
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst993, ptr align 1 @str.53, i64 17, i1 false)
  %concat.nul994 = getelementptr i8, ptr %concat.buf990, i64 %sum978
  store i8 0, ptr %concat.nul994, align 1
  %arena.cur995 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str996 = call ptr @dva_arena_alloc(ptr %arena.cur995, i64 16)
  %str.tag.gen998 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift999 = shl i64 %str.tag.gen998, 48
  %str.tagged.len1000 = or i64 %sum978, %str.tag.shift999
  store i64 %str.tagged.len1000, ptr %concat.str996, align 8
  %str.build.data.gep1001 = getelementptr inbounds { i64, ptr }, ptr %concat.str996, i32 0, i32 1
  store ptr %concat.buf990, ptr %str.build.data.gep1001, align 8
  br label %choice.exit962

str_overflow_abort987:                            ; preds = %cat.sum.len980
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then1007:                                  ; preds = %choice.exit962
  %cat.seg1012 = load i64, ptr %choice.res1003, align 8
  %cat.seg1013 = and i64 %cat.seg1012, 281474976710655
  %str.tag1014 = lshr i64 %cat.seg1012, 48
  %tag.immortal1016 = icmp eq i64 %str.tag1014, 0
  %active.gen1017 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1018 = icmp eq i64 %str.tag1014, %active.gen1017
  %tag.fast.ok1019 = or i1 %tag.immortal1016, %tag.current1018
  br i1 %tag.fast.ok1019, label %str_ok1015, label %tag.slow_check1020

choice.exit1008:                                  ; preds = %choice.exit962
  %call.res1059 = call { i64, ptr } @"backend_opt::#temp_file"()
  %arena.cur1060 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1061 = call ptr @dva_arena_alloc(ptr %arena.cur1060, i64 16)
  store { i64, ptr } %call.res1059, ptr %ret.ub.alloc1061, align 8
  %eq.lhs.len1064 = load i64, ptr %ret.ub.alloc1061, align 8
  %eq.lhs.len1065 = and i64 %eq.lhs.len1064, 281474976710655
  %str.tag1066 = lshr i64 %eq.lhs.len1064, 48
  %tag.immortal1068 = icmp eq i64 %str.tag1066, 0
  %active.gen1069 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1070 = icmp eq i64 %str.tag1066, %active.gen1069
  %tag.fast.ok1071 = or i1 %tag.immortal1068, %tag.current1070
  br i1 %tag.fast.ok1071, label %str_ok1067, label %tag.slow_check1072

str_ok1015:                                       ; preds = %tag.slow_check1020, %choice.then1007
  %cat.seg1021 = getelementptr inbounds { i64, ptr }, ptr %choice.res1003, i32 0, i32 1
  %cat.seg1022 = load ptr, ptr %cat.seg1021, align 8
  %cat.sum.len1024 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 9, i64 %cat.seg1013)
  %sum1025 = extractvalue { i64, i1 } %cat.sum.len1024, 0
  %ovf1026 = extractvalue { i64, i1 } %cat.sum.len1024, 1
  br i1 %ovf1026, label %str_overflow_abort1028, label %cat.sum.len1027

tag.slow_check1020:                               ; preds = %choice.then1007
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1014)
  br label %str_ok1015

cat.sum.len1027:                                  ; preds = %str_ok1015
  %cat.sum.len1030 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1025, i64 74)
  %sum1031 = extractvalue { i64, i1 } %cat.sum.len1030, 0
  %ovf1032 = extractvalue { i64, i1 } %cat.sum.len1030, 1
  br i1 %ovf1032, label %str_overflow_abort1034, label %cat.sum.len1033

str_overflow_abort1028:                           ; preds = %str_ok1015
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1033:                                  ; preds = %cat.sum.len1027
  %concat.tot.len1036 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1031, i64 1)
  %sum1037 = extractvalue { i64, i1 } %concat.tot.len1036, 0
  %ovf1038 = extractvalue { i64, i1 } %concat.tot.len1036, 1
  br i1 %ovf1038, label %str_overflow_abort1040, label %concat.tot.len1039

str_overflow_abort1034:                           ; preds = %cat.sum.len1027
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1039:                               ; preds = %cat.sum.len1033
  %arena.cur1042 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1043 = call ptr @dva_arena_alloc(ptr %arena.cur1042, i64 %sum1037)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1043, ptr align 1 @str.54, i64 9, i1 false)
  %cat.dst1045 = getelementptr i8, ptr %concat.buf1043, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1045, ptr align 1 %cat.seg1022, i64 %cat.seg1013, i1 false)
  %cat.off1046 = add i64 9, %cat.seg1013
  %cat.dst1047 = getelementptr i8, ptr %concat.buf1043, i64 %cat.off1046
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1047, ptr align 1 @str.55, i64 74, i1 false)
  %concat.nul1048 = getelementptr i8, ptr %concat.buf1043, i64 %sum1031
  store i8 0, ptr %concat.nul1048, align 1
  %arena.cur1049 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1050 = call ptr @dva_arena_alloc(ptr %arena.cur1049, i64 16)
  %str.tag.gen1052 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1053 = shl i64 %str.tag.gen1052, 48
  %str.tagged.len1054 = or i64 %sum1031, %str.tag.shift1053
  store i64 %str.tagged.len1054, ptr %concat.str1050, align 8
  %str.build.data.gep1055 = getelementptr inbounds { i64, ptr }, ptr %concat.str1050, i32 0, i32 1
  store ptr %concat.buf1043, ptr %str.build.data.gep1055, align 8
  %ptr.to.i641056 = ptrtoint ptr %concat.str1050 to i64
  %ram.pay1057 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i641056, 1
  br label %common.ret

str_overflow_abort1040:                           ; preds = %cat.sum.len1033
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok1067:                                       ; preds = %tag.slow_check1072, %choice.exit1008
  %eq.len1075 = icmp eq i64 %eq.lhs.len1065, 0
  br i1 %eq.len1075, label %str.eq.then1076, label %choice.exit1086

tag.slow_check1072:                               ; preds = %choice.exit1008
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1066)
  br label %str_ok1067

str.eq.then1076:                                  ; preds = %str_ok1067
  %eq.lhs.data1079 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1061, i32 0, i32 1
  %eq.lhs.data1080 = load ptr, ptr %eq.lhs.data1079, align 8
  %eq.memcmp1082 = call i32 @memcmp(ptr %eq.lhs.data1080, ptr @str.1, i64 %eq.lhs.len1065)
  %eq.cmp.zero1083 = icmp eq i32 %eq.memcmp1082, 0
  br i1 %eq.cmp.zero1083, label %common.ret, label %choice.exit1086

choice.exit1086:                                  ; preds = %str_ok1067, %str.eq.then1076
  %call.res1090 = call { i64, ptr } @"pkg::sq"(ptr %choice.res1003)
  %arena.cur1091 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1092 = call ptr @dva_arena_alloc(ptr %arena.cur1091, i64 16)
  store { i64, ptr } %call.res1090, ptr %ret.ub.alloc1092, align 8
  %cat.seg1094 = load i64, ptr %ret.ub.alloc1092, align 8
  %cat.seg1095 = and i64 %cat.seg1094, 281474976710655
  %str.tag1096 = lshr i64 %cat.seg1094, 48
  %tag.immortal1098 = icmp eq i64 %str.tag1096, 0
  %active.gen1099 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1100 = icmp eq i64 %str.tag1096, %active.gen1099
  %tag.fast.ok1101 = or i1 %tag.immortal1098, %tag.current1100
  br i1 %tag.fast.ok1101, label %str_ok1097, label %tag.slow_check1102

str_ok1097:                                       ; preds = %tag.slow_check1102, %choice.exit1086
  %cat.seg1103 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1092, i32 0, i32 1
  %cat.seg1104 = load ptr, ptr %cat.seg1103, align 8
  %call.res1107 = call { i64, ptr } @"pkg::sq"(ptr %ret.ub.alloc1061)
  %arena.cur1108 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1109 = call ptr @dva_arena_alloc(ptr %arena.cur1108, i64 16)
  store { i64, ptr } %call.res1107, ptr %ret.ub.alloc1109, align 8
  %cat.seg1111 = load i64, ptr %ret.ub.alloc1109, align 8
  %cat.seg1112 = and i64 %cat.seg1111, 281474976710655
  %str.tag1113 = lshr i64 %cat.seg1111, 48
  %tag.immortal1115 = icmp eq i64 %str.tag1113, 0
  %active.gen1116 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1117 = icmp eq i64 %str.tag1113, %active.gen1116
  %tag.fast.ok1118 = or i1 %tag.immortal1115, %tag.current1117
  br i1 %tag.fast.ok1118, label %str_ok1114, label %tag.slow_check1119

tag.slow_check1102:                               ; preds = %choice.exit1086
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1096)
  br label %str_ok1097

str_ok1114:                                       ; preds = %tag.slow_check1119, %str_ok1097
  %cat.seg1120 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1109, i32 0, i32 1
  %cat.seg1121 = load ptr, ptr %cat.seg1120, align 8
  %cat.sum.len1122 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 6, i64 %cat.seg1095)
  %sum1123 = extractvalue { i64, i1 } %cat.sum.len1122, 0
  %ovf1124 = extractvalue { i64, i1 } %cat.sum.len1122, 1
  br i1 %ovf1124, label %str_overflow_abort1126, label %cat.sum.len1125

tag.slow_check1119:                               ; preds = %str_ok1097
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1113)
  br label %str_ok1114

cat.sum.len1125:                                  ; preds = %str_ok1114
  %cat.sum.len1128 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1123, i64 1)
  %sum1129 = extractvalue { i64, i1 } %cat.sum.len1128, 0
  %ovf1130 = extractvalue { i64, i1 } %cat.sum.len1128, 1
  br i1 %ovf1130, label %str_overflow_abort1132, label %cat.sum.len1131

str_overflow_abort1126:                           ; preds = %str_ok1114
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1131:                                  ; preds = %cat.sum.len1125
  %cat.sum.len1134 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1129, i64 %cat.seg1112)
  %sum1135 = extractvalue { i64, i1 } %cat.sum.len1134, 0
  %ovf1136 = extractvalue { i64, i1 } %cat.sum.len1134, 1
  br i1 %ovf1136, label %str_overflow_abort1138, label %cat.sum.len1137

str_overflow_abort1132:                           ; preds = %cat.sum.len1125
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1137:                                  ; preds = %cat.sum.len1131
  %concat.tot.len1140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1135, i64 1)
  %sum1141 = extractvalue { i64, i1 } %concat.tot.len1140, 0
  %ovf1142 = extractvalue { i64, i1 } %concat.tot.len1140, 1
  br i1 %ovf1142, label %str_overflow_abort1144, label %concat.tot.len1143

str_overflow_abort1138:                           ; preds = %cat.sum.len1131
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1143:                               ; preds = %cat.sum.len1137
  %arena.cur1146 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1147 = call ptr @dva_arena_alloc(ptr %arena.cur1146, i64 %sum1141)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1147, ptr align 1 @str.57, i64 6, i1 false)
  %cat.dst1149 = getelementptr i8, ptr %concat.buf1147, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1149, ptr align 1 %cat.seg1104, i64 %cat.seg1095, i1 false)
  %cat.off1150 = add i64 6, %cat.seg1095
  %cat.dst1151 = getelementptr i8, ptr %concat.buf1147, i64 %cat.off1150
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1151, ptr align 1 @str.9, i64 1, i1 false)
  %cat.off1152 = add i64 %cat.off1150, 1
  %cat.dst1153 = getelementptr i8, ptr %concat.buf1147, i64 %cat.off1152
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1153, ptr align 1 %cat.seg1121, i64 %cat.seg1112, i1 false)
  %concat.nul1154 = getelementptr i8, ptr %concat.buf1147, i64 %sum1135
  store i8 0, ptr %concat.nul1154, align 1
  %arena.cur1155 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1156 = call ptr @dva_arena_alloc(ptr %arena.cur1155, i64 16)
  %str.tag.gen1158 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1159 = shl i64 %str.tag.gen1158, 48
  %str.tagged.len1160 = or i64 %sum1135, %str.tag.shift1159
  store i64 %str.tagged.len1160, ptr %concat.str1156, align 8
  %str.build.data.gep1161 = getelementptr inbounds { i64, ptr }, ptr %concat.str1156, i32 0, i32 1
  store ptr %concat.buf1147, ptr %str.build.data.gep1161, align 8
  %call.res1162 = call i64 @"pkg::sh"(ptr %concat.str1156)
  %cmptmp1163 = icmp eq i64 %call.res1162, 0
  br i1 %cmptmp1163, label %choice.then1165, label %choice.exit1167

str_overflow_abort1144:                           ; preds = %cat.sum.len1137
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.then1165:                                  ; preds = %concat.tot.len1143
  %call.res1169 = call { i64, ptr } @"backend_opt::#digest"(ptr %ret.ub.alloc1061)
  %arena.cur1170 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc1171 = call ptr @dva_arena_alloc(ptr %arena.cur1170, i64 16)
  store { i64, ptr } %call.res1169, ptr %ret.ub.alloc1171, align 8
  br label %choice.exit1167

choice.exit1167:                                  ; preds = %concat.tot.len1143, %choice.then1165
  %choice.res1172 = phi ptr [ %ret.ub.alloc1171, %choice.then1165 ], [ @str.1.struct, %concat.tot.len1143 ]
  %eq.lhs.len1175 = load i64, ptr %choice.res1172, align 8
  %eq.lhs.len1176 = and i64 %eq.lhs.len1175, 281474976710655
  %str.tag1177 = lshr i64 %eq.lhs.len1175, 48
  %tag.immortal1179 = icmp eq i64 %str.tag1177, 0
  %active.gen1180 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1181 = icmp eq i64 %str.tag1177, %active.gen1180
  %tag.fast.ok1182 = or i1 %tag.immortal1179, %tag.current1181
  br i1 %tag.fast.ok1182, label %str_ok1178, label %tag.slow_check1183

str_ok1178:                                       ; preds = %tag.slow_check1183, %choice.exit1167
  %eq.len1186 = icmp eq i64 %eq.lhs.len1176, 0
  br i1 %eq.len1186, label %str.eq.then1187, label %choice.exit1197

tag.slow_check1183:                               ; preds = %choice.exit1167
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1177)
  br label %str_ok1178

str.eq.then1187:                                  ; preds = %str_ok1178
  %eq.lhs.data1190 = getelementptr inbounds { i64, ptr }, ptr %choice.res1172, i32 0, i32 1
  %eq.lhs.data1191 = load ptr, ptr %eq.lhs.data1190, align 8
  %eq.memcmp1193 = call i32 @memcmp(ptr %eq.lhs.data1191, ptr @str.1, i64 %eq.lhs.len1176)
  %eq.cmp.zero1194 = icmp eq i32 %eq.memcmp1193, 0
  br i1 %eq.cmp.zero1194, label %choice.then1196, label %choice.exit1197

choice.then1196:                                  ; preds = %str.eq.then1187
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1061, i32 0, i32 1
  %arg.str.ptr1199 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr1201 = load i64, ptr %ret.ub.alloc1061, align 8
  %arg.str.ptr1202 = and i64 %arg.str.ptr1201, 281474976710655
  %str.tag1203 = lshr i64 %arg.str.ptr1201, 48
  %tag.immortal1205 = icmp eq i64 %str.tag1203, 0
  %active.gen1206 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1207 = icmp eq i64 %str.tag1203, %active.gen1206
  %tag.fast.ok1208 = or i1 %tag.immortal1205, %tag.current1207
  br i1 %tag.fast.ok1208, label %str_ok1204, label %tag.slow_check1209

choice.exit1197:                                  ; preds = %str_ok1178, %str.eq.then1187
  %b.app.new.len1275 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %builder.new.salloc.sroa.0.0, i64 8)
  %sum1276 = extractvalue { i64, i1 } %b.app.new.len1275, 0
  %ovf1277 = extractvalue { i64, i1 } %b.app.new.len1275, 1
  br i1 %ovf1277, label %str_overflow_abort1279, label %b.app.new.len1278

str_ok1204:                                       ; preds = %tag.slow_check1209, %choice.then1196
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr1199, i64 %arg.str.ptr1202
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

tag.slow_check1209:                               ; preds = %choice.then1196
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1203)
  br label %str_ok1204

nulcopy:                                          ; preds = %str_ok1204
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr1202, i64 1)
  %sum1211 = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf1212 = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf1212, label %str_overflow_abort1214, label %nulcopy.len1213

nulmerge:                                         ; preds = %str_ok1204, %nulcopy.len1213
  %arg.str.ptr1217 = phi ptr [ %nulcopy.buf, %nulcopy.len1213 ], [ %arg.str.ptr1199, %str_ok1204 ]
  %call.res1218 = call i64 @unlink(ptr %arg.str.ptr1217)
  %cat.seg1222 = load i64, ptr %choice.res1003, align 8
  %cat.seg1223 = and i64 %cat.seg1222, 281474976710655
  %str.tag1224 = lshr i64 %cat.seg1222, 48
  %tag.immortal1226 = icmp eq i64 %str.tag1224, 0
  %active.gen1227 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1228 = icmp eq i64 %str.tag1224, %active.gen1227
  %tag.fast.ok1229 = or i1 %tag.immortal1226, %tag.current1228
  br i1 %tag.fast.ok1229, label %str_ok1225, label %tag.slow_check1230

nulcopy.len1213:                                  ; preds = %nulcopy
  %arena.cur1216 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur1216, i64 %sum1211)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr1199, i64 %arg.str.ptr1202, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr1202
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort1214:                           ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok1225:                                       ; preds = %tag.slow_check1230, %nulmerge
  %cat.seg1231 = getelementptr inbounds { i64, ptr }, ptr %choice.res1003, i32 0, i32 1
  %cat.seg1232 = load ptr, ptr %cat.seg1231, align 8
  %cat.sum.len1234 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 24, i64 %cat.seg1223)
  %sum1235 = extractvalue { i64, i1 } %cat.sum.len1234, 0
  %ovf1236 = extractvalue { i64, i1 } %cat.sum.len1234, 1
  br i1 %ovf1236, label %str_overflow_abort1238, label %cat.sum.len1237

tag.slow_check1230:                               ; preds = %nulmerge
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1224)
  br label %str_ok1225

cat.sum.len1237:                                  ; preds = %str_ok1225
  %cat.sum.len1240 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1235, i64 2)
  %sum1241 = extractvalue { i64, i1 } %cat.sum.len1240, 0
  %ovf1242 = extractvalue { i64, i1 } %cat.sum.len1240, 1
  br i1 %ovf1242, label %str_overflow_abort1244, label %cat.sum.len1243

str_overflow_abort1238:                           ; preds = %str_ok1225
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len1243:                                  ; preds = %cat.sum.len1237
  %concat.tot.len1246 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1241, i64 1)
  %sum1247 = extractvalue { i64, i1 } %concat.tot.len1246, 0
  %ovf1248 = extractvalue { i64, i1 } %concat.tot.len1246, 1
  br i1 %ovf1248, label %str_overflow_abort1250, label %concat.tot.len1249

str_overflow_abort1244:                           ; preds = %cat.sum.len1237
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1249:                               ; preds = %cat.sum.len1243
  %arena.cur1252 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1253 = call ptr @dva_arena_alloc(ptr %arena.cur1252, i64 %sum1247)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1253, ptr align 1 @str.58, i64 24, i1 false)
  %cat.dst1255 = getelementptr i8, ptr %concat.buf1253, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1255, ptr align 1 %cat.seg1232, i64 %cat.seg1223, i1 false)
  %cat.off1256 = add i64 24, %cat.seg1223
  %cat.dst1257 = getelementptr i8, ptr %concat.buf1253, i64 %cat.off1256
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1257, ptr align 1 @str.51, i64 2, i1 false)
  %concat.nul1258 = getelementptr i8, ptr %concat.buf1253, i64 %sum1241
  store i8 0, ptr %concat.nul1258, align 1
  %arena.cur1259 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1260 = call ptr @dva_arena_alloc(ptr %arena.cur1259, i64 16)
  %str.tag.gen1262 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1263 = shl i64 %str.tag.gen1262, 48
  %str.tagged.len1264 = or i64 %sum1241, %str.tag.shift1263
  store i64 %str.tagged.len1264, ptr %concat.str1260, align 8
  %str.build.data.gep1265 = getelementptr inbounds { i64, ptr }, ptr %concat.str1260, i32 0, i32 1
  store ptr %concat.buf1253, ptr %str.build.data.gep1265, align 8
  %ptr.to.i641266 = ptrtoint ptr %concat.str1260 to i64
  %ram.pay1267 = insertvalue { i1, i64 } zeroinitializer, i64 %ptr.to.i641266, 1
  br label %common.ret

str_overflow_abort1250:                           ; preds = %cat.sum.len1243
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len1278:                                ; preds = %choice.exit1197
  %b.need.grow1283 = icmp slt i64 %builder.new.salloc.sroa.64.0, %sum1276
  br i1 %b.need.grow1283, label %b.grow21284, label %b.grow_done1286

str_overflow_abort1279:                           ; preds = %choice.exit1197
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow21284:                                      ; preds = %b.app.new.len1278
  %b.cap21287 = mul i64 %builder.new.salloc.sroa.64.0, 2
  %b.cap.small1288 = icmp slt i64 %b.cap21287, 16
  %b.cap.grow1289 = select i1 %b.cap.small1288, i64 16, i64 %b.cap21287
  %b.cap.need1290 = icmp slt i64 %b.cap.grow1289, %sum1276
  %b.new.cap1291 = select i1 %b.cap.need1290, i64 %sum1276, i64 %b.cap.grow1289
  %b.new.buf.len21296 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1291, i64 1)
  %sum1297 = extractvalue { i64, i1 } %b.new.buf.len21296, 0
  %ovf1298 = extractvalue { i64, i1 } %b.new.buf.len21296, 1
  br i1 %ovf1298, label %str_overflow_abort1300, label %b.new.buf.len21299

b.grow_done1286:                                  ; preds = %b.app.new.len1278, %b.new.buf.len21299
  %builder.new.salloc.sroa.64.9 = phi i64 [ %b.new.cap1291, %b.new.buf.len21299 ], [ %builder.new.salloc.sroa.64.0, %b.app.new.len1278 ]
  %builder.new.salloc.sroa.32.9 = phi ptr [ %b.new.buf21303, %b.new.buf.len21299 ], [ %builder.new.salloc.sroa.32.0, %b.app.new.len1278 ]
  %b.app.dst1309 = getelementptr i8, ptr %builder.new.salloc.sroa.32.9, i64 %builder.new.salloc.sroa.0.0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1309, ptr align 1 @str.59, i64 8, i1 false)
  %b.app.nul1310 = getelementptr i8, ptr %builder.new.salloc.sroa.32.9, i64 %sum1276
  store i8 0, ptr %b.app.nul1310, align 1
  %app.str.len1314 = load i64, ptr %choice.res1172, align 8
  %app.str.len1315 = and i64 %app.str.len1314, 281474976710655
  %str.tag1316 = lshr i64 %app.str.len1314, 48
  %tag.immortal1318 = icmp eq i64 %str.tag1316, 0
  %active.gen1319 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1320 = icmp eq i64 %str.tag1316, %active.gen1319
  %tag.fast.ok1321 = or i1 %tag.immortal1318, %tag.current1320
  br i1 %tag.fast.ok1321, label %str_ok1317, label %tag.slow_check1322

b.new.buf.len21299:                               ; preds = %b.grow21284
  %arena.cur1302 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21303 = call ptr @dva_arena_alloc(ptr %arena.cur1302, i64 %sum1297)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21303, ptr align 1 %builder.new.salloc.sroa.32.0, i64 %builder.new.salloc.sroa.0.0, i1 false)
  %b.grow2.nul1304 = getelementptr i8, ptr %b.new.buf21303, i64 %builder.new.salloc.sroa.0.0
  store i8 0, ptr %b.grow2.nul1304, align 1
  br label %b.grow_done1286

str_overflow_abort1300:                           ; preds = %b.grow21284
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok1317:                                       ; preds = %tag.slow_check1322, %b.grow_done1286
  %app.str.data1323 = getelementptr inbounds { i64, ptr }, ptr %choice.res1172, i32 0, i32 1
  %app.str.data1324 = load ptr, ptr %app.str.data1323, align 8
  %b.app.new.len1327 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1276, i64 %app.str.len1315)
  %sum1328 = extractvalue { i64, i1 } %b.app.new.len1327, 0
  %ovf1329 = extractvalue { i64, i1 } %b.app.new.len1327, 1
  br i1 %ovf1329, label %str_overflow_abort1331, label %b.app.new.len1330

tag.slow_check1322:                               ; preds = %b.grow_done1286
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1316)
  br label %str_ok1317

b.app.new.len1330:                                ; preds = %str_ok1317
  %b.need.grow1335 = icmp slt i64 %builder.new.salloc.sroa.64.9, %sum1328
  br i1 %b.need.grow1335, label %b.grow21336, label %b.grow_done1338

str_overflow_abort1331:                           ; preds = %str_ok1317
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow21336:                                      ; preds = %b.app.new.len1330
  %b.cap21339 = mul i64 %builder.new.salloc.sroa.64.9, 2
  %b.cap.small1340 = icmp slt i64 %b.cap21339, 16
  %b.cap.grow1341 = select i1 %b.cap.small1340, i64 16, i64 %b.cap21339
  %b.cap.need1342 = icmp slt i64 %b.cap.grow1341, %sum1328
  %b.new.cap1343 = select i1 %b.cap.need1342, i64 %sum1328, i64 %b.cap.grow1341
  %b.new.buf.len21348 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1343, i64 1)
  %sum1349 = extractvalue { i64, i1 } %b.new.buf.len21348, 0
  %ovf1350 = extractvalue { i64, i1 } %b.new.buf.len21348, 1
  br i1 %ovf1350, label %str_overflow_abort1352, label %b.new.buf.len21351

b.grow_done1338:                                  ; preds = %b.app.new.len1330, %b.new.buf.len21351
  %builder.new.salloc.sroa.64.10 = phi i64 [ %b.new.cap1343, %b.new.buf.len21351 ], [ %builder.new.salloc.sroa.64.9, %b.app.new.len1330 ]
  %builder.new.salloc.sroa.32.10 = phi ptr [ %b.new.buf21355, %b.new.buf.len21351 ], [ %builder.new.salloc.sroa.32.9, %b.app.new.len1330 ]
  %b.app.dst1361 = getelementptr i8, ptr %builder.new.salloc.sroa.32.10, i64 %sum1276
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1361, ptr align 1 %app.str.data1324, i64 %app.str.len1315, i1 false)
  %b.app.nul1362 = getelementptr i8, ptr %builder.new.salloc.sroa.32.10, i64 %sum1328
  store i8 0, ptr %b.app.nul1362, align 1
  %b.app.new.len1369 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1328, i64 1)
  %sum1370 = extractvalue { i64, i1 } %b.app.new.len1369, 0
  %ovf1371 = extractvalue { i64, i1 } %b.app.new.len1369, 1
  br i1 %ovf1371, label %str_overflow_abort1373, label %b.app.new.len1372

b.new.buf.len21351:                               ; preds = %b.grow21336
  %arena.cur1354 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21355 = call ptr @dva_arena_alloc(ptr %arena.cur1354, i64 %sum1349)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21355, ptr align 1 %builder.new.salloc.sroa.32.9, i64 %sum1276, i1 false)
  %b.grow2.nul1356 = getelementptr i8, ptr %b.new.buf21355, i64 %sum1276
  store i8 0, ptr %b.grow2.nul1356, align 1
  br label %b.grow_done1338

str_overflow_abort1352:                           ; preds = %b.grow21336
  call void @dva_abort_str_overflow_msg()
  unreachable

b.app.new.len1372:                                ; preds = %b.grow_done1338
  %b.need.grow1377 = icmp slt i64 %builder.new.salloc.sroa.64.10, %sum1370
  br i1 %b.need.grow1377, label %b.grow21378, label %b.grow_done1380

str_overflow_abort1373:                           ; preds = %b.grow_done1338
  call void @dva_abort_str_overflow_msg()
  unreachable

b.grow21378:                                      ; preds = %b.app.new.len1372
  %b.cap21381 = mul i64 %builder.new.salloc.sroa.64.10, 2
  %b.cap.small1382 = icmp slt i64 %b.cap21381, 16
  %b.cap.grow1383 = select i1 %b.cap.small1382, i64 16, i64 %b.cap21381
  %b.cap.need1384 = icmp slt i64 %b.cap.grow1383, %sum1370
  %b.new.cap1385 = select i1 %b.cap.need1384, i64 %sum1370, i64 %b.cap.grow1383
  %b.new.buf.len21390 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %b.new.cap1385, i64 1)
  %sum1391 = extractvalue { i64, i1 } %b.new.buf.len21390, 0
  %ovf1392 = extractvalue { i64, i1 } %b.new.buf.len21390, 1
  br i1 %ovf1392, label %str_overflow_abort1394, label %b.new.buf.len21393

b.grow_done1380:                                  ; preds = %b.app.new.len1372, %b.new.buf.len21393
  %builder.new.salloc.sroa.32.11 = phi ptr [ %b.new.buf21397, %b.new.buf.len21393 ], [ %builder.new.salloc.sroa.32.10, %b.app.new.len1372 ]
  %b.app.dst1403 = getelementptr i8, ptr %builder.new.salloc.sroa.32.11, i64 %sum1328
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.app.dst1403, ptr align 1 @str.14, i64 1, i1 false)
  %b.app.nul1404 = getelementptr i8, ptr %builder.new.salloc.sroa.32.11, i64 %sum1370
  store i8 0, ptr %b.app.nul1404, align 1
  %arena.cur1406 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur1406, i64 24)
  %arena.cur1407 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1408 = call ptr @dva_arena_alloc(ptr %arena.cur1407, i64 128)
  store i64 0, ptr %a.new, align 8
  %a.data.gep1410 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf1408, ptr %a.data.gep1410, align 8
  %a.cap.gep1411 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1411, align 8
  %arr.cycle.len1426 = load i64, ptr %var.flags.5, align 8
  %arr.cycle.data1427 = getelementptr inbounds { i64, ptr, i64 }, ptr %var.flags.5, i32 0, i32 1
  %arr.cycle.data1428 = load ptr, ptr %arr.cycle.data1427, align 8
  br label %loop.header.259

b.new.buf.len21393:                               ; preds = %b.grow21378
  %arena.cur1396 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.new.buf21397 = call ptr @dva_arena_alloc(ptr %arena.cur1396, i64 %sum1391)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %b.new.buf21397, ptr align 1 %builder.new.salloc.sroa.32.10, i64 %sum1328, i1 false)
  %b.grow2.nul1398 = getelementptr i8, ptr %b.new.buf21397, i64 %sum1328
  store i8 0, ptr %b.grow2.nul1398, align 1
  br label %b.grow_done1380

str_overflow_abort1394:                           ; preds = %b.grow21378
  call void @dva_abort_str_overflow_msg()
  unreachable

loop.header.259:                                  ; preds = %a.store, %b.grow_done1380
  %var._map_out_377.0 = phi ptr [ %a.new, %b.grow_done1380 ], [ %var._map_out_377.1, %a.store ]
  %loop.idx.259.0 = phi i64 [ 0, %b.grow_done1380 ], [ %loop.next1532, %a.store ]
  %loop.cond1430 = icmp slt i64 %loop.idx.259.0, %arr.cycle.len1426
  br i1 %loop.cond1430, label %loop.body.259, label %a.check1558

loop.body.259:                                    ; preds = %loop.header.259
  %arr.elem.gep1432 = getelementptr i64, ptr %arr.cycle.data1428, i64 %loop.idx.259.0
  %arr.elem.raw1433 = load i64, ptr %arr.elem.gep1432, align 8
  %slot.i2p1434 = inttoptr i64 %arr.elem.raw1433 to ptr
  %eq.lhs.len1441 = load i64, ptr %slot.i2p1434, align 8
  %eq.lhs.len1442 = and i64 %eq.lhs.len1441, 281474976710655
  %str.tag1443 = lshr i64 %eq.lhs.len1441, 48
  %tag.immortal1445 = icmp eq i64 %str.tag1443, 0
  %active.gen1446 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1447 = icmp eq i64 %str.tag1443, %active.gen1446
  %tag.fast.ok1448 = or i1 %tag.immortal1445, %tag.current1447
  br i1 %tag.fast.ok1448, label %str_ok1444, label %tag.slow_check1449

str_ok1444:                                       ; preds = %tag.slow_check1449, %loop.body.259
  %eq.rhs.len1451 = load i64, ptr %"var.mode'.0", align 8
  %eq.rhs.len1452 = and i64 %eq.rhs.len1451, 281474976710655
  %str.tag1453 = lshr i64 %eq.rhs.len1451, 48
  %tag.immortal1455 = icmp eq i64 %str.tag1453, 0
  %active.gen1456 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1457 = icmp eq i64 %str.tag1453, %active.gen1456
  %tag.fast.ok1458 = or i1 %tag.immortal1455, %tag.current1457
  br i1 %tag.fast.ok1458, label %str_ok1454, label %tag.slow_check1459

tag.slow_check1449:                               ; preds = %loop.body.259
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1443)
  br label %str_ok1444

str_ok1454:                                       ; preds = %tag.slow_check1459, %str_ok1444
  %eq.len1460 = icmp eq i64 %eq.lhs.len1442, %eq.rhs.len1452
  br i1 %eq.len1460, label %str.eq.then1461, label %choice.exit1473

tag.slow_check1459:                               ; preds = %str_ok1444
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1453)
  br label %str_ok1454

str.eq.then1461:                                  ; preds = %str_ok1454
  %eq.lhs.data1464 = getelementptr inbounds { i64, ptr }, ptr %slot.i2p1434, i32 0, i32 1
  %eq.lhs.data1465 = load ptr, ptr %eq.lhs.data1464, align 8
  %eq.rhs.data1466 = getelementptr inbounds { i64, ptr }, ptr %"var.mode'.0", i32 0, i32 1
  %eq.rhs.data1467 = load ptr, ptr %eq.rhs.data1466, align 8
  %eq.memcmp1468 = call i32 @memcmp(ptr %eq.lhs.data1465, ptr %eq.rhs.data1467, i64 %eq.lhs.len1442)
  %eq.cmp.zero1469 = icmp eq i32 %eq.memcmp1468, 0
  br i1 %eq.cmp.zero1469, label %choice.then1471, label %choice.exit1473

choice.then1471:                                  ; preds = %str.eq.then1461
  %cat.seg1477 = load i64, ptr %ret.ub.alloc1061, align 8
  %cat.seg1478 = and i64 %cat.seg1477, 281474976710655
  %str.tag1479 = lshr i64 %cat.seg1477, 48
  %tag.immortal1481 = icmp eq i64 %str.tag1479, 0
  %active.gen1482 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current1483 = icmp eq i64 %str.tag1479, %active.gen1482
  %tag.fast.ok1484 = or i1 %tag.immortal1481, %tag.current1483
  br i1 %tag.fast.ok1484, label %str_ok1480, label %tag.slow_check1485

choice.exit1473:                                  ; preds = %str.eq.then1461, %str_ok1454, %concat.tot.len1497
  %choice.res1513 = phi ptr [ %concat.str1506, %concat.tot.len1497 ], [ %slot.i2p1434, %str_ok1454 ], [ %slot.i2p1434, %str.eq.then1461 ]
  %a.null1515 = icmp eq ptr %var._map_out_377.0, null
  br i1 %a.null1515, label %a.create1516, label %a.check

str_ok1480:                                       ; preds = %tag.slow_check1485, %choice.then1471
  %cat.seg1486 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc1061, i32 0, i32 1
  %cat.seg1487 = load ptr, ptr %cat.seg1486, align 8
  %cat.sum.len1488 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 14, i64 %cat.seg1478)
  %sum1489 = extractvalue { i64, i1 } %cat.sum.len1488, 0
  %ovf1490 = extractvalue { i64, i1 } %cat.sum.len1488, 1
  br i1 %ovf1490, label %str_overflow_abort1492, label %cat.sum.len1491

tag.slow_check1485:                               ; preds = %choice.then1471
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag1479)
  br label %str_ok1480

cat.sum.len1491:                                  ; preds = %str_ok1480
  %concat.tot.len1494 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum1489, i64 1)
  %sum1495 = extractvalue { i64, i1 } %concat.tot.len1494, 0
  %ovf1496 = extractvalue { i64, i1 } %concat.tot.len1494, 1
  br i1 %ovf1496, label %str_overflow_abort1498, label %concat.tot.len1497

str_overflow_abort1492:                           ; preds = %str_ok1480
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len1497:                               ; preds = %cat.sum.len1491
  %arena.cur1500 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf1501 = call ptr @dva_arena_alloc(ptr %arena.cur1500, i64 %sum1495)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf1501, ptr align 1 @str.15, i64 14, i1 false)
  %cat.dst1503 = getelementptr i8, ptr %concat.buf1501, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst1503, ptr align 1 %cat.seg1487, i64 %cat.seg1478, i1 false)
  %concat.nul1504 = getelementptr i8, ptr %concat.buf1501, i64 %sum1489
  store i8 0, ptr %concat.nul1504, align 1
  %arena.cur1505 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str1506 = call ptr @dva_arena_alloc(ptr %arena.cur1505, i64 16)
  %str.tag.gen1508 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1509 = shl i64 %str.tag.gen1508, 48
  %str.tagged.len1510 = or i64 %sum1489, %str.tag.shift1509
  store i64 %str.tagged.len1510, ptr %concat.str1506, align 8
  %str.build.data.gep1511 = getelementptr inbounds { i64, ptr }, ptr %concat.str1506, i32 0, i32 1
  store ptr %concat.buf1501, ptr %str.build.data.gep1511, align 8
  br label %choice.exit1473

str_overflow_abort1498:                           ; preds = %cat.sum.len1491
  call void @dva_abort_str_overflow_msg()
  unreachable

a.create1516:                                     ; preds = %choice.exit1473
  %arena.cur1518 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create1519 = call ptr @dva_arena_alloc(ptr %arena.cur1518, i64 24)
  %arena.cur1520 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf1521 = call ptr @dva_arena_alloc(ptr %arena.cur1520, i64 128)
  store i64 0, ptr %a.create1519, align 8
  %a.data.gep1523 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1519, i32 0, i32 1
  store ptr %a.buf1521, ptr %a.data.gep1523, align 8
  %a.cap.gep1524 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create1519, i32 0, i32 2
  store i64 16, ptr %a.cap.gep1524, align 8
  br label %a.check

a.check:                                          ; preds = %choice.exit1473, %a.create1516
  %var._map_out_377.1 = phi ptr [ %a.create1519, %a.create1516 ], [ %var._map_out_377.0, %choice.exit1473 ]
  %a.len1526 = load i64, ptr %var._map_out_377.1, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_377.1, i32 0, i32 2
  %a.cap1527 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len1526, %a.cap1527
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %var._map_out_377.1)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_377.1, i32 0, i32 1
  %a.cur.data1528 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len1529 = load i64, ptr %var._map_out_377.1, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data1528, i64 %a.cur.len1529
  %slot.p2i = ptrtoint ptr %choice.res1513 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len1529, 1
  store i64 %a.next.len, ptr %var._map_out_377.1, align 8
  %loop.next1532 = add i64 %loop.idx.259.0, 1
  br label %loop.header.259

a.check1558:                                      ; preds = %loop.header.259
  %a.len1562 = load i64, ptr %var._map_out_377.0, align 8
  %a.cap1563 = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_377.0, i32 0, i32 2
  %a.cap1564 = load i64, ptr %a.cap1563, align 8
  %a.needs.grow1565 = icmp eq i64 %a.len1562, %a.cap1564
  br i1 %a.needs.grow1565, label %a.grow1559, label %a.store1560

a.grow1559:                                       ; preds = %a.check1558
  call void @dva_array_grow(ptr %var._map_out_377.0)
  br label %a.store1560

a.store1560:                                      ; preds = %a.grow1559, %a.check1558
  %a.cur.data1566 = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_377.0, i32 0, i32 1
  %a.cur.data1567 = load ptr, ptr %a.cur.data1566, align 8
  %a.cur.len1569 = load i64, ptr %var._map_out_377.0, align 8
  %a.elem.gep1570 = getelementptr i64, ptr %a.cur.data1567, i64 %a.cur.len1569
  store i64 ptrtoint (ptr @str.60.struct to i64), ptr %a.elem.gep1570, align 8
  %a.next.len1571 = add i64 %a.cur.len1569, 1
  store i64 %a.next.len1571, ptr %var._map_out_377.0, align 8
  %a.len1589 = load i64, ptr %var._map_out_377.0, align 8
  %a.cap1590 = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_377.0, i32 0, i32 2
  %a.cap1591 = load i64, ptr %a.cap1590, align 8
  %a.needs.grow1592 = icmp eq i64 %a.len1589, %a.cap1591
  br i1 %a.needs.grow1592, label %a.grow1586, label %a.store1587

a.grow1586:                                       ; preds = %a.store1560
  call void @dva_array_grow(ptr %var._map_out_377.0)
  br label %a.store1587

a.store1587:                                      ; preds = %a.grow1586, %a.store1560
  %a.cur.data1593 = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_377.0, i32 0, i32 1
  %a.cur.data1594 = load ptr, ptr %a.cur.data1593, align 8
  %a.cur.len1596 = load i64, ptr %var._map_out_377.0, align 8
  %a.elem.gep1597 = getelementptr i64, ptr %a.cur.data1594, i64 %a.cur.len1596
  store i64 ptrtoint (ptr @str.61.struct to i64), ptr %a.elem.gep1597, align 8
  %a.next.len1598 = add i64 %a.cur.len1596, 1
  store i64 %a.next.len1598, ptr %var._map_out_377.0, align 8
  %a.len1616 = load i64, ptr %var._map_out_377.0, align 8
  %a.cap1617 = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_377.0, i32 0, i32 2
  %a.cap1618 = load i64, ptr %a.cap1617, align 8
  %a.needs.grow1619 = icmp eq i64 %a.len1616, %a.cap1618
  br i1 %a.needs.grow1619, label %a.grow1613, label %a.store1614

a.grow1613:                                       ; preds = %a.store1587
  call void @dva_array_grow(ptr %var._map_out_377.0)
  br label %a.store1614

a.store1614:                                      ; preds = %a.grow1613, %a.store1587
  %a.cur.data1620 = getelementptr inbounds { i64, ptr, i64 }, ptr %var._map_out_377.0, i32 0, i32 1
  %a.cur.data1621 = load ptr, ptr %a.cur.data1620, align 8
  %a.cur.len1623 = load i64, ptr %var._map_out_377.0, align 8
  %a.elem.gep1624 = getelementptr i64, ptr %a.cur.data1621, i64 %a.cur.len1623
  store i64 ptrtoint (ptr @str.62.struct to i64), ptr %a.elem.gep1624, align 8
  %a.next.len1625 = add i64 %a.cur.len1623, 1
  store i64 %a.next.len1625, ptr %var._map_out_377.0, align 8
  %b.freeze.arena1645 = load ptr, ptr @dva_active_arena_tls, align 8
  %b.freeze.nc.gep1646 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena1645, i32 0, i32 1
  %b.freeze.nc1647 = load i64, ptr %b.freeze.nc.gep1646, align 8
  %b.freeze.has.chunk1648 = icmp sgt i64 %b.freeze.nc1647, 0
  br i1 %b.freeze.has.chunk1648, label %b.freeze.check1649, label %b.freeze.done1651

b.freeze.check1649:                               ; preds = %a.store1614
  %b.freeze.last.idx1652 = sub i64 %b.freeze.nc1647, 1
  %b.freeze.chunks.gep1653 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena1645, i32 0, i32 3
  %b.freeze.chunk.slot1654 = getelementptr [16384 x ptr], ptr %b.freeze.chunks.gep1653, i64 0, i64 %b.freeze.last.idx1652
  %b.freeze.last.chunk1655 = load ptr, ptr %b.freeze.chunk.slot1654, align 8
  %b.freeze.off.gep1656 = getelementptr inbounds { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }, ptr %b.freeze.arena1645, i32 0, i32 2
  %b.freeze.off1657 = load i64, ptr %b.freeze.off.gep1656, align 8
  %b.freeze.bump1658 = getelementptr i8, ptr %b.freeze.last.chunk1655, i64 %b.freeze.off1657
  %b.freeze.cap1660 = load i64, ptr %b.freeze.arena1645, align 8
  %b.freeze.chunk.end1661 = getelementptr i8, ptr %b.freeze.last.chunk1655, i64 %b.freeze.cap1660
  %b.freeze.ge.chunk1662 = icmp uge ptr %builder.new.salloc.sroa.32.11, %b.freeze.last.chunk1655
  %b.freeze.lt.end1663 = icmp ult ptr %builder.new.salloc.sroa.32.11, %b.freeze.chunk.end1661
  %b.freeze.in.chunk1664 = and i1 %b.freeze.ge.chunk1662, %b.freeze.lt.end1663
  %b.freeze.ge.bump1665 = icmp uge ptr %builder.new.salloc.sroa.32.11, %b.freeze.bump1658
  %b.freeze.reaped1666 = and i1 %b.freeze.in.chunk1664, %b.freeze.ge.bump1665
  br i1 %b.freeze.reaped1666, label %b.freeze.copy1650, label %b.freeze.done1651

b.freeze.copy1650:                                ; preds = %b.freeze.check1649
  %b.freeze.alen1667 = add i64 %sum1370, 1
  %b.freeze.fresh1669 = call ptr @dva_arena_alloc(ptr %b.freeze.arena1645, i64 %b.freeze.alen1667)
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %b.freeze.fresh1669, ptr align 1 %builder.new.salloc.sroa.32.11, i64 %sum1370, i1 false)
  %b.freeze.nul1670 = getelementptr i8, ptr %b.freeze.fresh1669, i64 %sum1370
  store i8 0, ptr %b.freeze.nul1670, align 1
  br label %b.freeze.done1651

b.freeze.done1651:                                ; preds = %b.freeze.copy1650, %b.freeze.check1649, %a.store1614
  %b.freeze.data1671 = phi ptr [ %builder.new.salloc.sroa.32.11, %a.store1614 ], [ %builder.new.salloc.sroa.32.11, %b.freeze.check1649 ], [ %b.freeze.fresh1669, %b.freeze.copy1650 ]
  %arena.cur1672 = load ptr, ptr @dva_active_arena_tls, align 8
  %builder.freeze1673 = call ptr @dva_arena_alloc(ptr %arena.cur1672, i64 16)
  %str.tag.gen1675 = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift1676 = shl i64 %str.tag.gen1675, 48
  %str.tagged.len1677 = or i64 %sum1370, %str.tag.shift1676
  store i64 %str.tagged.len1677, ptr %builder.freeze1673, align 8
  %str.build.data.gep1678 = getelementptr inbounds { i64, ptr }, ptr %builder.freeze1673, i32 0, i32 1
  store ptr %b.freeze.data1671, ptr %str.build.data.gep1678, align 8
  %arena.cur1684 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc1685 = call ptr @dva_arena_alloc(ptr %arena.cur1684, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, i1, i1 }, ptr null, i32 1) to i64))
  store ptr %var._map_out_377.0, ptr %rec.alloc1685, align 8
  %rec.fld1687 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc1685, i32 0, i32 1
  store ptr %builder.freeze1673, ptr %rec.fld1687, align 8
  %rec.fld1688 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc1685, i32 0, i32 2
  store ptr %ret.ub.alloc1061, ptr %rec.fld1688, align 8
  %rec.fld1689 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc1685, i32 0, i32 3
  store i1 true, ptr %rec.fld1689, align 1
  %rec.fld1690 = getelementptr inbounds { ptr, ptr, ptr, i1, i1 }, ptr %rec.alloc1685, i32 0, i32 4
  store i1 %"var.cacheable'.0", ptr %rec.fld1690, align 1
  %ptr.to.i641691 = ptrtoint ptr %rec.alloc1685 to i64
  %ram.pay1692 = insertvalue { i1, i64 } { i1 true, i64 0 }, i64 %ptr.to.i641691, 1
  br label %common.ret
}

declare i1 @"str::contains"(ptr, ptr) #3

declare { i64, ptr } @"ast::triple_arch"(ptr) #3

declare { i64, ptr } @"pkg::hash_string"(ptr) #3

declare i1 @"fs::is_file"(ptr) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

declare i1 @"fs::is_dir"(ptr) #3

define internal void @dva_array_grow(ptr %0) #3 {
entry:
  %a.len1 = load i64, ptr %0, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 2
  %a.cap2 = load i64, ptr %a.cap, align 8
  %a.data = getelementptr inbounds { i64, ptr, i64 }, ptr %0, i32 0, i32 1
  %a.data3 = load ptr, ptr %a.data, align 8
  %a.cap24 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.cap2, i64 2)
  %prod = extractvalue { i64, i1 } %a.cap24, 0
  %ovf = extractvalue { i64, i1 } %a.cap24, 1
  br i1 %ovf, label %arr_overflow_abort, label %a.cap25

a.cap25:                                          ; preds = %entry
  %a.cap.small = icmp slt i64 %prod, 16
  %a.new.cap = select i1 %a.cap.small, i64 16, i64 %prod
  %a.grow.bytes = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %a.new.cap, i64 8)
  %prod6 = extractvalue { i64, i1 } %a.grow.bytes, 0
  %ovf7 = extractvalue { i64, i1 } %a.grow.bytes, 1
  br i1 %ovf7, label %arr_overflow_abort9, label %a.grow.bytes8

arr_overflow_abort:                               ; preds = %entry
  call void @dva_abort_arr_overflow_msg()
  unreachable

a.grow.bytes8:                                    ; preds = %a.cap25
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %prod6)
  %a.copy.bytes = mul i64 %a.len1, 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %a.new.buf, ptr align 1 %a.data3, i64 %a.copy.bytes, i1 false)
  store ptr %a.new.buf, ptr %a.data, align 8
  store i64 %a.new.cap, ptr %a.cap, align 8
  ret void

arr_overflow_abort9:                              ; preds = %a.cap25
  call void @dva_abort_arr_overflow_msg()
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #0

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_arr_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noinline "nounwind" }
