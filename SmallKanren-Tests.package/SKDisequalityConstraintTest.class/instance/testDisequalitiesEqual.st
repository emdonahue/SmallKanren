tests
testDisequalitiesEqual
	"Test equality methods used in testing DisequalityConstraints. Used only for confirming test results, not in live code."

	self assert: (x =/= 1) asConstraint equals: (x =/= 1) asConstraint.
	self deny: (x =/= 1) asConstraint = (y=/=2) asConstraint.
	self deny: (x =/= 1) asConstraint = SKSatisfiedConstraint singleton.
	self assert: ((x cons: y cons) =/= (1 cons: 2 cons)) asConstraint equals: ((x cons: y cons) =/= (1 cons: 2 cons)) asConstraint