debugging
branchesNotFailedAfterSteps: nSteps
	"The initial undelay is already 1 step."

	^ (suspendedVars select: [ :v | ((self undelaystep: v) stepToAnswer: nSteps - 1) isEmptyStream not ])
		ifEmpty: [ SKStream failure ]
		ifNotEmpty: [ :vars | vars delay: state ].