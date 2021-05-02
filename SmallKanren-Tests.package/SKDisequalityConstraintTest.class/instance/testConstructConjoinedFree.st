tests
testConstructConjoinedFree
	| c |
	c := ((x cons: y) =/= (z cons: w) run: SKState new) constraints at: x.
	self assert: c isConjoinedDisequality.
	self assert: c left equals: x.
	self assert: c right equals: z.
	self assert: c rest left equals: y.
	self assert: c rest right equals: w.