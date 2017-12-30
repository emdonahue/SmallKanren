streaming
mplus: anAnswer heuristic: aHeuristic

	(aHeuristic sorts: self score before: anAnswer score)
		ifTrue: [ ^ self mplus: anAnswer ].
	^ anAnswer mplus: self