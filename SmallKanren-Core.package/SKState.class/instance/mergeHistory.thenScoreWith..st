heuristics
mergeHistory: aHistory thenScoreWith: aHeuristic
	^ aHeuristic scoreState: self mergedWithBranch: aHistory