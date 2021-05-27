scheduling
groundGoal: aVal
	^ ((rest groundGoal: aVal) ifFail: [ ^ SKGoal fail ]) & (first groundGoal: aVal).