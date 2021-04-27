tests
testApplyTwoPairs
	"Tests whether we can accumulate constraints when simplifying after check."

	| s |
	s := ((x cons: z cons) =/= (1 cons: 3 cons) run: ((y cons: z cons) =/= (2 cons: 3 cons) run: SKState new)) unify: z with: 3.
	self assert: (s constraints at: x) equals: (x =/= 1) constraint.
	self assert: (s constraints at: y) equals: (y =/= 2) constraint.