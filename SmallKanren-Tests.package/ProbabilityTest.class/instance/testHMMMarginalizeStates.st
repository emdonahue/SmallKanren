tests
testHMMMarginalizeStates
	| hmm viterbihmm |
	
	self skip.
	hmm := nil.
	hmm := [ :prevt :states :observations | 
		{{states isEmptyo. observations isEmptyo}.
		{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
				{{currs === 0. prevt sample: 0. lowe sample: curro. hmm valueWithArguments: {lowt. nexts. nexto.}}.
				{currs === 1. prevt sample: 1. highe sample: curro. hmm valueWithArguments: {hight. nexts. nexto.}}.} conde ]}} conde
		].	
		
	viterbihmm := nil.
	viterbihmm := [ :prevt :states :observations | 
		{{states isEmptyo. observations isEmptyo}.
		{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
			prevt marginalize: currs o: [ :st |
				{{st === 0. lowe sample: curro. viterbihmm valueWithArguments: {lowt. nexts. nexto.}}.
				{st === 1. highe sample: curro. viterbihmm valueWithArguments: {hight. nexts. nexto.}}} conde]]}} conde
		].	
	
	
	self assert: ([ :q | viterbihmm valueWithArguments: {hight. q. #(1 0) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: 
		((hight p * highe p) * ((hight p * (1-highe p)) + ((1-hight p) * (1-lowe p))))
		+ (((1-hight p) * lowe p) * (((lowt p * (1-highe p))) + ((1-lowt p) * (1-lowe p))))
		precision: 0.0001.
		
		self halt.
	
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(1) asCons. #(1) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum equals: hight p * highe p.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(1 1) asCons. #(1 1) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * (hight p * highe p) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(1 1) asCons. #(1 0) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * (hight p * (1-highe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(1 0) asCons. #(1 0) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * ((1-hight p) * (1-lowe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(0 1) asCons. #(1 0) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: ((1-hight p) * lowe p) * (lowt p * (1-highe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. #(0 0) asCons. #(1 0) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: ((1-hight p) * lowe p) * ((1-lowt p) * (1-lowe p)) precision: 0.0001.
	
	self assert: ([ :q | hmm valueWithArguments: {hight. q. #(1) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum equals: (hight p * highe p) + ((1-hight p) * lowe p).
	
	self assert: ([ :q | hmm valueWithArguments: {hight. q. #(0) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum equals: (hight p * (1-highe p)) + ((1-hight p) * (1-lowe p)).
	
	self assert: ([ :q | hmm valueWithArguments: {hight. q. #(1 0) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: 
		((hight p * highe p) * ((hight p * (1-highe p)) + ((1-hight p) * (1-lowe p))))
		+ (((1-hight p) * lowe p) * (((lowt p * (1-highe p))) + ((1-lowt p) * (1-lowe p))))
		precision: 0.0001.
		
		
		
		self assert: ([ :q | viterbihmm valueWithArguments: {hight. #(1) asCons. #(1) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum equals: hight p * highe p.
		
		self assert: ([ :q | viterbihmm valueWithArguments: {hight. #(1 1) asCons. #(1 1) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: (hight p * highe p) * (hight p * highe p) precision: 0.0001.
		
		self assert: ([ :q | viterbihmm valueWithArguments: {hight. q. #(1 0) asCons.} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum closeTo: 
		((hight p * highe p) * ((hight p * (1-highe p)) + ((1-hight p) * (1-lowe p))))
		+ (((1-hight p) * lowe p) * (((lowt p * (1-highe p))) + ((1-lowt p) * (1-lowe p))))
		precision: 0.0001.
		
		"hight p * highe p * hight p * (1-highe p)" "H H"
		
		"+ hight p * highe p * (1-hight p) * (1-lowe p)" "H L"
		"+ (1-hight p) * lowe p * (1-lowt p) * (1-highe p)" "L H"
		"+ (1-hight p) * lowe p * lowt p * (1-lowe p)." "L L"
	
	"hmm := [ :prevt :states :observations :transitions :emissions | 
		{{states isEmptyo. observations isEmptyo}.
		{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
				prevt marginalize: currs o: [ :st | {{st === 0. prevt sample: 0. emissions first sample: curro. hmm valueWithArguments: {transitions first. nexts. nexto. transitions. emissions.}}.
				{st === 1. prevt sample: 1. emissions second sample: curro. hmm valueWithArguments: {transitions second. nexts. nexto. transitions. emissions.}}.} conde ]]}} conde
		].	
	([ :q | hmm valueWithArguments: {highpressuret. q. #(1 0 1) asCons. {highpressuret. SKBernoulliEstimate new p: 0.4}. {SKBernoulliEstimate new p: 0.9. SKBernoulliEstimate new p: 0.3}} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum inspect."