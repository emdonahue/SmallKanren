tests
testFailOnApplyToListFreeCar
	"Tests that lists walk their car values when excluding."

	self assert: ((x excludes: 1) run: ((SKState new unify: x with: y cons) unify: y with: 1)) equals: SKFailure singleton