scheduling
run: aGoal schedule: aSchedule runtime: aRuntime ifPriority: aBlock
	"Build a goal out of the schedule items. If there are priority items, invoke the continuation to break out of an earlier block, otherwise return normally."
	
	(aSchedule select: #hasPriority)
		ifEmpty: [ ^ aGoal run: (self schedule: aSchedule) runtime: aRuntime ] "If there are no high priority goals, the whole schedule is low priority."
		ifNotEmpty: [ :s | "If there are high priority goals, return immediately via continuation."
			aBlock value: 
				((s inject: aGoal into: [ :gs :g | gs & g expandFresh ifFail: [ ^ aBlock value: SKStream failure ]])
					run: (self schedule: (self schedule reject: #hasPriority)) runtime: aRuntime) ].