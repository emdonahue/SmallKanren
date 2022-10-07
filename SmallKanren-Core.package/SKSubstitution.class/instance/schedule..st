scheduling
schedule: aSchedule
	aSchedule ifNotEmpty: [
		^ SKGuardSchedule new substitution: self; setSchedule: aSchedule ]