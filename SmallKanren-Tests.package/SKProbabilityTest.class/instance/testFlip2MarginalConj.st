tests-flip
testFlip2MarginalConj
	| c s |
	c := SKBernoulli new p: 0.6.	
	s := [ {{c sample: 0. c sample: 1.} conde. c sample: 1} ] asGoal runStates.
	self assert: s first likelihood exp + s second likelihood exp closeTo: 0.6 precision: 0.0001.