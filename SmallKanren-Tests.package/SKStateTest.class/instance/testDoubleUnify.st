tests
testDoubleUnify
	"Test unifications in a non empty store"

	self assert: (((SKSubstitution new unify: x with: 1) unify: x with: 1) reify: x) equals: 1.
	self assert: (((SKSubstitution new unify: x with: 1) unify: x with: x) reify: x) equals: 1.
	self assert: (((SKSubstitution new unify: x with: x) unify: x with: 1) reify: x) equals: 1.
	self assert: (((SKSubstitution new unify: x with: 1) unify: y with: 2) reify: x) equals: 1.
	self assert: (((SKSubstitution new unify: x with: 1) unify: y with: 2) reify: y) equals: 2.
	self assert: ((SKSubstitution new unify: x with: 1) unify: x with: 2) atEnd