tests
testConstraintsMergeWhenUnified
	"Constraints should shift to single var after free-free unification"

	| s |
	s := (y isSymbolo run: (x isSymbolo run: SKState new)) unify: x with: y.
	self assert: (s constraints at: y) equals: SKSymbolConstraint singleton.
	self assert: (s constraints at: x) equals: SKSatisfiedConstraint singleton