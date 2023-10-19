#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

using namespace llvm;

namespace {
struct RemoveArchDepInfo : public PassInfoMixin<RemoveArchDepInfo> {
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    F.getParent()->setTargetTriple("x86_64-unknown-linux-gnu");
    F.getParent()->setDataLayout("e-m:e-i64:64-f80:128-n8:16:32:64-S128");
    bool Changed = false;
    // Remove inline asm
    for (auto &BB : F) {
      for (auto &I : BB) {
        if (auto *CI = dyn_cast<CallInst>(&I)) {
          if (CI->isInlineAsm()) {
            outs() << "Remove inline asm: " << *CI << "\n";
            //CI->removeFromParent();
            Changed = true;
          }
        }
      }
    }
    if (Changed) {
      return PreservedAnalyses::none();
    } else {
      return PreservedAnalyses::all();
    }
  }
};
}

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