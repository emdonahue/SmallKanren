probability
marginalize: aState
	^ right marginalize: (aState copy jointDistribution: aState jointDistribution + left jointDistribution).