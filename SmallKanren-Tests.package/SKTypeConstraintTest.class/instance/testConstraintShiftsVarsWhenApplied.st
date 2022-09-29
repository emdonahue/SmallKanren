tests
testConstraintShiftsVarsWhenApplied
	"Symbolo should be automatically set by empty constraint store."

	| s |
	s := x isSymbolo run: (SKSubstitution new unify: x with: y).
	self assertCollection: {s constraints at: y. s constraints at: x}
		hasSameElements: {SKConstraint satisfied. SKConstraint symbolo}