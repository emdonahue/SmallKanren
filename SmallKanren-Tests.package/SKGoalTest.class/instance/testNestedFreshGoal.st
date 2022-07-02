fresh
testNestedFreshGoal
	self assert: [ [ [ SKGoal succeed  ] ] ] asGoal run equals: #(#()) asConsR