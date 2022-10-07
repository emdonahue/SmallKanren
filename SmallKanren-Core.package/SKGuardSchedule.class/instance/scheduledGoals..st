scheduling
scheduledGoals: aSchedule
	^ aSchedule
		ifEmpty: [ substitution ]
		ifNotEmpty: [ self copy schedule: aSchedule ]