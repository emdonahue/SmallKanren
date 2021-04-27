tests
testUnify
	self assert: (SKState new unify: empty with: empty deepCopy) isState.
	self assert: (SKState new unify: pair with: pair deepCopy) isState.
	self assert: (SKState new unify: list with: list deepCopy) isState.
	self assert: (SKState new unify: x with: empty) isState.
	self assert: (SKState new unify: empty with: x) isState.
	self assert: (SKState new unify: x with: list) isState.
	self assert: (SKState new unify: list with: x) isState.
	self assert: (SKState new unify: pair with: (Cons car: x cdr: y)) isState.
	self assert: (SKState new unify: empty with: pair) isFailure.
	self assert: (SKState new unify: pair with: empty) isFailure.
	self assert: (SKState new unify: list with: pair) isFailure.
	self assert: (SKState new unify: list with: #symbol) isFailure.
	self assert: (SKState new unify: #symbol with: list) isFailure.
	self assert: (SKState new unify: empty with: #symbol) isFailure.
	self assert: (SKState new unify: #symbol with: empty) isFailure.