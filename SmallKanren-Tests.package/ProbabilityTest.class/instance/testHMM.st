tests
testHMM
	| hmm sunnydayt |
	self skip.
	hmm := nil.
	hmm := [ :prevt :states :observations :transitions :emissions | 
		{{states isEmptyo. observations isEmptyo}.
		{states isNotEmptyo. observations isNotEmptyo. 	
			{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
				{{currs === #sunnyday. prevt sample: 1. emissions first sample: curro. hmm valueWithArguments: {transitions first. nexts. nexto. transitions. emissions.}}.
				{currs === #rainyday. prevt sample: 0. emissions second sample: curro. hmm valueWithArguments: {transitions second. nexts. nexto. transitions. emissions.}}.} conde ]}} conde
		].	
	sunnydayt := SKBernoulliEstimate new p: 0.5.
	[ :q | hmm valueWithArguments: {sunnydayt. q. #(1 0 1) asCons. {sunnydayt. SKBernoulliEstimate new p: 0.2}. {SKBernoulliEstimate new p: 0.4. SKBernoulliEstimate new p: 0.6}} ] asGoal asSpace inspect.