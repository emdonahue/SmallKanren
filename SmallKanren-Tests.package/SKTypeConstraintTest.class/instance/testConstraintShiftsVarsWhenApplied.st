tests
testConstraintShiftsVarsWhenApplied
	"Symbolo should be automatically set by empty constraint store."

	| s |
	s := x isSymbolo run: (SKState new unify: x with: y).
	self assert: (s constraints at: y) equals: SKSymbolConstraint singleton.
	self assert: (s constraints at: x) equals: SKSatisfiedConstraint singleton