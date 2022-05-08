tests
testBernoulli
	| b |
	b := SKBernoulliEstimate new p: 0.6.
	[ :x | SKSampleGoal new distribution: b; sample: 1 ] asGoal run force inspect.