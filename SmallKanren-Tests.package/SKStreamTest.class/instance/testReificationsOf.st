tests-debugging
testReificationsOf
	| qs |
	qs := [ :a | a === 1 | (a === 2) ] asGoal runtime step
		queriesInProgress.
	self assert: qs equals: (Bag with: 1 cons with: 2 cons)