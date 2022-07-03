debugging
next
	| nextStream |
	nextStream := stream firstStep: self.
	[ nextStream isIncomplete ] whileTrue: [ nextStream := nextStream firstStep: self ].
	^ self copy stream: nextStream.