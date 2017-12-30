tests
testApplyTwo
	self assert: ( ((x excludes: 1) run: ((x excludes: 2) run: SKState new)) constraints at: x) equals: (x excludes: 1), (x excludes: 2)