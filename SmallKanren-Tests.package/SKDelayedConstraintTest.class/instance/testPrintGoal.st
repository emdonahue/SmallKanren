printing
testPrintGoal
	self assert: (x carCdro: [  ]) asString equals: ('(delay <x:{1}>)'  format: {x hash})