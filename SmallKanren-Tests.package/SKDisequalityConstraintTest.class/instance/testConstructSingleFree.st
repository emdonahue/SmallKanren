constructing
testConstructSingleFree
	| c |
	c := (x =/= y run: SKState new) constraints at: x.
	self assert: c isSingleDisequality.
	self assert: c left equals: x.
	self assert: c right equals: y