tests
testFailOnUnifyTypeNoExclusion
	self assert: ((x =/= 1 run: (x isNumbero run: SKState new)) unify: x with: #symbol) equals: SKFailure singleton