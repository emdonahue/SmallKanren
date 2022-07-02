fresh
testFreshVars
	self
		assert:
			[ :q | 
			[ :a | 
			{(a === 1).
			(q === a cons)} ] ] asGoal run
		equals: #(#(#(1))) asConsR