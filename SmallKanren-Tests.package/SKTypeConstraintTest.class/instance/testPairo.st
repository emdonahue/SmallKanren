tests
testPairo

	self assert: Cons empty isPairo equals: SKGoal fail.
	self assert: (1 cons: 2) isPairo equals: SKGoal succeed.
	self assert: 1 isPairo equals: SKGoal fail.
	self assert: ((x isPairo run: (x isPairo run: SKSubstitution new)) constraints at: x) equals: SKConstraint pairo.