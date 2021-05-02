tests
testFailOnUnifyExclusionNoType
	self assert: (((x absento: 2) run: (x =/= 1 run: (SKState new))) unify: x with: 2) equals: SKFailure singleton