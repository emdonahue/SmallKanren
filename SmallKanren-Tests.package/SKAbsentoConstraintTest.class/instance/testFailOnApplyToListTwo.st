tests
testFailOnApplyToListTwo
	"Tests that lists recurse."

	self assert: ((x absento: 1) run: ((SKState new unify: x with: (2 cons: 1 cons)) )) equals: SKStream failure.