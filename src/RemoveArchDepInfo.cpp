#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Transforms/Utils/StripNonLineTableDebugInfo.h"

#include "RemoveArchDepInfo.h"

using namespace llvm;
using namespace removeArchDepInfo;


void RemoveArchDepInfo::removeAllAttributes(Module &M) {
  for(auto &F : M){

    // Remove attributes from the function itself
    F.setAttributes(AttributeList());

    // Remove attributes from the call instructions
    for (auto &BB : F) {
      for (auto &I : BB) {
        if (auto *CI = dyn_cast<CallInst>(&I)) {
          CI->setAttributes(AttributeList());
        }
      }
    }
  }
}

void RemoveArchDepInfo::removeAllMetadata(Module &M) {

  // Remove the target triple and data layout.
  M.setTargetTriple("");
  M.setDataLayout("");
  
  // Set module flags to empty
  NamedMDNode *ModuleFlags = M.getNamedMetadata("llvm.module.flags");
  if (ModuleFlags) {
    M.eraseNamedMetadata(ModuleFlags);
  }

  // Set the string in llvm.ident to clang version 17.0.4 
  NamedMDNode *Ident = M.getNamedMetadata("llvm.ident");
  if (Ident) {
    for (unsigned i = 0; i < Ident->getNumOperands(); i++) {
        // Create a new MDNode with the clang version 17 string
        Metadata *IdentString = MDString::get(M.getContext(), "Ubuntu clang version 17.0.4 (++20231031083134+309d55140c46-1~exp1~20231031083240.62)");
        MDNode *NewIdentNode = MDNode::get(M.getContext(), IdentString);

        // Replace the old MDNode with the new one
        Ident->setOperand(i, NewIdentNode);
    }
  }

  // Set the string in producer of llvm.dbg.cu to clang version 17.0.4 
  NamedMDNode *CU_Nodes = M.getNamedMetadata("llvm.dbg.cu");
  if (CU_Nodes) {
      for (unsigned j = 0; j < CU_Nodes->getNumOperands(); ++j) {
          MDNode *CU_Node = dyn_cast<MDNode>(CU_Nodes->getOperand(j));
          if (CU_Node) {
            for (unsigned i = 0; i < CU_Node->getNumOperands(); ++i) {
                Metadata *Op = CU_Node->getOperand(i);
                if (Op && isa<MDString>(Op)) {
                    MDString *MD = dyn_cast<MDString>(Op);
                    if (MD->getString().startswith("Component:")) {
                        // Create a new MDNode with the clang version 17 string
                        Metadata *IdentString = MDString::get(M.getContext(), "Ubuntu clang version 17.0.4 (++20231031083134+309d55140c46-1~exp1~20231031083240.62)");
                        SmallVector<Metadata *, 1> Ops;
                        Ops.push_back(IdentString);
                        MDNode *NewIdentNode = MDNode::get(M.getContext(), Ops);

                        outs() << "MD->getString() = " << MD->getString() << "\n";

                        // Replace the old MDNode with the new one
                        //CU_Node->replaceOperandWith(i, NewIdentNode);
                    }
                }
            }
          }
      }
  }
  // Change the producer in "llvm.dbg.cu"
  // NamedMDNode *CU_Nodes = M.getNamedMetadata("llvm.dbg.cu");
  // if (CU_Nodes) {
  //   for (unsigned i = 0; i < CU_Nodes->getNumOperands(); i++) {
  //     MDNode *CU_Node = CU_Nodes->getOperand(i);
  //     // Delete the operands
  //     for (unsigned j = 0; j < CU_Node->getNumOperands(); j++) {
  //       CU_Node->removeOperand(j);
  //     }
  //   }
  // }
}

void RemoveArchDepInfo::InstrumentInlineASM(Module &M) {

  // Remove inline asm
  LLVMContext &Ctx = M.getContext();

  // Create a function definition for the readFromStdInRetInt function and make it static to this module.
  // In readFromStdInRetInt function, create a local variable of type int.
  // Read the value from scanf and store it in the local variable.
  // Return the local variable.
  Type *Int32Ty = Type::getInt32Ty(Ctx);
  FunctionType *ReadFromStdInTy = FunctionType::get(Int32Ty, {}, false);
  Function *ReadFromStdInFn = Function::Create(ReadFromStdInTy, Function::InternalLinkage, "readFromStdInRetInt", M);
  BasicBlock *ReadFromStdInBB = BasicBlock::Create(Ctx, "entry", ReadFromStdInFn);
  IRBuilder<> Builder(ReadFromStdInBB);
  AllocaInst *ReadFromStdInAlloca = Builder.CreateAlloca(Int32Ty);
  Value *ReadFromStdInScanfArgs[] = {Builder.CreateBitCast(ReadFromStdInAlloca, Builder.getInt8PtrTy())};
  Builder.CreateCall(M.getOrInsertFunction("scanf", FunctionType::get(Type::getInt32Ty(Ctx), {Builder.getInt8PtrTy()}, true)), ReadFromStdInScanfArgs);
  Builder.CreateRet(Builder.CreateLoad(Int32Ty, ReadFromStdInAlloca));

  for(auto &F : M){
    F.setSection("");
    for (auto &BB : F) {
      for (auto I = BB.begin(); I != BB.end(); /* no increment here */) {
        Instruction *currentInstruction = &*I;
        if (auto *CI = dyn_cast<CallInst>(currentInstruction)) {
          // Check if the instruction is an inline asm instruction.
          if (CI->isInlineAsm()) {
            // Check if the inline asm has return type int.
            if (CI->getType()->isIntegerTy(32)) {
              // Create a function type for the readFromStdInRetInt function.
              Type *Int32Ty = Type::getInt32Ty(Ctx);
              FunctionType *ReadFromStdInTy = FunctionType::get(Int32Ty, {}, false);
              FunctionCallee ReadFromStdInFn = M.getOrInsertFunction("readFromStdInRetInt", ReadFromStdInTy);
              // Create a call to the readFromStdInRetInt function.
              CallInst *readFromStdInCall = CallInst::Create(ReadFromStdInFn, {}, "", CI);
              // Replace all uses of the inline asm with the return value of the readFromStdInRetInt function.
              CI->replaceAllUsesWith(readFromStdInCall);
            }
            // Check if the inline asm has return type struct.
            else if (CI->getType()->isStructTy()) {
              // Create a call to the readFromAsmRetStruct function, if its not available.
              // That has identical retun type as the struct
              // Have a unique name for the function basing on number of elements in the struct, each time it is called.
              // Replace all uses of the inline asm with the return value of the unique function.
              // In this module create a function definition for the readFromAsmRetStruct function and make it static to this module.
              // In readFromAsmRetStruct function, create a local variable of type struct.
              // For all bytes of this struct call readFromStdInRetInt and fill with values returned by it.
              // Return the local struct.
              // Replace all uses of the inline asm with the return value of the readFromAsmRetStruct function.
              std::string readFromAsmRetStructName = "readFromAsmRetStruct";
              std::string readFromAsmRetStructNameWithNumOfElements = readFromAsmRetStructName + std::to_string(CI->getType()->getStructNumElements());
              Function *readFromAsmRetStructFn = M.getFunction(readFromAsmRetStructNameWithNumOfElements);
              if (!readFromAsmRetStructFn) {
                // Create a function type for the readFromAsmRetStruct function.
                FunctionType *ReadFromAsmRetStructTy = FunctionType::get(CI->getType(), {}, false);
                readFromAsmRetStructFn = Function::Create(ReadFromAsmRetStructTy, Function::InternalLinkage, readFromAsmRetStructNameWithNumOfElements, M);
                BasicBlock *ReadFromAsmRetStructBB = BasicBlock::Create(Ctx, "entry", readFromAsmRetStructFn);
                IRBuilder<> Builder(ReadFromAsmRetStructBB);
                AllocaInst *ReadFromAsmRetStructAlloca = Builder.CreateAlloca(CI->getType());
                for (unsigned i = 0; i < CI->getType()->getStructNumElements(); i++) {
                  Value *ReadFromAsmRetStructScanfArgs[] = {Builder.CreateBitCast(Builder.CreateStructGEP(CI->getType(), ReadFromAsmRetStructAlloca, i), Builder.getInt8PtrTy())};
                  Builder.CreateCall(M.getOrInsertFunction("scanf", FunctionType::get(Type::getInt32Ty(Ctx), {Builder.getInt8PtrTy()}, true)), ReadFromAsmRetStructScanfArgs);
                }
                Builder.CreateRet(Builder.CreateLoad(CI->getType(), ReadFromAsmRetStructAlloca));
              }
              // Create a call to the readFromAsmRetStruct function.
              CallInst *readFromAsmRetStructCall = CallInst::Create(readFromAsmRetStructFn, {}, "", CI);
              // Replace all uses of the inline asm with the return value of the readFromAsmRetStruct function.
              CI->replaceAllUsesWith(readFromAsmRetStructCall);
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
}

PreservedAnalyses RemoveArchDepInfo::run(Module &M, ModuleAnalysisManager &MAM) {
      FunctionAnalysisManager &FAM =
          MAM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();

      // Remove all metadata
      removeAllMetadata(M);

      // Remove all attributes
      removeAllAttributes(M);
    
      // Instrument inline asm
      InstrumentInlineASM(M);

      return PreservedAnalyses::none();
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