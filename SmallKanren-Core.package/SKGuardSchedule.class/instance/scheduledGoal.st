scheduling
scheduledGoal
	(schedule reject: #hasExternalDependencies) ifNotEmpty: [ :s | ^ s reduce: [ :a :b | a & b ] ].
	^ schedule first