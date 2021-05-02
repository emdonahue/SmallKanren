tests
testFailOnUnifyExclusionNoDisequality
	self assert: (((x absento: 2) run: (x isNumbero run: SKState new)) unify: x with: 2) equals: SKFailure singleton