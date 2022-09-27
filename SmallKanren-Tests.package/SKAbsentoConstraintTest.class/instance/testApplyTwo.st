tests
testApplyTwo
	self assert: ( ((x absento: 1) run: ((x absento: 2) run: SKSubstitution new)) constraints at: x) equals: no1, no2