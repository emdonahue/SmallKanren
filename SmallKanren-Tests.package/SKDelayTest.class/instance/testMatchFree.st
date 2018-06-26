matching
testMatchFree
	self assert: [ :a | a match: #(@) o: [ :one | one === 1 ] ] asGoal run first equals: 1 cons cons.