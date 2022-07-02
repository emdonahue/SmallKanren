interpreter
testUnifyPrograms
	self
		assert: (interpreter eval: #(#(== x 1)) asConsR)
		equals: (self x: 1).
	self
		assert: (interpreter eval: #(#(== x 1) #(== y 2)) asConsR)
		equals: (self x: 1 y: 2)