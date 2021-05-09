streaming
bind: aGoal runtime: aRunner
	"Delayed MPlusses distribute binding goals to their leaves."

	^ (left bind: aGoal runtime: aRunner) + (right bind: aGoal runtime: aRunner)