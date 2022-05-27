tests
testFlip1LateBound
	| c s |
	c := SKBernoulliEstimate new p: 0.6.
	s := [ :x | {c sample: x. x === 1} ] asGoal asSpace.
	self assert: s first likelihood exp equals: 0.6.	