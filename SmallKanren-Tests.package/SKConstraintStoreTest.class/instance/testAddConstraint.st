tests
testAddConstraint
	| x |
	x := SKVar new.
	self assert: ((x isSymbolo run: SKSubstitution new) constraintAt: x) equals: (x isSymbolo) asConstraint.
	self assert: (x isNumbero run: (x isSymbolo run: SKSubstitution new)) equals: SKStream failure.