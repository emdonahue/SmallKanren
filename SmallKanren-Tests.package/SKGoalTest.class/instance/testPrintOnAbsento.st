printing
testPrintOnAbsento
	self assert: (x absento: 1) asString equals: ('<x:{1}> absento: 1' format: {xhash})