tests-flip
testFlip1Free
	| c s |
	c := SKBernoulli new p: 0.6.
	s := [ :x | c sample: x ] asGoal runStates.
	self assert: s first likelihood exp equals: 1.	