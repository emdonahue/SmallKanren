tests
testApply
	self assert: (((x absento: 1) run: (SKSubstitution new)) constraints at: x) equals: no1