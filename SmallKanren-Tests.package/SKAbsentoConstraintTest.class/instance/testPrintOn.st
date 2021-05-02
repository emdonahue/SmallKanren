tests
testPrintOn
	self assert: (x absento: 1) asConstraint asString equals: 'excludes: 1'.
	self assert: ((x absento: 1) asConstraint , (x absento: 2) asConstraint) asString equals: 'excludes: 1,2'.
	self assert: (x absento: 42) asString equals: ('<x:{1}> excludes: 42' format: {xhash})