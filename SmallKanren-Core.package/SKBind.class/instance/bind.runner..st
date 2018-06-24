subclassresponsibility
bind: aGoal runner: aRunner
	^ (stream bind: aGoal runner: aRunner) bind: goal runner: aRunner.