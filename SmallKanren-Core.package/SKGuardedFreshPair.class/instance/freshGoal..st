goal
freshGoal: aPattern
	^ self expandBlockWithVars: {aPattern car. aPattern cdr}.