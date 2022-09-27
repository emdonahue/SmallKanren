tests
testFailOnApplyToAtom
	self assert: ((x absento: 1) run: (SKSubstitution new unify: x with: 1)) equals: SKStream failure.