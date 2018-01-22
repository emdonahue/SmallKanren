printing
testPrintOn
	self assert: SKNumberConstraint singleton asString equals: 'isNumber'.
	self assert: SKSymbolConstraint singleton asString equals: 'isSymbol'.
	