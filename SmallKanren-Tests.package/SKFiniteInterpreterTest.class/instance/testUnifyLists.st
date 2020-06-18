interpreter
testUnifyLists
	self
		assert:
			[ :p | 
			interpreter
				unify: #x
				with: #y
				in:
					{{(1 cons: 2).
					(#z cons: 2).
					#z}.
					#()} asConsTree
				o: p ] asGoal run
		equals:
			{{{{(#z cons: 2).
			(1 cons: 2).
			1}.
			#()}}} asConsTree