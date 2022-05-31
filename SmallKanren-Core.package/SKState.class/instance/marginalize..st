probability
marginalize: aState
	^ self copy jointDistribution: self jointDistribution + aState jointDistribution.