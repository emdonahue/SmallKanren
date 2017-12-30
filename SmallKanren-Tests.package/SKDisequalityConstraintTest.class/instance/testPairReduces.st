tests
testPairReduces
	"Because this constraint is assigned to y, grounding y will simplify it and apply it to x."

	self assert: ((((x cons: y cons) =/= (1 cons: 2 cons) run: SKState new) unify: y with: 2) constraints at: x) equals: (x =/= 1) asConstraint