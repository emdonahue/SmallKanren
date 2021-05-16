debugging
advanceSchedule: aSchedule
	^ aSchedule runSchedule: (self copy schedule: (schedule remove: aSchedule ifAbsent: [ ^ SKStream failure ]) force).