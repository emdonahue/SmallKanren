goal
freshGoal: aPattern
	^ self expandBlockWithVars: {aPattern car car. aPattern car cdr. aPattern cdr}.