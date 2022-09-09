fresh
testNestedFreshGoal
	self assert: [ [ [ SKGoal succeed  ] ] ] asGoal runList equals: #(#()) asConsR