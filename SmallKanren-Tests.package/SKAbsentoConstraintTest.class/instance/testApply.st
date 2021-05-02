tests
testApply
	self assert: (((x absento: 1) run: (SKState new)) constraints at: x) equals: no1