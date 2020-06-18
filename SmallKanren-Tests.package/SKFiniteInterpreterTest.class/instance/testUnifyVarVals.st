interpreter
testUnifyVarVals
	self
		assert:
			[ :p | 
			interpreter
				unify: #x
				with: 1
				in: env asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(1 y z) #(#() #() #())))) asConsTree.