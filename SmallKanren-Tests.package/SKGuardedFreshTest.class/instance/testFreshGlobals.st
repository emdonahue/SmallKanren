tests - array
testFreshGlobals
	self skip.
	self assert: {{x} match: #(_ _) o: [ :a :b | b === 2 ]. 
		{x} match: #(_ _) o: [ :a :b | a===b ]} asGoal asAnswer => x equals: 2.