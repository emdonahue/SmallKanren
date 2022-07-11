tests
testBooleano

	self assert: Cons empty isBooleano equals: SKGoal fail.
	self assert: true isBooleano equals: SKGoal succeed.
	self assert: false isBooleano equals: SKGoal succeed.
	self assert: ((x isBooleano run: (x isBooleano run: SKState new)) constraints at: x) equals: SKConstraint booleano.