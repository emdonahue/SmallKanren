debugging
branchesNotFailedAfterSteps: nSteps
	^ self copy stream: (stream branchesNotFailedAfterSteps: nSteps runner: self).