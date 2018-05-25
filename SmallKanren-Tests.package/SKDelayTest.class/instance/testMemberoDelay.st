tests
testMemberoDelay
	self assert: [ :a | ((1 cons cons: 2 cons cons: 3 cons cons) membero: a) & (a car: 2 cdrIn: [ :b  | b isEmptyo ]) ] asGoal run equals: 2 cons cons cons