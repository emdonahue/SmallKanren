tests
testApplyList
	"Lists should distribute constraints to their children."

	| s |
	s := (x =/= (y cons: z cons cons) run: SKSubstitution new) unify: x with: (2 cons: 3 cons cons).
	self assert: (s constraintAt: z) equals: ((y cons: z cons) =/= (2 cons: 3 cons)) asConstraint