tests
testFailOnUnifyType
	self assert: (((x excludes: 2) run: (x =/= 1 run: (x isNumbero run: SKState new))) unify: x with: #symbol) equals: SKEmptyStream singleton