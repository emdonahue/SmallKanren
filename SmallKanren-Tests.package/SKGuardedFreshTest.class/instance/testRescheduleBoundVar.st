reschedule
testRescheduleBoundVar
	self assert: ({{x} match: #((_)) o: [ :a | a === 1 ]. z === y. x === z} asGoal step scheduleHasDependency: y)