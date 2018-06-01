printing
testPrintOnAbsento
	self assert: (x excludes: 1) asString equals: ('<x:{1}> excludes: 1' format: {xhash})