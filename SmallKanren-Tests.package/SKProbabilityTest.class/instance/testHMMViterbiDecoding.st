tests-hmm
testHMMViterbiDecoding
	| hmm |	
		
		hmm := nil.
		hmm := [ :prevt :states :observations | 
		[ :pt :ss :os | 
		{{ss isEmptyo. os isEmptyo}.
		{{ss. os} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
			pt argmax: currs o: [ :st |
				{{st === 0. lowe sample: curro. hmm valueWithArguments: {lowt. nexts. nexto.}}.
				{st === 1. highe sample: curro. hmm valueWithArguments: {hight. nexts. nexto.}}} conde]]}} conde
		] tabled: #tabledhmm
			inputs: {prevt. states. observations}
	].
		
	self assert: ([ :q | hmm valueWithArguments: {hight. #(1) asCons. #(1) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum equals: hight p * highe p.
		
		self assert: ([ :q | hmm valueWithArguments: {hight. #(1 1) asCons. #(1 1) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * (hight p * highe p) precision: 0.0001.
		
		self assert: ([ :q | hmm valueWithArguments: {hight. #(1 0) asCons. #(1 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * ((1-hight p) * (1-lowe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(0 1) asCons. #(1 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: ((1-hight p) * lowe p) * (lowt p * (1-highe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(0 0) asCons. #(1 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: ((1-hight p) * lowe p) * ((1-lowt p) * (1-lowe p)) precision: 0.0001.
		
		
		
		
		self assert: [ :q | hmm valueWithArguments: {hight. q. #(1) asCons.} ] asGoal runList first first equals: #(1) asCons.
		
		self assert: ([ :q | hmm valueWithArguments: {hight. q. #(1) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) precision: 0.0001.
		
		self assert: [ :q | hmm valueWithArguments: {hight. q. #(1 0) asCons.} ] asGoal runList first first equals: #(1 0) asCons.
		
		self assert: ([ :q | hmm valueWithArguments: {hight. q. #(1 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: 
		((hight p * highe p) * ((1-hight p) * (1-lowe p)))
		precision: 0.0001.
		
	self assert: [ :q | hmm valueWithArguments: {hight. q. #(1 0 0) asCons.} ] asGoal runList first first equals: #(1 0 0) asCons.

	self assert: ([ :q | hmm valueWithArguments: {hight. q. #(1 0 0) asCons.} ] asGoal runStates collect: [ :s | s likelihood exp]) sum closeTo: 
		((hight p * highe p) * ((1-hight p) * (1-lowe p)) * ((1-lowt p) * (1-lowe p)))
		precision: 0.0001.

	self assert: [ :q | hmm valueWithArguments: {hight. #(1 1 1) asCons. #(0 1 1) asCons.} ] asGoal runStates first likelihood closeTo: -3.583330956125896 precision: 0.0001.
	
	self assert: [ :q | hmm valueWithArguments: {hight. q. #(1 1 1) asCons.} ] asGoal runStates first likelihood closeTo: (0.63 ** 3) ln precision: 0.0001.
	
	"[ | r | 
		r := [ :q | hmm valueWithArguments: {hight. q. #(1 1 1) asCons.} ] asGoal runtime.
		self halt.
			r runStatesForced.
			(r tables at: #tabledhmm) inspect ] value."