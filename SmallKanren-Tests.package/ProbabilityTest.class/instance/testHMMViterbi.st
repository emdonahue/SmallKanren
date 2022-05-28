tests
testHMMViterbi
	| hmm highpressuret |
	"s0 low pressure -> o0 cloudy
	s1 high pressure -> o1 sunny"
	self skip.
	highpressuret := SKBernoulliEstimate new p: 0.8.
	hmm := nil.
	hmm := [ :prevt :states :observations :transitions :emissions | 
		{{states isEmptyo. observations isEmptyo}.
		{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
				{{currs === 0. prevt sample: 0. emissions first sample: curro. hmm valueWithArguments: {transitions first. nexts. nexto. transitions. emissions.}}.
				{currs === 1. prevt sample: 1. emissions second sample: curro. hmm valueWithArguments: {transitions second. nexts. nexto. transitions. emissions.}}.} conde ]}} conde
		].	
	([ :q | hmm valueWithArguments: {highpressuret. q. #(1 0 1) asCons. {highpressuret. SKBernoulliEstimate new p: 0.4}. {SKBernoulliEstimate new p: 0.9. SKBernoulliEstimate new p: 0.3}} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum inspect.
	
	"hmm := [ :prevt :states :observations :transitions :emissions | 
		{{states isEmptyo. observations isEmptyo}.
		{{states. observations} match: #((_ . _) (_ . _)) o: [ :currs :nexts :curro :nexto | 
				prevt marginalize: currs o: [ :st | {{st === 0. prevt sample: 0. emissions first sample: curro. hmm valueWithArguments: {transitions first. nexts. nexto. transitions. emissions.}}.
				{st === 1. prevt sample: 1. emissions second sample: curro. hmm valueWithArguments: {transitions second. nexts. nexto. transitions. emissions.}}.} conde ]]}} conde
		].	
	([ :q | hmm valueWithArguments: {highpressuret. q. #(1 0 1) asCons. {highpressuret. SKBernoulliEstimate new p: 0.4}. {SKBernoulliEstimate new p: 0.9. SKBernoulliEstimate new p: 0.3}} ] asGoal asSpace collect: [ :s | s likelihood exp]) sum inspect."