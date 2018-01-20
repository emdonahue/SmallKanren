printing
testPrintOnType
	self assert: x isNumbero asString equals: ('<x:{1}> isNumber' format: {x hash}).
	self assert: x isSymbolo asString equals: ('<x:{1}> isSymbol' format: {x hash})