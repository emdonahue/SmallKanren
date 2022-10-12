scheduling
removeScheduledGoal
	(schedule select: #hasExternalDependencies) ifNotEmpty: [ :s | ^ self copy schedule: s ].
	schedule rest ifNotEmpty: [ :s | ^ self copy schedule: s ].
	^ substitution