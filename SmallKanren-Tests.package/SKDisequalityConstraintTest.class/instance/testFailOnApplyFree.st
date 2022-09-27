tests
testFailOnApplyFree
	self assert: (x =/= y run: (SKSubstitution new unify: x with: y)) equals: failure.
	self assert: (x =/= y run: (SKSubstitution new unify: y with: x)) equals: failure.