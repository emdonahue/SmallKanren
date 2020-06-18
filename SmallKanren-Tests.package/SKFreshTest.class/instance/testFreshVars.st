tests
testFreshVars
	self
		assert:
			[ :q | 
			[ :x | 
			{(x === 1).
			(q === x cons)} ] ] asGoal run
		equals: #(#((1))) asConsTree