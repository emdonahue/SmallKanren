tests
testPassOnUnifyFree
	| s |
	s := (x =/= 1 run: SKSubstitution new) unify: y with: x.
	self assertCollection: {s constraints at: y. s constraints at: x}
		hasSameElements: {SKSatisfiedConstraint singleton. (x =/= 1) asConstraint}