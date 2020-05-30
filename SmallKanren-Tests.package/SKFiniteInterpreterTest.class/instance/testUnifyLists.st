tests
testUnifyLists
	self
		assert:
			[ :p | 
			interpreter
				unifyList: (1 cons: 1)
				list: (1 cons: 1)
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(x y z) #()))) asConsTree.
	self
		assert:
			[ :p | 
			interpreter
				unify: (1 cons: 1)
				with: (1 cons: 1)
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(x y z) #()))) asConsTree.
	self
		assert:
			[ :p | 
			interpreter
				unifyList: (1 cons: 2)
				list: (1 cons: 1)
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#())) asConsTree.
	self
		assert:
			[ :p | 
			interpreter
				unifyList: (#x cons: 2)
				list: (1 cons: #y)
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(1 2 z) #()))) asConsTree.
	self
		assert:
			[ :p | 
			interpreter
				unify: (#x cons: 2)
				with: (1 cons: #y)
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(1 2 z) #()))) asConsTree.
	self
		assert:
			[ :p | 
			[ :a :b | 
			a === (#x cons: 2) & (b === (1 cons: #y))
				&
					(interpreter
						unify: a
						with: b
						in: #(#(x y z) #()) asConsTree
						o: p) ] ] asGoal run
		equals: #(#(#(#(1 2 z) #()))) asConsTree.
		