tests
testFailOnApplyFree
	self assert: (x =/= y run: (SKState new unify: x with: y)) isNone.
	self assert: (x =/= y run: (SKState new unify: y with: x)) isNone