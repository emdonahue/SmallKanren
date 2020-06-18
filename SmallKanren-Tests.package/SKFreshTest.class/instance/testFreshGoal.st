tests
testFreshGoal
	self assert: [ SKGoal succeed ] asGoal run equals: #(#()) asConsTree