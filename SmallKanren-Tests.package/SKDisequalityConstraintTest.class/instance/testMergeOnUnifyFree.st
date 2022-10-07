tests-merging
testMergeOnUnifyFree
	| s |
	s := (x =/= 1 run: SKSubstitution new) unify: x with: y.
	self assertCollection: {s constraintAt: x. s constraintAt: y}
		hasSameElements: {SKSatisfiedConstraint singleton. (y =/= 1) asConstraint}