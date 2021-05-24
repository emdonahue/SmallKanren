streaming
bind: aGoal runtime: aRunner
	"Push the binding goal eagerly through to the leaves."
	^ (left bind: aGoal runtime: aRunner) + (right bind: aGoal runtime: aRunner)