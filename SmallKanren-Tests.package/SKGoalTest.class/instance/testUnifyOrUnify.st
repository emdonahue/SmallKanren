or
testUnifyOrUnify
	self assert: [ :a | a === 1 | (a === 2)] asGoal run equals: (1 cons: 2 cons).