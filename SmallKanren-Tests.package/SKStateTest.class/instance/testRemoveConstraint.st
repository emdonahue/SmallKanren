tests
testRemoveConstraint
	
	self assert: (((s check: x constraint: SKConstraint numbero) unify: x with: 1) constraintAt: x) equals: satisfied.
	self assert: (((s check: x constraint: SKConstraint numbero) unify: x with: y) constraintAt: x) equals: satisfied.
	