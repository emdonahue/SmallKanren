debugging
branchesAliveAfterSteps: nSteps runner: aRunner
	"give this method a default behavior for remaining streams."

	<todo>
	^ self select: [ :s | (s steps: nSteps runner: aRunner) isEmptyStream not ].