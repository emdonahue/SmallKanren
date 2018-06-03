debugging
branchesAliveAfterSteps: nSteps
	"The initial undelay is already 1 step."

	^ (suspendedVars select: [ :v | ((self undelaystep: v) steps: nSteps - 1) isEmptyStream not ]) ifEmpty: [ SKStream failure ] ifNotEmpty: [ :vars | vars delay: state ]