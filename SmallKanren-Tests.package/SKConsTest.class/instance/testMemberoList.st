member
testMemberoList
	self assert: [ :b | [ :a | b === (2 cons: a cons) & (b membero: 1) ] ] asGoal run equals: (2 cons: 1 cons) cons cons