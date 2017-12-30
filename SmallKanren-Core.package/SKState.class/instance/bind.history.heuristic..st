streaming
bind: aGoal history: aHistory heuristic: aModel
	^ aGoal
		run: self
		history: (aModel splitBranch: aHistory)
		heuristic: aModel