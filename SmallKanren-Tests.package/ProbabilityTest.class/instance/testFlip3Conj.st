tests
testFlip3Conj
	| c s |
	c := SKBernoulliEstimate new p: 0.6.
	s := [ {c sample: 1. c sample: 1. c sample: 1} ] asGoal asSpace.
	self assert: s first likelihood exp closeTo: 0.6 ** 3 precision: 0.0001.	