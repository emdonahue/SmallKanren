ui
succeedsWithinSteps: nSteps
	(1 to: nSteps) inject: stream into: [ :s :i |
		s isSuccess ifTrue: [ ^ true ].
		s step: runtime ].
	^ false.