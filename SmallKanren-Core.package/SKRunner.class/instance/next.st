running
next
	| nextStream |
	nextStream := stream step: self.
	[ nextStream isIncomplete ] whileTrue: [ nextStream := nextStream step: self ].
	^ self copy stream: nextStream.