tests
testPassOnApplyPair
	"Constraints applied by the same goal form a single MultipleConstraint."

	self assert: (((x cons: y cons) =/= (1 cons: 2 cons) run: (SKSubstitution new unify: x with: 1)) constraintAt: y) equals: (y =/= 2) asConstraint