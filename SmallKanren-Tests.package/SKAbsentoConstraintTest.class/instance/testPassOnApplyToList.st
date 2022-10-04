tests
testPassOnApplyToList
	"Tests that lists recursively check their contents, rather than acting as opaque values."

	self assert: (((x absento: 1) run: (SKSubstitution new unify: x with: 2 cons)) constraintAt: x) equals: satisfied.