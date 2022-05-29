probability
marginalize: aState
	self halt.
	^ self copy jointDistribution: self jointDistribution + aState jointDistribution.