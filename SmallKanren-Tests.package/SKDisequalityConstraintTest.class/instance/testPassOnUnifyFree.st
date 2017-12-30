tests
testPassOnUnifyFree
	| s |
	s := (x =/= 1 run: SKState new) unify: y with: x.
	self assert: (s constraints at: y) equals: SKSatisfiedConstraint singleton.
	self assert: (s constraints at: x) equals: (x =/= 1) asConstraint