tests
testConde
	self assert: [ :a | {SKGoal fail. SKGoal fail} conde ] asGoal run equals: Cons empty.
	self assert: [ :a | {SKGoal fail. a===1} conde ] asGoal run equals: 1 cons cons.
	self assert: [ :a | {a===1. SKGoal fail} conde ] asGoal run equals: 1 cons cons.
	self assert: (([ :a | {a===1. SKGoal fail} conde ] asGoal run: s runtime: r) step: r) isState.
	self assert: [ :a | {SKGoal fail. a===2 | (a===1)} conde ] asGoal run equals: (1 cons cons: 2 cons cons).
	self assert: [ :a | {a===1. a===2. a===3} conde ] asGoal run equals: (3 cons cons: 2 cons cons: 1 cons cons).
	self assert: [ :a | {(a===1 | (a===1)). (a===2 | (a===2))} conde ] asGoal run equals: (2 cons cons: 2 cons cons: 1 cons cons: 1 cons cons).
	self assert: [ :a | {[a===1] fresh | [a===1] fresh. [a===2] fresh | [a===2] fresh} conde ] asGoal run equals: (2 cons cons: 1 cons cons: 2 cons cons: 1 cons cons).
	self assert: [ :a | 
		{repeato value: 1 value: a value: 10.
			repeato value: 2 value: a value: 10.
			repeato value: 3 value: a value: 10 } conde ] asGoal run equals: 
		((Cons naturals take: 30) collect: [ :b | ((Cons repeat: 3-(b % 3)) take: (b-1//3)) force cons ]).