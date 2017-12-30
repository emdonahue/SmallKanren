tests
testFailOnApplyToListTwo
	"Tests that lists recurse."

	self assert: ((x excludes: 1) run: ((SKState new unify: x with: (2 cons: 1 cons)) )) equals: SKEmptyStream singleton