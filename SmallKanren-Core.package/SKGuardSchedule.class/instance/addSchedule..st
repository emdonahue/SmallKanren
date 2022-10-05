scheduling
addSchedule: aScheduleItem
	^ self copy schedule: (schedule add: aScheduleItem)