streaming
next
	| nextStream |
	nextStream := (stream firstStep: self) stream.
	[ nextStream isIncomplete ] whileTrue: [ nextStream := nextStream firstStep: self ].
	^ self copy stream: nextStream.