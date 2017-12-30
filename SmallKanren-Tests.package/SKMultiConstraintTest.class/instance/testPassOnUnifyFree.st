tests
testPassOnUnifyFree
	"Tests that two MultiConstraints can successfully merge when their variables are unified."

	| s |
	s := (y isSymbolo run: (y =/= 2 run: (x =/= 1 run: (x isSymbolo run: SKState new)))) unify: y with: x.
	self assert: (s constraints at: y) equals: SKSatisfiedConstraint singleton