#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/ADT/SCCIterator.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/CFG.h"
#include <vector>
#include <map>
#include <set>
#include <stack>
#include <sstream>
using namespace llvm;
using namespace std;
namespace {
	struct SkeletonPass : public FunctionPass {
		static char ID;
		SkeletonPass() : FunctionPass(ID) {}

		virtual bool runOnFunction(Function &F) {

		std::vector<Instruction*> worklist;
		for(inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I){
			worklist.push_back(&*I);
		}
		
		for(std::vector<Instruction*>::iterator iter = worklist.begin(); iter != worklist.end(); ++iter){
			Instruction* instr = *iter;
			errs() << "DU Chain: "<< "\n";
			for(Value::use_iterator i = instr->use_begin(), ie = instr->use_end(); i!=ie; ++i){
				Value *v = *i;
				Instruction *I = dyn_cast<Instruction>(v);
				int num=I->getNumOperands();
				for(int k=0;k<num;k++){
					errs()<< I->getOperand(k)<<" ";
				}
				errs()<<"\n";
			}
			/*errs() << "UD Chain: " <<*instr << "\n";
			for (User::op_iterator i = instr -> op_begin(), e = instr -> op_end(); i != e; ++i){
				//Value *v = *i;
				//Instruction *vi = dyn_cast(v);
				errs() << "\t\t" << *i << "\n";
			}*/
		}
			/*map<string, set<string>> Pred;
			set<pair<string, string>> edges;
			map<string, set<string>> Domin;
			map<string, BasicBlock *> stringToBlock;

			errs() << "Loop Analysis for "<< F.getName() << ":\n";

			int i = 0;
			set<string> N;
			// Create a set of block names, names are a counter starting from 01.
			for(auto &basicBlock: F) {
				basicBlock.setName(to_string(i));
				N.insert(basicBlock.getName());
				stringToBlock[basicBlock.getName()] = &basicBlock;
			}

			for(auto &basicBlock: F) {
				TerminatorInst *terminatorInst = basicBlock.getTerminator();
				for (unsigned s = 0, e = terminatorInst->getNumSuccessors(); s != e; ++s) {
					string blockName = terminatorInst->getSuccessor(s)->getName();
					Pred[blockName].insert(basicBlock.getName());
					edges.insert(make_pair(basicBlock.getName(), blockName));
				}
			}

			// Computing Dominator Tree
			// Implemented using Advanced compiler design and implementation Steven Muchnick Page 182.
			Domin[*N.begin()] = set<string> {*N.begin()};
			for(string str:N) {
				if(str!=*N.begin()){
					Domin[str] = N;
				}
			}
			bool change=true;
			while(change){
				change = false;
				for(string str:N) {
					if(str!=*N.begin()){
						string n = str;
						set<string> D = Domin[n];
						set<string> T = N;
						set<string> Preds = Pred[n];
						for(auto Pred: Preds) {
							set<string> intersect;
							set_intersection(T.begin(), T.end(), Domin[Pred].begin(), Domin[Pred].end(),
									std::inserter(intersect, intersect.begin()));
							T = intersect;
						}
						T.insert(n);
						Domin[n] = T;
						if(D != Domin[str]){
							change = true;
						}
					}
				}
			}
			// Finding Loops and relations using SCC and Natural Loop Algo.
			// Implemented using Advanced compiler design and implementation Steven Muchnick Page 192.
			set<pair<string, string>> backEdge;
			for(auto edge: edges) {
				if(Domin[edge.first].find(edge.second) != Domin[edge.first].end()){
					backEdge.insert(edge);
				}
			}

			vector<string> loops;
			for(auto edge: backEdge) {
				string m=edge.second, n=edge.first;
				set<string> Loop{m,n};
				string temp="";
				stack<string> Stack;
				if(m!=n){
					Stack.push(n);
				}
				while(!Stack.empty()) {
					auto p = Stack.top();
					Stack.pop();
					for(auto q: Pred[p]) {
						if(Loop.find(q) == Loop.end()){
							Loop.insert(q);
							Stack.push(q);
						}
					}
				}
				for(string s:Loop){
					temp+=(s+",");
				}
				loops.push_back(temp);
			}

			//Solution 2
			for(int i=loops.size()-1;i>=0;i--){
				int count=0,b=0;
				vector<string> bb = split(loops[i],',');
				errs() << "Loop "<<i<<"\n";
				for(string s:bb){
					b++;
					BasicBlock *block=stringToBlock[s];
					for(auto &instr:*block){
						int num=I.getNumOperands();
						for(int k=0;k<num;k++){
							Value *Val = I.getOperand(k);
							errs()<<Val->getValueName()<<" ";
						}
						errs()<<"\n";
					}
				}
			}

			//Solution 3
			for(int i=loops.size()-1;i>=0;i--){
				for(int j=loops.size()-1;j>=0;j--){
					if(i!=j && loops[i].find(loops[j])!=string::npos){
						int x=j,y=i;
						if(loops[i].size()<loops[j].size()){
							y=j;x=i;
						}
						errs()<< "Loop " << x << " is nested within loop " << y << "\n";
					}
				}
			}
			*/
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
static RegisterPass<SkeletonPass> X("hello", "Loop Pass",
		false /* Only looks at CFG */,
		false /* Analysis Pass */);
