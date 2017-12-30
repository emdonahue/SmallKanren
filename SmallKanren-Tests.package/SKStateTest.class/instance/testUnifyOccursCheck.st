tests
testUnifyOccursCheck
	self assert: (SKState new unify: x with: x cons) isNone.