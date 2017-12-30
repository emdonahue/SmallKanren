tests
testIsNotEmptyo
	self assert: empty isNotEmptyo equals: SKFailure singleton.
	self assert: pair isNotEmptyo equals: SKSuccess singleton