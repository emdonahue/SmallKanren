tests
testSingleUnify
	"Test unifications of one variable"

	self assert: (SKSubstitution new unify: 1 with: 1) substitution isEmpty.
	self assert: (SKSubstitution new unify: 1 with: 2) atEnd.
	self assert: (SKSubstitution new unify: 1 with: x) => x equals: 1.
	self assert: (SKSubstitution new unify: x with: 1) => x equals: 1.
	self assert: (SKSubstitution new unify: x with: x) substitution isEmpty.
	