tests
testApplyTwo
	self assert: ( ((x absento: 1) run: ((x absento: 2) run: SKState new)) constraints at: x) equals: no1, no2