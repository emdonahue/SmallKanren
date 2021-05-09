delaying
delayCheckIn: aMatchC runner: aRunner
	^ (stream delayCheckIn: aMatchC runner: aRunner) bind: goal runtime: aRunner