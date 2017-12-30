tests
testCaro
	self assert: (empty caro: 1) equals: SKGoal fail.
	self assert: ((2 cons: 2) caro: 1) equals: SKGoal fail.
	self assert: ((1 cons: 2) caro: 1) equals: SKGoal succeed.
	self assert: ((x cons: 3) caro: 1) isUnification.
	self assert: (#symbol caro: 1) equals: SKGoal fail