tests-simplifying
testSimplifyDuplicates
	self assert: ((x cons: x cons) =/= (1 cons: 1 cons)) asConstraint isSingleDisequality.
	self assert: ((x cons: y cons) =/= (y cons: x cons)) asConstraint isSingleDisequality.