tests-flip
testFlip1Bound
	| c s |
	c := SKBernoulli new p: 0.6.
	s := [ :x | {x === 1 . c sample: x } ] asGoal runStates.
	self assert: s first likelihood exp equals: 0.6.	