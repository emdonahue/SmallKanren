tests
testPassOnApplyFreePair
	"Tests whether MultipleDisequalities assign properly to both free variables."

	| s |
	s := (x cons: z cons) =/= (y cons: 1 cons) run: SKState new.
	self assert: (s constraints at: y) equals: ((z cons: y cons) =/= (1 cons: x cons)) asConstraint.
	self assert: (s constraints at: x) equals: ((z cons: x cons) =/= (1 cons: y cons)) asConstraint.