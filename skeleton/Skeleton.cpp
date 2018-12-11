#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Instruction.h"
#include "llvm/ADT/SCCIterator.h"
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

		template<typename Out>
			void split(const std::string &s, char delim, Out result) {
				std::stringstream ss(s);
				std::string item;
				while (std::getline(ss, item, delim)) {
					*(result++) = item;
				}
			}

		std::vector<std::string> split(const std::string &s, char delim) {
			std::vector<std::string> elems;
			split(s, delim, std::back_inserter(elems));
			return elems;
		}

		virtual bool runOnFunction(Function &F) {

			map<string, set<string>> Pred;
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

			set<set<string>> loops;
			for(auto edge: backEdge) {
				string m=edge.second, n=edge.first;
				set<string> Loop{m,n};
				set<string> temp;
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
					temp.insert(s);
				}
				loops.insert(temp);
			}

			//Find all pairs of nested loops.
			set<set<string>> :: iterator it1,it2;
			for(it1=loops.begin();it1!=loops.end();it1++){
				for(it2=loops.begin();it2!=loops.end();it2++){
					set<string> common;
					set_intersection((*it1).begin(),(*it1).end(),(*it2).begin(),(*it2).end(),inserter(common,common.begin()));
					if(common.size()>1 && common==*it2 && (*it1).size() != (*it2).size()){
						set<string> outer,inner;
						if((*it1).size()<(*it2).size()){
							inner=*it1;
							outer=*it2;
						}
						else{
							inner=*it2;
							outer=*it1;
						}
						string outlast,inlast,inslast,outslast;
						set<string> :: iterator t1,t2;
						for(t1=outer.begin();t1!=outer.end();t1++){
							outslast=outlast;
							outlast=*t1;
						}
						for(t2=inner.begin();t2!=inner.end();t2++){
							inslast=inlast;
							inlast=*t2;
						}

						// Finding Preheaders, Headers, Body and Latches of outer and inner loops.
						BasicBlock *outerHeader = stringToBlock[*outer.begin()];
						BasicBlock *outerLatch = stringToBlock[outlast];
						BasicBlock* outerPreheader;
						for (BasicBlock *pred : predecessors(outerHeader)) {
							outerPreheader=pred;
						}
						BasicBlock *outerBSS = stringToBlock[outslast];
						BasicBlock* innerHeader = stringToBlock[*inner.begin()];
						BasicBlock *innerLatch = stringToBlock[inlast];
						BasicBlock* innerPreheader;
						for (BasicBlock *pred : predecessors(innerHeader)) {
							innerPreheader=pred;
						}
						BasicBlock *innerBody = stringToBlock[inslast];

						// Solution 1 Check perfect nesting.
						bool nested=checkPerfectNesting(outerHeader, outerLatch, innerPreheader, innerHeader);
						if(nested){
							errs() << "Found a perfectly nested loop pair!!\n";
						}
						else{
							errs() << "Found an imperfectly nested loop pair!!\n";
						}


						//Solution 2 Check if loop index variable depend on each other.
						Value *val = findOperandFromOuterLoop(outerPreheader);
						bool isDependence = findUsageInInnerLoop(val, innerPreheader, innerHeader, innerLatch);
						if(isDependence){
							errs() << "Dependence Found!\n";
						}
						else{
							errs() << "No Dependence!\n";
						}

						//Saving operand of return block for future use.
						Instruction *ret;
						for(auto &I:*outerHeader){
							ret=&I;
						}
						BranchInst *retBI = dyn_cast<BranchInst>(ret);
						BasicBlock *retBlock = retBI->getSuccessor(1);

						//Solution 3 Interchange outer and inner loop pairs.
						interchangePreheaderInstructions(outerPreheader,innerPreheader);
						moveBasicBlocks(outerPreheader, outerHeader, outerLatch, innerPreheader, innerHeader, innerBody, innerLatch);
						moveBranches(outerPreheader, outerHeader, outerBSS, outerLatch, innerPreheader, innerHeader, innerBody, innerLatch, retBlock);
						errs() << "Loop pair interchanged!\n";
					}
				}
			}
			return true;
		}

		/* Method to check if a loop pair is perfectly nested */
		bool checkPerfectNesting(BasicBlock *outerHeader, BasicBlock* outerLatch, BasicBlock* innerPreheader, BasicBlock* innerHeader){
			bool nested=true;
			BranchInst *outerHeaderBI = dyn_cast<BranchInst>(outerHeader->getTerminator());
			if(!outerHeaderBI){
				nested=false;
			}
			else{
				int numSucc = outerHeaderBI->getNumSuccessors();
				for(int s=0;s<numSucc;s++){
					BasicBlock *succ = outerHeaderBI->getSuccessor(s);

					//Check not ret statement basic block.
					int instrCount=0;
					for(auto &I:*succ){
						instrCount++;
					}
					if(instrCount==1){
						continue;
					}

					if(innerPreheader != succ && succ != innerHeader && succ != outerLatch){
						nested=false;
					}
				}
			}
			return nested;
		}

		/* Method to find operand from outer preheader*/
		Value* findOperandFromOuterLoop(BasicBlock* outerPreheader){
			Instruction *instr,*temp;
			for(auto &I:*outerPreheader){
				instr=temp;
				temp=&I;
			}
			return instr->getOperand(1);
		}

		/* Method to check if an operand is present in inner loop basic blocks. */
		bool findUsageInInnerLoop(Value *val, BasicBlock *innerPreheader, BasicBlock* innerHeader, BasicBlock* innerLatch){
			if(val->isUsedInBasicBlock(innerPreheader)||val->isUsedInBasicBlock(innerHeader)||val->isUsedInBasicBlock(innerLatch)){
				return true;			
			}
			else{
				return false;
			}
		} 

		/* Method to interchange operands between outer and inner preheader for loop interchange. */
		void interchangePreheaderInstructions(BasicBlock *outer, BasicBlock *inner){
			Instruction *instr,*temp;
			for(auto &I:*outer){
				instr=temp;
				temp=&I;
			}
			Value *op2 = instr->getOperand(1);
			Value *o1,*o2;
			User *itr1,*itr2;
			for(auto it = op2->users().begin();it != op2->users().end();it++){
				if((*it)->getNumOperands()>1){
					o1 = (*it)->getOperand(0);
					o2 = (*it)->getOperand(1);
					itr1 = *it;
				}
			}

			for(auto &I:*inner){
				instr=temp;
				temp=&I;
			}
			op2 = instr->getOperand(1);
			Value *o5,*o6;
			for(auto it = op2->users().begin();it != op2->users().end();it++){
				if((*it)->getNumOperands()>1){
					o5 = (*it)->getOperand(0);
					o6 = (*it)->getOperand(1);
					itr2 = (*it);
				}
			}
			itr1->setOperand(0,o5);
			itr1->setOperand(1,o6);
			itr2->setOperand(0,o1);
			itr2->setOperand(1,o2);
		}

		/* Method to move basic blocks to correct position for loop interchange. */
		void moveBasicBlocks(BasicBlock* outerPreheader, BasicBlock* outerHeader, BasicBlock* outerLatch, BasicBlock* innerPreheader, BasicBlock* innerHeader, BasicBlock* innerBody, BasicBlock* innerLatch){	
			innerHeader->moveAfter(outerPreheader);
			outerHeader->moveAfter(innerPreheader);
			innerLatch->moveAfter(outerLatch);
			outerLatch->moveAfter(innerBody);
		}

		/* Util method to set branch successor of basic block */
		void setBasicBlockSuccessor(BasicBlock *prev, BasicBlock* next){
			BranchInst *prevBI = dyn_cast<BranchInst>(prev->getTerminator());
			if(prevBI){
				prevBI->setSuccessor(0, next);
			}
		}

		void moveBranches(BasicBlock* outerPreheader, BasicBlock* outerHeader, BasicBlock* outerBSS, BasicBlock* outerLatch, BasicBlock* innerPreheader, BasicBlock* innerHeader, BasicBlock* innerBody, BasicBlock* innerLatch, BasicBlock *retBlock){
			setBasicBlockSuccessor(outerPreheader, innerHeader);
			setBasicBlockSuccessor(innerPreheader, outerHeader);
			setBasicBlockSuccessor(innerBody, outerLatch);
			setBasicBlockSuccessor(outerLatch, outerBSS);
			setBasicBlockSuccessor(outerBSS, innerLatch);
			setBasicBlockSuccessor(innerLatch, retBlock);
			//Set both branches of inner Header.
			BranchInst *ihBI = dyn_cast<BranchInst>(innerHeader->getTerminator());
			if(ihBI){
				ihBI->setSuccessor(0, innerPreheader);
				ihBI->setSuccessor(1, retBlock);
			}
			//Set both branches of outer Header.
			BranchInst *ohBI = dyn_cast<BranchInst>(outerHeader->getTerminator());
			if(ohBI){
				ohBI->setSuccessor(0, innerBody);
				ohBI->setSuccessor(1, outerBSS);
			}
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
