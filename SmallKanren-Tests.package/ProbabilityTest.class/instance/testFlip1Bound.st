tests
testFlip1Bound
	| c s |
	c := SKBernoulliEstimate new p: 0.6.
	s := [ :x | {x === 1 . c sample: x } ] asGoal asSpace.
	self assert: s first likelihood exp equals: 0.6.	