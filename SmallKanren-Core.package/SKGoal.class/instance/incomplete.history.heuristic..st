streaming
incomplete: aState history: aName heuristic: aModel
	^ SKIncomplete new
		goal: self;
		state: aState;
		name: aName;
		score:  (aModel scoreMergedBranch: aName withTree: aState history)