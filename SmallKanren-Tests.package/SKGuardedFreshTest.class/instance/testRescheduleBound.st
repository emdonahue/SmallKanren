reschedule
testRescheduleBound
	self assert: ({[ :b | false ] fresh. y === 1 cons. {x} match: #((_)) o: [ :a | a === 1 ]. x === y} asGoal step step reify: x) equals: 1 cons