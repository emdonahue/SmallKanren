tests-merging
testMergeOnUnifyFree
	| s |
	s := (x =/= 1 run: SKSubstitution new) unify: x with: y.
	self assert: (s constraints at: x) equals: SKSatisfiedConstraint singleton.
	self assert: (s constraints at: y) equals: (y =/= 1) asConstraint