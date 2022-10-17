reschedule
testRescheduleScheduledVar
	| st |
	st := {[ :b | false ] fresh. {y} match: #(_) o: [ :a | a === 1 ]. {x} match: #(_) o: [ :a | a === 1 ]. x === y} asGoal step.
	self assert: (st scheduleHasDependency: y).
	self deny: (st scheduleHasDependency: x).