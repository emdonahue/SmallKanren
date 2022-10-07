scheduling
removeScheduledGoal
	self schedule ifNotEmpty: [ ^ self schedule: (self schedule rest) ]