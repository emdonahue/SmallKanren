tests
testApply
	self assert: (((x excludes: 1) run: (SKState new)) constraints at: x) equals: (x excludes: 1) asConstraint