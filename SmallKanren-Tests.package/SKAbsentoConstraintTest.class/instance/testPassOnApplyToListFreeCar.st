tests
testPassOnApplyToListFreeCar
	"Tests that lists walk their car values when excluding."

	self assert: (((x absento: 1) run: ((SKState new unify: x with: y cons) unify: y with: 2)) constraints at: x) equals: satisfied.