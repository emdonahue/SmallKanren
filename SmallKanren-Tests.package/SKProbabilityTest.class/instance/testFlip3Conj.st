tests-flip
testFlip3Conj
	| c s |
	c := SKBernoulli new p: 0.6.
	s := [ {c sample: 1. c sample: 1. c sample: 1} ] asGoal runStates.
	self assert: s first likelihood exp closeTo: 0.6 ** 3 precision: 0.0001.	