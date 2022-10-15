reschedule
testRescheduleFree
	self assert: ({{x} match: #((_)) o: [ :a | a === 1 ]. x === y} asGoal step scheduleHasDependency: y)