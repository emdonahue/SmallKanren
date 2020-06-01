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
		equals: #(#(#((symbol) #() #()))) asConsTree