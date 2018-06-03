debugging
branchesAliveAfterSteps: nSteps
	^  (suspendedVars select: [ :v | ((self undelaystep: v) steps: nSteps) isEmptyStream not ]) delay: state