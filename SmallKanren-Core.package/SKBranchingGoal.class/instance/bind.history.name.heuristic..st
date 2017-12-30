as yet unclassified
bind: aStream history: aHistory name: aName heuristic: aHeuristic
	^ aStream bind: self history: (aHeuristic extendHistory: aHistory withName: aName) heuristic: aHeuristic