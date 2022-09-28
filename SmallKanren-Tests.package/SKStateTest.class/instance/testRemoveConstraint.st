tests
testRemoveConstraint
	
	self assert: (((s check: x constraint: SKConstraint numbero) unify: x with: 1) constraints at: x) equals: satisfied.
	self assert: (((s check: x constraint: SKConstraint numbero) unify: x with: y) constraints at: x) equals: satisfied.
	