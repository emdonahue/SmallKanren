interpreter
testConstraintStore
	self
		assert:
			[ :o | 
			interpreter
				extend: #typeo
				with: #symbol
				store: #(#() #() #()) asConsTree
				o: o ] asGoal run
		equals: #(#(#(#(symbol) #() #()))) asConsTree.
	self
		assert:
			[ :o | 
			interpreter
				extend: #x
				with: #symbol
				type: #typeo
				store: #(#(#() #() #()) #(#() #() #())) asConsTree
				o: o ] asGoal run
		equals: #(((#(#(symbol) #() #()) #(#() #() #())))) asConsTree