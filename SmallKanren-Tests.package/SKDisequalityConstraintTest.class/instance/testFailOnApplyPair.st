tests
testFailOnApplyPair
	"Constraints applied by the same goal form a single MultipleConstraint."

	self assert: ((x cons: y cons) =/= (1 cons: 2 cons) run: ((SKState new unify: x with: 1) unify: y with: 2)) isNone