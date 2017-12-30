running
run: aState history: aHistory name: aName heuristic: aHeuristic
	"Why must this be incomplete?"

	<todo>
	^ self incomplete: aState history: (aHeuristic extendBranch: aHistory withCondeLeaf: aName) heuristic: aHeuristic