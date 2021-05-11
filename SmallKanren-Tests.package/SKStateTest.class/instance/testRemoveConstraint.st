tests
testRemoveConstraint
	
	self assert: (((s add: x constraint: SKConstraint numbero) unify: x with: 1) constraints at: x) equals: satisfied.
	self assert: (((s add: x constraint: SKConstraint numbero) unify: x with: y) constraints at: x) equals: satisfied.
	