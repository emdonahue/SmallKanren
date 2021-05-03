printing
testPrintOn
	self assert: (x =/= 1) asConstraint asString equals: ('=/=1' format: {xhash}).
	self
		assert: ((x cons: y cons) =/= (1 cons: 2 cons)) asConstraint asString
		equals:
			('=/=1&<y:{2}>=/=2'
				format:
					{xhash.
					yhash}).
	self
		assert: (x =/= 2 , (y =/= 1)) asString
		equals:
			('=/=2 =/=1'
				format:
					{yhash. xhash}).
	self
		assert: ((x cons: y cons) =/= (1 cons: 2 cons), (x =/= 3)) asString
		equals:
			('=/=1&<y:{2}>=/=2 =/=3'
				format:
					{xhash.
					yhash}).
	self assert: (x =/= 1) asString equals: ('<x:{1}> =/=1' format: {xhash}).
	self
		assert: ((x cons: y cons) =/= (y cons: x cons)) asString
		equals:
			('<x:{1}> =/=<y:{2}>'
				format:
					{xhash.
					yhash})