tests
testFailOnApplyFree
	self assert: (x =/= y run: (SKState new unify: x with: y)) equals: failure.
	self assert: (x =/= y run: (SKState new unify: y with: x)) equals: failure.