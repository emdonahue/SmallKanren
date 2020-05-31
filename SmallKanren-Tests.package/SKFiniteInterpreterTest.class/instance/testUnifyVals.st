interpreter
testUnifyVals
	self
		assert:
			[ :p | 
			interpreter
				unify: 1
				with: 1
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(x y z) #()))) asConsTree.
		
			self
		assert:
			[ :p | 
			interpreter
				unify: 1
				with: 2
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#())) asConsTree.
		
	