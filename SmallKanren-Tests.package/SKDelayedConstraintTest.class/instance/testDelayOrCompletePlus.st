mplus
testDelayOrCompletePlus
	"Delay + Complete(DPlus) = Complete(DPlus)."

	| delayedGoal |
	delayedGoal := x carCdro: [ :a :d | a === 1 & (d === 2) ].
	self assert: (delayedGoal | (x === 1 | (delayedGoal | delayedGoal))) step isComplete.
	self assert: (delayedGoal | (x === 1 | (delayedGoal | delayedGoal))) step step isDelayedPlus .
	self assert: ( (x === 1 | (delayedGoal | delayedGoal)) | delayedGoal) step isComplete.
	self assert: ( (x === 1 | (delayedGoal | delayedGoal)) | delayedGoal) step step isDelayedPlus .