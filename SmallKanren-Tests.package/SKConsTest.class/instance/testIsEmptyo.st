tests
testIsEmptyo
	self assert: empty isEmptyo equals: SKGoal succeed.
	self assert: pair isEmptyo equals: SKGoal fail.
	self assert: 42 isEmptyo equals: SKGoal fail