tests
testPassOnApplyFreePair
	"Tests whether MultipleDisequalities assign properly to both free variables."

	| s |
	s := (x cons: z cons) =/= (y cons: w cons) run: SKState new.
	self assert: (s constraints at: y) equals: ((y cons: z cons) =/= (x cons: w cons)) asConstraint.
	self assert: (s constraints at: x) equals: ((x cons: z cons) =/= (y cons: w cons)) asConstraint.