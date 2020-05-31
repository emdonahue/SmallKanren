interpreter
testUnifyVarVals
	self
		assert:
			[ :p | 
			interpreter
				unifyVar: #x
				val: 1
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal run
		equals: #(#(#(#(1 y z) #()))) asConsTree.
	"self
		assert:
			[ :p | 
			interpreter
				unifyVar: #x
				val: #x cons
				in: #(#(x y z) #()) asConsTree
				o: p ] asGoal asGoal run
		equals: Cons empty cons cons"