tests
testFailOnUnifyDisequality
	self assert: (((x absento: 2) run: (x =/= 1 run: (x isNumbero run: SKState new))) unify: x with: 1) equals: SKFailure singleton