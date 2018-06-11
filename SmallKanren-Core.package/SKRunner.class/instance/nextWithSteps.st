running
nextWithSteps
	| nextStream steps |
	steps := 0.
	nextStream := stream step: self.
	[ nextStream isIncomplete ]
		whileTrue: [ steps := steps + 1.
			nextStream := nextStream step: self ].
	^ {(self copy stream: nextStream).
	steps.}.