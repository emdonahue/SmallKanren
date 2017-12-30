tests
testVariableAlreadySatisfies
	"If the state already satisfies the constraint, it the constraint should remove itself.."

	self assert: (x isSymbolo run: (SKState new unify: x with: #symbol)) constraints isEmpty