tests-merging
testMergeOnUnifyFree
	| s |
	s := (x =/= 1 run: SKSubstitution new) unify: x with: y.
	self assertCollection: {s constraints at: x. s constraints at: y}
		hasSameElements: {SKSatisfiedConstraint singleton. (y =/= 1) asConstraint}