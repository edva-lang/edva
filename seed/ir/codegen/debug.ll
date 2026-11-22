; ModuleID = 'dva_module'
source_filename = "dva_module"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fmt_error = internal unnamed_addr constant [38 x i8] c"Error %lld: %.*s\0A  at %.*s:%lld:%lld\0A\00"
@dva_active_gen_tls = external thread_local global i64
@dva_active_arena_tls = external thread_local global ptr
@str_overflow_msg = internal unnamed_addr constant [71 x i8] c"E4002: string length overflow (concatenation exceeds 64-bit capacity)\0A\00"
@"var.types::g" = external global ptr
@str.0 = internal unnamed_addr constant [14 x i8] c"key not found\00"
@str.0.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.0 }
@str.1 = internal unnamed_addr constant [10 x i8] c"debug.dva\00"
@str.1.struct = internal unnamed_addr constant { i64, ptr } { i64 9, ptr @str.1 }
@clo.const = internal constant { ptr, ptr } { ptr @"debug::#file_metadata", ptr null }
@"var.debug::#file_metadata" = global ptr null
@clo.const.1 = internal constant { ptr, ptr } { ptr @"debug::#loc_metadata", ptr null }
@"var.debug::#loc_metadata" = global ptr null
@str.2 = internal unnamed_addr constant [2 x i8] c":\00"
@expect.reason.1489 = internal unnamed_addr constant [34 x i8] c"expect: missing debug subprogram\0A\00"
@dva_thread_rec = external thread_local global ptr
@clo.const.2 = internal constant { ptr, ptr } { ptr @"debug::#location_scope", ptr null }
@"var.debug::#location_scope" = global ptr null
@clo.const.3 = internal constant { ptr, ptr } { ptr @"debug::#module_flag", ptr null }
@"var.debug::#module_flag" = global ptr null
@str.3 = internal unnamed_addr constant [25 x i8] c"__edva_debug_print_stack\00"
@str.3.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.3 }
@"var.debug::#stack_trace_name" = global ptr null
@str.4 = internal unnamed_addr constant [20 x i8] c"__edva_debug_frames\00"
@clo.const.4 = internal constant { ptr, ptr } { ptr @"debug::#stack_head", ptr null }
@"var.debug::#stack_head" = global ptr null
@clo.const.5 = internal constant { ptr, ptr } { ptr @"debug::#frame_type", ptr null }
@"var.debug::#frame_type" = global ptr null
@str.5 = internal unnamed_addr constant [6 x i8] c"entry\00"
@str.6 = internal unnamed_addr constant [5 x i8] c"loop\00"
@str.7 = internal unnamed_addr constant [6 x i8] c"frame\00"
@str.8 = internal unnamed_addr constant [5 x i8] c"done\00"
@str.9 = internal unnamed_addr constant [6 x i8] c"first\00"
@str.10 = internal unnamed_addr constant [5 x i8] c"node\00"
@str.11 = internal unnamed_addr constant [7 x i8] c"is.end\00"
@str.12 = internal unnamed_addr constant [1 x i8] zeroinitializer
@str.12.struct = internal unnamed_addr constant { i64, ptr } { i64 0, ptr @str.12 }
@str.13 = internal unnamed_addr constant [9 x i8] c"previous\00"
@str.14 = internal unnamed_addr constant [8 x i8] c"message\00"
@str.15 = internal unnamed_addr constant [7 x i8] c"length\00"
@clo.const.6 = internal constant { ptr, ptr } { ptr @"debug::#define_trace", ptr null }
@"var.debug::#define_trace" = global ptr null
@clo.const.7 = internal constant { ptr, ptr } { ptr @"debug::#traceable_call", ptr null }
@"var.debug::#traceable_call" = global ptr null
@str.16 = internal unnamed_addr constant [19 x i8] c"__edva_debug_site.\00"
@str.17 = internal unnamed_addr constant [15 x i8] c"debug.previous\00"
@stale_str_msg = internal unnamed_addr constant [46 x i8] c"E4010: stale String read after arena restore\0A\00"
@clo.const.8 = internal constant { ptr, ptr } { ptr @"debug::#save_callsite", ptr null }
@"var.debug::#save_callsite" = global ptr null
@str.18 = internal unnamed_addr constant [12 x i8] c"debug.frame\00"
@null_addr = internal unnamed_addr constant [48 x i8] c"E4014: null Addr in a present optional address\0A\00"
@clo.const.9 = internal constant { ptr, ptr } { ptr @"debug::#trace_frame", ptr null }
@"var.debug::#trace_frame" = global ptr null
@expect.reason.1498 = internal unnamed_addr constant [33 x i8] c"expect: missing call site scope\0A\00"
@str.19 = internal unnamed_addr constant [6 x i8] c"  at \00"
@str.20 = internal unnamed_addr constant [3 x i8] c" (\00"
@str.21 = internal unnamed_addr constant [3 x i8] c")\0A\00"
@expect.reason.1500 = internal unnamed_addr constant [29 x i8] c"expect: missing trace chain\0A\00"
@unwrap_abort_msg = internal unnamed_addr constant [46 x i8] c"E4007: unwrap on empty or error ramification\0A\00"
@clo.const.10 = internal constant { ptr, ptr } { ptr @"debug::#finish_function", ptr null }
@"var.debug::#finish_function" = global ptr null
@str.22 = internal unnamed_addr constant [25 x i8] c"array is not initialized\00"
@str.22.struct = internal unnamed_addr constant { i64, ptr } { i64 24, ptr @str.22 }
@str.23 = internal unnamed_addr constant [26 x i8] c"array index out of bounds\00"
@str.23.struct = internal unnamed_addr constant { i64, ptr } { i64 25, ptr @str.23 }
@str.24 = internal unnamed_addr constant [5 x i8] c"Edva\00"
@str.25 = internal unnamed_addr constant [19 x i8] c"Debug Info Version\00"
@str.25.struct = internal unnamed_addr constant { i64, ptr } { i64 18, ptr @str.25 }
@str.26 = internal unnamed_addr constant [14 x i8] c"Dwarf Version\00"
@str.26.struct = internal unnamed_addr constant { i64, ptr } { i64 13, ptr @str.26 }
@clo.const.11 = internal constant { ptr, ptr } { ptr @"debug::init", ptr null }
@"var.debug::init" = global ptr null
@clo.const.12 = internal constant { ptr, ptr } { ptr @"debug::current_location", ptr null }
@"var.debug::current_location" = global ptr null
@clo.const.13 = internal constant { ptr, ptr } { ptr @"debug::position", ptr null }
@"var.debug::position" = global ptr null
@clo.const.14 = internal constant { ptr, ptr } { ptr @"debug::function", ptr null }
@"var.debug::function" = global ptr null
@clo.const.15 = internal constant { ptr, ptr } { ptr @"debug::emit_trace", ptr null }
@"var.debug::emit_trace" = global ptr null
@clo.const.16 = internal constant { ptr, ptr } { ptr @"debug::finish", ptr null }
@"var.debug::finish" = global ptr null
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_debug, ptr null }]

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

declare i64 @dva_hash_string(ptr, i64)

define internal void @__dva_global_init_debug() #3 {
entry:
  store ptr @clo.const, ptr @"var.debug::#file_metadata", align 8
  store ptr @clo.const.1, ptr @"var.debug::#loc_metadata", align 8
  store ptr @clo.const.2, ptr @"var.debug::#location_scope", align 8
  store ptr @clo.const.3, ptr @"var.debug::#module_flag", align 8
  store ptr @str.3.struct, ptr @"var.debug::#stack_trace_name", align 8
  store ptr @clo.const.4, ptr @"var.debug::#stack_head", align 8
  store ptr @clo.const.5, ptr @"var.debug::#frame_type", align 8
  store ptr @clo.const.6, ptr @"var.debug::#define_trace", align 8
  store ptr @clo.const.7, ptr @"var.debug::#traceable_call", align 8
  store ptr @clo.const.8, ptr @"var.debug::#save_callsite", align 8
  store ptr @clo.const.9, ptr @"var.debug::#trace_frame", align 8
  store ptr @clo.const.10, ptr @"var.debug::#finish_function", align 8
  store ptr @clo.const.11, ptr @"var.debug::init", align 8
  store ptr @clo.const.12, ptr @"var.debug::current_location", align 8
  store ptr @clo.const.13, ptr @"var.debug::position", align 8
  store ptr @clo.const.14, ptr @"var.debug::function", align 8
  store ptr @clo.const.15, ptr @"var.debug::emit_trace", align 8
  store ptr @clo.const.16, ptr @"var.debug::finish", align 8
  ret void
}

declare i64 @LLVMGetLinkage(ptr)

declare ptr @LLVMIsACallInst(ptr)

declare ptr @LLVMIsAFunction(ptr)

declare ptr @LLVMGetCalledValue(ptr)

declare i32 @LLVMGetIntrinsicID(ptr)

declare ptr @LLVMCreateDIBuilder(ptr)

declare void @LLVMDIBuilderFinalize(ptr)

declare ptr @LLVMDIBuilderCreateFile(ptr, ptr, i64, ptr, i64)

declare ptr @LLVMDIBuilderCreateCompileUnit(ptr, i32, ptr, ptr, i64, i32, ptr, i64, i32, ptr, i64, i32, i32, i32, i32, ptr, i64, ptr, i64)

declare ptr @LLVMDIBuilderCreateSubroutineType(ptr, ptr, ptr, i32, i32)

declare ptr @LLVMDIBuilderCreateFunction(ptr, ptr, ptr, i64, ptr, i64, ptr, i32, ptr, i32, i32, i32, i32, i32)

declare ptr @LLVMDIBuilderCreateDebugLocation(ptr, i32, i32, ptr, ptr)

declare ptr @LLVMDIBuilderCreateLexicalBlockFile(ptr, ptr, ptr, i32)

declare void @LLVMSetSubprogram(ptr, ptr)

declare ptr @LLVMGetSubprogram(ptr)

declare void @LLVMSetCurrentDebugLocation2(ptr, ptr)

declare ptr @LLVMInstructionGetDebugLoc(ptr)

declare void @LLVMInstructionSetDebugLoc(ptr, ptr)

declare ptr @LLVMDILocationGetScope(ptr)

declare i32 @LLVMDILocationGetLine(ptr)

declare i32 @LLVMDILocationGetColumn(ptr)

declare ptr @LLVMDIScopeGetFile(ptr)

declare ptr @LLVMGetFirstFunction(ptr)

declare ptr @LLVMGetNextFunction(ptr)

declare ptr @LLVMGetFirstBasicBlock(ptr)

declare ptr @LLVMGetNextBasicBlock(ptr)

declare ptr @LLVMGetFirstInstruction(ptr)

declare ptr @LLVMGetNextInstruction(ptr)

declare void @LLVMAddModuleFlag(ptr, i32, ptr, i64, ptr)

declare ptr @LLVMValueAsMetadata(ptr)

declare ptr @LLVMVoidType()

declare ptr @LLVMInt64Type()

declare ptr @LLVMInt32Type()

declare ptr @LLVMInt8Type()

declare ptr @LLVMPointerType(ptr, i64)

declare ptr @LLVMStructType(ptr, i64, i64)

declare ptr @LLVMAddFunction(ptr, ptr, ptr)

declare ptr @LLVMGetNamedFunction(ptr, ptr)

declare ptr @LLVMAppendBasicBlock(ptr, ptr)

declare void @LLVMPositionBuilderAtEnd(ptr, ptr)

declare ptr @LLVMConstNull(ptr)

declare ptr @LLVMConstInt(ptr, i64, i64)

declare ptr @LLVMAddGlobal(ptr, ptr, ptr)

declare ptr @LLVMGetNamedGlobal(ptr, ptr)

declare void @LLVMSetInitializer(ptr, ptr)

declare void @LLVMSetLinkage(ptr, i64)

declare void @LLVMSetThreadLocal(ptr, i64)

declare ptr @LLVMBuildAlloca(ptr, ptr, ptr)

declare ptr @LLVMBuildStore(ptr, ptr, ptr)

declare ptr @LLVMBuildLoad2(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildStructGEP2(ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMBuildCall2(ptr, ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMBuildICmp(ptr, i64, ptr, ptr, ptr)

declare ptr @LLVMBuildBr(ptr, ptr)

declare ptr @LLVMBuildCondBr(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildPhi(ptr, ptr, ptr)

declare void @LLVMAddIncoming(ptr, ptr, ptr, i64)

declare ptr @LLVMGetInsertBlock(ptr)

declare ptr @LLVMGetBasicBlockParent(ptr)

declare ptr @LLVMBuildRetVoid(ptr)

declare void @LLVMPositionBuilderBefore(ptr, ptr)

declare ptr @LLVMGetGlobalContext()

declare i64 @write(i32, ptr, i64)

; Function Attrs: cold noreturn
declare void @exit(i32) #4

define internal ptr @"debug::#file_metadata"(ptr %0, ptr %1) #3 {
entry:
  %call.res = call i1 @"path::is_abs"(ptr %1)
  br i1 %call.res, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %entry
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %0, i32 0, i32 4
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res4 = call { i64, ptr } @"path::join"(ptr %fld.load, ptr %1)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 16)
  store { i64, ptr } %call.res4, ptr %ret.ub.alloc, align 8
  %call.res5 = call { i64, ptr } @"path::normalize"(ptr %ret.ub.alloc)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc7 = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 16)
  store { i64, ptr } %call.res5, ptr %ret.ub.alloc7, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.else
  %choice.res = phi ptr [ %ret.ub.alloc7, %choice.else ], [ %1, %entry ]
  %fld.gep9 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %fld.load10 = load ptr, ptr %fld.gep9, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load10, i32 0, i32 1
  %m.cap12 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load10, i32 0, i32 2
  %m.keys13 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load10, i32 0, i32 3
  %m.vals14 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load10, i32 0, i32 4
  %m.states15 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %choice.res, i32 0, i32 1
  %mk.data16 = load ptr, ptr %mk.data, align 8
  %mk.len17 = load i64, ptr %choice.res, align 8
  %mk.len18 = and i64 %mk.len17, 281474976710655
  %hash.str = call i64 @dva_hash_string(ptr %mk.data16, i64 %mk.len18)
  %m.capm1 = sub i64 %m.cap12, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.rd.loop

m.rd.loop:                                        ; preds = %m.rd.next, %choice.exit
  %m.rd.idx = phi i64 [ %m.idx0, %choice.exit ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.probe19 = phi i64 [ 0, %choice.exit ], [ %m.rd.probe.next, %m.rd.next ]
  %m.rd.reached = icmp eq i64 %m.rd.probe19, %m.cap12
  %m.rd.state.gep = getelementptr i8, ptr %m.states15, i64 %m.rd.idx
  %m.rd.state = load i8, ptr %m.rd.state.gep, align 1
  %m.rd.is.empty = icmp eq i8 %m.rd.state, 0
  %m.rd.stop = or i1 %m.rd.is.empty, %m.rd.reached
  br i1 %m.rd.stop, label %m.rd.miss, label %m.rd.probe

m.rd.probe:                                       ; preds = %m.rd.loop
  %m.rd.is.tomb = icmp eq i8 %m.rd.state, 2
  br i1 %m.rd.is.tomb, label %m.rd.next, label %m.rd.found

m.rd.found:                                       ; preds = %m.rd.probe
  %m.rd.key.slot = getelementptr i64, ptr %m.keys13, i64 %m.rd.idx
  %mk.stored = load ptr, ptr %m.rd.key.slot, align 8
  %mk.slen20 = load i64, ptr %mk.stored, align 8
  %mk.slen21 = and i64 %mk.slen20, 281474976710655
  %mk.nlen22 = load i64, ptr %choice.res, align 8
  %mk.nlen23 = and i64 %mk.nlen22, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen21, %mk.nlen23
  br i1 %mk.lenseq, label %mk.eq.then, label %m.rd.next

m.rd.next:                                        ; preds = %m.rd.found, %mk.eq.then, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm1
  %m.rd.probe.next = add i64 %m.rd.probe19, 1
  br label %m.rd.loop

m.rd.miss:                                        ; preds = %m.rd.loop
  %arena.cur26 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur26, i64 56)
  store i64 4013, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %m.rd.done

m.rd.done:                                        ; preds = %m.rd.miss, %m.rd.hit
  %m.rd.tag = phi i1 [ true, %m.rd.hit ], [ false, %m.rd.miss ]
  %m.rd.pay = phi i64 [ %m.rd.p2i, %m.rd.hit ], [ %err.p2i, %m.rd.miss ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %m.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %m.rd.pay, 1
  br i1 %m.rd.tag, label %choice.then28, label %choice.else29

mk.eq.then:                                       ; preds = %m.rd.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata24 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata25 = load ptr, ptr %mk.data, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata24, ptr %mk.ndata25, i64 %mk.nlen23)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br i1 %mk.cmpeq, label %m.rd.hit, label %m.rd.next

m.rd.hit:                                         ; preds = %mk.eq.then
  %m.rd.val.slot = getelementptr i64, ptr %m.vals14, i64 %m.rd.idx
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then28:                                    ; preds = %m.rd.done
  %pay.ptr = inttoptr i64 %m.rd.pay to ptr
  br label %choice.exit30

choice.else29:                                    ; preds = %m.rd.done
  %call.res37 = call { i64, ptr } @"path::basename"(ptr %choice.res)
  %arena.cur38 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc39 = call ptr @dva_arena_alloc(ptr %arena.cur38, i64 16)
  store { i64, ptr } %call.res37, ptr %ret.ub.alloc39, align 8
  %call.res41 = call { i64, ptr } @"path::dirname"(ptr %choice.res)
  %arena.cur42 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc43 = call ptr @dva_arena_alloc(ptr %arena.cur42, i64 16)
  store { i64, ptr } %call.res41, ptr %ret.ub.alloc43, align 8
  %fld.load46 = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load46 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc39, i32 0, i32 1
  %arg.str.ptr48 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr50 = load i64, ptr %ret.ub.alloc39, align 8
  %arg.str.ptr51 = and i64 %arg.str.ptr50, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr48, i64 %arg.str.ptr51
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

choice.exit30:                                    ; preds = %m.overwrite218, %m.empty220, %m.overwrite, %m.ins.slot, %choice.then28
  %choice.res284 = phi ptr [ %pay.ptr, %choice.then28 ], [ %call.res85, %m.ins.slot ], [ %call.res85, %m.overwrite ], [ %call.res85, %m.empty220 ], [ %call.res85, %m.overwrite218 ]
  ret ptr %choice.res284

nulcopy:                                          ; preds = %choice.else29
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr51, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len53

nulmerge:                                         ; preds = %choice.else29, %nulcopy.len53
  %arg.str.ptr55 = phi ptr [ %nulcopy.buf, %nulcopy.len53 ], [ %arg.str.ptr48, %choice.else29 ]
  %str.len.query57 = load i64, ptr %ret.ub.alloc39, align 8
  %str.len.query58 = and i64 %str.len.query57, 281474976710655
  %arg.str.ptr60 = getelementptr inbounds { i64, ptr }, ptr %ret.ub.alloc43, i32 0, i32 1
  %arg.str.ptr61 = load ptr, ptr %arg.str.ptr60, align 8
  %arg.str.ptr63 = load i64, ptr %ret.ub.alloc43, align 8
  %arg.str.ptr64 = and i64 %arg.str.ptr63, 281474976710655
  %nulcheck.gep65 = getelementptr i8, ptr %arg.str.ptr61, i64 %arg.str.ptr64
  %nulcheck.byte66 = load i8, ptr %nulcheck.gep65, align 1
  %nulcheck67 = icmp eq i8 %nulcheck.byte66, 0
  br i1 %nulcheck67, label %nulmerge70, label %nulcopy69

nulcopy.len53:                                    ; preds = %nulcopy
  %arena.cur54 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur54, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr48, i64 %arg.str.ptr51, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr51
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

nulcopy69:                                        ; preds = %nulmerge
  %nulcopy.len71 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr64, i64 1)
  %sum72 = extractvalue { i64, i1 } %nulcopy.len71, 0
  %ovf73 = extractvalue { i64, i1 } %nulcopy.len71, 1
  br i1 %ovf73, label %str_overflow_abort75, label %nulcopy.len74

nulmerge70:                                       ; preds = %nulmerge, %nulcopy.len74
  %arg.str.ptr80 = phi ptr [ %nulcopy.buf78, %nulcopy.len74 ], [ %arg.str.ptr61, %nulmerge ]
  %str.len.query83 = load i64, ptr %ret.ub.alloc43, align 8
  %str.len.query84 = and i64 %str.len.query83, 281474976710655
  %call.res85 = call ptr @LLVMDIBuilderCreateFile(ptr %addr.ffi.clean, ptr %arg.str.ptr55, i64 %str.len.query58, ptr %arg.str.ptr80, i64 %str.len.query84)
  %fld.load89 = load ptr, ptr %fld.gep9, align 8
  %slot.p2i = ptrtoint ptr %call.res85 to i64
  %m.cap92 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load89, i32 0, i32 1
  %m.cap93 = load i64, ptr %m.cap92, align 8
  %m.keys94 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load89, i32 0, i32 2
  %m.keys95 = load ptr, ptr %m.keys94, align 8
  %m.vals96 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load89, i32 0, i32 3
  %m.vals97 = load ptr, ptr %m.vals96, align 8
  %m.states98 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load89, i32 0, i32 4
  %m.states99 = load ptr, ptr %m.states98, align 8
  %mk.data101 = load ptr, ptr %mk.data, align 8
  %mk.len103 = load i64, ptr %choice.res, align 8
  %mk.len104 = and i64 %mk.len103, 281474976710655
  %hash.str105 = call i64 @dva_hash_string(ptr %mk.data101, i64 %mk.len104)
  %m.capm1106 = sub i64 %m.cap93, 1
  %m.idx0107 = and i64 %hash.str105, %m.capm1106
  br label %m.loop

nulcopy.len74:                                    ; preds = %nulcopy69
  %arena.cur77 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf78 = call ptr @dva_arena_alloc(ptr %arena.cur77, i64 %sum72)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf78, ptr align 1 %arg.str.ptr61, i64 %arg.str.ptr64, i1 false)
  %nulcopy.nul79 = getelementptr i8, ptr %nulcopy.buf78, i64 %arg.str.ptr64
  store i8 0, ptr %nulcopy.nul79, align 1
  br label %nulmerge70

str_overflow_abort75:                             ; preds = %nulcopy69
  call void @dva_abort_str_overflow_msg()
  unreachable

m.loop:                                           ; preds = %m.next, %nulmerge70
  %m.idx = phi i64 [ %m.idx0107, %nulmerge70 ], [ %m.idx.next, %m.next ]
  %m.tomb108 = phi i64 [ -1, %nulmerge70 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %nulmerge70 ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap93
  %m.state.gep = getelementptr i8, ptr %m.states99, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb108, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb108, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys95, i64 %m.idx
  %mk.stored109 = load ptr, ptr %m.key.slot, align 8
  %mk.slen111 = load i64, ptr %mk.stored109, align 8
  %mk.slen112 = and i64 %mk.slen111, 281474976710655
  %mk.nlen114 = load i64, ptr %choice.res, align 8
  %mk.nlen115 = and i64 %mk.nlen114, 281474976710655
  %mk.lenseq116 = icmp eq i64 %mk.slen112, %mk.nlen115
  br i1 %mk.lenseq116, label %mk.eq.then117, label %m.next

m.overwrite:                                      ; preds = %mk.eq.then117
  %m.val.slot = getelementptr i64, ptr %m.vals97, i64 %m.idx
  store i64 %slot.p2i, ptr %m.val.slot, align 8
  br label %choice.exit30

m.next:                                           ; preds = %m.found, %mk.eq.then117, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb108, %mk.eq.then117 ], [ %m.tomb108, %m.found ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1106
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt = load i64, ptr %fld.load89, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load89, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap93, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

mk.eq.then117:                                    ; preds = %m.found
  %mk.sdata120 = getelementptr inbounds { i64, ptr }, ptr %mk.stored109, i32 0, i32 1
  %mk.sdata121 = load ptr, ptr %mk.sdata120, align 8
  %mk.ndata123 = load ptr, ptr %mk.data, align 8
  %mk.memcmp124 = call i32 @memcmp(ptr %mk.sdata121, ptr %mk.ndata123, i64 %mk.nlen115)
  %mk.cmpeq125 = icmp eq i32 %mk.memcmp124, 0
  br i1 %mk.cmpeq125, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap127 = load i64, ptr %m.cap92, align 8
  %m.old.keys128 = load ptr, ptr %m.keys94, align 8
  %m.old.vals129 = load ptr, ptr %m.vals96, align 8
  %m.old.states130 = load ptr, ptr %m.states98, align 8
  %m.double.cap = mul i64 %m.old.cap127, 2
  %m.live.x2 = mul i64 %m.grow.cnt, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap127
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap127
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur132 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur132, i64 %m.gk.bytes)
  %arena.cur133 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur133, i64 %m.gk.bytes)
  %arena.cur134 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur134, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  store i64 %m.new.cap, ptr %m.cap92, align 8
  store ptr %m.gk, ptr %m.keys94, align 8
  store ptr %m.gv, ptr %m.vals96, align 8
  store ptr %m.gs, ptr %m.states98, align 8
  store i64 0, ptr %fld.load89, align 8
  store i64 0, ptr %m.grow.tm.p, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb270 = icmp ne i64 %m.tomb108, -1
  %m.ins.idx271 = select i1 %m.use.tomb270, i64 %m.tomb108, i64 %m.idx
  %m.key.slot272 = getelementptr i64, ptr %m.keys95, i64 %m.ins.idx271
  store ptr %choice.res, ptr %m.key.slot272, align 8
  %m.val.slot273 = getelementptr i64, ptr %m.vals97, i64 %m.ins.idx271
  store i64 %slot.p2i, ptr %m.val.slot273, align 8
  %m.ins.state.slot274 = getelementptr i8, ptr %m.states99, i64 %m.ins.idx271
  store i8 1, ptr %m.ins.state.slot274, align 1
  %m.count276 = load i64, ptr %fld.load89, align 8
  %m.count.next277 = add i64 %m.count276, 1
  store i64 %m.count.next277, ptr %fld.load89, align 8
  %m.ins.tombs280 = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec281 = select i1 %m.use.tomb270, i64 1, i64 0
  %m.ins.tombs.next282 = sub i64 %m.ins.tombs280, %m.tomb.dec281
  store i64 %m.ins.tombs.next282, ptr %m.grow.tm.p, align 8
  br label %choice.exit30

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap127
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states130, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.overwrite155, %m.empty157, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap199 = load i64, ptr %m.cap92, align 8
  %m.keys201 = load ptr, ptr %m.keys94, align 8
  %m.vals203 = load ptr, ptr %m.vals96, align 8
  %m.states205 = load ptr, ptr %m.states98, align 8
  %mk.data207 = load ptr, ptr %mk.data, align 8
  %mk.len209 = load i64, ptr %choice.res, align 8
  %mk.len210 = and i64 %mk.len209, 281474976710655
  %hash.str211 = call i64 @dva_hash_string(ptr %mk.data207, i64 %mk.len210)
  %m.capm1212 = sub i64 %m.cap199, 1
  %m.idx0213 = and i64 %hash.str211, %m.capm1212
  br label %m.loop214

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys128, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals129, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap136 = load i64, ptr %m.cap92, align 8
  %m.keys138 = load ptr, ptr %m.keys94, align 8
  %m.vals140 = load ptr, ptr %m.vals96, align 8
  %m.states142 = load ptr, ptr %m.states98, align 8
  %mk.data143 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data144 = load ptr, ptr %mk.data143, align 8
  %mk.len146 = load i64, ptr %m.re.key, align 8
  %mk.len147 = and i64 %mk.len146, 281474976710655
  %hash.str148 = call i64 @dva_hash_string(ptr %mk.data144, i64 %mk.len147)
  %m.capm1149 = sub i64 %m.cap136, 1
  %m.idx0150 = and i64 %hash.str148, %m.capm1149
  br label %m.loop151

m.loop151:                                        ; preds = %m.next156, %m.re.ins
  %m.idx159 = phi i64 [ %m.idx0150, %m.re.ins ], [ %m.idx.next192, %m.next156 ]
  %m.tomb160 = phi i64 [ -1, %m.re.ins ], [ %m.next.tomb190, %m.next156 ]
  %m.probe161 = phi i64 [ 0, %m.re.ins ], [ %m.probe.next193, %m.next156 ]
  %m.reached.cap162 = icmp eq i64 %m.probe161, %m.cap136
  %m.state.gep163 = getelementptr i8, ptr %m.states142, i64 %m.idx159
  %m.state164 = load i8, ptr %m.state.gep163, align 1
  %m.is.empty165 = icmp eq i8 %m.state164, 0
  %m.stop166 = or i1 %m.is.empty165, %m.reached.cap162
  br i1 %m.stop166, label %m.empty157, label %m.check.tomb152

m.check.tomb152:                                  ; preds = %m.loop151
  %m.is.tomb167 = icmp eq i8 %m.state164, 2
  br i1 %m.is.tomb167, label %m.tomb153, label %m.found154

m.tomb153:                                        ; preds = %m.check.tomb152
  %m.has.tomb168 = icmp ne i64 %m.tomb160, -1
  %m.tomb.sel169 = select i1 %m.has.tomb168, i64 %m.tomb160, i64 %m.idx159
  br label %m.next156

m.found154:                                       ; preds = %m.check.tomb152
  %m.key.slot170 = getelementptr i64, ptr %m.keys138, i64 %m.idx159
  %mk.stored171 = load ptr, ptr %m.key.slot170, align 8
  %mk.slen173 = load i64, ptr %mk.stored171, align 8
  %mk.slen174 = and i64 %mk.slen173, 281474976710655
  %mk.nlen176 = load i64, ptr %m.re.key, align 8
  %mk.nlen177 = and i64 %mk.nlen176, 281474976710655
  %mk.lenseq178 = icmp eq i64 %mk.slen174, %mk.nlen177
  br i1 %mk.lenseq178, label %mk.eq.then179, label %m.next156

m.overwrite155:                                   ; preds = %mk.eq.then179
  %m.val.slot189 = getelementptr i64, ptr %m.vals140, i64 %m.idx159
  store i64 %m.re.val, ptr %m.val.slot189, align 8
  br label %m.re.cont

m.next156:                                        ; preds = %m.found154, %mk.eq.then179, %m.tomb153
  %m.next.tomb190 = phi i64 [ %m.tomb.sel169, %m.tomb153 ], [ %m.tomb160, %mk.eq.then179 ], [ %m.tomb160, %m.found154 ]
  %m.idx.add191 = add i64 %m.idx159, 1
  %m.idx.next192 = and i64 %m.idx.add191, %m.capm1149
  %m.probe.next193 = add i64 %m.probe161, 1
  br label %m.loop151

m.empty157:                                       ; preds = %m.loop151
  %m.use.tomb = icmp ne i64 %m.tomb160, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb160, i64 %m.idx159
  %m.key.slot194 = getelementptr i64, ptr %m.keys138, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot194, align 8
  %m.val.slot195 = getelementptr i64, ptr %m.vals140, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot195, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states142, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count196 = load i64, ptr %fld.load89, align 8
  %m.count.next = add i64 %m.count196, 1
  store i64 %m.count.next, ptr %fld.load89, align 8
  %m.ins.tombs = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.grow.tm.p, align 8
  br label %m.re.cont

mk.eq.then179:                                    ; preds = %m.found154
  %mk.sdata182 = getelementptr inbounds { i64, ptr }, ptr %mk.stored171, i32 0, i32 1
  %mk.sdata183 = load ptr, ptr %mk.sdata182, align 8
  %mk.ndata185 = load ptr, ptr %mk.data143, align 8
  %mk.memcmp186 = call i32 @memcmp(ptr %mk.sdata183, ptr %mk.ndata185, i64 %mk.nlen177)
  %mk.cmpeq187 = icmp eq i32 %mk.memcmp186, 0
  br i1 %mk.cmpeq187, label %m.overwrite155, label %m.next156

m.loop214:                                        ; preds = %m.next219, %m.re.done
  %m.idx222 = phi i64 [ %m.idx0213, %m.re.done ], [ %m.idx.next255, %m.next219 ]
  %m.tomb223 = phi i64 [ -1, %m.re.done ], [ %m.next.tomb253, %m.next219 ]
  %m.probe224 = phi i64 [ 0, %m.re.done ], [ %m.probe.next256, %m.next219 ]
  %m.reached.cap225 = icmp eq i64 %m.probe224, %m.cap199
  %m.state.gep226 = getelementptr i8, ptr %m.states205, i64 %m.idx222
  %m.state227 = load i8, ptr %m.state.gep226, align 1
  %m.is.empty228 = icmp eq i8 %m.state227, 0
  %m.stop229 = or i1 %m.is.empty228, %m.reached.cap225
  br i1 %m.stop229, label %m.empty220, label %m.check.tomb215

m.check.tomb215:                                  ; preds = %m.loop214
  %m.is.tomb230 = icmp eq i8 %m.state227, 2
  br i1 %m.is.tomb230, label %m.tomb216, label %m.found217

m.tomb216:                                        ; preds = %m.check.tomb215
  %m.has.tomb231 = icmp ne i64 %m.tomb223, -1
  %m.tomb.sel232 = select i1 %m.has.tomb231, i64 %m.tomb223, i64 %m.idx222
  br label %m.next219

m.found217:                                       ; preds = %m.check.tomb215
  %m.key.slot233 = getelementptr i64, ptr %m.keys201, i64 %m.idx222
  %mk.stored234 = load ptr, ptr %m.key.slot233, align 8
  %mk.slen236 = load i64, ptr %mk.stored234, align 8
  %mk.slen237 = and i64 %mk.slen236, 281474976710655
  %mk.nlen239 = load i64, ptr %choice.res, align 8
  %mk.nlen240 = and i64 %mk.nlen239, 281474976710655
  %mk.lenseq241 = icmp eq i64 %mk.slen237, %mk.nlen240
  br i1 %mk.lenseq241, label %mk.eq.then242, label %m.next219

m.overwrite218:                                   ; preds = %mk.eq.then242
  %m.val.slot252 = getelementptr i64, ptr %m.vals203, i64 %m.idx222
  store i64 %slot.p2i, ptr %m.val.slot252, align 8
  br label %choice.exit30

m.next219:                                        ; preds = %m.found217, %mk.eq.then242, %m.tomb216
  %m.next.tomb253 = phi i64 [ %m.tomb.sel232, %m.tomb216 ], [ %m.tomb223, %mk.eq.then242 ], [ %m.tomb223, %m.found217 ]
  %m.idx.add254 = add i64 %m.idx222, 1
  %m.idx.next255 = and i64 %m.idx.add254, %m.capm1212
  %m.probe.next256 = add i64 %m.probe224, 1
  br label %m.loop214

m.empty220:                                       ; preds = %m.loop214
  %m.use.tomb257 = icmp ne i64 %m.tomb223, -1
  %m.ins.idx258 = select i1 %m.use.tomb257, i64 %m.tomb223, i64 %m.idx222
  %m.key.slot259 = getelementptr i64, ptr %m.keys201, i64 %m.ins.idx258
  store ptr %choice.res, ptr %m.key.slot259, align 8
  %m.val.slot260 = getelementptr i64, ptr %m.vals203, i64 %m.ins.idx258
  store i64 %slot.p2i, ptr %m.val.slot260, align 8
  %m.ins.state.slot261 = getelementptr i8, ptr %m.states205, i64 %m.ins.idx258
  store i8 1, ptr %m.ins.state.slot261, align 1
  %m.count263 = load i64, ptr %fld.load89, align 8
  %m.count.next264 = add i64 %m.count263, 1
  store i64 %m.count.next264, ptr %fld.load89, align 8
  %m.ins.tombs267 = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec268 = select i1 %m.use.tomb257, i64 1, i64 0
  %m.ins.tombs.next269 = sub i64 %m.ins.tombs267, %m.tomb.dec268
  store i64 %m.ins.tombs.next269, ptr %m.grow.tm.p, align 8
  br label %choice.exit30

mk.eq.then242:                                    ; preds = %m.found217
  %mk.sdata245 = getelementptr inbounds { i64, ptr }, ptr %mk.stored234, i32 0, i32 1
  %mk.sdata246 = load ptr, ptr %mk.sdata245, align 8
  %mk.ndata248 = load ptr, ptr %mk.data, align 8
  %mk.memcmp249 = call i32 @memcmp(ptr %mk.sdata246, ptr %mk.ndata248, i64 %mk.nlen240)
  %mk.cmpeq250 = icmp eq i32 %mk.memcmp249, 0
  br i1 %mk.cmpeq250, label %m.overwrite218, label %m.next219
}

declare i1 @"path::is_abs"(ptr) #3

declare { i64, ptr } @"path::join"(ptr, ptr) #3

declare { i64, ptr } @"path::normalize"(ptr) #3

declare i32 @memcmp(ptr, ptr, i64) #3

declare { i64, ptr } @"path::basename"(ptr) #3

declare { i64, ptr } @"path::dirname"(ptr) #3

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_str_overflow_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @str_overflow_msg, i64 70)
  call void @exit(i32 1)
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

define internal ptr @"debug::#loc_metadata"(ptr %0, i64 %1, i64 %2) #3 {
entry:
  %call.res = call ptr @LLVMGetGlobalContext()
  %addr.ffi.int = ptrtoint ptr %call.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %coerce.trunc = trunc i64 %1 to i32
  %coerce.trunc2 = trunc i64 %2 to i32
  %addr.ffi.int4 = ptrtoint ptr %0 to i64
  %addr.ffi.masked5 = and i64 %addr.ffi.int4, 281474976710655
  %addr.ffi.clean6 = inttoptr i64 %addr.ffi.masked5 to ptr
  %call.res7 = call ptr @LLVMDIBuilderCreateDebugLocation(ptr %addr.ffi.clean, i32 %coerce.trunc, i32 %coerce.trunc2, ptr %addr.ffi.clean6, ptr null)
  ret ptr %call.res7
}

define internal ptr @"debug::#location_scope"(ptr %0, ptr %1, ptr %2, ptr %3) #3 {
entry:
  %cat.ibuf6 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %addr.ffi.int = ptrtoint ptr %1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @LLVMDIScopeGetFile(ptr %addr.ffi.clean)
  %ptr.int.l = ptrtoint ptr %call.res to i64
  %ptr.int.r = ptrtoint ptr %2 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %m.overwrite522, %m.empty524, %m.overwrite365, %m.ins.slot398, %choice.then42, %entry
  %common.ret.op = phi ptr [ %1, %entry ], [ %pay.ptr, %choice.then42 ], [ %call.res63, %m.ins.slot398 ], [ %call.res63, %m.overwrite365 ], [ %call.res63, %m.empty524 ], [ %call.res63, %m.overwrite522 ]
  ret ptr %common.ret.op

choice.exit:                                      ; preds = %entry
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %addr.ffi.int, i1 false)
  %cat.ilen7 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf6, i64 %ptr.int.r, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %cat.ilen, i64 1)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len8

cat.sum.len8:                                     ; preds = %choice.exit
  %cat.sum.len9 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 %cat.ilen7)
  %sum10 = extractvalue { i64, i1 } %cat.sum.len9, 0
  %ovf11 = extractvalue { i64, i1 } %cat.sum.len9, 1
  br i1 %ovf11, label %str_overflow_abort13, label %cat.sum.len12

str_overflow_abort:                               ; preds = %choice.exit
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len12:                                    ; preds = %cat.sum.len8
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum10, i64 1)
  %sum15 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf16 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf16, label %str_overflow_abort18, label %concat.tot.len17

str_overflow_abort13:                             ; preds = %cat.sum.len8
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len17:                                 ; preds = %cat.sum.len12
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum15)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.dst20 = getelementptr i8, ptr %concat.buf, i64 %cat.ilen
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst20, ptr align 1 @str.2, i64 1, i1 false)
  %cat.off21 = add i64 %cat.ilen, 1
  %cat.dst22 = getelementptr i8, ptr %concat.buf, i64 %cat.off21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst22, ptr align 1 %cat.ibuf6, i64 %cat.ilen7, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum10
  store i8 0, ptr %concat.nul, align 1
  %arena.cur23 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur23, i64 16)
  store i64 %sum10, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %0, i32 0, i32 5
  %fld.load = load ptr, ptr %fld.gep, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %m.cap26 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load, i32 0, i32 2
  %m.keys27 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load, i32 0, i32 3
  %m.vals28 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load, i32 0, i32 4
  %m.states29 = load ptr, ptr %m.states, align 8
  %mk.len31 = load i64, ptr %concat.str, align 8
  %mk.len32 = and i64 %mk.len31, 281474976710655
  %hash.str = call i64 @dva_hash_string(ptr %concat.buf, i64 %mk.len32)
  %m.capm1 = sub i64 %m.cap26, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.rd.loop

str_overflow_abort18:                             ; preds = %cat.sum.len12
  call void @dva_abort_str_overflow_msg()
  unreachable

m.rd.loop:                                        ; preds = %m.rd.next, %concat.tot.len17
  %m.rd.idx = phi i64 [ %m.idx0, %concat.tot.len17 ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.probe33 = phi i64 [ 0, %concat.tot.len17 ], [ %m.rd.probe.next, %m.rd.next ]
  %m.rd.reached = icmp eq i64 %m.rd.probe33, %m.cap26
  %m.rd.state.gep = getelementptr i8, ptr %m.states29, i64 %m.rd.idx
  %m.rd.state = load i8, ptr %m.rd.state.gep, align 1
  %m.rd.is.empty = icmp eq i8 %m.rd.state, 0
  %m.rd.stop = or i1 %m.rd.is.empty, %m.rd.reached
  br i1 %m.rd.stop, label %m.rd.miss, label %m.rd.probe

m.rd.probe:                                       ; preds = %m.rd.loop
  %m.rd.is.tomb = icmp eq i8 %m.rd.state, 2
  br i1 %m.rd.is.tomb, label %m.rd.next, label %m.rd.found

m.rd.found:                                       ; preds = %m.rd.probe
  %m.rd.key.slot = getelementptr i64, ptr %m.keys27, i64 %m.rd.idx
  %mk.stored = load ptr, ptr %m.rd.key.slot, align 8
  %mk.slen34 = load i64, ptr %mk.stored, align 8
  %mk.slen35 = and i64 %mk.slen34, 281474976710655
  %mk.nlen36 = load i64, ptr %concat.str, align 8
  %mk.nlen37 = and i64 %mk.nlen36, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen35, %mk.nlen37
  br i1 %mk.lenseq, label %mk.eq.then, label %m.rd.next

m.rd.next:                                        ; preds = %m.rd.found, %mk.eq.then, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm1
  %m.rd.probe.next = add i64 %m.rd.probe33, 1
  br label %m.rd.loop

m.rd.miss:                                        ; preds = %m.rd.loop
  %arena.cur40 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur40, i64 56)
  store i64 4013, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %m.rd.done

m.rd.done:                                        ; preds = %m.rd.miss, %m.rd.hit
  %m.rd.tag = phi i1 [ true, %m.rd.hit ], [ false, %m.rd.miss ]
  %m.rd.pay = phi i64 [ %m.rd.p2i, %m.rd.hit ], [ %err.p2i, %m.rd.miss ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %m.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %m.rd.pay, 1
  br i1 %m.rd.tag, label %choice.then42, label %choice.else

mk.eq.then:                                       ; preds = %m.rd.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata38 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata39 = load ptr, ptr %str.build.data.gep, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata38, ptr %mk.ndata39, i64 %mk.nlen37)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br i1 %mk.cmpeq, label %m.rd.hit, label %m.rd.next

m.rd.hit:                                         ; preds = %mk.eq.then
  %m.rd.val.slot = getelementptr i64, ptr %m.vals28, i64 %m.rd.idx
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then42:                                    ; preds = %m.rd.done
  %pay.ptr = inttoptr i64 %m.rd.pay to ptr
  br label %common.ret

choice.else:                                      ; preds = %m.rd.done
  %fld.load51 = load ptr, ptr %0, align 8
  %addr.ffi.int52 = ptrtoint ptr %fld.load51 to i64
  %addr.ffi.masked53 = and i64 %addr.ffi.int52, 281474976710655
  %addr.ffi.clean54 = inttoptr i64 %addr.ffi.masked53 to ptr
  %addr.ffi.masked61 = and i64 %ptr.int.r, 281474976710655
  %addr.ffi.clean62 = inttoptr i64 %addr.ffi.masked61 to ptr
  %call.res63 = call ptr @LLVMDIBuilderCreateLexicalBlockFile(ptr %addr.ffi.clean54, ptr %addr.ffi.clean, ptr %addr.ffi.clean62, i32 0)
  %fld.load67 = load ptr, ptr %fld.gep, align 8
  %slot.p2i = ptrtoint ptr %call.res63 to i64
  %m.cap70 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load67, i32 0, i32 1
  %m.cap71 = load i64, ptr %m.cap70, align 8
  %m.keys72 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load67, i32 0, i32 2
  %m.keys73 = load ptr, ptr %m.keys72, align 8
  %m.vals74 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load67, i32 0, i32 3
  %m.vals75 = load ptr, ptr %m.vals74, align 8
  %m.states76 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load67, i32 0, i32 4
  %m.states77 = load ptr, ptr %m.states76, align 8
  %mk.data79 = load ptr, ptr %str.build.data.gep, align 8
  %mk.len81 = load i64, ptr %concat.str, align 8
  %mk.len82 = and i64 %mk.len81, 281474976710655
  %hash.str83 = call i64 @dva_hash_string(ptr %mk.data79, i64 %mk.len82)
  %m.capm184 = sub i64 %m.cap71, 1
  %m.idx085 = and i64 %hash.str83, %m.capm184
  br label %m.loop

m.loop:                                           ; preds = %m.next, %choice.else
  %m.idx = phi i64 [ %m.idx085, %choice.else ], [ %m.idx.next, %m.next ]
  %m.tomb86 = phi i64 [ -1, %choice.else ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %choice.else ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap71
  %m.state.gep = getelementptr i8, ptr %m.states77, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb86, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb86, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys73, i64 %m.idx
  %mk.stored87 = load ptr, ptr %m.key.slot, align 8
  %mk.slen89 = load i64, ptr %mk.stored87, align 8
  %mk.slen90 = and i64 %mk.slen89, 281474976710655
  %mk.nlen92 = load i64, ptr %concat.str, align 8
  %mk.nlen93 = and i64 %mk.nlen92, 281474976710655
  %mk.lenseq94 = icmp eq i64 %mk.slen90, %mk.nlen93
  br i1 %mk.lenseq94, label %mk.eq.then95, label %m.next

m.overwrite:                                      ; preds = %mk.eq.then95
  %m.val.slot = getelementptr i64, ptr %m.vals75, i64 %m.idx
  store i64 %slot.p2i, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %m.found, %mk.eq.then95, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb86, %mk.eq.then95 ], [ %m.tomb86, %m.found ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm184
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt = load i64, ptr %fld.load67, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load67, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap71, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.overwrite196, %m.empty198, %m.ins.slot, %m.overwrite
  %fld.gep262 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %0, i32 0, i32 6
  %fld.load263 = load ptr, ptr %fld.gep262, align 8
  %m.cap266 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load263, i32 0, i32 1
  %m.cap267 = load i64, ptr %m.cap266, align 8
  %m.keys268 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load263, i32 0, i32 2
  %m.keys269 = load ptr, ptr %m.keys268, align 8
  %m.vals270 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load263, i32 0, i32 3
  %m.vals271 = load ptr, ptr %m.vals270, align 8
  %m.states272 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load263, i32 0, i32 4
  %m.states273 = load ptr, ptr %m.states272, align 8
  %mix.s1 = lshr i64 %addr.ffi.int, 30
  %mix.x1 = xor i64 %addr.ffi.int, %mix.s1
  %mix.x2 = mul i64 %mix.x1, -4658895280553007687
  %mix.s2 = lshr i64 %mix.x2, 27
  %mix.x3 = xor i64 %mix.x2, %mix.s2
  %mix.x4 = mul i64 %mix.x3, -7723592293110705685
  %mix.s3 = lshr i64 %mix.x4, 31
  %mix.res = xor i64 %mix.x4, %mix.s3
  %m.capm1274 = sub i64 %m.cap267, 1
  %m.idx0275 = and i64 %mix.res, %m.capm1274
  br label %m.rd.loop276

mk.eq.then95:                                     ; preds = %m.found
  %mk.sdata98 = getelementptr inbounds { i64, ptr }, ptr %mk.stored87, i32 0, i32 1
  %mk.sdata99 = load ptr, ptr %mk.sdata98, align 8
  %mk.ndata101 = load ptr, ptr %str.build.data.gep, align 8
  %mk.memcmp102 = call i32 @memcmp(ptr %mk.sdata99, ptr %mk.ndata101, i64 %mk.nlen93)
  %mk.cmpeq103 = icmp eq i32 %mk.memcmp102, 0
  br i1 %mk.cmpeq103, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap105 = load i64, ptr %m.cap70, align 8
  %m.old.keys106 = load ptr, ptr %m.keys72, align 8
  %m.old.vals107 = load ptr, ptr %m.vals74, align 8
  %m.old.states108 = load ptr, ptr %m.states76, align 8
  %m.double.cap = mul i64 %m.old.cap105, 2
  %m.live.x2 = mul i64 %m.grow.cnt, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap105
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap105
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur110 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur110, i64 %m.gk.bytes)
  %arena.cur111 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur111, i64 %m.gk.bytes)
  %arena.cur112 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur112, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  store i64 %m.new.cap, ptr %m.cap70, align 8
  store ptr %m.gk, ptr %m.keys72, align 8
  store ptr %m.gv, ptr %m.vals74, align 8
  store ptr %m.gs, ptr %m.states76, align 8
  store i64 0, ptr %fld.load67, align 8
  store i64 0, ptr %m.grow.tm.p, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb248 = icmp ne i64 %m.tomb86, -1
  %m.ins.idx249 = select i1 %m.use.tomb248, i64 %m.tomb86, i64 %m.idx
  %m.key.slot250 = getelementptr i64, ptr %m.keys73, i64 %m.ins.idx249
  store ptr %concat.str, ptr %m.key.slot250, align 8
  %m.val.slot251 = getelementptr i64, ptr %m.vals75, i64 %m.ins.idx249
  store i64 %slot.p2i, ptr %m.val.slot251, align 8
  %m.ins.state.slot252 = getelementptr i8, ptr %m.states77, i64 %m.ins.idx249
  store i8 1, ptr %m.ins.state.slot252, align 1
  %m.count254 = load i64, ptr %fld.load67, align 8
  %m.count.next255 = add i64 %m.count254, 1
  store i64 %m.count.next255, ptr %fld.load67, align 8
  %m.ins.tombs258 = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec259 = select i1 %m.use.tomb248, i64 1, i64 0
  %m.ins.tombs.next260 = sub i64 %m.ins.tombs258, %m.tomb.dec259
  store i64 %m.ins.tombs.next260, ptr %m.grow.tm.p, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap105
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states108, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.overwrite133, %m.empty135, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap177 = load i64, ptr %m.cap70, align 8
  %m.keys179 = load ptr, ptr %m.keys72, align 8
  %m.vals181 = load ptr, ptr %m.vals74, align 8
  %m.states183 = load ptr, ptr %m.states76, align 8
  %mk.data185 = load ptr, ptr %str.build.data.gep, align 8
  %mk.len187 = load i64, ptr %concat.str, align 8
  %mk.len188 = and i64 %mk.len187, 281474976710655
  %hash.str189 = call i64 @dva_hash_string(ptr %mk.data185, i64 %mk.len188)
  %m.capm1190 = sub i64 %m.cap177, 1
  %m.idx0191 = and i64 %hash.str189, %m.capm1190
  br label %m.loop192

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys106, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals107, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap114 = load i64, ptr %m.cap70, align 8
  %m.keys116 = load ptr, ptr %m.keys72, align 8
  %m.vals118 = load ptr, ptr %m.vals74, align 8
  %m.states120 = load ptr, ptr %m.states76, align 8
  %mk.data121 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data122 = load ptr, ptr %mk.data121, align 8
  %mk.len124 = load i64, ptr %m.re.key, align 8
  %mk.len125 = and i64 %mk.len124, 281474976710655
  %hash.str126 = call i64 @dva_hash_string(ptr %mk.data122, i64 %mk.len125)
  %m.capm1127 = sub i64 %m.cap114, 1
  %m.idx0128 = and i64 %hash.str126, %m.capm1127
  br label %m.loop129

m.loop129:                                        ; preds = %m.next134, %m.re.ins
  %m.idx137 = phi i64 [ %m.idx0128, %m.re.ins ], [ %m.idx.next170, %m.next134 ]
  %m.tomb138 = phi i64 [ -1, %m.re.ins ], [ %m.next.tomb168, %m.next134 ]
  %m.probe139 = phi i64 [ 0, %m.re.ins ], [ %m.probe.next171, %m.next134 ]
  %m.reached.cap140 = icmp eq i64 %m.probe139, %m.cap114
  %m.state.gep141 = getelementptr i8, ptr %m.states120, i64 %m.idx137
  %m.state142 = load i8, ptr %m.state.gep141, align 1
  %m.is.empty143 = icmp eq i8 %m.state142, 0
  %m.stop144 = or i1 %m.is.empty143, %m.reached.cap140
  br i1 %m.stop144, label %m.empty135, label %m.check.tomb130

m.check.tomb130:                                  ; preds = %m.loop129
  %m.is.tomb145 = icmp eq i8 %m.state142, 2
  br i1 %m.is.tomb145, label %m.tomb131, label %m.found132

m.tomb131:                                        ; preds = %m.check.tomb130
  %m.has.tomb146 = icmp ne i64 %m.tomb138, -1
  %m.tomb.sel147 = select i1 %m.has.tomb146, i64 %m.tomb138, i64 %m.idx137
  br label %m.next134

m.found132:                                       ; preds = %m.check.tomb130
  %m.key.slot148 = getelementptr i64, ptr %m.keys116, i64 %m.idx137
  %mk.stored149 = load ptr, ptr %m.key.slot148, align 8
  %mk.slen151 = load i64, ptr %mk.stored149, align 8
  %mk.slen152 = and i64 %mk.slen151, 281474976710655
  %mk.nlen154 = load i64, ptr %m.re.key, align 8
  %mk.nlen155 = and i64 %mk.nlen154, 281474976710655
  %mk.lenseq156 = icmp eq i64 %mk.slen152, %mk.nlen155
  br i1 %mk.lenseq156, label %mk.eq.then157, label %m.next134

m.overwrite133:                                   ; preds = %mk.eq.then157
  %m.val.slot167 = getelementptr i64, ptr %m.vals118, i64 %m.idx137
  store i64 %m.re.val, ptr %m.val.slot167, align 8
  br label %m.re.cont

m.next134:                                        ; preds = %m.found132, %mk.eq.then157, %m.tomb131
  %m.next.tomb168 = phi i64 [ %m.tomb.sel147, %m.tomb131 ], [ %m.tomb138, %mk.eq.then157 ], [ %m.tomb138, %m.found132 ]
  %m.idx.add169 = add i64 %m.idx137, 1
  %m.idx.next170 = and i64 %m.idx.add169, %m.capm1127
  %m.probe.next171 = add i64 %m.probe139, 1
  br label %m.loop129

m.empty135:                                       ; preds = %m.loop129
  %m.use.tomb = icmp ne i64 %m.tomb138, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb138, i64 %m.idx137
  %m.key.slot172 = getelementptr i64, ptr %m.keys116, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot172, align 8
  %m.val.slot173 = getelementptr i64, ptr %m.vals118, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot173, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states120, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count174 = load i64, ptr %fld.load67, align 8
  %m.count.next = add i64 %m.count174, 1
  store i64 %m.count.next, ptr %fld.load67, align 8
  %m.ins.tombs = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.grow.tm.p, align 8
  br label %m.re.cont

mk.eq.then157:                                    ; preds = %m.found132
  %mk.sdata160 = getelementptr inbounds { i64, ptr }, ptr %mk.stored149, i32 0, i32 1
  %mk.sdata161 = load ptr, ptr %mk.sdata160, align 8
  %mk.ndata163 = load ptr, ptr %mk.data121, align 8
  %mk.memcmp164 = call i32 @memcmp(ptr %mk.sdata161, ptr %mk.ndata163, i64 %mk.nlen155)
  %mk.cmpeq165 = icmp eq i32 %mk.memcmp164, 0
  br i1 %mk.cmpeq165, label %m.overwrite133, label %m.next134

m.loop192:                                        ; preds = %m.next197, %m.re.done
  %m.idx200 = phi i64 [ %m.idx0191, %m.re.done ], [ %m.idx.next233, %m.next197 ]
  %m.tomb201 = phi i64 [ -1, %m.re.done ], [ %m.next.tomb231, %m.next197 ]
  %m.probe202 = phi i64 [ 0, %m.re.done ], [ %m.probe.next234, %m.next197 ]
  %m.reached.cap203 = icmp eq i64 %m.probe202, %m.cap177
  %m.state.gep204 = getelementptr i8, ptr %m.states183, i64 %m.idx200
  %m.state205 = load i8, ptr %m.state.gep204, align 1
  %m.is.empty206 = icmp eq i8 %m.state205, 0
  %m.stop207 = or i1 %m.is.empty206, %m.reached.cap203
  br i1 %m.stop207, label %m.empty198, label %m.check.tomb193

m.check.tomb193:                                  ; preds = %m.loop192
  %m.is.tomb208 = icmp eq i8 %m.state205, 2
  br i1 %m.is.tomb208, label %m.tomb194, label %m.found195

m.tomb194:                                        ; preds = %m.check.tomb193
  %m.has.tomb209 = icmp ne i64 %m.tomb201, -1
  %m.tomb.sel210 = select i1 %m.has.tomb209, i64 %m.tomb201, i64 %m.idx200
  br label %m.next197

m.found195:                                       ; preds = %m.check.tomb193
  %m.key.slot211 = getelementptr i64, ptr %m.keys179, i64 %m.idx200
  %mk.stored212 = load ptr, ptr %m.key.slot211, align 8
  %mk.slen214 = load i64, ptr %mk.stored212, align 8
  %mk.slen215 = and i64 %mk.slen214, 281474976710655
  %mk.nlen217 = load i64, ptr %concat.str, align 8
  %mk.nlen218 = and i64 %mk.nlen217, 281474976710655
  %mk.lenseq219 = icmp eq i64 %mk.slen215, %mk.nlen218
  br i1 %mk.lenseq219, label %mk.eq.then220, label %m.next197

m.overwrite196:                                   ; preds = %mk.eq.then220
  %m.val.slot230 = getelementptr i64, ptr %m.vals181, i64 %m.idx200
  store i64 %slot.p2i, ptr %m.val.slot230, align 8
  br label %m.done

m.next197:                                        ; preds = %m.found195, %mk.eq.then220, %m.tomb194
  %m.next.tomb231 = phi i64 [ %m.tomb.sel210, %m.tomb194 ], [ %m.tomb201, %mk.eq.then220 ], [ %m.tomb201, %m.found195 ]
  %m.idx.add232 = add i64 %m.idx200, 1
  %m.idx.next233 = and i64 %m.idx.add232, %m.capm1190
  %m.probe.next234 = add i64 %m.probe202, 1
  br label %m.loop192

m.empty198:                                       ; preds = %m.loop192
  %m.use.tomb235 = icmp ne i64 %m.tomb201, -1
  %m.ins.idx236 = select i1 %m.use.tomb235, i64 %m.tomb201, i64 %m.idx200
  %m.key.slot237 = getelementptr i64, ptr %m.keys179, i64 %m.ins.idx236
  store ptr %concat.str, ptr %m.key.slot237, align 8
  %m.val.slot238 = getelementptr i64, ptr %m.vals181, i64 %m.ins.idx236
  store i64 %slot.p2i, ptr %m.val.slot238, align 8
  %m.ins.state.slot239 = getelementptr i8, ptr %m.states183, i64 %m.ins.idx236
  store i8 1, ptr %m.ins.state.slot239, align 1
  %m.count241 = load i64, ptr %fld.load67, align 8
  %m.count.next242 = add i64 %m.count241, 1
  store i64 %m.count.next242, ptr %fld.load67, align 8
  %m.ins.tombs245 = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec246 = select i1 %m.use.tomb235, i64 1, i64 0
  %m.ins.tombs.next247 = sub i64 %m.ins.tombs245, %m.tomb.dec246
  store i64 %m.ins.tombs.next247, ptr %m.grow.tm.p, align 8
  br label %m.done

mk.eq.then220:                                    ; preds = %m.found195
  %mk.sdata223 = getelementptr inbounds { i64, ptr }, ptr %mk.stored212, i32 0, i32 1
  %mk.sdata224 = load ptr, ptr %mk.sdata223, align 8
  %mk.ndata226 = load ptr, ptr %str.build.data.gep, align 8
  %mk.memcmp227 = call i32 @memcmp(ptr %mk.sdata224, ptr %mk.ndata226, i64 %mk.nlen218)
  %mk.cmpeq228 = icmp eq i32 %mk.memcmp227, 0
  br i1 %mk.cmpeq228, label %m.overwrite196, label %m.next197

m.rd.loop276:                                     ; preds = %m.rd.next279, %m.done
  %m.rd.idx282 = phi i64 [ %m.idx0275, %m.done ], [ %m.rd.idx.next295, %m.rd.next279 ]
  %m.rd.probe283 = phi i64 [ 0, %m.done ], [ %m.rd.probe.next296, %m.rd.next279 ]
  %m.rd.reached284 = icmp eq i64 %m.rd.probe283, %m.cap267
  %m.rd.state.gep285 = getelementptr i8, ptr %m.states273, i64 %m.rd.idx282
  %m.rd.state286 = load i8, ptr %m.rd.state.gep285, align 1
  %m.rd.is.empty287 = icmp eq i8 %m.rd.state286, 0
  %m.rd.stop288 = or i1 %m.rd.is.empty287, %m.rd.reached284
  br i1 %m.rd.stop288, label %m.rd.miss280, label %m.rd.probe277

m.rd.probe277:                                    ; preds = %m.rd.loop276
  %m.rd.is.tomb289 = icmp eq i8 %m.rd.state286, 2
  br i1 %m.rd.is.tomb289, label %m.rd.next279, label %m.rd.found278

m.rd.found278:                                    ; preds = %m.rd.probe277
  %m.rd.key.slot290 = getelementptr i64, ptr %m.keys269, i64 %m.rd.idx282
  %mk.stored291 = load i64, ptr %m.rd.key.slot290, align 8
  %mk.eq292 = icmp eq i64 %mk.stored291, %addr.ffi.int
  br i1 %mk.eq292, label %m.rd.hit293, label %m.rd.next279

m.rd.next279:                                     ; preds = %m.rd.found278, %m.rd.probe277
  %m.rd.idx.add294 = add i64 %m.rd.idx282, 1
  %m.rd.idx.next295 = and i64 %m.rd.idx.add294, %m.capm1274
  %m.rd.probe.next296 = add i64 %m.rd.probe283, 1
  br label %m.rd.loop276

m.rd.miss280:                                     ; preds = %m.rd.loop276
  %arena.cur300 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc301 = call ptr @dva_arena_alloc(ptr %arena.cur300, i64 56)
  store i64 4013, ptr %err.alloc301, align 8
  %err.msg.gep303 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep303, align 8
  %err.file.gep304 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep304, align 8
  %err.line.gep305 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 3
  store i64 0, ptr %err.line.gep305, align 8
  %err.col.gep306 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 4
  store i64 0, ptr %err.col.gep306, align 8
  %err.ctx.gep307 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc301, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep307, align 8
  %err.ctx1.gep309 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep307, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep309, align 8
  %err.p2i310 = ptrtoint ptr %err.alloc301 to i64
  br label %m.rd.done281

m.rd.done281:                                     ; preds = %m.rd.miss280, %m.rd.hit293
  %m.rd.tag311 = phi i1 [ true, %m.rd.hit293 ], [ false, %m.rd.miss280 ]
  %m.rd.pay312 = phi i64 [ %m.rd.p2i299, %m.rd.hit293 ], [ %err.p2i310, %m.rd.miss280 ]
  %ram.tag313 = insertvalue { i1, i64 } zeroinitializer, i1 %m.rd.tag311, 0
  %ram.pay314 = insertvalue { i1, i64 } %ram.tag313, i64 %m.rd.pay312, 1
  br i1 %m.rd.tag311, label %unwrap.pos.1488, label %unwrap.abort.1488

m.rd.hit293:                                      ; preds = %m.rd.found278
  %m.rd.val.slot297 = getelementptr i64, ptr %m.vals271, i64 %m.rd.idx282
  %m.rd.val298 = load ptr, ptr %m.rd.val.slot297, align 8
  %m.rd.p2i299 = ptrtoint ptr %m.rd.val298 to i64
  br label %m.rd.done281

unwrap.pos.1488:                                  ; preds = %m.rd.done281
  %pay.ptr326 = inttoptr i64 %m.rd.pay312 to ptr
  %fld.load329 = load ptr, ptr %fld.gep262, align 8
  %fld.load334 = load ptr, ptr %pay.ptr326, align 8
  %fld.gep337 = getelementptr inbounds { ptr, ptr, ptr }, ptr %pay.ptr326, i32 0, i32 2
  %fld.load338 = load ptr, ptr %fld.gep337, align 8
  %arena.cur339 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur339, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %fld.load334, ptr %rec.alloc, align 8
  %rec.fld340 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %3, ptr %rec.fld340, align 8
  %rec.fld341 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %fld.load338, ptr %rec.fld341, align 8
  %slot.p2i342 = ptrtoint ptr %rec.alloc to i64
  %m.cap343 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load329, i32 0, i32 1
  %m.cap344 = load i64, ptr %m.cap343, align 8
  %m.keys345 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load329, i32 0, i32 2
  %m.keys346 = load ptr, ptr %m.keys345, align 8
  %m.vals347 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load329, i32 0, i32 3
  %m.vals348 = load ptr, ptr %m.vals347, align 8
  %m.states349 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load329, i32 0, i32 4
  %m.states350 = load ptr, ptr %m.states349, align 8
  %mix.s1351 = lshr i64 %slot.p2i, 30
  %mix.x1352 = xor i64 %slot.p2i, %mix.s1351
  %mix.x2353 = mul i64 %mix.x1352, -4658895280553007687
  %mix.s2354 = lshr i64 %mix.x2353, 27
  %mix.x3355 = xor i64 %mix.x2353, %mix.s2354
  %mix.x4356 = mul i64 %mix.x3355, -7723592293110705685
  %mix.s3357 = lshr i64 %mix.x4356, 31
  %mix.res358 = xor i64 %mix.x4356, %mix.s3357
  %m.capm1359 = sub i64 %m.cap344, 1
  %m.idx0360 = and i64 %mix.res358, %m.capm1359
  br label %m.loop361

unwrap.abort.1488:                                ; preds = %m.rd.done281
  %4 = call i64 @write(i32 2, ptr @expect.reason.1489, i64 33)
  %err.ptr = inttoptr i64 %m.rd.pay312 to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep316 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep316, align 8
  %err.file.gep317 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep317, align 8
  %err.line.gep318 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep318, align 8
  %err.col.gep319 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep319, align 8
  %err.msg.len320 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len321 = and i64 %err.msg.len320, 281474976710655
  %err.msg.len32 = trunc i64 %err.msg.len321 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data322 = load ptr, ptr %err.msg.data, align 8
  %err.file.len323 = load i64, ptr %err.file.struct, align 8
  %err.file.len324 = and i64 %err.file.len323, 281474976710655
  %err.file.len32 = trunc i64 %err.file.len324 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data325 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

err.thread:                                       ; preds = %unwrap.abort.1488
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %unwrap.abort.1488
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data322, i32 %err.file.len32, ptr %err.file.data325, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

m.loop361:                                        ; preds = %m.next366, %unwrap.pos.1488
  %m.idx369 = phi i64 [ %m.idx0360, %unwrap.pos.1488 ], [ %m.idx.next386, %m.next366 ]
  %m.tomb370 = phi i64 [ -1, %unwrap.pos.1488 ], [ %m.next.tomb384, %m.next366 ]
  %m.probe371 = phi i64 [ 0, %unwrap.pos.1488 ], [ %m.probe.next387, %m.next366 ]
  %m.reached.cap372 = icmp eq i64 %m.probe371, %m.cap344
  %m.state.gep373 = getelementptr i8, ptr %m.states350, i64 %m.idx369
  %m.state374 = load i8, ptr %m.state.gep373, align 1
  %m.is.empty375 = icmp eq i8 %m.state374, 0
  %m.stop376 = or i1 %m.is.empty375, %m.reached.cap372
  br i1 %m.stop376, label %m.empty367, label %m.check.tomb362

m.check.tomb362:                                  ; preds = %m.loop361
  %m.is.tomb377 = icmp eq i8 %m.state374, 2
  br i1 %m.is.tomb377, label %m.tomb363, label %m.found364

m.tomb363:                                        ; preds = %m.check.tomb362
  %m.has.tomb378 = icmp ne i64 %m.tomb370, -1
  %m.tomb.sel379 = select i1 %m.has.tomb378, i64 %m.tomb370, i64 %m.idx369
  br label %m.next366

m.found364:                                       ; preds = %m.check.tomb362
  %m.key.slot380 = getelementptr i64, ptr %m.keys346, i64 %m.idx369
  %mk.stored381 = load i64, ptr %m.key.slot380, align 8
  %mk.eq382 = icmp eq i64 %mk.stored381, %slot.p2i
  br i1 %mk.eq382, label %m.overwrite365, label %m.next366

m.overwrite365:                                   ; preds = %m.found364
  %m.val.slot383 = getelementptr i64, ptr %m.vals348, i64 %m.idx369
  store i64 %slot.p2i342, ptr %m.val.slot383, align 8
  br label %common.ret

m.next366:                                        ; preds = %m.found364, %m.tomb363
  %m.next.tomb384 = phi i64 [ %m.tomb.sel379, %m.tomb363 ], [ %m.tomb370, %m.found364 ]
  %m.idx.add385 = add i64 %m.idx369, 1
  %m.idx.next386 = and i64 %m.idx.add385, %m.capm1359
  %m.probe.next387 = add i64 %m.probe371, 1
  br label %m.loop361

m.empty367:                                       ; preds = %m.loop361
  %m.grow.cnt389 = load i64, ptr %fld.load329, align 8
  %m.grow.tm.p390 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load329, i32 0, i32 5
  %m.grow.tm391 = load i64, ptr %m.grow.tm.p390, align 8
  %m.occupied392 = add i64 %m.grow.cnt389, %m.grow.tm391
  %m.c.plus393 = add i64 %m.occupied392, 1
  %m.c.lhs394 = mul i64 %m.c.plus393, 4
  %m.c.rhs395 = mul i64 %m.cap344, 3
  %m.need.grow396 = icmp sgt i64 %m.c.lhs394, %m.c.rhs395
  br i1 %m.need.grow396, label %m.grow397, label %m.ins.slot398

m.grow397:                                        ; preds = %m.empty367
  %m.old.cap400 = load i64, ptr %m.cap343, align 8
  %m.old.keys402 = load ptr, ptr %m.keys345, align 8
  %m.old.vals404 = load ptr, ptr %m.vals347, align 8
  %m.old.states406 = load ptr, ptr %m.states349, align 8
  %m.double.cap407 = mul i64 %m.old.cap400, 2
  %m.live.x2410 = mul i64 %m.grow.cnt389, 2
  %m.should.double411 = icmp sgt i64 %m.live.x2410, %m.old.cap400
  %m.new.cap412 = select i1 %m.should.double411, i64 %m.double.cap407, i64 %m.old.cap400
  %m.gk.bytes413 = mul i64 %m.new.cap412, 8
  %arena.cur414 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk415 = call ptr @dva_arena_alloc(ptr %arena.cur414, i64 %m.gk.bytes413)
  %arena.cur417 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv418 = call ptr @dva_arena_alloc(ptr %arena.cur417, i64 %m.gk.bytes413)
  %arena.cur419 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs420 = call ptr @dva_arena_alloc(ptr %arena.cur419, i64 %m.new.cap412)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs420, i8 0, i64 %m.new.cap412, i1 false)
  store i64 %m.new.cap412, ptr %m.cap343, align 8
  store ptr %m.gk415, ptr %m.keys345, align 8
  store ptr %m.gv418, ptr %m.vals347, align 8
  store ptr %m.gs420, ptr %m.states349, align 8
  store i64 0, ptr %fld.load329, align 8
  store i64 0, ptr %m.grow.tm.p390, align 8
  br label %m.re.loop427

m.ins.slot398:                                    ; preds = %m.empty367
  %m.use.tomb558 = icmp ne i64 %m.tomb370, -1
  %m.ins.idx559 = select i1 %m.use.tomb558, i64 %m.tomb370, i64 %m.idx369
  %m.key.slot560 = getelementptr i64, ptr %m.keys346, i64 %m.ins.idx559
  store i64 %slot.p2i, ptr %m.key.slot560, align 8
  %m.val.slot561 = getelementptr i64, ptr %m.vals348, i64 %m.ins.idx559
  store i64 %slot.p2i342, ptr %m.val.slot561, align 8
  %m.ins.state.slot562 = getelementptr i8, ptr %m.states350, i64 %m.ins.idx559
  store i8 1, ptr %m.ins.state.slot562, align 1
  %m.count564 = load i64, ptr %fld.load329, align 8
  %m.count.next565 = add i64 %m.count564, 1
  store i64 %m.count.next565, ptr %fld.load329, align 8
  %m.ins.tombs568 = load i64, ptr %m.grow.tm.p390, align 8
  %m.tomb.dec569 = select i1 %m.use.tomb558, i64 1, i64 0
  %m.ins.tombs.next570 = sub i64 %m.ins.tombs568, %m.tomb.dec569
  store i64 %m.ins.tombs.next570, ptr %m.grow.tm.p390, align 8
  br label %common.ret

m.re.loop427:                                     ; preds = %m.re.cont429, %m.grow397
  %m.re.i431 = phi i64 [ 0, %m.grow397 ], [ %m.re.i.next499, %m.re.cont429 ]
  %m.re.lt432 = icmp slt i64 %m.re.i431, %m.old.cap400
  br i1 %m.re.lt432, label %m.re.body428, label %m.re.done430

m.re.body428:                                     ; preds = %m.re.loop427
  %m.re.state.gep433 = getelementptr i8, ptr %m.old.states406, i64 %m.re.i431
  %m.re.state434 = load i8, ptr %m.re.state.gep433, align 1
  %m.re.occ435 = icmp eq i8 %m.re.state434, 1
  br i1 %m.re.occ435, label %m.re.ins436, label %m.re.cont429

m.re.cont429:                                     ; preds = %m.overwrite463, %m.empty465, %m.re.body428
  %m.re.i.next499 = add i64 %m.re.i431, 1
  br label %m.re.loop427

m.re.done430:                                     ; preds = %m.re.loop427
  %m.cap501 = load i64, ptr %m.cap343, align 8
  %m.keys503 = load ptr, ptr %m.keys345, align 8
  %m.vals505 = load ptr, ptr %m.vals347, align 8
  %m.states507 = load ptr, ptr %m.states349, align 8
  %m.capm1516 = sub i64 %m.cap501, 1
  %m.idx0517 = and i64 %mix.res358, %m.capm1516
  br label %m.loop518

m.re.ins436:                                      ; preds = %m.re.body428
  %m.re.key.slot437 = getelementptr i64, ptr %m.old.keys402, i64 %m.re.i431
  %m.re.val.slot438 = getelementptr i64, ptr %m.old.vals404, i64 %m.re.i431
  %m.re.key439 = load i64, ptr %m.re.key.slot437, align 8
  %m.re.val440 = load i64, ptr %m.re.val.slot438, align 8
  %m.cap442 = load i64, ptr %m.cap343, align 8
  %m.keys444 = load ptr, ptr %m.keys345, align 8
  %m.vals446 = load ptr, ptr %m.vals347, align 8
  %m.states448 = load ptr, ptr %m.states349, align 8
  %mix.s1449 = lshr i64 %m.re.key439, 30
  %mix.x1450 = xor i64 %m.re.key439, %mix.s1449
  %mix.x2451 = mul i64 %mix.x1450, -4658895280553007687
  %mix.s2452 = lshr i64 %mix.x2451, 27
  %mix.x3453 = xor i64 %mix.x2451, %mix.s2452
  %mix.x4454 = mul i64 %mix.x3453, -7723592293110705685
  %mix.s3455 = lshr i64 %mix.x4454, 31
  %mix.res456 = xor i64 %mix.x4454, %mix.s3455
  %m.capm1457 = sub i64 %m.cap442, 1
  %m.idx0458 = and i64 %mix.res456, %m.capm1457
  br label %m.loop459

m.loop459:                                        ; preds = %m.next464, %m.re.ins436
  %m.idx467 = phi i64 [ %m.idx0458, %m.re.ins436 ], [ %m.idx.next484, %m.next464 ]
  %m.tomb468 = phi i64 [ -1, %m.re.ins436 ], [ %m.next.tomb482, %m.next464 ]
  %m.probe469 = phi i64 [ 0, %m.re.ins436 ], [ %m.probe.next485, %m.next464 ]
  %m.reached.cap470 = icmp eq i64 %m.probe469, %m.cap442
  %m.state.gep471 = getelementptr i8, ptr %m.states448, i64 %m.idx467
  %m.state472 = load i8, ptr %m.state.gep471, align 1
  %m.is.empty473 = icmp eq i8 %m.state472, 0
  %m.stop474 = or i1 %m.is.empty473, %m.reached.cap470
  br i1 %m.stop474, label %m.empty465, label %m.check.tomb460

m.check.tomb460:                                  ; preds = %m.loop459
  %m.is.tomb475 = icmp eq i8 %m.state472, 2
  br i1 %m.is.tomb475, label %m.tomb461, label %m.found462

m.tomb461:                                        ; preds = %m.check.tomb460
  %m.has.tomb476 = icmp ne i64 %m.tomb468, -1
  %m.tomb.sel477 = select i1 %m.has.tomb476, i64 %m.tomb468, i64 %m.idx467
  br label %m.next464

m.found462:                                       ; preds = %m.check.tomb460
  %m.key.slot478 = getelementptr i64, ptr %m.keys444, i64 %m.idx467
  %mk.stored479 = load i64, ptr %m.key.slot478, align 8
  %mk.eq480 = icmp eq i64 %mk.stored479, %m.re.key439
  br i1 %mk.eq480, label %m.overwrite463, label %m.next464

m.overwrite463:                                   ; preds = %m.found462
  %m.val.slot481 = getelementptr i64, ptr %m.vals446, i64 %m.idx467
  store i64 %m.re.val440, ptr %m.val.slot481, align 8
  br label %m.re.cont429

m.next464:                                        ; preds = %m.found462, %m.tomb461
  %m.next.tomb482 = phi i64 [ %m.tomb.sel477, %m.tomb461 ], [ %m.tomb468, %m.found462 ]
  %m.idx.add483 = add i64 %m.idx467, 1
  %m.idx.next484 = and i64 %m.idx.add483, %m.capm1457
  %m.probe.next485 = add i64 %m.probe469, 1
  br label %m.loop459

m.empty465:                                       ; preds = %m.loop459
  %m.use.tomb486 = icmp ne i64 %m.tomb468, -1
  %m.ins.idx487 = select i1 %m.use.tomb486, i64 %m.tomb468, i64 %m.idx467
  %m.key.slot488 = getelementptr i64, ptr %m.keys444, i64 %m.ins.idx487
  store i64 %m.re.key439, ptr %m.key.slot488, align 8
  %m.val.slot489 = getelementptr i64, ptr %m.vals446, i64 %m.ins.idx487
  store i64 %m.re.val440, ptr %m.val.slot489, align 8
  %m.ins.state.slot490 = getelementptr i8, ptr %m.states448, i64 %m.ins.idx487
  store i8 1, ptr %m.ins.state.slot490, align 1
  %m.count492 = load i64, ptr %fld.load329, align 8
  %m.count.next493 = add i64 %m.count492, 1
  store i64 %m.count.next493, ptr %fld.load329, align 8
  %m.ins.tombs496 = load i64, ptr %m.grow.tm.p390, align 8
  %m.tomb.dec497 = select i1 %m.use.tomb486, i64 1, i64 0
  %m.ins.tombs.next498 = sub i64 %m.ins.tombs496, %m.tomb.dec497
  store i64 %m.ins.tombs.next498, ptr %m.grow.tm.p390, align 8
  br label %m.re.cont429

m.loop518:                                        ; preds = %m.next523, %m.re.done430
  %m.idx526 = phi i64 [ %m.idx0517, %m.re.done430 ], [ %m.idx.next543, %m.next523 ]
  %m.tomb527 = phi i64 [ -1, %m.re.done430 ], [ %m.next.tomb541, %m.next523 ]
  %m.probe528 = phi i64 [ 0, %m.re.done430 ], [ %m.probe.next544, %m.next523 ]
  %m.reached.cap529 = icmp eq i64 %m.probe528, %m.cap501
  %m.state.gep530 = getelementptr i8, ptr %m.states507, i64 %m.idx526
  %m.state531 = load i8, ptr %m.state.gep530, align 1
  %m.is.empty532 = icmp eq i8 %m.state531, 0
  %m.stop533 = or i1 %m.is.empty532, %m.reached.cap529
  br i1 %m.stop533, label %m.empty524, label %m.check.tomb519

m.check.tomb519:                                  ; preds = %m.loop518
  %m.is.tomb534 = icmp eq i8 %m.state531, 2
  br i1 %m.is.tomb534, label %m.tomb520, label %m.found521

m.tomb520:                                        ; preds = %m.check.tomb519
  %m.has.tomb535 = icmp ne i64 %m.tomb527, -1
  %m.tomb.sel536 = select i1 %m.has.tomb535, i64 %m.tomb527, i64 %m.idx526
  br label %m.next523

m.found521:                                       ; preds = %m.check.tomb519
  %m.key.slot537 = getelementptr i64, ptr %m.keys503, i64 %m.idx526
  %mk.stored538 = load i64, ptr %m.key.slot537, align 8
  %mk.eq539 = icmp eq i64 %mk.stored538, %slot.p2i
  br i1 %mk.eq539, label %m.overwrite522, label %m.next523

m.overwrite522:                                   ; preds = %m.found521
  %m.val.slot540 = getelementptr i64, ptr %m.vals505, i64 %m.idx526
  store i64 %slot.p2i342, ptr %m.val.slot540, align 8
  br label %common.ret

m.next523:                                        ; preds = %m.found521, %m.tomb520
  %m.next.tomb541 = phi i64 [ %m.tomb.sel536, %m.tomb520 ], [ %m.tomb527, %m.found521 ]
  %m.idx.add542 = add i64 %m.idx526, 1
  %m.idx.next543 = and i64 %m.idx.add542, %m.capm1516
  %m.probe.next544 = add i64 %m.probe528, 1
  br label %m.loop518

m.empty524:                                       ; preds = %m.loop518
  %m.use.tomb545 = icmp ne i64 %m.tomb527, -1
  %m.ins.idx546 = select i1 %m.use.tomb545, i64 %m.tomb527, i64 %m.idx526
  %m.key.slot547 = getelementptr i64, ptr %m.keys503, i64 %m.ins.idx546
  store i64 %slot.p2i, ptr %m.key.slot547, align 8
  %m.val.slot548 = getelementptr i64, ptr %m.vals505, i64 %m.ins.idx546
  store i64 %slot.p2i342, ptr %m.val.slot548, align 8
  %m.ins.state.slot549 = getelementptr i8, ptr %m.states507, i64 %m.ins.idx546
  store i8 1, ptr %m.ins.state.slot549, align 1
  %m.count551 = load i64, ptr %fld.load329, align 8
  %m.count.next552 = add i64 %m.count551, 1
  store i64 %m.count.next552, ptr %fld.load329, align 8
  %m.ins.tombs555 = load i64, ptr %m.grow.tm.p390, align 8
  %m.tomb.dec556 = select i1 %m.use.tomb545, i64 1, i64 0
  %m.ins.tombs.next557 = sub i64 %m.ins.tombs555, %m.tomb.dec556
  store i64 %m.ins.tombs.next557, ptr %m.grow.tm.p390, align 8
  br label %common.ret
}

define internal i64 @dva_fmt_i64_buf(ptr %0, i64 %1, i1 %2) #3 {
entry:
  %fmt.tmp = alloca [24 x i8], align 1
  %fmt.is.zero = icmp eq i64 %1, 0
  br i1 %fmt.is.zero, label %zero, label %nonzero

common.ret:                                       ; preds = %done, %zero
  %common.ret.op = phi i64 [ 1, %zero ], [ %fmt.tot, %done ]
  ret i64 %common.ret.op

zero:                                             ; preds = %entry
  store i8 48, ptr %0, align 1
  %fmt.z.nul = getelementptr i8, ptr %0, i64 1
  store i8 0, ptr %fmt.z.nul, align 1
  br label %common.ret

nonzero:                                          ; preds = %entry
  %fmt.slt = icmp slt i64 %1, 0
  %fmt.not.u = xor i1 %2, true
  %fmt.is.neg = and i1 %fmt.not.u, %fmt.slt
  %fmt.neg = sub i64 0, %1
  %fmt.abs = select i1 %fmt.is.neg, i64 %fmt.neg, i64 %1
  br label %divloop

divloop:                                          ; preds = %divloop, %nonzero
  %fmt.n = phi i64 [ %fmt.abs, %nonzero ], [ %fmt.quot, %divloop ]
  %fmt.k = phi i64 [ 0, %nonzero ], [ %fmt.k.next, %divloop ]
  %fmt.rem = urem i64 %fmt.n, 10
  %fmt.quot = udiv i64 %fmt.n, 10
  %fmt.r8 = trunc i64 %fmt.rem to i8
  %fmt.dig = add i8 %fmt.r8, 48
  %fmt.tslot = getelementptr i8, ptr %fmt.tmp, i64 %fmt.k
  store i8 %fmt.dig, ptr %fmt.tslot, align 1
  %fmt.k.next = add i64 %fmt.k, 1
  %fmt.more = icmp ne i64 %fmt.quot, 0
  br i1 %fmt.more, label %divloop, label %sign

sign:                                             ; preds = %divloop
  br i1 %fmt.is.neg, label %negstore, label %copypre

negstore:                                         ; preds = %sign
  store i8 45, ptr %0, align 1
  br label %copypre

copypre:                                          ; preds = %negstore, %sign
  %fmt.off = phi i64 [ 0, %sign ], [ 1, %negstore ]
  br label %copyloop

copyloop:                                         ; preds = %copyloop, %copypre
  %fmt.i = phi i64 [ 0, %copypre ], [ %fmt.i.next, %copyloop ]
  %fmt.sidx = sub i64 %fmt.k, %fmt.i
  %fmt.sptr = getelementptr i8, ptr %fmt.tmp, i64 %fmt.sidx
  %fmt.ch = load i8, ptr %fmt.sptr, align 1
  %fmt.didx = add i64 %fmt.off, %fmt.i
  %fmt.dptr = getelementptr i8, ptr %0, i64 %fmt.didx
  store i8 %fmt.ch, ptr %fmt.dptr, align 1
  %fmt.i.next = add i64 %fmt.i, 1
  %fmt.cmore = icmp ne i64 %fmt.i.next, %fmt.k.next
  br i1 %fmt.cmore, label %copyloop, label %done

done:                                             ; preds = %copyloop
  %fmt.tot = add i64 %fmt.off, %fmt.k.next
  %fmt.nul = getelementptr i8, ptr %0, i64 %fmt.tot
  store i8 0, ptr %fmt.nul, align 1
  br label %common.ret
}

declare void @pthread_exit(ptr)

declare i32 @printf(ptr, ...)

define internal void @"debug::#module_flag"(ptr %0, ptr %1, i64 %2) #3 {
entry:
  %addr.ffi.int = ptrtoint ptr %0 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %1, i32 0, i32 1
  %arg.str.ptr2 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr4 = load i64, ptr %1, align 8
  %arg.str.ptr5 = and i64 %arg.str.ptr4, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr2, i64 %arg.str.ptr5
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

nulcopy:                                          ; preds = %entry
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr5, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len7

nulmerge:                                         ; preds = %entry, %nulcopy.len7
  %arg.str.ptr8 = phi ptr [ %nulcopy.buf, %nulcopy.len7 ], [ %arg.str.ptr2, %entry ]
  %str.len.query10 = load i64, ptr %1, align 8
  %str.len.query11 = and i64 %str.len.query10, 281474976710655
  %call.res = call ptr @LLVMInt32Type()
  %addr.ffi.int12 = ptrtoint ptr %call.res to i64
  %addr.ffi.masked13 = and i64 %addr.ffi.int12, 281474976710655
  %addr.ffi.clean14 = inttoptr i64 %addr.ffi.masked13 to ptr
  %call.res16 = call ptr @LLVMConstInt(ptr %addr.ffi.clean14, i64 %2, i64 0)
  %addr.ffi.int17 = ptrtoint ptr %call.res16 to i64
  %addr.ffi.masked18 = and i64 %addr.ffi.int17, 281474976710655
  %addr.ffi.clean19 = inttoptr i64 %addr.ffi.masked18 to ptr
  %call.res20 = call ptr @LLVMValueAsMetadata(ptr %addr.ffi.clean19)
  %addr.ffi.int21 = ptrtoint ptr %call.res20 to i64
  %addr.ffi.masked22 = and i64 %addr.ffi.int21, 281474976710655
  %addr.ffi.clean23 = inttoptr i64 %addr.ffi.masked22 to ptr
  call void @LLVMAddModuleFlag(ptr %addr.ffi.clean, i32 1, ptr %arg.str.ptr8, i64 %str.len.query11, ptr %addr.ffi.clean23)
  ret void

nulcopy.len7:                                     ; preds = %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr2, i64 %arg.str.ptr5, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr5
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable
}

define internal ptr @"debug::#stack_head"(ptr %0) #3 {
entry:
  %call.res = call ptr @LLVMInt8Type()
  %addr.ffi.int = ptrtoint ptr %call.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res1 = call ptr @LLVMPointerType(ptr %addr.ffi.clean, i64 0)
  %fld.load = load ptr, ptr %0, align 8
  %addr.ffi.int2 = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked3 = and i64 %addr.ffi.int2, 281474976710655
  %addr.ffi.clean4 = inttoptr i64 %addr.ffi.masked3 to ptr
  %call.res13 = call ptr @LLVMGetNamedGlobal(ptr %addr.ffi.clean4, ptr @str.4)
  %niche.ne.null = icmp ne ptr %call.res13, null
  br i1 %niche.ne.null, label %choice.exit, label %choice.else

choice.else:                                      ; preds = %entry
  %fld.load17 = load ptr, ptr %0, align 8
  %addr.ffi.int18 = ptrtoint ptr %fld.load17 to i64
  %addr.ffi.masked19 = and i64 %addr.ffi.int18, 281474976710655
  %addr.ffi.clean20 = inttoptr i64 %addr.ffi.masked19 to ptr
  %addr.ffi.int22 = ptrtoint ptr %call.res1 to i64
  %addr.ffi.masked23 = and i64 %addr.ffi.int22, 281474976710655
  %addr.ffi.clean24 = inttoptr i64 %addr.ffi.masked23 to ptr
  %call.res47 = call ptr @LLVMAddGlobal(ptr %addr.ffi.clean20, ptr %addr.ffi.clean24, ptr @str.4)
  %addr.ffi.int49 = ptrtoint ptr %call.res47 to i64
  %addr.ffi.masked50 = and i64 %addr.ffi.int49, 281474976710655
  %addr.ffi.clean51 = inttoptr i64 %addr.ffi.masked50 to ptr
  %call.res56 = call ptr @LLVMConstNull(ptr %addr.ffi.clean24)
  %addr.ffi.int57 = ptrtoint ptr %call.res56 to i64
  %addr.ffi.masked58 = and i64 %addr.ffi.int57, 281474976710655
  %addr.ffi.clean59 = inttoptr i64 %addr.ffi.masked58 to ptr
  call void @LLVMSetInitializer(ptr %addr.ffi.clean51, ptr %addr.ffi.clean59)
  call void @LLVMSetThreadLocal(ptr %addr.ffi.clean51, i64 1)
  call void @LLVMSetLinkage(ptr %addr.ffi.clean51, i64 3)
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.else
  %choice.res = phi ptr [ %call.res47, %choice.else ], [ %call.res13, %entry ]
  ret ptr %choice.res
}

define internal ptr @"debug::#frame_type"() #3 {
entry:
  %call.res = call ptr @LLVMInt8Type()
  %addr.ffi.int = ptrtoint ptr %call.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res1 = call ptr @LLVMPointerType(ptr %addr.ffi.clean, i64 0)
  %call.res3 = call ptr @LLVMInt64Type()
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %call.res1, ptr %rec.alloc, align 8
  %rec.fld4 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res1, ptr %rec.fld4, align 8
  %rec.fld5 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res3, ptr %rec.fld5, align 8
  %addr.ffi.int7 = ptrtoint ptr %rec.alloc to i64
  %addr.ffi.masked8 = and i64 %addr.ffi.int7, 281474976710655
  %addr.ffi.clean9 = inttoptr i64 %addr.ffi.masked8 to ptr
  %call.res10 = call ptr @LLVMStructType(ptr %addr.ffi.clean9, i64 3, i64 0)
  ret ptr %call.res10
}

define internal void @"debug::#define_trace"(ptr %0, ptr %1, ptr %2) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res = call ptr @LLVMInt8Type()
  %addr.ffi.int = ptrtoint ptr %call.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res1 = call ptr @LLVMPointerType(ptr %addr.ffi.clean, i64 0)
  %call.res2 = call ptr @"debug::#frame_type"()
  %addr.ffi.int4 = ptrtoint ptr %2 to i64
  %addr.ffi.masked5 = and i64 %addr.ffi.int4, 281474976710655
  %addr.ffi.clean6 = inttoptr i64 %addr.ffi.masked5 to ptr
  %call.res12 = call ptr @LLVMAppendBasicBlock(ptr %addr.ffi.clean6, ptr @str.5)
  %call.res36 = call ptr @LLVMAppendBasicBlock(ptr %addr.ffi.clean6, ptr @str.6)
  %call.res60 = call ptr @LLVMAppendBasicBlock(ptr %addr.ffi.clean6, ptr @str.7)
  %call.res84 = call ptr @LLVMAppendBasicBlock(ptr %addr.ffi.clean6, ptr @str.8)
  %addr.ffi.int86 = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked87 = and i64 %addr.ffi.int86, 281474976710655
  %addr.ffi.clean88 = inttoptr i64 %addr.ffi.masked87 to ptr
  %addr.ffi.int90 = ptrtoint ptr %call.res12 to i64
  %addr.ffi.masked91 = and i64 %addr.ffi.int90, 281474976710655
  %addr.ffi.clean92 = inttoptr i64 %addr.ffi.masked91 to ptr
  call void @LLVMPositionBuilderAtEnd(ptr %addr.ffi.clean88, ptr %addr.ffi.clean92)
  call void @LLVMSetCurrentDebugLocation2(ptr %addr.ffi.clean88, ptr null)
  %addr.ffi.int102 = ptrtoint ptr %call.res1 to i64
  %addr.ffi.masked103 = and i64 %addr.ffi.int102, 281474976710655
  %addr.ffi.clean104 = inttoptr i64 %addr.ffi.masked103 to ptr
  %addr.ffi.int106 = ptrtoint ptr %1 to i64
  %addr.ffi.masked107 = and i64 %addr.ffi.int106, 281474976710655
  %addr.ffi.clean108 = inttoptr i64 %addr.ffi.masked107 to ptr
  %call.res128 = call ptr @LLVMBuildLoad2(ptr %addr.ffi.clean88, ptr %addr.ffi.clean104, ptr %addr.ffi.clean108, ptr @str.9)
  %addr.ffi.int134 = ptrtoint ptr %call.res36 to i64
  %addr.ffi.masked135 = and i64 %addr.ffi.int134, 281474976710655
  %addr.ffi.clean136 = inttoptr i64 %addr.ffi.masked135 to ptr
  %call.res137 = call ptr @LLVMBuildBr(ptr %addr.ffi.clean88, ptr %addr.ffi.clean136)
  call void @LLVMPositionBuilderAtEnd(ptr %addr.ffi.clean88, ptr %addr.ffi.clean136)
  %call.res173 = call ptr @LLVMBuildPhi(ptr %addr.ffi.clean88, ptr %addr.ffi.clean104, ptr @str.10)
  %addr.ffi.int179 = ptrtoint ptr %call.res173 to i64
  %addr.ffi.masked180 = and i64 %addr.ffi.int179, 281474976710655
  %addr.ffi.clean181 = inttoptr i64 %addr.ffi.masked180 to ptr
  %call.res186 = call ptr @LLVMConstNull(ptr %addr.ffi.clean104)
  %addr.ffi.int187 = ptrtoint ptr %call.res186 to i64
  %addr.ffi.masked188 = and i64 %addr.ffi.int187, 281474976710655
  %addr.ffi.clean189 = inttoptr i64 %addr.ffi.masked188 to ptr
  %call.res209 = call ptr @LLVMBuildICmp(ptr %addr.ffi.clean88, i64 32, ptr %addr.ffi.clean181, ptr %addr.ffi.clean189, ptr @str.11)
  %addr.ffi.int215 = ptrtoint ptr %call.res209 to i64
  %addr.ffi.masked216 = and i64 %addr.ffi.int215, 281474976710655
  %addr.ffi.clean217 = inttoptr i64 %addr.ffi.masked216 to ptr
  %addr.ffi.int219 = ptrtoint ptr %call.res84 to i64
  %addr.ffi.masked220 = and i64 %addr.ffi.int219, 281474976710655
  %addr.ffi.clean221 = inttoptr i64 %addr.ffi.masked220 to ptr
  %addr.ffi.int223 = ptrtoint ptr %call.res60 to i64
  %addr.ffi.masked224 = and i64 %addr.ffi.int223, 281474976710655
  %addr.ffi.clean225 = inttoptr i64 %addr.ffi.masked224 to ptr
  %call.res226 = call ptr @LLVMBuildCondBr(ptr %addr.ffi.clean88, ptr %addr.ffi.clean217, ptr %addr.ffi.clean221, ptr %addr.ffi.clean225)
  call void @LLVMPositionBuilderAtEnd(ptr %addr.ffi.clean88, ptr %addr.ffi.clean225)
  %addr.ffi.int248 = ptrtoint ptr %call.res2 to i64
  %addr.ffi.masked249 = and i64 %addr.ffi.int248, 281474976710655
  %addr.ffi.clean250 = inttoptr i64 %addr.ffi.masked249 to ptr
  %call.res274 = call ptr @LLVMBuildStructGEP2(ptr %addr.ffi.clean88, ptr %addr.ffi.clean250, ptr %addr.ffi.clean181, i64 0, ptr @str.12)
  %addr.ffi.int275 = ptrtoint ptr %call.res274 to i64
  %addr.ffi.masked276 = and i64 %addr.ffi.int275, 281474976710655
  %addr.ffi.clean277 = inttoptr i64 %addr.ffi.masked276 to ptr
  %call.res297 = call ptr @LLVMBuildLoad2(ptr %addr.ffi.clean88, ptr %addr.ffi.clean104, ptr %addr.ffi.clean277, ptr @str.13)
  %call.res337 = call ptr @LLVMBuildStructGEP2(ptr %addr.ffi.clean88, ptr %addr.ffi.clean250, ptr %addr.ffi.clean181, i64 1, ptr @str.12)
  %addr.ffi.int338 = ptrtoint ptr %call.res337 to i64
  %addr.ffi.masked339 = and i64 %addr.ffi.int338, 281474976710655
  %addr.ffi.clean340 = inttoptr i64 %addr.ffi.masked339 to ptr
  %call.res360 = call ptr @LLVMBuildLoad2(ptr %addr.ffi.clean88, ptr %addr.ffi.clean104, ptr %addr.ffi.clean340, ptr @str.14)
  %call.res365 = call ptr @LLVMInt64Type()
  %addr.ffi.int366 = ptrtoint ptr %call.res365 to i64
  %addr.ffi.masked367 = and i64 %addr.ffi.int366, 281474976710655
  %addr.ffi.clean368 = inttoptr i64 %addr.ffi.masked367 to ptr
  %call.res400 = call ptr @LLVMBuildStructGEP2(ptr %addr.ffi.clean88, ptr %addr.ffi.clean250, ptr %addr.ffi.clean181, i64 2, ptr @str.12)
  %addr.ffi.int401 = ptrtoint ptr %call.res400 to i64
  %addr.ffi.masked402 = and i64 %addr.ffi.int401, 281474976710655
  %addr.ffi.clean403 = inttoptr i64 %addr.ffi.masked402 to ptr
  %call.res423 = call ptr @LLVMBuildLoad2(ptr %addr.ffi.clean88, ptr %addr.ffi.clean368, ptr %addr.ffi.clean403, ptr @str.15)
  %call.res425 = call { ptr, ptr } @"types::ensure_write_fn"(ptr %0)
  %arena.cur426 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur426, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  store { ptr, ptr } %call.res425, ptr %ret.ub.alloc, align 8
  %call.res427 = call ptr @LLVMInt32Type()
  %addr.ffi.int428 = ptrtoint ptr %call.res427 to i64
  %addr.ffi.masked429 = and i64 %addr.ffi.int428, 281474976710655
  %addr.ffi.clean430 = inttoptr i64 %addr.ffi.masked429 to ptr
  %call.res431 = call ptr @LLVMConstInt(ptr %addr.ffi.clean430, i64 2, i64 0)
  %arena.cur434 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur434, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %call.res431, ptr %rec.alloc, align 8
  %rec.fld435 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %call.res360, ptr %rec.fld435, align 8
  %rec.fld436 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %call.res423, ptr %rec.fld436, align 8
  %fld.load443 = load ptr, ptr %ret.ub.alloc, align 8
  %addr.ffi.int444 = ptrtoint ptr %fld.load443 to i64
  %addr.ffi.masked445 = and i64 %addr.ffi.int444, 281474976710655
  %addr.ffi.clean446 = inttoptr i64 %addr.ffi.masked445 to ptr
  %fld.gep448 = getelementptr inbounds { ptr, ptr }, ptr %ret.ub.alloc, i32 0, i32 1
  %fld.load449 = load ptr, ptr %fld.gep448, align 8
  %addr.ffi.int450 = ptrtoint ptr %fld.load449 to i64
  %addr.ffi.masked451 = and i64 %addr.ffi.int450, 281474976710655
  %addr.ffi.clean452 = inttoptr i64 %addr.ffi.masked451 to ptr
  %addr.tag.int = ptrtoint ptr %rec.alloc to i64
  %addr.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift = shl i64 %addr.tag.gen, 48
  %addr.tagged = or i64 %addr.tag.int, %addr.tag.shift
  %addr.tagged.ptr = inttoptr i64 %addr.tagged to ptr
  %addr.ffi.masked455 = and i64 %addr.tagged, 281474976710655
  %addr.ffi.clean456 = inttoptr i64 %addr.ffi.masked455 to ptr
  %call.res476 = call ptr @LLVMBuildCall2(ptr %addr.ffi.clean88, ptr %addr.ffi.clean446, ptr %addr.ffi.clean452, ptr %addr.ffi.clean456, i64 3, ptr @str.12)
  %call.res485 = call ptr @LLVMBuildBr(ptr %addr.ffi.clean88, ptr %addr.ffi.clean136)
  %arena.cur488 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc489 = call ptr @dva_arena_alloc(ptr %arena.cur488, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %call.res128, ptr %rec.alloc489, align 8
  %rec.fld491 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc489, i32 0, i32 1
  store ptr %call.res297, ptr %rec.fld491, align 8
  %arena.cur494 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc495 = call ptr @dva_arena_alloc(ptr %arena.cur494, i64 ptrtoint (ptr getelementptr ({ ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %call.res12, ptr %rec.alloc495, align 8
  %rec.fld497 = getelementptr inbounds { ptr, ptr }, ptr %rec.alloc495, i32 0, i32 1
  store ptr %call.res60, ptr %rec.fld497, align 8
  %addr.tag.int503 = ptrtoint ptr %rec.alloc489 to i64
  %addr.tag.gen504 = load i64, ptr @dva_active_gen_tls, align 8
  %addr.tag.shift505 = shl i64 %addr.tag.gen504, 48
  %addr.tagged506 = or i64 %addr.tag.int503, %addr.tag.shift505
  %addr.tagged.ptr507 = inttoptr i64 %addr.tagged506 to ptr
  %addr.ffi.masked509 = and i64 %addr.tagged506, 281474976710655
  %addr.ffi.clean510 = inttoptr i64 %addr.ffi.masked509 to ptr
  %addr.tag.int512 = ptrtoint ptr %rec.alloc495 to i64
  %addr.tagged515 = or i64 %addr.tag.int512, %addr.tag.shift505
  %addr.tagged.ptr516 = inttoptr i64 %addr.tagged515 to ptr
  %addr.ffi.masked518 = and i64 %addr.tagged515, 281474976710655
  %addr.ffi.clean519 = inttoptr i64 %addr.ffi.masked518 to ptr
  call void @LLVMAddIncoming(ptr %addr.ffi.clean181, ptr %addr.ffi.clean510, ptr %addr.ffi.clean519, i64 2)
  call void @LLVMPositionBuilderAtEnd(ptr %addr.ffi.clean88, ptr %addr.ffi.clean221)
  %call.res532 = call ptr @LLVMBuildRetVoid(ptr %addr.ffi.clean88)
  ret void
}

declare { ptr, ptr } @"types::ensure_write_fn"(ptr) #3

define internal i1 @"debug::#traceable_call"(ptr %0, ptr %1) #3 {
entry:
  %addr.ffi.int = ptrtoint ptr %0 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @LLVMIsACallInst(ptr %addr.ffi.clean)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %addr.ffi.int2 = ptrtoint ptr %call.res to i64
  %addr.ffi.masked3 = and i64 %addr.ffi.int2, 281474976710655
  %addr.ffi.clean4 = inttoptr i64 %addr.ffi.masked3 to ptr
  %call.res5 = call ptr @LLVMGetCalledValue(ptr %addr.ffi.clean4)
  %niche.ne.null7 = icmp ne ptr %1, null
  %ptr.int.l = ptrtoint ptr %1 to i64
  %ptr.int.r = ptrtoint ptr %call.res5 to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  %choice.res = select i1 %niche.ne.null7, i1 %cmptmp, i1 false
  %nottmp = xor i1 %choice.res, true
  br i1 %nottmp, label %and.1492.then, label %choice.exit

choice.exit:                                      ; preds = %choice.then21, %and.1492.then, %choice.then, %entry
  %choice.res33 = phi i1 [ false, %entry ], [ false, %choice.then ], [ %cmptmp31, %choice.then21 ], [ true, %and.1492.then ]
  ret i1 %choice.res33

and.1492.then:                                    ; preds = %choice.then
  %addr.ffi.int16 = ptrtoint ptr %call.res5 to i64
  %addr.ffi.masked17 = and i64 %addr.ffi.int16, 281474976710655
  %addr.ffi.clean18 = inttoptr i64 %addr.ffi.masked17 to ptr
  %call.res19 = call ptr @LLVMIsAFunction(ptr %addr.ffi.clean18)
  %niche.ne.null20 = icmp ne ptr %call.res19, null
  br i1 %niche.ne.null20, label %choice.then21, label %choice.exit

choice.then21:                                    ; preds = %and.1492.then
  %addr.ffi.int27 = ptrtoint ptr %call.res19 to i64
  %addr.ffi.masked28 = and i64 %addr.ffi.int27, 281474976710655
  %addr.ffi.clean29 = inttoptr i64 %addr.ffi.masked28 to ptr
  %call.res30 = call i32 @LLVMGetIntrinsicID(ptr %addr.ffi.clean29)
  %coerce.sext = sext i32 %call.res30 to i64
  %cmptmp31 = icmp eq i64 %coerce.sext, 0
  br label %choice.exit
}

define internal void @"debug::#save_callsite"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) #3 {
entry:
  %cat.ibuf = alloca [24 x i8], align 1
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %call.res = call ptr @LLVMInt8Type()
  %addr.ffi.int = ptrtoint ptr %call.res to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res1 = call ptr @LLVMPointerType(ptr %addr.ffi.clean, i64 0)
  %call.res2 = call ptr @"debug::#frame_type"()
  %var.load3 = load ptr, ptr @"var.types::g", align 8
  %fld.load5 = load i64, ptr %var.load3, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %fld.load5, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 18, i64 %cat.ilen)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len6

cat.sum.len6:                                     ; preds = %entry
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 1)
  %sum7 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf8 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf8, label %str_overflow_abort10, label %concat.tot.len9

str_overflow_abort:                               ; preds = %entry
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len9:                                  ; preds = %cat.sum.len6
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum7)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.16, i64 18, i1 false)
  %cat.dst12 = getelementptr i8, ptr %concat.buf, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst12, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
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
  %var.load14 = load ptr, ptr @"var.types::g", align 8
  %fld.load17 = load i64, ptr %var.load14, align 8
  %addtmp = add i64 %fld.load17, 1
  store i64 %addtmp, ptr %var.load14, align 8
  %call.res22 = call ptr @"runtime::const_string_global"(ptr %0, ptr %5, ptr %concat.str)
  %addr.ffi.int24 = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked25 = and i64 %addr.ffi.int24, 281474976710655
  %addr.ffi.clean26 = inttoptr i64 %addr.ffi.masked25 to ptr
  %addr.ffi.int28 = ptrtoint ptr %3 to i64
  %addr.ffi.masked29 = and i64 %addr.ffi.int28, 281474976710655
  %addr.ffi.clean30 = inttoptr i64 %addr.ffi.masked29 to ptr
  call void @LLVMPositionBuilderBefore(ptr %addr.ffi.clean26, ptr %addr.ffi.clean30)
  call void @LLVMSetCurrentDebugLocation2(ptr %addr.ffi.clean26, ptr null)
  %addr.ffi.int40 = ptrtoint ptr %call.res1 to i64
  %addr.ffi.masked41 = and i64 %addr.ffi.int40, 281474976710655
  %addr.ffi.clean42 = inttoptr i64 %addr.ffi.masked41 to ptr
  %addr.ffi.int44 = ptrtoint ptr %1 to i64
  %addr.ffi.masked45 = and i64 %addr.ffi.int44, 281474976710655
  %addr.ffi.clean46 = inttoptr i64 %addr.ffi.masked45 to ptr
  %call.res57 = call ptr @LLVMBuildLoad2(ptr %addr.ffi.clean26, ptr %addr.ffi.clean42, ptr %addr.ffi.clean46, ptr @str.17)
  %addr.ffi.int63 = ptrtoint ptr %call.res57 to i64
  %addr.ffi.masked64 = and i64 %addr.ffi.int63, 281474976710655
  %addr.ffi.clean65 = inttoptr i64 %addr.ffi.masked64 to ptr
  %addr.ffi.int71 = ptrtoint ptr %call.res2 to i64
  %addr.ffi.masked72 = and i64 %addr.ffi.int71, 281474976710655
  %addr.ffi.clean73 = inttoptr i64 %addr.ffi.masked72 to ptr
  %addr.ffi.int75 = ptrtoint ptr %2 to i64
  %addr.ffi.masked76 = and i64 %addr.ffi.int75, 281474976710655
  %addr.ffi.clean77 = inttoptr i64 %addr.ffi.masked76 to ptr
  %call.res97 = call ptr @LLVMBuildStructGEP2(ptr %addr.ffi.clean26, ptr %addr.ffi.clean73, ptr %addr.ffi.clean77, i64 0, ptr @str.12)
  %addr.ffi.int98 = ptrtoint ptr %call.res97 to i64
  %addr.ffi.masked99 = and i64 %addr.ffi.int98, 281474976710655
  %addr.ffi.clean100 = inttoptr i64 %addr.ffi.masked99 to ptr
  %call.res101 = call ptr @LLVMBuildStore(ptr %addr.ffi.clean26, ptr %addr.ffi.clean65, ptr %addr.ffi.clean100)
  %addr.ffi.int107 = ptrtoint ptr %call.res22 to i64
  %addr.ffi.masked108 = and i64 %addr.ffi.int107, 281474976710655
  %addr.ffi.clean109 = inttoptr i64 %addr.ffi.masked108 to ptr
  %call.res141 = call ptr @LLVMBuildStructGEP2(ptr %addr.ffi.clean26, ptr %addr.ffi.clean73, ptr %addr.ffi.clean77, i64 1, ptr @str.12)
  %addr.ffi.int142 = ptrtoint ptr %call.res141 to i64
  %addr.ffi.masked143 = and i64 %addr.ffi.int142, 281474976710655
  %addr.ffi.clean144 = inttoptr i64 %addr.ffi.masked143 to ptr
  %call.res145 = call ptr @LLVMBuildStore(ptr %addr.ffi.clean26, ptr %addr.ffi.clean109, ptr %addr.ffi.clean144)
  %call.res150 = call ptr @LLVMInt64Type()
  %addr.ffi.int151 = ptrtoint ptr %call.res150 to i64
  %addr.ffi.masked152 = and i64 %addr.ffi.int151, 281474976710655
  %addr.ffi.clean153 = inttoptr i64 %addr.ffi.masked152 to ptr
  %str.len.query155 = load i64, ptr %5, align 8
  %str.len.query156 = and i64 %str.len.query155, 281474976710655
  %str.tag = lshr i64 %str.len.query155, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_overflow_abort10:                             ; preds = %cat.sum.len6
  call void @dva_abort_str_overflow_msg()
  unreachable

str_ok:                                           ; preds = %tag.slow_check, %concat.tot.len9
  %call.res157 = call ptr @LLVMConstInt(ptr %addr.ffi.clean153, i64 %str.len.query156, i64 0)
  %addr.ffi.int158 = ptrtoint ptr %call.res157 to i64
  %addr.ffi.masked159 = and i64 %addr.ffi.int158, 281474976710655
  %addr.ffi.clean160 = inttoptr i64 %addr.ffi.masked159 to ptr
  %call.res192 = call ptr @LLVMBuildStructGEP2(ptr %addr.ffi.clean26, ptr %addr.ffi.clean73, ptr %addr.ffi.clean77, i64 2, ptr @str.12)
  %addr.ffi.int193 = ptrtoint ptr %call.res192 to i64
  %addr.ffi.masked194 = and i64 %addr.ffi.int193, 281474976710655
  %addr.ffi.clean195 = inttoptr i64 %addr.ffi.masked194 to ptr
  %call.res196 = call ptr @LLVMBuildStore(ptr %addr.ffi.clean26, ptr %addr.ffi.clean160, ptr %addr.ffi.clean195)
  %call.res209 = call ptr @LLVMBuildStore(ptr %addr.ffi.clean26, ptr %addr.ffi.clean77, ptr %addr.ffi.clean46)
  %addr.ffi.int215 = ptrtoint ptr %4 to i64
  %addr.ffi.masked216 = and i64 %addr.ffi.int215, 281474976710655
  %addr.ffi.clean217 = inttoptr i64 %addr.ffi.masked216 to ptr
  call void @LLVMPositionBuilderBefore(ptr %addr.ffi.clean26, ptr %addr.ffi.clean217)
  call void @LLVMSetCurrentDebugLocation2(ptr %addr.ffi.clean26, ptr null)
  %call.res234 = call ptr @LLVMBuildStore(ptr %addr.ffi.clean26, ptr %addr.ffi.clean65, ptr %addr.ffi.clean46)
  ret void

tag.slow_check:                                   ; preds = %concat.tot.len9
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok
}

declare ptr @"runtime::const_string_global"(ptr, ptr, ptr) #3

; Function Attrs: cold noinline
define internal void @dva_validate_tag_or_abort_stale_str_msg(i64 %0) #8 {
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

define internal ptr @"debug::#trace_frame"(ptr %0, ptr %1) #3 {
entry:
  %addr.ffi.int = ptrtoint ptr %1 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @LLVMGetFirstBasicBlock(ptr %addr.ffi.clean)
  %niche.ne.null = icmp ne ptr %call.res, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %addr.ffi.int2 = ptrtoint ptr %call.res to i64
  %addr.ffi.masked3 = and i64 %addr.ffi.int2, 281474976710655
  %addr.ffi.clean4 = inttoptr i64 %addr.ffi.masked3 to ptr
  %call.res5 = call ptr @LLVMGetFirstInstruction(ptr %addr.ffi.clean4)
  %niche.ne.null6 = icmp ne ptr %call.res5, null
  br i1 %niche.ne.null6, label %choice.then7, label %choice.exit

choice.exit:                                      ; preds = %choice.then7, %choice.then, %entry
  %choice.res42 = phi ptr [ null, %entry ], [ null, %choice.then ], [ %call.res40, %choice.then7 ]
  ret ptr %choice.res42

choice.then7:                                     ; preds = %choice.then
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int12 = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked13 = and i64 %addr.ffi.int12, 281474976710655
  %addr.ffi.clean14 = inttoptr i64 %addr.ffi.masked13 to ptr
  %addr.ffi.int16 = ptrtoint ptr %call.res5 to i64
  %addr.ffi.masked17 = and i64 %addr.ffi.int16, 281474976710655
  %addr.ffi.clean18 = inttoptr i64 %addr.ffi.masked17 to ptr
  call void @LLVMPositionBuilderBefore(ptr %addr.ffi.clean14, ptr %addr.ffi.clean18)
  %fld.load21 = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int22 = ptrtoint ptr %fld.load21 to i64
  %addr.ffi.masked23 = and i64 %addr.ffi.int22, 281474976710655
  %addr.ffi.clean24 = inttoptr i64 %addr.ffi.masked23 to ptr
  call void @LLVMSetCurrentDebugLocation2(ptr %addr.ffi.clean24, ptr null)
  %fld.load27 = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int28 = ptrtoint ptr %fld.load27 to i64
  %addr.ffi.masked29 = and i64 %addr.ffi.int28, 281474976710655
  %addr.ffi.clean30 = inttoptr i64 %addr.ffi.masked29 to ptr
  %call.res31 = call ptr @"debug::#frame_type"()
  %addr.ffi.int32 = ptrtoint ptr %call.res31 to i64
  %addr.ffi.masked33 = and i64 %addr.ffi.int32, 281474976710655
  %addr.ffi.clean34 = inttoptr i64 %addr.ffi.masked33 to ptr
  %call.res40 = call ptr @LLVMBuildAlloca(ptr %addr.ffi.clean30, ptr %addr.ffi.clean34, ptr @str.18)
  %addr.is.null = icmp eq ptr %call.res40, null
  br i1 %addr.is.null, label %addr.null, label %choice.exit

addr.null:                                        ; preds = %choice.then7
  call void @dva_abort_null_addr()
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_null_addr() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @null_addr, i64 47)
  call void @exit(i32 1)
  unreachable
}

define internal void @"debug::#finish_function"(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4) #3 {
entry:
  %cat.ibuf167 = alloca [24 x i8], align 1
  %cat.ibuf = alloca [24 x i8], align 1
  %addr.ffi.int = ptrtoint ptr %2 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @LLVMGetSubprogram(ptr %addr.ffi.clean)
  %niche.ne.null = icmp ne ptr %call.res, null
  %niche.ne.null3 = icmp ne ptr %3, null
  %and.1493.phi = select i1 %niche.ne.null, i1 %niche.ne.null3, i1 false
  br i1 %and.1493.phi, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %call.res6 = call ptr @"debug::#trace_frame"(ptr %0, ptr %2)
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res = phi ptr [ %call.res6, %choice.then ], [ null, %entry ]
  %call.res11 = call ptr @LLVMGetFirstBasicBlock(ptr %addr.ffi.clean)
  br label %loop.header.1494

loop.header.1494:                                 ; preds = %choice.else30, %choice.exit
  %"var.next_bb'.0" = phi ptr [ %call.res11, %choice.exit ], [ %call.res250, %choice.else30 ]
  %loop.idx.1494.0 = phi i64 [ 0, %choice.exit ], [ %loop.next252, %choice.else30 ]
  %niche.ne.null13 = icmp ne ptr %"var.next_bb'.0", null
  br i1 %niche.ne.null13, label %choice.then14, label %choice.else15

choice.then14:                                    ; preds = %loop.header.1494
  %addr.ffi.int19 = ptrtoint ptr %"var.next_bb'.0" to i64
  %addr.ffi.masked20 = and i64 %addr.ffi.int19, 281474976710655
  %addr.ffi.clean21 = inttoptr i64 %addr.ffi.masked20 to ptr
  %call.res22 = call ptr @LLVMGetFirstInstruction(ptr %addr.ffi.clean21)
  br label %loop.header.1495

choice.else15:                                    ; preds = %loop.header.1494
  ret void

loop.header.1495:                                 ; preds = %choice.exit45, %choice.then14
  %"var.next_inst'.0" = phi ptr [ %call.res22, %choice.then14 ], [ %call.res37, %choice.exit45 ]
  %loop.idx.1495.0 = phi i64 [ 0, %choice.then14 ], [ %loop.next, %choice.exit45 ]
  %niche.ne.null28 = icmp ne ptr %"var.next_inst'.0", null
  br i1 %niche.ne.null28, label %choice.then29, label %choice.else30

choice.then29:                                    ; preds = %loop.header.1495
  %addr.ffi.int34 = ptrtoint ptr %"var.next_inst'.0" to i64
  %addr.ffi.masked35 = and i64 %addr.ffi.int34, 281474976710655
  %addr.ffi.clean36 = inttoptr i64 %addr.ffi.masked35 to ptr
  %call.res37 = call ptr @LLVMGetNextInstruction(ptr %addr.ffi.clean36)
  %call.res42 = call ptr @LLVMInstructionGetDebugLoc(ptr %addr.ffi.clean36)
  %niche.ne.null43 = icmp ne ptr %call.res42, null
  br i1 %niche.ne.null43, label %choice.then44, label %choice.exit45

choice.else30:                                    ; preds = %loop.header.1495
  %call.res250 = call ptr @LLVMGetNextBasicBlock(ptr %addr.ffi.clean21)
  %loop.next252 = add i64 %loop.idx.1494.0, 1
  br label %loop.header.1494

choice.then44:                                    ; preds = %choice.then29
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %1, i32 0, i32 6
  %fld.load = load ptr, ptr %fld.gep, align 8
  %addr.ffi.int49 = ptrtoint ptr %call.res42 to i64
  %addr.ffi.masked50 = and i64 %addr.ffi.int49, 281474976710655
  %addr.ffi.clean51 = inttoptr i64 %addr.ffi.masked50 to ptr
  %call.res52 = call ptr @LLVMDILocationGetScope(ptr %addr.ffi.clean51)
  %coerce.ptr2int = ptrtoint ptr %call.res52 to i64
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load, i32 0, i32 1
  %m.cap53 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load, i32 0, i32 2
  %m.keys54 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load, i32 0, i32 3
  %m.vals55 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load, i32 0, i32 4
  %m.states56 = load ptr, ptr %m.states, align 8
  %mix.s1 = lshr i64 %coerce.ptr2int, 30
  %mix.x1 = xor i64 %coerce.ptr2int, %mix.s1
  %mix.x2 = mul i64 %mix.x1, -4658895280553007687
  %mix.s2 = lshr i64 %mix.x2, 27
  %mix.x3 = xor i64 %mix.x2, %mix.s2
  %mix.x4 = mul i64 %mix.x3, -7723592293110705685
  %mix.s3 = lshr i64 %mix.x4, 31
  %mix.res = xor i64 %mix.x4, %mix.s3
  %m.capm1 = sub i64 %m.cap53, 1
  %m.idx0 = and i64 %mix.res, %m.capm1
  br label %m.rd.loop

choice.exit45:                                    ; preds = %and.1496.then, %unwrap.pos.1499, %choice.then91, %choice.then81, %choice.else82, %choice.then29
  %loop.next = add i64 %loop.idx.1495.0, 1
  br label %loop.header.1495

m.rd.loop:                                        ; preds = %m.rd.next, %choice.then44
  %m.rd.idx = phi i64 [ %m.idx0, %choice.then44 ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.probe57 = phi i64 [ 0, %choice.then44 ], [ %m.rd.probe.next, %m.rd.next ]
  %m.rd.reached = icmp eq i64 %m.rd.probe57, %m.cap53
  %m.rd.state.gep = getelementptr i8, ptr %m.states56, i64 %m.rd.idx
  %m.rd.state = load i8, ptr %m.rd.state.gep, align 1
  %m.rd.is.empty = icmp eq i8 %m.rd.state, 0
  %m.rd.stop = or i1 %m.rd.is.empty, %m.rd.reached
  br i1 %m.rd.stop, label %m.rd.miss, label %m.rd.probe

m.rd.probe:                                       ; preds = %m.rd.loop
  %m.rd.is.tomb = icmp eq i8 %m.rd.state, 2
  br i1 %m.rd.is.tomb, label %m.rd.next, label %m.rd.found

m.rd.found:                                       ; preds = %m.rd.probe
  %m.rd.key.slot = getelementptr i64, ptr %m.keys54, i64 %m.rd.idx
  %mk.stored = load i64, ptr %m.rd.key.slot, align 8
  %mk.eq = icmp eq i64 %mk.stored, %coerce.ptr2int
  br i1 %mk.eq, label %m.rd.hit, label %m.rd.next

m.rd.next:                                        ; preds = %m.rd.found, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm1
  %m.rd.probe.next = add i64 %m.rd.probe57, 1
  br label %m.rd.loop

m.rd.miss:                                        ; preds = %m.rd.loop
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 4013, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %m.rd.done

m.rd.done:                                        ; preds = %m.rd.miss, %m.rd.hit
  %m.rd.tag = phi i1 [ true, %m.rd.hit ], [ false, %m.rd.miss ]
  %m.rd.pay = phi i64 [ %m.rd.p2i, %m.rd.hit ], [ %err.p2i, %m.rd.miss ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %m.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %m.rd.pay, 1
  %var.load58.fca.0.insert = insertvalue { i1, i64 } poison, i1 %m.rd.tag, 0
  %var.load58.fca.1.insert = insertvalue { i1, i64 } %var.load58.fca.0.insert, i64 %m.rd.pay, 1
  br i1 %m.rd.tag, label %choice.then60, label %choice.else82

m.rd.hit:                                         ; preds = %m.rd.found
  %m.rd.val.slot = getelementptr i64, ptr %m.vals55, i64 %m.rd.idx
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then60:                                    ; preds = %m.rd.done
  %pay.ptr = inttoptr i64 %m.rd.pay to ptr
  br i1 %niche.ne.null, label %choice.then67, label %choice.else82

choice.then67:                                    ; preds = %choice.then60
  %fld.load73 = load ptr, ptr %pay.ptr, align 8
  %ptr.int.l = ptrtoint ptr %fld.load73 to i64
  %ptr.int.r = ptrtoint ptr %call.res to i64
  %cmptmp = icmp eq i64 %ptr.int.l, %ptr.int.r
  br i1 %cmptmp, label %choice.then81, label %choice.else82

choice.then81:                                    ; preds = %choice.then67
  %niche.ne.null85 = icmp ne ptr %choice.res, null
  %niche.ne.null90 = icmp ne ptr %call.res37, null
  %or.cond = select i1 %niche.ne.null85, i1 %niche.ne.null90, i1 false
  br i1 %or.cond, label %choice.then91, label %choice.exit45

choice.else82:                                    ; preds = %choice.then60, %m.rd.done, %choice.then67
  call void @LLVMInstructionSetDebugLoc(ptr %addr.ffi.clean36, ptr null)
  br label %choice.exit45

choice.then91:                                    ; preds = %choice.then81
  %call.res98 = call i32 @LLVMDILocationGetLine(ptr %addr.ffi.clean51)
  %coerce.sext = sext i32 %call.res98 to i64
  %cmptmp100 = icmp sgt i64 %coerce.sext, 0
  br i1 %cmptmp100, label %and.1496.then, label %choice.exit45

and.1496.then:                                    ; preds = %choice.then91
  %call.res103 = call i1 @"debug::#traceable_call"(ptr %"var.next_inst'.0", ptr %4)
  br i1 %call.res103, label %choice.then104, label %choice.exit45

choice.then104:                                   ; preds = %and.1496.then
  br i1 %m.rd.tag, label %unwrap.pos.1497, label %unwrap.abort.1497

unwrap.pos.1497:                                  ; preds = %choice.then104
  %pay.ptr125 = inttoptr i64 %m.rd.pay to ptr
  %call.res131 = call i32 @LLVMDILocationGetColumn(ptr %addr.ffi.clean51)
  %coerce.sext132 = sext i32 %call.res131 to i64
  %fld.gep134 = getelementptr inbounds { ptr, ptr, ptr }, ptr %pay.ptr125, i32 0, i32 2
  %fld.load135 = load ptr, ptr %fld.gep134, align 8
  %cat.seg136 = load i64, ptr %fld.load135, align 8
  %cat.seg137 = and i64 %cat.seg136, 281474976710655
  %str.tag138 = lshr i64 %cat.seg136, 48
  %tag.immortal140 = icmp eq i64 %str.tag138, 0
  %active.gen141 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current142 = icmp eq i64 %str.tag138, %active.gen141
  %tag.fast.ok143 = or i1 %tag.immortal140, %tag.current142
  br i1 %tag.fast.ok143, label %str_ok139, label %tag.slow_check144

unwrap.abort.1497:                                ; preds = %choice.then104
  %5 = call i64 @write(i32 2, ptr @expect.reason.1498, i64 32)
  %err.ptr = inttoptr i64 %m.rd.pay to ptr
  %err.code = load i64, ptr %err.ptr, align 8
  %err.msg.gep108 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 1
  %err.msg.struct = load ptr, ptr %err.msg.gep108, align 8
  %err.file.gep109 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 2
  %err.file.struct = load ptr, ptr %err.file.gep109, align 8
  %err.line.gep110 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 3
  %err.line = load i64, ptr %err.line.gep110, align 8
  %err.col.gep111 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.ptr, i32 0, i32 4
  %err.col = load i64, ptr %err.col.gep111, align 8
  %err.msg.len112 = load i64, ptr %err.msg.struct, align 8
  %err.msg.len113 = and i64 %err.msg.len112, 281474976710655
  %str.tag = lshr i64 %err.msg.len112, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %unwrap.abort.1497
  %err.msg.len32 = trunc i64 %err.msg.len113 to i32
  %err.msg.data = getelementptr inbounds { i64, ptr }, ptr %err.msg.struct, i32 0, i32 1
  %err.msg.data114 = load ptr, ptr %err.msg.data, align 8
  %err.file.len115 = load i64, ptr %err.file.struct, align 8
  %err.file.len116 = and i64 %err.file.len115, 281474976710655
  %str.tag117 = lshr i64 %err.file.len115, 48
  %tag.immortal119 = icmp eq i64 %str.tag117, 0
  %active.gen120 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current121 = icmp eq i64 %str.tag117, %active.gen120
  %tag.fast.ok122 = or i1 %tag.immortal119, %tag.current121
  br i1 %tag.fast.ok122, label %str_ok118, label %tag.slow_check123

tag.slow_check:                                   ; preds = %unwrap.abort.1497
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

str_ok118:                                        ; preds = %tag.slow_check123, %str_ok
  %err.file.len32 = trunc i64 %err.file.len116 to i32
  %err.file.data = getelementptr inbounds { i64, ptr }, ptr %err.file.struct, i32 0, i32 1
  %err.file.data124 = load ptr, ptr %err.file.data, align 8
  %err.thread.rec = load ptr, ptr @dva_thread_rec, align 8
  %err.is.thread = icmp ne ptr %err.thread.rec, null
  br i1 %err.is.thread, label %err.thread, label %err.normal

tag.slow_check123:                                ; preds = %str_ok
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag117)
  br label %str_ok118

err.thread:                                       ; preds = %str_ok118
  %err.haserr.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 6
  store i64 1, ptr %err.haserr.gep, align 8
  %err.err.gep = getelementptr inbounds { i64, ptr, ptr, ptr, ptr, ptr, i64, ptr }, ptr %err.thread.rec, i32 0, i32 7
  store ptr %err.ptr, ptr %err.err.gep, align 8
  call void @pthread_exit(ptr null)
  unreachable

err.normal:                                       ; preds = %str_ok118
  %err.panic.printf = call i32 (ptr, ...) @printf(ptr @fmt_error, i64 %err.code, i32 %err.msg.len32, ptr %err.msg.data114, i32 %err.file.len32, ptr %err.file.data124, i64 %err.line, i64 %err.col)
  call void @exit(i32 1)
  unreachable

str_ok139:                                        ; preds = %tag.slow_check144, %unwrap.pos.1497
  %cat.seg145 = getelementptr inbounds { i64, ptr }, ptr %fld.load135, i32 0, i32 1
  %cat.seg146 = load ptr, ptr %cat.seg145, align 8
  %fld.gep149 = getelementptr inbounds { ptr, ptr, ptr }, ptr %pay.ptr125, i32 0, i32 1
  %fld.load150 = load ptr, ptr %fld.gep149, align 8
  %cat.seg152 = load i64, ptr %fld.load150, align 8
  %cat.seg153 = and i64 %cat.seg152, 281474976710655
  %str.tag154 = lshr i64 %cat.seg152, 48
  %tag.immortal156 = icmp eq i64 %str.tag154, 0
  %active.gen157 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current158 = icmp eq i64 %str.tag154, %active.gen157
  %tag.fast.ok159 = or i1 %tag.immortal156, %tag.current158
  br i1 %tag.fast.ok159, label %str_ok155, label %tag.slow_check160

tag.slow_check144:                                ; preds = %unwrap.pos.1497
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag138)
  br label %str_ok139

str_ok155:                                        ; preds = %tag.slow_check160, %str_ok139
  %cat.seg161 = getelementptr inbounds { i64, ptr }, ptr %fld.load150, i32 0, i32 1
  %cat.seg162 = load ptr, ptr %cat.seg161, align 8
  %cat.ilen = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf, i64 %coerce.sext, i1 false)
  %cat.ilen168 = call i64 @dva_fmt_i64_buf(ptr %cat.ibuf167, i64 %coerce.sext132, i1 false)
  %cat.sum.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 5, i64 %cat.seg137)
  %sum = extractvalue { i64, i1 } %cat.sum.len, 0
  %ovf = extractvalue { i64, i1 } %cat.sum.len, 1
  br i1 %ovf, label %str_overflow_abort, label %cat.sum.len170

tag.slow_check160:                                ; preds = %str_ok139
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag154)
  br label %str_ok155

cat.sum.len170:                                   ; preds = %str_ok155
  %cat.sum.len171 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum, i64 2)
  %sum172 = extractvalue { i64, i1 } %cat.sum.len171, 0
  %ovf173 = extractvalue { i64, i1 } %cat.sum.len171, 1
  br i1 %ovf173, label %str_overflow_abort175, label %cat.sum.len174

str_overflow_abort:                               ; preds = %str_ok155
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len174:                                   ; preds = %cat.sum.len170
  %cat.sum.len177 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum172, i64 %cat.seg153)
  %sum178 = extractvalue { i64, i1 } %cat.sum.len177, 0
  %ovf179 = extractvalue { i64, i1 } %cat.sum.len177, 1
  br i1 %ovf179, label %str_overflow_abort181, label %cat.sum.len180

str_overflow_abort175:                            ; preds = %cat.sum.len170
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len180:                                   ; preds = %cat.sum.len174
  %cat.sum.len183 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum178, i64 1)
  %sum184 = extractvalue { i64, i1 } %cat.sum.len183, 0
  %ovf185 = extractvalue { i64, i1 } %cat.sum.len183, 1
  br i1 %ovf185, label %str_overflow_abort187, label %cat.sum.len186

str_overflow_abort181:                            ; preds = %cat.sum.len174
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len186:                                   ; preds = %cat.sum.len180
  %cat.sum.len189 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum184, i64 %cat.ilen)
  %sum190 = extractvalue { i64, i1 } %cat.sum.len189, 0
  %ovf191 = extractvalue { i64, i1 } %cat.sum.len189, 1
  br i1 %ovf191, label %str_overflow_abort193, label %cat.sum.len192

str_overflow_abort187:                            ; preds = %cat.sum.len180
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len192:                                   ; preds = %cat.sum.len186
  %cat.sum.len195 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum190, i64 1)
  %sum196 = extractvalue { i64, i1 } %cat.sum.len195, 0
  %ovf197 = extractvalue { i64, i1 } %cat.sum.len195, 1
  br i1 %ovf197, label %str_overflow_abort199, label %cat.sum.len198

str_overflow_abort193:                            ; preds = %cat.sum.len186
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len198:                                   ; preds = %cat.sum.len192
  %cat.sum.len201 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum196, i64 %cat.ilen168)
  %sum202 = extractvalue { i64, i1 } %cat.sum.len201, 0
  %ovf203 = extractvalue { i64, i1 } %cat.sum.len201, 1
  br i1 %ovf203, label %str_overflow_abort205, label %cat.sum.len204

str_overflow_abort199:                            ; preds = %cat.sum.len192
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len204:                                   ; preds = %cat.sum.len198
  %cat.sum.len207 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum202, i64 2)
  %sum208 = extractvalue { i64, i1 } %cat.sum.len207, 0
  %ovf209 = extractvalue { i64, i1 } %cat.sum.len207, 1
  br i1 %ovf209, label %str_overflow_abort211, label %cat.sum.len210

str_overflow_abort205:                            ; preds = %cat.sum.len198
  call void @dva_abort_str_overflow_msg()
  unreachable

cat.sum.len210:                                   ; preds = %cat.sum.len204
  %concat.tot.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %sum208, i64 1)
  %sum213 = extractvalue { i64, i1 } %concat.tot.len, 0
  %ovf214 = extractvalue { i64, i1 } %concat.tot.len, 1
  br i1 %ovf214, label %str_overflow_abort216, label %concat.tot.len215

str_overflow_abort211:                            ; preds = %cat.sum.len204
  call void @dva_abort_str_overflow_msg()
  unreachable

concat.tot.len215:                                ; preds = %cat.sum.len210
  %arena.cur218 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.buf = call ptr @dva_arena_alloc(ptr %arena.cur218, i64 %sum213)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %concat.buf, ptr align 1 @str.19, i64 5, i1 false)
  %cat.dst219 = getelementptr i8, ptr %concat.buf, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst219, ptr align 1 %cat.seg146, i64 %cat.seg137, i1 false)
  %cat.off = add i64 5, %cat.seg137
  %cat.dst220 = getelementptr i8, ptr %concat.buf, i64 %cat.off
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst220, ptr align 1 @str.20, i64 2, i1 false)
  %cat.off221 = add i64 %cat.off, 2
  %cat.dst222 = getelementptr i8, ptr %concat.buf, i64 %cat.off221
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst222, ptr align 1 %cat.seg162, i64 %cat.seg153, i1 false)
  %cat.off223 = add i64 %cat.off221, %cat.seg153
  %cat.dst224 = getelementptr i8, ptr %concat.buf, i64 %cat.off223
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst224, ptr align 1 @str.2, i64 1, i1 false)
  %cat.off225 = add i64 %cat.off223, 1
  %cat.dst226 = getelementptr i8, ptr %concat.buf, i64 %cat.off225
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst226, ptr align 1 %cat.ibuf, i64 %cat.ilen, i1 false)
  %cat.off227 = add i64 %cat.off225, %cat.ilen
  %cat.dst228 = getelementptr i8, ptr %concat.buf, i64 %cat.off227
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst228, ptr align 1 @str.2, i64 1, i1 false)
  %cat.off229 = add i64 %cat.off227, 1
  %cat.dst230 = getelementptr i8, ptr %concat.buf, i64 %cat.off229
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst230, ptr align 1 %cat.ibuf167, i64 %cat.ilen168, i1 false)
  %cat.off231 = add i64 %cat.off229, %cat.ilen168
  %cat.dst232 = getelementptr i8, ptr %concat.buf, i64 %cat.off231
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %cat.dst232, ptr align 1 @str.21, i64 2, i1 false)
  %concat.nul = getelementptr i8, ptr %concat.buf, i64 %sum208
  store i8 0, ptr %concat.nul, align 1
  %arena.cur233 = load ptr, ptr @dva_active_arena_tls, align 8
  %concat.str = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 16)
  %str.tag.gen = load i64, ptr @dva_active_gen_tls, align 8
  %str.tag.shift = shl i64 %str.tag.gen, 48
  %str.tagged.len = or i64 %sum208, %str.tag.shift
  store i64 %str.tagged.len, ptr %concat.str, align 8
  %str.build.data.gep = getelementptr inbounds { i64, ptr }, ptr %concat.str, i32 0, i32 1
  store ptr %concat.buf, ptr %str.build.data.gep, align 8
  %unwrap.is_pos236 = icmp ne ptr %3, null
  br i1 %unwrap.is_pos236, label %unwrap.pos.1499, label %unwrap.abort.1499

str_overflow_abort216:                            ; preds = %cat.sum.len210
  call void @dva_abort_str_overflow_msg()
  unreachable

unwrap.pos.1499:                                  ; preds = %concat.tot.len215
  call void @"debug::#save_callsite"(ptr %0, ptr %3, ptr %choice.res, ptr %"var.next_inst'.0", ptr %call.res37, ptr %concat.str)
  br label %choice.exit45

unwrap.abort.1499:                                ; preds = %concat.tot.len215
  %6 = call i64 @write(i32 2, ptr @expect.reason.1500, i64 28)
  call void @dva_abort_unwrap_abort_msg()
  unreachable
}

; Function Attrs: cold noinline noreturn
define internal void @dva_abort_unwrap_abort_msg() #5 {
entry:
  %0 = call i64 @write(i32 2, ptr @unwrap_abort_msg, i64 45)
  call void @exit(i32 1)
  unreachable
}

define void @"debug::init"(ptr %0, ptr %1) #3 {
entry:
  %rec.salloc = alloca { ptr, i64, i64 }, align 8
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 65
  %fld.gep1 = getelementptr inbounds { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, ptr %fld.gep, i32 0, i32 13
  %fld.load = load i1, ptr %fld.gep1, align 1
  %nottmp = xor i1 %fld.load, true
  br i1 %nottmp, label %common.ret, label %choice.exit

common.ret:                                       ; preds = %entry, %loop.exit.1501
  ret void

choice.exit:                                      ; preds = %entry
  %fld.load4 = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load4 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @LLVMCreateDIBuilder(ptr %addr.ffi.clean)
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %m.new = call ptr @dva_arena_alloc(ptr %arena.cur, i64 48)
  %arena.cur6 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.keys = call ptr @dva_arena_alloc(ptr %arena.cur6, i64 64)
  %arena.cur7 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.vals = call ptr @dva_arena_alloc(ptr %arena.cur7, i64 64)
  %arena.cur8 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.states = call ptr @dva_arena_alloc(ptr %arena.cur8, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states, i8 0, i64 8, i1 false)
  store i64 0, ptr %m.new, align 8
  %m.cap.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 1
  store i64 8, ptr %m.cap.gep, align 8
  %m.keys.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 2
  store ptr %m.keys, ptr %m.keys.gep, align 8
  %m.vals.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 3
  store ptr %m.vals, ptr %m.vals.gep, align 8
  %m.states.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 4
  store ptr %m.states, ptr %m.states.gep, align 8
  %m.tombs.gep = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep, align 8
  %arena.cur9 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.new10 = call ptr @dva_arena_alloc(ptr %arena.cur9, i64 48)
  %arena.cur11 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.keys12 = call ptr @dva_arena_alloc(ptr %arena.cur11, i64 64)
  %arena.cur13 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.vals14 = call ptr @dva_arena_alloc(ptr %arena.cur13, i64 64)
  %arena.cur15 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.states16 = call ptr @dva_arena_alloc(ptr %arena.cur15, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states16, i8 0, i64 8, i1 false)
  store i64 0, ptr %m.new10, align 8
  %m.cap.gep18 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 1
  store i64 8, ptr %m.cap.gep18, align 8
  %m.keys.gep19 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 2
  store ptr %m.keys12, ptr %m.keys.gep19, align 8
  %m.vals.gep20 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 3
  store ptr %m.vals14, ptr %m.vals.gep20, align 8
  %m.states.gep21 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 4
  store ptr %m.states16, ptr %m.states.gep21, align 8
  %m.tombs.gep22 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new10, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep22, align 8
  %fld.gep24 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 62
  %fld.load25 = load ptr, ptr %fld.gep24, align 8
  store ptr %fld.load25, ptr %rec.salloc, align 8
  %rec.salloc.8.sroa_idx = getelementptr inbounds i8, ptr %rec.salloc, i64 8
  store i64 1, ptr %rec.salloc.8.sroa_idx, align 8
  %rec.salloc.16.sroa_idx = getelementptr inbounds i8, ptr %rec.salloc, i64 16
  store i64 0, ptr %rec.salloc.16.sroa_idx, align 8
  %call.res28 = call { i64, ptr } @"fs::cwd"()
  %arena.cur29 = load ptr, ptr @dva_active_arena_tls, align 8
  %ret.ub.alloc = call ptr @dva_arena_alloc(ptr %arena.cur29, i64 16)
  store { i64, ptr } %call.res28, ptr %ret.ub.alloc, align 8
  %arena.cur30 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.new31 = call ptr @dva_arena_alloc(ptr %arena.cur30, i64 48)
  %arena.cur32 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.keys33 = call ptr @dva_arena_alloc(ptr %arena.cur32, i64 64)
  %arena.cur34 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.vals35 = call ptr @dva_arena_alloc(ptr %arena.cur34, i64 64)
  %arena.cur36 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.states37 = call ptr @dva_arena_alloc(ptr %arena.cur36, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states37, i8 0, i64 8, i1 false)
  store i64 0, ptr %m.new31, align 8
  %m.cap.gep39 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new31, i32 0, i32 1
  store i64 8, ptr %m.cap.gep39, align 8
  %m.keys.gep40 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new31, i32 0, i32 2
  store ptr %m.keys33, ptr %m.keys.gep40, align 8
  %m.vals.gep41 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new31, i32 0, i32 3
  store ptr %m.vals35, ptr %m.vals.gep41, align 8
  %m.states.gep42 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new31, i32 0, i32 4
  store ptr %m.states37, ptr %m.states.gep42, align 8
  %m.tombs.gep43 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new31, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep43, align 8
  %arena.cur44 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.new45 = call ptr @dva_arena_alloc(ptr %arena.cur44, i64 48)
  %arena.cur46 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.keys47 = call ptr @dva_arena_alloc(ptr %arena.cur46, i64 64)
  %arena.cur48 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.vals49 = call ptr @dva_arena_alloc(ptr %arena.cur48, i64 64)
  %arena.cur50 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.states51 = call ptr @dva_arena_alloc(ptr %arena.cur50, i64 8)
  call void @llvm.memset.p0.i64(ptr align 1 %m.states51, i8 0, i64 8, i1 false)
  store i64 0, ptr %m.new45, align 8
  %m.cap.gep53 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new45, i32 0, i32 1
  store i64 8, ptr %m.cap.gep53, align 8
  %m.keys.gep54 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new45, i32 0, i32 2
  store ptr %m.keys47, ptr %m.keys.gep54, align 8
  %m.vals.gep55 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new45, i32 0, i32 3
  store ptr %m.vals49, ptr %m.vals.gep55, align 8
  %m.states.gep56 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new45, i32 0, i32 4
  store ptr %m.states51, ptr %m.states.gep56, align 8
  %m.tombs.gep57 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %m.new45, i32 0, i32 5
  store i64 0, ptr %m.tombs.gep57, align 8
  %arena.cur58 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur58, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %call.res, ptr %rec.alloc, align 8
  %rec.fld60 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 1
  store ptr %m.new, ptr %rec.fld60, align 8
  %rec.fld61 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 2
  store ptr %m.new10, ptr %rec.fld61, align 8
  %rec.fld62 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %rec.fld62, ptr align 8 %rec.salloc, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %rec.fld63 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 4
  store ptr %ret.ub.alloc, ptr %rec.fld63, align 8
  %rec.fld64 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 5
  store ptr %m.new31, ptr %rec.fld64, align 8
  %rec.fld65 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %rec.alloc, i32 0, i32 6
  store ptr %m.new45, ptr %rec.fld65, align 8
  %fld.gep68 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 71
  store ptr %rec.alloc, ptr %fld.gep68, align 8
  %a.null = icmp eq ptr %1, null
  br i1 %a.null, label %a.create, label %a.after

a.create:                                         ; preds = %choice.exit
  %arena.cur70 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.create71 = call ptr @dva_arena_alloc(ptr %arena.cur70, i64 24)
  %arena.cur72 = load ptr, ptr @dva_active_arena_tls, align 8
  %a.buf = call ptr @dva_arena_alloc(ptr %arena.cur72, i64 128)
  store i64 0, ptr %a.create71, align 8
  %a.data.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 1
  store ptr %a.buf, ptr %a.data.gep, align 8
  %a.cap.gep = getelementptr inbounds { i64, ptr, i64 }, ptr %a.create71, i32 0, i32 2
  store i64 16, ptr %a.cap.gep, align 8
  br label %a.after

a.after:                                          ; preds = %a.create, %choice.exit
  %var.prog.0 = phi ptr [ %a.create71, %a.create ], [ %1, %choice.exit ]
  %arr.cycle.len73 = load i64, ptr %var.prog.0, align 8
  %arr.cycle.data = getelementptr inbounds { i64, ptr, i64 }, ptr %var.prog.0, i32 0, i32 1
  %arr.cycle.data74 = load ptr, ptr %arr.cycle.data, align 8
  br label %loop.header.1501

loop.header.1501:                                 ; preds = %choice.exit105, %a.after
  %loop.idx.1501.0 = phi i64 [ 0, %a.after ], [ %loop.next, %choice.exit105 ]
  %loop.cond = icmp slt i64 %loop.idx.1501.0, %arr.cycle.len73
  br i1 %loop.cond, label %loop.body.1501, label %loop.exit.1501

loop.body.1501:                                   ; preds = %loop.header.1501
  %arr.elem.gep = getelementptr i64, ptr %arr.cycle.data74, i64 %loop.idx.1501.0
  %arr.elem.raw = load i64, ptr %arr.elem.gep, align 8
  %slot.i2p = inttoptr i64 %arr.elem.raw to ptr
  %fld.gep77 = getelementptr inbounds { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, ptr %fld.gep, i32 0, i32 14
  %fld.load78 = load ptr, ptr %fld.gep77, align 8
  %a.rd.nonnull = icmp ne ptr %fld.load78, null
  br i1 %a.rd.nonnull, label %a.rd.check, label %a.rd.err.null

loop.exit.1501:                                   ; preds = %loop.header.1501
  %fld.load336 = load ptr, ptr %fld.gep24, align 8
  %call.res337 = call ptr @"debug::#file_metadata"(ptr %rec.alloc, ptr %fld.load336)
  %addr.ffi.int339 = ptrtoint ptr %call.res to i64
  %addr.ffi.masked340 = and i64 %addr.ffi.int339, 281474976710655
  %addr.ffi.clean341 = inttoptr i64 %addr.ffi.masked340 to ptr
  %addr.ffi.int343 = ptrtoint ptr %call.res337 to i64
  %addr.ffi.masked344 = and i64 %addr.ffi.int343, 281474976710655
  %addr.ffi.clean345 = inttoptr i64 %addr.ffi.masked344 to ptr
  %fld.gep354 = getelementptr inbounds { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, ptr %fld.gep, i32 0, i32 11
  %fld.load355 = load i1, ptr %fld.gep354, align 1
  %choice.res359 = select i1 %fld.load355, i64 1, i64 0
  %coerce.trunc = trunc i64 %choice.res359 to i32
  %call.res436 = call ptr @LLVMDIBuilderCreateCompileUnit(ptr %addr.ffi.clean341, i32 1, ptr %addr.ffi.clean345, ptr @str.24, i64 4, i32 %coerce.trunc, ptr @str.12, i64 0, i32 0, ptr @str.12, i64 0, i32 1, i32 0, i32 1, i32 1, ptr @str.12, i64 0, ptr @str.12, i64 0)
  %fld.load439 = load ptr, ptr %0, align 8
  call void @"debug::#module_flag"(ptr %fld.load439, ptr @str.25.struct, i64 3)
  %fld.load442 = load ptr, ptr %0, align 8
  call void @"debug::#module_flag"(ptr %fld.load442, ptr @str.26.struct, i64 4)
  br label %common.ret

a.rd.check:                                       ; preds = %loop.body.1501
  %a.rd.len80 = load i64, ptr %fld.load78, align 8
  %a.rd.ge0 = icmp sge i64 %loop.idx.1501.0, 0
  %a.rd.lt = icmp slt i64 %loop.idx.1501.0, %a.rd.len80
  %a.rd.bounds = and i1 %a.rd.ge0, %a.rd.lt
  br i1 %a.rd.bounds, label %a.rd.ok, label %a.rd.err.oob

a.rd.ok:                                          ; preds = %a.rd.check
  %a.rd.data = getelementptr inbounds { i64, ptr, i64 }, ptr %fld.load78, i32 0, i32 1
  %a.rd.data81 = load ptr, ptr %a.rd.data, align 8
  %a.rd.elem.gep = getelementptr i64, ptr %a.rd.data81, i64 %loop.idx.1501.0
  %a.rd.elem = load i64, ptr %a.rd.elem.gep, align 8
  br label %a.rd.done

a.rd.err.null:                                    ; preds = %loop.body.1501
  %arena.cur82 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur82, i64 56)
  store i64 4011, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.22.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %a.rd.done

a.rd.err.oob:                                     ; preds = %a.rd.check
  %arena.cur83 = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc84 = call ptr @dva_arena_alloc(ptr %arena.cur83, i64 56)
  store i64 4011, ptr %err.alloc84, align 8
  %err.msg.gep86 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc84, i32 0, i32 1
  store ptr @str.23.struct, ptr %err.msg.gep86, align 8
  %err.file.gep87 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc84, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep87, align 8
  %err.line.gep88 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc84, i32 0, i32 3
  store i64 0, ptr %err.line.gep88, align 8
  %err.col.gep89 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc84, i32 0, i32 4
  store i64 0, ptr %err.col.gep89, align 8
  %err.ctx.gep90 = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc84, i32 0, i32 5
  store i64 %loop.idx.1501.0, ptr %err.ctx.gep90, align 8
  %err.ctx1.gep92 = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep90, i32 0, i32 1
  store i64 %a.rd.len80, ptr %err.ctx1.gep92, align 8
  %err.p2i93 = ptrtoint ptr %err.alloc84 to i64
  br label %a.rd.done

a.rd.done:                                        ; preds = %a.rd.err.oob, %a.rd.err.null, %a.rd.ok
  %a.rd.tag = phi i1 [ true, %a.rd.ok ], [ false, %a.rd.err.null ], [ false, %a.rd.err.oob ]
  %a.rd.pay = phi i64 [ %a.rd.elem, %a.rd.ok ], [ %err.p2i, %a.rd.err.null ], [ %err.p2i93, %a.rd.err.oob ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %a.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %a.rd.pay, 1
  %pay.ptr = inttoptr i64 %a.rd.pay to ptr
  %choice.res = select i1 %a.rd.tag, ptr %pay.ptr, ptr %rec.fld62
  %tag.id = load i64, ptr %slot.i2p, align 8
  %tag.match = icmp eq i64 %tag.id, 1
  br i1 %tag.match, label %choice.case, label %choice.exit105

choice.exit105:                                   ; preds = %m.overwrite268, %m.empty270, %m.overwrite, %m.ins.slot, %choice.case, %a.rd.done
  %loop.next = add i64 %loop.idx.1501.0, 1
  br label %loop.header.1501

choice.case:                                      ; preds = %a.rd.done
  %pay.gep = getelementptr inbounds { i64, ptr }, ptr %slot.i2p, i32 0, i32 1
  %payload.ptr = load ptr, ptr %pay.gep, align 8
  %fld.gep108 = getelementptr inbounds { ptr, ptr, { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, i1 }, ptr %payload.ptr, i32 0, i32 2
  %fld.load110 = load ptr, ptr %fld.gep108, align 8
  %tag.id115 = load i64, ptr %fld.load110, align 8
  %tag.match116 = icmp eq i64 %tag.id115, 16
  br i1 %tag.match116, label %choice.case112, label %choice.exit105

choice.case112:                                   ; preds = %choice.case
  %pay.gep117 = getelementptr inbounds { i64, ptr }, ptr %fld.load110, i32 0, i32 1
  %fld.gep126 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep108, i32 0, i32 4
  %fld.load127 = load i64, ptr %fld.gep126, align 8
  %cmptmp = icmp sgt i64 %fld.load127, 0
  br i1 %cmptmp, label %choice.then128, label %choice.exit130

choice.then128:                                   ; preds = %choice.case112
  %fld.load133 = load ptr, ptr %choice.res, align 8
  %fld.gep138 = getelementptr inbounds { ptr, ptr, ptr, { i64, i64, ptr }, i64, i64 }, ptr %fld.gep108, i32 0, i32 5
  %fld.load139 = load i64, ptr %fld.gep138, align 8
  %arena.cur140 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc141 = call ptr @dva_arena_alloc(ptr %arena.cur140, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %fld.load133, ptr %rec.alloc141, align 8
  %rec.fld143 = getelementptr inbounds { ptr, i64, i64 }, ptr %rec.alloc141, i32 0, i32 1
  store i64 %fld.load127, ptr %rec.fld143, align 8
  %rec.fld144 = getelementptr inbounds { ptr, i64, i64 }, ptr %rec.alloc141, i32 0, i32 2
  store i64 %fld.load139, ptr %rec.fld144, align 8
  br label %choice.exit130

choice.exit130:                                   ; preds = %choice.case112, %choice.then128
  %choice.res146 = phi ptr [ %rec.alloc141, %choice.then128 ], [ %choice.res, %choice.case112 ]
  %fld.load149 = load ptr, ptr %rec.fld61, align 8
  %fld.load152 = load ptr, ptr %payload.ptr, align 8
  %slot.p2i = ptrtoint ptr %choice.res146 to i64
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load149, i32 0, i32 1
  %m.cap154 = load i64, ptr %m.cap, align 8
  %m.keys155 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load149, i32 0, i32 2
  %m.keys156 = load ptr, ptr %m.keys155, align 8
  %m.vals157 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load149, i32 0, i32 3
  %m.vals158 = load ptr, ptr %m.vals157, align 8
  %m.states159 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load149, i32 0, i32 4
  %m.states160 = load ptr, ptr %m.states159, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %fld.load152, i32 0, i32 1
  %mk.data161 = load ptr, ptr %mk.data, align 8
  %mk.len162 = load i64, ptr %fld.load152, align 8
  %mk.len163 = and i64 %mk.len162, 281474976710655
  %hash.str = call i64 @dva_hash_string(ptr %mk.data161, i64 %mk.len163)
  %m.capm1 = sub i64 %m.cap154, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.loop

m.loop:                                           ; preds = %m.next, %choice.exit130
  %m.idx = phi i64 [ %m.idx0, %choice.exit130 ], [ %m.idx.next, %m.next ]
  %m.tomb164 = phi i64 [ -1, %choice.exit130 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %choice.exit130 ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap154
  %m.state.gep = getelementptr i8, ptr %m.states160, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb164, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb164, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys156, i64 %m.idx
  %mk.stored = load ptr, ptr %m.key.slot, align 8
  %mk.slen165 = load i64, ptr %mk.stored, align 8
  %mk.slen166 = and i64 %mk.slen165, 281474976710655
  %mk.nlen167 = load i64, ptr %fld.load152, align 8
  %mk.nlen168 = and i64 %mk.nlen167, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen166, %mk.nlen168
  br i1 %mk.lenseq, label %mk.eq.then, label %m.next

m.overwrite:                                      ; preds = %mk.eq.then
  %m.val.slot = getelementptr i64, ptr %m.vals158, i64 %m.idx
  store i64 %slot.p2i, ptr %m.val.slot, align 8
  br label %choice.exit105

m.next:                                           ; preds = %m.found, %mk.eq.then, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb164, %mk.eq.then ], [ %m.tomb164, %m.found ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt = load i64, ptr %fld.load149, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load149, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap154, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

mk.eq.then:                                       ; preds = %m.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata169 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata170 = load ptr, ptr %mk.data, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata169, ptr %mk.ndata170, i64 %mk.nlen168)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br i1 %mk.cmpeq, label %m.overwrite, label %m.next

m.grow:                                           ; preds = %m.empty
  %m.old.cap171 = load i64, ptr %m.cap, align 8
  %m.old.keys172 = load ptr, ptr %m.keys155, align 8
  %m.old.vals173 = load ptr, ptr %m.vals157, align 8
  %m.old.states174 = load ptr, ptr %m.states159, align 8
  %m.double.cap = mul i64 %m.old.cap171, 2
  %m.live.x2 = mul i64 %m.grow.cnt, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap171
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap171
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur176 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur176, i64 %m.gk.bytes)
  %arena.cur177 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur177, i64 %m.gk.bytes)
  %arena.cur178 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur178, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  store i64 %m.new.cap, ptr %m.cap, align 8
  store ptr %m.gk, ptr %m.keys155, align 8
  store ptr %m.gv, ptr %m.vals157, align 8
  store ptr %m.gs, ptr %m.states159, align 8
  store i64 0, ptr %fld.load149, align 8
  store i64 0, ptr %m.grow.tm.p, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb320 = icmp ne i64 %m.tomb164, -1
  %m.ins.idx321 = select i1 %m.use.tomb320, i64 %m.tomb164, i64 %m.idx
  %m.key.slot322 = getelementptr i64, ptr %m.keys156, i64 %m.ins.idx321
  store ptr %fld.load152, ptr %m.key.slot322, align 8
  %m.val.slot323 = getelementptr i64, ptr %m.vals158, i64 %m.ins.idx321
  store i64 %slot.p2i, ptr %m.val.slot323, align 8
  %m.ins.state.slot324 = getelementptr i8, ptr %m.states160, i64 %m.ins.idx321
  store i8 1, ptr %m.ins.state.slot324, align 1
  %m.count326 = load i64, ptr %fld.load149, align 8
  %m.count.next327 = add i64 %m.count326, 1
  store i64 %m.count.next327, ptr %fld.load149, align 8
  %m.ins.tombs330 = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec331 = select i1 %m.use.tomb320, i64 1, i64 0
  %m.ins.tombs.next332 = sub i64 %m.ins.tombs330, %m.tomb.dec331
  store i64 %m.ins.tombs.next332, ptr %m.grow.tm.p, align 8
  br label %choice.exit105

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap171
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states174, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.overwrite205, %m.empty207, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap249 = load i64, ptr %m.cap, align 8
  %m.keys251 = load ptr, ptr %m.keys155, align 8
  %m.vals253 = load ptr, ptr %m.vals157, align 8
  %m.states255 = load ptr, ptr %m.states159, align 8
  %mk.data257 = load ptr, ptr %mk.data, align 8
  %mk.len259 = load i64, ptr %fld.load152, align 8
  %mk.len260 = and i64 %mk.len259, 281474976710655
  %hash.str261 = call i64 @dva_hash_string(ptr %mk.data257, i64 %mk.len260)
  %m.capm1262 = sub i64 %m.cap249, 1
  %m.idx0263 = and i64 %hash.str261, %m.capm1262
  br label %m.loop264

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys172, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals173, i64 %m.re.i
  %m.re.key = load ptr, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap186 = load i64, ptr %m.cap, align 8
  %m.keys188 = load ptr, ptr %m.keys155, align 8
  %m.vals190 = load ptr, ptr %m.vals157, align 8
  %m.states192 = load ptr, ptr %m.states159, align 8
  %mk.data193 = getelementptr inbounds { i64, ptr }, ptr %m.re.key, i32 0, i32 1
  %mk.data194 = load ptr, ptr %mk.data193, align 8
  %mk.len196 = load i64, ptr %m.re.key, align 8
  %mk.len197 = and i64 %mk.len196, 281474976710655
  %hash.str198 = call i64 @dva_hash_string(ptr %mk.data194, i64 %mk.len197)
  %m.capm1199 = sub i64 %m.cap186, 1
  %m.idx0200 = and i64 %hash.str198, %m.capm1199
  br label %m.loop201

m.loop201:                                        ; preds = %m.next206, %m.re.ins
  %m.idx209 = phi i64 [ %m.idx0200, %m.re.ins ], [ %m.idx.next242, %m.next206 ]
  %m.tomb210 = phi i64 [ -1, %m.re.ins ], [ %m.next.tomb240, %m.next206 ]
  %m.probe211 = phi i64 [ 0, %m.re.ins ], [ %m.probe.next243, %m.next206 ]
  %m.reached.cap212 = icmp eq i64 %m.probe211, %m.cap186
  %m.state.gep213 = getelementptr i8, ptr %m.states192, i64 %m.idx209
  %m.state214 = load i8, ptr %m.state.gep213, align 1
  %m.is.empty215 = icmp eq i8 %m.state214, 0
  %m.stop216 = or i1 %m.is.empty215, %m.reached.cap212
  br i1 %m.stop216, label %m.empty207, label %m.check.tomb202

m.check.tomb202:                                  ; preds = %m.loop201
  %m.is.tomb217 = icmp eq i8 %m.state214, 2
  br i1 %m.is.tomb217, label %m.tomb203, label %m.found204

m.tomb203:                                        ; preds = %m.check.tomb202
  %m.has.tomb218 = icmp ne i64 %m.tomb210, -1
  %m.tomb.sel219 = select i1 %m.has.tomb218, i64 %m.tomb210, i64 %m.idx209
  br label %m.next206

m.found204:                                       ; preds = %m.check.tomb202
  %m.key.slot220 = getelementptr i64, ptr %m.keys188, i64 %m.idx209
  %mk.stored221 = load ptr, ptr %m.key.slot220, align 8
  %mk.slen223 = load i64, ptr %mk.stored221, align 8
  %mk.slen224 = and i64 %mk.slen223, 281474976710655
  %mk.nlen226 = load i64, ptr %m.re.key, align 8
  %mk.nlen227 = and i64 %mk.nlen226, 281474976710655
  %mk.lenseq228 = icmp eq i64 %mk.slen224, %mk.nlen227
  br i1 %mk.lenseq228, label %mk.eq.then229, label %m.next206

m.overwrite205:                                   ; preds = %mk.eq.then229
  %m.val.slot239 = getelementptr i64, ptr %m.vals190, i64 %m.idx209
  store i64 %m.re.val, ptr %m.val.slot239, align 8
  br label %m.re.cont

m.next206:                                        ; preds = %m.found204, %mk.eq.then229, %m.tomb203
  %m.next.tomb240 = phi i64 [ %m.tomb.sel219, %m.tomb203 ], [ %m.tomb210, %mk.eq.then229 ], [ %m.tomb210, %m.found204 ]
  %m.idx.add241 = add i64 %m.idx209, 1
  %m.idx.next242 = and i64 %m.idx.add241, %m.capm1199
  %m.probe.next243 = add i64 %m.probe211, 1
  br label %m.loop201

m.empty207:                                       ; preds = %m.loop201
  %m.use.tomb = icmp ne i64 %m.tomb210, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb210, i64 %m.idx209
  %m.key.slot244 = getelementptr i64, ptr %m.keys188, i64 %m.ins.idx
  store ptr %m.re.key, ptr %m.key.slot244, align 8
  %m.val.slot245 = getelementptr i64, ptr %m.vals190, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot245, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states192, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count246 = load i64, ptr %fld.load149, align 8
  %m.count.next = add i64 %m.count246, 1
  store i64 %m.count.next, ptr %fld.load149, align 8
  %m.ins.tombs = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.grow.tm.p, align 8
  br label %m.re.cont

mk.eq.then229:                                    ; preds = %m.found204
  %mk.sdata232 = getelementptr inbounds { i64, ptr }, ptr %mk.stored221, i32 0, i32 1
  %mk.sdata233 = load ptr, ptr %mk.sdata232, align 8
  %mk.ndata235 = load ptr, ptr %mk.data193, align 8
  %mk.memcmp236 = call i32 @memcmp(ptr %mk.sdata233, ptr %mk.ndata235, i64 %mk.nlen227)
  %mk.cmpeq237 = icmp eq i32 %mk.memcmp236, 0
  br i1 %mk.cmpeq237, label %m.overwrite205, label %m.next206

m.loop264:                                        ; preds = %m.next269, %m.re.done
  %m.idx272 = phi i64 [ %m.idx0263, %m.re.done ], [ %m.idx.next305, %m.next269 ]
  %m.tomb273 = phi i64 [ -1, %m.re.done ], [ %m.next.tomb303, %m.next269 ]
  %m.probe274 = phi i64 [ 0, %m.re.done ], [ %m.probe.next306, %m.next269 ]
  %m.reached.cap275 = icmp eq i64 %m.probe274, %m.cap249
  %m.state.gep276 = getelementptr i8, ptr %m.states255, i64 %m.idx272
  %m.state277 = load i8, ptr %m.state.gep276, align 1
  %m.is.empty278 = icmp eq i8 %m.state277, 0
  %m.stop279 = or i1 %m.is.empty278, %m.reached.cap275
  br i1 %m.stop279, label %m.empty270, label %m.check.tomb265

m.check.tomb265:                                  ; preds = %m.loop264
  %m.is.tomb280 = icmp eq i8 %m.state277, 2
  br i1 %m.is.tomb280, label %m.tomb266, label %m.found267

m.tomb266:                                        ; preds = %m.check.tomb265
  %m.has.tomb281 = icmp ne i64 %m.tomb273, -1
  %m.tomb.sel282 = select i1 %m.has.tomb281, i64 %m.tomb273, i64 %m.idx272
  br label %m.next269

m.found267:                                       ; preds = %m.check.tomb265
  %m.key.slot283 = getelementptr i64, ptr %m.keys251, i64 %m.idx272
  %mk.stored284 = load ptr, ptr %m.key.slot283, align 8
  %mk.slen286 = load i64, ptr %mk.stored284, align 8
  %mk.slen287 = and i64 %mk.slen286, 281474976710655
  %mk.nlen289 = load i64, ptr %fld.load152, align 8
  %mk.nlen290 = and i64 %mk.nlen289, 281474976710655
  %mk.lenseq291 = icmp eq i64 %mk.slen287, %mk.nlen290
  br i1 %mk.lenseq291, label %mk.eq.then292, label %m.next269

m.overwrite268:                                   ; preds = %mk.eq.then292
  %m.val.slot302 = getelementptr i64, ptr %m.vals253, i64 %m.idx272
  store i64 %slot.p2i, ptr %m.val.slot302, align 8
  br label %choice.exit105

m.next269:                                        ; preds = %m.found267, %mk.eq.then292, %m.tomb266
  %m.next.tomb303 = phi i64 [ %m.tomb.sel282, %m.tomb266 ], [ %m.tomb273, %mk.eq.then292 ], [ %m.tomb273, %m.found267 ]
  %m.idx.add304 = add i64 %m.idx272, 1
  %m.idx.next305 = and i64 %m.idx.add304, %m.capm1262
  %m.probe.next306 = add i64 %m.probe274, 1
  br label %m.loop264

m.empty270:                                       ; preds = %m.loop264
  %m.use.tomb307 = icmp ne i64 %m.tomb273, -1
  %m.ins.idx308 = select i1 %m.use.tomb307, i64 %m.tomb273, i64 %m.idx272
  %m.key.slot309 = getelementptr i64, ptr %m.keys251, i64 %m.ins.idx308
  store ptr %fld.load152, ptr %m.key.slot309, align 8
  %m.val.slot310 = getelementptr i64, ptr %m.vals253, i64 %m.ins.idx308
  store i64 %slot.p2i, ptr %m.val.slot310, align 8
  %m.ins.state.slot311 = getelementptr i8, ptr %m.states255, i64 %m.ins.idx308
  store i8 1, ptr %m.ins.state.slot311, align 1
  %m.count313 = load i64, ptr %fld.load149, align 8
  %m.count.next314 = add i64 %m.count313, 1
  store i64 %m.count.next314, ptr %fld.load149, align 8
  %m.ins.tombs317 = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec318 = select i1 %m.use.tomb307, i64 1, i64 0
  %m.ins.tombs.next319 = sub i64 %m.ins.tombs317, %m.tomb.dec318
  store i64 %m.ins.tombs.next319, ptr %m.grow.tm.p, align 8
  br label %choice.exit105

mk.eq.then292:                                    ; preds = %m.found267
  %mk.sdata295 = getelementptr inbounds { i64, ptr }, ptr %mk.stored284, i32 0, i32 1
  %mk.sdata296 = load ptr, ptr %mk.sdata295, align 8
  %mk.ndata298 = load ptr, ptr %mk.data, align 8
  %mk.memcmp299 = call i32 @memcmp(ptr %mk.sdata296, ptr %mk.ndata298, i64 %mk.nlen290)
  %mk.cmpeq300 = icmp eq i32 %mk.memcmp299, 0
  br i1 %mk.cmpeq300, label %m.overwrite268, label %m.next269
}

declare { i64, ptr } @"fs::cwd"() #3

define { ptr, i64, i64 } @"debug::current_location"(ptr %0) #3 {
entry:
  %rec.salloc = alloca { ptr, i64, i64 }, align 8
  %rec.salloc.sroa.gep22 = getelementptr inbounds { ptr, i64, i64 }, ptr %rec.salloc, i32 0, i32 2
  %rec.salloc.sroa.gep19 = getelementptr inbounds { ptr, i64, i64 }, ptr %rec.salloc, i32 0, i32 1
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 71
  %fld.load = load ptr, ptr %fld.gep, align 8
  %niche.ne.null = icmp ne ptr %fld.load, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %fld.load, i32 0, i32 3
  %fld.load5 = load ptr, ptr %fld.gep2, align 8
  %fld.gep7 = getelementptr inbounds { ptr, i64, i64 }, ptr %fld.gep2, i32 0, i32 1
  %fld.load8 = load i64, ptr %fld.gep7, align 8
  %fld.gep10 = getelementptr inbounds { ptr, i64, i64 }, ptr %fld.gep2, i32 0, i32 2
  %fld.load11 = load i64, ptr %fld.gep10, align 8
  store ptr %fld.load5, ptr %rec.salloc, align 8
  store i64 %fld.load8, ptr %rec.salloc.sroa.gep19, align 8
  store i64 %fld.load11, ptr %rec.salloc.sroa.gep22, align 8
  %choice.res.sroa.phi18.sroa.speculate.load.choice.then = load i64, ptr %rec.salloc.sroa.gep19, align 8
  %choice.res.sroa.phi.sroa.speculate.load.choice.then = load ptr, ptr %rec.salloc, align 8
  br label %choice.exit

choice.exit:                                      ; preds = %entry, %choice.then
  %choice.res.sroa.phi.sroa.speculated = phi ptr [ %choice.res.sroa.phi.sroa.speculate.load.choice.then, %choice.then ], [ @str.12.struct, %entry ]
  %choice.res.sroa.phi18.sroa.speculated = phi i64 [ %choice.res.sroa.phi18.sroa.speculate.load.choice.then, %choice.then ], [ 0, %entry ]
  %choice.res.sroa.phi21.sroa.speculated = phi i64 [ %fld.load11, %choice.then ], [ 0, %entry ]
  %ret.pack.fca.0.insert = insertvalue { ptr, i64, i64 } poison, ptr %choice.res.sroa.phi.sroa.speculated, 0
  %ret.pack.fca.1.insert = insertvalue { ptr, i64, i64 } %ret.pack.fca.0.insert, i64 %choice.res.sroa.phi18.sroa.speculated, 1
  %ret.pack.fca.2.insert = insertvalue { ptr, i64, i64 } %ret.pack.fca.1.insert, i64 %choice.res.sroa.phi21.sroa.speculated, 2
  ret { ptr, i64, i64 } %ret.pack.fca.2.insert
}

define void @"debug::position"(ptr %0, ptr %1) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 71
  %fld.load = load ptr, ptr %fld.gep, align 8
  %niche.ne.null = icmp ne ptr %fld.load, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %fld.gep3 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %fld.load, i32 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %fld.gep3, ptr align 1 %1, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64 }, ptr null, i32 1) to i64), i1 false)
  %fld.gep5 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %fld.load6 = load ptr, ptr %fld.gep5, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load6 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %call.res = call ptr @LLVMGetInsertBlock(ptr %addr.ffi.clean)
  %addr.ffi.int7 = ptrtoint ptr %call.res to i64
  %addr.ffi.masked8 = and i64 %addr.ffi.int7, 281474976710655
  %addr.ffi.clean9 = inttoptr i64 %addr.ffi.masked8 to ptr
  %call.res10 = call ptr @LLVMGetBasicBlockParent(ptr %addr.ffi.clean9)
  %addr.ffi.int12 = ptrtoint ptr %call.res10 to i64
  %addr.ffi.masked13 = and i64 %addr.ffi.int12, 281474976710655
  %addr.ffi.clean14 = inttoptr i64 %addr.ffi.masked13 to ptr
  %call.res15 = call ptr @LLVMGetSubprogram(ptr %addr.ffi.clean14)
  %niche.ne.null16 = icmp ne ptr %call.res15, null
  br i1 %niche.ne.null16, label %choice.then17, label %choice.else

choice.exit:                                      ; preds = %addr.present, %choice.else, %entry
  ret void

choice.then17:                                    ; preds = %choice.then
  %fld.load23 = load ptr, ptr %1, align 8
  %call.res24 = call ptr @"debug::#file_metadata"(ptr %fld.load, ptr %fld.load23)
  %fld.load30 = load ptr, ptr %1, align 8
  %call.res31 = call ptr @"debug::#location_scope"(ptr %fld.load, ptr %call.res15, ptr %call.res24, ptr %fld.load30)
  %fld.load34 = load ptr, ptr %fld.gep5, align 8
  %addr.ffi.int35 = ptrtoint ptr %fld.load34 to i64
  %addr.ffi.masked36 = and i64 %addr.ffi.int35, 281474976710655
  %addr.ffi.clean37 = inttoptr i64 %addr.ffi.masked36 to ptr
  %fld.gep40 = getelementptr inbounds { ptr, i64, i64 }, ptr %1, i32 0, i32 1
  %fld.load41 = load i64, ptr %fld.gep40, align 8
  %fld.gep43 = getelementptr inbounds { ptr, i64, i64 }, ptr %1, i32 0, i32 2
  %fld.load44 = load i64, ptr %fld.gep43, align 8
  %call.res45 = call ptr @"debug::#loc_metadata"(ptr %call.res31, i64 %fld.load41, i64 %fld.load44)
  %addr.is.null = icmp eq ptr %call.res45, null
  br i1 %addr.is.null, label %addr.null, label %addr.present

choice.else:                                      ; preds = %choice.then
  %fld.load51 = load ptr, ptr %fld.gep5, align 8
  %addr.ffi.int52 = ptrtoint ptr %fld.load51 to i64
  %addr.ffi.masked53 = and i64 %addr.ffi.int52, 281474976710655
  %addr.ffi.clean54 = inttoptr i64 %addr.ffi.masked53 to ptr
  call void @LLVMSetCurrentDebugLocation2(ptr %addr.ffi.clean54, ptr null)
  br label %choice.exit

addr.null:                                        ; preds = %choice.then17
  call void @dva_abort_null_addr()
  unreachable

addr.present:                                     ; preds = %choice.then17
  %addr.ffi.int46 = ptrtoint ptr %call.res45 to i64
  %addr.ffi.masked47 = and i64 %addr.ffi.int46, 281474976710655
  %addr.ffi.clean48 = inttoptr i64 %addr.ffi.masked47 to ptr
  call void @LLVMSetCurrentDebugLocation2(ptr %addr.ffi.clean37, ptr %addr.ffi.clean48)
  br label %choice.exit
}

define void @"debug::function"(ptr %0, ptr %1, ptr %2, ptr %3, i64 %4, i64 %5) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 71
  %fld.load = load ptr, ptr %fld.gep, align 8
  %niche.ne.null = icmp ne ptr %fld.load, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %fld.gep2 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %fld.load, i32 0, i32 2
  %fld.load3 = load ptr, ptr %fld.gep2, align 8
  %m.cap = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load3, i32 0, i32 1
  %m.cap5 = load i64, ptr %m.cap, align 8
  %m.keys = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load3, i32 0, i32 2
  %m.keys6 = load ptr, ptr %m.keys, align 8
  %m.vals = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load3, i32 0, i32 3
  %m.vals7 = load ptr, ptr %m.vals, align 8
  %m.states = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load3, i32 0, i32 4
  %m.states8 = load ptr, ptr %m.states, align 8
  %mk.data = getelementptr inbounds { i64, ptr }, ptr %2, i32 0, i32 1
  %mk.data9 = load ptr, ptr %mk.data, align 8
  %mk.len10 = load i64, ptr %2, align 8
  %mk.len11 = and i64 %mk.len10, 281474976710655
  %hash.str = call i64 @dva_hash_string(ptr %mk.data9, i64 %mk.len11)
  %m.capm1 = sub i64 %m.cap5, 1
  %m.idx0 = and i64 %hash.str, %m.capm1
  br label %m.rd.loop

choice.exit:                                      ; preds = %m.done, %entry
  ret void

m.rd.loop:                                        ; preds = %m.rd.next, %choice.then
  %m.rd.idx = phi i64 [ %m.idx0, %choice.then ], [ %m.rd.idx.next, %m.rd.next ]
  %m.rd.probe12 = phi i64 [ 0, %choice.then ], [ %m.rd.probe.next, %m.rd.next ]
  %m.rd.reached = icmp eq i64 %m.rd.probe12, %m.cap5
  %m.rd.state.gep = getelementptr i8, ptr %m.states8, i64 %m.rd.idx
  %m.rd.state = load i8, ptr %m.rd.state.gep, align 1
  %m.rd.is.empty = icmp eq i8 %m.rd.state, 0
  %m.rd.stop = or i1 %m.rd.is.empty, %m.rd.reached
  br i1 %m.rd.stop, label %m.rd.miss, label %m.rd.probe

m.rd.probe:                                       ; preds = %m.rd.loop
  %m.rd.is.tomb = icmp eq i8 %m.rd.state, 2
  br i1 %m.rd.is.tomb, label %m.rd.next, label %m.rd.found

m.rd.found:                                       ; preds = %m.rd.probe
  %m.rd.key.slot = getelementptr i64, ptr %m.keys6, i64 %m.rd.idx
  %mk.stored = load ptr, ptr %m.rd.key.slot, align 8
  %mk.slen13 = load i64, ptr %mk.stored, align 8
  %mk.slen14 = and i64 %mk.slen13, 281474976710655
  %mk.nlen15 = load i64, ptr %2, align 8
  %mk.nlen16 = and i64 %mk.nlen15, 281474976710655
  %mk.lenseq = icmp eq i64 %mk.slen14, %mk.nlen16
  br i1 %mk.lenseq, label %mk.eq.then, label %m.rd.next

m.rd.next:                                        ; preds = %m.rd.found, %mk.eq.then, %m.rd.probe
  %m.rd.idx.add = add i64 %m.rd.idx, 1
  %m.rd.idx.next = and i64 %m.rd.idx.add, %m.capm1
  %m.rd.probe.next = add i64 %m.rd.probe12, 1
  br label %m.rd.loop

m.rd.miss:                                        ; preds = %m.rd.loop
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %err.alloc = call ptr @dva_arena_alloc(ptr %arena.cur, i64 56)
  store i64 4013, ptr %err.alloc, align 8
  %err.msg.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 1
  store ptr @str.0.struct, ptr %err.msg.gep, align 8
  %err.file.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 2
  store ptr @str.1.struct, ptr %err.file.gep, align 8
  %err.line.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 3
  store i64 0, ptr %err.line.gep, align 8
  %err.col.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 4
  store i64 0, ptr %err.col.gep, align 8
  %err.ctx.gep = getelementptr inbounds { i64, ptr, ptr, i64, i64, { i64, i64 } }, ptr %err.alloc, i32 0, i32 5
  store i64 0, ptr %err.ctx.gep, align 8
  %err.ctx1.gep = getelementptr inbounds { i64, i64 }, ptr %err.ctx.gep, i32 0, i32 1
  store i64 0, ptr %err.ctx1.gep, align 8
  %err.p2i = ptrtoint ptr %err.alloc to i64
  br label %m.rd.done

m.rd.done:                                        ; preds = %m.rd.miss, %m.rd.hit
  %m.rd.tag = phi i1 [ true, %m.rd.hit ], [ false, %m.rd.miss ]
  %m.rd.pay = phi i64 [ %m.rd.p2i, %m.rd.hit ], [ %err.p2i, %m.rd.miss ]
  %ram.tag = insertvalue { i1, i64 } zeroinitializer, i1 %m.rd.tag, 0
  %ram.pay = insertvalue { i1, i64 } %ram.tag, i64 %m.rd.pay, 1
  br i1 %m.rd.tag, label %choice.then20, label %choice.else

mk.eq.then:                                       ; preds = %m.rd.found
  %mk.sdata = getelementptr inbounds { i64, ptr }, ptr %mk.stored, i32 0, i32 1
  %mk.sdata17 = load ptr, ptr %mk.sdata, align 8
  %mk.ndata18 = load ptr, ptr %mk.data, align 8
  %mk.memcmp = call i32 @memcmp(ptr %mk.sdata17, ptr %mk.ndata18, i64 %mk.nlen16)
  %mk.cmpeq = icmp eq i32 %mk.memcmp, 0
  br i1 %mk.cmpeq, label %m.rd.hit, label %m.rd.next

m.rd.hit:                                         ; preds = %mk.eq.then
  %m.rd.val.slot = getelementptr i64, ptr %m.vals7, i64 %m.rd.idx
  %m.rd.val = load ptr, ptr %m.rd.val.slot, align 8
  %m.rd.p2i = ptrtoint ptr %m.rd.val to i64
  br label %m.rd.done

choice.then20:                                    ; preds = %m.rd.done
  %pay.ptr = inttoptr i64 %m.rd.pay to ptr
  br label %choice.exit21

choice.else:                                      ; preds = %m.rd.done
  %eq.lhs.len29 = load i64, ptr %2, align 8
  %eq.lhs.len30 = and i64 %eq.lhs.len29, 281474976710655
  %eq.len = icmp eq i64 %eq.lhs.len30, 0
  br i1 %eq.len, label %str.eq.then, label %choice.else34

choice.exit21:                                    ; preds = %choice.then33, %choice.else34, %choice.then20
  %choice.res44 = phi ptr [ %pay.ptr, %choice.then20 ], [ %rec.alloc, %choice.then33 ], [ %fld.gep43, %choice.else34 ]
  %cmptmp = icmp sgt i64 %4, 0
  br i1 %cmptmp, label %and.1502.then, label %choice.exit85

str.eq.then:                                      ; preds = %choice.else
  %eq.lhs.data32 = load ptr, ptr %mk.data, align 8
  %eq.memcmp = call i32 @memcmp(ptr %eq.lhs.data32, ptr @str.12, i64 %eq.lhs.len30)
  %eq.cmp.zero = icmp eq i32 %eq.memcmp, 0
  br i1 %eq.cmp.zero, label %choice.then33, label %choice.else34

choice.then33:                                    ; preds = %str.eq.then
  %fld.gep37 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 62
  %fld.load38 = load ptr, ptr %fld.gep37, align 8
  %arena.cur39 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc = call ptr @dva_arena_alloc(ptr %arena.cur39, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %fld.load38, ptr %rec.alloc, align 8
  %rec.fld40 = getelementptr inbounds { ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 1
  store i64 1, ptr %rec.fld40, align 8
  %rec.fld41 = getelementptr inbounds { ptr, i64, i64 }, ptr %rec.alloc, i32 0, i32 2
  store i64 0, ptr %rec.fld41, align 8
  br label %choice.exit21

choice.else34:                                    ; preds = %choice.else, %str.eq.then
  %fld.gep43 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %fld.load, i32 0, i32 3
  br label %choice.exit21

and.1502.then:                                    ; preds = %choice.exit21
  %fld.load48 = load ptr, ptr %fld.gep2, align 8
  %m.cap50 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load48, i32 0, i32 1
  %m.cap51 = load i64, ptr %m.cap50, align 8
  %m.keys52 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load48, i32 0, i32 2
  %m.keys53 = load ptr, ptr %m.keys52, align 8
  %m.states54 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load48, i32 0, i32 4
  %m.states55 = load ptr, ptr %m.states54, align 8
  %mk.data57 = load ptr, ptr %mk.data, align 8
  %mk.len59 = load i64, ptr %2, align 8
  %mk.len60 = and i64 %mk.len59, 281474976710655
  %hash.str61 = call i64 @dva_hash_string(ptr %mk.data57, i64 %mk.len60)
  %m.capm162 = sub i64 %m.cap51, 1
  %m.idx063 = and i64 %hash.str61, %m.capm162
  br label %m.mem.loop

m.mem.loop:                                       ; preds = %m.mem.next, %and.1502.then
  %m.mem.idx = phi i64 [ %m.idx063, %and.1502.then ], [ %m.mem.idx.next, %m.mem.next ]
  %m.mem.probe64 = phi i64 [ 0, %and.1502.then ], [ %m.mem.probe.next, %m.mem.next ]
  %m.mem.reached = icmp eq i64 %m.mem.probe64, %m.cap51
  %m.mem.state.gep = getelementptr i8, ptr %m.states55, i64 %m.mem.idx
  %m.mem.state = load i8, ptr %m.mem.state.gep, align 1
  %m.mem.is.empty = icmp eq i8 %m.mem.state, 0
  %m.mem.stop = or i1 %m.mem.is.empty, %m.mem.reached
  br i1 %m.mem.stop, label %m.mem.done, label %m.mem.probe

m.mem.probe:                                      ; preds = %m.mem.loop
  %m.mem.is.tomb = icmp eq i8 %m.mem.state, 2
  br i1 %m.mem.is.tomb, label %m.mem.next, label %m.mem.found

m.mem.found:                                      ; preds = %m.mem.probe
  %m.mem.key.slot = getelementptr i64, ptr %m.keys53, i64 %m.mem.idx
  %mk.stored65 = load ptr, ptr %m.mem.key.slot, align 8
  %mk.slen67 = load i64, ptr %mk.stored65, align 8
  %mk.slen68 = and i64 %mk.slen67, 281474976710655
  %mk.nlen70 = load i64, ptr %2, align 8
  %mk.nlen71 = and i64 %mk.nlen70, 281474976710655
  %mk.lenseq72 = icmp eq i64 %mk.slen68, %mk.nlen71
  br i1 %mk.lenseq72, label %mk.eq.then73, label %m.mem.next

m.mem.next:                                       ; preds = %m.mem.found, %mk.eq.then73, %m.mem.probe
  %m.mem.idx.add = add i64 %m.mem.idx, 1
  %m.mem.idx.next = and i64 %m.mem.idx.add, %m.capm162
  %m.mem.probe.next = add i64 %m.mem.probe64, 1
  br label %m.mem.loop

m.mem.done:                                       ; preds = %mk.eq.then73, %m.mem.loop
  %m.mem.res = phi i1 [ false, %m.mem.loop ], [ true, %mk.eq.then73 ]
  %nottmp = xor i1 %m.mem.res, true
  br i1 %nottmp, label %choice.then83, label %choice.exit85

mk.eq.then73:                                     ; preds = %m.mem.found
  %mk.sdata76 = getelementptr inbounds { i64, ptr }, ptr %mk.stored65, i32 0, i32 1
  %mk.sdata77 = load ptr, ptr %mk.sdata76, align 8
  %mk.ndata79 = load ptr, ptr %mk.data, align 8
  %mk.memcmp80 = call i32 @memcmp(ptr %mk.sdata77, ptr %mk.ndata79, i64 %mk.nlen71)
  %mk.cmpeq81 = icmp eq i32 %mk.memcmp80, 0
  br i1 %mk.cmpeq81, label %m.mem.done, label %m.mem.next

choice.then83:                                    ; preds = %m.mem.done
  %fld.load88 = load ptr, ptr %choice.res44, align 8
  %arena.cur91 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc92 = call ptr @dva_arena_alloc(ptr %arena.cur91, i64 ptrtoint (ptr getelementptr ({ ptr, i64, i64 }, ptr null, i32 1) to i64))
  store ptr %fld.load88, ptr %rec.alloc92, align 8
  %rec.fld94 = getelementptr inbounds { ptr, i64, i64 }, ptr %rec.alloc92, i32 0, i32 1
  store i64 %4, ptr %rec.fld94, align 8
  %rec.fld95 = getelementptr inbounds { ptr, i64, i64 }, ptr %rec.alloc92, i32 0, i32 2
  store i64 %5, ptr %rec.fld95, align 8
  br label %choice.exit85

choice.exit85:                                    ; preds = %m.mem.done, %choice.exit21, %choice.then83
  %choice.res97 = phi ptr [ %rec.alloc92, %choice.then83 ], [ %choice.res44, %choice.exit21 ], [ %choice.res44, %m.mem.done ]
  %fld.load101 = load ptr, ptr %choice.res97, align 8
  %call.res = call ptr @"debug::#file_metadata"(ptr %fld.load, ptr %fld.load101)
  %fld.load104 = load ptr, ptr %fld.load, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load104 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %addr.ffi.int106 = ptrtoint ptr %call.res to i64
  %addr.ffi.masked107 = and i64 %addr.ffi.int106, 281474976710655
  %addr.ffi.clean108 = inttoptr i64 %addr.ffi.masked107 to ptr
  %call.res109 = call ptr @LLVMDIBuilderCreateSubroutineType(ptr %addr.ffi.clean, ptr %addr.ffi.clean108, ptr null, i32 0, i32 0)
  %eq.lhs.len112 = load i64, ptr %2, align 8
  %eq.lhs.len113 = and i64 %eq.lhs.len112, 281474976710655
  %eq.len116 = icmp eq i64 %eq.lhs.len113, 0
  br i1 %eq.len116, label %str.eq.then117, label %str.eq.merge119

str.eq.then117:                                   ; preds = %choice.exit85
  %eq.lhs.data121 = load ptr, ptr %mk.data, align 8
  %eq.memcmp123 = call i32 @memcmp(ptr %eq.lhs.data121, ptr @str.12, i64 %eq.lhs.len113)
  %eq.cmp.zero124 = icmp eq i32 %eq.memcmp123, 0
  br label %str.eq.merge119

str.eq.merge119:                                  ; preds = %choice.exit85, %str.eq.then117
  %str.eq.result125 = phi i1 [ %eq.cmp.zero124, %str.eq.then117 ], [ false, %choice.exit85 ]
  %. = select i1 %str.eq.result125, ptr %3, ptr %2
  %fld.gep133 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 65
  %fld.gep134 = getelementptr inbounds { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, ptr %fld.gep133, i32 0, i32 11
  %fld.load135 = load i1, ptr %fld.gep134, align 1
  %choice.res139 = select i1 %fld.load135, i64 1, i64 0
  %addr.ffi.int141 = ptrtoint ptr %1 to i64
  %addr.ffi.masked142 = and i64 %addr.ffi.int141, 281474976710655
  %addr.ffi.clean143 = inttoptr i64 %addr.ffi.masked142 to ptr
  %call.res144 = call i64 @LLVMGetLinkage(ptr %addr.ffi.clean143)
  %cmptmp145 = icmp eq i64 %call.res144, 8
  %choice.res149 = select i1 %cmptmp145, i64 1, i64 0
  %fld.gep151 = getelementptr inbounds { ptr, i64, i64 }, ptr %choice.res97, i32 0, i32 1
  %fld.load152 = load i64, ptr %fld.gep151, align 8
  %max = call i64 @llvm.smax.i64(i64 1, i64 %fld.load152)
  %coerce.trunc = trunc i64 %max to i32
  %fld.load155 = load ptr, ptr %fld.load, align 8
  %addr.ffi.int156 = ptrtoint ptr %fld.load155 to i64
  %addr.ffi.masked157 = and i64 %addr.ffi.int156, 281474976710655
  %addr.ffi.clean158 = inttoptr i64 %addr.ffi.masked157 to ptr
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %., i32 0, i32 1
  %arg.str.ptr164 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr166 = load i64, ptr %., align 8
  %arg.str.ptr167 = and i64 %arg.str.ptr166, 281474976710655
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr164, i64 %arg.str.ptr167
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

nulcopy:                                          ; preds = %str.eq.merge119
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr167, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len169

nulmerge:                                         ; preds = %str.eq.merge119, %nulcopy.len169
  %arg.str.ptr171 = phi ptr [ %nulcopy.buf, %nulcopy.len169 ], [ %arg.str.ptr164, %str.eq.merge119 ]
  %str.len.query173 = load i64, ptr %., align 8
  %str.len.query174 = and i64 %str.len.query173, 281474976710655
  %arg.str.ptr176 = getelementptr inbounds { i64, ptr }, ptr %3, i32 0, i32 1
  %arg.str.ptr177 = load ptr, ptr %arg.str.ptr176, align 8
  %arg.str.ptr179 = load i64, ptr %3, align 8
  %arg.str.ptr180 = and i64 %arg.str.ptr179, 281474976710655
  %nulcheck.gep181 = getelementptr i8, ptr %arg.str.ptr177, i64 %arg.str.ptr180
  %nulcheck.byte182 = load i8, ptr %nulcheck.gep181, align 1
  %nulcheck183 = icmp eq i8 %nulcheck.byte182, 0
  br i1 %nulcheck183, label %nulmerge186, label %nulcopy185

nulcopy.len169:                                   ; preds = %nulcopy
  %arena.cur170 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur170, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr164, i64 %arg.str.ptr167, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr167
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

nulcopy185:                                       ; preds = %nulmerge
  %nulcopy.len187 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr180, i64 1)
  %sum188 = extractvalue { i64, i1 } %nulcopy.len187, 0
  %ovf189 = extractvalue { i64, i1 } %nulcopy.len187, 1
  br i1 %ovf189, label %str_overflow_abort191, label %nulcopy.len190

nulmerge186:                                      ; preds = %nulmerge, %nulcopy.len190
  %arg.str.ptr196 = phi ptr [ %nulcopy.buf194, %nulcopy.len190 ], [ %arg.str.ptr177, %nulmerge ]
  %str.len.query199 = load i64, ptr %3, align 8
  %str.len.query200 = and i64 %str.len.query199, 281474976710655
  %addr.ffi.int207 = ptrtoint ptr %call.res109 to i64
  %addr.ffi.masked208 = and i64 %addr.ffi.int207, 281474976710655
  %addr.ffi.clean209 = inttoptr i64 %addr.ffi.masked208 to ptr
  %coerce.trunc213 = trunc i64 %choice.res149 to i32
  %coerce.trunc214 = trunc i64 %choice.res139 to i32
  %call.res215 = call ptr @LLVMDIBuilderCreateFunction(ptr %addr.ffi.clean158, ptr %addr.ffi.clean108, ptr %arg.str.ptr171, i64 %str.len.query174, ptr %arg.str.ptr196, i64 %str.len.query200, ptr %addr.ffi.clean108, i32 %coerce.trunc, ptr %addr.ffi.clean209, i32 %coerce.trunc213, i32 1, i32 %coerce.trunc, i32 0, i32 %coerce.trunc214)
  %addr.ffi.int221 = ptrtoint ptr %call.res215 to i64
  %addr.ffi.masked222 = and i64 %addr.ffi.int221, 281474976710655
  %addr.ffi.clean223 = inttoptr i64 %addr.ffi.masked222 to ptr
  call void @LLVMSetSubprogram(ptr %addr.ffi.clean143, ptr %addr.ffi.clean223)
  %fld.gep225 = getelementptr inbounds { ptr, ptr, ptr, { ptr, i64, i64 }, ptr, ptr, ptr }, ptr %fld.load, i32 0, i32 6
  %fld.load226 = load ptr, ptr %fld.gep225, align 8
  %fld.load231 = load ptr, ptr %choice.res97, align 8
  %arena.cur233 = load ptr, ptr @dva_active_arena_tls, align 8
  %rec.alloc234 = call ptr @dva_arena_alloc(ptr %arena.cur233, i64 ptrtoint (ptr getelementptr ({ ptr, ptr, ptr }, ptr null, i32 1) to i64))
  store ptr %call.res215, ptr %rec.alloc234, align 8
  %rec.fld236 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc234, i32 0, i32 1
  store ptr %fld.load231, ptr %rec.fld236, align 8
  %rec.fld237 = getelementptr inbounds { ptr, ptr, ptr }, ptr %rec.alloc234, i32 0, i32 2
  store ptr %., ptr %rec.fld237, align 8
  %slot.p2i = ptrtoint ptr %rec.alloc234 to i64
  %m.cap238 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load226, i32 0, i32 1
  %m.cap239 = load i64, ptr %m.cap238, align 8
  %m.keys240 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load226, i32 0, i32 2
  %m.keys241 = load ptr, ptr %m.keys240, align 8
  %m.vals242 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load226, i32 0, i32 3
  %m.vals243 = load ptr, ptr %m.vals242, align 8
  %m.states244 = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load226, i32 0, i32 4
  %m.states245 = load ptr, ptr %m.states244, align 8
  %mix.s1 = lshr i64 %addr.ffi.int221, 30
  %mix.x1 = xor i64 %addr.ffi.int221, %mix.s1
  %mix.x2 = mul i64 %mix.x1, -4658895280553007687
  %mix.s2 = lshr i64 %mix.x2, 27
  %mix.x3 = xor i64 %mix.x2, %mix.s2
  %mix.x4 = mul i64 %mix.x3, -7723592293110705685
  %mix.s3 = lshr i64 %mix.x4, 31
  %mix.res = xor i64 %mix.x4, %mix.s3
  %m.capm1246 = sub i64 %m.cap239, 1
  %m.idx0247 = and i64 %mix.res, %m.capm1246
  br label %m.loop

nulcopy.len190:                                   ; preds = %nulcopy185
  %arena.cur193 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf194 = call ptr @dva_arena_alloc(ptr %arena.cur193, i64 %sum188)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf194, ptr align 1 %arg.str.ptr177, i64 %arg.str.ptr180, i1 false)
  %nulcopy.nul195 = getelementptr i8, ptr %nulcopy.buf194, i64 %arg.str.ptr180
  store i8 0, ptr %nulcopy.nul195, align 1
  br label %nulmerge186

str_overflow_abort191:                            ; preds = %nulcopy185
  call void @dva_abort_str_overflow_msg()
  unreachable

m.loop:                                           ; preds = %m.next, %nulmerge186
  %m.idx = phi i64 [ %m.idx0247, %nulmerge186 ], [ %m.idx.next, %m.next ]
  %m.tomb248 = phi i64 [ -1, %nulmerge186 ], [ %m.next.tomb, %m.next ]
  %m.probe = phi i64 [ 0, %nulmerge186 ], [ %m.probe.next, %m.next ]
  %m.reached.cap = icmp eq i64 %m.probe, %m.cap239
  %m.state.gep = getelementptr i8, ptr %m.states245, i64 %m.idx
  %m.state = load i8, ptr %m.state.gep, align 1
  %m.is.empty = icmp eq i8 %m.state, 0
  %m.stop = or i1 %m.is.empty, %m.reached.cap
  br i1 %m.stop, label %m.empty, label %m.check.tomb

m.check.tomb:                                     ; preds = %m.loop
  %m.is.tomb = icmp eq i8 %m.state, 2
  br i1 %m.is.tomb, label %m.tomb, label %m.found

m.tomb:                                           ; preds = %m.check.tomb
  %m.has.tomb = icmp ne i64 %m.tomb248, -1
  %m.tomb.sel = select i1 %m.has.tomb, i64 %m.tomb248, i64 %m.idx
  br label %m.next

m.found:                                          ; preds = %m.check.tomb
  %m.key.slot = getelementptr i64, ptr %m.keys241, i64 %m.idx
  %mk.stored249 = load i64, ptr %m.key.slot, align 8
  %mk.eq250 = icmp eq i64 %mk.stored249, %addr.ffi.int221
  br i1 %mk.eq250, label %m.overwrite, label %m.next

m.overwrite:                                      ; preds = %m.found
  %m.val.slot = getelementptr i64, ptr %m.vals243, i64 %m.idx
  store i64 %slot.p2i, ptr %m.val.slot, align 8
  br label %m.done

m.next:                                           ; preds = %m.found, %m.tomb
  %m.next.tomb = phi i64 [ %m.tomb.sel, %m.tomb ], [ %m.tomb248, %m.found ]
  %m.idx.add = add i64 %m.idx, 1
  %m.idx.next = and i64 %m.idx.add, %m.capm1246
  %m.probe.next = add i64 %m.probe, 1
  br label %m.loop

m.empty:                                          ; preds = %m.loop
  %m.grow.cnt = load i64, ptr %fld.load226, align 8
  %m.grow.tm.p = getelementptr inbounds { i64, i64, ptr, ptr, ptr, i64 }, ptr %fld.load226, i32 0, i32 5
  %m.grow.tm = load i64, ptr %m.grow.tm.p, align 8
  %m.occupied = add i64 %m.grow.cnt, %m.grow.tm
  %m.c.plus = add i64 %m.occupied, 1
  %m.c.lhs = mul i64 %m.c.plus, 4
  %m.c.rhs = mul i64 %m.cap239, 3
  %m.need.grow = icmp sgt i64 %m.c.lhs, %m.c.rhs
  br i1 %m.need.grow, label %m.grow, label %m.ins.slot

m.done:                                           ; preds = %m.overwrite330, %m.empty332, %m.ins.slot, %m.overwrite
  call void @"debug::position"(ptr %0, ptr %choice.res97)
  br label %choice.exit

m.grow:                                           ; preds = %m.empty
  %m.old.cap251 = load i64, ptr %m.cap238, align 8
  %m.old.keys252 = load ptr, ptr %m.keys240, align 8
  %m.old.vals253 = load ptr, ptr %m.vals242, align 8
  %m.old.states254 = load ptr, ptr %m.states244, align 8
  %m.double.cap = mul i64 %m.old.cap251, 2
  %m.live.x2 = mul i64 %m.grow.cnt, 2
  %m.should.double = icmp sgt i64 %m.live.x2, %m.old.cap251
  %m.new.cap = select i1 %m.should.double, i64 %m.double.cap, i64 %m.old.cap251
  %m.gk.bytes = mul i64 %m.new.cap, 8
  %arena.cur256 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gk = call ptr @dva_arena_alloc(ptr %arena.cur256, i64 %m.gk.bytes)
  %arena.cur257 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gv = call ptr @dva_arena_alloc(ptr %arena.cur257, i64 %m.gk.bytes)
  %arena.cur258 = load ptr, ptr @dva_active_arena_tls, align 8
  %m.gs = call ptr @dva_arena_alloc(ptr %arena.cur258, i64 %m.new.cap)
  call void @llvm.memset.p0.i64(ptr align 1 %m.gs, i8 0, i64 %m.new.cap, i1 false)
  store i64 %m.new.cap, ptr %m.cap238, align 8
  store ptr %m.gk, ptr %m.keys240, align 8
  store ptr %m.gv, ptr %m.vals242, align 8
  store ptr %m.gs, ptr %m.states244, align 8
  store i64 0, ptr %fld.load226, align 8
  store i64 0, ptr %m.grow.tm.p, align 8
  br label %m.re.loop

m.ins.slot:                                       ; preds = %m.empty
  %m.use.tomb366 = icmp ne i64 %m.tomb248, -1
  %m.ins.idx367 = select i1 %m.use.tomb366, i64 %m.tomb248, i64 %m.idx
  %m.key.slot368 = getelementptr i64, ptr %m.keys241, i64 %m.ins.idx367
  store i64 %addr.ffi.int221, ptr %m.key.slot368, align 8
  %m.val.slot369 = getelementptr i64, ptr %m.vals243, i64 %m.ins.idx367
  store i64 %slot.p2i, ptr %m.val.slot369, align 8
  %m.ins.state.slot370 = getelementptr i8, ptr %m.states245, i64 %m.ins.idx367
  store i8 1, ptr %m.ins.state.slot370, align 1
  %m.count372 = load i64, ptr %fld.load226, align 8
  %m.count.next373 = add i64 %m.count372, 1
  store i64 %m.count.next373, ptr %fld.load226, align 8
  %m.ins.tombs376 = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec377 = select i1 %m.use.tomb366, i64 1, i64 0
  %m.ins.tombs.next378 = sub i64 %m.ins.tombs376, %m.tomb.dec377
  store i64 %m.ins.tombs.next378, ptr %m.grow.tm.p, align 8
  br label %m.done

m.re.loop:                                        ; preds = %m.re.cont, %m.grow
  %m.re.i = phi i64 [ 0, %m.grow ], [ %m.re.i.next, %m.re.cont ]
  %m.re.lt = icmp slt i64 %m.re.i, %m.old.cap251
  br i1 %m.re.lt, label %m.re.body, label %m.re.done

m.re.body:                                        ; preds = %m.re.loop
  %m.re.state.gep = getelementptr i8, ptr %m.old.states254, i64 %m.re.i
  %m.re.state = load i8, ptr %m.re.state.gep, align 1
  %m.re.occ = icmp eq i8 %m.re.state, 1
  br i1 %m.re.occ, label %m.re.ins, label %m.re.cont

m.re.cont:                                        ; preds = %m.overwrite281, %m.empty283, %m.re.body
  %m.re.i.next = add i64 %m.re.i, 1
  br label %m.re.loop

m.re.done:                                        ; preds = %m.re.loop
  %m.cap309 = load i64, ptr %m.cap238, align 8
  %m.keys311 = load ptr, ptr %m.keys240, align 8
  %m.vals313 = load ptr, ptr %m.vals242, align 8
  %m.states315 = load ptr, ptr %m.states244, align 8
  %m.capm1324 = sub i64 %m.cap309, 1
  %m.idx0325 = and i64 %mix.res, %m.capm1324
  br label %m.loop326

m.re.ins:                                         ; preds = %m.re.body
  %m.re.key.slot = getelementptr i64, ptr %m.old.keys252, i64 %m.re.i
  %m.re.val.slot = getelementptr i64, ptr %m.old.vals253, i64 %m.re.i
  %m.re.key = load i64, ptr %m.re.key.slot, align 8
  %m.re.val = load i64, ptr %m.re.val.slot, align 8
  %m.cap260 = load i64, ptr %m.cap238, align 8
  %m.keys262 = load ptr, ptr %m.keys240, align 8
  %m.vals264 = load ptr, ptr %m.vals242, align 8
  %m.states266 = load ptr, ptr %m.states244, align 8
  %mix.s1267 = lshr i64 %m.re.key, 30
  %mix.x1268 = xor i64 %m.re.key, %mix.s1267
  %mix.x2269 = mul i64 %mix.x1268, -4658895280553007687
  %mix.s2270 = lshr i64 %mix.x2269, 27
  %mix.x3271 = xor i64 %mix.x2269, %mix.s2270
  %mix.x4272 = mul i64 %mix.x3271, -7723592293110705685
  %mix.s3273 = lshr i64 %mix.x4272, 31
  %mix.res274 = xor i64 %mix.x4272, %mix.s3273
  %m.capm1275 = sub i64 %m.cap260, 1
  %m.idx0276 = and i64 %mix.res274, %m.capm1275
  br label %m.loop277

m.loop277:                                        ; preds = %m.next282, %m.re.ins
  %m.idx285 = phi i64 [ %m.idx0276, %m.re.ins ], [ %m.idx.next302, %m.next282 ]
  %m.tomb286 = phi i64 [ -1, %m.re.ins ], [ %m.next.tomb300, %m.next282 ]
  %m.probe287 = phi i64 [ 0, %m.re.ins ], [ %m.probe.next303, %m.next282 ]
  %m.reached.cap288 = icmp eq i64 %m.probe287, %m.cap260
  %m.state.gep289 = getelementptr i8, ptr %m.states266, i64 %m.idx285
  %m.state290 = load i8, ptr %m.state.gep289, align 1
  %m.is.empty291 = icmp eq i8 %m.state290, 0
  %m.stop292 = or i1 %m.is.empty291, %m.reached.cap288
  br i1 %m.stop292, label %m.empty283, label %m.check.tomb278

m.check.tomb278:                                  ; preds = %m.loop277
  %m.is.tomb293 = icmp eq i8 %m.state290, 2
  br i1 %m.is.tomb293, label %m.tomb279, label %m.found280

m.tomb279:                                        ; preds = %m.check.tomb278
  %m.has.tomb294 = icmp ne i64 %m.tomb286, -1
  %m.tomb.sel295 = select i1 %m.has.tomb294, i64 %m.tomb286, i64 %m.idx285
  br label %m.next282

m.found280:                                       ; preds = %m.check.tomb278
  %m.key.slot296 = getelementptr i64, ptr %m.keys262, i64 %m.idx285
  %mk.stored297 = load i64, ptr %m.key.slot296, align 8
  %mk.eq298 = icmp eq i64 %mk.stored297, %m.re.key
  br i1 %mk.eq298, label %m.overwrite281, label %m.next282

m.overwrite281:                                   ; preds = %m.found280
  %m.val.slot299 = getelementptr i64, ptr %m.vals264, i64 %m.idx285
  store i64 %m.re.val, ptr %m.val.slot299, align 8
  br label %m.re.cont

m.next282:                                        ; preds = %m.found280, %m.tomb279
  %m.next.tomb300 = phi i64 [ %m.tomb.sel295, %m.tomb279 ], [ %m.tomb286, %m.found280 ]
  %m.idx.add301 = add i64 %m.idx285, 1
  %m.idx.next302 = and i64 %m.idx.add301, %m.capm1275
  %m.probe.next303 = add i64 %m.probe287, 1
  br label %m.loop277

m.empty283:                                       ; preds = %m.loop277
  %m.use.tomb = icmp ne i64 %m.tomb286, -1
  %m.ins.idx = select i1 %m.use.tomb, i64 %m.tomb286, i64 %m.idx285
  %m.key.slot304 = getelementptr i64, ptr %m.keys262, i64 %m.ins.idx
  store i64 %m.re.key, ptr %m.key.slot304, align 8
  %m.val.slot305 = getelementptr i64, ptr %m.vals264, i64 %m.ins.idx
  store i64 %m.re.val, ptr %m.val.slot305, align 8
  %m.ins.state.slot = getelementptr i8, ptr %m.states266, i64 %m.ins.idx
  store i8 1, ptr %m.ins.state.slot, align 1
  %m.count306 = load i64, ptr %fld.load226, align 8
  %m.count.next = add i64 %m.count306, 1
  store i64 %m.count.next, ptr %fld.load226, align 8
  %m.ins.tombs = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec = select i1 %m.use.tomb, i64 1, i64 0
  %m.ins.tombs.next = sub i64 %m.ins.tombs, %m.tomb.dec
  store i64 %m.ins.tombs.next, ptr %m.grow.tm.p, align 8
  br label %m.re.cont

m.loop326:                                        ; preds = %m.next331, %m.re.done
  %m.idx334 = phi i64 [ %m.idx0325, %m.re.done ], [ %m.idx.next351, %m.next331 ]
  %m.tomb335 = phi i64 [ -1, %m.re.done ], [ %m.next.tomb349, %m.next331 ]
  %m.probe336 = phi i64 [ 0, %m.re.done ], [ %m.probe.next352, %m.next331 ]
  %m.reached.cap337 = icmp eq i64 %m.probe336, %m.cap309
  %m.state.gep338 = getelementptr i8, ptr %m.states315, i64 %m.idx334
  %m.state339 = load i8, ptr %m.state.gep338, align 1
  %m.is.empty340 = icmp eq i8 %m.state339, 0
  %m.stop341 = or i1 %m.is.empty340, %m.reached.cap337
  br i1 %m.stop341, label %m.empty332, label %m.check.tomb327

m.check.tomb327:                                  ; preds = %m.loop326
  %m.is.tomb342 = icmp eq i8 %m.state339, 2
  br i1 %m.is.tomb342, label %m.tomb328, label %m.found329

m.tomb328:                                        ; preds = %m.check.tomb327
  %m.has.tomb343 = icmp ne i64 %m.tomb335, -1
  %m.tomb.sel344 = select i1 %m.has.tomb343, i64 %m.tomb335, i64 %m.idx334
  br label %m.next331

m.found329:                                       ; preds = %m.check.tomb327
  %m.key.slot345 = getelementptr i64, ptr %m.keys311, i64 %m.idx334
  %mk.stored346 = load i64, ptr %m.key.slot345, align 8
  %mk.eq347 = icmp eq i64 %mk.stored346, %addr.ffi.int221
  br i1 %mk.eq347, label %m.overwrite330, label %m.next331

m.overwrite330:                                   ; preds = %m.found329
  %m.val.slot348 = getelementptr i64, ptr %m.vals313, i64 %m.idx334
  store i64 %slot.p2i, ptr %m.val.slot348, align 8
  br label %m.done

m.next331:                                        ; preds = %m.found329, %m.tomb328
  %m.next.tomb349 = phi i64 [ %m.tomb.sel344, %m.tomb328 ], [ %m.tomb335, %m.found329 ]
  %m.idx.add350 = add i64 %m.idx334, 1
  %m.idx.next351 = and i64 %m.idx.add350, %m.capm1324
  %m.probe.next352 = add i64 %m.probe336, 1
  br label %m.loop326

m.empty332:                                       ; preds = %m.loop326
  %m.use.tomb353 = icmp ne i64 %m.tomb335, -1
  %m.ins.idx354 = select i1 %m.use.tomb353, i64 %m.tomb335, i64 %m.idx334
  %m.key.slot355 = getelementptr i64, ptr %m.keys311, i64 %m.ins.idx354
  store i64 %addr.ffi.int221, ptr %m.key.slot355, align 8
  %m.val.slot356 = getelementptr i64, ptr %m.vals313, i64 %m.ins.idx354
  store i64 %slot.p2i, ptr %m.val.slot356, align 8
  %m.ins.state.slot357 = getelementptr i8, ptr %m.states315, i64 %m.ins.idx354
  store i8 1, ptr %m.ins.state.slot357, align 1
  %m.count359 = load i64, ptr %fld.load226, align 8
  %m.count.next360 = add i64 %m.count359, 1
  store i64 %m.count.next360, ptr %fld.load226, align 8
  %m.ins.tombs363 = load i64, ptr %m.grow.tm.p, align 8
  %m.tomb.dec364 = select i1 %m.use.tomb353, i64 1, i64 0
  %m.ins.tombs.next365 = sub i64 %m.ins.tombs363, %m.tomb.dec364
  store i64 %m.ins.tombs.next365, ptr %m.grow.tm.p, align 8
  br label %m.done
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #0

define void @"debug::emit_trace"(ptr %0) #3 {
entry:
  %call.res = call ptr @LLVMVoidType()
  %call.res1 = call ptr @"types::fn_type0"(ptr %call.res)
  %fld.load = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load2 = load ptr, ptr @"var.debug::#stack_trace_name", align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load2, i32 0, i32 1
  %arg.str.ptr3 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr5 = load i64, ptr %var.load2, align 8
  %arg.str.ptr6 = and i64 %arg.str.ptr5, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr5, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

str_ok:                                           ; preds = %tag.slow_check, %entry
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr3, i64 %arg.str.ptr6
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

tag.slow_check:                                   ; preds = %entry
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr6, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len8

nulmerge:                                         ; preds = %str_ok, %nulcopy.len8
  %arg.str.ptr9 = phi ptr [ %nulcopy.buf, %nulcopy.len8 ], [ %arg.str.ptr3, %str_ok ]
  %call.res10 = call ptr @LLVMGetNamedFunction(ptr %addr.ffi.clean, ptr %arg.str.ptr9)
  %niche.ne.null = icmp ne ptr %call.res10, null
  br i1 %niche.ne.null, label %choice.exit, label %choice.else

nulcopy.len8:                                     ; preds = %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr3, i64 %arg.str.ptr6, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr6
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

choice.else:                                      ; preds = %nulmerge
  %fld.load14 = load ptr, ptr %0, align 8
  %addr.ffi.int15 = ptrtoint ptr %fld.load14 to i64
  %addr.ffi.masked16 = and i64 %addr.ffi.int15, 281474976710655
  %addr.ffi.clean17 = inttoptr i64 %addr.ffi.masked16 to ptr
  %var.load18 = load ptr, ptr @"var.debug::#stack_trace_name", align 8
  %arg.str.ptr19 = getelementptr inbounds { i64, ptr }, ptr %var.load18, i32 0, i32 1
  %arg.str.ptr20 = load ptr, ptr %arg.str.ptr19, align 8
  %arg.str.ptr22 = load i64, ptr %var.load18, align 8
  %arg.str.ptr23 = and i64 %arg.str.ptr22, 281474976710655
  %str.tag24 = lshr i64 %arg.str.ptr22, 48
  %tag.immortal26 = icmp eq i64 %str.tag24, 0
  %active.gen27 = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current28 = icmp eq i64 %str.tag24, %active.gen27
  %tag.fast.ok29 = or i1 %tag.immortal26, %tag.current28
  br i1 %tag.fast.ok29, label %str_ok25, label %tag.slow_check30

choice.exit:                                      ; preds = %nulmerge, %nulmerge36
  %choice.res = phi ptr [ %call.res51, %nulmerge36 ], [ %call.res10, %nulmerge ]
  %call.res60 = call ptr @"types::call0"(ptr %0, ptr %call.res1, ptr %choice.res, ptr @str.12.struct)
  ret void

str_ok25:                                         ; preds = %tag.slow_check30, %choice.else
  %nulcheck.gep31 = getelementptr i8, ptr %arg.str.ptr20, i64 %arg.str.ptr23
  %nulcheck.byte32 = load i8, ptr %nulcheck.gep31, align 1
  %nulcheck33 = icmp eq i8 %nulcheck.byte32, 0
  br i1 %nulcheck33, label %nulmerge36, label %nulcopy35

tag.slow_check30:                                 ; preds = %choice.else
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag24)
  br label %str_ok25

nulcopy35:                                        ; preds = %str_ok25
  %nulcopy.len37 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr23, i64 1)
  %sum38 = extractvalue { i64, i1 } %nulcopy.len37, 0
  %ovf39 = extractvalue { i64, i1 } %nulcopy.len37, 1
  br i1 %ovf39, label %str_overflow_abort41, label %nulcopy.len40

nulmerge36:                                       ; preds = %str_ok25, %nulcopy.len40
  %arg.str.ptr46 = phi ptr [ %nulcopy.buf44, %nulcopy.len40 ], [ %arg.str.ptr20, %str_ok25 ]
  %addr.ffi.int48 = ptrtoint ptr %call.res1 to i64
  %addr.ffi.masked49 = and i64 %addr.ffi.int48, 281474976710655
  %addr.ffi.clean50 = inttoptr i64 %addr.ffi.masked49 to ptr
  %call.res51 = call ptr @LLVMAddFunction(ptr %addr.ffi.clean17, ptr %arg.str.ptr46, ptr %addr.ffi.clean50)
  %addr.ffi.int53 = ptrtoint ptr %call.res51 to i64
  %addr.ffi.masked54 = and i64 %addr.ffi.int53, 281474976710655
  %addr.ffi.clean55 = inttoptr i64 %addr.ffi.masked54 to ptr
  call void @LLVMSetLinkage(ptr %addr.ffi.clean55, i64 8)
  br label %choice.exit

nulcopy.len40:                                    ; preds = %nulcopy35
  %arena.cur43 = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf44 = call ptr @dva_arena_alloc(ptr %arena.cur43, i64 %sum38)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf44, ptr align 1 %arg.str.ptr20, i64 %arg.str.ptr23, i1 false)
  %nulcopy.nul45 = getelementptr i8, ptr %nulcopy.buf44, i64 %arg.str.ptr23
  store i8 0, ptr %nulcopy.nul45, align 1
  br label %nulmerge36

str_overflow_abort41:                             ; preds = %nulcopy35
  call void @dva_abort_str_overflow_msg()
  unreachable
}

declare ptr @"types::fn_type0"(ptr) #3

declare ptr @"types::call0"(ptr, ptr, ptr, ptr) #3

define void @"debug::finish"(ptr %0) #3 {
entry:
  %fld.gep = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 71
  %fld.load = load ptr, ptr %fld.gep, align 8
  %niche.ne.null = icmp ne ptr %fld.load, null
  br i1 %niche.ne.null, label %choice.then, label %choice.exit

choice.then:                                      ; preds = %entry
  %fld.load3 = load ptr, ptr %0, align 8
  %addr.ffi.int = ptrtoint ptr %fld.load3 to i64
  %addr.ffi.masked = and i64 %addr.ffi.int, 281474976710655
  %addr.ffi.clean = inttoptr i64 %addr.ffi.masked to ptr
  %var.load4 = load ptr, ptr @"var.debug::#stack_trace_name", align 8
  %arg.str.ptr = getelementptr inbounds { i64, ptr }, ptr %var.load4, i32 0, i32 1
  %arg.str.ptr5 = load ptr, ptr %arg.str.ptr, align 8
  %arg.str.ptr7 = load i64, ptr %var.load4, align 8
  %arg.str.ptr8 = and i64 %arg.str.ptr7, 281474976710655
  %str.tag = lshr i64 %arg.str.ptr7, 48
  %tag.immortal = icmp eq i64 %str.tag, 0
  %active.gen = load i64, ptr @dva_active_gen_tls, align 8
  %tag.current = icmp eq i64 %str.tag, %active.gen
  %tag.fast.ok = or i1 %tag.immortal, %tag.current
  br i1 %tag.fast.ok, label %str_ok, label %tag.slow_check

choice.exit:                                      ; preds = %choice.else48, %entry
  ret void

str_ok:                                           ; preds = %tag.slow_check, %choice.then
  %nulcheck.gep = getelementptr i8, ptr %arg.str.ptr5, i64 %arg.str.ptr8
  %nulcheck.byte = load i8, ptr %nulcheck.gep, align 1
  %nulcheck = icmp eq i8 %nulcheck.byte, 0
  br i1 %nulcheck, label %nulmerge, label %nulcopy

tag.slow_check:                                   ; preds = %choice.then
  call void @dva_validate_tag_or_abort_stale_str_msg(i64 %str.tag)
  br label %str_ok

nulcopy:                                          ; preds = %str_ok
  %nulcopy.len = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %arg.str.ptr8, i64 1)
  %sum = extractvalue { i64, i1 } %nulcopy.len, 0
  %ovf = extractvalue { i64, i1 } %nulcopy.len, 1
  br i1 %ovf, label %str_overflow_abort, label %nulcopy.len10

nulmerge:                                         ; preds = %str_ok, %nulcopy.len10
  %arg.str.ptr11 = phi ptr [ %nulcopy.buf, %nulcopy.len10 ], [ %arg.str.ptr5, %str_ok ]
  %call.res = call ptr @LLVMGetNamedFunction(ptr %addr.ffi.clean, ptr %arg.str.ptr11)
  %fld.gep13 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 65
  %fld.gep14 = getelementptr inbounds { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, ptr %fld.gep13, i32 0, i32 1
  %fld.load15 = load i1, ptr %fld.gep14, align 1
  %nottmp = xor i1 %fld.load15, true
  br i1 %nottmp, label %and.1503.then, label %choice.exit20

nulcopy.len10:                                    ; preds = %nulcopy
  %arena.cur = load ptr, ptr @dva_active_arena_tls, align 8
  %nulcopy.buf = call ptr @dva_arena_alloc(ptr %arena.cur, i64 %sum)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %nulcopy.buf, ptr align 1 %arg.str.ptr5, i64 %arg.str.ptr8, i1 false)
  %nulcopy.nul = getelementptr i8, ptr %nulcopy.buf, i64 %arg.str.ptr8
  store i8 0, ptr %nulcopy.nul, align 1
  br label %nulmerge

str_overflow_abort:                               ; preds = %nulcopy
  call void @dva_abort_str_overflow_msg()
  unreachable

and.1503.then:                                    ; preds = %nulmerge
  %call.res17 = call i1 @"types::is_wasm_target"(ptr %0)
  %nottmp18 = xor i1 %call.res17, true
  br i1 %nottmp18, label %choice.then19, label %choice.exit20

choice.then19:                                    ; preds = %and.1503.then
  %call.res22 = call ptr @"debug::#stack_head"(ptr %0)
  %addr.is.null = icmp eq ptr %call.res22, null
  br i1 %addr.is.null, label %addr.null, label %choice.exit20

choice.exit20:                                    ; preds = %choice.then19, %and.1503.then, %nulmerge
  %choice.res = phi ptr [ null, %nulmerge ], [ null, %and.1503.then ], [ %call.res22, %choice.then19 ]
  %niche.ne.null25 = icmp ne ptr %choice.res, null
  %niche.ne.null30 = icmp ne ptr %call.res, null
  %or.cond = select i1 %niche.ne.null25, i1 %niche.ne.null30, i1 false
  br i1 %or.cond, label %choice.then31, label %choice.exit27

addr.null:                                        ; preds = %choice.then19
  call void @dva_abort_null_addr()
  unreachable

choice.exit27:                                    ; preds = %choice.then31, %choice.exit20
  %fld.load39 = load ptr, ptr %0, align 8
  %addr.ffi.int40 = ptrtoint ptr %fld.load39 to i64
  %addr.ffi.masked41 = and i64 %addr.ffi.int40, 281474976710655
  %addr.ffi.clean42 = inttoptr i64 %addr.ffi.masked41 to ptr
  %call.res43 = call ptr @LLVMGetFirstFunction(ptr %addr.ffi.clean42)
  br label %loop.header.1504

choice.then31:                                    ; preds = %choice.exit20
  call void @"debug::#define_trace"(ptr %0, ptr %choice.res, ptr %call.res)
  br label %choice.exit27

loop.header.1504:                                 ; preds = %choice.then47, %choice.exit27
  %"var.next_fn'.0" = phi ptr [ %call.res43, %choice.exit27 ], [ %call.res61, %choice.then47 ]
  %loop.idx.1504.0 = phi i64 [ 0, %choice.exit27 ], [ %loop.next, %choice.then47 ]
  %niche.ne.null46 = icmp ne ptr %"var.next_fn'.0", null
  br i1 %niche.ne.null46, label %choice.then47, label %choice.else48

choice.then47:                                    ; preds = %loop.header.1504
  call void @"debug::#finish_function"(ptr %0, ptr %fld.load, ptr %"var.next_fn'.0", ptr %choice.res, ptr %call.res)
  %addr.ffi.int58 = ptrtoint ptr %"var.next_fn'.0" to i64
  %addr.ffi.masked59 = and i64 %addr.ffi.int58, 281474976710655
  %addr.ffi.clean60 = inttoptr i64 %addr.ffi.masked59 to ptr
  %call.res61 = call ptr @LLVMGetNextFunction(ptr %addr.ffi.clean60)
  %loop.next = add i64 %loop.idx.1504.0, 1
  br label %loop.header.1504

choice.else48:                                    ; preds = %loop.header.1504
  %fld.gep63 = getelementptr inbounds { ptr, ptr, ptr, ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, { ptr, ptr }, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, i64, { ptr, i1, i1, ptr, ptr, i1, ptr, i1, ptr, i1, i1, i1, i1, i1, ptr }, i1, i1, ptr, ptr, ptr, ptr }, ptr %0, i32 0, i32 1
  %fld.load64 = load ptr, ptr %fld.gep63, align 8
  %addr.ffi.int65 = ptrtoint ptr %fld.load64 to i64
  %addr.ffi.masked66 = and i64 %addr.ffi.int65, 281474976710655
  %addr.ffi.clean67 = inttoptr i64 %addr.ffi.masked66 to ptr
  call void @LLVMSetCurrentDebugLocation2(ptr %addr.ffi.clean67, ptr null)
  %fld.load70 = load ptr, ptr %fld.load, align 8
  %addr.ffi.int71 = ptrtoint ptr %fld.load70 to i64
  %addr.ffi.masked72 = and i64 %addr.ffi.int71, 281474976710655
  %addr.ffi.clean73 = inttoptr i64 %addr.ffi.masked72 to ptr
  call void @LLVMDIBuilderFinalize(ptr %addr.ffi.clean73)
  br label %choice.exit
}

declare i1 @"types::is_wasm_target"(ptr) #3

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { alwaysinline "nounwind" }
attributes #2 = { noinline "nounwind" }
attributes #3 = { "nounwind" }
attributes #4 = { cold noreturn "nounwind" }
attributes #5 = { cold noinline noreturn "nounwind" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { cold noinline "nounwind" }
