debugging
advanceSchedule: aSchedule
	^ aSchedule runSchedule: (self setSchedule: (schedule remove: aSchedule ifAbsent: [ ^ SKStream failure ]) force).