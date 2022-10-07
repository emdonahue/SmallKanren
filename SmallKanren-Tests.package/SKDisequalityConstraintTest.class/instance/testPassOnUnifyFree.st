tests
testPassOnUnifyFree
	| s |
	s := (x =/= 1 run: SKSubstitution new) unify: y with: x.
	self assertCollection: {s constraintAt: y. s constraintAt: x}
		hasSameElements: {SKSatisfiedConstraint singleton. (x =/= 1) asConstraint}