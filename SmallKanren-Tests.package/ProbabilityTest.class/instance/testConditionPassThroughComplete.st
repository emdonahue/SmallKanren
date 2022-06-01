tests-condition
testConditionPassThroughComplete
	| b st |
	b := SKBernoulli new p: 0.6.
	st := [ :o :x | { b marginalize: o o: [ :m | {{m === 0. x === 0}. {m === 1. x === 1}} conde ] } ] asGoal asSpace.
	self assert: st size equals: 2.
	self assert: st first likelihood exp + st second likelihood exp equals: 1.