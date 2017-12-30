tests
testFailOnUnifyExclusionNoDisequality
	self assert: (((x excludes: 2) run: (x isNumbero run: SKState new)) unify: x with: 2) equals: SKEmptyStream singleton