array
testPrioritizeArray
	x := SKVar tag: #x.
	self assert: {{x} match: #((_)) o: [ :a | y===a ]. x===1 cons} asGoal step step => y equals: 1.