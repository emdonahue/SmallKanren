tests
testIsNotEmptyo
	self assert: empty isNotEmptyo equals: SKFail singleton.
	self assert: pair isNotEmptyo equals: SKSucceed singleton