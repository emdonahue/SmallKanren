tests
testFailOnUnifyFree
	"Tests that two MultiConstraints with different Types will fail when unified."

	self assert: ((y isSymbolo run: (y =/= 2 run: (x =/= 1 run: (x isNumbero run: SKState new)))) unify: x with: y) equals: SKFailure singleton