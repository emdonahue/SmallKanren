tests
testFailOnApplyToList
	"Tests that lists recursively check their contents, rather than acting as opaque values."
	self assert: ((x excludes: 1) run: (SKState new unify: x with: 1 cons)) equals: SKFailure singleton