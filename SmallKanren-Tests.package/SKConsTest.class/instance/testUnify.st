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
	self assert: (SKState new unify: empty with: pair) isEmptyStream.
	self assert: (SKState new unify: pair with: empty) isEmptyStream.
	self assert: (SKState new unify: list with: pair) isEmptyStream.
	self assert: (SKState new unify: list with: #symbol) isEmptyStream.
	self assert: (SKState new unify: #symbol with: list) isEmptyStream.
	self assert: (SKState new unify: empty with: #symbol) isEmptyStream.
	self assert: (SKState new unify: #symbol with: empty) isEmptyStream.