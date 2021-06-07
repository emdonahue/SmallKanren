goal
freshGoal: aPattern
	^ (car isSKVar ifTrue: [ car === aPattern car ] ifFalse: SKGoal succeed) & (self expandBlockWithVars: {aPattern cdr}).