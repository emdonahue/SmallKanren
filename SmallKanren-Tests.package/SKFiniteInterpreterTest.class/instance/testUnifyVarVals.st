interpreter
testUnifyVarVals
	self
		assert:
			[ :p | 
			interpreter
				unify: #x
				with: 1
				in: interpreter env asConsR
				o: p
				depth: 1
				length: 1 ] asGoal run
		equals: #(#(#(#(1 y z) #(#() #() #())))) asConsR.
	self
		assert:
			[ :p | 
			interpreter
				unify: #x
				with: 2
				in: #(#(1 y z) #()) asConsR
				o: p
				depth: 1
				length: 1 ] asGoal run
		equals: Cons empty cons cons.