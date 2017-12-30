tests
testFailOnUnifyDisequalityNoExclusion
	self assert: ((x =/= 1 run: (x isNumbero run: SKState new)) unify: x with: 1) equals: SKEmptyStream singleton