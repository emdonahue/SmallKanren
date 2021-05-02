tests
testFailOnApply
	"If the state already violates the constraint, fail on application."

	self assert: (x =/= 1 run: (SKState new unify: x with: 1)) equals: failure.