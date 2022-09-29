tests
testVariableAlreadySatisfies
	"If the state already satisfies the constraint, it the constraint should remove itself.."

	self assert: (x isSymbolo run: (SKSubstitution new unify: x with: #symbol)) isSubstitution