tests-condition
testConditionPassThroughState
	| b st |
	b := SKBernoulli new p: 0.6.
	st := [ :o :x | { b marginalize: o o: [ :m | {m === 1. x === 1}. ] } ] asGoal asSpace.
	self assert: st size equals: 1.
	self assert: st first likelihood exp equals: 0.6.