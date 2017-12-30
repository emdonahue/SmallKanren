tests
testUnify
	| delta |
	delta := SKSubstitution new unify: x with: 1.
	self assert: delta => x equals: 1.
	self assert: delta deltas equals: x1