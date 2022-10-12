schedule
testPrioritizeOnUnify
	self assert: ({[ :b | false ] fresh. {x} match: #((_)) o: [ :a | a === 1 ]. x === y cons} asGoal step step reify: x) equals: 1 cons