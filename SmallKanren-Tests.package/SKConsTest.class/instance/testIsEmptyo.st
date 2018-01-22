tests
testIsEmptyo
	self assert: empty isEmptyo equals: SKSucceed singleton.
	self assert: pair isEmptyo equals: SKFail  singleton.