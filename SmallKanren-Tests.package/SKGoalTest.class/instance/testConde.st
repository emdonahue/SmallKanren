tests
testConde
	self skip.
	self assert: [ :a | {SKGoal fail. SKGoal fail} conde ] asGoal run equals: Cons empty.
	self assert: [ :a | {a===1. a===2. a===3} conde ] asGoal run equals: (3 cons cons: 2 cons cons: 1 cons cons).
	self assert: [ :a | {(a===1 | (a===1)). (a===2 | (a===2))} conde ] asGoal run equals: (2 cons cons: 2 cons cons: 1 cons cons: 1 cons cons).
	self assert: [ :a | {[a===1] fresh | [a===1] fresh. [a===2] fresh | [a===2] fresh} conde ] asGoal run equals: (2 cons cons: 1 cons cons: 2 cons cons: 1 cons cons).