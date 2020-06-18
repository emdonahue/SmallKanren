tests
testNestedFreshGoal
	self assert: [ [ [ SKGoal succeed  ] ] ] asGoal run equals: #(#()) asConsTree