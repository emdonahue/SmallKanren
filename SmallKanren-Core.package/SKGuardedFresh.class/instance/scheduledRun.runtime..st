running
scheduledRun: aState runtime: aRuntime
	"If this clause arrives at its scheduled time with no interruption, unify its pattern and continue execution with that value."
	^ self freshGoal run: aState runtime: aRuntime.