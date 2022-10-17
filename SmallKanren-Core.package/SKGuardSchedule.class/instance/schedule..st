scheduling
schedule: aSchedule
	aSchedule ifEmpty: [ ^ state ].
	schedule == aSchedule ifTrue: [ ^ self ].
	schedule ifNotNil: [ ^ self class new state: state; schedule: aSchedule ].
	schedule := aSchedule.