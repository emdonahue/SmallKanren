scheduling
advanceSchedule
	^ schedule rest
		ifEmpty: [ substitution ]
		ifNotEmpty: [ :s | self copy schedule: s ]