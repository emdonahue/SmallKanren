tests
testPassOnApplyPairReverse
	"Constraints applied by the same goal form a single MultipleConstraint."

	self assert: (((x cons: y cons) =/= (1 cons: 2 cons) run: (SKSubstitution new unify: y with: 2)) constraints at: x) equals: (x =/= 1) asConstraint