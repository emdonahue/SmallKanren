tests
testUnifyVal
	self assert: (SKState new unify: #x with: #x) isState.
	self assert: (SKState new unify: #x with: #y) atEnd