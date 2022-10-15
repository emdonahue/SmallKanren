schedule
testRescheduleOnUnifyVar
	self assert: ({[ :b | false ] fresh. {x} match: #((_)) o: [ :a | a === 1 ]. x === y} asGoal step scheduleHasDependency: y)