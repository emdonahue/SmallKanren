tests
testFailOnApplyToListFreeCar
	"Tests that lists walk their car values when excluding."

	self assert: ((x absento: 1) run: ((SKSubstitution new unify: x with: y cons) unify: y with: 1)) equals: SKStream failure.