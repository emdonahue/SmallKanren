tests
testFlip1Conditional
	| c s |
	c := SKBernoulliEstimate new p: 0.6.	
	s := [ :x | {{{c sample: 0. x === 1 }. c sample: 1.} conde. x === 2} ] asGoal asSpace.	
	self assert: s first likelihood exp closeTo: 0.6 precision: 0.0001.