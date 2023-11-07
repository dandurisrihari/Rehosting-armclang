#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Transforms/Utils/StripNonLineTableDebugInfo.h"

using namespace llvm;

namespace {
  struct RemoveArchDepInfo : public PassInfoMixin<RemoveArchDepInfo> {
    PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM) {
      FunctionAnalysisManager &FAM =
          MAM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();

      // Remove the target triple and data layout.
      M.setTargetTriple("");
      M.setDataLayout("");

      // Remove metadata
      NamedMDNode *ModuleFlags = M.getNamedMetadata("llvm.module.flags");
      if (ModuleFlags) {
        M.eraseNamedMetadata(ModuleFlags);
      }

      NamedMDNode *Ident = M.getNamedMetadata("llvm.ident");
      if (Ident) {
        M.eraseNamedMetadata(Ident);
      }
 
      // Remove inline asm
      LLVMContext &Ctx = M.getContext();

      for(auto &F : M){
        for (auto &BB : F) {
          for (auto I = BB.begin(); I != BB.end(); /* no increment here */) {
            Instruction *currentInstruction = &*I;
            if (auto *CI = dyn_cast<CallInst>(currentInstruction)) {
              // Check if the instruction is an inline asm instruction.
              if (CI->isInlineAsm()) {
                // Check if the inline asm has return type int.
                if (CI->getType()->isIntegerTy(32)) {
                  // Create a function type for the readFromAsmRetInt function.
                  Type *Int32Ty = Type::getInt32Ty(Ctx);
                  FunctionType *ReadFromAsmTy = FunctionType::get(Int32Ty, {}, false);
                  FunctionCallee ReadFromAsmFn = M.getOrInsertFunction("readFromAsmRetInt", ReadFromAsmTy);
                  // Create a call to the readFromAsmRetInt function.
                  CallInst *readFromAsmCall = CallInst::Create(ReadFromAsmFn, {}, "", CI);
                  // Replace all uses of the inline asm with the return value of the readFromAsmRetInt function.
                  CI->replaceAllUsesWith(readFromAsmCall);
                }
                // Check if the inline asm has return type struct.
                else if (CI->getType()->isStructTy()) {
                  // for all elements in the struct
                  // Create a call to the readFromAsmRetStruct function.
                  // That has identical retun type as the struct.
                  // Replace all uses of the inline asm with the return value of the readFromAsmRetStruct function.
                  StructType *ST = dyn_cast<StructType>(CI->getType());
                  std::vector<Type *> StructElements;
                  for (unsigned i = 0; i < ST->getNumElements(); i++) {
                    StructElements.push_back(ST->getElementType(i));
                  }
                  FunctionType *ReadFromAsmStructTy = FunctionType::get(ST, {}, false);
                  FunctionCallee ReadFromAsmStructFn = M.getOrInsertFunction("readFromAsmRetStruct", ReadFromAsmStructTy);
                  CallInst *readFromAsmStructCall = CallInst::Create(ReadFromAsmStructFn, {}, "", CI);
                  CI->replaceAllUsesWith(readFromAsmStructCall);
                }
                // Erase the instruction from the basic block in all cases and increment the iterator.
                I = CI->eraseFromParent();
                continue;
              }
              // Replace all calls that have armIntrinsicPrefix
              // with a call to the readFromIntrinsic function if return type is int.
              // Remove if return type is void.
              std::string armIntrinsicPrefix = "llvm.arm.";
              if (auto CF = CI->getCalledFunction()) {
                if(CF->getName().startswith(armIntrinsicPrefix)){
                  if (CI->getType()->isIntegerTy(32)) {
                    // Create a function type for the readFromIntrinsicRetInt function.
                    Type *Int32Ty = Type::getInt32Ty(Ctx);
                    FunctionType *ReadFromIntrinsicTy = FunctionType::get(Int32Ty, {}, false);
                    FunctionCallee ReadFromIntrinsicFn = M.getOrInsertFunction("readFromIntrinsicRetInt", ReadFromIntrinsicTy);
                    // Create a call to the readFromIntrinsicRetInt function.
                    CallInst *readFromIntrinsicCall = CallInst::Create(ReadFromIntrinsicFn, {}, "", CI);
                    // Replace all uses of the intinsic with the return value of the readFromIntrinsicRetInt function.
                    CI->replaceAllUsesWith(readFromIntrinsicCall);
                  }
                  // Erase the instruction from the basic block in all cases and increment the iterator.
                  I = CI->eraseFromParent();
                  continue;                
                }
              }
            }
            // Move to the next instruction in the basic block.
            ++I;
          }
        }
      }


      return PreservedAnalyses::none();
    }
  };
}

// Register the pass with the pass manager builder.  This instructs the
// builder to call the `run` function on your pass when it is constructing
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION, "RemoveArchDepInfo", "v0.1",
    [](PassBuilder &PB) {
      PB.registerPipelineParsingCallback(
        [](StringRef Name,  ModulePassManager &MPM,
           ArrayRef<PassBuilder::PipelineElement>) {
          if (Name == "RemoveArchDepInfo") {
            MPM.addPass(RemoveArchDepInfo());
            return true;
          }
          return false;
        }
      );
    }
  };
}