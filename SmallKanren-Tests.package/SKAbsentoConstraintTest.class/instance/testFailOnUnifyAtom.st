tests
testFailOnUnifyAtom
	self assert: ( (((x excludes: 1) run: SKState new) unify: x with: 1)) equals: SKStream failure.