tests
testCoin
	| c |
	c := SKBernoulli new p: 0.3.
	self assert: ([ :m | m first sample: 1 ] asGoal train: {c}) first first first p equals: 0.3.
	self assert: ([ :m | m first sample: 1 ] asGoal train: {c}) first second exp equals: 0.3.
	self assert: ([ :m | m first sample: 1 ] asGoal train: {c}) second first first p equals: 1.
	self assert: ([ :m | m first sample: 1 ] asGoal train: {c}) second second exp equals: 1.
	self assert: ([ :m | m first sample: 1 ] asGoal train: {c}) size equals: 4.
	