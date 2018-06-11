streaming
bind: aGoal runner: aRunner
	"Delayed MPlusses distribute binding goals to their leaves."

	^ (left bind: aGoal runner: aRunner) + (right bind: aGoal runner: aRunner)