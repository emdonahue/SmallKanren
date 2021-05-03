tests
testPassOnApplyFreePair
	"Tests whether MultipleDisequalities assign properly to both free variables."

	| s |
	s := (x cons: z cons) =/= (y cons: w cons) run: SKState new.
	self assert: (s constraints at: y) equals: y =/= x & (z =/= w).
	self assert: (s constraints at: x) equals: x =/= y & (z =/= w).