checking
checkIn: aState runner: aRunner
	^ (left checkIn: aState runner: aRunner) delayCheckIn: right runner: aRunner.