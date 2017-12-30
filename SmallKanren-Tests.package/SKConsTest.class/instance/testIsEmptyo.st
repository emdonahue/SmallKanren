tests
testIsEmptyo
	self assert: empty isEmptyo equals: SKSuccess singleton.
	self assert: pair isEmptyo equals: SKFailure  singleton.