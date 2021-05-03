tests
testPassOnUnifyTriple
	"Because this constraint is assigned to x, grounding z will simplify it and apply it to y."

	self assert: ((((x cons: y cons: z cons) =/= (1 cons: 2 cons: 3 cons) run: SKState new) unify: x with: 1) constraints at: y) equals: ((y cons: z cons) =/= (2 cons: 3 cons)) asConstraint