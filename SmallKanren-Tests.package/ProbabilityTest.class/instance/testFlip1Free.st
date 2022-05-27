tests
testFlip1Free
	| c s |
	c := SKBernoulliEstimate new p: 0.6.
	s := [ :x | c sample: x ] asGoal asSpace.
	self assert: s first likelihood exp equals: 1.	