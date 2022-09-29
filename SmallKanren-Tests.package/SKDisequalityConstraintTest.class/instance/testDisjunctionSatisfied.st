disjunction
testDisjunctionSatisfied
	"Tests that disjunctions correctly remove themselves if they are satisfied."

	| s |
	s := x =/= 2 run: (x =/= 1 run: (SKSubstitution new unify: y with: 3)).
	self assert: (s unify: x with: 3) isSubstitution.
	self assert: (s unify: x with: y) isSubstitution.