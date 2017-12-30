tests
testConstructConjoinedFree
	| c |
	c := ((x cons: y) =/= (z cons: w) run: SKState new) constraints at: y.
	self assert: c isConjoinedDisequality.
	self assert: c left equals: y.
	self assert: c right equals: w.
	self assert: c next left equals: x.
	self assert: c next right equals: z