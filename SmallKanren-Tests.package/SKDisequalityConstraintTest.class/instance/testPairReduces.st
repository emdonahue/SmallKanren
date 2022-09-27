tests
testPairReduces
	"Because this constraint is assigned to y, grounding y will simplify it and apply it to x."

	self assert: ((((x cons: y cons) =/= (1 cons: 2 cons) run: SKSubstitution new) unify: x with: 1) constraints at: y) equals: (y =/= 2) asConstraint.