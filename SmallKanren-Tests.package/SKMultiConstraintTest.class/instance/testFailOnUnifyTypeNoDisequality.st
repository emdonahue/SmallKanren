tests
testFailOnUnifyTypeNoDisequality
	self assert: (((x excludes: 2) run: (x isNumbero run: SKState new)) unify: x with: #symbol) equals: SKFailure singleton