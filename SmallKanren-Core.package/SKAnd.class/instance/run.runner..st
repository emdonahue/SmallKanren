running
run: aState runner: aRunner
	^ (left run: aState runner: aRunner) bind: right runner: aRunner.