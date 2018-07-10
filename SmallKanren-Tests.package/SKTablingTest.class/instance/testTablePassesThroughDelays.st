classic tabling
testTablePassesThroughDelays
	self assert: ([ :path | (path carCdrIn: [ :a :d | self path: a to: d ]) & (path carCdrIn: [ :a :d | self path: a to: d ]) ] asGoal run isNotEmpty)