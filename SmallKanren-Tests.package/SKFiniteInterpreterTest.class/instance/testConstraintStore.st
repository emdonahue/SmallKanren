interpreter
testConstraintStore
	self
		assert:
			[ :o | 
			interpreter
				extend: #x
				with: #symbol
				constraint: #typeo
				store: #(#() #() #()) asConsR
				o: o ] asGoal run
		equals:
			{{{{(#x cons: #symbol)}. 
			#().
			#()}}} asConsR