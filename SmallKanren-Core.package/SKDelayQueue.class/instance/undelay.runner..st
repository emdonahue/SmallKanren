delaying
undelay: aState runner: aRunner
	^ self removeFirst undelay: aState from: self first runner: aRunner.