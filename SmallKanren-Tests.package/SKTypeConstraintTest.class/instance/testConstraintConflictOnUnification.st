tests
testConstraintConflictOnUnification
	"Constraints should shift to single var after free-free unification"

	self assert: ((y isNumbero run: (x isSymbolo run: SKSubstitution new)) unify: y with: x) atEnd