tests-condition
testConditionSum
	| b st |
	b := SKBernoulli new p: 0.6.
	st := [ :o | { b marginalize: o o: [ :m | {m === 0. m === 1} conde ] } ] asGoal asSpace.
	self assert: st size equals: 1.
	self assert: st first likelihood equals: (1 ln).