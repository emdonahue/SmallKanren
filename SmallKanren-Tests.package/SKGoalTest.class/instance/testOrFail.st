and
testOrFail
	self assert: (SKFail singleton | (x === 1)) isUnification.
	self assert: (x === 1 | SKFail singleton) isUnification.