tests-flip
testFlip1Marginal
	| c |
	c := SKBernoulli new p: 0.3.
	self assert: ([ :m | {m first sample: 1. m first sample: 0} conde ] asGoal trainingEpochs: {c}) first likelihood exp equals: 1.