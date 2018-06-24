subclassresponsibility
bind: aGoal runner: aRunner
	^ (stream bind: aGoal runner: aRunner) produceTabledAnswersFrom: self.