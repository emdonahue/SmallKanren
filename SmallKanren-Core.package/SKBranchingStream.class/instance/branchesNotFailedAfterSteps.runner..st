debugging
branchesNotFailedAfterSteps: nSteps runner: aRunner
	"give this method a default behavior for remaining streams."

	<todo>
	^ self select: [ :s | (s stepToAnswer: nSteps runner: aRunner) isEmptyStream not ].