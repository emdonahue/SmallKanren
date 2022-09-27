tests
testFailOnUnifyFree
	self assert: ((x =/= y run: SKSubstitution new) unify: x with: y) atEnd.
	self assert: ((x =/= y run: SKSubstitution new) unify: y with: x) atEnd