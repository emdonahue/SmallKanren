tests
testPassOnApplyFreePair
	"Tests whether MultipleDisequalities assign properly to both free variables."

	| s |
	s := (x cons: z cons) =/= (y cons: w cons) run: SKSubstitution new.
	self assert: (s constraintAt: y) equals: y =/= x & (z =/= w).
	self assert: (s constraintAt: x) equals: x =/= y & (z =/= w).