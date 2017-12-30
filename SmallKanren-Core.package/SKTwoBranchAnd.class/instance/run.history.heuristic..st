running
run: aState history: aHistory heuristic: aHeuristic
	"Since either branch might return a complex Stream, we need to run them both using the full recursive call, and merge any histories they might create."

	^ (left run: aState history: aHistory heuristic: aHeuristic) bind: right history: aHistory heuristic: aHeuristic

	"^ self
		run: aState
		history: aHistory
		name: 1
		heuristic: aHeuristic"