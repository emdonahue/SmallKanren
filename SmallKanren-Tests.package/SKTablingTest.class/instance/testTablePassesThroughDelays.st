tests
testTablePassesThroughDelays
	self assert: ([ :path | (path carCdro: [ :a :d | self path: a to: d ]) & (path carCdro: [ :a :d | self path: a to: d ]) ] asGoal run isNotEmpty)