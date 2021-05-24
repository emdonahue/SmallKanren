tests
testCondeBind
	self assert: [ :a :b | 
		b === 4 &
		{repeato value: 1 value: a value: 10.
			repeato value: 2 value: a value: 10.
			repeato value: 3 value: a value: 10 } conde ] asGoal run equals: 
		((Cons naturals take: 30) collect: [ :b | ((Cons repeat: 3-(b % 3)) take: (b-1//3)) force cons: 4 cons ]).
		self assert: [ :a :b | 
		{repeato value: 2 value: a value: 10.
			repeato value: 1 value: a value: 10.
			repeato value: 3 value: a value: 10 } conde
			& (b===4) ] asGoal run equals: 
		((Cons naturals take: 30) collect: [ :b | ((Cons repeat: 3-(b % 3)) take: (b-1//3)) force cons: 4 cons ]).