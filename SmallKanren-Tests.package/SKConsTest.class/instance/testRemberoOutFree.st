rembero
testRemberoOutFree
	self assert: [ :a | 1 cons rember: 1 o: a ] asGoal runList equals: Cons empty cons cons.
	self assert: [ :a | (1 cons: 2 cons) rember: 1 o: a ] asGoal runList equals: 2 cons cons cons.
	self assert: [ :a | (1 cons: 2 cons) rember: 2 o: a ] asGoal runList equals: 1 cons cons cons