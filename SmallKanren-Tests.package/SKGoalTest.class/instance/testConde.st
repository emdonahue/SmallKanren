tests
testConde
	self assert: {x===1} fairConde equals: (x===1).
	self assert: {x===1. SKGoal fail} fairConde equals: (x===1).
	self assert: {x===1. x===1} fairConde equals: (x===1) | (x===1).
	self assert: ({x===1. x===1. x===1} fairConde isKindOf: SKConde).