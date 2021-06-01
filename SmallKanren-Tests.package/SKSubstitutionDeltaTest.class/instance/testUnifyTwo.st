tests
testUnifyTwo
	self assert: ((SKSubstitution empty unify: x with: 1) unify: y with: 2) asDisequality
		equals: x=/=1 & (y=/=2).
