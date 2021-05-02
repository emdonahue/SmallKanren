tests
testApplyAll
	self assert: (((x absento: 2) run: (x =/= 1 run: (x isNumbero run: SKState new))) constraints at: x) equals: multi