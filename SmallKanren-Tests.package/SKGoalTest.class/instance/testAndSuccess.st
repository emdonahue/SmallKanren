and
testAndSuccess
	self assert: (SKSucceed singleton & (x === 1)) isUnification.
	self assert: (x === 1 & SKSucceed singleton) isUnification.