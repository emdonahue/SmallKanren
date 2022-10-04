tests
testPassOnApplyToAtom
	self assert: (((x absento: 1) run: (SKSubstitution new unify: x with: 2)) constraintAt: x) equals: satisfied.