delaying
delayCheckIn: aDelayC
	^ (aDelayC checkIn: first) + (rest delayCheckIn: aDelayC)