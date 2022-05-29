probability
marginalize: aState
	<todo> "ensure that distribution never initializes with wrong zero/one likelihood"
	^ self copy jointDistribution: self jointDistribution + aState jointDistribution.