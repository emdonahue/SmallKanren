tests
testGroundAtoms
	self assert: (1 presento: 1) equals: SKGoal succeed.
	self assert: (1 presento: 2) equals: SKGoal fail.