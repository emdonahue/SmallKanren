tests
testPassOnApplyToListFreeCdr
	"Tests that lists walk their cdr values when recursing."

	self assert: (((x excludes: 1) run: ((SKState new unify: x with: (2 cons: y)) unify: y with: 3 cons)) constraints at: x) equals: SKSatisfiedConstraint singleton