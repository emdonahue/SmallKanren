tests
testApplyPair
	"Constraints applied by the same goal form a single MultipleConstraint."

	self assert: (((x cons: y cons) =/= (1 cons: 2 cons) run: SKState new) constraints at: x) equals: x=/=1 & (y=/=2).