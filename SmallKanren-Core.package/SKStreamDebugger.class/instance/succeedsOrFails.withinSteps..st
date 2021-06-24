private
succeedsOrFails: aStream withinSteps: nSteps
	(1 to: nSteps) inject: aStream into: [ :s :i |
		s isSuccess | s isFailure ifTrue: [ ^ {i. s isSuccess ifTrue: #success ifFalse: #failure } ].
		s step: runtime ].
	^ nil.