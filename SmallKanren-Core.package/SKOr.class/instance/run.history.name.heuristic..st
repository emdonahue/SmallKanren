running
run: aState history: aHistory name: aName heuristic: aHeuristic
	^ (right
		run: aState
		history: aHistory
		name: aName << 1 + 1
		heuristic: aHeuristic)
		+
			(left
				run: aState
				history: aHistory
				name:  (aName << 1)
				heuristic: aHeuristic)