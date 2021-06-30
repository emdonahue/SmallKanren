tests - array
testFreshGlobals
	"Test for unimplemented functionality that creates new global values shared among guards bound to the same externals. Eg, sharing body vars in a relational interpreter apply bc they will eventually unify."
	self skip.
	self assert: {{x} match: #(_ _) o: [ :a :b | b === 2 ]. 
		{x} match: #(_ _) o: [ :a :b | a===b ]} asGoal asAnswer => x equals: 2.