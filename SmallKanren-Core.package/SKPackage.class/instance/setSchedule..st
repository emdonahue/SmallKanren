accessing
setSchedule: aSchedule
	aSchedule ifEmpty: [ ^ SKState substitution: substitution constraints: constraints ].
	^ SKStateScheduled substitution: substitution constraints: constraints schedule: aSchedule.