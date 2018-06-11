delaying
delayCheckIn: aDelayedC runner: aRunner
	^ (left delayCheckIn: aDelayedC runner: aRunner) + (right delayCheckIn: aDelayedC runner: aRunner)