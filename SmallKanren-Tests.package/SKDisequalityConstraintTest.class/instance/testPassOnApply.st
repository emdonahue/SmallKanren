tests
testPassOnApply
	"If the state already satisfies the constraint, it the constraint should remove itself.."

	self assert: (x =/= 1 run: (SKSubstitution new unify: x with: 2)) isSubstitution