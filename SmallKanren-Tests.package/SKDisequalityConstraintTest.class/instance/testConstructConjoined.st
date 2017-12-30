constructing
testConstructConjoined
	| c |
	c := ((x cons: y) =/= (1 cons: 2) run: SKState new) constraints at: y.
	self assert: c isConjoinedDisequality.
	self assert: c left equals: y.
	self assert: c right equals: 2.
	self assert: c next left equals: x.
	self assert: c next right equals: 1