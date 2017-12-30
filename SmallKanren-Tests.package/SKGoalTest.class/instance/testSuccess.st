tests
testSuccess
	| ss |
	ss := true asGoal asOrderedCollection.
	self assert: ss size equals: 1