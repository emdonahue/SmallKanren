running
testGround
	self assert: (1 plus: 2 o: 3) equals: SKGoal succeed.
	self assert: (x plus: 2 o: 3) asConstraint equals: (SKConstraint unification: 1).
	