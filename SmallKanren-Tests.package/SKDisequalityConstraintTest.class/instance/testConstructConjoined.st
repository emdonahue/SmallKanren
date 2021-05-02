constructing
testConstructConjoined
	| c |
	c := ((x cons: y) =/= (1 cons: 2) run: SKState new) constraints at: x.
	self assert: c isConjoinedDisequality.
	self assert: c left equals: x.
	self assert: c right equals: 1.
	self assert: c rest left equals: y.
	self assert: c rest right equals: 2