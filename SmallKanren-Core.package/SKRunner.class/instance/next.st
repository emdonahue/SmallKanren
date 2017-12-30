running
next

	| nextStream |
	nextStream := stream step: model.
	[ nextStream isIncomplete ] whileTrue: [ nextStream := nextStream step: model ].
	^ self copy stream: nextStream