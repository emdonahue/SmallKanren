interpreter
testUnifyVars
	self
		assert:
			[ :p | 
			interpreter
				unify: #x
				with: #z
				in: #(#(x y z) nil) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(z y z) nil))) asConsTree