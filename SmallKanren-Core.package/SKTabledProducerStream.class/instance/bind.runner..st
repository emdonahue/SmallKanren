subclassresponsibility
bind: aGoal runner: aRunner
	^ self copy stream: (stream bind: aGoal runner: aRunner)