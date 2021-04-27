tests
testPassOnApplyToListTwo
	"Tests that lists recurse."

	self assert: (((x excludes: 1) run: (SKState new unify: x with: (2 cons: 3 cons))) constraints at: x) equals: satisfied.