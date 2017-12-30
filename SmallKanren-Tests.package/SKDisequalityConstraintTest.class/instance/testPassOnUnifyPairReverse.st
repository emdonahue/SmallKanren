tests
testPassOnUnifyPairReverse
	self assert: ((((x cons: y cons) =/= (1 cons: 2 cons) run: SKState new) unify: y with: 3) constraints at: x) equals: SKSatisfiedConstraint singleton