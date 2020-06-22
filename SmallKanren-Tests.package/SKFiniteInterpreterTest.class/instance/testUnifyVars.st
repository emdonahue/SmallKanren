interpreter
testUnifyVars
	self
		assert:
			[ :p | 
			interpreter
				unify: #x
				with: #z
				in: #(#(x y z) nil) asConsTree
				o: p
				depth: 1
				length: 1 ] asGoal run
		equals: #(#(#(#(z y z) nil))) asConsTree