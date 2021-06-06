ui
stepToAnswer: nSteps
	^ self subStream: (stream stepToAnswer: nSteps runner: runtime).