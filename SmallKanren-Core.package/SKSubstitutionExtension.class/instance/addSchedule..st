adding
addSchedule: aScheduleItem
	^ self copy substitution: (substitution addSchedule: aScheduleItem)