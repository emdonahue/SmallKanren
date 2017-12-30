tests
testUnifyTwo
	| delta |
	delta := (SKSubstitution new unify: x with: 1) unify: y with: 2.
	self assert: delta => x equals: 1.
	self assert: delta => y equals: 2.
	self assert: delta deltas equals: y2x1.