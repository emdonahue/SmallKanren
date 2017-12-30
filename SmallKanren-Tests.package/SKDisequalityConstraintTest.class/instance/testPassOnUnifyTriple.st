tests
testPassOnUnifyTriple
	"Because this constraint is assigned to z, grounding z will simplify it and apply it to y."

	self assert: ((((x cons: y cons: z cons) =/= (1 cons: 2 cons: 3 cons) run: SKState new) unify: z with: 3) constraints at: x) equals: ((y cons: x cons) =/= (2 cons: 1 cons)) asConstraint