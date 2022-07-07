running
run: aState runtime: aRunner

	^ (right run: aState runtime: aRunner)
		  conde: left
		  state: aState
		  runtime: aRunner.