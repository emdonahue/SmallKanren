tests
testApplyTwoPairs
	"Tests whether we can accumulate constraints when simplifying after check."

	| s |
	s := ((z cons: x cons) =/= (3 cons: 1 cons) run: ((z cons: y cons) =/= (3 cons: 2 cons) run: SKState new)) unify: z with: 3.
	self assert: (s constraints at: x) equals: (x =/= 1) constraint.
	self assert: (s constraints at: y) equals: (y =/= 2) constraint.