tests
testConde
	self assert: {x===1} conde equals: (x===1).
	self assert: {x===1. SKGoal fail} conde equals: (x===1).
	self assert: {x===1. x===1} conde equals: (x===1) | (x===1).
	self assert: ({x===1. x===1. x===1} conde isKindOf: SKConde).