tests
testConstraintShiftsVarsWhenApplied
	"Symbolo should be automatically set by empty constraint store."

	| s |
	s := x isSymbolo run: (SKSubstitution new unify: x with: y).
	self assertCollection: {s constraintAt: y. s constraintAt: x}
		hasSameElements: {SKConstraint satisfied. SKConstraint symbolo}