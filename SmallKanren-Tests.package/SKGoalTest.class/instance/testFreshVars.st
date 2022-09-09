fresh
testFreshVars
	self
		assert:
			[ :q | 
			[ :a | 
			{(a === 1).
			(q === a cons)} ] ] asGoal runList
		equals: #(#(#(1))) asConsR