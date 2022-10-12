scheduling
schedule: aSchedule
	aSchedule ifEmpty: [ ^ state ].
	^ self copy setSchedule: aSchedule