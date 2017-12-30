tests
testPassOnApplyFreePair
	"Tests whether MultipleDisequalities assign properly to both free variables."

	| s |
	s := (z cons: x cons) =/= (1 cons: y cons) run: SKState new.
	self assert: (s constraints at: y) equals: ((z cons: x cons) =/= (1 cons: y cons)) asConstraint.
	self assert: (s constraints at: x) equals: ((z cons: x cons) =/= (1 cons: y cons)) asConstraint.