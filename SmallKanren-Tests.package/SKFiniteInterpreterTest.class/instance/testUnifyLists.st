interpreter
testUnifyLists
	self
		assert:
			[ :p | 
			interpreter
				unify: (#x cons: #y )
				with: (1 cons: 2 )
				in: interpreter env
				o: p
				depth: 1
				length: 1 ] asGoal run
		equals: (self x: 1 y: 2) cons cons.
	self
		assert:
			[ :p | 
			interpreter
				unify: (#x cons: #x )
				with: (1 cons: 2 )
				in: interpreter env
				o: p
				depth: 1
				length: 1 ] asGoal run
		equals: Cons empty