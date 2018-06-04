delaying
delayCheckIn: aDelayC
	^ (aDelayC checkIn: left) + (right delayCheckIn: aDelayC)