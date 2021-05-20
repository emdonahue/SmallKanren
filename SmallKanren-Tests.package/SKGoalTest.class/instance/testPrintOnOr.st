printing
testPrintOnOr
	self
		assert: (x === 42 | (y === 43)) asString
		equals:
			('(| <x:{1}>===42 <y:{2}>===43)'
				format:
					{xhash.
					yhash})