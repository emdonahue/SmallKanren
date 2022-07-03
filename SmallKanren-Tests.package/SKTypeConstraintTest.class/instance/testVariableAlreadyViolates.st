tests
testVariableAlreadyViolates
	"If the state already violates the type constraint, it shoul fail on application."

	self assert: (x isSymbolo run: (SKState new unify: x with: 42)) atEnd