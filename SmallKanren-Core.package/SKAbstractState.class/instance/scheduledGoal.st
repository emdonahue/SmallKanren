scheduling
scheduledGoal
	self schedule ifEmpty: [ ^ SKGoal fail ].
	^ self schedule first