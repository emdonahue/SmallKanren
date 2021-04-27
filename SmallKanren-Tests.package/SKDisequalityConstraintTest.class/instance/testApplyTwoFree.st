tests
testApplyTwoFree

	| s |
	s := x =/= y run: (x =/= 1 run: SKState new).
	self assert: (s constraints at: x) equals: x =/= y , (x =/= 1).
	self assert: (s constraints at: y) equals: (x =/= y) asConstraint.