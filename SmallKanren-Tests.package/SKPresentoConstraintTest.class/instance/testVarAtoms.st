tests
testVarAtoms
	self assert: [ :x | {x presento: 1. x === 1} ] asGoal succeeds.
	self assert: [ :x | {x presento: 1. x === 2} ] asGoal fails.
	self assert: [ :x | {x === 1. x presento: 1} ] asGoal succeeds.
	self assert: [ :x | {x === 2. x presento: 1} ] asGoal fails.
	