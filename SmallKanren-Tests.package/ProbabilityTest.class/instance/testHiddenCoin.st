tests
testHiddenCoin
	| h c0 c1 |
	self skip.
	h := SKBernoulliEstimate new p: 0.1.
	c0 := SKBernoulliEstimate new p: 0.2.
	c1 := SKBernoulliEstimate new p: 0.3.
	"self assert: ("
	([ :m | { { m  first sample: 0. { m second sample: 0. m second sample: 1 } conde }.
		{ m first sample: 1. { m third sample: 0. m third sample: 1 } conde } } conde ] asGoal train: {h. c0. c1}) last inspect