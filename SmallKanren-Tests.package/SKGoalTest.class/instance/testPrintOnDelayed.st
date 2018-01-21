printing
testPrintOnDelayed
	self assert: (x car: 1 cdrIn: [  ]) asString equals: ('<x:{1}>===(1 . <delayed>)' format: {x hash}).
	self assert: (x carCdrIn: [  ]) asString equals: ('<x:{1}>===(<delayed> . <delayed>)' format: {x hash}).