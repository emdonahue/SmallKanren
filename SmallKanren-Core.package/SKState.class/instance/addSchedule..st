scheduling
addSchedule: aSchedule
	^ self copy schedule: (schedule append: aSchedule cons).