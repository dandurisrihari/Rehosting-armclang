#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Transforms/Utils/StripNonLineTableDebugInfo.h"

using namespace llvm;

namespace removeArchDepInfo{

  class RemoveArchDepInfo : public PassInfoMixin<RemoveArchDepInfo> {
  
    private:
      void RemoveDependentAttributes(Module &M);
      void RemoveDependentMetadata(Module &M);
      void InstrumentInlineASM(Module &M);
      void InstrumentArmIntrinsics(Module &M);

    public:
      PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM);

  };
}