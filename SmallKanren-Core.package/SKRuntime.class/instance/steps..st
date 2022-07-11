debugging
steps: nSteps
	^ (1 to: nSteps) inject: self into: [ :r :i | 
		"Transcript show: 'step '; show: i; cr."
		r step ].