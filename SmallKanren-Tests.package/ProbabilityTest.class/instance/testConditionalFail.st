tests-condition
testConditionalFail
	| c |
	c := SKBernoulli new p: 0.3.
	self assert: [ :x | c marginalize: x o: [ :y | SKGoal fail ]] asGoal fails.
	self assert: [ :x | c marginalize: x o: [ :y | {y === 1. [[SKGoal fail]]} conde ]] asGoal asSpace first likelihood exp equals: 0.3.