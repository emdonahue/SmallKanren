tabling
delayedBind: tabledGoal runtime: aRuntime
	self hasSchedule ifTrue: [ ^ SKBind new goal: tabledGoal; stream: self ].
	^ tabledGoal delayedRun: self runtime: aRuntime.