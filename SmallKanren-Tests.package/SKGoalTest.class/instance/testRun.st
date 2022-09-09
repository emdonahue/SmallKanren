tests
testRun
	self assert: SKGoal succeed run equals: Cons empty cons.
	self assert: [ :a | a === 42 ] asGoal run equals: 42 cons.
	self assert: [ :a :b | {a === 42. b === 42}] asGoal run equals: (42 cons: 42 cons) cons.