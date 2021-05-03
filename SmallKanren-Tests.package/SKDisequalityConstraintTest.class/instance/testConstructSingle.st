constructing
testConstructSingle
	self assert: ((x =/= 1 run: SKState new) constraints at: x) equals: (x=/=1).	