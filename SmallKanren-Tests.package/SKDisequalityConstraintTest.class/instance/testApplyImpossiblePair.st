tests
testApplyImpossiblePair
	"x cannot be both 1 and 2 in any Substitution."

	self assert: (((x cons: x cons) =/= (1 cons: 2 cons) run: SKSubstitution new) constraints at: x) equals: ((x cons: x cons) =/= (1 cons: 2 cons)) asConstraint