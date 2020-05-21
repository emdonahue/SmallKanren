tests
testUnify
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
				unify: #x
				with: #z
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(z y z) #()))) asConsTree.
	self
		assert:
			[ :p | 
			interpreter
				unify: #x
				with: #x
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(x y z) #()))) asConsTree.
		
	self
		assert:
			[ :p | 
			interpreter
				unify: #y
				with: 1
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(x 1 z) #()))) asConsTree.