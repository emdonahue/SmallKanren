mplus
testDelayOrDPlus
	"Delay + DPlus = DPlus."

	| delayedGoal |
	delayedGoal := x carCdrIn: [ :a :d | a === 1 & (d === 2) ].
	self assert: (delayedGoal | delayedGoal | delayedGoal) step isDelayedPlus.
	self assert: (delayedGoal | (delayedGoal | delayedGoal)) step isDelayedPlus.