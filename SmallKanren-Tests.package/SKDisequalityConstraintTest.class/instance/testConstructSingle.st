constructing
testConstructSingle
	| c |
	c := ((x =/= 1 run: SKState new) constraints at: x).
	self assert: c isSingleDisequality .
	self assert: c left equals: x. 
	self assert: c right equals: 1.
	