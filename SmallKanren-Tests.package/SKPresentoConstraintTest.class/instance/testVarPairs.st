tests
testVarPairs
	self assert: [ :x :y | {x presento: 1. x === (2 cons: y). y === 1} ] asGoal succeeds.
	self assert: [ :x :y | {(x cons: y) presento: 1. x === 2. y === 1} ] asGoal succeeds.
	self assert: [ :x :y | {(x cons: y) presento: 1. x === 2. y === 2} ] asGoal fails.
	self assert: [ :x :y :z :a | {(x cons: y) presento: 1. y === (z cons: a). x === 2. z === 2. a === 2} ] asGoal fails.
	self assert: [ :x :y :z :a | {(x cons: y) presento: 1. y === (z cons: a). x === 2. z === 2. a === 1} ] asGoal succeeds.
	