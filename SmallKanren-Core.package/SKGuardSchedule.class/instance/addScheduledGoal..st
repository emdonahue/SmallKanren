scheduling
addScheduledGoal: aScheduleItem
	^ self copy setSchedule: (schedule add: aScheduleItem)