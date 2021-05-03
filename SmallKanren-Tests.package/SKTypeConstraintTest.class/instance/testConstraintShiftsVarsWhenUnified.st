tests
testConstraintShiftsVarsWhenUnified
	"Constraints should shift to single var after free-free unification"

	| s |
	s := (x isSymbolo run: SKState new) unify: x with: y.
	self assert: (s constraints at: y) equals: SKSymbolo singleton.
	self assert: (s constraints at: x) equals: SKSatisfiedConstraint singleton