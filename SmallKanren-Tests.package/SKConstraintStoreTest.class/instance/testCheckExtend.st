tests
testCheckExtend
	| x y |
	x := SKVar new.
	y := SKVar new.
	self assert: (x === 42 run: (x isSymbolo run: SKSubstitution new)) equals: SKStream failure.
	self assert: (x === 42 run: (x isNumbero run: SKSubstitution new)) isSubstitution.
	self assert: (x === 42 run: SKSubstitution new) isSubstitution.
	self assert: (y === 42 run: (x isNumbero run: SKSubstitution new)) isConstraintStore.