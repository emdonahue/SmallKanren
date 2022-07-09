tests-hmm
testHMM
	| hmm |
	
	hmm := nil.
	hmm := [ :prevt :states :observations | 
		{{states isEmptyo. observations isEmptyo}.
		{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
				{{currs === 0. prevt sample: 0. lowe sample: curro. hmm valueWithArguments: {lowt. nexts. nexto.}}.
				{currs === 1. prevt sample: 1. highe sample: curro. hmm valueWithArguments: {hight. nexts. nexto.}}} conde ]}} conde ].	

	self assert: ([ :q | hmm valueWithArguments: {hight. #(1) asCons. #(1) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum equals: hight p * highe p.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(1 1) asCons. #(1 1) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * (hight p * highe p) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(1 1) asCons. #(1 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * (hight p * (1-highe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(1 0) asCons. #(1 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * ((1-hight p) * (1-lowe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(0 1) asCons. #(1 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: ((1-hight p) * lowe p) * (lowt p * (1-highe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(0 0) asCons. #(1 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: ((1-hight p) * lowe p) * ((1-lowt p) * (1-lowe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(1 0 0) asCons. #(1 0 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * ((1-hight p) * (1-lowe p)) * ((1-lowt p) * (1-lowe p))  precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. q. #(1) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum equals: (hight p * highe p) + ((1-hight p) * lowe p).
	
	self assert: ([ :q | hmm valueWithArguments: {hight. q. #(0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum equals: (hight p * (1-highe p)) + ((1-hight p) * (1-lowe p)).

	self assert: ([ :q | hmm valueWithArguments: {hight. q. #(1 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: 
		((hight p * highe p) * ((hight p * (1-highe p)) + ((1-hight p) * (1-lowe p))))
		+ (((1-hight p) * lowe p) * (((lowt p * (1-highe p))) + ((1-lowt p) * (1-lowe p))))
		precision: 0.0001.
		
	self assert: [ :q | hmm valueWithArguments: {hight. #(1 1 1) asCons. #(0 1 1) asCons.} ] asGoal runStates first likelihood equals: -3.583330956125896.
	
	self assert: [ :q | hmm valueWithArguments: {hight. #(0 1 1) asCons. #(0 1 1) asCons.} ] asGoal runStates first likelihood equals: -3.891632315780412.
	
	self assert: [ :q | hmm valueWithArguments: {hight. #(1 1 1) asCons. #(1 1 1) asCons.} ] asGoal runStates first likelihood closeTo: (0.63 ** 3) ln precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. q. #(1 1 1) asCons.} ] asGoal runStates collect: [ :st | st likelihood exp ]) sum closeTo:  0.37087499999999995 precision: 0.0001.