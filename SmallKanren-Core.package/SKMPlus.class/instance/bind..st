streaming
bind: aGoal
	"Delayed MPlusses distribute binding goals to their leaves."

	^ (left bind: aGoal) + (right bind: aGoal)