tests-flip
testCoin
	| c |
	c := SKBernoulli new p: 0.3.
	self assert: ([ :m | m first sample: 1 ] asGoal trainingEpochs: {c}) first model first p equals: 0.3.
	self assert: ([ :m | m first sample: 1 ] asGoal trainingEpochs: {c}) first likelihood exp equals: 0.3.
	self assert: ([ :m | m first sample: 1 ] asGoal trainingEpochs: {c}) second model first p equals: 1.
	self assert: ([ :m | m first sample: 1 ] asGoal trainingEpochs: {c}) second likelihood exp equals: 1.
	self assert: ([ :m | m first sample: 1 ] asGoal trainingEpochs: {c}) size equals: 2.
	