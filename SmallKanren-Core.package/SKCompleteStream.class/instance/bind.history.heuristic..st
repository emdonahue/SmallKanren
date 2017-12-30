streaming
bind: aGoal history: aName heuristic: aModel
	^ (first bind: aGoal history: aName heuristic: aModel) +(rest bind: aGoal history: aName heuristic: aModel) 