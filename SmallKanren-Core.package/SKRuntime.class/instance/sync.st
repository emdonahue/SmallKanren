streaming
sync
	[ stream isIncomplete ] whileTrue: [ stream := (stream firstStep: self) stream ].