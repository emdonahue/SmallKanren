tests
testFailOnUnifyFree
	self assert: ((x =/= y run: SKState new) unify: x with: y) atEnd.
	self assert: ((x =/= y run: SKState new) unify: y with: x) atEnd