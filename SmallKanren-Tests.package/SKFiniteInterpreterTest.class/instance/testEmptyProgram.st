interpreter
testEmptyProgram
	self
		assert: (interpreter eval: Cons empty)
		equals: interpreter env asConsR