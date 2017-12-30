tests
testFailOnUnifyDisequalityNoType
	self assert: (((x excludes: 2) run: (x =/= 1 run: ( SKState new))) unify: x with: 1) equals: SKEmptyStream singleton