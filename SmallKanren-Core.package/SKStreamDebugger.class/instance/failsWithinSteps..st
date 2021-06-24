ui
failsWithinSteps: nSteps
	(1 to: nSteps) inject: stream into: [ :s :i |
		s isFailure ifTrue: [ ^ i ].
		s step: runtime ].
	^ false.