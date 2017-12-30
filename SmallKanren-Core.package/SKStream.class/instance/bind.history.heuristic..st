streaming
bind: aGoal history: aHistory heuristic: aModel
	^ SKBind new
		goal: aGoal;
		name: (aModel splitBranch: aHistory);
		stream: self