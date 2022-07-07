running
run: aState runtime: aRunner

	^ (left run: aState runtime: aRunner)
		  conde: right
		  state: aState
		  runtime: aRunner.