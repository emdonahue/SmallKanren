tests
testPrintOn
	self assert: SKFailure singleton asString equals: 'Fail'.
	self assert: SKSuccess singleton asString equals: 'Succeed'.
	self assert: (x === 42) asString equals: '<x:0>===42'.
	self assert: (42 === x) asString equals: '<x:0>===42'.
	self assert: (x === y) asString equals: '<x:0>===<y:1>'.