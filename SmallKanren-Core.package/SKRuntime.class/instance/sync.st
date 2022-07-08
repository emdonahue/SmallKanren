running
sync
	[ stream isIncomplete ] whileTrue: [ self halt. stream := (stream firstStep: self) stream ].