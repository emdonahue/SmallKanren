debugging
branchesAliveAfterSteps: nSteps
	^ self copy stream: (stream branchesAliveAfterSteps: nSteps)