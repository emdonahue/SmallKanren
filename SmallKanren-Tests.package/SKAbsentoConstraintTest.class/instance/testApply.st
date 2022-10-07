tests
testApply
	self assert: (((x absento: 1) run: (SKSubstitution new)) constraintAt: x) equals: no1