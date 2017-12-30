running
run: aState history: aHistory name: aName heuristic: aHeuristic
	^ self run: aState history: (aHeuristic extendBranch: aHistory withCondeLeaf: aName) heuristic: aHeuristic