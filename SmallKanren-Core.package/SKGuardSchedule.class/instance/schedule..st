scheduling
schedule: aSchedule
	aSchedule ifEmpty: [ ^ substitution ].
	^ self copy setSchedule: aSchedule