delaying
delayCheckIn: aDelayC runner: aRunner
	^ (aDelayC checkIn: left runner: aRunner) + (right delayCheckIn: aDelayC runner: aRunner)