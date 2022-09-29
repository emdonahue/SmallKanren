tests
testEmptyStore
	"Symbolo should be automatically set by empty constraint store."

	self assert: ((x isSymbolo run: SKSubstitution new) constraints constraintAt: x) equals: SKSymbolo singleton