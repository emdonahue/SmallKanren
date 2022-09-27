constructing
testConstructSingleFree
	self assert: ((x =/= y run: SKSubstitution new) constraints at: x) equals: (x=/=y).