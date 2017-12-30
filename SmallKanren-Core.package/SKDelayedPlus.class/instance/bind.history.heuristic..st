streaming
bind: aGoal history: aName heuristic: aModel
	"Delayed MPlusses distribute binding goals to their leaves."
	^ (left bind: aGoal history: aName heuristic: aModel) + (right bind: aGoal history: aName heuristic: aModel)