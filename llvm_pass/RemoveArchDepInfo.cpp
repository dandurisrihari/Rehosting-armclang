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
    PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
      Module &M = *F.getParent();

      // Update the target triple and data layout to match the x86_64 target.
      M.setTargetTriple("x86_64-unknown-linux-gnu");
      M.setDataLayout("e-m:e-i64:64-f80:128-n8:16:32:64-S128");

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
      LLVMContext &Ctx = F.getContext();
      Type *Int32Ty = Type::getInt32Ty(Ctx);
      FunctionType *ReadFromAsmTy = FunctionType::get(Int32Ty, {}, false);
      FunctionCallee ReadFromAsmFn = F.getParent()->getOrInsertFunction("read_from_asm", ReadFromAsmTy);

      for (auto &BB : F) {
        for (auto I = BB.begin(); I != BB.end(); /* no increment here */) {
          Instruction *currentInstruction = &*I;
          if (auto *CI = dyn_cast<CallInst>(currentInstruction)) {
            // Check if the instruction is an inline asm instruction.
            if (CI->isInlineAsm()) {
              // Check if the inline asm has return type int.
              if (CI->getType()->isIntegerTy(32)) {
                // Create a call to the read_from_asm function.
                CallInst *readFromAsmCall = CallInst::Create(ReadFromAsmFn, {}, "", CI);
                // Replace all uses of the inline asm with the return value of the read_from_asm function.
                CI->replaceAllUsesWith(readFromAsmCall);
              }
              // Erase the instruction from the basic block and increment the iterator.
              I = CI->eraseFromParent();
              continue;
            }
            // Replace all calls that have armIntrinsicPrefix
            // with a call to the read_from_asm function if return type is int.
            // Remove if return type is void.
            std::string armIntrinsicPrefix = "llvm.arm.";
            if (auto CF = CI->getCalledFunction()) {
              if(CF->getName().startswith(armIntrinsicPrefix)){
                if (CI->getType()->isIntegerTy(32)) {
                  CallInst *readFromAsmCall = CallInst::Create(ReadFromAsmFn, {}, "", CI);
                  CI->replaceAllUsesWith(readFromAsmCall);
                }
                I = CI->eraseFromParent();
                continue;                
              }
            }
          }
          // Move to the next instruction in the basic block.
          ++I;
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
        [](StringRef Name, FunctionPassManager &FPM,
           ArrayRef<PassBuilder::PipelineElement>) {
          if (Name == "RemoveArchDepInfo") {
            FPM.addPass(RemoveArchDepInfo());
            return true;
          }
          return false;
        }
      );
    }
  };
}