tests
testPrintOn
	self assert: multi asString equals: ('isNumber & \{<x:{1}>=/=1\} & excludes: 2' format: {xhash})