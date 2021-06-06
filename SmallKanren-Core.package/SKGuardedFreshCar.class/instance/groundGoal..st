scheduling
groundGoal: aVal
	^ (aVal car === car) and: [ self freshGoal: aVal ].
	