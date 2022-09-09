interpreter
testUnifyVars
	self
		assert:
			[ :p | 
			interpreter
				unify: #x
				with: #z
				in: #(#(x y z) nil) asConsR
				o: p
				depth: 1
				length: 1 ] asGoal runList
		equals: #(#(#(#(z y z) nil))) asConsR