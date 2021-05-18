accessing
setSchedule: aSchedule
	^ (aSchedule ifEmpty: SKState ifNotEmpty: [ SKStateScheduled ])
			substitution: substitution 
			constraints: constraints 
			schedule: aSchedule.