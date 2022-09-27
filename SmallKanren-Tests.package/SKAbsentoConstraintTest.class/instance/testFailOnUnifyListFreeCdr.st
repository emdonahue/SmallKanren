tests
testFailOnUnifyListFreeCdr
	"Tests that lists walk their cdr values when recursing."

	self assert: ( ((((x absento: 1) run: SKSubstitution new) unify: x with: (2 cons: y)) unify: y with: 1 cons)) equals: SKStream failure.