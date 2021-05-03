constructing
testConstructSingleFree
	self assert: ((x =/= y run: SKState new) constraints at: x) equals: (x=/=y).