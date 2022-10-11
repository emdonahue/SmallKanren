array
testGroundEagerness
	self assert: ({1} match: #(_) o: [ :a | x===a ]) step => x equals: 1.
	self assert: {x===1. {x} match: #(_) o: [ :a | y===a ]} asGoal step => y equals: 1.