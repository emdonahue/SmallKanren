streaming
bind: aGoal runner: aRunner
	^ (left bind: aGoal runner: aRunner) + (right bind: aGoal runner: aRunner)