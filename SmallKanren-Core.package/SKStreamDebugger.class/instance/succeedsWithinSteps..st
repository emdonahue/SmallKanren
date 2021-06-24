ui
succeedsWithinSteps: nSteps
	(1 to: nSteps) inject: stream into: [ :s :i |
		s isSuccess ifTrue: [ ^ i ].
		s step: runtime ].
	^ false.