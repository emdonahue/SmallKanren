tests-flip
testFlip2Conj
	| c s |
	c := SKBernoulli new p: 0.6.
	s := [ {c sample: 1.c sample: 1} ] asGoal runStates.
	self assert: s first likelihood exp equals: 0.6 ** 2.	