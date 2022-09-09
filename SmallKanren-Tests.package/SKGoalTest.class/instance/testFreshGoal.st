fresh
testFreshGoal
	self assert: [ SKGoal succeed ] asGoal runList equals: #(#()) asConsR