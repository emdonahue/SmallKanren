tests
testAddConstraint
	| x |
	x := SKVar new.
	self assert: ((x isSymbolo run: SKSubstitution new) at: x) equals: (x isSymbolo) asConstraint.