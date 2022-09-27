disjunction
testDisjunctionSatisfied
	"Tests that disjunctions correctly remove themselves if they are satisfied."

	| state |
	state := x =/= 2 run: (x =/= 1 run: (SKSubstitution new unify: y with: 3)).
	self assert: (state unify: x with: 3) constraints isEmpty.
	self assert: (state unify: x with: y) constraints isEmpty.