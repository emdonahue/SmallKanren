tests
testPassOnApplyToListTwo
	"Tests that lists recurse."

	self assert: (((x absento: 1) run: (SKSubstitution new unify: x with: (2 cons: 3 cons))) constraints at: x) equals: satisfied.