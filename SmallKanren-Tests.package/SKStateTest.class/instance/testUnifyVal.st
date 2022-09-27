tests
testUnifyVal
	self assert: (SKSubstitution new unify: #x with: #x) isState.
	self assert: (SKSubstitution new unify: #x with: #y) atEnd