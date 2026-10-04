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
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__dva_global_init_llvm, ptr null }]

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

define internal void @__dva_global_init_llvm() #1 {
entry:
  ret void
}

declare ptr @LLVMModuleCreateWithName(ptr)

declare void @LLVMDisposeModule(ptr)

declare i64 @LLVMPrintModuleToFile(ptr, ptr, ptr)

declare void @LLVMDisposeMessage(ptr)

declare i64 @LLVMVerifyModule(ptr, i64, ptr)

declare ptr @LLVMCreateBuilder()

declare void @LLVMDisposeBuilder(ptr)

declare ptr @LLVMVoidType()

declare ptr @LLVMInt64Type()

declare ptr @LLVMInt32Type()

declare ptr @LLVMInt16Type()

declare ptr @LLVMInt8Type()

declare ptr @LLVMInt1Type()

declare ptr @LLVMDoubleType()

declare ptr @LLVMFloatType()

declare ptr @LLVMPointerType(ptr, i64)

declare ptr @LLVMArrayType(ptr, i64)

declare ptr @LLVMStructType(ptr, i64, i64)

declare ptr @LLVMStructGetTypeAtIndex(ptr, i64)

declare i64 @LLVMCountStructElementTypes(ptr)

declare ptr @LLVMSizeOf(ptr)

declare ptr @LLVMFunctionType(ptr, ptr, i64, i64)

declare ptr @LLVMAddFunction(ptr, ptr, ptr)

declare ptr @LLVMGetParam(ptr, i64)

declare i64 @LLVMCountParams(ptr)

declare ptr @LLVMGetNamedFunction(ptr, ptr)

declare ptr @LLVMAppendBasicBlock(ptr, ptr)

declare void @LLVMPositionBuilderAtEnd(ptr, ptr)

declare ptr @LLVMConstNull(ptr)

declare ptr @LLVMConstInt(ptr, i64, i64)

declare i64 @LLVMIsConstant(ptr)

declare i64 @LLVMConstIntGetZExtValue(ptr)

declare ptr @LLVMConstReal(ptr, double)

declare ptr @LLVMConstString(ptr, i64, i64)

declare ptr @LLVMConstGEP2(ptr, ptr, ptr, i64)

declare ptr @LLVMConstStruct(ptr, i64, i64)

declare ptr @LLVMConstArray2(ptr, ptr, i64)

declare ptr @LLVMConstPtrToInt(ptr, ptr)

declare ptr @LLVMConstPointerCast(ptr, ptr)

declare ptr @LLVMConstAdd(ptr, ptr)

declare ptr @LLVMAddGlobal(ptr, ptr, ptr)

declare ptr @LLVMGetNamedGlobal(ptr, ptr)

declare void @LLVMSetInitializer(ptr, ptr)

declare void @LLVMSetGlobalConstant(ptr, i64)

declare void @LLVMSetUnnamedAddr(ptr, i64)

declare void @LLVMSetLinkage(ptr, i64)

declare void @LLVMSetSection(ptr, ptr)

declare void @LLVMSetThreadLocal(ptr, i64)

declare ptr @LLVMBuildAlloca(ptr, ptr, ptr)

declare ptr @LLVMBuildStore(ptr, ptr, ptr)

declare void @LLVMSetAlignment(ptr, i64)

declare ptr @LLVMConstVector(ptr, i64)

declare ptr @LLVMBuildInsertElement(ptr, ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildExtractElement(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildShuffleVector(ptr, ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildLoad2(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildGEP2(ptr, ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMBuildStructGEP2(ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMBuildCall2(ptr, ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMBuildAdd(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildSub(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildMul(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildSDiv(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildUDiv(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildSRem(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildURem(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFAdd(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFSub(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFMul(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFDiv(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFRem(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildICmp(ptr, i64, ptr, ptr, ptr)

declare ptr @LLVMBuildAnd(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildOr(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildShl(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildLShr(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFCmp(ptr, i64, ptr, ptr, ptr)

declare i64 @LLVMCanValueUseFastMathFlags(ptr)

declare i64 @LLVMGetFastMathFlags(ptr)

declare void @LLVMSetFastMathFlags(ptr, i64)

declare ptr @LLVMBuildSIToFP(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFPToSI(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFPTrunc(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildFPExt(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildSelect(ptr, ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildBr(ptr, ptr)

declare ptr @LLVMBuildCondBr(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildPhi(ptr, ptr, ptr)

declare void @LLVMAddIncoming(ptr, ptr, ptr, i64)

declare ptr @LLVMBuildSwitch(ptr, ptr, ptr, i64)

declare void @LLVMAddCase(ptr, ptr, ptr)

declare ptr @LLVMGetInsertBlock(ptr)

declare ptr @LLVMGetBasicBlockParent(ptr)

declare ptr @LLVMGetBasicBlockTerminator(ptr)

declare ptr @LLVMBuildRet(ptr, ptr)

declare ptr @LLVMBuildRetVoid(ptr)

declare ptr @LLVMBuildUnreachable(ptr)

declare ptr @LLVMBuildSExt(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildZExt(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildPointerCast(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildIntToPtr(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildPtrToInt(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildTrunc(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildBitCast(ptr, ptr, ptr, ptr)

declare ptr @LLVMBuildMemCpy(ptr, ptr, i64, ptr, i64, ptr, i64)

declare ptr @LLVMBuildMemMove(ptr, ptr, i64, ptr, i64, ptr, i64)

declare ptr @LLVMBuildMemSet(ptr, ptr, ptr, ptr, i64)

declare ptr @LLVMBuildExtractValue(ptr, ptr, i64, ptr)

declare ptr @LLVMBuildInsertValue(ptr, ptr, ptr, i64, ptr)

declare ptr @LLVMTypeOf(ptr)

declare void @LLVMSetVolatile(ptr, i64)

declare i64 @LLVMGetIntTypeWidth(ptr)

declare ptr @LLVMBuildNot(ptr, ptr, ptr)

declare i64 @LLVMGetTypeKind(ptr)

declare ptr @LLVMGetEntryBasicBlock(ptr)

declare ptr @LLVMGetFirstInstruction(ptr)

declare void @LLVMPositionBuilderBefore(ptr, ptr)

declare void @LLVMDisposeTargetData(ptr)

declare i64 @LLVMABISizeOfType(ptr, ptr)

declare i64 @LLVMABIAlignmentOfType(ptr, ptr)

declare void @LLVMSetDataLayout(ptr, ptr)

declare void @LLVMSetTarget(ptr, ptr)

declare ptr @LLVMGetDefaultTargetTriple()

declare i64 @LLVMGetTargetFromTriple(ptr, ptr, ptr)

declare ptr @LLVMCreateTargetMachine(ptr, ptr, ptr, ptr, i64, i64, i64)

declare void @LLVMDisposeTargetMachine(ptr)

declare ptr @LLVMCreateTargetDataLayout(ptr)

declare ptr @LLVMCopyStringRepOfTargetData(ptr)

declare void @LLVMInitializeAArch64Target()

declare void @LLVMInitializeAArch64TargetInfo()

declare void @LLVMInitializeAArch64TargetMC()

declare void @LLVMInitializeAMDGPUTarget()

declare void @LLVMInitializeAMDGPUTargetInfo()

declare void @LLVMInitializeAMDGPUTargetMC()

declare void @LLVMInitializeARMTarget()

declare void @LLVMInitializeARMTargetInfo()

declare void @LLVMInitializeARMTargetMC()

declare void @LLVMInitializeAVRTarget()

declare void @LLVMInitializeAVRTargetInfo()

declare void @LLVMInitializeAVRTargetMC()

declare void @LLVMInitializeBPFTarget()

declare void @LLVMInitializeBPFTargetInfo()

declare void @LLVMInitializeBPFTargetMC()

declare void @LLVMInitializeHexagonTarget()

declare void @LLVMInitializeHexagonTargetInfo()

declare void @LLVMInitializeHexagonTargetMC()

declare void @LLVMInitializeLanaiTarget()

declare void @LLVMInitializeLanaiTargetInfo()

declare void @LLVMInitializeLanaiTargetMC()

declare void @LLVMInitializeLoongArchTarget()

declare void @LLVMInitializeLoongArchTargetInfo()

declare void @LLVMInitializeLoongArchTargetMC()

declare void @LLVMInitializeMipsTarget()

declare void @LLVMInitializeMipsTargetInfo()

declare void @LLVMInitializeMipsTargetMC()

declare void @LLVMInitializeMSP430Target()

declare void @LLVMInitializeMSP430TargetInfo()

declare void @LLVMInitializeMSP430TargetMC()

declare void @LLVMInitializeNVPTXTarget()

declare void @LLVMInitializeNVPTXTargetInfo()

declare void @LLVMInitializeNVPTXTargetMC()

declare void @LLVMInitializePowerPCTarget()

declare void @LLVMInitializePowerPCTargetInfo()

declare void @LLVMInitializePowerPCTargetMC()

declare void @LLVMInitializeRISCVTarget()

declare void @LLVMInitializeRISCVTargetInfo()

declare void @LLVMInitializeRISCVTargetMC()

declare void @LLVMInitializeSparcTarget()

declare void @LLVMInitializeSparcTargetInfo()

declare void @LLVMInitializeSparcTargetMC()

declare void @LLVMInitializeSystemZTarget()

declare void @LLVMInitializeSystemZTargetInfo()

declare void @LLVMInitializeSystemZTargetMC()

declare void @LLVMInitializeVETarget()

declare void @LLVMInitializeVETargetInfo()

declare void @LLVMInitializeVETargetMC()

declare void @LLVMInitializeWebAssemblyTarget()

declare void @LLVMInitializeWebAssemblyTargetInfo()

declare void @LLVMInitializeWebAssemblyTargetMC()

declare void @LLVMInitializeX86Target()

declare void @LLVMInitializeX86TargetInfo()

declare void @LLVMInitializeX86TargetMC()

declare void @LLVMInitializeXCoreTarget()

declare void @LLVMInitializeXCoreTargetInfo()

declare void @LLVMInitializeXCoreTargetMC()

declare void @LLVMInitializeAArch64AsmPrinter()

declare void @LLVMInitializeAMDGPUAsmPrinter()

declare void @LLVMInitializeARMAsmPrinter()

declare void @LLVMInitializeAVRAsmPrinter()

declare void @LLVMInitializeBPFAsmPrinter()

declare void @LLVMInitializeHexagonAsmPrinter()

declare void @LLVMInitializeLanaiAsmPrinter()

declare void @LLVMInitializeLoongArchAsmPrinter()

declare void @LLVMInitializeMipsAsmPrinter()

declare void @LLVMInitializeMSP430AsmPrinter()

declare void @LLVMInitializeNVPTXAsmPrinter()

declare void @LLVMInitializePowerPCAsmPrinter()

declare void @LLVMInitializeRISCVAsmPrinter()

declare void @LLVMInitializeSparcAsmPrinter()

declare void @LLVMInitializeSystemZAsmPrinter()

declare void @LLVMInitializeVEAsmPrinter()

declare void @LLVMInitializeWebAssemblyAsmPrinter()

declare void @LLVMInitializeX86AsmPrinter()

declare void @LLVMInitializeXCoreAsmPrinter()

declare ptr @LLVMOrcCreateLLJITBuilder()

declare void @LLVMOrcDisposeLLJITBuilder(ptr)

declare ptr @LLVMOrcCreateLLJIT(ptr, ptr)

declare ptr @LLVMOrcDisposeLLJIT(ptr)

declare ptr @LLVMOrcLLJITGetMainJITDylib(ptr)

declare ptr @LLVMOrcLLJITAddLLVMIRModule(ptr, ptr, ptr)

declare ptr @LLVMOrcLLJITLookup(ptr, ptr, ptr)

declare ptr @LLVMOrcCreateNewThreadSafeContext()

declare void @LLVMOrcDisposeThreadSafeContext(ptr)

declare ptr @LLVMOrcCreateNewThreadSafeModule(ptr, ptr)

declare void @LLVMOrcDisposeThreadSafeModule(ptr)

declare ptr @LLVMOrcCreateDynamicLibrarySearchGeneratorForProcess(ptr, i64, ptr, ptr)

declare void @LLVMOrcJITDylibAddGenerator(ptr, ptr)

declare ptr @LLVMGetErrorMessage(ptr)

declare void @LLVMDisposeErrorMessage(ptr)

declare void @LLVMConsumeError(ptr)

declare ptr @LLVMGetGlobalContext()

declare ptr @LLVMCreateStringAttribute(ptr, ptr, i64, ptr, i64)

declare void @LLVMAddAttributeAtIndex(ptr, i64, ptr)

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "nounwind" }
