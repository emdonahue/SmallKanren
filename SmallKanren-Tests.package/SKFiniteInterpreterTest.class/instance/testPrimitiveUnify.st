tests
testPrimitiveUnify
	self
		assert: (interpreter eval: #(#(== 1 1)) asConsTree)
		equals: #(#() #()) asConsTree.