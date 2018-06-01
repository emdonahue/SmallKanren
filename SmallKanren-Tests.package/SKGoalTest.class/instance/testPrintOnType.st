printing
testPrintOnType
	self assert: x isNumbero asString equals: ('<x:{1}> isNumber' format: {xhash}).
	self assert: x isSymbolo asString equals: ('<x:{1}> isSymbol' format: {xhash})