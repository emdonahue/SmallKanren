mplus
testStateOrDPlus
	"State + DPlus = Complete."

	| delayedGoal |
	delayedGoal := x carCdrIn: [ :a :d | a === 1 & (d === 2) ].
	self assert: (x === 1 | (delayedGoal | delayedGoal)) step isComplete.
	self assert: (delayedGoal | delayedGoal | (x === 1)) step isComplete