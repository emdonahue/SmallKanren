streaming
bind: aGoal runtime: aRunner
	^ (left bind: aGoal runtime: aRunner) + (right bind: aGoal runtime: aRunner)