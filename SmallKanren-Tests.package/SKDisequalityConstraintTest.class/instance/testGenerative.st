generative
testGenerative
	self skip.
	[ :p :c | 
	self genDisj: p disj: c depth: 2
	 ] asGoal run do: [ :pc | 
		pc second inject: SKGoal succeed into: [ :g :conj | g & (2) ]
	 ]