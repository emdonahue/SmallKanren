running
scheduledRun: aState runtime: aRuntime
	"If this clause arrives at its scheduled time with no interruption, unify its pattern and continue execution with that value."
	<todo> "extra walk unnecessary once unification fires schedule like constraints."
	| v |
	v := aState walk: var.
	v isSKVar ifFalse: [ ^ self fire: v in: aState runtime: aRuntime ].
	^ self freshGoal run: aState runtime: aRuntime.