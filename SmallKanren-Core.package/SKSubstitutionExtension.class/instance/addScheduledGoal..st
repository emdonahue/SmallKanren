adding
addScheduledGoal: aScheduleItem
	^ self copy substitution: (substitution addScheduledGoal: aScheduleItem)