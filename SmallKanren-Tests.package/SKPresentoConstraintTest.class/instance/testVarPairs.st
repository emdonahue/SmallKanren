tests
testVarPairs
	self assert: [ :x :y | {x presento: 1. x === (2 cons: y). y === 1} ] asGoal succeeds.
	