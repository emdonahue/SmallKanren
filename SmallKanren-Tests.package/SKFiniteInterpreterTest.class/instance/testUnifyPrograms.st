tests
testUnifyPrograms
	self
		assert: (interpreter eval: #(#(== 1 1)) asConsTree)
		equals: #(#(x y z) #()) asConsTree.
	self
		assert: (interpreter eval: #(#(== x 1)) asConsTree)
		equals: #(#(1 y z) #()) asConsTree.
	self
		assert: (interpreter eval: #(#(== 1 x) #(== y 2)) asConsTree)
		equals: #(#(1 2 z) #()) asConsTree.
	self
		assert: (interpreter eval: #(#(== #(x y) #(z z)) #(== #(z) (2))) asConsTree)
		equals: #(#(2 2 2) #()) asConsTree