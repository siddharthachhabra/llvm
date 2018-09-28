#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
using namespace llvm;
namespace {
	struct SkeletonPass : public FunctionPass {
		static char ID;
		int arith,branch,memory;
		SkeletonPass() : FunctionPass(ID) {arith=0;branch=0;memory=0;}
// ref: http://llvm.org/doxygen/Instruction_8cpp_source.html#l00291
		virtual bool runOnFunction(Function &F) {
			for (auto &B : F) {
				for (auto &I : B) {
					if (auto *op = dyn_cast<BinaryOperator>(&I)) {
						arith++;
					}
					if (auto *op = dyn_cast<AllocaInst>(&I)) {
						memory++;
					}
					if(auto *op = dyn_cast<LoadInst>(&I)) {
						memory++;
					}
					if(auto *op = dyn_cast<StoreInst>(&I)) {
						memory++;
					}
					if(auto *op = dyn_cast<AtomicCmpXchgInst>(&I)){
						memory++;
					}
					if(auto *op = dyn_cast<AtomicRMWInst>(&I)) {
						memory++;
					}
					if(auto *op = dyn_cast<FenceInst>(&I)) {
						memory++;
					}
					if(auto *op = dyn_cast<GetElementPtrInst>(&I)) {
						memory++;
					}
					if(auto *op = dyn_cast<ReturnInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<BranchInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<SwitchInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<IndirectBrInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<InvokeInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<ResumeInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<UnreachableInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<CleanupReturnInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<CatchReturnInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<CatchPadInst>(&I)) {
						branch++;
					}
					if(auto *op = dyn_cast<CatchSwitchInst>(&I)) {
						branch++;
					}
				}
			}
			errs() <<"*****"<< F.getName()<<"*****\n";
			errs() << "Arithematic Operations:"<<arith<<"\n";
			errs() << "Branch Operations:"<<branch<<"\n";
			errs() << "Memory Operations:"<<memory<<"\n\n";
			arith=0;branch=0;memory=0;
			return false;
		}
	};
}

char SkeletonPass::ID = 0;

// Automatically enable the pass.
// http://adriansampson.net/blog/clangpass.html
static void registerSkeletonPass(const PassManagerBuilder &,
		legacy::PassManagerBase &PM) {
	PM.add(new SkeletonPass());
}
static RegisterPass<SkeletonPass> X("instrPass", "Instruction Count Pass",
		false /* Only looks at CFG */,
		false /* Analysis Pass */);
