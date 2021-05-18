running
run: aState
	self halt.
	^ (left run: aState) + (right run: aState)