constructing
testConstructSingleFree
	self assert: ((x =/= y run: SKSubstitution new) constraintAt: x) equals: (x=/=y).