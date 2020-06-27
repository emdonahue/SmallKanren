interpreter
testConstraintStore
	self
		assert:
			[ :o | 
			interpreter
				extend: #x
				with: #symbol
				constraint: #typeo
				store: #(#() #() #()) asConsTree
				o: o ] asGoal run
		equals:
			{{{{(#x cons: #symbol)}. 
			#().
			#()}}} asConsTree