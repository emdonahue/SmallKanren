debugging
branchesAliveAfterSteps: nSteps
	"give this method a default behavior for remaining streams."

	<todo>
	^ self select: [ :s | (s steps: nSteps ) isEmptyStream not ]