tests
testGroundAtoms
	self assert: (1 presento: 1) equals: SKConstraint satisfied.
	self assert: (1 presento: 2) equals: SKConstraint unsatisfiable.