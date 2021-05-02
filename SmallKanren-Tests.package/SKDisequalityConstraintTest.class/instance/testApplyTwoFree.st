tests
testApplyTwoFree

	| s |
	s := x =/= y run: (x =/= 1 run: SKState new).
	self assert: (s constraints at: x) equals: (x =/= y) asConstraint , (x =/= 1) asConstraint.
	self assert: (s constraints at: y) equals: (x =/= y) asConstraint reversed.