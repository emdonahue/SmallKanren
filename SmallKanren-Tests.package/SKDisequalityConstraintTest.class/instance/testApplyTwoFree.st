tests
testApplyTwoFree

	| s |
	s := x =/= y run: (x =/= 1 run: SKSubstitution new).
	self assert: (s constraints at: x) equals: (x =/= y) asConstraint , (x =/= 1) asConstraint.
	self assert: (s constraints at: y) equals: (y =/= x) asConstraint.