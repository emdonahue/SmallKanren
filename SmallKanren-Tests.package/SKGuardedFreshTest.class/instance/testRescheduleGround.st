reschedule
testRescheduleGround
	self assert: ({[ :b | false ] fresh. {x} match: #((_)) o: [ :a | a === 1 ]. x === y cons} asGoal step step reify: x) equals: 1 cons.
	self assert: ({[ :b | false ] fresh. {x} match: #((_)) o: [ :a | a === 1 ]. y cons === x} asGoal step step reify: x) equals: 1 cons.