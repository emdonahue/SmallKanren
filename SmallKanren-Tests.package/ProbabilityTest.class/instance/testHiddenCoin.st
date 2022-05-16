tests
testHiddenCoin | h c0 c1 |
	"Like a GMM but with only coins. The two coins should be .5 and the hidden coin can be whatever since it doesnt matter which coin gets picked."
		
	h := SKBernoulliEstimate new p: 0.1.
	c0 := SKBernoulliEstimate new p: 0.2.
	c1 := SKBernoulliEstimate new p: 0.3.
	self assert: ([ :m | { { m  first sample: 0. { m second sample: 0. m second sample: 1 } }.
		{ m first sample: 1. { m third sample: 0. m third sample: 1 } } } conde ] asGoal train: {h. c0. c1}) last first second p closeTo: 0.5 precision: 0.01.
	self assert: ([ :m | { { m  first sample: 0. { m second sample: 0. m second sample: 1 } }.
		{ m first sample: 1. { m third sample: 0. m third sample: 1 } } } conde ] asGoal train: {h. c0. c1}) last first third p closeTo: 0.5 precision: 0.01.