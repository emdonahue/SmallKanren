printing
testPrintOnUnification

	self assert: (x === 42) asString equals: ('<x:{1}>===42' format: {x hash}).
	self assert: (42 === x) asString equals: ('<x:{1}>===42' format: {x hash}).
	self
		assert: (x === y) asString
		equals:
			('<x:{1}>===<y:{2}>'
				format:
					{x hash.
					y hash})