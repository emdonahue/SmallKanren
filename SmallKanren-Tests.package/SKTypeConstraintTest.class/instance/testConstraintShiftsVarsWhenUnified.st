tests
testConstraintShiftsVarsWhenUnified
	"Constraints should shift to single var after free-free unification"

	| s |
	s := (x isSymbolo run: SKSubstitution new) unify: x with: y.
	self assertCollection: {s constraints at: y. s constraints at: x}
		hasSameElements: {SKConstraint satisfied. SKConstraint symbolo}