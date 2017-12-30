running
run: aState history: aHistory heuristic: aHeuristic
	"When this message is sent to a NonBranchingGoal, it means that the search has reached the leaf of that particular branch in the search tree. The branch should therefore be merged into the state's accumulating tree."

	^ (self run: aState) mergeHistory: aHistory thenScoreWith: aHeuristic