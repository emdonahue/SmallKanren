tests
testFlip1Marginal
	| c |
	c := SKBernoulliEstimate new p: 0.3.
	self assert: ([ :m | {m first sample: 1. m first sample: 0} conde ] asGoal train: {c}) first second exp equals: 1.