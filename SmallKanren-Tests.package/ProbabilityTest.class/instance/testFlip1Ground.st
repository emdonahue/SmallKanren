tests
testFlip1Ground
	| c s |
	c := SKBernoulliEstimate new p: 0.6.
	s := [ c sample: 1 ] asGoal asSpace.
	self assert: s first likelihood exp equals: 0.6.	