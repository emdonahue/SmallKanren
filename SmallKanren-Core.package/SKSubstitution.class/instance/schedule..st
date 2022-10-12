scheduling
schedule: aSchedule
	aSchedule ifNotEmpty: [
		^ SKGuardSchedule new state: self; setSchedule: aSchedule ]