tests-pcfg
tesPCFG
	| pcfg |
	
	pcfg := nil.
	pcfg := [ :prevt :states :observations | 
		{{states isEmptyo. observations isEmptyo}.
		{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
				{{currs === 0. prevt sample: 0. lowe sample: curro. pcfg valueWithArguments: {lowt. nexts. nexto.}}.
				{currs === 1. prevt sample: 1. highe sample: curro. pcfg valueWithArguments: {hight. nexts. nexto.}}} conde ]}} conde
		].	

	self assert: ([ :q | pcfg valueWithArguments: {hight. #(1) asCons. #(1) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum equals: hight p * highe p.