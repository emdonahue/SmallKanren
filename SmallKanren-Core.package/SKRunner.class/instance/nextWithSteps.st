running
nextWithSteps
	| nextStream steps |
	steps := 0.
	nextStream := stream step: model.
	[ nextStream isIncomplete ] whileTrue: [ steps := steps + 1.
	nextStream := nextStream step: model ].
	^ {self copy stream: nextStream. steps}