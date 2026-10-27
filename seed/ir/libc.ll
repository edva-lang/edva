; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_arena_tls = external thread_local global ptr
@global_arena = external global { i64, i64, i64, [16384 x ptr], i64, i64, i64, [64 x i64] }
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@arena_toobig_msg = internal unnamed_addr constant [99 x i8] c"E4004: arena allocation too large for a single chunk (requested %llu bytes, chunk cap %llu bytes)\0A\00"
@arena_chunklimit_msg = internal unnamed_addr constant [58 x i8] c"E4003: arena chunk limit reached (too many arena chunks)\0A\00"
@arena_oom_msg = internal unnamed_addr constant [50 x i8] c"E4001: arena allocator exhausted (out of memory)\0A\00"
@builder_len_oob_msg = internal unnamed_addr constant [48 x i8] c"E4008: Builder length assignment out of bounds\0A\00"
@str.0 = internal unnamed_addr constant [6 x i8] c"linux\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 5, ptr @str.0 }
@str.1 = internal unnamed_addr constant [7 x i8] c"darwin\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 6, ptr @str.1 }
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const = internal constant { ptr, ptr } { ptr @"libc::is_darwin", ptr null }
@"var.libc::is_darwin" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"libc::fcntl", ptr null }
@"var.libc::fcntl" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_libc, ptr null }]

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

declare i1 @dva_arena_validate_tag(ptr, i64)

declare void @dva_arena_adopt(ptr, ptr)

declare i64 @strlen(ptr)

declare i32 @memcmp(ptr, ptr, i64)

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_libc() #1 {
entry:
  store ptr @clo.const, ptr @"var.libc::is_darwin", align 8
  store ptr @clo.const.1, ptr @"var.libc::fcntl", align 8
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

declare i64 @writev(i32, ptr, i64)

declare i32 @ioctl(i32, i64, i64, ...)

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

define i1 @"libc::is_darwin"() #1 {
entry:
  %eq.lhs.len = load i64, ptr @str.0.struct, align 8
  %eq.lhs.len1 = and i64 %eq.lhs.len, 281474976710655
  %str.tag = lshr i64 %eq.lhs.len, 48
  %str.immortal = icmp eq i64 %str.tag, 0
  br i1 %str.immortal, label %str_ok, label %str_gen_check

str_gen_check:                                    ; preds = %entry
  %arena.cur = call ptr @dva_arena_current()
  %tag.valid = call i1 @dva_arena_validate_tag(ptr %arena.cur, i64 %str.tag)
  br i1 %tag.valid, label %str_ok, label %str_stale

str_ok:                                           ; preds = %str_stale, %str_gen_check, %entry
  %eq.rhs.len = load i64, ptr @str.1.struct, align 8
  %eq.rhs.len2 = and i64 %eq.rhs.len, 281474976710655
  %str.tag3 = lshr i64 %eq.rhs.len, 48
  %str.immortal4 = icmp eq i64 %str.tag3, 0
  br i1 %str.immortal4, label %str_ok6, label %str_gen_check5

str_stale:                                        ; preds = %str_gen_check
  %0 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok

str_gen_check5:                                   ; preds = %str_ok
  %arena.cur8 = call ptr @dva_arena_current()
  %tag.valid9 = call i1 @dva_arena_validate_tag(ptr %arena.cur8, i64 %str.tag3)
  br i1 %tag.valid9, label %str_ok6, label %str_stale7

str_ok6:                                          ; preds = %str_stale7, %str_gen_check5, %str_ok
  %eq.len = icmp eq i64 %eq.lhs.len1, %eq.rhs.len2
  br i1 %eq.len, label %str.eq.then, label %str.eq.else

str_stale7:                                       ; preds = %str_gen_check5
  %1 = call i64 @write(i32 2, ptr @stale_str_msg, i64 45)
  call void @exit(i32 1)
  br label %str_ok6

str.eq.then:                                      ; preds = %str_ok6
  %eq.lhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.0.struct, i32 0, i32 1), align 8
  %eq.rhs.data = load ptr, ptr getelementptr inbounds ({ i64, ptr }, ptr @str.1.struct, i32 0, i32 1), align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data, ptr %eq.rhs.data, i64 %eq.lhs.len1)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br label %str.eq.merge

str.eq.else:                                      ; preds = %str_ok6
  br label %str.eq.merge

str.eq.merge:                                     ; preds = %str.eq.else, %str.eq.then
  %str.eq.result = phi i1 [ %eq.cmp.zero, %str.eq.then ], [ false, %str.eq.else ]
  ret i1 %str.eq.result
}

define i64 @"libc::fcntl"(i64 %0, i64 %1, i64 %2) #1 {
entry:
  %var.eff_arg = alloca i64, align 8
  %var.arg = alloca i64, align 8
  %var.cmd = alloca i64, align 8
  %var.fd = alloca i64, align 8
  store i64 %0, ptr %var.fd, align 8
  store i64 %1, ptr %var.cmd, align 8
  store i64 %2, ptr %var.arg, align 8
  br i1 false, label %and.0.then, label %and.0.else

and.0.then:                                       ; preds = %entry
  %var.load = load i64, ptr %var.cmd, align 8
  %cmptmp = icmp eq i64 %var.load, 4
  br label %and.0.exit

and.0.else:                                       ; preds = %entry
  br label %and.0.exit

and.0.exit:                                       ; preds = %and.0.else, %and.0.then
  %and.0.phi = phi i1 [ %cmptmp, %and.0.then ], [ false, %and.0.else ]
  br i1 %and.0.phi, label %and.1.then, label %and.1.else

and.1.then:                                       ; preds = %and.0.exit
  %var.load1 = load i64, ptr %var.arg, align 8
  %bandtmp = and i64 %var.load1, 2048
  %cmptmp2 = icmp ne i64 %bandtmp, 0
  br label %and.1.exit

and.1.else:                                       ; preds = %and.0.exit
  br label %and.1.exit

and.1.exit:                                       ; preds = %and.1.else, %and.1.then
  %and.1.phi = phi i1 [ %cmptmp2, %and.1.then ], [ %and.0.phi, %and.1.else ]
  br i1 %and.1.phi, label %choice.then, label %choice.else

choice.then:                                      ; preds = %and.1.exit
  %var.load3 = load i64, ptr %var.arg, align 8
  %bandtmp4 = and i64 %var.load3, -2049
  %bortmp = or i64 %bandtmp4, 4
  br label %choice.exit

choice.else:                                      ; preds = %and.1.exit
  %var.load5 = load i64, ptr %var.arg, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %choice.else, %choice.then
  %choice.res = phi i64 [ %bortmp, %choice.then ], [ %var.load5, %choice.else ]
  store i64 %choice.res, ptr %var.eff_arg, align 8
  %var.load6 = load i64, ptr %var.fd, align 8
  %var.load7 = load i64, ptr %var.cmd, align 8
  %var.load8 = load i64, ptr %var.eff_arg, align 8
  %coerce.trunc = trunc i64 %var.load6 to i32
  %call.res = call i64 @fcntl(i32 %coerce.trunc, i64 %var.load7, i64 %var.load8)
  ret i64 %call.res
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
