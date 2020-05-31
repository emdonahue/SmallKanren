interpreter
testUnifyVars
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
				unifyVar: #x
				var: #z
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(z y z) #()))) asConsTree.
	self
		assert:
			[ :p | 
			interpreter
				unifyVar: #x
				val: #z
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal fails.
