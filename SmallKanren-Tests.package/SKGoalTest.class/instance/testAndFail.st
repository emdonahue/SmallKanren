and
testAndFail
	self assert: (SKFail singleton & (x === 1)) isFailure.
	self assert: (x === 1 & SKFail singleton) isFailure.
