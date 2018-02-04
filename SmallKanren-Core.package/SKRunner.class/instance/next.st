running
next

	| nextStream |
	nextStream := stream step.
	[ nextStream isIncomplete ] whileTrue: [ nextStream := nextStream step ].
	^ self copy stream: nextStream