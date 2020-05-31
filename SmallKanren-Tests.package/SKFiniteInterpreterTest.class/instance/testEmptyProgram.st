interpreter
testEmptyProgram
	self
		assert: (interpreter eval: Cons empty)
		equals: #(#(x y z) #()) asConsTree