tests
testUnify
	| delta |
	delta := SKSubstitution empty unify: x with: 1.
	self assert: delta => x equals: 1.
	self assert: delta var equals: x.
	self assert: delta val equals: 1.
	