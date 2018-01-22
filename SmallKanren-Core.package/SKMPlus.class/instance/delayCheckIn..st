delaying
delayCheckIn: aDelayedC
	^ (left delayCheckIn: aDelayedC) + (right delayCheckIn: aDelayedC)