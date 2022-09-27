tests
testConstraintShiftsVarsWhenApplied
	"Symbolo should be automatically set by empty constraint store."

	| s |
	s := x isSymbolo run: (SKSubstitution new unify: x with: y).
	self assert: (s constraints at: y) equals: SKSymbolo singleton.
	self assert: (s constraints at: x) equals: SKSatisfiedConstraint singleton