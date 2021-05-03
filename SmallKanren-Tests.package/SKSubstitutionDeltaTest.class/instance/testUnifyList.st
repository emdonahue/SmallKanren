tests
testUnifyList
	| delta |
	delta := (SKSubstitution new unify: (x cons: y cons) with: (1 cons: 2 cons)).
	self assert: delta => x equals: 1.
	self assert: delta => y equals: 2.
	self assert: delta var equals: x.
	self assert: delta val equals: 1.
	self assert: delta deltas equals: (y=/=2).