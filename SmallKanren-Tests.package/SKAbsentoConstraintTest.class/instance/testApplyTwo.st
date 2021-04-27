tests
testApplyTwo
	self assert: ( ((x excludes: 1) run: ((x excludes: 2) run: SKState new)) constraints at: x) equals: no1, no2