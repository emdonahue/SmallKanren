rembero
testRemberoXFree
	self assert: [ :a :b | 1 cons rember: a o: b ] asGoal run equals: (1 cons: Cons empty cons) cons.
	self assert: [ :a :b | (1 cons: 2 cons) rember: a o: b ] asGoal run equals: ((2 cons: 1 cons cons) cons: (1 cons: 2 cons cons) cons) 