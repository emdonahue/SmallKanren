streaming
bind: aGoal runtime: aRunner
	^ (left bind: aGoal runtime: aRunner) plus: right bind: aGoal.