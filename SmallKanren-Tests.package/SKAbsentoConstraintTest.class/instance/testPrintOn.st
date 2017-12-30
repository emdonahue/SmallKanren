tests
testPrintOn
	self assert: (x excludes: 1) asConstraint asString equals: 'excludes: 1'.
	self assert: ((x excludes: 1) , (x excludes: 2)) asString equals: 'excludes: 1,2'.
	self assert: (x excludes: 42) asString equals: '<x:0> excludes: 42'.