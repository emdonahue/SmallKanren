printing
testPrintOnDisequality
	self assert: (x =/= 1) asString equals: ('<x:{1}>=/=1' format: {x hash}).