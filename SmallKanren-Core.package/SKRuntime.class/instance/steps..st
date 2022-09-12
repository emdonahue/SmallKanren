debugging
steps: nSteps
	| stepped |
	^ (1 to: nSteps) inject: self into: [ :r :i |		
		stepped := r step.
		stepped isFailure ifTrue: [ ^ stepped ].
		stepped ].