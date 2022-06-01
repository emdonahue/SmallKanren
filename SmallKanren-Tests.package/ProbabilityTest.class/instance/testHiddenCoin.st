tests-flip
testHiddenCoin | h c0 c1 mdl |
	"Like a GMM but with only coins. The two coins should be .5 and the hidden coin can be whatever since it doesnt matter which coin gets picked."
		
	h := SKBernoulli new p: 0.1.
	c0 := SKBernoulli new p: 0.2.
	c1 := SKBernoulli new p: 0.3.
	mdl := ([ :m | { { m  first sample: 0. { m second sample: 0. m second sample: 1 } }.
		{ m first sample: 1. { m third sample: 0. m third sample: 1 } } } conde ] asGoal train: {h. c0. c1}) last first collect: #p.
self assert: mdl first * mdl third + ((1 - mdl first) * mdl second) closeTo: 0.5 precision: 0.0001.