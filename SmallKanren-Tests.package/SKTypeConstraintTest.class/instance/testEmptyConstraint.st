tests
testEmptyConstraint
	"Symbolo should be checked by previous symbolo."

	| s |
	s := y isSymbolo run: (x isSymbolo run: SKSubstitution new).
	self assert: (s constraints constraintAt: y) equals: SKSymbolo singleton.
	self assert: (s constraints constraintAt: x) equals: SKSymbolo singleton