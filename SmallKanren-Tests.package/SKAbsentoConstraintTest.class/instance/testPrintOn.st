tests
testPrintOn
	self assert: (x absento: 1) asConstraint asString equals: 'absento: 1'.
	self assert: ((x absento: 1) asConstraint , (x absento: 2) asConstraint) asString equals: 'absento: 1,2'.
	self assert: (x absento: 42) asString equals: ('<x:{1}> absento: 42' format: {xhash})