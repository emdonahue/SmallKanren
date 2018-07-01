running
run: aState runner: aRunner
	^ aState
		suspendVar:
			(self constraint).