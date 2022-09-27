tests
testPassOnUnifyPair
	"Because x and y are conjoined in the same disequality, either one failing means the conjunction can never succeed, so the constraint is redundant."

	self 
		assert: ((((x cons: y cons) =/= (1 cons: 2 cons) run: SKSubstitution new) unify: x with: 3) constraints at: x)
		equals: satisfied.