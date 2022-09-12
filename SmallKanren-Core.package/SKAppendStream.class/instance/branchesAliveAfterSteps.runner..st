debugging
branchesAliveAfterSteps: nSteps runner: aRunner
	"give this method a default behavior for remaining streams."

	<todo>
	^ self select: [ :s | ((aRunner copy stream: s) steps: nSteps) isFailure not ].