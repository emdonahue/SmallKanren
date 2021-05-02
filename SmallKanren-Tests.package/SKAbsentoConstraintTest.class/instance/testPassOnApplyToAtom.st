tests
testPassOnApplyToAtom
	self assert: (((x absento: 1) run: (SKState new unify: x with: 2)) constraints at: x) equals: satisfied.