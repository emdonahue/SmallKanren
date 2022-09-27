constructing
testConstructSingle
	self assert: ((x =/= 1 run: SKSubstitution new) constraints at: x) equals: (x=/=1).	