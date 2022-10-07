constructing
testConstructSingle
	self assert: ((x =/= 1 run: SKSubstitution new) constraintAt: x) equals: (x=/=1).	