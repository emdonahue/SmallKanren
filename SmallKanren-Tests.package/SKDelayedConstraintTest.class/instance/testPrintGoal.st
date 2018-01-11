printing
testPrintGoal
	self assert: (x carCdrIn: [  ]) asString equals: ('(delay <x:{1}>)'  format: {x hash})