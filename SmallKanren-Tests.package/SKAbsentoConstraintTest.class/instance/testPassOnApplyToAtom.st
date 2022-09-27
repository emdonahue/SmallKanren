tests
testPassOnApplyToAtom
	self assert: (((x absento: 1) run: (SKSubstitution new unify: x with: 2)) constraints at: x) equals: satisfied.