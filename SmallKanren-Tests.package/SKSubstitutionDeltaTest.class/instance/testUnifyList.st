tests
testUnifyList
	self assert: (SKSubstitution new unify: (x cons: y cons) with: (1 cons: 2 cons)) asDisequality
		equals: x=/=1 & (y=/=2).