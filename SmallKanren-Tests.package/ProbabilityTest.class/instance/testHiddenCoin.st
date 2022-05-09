tests
testHiddenCoin
	| h c0 c1 |
	self skip.
	h := SKBernoulliEstimate new p: 0.9.
	c0 := SKBernoulliEstimate new p: 0.1.
	c1 := SKBernoulliEstimate new p: 0.9.
	"self assert: ("
	[ { { h sample: 0. { c0 sample: 0. c0 sample: 1 } conde }.
		{ h sample: 1. { c1 sample: 0. c1 sample: 1 } conde } } conde ] asGoal runtime maximize inspect