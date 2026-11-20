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
@sys_argc_global = external global i64
@sys_argv_global = external global ptr
@"var.ast::cell_var_names" = external global ptr
@"var.diag::capture_enabled" = external global i1
@"var.diag::captured_diags" = external global ptr
@"var.const::pi" = external global double
@"var.const::tau" = external global double
@"var.const::e" = external global double
@"var.const::phi" = external global double
@"var.const::inv_phi" = external global double
@"var.const::sqrt2" = external global double
@"var.const::sqrt3" = external global double
@"var.const::ln2" = external global double
@"var.const::ln10" = external global double
@"var.const::max_i64" = external global i64
@"var.const::min_i64" = external global i64
@"var.const::max_safe_int" = external global i64
@"var.const::max_i32" = external global i32
@"var.const::min_i32" = external global i32
@"var.const::max_i16" = external global i16
@"var.const::min_i16" = external global i16
@"var.const::max_i8" = external global i8
@"var.const::min_i8" = external global i8
@"var.const::max_u64" = external global i64
@"var.const::max_u32" = external global i32
@"var.const::max_u16" = external global i16
@"var.const::max_u8" = external global i8
@"var.const::inf_f64" = external global double
@"var.const::nan_f64" = external global double
@"var.const::max_f64" = external global double
@"var.const::min_f64" = external global double
@"var.const::sub_f64" = external global double
@"var.const::eps_f64" = external global double
@"var.const::inf_f32" = external global float
@"var.const::nan_f32" = external global float
@"var.const::max_f32" = external global float
@"var.const::min_f32" = external global float
@"var.const::sub_f32" = external global float
@"var.const::eps_f32" = external global float
@"var.sys::STDIN" = external global i64
@"var.sys::STDOUT" = external global i64
@"var.sys::STDERR" = external global i64
@"var.sys::addr_null" = external global ptr
@clo.const = internal constant { ptr, ptr } { ptr @"typedopt::#is_int", ptr null }
@"var.typedopt::#is_int" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"typedopt::#scalar_literal", ptr null }
@"var.typedopt::#scalar_literal" = global ptr null
@clo.const.2 = internal constant { ptr, ptr } { ptr @"typedopt::#same_scalar_type", ptr null }
@"var.typedopt::#same_scalar_type" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"typedopt::#replace", ptr null }
@"var.typedopt::#replace" = global ptr null
@clo.const.4 = internal constant { ptr, ptr } { ptr @"typedopt::#scalar_operand", ptr null }
@"var.typedopt::#scalar_operand" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"typedopt::#simplify_bin", ptr null }
@"var.typedopt::#simplify_bin" = global ptr null
@str.0 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.0 }
@str.1 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.1 }
@str.2 = internal unnamed_addr constant [13 x i8] c"typedopt.dva\00"
@str.2.struct = internal unnamed_addr constant { i64, ptr } { i64 12, ptr @str.2 }
@str.3 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.3 }
@dva_thread_rec = external thread_local global ptr
@clo.const.6 = internal constant { ptr, ptr } { ptr @"typedopt::#simplify_member", ptr null }
@"var.typedopt::#simplify_member" = global ptr null
@arr_overflow_msg = internal unnamed_addr constant [26 x i8] c"E4002: capacity overflow\0A\00"
@clo.const.7 = internal constant { ptr, ptr } { ptr @"typedopt::#simplify_choice", ptr null }
@clo.const.8 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite_block", ptr null }
@clo.const.9 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite_optional", ptr null }
@clo.const.10 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite", ptr null }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite_list", ptr null }
@"var.typedopt::#rewrite_list" = global ptr null
@"var.typedopt::#rewrite_optional" = global ptr null
@"var.typedopt::#rewrite_block" = global ptr null
@"var.typedopt::#simplify_choice" = global ptr null
@"var.typedopt::#rewrite" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"typedopt::#rewrite_stmt", ptr null }
@"var.typedopt::#rewrite_stmt" = global ptr null
@str.4 = internal unnamed_addr constant [18 x i8] c"EDVA_NO_TYPED_OPT\00"
@str.4.struct = internal unnamed_addr constant { i64, ptr } { i64 17, ptr @str.4 }
@str.5 = internal unnamed_addr constant [2 x i8] c"1\00"
@str.5.struct = internal unnamed_addr constant { i64, ptr } { i64 1, ptr @str.5 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.13 = internal constant { ptr, ptr } { ptr @"typedopt::enabled", ptr null }
@"var.typedopt::enabled" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"typedopt::run", ptr null }
@"var.typedopt::run" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_typedopt, ptr null }]

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

define internal void @__dva_global_init_typedopt() #0 {
entry:
  store ptr @clo.const, ptr @"var.typedopt::#is_int", align 8
  store ptr @clo.const.1, ptr @"var.typedopt::#scalar_literal", align 8
  store ptr @clo.const.2, ptr @"var.typedopt::#same_scalar_type", align 8
  store ptr @clo.const.3, ptr @"var.typedopt::#replace", align 8
  store ptr @clo.const.4, ptr @"var.typedopt::#scalar_operand", align 8
  store ptr @clo.const.5, ptr @"var.typedopt::#simplify_bin", align 8
  store ptr @clo.const.6, ptr @"var.typedopt::#simplify_member", align 8
  store ptr @clo.const.11, ptr @"var.typedopt::#rewrite_list", align 8
  store ptr @clo.const.9, ptr @"var.typedopt::#rewrite_optional", align 8
  store ptr @clo.const.8, ptr @"var.typedopt::#rewrite_block", align 8
  store ptr @clo.const.7, ptr @"var.typedopt::#simplify_choice", align 8
  store ptr @clo.const.10, ptr @"var.typedopt::#rewrite", align 8
  store ptr @clo.const.12, ptr @"var.typedopt::#rewrite_stmt", align 8
  store ptr @clo.const.13, ptr @"var.typedopt::enabled", align 8
  store ptr @clo.const.14, ptr @"var.typedopt::run", align 8
  ret void
}

declare i32 @open(ptr, i32)

declare i64 @creat(ptr, i64)

declare i32 @close(i32)

declare i64 @posix_spawn(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @posix_spawnp(ptr, ptr, ptr, ptr, ptr, ptr)

declare i64 @waitpid(i64, ptr, i64)

declare i64 @read(i32, ptr, i64)

declare i64 @lseek(i32, i64, i64)

declare i64 @write(i32, ptr, i64)

declare i64 @writev(i32, ptr, i64)

declare i32 @ioctl(i32, i64, i64, ...)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

declare i64 @htons(i64)

declare i64 @htonl(i64)

declare i64 @ntohs(i64)

declare i64 @ntohl(i64)

declare i64 @inet_addr(ptr)

declare i64 @socket(i64, i64, i64)

declare i64 @connect(i64, ptr, i64)

declare i64 @bind(i64, ptr, i64)

declare i64 @listen(i64, i64)

declare i64 @accept(i64, ptr, ptr)

declare i64 @send(i64, ptr, i64, i32)

declare i64 @recv(i64, ptr, i64, i32)

declare i64 @sendto(i64, ptr, i64, i32, ptr, i64)

declare i64 @recvfrom(i64, ptr, i64, i32, ptr, ptr)

declare i64 @setsockopt(i64, i64, i64, ptr, i64)

declare i64 @getsockopt(i64, i64, i64, ptr, ptr)

declare i64 @getpeername(i64, ptr, ptr)

declare i64 @getsockname(i64, ptr, ptr)

declare i64 @shutdown(i64, i64)

declare i64 @fcntl(i32, i64, i64)

declare i64 @getaddrinfo(ptr, ptr, ptr, ptr)

declare void @freeaddrinfo(ptr)

declare i64 @getifaddrs(ptr)

declare void @freeifaddrs(ptr)

declare ptr @memset(ptr, i64, i64)

declare i64 @atoi(ptr)

declare ptr @opendir(ptr)

declare ptr @readdir(ptr)

declare i64 @closedir(ptr)

declare i64 @strlen(ptr) #0

declare i64 @strcmp(ptr, ptr)

declare ptr @memcpy(ptr, ptr, i64)

declare ptr @memmove(ptr, ptr, i64)

declare i64 @stat(ptr, ptr)

declare i64 @fstat(i32, ptr)

declare i64 @rename(ptr, ptr)

declare i64 @unlink(ptr)

declare i64 @pipe(ptr)

declare ptr @__errno_location()

declare ptr @mmap(ptr, i64, i64, i64, i32, i64)

declare i64 @munmap(ptr, i64)

declare i64 @syscall(i64, ptr, ptr, ptr, ptr, ptr, ptr)

declare ptr @dlopen(ptr, i32)

declare ptr @dlsym(ptr, ptr)

declare i64 @dlclose(ptr)

declare ptr @dlerror()

declare i64 @system(ptr)

declare ptr @realpath(ptr, ptr)

declare i64 @isatty(i32)

declare i64 @tcgetattr(i32, ptr)

declare i64 @tcsetattr(i32, i64, ptr)

declare void @cfmakeraw(ptr)

declare i64 @poll(ptr, i64, i64)

declare i64 @epoll_create1(i32)

declare i64 @epoll_ctl(i64, i64, i32, ptr)

declare i64 @epoll_wait(i64, ptr, i64, i64)

declare i64 @time(ptr)

declare ptr @signal(i64, ptr)

declare i64 @raise(i64)

declare i64 @getrlimit(i64, ptr)

declare i64 @setrlimit(i64, ptr)

declare i64 @uname(ptr)

declare ptr @getenv(ptr)

define internal i1 @"typedopt::#is_int"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit2
  %choice.res8 = phi i1 [ %choice.res, %choice.exit2 ], [ false, %choice.next ]
  ret i1 %choice.res8

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load1 = load ptr, ptr %var.p, align 8
  %tag.gep5 = getelementptr inbounds { i64, ptr }, ptr %var.load1, i32 0, i32 0
  %tag.id6 = load i64, ptr %tag.gep5, align 8
  %tag.match7 = icmp eq i64 %tag.id6, 1
  br i1 %tag.match7, label %choice.case3, label %choice.next4

choice.next:                                      ; preds = %entry
  br label %choice.exit

choice.exit2:                                     ; preds = %choice.next4, %choice.case3
  %choice.res = phi i1 [ true, %choice.case3 ], [ false, %choice.next4 ]
  br label %choice.exit

choice.case3:                                     ; preds = %choice.case
  br label %choice.exit2

choice.next4:                                     ; preds = %choice.case
  br label %choice.exit2
}

define internal i1 @"typedopt::#scalar_literal"(ptr %0) #0 {
entry:
  %var.p = alloca ptr, align 8
  %var._17 = alloca ptr, align 8
  %var._ = alloca i64, align 8
  %var.e = alloca ptr, align 8
  store ptr %0, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  %tag.match1 = icmp eq i64 %tag.id, 4
  %tag.or = or i1 %tag.match, %tag.match1
  %tag.match2 = icmp eq i64 %tag.id, 3
  %tag.or3 = or i1 %tag.or, %tag.match2
  %tag.match4 = icmp eq i64 %tag.id, 1
  %tag.or5 = or i1 %tag.or3, %tag.match4
  br i1 %tag.or5, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit9
  %choice.res50 = phi i1 [ %choice.res49, %choice.exit9 ], [ false, %choice.next ]
  ret i1 %choice.res50

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next:                                      ; preds = %entry
  br label %choice.exit

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %pay.int.nullbb ]
  store i64 %pay.int.phi, ptr %var._, align 8
  %var.load6 = load ptr, ptr %var.e, align 8
  %fld.gep7 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load6, i32 0, i32 2
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %tag.gep12 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 0
  %tag.id13 = load i64, ptr %tag.gep12, align 8
  %tag.match14 = icmp eq i64 %tag.id13, 0
  br i1 %tag.match14, label %choice.case10, label %choice.next11

choice.exit9:                                     ; preds = %choice.next11, %choice.exit19
  %choice.res49 = phi i1 [ %choice.res, %choice.exit19 ], [ false, %choice.next11 ]
  br label %choice.exit

choice.case10:                                    ; preds = %pay.int.merge
  %pay.gep15 = getelementptr inbounds { i64, ptr }, ptr %fld.load8, i32 0, i32 1
  %payload.ptr16 = load ptr, ptr %pay.gep15, align 8
  store ptr %payload.ptr16, ptr %var._17, align 8
  store ptr %payload.ptr16, ptr %var.p, align 8
  %var.load18 = load ptr, ptr %var.p, align 8
  %tag.gep22 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 0
  %tag.id23 = load i64, ptr %tag.gep22, align 8
  %tag.match24 = icmp eq i64 %tag.id23, 1
  %tag.match25 = icmp eq i64 %tag.id23, 2
  %tag.or26 = or i1 %tag.match24, %tag.match25
  %tag.match27 = icmp eq i64 %tag.id23, 3
  %tag.or28 = or i1 %tag.or26, %tag.match27
  %tag.match29 = icmp eq i64 %tag.id23, 4
  %tag.or30 = or i1 %tag.or28, %tag.match29
  %tag.match31 = icmp eq i64 %tag.id23, 5
  %tag.or32 = or i1 %tag.or30, %tag.match31
  %tag.match33 = icmp eq i64 %tag.id23, 6
  %tag.or34 = or i1 %tag.or32, %tag.match33
  %tag.match35 = icmp eq i64 %tag.id23, 7
  %tag.or36 = or i1 %tag.or34, %tag.match35
  %tag.match37 = icmp eq i64 %tag.id23, 8
  %tag.or38 = or i1 %tag.or36, %tag.match37
  %tag.match39 = icmp eq i64 %tag.id23, 9
  %tag.or40 = or i1 %tag.or38, %tag.match39
  %tag.match41 = icmp eq i64 %tag.id23, 26
  %tag.or42 = or i1 %tag.or40, %tag.match41
  %tag.match43 = icmp eq i64 %tag.id23, 10
  %tag.or44 = or i1 %tag.or42, %tag.match43
  %tag.match45 = icmp eq i64 %tag.id23, 11
  %tag.or46 = or i1 %tag.or44, %tag.match45
  %tag.match47 = icmp eq i64 %tag.id23, 12
  %tag.or48 = or i1 %tag.or46, %tag.match47
  br i1 %tag.or48, label %choice.case20, label %choice.next21

choice.next11:                                    ; preds = %pay.int.merge
  br label %choice.exit9

choice.exit19:                                    ; preds = %choice.next21, %choice.case20
  %choice.res = phi i1 [ true, %choice.case20 ], [ false, %choice.next21 ]
  br label %choice.exit9

choice.case20:                                    ; preds = %choice.case10
  br label %choice.exit19

choice.next21:                                    ; preds = %choice.case10
  br label %choice.exit19
}

define internal i1 @"typedopt::#same_scalar_type"(ptr %0, ptr %1) #0 {
entry:
  %var.q = alloca ptr, align 8
  %var._12 = alloca ptr, align 8
  %var.p = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  store ptr %0, ptr %var.a, align 8
  store ptr %1, ptr %var.b, align 8
  %var.load = load ptr, ptr %var.a, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 2
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit4
  %choice.res15 = phi i1 [ %choice.res, %choice.exit4 ], [ false, %choice.next ]
  ret i1 %choice.res15

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.p, align 8
  %var.load1 = load ptr, ptr %var.b, align 8
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 0
  br i1 %tag.match9, label %choice.case5, label %choice.next6

choice.next:                                      ; preds = %entry
  br label %choice.exit

choice.exit4:                                     ; preds = %choice.next6, %choice.case5
  %choice.res = phi i1 [ %enum.tag.eq, %choice.case5 ], [ false, %choice.next6 ]
  br label %choice.exit

choice.case5:                                     ; preds = %choice.case
  %pay.gep10 = getelementptr inbounds { i64, ptr }, ptr %fld.load3, i32 0, i32 1
  %payload.ptr11 = load ptr, ptr %pay.gep10, align 8
  store ptr %payload.ptr11, ptr %var._12, align 8
  store ptr %payload.ptr11, ptr %var.q, align 8
  %var.load13 = load ptr, ptr %var.p, align 8
  %var.load14 = load ptr, ptr %var.q, align 8
  %enum.l.tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load13, i32 0, i32 0
  %enum.l.tag = load i64, ptr %enum.l.tag.gep, align 8
  %enum.r.tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load14, i32 0, i32 0
  %enum.r.tag = load i64, ptr %enum.r.tag.gep, align 8
  %enum.tag.eq = icmp eq i64 %enum.l.tag, %enum.r.tag
  br label %choice.exit4

choice.next6:                                     ; preds = %choice.case
  br label %choice.exit4
}

define internal ptr @"typedopt::#replace"(ptr %0, ptr %1) #0 {
entry:
  %var.__ctor_arg_115 = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  %var.orig = alloca ptr, align 8
  store ptr %0, ptr %var.orig, align 8
  store ptr %1, ptr %var.value, align 8
  %var.load = load ptr, ptr %var.value, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  store ptr %fld.load, ptr %var.__ctor_arg_115, align 8
  %var.load1 = load ptr, ptr %var.__ctor_arg_115, align 8
  %var.load2 = load ptr, ptr %var.orig, align 8
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load2, i32 0, i32 1
  %fld.load4 = load ptr, ptr %fld.gep3, align 8
  %var.load5 = load ptr, ptr %var.orig, align 8
  %fld.gep6 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load5, i32 0, i32 2
  %fld.load7 = load ptr, ptr %fld.gep6, align 8
  %var.load8 = load ptr, ptr %var.orig, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load8, i32 0, i32 3
  %var.load10 = load ptr, ptr %var.orig, align 8
  %fld.gep11 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load10, i32 0, i32 4
  %fld.load12 = load i64, ptr %fld.gep11, align 8
  %var.load13 = load ptr, ptr %var.orig, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load13, i32 0, i32 5
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load1, ptr %rec.fld, align 8
  %rec.fld16 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load4, ptr %rec.fld16, align 8
  %rec.fld17 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load7, ptr %rec.fld17, align 8
  %rec.fld18 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld18, ptr align 1 %fld.gep9, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld19 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load12, ptr %rec.fld19, align 8
  %rec.fld20 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load15, ptr %rec.fld20, align 8
  ret ptr %rec.alloc
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

define internal ptr @"typedopt::#scalar_operand"(ptr %0, ptr %1) #0 {
entry:
  %var.fact = alloca ptr, align 8
  %var._11 = alloca ptr, align 8
  %var.v = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 6
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit10
  %choice.res38 = phi ptr [ %choice.res36, %choice.exit10 ], [ %var.load37, %choice.next ]
  ret ptr %choice.res38

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.v, align 8
  %var.load1 = load ptr, ptr %var.v, align 8
  %fld.gep2 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load1, i32 0, i32 2
  %fld.load3 = load i1, ptr %fld.gep2, align 1
  br i1 %fld.load3, label %choice.then, label %choice.exit4

choice.next:                                      ; preds = %entry
  %var.load37 = load ptr, ptr %var.e, align 8
  br label %choice.exit

choice.then:                                      ; preds = %choice.case
  %var.load5 = load ptr, ptr %var.e, align 8
  ret ptr %var.load5

choice.exit4:                                     ; preds = %ret.dead, %choice.case
  %var.load6 = load ptr, ptr %var.ctx, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i1 }, ptr %var.load6, i32 0, i32 0
  %fld.load8 = load ptr, ptr %fld.gep7, align 8
  %niche.ne.null = icmp ne ptr %fld.load8, null
  br i1 %niche.ne.null, label %choice.then9, label %choice.else

ret.dead:                                         ; No predecessors!
  br label %choice.exit4

choice.then9:                                     ; preds = %choice.exit4
  store ptr %fld.load8, ptr %var._11, align 8
  store ptr %fld.load8, ptr %var.fact, align 8
  %var.load12 = load ptr, ptr %var.v, align 8
  %fld.gep13 = getelementptr inbounds { ptr, i64, i1 }, ptr %var.load12, i32 0, i32 0
  %fld.load14 = load ptr, ptr %fld.gep13, align 8
  %var.load15 = load ptr, ptr %var.fact, align 8
  %fld.gep16 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load15, i32 0, i32 0
  %fld.load17 = load ptr, ptr %fld.gep16, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 0
  %eq.lhs.len18 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len19 = and i64 %eq.lhs.len18, 281474976710655
  %eq.rhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 0
  %eq.rhs.len20 = load i64, ptr %eq.rhs.len, align 8
  %eq.rhs.len21 = and i64 %eq.rhs.len20, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len19, %eq.rhs.len21
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.else:                                      ; preds = %choice.exit4
  %var.load35 = load ptr, ptr %var.e, align 8
  br label %choice.exit10

choice.exit10:                                    ; preds = %choice.else, %choice.exit29
  %choice.res36 = phi ptr [ %choice.res, %choice.exit29 ], [ %var.load35, %choice.else ]
  br label %choice.exit

str.eq.then:                                      ; preds = %choice.then9
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load14, i32 0, i32 1
  %eq.lhs.data22 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load17, i32 0, i32 1
  %eq.rhs.data23 = load ptr, ptr %eq.rhs.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data22, ptr %eq.rhs.data23, i64 %eq.lhs.len19)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %choice.then9
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %and.163.then, label %and.163.else

and.163.then:                                     ; preds = %str.eq.merge
  %var.load24 = load ptr, ptr %var.e, align 8
  %var.load25 = load ptr, ptr %var.fact, align 8
  %fld.gep26 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load25, i32 0, i32 1
  %call.res = call i1 @"typedopt::#same_scalar_type"(ptr %var.load24, ptr %fld.gep26)
  br label %and.163.exit

and.163.else:                                     ; preds = %str.eq.merge
  br label %and.163.exit

and.163.exit:                                     ; preds = %and.163.else, %and.163.then
  %and.163.phi = phi i1 [ %call.res, %and.163.then ], [ %str.eq.result, %and.163.else ]
  br i1 %and.163.phi, label %choice.then27, label %choice.else28

choice.then27:                                    ; preds = %and.163.exit
  %var.load30 = load ptr, ptr %var.e, align 8
  %var.load31 = load ptr, ptr %var.fact, align 8
  %fld.gep32 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load31, i32 0, i32 1
  %call.res33 = call ptr @"typedopt::#replace"(ptr %var.load30, ptr %fld.gep32)
  br label %choice.exit29

choice.else28:                                    ; preds = %and.163.exit
  %var.load34 = load ptr, ptr %var.e, align 8
  br label %choice.exit29

choice.exit29:                                    ; preds = %choice.else28, %choice.then27
  %choice.res = phi ptr [ %call.res33, %choice.then27 ], [ %var.load34, %choice.else28 ]
  br label %choice.exit10
}

declare i32 @memcmp(ptr, ptr, i64) #0

define internal ptr @"typedopt::#simplify_bin"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) #0 {
entry:
  %var.__ctor_arg_201 = alloca ptr, align 8
  %var._207 = alloca ptr, align 8
  %var.__ctor_arg_182 = alloca ptr, align 8
  %var.value = alloca i64, align 8
  %var.lv = alloca i64, align 8
  %var.n122 = alloca i64, align 8
  %var._121 = alloca i64, align 8
  %var._100 = alloca i64, align 8
  %var.r_const = alloca i1, align 1
  %var._80 = alloca i64, align 8
  %var.rv = alloca i64, align 8
  %var.n = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var.r = alloca ptr, align 8
  %var.l = alloca ptr, align 8
  %var.__ctor_arg_149 = alloca ptr, align 8
  %var.eligible = alloca i1, align 1
  %var.rhs = alloca ptr, align 8
  %var.lhs = alloca ptr, align 8
  %var.op = alloca ptr, align 8
  %var.orig = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.orig, align 8
  store ptr %2, ptr %var.op, align 8
  store ptr %3, ptr %var.lhs, align 8
  store ptr %4, ptr %var.rhs, align 8
  %var.load = load ptr, ptr %var.orig, align 8
  %call.res = call i1 @"typedopt::#is_int"(ptr %var.load)
  br i1 %call.res, label %and.164.then, label %and.164.else

and.164.then:                                     ; preds = %entry
  %var.load1 = load ptr, ptr %var.lhs, align 8
  %call.res2 = call i1 @"typedopt::#is_int"(ptr %var.load1)
  br label %and.164.exit

and.164.else:                                     ; preds = %entry
  br label %and.164.exit

and.164.exit:                                     ; preds = %and.164.else, %and.164.then
  %and.164.phi = phi i1 [ %call.res2, %and.164.then ], [ %call.res, %and.164.else ]
  br i1 %and.164.phi, label %and.165.then, label %and.165.else

and.165.then:                                     ; preds = %and.164.exit
  %var.load3 = load ptr, ptr %var.rhs, align 8
  %call.res4 = call i1 @"typedopt::#is_int"(ptr %var.load3)
  br label %and.165.exit

and.165.else:                                     ; preds = %and.164.exit
  br label %and.165.exit

and.165.exit:                                     ; preds = %and.165.else, %and.165.then
  %and.165.phi = phi i1 [ %call.res4, %and.165.then ], [ %and.164.phi, %and.165.else ]
  br i1 %and.165.phi, label %and.166.then, label %and.166.else

and.166.then:                                     ; preds = %and.165.exit
  %var.load5 = load ptr, ptr %var.op, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load5, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  %tag.match6 = icmp eq i64 %tag.id, 1
  %tag.or = or i1 %tag.match, %tag.match6
  %tag.match7 = icmp eq i64 %tag.id, 2
  %tag.or8 = or i1 %tag.or, %tag.match7
  %tag.match9 = icmp eq i64 %tag.id, 19
  %tag.or10 = or i1 %tag.or8, %tag.match9
  %tag.match11 = icmp eq i64 %tag.id, 20
  %tag.or12 = or i1 %tag.or10, %tag.match11
  %tag.match13 = icmp eq i64 %tag.id, 21
  %tag.or14 = or i1 %tag.or12, %tag.match13
  br i1 %tag.or14, label %choice.case, label %choice.next

and.166.else:                                     ; preds = %and.165.exit
  br label %and.166.exit

and.166.exit:                                     ; preds = %and.166.else, %choice.exit
  %and.166.phi = phi i1 [ %choice.res, %choice.exit ], [ %and.165.phi, %and.166.else ]
  store i1 %and.166.phi, ptr %var.eligible, align 1
  %var.load15 = load i1, ptr %var.eligible, align 1
  %nottmp = xor i1 %var.load15, true
  br i1 %nottmp, label %choice.then, label %choice.exit16

choice.exit:                                      ; preds = %choice.next, %choice.case
  %choice.res = phi i1 [ true, %choice.case ], [ false, %choice.next ]
  br label %and.166.exit

choice.case:                                      ; preds = %and.166.then
  br label %choice.exit

choice.next:                                      ; preds = %and.166.then
  br label %choice.exit

choice.then:                                      ; preds = %and.166.exit
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep17 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 7, ptr %tag.gep17, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load18 = load ptr, ptr %var.op, align 8
  %var.load19 = load ptr, ptr %var.lhs, align 8
  %var.load20 = load ptr, ptr %var.rhs, align 8
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load18, ptr %rec.fld, align 8
  %rec.fld22 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld22, ptr align 1 %var.load19, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld23 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld23, ptr align 1 %var.load20, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_149, align 8
  %var.load24 = load ptr, ptr %var.__ctor_arg_149, align 8
  %var.load25 = load ptr, ptr %var.orig, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load25, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load26 = load ptr, ptr %var.orig, align 8
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %var.load29 = load ptr, ptr %var.orig, align 8
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load29, i32 0, i32 3
  %var.load31 = load ptr, ptr %var.orig, align 8
  %fld.gep32 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load31, i32 0, i32 4
  %fld.load33 = load i64, ptr %fld.gep32, align 8
  %var.load34 = load ptr, ptr %var.orig, align 8
  %fld.gep35 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load34, i32 0, i32 5
  %fld.load36 = load i64, ptr %fld.gep35, align 8
  %arena.cur37 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc38 = call ptr @dva_arena_alloc(ptr %arena.cur37, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld39 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 0
  store ptr %var.load24, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 1
  store ptr %fld.load, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 2
  store ptr %fld.load28, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld42, ptr align 1 %fld.gep30, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld43 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 4
  store i64 %fld.load33, ptr %rec.fld43, align 8
  %rec.fld44 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc38, i32 0, i32 5
  store i64 %fld.load36, ptr %rec.fld44, align 8
  ret ptr %rec.alloc38

choice.exit16:                                    ; preds = %ret.dead, %and.166.exit
  %var.load45 = load ptr, ptr %var.ctx, align 8
  %var.load46 = load ptr, ptr %var.lhs, align 8
  %call.res47 = call ptr @"typedopt::#scalar_operand"(ptr %var.load45, ptr %var.load46)
  store ptr %call.res47, ptr %var.l, align 8
  %var.load48 = load ptr, ptr %var.ctx, align 8
  %var.load49 = load ptr, ptr %var.rhs, align 8
  %call.res50 = call ptr @"typedopt::#scalar_operand"(ptr %var.load48, ptr %var.load49)
  store ptr %call.res50, ptr %var.r, align 8
  %var.load51 = load ptr, ptr %var.r, align 8
  %fld.gep52 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load51, i32 0, i32 0
  %fld.load53 = load ptr, ptr %fld.gep52, align 8
  %tag.gep57 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 0
  %tag.id58 = load i64, ptr %tag.gep57, align 8
  %tag.match59 = icmp eq i64 %tag.id58, 0
  br i1 %tag.match59, label %choice.case55, label %choice.next56

ret.dead:                                         ; No predecessors!
  br label %choice.exit16

choice.exit54:                                    ; preds = %choice.next56, %pay.int.merge
  %choice.res62 = phi i64 [ %var.load61, %pay.int.merge ], [ 0, %choice.next56 ]
  store i64 %choice.res62, ptr %var.rv, align 8
  %var.load63 = load ptr, ptr %var.r, align 8
  %fld.gep64 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load63, i32 0, i32 0
  %fld.load65 = load ptr, ptr %fld.gep64, align 8
  %tag.gep69 = getelementptr inbounds { i64, ptr }, ptr %fld.load65, i32 0, i32 0
  %tag.id70 = load i64, ptr %tag.gep69, align 8
  %tag.match71 = icmp eq i64 %tag.id70, 0
  br i1 %tag.match71, label %choice.case67, label %choice.next68

choice.case55:                                    ; preds = %choice.exit16
  %pay.gep60 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep60, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next56:                                    ; preds = %choice.exit16
  br label %choice.exit54

pay.int.load:                                     ; preds = %choice.case55
  %pay.int.val = load i64, ptr %payload.ptr, align 8
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case55
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i64 [ %pay.int.val, %pay.int.load ], [ 0, %pay.int.nullbb ]
  store i64 %pay.int.phi, ptr %var._, align 8
  store i64 %pay.int.phi, ptr %var.n, align 8
  %var.load61 = load i64, ptr %var.n, align 8
  br label %choice.exit54

choice.exit66:                                    ; preds = %choice.next68, %pay.int.merge77
  %choice.res81 = phi i1 [ true, %pay.int.merge77 ], [ false, %choice.next68 ]
  store i1 %choice.res81, ptr %var.r_const, align 1
  %var.load82 = load i1, ptr %var.r_const, align 1
  br i1 %var.load82, label %and.167.then, label %and.167.else

choice.case67:                                    ; preds = %choice.exit54
  %pay.gep72 = getelementptr inbounds { i64, ptr }, ptr %fld.load65, i32 0, i32 1
  %payload.ptr73 = load ptr, ptr %pay.gep72, align 8
  %pay.int.null74 = icmp eq ptr %payload.ptr73, null
  br i1 %pay.int.null74, label %pay.int.nullbb76, label %pay.int.load75

choice.next68:                                    ; preds = %choice.exit54
  br label %choice.exit66

pay.int.load75:                                   ; preds = %choice.case67
  %pay.int.val78 = load i64, ptr %payload.ptr73, align 8
  br label %pay.int.merge77

pay.int.nullbb76:                                 ; preds = %choice.case67
  br label %pay.int.merge77

pay.int.merge77:                                  ; preds = %pay.int.nullbb76, %pay.int.load75
  %pay.int.phi79 = phi i64 [ %pay.int.val78, %pay.int.load75 ], [ 0, %pay.int.nullbb76 ]
  store i64 %pay.int.phi79, ptr %var._80, align 8
  br label %choice.exit66

and.167.then:                                     ; preds = %choice.exit66
  %var.load83 = load ptr, ptr %var.l, align 8
  %fld.gep84 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load83, i32 0, i32 0
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %tag.gep89 = getelementptr inbounds { i64, ptr }, ptr %fld.load85, i32 0, i32 0
  %tag.id90 = load i64, ptr %tag.gep89, align 8
  %tag.match91 = icmp eq i64 %tag.id90, 0
  br i1 %tag.match91, label %choice.case87, label %choice.next88

and.167.else:                                     ; preds = %choice.exit66
  br label %and.167.exit

and.167.exit:                                     ; preds = %and.167.else, %choice.exit86
  %and.167.phi = phi i1 [ %choice.res101, %choice.exit86 ], [ %var.load82, %and.167.else ]
  br i1 %and.167.phi, label %choice.then102, label %choice.exit103

choice.exit86:                                    ; preds = %choice.next88, %pay.int.merge97
  %choice.res101 = phi i1 [ true, %pay.int.merge97 ], [ false, %choice.next88 ]
  br label %and.167.exit

choice.case87:                                    ; preds = %and.167.then
  %pay.gep92 = getelementptr inbounds { i64, ptr }, ptr %fld.load85, i32 0, i32 1
  %payload.ptr93 = load ptr, ptr %pay.gep92, align 8
  %pay.int.null94 = icmp eq ptr %payload.ptr93, null
  br i1 %pay.int.null94, label %pay.int.nullbb96, label %pay.int.load95

choice.next88:                                    ; preds = %and.167.then
  br label %choice.exit86

pay.int.load95:                                   ; preds = %choice.case87
  %pay.int.val98 = load i64, ptr %payload.ptr93, align 8
  br label %pay.int.merge97

pay.int.nullbb96:                                 ; preds = %choice.case87
  br label %pay.int.merge97

pay.int.merge97:                                  ; preds = %pay.int.nullbb96, %pay.int.load95
  %pay.int.phi99 = phi i64 [ %pay.int.val98, %pay.int.load95 ], [ 0, %pay.int.nullbb96 ]
  store i64 %pay.int.phi99, ptr %var._100, align 8
  br label %choice.exit86

choice.then102:                                   ; preds = %and.167.exit
  %var.load104 = load ptr, ptr %var.l, align 8
  %fld.gep105 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load104, i32 0, i32 0
  %fld.load106 = load ptr, ptr %fld.gep105, align 8
  %tag.gep110 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 0
  %tag.id111 = load i64, ptr %tag.gep110, align 8
  %tag.match112 = icmp eq i64 %tag.id111, 0
  br i1 %tag.match112, label %choice.case108, label %choice.next109

choice.exit103:                                   ; preds = %ret.dead194, %and.167.exit
  %var.load195 = load i1, ptr %var.r_const, align 1
  br i1 %var.load195, label %and.168.then, label %and.168.else

choice.exit107:                                   ; preds = %choice.next109, %pay.int.merge118
  %choice.res124 = phi i64 [ %var.load123, %pay.int.merge118 ], [ 0, %choice.next109 ]
  store i64 %choice.res124, ptr %var.lv, align 8
  %var.load125 = load ptr, ptr %var.op, align 8
  %tag.gep129 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id130 = load i64, ptr %tag.gep129, align 8
  %tag.match131 = icmp eq i64 %tag.id130, 0
  br i1 %tag.match131, label %choice.case127, label %choice.next128

choice.case108:                                   ; preds = %choice.then102
  %pay.gep113 = getelementptr inbounds { i64, ptr }, ptr %fld.load106, i32 0, i32 1
  %payload.ptr114 = load ptr, ptr %pay.gep113, align 8
  %pay.int.null115 = icmp eq ptr %payload.ptr114, null
  br i1 %pay.int.null115, label %pay.int.nullbb117, label %pay.int.load116

choice.next109:                                   ; preds = %choice.then102
  br label %choice.exit107

pay.int.load116:                                  ; preds = %choice.case108
  %pay.int.val119 = load i64, ptr %payload.ptr114, align 8
  br label %pay.int.merge118

pay.int.nullbb117:                                ; preds = %choice.case108
  br label %pay.int.merge118

pay.int.merge118:                                 ; preds = %pay.int.nullbb117, %pay.int.load116
  %pay.int.phi120 = phi i64 [ %pay.int.val119, %pay.int.load116 ], [ 0, %pay.int.nullbb117 ]
  store i64 %pay.int.phi120, ptr %var._121, align 8
  store i64 %pay.int.phi120, ptr %var.n122, align 8
  %var.load123 = load i64, ptr %var.n122, align 8
  br label %choice.exit107

choice.exit126:                                   ; preds = %choice.next156, %choice.case155, %choice.case148, %choice.case141, %choice.case134, %choice.case127
  %choice.res164 = phi i64 [ %addtmp, %choice.case127 ], [ %subtmp, %choice.case134 ], [ %multmp, %choice.case141 ], [ %bandtmp, %choice.case148 ], [ %bortmp, %choice.case155 ], [ %bxortmp, %choice.next156 ]
  store i64 %choice.res164, ptr %var.value, align 8
  %arena.cur165 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc166 = call ptr @dva_arena_alloc(ptr %arena.cur165, i64 16)
  %tag.gep167 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc166, i32 0, i32 0
  store i64 0, ptr %tag.gep167, align 8
  %pay.gep168 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc166, i32 0, i32 1
  %var.load169 = load i64, ptr %var.value, align 8
  %arena.cur170 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i64 %var.load169, ptr %enum.pay.alloc, align 8
  store ptr %enum.pay.alloc, ptr %pay.gep168, align 8
  store ptr %enum.alloc166, ptr %var.__ctor_arg_182, align 8
  %var.load171 = load ptr, ptr %var.__ctor_arg_182, align 8
  %var.load172 = load ptr, ptr %var.orig, align 8
  %fld.gep173 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load172, i32 0, i32 1
  %fld.load174 = load ptr, ptr %fld.gep173, align 8
  %var.load175 = load ptr, ptr %var.orig, align 8
  %fld.gep176 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load175, i32 0, i32 2
  %fld.load177 = load ptr, ptr %fld.gep176, align 8
  %var.load178 = load ptr, ptr %var.orig, align 8
  %fld.gep179 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load178, i32 0, i32 3
  %var.load180 = load ptr, ptr %var.orig, align 8
  %fld.gep181 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load180, i32 0, i32 4
  %fld.load182 = load i64, ptr %fld.gep181, align 8
  %var.load183 = load ptr, ptr %var.orig, align 8
  %fld.gep184 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load183, i32 0, i32 5
  %fld.load185 = load i64, ptr %fld.gep184, align 8
  %arena.cur186 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld188 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 0
  store ptr %var.load171, ptr %rec.fld188, align 8
  %rec.fld189 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 1
  store ptr %fld.load174, ptr %rec.fld189, align 8
  %rec.fld190 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 2
  store ptr %fld.load177, ptr %rec.fld190, align 8
  %rec.fld191 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld191, ptr align 1 %fld.gep179, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld192 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 4
  store i64 %fld.load182, ptr %rec.fld192, align 8
  %rec.fld193 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc187, i32 0, i32 5
  store i64 %fld.load185, ptr %rec.fld193, align 8
  ret ptr %rec.alloc187

choice.case127:                                   ; preds = %choice.exit107
  %var.load132 = load i64, ptr %var.lv, align 8
  %var.load133 = load i64, ptr %var.rv, align 8
  %addtmp = add i64 %var.load132, %var.load133
  br label %choice.exit126

choice.next128:                                   ; preds = %choice.exit107
  %tag.gep136 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id137 = load i64, ptr %tag.gep136, align 8
  %tag.match138 = icmp eq i64 %tag.id137, 1
  br i1 %tag.match138, label %choice.case134, label %choice.next135

choice.case134:                                   ; preds = %choice.next128
  %var.load139 = load i64, ptr %var.lv, align 8
  %var.load140 = load i64, ptr %var.rv, align 8
  %subtmp = sub i64 %var.load139, %var.load140
  br label %choice.exit126

choice.next135:                                   ; preds = %choice.next128
  %tag.gep143 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id144 = load i64, ptr %tag.gep143, align 8
  %tag.match145 = icmp eq i64 %tag.id144, 2
  br i1 %tag.match145, label %choice.case141, label %choice.next142

choice.case141:                                   ; preds = %choice.next135
  %var.load146 = load i64, ptr %var.lv, align 8
  %var.load147 = load i64, ptr %var.rv, align 8
  %multmp = mul i64 %var.load146, %var.load147
  br label %choice.exit126

choice.next142:                                   ; preds = %choice.next135
  %tag.gep150 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id151 = load i64, ptr %tag.gep150, align 8
  %tag.match152 = icmp eq i64 %tag.id151, 19
  br i1 %tag.match152, label %choice.case148, label %choice.next149

choice.case148:                                   ; preds = %choice.next142
  %var.load153 = load i64, ptr %var.lv, align 8
  %var.load154 = load i64, ptr %var.rv, align 8
  %bandtmp = and i64 %var.load153, %var.load154
  br label %choice.exit126

choice.next149:                                   ; preds = %choice.next142
  %tag.gep157 = getelementptr inbounds { i64, ptr }, ptr %var.load125, i32 0, i32 0
  %tag.id158 = load i64, ptr %tag.gep157, align 8
  %tag.match159 = icmp eq i64 %tag.id158, 20
  br i1 %tag.match159, label %choice.case155, label %choice.next156

choice.case155:                                   ; preds = %choice.next149
  %var.load160 = load i64, ptr %var.lv, align 8
  %var.load161 = load i64, ptr %var.rv, align 8
  %bortmp = or i64 %var.load160, %var.load161
  br label %choice.exit126

choice.next156:                                   ; preds = %choice.next149
  %var.load162 = load i64, ptr %var.lv, align 8
  %var.load163 = load i64, ptr %var.rv, align 8
  %bxortmp = xor i64 %var.load162, %var.load163
  br label %choice.exit126

ret.dead194:                                      ; No predecessors!
  br label %choice.exit103

and.168.then:                                     ; preds = %choice.exit103
  %var.load196 = load ptr, ptr %var.l, align 8
  %fld.gep197 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load196, i32 0, i32 0
  %fld.load198 = load ptr, ptr %fld.gep197, align 8
  %tag.gep202 = getelementptr inbounds { i64, ptr }, ptr %fld.load198, i32 0, i32 0
  %tag.id203 = load i64, ptr %tag.gep202, align 8
  %tag.match204 = icmp eq i64 %tag.id203, 6
  br i1 %tag.match204, label %choice.case200, label %choice.next201

and.168.else:                                     ; preds = %choice.exit103
  br label %and.168.exit

and.168.exit:                                     ; preds = %and.168.else, %choice.exit199
  %and.168.phi = phi i1 [ %choice.res208, %choice.exit199 ], [ %var.load195, %and.168.else ]
  br i1 %and.168.phi, label %and.169.then, label %and.169.else

choice.exit199:                                   ; preds = %choice.next201, %choice.case200
  %choice.res208 = phi i1 [ true, %choice.case200 ], [ false, %choice.next201 ]
  br label %and.168.exit

choice.case200:                                   ; preds = %and.168.then
  %pay.gep205 = getelementptr inbounds { i64, ptr }, ptr %fld.load198, i32 0, i32 1
  %payload.ptr206 = load ptr, ptr %pay.gep205, align 8
  store ptr %payload.ptr206, ptr %var._207, align 8
  br label %choice.exit199

choice.next201:                                   ; preds = %and.168.then
  br label %choice.exit199

and.169.then:                                     ; preds = %and.168.exit
  %var.load209 = load i64, ptr %var.rv, align 8
  %cmptmp = icmp eq i64 %var.load209, 0
  br i1 %cmptmp, label %and.170.then, label %and.170.else

and.169.else:                                     ; preds = %and.168.exit
  br label %and.169.exit

and.169.exit:                                     ; preds = %and.169.else, %or.171.exit
  %and.169.phi = phi i1 [ %or.171.phi, %or.171.exit ], [ %and.168.phi, %and.169.else ]
  br i1 %and.169.phi, label %choice.then234, label %choice.exit235

and.170.then:                                     ; preds = %and.169.then
  %var.load210 = load ptr, ptr %var.op, align 8
  %tag.gep214 = getelementptr inbounds { i64, ptr }, ptr %var.load210, i32 0, i32 0
  %tag.id215 = load i64, ptr %tag.gep214, align 8
  %tag.match216 = icmp eq i64 %tag.id215, 0
  %tag.match217 = icmp eq i64 %tag.id215, 1
  %tag.or218 = or i1 %tag.match216, %tag.match217
  %tag.match219 = icmp eq i64 %tag.id215, 20
  %tag.or220 = or i1 %tag.or218, %tag.match219
  %tag.match221 = icmp eq i64 %tag.id215, 21
  %tag.or222 = or i1 %tag.or220, %tag.match221
  br i1 %tag.or222, label %choice.case212, label %choice.next213

and.170.else:                                     ; preds = %and.169.then
  br label %and.170.exit

and.170.exit:                                     ; preds = %and.170.else, %choice.exit211
  %and.170.phi = phi i1 [ %choice.res223, %choice.exit211 ], [ %cmptmp, %and.170.else ]
  br i1 %and.170.phi, label %or.171.then, label %or.171.else

choice.exit211:                                   ; preds = %choice.next213, %choice.case212
  %choice.res223 = phi i1 [ true, %choice.case212 ], [ false, %choice.next213 ]
  br label %and.170.exit

choice.case212:                                   ; preds = %and.170.then
  br label %choice.exit211

choice.next213:                                   ; preds = %and.170.then
  br label %choice.exit211

or.171.then:                                      ; preds = %and.170.exit
  br label %or.171.exit

or.171.else:                                      ; preds = %and.170.exit
  %var.load224 = load i64, ptr %var.rv, align 8
  %cmptmp225 = icmp eq i64 %var.load224, 1
  br i1 %cmptmp225, label %and.172.then, label %and.172.else

or.171.exit:                                      ; preds = %and.172.exit, %or.171.then
  %or.171.phi = phi i1 [ %and.170.phi, %or.171.then ], [ %and.172.phi, %and.172.exit ]
  br label %and.169.exit

and.172.then:                                     ; preds = %or.171.else
  %var.load226 = load ptr, ptr %var.op, align 8
  %tag.gep230 = getelementptr inbounds { i64, ptr }, ptr %var.load226, i32 0, i32 0
  %tag.id231 = load i64, ptr %tag.gep230, align 8
  %tag.match232 = icmp eq i64 %tag.id231, 2
  br i1 %tag.match232, label %choice.case228, label %choice.next229

and.172.else:                                     ; preds = %or.171.else
  br label %and.172.exit

and.172.exit:                                     ; preds = %and.172.else, %choice.exit227
  %and.172.phi = phi i1 [ %choice.res233, %choice.exit227 ], [ %cmptmp225, %and.172.else ]
  br label %or.171.exit

choice.exit227:                                   ; preds = %choice.next229, %choice.case228
  %choice.res233 = phi i1 [ true, %choice.case228 ], [ false, %choice.next229 ]
  br label %and.172.exit

choice.case228:                                   ; preds = %and.172.then
  br label %choice.exit227

choice.next229:                                   ; preds = %and.172.then
  br label %choice.exit227

choice.then234:                                   ; preds = %and.169.exit
  %var.load236 = load ptr, ptr %var.orig, align 8
  %var.load237 = load ptr, ptr %var.l, align 8
  %call.res238 = call ptr @"typedopt::#replace"(ptr %var.load236, ptr %var.load237)
  ret ptr %call.res238

choice.exit235:                                   ; preds = %ret.dead239, %and.169.exit
  %arena.cur240 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc241 = call ptr @dva_arena_alloc(ptr %arena.cur240, i64 16)
  %tag.gep242 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc241, i32 0, i32 0
  store i64 7, ptr %tag.gep242, align 8
  %pay.gep243 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc241, i32 0, i32 1
  %var.load244 = load ptr, ptr %var.op, align 8
  %var.load245 = load ptr, ptr %var.l, align 8
  %var.load246 = load ptr, ptr %var.r, align 8
  %arena.cur247 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc248 = call ptr @dva_arena_alloc(ptr %arena.cur247, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld249 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc248, i32 0, i32 0
  store ptr %var.load244, ptr %rec.fld249, align 8
  %rec.fld250 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc248, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld250, ptr align 1 %var.load245, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld251 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc248, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld251, ptr align 1 %var.load246, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc248, ptr %pay.gep243, align 8
  store ptr %enum.alloc241, ptr %var.__ctor_arg_201, align 8
  %var.load252 = load ptr, ptr %var.__ctor_arg_201, align 8
  %var.load253 = load ptr, ptr %var.orig, align 8
  %fld.gep254 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load253, i32 0, i32 1
  %fld.load255 = load ptr, ptr %fld.gep254, align 8
  %var.load256 = load ptr, ptr %var.orig, align 8
  %fld.gep257 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load256, i32 0, i32 2
  %fld.load258 = load ptr, ptr %fld.gep257, align 8
  %var.load259 = load ptr, ptr %var.orig, align 8
  %fld.gep260 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load259, i32 0, i32 3
  %var.load261 = load ptr, ptr %var.orig, align 8
  %fld.gep262 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load261, i32 0, i32 4
  %fld.load263 = load i64, ptr %fld.gep262, align 8
  %var.load264 = load ptr, ptr %var.orig, align 8
  %fld.gep265 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load264, i32 0, i32 5
  %fld.load266 = load i64, ptr %fld.gep265, align 8
  %arena.cur267 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc268 = call ptr @dva_arena_alloc(ptr %arena.cur267, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld269 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 0
  store ptr %var.load252, ptr %rec.fld269, align 8
  %rec.fld270 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 1
  store ptr %fld.load255, ptr %rec.fld270, align 8
  %rec.fld271 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 2
  store ptr %fld.load258, ptr %rec.fld271, align 8
  %rec.fld272 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld272, ptr align 1 %fld.gep260, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld273 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 4
  store i64 %fld.load263, ptr %rec.fld273, align 8
  %rec.fld274 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc268, i32 0, i32 5
  store i64 %fld.load266, ptr %rec.fld274, align 8
  ret ptr %rec.alloc268

ret.dead239:                                      ; No predecessors!
  br label %choice.exit235
}

define internal ptr @"typedopt::#simplify_member"(ptr %0, ptr %1, ptr %2, i64 %3) #0 {
entry:
  %var.value = alloca ptr, align 8
  %var._117 = alloca ptr, align 8
  %var._i116 = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.175 = alloca i64, align 8
  %loop.idx.175 = alloca i64, align 8
  %var.fields = alloca ptr, align 8
  %var._86 = alloca ptr, align 8
  %var.plain = alloca i1, align 1
  %var.r = alloca ptr, align 8
  %var._59 = alloca ptr, align 8
  %var.position = alloca i64, align 8
  %var._46 = alloca i64, align 8
  %var._ = alloca i64, align 8
  %var._i = alloca i64, align 8
  %var.byte = alloca i64, align 8
  %loop.step.173 = alloca i64, align 8
  %loop.idx.173 = alloca i64, align 8
  %var.fallback = alloca ptr, align 8
  %var.__ctor_arg_207 = alloca ptr, align 8
  %var.idx = alloca i64, align 8
  %var.name = alloca ptr, align 8
  %var.target = alloca ptr, align 8
  %var.orig = alloca ptr, align 8
  store ptr %0, ptr %var.orig, align 8
  store ptr %1, ptr %var.target, align 8
  store ptr %2, ptr %var.name, align 8
  store i64 %3, ptr %var.idx, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 11, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load = load ptr, ptr %var.target, align 8
  %var.load1 = load ptr, ptr %var.name, align 8
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
  store ptr %enum.alloc, ptr %var.__ctor_arg_207, align 8
  %var.load6 = load ptr, ptr %var.__ctor_arg_207, align 8
  %var.load7 = load ptr, ptr %var.orig, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load7, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load8 = load ptr, ptr %var.orig, align 8
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load8, i32 0, i32 2
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %var.load11 = load ptr, ptr %var.orig, align 8
  %fld.gep12 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load11, i32 0, i32 3
  %var.load13 = load ptr, ptr %var.orig, align 8
  %fld.gep14 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load13, i32 0, i32 4
  %fld.load15 = load i64, ptr %fld.gep14, align 8
  %var.load16 = load ptr, ptr %var.orig, align 8
  %fld.gep17 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load16, i32 0, i32 5
  %fld.load18 = load i64, ptr %fld.gep17, align 8
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld21 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 0
  store ptr %var.load6, ptr %rec.fld21, align 8
  %rec.fld22 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 1
  store ptr %fld.load, ptr %rec.fld22, align 8
  %rec.fld23 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 2
  store ptr %fld.load10, ptr %rec.fld23, align 8
  %rec.fld24 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld24, ptr align 1 %fld.gep12, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld25 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 4
  store i64 %fld.load15, ptr %rec.fld25, align 8
  %rec.fld26 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc20, i32 0, i32 5
  store i64 %fld.load18, ptr %rec.fld26, align 8
  store ptr %rec.alloc20, ptr %var.fallback, align 8
  %var.load27 = load ptr, ptr %var.name, align 8
  %str.len = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 0
  %str.len28 = load i64, ptr %str.len, align 8
  %str.len29 = and i64 %str.len28, 281474976710655
  %s.read.data = getelementptr inbounds { i64, ptr }, ptr %var.load27, i32 0, i32 1
  %s.read.data30 = load ptr, ptr %s.read.data, align 8
  store i64 0, ptr %loop.idx.173, align 8
  br label %loop.header.173

loop.header.173:                                  ; preds = %loop.latch.173, %entry
  %counter.load = load i64, ptr %loop.idx.173, align 8
  %loop.cond = icmp slt i64 %counter.load, %str.len29
  br i1 %loop.cond, label %loop.body.173, label %loop.exit.nat.173

loop.body.173:                                    ; preds = %loop.header.173
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.173, align 8
  %s.byte.gep = getelementptr i8, ptr %s.read.data30, i64 %counter.load
  %s.byte = load i8, ptr %s.byte.gep, align 1
  %s.byte.val = zext i8 %s.byte to i64
  store i64 %loop.rel.i, ptr %var._i, align 8
  store i64 %s.byte.val, ptr %var._, align 8
  store i64 %s.byte.val, ptr %var.byte, align 8
  %var.load31 = load i64, ptr %var.byte, align 8
  %call.res = call i1 @"str::is_digit"(i64 %var.load31)
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

loop.exit.nat.173:                                ; preds = %loop.header.173
  br label %loop.exit.173

loop.latch.173:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.173, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.173, align 8
  br label %loop.header.173

loop.exit.173:                                    ; preds = %loop.exit.nat.173
  %var.load33 = load ptr, ptr %var.name, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 0
  %eq.lhs.len34 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len35 = and i64 %eq.lhs.len34, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len36 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len35, %eq.rhs.len36
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

choice.then:                                      ; preds = %loop.body.173
  %var.load32 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load32

choice.exit:                                      ; preds = %ret.dead, %loop.body.173
  br label %loop.latch.173

ret.dead:                                         ; No predecessors!
  br label %choice.exit

str.eq.then:                                      ; preds = %loop.exit.173
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %var.load33, i32 0, i32 1
  %eq.lhs.data37 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data37, ptr %eq.rhs.data, i64 %eq.lhs.len35)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %loop.exit.173
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  br i1 %str.eq.result, label %choice.then38, label %choice.else

choice.then38:                                    ; preds = %str.eq.merge
  %var.load40 = load i64, ptr %var.idx, align 8
  br label %choice.exit39

choice.else:                                      ; preds = %str.eq.merge
  %var.load41 = load ptr, ptr %var.name, align 8
  %call.res42 = call { i1, i64 } @"str::parse_int"(ptr %var.load41)
  %ram.tag = extractvalue { i1, i64 } %call.res42, 0
  br i1 %ram.tag, label %choice.then43, label %choice.else44

choice.exit39:                                    ; preds = %choice.exit45, %choice.then38
  %choice.res47 = phi i64 [ %var.load40, %choice.then38 ], [ %choice.res, %choice.exit45 ]
  store i64 %choice.res47, ptr %var.position, align 8
  %var.load48 = load i64, ptr %var.position, align 8
  %cmptmp = icmp slt i64 %var.load48, 0
  br i1 %cmptmp, label %choice.then49, label %choice.exit50

choice.then43:                                    ; preds = %choice.else
  %ram.pay = extractvalue { i1, i64 } %call.res42, 1
  store i64 %ram.pay, ptr %var._46, align 8
  br label %choice.exit45

choice.else44:                                    ; preds = %choice.else
  br label %choice.exit45

choice.exit45:                                    ; preds = %choice.else44, %choice.then43
  %choice.res = phi i64 [ %ram.pay, %choice.then43 ], [ -1, %choice.else44 ]
  br label %choice.exit39

choice.then49:                                    ; preds = %choice.exit39
  %var.load51 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load51

choice.exit50:                                    ; preds = %ret.dead52, %choice.exit39
  %var.load53 = load ptr, ptr %var.target, align 8
  %fld.gep54 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load53, i32 0, i32 2
  %fld.load55 = load ptr, ptr %fld.gep54, align 8
  %tag.gep57 = getelementptr inbounds { i64, ptr }, ptr %fld.load55, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep57, align 8
  %tag.match = icmp eq i64 %tag.id, 2
  br i1 %tag.match, label %choice.case, label %choice.next

ret.dead52:                                       ; No predecessors!
  br label %choice.exit50

choice.exit56:                                    ; preds = %choice.next, %and.174.exit
  %choice.res68 = phi i1 [ %and.174.phi, %and.174.exit ], [ false, %choice.next ]
  store i1 %choice.res68, ptr %var.plain, align 1
  %var.load69 = load i1, ptr %var.plain, align 1
  %nottmp70 = xor i1 %var.load69, true
  br i1 %nottmp70, label %choice.then71, label %choice.exit72

choice.case:                                      ; preds = %choice.exit50
  %pay.gep58 = getelementptr inbounds { i64, ptr }, ptr %fld.load55, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep58, align 8
  store ptr %payload.ptr, ptr %var._59, align 8
  store ptr %payload.ptr, ptr %var.r, align 8
  %var.load60 = load ptr, ptr %var.r, align 8
  %fld.gep61 = getelementptr inbounds { ptr, i1, i1, ptr, i64, i1 }, ptr %var.load60, i32 0, i32 1
  %fld.load62 = load i1, ptr %fld.gep61, align 1
  %nottmp63 = xor i1 %fld.load62, true
  br i1 %nottmp63, label %and.174.then, label %and.174.else

choice.next:                                      ; preds = %choice.exit50
  br label %choice.exit56

and.174.then:                                     ; preds = %choice.case
  %var.load64 = load ptr, ptr %var.r, align 8
  %fld.gep65 = getelementptr inbounds { ptr, i1, i1, ptr, i64, i1 }, ptr %var.load64, i32 0, i32 5
  %fld.load66 = load i1, ptr %fld.gep65, align 1
  %nottmp67 = xor i1 %fld.load66, true
  br label %and.174.exit

and.174.else:                                     ; preds = %choice.case
  br label %and.174.exit

and.174.exit:                                     ; preds = %and.174.else, %and.174.then
  %and.174.phi = phi i1 [ %nottmp67, %and.174.then ], [ %nottmp63, %and.174.else ]
  br label %choice.exit56

choice.then71:                                    ; preds = %choice.exit56
  %var.load73 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load73

choice.exit72:                                    ; preds = %ret.dead74, %choice.exit56
  %var.load75 = load ptr, ptr %var.target, align 8
  %fld.gep76 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load75, i32 0, i32 0
  %fld.load77 = load ptr, ptr %fld.gep76, align 8
  %tag.gep81 = getelementptr inbounds { i64, ptr }, ptr %fld.load77, i32 0, i32 0
  %tag.id82 = load i64, ptr %tag.gep81, align 8
  %tag.match83 = icmp eq i64 %tag.id82, 10
  br i1 %tag.match83, label %choice.case79, label %choice.next80

ret.dead74:                                       ; No predecessors!
  br label %choice.exit72

choice.exit78:                                    ; preds = %choice.next80, %choice.exit193
  %choice.res200 = phi ptr [ %choice.res198, %choice.exit193 ], [ %var.load199, %choice.next80 ]
  ret ptr %choice.res200

choice.case79:                                    ; preds = %choice.exit72
  %pay.gep84 = getelementptr inbounds { i64, ptr }, ptr %fld.load77, i32 0, i32 1
  %payload.ptr85 = load ptr, ptr %pay.gep84, align 8
  store ptr %payload.ptr85, ptr %var._86, align 8
  store ptr %payload.ptr85, ptr %var.fields, align 8
  %var.load87 = load i64, ptr %var.position, align 8
  %var.load88 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next80:                                    ; preds = %choice.exit72
  %var.load199 = load ptr, ptr %var.fallback, align 8
  br label %choice.exit78

a.create:                                         ; preds = %choice.case79
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 24)
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create90, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.create90, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case79
  %a.load2 = load ptr, ptr %var.fields, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %a.len.query92 = load i64, ptr %a.len.query, align 8
  %cmptmp93 = icmp sge i64 %var.load87, %a.len.query92
  br i1 %cmptmp93, label %choice.then94, label %choice.exit95

choice.then94:                                    ; preds = %a.after
  %var.load96 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load96

choice.exit95:                                    ; preds = %ret.dead97, %a.after
  %var.load98 = load ptr, ptr %var.fields, align 8
  %a.load99 = load ptr, ptr %var.fields, align 8
  %a.null100 = icmp eq ptr %a.load99, null
  br i1 %a.null100, label %a.create101, label %a.after102

ret.dead97:                                       ; No predecessors!
  br label %choice.exit95

a.create101:                                      ; preds = %choice.exit95
  %arena.cur103 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create104 = call ptr @dva_arena_alloc(ptr %arena.cur103, i64 24)
  %arena.cur105 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf106 = call ptr @dva_arena_alloc(ptr %arena.cur105, i64 128)
  %a.len.gep107 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create104, i32 0, i32 0
  store i64 0, ptr %a.len.gep107, align 8
  %a.data.gep108 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create104, i32 0, i32 1
  store ptr %a.buf106, ptr %a.data.gep108, align 8
  %a.cap.gep109 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create104, i32 0, i32 2
  store i64 16, ptr %a.cap.gep109, align 8
  store ptr %a.create104, ptr %var.fields, align 8
  br label %a.after102

a.after102:                                       ; preds = %a.create101, %choice.exit95
  %a.load2110 = load ptr, ptr %var.fields, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2110, i32 0, i32 0
  %arr.cycle.len111 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2110, i32 0, i32 1
  %arr.cycle.data112 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.175, align 8
  %cycle.prev.u = load ptr, ptr %var._86, align 8
  br label %loop.header.175

loop.header.175:                                  ; preds = %loop.latch.175, %a.after102
  %counter.load113 = load i64, ptr %loop.idx.175, align 8
  %loop.cond114 = icmp slt i64 %counter.load113, %arr.cycle.len111
  br i1 %loop.cond114, label %loop.body.175, label %loop.exit.nat.175

loop.body.175:                                    ; preds = %loop.header.175
  %loop.rel.i115 = sub i64 %counter.load113, 0
  store i64 1, ptr %loop.step.175, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data112, i64 %counter.load113
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i115, ptr %var._i116, align 8
  store ptr %slot.i2p, ptr %var._117, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  %var.load118 = load ptr, ptr %var.f, align 8
  %fld.gep119 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load118, i32 0, i32 0
  %fld.load120 = load ptr, ptr %fld.gep119, align 8
  %eq.lhs.len121 = getelementptr inbounds { i64, ptr }, ptr %fld.load120, i32 0, i32 0
  %eq.lhs.len122 = load i64, ptr %eq.lhs.len121, align 8
  %eq.lhs.len123 = and i64 %eq.lhs.len122, 281474976710655
  %eq.rhs.len124 = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len125 = and i64 %eq.rhs.len124, 281474976710655
  %eq.len126 = icmp eq i64 %eq.lhs.len123, %eq.rhs.len125
  br i1 %eq.len126, label %str.eq.then127, label %str.eq.else128

loop.exit.nat.175:                                ; preds = %loop.header.175
  br label %loop.exit.175

loop.latch.175:                                   ; preds = %choice.exit141
  %step.val144 = load i64, ptr %loop.step.175, align 8
  %loop.next145 = add i64 %counter.load113, %step.val144
  store i64 %loop.next145, ptr %loop.idx.175, align 8
  br label %loop.header.175

loop.exit.175:                                    ; preds = %loop.exit.nat.175
  store ptr %cycle.prev.u, ptr %var._86, align 8
  %var.load146 = load ptr, ptr %var.fields, align 8
  %a.load147 = load ptr, ptr %var.fields, align 8
  %a.null148 = icmp eq ptr %a.load147, null
  br i1 %a.null148, label %a.create149, label %a.after150

str.eq.then127:                                   ; preds = %loop.body.175
  %eq.lhs.data130 = getelementptr inbounds { i64, ptr }, ptr %fld.load120, i32 0, i32 1
  %eq.lhs.data131 = load ptr, ptr %eq.lhs.data130, align 8
  %eq.rhs.data132 = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp133 = call i32 @memcmp(ptr %eq.lhs.data131, ptr %eq.rhs.data132, i64 %eq.lhs.len123)
  %eq.cmp.zero134 = icmp eq i32 %eq.memcmp133, 0
  br label %str.eq.merge129

str.eq.else128:                                   ; preds = %loop.body.175
  br label %str.eq.merge129

str.eq.merge129:                                  ; preds = %str.eq.else128, %str.eq.then127
  %str.eq.result135 = phi i1 [ %eq.cmp.zero134, %str.eq.then127 ], [ false, %str.eq.else128 ]
  %str.neq = xor i1 %str.eq.result135, true
  br i1 %str.neq, label %or.176.then, label %or.176.else

or.176.then:                                      ; preds = %str.eq.merge129
  br label %or.176.exit

or.176.else:                                      ; preds = %str.eq.merge129
  %var.load136 = load ptr, ptr %var.f, align 8
  %fld.gep137 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load136, i32 0, i32 1
  %call.res138 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep137)
  %nottmp139 = xor i1 %call.res138, true
  br label %or.176.exit

or.176.exit:                                      ; preds = %or.176.else, %or.176.then
  %or.176.phi = phi i1 [ %str.neq, %or.176.then ], [ %nottmp139, %or.176.else ]
  br i1 %or.176.phi, label %choice.then140, label %choice.exit141

choice.then140:                                   ; preds = %or.176.exit
  %var.load142 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load142

choice.exit141:                                   ; preds = %ret.dead143, %or.176.exit
  br label %loop.latch.175

ret.dead143:                                      ; No predecessors!
  br label %choice.exit141

a.create149:                                      ; preds = %loop.exit.175
  %arena.cur151 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create152 = call ptr @dva_arena_alloc(ptr %arena.cur151, i64 24)
  %arena.cur153 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf154 = call ptr @dva_arena_alloc(ptr %arena.cur153, i64 128)
  %a.len.gep155 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create152, i32 0, i32 0
  store i64 0, ptr %a.len.gep155, align 8
  %a.data.gep156 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create152, i32 0, i32 1
  store ptr %a.buf154, ptr %a.data.gep156, align 8
  %a.cap.gep157 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create152, i32 0, i32 2
  store i64 16, ptr %a.cap.gep157, align 8
  store ptr %a.create152, ptr %var.fields, align 8
  br label %a.after150

a.after150:                                       ; preds = %a.create149, %loop.exit.175
  %a.load2158 = load ptr, ptr %var.fields, align 8
  %var.load159 = load i64, ptr %var.position, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2158, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after150
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2158, i32 0, i32 0
  %a.rd.len160 = load i64, ptr %a.rd.len, align 8
  %a.rd.ge0 = icmp sge i64 %var.load159, 0
  %a.rd.lt = icmp slt i64 %var.load159, %a.rd.len160
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2158, i32 0, i32 1
  %a.rd.data161 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data161, i64 %var.load159
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after150
  %arena.cur162 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur162, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 88, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 37, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur163 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc164 = call ptr @dva_arena_alloc(ptr %arena.cur163, i64 56)
  %err.code.gep165 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 0
  store i64 4011, ptr %err.code.gep165, align 8
  %err.msg.gep166 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep166, align 8
  %err.file.gep167 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep167, align 8
  %err.line.gep168 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 3
  store i64 88, ptr %err.line.gep168, align 8
  %err.col.gep169 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 4
  store i64 37, ptr %err.col.gep169, align 8
  %err.ctx.gep170 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc164, i32 0, i32 5
  %err.ctx0.gep171 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep170, i32 0, i32 0
  store i64 %var.load159, ptr %err.ctx0.gep171, align 8
  %err.ctx1.gep172 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep170, i32 0, i32 1
  store i64 %a.rd.len160, ptr %err.ctx1.gep172, align 8
  %err.p2i173 = ptrtoint ptr %err.alloc164 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i173, %a.rd.err.oob ]
  %ram.tag174 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay175 = insertvalue { i1, i64 } %ram.tag174, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay175, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.177, label %unwrap.abort.177

unwrap.pos.177:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay175, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  %fld.gep187 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %pay.ptr, i32 0, i32 1
  store ptr %fld.gep187, ptr %var.value, align 8
  %var.load188 = load ptr, ptr %var.orig, align 8
  %var.load189 = load ptr, ptr %var.value, align 8
  %call.res190 = call i1 @"typedopt::#same_scalar_type"(ptr %var.load188, ptr %var.load189)
  br i1 %call.res190, label %choice.then191, label %choice.else192

unwrap.abort.177:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay175, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep176 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep176, align 8
  %err.msg.gep177 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep177, align 8
  %err.file.gep178 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep178, align 8
  %err.line.gep179 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep179, align 8
  %err.col.gep180 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep180, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len181 = load i64, ptr %err.msg.len, align 8
  %err.msg.len182 = and i64 %err.msg.len181, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len182 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data183 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len184 = load i64, ptr %err.file.len, align 8
  %err.file.len185 = and i64 %err.file.len184, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len185 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data186 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.177
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.177
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data183, i32 %err.file.len32, ptr %err.file.data186, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

choice.then191:                                   ; preds = %unwrap.pos.177
  %var.load194 = load ptr, ptr %var.orig, align 8
  %var.load195 = load ptr, ptr %var.value, align 8
  %call.res196 = call ptr @"typedopt::#replace"(ptr %var.load194, ptr %var.load195)
  br label %choice.exit193

choice.else192:                                   ; preds = %unwrap.pos.177
  %var.load197 = load ptr, ptr %var.fallback, align 8
  br label %choice.exit193

choice.exit193:                                   ; preds = %choice.else192, %choice.then191
  %choice.res198 = phi ptr [ %call.res196, %choice.then191 ], [ %var.load197, %choice.else192 ]
  br label %choice.exit78
}

declare i1 @"str::is_digit"(i64) #0

declare { i1, i64 } @"str::parse_int"(ptr) #0

declare i32 @pthread_create(ptr, ptr, ptr, ptr)

declare i32 @pthread_join(i64, ptr)

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define internal ptr @"typedopt::#rewrite_list"(ptr %0, ptr %1) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.179 = alloca i64, align 8
  %loop.idx.179 = alloca i64, align 8
  %var._map_out_525 = alloca ptr, align 8
  %var.exprs = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.exprs, align 8
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
  store ptr %a.new, ptr %var._map_out_525, align 8
  %var.load = load ptr, ptr %var.exprs, align 8
  %a.load = load ptr, ptr %var.exprs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create3 = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf5 = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 128)
  %a.len.gep6 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 0
  store i64 0, ptr %a.len.gep6, align 8
  %a.data.gep7 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 1
  store ptr %a.buf5, ptr %a.data.gep7, align 8
  %a.cap.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create3, i32 0, i32 2
  store i64 16, ptr %a.cap.gep8, align 8
  store ptr %a.create3, ptr %var.exprs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.exprs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len9 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data10 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.179, align 8
  br label %loop.header.179

loop.header.179:                                  ; preds = %loop.latch.179, %a.after
  %counter.load = load i64, ptr %loop.idx.179, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len9
  br i1 %loop.cond, label %loop.body.179, label %loop.exit.nat.179

loop.body.179:                                    ; preds = %loop.header.179
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.179, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data10, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load11 = load ptr, ptr %var.ctx, align 8
  %var.load12 = load ptr, ptr %var.e, align 8
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load11, ptr %var.load12)
  %a.load13 = load ptr, ptr %var._map_out_525, align 8
  %a.null14 = icmp eq ptr %a.load13, null
  br i1 %a.null14, label %a.create15, label %a.after16

loop.exit.nat.179:                                ; preds = %loop.header.179
  br label %loop.exit.179

loop.latch.179:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.179, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.179, align 8
  br label %loop.header.179

loop.exit.179:                                    ; preds = %loop.exit.nat.179
  %var.load29 = load ptr, ptr %var._map_out_525, align 8
  %a.load30 = load ptr, ptr %var._map_out_525, align 8
  %a.null31 = icmp eq ptr %a.load30, null
  br i1 %a.null31, label %a.create32, label %a.after33

a.create15:                                       ; preds = %loop.body.179
  %arena.cur17 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create18 = call ptr @dva_arena_alloc(ptr %arena.cur17, i64 24)
  %arena.cur19 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf20 = call ptr @dva_arena_alloc(ptr %arena.cur19, i64 128)
  %a.len.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 0
  store i64 0, ptr %a.len.gep21, align 8
  %a.data.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 1
  store ptr %a.buf20, ptr %a.data.gep22, align 8
  %a.cap.gep23 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create18, i32 0, i32 2
  store i64 16, ptr %a.cap.gep23, align 8
  store ptr %a.create18, ptr %var._map_out_525, align 8
  br label %a.after16

a.after16:                                        ; preds = %a.create15, %loop.body.179
  %a.load224 = load ptr, ptr %var._map_out_525, align 8
  br label %a.check

a.check:                                          ; preds = %a.after16
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 0
  %a.len25 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 2
  %a.cap26 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len25, %a.cap26
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load224)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 1
  %a.cur.data27 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 0
  %a.cur.len28 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data27, i64 %a.cur.len28
  %slot.p2i = ptrtoint ptr %call.res to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len28, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load224, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.179

a.create32:                                       ; preds = %loop.exit.179
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 24)
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 128)
  %a.len.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 0
  store i64 0, ptr %a.len.gep38, align 8
  %a.data.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 1
  store ptr %a.buf37, ptr %a.data.gep39, align 8
  %a.cap.gep40 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create35, i32 0, i32 2
  store i64 16, ptr %a.cap.gep40, align 8
  store ptr %a.create35, ptr %var._map_out_525, align 8
  br label %a.after33

a.after33:                                        ; preds = %a.create32, %loop.exit.179
  %a.load241 = load ptr, ptr %var._map_out_525, align 8
  ret ptr %a.load241
}

define internal ptr @"typedopt::#rewrite"(ptr %0, ptr %1) #0 {
entry:
  %var.__ctor_arg_518 = alloca ptr, align 8
  %var.r814 = alloca ptr, align 8
  %var._813 = alloca ptr, align 8
  %var.__ctor_arg_510 = alloca ptr, align 8
  %var.r766 = alloca ptr, align 8
  %var._765 = alloca ptr, align 8
  %var.__ctor_arg_500 = alloca ptr, align 8
  %var.r = alloca ptr, align 8
  %var._714 = alloca ptr, align 8
  %var.__ctor_arg_489 = alloca ptr, align 8
  %var.body660 = alloca ptr, align 8
  %var.c649 = alloca ptr, align 8
  %var._648 = alloca ptr, align 8
  %var.__ctor_arg_473 = alloca ptr, align 8
  %var.a = alloca ptr, align 8
  %var._586 = alloca ptr, align 8
  %var.__ctor_arg_459 = alloca ptr, align 8
  %var.b536 = alloca ptr, align 8
  %var._535 = alloca ptr, align 8
  %var.__ctor_arg_451 = alloca ptr, align 8
  %var.body = alloca ptr, align 8
  %var.l = alloca ptr, align 8
  %var._481 = alloca ptr, align 8
  %var.c463 = alloca ptr, align 8
  %var._462 = alloca ptr, align 8
  %var.__ctor_arg_434 = alloca ptr, align 8
  %var.i412 = alloca ptr, align 8
  %var._411 = alloca ptr, align 8
  %var.__ctor_arg_422 = alloca ptr, align 8
  %var.i = alloca ptr, align 8
  %var._366 = alloca ptr, align 8
  %var.__ctor_arg_412 = alloca ptr, align 8
  %var.m313 = alloca ptr, align 8
  %var._312 = alloca ptr, align 8
  %var.m = alloca ptr, align 8
  %var._292 = alloca ptr, align 8
  %var.__ctor_arg_394 = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.__ctor_arg_390 = alloca ptr, align 8
  %var._195 = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.f = alloca ptr, align 8
  %loop.step.180 = alloca i64, align 8
  %loop.idx.180 = alloca i64, align 8
  %var._map_out_387 = alloca ptr, align 8
  %var.fields = alloca ptr, align 8
  %var._182 = alloca ptr, align 8
  %var.__ctor_arg_380 = alloca ptr, align 8
  %var.c = alloca ptr, align 8
  %var._131 = alloca ptr, align 8
  %var.__ctor_arg_369 = alloca ptr, align 8
  %var.__ctor_arg_362 = alloca ptr, align 8
  %var.flag = alloca i1, align 1
  %var._62 = alloca i1, align 1
  %var.value = alloca ptr, align 8
  %var.u = alloca ptr, align 8
  %var._21 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 7
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next807, %choice.case806, %choice.case758, %choice.case707, %choice.case641, %choice.case579, %a.after546, %choice.case474, %choice.case455, %choice.case404, %choice.case359, %choice.case305, %choice.case285, %a.after253, %choice.case124, %choice.exit48, %choice.case
  %choice.res846 = phi ptr [ %call.res13, %choice.case ], [ %rec.alloc117, %choice.exit48 ], [ %rec.alloc168, %choice.case124 ], [ %rec.alloc278, %a.after253 ], [ %call.res304, %choice.case285 ], [ %rec.alloc352, %choice.case305 ], [ %rec.alloc397, %choice.case359 ], [ %rec.alloc448, %choice.case404 ], [ %call.res473, %choice.case455 ], [ %rec.alloc521, %choice.case474 ], [ %rec.alloc572, %a.after546 ], [ %rec.alloc634, %choice.case579 ], [ %rec.alloc700, %choice.case641 ], [ %rec.alloc751, %choice.case707 ], [ %rec.alloc799, %choice.case758 ], [ %rec.alloc838, %choice.case806 ], [ %var.load845, %choice.next807 ]
  ret ptr %choice.res846

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.b, align 8
  %var.load1 = load ptr, ptr %var.ctx, align 8
  %var.load2 = load ptr, ptr %var.e, align 8
  %var.load3 = load ptr, ptr %var.b, align 8
  %fld.gep4 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load3, i32 0, i32 0
  %fld.load5 = load ptr, ptr %fld.gep4, align 8
  %var.load6 = load ptr, ptr %var.ctx, align 8
  %var.load7 = load ptr, ptr %var.b, align 8
  %fld.gep8 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load7, i32 0, i32 1
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load6, ptr %fld.gep8)
  %var.load9 = load ptr, ptr %var.ctx, align 8
  %var.load10 = load ptr, ptr %var.b, align 8
  %fld.gep11 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load10, i32 0, i32 2
  %call.res12 = call ptr @"typedopt::#rewrite"(ptr %var.load9, ptr %fld.gep11)
  %call.res13 = call ptr @"typedopt::#simplify_bin"(ptr %var.load1, ptr %var.load2, ptr %fld.load5, ptr %call.res, ptr %call.res12)
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep16 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id17 = load i64, ptr %tag.gep16, align 8
  %tag.match18 = icmp eq i64 %tag.id17, 8
  br i1 %tag.match18, label %choice.case14, label %choice.next15

choice.case14:                                    ; preds = %choice.next
  %pay.gep19 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr20 = load ptr, ptr %pay.gep19, align 8
  store ptr %payload.ptr20, ptr %var._21, align 8
  store ptr %payload.ptr20, ptr %var.u, align 8
  %var.load22 = load ptr, ptr %var.u, align 8
  %fld.gep23 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load22, i32 0, i32 0
  %fld.load24 = load ptr, ptr %fld.gep23, align 8
  %tag.gep28 = getelementptr inbounds { i64, ptr }, ptr %fld.load24, i32 0, i32 0
  %tag.id29 = load i64, ptr %tag.gep28, align 8
  %tag.match30 = icmp eq i64 %tag.id29, 3
  br i1 %tag.match30, label %choice.case26, label %choice.next27

choice.next15:                                    ; preds = %choice.next
  %tag.gep126 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id127 = load i64, ptr %tag.gep126, align 8
  %tag.match128 = icmp eq i64 %tag.id127, 9
  br i1 %tag.match128, label %choice.case124, label %choice.next125

choice.exit25:                                    ; preds = %choice.next27, %choice.case26
  %choice.res = phi i1 [ true, %choice.case26 ], [ false, %choice.next27 ]
  br i1 %choice.res, label %choice.then, label %choice.exit31

choice.case26:                                    ; preds = %choice.case14
  br label %choice.exit25

choice.next27:                                    ; preds = %choice.case14
  br label %choice.exit25

choice.then:                                      ; preds = %choice.exit25
  %var.load32 = load ptr, ptr %var.e, align 8
  ret ptr %var.load32

choice.exit31:                                    ; preds = %ret.dead, %choice.exit25
  %var.load33 = load ptr, ptr %var.ctx, align 8
  %var.load34 = load ptr, ptr %var.u, align 8
  %fld.gep35 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load34, i32 0, i32 1
  %call.res36 = call ptr @"typedopt::#rewrite"(ptr %var.load33, ptr %fld.gep35)
  store ptr %call.res36, ptr %var.value, align 8
  %var.load37 = load ptr, ptr %var.u, align 8
  %fld.gep38 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load37, i32 0, i32 0
  %fld.load39 = load ptr, ptr %fld.gep38, align 8
  %tag.gep43 = getelementptr inbounds { i64, ptr }, ptr %fld.load39, i32 0, i32 0
  %tag.id44 = load i64, ptr %tag.gep43, align 8
  %tag.match45 = icmp eq i64 %tag.id44, 0
  br i1 %tag.match45, label %choice.case41, label %choice.next42

ret.dead:                                         ; No predecessors!
  br label %choice.exit31

choice.exit40:                                    ; preds = %choice.next42, %choice.case41
  %choice.res46 = phi i1 [ true, %choice.case41 ], [ false, %choice.next42 ]
  br i1 %choice.res46, label %choice.then47, label %choice.exit48

choice.case41:                                    ; preds = %choice.exit31
  br label %choice.exit40

choice.next42:                                    ; preds = %choice.exit31
  br label %choice.exit40

choice.then47:                                    ; preds = %choice.exit40
  %var.load49 = load ptr, ptr %var.ctx, align 8
  %var.load50 = load ptr, ptr %var.value, align 8
  %call.res51 = call ptr @"typedopt::#scalar_operand"(ptr %var.load49, ptr %var.load50)
  %fld.gep52 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %call.res51, i32 0, i32 0
  %fld.load53 = load ptr, ptr %fld.gep52, align 8
  %tag.gep57 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 0
  %tag.id58 = load i64, ptr %tag.gep57, align 8
  %tag.match59 = icmp eq i64 %tag.id58, 4
  br i1 %tag.match59, label %choice.case55, label %choice.next56

choice.exit48:                                    ; preds = %choice.exit54, %choice.exit40
  %arena.cur89 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc90 = call ptr @dva_arena_alloc(ptr %arena.cur89, i64 16)
  %tag.gep91 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc90, i32 0, i32 0
  store i64 8, ptr %tag.gep91, align 8
  %pay.gep92 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc90, i32 0, i32 1
  %var.load93 = load ptr, ptr %var.u, align 8
  %fld.gep94 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load93, i32 0, i32 0
  %fld.load95 = load ptr, ptr %fld.gep94, align 8
  %var.load96 = load ptr, ptr %var.value, align 8
  %arena.cur97 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc98 = call ptr @dva_arena_alloc(ptr %arena.cur97, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld99 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc98, i32 0, i32 0
  store ptr %fld.load95, ptr %rec.fld99, align 8
  %rec.fld100 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc98, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld100, ptr align 1 %var.load96, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc98, ptr %pay.gep92, align 8
  store ptr %enum.alloc90, ptr %var.__ctor_arg_369, align 8
  %var.load101 = load ptr, ptr %var.__ctor_arg_369, align 8
  %var.load102 = load ptr, ptr %var.e, align 8
  %fld.gep103 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load102, i32 0, i32 1
  %fld.load104 = load ptr, ptr %fld.gep103, align 8
  %var.load105 = load ptr, ptr %var.e, align 8
  %fld.gep106 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load105, i32 0, i32 2
  %fld.load107 = load ptr, ptr %fld.gep106, align 8
  %var.load108 = load ptr, ptr %var.e, align 8
  %fld.gep109 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load108, i32 0, i32 3
  %var.load110 = load ptr, ptr %var.e, align 8
  %fld.gep111 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load110, i32 0, i32 4
  %fld.load112 = load i64, ptr %fld.gep111, align 8
  %var.load113 = load ptr, ptr %var.e, align 8
  %fld.gep114 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load113, i32 0, i32 5
  %fld.load115 = load i64, ptr %fld.gep114, align 8
  %arena.cur116 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc117 = call ptr @dva_arena_alloc(ptr %arena.cur116, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld118 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 0
  store ptr %var.load101, ptr %rec.fld118, align 8
  %rec.fld119 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 1
  store ptr %fld.load104, ptr %rec.fld119, align 8
  %rec.fld120 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 2
  store ptr %fld.load107, ptr %rec.fld120, align 8
  %rec.fld121 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld121, ptr align 1 %fld.gep109, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld122 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 4
  store i64 %fld.load112, ptr %rec.fld122, align 8
  %rec.fld123 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc117, i32 0, i32 5
  store i64 %fld.load115, ptr %rec.fld123, align 8
  br label %choice.exit

choice.exit54:                                    ; preds = %choice.next56, %ret.dead88
  br label %choice.exit48

choice.case55:                                    ; preds = %choice.then47
  %pay.gep60 = getelementptr inbounds { i64, ptr }, ptr %fld.load53, i32 0, i32 1
  %payload.ptr61 = load ptr, ptr %pay.gep60, align 8
  %pay.int.null = icmp eq ptr %payload.ptr61, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next56:                                    ; preds = %choice.then47
  br label %choice.exit54

pay.int.load:                                     ; preds = %choice.case55
  %pay.int.val = load i1, ptr %payload.ptr61, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case55
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._62, align 1
  store i1 %pay.int.phi, ptr %var.flag, align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep63 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 4, ptr %tag.gep63, align 8
  %pay.gep64 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load65 = load i1, ptr %var.flag, align 1
  %nottmp = xor i1 %var.load65, true
  %arena.cur66 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.pay.alloc = call ptr @dva_arena_alloc(ptr %arena.cur66, i64 8)
  store i64 0, ptr %enum.pay.alloc, align 8
  store i1 %nottmp, ptr %enum.pay.alloc, align 1
  store ptr %enum.pay.alloc, ptr %pay.gep64, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_362, align 8
  %var.load67 = load ptr, ptr %var.__ctor_arg_362, align 8
  %var.load68 = load ptr, ptr %var.e, align 8
  %fld.gep69 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load68, i32 0, i32 1
  %fld.load70 = load ptr, ptr %fld.gep69, align 8
  %var.load71 = load ptr, ptr %var.e, align 8
  %fld.gep72 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load71, i32 0, i32 2
  %fld.load73 = load ptr, ptr %fld.gep72, align 8
  %var.load74 = load ptr, ptr %var.e, align 8
  %fld.gep75 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load74, i32 0, i32 3
  %var.load76 = load ptr, ptr %var.e, align 8
  %fld.gep77 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load76, i32 0, i32 4
  %fld.load78 = load i64, ptr %fld.gep77, align 8
  %var.load79 = load ptr, ptr %var.e, align 8
  %fld.gep80 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load79, i32 0, i32 5
  %fld.load81 = load i64, ptr %fld.gep80, align 8
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %var.load67, ptr %rec.fld, align 8
  %rec.fld83 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load70, ptr %rec.fld83, align 8
  %rec.fld84 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load73, ptr %rec.fld84, align 8
  %rec.fld85 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld85, ptr align 1 %fld.gep75, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld86 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 4
  store i64 %fld.load78, ptr %rec.fld86, align 8
  %rec.fld87 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc, i32 0, i32 5
  store i64 %fld.load81, ptr %rec.fld87, align 8
  ret ptr %rec.alloc

ret.dead88:                                       ; No predecessors!
  br label %choice.exit54

choice.case124:                                   ; preds = %choice.next15
  %pay.gep129 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr130 = load ptr, ptr %pay.gep129, align 8
  store ptr %payload.ptr130, ptr %var._131, align 8
  store ptr %payload.ptr130, ptr %var.c, align 8
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc133 = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 16)
  %tag.gep134 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 0
  store i64 9, ptr %tag.gep134, align 8
  %pay.gep135 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc133, i32 0, i32 1
  %var.load136 = load ptr, ptr %var.c, align 8
  %fld.gep137 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load136, i32 0, i32 0
  %fld.load138 = load ptr, ptr %fld.gep137, align 8
  %var.load139 = load ptr, ptr %var.c, align 8
  %fld.gep140 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load139, i32 0, i32 1
  %fld.load141 = load ptr, ptr %fld.gep140, align 8
  %var.load142 = load ptr, ptr %var.ctx, align 8
  %var.load143 = load ptr, ptr %var.c, align 8
  %fld.gep144 = getelementptr inbounds { ptr, ptr, ptr }, ptr %var.load143, i32 0, i32 2
  %fld.load145 = load ptr, ptr %fld.gep144, align 8
  %call.res146 = call ptr @"typedopt::#rewrite_list"(ptr %var.load142, ptr %fld.load145)
  %arena.cur147 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc148 = call ptr @dva_arena_alloc(ptr %arena.cur147, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld149 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc148, i32 0, i32 0
  store ptr %fld.load138, ptr %rec.fld149, align 8
  %rec.fld150 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc148, i32 0, i32 1
  store ptr %fld.load141, ptr %rec.fld150, align 8
  %rec.fld151 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc148, i32 0, i32 2
  store ptr %call.res146, ptr %rec.fld151, align 8
  store ptr %rec.alloc148, ptr %pay.gep135, align 8
  store ptr %enum.alloc133, ptr %var.__ctor_arg_380, align 8
  %var.load152 = load ptr, ptr %var.__ctor_arg_380, align 8
  %var.load153 = load ptr, ptr %var.e, align 8
  %fld.gep154 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load153, i32 0, i32 1
  %fld.load155 = load ptr, ptr %fld.gep154, align 8
  %var.load156 = load ptr, ptr %var.e, align 8
  %fld.gep157 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load156, i32 0, i32 2
  %fld.load158 = load ptr, ptr %fld.gep157, align 8
  %var.load159 = load ptr, ptr %var.e, align 8
  %fld.gep160 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load159, i32 0, i32 3
  %var.load161 = load ptr, ptr %var.e, align 8
  %fld.gep162 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load161, i32 0, i32 4
  %fld.load163 = load i64, ptr %fld.gep162, align 8
  %var.load164 = load ptr, ptr %var.e, align 8
  %fld.gep165 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load164, i32 0, i32 5
  %fld.load166 = load i64, ptr %fld.gep165, align 8
  %arena.cur167 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc168 = call ptr @dva_arena_alloc(ptr %arena.cur167, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld169 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 0
  store ptr %var.load152, ptr %rec.fld169, align 8
  %rec.fld170 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 1
  store ptr %fld.load155, ptr %rec.fld170, align 8
  %rec.fld171 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 2
  store ptr %fld.load158, ptr %rec.fld171, align 8
  %rec.fld172 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld172, ptr align 1 %fld.gep160, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld173 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 4
  store i64 %fld.load163, ptr %rec.fld173, align 8
  %rec.fld174 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc168, i32 0, i32 5
  store i64 %fld.load166, ptr %rec.fld174, align 8
  br label %choice.exit

choice.next125:                                   ; preds = %choice.next15
  %tag.gep177 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id178 = load i64, ptr %tag.gep177, align 8
  %tag.match179 = icmp eq i64 %tag.id178, 10
  br i1 %tag.match179, label %choice.case175, label %choice.next176

choice.case175:                                   ; preds = %choice.next125
  %pay.gep180 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr181 = load ptr, ptr %pay.gep180, align 8
  store ptr %payload.ptr181, ptr %var._182, align 8
  store ptr %payload.ptr181, ptr %var.fields, align 8
  %arena.cur183 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur183, i64 24)
  %arena.cur184 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur184, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var._map_out_387, align 8
  %var.load185 = load ptr, ptr %var.fields, align 8
  %a.load = load ptr, ptr %var.fields, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.next176:                                   ; preds = %choice.next125
  %tag.gep287 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id288 = load i64, ptr %tag.gep287, align 8
  %tag.match289 = icmp eq i64 %tag.id288, 11
  br i1 %tag.match289, label %choice.case285, label %choice.next286

a.create:                                         ; preds = %choice.case175
  %arena.cur186 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create187 = call ptr @dva_arena_alloc(ptr %arena.cur186, i64 24)
  %arena.cur188 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf189 = call ptr @dva_arena_alloc(ptr %arena.cur188, i64 128)
  %a.len.gep190 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 0
  store i64 0, ptr %a.len.gep190, align 8
  %a.data.gep191 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 1
  store ptr %a.buf189, ptr %a.data.gep191, align 8
  %a.cap.gep192 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create187, i32 0, i32 2
  store i64 16, ptr %a.cap.gep192, align 8
  store ptr %a.create187, ptr %var.fields, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.case175
  %a.load2 = load ptr, ptr %var.fields, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len193 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data194 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.180, align 8
  %cycle.prev.u = load ptr, ptr %var._182, align 8
  br label %loop.header.180

loop.header.180:                                  ; preds = %loop.latch.180, %a.after
  %counter.load = load i64, ptr %loop.idx.180, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len193
  br i1 %loop.cond, label %loop.body.180, label %loop.exit.nat.180

loop.body.180:                                    ; preds = %loop.header.180
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.180, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data194, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._195, align 8
  store ptr %slot.i2p, ptr %var.f, align 8
  %var.load196 = load ptr, ptr %var.ctx, align 8
  %var.load197 = load ptr, ptr %var.f, align 8
  %fld.gep198 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load197, i32 0, i32 1
  %call.res199 = call ptr @"typedopt::#rewrite"(ptr %var.load196, ptr %fld.gep198)
  store ptr %call.res199, ptr %var.__ctor_arg_390, align 8
  %var.load200 = load ptr, ptr %var.f, align 8
  %fld.gep201 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load200, i32 0, i32 0
  %fld.load202 = load ptr, ptr %fld.gep201, align 8
  %var.load203 = load ptr, ptr %var.__ctor_arg_390, align 8
  %var.load204 = load ptr, ptr %var.f, align 8
  %fld.gep205 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load204, i32 0, i32 2
  %fld.load206 = load i64, ptr %fld.gep205, align 8
  %var.load207 = load ptr, ptr %var.f, align 8
  %fld.gep208 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %var.load207, i32 0, i32 3
  %fld.load209 = load ptr, ptr %fld.gep208, align 8
  %arena.cur210 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc211 = call ptr @dva_arena_alloc(ptr %arena.cur210, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr null, i32 1) to i64))
  %rec.fld212 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 0
  store ptr %fld.load202, ptr %rec.fld212, align 8
  %rec.fld213 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld213, ptr align 1 %var.load203, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld214 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 2
  store i64 %fld.load206, ptr %rec.fld214, align 8
  %rec.fld215 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i64, ptr }, ptr %rec.alloc211, i32 0, i32 3
  store ptr %fld.load209, ptr %rec.fld215, align 8
  %a.load216 = load ptr, ptr %var._map_out_387, align 8
  %a.null217 = icmp eq ptr %a.load216, null
  br i1 %a.null217, label %a.create218, label %a.after219

loop.exit.nat.180:                                ; preds = %loop.header.180
  br label %loop.exit.180

loop.latch.180:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.180, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.180, align 8
  br label %loop.header.180

loop.exit.180:                                    ; preds = %loop.exit.nat.180
  store ptr %cycle.prev.u, ptr %var._182, align 8
  %var.load232 = load ptr, ptr %var._map_out_387, align 8
  %a.load233 = load ptr, ptr %var._map_out_387, align 8
  %a.null234 = icmp eq ptr %a.load233, null
  br i1 %a.null234, label %a.create235, label %a.after236

a.create218:                                      ; preds = %loop.body.180
  %arena.cur220 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create221 = call ptr @dva_arena_alloc(ptr %arena.cur220, i64 24)
  %arena.cur222 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf223 = call ptr @dva_arena_alloc(ptr %arena.cur222, i64 128)
  %a.len.gep224 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 0
  store i64 0, ptr %a.len.gep224, align 8
  %a.data.gep225 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 1
  store ptr %a.buf223, ptr %a.data.gep225, align 8
  %a.cap.gep226 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create221, i32 0, i32 2
  store i64 16, ptr %a.cap.gep226, align 8
  store ptr %a.create221, ptr %var._map_out_387, align 8
  br label %a.after219

a.after219:                                       ; preds = %a.create218, %loop.body.180
  %a.load2227 = load ptr, ptr %var._map_out_387, align 8
  br label %a.check

a.check:                                          ; preds = %a.after219
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 0
  %a.len228 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 2
  %a.cap229 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len228, %a.cap229
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load2227)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 1
  %a.cur.data230 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 0
  %a.cur.len231 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data230, i64 %a.cur.len231
  %slot.p2i = ptrtoint ptr %rec.alloc211 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len231, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2227, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.180

a.create235:                                      ; preds = %loop.exit.180
  %arena.cur237 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create238 = call ptr @dva_arena_alloc(ptr %arena.cur237, i64 24)
  %arena.cur239 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf240 = call ptr @dva_arena_alloc(ptr %arena.cur239, i64 128)
  %a.len.gep241 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create238, i32 0, i32 0
  store i64 0, ptr %a.len.gep241, align 8
  %a.data.gep242 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create238, i32 0, i32 1
  store ptr %a.buf240, ptr %a.data.gep242, align 8
  %a.cap.gep243 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create238, i32 0, i32 2
  store i64 16, ptr %a.cap.gep243, align 8
  store ptr %a.create238, ptr %var._map_out_387, align 8
  br label %a.after236

a.after236:                                       ; preds = %a.create235, %loop.exit.180
  %a.load2244 = load ptr, ptr %var._map_out_387, align 8
  store ptr %a.load2244, ptr %var.out, align 8
  %arena.cur245 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc246 = call ptr @dva_arena_alloc(ptr %arena.cur245, i64 16)
  %tag.gep247 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc246, i32 0, i32 0
  store i64 10, ptr %tag.gep247, align 8
  %pay.gep248 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc246, i32 0, i32 1
  %var.load249 = load ptr, ptr %var.out, align 8
  %a.load250 = load ptr, ptr %var.out, align 8
  %a.null251 = icmp eq ptr %a.load250, null
  br i1 %a.null251, label %a.create252, label %a.after253

a.create252:                                      ; preds = %a.after236
  %arena.cur254 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create255 = call ptr @dva_arena_alloc(ptr %arena.cur254, i64 24)
  %arena.cur256 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf257 = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 128)
  %a.len.gep258 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create255, i32 0, i32 0
  store i64 0, ptr %a.len.gep258, align 8
  %a.data.gep259 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create255, i32 0, i32 1
  store ptr %a.buf257, ptr %a.data.gep259, align 8
  %a.cap.gep260 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create255, i32 0, i32 2
  store i64 16, ptr %a.cap.gep260, align 8
  store ptr %a.create255, ptr %var.out, align 8
  br label %a.after253

a.after253:                                       ; preds = %a.create252, %a.after236
  %a.load2261 = load ptr, ptr %var.out, align 8
  store ptr %a.load2261, ptr %pay.gep248, align 8
  store ptr %enum.alloc246, ptr %var.__ctor_arg_394, align 8
  %var.load262 = load ptr, ptr %var.__ctor_arg_394, align 8
  %var.load263 = load ptr, ptr %var.e, align 8
  %fld.gep264 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load263, i32 0, i32 1
  %fld.load265 = load ptr, ptr %fld.gep264, align 8
  %var.load266 = load ptr, ptr %var.e, align 8
  %fld.gep267 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load266, i32 0, i32 2
  %fld.load268 = load ptr, ptr %fld.gep267, align 8
  %var.load269 = load ptr, ptr %var.e, align 8
  %fld.gep270 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load269, i32 0, i32 3
  %var.load271 = load ptr, ptr %var.e, align 8
  %fld.gep272 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load271, i32 0, i32 4
  %fld.load273 = load i64, ptr %fld.gep272, align 8
  %var.load274 = load ptr, ptr %var.e, align 8
  %fld.gep275 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load274, i32 0, i32 5
  %fld.load276 = load i64, ptr %fld.gep275, align 8
  %arena.cur277 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc278 = call ptr @dva_arena_alloc(ptr %arena.cur277, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld279 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 0
  store ptr %var.load262, ptr %rec.fld279, align 8
  %rec.fld280 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 1
  store ptr %fld.load265, ptr %rec.fld280, align 8
  %rec.fld281 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 2
  store ptr %fld.load268, ptr %rec.fld281, align 8
  %rec.fld282 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld282, ptr align 1 %fld.gep270, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld283 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 4
  store i64 %fld.load273, ptr %rec.fld283, align 8
  %rec.fld284 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc278, i32 0, i32 5
  store i64 %fld.load276, ptr %rec.fld284, align 8
  br label %choice.exit

choice.case285:                                   ; preds = %choice.next176
  %pay.gep290 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr291 = load ptr, ptr %pay.gep290, align 8
  store ptr %payload.ptr291, ptr %var._292, align 8
  store ptr %payload.ptr291, ptr %var.m, align 8
  %var.load293 = load ptr, ptr %var.e, align 8
  %var.load294 = load ptr, ptr %var.ctx, align 8
  %var.load295 = load ptr, ptr %var.m, align 8
  %fld.gep296 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %var.load295, i32 0, i32 0
  %call.res297 = call ptr @"typedopt::#rewrite"(ptr %var.load294, ptr %fld.gep296)
  %var.load298 = load ptr, ptr %var.m, align 8
  %fld.gep299 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %var.load298, i32 0, i32 1
  %fld.load300 = load ptr, ptr %fld.gep299, align 8
  %var.load301 = load ptr, ptr %var.m, align 8
  %fld.gep302 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64 }, ptr %var.load301, i32 0, i32 2
  %fld.load303 = load i64, ptr %fld.gep302, align 8
  %call.res304 = call ptr @"typedopt::#simplify_member"(ptr %var.load293, ptr %call.res297, ptr %fld.load300, i64 %fld.load303)
  br label %choice.exit

choice.next286:                                   ; preds = %choice.next176
  %tag.gep307 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id308 = load i64, ptr %tag.gep307, align 8
  %tag.match309 = icmp eq i64 %tag.id308, 12
  br i1 %tag.match309, label %choice.case305, label %choice.next306

choice.case305:                                   ; preds = %choice.next286
  %pay.gep310 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr311 = load ptr, ptr %pay.gep310, align 8
  store ptr %payload.ptr311, ptr %var._312, align 8
  store ptr %payload.ptr311, ptr %var.m313, align 8
  %arena.cur314 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc315 = call ptr @dva_arena_alloc(ptr %arena.cur314, i64 16)
  %tag.gep316 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc315, i32 0, i32 0
  store i64 12, ptr %tag.gep316, align 8
  %pay.gep317 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc315, i32 0, i32 1
  %var.load318 = load ptr, ptr %var.m313, align 8
  %fld.gep319 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load318, i32 0, i32 0
  %var.load320 = load ptr, ptr %var.m313, align 8
  %fld.gep321 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load320, i32 0, i32 1
  %fld.load322 = load ptr, ptr %fld.gep321, align 8
  %var.load323 = load ptr, ptr %var.m313, align 8
  %fld.gep324 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load323, i32 0, i32 2
  %fld.load325 = load i64, ptr %fld.gep324, align 8
  %var.load326 = load ptr, ptr %var.ctx, align 8
  %var.load327 = load ptr, ptr %var.m313, align 8
  %fld.gep328 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load327, i32 0, i32 3
  %call.res329 = call ptr @"typedopt::#rewrite"(ptr %var.load326, ptr %fld.gep328)
  %arena.cur330 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc331 = call ptr @dva_arena_alloc(ptr %arena.cur330, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld332 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld332, ptr align 1 %fld.gep319, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld333 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 1
  store ptr %fld.load322, ptr %rec.fld333, align 8
  %rec.fld334 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 2
  store i64 %fld.load325, ptr %rec.fld334, align 8
  %rec.fld335 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i64, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc331, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld335, ptr align 1 %call.res329, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc331, ptr %pay.gep317, align 8
  store ptr %enum.alloc315, ptr %var.__ctor_arg_412, align 8
  %var.load336 = load ptr, ptr %var.__ctor_arg_412, align 8
  %var.load337 = load ptr, ptr %var.e, align 8
  %fld.gep338 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load337, i32 0, i32 1
  %fld.load339 = load ptr, ptr %fld.gep338, align 8
  %var.load340 = load ptr, ptr %var.e, align 8
  %fld.gep341 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load340, i32 0, i32 2
  %fld.load342 = load ptr, ptr %fld.gep341, align 8
  %var.load343 = load ptr, ptr %var.e, align 8
  %fld.gep344 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load343, i32 0, i32 3
  %var.load345 = load ptr, ptr %var.e, align 8
  %fld.gep346 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load345, i32 0, i32 4
  %fld.load347 = load i64, ptr %fld.gep346, align 8
  %var.load348 = load ptr, ptr %var.e, align 8
  %fld.gep349 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load348, i32 0, i32 5
  %fld.load350 = load i64, ptr %fld.gep349, align 8
  %arena.cur351 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc352 = call ptr @dva_arena_alloc(ptr %arena.cur351, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld353 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 0
  store ptr %var.load336, ptr %rec.fld353, align 8
  %rec.fld354 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 1
  store ptr %fld.load339, ptr %rec.fld354, align 8
  %rec.fld355 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 2
  store ptr %fld.load342, ptr %rec.fld355, align 8
  %rec.fld356 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld356, ptr align 1 %fld.gep344, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld357 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 4
  store i64 %fld.load347, ptr %rec.fld357, align 8
  %rec.fld358 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc352, i32 0, i32 5
  store i64 %fld.load350, ptr %rec.fld358, align 8
  br label %choice.exit

choice.next306:                                   ; preds = %choice.next286
  %tag.gep361 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id362 = load i64, ptr %tag.gep361, align 8
  %tag.match363 = icmp eq i64 %tag.id362, 13
  br i1 %tag.match363, label %choice.case359, label %choice.next360

choice.case359:                                   ; preds = %choice.next306
  %pay.gep364 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr365 = load ptr, ptr %pay.gep364, align 8
  store ptr %payload.ptr365, ptr %var._366, align 8
  store ptr %payload.ptr365, ptr %var.i, align 8
  %arena.cur367 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc368 = call ptr @dva_arena_alloc(ptr %arena.cur367, i64 16)
  %tag.gep369 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc368, i32 0, i32 0
  store i64 13, ptr %tag.gep369, align 8
  %pay.gep370 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc368, i32 0, i32 1
  %var.load371 = load ptr, ptr %var.i, align 8
  %fld.gep372 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load371, i32 0, i32 0
  %var.load373 = load ptr, ptr %var.ctx, align 8
  %var.load374 = load ptr, ptr %var.i, align 8
  %fld.gep375 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load374, i32 0, i32 1
  %call.res376 = call ptr @"typedopt::#rewrite"(ptr %var.load373, ptr %fld.gep375)
  %arena.cur377 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc378 = call ptr @dva_arena_alloc(ptr %arena.cur377, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld379 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc378, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld379, ptr align 1 %fld.gep372, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld380 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc378, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld380, ptr align 1 %call.res376, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc378, ptr %pay.gep370, align 8
  store ptr %enum.alloc368, ptr %var.__ctor_arg_422, align 8
  %var.load381 = load ptr, ptr %var.__ctor_arg_422, align 8
  %var.load382 = load ptr, ptr %var.e, align 8
  %fld.gep383 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load382, i32 0, i32 1
  %fld.load384 = load ptr, ptr %fld.gep383, align 8
  %var.load385 = load ptr, ptr %var.e, align 8
  %fld.gep386 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load385, i32 0, i32 2
  %fld.load387 = load ptr, ptr %fld.gep386, align 8
  %var.load388 = load ptr, ptr %var.e, align 8
  %fld.gep389 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load388, i32 0, i32 3
  %var.load390 = load ptr, ptr %var.e, align 8
  %fld.gep391 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load390, i32 0, i32 4
  %fld.load392 = load i64, ptr %fld.gep391, align 8
  %var.load393 = load ptr, ptr %var.e, align 8
  %fld.gep394 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load393, i32 0, i32 5
  %fld.load395 = load i64, ptr %fld.gep394, align 8
  %arena.cur396 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc397 = call ptr @dva_arena_alloc(ptr %arena.cur396, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld398 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 0
  store ptr %var.load381, ptr %rec.fld398, align 8
  %rec.fld399 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 1
  store ptr %fld.load384, ptr %rec.fld399, align 8
  %rec.fld400 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 2
  store ptr %fld.load387, ptr %rec.fld400, align 8
  %rec.fld401 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld401, ptr align 1 %fld.gep389, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld402 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 4
  store i64 %fld.load392, ptr %rec.fld402, align 8
  %rec.fld403 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc397, i32 0, i32 5
  store i64 %fld.load395, ptr %rec.fld403, align 8
  br label %choice.exit

choice.next360:                                   ; preds = %choice.next306
  %tag.gep406 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id407 = load i64, ptr %tag.gep406, align 8
  %tag.match408 = icmp eq i64 %tag.id407, 14
  br i1 %tag.match408, label %choice.case404, label %choice.next405

choice.case404:                                   ; preds = %choice.next360
  %pay.gep409 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr410 = load ptr, ptr %pay.gep409, align 8
  store ptr %payload.ptr410, ptr %var._411, align 8
  store ptr %payload.ptr410, ptr %var.i412, align 8
  %arena.cur413 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc414 = call ptr @dva_arena_alloc(ptr %arena.cur413, i64 16)
  %tag.gep415 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc414, i32 0, i32 0
  store i64 14, ptr %tag.gep415, align 8
  %pay.gep416 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc414, i32 0, i32 1
  %var.load417 = load ptr, ptr %var.i412, align 8
  %fld.gep418 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load417, i32 0, i32 0
  %var.load419 = load ptr, ptr %var.ctx, align 8
  %var.load420 = load ptr, ptr %var.i412, align 8
  %fld.gep421 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load420, i32 0, i32 1
  %call.res422 = call ptr @"typedopt::#rewrite"(ptr %var.load419, ptr %fld.gep421)
  %var.load423 = load ptr, ptr %var.ctx, align 8
  %var.load424 = load ptr, ptr %var.i412, align 8
  %fld.gep425 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load424, i32 0, i32 2
  %call.res426 = call ptr @"typedopt::#rewrite"(ptr %var.load423, ptr %fld.gep425)
  %arena.cur427 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc428 = call ptr @dva_arena_alloc(ptr %arena.cur427, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld429 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc428, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld429, ptr align 1 %fld.gep418, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld430 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc428, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld430, ptr align 1 %call.res422, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld431 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc428, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld431, ptr align 1 %call.res426, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc428, ptr %pay.gep416, align 8
  store ptr %enum.alloc414, ptr %var.__ctor_arg_434, align 8
  %var.load432 = load ptr, ptr %var.__ctor_arg_434, align 8
  %var.load433 = load ptr, ptr %var.e, align 8
  %fld.gep434 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load433, i32 0, i32 1
  %fld.load435 = load ptr, ptr %fld.gep434, align 8
  %var.load436 = load ptr, ptr %var.e, align 8
  %fld.gep437 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load436, i32 0, i32 2
  %fld.load438 = load ptr, ptr %fld.gep437, align 8
  %var.load439 = load ptr, ptr %var.e, align 8
  %fld.gep440 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load439, i32 0, i32 3
  %var.load441 = load ptr, ptr %var.e, align 8
  %fld.gep442 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load441, i32 0, i32 4
  %fld.load443 = load i64, ptr %fld.gep442, align 8
  %var.load444 = load ptr, ptr %var.e, align 8
  %fld.gep445 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load444, i32 0, i32 5
  %fld.load446 = load i64, ptr %fld.gep445, align 8
  %arena.cur447 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc448 = call ptr @dva_arena_alloc(ptr %arena.cur447, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld449 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 0
  store ptr %var.load432, ptr %rec.fld449, align 8
  %rec.fld450 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 1
  store ptr %fld.load435, ptr %rec.fld450, align 8
  %rec.fld451 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 2
  store ptr %fld.load438, ptr %rec.fld451, align 8
  %rec.fld452 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld452, ptr align 1 %fld.gep440, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld453 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 4
  store i64 %fld.load443, ptr %rec.fld453, align 8
  %rec.fld454 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc448, i32 0, i32 5
  store i64 %fld.load446, ptr %rec.fld454, align 8
  br label %choice.exit

choice.next405:                                   ; preds = %choice.next360
  %tag.gep457 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id458 = load i64, ptr %tag.gep457, align 8
  %tag.match459 = icmp eq i64 %tag.id458, 15
  br i1 %tag.match459, label %choice.case455, label %choice.next456

choice.case455:                                   ; preds = %choice.next405
  %pay.gep460 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr461 = load ptr, ptr %pay.gep460, align 8
  store ptr %payload.ptr461, ptr %var._462, align 8
  store ptr %payload.ptr461, ptr %var.c463, align 8
  %var.load464 = load ptr, ptr %var.ctx, align 8
  %var.load465 = load ptr, ptr %var.e, align 8
  %var.load466 = load ptr, ptr %var.ctx, align 8
  %var.load467 = load ptr, ptr %var.c463, align 8
  %fld.gep468 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load467, i32 0, i32 0
  %call.res469 = call ptr @"typedopt::#rewrite"(ptr %var.load466, ptr %fld.gep468)
  %var.load470 = load ptr, ptr %var.c463, align 8
  %fld.gep471 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load470, i32 0, i32 1
  %fld.load472 = load ptr, ptr %fld.gep471, align 8
  %call.res473 = call ptr @"typedopt::#simplify_choice"(ptr %var.load464, ptr %var.load465, ptr %call.res469, ptr %fld.load472)
  br label %choice.exit

choice.next456:                                   ; preds = %choice.next405
  %tag.gep476 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id477 = load i64, ptr %tag.gep476, align 8
  %tag.match478 = icmp eq i64 %tag.id477, 16
  br i1 %tag.match478, label %choice.case474, label %choice.next475

choice.case474:                                   ; preds = %choice.next456
  %pay.gep479 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr480 = load ptr, ptr %pay.gep479, align 8
  store ptr %payload.ptr480, ptr %var._481, align 8
  store ptr %payload.ptr480, ptr %var.l, align 8
  %arena.cur482 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc483 = call ptr @dva_arena_alloc(ptr %arena.cur482, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld484 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc483, i32 0, i32 0
  store ptr null, ptr %rec.fld484, align 8
  %rec.fld485 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc483, i32 0, i32 1
  store i1 true, ptr %rec.fld485, align 1
  %var.load486 = load ptr, ptr %var.l, align 8
  %fld.gep487 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load486, i32 0, i32 1
  %call.res488 = call ptr @"typedopt::#rewrite"(ptr %rec.alloc483, ptr %fld.gep487)
  store ptr %call.res488, ptr %var.body, align 8
  %arena.cur489 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc490 = call ptr @dva_arena_alloc(ptr %arena.cur489, i64 16)
  %tag.gep491 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc490, i32 0, i32 0
  store i64 16, ptr %tag.gep491, align 8
  %pay.gep492 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc490, i32 0, i32 1
  %var.load493 = load ptr, ptr %var.l, align 8
  %fld.gep494 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load493, i32 0, i32 0
  %fld.load495 = load ptr, ptr %fld.gep494, align 8
  %var.load496 = load ptr, ptr %var.body, align 8
  %var.load497 = load ptr, ptr %var.l, align 8
  %fld.gep498 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %var.load497, i32 0, i32 2
  %fld.load499 = load ptr, ptr %fld.gep498, align 8
  %arena.cur500 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc501 = call ptr @dva_arena_alloc(ptr %arena.cur500, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld502 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc501, i32 0, i32 0
  store ptr %fld.load495, ptr %rec.fld502, align 8
  %rec.fld503 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc501, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld503, ptr align 1 %var.load496, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld504 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc501, i32 0, i32 2
  store ptr %fld.load499, ptr %rec.fld504, align 8
  store ptr %rec.alloc501, ptr %pay.gep492, align 8
  store ptr %enum.alloc490, ptr %var.__ctor_arg_451, align 8
  %var.load505 = load ptr, ptr %var.__ctor_arg_451, align 8
  %var.load506 = load ptr, ptr %var.e, align 8
  %fld.gep507 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load506, i32 0, i32 1
  %fld.load508 = load ptr, ptr %fld.gep507, align 8
  %var.load509 = load ptr, ptr %var.e, align 8
  %fld.gep510 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load509, i32 0, i32 2
  %fld.load511 = load ptr, ptr %fld.gep510, align 8
  %var.load512 = load ptr, ptr %var.e, align 8
  %fld.gep513 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load512, i32 0, i32 3
  %var.load514 = load ptr, ptr %var.e, align 8
  %fld.gep515 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load514, i32 0, i32 4
  %fld.load516 = load i64, ptr %fld.gep515, align 8
  %var.load517 = load ptr, ptr %var.e, align 8
  %fld.gep518 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load517, i32 0, i32 5
  %fld.load519 = load i64, ptr %fld.gep518, align 8
  %arena.cur520 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc521 = call ptr @dva_arena_alloc(ptr %arena.cur520, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld522 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 0
  store ptr %var.load505, ptr %rec.fld522, align 8
  %rec.fld523 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 1
  store ptr %fld.load508, ptr %rec.fld523, align 8
  %rec.fld524 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 2
  store ptr %fld.load511, ptr %rec.fld524, align 8
  %rec.fld525 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld525, ptr align 1 %fld.gep513, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld526 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 4
  store i64 %fld.load516, ptr %rec.fld526, align 8
  %rec.fld527 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc521, i32 0, i32 5
  store i64 %fld.load519, ptr %rec.fld527, align 8
  br label %choice.exit

choice.next475:                                   ; preds = %choice.next456
  %tag.gep530 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id531 = load i64, ptr %tag.gep530, align 8
  %tag.match532 = icmp eq i64 %tag.id531, 17
  br i1 %tag.match532, label %choice.case528, label %choice.next529

choice.case528:                                   ; preds = %choice.next475
  %pay.gep533 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr534 = load ptr, ptr %pay.gep533, align 8
  store ptr %payload.ptr534, ptr %var._535, align 8
  store ptr %payload.ptr534, ptr %var.b536, align 8
  %arena.cur537 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc538 = call ptr @dva_arena_alloc(ptr %arena.cur537, i64 16)
  %tag.gep539 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc538, i32 0, i32 0
  store i64 17, ptr %tag.gep539, align 8
  %pay.gep540 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc538, i32 0, i32 1
  %var.load541 = load ptr, ptr %var.ctx, align 8
  %var.load542 = load ptr, ptr %var.b536, align 8
  %a.load543 = load ptr, ptr %var.b536, align 8
  %a.null544 = icmp eq ptr %a.load543, null
  br i1 %a.null544, label %a.create545, label %a.after546

choice.next529:                                   ; preds = %choice.next475
  %tag.gep581 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id582 = load i64, ptr %tag.gep581, align 8
  %tag.match583 = icmp eq i64 %tag.id582, 18
  br i1 %tag.match583, label %choice.case579, label %choice.next580

a.create545:                                      ; preds = %choice.case528
  %arena.cur547 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create548 = call ptr @dva_arena_alloc(ptr %arena.cur547, i64 24)
  %arena.cur549 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf550 = call ptr @dva_arena_alloc(ptr %arena.cur549, i64 128)
  %a.len.gep551 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 0
  store i64 0, ptr %a.len.gep551, align 8
  %a.data.gep552 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 1
  store ptr %a.buf550, ptr %a.data.gep552, align 8
  %a.cap.gep553 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create548, i32 0, i32 2
  store i64 16, ptr %a.cap.gep553, align 8
  store ptr %a.create548, ptr %var.b536, align 8
  br label %a.after546

a.after546:                                       ; preds = %a.create545, %choice.case528
  %a.load2554 = load ptr, ptr %var.b536, align 8
  %call.res555 = call ptr @"typedopt::#rewrite_block"(ptr %var.load541, ptr %a.load2554)
  store ptr %call.res555, ptr %pay.gep540, align 8
  store ptr %enum.alloc538, ptr %var.__ctor_arg_459, align 8
  %var.load556 = load ptr, ptr %var.__ctor_arg_459, align 8
  %var.load557 = load ptr, ptr %var.e, align 8
  %fld.gep558 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load557, i32 0, i32 1
  %fld.load559 = load ptr, ptr %fld.gep558, align 8
  %var.load560 = load ptr, ptr %var.e, align 8
  %fld.gep561 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load560, i32 0, i32 2
  %fld.load562 = load ptr, ptr %fld.gep561, align 8
  %var.load563 = load ptr, ptr %var.e, align 8
  %fld.gep564 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load563, i32 0, i32 3
  %var.load565 = load ptr, ptr %var.e, align 8
  %fld.gep566 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load565, i32 0, i32 4
  %fld.load567 = load i64, ptr %fld.gep566, align 8
  %var.load568 = load ptr, ptr %var.e, align 8
  %fld.gep569 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load568, i32 0, i32 5
  %fld.load570 = load i64, ptr %fld.gep569, align 8
  %arena.cur571 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc572 = call ptr @dva_arena_alloc(ptr %arena.cur571, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld573 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 0
  store ptr %var.load556, ptr %rec.fld573, align 8
  %rec.fld574 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 1
  store ptr %fld.load559, ptr %rec.fld574, align 8
  %rec.fld575 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 2
  store ptr %fld.load562, ptr %rec.fld575, align 8
  %rec.fld576 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld576, ptr align 1 %fld.gep564, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld577 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 4
  store i64 %fld.load567, ptr %rec.fld577, align 8
  %rec.fld578 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc572, i32 0, i32 5
  store i64 %fld.load570, ptr %rec.fld578, align 8
  br label %choice.exit

choice.case579:                                   ; preds = %choice.next529
  %pay.gep584 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr585 = load ptr, ptr %pay.gep584, align 8
  store ptr %payload.ptr585, ptr %var._586, align 8
  store ptr %payload.ptr585, ptr %var.a, align 8
  %arena.cur587 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc588 = call ptr @dva_arena_alloc(ptr %arena.cur587, i64 16)
  %tag.gep589 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc588, i32 0, i32 0
  store i64 18, ptr %tag.gep589, align 8
  %pay.gep590 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc588, i32 0, i32 1
  %var.load591 = load ptr, ptr %var.a, align 8
  %fld.gep592 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load591, i32 0, i32 0
  %fld.load593 = load ptr, ptr %fld.gep592, align 8
  %var.load594 = load ptr, ptr %var.a, align 8
  %fld.gep595 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load594, i32 0, i32 1
  %fld.load596 = load i1, ptr %fld.gep595, align 1
  %var.load597 = load ptr, ptr %var.a, align 8
  %fld.gep598 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load597, i32 0, i32 2
  %fld.load599 = load i1, ptr %fld.gep598, align 1
  %var.load600 = load ptr, ptr %var.a, align 8
  %fld.gep601 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load600, i32 0, i32 3
  %fld.load602 = load i1, ptr %fld.gep601, align 1
  %var.load603 = load ptr, ptr %var.a, align 8
  %fld.gep604 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load603, i32 0, i32 4
  %fld.load605 = load i1, ptr %fld.gep604, align 1
  %var.load606 = load ptr, ptr %var.ctx, align 8
  %var.load607 = load ptr, ptr %var.a, align 8
  %fld.gep608 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load607, i32 0, i32 5
  %call.res609 = call ptr @"typedopt::#rewrite"(ptr %var.load606, ptr %fld.gep608)
  %arena.cur610 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc611 = call ptr @dva_arena_alloc(ptr %arena.cur610, i64 ptrtoint (ptr getelementptr ({ ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld612 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 0
  store ptr %fld.load593, ptr %rec.fld612, align 8
  %rec.fld613 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 1
  store i1 %fld.load596, ptr %rec.fld613, align 1
  %rec.fld614 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 2
  store i1 %fld.load599, ptr %rec.fld614, align 1
  %rec.fld615 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 3
  store i1 %fld.load602, ptr %rec.fld615, align 1
  %rec.fld616 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 4
  store i1 %fld.load605, ptr %rec.fld616, align 1
  %rec.fld617 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc611, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld617, ptr align 1 %call.res609, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc611, ptr %pay.gep590, align 8
  store ptr %enum.alloc588, ptr %var.__ctor_arg_473, align 8
  %var.load618 = load ptr, ptr %var.__ctor_arg_473, align 8
  %var.load619 = load ptr, ptr %var.e, align 8
  %fld.gep620 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load619, i32 0, i32 1
  %fld.load621 = load ptr, ptr %fld.gep620, align 8
  %var.load622 = load ptr, ptr %var.e, align 8
  %fld.gep623 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load622, i32 0, i32 2
  %fld.load624 = load ptr, ptr %fld.gep623, align 8
  %var.load625 = load ptr, ptr %var.e, align 8
  %fld.gep626 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load625, i32 0, i32 3
  %var.load627 = load ptr, ptr %var.e, align 8
  %fld.gep628 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load627, i32 0, i32 4
  %fld.load629 = load i64, ptr %fld.gep628, align 8
  %var.load630 = load ptr, ptr %var.e, align 8
  %fld.gep631 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load630, i32 0, i32 5
  %fld.load632 = load i64, ptr %fld.gep631, align 8
  %arena.cur633 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc634 = call ptr @dva_arena_alloc(ptr %arena.cur633, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld635 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 0
  store ptr %var.load618, ptr %rec.fld635, align 8
  %rec.fld636 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 1
  store ptr %fld.load621, ptr %rec.fld636, align 8
  %rec.fld637 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 2
  store ptr %fld.load624, ptr %rec.fld637, align 8
  %rec.fld638 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld638, ptr align 1 %fld.gep626, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld639 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 4
  store i64 %fld.load629, ptr %rec.fld639, align 8
  %rec.fld640 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc634, i32 0, i32 5
  store i64 %fld.load632, ptr %rec.fld640, align 8
  br label %choice.exit

choice.next580:                                   ; preds = %choice.next529
  %tag.gep643 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id644 = load i64, ptr %tag.gep643, align 8
  %tag.match645 = icmp eq i64 %tag.id644, 19
  br i1 %tag.match645, label %choice.case641, label %choice.next642

choice.case641:                                   ; preds = %choice.next580
  %pay.gep646 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr647 = load ptr, ptr %pay.gep646, align 8
  store ptr %payload.ptr647, ptr %var._648, align 8
  store ptr %payload.ptr647, ptr %var.c649, align 8
  %var.load650 = load ptr, ptr %var.ctx, align 8
  %fld.gep651 = getelementptr inbounds { ptr, i1 }, ptr %var.load650, i32 0, i32 1
  %fld.load652 = load i1, ptr %fld.gep651, align 1
  %arena.cur653 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc654 = call ptr @dva_arena_alloc(ptr %arena.cur653, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld655 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc654, i32 0, i32 0
  store ptr null, ptr %rec.fld655, align 8
  %rec.fld656 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc654, i32 0, i32 1
  store i1 %fld.load652, ptr %rec.fld656, align 1
  %var.load657 = load ptr, ptr %var.c649, align 8
  %fld.gep658 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load657, i32 0, i32 1
  %call.res659 = call ptr @"typedopt::#rewrite"(ptr %rec.alloc654, ptr %fld.gep658)
  store ptr %call.res659, ptr %var.body660, align 8
  %arena.cur661 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc662 = call ptr @dva_arena_alloc(ptr %arena.cur661, i64 16)
  %tag.gep663 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc662, i32 0, i32 0
  store i64 19, ptr %tag.gep663, align 8
  %pay.gep664 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc662, i32 0, i32 1
  %var.load665 = load ptr, ptr %var.ctx, align 8
  %var.load666 = load ptr, ptr %var.c649, align 8
  %fld.gep667 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load666, i32 0, i32 0
  %call.res668 = call ptr @"typedopt::#rewrite"(ptr %var.load665, ptr %fld.gep667)
  %var.load669 = load ptr, ptr %var.body660, align 8
  %var.load670 = load ptr, ptr %var.ctx, align 8
  %var.load671 = load ptr, ptr %var.c649, align 8
  %fld.gep672 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load671, i32 0, i32 2
  %fld.load673 = load ptr, ptr %fld.gep672, align 8
  %call.res674 = call ptr @"typedopt::#rewrite_optional"(ptr %var.load670, ptr %fld.load673)
  %var.load675 = load ptr, ptr %var.c649, align 8
  %fld.gep676 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %var.load675, i32 0, i32 3
  %fld.load677 = load i1, ptr %fld.gep676, align 1
  %arena.cur678 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc679 = call ptr @dva_arena_alloc(ptr %arena.cur678, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld680 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc679, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld680, ptr align 1 %call.res668, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld681 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc679, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld681, ptr align 1 %var.load669, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld682 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc679, i32 0, i32 2
  store ptr %call.res674, ptr %rec.fld682, align 8
  %rec.fld683 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr, i1 }, ptr %rec.alloc679, i32 0, i32 3
  store i1 %fld.load677, ptr %rec.fld683, align 1
  store ptr %rec.alloc679, ptr %pay.gep664, align 8
  store ptr %enum.alloc662, ptr %var.__ctor_arg_489, align 8
  %var.load684 = load ptr, ptr %var.__ctor_arg_489, align 8
  %var.load685 = load ptr, ptr %var.e, align 8
  %fld.gep686 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load685, i32 0, i32 1
  %fld.load687 = load ptr, ptr %fld.gep686, align 8
  %var.load688 = load ptr, ptr %var.e, align 8
  %fld.gep689 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load688, i32 0, i32 2
  %fld.load690 = load ptr, ptr %fld.gep689, align 8
  %var.load691 = load ptr, ptr %var.e, align 8
  %fld.gep692 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load691, i32 0, i32 3
  %var.load693 = load ptr, ptr %var.e, align 8
  %fld.gep694 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load693, i32 0, i32 4
  %fld.load695 = load i64, ptr %fld.gep694, align 8
  %var.load696 = load ptr, ptr %var.e, align 8
  %fld.gep697 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load696, i32 0, i32 5
  %fld.load698 = load i64, ptr %fld.gep697, align 8
  %arena.cur699 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc700 = call ptr @dva_arena_alloc(ptr %arena.cur699, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld701 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 0
  store ptr %var.load684, ptr %rec.fld701, align 8
  %rec.fld702 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 1
  store ptr %fld.load687, ptr %rec.fld702, align 8
  %rec.fld703 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 2
  store ptr %fld.load690, ptr %rec.fld703, align 8
  %rec.fld704 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld704, ptr align 1 %fld.gep692, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld705 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 4
  store i64 %fld.load695, ptr %rec.fld705, align 8
  %rec.fld706 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc700, i32 0, i32 5
  store i64 %fld.load698, ptr %rec.fld706, align 8
  br label %choice.exit

choice.next642:                                   ; preds = %choice.next580
  %tag.gep709 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id710 = load i64, ptr %tag.gep709, align 8
  %tag.match711 = icmp eq i64 %tag.id710, 21
  br i1 %tag.match711, label %choice.case707, label %choice.next708

choice.case707:                                   ; preds = %choice.next642
  %pay.gep712 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr713 = load ptr, ptr %pay.gep712, align 8
  store ptr %payload.ptr713, ptr %var._714, align 8
  store ptr %payload.ptr713, ptr %var.r, align 8
  %arena.cur715 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc716 = call ptr @dva_arena_alloc(ptr %arena.cur715, i64 16)
  %tag.gep717 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc716, i32 0, i32 0
  store i64 21, ptr %tag.gep717, align 8
  %pay.gep718 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc716, i32 0, i32 1
  %var.load719 = load ptr, ptr %var.r, align 8
  %fld.gep720 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load719, i32 0, i32 0
  %fld.load721 = load ptr, ptr %fld.gep720, align 8
  %var.load722 = load ptr, ptr %var.r, align 8
  %fld.gep723 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load722, i32 0, i32 1
  %fld.load724 = load i1, ptr %fld.gep723, align 1
  %var.load725 = load ptr, ptr %var.ctx, align 8
  %var.load726 = load ptr, ptr %var.r, align 8
  %fld.gep727 = getelementptr inbounds { ptr, i1, ptr }, ptr %var.load726, i32 0, i32 2
  %fld.load728 = load ptr, ptr %fld.gep727, align 8
  %call.res729 = call ptr @"typedopt::#rewrite_optional"(ptr %var.load725, ptr %fld.load728)
  %arena.cur730 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc731 = call ptr @dva_arena_alloc(ptr %arena.cur730, i64 ptrtoint (ptr getelementptr ({ ptr, i1, ptr }, ptr null, i32 1) to i64))
  %rec.fld732 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc731, i32 0, i32 0
  store ptr %fld.load721, ptr %rec.fld732, align 8
  %rec.fld733 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc731, i32 0, i32 1
  store i1 %fld.load724, ptr %rec.fld733, align 1
  %rec.fld734 = getelementptr inbounds { ptr, i1, ptr }, ptr %rec.alloc731, i32 0, i32 2
  store ptr %call.res729, ptr %rec.fld734, align 8
  store ptr %rec.alloc731, ptr %pay.gep718, align 8
  store ptr %enum.alloc716, ptr %var.__ctor_arg_500, align 8
  %var.load735 = load ptr, ptr %var.__ctor_arg_500, align 8
  %var.load736 = load ptr, ptr %var.e, align 8
  %fld.gep737 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load736, i32 0, i32 1
  %fld.load738 = load ptr, ptr %fld.gep737, align 8
  %var.load739 = load ptr, ptr %var.e, align 8
  %fld.gep740 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load739, i32 0, i32 2
  %fld.load741 = load ptr, ptr %fld.gep740, align 8
  %var.load742 = load ptr, ptr %var.e, align 8
  %fld.gep743 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load742, i32 0, i32 3
  %var.load744 = load ptr, ptr %var.e, align 8
  %fld.gep745 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load744, i32 0, i32 4
  %fld.load746 = load i64, ptr %fld.gep745, align 8
  %var.load747 = load ptr, ptr %var.e, align 8
  %fld.gep748 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load747, i32 0, i32 5
  %fld.load749 = load i64, ptr %fld.gep748, align 8
  %arena.cur750 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc751 = call ptr @dva_arena_alloc(ptr %arena.cur750, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld752 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 0
  store ptr %var.load735, ptr %rec.fld752, align 8
  %rec.fld753 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 1
  store ptr %fld.load738, ptr %rec.fld753, align 8
  %rec.fld754 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 2
  store ptr %fld.load741, ptr %rec.fld754, align 8
  %rec.fld755 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld755, ptr align 1 %fld.gep743, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld756 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 4
  store i64 %fld.load746, ptr %rec.fld756, align 8
  %rec.fld757 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc751, i32 0, i32 5
  store i64 %fld.load749, ptr %rec.fld757, align 8
  br label %choice.exit

choice.next708:                                   ; preds = %choice.next642
  %tag.gep760 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id761 = load i64, ptr %tag.gep760, align 8
  %tag.match762 = icmp eq i64 %tag.id761, 22
  br i1 %tag.match762, label %choice.case758, label %choice.next759

choice.case758:                                   ; preds = %choice.next708
  %pay.gep763 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr764 = load ptr, ptr %pay.gep763, align 8
  store ptr %payload.ptr764, ptr %var._765, align 8
  store ptr %payload.ptr764, ptr %var.r766, align 8
  %arena.cur767 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc768 = call ptr @dva_arena_alloc(ptr %arena.cur767, i64 16)
  %tag.gep769 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc768, i32 0, i32 0
  store i64 22, ptr %tag.gep769, align 8
  %pay.gep770 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc768, i32 0, i32 1
  %var.load771 = load ptr, ptr %var.r766, align 8
  %fld.gep772 = getelementptr inbounds { ptr, ptr }, ptr %var.load771, i32 0, i32 0
  %fld.load773 = load ptr, ptr %fld.gep772, align 8
  %var.load774 = load ptr, ptr %var.ctx, align 8
  %var.load775 = load ptr, ptr %var.r766, align 8
  %fld.gep776 = getelementptr inbounds { ptr, ptr }, ptr %var.load775, i32 0, i32 1
  %fld.load777 = load ptr, ptr %fld.gep776, align 8
  %call.res778 = call ptr @"typedopt::#rewrite_optional"(ptr %var.load774, ptr %fld.load777)
  %arena.cur779 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc780 = call ptr @dva_arena_alloc(ptr %arena.cur779, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  %rec.fld781 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc780, i32 0, i32 0
  store ptr %fld.load773, ptr %rec.fld781, align 8
  %rec.fld782 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc780, i32 0, i32 1
  store ptr %call.res778, ptr %rec.fld782, align 8
  store ptr %rec.alloc780, ptr %pay.gep770, align 8
  store ptr %enum.alloc768, ptr %var.__ctor_arg_510, align 8
  %var.load783 = load ptr, ptr %var.__ctor_arg_510, align 8
  %var.load784 = load ptr, ptr %var.e, align 8
  %fld.gep785 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load784, i32 0, i32 1
  %fld.load786 = load ptr, ptr %fld.gep785, align 8
  %var.load787 = load ptr, ptr %var.e, align 8
  %fld.gep788 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load787, i32 0, i32 2
  %fld.load789 = load ptr, ptr %fld.gep788, align 8
  %var.load790 = load ptr, ptr %var.e, align 8
  %fld.gep791 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load790, i32 0, i32 3
  %var.load792 = load ptr, ptr %var.e, align 8
  %fld.gep793 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load792, i32 0, i32 4
  %fld.load794 = load i64, ptr %fld.gep793, align 8
  %var.load795 = load ptr, ptr %var.e, align 8
  %fld.gep796 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load795, i32 0, i32 5
  %fld.load797 = load i64, ptr %fld.gep796, align 8
  %arena.cur798 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc799 = call ptr @dva_arena_alloc(ptr %arena.cur798, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld800 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 0
  store ptr %var.load783, ptr %rec.fld800, align 8
  %rec.fld801 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 1
  store ptr %fld.load786, ptr %rec.fld801, align 8
  %rec.fld802 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 2
  store ptr %fld.load789, ptr %rec.fld802, align 8
  %rec.fld803 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld803, ptr align 1 %fld.gep791, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld804 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 4
  store i64 %fld.load794, ptr %rec.fld804, align 8
  %rec.fld805 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc799, i32 0, i32 5
  store i64 %fld.load797, ptr %rec.fld805, align 8
  br label %choice.exit

choice.next759:                                   ; preds = %choice.next708
  %tag.gep808 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 0
  %tag.id809 = load i64, ptr %tag.gep808, align 8
  %tag.match810 = icmp eq i64 %tag.id809, 34
  br i1 %tag.match810, label %choice.case806, label %choice.next807

choice.case806:                                   ; preds = %choice.next759
  %pay.gep811 = getelementptr inbounds { i64, ptr }, ptr %fld.load, i32 0, i32 1
  %payload.ptr812 = load ptr, ptr %pay.gep811, align 8
  store ptr %payload.ptr812, ptr %var._813, align 8
  store ptr %payload.ptr812, ptr %var.r814, align 8
  %arena.cur815 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc816 = call ptr @dva_arena_alloc(ptr %arena.cur815, i64 16)
  %tag.gep817 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc816, i32 0, i32 0
  store i64 34, ptr %tag.gep817, align 8
  %pay.gep818 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc816, i32 0, i32 1
  %var.load819 = load ptr, ptr %var.ctx, align 8
  %var.load820 = load ptr, ptr %var.r814, align 8
  %call.res821 = call ptr @"typedopt::#rewrite_optional"(ptr %var.load819, ptr %var.load820)
  store ptr %call.res821, ptr %pay.gep818, align 8
  store ptr %enum.alloc816, ptr %var.__ctor_arg_518, align 8
  %var.load822 = load ptr, ptr %var.__ctor_arg_518, align 8
  %var.load823 = load ptr, ptr %var.e, align 8
  %fld.gep824 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load823, i32 0, i32 1
  %fld.load825 = load ptr, ptr %fld.gep824, align 8
  %var.load826 = load ptr, ptr %var.e, align 8
  %fld.gep827 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load826, i32 0, i32 2
  %fld.load828 = load ptr, ptr %fld.gep827, align 8
  %var.load829 = load ptr, ptr %var.e, align 8
  %fld.gep830 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load829, i32 0, i32 3
  %var.load831 = load ptr, ptr %var.e, align 8
  %fld.gep832 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load831, i32 0, i32 4
  %fld.load833 = load i64, ptr %fld.gep832, align 8
  %var.load834 = load ptr, ptr %var.e, align 8
  %fld.gep835 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load834, i32 0, i32 5
  %fld.load836 = load i64, ptr %fld.gep835, align 8
  %arena.cur837 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc838 = call ptr @dva_arena_alloc(ptr %arena.cur837, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld839 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 0
  store ptr %var.load822, ptr %rec.fld839, align 8
  %rec.fld840 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 1
  store ptr %fld.load825, ptr %rec.fld840, align 8
  %rec.fld841 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 2
  store ptr %fld.load828, ptr %rec.fld841, align 8
  %rec.fld842 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld842, ptr align 1 %fld.gep830, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld843 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 4
  store i64 %fld.load833, ptr %rec.fld843, align 8
  %rec.fld844 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc838, i32 0, i32 5
  store i64 %fld.load836, ptr %rec.fld844, align 8
  br label %choice.exit

choice.next807:                                   ; preds = %choice.next759
  %var.load845 = load ptr, ptr %var.e, align 8
  br label %choice.exit
}

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
define internal void @dva_abort_arr_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @arr_overflow_msg, i64 25)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define internal ptr @"typedopt::#simplify_choice"(ptr %0, ptr %1, ptr %2, ptr %3) #0 {
entry:
  %var.take_yes = alloca i1, align 1
  %var.flag = alloca i1, align 1
  %var._322 = alloca i1, align 1
  %var.eligible = alloca i1, align 1
  %var.no = alloca ptr, align 8
  %var.yes = alloca ptr, align 8
  %var._124 = alloca i1, align 1
  %var.fallback = alloca ptr, align 8
  %var.__ctor_arg_291 = alloca ptr, align 8
  %var.__ctor_arg_285 = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.br = alloca ptr, align 8
  %loop.step.182 = alloca i64, align 8
  %loop.idx.182 = alloca i64, align 8
  %var.branch_ctx = alloca ptr, align 8
  %var.out = alloca ptr, align 8
  %var.cond = alloca ptr, align 8
  %var.branches = alloca ptr, align 8
  %var.condition = alloca ptr, align 8
  %var.orig = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.orig, align 8
  store ptr %2, ptr %var.condition, align 8
  store ptr %3, ptr %var.branches, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %var.load1 = load ptr, ptr %var.condition, align 8
  %call.res = call ptr @"typedopt::#scalar_operand"(ptr %var.load, ptr %var.load1)
  store ptr %call.res, ptr %var.cond, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 24)
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.out, align 8
  %var.load3 = load ptr, ptr %var.ctx, align 8
  %fld.gep = getelementptr inbounds { ptr, i1 }, ptr %var.load3, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %arena.cur4 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur4, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr null, ptr %rec.fld, align 8
  %rec.fld5 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %fld.load, ptr %rec.fld5, align 1
  store ptr %rec.alloc, ptr %var.branch_ctx, align 8
  %var.load6 = load ptr, ptr %var.branches, align 8
  %a.load = load ptr, ptr %var.branches, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 24)
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 128)
  %a.len.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 0
  store i64 0, ptr %a.len.gep11, align 8
  %a.data.gep12 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 1
  store ptr %a.buf10, ptr %a.data.gep12, align 8
  %a.cap.gep13 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create8, i32 0, i32 2
  store i64 16, ptr %a.cap.gep13, align 8
  store ptr %a.create8, ptr %var.branches, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.branches, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len14 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data15 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.182, align 8
  br label %loop.header.182

loop.header.182:                                  ; preds = %loop.latch.182, %a.after
  %counter.load = load i64, ptr %loop.idx.182, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len14
  br i1 %loop.cond, label %loop.body.182, label %loop.exit.nat.182

loop.body.182:                                    ; preds = %loop.header.182
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.182, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data15, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.br, align 8
  %var.load16 = load ptr, ptr %var.branch_ctx, align 8
  %var.load17 = load ptr, ptr %var.br, align 8
  %fld.gep18 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load17, i32 0, i32 5
  %call.res19 = call ptr @"typedopt::#rewrite"(ptr %var.load16, ptr %fld.gep18)
  store ptr %call.res19, ptr %var.__ctor_arg_285, align 8
  %var.load20 = load ptr, ptr %var.br, align 8
  %fld.gep21 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load20, i32 0, i32 0
  %fld.load22 = load ptr, ptr %fld.gep21, align 8
  %var.load23 = load ptr, ptr %var.br, align 8
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load23, i32 0, i32 1
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  %var.load26 = load ptr, ptr %var.br, align 8
  %fld.gep27 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load26, i32 0, i32 2
  %fld.load28 = load ptr, ptr %fld.gep27, align 8
  %var.load29 = load ptr, ptr %var.br, align 8
  %fld.gep30 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load29, i32 0, i32 3
  %fld.load31 = load ptr, ptr %fld.gep30, align 8
  %var.load32 = load ptr, ptr %var.br, align 8
  %fld.gep33 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load32, i32 0, i32 4
  %fld.load34 = load ptr, ptr %fld.gep33, align 8
  %var.load35 = load ptr, ptr %var.__ctor_arg_285, align 8
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld38 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 0
  store ptr %fld.load22, ptr %rec.fld38, align 8
  %rec.fld39 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 1
  store ptr %fld.load25, ptr %rec.fld39, align 8
  %rec.fld40 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 2
  store ptr %fld.load28, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 3
  store ptr %fld.load31, ptr %rec.fld41, align 8
  %rec.fld42 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 4
  store ptr %fld.load34, ptr %rec.fld42, align 8
  %rec.fld43 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc37, i32 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld43, ptr align 1 %var.load35, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %a.load44 = load ptr, ptr %var.out, align 8
  %a.null45 = icmp eq ptr %a.load44, null
  br i1 %a.null45, label %a.create46, label %a.after47

loop.exit.nat.182:                                ; preds = %loop.header.182
  br label %loop.exit.182

loop.latch.182:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.182, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.182, align 8
  br label %loop.header.182

loop.exit.182:                                    ; preds = %loop.exit.nat.182
  %arena.cur60 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur60, i64 16)
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 15, ptr %tag.gep, align 8
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load61 = load ptr, ptr %var.condition, align 8
  %var.load62 = load ptr, ptr %var.out, align 8
  %a.load63 = load ptr, ptr %var.out, align 8
  %a.null64 = icmp eq ptr %a.load63, null
  br i1 %a.null64, label %a.create65, label %a.after66

a.create46:                                       ; preds = %loop.body.182
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 24)
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 128)
  %a.len.gep52 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 0
  store i64 0, ptr %a.len.gep52, align 8
  %a.data.gep53 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 1
  store ptr %a.buf51, ptr %a.data.gep53, align 8
  %a.cap.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create49, i32 0, i32 2
  store i64 16, ptr %a.cap.gep54, align 8
  store ptr %a.create49, ptr %var.out, align 8
  br label %a.after47

a.after47:                                        ; preds = %a.create46, %loop.body.182
  %a.load255 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after47
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  %a.len56 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 2
  %a.cap57 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len56, %a.cap57
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load255)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 1
  %a.cur.data58 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  %a.cur.len59 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data58, i64 %a.cur.len59
  %slot.p2i = ptrtoint ptr %rec.alloc37 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len59, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load255, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.182

a.create65:                                       ; preds = %loop.exit.182
  %arena.cur67 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create68 = call ptr @dva_arena_alloc(ptr %arena.cur67, i64 24)
  %arena.cur69 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf70 = call ptr @dva_arena_alloc(ptr %arena.cur69, i64 128)
  %a.len.gep71 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 0
  store i64 0, ptr %a.len.gep71, align 8
  %a.data.gep72 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 1
  store ptr %a.buf70, ptr %a.data.gep72, align 8
  %a.cap.gep73 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create68, i32 0, i32 2
  store i64 16, ptr %a.cap.gep73, align 8
  store ptr %a.create68, ptr %var.out, align 8
  br label %a.after66

a.after66:                                        ; preds = %a.create65, %loop.exit.182
  %a.load274 = load ptr, ptr %var.out, align 8
  %arena.cur75 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc76 = call ptr @dva_arena_alloc(ptr %arena.cur75, i64 ptrtoint (ptr getelementptr ({ { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr null, i32 1) to i64))
  %rec.fld77 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc76, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld77, ptr align 1 %var.load61, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld78 = getelementptr inbounds { { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr }, ptr %rec.alloc76, i32 0, i32 1
  store ptr %a.load274, ptr %rec.fld78, align 8
  store ptr %rec.alloc76, ptr %pay.gep, align 8
  store ptr %enum.alloc, ptr %var.__ctor_arg_291, align 8
  %var.load79 = load ptr, ptr %var.__ctor_arg_291, align 8
  %var.load80 = load ptr, ptr %var.orig, align 8
  %fld.gep81 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load80, i32 0, i32 1
  %fld.load82 = load ptr, ptr %fld.gep81, align 8
  %var.load83 = load ptr, ptr %var.orig, align 8
  %fld.gep84 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load83, i32 0, i32 2
  %fld.load85 = load ptr, ptr %fld.gep84, align 8
  %var.load86 = load ptr, ptr %var.orig, align 8
  %fld.gep87 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load86, i32 0, i32 3
  %var.load88 = load ptr, ptr %var.orig, align 8
  %fld.gep89 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load88, i32 0, i32 4
  %fld.load90 = load i64, ptr %fld.gep89, align 8
  %var.load91 = load ptr, ptr %var.orig, align 8
  %fld.gep92 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load91, i32 0, i32 5
  %fld.load93 = load i64, ptr %fld.gep92, align 8
  %arena.cur94 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc95 = call ptr @dva_arena_alloc(ptr %arena.cur94, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64))
  %rec.fld96 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 0
  store ptr %var.load79, ptr %rec.fld96, align 8
  %rec.fld97 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 1
  store ptr %fld.load82, ptr %rec.fld97, align 8
  %rec.fld98 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 2
  store ptr %fld.load85, ptr %rec.fld98, align 8
  %rec.fld99 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld99, ptr align 1 %fld.gep87, i64 ptrtoint (ptr getelementptr ({ i64, i64, ptr }, ptr null, i32 1) to i64), i1 false)
  %rec.fld100 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 4
  store i64 %fld.load90, ptr %rec.fld100, align 8
  %rec.fld101 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %rec.alloc95, i32 0, i32 5
  store i64 %fld.load93, ptr %rec.fld101, align 8
  store ptr %rec.alloc95, ptr %var.fallback, align 8
  %var.load102 = load ptr, ptr %var.ctx, align 8
  %fld.gep103 = getelementptr inbounds { ptr, i1 }, ptr %var.load102, i32 0, i32 1
  %fld.load104 = load i1, ptr %fld.gep103, align 1
  %nottmp = xor i1 %fld.load104, true
  br i1 %nottmp, label %or.183.then, label %or.183.else

or.183.then:                                      ; preds = %a.after66
  br label %or.183.exit

or.183.else:                                      ; preds = %a.after66
  %var.load105 = load ptr, ptr %var.out, align 8
  %a.load106 = load ptr, ptr %var.out, align 8
  %a.null107 = icmp eq ptr %a.load106, null
  br i1 %a.null107, label %a.create108, label %a.after109

or.183.exit:                                      ; preds = %a.after109, %or.183.then
  %or.183.phi = phi i1 [ %nottmp, %or.183.then ], [ %cmptmp, %a.after109 ]
  br i1 %or.183.phi, label %or.184.then, label %or.184.else

a.create108:                                      ; preds = %or.183.else
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create111 = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 24)
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf113 = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 128)
  %a.len.gep114 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 0
  store i64 0, ptr %a.len.gep114, align 8
  %a.data.gep115 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 1
  store ptr %a.buf113, ptr %a.data.gep115, align 8
  %a.cap.gep116 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create111, i32 0, i32 2
  store i64 16, ptr %a.cap.gep116, align 8
  store ptr %a.create111, ptr %var.out, align 8
  br label %a.after109

a.after109:                                       ; preds = %a.create108, %or.183.else
  %a.load2117 = load ptr, ptr %var.out, align 8
  %a.len.query = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2117, i32 0, i32 0
  %a.len.query118 = load i64, ptr %a.len.query, align 8
  %cmptmp = icmp ne i64 %a.len.query118, 2
  br label %or.183.exit

or.184.then:                                      ; preds = %or.183.exit
  br label %or.184.exit

or.184.else:                                      ; preds = %or.183.exit
  %var.load119 = load ptr, ptr %var.cond, align 8
  %fld.gep120 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load119, i32 0, i32 0
  %fld.load121 = load ptr, ptr %fld.gep120, align 8
  %tag.gep122 = getelementptr inbounds { i64, ptr }, ptr %fld.load121, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep122, align 8
  %tag.match = icmp eq i64 %tag.id, 4
  br i1 %tag.match, label %choice.case, label %choice.next

or.184.exit:                                      ; preds = %choice.exit, %or.184.then
  %or.184.phi = phi i1 [ %or.183.phi, %or.184.then ], [ %nottmp125, %choice.exit ]
  br i1 %or.184.phi, label %choice.then, label %choice.exit126

choice.exit:                                      ; preds = %choice.next, %pay.int.merge
  %choice.res = phi i1 [ true, %pay.int.merge ], [ false, %choice.next ]
  %nottmp125 = xor i1 %choice.res, true
  br label %or.184.exit

choice.case:                                      ; preds = %or.184.else
  %pay.gep123 = getelementptr inbounds { i64, ptr }, ptr %fld.load121, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep123, align 8
  %pay.int.null = icmp eq ptr %payload.ptr, null
  br i1 %pay.int.null, label %pay.int.nullbb, label %pay.int.load

choice.next:                                      ; preds = %or.184.else
  br label %choice.exit

pay.int.load:                                     ; preds = %choice.case
  %pay.int.val = load i1, ptr %payload.ptr, align 1
  br label %pay.int.merge

pay.int.nullbb:                                   ; preds = %choice.case
  br label %pay.int.merge

pay.int.merge:                                    ; preds = %pay.int.nullbb, %pay.int.load
  %pay.int.phi = phi i1 [ %pay.int.val, %pay.int.load ], [ false, %pay.int.nullbb ]
  store i1 %pay.int.phi, ptr %var._124, align 1
  br label %choice.exit

choice.then:                                      ; preds = %or.184.exit
  %var.load127 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load127

choice.exit126:                                   ; preds = %ret.dead, %or.184.exit
  %var.load128 = load ptr, ptr %var.out, align 8
  %a.load129 = load ptr, ptr %var.out, align 8
  %a.null130 = icmp eq ptr %a.load129, null
  br i1 %a.null130, label %a.create131, label %a.after132

ret.dead:                                         ; No predecessors!
  br label %choice.exit126

a.create131:                                      ; preds = %choice.exit126
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create134 = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 24)
  %arena.cur135 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf136 = call ptr @dva_arena_alloc(ptr %arena.cur135, i64 128)
  %a.len.gep137 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 0
  store i64 0, ptr %a.len.gep137, align 8
  %a.data.gep138 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 1
  store ptr %a.buf136, ptr %a.data.gep138, align 8
  %a.cap.gep139 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create134, i32 0, i32 2
  store i64 16, ptr %a.cap.gep139, align 8
  store ptr %a.create134, ptr %var.out, align 8
  br label %a.after132

a.after132:                                       ; preds = %a.create131, %choice.exit126
  %a.load2140 = load ptr, ptr %var.out, align 8
  %a.rd.nonnull = icmp ne ptr %a.load2140, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

a.rd.check:                                       ; preds = %a.after132
  %a.rd.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 0
  %a.rd.len141 = load i64, ptr %a.rd.len, align 8
  %a.rd.lt = icmp slt i64 0, %a.rd.len141
  %a.rd.bounds = and i1 true, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2140, i32 0, i32 1
  %a.rd.data142 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data142, i64 0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %a.after132
  %arena.cur143 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur143, i64 56)
  %err.code.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 0
  store i64 4011, ptr %err.code.gep, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 129, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 19, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  %err.ctx0.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur144 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc145 = call ptr @dva_arena_alloc(ptr %arena.cur144, i64 56)
  %err.code.gep146 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 0
  store i64 4011, ptr %err.code.gep146, align 8
  %err.msg.gep147 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep147, align 8
  %err.file.gep148 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep148, align 8
  %err.line.gep149 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 3
  store i64 129, ptr %err.line.gep149, align 8
  %err.col.gep150 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 4
  store i64 19, ptr %err.col.gep150, align 8
  %err.ctx.gep151 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc145, i32 0, i32 5
  %err.ctx0.gep152 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep151, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep152, align 8
  %err.ctx1.gep153 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep151, i32 0, i32 1
  store i64 %a.rd.len141, ptr %err.ctx1.gep153, align 8
  %err.p2i154 = ptrtoint ptr %err.alloc145 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i154, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %unwrap.is_pos = extractvalue { i1, i64 } %ram.pay, 0
  br i1 %unwrap.is_pos, label %unwrap.pos.185, label %unwrap.abort.185

unwrap.pos.185:                                   ; preds = %a.rd.done
  %unwrap.pay.pos = extractvalue { i1, i64 } %ram.pay, 1
  %pay.ptr = inttoptr i64 %unwrap.pay.pos to ptr
  store ptr %pay.ptr, ptr %var.yes, align 8
  %var.load166 = load ptr, ptr %var.out, align 8
  %a.load167 = load ptr, ptr %var.out, align 8
  %a.null168 = icmp eq ptr %a.load167, null
  br i1 %a.null168, label %a.create169, label %a.after170

unwrap.abort.185:                                 ; preds = %a.rd.done
  %unwrap.pay.abort = extractvalue { i1, i64 } %ram.pay, 1
  %err.ptr = inttoptr i64 %unwrap.pay.abort to ptr
  %err.code.gep155 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 0
  %err.code = load i64, ptr %err.code.gep155, align 8
  %err.msg.gep156 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep156, align 8
  %err.file.gep157 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep157, align 8
  %err.line.gep158 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep158, align 8
  %err.col.gep159 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep159, align 8
  %err.msg.len = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 0
  %err.msg.len160 = load i64, ptr %err.msg.len, align 8
  %err.msg.len161 = and i64 %err.msg.len160, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len161 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data162 = load ptr, ptr %err.msg.data, align 8
  %err.file.len = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 0
  %err.file.len163 = load i64, ptr %err.file.len, align 8
  %err.file.len164 = and i64 %err.file.len163, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len164 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data165 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.185
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.185
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data162, i32 %err.file.len32, ptr %err.file.data165, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

a.create169:                                      ; preds = %unwrap.pos.185
  %arena.cur171 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create172 = call ptr @dva_arena_alloc(ptr %arena.cur171, i64 24)
  %arena.cur173 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf174 = call ptr @dva_arena_alloc(ptr %arena.cur173, i64 128)
  %a.len.gep175 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 0
  store i64 0, ptr %a.len.gep175, align 8
  %a.data.gep176 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 1
  store ptr %a.buf174, ptr %a.data.gep176, align 8
  %a.cap.gep177 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create172, i32 0, i32 2
  store i64 16, ptr %a.cap.gep177, align 8
  store ptr %a.create172, ptr %var.out, align 8
  br label %a.after170

a.after170:                                       ; preds = %a.create169, %unwrap.pos.185
  %a.load2178 = load ptr, ptr %var.out, align 8
  %a.rd.nonnull179 = icmp ne ptr %a.load2178, null
  br i1 %a.rd.nonnull179, label %a.rd.check180, label %a.rd.err.null182

a.rd.check180:                                    ; preds = %a.after170
  %a.rd.len185 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 0
  %a.rd.len186 = load i64, ptr %a.rd.len185, align 8
  %a.rd.lt187 = icmp slt i64 1, %a.rd.len186
  %a.rd.bounds188 = and i1 true, %a.rd.lt187
  br i1 %a.rd.bounds188, label %a.rd.ok181, label %a.rd.err.oob183

a.rd.ok181:                                       ; preds = %a.rd.check180
  %a.rd.data189 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2178, i32 0, i32 1
  %a.rd.data190 = load ptr, ptr %a.rd.data189, align 8
  %a.rd.elem.gep191 = getelementptr i64, ptr %a.rd.data190, i64 1
  %a.rd.elem192 = load i64, ptr %a.rd.elem.gep191, align 8
  br label %a.rd.done184

a.rd.err.null182:                                 ; preds = %a.after170
  %arena.cur193 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 56)
  %err.code.gep195 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 0
  store i64 4011, ptr %err.code.gep195, align 8
  %err.msg.gep196 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 1
  store ptr @str.1.struct, ptr %err.msg.gep196, align 8
  %err.file.gep197 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep197, align 8
  %err.line.gep198 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 3
  store i64 130, ptr %err.line.gep198, align 8
  %err.col.gep199 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 4
  store i64 18, ptr %err.col.gep199, align 8
  %err.ctx.gep200 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc194, i32 0, i32 5
  %err.ctx0.gep201 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep200, i32 0, i32 0
  store i64 0, ptr %err.ctx0.gep201, align 8
  %err.ctx1.gep202 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep200, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep202, align 8
  %err.p2i203 = ptrtoint ptr %err.alloc194 to i64
  br label %a.rd.done184

a.rd.err.oob183:                                  ; preds = %a.rd.check180
  %arena.cur204 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc205 = call ptr @dva_arena_alloc(ptr %arena.cur204, i64 56)
  %err.code.gep206 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 0
  store i64 4011, ptr %err.code.gep206, align 8
  %err.msg.gep207 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 1
  store ptr @str.3.struct, ptr %err.msg.gep207, align 8
  %err.file.gep208 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 2
  store ptr @str.2.struct, ptr %err.file.gep208, align 8
  %err.line.gep209 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 3
  store i64 130, ptr %err.line.gep209, align 8
  %err.col.gep210 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 4
  store i64 18, ptr %err.col.gep210, align 8
  %err.ctx.gep211 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc205, i32 0, i32 5
  %err.ctx0.gep212 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 0
  store i64 1, ptr %err.ctx0.gep212, align 8
  %err.ctx1.gep213 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep211, i32 0, i32 1
  store i64 %a.rd.len186, ptr %err.ctx1.gep213, align 8
  %err.p2i214 = ptrtoint ptr %err.alloc205 to i64
  br label %a.rd.done184

a.rd.done184:                                     ; preds = %a.rd.err.oob183, %a.rd.err.null182, %a.rd.ok181
  %a.rd.tag215 = phi i1 [ true, %a.rd.ok181 ], [ false, %a.rd.err.null182 ], [ false, %a.rd.err.oob183 ]
  %a.rd.pay216 = phi i64 [ %a.rd.elem192, %a.rd.ok181 ], [ %err.p2i203, %a.rd.err.null182 ], [ %err.p2i214, %a.rd.err.oob183 ]
  %ram.tag217 = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag215, 0
  %ram.pay218 = insertvalue { i1, i64 } %ram.tag217, i64 %a.rd.pay216, 1
  %unwrap.is_pos219 = extractvalue { i1, i64 } %ram.pay218, 0
  br i1 %unwrap.is_pos219, label %unwrap.pos.186, label %unwrap.abort.186

unwrap.pos.186:                                   ; preds = %a.rd.done184
  %unwrap.pay.pos251 = extractvalue { i1, i64 } %ram.pay218, 1
  %pay.ptr252 = inttoptr i64 %unwrap.pay.pos251 to ptr
  store ptr %pay.ptr252, ptr %var.no, align 8
  %var.load253 = load ptr, ptr %var.yes, align 8
  %fld.gep254 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load253, i32 0, i32 0
  %fld.load255 = load ptr, ptr %fld.gep254, align 8
  %tag.gep259 = getelementptr inbounds { i64, ptr }, ptr %fld.load255, i32 0, i32 0
  %tag.id260 = load i64, ptr %tag.gep259, align 8
  %tag.match261 = icmp eq i64 %tag.id260, 3
  br i1 %tag.match261, label %choice.case257, label %choice.next258

unwrap.abort.186:                                 ; preds = %a.rd.done184
  %unwrap.pay.abort220 = extractvalue { i1, i64 } %ram.pay218, 1
  %err.ptr221 = inttoptr i64 %unwrap.pay.abort220 to ptr
  %err.code.gep222 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 0
  %err.code223 = load i64, ptr %err.code.gep222, align 8
  %err.msg.gep224 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 1
  %err.msg.struct225 = load ptr, ptr %err.msg.gep224, align 8
  %err.file.gep226 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 2
  %err.file.struct227 = load ptr, ptr %err.file.gep226, align 8
  %err.line.gep228 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 3
  %err.line229 = load i64, ptr %err.line.gep228, align 8
  %err.col.gep230 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr221, i32 0, i32 4
  %err.col231 = load i64, ptr %err.col.gep230, align 8
  %err.msg.len232 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct225, i32 0, i32 0
  %err.msg.len233 = load i64, ptr %err.msg.len232, align 8
  %err.msg.len234 = and i64 %err.msg.len233, 281474976710655
  %err.msg.len32235 = trunc i64 %err.msg.len234 to i32
  %err.msg.data236 = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct225, i32 0, i32 1
  %err.msg.data237 = load ptr, ptr %err.msg.data236, align 8
  %err.file.len238 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct227, i32 0, i32 0
  %err.file.len239 = load i64, ptr %err.file.len238, align 8
  %err.file.len240 = and i64 %err.file.len239, 281474976710655
  %err.file.len32241 = trunc i64 %err.file.len240 to i32
  %err.file.data242 = getelementptr inbounds { i64, ptr }, ptr %err.file.struct227, i32 0, i32 1
  %err.file.data243 = load ptr, ptr %err.file.data242, align 8
  %err.thread.rec244 = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread245 = icmp ne ptr %err.thread.rec244, null
  br i1 %err.is.thread245, label %err.thread246, label %err.normal247

err.thread246:                                    ; preds = %unwrap.abort.186
  %err.haserr.gep248 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep248, align 8
  %err.err.gep249 = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec244, i32 0, i32 7
  store ptr %err.ptr221, ptr %err.err.gep249, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal247:                                    ; preds = %unwrap.abort.186
  %err.panic.printf250 = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code223, i32 %err.msg.len32235, ptr %err.msg.data237, i32 %err.file.len32241, ptr %err.file.data243, i64 %err.line229, i64 %err.col231)
  call void @exit(i32 1)
  unreachable

choice.exit256:                                   ; preds = %choice.next258, %choice.case257
  %choice.res262 = phi i1 [ true, %choice.case257 ], [ false, %choice.next258 ]
  br i1 %choice.res262, label %and.187.then, label %and.187.else

choice.case257:                                   ; preds = %unwrap.pos.186
  br label %choice.exit256

choice.next258:                                   ; preds = %unwrap.pos.186
  br label %choice.exit256

and.187.then:                                     ; preds = %choice.exit256
  %var.load263 = load ptr, ptr %var.no, align 8
  %fld.gep264 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load263, i32 0, i32 0
  %fld.load265 = load ptr, ptr %fld.gep264, align 8
  %tag.gep269 = getelementptr inbounds { i64, ptr }, ptr %fld.load265, i32 0, i32 0
  %tag.id270 = load i64, ptr %tag.gep269, align 8
  %tag.match271 = icmp eq i64 %tag.id270, 3
  br i1 %tag.match271, label %choice.case267, label %choice.next268

and.187.else:                                     ; preds = %choice.exit256
  br label %and.187.exit

and.187.exit:                                     ; preds = %and.187.else, %choice.exit266
  %and.187.phi = phi i1 [ %choice.res272, %choice.exit266 ], [ %choice.res262, %and.187.else ]
  br i1 %and.187.phi, label %and.188.then, label %and.188.else

choice.exit266:                                   ; preds = %choice.next268, %choice.case267
  %choice.res272 = phi i1 [ true, %choice.case267 ], [ false, %choice.next268 ]
  br label %and.187.exit

choice.case267:                                   ; preds = %and.187.then
  br label %choice.exit266

choice.next268:                                   ; preds = %and.187.then
  br label %choice.exit266

and.188.then:                                     ; preds = %and.187.exit
  %var.load273 = load ptr, ptr %var.yes, align 8
  %fld.gep274 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load273, i32 0, i32 4
  %fld.load275 = load ptr, ptr %fld.gep274, align 8
  %a.len.query276 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load275, i32 0, i32 0
  %a.len.query277 = load i64, ptr %a.len.query276, align 8
  %cmptmp278 = icmp eq i64 %a.len.query277, 0
  br label %and.188.exit

and.188.else:                                     ; preds = %and.187.exit
  br label %and.188.exit

and.188.exit:                                     ; preds = %and.188.else, %and.188.then
  %and.188.phi = phi i1 [ %cmptmp278, %and.188.then ], [ %and.187.phi, %and.188.else ]
  br i1 %and.188.phi, label %and.189.then, label %and.189.else

and.189.then:                                     ; preds = %and.188.exit
  %var.load279 = load ptr, ptr %var.no, align 8
  %fld.gep280 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load279, i32 0, i32 4
  %fld.load281 = load ptr, ptr %fld.gep280, align 8
  %a.len.query282 = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load281, i32 0, i32 0
  %a.len.query283 = load i64, ptr %a.len.query282, align 8
  %cmptmp284 = icmp eq i64 %a.len.query283, 0
  br label %and.189.exit

and.189.else:                                     ; preds = %and.188.exit
  br label %and.189.exit

and.189.exit:                                     ; preds = %and.189.else, %and.189.then
  %and.189.phi = phi i1 [ %cmptmp284, %and.189.then ], [ %and.188.phi, %and.189.else ]
  br i1 %and.189.phi, label %and.190.then, label %and.190.else

and.190.then:                                     ; preds = %and.189.exit
  %var.load285 = load ptr, ptr %var.yes, align 8
  %fld.gep286 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load285, i32 0, i32 5
  %call.res287 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep286)
  br label %and.190.exit

and.190.else:                                     ; preds = %and.189.exit
  br label %and.190.exit

and.190.exit:                                     ; preds = %and.190.else, %and.190.then
  %and.190.phi = phi i1 [ %call.res287, %and.190.then ], [ %and.189.phi, %and.190.else ]
  br i1 %and.190.phi, label %and.191.then, label %and.191.else

and.191.then:                                     ; preds = %and.190.exit
  %var.load288 = load ptr, ptr %var.no, align 8
  %fld.gep289 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load288, i32 0, i32 5
  %call.res290 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep289)
  br label %and.191.exit

and.191.else:                                     ; preds = %and.190.exit
  br label %and.191.exit

and.191.exit:                                     ; preds = %and.191.else, %and.191.then
  %and.191.phi = phi i1 [ %call.res290, %and.191.then ], [ %and.190.phi, %and.191.else ]
  br i1 %and.191.phi, label %and.192.then, label %and.192.else

and.192.then:                                     ; preds = %and.191.exit
  %var.load291 = load ptr, ptr %var.orig, align 8
  %var.load292 = load ptr, ptr %var.yes, align 8
  %fld.gep293 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load292, i32 0, i32 5
  %call.res294 = call i1 @"typedopt::#same_scalar_type"(ptr %var.load291, ptr %fld.gep293)
  br label %and.192.exit

and.192.else:                                     ; preds = %and.191.exit
  br label %and.192.exit

and.192.exit:                                     ; preds = %and.192.else, %and.192.then
  %and.192.phi = phi i1 [ %call.res294, %and.192.then ], [ %and.191.phi, %and.192.else ]
  br i1 %and.192.phi, label %and.193.then, label %and.193.else

and.193.then:                                     ; preds = %and.192.exit
  %var.load295 = load ptr, ptr %var.orig, align 8
  %var.load296 = load ptr, ptr %var.no, align 8
  %fld.gep297 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load296, i32 0, i32 5
  %call.res298 = call i1 @"typedopt::#same_scalar_type"(ptr %var.load295, ptr %fld.gep297)
  br label %and.193.exit

and.193.else:                                     ; preds = %and.192.exit
  br label %and.193.exit

and.193.exit:                                     ; preds = %and.193.else, %and.193.then
  %and.193.phi = phi i1 [ %call.res298, %and.193.then ], [ %and.192.phi, %and.193.else ]
  store i1 %and.193.phi, ptr %var.eligible, align 1
  %var.load299 = load i1, ptr %var.eligible, align 1
  %nottmp300 = xor i1 %var.load299, true
  br i1 %nottmp300, label %choice.then301, label %choice.exit302

choice.then301:                                   ; preds = %and.193.exit
  %var.load303 = load ptr, ptr %var.fallback, align 8
  ret ptr %var.load303

choice.exit302:                                   ; preds = %ret.dead304, %and.193.exit
  %var.load305 = load ptr, ptr %var.cond, align 8
  %fld.gep306 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load305, i32 0, i32 0
  %fld.load307 = load ptr, ptr %fld.gep306, align 8
  %tag.gep311 = getelementptr inbounds { i64, ptr }, ptr %fld.load307, i32 0, i32 0
  %tag.id312 = load i64, ptr %tag.gep311, align 8
  %tag.match313 = icmp eq i64 %tag.id312, 4
  br i1 %tag.match313, label %choice.case309, label %choice.next310

ret.dead304:                                      ; No predecessors!
  br label %choice.exit302

choice.exit308:                                   ; preds = %choice.next310, %pay.int.merge319
  %choice.res324 = phi i1 [ %var.load323, %pay.int.merge319 ], [ false, %choice.next310 ]
  store i1 %choice.res324, ptr %var.take_yes, align 1
  %var.load325 = load ptr, ptr %var.orig, align 8
  %var.load326 = load i1, ptr %var.take_yes, align 1
  br i1 %var.load326, label %choice.then327, label %choice.else

choice.case309:                                   ; preds = %choice.exit302
  %pay.gep314 = getelementptr inbounds { i64, ptr }, ptr %fld.load307, i32 0, i32 1
  %payload.ptr315 = load ptr, ptr %pay.gep314, align 8
  %pay.int.null316 = icmp eq ptr %payload.ptr315, null
  br i1 %pay.int.null316, label %pay.int.nullbb318, label %pay.int.load317

choice.next310:                                   ; preds = %choice.exit302
  br label %choice.exit308

pay.int.load317:                                  ; preds = %choice.case309
  %pay.int.val320 = load i1, ptr %payload.ptr315, align 1
  br label %pay.int.merge319

pay.int.nullbb318:                                ; preds = %choice.case309
  br label %pay.int.merge319

pay.int.merge319:                                 ; preds = %pay.int.nullbb318, %pay.int.load317
  %pay.int.phi321 = phi i1 [ %pay.int.val320, %pay.int.load317 ], [ false, %pay.int.nullbb318 ]
  store i1 %pay.int.phi321, ptr %var._322, align 1
  store i1 %pay.int.phi321, ptr %var.flag, align 1
  %var.load323 = load i1, ptr %var.flag, align 1
  br label %choice.exit308

choice.then327:                                   ; preds = %choice.exit308
  %var.load329 = load ptr, ptr %var.yes, align 8
  %fld.gep330 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load329, i32 0, i32 5
  br label %choice.exit328

choice.else:                                      ; preds = %choice.exit308
  %var.load331 = load ptr, ptr %var.no, align 8
  %fld.gep332 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load331, i32 0, i32 5
  br label %choice.exit328

choice.exit328:                                   ; preds = %choice.else, %choice.then327
  %choice.res333 = phi ptr [ %fld.gep330, %choice.then327 ], [ %fld.gep332, %choice.else ]
  %call.res334 = call ptr @"typedopt::#replace"(ptr %var.load325, ptr %choice.res333)
  ret ptr %call.res334
}

define internal ptr @"typedopt::#rewrite_block"(ptr %0, ptr %1) #0 {
entry:
  %var.eligible = alloca i1, align 1
  %var.a = alloca ptr, align 8
  %var._36 = alloca ptr, align 8
  %var.value = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.e = alloca ptr, align 8
  %loop.step.194 = alloca i64, align 8
  %loop.idx.194 = alloca i64, align 8
  %var.out = alloca ptr, align 8
  %var.local = alloca ptr, align 8
  %var.exprs = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.exprs, align 8
  %var.load = load ptr, ptr %var.ctx, align 8
  %fld.gep = getelementptr inbounds { ptr, i1 }, ptr %var.load, i32 0, i32 1
  %fld.load = load i1, ptr %fld.gep, align 1
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr null, ptr %rec.fld, align 8
  %rec.fld1 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 %fld.load, ptr %rec.fld1, align 1
  store ptr %rec.alloc, ptr %var.local, align 8
  %arena.cur2 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur2, i64 24)
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 128)
  %a.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  store ptr %a.new, ptr %var.out, align 8
  %var.load4 = load ptr, ptr %var.exprs, align 8
  %a.load = load ptr, ptr %var.exprs, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %entry
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create6 = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf8 = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 128)
  %a.len.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 0
  store i64 0, ptr %a.len.gep9, align 8
  %a.data.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 1
  store ptr %a.buf8, ptr %a.data.gep10, align 8
  %a.cap.gep11 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create6, i32 0, i32 2
  store i64 16, ptr %a.cap.gep11, align 8
  store ptr %a.create6, ptr %var.exprs, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %entry
  %a.load2 = load ptr, ptr %var.exprs, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 0
  %arr.cycle.len12 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load2, i32 0, i32 1
  %arr.cycle.data13 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.194, align 8
  br label %loop.header.194

loop.header.194:                                  ; preds = %loop.latch.194, %a.after
  %counter.load = load i64, ptr %loop.idx.194, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len12
  br i1 %loop.cond, label %loop.body.194, label %loop.exit.nat.194

loop.body.194:                                    ; preds = %loop.header.194
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.194, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data13, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.e, align 8
  %var.load14 = load ptr, ptr %var.local, align 8
  %var.load15 = load ptr, ptr %var.e, align 8
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load14, ptr %var.load15)
  store ptr %call.res, ptr %var.value, align 8
  %var.load16 = load ptr, ptr %var.value, align 8
  %a.load17 = load ptr, ptr %var.out, align 8
  %a.null18 = icmp eq ptr %a.load17, null
  br i1 %a.null18, label %a.create19, label %a.after20

loop.exit.nat.194:                                ; preds = %loop.header.194
  br label %loop.exit.194

loop.latch.194:                                   ; preds = %choice.exit
  %step.val = load i64, ptr %loop.step.194, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.194, align 8
  br label %loop.header.194

loop.exit.194:                                    ; preds = %loop.exit.nat.194
  %var.load79 = load ptr, ptr %var.out, align 8
  %a.load80 = load ptr, ptr %var.out, align 8
  %a.null81 = icmp eq ptr %a.load80, null
  br i1 %a.null81, label %a.create82, label %a.after83

a.create19:                                       ; preds = %loop.body.194
  %arena.cur21 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create22 = call ptr @dva_arena_alloc(ptr %arena.cur21, i64 24)
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf24 = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 128)
  %a.len.gep25 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 0
  store i64 0, ptr %a.len.gep25, align 8
  %a.data.gep26 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 1
  store ptr %a.buf24, ptr %a.data.gep26, align 8
  %a.cap.gep27 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create22, i32 0, i32 2
  store i64 16, ptr %a.cap.gep27, align 8
  store ptr %a.create22, ptr %var.out, align 8
  br label %a.after20

a.after20:                                        ; preds = %a.create19, %loop.body.194
  %a.load228 = load ptr, ptr %var.out, align 8
  br label %a.check

a.check:                                          ; preds = %a.after20
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 0
  %a.len29 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 2
  %a.cap30 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len29, %a.cap30
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load228)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 1
  %a.cur.data31 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 0
  %a.cur.len32 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data31, i64 %a.cur.len32
  %slot.p2i = ptrtoint ptr %var.load16 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len32, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load228, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  %var.load33 = load ptr, ptr %var.value, align 8
  %fld.gep34 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %var.load33, i32 0, i32 0
  %fld.load35 = load ptr, ptr %fld.gep34, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load35, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 18
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next, %choice.exit63
  br label %loop.latch.194

choice.case:                                      ; preds = %a.store
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %fld.load35, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._36, align 8
  store ptr %payload.ptr, ptr %var.a, align 8
  %var.load37 = load ptr, ptr %var.ctx, align 8
  %fld.gep38 = getelementptr inbounds { ptr, i1 }, ptr %var.load37, i32 0, i32 1
  %fld.load39 = load i1, ptr %fld.gep38, align 1
  br i1 %fld.load39, label %and.195.then, label %and.195.else

choice.next:                                      ; preds = %a.store
  %var.load77 = load ptr, ptr %var.local, align 8
  %fld.gep78 = getelementptr inbounds { ptr, i1 }, ptr %var.load77, i32 0, i32 0
  store ptr null, ptr %fld.gep78, align 8
  br label %choice.exit

and.195.then:                                     ; preds = %choice.case
  %var.load40 = load ptr, ptr %var.a, align 8
  %fld.gep41 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load40, i32 0, i32 1
  %fld.load42 = load i1, ptr %fld.gep41, align 1
  br i1 %fld.load42, label %or.196.then, label %or.196.else

and.195.else:                                     ; preds = %choice.case
  br label %and.195.exit

and.195.exit:                                     ; preds = %and.195.else, %or.198.exit
  %and.195.phi = phi i1 [ %nottmp, %or.198.exit ], [ %fld.load39, %and.195.else ]
  br i1 %and.195.phi, label %and.199.then, label %and.199.else

or.196.then:                                      ; preds = %and.195.then
  br label %or.196.exit

or.196.else:                                      ; preds = %and.195.then
  %var.load43 = load ptr, ptr %var.a, align 8
  %fld.gep44 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load43, i32 0, i32 2
  %fld.load45 = load i1, ptr %fld.gep44, align 1
  br label %or.196.exit

or.196.exit:                                      ; preds = %or.196.else, %or.196.then
  %or.196.phi = phi i1 [ %fld.load42, %or.196.then ], [ %fld.load45, %or.196.else ]
  br i1 %or.196.phi, label %or.197.then, label %or.197.else

or.197.then:                                      ; preds = %or.196.exit
  br label %or.197.exit

or.197.else:                                      ; preds = %or.196.exit
  %var.load46 = load ptr, ptr %var.a, align 8
  %fld.gep47 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load46, i32 0, i32 3
  %fld.load48 = load i1, ptr %fld.gep47, align 1
  br label %or.197.exit

or.197.exit:                                      ; preds = %or.197.else, %or.197.then
  %or.197.phi = phi i1 [ %or.196.phi, %or.197.then ], [ %fld.load48, %or.197.else ]
  br i1 %or.197.phi, label %or.198.then, label %or.198.else

or.198.then:                                      ; preds = %or.197.exit
  br label %or.198.exit

or.198.else:                                      ; preds = %or.197.exit
  %var.load49 = load ptr, ptr %var.a, align 8
  %fld.gep50 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load49, i32 0, i32 4
  %fld.load51 = load i1, ptr %fld.gep50, align 1
  br label %or.198.exit

or.198.exit:                                      ; preds = %or.198.else, %or.198.then
  %or.198.phi = phi i1 [ %or.197.phi, %or.198.then ], [ %fld.load51, %or.198.else ]
  %nottmp = xor i1 %or.198.phi, true
  br label %and.195.exit

and.199.then:                                     ; preds = %and.195.exit
  %var.load52 = load ptr, ptr %var.a, align 8
  %fld.gep53 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load52, i32 0, i32 0
  %fld.load54 = load ptr, ptr %fld.gep53, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 0
  %eq.lhs.len55 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len56 = and i64 %eq.lhs.len55, 281474976710655
  %eq.rhs.len = load i64, ptr @str.0.struct, align 8
  %eq.rhs.len57 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len56, %eq.rhs.len57
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

and.199.else:                                     ; preds = %and.195.exit
  br label %and.199.exit

and.199.exit:                                     ; preds = %and.199.else, %str.eq.merge
  %and.199.phi = phi i1 [ %str.neq, %str.eq.merge ], [ %and.195.phi, %and.199.else ]
  br i1 %and.199.phi, label %and.200.then, label %and.200.else

str.eq.then:                                      ; preds = %and.199.then
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %fld.load54, i32 0, i32 1
  %eq.lhs.data58 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data58, ptr %eq.rhs.data, i64 %eq.lhs.len56)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %and.199.then
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %and.199.exit

and.200.then:                                     ; preds = %and.199.exit
  %var.load59 = load ptr, ptr %var.a, align 8
  %fld.gep60 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load59, i32 0, i32 5
  %call.res61 = call i1 @"typedopt::#scalar_literal"(ptr %fld.gep60)
  br label %and.200.exit

and.200.else:                                     ; preds = %and.199.exit
  br label %and.200.exit

and.200.exit:                                     ; preds = %and.200.else, %and.200.then
  %and.200.phi = phi i1 [ %call.res61, %and.200.then ], [ %and.199.phi, %and.200.else ]
  store i1 %and.200.phi, ptr %var.eligible, align 1
  %var.load62 = load i1, ptr %var.eligible, align 1
  br i1 %var.load62, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.200.exit
  %var.load64 = load ptr, ptr %var.local, align 8
  %var.load65 = load ptr, ptr %var.a, align 8
  %fld.gep66 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load65, i32 0, i32 0
  %fld.load67 = load ptr, ptr %fld.gep66, align 8
  %var.load68 = load ptr, ptr %var.a, align 8
  %fld.gep69 = getelementptr inbounds { ptr, i1, i1, i1, i1, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load68, i32 0, i32 5
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 ptrtoint (ptr getelementptr ({ ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld72 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc71, i32 0, i32 0
  store ptr %fld.load67, ptr %rec.fld72, align 8
  %rec.fld73 = getelementptr inbounds { ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc71, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld73, ptr align 1 %fld.gep69, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %fld.gep74 = getelementptr inbounds { ptr, i1 }, ptr %var.load64, i32 0, i32 0
  store ptr %rec.alloc71, ptr %fld.gep74, align 8
  br label %choice.exit63

choice.else:                                      ; preds = %and.200.exit
  %var.load75 = load ptr, ptr %var.local, align 8
  %fld.gep76 = getelementptr inbounds { ptr, i1 }, ptr %var.load75, i32 0, i32 0
  store ptr null, ptr %fld.gep76, align 8
  br label %choice.exit63

choice.exit63:                                    ; preds = %choice.else, %choice.then
  br label %choice.exit

a.create82:                                       ; preds = %loop.exit.194
  %arena.cur84 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create85 = call ptr @dva_arena_alloc(ptr %arena.cur84, i64 24)
  %arena.cur86 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf87 = call ptr @dva_arena_alloc(ptr %arena.cur86, i64 128)
  %a.len.gep88 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 0
  store i64 0, ptr %a.len.gep88, align 8
  %a.data.gep89 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 1
  store ptr %a.buf87, ptr %a.data.gep89, align 8
  %a.cap.gep90 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create85, i32 0, i32 2
  store i64 16, ptr %a.cap.gep90, align 8
  store ptr %a.create85, ptr %var.out, align 8
  br label %a.after83

a.after83:                                        ; preds = %a.create82, %loop.exit.194
  %a.load291 = load ptr, ptr %var.out, align 8
  ret ptr %a.load291
}

define internal ptr @"typedopt::#rewrite_optional"(ptr %0, ptr %1) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.e, align 8
  %var.load = load ptr, ptr %var.e, align 8
  %niche.ne.null = icmp ne ptr %var.load, null
  br i1 %niche.ne.null, label %choice.then, label %choice.else

choice.then:                                      ; preds = %entry
  store ptr %var.load, ptr %var._, align 8
  %var.load1 = load ptr, ptr %var.ctx, align 8
  %var.load2 = load ptr, ptr %var._, align 8
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load1, ptr %var.load2)
  br label %choice.exit

choice.else:                                      ; preds = %entry
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi ptr [ %call.res, %choice.then ], [ null, %choice.else ]
  ret ptr %choice.res
}

define internal ptr @"typedopt::#rewrite_stmt"(ptr %0, ptr %1) #0 {
entry:
  %var.b40 = alloca ptr, align 8
  %var._39 = alloca ptr, align 8
  %var.b = alloca ptr, align 8
  %var._12 = alloca ptr, align 8
  %var.e = alloca ptr, align 8
  %var._ = alloca ptr, align 8
  %var.st = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  store ptr %0, ptr %var.ctx, align 8
  store ptr %1, ptr %var.st, align 8
  %var.load = load ptr, ptr %var.st, align 8
  %tag.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id = load i64, ptr %tag.gep, align 8
  %tag.match = icmp eq i64 %tag.id, 0
  br i1 %tag.match, label %choice.case, label %choice.next

choice.exit:                                      ; preds = %choice.next33, %choice.case32, %choice.case5, %choice.case
  %choice.res = phi ptr [ %enum.alloc, %choice.case ], [ %enum.alloc14, %choice.case5 ], [ %enum.alloc42, %choice.case32 ], [ %var.load60, %choice.next33 ]
  ret ptr %choice.res

choice.case:                                      ; preds = %entry
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  store ptr %payload.ptr, ptr %var._, align 8
  store ptr %payload.ptr, ptr %var.e, align 8
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  %tag.gep1 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 0
  store i64 0, ptr %tag.gep1, align 8
  %pay.gep2 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc, i32 0, i32 1
  %var.load3 = load ptr, ptr %var.ctx, align 8
  %var.load4 = load ptr, ptr %var.e, align 8
  %call.res = call ptr @"typedopt::#rewrite"(ptr %var.load3, ptr %var.load4)
  store ptr %call.res, ptr %pay.gep2, align 8
  br label %choice.exit

choice.next:                                      ; preds = %entry
  %tag.gep7 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id8 = load i64, ptr %tag.gep7, align 8
  %tag.match9 = icmp eq i64 %tag.id8, 1
  br i1 %tag.match9, label %choice.case5, label %choice.next6

choice.case5:                                     ; preds = %choice.next
  %pay.gep10 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr11 = load ptr, ptr %pay.gep10, align 8
  store ptr %payload.ptr11, ptr %var._12, align 8
  store ptr %payload.ptr11, ptr %var.b, align 8
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 16)
  %tag.gep15 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc14, i32 0, i32 0
  store i64 1, ptr %tag.gep15, align 8
  %pay.gep16 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc14, i32 0, i32 1
  %var.load17 = load ptr, ptr %var.b, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load17, i32 0, i32 0
  %fld.load = load ptr, ptr %fld.gep, align 8
  %var.load18 = load ptr, ptr %var.b, align 8
  %fld.gep19 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load18, i32 0, i32 1
  %fld.load20 = load ptr, ptr %fld.gep19, align 8
  %var.load21 = load ptr, ptr %var.ctx, align 8
  %var.load22 = load ptr, ptr %var.b, align 8
  %fld.gep23 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load22, i32 0, i32 2
  %call.res24 = call ptr @"typedopt::#rewrite"(ptr %var.load21, ptr %fld.gep23)
  %var.load25 = load ptr, ptr %var.b, align 8
  %fld.gep26 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %var.load25, i32 0, i32 3
  %fld.load27 = load i1, ptr %fld.gep26, align 1
  %arena.cur28 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur28, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr %fld.load, ptr %rec.fld, align 8
  %rec.fld29 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 1
  store ptr %fld.load20, ptr %rec.fld29, align 8
  %rec.fld30 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld30, ptr align 1 %call.res24, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld31 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %rec.alloc, i32 0, i32 3
  store i1 %fld.load27, ptr %rec.fld31, align 1
  store ptr %rec.alloc, ptr %pay.gep16, align 8
  br label %choice.exit

choice.next6:                                     ; preds = %choice.next
  %tag.gep34 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 0
  %tag.id35 = load i64, ptr %tag.gep34, align 8
  %tag.match36 = icmp eq i64 %tag.id35, 2
  br i1 %tag.match36, label %choice.case32, label %choice.next33

choice.case32:                                    ; preds = %choice.next6
  %pay.gep37 = getelementptr inbounds { i64, ptr }, ptr %var.load, i32 0, i32 1
  %payload.ptr38 = load ptr, ptr %pay.gep37, align 8
  store ptr %payload.ptr38, ptr %var._39, align 8
  store ptr %payload.ptr38, ptr %var.b40, align 8
  %arena.cur41 = load ptr, ptr @dva_active_arena_tls, align 8
  %enum.alloc42 = call ptr @dva_arena_alloc(ptr %arena.cur41, i64 16)
  %tag.gep43 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc42, i32 0, i32 0
  store i64 2, ptr %tag.gep43, align 8
  %pay.gep44 = getelementptr inbounds { i64, ptr }, ptr %enum.alloc42, i32 0, i32 1
  %var.load45 = load ptr, ptr %var.b40, align 8
  %fld.gep46 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load45, i32 0, i32 0
  %fld.load47 = load ptr, ptr %fld.gep46, align 8
  %var.load48 = load ptr, ptr %var.b40, align 8
  %fld.gep49 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load48, i32 0, i32 1
  %fld.load50 = load ptr, ptr %fld.gep49, align 8
  %var.load51 = load ptr, ptr %var.ctx, align 8
  %var.load52 = load ptr, ptr %var.b40, align 8
  %fld.gep53 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %var.load52, i32 0, i32 2
  %call.res54 = call ptr @"typedopt::#rewrite"(ptr %var.load51, ptr %fld.gep53)
  %arena.cur55 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc56 = call ptr @dva_arena_alloc(ptr %arena.cur55, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr null, i32 1) to i64))
  %rec.fld57 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc56, i32 0, i32 0
  store ptr %fld.load47, ptr %rec.fld57, align 8
  %rec.fld58 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc56, i32 0, i32 1
  store ptr %fld.load50, ptr %rec.fld58, align 8
  %rec.fld59 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 } }, ptr %rec.alloc56, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld59, ptr align 1 %call.res54, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  store ptr %rec.alloc56, ptr %pay.gep44, align 8
  br label %choice.exit

choice.next33:                                    ; preds = %choice.next6
  %var.load60 = load ptr, ptr %var.st, align 8
  br label %choice.exit
}

define i1 @"typedopt::enabled"() #0 {
entry:
  %var.raw = alloca ptr, align 8
  %arg.str.ptr = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.4.struct, i32 0, i32 1), align 8
  %arg.str.ptr1 = load i64, ptr @str.4.struct, align 8
  %arg.str.ptr2 = and i64 %arg.str.ptr1, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr, i64 %arg.str.ptr2
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %arg.str.ptr3, label %nulcopy

arg.str.ptr3:                                     ; preds = %entry
  br label %nulmerge

nulcopy:                                          ; preds = %entry
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr2, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len4

nulmerge:                                         ; preds = %nulcopy.len4, %arg.str.ptr3
  %arg.str.ptr5 = phi ptr [ %arg.str.ptr, %arg.str.ptr3 ], [ %nulcopy.buf, %nulcopy.len4 ]
  %call.res = call ptr @getenv(ptr %arg.str.ptr5)
  store ptr %call.res, ptr %var.raw, align 8
  %var.load = load ptr, ptr %var.raw, align 8
  %var.load6 = load ptr, ptr @"var.sys::addr_null", align 8
  %ptr.int.l = ptrtoint ptr %var.load to i64
  %ptr.int.r = ptrtoint ptr %var.load6 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %or.202.then, label %or.202.else

nulcopy.len4:                                     ; preds = %abort.dead, %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr, i64 %arg.str.ptr2, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr2
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

abort.dead:                                       ; No predecessors!
  br label %nulcopy.len4

or.202.then:                                      ; preds = %nulmerge
  br label %or.202.exit

or.202.else:                                      ; preds = %nulmerge
  %var.load7 = load ptr, ptr %var.raw, align 8
  %call.res8 = call { i64, ptr } @"sys::c_str"(ptr %var.load7)
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 16)
  store { i64, ptr } %call.res8, ptr %ret.ub.alloc, align 8
  %eq.lhs.len = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 0
  %eq.lhs.len10 = load i64, ptr %eq.lhs.len, align 8
  %eq.lhs.len11 = and i64 %eq.lhs.len10, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len10, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

or.202.exit:                                      ; preds = %str.eq.merge, %or.202.then
  %or.202.phi = phi i1 [ %cmptmp, %or.202.then ], [ %str.neq, %str.eq.merge ]
  ret i1 %or.202.phi

str_ok:                                           ; preds = %tag.slow_check, %or.202.else
  %eq.rhs.len = load i64, ptr @str.5.struct, align 8
  %eq.rhs.len12 = and i64 %eq.rhs.len, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len11, %eq.rhs.len12
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

tag.slow_check:                                   ; preds = %or.202.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str.eq.then:                                      ; preds = %str_ok
  %eq.lhs.data = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %eq.lhs.data13 = load ptr, ptr %eq.lhs.data, align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.5.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data13, ptr %eq.rhs.data, i64 %eq.lhs.len11)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  %str.neq = xor i1 %str.eq.result, true
  br label %or.202.exit
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

declare { i64, ptr } @"sys::c_str"(ptr) #0

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

abort.dead:                                       ; No predecessors!
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_stale_str_msg() #6 {
entry:
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  unreachable

abort.dead:                                       ; No predecessors!
  unreachable
}

define ptr @"typedopt::run"(ptr %0) #0 {
entry:
  %var._ = alloca ptr, align 8
  %var._i = alloca i64, align 8
  %var.st = alloca ptr, align 8
  %loop.step.203 = alloca i64, align 8
  %loop.idx.203 = alloca i64, align 8
  %var._map_out_548 = alloca ptr, align 8
  %var.ctx = alloca ptr, align 8
  %var.prog = alloca ptr, align 8
  store ptr %0, ptr %var.prog, align 8
  %call.res = call i1 @"typedopt::enabled"()
  %nottmp = xor i1 %call.res, true
  br i1 %nottmp, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %var.load = load ptr, ptr %var.prog, align 8
  %a.load = load ptr, ptr %var.prog, align 8
  %a.null = icmp eq ptr %a.load, null
  br i1 %a.null, label %a.create, label %a.after

choice.exit:                                      ; preds = %ret.dead, %entry
  %arena.cur3 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur3, i64 ptrtoint (ptr getelementptr ({ ptr, i1 }, ptr null, i32 1) to i64))
  %rec.fld = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 0
  store ptr null, ptr %rec.fld, align 8
  %rec.fld4 = getelementptr inbounds { ptr, i1 }, ptr %rec.alloc, i32 0, i32 1
  store i1 false, ptr %rec.fld4, align 1
  store ptr %rec.alloc, ptr %var.ctx, align 8
  %arena.cur5 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.new = call ptr @dva_arena_alloc(ptr %arena.cur5, i64 24)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 128)
  %a.len.gep8 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 0
  store i64 0, ptr %a.len.gep8, align 8
  %a.data.gep9 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 1
  store ptr %a.buf7, ptr %a.data.gep9, align 8
  %a.cap.gep10 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.new, i32 0, i32 2
  store i64 16, ptr %a.cap.gep10, align 8
  store ptr %a.new, ptr %var._map_out_548, align 8
  %var.load11 = load ptr, ptr %var.prog, align 8
  %a.load12 = load ptr, ptr %var.prog, align 8
  %a.null13 = icmp eq ptr %a.load12, null
  br i1 %a.null13, label %a.create14, label %a.after15

a.create:                                         ; preds = %choice.then
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

a.after:                                          ; preds = %a.create, %choice.then
  %a.load2 = load ptr, ptr %var.prog, align 8
  ret ptr %a.load2

ret.dead:                                         ; No predecessors!
  br label %choice.exit

a.create14:                                       ; preds = %choice.exit
  %arena.cur16 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create17 = call ptr @dva_arena_alloc(ptr %arena.cur16, i64 24)
  %arena.cur18 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf19 = call ptr @dva_arena_alloc(ptr %arena.cur18, i64 128)
  %a.len.gep20 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 0
  store i64 0, ptr %a.len.gep20, align 8
  %a.data.gep21 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 1
  store ptr %a.buf19, ptr %a.data.gep21, align 8
  %a.cap.gep22 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create17, i32 0, i32 2
  store i64 16, ptr %a.cap.gep22, align 8
  store ptr %a.create17, ptr %var.prog, align 8
  br label %a.after15

a.after15:                                        ; preds = %a.create14, %choice.exit
  %a.load223 = load ptr, ptr %var.prog, align 8
  %arr.cycle.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 0
  %arr.cycle.len24 = load i64, ptr %arr.cycle.len, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load223, i32 0, i32 1
  %arr.cycle.data25 = load ptr, ptr %arr.cycle.data, align 8
  store i64 0, ptr %loop.idx.203, align 8
  br label %loop.header.203

loop.header.203:                                  ; preds = %loop.latch.203, %a.after15
  %counter.load = load i64, ptr %loop.idx.203, align 8
  %loop.cond = icmp slt i64 %counter.load, %arr.cycle.len24
  br i1 %loop.cond, label %loop.body.203, label %loop.exit.nat.203

loop.body.203:                                    ; preds = %loop.header.203
  %loop.rel.i = sub i64 %counter.load, 0
  store i64 1, ptr %loop.step.203, align 8
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data25, i64 %counter.load
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  store i64 %loop.rel.i, ptr %var._i, align 8
  store ptr %slot.i2p, ptr %var._, align 8
  store ptr %slot.i2p, ptr %var.st, align 8
  %var.load26 = load ptr, ptr %var.ctx, align 8
  %var.load27 = load ptr, ptr %var.st, align 8
  %call.res28 = call ptr @"typedopt::#rewrite_stmt"(ptr %var.load26, ptr %var.load27)
  %a.load29 = load ptr, ptr %var._map_out_548, align 8
  %a.null30 = icmp eq ptr %a.load29, null
  br i1 %a.null30, label %a.create31, label %a.after32

loop.exit.nat.203:                                ; preds = %loop.header.203
  br label %loop.exit.203

loop.latch.203:                                   ; preds = %a.store
  %step.val = load i64, ptr %loop.step.203, align 8
  %loop.next = add i64 %counter.load, %step.val
  store i64 %loop.next, ptr %loop.idx.203, align 8
  br label %loop.header.203

loop.exit.203:                                    ; preds = %loop.exit.nat.203
  %var.load45 = load ptr, ptr %var._map_out_548, align 8
  %a.load46 = load ptr, ptr %var._map_out_548, align 8
  %a.null47 = icmp eq ptr %a.load46, null
  br i1 %a.null47, label %a.create48, label %a.after49

a.create31:                                       ; preds = %loop.body.203
  %arena.cur33 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create34 = call ptr @dva_arena_alloc(ptr %arena.cur33, i64 24)
  %arena.cur35 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf36 = call ptr @dva_arena_alloc(ptr %arena.cur35, i64 128)
  %a.len.gep37 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 0
  store i64 0, ptr %a.len.gep37, align 8
  %a.data.gep38 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 1
  store ptr %a.buf36, ptr %a.data.gep38, align 8
  %a.cap.gep39 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create34, i32 0, i32 2
  store i64 16, ptr %a.cap.gep39, align 8
  store ptr %a.create34, ptr %var._map_out_548, align 8
  br label %a.after32

a.after32:                                        ; preds = %a.create31, %loop.body.203
  %a.load240 = load ptr, ptr %var._map_out_548, align 8
  br label %a.check

a.check:                                          ; preds = %a.after32
  %a.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  %a.len41 = load i64, ptr %a.len, align 8
  %a.cap = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 2
  %a.cap42 = load i64, ptr %a.cap, align 8
  %a.needs.grow = icmp eq i64 %a.len41, %a.cap42
  br i1 %a.needs.grow, label %a.grow, label %a.store

a.grow:                                           ; preds = %a.check
  call void @dva_array_grow(ptr %a.load240)
  br label %a.store

a.store:                                          ; preds = %a.grow, %a.check
  %a.cur.data = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 1
  %a.cur.data43 = load ptr, ptr %a.cur.data, align 8
  %a.cur.len = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  %a.cur.len44 = load i64, ptr %a.cur.len, align 8
  %a.elem.gep = getelementptr i64, ptr %a.cur.data43, i64 %a.cur.len44
  %slot.p2i = ptrtoint ptr %call.res28 to i64
  store i64 %slot.p2i, ptr %a.elem.gep, align 8
  %a.next.len = add i64 %a.cur.len44, 1
  %b.len.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.load240, i32 0, i32 0
  store i64 %a.next.len, ptr %b.len.gep, align 8
  br label %loop.latch.203

a.create48:                                       ; preds = %loop.exit.203
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 24)
  %arena.cur52 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf53 = call ptr @dva_arena_alloc(ptr %arena.cur52, i64 128)
  %a.len.gep54 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 0
  store i64 0, ptr %a.len.gep54, align 8
  %a.data.gep55 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 1
  store ptr %a.buf53, ptr %a.data.gep55, align 8
  %a.cap.gep56 = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create51, i32 0, i32 2
  store i64 16, ptr %a.cap.gep56, align 8
  store ptr %a.create51, ptr %var._map_out_548, align 8
  br label %a.after49

a.after49:                                        ; preds = %a.create48, %loop.exit.203
  %a.load257 = load ptr, ptr %var._map_out_548, align 8
  ret ptr %a.load257
}

attributes #0 = { "nounwind" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline "nounwind" }
attributes #3 = { noinline "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn "nounwind" }
attributes #7 = { cold noinline "nounwind" }
