mplus
testDelayOrDelay
	"Disjoined delays form a delayed mplus."

	| delayedGoal |
	delayedGoal := x carCdrIn: [ :a :d | a === 1 & (d === 2) ].
	self assert: (delayedGoal | delayedGoal) step isDelayedPlus.
