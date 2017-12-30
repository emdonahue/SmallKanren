tests
testApplyAll
	self assert: (((x excludes: 2) run: (x =/= 1 run: (x isNumbero run: SKState new))) constraints at: x) equals: multi