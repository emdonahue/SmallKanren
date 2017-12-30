tests
testPassOnUnifyPair
	"Because x and y are not unified, this constraint is only applied to y, and grounding x has no effect."

	self
		assert: ((((x cons: y cons) =/= (1 cons: 2 cons) run: SKState new) unify: x with: 3) constraints at: y)
		equals: ((x cons: y cons) =/= (1 cons: 2 cons)) asConstraint