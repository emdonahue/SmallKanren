tests
testEmptyProgram
	self
		assert: (interpreter eval: Cons empty) 
		equals: #(#() #()) asConsTree