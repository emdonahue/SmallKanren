debugging
branchesNotFailedAfterSteps: nSteps
	"give this method a default behavior for remaining streams."

	<todo>
	^ self select: [ :s | (s stepToAnswer: nSteps) isEmptyStream not ].